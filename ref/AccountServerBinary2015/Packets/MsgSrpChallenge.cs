// Decompiled with JetBrains decompiler
// Type: AccountServer.MsgSrpChallenge
// Assembly: AccountServerBinary2015, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: EFCA16AA-F384-44A9-86B8-5D37A9F63575
// Assembly location: D:\Conquer Data\Important\Conquer_Online Source_v6159\AccountServer\AccountServerBinary2015.dll

#nullable enable
namespace AccountServer
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
      msg.Write((byte) this.B.Length);
      msg.Write(this.B);
      msg.Seek(391);
      msg.Write((byte) this.S.Length);
      msg.Write(this.S);
      msg.Finalize((ushort) 1213);
    }

    public void Process(AuthClient Client)
    {
    }
  }
}
