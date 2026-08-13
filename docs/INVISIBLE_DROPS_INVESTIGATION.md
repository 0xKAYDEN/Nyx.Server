# Invisible item drops — investigation & fix

## Symptom

Items dropped by monsters or players are not drawn, but can still be picked up "blind"
(the pickup works, you just cannot see the item on the ground).

## What the split tells us

- **Pickup reads server state** (`Map.FloorItems`), which is why picking up an invisible
  item still succeeds.
- **Rendering needs a `MsgMapItem` (1101) packet** to be broadcast to the players whose
  screen the floor item is in. If that packet is never sent (or sent before the item is in
  the viewer's screen), the item never appears.

## Root cause: UID range collision

`FloorItem.FloorUID` started at **0** (`src/Nyx/Network/GamePackets/[1101] - MsgMapItem.cs`),
whereas every other allocator sits in a disjoint high range:

| Allocator        | UID range            |
|------------------|----------------------|
| Monsters         | `400000` / `100000`  |
| Clones           | `700100`             |
| Players & items  | `1000000`            |
| Floor items      | `0` (was the bug)    |

The per-player **screen is keyed purely by UID** — there is no object-type component
(`Screen.cs`, `Add`/`Contains`). So a floor item whose UID collides with something already in
the screen is:

1. **Rejected by `Screen.Add`**, which makes `FloorItem.SendSpawn` skip the send entirely, and
2. **Skipped forever** by the screen refresh's `if (Contains(item.UID)) continue;` guard.

Net effect: the item exists on the map, is pick-up-able, but is invisible on every client.

## Fix applied

Move floor-item UIDs into a range disjoint from every other allocator:

```csharp
public static AtomicCounter FloorUID = new AtomicCounter(800000) { Finish = 999999 };
```

This keeps floor-item UIDs in `[800000, 999999]`, which is disjoint from monsters
(100000/400000), clones (700100), and players/inventory items (1000000).

> **Why not a different constant?** If the client attaches meaning to floor-item UID ranges,
> the exact constant may need to differ. This was deliberately chosen to sit in the one gap in
> the existing allocator ranges and should be verified in-game (drop an item in front of a
> second client and confirm it renders).

## A wrong turn worth not repeating

The obvious fix — broadcasting from `Map.AddFloorItem` — is **wrong**. Roughly 40 call sites
already broadcast afterwards (e.g. `MonsterInformation.SendScreenSpawn` ×26,
`GameClient.SendScreenSpawn`, or an explicit `Kernel.GamePool` loop in `[GM]ApeCity.cs`), so
centralising there would double-send every drop. `Map.cs` is intentionally untouched.

## Secondary observation (not yet fixed)

`GameClient.SendScreenSpawn` broadcasts only to players already in the **dropper's** screen,
while `MonsterInformation.SendScreenSpawn` sweeps `Kernel.GamePool` with a distance test. The
two reach different audiences for the same kind of event; player-initiated drops use the
narrower one. If a player-initiated drop is ever seen on one client but not another, this
audience mismatch is the next thing to look at.
