using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.Inventory.Core
{
    public class BaseInventory
    {
        public const int BaseSpace = 40;
        public int AvailableBaseSpace { get; set; }
        public int AvailableExtraSpace { get; set; }
        public int TotalAvailableSpace  => AvailableBaseSpace + AvailableExtraSpace;
        public virtual int ExtraSpace => 0; // override if owner has bags, etc.
        public int TotalSpace => BaseSpace + ExtraSpace;
        public int FilledSpace => Items.Count;
        public int AvailableSpace => TotalSpace - FilledSpace;

        protected readonly Dictionary<uint, InventoryItem> Items = new Dictionary<uint, InventoryItem>();
        protected readonly List<InventoryTransaction> TransactionLog = new List<InventoryTransaction>();
        protected string LastTransactionHash = string.Empty;
    }
}
