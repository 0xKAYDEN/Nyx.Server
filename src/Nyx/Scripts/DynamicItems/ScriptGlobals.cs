using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.Server.Scripts.DynamicItems
{
    public class ScriptGlobals
    {
        public Client.GameClient user { get; }
        public Network.GamePackets.ConquerItem item { get; }

        public ScriptGlobals(Client.GameClient u, Network.GamePackets.ConquerItem i)
        {
            user = u;
            item = i;
        }
    }
}
