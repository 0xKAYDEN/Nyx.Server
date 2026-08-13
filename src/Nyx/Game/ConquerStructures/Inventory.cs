using Nyx.Server.Database;
using Nyx.Server.Network.GamePackets;
using Nyx.Inventory;
using Nyx.Inventory.Core;
using Nyx.Inventory.Contracts;
using System;
using System.Collections.Generic;
using System.Linq;
using Serilog;
using Nyx.Server.Client;

namespace Nyx.Server.Game.ConquerStructures
{
    public class Inventory
    {
        private readonly Inventory<GameClient> _newInventory;
        private readonly Dictionary<uint, ConquerItem> _conquerItemCache;
        private Client.GameClient Owner;

        public Inventory(Client.GameClient client)
        {
            Owner = client;
            _newInventory = new Inventory<GameClient>(client);
            _conquerItemCache = new Dictionary<uint, ConquerItem>();
        }

        // Helper: Convert ConquerItem to InventoryItem
        private InventoryItem ToInventoryItem(ConquerItem item)
        {
            return new InventoryItem
            {
                UID = item.UID,
                ID = item.ID,
                Durability = item.Durability,
                MaximDurability = item.MaximDurability,
                Plus = item.Plus,
                Bless = item.Bless,
                Enchant = item.Enchant,
                StackSize = item.StackSize,
                MaxStackSize = item.MaxStackSize,
                Bound = item.Bound,
                Color = (byte)item.Color,
                SocketOne = (byte)item.SocketOne,
                SocketTwo = (byte)item.SocketTwo,
                TimeLeftInMinutes = item.TimeLeftInMinutes,
                TimeStamp = item.TimeStamp,
                Minutes = item.Minutes,
                Stars = item.Stars,
                OwnerUID = item.OwnerUID,
                Owner = item.Owner,
                Signature = item.Signature,
                Position = item.Position,
                InWardrobe = item.InWardrobe,
                MobDropped = item.MobDropped,
                StatsLoaded = item.StatsLoaded,
                Suspicious = item.Suspicious,
                Unlocking = item.Unlocking,
                Inscribed = item.Inscribed,
                SocketProgress = item.SocketProgress,
                PerfectionProgress = item.PerfectionProgress,
                PlusProgress = item.PlusProgress,
                Lock = item.Lock,
                SuspiciousStart = item.SuspiciousStart,
                UnlockEnd = item.UnlockEnd,
                suspiciousStart = item.suspiciousStart,
                unlockEnd = item.unlockEnd,
                RefineItem = item.RefineItem,
                RefineryTime = item.RefineryTime,
                NextRed = item.NextRed,
                NextBlue = item.NextBlue,
                NextGreen = item.NextGreen,
                Vigor = item.Vigor,
                BattlePower = item.BattlePower
            };
        }

        // Helper: Convert InventoryItem to ConquerItem (simplified, creates new ConquerItem)
        private ConquerItem ToConquerItem(InventoryItem item)
        {
            var ci = new ConquerItem(true)
            {
                UID = item.UID,
                ID = item.ID,
                Durability = item.Durability,
                MaximDurability = item.MaximDurability,
                Plus = item.Plus,
                Bless = item.Bless,
                Enchant = item.Enchant,
                StackSize = item.StackSize,
                MaxStackSize = item.MaxStackSize,
                Bound = item.Bound,
                Color = (Enums.Color)item.Color,
                SocketOne = (Enums.Gem)item.SocketOne,
                SocketTwo = (Enums.Gem)item.SocketTwo,
                TimeLeftInMinutes = item.TimeLeftInMinutes,
                Minutes = item.Minutes,
                Stars = item.Stars,
                OwnerUID = item.OwnerUID,
                Owner = item.Owner,
                Signature = item.Signature,
                Position = item.Position,
                InWardrobe = item.InWardrobe,
                MobDropped = item.MobDropped,
                StatsLoaded = item.StatsLoaded,
                Suspicious = item.Suspicious,
                Unlocking = item.Unlocking,
                Inscribed = item.Inscribed,
                SocketProgress = item.SocketProgress,
                PerfectionProgress = item.PerfectionProgress,
                PlusProgress = item.PlusProgress,
                Lock = item.Lock,
                RefineItem = item.RefineItem,
                RefineryTime = item.RefineryTime,
                NextRed = item.NextRed,
                NextBlue = item.NextBlue,
                NextGreen = item.NextGreen,
                Vigor = item.Vigor,
                
            };

            if (item.TimeStamp.HasValue)
                ci.TimeStamp = item.TimeStamp.Value;
            return ci;
        }

        // Update cache when items change
        private void UpdateCache()
        {
            _conquerItemCache.Clear();
            // Synchronous call: the inventory module is in-memory, so blocking on its
            // synthetic Task (.Result) was pure sync-over-async overhead on the game thread.
            var items = _newInventory.GetAll();
            foreach (var item in items)
            {
                _conquerItemCache[item.UID] = ToConquerItem(item);
            }
        }

        // Original methods start here
        public bool AddPer(uint id, uint soulitem, uint purfylevel, uint timeofpurfy, byte plus, byte times, bool purfystabliz = false, bool bound = false)
        {
            try
            {
                Database.ConquerItemInformation infos = new Database.ConquerItemInformation(id, plus);
                while (times > 0)
                {
                    if (Count <= 39)
                    {
                        ConquerItem item = new ConquerItem(true);
                        #region Stacksize
                        if (infos.BaseInformation.StackSize > 1)
                        {
                            ushort _StackCount = infos.BaseInformation.StackSize;
                            if (times <= infos.BaseInformation.StackSize)
                                _StackCount = (ushort)times;
                            item.StackSize = (ushort)_StackCount;
                            Database.ConquerItemTable.UpdateStack(item);
                            times -= (byte)_StackCount;
                        }
                        else
                        {
                            item = new ConquerItem(true);
                            item.StackSize = 1;
                            times--;
                        }
                        #endregion Stacksize
                        item.ID = id;
                        item.Plus = plus;
                        item.Bound = false;
                        item.Stars = 54;
                        item.Owner = Owner.Entity.Name;
                        item.OwnerUID = Owner.Entity.UID;
                        item.Durability = item.MaximDurability = infos.BaseInformation.Durability;
                        item.StackSize = 1;
                        item.Bless = 7;
                        item.Enchant = 255;
                        item.MaxStackSize = infos.BaseInformation.StackSize;
                        item.SocketOne = Game.Enums.Gem.SuperDragonGem;
                        item.SocketTwo = Game.Enums.Gem.SuperDragonGem;
                        Add(item, Enums.ItemUse.CreateAndAdd);
                        Database.ConquerItemTable.UpdatePerfection(item);
                        if (purfystabliz == false)
                        {
                            #region purfy with out stablize
                            ItemAdding.Purification_ purify = new ItemAdding.Purification_();
                            purify.AddedOn = DateTime.Now;
                            purify.Available = true;
                            purify.ItemUID = item.UID;
                            purify.PurificationLevel = purfylevel;
                            purify.PurificationDuration = timeofpurfy * 24 * 60 * 60;
                            purify.PurificationItemID = soulitem;
                            Database.ItemAddingTable.AddPurification(purify);
                            item.Purification = purify;
                            item.Mode = Game.Enums.ItemMode.Update;
                            item.Send(Owner);
                            ItemAdding effect = new ItemAdding(true);
                            effect.Type = ItemAdding.PurificationEffect;
                            effect.Append2(purify);
                            Owner.Send(effect);
                            #endregion
                        }
                        else
                        {
                            #region purfy with stabliz
                            ItemAdding.Purification_ purify = new ItemAdding.Purification_();
                            purify.AddedOn = DateTime.Now;
                            purify.Available = true;
                            purify.ItemUID = item.UID;
                            purify.PurificationLevel = purfylevel;
                            purify.PurificationDuration = timeofpurfy * 24 * 60 * 60;
                            purify.PurificationItemID = soulitem;
                            Database.ItemAddingTable.AddPurification(purify);
                            item.Purification = purify;
                            item.Mode = Game.Enums.ItemMode.Update;
                            item.Send(Owner);
                            ItemAdding effect = new ItemAdding(true);
                            effect.Type = ItemAdding.PurificationEffect;
                            effect.Append2(purify);
                            Owner.Send(effect);
                            var Backup = item.Purification;
                            Backup.PurificationDuration = 0;
                            item.Purification = Backup;
                            item.Send(Owner);
                            effect.Type = ItemAdding.StabilizationEffect;
                            effect.Append2(Backup);
                            Owner.Send(effect);
                            Database.ItemAddingTable.Stabilize(item.UID, Backup.PurificationItemID);
                            #endregion
                        }
                    }
                    else
                    {
                        return false;
                    }
                }
                times--;
            }
            catch (Exception e)
            {
                Log.Error(e, "Error in AddPer");
            }
            return true;
        }
        public bool AddTime(uint id, uint seconds, bool bound = false)
        {
            try
            {
                Database.ConquerItemInformation infos = new Database.ConquerItemInformation(id, 0);
                if (Count <= 39)
                {
                    ConquerItem item;
                    item = new ConquerItem(true);
                    {
                        item.ID = id;
                        item.Plus = 0;
                        item.Bless = 0;
                        item.Enchant = 0;
                        item.SocketOne = 0;
                        item.SocketTwo = 0;
                        item.Bound = bound;
                        item.TimeStamp = DateTime.Now;
                        item.Minutes = (seconds / 60);
                        item.TimeLeftInMinutes = seconds;
                        item.Durability = item.MaximDurability = infos.BaseInformation.Durability;
                    };
                    Add(item, Enums.ItemUse.CreateAndAdd);
                }
                else
                {
                    return false;
                }
            }
            catch (Exception e)
            {
                Log.Error(e, "Error in AddTime");
            }
            return true;
        }
        public bool AddLotto(uint id, byte plus, byte color, byte times, byte soc1, byte soc2)
        {
            ConquerItemInformation infos = new ConquerItemInformation(id, plus);
            while (times > 0)
            {
                if (Count <= 39)
                {
                    ConquerItem item = new Network.GamePackets.ConquerItem(true);
                    item.ID = id;
                    item.Plus = plus;
                    item.Color = (Enums.Color)color;
                    item.SocketOne = (Enums.Gem)soc1;
                    item.SocketTwo = (Enums.Gem)soc2;
                    item.Durability = item.MaximDurability = infos.BaseInformation.Durability;
                    Add(item, Enums.ItemUse.CreateAndAdd);
                }
                else
                {
                    return false;
                }
                times--;
            }

            return true;
        }
        public bool AddandWear(uint id, byte plus, Client.GameClient client)
        {
            Database.ConquerItemInformation infos = new Database.ConquerItemInformation(id, plus);
            if (Count <= 39)
            {
                ConquerItem item = new Network.GamePackets.ConquerItem(true);
                item.ID = id;
                item.Plus = plus;
                item.Color = Game.Enums.Color.Red;
                item.Durability = item.MaximDurability = infos.BaseInformation.Durability;
                Add(item, Enums.ItemUse.CreateAndAdd);
                client.Inventory.Remove(item, Game.Enums.ItemUse.Move, true);
                Network.PacketHandler.Positions pos = Network.PacketHandler.GetPositionFromID(item.ID);
                item.Position = (byte)pos;
                client.Equipment.Add(item);
                item.Mode = Game.Enums.ItemMode.Update;
                item.Send(client);
                client.CalculateStatBonus();
                client.CalculateHPBonus();
                client.LoadItemStats();
                Network.GamePackets.ClientEquip equips = new Network.GamePackets.ClientEquip();
                equips.DoEquips(client);
                client.Send(equips);
                Database.ConquerItemTable.UpdateLocation(item, client);
            }
            else
            {
                return false;
            }
            return true;
        }
        public bool Add(uint id, byte plus, ushort times, bool bound = false)
        {
            try
            {
                Database.ConquerItemInformation infos = new Database.ConquerItemInformation(id, plus);
                while (times > 0)
                {
                    if (Count <= 39)
                    {
                        ConquerItem _ExistingItem;
                        if (GetStackContainer(infos.BaseInformation.ID, infos.BaseInformation.StackSize, 1, out _ExistingItem))
                        {
                            _ExistingItem.StackSize++;
                            Database.ConquerItemTable.UpdateStack(_ExistingItem);
                            _ExistingItem.Mode = Game.Enums.ItemMode.Update;
                            _ExistingItem.Send(Owner);
                        }
                        else
                        {
                            ConquerItem item = new Network.GamePackets.ConquerItem(true);
                            item = new ConquerItem(true);
                            item.ID = id;
                            item.Plus = plus;
                            item.Durability = item.MaximDurability = infos.BaseInformation.Durability;
                            item.Color = (Game.Enums.Color)3;
                            item.MaxStackSize = infos.BaseInformation.StackSize;
                            item.StackSize = 1;
                            item.TimeLeftInMinutes = 0;
                            item.Bound = bound;
                            Add(item, Game.Enums.ItemUse.CreateAndAdd);
                            Database.ConquerItemTable.UpdateStack(item);
                        }
                    }
                    else
                    {
                        Owner.Send(Constants.FullInventory);
                        return false;
                    }
                    times--;
                }

            }
            catch (Exception e)
            {
                Log.Error(e, "Error in Add");
            }
            return true;
        }
        public void Add(string Name)
        {
            foreach (var item in Database.ConquerItemInformation.BaseInformations.Values)
            {
                if (item.Name == Name)
                {
                    Add(item.ID, 0, 1);
                    break;
                }
            }
        }
        public bool AddBound(uint id, byte plus, byte times)
        {

            return Add(id, plus, times, true);

        }
        public bool Add(uint id, Game.Enums.ItemEffect effect)
        {
            ConquerItem item = new Network.GamePackets.ConquerItem(true);
            item.ID = id;
            item.Effect = effect;
            Database.ConquerItemInformation infos = new Database.ConquerItemInformation(id, 0);
            item.Durability = item.MaximDurability = infos.BaseInformation.Durability;
            if (Count <= 39)
            {
                Add(item, Enums.ItemUse.CreateAndAdd);
            }
            else
            {
                return false;
            }

            return true;
        }
        public bool Add(ConquerItem item, Enums.ItemUse use)
        {
            if (!Database.ConquerItemInformation.BaseInformations.ContainsKey(item.ID))
                return false;
            if (Count == 40)
            {
                Owner.Send(Constants.FullInventory);
                return false;
            }
            if (!_conquerItemCache.ContainsKey(item.UID))
            {
                item.Position = 0;
                ConquerItem _ExistingItem;
                Database.ConquerItemInformation iteminfo = new Database.ConquerItemInformation(item.ID, 0);
                if (Owner.Inventory.Contains(iteminfo.BaseInformation.ID, iteminfo.BaseInformation.StackSize, out _ExistingItem) && Owner.SpiltStack && use != Enums.ItemUse.None)
                {

                    if (_ExistingItem.StackSize == 0)
                        _ExistingItem.StackSize = 1;
                    ushort _StackCount = iteminfo.BaseInformation.StackSize;
                    _StackCount -= (ushort)_ExistingItem.StackSize;
                    if (_StackCount >= 1)
                        _StackCount += 1;
                    _ExistingItem.StackSize += 1;
                    Database.ConquerItemTable.UpdateStack(_ExistingItem);
                    _ExistingItem.Mode = Game.Enums.ItemMode.Update;
                    _ExistingItem.Send(Owner);
                    _ExistingItem.Mode = Game.Enums.ItemMode.Default;
                    switch (use)
                    {

                        case Enums.ItemUse.Add:
                            Database.ConquerItemTable.DeleteItem(item.UID);
                            break;
                        case Enums.ItemUse.Move:
                            Database.ConquerItemTable.DeleteItem(item.UID);
                            break;
                    }
                    return true;
                }
                else
                {
                    switch (use)
                    {
                        case Enums.ItemUse.CreateAndAdd:
                            item.UID = Nyx.Server.Network.GamePackets.ConquerItem.ItemUID.Next;
                            Database.ConquerItemTable.AddItem(ref item, Owner);
                            item.MobDropped = false;
                            break;
                        case Enums.ItemUse.Add:
                            Database.ConquerItemTable.UpdateLocation(item, Owner);
                            break;
                        case Enums.ItemUse.Move:
                            item.Position = 0;
                            item.StatsLoaded = false;
                            Database.ConquerItemTable.UpdateLocation(item, Owner);
                            break;
                    }
                    // Add to new inventory system
                    var invItem = ToInventoryItem(item);
                    invItem.ComputeHash();
                    _newInventory.Add(invItem);
                    _conquerItemCache[item.UID] = item;
                    item.Mode = Enums.ItemMode.Default;
                    if (use != Enums.ItemUse.None)
                        item.Send(Owner);
                    return true;
                }
            }

            return false;
        }
        public void Update()
        {
            UpdateCache();
        }
        public bool Remove(ConquerItem item, Enums.ItemUse use)
        {
            if (_conquerItemCache.ContainsKey(item.UID))
            {
                if (Owner.Entity.UseItem && item.StackSize > 1)
                {
                    Remove(item.ID, 1);
                    Owner.Entity.UseItem = false;
                    return true;
                }
                else
                {
                    switch (use)
                    {
                        case Enums.ItemUse.Remove: Database.ConquerItemTable.RemoveItem(item.UID); break;
                        case Enums.ItemUse.Move: Database.ConquerItemTable.UpdateLocation(item, Owner); break;
                    }

                    _newInventory.Remove(item.UID);
                    _conquerItemCache.Remove(item.UID);
                    Network.GamePackets.ItemUsage iu = new Network.GamePackets.ItemUsage(true);
                    iu.UID = item.UID;
                    iu.ID = Network.GamePackets.ItemUsage.RemoveInventory;
                    Owner.Send(iu);
                    return true;
                }
            }


            return false;
        }
        public bool Remove(ConquerItem item, Enums.ItemUse use, bool equipment)
        {
            if (_conquerItemCache.ContainsKey(item.UID))
            {
                _newInventory.Remove(item.UID);
                _conquerItemCache.Remove(item.UID);
                Network.GamePackets.ItemUsage iu = new Network.GamePackets.ItemUsage(true);
                iu.UID = item.UID;
                iu.ID = Network.GamePackets.ItemUsage.RemoveInventory;
                Owner.Send(iu);
                return true;
            }

            return false;
        }
        public bool Remove(uint UID, Enums.ItemUse use, bool sendRemove)
        {
            if (_conquerItemCache.ContainsKey(UID))
            {
                switch (use)
                {
                    case Enums.ItemUse.Remove: Database.ConquerItemTable.RemoveItem(UID); break;
                    case Enums.ItemUse.Move: Database.ConquerItemTable.UpdateLocation(_conquerItemCache[UID], Owner); break;
                }
                _newInventory.Remove(UID);
                _conquerItemCache.Remove(UID);
                if (sendRemove)
                {
                    Network.GamePackets.ItemUsage iu = new Network.GamePackets.ItemUsage(true);
                    iu.UID = UID;
                    iu.ID = Network.GamePackets.ItemUsage.RemoveInventory;
                    Owner.Send(iu);
                }
                return true;

            }

            return false;
        }
        public bool Remove(string name)
        {
            string loweredName = name.ToLower();
            foreach (var item in _conquerItemCache.Values)
            {
                if (Database.ConquerItemInformation.BaseInformations[item.ID].LowerName == loweredName)
                {
                    Remove(item, Enums.ItemUse.Remove);
                    Network.GamePackets.ItemUsage iu = new Network.GamePackets.ItemUsage(true);
                    iu.UID = item.UID;
                    iu.ID = Network.GamePackets.ItemUsage.RemoveInventory;
                    Owner.Send(iu);
                    return true;
                }
            }


            return false;
        }
        public ConquerItem[] Objects
        {
            get
            {
                return _conquerItemCache.Values.ToArray();
            }
        }
        public byte Count { get { return (byte)Objects.Length; } }

        public bool TryGetItem(uint UID, out ConquerItem item)
        {
            return _conquerItemCache.TryGetValue(UID, out item);
        }

        public bool ContainsUID(uint UID)
        {
            return _conquerItemCache.ContainsKey(UID);
        }
        public bool Contains(uint ID, ushort maxstackamount, out ConquerItem Item)
        {
            Item = null;
            if (ID == 0)
                return false;
            foreach (ConquerItem item in Objects)
            {
                if (item.ID == ID && item.StackSize < maxstackamount)
                {
                    Item = item;
                    return true;
                }
            }
            return false;

        }

        public uint GetItemCount(uint ID)
        {
            uint has = 0;
            foreach (ConquerItem item in Objects)
                if (item.ID == ID)
                {
                    if (item.StackSize == 0)
                        has++;
                    else
                        has += (byte)item.StackSize;
                }
            return has;
        }
        public bool Contains(uint ID, ushort times)
        {
            if (ID == 0)
                return true;
            ushort has = 0;
            foreach (ConquerItem item in Objects)
                if (item.ID == ID)
                {
                    if (item.StackSize == 0)
                        has++;
                    else
                        has += (byte)item.StackSize;
                }
            return has >= times;
        }
        public bool ContainsNotBound(uint ID, ushort times)
        {
            if (ID == 0)
                return true;
            ushort has = 0;
            foreach (ConquerItem item in Objects)
                if (item.ID == ID)
                {
                    if (item.Bound) continue;
                    if (item.StackSize == 0)
                        has++;
                    else
                        has += (byte)item.StackSize;
                }
            return has >= times;
        }
        public bool Contains(uint ID)
        {
            if (ID == 0)
                return true;
            ushort has = 0;
            foreach (ConquerItem item in Objects)
                if (item.ID == ID)
                {
                    has++;
                }
            return has > 0;
        }

        public bool HasItem(uint itemId, uint amount = 0)
        {
            if (itemId == 0)
                return true;
            foreach (ConquerItem item in Objects)
                if (item.ID == itemId)
                {
                    amount++;
                }
            return amount > 0;
        }
        public ConquerItem GetItemByID(uint ID)
        {
            foreach (ConquerItem item in Objects)
                if (item.ID == ID)
                    return item;
            return null;
        }
        public bool Remove(uint ID, ushort times)
        {
            if (ID == 0)
                return true;
            List<ConquerItem> items = new List<ConquerItem>();
            byte has = 0;
            foreach (ConquerItem item in Objects)
                if (item.ID == ID)
                {
                    if (item.StackSize > 1)
                    {
                        if (item.StackSize >= times)
                        {
                            item.StackSize -= times;
                            if (item.StackSize != 0)
                            {
                                Database.ConquerItemTable.UpdateStack(item);
                                item.Mode = Enums.ItemMode.Update;
                                item.Send(Owner);
                                item.Mode = Enums.ItemMode.Default;
                                // Update in new inventory
                                var invItem = ToInventoryItem(item);
                                invItem.ComputeHash();
                                _newInventory.Update(item.UID, i =>
                                {
                                    i.StackSize = item.StackSize;
                                });
                                _conquerItemCache[item.UID] = item;
                                return true;
                            }
                            else
                            {
                                Database.ConquerItemTable.DeleteItem(item.UID);
                                _newInventory.Remove(item.UID);
                                _conquerItemCache.Remove(item.UID);
                                Network.GamePackets.ItemUsage iu = new Network.GamePackets.ItemUsage(true);
                                iu.UID = item.UID;
                                iu.ID = Network.GamePackets.ItemUsage.RemoveInventory;
                                Owner.Send(iu);
                                return true;
                            }
                        }
                        else
                        {
                            has += (byte)item.StackSize; items.Add(item); if (has >= times) break;
                        }
                    }
                    else
                    {
                        has++; items.Add(item); if (has >= times) break;
                    }
                }
            if (has >= times)
                foreach (ConquerItem item in items)
                    Remove(item, Enums.ItemUse.Remove);
            return has >= times;
        }
        public bool TryGetValue(uint UID, out ConquerItem Info)
        {
            Info = null;
            lock (_conquerItemCache)
            {
                if (_conquerItemCache.ContainsKey(UID))
                { return _conquerItemCache.TryGetValue(UID, out Info); }
                else
                    return false;
            }
        }

        public bool GetStackContainer(uint ID, ushort maxStack, int amount, out ConquerItem Item)
        {
            Item = null;
            if (ID == 0) return false;
            foreach (ConquerItem item in Objects)
            {
                if (item.ID == ID)
                {
                    if (item.StackSize + amount <= maxStack)
                    {
                        Item = item;
                        return true;
                    }
                }
            }
            return false;
        }
    }
}
