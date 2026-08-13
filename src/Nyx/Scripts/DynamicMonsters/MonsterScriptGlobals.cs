using Nyx.Server.Game;
using Nyx.Server.Database;
using Serilog;
using System;
using static Nyx.Server.Network.GamePackets.Game_SubClass;

namespace Nyx.Server.Scripts.DynamicMonsters
{
    public class MonsterScriptGlobals
    {
        private static readonly ILogger _log = Log.ForContext<MonsterScriptGlobals>();

        public void ReloadMonsters()
        {
            try
            {
                Database.MonsterInformation.Load();
                _log.Information("Reloaded MonsterInformations from database.");
            }
            catch (Exception ex)
            {
                _log.Error(ex, "Failed to reload MonsterInformations.");
            }
        }

        public bool SpawnMonster(uint monsterId, ushort mapId, ushort x, ushort y, int count = 1, int respawnTime = -1 , uint HitPoint = 0)
        {
            if (!Database.MonsterInformation.MonsterInformations.ContainsKey(monsterId))
            {
                _log.Warning($"SpawnMonster: Monster ID {monsterId} not found in cache. Attempting reload...");
                Database.MonsterInformation.Load();
                if (!Database.MonsterInformation.MonsterInformations.ContainsKey(monsterId))
                {
                    _log.Error($"SpawnMonster: Monster ID {monsterId} still not found after reload.");
                    return false;
                }
            }

            if (!Kernel.Maps.ContainsKey(mapId))
            {
                _log.Error($"SpawnMonster: Map ID {mapId} not found.");
                return false;
            }

            var map = Kernel.Maps[mapId];
            var mtSource = Database.MonsterInformation.MonsterInformations[monsterId];

            for (int i = 0; i < count; i++)
            {
                try
                {
                    Entity entity = new Entity(EntityFlag.Monster, false);
                    entity.MapObjType = MapObjectType.Monster;

                    var spawnInfo = mtSource.Copy();
                    if (respawnTime != -1)
                        spawnInfo.RespawnTime = respawnTime;

                    spawnInfo.BoundX = x;
                    spawnInfo.BoundY = y;
                    spawnInfo.BoundCX = 10;
                    spawnInfo.BoundCY = 10;
                    spawnInfo.Owner = entity;

                    entity.MonsterInfo = spawnInfo;

                    entity.Name = spawnInfo.Name;
                    entity.MinAttack = spawnInfo.MinAttack;
                    entity.MaxAttack = entity.MagicAttack = spawnInfo.MaxAttack;
                    entity.Hitpoints = entity.MaxHitpoints = spawnInfo.Hitpoints;
                    entity.Defence = spawnInfo.Defence;
                    entity.Body = spawnInfo.Mesh;
                    entity.Level = spawnInfo.Level;
                    entity.UID = map.EntityUIDCounter.Next;
                    entity.MapID = mapId;
                    entity.X = x;
                    entity.Y = y;
                    entity.SendUpdates = true;

                    // Add to map
                    if (spawnInfo.SpellID == 0) // Example check?
                        map.AddEntity(entity);
                    else
                        map.AddEntity2(entity); // Map.LoadMonsters uses Type==2? entity.MonsterInfo.Type?
                                                // Map.LoadMonsters: if (mt.Type == 2) AddEntity2 else AddEntity.

                    // Re-check Type
                    if (mtSource.Type == 2)
                        map.AddEntity2(entity); // Uses AddEntity2 logic
                    else
                        map.AddEntity(entity);

                    // Send Spawn
                    spawnInfo.SendScreenSpawn(entity);

                    _log.Information($"Spawned Monster {entity.Name} (UID: {entity.UID}) at {mapId} ({x},{y})");
                }
                catch (Exception ex)
                {
                    _log.Error(ex, $"Failed to spawn monster instance {i} of ID {monsterId}");
                }
            }

            return true;
        }
    }
}
