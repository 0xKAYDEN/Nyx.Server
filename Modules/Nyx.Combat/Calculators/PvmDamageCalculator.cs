using Nyx.Combat.Model;
using Nyx.Combat.Numerics;

namespace Nyx.Combat.Calculators;

/// <summary>
/// Player → monster. No rebirth, blessing or exponential battle-power term;
/// instead the "green name" level bonus, a battle-power sanity floor, and a
/// per-monster minimum.
/// </summary>
/// <remarks>
/// Reproduces <c>src/Nyx/Game/Attacking/Battle/PvM.cs</c>. The level bonus table
/// matches both the live server and the reference Comet implementation, which is a
/// good sign it is the retail curve.
/// </remarks>
public sealed class PvmDamageCalculator : DamageCalculatorBase
{
    public override CombatScenario Scenario => CombatScenario.PvM;

    public override int Calculate(ref DamageContext ctx)
    {
        double damage = ctx.Kind switch
        {
            AttackKind.Magic => CalculateMagic(ref ctx),
            AttackKind.Ranged => CalculateRanged(ref ctx),
            _ => CalculateMelee(ref ctx),
        };

        damage = ApplyLevelBonus(ref ctx, damage);

        // A character whose battle power is below the monster's level is simply
        // not equipped to be here; the live server pins them to 1% output.
        if (ctx.Attacker.BattlePower < ctx.Target.Level)
            damage *= ctx.Options.UnderpoweredPvmMultiplier;

        damage = ApplyBossMultiplier(ref ctx, damage);
        damage = ApplyFinalAdjustments(ref ctx, damage);
        damage = ApplyDamageCap(ref ctx, damage);
        damage = ApplyMinimumDamage(ref ctx, damage);

        damage = ApplyLuckyStrike(
            ref ctx, damage,
            attackerBlessed: ctx.Attacker.Blessing > 0,
            targetBlessed: false);

        return Finalise(ref ctx, damage);
    }

    private static double CalculateMelee(ref DamageContext ctx)
    {
        double damage = RollPhysicalAttack(ref ctx);
        damage = ApplyRefinery(ref ctx, damage);
        damage = ApplySkillPower(ref ctx, damage);
        damage = ApplyDragonGems(ref ctx, damage);
        damage -= ctx.Target.Defence;
        return damage;
    }

    private static double CalculateRanged(ref DamageContext ctx)
    {
        double damage = CalculateMelee(ref ctx);
        if (ctx.IsSkill) damage *= ctx.Options.RangedSkillMultiplier;
        return damage;
    }

    private static double CalculateMagic(ref DamageContext ctx)
    {
        double damage = ctx.Attacker.MagicAttack;
        damage = ApplyRefinery(ref ctx, damage);
        damage = ApplySkillPower(ref ctx, damage);
        damage = ApplyPhoenixGems(ref ctx, damage);

        // Monsters express magic defence as a percentage, not a flat value.
        int resist = ctx.Target.MagicDefenceBonus;
        if (resist > 0)
        {
            if (resist > ctx.Options.MaxMagicDefenceBonus) resist = ctx.Options.MaxMagicDefenceBonus;
            damage *= (100 - resist) / 100.0;
        }

        damage -= ctx.Target.Block * 0.75;

        if (ctx.Attacker.MagicDamageIncrease > 0)
            damage += damage * ctx.Attacker.MagicDamageIncrease / 100.0;

        if (ctx.Target.MagicDamageDecrease > 0)
            damage -= damage * ctx.Target.MagicDamageDecrease / 100.0;

        if (ctx.IsSkill) damage *= ctx.Options.MagicSkillMultiplier;

        return damage;
    }

    /// <summary>
    /// The "green name" bonus: hitting something well below your level lands harder.
    /// Δ3–5 ×1.5, Δ6–10 ×2, Δ11–20 ×2.5, Δ&gt;20 ×3.
    /// </summary>
    private static double ApplyLevelBonus(ref DamageContext ctx, double damage)
    {
        if (ctx.Target.Has(CombatFlags.NoLevelBonus)) return damage;

        int delta = ctx.Attacker.Level - ctx.Target.Level;
        if (delta < 3) return damage;

        return delta switch
        {
            <= 5 => damage * 1.5,
            <= 10 => damage * 2.0,
            <= 20 => damage * 2.5,
            _ => damage * 3.0,
        };
    }

    /// <summary>Bosses take amplified damage, except from Assassins on the live path.</summary>
    private static double ApplyBossMultiplier(ref DamageContext ctx, double damage)
    {
        if (!ctx.Target.Has(CombatFlags.Boss)) return damage;

        if (ctx.Options.AssassinsBypassBossMultiplier && ctx.Attacker.Has(CombatFlags.Assassin))
            return damage;

        return damage * (ctx.IsMagic
            ? ctx.Options.BossMagicMultiplier
            : ctx.Options.BossPhysicalMultiplier);
    }

    /// <summary>
    /// Optional per-hit cap expressed as a share of the monster's maximum life.
    /// Retail uses a per-monster "disdain" table for the same purpose: it stops a
    /// single geared player from one-shotting world bosses.
    /// </summary>
    private static double ApplyDamageCap(ref DamageContext ctx, double damage)
    {
        int capPercent = ctx.Options.PvmDamageCapPercentOfMaxLife;
        if (capPercent <= 0 || ctx.Target.MaxLife <= 0) return damage;

        double cap = (double)ctx.Target.MaxLife * capPercent / 100.0;
        return damage > cap ? cap : damage;
    }

    /// <summary>
    /// Even a hopelessly outgeared player scratches a monster. The floor scales with
    /// the attacker's level plus a small equipment-quality term.
    /// </summary>
    private static double ApplyMinimumDamage(ref DamageContext ctx, double damage)
    {
        double floor = 1 + (ctx.Attacker.Level / 10.0);
        return damage < floor ? floor : damage;
    }
}
