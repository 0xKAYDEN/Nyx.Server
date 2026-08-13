using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.AttackEngine.Data
{

    /// <summary>
    /// The real lookup key for cq_magictype — (type, level), not the
    /// autoincrement id. readonly record struct = value equality, no
    /// heap allocation, safe as a dictionary key.
    /// </summary>
    public readonly record struct SkillKey(long Type, long Level)
    {
        public override string ToString() => $"{Type}:{Level}";
    }
}
