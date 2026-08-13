using Nyx.Server.Client;
using Nyx.Server.Network;
using Nyx.Network.Core.Packets;
using Nyx.Server;
using System;
using System.Drawing;
using System.Text;
using System.Threading.Tasks;
using Nyx.Server.Network.GamePackets;

namespace Nyx.Server.Packets
{
    /// <summary>
    /// Handles chat/talk messages (Packet ID: 1004)
    /// Uses PacketReader/Writer for clean packet parsing
    /// </summary>
    public class MsgTalk
    {
        public static ulong ClientSeal = BitConverter.ToUInt64(Encoding.Default.GetBytes("TQClient"), 0);

        [Network.Packet((ushort)Network.PacketType.MsgTalk)]
        public static async Task Process(GameClient client, byte[] packet)
        {
            try
            {
                // Validate packet structure
                if (!PacketValidator.IsValid(packet, out string? validationError))
                {
                    LoggingService.SystemWarning("PacketHandler", 
                        $"Invalid MsgTalk packet from {client.Entity?.Name ?? "Unknown"}: {validationError}");
                    return;
                }

                // Validate seal
                if (!PacketValidator.ValidateSeal(packet, ClientSeal))
                {
                    LoggingService.SystemWarning("PacketHandler", 
                        $"Invalid seal in MsgTalk packet from {client.Entity?.Name ?? "Unknown"}");
                    client.Disconnect();
                    return;
                }

                // Use PacketReader to parse the packet
                ushort length = BitConverter.ToUInt16(packet, 0);
                byte[] packetData = new byte[length];
                Array.Copy(packet, packetData, length);

                using var reader = new PacketReader(packetData);
                
                // Skip header (8 bytes: length + ID + Type + Offset)
                reader.BaseStream.Position = 8;
                
                // Read packet fields
                int colorArgb = reader.ReadInt32();
                Color color = Color.FromArgb(colorArgb);
                ushort channel = reader.ReadUInt16();
                ushort style = reader.ReadUInt16();
                uint characterId = reader.ReadUInt32();
                uint recipientMesh = reader.ReadUInt32();
                uint senderMesh = reader.ReadUInt32();
                
                // Read strings (count-prefixed list)
                var strings = reader.ReadStrings();
                
                string senderName = strings.Count > 0 ? strings[0] : "";
                string recipientName = strings.Count > 1 ? strings[1] : "";
                string suffix = strings.Count > 2 ? strings[2] : "";
                string message = strings.Count > 3 ? strings[3] : "";

                LoggingService.SystemDebug("PacketHandler", 
                    $"MsgTalk from {client.Entity?.Name ?? "Unknown"}: Channel={channel}, " +
                    $"From={senderName}, To={recipientName}, Message={message}");

                // Process the chat message
                // Note: The actual chat processing logic would go here
                // For now, we're just demonstrating the packet parsing
                
                await Task.CompletedTask;
            }
            catch (Exception ex)
            {
                var context = PacketErrorContext.BuildErrorContext(
                    packet, 
                    (ushort)Network.PacketType.MsgTalk, 
                    ex, 
                    $"IP: {client.IP}, Entity: {client.Entity?.Name ?? "Unknown"}");
                
                LoggingService.SystemError("PacketHandler", context, ex);
            }
        }

        /// <summary>
        /// Helper method to send a talk message using PacketWriter
        /// </summary>
        public static byte[] CreateTalkPacket(uint characterId, ushort channel, Color color, 
            string senderName, string recipientName, string message)
        {
            using var writer = new PacketWriter();
            
            // Write header
            writer.Write((ushort)1004); // Packet ID
            writer.Write((ushort)0); // Type
            writer.Write((ushort)0); // Offset
            
            // Write packet data
            writer.Write(color.ToArgb());
            writer.Write(channel);
            writer.Write((ushort)0); // Style
            writer.Write(characterId);
            writer.Write((uint)0); // RecipientMesh
            writer.Write((uint)0); // SenderMesh
            
            // Write strings
            writer.Write(new System.Collections.Generic.List<string> 
            { 
                senderName, 
                recipientName, 
                "", 
                message 
            });
            
            byte[] packetData = writer.ToArray();
            
            // Add seal
            byte[] finalPacket = new byte[packetData.Length + 8];
            Array.Copy(packetData, finalPacket, packetData.Length);
            Array.Copy(BitConverter.GetBytes(ClientSeal), 0, finalPacket, packetData.Length, 8);
            
            // Update length in header
            BitConverter.TryWriteBytes(new Span<byte>(finalPacket, 0, 2), (ushort)finalPacket.Length);
            
            return finalPacket;
        }
    }
}

