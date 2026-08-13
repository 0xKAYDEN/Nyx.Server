using System;
using System.Threading;
using System.Threading.Tasks;

namespace Nyx.Threading.Contracts
{
    /// <summary>
    /// Represents a unit of work that can be executed inside a repository and container.
    /// Implements IDisposable to release resources immediately upon completion.
    /// </summary>
    public interface IRepositoryTask : IDisposable
    {
        Guid Id { get; }
        DateTime EnqueuedAt { get; }
        ValueTask ExecuteAsync(CancellationToken ct);
    }

    /// <summary>
    /// Represents a task that is pooled to avoid memory allocations.
    /// </summary>
    public interface IPooledTask : IRepositoryTask
    {
        void ReturnToPool();
    }
}
