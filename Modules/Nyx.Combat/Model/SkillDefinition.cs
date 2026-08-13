using System.Runtime.CompilerServices;

namespace Nyx.Combat.Model;

/// <summary>
/// How a skill picks its victims. Mirrors the <c>sort</c> column of <c>cq_magictype</c>.
/// </summary>
public enum SkillSort : byte
{
    None = 0,
    /// <summary>Single target.</summary>
    Attack = 1,
    /// <summary>Recover HP on the target.</summary>
    Recover = 2,
    /// <summary>Applies a status to the target.</summary>
    ApplyStatus = 3,
    /// <summary>Circle centred on the caster.</summary>
    Square = 4,
    /// <summary>Circle centred on the target tile.</summary>
    Circle = 5,
    /// <summary>Straight line from caster towards the target tile.</summary>
    Line = 6,
    /// <summary>Cone / fan-shaped sector in front of the caster.</summary>
    Sector = 8,
    /// <summary>Instant reposition then strike (dash / vortex / spirit).</summary>
    Dash = 10,
    /// <summary>Randomly bouncing multi-hit (e.g. Cyclone).</summary>
    Bomb = 15,
    /// <summary>Passive / self-buff, no direct damage.</summary>
    Passive = 21,
    /// <summary>Team / collective magic.</summary>
    Team = 26,
    /// <summary>Chain-hopping magic that jumps between nearby targets.</summary>
    Chain = 30,
}

/// <summary>Elemental attribute of a skill, from the <c>attr_type</c> column.</summary>
public enum ElementType : byte
{
    None = 0,
    Metal = 1,
    Wood = 2,
    Water = 3,
    Fire = 4,
    Earth = 5,
}

/// <summary>
/// One immutable row of <c>cq_magictype</c>, projected to exactly the fields the
/// combat engine reads.
/// </summary>
/// <remarks>
/// <para>
/// Sealed class rather than a struct: definitions are created once at load time
/// and thereafter only ever passed around by reference, so a single pointer copy
/// beats copying ~80 bytes per lookup. They are immutable and therefore safe to
/// share across every map thread with no locking.
/// </para>
/// <para>
/// This type is the engine's <i>only</i> source of skill data. There is no text
/// file loader, no fallback constants table: if a rank is missing from
/// <c>cq_magictype</c> the cast is rejected with
/// <see cref="RejectReason.UnknownSkill"/>.
/// </para>
/// </remarks>
public sealed class SkillDefinition
{
    public required SkillKey Key { get; init; }

    /// <summary>The <c>type</c> column: the skill id shared by every rank.</summary>
    public ushort Type => Key.Type;

    /// <summary>The <c>level</c> column: the rank, 0-based.</summary>
    public ushort Level => Key.Level;

    public string Name { get; init; } = string.Empty;

    public SkillSort Sort { get; init; }

    /// <summary>
    /// Raw <c>power</c> column. Conquer overloads this field:
    /// values above 30000 are a <i>percentage</i> of weapon damage
    /// (<c>power - 30000</c>), anything else is a flat addend.
    /// Pre-decoded into <see cref="PowerPercent"/> / <see cref="PowerFlat"/>.
    /// </summary>
    public int Power { get; init; }

    /// <summary>
    /// Weapon-damage multiplier in percent when <see cref="Power"/> encodes one
    /// (e.g. Fast Blade 110), otherwise 100.
    /// </summary>
    public int PowerPercent { get; init; } = 100;

    /// <summary>Flat damage addend when <see cref="Power"/> is not a percentage, otherwise 0.</summary>
    public int PowerFlat { get; init; }

    /// <summary>Proc / effect chance in percent, from the <c>percent</c> column.</summary>
    public byte Percent { get; init; }

    /// <summary>Radius of the area of effect, in tiles (<c>range</c> column).</summary>
    public byte Range { get; init; }

    /// <summary>Maximum cast distance to the target tile, in tiles (<c>distance</c> column).</summary>
    public byte Distance { get; init; }

    /// <summary>Hard cap on victims per cast (<c>target_num</c>); 0 = unlimited.</summary>
    public ushort MaxTargets { get; init; }

    /// <summary>Half-width of the sector for cone skills (<c>width</c>).</summary>
    public byte Width { get; init; }

    public ushort UseMana { get; init; }
    public ushort UseStamina { get; init; }
    public ushort NeedLevel { get; init; }
    public uint NeedProficiency { get; init; }

    /// <summary>Cooldown in milliseconds (<c>coldtime</c>, stored in seconds by some dumps).</summary>
    public uint CooldownMs { get; init; }

    /// <summary>Minimum interval between two uses of this skill, milliseconds (<c>atk_interval</c>).</summary>
    public uint IntervalMs { get; init; }

    /// <summary>Status id applied on hit (<c>status</c>), 0 = none.</summary>
    public uint Status { get; init; }

    public ElementType Element { get; init; }

    /// <summary>Elemental power (<c>attr_power</c>).</summary>
    public int ElementPower { get; init; }

    /// <summary>Raw <c>target</c> bitmask: which entity kinds may be hit.</summary>
    public uint TargetMask { get; init; }

    /// <summary>
    /// Weapon subtypes that may cast this skill, decoded from <c>weapon_subtype</c>.
    /// Empty means "any weapon". Legacy dumps pack two subtypes into one integer
    /// (<c>v % 1000</c> and <c>v / 1000 % 1000</c>); the loader unpacks them.
    /// </summary>
    public ushort RequiredWeapon1 { get; init; }

    /// <inheritdoc cref="RequiredWeapon1"/>
    public ushort RequiredWeapon2 { get; init; }

    /// <summary>True when the skill flags itself as a crime / PK-marking action.</summary>
    public bool IsCrime { get; init; }

    /// <summary>True when the skill may only be cast on the ground rather than an entity.</summary>
    public bool GroundOnly { get; init; }

    /// <summary>True when the skill may hit more than one victim.</summary>
    public bool IsMulti { get; init; }

    /// <summary>Whether the engine should resolve this as magic rather than a weapon strike.</summary>
    public bool IsMagic { get; init; }

    /// <summary>Whether this skill consumes XP (an "XP skill" such as Superman or Fatal Strike).</summary>
    public bool IsXpSkill { get; init; }

    /// <summary>Next rank auto-chained after this one (<c>next_magic</c>), 0 = none.</summary>
    public ushort NextMagic { get; init; }

    /// <summary>True when <see cref="Power"/> encoded a weapon-damage percentage.</summary>
    public bool ScalesWithWeapon => PowerFlat == 0 && PowerPercent != 100;

    /// <summary>True when this skill can hit an area rather than a single entity.</summary>
    public bool IsAreaOfEffect => Sort is SkillSort.Square or SkillSort.Circle or SkillSort.Line
                                        or SkillSort.Sector or SkillSort.Bomb or SkillSort.Chain
                                        or SkillSort.Team;

    /// <summary>
    /// Decodes the overloaded <c>power</c> column into its percentage / flat parts.
    /// </summary>
    public static (int percent, int flat) DecodePower(int power)
        => power > 30000 ? (power - 30000, 0) : (100, power);

    public override string ToString() => $"{Name} ({Key})";
}
