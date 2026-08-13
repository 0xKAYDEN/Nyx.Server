using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.Spellcasting.Enums
{
    public enum SpellSort : byte
    {
        Damage = 1,
        Heal = 2,
        MultiWeaponSkill = 4,
        Circle = 5,
        XP = 6,
        Revive = 7,
        XPIncrease = 11,
        Dash = 12,
        Linear = 14,
        SingleWeaponSkill = 16,
        Specials = 19,
        ManaAdd = 20,
        Summon = 23,
        HPPercentDecrease = 26,
        Spook = 30,
        WarCry = 31,
        Ride = 32
    }  
}
