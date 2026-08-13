using Microsoft.Extensions.Logging;
using System.Net.Sockets;

namespace Nyx.Network
{
    public class AuthNetworkService : NetworkService
    {
        public AuthNetworkService(ILogger<AuthNetworkService> logger) : base(logger)
        {
        }

        protected override GameSession CreateSession(Socket socket)
        {
            var session = base.CreateSession(socket);
            // Encryption will be handled manually by AuthClient using legacy logic.
            // session.SetCryptography(new Cryptography.AuthCryptography());

            // Enable RawMode to allow AuthServer_OnClientReceive to handle manual decryption and framing.
            session.EnableRawMode();
            return session;
        }
    }
}
