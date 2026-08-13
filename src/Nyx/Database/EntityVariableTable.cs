using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Npgsql;
using NpgsqlTypes;

namespace Nyx.Server.Database
{
    public class EntityVariableTable
    {
        public Game.JiangHu MyJiang;
        
        public static void Load(Client.GameClient client)
        {
            Load(client.Entity.UID, out client.Variables);
        }
        
        public static void Load(uint uid, out Game.VariableVault vars)
        {

            using (var cmd = new NyxSqlCommand(MySqlCommandType.SELECT).Select("variablevault").Where("entityid", uid))
            using (var reader = cmd.CreateReader())
            {
                vars = new Game.VariableVault();
                if (reader.Read())
                {
                    vars.Deserialize(reader.ReadBlob("data"));
                }
                else
                {
                    string SQL = "INSERT INTO variablevault (entityid, data) VALUES (@EntityID, @Data)";
                    byte[] rawData = vars.Serialize();
                    using (var conn = DataHolder.MySqlConnection)
                    {
                        conn.Open();
                        using (var cmd2 = new NpgsqlCommand(SQL, conn))
                        {
                            cmd2.Parameters.Add("@EntityID", NpgsqlDbType.Integer).Value = (int)uid;
                            cmd2.Parameters.Add("@Data", NpgsqlDbType.Bytea).Value = rawData;
                            cmd2.ExecuteNonQuery();
                        }
                    }
                }
            }
        }
      
        public static void Save(Client.GameClient client)
        {
            Save(client.Entity.UID, client.Variables);
        }
        
        public static void Save(uint uid, Game.VariableVault vars)
        {
            try
            {
                if (vars == null) return;
                if (!vars.Changed) return;
                vars.Changed = false;

                string SQL = "UPDATE variablevault SET data=@Data WHERE entityid=@EntityID";
                byte[] rawData = vars.Serialize();

                using (var conn = DataHolder.MySqlConnection)
                {
                    conn.Open();
                    using (var cmd = new NpgsqlCommand(SQL, conn))
                    {
                        cmd.Parameters.Add("@EntityID", NpgsqlDbType.Integer).Value = (int)uid;
                        cmd.Parameters.Add("@Data", NpgsqlDbType.Bytea).Value = rawData;
                        cmd.ExecuteNonQuery();
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
        }

        internal static void Save(Client.GameClient GameClient, NpgsqlConnection conn)
        {
            try
            {
                var vars = GameClient.Variables;
                if (vars == null) return;
                if (!vars.Changed) return;
                vars.Changed = false;

                string SQL = "UPDATE variablevault SET data=@Data WHERE entityid=@EntityID";
                byte[] rawData = vars.Serialize();

                using (var cmd = new NpgsqlCommand(SQL, conn))
                {
                    cmd.Parameters.Add("@EntityID", NpgsqlDbType.Integer).Value = (int)GameClient.Entity.UID;
                    cmd.Parameters.Add("@Data", NpgsqlDbType.Bytea).Value = rawData;
                    cmd.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
            
        }
    }
}
