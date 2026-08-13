using Nyx.Combat.Model;

namespace Nyx.Combat.Calculators;

/// <summary>
/// Monster → player. The mirror of <see cref="PvmDamageCalculator"/>: a red/black
/// name bonus in the monster's favour, the player's full defensive stack, and a
/// damage floor so low-level mobs still chip a tanked character.
/// </summary>
/// <remarks>Reproduces <c>src/Nyx/Game/Attacking/Battle/MvP.cs</c>.</remarks>
public sealed class MvpDamageCalculator : DamageCalculatorBase
{
    public override CombatScenario Scenario => CombatScenario.MvP;

    public override int Calculate(ref DamageContext ctx)
    {
        double damage = ctx.IsMagic ? CalculateMagic(ref ctx) : CalculatePhysical(ref ctx);

        damage = ApplyLevelBonus(ref ctx, damage);
        damage = ApplyRebirthReduction(ref ctx, damage);
        damage = ApplyBlessing(ref ctx, damage);
        damage = ApplyTortoiseGems(ref ctx, damage);
        damage = ApplyBattlePowerScaling(ref ctx, damage);
        damage = ApplyFinalAdjustments(ref ctx, damage);
        damage = ApplyMinimumDamage(ref ctx, damage);

        damage = ApplyLuckyStrike(
            ref ctx, damage,
            attackerBlessed: false,
            targetBlessed: ctx.Target.Blessing > 0);

        return Finalise(ref ctx, damage);
    }

    private static double CalculatePhysical(ref DamageContext ctx)
    {
        double damage = RollPhysicalAttack(ref ctx);
        damage = ApplyRefinery(ref ctx, damage);
        damage = ApplySkillPower(ref ctx, damage);
        damage -= ctx.Target.Defence;
        return damage;
    }

    private static double CalculateMagic(ref DamageContext ctx)
    {
        double damage = ctx.Attacker.MagicAttack;
        damage = ApplyRefinery(ref ctx, damage);
        damage = ApplySkillPower(ref ctx, damage);
        damage -= ctx.Target.MagicDefence;

        int resist = ctx.Target.MagicDefenceBonus;
        if (resist > 0)
        {
            if (resist > ctx.Options.MaxMagicDefenceBonus) resist = ctx.Options.MaxMagicDefenceBonus;
            damage *= 1.0 - (resist / 100.0);
        }

        if (ctx.Target.MagicDamageDecrease > 0)
            damage -= damage * ctx.Target.MagicDamageDecrease / 100.0;

        return damage;
    }

    /// <summary>
    /// The monster's side of the name-colour table: a mob well above the player's
    /// level (a "black name") hits catastrophically hard.
    /// </summary>
    private static double ApplyLevelBonus(ref DamageContext ctx, double damage)
    {
        int monsterLevel = ctx.Attacker.Level;
        int cap = ctx.Options.MonsterLevelComparisonCap;
        if (monsterLevel > cap) monsterLevel = cap;

        // How far the player sits *below* the monster. Non-positive means the
        // player out-levels the mob and gets no penalty at all.
        int deficit = monsterLevel - ctx.Target.Level;
        if (deficit <= 0) return damage;

        return deficit switch
        {
            <= 5 => damage * 1.5,   // red name
            <= 10 => damage * 2.0,  // black name, mild
            <= 20 => damage * 3.5,  // black name
            _ => damage * 5.0,      // hopelessly out of your depth
        };
    }

    /// <summary>
    /// Monsters scale off the victim's maximum life rather than raw attack when the
    /// player is badly under-powered, so a level-1 character in a level-130 zone dies
    /// regardless of how much flat defence they stacked.
    /// </summary>
    private static double ApplyBattlePowerScaling(ref DamageContext ctx, double damage)
    {
        byte extra = ctx.Attacker.ExtraDamage;
        if (extra == 0 || ctx.Target.MaxLife <= 0) return damage;

        int delta = ctx.Attacker.BattlePower - ctx.Target.BattlePower;
        if (delta <= 0) return damage;

        int factor = delta switch
        {
            >= 40 => 100,
            >= 30 => 80,
            >= 20 => 60,
            >= 10 => 40,
            _ => 30,
        };

        double scaled = (double)ctx.Target.MaxLife * factor * extra / 1_000_000.0;
        return scaled > damage ? scaled : damage;
    }

    /// <summary>
    /// Monsters always land for at least a few points, unless the victim is a
    /// newcomer under the exemption level.
    /// </summary>
    private static double ApplyMinimumDamage(ref DamageContext ctx, double damage)
    {
        if (ctx.Target.Level <= ctx.Options.MonsterMinimumDamageLevelExemption) return damage < 1 ? 1 : damage;

        double floor = ctx.Options.MonsterMinimumDamage + (ctx.Attacker.Level / 10.0);
        if (floor < 1) floor = 1;
        return damage < floor ? floor : damage;
    }
}
