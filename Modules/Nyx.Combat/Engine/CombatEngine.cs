using Nyx.Combat.Abstractions;
using Nyx.Combat.Calculators;
using Nyx.Combat.Configuration;
using Nyx.Combat.Cooldowns;
using Nyx.Combat.Model;
using Nyx.Combat.Numerics;
using Nyx.Combat.Targeting;
using Nyx.Combat.Validation;

namespace Nyx.Combat.Engine;

/// <summary>
/// The façade the host talks to: hand it an <see cref="AttackRequest"/>, get back an
/// <see cref="AttackOutcome"/>.
/// </summary>
/// <remarks>
/// <para>
/// Everything behind this type is stateless apart from the cooldown table and the
/// skill catalog, both of which are internally thread-safe. A single engine
/// instance therefore serves the entire server and can be called from every map
/// thread at once with no external synchronisation.
/// </para>
/// <para>
/// <b>Allocation budget: zero.</b> Every buffer an attack needs is
/// <see langword="stackalloc"/>ed in <see cref="Resolve{TState}"/> and never
/// escapes it. A twenty-target Cyclone costs the same number of GC allocations as
/// a single punch: none.
/// </para>
/// <para>
/// The private helpers deliberately return a plain count rather than an
/// <see cref="AttackOutcome"/>. The outcome is a <see langword="ref struct"/>
/// wrapping the caller's stack buffer, and building it in exactly one frame — the
/// one that owns the buffer — keeps its lifetime obvious to a reader as well as to
/// the compiler's ref-safety analysis.
/// </para>
/// </remarks>
public sealed class CombatEngine
{
    /// <summary>
    /// Victims resolved per cast. Sized to cover every real area skill (retail's
    /// widest hits roughly twenty targets) so the buffer never needs to grow.
    /// </summary>
    private const int TargetBudget = 24;

    /// <summary>Candidates pulled from the world before filtering.</summary>
    private const int CandidateBudget = 64;

    private readonly ISkillCatalog _skills;
    private readonly DamageCalculatorRegistry _calculators;
    private readonly ModifierChain _modifiers;
    private readonly ObserverList _observers;
    private readonly SkillBehaviourRegistry _behaviours;
    private readonly TargetSelector _targeting;
    private readonly AttackValidator _validator;
    private readonly HitRateCalculator _hitRate;
    private readonly CombatCooldownManager _cooldowns;
    private readonly CombatOptions _options;

    public CombatEngine(
        ISkillCatalog skills,
        DamageCalculatorRegistry calculators,
        TargetSelector targeting,
        AttackValidator validator,
        HitRateCalculator hitRate,
        CombatCooldownManager cooldowns,
        CombatOptions options,
        ModifierChain? modifiers = null,
        ObserverList? observers = null,
        SkillBehaviourRegistry? behaviours = null)
    {
        _skills = skills ?? throw new ArgumentNullException(nameof(skills));
        _calculators = calculators ?? throw new ArgumentNullException(nameof(calculators));
        _targeting = targeting ?? throw new ArgumentNullException(nameof(targeting));
        _validator = validator ?? throw new ArgumentNullException(nameof(validator));
        _hitRate = hitRate ?? throw new ArgumentNullException(nameof(hitRate));
        _cooldowns = cooldowns ?? throw new ArgumentNullException(nameof(cooldowns));
        _options = options ?? throw new ArgumentNullException(nameof(options));
        _modifiers = modifiers ?? ModifierChain.Empty;
        _observers = observers ?? ObserverList.Empty;
        _behaviours = behaviours ?? SkillBehaviourRegistry.Empty;
    }

    /// <summary>Tuning currently in force.</summary>
    public CombatOptions Options => _options;

    /// <summary>The skill catalog currently in force.</summary>
    public ISkillCatalog Skills => _skills;

    /// <summary>
    /// Cooldown state. Exposed so the host can reset an entity on logout, death or
    /// map change — the engine has no lifecycle of its own and should not grow one.
    /// </summary>
    public CombatCooldownManager Cooldowns => _cooldowns;

    /// <summary>
    /// Resolves an attack and hands the outcome to <paramref name="consume"/>.
    /// </summary>
    /// <remarks>
    /// The callback shape is what makes zero-allocation area damage possible: the
    /// hit buffer lives on this method's stack frame and is valid for exactly the
    /// duration of the callback. Anything needed afterwards must be copied out, and
    /// the compiler enforces that, because <see cref="AttackOutcome"/> is a
    /// <see langword="ref struct"/> and cannot escape.
    /// </remarks>
    /// <typeparam name="TState">Caller state, threaded through so the callback needs no closure.</typeparam>
    public void Resolve<TState>(
        in AttackRequest request,
        TState state,
        AttackOutcomeHandler<TState> consume,
        int basicAttackRange = 1)
    {
        ArgumentNullException.ThrowIfNull(consume);

        Span<HitResult> hits = stackalloc HitResult[TargetBudget];

        int count;
        RejectReason reason;
        SkillDefinition? skill = null;

        if (request.IsSkill)
        {
            Span<Combatant> targets = stackalloc Combatant[TargetBudget];
            Span<Combatant> candidates = stackalloc Combatant[CandidateBudget];
            count = ResolveSkill(in request, candidates, targets, hits, out reason, out skill);
        }
        else
        {
            count = ResolveBasic(in request, basicAttackRange, hits, out reason);
        }

        AttackOutcome outcome = reason != RejectReason.None
            ? AttackOutcome.Rejected(reason)
            : new AttackOutcome(hits[..count], skill, skill?.UseMana ?? 0, skill?.UseStamina ?? 0);

        consume(state, in outcome);
    }

    /// <summary>
    /// Convenience overload for the single-target case, which is the vast majority
    /// of traffic. Returns the hit by value, so there is no span lifetime to manage
    /// and no callback to write.
    /// </summary>
    public HitResult ResolveSingle(in AttackRequest request, int basicAttackRange = 1)
    {
        Span<HitResult> hit = stackalloc HitResult[1];
        int count = ResolveBasic(in request, basicAttackRange, hit, out _);

        return count == 0
            ? new HitResult
            {
                TargetId = request.Target.Id,
                Damage = 0,
                Status = AttackStatus.Rejected,
                Effects = HitEffects.None,
            }
            : hit[0];
    }

    // -----------------------------------------------------------------
    // Basic weapon strike
    // -----------------------------------------------------------------

    private int ResolveBasic(
        in AttackRequest request,
        int range,
        Span<HitResult> hits,
        out RejectReason reason)
    {
        reason = _validator.ValidateBasicAttack(in request, range);

        // The rate floor is consumed only once every other check has passed, so a
        // strike rejected for range or hostility never burns the player's timer.
        if (reason == RejectReason.None && !_validator.ConsumeBasicAttackCooldown(in request))
            reason = RejectReason.OnCooldown;

        if (reason != RejectReason.None)
        {
            _observers.RaiseRejected(in request.Attacker, reason);
            return 0;
        }

        hits[0] = ResolveHit(in request.Attacker, in request.Target, null, request.Kind, isSplash: false);
        return 1;
    }

    // -----------------------------------------------------------------
    // Skill cast
    // -----------------------------------------------------------------

    private int ResolveSkill(
        in AttackRequest request,
        Span<Combatant> candidates,
        Span<Combatant> targets,
        Span<HitResult> hits,
        out RejectReason reason,
        out SkillDefinition? resolvedSkill)
    {
        resolvedSkill = null;

        if (!TryResolveRank(request.SkillType, request.SkillLevel, out SkillDefinition skill))
        {
            reason = RejectReason.UnknownSkill;
            _observers.RaiseRejected(in request.Attacker, reason);
            return 0;
        }

        reason = _validator.ValidateSkill(in request, skill, _options);
        if (reason != RejectReason.None)
        {
            _observers.RaiseRejected(in request.Attacker, reason);
            return 0;
        }

        // Last gate, and the only one that mutates shared state. Kept out of
        // validation so that a cast rejected for any other reason never consumes
        // the cooldown, and kept atomic so two packets racing on different threads
        // cannot both get through.
        if (!_validator.ConsumeCooldown(in request, skill))
        {
            reason = RejectReason.OnCooldown;
            _observers.RaiseRejected(in request.Attacker, reason);
            return 0;
        }

        resolvedSkill = skill;

        int targetCount = _targeting.Select(
            in request.Attacker, in request.Target, skill,
            request.TargetX, request.TargetY,
            candidates, targets);

        // The skill row decides whether this resolves as magic. The packet's own
        // attack type is a hint only — a hostile client can lie about it.
        AttackKind kind = ResolveKind(in request, skill);

        int written = 0;
        for (int i = 0; i < targetCount && written < hits.Length; i++)
        {
            hits[written++] = ResolveHit(
                in request.Attacker, in targets[i], skill, kind,
                isSplash: skill.IsAreaOfEffect && targets[i].Id != request.Target.Id);
        }

        if (_behaviours.TryGet(skill.Type, out ISkillBehaviour behaviour))
            behaviour.OnResolved(in request.Attacker, skill, hits[..written]);

        _observers.RaiseSkillUsed(in request.Attacker, skill, written);
        return written;
    }

    /// <summary>
    /// Finds the requested rank, falling back to the highest rank that exists rather
    /// than rejecting outright.
    /// </summary>
    /// <remarks>
    /// A client reporting a rank the database does not have is far more often a
    /// stale client or a partial data import than a cheat, and clamping is kinder
    /// than eating the cast. An entirely unknown skill <i>type</i> is still
    /// rejected — that one really is nonsense.
    /// </remarks>
    private bool TryResolveRank(ushort type, ushort level, out SkillDefinition skill)
    {
        if (_skills.TryGet(type, level, out skill)) return true;

        SkillDefinition? highest = _skills.GetHighestRank(type);
        if (highest is null)
        {
            skill = null!;
            return false;
        }

        skill = highest;
        return true;
    }

    /// <summary>
    /// Decides whether a cast resolves as magic, ranged or melee. The skill's own
    /// row wins; the packet only breaks the melee/ranged tie, which depends on the
    /// weapon rather than on the skill.
    /// </summary>
    private static AttackKind ResolveKind(in AttackRequest request, SkillDefinition skill)
    {
        if (skill.IsMagic) return AttackKind.Magic;
        if (request.Kind == AttackKind.Magic) return AttackKind.Melee;
        return request.Kind;
    }

    // -----------------------------------------------------------------
    // One attacker -> one victim
    // -----------------------------------------------------------------

    private HitResult ResolveHit(
        in Combatant attacker,
        in Combatant target,
        SkillDefinition? skill,
        AttackKind kind,
        bool isSplash)
    {
        IRandomSource random = FastRandom.Shared;

        // 1. Evasion. The cheapest possible exit from the whole pipeline.
        if (!_hitRate.Rolls(in attacker, in target, kind, skill, _options, random))
        {
            _observers.RaiseMiss(in attacker, in target);
            return HitResult.Missed(target.Id);
        }

        // 2. Hard nullifiers, before any arithmetic is paid for.
        if (target.Has(CombatFlags.VortexGuard))
            return Absorbed(in attacker, in target, damage: 1);

        if (target.Has(CombatFlags.DragonSwing) && random.Chance(_options.DragonSwingNullifyChance))
            return Absorbed(in attacker, in target, damage: 0);

        // 3. Scenario strategy.
        CombatScenario scenario = DamageCalculatorRegistry.ResolveScenario(in attacker, in target);
        var context = new DamageContext(in attacker, in target, skill, kind, scenario, random, _options)
        {
            IsSplashTarget = isSplash,
        };

        int damage = _calculators.Get(scenario).Calculate(ref context);

        // 4. Skill-specific override first, then the generic modifier chain: a
        //    bespoke rule should be visible to the server owner's event modifiers,
        //    not hidden behind them.
        if (skill is not null && _behaviours.TryGet(skill.Type, out ISkillBehaviour behaviour))
            damage = behaviour.ModifyDamage(ref context, damage);

        damage = _modifiers.Apply(ref context, damage);

        // 5. Absorbing shields sit outside the formula: they consume damage that
        //    has already been fully computed.
        int absorbed = 0;
        if (target.Has(CombatFlags.AzureShield) && target.AzureShield > 0)
        {
            if (damage > target.AzureShield)
            {
                absorbed = target.AzureShield;
                damage -= absorbed;
            }
            else
            {
                absorbed = damage;
                damage = 1;
            }
        }

        if (damage < 1) damage = 1;
        if (damage > target.Life) damage = target.Life;

        var result = new HitResult
        {
            TargetId = target.Id,
            Damage = damage,
            Status = AttackStatus.Hit,
            Effects = context.Effects,
            IsKill = damage >= target.Life,
            AbsorbedByShield = absorbed,
        };

        _observers.RaiseDamageDealt(in attacker, in target, in result);
        if (result.IsKill) _observers.RaiseKill(in attacker, in target, in result);

        return result;
    }

    private HitResult Absorbed(in Combatant attacker, in Combatant target, int damage)
    {
        var result = new HitResult
        {
            TargetId = target.Id,
            Damage = damage,
            Status = damage > 0 ? AttackStatus.Hit : AttackStatus.Absorbed,
            Effects = HitEffects.Immunity,
        };

        if (damage > 0) _observers.RaiseDamageDealt(in attacker, in target, in result);
        return result;
    }
}

/// <summary>
/// Receives a resolved <see cref="AttackOutcome"/>. A named delegate rather than an
/// <c>Action&lt;&gt;</c> because <see cref="AttackOutcome"/> is a
/// <see langword="ref struct"/> and cannot be a generic type argument.
/// </summary>
public delegate void AttackOutcomeHandler<in TState>(TState state, in AttackOutcome outcome);
