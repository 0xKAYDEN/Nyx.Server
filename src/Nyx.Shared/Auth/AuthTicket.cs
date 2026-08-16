namespace Nyx.Shared.Auth;

/// <summary>
/// One-shot login ticket handed from <c>Nyx.Auth</c> to the game server after a successful
/// account authentication. The client never sees the full payload — only the 32-bit
/// <see cref="Identifier"/> embedded in MsgConnectEx / MsgConnect.
/// </summary>
/// <remarks>
/// Field layout mirrors the data previously stored in <c>Kernel.AwaitingPool</c> so the
/// game-side <c>AccountTable</c> reconstruction and <c>MatchKey</c> check stay byte-compatible
/// with the co-hosted auth path.
/// </remarks>
public sealed class AuthTicket
{
    /// <summary>32-bit token the client presents to the game server (MsgConnect offset 4).</summary>
    public uint Identifier { get; set; }

    /// <summary>Private seed used to recompute <see cref="Identifier"/> via SHA-256.</summary>
    public int RandomKey { get; set; }

    public string Username { get; set; } = string.Empty;

    /// <summary>
    /// Password hash/plaintext as stored in the accounts table. Required so the game can
    /// recompute the identifier with the same <c>Username:Password:RandomKey</c> digest.
    /// </summary>
    public string Password { get; set; } = string.Empty;

    public uint EntityId { get; set; }

    /// <summary>Account state byte (Player / Banned / Cheated / GameMaster).</summary>
    public byte State { get; set; }

    public string MacAddress { get; set; } = string.Empty;

    public string Ip { get; set; } = string.Empty;

    /// <summary>UTC instant the ticket was issued. Used for diagnostics only.</summary>
    public DateTime IssuedAtUtc { get; set; }
}
