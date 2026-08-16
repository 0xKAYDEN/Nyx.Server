namespace Nyx.Shared.Auth;

/// <summary>
/// Cross-process store for one-shot login tickets. Auth writes; the game server
/// consumes (get-and-delete) when MsgConnect arrives.
/// </summary>
public interface IAuthTicketStore
{
    /// <summary>Publish a ticket. Overwrites any previous ticket for the same identifier.</summary>
    ValueTask StoreAsync(AuthTicket ticket, TimeSpan? timeToLive = null, CancellationToken cancellationToken = default);

    /// <summary>
    /// Atomically load and delete a ticket. Returns <c>null</c> when the identifier is
    /// unknown, expired, or already consumed.
    /// </summary>
    ValueTask<AuthTicket?> TakeAsync(uint identifier, CancellationToken cancellationToken = default);
}
