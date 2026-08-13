using Nyx.Server.Client;
using Nyx.Server.Network;
using Nyx.Server.Network.ImprovedPacketSystem;
using Serilog;
using System;
using System.Threading.Tasks;

namespace Nyx.Server
{
    public static class PacketProcessor
    {
        private static CachedAttributeInvocation<Func<GameClient, byte[], Task>, PacketAttribute, ushort> _byteHandlers;
        private static CachedAttributeInvocation<Func<GameClient, PacketStructure, Task>, PacketAttribute, ushort> _structureHandlers;

        public static void Initialize()
        {
            try
            {
                _byteHandlers = new CachedAttributeInvocation<Func<GameClient, byte[], Task>, PacketAttribute, ushort>(PacketAttribute.Translator);
                _structureHandlers = new CachedAttributeInvocation<Func<GameClient, PacketStructure, Task>, PacketAttribute, ushort>(PacketAttribute.Translator);
                
                LoggingService.SystemInfo("PacketProcessor", "Packet processor initialized with attribute-based routing.");
            }
            catch (Exception ex)
            {
                LoggingService.SystemError("PacketProcessor", "Failed to initialize packet processor", ex);
            }
        }

        public static async Task<bool> ProcessAsync(GameClient client, byte[] packet)
        {
            if (packet == null || packet.Length < 4) return false;
            if (_byteHandlers == null || _structureHandlers == null) return false;

            ushort packetId = BitConverter.ToUInt16(packet, 2);

            // Try byte array handlers first
            var byteHandler = _byteHandlers[packetId];
            if (byteHandler != null)
            {
                try
                {
                    await byteHandler(client, packet);
                    return true;
                }
                catch (Exception ex)
                {
                    LoggingService.SystemError("PacketProcessor", $"Error in byte handler for packet {packetId}", ex);
                    return true; // We handled it, even if it failed
                }
            }

            // Try structure handlers
            var structureHandler = _structureHandlers[packetId];
            if (structureHandler != null)
            {
                try
                {
                    var structure = PacketStructure.Parse(packet);
                    await structureHandler(client, structure);
                    return true;
                }
                catch (Exception ex)
                {
                    LoggingService.SystemError("PacketProcessor", $"Error in structure handler for packet {packetId}", ex);
                    return true;
                }
            }

            return false; // No handler found in the new system
        }
    }
}
