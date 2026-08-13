using Nyx.Threading.Configuration;
using Nyx.Threading.Contracts;
using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Linq;

namespace Nyx.Threading.Core
{
    /// <summary>
    /// Central manager for all ThreadContainer instances.
    /// Helps bootstrap the multithreaded architecture for the Conquer server components.
    /// </summary>
    public static class ContainerRegistry
    {
        private static readonly ConcurrentDictionary<string, IThreadContainer> _containers = new(StringComparer.OrdinalIgnoreCase);

        /// <summary>
        /// Retrieves an existing container by name, or creates it if it does not exist.
        /// </summary>
        public static IThreadContainer GetOrCreateContainer(string name, int coreIndex, int? capacity = null)
        {
            if (string.IsNullOrWhiteSpace(name)) throw new ArgumentException("Container name cannot be empty", nameof(name));
            
            return _containers.GetOrAdd(name, n => new ThreadContainer(n, coreIndex, capacity));
        }

        /// <summary>
        /// Retrieves an existing container by name, or creates it from a
        /// <see cref="ContainerConfiguration"/>. The configuration supplies both the channel
        /// capacity and the unhealthy threshold that judges it, so capacity and its health
        /// threshold are kept together.
        /// </summary>
        public static IThreadContainer GetOrCreateContainer(string name, int coreIndex, ContainerConfiguration configuration)
        {
            if (string.IsNullOrWhiteSpace(name)) throw new ArgumentException("Container name cannot be empty", nameof(name));
            ArgumentNullException.ThrowIfNull(configuration);

            return _containers.GetOrAdd(
                name,
                n => new ThreadContainer(n, coreIndex, configuration.Capacity, configuration.UnhealthyThreshold));
        }

        /// <summary>
        /// Attempts to retrieve a registered container by name.
        /// </summary>
        public static bool TryGetContainer(string name, out IThreadContainer? container)
        {
            var result = _containers.TryGetValue(name, out var val);
            container = val;
            return result;
        }

        /// <summary>
        /// Returns all active containers in the system.
        /// </summary>
        public static IEnumerable<IThreadContainer> GetAllContainers()
        {
            return _containers.Values;
        }

        /// <summary>
        /// Gets health status for all containers.
        /// </summary>
        public static IEnumerable<ContainerHealthStatus> GetAllHealthStatus()
        {
            return _containers.Values
                .OfType<ThreadContainer>()
                .Select(c => c.GetHealthStatus())
                .ToList();
        }

        /// <summary>
        /// Gets a summary of system health.
        /// </summary>
        public static SystemHealthSummary GetSystemHealthSummary()
        {
            var statuses = GetAllHealthStatus().ToList();
            return new SystemHealthSummary
            {
                TotalContainers = statuses.Count,
                HealthyContainers = statuses.Count(s => s.IsHealthy),
                UnhealthyContainers = statuses.Count(s => !s.IsHealthy),
                TotalPendingTasks = statuses.Sum(s => s.PendingTasks),
                TotalProcessedTasks = statuses.Sum(s => s.TotalProcessed),
                AverageLatencyMs = statuses.Any() ? statuses.Average(s => s.AverageLatencyMs) : 0,
                IsSystemHealthy = statuses.All(s => s.IsHealthy)
            };
        }

        /// <summary>
        /// Shuts down all containers and clears the registry.
        /// </summary>
        public static void ShutdownAll()
        {
            foreach (var container in _containers.Values)
            {
                container.Dispose();
            }
            _containers.Clear();
        }
    }

    /// <summary>
    /// Summary of system-wide health status.
    /// </summary>
    public sealed class SystemHealthSummary
    {
        public int TotalContainers { get; init; }
        public int HealthyContainers { get; init; }
        public int UnhealthyContainers { get; init; }
        public int TotalPendingTasks { get; init; }
        public long TotalProcessedTasks { get; init; }
        public double AverageLatencyMs { get; init; }
        public bool IsSystemHealthy { get; init; }
    }
}
