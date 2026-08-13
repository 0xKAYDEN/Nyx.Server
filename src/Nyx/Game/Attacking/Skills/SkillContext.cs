using Nyx.Server.Client;
using Nyx.Server.Database;
using Nyx.Server.Interfaces;
using Nyx.Server.Network.GamePackets;
using System.Collections.Generic;

namespace Nyx.Server.Game.Attacking.Skills
{
    /// <summary>
    /// Contains all context information needed for skill execution
    /// </summary>
    public class SkillContext
    {
        /// <summary>
        /// The player casting the skill
        /// </summary>
        public GameClient Caster { get; set; }

        /// <summary>
        /// The spell information from database
        /// </summary>
        public SpellInformation SpellInfo { get; set; }

        /// <summary>
        /// The player's skill level/experience data
        /// </summary>
        public ISkill PlayerSkill { get; set; }

        /// <summary>
        /// The attack packet that triggered this skill
        /// </summary>
        public Attack AttackPacket { get; set; }

        /// <summary>
        /// Target position (X coordinate)
        /// </summary>
        public ushort TargetX { get; set; }

        /// <summary>
        /// Target position (Y coordinate)
        /// </summary>
        public ushort TargetY { get; set; }

        /// <summary>
        /// Primary target UID (if single target)
        /// </summary>
        public uint TargetUID { get; set; }

        /// <summary>
        /// Primary target entity (if applicable)
        /// </summary>
        public Entity TargetEntity { get; set; }

        /// <summary>
        /// All potential targets in range (for AoE skills)
        /// </summary>
        public List<IMapObject> PotentialTargets { get; set; }

        /// <summary>
        /// Additional custom data for specific skills
        /// </summary>
        public Dictionary<string, object> CustomData { get; set; }

        public SkillContext()
        {
            PotentialTargets = new List<IMapObject>();
            CustomData = new Dictionary<string, object>();
        }

        /// <summary>
        /// Helper to get caster entity
        /// </summary>
        public Entity CasterEntity => Caster?.Entity;

        /// <summary>
        /// Helper to get caster map
        /// </summary>
        public Map CasterMap => Caster?.Entity?.MapID != null ? Kernel.Maps[Caster.Entity.MapID] : null;
    }
}
