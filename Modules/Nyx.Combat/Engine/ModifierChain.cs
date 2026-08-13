using Nyx.Combat.Abstractions;
using Nyx.Combat.Calculators;

namespace Nyx.Combat.Engine;

/// <summary>
/// The ordered chain of <see cref="IDamageModifier"/>s applied after the scenario
/// calculator has produced its number.
/// </summary>
/// <remarks>
/// <para>
/// Chain of Responsibility, flattened into an array. The textbook version — each
/// link holding a reference to the next and calling through it — costs a pointer
/// chase and an unpredictable indirect call per link. Sorting once at construction
/// and iterating an array instead keeps the whole chain in cache and lets the JIT
/// unroll a short one.
/// </para>
/// <para>
/// Frozen after construction and therefore free of locks. An empty chain costs a
/// single length check, so servers that add no custom modifiers pay essentially
/// nothing for the extension point.
/// </para>
/// </remarks>
public sealed class ModifierChain
{
    private readonly IDamageModifier[] _modifiers;

    /// <summary>A chain with no links.</summary>
    public static ModifierChain Empty { get; } = new(Array.Empty<IDamageModifier>());

    public ModifierChain(IEnumerable<IDamageModifier> modifiers)
    {
        ArgumentNullException.ThrowIfNull(modifiers);

        var ordered = new List<IDamageModifier>(modifiers);
        ordered.Sort(static (a, b) => a.Order.CompareTo(b.Order));
        _modifiers = ordered.ToArray();
    }

    public int Count => _modifiers.Length;

    /// <summary>Runs every modifier in order and returns the resulting damage.</summary>
    public int Apply(ref DamageContext context, int damage)
    {
        IDamageModifier[] modifiers = _modifiers;
        for (int i = 0; i < modifiers.Length; i++)
            damage = modifiers[i].Apply(ref context, damage);

        return damage;
    }
}
