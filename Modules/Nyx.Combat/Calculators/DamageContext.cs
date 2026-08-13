using Nyx.Combat.Abstractions;
using Nyx.Combat.Configuration;
using Nyx.Combat.Model;

namespace Nyx.Combat.Calculators;

/// <summary>
/// The mutable working set for a single attacker → target resolution.
/// </summary>
/// <remarks>
/// A <see langword="ref struct"/> passed by <see langword="ref"/> through the whole
/// chain: calculators and modifiers read the inputs and accumulate their side
/// effects into <see cref="Effects"/> without a single allocation. It never
/// escapes the stack frame that created it.
/// </remarks>
public ref struct DamageContext
{
    /// <summary>The attacker snapshot.</summary>
    public readonly Combatant Attacker;

    /// <summary>The victim snapshot for this particular hit.</summary>
    public readonly Combatant Target;

    /// <summary>The skill being resolved, or <see langword="null"/> for a basic strike.</summary>
    public readonly SkillDefinition? Skill;

    /// <summary>Physical melee, physical ranged, or magic.</summary>
    public readonly AttackKind Kind;

    /// <summary>Which of the four scenario calculators owns this resolution.</summary>
    public readonly CombatScenario Scenario;

    /// <summary>Randomness for this resolution. Per-thread, never shared.</summary>
    public readonly IRandomSource Random;

    /// <summary>Tuning knobs, resolved once at boot.</summary>
    public readonly CombatOptions Options;

    /// <summary>Effect bits accumulated so far (crit, block, break, immunity, lucky).</summary>
    public HitEffects Effects;

    /// <summary>
    /// True when this hit is one of several from an area skill; secondary victims
    /// take reduced damage in some rule sets and never trigger single-target procs.
    /// </summary>
    public bool IsSplashTarget;

    public DamageContext(
        in Combatant attacker,
        in Combatant target,
        SkillDefinition? skill,
        AttackKind kind,
        CombatScenario scenario,
        IRandomSource random,
        CombatOptions options)
    {
        Attacker = attacker;
        Target = target;
        Skill = skill;
        Kind = kind;
        Scenario = scenario;
        Random = random;
        Options = options;
        Effects = HitEffects.None;
        IsSplashTarget = false;
    }

    public readonly bool IsMagic => Kind == AttackKind.Magic;
    public readonly bool IsRanged => Kind == AttackKind.Ranged;
    public readonly bool IsSkill => Skill is not null;
}
