using Nyx.AttackEngine.Combat;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.AttackEngine.interfaces
{
    public interface ITargetResolutionStep
    {
        /// <summary>Writes resolved target ids into the pooled buffer, returns count written.</summary>
        int Execute(in AttackContext ctx, Span<uint> targetBuffer);
    }
}
