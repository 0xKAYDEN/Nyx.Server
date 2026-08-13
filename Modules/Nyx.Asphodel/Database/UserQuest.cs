using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.Asphodel.Database
{
    public class UserQuest
    {
        public uint Identity { get; set; }
        public int QuestID { get; set; }
        public byte Status { get; set; } // e.g., 0 = Not Started, 1 = In Progress, 2 = Completed
        public DateTime StartedAt { get; set; }
        public DateTime? CompletedAt { get; set; }
        public Dictionary<string, int> ProgressData { get; set; } = new Dictionary<string, int>();
    }
}
