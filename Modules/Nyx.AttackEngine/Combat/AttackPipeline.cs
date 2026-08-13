using Nyx.AttackEngine.interfaces;
using System;
using System.Buffers;
using System.Collections.Frozen;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.AttackEngine.Combat
{
    /// <summary>
    /// Orchestrates the four stages. All step arrays are built once at
    /// startup and iterated with plain for-loops — no LINQ, no per-attack
    /// allocation beyond the pooled target buffer.
    /// </summary>
    public sealed class AttackPipeline
    {
        private readonly IValidationStep[] _validationSteps;
        private readonly ITargetResolutionStep[] _targetSteps;
        private readonly IDamageStep[] _damageSteps;
        private readonly IPostEffectStep[] _postEffectSteps;
        private readonly FrozenDictionary<long, ISkillCustomHandler> _customHandlers;

        public AttackPipeline(
            IValidationStep[] validationSteps,
            ITargetResolutionStep[] targetSteps,
            IDamageStep[] damageSteps,
            IPostEffectStep[] postEffectSteps,
            FrozenDictionary<long, ISkillCustomHandler> customHandlers)
        {
            _validationSteps = validationSteps;
            _targetSteps = targetSteps;
            _damageSteps = damageSteps;
            _postEffectSteps = postEffectSteps;
            _customHandlers = customHandlers;
        }

        public AttackOutcome Execute(in AttackContext ctx, out AttackResult result)
        {
            result = default;

            for (var i = 0; i < _validationSteps.Length; i++)
            {
                var outcome = _validationSteps[i].Execute(in ctx);
                if (outcome != AttackOutcome.Success) return outcome;
            }

            // Pooled buffer — avoids a heap List<uint> per attack. Adjust
            // size to your realistic max target_num.
            var pool = ArrayPool<uint>.Shared;
            var buffer = pool.Rent(32);
            try
            {
                var span = buffer.AsSpan(0, 32);
                var targetCount = 0;

                for (var i = 0; i < _targetSteps.Length; i++)
                {
                    var found = _targetSteps[i].Execute(in ctx, span);
                    if (found > 0) { targetCount = found; break; } // first matching resolver wins
                }

                if (targetCount == 0)
                    return AttackOutcome.FailedTargeting_NoValidTargets;

                // Simplified: single-context damage calc shown here. For true
                // multi-target, loop targetCount times with a per-target ctx
                // copy (cheap — it's a struct) and a result per target.
                for (var i = 0; i < _damageSteps.Length; i++)
                    _damageSteps[i].Execute(in ctx, ref result);

                if (_customHandlers.TryGetValue(ctx.Skill.Type, out var handler))
                    handler.Apply(in ctx, ref result);

                for (var i = 0; i < _postEffectSteps.Length; i++)
                    _postEffectSteps[i].Execute(in ctx, ref result);

                return AttackOutcome.Success;
            }
            finally
            {
                pool.Return(buffer);
            }
        }
    }
}
