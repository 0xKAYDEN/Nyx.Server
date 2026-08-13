using System.Runtime.CompilerServices;
using Nyx.Combat.Abstractions;
using Nyx.Combat.Configuration;
using Nyx.Combat.Model;
using Nyx.Combat.Numerics;

namespace Nyx.Combat.Calculators;

/// <summary>
/// The pieces of the Conquer damage chain that every scenario shares: the raw
/// attack roll, the refinery (crit / break / block) pass, gem scaling, the
/// battle-power term and the final flat adjustments.
/// </summary>
/// <remarks>
/// <para>
/// Template Method: the four concrete calculators inherit the shared steps and
/// only implement the parts that genuinely differ (level bonuses, floors, caps).
/// Every helper here is <see langword="protected static"/> and side-effect free
/// apart from the effect bits it ORs into the context, so the whole hierarchy
/// stays stateless and one instance per scenario serves the entire server.
/// </para>
/// <para>
/// Ordering matters and is not arbitrary. It reproduces the sequence the retail
/// client's own numbers imply and that the live <c>Battle/PvP.cs</c> already
/// follows:
/// </para>
/// <list type="number">
///   <item>roll raw attack (or take magic attack)</item>
///   <item>refinery: critical strike / penetration / breakthrough / block</item>
///   <item>skill power (percentage of weapon damage, or flat addend)</item>
///   <item>subtract the appropriate defence</item>
///   <item>gem scaling</item>
///   <item>rebirth reduction</item>
///   <item>blessing, then tortoise gem</item>
///   <item>battle-power term</item>
///   <item>scenario-specific adjustment (level colour bonus, floors, caps)</item>
///   <item>flat final attack / final defence</item>
///   <item>lucky strike, clamp to ≥ 1</item>
/// </list>
/// </remarks>
public abstract class DamageCalculatorBase : IDamageCalculator
{
    public abstract CombatScenario Scenario { get; }

    public abstract int Calculate(ref DamageContext context);

    // -----------------------------------------------------------------
    // Step 1 — raw attack roll
    // -----------------------------------------------------------------

    /// <summary>
    /// Rolls a physical attack value uniformly in <c>[MinAttack, MaxAttack]</c>.
    /// </summary>
    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    protected static int RollPhysicalAttack(ref DamageContext ctx)
    {
        ref readonly Combatant a = ref ctx.Attacker;
        int min = a.MinAttack;
        int max = a.MaxAttack;
        if (max <= min) return min > 0 ? min : 1;
        return ctx.Random.Next(min, max + 1);
    }

    // -----------------------------------------------------------------
    // Step 2 — refinery: critical / penetration / breakthrough / block
    // -----------------------------------------------------------------

    /// <summary>
    /// Applies the refinery attributes: critical strike on physical hits,
    /// penetration and skill-crit on magic hits, and the victim's block roll.
    /// Mirrors <c>Calculate.Refinary</c> on the live path but without the dead
    /// branches, and only ever runs for player attackers / player victims —
    /// monsters have no refinery attributes.
    /// </summary>
    protected static double ApplyRefinery(ref DamageContext ctx, double damage)
    {
        CombatOptions o = ctx.Options;
        ref readonly Combatant attacker = ref ctx.Attacker;
        ref readonly Combatant target = ref ctx.Target;

        if (attacker.IsPlayer)
        {
            if (!ctx.IsMagic)
            {
                // Physical: critical strike, gated by the victim's immunity.
                if (attacker.CriticalStrike > 0)
                {
                    if (attacker.CriticalStrike > target.Immunity)
                    {
                        // Both terms are in hundredths of a percent, and the
                        // divisor turns their difference straight into a percent
                        // chance: 1500 crit vs 0 immunity is 3.75%, matching
                        // Calculate.Refinary on the live path.
                        double rate = (attacker.CriticalStrike / o.CriticalRateDivisor)
                                    - (target.Immunity / o.CriticalRateDivisor);
                        if (ctx.Random.Chance(rate))
                        {
                            damage += damage * o.CriticalBonusPercent / 100.0;
                            ctx.Effects |= HitEffects.CriticalStrike;
                        }
                    }
                    else
                    {
                        ctx.Effects |= HitEffects.Immunity;
                    }
                }
            }
            else
            {
                // Magic: penetration first, skill-crit as the fallback.
                bool procced = false;

                if (attacker.Penetration > 0 && ctx.Random.Chance(attacker.Penetration / 100.0))
                {
                    damage += damage * o.PenetrationBonusPercent / 100.0;
                    ctx.Effects |= HitEffects.Penetration;
                    procced = true;
                }

                if (!procced && attacker.SkillCriticalStrike > 0)
                {
                    if (attacker.SkillCriticalStrike >= target.Immunity)
                    {
                        double rate = (attacker.SkillCriticalStrike - target.Immunity) / 100.0;
                        if (ctx.Random.Chance(rate))
                        {
                            damage += damage * o.CriticalBonusPercent / 100.0;
                            ctx.Effects |= HitEffects.CriticalStrike;
                        }
                    }
                    else
                    {
                        ctx.Effects |= HitEffects.Immunity;
                    }
                }
            }
        }

        // The victim's block roll. Two independent sources: the refinery block
        // attribute and an equipped shield.
        if (target.IsPlayer)
        {
            if (target.Block > 0 && ctx.Random.Chance(target.Block / 100.0))
            {
                damage *= 0.5;
                ctx.Effects |= HitEffects.Block;
            }
            else if (target.Has(CombatFlags.ShieldBlock)
                     && ctx.Random.Chance(target.ShieldBlockPercent))
            {
                damage *= 0.5;
                ctx.Effects |= HitEffects.Block;
            }
        }

        return damage;
    }

    // -----------------------------------------------------------------
    // Step 3 — skill power
    // -----------------------------------------------------------------

    /// <summary>
    /// Applies the skill's <c>power</c> column: a percentage of weapon damage when
    /// the raw value was above 30000, otherwise a flat addend.
    /// </summary>
    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    protected static double ApplySkillPower(ref DamageContext ctx, double damage)
    {
        SkillDefinition? skill = ctx.Skill;
        if (skill is null) return damage;

        if (skill.PowerFlat != 0) return damage + skill.PowerFlat;
        if (skill.PowerPercent != 100) return damage * skill.PowerPercent / 100.0;
        return damage;
    }

    // -----------------------------------------------------------------
    // Step 5 — gems
    // -----------------------------------------------------------------

    /// <summary>Dragon gems: a flat percentage bonus to physical output, plus a threshold kicker.</summary>
    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    protected static double ApplyDragonGems(ref DamageContext ctx, double damage)
    {
        byte dragon = ctx.Attacker.Gem(GemKind.Dragon);
        if (dragon == 0) return damage;

        damage += damage * dragon / 100.0;

        if (dragon >= ctx.Options.DragonGemThreshold)
            damage += damage * ctx.Options.DragonGemBonusPercent / 100.0;

        return damage;
    }

    /// <summary>Phoenix gems: the magic counterpart of dragon gems.</summary>
    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    protected static double ApplyPhoenixGems(ref DamageContext ctx, double damage)
    {
        byte phoenix = ctx.Attacker.Gem(GemKind.Phoenix);
        if (phoenix == 0) return damage;

        damage += damage * phoenix / 100.0;

        if (phoenix >= ctx.Options.PhoenixGemThreshold)
            damage += damage / ctx.Options.PhoenixGemBonusDivisor;

        return damage;
    }

    /// <summary>Tortoise gems on the victim: a percentage reduction, floored so it cannot zero damage.</summary>
    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    protected static double ApplyTortoiseGems(ref DamageContext ctx, double damage)
    {
        byte tortoise = ctx.Target.Gem(GemKind.Tortoise);
        if (tortoise == 0) return damage;

        double multiplier = 1.0 - (tortoise / 100.0);
        if (multiplier < ctx.Options.TortoiseGemFloor) multiplier = ctx.Options.TortoiseGemFloor;
        return damage * multiplier;
    }

    // -----------------------------------------------------------------
    // Step 6/7 — rebirth and blessing
    // -----------------------------------------------------------------

    /// <summary>Rebirth reduction on the victim: 0 RB none, 1 RB ×0.70, 2+ RB ×0.50.</summary>
    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    protected static double ApplyRebirthReduction(ref DamageContext ctx, double damage)
        => ctx.Target.Metempsychosis switch
        {
            0 => damage,
            1 => damage * ctx.Options.FirstRebirthReduction,
            _ => damage * ctx.Options.SecondRebirthReduction,
        };

    /// <summary>Heaven Blessing / bless equipment on the victim: a straight percentage reduction.</summary>
    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    protected static double ApplyBlessing(ref DamageContext ctx, double damage)
    {
        byte blessing = ctx.Target.Blessing;
        return blessing == 0 ? damage : damage * (1.0 - (blessing / 100.0));
    }

    // -----------------------------------------------------------------
    // Step 8 — battle power
    // -----------------------------------------------------------------

    /// <summary>
    /// The battle-power term. Two models are supported (see
    /// <see cref="BattlePowerModel"/>); both are skipped when the attacker's
    /// Breakthrough beats the victim's Counteraction and the roll lands, which is
    /// exactly what the Break attribute is for.
    /// </summary>
    protected static double ApplyBattlePower(ref DamageContext ctx, double damage)
    {
        CombatOptions o = ctx.Options;
        if (o.BattlePowerModel == BattlePowerModel.Disabled) return damage;

        ref readonly Combatant attacker = ref ctx.Attacker;
        ref readonly Combatant target = ref ctx.Target;

        // Breakthrough: bypass the victim's battle-power advantage entirely.
        if (attacker.Breakthrough > target.Counteraction)
        {
            double breakRate = (attacker.Breakthrough - target.Counteraction) / o.BreakthroughRateDivisor;
            if (ctx.Random.Chance(breakRate))
            {
                ctx.Effects |= HitEffects.Breakthrough;
                return damage;
            }
        }

        int delta = attacker.BattlePower - target.BattlePower;
        if (delta == 0) return damage;

        if (o.BattlePowerModel == BattlePowerModel.LegacyExponential)
        {
            double multiplier = Math.Pow(2.0, delta / o.BattlePowerExponentDivisor);
            if (multiplier > o.BattlePowerMaxMultiplier) multiplier = o.BattlePowerMaxMultiplier;
            return damage * multiplier;
        }

        // RetailLinear: only a battle-power *deficit* matters, and it is bounded.
        if (delta >= 0) return damage;

        int deficit = -delta;
        int cap = ctx.IsMagic ? o.BattlePowerMagicCap : o.BattlePowerPhysicalCap;
        int step = ctx.IsMagic ? o.BattlePowerMagicStep : o.BattlePowerPhysicalStep;
        if (deficit > cap) deficit = cap;

        double reduction = deficit * step / 100.0;
        if (reduction > 0.95) reduction = 0.95;
        return damage * (1.0 - reduction);
    }

    // -----------------------------------------------------------------
    // Step 10/11 — flat finals, lucky, clamp
    // -----------------------------------------------------------------

    /// <summary>
    /// Adds the attacker's flat "final attack" (Chi fan) and subtracts the victim's
    /// flat "final damage reduction" (Chi tower). These are deliberately last:
    /// nothing scales them.
    /// </summary>
    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    protected static double ApplyFinalAdjustments(ref DamageContext ctx, double damage)
    {
        if (ctx.IsMagic)
        {
            damage += ctx.Attacker.FinalMagicAttack;
            if (ctx.Target.IsPlayer) damage -= ctx.Target.FinalMagicDefence;
        }
        else
        {
            damage += ctx.Attacker.FinalAttack;
            if (ctx.Target.IsPlayer) damage -= ctx.Target.FinalDefence;
        }

        return damage;
    }

    /// <summary>
    /// The lucky-strike coin flip. A blessed attacker can double the blow; a blessed
    /// victim can reduce it to a scratch. Both are advertised to the client through
    /// <see cref="HitEffects.Lucky"/>.
    /// </summary>
    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    protected static double ApplyLuckyStrike(ref DamageContext ctx, double damage, bool attackerBlessed, bool targetBlessed)
    {
        CombatOptions o = ctx.Options;
        double chance = ctx.IsSkill ? o.LuckyChanceSkill : o.LuckyChanceBasic;

        if (attackerBlessed && ctx.Random.Chance(chance))
        {
            ctx.Effects |= HitEffects.Lucky;
            return damage * o.LuckyMultiplier;
        }

        if (targetBlessed && ctx.Random.Chance(chance))
        {
            ctx.Effects |= HitEffects.Lucky;
            return 1;
        }

        return damage;
    }

    /// <summary>Applies the operator's global multiplier and clamps to a legal damage value.</summary>
    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    protected static int Finalise(ref DamageContext ctx, double damage)
    {
        double scale = ctx.Options.GlobalDamageMultiplier;
        if (scale != 1.0) damage *= scale;
        return MathEx.ToDamage(damage);
    }
}
