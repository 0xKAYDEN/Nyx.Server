using Nyx.Network;
using Nyx.Threading.Contracts;
using System;
using System.Threading;
using System.Threading.Tasks;

namespace Nyx.Threading.Network
{
    /// <summary>
    /// A specialized thread container for network packet processing.
    /// Provides optimized handling for network sessions and packet routing.
    /// Implements IThreadContainer to work with the threading infrastructure.
    /// </summary>
    public class NetworkThreadContainer : IThreadContainer
    {
        private readonly Core.ThreadContainer _innerContainer;
        private readonly NetworkRepository _packetRepository;

        public string Name => _innerContainer.Name;
        public int CoreIndex => _innerContainer.CoreIndex;
        public bool IsRunning => _innerContainer.IsRunning;
        public int PendingTasksCount => _innerContainer.PendingTasksCount;
        public long TotalProcessedTasks => _innerContainer.TotalProcessedTasks;

        public NetworkThreadContainer(string name, int coreIndex, int? capacity = null)
        {
            _innerContainer = new Core.ThreadContainer(name, coreIndex, capacity);
            _packetRepository = new NetworkRepository($"PacketRepo-{name}", _innerContainer);
        }

        /// <summary>
        /// Enqueues a packet for processing within this container.
        /// The packet is processed sequentially by this container's single worker.
        /// </summary>
        public async ValueTask ProcessPacketAsync(GameSession session, byte[] packet, Func<GameSession, byte[], CancellationToken, ValueTask> handler)
        {
            await _packetRepository.EnqueuePacketAsync(session, packet, handler);
        }

        /// <summary>
        /// Non-blocking attempt to enqueue a packet for processing.
        /// </summary>
        public bool TryProcessPacket(GameSession session, byte[] packet, Func<GameSession, byte[], CancellationToken, ValueTask> handler)
        {
            return _packetRepository.TryEnqueuePacket(session, packet, handler);
        }

        public void RegisterRepository(IRepository repository)
        {
            _innerContainer.RegisterRepository(repository);
        }

        public async ValueTask EnqueueAsync(IRepositoryTask task)
        {
            await _innerContainer.EnqueueAsync(task);
        }

        public bool TryEnqueue(IRepositoryTask task)
        {
            return _innerContainer.TryEnqueue(task);
        }

        public double GetAverageLatencyMs()
        {
            return _innerContainer.GetAverageLatencyMs();
        }

        public void Dispose()
        {
            _innerContainer.Dispose();
        }
    }

    /// <summary>
    /// A network container with typed state for game-specific logic.
    /// </summary>
    public class NetworkThreadContainer<TState> : NetworkThreadContainer
    {
        public TState State { get; }

        public NetworkThreadContainer(string name, int coreIndex, TState state, int? capacity = null)
            : base(name, coreIndex, capacity)
        {
            State = state;
        }
    }
}
