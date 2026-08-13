// Decompiled with JetBrains decompiler
// Type: AccountServer.MsgConnect
// Assembly: AccountServerBinary2015, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: EFCA16AA-F384-44A9-86B8-5D37A9F63575
// Assembly location: D:\Conquer Data\Important\Conquer_Online Source_v6159\AccountServer\AccountServerBinary2015.dll

#nullable enable
namespace AccountServer
{
  public class MsgConnect
  {
    public const ushort cType = 1052;

    public ushort Size { get; set; }

    public ushort Type { get; set; }

    public int AccountId { get; set; }

    public int dwData { get; set; }

    public string Info { get; set; }

    public MsgConnect(int _AccountId, int _dwData, string szInfo)
    {
      this.AccountId = _AccountId;
      this.dwData = _dwData;
      this.Info = szInfo;
    }

    public MsgConnect(Packet msg)
    {
      msg.Seek(0);
      this.Size = msg.ReadUInt16();
      this.Type = msg.ReadUInt16();
      this.AccountId = msg.ReadInt32();
      this.dwData = msg.ReadInt32();
      this.Info = msg.ReadCString(16);
    }

    public void ToBytes(Packet msg)
    {
      msg.InitWriter();
      msg.Write(this.AccountId);
      msg.Write(this.dwData);
      msg.Write(this.Info, 16);
      msg.Finalize((ushort) 1052);
    }

    public void Process(AuthClient Client)
    {
    }
  }
}
