using Nyx.Combat.Model;

namespace Nyx.Combat.Calculators;

/// <summary>
/// Player → static structure (guard tower, city gate, siege pole, training dummy).
/// </summary>
/// <remarks>
/// Structures have no dodge, no rebirth, no refinery attributes and generally no
/// defence worth speaking of — the point of a siege is that damage output is
/// legible. Reproduces <c>src/Nyx/Game/Attacking/Battle/PvE.cs</c>, which likewise
/// reduces to "roll attack, apply refinery, add the Chi fan".
/// </remarks>
public sealed class PveDamageCalculator : DamageCalculatorBase
{
    public override CombatScenario Scenario => CombatScenario.PvE;

    public override int Calculate(ref DamageContext ctx)
    {
        double damage = ctx.IsMagic
            ? ctx.Attacker.MagicAttack
            : RollPhysicalAttack(ref ctx);

        damage = ApplyRefinery(ref ctx, damage);
        damage = ApplySkillPower(ref ctx, damage);

        damage = ctx.IsMagic
            ? ApplyPhoenixGems(ref ctx, damage)
            : ApplyDragonGems(ref ctx, damage);

        if (ctx.Target.Defence > 0) damage -= ctx.Target.Defence;

        damage += ctx.IsMagic ? ctx.Attacker.FinalMagicAttack : ctx.Attacker.FinalAttack;

        return Finalise(ref ctx, damage);
    }
}
