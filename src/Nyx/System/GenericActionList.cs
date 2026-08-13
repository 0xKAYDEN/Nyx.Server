using System;
using System.Collections.Generic;
using Nyx.Threading.Core;
using Nyx.Threading.Enums;

namespace Albetros.Core
{
    /// <summary>
    /// Generic action list that uses ThreadingController for scheduling.
    /// Replaces the old System.Threading.Timer pattern.
    /// 
    /// Thread Safety: All public methods are thread-safe.
    /// </summary>
    public class GenericActionList<T> where T : notnull
    {
        private readonly IDictionary<T, IDisposable> _subscriptions;
        private readonly RepositoryCategory _category;

        public GenericActionList(RepositoryCategory category = RepositoryCategory.GameLogic)
        {
            _subscriptions = new Dictionary<T, IDisposable>();
            _category = category;
        }

        /// <summary>
        /// Gets whether an action is registered for the specified type.
        /// </summary>
        public bool Contains(T type)
        {
            lock (_subscriptions)
            {
                return _subscriptions.ContainsKey(type);
            }
        }

        /// <summary>
        /// Adds a one-time delayed action.
        /// </summary>
        public void AddAction(T type, Action action, int delayMs)
        {
            lock (_subscriptions)
            {
                RemoveSubscription(type);
                
                var subscription = ThreadingController.Subscribe(
                    _category,
                    _ =>
                    {
                        action();
                        RemoveSubscription(type);
                    },
                    delayMs,
                    recurring: false);
                
                _subscriptions[type] = subscription;
            }
        }

        /// <summary>
        /// Adds a recurring action.
        /// </summary>
        public void AddRecurringAction(T type, Action action, int intervalMs)
        {
            lock (_subscriptions)
            {
                RemoveSubscription(type);
                
                var subscription = ThreadingController.Subscribe(
                    _category,
                    _ => action(),
                    intervalMs,
                    recurring: true);
                
                _subscriptions[type] = subscription;
            }
        }

        /// <summary>
        /// Removes an action by type.
        /// </summary>
        public void RemoveAction(T type)
        {
            lock (_subscriptions)
            {
                RemoveSubscription(type);
            }
        }

        /// <summary>
        /// Removes all actions.
        /// </summary>
        public void Clear()
        {
            lock (_subscriptions)
            {
                foreach (var subscription in _subscriptions.Values)
                {
                    try
                    {
                        subscription?.Dispose();
                    }
                    catch
                    {
                        // Ignore disposal errors
                    }
                }
                _subscriptions.Clear();
            }
        }

        private void RemoveSubscription(T type)
        {
            if (_subscriptions.TryGetValue(type, out var subscription))
            {
                try
                {
                    subscription?.Dispose();
                }
                catch
                {
                    // Ignore disposal errors
                }
                _subscriptions.Remove(type);
            }
        }

        public void Dispose()
        {
            Clear();
        }
    }
}
