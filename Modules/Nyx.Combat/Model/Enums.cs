namespace Nyx.Combat.Model;

/// <summary>What kind of actor a combatant is. Drives scenario selection.</summary>
public enum EntityKind : byte
{
    Unknown = 0,
    Player = 1,
    Monster = 2,
    /// <summary>Static object (guard tower, city gate, pole, siege target).</summary>
    Structure = 3,
    /// <summary>Player-owned pet / call-guard, treated as a monster that belongs to a player.</summary>
    Pet = 4,
}

/// <summary>
/// The four combat scenarios Conquer distinguishes. Each one has its own
/// post-mitigation adjustment rules (level bonuses, floors, caps).
/// </summary>
public enum CombatScenario : byte
{
    /// <summary>Player -> player.</summary>
    PvP = 0,
    /// <summary>Player -> monster.</summary>
    PvM = 1,
    /// <summary>Monster -> player.</summary>
    MvP = 2,
    /// <summary>Player -> static object (SobNpc / gate / pole).</summary>
    PvE = 3,
}

/// <summary>Physical melee, physical ranged or magic. Selects the damage formula.</summary>
public enum AttackKind : byte
{
    Melee = 0,
    Ranged = 1,
    Magic = 2,
}

/// <summary>
/// Effect bits reported back to the host so it can fill MsgAttack.Effect1 /
/// MsgMagicEffect. Values are engine-local; the host adapter maps them onto the
/// wire constants (see README, "Wire mapping").
/// </summary>
[Flags]
public enum HitEffects : ushort
{
    None = 0,
    Block = 1 << 0,
    Penetration = 1 << 1,
    CriticalStrike = 1 << 2,
    Immunity = 1 << 3,
    Breakthrough = 1 << 4,
    MetalResist = 1 << 5,
    WoodResist = 1 << 6,
    WaterResist = 1 << 7,
    FireResist = 1 << 8,
    EarthResist = 1 << 9,
    Lucky = 1 << 10,
    Dodged = 1 << 11,
}

/// <summary>Why an attack produced no damage.</summary>
public enum AttackStatus : byte
{
    Hit = 0,
    /// <summary>Target evaded (hit-rate roll failed).</summary>
    Miss = 1,
    /// <summary>Rejected before any math ran (range, cooldown, mp, target state...).</summary>
    Rejected = 2,
    /// <summary>Fully absorbed (azure shield, immunity, invincible flag).</summary>
    Absorbed = 3,
}

/// <summary>Reason an attack was rejected. Lets the host pick the right error packet.</summary>
public enum RejectReason : byte
{
    None = 0,
    NoTarget = 1,
    TargetDead = 2,
    AttackerDead = 3,
    OutOfRange = 4,
    NotHostile = 5,
    UnknownSkill = 6,
    SkillLevelNotLearned = 7,
    OnCooldown = 8,
    NotEnoughMana = 9,
    NotEnoughStamina = 10,
    WrongWeapon = 11,
    LevelTooLow = 12,
    TargetInvalidForSkill = 13,
    AttackerDisabled = 14,
}

/// <summary>Status bits that change the math. Mirrors the Conquer status flags the formula reads.</summary>
[Flags]
public enum CombatFlags : uint
{
    None = 0,
    Dead = 1u << 0,
    /// <summary>Cannot act (freeze / confuse / stun / paralysis).</summary>
    Disabled = 1u << 1,
    /// <summary>Superman / Oblivion: raw physical output multiplier.</summary>
    Superman = 1u << 2,
    /// <summary>Stigma buff on the attacker.</summary>
    Stigma = 1u << 3,
    /// <summary>Intensify buff on the attacker.</summary>
    Intensify = 1u << 4,
    /// <summary>Magic Shield on the target (defence multiplier).</summary>
    MagicShield = 1u << 5,
    /// <summary>Shield / Fend buff: halves incoming physical.</summary>
    ShieldBlock = 1u << 6,
    /// <summary>Target is invincible / god mode.</summary>
    Invincible = 1u << 7,
    /// <summary>Target carries an Azure Shield absorbing pool.</summary>
    AzureShield = 1u << 8,
    /// <summary>Shurikin Vortex: incoming damage pinned to 1.</summary>
    VortexGuard = 1u << 9,
    /// <summary>Dragon Swing: chance to nullify incoming damage.</summary>
    DragonSwing = 1u << 10,
    /// <summary>Target is a boss monster (scenario multipliers apply).</summary>
    Boss = 1u << 11,
    /// <summary>Target is a guard / patrol NPC (cannot be fatal-struck for free).</summary>
    Guard = 1u << 12,
    /// <summary>Attacker is transformed; transformation attack range overrides gear.</summary>
    Transformed = 1u << 13,
    /// <summary>Attacker is an assassin (skips boss damage multiplier, as in the live path).</summary>
    Assassin = 1u << 14,
    /// <summary>Target holds a shield (bowman hit-rate penalty applies).</summary>
    HoldingShield = 1u << 15,
    /// <summary>Attacker's weapon is a bow / crossbow.</summary>
    Bowman = 1u << 16,
    /// <summary>Immune to the "green name" level bonus (event mobs, training dummies).</summary>
    NoLevelBonus = 1u << 17,
}

/// <summary>Socket gem families that participate in the damage chain.</summary>
public enum GemKind : byte
{
    Phoenix = 0,
    Dragon = 1,
    Fury = 2,
    Rainbow = 3,
    Kylin = 4,
    Violet = 5,
    Moon = 6,
    Tortoise = 7,
}
