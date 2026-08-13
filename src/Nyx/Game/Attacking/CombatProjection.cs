using Nyx.Combat.Model;
using Nyx.Server.Network.GamePackets;

namespace Nyx.Server.Game.Attacking;

/// <summary>
/// Projects the live mutable <see cref="Entity"/> onto the immutable
/// <see cref="Combatant"/> snapshot <c>Nyx.Combat</c> resolves against.
/// </summary>
/// <remarks>
/// <para>
/// This is the whole reason the engine can be a standalone library: it never sees
/// an <see cref="Entity"/>, a <c>GameClient</c>, a packet or a lock. It sees a
/// 200-byte struct of numbers taken at one instant. Everything Conquer-specific
/// and everything mutable stays on this side of the wall.
/// </para>
/// <para>
/// Taking a snapshot also removes a whole class of race: the formula reads each
/// stat exactly once, so a buff expiring midway through a multi-target cast cannot
/// make the same skill compute two different defence values for two victims.
/// </para>
/// <para>
/// Allocation-free — a <see langword="readonly struct"/> built from field reads —
/// so the projection costs nothing per packet beyond the reads themselves.
/// </para>
/// </remarks>
public static class CombatProjection
{
    /// <summary>Builds the engine's view of an entity.</summary>
    public static Combatant ToCombatant(this Entity e)
    {
        if (e is null) return default;

        Client.GameClient? owner = e.Owner;
        bool isPlayer = e.EntityFlag == EntityFlag.Player;
        bool transformed = e.Transformed;

        // A transformation replaces the character's own offence and defence
        // wholesale, exactly as Battle/PvP.cs does before the formula runs.
        uint minAttack = transformed ? e.TransformationMinAttack : e.MinAttack;
        uint maxAttack = transformed ? e.TransformationMaxAttack : e.MaxAttack;
        ushort defence = transformed ? e.TransformationDefence : e.Defence;

        return new Combatant
        {
            Id = e.UID,
            Kind = ResolveKind(e),
            Flags = ResolveFlags(e, isPlayer, transformed),

            X = e.X,
            Y = e.Y,
            MapId = e.MapID,

            Level = e.Level,
            Metempsychosis = e.Reborn,
            BattlePower = Clamp16(e.BattlePower),
            Profession = e.Class,
            WeaponSubtype = owner is null ? (ushort)0 : (ushort)(owner.WeaponLook / 1000),
            OffhandSubtype = owner is null ? (ushort)0 : (ushort)(owner.WeaponLook2 / 1000),

            Life = (int)e.Hitpoints,
            MaxLife = (int)(transformed && e.TransformationMaxHP > 0 ? e.TransformationMaxHP : e.MaxHitpoints),
            Mana = e.Mana,
            Stamina = e.Stamina,

            MinAttack = (int)minAttack,
            MaxAttack = (int)maxAttack,
            MagicAttack = (int)e.MagicAttack,
            FinalAttack = e.FinalDmgPlus,
            FinalMagicAttack = e.FinalMagicDmgPlus,

            Defence = defence,
            MagicDefence = e.MagicDefence,
            MagicDefenceBonus = (byte)Math.Clamp((int)e.MagicDefencePercent, 0, 255),
            FinalDefence = e.FinalDmgReduct,
            FinalMagicDefence = e.FinalMagicDmgReduct,
            Block = e.Block,

            Accuracy = e.Accuracy,
            Dodge = e.Dodge,
            Weight = (int)e.Weight,

            CriticalStrike = Clamp16(e.CriticalStrike),
            SkillCriticalStrike = Clamp16(e.SkillCStrike),
            Immunity = Clamp16(e.Immunity),
            Penetration = Clamp16(e.Penetration),
            Breakthrough = Clamp16(e.Breaktrough),
            Counteraction = Clamp16(e.Counteraction),
            ShieldBlockPercent = e.ShieldBlockPercent,

            Blessing = ResolveBlessing(e),
            ExtraDamage = ResolveExtraDamage(e),
            MagicDamageIncrease = (byte)Math.Clamp((int)e.MagicDamageIncrease, 0, 255),
            MagicDamageDecrease = (byte)Math.Clamp((int)e.MagicDamageDecrease, 0, 255),
            AzureShield = e.AzureShieldDefence,

            PackedGems = PackGems(e),
        };
    }

    /// <summary>
    /// Maps the server's <see cref="EntityFlag"/> onto the engine's
    /// <see cref="EntityKind"/>. The two enums deliberately do not share numbering:
    /// the server's <c>Bot = 3</c> collides with the engine's <c>Structure = 3</c>,
    /// so this must stay an explicit switch rather than a cast.
    /// </summary>
    private static EntityKind ResolveKind(Entity e) => e.EntityFlag switch
    {
        // A bot is a scripted player and takes the player formula.
        EntityFlag.Player or EntityFlag.Bot => EntityKind.Player,
        EntityFlag.Monster => e.Companion ? EntityKind.Pet : EntityKind.Monster,
        _ => EntityKind.Unknown,
    };

    private static CombatFlags ResolveFlags(Entity e, bool isPlayer, bool transformed)
    {
        CombatFlags flags = CombatFlags.None;

        if (e.Dead || e.ContainsFlag(Update.Flags.Dead)) flags |= CombatFlags.Dead;

        if (e.ContainsFlag(Update.Flags.Freeze)
            || e.ContainsFlag(Update.Flags.Stun)
            || e.ContainsFlag(Update.Flags.ChaosCycle))
            flags |= CombatFlags.Disabled;

        if (e.ContainsFlag(Update.Flags.Superman)) flags |= CombatFlags.Superman;
        if (e.ContainsFlag(Update.Flags.Stigma)) flags |= CombatFlags.Stigma;
        if (e.ContainsFlag(Update.Flags.Intensify)) flags |= CombatFlags.Intensify;
        if (e.ContainsFlag(Update.Flags.MagicShield)) flags |= CombatFlags.MagicShield;
        if (e.ContainsFlag(Update.Flags.ShurikenVortex)) flags |= CombatFlags.VortexGuard;

        if (e.ContainsFlag(Update.Flags.GodlyShield)
            || e.ContainsFlag(Update.Flags.DivineShield))
            flags |= CombatFlags.Invincible;

        if (e.IsShieldBlock) flags |= CombatFlags.ShieldBlock;
        if (e.AzureShieldDefence > 0) flags |= CombatFlags.AzureShield;
        if (transformed) flags |= CombatFlags.Transformed;

        if (isPlayer)
        {
            if (e.IsBowEquipped) flags |= CombatFlags.Bowman;
            if (e.Assassin()) flags |= CombatFlags.Assassin;
        }
        else
        {
            if (e.Boss == 1) flags |= CombatFlags.Boss;
            if (e.MonsterInfo is { Guard: true }) flags |= CombatFlags.Guard;
            if (e.Name is not null && e.Name.Contains("Guard", StringComparison.Ordinal))
                flags |= CombatFlags.Guard;
        }

        return flags;
    }

    /// <summary>
    /// The live server stores blessing as a <i>multiplier</i> that starts at 1.0 and
    /// is decremented towards 0 (<c>ItemBless -= bless / 100</c>), then multiplies
    /// damage by it. The engine expects a percentage reduction, so this inverts it.
    /// </summary>
    private static byte ResolveBlessing(Entity e)
    {
        double multiplier = e.ItemBless;

        // PacketHandler has a GM path that sets ItemBless to ushort.MaxValue, which
        // would otherwise invert into a nonsensical negative reduction.
        if (multiplier >= 1.0 || multiplier < 0.0) return 0;

        int percent = (int)Math.Round((1.0 - multiplier) * 100.0);
        return (byte)Math.Clamp(percent, 0, 100);
    }

    /// <summary>
    /// Monster "extra damage", used only by the MvP battle-power scaling term.
    /// Derived from the monster's own attack table rather than a dedicated column,
    /// which the live schema does not have.
    /// </summary>
    private static byte ResolveExtraDamage(Entity e)
    {
        if (e.EntityFlag == EntityFlag.Player || e.MonsterInfo is null) return 0;

        // Scale the mob's peak hit into the 0..100 band the MvP term expects.
        uint peak = e.MonsterInfo.MaxAttack;
        if (peak == 0) return 0;

        return (byte)Math.Clamp(peak / 100, 0, 100);
    }

    /// <summary>
    /// Packs the eight damage-relevant gem families into one <see cref="ulong"/>.
    /// The engine's <see cref="GemKind"/> ordering matches <c>GemTypes</c> exactly
    /// for indices 0-7, but the live array is <c>int[]</c> with values well above
    /// 255 (a full Dragon set reaches 210+), so each is clamped rather than cast.
    /// </summary>
    private static ulong PackGems(Entity e)
    {
        int[]? gems = e.Gems;
        if (gems is null) return 0;

        ulong packed = 0;
        int count = Math.Min(gems.Length, 8);

        for (int i = 0; i < count; i++)
        {
            int value = gems[i];
            if (value <= 0) continue;
            if (value > 255) value = 255;
            packed |= (ulong)(byte)value << (i << 3);
        }

        return packed;
    }

    private static ushort Clamp16(int value)
        => value <= 0 ? (ushort)0 : value >= ushort.MaxValue ? ushort.MaxValue : (ushort)value;
}
