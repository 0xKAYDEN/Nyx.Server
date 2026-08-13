using System.Runtime.CompilerServices;

namespace Nyx.Monsters.Core;

/// <summary>Injectable RNG so tests/services can be deterministic.</summary>
public interface IRandomProvider
{
    int Next(int maxValue);
    int Next(int minValue, int maxValue);
    bool Chance(int percent);              // 0-100
    bool ChancePerTenThousand(uint rate);  // 0-10000 (0.01% precision)
}

/// <summary>
/// Fast non-cryptographic RNG (xorshift) implementing <see cref="IRandomProvider"/>.
/// Stateless aside from the seed; inject as a singleton.
/// </summary>
public sealed class XorShiftRandom : IRandomProvider
{
    private ulong _state;

    public XorShiftRandom(ulong seed = 0)
    {
        _state = seed != 0
            ? seed
            : (ulong)Environment.TickCount64 ^ 0x9E3779B97F4A7C15UL;
    }

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public int Next(int maxValue) => (int)(NextUInt64() % (ulong)maxValue);

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public int Next(int minValue, int maxValue) => minValue + Next(maxValue - minValue);

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public bool Chance(int percent) => Next(100) < percent;

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public bool ChancePerTenThousand(uint rate) => Next(10000) < rate;

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    private ulong NextUInt64()
    {
        _state ^= _state << 13;
        _state ^= _state >> 7;
        _state ^= _state << 17;
        return _state;
    }
}

/// <summary>Marker for objects that can be returned to an <see cref="ObjectPool{T}"/>.</summary>
public interface IPooledObject
{
    void Reset();
}

/// <summary>
/// Lightweight thread-safe object pool. Pre-warmed; rents/returns without locking
/// on the common path (uses a simple lock — keep this small and contention-free).
/// </summary>
public sealed class ObjectPool<T> where T : class, IPooledObject, new()
{
    private readonly T[] _items;
    private readonly int _capacity;
    private int _count;

    public ObjectPool(int prewarm = 64, int capacity = 10_000)
    {
        _capacity = capacity;
        _items = new T[capacity];
        for (int i = 0; i < Math.Min(prewarm, capacity); i++)
        {
            _items[i] = new T();
            _count++;
        }
    }

    public T Rent()
    {
        lock (this)
        {
            if (_count > 0) return _items[--_count];
        }
        return new T();
    }

    public void Return(T item)
    {
        if (item is null) return;
        item.Reset();
        lock (this)
        {
            if (_count < _capacity) _items[_count++] = item;
        }
    }

    public int Available => _count;
}

/// <summary>Result of an AI tick — value tuple, stack allocated.</summary>
public readonly record struct AIResult(
    Position NewPosition,
    bool DidMove,
    uint TargetId,
    bool DidAttack);

/// <summary>Result of a combat calculation — value tuple, stack allocated.</summary>
public readonly record struct CombatResult(
    uint Damage,
    bool Critical,
    ushort? SpellId);

/// <summary>A generated drop — value tuple, stack allocated.</summary>
public readonly record struct DropResult(
    uint ItemId,
    Position Position,
    uint OwnerId);

/// <summary>Exp awarded to one player — value tuple, stack allocated.</summary>
public readonly record struct ExpShare(uint PlayerId, ulong Experience);