using Dapper;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Options;
using Npgsql;
using Nyx.Auth.Configuration;

namespace Nyx.Auth.Database;

/// <summary>
/// Lean Dapper repository over the shared <c>accounts</c> table.
/// Column names match the live PostgreSQL schema used by the game server.
/// </summary>
public sealed class PostgresAccountRepository : IAccountRepository, IAsyncDisposable
{
    private readonly NpgsqlDataSource _dataSource;
    private readonly ILogger<PostgresAccountRepository> _logger;

    public PostgresAccountRepository(IOptions<AuthServerOptions> options, ILogger<PostgresAccountRepository> logger)
    {
        ArgumentNullException.ThrowIfNull(options);
        _logger = logger ?? throw new ArgumentNullException(nameof(logger));

        var builder = new NpgsqlDataSourceBuilder(options.Value.Database.BuildConnectionString());
        _dataSource = builder.Build();
    }

    public async ValueTask<AccountRecord?> FindByUsernameAsync(string username, CancellationToken cancellationToken = default)
    {
        if (string.IsNullOrWhiteSpace(username))
            return null;

        // Column set mirrors the game server's AccountRepository. MacAddress is optional on
        // some schemas — fall back to the core columns if the extended SELECT fails.
        const string sqlFull = """
            SELECT "Username", "Password", "EntityID" AS EntityId, "IP" AS Ip, "State",
                   "MacAddress" AS MacAddress
            FROM accounts
            WHERE LOWER("Username") = LOWER(@Username)
            LIMIT 1
            """;

        const string sqlCore = """
            SELECT "Username", "Password", "EntityID" AS EntityId, "IP" AS Ip, "State"
            FROM accounts
            WHERE LOWER("Username") = LOWER(@Username)
            LIMIT 1
            """;

        try
        {
            await using var connection = await _dataSource.OpenConnectionAsync(cancellationToken).ConfigureAwait(false);
            AccountRecord? record;
            try
            {
                record = await connection.QuerySingleOrDefaultAsync<AccountRecord>(
                    new CommandDefinition(sqlFull, new { Username = username }, cancellationToken: cancellationToken))
                    .ConfigureAwait(false);
            }
            catch (PostgresException)
            {
                record = await connection.QuerySingleOrDefaultAsync<AccountRecord>(
                    new CommandDefinition(sqlCore, new { Username = username }, cancellationToken: cancellationToken))
                    .ConfigureAwait(false);
            }

            if (record is not null)
                record.Exists = true;

            return record;
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Failed to load account for {Username}", username);
            return null;
        }
    }

    public async ValueTask DisposeAsync()
    {
        await _dataSource.DisposeAsync().ConfigureAwait(false);
    }
}
