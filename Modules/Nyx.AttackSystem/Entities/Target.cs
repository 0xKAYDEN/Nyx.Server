using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.AttackSystem.Entities
{
    public class Target
    {
        public ushort MapID { get; set; }    
        public ushort CurrentX { get; set; }    
        public ushort CurrentY { get; set; }

        public bool IsPlayer { get; set; } //To determine if the caster is a player or a monster
        public bool IsAlive { get; set; } //To determine if the caster is alive

        public ushort HitPoint { get; set; }    
        public ushort MaxHitPoint { get; set; }    
        public ushort MinAttack { get; set; }    
        public ushort MaxAttack { get; set; }    
        public ushort MagicAttack { get; set; }    
        public ushort Defence { get; set; }
        public ushort MagicDefence { get; set; }
        public ushort Dodge { get; set; }
        public ushort Blessed { get; set; }

        //Extra properties for the caster
        public ushort Breakthrough { get; set; }
        public ushort Counteraction { get; set; }
        public ushort CriticalStrike { get; set; }
        public ushort SkillCriticalStrike { get; set; } //M-Strike
        public ushort Immunity { get; set; }
        public ushort FinalPAttack { get; set; }
        public ushort FinalMAttack { get; set; }
        public ushort FinalDamge { get; set; }
        public ushort FinalMagicDamge { get; set; }
        public ushort Penetration { get; set; }
        public ushort Detoxication { get; set; }

    }
}
