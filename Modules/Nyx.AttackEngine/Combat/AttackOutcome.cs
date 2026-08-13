using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.AttackEngine.Combat
{
    public enum AttackOutcome : byte
    {
        Success = 0,
        FailedValidation_NotEnoughMp,
        FailedValidation_NotEnoughStamina,
        FailedValidation_NotEnoughEp,
        FailedValidation_WrongWeapon,
        FailedValidation_LevelTooLow,
        FailedValidation_ProficiencyTooLow,
        FailedValidation_OnCooldown,
        FailedValidation_IllegalCrimeTarget,   // e.g. crime skill used in a no-PK zone
        FailedTargeting_OutOfRange,
        FailedTargeting_NoValidTargets //some skills like AoE skills may not have any valid targets in range but it is still a valid skill to use, so we should not fail the validation step but instead fail the targeting step
    }
}
