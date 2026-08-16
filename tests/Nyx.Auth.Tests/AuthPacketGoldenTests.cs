using System.Buffers.Binary;
using System.Text;
using Nyx.Auth.Network.Packets;
using Nyx.Network.Cryptography;
using Nyx.Network.Protocol;
using Nyx.Shared.Auth;

namespace Nyx.Auth.Tests;

/// <summary>
/// Byte-compatibility locks for the standalone auth process. These must match the
/// game server's historical AuthPackets golden tests and the live AuthCryptography.
/// </summary>
public sealed class AuthPacketGoldenTests
{
    [Fact]
    public void Forward_PreservesNyx6323UnsealedWireBytes()
    {
        var packet = new ForwardResponse
        {
            Identifier = 0x11223344,
            Type = ForwardResponse.ForwardType.Ready,
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
    public void PasswordSeed_EncodesMsgEncryptCode()
    {
        var seed = new PasswordCryptographySeed { Seed = 3721 };
        byte[] actual = seed.Encode();

        Assert.Equal(8, actual.Length);
        Assert.Equal(8, BinaryPrimitives.ReadUInt16LittleEndian(actual));
        Assert.Equal(AuthPacketIds.MsgEncryptCode, BinaryPrimitives.ReadUInt16LittleEndian(actual.AsSpan(2)));
        Assert.Equal(3721, BinaryPrimitives.ReadInt32LittleEndian(actual.AsSpan(4)));
    }

    [Fact]
    public void AuthenticationRequest_ParsesCanonicalOffsets()
    {
        byte[] frame = new byte[312];
        BinaryPrimitives.WriteUInt16LittleEndian(frame, 312);
        BinaryPrimitives.WriteUInt16LittleEndian(frame.AsSpan(2), AuthPacketIds.MsgAccount);
        WriteFixedAscii(frame, 8, 16, "account");
        WriteFixedAscii(frame, 72, 16, "secret");
        WriteFixedAscii(frame, 136, 16, "Realm");
        WriteFixedAscii(frame, 152, 12, "A1B2C3D4E5F6");

        var packet = new AuthenticationRequest();
        packet.Deserialize(frame);

        Assert.Equal("account", packet.Username);
        Assert.Equal("secret", packet.Password);
        Assert.Equal("Realm", packet.Server);
        Assert.Equal("A1B2C3D4E5F6", packet.MacAddress);
    }

    [Fact]
    public void AuthCryptography_RoundTripsPayload()
    {
        AuthCryptography.PrepareAuthCryptography();
        var cipher = new AuthCryptography();

        byte[] original = Encoding.ASCII.GetBytes("TQ-auth-roundtrip-payload!!");
        byte[] working = (byte[])original.Clone();

        cipher.Encrypt(working, working.Length);
        Assert.NotEqual(original, working);

        // Fresh decrypt counter on a second instance that only decrypts matching bytes
        // is wrong — same instance, decrypt uses its own counter starting at 0.
        var decryptSide = new AuthCryptography();
        decryptSide.Decrypt(working, working.Length);
        Assert.Equal(original, working);
    }

    [Fact]
    public void AuthTokenGenerator_IsDeterministicAndMatchable()
    {
        const string user = "TestUser";
        const string pass = "s3cret";
        const int seed = 42;

        uint a = AuthTokenGenerator.Generate(user, pass, seed);
        uint b = AuthTokenGenerator.Generate(user, pass, seed);
        Assert.Equal(a, b);
        Assert.True(AuthTokenGenerator.Matches(a, user, pass, seed));
        Assert.False(AuthTokenGenerator.Matches(a, user, "other", seed));
        Assert.NotEqual(a, AuthTokenGenerator.Generate(user, pass, seed + 1));
    }

    [Fact]
    public void MemoryAuthTicketStore_IsOneShot()
    {
        var store = new MemoryAuthTicketStore();
        var ticket = new AuthTicket
        {
            Identifier = 0xAABBCCDD,
            Username = "u",
            Password = "p",
            RandomKey = 7,
            EntityId = 1001
        };

        store.StoreAsync(ticket).AsTask().GetAwaiter().GetResult();
        var taken = store.TakeAsync(ticket.Identifier).AsTask().GetAwaiter().GetResult();
        Assert.NotNull(taken);
        Assert.Equal(ticket.Username, taken!.Username);

        var second = store.TakeAsync(ticket.Identifier).AsTask().GetAwaiter().GetResult();
        Assert.Null(second);
    }

    [Fact]
    public void AuthPacketIds_MatchPatch6323()
    {
        Assert.Equal((ushort)1055, AuthPacketIds.MsgConnectEx);
        Assert.Equal((ushort)1059, AuthPacketIds.MsgEncryptCode);
        Assert.Equal((ushort)1542, AuthPacketIds.MsgAccount);
        Assert.Equal(312, AuthPacketIds.MsgAccountLength);
    }

    private static void WriteFixedAscii(byte[] buffer, int offset, int length, string value)
    {
        var bytes = Encoding.ASCII.GetBytes(value);
        int copy = Math.Min(bytes.Length, length);
        Buffer.BlockCopy(bytes, 0, buffer, offset, copy);
    }
}
