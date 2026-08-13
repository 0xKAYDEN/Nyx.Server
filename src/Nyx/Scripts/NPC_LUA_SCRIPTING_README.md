# NPC Lua Scripting System

This document describes the new Lua scripting system for NPC dialogs and interactions in the Nyx game server.

## Overview

The NPC Lua scripting system allows you to create dynamic NPC interactions using Lua scripts instead of hardcoded C# methods. This provides more flexibility and easier content creation for game developers.

## Features

- **Hot Reloading**: Scripts are automatically reloaded when files are modified
- **Rich API**: Access to player data, inventory, money, teleportation, and more
- **Dialog System**: Full support for text dialogs, options, and input prompts
- **Item Management**: Add/remove items, check inventory
- **Player Information**: Access player level, money, experience, etc.
- **Teleportation**: Move players to different locations
- **Quest Integration**: Framework for quest system integration

## File Structure

```
Server/net9.0-windows/database/Scripts/Npcs/
├── 601.lua    # Help Desk NPC
├── 602.lua    # Shop NPC
├── 999.lua    # Test NPC
└── [npc_id].lua  # Other NPCs
```

## Script Naming Convention

Scripts must be named using the NPC ID as the filename:
- `601.lua` for NPC ID 601
- `602.lua` for NPC ID 602
- etc.

## Available Functions

### Dialog Functions

```lua
-- Display text to player
npc:Say("Hello, " .. player:GetName() .. "!")

-- Display text with display option
npc:Say("This is a message", true)

-- Add menu option
npc:AddOption("Check my stats", 1)

-- Request text input from player
npc:RequestInput("Enter your name:", 16)

-- Set NPC avatar
npc:SetAvatar(1001)

-- Finish dialog
npc:Finish()
```

### Player Information Functions

```lua
-- Get player information
local name = player:GetName()
local level = player:GetLevel()
local money = player:GetMoney()
local experience = player:GetExperience()
local maxExperience = player:GetMaxExperience()
```

### Item Functions

```lua
-- Check if player has item
if player:HasItem(1001, 5) then
    npc:Say("You have 5 healing potions!")
end

-- Add item to player
if player:AddItem(1001, 1) then
    npc:Say("I gave you a healing potion!")
end

-- Remove item from player
if player:RemoveItem(1001, 1) then
    npc:Say("I took a healing potion from you!")
end

-- Get item count
local count = player:GetItemCount(1001)
```

### Money Functions

```lua
-- Add money to player
if player:AddMoney(1000) then
    npc:Say("I gave you 1000 silver!")
end

-- Remove money from player
if player:RemoveMoney(500) then
    npc:Say("I took 500 silver from you!")
end
```

### Teleportation Functions

```lua
-- Teleport player to specific location
if player:Teleport(1002, 100, 100) then
    npc:Say("I teleported you to the training area!")
end
```

### Utility Functions

```lua
-- Generate random numbers
local randomNum = player:Random(1, 100)
local randomMax = player:Random(50)

-- Get request information
local optionId = request:GetOptionId()
local interactType = request:GetInteractType()
local input = request:GetInput()
local npcId = request:GetNpcId()
```

## Event Handlers

### Required Functions

Every NPC script should implement these functions:

```lua
-- Initial interaction (when player first talks to NPC)
function on_talk()
    npc:Say("Welcome!")
    npc:AddOption("Option 1", 1)
    npc:AddOption("Option 2", 2)
    npc:Finish()
end

-- Handle option selection
function on_option_1()
    npc:Say("You selected option 1!")
    npc:Finish()
end

function on_option_2()
    npc:Say("You selected option 2!")
    npc:Finish()
end

-- Handle text input
function on_input()
    local input = request:GetInput()
    npc:Say("You entered: " .. input)
    npc:Finish()
end

-- Fallback for unhandled interactions
function on_interact()
    npc:Say("I don't understand that.")
    npc:Finish()
end
```

### Function Naming Convention

- `on_talk()` - Initial interaction
- `on_option_[id]()` - Handle option selection (e.g., `on_option_1()`, `on_option_2()`)
- `on_input()` - Handle text input
- `on_interact()` - Fallback handler

## Example Scripts

### Simple Help Desk NPC (601.lua)

```lua
function on_talk()
    npc:Say("Hello, " .. player:GetName() .. "! Welcome to the Help Desk.")
    npc:Say("How can I assist you today?")
    
    npc:AddOption("Check my stats", 1)
    npc:AddOption("Get free items", 2)
    npc:AddOption("Nothing, thanks", 3)
    
    npc:Finish()
end

function on_option_1()
    npc:Say("You are level " .. player:GetLevel())
    npc:Say("You have " .. player:GetMoney() .. " silver.")
    npc:Finish()
end

function on_option_2()
    if player:GetLevel() >= 10 then
        if player:AddItem(1001, 5) then
            npc:Say("I gave you 5 healing potions!")
        end
    else
        npc:Say("You need to be level 10 or higher!")
    end
    npc:Finish()
end

function on_option_3()
    npc:Say("Goodbye!")
    npc:Finish()
end
```

### Shop NPC (602.lua)

```lua
function on_talk()
    npc:Say("Welcome to my shop!")
    npc:Say("You have " .. player:GetMoney() .. " silver.")
    
    npc:AddOption("Buy items", 1)
    npc:AddOption("Sell items", 2)
    npc:AddOption("Leave", 3)
    
    npc:Finish()
end

function on_option_1()
    npc:Say("What would you like to buy?")
    
    npc:AddOption("Healing Potion (100 silver)", 10)
    npc:AddOption("Mana Potion (150 silver)", 11)
    npc:AddOption("Back", 0)
    
    npc:Finish()
end

function on_option_10()
    if player:GetMoney() >= 100 then
        if player:RemoveMoney(100) then
            if player:AddItem(1001, 1) then
                npc:Say("Here's your healing potion!")
            else
                npc:Say("Your inventory is full!")
                player:AddMoney(100) -- Refund
            end
        end
    else
        npc:Say("You don't have enough money!")
    end
    npc:Finish()
end

function on_option_0()
    on_talk() -- Go back to main menu
end
```

## Integration with Existing System

The Lua scripting system integrates seamlessly with the existing C# NPC system:

1. **Priority**: C# attribute-based handlers take priority over Lua scripts
2. **Fallback**: If no C# handler exists, the system tries Lua scripts
3. **Compatibility**: Existing NPCs continue to work unchanged

## Debugging

- Check server logs for script loading and execution errors
- Use `print()` function in Lua scripts for debugging
- Scripts are automatically reloaded when files are modified

## Best Practices

1. **Always call `npc:Finish()`** at the end of dialog functions
2. **Check return values** for item/money operations
3. **Validate player input** before processing
4. **Use meaningful option IDs** for better organization
5. **Handle edge cases** like full inventory, insufficient money, etc.
6. **Keep scripts organized** with clear function names

## Troubleshooting

### Common Issues

1. **Script not loading**: Check filename matches NPC ID exactly
2. **Functions not called**: Ensure function names follow convention
3. **Dialog not finishing**: Always call `npc:Finish()`
4. **Items not working**: Check item IDs exist in database

### Error Messages

- "Script for NPC X not found": No Lua file exists for that NPC ID
- "No handler function found": Missing required functions in script
- "Error executing script": Check Lua syntax and function calls

## Future Enhancements

- Quest system integration
- Database access functions
- Guild system integration
- Advanced dialog features
- Script debugging tools