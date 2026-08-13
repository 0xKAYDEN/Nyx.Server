using Nyx.AttackEngine.Combat;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.AttackEngine.interfaces
{
    public interface IDamageStep
    {
        void Execute(in AttackContext ctx, ref AttackResult result);
    }
}
