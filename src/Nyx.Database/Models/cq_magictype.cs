using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.Database.Models
{
    public class cq_magictype
    {
        public int id { get; set; }
        public int type { get; set; }
        public int sort { get; set; }
        public string name { get; set; }
        public byte crime { get; set; }
        public byte ground { get; set; }
        public byte multi { get; set; }
        public int level { get; set; }
        public int use_mp { get; set; }
        public int power { get; set; }
        public int intone_speed { get; set; }
        public int percent { get; set; }
        public int step_secs { get; set; }
        public int range { get; set; }
        public int distance { get; set; }
        public int status { get; set; }
        public int need_prof { get; set; }
        public int need_exp { get; set; }
        public int need_time { get; set; }
        public int need_level { get; set; }
        public byte use_xp { get; set; }
        public int weapon_subtype { get; set; }
        public int active_times { get; set; }
        public int auto_active { get; set; }
        public int floor_attr { get; set; }
        public byte auto_learn { get; set; }
        public int learn_level { get; set; }
        public byte drop_weapon { get; set; }
        public int use_ep { get; set; }
        public byte weapon_hit { get; set; }
        public int use_item { get; set; }
        public int next_magic { get; set; }
        public int delay_ms { get; set; }
        public int use_item_num { get; set; }
        public int status_data0 { get; set; }
        public int status_data1 { get; set; }
        public int status_data2 { get; set; }
        public byte attr_type { get; set; }
        public int attr_power { get; set; }
        public byte target_num { get; set; }
        public int need_ast_prof { get; set; }
        public byte need_ast_prof_rank { get; set; }
        public int width { get; set; }
        public int data { get; set; }
        public int dur_time { get; set; }
        public int atk_interval { get; set; }
        public int coldtime { get; set; }
        public int req_uplevtime { get; set; }
        public int first_magic { get; set; }
        public int combo_delay { get; set; }
        public int combo_timeout { get; set; }
        public int magictypeex_id { get; set; }
    }
}
