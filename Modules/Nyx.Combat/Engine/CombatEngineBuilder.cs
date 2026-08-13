using Nyx.Combat.Abstractions;
using Nyx.Combat.Calculators;
using Nyx.Combat.Configuration;
using Nyx.Combat.Cooldowns;
using Nyx.Combat.Targeting;
using Nyx.Combat.Validation;

namespace Nyx.Combat.Engine;

/// <summary>
/// Assembles a <see cref="CombatEngine"/> from its parts.
/// </summary>
/// <remarks>
/// <para>
/// The engine's constructor takes nine collaborators, which is correct for
/// testability and hostile to a caller who just wants the stock configuration. The
/// builder gives that caller a two-line path while leaving every seam open.
/// </para>
/// <para>
/// Deliberately not tied to <c>Microsoft.Extensions.DependencyInjection</c>. This
/// library has zero package references, which means it drops into any host —
/// including the parts of Nyx that predate DI — without dragging a version graph
/// behind it. A host that uses DI registers the built engine as a singleton in one
/// line; a host that does not still gets a clean construction story.
/// </para>
/// </remarks>
public sealed class CombatEngineBuilder
{
    private readonly List<IDamageModifier> _modifiers = [];
    private readonly List<ICombatObserver> _observers = [];
    private readonly List<ISkillBehaviour> _behaviours = [];

    private ISkillCatalog? _catalog;
    private ICombatWorld? _world;
    private CombatOptions _options = CombatOptions.Default;
    private DamageCalculatorRegistry? _calculators;
    private CooldownTable? _cooldowns;

    /// <summary>The skill catalog. Required.</summary>
    public CombatEngineBuilder WithSkills(ISkillCatalog catalog)
    {
        _catalog = catalog ?? throw new ArgumentNullException(nameof(catalog));
        return this;
    }

    /// <summary>The host's world seam (proximity queries and hostility policy). Required.</summary>
    public CombatEngineBuilder WithWorld(ICombatWorld world)
    {
        _world = world ?? throw new ArgumentNullException(nameof(world));
        return this;
    }

    /// <summary>Overrides the tuning constants. Defaults to <see cref="CombatOptions.Default"/>.</summary>
    public CombatEngineBuilder WithOptions(CombatOptions options)
    {
        _options = options ?? throw new ArgumentNullException(nameof(options));
        return this;
    }

    /// <summary>
    /// Replaces the scenario calculators wholesale. Use it to swap in a custom PvP
    /// formula without touching the other three.
    /// </summary>
    public CombatEngineBuilder WithCalculators(DamageCalculatorRegistry registry)
    {
        _calculators = registry ?? throw new ArgumentNullException(nameof(registry));
        return this;
    }

    /// <summary>Shares an existing cooldown table (for example one already used by movement).</summary>
    public CombatEngineBuilder WithCooldownTable(CooldownTable table)
    {
        _cooldowns = table ?? throw new ArgumentNullException(nameof(table));
        return this;
    }

    /// <summary>Appends a post-calculation damage modifier.</summary>
    public CombatEngineBuilder AddModifier(IDamageModifier modifier)
    {
        _modifiers.Add(modifier ?? throw new ArgumentNullException(nameof(modifier)));
        return this;
    }

    /// <summary>Appends an event subscriber.</summary>
    public CombatEngineBuilder AddObserver(ICombatObserver observer)
    {
        _observers.Add(observer ?? throw new ArgumentNullException(nameof(observer)));
        return this;
    }

    /// <summary>Registers a bespoke rule for one skill.</summary>
    public CombatEngineBuilder AddSkillBehaviour(ISkillBehaviour behaviour)
    {
        _behaviours.Add(behaviour ?? throw new ArgumentNullException(nameof(behaviour)));
        return this;
    }

    /// <summary>
    /// Builds the engine. Throws if a required collaborator is missing — a
    /// misconfigured engine must fail at boot, never on the first punch thrown in
    /// production.
    /// </summary>
    public CombatEngine Build()
    {
        ISkillCatalog catalog = _catalog
            ?? throw new InvalidOperationException(
                $"No skill catalog. Call {nameof(WithSkills)} with a catalog loaded from cq_magictype.");

        ICombatWorld world = _world
            ?? throw new InvalidOperationException(
                $"No world seam. Call {nameof(WithWorld)} with the host's implementation.");

        CooldownTable table = _cooldowns ?? new CooldownTable();
        var cooldowns = new CombatCooldownManager(table, _options);

        return new CombatEngine(
            catalog,
            _calculators ?? DamageCalculatorRegistry.CreateDefault(),
            new TargetSelector(world),
            new AttackValidator(world, cooldowns),
            new HitRateCalculator(),
            cooldowns,
            _options,
            _modifiers.Count == 0 ? ModifierChain.Empty : new ModifierChain(_modifiers),
            _observers.Count == 0 ? ObserverList.Empty : new ObserverList(_observers),
            _behaviours.Count == 0 ? SkillBehaviourRegistry.Empty : new SkillBehaviourRegistry(_behaviours));
    }
}
