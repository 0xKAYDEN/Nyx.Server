using Microsoft.Extensions.Hosting;
using Nyx.Threading.Core;
using Nyx.Threading.Enums;
using System;
using System.Threading;
using System.Threading.Tasks;

namespace Nyx.Server.Threading
{
    /// <summary>
    /// Registers a recurring timer on a Nyx.Threading container via <see cref="ThreadingController"/>.
    /// </summary>
    public abstract class ThreadingTimerHostedService : IHostedService
    {
        protected abstract RepositoryCategory Category { get; }
        protected abstract int IntervalMilliseconds { get; }
        protected abstract void OnTimerTick(int elapsedMilliseconds);
        protected virtual int ShardKey => 0;

        private IDisposable? _subscription;

        public virtual Task StartAsync(CancellationToken cancellationToken)
        {
            OnStarting();
            _subscription = ThreadingController.Subscribe(
                Category,
                OnTimerTick,
                IntervalMilliseconds,
                shardKey: ShardKey);
            return Task.CompletedTask;
        }

        public virtual Task StopAsync(CancellationToken cancellationToken)
        {
            _subscription?.Dispose();
            _subscription = null;
            OnStopping();
            return Task.CompletedTask;
        }

        protected virtual void OnStarting() { }
        protected virtual void OnStopping() { }
    }
}
