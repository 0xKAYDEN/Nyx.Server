namespace Nyx.Brain.Models
{
    /// <summary>
    /// Extended game environment with comprehensive metrics for Conquer Online
    /// </summary>
    public class GameEnvironment
    {
        // Player metrics
        public List<Player> ActivePlayers { get; set; } = new List<Player>();
        public int OnlinePlayerCount { get; set; }
        public Dictionary<int, int> PlayersByLevelBracket { get; set; } = new();
        public Dictionary<ushort, int> PlayersByMapId { get; set; } = new(); // Map ID -> Player count
        
        // Monster metrics
        public int MonstersSpawned { get; set; }
        public int MonstersKilled { get; set; }
        public int BossesKilled { get; set; }
        public int BossAttempts { get; set; }
        
        // Economy metrics (using correct types: uint for money/cps, ulong for exp)
        public ulong TotalMoneyInGame { get; set; }      // Sum of all player money (uint per player)
        public ulong TotalCpsInGame { get; set; }        // Sum of all player CPS
        public ulong TotalBoundCpsInGame { get; set; }   // Sum of all bound CPS (from events)
        public ulong MoneyDroppedLastHour { get; set; }  // Money from monster kills
        public ulong CpsDroppedLastHour { get; set; }    // CPS from monster kills
        
        // Experience metrics (ulong)
        public ulong TotalExpGainedLastHour { get; set; }
        public ulong TotalSkillExpGainedLastHour { get; set; }
        public Dictionary<byte, ulong> ExpGainByLevel { get; set; } = new(); // Track exp gain per level
        
        // Combat metrics
        public int TotalDeaths { get; set; }
        public int TotalPvPKills { get; set; }
        public int TotalPvPDeaths { get; set; }
        
        // Engagement metrics
        public double AverageSessionDuration { get; set; }
        public int PlayersJoinedToday { get; set; }
        public int PlayersLeftToday { get; set; }
        
        // Quest metrics
        public int QuestsCompleted { get; set; }
        public int QuestsAbandoned { get; set; }
        
        // Timestamps
        public DateTime LastUpdate { get; set; }
        public DateTime ServerStartTime { get; set; }
        
        /// <summary>
        /// Calculate average player level (byte)
        /// </summary>
        public double GetAveragePlayerLevel()
        {
            if (ActivePlayers.Count == 0) return 0;
            return ActivePlayers.Average(p => (double)p.Level);
        }
        
        /// <summary>
        /// Calculate boss kill success rate
        /// </summary>
        public double GetBossSuccessRate()
        {
            if (BossAttempts == 0) return 0;
            return (double)BossesKilled / BossAttempts * 100;
        }
        
        /// <summary>
        /// Calculate monster kill rate per player
        /// </summary>
        public double GetMonstersKilledPerPlayer()
        {
            if (OnlinePlayerCount == 0) return 0;
            return (double)MonstersKilled / OnlinePlayerCount;
        }
        
        /// <summary>
        /// Calculate death rate per player
        /// </summary>
        public double GetDeathRatePerPlayer()
        {
            if (OnlinePlayerCount == 0) return 0;
            return (double)TotalDeaths / OnlinePlayerCount;
        }
        
        /// <summary>
        /// Calculate player retention (players still online vs joined)
        /// </summary>
        public double GetPlayerRetention()
        {
            if (PlayersJoinedToday == 0) return 100;
            return (1.0 - (double)PlayersLeftToday / PlayersJoinedToday) * 100;
        }
        
        /// <summary>
        /// Calculate average exp gained per hour per player
        /// </summary>
        public ulong GetAverageExpPerHourPerPlayer()
        {
            if (OnlinePlayerCount == 0) return 0;
            return TotalExpGainedLastHour / (ulong)OnlinePlayerCount;
        }
        
        /// <summary>
        /// Calculate average money per player
        /// </summary>
        public uint GetAverageMoneyPerPlayer()
        {
            if (ActivePlayers.Count == 0) return 0;
            return (uint)ActivePlayers.Average(p => (double)p.Money);
        }
        
        /// <summary>
        /// Calculate average CPS per player
        /// </summary>
        public uint GetAverageCpsPerPlayer()
        {
            if (ActivePlayers.Count == 0) return 0;
            return (uint)ActivePlayers.Average(p => (double)p.Cps);
        }
    }
}
