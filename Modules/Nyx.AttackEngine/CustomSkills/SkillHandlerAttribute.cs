using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.AttackEngine.CustomSkills
{
    [AttributeUsage(AttributeTargets.Class)]
    public sealed class SkillHandlerAttribute : Attribute
    {
        public ushort SkillType { get; }
        public SkillHandlerAttribute(ushort skillType) => SkillType = skillType;
    }
}
