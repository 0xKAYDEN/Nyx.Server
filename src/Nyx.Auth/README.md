# Nyx.Auth — Standalone Authentication Server

Patch **6323** Conquer Online account server extracted from `Nyx.Server`.

## Responsibilities

1. Listen on `Server:AuthPort` (default **9960**).
2. On connect, send **MsgEncryptCode (1059)** with the password-cipher seed.
3. Decrypt the TQ auth stream cipher (`AuthCryptography` from `Nyx.Network`).
4. Parse **MsgAccount (1542)** length **312** (unsealed).
5. Validate credentials against PostgreSQL `accounts`.
6. Publish a one-shot **Redis ticket** (`nyx:auth:ticket:{ID}`).
7. Reply with **MsgConnectEx (1055)** carrying the 32-bit identifier + game IP/port.

The game server no longer binds the auth port. It consumes tickets in `PacketHandler.AppendConnect`.

## Run

```bash
# Terminal 1 — auth
dotnet run --project src/Nyx.Auth

# Terminal 2 — game
dotnet run --project src/Nyx
```

Both processes read `ServerConfigrations.json` (Database, Redis, Server sections).

## Wire compatibility

| Packet | ID | Notes |
|--------|-----|--------|
| MsgEncryptCode | 1059 | 8 bytes, seed i32 |
| MsgAccount | 1542 | 312 bytes, no TQ seal |
| MsgConnectEx | 1055 | 36 bytes unsealed; identifier u64 + port + reserved + IP[16] |

Cryptography is the shared `Nyx.Network.Cryptography.AuthCryptography` implementation (same key tables and counters as before). Do not substitute the incomplete `AuthCipher` stub from the old scaffold.

## Ticket hand-off

```
Auth  --SET nyx:auth:ticket:{id}-->  Redis  --GETDEL-->  Game
```

Token algorithm (unchanged):

```
SHA256(UTF8(username:password:randomKey))[0..3]  →  uint identifier
```

## Configuration

```json
{
  "Server": {
    "ServerAddress": "x.x.x.x",
    "AuthPort": 9960,
    "GamePort": 5816
  },
  "Auth": {
    "PasswordSeed": 3721,
    "MaxFailedAttempts": 5,
    "TicketTtlSeconds": 90
  }
}
```

`ServerAddress` / `GamePort` are what the **client** is told to connect to after login.
