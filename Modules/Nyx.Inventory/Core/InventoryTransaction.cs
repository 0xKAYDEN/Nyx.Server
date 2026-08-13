using Nyx.Inventory.Enums;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.Inventory.Core
{
    public class InventoryTransaction
    {
        public Guid Id { get; set; } = Guid.NewGuid();
        public DateTime Timestamp { get; set; } = DateTime.UtcNow;
        public Events Operation { get; set; }
        public uint ItemUID { get; set; }
        public string ItemHashBefore { get; set; }
        public string ItemHashAfter { get; set; }
        public uint OwnerUID { get; set; }
        public string Details { get; set; } // JSON for extensibility
        public string PreviousHash { get; set; }
        public string Hash { get; set; }

        public void ComputeHash(string previousHash)
        {
            PreviousHash = previousHash ?? string.Empty;
            var payload = $"{Id:N}|{Timestamp:O}|{Operation}|{ItemUID}|{ItemHashBefore}|{ItemHashAfter}|{OwnerUID}|{Details}|{PreviousHash}";
            Hash = Sha256Hex(payload);
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
