// Decompiled with JetBrains decompiler
// Type: AccountServer.PointServer
// Assembly: AccountServerBinary2015, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: EFCA16AA-F384-44A9-86B8-5D37A9F63575
// Assembly location: D:\Conquer Data\Important\Conquer_Online Source_v6159\AccountServer\AccountServerBinary2015.dll

using System;
using System.Collections.Concurrent;
using System.Collections.Generic;

#nullable enable
namespace AccountServer
{
  public class PointServer
  {
    private static ServerSocket<PointClient, PointCipher> PointSocket;
    private static ulong Heartbeat;
    private static int HeartbeatCount;
    public static ConcurrentDictionary<int, PointClient> Users;

    public PointServer(ushort ListenPort)
    {
      PointServer.Users = new ConcurrentDictionary<int, PointClient>();
      World.Factory.AddProcess(new Action(this.ProcessPointReceive));
      World.Factory.AddProcess(new Action(this.ProcessPointSend));
      World.Factory.AddProcess(new Action(this.ProcessHeartbeat));
      PointServer.PointSocket = new ServerSocket<PointClient, PointCipher>((int) ListenPort);
      PointServer.PointSocket.OnConnect = new Action<ClientObject<PointClient, PointCipher>>(this.PointConnect);
      PointServer.PointSocket.OnDisconnect = new Action<ClientObject<PointClient, PointCipher>>(this.PointDisconnect);
      PointServer.PointSocket.Start(100);
    }

    public void PointConnect(ClientObject<PointClient, PointCipher> client)
    {
      client.Wrapper = new PointClient(client);
      PointServer.Users.TryAdd(client.Wrapper.PointId, client.Wrapper);
      client.Receive();
    }

    public void PointDisconnect(ClientObject<PointClient, PointCipher> client)
    {
      GameServer gameServer;
      if (World.Servers.TryRemove(client.Wrapper.Server.GenerateHash(), out gameServer))
      {
        World.DebugWriteLine("{0} Disconnected", (object) gameServer.ServerName);
        World.FormInstance.SetServerCount();
      }
      PointServer.Users.TryRemove(client.Wrapper.PointId, out client.Wrapper);
    }

    public void ProcessPointReceive()
    {
      foreach (PointClient Client in (IEnumerable<PointClient>) PointServer.Users.Values)
      {
        Packet next;
        if (Client.Network.NextReceiveCandidate(out next))
        {
          try
          {
            GameServer gameServer;
            if (World.Servers.TryGetValue(Client.Server.GenerateHash(), out gameServer))
            {
              gameServer.Heartbeat = (ulong) TimeStamp.GetTime();
              gameServer.LastHeartbeat = 0UL;
            }
            ushort num = next.ReadUInt16();
            World.ExtensiveLog("Incoming Point Packet Size: {0} Type: {1} | IP: {2}", (object) next.Size, (object) num, (object) Client.Network.RemoteIP());
            switch (num)
            {
              case 1002:
                new MsgLogin(next).Process(Client);
                break;
              case 1099:
                new MsgServer(next).Process(Client);
                break;
              case 1200:
                new MsgFee(next).Process(Client);
                break;
              case 1201:
                new MsgQueryFee(next).Process(Client);
                break;
              default:
                World.DebugWriteLine(next.Dump("Unknown PointServer Packet"));
                break;
            }
          }
          catch (Exception ex)
          {
            World.DebugLog(ex.ToString());
          }
          finally
          {
            PacketRecycle.Reuse(next);
          }
        }
      }
    }

    public void ProcessPointSend()
    {
      foreach (PointClient pointClient in (IEnumerable<PointClient>) PointServer.Users.Values)
      {
        byte[] next;
        if (pointClient.Network.NextSendCandidate(out next))
          pointClient.Network.DirectSend(next);
      }
    }

    public void ProcessHeartbeat()
    {
      ulong num1 = TimeStamp.GetUnixTime64() - PointServer.Heartbeat;
      if (TimeStamp.GetUnixTime64() - PointServer.Heartbeat <= 1UL)
        return;
      if (++PointServer.HeartbeatCount >= 17280)
      {
        foreach (PointClient pointClient in (IEnumerable<PointClient>) PointServer.Users.Values)
        {
          GameServer gameServer;
          if (World.Servers.TryGetValue(pointClient.Server.GenerateHash(), out gameServer))
          {
            if ((gameServer.State == ServerState.Busy || gameServer.State == ServerState.Full) && TimeStamp.GetTime() > gameServer.Delay)
              gameServer.SetState(ServerState.Normal);
            ulong num2 = TimeStamp.GetUnixTime64() - gameServer.LastHeartbeat;
            ulong num3 = TimeStamp.GetUnixTime64() - gameServer.Heartbeat;
            if (gameServer.LastHeartbeat != 0UL && TimeStamp.GetUnixTime64() - gameServer.LastHeartbeat > 86400UL)
            {
              World.ExtensiveLog("Heartbeat Timeout #1!");
              World.DebugWriteLine("Heartbeat Timeout #1!");
            }
            else if (TimeStamp.GetUnixTime64() - gameServer.Heartbeat > 86400UL && TimeStamp.GetUnixTime64() - gameServer.LastHeartbeat > 86400UL)
            {
              MsgFee msgFee = new MsgFee(666666, MsgFeeType.HEARTBEAT);
              using (RecycledPacket recycledPacket = new RecycledPacket())
              {
                Packet stream = recycledPacket.GetStream();
                msgFee.ToBytes(stream);
                if (pointClient.Network.BlockSend(stream))
                {
                  World.ExtensiveLog("Heartbeat Sent!");
                  World.DebugWriteLine("Heartbeat Sent!");
                }
                else
                {
                  World.ExtensiveLog("Heartbeat Timeout #2!");
                  World.DebugWriteLine("Heartbeat Timeout #2!");
                }
              }
              gameServer.LastHeartbeat = TimeStamp.GetUnixTime64();
            }
          }
        }
        PointServer.HeartbeatCount = 0;
      }
      PointServer.Heartbeat = TimeStamp.GetUnixTime64();
    }
  }
}
