using Nyx.Server.Client;
using Nyx.Server.Network.GamePackets;
using Nyx.Server.Game;
using System;

namespace Nyx.Server.Scripts.DynamicNpcDialog
{
    public class NpcScriptGlobals
    {
        private readonly GameClient _client;
        private readonly NpcRequest _request;
        private readonly NpcDialog _dialog;

        public NpcScriptGlobals(GameClient client, NpcRequest request)
        {
            _client = client ?? throw new ArgumentNullException(nameof(client));
            _request = request ?? throw new ArgumentNullException(nameof(request));
            _dialog = new NpcDialog(client, request.NpcID);
        }

        // Player information access
        public string GetName() => _client.Entity?.Name ?? "Unknown";
        public uint GetLevel() => _client.Entity?.Level ?? 1;
        public uint GetMoney() => _client.Entity?.Money ?? 0;
        public uint GetConquerPoints() => _client.Entity?.ConquerPoints ?? 0;
        public ulong GetExperience() => _client.Entity?.Experience ?? 0;

        // Dialog functions
        public void Say(string message)
        {
            _dialog.Text(message);
        }

        public void Say(string message, bool display)
        {
            _dialog.Text(message, display);
        }

        public void AddOption(string text, byte optionId)
        {
            _dialog.Option(text, optionId);
        }

        public void RequestInput(string prompt, ushort maxLength = 32)
        {
            _dialog.Input(prompt, maxLength);
        }

        public void SetAvatar(ushort avatarId)
        {
            _dialog.Avatar(avatarId);
        }

        public void Finish()
        {
            _dialog.Finish();
        }

        // Item functions
        public bool HasItem(uint itemId, uint amount = 1)
        {
            return _client.Inventory?.HasItem(itemId, amount) ?? false;
        }

        public bool AddItem(uint itemId, ushort amount = 1)
        {
            try
            {
                if (_client?.Inventory == null)
                    return false;
                    
                _client.Inventory.Add(itemId, 0, amount);
                return true;
            }
            catch (Exception ex)
            {
                // Log the error for debugging
                System.Diagnostics.Debug.WriteLine($"Error adding item {itemId}: {ex.Message}");
                return false;
            }
        }

        public bool RemoveItem(uint itemId, ushort amount = 1)
        {
            try
            {
                if (_client?.Inventory == null)
                    return false;
                    
                return _client.Inventory.Remove(itemId, amount);
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Error removing item {itemId}: {ex.Message}");
                return false;
            }
        }

        public uint GetItemCount(uint itemId)
        {
            return _client.Inventory?.GetItemCount(itemId) ?? 0;
        }

        // Money functions
        public bool AddMoney(uint amount)
        {
            try
            {
                if (_client?.Entity == null)
                    return false;
                    
                _client.Entity.Money += amount;
                return true;
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Error adding money: {ex.Message}");
                return false;
            }
        }

        public bool AddConquerPoints(uint amount)
        {
            try
            {
                _client.Entity.ConquerPoints += amount;
                return true;
            }
            catch
            {
                return false;
            }
        }

        public bool RemoveConquerPoints(uint amount)
        {
            try
            {
                if (_client.Entity.ConquerPoints >= amount)
                {
                    _client.Entity.ConquerPoints -= amount;
                    return true;
                }
                return false;
            }
            catch
            {
                return false;
            }
        }

        public bool RemoveMoney(uint amount)
        {
            try
            {
                if (_client.Entity.Money >= amount)
                {
                    _client.Entity.Money -= amount;
                    return true;
                }
                return false;
            }
            catch
            {
                return false;
            }
        }

        // Experience functions
        public bool AddExperience(uint amount)
        {
            try
            {
                _client.Entity.Experience += amount;
                return true;
            }
            catch
            {
                return false;
            }
        }

        // Teleport functions
        public bool Teleport(ushort mapId, ushort x, ushort y)
        {
            try
            {
                if (_client?.Entity == null)
                    return false;
                    
                _client.Entity.Teleport(mapId, x, y);
                return true;
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Error teleporting: {ex.Message}");
                return false;
            }
        }

        // Quest functions
        public bool HasQuest(uint questId)
        {
            // This would need to be implemented based on your quest system
            return false;
        }

        public bool AddQuest(uint questId)
        {
            // This would need to be implemented based on your quest system
            return false;
        }

        public bool CompleteQuest(uint questId)
        {
            // This would need to be implemented based on your quest system
            return false;
        }

        // Utility functions
        public void SendMessage(string message)
        {
            // This would send a system message to the player
            // Implementation depends on your message system
        }

        public void Disconnect()
        {
            _client.Disconnect();
        }

        // Request information
        public byte GetOptionId() => _request.OptionID;
        public byte GetInteractType() => _request.InteractType;
        public string GetInput() => _request.Input;
        public uint GetNpcId() => _request.NpcID;

        // Math functions for Lua
        public int Random(int min, int max)
        {
            var random = new Random();
            return random.Next(min, max + 1);
        }

        public int Random(int max)
        {
            var random = new Random();
            return random.Next(max + 1);
        }

        // NPC Spawning functions
        //public bool SpawnNpc(uint npcId, string name, ushort mesh, ushort x, ushort y, byte npcType = 0)
        //{
        //    try
        //    {
        //        if (_client?.Entity == null)
        //            return false;

        //        var map = Kernel.Maps[_client.Entity.MapID];
        //        if (map == null)
        //            return false;

        //        // Check if NPC already exists
        //        if (map.Npcs.ContainsKey(npcId))
        //        {
        //            // Update existing NPC
        //            map.Npcs[npcId].X = x;
        //            map.Npcs[npcId].Y = y;
        //            return true;
        //        }

        //        // Create new NPC
        //        var npc = new NpcSpawn(true);
        //        npc.UID = npcId;
        //        npc.Name = name;
        //        npc.Mesh = mesh;
        //        npc.X = x;
        //        npc.Y = y;
        //        npc.MapID = _client.Entity.MapID;
        //        npc.Type = (Enums.NpcType)npcType;

        //        // Add to map
        //        map.AddNpc(npc);

        //        // Send spawn to nearby players
        //        npc.SendSpawn(_client, false);

        //        // Broadcast to players on the map
        //        foreach (var client in Kernel.GamePool.Values)
        //        {
        //            if (client?.Entity != null && client.Entity.MapID == _client.Entity.MapID)
        //            {
        //                if (Kernel.GetDistance(x, y, client.Entity.X, client.Entity.Y) <= 18)
        //                {
        //                    npc.SendSpawn(client, false);
        //                }
        //            }
        //        }

        //        return true;
        //    }
        //    catch (Exception ex)
        //    {
        //        System.Diagnostics.Debug.WriteLine($"Error spawning NPC: {ex.Message}");
        //        return false;
        //    }
        //}

        //public bool SpawnNpcNearMe(uint npcId, string name, ushort mesh, int distance = 2, byte npcType = 0)
        //{
        //    try
        //    {
        //        if (_client?.Entity == null)
        //            return false;

        //        var random = new Random();
        //        ushort x = (ushort)(_client.Entity.X + random.Next(-distance, distance + 1));
        //        ushort y = (ushort)(_client.Entity.Y + random.Next(-distance, distance + 1));

        //        return SpawnNpc(npcId, name, mesh, x, y, npcType);
        //    }
        //    catch (Exception ex)
        //    {
        //        System.Diagnostics.Debug.WriteLine($"Error spawning NPC near player: {ex.Message}");
        //        return false;
        //    }
        //}

        //public bool RemoveNpc(uint npcId)
        //{
        //    try
        //    {
        //        if (_client?.Entity == null)
        //            return false;

        //        var map = Kernel.Maps[_client.Entity.MapID];
        //        if (map == null)
        //            return false;

        //        if (!map.Npcs.ContainsKey(npcId))
        //            return false;

        //        var npc = map.Npcs[npcId];
                
        //        // Send despawn packet to nearby players
        //        foreach (var client in Kernel.GamePool.Values)
        //        {
        //            if (client?.Entity != null && client.Entity.MapID == _client.Entity.MapID)
        //            {
        //                if (client.Screen.Contains(npc.UID))
        //                {
        //                    client.Screen.Remove(npc.UID);
        //                    // You would send a despawn packet here if available
        //                }
        //            }
        //        }

        //        // Remove from map
        //        map.Npcs.Remove(npcId);
        //        return true;
        //    }
        //    catch (Exception ex)
        //    {
        //        System.Diagnostics.Debug.WriteLine($"Error removing NPC: {ex.Message}");
        //        return false;
        //    }
        //}

       
    }
}
