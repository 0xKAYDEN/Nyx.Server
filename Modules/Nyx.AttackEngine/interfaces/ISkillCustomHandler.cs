using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.AttackEngine.interfaces
{
    /// <summary>
    /// Escape hatch for the handful of skills that don't fit the generic
    /// pipeline — runs after the normal damage steps, can override anything
    /// in result.
    /// </summary>
    public interface ISkillCustomHandler
    {
        void Apply(in Combat.AttackContext ctx, ref Combat.AttackResult result);
    }

}
