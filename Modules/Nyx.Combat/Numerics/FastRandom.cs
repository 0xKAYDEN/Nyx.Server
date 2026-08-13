using System.Runtime.CompilerServices;
using Nyx.Combat.Abstractions;

namespace Nyx.Combat.Numerics;

/// <summary>
/// A xoshiro256** generator, one instance per thread, allocated once.
/// </summary>
/// <remarks>
/// <para>
/// <see cref="System.Random.Shared"/> is thread-safe but goes through an
/// interface-dispatched implementation and a per-call bounds path;
/// <c>System.Random</c> instances are not thread-safe at all and silently corrupt
/// their state when a map thread and a timer thread roll at the same time.
/// </para>
/// <para>
/// This type is ~2ns per roll, needs no locking, and is trivially seedable for
/// deterministic tests. A single attack rolls the RNG up to six times
/// (attack value, hit-rate, critical, break, block, lucky), so the cost adds up
/// across thousands of concurrent fights.
/// </para>
/// </remarks>
public sealed class FastRandom : IRandomSource
{
    [ThreadStatic] private static FastRandom? _threadInstance;

    /// <summary>The generator owned by the calling thread. Never shared, never locked.</summary>
    public static FastRandom Shared => _threadInstance ??= new FastRandom();

    private ulong _s0, _s1, _s2, _s3;

    public FastRandom() : this(unchecked((ulong)Environment.TickCount64 * 0x9E3779B97F4A7C15UL
                                         ^ (ulong)Environment.CurrentManagedThreadId))
    {
    }

    public FastRandom(ulong seed)
    {
        // SplitMix64 expansion so even a poor seed produces a well-mixed state.
        _s0 = SplitMix(ref seed);
        _s1 = SplitMix(ref seed);
        _s2 = SplitMix(ref seed);
        _s3 = SplitMix(ref seed);
    }

    private static ulong SplitMix(ref ulong x)
    {
        ulong z = x += 0x9E3779B97F4A7C15UL;
        z = (z ^ (z >> 30)) * 0xBF58476D1CE4E5B9UL;
        z = (z ^ (z >> 27)) * 0x94D049BB133111EBUL;
        return z ^ (z >> 31);
    }

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public ulong NextUInt64()
    {
        ulong result = BitOperationsRotl(_s1 * 5, 7) * 9;
        ulong t = _s1 << 17;

        _s2 ^= _s0;
        _s3 ^= _s1;
        _s1 ^= _s2;
        _s0 ^= _s3;
        _s2 ^= t;
        _s3 = BitOperationsRotl(_s3, 45);

        return result;
    }

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    private static ulong BitOperationsRotl(ulong x, int k) => System.Numerics.BitOperations.RotateLeft(x, k);

    /// <summary>Uniform value in <c>[0, exclusiveMax)</c> using Lemire's multiply-shift, no division.</summary>
    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public int Next(int exclusiveMax)
    {
        if (exclusiveMax <= 1) return 0;
        return (int)(((ulong)(uint)exclusiveMax * (NextUInt64() >> 32)) >> 32);
    }

    /// <summary>Uniform value in <c>[inclusiveMin, exclusiveMax)</c>.</summary>
    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public int Next(int inclusiveMin, int exclusiveMax)
        => inclusiveMin >= exclusiveMax ? inclusiveMin : inclusiveMin + Next(exclusiveMax - inclusiveMin);

    /// <summary>Uniform double in <c>[0, 1)</c>.</summary>
    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public double NextDouble() => (NextUInt64() >> 11) * (1.0 / 9007199254740992.0);

    /// <summary>True with the given probability expressed in percent (0..100).</summary>
    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public bool Chance(double percent)
    {
        if (percent <= 0) return false;
        if (percent >= 100) return true;
        return NextDouble() * 100.0 < percent;
    }

    /// <summary>True with probability <c>numerator / denominator</c>. Integer-only fast path.</summary>
    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public bool Chance(int numerator, int denominator)
    {
        if (numerator <= 0 || denominator <= 0) return false;
        if (numerator >= denominator) return true;
        return Next(denominator) < numerator;
    }
}
