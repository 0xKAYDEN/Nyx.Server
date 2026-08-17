using Nyx.Network.Protocol;

namespace Nyx.Server.Network.AuthPackets;

public sealed class PasswordCryptographySeed : Interfaces.IPacket
{
    private const ushort MessageId = (ushort)PacketType.MsgEncryptCode;
    private const int PayloadSize = sizeof(int);

    public int Seed { get; set; }

    public void Deserialize(byte[] buffer)
    {
        if (!TqPacket.TryParse(
                buffer,
                TqPacketFraming.Authentication,
                TqPacketSeal.None,
                out TqPacket packet,
                out TqPacketValidationError error) ||
            packet.Id != MessageId || packet.Payload.Length != PayloadSize)
        {
            throw new ArgumentException($"Invalid password-seed packet: {error}.", nameof(buffer));
        }

        var reader = new TqPacketReader(packet.Payload.Span);
        Seed = reader.ReadInt32();
    }

    public byte[] Encode()
    {
        byte[] packet = GC.AllocateUninitializedArray<byte>(TqPacketProtocol.HeaderSize + PayloadSize);
        var writer = new TqPacketWriter(packet, MessageId, TqPacketSeal.None);
        writer.WriteInt32(Seed);
        writer.Complete();
        return packet;
    }

    public void Send(Client.GameClient client) => client.Send(Encode());
}
