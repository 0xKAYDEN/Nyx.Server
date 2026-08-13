// Decompiled with JetBrains decompiler
// Type: AccountServer.MsgSrpRequest
// Assembly: AccountServerBinary2015, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: EFCA16AA-F384-44A9-86B8-5D37A9F63575
// Assembly location: D:\Conquer Data\Important\Conquer_Online Source_v6159\AccountServer\AccountServerBinary2015.dll

#nullable enable
namespace AccountServer
{
  public class MsgSrpRequest
  {
    public const ushort cType = 1542;

    public ushort Size { get; set; }

    public ushort Type { get; set; }

    public string Username { get; set; }

    public string ServerName { get; set; }

    public MsgSrpRequest()
    {
    }

    public MsgSrpRequest(Packet msg)
    {
      msg.Seek(0);
      this.Size = msg.ReadUInt16();
      this.Type = msg.ReadUInt16();
      msg.Seek(8);
      this.Username = msg.ReadCString(128);
      this.ServerName = msg.ReadCString(16);
    }

    public void ToBytes(Packet msg)
    {
    }

    public void Process(AuthClient Client)
    {
    }
  }
}
