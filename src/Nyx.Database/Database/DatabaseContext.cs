using System.Data;
using MySqlConnector;

namespace Nyx.Database.Database;

public sealed class DatabaseContext
{
    private readonly DatabaseConnection _database;

    public DatabaseContext(DatabaseConnection database)
    {
        _database = database ?? throw new ArgumentNullException(nameof(database));
    }

    public DatabaseConnection Connection => _database;

    public async ValueTask<int> ExecuteAsync(
        string sql,
        CancellationToken cancellationToken = default,
        params MySqlParameter[] parameters)
    {
        await using var connection =
            await _database.OpenAsync(cancellationToken).ConfigureAwait(false);

        await using var command = connection.CreateCommand();
        command.CommandText = sql;
        command.CommandTimeout = (int)_database.Options.CommandTimeout;

        if (parameters.Length != 0)
            command.Parameters.AddRange(parameters);

        return await command.ExecuteNonQueryAsync(cancellationToken)
            .ConfigureAwait(false);
    }

    public async ValueTask<object?> ExecuteScalarAsync(
        string sql,
        CancellationToken cancellationToken = default,
        params MySqlParameter[] parameters)
    {
        await using var connection =
            await _database.OpenAsync(cancellationToken).ConfigureAwait(false);

        await using var command = connection.CreateCommand();
        command.CommandText = sql;
        command.CommandTimeout = (int)_database.Options.CommandTimeout;

        if (parameters.Length != 0)
            command.Parameters.AddRange(parameters);

        return await command.ExecuteScalarAsync(cancellationToken)
            .ConfigureAwait(false);
    }

    public async ValueTask<DatabaseResult> ReaderAsync(
        string sql,
        CancellationToken cancellationToken = default,
        params MySqlParameter[] parameters)
    {
        var connection =
            await _database.OpenAsync(cancellationToken).ConfigureAwait(false);

        try
        {
            var command = connection.CreateCommand();
            command.CommandText = sql;
            command.CommandTimeout = (int)_database.Options.CommandTimeout;

            if (parameters.Length != 0)
                command.Parameters.AddRange(parameters);

            var reader = await command.ExecuteReaderAsync(
                CommandBehavior.CloseConnection,
                cancellationToken).ConfigureAwait(false);

            return new DatabaseResult(connection, command, reader);
        }
        catch
        {
            await connection.DisposeAsync().ConfigureAwait(false);
            throw;
        }
    }

    public async ValueTask<DatabaseTransaction> BeginTransactionAsync(
        IsolationLevel isolationLevel = IsolationLevel.ReadCommitted,
        CancellationToken cancellationToken = default)
    {
        var connection =
            await _database.OpenAsync(cancellationToken).ConfigureAwait(false);

        try
        {
            var transaction =
                await connection.BeginTransactionAsync(
                    isolationLevel,
                    cancellationToken).ConfigureAwait(false);

            return new DatabaseTransaction(connection, transaction);
        }
        catch
        {
            await connection.DisposeAsync().ConfigureAwait(false);
            throw;
        }
    }
}
