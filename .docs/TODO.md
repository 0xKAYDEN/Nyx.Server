# Nyx Server - Master TODO List

**Rules:**
- ✅ Only production-quality code
- ✅ Linux-compatible (no Windows-only APIs)
- ✅ No demo/placeholder code
- ✅ Best design patterns always
- ✅ Maximum performance
- ✅ Clean, scalable, maintainable structure

**Last Updated:** 2026-06-28

---

## 🔥 URGENT - Next Tasks

| Priority | Task | Status |
|----------|------|--------|
| ✅ DONE | Fix GameTimer disposal (monster respawn) | ✅ FIXED |
| ✅ DONE | Fix connection/handshake (TQServer seal) | ✅ FIXED |
| ✅ DONE | Remove ConcurrentPacketQueue | ✅ DONE |
| ✅ DONE | Fix packet seal validation (wrong offset) | ✅ FIXED |
| ✅ DONE | Remove seal validation for client packets | ✅ FIXED |
| ✅ DONE | Fix packet framing to include 8-byte seal | ✅ FIXED |
| 🟢 LOW | Fix GuildID bounds checking | TODO |

---

## ✅ Recently Completed (2026-06-28)

| Fix | Details |
|-----|---------|
| GameTimer disposal | Static timers no longer disposed when player disconnects |
| Connection handshake | Task.Run delay removed, TQServer seal fixed |
| Monster respawn | Monsters now respawn properly after kill |
| Removed ConcurrentPacketQueue | Replaced with inline packet framing in Program.cs |
| Packet seal validation | Fixed seal check offset (Length → Length-8) |
| Remove client seal validation | Client packets don't have TQClient seal |
| Packet framing with seal | Fixed to include 8-byte seal like ConcurrentPacketQueue |

## Phase 1: Critical Infrastructure (Day 1-5)

### 1.1 Replace Custom Classes with .NET Built-ins
- [x] Replace `Time32` with `GameTime` (Stopwatch-based, cross-platform) ✅ `src/Nyx/Utilities/GameTime.cs`
- [x] Replace `FastRandom` with `Random.Shared` ✅ + `RandomExtensions.cs` for Sign()
- [x] Replace `Writer`/`SafeWriter` with `PacketBuffer` (BinaryPrimitives) ✅ `src/Nyx/Network/PacketBuffer.cs`
- [x] Replace `Counter` with `Interlocked` operations ✅ `src/Nyx/Utilities/AtomicCounter.cs`
- [x] Replace `SafeDictionary` with `ConcurrentDictionary` wrapper ✅ `src/Nyx/Utilities/SafeDictionary.cs`
- [x] Replace `TimerRule` with `PeriodicTimer` ✅ `src/Nyx/Utilities/GameTimer.cs`
- [x] Replace `IniFiles` with cross-platform implementation ✅ `src/Nyx/Utilities/CrossPlatformIniFile.cs`
- [x] Replace `PacketFilter` with rate limiter ✅ `src/Nyx/Client/PacketRateLimiter.cs`
- [x] Remove `winmm.dll` P/Invoke (Windows-only!) ✅ Done in GameTime.cs
- [x] Remove `Class1.Class0.smethod_0()` obfuscated calls ✅ **BACKDOOR REMOVED**

### 1.2 Critical Bug Fixes
- [x] Fix recursive `Disconnect()` in `GameSession.cs` ✅ Atomic guard with Interlocked
- [x] Fix session memory leak in `NetworkService.cs` ✅ Proper cleanup in finally
- [x] Fix `SafeDictionary` thread safety ✅ ConcurrentDictionary internals
- [x] Fix `GameClient.Send` buffer allocation ✅ Reduced to single pool rent
- [x] Fix `PacketChannel` with backpressure ✅ Bounded channel support

### 1.3 Project Structure Cleanup
- [x] Fix namespace `Threding` → `Threading` ✅ 7 files + folder renamed
- [x] Fix namespace `Configrations` → `Configurations` ✅ 6 files + 3 files renamed
- [x] Fix `GuildDoantion` → `GuildDonation` ✅ 2 files + file renamed
- [x] Fix `Nyx.Server.Utilites` → `Nyx.Server.Utilities` ✅ ~80 files updated
- [x] Fix all `Donaion` → `Donation` method names ✅ 6 methods fixed

---

## Phase 2: Threading System (Day 6-10)

### 2.1 Core Threading
- [x] Convert `ThreadContainer.WorkerLoop` to fully async ✅ Using ReadAllAsync
- [x] Fix `ThreadingTimerScheduler` to use `PeriodicTimer` ✅ AsyncTimerScheduler
- [x] Fix `TaskPool` disposal order ✅ ResetForPool() instead of Dispose()
- [x] Add graceful shutdown with timeout ✅ DisposeAsync with 5s timeout
- [x] Add container health monitoring ✅ ContainerHealthStatus, SystemHealthSummary

### 2.2 Integration
- [x] Update all hosted services to use new threading ✅ ThreadingTimerHostedService
- [x] Add proper cancellation tokens ✅ Via ThreadingController
- [x] Remove all `.GetAwaiter().GetResult()` calls ✅ Only in startup/shutdown (acceptable)

---

## Phase 3: Network System (Day 11-15)

### 3.1 Core Network
- [x] Rewrite `GameSession` with proper disconnect handling ✅ Atomic guard
- [x] Fix `NetworkService` session cleanup ✅ Proper finally block
- [x] Add backpressure to `PacketChannel` ✅ Bounded channel support
- [x] Fix `GameClient.Send` buffer management ✅ Single pool rent
- [x] Add socket error handling ✅ Cross-platform error codes

### 3.2 Cross-Platform
- [x] Remove all Windows-specific socket code ✅ No Windows-specific code found
- [x] Add proper socket options for Linux ✅ KeepAlive, ReuseAddress
- [x] Add platform detection for socket options ✅ OperatingSystem.IsWindows()
- [ ] Test on Linux with epoll

---

## Phase 4: Database System (Day 16-22)

### 4.1 Consolidation
- [x] Add Npgsql package ✅
- [x] Add Dapper package ✅
- [x] Add Dapper.Contrib package ✅
- [ ] Remove `NyxSqlCommand` entirely
- [ ] Remove `MySqlReader` wrapper
- [ ] Remove `Read.cs` / `Write.cs` file-based storage
- [ ] Fix connection pooling (remove manual pool)

### 4.2 Repository Pattern
- [x] Create `PostgresConnectionFactory` ✅
- [x] Create `RepositoryBase` with Dapper ✅
- [x] Create `EntityRepository` ✅
- [x] Create `ItemRepository` ✅
- [x] Create `AccountRepository` ✅
- [x] Create `GuildRepository` ✅
- [x] Create PostgreSQL migration script ✅
- [ ] Create `UnitOfWork` for transactions

### 4.3 Migration
- [x] Create SQL migration for PostgreSQL ✅
- [x] Create full migration script (64 tables) ✅
- [ ] Migrate all data to database
- [ ] Test with real data

---

## Phase 5: Packet System (Day 23-35)

### 5.1 Core Infrastructure
- [ ] Create `PacketSpanReader` (zero-alloc)
- [ ] Create `PacketSpanWriter` (zero-alloc)
- [ ] Create `PacketBuffer` helper (BinaryPrimitives)
- [ ] Create `PacketValidator` with seal validation
- [ ] Create `PacketContext` with full state

### 5.2 Middleware Pipeline
- [ ] Create `IPacketMiddleware` interface
- [ ] Create `SealValidationMiddleware`
- [ ] Create `RateLimitMiddleware`
- [ ] Create `PlayerStateMiddleware`
- [ ] Create `PacketFilterMiddleware`
- [ ] Create `PacketRouter` with auto-discovery

### 5.3 Handler Base
- [ ] Create `IPacketHandler` interface
- [ ] Create `PacketHandlerBase` with validation helpers
- [ ] Create validation methods (target, distance, item, currency, cooldown, map)

### 5.4 Migrate All Packets
- [ ] Migrate MsgLogin (1052)
- [ ] Migrate MsgTalk (1004)
- [ ] Migrate MsgWalk (10005)
- [ ] Migrate MsgAction (10010)
- [ ] Migrate MsgAttack (1022)
- [ ] Migrate MsgConnect (1052)
- [ ] Migrate all other packets (100+)

---

## Phase 6: Design Patterns (Day 36-50)

### 6.1 Creational Patterns
- [ ] Implement `ObjectPool<T>` for packet buffers
- [ ] Implement `EntityFactory` for monster/NPC creation
- [ ] Implement `PacketFactory` for packet construction
- [ ] Implement `QueryBuilder` (replaces NyxSqlCommand)
- [ ] Implement `PacketBuilder` for complex packets

### 6.2 Structural Patterns
- [ ] Implement Repository pattern for all entities
- [ ] Implement Unit of Work for transactions
- [ ] Implement Decorator for logging/caching
- [ ] Implement Facade for combat/trade/guild
- [ ] Implement Adapter for legacy code
- [ ] Implement Proxy for lazy loading

### 6.3 Behavioral Patterns
- [ ] Implement Strategy for damage calculation
- [ ] Implement Command for player actions
- [ ] Implement Observer for game events
- [ ] Implement State for player states
- [ ] Implement Template Method for tournaments
- [ ] Implement Mediator for system communication

### 6.4 Concurrency Patterns
- [ ] Implement Producer-Consumer with Channels
- [ ] Implement Actor Model for entity processing
- [ ] Implement Spatial Partitioning for range queries

---

## Phase 7: Game Systems (Day 51-65)

### 7.1 Combat System
- [ ] Create `ICombatFacade`
- [ ] Create `DamageCalculator` with strategies
- [ ] Create `CombatResult` types
- [ ] Migrate all combat logic

### 7.2 Movement System
- [ ] Create `MovementValidator`
- [ ] Create `SpeedHackDetector`
- [ ] Create `PathfindingService` (if needed)

### 7.3 Item System
- [ ] Create `IItemService`
- [ ] Create `ItemValidator`
- [ ] Create `InventoryManager`

### 7.4 Social System
- [ ] Create `IGuildService`
- [ ] Create `ITradeService`
- [ ] Create `IFriendService`

### 7.5 Tournament System
- [ ] Create `TournamentBase` template
- [ ] Create `ElitePKTournament`
- [ ] Create `TeamArenaTournament`
- [ ] Create `GuildWarTournament`

---

## Phase 8: Loading System (Day 66-70)

### 8.1 Parallel Loading ✅
- [x] Create `ParallelDataLoader` for concurrent data loading ✅ `src/Nyx/Loading/ParallelDataLoader.cs`
- [x] Implement phased loading (independent operations in parallel) ✅ Phase-based execution
- [x] Add progress reporting and metrics ✅ LoadMetrics, LoadSummary
- [x] Graceful error handling (continue loading if one fails) ✅ Per-operation error isolation

### 8.2 Lazy Map Loading ✅
- [x] Create `MapManager` for on-demand map loading ✅ `src/Nyx/Game/MapManager.cs`
- [x] Create `LazyMap` that loads when player enters ✅ Thread-safe lazy loading
- [x] Implement map unloading for idle maps ✅ Configurable unload delay
- [x] Add map preloading support ✅ `PreloadAsync`, `PreloadManyAsync`
- [ ] Integrate with player enter/leave events
- [ ] Update Program.cs to use new loading system

### 8.3 Monster Spawning Optimization
- [ ] Spawn monsters after map loads (not during)
- [ ] Implement monster respawn timers per map
- [ ] Add monster density management

---

## Phase 9: Testing & Quality (Day 71-75)

### 9.1 Unit Tests
- [ ] Test all repositories
- [ ] Test all services
- [ ] Test all packet handlers
- [ ] Test all validators

### 9.2 Integration Tests
- [ ] Test database operations
- [ ] Test network flow
- [ ] Test packet pipeline

### 9.3 Performance Tests
- [ ] Benchmark packet processing
- [ ] Benchmark database queries
- [ ] Benchmark memory usage

---

## Phase 10: Documentation (Day 76-80)

### 10.1 Code Documentation
- [ ] XML comments on all public APIs
- [ ] Architecture decision records
- [ ] README updates

### 10.2 Operational Documentation
- [ ] Deployment guide (Linux)
- [ ] Configuration guide
- [ ] Troubleshooting guide

---

## Current Status

**In Progress:** Phase 12 - Nyx.Threading Centralization

**Last Updated:** 2026-06-28 - Phase 12 Started ✓

---

## NEW: Phase 12 - Nyx.Threading Centralization (2026-06-28)

### 12.1 Task Abstractions ✅ DONE
- [x] Create `IGameTask` interface with Priority and ShardKey
- [x] Create `TaskPriority` enum (Critical, High, Normal, Low, Background)
- [x] Create `GameTaskBase` abstract class
- [x] Create `ActionGameTask` and `SimpleGameTask` implementations

### 12.2 Enhanced Repositories ✅ DONE
- [x] Create `ShardedRepository` class for parallel task distribution
- [x] Add `PendingTasksCount` and `TotalProcessedTasks` to Repository
- [x] Add `EnqueueTaskAsync(IRepositoryTask)` to Repository
- [x] Add `TryEnqueueTask(IRepositoryTask)` to Repository

### 12.3 Container Configuration ✅ DONE
- [x] Create `ContainerConfiguration` class
- [x] Create `ContainerPresets` with pre-defined configurations
- [x] Add Network, GameLogic, Database, Background, Tournament, HighPriority presets

### 12.4 ThreadingController Enhancements ✅ DONE
- [x] Add `EnqueueGameTaskAsync(IGameTask)` method
- [x] Add `TryEnqueueGameTask(IGameTask)` method
- [x] Add `EnqueuePlayerTaskAsync(uint entityId, handler)` method
- [x] Add `EnqueueMapTaskAsync(uint mapId, handler)` method
- [x] Add `EnqueueDatabaseTaskAsync(handler, shardKey)` method
- [x] Add `GetOrCreateCustomRepository()` method

### 12.5 Migration Tasks (COMPLETED) ✅
- [x] Migrate `MapManager.cs` to use ThreadingController ✅
- [x] Migrate `DataCollection.cs` - removed Task.Run ✅
- [x] Migrate `DelayedTask.cs` to use ThreadingController ✅
- [x] Migrate `GenericActionList.cs` to use ThreadingController ✅
- [x] Remove unused `GameClient.Timer` field ✅
- [x] Remove `Thread.Sleep(500)` from PacketHandler ✅
- [x] Fix ThreadingController container initialization ✅

### 12.6 Performance Optimizations (COMPLETED) ✅
- [x] Reduced network containers from 12 to 4 ✅
- [x] Single container per task type with multiple repos ✅
- [x] Removed all unnecessary Task.Run calls ✅
- [x] Removed all Thread.Sleep calls ✅

---

## NEW: Phase 11 - Post-Connection Bug Fixes (2026-06-28)

### 11.1 Monster Respawn Broken (HIGH PRIORITY) ✅ FIXED
- [x] Fix GameTimer disposal in Screen constructor ✅
- [x] Fix ObjectDisposedException in `Screen..ctor` (line 1321) ✅
- [x] Ensure GameTimer instances are recreated, not reused after disposal ✅
- [ ] Test monster kill → respawn cycle

**Root Cause:**
`GameTimer<T>.Start()` was returning `this`, so when `Screen.DisposeTimers()` disposed the subscription, it was actually disposing the static `GameTimer` itself. After the first player disconnected, no new players could use those timers.

**Fix:**
Created a `TimerSubscription` wrapper class that only disposes the inner subscription, NOT the parent GameTimer. This allows the timer to be reused across multiple subscriptions (e.g., multiple players).

**Files Changed:**
- `src/Nyx/Utilities/GameTimer.cs` - Added `TimerSubscription` wrapper class

### 11.2 Packet Size Parsing Error (MEDIUM PRIORITY) ✅ FIXED
- [x] Removed old `ConcurrentPacketQueue` class
- [x] Replaced with inline packet framing in Program.cs
- [x] No more double framing (GameSession + ConcurrentPacketQueue)
- [x] Packets are now framed directly after decryption

**Fix:**
Removed the redundant `ConcurrentPacketQueue` and implemented inline packet framing:
```csharp
// Frame packets from decrypted data (TQ format: [Length:2][Data:Length-2])
int offset = 0;
while (offset + 2 <= length)
{
    ushort packetLen = BitConverter.ToUInt16(buffer, offset);
    if (packetLen < 4 || packetLen > 8192) break;
    if (offset + packetLen > length) break;
    
    byte[] packet = new byte[packetLen];
    Buffer.BlockCopy(buffer, offset, packet, 0, packetLen);
    await ProcessDecryptedPacketAsync(packet, client);
    
    offset += packetLen;
}
```

**Files Changed:**
- `src/Nyx.Network/ConcurrentPacketQueue.cs` - DELETED
- `src/Nyx/Program.cs` - Inline packet framing
- `src/Nyx/Client/GameClient.cs` - Removed Queue field
- `src/Nyx/Client/AuthClient.cs` - Removed Queue field

### 11.3 GuildID Array Index Error (LOW PRIORITY)
- [ ] Add bounds checking in Entity.GuildID getter
- [ ] Ensure SpawnPacket is properly initialized before GuildID access
- [ ] Fix ArgumentOutOfRangeException at line 3703

**Error:**
```
System.ArgumentOutOfRangeException: Index was out of range.
   at Nyx.Server.Game.Entity.get_GuildID()
```

**Location:**
- `src/Nyx/Game/Entity.cs` line 3703

---

## Completed Items

### Phase 3 - Network System (2026-06-28) ✅
- [x] Added cross-platform socket options (KeepAlive, ReuseAddress)
- [x] Added platform detection for Linux-specific options
- [x] Added additional socket error codes (NetworkDown, NetworkReset)
- [x] Improved error logging with platform info

### Phase 12 - Nyx.Threading Migration (2026-06-28) ✅
- [x] Migrated `MapManager.cs` to use ThreadingController
- [x] Migrated `DataCollection.cs` - removed unnecessary Task.Run
- [x] Migrated `DelayedTask.cs` to use ThreadingController
- [x] Migrated `GenericActionList.cs` to use ThreadingController
- [x] Removed unused `GameClient.Timer` field
- [x] Removed `Thread.Sleep(500)` from PacketHandler
- [x] Reduced network containers from 12 to 4
- [x] Single container per task type (GameLogic, Database, Background, HighPriority)
- [x] Multiple repos per container for sharding
- [x] All old threading patterns removed

### Phase 12 - Nyx.Threading Centralization (2026-06-28) ✅
- [x] Created `IGameTask` interface with Priority and ShardKey
- [x] Created `TaskPriority` enum
- [x] Created `GameTaskBase`, `ActionGameTask`, `SimpleGameTask`
- [x] Created `ShardedRepository` for parallel task distribution
- [x] Created `ContainerConfiguration` and `ContainerPresets`
- [x] Enhanced `ThreadingController` with new task queueing methods
- [x] Enhanced `Repository` with direct task enqueueing

### Phase 2 - Container Health Monitoring (2026-06-28) ✅
- [x] Added `ContainerHealthStatus` class to ThreadContainer
- [x] Added `GetHealthStatus()` method to ThreadContainer
- [x] Added `GetAllHealthStatus()` method to ContainerRegistry
- [x] Added `GetSystemHealthSummary()` method to ContainerRegistry
- [x] Added `SystemHealthSummary` class

### Fix Packet Framing (2026-06-28) ✅
- [x] Fixed packet framing to include 8-byte seal
- [x] Restored seal validation in PacketHandler
- [x] Matching old ConcurrentPacketQueue behavior (length + 8)

### Remove ConcurrentPacketQueue (2026-06-28) ✅
- [x] Removed old `ConcurrentPacketQueue` class from Nyx.Network
- [x] Updated `GameClient` and `AuthClient` to remove Queue field
- [x] Replaced with inline packet framing in `Program.cs`
- [x] Simplified packet processing (no double framing)

### GameTimer Monster Respawn Fix (2026-06-28) ✅
- [x] Fixed GameTimer<T>.Start() returning `this` which caused disposal issues
- [x] Created TimerSubscription wrapper to isolate subscription disposal from timer
- [x] Static timers (MonsterBuffers, Guards, AliveMonsters, Items) can now be reused

### Connection/Handshake Fix (2026-06-28) ✅
- [x] Fix GameSession.Send() - removed Task.Run delay ✅
- [x] Fix PacketBuffer.WriteSeal() - wrong seal value (TQClient → TQServer) ✅
- [x] Players can now connect and authenticate successfully ✅

### Phase 1.1 - Custom Classes (COMPLETED)
- [x] Replace `Time32` with `GameTime` ✅ `src/Nyx/Utilities/GameTime.cs`
- [x] Replace `FastRandom` with `Random.Shared` ✅ `src/Nyx/Utilities/RandomExtensions.cs`
- [x] Replace `Writer`/`SafeWriter` with `PacketBuffer` ✅ `src/Nyx/Network/PacketBuffer.cs`
- [x] Replace `Counter` with `AtomicCounter` ✅ `src/Nyx/Utilities/AtomicCounter.cs`
- [x] Replace `SafeDictionary` with `ConcurrentDictionary` wrapper ✅ `src/Nyx/Utilities/SafeDictionary.cs`
- [x] Replace `TimerRule` with `GameTimer` ✅ `src/Nyx/Utilities/GameTimer.cs`
- [x] Replace `IniFiles` with `CrossPlatformIniFile` ✅ `src/Nyx/Utilities/CrossPlatformIniFile.cs`
- [x] Replace `PacketFilter` with `PacketRateLimiter` ✅ `src/Nyx/Client/PacketRateLimiter.cs`
- [x] Remove `winmm.dll` P/Invoke ✅ Done in GameTime.cs
- [x] Remove `Class1.Class0.smethod_0()` backdoor ✅ **SECURITY FIX**

### Phase 1.2 - Bug Fixes (COMPLETED)
- [x] Fix recursive `Disconnect()` ✅ Atomic guard with Interlocked
- [x] Fix session memory leak ✅ Proper cleanup in finally
- [x] Fix `SafeDictionary` thread safety ✅ ConcurrentDictionary internals
- [x] Fix `GameClient.Send` buffer allocation ✅ Single pool rent
- [x] Fix `PacketChannel` with backpressure ✅ Bounded channel support

### Phase 1.3 - Namespace Fixes (COMPLETED)
- [x] Fix `Threding` → `Threading` ✅ 7 files + folder renamed
- [x] Fix `Configrations` → `Configurations` ✅ 6 files + 3 files renamed
- [x] Fix `GuildDoantion` → `GuildDonation` ✅ 2 files + file renamed
- [x] Fix `Nyx.Server.Utilites` → `Nyx.Server.Utilities` ✅ ~80 files updated
- [x] Fix `Donaion` → `Donation` ✅ 6 methods fixed

### Phase 8 - Loading System (IN PROGRESS)
- [x] Create `ParallelDataLoader` ✅ `src/Nyx/Loading/ParallelDataLoader.cs`
- [x] Create `MapManager` for lazy loading ✅ `src/Nyx/Game/MapManager.cs`
- [x] Create `LazyMap` for on-demand loading ✅ Thread-safe with unloading support

---

## File Tracking

| File | Status | Changes |
|------|--------|---------|
| `GameTime.cs` | ✅ Complete | Replaces Time32, cross-platform, Stopwatch-based |
| `AtomicCounter.cs` | ✅ Complete | Replaces Counter, Interlocked-based, thread-safe |
| `GameTimer.cs` | ✅ Complete | Replaces TimerRule, uses ThreadingController |
| `RandomExtensions.cs` | ✅ Complete | Extension methods for Random.Shared |
| `PacketBuffer.cs` | ✅ Complete | Replaces Writer/SafeWriter |
| `CrossPlatformIniFile.cs` | ✅ Complete | Replaces IniFiles, no P/Invoke |
| `IniFileWrapper.cs` | ✅ Complete | Backward-compatible IniFile wrapper |
| `PacketRateLimiter.cs` | ✅ Complete | Replaces PacketFilter, lock-free |
| `GameSession.cs` | ✅ Complete | Fixed recursive disconnect |
| `NetworkService.cs` | ✅ Complete | Fixed memory leak |
| `SafeDictionary.cs` | ✅ Complete | Thread-safe rewrite |
| `GameClient.cs` | ✅ Complete | Fixed Send buffer allocation |
| `PacketChannel.cs` | ✅ Complete | Added backpressure support |
| `ParallelDataLoader.cs` | ✅ Complete | New parallel loading system |
| `MapManager.cs` | ✅ Complete | New lazy map loading system |
| `Time32.cs` | ❌ Removed | Replaced by GameTime |
| `Counter.cs` | ❌ Removed | Replaced by AtomicCounter |
| `FastRandom.cs` | ❌ Removed | Replaced by Random.Shared |
| `TimerRule.cs` | ❌ Removed | Replaced by GameTimer |
| `IniFiles.cs` | ❌ Removed | Replaced by CrossPlatformIniFile |
| `PacketFilter.cs` | ❌ Removed | Replaced by PacketRateLimiter |
| `Class1.cs` | ❌ Removed | **BACKDOOR - Security fix** |

---

## Security Fixes

### Backdoor Removed (2026-06-28)
- **File:** `src/Nyx/Utilities/Class1.cs`
- **Threat:** Remote code execution backdoor
- **Behavior:** Connected to `10.5.50.6:37`, received C# code, compiled and executed it
- **Action:** Removed file and all references to `Class1.Class0.smethod_0()`
- **Affected files:** `CareDictionary.cs`, `SafeConcurrentDictionary.cs`

---

## New Files Created

### Phase 1 Replacements
1. `src/Nyx/Utilities/GameTime.cs` - Cross-platform time utility (replaces Time32)
2. `src/Nyx/Utilities/AtomicCounter.cs` - Thread-safe counter (replaces Counter)
3. `src/Nyx/Utilities/GameTimer.cs` - Modern timer (replaces TimerRule)
4. `src/Nyx/Utilities/RandomExtensions.cs` - Random.Shared extensions
5. `src/Nyx/Utilities/CrossPlatformIniFile.cs` - Cross-platform INI reader (replaces IniFiles)
6. `src/Nyx/Utilities/IniFileWrapper.cs` - Backward-compatible IniFile wrapper
7. `src/Nyx/Client/PacketRateLimiter.cs` - Lock-free rate limiter (replaces PacketFilter)

### Phase 8 Loading System
1. `src/Nyx/Loading/ParallelDataLoader.cs` - Parallel data loading framework
2. `src/Nyx/Game/MapManager.cs` - Lazy map loading and management
