// Decompiled with JetBrains decompiler
// Type: AccountServer.MsgMacAddr
// Assembly: AccountServerBinary2015, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: EFCA16AA-F384-44A9-86B8-5D37A9F63575
// Assembly location: D:\Conquer Data\Important\Conquer_Online Source_v6159\AccountServer\AccountServerBinary2015.dll

using System.Text.RegularExpressions;

#nullable enable
namespace AccountServer
{
  public class MsgMacAddr
  {
    private const string regex = "(.{2})(.{2})(.{2})(.{2})(.{2})(.{2})";
    private const string replace = "$1:$2:$3:$4:$5:$6";
    public const ushort cType = 1100;

    public ushort Size { get; set; }

    public ushort Type { get; set; }

    public int AccountId { get; set; }

    public string MacAddr { get; set; }

    public MsgMacAddr(Packet msg)
    {
      msg.Seek(0);
      this.Size = msg.ReadUInt16();
      this.Type = msg.ReadUInt16();
      this.AccountId = msg.ReadInt32();
      this.MacAddr = msg.ReadCString(12);
      this.MacAddr = Regex.Replace(this.MacAddr, "(.{2})(.{2})(.{2})(.{2})(.{2})(.{2})", "$1:$2:$3:$4:$5:$6");
    }

    public void Process(AuthClient Client)
    {
      GameServer gameServer = (GameServer) null;
      if (World.Servers.TryGetValue(Client.Server.GenerateHash(), out gameServer) && (string.IsNullOrEmpty(this.MacAddr) || Client.AccountId != this.AccountId))
        gameServer.Kickout(Client.AccountId);
      Client.MacAddress = this.MacAddr;
      if (Database.BannedMac(Client))
        gameServer.Kickout(Client.AccountId);
      Database.UpdateAccount(Client);
    }
  }
}
