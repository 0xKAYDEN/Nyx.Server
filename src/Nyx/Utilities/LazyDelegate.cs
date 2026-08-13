using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Nyx.Threading.Enums;

namespace Nyx.Server.Utilities
{
    /// <summary>
    /// A one-shot timer that executes once after a delay.
    /// Wraps GameTimer with recurring=false.
    /// </summary>
    public class LazyDelegate : GameTimer
    {
        public LazyDelegate(Action<int> action, int dueTime, RepositoryCategory category = RepositoryCategory.GameLogic)
          : base(action, dueTime, recurring: false, category: category)
        {
        }
    }

    /// <summary>
    /// A generic one-shot timer that executes once after a delay.
    /// Wraps GameTimer&lt;T&gt; with recurring=false.
    /// </summary>
    public class LazyDelegate<T> : GameTimer<T>
    {
        public LazyDelegate(Action<T, int> action, int dueTime, RepositoryCategory category = RepositoryCategory.GameLogic)
          : base(action, dueTime, recurring: false, category: category)
        {
        }
    }
}
