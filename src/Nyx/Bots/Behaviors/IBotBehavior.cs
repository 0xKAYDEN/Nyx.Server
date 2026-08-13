using System;
using Nyx.Server.Bots;

namespace Nyx.Server.Bots.Behaviors
{
    public interface IBotBehavior
    {
        string Name { get; }
        void Process(BotClient bot);
        void OnEnter(BotClient bot);
        void OnExit(BotClient bot);
    }
}
