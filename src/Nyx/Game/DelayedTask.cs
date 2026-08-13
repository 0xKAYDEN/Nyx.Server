using System;
using System.Collections.Concurrent;
using System.Threading;
using Nyx.Threading.Core;
using Nyx.Threading.Enums;

namespace Nyx.Server.Joseph
{
    /// <summary>
    /// Modern delayed task system using Nyx.Threading.
    /// Replaces the old ThreadAction delegate pattern.
    /// 
    /// Thread Safety: All public methods are thread-safe.
    /// </summary>
    public class DelayedTask : IDisposable
    {
        private readonly ConcurrentDictionary<uint, DelayedAction> _taskObjects = new();
        private readonly IDisposable _subscription;
        private uint _nextTaskId;
        private int _disposed;

        public DelayedTask()
        {
            // Subscribe to ThreadingController for periodic task checking
            _subscription = ThreadingController.Subscribe(
                RepositoryCategory.GameLogic,
                Work,
                100, // Check every 100ms
                recurring: true);
        }

        private void Work(int time)
        {
            foreach (var action in _taskObjects.Values)
            {
                try
                {
                    if (DateTime.UtcNow >= action.AllowedTime)
                    {
                        action.Action.Invoke();

                        if (action.Repeated >= action.Repeat)
                        {
                            _taskObjects.TryRemove(action.ActionID, out _);
                        }
                        else
                        {
                            action.AllowedTime = DateTime.UtcNow.AddMilliseconds(action.RepeatDelay);
                            action.Repeated++;
                        }
                    }
                }
                catch (Exception)
                {
                    // Log but continue processing other tasks
                }
            }
        }

        /// <summary>
        /// Starts a delayed task.
        /// </summary>
        /// <param name="action">The action to execute.</param>
        /// <param name="waitTimeMs">The delay before invoking the action (milliseconds).</param>
        /// <param name="repeat">The number of times to repeat (0 = once).</param>
        /// <param name="repeatDelayMs">The delay between repeats (milliseconds).</param>
        /// <returns>The task ID for cancellation.</returns>
        public uint StartDelayedTask(Action action, int waitTimeMs, int repeat = 0, int repeatDelayMs = 0)
        {
            ObjectDisposedException.ThrowIf(_disposed == 1, this);
            
            var taskId = Interlocked.Increment(ref _nextTaskId);
            
            var delayedAction = new DelayedAction
            {
                ActionID = taskId,
                AllowedTime = DateTime.UtcNow.AddMilliseconds(waitTimeMs),
                Repeat = repeat,
                RepeatDelay = repeatDelayMs,
                Action = action
            };
            
            _taskObjects.TryAdd(taskId, delayedAction);
            return taskId;
        }

        /// <summary>
        /// Removes a delayed task by ID.
        /// </summary>
        public void Remove(uint actionId)
        {
            _taskObjects.TryRemove(actionId, out _);
        }

        /// <summary>
        /// Checks if a task exists.
        /// </summary>
        public bool Contains(uint actionId)
        {
            return _taskObjects.ContainsKey(actionId);
        }

        /// <summary>
        /// Gets the number of pending tasks.
        /// </summary>
        public int PendingCount => _taskObjects.Count;

        public void Dispose()
        {
            if (Interlocked.Exchange(ref _disposed, 1) == 1)
                return;
            
            _subscription?.Dispose();
            _taskObjects.Clear();
            GC.SuppressFinalize(this);
        }
    }

    /// <summary>
    /// Internal representation of a delayed action.
    /// </summary>
    internal sealed class DelayedAction
    {
        public uint ActionID { get; init; }
        public DateTime AllowedTime { get; set; }
        public int Repeat { get; init; }
        public int RepeatDelay { get; init; }
        public int Repeated { get; set; }
        public Action Action { get; init; } = null!;
    }
}
