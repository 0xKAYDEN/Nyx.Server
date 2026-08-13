namespace Nyx.Combat.Model;

/// <summary>
/// The outcome of one attack against one victim.
/// </summary>
/// <remarks>
/// 24 bytes, no references: it fits in registers, can live in a stack buffer for
/// area-of-effect casts, and is copied rather than pointer-chased.
/// </remarks>
public readonly struct HitResult
{
    /// <summary>The victim.</summary>
    public required uint TargetId { get; init; }

    /// <summary>Final damage after every modifier. Always ≥ 1 on a hit, 0 otherwise.</summary>
    public required int Damage { get; init; }

    /// <summary>Hit / miss / rejected / absorbed.</summary>
    public required AttackStatus Status { get; init; }

    /// <summary>Effect bits for the outgoing packet (crit, block, break, immunity...).</summary>
    public HitEffects Effects { get; init; }

    /// <summary>True when this blow reduced the victim to zero life.</summary>
    public bool IsKill { get; init; }

    /// <summary>Damage absorbed by an Azure Shield before the victim's life was touched.</summary>
    public int AbsorbedByShield { get; init; }

    public static HitResult Missed(uint targetId) => new()
    {
        TargetId = targetId,
        Damage = 0,
        Status = AttackStatus.Miss,
        Effects = HitEffects.Dodged,
    };

    public static HitResult Blocked(uint targetId) => new()
    {
        TargetId = targetId,
        Damage = 0,
        Status = AttackStatus.Absorbed,
        Effects = HitEffects.Immunity,
    };
}

/// <summary>
/// The outcome of one attack <i>action</i>, which may have produced several hits.
/// </summary>
/// <remarks>
/// The hits themselves live in a buffer owned by the caller (usually a
/// <c>stackalloc</c> or a pooled array), so a 20-target Cyclone allocates nothing.
/// </remarks>
public readonly ref struct AttackOutcome
{
    /// <summary>The hits produced, in resolution order. Empty when the action was rejected.</summary>
    public readonly ReadOnlySpan<HitResult> Hits;

    /// <summary>Why the action produced nothing, when it was rejected.</summary>
    public readonly RejectReason Reason;

    /// <summary>The skill actually resolved, or <see langword="null"/> for a basic strike.</summary>
    public readonly SkillDefinition? Skill;

    /// <summary>Mana the caster must be charged for this action.</summary>
    public readonly int ManaCost;

    /// <summary>Stamina the caster must be charged for this action.</summary>
    public readonly int StaminaCost;

    /// <summary>Sum of the damage dealt across every hit.</summary>
    public int TotalDamage
    {
        get
        {
            int total = 0;
            for (int i = 0; i < Hits.Length; i++) total += Hits[i].Damage;
            return total;
        }
    }

    public bool IsRejected => Reason != RejectReason.None;

    public AttackOutcome(
        ReadOnlySpan<HitResult> hits,
        SkillDefinition? skill = null,
        int manaCost = 0,
        int staminaCost = 0)
    {
        Hits = hits;
        Reason = RejectReason.None;
        Skill = skill;
        ManaCost = manaCost;
        StaminaCost = staminaCost;
    }

    private AttackOutcome(RejectReason reason)
    {
        Hits = ReadOnlySpan<HitResult>.Empty;
        Reason = reason;
        Skill = null;
        ManaCost = 0;
        StaminaCost = 0;
    }

    public static AttackOutcome Rejected(RejectReason reason) => new(reason);
}
