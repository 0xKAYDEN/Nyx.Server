using Nyx.Server.Client;
using Nyx.Server.Network.GamePackets;

namespace Nyx.Server.Game.Npc
{
    public class NpcHandler
    {
        [Game.Npc.NpcAttribute((uint)NpcID.HelpDesk)]
        public static void Handle(GameClient client, NpcRequest req, NpcDialog dialog)
        {
            if (client == null || req == null)
                return;

            switch (req.OptionID)
            {
                case 0:
                    {
                        dialog.Text($"Hello, {client.Entity.Name} tell me how can i help you?");
                        dialog.Option("My Nulification", 1);
                        dialog.Option("My Daily Energy", 2);
                        dialog.Option("Exit", 255);
                        dialog.Finish();
                        break;
                    }
                case 1:
                    {
                        Nullifications.Callculations.Calculate(client);
                        dialog.Text($"You have nulification {client.Entity.Nullifications} Points");
                        dialog.Option("Back to main menu", 0); // Add option to go back
                        dialog.Finish();
                        break;
                    }
                case 2:
                    {
                        dialog.Text($"You have {client.DailyEnergy} Points");
                        dialog.Option("Back to main menu", 0); // Add option to go back
                        dialog.Finish();
                        break;
                    }
                case 255: // Exit
                    {
                        dialog.Finish(); // Only call Finish() when actually exiting
                        return;
                    }
            }
        }

        [Game.Npc.NpcAttribute((uint)NpcID.FarmerHarlan)]
        public static void FarmerHarlan(GameClient client, NpcRequest req, NpcDialog dialog)
        {
            if (client == null || req == null)
                return;

            switch (req.OptionID)
            {
                case 0:
                    {                  
                        if (client.Entity.QuestFrom == "FarmerHarlan" && client.Entity.QuestKO >= 50 && client.Inventory.Contains(750000, 1))
                        {
                            dialog.Text($"Congratulations, [{client.Entity.Name}], You have completed your fist mission in your journey");
                            dialog.Text($"\n Now it's time for your reward");
                            dialog.Option("Thank you", 3);
                            dialog.Finish();
                            break;
                        }
                        else if (client.Entity.Level <= 15 || client.Entity.QuestFrom != "FarmerHarlan" || client.Entity.QuestKO != 50 && !client.Inventory.Contains(750000, 1))
                        {
                            dialog.Text($"Welcome, [{client.Entity.Name}], I hope you are ready for your frist mission in your journey");
                            dialog.Option("Yes, I'm ready", 1);
                            dialog.Option("Sorry, Need some time", 255);
                            dialog.Finish();
                            break;
                        }
                        else
                        {
                            dialog.Text($"Unfortunately Dear, [{client.Entity.Name}] you are not a beginner any more");
                            dialog.Finish();
                            break;
                        }
                    }
                case 1:
                    {

                        dialog.Text($"Objectives :\n");
                        dialog.Text($"Slay 50 Pheasant, plaguing the barley fields (they're weak, non-aggressive pests perfect for learning basic combat and targeting).");
                        dialog.Text($"\nRewards:");
                        dialog.Text($"\n1000 XP Point, 10 Conquer Points, 1000 Silver");
                        dialog.Option("Let's go then", 2); // Add option to go back
                        dialog.Finish();
                        break;
                    }
                case 2:
                    {
                        //client.Entity.QuestMob = "Pheasant";
                        //client.Entity.QuestFrom = "FarmerHarlan";
                        //client.Entity.QuestKO = 0;
                        //client.Inventory.Add(new ConquerItem(true) { ID = 750000, Durability = 50, MaximDurability = (ushort)Database.MonsterInformation.GetIDFromName(client.Entity.QuestMob) }, Enums.ItemUse.CreateAndAdd);
                        if (client.Quests.GetQuest(QuestID.PheasantInfestation) == null || client.Quests.CheckQuest(QuestID.PheasantInfestation) == QuestPacket.QuestStatus.Available)
                        client.Quests.Accept(QuestID.PheasantInfestation);
                        break;
                    }

                case 3:
                    {
                        if (client.Entity.QuestKO >= 50 && client.Inventory.Contains(750000, 1))
                        {
                            client.Entity.QuestKO = 0;
                            client.Entity.QuestMob = "";
                            client.Entity.QuestFrom = "";
                            client.Inventory.Remove(750000, 1);                   
                            client.IncreaseExperience((ulong)1000, false);
                            client.Entity.ConquerPoints += 10;
                            client.Entity.Money += 1000;

                            dialog.Text("Good job! You killed 50 Monsters! Here is your 1000 Exp, 10 Cps, 1000 Silver");
                            dialog.Option("Thanks.", 255);
                            dialog.Avatar(30);
                            dialog.Finish();
                        }
                        break;
                    }
                case 255: // Exit
                    {
                        dialog.Finish(); // Only call Finish() when actually exiting
                        return;
                    }
            }
        }
    }
}
