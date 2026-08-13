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
    /// Creates a new ShardedRepository with the specified configuration.
    /// </summary>
    /// <param name="name">Name for logging/debugging.</param>
    /// <param name="shardCount">Number of shards (sub-repositories).</param>
    /// <param name="container">Container to use for all shards.</param>
    public ShardedRepository(string name, int shardCount, ThreadContainer container)
    {
        _name = name ?? throw new ArgumentNullException(nameof(name));
        _shardCount = shardCount > 0 ? shardCount : throw new ArgumentOutOfRangeException(nameof(shardCount));
        
        _shards = new Repository[shardCount];
        for (var i = 0; i < shardCount; i++)
        {
            _shards[i] = new Repository($"{name}-Shard-{i}", container);
        }
        
        _logger.Information("ShardedRepository '{Name}' created with {ShardCount} shards", _name, _shardCount);
    }
    
    /// <summary>
    /// Gets the shard index for a given shard key.
    /// </summary>
    public int GetShardIndex(int shardKey) => Math.Abs(shardKey) % _shardCount;
    
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
        return shard.EnqueueTaskAsync(task);
    }
    
    /// <summary>
    /// Non-blocking attempt to enqueue a task to the appropriate shard.
    /// </summary>
    public bool TryEnqueue(IGameTask task)
    {
        ObjectDisposedException.ThrowIf(_disposed == 1, this);
        ArgumentNullException.ThrowIfNull(task);
        
        var shard = GetShard(task.ShardKey);
        return shard.TryEnqueueTask(task);
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
