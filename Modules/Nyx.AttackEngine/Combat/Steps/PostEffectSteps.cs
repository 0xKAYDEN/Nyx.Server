using Nyx.AttackEngine.interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.AttackEngine.Combat.Steps
{
    public sealed class StatusApplicationPostEffectStep : IPostEffectStep
    {
        public void Execute(in AttackContext ctx, ref AttackResult result)
        {
            if (ctx.Skill.Status != 0)
                result.StatusApplied = ctx.Skill.Status;
        }
    }

    public sealed class ComboChainPostEffectStep : IPostEffectStep
    {
        public void Execute(in AttackContext ctx, ref AttackResult result)
        {
            if (ctx.Skill.NextMagic != 0)
                result.NextMagicType = ctx.Skill.NextMagic; // caller starts combo-window timer using ComboDelay/ComboTimeout
        }
    }

    public sealed class TargetKilledPostEffectStep : IPostEffectStep
    {
        public void Execute(in AttackContext ctx, ref AttackResult result)
            => result.TargetKilled = ctx.TargetHp - result.Damage <= 0;
    }
}
