# Nyx.Brain - Dynamic Game Balancing System

AI-driven game balancing engine for Conquer Online that automatically adjusts game rates based on real-time server metrics and player behavior.

## Overview

Nyx.Brain continuously monitors your game server and adjusts:
- **Experience Rates** - Ensures players reach Level 140 in 60 days (configurable)
- **Money Drops** - Baseline 300 money per monster (adjustable based on economy)
- **CPS Drops** - Baseline 3 CPS per monster (adjustable based on economy)
- **Skill Experience** - Balanced with combat experience
- **Monster Spawning** - Per map based on player count (10 monsters per player by default)
- **Difficulty** - Dynamic monster damage, health, and player power adjustments

## Key Features

✅ **Data Type Accurate** - Uses correct Conquer Online types:
- `byte` for levels and VIP
- `uint` for money, CPS, bound CPS
- `ulong` for experience
- `ushort` for map IDs

✅ **Map-Based Monster Spawning** - Monsters spawn per map based on players on that specific map, not globally

✅ **Level.ini Integration** - Reads actual exp requirements from your Level.ini file

✅ **Difficulty Scoring** - Calculates a 0-100 difficulty score where 50 is balanced

✅ **Real-Time Metrics** - Tracks deaths, boss kills, quest completion, retention, and more

## Configuration

### Baseline Values (in `RateConfiguration`)

```csharp
BaseMoneyDropPerMonster = 300   // Money dropped per monster kill
BaseCpsDropPerMonster = 3        // CPS dropped per monster kill  
MonstersPerPlayerOnMap = 10      // Monsters to spawn per player on each map

TargetLevel = 140                // Max level goal
TargetDaysToMaxLevel = 60        // Days to reach max level (2 months)
AveragePlayHoursPerDay = 4       // Expected daily playtime
```

### Rate Multipliers

All rates are multipliers (1.0 = normal, 2.0 = double, etc.):
- `BaseExpRate = 1.0m` - Experience rate multiplier
- `BaseMoneyRate = 1.0m` - Money drop multiplier
- `BaseCpsDropRate = 1.0m` - CPS drop multiplier
- `BaseDropRate = 1.0m` - Item drop rate multiplier

## Usage

### 1. Initialize the Brain

```csharp
using Nyx.Brain;
using Nyx.Brain.Models;
using Nyx.Brain.Services;

// Load configuration
var config = ConfigurationService.LoadConfiguration();

// Load Level.ini exp requirements
string levelIniPath = "Modules/Nyx.Brain/Database/Level.ini";
LevelExpLoader.LoadLevelExp(config, levelIniPath);

// Create and start
var brain = new Main(config);
brain.Initialize();

// Get metrics collector
var metrics = brain.GetMetricsCollector();
```

### 2. Record Game Events

```csharp
// When a monster is killed
metrics.RecordMonsterKill();
metrics.RecordDrops(moneyAmount, cpsAmount);        // uint, uint
metrics.RecordExpGain(expGained, skillExpGained);   // ulong, ulong

// When a player dies
metrics.RecordPlayerDeath(isPvP: false);

// When boss is attempted
metrics.RecordBossAttempt(success: true);

// When quest completed/abandoned
metrics.RecordQuest(completed: true);
```

### 3. Update Game State (Every 5-10 minutes)

```csharp
// Get current players
var players = GetPlayersFromGamePool();  // Your implementation

// Calculate map distribution
var playersByMap = new Dictionary<ushort, int>();
foreach (var client in Kernel.GamePool.Values)
{
    var mapId = client.Map.ID;
    if (!playersByMap.ContainsKey(mapId))
        playersByMap[mapId] = 0;
    playersByMap[mapId]++;
}

// Update metrics
metrics.UpdatePlayerMetrics(players.Count, players);
metrics.UpdateMapPlayerCounts(playersByMap);

// Calculate totals
ulong totalMoney = (ulong)players.Sum(p => (long)p.Money);
ulong totalCps = (ulong)players.Sum(p => (long)p.Cps);
ulong totalBoundCps = (ulong)players.Sum(p => (long)p.BoundCps);
metrics.UpdateEconomyTotals(totalMoney, totalCps, totalBoundCps);

// Update environment
var env = metrics.GetCurrentEnvironment();
brain.UpdateGameState(env);
```

### 4. Consolidate Metrics (Every Hour)

```csharp
// Call this every hour
metrics.ConsolidateHourlyMetrics();
```

### 5. Get and Apply Rates

```csharp
// Get current rates
var rates = brain.GetCurrentRates();

Console.WriteLine($"Exp Rate: {rates.ExpRate:F2}x");
Console.WriteLine($"Money per Monster: {rates.MoneyPerMonster}");
Console.WriteLine($"CPS per Monster: {rates.CpsPerMonster}");
Console.WriteLine($"Difficulty: {rates.DifficultyScore:F1}/100");
Console.WriteLine($"Reason: {rates.AdjustmentReason}");

// Apply monster counts per map
foreach (var mapEntry in rates.MonsterCountPerMap)
{
    ushort mapId = mapEntry.Key;
    int monsterCount = mapEntry.Value;
    // Your code to update monster spawns for this map
    // UpdateMonsterSpawnForMap(mapId, monsterCount);
}

// Apply level bracket modifiers
foreach (var modifier in rates.LevelBracketExpModifiers)
{
    byte levelBracket = modifier.Key;
    decimal expMultiplier = modifier.Value;
    // Apply this multiplier to players in this level bracket
}
```

### 6. Force Recalculation

```csharp
// Force immediate recalculation
var newRates = await brain.RecalculateRates();
ApplyRatesToServer(newRates);
```

## Player Model Mapping

Map your game's player data to the Brain's Player model:

```csharp
var players = new List<Player>();

foreach (var client in Kernel.GamePool.Values)
{
    if (client?.Entity != null)
    {
        players.Add(new Player
        {
            Id = client.Entity.UID,                    // ulong
            Level = client.Entity.Level,               // byte
            VIP = client.Entity.VIPLevel,              // byte
            Experience = client.Entity.Experience,     // ulong
            Money = client.Entity.Money,               // uint
            Cps = client.Entity.ConquerPoints,         // uint
            BoundCps = client.Entity.BoundCPs,         // uint
            LastActive = DateTime.Now,
            PlayTimeHours = client.Entity.OnlineMinutes / 60
        });
    }
}
```

## Difficulty Scoring

The system calculates a difficulty score (0-100) where:
- **50** = Perfectly balanced
- **< 40** = Too easy (rates will be reduced)
- **> 60** = Too hard (rates will be increased)

Factors considered:
- Death rate per player
- Boss kill success rate
- Player retention
- Quest completion rate
- Progression speed vs target

## Monster Spawning Per Map

Unlike traditional global spawning, Nyx.Brain spawns monsters per map:

```csharp
// If Map 1001 has 5 players and MonstersPerPlayerOnMap = 10:
// Map 1001 will have 50 monsters

// If Map 1002 has 20 players:
// Map 1002 will have 200 monsters

// If a map is empty:
// Minimum of 5 monsters will spawn
```

This ensures:
- ✅ Crowded maps have enough monsters for everyone
- ✅ Empty maps don't waste resources
- ✅ Fair grinding experience regardless of player distribution

## Integration Example

```csharp
public class YourGameServer
{
    private Main _brain;
    private GameMetricsCollector _metrics;
    
    public void OnServerStart()
    {
        var config = new RateConfiguration();
        string levelIniPath = "Modules/Nyx.Brain/Database/Level.ini";
        LevelExpLoader.LoadLevelExp(config, levelIniPath);
        
        _brain = new Main(config);
        _brain.Initialize();
        _metrics = _brain.GetMetricsCollector();
        
        // Start background update timer (every 10 minutes)
        StartPeriodicUpdates();
    }
    
    // In your monster kill handler
    public void OnMonsterKilled(uint money, uint cps, ulong exp, ulong skillExp)
    {
        _metrics.RecordMonsterKill();
        _metrics.RecordDrops(money, cps);
        _metrics.RecordExpGain(exp, skillExp);
        
        // Apply current rates
        var rates = _brain.GetCurrentRates();
        uint actualMoney = rates.MoneyPerMonster;  // Already calculated
        uint actualCps = rates.CpsPerMonster;      // Already calculated
        ulong actualExp = (ulong)(exp * (double)rates.ExpRate);
        
        // Give to player...
    }
    
    private void StartPeriodicUpdates()
    {
        // Every 10 minutes
        Task.Run(async () =>
        {
            while (true)
            {
                await Task.Delay(TimeSpan.FromMinutes(10));
                UpdateGameState();
                
                // Every hour
                if (DateTime.Now.Minute < 10)
                    _metrics.ConsolidateHourlyMetrics();
            }
        });
    }
}
```

## Bound CPS Note

**Bound CPS is NOT dropped by monsters.** It comes from events only. The system tracks total bound CPS for economy analysis but does NOT adjust bound CPS drop rates (as they don't exist from monsters).

## Target: Level 140 in 60 Days

The system automatically calculates required exp/hour to reach level 140 in 60 days:

```csharp
ulong totalExpNeeded = config.GetTotalExpToLevel(140);
int totalHours = 60 days × 4 hours/day = 240 hours
ulong requiredExpPerHour = totalExpNeeded / 240

// System adjusts exp rate to maintain this progression speed
```

## Adjustment Logic

The system continuously adjusts rates based on:

1. **Too Easy** (Difficulty < 40):
   - Reduce exp, money, and CPS rates by 15%
   - Increase monster damage and health
   - Spawn more elite monsters

2. **Too Hard** (Difficulty > 60):
   - Increase exp, money, and CPS rates by 15%
   - Reduce monster damage and health
   - Spawn fewer elite monsters

3. **Balanced** (40-60):
   - Maintain current rates
   - Minor tweaks based on specific metrics

## Files

- `Main.cs` - Primary interface
- `NyxBrain.cs` - Core engine
- `GameMetricsCollector.cs` - Real-time metrics tracking
- `CalculationService.cs` - Rate calculation logic
- `LevelExpLoader.cs` - Level.ini parser
- `Models/` - Data models (Player, GameEnvironment, GameRates, RateConfiguration)
- `ExampleUsage.cs` - Integration examples

## Support

For questions or issues, refer to `ExampleUsage.cs` for detailed integration examples.
