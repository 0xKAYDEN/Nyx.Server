using Nyx.AttackEngine.interfaces;
using Serilog;
using System;
using System.Collections.Frozen;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.AttackEngine.CustomSkills
{
    /// <summary>
    /// Reflection runs ONCE at startup to build a frozen lookup — zero
    /// reflection cost during gameplay.
    /// </summary>
    public static class CustomHandlerRegistry
    {
        public static FrozenDictionary<long, ISkillCustomHandler> Build(params Assembly[] assemblies)
        {
            var map = new Dictionary<long, ISkillCustomHandler>();

            foreach (var asm in assemblies)
            {
                foreach (var type in asm.GetTypes())
                {
                    var attr = type.GetCustomAttribute<SkillHandlerAttribute>();
                    if (attr is null) continue;

                    if (Activator.CreateInstance(type) is not ISkillCustomHandler handler)
                        throw new InvalidOperationException(
                            $"{type.Name} has [SkillHandler] but doesn't implement ISkillCustomHandler.");

                    map[attr.SkillType] = handler;
                }
            }

            return map.ToFrozenDictionary();
        }
    }
}
