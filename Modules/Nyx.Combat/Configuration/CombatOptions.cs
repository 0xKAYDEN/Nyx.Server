namespace Nyx.Combat.Configuration;

/// <summary>
/// Every tunable constant in the damage model, in one place.
/// </summary>
/// <remarks>
/// <para>
/// Conquer private servers differ mostly in their numbers, not their structure.
/// Hard-coding <c>0.70</c> and <c>0.50</c> for rebirth multipliers deep inside a
/// calculator is what makes a formula un-reviewable, so every magic number the
/// model uses is surfaced here with the live server's value as the default.
/// </para>
/// <para>
/// The instance is created once at boot and shared read-only by every thread; the
/// calculators only ever read it. Defaults reproduce the current
/// <c>src/Nyx/Game/Attacking/Battle/*</c> behaviour so switching the engine on is
/// a no-op for players until an operator deliberately retunes something.
/// </para>
/// </remarks>
public sealed record CombatOptions
{
    /// <summary>The stock configuration: matches the live Nyx formula.</summary>
    public static CombatOptions Default { get; } = new();

    // ---- rebirth ---------------------------------------------------------

    /// <summary>Damage multiplier against a first-rebirth target.</summary>
    public double FirstRebirthReduction { get; init; } = 0.70;

    /// <summary>Damage multiplier against a second-or-later-rebirth target.</summary>
    public double SecondRebirthReduction { get; init; } = 0.50;

    // ---- battle power ----------------------------------------------------

    /// <summary>
    /// Battle-power model. The legacy Nyx formula is exponential
    /// (<c>2^(Δbp/12)</c>, capped) and scales violently; the retail-accurate
    /// model is a bounded linear reduction. Defaults to the legacy one so
    /// enabling the engine changes nothing until an operator opts in.
    /// </summary>
    public BattlePowerModel BattlePowerModel { get; init; } = BattlePowerModel.LegacyExponential;

    /// <summary>Divisor of the exponential BP term: <c>2^(Δbp / divisor)</c>.</summary>
    public double BattlePowerExponentDivisor { get; init; } = 12.0;

    /// <summary>Hard cap on the exponential BP multiplier.</summary>
    public double BattlePowerMaxMultiplier { get; init; } = 100.0;

    /// <summary>Retail model: maximum BP delta counted on physical hits.</summary>
    public int BattlePowerPhysicalCap { get; init; } = 25;

    /// <summary>Retail model: percent reduction per point of BP delta on physical hits.</summary>
    public int BattlePowerPhysicalStep { get; init; } = 2;

    /// <summary>Retail model: maximum BP delta counted on magic hits.</summary>
    public int BattlePowerMagicCap { get; init; } = 50;

    /// <summary>Retail model: percent reduction per point of BP delta on magic hits.</summary>
    public int BattlePowerMagicStep { get; init; } = 1;

    // ---- refinery / chi --------------------------------------------------

    /// <summary>Damage bonus of a critical strike, in percent.</summary>
    public int CriticalBonusPercent { get; init; } = 50;

    /// <summary>Damage bonus of a magic penetration proc, in percent.</summary>
    public int PenetrationBonusPercent { get; init; } = 50;

    /// <summary>
    /// Divisor applied to the crit / immunity difference before rolling.
    /// The live server uses <c>crit/400 - immunity/400</c>.
    /// </summary>
    public double CriticalRateDivisor { get; init; } = 400.0;

    /// <summary>Divisor applied to the breakthrough / counteraction difference before rolling.</summary>
    public double BreakthroughRateDivisor { get; init; } = 10.0;

    // ---- lucky -----------------------------------------------------------

    /// <summary>Chance in percent that a basic strike from a blessed attacker doubles.</summary>
    public double LuckyChanceBasic { get; init; } = 5.0;

    /// <summary>Chance in percent that a skill from a blessed attacker doubles.</summary>
    public double LuckyChanceSkill { get; init; } = 10.0;

    /// <summary>Damage multiplier of a lucky strike.</summary>
    public int LuckyMultiplier { get; init; } = 2;

    // ---- gems ------------------------------------------------------------

    /// <summary>Dragon gem total at which the extra flat bonus kicks in.</summary>
    public int DragonGemThreshold { get; init; } = 210;

    /// <summary>Extra percent granted once <see cref="DragonGemThreshold"/> is reached.</summary>
    public int DragonGemBonusPercent { get; init; } = 50;

    /// <summary>Phoenix gem total at which the extra magic bonus kicks in.</summary>
    public int PhoenixGemThreshold { get; init; } = 180;

    /// <summary>Extra magic damage divisor once <see cref="PhoenixGemThreshold"/> is reached.</summary>
    public int PhoenixGemBonusDivisor { get; init; } = 20;

    /// <summary>Floor on the tortoise-gem multiplier, so it can never zero out damage.</summary>
    public double TortoiseGemFloor { get; init; } = 0.5;

    // ---- hit rate --------------------------------------------------------

    /// <summary>Whether to run an explicit hit/dodge roll before computing damage.</summary>
    public bool EnableHitRateRoll { get; init; } = true;

    /// <summary>Floor on hit rate, in percent.</summary>
    public int MinHitRate { get; init; } = 40;

    /// <summary>Floor on hit rate for a bowman shooting a shield user, in percent.</summary>
    public int MinHitRateBowVsShield { get; init; } = 25;

    /// <summary>Ceiling on hit rate, in percent. Nothing is ever unmissable by stats alone.</summary>
    public int MaxHitRate { get; init; } = 99;

    /// <summary>Flat hit-rate bonus a player gets when attacking a non-player.</summary>
    public int PlayerVsNonPlayerHitBonus { get; init; } = 60;

    // ---- ranged ----------------------------------------------------------

    /// <summary>Output multiplier applied when a bowman shoots a player (retail's ×0.1125).</summary>
    public double BowmanVsPlayerMultiplier { get; init; } = 0.1125;

    /// <summary>Whether to apply <see cref="BowmanVsPlayerMultiplier"/> at all.</summary>
    public bool EnableBowmanPvpPenalty { get; init; }

    /// <summary>Divisor of the target's dodge in the ranged evasion term.</summary>
    public double RangedDodgeDivisor { get; init; } = 1000.0;

    /// <summary>Divisor of the target's weight in the ranged evasion term.</summary>
    public double RangedWeightDivisor { get; init; } = 100.0;

    /// <summary>Extra multiplier applied to ranged skill damage on the live path.</summary>
    public double RangedSkillMultiplier { get; init; } = 0.10;

    // ---- magic -----------------------------------------------------------

    /// <summary>Global multiplier on magic skill damage (the live server's ×0.65 balance knob).</summary>
    public double MagicSkillMultiplier { get; init; } = 0.65;

    /// <summary>Cap on the percentage magic resistance a target can benefit from.</summary>
    public int MaxMagicDefenceBonus { get; init; } = 90;

    // ---- pvm -------------------------------------------------------------

    /// <summary>Damage multiplier against a boss on a physical hit.</summary>
    public int BossPhysicalMultiplier { get; init; } = 4;

    /// <summary>Damage multiplier against a boss on a magic hit.</summary>
    public int BossMagicMultiplier { get; init; } = 10;

    /// <summary>Multiplier applied when the attacker's battle power is below the monster's level.</summary>
    public double UnderpoweredPvmMultiplier { get; init; } = 0.01;

    /// <summary>
    /// Caps a single hit on a monster at this percentage of its maximum life.
    /// 0 disables the cap. Retail uses a per-monster "disdain" table; a flat cap is
    /// the sane default for a private server.
    /// </summary>
    public int PvmDamageCapPercentOfMaxLife { get; init; }

    // ---- mvp -------------------------------------------------------------

    /// <summary>Base minimum damage a monster deals to a player.</summary>
    public int MonsterMinimumDamage { get; init; } = 7;

    /// <summary>Players at or below this level are exempt from the monster damage floor.</summary>
    public int MonsterMinimumDamageLevelExemption { get; init; } = 15;

    /// <summary>Monster level used as the ceiling when comparing name colours.</summary>
    public int MonsterLevelComparisonCap { get; init; } = 120;

    // ---- action rate limits ---------------------------------------------

    /// <summary>
    /// Floor between two basic melee strikes, in milliseconds.
    /// </summary>
    /// <remarks>
    /// These are anti-speedhack floors, not gameplay pacing. A legitimate client
    /// sends attacks on its own animation timer; a modified one sends them as fast
    /// as the socket allows. Enforcing the floor server-side means the worst a
    /// speedhack achieves is wasted bandwidth.
    /// </remarks>
    public uint MeleeCooldownMs { get; init; } = 500;

    /// <summary>Floor between two basic ranged shots, in milliseconds.</summary>
    public uint RangedCooldownMs { get; init; } = 800;

    /// <summary>Floor between two magic casts, in milliseconds.</summary>
    public uint MagicCooldownMs { get; init; } = 1_000;

    /// <summary>
    /// Fallback floor for a skill whose <c>cq_magictype</c> row declares neither a
    /// <c>coldtime</c> nor an <c>atk_interval</c>.
    /// </summary>
    public uint DefaultSkillCooldownMs { get; init; } = 2_000;

    /// <summary>
    /// Whether the basic-attack floors above are enforced. Off by default: the live
    /// server already paces attacks elsewhere, and double-gating would halve
    /// everyone's attack speed the moment the engine is switched on.
    /// </summary>
    public bool EnforceBasicAttackCooldowns { get; init; }

    // ---- misc ------------------------------------------------------------

    /// <summary>Chance in percent that Dragon Swing nullifies an incoming hit.</summary>
    public double DragonSwingNullifyChance { get; init; } = 20.0;

    /// <summary>Whether Assassins bypass the boss damage multiplier, as on the live path.</summary>
    public bool AssassinsBypassBossMultiplier { get; init; } = true;

    /// <summary>Global multiplier applied to every final damage number. The operator's big red knob.</summary>
    public double GlobalDamageMultiplier { get; init; } = 1.0;
}

/// <summary>Which battle-power reduction curve the engine uses.</summary>
public enum BattlePowerModel : byte
{
    /// <summary>No battle-power adjustment at all.</summary>
    Disabled = 0,

    /// <summary>
    /// The current Nyx behaviour: <c>damage *= 2^(Δbp / 12)</c>, capped.
    /// Exponential and extremely swingy, but it is what live players are used to.
    /// </summary>
    LegacyExponential = 1,

    /// <summary>
    /// The retail curve: a bounded linear reduction of the victim's incoming damage
    /// (physical <c>min(25, Δ) × 2%</c>, magic <c>min(50, Δ) × 1%</c>).
    /// </summary>
    RetailLinear = 2,
}
