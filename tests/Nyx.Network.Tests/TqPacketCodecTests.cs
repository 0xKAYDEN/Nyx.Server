using Nyx.Network.Protocol;

namespace Nyx.Network.Tests;

public sealed class TqPacketCodecTests
{
    [Fact]
    public void Writer_produces_the_exact_legacy_wire_bytes()
    {
        byte[] actual = new byte[18];
        var writer = new TqPacketWriter(actual, 1004, TqPacketSeal.Server);
        writer.WriteUInt32(0x12345678);
        writer.WriteUInt16(0xABCD);

        int length = writer.Complete();

        byte[] expected =
        [
            0x0A, 0x00,             // declared length: header + payload, no seal
            0xEC, 0x03,             // packet id 1004, little endian
            0x78, 0x56, 0x34, 0x12,
            0xCD, 0xAB,
            0x54, 0x51, 0x53, 0x65, 0x72, 0x76, 0x65, 0x72 // TQServer
        ];

        Assert.Equal(expected.Length, length);
        Assert.Equal(expected, actual);
    }

    [Fact]
    public void Packet_view_preserves_bytes_and_exposes_header_and_payload()
    {
        byte[] frame =
        [
            0x0A, 0x00, 0xEC, 0x03, 0x78, 0x56, 0x34, 0x12, 0xCD, 0xAB,
            0x54, 0x51, 0x53, 0x65, 0x72, 0x76, 0x65, 0x72
        ];

        bool parsed = TqPacket.TryParse(
            frame,
            TqPacketFraming.Game,
            TqPacketSeal.Server,
            out TqPacket packet,
            out TqPacketValidationError error);

        Assert.True(parsed, error.ToString());
        Assert.Equal((ushort)10, packet.Length);
        Assert.Equal((ushort)1004, packet.Id);
        Assert.Equal(TqPacketSeal.Server, packet.Seal);
        Assert.Equal(frame, packet.Frame.ToArray());

        var reader = new TqPacketReader(packet.Payload.Span);
        Assert.Equal(0x12345678U, reader.ReadUInt32());
        Assert.Equal((ushort)0xABCD, reader.ReadUInt16());
        Assert.True(reader.End);
    }

    [Fact]
    public void Serializer_owns_header_length_and_seal()
    {
        var packet = new ExamplePacket(0x01020304, 0x0506);

        byte[] actual = TqPacketSerializer.Serialize(packet);

        byte[] expected =
        [
            0x0A, 0x00, 0xEC, 0x03,
            0x04, 0x03, 0x02, 0x01, 0x06, 0x05,
            0x54, 0x51, 0x53, 0x65, 0x72, 0x76, 0x65, 0x72
        ];
        Assert.Equal(expected, actual);
    }

    [Fact]
    public void Tagged_varints_produce_a_complete_protobuf_game_frame()
    {
        byte[] actual = new byte[27];
        var writer = new TqPacketWriter(actual, 10005, TqPacketSeal.Server);
        writer.WriteTaggedVarUInt32(1, 7);
        writer.WriteTaggedVarUInt32(2, 1_000_001);
        writer.WriteTaggedVarUInt32(3, 1);
        writer.WriteTaggedVarUInt32(4, 123_123);
        writer.WriteTaggedVarUInt32(5, 1002);
        writer.Complete();

        byte[] expected =
        [
            0x13, 0x00, 0x15, 0x27,
            0x08, 0x07,
            0x10, 0xC1, 0x84, 0x3D,
            0x18, 0x01,
            0x20, 0xF3, 0xC1, 0x07,
            0x28, 0xEA, 0x07,
            0x54, 0x51, 0x53, 0x65, 0x72, 0x76, 0x65, 0x72
        ];

        Assert.Equal(expected, actual);
    }

    [Fact]
    public void Wrong_direction_seal_is_rejected()
    {
        byte[] frame = new byte[12];
        var writer = new TqPacketWriter(frame, 1004, TqPacketSeal.Server);
        writer.Complete();

        Assert.False(TqPacket.TryParse(
            frame,
            TqPacketFraming.Game,
            TqPacketSeal.Client,
            out _,
            out TqPacketValidationError error));
        Assert.Equal(TqPacketValidationError.WrongSeal, error);
    }

    private readonly record struct ExamplePacket(uint Value, ushort Mode) : ITqPacketDefinition
    {
        public ushort PacketId => 1004;
        public int PayloadLength => sizeof(uint) + sizeof(ushort);

        public void WritePayload(ref TqPacketWriter writer)
        {
            writer.WriteUInt32(Value);
            writer.WriteUInt16(Mode);
        }
    }
}
