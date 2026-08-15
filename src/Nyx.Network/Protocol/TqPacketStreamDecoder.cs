using System.Buffers;
using System.Buffers.Binary;

namespace Nyx.Network.Protocol;

/// <summary>
/// Incremental decoder for a decrypted TCP byte stream. It preserves torn packets across reads,
/// emits every coalesced packet, validates lengths before allocation, and optionally validates the
/// TQClient/TQServer footer.
/// </summary>
public sealed class TqPacketStreamDecoder : IDisposable
{
    private readonly ArrayPool<byte> _pool;
    private readonly TqPacketFraming _framing;
    private readonly TqPacketSeal _expectedSeal;
    private readonly int _maximumPacketLength;
    private readonly int _maximumBufferedBytes;
    private byte[] _buffer;
    private int _start;
    private int _end;
    private int _disposed;

    public TqPacketStreamDecoder(
        TqPacketFraming framing,
        TqPacketSeal expectedSeal = TqPacketSeal.None,
        int maximumPacketLength = TqPacketProtocol.DefaultMaximumPacketLength,
        int maximumBufferedBytes = 64 * 1024,
        ArrayPool<byte>? pool = null)
    {
        if (maximumPacketLength < TqPacketProtocol.MinimumPacketLength || maximumPacketLength > ushort.MaxValue)
            throw new ArgumentOutOfRangeException(nameof(maximumPacketLength));
        if (maximumBufferedBytes < maximumPacketLength + (framing == TqPacketFraming.Game ? TqPacketProtocol.SealSize : 0))
            throw new ArgumentOutOfRangeException(nameof(maximumBufferedBytes));
        if (framing == TqPacketFraming.Authentication && expectedSeal != TqPacketSeal.None)
            throw new ArgumentException("Authentication packets do not contain a TQ seal.", nameof(expectedSeal));

        _framing = framing;
        _expectedSeal = expectedSeal;
        _maximumPacketLength = maximumPacketLength;
        _maximumBufferedBytes = maximumBufferedBytes;
        _pool = pool ?? ArrayPool<byte>.Shared;
        _buffer = _pool.Rent(Math.Min(4096, maximumBufferedBytes));
    }

    public int BufferedBytes => _end - _start;

    public void Append(ReadOnlySpan<byte> data)
    {
        ThrowIfDisposed();
        if (data.IsEmpty)
            return;
        if (data.Length > _maximumBufferedBytes - BufferedBytes)
            //throw new TqPacketStreamException(TqPacketStreamError.BufferLimitExceeded, 0);

        EnsureWritable(data.Length);
        data.CopyTo(_buffer.AsSpan(_end));
        _end += data.Length;
    }

    public TqPacketDecodeStatus TryRead(out byte[]? frame, out TqPacketStreamError error)
    {
        ThrowIfDisposed();
        frame = null;
        error = TqPacketStreamError.None;

        int available = BufferedBytes;
        if (available < sizeof(ushort))
            return TqPacketDecodeStatus.NeedMoreData;

        ushort declaredLength = BinaryPrimitives.ReadUInt16LittleEndian(_buffer.AsSpan(_start, sizeof(ushort)));
        if (declaredLength < TqPacketProtocol.MinimumPacketLength)
        {
            error = TqPacketStreamError.LengthBelowMinimum;
            return TqPacketDecodeStatus.InvalidData;
        }
        if (declaredLength > _maximumPacketLength)
        {
            error = TqPacketStreamError.LengthAboveMaximum;
            return TqPacketDecodeStatus.InvalidData;
        }

        bool hasSeal = _framing == TqPacketFraming.Game;
        int frameLength = TqPacketProtocol.GetFrameLength(declaredLength, hasSeal);
        if (available < frameLength)
            return TqPacketDecodeStatus.NeedMoreData;

        if (hasSeal)
        {
            ulong rawSeal = BinaryPrimitives.ReadUInt64LittleEndian(
                _buffer.AsSpan(_start + declaredLength, TqPacketProtocol.SealSize));
            if (!TqPacketProtocol.IsKnownSeal(rawSeal))
            {
                error = TqPacketStreamError.UnknownSeal;
                return TqPacketDecodeStatus.InvalidData;
            }
            if (_expectedSeal != TqPacketSeal.None && rawSeal != (ulong)_expectedSeal)
            {
                error = TqPacketStreamError.WrongSeal;
                return TqPacketDecodeStatus.InvalidData;
            }
        }

        frame = GC.AllocateUninitializedArray<byte>(frameLength);
        _buffer.AsSpan(_start, frameLength).CopyTo(frame);
        _start += frameLength;

        if (_start == _end)
        {
            _start = 0;
            _end = 0;
        }

        return TqPacketDecodeStatus.Frame;
    }

    public void Reset()
    {
        ThrowIfDisposed();
        _start = 0;
        _end = 0;
    }

    private void EnsureWritable(int count)
    {
        if (_buffer.Length - _end >= count)
            return;

        int buffered = BufferedBytes;
        if (_start > 0 && _buffer.Length - buffered >= count)
        {
            _buffer.AsSpan(_start, buffered).CopyTo(_buffer);
            _start = 0;
            _end = buffered;
            return;
        }

        int required = checked(buffered + count);
        int newLength = Math.Min(_maximumBufferedBytes, Math.Max(required, Math.Min(_buffer.Length * 2, _maximumBufferedBytes)));
        byte[] replacement = _pool.Rent(newLength);
        _buffer.AsSpan(_start, buffered).CopyTo(replacement);
        _pool.Return(_buffer);
        _buffer = replacement;
        _start = 0;
        _end = buffered;
    }

    private void ThrowIfDisposed() => ObjectDisposedException.ThrowIf(_disposed != 0, this);

    public void Dispose()
    {
        if (Interlocked.Exchange(ref _disposed, 1) != 0)
            return;

        byte[] buffer = _buffer;
        _buffer = Array.Empty<byte>();
        _start = 0;
        _end = 0;
        _pool.Return(buffer);
    }
}

public enum TqPacketDecodeStatus : byte
{
    NeedMoreData = 0,
    Frame,
    InvalidData
}

public enum TqPacketStreamError : byte
{
    None = 0,
    LengthBelowMinimum,
    LengthAboveMaximum,
    UnknownSeal,
    WrongSeal,
    BufferLimitExceeded
}

//public sealed class TqPacketStreamException : InvalidDataException
//{
//    public TqPacketStreamException(TqPacketStreamError error, ushort declaredLength)
//        : base()

//    //$"Invalid TQ packet stream: {error} (declared length {declaredLength})."
//    {
//        Error = error;
//        DeclaredLength = declaredLength;
//    }

//    public TqPacketStreamError Error { get; }
//    public ushort DeclaredLength { get; }
//}
