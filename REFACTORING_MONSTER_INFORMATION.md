# Monster System Refactoring — Architecture & Status

> **Goal:** Replace the monolithic `MonsterInformation` + eager-spawn model with a
> production-grade, dependency-injected monster system built around DI, value types,
> object pooling, lazy map loading, and zero-allocation tick loops.
>
> **Constraint:** Zero breaking changes to live behaviour during migration. All
> 400+ existing call sites continue to work unchanged until full decommission.

---

## Completed Phases

### Phase 1 — Data Bridge (SQL → PostgreSQL)
| Change | Detail |
|--------|--------|
| `GameTime.cs` | Unified time base to `Environment.TickCount` to fix floor items, despawns, XP skills. |
| `PostgresMonsterRepository` | Loads from `monsterinfos` / `monsterspawns` via legacy `NyxSqlCommand`/`MySqlReader`. |
| `MonsterInformation.UseRepository()` | Legacy facade delegates to repo; `Load()` is transparently sourced from PostgreSQL. |
| `Program.cs` | DI container resolves `IMonsterRepository` and calls bridge at startup. |

**Verified:** log shows `PostgresMonsterRepository.LoadAll: N templates` (no fallback).

### Phase 2 — Spawn Cutover (Lazy Map Loading)

| File | Change |
|------|--------|
| **`Map.cs`** | • Commented out `LoadMonsters()` from both constructors · Added `_monstersLoaded` flag + `EnsureMonstersLoaded()` / `ResetMonsterLoad()` methods · Made `Timer` and `MonsterTimers` `internal` for bridge access |
| **`GameClient.cs`** | • `Map` property getter now calls `ServerMonsterBridge.OnPlayerEnter(map.ID)` on map creation/change · `Disconnect()` now calls `OnPlayerLeave(mapId)` |
| **`World.cs`** | • Added `_monsterManager` static field + `SetMonsterManager()` method · Added `WorldMonsterTick(50ms)` subscription for `MonsterManager.Update()` |
| **`MonsterManager.cs`** | • Added `ILogger<MonsterManager>` dependency · Cleaned up (removed leaked server types) |
| **`Program.cs`** | • Resolves `MonsterManager` from DI, initializes it, wires into World · Configures `ServerMonsterBridge` logger |
| **New: `ServerMonsterBridge.cs`** | • Entity-bridging spawn logic (duplicates old `LoadMonsters()` code path) · `OnPlayerEnter()` → lazy spawn when player accesses `client.Map` · `OnPlayerLeave()` → auto-unload after 3s idle |
| **`PostgresMonsterRepository.cs`** | • Rebuilt cleanly: `LoadAll()`, `LoadMapTemplateAsync()`, `TryGetTemplate()`, `AllTemplates()` |

**Flow:**
```
GameClient.Map getter
  └→ ServerMonsterBridge.OnPlayerEnter(mapId)
       └→ map.EnsureMonstersLoaded()
            └→ LoadMonsters() [legacy entity creation]

World.cs timer (50ms)
  └→ MonsterManager.Update(delta)

GameClient.Disconnect()
  └→ ServerMonsterBridge.OnPlayerLeave(mapId)
       └→ After 3s delay → unload monsters from map
```

**Key design decisions:**
1. **No breaking changes to Entity system** — ServerMonsterBridge uses the exact same entity creation code as the original LoadMonsters(), so all 400+ consumers continue to work unchanged.
2. **Lazy at map granularity** — Monsters are spawned when the first player enters a map, not per-player.
3. **Auto-unload** — If no players remain on a map for 3 seconds, monsters are removed and the map is marked as not-loaded, so they'll respawn when someone enters again.
4. **MonsterManager.Update()** runs every 50ms but currently only logs (since ServerMonsterNetworkService is still a debug logger). The AI/combat loop will be fully wired in Phase 3.

---

## In-Progress / Next Phases

### Phase 3 — Tick Cutover (AI Loop Migration)

Move the AI/combat/respawn loop from `Map._timerCallBack` (500 ms, iterating `map.Entities`) into `MonsterManager.Update()`.

**Tasks:**
1. Write `ServerMonsterAIAdapter` that translates between `MonsterState` ↔ `Entity`:
   - Read damage/heal through `MonsterInfo.RecordDamage()` / `MonsterInfo.SendScreen()`
   - Move entities via `entity.X/Y` setter + broadcast `SendScreen`
   - Death detection: bridge `MonsterState.IsDead` → `Entity.Dead` → trigger `Drop()`
2. Remove `MonsterTimers` usage from `Map._timerCallBack` once AI has migrated
3. Wire real broadcasts into `ServerMonsterNetworkService`:
   - `BroadcastSpawn(MonsterState)` → iterate nearby clients, call `entity.SendSpawn(client, false)`
   - `BroadcastMove(MonsterState, Position)` → update `entity.X/Y`, call `entity.SendScreen(...)`
   - `BroadcastDeath(MonsterState)` → set flags, trigger `entity.Drop()`, remove from Entities

**Deliverable:** One code path for spawning + one code path for ticking. No duplication.

### Phase 4 — Decommission Legacy Spawn

Once Phase 3 is verified:
1. Delete `Map.LoadMonsters()` entirely
2. Delete `Map._timerCallBack()` entirely  
3. Remove `_monstersLoaded` / `EnsureMonstersLoaded()` from Map
4. Replace remaining references in boss spawner scripts (`SnowBanshee`, `NemesisTyrant`, etc.) with `MonsterManager.SpawnMapAsync()` — or better yet, remove hardcoded boss spawns entirely and add them to `monsterspawns` DB rows.
5. Verify: no remaining `LoadMonsters` or `MonsterTimers` references in call stack

### Phase 5 — Decommission Legacy Drop/Respawn

Migrate floor-item creation, death drops, and quest hooks:
1. Write `ServerMonsterDropService` that creates actual `FloorItem` entities via `Screen.Add()`
2. Wire `HandleDeath(MonsterState, IPlayerEntity)` into the existing `Entity.MonsterInfo.Drop()` callback
3. Replace boss-event triggers in `WorldTournaments` with `SpawnZone` entries or explicit `MonsterManager.SpawnAt()` calls
4. Remove `MonsterTimers._timerCallBack` entirely (it's just respawn/ToxicFog now)

### Phase 6 — Eliminate `MonsterInformation` Facade

Final step. At this point every call site uses either:
- `IMonsterAIService / IMonsterCombatService / IMonsterDropService` directly, or
- `MonsterState` properties that reference `MonsterTemplate.Stats`

Delete `MonsterInformation.cs` and `MonsterTable.cs`. Update `Program.cs` to remove `UseRepository()` call. Verify: compile, start server, verify 0 regressions.

---

## Remaining Known Issues

| Issue | Status | Notes |
|-------|--------|-------|
| Floor items still disappear immediately | Root cause traced | `itemsCallback` logic is correct; the earlier failed build likely left a stale DLL |
| `MonsterTimers._timerCallBack` still runs on loaded maps | Deferred to Phase 3 | It handles respawn and toxic fog; still needed until AI loop takes over |
| `WorldTournaments` still has boss spawns | Deferred to Phase 4–5 | These time-gated bosses bypass lazy-load; need to be migrated to `SpawnZone` entries or `MonsterManager.SpawnAt()` |

---

## File Index

| Path | Purpose |
|------|---------|
| `src/Nyx.Monsters/` | Core library — data types, interfaces, DI, pooling |
| `src/Nyx.Monsters/MonsterManager.cs` | Lifecycle orchestrator (lazy load, AI tick, death) |
| `src/Nyx.Monsters/MonsterManager.DI.cs` | `AddMonsterSystem()` extension, pool options |
| `src/Nyx.Monsters/Core/MonsterTemplate.cs` | `MonsterTemplate`, `MonsterStats`, `Bounds`, `MapTemplate`, `SpawnZone`, `MonsterType` |
| `src/Nyx.Monsters/Runtime/MonsterState.cs` | Pooled runtime state, damage tracker |
| `src/Nyx.Monsters/Runtime/MapInstance.cs` | Per-map monster collection, respawn queue |
| `src/Nyx.Monsters/Services/*` | AI, combat, drops, exp, network, quests — default impls + interfaces |
| `src/Nyx/Database/Monsters/PostgresMonsterRepository.cs` | PostgreSQL-backed template loader |
| `src/Nyx/Database/MonsterTable.cs` | Legacy `MonsterInformation` class with Phase-1 bridge |
| `src/Nyx/Game/Map.cs` | `EnsureMonstersLoaded()`, `ResetMonsterLoad()`, `Timer`/`MonsterTimers` made internal |
| `src/Nyx/System/World.cs` | `WorldMonsterTick()` subscriber, `_monsterManager` field, `SetMonsterManager()` |
| `src/Nyx/Client/GameClient.cs` | `Map` getter → `ServerMonsterBridge.OnPlayerEnter()`, `Disconnect()` → `OnPlayerLeave()` |
| `src/Nyx/Program.cs` | DI wiring for repo, manager, bridge logger |
| `src/Nyx/Game/Monsters/ServerMonsterBridge.cs` | Entity-facing spawn/bridge |
| `src/Nyx/Game/Monsters/ServerMonsterServices.cs` | Network + quest service shims (debug logging until Phase 3–4) |
