using Nyx.AttackEngine.Database.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.AttackEngine.interfaces
{
    public interface ISkillRepository
    {
        ValueTask<IReadOnlyList<MagicType>> GetAllAsync(CancellationToken ct = default);
    }
}
