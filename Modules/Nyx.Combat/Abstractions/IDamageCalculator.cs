using Nyx.Combat.Calculators;
using Nyx.Combat.Model;

namespace Nyx.Combat.Abstractions;

/// <summary>
/// Strategy for one <see cref="CombatScenario"/>. Player-vs-player, player-vs-monster,
/// monster-vs-player and player-vs-structure each apply different level bonuses,
/// floors and caps, so each gets its own implementation instead of one method with
/// a scenario switch buried in it.
/// </summary>
/// <remarks>
/// Implementations must be stateless and thread-safe: a single instance serves
/// every map thread. All mutable per-hit state lives in the
/// <see cref="DamageContext"/> passed by reference.
/// </remarks>
public interface IDamageCalculator
{
    /// <summary>The scenario this strategy handles. Used to index the registry.</summary>
    CombatScenario Scenario { get; }

    /// <summary>
    /// Resolves final damage for one attacker/target pair.
    /// Must return at least 1 for a landed hit; the caller has already run the
    /// hit-rate roll, so a 0 here means "fully absorbed", not "missed".
    /// </summary>
    int Calculate(ref DamageContext context);
}
