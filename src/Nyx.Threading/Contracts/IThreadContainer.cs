using Nyx.Threading.Enums;
using System;
using System.Threading;
using System.Threading.Tasks;

namespace Nyx.Threading.Contracts
{
    /// <summary>
    /// A processing unit that runs on a dedicated CPU core and executes tasks for its repositories.
    /// </summary>
    public interface IThreadContainer : IDisposable
    {
        string Name { get; }
        int CoreIndex { get; }
        bool IsRunning { get; }
        int PendingTasksCount { get; }
        long TotalProcessedTasks { get; }
        
        /// <summary>
        /// Registers a repository to this container.
        /// </summary>
        void RegisterRepository(IRepository repository);
        
        /// <summary>
        /// Enqueues a task to be processed by this container at <see cref="TaskPriority.Normal"/>.
        /// </summary>
        ValueTask EnqueueAsync(IRepositoryTask task);

        /// <summary>
        /// Enqueues a task to be processed by this container at the given priority.
        /// Tasks of the same priority keep FIFO order; higher priorities overtake lower ones.
        /// </summary>
        ValueTask EnqueueAsync(IRepositoryTask task, TaskPriority priority);

        /// <summary>
        /// Tries to enqueue a task at <see cref="TaskPriority.Normal"/> without blocking.
        /// </summary>
        bool TryEnqueue(IRepositoryTask task);

        /// <summary>
        /// Tries to enqueue a task at the given priority without blocking.
        /// </summary>
        bool TryEnqueue(IRepositoryTask task, TaskPriority priority);

        /// <summary>
        /// Approximate number of pending tasks at a single priority level.
        /// </summary>
        int GetPendingCount(TaskPriority priority);

        /// <summary>
        /// Gets the average execution latency in milliseconds.
        /// </summary>
        double GetAverageLatencyMs();
    }
}
