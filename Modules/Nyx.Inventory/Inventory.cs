using Nyx.Inventory.Contracts;
using Nyx.Inventory.Core;
using Nyx.Inventory.Enums;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;

namespace Nyx.Inventory
{
    public class Inventory<TOwner> : BaseInventory where TOwner : IInventoryOwner
    {
        private readonly SemaphoreSlim _lock = new SemaphoreSlim(1, 1);
        public TOwner Owner { get; }
        public Inventory(TOwner owner)
        {
            Owner = owner ?? throw new ArgumentNullException(nameof(owner));
        }
        #region HelperMethods
        public Task<int> GetAvailableSpaceAsync() => Task.FromResult(AvailableSpace);
        public Task<bool> HasSpaceAsync(int required = 1) => Task.FromResult(AvailableSpace >= required);
        #endregion

        #region Core Methods
        public async Task<InventoryTransaction> AddAsync(InventoryItem item)
        {
            if (item == null) throw new ArgumentNullException(nameof(item));

            await _lock.WaitAsync();
            try
            {
                if (AvailableSpace <= 0) return null;

                item.ComputeHash();
                Items[item.UID] = item;

                var tx = CreateTransaction(Events.CreateAndAdd, item.UID, null, item.Hash,
                    JsonSerializer.Serialize(new { item.ID, item.Plus, item.StackSize, item.Bound }));

                Owner.NotifyInventoryChange(tx);
                return tx;
            }
            finally { _lock.Release(); }
        }

        public async Task<InventoryTransaction> AddWithStackingAsync(InventoryItem item)
        {
            if (item == null) throw new ArgumentNullException(nameof(item));
            if (item.StackSize == 0) item.StackSize = 1;

            await _lock.WaitAsync();
            try
            {
                // Try merge into existing stack first
                if (item.MaxStackSize > 1 && item.StackSize > 0)
                {
                    var candidate = Items.Values.FirstOrDefault(i =>
                        i.ID == item.ID && i.StackSize < i.MaxStackSize);

                    if (candidate != null)
                        return await StackAsync(candidate, item);
                }

                if (AvailableSpace <= 0) return null;
                return await AddAsync(item);
            }
            finally { _lock.Release(); }
        }

        public async Task<InventoryTransaction> RemoveAsync(uint uid)
        {
            await _lock.WaitAsync();
            try
            {
                if (!Items.TryGetValue(uid, out var item)) return null;

                var hashBefore = item.Hash;
                Items.Remove(uid);

                var tx = CreateTransaction(Events.Remove, uid, hashBefore, null,
                    JsonSerializer.Serialize(new { item.ID, item.StackSize }));

                Owner.NotifyInventoryChange(tx);
                return tx;
            }
            finally { _lock.Release(); }
        }

        public async Task<InventoryTransaction> RemoveAsync(Func<InventoryItem, bool> predicate)
        {
            await _lock.WaitAsync();
            try
            {
                var item = Items.Values.FirstOrDefault(predicate);
                if (item == null) return null;
                return await RemoveAsync(item.UID);
            }
            finally { _lock.Release(); }
        }
        public async Task<InventoryTransaction> RemoveQuantityAsync(uint id, ushort amount)
        {
            if (amount == 0) return null;

            await _lock.WaitAsync();
            try
            {
                var candidates = Items.Values
                    .Where(i => i.ID == id)
                    .OrderByDescending(i => i.StackSize)
                    .ToList();

                ushort remaining = amount;
                var removedUIDs = new List<uint>();
                string combinedHashBefore = string.Empty;

                foreach (var item in candidates)
                {
                    if (remaining == 0) break;
                    combinedHashBefore += item.Hash + ";";

                    ushort stack = item.StackSize > 0 ? item.StackSize : (ushort)1;

                    if (stack > remaining)
                    {
                        // Partial stack removal
                        item.StackSize -= remaining;
                        item.ComputeHash();

                        var tx = CreateTransaction(Events.RemoveQuantity, item.UID,
                            combinedHashBefore, item.Hash,
                            JsonSerializer.Serialize(new { item.ID, Requested = amount, Removed = amount, Remaining = item.StackSize }));

                        Owner.NotifyInventoryChange(tx);
                        return tx;
                    }
                    else
                    {
                        // Remove entire stack
                        remaining -= stack;
                        removedUIDs.Add(item.UID);
                        Items.Remove(item.UID);
                    }
                }

                if (removedUIDs.Count > 0)
                {
                    var tx = CreateTransaction(Events.RemoveQuantity, removedUIDs[0],
                        combinedHashBefore, null,
                        JsonSerializer.Serialize(new { itemId = id, Requested = amount, Removed = amount - remaining, UIDs = removedUIDs }));

                    Owner.NotifyInventoryChange(tx);
                    return tx;
                }

                return null; // Not enough items
            }
            finally { _lock.Release(); }
        }

        public async Task<InventoryTransaction> UpdateAsync(uint uid, Action<InventoryItem> modifier)
        {
            await _lock.WaitAsync();
            try
            {
                if (!Items.TryGetValue(uid, out var item)) return null;

                var hashBefore = item.Hash;
                modifier(item);
                item.ComputeHash();

                var tx = CreateTransaction(Events.Update, uid, hashBefore, item.Hash,
                    JsonSerializer.Serialize(new { item.ID, item.Plus }));

                Owner.NotifyInventoryChange(tx);
                return tx;
            }
            finally { _lock.Release(); }
        }
        #endregion
        #region Queries
        public Task<InventoryItem> GetItemAsync(uint uid)
        {
            Items.TryGetValue(uid, out var item);
            return Task.FromResult(item);
        }

        public Task<InventoryItem> GetItemByIdAsync(uint id)
        {
            return Task.FromResult(Items.Values.FirstOrDefault(i => i.ID == id));
        }

        public Task<bool> ContainsAsync(uint id, ushort amount = 1)
        {
            uint count = 0;
            foreach (var item in Items.Values.Where(i => i.ID == id))
                count += item.StackSize > 0 ? item.StackSize : (uint)1;

            return Task.FromResult(count >= amount);
        }

        public Task<IReadOnlyCollection<InventoryItem>> GetAllAsync()
        {
            return Task.FromResult<IReadOnlyCollection<InventoryItem>>(Items.Values.ToList());
        }
        public Task<IReadOnlyList<InventoryTransaction>> GetTransactionLogAsync()
        {
            return Task.FromResult<IReadOnlyList<InventoryTransaction>>(TransactionLog.AsReadOnly());
        }
        #endregion

        #region Integrity Verification
        public Task<bool> VerifyChainAsync()
        {
            string previous = string.Empty;
            foreach (var tx in TransactionLog.OrderBy(t => t.Timestamp))
            {
                var payload = $"{tx.Id:N}|{tx.Timestamp:O}|{tx.Operation}|{tx.ItemUID}|{tx.ItemHashBefore}|{tx.ItemHashAfter}|{tx.OwnerUID}|{tx.Details}|{previous}";
                var hash = Sha256Hex(payload);

                if (hash != tx.Hash)
                    return Task.FromResult(false);

                previous = tx.Hash;
            }
            return Task.FromResult(true);
        }
        #endregion

        private async Task<InventoryTransaction> StackAsync(InventoryItem existing, InventoryItem incoming)
        {
            var hashBefore = existing.Hash;
            ushort space = (ushort)(existing.MaxStackSize - existing.StackSize);
            ushort toAdd = incoming.StackSize > space ? space : incoming.StackSize;

            existing.StackSize += toAdd;
            existing.ComputeHash();

            // If leftovers remain, add as new item (recurse safely)
            if (incoming.StackSize > toAdd)
            {
                incoming.StackSize -= toAdd;
                await AddAsync(incoming);
            }

            var tx = CreateTransaction(Events.Stack, existing.UID, hashBefore, existing.Hash,
                JsonSerializer.Serialize(new { existing.ID, Added = toAdd, Total = existing.StackSize }));

            Owner.NotifyInventoryChange(tx);
            return tx;
        }
        private InventoryTransaction CreateTransaction(Events op, uint itemUid,
            string hashBefore, string hashAfter, string details)
        {
            var tx = new InventoryTransaction
            {
                Operation = op,
                ItemUID = itemUid,
                ItemHashBefore = hashBefore,
                ItemHashAfter = hashAfter,
                OwnerUID = Owner?.EntityUID ?? 0,
                Details = details
            };
            tx.ComputeHash(LastTransactionHash);
            LastTransactionHash = tx.Hash;
            TransactionLog.Add(tx);
            return tx;
        }
        private static string Sha256Hex(string input)
        {
            using (var sha = SHA256.Create())
            {
                var bytes = sha.ComputeHash(Encoding.UTF8.GetBytes(input));
                return BitConverter.ToString(bytes).Replace("-", "");
            }
        }
    }
}
