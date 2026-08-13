using Microsoft.Extensions.Logging;
using Nyx.Monsters.Core;
using Nyx.Monsters.Runtime;
using Nyx.Monsters.Services;

namespace Nyx.Server.Game.Monsters;

/// <summary>
/// Bridge from <see cref="IMonsterNetworkService"/> to the legacy packet system.
///
/// NOTE: This is the integration seam. The full migration (Phase 4 of the
/// refactoring plan) will translate <see cref="MonsterState"/> ↔
/// <c>Game.Entity</c> and broadcast the real spawn/move/attack/death packets
/// via the existing <c>Entity.SendSpawn</c>/<c>Map.SendScreen</c> paths.
/// Until then these methods are no-ops that log at debug level so the system
/// is wired end-to-end without breaking the live world.
/// </summary>
public sealed class ServerMonsterNetworkService : IMonsterNetworkService
{
    private readonly ILogger<ServerMonsterNetworkService> _logger;

    public ServerMonsterNetworkService(ILogger<ServerMonsterNetworkService> logger)
        => _logger = logger;

    public void BroadcastSpawn(MonsterState monster)
        => _logger.LogDebug("Spawn monster {Id} ({Name}) at ({X},{Y}) map {Map}",
            monster.InstanceId, monster.Template.Name,
            monster.Position.X, monster.Position.Y, monster.MapId);

    public void BroadcastMove(MonsterState monster, Position from)
        => _logger.LogDebug("Move monster {Id} ({X},{Y})->({X2},{Y2})",
            monster.InstanceId, from.X, from.Y,
            monster.Position.X, monster.Position.Y);

    public void BroadcastAttack(MonsterState monster, uint targetId, CombatResult result)
        => _logger.LogDebug("Attack monster {Id} -> player {Target} dmg {Dmg}{Crit}",
            monster.InstanceId, targetId, result.Damage,
            result.Critical ? " (crit)" : "");

    public void BroadcastDeath(MonsterState monster)
        => _logger.LogDebug("Death monster {Id}", monster.InstanceId);

    public void BroadcastDespawn(MonsterState monster)
        => _logger.LogDebug("Despawn monster {Id}", monster.InstanceId);
}

/// <summary>
/// Quest/event hook shim. Phase 5 of the refactoring plan wires this to the
/// real quest engine (<c>TowerOfMystery</c>, <c>BloodshedSea</c>,
/// <c>SnowBanshee</c>, etc. that lived inside the old
/// <c>MonsterInformation.Drop</c>).
/// </summary>
public sealed class ServerMonsterQuestService : IMonsterQuestService
{
    private readonly ILogger<ServerMonsterQuestService> _logger;

    public ServerMonsterQuestService(ILogger<ServerMonsterQuestService> logger)
        => _logger = logger;

    public void OnMonsterKilled(MonsterState monster, IPlayerEntity killer)
        => _logger.LogDebug("Quest: monster {Name} killed by player {Uid}",
            monster.Template.Name, killer.Uid);
}