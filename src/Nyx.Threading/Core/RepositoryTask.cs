using Nyx.Threading.Contracts;
using System;
using System.Collections.Concurrent;
using System.Threading;
using System.Threading.Tasks;

namespace Nyx.Threading.Core;

/// <summary>
/// Represents a basic parameterless task to be executed.
/// Supports object pooling for reduced GC pressure.
/// </summary>
public sealed class RepositoryTask : IPooledTask
{
    #region Fields

    private Func<CancellationToken, ValueTask>? _handler;
    private Action? _releaseAction;
    private bool _disposed;

    #endregion

    #region Properties

    public Guid Id { get; private set; } = Guid.NewGuid();
    public DateTime EnqueuedAt { get; private set; } = DateTime.UtcNow;

    #endregion

    #region Constructors

    /// <summary>
    /// Creates a new task with the specified handler.
    /// </summary>
    public RepositoryTask(Func<CancellationToken, ValueTask> handler, Action? releaseAction = null)
    {
        _handler = handler ?? throw new ArgumentNullException(nameof(handler));
        _releaseAction = releaseAction;
    }

    /// <summary>
    /// Internal constructor for object pooling.
    /// </summary>
    internal RepositoryTask() { }

    #endregion

    #region Initialization (for pooling)

    /// <summary>
    /// Initializes the task with new handler data (used when renting from pool).
    /// </summary>
    internal void Initialize(Func<CancellationToken, ValueTask> handler, Action? releaseAction = null)
    {
        Id = Guid.NewGuid();
        EnqueuedAt = DateTime.UtcNow;
        _handler = handler;
        _releaseAction = releaseAction;
        _disposed = false;
    }

    /// <summary>
    /// Resets the task state for returning to pool.
    /// Does NOT call release action - that's done in ExecuteAsync finally block.
    /// </summary>
    internal void ResetForPool()
    {
        // Clear references to allow GC of captured objects
        _handler = null;
        _releaseAction = null;
        
        // Reset identity
        Id = Guid.Empty;
        EnqueuedAt = default;
    }

    #endregion

    #region Execution

    /// <summary>
    /// Executes the task handler.
    /// </summary>
    public async ValueTask ExecuteAsync(CancellationToken ct)
    {
        try
        {
            if (_handler != null)
                await _handler(ct);
        }
        finally
        {
            Action? release = _releaseAction;
            _releaseAction = null;
            try { release?.Invoke(); }
            catch { /* Release callbacks must not destabilize the worker. */ }
        }
    }

    #endregion

    #region Pooling

    /// <summary>
    /// Returns this task to the pool for reuse.
    /// </summary>
    public void ReturnToPool()
    {
        TaskPool.Return(this);
    }

    #endregion

    #region IDisposable

    /// <summary>
    /// Disposes the task, invoking the release action if set.
    /// </summary>
    public void Dispose()
    {
        if (_disposed)
            return;
            
        _disposed = true;
        
        try
        {
            _releaseAction?.Invoke();
        }
        catch
        {
            // Swallow exceptions in dispose
        }
        finally
        {
            _handler = null;
            _releaseAction = null;
        }
        
        GC.SuppressFinalize(this);
    }

    #endregion
}

/// <summary>
/// Represents a task that processes a payload and releases resources when complete.
/// Supports object pooling for reduced GC pressure.
/// </summary>
/// <typeparam name="TPayload">The type of payload containing state/resources.</typeparam>
public sealed class RepositoryTask<TPayload> : IPooledTask
{
    #region Fields

    private Func<TPayload, CancellationToken, ValueTask>? _handler;
    private Action<TPayload>? _releaseAction;
    private bool _disposed;

    #endregion

    #region Properties

    public Guid Id { get; private set; } = Guid.NewGuid();
    public DateTime EnqueuedAt { get; private set; } = DateTime.UtcNow;
    public TPayload Payload { get; private set; }

    #endregion

    #region Constructors

    /// <summary>
    /// Creates a new task with the specified payload and handler.
    /// </summary>
    public RepositoryTask(TPayload payload, Func<TPayload, CancellationToken, ValueTask> handler, Action<TPayload>? releaseAction = null)
    {
        Payload = payload;
        _handler = handler ?? throw new ArgumentNullException(nameof(handler));
        _releaseAction = releaseAction;
    }

    /// <summary>
    /// Internal constructor for object pooling.
    /// </summary>
    internal RepositoryTask()
    {
        Payload = default!;
    }

    #endregion

    #region Initialization (for pooling)

    /// <summary>
    /// Initializes the task with new data (used when renting from pool).
    /// </summary>
    internal void Initialize(TPayload payload, Func<TPayload, CancellationToken, ValueTask> handler, Action<TPayload>? releaseAction = null)
    {
        Id = Guid.NewGuid();
        EnqueuedAt = DateTime.UtcNow;
        Payload = payload;
        _handler = handler;
        _releaseAction = releaseAction;
        _disposed = false;
    }

    /// <summary>
    /// Resets the task state for returning to pool.
    /// </summary>
    internal void ResetForPool()
    {
        Payload = default!;
        _handler = null;
        _releaseAction = null;
        Id = Guid.Empty;
        EnqueuedAt = default;
    }

    #endregion

    #region Execution

    /// <summary>
    /// Executes the task handler with the payload.
    /// </summary>
    public async ValueTask ExecuteAsync(CancellationToken ct)
    {
        try
        {
            if (_handler != null)
                await _handler(Payload, ct);
        }
        finally
        {
            Action<TPayload>? release = _releaseAction;
            _releaseAction = null;
            try { release?.Invoke(Payload); }
            catch { /* Release callbacks must not destabilize the worker. */ }
        }
    }

    #endregion

    #region Pooling

    /// <summary>
    /// Returns this task to the pool for reuse.
    /// </summary>
    public void ReturnToPool()
    {
        TaskPool<TPayload>.Return(this);
    }

    #endregion

    #region IDisposable

    public void Dispose()
    {
        if (_disposed)
            return;
            
        _disposed = true;
        
        try
        {
            _releaseAction?.Invoke(Payload);
            
            if (Payload is IDisposable disposable)
            {
                disposable.Dispose();
            }
        }
        catch
        {
            // Swallow exceptions in dispose
        }
        finally
        {
            Payload = default!;
            _handler = null;
            _releaseAction = null;
        }
        
        GC.SuppressFinalize(this);
    }

    #endregion
}

/// <summary>
/// High-performance thread-safe Object Pool for standard tasks.
/// 
/// Key design: We do NOT call Dispose() before returning to pool.
/// Instead, we call ResetForPool() which clears references without invoking release actions.
/// The release action is only invoked when the task is truly disposed (not pooled).
/// </summary>
public static class TaskPool
{
    private static readonly ConcurrentQueue<RepositoryTask> _pool = new();
    private static int _poolCount = 0;
    private const int MaxPoolSize = 50000;

    /// <summary>
    /// Rents a task from the pool or creates a new one.
    /// </summary>
    public static RepositoryTask Rent(Func<CancellationToken, ValueTask> handler, Action? releaseAction = null)
    {
        if (_pool.TryDequeue(out var task))
        {
            Interlocked.Decrement(ref _poolCount);
            // Initialize with new handler data
            task.Initialize(handler, releaseAction);
            return task;
        }

        // Pool empty - create new
        return new RepositoryTask(handler, releaseAction);
    }

    /// <summary>
    /// Returns a task to the pool for reuse.
    /// Does NOT invoke release action - that was already done during execution.
    /// </summary>
    public static void Return(RepositoryTask task)
    {
        if (task == null) return;

        // Reset state without invoking release action
        // (release action was already invoked during ExecuteAsync)
        task.ResetForPool();

        if (Interlocked.Increment(ref _poolCount) <= MaxPoolSize)
        {
            _pool.Enqueue(task);
        }
        else
        {
            Interlocked.Decrement(ref _poolCount);
            // Let GC collect it
        }
    }

    /// <summary>
    /// Gets the current pool size (for monitoring).
    /// </summary>
    public static int Count => _poolCount;
}

/// <summary>
/// High-performance thread-safe Object Pool for generic tasks.
/// </summary>
public static class TaskPool<TPayload>
{
    private static readonly ConcurrentQueue<RepositoryTask<TPayload>> _pool = new();
    private static int _poolCount = 0;
    private const int MaxPoolSize = 50000;

    /// <summary>
    /// Rents a task from the pool or creates a new one.
    /// </summary>
    public static RepositoryTask<TPayload> Rent(TPayload payload, Func<TPayload, CancellationToken, ValueTask> handler, Action<TPayload>? releaseAction = null)
    {
        if (_pool.TryDequeue(out var task))
        {
            Interlocked.Decrement(ref _poolCount);
            task.Initialize(payload, handler, releaseAction);
            return task;
        }

        return new RepositoryTask<TPayload>(payload, handler, releaseAction);
    }

    /// <summary>
    /// Returns a task to the pool for reuse.
    /// </summary>
    public static void Return(RepositoryTask<TPayload> task)
    {
        if (task == null) return;

        task.ResetForPool();

        if (Interlocked.Increment(ref _poolCount) <= MaxPoolSize)
        {
            _pool.Enqueue(task);
        }
        else
        {
            Interlocked.Decrement(ref _poolCount);
        }
    }

    /// <summary>
    /// Gets the current pool size (for monitoring).
    /// </summary>
    public static int Count => _poolCount;
}
