using Nyx.Network;
using Nyx.Threading.Core;
using Nyx.Threading.Network;
using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

namespace Nyx.Threading.Network
{
    /// <summary>
    /// Central manager for network-aware thread containers.
    /// Provides session-to-container routing and load balancing.
    /// </summary>
    public static class NetworkContainerRegistry
    {
        private static readonly ConcurrentDictionary<string, NetworkThreadContainer> _networkContainers = new(StringComparer.OrdinalIgnoreCase);
        private static int _roundRobinIndex = 0;

        /// <summary>
        /// Immutable snapshot of the registered containers, used by the packet routing hot path.
        /// </summary>
        /// <remarks>
        /// Routing previously did `new List&lt;NetworkThreadContainer&gt;(GetAllContainers())` on
        /// every single packet -- a dictionary enumeration plus a list allocation and copy, per
        /// packet, purely to index a collection that never changes after startup. The container
        /// set is fixed by InitializeNetworkContainers at boot, so we publish an array snapshot
        /// and read it with a single volatile read instead.
        ///
        /// Rebuilt (not mutated) whenever a container is added, so readers always observe a
        /// consistent array and never need a lock.
        /// </remarks>
        private static volatile NetworkThreadContainer[] _containerSnapshot = Array.Empty<NetworkThreadContainer>();

        /// <summary>
        /// Rebuilds the routing snapshot from the registry. Called after any structural change.
        /// </summary>
        private static void RebuildSnapshot()
        {
            var snapshot = new List<NetworkThreadContainer>(_networkContainers.Count);

            // Order by name so routing is deterministic and stable across restarts; the
            // ConcurrentDictionary's own enumeration order is unspecified.
            foreach (var kvp in _networkContainers)
                snapshot.Add(kvp.Value);

            snapshot.Sort(static (a, b) => string.CompareOrdinal(a.Name, b.Name));
            _containerSnapshot = snapshot.ToArray();
        }

        /// <summary>
        /// Creates or retrieves a network container by name.
        /// </summary>
        public static NetworkThreadContainer GetOrCreateContainer(string name, int coreIndex, int? capacity = null)
        {
            if (string.IsNullOrWhiteSpace(name))
                throw new ArgumentException("Container name cannot be empty", nameof(name));

            var container = _networkContainers.GetOrAdd(name, n => new NetworkThreadContainer(n, coreIndex, capacity));
            RebuildSnapshot();
            return container;
        }

        /// <summary>
        /// Creates a network container with typed state.
        /// </summary>
        public static NetworkThreadContainer<TState> GetOrCreateContainer<TState>(string name, int coreIndex, TState state, int? capacity = null)
        {
            if (string.IsNullOrWhiteSpace(name))
                throw new ArgumentException("Container name cannot be empty", nameof(name));

            var container = (NetworkThreadContainer<TState>)_networkContainers.GetOrAdd(name, n => new NetworkThreadContainer<TState>(n, coreIndex, state, capacity));
            RebuildSnapshot();
            return container;
        }

        /// <summary>
        /// Gets a container using round-robin for load balancing.
        /// </summary>
        public static NetworkThreadContainer GetNextContainer()
        {
            var containers = _containerSnapshot;

            if (containers.Length == 0)
                throw new InvalidOperationException("No network containers registered");

            // Mask off the sign bit: Interlocked.Increment wraps to negative at int.MaxValue,
            // and a negative modulus would produce a negative index.
            var index = (Interlocked.Increment(ref _roundRobinIndex) & int.MaxValue) % containers.Length;
            return containers[index];
        }

        /// <summary>
        /// Routes a session to an appropriate container based on session ID.
        /// This ensures packets from the same session are processed in order.
        /// </summary>
        public static NetworkThreadContainer GetContainerForSession(uint connectionId)
        {
            // Hot path: one volatile array read, no allocation.
            var containers = _containerSnapshot;

            if (containers.Length == 0)
                throw new InvalidOperationException("No network containers registered");

            // Consistent routing: a given connection always maps to the same container, so all
            // packets from one session are processed in arrival order by a single worker.
            var index = (int)(connectionId % (uint)containers.Length);
            return containers[index];
        }

        /// <summary>
        /// Attempts to retrieve a registered container by name.
        /// </summary>
        public static bool TryGetContainer(string name, out NetworkThreadContainer? container)
        {
            var result = _networkContainers.TryGetValue(name, out var val);
            container = val;
            return result;
        }

        /// <summary>
        /// Returns all active network containers.
        /// </summary>
        public static IEnumerable<NetworkThreadContainer> GetAllContainers()
        {
            // Returns the stable snapshot rather than the live dictionary view.
            return _containerSnapshot;
        }

        /// <summary>
        /// Shuts down all network containers and clears the registry.
        /// </summary>
        public static void ShutdownAll()
        {
            foreach (var container in _networkContainers.Values)
            {
                container.Dispose();
            }
            _networkContainers.Clear();
            RebuildSnapshot();
        }

        /// <summary>
        /// Initializes a set of network containers for the game server.
        /// Creates containers based on available CPU cores.
        /// </summary>
        public static void InitializeNetworkContainers(int containerCount = 0, int? capacityPerContainer = null)
        {
            if (containerCount <= 0)
            {
                // Default to number of logical processors, max 16
                containerCount = Math.Min(Environment.ProcessorCount, 16);
            }

            for (int i = 0; i < containerCount; i++)
            {
                GetOrCreateContainer($"NetworkContainer-{i}", i, capacityPerContainer);
            }

            RebuildSnapshot();
        }
    }
}
