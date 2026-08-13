using Nyx.Combat.Model;

namespace Nyx.Combat.Abstractions;

/// <summary>
/// The engine's narrow window onto the game world.
/// </summary>
/// <remarks>
/// <para>
/// This is the only place the combat library touches host state, and it is
/// deliberately tiny: two questions ("who is near this tile?" and "may these two
/// fight?"). Everything else the engine needs is already inside the
/// <see cref="Combatant"/> snapshots handed to it.
/// </para>
/// <para>
/// Keeping the surface this small is what lets the whole damage model be unit
/// tested with a ten-line fake, and what stops the engine from accidentally
/// growing a dependency on the host's threading model.
/// </para>
/// </remarks>
public interface ICombatWorld
{
    /// <summary>
    /// Fills <paramref name="buffer"/> with combatants inside <paramref name="radius"/>
    /// tiles of the given tile on the given map, and returns how many were written.
    /// </summary>
    /// <remarks>
    /// The buffer is owned by the caller (stack or pooled), so implementations must
    /// write into it rather than allocating. Implementations should stop at
    /// <c>buffer.Length</c> and must not throw when the world holds more candidates
    /// than fit.
    /// </remarks>
    int QueryNearby(ushort mapId, ushort x, ushort y, int radius, Span<Combatant> buffer);

    /// <summary>
    /// Whether the attacker is permitted to damage the target right now: PK mode,
    /// guild and team membership, safe zones, event rules, jail state.
    /// </summary>
    /// <remarks>
    /// Policy stays in the host because it is server-specific and changes far more
    /// often than the damage model does.
    /// </remarks>
    bool CanAttack(in Combatant attacker, in Combatant target);
}
