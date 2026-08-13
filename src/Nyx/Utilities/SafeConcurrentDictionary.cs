using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.Server.Utilities
{
    public class SafeConcurrentDictionary<T, T2> : ConcurrentDictionary<T, T2>
    {
        public SafeConcurrentDictionary() { }

        public new T2 this[T key]
        {
            set => base[key] = value;
            get => this.ContainsKey(key) ? base[key] : default(T2);
        }
    }
}
