using System.Buffers.Binary;

namespace Nyx.Network.Protocol;

/// <summary>
/// Constants and primitive operations for the Conquer Online (TQ) wire protocol.
/// </summary>
public static class TqPacketProtocol
{
    /// <summary>The Conquer Online client patch targeted by Nyx.</summary>
    public const int ClientPatch = 6323;

    public const int HeaderSize = 4;
    public const int SealSize = 8;
    public const int MinimumPacketLength = HeaderSize;
    public const int DefaultMaximumPacketLength = 8192;

    public const ulong ClientSealValue = 0x746E65696C435154UL; // "TQClient"
    public const ulong ServerSealValue = 0x7265767265535154UL; // "TQServer"

    public static int GetFrameLength(ushort declaredLength, bool hasSeal) =>
        declaredLength + (hasSeal ? SealSize : 0);

    public static void WriteSeal(Span<byte> destination, TqPacketSeal seal)
    {
        if (seal == TqPacketSeal.None)
            return;

        if (destination.Length < SealSize)
            throw new ArgumentException("The destination is smaller than the TQ seal.", nameof(destination));

        BinaryPrimitives.WriteUInt64LittleEndian(destination, (ulong)seal);
    }

    public static bool IsKnownSeal(ulong value) =>
        value is ClientSealValue or ServerSealValue;
}

/// <summary>ASCII footer identifying the origin of a game packet.</summary>
public enum TqPacketSeal : ulong
{
    None = 0,
    Server = TqPacketProtocol.ServerSealValue,
    Client = TqPacketProtocol.ClientSealValue
}

/// <summary>Defines whether a stream contains the post-5017 eight-byte TQ footer.</summary>
public enum TqPacketFraming : byte
{
    Authentication = 0,
    Game = 1
}
