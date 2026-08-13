namespace Nyx.Brain.Models
{
    /// <summary>
    /// Configuration for Conquer Online server balancing
    /// Based on: Money drop per monster = 300, CPS drop per monster = 3
    /// Target: Players reach level 140 in 2 months
    /// </summary>
    public class RateConfiguration
    {
        // Baseline values
        public uint BaseMoneyDropPerMonster { get; set; } = 300;  // Money per monster kill
        public uint BaseCpsDropPerMonster { get; set; } = 3;      // CPS per monster kill
        
        // Multiplier rates (1.0 = normal)
        public decimal BaseDropRate { get; set; } = 1.0m;         // Item drop rate multiplier
        public decimal BaseExpRate { get; set; } = 1.0m;          // Experience rate multiplier
        public decimal BaseMoneyRate { get; set; } = 1.0m;        // Money drop multiplier
        public decimal BaseCpsDropRate { get; set; } = 1.0m;      // CPS drop multiplier
        
        // Monster spawning
        public int MonstersPerPlayerOnMap { get; set; } = 10;     // Monsters to spawn per player on map
        
        // Rate limits
        public decimal MinDropRate { get; set; } = 0.5m;
        public decimal MaxDropRate { get; set; } = 3.0m;
        public decimal MinExpRate { get; set; } = 0.5m;
        public decimal MaxExpRate { get; set; } = 3.0m;
        public decimal MinMoneyRate { get; set; } = 0.5m;
        public decimal MaxMoneyRate { get; set; } = 3.0m;
        public decimal MinCpsDropRate { get; set; } = 0.5m;
        public decimal MaxCpsDropRate { get; set; } = 3.0m;
        
        // Target values for balancing
        public byte TargetLevel { get; set; } = 140;              // Target level in 2 months
        public int TargetDaysToMaxLevel { get; set; } = 60;       // 2 months = 60 days
        public int AveragePlayHoursPerDay { get; set; } = 4;      // Expected daily playtime
        
        public uint TargetAverageMoney { get; set; } = 50000000;  // 50 million
        public uint TargetAverageCps { get; set; } = 500000;      // 500k CPS
        public int TargetPlayerCount { get; set; } = 100;
        
        // Level exp requirements (loaded from Level.ini)
        public ulong[] LevelExperience { get; set; } = new ulong[140];
        
        /// <summary>
        /// Calculate total exp needed to reach target level from level 1
        /// </summary>
        public ulong GetTotalExpToLevel(byte level)
        {
            if (level == 0 || level > LevelExperience.Length)
                return 0;
                
            ulong total = 0;
            for (int i = 0; i < level && i < LevelExperience.Length; i++)
            {
                total += LevelExperience[i];
            }
            return total;
        }
        
        /// <summary>
        /// Calculate required exp per hour to reach target level in target days
        /// </summary>
        public ulong GetRequiredExpPerHour()
        {
            ulong totalExp = GetTotalExpToLevel(TargetLevel);
            int totalHours = TargetDaysToMaxLevel * AveragePlayHoursPerDay;
            
            if (totalHours == 0) return 0;
            return totalExp / (ulong)totalHours;
        }
    }
}
