namespace Nyx.Combat.Model;

/// <summary>
/// Everything the engine needs to resolve one attack action, assembled by the
/// host from an inbound <c>MsgAttack</c> (1022) or an AI decision.
/// </summary>
/// <remarks>
/// A <see langword="readonly ref struct"/>: it can hold the caller's stack buffers
/// and can never be captured, boxed or stored on the heap, which is exactly the
/// lifetime we want for a per-packet request.
/// </remarks>
public readonly ref struct AttackRequest
{
    /// <summary>The attacker's snapshot.</summary>
    public readonly Combatant Attacker;

    /// <summary>The primary victim's snapshot.</summary>
    public readonly Combatant Target;

    /// <summary>Melee, ranged or magic. For skills the engine may override this from the skill row.</summary>
    public readonly AttackKind Kind;

    /// <summary>Skill id from the packet, 0 for a plain weapon strike.</summary>
    public readonly ushort SkillType;

    /// <summary>Skill rank from the packet.</summary>
    public readonly ushort SkillLevel;

    /// <summary>Target tile for ground-targeted skills.</summary>
    public readonly ushort TargetX;

    /// <summary>Target tile for ground-targeted skills.</summary>
    public readonly ushort TargetY;

    /// <summary>Monotonic server timestamp in milliseconds, used for cooldown checks.</summary>
    public readonly long NowMs;

    /// <summary>True when this attack originated from a skill rather than a basic strike.</summary>
    public bool IsSkill => SkillType != 0;

    public AttackRequest(
        in Combatant attacker,
        in Combatant target,
        AttackKind kind,
        long nowMs,
        ushort skillType = 0,
        ushort skillLevel = 0,
        ushort targetX = 0,
        ushort targetY = 0)
    {
        Attacker = attacker;
        Target = target;
        Kind = kind;
        NowMs = nowMs;
        SkillType = skillType;
        SkillLevel = skillLevel;
        TargetX = targetX == 0 ? target.X : targetX;
        TargetY = targetY == 0 ? target.Y : targetY;
    }
}
