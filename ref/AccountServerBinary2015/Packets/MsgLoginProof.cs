// Decompiled with JetBrains decompiler
// Type: AccountServer.MsgLoginProof
// Assembly: AccountServerBinary2015, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: EFCA16AA-F384-44A9-86B8-5D37A9F63575
// Assembly location: D:\Conquer Data\Important\Conquer_Online Source_v6159\AccountServer\AccountServerBinary2015.dll

#nullable enable
namespace AccountServer
{
  public class MsgLoginProof
  {
    public const ushort cType = 1214;

    public ushort Size { get; set; }

    public ushort Type { get; set; }

    public byte[] A { get; set; }

    public byte[] M { get; set; }

    public MsgLoginProof()
    {
    }

    public MsgLoginProof(Packet msg)
    {
      msg.Seek(0);
      this.Size = msg.ReadUInt16();
      this.Type = msg.ReadUInt16();
      this.A = msg.ReadBytes((int) msg.ReadUInt8());
      msg.Seek(133);
      this.M = msg.ReadBytes((int) msg.ReadUInt8());
    }

    public void ToBytes(Packet msg)
    {
    }

    public void Process(AuthClient Client)
    {
    }
  }
}
