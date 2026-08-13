using System;
using System.Collections.Generic;
using System.Data;
using System.Threading;
using System.Threading.Tasks;
using Dapper;
using Npgsql;
using Serilog;

namespace Nyx.Server.Database.PostgreSQL;

/// <summary>
/// Base repository class for PostgreSQL with Dapper.
/// Provides common CRUD operations and transaction support.
/// 
/// Thread Safety: All public methods are thread-safe.
/// </summary>
public abstract class RepositoryBase : IDisposable
{
    protected static readonly ILogger _logger = Log.ForContext<RepositoryBase>();
    protected readonly PostgresConnectionFactory _factory;
    private int _disposed;
    
    protected RepositoryBase(PostgresConnectionFactory factory)
    {
        _factory = factory ?? throw new ArgumentNullException(nameof(factory));
    }
    
    #region Query Methods
    
    /// <summary>
    /// Queries for a single item.
    /// </summary>
    protected async Task<T?> QuerySingleOrDefaultAsync<T>(string sql, object? param = null, CancellationToken ct = default)
    {
        return await _factory.ExecuteAsync(async conn =>
        {
            return await conn.QuerySingleOrDefaultAsync<T>(new CommandDefinition(sql, param, cancellationToken: ct));
        }, ct);
    }
    
    /// <summary>
    /// Queries for multiple items.
    /// </summary>
    protected async Task<IEnumerable<T>> QueryAsync<T>(string sql, object? param = null, CancellationToken ct = default)
    {
        return await _factory.ExecuteAsync(async conn =>
        {
            return await conn.QueryAsync<T>(new CommandDefinition(sql, param, cancellationToken: ct));
        }, ct);
    }
    
    /// <summary>
    /// Queries for a single item or throws if not found.
    /// </summary>
    protected async Task<T> QuerySingleAsync<T>(string sql, object? param = null, CancellationToken ct = default)
    {
        return await _factory.ExecuteAsync(async conn =>
        {
            return await conn.QuerySingleAsync<T>(new CommandDefinition(sql, param, cancellationToken: ct));
        }, ct);
    }
    
    /// <summary>
    /// Queries for the first item.
    /// </summary>
    protected async Task<T?> QueryFirstOrDefaultAsync<T>(string sql, object? param = null, CancellationToken ct = default)
    {
        return await _factory.ExecuteAsync(async conn =>
        {
            return await conn.QueryFirstOrDefaultAsync<T>(new CommandDefinition(sql, param, cancellationToken: ct));
        }, ct);
    }
    
    #endregion
    
    #region Execute Methods
    
    /// <summary>
    /// Executes a command and returns the number of affected rows.
    /// </summary>
    protected async Task<int> ExecuteAsync(string sql, object? param = null, CancellationToken ct = default)
    {
        return await _factory.ExecuteAsync(async conn =>
        {
            return await conn.ExecuteAsync(new CommandDefinition(sql, param, cancellationToken: ct));
        }, ct);
    }
    
    /// <summary>
    /// Executes a command and returns a scalar value.
    /// </summary>
    protected async Task<T?> ExecuteScalarAsync<T>(string sql, object? param = null, CancellationToken ct = default)
    {
        return await _factory.ExecuteAsync(async conn =>
        {
            return await conn.ExecuteScalarAsync<T>(new CommandDefinition(sql, param, cancellationToken: ct));
        }, ct);
    }
    
    /// <summary>
    /// Executes multiple commands in a single round-trip.
    /// </summary>
    protected async Task<int> ExecuteMultipleAsync(string sql, IEnumerable<object> param, CancellationToken ct = default)
    {
        return await _factory.ExecuteAsync(async conn =>
        {
            return await conn.ExecuteAsync(new CommandDefinition(sql, param, cancellationToken: ct));
        }, ct);
    }
    
    #endregion
    
    #region Transaction Methods
    
    /// <summary>
    /// Executes multiple operations in a transaction.
    /// </summary>
    protected async Task<T> ExecuteInTransactionAsync<T>(Func<NpgsqlConnection, IDbTransaction, Task<T>> func, CancellationToken ct = default)
    {
        return await _factory.ExecuteAsync(async conn =>
        {
            await using var transaction = await conn.BeginTransactionAsync(ct);
            try
            {
                var result = await func(conn, transaction);
                await transaction.CommitAsync(ct);
                return result;
            }
            catch
            {
                await transaction.RollbackAsync(ct);
                throw;
            }
        }, ct);
    }
    
    /// <summary>
    /// Executes multiple operations in a transaction.
    /// </summary>
    protected async Task ExecuteInTransactionAsync(Func<NpgsqlConnection, IDbTransaction, Task> func, CancellationToken ct = default)
    {
        await _factory.ExecuteAsync(async conn =>
        {
            await using var transaction = await conn.BeginTransactionAsync(ct);
            try
            {
                await func(conn, transaction);
                await transaction.CommitAsync(ct);
            }
            catch
            {
                await transaction.RollbackAsync(ct);
                throw;
            }
        }, ct);
    }
    
    #endregion
    
    #region Bulk Operations
    
    /// <summary>
    /// Bulk inserts multiple rows using COPY.
    /// </summary>
    protected async Task BulkInsertAsync<T>(string tableName, IEnumerable<T> items, CancellationToken ct = default)
    {
        await _factory.ExecuteAsync(async conn =>
        {
            await using var writer = await conn.BeginBinaryImportAsync(
                $"COPY {tableName} FROM STDIN (FORMAT BINARY)", ct);
            
            foreach (var item in items)
            {
                await writer.StartRowAsync(ct);
                await writer.WriteAsync(item, ct);
            }
            
            await writer.CompleteAsync(ct);
        }, ct);
    }
    
    #endregion
    
    #region Helper Methods
    
    /// <summary>
    /// Checks if a table exists.
    /// </summary>
    protected async Task<bool> TableExistsAsync(string tableName, CancellationToken ct = default)
    {
        const string sql = """
            SELECT EXISTS (
                SELECT FROM information_schema.tables 
                WHERE table_schema = 'public' 
                AND table_name = @TableName
            )
            """;
        
        return await ExecuteScalarAsync<bool>(sql, new { TableName = tableName }, ct);
    }
    
    /// <summary>
    /// Gets the count of rows in a table.
    /// </summary>
    protected async Task<long> GetRowCountAsync(string tableName, CancellationToken ct = default)
    {
        return await ExecuteScalarAsync<long>($"SELECT COUNT(*) FROM {tableName}", ct: ct);
    }
    
    #endregion
    
    public void Dispose()
    {
        if (Interlocked.Exchange(ref _disposed, 1) == 1)
            return;
        
        GC.SuppressFinalize(this);
    }
}
