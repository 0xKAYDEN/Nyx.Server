using Nyx.Threading.Contracts;
using Nyx.Threading.Enums;
using System;
using System.Collections.Concurrent;
using System.Diagnostics;
using System.Threading;
using System.Threading.Channels;
using System.Threading.Tasks;
using Serilog;

namespace Nyx.Threading.Core;

/// <summary>
/// High-performance async processing unit that owns one task queue per <see cref="TaskPriority"/>.
/// Processes tasks sequentially using Channels for lock-free thread safety, which makes each
/// container a single-writer execution context: state owned by exactly one container needs no
/// locking.
///
/// This is a fully async implementation - no blocking calls.
/// Thread Safety: All public methods are thread-safe.
/// </summary>
/// <remarks>
/// <para><b>Priority.</b> The container previously owned a single channel, so every task was FIFO
/// regardless of urgency: a login handshake queued behind a thousand monster AI ticks waited for
/// all of them. There are now four channels drained highest-priority-first, so combat and packet
/// work overtake background housekeeping already sitting in the backlog.</para>
///
/// <para><b>Starvation.</b> Strict priority alone lets a saturated high queue block the lower ones
/// forever -- an autosave that never runs is a worse bug than an autosave that runs late. Each
/// priority therefore has a dispatch quota (<see cref="PriorityQuotas"/>): after consuming its
/// quota the worker yields one slot to the next non-empty lower queue before returning to the top.
/// Progress is guaranteed at every level while ordering still overwhelmingly favours urgency.</para>
///
/// <para><b>Ordering.</b> Tasks of the same priority keep strict FIFO order, which is what
/// single-writer state ownership relies on. Ordering is only relaxed <em>between</em> priorities,
/// so callers that need two operations sequenced must submit them at the same priority.</para>
/// </remarks>
public sealed class ThreadContainer : IThreadContainer, IAsyncDisposable
{
    #region Fields

    private static readonly ILogger _logger = Log.ForContext<ThreadContainer>();

    /// <summary>Number of distinct priority levels; must match <see cref="TaskPriority"/>.</summary>
    private const int PriorityCount = 4;

    /// <summary>
    /// Consecutive dispatches allowed at each priority before the worker offers a slot to the next
    /// non-empty lower queue. Indexed by <see cref="TaskPriority"/>. The lowest level needs no
    /// quota (nothing below it to starve) but carries one for uniformity.
    /// </summary>
    private static readonly int[] PriorityQuotas = { 64, 32, 16, 8 };

    /// <summary>One channel per priority level, indexed by <see cref="TaskPriority"/>.</summary>
    private readonly Channel<IRepositoryTask>[] _channels = new Channel<IRepositoryTask>[PriorityCount];

    /// <summary>
    /// Signals the worker that at least one task was written. Lets the worker block on a single
    /// wait instead of polling four channels, which is what makes an idle container cost nothing.
    /// </summary>
    private readonly SemaphoreSlim _workAvailable = new(0);

    /// <summary>
    /// Pending-task count at which the container is judged unhealthy. Defaults to the container's
    /// own capacity so a small background container (e.g. 5000) is not judged against the same
    /// hardcoded threshold as a large network container.
    /// </summary>
    private readonly int _unhealthyThreshold;

    private readonly ConcurrentDictionary<string, IRepository> _repositories = new(StringComparer.OrdinalIgnoreCase);
    private readonly CancellationTokenSource _cts = new();
    private readonly Task _workerTask;

    private int _pendingTasksCount;
    private long _totalProcessedTasks;
    private long _totalLatencyMicroseconds;
    private volatile bool _isRunning = true;
    private int _disposed;

    #endregion

    #region Properties

    /// <summary>
    /// Gets the name of this container (for logging/debugging).
    /// </summary>
    public string Name { get; }

    /// <summary>
    /// Gets the nominal CPU core index for this container.
    /// Diagnostic/logging only -- see WorkerLoopAsync for why affinity is not applied.
    /// </summary>
    public int CoreIndex { get; }

    /// <summary>
    /// Gets whether this container is currently running.
    /// </summary>
    public bool IsRunning => _isRunning;

    /// <summary>
    /// Gets the approximate number of tasks waiting to be processed.
    /// </summary>
    public int PendingTasksCount => Volatile.Read(ref _pendingTasksCount);

    /// <summary>
    /// Gets the total number of tasks processed by this container.
    /// </summary>
    public long TotalProcessedTasks => Interlocked.Read(ref _totalProcessedTasks);

    /// <summary>
    /// Gets the average execution latency in milliseconds.
    /// </summary>
    public double AverageLatencyMs
    {
        get
        {
            var processed = Interlocked.Read(ref _totalProcessedTasks);
            if (processed == 0) return 0.0;
            return (double)Interlocked.Read(ref _totalLatencyMicroseconds) / processed / 1000.0;
        }
    }

    #endregion

    #region Constructor

    /// <summary>
    /// Creates a new ThreadContainer with the specified configuration.
    /// </summary>
    /// <param name="name">Name for logging/debugging.</param>
    /// <param name="coreIndex">Nominal core index, used for logging only.</param>
    /// <param name="capacity">
    /// Maximum number of pending tasks. 
    /// If null or 0, creates an unbounded channel.
    /// </param>
    /// <param name="unhealthyThreshold">
    /// Pending-task count at which this container is judged unhealthy. When 0 (default), it is
    /// derived from the container's own capacity so each container is judged against itself rather
    /// than a single hardcoded threshold.
    /// </param>
    public ThreadContainer(string name, int coreIndex, int? capacity = null, int unhealthyThreshold = 0)
    {
        Name = name ?? throw new ArgumentNullException(nameof(name));
        CoreIndex = coreIndex;
        _unhealthyThreshold = unhealthyThreshold > 0
            ? unhealthyThreshold
            : (capacity is > 0 ? capacity.Value : 10000);

        for (var i = 0; i < PriorityCount; i++)
        {
            if (capacity.HasValue && capacity.Value > 0)
            {
                // The configured capacity is the bound for each priority queue rather than a
                // budget split across them: the point of a bound is backpressure on a runaway
                // producer, and dividing it would make the container reject Critical work because
                // Low work is backed up -- exactly the coupling priorities exist to remove.
                _channels[i] = Channel.CreateBounded<IRepositoryTask>(new BoundedChannelOptions(capacity.Value)
                {
                    SingleReader = true,
                    SingleWriter = false,
                    FullMode = BoundedChannelFullMode.Wait,
                    AllowSynchronousContinuations = false
                });
            }
            else
            {
                _channels[i] = Channel.CreateUnbounded<IRepositoryTask>(new UnboundedChannelOptions
                {
                    SingleReader = true,
                    SingleWriter = false,
                    AllowSynchronousContinuations = false
                });
            }
        }

        // Start worker as a long-running Task (not a raw Thread)
        _workerTask = Task.Factory.StartNew(
            () => WorkerLoopAsync(_cts.Token),
            _cts.Token,
            TaskCreationOptions.LongRunning,
            TaskScheduler.Default);

        _logger.Information("ThreadContainer '{Name}' initialized on core {CoreIndex}", Name, coreIndex);
    }

    #endregion

    #region Repository Management

    /// <summary>
    /// Registers a repository with this container.
    /// </summary>
    public void RegisterRepository(IRepository repository)
    {
        ArgumentNullException.ThrowIfNull(repository);
        
        if (!_repositories.TryAdd(repository.Name, repository))
        {
            throw new InvalidOperationException(
                $"Repository '{repository.Name}' already registered in container '{Name}'");
        }
    }

    #endregion

    #region Task Queueing

    /// <summary>
    /// Enqueues a task for asynchronous processing at <see cref="TaskPriority.Normal"/>.
    /// Will wait if the queue is full (backpressure).
    /// </summary>
    public ValueTask EnqueueAsync(IRepositoryTask task) => EnqueueAsync(task, TaskPriority.Normal);

    /// <summary>
    /// Enqueues a task for asynchronous processing at the given priority.
    /// Will wait if that priority's queue is full (backpressure).
    /// </summary>
    public async ValueTask EnqueueAsync(IRepositoryTask task, TaskPriority priority)
    {
        ArgumentNullException.ThrowIfNull(task);

        var writer = _channels[PriorityIndex(priority)].Writer;

        Interlocked.Increment(ref _pendingTasksCount);
        try
        {
            await writer.WriteAsync(task, _cts.Token);
        }
        catch
        {
            Interlocked.Decrement(ref _pendingTasksCount);
            throw;
        }

        // Released only after a successful write, so the count of signals can never exceed the
        // count of queued tasks -- otherwise the worker would spin on a spurious wake-up.
        _workAvailable.Release();
    }

    /// <summary>
    /// Attempts to enqueue a task at <see cref="TaskPriority.Normal"/> without waiting.
    /// Returns false if the queue is full or completed.
    /// </summary>
    public bool TryEnqueue(IRepositoryTask task) => TryEnqueue(task, TaskPriority.Normal);

    /// <summary>
    /// Attempts to enqueue a task at the given priority without waiting.
    /// Returns false if that priority's queue is full or completed.
    /// </summary>
    public bool TryEnqueue(IRepositoryTask task, TaskPriority priority)
    {
        ArgumentNullException.ThrowIfNull(task);

        if (_channels[PriorityIndex(priority)].Writer.TryWrite(task))
        {
            Interlocked.Increment(ref _pendingTasksCount);
            _workAvailable.Release();
            return true;
        }
        return false;
    }

    /// <summary>
    /// Clamps a priority to a valid channel index. An out-of-range cast from a caller must not be
    /// able to throw IndexOutOfRange on the enqueue path.
    /// </summary>
    private static int PriorityIndex(TaskPriority priority)
    {
        var index = (int)priority;
        return (uint)index < PriorityCount ? index : (int)TaskPriority.Normal;
    }

    #endregion

    #region Worker Loop (Async)

    /// <summary>
    /// Main worker loop - fully async, no blocking calls.
    /// Processes tasks sequentially from the channel.
    /// </summary>
    private async Task WorkerLoopAsync(CancellationToken ct)
    {
        // NOTE: CPU affinity is deliberately NOT set here.
        //
        // This loop used to call ThreadAffinityHelper.TrySetThreadAffinity(CoreIndex), which
        // cannot work for an async worker: the mask applies to the thread running the
        // synchronous prologue, but every `await` below resumes the continuation on an
        // arbitrary thread-pool thread. In practice the pin was lost on the first suspension,
        // so it bought no cache locality while still constraining the OS scheduler -- and it
        // failed outright under a restricted cpuset (e.g. Docker --cpuset-cpus), because the
        // 1UL << coreIndex mask refers to physical CPU ids that need not be in the process's
        // allowed set.
        //
        // Real core pinning would require a dedicated Thread with a fully synchronous work
        // loop and a custom TaskScheduler. CoreIndex is retained for logging/diagnostics only.
        Thread.CurrentThread.Name = $"Container-{Name}-Async";

        // Consecutive dispatches served at each priority, reset whenever a lower queue is served.
        var served = new int[PriorityCount];

        try
        {
            while (true)
            {
                // Block until a task is available. One signal was released per enqueued task, so
                // this wakes exactly once per task and an idle container consumes no CPU -- the
                // reason for the semaphore rather than polling four channel readers.
                await _workAvailable.WaitAsync(ct);

                if (!TryDequeueNext(served, out var task))
                {
                    // The signal count and the queues are updated in that order by the producer,
                    // so a signal can momentarily arrive before its task is visible. Hand the
                    // signal back and retry rather than losing the task.
                    _workAvailable.Release();
                    await Task.Yield();
                    continue;
                }

                Interlocked.Decrement(ref _pendingTasksCount);

                try
                {
                    await ExecuteTaskAsync(task, ct);
                }
                catch (OperationCanceledException) when (ct.IsCancellationRequested)
                {
                    // Expected during shutdown
                    break;
                }
                catch (Exception ex)
                {
                    _logger.Error(ex, "Error executing task in container '{Name}'", Name);
                }
            }
        }
        catch (OperationCanceledException)
        {
            // Expected during shutdown
        }
        catch (ChannelClosedException)
        {
            // Channel completed
        }
        catch (Exception ex)
        {
            _logger.Error(ex, "Unexpected error in container '{Name}' worker loop", Name);
        }
        finally
        {
            _isRunning = false;
            _logger.Information("Container '{Name}' worker loop stopped", Name);
        }
    }

    /// <summary>
    /// Selects the next task: highest priority first, subject to each level's fairness quota.
    /// </summary>
    /// <param name="served">
    /// Per-priority count of consecutive dispatches. Owned by the worker loop, so no
    /// synchronisation is needed.
    /// </param>
    /// <param name="task">The dequeued task, when this returns <see langword="true"/>.</param>
    private bool TryDequeueNext(int[] served, out IRepositoryTask task)
    {
        // Pass 1: honour the quotas. Walk from the top and take from the first non-empty queue
        // that has not yet exhausted its allowance.
        for (var i = 0; i < PriorityCount; i++)
        {
            if (served[i] >= PriorityQuotas[i]) continue;

            if (_channels[i].Reader.TryRead(out task!))
            {
                served[i]++;

                // Serving level i means levels below it just waited, so their allowances are
                // restored; that is what bounds how long a low-priority task can be held back.
                for (var lower = i + 1; lower < PriorityCount; lower++)
                    served[lower] = 0;

                return true;
            }

            // An empty queue is not a reason to hold its allowance in reserve.
            served[i] = 0;
        }

        // Pass 2: every non-empty queue is over quota, which means the whole cycle is complete.
        // Reset and take strictly by priority so the worker never stalls with work pending.
        Array.Clear(served);

        for (var i = 0; i < PriorityCount; i++)
        {
            if (_channels[i].Reader.TryRead(out task!))
            {
                served[i] = 1;
                return true;
            }
        }

        task = null!;
        return false;
    }

    /// <summary>
    /// Executes a single task with metrics tracking.
    /// Fully async - no blocking calls.
    /// </summary>
    private async ValueTask ExecuteTaskAsync(IRepositoryTask task, CancellationToken ct)
    {
        var startTicks = Stopwatch.GetTimestamp();
        try
        {
            // Await the task directly - no blocking!
            await task.ExecuteAsync(ct);
            Interlocked.Increment(ref _totalProcessedTasks);
        }
        catch (OperationCanceledException) when (ct.IsCancellationRequested)
        {
            throw; // Re-throw cancellation
        }
        catch (Exception ex)
        {
            _logger.Error(ex, "Task execution error in container '{Name}'", Name);
        }
        finally
        {
            var elapsedTicks = Stopwatch.GetTimestamp() - startTicks;
            var elapsedMicroseconds = elapsedTicks * 1_000_000 / Stopwatch.Frequency;
            Interlocked.Add(ref _totalLatencyMicroseconds, elapsedMicroseconds);

            // Return to pool or dispose
            if (task is IPooledTask pooledTask)
            {
                pooledTask.ReturnToPool();
            }
            else
            {
                task.Dispose();
            }
        }
    }

    #endregion

    #region Metrics

    /// <summary>
    /// Retrieves the average execution latency in milliseconds.
    /// </summary>
    public double GetAverageLatencyMs() => AverageLatencyMs;

    /// <summary>
    /// Approximate pending task count for a single priority level.
    /// Useful for spotting the case the aggregate count hides: a healthy total that is entirely
    /// one saturated priority.
    /// </summary>
    public int GetPendingCount(TaskPriority priority)
        => _channels[PriorityIndex(priority)].Reader.Count;

    /// <summary>
    /// Gets health status information for this container.
    /// </summary>
    public ContainerHealthStatus GetHealthStatus()
    {
        var pendingTasks = PendingTasksCount;
        var avgLatency = AverageLatencyMs;
        var isHealthy = _isRunning && pendingTasks < _unhealthyThreshold && avgLatency < 1000;
        
        return new ContainerHealthStatus
        {
            Name = Name,
            IsRunning = _isRunning,
            PendingTasks = pendingTasks,
            TotalProcessed = TotalProcessedTasks,
            AverageLatencyMs = avgLatency,
            IsHealthy = isHealthy,
            StatusMessage = isHealthy ? "Healthy" : _isRunning ? "High load" : "Stopped"
        };
    }

    #endregion

    #region Disposal

    /// <summary>
    /// Gracefully shuts down the container.
    /// Waits for pending tasks to complete (with timeout).
    /// </summary>
    public void Dispose()
    {
        DisposeAsync().AsTask().GetAwaiter().GetResult();
    }

    /// <summary>
    /// Gracefully shuts down the container asynchronously.
    /// </summary>
    public async ValueTask DisposeAsync()
    {
        if (Interlocked.Exchange(ref _disposed, 1) == 1)
            return;

        _isRunning = false;

        // Signal cancellation and complete every priority queue
        _cts.Cancel();

        for (var i = 0; i < PriorityCount; i++)
            _channels[i].Writer.TryComplete();

        // Wake the worker if it is parked on the semaphore rather than on cancellation.
        _workAvailable.Release();

        // Wait for worker to finish with timeout
        try
        {
            await _workerTask.WaitAsync(TimeSpan.FromSeconds(5));
        }
        catch (TimeoutException)
        {
            _logger.Warning("Container '{Name}' worker did not stop within 5 seconds", Name);
        }
        catch (OperationCanceledException)
        {
            // Expected
        }

        // Dispose repositories
        foreach (var repo in _repositories.Values)
        {
            try
            {
                if (repo is IAsyncDisposable asyncDisposable)
                    await asyncDisposable.DisposeAsync();
                else
                    repo.Dispose();
            }
            catch (Exception ex)
            {
                _logger.Error(ex, "Error disposing repository '{RepoName}' in container '{Name}'", 
                    repo.Name, Name);
            }
        }
        _repositories.Clear();

        _cts.Dispose();
        _workAvailable.Dispose();

        _logger.Information(
            "ThreadContainer '{Name}' disposed. Total tasks processed: {TotalProcessed}, Avg latency: {AvgLatency:F2}ms", 
            Name, TotalProcessedTasks, AverageLatencyMs);
    }

    #endregion
}

/// <summary>
/// Health status information for a ThreadContainer.
/// </summary>
public sealed class ContainerHealthStatus
{
    /// <summary>
    /// Gets or sets the container name.
    /// </summary>
    public required string Name { get; init; }
    
    /// <summary>
    /// Gets or sets whether the container is running.
    /// </summary>
    public bool IsRunning { get; init; }
    
    /// <summary>
    /// Gets or sets the number of pending tasks.
    /// </summary>
    public int PendingTasks { get; init; }
    
    /// <summary>
    /// Gets or sets the total tasks processed.
    /// </summary>
    public long TotalProcessed { get; init; }
    
    /// <summary>
    /// Gets or sets the average latency in milliseconds.
    /// </summary>
    public double AverageLatencyMs { get; init; }
    
    /// <summary>
    /// Gets or sets whether the container is healthy.
    /// </summary>
    public bool IsHealthy { get; init; }
    
    /// <summary>
    /// Gets or sets a human-readable status message.
    /// </summary>
    public string StatusMessage { get; init; } = string.Empty;
}
