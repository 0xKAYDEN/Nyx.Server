using Nyx.Combat.Configuration;
using Nyx.Combat.Model;

namespace Nyx.Combat.Cooldowns;

/// <summary>
/// Policy layer over <see cref="CooldownTable"/>: decides <i>how long</i> a given
/// action locks out, where the table only records <i>that</i> it does.
/// </summary>
/// <remarks>
/// <para>
/// Two separate concerns, deliberately kept in two types. The table is a
/// concurrency primitive and should stay dumb enough to reason about; the duration
/// of a Fast Blade versus a Thunder is game policy that will be retuned by an
/// operator who should never have to touch a striped lock.
/// </para>
/// <para>
/// Basic attacks share reserved pseudo-skill slots so a melee floor and a ranged
/// floor cannot be dodged by alternating between them. Real skill ids come from
/// <c>cq_magictype.type</c>, which is a <see cref="ushort"/> populated well below
/// the reserved range.
/// </para>
/// </remarks>
public sealed class CombatCooldownManager
{
    /// <summary>
    /// Pseudo-skill ids for basic attacks. Chosen at the top of the
    /// <see cref="ushort"/> range, far above any real <c>cq_magictype.type</c>.
    /// </summary>
    private const ushort MeleeSlot = 0xFFF0;
    private const ushort RangedSlot = 0xFFF1;
    private const ushort MagicSlot = 0xFFF2;

    private readonly CooldownTable _table;
    private readonly CombatOptions _options;

    public CombatCooldownManager(CooldownTable table, CombatOptions options)
    {
        _table = table ?? throw new ArgumentNullException(nameof(table));
        _options = options ?? throw new ArgumentNullException(nameof(options));
    }

    /// <summary>The underlying table, for the validator and for administrative resets.</summary>
    public CooldownTable Table => _table;

    /// <summary>
    /// How long a skill locks out. The database wins; the configured default only
    /// covers rows that declare nothing.
    /// </summary>
    /// <remarks>
    /// <c>coldtime</c> is the skill's own recharge; <c>atk_interval</c> is the gap
    /// between ticks of a channelled skill. A row that sets only the latter is
    /// still rate-limited by it, which is why it is the second choice rather than
    /// being ignored.
    /// </remarks>
    public uint DurationFor(SkillDefinition skill)
    {
        ArgumentNullException.ThrowIfNull(skill);

        if (skill.CooldownMs > 0) return skill.CooldownMs;
        if (skill.IntervalMs > 0) return skill.IntervalMs;
        return _options.DefaultSkillCooldownMs;
    }

    /// <summary>Floor between two basic attacks of the given kind.</summary>
    public uint DurationFor(AttackKind kind) => kind switch
    {
        AttackKind.Ranged => _options.RangedCooldownMs,
        AttackKind.Magic => _options.MagicCooldownMs,
        _ => _options.MeleeCooldownMs,
    };

    /// <summary>
    /// Atomically checks and starts a skill's cooldown. False means the caster was
    /// still locked out and the cast must be dropped.
    /// </summary>
    public bool TryUseSkill(uint entityId, SkillDefinition skill, long nowMs)
        => _table.TryConsume(entityId, skill.Type, nowMs, DurationFor(skill));

    /// <summary>
    /// Atomically checks and starts a basic-attack floor. Always succeeds when
    /// <see cref="CombatOptions.EnforceBasicAttackCooldowns"/> is off.
    /// </summary>
    public bool TryUseBasicAttack(uint entityId, AttackKind kind, long nowMs)
    {
        if (!_options.EnforceBasicAttackCooldowns) return true;
        return _table.TryConsume(entityId, SlotFor(kind), nowMs, DurationFor(kind));
    }

    /// <summary>Milliseconds left on a skill's cooldown, 0 when it is ready.</summary>
    public long RemainingMs(uint entityId, ushort skillType, long nowMs)
        => _table.RemainingMs(entityId, skillType, nowMs);

    /// <summary>
    /// Drops every cooldown an entity holds. Call it on logout, on death and on
    /// teleport between maps, otherwise the table slowly fills with entries for
    /// characters that no longer exist.
    /// </summary>
    public void Reset(uint entityId) => _table.ClearEntity(entityId);

    private static ushort SlotFor(AttackKind kind) => kind switch
    {
        AttackKind.Ranged => RangedSlot,
        AttackKind.Magic => MagicSlot,
        _ => MeleeSlot,
    };
}
