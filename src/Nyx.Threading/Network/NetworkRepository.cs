using Nyx.Network;
using Nyx.Threading.Core;
using Nyx.Threading.Contracts;
using Nyx.Threading.Enums;
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
            // Inbound packet decode must not queue behind ordinary game logic on the same
            // container. Without this, a login handshake or any latency-critical packet waits for
            // however many game-logic tasks are already in the backlog.
            DefaultPriority = TaskPriority.Critical;
        }

        /// <summary>
        /// Enqueues a packet processing task for a specific session.
        /// </summary>
        public async ValueTask EnqueuePacketAsync(
            GameSession session,
            byte[] packet,
            Func<GameSession, byte[], CancellationToken, ValueTask> handler)
        {
            // Queue admission alone is not packet completion. Await the actual handler so the
            // per-session channel consumer cannot finish and trigger disconnect cleanup while its
            // final routed packet is still pending in a network container.
            var completion = new TaskCompletionSource(TaskCreationOptions.RunContinuationsAsynchronously);
            await EnqueueTaskAsync(
                (session, packet, handler, completion),
                async (state, ct) =>
                {
                    try
                    {
                        await state.handler(state.session, state.packet, ct).ConfigureAwait(false);
                        state.completion.TrySetResult();
                    }
                    catch (OperationCanceledException ex)
                    {
                        state.completion.TrySetCanceled(ex.CancellationToken);
                        throw;
                    }
                    catch (Exception ex)
                    {
                        state.completion.TrySetException(ex);
                        throw;
                    }
                },
                static state => state.completion.TrySetCanceled()
            ).ConfigureAwait(false);

            await completion.Task.ConfigureAwait(false);
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
            // See the non-generic constructor: packet I/O is latency-critical.
            DefaultPriority = TaskPriority.Critical;
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
