using Nyx.Server.Network.GamePackets;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.Server.Network
{
    public class DataCollection
    {
        public List<PlayerMovement> Movements { get; set; } = new List<PlayerMovement>();

        public List<PlayerAttacks> Attacks { get; set; } = new List<PlayerAttacks>();

        public async Task AddMovementAsync(ushort identity, ushort OldX, ushort x, ushort OldY, ushort y, ushort MapID, List<MovementFlags> flags, MovementType movementType, string? Note = "none")
        {
            var movement = new PlayerMovement
            {
                Identity = identity,
                OldX = OldX,
                X = x,
                OldY = OldY,
                Y = y,
                MapID = MapID,
                Flags = flags,
                MovementType = movementType,
                timestamp = DateTime.UtcNow
            };
            
            // Direct add - List.Add is fast enough, no need for Task.Run
            Movements.Add(movement);

            var JasonData = System.Text.Json.JsonSerializer.Serialize(movement);
            string logDir = System.IO.Path.Combine(AppContext.BaseDirectory, "Logs", "Movements");
            if(!Directory.Exists(logDir))
            {
                System.IO.Directory.CreateDirectory(logDir);
            }
            string logFile = System.IO.Path.Combine(logDir, $"{movement.Identity} movements_{DateTime.UtcNow:yyyyMMdd_HH}.jsonl");
            await System.IO.File.AppendAllTextAsync(logFile, JasonData + Environment.NewLine);
        }

        public async Task AddAttackAsync(ushort identity, ushort x, ushort y, ushort MapID, ushort? spellID, ushort targetID, ushort targetX, ushort targetY, AttackType type, List<MovementFlags> flags)
        {
            var attack = new PlayerAttacks
            {
                Identity = identity,
                X = x,
                Y = y,
                MapID = MapID,
                SpellID = spellID,
                TargetID = targetID,
                TargetX = targetX,
                TargetY = targetY,
                Type = type,
                Flags = flags,
                timestamp = DateTime.UtcNow
            };
            
            // Direct add - List.Add is fast enough, no need for Task.Run
            Attacks.Add(attack);
            
            var JasonData = System.Text.Json.JsonSerializer.Serialize(attack);
            string logDir = System.IO.Path.Combine(AppContext.BaseDirectory, "Logs", "Attacks");
            if (!Directory.Exists(logDir))
            {
                System.IO.Directory.CreateDirectory(logDir);
            }
            string logFile = System.IO.Path.Combine(logDir, $"{attack.Identity} attacks_{DateTime.UtcNow:yyyyMMdd_HH}.jsonl");
            await System.IO.File.AppendAllTextAsync(logFile, JasonData + Environment.NewLine);
        }
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
        Teleport = 4,
        Fly = 5,
        Trasnform = 6,
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
}
