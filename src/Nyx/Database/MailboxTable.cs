using System.IO;
using NpgsqlTypes;
using Nyx.Server.Network.GamePackets;
using NpgsqlTypes;
using Npgsql;

namespace Nyx.Server.Database
{
    public class MailboxTable
    {
        public static void Load(Client.GameClient client)
        {
            using (var cmd = new NyxSqlCommand(MySqlCommandType.SELECT))
            {
                cmd.Select("prizes").Where("UID", client.Entity.UID);
                using (MySqlReader rdr = new MySqlReader(cmd))
                {
                    if (rdr.Read())
                    {
                        byte[] data = rdr.ReadBlob("Prizes");
                        if (data.Length > 0)
                        {
                            using (var stream = new MemoryStream(data))
                            using (var reader = new BinaryReader(stream))
                            {
                                int count = reader.ReadByte();
                                for (uint x = 0; x < count; x++)
                                {
                                    Mailbox.PrizeInfo item = new Mailbox.PrizeInfo();
                                    item = item.ReadItem(reader);
                                    client.Prizes.Add(item.ID, item);
                                }
                            }
                        }
                    }
                    else
                    {
                        using (var command = new NyxSqlCommand(MySqlCommandType.INSERT))
                        {
                            command.Insert("prizes").Insert("UID", client.Entity.UID).Insert("Name", client.Entity.Name);
                            command.Execute();
                        }
                    }
                }
            }
        }
        
        public static void Save(Client.GameClient client)
        {
            MemoryStream stream = new MemoryStream();
            BinaryWriter writer = new BinaryWriter(stream);
            writer.Write((byte)client.Prizes.Count);
            foreach (var prize in client.Prizes.Values)
                prize.WriteItem(writer);
                
            string SQL = "UPDATE prizes SET \"Prizes\"=@Prizes WHERE \"UID\"= @UID";
            byte[] rawData = stream.ToArray();
            
            using (var conn = DataHolder.MySqlConnection)
            {
                conn.Open();
                using (var cmd = new NpgsqlCommand())
                {
                    cmd.Connection = conn;
                    cmd.CommandText = SQL;
                    cmd.Parameters.AddWithValue("@Prizes", rawData);
                    cmd.Parameters.Add("@UID", NpgsqlDbType.Integer).Value = (int)client.Entity.UID;
                    cmd.ExecuteNonQuery();
                }
            }
        }
    }
}
