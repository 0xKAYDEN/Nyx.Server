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
        /// Creates or retrieves a network container by name.
        /// </summary>
        public static NetworkThreadContainer GetOrCreateContainer(string name, int coreIndex, int? capacity = null)
        {
            if (string.IsNullOrWhiteSpace(name))
                throw new ArgumentException("Container name cannot be empty", nameof(name));

            return _networkContainers.GetOrAdd(name, n => new NetworkThreadContainer(n, coreIndex, capacity));
        }

        /// <summary>
        /// Creates a network container with typed state.
        /// </summary>
        public static NetworkThreadContainer<TState> GetOrCreateContainer<TState>(string name, int coreIndex, TState state, int? capacity = null)
        {
            if (string.IsNullOrWhiteSpace(name))
                throw new ArgumentException("Container name cannot be empty", nameof(name));

            return (NetworkThreadContainer<TState>)_networkContainers.GetOrAdd(name, n => new NetworkThreadContainer<TState>(n, coreIndex, state, capacity));
        }

        /// <summary>
        /// Gets a container using round-robin for load balancing.
        /// </summary>
        public static NetworkThreadContainer GetNextContainer()
        {
            var containers = GetAllContainers();
            var containerList = new List<NetworkThreadContainer>(containers);
            
            if (containerList.Count == 0)
                throw new InvalidOperationException("No network containers registered");

            var index = Interlocked.Increment(ref _roundRobinIndex) % containerList.Count;
            return containerList[index];
        }

        /// <summary>
        /// Routes a session to an appropriate container based on session ID.
        /// This ensures packets from the same session are processed in order.
        /// </summary>
        public static NetworkThreadContainer GetContainerForSession(uint connectionId)
        {
            var containers = GetAllContainers();
            var containerList = new List<NetworkThreadContainer>(containers);

            if (containerList.Count == 0)
                throw new InvalidOperationException("No network containers registered");

            // Use connection ID hash for consistent routing
            var index = (int)(connectionId % (uint)containerList.Count);
            return containerList[index];
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
            return _networkContainers.Values;
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
        }
    }
}
