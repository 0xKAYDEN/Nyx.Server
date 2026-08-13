# Nyx.Combat

The attack system, as a self-contained library.

`Nyx.Combat` resolves one question and nothing else: **given an attacker, a target
and optionally a skill, what happens?** It does not own entities, does not touch
sockets, does not write to the database during combat, and does not know that
`MsgAttack` exists. The host owns all of that and calls in.

- **Target framework:** `net9.0`
- **Package references:** none — pure BCL
- **Allocations per attack:** zero, single-target or twenty-target
- **Threading:** one instance serves every map thread; no external locking

---

## Why another one

There were already four overlapping attack code paths in this repo
(`Game/Attacking/Handle.cs` at ten thousand lines, the `Skills/` dispatcher,
`Nyx.AttackEngine`, and the `Nyx.AttackSystem` stub). This is a clean-room
replacement for the latter two, built to the design in
`docs/Generic_Attack_System_Design.md` but with the damage math taken from what the
live server actually computes in `src/Nyx/Game/Attacking/Battle/*` rather than
invented.

Three properties drove every decision:

1. **The database is the only source of skill data.** No `magictype.txt` parser, no
   constants table, no `if (skillId == 1115)` anywhere in a calculator.
2. **The hot path allocates nothing.** A server pushing thousands of attacks a
   second cannot afford a gen-0 collection caused by combat.
3. **Every number an operator might want to change is a configuration property**,
   not a literal buried three call levels deep.

---

## Getting an engine

```csharp
// Boot: load the catalog once from cq_magictype.
var source  = new DbSkillSource(ct => OpenConnectionAsync(ct));
var catalog = new SkillCatalogHost(source);
await catalog.ReloadAsync();

// Build the engine once, keep it for the process lifetime.
CombatEngine engine = new CombatEngineBuilder()
    .WithSkills(catalog)
    .WithWorld(new NyxCombatWorld(mapManager))   // your ICombatWorld
    .WithOptions(CombatOptions.Default)
    .AddObserver(new ExperienceObserver(...))
    .AddObserver(new DurabilityObserver(...))
    .Build();
```

Register it as a singleton if the host uses DI; hold it in a static if it does not.
The library takes no dependency on `Microsoft.Extensions.*` precisely so that either
works.

## Resolving an attack

Single target — the overwhelming majority of traffic:

```csharp
var request = new AttackRequest(in attacker, in target, AttackKind.Melee, nowMs);
HitResult hit = engine.ResolveSingle(in request, basicAttackRange: 1);

if (hit.Status == AttackStatus.Hit)
    ApplyDamage(hit.TargetId, hit.Damage, hit.Effects);
```

Skills, including area skills:

```csharp
var request = new AttackRequest(
    in attacker, in target, AttackKind.Magic, nowMs,
    skillType: 1000, skillLevel: 4, targetX: x, targetY: y);

engine.Resolve(in request, state: this, static (self, in AttackOutcome outcome) =>
{
    if (outcome.IsRejected) { self.SendReject(outcome.Reason); return; }

    self.SpendMana(outcome.ManaCost);
    foreach (ref readonly HitResult hit in outcome.Hits)
        self.ApplyDamage(hit);
});
```

The callback shape is not decoration. `AttackOutcome.Hits` points at a `stackalloc`
buffer inside `Resolve`, which is what makes a twenty-target Cyclone allocation-free.
`AttackOutcome` is a `ref struct`, so the compiler will refuse to let you store it —
copy out what you need before returning.

---

## Architecture

```
                     AttackRequest  (readonly ref struct)
                            │
                    ┌───────▼────────┐
                    │ AttackValidator│  cheapest checks first, returns RejectReason
                    └───────┬────────┘
                            │
                    ┌───────▼────────┐
                    │ TargetSelector │  shape dispatch, caller-owned buffers
                    └───────┬────────┘
                            │  per victim
                    ┌───────▼────────┐
                    │HitRateCalculator│ evasion roll
                    └───────┬────────┘
                            │
                    ┌───────▼────────────────┐
                    │DamageCalculatorRegistry│  Strategy, array-indexed by scenario
                    │  PvP / PvM / MvP / PvE │
                    └───────┬────────────────┘
                            │
                    ┌───────▼────────┐
                    │ ISkillBehaviour│  optional, per-skill special case
                    └───────┬────────┘
                            │
                    ┌───────▼────────┐
                    │ ModifierChain  │  Chain of Responsibility, flattened
                    └───────┬────────┘
                            │
                    ┌───────▼────────┐
                    │  ObserverList  │  Observer, exception-isolated
                    └───────┬────────┘
                            ▼
                       AttackOutcome
```

Patterns used, and why each earns its place:

| Pattern | Where | Reason |
|---|---|---|
| Strategy | `IDamageCalculator` per `CombatScenario` | The four scenarios have genuinely different rules. One method with a scenario switch is how `Handle.cs` reached ten thousand lines. |
| Registry | `DamageCalculatorRegistry` | A four-slot array indexed by the enum. No dictionary, no hashing, no branch. |
| Template Method | `DamageCalculatorBase` | Pins the eleven-step order so a subclass cannot silently reorder BP reduction and the rebirth multiplier. |
| Chain of Responsibility | `ModifierChain` | Server owners bolt on events and custom gems without touching the core formula. Flattened into an array — no pointer chase per link. |
| Observer | `ICombatObserver` | XP, durability, quests, aggro and PK flags subscribe. The engine stays ignorant of all of them. |
| Builder | `CombatEngineBuilder` | Nine constructor parameters is right for testing and hostile to a caller who wants the defaults. |
| Facade | `CombatEngine` | One entry point for the host. |

Patterns deliberately **not** used: no reflection-driven handler discovery (slow at
boot, breaks under trimming, and makes the special cases ungreppable), no async
pipeline (combat resolution is pure arithmetic — `async` would add state-machine
allocations and buy nothing), no DI container coupling.

---

## Performance notes

Choices that would look over-engineered outside a hot path, with the reason each one
is here:

- **`Combatant` is a `readonly struct` with no reference fields.** It is a snapshot
  the host fills per attack and passes with `in`. No GC pressure, no aliasing
  surprises when a target dies mid-resolution.
- **`AttackRequest` / `AttackOutcome` / `DamageContext` are `ref struct`s.** They
  cannot be captured, boxed or stored, which is exactly the lifetime a per-packet
  object should have — enforced by the compiler rather than by a comment.
- **`FastRandom`** is a `[ThreadStatic]` xoshiro256\*\* using Lemire's bounded
  reduction. `Random.Shared` is thread-safe but goes through an indirection and a
  more expensive algorithm; combat rolls dice several times per hit.
- **`CooldownTable`** is 32 lock stripes over `Dictionary<ulong, long>`, keyed by a
  packed `(entityId, skillType)` integer with monotonic millisecond stamps. The
  naive `Dictionary<(uint, ushort), DateTime>` under one lock allocates on hash,
  compares `DateTime`s, and serialises every combat thread. Expired entries are
  swept incrementally (64 per stripe, 30 s apart) so the table cannot grow without
  bound.
- **`SkillCatalog`** is a pair of `FrozenDictionary`s built once. Lookups are
  read-only and lock-free; a reload builds a whole new catalog and swaps a
  `volatile` reference, so readers never block and never see a torn catalog.
- **Stack budget.** `Resolve` reserves roughly 11 KB of stack for a skill cast
  (64 candidate `Combatant`s at ~120 bytes, 24 targets, 24 `HitResult`s) and about
  3 KB for a basic strike. That is nothing against a 1 MB thread stack, but it is
  worth knowing if the host ever calls the engine from deep inside a recursive AI
  evaluation. Adjust `CandidateBudget` / `TargetBudget` in `CombatEngine` if your
  content uses wider area skills than retail's ~20-target maximum.
- **`SELECT *` in `DbSkillSource` is intentional.** Columns are resolved to ordinals
  by name exactly once before the first row, and `cq_magictype` contains `range` and
  `percent` — reserved words needing backticks on MySQL and double quotes on
  PostgreSQL. Naming them explicitly would force a dialect switch into a loader
  whose entire point is that it runs unmodified on both.

---

## Configuration

`CombatOptions` is a `record` whose defaults reproduce the current live formula, so
switching the engine on changes as little as possible for players until an operator
deliberately retunes something. The one deliberate exception is `EnableHitRateRoll`,
noted below. Highlights:

| Property | Default | Effect |
|---|---|---|
| `BattlePowerModel` | `LegacyExponential` | `LegacyExponential` is Nyx's current `2^(Δbp/12)` curve; `RetailLinear` is the bounded retail one; `Disabled` removes BP from the formula. |
| `FirstRebirthReduction` / `SecondRebirthReduction` | `0.70` / `0.50` | Incoming damage multiplier by target rebirth count. |
| `EnableHitRateRoll` | `true` | Rolls accuracy against dodge before any damage math, as retail does. The live Nyx path has no miss roll at all — set this to `false` to reproduce that exactly. |
| `EnforceBasicAttackCooldowns` | `false` | Server-side rate floors (melee 500 ms, ranged 800 ms, magic 1000 ms). Off by default because the live server already paces attacks — enabling both would halve everyone's attack speed. |
| `DefaultSkillCooldownMs` | `2000` | Only used for rows declaring neither `coldtime` nor `atk_interval`. |
| `PvmDamageCapPercentOfMaxLife` | `0` (off) | Retail caps player-to-monster damage as a share of the monster's max HP. |
| `GlobalDamageMultiplier` | `1.0` | The operator's big red knob. |

---

## What the host must implement

Exactly one interface, with two methods:

```csharp
public interface ICombatWorld
{
    int  QueryNearby(ushort mapId, ushort x, ushort y, int radius, Span<Combatant> buffer);
    bool CanAttack(in Combatant attacker, in Combatant target);
}
```

That is the whole seam. `QueryNearby` writes into a caller-owned buffer and must not
allocate or throw on overflow. `CanAttack` holds all the policy the engine has no
business knowing: PK mode, guild and team membership, safe zones, event rules.

Keeping the surface this small is what makes the damage model testable with a
ten-line fake, and it is the reason none of the combat math needs a running server
to verify.

Optional seams: `ICombatObserver` (events), `IDamageModifier` (custom damage rules),
`ISkillBehaviour` (per-skill special cases), `IRandomSource` (deterministic tests).

---

## Wire mapping

The engine reports effects as `HitEffects` flags and leaves packet encoding to the
host, because the wire format is the host's concern and changes between client
versions. The adapter mapping for the current client:

| `HitEffects` | `MsgAttack.Effect1` |
|---|---|
| `CriticalStrike` | `0x04` |
| `Breakthrough` | `Break` (10) |
| `Block`, `Immunity`, `Lucky`, `Penetration` | server-side only; no wire bit in this client |
| `Dodged` | send the attack with damage `0` |

`AttackKind` maps to the packet's attack type: `Melee = 2`, `Magic = 24`,
`Ranged = 28`; a killing blow uses `Kill = 14`. Note that `MsgAttack` overloads
offset 28, so read the existing `[1022] - MsgAttack.cs` before writing the adapter.

---

## Skill data

Everything comes from `cq_magictype` (DDL at
`src/Nyx/Database/PostgreSQL/migration.sql:1025`, 37 columns, `UNIQUE(type, level)`).

Two columns are overloaded and the loader decodes both:

- **`power`** — values above `30000` mean *percentage of weapon damage*
  (`power - 30000`); anything else is a flat addend. Exposed pre-decoded as
  `PowerPercent` / `PowerFlat`.
- **`weapon_subtype`** — legacy dumps pack two subtypes into one integer
  (`v % 1000` and `v / 1000 % 1000`), with `50000` and `60000` as sentinels.
  Unpacked into `RequiredWeapon1` / `RequiredWeapon2`.

`coldtime` values below 1000 are treated as seconds and normalised to milliseconds,
which is how most circulating dumps store them.

To reload after editing skills in SQL, call `SkillCatalogHost.ReloadAsync()`. It
builds a fresh catalog off the hot path and swaps it atomically; in-flight attacks
finish against the old one.

---

## Layout

```
Abstractions/   the seams: ICombatWorld, ISkillCatalog, ISkillSource,
                IDamageCalculator, IDamageModifier, ICombatObserver,
                ISkillBehaviour, IRandomSource
Calculators/    scenario strategies, the shared base, hit rate, the registry
Configuration/  CombatOptions — every tunable constant
Cooldowns/      CooldownTable (concurrency) + CombatCooldownManager (policy)
Engine/         CombatEngine, its builder, ModifierChain, ObserverList,
                SkillBehaviourRegistry
Model/          Combatant, SkillDefinition, SkillKey, AttackRequest,
                AttackResult, enums
Numerics/       FastRandom, MathEx
Skills/         DbSkillSource, SkillCatalog, SkillCatalogHost
Targeting/      TargetSelector — square, circle, line, sector, bomb, chain
Validation/     AttackValidator
```
