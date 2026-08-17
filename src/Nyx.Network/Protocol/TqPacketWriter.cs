using System.Buffers.Binary;
using System.Text;

namespace Nyx.Network.Protocol;

/// <summary>
/// Stack-only packet writer. It writes directly into caller-owned memory, reserves the common
/// header automatically, and finalizes the declared length and optional seal in one operation.
/// </summary>
public ref struct TqPacketWriter
{
    private readonly Span<byte> _destination;
    private readonly TqPacketSeal _seal;
    private int _position;
    private int _completedLength;

    public TqPacketWriter(Span<byte> destination, ushort packetId, TqPacketSeal seal = TqPacketSeal.Server)
    {
        int minimumLength = TqPacketProtocol.HeaderSize + (seal == TqPacketSeal.None ? 0 : TqPacketProtocol.SealSize);
        if (destination.Length < minimumLength)
            throw new ArgumentException($"A packet buffer must contain at least {minimumLength} bytes.", nameof(destination));

        _destination = destination;
        _seal = seal;
        _position = TqPacketProtocol.HeaderSize;
        _completedLength = 0;

        BinaryPrimitives.WriteUInt16LittleEndian(destination, 0);
        BinaryPrimitives.WriteUInt16LittleEndian(destination[2..], packetId);
    }

    public int Position => _position;
    public int PayloadLength =>
        _position - TqPacketProtocol.HeaderSize -
        (IsCompleted && _seal != TqPacketSeal.None ? TqPacketProtocol.SealSize : 0);
    public int Remaining => _destination.Length - _position - (_seal == TqPacketSeal.None ? 0 : TqPacketProtocol.SealSize);
    public bool IsCompleted => _completedLength != 0;

    public ReadOnlySpan<byte> WrittenSpan
    {
        get
        {
            if (!IsCompleted)
                throw new InvalidOperationException("Complete the packet before reading its final bytes.");
            return _destination[.._completedLength];
        }
    }

    public void WriteByte(byte value)
    {
        Span<byte> target = Reserve(1);
        target[0] = value;
    }

    public void WriteSByte(sbyte value) => WriteByte(unchecked((byte)value));
    public void WriteBoolean(bool value) => WriteByte(value ? (byte)1 : (byte)0);

    public void WriteUInt16(ushort value) =>
        BinaryPrimitives.WriteUInt16LittleEndian(Reserve(sizeof(ushort)), value);

    public void WriteInt16(short value) =>
        BinaryPrimitives.WriteInt16LittleEndian(Reserve(sizeof(short)), value);

    public void WriteUInt32(uint value) =>
        BinaryPrimitives.WriteUInt32LittleEndian(Reserve(sizeof(uint)), value);

    public void WriteInt32(int value) =>
        BinaryPrimitives.WriteInt32LittleEndian(Reserve(sizeof(int)), value);

    public void WriteUInt64(ulong value) =>
        BinaryPrimitives.WriteUInt64LittleEndian(Reserve(sizeof(ulong)), value);

    public void WriteInt64(long value) =>
        BinaryPrimitives.WriteInt64LittleEndian(Reserve(sizeof(long)), value);

    public void WriteBytes(ReadOnlySpan<byte> value) => value.CopyTo(Reserve(value.Length));

    public void WriteZeroes(int count) => Reserve(count).Clear();

    public void WriteFixedString(string? value, int byteLength)
    {
        Span<byte> target = Reserve(byteLength);
        target.Clear();
        if (string.IsNullOrEmpty(value) || byteLength == 0)
            return;

        ReadOnlySpan<char> characters = value.AsSpan(0, Math.Min(value.Length, byteLength));
        Encoding.ASCII.GetBytes(characters, target);
    }

    public void WriteString8(string? value)
    {
        value ??= string.Empty;
        int byteLength = Encoding.ASCII.GetByteCount(value);
        if (byteLength > byte.MaxValue)
            throw new ArgumentOutOfRangeException(nameof(value), "An 8-bit TQ string cannot exceed 255 bytes.");

        WriteByte((byte)byteLength);
        Encoding.ASCII.GetBytes(value.AsSpan(), Reserve(byteLength));
    }

    public void WriteString16(string? value)
    {
        value ??= string.Empty;
        int byteLength = Encoding.ASCII.GetByteCount(value);
        if (byteLength > ushort.MaxValue)
            throw new ArgumentOutOfRangeException(nameof(value), "A 16-bit TQ string cannot exceed 65535 bytes.");

        WriteUInt16((ushort)byteLength);
        Encoding.ASCII.GetBytes(value.AsSpan(), Reserve(byteLength));
    }

    public void WriteStringList8(ReadOnlySpan<string> values)
    {
        if (values.Length > byte.MaxValue)
            throw new ArgumentOutOfRangeException(nameof(values), "A TQ string list cannot contain more than 255 values.");

        WriteByte((byte)values.Length);
        foreach (string value in values)
            WriteString8(value);
    }

    public void WriteVarUInt32(uint value)
    {
        while (value >= 0x80)
        {
            WriteByte((byte)(value | 0x80));
            value >>= 7;
        }
        WriteByte((byte)value);
    }

    /// <summary>Writes a protobuf-compatible varint field used by modern CO movement packets.</summary>
    public void WriteTaggedVarUInt32(int fieldNumber, uint value)
    {
        if (fieldNumber <= 0 || fieldNumber > 0x1FFFFFFF)
            throw new ArgumentOutOfRangeException(nameof(fieldNumber));
        WriteVarUInt32((uint)fieldNumber << 3);
        WriteVarUInt32(value);
    }

    /// <summary>Finalizes the packet and returns the complete frame length.</summary>
    public int Complete()
    {
        if (IsCompleted)
            return _completedLength;
        if (_position > ushort.MaxValue)
            throw new InvalidOperationException("The declared TQ packet length exceeds UInt16.MaxValue.");

        BinaryPrimitives.WriteUInt16LittleEndian(_destination, (ushort)_position);
        if (_seal != TqPacketSeal.None)
        {
            TqPacketProtocol.WriteSeal(Reserve(TqPacketProtocol.SealSize, includeSealReservation: false), _seal);
        }

        _completedLength = _position;
        return _completedLength;
    }

    private Span<byte> Reserve(int count, bool includeSealReservation = true)
    {
        if (IsCompleted)
            throw new InvalidOperationException("The packet has already been completed.");
        if (count < 0)
            throw new ArgumentOutOfRangeException(nameof(count));

        int sealReservation = includeSealReservation && _seal != TqPacketSeal.None ? TqPacketProtocol.SealSize : 0;
        if (count > _destination.Length - _position - sealReservation)
            throw new InvalidOperationException($"Packet buffer exhausted at offset {_position}; requested {count} byte(s).");

        Span<byte> result = _destination.Slice(_position, count);
        _position += count;
        return result;
    }
}
