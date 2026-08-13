using System;
using NpgsqlTypes;
using System.Collections.Generic;
using NpgsqlTypes;
using System.Linq;
using System.Text;
using System.IO;
using Nyx.Server.Game.ConquerStructures;
using Nyx.Server.Game;
using System.Collections.Concurrent;
using Npgsql;

namespace Nyx.Server.Database
{
    internal class ChiRetreatTable
    {
        public static void Save(Client.GameClient client)
        {
            MemoryStream stream = new MemoryStream();
            BinaryWriter writer = new BinaryWriter(stream);
            writer.Write((byte)client.Entity.RetreatChiPowers.Count);
            foreach (var chiPower in client.Entity.RetreatChiPowers)
                chiPower.Serialize(writer);
                
            string SQL = "UPDATE chiretreat SET chipowers=@ChiPowers WHERE uid= @UID";
            byte[] rawData = stream.ToArray();
            
            using (var conn = DataHolder.MySqlConnection)
            {
                conn.Open();
                using (var cmd = new NpgsqlCommand())
                {
                    cmd.Connection = conn;
                    cmd.CommandText = SQL;
                    cmd.Parameters.AddWithValue("@ChiPowers", rawData);
                    cmd.Parameters.Add("@UID", NpgsqlDbType.Integer).Value = (int)client.Entity.UID;
                    cmd.ExecuteNonQuery();
                }
            }
        }

        public static void Load(Client.GameClient client)
        {
            using (var cmd = new NyxSqlCommand(MySqlCommandType.SELECT))
            {
                cmd.Select("chiretreat").Where("uid", client.Entity.UID);
                using (MySqlReader rdr = new MySqlReader(cmd))
                {
                    if (rdr.Read())
                    {
                        byte[] data = rdr.ReadBlob("chipowers");
                        if (data.Length > 0)
                        {
                            using (var stream = new MemoryStream(data))
                            using (var reader = new BinaryReader(stream))
                            {
                                int count = reader.ReadByte();
                                for (int i = 0; i < count; i++)
                                {
                                    var power = new ChiRetreatStructure().Deserialize(reader);
                                    if (power.EndTime > DateTime.Now)
                                    {
                                        client.Entity.RetreatChiPowers.Add(power);
                                    }
                                }
                            }
                        }
                    }
                    else
                    {
                        using (var command = new NyxSqlCommand(MySqlCommandType.INSERT))
                        {
                            command.Insert("chiretreat").Insert("uid", client.Entity.UID);
                            command.Execute();
                        }
                    }
                }
            }
        }
    }
}
