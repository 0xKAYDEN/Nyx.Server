using Nyx.Combat.Abstractions;
using Nyx.Combat.Model;

namespace Nyx.Server.Game.Attacking;

/// <summary>
/// The server's implementation of <see cref="ICombatWorld"/>: the only channel
/// through which <c>Nyx.Combat</c> can ask anything about the live world.
/// </summary>
/// <remarks>
/// <para>
/// Two questions, and both answers stay here rather than in the library. Proximity
/// is a map-structure concern; hostility is pure server policy — PK mode, guild,
/// team, safe zones, tournaments, jail — and it changes far more often than a
/// damage formula does. Delegating <see cref="CanAttack"/> straight to the existing
/// <see cref="Handle.CanAttack(Entity, Entity, Database.SpellInformation, bool)"/>
/// means the engine can never disagree with the rest of the server about who may
/// hit whom, because there is only one implementation of that rule.
/// </para>
/// <para>
/// Stateless and thread-safe: it reads <see cref="Kernel"/>'s concurrent
/// collections and writes into a caller-owned span, so every map thread can call it
/// at once.
/// </para>
/// </remarks>
public sealed class NyxCombatWorld : ICombatWorld
{
    /// <summary>
    /// Fills <paramref name="buffer"/> with combatants within <paramref name="radius"/>
    /// tiles of a point, and returns how many were written.
    /// </summary>
    /// <remarks>
    /// Scans the map's own entity table (monsters, guards, pets) and the global
    /// client pool (players), stopping the instant the buffer is full. Nothing is
    /// allocated and no LINQ runs: an area skill costs one pass over the map's
    /// entities plus one over the online players.
    /// </remarks>
    public int QueryNearby(ushort mapId, ushort x, ushort y, int radius, Span<Combatant> buffer)
    {
        if (buffer.IsEmpty || radius < 0) return 0;

        int written = 0;

        // Monsters, guards, companions and other map-owned entities.
        if (Kernel.Maps.TryGetValue(mapId, out Map map) && map?.Entities is not null)
        {
            foreach (Entity entity in map.Entities.Values)
            {
                if (written >= buffer.Length) return written;
                if (!IsWithin(entity, mapId, x, y, radius)) continue;

                buffer[written++] = entity.ToCombatant();
            }
        }

        // Players are not in Map.Entities; they live in the global pool.
        foreach (Client.GameClient client in Kernel.GamePool.Values)
        {
            if (written >= buffer.Length) return written;

            Entity entity = client?.Entity!;
            if (!IsWithin(entity, mapId, x, y, radius)) continue;

            buffer[written++] = entity.ToCombatant();
        }

        return written;
    }

    /// <summary>
    /// Whether the attacker may damage the target right now. Delegates to the
    /// server's single source of truth for PK policy.
    /// </summary>
    /// <remarks>
    /// The engine hands back snapshots, so the entities are re-resolved by id. That
    /// costs two dictionary lookups on the area path, which is the correct trade:
    /// duplicating a thousand lines of PK policy into the library would be far more
    /// expensive to own than a hash lookup is to run.
    /// </remarks>
    public bool CanAttack(in Combatant attacker, in Combatant target)
    {
        if (attacker.Id == 0 || target.Id == 0 || attacker.Id == target.Id) return false;

        Entity? attackerEntity = Resolve(attacker.Id, attacker.MapId);
        Entity? targetEntity = Resolve(target.Id, target.MapId);

        if (attackerEntity is null || targetEntity is null) return false;
        if (attackerEntity.MapID != targetEntity.MapID) return false;
        if (targetEntity.Dead) return false;

        // Handle.CanAttack opens by reading attacker.Owner.timerattack and so only
        // survives a player attacker. Monster aggression is policed by the AI that
        // chose the target, not by PK rules, so it is allowed straight through.
        if (attackerEntity.Owner is null) return true;

        return Handle.CanAttack(attackerEntity, targetEntity, null, melee: false);
    }

    /// <summary>Finds a live entity by id: players first, then the map's own entities.</summary>
    private static Entity? Resolve(uint uid, ushort mapId)
    {
        if (Kernel.GamePool.TryGetValue(uid, out Client.GameClient client) && client?.Entity is not null)
            return client.Entity;

        if (Kernel.Maps.TryGetValue(mapId, out Map map) && map?.Entities is not null
            && map.Entities.TryGetValue(uid, out Entity entity))
            return entity;

        return null;
    }

    /// <summary>
    /// Cheap rejection first: a null check and two integer comparisons before the
    /// square root in <see cref="Kernel.GetDistance"/> is ever paid for.
    /// </summary>
    private static bool IsWithin(Entity? entity, ushort mapId, ushort x, ushort y, int radius)
    {
        if (entity is null || entity.MapID != mapId || entity.Dead) return false;

        int dx = entity.X - x;
        int dy = entity.Y - y;

        return (dx * dx) + (dy * dy) <= radius * radius;
    }
}
