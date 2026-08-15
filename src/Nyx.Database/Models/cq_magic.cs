using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.Database.Models
{
    public class cq_magic
    {
        public int Id { get; set; }
        public int ownerid { get; set; }
        public ushort type { get; set; }
        public ushort level { get; set; }
        public int exp { get; set; }
        public byte unlearn { get; set; }
        public ushort old_level { get; set; }
        public ushort current_effect_type { get; set; }
        public int available_effect_type { get; set; }
        public int effect_monopoly { get; set; }
        public int effect_exorbitant { get; set; }
    }
}
