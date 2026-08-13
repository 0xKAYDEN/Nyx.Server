using Nyx.Server.Client;
using System;
using System.Text;
using System.Threading.Tasks;
using Nyx.Network.Core.Packets;
using Nyx.Server.Network;
using Nyx.Server;

namespace Nyx.Server.Packets
{
    /// <summary>
    /// Example packet demonstrating PacketReader usage
    /// Packet ID: 9999 (Example - can be changed to actual packet ID)
    /// </summary>
    public class MsgExamplePacket1
    {
        public static ulong ClientSeal = BitConverter.ToUInt64(Encoding.Default.GetBytes("TQClient"), 0);

        [Network.Packet(9999)]
        public static async Task Process(GameClient client, byte[] packet)
        {
            try
            {
                // Validate packet using PacketValidator
                if (!PacketValidator.IsValid(packet, out string validationError))
                {
                    LoggingService.SystemWarning("PacketHandler", 
                        $"Invalid packet from {client.Entity?.Name ?? "Unknown"}: {validationError}");
                    return;
                }

                // Validate seal
                ushort length = BitConverter.ToUInt16(packet, 0);
                if (!PacketValidator.ValidateSeal(packet, ClientSeal))
                {
                    LoggingService.SystemWarning("PacketHandler", 
                        $"Invalid seal from {client.Entity?.Name ?? "Unknown"}");
                    client.Disconnect();
                    return;
                }

                // Use PacketReader to parse the packet
                // Note: packet includes seal at the end, so we need to exclude it
                byte[] packetData = new byte[length];
                Array.Copy(packet, packetData, length);
                
                using var reader = new PacketReader(packetData);
                
                // Skip header (already validated)
                reader.BaseStream.Position = 8; // Skip length(2) + ID(2) + Type(2) + Offset(2)
                
                // Read packet data
                uint targetId = reader.ReadUInt32();
                string message = reader.ReadString(16); // Fixed length string
                ushort value = reader.ReadUInt16();
                
                LoggingService.SystemDebug("PacketHandler", 
                    $"MsgExamplePacket1 from {client.Entity?.Name ?? "Unknown"}: TargetId={targetId}, Message={message}, Value={value}");

                // Process the packet data here
                // Example: Send response back using PacketWriter
                await SendResponse(client, targetId, message, value);
            }
            catch (Exception ex)
            {
                var context = PacketErrorContext.BuildErrorContext(
                    packet, 
                    9999, 
                    ex, 
                    $"IP: {client.IP}, Entity: {client.Entity?.Name ?? "Unknown"}");
                
                LoggingService.SystemError("PacketHandler", context, ex);
            }
        }

        /// <summary>
        /// Example method showing how to send a response using PacketWriter
        /// </summary>
        private static async Task SendResponse(GameClient client, uint targetId, string message, ushort value)
        {
            using var writer = new PacketWriter();
            
            // Write packet ID
            writer.Write((ushort)9999); // Packet ID
            writer.Write((ushort)0); // Type
            writer.Write((ushort)0); // Offset
            
            // Write packet data
            writer.Write(targetId);
            writer.Write(message, 16); // Fixed length string
            writer.Write(value);
            
            // Get packet data with correct length
            byte[] packetData = writer.ToArray();
            
            // Add seal
            byte[] finalPacket = new byte[packetData.Length + 8];
            Array.Copy(packetData, finalPacket, packetData.Length);
            Array.Copy(BitConverter.GetBytes(ClientSeal), 0, finalPacket, packetData.Length, 8);
            
            // Update length in header
            BitConverter.TryWriteBytes(new Span<byte>(finalPacket, 0, 2), (ushort)finalPacket.Length);
            
            // Send to client
            client.Send(finalPacket);
            
            await Task.CompletedTask;
        }
    }
}

