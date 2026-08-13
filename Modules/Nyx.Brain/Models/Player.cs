namespace Nyx.Brain.Models
{
    public class Player
    {
        public ulong Id { get; set; }
        public byte Level { get; set; }
        public byte VIP { get; set; }
        public ulong Experience { get; set; }
        public uint Money { get; set; }
        public uint Cps { get; set; }
        public uint BoundCps { get; set; }
        public List<string> Inventory { get; set; } = new List<string>();
        public DateTime LastActive { get; set; }
        public int PlayTimeHours { get; set; }
    }
}
