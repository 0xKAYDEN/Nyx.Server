using Nyx.Network.Core.Packets;
using Nyx.Network.Protocol;
using Serilog;

namespace Nyx.Server.Network.AuthPackets;

public sealed class Forward : Interfaces.IPacket
{
    private const ushort MessageId = (ushort)PacketType.MsgConnectEx;
    private const int PayloadSize = sizeof(ulong) + sizeof(uint) + sizeof(int) + 16;

    public enum ForwardType : byte
    {
        Ready = 2,
        InvalidInfo = 1,
        Banned = 25
    }

    public ulong Identifier { get; set; }
    public ForwardType Type { get; set; }
    public uint Port { get; set; }
    public string IP { get; set; } = string.Empty;

    public void Deserialize(byte[] buffer)
    {
        // Server-to-client message only.
    }

    public byte[] Encode()
    {
        // Auth packets have the common length/id header but no eight-byte game seal.
        byte[] packet = GC.AllocateUninitializedArray<byte>(TqPacketProtocol.HeaderSize + PayloadSize);
        var writer = new TqPacketWriter(packet, MessageId, TqPacketSeal.None);
        // Preserve Nyx 6323's established login hand-off layout byte-for-byte: the generated
        // identifier occupies offsets 4-11, followed by port, reserved data, and a 16-byte IP.
        writer.WriteUInt64(Identifier);
        writer.WriteUInt32(Port);
        writer.WriteInt32(0);
        writer.WriteFixedString(IP, 16);
        writer.Complete();

        Log.Debug("Auth forward packet: {Packet}", PacketDump.Hex(packet));
        return packet;
    }

    public void Send(Client.GameClient client) => client.Send(Encode());
}
