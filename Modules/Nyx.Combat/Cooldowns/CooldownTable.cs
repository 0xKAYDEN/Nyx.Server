using System.Runtime.CompilerServices;

namespace Nyx.Combat.Cooldowns;

/// <summary>
/// Tracks per-entity, per-skill cooldowns.
/// </summary>
/// <remarks>
/// <para>
/// The naive implementation — a <c>Dictionary&lt;(uint entity, ushort skill), DateTime&gt;</c>
/// on a lock — is exactly the sort of thing that quietly costs a server its
/// throughput: a tuple key allocates a hash of two fields, <see cref="DateTime"/>
/// comparisons are far slower than integer ones, and every combat thread contends
/// on the same lock.
/// </para>
/// <para>
/// This instead uses:
/// </para>
/// <list type="bullet">
///   <item>a <see cref="ulong"/> key packing entity id and skill id, so hashing is one integer op;</item>
///   <item><see cref="long"/> millisecond stamps from a monotonic clock, so a comparison is one instruction and NTP adjustments cannot grant free casts;</item>
///   <item>a striped set of dictionaries so unrelated entities never contend on the same lock;</item>
///   <item>an amortised sweep that evicts expired entries during normal use, so the table cannot grow without bound.</item>
/// </list>
/// </remarks>
public sealed class CooldownTable
{
    /// <summary>Power of two so the stripe index is a mask, not a modulo.</summary>
    private const int StripeCount = 32;
    private const int StripeMask = StripeCount - 1;

    /// <summary>Entries swept per stripe once the sweep interval elapses.</summary>
    private const int SweepBudget = 64;

    private readonly Dictionary<ulong, long>[] _stripes;
    private readonly object[] _locks;
    private readonly long[] _nextSweepMs;
    private readonly long _sweepIntervalMs;

    public CooldownTable(int initialCapacityPerStripe = 64, long sweepIntervalMs = 30_000)
    {
        _stripes = new Dictionary<ulong, long>[StripeCount];
        _locks = new object[StripeCount];
        _nextSweepMs = new long[StripeCount];
        _sweepIntervalMs = sweepIntervalMs;

        for (int i = 0; i < StripeCount; i++)
        {
            _stripes[i] = new Dictionary<ulong, long>(initialCapacityPerStripe);
            _locks[i] = new object();
        }
    }

    /// <summary>Packs the entity and skill ids into one 64-bit key.</summary>
    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    private static ulong MakeKey(uint entityId, ushort skillType) => ((ulong)entityId << 16) | skillType;

    /// <summary>
    /// Stripe chosen from the entity id alone, so all of one entity's cooldowns
    /// live together and a single fight touches a single lock.
    /// </summary>
    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    private static int StripeOf(uint entityId) => (int)((entityId * 2654435761u) >> 27) & StripeMask;

    /// <summary>True when the skill is still cooling down for this entity.</summary>
    public bool IsOnCooldown(uint entityId, ushort skillType, long nowMs)
    {
        int stripe = StripeOf(entityId);
        ulong key = MakeKey(entityId, skillType);

        lock (_locks[stripe])
        {
            return _stripes[stripe].TryGetValue(key, out long readyAt) && readyAt > nowMs;
        }
    }

    /// <summary>
    /// Atomically checks the cooldown and, if the skill is ready, starts the next
    /// one. Doing both under a single lock acquisition closes the race where two
    /// packets for the same skill arrive on different threads in the same tick.
    /// </summary>
    /// <returns>True when the skill was ready and has now been put on cooldown.</returns>
    public bool TryConsume(uint entityId, ushort skillType, long nowMs, uint cooldownMs)
    {
        int stripe = StripeOf(entityId);
        ulong key = MakeKey(entityId, skillType);

        lock (_locks[stripe])
        {
            Dictionary<ulong, long> map = _stripes[stripe];

            if (map.TryGetValue(key, out long readyAt) && readyAt > nowMs)
                return false;

            if (cooldownMs > 0)
                map[key] = nowMs + cooldownMs;
            else
                map.Remove(key);

            MaybeSweep(stripe, map, nowMs);
            return true;
        }
    }

    /// <summary>Milliseconds left on a cooldown, or 0 when the skill is ready.</summary>
    public long RemainingMs(uint entityId, ushort skillType, long nowMs)
    {
        int stripe = StripeOf(entityId);
        ulong key = MakeKey(entityId, skillType);

        lock (_locks[stripe])
        {
            if (!_stripes[stripe].TryGetValue(key, out long readyAt)) return 0;
            long remaining = readyAt - nowMs;
            return remaining > 0 ? remaining : 0;
        }
    }

    /// <summary>Clears every cooldown for one entity. Called on logout and on death.</summary>
    public void ClearEntity(uint entityId)
    {
        int stripe = StripeOf(entityId);
        ulong lower = (ulong)entityId << 16;
        ulong upper = lower | 0xFFFF;

        lock (_locks[stripe])
        {
            Dictionary<ulong, long> map = _stripes[stripe];
            if (map.Count == 0) return;

            // Collect first: mutating a dictionary while enumerating it throws.
            // Batched so an entity with more cooldowns than the scratch buffer
            // still gets fully cleared, without ever heap-allocating.
            Span<ulong> scratch = stackalloc ulong[64];
            int found;

            do
            {
                found = 0;

                foreach (ulong key in map.Keys)
                {
                    if (key < lower || key > upper) continue;
                    scratch[found++] = key;
                    if (found == scratch.Length) break;
                }

                for (int i = 0; i < found; i++) map.Remove(scratch[i]);
            }
            while (found == scratch.Length);
        }
    }

    /// <summary>Drops every entry. Used by tests and by a full world reset.</summary>
    public void Clear()
    {
        for (int i = 0; i < StripeCount; i++)
        {
            lock (_locks[i]) _stripes[i].Clear();
        }
    }

    /// <summary>
    /// Amortised eviction: at most <see cref="SweepBudget"/> keys are examined per
    /// sweep, and sweeps happen at most once per interval per stripe, so the cost
    /// never shows up as a spike. Must be called with the stripe lock held.
    /// </summary>
    private void MaybeSweep(int stripe, Dictionary<ulong, long> map, long nowMs)
    {
        if (nowMs < _nextSweepMs[stripe]) return;
        _nextSweepMs[stripe] = nowMs + _sweepIntervalMs;

        if (map.Count == 0) return;

        Span<ulong> expired = stackalloc ulong[SweepBudget];
        int found = 0;

        foreach ((ulong key, long readyAt) in map)
        {
            if (readyAt > nowMs) continue;
            expired[found++] = key;
            if (found == SweepBudget) break;
        }

        for (int i = 0; i < found; i++) map.Remove(expired[i]);
    }
}
