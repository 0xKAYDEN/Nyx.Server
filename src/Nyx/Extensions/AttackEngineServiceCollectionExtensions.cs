using Microsoft.Extensions.DependencyInjection;
using Nyx.AttackEngine.Bootstrap;
using Nyx.AttackEngine.Caching;
using Nyx.AttackEngine.Combat;
using Nyx.AttackEngine.Combat.Steps;
using Nyx.AttackEngine.interfaces;
using Nyx.Server.Database;
using Nyx.Server.Game;
using Nyx.Server.Game.Attacking;

namespace Nyx.Server.Extensions;

/// <summary>
/// Holds the built engine pieces. Registered as a singleton because the
/// AttackEngineBuilder returns a value tuple (not a reference type) and
/// AddSingleton requires a reference type for the tuple.
/// </summary>
public sealed class AttackEngineHolder
{
    public SkillDataCache Cache { get; }
    public AttackPipeline Pipeline { get; }

    public AttackEngineHolder(SkillDataCache cache, AttackPipeline pipeline)
    {
        Cache = cache;
        Pipeline = pipeline;
    }
}

/// <summary>
/// Wires the Nyx.AttackEngine combat pipeline into the server. The engine reads
/// skill data from cq_magictype (via the live Postgres connection) and validates
/// targeting/PVP using the same rules the rest of the server already uses.
/// </summary>
public static class AttackEngineServiceCollectionExtensions
{
    public static IServiceCollection AddAttackEngine(this IServiceCollection services)
    {
        services.AddSingleton(provider =>
        {
            // Live Postgres connection factory (DataHolder is configured at startup).
            global::System.Func<global::System.Data.Common.DbConnection> connectionFactory =
                () => DataHolder.Factory.GetConnection();

            // Reuse the server's existing PVP/zone gate (Handle.CanAttack). The
            // engine only needs to know whether a crime-flagged skill may hit a
            // player here; null spell is safe (Handle.CanAttack guards on it).
            global::System.Func<uint, uint, bool> isPvpAllowedBetween = (attackerUid, targetUid) =>
            {
                if (!Kernel.GamePool.TryGetValue(attackerUid, out var atk) ||
                    !Kernel.GamePool.TryGetValue(targetUid, out var tgt))
                    return false;
                return Handle.CanAttack(atk.Entity, tgt.Entity, null, false);
            };

            // Spatial query for ground/AoE skills: entities on the same map within
            // radius of the center entity. Mirrors the screen/range checks the
            // server already does for AoE spells.
            global::System.Func<uint, uint, int, global::System.Span<uint>, int> queryNearby =
                (mapId, centerUid, radius, buffer) =>
                {
                    if (!Kernel.GamePool.TryGetValue(centerUid, out var center) ||
                        center.Entity.MapID != mapId)
                        return 0;

                    var count = 0;
                    var r = (ushort)radius;
                    foreach (var client in Kernel.GamePool.Values)
                    {
                        if (count >= buffer.Length) break;
                        var e = client.Entity;
                        if (e.UID == centerUid) continue;
                        if (e.MapID != mapId) continue;
                        if (Kernel.GetDistance(center.Entity.X, center.Entity.Y, e.X, e.Y) <= r)
                            buffer[count++] = e.UID;
                    }
                    return count;
                };

            // No custom attr-effect handlers are registered yet; AttrEffectDamageStep
            // no-ops on unknown AttrType, so an empty map is safe and non-breaking.
            global::System.Collections.Generic.IReadOnlyDictionary<short, IAttrEffect> attrEffects =
                new global::System.Collections.Generic.Dictionary<short, IAttrEffect>();

            var (cache, pipeline) = AttackEngineBuilder
                .BuildAsync(connectionFactory, isPvpAllowedBetween, queryNearby, attrEffects)
                .GetAwaiter().GetResult();

            return new AttackEngineHolder(cache, pipeline);
        });

        // Expose the two pieces individually so callers (packet handlers) can
        // resolve them without unpacking the holder.
        services.AddSingleton(provider =>
            provider.GetRequiredService<AttackEngineHolder>().Cache);
        services.AddSingleton(provider =>
            provider.GetRequiredService<AttackEngineHolder>().Pipeline);

        return services;
    }
}
