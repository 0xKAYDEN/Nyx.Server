using System.Collections.Concurrent;

namespace Nyx.Shared.Auth;

/// <summary>
/// Process-local ticket store. Used only when auth is still co-hosted with the game
/// server (embedded mode). Not suitable for a multi-process deployment.
/// </summary>
public sealed class MemoryAuthTicketStore : IAuthTicketStore
{
    private readonly ConcurrentDictionary<uint, Entry> _tickets = new();

    public ValueTask StoreAsync(AuthTicket ticket, TimeSpan? timeToLive = null, CancellationToken cancellationToken = default)
    {
        ArgumentNullException.ThrowIfNull(ticket);

        var ttl = timeToLive ?? AuthTicketKeys.DefaultTimeToLive;
        var expires = Environment.TickCount64 + (long)ttl.TotalMilliseconds;
        _tickets[ticket.Identifier] = new Entry(ticket, expires);
        return ValueTask.CompletedTask;
    }

    public ValueTask<AuthTicket?> TakeAsync(uint identifier, CancellationToken cancellationToken = default)
    {
        if (!_tickets.TryRemove(identifier, out var entry))
            return ValueTask.FromResult<AuthTicket?>(null);

        if (Environment.TickCount64 > entry.ExpiresAtTick)
            return ValueTask.FromResult<AuthTicket?>(null);

        return ValueTask.FromResult<AuthTicket?>(entry.Ticket);
    }

    private readonly record struct Entry(AuthTicket Ticket, long ExpiresAtTick);
}
