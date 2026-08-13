using System.Runtime.CompilerServices;
using Nyx.Combat.Abstractions;
using Nyx.Combat.Model;

namespace Nyx.Combat.Calculators;

/// <summary>
/// Maps a <see cref="CombatScenario"/> to its calculator.
/// </summary>
/// <remarks>
/// <para>
/// A four-element array indexed by the enum value, not a dictionary: the lookup is
/// a bounds check and a load, with no hashing and no branch misprediction. The
/// enum is dense and closed, so this is both the fastest and the simplest option.
/// </para>
/// <para>
/// Frozen after construction, so it is safe to share across every map thread with
/// no synchronisation.
/// </para>
/// </remarks>
public sealed class DamageCalculatorRegistry
{
    private const int SlotCount = 4;

    private readonly IDamageCalculator[] _calculators;

    /// <summary>The stock registry: the four built-in scenario calculators.</summary>
    public static DamageCalculatorRegistry CreateDefault() => new(
        new PvpDamageCalculator(),
        new PvmDamageCalculator(),
        new MvpDamageCalculator(),
        new PveDamageCalculator());

    /// <summary>
    /// Builds a registry from an arbitrary set of calculators. A later entry
    /// overrides an earlier one for the same scenario, which is how a server owner
    /// swaps in a bespoke PvP formula without forking the engine.
    /// </summary>
    public DamageCalculatorRegistry(params IDamageCalculator[] calculators)
    {
        ArgumentNullException.ThrowIfNull(calculators);

        _calculators = new IDamageCalculator[SlotCount];

        foreach (IDamageCalculator calculator in calculators)
        {
            ArgumentNullException.ThrowIfNull(calculator);
            int slot = (int)calculator.Scenario;
            if ((uint)slot >= SlotCount)
                throw new ArgumentOutOfRangeException(
                    nameof(calculators),
                    $"{calculator.GetType().Name} reports unknown scenario {calculator.Scenario}.");

            _calculators[slot] = calculator;
        }

        for (int i = 0; i < SlotCount; i++)
        {
            if (_calculators[i] is null)
                throw new ArgumentException(
                    $"No damage calculator registered for scenario {(CombatScenario)i}.",
                    nameof(calculators));
        }
    }

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public IDamageCalculator Get(CombatScenario scenario) => _calculators[(int)scenario];

    /// <summary>
    /// Works out which scenario an attacker/target pair falls into.
    /// Pets are resolved as their owner's proxy, i.e. as monsters.
    /// </summary>
    public static CombatScenario ResolveScenario(in Combatant attacker, in Combatant target)
    {
        bool attackerIsPlayer = attacker.Kind is EntityKind.Player;
        bool targetIsPlayer = target.Kind is EntityKind.Player;

        if (attackerIsPlayer)
        {
            if (targetIsPlayer) return CombatScenario.PvP;
            return target.Kind == EntityKind.Structure ? CombatScenario.PvE : CombatScenario.PvM;
        }

        // Monster or pet attacking. Against a player it is MvP; monster-on-monster
        // (pets, mind-controlled mobs, guards) reuses the same curve.
        return targetIsPlayer ? CombatScenario.MvP : CombatScenario.PvM;
    }
}
