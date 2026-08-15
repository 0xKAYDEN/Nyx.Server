using System.Buffers.Binary;

namespace Nyx.Network.Protocol;

/// <summary>
/// One-shot accumulator for the encrypted client's DH response. Patch 6323 prefixes the fixed
/// 140-byte key record with a variable-length envelope, so the record is located by its validated
/// length/key/seal structure rather than by a TCP-read-relative offset.
/// </summary>
public sealed class TqHandshakeAccumulator
{
    public const int PublicKeyLength = 128;
    public const int ClientResponseLength = sizeof(int) + PublicKeyLength + TqPacketProtocol.SealSize;
    private const int MaximumBufferedBytes = 4096;

    private byte[] _buffer = new byte[256];
    private int _written;
    private bool _completed;

    public int BufferedBytes => _written;

    /// <summary>
    /// Appends decrypted default-key bytes until a valid 128-byte hexadecimal public key followed
    /// by <c>TQClient</c> is available. Envelope bytes before the record are ignored; coalesced bytes
    /// after it are returned exactly for normal packet processing.
    /// </summary>
    public bool Append(
        ReadOnlySpan<byte> plaintext,
        out byte[] response,
        out byte[] trailingPacketBytes)
    {
        if (_completed)
            throw new InvalidOperationException("The DH response has already been completed.");
        if (plaintext.Length > MaximumBufferedBytes - _written)
            throw new InvalidDataException("The DH exchange exceeded its maximum buffered size.");

        int required = _written + plaintext.Length;
        if (_buffer.Length < required)
            Array.Resize(ref _buffer, Math.Min(MaximumBufferedBytes, Math.Max(required, _buffer.Length * 2)));

        plaintext.CopyTo(_buffer.AsSpan(_written));
        _written = required;

        for (int offset = 0; offset <= _written - sizeof(int); offset++)
        {
            if (BinaryPrimitives.ReadInt32LittleEndian(_buffer.AsSpan(offset)) != PublicKeyLength)
                continue;
            if (_written - offset < ClientResponseLength)
                continue;

            ReadOnlySpan<byte> publicKey = _buffer.AsSpan(offset + sizeof(int), PublicKeyLength);
            if (!IsHexadecimal(publicKey))
                continue;

            ulong seal = BinaryPrimitives.ReadUInt64LittleEndian(
                _buffer.AsSpan(offset + sizeof(int) + PublicKeyLength, TqPacketProtocol.SealSize));
            if (seal != TqPacketProtocol.ClientSealValue)
                continue;

            response = GC.AllocateUninitializedArray<byte>(ClientResponseLength);
            _buffer.AsSpan(offset, ClientResponseLength).CopyTo(response);

            int trailingOffset = offset + ClientResponseLength;
            trailingPacketBytes = _buffer.AsSpan(trailingOffset, _written - trailingOffset).ToArray();
            _completed = true;
            _buffer = Array.Empty<byte>();
            _written = 0;
            return true;
        }

        response = Array.Empty<byte>();
        trailingPacketBytes = Array.Empty<byte>();
        return false;
    }

    private static bool IsHexadecimal(ReadOnlySpan<byte> value)
    {
        foreach (byte character in value)
        {
            bool valid = character is >= (byte)'0' and <= (byte)'9'
                or >= (byte)'A' and <= (byte)'F'
                or >= (byte)'a' and <= (byte)'f';
            if (!valid)
                return false;
        }

        return true;
    }
}
