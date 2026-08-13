using Nyx.Threading.Contracts;
using Nyx.Threading.Enums;
using System;
using System.Threading;
using System.Threading.Tasks;

namespace Nyx.Threading.Core
{
    /// <summary>
    /// Represents a sub-domain repository containing business logic tasks within a ThreadContainer.
    /// </summary>
    public class Repository : IRepository
    {
        public string Name { get; }
        public IThreadContainer Container { get; }
        private long _processedTasksCount;

        public long ProcessedTasksCount => Interlocked.Read(ref _processedTasksCount);
        
        /// <summary>
        /// Gets the number of pending tasks in the container.
        /// </summary>
        public int PendingTasksCount => Container.PendingTasksCount;
        
        /// <summary>
        /// Gets the total processed tasks in the container.
        /// </summary>
        public long TotalProcessedTasks => Container.TotalProcessedTasks;

        public Repository(string name, IThreadContainer container)
        {
            Name = name ?? throw new ArgumentNullException(nameof(name));
            Container = container ?? throw new ArgumentNullException(nameof(container));
            
            // Register self to container automatically upon creation
            Container.RegisterRepository(this);
        }

        public void IncrementProcessedTasks()
        {
            Interlocked.Increment(ref _processedTasksCount);
        }

        /// <summary>
        /// Default priority applied when a caller does not specify one.
        /// A repository can override this so that, for example, everything routed to the database
        /// repository is deprioritised without every call site having to say so.
        /// </summary>
        public TaskPriority DefaultPriority { get; init; } = TaskPriority.Normal;

        /// <summary>
        /// Enqueues a task asynchronously, returning a task that completes when it is written to the channel.
        /// </summary>
        public ValueTask EnqueueTaskAsync(Func<CancellationToken, ValueTask> handler, Action? releaseAction = null)
            => EnqueueTaskAsync(handler, DefaultPriority, releaseAction);

        /// <summary>
        /// Enqueues a task at an explicit priority.
        /// </summary>
        public ValueTask EnqueueTaskAsync(Func<CancellationToken, ValueTask> handler, TaskPriority priority, Action? releaseAction = null)
        {
            var task = TaskPool.Rent(handler, releaseAction);
            return Container.EnqueueAsync(task, priority);
        }

        /// <summary>
        /// Non-blocking attempt to enqueue a task. Returns true if successful.
        /// </summary>
        public bool TryEnqueueTask(Func<CancellationToken, ValueTask> handler, Action? releaseAction = null)
            => TryEnqueueTask(handler, DefaultPriority, releaseAction);

        /// <summary>
        /// Non-blocking attempt to enqueue a task at an explicit priority.
        /// </summary>
        public bool TryEnqueueTask(Func<CancellationToken, ValueTask> handler, TaskPriority priority, Action? releaseAction = null)
        {
            var task = TaskPool.Rent(handler, releaseAction);
            return Container.TryEnqueue(task, priority);
        }

        /// <summary>
        /// Enqueues an IRepositoryTask directly.
        /// </summary>
        public ValueTask EnqueueTaskAsync(IRepositoryTask task)
        {
            return Container.EnqueueAsync(task, DefaultPriority);
        }

        /// <summary>
        /// Enqueues an IRepositoryTask directly at an explicit priority.
        /// </summary>
        public ValueTask EnqueueTaskAsync(IRepositoryTask task, TaskPriority priority)
        {
            return Container.EnqueueAsync(task, priority);
        }

        /// <summary>
        /// Non-blocking attempt to enqueue an IRepositoryTask.
        /// </summary>
        public bool TryEnqueueTask(IRepositoryTask task)
        {
            return Container.TryEnqueue(task, DefaultPriority);
        }

        /// <summary>
        /// Non-blocking attempt to enqueue an IRepositoryTask at an explicit priority.
        /// </summary>
        public bool TryEnqueueTask(IRepositoryTask task, TaskPriority priority)
        {
            return Container.TryEnqueue(task, priority);
        }

        /// <summary>
        /// Enqueues a task with a payload asynchronously, returning a task that completes when it is written to the channel.
        /// </summary>
        public ValueTask EnqueueTaskAsync<TPayload>(TPayload payload, Func<TPayload, CancellationToken, ValueTask> handler, Action<TPayload>? releaseAction = null)
            => EnqueueTaskAsync(payload, handler, DefaultPriority, releaseAction);

        /// <summary>
        /// Enqueues a task with a payload at an explicit priority.
        /// </summary>
        public ValueTask EnqueueTaskAsync<TPayload>(TPayload payload, Func<TPayload, CancellationToken, ValueTask> handler, TaskPriority priority, Action<TPayload>? releaseAction = null)
        {
            var task = TaskPool<TPayload>.Rent(payload, handler, releaseAction);
            return Container.EnqueueAsync(task, priority);
        }

        /// <summary>
        /// Non-blocking attempt to enqueue a task with a payload. Returns true if successful.
        /// </summary>
        public bool TryEnqueueTask<TPayload>(TPayload payload, Func<TPayload, CancellationToken, ValueTask> handler, Action<TPayload>? releaseAction = null)
            => TryEnqueueTask(payload, handler, DefaultPriority, releaseAction);

        /// <summary>
        /// Non-blocking attempt to enqueue a task with a payload at an explicit priority.
        /// </summary>
        public bool TryEnqueueTask<TPayload>(TPayload payload, Func<TPayload, CancellationToken, ValueTask> handler, TaskPriority priority, Action<TPayload>? releaseAction = null)
        {
            var task = TaskPool<TPayload>.Rent(payload, handler, releaseAction);
            return Container.TryEnqueue(task, priority);
        }

        public virtual void Dispose()
        {
            GC.SuppressFinalize(this);
        }
    }

    /// <summary>
    /// Represents a stateful sub-domain repository containing business logic tasks within a ThreadContainer.
    /// </summary>
    public class Repository<TState> : Repository, IRepository<TState>
    {
        public TState State { get; }

        public Repository(string name, IThreadContainer container, TState state) 
            : base(name, container)
        {
            State = state;
        }

        public override void Dispose()
        {
            if (State is IDisposable disposable)
            {
                disposable.Dispose();
            }
            base.Dispose();
        }
    }
}
