using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.Asphodel.Database
{
    public class QuestRecord
    {
        public uint Identity { get; set; }
        public int QuestID { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public byte RequiredLevel { get; set; }
        public Dictionary<string, int> Objectives { get; set; } = new Dictionary<string, int>();
        public Dictionary<string, int> Rewards { get; set; } = new Dictionary<string, int>();
    }
}
