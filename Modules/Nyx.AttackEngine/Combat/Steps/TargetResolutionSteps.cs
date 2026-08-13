using Nyx.AttackEngine.interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.AttackEngine.Combat.Steps
{
    /// <summary>Single-target skills: ground=0, multi=0.</summary>
    public sealed class SingleTargetResolutionStep : ITargetResolutionStep
    {
        public int Execute(in AttackContext ctx, Span<uint> targetBuffer)
        {
            if (ctx.Skill.Ground == 1 || ctx.Skill.Multi == 1) return 0; // not our concern, let AoE step run
            targetBuffer[0] = ctx.TargetId;
            return 1;
        }
    }

    /// <summary>
    /// ground=1 skills: real implementation queries the spatial index
    /// for entities within Range/Width of the target point. Signature
    /// takes an injected spatial query so this stays testable.
    /// </summary>
    public sealed class GroundAoeResolutionStep : ITargetResolutionStep
    {
        private readonly Func<uint, uint, int, Span<uint>, int> _queryNearby;
        // (mapId, centerEntityId, radius, buffer) -> count written

        public GroundAoeResolutionStep(Func<uint, uint, int, Span<uint>, int> queryNearby)
            => _queryNearby = queryNearby;

        public int Execute(in AttackContext ctx, Span<uint> targetBuffer)
        {
            if (ctx.Skill.Ground == 0) return 0;

            var found = _queryNearby(ctx.MapId,
                                      ctx.TargetId, (int)ctx.Skill.Range, targetBuffer);

            // target_num caps how many of the found entities actually get hit
            var cap = ctx.Skill.TargetNum > 0 ? ctx.Skill.TargetNum : found;
            return Math.Min(found, cap);
        }
    }
}
