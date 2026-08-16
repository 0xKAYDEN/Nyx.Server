using System.Collections.Concurrent;
using Dapper;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Options;
using Npgsql;
using Nyx.Auth.Configuration;

namespace Nyx.Auth.Security;

/// <summary>
/// Optional banned-IP cache. Soft-fails when the <c>bannedips</c> table is missing so
/// a fresh database never blocks auth startup.
/// </summary>
public sealed class BannedIpCache
{
    private readonly ConcurrentDictionary<int, byte> _banned = new();
    private readonly ILogger<BannedIpCache> _logger;

    public BannedIpCache(IOptions<AuthServerOptions> options, ILogger<BannedIpCache> logger)
    {
        _logger = logger;

        try
        {
            using var dataSource = NpgsqlDataSource.Create(options.Value.Database.BuildConnectionString());
            using var connection = dataSource.OpenConnection();
            // Prefer the integer hash column used by the legacy loader; fall back gracefully.
            var rows = connection.Query<(int IpInt, string? Ip)>(
                """SELECT "ip_int" AS IpInt, "ip" AS Ip FROM bannedips""");

            foreach (var row in rows)
            {
                _banned[row.IpInt] = 0;
                if (!string.IsNullOrEmpty(row.Ip))
                    _banned[row.Ip.GetHashCode()] = 0;
            }

            _logger.LogInformation("Loaded {Count} banned IP entries", _banned.Count);
        }
        catch (Exception ex)
        {
            _logger.LogWarning(ex, "Banned IP table unavailable — ban checking disabled");
        }
    }

    public bool IsBanned(string ip)
    {
        if (string.IsNullOrEmpty(ip) || _banned.IsEmpty)
            return false;

        return _banned.ContainsKey(ip.GetHashCode());
    }
}
