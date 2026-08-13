using Nyx.Server.Client;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using Nyx.Network.Core.Packets;
using Nyx.Server.Network;
using Nyx.Server;

namespace Nyx.Server.Packets
{
    /// <summary>
    /// Example packet demonstrating PacketReader and PacketWriter with more complex data
    /// Packet ID: 9998 (Example - can be changed to actual packet ID)
    /// </summary>
    public class MsgExamplePacket2
    {
        public static ulong ClientSeal = BitConverter.ToUInt64(Encoding.Default.GetBytes("TQClient"), 0);

        [Network.Packet(9998)]
        public static async Task Process(GameClient client, byte[] packet)
        {
            try
            {
                // Validate packet
                if (!PacketValidator.IsValid(packet, out string validationError))
                {
                    LoggingService.SystemWarning("PacketHandler", 
                        $"Invalid packet from {client.Entity?.Name ?? "Unknown"}: {validationError}");
                    return;
                }

                // Check minimum size
                if (!PacketValidator.HasMinimumSize(packet, 20))
                {
                    LoggingService.SystemWarning("PacketHandler", 
                        $"Packet too small from {client.Entity?.Name ?? "Unknown"}");
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
                
                // Skip header
                reader.BaseStream.Position = 8;
                
                // Read complex data structure
                byte action = reader.ReadByte();
                uint itemId = reader.ReadUInt32();
                ushort quantity = reader.ReadUInt16();
                
                // Read a list of strings (count-prefixed)
                List<string> itemNames = reader.ReadStrings();
                
                // Read a null-terminated string
                string description = reader.ReadNullTerminatedString();
                
                LoggingService.SystemDebug("PacketHandler", 
                    $"MsgExamplePacket2 from {client.Entity?.Name ?? "Unknown"}: " +
                    $"Action={action}, ItemId={itemId}, Quantity={quantity}, " +
                    $"ItemNames=[{string.Join(", ", itemNames)}], Description={description}");

                // Process the packet
                await ProcessExampleAction(client, action, itemId, quantity, itemNames, description);
            }
            catch (Exception ex)
            {
                var context = PacketErrorContext.BuildErrorContext(
                    packet, 
                    9998, 
                    ex, 
                    $"IP: {client.IP}, Entity: {client.Entity?.Name ?? "Unknown"}");
                
                LoggingService.SystemError("PacketHandler", context, ex);
            }
        }

        /// <summary>
        /// Process the example action
        /// </summary>
        private static async Task ProcessExampleAction(
            GameClient client, 
            byte action, 
            uint itemId, 
            ushort quantity, 
            List<string> itemNames, 
            string description)
        {
            // Example processing logic
            switch (action)
            {
                case 0:
                    // Action 0: Send confirmation
                    await SendConfirmation(client, itemId, quantity);
                    break;
                case 1:
                    // Action 1: Send item list
                    await SendItemList(client, itemNames);
                    break;
                default:
                    LoggingService.SystemWarning("PacketHandler", 
                        $"Unknown action {action} from {client.Entity?.Name ?? "Unknown"}");
                    break;
            }
        }

        /// <summary>
        /// Send confirmation using PacketWriter
        /// </summary>
        private static async Task SendConfirmation(GameClient client, uint itemId, ushort quantity)
        {
            using var writer = new PacketWriter();
            
            writer.Write((ushort)9998); // Packet ID
            writer.Write((ushort)0); // Type
            writer.Write((ushort)0); // Offset
            
            // Write response data
            writer.Write((byte)0); // Response type: confirmation
            writer.Write(itemId);
            writer.Write(quantity);
            writer.Write("Confirmed"); // Fixed length string
            writer.Write((ushort)16);
            
            byte[] packetData = writer.ToArray();
            byte[] finalPacket = new byte[packetData.Length + 8];
            Array.Copy(packetData, finalPacket, packetData.Length);
            Array.Copy(BitConverter.GetBytes(ClientSeal), 0, finalPacket, packetData.Length, 8);
            BitConverter.TryWriteBytes(new Span<byte>(finalPacket, 0, 2), (ushort)finalPacket.Length);
            
            client.Send(finalPacket);
            await Task.CompletedTask;
        }

        /// <summary>
        /// Send item list using PacketWriter
        /// </summary>
        private static async Task SendItemList(GameClient client, List<string> itemNames)
        {
            using var writer = new PacketWriter();
            
            writer.Write((ushort)9998); // Packet ID
            writer.Write((ushort)0); // Type
            writer.Write((ushort)0); // Offset
            
            // Write response data
            writer.Write((byte)1); // Response type: item list
            writer.Write((byte)itemNames.Count); // Count
            
            // Write list of strings
            writer.Write(itemNames);
            
            byte[] packetData = writer.ToArray();
            byte[] finalPacket = new byte[packetData.Length + 8];
            Array.Copy(packetData, finalPacket, packetData.Length);
            Array.Copy(BitConverter.GetBytes(ClientSeal), 0, finalPacket, packetData.Length, 8);
            BitConverter.TryWriteBytes(new Span<byte>(finalPacket, 0, 2), (ushort)finalPacket.Length);
            
            client.Send(finalPacket);
            await Task.CompletedTask;
        }
    }
}

