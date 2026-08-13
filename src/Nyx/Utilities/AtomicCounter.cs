using System.Runtime.CompilerServices;
using System.Threading;

namespace Nyx.Server.Utilities;

/// <summary>
/// Thread-safe atomic counter using Interlocked operations.
/// Replaces the legacy Counter class that used non-atomic increment.
/// 
/// Lock-free implementation for maximum performance in concurrent scenarios.
/// </summary>
public sealed class AtomicCounter
{
    private long _value;
    private long _finish;

    /// <summary>
    /// Gets the current value of the counter.
    /// </summary>
    public uint Value
    {
        [MethodImpl(MethodImplOptions.AggressiveInlining)]
        get => (uint)Interlocked.Read(ref _value);
    }

    /// <summary>
    /// Gets the current value of the counter (alias for Value).
    /// Provided for backward compatibility.
    /// </summary>
    public uint Now
    {
        [MethodImpl(MethodImplOptions.AggressiveInlining)]
        get => Value;
    }

    /// <summary>
    /// Gets or sets the finish (maximum) value for the counter.
    /// When the counter reaches this value, it wraps around to the start value.
    /// </summary>
    public uint Finish
    {
        [MethodImpl(MethodImplOptions.AggressiveInlining)]
        get => (uint)_finish;
        [MethodImpl(MethodImplOptions.AggressiveInlining)]
        set => _finish = value;
    }

    /// <summary>
    /// Gets the start value of the counter.
    /// </summary>
    public uint Start { get; }

    /// <summary>
    /// Creates a new AtomicCounter starting from 0 with no upper bound.
    /// </summary>
    public AtomicCounter() : this(0, uint.MaxValue) { }

    /// <summary>
    /// Creates a new AtomicCounter starting from the specified value.
    /// </summary>
    /// <param name="startFrom">The initial value of the counter.</param>
    public AtomicCounter(uint startFrom) : this(startFrom, uint.MaxValue) { }

    /// <summary>
    /// Creates a new AtomicCounter starting from the specified value (int overload).
    /// </summary>
    /// <param name="startFrom">The initial value of the counter.</param>
    public AtomicCounter(int startFrom) : this((uint)startFrom, uint.MaxValue) { }

    /// <summary>
    /// Creates a new AtomicCounter with specified start and finish values.
    /// </summary>
    /// <param name="startFrom">The initial value of the counter.</param>
    /// <param name="finish">The maximum value before wrapping.</param>
    public AtomicCounter(uint startFrom, uint finish)
    {
        Start = startFrom;
        _value = startFrom;
        _finish = finish;
    }

    /// <summary>
    /// Atomically increments the counter and returns the new value.
    /// Wraps around to Start when Finish is reached.
    /// Thread-safe and lock-free.
    /// </summary>
    public uint Next
    {
        [MethodImpl(MethodImplOptions.AggressiveInlining)]
        get
        {
            long newValue = Interlocked.Increment(ref _value);
            if (newValue >= _finish)
            {
                // Wrap around to start
                Interlocked.CompareExchange(ref _value, Start, newValue);
                newValue = Start;
            }
            return (uint)newValue;
        }
    }

    /// <summary>
    /// Atomically increments the counter by the specified amount.
    /// </summary>
    /// <param name="amount">The amount to increment by.</param>
    /// <returns>The new value after increment.</returns>
    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public uint Increment(uint amount)
    {
        long newValue = Interlocked.Add(ref _value, amount);
        if (newValue >= _finish)
        {
            Interlocked.CompareExchange(ref _value, Start, newValue);
            newValue = Start;
        }
        return (uint)newValue;
    }

    /// <summary>
    /// Atomically sets the counter to the specified value.
    /// </summary>
    /// <param name="newValue">The value to set.</param>
    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public void Set(uint newValue)
    {
        Interlocked.Exchange(ref _value, newValue);
    }

    /// <summary>
    /// Implicit conversion to uint for backward compatibility.
    /// </summary>
    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public static implicit operator uint(AtomicCounter counter) => counter.Value;

    /// <summary>
    /// Returns the string representation of the current value.
    /// </summary>
    public override string ToString() => Value.ToString();
}
