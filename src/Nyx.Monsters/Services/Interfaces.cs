using Nyx.Monsters.Core;
using Nyx.Monsters.Runtime;

namespace Nyx.Monsters.Services;

/// <summary>
/// Loads monster &amp; map templates from PostgreSQL. Implemented by the server
/// using <c>NyxSqlCommand</c>/<c>MySqlReader</c> — the library stays DB-agnostic.
/// </summary>
public interface IMonsterRepository
{
    /// <summary>Load all monster templates from <c>monsterinfos</c> into memory.</summary>
    ValueTask LoadAllAsync(CancellationToken ct = default);

    /// <summary>Synchronous access to all cached templates (after <see cref="LoadAllAsync"/>).</summary>
    IEnumerable<MonsterTemplate> AllTemplates();

    /// <summary>Load spawn zones for a map from <c>monsterspawns</c>.</summary>
    ValueTask<MapTemplate> LoadMapTemplateAsync(ushort mapId, CancellationToken ct = default);

    bool TryGetTemplate(uint monsterId, out MonsterTemplate template);
}

/// <summary>
/// Read-only view of the live world (players, maps, walkability).
/// Abstracts the static <c>Kernel.GamePool</c>/<c>Kernel.Maps</c> so the monster
/// system is testable and not coupled to <c>Nyx.Server</c>.
/// </summary>
public interface IWorldView
{
    ReadOnlySpan<uint> GetPlayersInRange(Position center, ushort range, ushort mapId);
    bool TryGetPlayer(uint playerId, out IPlayerEntity player);
    bool IsWalkable(ushort mapId, Position pos);
    Position FindWalkableNear(ushort mapId, Position pos, ushort maxRadius);
}

/// <summary>Minimal player contract the monster system needs.</summary>
public interface IPlayerEntity
{
    uint Uid { get; }
    byte Level { get; }
    Position Position { get; }
    ushort MapId { get; }
    void Send(byte[] packet);
    void AwardExperience(ulong exp);
}

/// <summary>Monster behavior — stateless, pure functions over monster+world state.</summary>
public interface IMonsterAIService
{
    AIResult Update(MonsterState monster, IWorldView world, long nowTicks);
}

/// <summary>Combat math — damage application &amp; death detection.</summary>
public interface IMonsterCombatService
{
    CombatResult CalculateAttack(MonsterState attacker, IPlayerEntity target);
    void ApplyDamage(MonsterState monster, uint damage, uint attackerId);
}

/// <summary>Drops — derived from <c>monsterinfos.ownitem*</c> columns.</summary>
public interface IMonsterDropService
{
    IEnumerable<DropResult> GenerateDrops(MonsterState monster, IRandomProvider rng);
}

/// <summary>EXP distribution based on damage contribution.</summary>
public interface IMonsterExpService
{
    IEnumerable<ExpShare> CalculateShares(MonsterState monster);
    void Award(IPlayerEntity player, ulong exp);
}

/// <summary>Network broadcast — implemented by the server with real packets.</summary>
public interface IMonsterNetworkService
{
    void BroadcastSpawn(MonsterState monster);
    void BroadcastMove(MonsterState monster, Position from);
    void BroadcastAttack(MonsterState monster, uint targetId, CombatResult result);
    void BroadcastDeath(MonsterState monster);
    void BroadcastDespawn(MonsterState monster);
}

/// <summary>Quest/event hooks — implemented by the server's quest system.</summary>
public interface IMonsterQuestService
{
    void OnMonsterKilled(MonsterState monster, IPlayerEntity killer);
}