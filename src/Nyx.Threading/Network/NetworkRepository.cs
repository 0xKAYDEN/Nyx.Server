using Nyx.Network;
using Nyx.Threading.Core;
using Nyx.Threading.Contracts;
using System;
using System.Threading;
using System.Threading.Tasks;

namespace Nyx.Threading.Network
{
    /// <summary>
    /// A repository specialized for handling network packet processing tasks.
    /// Integrates with Nyx.Network GameSession for high-performance packet handling.
    /// </summary>
    public class NetworkRepository : Repository
    {
        public NetworkRepository(string name, IThreadContainer container)
            : base(name, container)
        {
        }

        /// <summary>
        /// Enqueues a packet processing task for a specific session.
        /// </summary>
        public ValueTask EnqueuePacketAsync(GameSession session, byte[] packet, Func<GameSession, byte[], CancellationToken, ValueTask> handler)
        {
            return EnqueueTaskAsync(
                (session, packet, handler),
                async (state, ct) =>
                {
                    await state.handler(state.session, state.packet, ct);
                },
                static state =>
                {
                    // Release packet buffer if needed
                    // The packet is usually pooled, so we could return it here
                }
            );
        }

        /// <summary>
        /// Non-blocking attempt to enqueue a packet processing task.
        /// </summary>
        public bool TryEnqueuePacket(GameSession session, byte[] packet, Func<GameSession, byte[], CancellationToken, ValueTask> handler)
        {
            return TryEnqueueTask(
                (session, packet, handler),
                async (state, ct) =>
                {
                    await state.handler(state.session, state.packet, ct);
                },
                static state =>
                {
                    // Release packet buffer if needed
                }
            );
        }
    }

    /// <summary>
    /// A network repository with typed state for session-specific or game-specific data.
    /// </summary>
    public class NetworkRepository<TState> : Repository<TState>
    {
        public NetworkRepository(string name, IThreadContainer container, TState state)
            : base(name, container, state)
        {
        }

        /// <summary>
        /// Enqueues a packet processing task with access to repository state.
        /// </summary>
        public ValueTask EnqueuePacketAsync(GameSession session, byte[] packet, Func<GameSession, byte[], TState, CancellationToken, ValueTask> handler)
        {
            var repoState = State;
            return EnqueueTaskAsync(
                (session, packet, handler, repoState),
                async (data, ct) =>
                {
                    await data.handler(data.session, data.packet, data.repoState, ct);
                },
                static data =>
                {
                    // Release packet buffer if needed
                }
            );
        }
    }
}
