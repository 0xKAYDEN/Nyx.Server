using Microsoft.Extensions.Logging;
using System.Net.Sockets;

namespace Nyx.Network
{
    public class GameNetworkService : NetworkService
    {
        private byte[] _defaultKey;

        public GameNetworkService(ILogger<GameNetworkService> logger) : base(logger)
        {
        }

        public void Configure(int port, byte[] defaultKey)
        {
            base.Configure(port);
            _defaultKey = defaultKey;
        }
        protected override GameSession CreateSession(System.Net.Sockets.Socket socket)
        {
            var session = base.CreateSession(socket);
            if (_defaultKey != null)
            {
                // Legacy support: Handshake is handled manually in GameServer_OnClientReceive with manual decryption.
                // We must NOT encrypt/decrypt at the session level initially.
                // session.SetCryptography(new Cryptography.SafeGameCryptography(_defaultKey));
            }
            // Enable RawMode for initial handshake (DH Exchange is not framed standardly)
            session.EnableRawMode();
            return session;
        }
    }
}
