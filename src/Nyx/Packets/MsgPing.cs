using Nyx.Server.Client;
using Nyx.Server.Network;
using Nyx.Network.Core.Packets;
using Nyx.Server;
using System;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.Server.Packets
{
    /// <summary>
    /// Handles ping/pong packets (Packet ID: 1037)
    /// Uses PacketReader/Writer for clean packet parsing
    /// </summary>
    public class MsgPing
    {
        public static ulong ClientSeal = BitConverter.ToUInt64(Encoding.Default.GetBytes("TQClient"), 0);

        [Network.Packet((ushort)Network.PacketType.MsgPing)]
        public static async Task Process(GameClient client, byte[] packet)
        {
            try
            {
                // Validate packet structure
                if (!PacketValidator.IsValid(packet, out string? validationError))
                {
                    LoggingService.SystemWarning("PacketHandler", 
                        $"Invalid MsgPing packet from {client.Entity?.Name ?? "Unknown"}: {validationError}");
                    return;
                }

                // Validate seal
                if (!PacketValidator.ValidateSeal(packet, ClientSeal))
                {
                    LoggingService.SystemWarning("PacketHandler", 
                        $"Invalid seal in MsgPing packet from {client.Entity?.Name ?? "Unknown"}");
                    client.Disconnect();
                    return;
                }

                // Use PacketReader to parse the packet
                ushort length = BitConverter.ToUInt16(packet, 0);
                byte[] packetData = new byte[length];
                Array.Copy(packet, packetData, length);

                using var reader = new PacketReader(packetData);
                
                // Skip header
                reader.BaseStream.Position = 8;
                
                // Read ping timestamp
                uint timestamp = reader.ReadUInt32();

                LoggingService.SystemDebug("PacketHandler", 
                    $"MsgPing from {client.Entity?.Name ?? "Unknown"}: Timestamp={timestamp}");

                // Echo the ping back (pong)
                await SendPong(client, timestamp);
            }
            catch (Exception ex)
            {
                var context = PacketErrorContext.BuildErrorContext(
                    packet, 
                    (ushort)Network.PacketType.MsgPing, 
                    ex, 
                    $"IP: {client.IP}, Entity: {client.Entity?.Name ?? "Unknown"}");
                
                LoggingService.SystemError("PacketHandler", context, ex);
            }
        }

        /// <summary>
        /// Send pong response using PacketWriter
        /// </summary>
        private static async Task SendPong(GameClient client, uint timestamp)
        {
            using var writer = new PacketWriter();
            
            // Write header
            writer.Write((ushort)1037); // Packet ID
            writer.Write((ushort)0); // Type
            writer.Write((ushort)0); // Offset
            
            // Write timestamp back
            writer.Write(timestamp);
            
            byte[] packetData = writer.ToArray();
            
            // Add seal
            byte[] finalPacket = new byte[packetData.Length + 8];
            Array.Copy(packetData, finalPacket, packetData.Length);
            Array.Copy(BitConverter.GetBytes(ClientSeal), 0, finalPacket, packetData.Length, 8);
            
            // Update length in header
            BitConverter.TryWriteBytes(new Span<byte>(finalPacket, 0, 2), (ushort)finalPacket.Length);
            
            client.Send(finalPacket);
            await Task.CompletedTask;
        }
    }
}

