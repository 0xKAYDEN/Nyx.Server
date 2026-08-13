# Nyx.Server — Network & Threading Architecture Review

**Date:** 2026-08-13
**Scope:** `src/Nyx.Network/`, `src/Nyx.Threading/`, `src/Nyx/Network/`, `src/Nyx/Threading/`, and the wiring in `src/Nyx/Program.cs`
**Method:** Full static read of the transport, routing, scheduling and dispatch paths. No toolchain is available in this environment, so nothing here is from a profiler — every claim below is traced to a file and line and is verifiable by reading the code.

---

## 0. Executive summary

The codebase contains **two well-written infrastructure projects that are almost entirely bypassed at runtime.**

`Nyx.Network` implements a proper `System.IO.Pipelines` receive loop with TQ frame extraction. `Nyx.Threading` implements a proper channel-based, core-pinned container/repository/sharding model. Both are competent pieces of engineering. Neither is actually doing its job, because the wiring in `Program.cs` disables the framing layer and the routing layer collapses to a single thread.

The five findings that matter:

| # | Finding | Effect |
|---|---|---|
| 1 | `GameSession.ConnectionId` is **never assigned** — always `0`. Routing is `connectionId % containerCount`. | **100% of game traffic for every player is processed on network container 0.** The other 3 containers are idle. |
| 2 | The `GameLogic` container, all 4 "shards", `Database`, `Background` and `HighPriority` repos are **`Repository` objects sharing one `ThreadContainer` each**, and a `ThreadContainer` runs **one** sequential worker. | "4 game-logic shards" is a naming convention, not parallelism. All game logic is serialized on one thread. |
| 3 | `RawMode` is enabled at session creation and **never turned off** — `EnablePacketFraming()` has zero callers. | The entire Pipelines framing path in `GameSession` is dead code. Framing happens manually in `Program.cs` **after** a stateful CAST5 decrypt, and the partial-packet tail is silently dropped, permanently desynchronising the cipher stream. |
| 4 | Blocking calls (`.Wait()`, `.Result`, `.GetAwaiter().GetResult()`) sit on the path executed by those single worker threads. | Head-of-line blocking: one player's inventory DB round-trip stalls **every** player's packet processing. |
| 5 | `PacketHandler.HandlePacket` is a **25,889-line static method** with a 932-case switch, and it **double-dispatches**: `PacketProcessor.ProcessAsync`'s return value is discarded into an empty `if` body, then the legacy switch runs anyway. | Packets 10005/10010/1004/1022/3200 are handled twice per arrival. |

Net effect: the server is, functionally, a **single-threaded packet processor with a thread-pool-shaped scaffolding around it**, and thread affinity pinning is actively making it worse rather than better.

---

## PART I — THE NETWORK SYSTEM

### 1.1 The framing layer is dead code

`GameSession.ProcessReceiveLoopAsync` (`src/Nyx.Network/GameSession.cs:150`) builds a `Pipe`, runs `FillPipeAsync` + `ReadPipeAsync`, and `ReadPipeAsync` branches on `RawMode`:

```csharp
if (RawMode) {
    var packet = buffer.ToArray();       // whole socket read, one blob
    await Channel.WriteAsync(packet);
    reader.AdvanceTo(buffer.End);
} else {
    while (TryReadPacket(ref buffer, out var packet))   // proper framing
        await Channel.WriteAsync(packet);
    reader.AdvanceTo(buffer.Start, buffer.End);
}
```

`TryReadPacket` is a correct incremental TQ framer. It never executes. Both service subclasses call `session.EnableRawMode()` in `CreateSession`:

- `src/Nyx.Network/GameNetworkService.cs:29`
- `src/Nyx.Network/AuthNetworkService.cs:19`

and `EnablePacketFraming()` has **no callers anywhere in the repository**. So `Nyx.Network`'s entire reason for existing — buffered, allocation-aware, incremental framing — is bypassed for the lifetime of every connection.

### 1.2 The replacement framing loses data and desynchronises the cipher

Because framing is off, `Program.cs` re-implements it in `ProcessEncryptedDataAsync` (`src/Nyx/Program.cs:851`):

```csharp
client.Cryptography.Decrypt(buffer, length);   // stateful CAST5, whole blob
int offset = 0;
while (offset + 2 <= length) {
    ushort packetLen = BitConverter.ToUInt16(buffer, offset);
    int totalSize = packetLen + SealSize;
    if (offset + totalSize > length)
        break;                                  // <-- tail silently discarded
    ...
    offset += totalSize;
}
```

Two defects, both structural:

**(a) Torn packets are dropped, not buffered.** TCP does not respect message boundaries. When a read ends mid-packet, `break` throws away the tail. There is no leftover buffer, no carry-over into the next read. The bytes are gone.

**(b) The cipher is stateful, so (a) is unrecoverable.** `SafeGameCryptography`/`GameCryptography` wrap CAST5 in CBC-like mode with retained IVs (`SetIvs`, `src/Nyx.Network/Cryptography/GameCryptography.cs:32`), and `AuthCryptography` is a keystream XOR with a monotonic counter (`_encryptCounter`/`_decryptCounter`, `AuthCryptography.cs:35`). Decryption already consumed the dropped bytes and advanced the keystream. The next read decrypts against a stream position the client never sees. **Every subsequent packet on that connection is garbage.**

This only stays invisible in testing because CO clients mostly send small packets that fit in one 2048-byte read. It will manifest as random disconnects under load, at high latency, or on any burst — exactly the conditions you cannot reproduce on a LAN.

The correct design is already written in `TryReadPacket`. It just needs to be reachable, with decryption moved into the framer.

### 1.3 Frame extraction allocates per packet, three times

For one inbound packet the current path allocates:

1. `buffer.ToArray()` — the whole socket read (`GameSession.cs:275`)
2. `new byte[totalSize]` + `BlockCopy` — the extracted frame (`Program.cs:883`)
3. inside handlers, `new byte[packet.Length - 8]` + a per-byte copy loop, ~29 sites in `PacketHandler.cs`

The outbound path is no better (`GameClient.Send`, `src/Nyx/Client/GameClient.cs:797`): rents a pooled buffer, copies in, seals, encrypts, then **allocates a fresh `byte[]` anyway** and copies again — with the comment *"This is the only allocation we can't avoid for async socket operations."* It is avoidable; that is what `IMemoryOwner<byte>` / `PipeWriter` exist for.

So the pooling in both directions is decorative. Every packet in and out produces multiple gen-0 allocations at wire rate.

### 1.4 Concurrent unsynchronised sends will corrupt the stream

`GameSession.SendAsync` (`GameSession.cs:340`) calls `Socket.SendAsync` with no send queue and no lock. `GameSession.Send` is fire-and-forget `_ = SendAsync(data)`.

`Socket.SendAsync` is **not safe for concurrent callers on the same socket** — overlapping sends interleave at arbitrary byte boundaries. And callers are concurrent by construction: `SendScreen` (`GameClient.cs:921`) fans a packet out to every client in range, driven from timer subscriptions, monster AI ticks and the packet worker simultaneously.

Note that the encryption *is* serialised — `lock (Cryptography)` at `GameClient.cs:815` — which shows the concurrency was recognised for the cipher but not carried through to the socket write. The result: two threads can produce correctly-encrypted buffers and then interleave them on the wire. Since the cipher is stream-stateful, an interleaved write is indistinguishable from corruption, and the client desyncs.

**This is a real, latent, load-dependent bug.** A per-session outbound `Channel<T>` with a single writer task is the only correct fix.

### 1.5 Session lifecycle leaks

- **Idle timeout never fires.** `NetworkService.CleanupInactiveSessionsAsync` (`NetworkService.cs:250`) compares `now - kvp.Value.LastActivity > SessionTimeout`. `SessionInfo.LastActivity` is only ever written at construction, because the sole method that updates it — `UpdateSessionActivity` (`NetworkService.cs:383`) — **has zero callers.** `GameSession.LastReceiveTime` *is* correctly maintained (`GameSession.cs:216`), but the cleanup loop reads the other field. Half-open connections accumulate for the process lifetime.

- **Disconnect event is never subscribed.** `NetworkService.OnSessionDisconnected` is raised (`NetworkService.cs:239`) but nothing subscribes to it. `GameServer_OnClientDisconnect` (`Program.cs:745`) and `AuthServer_OnClientDisconnect` (`Program.cs:952`) are defined and **never wired up** — only `OnSessionConnected` is hooked in `InitializeNetworkServices` (`Program.cs:654`). So when a socket dies, `GameClient.Disconnect()` — which does `World.Unregister`, screen cleanup, character save, monster-bridge notification (`GameClient.cs:965`) — never runs. Players who drop stay in `Kernel.GamePool`, stay in map screens, and **do not get saved**.

- **`GameClient.Disconnect` early-returns on `Entity == null`** (`GameClient.cs:971`), so a client that drops during login/character-creation never cleans up at all.

### 1.6 `PacketHandler` — a 25,889-line static method

`src/Nyx/Network/PacketHandler.cs` is one `static async Task HandlePacket(byte[], GameClient)` with **932 top-level `case` labels** — **1,652 `case` labels in total** once the nested sub-switches (`packet[4]`, `CA.Type`, `Mode`, …) are counted. Consequences:

- **JIT cost.** A single method this size is a jump table over a method body far past any inlining or tiering heuristic. Tiered PGO cannot meaningfully optimise it.
- **Register pressure and stack frame.** Every local across all 932 cases contributes to one frame.
- **No isolation.** One malformed-packet exception unwinds through the whole method. There is no per-packet-type error boundary.
- **Untestable.** You cannot unit-test packet 1022 without constructing a full `GameClient` with a live session.
- **Unmergeable.** Any two developers touching packets conflict in the same file.

The attribute-based replacement **already exists** — `PacketAttribute` (`src/Nyx/Network/PacketAttribute.cs`), `PacketProcessor` with a cached reflection dispatch table (`src/Nyx/Network/ImprovedPacketSystem/PacketProcessor.cs`), initialised at `Program.cs:449`. It has five handlers registered (`AttributePacketHandlers.cs`), all of which are empty stubs that log and `return Task.CompletedTask`.

And it is wired in wrong (`PacketHandler.cs:51`):

```csharp
if (await PacketProcessor.ProcessAsync(client, packet))
{
                                    // <-- empty body, no return
}
// ... falls through to the 932-case switch regardless
```

`ProcessAsync` returns `true` when it handled the packet. That `true` is discarded. So packets **1022 (attack), 3200 (sign-in), 1004, 10005, 10010** run the new stub handler **and then** the legacy handler. Today the stubs are no-ops so the damage is limited to wasted reflection lookups plus a duplicate log line per attack packet. The moment anyone implements a real handler there, it silently double-executes. This is a one-character fix (`return;`) that should not wait for the larger refactor.

### 1.7 Dead and orphaned network code

Confirmed zero external references:

| File | LOC | Status |
|---|---|---|
| `src/Nyx/Network/EnhancedPacketFilter.cs` | 143 | dead — superseded by `PacketRateLimiter` |
| `src/Nyx/Network/PipeLineWriter.cs` | 164 | dead |
| `src/Nyx/Network/PacketErrorHandler.cs` | 148 | 1 reference |
| `GameSession.TryReadPacket` + framed branch | ~60 | unreachable (§1.1) |
| `GameClient.EndSend` (`GameClient.cs:863`) | 12 | APM `IAsyncResult` leftover, unreachable |
| `NetworkService.SendAsync`/`ReceiveAsync` | ~20 | unused public API |

`SafeGameCryptography` (206 LOC, with bounds checks and locking) is also unused — `GameClient` instantiates the raw unsafe `GameCryptography` instead (`GameClient.cs:39`).

---

## PART II — THE THREADING SYSTEM

### 2.1 All traffic lands on one container — `ConnectionId` is never set

`NetworkContainerRegistry.GetContainerForSession` (`src/Nyx.Threading/Network/NetworkContainerRegistry.cs:62`):

```csharp
var index = (int)(connectionId % (uint)containerList.Count);
return containerList[index];
```

`GameSession.ConnectionId` is declared at `src/Nyx.Network/GameSession.cs:84` with a public setter. A repository-wide grep for assignments returns **nothing**. It is `0` for every session, forever.

`0 % 4 == 0`. **Every packet from every player routes to `NetworkContainer-0`.** Containers 1–3 are constructed, pinned to cores 1–3, and sit blocked on an empty channel for the process lifetime.

This is a one-line fix (`session.ConnectionId = <monotonic id>` at accept) that converts a 1-core server into a 4-core server. It is listed first because it is the highest ratio of impact to effort in the entire codebase.

### 2.2 That routing also allocates a `List` on every packet

Same method, lines 64–65:

```csharp
var containers = GetAllContainers();
var containerList = new List<NetworkThreadContainer>(containers);
```

A `ConcurrentDictionary.Values` enumeration plus a `List` allocation and copy — **per packet, on the hot path**, to index into a collection that never changes after startup. `GetNextContainer()` (line 46) does the same. The container set is fixed by `InitializeNetworkContainers` at boot; it should be a frozen `NetworkThreadContainer[]` snapshot.

### 2.3 "Sharding" does not shard — repositories share one container

`ThreadingController.EnsureInitialized` (`src/Nyx.Threading/Core/ThreadingController.cs:59`):

```csharp
var gameLogicShards = Math.Min(4, Environment.ProcessorCount);
_gameLogicRepos = new Repository[gameLogicShards];

var gameLogicContainer = ContainerRegistry.GetOrCreateContainer("GameLogic", 0, 10000);

for (var i = 0; i < gameLogicShards; i++)
    _gameLogicRepos[i] = new Repository($"GameLogicRepo-{i}", gameLogicContainer);
```

All four "shards" wrap **the same `gameLogicContainer`**. `Repository.EnqueueTaskAsync` (`Repository.cs:45`) forwards straight to `Container.EnqueueAsync`. A `ThreadContainer` has exactly one `Channel` and one worker loop that `await`s each task to completion in sequence (`ThreadContainer.WorkerLoopAsync:186`).

Therefore: **4 shards → 1 channel → 1 thread.** `GetRepository(GameLogic, shardKey)` (`ThreadingController.cs:161`) computes `_gameLogicRepos[shardKey % length]`, which selects a different *object* that enqueues to the *same queue*. The shard key is decorative.

`ShardedRepository` (`src/Nyx.Threading/Core/ShardedRepository.cs:68`) has the identical defect — its constructor takes **one** `ThreadContainer` and creates N `Repository` objects against it. The class documents itself as *"enables parallel processing while maintaining sequential order within each shard."* It delivers only the second half.

Combined with §2.1: **the entire server — all packet handling and all game logic — executes on one thread at a time.**

### 2.4 Core-pinning collides, and is wrong for `async` code anyway

Container → core assignment:

| Container | Core | Source |
|---|---|---|
| `NetworkContainer-0..3` | 0, 1, 2, 3 | `NetworkContainerRegistry.cs:119` |
| `GameLogic` | **0** | `ThreadingController.cs:75` |
| `Database` | **1** | `ThreadingController.cs:87` |
| `BackgroundTasks` | **2** | `ThreadingController.cs:94` |
| `HighPriority` | **3** | `ThreadingController.cs:101` |

Every game-logic container is pinned to a core **already occupied** by a network container. `GameLogic` and the only live network container (`NetworkContainer-0`, per §2.1) both contend for core 0 — while cores 1–3 run three idle network workers and three lightly-used containers.

Worse, the pinning is architecturally unsound. `ThreadContainer` starts its worker with `Task.Factory.StartNew(..., LongRunning)` and calls `ThreadAffinityHelper.TrySetThreadAffinity(CoreIndex)` **inside** `WorkerLoopAsync` (`ThreadContainer.WorkerLoopAsync:183`). The loop then does:

```csharp
await foreach (var task in _channel.Reader.ReadAllAsync(ct))
    await ExecuteTaskAsync(task, ct);
```

Every `await` that suspends resumes on a **thread-pool thread**, not the original pinned thread. The affinity mask applies to the thread that ran the synchronous prologue. The moment the first task awaits anything real — a DB call, a socket send — the continuation runs on an unpinned pool thread with no affinity at all.

So affinity pinning here provides **zero cache locality benefit** while imposing **real scheduling constraints** on the OS. On a container or shared host with a restricted CPU set it will pin to cores the process may not even be scheduled on. `TrySetThreadAffinity` also ignores cgroup CPU limits — it checks `Environment.ProcessorCount` (`ThreadAffinityHelper.cs:30`), which under .NET respects cgroup quota, but the mask `1UL << coreIndex` refers to *physical* CPU indices, which do not correspond. In a Docker deployment with `--cpuset-cpus=4-7`, `sched_setaffinity(0, ..., 1<<0)` fails outright.

**Recommendation: delete the affinity layer entirely.** It cannot work with `async` continuations. If core-pinning is genuinely wanted, it requires dedicated `Thread` objects with a fully synchronous work loop and a custom `TaskScheduler` — a much larger commitment, and not one this workload needs.

### 2.5 Head-of-line blocking: sync-over-async on the single worker

Because §2.1 and §2.3 collapse everything onto one worker, **any** blocking call in a handler stalls the whole server. There are 19 such calls in `src/Nyx/`:

| File | Lines | Call |
|---|---|---|
| `src/Nyx/Game/ConquerStructures/Inventory.cs` | 130, 477, 510, 527, 547, 717, 724 | `.Result`, `.Wait()` on DB ops |
| `src/Nyx/Database/AccountTable.cs` | 52 | `.GetAwaiter().GetResult()` |
| `src/Nyx/Database/EntityTable.cs` | 36, 663, 758 | `.GetAwaiter().GetResult()` |
| `src/Nyx/Database/MonsterTable.cs` | 4327 | `.GetAwaiter().GetResult()` |

`Inventory.cs:130` (`GetAllAsync().Result`) runs on inventory open. A single player opening their bag issues a synchronous DB round-trip **on the thread that processes every other player's packets**. At 20 ms of DB latency that is a 20 ms global stall. Under any contention the server visibly freezes for everyone.

`GameClient.ShutDown` (`GameClient.cs:993`) is worse — it opens a MySQL connection and performs **eight sequential synchronous saves** (`SaveJiangHu`, `UpdateOnlineStatus`, `SaveEntity`, `SaveActiveness`, `SaveEntityVariable`, `SaveFlowers`, …) inline. Every logout blocks the world.

This is the classic sync-over-async trap, and the single-worker topology converts it from "wastes a pool thread" into "halts the server."

### 2.6 The 1 ms timer scheduler polls every subscription

`AsyncTimerScheduler.PropagationLoopAsync` (`ThreadingController.cs:483`):

```csharp
using var timer = new PeriodicTimer(TimeSpan.FromMilliseconds(1));
while (await timer.WaitForNextTickAsync(ct))
    foreach (var sub in _subscriptions.Values)      // full scan, 1000×/sec
        if (sub.TryMarkDueAndEnqueue())
            sub.EnqueueToRepository();
```

`TryMarkDueAndEnqueue` does `DateTime.UtcNow <= _nextRun` per subscription (`ThreadingController.cs:550`). This is **O(subscriptions) work 1000 times per second**, plus a `ConcurrentDictionary.Values` enumeration each tick, plus a `DateTime.UtcNow` syscall per subscription per tick.

The comment on line 481 says *"Much more efficient than Thread.Sleep(1) busy-wait."* It removed the sleep but kept the O(n) scan. With per-entity timers this scales as O(entities × 1000/sec) — pure overhead before a single unit of game work happens. `DateTime.UtcNow` should be `Environment.TickCount64` at minimum; the scan should be a **timer wheel** or a 4-ary min-heap keyed on due time, so each tick touches only subscriptions actually due.

Also: `PeriodicTimer` at 1 ms is below the default OS timer resolution on Windows (~15.6 ms unless `timeBeginPeriod` is called). The loop will tick irregularly and in bursts, so the "1 ms precision" is illusory on the platform this server historically targets.

### 2.7 Two competing threading stacks

There are two threading APIs, and the migration between them stopped halfway:

**`src/Nyx.Threading/`** (2,656 LOC) — the real engine: `ThreadingController`, `ThreadContainer`, `Repository`, `ShardedRepository`, `ContainerRegistry`, `NetworkContainerRegistry`.

**`src/Nyx/Threading/`** (1,667 LOC) — the game-side layer, in a directory misspelled `Threding/`:
- `GameTaskScheduler.cs` (157) — marked `[Obsolete]`, every method `[Obsolete]`, all bodies delegate to `ThreadingController`. A pure pass-through kept "for transitional compatibility."
- `CharacterService.cs` (678), `TournamentsService.cs` (351), `SecurityService.cs` (291), `WorldStateService.cs` (78), `ThreadingBootstrapService.cs` (68), `ThreadingTimerHostedService.cs` (44)

The `WorkPriority` enum (Critical / Combat / PlayerInput / AI / BackgroundSave / Monitoring) maps onto `RepositoryCategory` via `MapWorkPriority` (`GameTaskScheduler.cs:135`) — and **collapses four of the six priorities to the same value**:

```csharp
WorkPriority.BackgroundSave => RepositoryCategory.Database,
WorkPriority.Monitoring     => RepositoryCategory.BackgroundTasks,
WorkPriority.AI             => RepositoryCategory.GameLogic,
_                           => RepositoryCategory.GameLogic  // Critical, Combat, PlayerInput
```

Critical, Combat, PlayerInput and AI all become `GameLogic` → same container → same queue → **FIFO with no priority whatsoever**. The `HighPriority` container exists (`ThreadingController.cs:101`) and `GetRepository` has no case that ever returns it. A declared six-level priority system delivers two effective levels, neither of which preempts.

`Program.cs` carries three separate tombstone comments (lines 81–87, 376–377, 485, 1086) explaining that `TaskScheduler` was removed. The removal left an `[Obsolete]` facade, a dead priority enum, and an unreachable container.

### 2.8 Unused threading infrastructure

| Component | LOC | Status |
|---|---|---|
| `Configuration/ContainerConfiguration.cs` | 137 | **zero references** — containers are hardcoded in `EnsureInitialized` |
| `Network/SessionRepository.cs` | 118 | **zero references** |
| `ShardedRepository` (`_playerRepo`, `_mapRepo`, `_databaseShardedRepo`) | 152 | fields declared `ThreadingController.cs:37–39`, never assigned |
| `HighPriority` container | — | created, never routed to |
| `IGameTask` (124 LOC), `IPooledTask` | — | defined; `EnqueueGameTaskAsync` exists but is unused by game code |
| `RepositoryCategory.LongRunningOperations` | — | aliased to `BackgroundTasks` |

`ContainerConfiguration` existing but unused is the tell: the system was designed to be configurable, then hardcoded during integration, and the configuration layer was never deleted.

### 2.9 Shared-state protection is inconsistent

93 `lock` statements in `src/Nyx/`. `Kernel` (`src/Nyx/System/Kernel.cs:140–160`) mixes:

- `ConcurrentDictionary` — `GamePool`, `AuctionItems`, `BlackSpoted`, `AwaitingPool`, `Bots`, `DisconnectPool`
- `SafeDictionary` (custom, `src/Nyx/Utilities/SafeDictionary.cs`) — `Maps`, `Guilds`, `Guilds_adv`, `Furnitures`
- **plain `Dictionary`** — `Clans`, `ReincarnatedCharacters`, `Unions`

The plain `Dictionary` fields are `public static` and mutated from game logic. Today this is masked by §2.3 (everything is on one thread). **The moment sharding is fixed, `Kernel.Clans`, `Kernel.ReincarnatedCharacters` and `Kernel.Unions` become data races** — and `Dictionary` corruption under concurrent write manifests as infinite loops in `FindEntry`, not exceptions.

This must be fixed **before** parallelism is enabled, not after.

---

## PART III — RECOMMENDED ARCHITECTURE

These are ordered by dependency, not by size. Phase 0 is small in code and large in effect; do not skip ahead.

### Phase 0 — Unblock the existing design (days, not weeks)

Four fixes that make the infrastructure you already paid for actually run:

1. **Assign `ConnectionId`.** In `NetworkService.HandleClientAsync`, `session.ConnectionId = (uint)Interlocked.Increment(ref _connectionCounter);` before `OnSessionConnected`. → 1 core becomes 4.
2. **Give each container its own `ThreadContainer`.** In `EnsureInitialized`, create `gameLogicShards` containers instead of one, and index `_gameLogicRepos[i]` to container `i`. Apply the same to `ShardedRepository` (take `ThreadContainer[]`, not one). → real parallelism.
3. **Delete `ThreadAffinityHelper` and all `coreIndex` pinning.** It cannot work with `async` and it currently causes core collisions (§2.4).
4. **Fix the double-dispatch.** `if (await PacketProcessor.ProcessAsync(client, packet)) return;` (`PacketHandler.cs:51`).

**Prerequisite for 1 & 2:** convert `Kernel.Clans`, `Kernel.ReincarnatedCharacters`, `Kernel.Unions` to `ConcurrentDictionary` first (§2.9), or you will trade a slow server for a corrupting one.

Also cheap and worth doing now: snapshot the container list into an array (§2.2), and call `UpdateSessionActivity` from the receive loop — or better, have the cleanup loop read `GameSession.LastReceiveTime`, which is already correct (§1.5).

### Phase 1 — Repair the transport

5. **Turn framing back on.** Move decryption into the pipeline. `ReadPipeAsync` should decrypt from the `ReadOnlySequence`, frame with `TryReadPacket`, and `AdvanceTo(consumed, examined)` so partial tails survive to the next read. Delete the manual framing in `Program.cs`. This fixes the silent-drop/desync bug (§1.2) and removes the `buffer.ToArray()` allocation.
   - Keep `RawMode` strictly for the DH handshake, and call `EnablePacketFraming()` when it completes — the method exists for exactly this and was never invoked.

6. **Serialise sends per session.** Give `GameSession` an outbound `Channel<IMemoryOwner<byte>>` with one writer task draining to a `PipeWriter`. Fixes the interleaved-write corruption (§1.4) and eliminates the unavoidable-looking allocation in `GameClient.Send` (§1.3).

7. **Wire the disconnect path.** Subscribe `GameServer_OnClientDisconnect` / `AuthServer_OnClientDisconnect` to `OnSessionDisconnected` in `InitializeNetworkServices`, and remove the `Entity == null` early-return in `GameClient.Disconnect` so partial sessions clean up (§1.5).

### Phase 2 — Decompose `PacketHandler`

8. **Complete the attribute-based migration.** The infrastructure exists and works; only the content is missing. Target shape:

```
src/Nyx/Network/Handlers/
    Combat/       MsgAttackHandler.cs, MsgInteractHandler.cs
    Movement/     MsgWalkHandler.cs, MsgActionHandler.cs
    Social/       MsgTalkHandler.cs, MsgFriendHandler.cs
    Trade/        MsgTradeHandler.cs, MsgItemHandler.cs
    ...
```

Each handler: one class, one packet family, `[Packet(id)]`, constructor-injected dependencies, individually testable. Migrate by frequency — the top ~20 packet IDs are most of the traffic and most of the risk.

Replace reflection dispatch with a **source-generated `switch` over packet ID → handler instance**. Compile-time, zero-reflection, zero-allocation, and it eliminates the 932-case method without introducing a virtual call per packet.

Keep the legacy switch reachable as a fallback during migration, but invert the default: new system first, `return` on hit, legacy only on miss. Delete cases from the switch as they are migrated so the file shrinks monotonically and progress is measurable.

9. **Add a per-handler error boundary** so a malformed packet kills one handler invocation, not the dispatch loop.

### Phase 3 — Fix the execution model

10. **Eliminate sync-over-async.** Make the 19 call sites in §2.5 genuinely async. `Inventory.cs` and `GameClient.ShutDown` are the priorities. Where a call cannot be made async, move it off the game-logic container onto the `Database` container via `ThreadingController.EnqueueAsync(RepositoryCategory.Database, ...)` — which is what that container is for and is currently barely used.

11. **Shard game logic by map, not by hash.** The natural partition in a CO server is the map: entities interact almost exclusively within a map, and `Kernel.Maps` already keys by `ushort`. Route game-logic tasks with `shardKey = mapId` so each map's state is owned by exactly one worker. That gives lock-free access to per-map state and turns most of the 93 `lock`s into dead code. Cross-map operations (teleport, whisper, guild) become explicit messages between shards — which is the correct model and makes the concurrency boundaries visible instead of implicit.

12. **Replace the polling timer with a timer wheel.** Hierarchical timer wheel or 4-ary min-heap keyed on due tick; each tick pops only what is due. Use `Environment.TickCount64`, not `DateTime.UtcNow`. → O(due) instead of O(all) at 1000 Hz (§2.6).

13. **Implement priorities or delete them.** Either give `ThreadContainer` multiple channels drained in priority order (`Critical` → `Combat` → `PlayerInput` → `AI`), or delete `WorkPriority` and `GameTaskScheduler` and route `RepositoryCategory` directly. The current state — six declared priorities collapsing to two, with an unreachable `HighPriority` container — is worse than either.

### Phase 4 — Delete

14. Remove `EnhancedPacketFilter` (143), `PipeLineWriter` (164), `GameClient.EndSend`, `NetworkService.SendAsync`/`ReceiveAsync`, `SessionRepository` (118), `GameTaskScheduler` (157) once call sites are migrated, and either wire up or delete `ContainerConfiguration` (137) and the three unassigned `ShardedRepository` fields.

15. Rename `src/Nyx/Threading/Threding/` → `Services/`.

---

## Appendix A — Packet lifecycle, as actually executed

```
Socket.ReceiveAsync (2048B pooled)                  GameSession.FillPipeAsync:190
  → PipeWriter.WriteAsync
  → ReadPipeAsync                                   GameSession.ReadPipeAsync:242
      RawMode == true (ALWAYS)                      GameNetworkService.cs:29
      → buffer.ToArray()                            [ALLOC 1 — whole read]
      → Channel.WriteAsync                          bounded 10,000
  → ProcessGameSessionPacketsAsync                  Program.cs:705
  → GameServer_OnClientReceiveAsync                 Program.cs:760
  → ProcessEncryptedDataAsync                       Program.cs:851
      CAST5 decrypt whole blob (stateful)
      manual frame loop
        partial tail → break, DISCARDED             [BUG §1.2 — cipher desync]
        new byte[totalSize] + BlockCopy             [ALLOC 2 — per packet]
  → ProcessDecryptedPacketAsync                     Program.cs:900
  → ThreadingController.RoutePacketAsync            ThreadingController.cs:371
      GetContainerForSession(ConnectionId)          ConnectionId == 0 ALWAYS  [BUG §2.1]
        new List<>(containers)                      [ALLOC 3 — per packet §2.2]
        index = 0 % 4 = 0                           → NetworkContainer-0 for EVERYONE
  → NetworkRepository.EnqueuePacketAsync            NetworkRepository.cs:24
  → ThreadContainer channel → single worker         ThreadContainer.cs:186
      affinity core 0 (lost at first await §2.4)
      collides with GameLogic container, also core 0
  → HandleRoutedPacketAsync                         Program.cs:923
  → PacketHandler.HandlePacket                      PacketHandler.cs:43
      PacketProcessor.ProcessAsync → result DISCARDED  [BUG §1.6]
      switch (ID) — 932 cases, 25,889 lines
        new byte[len-8] + byte loop                 [ALLOC 4 — ~29 sites]
        possible .Wait()/.Result → STALLS ALL PLAYERS  [BUG §2.5]
```

Four allocations per inbound packet, one active core, one active thread, one desync bug, one double-dispatch bug.

## Appendix B — Confirmed defects

| # | Defect | Location | Severity |
|---|---|---|---|
| 1 | `ConnectionId` never assigned → all traffic on container 0 | `GameSession.cs:84` | **Critical** |
| 2 | Partial packet discarded after stateful decrypt → permanent cipher desync | `Program.cs:877` | **Critical** |
| 3 | Concurrent unsynchronised `Socket.SendAsync` → interleaved writes | `GameSession.cs:340` | **Critical** |
| 4 | `OnSessionDisconnected` never subscribed → no cleanup, no character save on drop | `Program.cs:654` | **Critical** |
| 5 | 4 "shards" share 1 container → no parallelism | `ThreadingController.cs:75` | **High** |
| 6 | `PacketProcessor` result discarded → double dispatch | `PacketHandler.cs:51` | **High** |
| 7 | Sync-over-async on the single worker → global stalls | 19 sites, §2.5 | **High** |
| 8 | Plain `Dictionary` in `Kernel` → races once sharding is fixed | `Kernel.cs:143,144,152` | **High** (latent) |
| 9 | `UpdateSessionActivity` has no callers → idle timeout never fires | `NetworkService.cs:383` | Medium |
| 10 | Affinity pinning lost at first `await`; containers collide on cores 0–3 | `ThreadContainer.cs:183` | Medium |
| 11 | `List` allocation per packet in routing | `NetworkContainerRegistry.cs:65` | Medium |
| 12 | O(n) subscription scan at 1000 Hz | `ThreadingController.cs:492` | Medium |
| 13 | 4 priority levels collapse to one; `HighPriority` unreachable | `GameTaskScheduler.cs:135` | Medium |
| 14 | `Disconnect` early-returns on `Entity == null` | `GameClient.cs:971` | Medium |
| 15 | `SafeGameCryptography` unused; unsafe variant used instead | `GameClient.cs:39` | Low |
