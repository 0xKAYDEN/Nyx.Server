using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Nyx.Server.Client;
using Nyx.Server.Game;

namespace Nyx.Server.Bots
{
    public class BotManager
    {
        public static readonly BotManager Instance = new BotManager();
        private readonly object Lock = new object();

        public void AddBot(BotClient bot)
        {
            Server.Kernel.Bots.TryAdd(bot.Entity.UID, bot);
        }

        public void RemoveBot(uint uid)
        {
            Server.Kernel.Bots.TryRemove(uid, out _);
        }

        public BotClient GetBot(uint uid)
        {
            Server.Kernel.Bots.TryGetValue(uid, out var bot);
            return bot;
        }

        public List<BotClient> GetAllBots()
        {
            return Server.Kernel.Bots.Values.ToList();
        }

        public bool ContainsBot(uint uid)
        {
            return Server.Kernel.Bots.ContainsKey(uid);
        }

        public int GetBotCount()
        {
            return Server.Kernel.Bots.Count;
        }

        public void ProcessAllBots()
        {
            foreach (var bot in Server.Kernel.Bots.Values)
            {
                if (bot.IsActive)
                {
                    bot.ProcessBotActions();
                }
            }
        }
    }
}
