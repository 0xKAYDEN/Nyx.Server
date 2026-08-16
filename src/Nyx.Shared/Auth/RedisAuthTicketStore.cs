using System.Text.Json;
using StackExchange.Redis;

namespace Nyx.Shared.Auth;

/// <summary>
/// Redis-backed ticket store for the standalone auth → game hand-off.
/// Tickets are JSON-serialized and expire automatically via Redis TTL.
/// </summary>
public sealed class RedisAuthTicketStore : IAuthTicketStore, IDisposable
{
    private static readonly JsonSerializerOptions JsonOptions = new()
    {
        PropertyNamingPolicy = JsonNamingPolicy.CamelCase,
        WriteIndented = false
    };

    private readonly IDatabase _database;
    private readonly string _instancePrefix;
    private readonly IConnectionMultiplexer? _ownedConnection;
    private bool _disposed;

    /// <summary>
    /// Create a store that owns its Redis connection.
    /// </summary>
    public RedisAuthTicketStore(string configuration, string instancePrefix = "nyx:")
    {
        ArgumentException.ThrowIfNullOrWhiteSpace(configuration);

        _instancePrefix = instancePrefix ?? string.Empty;
        _ownedConnection = ConnectionMultiplexer.Connect(configuration);
        _database = _ownedConnection.GetDatabase();
    }

    /// <summary>
    /// Create a store that borrows an existing multiplexer (preferred when the host
    /// already owns a Redis connection).
    /// </summary>
    public RedisAuthTicketStore(IConnectionMultiplexer multiplexer, string instancePrefix = "nyx:")
    {
        ArgumentNullException.ThrowIfNull(multiplexer);

        _instancePrefix = instancePrefix ?? string.Empty;
        _database = multiplexer.GetDatabase();
        _ownedConnection = null;
    }

    /// <summary>
    /// Create a store against a pre-resolved <see cref="IDatabase"/>.
    /// </summary>
    public RedisAuthTicketStore(IDatabase database, string instancePrefix = "nyx:")
    {
        _database = database ?? throw new ArgumentNullException(nameof(database));
        _instancePrefix = instancePrefix ?? string.Empty;
        _ownedConnection = null;
    }

    public async ValueTask StoreAsync(AuthTicket ticket, TimeSpan? timeToLive = null, CancellationToken cancellationToken = default)
    {
        ArgumentNullException.ThrowIfNull(ticket);
        ObjectDisposedException.ThrowIf(_disposed, this);

        var key = AuthTicketKeys.AbsoluteKey(_instancePrefix, ticket.Identifier);
        var payload = JsonSerializer.Serialize(ticket, JsonOptions);
        var ttl = timeToLive ?? AuthTicketKeys.DefaultTimeToLive;

        await _database.StringSetAsync(key, payload, ttl).ConfigureAwait(false);
    }

    public async ValueTask<AuthTicket?> TakeAsync(uint identifier, CancellationToken cancellationToken = default)
    {
        ObjectDisposedException.ThrowIf(_disposed, this);

        var key = AuthTicketKeys.AbsoluteKey(_instancePrefix, identifier);

        // GETDEL is atomic on Redis 6.2+. Fall back to GET+DEL for older servers.
        RedisValue value;
        try
        {
            value = await _database.StringGetDeleteAsync(key).ConfigureAwait(false);
        }
        catch (RedisServerException)
        {
            value = await _database.StringGetAsync(key).ConfigureAwait(false);
            if (!value.IsNullOrEmpty)
                await _database.KeyDeleteAsync(key).ConfigureAwait(false);
        }

        if (value.IsNullOrEmpty)
            return null;

        return JsonSerializer.Deserialize<AuthTicket>((string)value!, JsonOptions);
    }

    public void Dispose()
    {
        if (_disposed)
            return;

        _disposed = true;
        _ownedConnection?.Dispose();
    }
}
