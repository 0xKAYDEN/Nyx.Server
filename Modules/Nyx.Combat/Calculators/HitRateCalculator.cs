using Nyx.Combat.Abstractions;
using Nyx.Combat.Configuration;
using Nyx.Combat.Model;
using Nyx.Combat.Numerics;

namespace Nyx.Combat.Calculators;

/// <summary>
/// The hit / dodge gate that runs before any damage math.
/// </summary>
/// <remarks>
/// <para>
/// The live Nyx path has no explicit miss roll at all — it folds the victim's Dodge
/// into ranged damage as a multiplier, so a melee attack literally cannot miss.
/// Retail (and every reference emulator) rolls accuracy against dodge first, which
/// is what makes Dodge worth stacking and what makes the "Miss" splash appear on a
/// client. Enable it with <see cref="CombatOptions.EnableHitRateRoll"/>.
/// </para>
/// <para>
/// Stateless and allocation-free; a single instance serves the whole server.
/// </para>
/// </remarks>
public sealed class HitRateCalculator
{
    /// <summary>
    /// Returns true when the blow lands. Magic never misses in Conquer — spells are
    /// resisted through magic defence, not evaded.
    /// </summary>
    public bool Rolls(
        in Combatant attacker,
        in Combatant target,
        AttackKind kind,
        SkillDefinition? skill,
        CombatOptions options,
        IRandomSource random)
    {
        if (!options.EnableHitRateRoll) return true;
        if (kind == AttackKind.Magic) return true;

        // XP skills are a guaranteed connect against anything but a guard —
        // spending an XP bar and whiffing feels dreadful and retail agrees.
        if (skill is { IsXpSkill: true } && !target.Has(CombatFlags.Guard)) return true;

        int hitRate = attacker.Accuracy;
        int dodge = target.Dodge;
        int floor = options.MinHitRate;

        // Players landing on non-players get a large flat bonus: monster dodge
        // values are tuned against each other, not against geared characters.
        if (attacker.IsPlayer && !target.IsPlayer)
            hitRate += options.PlayerVsNonPlayerHitBonus;

        // Non-monster victims only get half their dodge, otherwise a dodge-stacked
        // player becomes untouchable in PvP.
        if (target.Kind != EntityKind.Monster)
            dodge /= 2;

        // A bowman firing into a raised shield is the classic hard counter.
        if (attacker.Has(CombatFlags.Bowman) && target.Has(CombatFlags.HoldingShield))
        {
            hitRate /= 2;
            floor = options.MinHitRateBowVsShield;
        }

        int finalRate = MathEx.Clamp(floor + hitRate - dodge, floor, options.MaxHitRate);
        return random.Chance(finalRate, 100);
    }
}
