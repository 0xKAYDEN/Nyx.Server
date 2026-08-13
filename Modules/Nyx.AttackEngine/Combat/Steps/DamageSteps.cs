using Nyx.AttackEngine.interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.AttackEngine.Combat.Steps
{
    public sealed class BasePowerDamageStep : IDamageStep
    {
        public void Execute(in AttackContext ctx, ref AttackResult result)
        {
            // Magic-vs-physical is decided by the packet's AttackType (Attack.Magic),
            // not the skill type number — matching MyMath's AtkType branch.
            var atk = ctx.IsMagic ? ctx.AttackerMagicAtk : ctx.AttackerAtk;
            var def = ctx.IsMagic ? ctx.TargetMagicDefense : ctx.TargetDefense;

            var raw = ctx.Skill.Power + atk;
            var scaled = (int)(raw * (ctx.Skill.Percent / 100.0));
            result.Damage = Math.Max(1, scaled - def);
        }
    }

    public sealed class AttrEffectDamageStep : IDamageStep
    {
        private readonly IReadOnlyDictionary<short, IAttrEffect> _effects;

        public AttrEffectDamageStep(IReadOnlyDictionary<short, IAttrEffect> effects)
            => _effects = effects;

        public void Execute(in AttackContext ctx, ref AttackResult result)
        {
            if (ctx.Skill.AttrType != 0 && _effects.TryGetValue(ctx.Skill.AttrType, out var effect))
                effect.Apply(in ctx, ref result, (int)ctx.Skill.AttrPower);
            // Unknown attr_type: no-op, don't throw — data may be stale/legacy.
        }
    }

    public sealed class ModeMultiplierDamageStep : IDamageStep
    {
        public void Execute(in AttackContext ctx, ref AttackResult result)
            => result.Damage = (int)(result.Damage * ctx.ModeMultiplier);
    }

    /// <summary>attr_type dispatch target — one implementation per known effect id.</summary>
    public interface IAttrEffect
    {
        void Apply(in AttackContext ctx, ref AttackResult result, int attrPower);
    }
}
