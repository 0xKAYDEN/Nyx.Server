using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.Server.Utilities
{
    public class CareDictionary<T, T2> : Dictionary<T, T2>
    {
        public CareDictionary() { }

        public CareDictionary(int nulledNumber) { }

        public new T2 this[T key]
        {
            set => base[key] = value;
            get => this.ContainsKey(key) ? base[key] : default(T2);
        }

        public new void Add(T key, T2 value) => base[key] = value;
    }
}
