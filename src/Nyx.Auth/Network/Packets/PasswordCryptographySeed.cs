using Nyx.Network.Protocol;

namespace Nyx.Auth.Network.Packets;

/// <summary>
/// MsgEncryptCode (1059). Sent on connect so the client can RC5-wrap the password.
/// Wire layout is byte-identical to the game server's historical encoder.
/// </summary>
public sealed class PasswordCryptographySeed
{
    private const int PayloadSize = sizeof(int);

    public int Seed { get; set; }

    public byte[] Encode()
    {
        byte[] packet = GC.AllocateUninitializedArray<byte>(TqPacketProtocol.HeaderSize + PayloadSize);
        var writer = new TqPacketWriter(packet, AuthPacketIds.MsgEncryptCode, TqPacketSeal.None);
        writer.WriteInt32(Seed);
        writer.Complete();
        return packet;
    }
}
