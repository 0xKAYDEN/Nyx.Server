using System;
using Nyx.Network.Cryptography;
using System.Net.Sockets;
using Nyx.Network;
using Nyx.Network.Protocol;

namespace Nyx.Server.Client
{
    public class AuthClient
    {
        private GameSession _session;
        public Network.AuthPackets.Authentication Info;
        public Database.AccountTable Account;
        public Game.Entity Entity;
        public AuthCryptography Cryptographer;
        public int PasswordSeed;
        public TqPacketStreamDecoder InboundPackets { get; } = new(TqPacketFraming.Authentication);
        
        // Expose session properties for compatibility
        public string IP => _session?.IP ?? string.Empty;
        public string MAC { get => _session?.MAC ?? string.Empty; set { if (_session != null) _session.MAC = value; } }
        public bool Alive { get => _session?.Alive ?? false; set { if (_session != null) _session.Alive = value; } }
        public Socket Socket => _session?.Socket;
        
        public AuthClient(GameSession session)
        {
            _session = session;
        }
        
        public void Send(byte[] buffer)
        {
            if (_session == null || !_session.Alive) return;
            
            byte[] encrypted = GC.AllocateUninitializedArray<byte>(buffer.Length);
            Buffer.BlockCopy(buffer, 0, encrypted, 0, buffer.Length);

            // AuthCryptography is stateful. Keep encryption and queue insertion in one critical
            // section so concurrent replies cannot reverse the cipher stream order.
            lock (Cryptographer)
            {
                Cryptographer.Encrypt(encrypted, encrypted.Length);
                _session.Send(encrypted);
            }
        }
        
        public void Send(Interfaces.IPacket buffer)
        {
            Send(buffer.Encode());
        }
        
        public void Disconnect()
        {
            InboundPackets.Dispose();
            _session?.Disconnect();
        }
        
        public static uint nextID = 0;
    }
}
