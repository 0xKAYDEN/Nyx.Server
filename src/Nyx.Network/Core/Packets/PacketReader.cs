using System;
using System.Collections.Generic;
using System.IO;
using System.Text;

namespace Nyx.Network.Core.Packets
{
    /// <summary>
    /// Helper class for reading TQ packet data with proper string handling
    /// </summary>
    public sealed class PacketReader : BinaryReader, IDisposable
    {
        public PacketReader(byte[] bytes) : base(new MemoryStream(bytes))
        {
        }

        /// <summary>
        /// Reads a TQ string (length-prefixed, null-terminated)
        /// </summary>
        public override string ReadString()
        {
            return base.ReadString().TrimEnd('\0');
        }

        /// <summary>
        /// Reads a fixed-length string
        /// </summary>
        public string ReadString(int fixedLength)
        {
            return Encoding.ASCII.GetString(base.ReadBytes(fixedLength)).TrimEnd('\0');
        }

        /// <summary>
        /// Reads a list of strings (count-prefixed, each length-prefixed)
        /// </summary>
        public List<string> ReadStrings()
        {
            var strings = new List<string>();
            var count = base.ReadByte();
            for (int i = 0; i < count; i++)
                strings.Add(this.ReadString());
            return strings;
        }

        /// <summary>
        /// Reads a string without length prefix (reads until null terminator or end)
        /// </summary>
        public string ReadNullTerminatedString()
        {
            var bytes = new List<byte>();
            while (BaseStream.Position < BaseStream.Length)
            {
                byte b = base.ReadByte();
                if (b == 0) break;
                bytes.Add(b);
            }
            return Encoding.ASCII.GetString(bytes.ToArray());
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                base.BaseStream?.Close();
                base.BaseStream?.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}

