using MySqlConnector;

namespace Nyx.Database.Database;

public sealed class DatabaseTransaction : IDisposable, IAsyncDisposable
{
    private MySqlConnection? _connection;
    private MySqlTransaction? _transaction;

    internal DatabaseTransaction(
        MySqlConnection connection,
        MySqlTransaction transaction)
    {
        _connection = connection;
        _transaction = transaction;
    }

    private MySqlTransaction Transaction =>
        _transaction ?? throw new ObjectDisposedException(nameof(DatabaseTransaction));

    private MySqlCommand CreateCommand(
        string sql,
        MySqlParameter[] parameters)
    {
        var command = _connection!.CreateCommand();
        command.CommandText = sql;
        command.Transaction = Transaction;

        if (parameters.Length != 0)
            command.Parameters.AddRange(parameters);

        return command;
    }

    public async ValueTask<int> ExecuteAsync(
        string sql,
        CancellationToken cancellationToken = default,
        params MySqlParameter[] parameters)
    {
        await using var command = CreateCommand(sql, parameters);
        return await command.ExecuteNonQueryAsync(cancellationToken)
            .ConfigureAwait(false);
    }

    public void Commit() => Transaction.Commit();
    public void Rollback() => Transaction.Rollback();

    public async ValueTask CommitAsync(CancellationToken cancellationToken = default) =>
        await Transaction.CommitAsync(cancellationToken).ConfigureAwait(false);

    public async ValueTask RollbackAsync(CancellationToken cancellationToken = default) =>
        await Transaction.RollbackAsync(cancellationToken).ConfigureAwait(false);

    public void Dispose()
    {
        Interlocked.Exchange(ref _transaction, null)?.Dispose();
        Interlocked.Exchange(ref _connection, null)?.Dispose();
    }

    public async ValueTask DisposeAsync()
    {
        var transaction = Interlocked.Exchange(ref _transaction, null);
        var connection = Interlocked.Exchange(ref _connection, null);

        if (transaction is not null)
            await transaction.DisposeAsync().ConfigureAwait(false);

        if (connection is not null)
            await connection.DisposeAsync().ConfigureAwait(false);
    }
}
