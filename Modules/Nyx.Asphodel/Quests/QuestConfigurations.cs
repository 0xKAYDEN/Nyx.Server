using Nyx.Asphodel.Kernal.Scripts;
using Serilog;
using Serilog.Core;
using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices.Marshalling;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;

namespace Nyx.Asphodel.Quests
{
    public class QuestConfigurations
    {
        public static readonly string QuestDataPath = "Database/Quests/";

        private static ILogger logger = Log.ForContext<QuestConfigurations>();

        // Thread-safe dictionary to store all loaded quests by QuestID
        private readonly ConcurrentDictionary<int, QuestConfiguration> _quests = new();

        // Optional: List of quests offered by specific NPCs (NPC ID -> List of Quest IDs)
        private static readonly ConcurrentDictionary<int, List<int>> _npcQuestOffers = new();

        /// <summary>
        /// Loads or reloads all quest configurations from JSON files in the QuestDataPath directory.
        /// </summary>
        public async Task LoadQuestConfigurationsAsync()
        {
            if (!Directory.Exists(QuestDataPath))
            {
                logger.Warning("Quest data directory not found: {Path}. No quests will be loaded.", QuestDataPath);
                return;
            }

            var jsonFiles = Directory.GetFiles(QuestDataPath, "*.json", SearchOption.TopDirectoryOnly);

            if (jsonFiles.Length == 0)
            {
                logger.Warning("No .json files found in quest directory: {Path}", QuestDataPath);
                return;
            }

            _quests.Clear(); // Clear previous data on reload
            _npcQuestOffers.Clear();

            var options = new JsonSerializerOptions
            {
                PropertyNameCaseInsensitive = true,
                WriteIndented = true
            };

            foreach (var filePath in jsonFiles)
            {
                try
                {
                    var jsonContent = await File.ReadAllTextAsync(filePath);
                    var quest = JsonSerializer.Deserialize<QuestConfiguration>(jsonContent, options);

                    if (quest == null || quest.QuestID <= 0)
                    {
                        logger.Error("Failed to deserialize or invalid QuestID in file: {File}", filePath);
                        continue;
                    }

                    if (!_quests.TryAdd(quest.QuestID, quest))
                    {
                        logger.Warning("Duplicate QuestID {QuestID} found in file {File}. Overwriting previous.", quest.QuestID, filePath);
                        _quests[quest.QuestID] = quest; // Overwrite if duplicate
                    }

                    // If the quest has a field for OfferedByNPCs, populate the NPC lookup (see example JSON below)
                    if (quest.OfferedByNPCs != null)
                    {
                        foreach (var npcId in quest.OfferedByNPCs)
                        {
                            _npcQuestOffers.AddOrUpdate(npcId,
                                new List<int> { quest.QuestID },
                                (key, list) => { list.Add(quest.QuestID); return list; });
                        }
                    }

                    logger.Information("Loaded quest: {QuestID} - {QuestName}", quest.QuestID, quest.QuestName);
                }
                catch (Exception ex)
                {
                    logger.Error(ex, "Error loading quest file: {File}", filePath);
                }
            }

            logger.Information("Quest loading complete. Loaded {Count} quests.", _quests.Count);
        }

        /// <summary>
        /// Gets a quest by its ID.
        /// </summary>
        public QuestConfiguration? GetQuest(int questId)
        {
            _quests.TryGetValue(questId, out var quest);
            return quest;
        }

        /// <summary>
        /// Gets all quests offered by a specific NPC.
        /// </summary>
        public List<QuestConfiguration> GetQuestsOfferedByNpc(int npcId)
        {
            if (_npcQuestOffers.TryGetValue(npcId, out var questIds))
            {
                var quests = new List<QuestConfiguration>();
                foreach (var id in questIds)
                {
                    if (_quests.TryGetValue(id, out var quest))
                        quests.Add(quest);
                }
                return quests;
            }

            return new List<QuestConfiguration>();
        }

        /// <summary>
        /// Gets all loaded quests.
        /// </summary>
        public IReadOnlyCollection<QuestConfiguration> GetAllQuests() => (IReadOnlyCollection<QuestConfiguration>)_quests.Values;


        public async Task QuestCompleted(uint Identity)
        { 
            //0. Store All the Quest Information Then Sign it as Completed

        }

        public async Task CheckQuestStatus(uint Identity)
        {

        }

        // Your inner classes with small improvements
        public class QuestConfiguration
        {
            public int QuestID { get; set; }
            public string QuestName { get; set; } = string.Empty;
            public string Description { get; set; } = string.Empty;
            public byte RequiredLevel { get; set; }
            public byte RequiredClass { get; set; } // 0 = any class?
            public byte EnergyCost { get; set; }
            public byte RequiredVIPLevel { get; set; }

            public List<QuestObjective> Objectives { get; set; } = new();
            public List<QuestReward> Rewards { get; set; } = new();

            // New: List of NPC IDs that offer this quest
            public List<int>? OfferedByNPCs { get; set; }

            // Optional additional fields you might want
            public QuestType QuestType { get; set; } = QuestType.SideQuest;
            public QuestDifficulty Difficulty { get; set; } = QuestDifficulty.Easy;
            public QuestRepeatability Repeatability { get; set; } = QuestRepeatability.NonRepeatable;
            public QuestTimeType QuestTimeType { get; set; }
        }

        public class QuestObjective
        {
            public ObjectiveType ObjectiveType { get; set; }
            public int TargetID { get; set; }
            public int Quantity { get; set; }
            public string? CustomDescription { get; set; } // Optional override text
        }

        public class QuestReward
        {
            public List<RewardType> RewardType { get; set; }
            public int Amount { get; set; }
            public List<uint> ItemID { get; set; } // Single item ID (or use list if multiple choices)
            public int Quantity { get; set; }
        }

        //enums
        public enum RewardType : byte { Experience = 1, Item = 2, Currency = 3, SkillPoint = 4, Title = 5 }
        public enum ObjectiveType : byte { BountyHunt = 1, CollectItems = 2, DeliverItems = 3, ExploreArea = 4, DefeatBoss = 5 }
        public enum QuestType : byte { MainStory = 1, SideQuest = 2, DailyQuest = 3, EventQuest = 4 }
        public enum QuestDifficulty : byte { Easy = 1, Medium = 2, Hard = 3, Expert = 4 }
        public enum QuestRepeatability : byte { NonRepeatable = 0, Daily = 1, Weekly = 2, Monthly = 3 }
        public enum QuestTimeType : byte { Unlimeted = 0, Limited = 1 }
    }
}
