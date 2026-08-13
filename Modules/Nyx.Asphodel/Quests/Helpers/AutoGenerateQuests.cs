using Nyx.Asphodel.Quests.Core;
using Nyx.Asphodel.Database;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.Asphodel.Quests.Helpers
{
    public class AutoGenerateQuests
    {
        public readonly string QuestDataPath = "Database/Quests/";
        public readonly string DatabasePath = "Database/Quests/Database/";
        public readonly List<Reward> Rewards = new List<Reward>();
        public const int MAX_Quest_ID = 10000;
        public const int MIN_Quest_ID = 1000;
        public const byte MAX_QUESTS = 100;
        public const byte MAX_Daily_QUESTS = 10;
        public const byte MAX_Weekly_QUESTS = 12;
        public const byte MAX_Monthely_QUESTS = 15;
        public const byte MAX_Quantity = 10;
        public const byte Min_Quantity = 1;
        public const int MIN_EXP_Amount = 100000;
        public const int MAX_EXP_Amount = 1000000;
        public const int MAX_Money_Amount = 2000000;
        public const int Main_Money_Amount = 30000;
        public const int Main_CPS_Amount = 100;
        public const int MAX_CPS_Amount = 10000;
        public const byte MIN_VIP_LEVEL = 1;
        public const byte MAX_VIP_LEVEL = 6;
        public const byte MIN_Level = 1;
        public const byte MAX_Level = 140;
        public const ushort MAX_Monsters_Quantity = 5000;
        public const byte MIN_Monsters_Quantity = 1;
        public readonly List<Monseters> Monsters = new List<Monseters>();

        public readonly Database.MonstersDatabase MonstersDatabase;
        public AutoGenerateQuests()
        {
            MonstersDatabase = new Database.MonstersDatabase();
        }
        public async Task OrgnizeMonsters()
        {
            Random random = new Random();
            int _Quantity = 0;
            if (MonstersDatabase.Monsters == null || MonstersDatabase.Monsters.Count == 0)
            {
                await MonstersDatabase.LoadMonsters();
            }

            foreach (var monster in MonstersDatabase.Monsters)
            {
                if(monster.Type == MonstersDatabase.MonsterType.Normal)
                {
                    _Quantity = random.Next(MIN_Monsters_Quantity, MAX_Monsters_Quantity);
                }
                else if(monster.Type == MonstersDatabase.MonsterType.Boss)
                {
                    _Quantity = 1;
                }
                Monsters.Add(new Monseters()
                {
                    MonsterID = new List<uint> { monster.Identity },
                    MobInformation = new List<MonseterInformation> { new MonseterInformation() { MonsterName = monster.Name, Description = monster.Description, MapID = monster.MapID, MapName = monster.MapName, XCoordinate = monster.XCoordinate, YCoordinate = monster.YCoordinate } },
                    Quantity = _Quantity,
                    MobType = (MonsterType)monster.Type,
                });
            }
        }

        public async Task GetNextID()
        {
            //0. Get Last Quest ID from Database Then add 1 to it and assign it to New Quest

            // Hello dear Player you have came in the right time, i have a quest for you, there is a monster i need you to kill "Hunter", and i will reward you for this misstion
            // here is some information about this monster :
            // Monster name :  "Shadow King" , Location : "Desert" at (230,350) , monster type is Boss so you need to take care of yourself and prepare very well
            // Quest Type : Bounty Hunting
            // Quest Time : 30 Min
            // Reward : 3x(+8 Stone) , 1000 Cps , 10k EXP Point , 200k Gold

        }

        public async Task LoadRewards()
        {
            //1. Load Rewards from Rewards.json file located in QuestDataPath
            var rewards = new List<Reward>();

            rewards.Add(new Reward()
            {
                Type = new List<RewardType> { RewardType.Gold },
                Amount = 1000
            });

        }

        public async Task AutoGenerateQuestsService()
        {
            /*
            var quest = new QuestRecord
            {
                Identity = 1,
                QuestID = 1001,
                Title = "The Lost Sword",
                Description = "Retrieve the lost sword from the Dark Forest.",
                RequiredLevel = 5,
                Objectives = new Dictionary<string, int>
                {
                    { "CollectSword", 1 }
                },
                Rewards = new Dictionary<string, int>
                {
                    { "Gold", 100 },
                    { "Experience", 500 }
                }
            };
            var userQuest = new UserQuest
            {
                Identity = 1,
                QuestID = 1001,
                Status = 0, // Not Started
                StartedAt = DateTime.UtcNow,
                ProgressData = new Dictionary<string, int>
                {
                    { "CollectSword", 0 }
                }
            };
            */
        }

        public class Monseters
        {
            public List<uint> MonsterID { get; set; }
            public List<MonseterInformation> MobInformation { get; set; }
            public int Quantity { get; set; }
            public MonsterType MobType { get; set; }
        }
        public class MonseterInformation
        {
            public string MonsterName { get; set; }
            public string Description { get; set; }
            public ushort MapID { get; set; }
            public string MapName { get; set; }
            public ushort XCoordinate { get; set; }
            public ushort YCoordinate { get; set; }
        }

        public enum ObjectiveType : byte { BountyHunt = 1, CollectItems = 2, DeliverItems = 3, ExploreArea = 4, DefeatBoss = 5 }
        public enum MonsterType : byte { Normal = 0, Boss = 1 }
        public enum QuestType : byte { MainStory = 1, SideQuest = 2, DailyQuest = 3, EventQuest = 4 }
        public enum QuestDifficulty : byte { Easy = 1, Medium = 2, Hard = 3, Expert = 4 }
        public enum QuestRepeatability : byte { NonRepeatable = 0, Daily = 1, Weekly = 2, Monthly = 3 }
        public enum QuestTimeType : byte { Unlimeted = 0, Limited = 1 }
        public enum RequiredClass : byte { All = 0, Trojan = 10, Warrior = 20, Archer = 40, Ninja = 50, Monk = 60, Pirate = 70, DragonWarrior = 80, Taoist = 100, WaterTaoist = 132, FireTaoist = 142 }

        public class Reward
        {
            public List<RewardType> Type { get; set; }
            public int Amount { get; set; }
            public List<uint> ItemID { get; set; }
            public List<byte> Quantity { get; set; }
            public byte Chance { get; set; }
        }
        public enum RewardType : byte
        {
            Gold = 1,
            Experience = 2,
            Item = 3,
            SkillPoint = 4,
            Title = 5,
            CPS = 6
        }
    }
}
