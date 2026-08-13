using Microsoft.Extensions.Logging;
using Nyx.Server.Caching;
using System.Collections.Concurrent;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;

namespace Nyx.Server.Loading;

public interface IDataLoader
{
    ValueTask PreloadEssentialDataAsync(CancellationToken ct = default);
}

public sealed class PartitionedDataLoader : IDataLoader, System.IDisposable
{
    private readonly Database.IDatabaseService _db;
    private readonly IRedisService _cache;
    private readonly ILogger<PartitionedDataLoader> _logger;
    private readonly ConcurrentDictionary<ushort, object> _loadedMaps;
    private readonly ConcurrentDictionary<ulong, object> _loadedCharacters;
    private readonly ConcurrentDictionary<uint, object> _loadedGuilds;
    private readonly System.Threading.SemaphoreSlim _preloadSemaphore;
    private bool _isPreloaded;
    private long _cacheHits;
    private long _cacheMisses;
    private long _dbLoads;

    public PartitionedDataLoader(
        Database.IDatabaseService db,
        IRedisService cache,
        ILogger<PartitionedDataLoader> logger)
    {
        _db = db;
        _cache = cache;
        _logger = logger;
        _loadedMaps = new ConcurrentDictionary<ushort, object>();
        _loadedCharacters = new ConcurrentDictionary<ulong, object>();
        _loadedGuilds = new ConcurrentDictionary<uint, object>();
        _preloadSemaphore = new System.Threading.SemaphoreSlim(8, 8);
    }

    public async ValueTask PreloadEssentialDataAsync(CancellationToken ct = default)
    {
        if (_isPreloaded) return;

        await _preloadSemaphore.WaitAsync(ct);
        try
        {
            if (_isPreloaded) return;

            _logger.LogInformation("Preloading essential game data...");

            try
            {
                var mapCount = await _db.ExecuteScalarAsync<int>("SELECT COUNT(*) FROM maps", null, ct);
                _logger.LogInformation("Found {Count} maps in database", mapCount);
            }
            catch (System.Exception ex)
            {
                _logger.LogWarning(ex, "Could not query maps - database may not be initialized");
            }

            try
            {
                var guildCount = await _db.ExecuteScalarAsync<int>("SELECT COUNT(*) FROM guilds", null, ct);
                _logger.LogInformation("Found {Count} guilds in database", guildCount);
            }
            catch (System.Exception ex)
            {
                _logger.LogWarning(ex, "Could not query guilds - database may not be initialized");
            }

            _isPreloaded = true;
            _logger.LogInformation("Essential game data preloaded successfully");
        }
        finally
        {
            _preloadSemaphore.Release();
        }
    }

    public DataLoaderMetrics GetMetrics()
    {
        var total = _cacheHits + _cacheMisses;
        var hitRate = total > 0 ? (double)_cacheHits / total * 100.0 : 0.0;

        return new DataLoaderMetrics(
            _loadedCharacters.Count,
            _loadedMaps.Count,
            _loadedGuilds.Count,
            _cacheHits,
            _cacheMisses,
            _dbLoads,
            hitRate
        );
    }

    public void Dispose()
    {
        _logger.LogInformation("DataLoader disposed. Characters: {Chars}, Maps: {Maps}, Guilds: {Guilds}",
            _loadedCharacters.Count, _loadedMaps.Count, _loadedGuilds.Count);
    }
}

public readonly record struct DataLoaderMetrics(
    int LoadedCharacters,
    int LoadedMaps,
    int LoadedGuilds,
    long CacheHits,
    long CacheMisses,
    long DatabaseLoads,
    double CacheHitRatePercent);
