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
        public static ulong LevelExperience(byte level)
        {
            // TODO: Load from Level.ini
            return 1000 * (ulong)level * (ulong)level;
        }
        
        /// <summary>
        /// Gets proficiency level experience.
        /// </summary>
        public static uint ProficiencyLevelExperience(byte level)
        {
            // TODO: Load from ProficiencyLevel.ini
            return 500 * (uint)level * (uint)level;
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
            // TODO: Load from configuration
            return plus * 100;
        }
        
        /// <summary>
        /// Finds a revive spot.
        /// </summary>
        public static void FindReviveSpot(Client.GameClient client)
        {
            // TODO: Implement revive spot logic
            client.Entity.MapID = 1002;
            client.Entity.X = 300;
            client.Entity.Y = 278;
        }
        
        /// <summary>
        /// Finds a revive spot by map ID.
        /// </summary>
        public static ushort[] FindReviveSpot(ushort mapId)
        {
            // TODO: Implement revive spot logic
            return new ushort[] { 1002, 300, 278 };
        }
        
        /// <summary>
        /// Gets purification stabilization points.
        /// </summary>
        public static uint PurifyStabilizationPoints(uint plus)
        {
            // TODO: Load from configuration
            return plus * 10;
        }
        
        /// <summary>
        /// Gets stone plus points.
        /// </summary>
        public static uint StonePlusPoints(uint plus)
        {
            // TODO: Load from configuration
            return plus * 50;
        }
        
        /// <summary>
        /// Gets talisman plus points.
        /// </summary>
        public static uint TalismanPlusPoints(uint plus)
        {
            // TODO: Load from configuration
            return plus * 30;
        }
        
        /// <summary>
        /// Gets steed speed.
        /// </summary>
        public static uint SteedSpeed(uint plus)
        {
            // TODO: Load from configuration
            return plus * 5;
        }
        
        /// <summary>
        /// Disguises dictionary.
        /// </summary>
        public static System.Collections.Generic.Dictionary<int, int> Disguises = new System.Collections.Generic.Dictionary<int, int>();
    }
}
