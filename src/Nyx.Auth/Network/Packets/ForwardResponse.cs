using Nyx.Network.Protocol;

namespace Nyx.Auth.Network.Packets;

/// <summary>
/// MsgConnectEx (1055). Auth → client forward-or-reject.
/// Preserves the Nyx 6323 unsealed wire layout verified by golden tests:
/// identifier (u64) + port (u32) + reserved (i32) + IP (16-byte fixed).
/// </summary>
public sealed class ForwardResponse
{
    private const int PayloadSize = sizeof(ulong) + sizeof(uint) + sizeof(int) + 16;

    public enum ForwardType : byte
    {
        InvalidInfo = 1,
        Ready = 2,
        Banned = 25
    }

    public ulong Identifier { get; set; }
    public ForwardType Type { get; set; }
    public uint Port { get; set; }
    public string IP { get; set; } = string.Empty;

    public byte[] Encode()
    {
        // Note: Type is intentionally not written — the established 6323 hand-off
        // encodes success via a non-zero identifier + game endpoint, and failure via
        // a zero identifier. Golden tests lock this layout.
        byte[] packet = GC.AllocateUninitializedArray<byte>(TqPacketProtocol.HeaderSize + PayloadSize);
        var writer = new TqPacketWriter(packet, AuthPacketIds.MsgConnectEx, TqPacketSeal.None);
        writer.WriteUInt64(Identifier);
        writer.WriteUInt32(Port);
        writer.WriteInt32(0);
        writer.WriteFixedString(IP, 16);
        writer.Complete();
        return packet;
    }
}
