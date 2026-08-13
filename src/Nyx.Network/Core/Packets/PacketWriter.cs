using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.Network.Core.Packets
{
    /// <summary>
    /// Helper class for writing TQ packet data with automatic length prefixing
    /// </summary>
    public sealed class PacketWriter : BinaryWriter, IDisposable
    {
        private readonly long _lengthPosition;

        public PacketWriter() : base(new MemoryStream())
        {
            // Write placeholder for length (will be updated later)
            base.Write((ushort)0);
            _lengthPosition = BaseStream.Position - 2;
        }

        /// <summary>
        /// Writes a fixed-length string (padded with nulls if needed)
        /// </summary>
        public void Write(string value, int fixedLength)
        {
            var array = new byte[fixedLength];
            if (!string.IsNullOrEmpty(value))
            {
                var bytes = Encoding.ASCII.GetBytes(value);
                Array.Copy(bytes, 0, array, 0, Math.Min(bytes.Length, fixedLength));
            }
            base.Write(array);
        }

        /// <summary>
        /// Writes a list of strings (count-prefixed, each length-prefixed)
        /// </summary>
        public void Write(List<string> strings)
        {
            base.Write((byte)strings.Count);
            foreach (var str in strings)
                base.Write(str);
        }

        /// <summary>
        /// Writes a null-terminated string
        /// </summary>
        public void WriteNullTerminated(string value)
        {
            if (!string.IsNullOrEmpty(value))
            {
                var bytes = Encoding.ASCII.GetBytes(value);
                base.Write(bytes);
            }
            base.Write((byte)0);
        }

        /// <summary>
        /// Finalizes the packet and returns the byte array with correct length
        /// </summary>
        public byte[] ToArray()
        {
            base.BaseStream.Flush();
            var data = (base.BaseStream as MemoryStream).ToArray();

            // Update length field
            ushort length = (ushort)data.Length;
            BitConverter.TryWriteBytes(new Span<byte>(data, (int)_lengthPosition, 2), length);

            return data;
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
