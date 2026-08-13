namespace Nyx.Brain.Models
{
    /// <summary>
    /// Comprehensive game rates for Conquer Online server balancing
    /// </summary>
    public class GameRates
    {
        // Core rates - multipliers
        public decimal ExpRate { get; set; }
        public decimal SkillExpRate { get; set; }
        public decimal DropRate { get; set; }
        public decimal MoneyRate { get; set; }
        public decimal CpsDropRate { get; set; }
        
        // Actual drop amounts per monster (baseline * rate)
        public uint MoneyPerMonster { get; set; }       // Actual money drop (baseline 300)
        public uint CpsPerMonster { get; set; }         // Actual CPS drop (baseline 3)
        
        // Monster control per map
        public Dictionary<ushort, int> MonsterCountPerMap { get; set; } = new(); // MapID -> Count
        public decimal MonsterDamageMultiplier { get; set; } = 1.0m;
        public decimal MonsterHealthMultiplier { get; set; } = 1.0m;
        public decimal BossDifficultyMultiplier { get; set; } = 1.0m;
        
        // Player modifiers
        public decimal PlayerDamageMultiplier { get; set; } = 1.0m;
        public decimal PlayerDefenseMultiplier { get; set; } = 1.0m;
        
        // Spawn rates
        public decimal RareItemSpawnRate { get; set; }
        public decimal EliteMonsterSpawnRate { get; set; }
        
        // Level-specific adjustments (byte level -> decimal multiplier)
        public Dictionary<byte, decimal> LevelBracketExpModifiers { get; set; } = new();
        
        // Metadata
        public DateTime LastUpdated { get; set; }
        public string AdjustmentReason { get; set; } = string.Empty;
        public double DifficultyScore { get; set; }  // 0-100, where 50 is balanced
        
        public override string ToString()
        {
            return $"Exp: {ExpRate:F2}x, Money: {MoneyPerMonster}/monster, CPS: {CpsPerMonster}/monster, " +
                   $"Drop: {DropRate:F2}x, Difficulty: {DifficultyScore:F1}/100, SkillExp: {SkillExpRate:F2}x";
        }
        
        /// <summary>
        /// Check if rates are balanced (difficulty near 50)
        /// </summary>
        public bool IsBalanced => DifficultyScore >= 45 && DifficultyScore <= 55;
        
        /// <summary>
        /// Check if game is too difficult
        /// </summary>
        public bool IsTooDifficult => DifficultyScore > 60;
        
        /// <summary>
        /// Check if game is too easy
        /// </summary>
        public bool IsTooEasy => DifficultyScore < 40;
    }
}
