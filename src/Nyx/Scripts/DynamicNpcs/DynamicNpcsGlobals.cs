using Nyx.Server.Client;
using Nyx.Server.Game;
using Nyx.Server.Interfaces;
using Nyx.Server.Network.GamePackets;
using Serilog;
using static Nyx.Server.Network.GamePackets.Game_SubClass;

namespace Nyx.Server.Scripts.DynamicNpcs
{
    public sealed class DynamicNpcsGlobals
    {
        public DynamicNpcsGlobals()
        {

        }

        private static readonly ILogger _log = Log.ForContext<DynamicNpcsGlobals>();

        public bool SpawnNpc(uint npcId, string name, ushort mesh,
                             ushort mapId, ushort x, ushort y, byte npcType = 1)
        {
            var map = Kernel.Maps[mapId];
            if (map == null) return false;

            var npc = new NpcSpawn
            {
                UID = npcId,
                Name = name,
                Mesh = mesh,
                X = x,
                Y = y,
                MapID = mapId,
                Type = (Enums.NpcType)npcType
            };

            // 1.  persist on server (survives every LoadNpcs)
            map.Npcs[npcId] = npc;

            // 2.  send spawn buffer to every player on the map
            foreach (var client in Kernel.GamePool.Values)
                if (client?.Entity?.MapID == mapId)
                    client.Send(npc.Encode());   // or:  npc.SendSpawn(client);

            _log.Information("[DynamicNpcs] spawned NPC {NpcId} on map {MapId} at ({X},{Y})",
                             npcId, mapId, x, y);
            return true;
        }

        public bool NpcExists(uint npcId, ushort mapId)
        {
            return Kernel.Maps.TryGetValue(mapId, out var map) && map.Npcs.ContainsKey(npcId);
        }
    }
}
