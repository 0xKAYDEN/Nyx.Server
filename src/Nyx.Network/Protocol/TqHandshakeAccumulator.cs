namespace Nyx.Network.Protocol;

/// <summary>
/// One-shot accumulator for the encrypted client's fixed-size DH response. The response does not
/// use normal TQ framing and can be split or followed by packet bytes at any TCP boundary.
/// </summary>
public sealed class TqHandshakeAccumulator
{
    public const int ClientResponseLength = 140;

    private byte[] _response = GC.AllocateUninitializedArray<byte>(ClientResponseLength);
    private int _written;
    private bool _completed;

    public int BufferedBytes => _written;

    /// <summary>
    /// Appends plaintext bytes until the 140-byte response is complete. On completion ownership of
    /// the accumulated response is transferred to the caller; bytes after it are returned exactly.
    /// </summary>
    public bool Append(
        ReadOnlySpan<byte> plaintext,
        out byte[] response,
        out byte[] trailingPacketBytes)
    {
        if (_completed)
            throw new InvalidOperationException("The DH response has already been completed.");

        int needed = ClientResponseLength - _written;
        int consumed = Math.Min(needed, plaintext.Length);
        plaintext[..consumed].CopyTo(_response.AsSpan(_written));
        _written += consumed;

        if (_written != ClientResponseLength)
        {
            response = Array.Empty<byte>();
            trailingPacketBytes = Array.Empty<byte>();
            return false;
        }

        _completed = true;
        response = _response;
        _response = Array.Empty<byte>();
        trailingPacketBytes = plaintext[consumed..].ToArray();
        return true;
    }
}
