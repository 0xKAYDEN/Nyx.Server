using Serilog;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.AttackEngine.Combat
{
    public struct AttackResult
    {
        public int Damage;
        public bool IsCritical;
        public bool IsMiss;
        public bool TargetKilled;
        public int StatusApplied;      // 0 = none
        public long? NextMagicType;     // for combo chaining, 0 = no chain
    }
}
