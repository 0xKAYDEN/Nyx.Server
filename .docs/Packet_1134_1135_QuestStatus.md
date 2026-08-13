# Packet Reference: [1134] MsgQuestStatus & [1135] MsgTaskStatus

> Source: `src/Nyx/Network/GamePackets/[1134 - 1135] - MsgTaskStatus.cs`  
> Original author: legacy server code  
> Documented: 2026-07-31

---

## Overview

Two related network packets handle quest lifecycle in Nyx:

| Packet ID | Name           | Direction      | Purpose                                          |
|-----------|----------------|----------------|--------------------------------------------------|
| **1134**  | MsgQuestStatus | Server → Client | Full quest list / state changes (begin, quit, complete) |
| **1135**  | MsgTaskStatus  | Server → Client | Real-time progress update on a single quest     |

Both are sent exclusively from the **server to the client**. No client-to-server variants exist in this file.

---

## Packet 1134 — MsgQuestStatus (`QuestPacket`)

### Wire Layout

```
Offset  Size    Field
─────────────────────────────
0       2B      Payload length (total − 8)
2       2B      Packet ID = 1134
4       2B      Action (QuestAction)
6       2B      Count  (number of QuestData items)
8+      N×12B   QuestData[]  (see struct below)
```

### `QuestAction` enum

| Value | Name       | Meaning                                |
|-------|------------|----------------------------------------|
| 1     | Begin      | New quest accepted by the player       |
| 2     | QuitQuest  | Player abandoned the quest             |
| 3     | List       | Full quest list broadcast (SendFullGUI)|
| 4     | Complete   | Quest finished                         |

### `QuestData` struct (12 bytes per entry)

```
Offset  Size    Field
─────────────────────────────
0       4B      UID      (QuestID — uint32)
4       4B      Status   (QuestStatus — uint32)
8       4B      Time     (uint32 — deadline / timestamp, 0 if N/A)
```

### `QuestStatus` values

| Value | Name      | Meaning                                    |
|-------|-----------|--------------------------------------------|
| 0     | Accepted  | Quest is active / in progress              |
| 1     | Finished  | Quest completed successfully               |
| 2     | Available | Quest can be accepted (not yet started)    |
| 5     | TaskFail  | Quest failed                               |

---

## Packet 1135 — MsgTaskStatus (`QuestUpdatePacket`)

### Wire Layout (fixed 60 bytes)

```
Offset  Size    Field
─────────────────────────────
0       2B      Payload length (52)
2       2B      Packet ID = 1135
4       2B      [padding — unused]
8       4B      UID      (QuestID)
12      4B      Primary progress counter  (index 1)
16      4B      Secondary counter / flag  (index 2 — Bright milestone)
20      4B      Tertiary counter          (index 3)
24      4B      Quaternary counter        (index 4)
28      4B      Quinary counter           (index 5)
32      4B      ThunderStrike counter     (realm quest)
36      4B      CrystalBounty counter     (realm quest)
40      4B      AshesOfAnger counter      (realm quest)
44      4B      [padding — unused]
48      4B      [padding — unused]
52      4B      [padding — unused]
56      4B      [padding — unused]
```

> **Note:** Offsets 12–28 duplicate the original `QuestData[index]` indexer logic. The indexer used `8 + 4*index`, so index 0 would overlap the UID field — that path was never used in practice. Fields 12+ are the meaningful progress slots.

---

## QuestType Classification

Quests are grouped into categories that determine reset behaviour and UI treatment:

| Value | Name           | Reset Behaviour                              |
|-------|----------------|----------------------------------------------|
| 1     | RecruitQuest   | —                                            |
| 2     | TutorialQuest  | —                                            |
| 3     | DailyQuest     | Cleared on daily reset (and on full login)  |
| 4     | EquipmentBonus | —                                            |
| 5     | Event          | —                                            |
| 6     | NezhaFeud      | —                                            |
| 7     | RegionQuests   | —                                            |
| 8     | Festival       | —                                            |
| 9     | CrossServer    | Cleared on cross-server reset (login)       |
| 10    | KingdomWar     | —                                            |
| 11    | ScrambleRealm  | —                                            |

---

## QuestID Registry

All known quest IDs are listed below, grouped by logical chain.

### Story / Event Chain (3xxx range)

| ID        | Value | Notes                              |
|-----------|-------|------------------------------------|
| `Message`                   | 804  |                                    |
| `UnknownDangers`            | 3632 |                                    |
| `BloodVengeance`            | 3634 |                                    |
| `EvilRoot`                  | 3635 |                                    |
| `ForgeFurance`              | 3636 |                                    |
| `GloryOfThePast`            | 3637 |                                    |
| `SecretOfBright`            | 3638 | Milestone at 15 kills (Bright flag)|
| `UnexceptedDiscovery`       | 3639 |                                    |
| `MysteriousMetal`           | 3640 |                                    |
| `SacrificetotheDead`        | 3641 |                                    |
| `HealingTheDying`           | 3642 |                                    |
| `PathToFlameTemple`         | 3643 |                                    |
| `SorrowofDesolation`        | 3644 |                                    |
| `WheelofNature`             | 3645 |                                    |
| `MetalForce`                | 3646 |                                    |
| `FireForce`                 | 3647 |                                    |
| `WaitingForMiracle`         | 3648 |                                    |
| `EndHomelessness`           | 3649 |                                    |
| `MonsterSage`               | 3633 |                                    |
| `Spirit_Beads`              | 2375 |                                    |
| `TempestWing`               | 200  |                                    |
| `TheWayofTommorow`          | 3631 |                                    |

### City Quest Chain

| ID        | Value |
|-----------|-------|
| `DisCity1`  | 6472 |
| `Discity2`  | 6473 |
| `DisCity3`  | 6474 |
| `DisCity4`  | 6475 |

### Realm / Scramble Quests

| ID                  | Value | Notes                        |
|---------------------|-------|------------------------------|
| `ScrambleforJustice` | 35034 |                            |
| `CrystalBounty`      | 35028 | Progress sent via 1135 field |
| `AshesOfAnger`       | 35024 | Progress sent via 1135 field |
| `BeastsOfLegend`     | 35025 |                            |
| `ThunderStrike`      | 35007 | Progress sent via 1135 field |

### Side / World Quests

| ID                       | Value |
|--------------------------|-------|
| `WorshipLeaders`          | 6329 |
| `TowerOfMystery`          | 6126 | Completes with 2 progress values |
| `EvilLabyrinth`           | 6467 |
| `HeavenTreasury`          | 6390 |
| `Magnolias`               | 6014 |
| `EveryThingHasAPrice`     | 6245 |
| `Release_the_souls`       | 6049 |
| `RareMaterials`           | 6366 |
| `SkyPass`                 | 6350 |

### Second Stage Chain

| ID                          | Value |
|-----------------------------|-------|
| `SecondQuestStageOne`   | 2414 |
| `SecondQuestStageTwo`   | 2416 |
| `SecondQuestStageThree` | 2418 |
| `SecondQuestStageFour`  | 2419 | 8-sub-kills roll up to 1 main kill |

### Mystery Formation Chain

| ID                       | Value |
|--------------------------|-------|
| `Secret_in_the_Chest` | 3679 |
| `Weird_Formation`      | 3680 |
| `Mind_of_Evil`         | 3682 |
| `PheasantInfestation`  | 3706 |

---

## Server-Side State: `Quests` Class

Holds all active quests for a single player (`GameClient`).

### Storage

- In-memory: `SafeDictionary<QuestID, QuestItem>`
- Persistent: MySQL `quests` table, blob column `quests`
  - Blob layout: `[count:1B] [item1:20B] [item2:20B] ...`
  - Each `QuestItem`: `[uid:4][status:4][time:4][kills:4][mob:string]`

### Key Methods

| Method                      | Description                                              |
|-----------------------------|----------------------------------------------------------|
| `Load()`                    | Deserialize blob from DB into memory                     |
| `Save()`                    | Serialize memory → blob → UPDATE DB                      |
| `Reset(client, onlyDaily)`  | Clear finished daily/cross-server quests on login or tick|
| `Accept(uid, time)`         | Start a new quest; sends Begin packet                    |
| `FinishQuest(uid)`          | Mark finished; sends Complete packet                     |
| `QuitQuest(uid)`            | Return to Available; sends QuitQuest packet              |
| `SendFullGUI()`             | Batch-send entire quest list as List packets (groups of 80)|
| `AllowAccept()`             | Returns true if active quest count < 20                  |
| `IncreaseQuestKills(...)`   | Generic kill progress — sends 1135 with 5 progress fields|
| `IncreaseQuestKills5(...)`  | Kill progress with optional Bright milestone at 15       |
| `IncreaseQuestDones(...)`   | Multi-value progress (e.g. collect multiple items)       |
| `IncreaseQuestKills2(...)`  | Stage-based: 8 sub-kills → 1 main kill (stage chains)   |
| `DoneTowerMystery()`        | Special: sets kills=1, sends two progress values         |
| `ThunderStrike / CrystalBounty / AshesOfAnger` | Realm-specific wrappers |

### Quest Limit

A player may have at most **20 accepted quests** simultaneously (`AllowAccept()`).

---

## Static Registry: `QuestInfo`

Loaded once from `database/Questinfo.ini` at startup. Maps each `QuestID` → `QuestType`.

INI format (key=value):
```ini
ActionBase=0
TotalMission=50
MissionId=3631
TypeId=2
MissionId=3632
TypeId=3
...
```

---

## Bugs & Issues Found in Original

1. **Duplicate `using NpgsqlTypes;`** — imported twice (lines 2 & 4)
2. **`QuestData` class is unreachable** — no callers construct it directly; it was replaced by `QuestUpdatePacket`-style usage but the dead class remains
3. **Indexer `this[int]` on `QuestPacket`** reads at offset `8 + 12*index` but writes at `8 + 12*index` — correct for the packet struct, but the `QuestData` class below uses `8 + 4*index` (wrong for 12-byte entries) — these are two different types, easily confused
4. **`QuestData.Bright` and `QuestData.AshesOfAnger` both map to offset 16** — they overwrite each other; `AshesOfAnger` should be offset 40
5. **`QuestData(bool)` constructor ignores the parameter** — always enters the `if (true)` branch
6. **`IncreaseQuestKills2` has dead logic** — computes `remainder` but never uses it; the while loop modifies local `dataq[2]` which is never read
7. **Magic number `162`** in `SendAutoPacket` — NPC dialog packet ID, undocumented
8. **`File.ReadAllLines` without encoding** — may produce wrong results on non-UTF8 systems
9. **`QuestInfo.Load()` mutates `current` reference after adding to dict** — if a MissionId appears multiple times, the last TypeId wins but the dict entry may point to a mutated struct

---

## Refactored Code

See the accompanying `.cs` file for the cleaned-up version. Key improvements:

- Removed duplicate `using`s
- Extracted packet ID constants (`PACKET_QUEST_LIST`, `PACKET_QUEST_UPDATE`)
- Renamed `Apend` → `Append`
- Replaced dead `QuestData : Writer` class with `QuestUpdatePacket` with explicit named properties
- Fixed `Bright` / `AshesOfAnger` offset collision
- Added XML-style section comments for readability
- Extracted repeated logic into private helpers (`TryGetActiveQuest`, `BuildProgressPacket`, `RemoveFinishedByType`)
- Fixed `QuestInfo.Load()` to properly track per-MissionId state
- Grouped `QuestID` values by logical chain with comments
- Made `Reset()` extract `RemoveFinishedByType()` helper to avoid duplication
