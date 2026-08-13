using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Nyx.Network;
using Nyx.Server.Client;
using Nyx.Server.Game;
using Nyx.Server.Game.Attacking;
using Nyx.Server.Game.ConquerStructures;
using Nyx.Server.Network;
using Nyx.Server.Network.GamePackets;

using Nyx.Server.Utilities;
using Nyx.Server.Bots.Behaviors;
using Nyx.Server.Bots.Helpers;

namespace Nyx.Server.Bots
{
    public class BotClient : GameClient
    {
        public bool IsActive { get; set; }
        public IBotBehavior Behavior { get; private set; }

        // Configuration
        public string BotName { get; set; }
        public ushort HomeMap { get; set; }
        public ushort HomeX { get; set; }
        public ushort HomeY { get; set; }

        // State
        public bool IsInAutoHunt { get; set; }
        public bool IsSellingItems { get; set; }
        public bool IsOperatingMarket { get; set; }
        public List<ConquerItem> ItemsToSell { get; set; }
        public uint SellingPrice { get; set; }
        public string MarketMessage { get; set; }

        public BotClient(GameSession session) : base(session)
        {
            ItemsToSell = new List<ConquerItem>();
            Behavior = new IdleBehavior();
            IsInAutoHunt = false;
            IsSellingItems = false;
            IsOperatingMarket = false;
            SellingPrice = 0;
            MarketMessage = "Selling fine items!";
        }

        /// <summary>
        /// Creates a fake bot client without a real network session.
        /// </summary>
        public BotClient() : base(null)
        {
            ItemsToSell = new List<ConquerItem>();
            Behavior = new IdleBehavior();
            IsInAutoHunt = false;
            IsSellingItems = false;
            IsOperatingMarket = false;
            SellingPrice = 0;
            MarketMessage = "Selling fine items!";
        }

        public void InitializeBot(string name, ushort mapId, ushort x, ushort y)
        {
            if (string.IsNullOrEmpty(name))
            {
                name = BotNameGenerator.GetRandomName();
            }

            BotName = name;
            HomeMap = mapId;
            HomeX = x;
            HomeY = y;

            // 1. Create Entity
            Entity = new Entity(EntityFlag.Bot, false);
            Entity.Owner = this;

            // 2. Initialize Base Client Components (Critical for Equipment/Inventory)
            ReadyToPlay();

            // 3. Initialize Collections & Data preventing NullRefs
            //Inventory = new Inventory(this);
            Equipment = new Equipment(this);
            Variables = new VariableVault();

            Spells = new SafeDictionary<ushort, Interfaces.ISkill>();
            Proficiencies = new SafeDictionary<ushort, Interfaces.IProf>();
            Friends = new SafeDictionary<uint, Game.ConquerStructures.Society.Friend>();
            Enemy = new SafeDictionary<uint, Game.ConquerStructures.Society.Enemy>();
            Partners = new SafeDictionary<uint, Game.ConquerStructures.Society.TradePartner>();
            Apprentices = new SafeDictionary<uint, Game.ConquerStructures.Society.Apprentice>();
            Warehouses = new SafeDictionary<Game.ConquerStructures.Warehouse.WarehouseID, Game.ConquerStructures.Warehouse>();

            ChiPowers = new List<ChiPowerStructure>();
            ChiData = new Database.ChiTable.ChiData() { Powers = ChiPowers };

            // 4. Set Entity Properties
            Entity.Name = name;
            Entity.UID = (uint)7000;

            // Randomize Stats
            Entity.Level = (byte)Kernel.Random.Next(100, 140);
            Entity.Class = (byte)Kernel.RandFromGivingNums(10, 20, 40, 50, 60, 70, 80, 132, 142);
            Entity.Reborn = (byte)Kernel.Random.Next(0, 3);

            Entity.Vitality = (ushort)((Entity.Level + 0) * (Entity.Reborn + 1));

            Entity.Face = (ushort)Kernel.Random.Next(1, 255);
            Entity.Body = (ushort)Kernel.RandFromGivingNums(1003, 1004, 2001, 2002);
            Entity.HairStyle = (ushort)Kernel.Random.Next(100, 500);

            Entity.MaxHitpoints = 200000;
            Entity.Hitpoints = Entity.MaxHitpoints;
            Entity.Mana = 800;

            Entity.MapID = mapId;
            Entity.X = x;
            Entity.Y = y;

            // 5. Equip Gear
            EquipBotGear();

            // 6. Register
            Kernel.GamePool.TryAdd(Entity.UID, this);
            BotManager.Instance.AddBot(this);

            IsActive = true;
        }

        public void ProcessBotActions()
        {
            if (!IsActive) return;
            CheckGear();
            Behavior?.Process(this);
        }

        public void SetBehavior(IBotBehavior newBehavior)
        {
            Behavior?.OnExit(this);
            Behavior = newBehavior;
            Behavior?.OnEnter(this);
        }

        #region Actions

        public void StartAutoHunt()
        {
            var autoHuntPacket = new AutoHunt();
            autoHuntPacket.Action = AutoHunt.Mode.Start;
            autoHuntPacket.Icon = 1;
            this.Send(autoHuntPacket.Encode());

            Entity.InAutoHunt = true;
            IsInAutoHunt = true;
        }

        public void StopAutoHunt()
        {
            var autoHuntPacket = new AutoHunt();
            autoHuntPacket.Action = AutoHunt.Mode.EndAuto;
            this.Send(autoHuntPacket.Encode());

            Entity.InAutoHunt = false;
            IsInAutoHunt = false;
        }

        public void PickUpNearbyItems()
        {
            var map = Kernel.Maps[Entity.MapID];
            if (map == null) return;

            // Re-implementing simplified version:
            foreach (var item in map.FloorItems.Values)
            {
                if (Kernel.GetDistance(Entity.X, Entity.Y, item.X, item.Y) <= 5)
                {
                    Network.PacketHandler.PickupItem(item, this);
                }
            }
        }

        public void MoveToHuntingSpot()
        {
            if (Environment.TickCount % 2000 != 0) return; // Limit movement frequency

            var map = Kernel.Maps[Entity.MapID];
            if (map == null) return;

            // Random Walk
            int dx = Kernel.Random.Next(-5, 6);
            int dy = Kernel.Random.Next(-5, 6);

            ushort newX = (ushort)Math.Max(0, Math.Min(map.Floor.Bounds.Width - 1, Entity.X + dx));
            ushort newY = (ushort)Math.Max(0, Math.Min(map.Floor.Bounds.Height - 1, Entity.Y + dy));

            if (map.Floor[newX, newY, MapObjectType.StaticEntity, null])
            {
                ushort oldX = Entity.X;
                ushort oldY = Entity.Y;
                Entity.X = newX;
                Entity.Y = newY;

                var movement = new GroundMovement(true);
                movement.UID = Entity.UID;
                movement.Direction = Kernel.GetAngle(oldX, oldY, newX, newY);
                movement.GroundMovementType = GroundMovement.Walk;
                SendScreen(movement, true);
            }
        }

        public void CheckGear()
        {
            // Simple check: if missing head or armor, re-equip
            // Head = 1, Armor = 3. Array indices 0 and 2.
            if (Equipment == null || Equipment.Objects[0] == null || Equipment.Objects[2] == null)
            {
                EquipBotGear();
            }
        }

        private void EquipBotGear()
        {
            // Equip based on Class and Level
            // Head
            EquipItem(111003 + (uint)(Entity.Class / 10 * 1000) + (uint)Entity.Level, 1);
            // Armor
            EquipItem(132003 + (uint)(Entity.Class / 10 * 1000) + (uint)Entity.Level, 3);

            // Weapons
            if (Entity.Class >= 10 && Entity.Class <= 15) // Trojan
            {
                EquipItem(410003 + (uint)Entity.Level, 4); // R-Weapon
                EquipItem(410003 + (uint)Entity.Level, 5); // L-Weapon
            }
            else
            {
                EquipItem(410003 + (uint)Entity.Level, 4);
            }

            // Apply Stats
            LoadItemStats();
        }

        private void EquipItem(uint itemId, byte position)
        {
            // Create item
            var item = new ConquerItem(true);
            item.ID = itemId;
            item.Position = position;
            item.Plus = 3;
            item.Durability = 100;
            item.MaximDurability = 100;
            item.Color = (Enums.Color)3;

            if (Equipment.Objects.Length > (position - 1))
            {
                Equipment.Objects[position - 1] = item;
            }
        }

        public Entity ScanForTarget(int range = 15)
        {
            var map = Kernel.Maps[Entity.MapID];
            if (map == null) return null;

            Entity bestTarget = null;
            int shortestDist = range + 1;

            foreach (var entity in map.Entities.Values)
            {
                if (entity.Dead) continue;
                if (entity.UID == Entity.UID) continue;
                if (!IsAttackable(entity)) continue;

                int dist = Kernel.GetDistance(Entity.X, Entity.Y, entity.X, entity.Y);
                if (dist < shortestDist)
                {
                    shortestDist = dist;
                    bestTarget = entity;
                }
            }
            return bestTarget;
        }

        private bool IsAttackable(Entity entity)
        {
            return entity.EntityFlag == EntityFlag.Monster;
        }

        public void Attack(Entity target)
        {
            // Construct Attack Packet
            var attack = new Nyx.Server.Network.GamePackets.Attack(true);
            attack.Attacker = Entity.UID;
            attack.Attacked = target.UID;
            attack.X = target.X;
            attack.Y = target.Y;
            attack.AttackType = Nyx.Server.Network.GamePackets.Attack.Melee;

            // Process attack directly on the server
            new Nyx.Server.Game.Attacking.Handle(attack, Entity, target);
        }

        public void MoveToward(ushort x, ushort y)
        {
            var map = Kernel.Maps[Entity.MapID];
            if (map == null) return;

            // Simple direction finding
            byte dir = (byte)Kernel.GetAngle(Entity.X, Entity.Y, x, y);

            // Move 1 step in that direction
            // We need to map Angle to DX/DY
            int dx = 0, dy = 0;
            switch ((Enums.ConquerAngle)dir)
            {
                case Enums.ConquerAngle.North: dy = -1; break;
                case Enums.ConquerAngle.South: dy = 1; break;
                case Enums.ConquerAngle.East: dx = 1; break;
                case Enums.ConquerAngle.West: dx = -1; break;
                case Enums.ConquerAngle.NorthWest: dx = -1; dy = -1; break;
                case Enums.ConquerAngle.NorthEast: dx = 1; dy = -1; break;
                case Enums.ConquerAngle.SouthWest: dx = -1; dy = 1; break;
                case Enums.ConquerAngle.SouthEast: dx = 1; dy = 1; break;
            }

            ushort newX = (ushort)(Entity.X + dx);
            ushort newY = (ushort)(Entity.Y + dy);

            // Check bounds and collision
            if (newX < map.Floor.Bounds.Width && newY < map.Floor.Bounds.Height &&
                map.Floor[newX, newY, MapObjectType.StaticEntity, null])
            {
                ushort oldX = Entity.X;
                ushort oldY = Entity.Y;
                Entity.X = newX;
                Entity.Y = newY;

                var movement = new GroundMovement(true);
                movement.UID = Entity.UID;
                movement.Direction = (Enums.ConquerAngle)dir; // Use the calculated direction
                movement.GroundMovementType = GroundMovement.Walk;
                SendScreen(movement, true);
            }
        }

        #endregion

        public override void Disconnect(bool save = true)
        {
            IsActive = false;
            if (Entity != null)
                BotManager.Instance.RemoveBot(Entity.UID);
            base.Disconnect(save);
        }
    }
}
