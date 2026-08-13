using Nyx.Combat.Engine;
using Nyx.Combat.Model;
using Nyx.Combat.Skills;
using Nyx.Server.Network.GamePackets;

namespace Nyx.Server.Game.Attacking;

/// <summary>
/// Bridges an inbound <c>MsgAttack</c> (1022) to <c>Nyx.Combat</c> and writes the
/// engine's verdict back onto the wire.
/// </summary>
/// <remarks>
/// <para>
/// The engine decides <i>how much</i>; the server still decides <i>what happens
/// next</i>. Once a number comes back, the adapter hands it to
/// <see cref="Handle.ReceiveAttack(Entity, Entity, Attack, ref uint, Database.SpellInformation)"/>,
/// which is where experience, durability, death, PK flags, quests, tournament
/// scoring and the outgoing screen packets already live. Re-implementing any of
/// that inside the library would have meant maintaining two copies of the most
/// side-effect-heavy code in the server.
/// </para>
/// <para>
/// Gated by <c>Combat.UseCombatEngine</c>. With the flag off this type is
/// constructed and never called, so the legacy <see cref="Handle"/> path is
/// bit-for-bit unchanged.
/// </para>
/// </remarks>
public sealed class CombatAdapter
{
    private readonly CombatEngine _engine;
    private readonly SkillCatalogHost _skills;

    public CombatAdapter(CombatEngine engine, SkillCatalogHost skills)
    {
        _engine = engine ?? throw new ArgumentNullException(nameof(engine));
        _skills = skills ?? throw new ArgumentNullException(nameof(skills));
    }

    /// <summary>The live skill catalog, for diagnostics and hot-reload commands.</summary>
    public SkillCatalogHost Skills => _skills;

    /// <summary>Whether the catalog knows this skill at all.</summary>
    public bool KnowsSkill(ushort type) => _skills.GetHighestRank(type) is not null;

    /// <summary>
    /// Resolves one attack and applies it.
    /// </summary>
    /// <returns>
    /// <see langword="true"/> when the engine authored the exchange and the caller
    /// must not run <see cref="Handle"/>; <see langword="false"/> when it declined,
    /// in which case the legacy path should proceed exactly as before.
    /// </returns>
    /// <remarks>
    /// Declining rather than rejecting is deliberate. A rejected packet on the live
    /// server means a swallowed attack and a player standing still while their
    /// client animates — far worse than falling through to code that has been in
    /// production for years. The engine only takes ownership of cases it fully
    /// understands.
    /// </remarks>
    public bool TryResolve(Entity attacker, Entity target, Attack packet)
    {
        if (attacker is null || target is null || packet is null) return false;
        if (attacker.UID == target.UID) return false;

        AttackKind kind = ResolveKind(packet.AttackType);

        // Skill casts carry their id in the Damage field (see MsgAttack: SpellID,
        // MagicType and Damage all alias offset 28). Only take ownership of a cast
        // whose row we actually hold; anything else falls through.
        ushort skillType = 0, skillLevel = 0;
        if (kind == AttackKind.Magic)
        {
            skillType = packet.MagicType;
            skillLevel = packet.MagicLevel;

            if (skillType == 0 || !KnowsSkill(skillType)) return false;
        }

        Combatant attackerSnapshot = attacker.ToCombatant();
        Combatant targetSnapshot = target.ToCombatant();

        var request = new AttackRequest(
            in attackerSnapshot,
            in targetSnapshot,
            kind,
            Environment.TickCount64,
            skillType,
            skillLevel,
            packet.X,
            packet.Y);

        var state = new ResolveState(attacker, target, packet);

        // AttackOutcome is a ref struct wrapping the engine's stack buffer, so
        // everything needed afterwards is copied out inside the callback.
        _engine.Resolve(in request, state, static (ResolveState s, in AttackOutcome outcome) =>
        {
            if (outcome.IsRejected) return;

            ReadOnlySpan<HitResult> hits = outcome.Hits;
            if (hits.Length == 0) return;

            s.Handled = true;

            for (int i = 0; i < hits.Length; i++)
                Apply(s, in hits[i]);
        },
        BasicAttackRange(attacker));

        return state.Handled;
    }

    /// <summary>
    /// Writes one hit onto the packet and routes it into the server's existing
    /// damage-application path.
    /// </summary>
    private static void Apply(ResolveState state, in HitResult hit)
    {
        Entity victim = hit.TargetId == state.PrimaryTarget.UID
            ? state.PrimaryTarget
            : ResolveVictim(hit.TargetId, state.PrimaryTarget.MapID);

        if (victim is null) return;

        Attack packet = state.Packet;
        packet.Attacked = victim.UID;
        packet.Effect1 = ToWireEffects(hit.Effects);

        // A miss still costs the attacker their swing and still animates; it simply
        // lands for nothing. It must NOT short-circuit: ReceiveAttack is the only
        // code that broadcasts the swing to the screen and refreshes AttackStamp /
        // AttackPacket, and World.cs:1979 drives the auto-attack loop off exactly
        // those two fields. Returning early here would make the miss invisible to
        // every client and stall the attacker's chain until they re-clicked.
        uint damage = hit.Status == AttackStatus.Miss ? 0u : (uint)hit.Damage;

        packet.Damage = damage;

        Handle.ReceiveAttack(state.Attacker, victim, packet, ref damage, null);
    }

    private static Entity ResolveVictim(uint uid, ushort mapId)
    {
        if (Kernel.GamePool.TryGetValue(uid, out Client.GameClient client) && client?.Entity is not null)
            return client.Entity;

        if (Kernel.Maps.TryGetValue(mapId, out Map map) && map?.Entities is not null
            && map.Entities.TryGetValue(uid, out Entity entity))
            return entity;

        return null!;
    }

    /// <summary>
    /// Translates the engine's effect bits to the client's <c>Effect1</c> byte.
    /// </summary>
    /// <remarks>
    /// Not a straight cast, and it must not become one. The two enums disagree:
    /// <c>Break</c> is <c>10</c> <i>decimal</i> on the wire (so it shares bits with
    /// <c>Immu | Penetration</c>) while the engine uses a clean <c>1 &lt;&lt; 4</c>,
    /// and <c>Lucky</c> / <c>Dodged</c> have no representation in this byte at all —
    /// the live server advertises a lucky strike through <c>MsgRefineEffect</c>
    /// instead. The odd <c>Break</c> value is reproduced rather than corrected: the
    /// retail client already renders it that way and <c>Battle/PvP.cs</c> has always
    /// sent it.
    /// </remarks>
    private static Attack.AttackEffects1 ToWireEffects(HitEffects effects)
    {
        Attack.AttackEffects1 wire = Attack.AttackEffects1.None;

        if ((effects & HitEffects.Block) != 0) wire |= Attack.AttackEffects1.Block;
        if ((effects & HitEffects.Penetration) != 0) wire |= Attack.AttackEffects1.Penetration;
        if ((effects & HitEffects.CriticalStrike) != 0) wire |= Attack.AttackEffects1.CriticalStrike;
        if ((effects & HitEffects.Immunity) != 0) wire |= Attack.AttackEffects1.Immu;
        if ((effects & HitEffects.Breakthrough) != 0) wire |= Attack.AttackEffects1.Break;
        if ((effects & HitEffects.MetalResist) != 0) wire |= Attack.AttackEffects1.MetalResist;
        if ((effects & HitEffects.WoodResist) != 0) wire |= Attack.AttackEffects1.WoodResist;
        if ((effects & HitEffects.WaterResist) != 0) wire |= Attack.AttackEffects1.WaterResist;
        if ((effects & HitEffects.FireResist) != 0) wire |= Attack.AttackEffects1.FireResist;

        return wire;
    }

    /// <summary>Maps the packet's attack type onto the engine's three damage families.</summary>
    private static AttackKind ResolveKind(uint attackType) => attackType switch
    {
        Attack.Magic => AttackKind.Magic,
        Attack.Ranged => AttackKind.Ranged,
        _ => AttackKind.Melee,
    };

    /// <summary>
    /// Reach for a basic strike, mirroring the checks in <see cref="Handle"/>: a
    /// transformation overrides equipped reach entirely.
    /// </summary>
    private static int BasicAttackRange(Entity attacker)
    {
        if (attacker.Transformed && attacker.TransformationAttackRange > 0)
            return (int)attacker.TransformationAttackRange;

        return attacker.AttackRange > 0 ? attacker.AttackRange : 1;
    }

    /// <summary>
    /// Callback state. A class so the engine's <see langword="static"/> lambda stays
    /// closure-free — the delegate is cached by the JIT and the resolve path keeps
    /// its zero-allocation promise apart from this one small object.
    /// </summary>
    private sealed class ResolveState
    {
        public ResolveState(Entity attacker, Entity primaryTarget, Attack packet)
        {
            Attacker = attacker;
            PrimaryTarget = primaryTarget;
            Packet = packet;
        }

        public Entity Attacker { get; }
        public Entity PrimaryTarget { get; }
        public Attack Packet { get; }
        public bool Handled { get; set; }
    }
}
