using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Threading;
using System.Threading.Tasks;
using Nyx.Server.Database;
using Nyx.Server.Utilities;
using Nyx.Threading.Core;
using Serilog;

namespace Nyx.Server.Game;

/// <summary>
/// Manages lazy loading of maps - loads map data only when needed.
/// 
/// Features:
/// - Maps are loaded on-demand when a player first enters
/// - Monster spawning happens after map is loaded
/// - Map unloading for maps with no players (memory optimization)
/// - Thread-safe concurrent access
/// - Preloading of frequently accessed maps
/// </summary>
public sealed class MapManager : IDisposable
{
    private readonly ConcurrentDictionary<ushort, LazyMap> _maps = new();
    private readonly ConcurrentDictionary<ushort, byte> _preloadedMaps = new();
    private readonly IDisposable _unloadSubscription;
    private readonly TimeSpan _unloadDelay = TimeSpan.FromMinutes(10); // Unload after 10 minutes of no players
    private bool _disposed;

    /// <summary>
    /// Gets the number of currently loaded maps.
    /// </summary>
    public int LoadedCount => _maps.Count;

    /// <summary>
    /// Gets the number of preloaded maps.
    /// </summary>
    public int PreloadedCount => _preloadedMaps.Count;

    public MapManager()
    {
        // Use ThreadingController for periodic map unload checks
        _unloadSubscription = ThreadingController.Subscribe(
            Nyx.Threading.Enums.RepositoryCategory.BackgroundTasks,
            _ => CheckForUnloadableMaps(),
            (int)TimeSpan.FromMinutes(1).TotalMilliseconds,
            recurring: true);
    }

    /// <summary>
    /// Gets a map, loading it lazily if not already loaded.
    /// </summary>
    /// <param name="mapId">The map ID to get.</param>
    /// <returns>The loaded map, or null if the map doesn't exist.</returns>
    public Map? GetOrLoad(ushort mapId)
    {
        if (_disposed)
            throw new ObjectDisposedException(nameof(MapManager));

        // Check if already in Kernel.Maps (backward compatibility)
        if (Kernel.Maps.TryGetValue(mapId, out var existingMap))
        {
            return existingMap;
        }

        // Get or create a lazy map entry
        var lazyMap = _maps.GetOrAdd(mapId, id => new LazyMap(id));
        return lazyMap.GetOrLoad();
    }

    /// <summary>
    /// Gets a map if it's already loaded, without triggering a load.
    /// </summary>
    /// <param name="mapId">The map ID to get.</param>
    /// <returns>The loaded map, or null if not loaded.</returns>
    public Map? GetIfLoaded(ushort mapId)
    {
        if (Kernel.Maps.TryGetValue(mapId, out var existingMap))
            return existingMap;

        if (_maps.TryGetValue(mapId, out var lazyMap))
            return lazyMap.GetIfLoaded();

        return null;
    }

    /// <summary>
    /// Preloads a map without waiting for a player to enter.
    /// </summary>
    /// <param name="mapId">The map ID to preload.</param>
    /// <returns>A task representing the preload operation.</returns>
    public async Task PreloadAsync(ushort mapId)
    {
        if (_preloadedMaps.ContainsKey(mapId))
            return;

        _preloadedMaps[mapId] = 0;

        try
        {
            var lazyMap = _maps.GetOrAdd(mapId, id => new LazyMap(id));
            await lazyMap.LoadAsync();
            Log.Information("Preloaded map {MapId}", mapId);
        }
        catch (Exception ex)
        {
            Log.Error(ex, "Failed to preload map {MapId}", mapId);
            _preloadedMaps.TryRemove(mapId, out _);
        }
    }

    /// <summary>
    /// Preloads multiple maps in parallel.
    /// </summary>
    /// <param name="mapIds">The map IDs to preload.</param>
    /// <param name="maxConcurrency">Maximum number of concurrent loads.</param>
    /// <returns>A task representing all preload operations.</returns>
    public async Task PreloadManyAsync(IEnumerable<ushort> mapIds, int maxConcurrency = 4)
    {
        using var semaphore = new SemaphoreSlim(maxConcurrency, maxConcurrency);
        var tasks = new List<Task>();

        foreach (var mapId in mapIds)
        {
            tasks.Add(PreloadWithSemaphoreAsync(mapId, semaphore));
        }

        await Task.WhenAll(tasks);
    }

    private async Task PreloadWithSemaphoreAsync(ushort mapId, SemaphoreSlim semaphore)
    {
        await semaphore.WaitAsync();
        try
        {
            await PreloadAsync(mapId);
        }
        finally
        {
            semaphore.Release();
        }
    }

    /// <summary>
    /// Checks for maps that can be unloaded (no players for a while).
    /// </summary>
    private void CheckForUnloadableMaps()
    {
        if (_disposed) return;

        try
        {
            foreach (var kvp in _maps)
            {
                var lazyMap = kvp.Value;
                if (lazyMap.IsLoaded && lazyMap.CanUnload(_unloadDelay))
                {
                    // Don't unload preloaded maps
                    if (_preloadedMaps.ContainsKey(kvp.Key))
                        continue;

                    // Don't unload maps with active tournaments or special events
                    if (IsSpecialMap(kvp.Key))
                        continue;

                    lazyMap.Unload();
                    Log.Information("Unloaded idle map {MapId}", kvp.Key);
                }
            }
        }
        catch (Exception ex)
        {
            Log.Error(ex, "Error checking for unloadable maps");
        }
    }

    private static bool IsSpecialMap(ushort mapId)
    {
        // Don't unload tournament maps, guild war maps, etc.
        return mapId == 700 || // Arena
               mapId == 1005 || // Guild War
               mapId == 10022 || // Team Arena
               mapId == 10023 || // Elite PK
               (mapId >= 1712 && mapId <= 1720); // Dynamic house maps
    }

    /// <summary>
    /// Notifies the manager that a player entered a map.
    /// </summary>
    public void OnPlayerEnter(ushort mapId)
    {
        if (_maps.TryGetValue(mapId, out var lazyMap))
        {
            lazyMap.OnPlayerEnter();
        }
    }

    /// <summary>
    /// Notifies the manager that a player left a map.
    /// </summary>
    public void OnPlayerLeave(ushort mapId)
    {
        if (_maps.TryGetValue(mapId, out var lazyMap))
        {
            lazyMap.OnPlayerLeave();
        }
    }

    /// <summary>
    /// Gets statistics about map loading.
    /// </summary>
    public MapManagerStats GetStats()
    {
        var loaded = 0;
        var unloaded = 0;
        var totalPlayers = 0;

        foreach (var kvp in _maps)
        {
            if (kvp.Value.IsLoaded)
            {
                loaded++;
                totalPlayers += kvp.Value.PlayerCount;
            }
            else
            {
                unloaded++;
            }
        }

        return new MapManagerStats(loaded, unloaded, totalPlayers, _preloadedMaps.Count);
    }

    public void Dispose()
    {
        if (_disposed) return;
        _disposed = true;

        _unloadSubscription?.Dispose();

        foreach (var kvp in _maps)
        {
            kvp.Value.Dispose();
        }

        _maps.Clear();
        _preloadedMaps.Clear();
    }
}

/// <summary>
/// Represents a lazily-loaded map that loads its data on demand.
/// </summary>
public sealed class LazyMap : IDisposable
{
    private readonly ushort _mapId;
    private readonly object _loadLock = new();
    private Map? _map;
    private bool _loaded;
    private bool _loading;
    private DateTime _lastPlayerLeave = DateTime.MinValue;
    private int _playerCount;
    private bool _disposed;

    /// <summary>
    /// Gets whether this map is currently loaded.
    /// </summary>
    public bool IsLoaded => _loaded;

    /// <summary>
    /// Gets the current player count on this map.
    /// </summary>
    public int PlayerCount => _playerCount;

    public LazyMap(ushort mapId)
    {
        _mapId = mapId;
    }

    /// <summary>
    /// Gets the map, loading it if necessary.
    /// </summary>
    /// <returns>The loaded map, or null if loading failed.</returns>
    public Map? GetOrLoad()
    {
        if (_loaded && _map != null)
            return _map;

        lock (_loadLock)
        {
            if (_loaded && _map != null)
                return _map;

            if (_loading)
            {
                // Another thread is loading, wait for it
                Monitor.Wait(_loadLock, TimeSpan.FromSeconds(30));
                return _map;
            }

            _loading = true;

            try
            {
                _map = LoadMapInternal();
                _loaded = _map != null;
                return _map;
            }
            finally
            {
                _loading = false;
                Monitor.PulseAll(_loadLock);
            }
        }
    }

    /// <summary>
    /// Gets the map if already loaded, without triggering a load.
    /// </summary>
    public Map? GetIfLoaded()
    {
        return _loaded ? _map : null;
    }

    /// <summary>
    /// Loads the map asynchronously using ThreadingController.
    /// </summary>
    public async Task<Map?> LoadAsync()
    {
        if (_loaded && _map != null)
            return _map;

        // Use ThreadingController for async map loading
        Map? result = null;
        await ThreadingController.EnqueueMapTaskAsync(_mapId, async ct =>
        {
            result = GetOrLoad();
        });
        return result;
    }

    /// <summary>
    /// Checks if this map can be unloaded based on the unload delay.
    /// </summary>
    public bool CanUnload(TimeSpan unloadDelay)
    {
        if (!_loaded || _playerCount > 0)
            return false;

        return DateTime.UtcNow - _lastPlayerLeave >= unloadDelay;
    }

    /// <summary>
    /// Unloads the map to free memory.
    /// </summary>
    public void Unload()
    {
        if (!_loaded || _map == null)
            return;

        lock (_loadLock)
        {
            if (!_loaded || _map == null)
                return;

            // Remove from Kernel.Maps
            Kernel.Maps.Remove(_mapId);

            // Dispose map resources if needed
            _map = null;
            _loaded = false;

            Log.Debug("Unloaded map {MapId}", _mapId);
        }
    }

    /// <summary>
    /// Notifies that a player entered this map.
    /// </summary>
    public void OnPlayerEnter()
    {
        Interlocked.Increment(ref _playerCount);
    }

    /// <summary>
    /// Notifies that a player left this map.
    /// </summary>
    public void OnPlayerLeave()
    {
        if (Interlocked.Decrement(ref _playerCount) <= 0)
        {
            _playerCount = 0;
            _lastPlayerLeave = DateTime.UtcNow;
        }
    }

    private Map? LoadMapInternal()
    {
        try
        {
            // Check if map info exists
            if (!MapsTable.MapInformations.TryGetValue(_mapId, out var info))
            {
                Log.Warning("Map {MapId} not found in map definitions", _mapId);
                return null;
            }

            // Get the map path
            if (!DMaps.MapPaths.TryGetValue(info.BaseID, out var mapPath))
            {
                Log.Warning("Map path not found for base map {BaseId}", info.BaseID);
                return null;
            }

            var stopwatch = Stopwatch.StartNew();

            // Create the map (this loads floor data, NPCs, zones, portals, and monsters)
            var map = new Map(_mapId, info.BaseID, mapPath);

            stopwatch.Stop();

            Log.Information("Lazy-loaded map {MapId} (base: {BaseId}) in {ElapsedMs}ms with {MonsterCount} monsters",
                _mapId, info.BaseID, stopwatch.ElapsedMilliseconds, map.Entities.Count);

            return map;
        }
        catch (Exception ex)
        {
            Log.Error(ex, "Failed to lazy-load map {MapId}", _mapId);
            return null;
        }
    }

    public void Dispose()
    {
        if (_disposed) return;
        _disposed = true;
        Unload();
    }
}

/// <summary>
/// Statistics about the map manager.
/// </summary>
public readonly record struct MapManagerStats(
    int LoadedMaps,
    int UnloadedMaps,
    int TotalPlayers,
    int PreloadedMaps);
