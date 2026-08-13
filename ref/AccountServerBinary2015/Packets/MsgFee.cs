// Decompiled with JetBrains decompiler
// Type: AccountServer.MsgFee
// Assembly: AccountServerBinary2015, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: EFCA16AA-F384-44A9-86B8-5D37A9F63575
// Assembly location: D:\Conquer Data\Important\Conquer_Online Source_v6159\AccountServer\AccountServerBinary2015.dll

#nullable enable
namespace AccountServer
{
  public class MsgFee
  {
    public const ushort cType = 1200;

    public ushort Size { get; private set; }

    public ushort Type { get; private set; }

    public int AccountId { get; private set; }

    public MsgFeeType SubType { get; private set; }

    public MsgFee(Packet msg)
    {
      msg.Seek(0);
      this.Size = msg.ReadUInt16();
      this.Type = msg.ReadUInt16();
      this.AccountId = msg.ReadInt32();
      this.SubType = (MsgFeeType) msg.ReadUInt8();
    }

    public MsgFee(int _AccountId, MsgFeeType _MsgFeeType)
    {
      this.Size = (ushort) 32;
      this.Type = (ushort) 1200;
      this.AccountId = _AccountId;
      this.SubType = _MsgFeeType;
    }

    public void ToBytes(Packet msg)
    {
      msg.InitWriter();
      msg.Write(this.AccountId);
      msg.Write((uint) this.SubType);
      msg.Finalize((ushort) 1200);
    }

    public void Process(PointClient Client)
    {
      switch (this.SubType)
      {
        case MsgFeeType.FEE_BEGIN:
          GameServer gameServer1;
          if (World.Servers.TryGetValue(Client.Server.GenerateHash(), out gameServer1))
          {
            PlayerOnlineHandler.Instance.SetPlayerOnline(this.AccountId);
            Database.ExecuteSql(string.Format("UPDATE `accounts` SET online_us = 1 WHERE id = '{0}'", (object) this.AccountId), Database.AuthConnectionString);
            World.FormInstance.WriteLine("SESSION: Account ID {0} has entered the world on {1}.", (object) this.AccountId, (object) gameServer1.ServerName);
          }
          World.FormInstance.SetPlayerCount();
          World.FormInstance.RefreshOnlinePlayers();
          break;
        case MsgFeeType.FEE_END:
        case MsgFeeType.FEE_KICKOUT:
        case MsgFeeType.FEE_OFFLINE:
          GameServer gameServer2;
          if (World.Servers.TryGetValue(Client.Server.GenerateHash(), out gameServer2))
          {
            OnlineAccount onlineAccount;
            if (gameServer2.OnlineAccounts.TryRemove(this.AccountId, out onlineAccount))
              World.FormInstance.WriteLine("SESSION: Character '{0}' (ID: {1}) has logged out.", (object) onlineAccount.Username, (object) this.AccountId);
            Database.ExecuteSql(string.Format("UPDATE `accounts` SET online_us = 0 WHERE id = '{0}'", (object) this.AccountId), Database.AuthConnectionString);
            PlayerOnlineHandler.Instance.SetPlayerOffline(this.AccountId);
          }
          World.FormInstance.SetPlayerCount();
          World.FormInstance.RefreshOnlinePlayers();
          break;
        case MsgFeeType.SERVER_CLOSE:
          GameServer gameServer3;
          if (World.Servers.TryGetValue(Client.Server.GenerateHash(), out gameServer3))
          {
            World.FormInstance.WriteLine("SYSTEM: {0} has disconnected. Cleaning sessions...", (object) gameServer3.ServerName);
            Database.ExecuteSql("UPDATE `accounts` SET online_us = 0", Database.AuthConnectionString);
          }
          World.Servers.TryRemove(Client.Server.GenerateHash(), out gameServer3);
          World.FormInstance.SetServerCount();
          World.FormInstance.SetPlayerCount();
          World.FormInstance.RefreshOnlinePlayers();
          break;
      }
    }
  }
}
