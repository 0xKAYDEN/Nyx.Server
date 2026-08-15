using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.Database.Models
{
    public class cq_itemtype
    {
        public uint id { get; set; }
        public string Name { get; set; }
        public uint req_profession { get; set; }
        public byte req_weaponskill { get; set; }
        public byte req_level { get; set; }
        public byte req_sex { get; set; }
        public uint req_force { get; set; }
        public uint req_speed { get; set; }
        public uint req_health { get; set; }
        public uint req_soul { get; set; }
        public int monopoly { get; set; }
        public int price { get; set; }
        public int id_action { get; set; }
        public ushort attack_max { get; set; }
        public ushort attack_min { get; set; }
        public ushort defense { get; set; }
        public ushort dexterity { get; set; }
        public ushort dodge { get; set; }
        public ushort life { get; set; }
        public ushort mana { get; set; }
        public ushort amount { get; set; }
        public ushort amount_limit { get; set; }
        public byte ident { get; set; }
        public byte gem1 { get; set; }
        public byte gem2 { get; set; }
        public int magic1 { get; set; }
        public byte magic2 { get; set; }
        public byte magic3 { get; set; }
        public int data { get; set; }
        public ushort magic_atk { get; set; }
        public ushort magic_def { get; set; }
        public ushort atk_range { get; set; }
        public ushort atk_speed { get; set; }
        public byte fray_mode { get; set; }
        public byte repair_mode { get; set; }
        public byte type_mask { get; set; }
        public int emoney_price { get; set; }
        public int emoney_mono_price { get; set; }
        public int save_time { get; set; }
        public ushort critical_rate { get; set; }
        public ushort magic_critical_rate { get; set; }
        public ushort anti_critical_rate { get; set; }
        public ushort magic_penetration { get; set; }
        public int shield_block { get; set; }
        public ushort crash_attack { get; set; }
        public ushort stable_defence { get; set; }
        public int accumulate_limit { get; set; }
        public int attr_metal { get; set; }
        public int attr_wood { get; set; }
        public int attr_water { get; set; }
        public int attr_fire { get; set; }
        public int attr_earth { get; set; }
        public string type_desc { get; set; }
        public string item_desc { get; set; }
        public int color_index { get; set; }
        public byte godsoullev { get; set; }
        public byte meteor_count { get; set; }
        public int recover_energy { get; set; }
        public byte auction_class { get; set; }
        public byte final_dmg_add { get; set; }
        public byte final_dmg_add_mgc { get; set; }
        public byte final_dmg_reduce { get; set; }
        public byte final_dmg_reduce_mgc { get; set; }
        public int sort { get; set; }
        public int broke_toughness { get; set; }
    }
}
