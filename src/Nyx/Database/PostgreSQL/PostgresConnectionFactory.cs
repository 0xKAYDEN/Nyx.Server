using System;
using System.Data;
using System.Threading;
using System.Threading.Tasks;
using Npgsql;
using Serilog;

namespace Nyx.Server.Database.PostgreSQL;

/// <summary>
/// PostgreSQL connection factory with connection pooling.
/// Thread-safe and disposable.
/// </summary>
public sealed class PostgresConnectionFactory : IDisposable
{
    private static readonly ILogger _logger = Log.ForContext<PostgresConnectionFactory>();
    
    private readonly string _connectionString;
    private readonly NpgsqlDataSource _dataSource;
    private int _disposed;
    
    /// <summary>
    /// Creates a new PostgresConnectionFactory with the specified connection string.
    /// </summary>
    /// <param name="connectionString">PostgreSQL connection string.</param>
    public PostgresConnectionFactory(string connectionString)
    {
        _connectionString = connectionString ?? throw new ArgumentNullException(nameof(connectionString));
        
        var builder = new NpgsqlDataSourceBuilder(_connectionString);
        builder.ConnectionStringBuilder.MaxPoolSize = 100;
        builder.ConnectionStringBuilder.MinPoolSize = 5;
        builder.ConnectionStringBuilder.ConnectionIdleLifetime = 300; // 5 minutes
        builder.ConnectionStringBuilder.ConnectionPruningInterval = 60; // 1 minute
        builder.ConnectionStringBuilder.Timeout = 30;
        builder.ConnectionStringBuilder.CommandTimeout = 30;
        
        _dataSource = builder.Build();
        
        _logger.Information("PostgreSQL connection factory initialized with pool size {Min}-{Max}", 
            builder.ConnectionStringBuilder.MinPoolSize, 
            builder.ConnectionStringBuilder.MaxPoolSize);
    }
    
    /// <summary>
    /// Creates a new PostgresConnectionFactory with default local connection.
    /// </summary>
    public PostgresConnectionFactory() 
        : this("Host=localhost;Port=5432;Database=nyx;Username=postgres;Password=12345678")
    {
    }
    
    /// <summary>
    /// Gets a new connection from the pool.
    /// Returns an OPEN connection (callers must NOT call Open() again).
    /// </summary>
    public async Task<NpgsqlConnection> GetConnectionAsync(CancellationToken ct = default)
    {
        ObjectDisposedException.ThrowIf(_disposed == 1, this);
        
        var connection = await _dataSource.OpenConnectionAsync(ct);
        return connection;
    }
    
    /// <summary>
    /// Gets a new connection from the pool (synchronous).
    /// Returns a CLOSED connection - callers must call Open() before use.
    /// This maintains backward compatibility with existing code that calls conn.Open().
    /// </summary>
    public NpgsqlConnection GetConnection()
    {
        ObjectDisposedException.ThrowIf(_disposed == 1, this);
        
        // Return a closed connection - callers will call Open() themselves
        return _dataSource.CreateConnection();
    }
    
    /// <summary>
    /// Executes a function with a new connection.
    /// </summary>
    public async Task<T> ExecuteAsync<T>(Func<NpgsqlConnection, Task<T>> func, CancellationToken ct = default)
    {
        ObjectDisposedException.ThrowIf(_disposed == 1, this);
        
        await using var connection = await GetConnectionAsync(ct);
        return await func(connection);
    }
    
    /// <summary>
    /// Executes an action with a new connection.
    /// </summary>
    public async Task ExecuteAsync(Func<NpgsqlConnection, Task> func, CancellationToken ct = default)
    {
        ObjectDisposedException.ThrowIf(_disposed == 1, this);
        
        await using var connection = await GetConnectionAsync(ct);
        await func(connection);
    }
    
    /// <summary>
    /// Tests the database connection.
    /// </summary>
    public async Task<bool> TestConnectionAsync(CancellationToken ct = default)
    {
        try
        {
            await using var connection = await GetConnectionAsync(ct);
            await using var command = new NpgsqlCommand("SELECT 1", connection);
            await command.ExecuteScalarAsync(ct);
            return true;
        }
        catch (Exception ex)
        {
            _logger.Error(ex, "PostgreSQL connection test failed");
            return false;
        }
    }
    
    public void Dispose()
    {
        if (Interlocked.Exchange(ref _disposed, 1) == 1)
            return;
        
        _dataSource.Dispose();
        _logger.Information("PostgreSQL connection factory disposed");
        GC.SuppressFinalize(this);
    }
}
