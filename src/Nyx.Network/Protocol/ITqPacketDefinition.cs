namespace Nyx.Network.Protocol;

/// <summary>
/// Compile-time packet contract. Implementations describe only their payload; the serializer owns
/// the common header, declared length, and footer so packet classes cannot disagree about framing.
/// </summary>
public interface ITqPacketDefinition
{
    ushort PacketId { get; }
    int PayloadLength { get; }
    void WritePayload(ref TqPacketWriter writer);
}

public static class TqPacketSerializer
{
    /// <summary>Encodes a structured packet with one exact-size allocation.</summary>
    public static byte[] Serialize<TPacket>(in TPacket packet, TqPacketSeal seal = TqPacketSeal.Server)
        where TPacket : struct, ITqPacketDefinition
    {
        if (packet.PayloadLength < 0)
            throw new InvalidOperationException("Packet payload length cannot be negative.");

        int sealLength = seal == TqPacketSeal.None ? 0 : TqPacketProtocol.SealSize;
        int frameLength = checked(TqPacketProtocol.HeaderSize + packet.PayloadLength + sealLength);
        var frame = new byte[frameLength];
        var writer = new TqPacketWriter(frame, packet.PacketId, seal);
        packet.WritePayload(ref writer);
        int written = writer.Complete();

        if (written != frameLength)
            throw new InvalidOperationException(
                $"Packet {packet.PacketId} declared a {packet.PayloadLength}-byte payload but wrote {writer.PayloadLength} bytes.");

        return frame;
    }
}
