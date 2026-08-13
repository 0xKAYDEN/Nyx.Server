using System.Runtime.CompilerServices;

namespace Nyx.Combat.Model;

/// <summary>
/// An immutable, cache-friendly snapshot of everything the damage formula needs
/// to know about one participant in a single exchange.
/// </summary>
/// <remarks>
/// <para>
/// This is deliberately a <see langword="readonly struct"/> containing no
/// reference fields: a whole attack can be resolved without touching a single
/// managed object, so the engine costs zero GC allocations per hit and the JIT
/// can keep hot fields in registers. Always pass it with <see langword="in"/> to
/// avoid defensive copies.
/// </para>
/// <para>
/// Built with an object initializer, so adding a stat later never breaks a call
/// site:
/// <code>
/// var atk = new Combatant { Id = e.UID, Kind = EntityKind.Player, Level = e.Level, ... };
/// </code>
/// </para>
/// <para>
/// The host projects one of these per attack from its live <c>Entity</c>. The
/// engine never reaches back into game state, which is what makes it trivially
/// unit-testable and safe to run off the map thread.
/// </para>
/// </remarks>
public readonly struct Combatant
{
    // ---- identity -------------------------------------------------------

    public uint Id { get; init; }
    public EntityKind Kind { get; init; }
    public CombatFlags Flags { get; init; }

    // ---- position -------------------------------------------------------

    public ushort X { get; init; }
    public ushort Y { get; init; }
    public ushort MapId { get; init; }

    // ---- progression ----------------------------------------------------

    public ushort Level { get; init; }

    /// <summary>Rebirth count. 0 = first life, 1 = 1st reborn, 2+ = 2nd reborn.</summary>
    public byte Metempsychosis { get; init; }

    public ushort BattlePower { get; init; }
    public byte Profession { get; init; }

    /// <summary>Weapon subtype of the right hand (500 = bow, 613 = assassin blade, ...).</summary>
    public ushort WeaponSubtype { get; init; }

    /// <summary>Weapon subtype of the left hand; 0 when empty or a shield.</summary>
    public ushort OffhandSubtype { get; init; }

    // ---- vitals ---------------------------------------------------------

    public int Life { get; init; }
    public int MaxLife { get; init; }
    public int Mana { get; init; }
    public int Stamina { get; init; }

    // ---- offence --------------------------------------------------------

    public int MinAttack { get; init; }
    public int MaxAttack { get; init; }
    public int MagicAttack { get; init; }

    /// <summary>Flat "final attack" bonus (Chi fan). Added after all scaling.</summary>
    public int FinalAttack { get; init; }

    /// <summary>Flat "final magic attack" bonus. Added after all scaling on magic hits.</summary>
    public int FinalMagicAttack { get; init; }

    // ---- defence --------------------------------------------------------

    public int Defence { get; init; }
    public int MagicDefence { get; init; }

    /// <summary>Percentage magic resistance, 0..100. The formula caps its effect at 90%.</summary>
    public byte MagicDefenceBonus { get; init; }

    /// <summary>Flat "final damage reduction" (Chi tower). Subtracted last.</summary>
    public int FinalDefence { get; init; }

    /// <summary>Flat "final magic damage reduction". Subtracted last on magic hits.</summary>
    public int FinalMagicDefence { get; init; }

    /// <summary>Shield block value: flat subtraction on magic, roll-based halving on physical.</summary>
    public int Block { get; init; }

    // ---- accuracy / evasion --------------------------------------------

    public int Accuracy { get; init; }
    public int Dodge { get; init; }

    /// <summary>Armour weight; feeds the ranged evasion term.</summary>
    public int Weight { get; init; }

    // ---- refinery / Chi attributes --------------------------------------

    /// <remarks>
    /// These are <see cref="ushort"/> rather than <see cref="byte"/> because the
    /// live server stores them in hundredths of a percent — a fully refined
    /// character carries a Critical Strike of 1500, which a byte would silently
    /// truncate to 220. The divisors in
    /// <see cref="Configuration.CombatOptions"/> convert them to a roll.
    /// </remarks>
    public ushort CriticalStrike { get; init; }
    public ushort SkillCriticalStrike { get; init; }
    public ushort Immunity { get; init; }
    public ushort Penetration { get; init; }
    public ushort Breakthrough { get; init; }
    public ushort Counteraction { get; init; }
    public ushort ShieldBlockPercent { get; init; }

    // ---- damage percentages --------------------------------------------

    /// <summary>Heaven Blessing / bless equipment: percent reduction of incoming damage, 0..100.</summary>
    public byte Blessing { get; init; }

    /// <summary>Monster "extra damage" percent; feeds the MvP battle-power scaling term.</summary>
    public byte ExtraDamage { get; init; }

    /// <summary>Percent bonus to outgoing magic damage.</summary>
    public byte MagicDamageIncrease { get; init; }

    /// <summary>Percent reduction of incoming magic damage.</summary>
    public byte MagicDamageDecrease { get; init; }

    /// <summary>Remaining Azure Shield absorb pool.</summary>
    public int AzureShield { get; init; }

    /// <summary>
    /// Eight gem percentages packed one-per-byte, indexed by <see cref="GemKind"/>.
    /// Build it with <see cref="PackGems"/>; read it with <see cref="Gem"/>.
    /// </summary>
    public ulong PackedGems { get; init; }

    /// <summary>Socket gem power for a family, in percent. Branch-free byte extraction.</summary>
    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public byte Gem(GemKind kind) => (byte)(PackedGems >> (((int)kind) << 3));

    /// <summary>Packs eight gem percentages into the single <see cref="ulong"/> <see cref="PackedGems"/> expects.</summary>
    public static ulong PackGems(
        byte phoenix = 0, byte dragon = 0, byte fury = 0, byte rainbow = 0,
        byte kylin = 0, byte violet = 0, byte moon = 0, byte tortoise = 0)
        => phoenix
         | ((ulong)dragon << 8)
         | ((ulong)fury << 16)
         | ((ulong)rainbow << 24)
         | ((ulong)kylin << 32)
         | ((ulong)violet << 40)
         | ((ulong)moon << 48)
         | ((ulong)tortoise << 56);

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public bool Has(CombatFlags flag) => (Flags & flag) != 0;

    public bool IsAlive
    {
        [MethodImpl(MethodImplOptions.AggressiveInlining)]
        get => Life > 0 && (Flags & CombatFlags.Dead) == 0;
    }

    public bool IsPlayer
    {
        [MethodImpl(MethodImplOptions.AggressiveInlining)]
        get => Kind == EntityKind.Player;
    }

    /// <summary>Squared euclidean distance to another combatant. Avoids a sqrt on the hot path.</summary>
    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public int DistanceSquaredTo(in Combatant other)
    {
        int dx = X - other.X;
        int dy = Y - other.Y;
        return (dx * dx) + (dy * dy);
    }
}
