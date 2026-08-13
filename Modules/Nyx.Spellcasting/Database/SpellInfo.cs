using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.Spellcasting.Database
{
    public class SpellInfo
    {
        public ushort SpellID { get; set; }
        public ushort Type { get; set; }
        public byte Sort { get; set; }
        public string Name { get; set; }
        public bool Crime { get; set; }
        public bool Ground { get; set; }
        public bool Multi { get; set; }
        public ushort Target { get; set; }
        public byte Level { get; set; }
        public byte UseMP { get; set; }
        public ushort Power { get; set; }
        public ushort IntoneSpeed { get; set; }
        public byte Percent { get; set; }
        public uint StepSec { get; set; }
        public byte Range { get; set; }
        public byte Distance { get; set; }
        public int Status { get; set; }
        public ushort NeedProf { get; set; }
        public ushort NeedEXP { get; set; }
        public uint NeedTime { get; set; }
        public byte NeedLevel { get; set; }
        public int weapon_subtype { get; set; } 
        public ushort active_times { get; set; }
        public ushort auto_active { get; set; }
        public ushort UpgradeCPCost { get; set; } = 0;
        public List<ushort> WeaponSubtype { get; set; }
        public List<ushort> OnlyWithThisWeaponSubtype { get; set; }
        public ushort NextSpellID { get; set; }
        public async Task<bool> GetSpellInfo(string SpellInfoPath)
        {
            return true;
        }
    }
}
