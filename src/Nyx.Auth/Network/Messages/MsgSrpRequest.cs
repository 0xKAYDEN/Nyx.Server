using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.Auth.Network.Messages
{
    public class MsgServer
    {
        public const ushort cType = 1099;

        public ushort Size { get; private set; }

        public ushort Type { get; private set; }

        public string DatabaseUser { get; private set; }

        public string DatabasePassword { get; private set; }

        public string ServerName { get; private set; }

        public uint ServerPort { get; private set; }

        public MsgServer(Packet msg)
        {
            msg.Seek(0);
            this.Size = msg.ReadUInt16();
            this.Type = msg.ReadUInt16();
            this.DatabaseUser = msg.ReadCString(16);
            this.DatabasePassword = msg.ReadCString(16);
            this.ServerName = msg.ReadCString(16);
            this.ServerPort = msg.ReadUInt32();
        }

        public void Process(PointClient Client)
        {
            Client.Username = this.DatabaseUser;
            Client.Password = this.DatabasePassword;
            Client.Server = this.ServerName;
            Client.IPAddress = Client.Network.RemoteIP();
            Client.Port = this.ServerPort;
            GameServer gameServer = new GameServer(Client);
            if (!World.Servers.TryAdd(gameServer.Identifier, gameServer))
            {
                Client.Network.Kick("Server Already Registered!");
            }
            else
            {
                MsgLogin msgLogin = new MsgLogin(gameServer.Identifier, 0U, (ushort)49683, this.ServerName);
                using (RecycledPacket recycledPacket = new RecycledPacket())
                {
                    Packet stream = recycledPacket.GetStream();
                    msgLogin.ToBytes(stream);
                    Client.Network.Send(stream);
                }
                World.FormInstance.SetServerCount();
                World.FormInstance.SetPlayerCount();
            }
        }
    }
}
