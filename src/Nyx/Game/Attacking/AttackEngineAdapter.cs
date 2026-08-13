using Nyx.AttackEngine.Caching;
using Nyx.AttackEngine.Combat;
using Nyx.AttackEngine.Database.Model;
using Nyx.Server.Game;
using Nyx.Server.Network.GamePackets;

namespace Nyx.Server.Game.Attacking;

/// <summary>
/// Bridges the live server (Entity + Attack packet) to Nyx.AttackEngine.
/// Builds an AttackContext from the real combatant stats, runs the pipeline,
/// and writes the resulting AttackResult back onto the outgoing Attack packet.
///
/// Invoked only when Combat.UseAttackEngine is enabled; the legacy Handle.cs
/// path remains the default until the engine's damage formula is verified
/// against the original MyMath calculations.
/// </summary>
public sealed class AttackEngineAdapter
{
    private readonly SkillDataCache _cache;
    private readonly AttackPipeline _pipeline;

    public AttackEngineAdapter(SkillDataCache cache, AttackPipeline pipeline)
    {
        _cache = cache;
        _pipeline = pipeline;
    }

    /// <summary>
    /// Resolves the skill (by type+level) the packet refers to. Returns false
    /// if the skill is unknown to the cache (caller should fall back to Handle).
    /// </summary>
    public bool TryResolveSkill(ushort type, byte level, out MagicType skill)
        => _cache.TryGet(type, level, out skill!);

    /// <summary>
    /// Builds the context and runs the pipeline. The resulting AttackResult is
    /// written back onto <paramref name="packet"/> for the client. Returns the
    /// pipeline outcome so the caller can decide how to proceed on failure.
    /// </summary>
    public AttackOutcome Resolve(Entity attacker, Entity target, Network.GamePackets.Attack packet, out AttackResult result)
    {
        var isMagic = packet.AttackType == Network.GamePackets.Attack.Magic;

        if (!_cache.TryGet(packet.MagicType, (byte)packet.MagicLevel, out var skill))
        {
            result = default;
            return AttackOutcome.FailedValidation_LevelTooLow; // signal: unknown skill
        }

        var mode = ResolveMode(attacker, target);

        var ctx = new AttackContext
        {
            AttackerId = attacker.UID,
            TargetId = target.UID,
            Mode = mode,
            MapId = attacker.MapID,
            Skill = skill,

            AttackerAtk = (int)((attacker.MinAttack + attacker.MaxAttack) / 2),
            AttackerMagicAtk = (int)attacker.MagicAttack,
            AttackerLevel = attacker.Level,
            AttackerProficiencyLevel = ResolveProficiencyLevel(attacker, skill.WeaponSubtype),
            AttackerCurrentMp = attacker.Mana,
            AttackerCurrentEp = 0, // EP semantics tracked separately (Energy); 0 until reconciled
            AttackerHasCorrectWeapon = HasCorrectWeapon(attacker, skill.WeaponSubtype),
            IsMagic = isMagic,

            TargetDefense = target.Defence,
            TargetMagicDefense = target.MagicDefence,
            TargetHp = (int)target.Hitpoints,
            TargetMaxHp = (int)target.MaxHitpoints,
            TargetIsPlayer = target.EntityFlag == EntityFlag.Player,
        };

        var outcome = _pipeline.Execute(in ctx, out result);

        if (outcome == AttackOutcome.Success)
            ApplyToPacket(result, packet);

        return outcome;
    }

    /// <summary>
    /// Maps AttackResult fields onto the outgoing Attack packet the client reads.
    /// </summary>
    private static void ApplyToPacket(AttackResult result, Network.GamePackets.Attack packet)
    {
        packet.Damage = (uint)result.Damage;
        if (result.IsCritical)
            packet.Effect1 |= Network.GamePackets.Attack.AttackEffects1.CriticalStrike;
        // IsMiss: melee packet has no Hit flag; Damage=0 conveys a miss.
        if (result.IsMiss)
            packet.Damage = 0;
        if (result.TargetKilled)
            packet.AttackType = Network.GamePackets.Attack.Kill;
    }

    private static AttackMode ResolveMode(Entity attacker, Entity target)
    {
        if (target.EntityFlag == EntityFlag.Player)
            return AttackMode.Pvp;
        // Mvp: target is a boss-type monster (see Entity.cs / MonsterInformation.Boss)
        if (target.Boss == 1)
            return AttackMode.Mvp;
        return AttackMode.Pve;
    }

    private static byte ResolveProficiencyLevel(Entity attacker, long weaponSubtype)
    {
        // Proficiency is tracked per weapon-subtype on the client. The proficiency
        // ID equals the weapon subtype. Monsters have no client -> 0.
        if (attacker.Owner is not Client.GameClient client) return 0;
        if (client.Proficiencies.TryGetValue((ushort)weaponSubtype, out var prof))
            return prof.Level;
        return 0;
    }

    private static bool HasCorrectWeapon(Entity attacker, long weaponSubtype)
    {
        if (weaponSubtype == 0) return true;
        if (attacker.Owner is not Client.GameClient client) return true;
        // Equipped weapon subtypes are the item-id / 1000 (mirrors Handle.cs checks).
        var firstSub = (ushort)(client.WeaponLook / 1000);
        var secondSub = (ushort)(client.WeaponLook2 / 1000);
        return firstSub == weaponSubtype || secondSub == weaponSubtype;
    }
}
