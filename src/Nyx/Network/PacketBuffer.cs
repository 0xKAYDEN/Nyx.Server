using System;
using System.Buffers.Binary;
using System.Collections.Generic;
using System.Runtime.CompilerServices;
using System.Text;

namespace Nyx.Server.Network;

/// <summary>
/// High-performance, cross-platform packet buffer operations.
/// Replaces the unsafe Writer and SafeWriter classes.
/// 
/// Uses BinaryPrimitives for safe, fast byte manipulation.
/// All methods are bounds-checked and thread-safe.
/// </summary>
public static class PacketBuffer
{
    #region Read Operations

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public static byte ReadByte(ReadOnlySpan<byte> buffer, int offset)
    {
        return buffer[offset];
    }

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public static bool ReadBool(ReadOnlySpan<byte> buffer, int offset)
    {
        return buffer[offset] != 0;
    }

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public static ushort ReadUInt16(ReadOnlySpan<byte> buffer, int offset)
    {
        return BinaryPrimitives.ReadUInt16LittleEndian(buffer.Slice(offset));
    }

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public static short ReadInt16(ReadOnlySpan<byte> buffer, int offset)
    {
        return BinaryPrimitives.ReadInt16LittleEndian(buffer.Slice(offset));
    }

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public static uint ReadUInt32(ReadOnlySpan<byte> buffer, int offset)
    {
        return BinaryPrimitives.ReadUInt32LittleEndian(buffer.Slice(offset));
    }

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public static int ReadInt32(ReadOnlySpan<byte> buffer, int offset)
    {
        return BinaryPrimitives.ReadInt32LittleEndian(buffer.Slice(offset));
    }

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public static ulong ReadUInt64(ReadOnlySpan<byte> buffer, int offset)
    {
        return BinaryPrimitives.ReadUInt64LittleEndian(buffer.Slice(offset));
    }

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public static long ReadInt64(ReadOnlySpan<byte> buffer, int offset)
    {
        return BinaryPrimitives.ReadInt64LittleEndian(buffer.Slice(offset));
    }

    public static string ReadString(ReadOnlySpan<byte> buffer, int offset, int length)
    {
        return Encoding.ASCII.GetString(buffer.Slice(offset, length)).TrimEnd('\0');
    }

    public static string ReadNullTerminatedString(ReadOnlySpan<byte> buffer, int offset)
    {
        var end = offset;
        while (end < buffer.Length && buffer[end] != 0)
            end++;
        
        return Encoding.ASCII.GetString(buffer.Slice(offset, end - offset));
    }

    #endregion

    #region Write Operations

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public static void WriteByte(Span<byte> buffer, int offset, byte value)
    {
        buffer[offset] = value;
    }

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public static void WriteBool(Span<byte> buffer, int offset, bool value)
    {
        buffer[offset] = value ? (byte)1 : (byte)0;
    }

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public static void WriteUInt16(Span<byte> buffer, int offset, ushort value)
    {
        BinaryPrimitives.WriteUInt16LittleEndian(buffer.Slice(offset), value);
    }

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public static void WriteInt16(Span<byte> buffer, int offset, short value)
    {
        BinaryPrimitives.WriteInt16LittleEndian(buffer.Slice(offset), value);
    }

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public static void WriteUInt32(Span<byte> buffer, int offset, uint value)
    {
        BinaryPrimitives.WriteUInt32LittleEndian(buffer.Slice(offset), value);
    }

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public static void WriteInt32(Span<byte> buffer, int offset, int value)
    {
        BinaryPrimitives.WriteInt32LittleEndian(buffer.Slice(offset), value);
    }

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public static void WriteUInt64(Span<byte> buffer, int offset, ulong value)
    {
        BinaryPrimitives.WriteUInt64LittleEndian(buffer.Slice(offset), value);
    }

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public static void WriteInt64(Span<byte> buffer, int offset, long value)
    {
        BinaryPrimitives.WriteInt64LittleEndian(buffer.Slice(offset), value);
    }

    public static void WriteString(Span<byte> buffer, int offset, string value, int fixedLength)
    {
        if (string.IsNullOrEmpty(value))
        {
            buffer.Slice(offset, fixedLength).Clear();
            return;
        }

        var bytes = Encoding.ASCII.GetBytes(value);
        var length = Math.Min(bytes.Length, fixedLength);
        
        bytes.AsSpan(0, length).CopyTo(buffer.Slice(offset));
        
        if (length < fixedLength)
            buffer.Slice(offset + length, fixedLength - length).Clear();
    }

    public static void WriteNullTerminatedString(Span<byte> buffer, int offset, string value)
    {
        if (!string.IsNullOrEmpty(value))
        {
            var bytes = Encoding.ASCII.GetBytes(value);
            bytes.CopyTo(buffer.Slice(offset));
            buffer[offset + bytes.Length] = 0;
        }
        else
        {
            buffer[offset] = 0;
        }
    }

    public static void WriteStringList(Span<byte> buffer, int offset, IReadOnlyList<string> values)
    {
        var currentOffset = offset;
        buffer[currentOffset++] = (byte)values.Count;
        
        for (var i = 0; i < values.Count; i++)
        {
            var str = values[i] ?? string.Empty;
            var bytes = Encoding.ASCII.GetBytes(str);
            buffer[currentOffset++] = (byte)bytes.Length;
            bytes.CopyTo(buffer.Slice(currentOffset));
            currentOffset += bytes.Length;
        }
    }

    public static void WriteBytes(Span<byte> buffer, int offset, ReadOnlySpan<byte> data)
    {
        data.CopyTo(buffer.Slice(offset));
    }

    #endregion

    #region Packet Construction

    /// <summary>
    /// Writes the TQ packet header (length + id + type + offset).
    /// </summary>
    public static void WriteHeader(Span<byte> buffer, ushort length, ushort packetId, ushort type = 0, ushort offset = 0)
    {
        WriteUInt16(buffer, 0, length);
        WriteUInt16(buffer, 2, packetId);
        WriteUInt16(buffer, 4, type);
        WriteUInt16(buffer, 6, offset);
    }

    /// <summary>
    /// Writes the TQServer seal at the specified offset.
    /// Used for server-to-client packets.
    /// </summary>
    public static void WriteSeal(Span<byte> buffer, int offset)
    {
        // "TQServer" as little-endian uint64
        // T=0x54, Q=0x51, S=0x53, e=0x65, r=0x72, v=0x76, e=0x65, r=0x72
        WriteUInt64(buffer, offset, 0x7265767265535154);
    }

    /// <summary>
    /// Validates the TQClient seal at the end of a packet.
    /// </summary>
    public static bool ValidateSeal(ReadOnlySpan<byte> buffer)
    {
        if (buffer.Length < 8)
            return false;

        var seal = ReadUInt64(buffer, buffer.Length - 8);
        return seal == 0x746E65696C435154;
    }

    /// <summary>
    /// Creates a complete packet with header and seal.
    /// </summary>
    public static byte[] CreatePacket(ushort packetId, Action<PacketSpanWriter> writerAction, ushort type = 0)
    {
        using var writer = new PacketSpanWriter(256);
        writerAction(writer);
        return writer.ToPacketArray(packetId, type);
    }

    #endregion
}

/// <summary>
/// High-performance ref struct writer for packet data.
/// Uses stack allocation when possible, falls back to ArrayPool.
/// </summary>
public ref struct PacketSpanWriter
{
    private readonly Span<byte> _buffer;
    private int _position;
    private byte[]? _rentedBuffer;
    private readonly bool _ownsBuffer;

    public PacketSpanWriter(Span<byte> buffer)
    {
        _buffer = buffer;
        _position = 0;
        _ownsBuffer = false;
        _rentedBuffer = null;
    }

    public PacketSpanWriter(int initialCapacity)
    {
        _rentedBuffer = System.Buffers.ArrayPool<byte>.Shared.Rent(initialCapacity);
        _buffer = _rentedBuffer;
        _position = 0;
        _ownsBuffer = true;
    }

    public int Position => _position;
    public int Length => _position;
    public int Remaining => _buffer.Length - _position;

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public void WriteByte(byte value)
    {
        _buffer[_position++] = value;
    }

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public void WriteBool(bool value)
    {
        _buffer[_position++] = value ? (byte)1 : (byte)0;
    }

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public void WriteUInt16(ushort value)
    {
        BinaryPrimitives.WriteUInt16LittleEndian(_buffer.Slice(_position), value);
        _position += 2;
    }

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public void WriteInt16(short value)
    {
        BinaryPrimitives.WriteInt16LittleEndian(_buffer.Slice(_position), value);
        _position += 2;
    }

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public void WriteUInt32(uint value)
    {
        BinaryPrimitives.WriteUInt32LittleEndian(_buffer.Slice(_position), value);
        _position += 4;
    }

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public void WriteInt32(int value)
    {
        BinaryPrimitives.WriteInt32LittleEndian(_buffer.Slice(_position), value);
        _position += 4;
    }

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public void WriteUInt64(ulong value)
    {
        BinaryPrimitives.WriteUInt64LittleEndian(_buffer.Slice(_position), value);
        _position += 8;
    }

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public void WriteInt64(long value)
    {
        BinaryPrimitives.WriteInt64LittleEndian(_buffer.Slice(_position), value);
        _position += 8;
    }

    public void WriteString(string value, int fixedLength)
    {
        var bytes = Encoding.ASCII.GetBytes(value ?? string.Empty);
        var length = Math.Min(bytes.Length, fixedLength);
        
        bytes.AsSpan(0, length).CopyTo(_buffer.Slice(_position));
        
        if (length < fixedLength)
            _buffer.Slice(_position + length, fixedLength - length).Clear();
        
        _position += fixedLength;
    }

    public void WriteLengthPrefixedString(string value)
    {
        var bytes = Encoding.ASCII.GetBytes(value ?? string.Empty);
        WriteUInt16((ushort)bytes.Length);
        bytes.CopyTo(_buffer.Slice(_position));
        _position += bytes.Length;
    }

    public void WriteNullTerminatedString(string value)
    {
        if (!string.IsNullOrEmpty(value))
        {
            var bytes = Encoding.ASCII.GetBytes(value);
            bytes.CopyTo(_buffer.Slice(_position));
            _position += bytes.Length;
        }
        _buffer[_position++] = 0;
    }

    public void WriteStringList(IReadOnlyList<string> values)
    {
        _buffer[_position++] = (byte)values.Count;
        
        for (var i = 0; i < values.Count; i++)
        {
            var str = values[i] ?? string.Empty;
            var bytes = Encoding.ASCII.GetBytes(str);
            _buffer[_position++] = (byte)bytes.Length;
            bytes.CopyTo(_buffer.Slice(_position));
            _position += bytes.Length;
        }
    }

    public void WriteBytes(ReadOnlySpan<byte> data)
    {
        data.CopyTo(_buffer.Slice(_position));
        _position += data.Length;
    }

    public void Skip(int count)
    {
        _position += count;
    }

    public void Seek(int position)
    {
        _position = position;
    }

    public byte[] ToArray()
    {
        return _buffer.Slice(0, _position).ToArray();
    }

    public void CopyTo(Span<byte> destination)
    {
        _buffer.Slice(0, _position).CopyTo(destination);
    }

    /// <summary>
    /// Creates a complete TQ packet with header and seal.
    /// </summary>
    public byte[] ToPacketArray(ushort packetId, ushort packetType = 0, ushort offset = 0)
    {
        const int headerSize = 8;
        const int sealSize = 8;
        var dataSize = _position;
        var totalSize = headerSize + dataSize + sealSize;
        
        var result = new byte[totalSize];
        
        // Write header
        PacketBuffer.WriteUInt16(result, 0, (ushort)(headerSize + dataSize));
        PacketBuffer.WriteUInt16(result, 2, packetId);
        PacketBuffer.WriteUInt16(result, 4, packetType);
        PacketBuffer.WriteUInt16(result, 6, offset);
        
        // Write data
        _buffer.Slice(0, dataSize).CopyTo(result.AsSpan(headerSize));
        
        // Write seal
        PacketBuffer.WriteSeal(result, headerSize + dataSize);
        
        return result;
    }

    public void Dispose()
    {
        if (_ownsBuffer && _rentedBuffer != null)
        {
            System.Buffers.ArrayPool<byte>.Shared.Return(_rentedBuffer);
            _rentedBuffer = null;
        }
    }
}

/// <summary>
/// High-performance ref struct reader for packet data.
/// Uses stack allocation when possible.
/// </summary>
public ref struct PacketSpanReader
{
    private readonly ReadOnlySpan<byte> _data;
    private int _position;

    public PacketSpanReader(ReadOnlySpan<byte> data)
    {
        _data = data;
        _position = 0;
    }

    public PacketSpanReader(byte[] data) : this(data.AsSpan()) { }

    public int Position => _position;
    public int Remaining => _data.Length - _position;
    public bool HasData => _position < _data.Length;

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public byte ReadByte()
    {
        return _data[_position++];
    }

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public bool ReadBool()
    {
        return _data[_position++] != 0;
    }

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public ushort ReadUInt16()
    {
        var value = BinaryPrimitives.ReadUInt16LittleEndian(_data.Slice(_position));
        _position += 2;
        return value;
    }

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public short ReadInt16()
    {
        var value = BinaryPrimitives.ReadInt16LittleEndian(_data.Slice(_position));
        _position += 2;
        return value;
    }

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public uint ReadUInt32()
    {
        var value = BinaryPrimitives.ReadUInt32LittleEndian(_data.Slice(_position));
        _position += 4;
        return value;
    }

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public int ReadInt32()
    {
        var value = BinaryPrimitives.ReadInt32LittleEndian(_data.Slice(_position));
        _position += 4;
        return value;
    }

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public ulong ReadUInt64()
    {
        var value = BinaryPrimitives.ReadUInt64LittleEndian(_data.Slice(_position));
        _position += 8;
        return value;
    }

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public long ReadInt64()
    {
        var value = BinaryPrimitives.ReadInt64LittleEndian(_data.Slice(_position));
        _position += 8;
        return value;
    }

    public string ReadString(int length)
    {
        var value = Encoding.ASCII.GetString(_data.Slice(_position, length)).TrimEnd('\0');
        _position += length;
        return value;
    }

    public string ReadLengthPrefixedString()
    {
        var length = ReadUInt16();
        return ReadString(length);
    }

    public string ReadNullTerminatedString()
    {
        var start = _position;
        while (_position < _data.Length && _data[_position] != 0)
            _position++;
        
        var value = Encoding.ASCII.GetString(_data.Slice(start, _position - start));
        
        if (_position < _data.Length)
            _position++; // Skip null terminator
        
        return value;
    }

    public byte[] ReadBytes(int count)
    {
        var value = _data.Slice(_position, count).ToArray();
        _position += count;
        return value;
    }

    public ReadOnlySpan<byte> ReadSpan(int count)
    {
        var value = _data.Slice(_position, count);
        _position += count;
        return value;
    }

    public void Skip(int count)
    {
        _position += count;
    }

    public void Seek(int position)
    {
        _position = position;
    }

    public ReadOnlySpan<byte> GetRemaining()
    {
        return _data.Slice(_position);
    }
}
