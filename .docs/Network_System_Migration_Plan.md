# Network System Migration Plan

## Current State Analysis

### Active System (NEW - Keep)
Located in `Nyx.Network/` namespace:
- `NetworkService.cs` - Base async network service (BackgroundService)
- `GameNetworkService.cs` - Game server network service
- `AuthNetworkService.cs` - Auth server network service
- `GameSession.cs` - Async session with Pipelines
- `PacketChannel.cs` - Channel-based packet delivery
- `ConcurrentPacketQueue.cs` - Thread-safe packet queue

### Legacy System (OLD - To Remove)

| File | Status | Reason |
|------|--------|--------|
| `Nyx/Network/Sockets/ServerSocket.cs` | **REMOVE** | Replaced by `NetworkService`, not used in Program.cs |
| `Nyx/Network/Sockets/ImprovedClientWrapper.cs` | **REMOVE** | Not used, `ClientWrapper` is used directly |
| `Nyx/Network/NetworkManager.cs` | **REMOVE** | References `ImprovedClientWrapper` which is unused |
| `Nyx/Utilities/StaticPool.cs` | **KEEP FOR NOW** | Used by `ImprovedThreadingManager`, will replace later |
| `Nyx/Utilities/TimerRule.cs` | **KEEP FOR NOW** | Used by `World`, will replace later |
| `Nyx/System/World.cs` | **KEEP FOR NOW** | Still has game logic, migrate to `ImprovedWorld` |
| `Nyx/Network/Sockets/ClientWrapper.cs` | **KEEP** | Bridge between new `GameSession` and legacy code |

### Dependency Graph

```
Program.cs
    ├── Nyx.Network.AuthNetworkService (NEW - DI registered)
    ├── Nyx.Network.GameNetworkService (NEW - DI registered)
    │       └── OnSessionConnected
    │               └── new ClientWrapper() (BRIDGE)
    │                       └── GameServer_OnClientConnect/Receive
    │
    └── [NOT USED] ServerSocket.cs (OLD - can remove)

ImprovedThreadingManager.cs
    └── StaticPool (KEEP - will replace with Channel-based pools)

World.cs
    └── TimerRule<T> (KEEP - will replace with BackgroundService)
```

## Files to Remove

1. `Nyx/Network/Sockets/ServerSocket.cs` - Unused synchronous socket server
2. `Nyx/Network/Sockets/ImprovedClientWrapper.cs` - Unused improved wrapper
3. `Nyx/Network/NetworkManager.cs` - Unused connection manager

## Files to Keep

1. `Nyx.Network/` directory (all files) - New async network system
2. `Nyx/Network/Sockets/ClientWrapper.cs` - Bridge to legacy code
3. `Nyx/Utilities/StaticPool.cs` - Used by ImprovedThreadingManager
4. `Nyx/Utilities/TimerRule.cs` - Used by World
5. `Nyx/System/World.cs` - Contains game logic callbacks
6. `Nyx/System/ImprovedWorld.cs` - New world system (partial migration)

## Execution Steps

1. Delete unused files:
   - `Nyx/Network/Sockets/ServerSocket.cs`
   - `Nyx/Network/Sockets/ImprovedClientWrapper.cs`
   - `Nyx/Network/NetworkManager.cs`

2. Verify build succeeds

3. Update documentation

## Notes

- `ClientWrapper.cs` is essential as a bridge between `GameSession` and legacy `GameClient`
- `StaticPool` and `TimerRule` will be replaced in a future iteration with the new event-driven threading system
- `World.cs` callbacks need to be migrated to `ImprovedWorld.cs` or BackgroundService implementations
