# Nyx Server - COMPLETE Implementation Plan v2.0

**Date:** 2026-06-27  
**Scope:** Full project modernization with .NET built-in replacements and proper packet handling

---

## Table of Contents

1. [Custom Classes to Replace with .NET Built-ins](#1-custom-classes-to-replace-with-net-built-ins)
2. [Critical Hotfixes](#2-critical-hotfixes)
3. [Threading System Overhaul](#3-threading-system-overhaul)
4. [Network System Fix](#4-network-system-fix)
5. [Database Consolidation](#5-database-consolidation)
6. [Advanced Packet System with Full Validation](#6-advanced-packet-system-with-full-validation)
7. [Code Design Cleanup](#7-code-design-cleanup)

---

## 1. Custom Classes to Replace with .NET Built-ins

### 1.1 Time32 → DateTime/Stopwatch/TimeProvider

**Current Problem:** Custom `Time32` struct uses P/Invoke to `winmm.dll` (Windows-only!), not portable.

```csharp
// CURRENT: Windows-only, 32-bit overflow risk
[DllImport("winmm.dll")]
public static extern Time32 timeGetTime();
```

**Replace with:** Built-in `DateTime.UtcNow` or `Stopwatch.GetTimestamp()` or .NET 8+ `TimeProvider`

```csharp
// NEW: Cross-platform, no P/Invoke
public static class GameTime
{
    private static readonly Stopwatch _stopwatch = Stopwatch.StartNew();
    
    /// <summary>
    /// Milliseconds since server start (monotonic, no overflow for ~24 days in int32)
    /// For longer periods, use GetTimestamp() which returns long
    /// </summary>
    public static int Now => (int)(_stopwatch.ElapsedMilliseconds & 0x7FFFFFFF);
    
    /// <summary>
    /// Milliseconds since server start (no overflow)
    /// </summary>
    public static long GetTimestamp() => _stopwatch.ElapsedMilliseconds;
    
    public static int Seconds(int count) => count * 1000;
    public static int Minutes(int count) => count * 60000;
}
```

**Migration:** Search/replace `Time32.Now` → `GameTime.Now`, `.AddSeconds()` → direct arithmetic.

---

### 1.2 FastRandom → Random.Shared (.NET 6+)

**Current Problem:** Custom `FastRandom` with `lock` on every call - actually SLOWER than built-in.

```csharp
// CURRENT: Lock contention on every call
public int Next(int upperBound)
{
    lock (this.object_0) { ... }
}
```

**Replace with:** `Random.Shared` (thread-safe, lock-free in .NET 6+)

```csharp
// NEW: Thread-safe, no locks, uses thread-local storage
Kernel.Random.Next(0, 100)  →  Random.Shared.Next(0, 100)
```

**Also replace** `Common.ThreadSafeRandom` and `Albetros.Core.Common.ThreadSafeRandom` - all redundant now.

---

### 1.3 Writer/SafeWriter → BinaryPrimitives + Span<byte>

**Current Problem:** Two parallel writer classes (one unsafe, one safe) with static methods.

```csharp
// CURRENT: Unsafe, no bounds checking
public static void Write(uint arg, int offset, byte[] buffer)
{
    unsafe { fixed (byte* Buffer = buffer) { *((uint*)(Buffer + offset)) = arg; } }
}
```

**Replace with:** `BinaryPrimitives` (built-in, safe, fast)

```csharp
// NEW: Safe, fast, built-in
BinaryPrimitives.WriteUInt32LittleEndian(buffer.AsSpan(offset), value);
BinaryPrimitives.ReadUInt32LittleEndian(buffer.AsSpan(offset));
```

**Create helper if needed:**
```csharp
public static class PacketBuffer
{
    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public static void WriteUInt16(Span<byte> buffer, int offset, ushort value)
        => BinaryPrimitives.WriteUInt16LittleEndian(buffer.Slice(offset), value);
    
    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public static void WriteUInt32(Span<byte> buffer, int offset, uint value)
        => BinaryPrimitives.WriteUInt32LittleEndian(buffer.Slice(offset), value);
    
    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public static ushort ReadUInt16(ReadOnlySpan<byte> buffer, int offset)
        => BinaryPrimitives.ReadUInt16LittleEndian(buffer.Slice(offset));
    
    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public static uint ReadUInt32(ReadOnlySpan<byte> buffer, int offset)
        => BinaryPrimitives.ReadUInt32LittleEndian(buffer.Slice(offset));
    
    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public static void WriteString(Span<byte> buffer, int offset, string value, int fixedLength)
    {
        var bytes = Encoding.ASCII.GetBytes(value ?? "", 0, Math.Min(value?.Length ?? 0, fixedLength));
        bytes.CopyTo(buffer.Slice(offset));
        if (bytes.Length < fixedLength)
            buffer.Slice(offset + bytes.Length, fixedLength - bytes.Length).Clear();
    }
}
```

---

### 1.4 Counter → Interlocked.Increment or AtomicInt32

**Current Problem:** Non-thread-safe counter.

```csharp
// CURRENT: Not thread-safe
public uint Next { get { Now++; ... } }
```

**Replace with:** `Interlocked.Increment` or .NET 9's `AtomicInt32`

```csharp
// NEW: Thread-safe
private int _counter;
public int Next() => Interlocked.Increment(ref _counter);
```

---

### 1.5 SafeDictionary → ConcurrentDictionary

**Already covered in Phase 1.** Drop-in replacement wrapper.

---

### 1.6 GenericActionList → Channel<T> or ConcurrentQueue<T>

**Current Problem:** Custom action queue with unclear threading semantics.

**Replace with:** `Channel<T>` for producer-consumer, `ConcurrentQueue<T>` for simple cases.

---

### 1.7 RedBlackTree → SortedDictionary or SortedList

**Current Problem:** Custom implementation likely has bugs.

**Replace with:** Built-in `SortedDictionary<TKey, TValue>` or `FrozenDictionary` (.NET 8+) for read-heavy.

---

### 1.8 IniFiles → IConfiguration (Microsoft.Extensions.Configuration)

**Current Problem:** Custom INI parser.

**Replace with:** Built-in configuration system.

```csharp
// NEW: Built-in configuration
var config = new ConfigurationBuilder()
    .AddIniFile("settings.ini")
    .AddJsonFile("appsettings.json")
    .AddEnvironmentVariables()
    .Build();
```

---

### 1.9 BinaryWriter (System/BinaryWriter.cs) → MemoryStream + BinaryPrimitives

**Current Problem:** Custom BinaryWriter wrapper.

**Replace with:** Standard `BinaryWriter` or `ArrayBufferWriter<byte>`.

---

### 1.10 PacketFilter → Token Bucket or Sliding Window

**Current Problem:** Custom rate limiter with `lock`.

**Replace with:** `System.Threading.RateLimiting` (.NET 7+)

```csharp
// NEW: Built-in rate limiting
using System.Threading.RateLimiting;

var limiter = new TokenBucketRateLimiter(new TokenBucketRateLimiterOptions
{
    TokenLimit = 100,
    ReplenishmentPeriod = TimeSpan.FromSeconds(1),
    TokensPerPeriod = 100,
    QueueProcessingOrder = QueueProcessingOrder.OldestFirst,
    AutoReplenishment = true
});
```

---

## 2. Critical Hotfixes

### Day 1: Fix Recursive Disconnect

**File:** `src/Nyx.Network/GameSession.cs`

```csharp
private int _disconnectCalled;

public void Disconnect()
{
    if (Interlocked.Exchange(ref _disconnectCalled, 1) == 1)
        return;
    
    Alive = false;
    
    try
    {
        if (Socket?.Connected == true)
        {
            try { Socket.Shutdown(SocketShutdown.Both); }
            catch { }
        }
        Socket?.Dispose();
    }
    catch { }
    finally
    {
        Connector = null;
        Cryptography?.Dispose();
        Cryptography = null;
    }
}
```

### Day 2: Fix Session Memory Leak

**File:** `src/Nyx.Network/NetworkService.cs`

Add proper session tracking with cleanup in `finally` block.

### Day 3: Fix SafeDictionary

Replace internals with `ConcurrentDictionary`.

---

## 3. Threading System Overhaul

### Day 4-5: Fully Async ThreadContainer

Replace `WorkerLoop` with `WorkerLoopAsync` using `ReadAllAsync()`.

### Day 6-7: Fix Timer Scheduler

Replace `Thread.Sleep(1)` with `PeriodicTimer`.

### Day 8-9: Fix TaskPool

Don't dispose before returning to pool.

### Day 10: Replace TimerRule with Built-in

**Current:** Custom `TimerRule<T>` class with manual thread management.

**Replace with:** `PeriodicTimer` or `System.Threading.Timer`

```csharp
// NEW: Using PeriodicTimer
public sealed class GameTimer : IDisposable
{
    private readonly CancellationTokenSource _cts = new();
    private Task _loopTask;
    
    public GameTimer(Action<int> callback, int periodMs)
    {
        _loopTask = Task.Run(async () =>
        {
            using var timer = new PeriodicTimer(TimeSpan.FromMilliseconds(periodMs));
            while (await timer.WaitForNextTickAsync(_cts.Token))
            {
                callback(Environment.TickCount);
            }
        });
    }
    
    public void Dispose()
    {
        _cts.Cancel();
        _cts.Dispose();
    }
}
```

---

## 4. Network System Fix

### Day 11-12: Fix GameSession

- Remove recursive disconnect
- Add proper error handling for socket operations
- Use `ValueTask` for send operations

### Day 13-14: Add Backpressure

Convert `PacketChannel` from unbounded to bounded.

### Day 15-17: Fix GameClient.Send

Remove double buffer allocation.

---

## 5. Database Consolidation

### Day 18-20: Remove NyxSqlCommand

Replace all with Dapper parameterized queries.

### Day 21-24: Fix Connection Pooling

Remove manual pool, use MySqlConnector only.

### Day 25-28: Migrate File Storage

Create database tables for file-based storage.

---

## 6. Advanced Packet System with Full Validation

This is the biggest section. The current system has packets that need:
1. **Structural validation** - Is the packet well-formed?
2. **State validation** - Is the player in the right state to send this?
3. **Data validation** - Are the values within valid ranges?
4. **Cross-validation** - Does this conflict with other game state?
5. **Processing** - Execute the actual game logic

### 6.1 Packet Processing Pipeline

```
Client → Receive → Decrypt → Frame → Validate Structure → Route → Validate State → Process → Response
```

### 6.2 New Architecture

```
src/Nyx.Network/Packets/
├── Core/
│   ├── PacketReader.cs          # Span-based reader (replaces all others)
│   ├── PacketWriter.cs          # Span-based writer (replaces all others)
│   ├── PacketValidator.cs       # Structural validation
│   └── PacketRouter.cs          # Central routing
├── Pipeline/
│   ├── IPacketPipeline.cs       # Pipeline interface
│   ├── PacketContext.cs         # Processing context
│   └── PacketMiddleware.cs      # Middleware chain
├── Handlers/
│   ├── MsgLoginHandler.cs
│   ├── MsgWalkHandler.cs
│   ├── MsgAttackHandler.cs
│   └── ... (one file per packet type)
└── Validation/
    ├── IValidator.cs            # Validator interface
    ├── PlayerStateValidator.cs  # Check player state
    └── DataRangeValidator.cs    # Check value ranges
```

### 6.3 PacketContext - Everything a Handler Needs

```csharp
/// <summary>
/// Complete context for packet processing.
/// Contains everything needed to validate and process a packet.
/// </summary>
public sealed class PacketContext
{
    // Raw data
    public byte[] RawData { get; init; }
    public ushort PacketId { get; init; }
    public ushort PacketType { get; init; }
    public ushort PacketOffset { get; init; }
    
    // Client info
    public GameClient Client { get; init; }
    public GameSession Session { get; init; }
    public string IPAddress { get; init; }
    
    // Player state (fetched once, used by validators)
    public Entity PlayerEntity => Client?.Entity;
    public Map CurrentMap => Client?.Map;
    public bool IsAlive => PlayerEntity?.Dead == false;
    public bool IsLoggedIn => Client?.LoggedIn == true;
    public bool IsInCombat => PlayerEntity?.ContainsFlag(Update.Flags.FlashingName) == true;
    public bool IsInTrade => Client?.Trade != null;
    public bool IsInArena => Client?.QualifierGroup != null;
    public bool IsInTeam => Client?.Team != null;
    public bool HasGuild => Client?.Guild != null;
    
    // Timing
    public DateTime ReceivedAt { get; init; } = DateTime.UtcNow;
    public int TickCount { get; init; } = Environment.TickCount;
    
    // Metrics
    public Stopwatch ProcessingTimer { get; } = Stopwatch.StartNew();
    
    // Cancellation
    public CancellationToken CancellationToken { get; init; }
    
    // Helper methods
    public void Disconnect(string reason)
    {
        LoggingService.SecurityEvent("PacketDisconnect", reason, IPAddress);
        Client.Disconnect();
    }
    
    public void LogWarning(string message)
    {
        LoggingService.SystemWarning("PacketHandler", 
            $"[{PacketId}] {PlayerEntity?.Name ?? "Unknown"}: {message}");
    }
    
    public void LogError(string message, Exception ex = null)
    {
        LoggingService.SystemError("PacketHandler", 
            $"[{PacketId}] {PlayerEntity?.Name ?? "Unknown"}: {message}", ex);
    }
}
```

### 6.4 Packet Middleware Pipeline

```csharp
/// <summary>
/// Middleware pipeline for packet processing.
/// Each middleware can validate, transform, or short-circuit.
/// </summary>
public interface IPacketMiddleware
{
    ValueTask<bool> ProcessAsync(PacketContext context, Func<PacketContext, ValueTask<bool>> next);
}

/// <summary>
/// Seal validation middleware - runs first
/// </summary>
public sealed class SealValidationMiddleware : IPacketMiddleware
{
    private static readonly ulong ClientSeal = 
        BitConverter.ToUInt64(Encoding.Default.GetBytes("TQClient"));
    
    public ValueTask<bool> ProcessAsync(PacketContext context, Func<PacketContext, ValueTask<bool>> next)
    {
        var data = context.RawData;
        var length = BitConverter.ToUInt16(data, 0);
        
        // Validate seal at end of packet
        if (data.Length >= 8)
        {
            var seal = BitConverter.ToUInt64(data, data.Length - 8);
            if (seal != ClientSeal)
            {
                context.LogWarning("Invalid seal");
                context.Disconnect("Invalid packet seal");
                return new ValueTask<bool>(false);
            }
        }
        
        return next(context);
    }
}

/// <summary>
/// Rate limiting middleware
/// </summary>
public sealed class RateLimitMiddleware : IPacketMiddleware
{
    private readonly ConcurrentDictionary<string, RateLimitBucket> _buckets = new();
    
    public ValueTask<bool> ProcessAsync(PacketContext context, Func<PacketContext, ValueTask<bool>> next)
    {
        var bucket = _buckets.GetOrAdd(context.IPAddress, _ => new RateLimitBucket());
        
        if (!bucket.TryConsume())
        {
            context.LogWarning($"Rate limited: {context.PacketId}");
            return new ValueTask<bool>(false);
        }
        
        return next(context);
    }
}

/// <summary>
/// Player state validation middleware
/// </summary>
public sealed class PlayerStateMiddleware : IPacketMiddleware
{
    // Packets that don't require login
    private static readonly HashSet<ushort> PreLoginPackets = new()
    {
        1052, // MsgConnect
        1001, // MsgRegister
    };
    
    // Packets that don't require alive player
    private static readonly HashSet<ushort> DeadAllowedPackets = new()
    {
        1004, // MsgTalk (can chat while dead)
        10010, // MsgAction
    };
    
    public ValueTask<bool> ProcessAsync(PacketContext context, Func<PacketContext, ValueTask<bool>> next)
    {
        // Pre-login packets bypass state checks
        if (PreLoginPackets.Contains(context.PacketId))
            return next(context);
        
        // Must be logged in
        if (!context.IsLoggedIn)
        {
            context.LogWarning("Not logged in");
            context.Disconnect("Packet before login");
            return new ValueTask<bool>(false);
        }
        
        // Most packets require alive player
        if (!context.IsAlive && !DeadAllowedPackets.Contains(context.PacketId))
        {
            context.LogWarning("Dead player sent packet");
            return new ValueTask<bool>(false);
        }
        
        return next(context);
    }
}

/// <summary>
/// Packet filter middleware (existing PacketFilter logic)
/// </summary>
public sealed class PacketFilterMiddleware : IPacketMiddleware
{
    public ValueTask<bool> ProcessAsync(PacketContext context, Func<PacketContext, ValueTask<bool>> next)
    {
        if (context.Client?.Filtering == true)
        {
            if (context.Client.PacketFilter.Filter(context.PacketId))
            {
                context.LogWarning($"Filtered: {context.PacketId}");
                return new ValueTask<bool>(false);
            }
        }
        
        return next(context);
    }
}
```

### 6.5 Packet Handler Interface with Validation

```csharp
/// <summary>
/// Base interface for all packet handlers.
/// Handlers are responsible for both validation AND processing.
/// </summary>
public interface IPacketHandler
{
    /// <summary>
    /// The packet ID this handler processes
    /// </summary>
    ushort PacketId { get; }
    
    /// <summary>
    /// Validate and process the packet.
    /// Returns true if the packet was handled.
    /// </summary>
    ValueTask<bool> HandleAsync(PacketContext context);
}

/// <summary>
/// Base class with common validation helpers
/// </summary>
public abstract class PacketHandlerBase : IPacketHandler
{
    public abstract ushort PacketId { get; }
    
    public abstract ValueTask<bool> HandleAsync(PacketContext context);
    
    /// <summary>
    /// Validate target entity exists and is accessible
    /// </summary>
    protected bool ValidateTarget(PacketContext context, uint targetId, out GameClient target)
    {
        target = null;
        
        if (!Kernel.GamePool.TryGetValue(targetId, out target))
        {
            context.LogWarning($"Target {targetId} not found");
            return false;
        }
        
        if (target.Entity == null || !target.Socket.Alive)
        {
            context.LogWarning($"Target {targetId} invalid state");
            return false;
        }
        
        return true;
    }
    
    /// <summary>
    /// Validate distance between entities
    /// </summary>
    protected bool ValidateDistance(PacketContext context, uint targetId, int maxDistance)
    {
        if (!ValidateTarget(context, targetId, out var target))
            return false;
        
        var distance = Kernel.GetDistance(
            context.PlayerEntity.X, context.PlayerEntity.Y,
            target.Entity.X, target.Entity.Y);
        
        if (distance > maxDistance)
        {
            context.LogWarning($"Target too far: {distance} > {maxDistance}");
            return false;
        }
        
        return true;
    }
    
    /// <summary>
    /// Validate player has required item
    /// </summary>
    protected bool ValidateItem(PacketContext context, uint itemId, ushort count = 1)
    {
        if (!context.Client.Inventory.Contains(itemId, count))
        {
            context.LogWarning($"Missing item {itemId} x{count}");
            return false;
        }
        return true;
    }
    
    /// <summary>
    /// Validate player has enough currency
    /// </summary>
    protected bool ValidateCurrency(PacketContext context, uint amount, CurrencyType type = CurrencyType.Gold)
    {
        return type switch
        {
            CurrencyType.Gold => context.PlayerEntity.Money >= amount,
            CurrencyType.ConquerPoints => context.PlayerEntity.ConquerPoints >= amount,
            _ => false
        };
    }
    
    /// <summary>
    /// Validate cooldown hasn't expired
    /// </summary>
    protected bool ValidateCooldown(PacketContext context, DateTime lastUse, TimeSpan cooldown)
    {
        if (DateTime.UtcNow - lastUse < cooldown)
        {
            context.LogWarning("Action on cooldown");
            return false;
        }
        return true;
    }
    
    /// <summary>
    /// Validate map allows this action
    /// </summary>
    protected bool ValidateMap(PacketContext context, params ushort[] allowedMaps)
    {
        if (!allowedMaps.Contains(context.PlayerEntity.MapID))
        {
            context.LogWarning($"Wrong map: {context.PlayerEntity.MapID}");
            return false;
        }
        return true;
    }
    
    /// <summary>
    /// Validate PK mode
    /// </summary>
    protected bool ValidatePKMode(PacketContext context, params Enums.PKMode[] allowedModes)
    {
        if (!allowedModes.Contains(context.PlayerEntity.PKMode))
        {
            context.LogWarning($"Wrong PK mode: {context.PlayerEntity.PKMode}");
            return false;
        }
        return true;
    }
}
```

### 6.6 Example: Complete Attack Handler with Full Validation

```csharp
/// <summary>
/// Handles attack packets (Packet ID: 1022)
/// Includes full validation of combat state, targets, ranges, etc.
/// </summary>
[PacketHandler(1022)]
public sealed class MsgAttackHandler : PacketHandlerBase
{
    public override ushort PacketId => 1022;
    
    // Allowed attack types
    private static readonly HashSet<byte> ValidAttackTypes = new()
    {
        1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15,
        21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35,
        46, 47, 48, 49 // Interactions
    };
    
    public override async ValueTask<bool> HandleAsync(PacketContext context)
    {
        var data = context.RawData;
        var entity = context.PlayerEntity;
        
        // === STRUCTURAL VALIDATION ===
        if (data.Length < 20)
        {
            context.LogWarning("Attack packet too small");
            return false;
        }
        
        // Parse packet
        var reader = new PacketSpanReader(data.AsSpan(8));
        var attackType = reader.ReadByte();
        var attackId = reader.ReadUInt32();
        var targetId = reader.ReadUInt32();
        var x = reader.ReadUInt16();
        var y = reader.ReadUInt16();
        
        // === DATA VALIDATION ===
        if (!ValidAttackTypes.Contains(attackType))
        {
            context.LogWarning($"Invalid attack type: {attackType}");
            return false;
        }
        
        // Validate coordinates are on map
        if (context.CurrentMap != null)
        {
            if (!context.CurrentMap.Floor[x, y, MapObjectType.Player])
            {
                context.LogWarning($"Invalid coordinates: {x},{y}");
                return false;
            }
        }
        
        // === STATE VALIDATION ===
        
        // Player must be alive
        if (entity.Dead)
        {
            context.LogWarning("Dead player attacking");
            return false;
        }
        
        // Player must not be in safe zone (unless in arena)
        if (entity.ContainsFlag(Update.Flags.Flashy) && context.IsInArena == false)
        {
            context.LogWarning("Attacking in safe zone");
            return false;
        }
        
        // Player must not be stunned/frozen
        if (entity.ContainsFlag(Update.Flags.Freeze) || 
            entity.ContainsFlag(Update.Flags.FreezeSmall))
        {
            context.LogWarning("Attacking while CC'd");
            return false;
        }
        
        // === TARGET VALIDATION ===
        
        // Validate target exists
        if (!ValidateTarget(context, targetId, out var target))
            return false;
        
        // Validate target is on same map
        if (target.Entity.MapID != entity.MapID)
        {
            context.LogWarning("Target on different map");
            return false;
        }
        
        // Validate distance (max attack range)
        var maxRange = entity.GetAttackRange();
        if (!ValidateDistance(context, targetId, maxRange))
            return false;
        
        // Validate can attack this target
        if (!CanAttackTarget(context, target))
            return false;
        
        // === RATE LIMITING ===
        var now = context.TickCount;
        if (now - entity.Owner.LastAttack < 500) // 500ms cooldown
        {
            context.LogWarning("Attack too fast");
            return false;
        }
        entity.Owner.LastAttack = now;
        
        // === PROCESS ATTACK ===
        try
        {
            // Create attack packet for processing
            var attack = new Attack(true)
            {
                Attacker = entity.UID,
                Attacked = targetId,
                AttackType = attackType,
                X = x,
                Y = y
            };
            
            // Delegate to combat system
            var handler = new Handle(attack, entity, target.Entity);
            
            return true;
        }
        catch (Exception ex)
        {
            context.LogError("Error processing attack", ex);
            return false;
        }
    }
    
    private bool CanAttackTarget(PacketContext context, GameClient target)
    {
        var entity = context.PlayerEntity;
        var targetEntity = target.Entity;
        
        // Can't attack self
        if (entity.UID == targetEntity.UID)
            return false;
        
        // Check if target is attackable
        if (!targetEntity.Dead)
        {
            // Check PK mode
            if (entity.PKMode == Enums.PKMode.Capture)
            {
                // Can attack anyone in capture mode
                return true;
            }
            else if (entity.PKMode == Enums.PKMode.Peace)
            {
                // Can only attack monsters in peace mode
                if (targetEntity.EntityFlag == EntityFlag.Player)
                {
                    // Unless they're in the same team
                    if (context.IsInTeam && context.Client.Team.Teammates.Contains(target))
                        return false;
                    
                    context.LogWarning("Peace mode can't attack players");
                    return false;
                }
            }
            else if (entity.PKMode == Enums.PKMode.Team)
            {
                // Can't attack teammates
                if (context.IsInTeam && context.Client.Team.Teammates.Contains(target))
                    return false;
            }
            else if (entity.PKMode == Enums.PKMode.Guild)
            {
                // Can't attack guildmates
                if (context.HasGuild && context.Client.Guild == target.Guild)
                    return false;
            }
            
            // Check if in safe zone
            if (targetEntity.ContainsFlag(Update.Flags.Flashy))
            {
                context.LogWarning("Target in safe zone");
                return false;
            }
            
            // Check if target is VIP protected
            if (targetEntity.VIPLevel > 0 && targetEntity.VIPLevel > entity.VIPLevel)
            {
                // Higher VIP can't be attacked by lower VIP
                // (This is game-specific logic)
            }
        }
        
        return true;
    }
}
```

### 6.7 Example: Walk Handler with Validation

```csharp
/// <summary>
/// Handles walk/movement packets (Packet ID: 10005)
/// </summary>
[PacketHandler(10005)]
public sealed class MsgWalkHandler : PacketHandlerBase
{
    public override ushort PacketId => 10005;
    
    public override async ValueTask<bool> HandleAsync(PacketContext context)
    {
        var data = context.RawData;
        var entity = context.PlayerEntity;
        
        // === STRUCTURAL VALIDATION ===
        if (data.Length < 12)
        {
            context.LogWarning("Walk packet too small");
            return false;
        }
        
        // Parse
        var reader = new PacketSpanReader(data.AsSpan(8));
        var x = reader.ReadUInt16();
        var y = reader.ReadUInt16();
        var direction = reader.ReadByte();
        var walkType = reader.ReadByte();
        
        // === DATA VALIDATION ===
        
        // Validate direction
        if (direction > 7)
        {
            context.LogWarning($"Invalid direction: {direction}");
            return false;
        }
        
        // Validate walk type
        if (walkType > 9)
        {
            context.LogWarning($"Invalid walk type: {walkType}");
            return false;
        }
        
        // Validate coordinates are on map
        if (context.CurrentMap == null)
        {
            context.LogWarning("No current map");
            return false;
        }
        
        if (!context.CurrentMap.Floor[x, y, MapObjectType.Player])
        {
            context.LogWarning($"Invalid walk destination: {x},{y}");
            return false;
        }
        
        // === STATE VALIDATION ===
        
        // Can't walk while dead
        if (entity.Dead)
        {
            context.LogWarning("Dead player walking");
            return false;
        }
        
        // Can't walk while frozen
        if (entity.ContainsFlag(Update.Flags.Freeze) || 
            entity.ContainsFlag(Update.Flags.FreezeSmall))
        {
            context.LogWarning("Walking while frozen");
            return false;
        }
        
        // Can't walk while in trade
        if (context.IsInTrade)
        {
            context.LogWarning("Walking while trading");
            return false;
        }
        
        // Validate distance (anti-cheat)
        var distance = Kernel.GetDistance(entity.X, entity.Y, x, y);
        var maxDistance = walkType == 9 ? 18 : 1; // Jump vs walk
        
        if (distance > maxDistance + 2) // Small tolerance for lag
        {
            context.LogWarning($"Walk distance too large: {distance} (max: {maxDistance})");
            // Don't disconnect - could be lag
            // But flag for monitoring
            entity.Owner.speedHackSuspiction++;
            if (entity.Owner.speedHackSuspiction > 10)
            {
                context.Disconnect("Speed hack detected");
                return false;
            }
        }
        
        // === SPEED VALIDATION ===
        var now = context.TickCount;
        var timeSinceLastMove = now - entity.Owner.LastMove;
        var minMoveInterval = 100; // Minimum ms between moves
        
        if (timeSinceLastMove < minMoveInterval && walkType != 9)
        {
            entity.Owner.speedHackSuspiction++;
            if (entity.Owner.speedHackSuspiction > 5)
            {
                context.LogWarning("Moving too fast");
            }
        }
        entity.Owner.LastMove = now;
        
        // === PROCESS MOVEMENT ===
        
        // Update position
        entity.X = x;
        entity.Y = y;
        entity.Facing = (Enums.ConquerAngle)direction;
        
        // Broadcast to screen
        var movement = new TwoMovements()
        {
            EntityCount = 1,
            Facing = entity.Facing,
            FirstEntity = entity.UID,
            WalkType = walkType,
            X = x,
            Y = y,
            MovementType = TwoMovements.Walk
        };
        
        context.Client.SendScreen(movement, true);
        
        // Update screen objects
        context.Client.Screen.Update(x, y);
        
        return true;
    }
}
```

### 6.8 Packet Router with Pipeline

```csharp
/// <summary>
/// Central packet router with middleware pipeline.
/// Replaces the 25,000-line switch statement.
/// </summary>
public sealed class PacketRouter : IDisposable
{
    private readonly ILogger<PacketRouter> _logger;
    private readonly Dictionary<ushort, IPacketHandler> _handlers = new();
    private readonly List<IPacketMiddleware> _middleware = new();
    private readonly PacketPerformanceTracker _perfTracker = new();
    
    public PacketRouter(ILogger<PacketRouter> logger)
    {
        _logger = logger;
    }
    
    /// <summary>
    /// Initialize with default middleware and auto-discovered handlers.
    /// </summary>
    public void Initialize()
    {
        // Add middleware in order
        _middleware.Add(new SealValidationMiddleware());
        _middleware.Add(new RateLimitMiddleware());
        _middleware.Add(new PacketFilterMiddleware());
        _middleware.Add(new PlayerStateMiddleware());
        
        // Auto-discover handlers
        foreach (var assembly in AppDomain.CurrentDomain.GetAssemblies())
        {
            foreach (var type in assembly.GetTypes())
            {
                var attr = type.GetCustomAttribute<PacketHandlerAttribute>();
                if (attr != null && typeof(IPacketHandler).IsAssignableFrom(type))
                {
                    var handler = (IPacketHandler)Activator.CreateInstance(type);
                    _handlers[attr.PacketId] = handler;
                    _logger.LogDebug("Registered handler {Type} for packet {Id}", 
                        type.Name, attr.PacketId);
                }
            }
        }
        
        _logger.LogInformation("PacketRouter initialized: {Count} handlers, {Middleware} middleware",
            _handlers.Count, _middleware.Count);
    }
    
    /// <summary>
    /// Route a packet through middleware pipeline to handler.
    /// </summary>
    public async ValueTask<bool> RouteAsync(GameClient client, byte[] packet)
    {
        if (packet == null || packet.Length < 4)
            return false;
        
        var packetId = BitConverter.ToUInt16(packet, 2);
        
        // Build context
        var context = new PacketContext
        {
            RawData = packet,
            PacketId = packetId,
            Client = client,
            Session = client.Session,
            IPAddress = client.IP,
            CancellationToken = CancellationToken.None
        };
        
        // Run through middleware pipeline
        var pipeline = BuildPipeline(packetId);
        
        try
        {
            var handled = await pipeline(context);
            
            // Track performance
            context.ProcessingTimer.Stop();
            _perfTracker.Track(packetId, context.ProcessingTimer.Elapsed);
            
            return handled;
        }
        catch (Exception ex)
        {
            context.LogError("Unhandled error in packet pipeline", ex);
            return true; // We attempted to handle it
        }
    }
    
    /// <summary>
    /// Build the middleware pipeline for a specific packet.
    /// </summary>
    private Func<PacketContext, ValueTask<bool>> BuildPipeline(ushort packetId)
    {
        // Start with the actual handler
        Func<PacketContext, ValueTask<bool>> pipeline = async context =>
        {
            if (_handlers.TryGetValue(packetId, out var handler))
            {
                return await handler.HandleAsync(context);
            }
            
            _logger.LogWarning("No handler for packet {Id}", packetId);
            return false;
        };
        
        // Wrap with middleware (in reverse order so they execute in correct order)
        for (int i = _middleware.Count - 1; i >= 0; i--)
        {
            var middleware = _middleware[i];
            var next = pipeline;
            pipeline = context => middleware.ProcessAsync(context, next);
        }
        
        return pipeline;
    }
    
    public void Dispose()
    {
        // Cleanup
    }
}
```

---

## 7. Code Design Cleanup

### Day 51-55: Split GameClient

Current: 4,600 lines. Split into focused classes.

### Day 56-60: Fix Naming

- `GuildDoantion` → `GuildDonation`
- `Configrations` → `Configurations`
- `Threding` → `Threading`
- `PorocesCheck` → `ProcessCheck`

### Day 61-65: Global Error Handling

Add try/catch at all entry points.

---

## Summary: Classes Replaced

| Old Custom Class | .NET Replacement | Location |
|-----------------|------------------|----------|
| `Time32` | `Stopwatch` + helper | `GameTime.cs` |
| `FastRandom` | `Random.Shared` | Direct replacement |
| `Writer` | `BinaryPrimitives` | `PacketBuffer.cs` |
| `SafeWriter` | `BinaryPrimitives` | `PacketBuffer.cs` |
| `SafeDictionary` | Wrapper on `ConcurrentDictionary` | Keep wrapper |
| `Counter` | `Interlocked.Increment` | Direct replacement |
| `TimerRule` | `PeriodicTimer` | `GameTimer.cs` |
| `IniFiles` | `IConfiguration` | Built-in |
| `RedBlackTree` | `SortedDictionary` | Direct replacement |
| `PacketFilter` | `System.Threading.RateLimiting` | .NET 7+ |
| `ThreadSafeRandom` | `Random.Shared` | Direct replacement |
| `BinaryWriter` (custom) | `BinaryWriter` / `ArrayBufferWriter` | Built-in |

## Summary: Packet System Architecture

| Component | Purpose | Replaces |
|-----------|---------|----------|
| `PacketContext` | Full context for processing | Manual parameter passing |
| `IPacketMiddleware` | Validation pipeline | Inline validation |
| `SealValidationMiddleware` | Seal checking | Per-handler checks |
| `RateLimitMiddleware` | Anti-flood | `PacketFilter` class |
| `PlayerStateMiddleware` | State validation | Inline if/else |
| `PacketHandlerBase` | Common validation methods | Duplicated code |
| `PacketRouter` | Central routing | 25K-line switch |
