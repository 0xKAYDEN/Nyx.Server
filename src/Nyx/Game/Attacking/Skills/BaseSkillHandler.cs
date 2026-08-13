using Nyx.Server.Network.GamePackets;
using Nyx.Server.Utilities;
using System;

namespace Nyx.Server.Game.Attacking.Skills
{
    /// <summary>
    /// Base class for skill handlers with common validation logic
    /// </summary>
    public abstract class BaseSkillHandler : ISkillHandler
    {
        public abstract ushort SkillId { get; }
        public abstract string Description { get; }

        /// <summary>
        /// Perform common validation checks
        /// </summary>
        public virtual bool CanExecute(SkillContext context)
        {
            var caster = context.Caster;
            var spell = context.SpellInfo;
            var entity = context.CasterEntity;

            if (caster == null || spell == null || entity == null)
                return false;

            // Check if dead
            if (entity.Dead)
                return false;

            // Check mana
            if (entity.Mana < spell.UseMana)
                return false;

            // Check stamina
            if (entity.Stamina < spell.UseStamina)
                return false;

            // Check cooldown
            if (GameTime.Now < entity.SkillCoolDown)
                return false;

            // Check XP list requirement
            if (spell.NeedXP == 1 && !entity.ContainsFlag(Update.Flags.XPList))
                return false;

            // Check if in tournament/watching
            if (entity.SkillTeamWatchingElitePKMatch != null ||
                caster.WatchingElitePKMatch != null ||
                caster.WatchingGroup != null)
                return false;

            return ValidateCustom(context);
        }

        /// <summary>
        /// Override this for skill-specific validation
        /// </summary>
        protected virtual bool ValidateCustom(SkillContext context)
        {
            return true;
        }

        /// <summary>
        /// Execute the skill - must be implemented by derived classes
        /// </summary>
        public abstract void Execute(SkillContext context);

        /// <summary>
        /// Helper: Consume mana and stamina
        /// </summary>
        protected void ConsumeResources(SkillContext context)
        {
            var entity = context.CasterEntity;
            var spell = context.SpellInfo;

            if (spell.UseMana > 0)
                entity.Mana -= spell.UseMana;

            if (spell.UseStamina > 0)
                entity.Stamina -= spell.UseStamina;
        }

        /// <summary>
        /// Helper: Set skill cooldown
        /// </summary>
        protected void SetCooldown(SkillContext context, int milliseconds = 1000)
        {
            context.CasterEntity.SkillCoolDown = GameTime.Now.AddMilliseconds(milliseconds);
        }

        /// <summary>
        /// Helper: Check if target is in range
        /// </summary>
        protected bool IsInRange(SkillContext context, Entity target)
        {
            if (target == null) return false;

            var distance = Kernel.GetDistance(
                context.CasterEntity.X,
                context.CasterEntity.Y,
                target.X,
                target.Y
            );

            return distance <= context.SpellInfo.Range;
        }

        /// <summary>
        /// Helper: Check if can attack target
        /// </summary>
        protected bool CanAttackTarget(Entity attacker, Entity target)
        {
            return Handle.CanAttack(attacker, target, null, false);
        }
    }
}
