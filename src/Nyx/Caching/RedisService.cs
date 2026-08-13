using Microsoft.Extensions.Logging;
using StackExchange.Redis;
using System;
using System.Collections.Concurrent;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using System.Threading;
using System.Threading.Channels;
using System.Threading.Tasks;

namespace Nyx.Server.Caching;

public interface IRedisService
{
    Task<T?> GetAsync<T>(string key, CancellationToken ct = default) where T : class;
    Task SetAsync<T>(string key, T value, TimeSpan? expiry = null, CancellationToken ct = default) where T : class;
    Task<bool> DeleteAsync(string key, CancellationToken ct = default);
    Task<bool> ExistsAsync(string key, CancellationToken ct = default);
    Task<long> IncrementAsync(string key, long value = 1);
    Task<long> DecrementAsync(string key, long value = 1);
    RedisHealthStatus GetHealthStatus();
}

public readonly record struct RedisHealthStatus(
    bool IsConnected,
    long ConnectedClientCount,
    long TotalCommandsProcessed,
    long TotalErrors,
    double AverageCommandTimeMs);

public sealed class RedisService : IRedisService, IDisposable
{
    private readonly RedisConfiguration _config;
    private readonly ILogger<RedisService> _logger;
    private readonly ConnectionMultiplexer _connection;
    private readonly IDatabase _database;
    private readonly ConcurrentDictionary<string, long> _localCache;
    private long _totalCommandsProcessed;
    private long _totalErrors;
    private long _totalCommandTimeTicks;
    private bool _disposed;

    public RedisService(RedisConfiguration config, ILogger<RedisService> logger)
    {
        _config = config;
        _logger = logger;
        _localCache = new ConcurrentDictionary<string, long>();

        var options = new ConfigurationOptions
        {
            EndPoints = { { config.Hostname, config.Port } },
            Password = string.IsNullOrEmpty(config.Password) ? null : config.Password,
            DefaultDatabase = config.Database,
            ConnectTimeout = config.ConnectTimeoutMs,
            SyncTimeout = config.SyncTimeoutMs,
            AbortOnConnectFail = config.EnableAbortOnConnectFail,
            ReconnectRetryPolicy = new ExponentialRetry(5000),
            ConnectRetry = 3,
            KeepAlive = 60
        };

        _connection = ConnectionMultiplexer.Connect(options);
        _database = _connection.GetDatabase();

        _logger.LogInformation("Redis service connected to {Hostname}:{Port}", config.Hostname, config.Port);
    }

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    private string GetPrefixedKey(string key) => $"{_config.InstanceName}{key}";

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    private async Task<T> ExecuteWithMetricsAsync<T>(Func<Task<T>> operation)
    {
        var startTicks = Stopwatch.GetTimestamp();

        try
        {
            Interlocked.Increment(ref _totalCommandsProcessed);
            return await operation();
        }
        catch
        {
            Interlocked.Increment(ref _totalErrors);
            throw;
        }
        finally
        {
            var elapsedTicks = Stopwatch.GetTimestamp() - startTicks;
            Interlocked.Add(ref _totalCommandTimeTicks, elapsedTicks);
        }
    }

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    private async Task ExecuteWithMetricsAsync(Func<Task> operation)
    {
        var startTicks = Stopwatch.GetTimestamp();

        try
        {
            Interlocked.Increment(ref _totalCommandsProcessed);
            await operation();
        }
        catch
        {
            Interlocked.Increment(ref _totalErrors);
            throw;
        }
        finally
        {
            var elapsedTicks = Stopwatch.GetTimestamp() - startTicks;
            Interlocked.Add(ref _totalCommandTimeTicks, elapsedTicks);
        }
    }

    public async Task<T?> GetAsync<T>(string key, CancellationToken ct = default) where T : class
    {
        return await ExecuteWithMetricsAsync(async () =>
        {
            var prefixedKey = GetPrefixedKey(key);
            var value = await _database.StringGetAsync(prefixedKey);

            if (value.IsNullOrEmpty)
                return null;

            return System.Text.Json.JsonSerializer.Deserialize<T>(value!);
        });
    }

    public async Task SetAsync<T>(string key, T value, TimeSpan? expiry = null, CancellationToken ct = default) where T : class
    {
        await ExecuteWithMetricsAsync(async () =>
        {
            var prefixedKey = GetPrefixedKey(key);
            var serialized = System.Text.Json.JsonSerializer.Serialize(value);
            await _database.StringSetAsync(prefixedKey, serialized, expiry ?? TimeSpan.FromMinutes(30));
        });
    }

    public async Task<bool> DeleteAsync(string key, CancellationToken ct = default)
    {
        return await ExecuteWithMetricsAsync(async () =>
        {
            var prefixedKey = GetPrefixedKey(key);
            return await _database.KeyDeleteAsync(prefixedKey);
        });
    }

    public async Task<bool> ExistsAsync(string key, CancellationToken ct = default)
    {
        return await ExecuteWithMetricsAsync(async () =>
        {
            var prefixedKey = GetPrefixedKey(key);
            return await _database.KeyExistsAsync(prefixedKey);
        });
    }

    public async Task<long> IncrementAsync(string key, long value = 1)
    {
        return await ExecuteWithMetricsAsync(async () =>
        {
            var prefixedKey = GetPrefixedKey(key);
            return (long)await _database.StringIncrementAsync(prefixedKey, value);
        });
    }

    public async Task<long> DecrementAsync(string key, long value = 1)
    {
        return await ExecuteWithMetricsAsync(async () =>
        {
            var prefixedKey = GetPrefixedKey(key);
            return (long)await _database.StringDecrementAsync(prefixedKey, value);
        });
    }

    public RedisHealthStatus GetHealthStatus()
    {
        var avgCommandTimeMs = _totalCommandsProcessed > 0
            ? (double)_totalCommandTimeTicks / _totalCommandsProcessed / TimeSpan.TicksPerMillisecond
            : 0.0;

        return new RedisHealthStatus(
            _connection.IsConnected,
            _connection.GetCounters().TotalOutstanding,
            Interlocked.Read(ref _totalCommandsProcessed),
            Interlocked.Read(ref _totalErrors),
            avgCommandTimeMs
        );
    }

    public void Dispose()
    {
        if (_disposed) return;
        _disposed = true;

        _connection.Close();
        _connection.Dispose();

        _logger.LogInformation("RedisService disposed. Total commands: {Total}, Errors: {Errors}",
            _totalCommandsProcessed, _totalErrors);
    }
}

public sealed class RedisCacheKeys
{
    public const string CharacterPrefix = "char:";
    public const string MapPrefix = "map:";
    public const string GuildPrefix = "guild:";
    public const string SessionPrefix = "session:";
    public const string EntityCachePrefix = "entity:";

    public static string Character(ulong entityId) => $"{CharacterPrefix}{entityId}";
    public static string Map(ushort mapId) => $"{MapPrefix}{mapId}";
    public static string Guild(uint guildId) => $"{GuildPrefix}{guildId}";
    public static string Session(ulong sessionId) => $"{SessionPrefix}{sessionId}";
    public static string Entity(ulong entityId) => $"{EntityCachePrefix}{entityId}";
}
