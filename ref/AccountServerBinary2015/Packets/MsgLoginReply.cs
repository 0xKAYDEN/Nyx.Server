// Decompiled with JetBrains decompiler
// Type: AccountServer.MsgLoginReply
// Assembly: AccountServerBinary2015, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: EFCA16AA-F384-44A9-86B8-5D37A9F63575
// Assembly location: D:\Conquer Data\Important\Conquer_Online Source_v6159\AccountServer\AccountServerBinary2015.dll

#nullable enable
namespace AccountServer
{
  public class MsgLoginReply
  {
    public const ushort cType = 1055;

    public ushort Size { get; set; }

    public ushort Type { get; set; }

    public int AccountId { get; set; }

    public int dwData { get; set; }

    public string IPAddress { get; set; }

    public uint Port { get; set; }

    public MsgLoginReply(int _Account, int _Key, string _IPAddress, uint _Port)
    {
      this.Size = (ushort) 32;
      this.Type = (ushort) 1055;
      this.AccountId = _Account;
      this.dwData = _Key;
      this.IPAddress = _IPAddress;
      this.Port = _Port;
    }

    public void ToBytes(Packet msg)
    {
      msg.InitWriter();
      msg.Write(this.AccountId);
      msg.Write(this.dwData);
      msg.Write(this.Port);
      msg.Write(0);
      msg.Write(this.IPAddress, 20);
      msg.Finalize((ushort) 1055);
    }
  }
}
