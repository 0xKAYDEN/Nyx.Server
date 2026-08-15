using Nyx.Network.Protocol;
using Nyx.Server.Client;
using Serilog;
using System.Reflection;

namespace Nyx.Server.Network.Dispatching;

/// <summary>
/// Single authoritative entry point for decrypted game packets. Structural validation and rate
/// limiting happen once here; registered handlers use an O(1) dense lookup. Unmigrated business
/// handlers temporarily fall through to <see cref="PacketHandler.HandleLegacyPacket"/> without
/// re-parsing or double-dispatching the packet.
/// </summary>
public static class GamePacketDispatcher
{
    private static PacketHandlerRegistry<GameClient>? _registry;

    public static int RegisteredHandlerCount => Volatile.Read(ref _registry)?.Count ?? 0;

    public static void Initialize(Assembly? assembly = null)
    {
        var registry = PacketHandlerRegistry<GameClient>.Discover(assembly ?? typeof(GamePacketDispatcher).Assembly);
        if (Interlocked.CompareExchange(ref _registry, registry, null) is not null)
            throw new InvalidOperationException("The game packet dispatcher is already initialized.");

        Log.Information("Game packet dispatcher initialized with {Count} structured handlers", registry.Count);
    }

    public static async ValueTask DispatchAsync(
        GameClient client,
        byte[] frame,
        CancellationToken cancellationToken = default)
    {
        ArgumentNullException.ThrowIfNull(client);
        ArgumentNullException.ThrowIfNull(frame);

        if (!TqPacket.TryParse(
                frame,
                TqPacketFraming.Game,
                TqPacketSeal.Client,
                out TqPacket packet,
                out TqPacketValidationError error))
        {
            Log.Warning(
                "Rejected malformed packet ({Error}) from {Name}; bytes={Length}",
                error,
                client.Entity?.Name ?? "Unknown",
                frame.Length);
            client.Disconnect();
            return;
        }

        if (client.Filtering && client.PacketRateLimiter.Filter(packet.Id))
            return;

        PacketHandlerRegistry<GameClient> registry = Volatile.Read(ref _registry)
            ?? throw new InvalidOperationException("GamePacketDispatcher.Initialize must run before accepting clients.");

        if (await registry.DispatchAsync(client, packet.Id, frame, cancellationToken).ConfigureAwait(false))
            return;

        await PacketHandler.HandleLegacyPacket(frame, client).ConfigureAwait(false);
    }
}
