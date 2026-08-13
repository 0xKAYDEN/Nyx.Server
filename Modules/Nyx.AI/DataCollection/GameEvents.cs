using Nyx.AI.DataCollection.Enums;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.AI.DataCollection
{
    public class GameEvents
    {
        public EventType Events { get; set; } // "Move", "Attack", "PickupItem", etc.
        public uint PlayerID { get; set; }
        public string PlayerName { get; set; }
        public Dictionary<string, object> Data { get; set; } = new();
        public DateTime Timestamp { get; set; } = DateTime.UtcNow;
    }
}
