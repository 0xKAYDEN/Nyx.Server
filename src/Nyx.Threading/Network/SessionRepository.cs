using Nyx.Network;
using Nyx.Threading.Core;
using Nyx.Threading.Contracts;
using System;
using System.Collections.Concurrent;
using System.Threading;
using System.Threading.Tasks;

namespace Nyx.Threading.Network
{
    /// <summary>
    /// A repository that manages active sessions within a thread container.
    /// Provides thread-safe session operations executed on the container's dedicated thread.
    /// </summary>
    public class SessionRepository : Repository<ConcurrentDictionary<uint, GameSession>>
    {
        public SessionRepository(string name, IThreadContainer container)
            : base(name, container, new ConcurrentDictionary<uint, GameSession>())
        {
        }

        /// <summary>
        /// Adds a session to the repository.
        /// Executed on the container's dedicated thread.
        /// </summary>
        public async ValueTask AddSessionAsync(GameSession session)
        {
            await EnqueueTaskAsync(
                session,
                async (s, ct) =>
                {
                    State.TryAdd(s.ConnectionId, s);
                    await ValueTask.CompletedTask;
                }
            );
        }

        /// <summary>
        /// Removes a session from the repository.
        /// Executed on the container's dedicated thread.
        /// </summary>
        public async ValueTask RemoveSessionAsync(uint connectionId)
        {
            await EnqueueTaskAsync(
                connectionId,
                async (id, ct) =>
                {
                    State.TryRemove(id, out _);
                    await ValueTask.CompletedTask;
                }
            );
        }

        /// <summary>
        /// Gets the active session count.
        /// </summary>
        public int ActiveSessionCount => State.Count;

        /// <summary>
        /// Attempts to get a session by connection ID.
        /// </summary>
        public bool TryGetSession(uint connectionId, out GameSession? session)
        {
            return State.TryGetValue(connectionId, out session);
        }

        /// <summary>
        /// Broadcasts a packet to all sessions in this repository.
        /// Executed on the container's dedicated thread.
        /// </summary>
        public async ValueTask BroadcastAsync(byte[] packet)
        {
            await EnqueueTaskAsync(
                packet,
                async (data, ct) =>
                {
                    foreach (var session in State.Values)
                    {
                        if (session.Alive)
                        {
                            await session.SendAsync(data);
                        }
                    }
                }
            );
        }

        /// <summary>
        /// Broadcasts a packet to sessions matching a predicate.
        /// </summary>
        public async ValueTask BroadcastFilteredAsync(byte[] packet, Func<GameSession, bool> predicate)
        {
            await EnqueueTaskAsync(
                (packet, predicate),
                async (state, ct) =>
                {
                    foreach (var session in State.Values)
                    {
                        if (session.Alive && state.predicate(session))
                        {
                            await session.SendAsync(state.packet);
                        }
                    }
                }
            );
        }

        public override void Dispose()
        {
            foreach (var session in State.Values)
            {
                session.Dispose();
            }
            State.Clear();
            base.Dispose();
        }
    }
}
