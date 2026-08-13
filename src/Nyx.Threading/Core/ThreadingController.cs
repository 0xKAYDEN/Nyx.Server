using Nyx.Network;
using Nyx.Threading.Configuration;
using Nyx.Threading.Contracts;
using Nyx.Threading.Enums;
using Nyx.Threading.Network;
using Serilog;
using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

namespace Nyx.Threading.Core;

/// <summary>
/// Central threading controller for the Nyx server.
/// Manages network containers, game-logic shards, and async timer scheduling.
/// 
/// Thread Safety: All public methods are thread-safe.
/// </summary>
public static class ThreadingController
{
    #region Fields

    private static readonly ILogger _logger = Log.ForContext(typeof(ThreadingController));
    private static readonly object _initLock = new();
    private static volatile bool _initialized;

    private static AsyncTimerScheduler? _timerScheduler;
    private static Repository? _databaseRepo;
    private static Repository? _backgroundRepo;
    private static Repository? _highPriorityRepo;
    private static Repository[] _gameLogicRepos = Array.Empty<Repository>();
    private static int _networkContainerCount;
    private static int _subscriptionCounter;
    
    // Sharded repositories for advanced task distribution
    private static ShardedRepository? _playerRepo;
    private static ShardedRepository? _mapRepo;
    private static ShardedRepository? _databaseShardedRepo;
    private static readonly ConcurrentDictionary<string, ShardedRepository> _customRepos = new();

    #endregion

    #region Properties

    public static bool IsInitialized => _initialized;
    public static int NetworkContainerCount => _networkContainerCount;
    public static int GameLogicShardCount => _gameLogicRepos.Length;

    #endregion

    #region Initialization

    /// <summary>
    /// Initializes all Nyx.Threading containers and the timer scheduler.
    /// Thread-safe and idempotent (safe to call multiple times).
    /// </summary>
    public static void EnsureInitialized(int? networkContainerCount = null, int? capacityPerContainer = 10000)
    {
        if (_initialized) return;

        lock (_initLock)
        {
            if (_initialized) return;

            var capacity = capacityPerContainer ?? 10000;
            var networkCount = networkContainerCount ?? Math.Min(4, Environment.ProcessorCount);

            _logger.Information("Initializing Nyx.Threading controller with {NetworkCount} network containers", networkCount);

            NetworkContainerRegistry.InitializeNetworkContainers(networkCount, capacity);
            _networkContainerCount = networkCount;

            // Game logic: Single container with multiple repos for sharding
            var gameLogicShards = Math.Min(4, Environment.ProcessorCount);
            _gameLogicRepos = new Repository[gameLogicShards];
            
            var gameLogicContainer = ContainerRegistry.GetOrCreateContainer(
                "GameLogic",
                0,
                10000);
            
            for (var i = 0; i < gameLogicShards; i++)
            {
                _gameLogicRepos[i] = new Repository($"GameLogicRepo-{i}", gameLogicContainer);
            }

            // Database: Single container with repos
            var dbContainer = ContainerRegistry.GetOrCreateContainer(
                "Database",
                1,
                5000);
            _databaseRepo = new Repository("DatabaseRepo", dbContainer);

            // Background: Single container with repos
            var bgContainer = ContainerRegistry.GetOrCreateContainer(
                "BackgroundTasks",
                2,
                5000);
            _backgroundRepo = new Repository("BackgroundRepo", bgContainer);

            // High priority: Single container with repos
            var hpContainer = ContainerRegistry.GetOrCreateContainer(
                "HighPriority",
                3,
                5000);
            _highPriorityRepo = new Repository("HighPriorityRepo", hpContainer);

            _timerScheduler = new AsyncTimerScheduler();
            _timerScheduler.Start();

            _initialized = true;
            _logger.Information(
                "Nyx.Threading controller ready: {Network} network, {GameLogic} game-logic shards",
                _networkContainerCount, gameLogicShards);
        }
    }

    /// <summary>
    /// Shuts down all containers and the timer scheduler.
    /// </summary>
    public static void Shutdown()
    {
        lock (_initLock)
        {
            if (!_initialized) return;

            _timerScheduler?.Stop();
            _timerScheduler = null;

            NetworkContainerRegistry.ShutdownAll();
            ContainerRegistry.ShutdownAll();

            _gameLogicRepos = Array.Empty<Repository>();
            _databaseRepo = null;
            _backgroundRepo = null;
            _highPriorityRepo = null;
            _networkContainerCount = 0;
            _initialized = false;

            _logger.Information("Nyx.Threading controller shut down");
        }
    }

    #endregion

    #region Repository Access

    /// <summary>
    /// Gets the repository for the specified category.
    /// </summary>
    public static Repository GetRepository(RepositoryCategory category, int shardKey = 0)
    {
        EnsureInitialized();

        return category switch
        {
            RepositoryCategory.NetworkIO => throw new InvalidOperationException(
                "Use NetworkContainerRegistry for network I/O packet routing"),
            RepositoryCategory.GameLogic or RepositoryCategory.Tournament =>
                _gameLogicRepos[Math.Abs(shardKey) % _gameLogicRepos.Length],
            RepositoryCategory.Database => _databaseRepo!,
            RepositoryCategory.BackgroundTasks or RepositoryCategory.LongRunningOperations =>
                _backgroundRepo!,
            _ => _highPriorityRepo!
        };
    }

    /// <summary>
    /// Gets the network container for a specific session.
    /// </summary>
    public static NetworkThreadContainer GetNetworkContainerForSession(uint connectionId)
    {
        EnsureInitialized();
        return NetworkContainerRegistry.GetContainerForSession(connectionId);
    }

    #endregion

    #region Timer Subscriptions

    /// <summary>
    /// Subscribes to a recurring timer.
    /// </summary>
    public static IDisposable Subscribe(
        RepositoryCategory category,
        Action<int> action,
        int periodMs,
        bool recurring = true,
        int shardKey = 0)
    {
        EnsureInitialized();
        var repo = GetRepository(category, shardKey);
        var initialDelayMs = recurring ? 0 : periodMs;
        return _timerScheduler!.Subscribe(action, periodMs, recurring, initialDelayMs, repo);
    }

    /// <summary>
    /// Subscribes to a recurring timer with a parameter.
    /// </summary>
    public static IDisposable Subscribe<T>(
        RepositoryCategory category,
        Action<T, int> action,
        T param,
        int periodMs,
        bool recurring = true,
        int shardKey = 0)
    {
        EnsureInitialized();
        var repo = GetRepository(category, shardKey);
        var initialDelayMs = recurring ? 0 : periodMs;
        return _timerScheduler!.Subscribe(action, param, periodMs, recurring, initialDelayMs, repo);
    }

    /// <summary>
    /// Executes an action once after a delay.
    /// </summary>
    public static void ExecuteOnce(RepositoryCategory category, Action<int> action, int delayMs = 0, int shardKey = 0)
    {
        Subscribe(category, action, delayMs, recurring: false, shardKey: shardKey);
    }

    /// <summary>
    /// Executes an action once after a delay with a parameter.
    /// </summary>
    public static void ExecuteOnce<T>(
        RepositoryCategory category,
        Action<T, int> action,
        T param,
        int delayMs = 0,
        int shardKey = 0)
    {
        Subscribe(category, action, param, delayMs, recurring: false, shardKey: shardKey);
    }

    #endregion

    #region Task Queueing

    /// <summary>
    /// Enqueues an async task to the specified category.
    /// </summary>
    public static ValueTask EnqueueAsync(
        RepositoryCategory category,
        Func<CancellationToken, ValueTask> handler,
        int shardKey = 0)
    {
        var repo = GetRepository(category, shardKey);
        return repo.EnqueueTaskAsync(handler);
    }

    /// <summary>
    /// Non-blocking attempt to enqueue a task.
    /// </summary>
    public static bool TryEnqueue(
        RepositoryCategory category,
        Func<CancellationToken, ValueTask> handler,
        int shardKey = 0)
    {
        var repo = GetRepository(category, shardKey);
        return repo.TryEnqueueTask(handler);
    }

    #endregion

    #region Game Task Queueing

    /// <summary>
    /// Enqueues a game task to the specified category.
    /// </summary>
    public static ValueTask EnqueueGameTaskAsync(IGameTask task)
    {
        EnsureInitialized();
        ArgumentNullException.ThrowIfNull(task);
        
        var repo = GetRepository(RepositoryCategory.GameLogic, task.ShardKey);
        return repo.EnqueueTaskAsync(task);
    }

    /// <summary>
    /// Non-blocking attempt to enqueue a game task.
    /// </summary>
    public static bool TryEnqueueGameTask(IGameTask task)
    {
        EnsureInitialized();
        ArgumentNullException.ThrowIfNull(task);
        
        var repo = GetRepository(RepositoryCategory.GameLogic, task.ShardKey);
        return repo.TryEnqueueTask(task);
    }

    /// <summary>
    /// Enqueues a task to the player repository (sharded by entity ID).
    /// </summary>
    public static ValueTask EnqueuePlayerTaskAsync(uint entityId, Func<CancellationToken, ValueTask> handler)
    {
        EnsureInitialized();
        
        if (_playerRepo == null)
        {
            // Fallback to regular game logic repo
            var repo = GetRepository(RepositoryCategory.GameLogic, (int)entityId);
            return repo.EnqueueTaskAsync(handler);
        }
        
        var shardKey = (int)entityId;
        return _playerRepo.GetShard(shardKey).EnqueueTaskAsync(handler);
    }

    /// <summary>
    /// Enqueues a task to the map repository (sharded by map ID).
    /// </summary>
    public static ValueTask EnqueueMapTaskAsync(uint mapId, Func<CancellationToken, ValueTask> handler)
    {
        EnsureInitialized();
        
        if (_mapRepo == null)
        {
            // Fallback to regular game logic repo
            var repo = GetRepository(RepositoryCategory.GameLogic, (int)mapId);
            return repo.EnqueueTaskAsync(handler);
        }
        
        var shardKey = (int)mapId;
        return _mapRepo.GetShard(shardKey).EnqueueTaskAsync(handler);
    }

    /// <summary>
    /// Enqueues a database task (sharded for parallel processing).
    /// </summary>
    public static ValueTask EnqueueDatabaseTaskAsync(Func<CancellationToken, ValueTask> handler, int shardKey = 0)
    {
        EnsureInitialized();
        
        if (_databaseShardedRepo == null)
        {
            // Fallback to regular database repo
            return _databaseRepo!.EnqueueTaskAsync(handler);
        }
        
        return _databaseShardedRepo.GetShard(shardKey).EnqueueTaskAsync(handler);
    }

    /// <summary>
    /// Gets or creates a custom sharded repository.
    /// </summary>
    public static ShardedRepository GetOrCreateCustomRepository(string name, int shardCount, ThreadContainer container)
    {
        EnsureInitialized();
        
        return _customRepos.GetOrAdd(name, _ => new ShardedRepository(name, shardCount, container));
    }

    /// <summary>
    /// Gets a custom sharded repository by name.
    /// </summary>
    public static ShardedRepository? GetCustomRepository(string name)
    {
        _customRepos.TryGetValue(name, out var repo);
        return repo;
    }

    #endregion

    #region Packet Routing

    /// <summary>
    /// Routes a packet to the network container pinned to the session's connection id.
    /// </summary>
    public static async ValueTask RoutePacketAsync(
        GameSession session,
        byte[] packet,
        Func<GameSession, byte[], CancellationToken, ValueTask> handler)
    {
        EnsureInitialized();
        var container = NetworkContainerRegistry.GetContainerForSession(session.ConnectionId);
        await container.ProcessPacketAsync(session, packet, handler);
    }

    /// <summary>
    /// Non-blocking attempt to queue a packet on the session's network container.
    /// </summary>
    public static bool TryRoutePacket(
        GameSession session,
        byte[] packet,
        Func<GameSession, byte[], CancellationToken, ValueTask> handler)
    {
        if (!_initialized) return false;

        try
        {
            var container = NetworkContainerRegistry.GetContainerForSession(session.ConnectionId);
            return container.TryProcessPacket(session, packet, handler);
        }
        catch (Exception ex)
        {
            _logger.Error(ex, "Failed to route packet for session {ConnectionId}", session.ConnectionId);
            return false;
        }
    }

    #endregion

    #region Statistics

    /// <summary>
    /// Gets network container statistics.
    /// </summary>
    public static (int Containers, int PendingTasks, long TotalProcessed) GetNetworkStatistics()
    {
        EnsureInitialized();
        var totalContainers = 0;
        var totalPending = 0;
        long totalProcessed = 0;

        foreach (var container in NetworkContainerRegistry.GetAllContainers())
        {
            totalContainers++;
            totalPending += container.PendingTasksCount;
            totalProcessed += container.TotalProcessedTasks;
        }

        return (totalContainers, totalPending, totalProcessed);
    }

    internal static int NextSubscriptionKey() => Interlocked.Increment(ref _subscriptionCounter);

    #endregion
}

/// <summary>
/// Async timer scheduler using PeriodicTimer for efficient, non-blocking scheduling.
/// Replaces the old Thread.Sleep(1) busy-wait loop.
/// </summary>
internal sealed class AsyncTimerScheduler : IDisposable
{
    private readonly ConcurrentDictionary<int, TimerSubscriptionBase> _subscriptions = new();
    private readonly CancellationTokenSource _cts = new();
    private Task? _propagationTask;

    public void Start()
    {
        _propagationTask = Task.Run(() => PropagationLoopAsync(_cts.Token));
    }

    public void Stop()
    {
        _cts.Cancel();
        
        try
        {
            _propagationTask?.Wait(TimeSpan.FromSeconds(2));
        }
        catch (AggregateException)
        {
            // Expected on cancellation
        }
        
        _subscriptions.Clear();
    }

    public IDisposable Subscribe(Action<int> action, int periodMs, bool recurring, int initialDelayMs, Repository repo)
    {
        var sub = new TimerSubscription(action, periodMs, recurring, initialDelayMs, repo, this);
        _subscriptions[sub.Id] = sub;
        return sub;
    }

    public IDisposable Subscribe<T>(Action<T, int> action, T param, int periodMs, bool recurring, int initialDelayMs, Repository repo)
    {
        var sub = new TimerSubscription<T>(action, param, periodMs, recurring, initialDelayMs, repo, this);
        _subscriptions[sub.Id] = sub;
        return sub;
    }

    internal void Remove(int id) => _subscriptions.TryRemove(id, out _);

    /// <summary>
    /// Async propagation loop using PeriodicTimer.
    /// Much more efficient than Thread.Sleep(1) busy-wait.
    /// </summary>
    private async Task PropagationLoopAsync(CancellationToken ct)
    {
        // Use PeriodicTimer for efficient async waiting
        using var timer = new PeriodicTimer(TimeSpan.FromMilliseconds(1));
        
        try
        {
            while (await timer.WaitForNextTickAsync(ct))
            {
                foreach (var sub in _subscriptions.Values)
                {
                    try
                    {
                        if (sub.TryMarkDueAndEnqueue())
                        {
                            sub.EnqueueToRepository();
                        }
                    }
                    catch (Exception ex)
                    {
                        // Log but don't stop the scheduler
                        Serilog.Log.Error(ex, "Error in timer subscription {Id}", sub.Id);
                    }
                }
            }
        }
        catch (OperationCanceledException)
        {
            // Expected during shutdown
        }
    }

    public void Dispose()
    {
        _cts.Cancel();
        _cts.Dispose();
    }
}

/// <summary>
/// Base class for timer subscriptions.
/// </summary>
internal abstract class TimerSubscriptionBase : IDisposable
{
    protected readonly Repository Repository;
    private readonly AsyncTimerScheduler _scheduler;
    private volatile bool _active = true;
    private DateTime _nextRun;
    private int _queued;

    public int Id { get; }

    protected TimerSubscriptionBase(int periodMs, int initialDelayMs, Repository repository, AsyncTimerScheduler scheduler)
    {
        Id = ThreadingController.NextSubscriptionKey();
        Repository = repository;
        _scheduler = scheduler;
        _nextRun = DateTime.UtcNow.AddMilliseconds(initialDelayMs);
    }

    protected abstract void Invoke();
    protected abstract int PeriodMs { get; }
    protected abstract bool Recurring { get; }

    public bool TryMarkDueAndEnqueue()
    {
        if (!_active || Volatile.Read(ref _queued) != 0) return false;
        if (DateTime.UtcNow <= _nextRun) return false;
        return Interlocked.CompareExchange(ref _queued, 1, 0) == 0;
    }

    public void EnqueueToRepository()
    {
        _ = Repository.EnqueueTaskAsync(async _ =>
        {
            try
            {
                if (_active) Invoke();
            }
            finally
            {
                Volatile.Write(ref _queued, 0);
                if (_active && Recurring)
                    _nextRun = DateTime.UtcNow.AddMilliseconds(PeriodMs);
                else if (!_active || !Recurring)
                    Dispose();
            }
        });
    }

    public void Dispose()
    {
        _active = false;
        _scheduler.Remove(Id);
    }
}

/// <summary>
/// Concrete timer subscription for parameterless actions.
/// </summary>
internal sealed class TimerSubscription : TimerSubscriptionBase
{
    private readonly Action<int> _action;
    private readonly int _periodMs;
    private readonly bool _recurring;

    public TimerSubscription(Action<int> action, int periodMs, bool recurring, int initialDelayMs, Repository repository, AsyncTimerScheduler scheduler)
        : base(periodMs, initialDelayMs, repository, scheduler)
    {
        _action = action;
        _periodMs = periodMs;
        _recurring = recurring;
    }

    protected override int PeriodMs => _periodMs;
    protected override bool Recurring => _recurring;

    protected override void Invoke() => _action(Environment.TickCount);
}

/// <summary>
/// Concrete timer subscription for parameterized actions.
/// </summary>
internal sealed class TimerSubscription<T> : TimerSubscriptionBase
{
    private readonly Action<T, int> _action;
    private readonly T _param;
    private readonly int _periodMs;
    private readonly bool _recurring;

    public TimerSubscription(Action<T, int> action, T param, int periodMs, bool recurring, int initialDelayMs, Repository repository, AsyncTimerScheduler scheduler)
        : base(periodMs, initialDelayMs, repository, scheduler)
    {
        _action = action;
        _param = param;
        _periodMs = periodMs;
        _recurring = recurring;
    }

    protected override int PeriodMs => _periodMs;
    protected override bool Recurring => _recurring;

    protected override void Invoke() => _action(_param, Environment.TickCount);
}
