using Nyx.AttackEngine.interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.AttackEngine.Combat.Steps
{
    public sealed class MpCostValidationStep : IValidationStep
    {
        public AttackOutcome Execute(in AttackContext ctx)
            => ctx.AttackerCurrentMp < ctx.Skill.UseMp
                ? AttackOutcome.FailedValidation_NotEnoughMp
                : AttackOutcome.Success;
    }

    public sealed class EpCostValidationStep : IValidationStep
    {
        public AttackOutcome Execute(in AttackContext ctx)
            => ctx.AttackerCurrentEp < ctx.Skill.UseEp
                ? AttackOutcome.FailedValidation_NotEnoughEp
                : AttackOutcome.Success;
    }

    public sealed class WeaponSubtypeValidationStep : IValidationStep
    {
        public AttackOutcome Execute(in AttackContext ctx)
            => ctx.Skill.WeaponSubtype != 0 && !ctx.AttackerHasCorrectWeapon
                ? AttackOutcome.FailedValidation_WrongWeapon
                : AttackOutcome.Success;
    }

    public sealed class LevelRequirementValidationStep : IValidationStep
    {
        public AttackOutcome Execute(in AttackContext ctx)
            => ctx.AttackerLevel < ctx.Skill.NeedLevel
                ? AttackOutcome.FailedValidation_LevelTooLow
                : AttackOutcome.Success;
    }

    public sealed class ProficiencyValidationStep : IValidationStep
    {
        public AttackOutcome Execute(in AttackContext ctx)
            => ctx.AttackerProficiencyLevel < ctx.Skill.NeedProf
                ? AttackOutcome.FailedValidation_ProficiencyTooLow
                : AttackOutcome.Success;
    }

    /// <summary>
    /// crime=1 skills against another player are only legal where PK/PVP
    /// is allowed. Wire the actual zone check to your map/zone service —
    /// this just shows where the crime flag plugs into validation.
    /// </summary>
    public sealed class CrimeFlagValidationStep : IValidationStep
    {
        private readonly Func<uint, uint, bool> _isPvpAllowedBetween;

        public CrimeFlagValidationStep(Func<uint, uint, bool> isPvpAllowedBetween)
            => _isPvpAllowedBetween = isPvpAllowedBetween;

        public AttackOutcome Execute(in AttackContext ctx)
        {
            if (ctx.Skill.Crime == 1 && ctx.TargetIsPlayer &&
                !_isPvpAllowedBetween(ctx.AttackerId, ctx.TargetId))
            {
                return AttackOutcome.FailedValidation_IllegalCrimeTarget;
            }
            return AttackOutcome.Success;
        }
    }
}
