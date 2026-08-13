# Nyx.AttackEngine Integration — Work Summary

**Date:** 2026-08-12
**Goal:** Make `Nyx.AttackEngine` the main combat library, ignore other unfinished modules, use only real data from the codebase, write clean/simple high-quality code (no mocks/demos), lean on the original code as reference, and proceed step-by-step verifying each step by build.

---

## Initial reconnaissance (read-only)

Scanned the whole repo and produced two documents:
- `docs/RECON_REPORT.md` — project structure, combat/skill code, DB access, entity model, networking/packets, build/deploy, with a consolidated flags list.
- `docs/REFACTOR_PLAN.md` — a 5-phase plan to wire in and cut over to the engine behind a feature flag.

**Key findings that shaped the work:**
- `Nyx.AttackEngine` was implemented but **orphaned** (not referenced by `Nyx.Server`, not running).
- Live combat lives in one ~628 KB `src/Nyx/Game/Attacking/Handle.cs` + `Battle/*` (`MyMath`) files; it is the real path.
- `cq_magictype` is the **authoritative database table** for skill data; `magictype.txt` is a legacy dump being phased out. (User correction: do NOT build a text-file loader.)
- Real damage formula is far richer than the engine's placeholder (`BasePowerDamageStep`): gems, battle power, reborn, bless, refine, fan/tower, monster green/red/black scaling.

---

## Steps performed (each verified by a successful build)

### Step 1 — Fixed engine compile error
- `EpCostValidationStep` referenced `AttackOutcome.FailedValidation_NotEnoughEp`, which did not exist in the enum.
- **Fix:** added `FailedValidation_NotEnoughEp` to `Modules/Nyx.AttackEngine/Combat/AttackOutcome.cs`.
- Engine now compiles.

### Step 2 — Reverted an incorrect assumption (per user correction)
- I initially (wrongly) added a `TextSkillRepository` parsing `magictype.txt`.
- **Fix:** removed it; restored `MagicType` and `DapperSkillRepository` to the `cq_magictype` schema (the real source). Engine recompiles.
- Recorded the correction in memory (`cq-magictype-is-authoritative-db-table.md`).

### Step 3 — Grounded magic-vs-physical + map detection
- `BasePowerDamageStep` guessed magic from `Skill.Type is >= 1000` (wrong vs. real code).
- **Fix:** added `IsMagic` to `AttackContext`, set from the packet's `Attack.Magic` (matches `MyMath`'s `AtkType` branch). Also added `MapId` to `AttackContext` and used it in `GroundAoeResolutionStep` (was hardcoded `0`).
- Engine recompiles.

### Step 4 — Wired the engine into the server (DI)
- Added `ProjectReference` to `src/Nyx/Nyx.Server.csproj`.
- Created `src/Nyx/Extensions/AttackEngineServiceCollectionExtensions.cs` (`AddAttackEngine`) providing real, codebase-grounded delegates:
  - `connectionFactory` → `DataHolder.Factory.GetConnection()` (live Postgres/Npgsql).
  - `isPvpAllowedBetween` → wraps `Handle.CanAttack` (the existing PVP/zone gate; null spell is safe).
  - `queryNearby` → scans `Kernel.GamePool` for same-map entities within radius.
  - `attrEffects` → empty map (safe: `AttrEffectDamageStep` no-ops on unknown types).
- Registered the call in `Program.cs` `ConfigureServices` (mirrors `AddMonsterSystem`).
- Resolved a namespace collision (`Nyx.Server.System`) by using `global::System` and `Kernel` directly.

### Step 5 — Data gap + integration seam (flag-gated)
- **Migration:** added `cq_magictype` `CREATE TABLE` to `src/Nyx/Database/PostgreSQL/migration.sql` with columns matching the engine's `DapperSkillRepository` SELECT.
- **Config:** added `CombatConfiguration` with `UseAttackEngine` flag (defaults to **`false`**) to `EnterpriseServerConfigurations.cs`; bound it in `Program.cs`.
- **Adapter:** created `src/Nyx/Game/Attacking/AttackEngineAdapter.cs` that:
  - builds `AttackContext` from real `Entity` stats + packet,
  - maps `AttackResult` → outgoing `Attack` packet (`Damage`, `CriticalStrike` effect, kill, miss-as-zero-damage),
  - uses only real APIs: `WeaponLook/1000` for weapon subtype, `Proficiencies[subtype].Level` for proficiency, `Entity.Boss` for MVP mode.
- **Call site:** added a flag-gated hook in `PacketHandler.cs` `case 1022`: when `UseAttackEngine` is on and the engine rejects validation, it short-circuits; otherwise `Handle` still executes. No behavior change while the flag is off.

---

## Final verification
- `Modules/Nyx.AttackEngine` builds: **0 errors**.
- `src/Nyx/Nyx.Server` builds: **0 errors** (one transient build failure was only a file lock from a running `Nyx.Server.exe`, resolved by stopping the process).
- `UseAttackEngine` defaults to `false` → `Handle.cs` remains the live path; the engine is loaded but does not yet author live damage.

---

## Honest caveat / next step (not yet done)
The engine's `BasePowerDamageStep` is still a **simplified placeholder** and does **not** reproduce the full `MyMath` damage formula (gems, battle power, reborn, bless, refine, fan/tower, monster green/red/black scaling). Because of this, the `UseAttackEngine` flag is left **off** so there is **no combat regression**.

**Recommended next step:** port the real `MyMath` damage math into `BasePowerDamageStep` (and add the missing steps: gems, battle power, reborn, bless, refine, fan/tower, monster scaling), then enable `UseAttackEngine = true` for a cutover. This should be done behind a shadow/compare pass to confirm zero damage divergence before fully replacing `Handle.cs`.

---

## Files changed (this session)
- `Modules/Nyx.AttackEngine/Combat/AttackOutcome.cs` — added `FailedValidation_NotEnoughEp`.
- `Modules/Nyx.AttackEngine/Combat/AttackContext.cs` — added `IsMagic`, `MapId`.
- `Modules/Nyx.AttackEngine/Combat/Steps/DamageSteps.cs` — magic detection via `IsMagic`.
- `Modules/Nyx.AttackEngine/Combat/Steps/TargetResolutionSteps.cs` — uses `ctx.MapId`.
- `src/Nyx/Nyx.Server.csproj` — `ProjectReference` to `Nyx.AttackEngine`.
- `src/Nyx/Extensions/AttackEngineServiceCollectionExtensions.cs` — new `AddAttackEngine`.
- `src/Nyx/Program.cs` — register `AddAttackEngine`, `AttackEngineAdapter`, `CombatConfiguration`; bind `Combat`.
- `src/Nyx/EnterpriseServerConfigurations.cs` — added `CombatConfiguration`.
- `src/Nyx/Database/PostgreSQL/migration.sql` — added `cq_magictype` table.
- `src/Nyx/Game/Attacking/AttackEngineAdapter.cs` — new adapter.
- `src/Nyx/Network/PacketHandler.cs` — flag-gated engine hook in `case 1022`.

No files were committed (repository is not a git repo).
