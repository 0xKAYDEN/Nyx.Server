using Nyx.Combat.Abstractions;
using Nyx.Combat.Configuration;
using Nyx.Combat.Cooldowns;
using Nyx.Combat.Model;
using Nyx.Combat.Numerics;

namespace Nyx.Combat.Validation;

/// <summary>
/// The gate every attack passes before a single multiplication happens.
/// </summary>
/// <remarks>
/// <para>
/// Ordered cheapest-check-first: liveness and flags (register comparisons), then
/// range (integer arithmetic), then the world's hostility policy (a host callback),
/// then skill requirements, then the cooldown table (the only check that takes a
/// lock). On a rejected packet — and on a busy server a meaningful share of packets
/// are rejected, whether from lag, spam or an outright cheat client — we bail out
/// before paying for any of it.
/// </para>
/// <para>
/// Returning a <see cref="RejectReason"/> rather than throwing is deliberate:
/// exceptions on a packet path are orders of magnitude more expensive than a
/// returned enum, and a misbehaving client should never be able to make the server
/// unwind a stack thousands of times a second.
/// </para>
/// </remarks>
public sealed class AttackValidator
{
    private readonly ICombatWorld _world;
    private readonly CombatCooldownManager _cooldowns;

    public AttackValidator(ICombatWorld world, CombatCooldownManager cooldowns)
    {
        _world = world ?? throw new ArgumentNullException(nameof(world));
        _cooldowns = cooldowns ?? throw new ArgumentNullException(nameof(cooldowns));
    }

    /// <summary>
    /// Validates a basic weapon strike.
    /// </summary>
    public RejectReason ValidateBasicAttack(in AttackRequest request, int maxRange)
    {
        RejectReason liveness = ValidateLiveness(in request);
        if (liveness != RejectReason.None) return liveness;

        int distance = MathEx.ChebyshevDistance(
            request.Attacker.X, request.Attacker.Y,
            request.Target.X, request.Target.Y);

        if (distance > maxRange) return RejectReason.OutOfRange;

        return _world.CanAttack(in request.Attacker, in request.Target)
            ? RejectReason.None
            : RejectReason.NotHostile;
    }

    /// <summary>
    /// Applies the basic-attack rate floor. Separate from
    /// <see cref="ValidateBasicAttack"/> for the same reason
    /// <see cref="ConsumeCooldown"/> is separate from <see cref="ValidateSkill"/>:
    /// it mutates shared state and must run exactly once, after every other check
    /// has already passed.
    /// </summary>
    public bool ConsumeBasicAttackCooldown(in AttackRequest request)
        => _cooldowns.TryUseBasicAttack(request.Attacker.Id, request.Kind, request.NowMs);

    /// <summary>
    /// Validates a skill cast. Does <b>not</b> consume the cooldown; see
    /// <see cref="ConsumeCooldown"/>, which the engine calls only once the cast is
    /// otherwise certain to go through.
    /// </summary>
    public RejectReason ValidateSkill(
        in AttackRequest request,
        SkillDefinition skill,
        CombatOptions options)
    {
        RejectReason liveness = ValidateLiveness(in request);
        if (liveness != RejectReason.None) return liveness;

        ref readonly Combatant attacker = ref request.Attacker;

        if (attacker.Level < skill.NeedLevel) return RejectReason.LevelTooLow;
        if (attacker.Mana < skill.UseMana) return RejectReason.NotEnoughMana;
        if (skill.UseStamina > 0 && attacker.Stamina < skill.UseStamina) return RejectReason.NotEnoughStamina;

        // Weapon gate: a skill that names a weapon subtype can only be cast while
        // holding it in either hand.
        if (skill.RequiredWeapon1 != 0)
        {
            bool matches = MatchesWeapon(in attacker, skill.RequiredWeapon1)
                        || (skill.RequiredWeapon2 != 0 && MatchesWeapon(in attacker, skill.RequiredWeapon2));

            if (!matches) return RejectReason.WrongWeapon;
        }

        // Cast distance. Area skills measure to the ground tile; single-target
        // skills measure to the victim.
        int maxDistance = skill.Distance > 0 ? skill.Distance : Math.Max((int)skill.Range, 1);
        int distance = skill.IsAreaOfEffect
            ? MathEx.ChebyshevDistance(attacker.X, attacker.Y, request.TargetX, request.TargetY)
            : MathEx.ChebyshevDistance(attacker.X, attacker.Y, request.Target.X, request.Target.Y);

        if (distance > maxDistance) return RejectReason.OutOfRange;

        // Area skills resolve their own victim list, so an invalid primary target
        // is not fatal for them.
        if (!skill.IsAreaOfEffect && !_world.CanAttack(in attacker, in request.Target))
            return RejectReason.NotHostile;

        if (_cooldowns.RemainingMs(attacker.Id, skill.Type, request.NowMs) > 0)
            return RejectReason.OnCooldown;

        return RejectReason.None;
    }

    /// <summary>
    /// Puts the skill on cooldown, atomically re-checking that it was ready.
    /// Called after validation has passed and immediately before resolution, so two
    /// packets racing on different threads cannot both get through.
    /// </summary>
    public bool ConsumeCooldown(in AttackRequest request, SkillDefinition skill)
        => _cooldowns.TryUseSkill(request.Attacker.Id, skill, request.NowMs);

    /// <summary>Checks that both parties are in a state where combat is possible at all.</summary>
    private static RejectReason ValidateLiveness(in AttackRequest request)
    {
        ref readonly Combatant attacker = ref request.Attacker;
        ref readonly Combatant target = ref request.Target;

        if (!attacker.IsAlive) return RejectReason.AttackerDead;
        if (attacker.Has(CombatFlags.Disabled)) return RejectReason.AttackerDisabled;
        if (target.Id == 0) return RejectReason.NoTarget;
        if (target.Id == attacker.Id) return RejectReason.TargetInvalidForSkill;
        if (!target.IsAlive) return RejectReason.TargetDead;
        if (target.Has(CombatFlags.Invincible)) return RejectReason.NotHostile;
        if (attacker.MapId != target.MapId) return RejectReason.OutOfRange;

        return RejectReason.None;
    }

    private static bool MatchesWeapon(in Combatant attacker, ushort subtype)
        => attacker.WeaponSubtype == subtype || attacker.OffhandSubtype == subtype;
}
