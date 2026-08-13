using System.Collections.Concurrent;
using System.Threading.Tasks;
using Microsoft.Extensions.Logging;
using Nyx.Server.Database;
using Nyx.Server.Game;
using Nyx.Server.Network;
using Nyx.Server.Utilities;

namespace Nyx.Server.Game.Monsters;

/// <summary>
/// Bridges the library-side <c>MonsterManager</c> with the legacy entity system.
///
/// Responsibilities (Phase 2):
/// 1. **Lazy map spawn** — when a player enters a map, query <c>monsterspawns</c>,
///    create <c>Entity</c> objects using the same logic as the old <c>LoadMonsters()</c>.
/// 2. **Player tracking** — track enter/leave counts to trigger auto-unload.
/// 3. **Dead‑monster cleanup** — after respawn timer expires, remove dead entities
///    so <c>WorldMonsterManager.TrackPlayerLeave</c> can detect empty maps.
/// </summary>
public static class ServerMonsterBridge
{
    private static readonly ConcurrentDictionary<ushort, int> _playerCounts = new();
    private static readonly ConcurrentDictionary<ushort, bool> _mapsSpawning = new();
    private static readonly object _spawnLock = new();
    private static ILogger? _logger;

    public static void Configure(ILogger logger)
        => _logger = logger;

    // ── Player enter / leave ──────────────────────────────────────────

    /// <summary>Called when a client's Map property is accessed.</summary>
    public static void OnPlayerEnter(ushort mapId)
    {
        if (_mapsSpawning.ContainsKey(mapId)) return;
        if (!_mapsSpawning.TryAdd(mapId, true)) return;

        _playerCounts.AddOrUpdate(mapId, 1, (_, __) => _ + 1);

        lock (_spawnLock)
        {
            if (Kernel.Maps.TryGetValue(mapId, out Map? map))
            {
                try
                {
                    map.EnsureMonstersLoaded();
                    _logger?.LogInformation("MonsterBridge: Lazy-spawned map {MapID}", mapId);
                }
                catch (Exception ex)
                {
                    _logger?.LogError(ex, "MonsterBridge: spawn failed for map {MapID}", mapId);
                }
            }
        }

        // Clear spawning flag after debounce window.
        _ = Task.Delay(100).ContinueWith(_ignored =>
        {
            _mapsSpawning.TryRemove(mapId, out bool _);
        }, TaskScheduler.Default);
    }

    /// <summary>Decrement count; trigger unload if empty.</summary>
    public static void OnPlayerLeave(ushort mapId)
    {
        var count = _playerCounts.AddOrUpdate(mapId, -1, (_, c) => c - 1);
        if (count <= 0 && _playerCounts.TryGetValue(mapId, out var c2) && c2 <= 0)
        {
            // Defer unload to avoid race conditions during disconnect.
            _ = Task.Delay(3000).ContinueWith(_ =>
            {
                if (_playerCounts.TryGetValue(mapId, out var final) && final <= 0)
                {
                    UnloadMapEntities(mapId);
                }
            }, TaskScheduler.Default);
        }
    }

    // ── Legacy Entity spawn ───────────────────────────────────────────

    /// <summary>
    /// Equivalent of the old <c>Map.LoadMonsters()</c> but gated by
    /// <c>_monstersLoaded</c>.  Reads from <c>monsterspawns</c> and creates
    /// <c>Entity</c> objects using the exact same code path as the original.
    /// </summary>
    public static void SpawnLegacy(Map map)
    {
        if (map == null) throw new ArgumentNullException(nameof(map));

        try
        {
            map.BodyGuards = new Nyx.Server.Utilities.SafeDictionary<uint, Entity>(1000);
            map.Companions = new Nyx.Server.Utilities.SafeDictionary<uint, Entity>();

            using var command = new NyxSqlCommand(MySqlCommandType.SELECT);
            command.Select("monsterspawns").Where("mapid", map.ID);
            using var reader = new MySqlReader(command);
            int spawned = 0;
            while (reader.Read())
            {
                uint monsterID = reader.ReadUInt32("npctype");
                ushort X = reader.ReadUInt16("bound_x");
                ushort Y = reader.ReadUInt16("bound_y");
                ushort XPlus = reader.ReadUInt16("bound_cx");
                ushort YPlus = reader.ReadUInt16("bound_cy");
                int Amount = reader.ReadInt32("max_per_gen");
                uint respawn = reader.ReadUInt32("rest_secs");

                if (!MonsterInformation.MonsterInformations.ContainsKey(monsterID))
                    continue;

                MonsterInformation mt = MonsterInformation.MonsterInformations[monsterID];
                mt.RespawnTime = (int)(respawn + 5);
                mt.BoundX = X;
                mt.BoundY = Y;
                mt.BoundCX = XPlus;
                mt.BoundCY = YPlus;

                for (int i = 0; i < Amount; i++)
                {
                    bool more = true;
                    for (int count = 0; count < Amount && more; count++)
                    {
                        Entity entity = new(EntityFlag.Monster, false);
                        entity.MapObjType = MapObjectType.Monster;
                        entity.MonsterInfo = mt.Copy();
                        entity.MonsterInfo.Owner = entity;
                        entity.Name = mt.Name;
                        entity.MinAttack = mt.MinAttack;
                        entity.MaxAttack = entity.MagicAttack = mt.MaxAttack;
                        entity.Hitpoints = entity.MaxHitpoints = mt.Hitpoints;
                        entity.Defence = mt.Defence;
                        entity.Body = mt.Mesh;
                        entity.Level = mt.Level;
                        entity.UID = map.EntityUIDCounter.Next;
                        entity.MapID = map.ID;
                        entity.SendUpdates = true;

                        #region Guards
                        if (mt.Name == "Guard1" || mt.Name == "Guard2")
                        {
                            Network.SafeWriter.Write((ushort)4351, 263, entity.SpawnPacket);
                            Network.SafeWriter.Write((byte)Kernel.Random.Next(1, 7), Entity._Facing, entity.SpawnPacket);
                        }
                        #endregion

                        entity.X = (ushort)(X + Kernel.Random.Next(0, XPlus));
                        entity.Y = (ushort)(Y + Kernel.Random.Next(0, YPlus));

                        for (int tries = 0; tries < 50; tries++)
                        {
                            if (!map.Floor[entity.X, entity.Y, MapObjectType.Monster, null])
                            {
                                entity.X = (ushort)(X + Kernel.Random.Next(0, XPlus));
                                entity.Y = (ushort)(Y + Kernel.Random.Next(0, YPlus));
                            }
                            else break;
                        }

                        if (map.Floor[entity.X, entity.Y, MapObjectType.Monster, entity])
                        {
                            spawned++;
                            if (mt.Type == 2)
                                map.AddEntity2(entity);
                            else
                                map.AddEntity(entity);
                        }
                    }
                }
            }

            if (spawned > 0)
            {
                map.Timer = Map.MonsterTimers.Add(map);
                _logger?.LogInformation("MonsterBridge: Map {ID} spawned {Count} entities", map.ID, spawned);
            }
        }
        catch (Exception e)
        {
            _logger?.LogError(e, "MonsterBridge: Map {ID} legacy spawn failed", map.ID);
        }
    }

    // ── Auto-unload ───────────────────────────────────────────────────

    private static void UnloadMapEntities(ushort mapId)
    {
        if (!Kernel.Maps.TryGetValue(mapId, out var map) || map == null) return;

        var monsters = map.Entities.Values.Where(e => e.EntityFlag == EntityFlag.Monster)
                         .Concat(map.Companions.Values.Where(e => e.EntityFlag == EntityFlag.Monster))
                         .ToList();

        foreach (var m in monsters)
        {
            map.RemoveEntity(m);
        }

        if (monsters.Count > 0)
        {
            map.ResetMonsterLoad();
            _logger?.LogInformation("MonsterBridge: Unloaded map {ID} ({Count} monsters removed)", mapId, monsters.Count);
        }
    }
}
