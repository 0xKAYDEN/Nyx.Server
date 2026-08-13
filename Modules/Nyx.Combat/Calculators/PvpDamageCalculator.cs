using Nyx.Combat.Model;

namespace Nyx.Combat.Calculators;

/// <summary>
/// Player → player. The full chain: every refinery attribute, every gem, rebirth,
/// blessing, battle power and the Chi finals all apply.
/// </summary>
/// <remarks>
/// Reproduces <c>src/Nyx/Game/Attacking/Battle/PvP.cs</c>
/// (<c>GetDamageEntity2Entity</c>, both overloads) with the ordering documented on
/// <see cref="DamageCalculatorBase"/>.
/// </remarks>
public sealed class PvpDamageCalculator : DamageCalculatorBase
{
    public override CombatScenario Scenario => CombatScenario.PvP;

    public override int Calculate(ref DamageContext ctx)
    {
        double damage = ctx.Kind switch
        {
            AttackKind.Magic => CalculateMagic(ref ctx),
            AttackKind.Ranged => CalculateRanged(ref ctx),
            _ => CalculateMelee(ref ctx),
        };

        // ---- shared tail ------------------------------------------------
        damage = ApplyRebirthReduction(ref ctx, damage);
        damage = ApplyBlessing(ref ctx, damage);
        damage = ApplyTortoiseGems(ref ctx, damage);
        damage = ApplyBattlePower(ref ctx, damage);
        damage = ApplyFinalAdjustments(ref ctx, damage);

        if (damage < 1) damage = 1;

        damage = ApplyLuckyStrike(
            ref ctx, damage,
            attackerBlessed: ctx.Attacker.Blessing > 0,
            targetBlessed: ctx.Target.Blessing > 0);

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
        double damage = RollPhysicalAttack(ref ctx);
        damage = ApplyRefinery(ref ctx, damage);
        damage = ApplySkillPower(ref ctx, damage);
        damage = ApplyDragonGems(ref ctx, damage);
        damage -= ctx.Target.Defence;

        // The victim's agility bleeds off arrow damage; heavy armour gives some back.
        double evasion = 1.0
                       - (ctx.Target.Dodge / ctx.Options.RangedDodgeDivisor)
                       + (ctx.Target.Weight / ctx.Options.RangedWeightDivisor);
        if (evasion < 0) evasion = 0;
        damage *= evasion;

        // Archers hit far harder than they should in PvP without this; retail
        // applies a heavy scalar. Off by default so live numbers do not move.
        if (ctx.Options.EnableBowmanPvpPenalty && ctx.Attacker.Has(CombatFlags.Bowman))
            damage *= ctx.Options.BowmanVsPlayerMultiplier;

        if (ctx.IsSkill) damage *= ctx.Options.RangedSkillMultiplier;

        return damage;
    }

    private static double CalculateMagic(ref DamageContext ctx)
    {
        double damage = ctx.Attacker.MagicAttack;
        damage = ApplyRefinery(ref ctx, damage);
        damage = ApplySkillPower(ref ctx, damage);

        damage -= ctx.Target.MagicDefence;
        damage -= ctx.Target.Block;

        // Percentage magic resistance, capped so a stacked target is never immune.
        int resist = ctx.Target.MagicDefenceBonus;
        if (resist > 0)
        {
            if (resist > ctx.Options.MaxMagicDefenceBonus) resist = ctx.Options.MaxMagicDefenceBonus;
            damage *= 1.0 - (resist / 100.0);
        }

        damage = ApplyPhoenixGems(ref ctx, damage);

        if (ctx.Attacker.MagicDamageIncrease > 0)
            damage += damage * ctx.Attacker.MagicDamageIncrease / 100.0;

        if (ctx.Target.MagicDamageDecrease > 0)
            damage -= damage * ctx.Target.MagicDamageDecrease / 100.0;

        if (ctx.IsSkill) damage *= ctx.Options.MagicSkillMultiplier;

        return damage;
    }
}
