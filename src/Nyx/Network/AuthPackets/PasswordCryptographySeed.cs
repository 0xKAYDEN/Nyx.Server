using System;
using System.Buffers.Binary;
using System.Text;
namespace Nyx.Server.Network.AuthPackets
{
    public class PasswordCryptographySeed : Interfaces.IPacket
    {
        public int Seed { get; set; }

        private const ushort PacketType = 1059;
        private const ushort PacketLength = 8;

        public PasswordCryptographySeed()
        {
            // You can initialize a random seed here if desired
            Seed = 0;
        }

        public void Deserialize(byte[] buffer)
        {
            if (buffer == null || buffer.Length < PacketLength)
                throw new ArgumentException("Invalid packet buffer.", nameof(buffer));

            Seed = BinaryPrimitives.ReadInt32LittleEndian(buffer.AsSpan(4, 4));
        }

        public byte[] Encode()
        {
            // Allocate exactly 8 bytes: [Len=2][Type=2][Seed=4]
            Span<byte> buffer = stackalloc byte[PacketLength];
            BinaryPrimitives.WriteUInt16LittleEndian(buffer, PacketLength);
            BinaryPrimitives.WriteUInt16LittleEndian(buffer[2..], PacketType);
            BinaryPrimitives.WriteInt32LittleEndian(buffer[4..], Seed);

            // Return as byte[] for Send()
            return buffer.ToArray();
        }

        public void Send(Client.GameClient client)
        {
            client.Send(Encode());
        }
    }
}
