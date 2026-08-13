using System;
using System.Runtime.CompilerServices;
using System.Threading;

namespace Nyx.Server.Utilities;

/// <summary>
/// High-performance, cross-platform time utility.
/// Replaces the Windows-only Time32 struct that used winmm.dll P/Invoke.
/// 
/// Uses Stopwatch for monotonic time measurement (no clock drift, no NTP jumps).
/// Thread-safe by design.
/// </summary>
public readonly struct GameTime : IEquatable<GameTime>, IComparable<GameTime>
{
    private readonly int _milliseconds;

    /// <summary>Zero value representing no time.</summary>
    public static readonly GameTime Zero = new(0);

    /// <summary>
    /// Gets the current monotonic time in milliseconds.
    /// Uses <see cref="Environment.TickCount"/> so that it is on the SAME time base
    /// as the <c>time</c> parameter the <c>ThreadingController</c> passes to every game
    /// callback (e.g. <c>itemsCallback(GameClient, int time)</c>).
    /// <para>Previously this used <c>Stopwatch.ElapsedMilliseconds</c>, which starts at 0
    /// for the process, while the callbacks received <c>Environment.TickCount</c> (ms since
    /// boot). Mixing the two bases made every "has N seconds elapsed?" check instantly
    /// true — floor items vanished, monsters despawned, XP skills ended immediately.</para>
    /// </summary>
    public static GameTime Now
    {
        [MethodImpl(MethodImplOptions.AggressiveInlining)]
        get => new(Environment.TickCount);
    }

    /// <summary>
    /// Gets the current monotonic time as a long (no overflow risk).
    /// </summary>
    public static long NowTicks
    {
        [MethodImpl(MethodImplOptions.AggressiveInlining)]
        get => Environment.TickCount64;
    }

    /// <summary>
    /// Gets the raw millisecond value.
    /// </summary>
    public int Value
    {
        [MethodImpl(MethodImplOptions.AggressiveInlining)]
        get => _milliseconds;
    }

    /// <summary>
    /// Gets the total milliseconds as a double for precise calculations.
    /// </summary>
    public double TotalMilliseconds => _milliseconds;

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public GameTime(int milliseconds)
    {
        _milliseconds = milliseconds;
    }

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public GameTime(uint milliseconds) : this((int)milliseconds) { }

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public GameTime(long milliseconds) : this((int)milliseconds) { }

    #region Time Arithmetic

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public GameTime AddMilliseconds(int amount) => new(_milliseconds + amount);

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public GameTime AddSeconds(int amount) => new(_milliseconds + amount * 1000);

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public GameTime AddMinutes(int amount) => new(_milliseconds + amount * 60000);

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public GameTime AddHours(int amount) => new(_milliseconds + amount * 3600000);

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public GameTime AddDays(int amount) => new(_milliseconds + amount * 86400000);

    #endregion

    #region Difference Calculations

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public int DifferenceInMilliseconds(GameTime other) => _milliseconds - other._milliseconds;

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public int DifferenceInSeconds(GameTime other) => DifferenceInMilliseconds(other) / 1000;

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public int DifferenceInMinutes(GameTime other) => DifferenceInMilliseconds(other) / 60000;

    #endregion

    #region Comparison

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public bool HasElapsed(int milliseconds) => Now._milliseconds - _milliseconds >= milliseconds;

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public bool HasElapsed(GameTime duration) => Now._milliseconds - _milliseconds >= duration._milliseconds;

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public bool HasElapsed(TimeSpan duration) => Now._milliseconds - _milliseconds >= (int)duration.TotalMilliseconds;

    /// <summary>
    /// Returns true if the specified time has passed since this timestamp.
    /// Equivalent to: Now >= this + milliseconds
    /// </summary>
    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public bool Next(int milliseconds = 0)
    {
        var now = Now._milliseconds;
        return _milliseconds + milliseconds <= now;
    }

    /// <summary>
    /// Returns true if the specified time has passed since this timestamp.
    /// Uses the provided time value instead of current time.
    /// Equivalent to: time >= this + milliseconds
    /// </summary>
    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public bool Next(int milliseconds, int time)
    {
        return _milliseconds + milliseconds <= time;
    }

    /// <summary>
    /// Returns true if the specified time has passed since this timestamp.
    /// Uses the provided time value instead of current time.
    /// Equivalent to: time >= this
    /// </summary>
    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public bool NextByTime(int time)
    {
        return _milliseconds <= time;
    }

    #endregion

    #region Backward-Compatible Methods

    /// <summary>
    /// Returns the raw millisecond value. Equivalent to Value property.
    /// Provided for backward compatibility with Time32.AllMilliseconds().
    /// </summary>
    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public int AllMilliseconds() => _milliseconds;

    /// <summary>
    /// Returns the value in seconds (truncated).
    /// </summary>
    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public int AllSeconds() => _milliseconds / 1000;

    /// <summary>
    /// Returns the value in minutes (truncated).
    /// </summary>
    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public int AllMinutes() => _milliseconds / 60000;

    /// <summary>
    /// Returns the value in hours (truncated).
    /// </summary>
    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public int AllHours() => _milliseconds / 3600000;

    /// <summary>
    /// Returns the value in days (truncated).
    /// </summary>
    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public int AllDays() => _milliseconds / 86400000;

    #endregion

    #region Static Helpers

    /// <summary>
    /// Creates a GameTime representing the specified number of seconds.
    /// </summary>
    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public static GameTime FromSeconds(int seconds) => new(seconds * 1000);

    /// <summary>
    /// Creates a GameTime representing the specified number of minutes.
    /// </summary>
    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public static GameTime FromMinutes(int minutes) => new(minutes * 60000);

    /// <summary>
    /// Creates a GameTime representing the specified TimeSpan.
    /// </summary>
    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public static GameTime FromTimeSpan(TimeSpan span) => new((int)span.TotalMilliseconds);

    /// <summary>
    /// Gets the current UTC DateTime for timestamping.
    /// </summary>
    public static DateTime UtcNow => DateTime.UtcNow;

    /// <summary>
    /// Gets the current local DateTime.
    /// </summary>
    public static DateTime LocalNow => DateTime.Now;

    #endregion

    #region IEquatable<GameTime>, IComparable<GameTime>

    public bool Equals(GameTime other) => _milliseconds == other._milliseconds;

    public int CompareTo(GameTime other) => _milliseconds.CompareTo(other._milliseconds);

    public override bool Equals(object? obj) => obj is GameTime other && Equals(other);

    public override int GetHashCode() => _milliseconds;

    public override string ToString() => _milliseconds.ToString();

    #endregion

    #region Operators

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public static bool operator ==(GameTime left, GameTime right) => left._milliseconds == right._milliseconds;

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public static bool operator !=(GameTime left, GameTime right) => left._milliseconds != right._milliseconds;

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public static bool operator <(GameTime left, GameTime right) => left._milliseconds < right._milliseconds;

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public static bool operator >(GameTime left, GameTime right) => left._milliseconds > right._milliseconds;

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public static bool operator <=(GameTime left, GameTime right) => left._milliseconds <= right._milliseconds;

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public static bool operator >=(GameTime left, GameTime right) => left._milliseconds >= right._milliseconds;

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public static GameTime operator +(GameTime left, GameTime right) => new(left._milliseconds + right._milliseconds);

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public static GameTime operator -(GameTime left, GameTime right) => new(left._milliseconds - right._milliseconds);

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public static GameTime operator +(GameTime left, int right) => new(left._milliseconds + right);

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public static GameTime operator -(GameTime left, int right) => new(left._milliseconds - right);

    #endregion

    #region Implicit Conversions

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public static implicit operator GameTime(int milliseconds) => new(milliseconds);

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public static implicit operator int(GameTime time) => time._milliseconds;

    #endregion
}
