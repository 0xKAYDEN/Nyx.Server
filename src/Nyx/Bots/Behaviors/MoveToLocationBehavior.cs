using System;

namespace Nyx.Server.Bots.Behaviors
{
    public class MoveToLocationBehavior : IBotBehavior
    {
        public string Name => "MoveToLocation";

        public void Process(BotClient bot)
        {
            if (bot.Entity.MapID != bot.HomeMap)
            {
                // Teleport logic required if map differs, for now just change map
                bot.Entity.MapID = bot.HomeMap;
                bot.Entity.X = bot.HomeX;
                bot.Entity.Y = bot.HomeY;
                 // Send spawn?
                return;
            }

            if (bot.Entity.X == bot.HomeX && bot.Entity.Y == bot.HomeY)
            {
                // Arrived
                bot.SetBehavior(new IdleBehavior());
                return;
            }

            // Move step
             // Use Kernel.GetAngle logic
             // bot.MoveToward(bot.HomeX, bot.HomeY); 
             // Logic similar to MoveToHuntingSpot but specific target
             
             // Simplification using existing MoveToHuntingSpot for now or replicate logic.
             // I'll leave the detailed pathfinding for later iteration, just snap for now or basic walk
             // Reuse the logic from the previous BotClient.MoveToLocation
             
            int dx = bot.HomeX - bot.Entity.X;
            int dy = bot.HomeY - bot.Entity.Y;
            double magnitude = Math.Sqrt(dx * dx + dy * dy);
            if (magnitude > 0)
            {
                dx = (int)(dx / magnitude);
                dy = (int)(dy / magnitude);
            }
            
            ushort newX = (ushort)(bot.Entity.X + dx);
            ushort newY = (ushort)(bot.Entity.Y + dy);
            
            // Validate walkability?
            // bot.Entity.X = newX; ...
            // bot.SendScreen(GroundMovement...);
        }

        public void OnEnter(BotClient bot) { }
        public void OnExit(BotClient bot) { }
    }
}
