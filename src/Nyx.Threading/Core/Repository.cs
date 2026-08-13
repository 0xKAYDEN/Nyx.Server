using Nyx.Threading.Contracts;
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
        /// Enqueues a task asynchronously, returning a task that completes when it is written to the channel.
        /// </summary>
        public ValueTask EnqueueTaskAsync(Func<CancellationToken, ValueTask> handler, Action? releaseAction = null)
        {
            var task = TaskPool.Rent(handler, releaseAction);
            return Container.EnqueueAsync(task);
        }

        /// <summary>
        /// Non-blocking attempt to enqueue a task. Returns true if successful.
        /// </summary>
        public bool TryEnqueueTask(Func<CancellationToken, ValueTask> handler, Action? releaseAction = null)
        {
            var task = TaskPool.Rent(handler, releaseAction);
            return Container.TryEnqueue(task);
        }
        
        /// <summary>
        /// Enqueues an IRepositoryTask directly.
        /// </summary>
        public ValueTask EnqueueTaskAsync(IRepositoryTask task)
        {
            return Container.EnqueueAsync(task);
        }

        /// <summary>
        /// Non-blocking attempt to enqueue an IRepositoryTask.
        /// </summary>
        public bool TryEnqueueTask(IRepositoryTask task)
        {
            return Container.TryEnqueue(task);
        }

        /// <summary>
        /// Enqueues a task with a payload asynchronously, returning a task that completes when it is written to the channel.
        /// </summary>
        public ValueTask EnqueueTaskAsync<TPayload>(TPayload payload, Func<TPayload, CancellationToken, ValueTask> handler, Action<TPayload>? releaseAction = null)
        {
            var task = TaskPool<TPayload>.Rent(payload, handler, releaseAction);
            return Container.EnqueueAsync(task);
        }

        /// <summary>
        /// Non-blocking attempt to enqueue a task with a payload. Returns true if successful.
        /// </summary>
        public bool TryEnqueueTask<TPayload>(TPayload payload, Func<TPayload, CancellationToken, ValueTask> handler, Action<TPayload>? releaseAction = null)
        {
            var task = TaskPool<TPayload>.Rent(payload, handler, releaseAction);
            return Container.TryEnqueue(task);
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
