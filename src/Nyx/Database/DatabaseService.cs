using Dapper;
using Microsoft.Extensions.Logging;
using Npgsql;
using System;
using System.Collections.Concurrent;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;

namespace Nyx.Server.Database;

public interface IDatabaseService
{
    ValueTask<T?> QueryFirstOrDefaultAsync<T>(string sql, object? param = null, CancellationToken ct = default);
    ValueTask<IEnumerable<T>> QueryAsync<T>(string sql, object? param = null, CancellationToken ct = default);
    ValueTask<int> ExecuteAsync(string sql, object? param = null, CancellationToken ct = default);
    ValueTask<T> ExecuteScalarAsync<T>(string sql, object? param = null, CancellationToken ct = default);
}

public readonly record struct DatabaseMetrics(
    int PoolSize,
    int AvailableConnections,
    long TotalConnectionsCreated,
    long TotalQueriesExecuted,
    long TotalQueryErrors,
    double AverageQueryTimeMicroseconds);

/// <summary>
/// PostgreSQL database service with connection pooling and metrics.
/// </summary>
public sealed class DatabaseService : IDatabaseService, IDisposable
{
    private readonly DatabaseConfiguration _config;
    private readonly ILogger<DatabaseService> _logger;
    private readonly string _connectionString;
    private readonly ConcurrentBag<NpgsqlConnection> _connectionPool;
    private readonly SemaphoreSlim _poolSemaphore;
    private readonly int _poolSize;
    private long _totalConnectionsCreated;
    private long _totalQueriesExecuted;
    private long _totalQueryErrors;
    private long _totalQueryTimeMicroseconds;

    public DatabaseService(DatabaseConfiguration config, ILogger<DatabaseService> logger)
    {
        _config = config;
        _logger = logger;
        _poolSize = config.ConnectionPoolMaxSize;

        var builder = new NpgsqlConnectionStringBuilder
        {
            Host = config.Hostname,
            Port = config.Port,
            Database = config.Schema,
            Username = config.Username,
            Password = config.Password,
            MinPoolSize = config.ConnectionPoolMinSize,
            MaxPoolSize = config.ConnectionPoolMaxSize,
            ConnectionIdleLifetime = 300,
            ConnectionPruningInterval = 60,
            Timeout = (int)config.CommandTimeoutSeconds,
            CommandTimeout = (int)config.CommandTimeoutSeconds,
        };
        _connectionString = builder.ConnectionString;

        _poolSemaphore = new SemaphoreSlim(_poolSize, _poolSize);
        _connectionPool = new ConcurrentBag<NpgsqlConnection>();

        _ = InitializePoolAsync();
    }

    private async Task InitializePoolAsync()
    {
        _logger.LogInformation("Initializing PostgreSQL connection pool (min: {MinSize}, max: {MaxSize})...",
            _config.ConnectionPoolMinSize, _config.ConnectionPoolMaxSize);

        var tasks = new System.Collections.Generic.List<Task>();
        for (var i = 0; i < _config.ConnectionPoolMinSize; i++)
        {
            tasks.Add(CreateConnectionAsync());
        }

        await Task.WhenAll(tasks);
        _logger.LogInformation("PostgreSQL connection pool initialized");
    }

    private async Task CreateConnectionAsync()
    {
        var connection = new NpgsqlConnection(_connectionString);
        await connection.OpenAsync();
        System.Threading.Interlocked.Increment(ref _totalConnectionsCreated);
        _connectionPool.Add(connection);
    }

    private async Task<NpgsqlConnection> GetConnectionAsync(CancellationToken ct = default)
    {
        await _poolSemaphore.WaitAsync(ct);
        NpgsqlConnection connection;

        if (!_connectionPool.TryTake(out connection))
        {
            connection = new NpgsqlConnection(_connectionString);
            await connection.OpenAsync(ct);
            System.Threading.Interlocked.Increment(ref _totalConnectionsCreated);
        }
        else if (connection.State != System.Data.ConnectionState.Open)
        {
            try
            {
                await connection.OpenAsync(ct);
            }
            catch
            {
                connection = new NpgsqlConnection(_connectionString);
                await connection.OpenAsync(ct);
                System.Threading.Interlocked.Increment(ref _totalConnectionsCreated);
            }
        }

        return connection;
    }

    private void ReturnConnection(NpgsqlConnection connection)
    {
        _poolSemaphore.Release();
        _connectionPool.Add(connection);
    }

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    private async Task<T> ExecuteWithMetricsAsync<T>(
        Func<NpgsqlConnection, CancellationToken, Task<T>> operation,
        CancellationToken ct = default)
    {
        var connection = await GetConnectionAsync(ct);
        var startTicks = Stopwatch.GetTimestamp();

        try
        {
            System.Threading.Interlocked.Increment(ref _totalQueriesExecuted);
            return await operation(connection, ct);
        }
        catch (Exception ex)
        {
            System.Threading.Interlocked.Increment(ref _totalQueryErrors);
            _logger.LogError(ex, "Database query failed");
            throw;
        }
        finally
        {
            var elapsedTicks = Stopwatch.GetTimestamp() - startTicks;
            System.Threading.Interlocked.Add(ref _totalQueryTimeMicroseconds, elapsedTicks * 1_000_000 / Stopwatch.Frequency);
            ReturnConnection(connection);
        }
    }

    public async ValueTask<T?> QueryFirstOrDefaultAsync<T>(string sql, object? param = null, CancellationToken ct = default)
    {
        return await ExecuteWithMetricsAsync(async (conn, token) =>
        {
            return await conn.QueryFirstOrDefaultAsync<T>(sql, param);
        }, ct);
    }

    public async ValueTask<IEnumerable<T>> QueryAsync<T>(string sql, object? param = null, CancellationToken ct = default)
    {
        return await ExecuteWithMetricsAsync(async (conn, token) =>
        {
            return await conn.QueryAsync<T>(sql, param);
        }, ct);
    }

    public async ValueTask<int> ExecuteAsync(string sql, object? param = null, CancellationToken ct = default)
    {
        return await ExecuteWithMetricsAsync(async (conn, token) =>
        {
            return await conn.ExecuteAsync(sql, param);
        }, ct);
    }

    public async ValueTask<T> ExecuteScalarAsync<T>(string sql, object? param = null, CancellationToken ct = default)
    {
        return await ExecuteWithMetricsAsync(async (conn, token) =>
        {
            var result = await conn.ExecuteScalarAsync(sql, param);
            return (T)Convert.ChangeType(result, typeof(T));
        }, ct);
    }

    public DatabaseMetrics GetMetrics()
    {
        var avgQueryTimeUs = _totalQueriesExecuted > 0
            ? (double)_totalQueryTimeMicroseconds / _totalQueriesExecuted
            : 0.0;

        return new DatabaseMetrics(
            _poolSize,
            _poolSemaphore.CurrentCount,
            System.Threading.Interlocked.Read(ref _totalConnectionsCreated),
            System.Threading.Interlocked.Read(ref _totalQueriesExecuted),
            System.Threading.Interlocked.Read(ref _totalQueryErrors),
            avgQueryTimeUs
        );
    }

    public void Dispose()
    {
        while (_connectionPool.TryTake(out var connection))
        {
            connection.Dispose();
        }
        _poolSemaphore.Dispose();
        _logger.LogInformation("DatabaseService disposed. Total connections created: {Total}", _totalConnectionsCreated);
    }
}
