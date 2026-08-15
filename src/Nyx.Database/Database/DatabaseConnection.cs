using MySqlConnector;

namespace Nyx.Database.Database;

public sealed class DatabaseConnection
{
    private readonly string _connectionString;
    public DatabaseOptions Options { get; }

    public DatabaseConnection(DatabaseOptions options)
    {
        Options = options ?? throw new ArgumentNullException(nameof(options));
        Options.Validate();

        var b = new MySqlConnectionStringBuilder
        {
            Server = Options.Server,
            Port = Options.Port,
            Database = Options.Database,
            UserID = Options.Username,
            Password = Options.Password,
            CharacterSet = Options.Charset,
            Pooling = Options.Pooling,
            MinimumPoolSize = Options.MinimumPoolSize,
            MaximumPoolSize = Options.MaximumPoolSize,
            ConnectionIdleTimeout = Options.ConnectionIdleTimeout,
            ConnectionTimeout = Options.ConnectTimeout,
            DefaultCommandTimeout = Options.CommandTimeout,
            Keepalive = Options.Keepalive
        };

        _connectionString = b.ConnectionString;
    }

    public MySqlConnection Create() => new(_connectionString);

    public async ValueTask<MySqlConnection> OpenAsync(
        CancellationToken cancellationToken = default)
    {
        var connection = Create();
        try
        {
            await connection.OpenAsync(cancellationToken).ConfigureAwait(false);
            return connection;
        }
        catch
        {
            await connection.DisposeAsync().ConfigureAwait(false);
            throw;
        }
    }

    public async ValueTask<bool> PingAsync(
        CancellationToken cancellationToken = default)
    {
        await using var connection =
            await OpenAsync(cancellationToken).ConfigureAwait(false);

        await using var command = connection.CreateCommand();
        command.CommandText = "SELECT 1";
        command.CommandTimeout = 5;

        var value =
            await command.ExecuteScalarAsync(cancellationToken).ConfigureAwait(false);

        return value is not null && Convert.ToInt32(value) == 1;
    }

    public async ValueTask<string> GetServerVersionAsync(
        CancellationToken cancellationToken = default)
    {
        await using var connection =
            await OpenAsync(cancellationToken).ConfigureAwait(false);

        await using var command = connection.CreateCommand();
        command.CommandText = "SELECT VERSION()";
        command.CommandTimeout = 5;

        var value =
            await command.ExecuteScalarAsync(cancellationToken).ConfigureAwait(false);

        return value?.ToString() ?? "";
    }
}
