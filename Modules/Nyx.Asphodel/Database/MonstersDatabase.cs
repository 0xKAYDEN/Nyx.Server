using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Text.Json;
using Serilog;
namespace Nyx.Asphodel.Database
{
    public class MonstersDatabase
    {

        private static ILogger logger = Log.ForContext<MonstersDatabase>();
        public static List<MonsterInformation> Monsters = new List<MonsterInformation>();
        public async Task LoadMonsters()
        {
            string filePath = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Database", "Monsters.json");
            string json = await File.ReadAllTextAsync(filePath);
            Monsters = JsonSerializer.Deserialize<List<MonsterInformation>>(json);
            if (Monsters == null || Monsters.Count == 0)
            {
                logger.Error("No monsters found in the database.");
                return;
            }
            logger.Information("Monsters loaded successfully.");
            await Task.CompletedTask;
        }

        public class MonsterInformation
        {
            public uint Identity { get; set; }
            public string Name { get; set; }
            public MonsterType Type { get; set; }
            public string Description { get; set; }
            public ushort MapID { get; set; } //1000 //ushort = 2 bytes , int = 4 bytes 
            public string MapName { get; set; } // "El Nath"
            public ushort XCoordinate { get; set; } // (120, 45)
            public ushort YCoordinate { get; set; } // (120, 45)
        }
        public enum MonsterType : byte
        {
            Normal = 0,
            Boss = 1,
        }
    }
}
