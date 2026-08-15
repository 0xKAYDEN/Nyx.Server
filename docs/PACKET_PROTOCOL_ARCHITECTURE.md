# Packet protocol architecture

Date: 2026-08-15

## Wire contract

Nyx targets the Conquer Online **patch 6323** protocol. The repository's existing `PacketType` table and 6323 packet definitions are authoritative for message identifiers and field layouts; older public documentation is used only to corroborate framing rules. Multi-byte numeric fields are little-endian. Every normal message begins with a four-byte header:

| Offset | Size | Meaning |
|---:|---:|---|
| 0 | 2 | Declared packet length, including this header and excluding the footer |
| 2 | 2 | Message identifier |
| 4 | n | Message-specific payload |
| `length` | 8 | `TQClient` or `TQServer` for game messages only |

Authentication messages use the same length/id header but do not have the eight-byte game footer. The length distinction is deliberate: a game frame occupies `declaredLength + 8` bytes on TCP.

This contract is consistent with the Conquer Online packet tutorial, the documented TQ footer and protobuf `MsgWalk` conventions, and COPS X's generated protocol documentation. These are framing references only; Nyx's 6323 definitions control packet numbers and layouts. Sources consulted during the refactor:

- https://www.elitepvpers.com/forum/co2-programming/4387789-tutorial-introduction-packets.html
- https://www.conquerwiki.com/doku.php?id=msgwalk
- https://github.com/conquer-online/cops-protocols-doc
- https://github.com/dotnet/docs/blob/main/docs/standard/io/pipelines.md
- https://learn.microsoft.com/en-us/dotnet/core/extensions/channels
- https://learn.microsoft.com/en-us/dotnet/api/system.net.sockets.socket.sendasync

Protocol documentation for a different client patch is evidence, not authority. Nyx's existing packet bytes and targeted client remain the compatibility source of truth.

## Runtime flow

```text
Socket
  -> PipeWriter / PipeReader (ordered encrypted chunks, bounded backpressure)
  -> per-session cipher (each byte exactly once)
  -> TqPacketStreamDecoder (incremental framing + length/footer validation)
  -> network-container routing (session affinity)
  -> GamePacketDispatcher (single validation/rate-limit boundary)
  -> dense O(1) registered handler table
  -> temporary legacy business-handler fallback for unmigrated IDs
```

The transport does not attempt to inspect encrypted length bytes. Framing happens after decryption. `TqPacketStreamDecoder` owns a pooled carry-over buffer, so a packet split over any number of TCP reads is retained. It also emits every packet when several frames are coalesced into one read. Invalid lengths and seals terminate the stream rather than attempting unsafe byte-by-byte resynchronization.

`NetworkService` owns and awaits one channel consumer per session. Routed work now completes only after the network-container handler itself finishes (not merely after queue admission). Disconnect callbacks and client-state disposal therefore run only after `GameSession` completes the inbound channel and the final queued chunk has been decrypted and dispatched. Service shutdown tracks the same per-client operations instead of disposing sessions from a competing task.

The DH response is not a regular length-prefixed game packet. Its fixed 140 bytes are buffered separately across TCP reads. Bytes coalesced after the response are passed unchanged to the normal game decoder.

## Protocol types

The implementation is in `src/Nyx.Network/Protocol`:

- `TqPacket` is an allocation-free immutable view over exact frame bytes. It exposes the common header, payload, and seal without changing the frame.
- `TqPacketReader` is a stack-only, bounds-checked little-endian reader with fixed strings, 8/16-bit length-prefixed strings, string lists, and varints.
- `TqPacketWriter` writes into caller-owned memory. It reserves the header and automatically finalizes the declared length and optional footer.
- `ITqPacketDefinition` and `TqPacketSerializer` provide automatic framing for typed packet structures with one exact-size allocation.
- `TqPacketStreamDecoder` handles fragmented/coalesced streams with a pooled carry buffer and allocates only the complete frame handed to existing asynchronous game logic.
- `PacketHandlerRegistry<TContext>` discovers strict `[TqPacketHandler]` methods once at startup and builds a 65,536-entry direct lookup table. Duplicate IDs or invalid signatures fail startup.

The removed `ImprovedPacketSystem` parsed every packet as an invented eight-byte common header (`length/id/type/offset`), used platform-endian `BitConverter`, allocated through `List<byte>`, and routed through reflection plus a red-black tree/cache. Its inactive `[Packet]` handler set and duplicate stream-based `PacketReader`/`PacketWriter`/`PacketValidator` APIs were removed as well, leaving one framing/registration model. `PacketDump` remains only as a diagnostic formatter.

## Send ordering

Each `GameSession` now has one bounded outbound channel and one socket writer. That writer loops until every byte has been accepted by the socket; `Socket.SendAsync` is not assumed to send an entire frame. This prevents overlapping sends from interleaving.

Game and auth encryption is stateful. Encryption and outbound queue insertion therefore happen in the same critical section. Per-session queues are bounded (256 encrypted inbound chunks and 1,024 outbound frames); a slow-client overflow is treated as a failed connection rather than dropping an encrypted packet or creating unbounded waiter allocations.

## Byte compatibility policy

A refactor is accepted only when its output is byte-for-byte compatible. `tests/Nyx.Network.Tests` contains golden-wire tests with explicit expected bytes, parser round trips, every possible two-part split of a game packet, coalesced frame ordering, invalid-length rejection, authentication framing, and startup handler discovery.

When migrating another packet class:

1. Capture representative legacy output as an explicit golden byte sequence before changing the encoder.
2. Define only the packet payload; let `TqPacketWriter` or `TqPacketSerializer` own offsets 0-3 and the footer.
3. Parse through `TqPacket.Payload` and `TqPacketReader`; do not copy `packet.Length - 8` merely to remove a footer.
4. Add `[TqPacketHandler(id)]` to one strict `ValueTask Handler(GameClient, byte[], CancellationToken)` method.
5. Delete the corresponding case from `PacketHandler.HandleLegacyPacket`. Duplicate registrations fail at startup.
6. Run the protocol tests and the full server build.

Five hot/control handlers are already registered this way using Nyx 6323's existing IDs: talk (1004), server time (1033), login (1052), movement (10005), and action (10010). Authentication seed and forward packets use canonical unsealed framing while preserving the repository's established 6323 hand-off bytes. MsgWalk's 6323 protobuf reader/writer is also canonical now; its old encoder allocated one byte too few, causing the server seal to overwrite the final payload byte. The replacement computes the exact varint payload size and writes a complete `declaredLength + 8` frame. All other IDs preserve their current business behavior through the compatibility boundary while they are migrated incrementally. There is one dispatcher and no double-dispatch path.
