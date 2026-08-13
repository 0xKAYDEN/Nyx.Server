using Nyx.Server.Client;
using Nyx.Server.Network.GamePackets;
//using Nyx.Network.Packets;


namespace Nyx.Server.Packets
{
    public class MsgCharacterStatistics
    {

        [Network.Packet(1040)]
        public static async Task Process(GameClient client, byte[] packet)
        {
            //Nyx.Network.Packets.PacketDump.Hex(packet);
            uint UID = BitConverter.ToUInt32(packet, 8);
            if(client.Entity.UID == UID)
            {
                WindowsStats WS = new WindowsStats(client);
                WS.Send(client);
            }
            //if (Kernel.GamePool.TryGetValue(UID, out client))
            //{
            //    WindowsStats WS = new WindowsStats(client);
            //    WS.Send(client);
            //}
        }
    }
}
