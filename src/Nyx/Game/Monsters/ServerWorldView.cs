using System.Runtime.CompilerServices;
using Nyx.Monsters.Core;
using Nyx.Monsters.Services;

namespace Nyx.Server.Game.Monsters;

/// <summary>
/// Adapter from the static <c>Kernel.GamePool</c>/<c>Kernel.Maps</c> world to
/// <see cref="IWorldView"/>. Lets <c>MonsterManager</c> query players &
/// walkability without being coupled to <c>Nyx.Server</c> types.
/// </summary>
public sealed class ServerWorldView : IWorldView
{
    /// <summary>
    /// Returns player UIDs within <paramref name="range"/> cells of
    /// <paramref name="center"/> on <paramref name="mapId"/>.
    /// Replaces the legacy O(n) scan over <c>Kernel.GamePool.Values</c> with a
    /// distance check — still O(n) but allocation-free via a stack buffer.
    /// </summary>
    public ReadOnlySpan<uint> GetPlayersInRange(Position center, ushort range, ushort mapId)
    {
        long rangeSq = (long)range * range;
        var pool = Kernel.GamePool;
        // Pre-size for the worst case; rented on the stack.
        Span<uint> tmp = stackalloc uint[pool.Count];
        int n = 0;

        foreach (var kv in pool)
        {
            var client = kv.Value;
            if (client is null || client.Entity is null) continue;
            var e = client.Entity;
            if (e.MapID != mapId) continue;
            int dx = e.X - center.X;
            int dy = e.Y - center.Y;
            if ((long)dx * dx + (long)dy * dy <= rangeSq)
                tmp[n++] = e.UID;
        }

        // Copy the used portion to a heap array for the span return.
        var result = new uint[n];
        tmp[..n].CopyTo(result);
        return result;
    }

    public bool TryGetPlayer(uint playerId, out IPlayerEntity player)
    {
        player = null!;
        if (!Kernel.GamePool.TryGetValue(playerId, out var client) || client?.Entity is null)
            return false;
        player = new ServerPlayerEntity(client);
        return true;
    }

    public bool IsWalkable(ushort mapId, Position pos)
    {
        if (!Kernel.Maps.TryGetValue(mapId, out var map) || map?.Floor is null)
            return false;
        return map.Floor[pos.X, pos.Y, MapObjectType.Monster, null];
    }

    public Position FindWalkableNear(ushort mapId, Position pos, ushort maxRadius)
    {
        if (IsWalkable(mapId, pos)) return pos;
        for (int r = 1; r <= maxRadius; r++)
        {
            for (int dx = -r; dx <= r; dx++)
            for (int dy = -r; dy <= r; dy++)
            {
                if (Math.Abs(dx) != r && Math.Abs(dy) != r) continue;
                var p = new Position(
                    (ushort)Math.Clamp(pos.X + dx, 0, ushort.MaxValue),
                    (ushort)Math.Clamp(pos.Y + dy, 0, ushort.MaxValue));
                if (IsWalkable(mapId, p)) return p;
            }
        }
        return pos;
    }

    /// <summary>
    /// Thin adapter from <c>GameClient</c>/<c>Entity</c> to <see cref="IPlayerEntity"/>.
    /// Avoids the monster system having to know about <c>GameClient</c>.
    /// </summary>
    private sealed class ServerPlayerEntity : IPlayerEntity
    {
        private readonly Client.GameClient _client;
        public ServerPlayerEntity(Client.GameClient client) => _client = client;

        public uint Uid => _client.Entity.UID;
        public byte Level => _client.Entity.Level;
        public Position Position => new(_client.Entity.X, _client.Entity.Y);
        public ushort MapId => _client.Entity.MapID;

        public void Send(byte[] packet) => _client.Send(packet);

        public void AwardExperience(ulong exp) =>
            _client.IncreaseExperience(exp, true);
    }
}