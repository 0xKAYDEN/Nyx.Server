using Nyx.AttackEngine.Combat;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.AttackEngine.interfaces
{
    /// <summary>Returns Success to continue, any other value aborts the pipeline.</summary>

    public interface IValidationStep
    {
        AttackOutcome Execute(in AttackContext ctx);
    }
}
