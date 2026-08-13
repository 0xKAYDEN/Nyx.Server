using Nyx.Server.Interfaces;
using Nyx.Server.Network.GamePackets;
using System;

namespace Nyx.Server.Game.Attacking.Skills.Handlers
{
    /// <summary>
    /// Example AoE skill handler - Thunder (ID: 1002)
    /// Demonstrates how to handle area-of-effect skills
    /// </summary>
    public class ExampleAoEHandler : BaseSkillHandler
    {
        public override ushort SkillId => 1002;
        public override string Description => "Thunder - AoE lightning damage";

        public override void Execute(SkillContext context)
        {
            var caster = context.CasterEntity;
            var spell = context.SpellInfo;

            // Consume resources
            ConsumeResources(context);
            SetCooldown(context, 1500);

            // Create spell use packet
            var suse = new SpellUse(true);
            suse.Attacker = caster.UID;
            suse.SpellID = spell.ID;
            suse.SpellLevel = spell.Level;
            suse.X = context.TargetX;
            suse.Y = context.TargetY;

            // Find all targets in range
            var map = context.CasterMap;
            if (map == null) return;

            // Iterate through screen objects
            for (int i = 0; i < context.Caster.Screen.Objects.Length; i++)
            {
                if (i >= context.Caster.Screen.Objects.Length)
                    break;

                IMapObject obj = context.Caster.Screen.Objects[i];
                if (obj == null)
                    continue;

                // Only attack players and monsters
                if (obj.MapObjType != MapObjectType.Player && obj.MapObjType != MapObjectType.Monster)
                    continue;

                var target = obj as Entity;
                if (target == null || target.Dead)
                    continue;

                // Check if in AoE range
                var distance = Kernel.GetDistance(context.TargetX, context.TargetY, target.X, target.Y);
                if (distance > spell.Range)
                    continue;

                // Check if we can attack this target
                if (!CanAttackTarget(caster, target))
                    continue;

                // Create attack for this target
                var attack = new Attack(true);
                attack.Attacker = caster.UID;
                attack.Attacked = target.UID;
                attack.AttackType = Attack.Magic;

                // Calculate damage
                uint damage = Calculate.Magic(caster, target, spell, ref attack);

                // Apply damage
                Handle.ReceiveAttack(caster, target, attack, ref damage, spell);

                // Add to spell packet
                suse.AddTarget(target, new SpellUse.DamageClass
                {
                    Damage = damage,
                    Hit = true,
                    Eff1 = attack.Effect1,
                    Eff2 = attack.Effect2
                }, attack);
            }

            // Send to screen
            context.Caster.SendScreen(suse, true);
        }
    }
}
