using System.Buffers.Binary;
using System.Text;
using Nyx.Server.Network.AuthPackets;
using Nyx.Server.Network.GamePackets;

namespace Nyx.Network.Tests;

public sealed class MigratedPacketGoldenTests
{
    [Fact]
    public void Patch6323PacketNumbersRemainCanonical()
    {
        Assert.Equal(6323, Nyx.Network.Protocol.TqPacketProtocol.ClientPatch);
        Assert.Equal((ushort)1004, (ushort)Nyx.Server.Network.PacketType.MsgTalk);
        Assert.Equal((ushort)10005, (ushort)Nyx.Server.Network.PacketType.MsgWalk);
        Assert.Equal((ushort)10010, (ushort)Nyx.Server.Network.PacketType.MsgAction);
        Assert.Equal((ushort)1033, (ushort)Nyx.Server.Network.PacketType.MsgData);
        Assert.Equal((ushort)1052, (ushort)Nyx.Server.Network.PacketType.MsgConnect);
        Assert.Equal((ushort)1055, (ushort)Nyx.Server.Network.PacketType.MsgConnectEx);
        Assert.Equal((ushort)1059, (ushort)Nyx.Server.Network.PacketType.MsgEncryptCode);
        Assert.Equal((ushort)1542, (ushort)Nyx.Server.Network.PacketType.MsgAccount);
        Assert.Equal((ushort)2031, (ushort)Nyx.Server.Network.PacketType.MsgNpc);
        Assert.Equal((ushort)2032, (ushort)Nyx.Server.Network.PacketType.MsgTaskDialog);
    }

    [Fact]
    public void AuthForward_PreservesNyx6323UnsealedWireBytes()
    {
        var packet = new Forward
        {
            Identifier = 0x11223344,
            Type = Forward.ForwardType.Ready,
            Port = 5816,
            IP = "1.2.3.4"
        };

        byte[] actual = packet.Encode();
        byte[] expected =
        [
            0x24, 0x00, 0x1F, 0x04,
            0x44, 0x33, 0x22, 0x11,
            0x00, 0x00, 0x00, 0x00,
            0xB8, 0x16, 0x00, 0x00,
            0x00, 0x00, 0x00, 0x00,
            0x31, 0x2E, 0x32, 0x2E, 0x33, 0x2E, 0x34,
            0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
        ];

        Assert.Equal(expected, actual);
    }

    [Fact]
    public void Authentication_ParsesCanonicalOffsetsWithoutReadingTheFooterModel()
    {
        byte[] frame = new byte[312];
        BinaryPrimitives.WriteUInt16LittleEndian(frame, 312);
        BinaryPrimitives.WriteUInt16LittleEndian(frame.AsSpan(2), 1542);
        WriteFixedAscii(frame, 8, 16, "account");
        WriteFixedAscii(frame, 72, 16, "secret");
        WriteFixedAscii(frame, 136, 16, "Realm");
        WriteFixedAscii(frame, 152, 12, "A1B2C3D4E5F6");
        var packet = new Authentication();

        packet.Deserialize(frame);

        Assert.Equal("account", packet.Username);
        Assert.Equal("secret", packet.Password);
        Assert.Equal("Realm", packet.Server);
        Assert.Equal("A1B2C3D4E5F6", packet.MacAddress);
    }

    [Fact]
    public void MsgWalk_ProducesExactProtobufFrameWithoutSealOverlap()
    {
        var movement = new GroundMovement(true)
        {
            Direction = (Nyx.Server.Game.Enums.ConquerAngle)7,
            UID = 1_000_001,
            GroundMovementType = GroundMovement.Run,
            TimeStamp = 123_123,
            MapID = 1002
        };

        byte[] actual = movement.Encode();
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
    public void NpcRequest_HelperWritesAndParsesExactClientFrame()
    {
        byte[] actual = NpcRequest.CreatePacket(0x11223344, 5, 1, "Hi");
        byte[] expected =
        [
            0x14, 0x00, 0xEF, 0x07,
            0x00, 0x00, 0x00, 0x00,
            0x44, 0x33, 0x22, 0x11,
            0x00, 0x00, 0x05, 0x01, 0x00, 0x02, 0x48, 0x69,
            0x54, 0x51, 0x43, 0x6C, 0x69, 0x65, 0x6E, 0x74
        ];
        Assert.Equal(expected, actual);

        var request = new NpcRequest();
        request.Deserialize(actual);
        Assert.Equal(0x11223344U, request.NpcID);
        Assert.Equal((byte)5, request.OptionID);
        Assert.Equal((byte)1, request.InteractType);
        Assert.Equal("Hi", request.Input);
    }

    private static void WriteFixedAscii(byte[] destination, int offset, int length, string value)
    {
        Span<byte> target = destination.AsSpan(offset, length);
        target.Clear();
        Encoding.ASCII.GetBytes(value, target);
    }
}
