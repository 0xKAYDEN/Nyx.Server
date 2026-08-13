// Decompiled with JetBrains decompiler
// Type: AccountServer.MsgCryptCode
// Assembly: AccountServerBinary2015, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: EFCA16AA-F384-44A9-86B8-5D37A9F63575
// Assembly location: D:\Conquer Data\Important\Conquer_Online Source_v6159\AccountServer\AccountServerBinary2015.dll

#nullable enable
namespace AccountServer
{
  public class MsgCryptCode
  {
    public const ushort cType = 1059;

    public ushort Size { get; set; }

    public ushort Type { get; set; }

    public uint Seed { get; set; }

    public MsgCryptCode(uint seed) => this.Seed = seed;

    public MsgCryptCode(Packet msg) => msg.Seek(0);

    public void ToBytes(Packet msg)
    {
      msg.InitWriter();
      msg.Write(this.Seed);
      msg.Finalize((ushort) 1059);
    }

    public void Process(AuthClient Client)
    {
    }
  }
}
