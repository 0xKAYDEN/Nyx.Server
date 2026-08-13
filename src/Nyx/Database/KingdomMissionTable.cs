using System;
using Nyx.Server.Network.GamePackets;
using Npgsql;

namespace Nyx.Server.Database
{
    public class KingdomMissionTable
    {
        public static void Load(Client.GameClient client)
        {
            using (var cmd = new NyxSqlCommand(MySqlCommandType.SELECT).Select("kingdommission").Where("UID", client.Entity.UID))
            using (var reader = new MySqlReader(cmd))
            {
                while (reader.Read())
                {
                    client.Entity.KingdomDeed = reader.ReadUInt32("KingdomDeeds");
                    client.Entity.StrikePoints = reader.ReadUInt32("StrikePoints");
                    client.Entity.TodayStrikePoints = reader.ReadUInt32("TodayStrikePoints");
                    return;
                }
                Insert(client);
            }
        }
        
        public static void Insert(Client.GameClient client)
        {
            using (var cmd = new NyxSqlCommand(MySqlCommandType.INSERT).Insert("kingdommission")
              .Insert("UID", client.Entity.UID))
                cmd.Execute();
        }
        
        public static void Save(Client.GameClient client, NpgsqlConnection conn)
        {
            using (var cmd = new NyxSqlCommand(MySqlCommandType.UPDATE).Update("kingdommission"))
                cmd.Set("KingdomDeeds", client.Entity.KingdomDeed)
                    .Set("StrikePoints", client.Entity.StrikePoints).Set("TodayStrikePoints", client.Entity.TodayStrikePoints)
                .Where("UID", client.Entity.UID)
                .Execute(conn);
        }
    }
}
