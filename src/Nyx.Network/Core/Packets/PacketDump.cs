using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.Network.Core.Packets
{
    /// <summary>
    /// Utility for dumping packet data in hex format for debugging
    /// </summary>
    public static class PacketDump
    {
        /// <summary>
        /// Creates a hex dump of packet data
        /// </summary>
        public static string Hex(byte[] data, int maxBytes = 256)
        {
            if (data == null || data.Length == 0)
                return "Empty packet";

            var sb = new StringBuilder();
            int length = Math.Min(data.Length, maxBytes);
            bool truncated = data.Length > maxBytes;

            for (int i = 0; i < length; i += 16)
            {
                // Offset
                sb.AppendFormat("{0:X4}  ", i);

                // Hex bytes
                for (int j = 0; j < 16; j++)
                {
                    if (i + j < length)
                        sb.AppendFormat("{0:X2} ", data[i + j]);
                    else
                        sb.Append("   ");
                }

                sb.Append(" ");

                // ASCII representation
                for (int j = 0; j < 16 && i + j < length; j++)
                {
                    byte b = data[i + j];
                    sb.Append(b >= 32 && b < 127 ? (char)b : '.');
                }

                sb.AppendLine();
            }

            if (truncated)
                sb.AppendLine($"... (truncated, total length: {data.Length} bytes)");

            return sb.ToString();
        }

        /// <summary>
        /// Creates a hex dump from ReadOnlySpan
        /// </summary>
        public static string Hex(ReadOnlySpan<byte> data, int maxBytes = 256)
        {
            return Hex(data.ToArray(), maxBytes);
        }

        /// <summary>
        /// Creates a compact hex string (no formatting)
        /// </summary>
        public static string HexCompact(byte[] data, int maxBytes = 64)
        {
            if (data == null || data.Length == 0)
                return "";

            var sb = new StringBuilder();
            int length = Math.Min(data.Length, maxBytes);

            for (int i = 0; i < length; i++)
            {
                sb.AppendFormat("{0:X2}", data[i]);
            }

            if (data.Length > maxBytes)
                sb.Append("...");

            return sb.ToString();
        }

        /// <summary>
        /// Creates a formatted packet summary with header info
        /// </summary>
        public static string Summary(byte[] packet)
        {
            if (packet == null || packet.Length < 4)
                return "Invalid packet";

            var sb = new StringBuilder();
            ushort length = packet.Length >= 2 ? BitConverter.ToUInt16(packet, 0) : (ushort)0;
            ushort id = packet.Length >= 4 ? BitConverter.ToUInt16(packet, 2) : (ushort)0;

            sb.AppendLine($"Packet ID: {id} (0x{id:X4})");
            sb.AppendLine($"Length: {length} bytes (actual: {packet.Length} bytes)");

            if (packet.Length >= 8)
            {
                ushort type = BitConverter.ToUInt16(packet, 4);
                ushort offset = BitConverter.ToUInt16(packet, 6);
                sb.AppendLine($"Type: {type}, Offset: {offset}");
            }

            sb.AppendLine();
            sb.Append(Hex(packet, 128));

            return sb.ToString();
        }
    }
}
