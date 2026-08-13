using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.Inventory.Enums
{
    public enum Events
    {
        None,
        Trade,
        Pickup,
        Bought,
        Droppable,
        NpcGift,
        BossGift,
        MobDrop,
        CreateAndAdd,
        AddExisting,
        Stack,
        Split,
        Remove,
        RemoveByName,
        RemoveQuantity,
        Update,
        Move,
        Equip,
        Purify,
        Stabilize
    }
}
