using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Security.Cryptography;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.Calculations.Validations
{
    public class SpellUseValidate
    {
        public async Task<bool> ValidateAsync(ValidationType type, ushort CasterX , ushort CasterY, ushort TargetX, ushort TargetY, ushort CasterMana,
            ushort SpellManaCost, ushort CasterStamina,ushort SpellStaminaCost, ushort OptimalRange = 18)
        {
            switch (type)
            {
                case ValidationType.Melee:
                    {
                        if (await ValidateRangeAsync(CasterX, CasterY, TargetX, TargetY, OptimalRange))
                            return true;
                        else
                            return false;
                        break;
                    }
                case ValidationType.Magic:
                    {
                        if (await ValidateManaUsageAsync(CasterMana, SpellManaCost) && await ValidateSpellRangeAsync(CasterX, CasterY, TargetX, TargetY, OptimalRange))
                            return true;
                        else
                            return false;
                        break;
                    }
                case ValidationType.Physical:
                    {
                        if (await ValidateStaminaUsageAsync(CasterStamina, SpellStaminaCost) && await ValidateRangeAsync(CasterX, CasterY, TargetX, TargetY, OptimalRange))
                            return true;
                        else
                            return false;
                        break;
                    }
                default:

                    return false;
            }
        }

        public async Task<bool> ValidateManaUsageAsync(ushort CasterMana, ushort SpellManaCost)
        {
            if (CasterMana < SpellManaCost)
                return false;
            else
                return true;
        }
        public async Task<bool> ValidateStaminaUsageAsync(ushort CasterStamina, ushort SpellStaminaCost)
        {
            if(CasterStamina < SpellStaminaCost)
                return false;
            else
                return true;
        }
        public async Task<bool> ValidateSpellRangeAsync(ushort CasterX, ushort CasterY, ushort TargetX, ushort TargetY, ushort SpellRange)
        {
            if(Math.Abs(CasterX - TargetX) <= SpellRange && Math.Abs(CasterY - TargetY) <= SpellRange)
                return true;
            else
            return false;
        }

        public async Task<bool> ValidateRangeAsync(ushort CasterX, ushort CasterY, ushort TargetX, ushort TargetY, ushort Range)
        {
            if (Math.Abs(CasterX - TargetX) <= Range && Math.Abs(CasterY - TargetY) <= Range)
                return true;
            else
                return false;
        }
    }
}
