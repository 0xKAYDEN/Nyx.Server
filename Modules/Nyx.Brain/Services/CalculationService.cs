using Nyx.Brain.Models;

namespace Nyx.Brain.Services
{
    /// <summary>
    /// Calculates dynamic game rates based on server metrics for Conquer Online
    /// Baseline: Money = 300/monster, CPS = 3/monster, Target: Level 140 in 60 days
    /// </summary>
    public class CalculationService
    {
        private readonly RateConfiguration _config;

        public CalculationService(RateConfiguration config)
        {
            _config = config;
        }

        public GameRates CalculateRates(GameEnvironment environment, double difficultyScore)
        {
            var rates = new GameRates
            {
                LastUpdated = DateTime.Now,
                DifficultyScore = difficultyScore
            };

            var difficultyFactor = CalculateDifficultyFactor(difficultyScore);

            // Experience rate calculation based on progression speed
            rates.ExpRate = CalculateExpRate(environment, difficultyFactor);
            rates.SkillExpRate = CalculateSkillExpRate(environment, difficultyFactor);
            
            // Economy rates based on averages and difficulty
            rates.MoneyRate = CalculateMoneyRate(environment, difficultyFactor);
            rates.CpsDropRate = CalculateCpsDropRate(environment, difficultyFactor);
            
            // Calculate actual drops per monster
            rates.MoneyPerMonster = (uint)(_config.BaseMoneyDropPerMonster * rates.MoneyRate);
            rates.CpsPerMonster = (uint)(_config.BaseCpsDropPerMonster * rates.CpsDropRate);
            
            // Item drop rate
            rates.DropRate = CalculateDropRate(environment, difficultyFactor);
            
            // Monster spawning per map based on players
            rates.MonsterCountPerMap = CalculateMonsterCountPerMap(environment);
            
            // Combat difficulty adjustments
            rates.MonsterDamageMultiplier = CalculateMonsterDamage(difficultyScore, environment);
            rates.MonsterHealthMultiplier = CalculateMonsterHealth(difficultyScore, environment);
            rates.BossDifficultyMultiplier = CalculateBossDifficulty(environment);
            
            // Player power adjustments
            rates.PlayerDamageMultiplier = CalculatePlayerDamage(difficultyScore);
            rates.PlayerDefenseMultiplier = CalculatePlayerDefense(difficultyScore);
            
            // Spawn rates
            rates.RareItemSpawnRate = CalculateRareItemSpawn(environment);
            rates.EliteMonsterSpawnRate = CalculateEliteMonsterSpawn(difficultyScore);
            
            // Level-specific adjustments
            rates.LevelBracketExpModifiers = CalculateLevelBracketModifiers(environment);
            
            // Adjustment reason
            rates.AdjustmentReason = DetermineAdjustmentReason(difficultyScore, environment);

            return rates;
        }

        private decimal CalculateDifficultyFactor(double difficultyScore)
        {
            // Difficulty score: 50 = balanced, <40 = too easy, >60 = too hard
            // When too easy, reduce rates to slow progress
            // When too hard, increase rates to speed progress
            if (difficultyScore < 40)
                return 0.85m; // Game is too easy, reduce rewards
            else if (difficultyScore > 60)
                return 1.15m; // Game is too hard, increase rewards
            else
                return 1.0m; // Balanced
        }

        /// <summary>
        /// Calculate exp rate to achieve Level 140 in 60 days (2 months)
        /// </summary>
        private decimal CalculateExpRate(GameEnvironment environment, decimal difficultyFactor)
        {
            // Calculate target exp per hour
            ulong targetExpPerHour = _config.GetRequiredExpPerHour();
            
            // Get actual exp per hour per player
            ulong actualExpPerHour = environment.GetAverageExpPerHourPerPlayer();
            
            if (actualExpPerHour == 0 || targetExpPerHour == 0)
                return _config.BaseExpRate;
            
            // Calculate rate needed: if actual < target, increase rate
            decimal performanceRatio = (decimal)actualExpPerHour / (decimal)targetExpPerHour;
            
            // Inverse relationship: if gaining too slow, increase rate
            decimal rate = _config.BaseExpRate / Math.Max(performanceRatio, 0.1m);
            
            // Apply difficulty adjustment
            rate *= difficultyFactor;
            
            return Math.Clamp(rate, _config.MinExpRate, _config.MaxExpRate);
        }

        private decimal CalculateSkillExpRate(GameEnvironment environment, decimal difficultyFactor)
        {
            var baseRate = _config.BaseExpRate * 0.8m; // Skill exp typically 80% of combat exp
            
            // Adjust based on actual skill exp gain
            if (environment.TotalSkillExpGainedLastHour > 0 && environment.OnlinePlayerCount > 0)
            {
                ulong avgSkillExpPerPlayer = environment.TotalSkillExpGainedLastHour / (ulong)environment.OnlinePlayerCount;
                ulong targetSkillExp = _config.GetRequiredExpPerHour() / 5; // 20% of combat exp
                
                if (avgSkillExpPerPlayer < targetSkillExp)
                    baseRate *= 1.1m;
            }
            
            return Math.Clamp(baseRate * difficultyFactor, _config.MinExpRate * 0.5m, _config.MaxExpRate * 0.8m);
        }

        /// <summary>
        /// Calculate money rate based on economy balance
        /// Baseline: 300 money per monster
        /// </summary>
        private decimal CalculateMoneyRate(GameEnvironment environment, decimal difficultyFactor)
        {
            uint avgMoney = environment.GetAverageMoneyPerPlayer();
            
            if (avgMoney == 0)
                return _config.BaseMoneyRate;
            
            // If players have less than target, increase money drops
            decimal moneyRatio = (decimal)avgMoney / (decimal)_config.TargetAverageMoney;
            
            // Inverse: if players poor, increase drops
            decimal rate = _config.BaseMoneyRate / Math.Max(moneyRatio, 0.3m);
            
            rate *= difficultyFactor;
            
            return Math.Clamp(rate, _config.MinMoneyRate, _config.MaxMoneyRate);
        }

        /// <summary>
        /// Calculate CPS drop rate
        /// Baseline: 3 CPS per monster (Bound CPS comes from events, not calculated here)
        /// </summary>
        private decimal CalculateCpsDropRate(GameEnvironment environment, decimal difficultyFactor)
        {
            uint avgCps = environment.GetAverageCpsPerPlayer();
            
            if (avgCps == 0)
                return _config.BaseCpsDropRate;
            
            decimal cpsRatio = (decimal)avgCps / (decimal)_config.TargetAverageCps;
            
            decimal rate = _config.BaseCpsDropRate / Math.Max(cpsRatio, 0.3m);
            
            rate *= difficultyFactor;
            
            return Math.Clamp(rate, _config.MinCpsDropRate, _config.MaxCpsDropRate);
        }

        private decimal CalculateDropRate(GameEnvironment environment, decimal difficultyFactor)
        {
            var avgLevel = environment.GetAveragePlayerLevel();
            
            // Higher level players deserve better drops
            decimal levelBonus = (decimal)(avgLevel / 140.0); // 0 to 1.0 as they approach max
            
            decimal rate = _config.BaseDropRate * (1.0m + levelBonus * 0.5m) * difficultyFactor;
            
            return Math.Clamp(rate, _config.MinDropRate, _config.MaxDropRate);
        }

        /// <summary>
        /// Calculate monsters per map based on player count PER MAP
        /// Not global player count!
        /// </summary>
        private Dictionary<ushort, int> CalculateMonsterCountPerMap(GameEnvironment environment)
        {
            var monsterCounts = new Dictionary<ushort, int>();
            
            foreach (var mapEntry in environment.PlayersByMapId)
            {
                ushort mapId = mapEntry.Key;
                int playerCount = mapEntry.Value;
                
                // Monsters per player on that specific map
                int monsterCount = playerCount * _config.MonstersPerPlayerOnMap;
                
                // Minimum of 5 monsters even if empty
                monsterCount = Math.Max(5, monsterCount);
                
                monsterCounts[mapId] = monsterCount;
            }
            
            return monsterCounts;
        }

        private decimal CalculateMonsterDamage(double difficultyScore, GameEnvironment environment)
        {
            decimal multiplier = 1.0m;
            
            if (difficultyScore < 40) // Too easy
                multiplier = 1.15m;
            else if (difficultyScore > 60) // Too hard
                multiplier = 0.85m;
                
            // Adjust based on death rate
            double deathRate = environment.GetDeathRatePerPlayer();
            if (deathRate > 2.0)
                multiplier *= 0.9m; // Too many deaths, reduce damage
            else if (deathRate < 0.5)
                multiplier *= 1.1m; // Too few deaths, increase damage
                
            return Math.Clamp(multiplier, 0.7m, 1.3m);
        }

        private decimal CalculateMonsterHealth(double difficultyScore, GameEnvironment environment)
        {
            decimal multiplier = 1.0m;
            
            double killRate = environment.GetMonstersKilledPerPlayer();
            double expectedKillRate = 20.0; // Expected kills per player
            
            if (killRate > expectedKillRate * 1.5)
                multiplier = 1.2m; // Dying too fast
            else if (killRate < expectedKillRate * 0.5)
                multiplier = 0.8m; // Too tanky
                
            return Math.Clamp(multiplier, 0.7m, 1.5m);
        }

        private decimal CalculateBossDifficulty(GameEnvironment environment)
        {
            double successRate = environment.GetBossSuccessRate();
            
            if (successRate > 80)
                return 1.2m; // Too easy
            else if (successRate < 40)
                return 0.8m; // Too hard
            else
                return 1.0m;
        }

        private decimal CalculatePlayerDamage(double difficultyScore)
        {
            if (difficultyScore > 60)
                return 1.1m; // Increase player power
            else if (difficultyScore < 40)
                return 0.9m; // Decrease player power
            else
                return 1.0m;
        }

        private decimal CalculatePlayerDefense(double difficultyScore)
        {
            if (difficultyScore > 60)
                return 1.1m;
            else if (difficultyScore < 40)
                return 0.9m;
            else
                return 1.0m;
        }

        private decimal CalculateRareItemSpawn(GameEnvironment environment)
        {
            var avgLevel = environment.GetAveragePlayerLevel();
            decimal levelBonus = (decimal)(avgLevel / 140.0);
            return Math.Clamp(0.01m + levelBonus * 0.04m, 0.005m, 0.05m);
        }

        private decimal CalculateEliteMonsterSpawn(double difficultyScore)
        {
            if (difficultyScore < 40)
                return 0.15m; // 15% elite spawn
            else if (difficultyScore > 60)
                return 0.05m; // 5% elite spawn
            else
                return 0.10m;
        }

        private Dictionary<byte, decimal> CalculateLevelBracketModifiers(GameEnvironment environment)
        {
            var modifiers = new Dictionary<byte, decimal>();
            
            if (environment.PlayersByLevelBracket.Count == 0)
                return modifiers;
                
            double avgPlayersPerBracket = environment.PlayersByLevelBracket.Values.Average();
            
            foreach (var bracket in environment.PlayersByLevelBracket)
            {
                byte levelBracket = (byte)bracket.Key;
                
                if (bracket.Value > avgPlayersPerBracket * 1.5)
                    modifiers[levelBracket] = 1.1m; // Boost exp for crowded brackets to move them along
                else if (bracket.Value < avgPlayersPerBracket * 0.5)
                    modifiers[levelBracket] = 0.9m; // Reduce for empty brackets
                else
                    modifiers[levelBracket] = 1.0m;
            }
            
            return modifiers;
        }

        private string DetermineAdjustmentReason(double difficultyScore, GameEnvironment environment)
        {
            var reasons = new List<string>();
            
            if (difficultyScore < 40)
                reasons.Add("Game too easy");
            else if (difficultyScore > 60)
                reasons.Add("Game too difficult");
                
            double deathRate = environment.GetDeathRatePerPlayer();
            if (deathRate > 2.0)
                reasons.Add($"High death rate ({deathRate:F1}/player)");
            else if (deathRate < 0.5)
                reasons.Add($"Low death rate ({deathRate:F1}/player)");
                
            double bossRate = environment.GetBossSuccessRate();
            if (bossRate > 80)
                reasons.Add($"Bosses too easy ({bossRate:F0}% success)");
            else if (bossRate < 40)
                reasons.Add($"Bosses too hard ({bossRate:F0}% success)");
                
            ulong actualExp = environment.GetAverageExpPerHourPerPlayer();
            ulong targetExp = _config.GetRequiredExpPerHour();
            if (actualExp < targetExp * 0.8m)
                reasons.Add($"Exp too slow ({actualExp:N0}/{targetExp:N0} per hour)");
            else if (actualExp > targetExp * 1.2m)
                reasons.Add($"Exp too fast ({actualExp:N0}/{targetExp:N0} per hour)");
                
            double retention = environment.GetPlayerRetention();
            if (retention < 70)
                reasons.Add($"Low retention ({retention:F0}%)");
                
            return reasons.Count > 0 ? string.Join(", ", reasons) : "Balanced gameplay";
        }
    }
}
