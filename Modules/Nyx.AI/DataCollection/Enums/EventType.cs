using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.AI.DataCollection.Enums
{
    public enum EventType : byte
    {
        // "Move", "Attack", "PickupItem", etc.
        Move = 1,
        Attack = 2,
        PickupItem = 3,
        UseItem = 4,
        ChatMessage = 5,
        InteractWithNpc = 6,
        AutoHuntStarted,
        AutoHuntEnded,
        AutoHuntExpGained,

    }
}
