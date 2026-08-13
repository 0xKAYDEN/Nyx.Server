using System;
using System.Text;

namespace Nyx.Network.Core.Packets
{
    /// <summary>
    /// Builds detailed error context for packet processing failures
    /// </summary>
    public static class PacketErrorContext
    {
        public static string BuildErrorContext(byte[]? packet, ushort packetId, Exception? exception, string? clientInfo = null)
        {
            var sb = new StringBuilder();
            
            sb.AppendLine("=== Packet Processing Error ===");
            
            if (!string.IsNullOrEmpty(clientInfo))
                sb.AppendLine($"Client: {clientInfo}");
            
            if (packet != null)
            {
                sb.AppendLine($"Packet ID: {packetId} (0x{packetId:X4})");
                sb.AppendLine($"Packet Length: {packet.Length} bytes");
                
                if (packet.Length >= 4)
                {
                    ushort declaredLength = BitConverter.ToUInt16(packet, 0);
                    sb.AppendLine($"Declared Length: {declaredLength} bytes");
                }
                
                sb.AppendLine("\nPacket Data:");
                sb.Append(PacketDump.Hex(packet, 128));
            }
            
            if (exception != null)
            {
                sb.AppendLine($"\nException: {exception.GetType().Name}");
                sb.AppendLine($"Message: {exception.Message}");
                sb.AppendLine($"Stack Trace:\n{exception.StackTrace}");
            }
            
            return sb.ToString();
        }
    }
}

