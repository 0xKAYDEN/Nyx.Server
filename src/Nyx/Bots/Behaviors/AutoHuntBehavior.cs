using System;
using Nyx.Server.Bots;
using Nyx.Server.Game;

namespace Nyx.Server.Bots.Behaviors
{
    public class AutoHuntBehavior : IBotBehavior
    {
        public string Name => "AutoHunt";

        public void Process(BotClient bot)
        {
            if (bot.Entity.Dead) return;

            // 1. Pick up items
            bot.PickUpNearbyItems();

            // 2. Ensure AutoHunt is active
            if (!bot.IsInAutoHunt)
            {
                bot.StartAutoHunt();
            }

            // 3. Fallback Logic: Manual Target & Attack
            // This ensures the bot acts even if the server-side auto-hunt packet isn't processing fully
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
            bot.StartAutoHunt();
        }

        public void OnExit(BotClient bot)
        {
            bot.StopAutoHunt();
        }
    }
}
