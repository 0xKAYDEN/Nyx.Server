# Refactoring & Upgrade Plan — Integrating `Nyx.AttackEngine`

**Goal:** Replace the monolithic, inline combat code (`Handle.cs` + `Battle/*`) with the already-built, generic `Nyx.AttackEngine` pipeline, while (a) preserving exact damage behavior, (b) mapping results to the client wire format, and (c) closing the live-vs-module data-model gaps.

**Status of `Nyx.AttackEngine`:** Implemented (23 files, net9.0, Dapper-only) but **orphaned** — not referenced by `Nyx.Server`, not running. This plan wires it in and routes live traffic through it, behind a feature flag during rollout.

---

## 0. Guiding principles
1. **No behavior regression.** The live `MyMath` `Battle/*` formulas are the source of truth. The engine's `DamageSteps` must reproduce them exactly (or the delta is intentional and documented). A **shadow/compare harness** validates this.
2. **Strangulate, don't rewrite.** Route `case 1022` into the engine but keep `Handle.cs` reachable behind a config flag (`Combat:UseAttackEngine`) so rollback is a one-line config change.
3. **Adapter, don't mutate `Entity` semantics.** The engine works on `AttackContext`/`IBaseEntity`. Bridge `Entity` ↔ `AttackContext` in an adapter layer; don't rewrite `Entity` to suit the engine yet.
4. **Provision data before trusting the cache.** `cq_magictype` is not in the live Postgres schema. Provision it and verify `SkillDataCache` loads before cutover.

---

## Phase 1 — Foundation & data-model reconciliation (no runtime change)
*Goal: make the engine runnable and correct against the live schema without touching combat flow.*

### 1.1 Reference & DI wiring
- `src/Nyx/Nyx.Server.csproj`: add `<ProjectReference Include="..\..\Modules\Nyx.AttackEngine\Nyx.AttackEngine.csproj" />` (mirror `Nyx.AI` ref, lines 145-152).
- Author `src/Nyx/Extensions/AttackEngineServiceCollectionExtensions.cs`:
  - `AddAttackEngine(this IServiceCollection, IConfiguration)` → calls `AttackEngineBuilder.BuildAsync(...)`, registers `SkillDataCache` + `AttackPipeline` as **singletons**.
  - Mirror `services.AddMonsterSystem()` (`Program.cs:390`); call it inside `ConfigureServices` (`Program.cs:343`).
- The factory passed to `BuildAsync` must return the **live Npgsql** `DbConnection` (server is Postgres-only; see recon §3). Reuse `IDatabaseService`'s connection or `PostgresConnectionFactory`.

### 1.2 Provision `cq_magictype` in Postgres
- Add a migration SQL under `src/Nyx/Database/PostgreSQL/` creating `cq_magictype` (columns matching `Modules/Nyx.AttackEngine/Database/Model/MagicType.cs`), seeded from the existing `database/magictype.txt` (the legacy source `SpellTable` reads) or from the original `SQL/db_6370.sql`.
- Confirm `DapperSkillRepository` (SELECT from `cq_magictype`) loads all rows and `SkillDataCache` builds its `FrozenDictionary<SkillKey, MagicType>` keyed by `(type, level)`.
- Add a **startup assertion**: if `SkillDataCache` count == 0, log a fatal warning (don't silently fall back).

### 1.3 Bridge `Entity` → `AttackContext` (adapter)
- New file `src/Nyx/Game/Attacking/Adapters/EntityCombatAdapter.cs`:
  - `ToAttackContext(Attack packet, Entity attacker, Entity target)` → builds `Nyx.AttackEngine.Combat.AttackContext`:
    - Stats from `IBaseEntity` (HP/MP/atk/def/magic-def/dodge/level).
    - `AttackerCurrentMp` ← `Entity.Mana`; `AttackerCurrentEp` ← reconcile with `Entity.Energy` (Epic-Taoist semantics — decide authoritative source; document).
    - `ProficiencyLevel` / weapon-correctness ← derived from `attacker.Owner.Equipment` + `PacketHandler.IsBow` + `GameClient.Weapons` (recon §4).
    - `Mode` ← map from `attacker.EntityFlag`/`target.EntityFlag` + `Entity.Boss` to `AttackMode` enum (Pvp/Pve/Mvp/Pvm). **`Mvp` = target is boss** (recon §4 note: AttackEngine assumes boss = MVP, 1.15×).
    - `TargetIsPlayer` ← `target.EntityFlag == Player`.
  - Keep this adapter as the **single** place that knows about `Entity`-specific quirks.

### 1.4 Fix the data-model gaps (small, isolated)
- **`Entity.Boss` setter** (`Entity.cs:3798`): currently `set { SpawnPacket[_Boss] = 1; }` — ignores value. Fix to `set { _boss = value; SpawnPacket[_Boss] = value; }` (and add a backing field). Required before MVP branching is trustworthy.
- **Virtue**: document that pipeline reads `attacker.Owner.VirtuePoints` (`GameClient.cs:307`); add a safe accessor on the adapter that returns 0 for non-player entities (no `Owner`).

### 1.5 Reconcile module overlap
- Decide the **canonical** combat library. Recommend: **`Nyx.AttackEngine` is canonical; `Nyx.AttackSystem` is deprecated/merged.** Mark `Nyx.AttackSystem` as obsolete or delete once AttackEngine is live. Update AGENTS.md to reflect this.

**Exit criteria (Phase 1):** Solution builds; server starts; `SkillDataCache` populated and asserted; adapter unit-tested against sample `Entity`/`Attack` inputs; `Handle.cs` still fully in control (flag off).

---

## Phase 2 — The `AttackResult` → packet adapter (the client contract)
*Goal: translate engine output into the exact wire bytes the client expects, with zero loss.*

### 2.1 Build `AttackResultMapper`
- New file `src/Nyx/Game/Attacking/Adapters/AttackResultMapper.cs`:
  - `ToAttackPacket(AttackResult, Entity attacker, Entity target) → Attack` (1022):
    - `Damage` → `attack.Damage` (off 28)
    - `IsCritical` → `AttackEffects1.CriticalStrike` bit in `Effect1`
    - `IsMiss` → on **melee (1022)** set `Damage = 0` (no `Hit` bool on 1022); on **magic (1105)** set `SpellUse.DamageClass.Hit = false`
    - `TargetKilled` → emit `Attack.Kill` (14) / death handling
  - `ToSpellUse(AttackResult[], ...) → SpellUse` (1105) for magic/AoE, mapping per-target `Damage/Hit/Eff1/Eff2/newX/newY`.
  - `StatusApplied` → enqueue a status packet (MsgData 1033 or equivalent); `NextMagicType`/`ComboDelay`/`ComboTimeout` → start a server-side combo-window timer (no wire field exists).

### 2.2 Confirm wire completeness
- Enumerate every field `AttackResult` exposes vs what `MsgAttack.cs`/`[1105]-MsgMagicEffect.cs` carry. Any unmappable field (e.g. `StatusApplied`, `NextMagicType`) gets an explicit "handled via X" note in code comments — no silent drops.

**Exit criteria (Phase 2):** A unit test feeds a known `AttackResult` and asserts the produced 1022/1105 byte layout matches a hand-built reference packet. No field dropped without a documented sink.

---

## Phase 3 — Shadow mode (validate without risk)
*Goal: run old + new side-by-side; compare; never ship unverified damage.*

### 3.1 Dual execution behind flag
- In `PacketHandler.cs:1940` `case 1022:`, when `Combat:UseAttackEngine == false` (default), call `Handle` as today.
- Add a **shadow path** (always when flag is on, or always regardless): compute result via `AttackPipeline` → `AttackResultMapper`, but **only log the diff** against what `Handle` would have produced (damage, crit, kill, status). Do not yet send the engine's packet.
- Emit metrics: mismatch count, per-`MagicType` divergence. Surface in Serilog/OpenTelemetry.

### 3.2 Formula parity
- Capture the exact live formulas from `Battle/PvP.cs`, `Battle/PvM.cs`, `Battle/MvP.cs`, `Calculate.cs` (recon §2). Diff them against engine `DamageSteps` (BasePower, AttrEffect, ModeMultiplier). Document every intentional deviation (e.g. `ModeMultiplier` Pvp 0.5 / Mvp 1.15).
- Fix engine steps until shadow diffs → 0 for a representative skill/attack corpus (melee, ranged, AoE, PvP, boss, status skills).

**Exit criteria (Phase 3):** Shadow diffs at zero across the test corpus; green for ≥ N battles in a staging realm.

---

## Phase 4 — Cutover (engine sends for real)
*Goal: engine becomes the live path; legacy `Handle` retained as fallback.*

### 4.1 Flip the send path
- When `Combat:UseAttackEngine == true`: route `case 1022` → `AttackPipeline` → `AttackResultMapper` → `SendScreen`. Legacy `Handle` is **not** called for compute (or called only as fallback on pipeline exception).
- Keep `Handle.cs` in the tree (commented entry or flag-gated) for emergency rollback.

### 4.2 Exception safety
- Wrap pipeline execution in try/catch; on exception, fall back to `Handle` for that single attack and log. Prevents a pipeline bug from hard-breaking combat server-wide.

### 4.3 Remove dual packet-dispatch trap
- Resolve the `PacketProcessor.ProcessAsync` discarded-return ambiguity (`PacketHandler.cs:49-52`) and the empty `[PacketAttribute(1022)]` stub (`AttributePacketHandlers.cs:84`). Either make `ProcessAsync` authoritative (and have it call the engine) or explicitly exclude 1022 from the attribute system to avoid shadowing live combat.

**Exit criteria (Phase 4):** Flag on in staging → combat fully engine-driven; rollback to flag off restores `Handle` with no code change beyond config.

---

## Phase 5 — Cleanup & hardening (post-cutover)
*Goal: pay down the structural debt the recon surfaced.*

### 5.1 Retire legacy combat
- Once stable on engine for a release: deprecate `Handle.cs` (delete or move to `legacy/`), delete `Battle/*` `MyMath` combat partials, remove `Calculate.Ranged` combat math (keep non-combat helpers if any).
- Fold any `Handle.cs` logic the engine doesn't cover (interaction requests 46-49, weapon-skill procs 1025) into custom handlers (`ISkillCustomHandler`) or adapter steps.

### 5.2 Entity model cleanup
- Add explicit fields where derivation is fragile: consider `Entity.Elite`/`MonsterRank` if an MVP tier beyond boss is needed (recon §4 flag 5).
- Move `Virtue` consideration: either surface `VirtuePoints` onto `Entity` (with `Owner` fallback) or formalize the adapter accessor.
- Unify EP semantics: pick `Energy` vs `AttackerCurrentEp` as canonical; document.

### 5.3 Structural debt
- Resolve `Nyx.Domain → Nyx.Server` inverted reference (recon §1/§6 flag 11).
- Delete stale dirs (`Nyx/`, `Nyx.AI/`, `Nyx.Network/`, `Nyx.Shared/`, `Output/`) and the unused `ref/AccountServerBinary2015`.
- Remove dead MySQL code (`AbstractDbContext.UseMySql`, Pomelo/MySqlConnector packages) if no EF-MySQL path remains — or keep behind a documented, tested flag.
- Add `global.json` pinning the .NET 9 SDK for reproducible builds.

### 5.4 Deploy
- No Docker/CI changes needed (recon §6). Build via `dotnet build Nyx.sln`; AttackEngine DLL auto-copies to `src/Nyx/bin/Debug/net9.0/`. Add `Combat:UseAttackEngine` to `ServerConfigurations.json` with default `false`.

---

## Risk register
| Risk | Impact | Mitigation |
|---|---|---|
| Damage regression | High | Shadow mode (Phase 3) + formula diff; flag-gated rollback |
| `Entity.Boss` broken setter silently breaks MVP | Med | Fixed in 1.4 before any MVP branching |
| `cq_magictype` not provisioned | High (cache empty) | Phase 1.2 migration + startup assertion |
| `AttackResult` fields unmappable to wire | Med | Phase 2.2 explicit sinks; no silent drops |
| `Handle.cs` 628 KB refactor is high-risk | High | Strangulation, not rewrite; keep as fallback |
| Dual packet dispatch shadowing | Med | Phase 4.3 explicit exclusion/authoring |

## Sequenced summary
1. **Phase 1** — wire DI + provision `cq_magictype` + `Entity`→`AttackContext` adapter + fix `Boss`/virtue gaps. *(builds, no behavior change)*
2. **Phase 2** — `AttackResult`→1022/1105 mapper with documented sinks.
3. **Phase 3** — shadow mode + formula parity to zero diff.
4. **Phase 4** — flag-gated cutover + exception fallback + dispatch cleanup.
5. **Phase 5** — retire legacy, clean entity model, pay structural debt.

**Recommended order of implementation:** 1.1 → 1.2 → 1.4 → 1.3 → 2.1 → 2.2 → 3.1 → 3.2 → 4.1 → 4.2 → 4.3 → 5.x
