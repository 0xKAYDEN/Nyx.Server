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
    /// <summary>
    /// Thread-safe player inventory.
    /// </summary>
    /// <remarks>
    /// Concurrency contract:
    /// <list type="bullet">
    /// <item>
    /// Every public mutator acquires <c>_lock</c> exactly once and delegates to a private
    /// <c>*Core</c> method. The <c>*Core</c> methods assume the lock is already held and must
    /// never take it, because <see cref="SemaphoreSlim"/> is not reentrant: a nested acquire
    /// from the same flow blocks on a permit only that same flow could release, which is an
    /// unrecoverable self-deadlock (the task never completes and the permit is never returned,
    /// so the inventory is dead for the rest of the session).
    /// </item>
    /// <item>
    /// Owner callbacks are raised only after the lock has been released. Invoking arbitrary
    /// owner code while holding the lock lets the owner re-enter the inventory and self-deadlock,
    /// and makes lock hold time depend on unrelated code such as logging or packet sends.
    /// </item>
    /// <item>
    /// Reads also take the lock. <c>Items</c> is a plain <see cref="Dictionary{TKey,TValue}"/>,
    /// so an unsynchronised read concurrent with a write can observe a torn bucket state and
    /// throw or loop forever.
    /// </item>
    /// </list>
    /// </remarks>
    public class Inventory<TOwner> : BaseInventory where TOwner : IInventoryOwner
    {
        private readonly SemaphoreSlim _lock = new SemaphoreSlim(1, 1);
        public TOwner Owner { get; }
        public Inventory(TOwner owner)
        {
            Owner = owner ?? throw new ArgumentNullException(nameof(owner));
        }

        /// <summary>
        /// Raises the owner notification for a transaction produced under the lock.
        /// Must only be called after <c>_lock</c> has been released. Owner code is untrusted
        /// from this class's point of view, so a throwing handler must not corrupt inventory
        /// state or propagate out of a completed mutation.
        /// </summary>
        private void Notify(InventoryTransaction tx)
        {
            if (tx == null) return;
            try
            {
                Owner.NotifyInventoryChange(tx);
            }
            catch
            {
                // The mutation already committed; a failing observer cannot undo it.
            }
        }

        /// <summary>
        /// Raises notifications for a batch of transactions produced by a single operation
        /// (for example a stack merge that also created an overflow item), in order.
        /// </summary>
        private void Notify(List<InventoryTransaction> transactions)
        {
            if (transactions == null) return;
            for (int i = 0; i < transactions.Count; i++)
                Notify(transactions[i]);
        }

        #region HelperMethods
        public Task<int> GetAvailableSpaceAsync() => Task.FromResult(AvailableSpace);
        public Task<bool> HasSpaceAsync(int required = 1) => Task.FromResult(AvailableSpace >= required);
        #endregion

        #region Core Methods
        public async Task<InventoryTransaction> AddAsync(InventoryItem item)
        {
            if (item == null) throw new ArgumentNullException(nameof(item));

            InventoryTransaction tx;
            await _lock.WaitAsync().ConfigureAwait(false);
            try
            {
                tx = AddCore(item);
            }
            finally { _lock.Release(); }

            Notify(tx);
            return tx;
        }

        /// <summary>Lock-free core; caller must hold <c>_lock</c>.</summary>
        private InventoryTransaction AddCore(InventoryItem item)
        {
            if (AvailableSpace <= 0) return null;

            item.ComputeHash();
            Items[item.UID] = item;

            return CreateTransaction(Events.CreateAndAdd, item.UID, null, item.Hash,
                JsonSerializer.Serialize(new { item.ID, item.Plus, item.StackSize, item.Bound }));
        }

        public async Task<InventoryTransaction> AddWithStackingAsync(InventoryItem item)
        {
            if (item == null) throw new ArgumentNullException(nameof(item));
            if (item.StackSize == 0) item.StackSize = 1;

            var produced = new List<InventoryTransaction>(2);
            await _lock.WaitAsync().ConfigureAwait(false);
            try
            {
                // Try to merge into an existing stack first.
                InventoryItem candidate = null;
                if (item.MaxStackSize > 1 && item.StackSize > 0)
                {
                    candidate = Items.Values.FirstOrDefault(i =>
                        i.ID == item.ID && i.StackSize < i.MaxStackSize);
                }

                if (candidate != null)
                {
                    // Previously this awaited StackAsync, which awaited AddAsync, which
                    // re-acquired the non-reentrant _lock already held here -> permanent
                    // self-deadlock on every overflowing stack merge.
                    StackCore(candidate, item, produced);
                }
                else
                {
                    if (AvailableSpace <= 0) return null;

                    var added = AddCore(item);
                    if (added != null) produced.Add(added);
                }
            }
            finally { _lock.Release(); }

            Notify(produced);
            return produced.Count > 0 ? produced[produced.Count - 1] : null;
        }

        public async Task<InventoryTransaction> RemoveAsync(uint uid)
        {
            InventoryTransaction tx;
            await _lock.WaitAsync().ConfigureAwait(false);
            try
            {
                tx = RemoveCore(uid);
            }
            finally { _lock.Release(); }

            Notify(tx);
            return tx;
        }

        /// <summary>Lock-free core; caller must hold <c>_lock</c>.</summary>
        private InventoryTransaction RemoveCore(uint uid)
        {
            if (!Items.TryGetValue(uid, out var item)) return null;

            var hashBefore = item.Hash;
            Items.Remove(uid);

            return CreateTransaction(Events.Remove, uid, hashBefore, null,
                JsonSerializer.Serialize(new { item.ID, item.StackSize }));
        }

        public async Task<InventoryTransaction> RemoveAsync(Func<InventoryItem, bool> predicate)
        {
            if (predicate == null) throw new ArgumentNullException(nameof(predicate));

            InventoryTransaction tx;
            await _lock.WaitAsync().ConfigureAwait(false);
            try
            {
                // Was: await RemoveAsync(item.UID) while already holding _lock -> self-deadlock.
                var item = Items.Values.FirstOrDefault(predicate);
                if (item == null) return null;
                tx = RemoveCore(item.UID);
            }
            finally { _lock.Release(); }

            Notify(tx);
            return tx;
        }

        public async Task<InventoryTransaction> RemoveQuantityAsync(uint id, ushort amount)
        {
            if (amount == 0) return null;

            InventoryTransaction tx = null;
            await _lock.WaitAsync().ConfigureAwait(false);
            try
            {
                var candidates = Items.Values
                    .Where(i => i.ID == id)
                    .OrderByDescending(i => i.StackSize)
                    .ToList();

                // Only mutate once the whole request can be satisfied. The previous version
                // removed stacks as it walked the candidates and returned null on a shortfall,
                // leaving the items destroyed and the caller believing nothing happened.
                uint available = 0;
                foreach (var item in candidates)
                    available += item.StackSize > 0 ? item.StackSize : (uint)1;

                if (available < amount) return null;

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
                        // Partial stack removal.
                        item.StackSize -= remaining;
                        remaining = 0;
                        item.ComputeHash();

                        tx = CreateTransaction(Events.RemoveQuantity, item.UID,
                            combinedHashBefore, item.Hash,
                            JsonSerializer.Serialize(new { item.ID, Requested = amount, Removed = amount, Remaining = item.StackSize }));

                        break;
                    }

                    // Remove the entire stack.
                    remaining -= stack;
                    removedUIDs.Add(item.UID);
                    Items.Remove(item.UID);
                }

                if (tx == null && removedUIDs.Count > 0)
                {
                    tx = CreateTransaction(Events.RemoveQuantity, removedUIDs[0],
                        combinedHashBefore, null,
                        JsonSerializer.Serialize(new { itemId = id, Requested = amount, Removed = amount - remaining, UIDs = removedUIDs }));
                }
            }
            finally { _lock.Release(); }

            Notify(tx);
            return tx;
        }

        public async Task<InventoryTransaction> UpdateAsync(uint uid, Action<InventoryItem> modifier)
        {
            if (modifier == null) throw new ArgumentNullException(nameof(modifier));

            InventoryTransaction tx;
            await _lock.WaitAsync().ConfigureAwait(false);
            try
            {
                if (!Items.TryGetValue(uid, out var item)) return null;

                var hashBefore = item.Hash;
                modifier(item);
                item.ComputeHash();

                tx = CreateTransaction(Events.Update, uid, hashBefore, item.Hash,
                    JsonSerializer.Serialize(new { item.ID, item.Plus }));
            }
            finally { _lock.Release(); }

            Notify(tx);
            return tx;
        }
        #endregion

        #region Synchronous API
        // The inventory is a pure in-memory structure: none of the operations above perform I/O,
        // and their Task-returning signatures are synthetic. Callers on the game-logic thread
        // therefore used to block on them with .Wait()/.Result, which is sync-over-async: it
        // costs a thread-pool hop and, on a single-worker container, risks stalling or
        // deadlocking every other player. These overloads expose the same lock-protected cores
        // directly so synchronous callers never have to block on a Task at all.
        //
        // They use the same _lock as the async methods, so the two families are mutually
        // exclusive and cannot interleave. Do NOT call them from inside an async method that
        // already holds the lock.

        public InventoryTransaction Add(InventoryItem item)
        {
            if (item == null) throw new ArgumentNullException(nameof(item));

            InventoryTransaction tx;
            _lock.Wait();
            try
            {
                tx = AddCore(item);
            }
            finally { _lock.Release(); }

            Notify(tx);
            return tx;
        }

        public InventoryTransaction Remove(uint uid)
        {
            InventoryTransaction tx;
            _lock.Wait();
            try
            {
                tx = RemoveCore(uid);
            }
            finally { _lock.Release(); }

            Notify(tx);
            return tx;
        }

        public InventoryTransaction Update(uint uid, Action<InventoryItem> modifier)
        {
            if (modifier == null) throw new ArgumentNullException(nameof(modifier));

            InventoryTransaction tx;
            _lock.Wait();
            try
            {
                if (!Items.TryGetValue(uid, out var item)) return null;

                var hashBefore = item.Hash;
                modifier(item);
                item.ComputeHash();

                tx = CreateTransaction(Events.Update, uid, hashBefore, item.Hash,
                    JsonSerializer.Serialize(new { item.ID, item.Plus }));
            }
            finally { _lock.Release(); }

            Notify(tx);
            return tx;
        }

        public IReadOnlyCollection<InventoryItem> GetAll()
        {
            _lock.Wait();
            try
            {
                return Items.Values.ToList();
            }
            finally { _lock.Release(); }
        }
        #endregion

        #region Queries
        public async Task<InventoryItem> GetItemAsync(uint uid)
        {
            await _lock.WaitAsync().ConfigureAwait(false);
            try
            {
                Items.TryGetValue(uid, out var item);
                return item;
            }
            finally { _lock.Release(); }
        }

        public async Task<InventoryItem> GetItemByIdAsync(uint id)
        {
            await _lock.WaitAsync().ConfigureAwait(false);
            try
            {
                return Items.Values.FirstOrDefault(i => i.ID == id);
            }
            finally { _lock.Release(); }
        }

        public async Task<bool> ContainsAsync(uint id, ushort amount = 1)
        {
            await _lock.WaitAsync().ConfigureAwait(false);
            try
            {
                uint count = 0;
                foreach (var item in Items.Values.Where(i => i.ID == id))
                    count += item.StackSize > 0 ? item.StackSize : (uint)1;

                return count >= amount;
            }
            finally { _lock.Release(); }
        }

        public async Task<IReadOnlyCollection<InventoryItem>> GetAllAsync()
        {
            await _lock.WaitAsync().ConfigureAwait(false);
            try
            {
                // Snapshot: the caller enumerates outside the lock.
                return Items.Values.ToList();
            }
            finally { _lock.Release(); }
        }

        public async Task<IReadOnlyList<InventoryTransaction>> GetTransactionLogAsync()
        {
            await _lock.WaitAsync().ConfigureAwait(false);
            try
            {
                // Copy, not AsReadOnly: AsReadOnly wraps the live list, so the caller would be
                // enumerating a collection that concurrent mutations keep appending to.
                return TransactionLog.ToList();
            }
            finally { _lock.Release(); }
        }
        #endregion

        #region Integrity Verification
        public async Task<bool> VerifyChainAsync()
        {
            List<InventoryTransaction> snapshot;
            await _lock.WaitAsync().ConfigureAwait(false);
            try
            {
                snapshot = TransactionLog.OrderBy(t => t.Timestamp).ToList();
            }
            finally { _lock.Release(); }

            // Hashing is pure CPU work over a private snapshot; do it outside the lock.
            string previous = string.Empty;
            foreach (var tx in snapshot)
            {
                var payload = $"{tx.Id:N}|{tx.Timestamp:O}|{tx.Operation}|{tx.ItemUID}|{tx.ItemHashBefore}|{tx.ItemHashAfter}|{tx.OwnerUID}|{tx.Details}|{previous}";
                var hash = Sha256Hex(payload);

                if (hash != tx.Hash)
                    return false;

                previous = tx.Hash;
            }
            return true;
        }
        #endregion

        /// <summary>
        /// Merges <paramref name="incoming"/> into <paramref name="existing"/>, adding any
        /// overflow as a new item. Lock-free core; caller must hold <c>_lock</c>.
        /// Appends every transaction it produces to <paramref name="produced"/> so the caller
        /// can notify after releasing the lock.
        /// </summary>
        private void StackCore(InventoryItem existing, InventoryItem incoming, List<InventoryTransaction> produced)
        {
            var hashBefore = existing.Hash;
            ushort space = (ushort)(existing.MaxStackSize - existing.StackSize);
            ushort toAdd = incoming.StackSize > space ? space : incoming.StackSize;

            existing.StackSize += toAdd;
            existing.ComputeHash();

            var stackTx = CreateTransaction(Events.Stack, existing.UID, hashBefore, existing.Hash,
                JsonSerializer.Serialize(new { existing.ID, Added = toAdd, Total = existing.StackSize }));
            produced.Add(stackTx);

            // Leftovers become a new item. Ordering matters: the stack transaction is recorded
            // before the overflow add so the hash chain reflects the real sequence.
            if (incoming.StackSize > toAdd)
            {
                incoming.StackSize -= toAdd;
                var overflowTx = AddCore(incoming);
                if (overflowTx != null) produced.Add(overflowTx);
            }
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
