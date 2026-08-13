using Nyx.Server.Network.GamePackets;
using System;

namespace Nyx.Server.Game.Attacking.Skills.Handlers
{
    /// <summary>
    /// Example skill handler - Fireball (ID: 1000)
    /// This demonstrates how to create a new skill handler
    /// </summary>
    public class ExampleFireballHandler : BaseSkillHandler
    {
        public override ushort SkillId => 1000;
        public override string Description => "Fireball - Single target fire damage";

        protected override bool ValidateCustom(SkillContext context)
        {
            // Check if we have a valid target
            if (context.TargetEntity == null)
                return false;

            // Check if target is in range
            if (!IsInRange(context, context.TargetEntity))
                return false;

            // Check if we can attack this target
            if (!CanAttackTarget(context.CasterEntity, context.TargetEntity))
                return false;

            return true;
        }

        public override void Execute(SkillContext context)
        {
            var caster = context.CasterEntity;
            var target = context.TargetEntity;
            var spell = context.SpellInfo;

            // Consume resources
            ConsumeResources(context);
            SetCooldown(context, 1000);

            // Create spell use packet
            var suse = new SpellUse(true);
            suse.Attacker = caster.UID;
            suse.SpellID = spell.ID;
            suse.SpellLevel = spell.Level;
            suse.X = target.X;
            suse.Y = target.Y;

            // Create attack for damage calculation
            var attack = new Attack(true);
            attack.Attacker = caster.UID;
            attack.Attacked = target.UID;
            attack.AttackType = Attack.Magic;
            attack.X = target.X;
            attack.Y = target.Y;

            // Calculate damage
            uint damage = Calculate.Magic(caster, target, spell, ref attack);

            // Apply damage
            Handle.ReceiveAttack(caster, target, attack, ref damage, spell);

            // Add target to spell packet
            suse.AddTarget(target, new SpellUse.DamageClass
            {
                Damage = damage,
                Hit = true,
                Eff1 = attack.Effect1,
                Eff2 = attack.Effect2
            }, attack);

            // Send to screen
            context.Caster.SendScreen(suse, true);
        }
    }
}
