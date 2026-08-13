using Nyx.Combat.Model;

namespace Nyx.Combat.Abstractions;

/// <summary>
/// Notified about combat events so that the rest of the server — experience,
/// durability, quests, PK flags, aggro, achievements — can react without the engine
/// knowing any of them exist.
/// </summary>
/// <remarks>
/// <para>
/// Observer pattern, with two deliberate constraints. First, methods take
/// <see langword="in"/> struct parameters so notification stays allocation-free.
/// Second, they are <see langword="void"/> and synchronous: the engine will not
/// await an observer, because a slow subscriber must never be able to stall a
/// combat tick. An observer that needs to do I/O should enqueue and return.
/// </para>
/// <para>
/// The default implementations are empty, so a subscriber only overrides the events
/// it actually cares about, and an unused event costs a single interface call that
/// the JIT can often devirtualise away.
/// </para>
/// </remarks>
public interface ICombatObserver
{
    /// <summary>Raised for each victim that took damage.</summary>
    void OnDamageDealt(in Combatant attacker, in Combatant target, in HitResult result) { }

    /// <summary>Raised when a blow reduced a victim to zero life.</summary>
    void OnKill(in Combatant attacker, in Combatant target, in HitResult result) { }

    /// <summary>Raised when a hit was evaded.</summary>
    void OnMiss(in Combatant attacker, in Combatant target) { }

    /// <summary>Raised when an action was rejected before resolution.</summary>
    void OnRejected(in Combatant attacker, RejectReason reason) { }

    /// <summary>Raised once per skill cast that made it past validation.</summary>
    void OnSkillUsed(in Combatant attacker, SkillDefinition skill, int targetsHit) { }
}
