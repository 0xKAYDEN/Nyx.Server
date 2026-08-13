using System;
using System.Collections;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Runtime.CompilerServices;
using System.Threading;
using Nyx.Server.Utilities;

namespace Nyx.Server.Client;

/// <summary>
/// High-performance packet rate limiter using sliding window algorithm.
/// Replaces the legacy PacketFilter class.
/// 
/// Features:
/// - Thread-safe concurrent access
/// - Per-packet-type rate limiting
/// - Configurable limits per packet type
/// - Automatic window sliding
/// - Minimal allocations
/// </summary>
public sealed class PacketRateLimiter : IEnumerable<int>
{
    /// <summary>
    /// Default time window in milliseconds.
    /// </summary>
    public const int DefaultWindowMs = 500;

    /// <summary>
    /// Default maximum packets per window.
    /// </summary>
    public const int DefaultMaxPackets = 8;

    private readonly ConcurrentDictionary<int, RateLimitEntry> _entries = new();
    private readonly ConcurrentDictionary<int, int> _customLimits = new();
    private readonly int _windowMs;
    private readonly int _defaultMaxPackets;

    /// <summary>
    /// Creates a new PacketRateLimiter with default settings.
    /// </summary>
    public PacketRateLimiter() : this(DefaultWindowMs, DefaultMaxPackets)
    {
    }

    /// <summary>
    /// Creates a new PacketRateLimiter with custom settings.
    /// </summary>
    /// <param name="windowMs">Time window in milliseconds.</param>
    /// <param name="defaultMaxPackets">Default maximum packets per window.</param>
    public PacketRateLimiter(int windowMs, int defaultMaxPackets)
    {
        _windowMs = windowMs > 0 ? windowMs : DefaultWindowMs;
        _defaultMaxPackets = defaultMaxPackets > 0 ? defaultMaxPackets : DefaultMaxPackets;
    }

    /// <summary>
    /// Sets a custom rate limit for a specific packet type.
    /// </summary>
    /// <param name="packetId">The packet type ID.</param>
    /// <param name="maxPackets">Maximum packets allowed in the time window.</param>
    public void SetLimit(int packetId, int maxPackets)
    {
        _customLimits[packetId] = maxPackets;
    }

    /// <summary>
    /// Collection initializer support - adds a packet limit.
    /// </summary>
    public void Add(int packetId, int maxPackets)
    {
        SetLimit(packetId, maxPackets);
    }

    /// <summary>
    /// Checks if a packet should be rate limited.
    /// Returns true if the packet exceeds the rate limit (should be filtered/dropped).
    /// Returns false if the packet is within limits (should be processed).
    /// </summary>
    /// <param name="packetId">The packet type ID.</param>
    /// <returns>True if the packet should be filtered, false if it should be processed.</returns>
    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public bool ShouldFilter(int packetId)
    {
        var now = Environment.TickCount;
        var entry = _entries.GetOrAdd(packetId, _ => new RateLimitEntry());

        // Atomically update and get the count
        var count = entry.IncrementAndGet(now, _windowMs);

        // Get the limit for this packet type
        var limit = _customLimits.TryGetValue(packetId, out var customLimit) ? customLimit : _defaultMaxPackets;

        return count > limit;
    }

    /// <summary>
    /// Checks if a packet should be rate limited (alias for ShouldFilter).
    /// Maintained for backward compatibility with PacketFilter.Filter().
    /// </summary>
    /// <param name="packetId">The packet type ID.</param>
    /// <returns>True if the packet should be filtered.</returns>
    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public bool Filter(int packetId)
    {
        return ShouldFilter(packetId);
    }

    /// <summary>
    /// Resets the rate limiter state for a specific packet type.
    /// </summary>
    public void Reset(int packetId)
    {
        _entries.TryRemove(packetId, out _);
    }

    /// <summary>
    /// Resets all rate limiter state.
    /// </summary>
    public void ResetAll()
    {
        _entries.Clear();
    }

    /// <summary>
    /// Gets the current count for a packet type in the current window.
    /// </summary>
    public int GetCurrentCount(int packetId)
    {
        if (_entries.TryGetValue(packetId, out var entry))
        {
            return entry.CurrentCount;
        }
        return 0;
    }

    /// <summary>
    /// Gets the rate limit for a specific packet type.
    /// </summary>
    public int GetLimit(int packetId)
    {
        return _customLimits.TryGetValue(packetId, out var limit) ? limit : _defaultMaxPackets;
    }

    /// <summary>
    /// Returns an enumerator that iterates through the packet limits.
    /// </summary>
    public IEnumerator<int> GetEnumerator()
    {
        return _customLimits.Keys.GetEnumerator();
    }

    /// <summary>
    /// Returns an enumerator that iterates through the packet limits.
    /// </summary>
    IEnumerator IEnumerable.GetEnumerator()
    {
        return GetEnumerator();
    }

    /// <summary>
    /// Represents a rate limit entry for a packet type.
    /// Thread-safe implementation using locks for simplicity and correctness.
    /// </summary>
    private sealed class RateLimitEntry
    {
        private readonly object _lock = new();
        private int _count;
        private int _windowStart;

        /// <summary>
        /// Gets the current count (for diagnostics).
        /// </summary>
        public int CurrentCount
        {
            get { lock (_lock) { return _count; } }
        }

        /// <summary>
        /// Increments the count and returns the new value.
        /// If the window has expired, resets the count first.
        /// </summary>
        /// <param name="now">Current time in milliseconds.</param>
        /// <param name="windowMs">Window size in milliseconds.</param>
        /// <returns>The new count after increment.</returns>
        [MethodImpl(MethodImplOptions.AggressiveInlining)]
        public int IncrementAndGet(int now, int windowMs)
        {
            lock (_lock)
            {
                // Check if we're in a new time window
                if (now - _windowStart >= windowMs)
                {
                    // Reset for new window
                    _count = 1;
                    _windowStart = now;
                    return 1;
                }

                // Increment count
                return ++_count;
            }
        }
    }
}
