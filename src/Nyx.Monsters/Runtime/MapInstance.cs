using System.Collections.Concurrent;
using System.Runtime.CompilerServices;
using Nyx.Monsters.Core;

namespace Nyx.Monsters.Runtime;

public enum MapState : byte
{
    Unloaded,
    Loading,
    Active,
    Unloading
}

/// <summary>
/// Runtime state for one map's monsters — created lazily when a player enters,
/// unloaded when the last player leaves.
/// </summary>
public sealed class MapInstance : IPooledObject
{
    private readonly ConcurrentDictionary<uint, MonsterState> _monsters = new();
    // Heap-free respawn queue keyed by due-tick.
    private readonly PriorityQueue<RespawnEntry, long> _respawns = new();

    public ushort MapId { get; private set; }
    public MapTemplate Template { get; private set; }
    public MapState State { get; private set; }
    private int _playerCount;
    public int PlayerCount => _playerCount;

    public void Initialize(MapTemplate template)
    {
        MapId = template.MapId;
        Template = template;
        State = MapState.Unloaded;
        _playerCount = 0;
        _monsters.Clear();
        _respawns.Clear();
    }

    public void MarkLoading() => State = MapState.Loading;
    public void MarkActive() => State = MapState.Active;
    public void MarkUnloading() => State = MapState.Unloading;
    public void MarkUnloaded() => State = MapState.Unloaded;

    public void PlayerEntered() => Interlocked.Increment(ref _playerCount);
    public void PlayerLeft() => Interlocked.Decrement(ref _playerCount);

    public void AddMonster(MonsterState m) => _monsters[m.InstanceId] = m;
    public bool RemoveMonster(uint id) => _monsters.TryRemove(id, out _);
    public bool TryGetMonster(uint id, out MonsterState m) => _monsters.TryGetValue(id, out m!);
    public IEnumerable<MonsterState> Monsters => _monsters.Values;
    public int MonsterCount => _monsters.Count;

    public void EnqueueRespawn(SpawnZone zone, long dueTick) =>
        _respawns.Enqueue(new RespawnEntry(zone), dueTick);

    /// <summary>Dequeue all respawns whose due-time has passed.</summary>
    public List<RespawnEntry> DequeueDueRespawns(long nowTicks)
    {
        var due = new List<RespawnEntry>();
        while (_respawns.TryPeek(out var entry, out var tick) && tick <= nowTicks)
        {
            _respawns.Dequeue();
            due.Add(entry);
        }
        return due;
    }

    public void Reset()
    {
        MapId = 0;
        Template = default;
        State = MapState.Unloaded;
        _playerCount = 0;
        _monsters.Clear();
        _respawns.Clear();
    }
}

/// <summary>A pending respawn, scheduled from a <see cref="SpawnZone"/>.</summary>
public readonly record struct RespawnEntry(SpawnZone Zone);