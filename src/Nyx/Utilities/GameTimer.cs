using System;
using System.Runtime.CompilerServices;
using System.Threading;
using Nyx.Threading.Core;
using Nyx.Threading.Enums;

namespace Nyx.Server.Utilities;

/// <summary>
/// Modern game timer using PeriodicTimer-based async scheduling.
/// Replaces the legacy TimerRule class with proper async support.
/// 
/// Uses the existing ThreadingController infrastructure for efficient scheduling.
/// Thread-safe and disposable.
/// </summary>
public class GameTimer : IDisposable
{
    private readonly Action<int> _action;
    private readonly int _periodMs;
    private readonly bool _recurring;
    private readonly RepositoryCategory _category;
    private readonly int _shardKey;
    private IDisposable? _subscription;
    private bool _disposed;

    /// <summary>
    /// Gets the period in milliseconds.
    /// </summary>
    public int PeriodMs => _periodMs;

    /// <summary>
    /// Gets whether this timer is recurring.
    /// </summary>
    public bool IsRecurring => _recurring;

    /// <summary>
    /// Gets whether this timer is currently active (subscribed).
    /// </summary>
    public bool IsActive => _subscription != null && !_disposed;

    /// <summary>
    /// Creates a new GameTimer with the specified action and period.
    /// </summary>
    /// <param name="action">The action to execute on each tick. Receives Environment.TickCount.</param>
    /// <param name="periodMs">The period in milliseconds between ticks.</param>
    /// <param name="recurring">Whether the timer should recur (default: true).</param>
    /// <param name="category">The threading category for scheduling (default: GameLogic).</param>
    /// <param name="shardKey">The shard key for load balancing (default: 0).</param>
    public GameTimer(
        Action<int> action,
        int periodMs,
        bool recurring = true,
        RepositoryCategory category = RepositoryCategory.GameLogic,
        int shardKey = 0)
    {
        _action = action ?? throw new ArgumentNullException(nameof(action));
        _periodMs = periodMs > 0 ? periodMs : throw new ArgumentOutOfRangeException(nameof(periodMs), "Period must be positive");
        _recurring = recurring;
        _category = category;
        _shardKey = shardKey;
    }

    /// <summary>
    /// Starts the timer by subscribing to the ThreadingController.
    /// </summary>
    /// <returns>An IDisposable that can be used to stop the timer.</returns>
    public IDisposable Start()
    {
        ObjectDisposedException.ThrowIf(_disposed, this);

        if (_subscription != null)
            return _subscription;

        _subscription = ThreadingController.Subscribe(
            _category,
            _action,
            _periodMs,
            _recurring,
            _shardKey);

        return this;
    }

    /// <summary>
    /// Stops the timer by disposing the subscription.
    /// </summary>
    public void Stop()
    {
        _subscription?.Dispose();
        _subscription = null;
    }

    /// <summary>
    /// Disposes the timer and stops it.
    /// </summary>
    public void Dispose()
    {
        if (_disposed) return;
        _disposed = true;
        Stop();
        GC.SuppressFinalize(this);
    }
}

/// <summary>
/// Generic game timer with a parameter.
/// Replaces the legacy TimerRule&lt;T&gt; class.
/// 
/// Used as a FACTORY that creates independent subscriptions for each parameter.
/// Each call to Start() creates a new subscription that can be disposed independently
/// without affecting the timer or other subscriptions.
/// </summary>
/// <typeparam name="T">The type of parameter to pass to the action.</typeparam>
public class GameTimer<T> : IDisposable where T : notnull
{
    private readonly Action<T, int> _action;
    private readonly int _periodMs;
    private readonly bool _recurring;
    private readonly RepositoryCategory _category;
    private readonly int _shardKey;
    private bool _disposed;

    /// <summary>
    /// Gets the period in milliseconds.
    /// </summary>
    public int PeriodMs => _periodMs;

    /// <summary>
    /// Gets whether this timer is recurring.
    /// </summary>
    public bool IsRecurring => _recurring;

    /// <summary>
    /// Gets the action to execute.
    /// </summary>
    internal Action<T, int> Action => _action;

    /// <summary>
    /// Gets whether this timer is recurring (for internal use).
    /// </summary>
    internal bool Recurring => _recurring;

    /// <summary>
    /// Creates a new GameTimer with the specified action and period.
    /// The parameter is provided later when calling Start() or Add().
    /// </summary>
    /// <param name="action">The action to execute on each tick.</param>
    /// <param name="periodMs">The period in milliseconds between ticks.</param>
    /// <param name="recurring">Whether the timer should recur (default: true).</param>
    /// <param name="category">The threading category for scheduling (default: GameLogic).</param>
    /// <param name="shardKey">The shard key for load balancing (default: 0).</param>
    public GameTimer(
        Action<T, int> action,
        int periodMs,
        bool recurring = true,
        RepositoryCategory category = RepositoryCategory.GameLogic,
        int shardKey = 0)
    {
        _action = action ?? throw new ArgumentNullException(nameof(action));
        _periodMs = periodMs > 0 ? periodMs : throw new ArgumentOutOfRangeException(nameof(periodMs), "Period must be positive");
        _recurring = recurring;
        _category = category;
        _shardKey = shardKey;
    }

    /// <summary>
    /// Starts a new subscription with the specified parameter.
    /// Returns a lightweight subscription wrapper that can be disposed independently.
    /// Disposing the subscription does NOT dispose the timer itself.
    /// </summary>
    /// <param name="param">The parameter to pass to the action on each tick.</param>
    /// <returns>An IDisposable subscription that only stops THIS subscription when disposed.</returns>
    public IDisposable Start(T param)
    {
        ObjectDisposedException.ThrowIf(_disposed, this);
        ArgumentNullException.ThrowIfNull(param);

        // Create a new subscription each time - NOT returning 'this'
        var subscription = ThreadingController.Subscribe(
            _category,
            _action,
            param,
            _periodMs,
            _recurring,
            _shardKey);

        // Return a lightweight wrapper that only disposes the subscription
        return new TimerSubscription(subscription);
    }

    /// <summary>
    /// Disposes the timer. This marks the timer as disposed so no new subscriptions can be created.
    /// Existing subscriptions are NOT affected.
    /// </summary>
    public void Dispose()
    {
        if (_disposed) return;
        _disposed = true;
        GC.SuppressFinalize(this);
    }

    /// <summary>
    /// Lightweight subscription wrapper that only disposes the inner subscription,
    /// NOT the parent GameTimer. This allows the timer to be reused across multiple
    /// subscriptions (e.g., multiple players).
    /// </summary>
    private sealed class TimerSubscription : IDisposable
    {
        private IDisposable? _inner;
        private int _disposed;

        public TimerSubscription(IDisposable inner)
        {
            _inner = inner ?? throw new ArgumentNullException(nameof(inner));
        }

        public void Dispose()
        {
            if (Interlocked.Exchange(ref _disposed, 1) == 1)
                return;

            _inner?.Dispose();
            _inner = null;
        }
    }
}
