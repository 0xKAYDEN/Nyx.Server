using System;
using System.Threading;
using System.Threading.Tasks;
using Nyx.Threading.Enums;

namespace Nyx.Threading.Contracts;

/// <summary>
/// Represents a task that can be executed by the Nyx.Threading system.
/// All game logic should implement this interface for proper scheduling.
/// </summary>
public interface IGameTask : IRepositoryTask
{
    /// <summary>
    /// Gets the priority of this task.
    /// Higher priority tasks are executed first.
    /// </summary>
    TaskPriority Priority { get; }
    
    /// <summary>
    /// Gets the shard key for load balancing.
    /// Tasks with the same shard key are processed sequentially.
    /// </summary>
    int ShardKey { get; }
}

// NOTE: TaskPriority intentionally lives in Nyx.Threading.Enums (single source of truth) and is
// imported above via `using Nyx.Threading.Enums`. There was once a SECOND `TaskPriority` enum
// declared right here in this namespace, which produced CS0104 "ambiguous reference" in every file
// that imported both namespaces (Repository, ThreadContainer, ThreadingController,
// NetworkThreadContainer) and took the whole solution down. Do NOT reintroduce a duplicate enum
// here; reference the canonical one in Nyx.Threading.Enums instead.

/// <summary>
/// Base class for game tasks with common functionality.
/// </summary>
public abstract class GameTaskBase : IGameTask
{
    private int _disposed;
    
    /// <inheritdoc/>
    public Guid Id { get; } = Guid.NewGuid();
    
    /// <inheritdoc/>
    public DateTime EnqueuedAt { get; } = DateTime.UtcNow;
    
    /// <inheritdoc/>
    public TaskPriority Priority { get; init; } = TaskPriority.Normal;
    
    /// <inheritdoc/>
    public int ShardKey { get; init; }
    
    /// <inheritdoc/>
    public abstract ValueTask ExecuteAsync(CancellationToken ct);
    
    /// <inheritdoc/>
    public virtual void Dispose()
    {
        if (Interlocked.Exchange(ref _disposed, 1) == 1)
            return;
        GC.SuppressFinalize(this);
    }
}

/// <summary>
/// A simple action-based game task.
/// </summary>
public sealed class ActionGameTask : GameTaskBase
{
    private readonly Func<CancellationToken, ValueTask> _action;
    
    public ActionGameTask(Func<CancellationToken, ValueTask> action, TaskPriority priority = TaskPriority.Normal, int shardKey = 0)
    {
        _action = action ?? throw new ArgumentNullException(nameof(action));
        Priority = priority;
        ShardKey = shardKey;
    }
    
    public override ValueTask ExecuteAsync(CancellationToken ct) => _action(ct);
}

/// <summary>
/// A simple action-based game task with no cancellation token.
/// </summary>
public sealed class SimpleGameTask : GameTaskBase
{
    private readonly Action _action;
    
    public SimpleGameTask(Action action, TaskPriority priority = TaskPriority.Normal, int shardKey = 0)
    {
        _action = action ?? throw new ArgumentNullException(nameof(action));
        Priority = priority;
        ShardKey = shardKey;
    }
    
    public override ValueTask ExecuteAsync(CancellationToken ct)
    {
        _action();
        return ValueTask.CompletedTask;
    }
}
