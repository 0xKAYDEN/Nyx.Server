# Nyx.Brain Integration Guide for Conquer Online

## Quick Start

### Step 1: Add to Your Server Startup

```csharp
using Nyx.Brain;
using Nyx.Brain.Services;

private static Main _brain;
private static GameMetricsCollector _metrics;

public static void InitializeBrain()
{
    // Load configuration
    var config = new RateConfiguration();
    
    // Load exp requirements from Level.ini
    string levelIniPath = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, 
        "Modules", "Nyx.Brain", "Database", "Level.ini");
    LevelExpLoader.LoadLevelExp(config, levelIniPath);
    
    Console.WriteLine($"Target: Level {config.TargetLevel} in {config.TargetDaysToMaxLevel} days");
    Console.WriteLine($"Required EXP/hour: {config.GetRequiredExpPerHour():N0}");
    
    // Initialize
    _brain = new Main(config);
    _brain.Initialize();
    _metrics = _brain.GetMetricsCollector();
    
    Console.WriteLine("Nyx.Brain initialized successfully!");
}
```

### Step 2: Hook Into Your Monster Kill Event

Find where monsters are killed and add:

```csharp
// In your monster death handler
public void OnMonsterDeath(Monster monster, GameClient killer)
{
    // Your existing code...
    
    // Record metrics
    _metrics?.RecordMonsterKill();
    _metrics?.RecordDrops(moneyDropped, cpsDropped);  // uint, uint
    _metrics?.RecordExpGain(expGained, skillExpGained);  // ulong, ulong
    
    // Get current rates
    var rates = _brain?.GetCurrentRates();
    if (rates != null)
    {
        // Use the calculated rates
        uint actualMoney = rates.MoneyPerMonster;
        uint actualCps = rates.CpsPerMonster;
        ulong actualExp = (ulong)(baseExp * (double)rates.ExpRate);
        ulong actualSkillExp = (ulong)(baseSkillExp * (double)rates.SkillExpRate);
        
        // Apply to player
        killer.Entity.Money += actualMoney;
        killer.Entity.ConquerPoints += actualCps;
        killer.Entity.AddExperience(actualExp);
        killer.Entity.AddSkillExperience(actualSkillExp);
    }
}
```

### Step 3: Hook Into Player Death Event

```csharp
public void OnPlayerDeath(GameClient client, bool isPvP)
{
    // Your existing code...
    
    _metrics?.RecordPlayerDeath(isPvP);
}
```

### Step 4: Hook Into Boss Events

```csharp
public void OnBossAttempt(bool success)
{
    _metrics?.RecordBossAttempt(success);
}
```

### Step 5: Hook Into Quest Events

```csharp
public void OnQuestComplete(GameClient client)
{
    _metrics?.RecordQuest(completed: true);
}

public void OnQuestAbandon(GameClient client)
{
    _metrics?.RecordQuest(completed: false);
}
```

### Step 6: Add Periodic Update Timer

```csharp
// In your server's main timer or a dedicated timer
public static void OnBrainUpdateTimer()
{
    if (_brain == null || _metrics == null) return;
    
    try
    {
        // Get all online players
        var players = new List<Player>();
        var playersByMap = new Dictionary<ushort, int>();
        
        foreach (var client in Kernel.GamePool.Values)
        {
            if (client?.Entity != null)
            {
                // Add to player list
                players.Add(new Player
                {
                    Id = client.Entity.UID,
                    Level = client.Entity.Level,
                    VIP = client.Entity.VIPLevel,
                    Experience = client.Entity.Experience,
                    Money = client.Entity.Money,
                    Cps = client.Entity.ConquerPoints,
                    BoundCps = client.Entity.BoundConquerPoints,
                    LastActive = DateTime.Now
                });
                
                // Count players per map
                ushort mapId = client.Map.ID;
                if (!playersByMap.ContainsKey(mapId))
                    playersByMap[mapId] = 0;
                playersByMap[mapId]++;
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
        
        // Log current state
        Console.WriteLine($"[Brain] {_metrics.GetSummary()}");
        
        var rates = _brain.GetCurrentRates();
        Console.WriteLine($"[Brain] Rates: {rates}");
        
        if (!rates.IsBalanced)
        {
            Console.WriteLine($"[Brain] ⚠ Adjustment needed: {rates.AdjustmentReason}");
        }
    }
    catch (Exception ex)
    {
        Console.WriteLine($"[Brain] Error in update: {ex.Message}");
    }
}

// Call this every 10 minutes
Timer brainUpdateTimer = new Timer(OnBrainUpdateTimer, null, 
    TimeSpan.FromMinutes(1),   // First run after 1 minute
    TimeSpan.FromMinutes(10)); // Then every 10 minutes
```

### Step 7: Add Hourly Consolidation

```csharp
// In your existing hourly timer or create a new one
public static void OnHourlyTimer()
{
    _metrics?.ConsolidateHourlyMetrics();
    Console.WriteLine("[Brain] Hourly metrics consolidated");
}

Timer hourlyTimer = new Timer(OnHourlyTimer, null,
    TimeSpan.FromMinutes(60),
    TimeSpan.FromHours(1));
```

### Step 8: Update Monster Spawning Logic

```csharp
// In your map monster spawning logic
public void UpdateMonsterSpawns()
{
    var rates = _brain?.GetCurrentRates();
    if (rates == null) return;
    
    foreach (var map in Kernel.Maps.Values)
    {
        ushort mapId = map.ID;
        
        // Get target monster count for this map
        if (rates.MonsterCountPerMap.TryGetValue(mapId, out int targetCount))
        {
            int currentCount = map.Monsters.Count;
            int difference = targetCount - currentCount;
            
            if (difference > 0)
            {
                // Spawn more monsters
                for (int i = 0; i < difference; i++)
                {
                    map.SpawnMonster();
                }
            }
            else if (difference < 0)
            {
                // Remove excess monsters (optional - or let them die naturally)
                // Usually you'd just let the natural population balance out
            }
            
            Console.WriteLine($"[Brain] Map {mapId}: {currentCount} -> {targetCount} monsters");
        }
    }
}
```

### Step 9: Apply Difficulty Multipliers (Optional Advanced Feature)

```csharp
// In your monster damage calculation
public uint CalculateMonsterDamage(Monster monster, uint baseDamage)
{
    var rates = _brain?.GetCurrentRates();
    if (rates != null)
    {
        baseDamage = (uint)(baseDamage * (double)rates.MonsterDamageMultiplier);
    }
    return baseDamage;
}

// In your monster HP initialization
public uint CalculateMonsterHP(Monster monster, uint baseHP)
{
    var rates = _brain?.GetCurrentRates();
    if (rates != null)
    {
        baseHP = (uint)(baseHP * (double)rates.MonsterHealthMultiplier);
    }
    return baseHP;
}

// In your boss initialization
public void InitializeBoss(Boss boss)
{
    var rates = _brain?.GetCurrentRates();
    if (rates != null)
    {
        boss.Damage = (uint)(boss.BaseDamage * (double)rates.BossDifficultyMultiplier);
        boss.HP = (uint)(boss.BaseHP * (double)rates.BossDifficultyMultiplier);
    }
}

// In your player damage calculation
public uint CalculatePlayerDamage(GameClient client, uint baseDamage)
{
    var rates = _brain?.GetCurrentRates();
    if (rates != null)
    {
        baseDamage = (uint)(baseDamage * (double)rates.PlayerDamageMultiplier);
    }
    return baseDamage;
}
```

## Testing

### 1. Verify Initialization

Run your server and check console output:
```
Loaded 130 level exp requirements from Level.ini
Total EXP to Level 140: 1,234,567,890 exp
Target days to 140: 60 days
Required EXP/hour: 5,144,449
Nyx.Brain initialized successfully!
```

### 2. Monitor Metrics

Every 10 minutes you should see:
```
[Brain] Players: 50, Avg Level: 75.3, Deaths/Player: 1.2, Boss Success: 65.0%, Difficulty: 52.3/100
[Brain] Rates: Exp: 1.05x, Money: 315/monster, CPS: 3/monster, Drop: 1.00x, Difficulty: 52.3/100, SkillExp: 0.84x
```

### 3. Test Adjustment Triggers

- **Too many deaths** → Rates increase, monster damage decreases
- **Too fast leveling** → Exp rate decreases  
- **Too slow leveling** → Exp rate increases
- **Poor retention** → Difficulty eases
- **Bosses too easy** → Boss difficulty increases

## Admin Commands (Optional)

Add these commands for testing:

```csharp
// Force rate recalculation
[Command("brainupdate")]
public async void CommandBrainUpdate(GameClient client)
{
    var rates = await _brain.RecalculateRates();
    client.SendMessage($"Rates updated: {rates}");
    client.SendMessage($"Reason: {rates.AdjustmentReason}");
}

// Show current stats
[Command("brainstats")]
public void CommandBrainStats(GameClient client)
{
    var rates = _brain.GetCurrentRates();
    var env = _metrics.GetCurrentEnvironment();
    
    client.SendMessage($"=== Nyx.Brain Statistics ===");
    client.SendMessage($"Online Players: {env.OnlinePlayerCount}");
    client.SendMessage($"Avg Level: {env.GetAveragePlayerLevel():F1}");
    client.SendMessage($"Difficulty: {rates.DifficultyScore:F1}/100");
    client.SendMessage($"Exp Rate: {rates.ExpRate:F2}x");
    client.SendMessage($"Money/Monster: {rates.MoneyPerMonster}");
    client.SendMessage($"CPS/Monster: {rates.CpsPerMonster}");
    client.SendMessage($"Status: {(rates.IsBalanced ? "Balanced" : rates.IsTooEasy ? "Too Easy" : "Too Hard")}");
    client.SendMessage($"Reason: {rates.AdjustmentReason}");
}
```

## Troubleshooting

### Issue: Rates not changing
**Solution**: Check that you're calling `OnBrainUpdateTimer()` periodically and that players are being updated

### Issue: Monster counts not updating
**Solution**: Ensure `playersByMap` dictionary is being populated correctly with player counts per map

### Issue: Exp progression too fast/slow
**Solution**: Adjust `AveragePlayHoursPerDay` in configuration (default is 4 hours)

### Issue: Level.ini not loading
**Solution**: Check the file path and ensure Level.ini exists in `Modules/Nyx.Brain/Database/`

## Performance

- **Memory**: ~10-50 MB depending on history size
- **CPU**: Negligible (calculations run every 30 minutes by default)
- **No database access** - everything is in-memory
- **Thread-safe** - uses locks for concurrent access

## Configuration Tuning

Edit `RateConfiguration` to tune:

```csharp
var config = new RateConfiguration
{
    // Baseline drops
    BaseMoneyDropPerMonster = 300,      // Increase for richer server
    BaseCpsDropPerMonster = 3,          // Increase for more CPS
    
    // Monster spawning
    MonstersPerPlayerOnMap = 10,        // More = more crowded
    
    // Progression speed
    TargetLevel = 140,
    TargetDaysToMaxLevel = 60,          // Reduce for faster progression
    AveragePlayHoursPerDay = 4,         // Your estimate
    
    // Rate limits
    MinExpRate = 0.5m,                  // Lowest exp can go
    MaxExpRate = 3.0m,                  // Highest exp can go
    MinMoneyRate = 0.5m,
    MaxMoneyRate = 3.0m,
    MinCpsDropRate = 0.5m,
    MaxCpsDropRate = 3.0m
};
```

## Done!

Your server now has intelligent, self-balancing game rates that adapt to player behavior and maintain optimal challenge and progression speeds.
