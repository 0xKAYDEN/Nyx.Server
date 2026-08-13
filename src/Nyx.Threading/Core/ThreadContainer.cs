using Nyx.Threading.Contracts;
using System;
using System.Collections.Concurrent;
using System.Diagnostics;
using System.Threading;
using System.Threading.Channels;
using System.Threading.Tasks;
using Serilog;

namespace Nyx.Threading.Core;

/// <summary>
/// High-performance async processing unit that owns a single task queue.
/// Processes tasks sequentially using Channels for lock-free thread safety, which makes each
/// container a single-writer execution context: state owned by exactly one container needs no
/// locking.
/// 
/// This is a fully async implementation - no blocking calls.
/// Thread Safety: All public methods are thread-safe.
/// </summary>
public sealed class ThreadContainer : IThreadContainer, IAsyncDisposable
{
    #region Fields

    private static readonly ILogger _logger = Log.ForContext<ThreadContainer>();

    private readonly Channel<IRepositoryTask> _channel;
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
    public ThreadContainer(string name, int coreIndex, int? capacity = null)
    {
        Name = name ?? throw new ArgumentNullException(nameof(name));
        CoreIndex = coreIndex;

        if (capacity.HasValue && capacity.Value > 0)
        {
            _channel = Channel.CreateBounded<IRepositoryTask>(new BoundedChannelOptions(capacity.Value)
            {
                SingleReader = true,
                SingleWriter = false,
                FullMode = BoundedChannelFullMode.Wait,
                AllowSynchronousContinuations = false
            });
        }
        else
        {
            _channel = Channel.CreateUnbounded<IRepositoryTask>(new UnboundedChannelOptions
            {
                SingleReader = true,
                SingleWriter = false,
                AllowSynchronousContinuations = false
            });
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
    /// Enqueues a task for asynchronous processing.
    /// Will wait if the channel is full (backpressure).
    /// </summary>
    public async ValueTask EnqueueAsync(IRepositoryTask task)
    {
        ArgumentNullException.ThrowIfNull(task);
        
        Interlocked.Increment(ref _pendingTasksCount);
        try
        {
            await _channel.Writer.WriteAsync(task, _cts.Token);
        }
        catch
        {
            Interlocked.Decrement(ref _pendingTasksCount);
            throw;
        }
    }

    /// <summary>
    /// Attempts to enqueue a task without waiting.
    /// Returns false if the channel is full or completed.
    /// </summary>
    public bool TryEnqueue(IRepositoryTask task)
    {
        ArgumentNullException.ThrowIfNull(task);
        
        if (_channel.Writer.TryWrite(task))
        {
            Interlocked.Increment(ref _pendingTasksCount);
            return true;
        }
        return false;
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

        try
        {
            // Use ReadAllAsync for efficient async enumeration
            await foreach (var task in _channel.Reader.ReadAllAsync(ct))
            {
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
    /// Gets health status information for this container.
    /// </summary>
    public ContainerHealthStatus GetHealthStatus()
    {
        var pendingTasks = PendingTasksCount;
        var avgLatency = AverageLatencyMs;
        var isHealthy = _isRunning && pendingTasks < 10000 && avgLatency < 1000;
        
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

        // Signal cancellation and complete the channel
        _cts.Cancel();
        _channel.Writer.TryComplete();

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
