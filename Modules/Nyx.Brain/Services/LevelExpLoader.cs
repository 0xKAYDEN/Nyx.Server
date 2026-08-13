using Nyx.Brain.Models;

namespace Nyx.Brain.Services
{
    /// <summary>
    /// Loads and parses Level.ini file to get exp requirements per level
    /// </summary>
    public static class LevelExpLoader
    {
        /// <summary>
        /// Parse Level.ini file and load exp requirements
        /// </summary>
        public static void LoadLevelExp(RateConfiguration config, string levelIniPath)
        {
            try
            {
                if (!File.Exists(levelIniPath))
                {
                    Console.WriteLine($"Level.ini not found at: {levelIniPath}");
                    UseDefaultExp(config);
                    return;
                }
                
                var lines = File.ReadAllLines(levelIniPath);
                string? expLine = null;
                
                foreach (var line in lines)
                {
                    if (line.StartsWith("EXP =") || line.StartsWith("EXP="))
                    {
                        expLine = line.Substring(line.IndexOf('=') + 1).Trim();
                        break;
                    }
                }
                
                if (expLine == null)
                {
                    Console.WriteLine("EXP line not found in Level.ini");
                    UseDefaultExp(config);
                    return;
                }
                
                // Parse comma-separated exp values
                var expValues = expLine.Split(new[] { ',', ' ' }, StringSplitOptions.RemoveEmptyEntries);
                var expList = new List<ulong>();
                
                foreach (var value in expValues)
                {
                    if (ulong.TryParse(value.Trim(), out ulong exp))
                    {
                        expList.Add(exp);
                    }
                }
                
                // Fill the config array (max 140 levels)
                int maxLevel = Math.Min(expList.Count, config.LevelExperience.Length);
                for (int i = 0; i < maxLevel; i++)
                {
                    config.LevelExperience[i] = expList[i];
                }
                
                Console.WriteLine($"Loaded {maxLevel} level exp requirements from Level.ini");
                PrintExpSummary(config);
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error loading Level.ini: {ex.Message}");
                UseDefaultExp(config);
            }
        }
        
        /// <summary>
        /// Use default exp values if Level.ini can't be loaded
        /// </summary>
        private static void UseDefaultExp(RateConfiguration config)
        {
            Console.WriteLine("Using default exp values");
            
            // Simple exponential growth formula as fallback
            for (int i = 0; i < config.LevelExperience.Length; i++)
            {
                config.LevelExperience[i] = (ulong)(1000 * Math.Pow(1.1, i));
            }
        }
        
        /// <summary>
        /// Print summary of exp requirements
        /// </summary>
        private static void PrintExpSummary(RateConfiguration config)
        {
            ulong totalExpTo140 = config.GetTotalExpToLevel(140);
            ulong requiredPerHour = config.GetRequiredExpPerHour();
            
            Console.WriteLine($"=== Level Exp Summary ===");
            Console.WriteLine($"Total EXP to Level 140: {totalExpTo140:N0}");
            Console.WriteLine($"Target days to 140: {config.TargetDaysToMaxLevel} days");
            Console.WriteLine($"Avg play hours/day: {config.AveragePlayHoursPerDay} hours");
            Console.WriteLine($"Required EXP/hour: {requiredPerHour:N0}");
            Console.WriteLine($"Milestones:");
            Console.WriteLine($"  Level 50: {config.GetTotalExpToLevel(50):N0} exp");
            Console.WriteLine($"  Level 100: {config.GetTotalExpToLevel(100):N0} exp");
            Console.WriteLine($"  Level 120: {config.GetTotalExpToLevel(120):N0} exp");
            Console.WriteLine($"  Level 130: {config.GetTotalExpToLevel(130):N0} exp");
            Console.WriteLine($"  Level 140: {totalExpTo140:N0} exp");
        }
        
        /// <summary>
        /// Calculate average exp per level in a range
        /// </summary>
        public static ulong GetAverageExpForLevelRange(RateConfiguration config, byte startLevel, byte endLevel)
        {
            if (startLevel >= endLevel || endLevel > config.LevelExperience.Length)
                return 0;
                
            ulong total = 0;
            int count = 0;
            
            for (byte i = startLevel; i < endLevel && i < config.LevelExperience.Length; i++)
            {
                total += config.LevelExperience[i];
                count++;
            }
            
            return count > 0 ? total / (ulong)count : 0;
        }
        
        /// <summary>
        /// Get exp requirement for a specific level
        /// </summary>
        public static ulong GetExpForLevel(RateConfiguration config, byte level)
        {
            if (level == 0 || level > config.LevelExperience.Length)
                return 0;
                
            return config.LevelExperience[level - 1]; // Array is 0-indexed
        }
    }
}
