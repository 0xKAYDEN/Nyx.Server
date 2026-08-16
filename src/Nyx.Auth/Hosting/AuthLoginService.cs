using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Options;
using Nyx.Auth.Configuration;
using Nyx.Auth.Database;
using Nyx.Auth.Network;
using Nyx.Auth.Network.Packets;
using Nyx.Auth.Security;
using Nyx.Shared.Auth;

namespace Nyx.Auth.Hosting;

/// <summary>
/// Authenticates a single MsgAccount frame and either publishes a Redis ticket +
/// MsgConnectEx forward, or replies with a rejection.
/// </summary>
public sealed class AuthLoginService
{
    private readonly IAccountRepository _accounts;
    private readonly IAuthTicketStore _tickets;
    private readonly LoginRateLimiter _rateLimiter;
    private readonly BannedIpCache _bannedIps;
    private readonly AuthServerOptions _options;
    private readonly ILogger<AuthLoginService> _logger;

    public AuthLoginService(
        IAccountRepository accounts,
        IAuthTicketStore tickets,
        LoginRateLimiter rateLimiter,
        BannedIpCache bannedIps,
        IOptions<AuthServerOptions> options,
        ILogger<AuthLoginService> logger)
    {
        _accounts = accounts;
        _tickets = tickets;
        _rateLimiter = rateLimiter;
        _bannedIps = bannedIps;
        _options = options.Value;
        _logger = logger;
    }

    public async ValueTask HandleAsync(AuthClientSession client, byte[] packet, CancellationToken cancellationToken)
    {
        var request = new AuthenticationRequest();
        request.Deserialize(packet);

        _logger.LogInformation(
            "Login attempt: Username={Username}, Server={Server}, Mac={Mac}, IP={IP}",
            request.Username,
            request.Server,
            request.MacAddress,
            client.IP);

        if (_bannedIps.IsBanned(client.IP))
        {
            _logger.LogWarning("Banned IP rejected: {IP}", client.IP);
            client.Send(new ForwardResponse { Type = ForwardResponse.ForwardType.Banned });
            return;
        }

        if (!_rateLimiter.Allow(client.IP))
        {
            _logger.LogWarning("Rate limit blocked {IP} for user {Username}", client.IP, request.Username);
            _rateLimiter.RegisterFailure(client.IP);
            client.Send(new ForwardResponse { Type = ForwardResponse.ForwardType.InvalidInfo });
            return;
        }

        var account = await _accounts.FindByUsernameAsync(request.Username, cancellationToken).ConfigureAwait(false);

        // Constant-time-ish reject: never distinguish "missing user" from "bad password".
        var passwordOk = account is { Exists: true } &&
                         string.Equals(account.Password, request.Password, StringComparison.Ordinal);

        if (!passwordOk)
        {
            _logger.LogWarning(
                "Auth failed for {Username} from {IP} (exists={Exists})",
                request.Username,
                client.IP,
                account?.Exists == true);

            _rateLimiter.RegisterFailure(client.IP);
            client.Send(new ForwardResponse { Type = ForwardResponse.ForwardType.InvalidInfo });
            return;
        }

        if (account!.StateEnum is AccountRecord.AccountState.Banned or AccountRecord.AccountState.Cheated)
        {
            _logger.LogWarning(
                "Auth rejected for {Username}: state={State}",
                request.Username,
                account.StateEnum);

            client.Send(new ForwardResponse
            {
                Type = account.StateEnum == AccountRecord.AccountState.Banned
                    ? ForwardResponse.ForwardType.Banned
                    : ForwardResponse.ForwardType.InvalidInfo
            });
            return;
        }

        var randomKey = AuthTokenGenerator.NextRandomKey();
        var identifier = AuthTokenGenerator.Generate(account.Username, account.Password, randomKey);

        var ticket = new AuthTicket
        {
            Identifier = identifier,
            RandomKey = randomKey,
            Username = account.Username,
            Password = account.Password,
            EntityId = account.EntityId ?? 0,
            State = (byte)account.State,
            MacAddress = string.IsNullOrEmpty(request.MacAddress) ? (account.MacAddress ?? string.Empty) : request.MacAddress,
            Ip = client.IP,
            IssuedAtUtc = DateTime.UtcNow
        };

        var ttl = TimeSpan.FromSeconds(Math.Max(15, _options.Auth.TicketTtlSeconds));
        await _tickets.StoreAsync(ticket, ttl, cancellationToken).ConfigureAwait(false);

        var forward = new ForwardResponse
        {
            Type = ForwardResponse.ForwardType.Ready,
            Identifier = identifier,
            IP = _options.Server.ServerAddress,
            Port = (uint)_options.Server.GamePort
        };

        client.Send(forward);

        _logger.LogInformation(
            "Auth success: {Username} → {GameIP}:{GamePort} id={Identifier:X8}",
            account.Username,
            forward.IP,
            forward.Port,
            identifier);
    }
}
