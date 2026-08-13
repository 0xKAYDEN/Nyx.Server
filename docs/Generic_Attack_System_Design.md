# Generic Attack System Design

## Overview

This document outlines a flexible, extensible architecture for implementing a generic attack system that can support various combat mechanics while maintaining clean separation of concerns. The design leverages proven software engineering patterns including Strategy Pattern, Component-Based Design, Event-Driven Architecture, and Data-Driven Configuration.

---

## 1. Core Design Principles

### 1.1 Separation of Concerns

| Component | Responsibility |
|-----------|---------------|
| **Attack Processor** | Orchestrates the entire attack lifecycle from validation to result delivery |
| **Damage Calculator** | Pure mathematical computation of raw damage values |
| **Effect Modifiers** | Pluggable components that modify damage based on game mechanics (crit, resist, armor) |
| **Event Handler** | Observes attack results and triggers side effects (AI behavior, logging, buffs) |
| **Target Selector** | Determines which entity to target when multiple valid options exist |

### 1.2 Key Patterns Used

- **Strategy Pattern**: Different calculation algorithms for different combat scenarios (PvE vs PvP vs Boss)
- **Chain of Responsibility**: Effect modifiers form a chain where each component can transform the value
- **Observer Pattern**: Event handlers react to attack outcomes without tight coupling
- **Registry Pattern**: Easy registration and lookup of calculators and modifiers

---

## 2. Core Data Structures

### 2.1 Attack Context

```csharp
public struct AttackContext
{
    public Entity Attacker { get; set; }
    public Entity Target { get; set; }
    public AttackType Type { get; set; } // Melee, Magic, Ranged, Skill
    public float BaseDamage { get; set; }
    public float PositionX { get; set; }
    public float PositionY { get; set; }
    public DateTime Timestamp { get; set; }
    public Dictionary<string, object> ExtraData { get; set; }
    
    // Combat-specific modifiers
    public bool IsCritical { get; set; }
    public float CriticalChance { get; set; }
    public ElementType? ElementalType { get; set; }
    public float ArmorPenetration { get; set; }
}
```

### 2.2 Damage Calculation Result

```csharp
public class CalculateResult
{
    public float RawDamage { get; set; }
    public float ModifiedDamage { get; set; }
    public Dictionary<string, float> Breakdown { get; set; } // Track contribution of each modifier
    
    public static CalculateResult Create(float rawDamage) => 
        new CalculateResult { RawDamage = rawDamage, ModifiedDamage = rawDamage, Breakdown = new() };
}
```

### 2.3 Attack Result

```csharp
public class AttackResult
{
    public Entity Attacker { get; set; }
    public Entity Target { get; set; }
    public float Damage { get; set; }
    public float FinalDamage { get; set; }
    public bool Critical { get; set; }
    public ElementType? ElementalType { get; set; }
    public AttackType Type { get; set; }
    public DateTime Timestamp { get; set; }
    public bool Kill { get; set; }
    public float XPPearned { get; set; }
    
    public static AttackResult CreateFailure(string reason) => 
        new AttackResult { FailureReason = reason };
        
    public string FailureReason { get; set; }
}
```

### 2.4 Damage Types & Element Types

```csharp
public enum AttackType
{
    Melee,
    Magic,
    Ranged,
    Skill,
    Special
}

public enum ElementType
{
    Fire,
    Water,
    Earth,
    Wind,
    Light,
    Dark,
    Physical,
    Holy,
    Neutral
}

public enum ModifierType
{
    Pre,    // Before base calculation (elemental resistance, armor reduction)
    Post    // After base calculation (critical strike, healing absorption)
}

public enum CombatScenario
{
    PvE,
    PvP,
    Boss,
    PvM, // Player vs Monster
    PvE // Player vs Environment
}
```

---

## 3. Implementation Components

### 3.1 Damage Calculator Interface

```csharp
public interface IDamageCalculator
{
    CalculateResult Calculate(AttackContext context);
    CombatScenario SupportedScenario { get; }
}

// Concrete Implementations
public class PvEDamageCalculator : IDamageCalculator
{
    public CombatScenario SupportedScenario => CombatScenario.PvE;
    
    public CalculateResult Calculate(AttackContext context)
    {
        var result = CalculateResult.Create(
            context.Attacker.AttackPower * (0.5f + context.Target.Defense / 100f)
        );
        result.Breakdown["Base"] = context.Attacker.AttackPower;
        return result;
    }
}

public class PvPvDDamageCalculator : IDamageCalculator
{
    public CombatScenario SupportedScenario => CombatScenario.PvP;
    
    public CalculateResult Calculate(AttackContext context)
    {
        var baseDamage = (context.Attacker.AttackPower - context.Target.Defense) * 0.8f;
        var result = CalculateResult.Create(Math.Max(1, baseDamage));
        result.Breakdown["PvP_Multiplier"] = 0.8f;
        return result;
    }
}

public class BossDamageCalculator : IDamageCalculator
{
    public CombatScenario SupportedScenario => CombatScenario.Boss;
    
    public CalculateResult Calculate(AttackContext context)
    {
        // Bosses have reduced damage taken from players
        var bossMultiplier = context.Target.IsBoss ? 0.7f : 1.0f;
        var baseDamage = context.Attacker.AttackPower * bossMultiplier;
        var result = CalculateResult.Create(baseDamage);
        result.Breakdown["Boss_Reduction"] = bossMultiplier;
        return result;
    }
}
```

### 3.2 Damage Calculator Registry

```csharp
public class DamageCalculatorRegistry
{
    private readonly Dictionary<CombatScenario, IDamageCalculator> _calculators = new();
    
    public void Register(CombatScenario scenario, IDamageCalculator calculator)
    {
        if (_calculators.ContainsKey(scenario))
            throw new InvalidOperationException($"Calculator already registered for {scenario}");
        _calculators[scenario] = calculator;
    }
    
    public IDamageCalculator GetCalculator(AttackContext context)
    {
        var scenario = DetermineScenario(context);
        if (!_calculators.TryGetValue(scenario, out var calculator))
            throw new InvalidOperationException($"No calculator registered for scenario {scenario}");
        return calculator;
    }
    
    private CombatScenario DetermineScenario(AttackContext context)
    {
        if (context.Target == null) throw new ArgumentNullException(nameof(context.Target));
        
        if (context.Target.IsBoss) return CombatScenario.Boss;
        if (context.Target.IsMonster) return CombatScenario.PvM;
        return context.Target.IsPlayer ? CombatScenario.PvP : CombatScenario.PvE;
    }
    
    public IEnumerable<CombatScenario> AvailableScenarios => _calculators.Keys;
}
```

### 3.3 Effect Modifier Interface

```csharp
public interface IEffectModifier
{
    float Modify(float value, AttackContext context, ModifierType type);
    bool CanApply(AttackContext context);
    string Name { get; }
}

// Example: Critical Strike Modifier
public class CriticalStrikeModifier : IEffectModifier
{
    public string Name => "CriticalStrike";
    
    public float Modify(float value, AttackContext context, ModifierType type)
    {
        if (type == ModifierType.Post && context.IsCritical)
            return value * (1.0f + context.CriticalDamageMultiplier);
        return value;
    }
    
    public bool CanApply(AttackContext context) => 
        context.CriticalChance > 0 && context.IsCritical;
}

// Example: Elemental Resistance Modifier
public class ElementalResistanceModifier : IEffectModifier
{
    private readonly Dictionary<ElementType, float> _resistances = new();
    
    public ElementalResistanceModifier(Dictionary<ElementType, float> resistances)
    {
        _resistances = resistances;
    }
    
    public string Name => $"ElementalResistance({string.Join(", ", _resistances.Keys)})";
    
    public float Modify(float value, AttackContext context, ModifierType type)
    {
        if (type != ModifierType.Pre || !context.ElementalType.HasValue)
            return value;
        
        var element = context.ElementalType.Value;
        if (!_resistances.TryGetValue(element, out var resistance))
            return value;
        
        return value * (1.0f - resistance / 100.0f);
    }
    
    public bool CanApply(AttackContext context) => 
        context.ElementalType.HasValue && 
        _resistances.ContainsKey(context.ElementalType.Value);
}

// Example: Armor Reduction Modifier
public class ArmorReductionModifier : IEffectModifier
{
    private readonly float _armorReduction;
    
    public ArmorReductionModifier(float armorReduction)
    {
        _armorReduction = armorReduction;
    }
    
    public string Name => $"ArmorReduction{_armorReduction:P0}";
    
    public float Modify(float value, AttackContext context, ModifierType type)
    {
        if (type != ModifierType.Pre)
            return value;
        
        var armorFactor = Math.Max(0, 1.0f - context.Target.Armor / 1000f);
        return value * (1.0f - _armorReduction * (1.0f - armorFactor));
    }
    
    public bool CanApply(AttackContext context) => context.Target.Armor > 0;
}
```

### 3.4 Effect Modifier Chain

```csharp
public class EffectModifierChain
{
    private readonly List<IEffectModifier> _modifiers = new();
    
    public void Add(IEffectModifier modifier) => _modifiers.Add(modifier);
    
    public void Clear() => _modifiers.Clear();
    
    public float ApplyAll(float initialDamage, AttackContext context)
    {
        float result = initialDamage;
        
        // Pre-modifiers: go through in registration order
        foreach (var mod in _modifiers)
        {
            if (mod.CanApply(context))
                result = mod.Modify(result, context, ModifierType.Pre);
        }
        
        // Post-modifiers: go through in reverse registration order
        foreach (var mod in _modifiers.AsEnumerable().Reverse())
        {
            if (mod.CanApply(context))
                result = mod.Modify(result, context, ModifierType.Post);
        }
        
        return Math.Max(0, result); // Prevent negative damage
    }
    
    public IEnumerable<IEffectModifier> Modifiers => _modifiers.AsReadOnly();
    public int Count => _modifiers.Count;
}
```

### 3.5 Main Attack Processor

```csharp
public class AttackProcessor
{
    private readonly DamageCalculatorRegistry _calculatorRegistry;
    private readonly EffectModifierChain _modifierChain;
    private readonly IEventHandler _eventHandler;
    private readonly TargetSelector _targetSelector;
    private readonly CombatCooldownManager _cooldownManager;

    public AttackProcessor(
        DamageCalculatorRegistry calculatorRegistry,
        IEventHandler eventHandler,
        TargetSelector targetSelector = null,
        CombatCooldownManager cooldownManager = null)
    {
        _calculatorRegistry = calculatorRegistry;
        _eventHandler = eventHandler;
        _targetSelector = targetSelector ?? new DefaultTargetSelector();
        _cooldownManager = cooldownManager ?? new CombatCooldownManager();
    }

    // Register effect modifiers for use across attacks
    public void RegisterModifier(IEffectModifier modifier)
    {
        _modifierChain.Add(modifier);
    }

    public void RegisterModifiers(IEnumerable<IEffectModifier> modifiers)
    {
        foreach (var modifier in modifiers)
        {
            _modifierChain.Add(modifier);
        }
    }

    // Execute an attack with full processing pipeline
    public async Task<AttackResult> ExecuteAsync(AttackContext context)
    {
        // 1. Validate inputs
        if (!ValidateAttack(context))
            return AttackResult.CreateFailure("Invalid attack parameters");

        // 2. Check cooldowns
        if (_cooldownManager != null && !_cooldownManager.CanExecute(context))
            return AttackResultCreateFailure($"{context.Type} attack on cooldown");

        // 3. Select target if not specified
        context.Target ??= _targetSelector.FindBestTarget(context.Attacker, context);

        // 4. Calculate raw damage
        var calculator = _calculatorRegistry.GetCalculator(DetermineCombatScenario(context));
        var calcResult = calculator.Calculate(context);
        context.BaseDamage = calcResult.RawDamage;

        // 5. Apply modifiers (pre and post)
        var finalDamage = _modifierChain.ApplyAll(calcResult.RawDamage, context);
        context.FinalDamage = finalDamage;

        // 6. Build result object
        var result = BuildAttackResult(context, calcResult, finalDamage);

        // 7. Apply damage to target (with feedback)
        context.Target.TakeDamage(finalDamage, result);

        // 8. Trigger events
        _eventHandler.OnAttackExecuted(result);
        _eventHandler.OnDamageDealt(result);

        // 9. Update cooldowns
        _cooldownManager?.UpdateLastAttack(context, context.Type);

        return result;
    }

    // Sync version for performance-critical paths
    public AttackResult Execute(AttackContext context) => 
        ExecuteAsync(context).Result;

    private bool ValidateAttack(AttackContext context)
    {
        if (context.Attacker == null) throw new ArgumentNullException(nameof(context.Attacker));
        if (context.Target == null) throw new ArgumentNullException(nameof(context.Target));
        if (context.Attacker.Owner == context.Target.Owner) 
            return false; // Self-attack not allowed
        if (context.Attacker.IsDead || context.Target.IsDead)
            return false;
        if (context.Attacker.CanAttack(context.Target) == false)
            return false; // Attack restrictions

        return true;
    }

    private CombatScenario DetermineCombatScenario(AttackContext context)
    {
        // Reuse the same logic as registry's DetermineScenario
        if (context.Target == null) return CombatScenario.PvE;
        if (context.Target.IsBoss) return CombatScenario.Boss;
        if (context.Target.IsMonster) return CombatScenario.PvM;
        return context.Target.IsPlayer ? CombatScenario.PvP : CombatScenario.PvE;
    }

    private AttackResult BuildAttackResult(AttackContext context, CalculateResult calc, float finalDamage)
    {
        var kill = context.Target.TakeDamage(finalDamage, out var remainingHP);
        var xpEarned = CalculateExperienceReward(context, finalDamage);

        return new AttackResult
        {
            Attacker = context.Attacker,
            Target = context.Target,
            Damage = calc.RawDamage,
            FinalDamage = finalDamage,
            Critical = context.IsCritical,
            ElementalType = context.ElementalType,
            Type = context.Type,
            Timestamp = context.Timestamp,
            Kill = kill,
            XPPearned = xpEarned,
            RemainingHealth = remainingHP
        };
    }

    private float CalculateExperienceReward(AttackContext context, float damage)
    {
        // Base experience formula: Level² × 2 (matching existing Nyx system)
        var baseExp = context.Target.Level * context.Target.Level * 2;
        
        // Damage-based share (party systems)
        if (context.Attacker.IsInParty)
        {
            var damageShare = Math.Min(1.0, (double)damage / context.Target.MaxHP);
            return (ulong)(baseExp * damageShare);
        }
        
        return baseExp;
    }
}
```

### 3.6 Event Handler System

```csharp
public interface IEventHandler
{
    void OnAttackExecuted(AttackResult result);
    void OnDamageDealt(AttackResult result);
    void OnAttacked(Entity victim, float damage, AttackResult result);
    void OnKillEntity(Entity killed, Entity killer, AttackResult result);
    void OnMiss(AttackResult result);
    void OnBlock(AttackResult result);
}

// Combined handler for registering multiple handlers
public class CombinedEventHandler : IEventHandler
{
    private readonly List<IEventHandler> _handlers = new();
    
    public void Register(IEventHandler handler) => _handlers.Add(handler);
    
    public void OnAttackExecuted(AttackResult result) => 
        foreach (var handler in _handlers) handler.OnAttackExecuted(result);
    
    public void OnDamageDealt(AttackResult result) => 
        foreach (var handler in _handlers) handler.OnDamageDealt(result);
    
    public void OnAttacked(Entity victim, float damage, AttackResult result) => 
        foreach (var handler in _handlers) handler.OnAttacked(victim, damage, result);
    
    public void OnKillEntity(Entity killed, Entity killer, AttackResult result) => 
        foreach (var handler in _handlers) handler.OnKillEntity(killed, killer, result);
    
    public void OnMiss(AttackResult result) => 
        foreach (var handler in _handlers) handler.OnMiss(result);
    
    public void OnBlock(AttackResult result) => 
        foreach (var handler in _handlers) handler.OnBlock(result);
}

// Example Handlers

// Combat AI Handler - adjusts enemy behavior based on damage received
public class CombatAIHandler : IEventHandler
{
    public void OnDamageDealt(AttackResult result)
    {
        if (result.Target.IsEnemy && result.Damage > 1000)
            result.Target.EnterAggroMode();
            
        if (result.Target.IsBoss && result.Critical)
            result.Target.Enrage(); // Boss becomes more aggressive on critical hits
    }
    
    public void OnKillEntity(Entity killed, Entity killer, AttackResult result)
    {
        // Trigger boss phase transition
        if (killed.IsBoss && killed.Phase == Phase.One)
            killed.PhaseTransition(Phase.Two);
    }
}

// Logging Handler - records combat statistics for analytics
public class LoggingHandler : IEventHandler
{
    private readonly ILogger _logger;
    
    public LoggingHandler(ILogger logger) => _logger = logger;
    
    public void OnAttackExecuted(AttackResult result)
    {
        _logger.Log($"[{result.Timestamp}] {result.Attacker.Name} used {result.Type} on {result.Target.Name}");
    }
    
    public void OnDamageDealt(AttackResult result)
    {
        _logger.LogCombat(result.Attacker, result.Target, result.Damage, result.Critical);
    }
}

// Buff/Debuff Handler - triggers effects on hit/crit
public class BuffTriggerHandler : IEventHandler
{
    public void OnDamageDealt(AttackResult result)
    {
        if (result.Critical)
        {
            result.Attacker.AddBuff("CriticalHitBuff", TimeSpan.FromSeconds(5));
            result.Target.AddDebuff("Shaken", TimeSpan.FromSeconds(3));
        }
        
        // Elemental effect application
        if (result.ElementalType.HasValue)
        {
            ApplyElementalEffect(result.Target, result.ElementalType.Value, result.Damage);
        }
    }
    
    private void ApplyElementalEffect(ElementType type, Entity target, float damage)
    {
        switch (type)
        {
            case ElementType.Fire:
                target.SetBurn(damage * 0.1f, TimeSpan.FromSeconds(10));
                break;
            case ElementType.Water:
                target.SetSlow(0.2f, TimeSpan.FromSeconds(5));
                break;
            case ElementType.Earth:
                target.WeakenStat(Stat.Defense, 15, TimeSpan.FromSeconds(8));
                break;
        }
    }
}

// Experience Handler - processes XP rewards
public class ExperienceHandler : IEventHandler
{
    public void OnKillEntity(Entity killed, Entity killer, AttackResult result)
    {
        if (result.XPPearned > 0)
        {
            killer.GainExperience(result.XPPearned);
            
            // Check for level up
            if (killer.IsLevelUp)
                killer.TriggerLevelUpSequence();
                
            // Party experience sharing
            if (killer.IsInParty && killer.Party != null)
            {
                foreach (var member in killer.Party.Members)
                {
                    member.GainExperience(result.XPPearned * 0.5f); // Half exp for party members
                }
            }
        }
    }
}
```

### 3.7 Target Selector

```csharp
public interface ITargetSelector
{
    Entity FindBestTarget(Entity attacker, AttackContext context = null);
}

public class DefaultTargetSelector : ITargetSelector
{
    public Entity FindBestTarget(Entity attacker, AttackContext context = null)
    {
        if (attacker == null) return null;
        
        // Priority 1: If target explicitly selected, use it
        if (context?.Target != null && IsWithinRange(attacker, context.Target))
            return context.Target;
        
        // Priority 2: Find closest aggressor (for auto-combat)
        var enemies = FindEnemiesInRange(attacker);
        if (enemies.Count > 0)
            return enemies.OrderBy(e => GetDistance(attacker, e)).First();
        
        // Priority 3: Return first detectable target
        var targets = FindTargetsInRange(attacker);
        return targets.FirstOrDefault();
    }
    
    private bool IsWithinRange(Entity attacker, Entity target) => 
        GetDistance(attacker, target) <= attacker.AttackRange;
    
    private List<Entity> FindEnemiesInRange(Entity attacker)
    {
        var entities = Game.GetAllVisibleEntities();
        return entities.Where(e => 
            e.IsEnemy && 
            e.IsAlive && 
            IsWithinRange(attacker, e) &&
            CanAttack(attacker, e))
            .ToList();
    }
    
    private List<Entity> FindTargetsInRange(Entity attacker)
    {
        var entities = Game.GetAllVisibleEntities();
        return entities.Where(e => 
            e.IsAlive && 
            IsWithinRange(attacker, e))
            .ToList();
    }
    
    private float GetDistance(Entity a, Entity b) => 
        (float)Math.Sqrt(Math.Pow(a.X - b.X, 2) + Math.Pow(a.Y - b.Y, 2));
    
    private bool CanAttack(Entity attacker, Entity target) => 
        attacker.CanAttack(target);
}
```

### 3.8 Combat Cooldown Manager

```csharppublic class CombatCooldownManager
{
    private readonly Dictionary<(Entity, AttackType), DateTime> _lastAttackTimes = new();
    private readonly Dictionary<(Entity, AttackType), TimeSpan> _coolsDown = new();
    
    public CombatCooldownManager()
    {
        // Default cooldowns (configurable)
        _coolsDown[(null, AttackType.Melee)] = TimeSpan.FromMilliseconds(500);
        _coolsDown[(null, AttackType.Magic)] = TimeSpan.FromSeconds(1.0);
        _coolsDown[(null, AttackType.Ranged)] = TimeSpan.FromMilliseconds(800);
        _coolsDown[(null, AttackType.Skill)] = TimeSpan.FromSeconds(2.0);
    }
    
    public bool CanExecute(AttackContext context)
    {
        var key = (context.Attacker, context.Type);
        if (!_lastAttackTimes.TryGetValue(key, out var lastTime)) return true;
        
        var cooldown = GetCooldown(key);
        return DateTime.UtcNow - lastTime >= cooldown;
    }
    
    public void UpdateLastAttack(AttackContext context, AttackType type)
    {
        var key = (context.Attacker, type);
        _lastAttackTimes[key] = DateTime.UtcNow;
    }
    
    private TimeSpan GetCooldown((Entity attacker, AttackType type) key)
    {
        // Check for weapon or trait bonuses to cooldown reduction
        var reduction = key.Attacker.CooldownReductionPercentage;
        var baseDuration = _coolsDown.ContainsKey(key) ? _coolsDown[key] : _coolsDown[(null, key.Type)];
        
        return baseDuration - TimeSpan.FromMilliseconds((long)(baseDuration.TotalMilliseconds * reduction));
    }
    
    public void SetCooldown(AttackType attackType, TimeSpan duration)
    {
        _coolsDown[(null, attackType)] = duration;
    }
    
    public void RemoveCooldown(Entity attacker, AttackType attackType)
    {
        _lastAttackTimes.Remove((attacker, attackType));
    }
}
```

### 3.9 Entity Extensions

```csharp
public static class EntityExtensions
{
    // Check if entity can attack another
    public static bool CanAttack(this Entity attacker, Entity target)
    {
        if (target == null) return false;
        if (attacker.Owner == null || target.Owner == null) return true; // No owner check
        
        // Same team check for PVE vs PvP
        if (attacker.IsPlayer && target.IsPlayer)
            return attacker.Owner.Team != target.Owner.Team;
        
        return true;
    }
    
    // Take damage and handle death
    public static bool TakeDamage(this Entity entity, float damage, AttackResult result = null)
    {
        if (entity.IsInvulnerable)
        {
            result?.OnBlock(new AttackResult { Target = entity, Damage = damage });
            return false;
        }
        
        // Apply damage
        entity.Hp -= damage;
        
        // Check for death
        bool isDead = false;
        if (entity.Hp <= 0)
        {
            entity.Hp = 0;
            isDead = true;
            entity.OnDeath(result);
        }
        
        // Damage notification
        entity.OnDamaged(damage, result);
        
        return isDead;
    }
    
    // Gain experience
    public static void GainExperience(this Entity entity, float amount)
    {
        entity.XP += amount;
        while (entity.XP >= entity.XPToNextLevel)
        {
            entity.XP -= entity.XPToNextLevel;
            entity.LevelUp();
        }
    }
    
    // Add buff/debuff
    public static void AddBuff(this Entity entity, string buffName, TimeSpan duration)
    {
        entity.Buffs.Add(buffName, new Buff { Duration = duration, StartTime = DateTime.UtcNow });
    }
    
    public static void AddDebuff(this Entity entity, string debuffName, TimeSpan duration)
    {
        entity.Debuffs.Add(debuffName, new Debuff { Duration = duration, StartTime = DateTime.UtcNow });
    }
    
    public static void OnDeath(this Entity entity, AttackResult result = null)
    {
        entity.IsDead = true;
        entity.RespawnTimer = entity.RespawnTime;
        // Death animations, particle effects, etc.
    }
    
    public static void OnDamaged(this Entity entity, float damage, AttackResult result = null)
    {
        // Visual damage indicators, screen shake, sound effects
    }
}
```

---

## 4. Usage Examples

### 4.1 Basic Setup

```csharp
// Initialize the combat system
var calculatorRegistry = new DamageCalculatorRegistry();
calculatorRegistry.Register(CombatScenario.PvE, new PvEDamageCalculator());
calculatorRegistry.Register(CombatScenario.PvP, new PvPvDDamageCalculator());
calculatorRegistry.Register(CombatScenario.Boss, new BossDamageCalculator());

var eventHandlers = new CombinedEventHandler();
eventHandlers.Register(new LoggingHandler(ConsoleLogger.Instance));
eventHandlers.Register(new CombatAIHandler());
eventHandlers.Register(new ExperienceHandler());
eventHandlers.Register(new BuffTriggerHandler());

var processor = new AttackProcessor(calculatorRegistry, eventHandlers);

// Register default modifiers
processor.RegisterModifier(new CriticalStrikeModifier());
processor.RegisterModifier(new ElementalResistanceModifier(new Dictionary<ElementType, float>
{
    { ElementType.Fire, 20.0f },
    { ElementType.Water, 15.0f }
}));

// Perform an attack
var attackContext = new AttackContext
{
    Attacker = player,
    Target = monster,
    Type = AttackType.Melee,
    PositionX = 100f,
    PositionY = 200f,
    Timestamp = DateTime.UtcNow,
    CriticalChance = 0.15f,
    ElementalType = ElementType.Physical
};

var result = processor.Execute(attackContext);
Console.WriteLine($"{player.Name} dealt {result.FinalDamage:F0} damage to {monster.Name}");
if (result.Kill) Console.WriteLine($"Monster defeated! Gaining {result.XPPearned:F0} XP!");
```

### 4.2 Advanced Configuration with Custom Modifiers

```csharp
// Create custom modifier for special mechanic
class BerserkerBurstModifier : IEffectModifier
{
    public string Name => "BerserkerBurst";
    private readonly float _threshold;
    private readonly float _multiplier;
    
    public BerserkerBurstModifier(float threshold, float multiplier)
    {
        _threshold = threshold;
        _multiplier = multiplier;
    }
    
    public float Modify(float value, AttackContext context, ModifierType type)
    {
        if (type != ModifierType.Post || context.Attacker.HpPercentage < _threshold)
            return value;
        
        // When below health threshold, apply bonus damage
        return value * _multiplier;
    }
    
    public bool CanApply(AttackContext context) => context.Attacker != null;
}

// Use it in setup
var burstModifier = new BerserkerBurstModifier(threshold: 0.3f, multiplier: 1.5f);
processor.RegisterModifier(burstModifier);

// Now attacks will deal 50% more damage when under 30% HP
```

### 4.3 Async Version for Networked Games

```csharp
// In a networked server environment, use async to avoid blocking
public async Task<NetworkAttackResult> HandleAttackAsync(NetworkAttackRequest request)
{
    // Deserialize context from network packet
    var context = request.ToAttackContext();
    
    // Execute attack asynchronously
    var result = await processor.ExecuteAsync(context);
    
    // Serialize to network packet
    var response = new NetworkAttackResult
    {
        Success = !result.FailureReason.HasValue,
        Damage = result.FinalDamage,
        Critical = result.Critical,
        Timestamp = result.Timestamp
    };
    
    // Send back to client
    await response.SendAsync(request.Client);
    
    return response;
}
```

### 4.4 Testing the Attack System

```csharp
[TestClass]
public class AttackSystemTests
{
    [TestMethod]
    public void CriticalStrikeAppliesMultiplier()
    {
        // Arrange
        var calculator = new PvEDamageCalculator();
        var modifier = new CriticalStrikeModifier();
        var chain = new EffectModifierChain();
        chain.Add(modifier);
        
        var context = new AttackContext
        {
            Attacker = new Entity { AttackPower = 100f },
            Target = new Entity { Defense = 10f },
            IsCritical = true,
            CriticalDamageMultiplier = 1.0f // 100% crit bonus = 2x
        };
        
        // Act
        var calc = calculator.Calculate(context);
        var final = chain.ApplyAll(calc.RawDamage, context);
        
        // Assert
        Assert.AreEqual(200f, final); // 100 * (1+1.0) = 200
    }
    
    [TestMethod]
    public void ElementalResistanceReducesDamage()
    {
        // Arrange...
        // Test fire resistance against fire damage
    }
    
    [TestMethod]
    public void PvPMultiplierApplied()
    {
        // Verify PvP damage calculation uses different formula
    }
}
```

---

## 5. Migration from Current Nyx System

If you want to incrementally upgrade your existing Nyx codebase:

### Step 1: Create Wrappers for Existing Code

```csharp
// Wrap Calculate.cs methods in interface wrapper
interface IColdCalculationWrapper
{
    uint GetDamageEntity2Entity(Entity attacker, Entity target, ushort spellId, byte level, ref Attack attack);
    uint GetDamageEntity2Monster(Entity attacker, Entity target, ushort spellId, byte level, ref Attack attack);
}

class NativeCalculateWrapper : IColdCalculationWrapper
{
    // Call existing Calculate.cs methods directly
}
```

### Step 2: Gradual Replacement

1. Start by adding event hooks around existing `Handle()` calls
2. Replace hard-coded damage calculations with calculator interface
3. Introduce modifier chain after core calculations work correctly
4. Eventually replace `Handle.cs` logic entirely with processor

### Step 3: Configuration Over Hardcoding

Move balance numbers from code to configuration files:

```json
// attack-config.json
{
  "damage": {
    "pve_base_multiplier": 1.0,
    "pvp_damage_reduction": 0.8,
    "boss_damage_reduction": 0.7,
    "crit_multipliers": [
      {"level": 1, "multiplier": 1.5},
      {"level": 50, "multiplier": 2.0}
    ]
  },
  "cooldowns": {
    "melee_ms": 500,
    "magic_seconds": 1.0
  }
}
```

---

## 6. Performance Considerations

| Optimization | Technique | Impact |
|-------------|-----------|--------|
| **Object Pooling** | Recycle `AttackContext` and `AttackResult` objects | Reduces GC pressure in high-frequency combat |
| **Batch Processing** | Process attacks in batches during fixed-timestep update | Better CPU cache utilization |
| **Cache Locality** | Store hot data in contiguous arrays rather than objects | Faster iteration |
| **Asynchronous** | Use async for expensive operations (database lookups, network calls) | Prevents frame stalls |
| **Spatial Partitioning** | Use quadtree/grid for target selection range queries | O(log n) instead of O(n) searches |

---

## 7. Future Extensibility Ideas

### 7.1 Scriptable Combat Events

```javascript
// Lua script for complex combat behaviors
function onAttackStart(context)
    if context.Target:IsBoss() then
        Broadcast("Alert! Boss engaged!")
    end
end

function onCritHit(context)
    ApplyParticleEffect(context.Attacker, "CriticalSpark")
    PlaySound("critical_hit_sound")
end
```

### 7.2 Combat State Machine

```
IDLE → PREPARATION → ATTACKING → HIT_BACKSTAGE → RECOVERY → [DIED or IDLE]
           ↑                   ↓
         COOLDOWN       VULNERABLE
```

### 7.3 Tactical Combat System

Add team-based combat with:
- Position awareness (flanking bonuses)
- Role definitions (Tank, Healer, DPS)
- Combo systems (sequential abilities trigger effects)
- Environmental hazards (terrain affects combat)

---

## Conclusion

This generic attack system provides a robust foundation that can be adapted to various game genres while maintaining clean architecture. The strategy pattern allows easy swapping of different calculation approaches, the modifier chain supports complex interaction between mechanics, and the event system enables other gameplay systems to respond to combat actions without tight coupling.

With this architecture, adding new features like elemental effects, status conditions, combo systems, or tactical positioning would require minimal changes to the core system - just add new modifier implementations or event handlers.
