using Microsoft.Extensions.Logging;
using System.Net.Sockets;

namespace Nyx.Network;

public sealed class AuthNetworkService : NetworkService
{
    public AuthNetworkService(ILogger<AuthNetworkService> logger) : base(logger)
    {
    }

    protected override GameSession CreateSession(Socket socket)
    {
        // Authentication framing occurs after the legacy stream cipher is applied.
        return base.CreateSession(socket);
    }
}
