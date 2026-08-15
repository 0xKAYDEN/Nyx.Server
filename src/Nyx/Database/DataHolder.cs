using Nyx.Server.Utilities;
using Nyx.Server.Database.PostgreSQL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

// Backward compatibility aliases
using MySqlConnection = Npgsql.NpgsqlConnection;
using MySqlCommand = Npgsql.NpgsqlCommand;
using MySqlTransaction = Npgsql.NpgsqlTransaction;

namespace Nyx.Server.Database
{
    /// <summary>
    /// Main database holder - now uses PostgreSQL instead of MySQL.
    /// Provides connection factory and legacy compatibility.
    /// </summary>
    public static class DataHolder
    {
        private static PostgresConnectionFactory? _factory;
        
        /// <summary>
        /// Gets the PostgreSQL connection factory.
        /// </summary>
        public static PostgresConnectionFactory Factory => _factory ?? throw new InvalidOperationException("Database not configured. Call Configure() first.");
        
        /// <summary>
        /// Gets a new PostgreSQL connection.
        /// </summary>
        public static Npgsql.NpgsqlConnection GetConnection()
        {
            return Factory.GetConnection();
        }
        
        /// <summary>
        /// Legacy compatibility - returns a new PostgreSQL connection.
        /// </summary>
        public static Npgsql.NpgsqlConnection MySqlConnection => GetConnection();
        
        /// <summary>
        /// Configure the PostgreSQL connection from configuration.
        /// </summary>
        public static void Configure(DatabaseConfiguration cfg)
        {
            var connectionString = $"Host={cfg.Hostname};Port={cfg.Port};Database={cfg.Schema};Username={cfg.Username};Password={cfg.Password};Minimum Pool Size={cfg.ConnectionPoolMinSize};Maximum Pool Size={cfg.ConnectionPoolMaxSize};";
            _factory = new PostgresConnectionFactory(connectionString);
        }
        
        /// <summary>
        /// Configure with default local connection.
        /// </summary>
        public static void ConfigureDefault()
        {
            _factory = new PostgresConnectionFactory();
        }

        private static SafeDictionary<byte, string> ArcherStats = new SafeDictionary<byte, string>();
        private static SafeDictionary<byte, string> NinjaStats = new SafeDictionary<byte, string>();
        private static SafeDictionary<byte, string> WarriorStats = new SafeDictionary<byte, string>();
        private static SafeDictionary<byte, string> TrojanStats = new SafeDictionary<byte, string>();
        private static SafeDictionary<byte, string> TaoistStats = new SafeDictionary<byte, string>();
        private static SafeDictionary<byte, string> MonkStats = new SafeDictionary<byte, string>();
        private static SafeDictionary<byte, string> PirateStats = new SafeDictionary<byte, string>();
        private static SafeDictionary<byte, string> BruceLee = new SafeDictionary<byte, string>();

        public static void ReadStats()
        {
            string Path = Constants.DataHolderPath + "Stats.ini";
            if (!System.IO.File.Exists(Path))
            {
                 Console.WriteLine("Warning: Stats.ini not found at " + Path);
                 return;
            }
            IniFile IniFile = new IniFile(Path);

            for (byte lvl = 1; lvl < 122; lvl++)
            {
                try
                {
                    string job = "Archer[" + lvl + "]";
                    string Data = IniFile.ReadString("Stats", job);
                    if (!string.IsNullOrEmpty(Data)) ArcherStats[lvl] = Data;

                    job = "Ninja[" + lvl + "]";
                    Data = IniFile.ReadString("Stats", job);
                    if (!string.IsNullOrEmpty(Data)) NinjaStats[lvl] = Data;

                    job = "Warrior[" + lvl + "]";
                    Data = IniFile.ReadString("Stats", job);
                    if (!string.IsNullOrEmpty(Data)) WarriorStats[lvl] = Data;

                    job = "Trojan[" + lvl + "]";
                    Data = IniFile.ReadString("Stats", job);
                    if (!string.IsNullOrEmpty(Data)) TrojanStats[lvl] = Data;

                    job = "Taoist[" + lvl + "]";
                    Data = IniFile.ReadString("Stats", job);
                    if (!string.IsNullOrEmpty(Data)) TaoistStats[lvl] = Data;

                    job = "Monk[" + lvl + "]";
                    Data = IniFile.ReadString("Stats", job);
                    if (!string.IsNullOrEmpty(Data)) MonkStats[lvl] = Data;

                    job = "Pirate[" + lvl + "]";
                    Data = IniFile.ReadString("Stats", job);
                    if (!string.IsNullOrEmpty(Data)) PirateStats[lvl] = Data;

                    job = "BruceLee[" + lvl + "]";
                    Data = IniFile.ReadString("Stats", job);
                    if (!string.IsNullOrEmpty(Data)) BruceLee[lvl] = Data;
                }
                catch (Exception ex)
                {
                    Console.WriteLine($"Error reading stats for level {lvl}: {ex.Message}");
                }
            }
        }

        public static string GetStatString(byte Class, byte Level)
        {
            SafeDictionary<byte, string> Stats = Class switch
            {
                >= 40 and <= 45 => ArcherStats,
                >= 50 and <= 55 => NinjaStats,
                >= 20 and <= 25 => WarriorStats,
                >= 10 and <= 15 => TrojanStats,
                >= 100 and <= 145 => TaoistStats,
                >= 60 and <= 65 => MonkStats,
                >= 70 and <= 75 => PirateStats,
                >= 80 and <= 85 => BruceLee,
                _ => TrojanStats
            };

            return Stats.ContainsKey(Level) ? Stats[Level] : string.Empty;
        }
        
        /// <summary>
        /// Gets level experience from Level.ini file.
        /// </summary>
        public static ulong LevelExperience(byte level) => Nyx.Server.Game.LevelingSystem.ExperienceToNextLevel(level);
        
        /// <summary>
        /// Gets proficiency level experience.
        /// </summary>
        public static uint ProficiencyLevelExperience(byte level)
        {
            return proficiencyLevelExperience[Math.Min(level, (byte)20)];
        }
        
        /// <summary>
        /// Gets stats for a class and level.
        /// </summary>
        public static void GetStats(byte Class, byte Level, Client.GameClient client)
        {
            string stats = GetStatString(Class, Level);
            if (string.IsNullOrEmpty(stats)) return;
            
            var parts = stats.Split(',');
            if (parts.Length == 4)
            {
                client.Entity.Strength = ushort.Parse(parts[0]);
                client.Entity.Agility = ushort.Parse(parts[1]);
                client.Entity.Vitality = ushort.Parse(parts[2]);
                client.Entity.Spirit = ushort.Parse(parts[3]);
            }
        }
        
        /// <summary>
        /// Composes plus points for items.
        /// </summary>
        public static uint ComposePlusPoints(uint plus)
        {
            return ComposePoints[Math.Min(plus, (byte)12)];
        }
        
        /// <summary>
        /// Finds a revive spot by map ID.
        /// </summary>
        public static ushort[] FindReviveSpot(ushort mapId)
        {
            IniFile IniFile = new IniFile(Constants.RevivePoints);
            string value = IniFile.ReadString(mapId.ToString(), "Value");
            if (value == String.Empty)
                return new ushort[] { 1002, 302, 280 };

            if (value.Contains("L"))
                value = IniFile.ReadString(value.Remove(0, 7), "Value");

            string[] split = value.Split(' ');
            List<ushort> values = new List<ushort>();
            try
            {
                values.Add(ushort.Parse(split[0]));
                values.Add(ushort.Parse(split[1]));
                values.Add(ushort.Parse(split[2]));
            }
            catch
            {

                return new ushort[] { 1002, 300, 278 };
            }
            return values.ToArray();
        }
        
        /// <summary>
        /// Gets purification stabilization points.
        /// </summary>
        public static uint PurifyStabilizationPoints(uint plus)
        {
            return purifyStabilizationPoints[Math.Min(plus - 1, (byte)5)];
        }

        /// <summary>
        /// Gets stone plus points.
        /// </summary>
        public static uint StonePlusPoints(byte plus)
        {
            return StonePoints[Math.Min((int)plus, 8)];
        }
        
        /// <summary>
        /// Gets talisman plus points.
        /// </summary>
        public static uint TalismanPlusPoints(uint plus)
        {
            return TalismanExtra[Math.Min(plus, (byte)9)];
        }

        /// <summary>
        /// Gets steed speed.
        /// </summary>
        public static uint SteedSpeed(uint plus)
        {
            return _SteedSpeed[Math.Min(plus, (byte)12)];
        }

        private static ushort[] purifyStabilizationPoints = new ushort[6] { 10, 30, 60, 100, 150, 200 };

        private static ushort[] refineryStabilizationPoints = new ushort[5] { 10, 30, 70, 150, 270 };

        private static ushort[] StonePoints = new ushort[9] { 1, 10, 40, 120, 360, 1080, 3240, 9720, 29160 };

        private static ushort[] ComposePoints = new ushort[13] { 20, 20, 80, 240, 720, 2160, 6480, 19440, 58320, 2700, 5500, 9000, 0 };

        private static byte[] _SteedSpeed = new byte[] { 0, 5, 10, 15, 20, 30, 40, 50, 65, 85, 90, 95, 100 };

        private static ushort[] TalismanExtra = new ushort[10] { 0, 6, 30, 70, 240, 740, 2240, 6670, 20000, 60000 };

        /// <summary>
        /// Disguises dictionary.
        /// </summary>
        /// 
        private static uint[] proficiencyLevelExperience = new uint[21]
       {
            0, 1200, 68000, 250000, 640000, 1600000, 4000000, 10000000, 22000000, 40000000, 90000000, 95000000, 142500000,
            213750000, 320625000, 480937500, 721406250, 1082109375, 1623164063, 2100000000, 0
       };

        public static ushort[] Disguises = new ushort[] { 111, 224, 117, 152, 113, 833, 116, 245, 223, 112, 222, 114, 221, 115, 220 };

        //public static System.Collections.Generic.Dictionary<int, int> Disguises = new System.Collections.Generic.Dictionary<int, int>();

    }
}
