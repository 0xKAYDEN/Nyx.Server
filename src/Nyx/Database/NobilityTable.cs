using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Nyx.Server.Game.ConquerStructures;

namespace Nyx.Server.Database
{
    public class NobilityTable
    {
        public static void Load()
        {
            using(var cmd = new NyxSqlCommand(MySqlCommandType.SELECT).Select("nobility"))
            using (var reader = cmd.CreateReader())
            {
                while (reader.Read())
                {
                    NobilityInformation nobilityinfo = new NobilityInformation();
                    nobilityinfo.EntityUID = reader.ReadUInt32("EntityUID");
                    nobilityinfo.Name = reader.ReadString("EntityName");
                    nobilityinfo.Donation = reader.ReadUInt64("Donation");
                    nobilityinfo.Gender = reader.ReadByte("Gender");
                    nobilityinfo.Mesh = reader.ReadUInt32("Mesh");
                    Game.ConquerStructures.Nobility.Board.Add(nobilityinfo.EntityUID, nobilityinfo);
                }
                Game.ConquerStructures.Nobility.Sort(0);
            }
            
        }

        public static void InsertNobilityInformation(NobilityInformation information)
        {
            using (var cmd = new NyxSqlCommand(MySqlCommandType.INSERT))
                cmd.Insert("nobility").Insert("EntityName", information.Name)
                    .Insert("EntityUID", information.EntityUID).Insert("Donation", information.Donation)
                    .Insert("Gender", information.Gender).Insert("Mesh", information.Mesh)
                    .Execute();
        }
        public static void UpdateNobilityInformation(Game.ConquerStructures.NobilityInformation information)
        {
            using (var cmd = new NyxSqlCommand(MySqlCommandType.UPDATE).Update("nobility"))
                cmd.Set("Donation", information.Donation).Where("EntityUID", information.EntityUID)
                    .Execute();
        }
    }
}
