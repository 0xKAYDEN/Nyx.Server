using System.Buffers.Binary;
using System.IO;
using System.Text;

namespace Nyx.Network.Protocol;

/// <summary>
/// Bounds-checked, allocation-free reader for little-endian TQ packet fields.
/// Construct it over <see cref="TqPacket.Payload"/> for sequential packet decoding.
/// </summary>
public ref struct TqPacketReader
{
    private readonly ReadOnlySpan<byte> _source;
    private int _position;

    public TqPacketReader(ReadOnlySpan<byte> source)
    {
        _source = source;
        _position = 0;
    }

    public int Position => _position;
    public int Length => _source.Length;
    public int Remaining => _source.Length - _position;
    public bool End => _position == _source.Length;
    public ReadOnlySpan<byte> UnreadSpan => _source[_position..];

    public byte ReadByte()
    {
        EnsureAvailable(1);
        return _source[_position++];
    }

    public sbyte ReadSByte() => unchecked((sbyte)ReadByte());

    public bool ReadBoolean() => ReadByte() != 0;

    public ushort ReadUInt16()
    {
        EnsureAvailable(sizeof(ushort));
        ushort value = BinaryPrimitives.ReadUInt16LittleEndian(_source[_position..]);
        _position += sizeof(ushort);
        return value;
    }

    public short ReadInt16()
    {
        EnsureAvailable(sizeof(short));
        short value = BinaryPrimitives.ReadInt16LittleEndian(_source[_position..]);
        _position += sizeof(short);
        return value;
    }

    public uint ReadUInt32()
    {
        EnsureAvailable(sizeof(uint));
        uint value = BinaryPrimitives.ReadUInt32LittleEndian(_source[_position..]);
        _position += sizeof(uint);
        return value;
    }

    public int ReadInt32()
    {
        EnsureAvailable(sizeof(int));
        int value = BinaryPrimitives.ReadInt32LittleEndian(_source[_position..]);
        _position += sizeof(int);
        return value;
    }

    public ulong ReadUInt64()
    {
        EnsureAvailable(sizeof(ulong));
        ulong value = BinaryPrimitives.ReadUInt64LittleEndian(_source[_position..]);
        _position += sizeof(ulong);
        return value;
    }

    public long ReadInt64()
    {
        EnsureAvailable(sizeof(long));
        long value = BinaryPrimitives.ReadInt64LittleEndian(_source[_position..]);
        _position += sizeof(long);
        return value;
    }

    public ReadOnlySpan<byte> ReadBytes(int count)
    {
        EnsureAvailable(count);
        ReadOnlySpan<byte> value = _source.Slice(_position, count);
        _position += count;
        return value;
    }

    public string ReadFixedString(int byteLength)
    {
        ReadOnlySpan<byte> bytes = ReadBytes(byteLength);
        int terminator = bytes.IndexOf((byte)0);
        if (terminator >= 0)
            bytes = bytes[..terminator];
        return Encoding.ASCII.GetString(bytes).TrimEnd('\r');
    }

    public string ReadString8()
    {
        int byteLength = ReadByte();
        return Encoding.ASCII.GetString(ReadBytes(byteLength));
    }

    public string ReadString16()
    {
        int byteLength = ReadUInt16();
        return Encoding.ASCII.GetString(ReadBytes(byteLength));
    }

    public string[] ReadStringList8()
    {
        int count = ReadByte();
        var values = new string[count];
        for (int i = 0; i < values.Length; i++)
            values[i] = ReadString8();
        return values;
    }

    public uint ReadVarUInt32()
    {
        uint value = 0;
        for (int shift = 0; shift < 35; shift += 7)
        {
            byte current = ReadByte();
            if (shift == 28 && (current & 0xF0) != 0)
                throw new InvalidDataException("The UInt32 varint is too large.");

            value |= (uint)(current & 0x7F) << shift;
            if ((current & 0x80) == 0)
                return value;
        }

        throw new InvalidDataException("The UInt32 varint is malformed.");
    }

    public void Advance(int count)
    {
        EnsureAvailable(count);
        _position += count;
    }

    private void EnsureAvailable(int count)
    {
        if (count < 0)
            throw new ArgumentOutOfRangeException(nameof(count));
        if (count > Remaining)
            throw new EndOfStreamException($"Packet needs {count} byte(s), but only {Remaining} remain at offset {_position}.");
    }
}
