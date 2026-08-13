using System.Collections.Immutable;
using System.Runtime.CompilerServices;

namespace Nyx.Monsters.Core;

/// <summary>Monster classification — mirrors the raw DB <c>monsterinfos.type</c> column.
/// Kept as <see cref="uint"/> because call sites do exact comparisons (e.g. <c>mt.Type == 2</c>).</summary>
public enum MonsterType : byte
{
    Normal = 1,
    Boss = 2,
    Guard = 3
}

/// <summary>
/// Immutable monster template loaded from the <c>monsterinfos</c> table.
/// Value type — stored by value in dictionaries, zero heap allocation per lookup.
/// </summary>
public readonly record struct MonsterTemplate
{
    public required uint Id { get; init; }
    public required string Name { get; init; }
    /// <summary>Raw <c>type</c> column from <c>monsterinfos</c> (not the enum — call sites compare numerically).</summary>
    public uint Type { get; init; }
    public ushort Mesh { get; init; }
    public byte Level { get; init; }
    public MonsterStats Stats { get; init; }
    public MonsterDrops Drops { get; init; }
}

/// <summary>Combat stats for a monster template.</summary>
public readonly record struct MonsterStats
{
    public uint MaxHitpoints { get; init; }
    public uint MinAttack { get; init; }
    public uint MaxAttack { get; init; }
    public ushort Defence { get; init; }
    public ushort ViewRange { get; init; }
    public ushort AttackRange { get; init; }
    public byte AttackType { get; init; }      // DB attack_user (3 = aggressive)
    public ushort SpellId { get; init; }       // DB magic_type
    public int MoveSpeed { get; init; }
    public int RunSpeed { get; init; }
    public int AttackSpeed { get; init; }
    public uint ExtraExperience { get; init; }
    public bool IsBoss { get; init; }
    /// <summary>True if the monster's name contains "Guard" — drives guard AI in Screen.cs.</summary>
    public bool IsGuard { get; init; }
}

/// <summary>
/// Drop configuration for a monster — directly maps to the three
/// <c>ownitem</c>/<c>ownitem2</c>/<c>ownitem3</c> columns in <c>monsterinfos</c>.
/// </summary>
public readonly record struct MonsterDrops
{
    public ImmutableArray<OwnedDrop> Owned { get; init; }

    public static MonsterDrops Empty => new()
    {
        Owned = ImmutableArray<OwnedDrop>.Empty
    };
}

public readonly record struct OwnedDrop(uint ItemId, uint Rate);

/// <summary>
/// 2D position as a value tuple — stack allocated, no boxing.
/// Implicitly converts to/from <c>(ushort, ushort)</c>.
/// </summary>
public readonly record struct Position(ushort X, ushort Y)
{
    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public static int DistanceSquared(Position a, Position b)
    {
        int dx = a.X - b.X;
        int dy = a.Y - b.Y;
        return dx * dx + dy * dy;
    }

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public static bool WithinRange(Position a, Position b, ushort range) =>
        DistanceSquared(a, b) <= (long)range * range;

    public static implicit operator (ushort X, ushort Y)(Position p) => (p.X, p.Y);
    public static implicit operator Position((ushort X, ushort Y) t) => new(t.X, t.Y);
}

/// <summary>Spawn rectangle — mirrors <c>monsterspawns</c> bound_x/y/cx/cy.</summary>
public readonly record struct Bounds(ushort X, ushort Y, ushort Width, ushort Height)
{
    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public readonly bool Contains(Position p) =>
        p.X >= X && p.X < X + Width && p.Y >= Y && p.Y < Y + Height;

    /// <summary>Random point inside the rectangle using the supplied RNG.</summary>
    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public readonly Position RandomPoint(IRandomProvider rng) => new(
        (ushort)(X + rng.Next(Width)),
        (ushort)(Y + rng.Next(Height)));
}

/// <summary>AI behavioral configuration (derived from attack_user/type columns).</summary>
public readonly record struct AISettings
{
    public bool Aggressive { get; init; }
    public ushort ChaseRange { get; init; }
    public ushort ReturnRange { get; init; }

    public AISettings()
    {
        ChaseRange = 20;
        ReturnRange = 30;
    }

    public static AISettings Default => new() { Aggressive = true };
}

/// <summary>Map template loaded from <c>monsterspawns</c> grouped by mapid.</summary>
public readonly record struct MapTemplate
{
    public required ushort MapId { get; init; }
    public ImmutableArray<SpawnZone> SpawnZones { get; init; }

    public static MapTemplate Empty(ushort mapId) => new()
    {
        MapId = mapId,
        SpawnZones = ImmutableArray<SpawnZone>.Empty
    };
}

/// <summary>One spawn zone — one row in <c>monsterspawns</c>.</summary>
public readonly record struct SpawnZone
{
    public required uint MonsterId { get; init; }   // npctype
    public required Bounds Bounds { get; init; }
    public required ushort Count { get; init; }       // max_per_gen
    public required int RespawnSeconds { get; init; } // rest_secs
}