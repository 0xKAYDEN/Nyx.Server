using Nyx.Server.Client;
using Nyx.Server.Network.GamePackets;

namespace Nyx.Server.Nullifications
{
    public class Callculations
    {
        public const ushort Minimum_Nullification_Reqired = 3000;

        //0. Checker for any Event 
        public static bool IsQualified(GameClient client)
        {
            Calculate(client);
            if(client.Entity.Nullifications >= Minimum_Nullification_Reqired)
            {
                return true;
            }
            return false;
        }

        //1. get all the equped gear of the player and add 100 point for each epic peace of gear
        public static void Calculate(GameClient client)
        {
            // Reset Nullifications before calculation if needed
            client.Entity.Nullifications = 0;

            foreach (var item in client.Equipment.Objects)
            {
                if (item == null) continue;
                if (item.ID % 10 == (byte)Game.Enums.ItemQuality.Super) // Replace with your actual epic check
                {
                    client.Entity.Nullifications += 500;
                }
                if(item.ID % 10 == (byte)Game.Enums.ItemQuality.Elite)
                {
                    client.Entity.Nullifications += 450;
                }
                if(item.ID % 10 == (byte)Game.Enums.ItemQuality.Unique)
                {
                    client.Entity.Nullifications += 400;
                }
                if (item.ID % 10 == (byte)Game.Enums.ItemQuality.Refined)
                {
                    client.Entity.Nullifications += 350;
                }
                if (item.ID % 10 == (byte)Game.Enums.ItemQuality.NormalV3)
                {
                    client.Entity.Nullifications += 300;
                }
                if (item.ID % 10 == (byte)Game.Enums.ItemQuality.NormalV2)
                {
                    client.Entity.Nullifications += 250;
                }
                if (item.ID % 10 == (byte)Game.Enums.ItemQuality.NormalV1)
                {
                    client.Entity.Nullifications += 200;
                }
                if (item.ID % 10 == (byte)Game.Enums.ItemQuality.Fixed)
                {
                    client.Entity.Nullifications += 0;
                }
            }   
        }
        //2. Update the database 
    }
}
