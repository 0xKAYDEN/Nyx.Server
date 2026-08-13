using Microsoft.EntityFrameworkCore;
using Serilog;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.Server.DivineLeader.Core
{
    public class DivineLeaderCore
    {
        public readonly ILogger logger = Log.ForContext<DivineLeaderCore>();
        public DivineLeaderCore() { }
        public class EventConfigurations()
        {
            public ushort MapID { get; set; }
            public string Name { get; set; } = "DivineLeader";
            public string Description { get; set; } = "Event for all the guilds in the game to hunt monsters and help there leader to kill the final boss while protecting his life";
            public HashSet<uint> MonestersIDs { get; set; } = new HashSet<uint>() { 1002,5544,6623,5587 }; //Cateran,TitanL81,Blade Ghost,Blade Monster,Bandit L98,SeniorBandit,Robber,Bull Monster,EvilBlade
            //Elf Ape , Alien Ape,Huge Ape,Cateran Leader,SeniorCateran,Meteor Dove,Gibbon,Howler,NagaLord,Demon Ghost
            //Wraith = 5055 , 
            //Global Zone,The 4th  Floor of Labyrinth
            public uint BossID { get; set; }





        }

    }
}
