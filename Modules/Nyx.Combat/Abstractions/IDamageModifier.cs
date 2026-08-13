using Nyx.Combat.Calculators;

namespace Nyx.Combat.Abstractions;

/// <summary>
/// A pluggable link in the damage chain, applied after the scenario calculator
/// has produced a base number.
/// </summary>
/// <remarks>
/// <para>
/// This is where a server owner bolts on custom content — a double-damage event, a
/// guild-war damage cap, a new gem family — without touching the core formula or
/// recompiling the calculators.
/// </para>
/// <para>
/// Modifiers run in ascending <see cref="Order"/>. They are held in a plain array
/// and iterated by index, so the cost of an empty chain is a single length check.
/// Implementations must be stateless and thread-safe.
/// </para>
/// </remarks>
public interface IDamageModifier
{
    /// <summary>Ascending execution order. Ties are resolved by registration order.</summary>
    int Order { get; }

    /// <summary>
    /// Returns the damage after this modifier. Return <paramref name="damage"/>
    /// unchanged to opt out for this particular hit — that is cheaper than a
    /// registry lookup and keeps the chain branch-predictable.
    /// </summary>
    int Apply(ref DamageContext context, int damage);
}
