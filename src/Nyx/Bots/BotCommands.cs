using System;
using System.Linq;
using System.Collections.Generic;
using Nyx.Server.Client;
using Nyx.Server.Network.GamePackets;
using Nyx.Server.Bots.Behaviors;

namespace Nyx.Server.Bots
{
    public static class BotCommands
    {
        public static bool HandleBotCommand(string message, GameClient client)
        {
            if (!message.StartsWith("@bot"))
                return false;

            try
            {
                string[] parts = message.Substring(4).Trim().Split(' ');
                if (parts.Length == 0)
                {
                    SendBotHelp(client);
                    return true;
                }

                string command = parts[0].ToLower();

                switch (command)
                {
                    case "create":
                        CreateBot(parts, client);
                        break;
                    case "spawn":
                        SpawnBotNextToPlayer(parts, client);
                        break;
                    case "list":
                        ListBots(client);
                        break;
                    case "remove":
                    case "delete":
                        RemoveBot(parts, client);
                        break;
                    case "control":
                        ControlBot(parts, client);
                        break;
                    case "hunt":
                        SetBotHunt(parts, client);
                        break;
                    case "manual":
                        SetBotManual(parts, client);
                        break;
                    case "move":
                        MoveBot(parts, client);
                        break;
                    case "info":
                        GetBotInfo(parts, client);
                        break;
                    case "help":
                        SendBotHelp(client);
                        break;
                    default:
                        client.Send(new Message($"Unknown bot command: {command}. Use @bot help for available commands.",
                            System.Drawing.Color.Red, Message.TopLeft));
                        break;
                }

                return true;
            }
            catch (Exception ex)
            {
                client.Send(new Message($"Error processing bot command: {ex.Message}",
                    System.Drawing.Color.Red, Message.TopLeft));
                return true;
            }
        }

        private static void CreateBot(string[] parts, GameClient client)
        {
            if (parts.Length < 2)
            {
                client.Send(new Message("Usage: @bot create <name> [map] [x] [y]",
                    System.Drawing.Color.Yellow, Message.TopLeft));
                return;
            }

            string botName = parts[1];
            ushort mapId = client.Entity.MapID;
            ushort x = client.Entity.X;
            ushort y = client.Entity.Y;

            if (parts.Length >= 4)
            {
                if (!ushort.TryParse(parts[2], out mapId)) mapId = client.Entity.MapID;
                if (!ushort.TryParse(parts[3], out x)) x = client.Entity.X;
                if (parts.Length >= 5 && !ushort.TryParse(parts[4], out y)) y = client.Entity.Y;
            }

            // Create and initialize bot
            var bot = new BotClient(null);
            bot.InitializeBot(botName, mapId, x, y);

            // Add to map (Simulate Spawn)
            if (Kernel.Maps.TryGetValue(mapId, out var map))
            {
                map.AddEntity(bot.Entity);
                bot.SendScreen(bot.Entity.SpawnPacket, true);
            }

            client.Send(new Message($"Created bot '{bot.BotName}' at map {mapId}, ({x}, {y}). UID: {bot.Entity.UID}",
                System.Drawing.Color.Green, Message.TopLeft));
        }

        private static void ListBots(GameClient client)
        {
            var bots = BotManager.Instance.GetAllBots();
            if (!bots.Any())
            {
                client.Send(new Message("No active bots found.", System.Drawing.Color.Yellow, Message.TopLeft));
                return;
            }

            client.Send(new Message($"Active bots: {bots.Count}", System.Drawing.Color.Cyan, Message.TopLeft));

            foreach (var bot in bots.Take(10))
            {
                string status = bot.Behavior?.Name ?? "Unknown";
                client.Send(new Message($"- {bot.BotName} (UID: {bot.Entity.UID}, Map: {bot.Entity.MapID}, Status: {status})",
                    System.Drawing.Color.White, Message.Whisper));
            }

            if (bots.Count > 10)
            {
                client.Send(new Message($"... and {bots.Count - 10} more bots.",
                    System.Drawing.Color.Gray, Message.Whisper));
            }
        }

        private static void RemoveBot(string[] parts, GameClient client)
        {
            if (parts.Length < 2)
            {
                client.Send(new Message("Usage: @bot remove <uid> OR @bot remove all", System.Drawing.Color.Yellow, Message.TopLeft));
                return;
            }

            if (parts[1].ToLower() == "all")
            {
                var bots = BotManager.Instance.GetAllBots();
                int removedCount = 0;
                foreach (var b in bots) { b.Disconnect(); removedCount++; }
                client.Send(new Message($"Removed {removedCount} bots.", System.Drawing.Color.Green, Message.TopLeft));
                return;
            }

            if (!uint.TryParse(parts[1], out uint botUid))
            {
                client.Send(new Message("Invalid bot UID.", System.Drawing.Color.Red, Message.TopLeft));
                return;
            }

            var bot = BotManager.Instance.GetBot(botUid);
            if (bot == null)
            {
                client.Send(new Message("Bot not found.", System.Drawing.Color.Red, Message.TopLeft));
                return;
            }

            bot.Disconnect();
            client.Send(new Message($"Removed bot '{bot.BotName}' (UID: {botUid}).", System.Drawing.Color.Green, Message.TopLeft));
        }

        private static void ControlBot(string[] parts, GameClient client)
        {
            if (parts.Length < 3)
            {
                client.Send(new Message("Usage: @bot control <uid> <behavior> [params]", System.Drawing.Color.Yellow, Message.TopLeft));
                return;
            }

            if (!uint.TryParse(parts[1], out uint botUid))
            {
                client.Send(new Message("Invalid bot UID.", System.Drawing.Color.Red, Message.TopLeft));
                return;
            }

            var bot = BotManager.Instance.GetBot(botUid);
            if (bot == null)
            {
                client.Send(new Message("Bot not found.", System.Drawing.Color.Red, Message.TopLeft));
                return;
            }

            string behavior = parts[2].ToLower();
            IBotBehavior newBehavior = null;

            switch (behavior)
            {
                case "idle":
                    newBehavior = new IdleBehavior();
                    break;
                case "hunt":
                case "autohunt":
                    newBehavior = new AutoHuntBehavior();
                    break;
                case "move":
                    newBehavior = new MoveToLocationBehavior();
                    break;
                default:
                    client.Send(new Message($"Unknown behavior: {behavior}. Valid: idle, hunt, move", System.Drawing.Color.Red, Message.TopLeft));
                    return;
            }

            bot.SetBehavior(newBehavior);
            client.Send(new Message($"Set bot '{bot.BotName}' behavior to {newBehavior.Name}.", System.Drawing.Color.Green, Message.TopLeft));
        }

        private static void SetBotHunt(string[] parts, GameClient client)
        {
            if (parts.Length < 2) return;
            if (!uint.TryParse(parts[1], out uint botUid)) return;
            var bot = BotManager.Instance.GetBot(botUid);
            if (bot == null) return;

            bot.SetBehavior(new AutoHuntBehavior());
            client.Send(new Message($"Bot '{bot.BotName}' is now hunting.", System.Drawing.Color.Green, Message.TopLeft));
        }

        private static void MoveBot(string[] parts, GameClient client)
        {
            if (parts.Length < 4)
            {
                client.Send(new Message("Usage: @bot move <uid> <x> <y> [map]", System.Drawing.Color.Yellow, Message.TopLeft));
                return;
            }

            if (!uint.TryParse(parts[1], out uint botUid))
            {
                client.Send(new Message("Invalid bot UID.", System.Drawing.Color.Red, Message.TopLeft));
                return;
            }

            if (!ushort.TryParse(parts[2], out ushort x) || !ushort.TryParse(parts[3], out ushort y))
            {
                client.Send(new Message("Invalid coordinates.", System.Drawing.Color.Red, Message.TopLeft));
                return;
            }

            var bot = BotManager.Instance.GetBot(botUid);
            if (bot == null)
            {
                client.Send(new Message("Bot not found.", System.Drawing.Color.Red, Message.TopLeft));
                return;
            }

            if (parts.Length > 4 && ushort.TryParse(parts[4], out ushort mapId))
            {
                bot.HomeMap = mapId;
            }
            else
            {
                bot.HomeMap = bot.Entity.MapID;
            }

            bot.HomeX = x;
            bot.HomeY = y;
            bot.SetBehavior(new MoveToLocationBehavior());

            client.Send(new Message($"Bot '{bot.BotName}' moving to ({x}, {y}) on map {bot.HomeMap}.", System.Drawing.Color.Green, Message.TopLeft));
        }

        private static void GetBotInfo(string[] parts, GameClient client)
        {
            if (parts.Length < 2) return;
            if (!uint.TryParse(parts[1], out uint botUid)) return;
            var bot = BotManager.Instance.GetBot(botUid);
            if (bot == null) return;

            client.Send(new Message($"Bot Info: '{bot.BotName}' (UID: {bot.Entity.UID})", System.Drawing.Color.Cyan, Message.TopLeft));
            client.Send(new Message($"- Map: {bot.Entity.MapID}, Position: ({bot.Entity.X}, {bot.Entity.Y})", System.Drawing.Color.White, Message.TopLeft));
            client.Send(new Message($"- Status: {bot.Behavior?.Name}", System.Drawing.Color.White, Message.TopLeft));
            client.Send(new Message($"- HP: {bot.Entity.Hitpoints}/{bot.Entity.MaxHitpoints}, MP: {bot.Entity.Mana}/{bot.Entity.MaxMana}", System.Drawing.Color.White, Message.TopLeft));
        }

        private static void SendBotHelp(GameClient client)
        {
            client.Send(new Message("=== Bot Commands ===", System.Drawing.Color.Yellow, Message.TopLeft));
            client.Send(new Message("@bot create <name> [map] [x] [y]", System.Drawing.Color.White, Message.TopLeft));
            client.Send(new Message("@bot spawn <name> - Spawn bot next to you", System.Drawing.Color.White, Message.TopLeft));
            client.Send(new Message("@bot hunt <uid>", System.Drawing.Color.White, Message.TopLeft));
            client.Send(new Message("@bot manual <uid>", System.Drawing.Color.White, Message.TopLeft));
            client.Send(new Message("@bot list", System.Drawing.Color.White, Message.TopLeft));
            client.Send(new Message("@bot control <uid> <behavior>", System.Drawing.Color.White, Message.TopLeft));
            client.Send(new Message("@bot move <uid> <x> <y> [map]", System.Drawing.Color.White, Message.TopLeft));
            client.Send(new Message("@bot remove <uid>", System.Drawing.Color.White, Message.TopLeft));
        }

        private static void SpawnBotNextToPlayer(string[] parts, GameClient client)
        {
            if (parts.Length < 2)
            {
                client.Send(new Message("Usage: @bot spawn <name>", System.Drawing.Color.Yellow, Message.TopLeft));
                return;
            }

            string botName = parts[1];
            ushort mapId = client.Entity.MapID;

            // Randomize position slightly around player (range 1-2)
            int offsetX = Kernel.Random.Next(-2, 3); // -2 to 2
            int offsetY = Kernel.Random.Next(-2, 3);

            // Ensure not 0,0 offset if possible, or just accept it (on top of player)
            if (offsetX == 0 && offsetY == 0) offsetX = 1;

            ushort x = (ushort)(client.Entity.X + offsetX);
            ushort y = (ushort)(client.Entity.Y + offsetY);

            // Create and initialize bot
            var bot = new BotClient(null);
            bot.InitializeBot(botName, mapId, x, y);

            if (Kernel.Maps.TryGetValue(mapId, out var map))
            {
                map.AddEntity(bot.Entity);
                bot.SendScreen(bot.Entity.SpawnPacket, true);
            }

            client.Send(new Message($"Spawned bot '{bot.BotName}' near you at ({x}, {y}). UID: {bot.Entity.UID}",
                System.Drawing.Color.Green, Message.TopLeft));
        }

        private static void SetBotManual(string[] parts, GameClient client)
        {
            if (parts.Length < 2) return;
            if (!uint.TryParse(parts[1], out uint botUid)) return;
            var bot = BotManager.Instance.GetBot(botUid);
            if (bot == null) return;

            bot.SetBehavior(new ManualHuntBehavior());
            client.Send(new Message($"Bot '{bot.BotName}' is now using manual hunting logic.", System.Drawing.Color.Green, Message.TopLeft));
        }
    }
}
