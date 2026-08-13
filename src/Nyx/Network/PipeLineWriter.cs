using System;
using System.Buffers;
using System.Collections.Generic;
using System.IO.Pipelines;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.Server.Network
{
    public class PipeLineWriter
    {
        // Write a string as UTF-8 bytes
        public static async Task WriteAsync(string arg, PipeWriter writer)
        {
            if (writer == null || arg == null)
                return;

            byte[] argEncoded = Program.Encoding.GetBytes(arg);
            writer.Write(argEncoded);
            await writer.FlushAsync();
        }

        public static async Task WriteAsync(byte arg, PipeWriter writer)
        {
            if (writer == null)
                return;

            var span = writer.GetSpan(1);
            span[0] = arg;
            writer.Advance(1);
            await writer.FlushAsync();
        }

        public static async Task WriteAsync(bool arg, PipeWriter writer)
        {
            await WriteAsync(arg ? (byte)1 : (byte)0, writer);
        }

        public static async Task WriteAsync(ushort arg, PipeWriter writer)
        {
            if (writer == null)
                return;

            var span = writer.GetSpan(sizeof(ushort));
            span[0] = (byte)arg;
            span[1] = (byte)(arg >> 8);
            writer.Advance(sizeof(ushort));
            await writer.FlushAsync();
        }

        public static async Task WriteAsync(uint arg, PipeWriter writer)
        {
            if (writer == null)
                return;

            var span = writer.GetSpan(sizeof(uint));
            span[0] = (byte)arg;
            span[1] = (byte)(arg >> 8);
            span[2] = (byte)(arg >> 16);
            span[3] = (byte)(arg >> 24);
            writer.Advance(sizeof(uint));
            await writer.FlushAsync();
        }

        public static async Task WriteAsync(ulong arg, PipeWriter writer)
        {
            if (writer == null)
                return;

            var span = writer.GetSpan(sizeof(ulong));
            for (int i = 0; i < 8; i++)
                span[i] = (byte)(arg >> (8 * i));

            writer.Advance(sizeof(ulong));
            await writer.FlushAsync();
        }

        public static async Task WriteAsync(int arg, PipeWriter writer)
        {
            if (writer == null)
                return;

            var span = writer.GetSpan(sizeof(int));
            span[0] = (byte)arg;
            span[1] = (byte)(arg >> 8);
            span[2] = (byte)(arg >> 16);
            span[3] = (byte)(arg >> 24);
            writer.Advance(sizeof(int));
            await writer.FlushAsync();
        }

        public static async Task WriteAsync(List<string> list, PipeWriter writer)
        {
            if (list == null || writer == null)
                return;

            // Write count
            await WriteAsync((byte)list.Count, writer);

            foreach (string str in list)
            {
                byte[] data = Program.Encoding.GetBytes(str);
                await WriteAsync((byte)data.Length, writer);
                writer.Write(data);
            }

            await writer.FlushAsync();
        }

        public static async Task WriteAsync(string[] array, PipeWriter writer)
        {
            if (array == null || writer == null)
                return;

            await WriteAsync((byte)array.Length, writer);

            foreach (string str in array)
            {
                byte[] data = Program.Encoding.GetBytes(str);
                await WriteAsync((byte)data.Length, writer);
                writer.Write(data);
            }

            await writer.FlushAsync();
        }

        public static async Task WriteWithLengthAsync(string arg, PipeWriter writer)
        {
            if (writer == null || arg == null)
                return;

            byte[] data = Encoding.Default.GetBytes(arg);
            await WriteAsync((byte)data.Length, writer);
            writer.Write(data);
            await writer.FlushAsync();
        }

        // --- Additions ---

        public static async Task WriteUInt16Async(ushort arg, PipeWriter writer) => await WriteAsync(arg, writer);
        public static async Task WriteUInt32Async(uint arg, PipeWriter writer) => await WriteAsync(arg, writer);
        public static async Task WriteUInt64Async(ulong arg, PipeWriter writer) => await WriteAsync(arg, writer);
        public static async Task WriteInt32Async(int arg, PipeWriter writer) => await WriteAsync(arg, writer);
        public static async Task WriteByteAsync(byte arg, PipeWriter writer) => await WriteAsync(arg, writer);

        public static async Task WriteStringListAsync(List<string> list, PipeWriter writer)
        {
            if (list == null || writer == null)
                return;

            await WriteAsync((byte)list.Count, writer);

            foreach (var str in list)
            {
                byte[] data = Program.Encoding.GetBytes(str);
                await WriteAsync((byte)data.Length, writer);
                writer.Write(data);
            }

            await writer.FlushAsync();
        }
    }
}
