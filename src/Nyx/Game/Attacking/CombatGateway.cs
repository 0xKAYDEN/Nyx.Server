using Microsoft.Extensions.DependencyInjection;
using Nyx.Server.Network.GamePackets;

namespace Nyx.Server.Game.Attacking;

/// <summary>
/// The single entry point every combat call site uses to offer an attack to
/// <c>Nyx.Combat</c> before falling back to the legacy <see cref="Handle"/> path.
/// </summary>
/// <remarks>
/// <para>
/// This exists because an attack reaches the server from more than one direction.
/// <c>MsgAttack</c> (1022) only arrives when the player first clicks a target;
/// from then on <c>World.AutoAttackCallback</c> replays the stored
/// <see cref="Entity.AttackPacket"/> once per swing interval. Hooking only the
/// packet handler would therefore route the first swing of a chain through the
/// engine and every following swing through the old code — the worst possible
/// outcome, since the two would disagree and the damage a player sees would
/// change halfway through a fight.
/// </para>
/// <para>
/// Keeping the flag lookup, the adapter handle and the target resolution in one
/// place also means a new call site is one <see cref="TryHandle"/> call rather
/// than a copy of the whole preamble.
/// </para>
/// </remarks>
public static class CombatGateway
{
    // Resolved once. GetService on the hot path would put a container lock in the
    // middle of the busiest loop in the server.
    private static CombatAdapter _adapter;
    private static bool? _enabled;

    /// <summary>Whether <c>Combat.UseCombatEngine</c> is on.</summary>
    public static bool Enabled
        => _enabled ??= Program.ApplicationHost?.Services
            .GetService<Nyx.Server.CombatConfiguration>()?.UseCombatEngine ?? false;

    /// <summary>The engine adapter, or <see langword="null"/> before the host is built.</summary>
    public static CombatAdapter Adapter
        => _adapter ??= Program.ApplicationHost?.Services
            .GetService<CombatAdapter>();

    /// <summary>
    /// Offers one attack to the engine.
    /// </summary>
    /// <returns>
    /// <see langword="true"/> when the engine fully resolved and applied the
    /// exchange and the caller must <b>not</b> run <see cref="Handle"/>;
    /// <see langword="false"/> when it declined for any reason, in which case the
    /// caller proceeds exactly as it did before the engine existed.
    /// </returns>
    /// <remarks>
    /// Never throws into a call site. The auto-attack loop runs on a shared world
    /// thread and a single bad projection must not take a tick down with it — an
    /// unexpected failure degrades to the legacy path instead.
    /// </remarks>
    public static bool TryHandle(Entity attacker, Attack packet)
    {
        if (!Enabled) return false;
        if (attacker is null || packet is null) return false;

        CombatAdapter adapter = Adapter;
        if (adapter is null) return false;

        Entity target = ResolveTarget(attacker, packet.Attacked);
        if (target is null) return false;

        try
        {
            return adapter.TryResolve(attacker, target, packet);
        }
        catch (System.Exception ex)
        {
            Serilog.Log.Error(ex,
                "Nyx.Combat: resolve failed for {Attacker} -> {Target}; falling back to legacy path",
                attacker.UID, packet.Attacked);
            return false;
        }
    }

    /// <summary>
    /// Finds the entity an attack packet names: players live in the global pool,
    /// monsters and other map objects on the attacker's own map.
    /// </summary>
    public static Entity ResolveTarget(Entity attacker, uint uid)
    {
        if (attacker is null || uid == 0 || uid == attacker.UID) return null;

        if (Kernel.GamePool.TryGetValue(uid, out Client.GameClient client) && client?.Entity is not null)
            return client.Entity;

        if (Kernel.Maps.TryGetValue(attacker.MapID, out Map map) && map?.Entities is not null
            && map.Entities.TryGetValue(uid, out Entity entity))
            return entity;

        return null;
    }
}
