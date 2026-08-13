# Nyx.Brain Dynamic Game Balancing System

## Overview

The Nyx.Brain system is an AI-powered dynamic game balancing engine integrated into the Nyx game server. It automatically monitors player behavior, game metrics, and server statistics to dynamically adjust experience rates, money drops, CP rates, and skill progression rates in real-time.

## How It Works

The system operates through a background service (`NyxBrainIntegrationService`) that:

1. **Monitors Game Metrics** - Tracks player levels, economy, kills, deaths, and more
2. **Analyzes Patterns** - Evaluates whether the game is balanced, too easy, or too difficult
3. **Adjusts Rates Automatically** - Modifies server-wide multipliers to maintain challenge and engagement
4. **Logs Changes** - All adjustments are logged for transparency and debugging

## Key Features

### Automatic Rate Adjustment
- **Experience Rate** - Adjusted based on average player level vs target
- **Money Drop Rate** - Balanced against player wealth accumulation
- **CPs (Conquer Points) Rate** - Regulated to prevent inflation
- **Skill Experience Rate** - Independent adjustment for skill progression

### Smart Balancing Logic
- Considers player count (more players = slightly reduced rates to prevent power creep)
- Targets specific benchmarks (e.g., average level 100, 50 players online)
- Conservative adjustments (10% threshold before changing)  
- Bounded ranges (50-300% for exp, 50-250% for money/CPs)

### Metrics Tracking
Hourly counters track:
- Total experience gained
- Money dropped by monsters
- CPs dropped
- Monsters killed  
- Player deaths

## Configuration

The system is pre-configured with sensible defaults in `NyxBrainIntegrationService`:

```csharp
private decimal _targetAvgLevel = 100m;          // Target average player level
private int _targetPlayerCount = 50;              // Target online players
private decimal _targetAvgMoney = 10_000_000m;   // Target average money per player
private decimal _targetAvgCps = 100_000m;        // Target average CPs per player
```

### Timing Intervals
- **Metrics Check**: Every 5 minutes (logs current state)
- **Rate Adjustment**: Every 30 minutes (analyzes and potentially adjusts rates)
- **Hourly Reset**: Counters reset every hour for fresh analysis

## Default Rates

When the server starts, if rates are not set, defaults are applied:
- Experience Rate: 100% (1x)
- Money Drop Rate: 100% (1x)
- Conquer Points Rate: 100% (1x)
- Item Drop Rate: 100% (1x, not auto-adjusted)
- Skill Exp Rate: 100% (1x)

## Integration Points

The Brain service is registered in `Program.cs` and automatically starts with the server:

```csharp
services.AddSingleton<Nyx.Server.Services.NyxBrainIntegrationService>();
services.AddHostedService(provider => 
    provider.GetRequiredService<Nyx.Server.Services.NyxBrainIntegrationService>());
```

It's accessible via:
```csharp
Program.BrainService?.RecordExpGain(expAmount);
Program.BrainService?.RecordMoneyDrop(moneyAmount);
Program.BrainService?.RecordCpsDrop(cpsAmount);
Program.BrainService?.RecordMonsterKill();
Program.BrainService?.RecordPlayerDeath();
```

## Example Log Output

### Startup
```
[INF] Nyx.Brain Integration Service started (Standalone Mode)
[INF] Initial rates - Exp: 100%, Money: 100%, CPs: 100%, Items: 100%, Skills: 100%
```

### Metrics Logging (Every 5 minutes)
```
[INF] Game Metrics - Players: 48, AvgLvl: 92.3, AvgMoney: 8,234,521, AvgCPs: 94,231 |  
      Exp/hr: 2,458,932, Money/hr: 1,234,567, CPs/hr: 18,234, Monsters/hr: 892, Deaths/hr: 3.2
```

### Rate Adjustment (Every 30 minutes, if needed)
```
[WRN] RATES ADJUSTED - Exp: 115% (was 100%), Money: 120% (was 100%),  
      CPs: 105% (was 100%), Skills: 90% |  
      Reason: AvgLvl=92.3 (target 100), Players=48 (target 50)
```

## When Rates Change

Rates are adjusted when:
1. **Average player level** deviates from target (100)
2. **Player economy** (money/CPs) deviates from targets
3. **Player count** affects population density
4. Change exceeds **10% threshold** from current rate

## Safety Limits

Hard-coded limits prevent extreme adjustments:
- **Exp Rate**: 50% - 300% (0.5x to 3x)
- **Money Rate**: 50% - 250% (0.5x to 2.5x)
- **CPs Rate**: 50% - 250% (0.5x to 2.5x)
- **Skill Rate**: 50% - 200% (0.5x to 2x)

## Future Enhancements

Planned improvements:
1. **Web Dashboard** - Real-time metrics visualization
2. **Manual Override** - GM commands to force specific rates
3. **Per-Level Brackets** - Different rates for level 1-50, 51-100, etc.
4. **Event Mode** - Temporary rate boosts for special events
5. **Database Persistence** - Store adjustment history

## Troubleshooting

### Rates aren't changing
- Check that at least 5 players are online (minimum for adjustments)
- Verify 30 minutes have passed since last adjustment
- Check logs for "Not enough players online" message

### Rates changing too frequently
- Increase `_rateAdjustmentInterval` in code (default 30 minutes)
- Increase adjustment threshold (default 10%)

### Rates seem wrong
- Adjust target values (`_targetAvgLevel`, `_targetPlayerCount`, etc.)
- Check player distribution - if most are low level, rates will increase

## Technical Details

### Thread Safety
All metric recording uses `Interlocked` operations for thread-safe counters.

### Performance Impact
Minimal - runs once every 5-30 minutes with simple arithmetic operations.

### Dependencies
- Microsoft.Extensions.Hosting (for BackgroundService)
- Microsoft.Extensions.Logging (for logging)
- No external Nyx.Brain module needed (standalone implementation)

## Monitoring Commands

Future GM commands (not yet implemented):
```
/brain stats          - Show current metrics
/brain rates          - Display current rate multipliers
/brain adjust         - Force immediate rate recalculation
/brain target <val>   - Set target average level
/brain reset          - Reset rates to 100%
```

## Architecture

```
┌─────────────────────────────────────────┐
│   NyxBrainIntegrationService            │
│   (Background Service)                  │
│                                         │
│   ┌───────────────────────────────┐   │
│   │  Metrics Collection           │   │
│   │  - Player levels/money/CPs    │   │
│   │  - Exp/Money/CP drops         │   │
│   │  - Monster kills/Deaths       │   │
│   └───────────────────────────────┘   │
│              ▼                          │
│   ┌───────────────────────────────┐   │
│   │  Analysis Engine              │   │
│   │  - Compare vs targets         │   │
│   │  - Calculate adjustments      │   │
│   │  - Apply safety limits        │   │
│   └───────────────────────────────┘   │
│              ▼                          │
│   ┌───────────────────────────────┐   │
│   │  Rate Application             │   │
│   │  - Constants.ExtraExpRate     │   │
│   │  - Constants.MoneyDropRate    │   │
│   │  - Constants.CPsDropRate      │   │
│   │  - Constants.ExtraSpellRate   │   │
│   └───────────────────────────────┘   │
└─────────────────────────────────────────┘
                ▼
    ┌────────────────────────┐
    │  Game Server Logic     │
    │  - IncreaseExperience  │
    │  - JustDropItems       │
    │  - MonsterDeath        │
    └────────────────────────┘
```

## Related Files

- `src/Nyx/Services/NyxBrainIntegrationService.cs` - Main implementation
- `src/Nyx/Program.cs` - Service registration
- `src/Nyx/System/Constants.cs` - Rate variables
- `src/Nyx/Client/GameClient.cs` - Experience application  
- `src/Nyx/Database/MonsterTable.cs` - Drop application

---

**Last Updated**: January 2025  
**Version**: 1.0  
**Status**: Production Ready
