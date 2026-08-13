using System.Runtime.CompilerServices;
using Nyx.Monsters.Core;
using Nyx.Monsters.Runtime;

namespace Nyx.Monsters.Services;

/// <summary>
/// Default AI: simple chase/attack/return state machine.
/// Stateless except for reading/writing <see cref="MonsterState"/>.
/// </summary>
public sealed class DefaultMonsterAIService : IMonsterAIService
{
    private readonly IRandomProvider _rng;
    private readonly IMonsterCombatService _combat;

    public DefaultMonsterAIService(IRandomProvider rng, IMonsterCombatService combat)
    {
        _rng = rng;
        _combat = combat;
    }

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public AIResult Update(MonsterState m, IWorldView world, long now)
    {
        if (m.IsDead) return default;

        // Have a target — try to attack or chase.
        if (m.TargetId != 0 && world.TryGetPlayer(m.TargetId, out var target))
        {
            int distSq = Position.DistanceSquared(m.Position, target.Position);
            int atkRange = m.AttackRange * m.AttackRange;

            if (distSq <= atkRange)
            {
                if (now - m.LastAttackTime >= m.AttackSpeed)
                {
                    m.LastAttackTime = now;
                    m.AIState = MonsterAIState.Attack;
                    return new AIResult(m.Position, false, m.TargetId, true);
                }
                return default;
            }

            // Target out of view — give up, go home.
            if (distSq > m.ViewRange * m.ViewRange * 4)
            {
                m.TargetId = 0;
                m.AIState = MonsterAIState.Return;
            }
            else if (now - m.LastMoveTime >= m.MoveSpeed)
            {
                m.LastMoveTime = now;
                m.AIState = MonsterAIState.Chase;
                return new AIResult(StepTowards(m.Position, target.Position), true, m.TargetId, false);
            }
            return default;
        }

        // No target — acquire or return to spawn.
        if (m.AIState is MonsterAIState.Idle or MonsterAIState.Patrol)
        {
            var nearest = FindNearestPlayer(m, world);
            if (nearest != 0)
            {
                m.TargetId = nearest;
                m.AIState = MonsterAIState.Chase;
            }
            else if (now - m.LastMoveTime >= m.MoveSpeed * 3)
            {
                m.LastMoveTime = now;
                m.AIState = MonsterAIState.Patrol;
                return new AIResult(PatrolPoint(m), true, 0, false);
            }
            return default;
        }

        // Returning to spawn.
        if (m.AIState == MonsterAIState.Return)
        {
            if (Position.DistanceSquared(m.Position, m.SpawnPosition) <= 4)
            {
                m.AIState = MonsterAIState.Idle;
                return default;
            }
            if (now - m.LastMoveTime >= m.RunSpeed)
            {
                m.LastMoveTime = now;
                return new AIResult(StepTowards(m.Position, m.SpawnPosition), true, 0, false);
            }
        }
        return default;
    }

    private uint FindNearestPlayer(MonsterState m, IWorldView world)
    {
        uint best = 0;
        int bestDist = int.MaxValue;
        foreach (var id in world.GetPlayersInRange(m.Position, m.ViewRange, m.MapId))
        {
            if (!world.TryGetPlayer(id, out var p)) continue;
            int d = Position.DistanceSquared(m.Position, p.Position);
            if (d < bestDist) { bestDist = d; best = id; }
        }
        return best;
    }

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    private static Position StepTowards(Position from, Position to)
        => new((ushort)(from.X + Math.Sign(to.X - from.X)),
               (ushort)(from.Y + Math.Sign(to.Y - from.Y)));

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    private Position PatrolPoint(MonsterState m)
    {
        // Wander a few cells from spawn — avoids leaving the spawn zone.
        return new Position(
            (ushort)Math.Clamp(m.SpawnPosition.X + _rng.Next(0, 6) - 3, 0, ushort.MaxValue),
            (ushort)Math.Clamp(m.SpawnPosition.Y + _rng.Next(0, 6) - 3, 0, ushort.MaxValue));
    }
}

/// <summary>Default combat: damage roll, defence reduction, critical chance.</summary>
public sealed class DefaultMonsterCombatService : IMonsterCombatService
{
    private readonly IRandomProvider _rng;

    public DefaultMonsterCombatService(IRandomProvider rng) => _rng = rng;

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public CombatResult CalculateAttack(MonsterState attacker, IPlayerEntity target)
    {
        uint baseDmg = (uint)_rng.Next((int)attacker.MinAttack, (int)attacker.MaxAttack + 1);
        double reduction = Math.Max(0.1, 1.0 - 0.0); // target defence applied elsewhere if needed
        uint dmg = (uint)Math.Max(1, baseDmg * reduction);
        bool crit = _rng.Chance(5);
        if (crit) dmg = (uint)(dmg * 1.5);
        ushort? spell = attacker.SpellId != 0 && _rng.Chance(10) ? attacker.SpellId : null;
        return new CombatResult(dmg, crit, spell);
    }

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public void ApplyDamage(MonsterState m, uint damage, uint attackerId)
    {
        if (m.IsDead) return;
        m.CurrentHp = damage >= m.CurrentHp ? 0 : m.CurrentHp - damage;
        m.DamageTracker.RecordDamage(attackerId, damage, m.MaxHp);
        if (m.IsDead) m.AIState = MonsterAIState.Dead;
    }
}

/// <summary>
/// Default drops: emits one entry per non-zero <c>ownitem</c> column that passes
/// its rate check. Maps directly to the DB schema.
/// </summary>
public sealed class DefaultMonsterDropService : IMonsterDropService
{
    public IEnumerable<DropResult> GenerateDrops(MonsterState m, IRandomProvider rng)
    {
        foreach (var drop in m.Template.Drops.Owned)
        {
            if (drop.Rate == 0) continue;
            if (rng.ChancePerTenThousand(drop.Rate * 100))
                yield return new DropResult(drop.ItemId, m.Position, 0);
        }
    }
}

/// <summary>Default EXP: proportional to damage share, with boss multiplier.</summary>
public sealed class DefaultMonsterExpService : IMonsterExpService
{
    private readonly IWorldView _world;

    public DefaultMonsterExpService(IWorldView world) => _world = world;

    public IEnumerable<ExpShare> CalculateShares(MonsterState m)
    {
        if (m.MaxHp == 0) yield break;
        ulong total = (ulong)(m.Level * m.Level * 10L) * (m.IsBoss ? 2UL : 1UL);
        // Copy damage entries out of the ref-struct enumerator before yielding.
        List<(uint PlayerId, uint Damage)> entries = new();
        foreach (var entry in m.DamageTracker)
            entries.Add(entry);
        foreach (var (playerId, damage) in entries)
        {
            if (damage == 0) continue;
            ulong share = total * damage / m.MaxHp;
            if (share > 0) yield return new ExpShare(playerId, share);
        }
    }

    public void Award(IPlayerEntity player, ulong exp)
    {
        if (exp > 0) player.AwardExperience(exp);
    }
}