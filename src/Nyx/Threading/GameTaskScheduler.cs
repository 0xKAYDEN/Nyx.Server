using Nyx.Threading.Core;
using Nyx.Threading.Enums;

namespace Nyx.Server.Threading;

/// <summary>
/// Priority levels for game work items.
/// Resolves to a <see cref="RepositoryCategory"/> (which container runs the work) plus a
/// <see cref="TaskPriority"/> (its order within that container) when enqueuing.
/// </summary>
public enum WorkPriority : byte
{
    /// <summary>
    /// Critical path — network packets, auth, crypto
    /// </summary>
    Critical = 0,

    /// <summary>
    /// Combat operations — damage calculation, skill execution
    /// </summary>
    Combat = 1,

    /// <summary>
    /// Player input — movement, chat, interactions
    /// </summary>
    PlayerInput = 2,

    /// <summary>
    /// AI / monster logic / event processing
    /// </summary>
    AI = 3,

    /// <summary>
    /// Database writes, persistence
    /// </summary>
    BackgroundSave = 4,

    /// <summary>
    /// Monitoring, health checks, analytics
    /// </summary>
    Monitoring = 5,
}

/// <summary>
/// Represents a single unit of deferred game work.
/// Created internally by <see cref="ThreadingController"/> overloads;
/// not exposed as a public construction point.
/// </summary>
public readonly record struct GameTask(
    WorkPriority Priority,
    int PartitionId,
    uint EntityId,
    uint MapId,
    DateTime EnqueuedAt,
    Func<System.Threading.CancellationToken, ValueTask> Handler,
    TaskCompletionSource<bool>? CompletionSource = null);

/// <summary>
/// Scheduler metrics exposed by <see cref="ThreadingController"/> for observability.
/// Replaces the old <c>GameTaskScheduler.GetMetrics()</c> surface.
/// </summary>
public readonly record struct SchedulerMetrics(
    long TotalTasksEnqueued,
    long TotalTasksCompleted,
    long TotalTasksFailed,
    double AverageLatencyMs,
    QueueMetrics[] QueueMetricsArray);

/// <summary>
/// Per-priority queue snapshot for <see cref="SchedulerMetrics"/>.
/// </summary>
public readonly record struct QueueMetrics(
    WorkPriority Priority,
    string Name,
    int ApproximateCount,
    long ProcessedCount,
    long FailedCount,
    bool IsActive);

/// <summary>
/// <para>Game-task scheduling facade.</para>
///
/// <para>This class is a thin priority-to-category mapper that sits in front of
/// <see cref="ThreadingController"/>.  It exists so existing call sites that
/// reference <c>WorkPriority</c> continue to compile during migration.</para>
///
/// <para><b>Migrated 2026-07-27:</b> All enqueue calls now route directly through
/// <see cref="ThreadingController"/>.  This type is kept as a backward-compatible
/// facade; new code should call <see cref="ThreadingController"/> methods directly.</para>
///
/// <para><b>Priorities are real as of the threading rework.</b> A <see cref="WorkPriority"/> now
/// resolves along two axes: <see cref="MapWorkPriority"/> picks the container (which thread, which
/// partition of state) and <see cref="MapTaskPriority"/> picks the ordering within that
/// container's backlog. Previously only the first axis existed, so Critical, Combat, PlayerInput
/// and AI all became one FIFO queue and the declared priority had no effect on execution order.
/// New code should pass a <see cref="TaskPriority"/> to <see cref="ThreadingController"/>
/// directly rather than going through <see cref="WorkPriority"/>.</para>
/// </summary>
[Obsolete("All scheduling now routes through ThreadingController directly. "
    + "Use ThreadingController.EnqueueAsync / TryEnqueue with RepositoryCategory instead. "
    + "This facade is retained only for transitional compatibility.")]
public sealed class GameTaskScheduler : System.IDisposable
{
    #region Public API (deprecated — delegates to ThreadingController)

    /// <summary>
    /// Enqueue with priority mapping. <b>Deprecated:</b> use
    /// <see cref="ThreadingController.EnqueueAsync"/> with the appropriate
    /// <see cref="RepositoryCategory"/> directly.
    /// </summary>
    [Obsolete("Use ThreadingController.EnqueueAsync(category, handler, shardKey) instead.")]
    public async ValueTask EnqueueAsync(GameTask task, System.Threading.CancellationToken ct = default)
    {
        var category = MapWorkPriority(task.Priority);
        var priority = MapTaskPriority(task.Priority);
        var shardKey = task.PartitionId > 0 ? task.PartitionId : (int)task.EntityId;
        await ThreadingController.EnqueueAsync(category, priority, task.Handler, shardKey);
        task.CompletionSource?.TrySetResult(true);
    }

    /// <summary>
    /// Non-blocking attempt. <b>Deprecated:</b> use
    /// <see cref="ThreadingController.TryEnqueue"/>.
    /// </summary>
    [Obsolete("Use ThreadingController.TryEnqueue(category, handler, shardKey) instead.")]
    public bool TryEnqueue(GameTask task)
    {
        var category = MapWorkPriority(task.Priority);
        var priority = MapTaskPriority(task.Priority);
        var shardKey = task.PartitionId > 0 ? task.PartitionId : (int)task.EntityId;
        return ThreadingController.TryEnqueue(category, priority, task.Handler, shardKey);
    }

    /// <summary>
    /// Convenience overload: priority + handler without constructing a GameTask.
    /// <b>Deprecated:</b> prefer direct <see cref="ThreadingController"/> call.
    /// </summary>
    [Obsolete("Use ThreadingController.EnqueueAsync(category, handler, shardKey) instead.")]
    public async ValueTask EnqueueAsync(WorkPriority priority, Func<System.Threading.CancellationToken, ValueTask> handler, int shardKey = 0)
    {
        var category = MapWorkPriority(priority);
        await ThreadingController.EnqueueAsync(category, MapTaskPriority(priority), handler, shardKey);
    }

    #endregion

    #region Internal helpers

    /// <summary>
    /// Maps a <see cref="WorkPriority"/> onto the container that should run the work.
    /// </summary>
    /// <remarks>
    /// Several priorities intentionally share a category: Critical, Combat, PlayerInput and AI all
    /// operate on the same partitioned game state, so they must run on the same shard worker to
    /// keep that state single-writer. What used to be wrong was that the mapping stopped there --
    /// the urgency was discarded and everything became one FIFO queue. The category is now paired
    /// with <see cref="MapTaskPriority"/>, which preserves the urgency as an ordering within the
    /// container.
    /// </remarks>
    internal static RepositoryCategory MapWorkPriority(WorkPriority priority)
    {
        return priority switch
        {
            WorkPriority.BackgroundSave => RepositoryCategory.Database,
            WorkPriority.Monitoring     => RepositoryCategory.BackgroundTasks,
            WorkPriority.AI             => RepositoryCategory.GameLogic,
            _                           => RepositoryCategory.GameLogic  // Critical, Combat, PlayerInput
        };
    }

    /// <summary>
    /// Maps a <see cref="WorkPriority"/> onto the intra-container execution priority.
    /// </summary>
    /// <remarks>
    /// This is the half that was missing. With it, the six declared priorities produce genuinely
    /// different scheduling behaviour instead of collapsing to two categories and one FIFO queue:
    /// a Critical packet now overtakes AI ticks already queued on the same shard.
    /// </remarks>
    internal static TaskPriority MapTaskPriority(WorkPriority priority)
    {
        return priority switch
        {
            WorkPriority.Critical       => TaskPriority.Critical,
            WorkPriority.Combat         => TaskPriority.High,
            WorkPriority.PlayerInput    => TaskPriority.High,
            WorkPriority.AI             => TaskPriority.Normal,
            WorkPriority.BackgroundSave => TaskPriority.Low,
            WorkPriority.Monitoring     => TaskPriority.Low,
            _                           => TaskPriority.Normal
        };
    }

    #endregion

    #region IDisposable

    /// <inheritdoc/>
    public void Dispose() { /* ThreadingController lifecycle is managed externally */ }

    #endregion
}
