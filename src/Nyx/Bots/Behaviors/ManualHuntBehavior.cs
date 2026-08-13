using System;
using Nyx.Server.Bots;
using Nyx.Server.Game;

namespace Nyx.Server.Bots.Behaviors
{
    public class ManualHuntBehavior : IBotBehavior
    {
        public string Name => "ManualHunt";

        public void Process(BotClient bot)
        {
            if (bot.Entity.Dead) return;

            // 1. Pick up items
            bot.PickUpNearbyItems();

            // 2. Scan & Attack Logic (Purely server-side logic, no AutoHunt packet)
            Entity target = bot.ScanForTarget();
            if (target != null)
            {
                int dist = Nyx.Server.Kernel.GetDistance(bot.Entity.X, bot.Entity.Y, target.X, target.Y);
                if (dist <= 3)
                {
                    // In range, attack
                    bot.Attack(target);
                }
                else
                {
                    // Out of range, move towards
                    bot.MoveToward(target.X, target.Y);
                }
            }
            else
            {
                // No target found, wander randomly to find one
                bot.MoveToHuntingSpot();
            }
        }

        public void OnEnter(BotClient bot)
        {
            // Do not send AutoHunt packet
            bot.Entity.InAutoHunt = false;
        }

        public void OnExit(BotClient bot)
        {
            // Nothing to stop since we didn't start auto hunt packet
        }
    }
}
