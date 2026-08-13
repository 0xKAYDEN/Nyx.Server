using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.Auth.Network.Messages
{
    public class MsgSrpChallenge
    {
        public const ushort cType = 1213;

        public ushort Size { get; set; }

        public ushort Type { get; set; }

        public byte[] B { get; set; }

        public byte[] S { get; set; }

        public MsgSrpChallenge(byte[] b, byte[] s)
        {
            this.B = b;
            this.S = s;
        }

        public MsgSrpChallenge(Packet msg)
        {
            msg.Seek(0);
            this.Size = msg.ReadUInt16();
            this.Type = msg.ReadUInt16();
        }

        public void ToBytes(Packet msg)
        {
            msg.InitWriter();
            msg.Write((byte)this.B.Length);
            msg.Write(this.B);
            msg.Seek(391);
            msg.Write((byte)this.S.Length);
            msg.Write(this.S);
            msg.Finalize((ushort)1213);
        }

        public void Process(AuthClient Client)
        {
        }
    }
}
