// Decompiled with JetBrains decompiler
// Type: AccountServer.GameServer
// Assembly: AccountServerBinary2015, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: EFCA16AA-F384-44A9-86B8-5D37A9F63575
// Assembly location: D:\Conquer Data\Important\Conquer_Online Source_v6159\AccountServer\AccountServerBinary2015.dll

using System.Collections.Concurrent;
using System.Collections.Generic;

#nullable enable
namespace AccountServer
{
  public class GameServer
  {
    public string Username;
    public string Password;
    public string ServerName;
    public string IPAddress;
    public uint Port;
    public uint Identifier;
    public ulong LastHeartbeat;
    public ulong Heartbeat;
    public uint Delay;
    public ServerState State;

    public ConcurrentDictionary<int, OnlineAccount> OnlineAccounts { get; set; }

    public PointClient Connection { get; set; }

    public GameServer(PointClient _Connection)
    {
      this.Connection = _Connection;
      this.Username = this.Connection.Username;
      this.Password = this.Connection.Password;
      this.ServerName = this.Connection.Server;
      this.IPAddress = this.Connection.Network.RemoteIP();
      this.Port = this.Connection.Port;
      this.Identifier = this.ServerName.GenerateHash();
      this.Heartbeat = (ulong) TimeStamp.GetTime();
      this.OnlineAccounts = new ConcurrentDictionary<int, OnlineAccount>();
      this.SetState(ServerState.Offline);
    }

    public void ClearState() => this.State = ServerState.Offline;

    public void SetState(ServerState NewState)
    {
      this.State = NewState;
      switch (NewState)
      {
        case ServerState.Normal:
          World.DebugWriteLine("{0} State = {1}", (object) this.ServerName, (object) this.State);
          break;
        case ServerState.Busy:
        case ServerState.Full:
          this.Delay = TimeStamp.GetTime() + 30000U;
          World.DebugWriteLine("{0} State = {1}", (object) this.ServerName, (object) this.State);
          break;
      }
    }

    public void Kickout(int AccountId)
    {
      MsgFee msgFee = new MsgFee(AccountId, MsgFeeType.FEE_KICKOUT);
      using (RecycledPacket recycledPacket = new RecycledPacket())
      {
        Packet stream = recycledPacket.GetStream();
        msgFee.ToBytes(stream);
        this.Connection.Network.BlockSend(stream);
      }
      this.OnlineAccounts.TryRemove(AccountId, out OnlineAccount _);
    }

    public int ClientsByIP(string IPAddress)
    {
      int num = 0;
      foreach (KeyValuePair<int, OnlineAccount> onlineAccount in this.OnlineAccounts)
      {
        if (onlineAccount.Value.RemoteIP.Equals(IPAddress))
          ++num;
      }
      return num;
    }
  }
}
