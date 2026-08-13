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

    /// <summary>
    /// Default shard count for the lazily created sharded repositories.
    /// </summary>
    private static int DefaultShardCount => Math.Min(4, Environment.ProcessorCount);

    /// <summary>
    /// Lazily creates a sharded repository, so its dedicated worker threads are only spawned if
    /// the corresponding API is actually used.
    /// </summary>
    /// <remarks>
    /// Double-checked locking on the shared init lock. Reference assignment is atomic and the
    /// .NET memory model gives writes release semantics, so a caller that observes a non-null
    /// field also observes a fully constructed repository.
    /// </remarks>
    private static ShardedRepository GetOrCreateShardedRepo(
        ref ShardedRepository? field, string name, int? capacity)
    {
        var existing = field;
        if (existing != null) return existing;

        lock (_initLock)
        {
            // Re-read under the lock: another thread may have created it while we waited.
            existing = field;
            if (existing != null) return existing;

            var created = new ShardedRepository(name, DefaultShardCount, capacity);
            field = created;
            return created;
        }
    }

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

            // Game logic: ONE CONTAINER PER SHARD.
            //
            // This previously created a single "GameLogic" container and wrapped it in N
            // Repository objects. Because a ThreadContainer owns exactly one channel drained by
            // exactly one sequential worker, every "shard" enqueued into the same queue and the
            // shard key only selected a different wrapper object -- all game logic ran on one
            // thread. Giving each shard its own container is what makes the shard key mean
            // something: shard N is owned by worker N, so state partitioned by shard key (see
            // MapManager, which shards on map id) is single-writer without locking.
            var gameLogicShards = Math.Min(4, Environment.ProcessorCount);
            _gameLogicRepos = new Repository[gameLogicShards];

            for (var i = 0; i < gameLogicShards; i++)
            {
                var shardContainer = ContainerRegistry.GetOrCreateContainer(
                    $"GameLogic-{i}",
                    i,
                    10000);

                _gameLogicRepos[i] = new Repository($"GameLogicRepo-{i}", shardContainer);
            }

            // Database: dedicated container. Blocking DB work belongs here and NOT on a
            // game-logic shard, where it would stall every entity owned by that shard.
            var dbContainer = ContainerRegistry.GetOrCreateContainer(
                "Database",
                0,
                5000);
            _databaseRepo = new Repository("DatabaseRepo", dbContainer);

            // Background: low-urgency periodic work.
            var bgContainer = ContainerRegistry.GetOrCreateContainer(
                "BackgroundTasks",
                0,
                5000);
            _backgroundRepo = new Repository("BackgroundRepo", bgContainer);

            // High priority: latency-sensitive work that must not queue behind game logic.
            var hpContainer = ContainerRegistry.GetOrCreateContainer(
                "HighPriority",
                0,
                5000);
            _highPriorityRepo = new Repository("HighPriorityRepo", hpContainer);

            // NOTE: _playerRepo / _mapRepo / _databaseShardedRepo are created lazily on first use
            // (see GetOrCreateShardedRepo). They were previously declared but never assigned, so
            // every caller silently took the null-check fallback and collapsed onto the unsharded
            // repo -- the shard key was computed and then discarded. They are not built eagerly
            // here because each shard owns a dedicated LongRunning thread, and most deployments
            // use only a subset of these three.

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

            // Dispose the sharded repositories so any IDisposable shard state is released.
            // Their containers were already torn down by ContainerRegistry.ShutdownAll above,
            // which also clears the name->container map, so a later EnsureInitialized builds
            // fresh containers and cannot collide on RegisterRepository.
            foreach (var repo in new[] { _playerRepo, _mapRepo, _databaseShardedRepo })
            {
                try { repo?.Dispose(); }
                catch (Exception ex) { _logger.Error(ex, "Error disposing sharded repository"); }
            }

            foreach (var kvp in _customRepos)
            {
                try { kvp.Value.Dispose(); }
                catch (Exception ex) { _logger.Error(ex, "Error disposing custom repository '{Name}'", kvp.Key); }
            }
            _customRepos.Clear();

            _gameLogicRepos = Array.Empty<Repository>();
            _databaseRepo = null;
            _backgroundRepo = null;
            _highPriorityRepo = null;
            _playerRepo = null;
            _mapRepo = null;
            _databaseShardedRepo = null;
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
                // Masked remainder, not Math.Abs: Math.Abs(int.MinValue) throws OverflowException.
                // Shard keys are frequently casts of uint entity/map ids, so int.MinValue is
                // reachable from a real id (0x80000000) rather than being merely theoretical.
                _gameLogicRepos[(int)((uint)shardKey % (uint)_gameLogicRepos.Length)],
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
        
        var playerRepo = GetOrCreateShardedRepo(ref _playerRepo, "Player", 10000);
        return playerRepo.GetShard(unchecked((int)entityId)).EnqueueTaskAsync(handler);
    }

    /// <summary>
    /// Enqueues a task to the map repository (sharded by map ID).
    /// </summary>
    public static ValueTask EnqueueMapTaskAsync(uint mapId, Func<CancellationToken, ValueTask> handler)
    {
        EnsureInitialized();
        
        var mapRepo = GetOrCreateShardedRepo(ref _mapRepo, "Map", 10000);
        return mapRepo.GetShard(unchecked((int)mapId)).EnqueueTaskAsync(handler);
    }

    /// <summary>
    /// Enqueues a database task (sharded for parallel processing).
    /// </summary>
    public static ValueTask EnqueueDatabaseTaskAsync(Func<CancellationToken, ValueTask> handler, int shardKey = 0)
    {
        EnsureInitialized();
        
        var dbRepo = GetOrCreateShardedRepo(ref _databaseShardedRepo, "DatabaseSharded", 5000);
        return dbRepo.GetShard(shardKey).EnqueueTaskAsync(handler);
    }

    /// <summary>
    /// Gets or creates a custom sharded repository, with one container (thread) per shard.
    /// </summary>
    public static ShardedRepository GetOrCreateCustomRepository(string name, int shardCount, int? capacityPerShard = 10000)
    {
        EnsureInitialized();

        return _customRepos.GetOrAdd(name, n => new ShardedRepository(n, shardCount, capacityPerShard));
    }

    /// <summary>
    /// Gets or creates a custom sharded repository whose shards all share one container.
    /// </summary>
    /// <remarks>
    /// All shards execute sequentially on a single thread. Prefer the overload taking a shard
    /// capacity unless you specifically need global ordering across shards.
    /// </remarks>
    public static ShardedRepository GetOrCreateCustomRepository(string name, int shardCount, IThreadContainer container)
    {
        EnsureInitialized();

        return _customRepos.GetOrAdd(name, n => new ShardedRepository(n, shardCount, container));
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
/// Async timer scheduler backed by a due-time min-heap.
/// </summary>
/// <remarks>
/// The previous implementation ticked every millisecond and rescanned <em>every</em> subscription
/// on each tick, calling <c>DateTime.UtcNow</c> per subscription per tick. That is
/// O(subscriptions) work 1000 times a second regardless of how many timers are actually due.
/// The game registers eight subscriptions per player (four in <c>World.Register</c>, four in
/// <c>Screen</c>), so a 1,000-player server performed roughly eight million due-checks and eight
/// million clock reads per second before any game work happened.
///
/// This version keeps subscriptions ordered by due time in a min-heap, so a tick pops only the
/// entries that are genuinely due -- O(due + log n) instead of O(n). Timing is measured with
/// <c>Environment.TickCount64</c>, a cheap monotonic counter, rather than <c>DateTime.UtcNow</c>,
/// which is both slower and non-monotonic (a clock adjustment could previously stall or stampede
/// every timer at once).
///
/// Threading: the heap is owned exclusively by the propagation loop and is never locked.
/// Subscriptions arriving from other threads (initial subscribe, and rescheduling that happens on
/// a repository worker after the callback runs) are handed over through a lock-free queue that the
/// loop drains at the top of each tick. Cancellation is lazy: <see cref="TimerSubscriptionBase.Dispose"/>
/// flags the subscription and drops it from the lookup map, and the loop discards it when it
/// surfaces. That avoids an O(n) heap removal on every player logout.
/// </remarks>
internal sealed class AsyncTimerScheduler : IDisposable
{
    private readonly ConcurrentDictionary<int, TimerSubscriptionBase> _subscriptions = new();

    /// <summary>Hand-off queue for subscriptions entering or re-entering the schedule.</summary>
    private readonly ConcurrentQueue<TimerSubscriptionBase> _incoming = new();

    /// <summary>Due-time ordered heap. Owned solely by the propagation loop.</summary>
    private readonly PriorityQueue<TimerSubscriptionBase, long> _due = new();

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
        _incoming.Clear();
    }

    public IDisposable Subscribe(Action<int> action, int periodMs, bool recurring, int initialDelayMs, Repository repo)
    {
        var sub = new TimerSubscription(action, periodMs, recurring, initialDelayMs, repo, this);
        Register(sub);
        return sub;
    }

    public IDisposable Subscribe<T>(Action<T, int> action, T param, int periodMs, bool recurring, int initialDelayMs, Repository repo)
    {
        var sub = new TimerSubscription<T>(action, param, periodMs, recurring, initialDelayMs, repo, this);
        Register(sub);
        return sub;
    }

    private void Register(TimerSubscriptionBase sub)
    {
        _subscriptions[sub.Id] = sub;
        _incoming.Enqueue(sub);
    }

    /// <summary>
    /// Returns a subscription to the schedule after its callback has completed.
    /// Called from a repository worker thread, hence the lock-free hand-off.
    /// </summary>
    internal void Reschedule(TimerSubscriptionBase sub)
    {
        if (!sub.IsActive) return;
        _incoming.Enqueue(sub);
    }

    internal void Remove(int id) => _subscriptions.TryRemove(id, out _);

    /// <summary>
    /// Propagation loop. Each tick drains the hand-off queue into the heap, then dispatches
    /// only the subscriptions whose due time has arrived.
    /// </summary>
    private async Task PropagationLoopAsync(CancellationToken ct)
    {
        // The tick interval remains 1 ms so scheduling granularity is unchanged. Note that on
        // Windows the default OS timer resolution is ~15.6 ms unless timeBeginPeriod is called,
        // so ticks arrive in bursts; the heap handles a burst correctly because it drains every
        // entry that came due during the gap, instead of one entry per tick.
        using var timer = new PeriodicTimer(TimeSpan.FromMilliseconds(1));

        try
        {
            while (await timer.WaitForNextTickAsync(ct))
            {
                // 1. Admit new and rescheduled subscriptions.
                while (_incoming.TryDequeue(out var incoming))
                {
                    if (incoming.IsActive)
                        _due.Enqueue(incoming, incoming.NextRunTick);
                }

                // 2. Dispatch everything that is due. One clock read for the whole batch.
                long now = Environment.TickCount64;

                while (_due.TryPeek(out var sub, out var dueTick) && dueTick <= now)
                {
                    _due.Dequeue();

                    // Lazy cancellation: disposed subscriptions are simply dropped here.
                    if (!sub.IsActive) continue;

                    try
                    {
                        if (sub.TryMarkQueued())
                        {
                            sub.EnqueueToRepository();
                        }
                        else
                        {
                            // A previous callback is still in flight. It will hand the subscription
                            // back on completion, so simply drop this occurrence rather than
                            // stacking a second invocation on the repository.
                        }
                    }
                    catch (Exception ex)
                    {
                        // Log but don't stop the scheduler.
                        Serilog.Log.Error(ex, "Error in timer subscription {Id}", sub.Id);

                        // The callback never reached its finally block, so recover the subscription
                        // explicitly; otherwise it would sit claimed and off-heap forever.
                        sub.OnDispatchFailed();
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

    /// <summary>
    /// Monotonic due time in <c>Environment.TickCount64</c> units.
    /// Written on a repository worker after the callback completes and read by the propagation
    /// loop, so it is accessed through <see cref="Volatile"/> -- the previous <c>DateTime _nextRun</c>
    /// field was a plain 64-bit field torn between those two threads with no synchronisation.
    /// </summary>
    private long _nextRunTick;

    private int _queued;

    public int Id { get; }

    public bool IsActive => _active;

    /// <summary>Due time used as the heap key when the subscription is admitted.</summary>
    public long NextRunTick => Volatile.Read(ref _nextRunTick);

    protected TimerSubscriptionBase(int periodMs, int initialDelayMs, Repository repository, AsyncTimerScheduler scheduler)
    {
        Id = ThreadingController.NextSubscriptionKey();
        Repository = repository;
        _scheduler = scheduler;
        Volatile.Write(ref _nextRunTick, Environment.TickCount64 + initialDelayMs);
    }

    protected abstract void Invoke();
    protected abstract int PeriodMs { get; }
    protected abstract bool Recurring { get; }

    /// <summary>
    /// Claims the subscription for dispatch. The heap already established that it is due, so this
    /// only guards against a second dispatch while a callback is still in flight (a callback that
    /// overruns its period must not be queued twice).
    /// </summary>
    public bool TryMarkQueued()
    {
        if (!_active) return false;
        return Interlocked.CompareExchange(ref _queued, 1, 0) == 0;
    }

    /// <summary>Advances the due time by one period from now.</summary>
    public void ScheduleNextRun()
        => Volatile.Write(ref _nextRunTick, Environment.TickCount64 + PeriodMs);

    /// <summary>Releases the in-flight claim after a dispatch that never reached the callback.</summary>
    public void ForceReleaseQueued() => Volatile.Write(ref _queued, 0);

    /// <summary>
    /// Recovery path for a subscription whose enqueue attempt threw: clear the in-flight flag and
    /// either put it back on the schedule or retire it, so it can never be orphaned.
    /// </summary>
    public void OnDispatchFailed()
    {
        ForceReleaseQueued();

        if (_active && Recurring)
        {
            ScheduleNextRun();
            _scheduler.Reschedule(this);
        }
        else
        {
            Dispose();
        }
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
                {
                    // Re-arm from completion time, matching the original behaviour, then hand the
                    // subscription back to the propagation loop. Nothing is left in the heap while
                    // a callback runs, so a slow callback can no longer be re-examined 1000 times
                    // a second while it is still executing.
                    ScheduleNextRun();
                    _scheduler.Reschedule(this);
                }
                else
                {
                    Dispose();
                }
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
