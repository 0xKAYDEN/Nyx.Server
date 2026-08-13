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
        /// Enqueues a task to be processed by this container.
        /// </summary>
        ValueTask EnqueueAsync(IRepositoryTask task);
        
        /// <summary>
        /// Tries to enqueue a task without blocking.
        /// </summary>
        bool TryEnqueue(IRepositoryTask task);

        /// <summary>
        /// Gets the average execution latency in milliseconds.
        /// </summary>
        double GetAverageLatencyMs();
    }
}
