using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.Database.Models
{
    public class cq_title_type
    {
        public uint type { get; set; }
        public uint id { get; set; }
        public string Name { get; set; }
        public uint save_time { get; set; }
        public uint cost_7 { get; set; }
        public uint cost_30 { get; set; }
        public uint cost_forever { get; set; }
        public uint score { get; set; }
    }
}
