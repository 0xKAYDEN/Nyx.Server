using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Options;
using Nyx.Auth.Configuration;
using Nyx.Auth.Network;
using Nyx.Auth.Network.Packets;
using Nyx.Network;
using Nyx.Network.Cryptography;
using Nyx.Network.Protocol;

namespace Nyx.Auth.Hosting;

/// <summary>
/// Wires <see cref="AuthNetworkService"/> to the auth login pipeline and owns the
/// process-wide TQ auth cipher tables.
/// </summary>
public sealed class AuthNetworkHostedService : IHostedService
{
    private readonly AuthNetworkService _network;
    private readonly AuthLoginService _login;
    private readonly AuthServerOptions _options;
    private readonly ILogger<AuthNetworkHostedService> _logger;

    public AuthNetworkHostedService(
        AuthNetworkService network,
        AuthLoginService login,
        IOptions<AuthServerOptions> options,
        ILogger<AuthNetworkHostedService> logger)
    {
        _network = network;
        _login = login;
        _options = options.Value;
        _logger = logger;
    }

    public Task StartAsync(CancellationToken cancellationToken)
    {
        AuthCryptography.PrepareAuthCryptography();

        _network.Configure(_options.Server.AuthPort);
        _network.OnSessionConnected += OnConnected;
        _network.OnSessionDisconnected += OnDisconnected;
        _network.SessionPacketProcessor = ProcessSessionAsync;

        _logger.LogInformation(
            "Auth network armed on port {Port}; game forward {GameIP}:{GamePort}",
            _options.Server.AuthPort,
            _options.Server.ServerAddress,
            _options.Server.GamePort);

        return Task.CompletedTask;
    }

    public Task StopAsync(CancellationToken cancellationToken) => Task.CompletedTask;

    private void OnConnected(GameSession session)
    {
        _logger.LogInformation("Auth client connected: {IP}", session.IP);

        var client = new AuthClientSession(session);
        session.Connector = client;
        client.PasswordSeed = _options.Auth.PasswordSeed;
        client.Send(new PasswordCryptographySeed { Seed = client.PasswordSeed });
    }

    private void OnDisconnected(GameSession session)
    {
        _logger.LogInformation("Auth client disconnected: {IP}", session.IP);

        if (session.Connector is AuthClientSession client)
            client.Dispose();
        else
            session.Disconnect();
    }

    private async Task ProcessSessionAsync(GameSession session)
    {
        try
        {
            await foreach (var chunk in session.Channel.Reader.ReadAllAsync())
            {
                if (session.Connector is not AuthClientSession client || !client.Alive)
                    break;

                await HandleChunkAsync(client, chunk).ConfigureAwait(false);

                if (!client.Alive)
                    break;
            }
        }
        catch (OperationCanceledException)
        {
            // Normal shutdown.
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Auth session pump failed for {IP}", session.IP);
            session.Disconnect();
        }
    }

    private async Task HandleChunkAsync(AuthClientSession client, byte[] buffer)
    {
        try
        {
            client.Cryptographer.Decrypt(buffer, buffer.Length);
            client.InboundPackets.Append(buffer.AsSpan());

            while (true)
            {
                var status = client.InboundPackets.TryRead(out byte[]? packet, out TqPacketStreamError error);

                if (status == TqPacketDecodeStatus.NeedMoreData)
                    return;

                if (status == TqPacketDecodeStatus.InvalidData)
                {
                    _logger.LogWarning("Invalid TQ auth stream ({Error}) from {IP}", error, client.IP);
                    client.Disconnect();
                    return;
                }

                // Patch 6323 MsgAccount is a fixed 312-byte unsealed frame.
                if (packet is null || packet.Length < TqPacketProtocol.HeaderSize)
                    continue;

                ushort length = BitConverter.ToUInt16(packet, 0);
                ushort id = BitConverter.ToUInt16(packet, 2);

                if (length != AuthPacketIds.MsgAccountLength || id != AuthPacketIds.MsgAccount)
                {
                    _logger.LogDebug("Ignoring auth frame Length={Length} Id={Id} from {IP}", length, id, client.IP);
                    continue;
                }

                await _login.HandleAsync(client, packet, CancellationToken.None).ConfigureAwait(false);
            }
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error handling auth chunk from {IP}", client.IP);
            client.Disconnect();
        }
    }
}
