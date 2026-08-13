// Decompiled with JetBrains decompiler
// Type: AccountServer.AuthServer
// Assembly: AccountServerBinary2015, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: EFCA16AA-F384-44A9-86B8-5D37A9F63575
// Assembly location: D:\Conquer Data\Important\Conquer_Online Source_v6159\AccountServer\AccountServerBinary2015.dll

using AccountServer.Ciphers;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Concurrent;
using System.Collections.Generic;

#nullable enable
namespace AccountServer
{
  public class AuthServer
  {
    private static ServerSocket<AuthClient, AuthCipher> AuthSocket;
    private static ConcurrentDictionary<int, AuthClient> Users;

    public AuthServer(ushort ListenPort)
    {
      AuthServer.Users = new ConcurrentDictionary<int, AuthClient>();
      World.Factory.AddProcess(new Action(this.ProcessAuthReceive));
      World.Factory.AddProcess(new Action(this.ProcessAuthSend));
      AuthServer.AuthSocket = new ServerSocket<AuthClient, AuthCipher>((int) ListenPort);
      AuthServer.AuthSocket.OnConnect = new Action<ClientObject<AuthClient, AuthCipher>>(this.AuthConnect);
      AuthServer.AuthSocket.OnDisconnect = new Action<ClientObject<AuthClient, AuthCipher>>(this.AuthDisconnect);
      AuthServer.AuthSocket.Start(100);
    }

    public void AuthConnect(ClientObject<AuthClient, AuthCipher> client)
    {
      client.Wrapper = new AuthClient(client);
      AuthServer.Users.TryAdd(client.Wrapper.AuthId, client.Wrapper);
      using (RecycledPacket recycledPacket = new RecycledPacket())
      {
        Packet stream = recycledPacket.GetStream();
        new MsgCryptCode(123456U).ToBytes(stream);
        client.Send(stream);
      }
      client.Receive();
    }

    public void AuthDisconnect(ClientObject<AuthClient, AuthCipher> client)
    {
      if (client.Wrapper == null || client.Wrapper.AccountId == 0)
        return;
      Database.ExecuteSql(string.Format("UPDATE `accounts` SET online_us = 0 WHERE id = '{0}'", (object) client.Wrapper.AccountId), Database.AuthConnectionString);
      AuthServer.Users.TryRemove(client.Wrapper.AuthId, out AuthClient _);
    }

    private bool ValidateLoginRules(AuthClient client)
    {
      try
      {
        using (MySqlConnection connection = new MySqlConnection(Database.AuthConnectionString))
        {
          connection.Open();
          using (MySqlCommand mySqlCommand = new MySqlCommand("SELECT type FROM accounts WHERE name=@name", connection))
          {
            mySqlCommand.Parameters.AddWithValue("@name", (object) client.Username);
            object obj = mySqlCommand.ExecuteScalar();
            if (obj != null)
              client.AccountType = Convert.ToInt32(obj);
          }
        }
      }
      catch
      {
      }
      if (World.GMOnly && client.AccountType < 3)
      {
        Database.LoginReply(client, 0, 20, "", 0U);
        World.FormInstance?.WriteLine("LOGIN REJECTED: {0} tried to connect during GM-Only mode.", (object) client.Username);
        return false;
      }
      bool flag = false;
      if (!string.IsNullOrEmpty(client.Server) && World.Servers.TryGetValue(client.Server.GenerateHash(), out GameServer _))
        flag = true;
      if (!flag)
      {
        if (client.AccountType >= 3)
        {
          World.FormInstance?.WriteLine("STAFF BYPASS: {0} logging into offline/busy server '{1}'.", (object) client.Username, (object) client.Server);
        }
        else
        {
          Database.LoginReply(client, 0, 11, "", 0U);
          World.FormInstance?.WriteLine("LOGIN REJECTED: {0} tried to connect but server '{1}' is offline.", (object) client.Username, (object) client.Server);
          return false;
        }
      }
      return true;
    }

    public void ProcessAuthReceive()
    {
      foreach (AuthClient authClient in (IEnumerable<AuthClient>) AuthServer.Users.Values)
      {
        Packet next;
        if (authClient.Network.NextReceiveCandidate(out next))
        {
          try
          {
            ushort num = next.ReadUInt16();
            World.ExtensiveLog("Incoming Auth Packet Size: {0} Type: {1} | IP: {2}: ", (object) next.Size, (object) num, (object) authClient.Network.RemoteIP());
            switch (num)
            {
              case 1051:
                MsgAccount msgAccount = new MsgAccount(next);
                authClient.Username = msgAccount.Account;
                authClient.Password = msgAccount.Password;
                authClient.Server = msgAccount.ServerName;
                if (!this.ValidateLoginRules(authClient))
                  return;
                Database.AttemptLogin(authClient);
                break;
              case 1052:
                new MsgConnect(next).Process(authClient);
                break;
              case 1086:
                MsgAccount2 msgAccount2 = new MsgAccount2(next);
                authClient.Username = msgAccount2.Account;
                authClient.Password = msgAccount2.Password;
                authClient.Server = msgAccount2.ServerName;
                if (!this.ValidateLoginRules(authClient))
                  return;
                Database.AttemptLogin(authClient);
                break;
              case 1100:
                new MsgMacAddr(next).Process(authClient);
                break;
              case 1214:
                MsgLoginProof msgLoginProof = new MsgLoginProof(next);
                if (!(authClient.Network.RemoteIP() == "127.0.000.001"))
                {
                  if (!authClient.Srp.Challenge(msgLoginProof.A, msgLoginProof.M))
                  {
                    Database.LoginReply(authClient, 0, 1, "", 0U);
                    return;
                  }
                }
                else
                  authClient.Password = Database.GetPassword(authClient.Username);
                if (!this.ValidateLoginRules(authClient))
                  return;
                Database.AttemptLogin(authClient);
                break;
              case 1542:
                if (!BruteForce.Instance.Attempt(authClient))
                {
                  PacketRecycle.Reuse(next);
                  continue;
                }
                MsgSrpRequest msgSrpRequest = new MsgSrpRequest(next);
                if (!string.IsNullOrEmpty(msgSrpRequest.Username) && !string.IsNullOrEmpty(msgSrpRequest.ServerName))
                {
                  authClient.Server = msgSrpRequest.ServerName;
                  authClient.Username = msgSrpRequest.Username;
                  string password = Database.GetPassword(authClient.Username);
                  if (string.IsNullOrEmpty(password))
                  {
                    authClient.Network.Kick("Account not found");
                    return;
                  }
                  authClient.Password = password;
                  authClient.Srp = new SRP6(authClient.Username, authClient.Password);
                  byte[] _B;
                  byte[] _s;
                  authClient.Srp.GetOutgoingFields(out _B, out _s);
                  using (RecycledPacket recycledPacket = new RecycledPacket())
                  {
                    Packet stream = recycledPacket.GetStream();
                    new MsgSrpChallenge(_B, _s).ToBytes(stream);
                    authClient.Network.Send(stream);
                    break;
                  }
                }
                else
                  break;
              default:
                authClient.Network.Kick("Invalid Auth Packet Sent");
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

    public void ProcessAuthSend()
    {
      foreach (AuthClient authClient in (IEnumerable<AuthClient>) AuthServer.Users.Values)
      {
        byte[] next;
        if (authClient.Network.NextSendCandidate(out next))
        {
          try
          {
            authClient.Network.DirectSend(next);
          }
          catch (Exception ex)
          {
            World.DebugLog(ex.ToString());
          }
        }
      }
    }
  }
}
