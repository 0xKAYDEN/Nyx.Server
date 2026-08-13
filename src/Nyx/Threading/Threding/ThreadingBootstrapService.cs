using Microsoft.Extensions.Hosting;
using Nyx.Threading.Core;
using Nyx.Threading.Network;
using Serilog;
using System;
using System.Threading;
using System.Threading.Tasks;

namespace Nyx.Server.Threading
{
    /// <summary>
    /// Bootstraps the high-performance Nyx.Threading Container framework during server startup
    /// and handles graceful cleanup during shutdown.
    /// </summary>
    public sealed class ThreadingBootstrapService : IHostedService
    {
        private static readonly ILogger _logger = Log.ForContext<ThreadingBootstrapService>();

        public Task StartAsync(CancellationToken cancellationToken)
        {
            _logger.Information("Bootstrapping Nyx.Threading Container Framework...");

            try
            {
                ThreadingController.EnsureInitialized();

                foreach (var container in NetworkContainerRegistry.GetAllContainers())
                {
                    _logger.Information("  - Network Container '{Name}' on Core {CoreIndex} (Running: {Running})",
                        container.Name, container.CoreIndex, container.IsRunning);
                }

                foreach (var container in ContainerRegistry.GetAllContainers())
                {
                    _logger.Information("  - Container '{Name}' on Core {CoreIndex} (Running: {Running})",
                        container.Name, container.CoreIndex, container.IsRunning);
                }

                _logger.Information(
                    "Nyx.Threading ready: {Network} network containers, {Shards} game-logic shards",
                    ThreadingController.NetworkContainerCount,
                    ThreadingController.GameLogicShardCount);
            }
            catch (Exception ex)
            {
                _logger.Fatal(ex, "Failed to bootstrap Nyx.Threading containers!");
                throw;
            }

            return Task.CompletedTask;
        }

        public Task StopAsync(CancellationToken cancellationToken)
        {
            _logger.Information("Shutting down Nyx.Threading Container Framework...");
            try
            {
                ThreadingController.Shutdown();
                _logger.Information("Nyx.Threading Container Framework stopped cleanly.");
            }
            catch (Exception ex)
            {
                _logger.Error(ex, "Error shutting down Nyx.Threading containers.");
            }
            return Task.CompletedTask;
        }
    }
}
