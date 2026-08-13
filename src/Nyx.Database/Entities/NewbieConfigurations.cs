using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Metadata;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.Database.Entities
{
    public class NewbieConfigurations
    {
        public ushort MapID { get; set; }
        public ushort X { get; set; }
        public ushort Y { get; set; }
        public byte VIPLevel { get; set; }
        public byte Level { get; set; }
        public uint ConquerPoints { get; set; }
        public uint BoundConquerPoints { get; set; }
        public uint Money { get; set; }
        public HashSet<ItemInfo> Items { get; set; } = new HashSet<ItemInfo>();
        public class ItemInfo
        {
            public uint ItemID { get; set; }
            public byte Plus { get; set; }
            public ushort Amount { get; set; }
            public byte[] Sockets { get; set; }
            public byte Blessing { get; set; }
            public byte Enchant { get; set; }
        }
    }
}
