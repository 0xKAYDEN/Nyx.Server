namespace Nyx.Auth.Network.Packets;

/// <summary>
/// Patch-6323 authentication message identifiers.
/// Kept local so Nyx.Auth does not depend on the game server's PacketType enum.
/// </summary>
public static class AuthPacketIds
{
    /// <summary>MsgConnectEx — auth → client forward / reject.</summary>
    public const ushort MsgConnectEx = 1055;

    /// <summary>MsgEncryptCode — auth → client password-cipher seed.</summary>
    public const ushort MsgEncryptCode = 1059;

    /// <summary>MsgAccount — client → auth login request (patch 6323 length 312).</summary>
    public const ushort MsgAccount = 1542;

    /// <summary>Canonical MsgAccount frame length including the 4-byte header, no seal.</summary>
    public const int MsgAccountLength = 312;
}
