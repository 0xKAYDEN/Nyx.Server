using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;

namespace Nyx.Analysis.Data
{
    public class ProcessData
    {

        public List<PlayerMovement> movements { get; set; } = new List<PlayerMovement>();
        public List<PlayerAttacks> attacks { get; set; } = new List<PlayerAttacks>();

        public async Task LoadDataAsync(string rootDirectory)
        {
            await Task.Run(async () =>
            {
                Console.WriteLine("Loading data for analysis...");

                movements.Clear();
                attacks.Clear();

                var jsonOptions = new JsonSerializerOptions
                {
                    PropertyNameCaseInsensitive = true
                };

                // =========================
                // Load Movements
                // =========================
                string movementDir = Path.Combine(rootDirectory, "Movements");
                if (Directory.Exists(movementDir))
                {
                    foreach (var file in Directory.EnumerateFiles(movementDir, "*.jsonl", SearchOption.AllDirectories))
                    {
                        using var stream = new FileStream(file, FileMode.Open, FileAccess.Read, FileShare.ReadWrite);
                        using var reader = new StreamReader(stream);

                        string? line;
                        while ((line = await reader.ReadLineAsync()) != null)
                        {
                            if (string.IsNullOrWhiteSpace(line))
                                continue;

                            try
                            {
                                var movement = JsonSerializer.Deserialize<PlayerMovement>(line, jsonOptions);
                                if (movement != null)
                                    movements.Add(movement);
                            }
                            catch
                            {
                                // Bad line – ignore or log
                            }
                        }
                    }
                }

                // =========================
                // Load Attacks
                // =========================
                string attackDir = Path.Combine(rootDirectory, "Attacks");
                if (Directory.Exists(attackDir))
                {
                    foreach (var file in Directory.EnumerateFiles(attackDir, "*.jsonl", SearchOption.AllDirectories))
                    {
                        using var stream = new FileStream(file, FileMode.Open, FileAccess.Read, FileShare.ReadWrite);
                        using var reader = new StreamReader(stream);

                        string? line;
                        while ((line = await reader.ReadLineAsync()) != null)
                        {
                            if (string.IsNullOrWhiteSpace(line))
                                continue;

                            try
                            {
                                var attack = JsonSerializer.Deserialize<PlayerAttacks>(line, jsonOptions);
                                if (attack != null)
                                    attacks.Add(attack);
                            }
                            catch
                            {
                                // Bad line – ignore or log
                            }
                        }
                    }
                }

                Console.WriteLine($"Loaded {movements.Count} movements, {attacks.Count} attacks.");
            });
        }

        public async Task AnalyzeMovementAsync()
        {
            await Task.Run(() =>
            {
                var grouped = movements
                    .OrderBy(m => m.timestamp)
                    .GroupBy(m => m.Identity);

                foreach (var player in grouped)
                {
                    PlayerMovement prev = null;
                    int speedViolations = 0;

                    foreach (var cur in player)
                    {
                        if (prev == null)
                        {
                            prev = cur;
                            continue;
                        }

                        var deltaTime = (cur.timestamp - prev.timestamp).TotalSeconds;
                        if (deltaTime <= 0)
                        {
                            Console.WriteLine($"[CHEAT] {player.Key} zero-time movement");
                            continue;
                        }

                        double distance = Math.Sqrt(
                            Math.Pow(cur.X - prev.X, 2) +
                            Math.Pow(cur.Y - prev.Y, 2)
                        );

                        // TELEPORT
                        if (distance >= 5 && deltaTime < 0.15 )
                        {
                            Console.WriteLine($"[CHEAT] {player.Key} TELEPORT detected");
                            continue;
                        }

                        double speed = distance / deltaTime;
                        double allowed = GetAllowedSpeed(cur);

                        if (speed > allowed * 1.3)
                        {
                            speedViolations++;
                            if (speedViolations >= 5)
                            {
                                Console.WriteLine($"[CHEAT] {player.Key} SPEED HACK");
                            }
                        }
                        else
                        {
                            speedViolations = Math.Max(0, speedViolations - 1);
                        }

                        prev = cur;
                    }
                }
            });
        }
        public async Task AnalyzeAttacksAsync()
        {
            await Task.Run(() =>
            {
                var grouped = attacks
                    .OrderBy(a => a.timestamp)
                    .GroupBy(a => a.Identity);

                foreach (var player in grouped)
                {
                    PlayerAttacks prev = null;
                    int rapidAttacks = 0;

                    foreach (var cur in player)
                    {
                        if (prev != null)
                        {
                            var dt = (cur.timestamp - prev.timestamp).TotalSeconds;

                            if (dt < 0.2)
                            {
                                rapidAttacks++;
                                if (rapidAttacks >= 5)
                                {
                                    Console.WriteLine($"[CHEAT] {player.Key} ATTACK SPEED HACK");
                                }
                            }
                            else
                            {
                                rapidAttacks = Math.Max(0, rapidAttacks - 1);
                            }
                        }

                        prev = cur;
                    }
                }
            });
        }

        public class PlayerMovement
        {
            public ushort Identity { get; set; }
            public ushort OldX { get; set; }
            public ushort X { get; set; }
            public ushort OldY { get; set; }
            public ushort Y { get; set; }
            public ushort MapID { get; set; }
            public MovementType MovementType { get; set; }
            public List<MovementFlags> Flags { get; set; }
            public DateTime timestamp { get; set; }
        }
        public class PlayerAttacks
        {
            public ushort Identity { get; set; }
            public ushort X { get; set; }
            public ushort Y { get; set; }
            public ushort MapID { get; set; }
            public ushort? SpellID { get; set; }
            public ushort TargetID { get; set; }
            public ushort TargetX { get; set; }
            public ushort TargetY { get; set; }
            public AttackType Type { get; set; }
            public List<MovementFlags> Flags { get; set; }
            public DateTime timestamp { get; set; }
        }

        public enum AttackType : byte
        {
            Melee = 0,
            Ranged = 1,
            Magic = 2
        }

        public enum MovementType : byte
        {
            Walk = 0,
            Run = 1,
            Jump = 2,
            Sit = 3,
            Slide = 9
        }

        public enum MovementFlags : byte
        {
            NoFlags = 0,
            AutoHunt = 1,
            XpSkill = 2,
            Transformed = 3,
            Mount = 4,
            Flying = 5
        }

        static double Distance(PlayerMovement a, PlayerMovement b)
        {
            int dx = a.X - b.X;
            int dy = a.Y - b.Y;
            return Math.Sqrt(dx * dx + dy * dy);
        }

        double GetAllowedSpeed(PlayerMovement m)
        {
            double baseSpeed = m.MovementType switch
            {
                MovementType.Walk => 4,
                MovementType.Run => 6,
                MovementType.Jump => 7,
                MovementType.Slide => 8,
                _ => 4
            };

            if (m.Flags.Contains(MovementFlags.Mount))
                baseSpeed += 2;

            if (m.Flags.Contains(MovementFlags.XpSkill))
                baseSpeed += 3;

            if (m.Flags.Contains(MovementFlags.Flying))
                baseSpeed += 4;

            return baseSpeed;
        }
    }
}
