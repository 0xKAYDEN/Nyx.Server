using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.Inventory.Core
{
    public class InventoryItem
    {
        public uint UID { get; set; }
        public uint ID { get; set; }
        public ushort Durability { get; set; }
        public ushort MaximDurability { get; set; } // For compatibility with ConquerItem
        public byte Plus { get; set; }
        public byte Bless { get; set; }
        public byte Enchant { get; set; }
        public ushort StackSize { get; set; } = 1;
        public ushort MaxStackSize { get; set; } = 1;
        public bool Bound { get; set; }
        public byte Color { get; set; }
        public byte SocketOne { get; set; }
        public byte SocketTwo { get; set; }
        public uint TimeLeftInMinutes { get; set; }
        public DateTime? TimeStamp { get; set; }
        public ulong Minutes { get; set; } // ConquerItem property
        public byte Stars { get; set; }
        public uint OwnerUID { get; set; }
        public string Owner { get; set; }
        public string Signature { get; set; }
        public ushort Position { get; set; }
        public bool InWardrobe { get; set; }
        public bool MobDropped { get; set; }
        public bool StatsLoaded { get; set; }
        public bool Suspicious { get; set; }
        public bool Unlocking { get; set; }
        public bool Inscribed { get; set; }
        public uint SocketProgress { get; set; }
        public uint PerfectionProgress { get; set; }
        public uint PlusProgress { get; set; }
        public byte Lock { get; set; }
        public DateTime SuspiciousStart { get; set; }
        public DateTime UnlockEnd { get; set; }
        public ulong suspiciousStart { get; set; }
        public ulong unlockEnd { get; set; }
        public uint RefineItem { get; set; }
        public DateTime RefineryTime { get; set; }
        public byte NextRed { get; set; }
        public byte NextBlue { get; set; }
        public byte NextGreen { get; set; }
        public ushort Vigor { get; set; }
        public short BattlePower { get; set; }

        // Integrity hash of this item's immutable/core state
        public string Hash { get; private set; }

        public void ComputeHash()
        {
            // Deterministic serialization of core properties
            var raw = $"{UID}|{ID}|{Plus}|{Bless}|{Enchant}|{Durability}|{MaximDurability}|{StackSize}|{MaxStackSize}|{Bound}|{Color}|{SocketOne}|{SocketTwo}|{TimeLeftInMinutes}";
            Hash = Sha256Hex(raw);
        }

        private static string Sha256Hex(string input)
        {
            using (var sha = SHA256.Create())
            {
                var bytes = sha.ComputeHash(Encoding.UTF8.GetBytes(input));
                return BitConverter.ToString(bytes).Replace("-", "");
            }
        }
    }
}
