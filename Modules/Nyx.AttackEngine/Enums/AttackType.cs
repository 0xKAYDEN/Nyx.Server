using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.AttackEngine.Enums
{
    public enum AttackType : byte
    {
        Physical = 0, // Melee Attacks - it activates some skills like snow , if the player is using wind weapon and have the skill
        Magical = 1, // Any Magic Skill in the game some of these skills use Mana and some are using stamina
        Ranged = 2, // ranged skills like assassin skills, bow skills, and some other skills that are ranged
    }
}
