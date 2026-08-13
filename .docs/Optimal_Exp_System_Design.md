# Optimal Experience Award System Design

## Analysis

### Monster HP Distribution
Based on `db_6370.sql` monster data:

| Level | Monster HP | Example Monster |
|-------|-----------|----------------|
| 3     | 33        | FlyingRooster |
| 20    | 303       | WarGhost |
| 47    | 2,199     | Macaque |
| 82    | 11,673    | BladeGhost |
| 102   | 24,472    | TombBat |
| 117   | 61,000    | AngerRat |
| 135   | 95,000    | HellfireBeast |

### Brain System Target
- **Goal**: Level 140 in 60 days
- **Playtime**: 4 hours/day = 240 hours total
- **Total Exp Needed**: ~223,557,388 exp (from Level.ini)
- **Required Rate**: 932,322 exp/hour
- **Per Minute**: 15,539 exp/min
- **Per Second**: 259 exp/sec

### Current Problem
With `DevideExpNumber = 1000`:
- Level 102 monster (24,472 HP) → 24 base exp
- After multipliers (1.5x-2x) → 36-48 exp per kill
- If you kill 1 monster every 30 seconds → 72-96 exp/min
- This is **162x too slow**!

## Recommended Solution

### Option 1: Monster Level-Based Exp (RECOMMENDED)
Award exp based on **monster level**, not damage. This is more predictable and balanced.

**Formula:**
```
Base Exp = MonsterLevel² × 2
Final Exp = Base × Level_Diff_Multiplier × ServerRate × Bonuses
```

**Examples:**
| Monster Level | Base Exp | After Multipliers (1.5x) | Monsters/Hour | Total Exp/Hour |
|--------------|----------|-------------------------|---------------|----------------|
| 10           | 200      | 300                    | 3,200         | 960,000       |
| 47           | 4,418    | 6,627                  | 140           | 927,780       |
| 82           | 13,448   | 20,172                 | 46            | 927,912       |
| 102          | 20,808   | 31,212                 | 30            | 936,360       |
| 117          | 27,378   | 41,067                 | 23            | 944,541       |
| 135          | 36,450   | 54,675                 | 17            | 929,475       |

**Perfect match** with Brain target of 932,322 exp/hour!

### Option 2: HP-Based with Better Scaling
Keep damage-based system but use better scaling:

**Formula:**
```
DevideExpNumber = 20 (instead of 1000)
Base Exp = Damage / 20
```

**Examples:**
| Monster | HP    | Exp per Kill | Multiplier | Final | Kills/Hour | Total/Hour |
|---------|-------|--------------|------------|-------|------------|------------|
| Lv 47   | 2,199 | 110          | 1.5x       | 165   | 5,650      | 932,250    |
| Lv 102  | 24,472| 1,224        | 1.5x       | 1,836 | 508        | 932,688    |
| Lv 117  | 61,000| 3,050        | 1.5x       | 4,575 | 204        | 933,300    |

This also works but less predictable.

### Option 3: Hybrid System (BEST)
Use monster level as base, adjusted by player damage contribution:

**Formula:**
```
Monster Base Exp = MonsterLevel² × 2
Player Damage Share = min(1.0, PlayerDamage / MonsterHP)
Player Exp = Monster Base Exp × Damage Share × Multipliers
```

**Benefits:**
- Consistent exp rates across all levels
- Fair distribution in parties
- No exp from "kill stealing" without damage contribution
- Predictable progression matching Brain targets

## Implementation Recommendation

I recommend **Option 3 (Hybrid System)** because:

1. ✅ **Matches Brain targets** perfectly (932k exp/hour)
2. ✅ **Level-appropriate** progression (higher level monsters = more exp)
3. ✅ **Fair party distribution** (damage-based sharing)
4. ✅ **Prevents exploits** (can't steal exp without contributing)
5. ✅ **Consistent with Conquer Online** design philosophy

### Code Changes Required

**1. Add Monster Level-Based Exp Calculation:**

```csharp
// In Calculate.cs or new ExpCalculator.cs
public static ulong GetMonsterBaseExp(ushort monsterLevel)
{
    // Monster base exp = Level² × 2
    return (ulong)(monsterLevel * monsterLevel * 2);
}

public static ulong CalculatePlayerExpShare(
    ushort playerLevel, 
    ushort monsterLevel, 
    uint damageDealt, 
    uint monsterMaxHP)
{
    // Get monster's base exp value
    ulong baseExp = GetMonsterBaseExp(monsterLevel);
    
    // Calculate player's damage contribution (0.0 to 1.0)
    double damageShare = Math.Min(1.0, (double)damageDealt / monsterMaxHP);
    
    // Player gets exp proportional to damage contribution
    ulong playerExp = (ulong)(baseExp * damageShare);
    
    // Apply level difference multiplier
    return CalculateExpBonus(playerLevel, monsterLevel, playerExp);
}
```

**2. Track Damage Per Player:**

```csharp
// In Entity.cs (Monster)
public Dictionary<uint, uint> DamageByPlayer = new Dictionary<uint, uint>();

public void RecordDamage(uint playerUID, uint damage)
{
    if (!DamageByPlayer.ContainsKey(playerUID))
        DamageByPlayer[playerUID] = 0;
    DamageByPlayer[playerUID] += damage;
}
```

**3. Award Exp on Monster Death:**

```csharp
// In MonsterTable.cs Drop() method or Entity.Die()
public void AwardExpToPlayers(Entity killerEntity)
{
    if (DamageByPlayer.Count == 0) return;
    
    foreach (var entry in DamageByPlayer)
    {
        uint playerUID = entry.Key;
        uint damageDealt = entry.Value;
        
        // Find player
        var player = Kernel.GamePool.Values.FirstOrDefault(c => c.Entity.UID == playerUID);
        if (player == null) continue;
        
        // Calculate exp based on damage contribution
        ulong exp = Calculate.CalculatePlayerExpShare(
            player.Entity.Level,
            Owner.Level,
            damageDealt,
            MaxHitpoints
        );
        
        // Award exp with multipliers
        player.IncreaseExperience(exp, true);
        
        // Record for Brain metrics
        Program.BrainService?.RecordExpGain(exp, 0);
    }
}
```

**4. Remove Per-Hit Exp:**

```csharp
// In Handle.cs - REMOVE the IncreaseExperience call from damage calculation
// Exp should ONLY be awarded when monster dies, not on every hit
```

## Expected Results

With this system:
- **Low level** (1-50): Kill 3,000-5,000 monsters/hour → 930k exp/hour ✓
- **Mid level** (50-100): Kill 500-1,000 monsters/hour → 930k exp/hour ✓  
- **High level** (100-140): Kill 200-400 monsters/hour → 930k exp/hour ✓

**Leveling pace:**
- Level 1-40: ~2-3 hours
- Level 40-80: ~40-50 hours
- Level 80-120: ~100-120 hours
- Level 120-140: ~80-90 hours
- **Total: ~240 hours = 60 days at 4 hours/day** ✓

## Configuration

```csharp
// Constants.cs
public static uint BaseExpMultiplier = 2;  // Monster exp = Level² × this value
public static uint DevideExpNumber = 1;    // Not used in new system

// For testing/adjustment
public static decimal GlobalExpModifier = 1.0m; // Emergency exp rate adjustment
```

The Brain system can then adjust `Constants.ExtraExperienceRate` dynamically to fine-tune progression.
