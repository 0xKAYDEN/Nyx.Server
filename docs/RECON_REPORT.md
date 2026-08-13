# Reconnaissance Report — Integrating `Nyx.AttackEngine`
### Conquer Online "Nyx" Private Server (C#)

**Date:** 2026-08-12
**Scope:** Read-only scan. No files modified. All paths absolute; line numbers from the scanned state.

---

## 1. Project structure

The solution `Nyx.sln` references **20 real projects** in two solution folders.

### `src/` (9) — the actual server
| Project | Path | Purpose |
|---|---|---|
| **Nyx.Server** | `src/Nyx/Nyx.Server.csproj` | **Entry point / host** — `Program.Main`, DI bootstrap, game loop. ~380 `.cs` files. |
| Nyx.Database | `src/Nyx.Database/Nyx.Database.csproj` | DB entities + `DatabaseService`/`RedisService` (note: this "Nyx.Database" is mostly empty; the real DB layer is in `src/Nyx/Database/`, namespace `Nyx.Server.Database`). |
| Nyx.Domain | `src/Nyx.Domain/Nyx.Database.csproj` | Packet/domain model defs. ⚠️ References **Nyx.Server** (inverted dependency — flag). |
| Nyx.Network | `src/Nyx.Network/Nyx.Network.csproj` | `AuthNetworkService`/`GameNetworkService`, socket/packet plumbing. |
| Nyx.Shared | `src/Nyx.Shared/Nyx.Shared.csproj` | Shared caches/contracts (`Sessions`). |
| Nyx.Threading | `src/Nyx.Threading/Nyx.Threading.csproj` | `ThreadingController`, worker services. |
| Nyx.Auth | `src/Nyx.Auth/Nyx.Auth.csproj` | **Separate exe** — standalone auth server. |
| Nyx.Monsters | `src/Nyx.Monsters/Nyx.Monsters.csproj` | Monster domain + `IMonsterRepository` + RNG/pool infra. |
| Nyx.Calculations | `src/Nyx.Calculations/Nyx.Calculations.csproj` | Spell/stat calc validators (`SpellUseValidate`). |

### `Modules/` (11) — feature libraries
| Project | Path | Purpose |
|---|---|---|
| **Nyx.AttackEngine** | `Modules/Nyx.AttackEngine` | **Fully implemented** combat pipeline library — the integration target. |
| Nyx.AttackSystem | `Modules/Nyx.AttackSystem` | **Near-empty stub** (4 files; only `Validation.cs` has logic; `Calculations/` empty). Overlaps purpose with AttackEngine — division of labor unclear. |
| Nyx.Spellcasting | `Modules/Nyx.Spellcasting` | `Main.Initialize()` spell loading from DB. |
| Nyx.AI, Nyx.Analysis, Nyx.Asphodel, Nyx.Brain, Nyx.CharacterAscension, Nyx.HexChess, Nyx.Inventory | `Modules/*` | Various; Brain/Inventory are referenced by server, others mostly standalone. |
| Nyx.Validation | `Modules/Nyx.Validation` | **Empty scaffold** — 0 source files. |

### ⚠️ Abandoned / stale
- Top-level dirs `Nyx/`, `Nyx.AI/`, `Nyx.Network/`, `Nyx.Shared/` contain **only `obj/`** — no source, not in `.sln`. Delete-safe.
- `Output/` holds a single stale `Nyx.Network.dll` — dead.
- `ref/AccountServerBinary2015` — legacy, not in solution, targets old `v8.0`.

### Entry point & service wiring
- **Entry:** `src/Nyx/Program.cs:281` `Program.Main` → `Host.CreateDefaultBuilder().UseSerilog()...Build()` at `src/Nyx/Program.cs:314`.
- **DI:** `Microsoft.Extensions.DependencyInjection` configured in `ConfigureServices` at `src/Nyx/Program.cs:343`. Examples: `IDatabaseService → DatabaseService` (`:374`), network services as hosted services (`:380-381`), monster system via `services.AddMonsterSystem()` (`:390`).
- **Hybrid model:** Modern DI for services **+ legacy static globals** for game state. `InitializeServer()` (`src/Nyx/Program.cs:407`) still wires `World`, `ThreadingController`, `PacketProcessor`, `EntityTable.Load()`, `MonsterInformation.Load()`, `DataHolder.Configure(...)`.

### `Nyx.AttackEngine` status (key finding)
- **Implemented** (23 `.cs` files, net9.0, only `Dapper 2.1.4`). Clean `Combat/` pipeline: `AttackPipeline.cs` → steps in `Combat/Steps/` (Validation / TargetResolution / Damage / PostEffect), `interfaces/` for `IValidationStep` etc., `ISkillRepository`, `ISkillCustomHandler` (custom-handler escape hatch), `Database/Repositories/DapperSkillRepository.cs`, `Caching/SkillDataCache.cs` (your `FrozenDictionary` + `(type, level)` keying), `Data/Model/MagicType.cs`, `CustomSkills/` (attribute + registry).
- **⚠️ Orphaned:** It is in `.sln` but referenced by **no project** (grep for `Nyx.AttackEngine` outside its own dir = 0 hits). It compiles but is **not wired into the running server**.
- Bootstrap: `Modules/Nyx.AttackEngine/Bootstrap/AttackEngineBuilder.cs` exposes `BuildAsync(...)` assembling cache + pipeline from a connection factory + injected delegates (`isPvpAllowedBetween`, `queryNearby`, `attrEffects`).

---

## 2. Existing combat / skill code

### 🔴 Critical: TWO parallel combat systems, only one is live
**Live combat** lives in one enormous file:
- **`src/Nyx/Game/Attacking/Handle.cs`** (~628 KB, 8000+ lines). `Handle` ctor at `:22` calls `Execute()` immediately. This class both computes damage **and** builds/sends the outgoing packets inline.
- Reached from packet `case 1022:` at `src/Nyx/Network/PacketHandler.cs:1940`.
- Damage math is split into partial-class files under `src/Nyx/Game/Attacking/Battle/`, all `partial class MyMath`, dispatched by checking `EntityFlag`:
  - `Battle/PvP.cs` — `GetDamageEntity2Entity(Entity, Entity)` (player→player)
  - `Battle/PvM.cs` — `GetDamageEntity2Monster` (player→monster)
  - `Battle/PvE.cs` — `GetDamageEntity2Environment` (player→static/NPC — **mislabeled**, not monster combat)
  - `Battle/MvP.cs` — `GetDamageMonster2Entity` (monster→player)
- Supporting: `src/Nyx/Game/Attacking/Calculate.cs` (e.g. `Calculate.Ranged`, boss branch at `:485` `if (attacked.MonsterInfo.Boss || attacked.Boss == 1)`), `MyMath` stat helpers.

**Not live (scaffolding):**
- `Modules/Nyx.AttackEngine` — implemented but unreferenced (see §1).
- `Modules/Nyx.AttackSystem` — stub.
- `src/Nyx.Monsters/Runtime/MonsterState.cs` — self-contained AI/combat with its own `CombatResult`/`DropResult`, **not** referenced by live `Battle/*`.

### `cq_magictype` read pattern
- Live path reads skill data from `Database.SpellTable.SpellInformations` / `client.Owner.Spells` (`ISkill`, `src/Nyx/Interfaces/ISkill.cs`) and the **text-file** loader `src/Nyx/Database/SpellTable.cs:82` which reads `@"database\magictype.txt"` (NOT the DB table — named "SpellTable" historically).
- **`cq_magictype` is only read in `Nyx.AttackEngine`** via `DapperSkillRepository` (`SELECT ... FROM cq_magictype`), cached in `SkillDataCache`. **No `cq_magictype` access exists in `src/Nyx/Database/`.**

### Existing damage formula (regression baseline)
The live `MyMath` `Battle/*` files are the formulas to preserve. They operate on `Entity` stats (see §4). **Open `Battle/PvP.cs`, `Battle/PvM.cs`, `Battle/MvP.cs` and `Calculate.cs` before replacing anything** — these are the regression baseline. The combat scan flagged `AdjustAttack`/`AdjustDefense`/`Entity.AdjustDamage` helpers that must be diffed against the new engine.

---

## 3. Database access patterns

**Active backend: PostgreSQL (Npgsql) + Dapper.** MySQL is residual dead code.

Three overlapping layers:
- **A — `IDatabaseService` / `DatabaseService`** (`src/Nyx/Database/DatabaseService.cs:31`): `NpgsqlConnection` + hand-rolled `ConcurrentBag` pool; Dapper `Query*/Execute*` helpers. Singleton at `Program.cs:374`.
- **B — `PostgresConnectionFactory` + `RepositoryBase`** (`src/Nyx/Database/PostgreSQL/`): `NpgsqlDataSourceBuilder` (factory defaults `localhost:5432/nyx/postgres/12345678` at `:49`). `RepositoryBase` provides Dapper async helpers + `BulkInsertAsync` (COPY). Concrete repos, no interfaces.
- **C — Legacy `DataHolder` + `NyxSqlCommand`/`MySqlReader`** (`src/Nyx/Database/DataHolder.cs:19`): type aliases map `MySqlConnection → NpgsqlConnection` etc., so "MySQL" code is actually Postgres at runtime. Dominant style for game data.

**Connection string:** built in code from `DatabaseConfiguration` (`src/Nyx/Database/DatabaseConfiguration.cs`, hardcoded Postgres defaults). `appsettings.json` has **only a Serilog section — no `Database` key** — so it falls back to hardcoded defaults. Bound at `Program.cs:347`.

**Repository/DAL style (mixed):**
- Static `XxxTable` classes (`SkillTable`, `EntityTable`, `MonsterTable`, `ConquerItemTable`, ...) — legacy, dominant for game data.
- `RepositoryBase`-derived (`EntityRepository`, `AccountRepository`, `GuildRepository`) — modern Dapper, concrete, DI-ready.
- `IMonsterRepository` / `PostgresMonsterRepository` (`src/Nyx.Monsters/...`) — the one interface+DI example, caches `monsterinfos` in a `Dictionary<uint, MonsterTemplate>`.
- EF Core (`AbstractDbContext`, `AccountsRepository`) — legacy Pomelo/MySQL, secondary.

**`cq_magictype` loader:** exists **only** in `Nyx.AttackEngine` (`DapperSkillRepository` + `SkillDataCache`). **Not in main `src/Nyx/Database/`, and not in the Postgres migration SQL** — the live schema does not appear to provision `cq_magictype` yet.

### MySQL vs Postgres — config
**One active backend (Postgres). NO provider-selection flag exists.** `DatabaseConfiguration` and `PostgresConnectionFactory` only target Postgres. `DataHolder` is hardwired to the Postgres factory. The only MySQL runtime code is `AbstractDbContext.UseMySql(...)` (Pomelo) used by EF repos — compiled but effectively dead for server runtime. No `new MySqlConnection()` at runtime, no `USE_MYSQL`/provider switch. **Implication:** if AttackEngine's `Func<DbConnection>` factory is ever pointed at MySQL, you'd need to supply a MySQL `DbConnection` factory (none exists) — today the server only ever supplies Npgsql.

---

## 4. Player / entity model

**🔴 Key finding: ONE god-class for everything.**
- **`src/Nyx/Game/Entity.cs:20`** — `class Entity : Writer, IBaseEntity, IMapObject`. Players, monsters, NPCs, bots are **all `Entity`**, distinguished only by `EntityFlag` (`src/Nyx/Interfaces/IBaseEntity.cs:5` enum: `Monster=2, Player=1, Bot=3`).
- Session wrapper: **`src/Nyx/Client/GameClient.cs`** — `GameClient` (network/state). `GameClient.Entity` ↔ `Entity.Owner`.
- Monsters: `Entity` with `EntityFlag==Monster`, backed by `Database.MonsterInformation` (`src/Nyx/Database/MonsterTable.cs:8`), reachable as `Entity.MonsterInfo`.

### Combat-relevant fields on `Entity` (file:line)
| Need | Field | Type | Location |
|---|---|---|---|
| HP | `Hitpoints` | uint | `Entity.cs:3801` |
| Max HP | `MaxHitpoints` | uint | `Entity.cs:4065` |
| MP | `Mana` | ushort | `Entity.cs:3851` |
| Stamina | `Stamina` | byte | `Entity.cs:3419` |
| Attack (min/max) | `MinAttack`/`MaxAttack` | uint | `:4049` / `:4057` |
| Magic atk | `MagicAttack` | uint | `:4081` |
| Phys def | `Defence` | ushort | `:3978` |
| Magic def | `MagicDefence` | ushort | `:4019` |
| Dodge | `Dodge` | byte | `:4089` |
| Level | `Level` | byte | `:3539` |
| Map/X/Y | `MapID`/`X`/`Y` | ushort | `:3922`/`:3944`/`:3956` |
| PK points | `PKPoints` | ushort | `:4168` (also sets `RedName`/`BlackName`) |
| Boss flag | `Boss` | byte | `:3790` ⚠️ **setter is broken** — `set { SpawnPacket[_Boss] = 1; }` ignores the value, always writes 1 |
| Alive | `Dead` | bool | `:3968` (`Hitpoints <= 0`) |
| PK mode | `PKMode` | enum | `:4259` |

### ⚠️ Missing / derived (not on `Entity`)
- **Virtue** → not on `Entity`; it's `GameClient.VirtuePoints` (`GameClient.cs:307`). Pipeline must deref `entity.Owner.VirtuePoints` (monsters/NPCs have no `Owner`).
- **Equipped weapon type** → derived from `Owner.Equipment` + `PacketHandler.IsBow(itemID)`; weapon class from `ID/1000` prefixes (`Entity.IsBowEquipped` at `:482`).
- **Proficiency** → on `GameClient` (`Weapons`, `AddProficiency`, `IncreaseProficiencyExperience`), not `Entity`.
- **EP** → no field; only `Energy` (Epic-Taoist semantics, `Entity.cs:1157`). AttackEngine's `AttackContext.AttackerCurrentEp` must be reconciled.
- **Bounty** → no persistent numeric field; PK/crime = `PKPoints` + name flags + jail logic.

### PVP/PVE/MVP/PVM distinction
- Live: dispatched by `EntityFlag` into `Battle/{PvP,PvM,PvE,MvP}.cs`. **No "MVP" (most-valuable-player) concept; `MvP` = monster-vs-player.**
- **No monster `Rank`/`Elite`/`MonsterType` field.** Only MVP-like marker is **`Boss`** (`Entity.cs:3790` + `MonsterInformation.Boss` at `MonsterTable.cs:29`), consumed in combat at `Calculate.cs:485`, `Handle.cs:4100`. (⚠️ broken setter — fix before relying on it.)
- New module already defines the mode taxonomy: `Modules/Nyx.AttackEngine/Combat/AttackMode.cs` — `enum AttackMode : byte { Pvp=0, Pve=1, Mvp=2, Pvm=3 }`, where **`Mvp` = MVP/boss monster** (`AttackContext.cs:42` "MVP monsters take bonus dmg"), with `ModeMultiplier` Pvp 0.5 / Pve 1.0 / Mvp 1.15 / Pvm 1.0.

### Shared abstraction for a generic pipeline
- **`src/Nyx/Interfaces/IBaseEntity.cs`** exposes exactly the combat primitives (`Dead`, `Defence`, `Dodge`, `EntityFlag`, `Hitpoints`, `MagicAttack`, `MapID`, `MaxAttack`, `MaxHitpoints`, `MagicDefence`, `MinAttack`, `Owner`, `UID`, `X`, `Y`). `Entity` implements it. **No `IBattleEntity` / `Role` base** — but since both players and monsters are the same `Entity`, a generic pipeline can take `Entity`/`IBaseEntity` and branch on `EntityFlag`. No separate monster type needed.

---

## 5. Networking / packet layer

### Incoming attack / use-skill packet
- **Packet ID 1022 = `MsgInteract` / `Attack`** (`src/Nyx/Network/GamePackets/[1022] - MsgAttack.cs`, `PacketType.cs:23`). 53 bytes.
- Data provided: `Attacker` UID (off 12), `Attacked` UID (off 16), `X`/`Y` (off 20/22), `AttackType` (off 24), and an **overloaded dword** (off 28) carrying `Damage` on response, or `SpellID`/`MagicType`(ushort)+`MagicLevel`(ushort) for skills (`:86-105`), `Effect1`/`Effect2` attack-effect flag bytes (`:36/37`). **No direction field** — derived server-side via `Kernel.GetAngle` (`Handle.cs:1712`). **Client does not send Damage** on a fresh attack.
- **Dispatch:** `src/Nyx/Network/PacketHandler.cs:1940` `case 1022:` → `new Game.Attacking.Handle(attack, client.Entity, null)` (`:1963`).
- Skill invocation: `attack.AttackType == Attack.Magic` (value 24); skill id/level from `attack.MagicType`/`attack.MagicLevel`.

### Outgoing damage / result packets
- **Melee result → same 1022 `Attack`** object: `attack.Damage = damage; attack.Effect1 = CriticalStrike/Block/...; attacker.Owner.SendScreen(attack)` (e.g. `Handle.cs:1671,1679`).
- **Magic result → ID 1105 `MsgMagicEffect`** (`src/Nyx/Network/GamePackets/[1105] - MsgMagicEffect.cs`), two classes: `SpellUse` (per-target `DamageClass { Damage; Hit; Eff1; Eff2; newX; newY }`, ≤30 targets) and `TryTrip` (3-hit). Built inline in `Handle.cs`.

### Overall dispatch architecture
1. `GameSession` (`src/Nyx/Network/GameSession.cs`) frames TQ packets → `PacketChannel<byte[]>` → `PacketHandler.HandlePacket`.
2. `PacketHandler.HandlePacket` (`src/Nyx/Network/PacketHandler.cs:41`): first calls attribute-based `PacketProcessor.ProcessAsync` (`:49`), **then** a giant `switch(ID)` to legacy handlers (combat = `case 1022`).
3. Base contract: `interface IPacket` (`src/Nyx/Interfaces/IPacket.cs`) with `Encode/Deserialize/Send`. Packets are concrete classes in `src/Nyx/Network/GamePackets/`.
4. **⚠️ Dual-dispatch ambiguity:** `PacketProcessor` runs *before* the switch but its return is **discarded** (empty `if`, `:49-52`), so both run. There's a **stub** `[PacketAttribute(1022)] HandleAttack(...)` at `src/Nyx/Network/GamePackets/AttributePacketHandlers.cs:84-100` that only logs. Safe today only because `ProcessAsync` result is ignored — a latent trap if someone later makes it short-circuit.

### AttackResult → wire mapping gap (core integration work)
- `Modules/Nyx.AttackEngine/Combat/AttackResult.cs` is **orphaned** — nothing in `src/` references it. No mapping code exists.
- Mapping needed:
  - `Damage` → `Attack.Damage`(off 28) / `SpellUse` target `Damage`
  - `IsCritical` → `AttackEffects1.CriticalStrike` (bit 0x4) / `Eff1` byte
  - `IsMiss` → `SpellUse.Hit=false` (1105 only); on plain `Attack` (1022) there's **no `Hit` boolean** — melee misses use convention `Damage=0`
  - `TargetKilled` → death packet / `Attack.Kill` (14)
  - `StatusApplied` / `NextMagicType` → **no wire field** in 1022/1105; need separate status packets (e.g. MsgData 1033) + combo-window timers. The `MagicType` model already carries `Status`/`NextMagic`/`ComboDelay`/`ComboTimeout`, but sending them is unwired.

---

## 6. Build / deploy setup

- **Target framework: `net9.0`** for all real projects (two use `net9.0-windows`: `Nyx.Domain`, `Nyx.HexChess`). **No `global.json`** → SDK unpinned.
- **Already-referenced DB packages:** Dapper `2.1.2` (server) / `2.1.4` (AttackEngine); MySqlConnector `2.4.0`; Npgsql `8.0.0`; EF Core `8.0.13` + Pomelo `8.0.3` (legacy MySQL); StackExchange.Redis `2.8.16`.
- **Microsoft.Extensions.*** `9.0.0` (DI, Hosting, Logging, Configuration, Options, ObjectPool, HealthChecks). Serilog `4.3.0`. Also NLua, protobuf-net, BouncyCastle, OpenTelemetry.
- **Build/run:** `Nyx.Server.csproj` is a **plain Windows console Exe** (`OutputType=Exe`). Built via `dotnet build Nyx.sln`. Output flattened to `src/Nyx/bin/Debug/net9.0/` (`AppendTargetFrameworkToOutputPath=false`). **No Docker / systemd / CI / compose** — deployment is a manual exe drop. Legacy DB files + `Config/**` copied as `<Content>`.
- **Third-party DLLs** added manually via `<Reference HintPath="..\..\ref\dlls\*.dll">` (`CO2_CORE_DLL.dll`, `NpcDialogs.dll`, etc.).

### How AttackEngine gets referenced/deployed
1. Add `<ProjectReference Include="..\..\Modules\Nyx.AttackEngine\Nyx.AttackEngine.csproj" />` to `src/Nyx/Nyx.Server.csproj` (mirror `Nyx.AI` ref at lines 145-152). Its DLL auto-copies to `src/Nyx/bin/Debug/net9.0/` — **no extra deploy step**.
2. Author an `AddAttackEngine(this IServiceCollection)` extension calling `AttackEngineBuilder.BuildAsync(...)`, registering `SkillDataCache`/`AttackPipeline` as singletons — mirror `services.AddMonsterSystem()` (`Program.cs:390`).
3. No Docker/CI changes needed.

---

## Consolidated flags / ambiguities

1. 🔴 **AttackEngine is orphaned** — implemented but unreferenced; not running. Wiring is straightforward but must be authored.
2. 🔴 **Live combat (`Handle.cs` + `Battle/*`) is the real path** and does NOT use AttackEngine. Any integration must decide: route `case 1022` into `AttackPipeline`, or coexist. `Handle.cs` is 628 KB and interleaves compute + packet building — high-risk refactor.
3. 🔴 **`AttackResult` has no wire mapping** (§5) — must author the 1022/1105 adapter; `IsMiss`/`StatusApplied`/`NextMagicType` lack direct wire fields.
4. ⚠️ **`Entity.Boss` setter is broken** (`Entity.cs:3798` always writes 1) — fix before using it for MVP branching.
5. ⚠️ **No MVP/elite/rank concept** in live data — only `Boss` flag. Extend `MonsterInformation`/`Entity` rather than invent parallel fields. AttackEngine's `Mvp` mode (1.15×) assumes boss = MVP.
6. ⚠️ **`cq_magictype` not in live Postgres schema** — AttackEngine reads it, but the migration SQL doesn't provision it. Provision + confirm before relying on `SkillDataCache`.
7. ⚠️ **Virtue / weapon-type / proficiency / EP not on `Entity`** — live data is on `GameClient` or derived; reconcile with AttackEngine's `AttackContext` fields.
8. ⚠️ **Dual packet dispatch** — empty `[PacketAttribute(1022)]` stub + discarded `ProcessAsync` return. Leave as-is or the stub will shadow live combat.
9. ⚠️ **MySQL is dead for runtime** — only Postgres active, no provider flag. AttackEngine's `Func<DbConnection>` will receive Npgsql.
10. ⚠️ **Stale dirs** (`Nyx/`, `Nyx.AI/`, `Nyx.Network/`, `Nyx.Shared/`, `Output/`) — harmless but confusing; recommend cleanup.
11. ⚠️ **`Nyx.Domain` references `Nyx.Server`** (inverted layer) and **`Nyx.AttackSystem` is a stub overlapping AttackEngine** — clarify intended separation.

---

## Bottom line for planning
`Nyx.AttackEngine` is exactly the library described (validation → target resolution → damage → post-effects, keyed by `(type, level)` via `FrozenDictionary`, with a custom-handler escape hatch). It's well-built but **completely disconnected** from the live `Handle.cs`/`Battle/*` combat path and has **no packet adapter**. The integration work is: (a) reference + DI-wire it, (b) build the `AttackResult`→1022/1105 adapter, (c) route `case 1022` into the pipeline (or run in parallel), and (d) resolve the live-vs-module data-model gaps (Boss/MVP, Virtue, weapon/proficiency, `cq_magictype` provisioning).
