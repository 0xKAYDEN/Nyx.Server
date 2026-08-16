# Auth Server Extraction — Nyx.Auth

**Date:** 2026-08-16  
**Patch:** Conquer Online 6323  
**Status:** Complete (standalone process)

## Goal

Move the authentication server out of the monolithic game host (`Nyx.Server`) into a dedicated process (`Nyx.Auth`) without changing client-visible cryptography or packet bytes.

## Architecture

```
 Client                    Nyx.Auth                         Redis                    Nyx.Server
   |                          |                               |                          |
   |-- TCP :9960 ------------>|                               |                          |
   |<-- MsgEncryptCode 1059 --|                               |                          |
   |-- MsgAccount 1542 ------>|                               |                          |
   |                          |-- validate accounts (PG) ---->|                          |
   |                          |-- SET auth:ticket:{id} ------>|                          |
   |<-- MsgConnectEx 1055 ----|                               |                          |
   |                          |                               |                          |
   |-- TCP :5816 MsgConnect 1052 ------------------------------------------------------>|
   |                          |                               |<-- GETDEL ticket --------|
   |                          |                               |                          |-- load entity
```

## Cryptography (unchanged)

| Layer | Implementation | Notes |
|-------|----------------|-------|
| Stream cipher | `Nyx.Network.Cryptography.AuthCryptography` | TQ asymmetric auth cipher; keys from seeds `0x9D` / `0x62` |
| Password field | Client RC5 with MsgEncryptCode seed | Server compares the decrypted/plaintext form already stored historically |
| Login token | `AuthTokenGenerator` = `SHA256(user:pass:randomKey)[0..3]` | Identical to legacy `AccountTable.GenerateKey` |
| Framing | Unsealed TQ (`TqPacketFraming.Authentication`) | No `TQServer`/`TQClient` footer on auth |

## Packets (unchanged wire layout)

| ID | Name | Direction | Length |
|----|------|-----------|--------|
| 1059 | MsgEncryptCode | S→C | 8 |
| 1542 | MsgAccount | C→S | 312 |
| 1055 | MsgConnectEx | S→C | 36 |
| 1052 | MsgConnect | C→Game | (game sealed) |

Golden tests in `tests/Nyx.Auth.Tests` and `tests/Nyx.Network.Tests` lock the MsgConnectEx and MsgAccount layouts.

## Process split

| Concern | Before | After |
|---------|--------|-------|
| Auth TCP listen | `Nyx.Server` (`AuthNetworkService`) | `Nyx.Auth` |
| Credential check | `Program.AuthServer_OnClientReceiveAsync` | `AuthLoginService` |
| Ticket store | `Kernel.AwaitingPool` (in-memory) | Redis `IAuthTicketStore` |
| Game consume | `AwaitingPool.TryGetValue` | `AuthTickets.TakeAsync` + pool fallback |

## Run

```bash
dotnet run --project src/Nyx.Auth
dotnet run --project src/Nyx
```

Shared config: `ServerConfigrations.json` (`Database`, `Redis`, `Server`, optional `Auth`).

## Files

### New
- `src/Nyx.Auth/**` — standalone host
- `src/Nyx.Shared/Auth/**` — ticket DTO + Redis/memory stores + token generator
- `tests/Nyx.Auth.Tests/**` — packet/crypto golden tests
- `docs/AUTH_SERVER_EXTRACTION.md`

### Modified
- `src/Nyx/Program.cs` — removed embedded auth listener
- `src/Nyx/Network/PacketHandler.cs` — Redis ticket consumption
- `src/Nyx/Database/AccountTable.cs` — `FromTicket` + shared token generator
- `src/Nyx/Caching/RedisService.cs` — expose `IDatabase` for ticket store
- `src/Nyx.Shared/Nyx.Shared.csproj` — Redis package

### Removed from game host runtime path
- `src/Nyx/Client/AuthClient.cs`
- Auth handlers in `Program.cs`
- `AuthNetworkService` DI registration in the game host

Auth packet classes under `src/Nyx/Network/AuthPackets/` remain for golden tests and `MsgConnect.ForwardType`.
