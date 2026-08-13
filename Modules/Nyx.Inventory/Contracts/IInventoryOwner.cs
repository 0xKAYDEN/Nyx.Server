using Nyx.Inventory.Core;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.Inventory.Contracts
{
    public interface IInventoryOwner
    {
        uint EntityUID { get; }
        string EntityName { get; }
        void NotifyInventoryChange(InventoryTransaction transaction);
    }
}
