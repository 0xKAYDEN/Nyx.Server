using System.Collections.Concurrent;
using System.Runtime.CompilerServices;
using Microsoft.Extensions.Logging;
using Nyx.Monsters.Core;
using Nyx.Monsters.Runtime;
using Nyx.Monsters.Services;

namespace Nyx.Monsters;

/// <summary>
/// Orchestrates the monster lifecycle: lazy map loading, AI ticks, combat,
/// drops, EXP, death handling. All dependencies are injected — no static state.
/// </summary>
public sealed class MonsterManager
{
    private readonly IMonsterRepository _repo;
    private readonly IWorldView _world;
    private readonly IRandomProvider _rng;
    private readonly IMonsterAIService _ai;
    private readonly IMonsterCombatService _combat;
    private readonly IMonsterDropService _drops;
    private readonly IMonsterExpService _exp;
    private readonly IMonsterNetworkService _network;
    private readonly IMonsterQuestService _quests;
    private readonly ILogger<MonsterManager> _logger;
    private readonly ObjectPool<MonsterState> _monsterPool;
    private readonly ObjectPool<MapInstance> _mapPool;

    private readonly ConcurrentDictionary<ushort, MapInstance> _maps = new();
    private uint _nextInstanceId = 1_000_000; // monster UIDs above player UIDs

    public MonsterManager(
        IMonsterRepository repo,
        IWorldView world,
        IRandomProvider rng,
        IMonsterAIService ai,
        IMonsterCombatService combat,
        IMonsterDropService drops,
        IMonsterExpService exp,
        IMonsterNetworkService network,
        IMonsterQuestService quests,
        ObjectPool<MonsterState> monsterPool,
        ObjectPool<MapInstance> mapPool,
        ILogger<MonsterManager>? logger = null)
    {
        _repo = repo;
        _world = world;
        _rng = rng;
        _ai = ai;
        _combat = combat;
        _drops = drops;
        _exp = exp;
        _network = network;
        _quests = quests;
        _monsterPool = monsterPool;
        _mapPool = mapPool;
        _logger = logger;
    }

    /// <summary>Pre-load all monster templates into the repository cache.</summary>
    public async Task InitializeAsync(CancellationToken ct = default)
        => await _repo.LoadAllAsync(ct);

    /// <summary>Get (creating+spawning if needed) the runtime state for a map.</summary>
    public async Task<MapInstance> LoadMapAsync(ushort mapId, CancellationToken ct = default)
    {
        if (_maps.TryGetValue(mapId, out var existing) && existing.State == MapState.Active)
            return existing;

        var template = await _repo.LoadMapTemplateAsync(mapId, ct);
        var map = _mapPool.Rent();
        map.Initialize(template);
        map.MarkLoading();
        _maps[mapId] = map;

        // Spawn every zone immediately — lazy at the map granularity.
        foreach (var zone in template.SpawnZones)
            for (int i = 0; i < zone.Count; i++)
                SpawnOne(map, zone);

        map.MarkActive();
        return map;
    }

    /// <summary>Unload a map's monsters when the last player leaves.</summary>
    public void UnloadMap(ushort mapId)
    {
        if (!_maps.TryRemove(mapId, out var map)) return;
        map.MarkUnloading();
        foreach (var m in map.Monsters)
        {
            _network.BroadcastDespawn(m);
            _monsterPool.Return(m);
        }
        map.Reset();
        _mapPool.Return(map);
    }

    public bool IsMapLoaded(ushort mapId)
        => _maps.TryGetValue(mapId, out var m) && m.State == MapState.Active;

    /// <summary>Main tick — call from a single timer thread (e.g. 20 TPS).</summary>
    public void Update(TimeSpan delta)
    {
        long now = Environment.TickCount64;

        foreach (var (mapId, map) in _maps)
        {
            if (map.State != MapState.Active) continue;

            // Unload empty maps.
            if (map.PlayerCount == 0)
            {
                UnloadMap(mapId);
                continue;
            }

            // AI for every monster.
            foreach (var monster in map.Monsters)
            {
                if (monster.IsDead) continue;

                var result = _ai.Update(monster, _world, now);

                if (result.DidMove)
                {
                    var from = monster.Position;
                    monster.Position = result.NewPosition;
                    _network.BroadcastMove(monster, from);
                }

                if (result.DidAttack && result.TargetId != 0
                    && _world.TryGetPlayer(result.TargetId, out var target))
                {
                    var combat = _combat.CalculateAttack(monster, target);
                    _network.BroadcastAttack(monster, result.TargetId, combat);
                }
            }

            // Process due respawns.
            foreach (var entry in map.DequeueDueRespawns(now))
                SpawnOne(map, entry.Zone);
        }
    }

    /// <summary>Handle a monster's death — drops, EXP, quests, despawn.</summary>
    public void HandleDeath(MonsterState monster, IPlayerEntity killer)
    {
        foreach (var share in _exp.CalculateShares(monster))
            if (_world.TryGetPlayer(share.PlayerId, out var p))
                _exp.Award(p, share.Experience);

        foreach (var drop in _drops.GenerateDrops(monster, _rng))
            _network.BroadcastSpawn(monster);

        _quests.OnMonsterKilled(monster, killer);
        _network.BroadcastDeath(monster);
    }

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    private void SpawnOne(MapInstance map, SpawnZone zone)
    {
        if (!_repo.TryGetTemplate(zone.MonsterId, out var template)) return;

        var pos = zone.Bounds.RandomPoint(_rng);
        if (!_world.IsWalkable(map.MapId, pos))
            pos = _world.FindWalkableNear(map.MapId, pos, 5);

        var instance = _monsterPool.Rent();
        instance.Initialize(template, pos, NextInstanceId(), map.MapId);
        map.AddMonster(instance);
        _network.BroadcastSpawn(instance);

        if (zone.RespawnSeconds > 0)
            map.EnqueueRespawn(zone, Environment.TickCount64 + zone.RespawnSeconds * 1000);
    }

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    private uint NextInstanceId() => Interlocked.Increment(ref _nextInstanceId);
}
