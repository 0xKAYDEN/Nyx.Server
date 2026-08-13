using Nyx.AttackEngine.Database.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.AttackEngine.Combat
{
    /// <summary>
    /// Everything a pipeline stage needs, passed by ref through the whole
    /// attack — no heap allocation per attack. Keep this struct small and
    /// flat; anything variable-length (target lists) goes in a pooled buffer,
    /// not inline here.
    /// </summary>
    public struct AttackContext
    {
        public uint AttackerId;
        public uint TargetId;
        public AttackMode Mode;
        public uint MapId;

        public MagicType Skill;

        public int AttackerAtk;
        public int AttackerMagicAtk;
        public int AttackerLevel;
        public byte AttackerProficiencyLevel;
        public uint AttackerCurrentMp;
        public uint AttackerCurrentEp;
        public bool AttackerHasCorrectWeapon;

        /// <summary>
        /// True when the attack is a magic skill (client sent AttackType ==
        /// Attack.Magic). Drives the magic-vs-physical branch in the damage
        /// formula, exactly as MyMath does via the AtkType parameter — NOT a
        /// guess from the skill type number.
        /// </summary>
        public bool IsMagic;

        public int TargetDefense;
        public int TargetMagicDefense;
        public int TargetHp;
        public int TargetMaxHp;
        public bool TargetIsPlayer;   // drives PVP-specific rules regardless of Mode

        public float ModeMultiplier => Mode switch
        {
            AttackMode.Pvp => 0.5f,   // example: PVP damage reduction — pull from config in real use
            AttackMode.Pve => 1.0f,
            AttackMode.Mvp => 1.15f,  // MVP monsters take bonus dmg in many CO rulesets — confirm vs. your source
            AttackMode.Pvm => 1.0f,
            _ => 1.0f
        };
    }
}
