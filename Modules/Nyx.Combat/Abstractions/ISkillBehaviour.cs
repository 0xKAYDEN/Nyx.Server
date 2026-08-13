using Nyx.Combat.Calculators;
using Nyx.Combat.Model;

namespace Nyx.Combat.Abstractions;

/// <summary>
/// A bespoke rule for one specific skill, for the cases the generic model cannot
/// express.
/// </summary>
/// <remarks>
/// <para>
/// The overwhelming majority of Conquer skills are fully described by their
/// <c>cq_magictype</c> row: a shape, a power, a cost. A handful are not — a skill
/// that heals for a share of damage dealt, one that ignores defence entirely, one
/// that chains only to targets sharing a status. Those get a behaviour.
/// </para>
/// <para>
/// This exists so nobody is ever tempted to add <c>if (skillId == 1115)</c> to a
/// calculator. Registration is explicit (no assembly scanning, no reflection at
/// runtime), so start-up stays fast and the set of special cases is greppable.
/// </para>
/// </remarks>
public interface ISkillBehaviour
{
    /// <summary>The <c>type</c> column of the skill this behaviour owns.</summary>
    ushort SkillType { get; }

    /// <summary>
    /// Adjusts the damage for one victim. Return <paramref name="damage"/>
    /// unchanged to defer entirely to the generic model.
    /// </summary>
    int ModifyDamage(ref DamageContext context, int damage) => damage;

    /// <summary>
    /// Runs after every victim has been resolved. Use it for the side effects the
    /// generic model has no concept of: self-heals, buff application, summons.
    /// </summary>
    void OnResolved(in Combatant attacker, SkillDefinition skill, ReadOnlySpan<HitResult> hits) { }
}
