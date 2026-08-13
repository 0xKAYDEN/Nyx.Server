using System;

namespace Nyx.Server.Bots.Behaviors
{
    public class IdleBehavior : IBotBehavior
    {
        public string Name => "Idle";

        public void Process(BotClient bot)
        {
            // Do nothing, just chill
        }

        public void OnEnter(BotClient bot)
        {
            // Optional: Send message or log
        }

        public void OnExit(BotClient bot)
        {
            // Cleanup
        }
    }
}
