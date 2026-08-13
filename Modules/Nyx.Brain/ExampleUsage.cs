// Example usage of Nyx.Brain in your Conquer Online game server
using Nyx.Brain;
using Nyx.Brain.Models;
using Nyx.Brain.Services;

public class ConquerServerExample
{
    private Main? _brain;
    private GameMetricsCollector? _metrics;
    private List<Player>? _players;

    public void StartServer()
    {
        // Option 1: Load configuration from file
        var config = ConfigurationService.LoadConfiguration();
        
        // Load Level.ini exp requirements
        string levelIniPath = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Modules", "Nyx.Brain", "Database", "Level.ini");
        LevelExpLoader.LoadLevelExp(config, levelIniPath);

        _brain = new Main(config);
        _brain.Initialize();
        
        // Get metrics collector for recording game events
        _metrics = _brain.GetMetricsCollector();
        
        // Note: To subscribe to rate updates, you would need to access the underlying NyxBrain
        // For now, check rates periodically with GetCurrentRates()

        _players = new List<Player>();
    }

    // Call when a monster is killed
    public void OnMonsterKilled(uint moneyDrop, uint cpsDrop, ulong expGain, ulong skillExpGain)
    {
        if (_metrics == null) return;
        _metrics.RecordMonsterKill();
        _metrics.RecordDrops(moneyDrop, cpsDrop);
        _metrics.RecordExpGain(expGain, skillExpGain);
    }

    // Call when a player dies
    public void OnPlayerDeath(bool isPvP = false)
    {
        if (_metrics == null) return;
        _metrics.RecordPlayerDeath(isPvP);
    }

    // Call when boss is attempted
    public void OnBossAttempt(bool success)
    {
        if (_metrics == null) return;
        _metrics.RecordBossAttempt(success);
    }

    // Call when quest is completed or abandoned
    public void OnQuestEvent(bool completed)
    {
        if (_metrics == null) return;
        _metrics.RecordQuest(completed);
    }

    // Call every hour to consolidate metrics
    public void HourlyUpdate()
    {
        if (_metrics == null) return;
        _metrics.ConsolidateHourlyMetrics();
    }

    // Call periodically to update player data
    public void UpdateGameState()
    {
        if (_brain == null || _metrics == null) return;
        
        // Get players from your game pool
        _players = GetCurrentPlayers(); // Your implementation
        
        // Calculate map distribution
        var playersByMap = new Dictionary<ushort, int>();
        if (_players != null)
        {
            foreach (var player in _players)
            {
                // Assuming you have a MapID property
                // if (!playersByMap.ContainsKey(player.MapID))
                //     playersByMap[player.MapID] = 0;
                // playersByMap[player.MapID]++;
            }
        
            // Calculate economy totals
            ulong totalMoney = (ulong)_players.Sum(p => (long)p.Money);
            ulong totalCps = (ulong)_players.Sum(p => (long)p.Cps);
            ulong totalBoundCps = (ulong)_players.Sum(p => (long)p.BoundCps);
            
            _metrics.UpdatePlayerMetrics(_players.Count, _players);
            _metrics.UpdateMapPlayerCounts(playersByMap);
            _metrics.UpdateEconomyTotals(totalMoney, totalCps, totalBoundCps);
            
            // Update environment
            var env = _metrics.GetCurrentEnvironment();
            _brain.UpdateGameState(env);
        }
    }

    // Apply the calculated rates to your game server
    private void ApplyNewRatesToGame(GameRates rates)
    {
        Console.WriteLine($"=== Applying New Rates ===");
        Console.WriteLine($"  EXP Rate: {rates.ExpRate:F2}x");
        Console.WriteLine($"  Skill EXP Rate: {rates.SkillExpRate:F2}x");
        Console.WriteLine($"  Money per Monster: {rates.MoneyPerMonster}");
        Console.WriteLine($"  CPS per Monster: {rates.CpsPerMonster}");
        Console.WriteLine($"  Drop Rate: {rates.DropRate:F2}x");
        Console.WriteLine($"  Monster Damage: {rates.MonsterDamageMultiplier:F2}x");
        Console.WriteLine($"  Monster Health: {rates.MonsterHealthMultiplier:F2}x");
        Console.WriteLine($"  Boss Difficulty: {rates.BossDifficultyMultiplier:F2}x");
        
        // Apply monster counts per map
        foreach (var mapEntry in rates.MonsterCountPerMap)
        {
            Console.WriteLine($"  Map {mapEntry.Key}: {mapEntry.Value} monsters");
            // Your code to update monster spawns:
            // UpdateMonsterSpawnForMap(mapEntry.Key, mapEntry.Value);
        }
        
        // Apply level bracket modifiers
        foreach (var modifier in rates.LevelBracketExpModifiers)
        {
            Console.WriteLine($"  Level {modifier.Key}: {modifier.Value:F2}x exp modifier");
        }
        
        // TODO: Implement your game server's rate update logic here
        // Example:
        // GameServer.ExpRate = rates.ExpRate;
        // GameServer.MoneyDropPerMonster = rates.MoneyPerMonster;
        // GameServer.CpsDropPerMonster = rates.CpsPerMonster;
    }

    // Forcefully recalculate rates
    public async Task ForceUpdateRates()
    {
        if (_brain == null) return;
        var newRates = await _brain.RecalculateRates();
        Console.WriteLine($"Forced update: {newRates}");
        ApplyNewRatesToGame(newRates);
    }

    public GameRates? GetCurrentRates()
    {
        return _brain?.GetCurrentRates();
    }

    private List<Player> GetCurrentPlayers()
    {
        // Your implementation to get current players from game pool
        // Example:
        var players = new List<Player>();
        
        // foreach (var client in Kernel.GamePool.Values)
        // {
        //     if (client?.Entity != null)
        //     {
        //         players.Add(new Player
        //         {
        //             Id = client.Entity.UID,
        //             Level = client.Entity.Level,
        //             VIP = client.Entity.VIPLevel,
        //             Experience = client.Entity.Experience,
        //             Money = client.Entity.Money,
        //             Cps = client.Entity.ConquerPoints,
        //             BoundCps = client.Entity.BoundConquerPoints,
        //             LastActive = DateTime.Now,
        //             PlayTimeHours = client.Entity.OnlineMinutes / 60
        //         });
        //     }
        // }
        
        return players;
    }

    public void StopServer()
    {
        _brain?.Shutdown();
    }
}
