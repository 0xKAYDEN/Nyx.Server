using Nyx.AttackSystem.Entities;
using Nyx.AttackSystem.Enums;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.AttackSystem.Core
{
    public class Validation
    {
        public async Task<bool> Validate(AttackType type, Caster caster, Target target)
        {
            switch (type)
            {
                case AttackType.Melee:
                    return await ValidateDistance(caster, target);
                    case AttackType.Magic:
                        return await ValidateDistance(caster, target, 21);
                    case AttackType.Ranged:
                        return await ValidateDistance(caster, target, 21);
                default: return false;
            }
        }

        //Validate if the target is within the optimal distance for the attack type
        public async Task<bool> ValidateDistance(Caster caster, Target target, ushort OptimalDistance = 5) 
        {
            if (caster.MapID != target.MapID || !caster.IsAlive || !target.IsAlive || !caster.IsPlayer || !target.IsPlayer || caster == null || target == null || caster.HitPoint == 0 || target.HitPoint == 0)
                return false;
           ushort Distance = (ushort)Math.Sqrt((caster.CurrentX - target.CurrentX) * (caster.CurrentX - target.CurrentX) + (caster.CurrentY - target.CurrentY) * (caster.CurrentY - target.CurrentY));
            if (Distance <= OptimalDistance)
                return true;
            else
                return false;
        }
    }
}
