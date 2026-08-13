# Skill Dispatcher System

## Overview
This is a clean, modular skill handling system that works alongside the existing legacy skill system in `Handle.cs`. It allows you to gradually migrate skills to a cleaner architecture without breaking existing functionality.

## Architecture

### Core Components

1. **SkillDispatcher** - Central dispatcher that routes skill execution to registered handlers
2. **SkillContext** - Contains all context data needed for skill execution
3. **ISkillHandler** - Interface that all skill handlers must implement
4. **BaseSkillHandler** - Abstract base class with common validation and helper methods
5. **SkillHandlerRegistry** - Central location to register all skill handlers

### How It Works

1. When a skill is used, the system first checks if a handler is registered in the dispatcher
2. If a handler exists, it validates and executes the skill
3. If no handler exists, it falls back to the legacy system in `Handle.cs`
4. This allows gradual migration without breaking existing skills

## Creating a New Skill Handler

### Step 1: Create the Handler Class

```csharp
using Nyx.Server.Game.Attacking.Skills;
using Nyx.Server.Network.GamePackets;

namespace Nyx.Server.Game.Attacking.Skills.Handlers
{
    public class MySkillHandler : BaseSkillHandler
    {
        public override ushort SkillId => 1234; // Your skill ID
        public override string Description => "My Skill - Does something cool";

        protected override bool ValidateCustom(SkillContext context)
        {
            // Add custom validation here
            // Return false if skill cannot be executed
            return true;
        }

        public override void Execute(SkillContext context)
        {
            // Consume mana/stamina
            ConsumeResources(context);
            SetCooldown(context, 1000);

            // Your skill logic here
            var caster = context.CasterEntity;
            var target = context.TargetEntity;
            var spell = context.SpellInfo;

            // Create spell packet, calculate damage, etc.
        }
    }
}
```

### Step 2: Register the Handler

In `SkillHandlerRegistry.cs`, add your handler:

```csharp
public static void RegisterAllHandlers()
{
    SkillDispatcher.RegisterSkill(1234, new MySkillHandler());
}
```

### Step 3: Initialize on Server Start

Make sure `SkillHandlerRegistry.RegisterAllHandlers()` is called during server initialization.

## Integration with Legacy System

The dispatcher is designed to work seamlessly with the existing system:

```csharp
// In Handle.cs or wherever skills are processed
var context = new SkillContext
{
    Caster = client,
    SpellInfo = spell,
    PlayerSkill = playerSkill,
    TargetEntity = target,
    TargetX = x,
    TargetY = y
};

// Try new system first
if (!SkillDispatcher.TryExecuteSkill(context))
{
    // Fall back to legacy system
    // ... existing skill handling code ...
}
```

## Helper Methods in BaseSkillHandler

- `ConsumeResources(context)` - Deducts mana and stamina
- `SetCooldown(context, ms)` - Sets skill cooldown
- `IsInRange(context, target)` - Checks if target is in range
- `CanAttackTarget(attacker, target)` - Validates if attack is allowed

## Examples

See the following example handlers:
- `ExampleFireballHandler.cs` - Single target damage skill
- `ExampleAoEHandler.cs` - Area-of-effect damage skill

## Benefits

1. **Clean Separation** - Each skill has its own class
2. **Easy Testing** - Skills can be tested independently
3. **Maintainability** - Easy to find and modify specific skills
4. **Gradual Migration** - Migrate skills one at a time
5. **No Breaking Changes** - Legacy system continues to work
6. **Reusability** - Common logic in BaseSkillHandler

## Migration Strategy

1. Start with simple, frequently-used skills
2. Test thoroughly before migrating complex skills
3. Keep legacy code until all skills are migrated
4. Remove legacy system once migration is complete

## Future Enhancements

- Skill effect system (buffs, debuffs, DoTs)
- Skill combo system
- Skill cooldown groups
- Skill prerequisite validation
- Dynamic skill loading from database
