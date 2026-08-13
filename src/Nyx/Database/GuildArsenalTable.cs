using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using Nyx.Server.Game.ConquerStructures.Society;
using Npgsql;
using NpgsqlTypes;

namespace Nyx.Server.Database
{
    public class GuildArsenalTable
    {
        public static void Load(Guild guild)
        {
            try
            {
                using (var cmd = new NyxSqlCommand(MySqlCommandType.SELECT).Select("guildarsenal").Where("id", guild.ID))
                using (var rdr = new MySqlReader(cmd))
                {
                    if (rdr.Read())
                    {
                        var array = rdr.ReadBlob("data");
                        if (array == null || array.Length == 0) 
                        {
                            Insert(guild.ID);
                            return;
                        }
                        
                        try
                        {
                            MemoryStream stream = new MemoryStream(array);
                            BinaryReader reader = new BinaryReader(stream);
                            for (int i = 0; i < 8; i++)
                                guild.Arsenals[i].Load(reader);
                            guild.ArsenalBPChanged = true;
                            guild.GetMaxSharedBattlepower();
                        }
                        catch (Exception ex)
                        {
                            Serilog.Log.Warning(ex, "Corrupted arsenal data for guild {GuildID}, resetting", guild.ID);
                            Insert(guild.ID);
                        }
                    }
                    else
                    {
                        Insert(guild.ID);
                    }
                }
            }
            catch (Exception ex)
            {
                Serilog.Log.Warning(ex, "Error loading arsenal for guild {GuildID}", guild.ID);
            }
        }
        
        public static void Save(Guild guild)
        {
            try
            {
                MemoryStream stream = new MemoryStream();
                BinaryWriter writer = new BinaryWriter(stream);
                for (int i = 0; i < 8; i++)
                    guild.Arsenals[i].Save(writer);
                    
                string SQL = "UPDATE \"guildarsenal\" SET \"data\" = @Data, \"datalength\" = @DataLength WHERE \"id\" = @ID";
                byte[] rawData = stream.ToArray();
                
                using (var conn = Database.DataHolder.MySqlConnection)
                {
                    conn.Open();
                    using (var cmd = new NpgsqlCommand())
                    {
                        cmd.Connection = conn;
                        cmd.CommandText = SQL;
                        cmd.Parameters.Add("@Data", NpgsqlDbType.Bytea).Value = rawData;
                        cmd.Parameters.Add("@DataLength", NpgsqlDbType.Integer).Value = rawData.Length;
                        cmd.Parameters.Add("@ID", NpgsqlDbType.Integer).Value = (int)guild.ID;
                        cmd.ExecuteNonQuery();
                    }
                }
            }
            catch (Exception ex)
            {
                Serilog.Log.Warning(ex, "Error saving arsenal for guild {GuildID}", guild.ID);
            }
        }
        
        public static void SaveAll()
        {
            foreach (var guild in Kernel.Guilds.Values)
                Save(guild);
        }
        
        public static void Insert(uint id)
        {
            try
            {
                using (var cmd = new NyxSqlCommand(MySqlCommandType.INSERT))
                {
                    cmd.Insert("guildarsenal").Insert("id", id);
                    cmd.Execute();
                }
            }
            catch (Exception ex)
            {
                Serilog.Log.Warning(ex, "Error inserting arsenal for guild {GuildID}", id);
            }
        }
    }
}
