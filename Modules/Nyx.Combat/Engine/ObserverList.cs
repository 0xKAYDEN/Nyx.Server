using Nyx.Combat.Abstractions;
using Nyx.Combat.Model;

namespace Nyx.Combat.Engine;

/// <summary>
/// Fans combat events out to every registered <see cref="ICombatObserver"/>.
/// </summary>
/// <remarks>
/// <para>
/// A plain array iterated by index rather than a multicast delegate or an event:
/// no invocation-list copy, no null check per raise, and the whole list stays in
/// one cache line for the handful of observers a server actually registers.
/// </para>
/// <para>
/// Each observer is isolated: a subscriber that throws is caught and reported
/// through <see cref="ObserverFaulted"/> instead of aborting the attack. A bug in
/// an achievements handler must not be able to cancel a player's damage.
/// </para>
/// </remarks>
public sealed class ObserverList
{
    private readonly ICombatObserver[] _observers;

    /// <summary>Raised when an observer throws. Wire it to the host's logger.</summary>
    public event Action<ICombatObserver, Exception>? ObserverFaulted;

    public static ObserverList Empty { get; } = new(Array.Empty<ICombatObserver>());

    public ObserverList(IEnumerable<ICombatObserver> observers)
    {
        ArgumentNullException.ThrowIfNull(observers);
        _observers = observers is ICombatObserver[] array ? array : observers.ToArray();
    }

    public int Count => _observers.Length;

    public void RaiseDamageDealt(in Combatant attacker, in Combatant target, in HitResult result)
    {
        ICombatObserver[] observers = _observers;
        for (int i = 0; i < observers.Length; i++)
        {
            try { observers[i].OnDamageDealt(in attacker, in target, in result); }
            catch (Exception ex) { Report(observers[i], ex); }
        }
    }

    public void RaiseKill(in Combatant attacker, in Combatant target, in HitResult result)
    {
        ICombatObserver[] observers = _observers;
        for (int i = 0; i < observers.Length; i++)
        {
            try { observers[i].OnKill(in attacker, in target, in result); }
            catch (Exception ex) { Report(observers[i], ex); }
        }
    }

    public void RaiseMiss(in Combatant attacker, in Combatant target)
    {
        ICombatObserver[] observers = _observers;
        for (int i = 0; i < observers.Length; i++)
        {
            try { observers[i].OnMiss(in attacker, in target); }
            catch (Exception ex) { Report(observers[i], ex); }
        }
    }

    public void RaiseRejected(in Combatant attacker, RejectReason reason)
    {
        ICombatObserver[] observers = _observers;
        for (int i = 0; i < observers.Length; i++)
        {
            try { observers[i].OnRejected(in attacker, reason); }
            catch (Exception ex) { Report(observers[i], ex); }
        }
    }

    public void RaiseSkillUsed(in Combatant attacker, SkillDefinition skill, int targetsHit)
    {
        ICombatObserver[] observers = _observers;
        for (int i = 0; i < observers.Length; i++)
        {
            try { observers[i].OnSkillUsed(in attacker, skill, targetsHit); }
            catch (Exception ex) { Report(observers[i], ex); }
        }
    }

    private void Report(ICombatObserver observer, Exception exception)
        => ObserverFaulted?.Invoke(observer, exception);
}
