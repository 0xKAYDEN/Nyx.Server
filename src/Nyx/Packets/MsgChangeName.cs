using Nyx.Server.Client;
using Nyx.Server.Network;
using Nyx.Server.Network.GamePackets;
using Nyx.Network.Core.Packets;
using Nyx.Server;
using System;
using System.Drawing;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.Server.Packets
{
    /// <summary>
    /// Handles name change requests (Packet ID: 2080)
    /// Uses PacketReader/Writer for clean packet parsing
    /// </summary>
    public class MsgChangeName
    {
        public static ulong ClientSeal = BitConverter.ToUInt64(Encoding.Default.GetBytes("TQClient"), 0);

        [Network.Packet((ushort)Network.PacketType.MsgChangeName)]
        public static async Task Process(GameClient client, byte[] packet)
        {
            try
            {
                // Validate packet structure
                if (!PacketValidator.IsValid(packet, out string? validationError))
                {
                    LoggingService.SystemWarning("PacketHandler", 
                        $"Invalid MsgChangeName packet from {client.Entity?.Name ?? "Unknown"}: {validationError}");
                    return;
                }

                // Validate seal
                if (!PacketValidator.ValidateSeal(packet, ClientSeal))
                {
                    LoggingService.SystemWarning("PacketHandler", 
                        $"Invalid seal in MsgChangeName packet from {client.Entity?.Name ?? "Unknown"}");
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
                
                // Read action type (at offset 8, which is packet[4] in original)
                byte action = reader.ReadByte();
                reader.ReadByte(); // Skip one byte (packet[5])
                
                // Read new name (fixed length string at offset 10, 16 bytes)
                string newName = reader.ReadString(16);

                LoggingService.SystemDebug("PacketHandler", 
                    $"MsgChangeName from {client.Entity?.Name ?? "Unknown"}: Action={action}, NewName={newName}");

                // Process name change request
                if (action == 0) // Request action
                {
                    await ProcessNameChangeRequest(client, newName, packetData);
                }
            }
            catch (Exception ex)
            {
                var context = PacketErrorContext.BuildErrorContext(
                    packet, 
                    (ushort)Network.PacketType.MsgChangeName, 
                    ex, 
                    $"IP: {client.IP}, Entity: {client.Entity?.Name ?? "Unknown"}");
                
                LoggingService.SystemError("PacketHandler", context, ex);
            }
        }

        /// <summary>
        /// Process name change request
        /// </summary>
        private static async Task ProcessNameChangeRequest(GameClient client, string newName, byte[] originalPacket)
        {
            // Validate name
            if (string.IsNullOrWhiteSpace(newName))
                return;

            if (newName.Contains("[") && newName.Contains("]"))
                return;

            // Check for invalid characters (using existing validation)
            if (Npcs.InvalidCharacters(newName) && 
                !newName.Contains("[") && 
                !newName.Contains("GM") && 
                !newName.Contains("own") && 
                !newName.Contains("help") && 
                !newName.Contains("pm") && 
                !newName.Contains("]"))
            {
                // Check for bad words
                foreach (var bad in Kernel.Insults)
                    if (newName.Contains(bad)) 
                        return;

                // Check if name exists in database
                NyxSqlCommand cmd = new NyxSqlCommand(MySqlCommandType.SELECT)
                    .Select("entities")
                    .Where("name", newName);
                
                Database.MySqlReader reader = new Database.MySqlReader(cmd);
                
                if (!reader.Read())
                {
                    // Name is available
                    if (client.Entity.ConquerPoints >= 810)
                    {
                        client.Entity.ConquerPoints -= 810;
                        client.Entity.NewName = newName;
                        client.Entity.EditNameTimes--;

                        // Send success response using PacketWriter
                        await SendNameChangeResponse(client, 1, client.Entity.EditNameTimes);

                        // Notify all players
                        foreach (var client2 in Kernel.GamePool.Values)
                        {
                            client2.Send(new Message(
                                $"{client.Entity.Name} changed their name to {newName}. Will be affected after relogin.",
                                Color.Red, 
                                Message.Talk));
                        }

                        // Send NPC reply
                        Network.GamePackets.NpcReply npc = new Network.GamePackets.NpcReply(6, 
                            $"Your new name is: {newName}. After relog you will get your new name. Want to relog?");
                        npc.OptionID = 244;
                        client.Send(npc.Encode());
                    }
                    else
                    {
                        // Not enough CPs
                        Network.GamePackets.NpcReply npc = new Network.GamePackets.NpcReply(6, 
                            $"Come back when you have 810 CPs.");
                        npc.OptionID = 255;
                        client.Send(npc.Encode());
                    }
                }
                else
                {
                    // Name already taken
                    await SendNameChangeResponse(client, 2, client.Entity.EditNameTimes);
                }
            }
            else
            {
                // Invalid characters
                Network.GamePackets.NpcReply npc = new Network.GamePackets.NpcReply(6, 
                    "Invalid characters inside the name!");
                npc.OptionID = 255;
                client.Send(npc.Encode());
            }

            await Task.CompletedTask;
        }

        /// <summary>
        /// Send name change response using PacketWriter
        /// </summary>
        private static async Task SendNameChangeResponse(GameClient client, byte result, byte editNameTimes)
        {
            using var writer = new PacketWriter();
            
            // Write header
            writer.Write((ushort)2080); // Packet ID
            writer.Write(result); // Result (1 = success, 2 = name taken)
            writer.Write((ushort)0); // Type
            writer.Write((byte)(5 - editNameTimes)); // Remaining changes
            writer.Write(editNameTimes); // Used changes
            
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

