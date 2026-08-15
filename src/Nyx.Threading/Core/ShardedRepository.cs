using Nyx.Threading.Contracts;
using System;
using System.Collections.Concurrent;
using System.Threading;
using System.Threading.Tasks;
using Serilog;

namespace Nyx.Threading.Core;

/// <summary>
/// A sharded repository that distributes tasks across multiple sub-repositories
/// based on a shard key. This enables parallel processing while maintaining
/// sequential order within each shard.
/// 
/// Thread Safety: All public methods are thread-safe.
/// </summary>
public sealed class ShardedRepository : IDisposable
{
    private static readonly ILogger _logger = Log.ForContext<ShardedRepository>();
    
    private readonly Repository[] _shards;
    private readonly int _shardCount;
    private readonly string _name;
    private int _disposed;
    
    /// <summary>
    /// Gets the name of this sharded repository.
    /// </summary>
    public string Name => _name;
    
    /// <summary>
    /// Gets the number of shards.
    /// </summary>
    public int ShardCount => _shardCount;
    
    /// <summary>
    /// Gets the total pending tasks across all shards.
    /// </summary>
    public int TotalPendingTasks
    {
        get
        {
            var total = 0;
            for (var i = 0; i < _shardCount; i++)
                total += _shards[i].PendingTasksCount;
            return total;
        }
    }
    
    /// <summary>
    /// Gets the total processed tasks across all shards.
    /// </summary>
    public long TotalProcessedTasks
    {
        get
        {
            var total = 0L;
            for (var i = 0; i < _shardCount; i++)
                total += _shards[i].TotalProcessedTasks;
            return total;
        }
    }
    
    /// <summary>
    /// Creates a new ShardedRepository whose shards each run on their own thread.
    /// </summary>
    /// <remarks>
    /// This is the constructor that actually delivers parallelism. Each shard gets its own
    /// <see cref="ThreadContainer"/>, so shard N is drained by worker N and state partitioned by
    /// shard key is single-writer without locking.
    /// </remarks>
    /// <param name="name">Name for logging/debugging.</param>
    /// <param name="shardCount">Number of shards (sub-repositories).</param>
    /// <param name="capacityPerShard">Bounded channel capacity per shard, or null for unbounded.</param>
    public ShardedRepository(string name, int shardCount, int? capacityPerShard = 10000)
    {
        _name = name ?? throw new ArgumentNullException(nameof(name));
        _shardCount = shardCount > 0 ? shardCount : throw new ArgumentOutOfRangeException(nameof(shardCount));

        _shards = new Repository[shardCount];
        for (var i = 0; i < shardCount; i++)
        {
            // Container names are global keys in ContainerRegistry, so they must incorporate the
            // repository name to avoid two ShardedRepositories colliding on "Shard-0".
            var shardContainer = ContainerRegistry.GetOrCreateContainer(
                $"{name}-Shard-{i}",
                i,
                capacityPerShard);

            _shards[i] = new Repository($"{name}-Repo-{i}", shardContainer);
        }

        _logger.Information(
            "ShardedRepository '{Name}' created with {ShardCount} shards, one container each",
            _name, _shardCount);
    }

    /// <summary>
    /// Creates a new ShardedRepository where every shard shares a single container.
    /// </summary>
    /// <remarks>
    /// WARNING: this does NOT parallelise. A ThreadContainer owns one channel drained by one
    /// sequential worker, so all shards funnel through the same queue on the same thread and the
    /// shard key merely selects a different wrapper object. This overload exists only for callers
    /// that deliberately want strict global ordering across shards; if you want throughput, use
    /// the constructor that takes a shard count.
    /// </remarks>
    /// <param name="name">Name for logging/debugging.</param>
    /// <param name="shardCount">Number of shards (sub-repositories).</param>
    /// <param name="container">The single container shared by all shards.</param>
    public ShardedRepository(string name, int shardCount, IThreadContainer container)
    {
        _name = name ?? throw new ArgumentNullException(nameof(name));
        _shardCount = shardCount > 0 ? shardCount : throw new ArgumentOutOfRangeException(nameof(shardCount));
        ArgumentNullException.ThrowIfNull(container);

        _shards = new Repository[shardCount];
        for (var i = 0; i < shardCount; i++)
        {
            _shards[i] = new Repository($"{name}-Shard-{i}", container);
        }

        _logger.Warning(
            "ShardedRepository '{Name}' created with {ShardCount} shards sharing ONE container " +
            "('{Container}') - all shards execute sequentially on a single thread",
            _name, _shardCount, container.Name);
    }
    
    /// <summary>
    /// Gets the shard index for a given shard key.
    /// </summary>
    /// <remarks>
    /// Uses a masked remainder rather than Math.Abs: Math.Abs(int.MinValue) throws
    /// OverflowException, which would turn a single unlucky negative key into a crash.
    /// </remarks>
    public int GetShardIndex(int shardKey) => (int)((uint)shardKey % (uint)_shardCount);
    
    /// <summary>
    /// Gets the repository for a given shard key.
    /// </summary>
    public Repository GetShard(int shardKey) => _shards[GetShardIndex(shardKey)];
    
    /// <summary>
    /// Enqueues a task to the appropriate shard based on the shard key.
    /// </summary>
    public ValueTask EnqueueTaskAsync(IGameTask task)
    {
        ObjectDisposedException.ThrowIf(_disposed == 1, this);
        ArgumentNullException.ThrowIfNull(task);
        
        var shard = GetShard(task.ShardKey);

        // Honour the task's own Priority rather than the shard repository's DefaultPriority
        // (see ThreadingController.EnqueueGameTaskAsync for the same fix).
        return shard.EnqueueTaskAsync(task, task.Priority);
    }
    
    /// <summary>
    /// Non-blocking attempt to enqueue a task to the appropriate shard.
    /// </summary>
    public bool TryEnqueue(IGameTask task)
    {
        ObjectDisposedException.ThrowIf(_disposed == 1, this);
        ArgumentNullException.ThrowIfNull(task);
        
        var shard = GetShard(task.ShardKey);
        return shard.TryEnqueueTask(task, task.Priority);
    }
    
    /// <summary>
    /// Enqueues a task to a specific shard.
    /// </summary>
    public ValueTask EnqueueToShardAsync(int shardIndex, IRepositoryTask task)
    {
        ObjectDisposedException.ThrowIf(_disposed == 1, this);
        ArgumentOutOfRangeException.ThrowIfNegative(shardIndex);
        ArgumentOutOfRangeException.ThrowIfGreaterThanOrEqual(shardIndex, _shardCount);
        
        return _shards[shardIndex].EnqueueTaskAsync(task);
    }
    
    /// <summary>
    /// Disposes all shards.
    /// </summary>
    public void Dispose()
    {
        if (Interlocked.Exchange(ref _disposed, 1) == 1)
            return;
        
        for (var i = 0; i < _shardCount; i++)
        {
            try
            {
                _shards[i].Dispose();
            }
            catch (Exception ex)
            {
                _logger.Error(ex, "Error disposing shard {Index} of '{Name}'", i, _name);
            }
        }
        
        _logger.Information("ShardedRepository '{Name}' disposed", _name);
    }
}
