using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.Network.Abstractions
{
    public abstract class IBaseHandler<ClientSession, PacketContext>
    {
        public abstract ValueTask ProHandleAsynccess(ClientSession session , PacketContext context);
    }
}
