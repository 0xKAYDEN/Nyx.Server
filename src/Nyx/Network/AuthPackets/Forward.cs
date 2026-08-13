using Nyx.Network.Core.Packets;
using Serilog;
using System;
using System.Text;
namespace Nyx.Server.Network.AuthPackets
{
    public class Forward : Interfaces.IPacket
    {
        public enum ForwardType : byte { Ready = 2, InvalidInfo = 1, Banned = 25 }
        public ulong Identifier { get; set; }
        public ForwardType Type { get; set; }
        public uint Port { get; set; }
        public string IP { get; set; }     
        public void Deserialize(byte[] buffer)
        {
            //no implementation
        }
        public byte[] Encode()
        {
            var writer = new PacketWriter();
            writer.Write((ushort)PacketType.MsgConnectEx); //2

            // Successful login
            writer.Write(this.Identifier); //4
            writer.Write(this.Port); //12
            writer.Write(0);
            writer.Write(this.IP, 16);

            Log.Information(PacketDump.Hex(writer.ToArray()));
            return writer.ToArray();
        }
        public void Send(Client.GameClient client)
        {
            client.Send(Encode());
        }
    }
}
