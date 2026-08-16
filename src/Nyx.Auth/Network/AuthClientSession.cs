using Nyx.Auth.Network.Packets;
using Nyx.Network;
using Nyx.Network.Cryptography;
using Nyx.Network.Protocol;

namespace Nyx.Auth.Network;

/// <summary>
/// Per-connection state for an authentication client. Owns the stream cipher and
/// the unsealed TQ frame decoder. Encryption and outbound queue insertion share one
/// lock so concurrent replies cannot reverse the keystream order.
/// </summary>
public sealed class AuthClientSession : IDisposable
{
    private readonly GameSession _session;
    private bool _disposed;

    public AuthCryptography Cryptographer { get; } = new();
    public TqPacketStreamDecoder InboundPackets { get; } = new(TqPacketFraming.Authentication);
    public int PasswordSeed { get; set; }
    public string IP => _session.IP;
    public bool Alive => _session.Alive && !_disposed;

    public AuthClientSession(GameSession session)
    {
        _session = session ?? throw new ArgumentNullException(nameof(session));
    }

    public void Send(byte[] buffer)
    {
        if (_disposed || !_session.Alive || buffer is null || buffer.Length == 0)
            return;

        byte[] encrypted = GC.AllocateUninitializedArray<byte>(buffer.Length);
        Buffer.BlockCopy(buffer, 0, encrypted, 0, buffer.Length);

        lock (Cryptographer)
        {
            Cryptographer.Encrypt(encrypted, encrypted.Length);
            _session.Send(encrypted);
        }
    }

    public void Send(PasswordCryptographySeed seed) => Send(seed.Encode());
    public void Send(ForwardResponse forward) => Send(forward.Encode());

    public void Disconnect()
    {
        Dispose();
        _session.Disconnect();
    }

    public void Dispose()
    {
        if (_disposed)
            return;

        _disposed = true;
        InboundPackets.Dispose();
        Cryptographer.Dispose();
    }
}
