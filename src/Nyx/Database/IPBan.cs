using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Nyx.Server.Database
{
    public class IPBan
    {
        public static Dictionary<int, string> BannedIPs;
        public IPBan()
        {
            BannedIPs = new Dictionary<int, string>();
        }

        public Guid Guid { get; set; }
        public string UserName { get; set; }
        public string IP { get; set; }
        public string Reason { get; set; }
        public long Time { get; set; }
        public DateTimeOffset TimeStamp { get; set; }

        public static void Load()
        {
            BannedIPs = new Dictionary<int, string>();
            using (var cmd = new NyxSqlCommand(MySqlCommandType.SELECT).Select("bannedips"))
            using (var reader = cmd.CreateReader())
            {
                while (reader.Read())
                {
                    int asInt = reader.ReadInt32("ip_int");
                    BannedIPs.Add(asInt, reader.ReadString("ip"));
                }
            }
        }

        public static bool IsBanned(string ip)
        {
            if (BannedIPs == null)
            {
                // If not loaded yet, load now to prevent null reference
                Load();
            }
            return BannedIPs.ContainsKey(ip.GetHashCode());
        }

        public static void Unban(string ip)
        {
            BannedIPs.Remove(ip.GetHashCode());
            using (var cmd = new NyxSqlCommand(MySqlCommandType.DELETE))
                cmd.Delete("bannedips", "ip_int", ip.GetHashCode()).Execute();
        }

        public static void Ban(string ip)
        {
            BannedIPs.Add(ip.GetHashCode(), ip);
            using (var cmd = new NyxSqlCommand(MySqlCommandType.INSERT))
                cmd.Insert("bannedips").Insert("ip_int", ip.GetHashCode())
                    .Insert("ip", ip).Execute();
        }
    }

    public class BannedIPRepository()
    {
        public async Task LoadAsync()
        {

        }
    }
}
