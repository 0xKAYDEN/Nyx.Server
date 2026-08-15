using Microsoft.Extensions.Logging;
using System.Net.Sockets;

namespace Nyx.Network;

public sealed class GameNetworkService : NetworkService
{
    public GameNetworkService(ILogger<GameNetworkService> logger) : base(logger)
    {
    }

    protected override GameSession CreateSession(Socket socket)
    {
        // The transport emits encrypted chunks. Framing begins after the DH exchange in the
        // protocol layer because packet length bytes are encrypted on the wire.
        return base.CreateSession(socket);
    }
}
