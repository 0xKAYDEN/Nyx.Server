using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using Nyx.Brain;
using Nyx.Brain.Models;
using Nyx.Brain.Services;
using Nyx.Server.Client;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace Nyx.Server.Services
{
    /// <summary>
    /// Full Nyx.Brain integration service for Conquer Online
    /// Provides AI-driven dynamic game balancing based on real-time metrics
    /// </summary>
    public class NyxBrainIntegrationService : BackgroundService
    {
        private readonly ILogger<NyxBrainIntegrationService> _logger;
        private Main? _brain;
        private GameMetricsCollector? _metrics;
        
        private DateTime _lastUpdate = DateTime.MinValue;
        private DateTime _lastHourlyConsolidation = DateTime.MinValue;
        private readonly TimeSpan _updateInterval = TimeSpan.FromMinutes(1);
        private readonly TimeSpan _hourlyInterval = TimeSpan.FromHours(1);

        public NyxBrainIntegrationService(ILogger<NyxBrainIntegrationService> logger)
        {
            _logger = logger;
        }

        protected override async Task ExecuteAsync(CancellationToken stoppingToken)
        {
            _logger.LogInformation("Initializing Nyx.Brain AI Balancing System...");
            
            try
            {
                // Load configuration
                var config = new RateConfiguration
                {
                    BaseMoneyDropPerMonster = 300,
                    BaseCpsDropPerMonster = 3,
                    MonstersPerPlayerOnMap = 10,
                    TargetLevel = 140,
                    TargetDaysToMaxLevel = 60,
                    AveragePlayHoursPerDay = 4,
                    TargetAverageMoney = 50_000_000,
                    TargetAverageCps = 500_000,
                    TargetPlayerCount = 100
                };
                
                // Load Level.ini exp requirements
                string levelIniPath = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, 
                    "Modules", "Nyx.Brain", "Database", "Level.ini");
                
                if (File.Exists(levelIniPath))
                {
                    LevelExpLoader.LoadLevelExp(config, levelIniPath);
                    _logger.LogInformation("Loaded exp requirements from Level.ini");
                }
                else
                {
                    _logger.LogWarning("Level.ini not found at {Path}, using defaults", levelIniPath);
                }
                
                // Initialize Brain
                _brain = new Main(config);
                _brain.Initialize();
                _metrics = _brain.GetMetricsCollector();
                
                _logger.LogInformation("Nyx.Brain initialized successfully!");
                _logger.LogInformation("Target: Level {Level} in {Days} days ({Hours} hrs/day)",
                    config.TargetLevel, config.TargetDaysToMaxLevel, config.AveragePlayHoursPerDay);
                _logger.LogInformation("Required EXP/hour: {Exp:N0}", config.GetRequiredExpPerHour());
                
                // Apply initial rates
                ApplyRatesToServer(_brain.GetCurrentRates());
                
                // Wait for server initialization
                await Task.Delay(TimeSpan.FromSeconds(10), stoppingToken);
                
                // Main loop
                while (!stoppingToken.IsCancellationRequested)
                {
                    try
                    {
                        var now = DateTime.UtcNow;
                        
                        // Update game state every 10 minutes
                        if (now - _lastUpdate >= _updateInterval)
                        {
                            await UpdateGameState();
                            _lastUpdate = now;
                        }
                        
                        // Consolidate hourly metrics
                        if (now - _lastHourlyConsolidation >= _hourlyInterval)
                        {
                            _metrics?.ConsolidateHourlyMetrics();
                            _lastHourlyConsolidation = now;
                            _logger.LogInformation("Hourly metrics consolidated");
                        }
                        
                        await Task.Delay(TimeSpan.FromMinutes(1), stoppingToken);
                    }
                    catch (OperationCanceledException)
                    {
                        break;
                    }
                    catch (Exception ex)
                    {
                        _logger.LogError(ex, "Error in Brain update cycle");
                        await Task.Delay(TimeSpan.FromMinutes(1), stoppingToken);
                    }
                }
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Fatal error initializing Nyx.Brain");
            }
            
            _logger.LogInformation("Nyx.Brain Integration Service stopped");
            _brain?.Shutdown();
        }

        private async Task UpdateGameState()
        {
            if (_brain == null || _metrics == null)
                return;
            
            try
            {
                var onlineClients = Program.GetOnlineClientSnapshot();
                
                if (onlineClients.Length == 0)
                {
                    _logger.LogDebug("No players online, skipping update");
                    return;
                }
                
                // Build player list
                var players = new List<Player>();
                var playersByMap = new Dictionary<ushort, int>();
                
                foreach (var client in onlineClients)
                {
                    if (client?.Entity != null)
                    {
                        players.Add(new Player
                        {
                            Id = client.Entity.UID,
                            Level = client.Entity.Level,
                            VIP = client.Entity.VIPLevel, // Add VIP level if you have it
                            Experience = client.Entity.Experience,
                            Money = client.Entity.Money,
                            Cps = client.Entity.ConquerPoints,
                            BoundCps = client.Entity.BoundCps,
                            LastActive = DateTime.Now
                        });
                        
                        // Count players per map
                        if (client.Map != null)
                        {
                            ushort mapId = client.Map.ID;
                            if (!playersByMap.ContainsKey(mapId))
                                playersByMap[mapId] = 0;
                            playersByMap[mapId]++;
                        }
                    }
                }
                
                // Update metrics
                _metrics.UpdatePlayerMetrics(players.Count, players);
                _metrics.UpdateMapPlayerCounts(playersByMap);
                
                // Calculate economy totals
                ulong totalMoney = (ulong)players.Sum(p => (long)p.Money);
                ulong totalCps = (ulong)players.Sum(p => (long)p.Cps);
                ulong totalBoundCps = (ulong)players.Sum(p => (long)p.BoundCps);
                _metrics.UpdateEconomyTotals(totalMoney, totalCps, totalBoundCps);
                
                // Update environment
                var env = _metrics.GetCurrentEnvironment();
                _brain.UpdateGameState(env);
                
                // Get and apply new rates
                var rates = await _brain.RecalculateRates();
                
                // Log summary
                _logger.LogInformation("[Brain] {Summary}", _metrics.GetSummary());
                _logger.LogInformation("[Brain] {Rates}", rates.ToString());
                
                if (!rates.IsBalanced)
                {
                    _logger.LogWarning("[Brain] ⚠ Adjustment: {Reason}", rates.AdjustmentReason);
                }
                
                // Apply rates
                ApplyRatesToServer(rates);
                
                // Log per-map monster counts
                foreach (var mapEntry in rates.MonsterCountPerMap.Take(5))
                {
                    _logger.LogDebug("[Brain] Map {MapId}: {Count} monsters ({Players} players)",
                        mapEntry.Key, mapEntry.Value, playersByMap.GetValueOrDefault(mapEntry.Key, 0));
                }
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Error updating game state");
            }
        }

        private void ApplyRatesToServer(GameRates rates)
        {
            try
            {
                // Apply exp rate (convert decimal multiplier to percentage)
                uint expRatePercent = (uint)(rates.ExpRate * 100m);
                if (Constants.ExtraExperienceRate != expRatePercent)
                {
                    Constants.ExtraExperienceRate = expRatePercent;
                    _logger.LogInformation("[Brain] Applied EXP rate: {Rate}% ({Multiplier}x)",
                        expRatePercent, rates.ExpRate);
                }
                
                // Apply skill exp rate
                uint skillRatePercent = (uint)(rates.SkillExpRate * 100m);
                if (Constants.ExtraSpellRate != skillRatePercent)
                {
                    Constants.ExtraSpellRate = skillRatePercent;
                    _logger.LogInformation("[Brain] Applied Skill EXP rate: {Rate}% ({Multiplier}x)",
                        skillRatePercent, rates.SkillExpRate);
                }
                
                // Apply money rate
                uint moneyRatePercent = (uint)(rates.MoneyRate * 100m);
                if (Constants.MoneyDropRate != moneyRatePercent)
                {
                    Constants.MoneyDropRate = moneyRatePercent;
                    _logger.LogInformation("[Brain] Applied Money rate: {Rate}% ({Multiplier}x, {PerMonster}/monster)",
                        moneyRatePercent, rates.MoneyRate, rates.MoneyPerMonster);
                }
                
                // Apply CPS rate  
                uint cpsRatePercent = (uint)(rates.CpsDropRate * 100m);
                if (Constants.ConquerPointsDropRate != cpsRatePercent)
                {
                    Constants.ConquerPointsDropRate = cpsRatePercent;
                    _logger.LogInformation("[Brain] Applied CPS rate: {Rate}% ({Multiplier}x, {PerMonster}/monster)",
                        cpsRatePercent, rates.CpsDropRate, rates.CpsPerMonster);
                }
                
                // Apply item drop rate
                uint itemRatePercent = (uint)(rates.DropRate * 100m);
                if (Constants.ItemDropRate != itemRatePercent)
                {
                    Constants.ItemDropRate = itemRatePercent;
                    _logger.LogInformation("[Brain] Applied Item drop rate: {Rate}% ({Multiplier}x)",
                        itemRatePercent, rates.DropRate);
                }
                
                // Store rates for monster spawning logic to use
                // (Monster spawning system should check rates.MonsterCountPerMap)
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Error applying rates to server");
            }
        }

        // Public methods for game logic to call
        
        /// <summary>
        /// Record exp gain when a player gains experience
        /// </summary>
        public void RecordExpGain(ulong exp, ulong skillExp = 0)
        {
            _metrics?.RecordExpGain(exp, skillExp);
        }
        
        /// <summary>
        /// Record money/CPS drops when a monster is killed
        /// </summary>
        public void RecordDrops(uint money, uint cps)
        {
            _metrics?.RecordDrops(money, cps);
        }
        
        /// <summary>
        /// Record a monster kill
        /// </summary>
        public void RecordMonsterKill()
        {
            _metrics?.RecordMonsterKill();
        }
        
        /// <summary>
        /// Record a player death
        /// </summary>
        public void RecordPlayerDeath(bool isPvP = false)
        {
            _metrics?.RecordPlayerDeath(isPvP);
        }
        
        /// <summary>
        /// Record a boss attempt and its result
        /// </summary>
        public void RecordBossAttempt(bool success)
        {
            _metrics?.RecordBossAttempt(success);
        }
        
        /// <summary>
        /// Record a quest completion or abandonment
        /// </summary>
        public void RecordQuest(bool completed)
        {
            _metrics?.RecordQuest(completed);
        }
        
        /// <summary>
        /// Get current game rates
        /// </summary>
        public GameRates? GetCurrentRates()
        {
            return _brain?.GetCurrentRates();
        }
        
        /// <summary>
        /// Get recommended monster count for a specific map
        /// </summary>
        public int GetMonsterCountForMap(ushort mapId)
        {
            var rates = _brain?.GetCurrentRates();
            if (rates != null && rates.MonsterCountPerMap.TryGetValue(mapId, out int count))
            {
                return count;
            }
            return 50; // Default fallback
        }
        
        /// <summary>
        /// Check if Brain system is initialized
        /// </summary>
        public bool IsInitialized => _brain != null && _metrics != null;
    }
}
