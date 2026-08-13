using System;

namespace Nyx.Threading.Contracts
{
    /// <summary>
    /// Handles a specific subdomain of tasks inside a container.
    /// </summary>
    public interface IRepository : IDisposable
    {
        string Name { get; }
        IThreadContainer Container { get; }
        
        /// <summary>
        /// Total tasks processed by this repository.
        /// </summary>
        long ProcessedTasksCount { get; }
        
        /// <summary>
        /// Increments the processed task count.
        /// </summary>
        void IncrementProcessedTasks();
    }

    /// <summary>
    /// Generic repository holding specific state.
    /// </summary>
    public interface IRepository<TState> : IRepository
    {
        TState State { get; }
    }
}
