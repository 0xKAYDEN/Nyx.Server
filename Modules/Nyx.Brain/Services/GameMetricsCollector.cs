using Nyx.Brain.Models;
using System.Collections.Concurrent;

namespace Nyx.Brain.Services
{
    /// <summary>
    /// Collects real-time game metrics from the Conquer Online server
    /// </summary>
    public class GameMetricsCollector
    {
        private readonly ConcurrentQueue<MetricsSnapshot> _history = new();
        private readonly int _maxHistorySize = 1440; // 24 hours at 1 snapshot/minute
        private MetricsSnapshot _currentSnapshot = new();
        private readonly object _lock = new();
        
        // Counters for rate calculations
        private long _expGainedThisHour = 0;
        private long _skillExpGainedThisHour = 0;
        private long _moneyDroppedThisHour = 0;
        private long _cpsDroppedThisHour = 0;
        private int _monstersKilledThisHour = 0;
        private int _deathsThisHour = 0;
        private DateTime _hourStartTime = DateTime.UtcNow;
        
        public GameEnvironment GetCurrentEnvironment()
        {
            lock (_lock)
            {
                return _currentSnapshot.Environment;
            }
        }
        
        public void RecordSnapshot(GameEnvironment environment)
        {
            lock (_lock)
            {
                var snapshot = new MetricsSnapshot
                {
                    Timestamp = DateTime.UtcNow,
                    Environment = environment
                };
                
                _currentSnapshot = snapshot;
                _history.Enqueue(snapshot);
                
                // Maintain max history
                while (_history.Count > _maxHistorySize && _history.TryDequeue(out _))
                {
                    // Remove oldest
                }
            }
        }
        
        /// <summary>
        /// Update player counts and metrics
        /// </summary>
        public void UpdatePlayerMetrics(int onlineCount, List<Player> activePlayers)
        {
            lock (_lock)
            {
                _currentSnapshot.Environment.OnlinePlayerCount = onlineCount;
                _currentSnapshot.Environment.ActivePlayers = new List<Player>(activePlayers);
                
                // Calculate level brackets
                var levelBrackets = new Dictionary<int, int>();
                foreach (var player in activePlayers)
                {
                    int bracket = ((int)player.Level / 10) * 10; // Group by 10s
                    if (!levelBrackets.ContainsKey(bracket))
                        levelBrackets[bracket] = 0;
                    levelBrackets[bracket]++;
                }
                _currentSnapshot.Environment.PlayersByLevelBracket = levelBrackets;
            }
        }
        
        /// <summary>
        /// Record experience gained (ulong)
        /// </summary>
        public void RecordExpGain(ulong exp, ulong skillExp)
        {
            lock (_lock)
            {
                _expGainedThisHour += (long)Math.Min(exp, long.MaxValue);
                _skillExpGainedThisHour += (long)Math.Min(skillExp, long.MaxValue);
            }
        }
        
        /// <summary>
        /// Record money/CPS drops (uint amounts)
        /// </summary>
        public void RecordDrops(uint money, uint cps)
        {
            lock (_lock)
            {
                _moneyDroppedThisHour += money;
                _cpsDroppedThisHour += cps;
            }
        }
        
        /// <summary>
        /// Record monster kill
        /// </summary>
        public void RecordMonsterKill()
        {
            Interlocked.Increment(ref _monstersKilledThisHour);
            lock (_lock)
            {
                _currentSnapshot.Environment.MonstersKilled++;
            }
        }
        
        /// <summary>
        /// Record player death
        /// </summary>
        public void RecordPlayerDeath(bool isPvP = false)
        {
            Interlocked.Increment(ref _deathsThisHour);
            lock (_lock)
            {
                _currentSnapshot.Environment.TotalDeaths++;
                if (isPvP)
                    _currentSnapshot.Environment.TotalPvPDeaths++;
            }
        }
        
        /// <summary>
        /// Record boss attempt and result
        /// </summary>
        public void RecordBossAttempt(bool success)
        {
            lock (_lock)
            {
                _currentSnapshot.Environment.BossAttempts++;
                if (success)
                    _currentSnapshot.Environment.BossesKilled++;
            }
        }
        
        /// <summary>
        /// Record quest completion or abandonment
        /// </summary>
        public void RecordQuest(bool completed)
        {
            lock (_lock)
            {
                if (completed)
                    _currentSnapshot.Environment.QuestsCompleted++;
                else
                    _currentSnapshot.Environment.QuestsAbandoned++;
            }
        }
        
        /// <summary>
        /// Update economy totals (uint for money/cps, ulong for totals)
        /// </summary>
        public void UpdateEconomyTotals(ulong totalMoney, ulong totalCps, ulong totalBoundCps)
        {
            lock (_lock)
            {
                _currentSnapshot.Environment.TotalMoneyInGame = totalMoney;
                _currentSnapshot.Environment.TotalCpsInGame = totalCps;
                _currentSnapshot.Environment.TotalBoundCpsInGame = totalBoundCps;
            }
        }
        
        /// <summary>
        /// Update map player distribution for monster spawning
        /// </summary>
        public void UpdateMapPlayerCounts(Dictionary<ushort, int> playersByMap)
        {
            lock (_lock)
            {
                _currentSnapshot.Environment.PlayersByMapId = new Dictionary<ushort, int>(playersByMap);
            }
        }
        
        /// <summary>
        /// Consolidate hourly metrics - call this every hour
        /// </summary>
        public void ConsolidateHourlyMetrics()
        {
            lock (_lock)
            {
                _currentSnapshot.Environment.TotalExpGainedLastHour = (ulong)Math.Max(0, _expGainedThisHour);
                _currentSnapshot.Environment.TotalSkillExpGainedLastHour = (ulong)Math.Max(0, _skillExpGainedThisHour);
                _currentSnapshot.Environment.MoneyDroppedLastHour = (ulong)_moneyDroppedThisHour;
                _currentSnapshot.Environment.CpsDroppedLastHour = (ulong)_cpsDroppedThisHour;
                
                // Reset hourly counters
                _expGainedThisHour = 0;
                _skillExpGainedThisHour = 0;
                _moneyDroppedThisHour = 0;
                _cpsDroppedThisHour = 0;
                _monstersKilledThisHour = 0;
                _deathsThisHour = 0;
                _hourStartTime = DateTime.UtcNow;
            }
        }
        
        /// <summary>
        /// Get historical metrics for analysis
        /// </summary>
        public List<MetricsSnapshot> GetHistory(TimeSpan period)
        {
            var cutoff = DateTime.UtcNow - period;
            return _history.Where(s => s.Timestamp >= cutoff).ToList();
        }
        
        /// <summary>
        /// Calculate difficulty score based on multiple factors
        /// </summary>
        public double CalculateDifficultyScore()
        {
            lock (_lock)
            {
                var env = _currentSnapshot.Environment;
                double score = 50.0; // Start at balanced
                
                // Factor 1: Death rate (0.5-1.5 deaths/player is ideal)
                double deathRate = env.GetDeathRatePerPlayer();
                if (deathRate < 0.5)
                    score -= 10; // Too easy
                else if (deathRate > 1.5)
                    score += 15; // Too hard
                
                // Factor 2: Boss success rate (50-70% is ideal)
                double bossRate = env.GetBossSuccessRate();
                if (bossRate > 70)
                    score -= 5; // Too easy
                else if (bossRate < 50)
                    score += 10; // Too hard
                
                // Factor 3: Player retention (>80% is good)
                double retention = env.GetPlayerRetention();
                if (retention < 70)
                    score += 5; // Players leaving, might be too hard/boring
                
                // Factor 4: Quest completion rate
                if (env.QuestsCompleted + env.QuestsAbandoned > 0)
                {
                    double questRate = (double)env.QuestsCompleted / (env.QuestsCompleted + env.QuestsAbandoned);
                    if (questRate < 0.6)
                        score += 5; // Low completion, too hard
                }
                
                return Math.Clamp(score, 0, 100);
            }
        }
        
        /// <summary>
        /// Get performance summary
        /// </summary>
        public string GetSummary()
        {
            lock (_lock)
            {
                var env = _currentSnapshot.Environment;
                return $"Players: {env.OnlinePlayerCount}, " +
                       $"Avg Level: {env.GetAveragePlayerLevel():F1}, " +
                       $"Deaths/Player: {env.GetDeathRatePerPlayer():F2}, " +
                       $"Boss Success: {env.GetBossSuccessRate():F1}%, " +
                       $"Difficulty: {CalculateDifficultyScore():F1}/100";
            }
        }
    }
    
    public class MetricsSnapshot
    {
        public DateTime Timestamp { get; set; }
        public GameEnvironment Environment { get; set; } = new();
    }
}
