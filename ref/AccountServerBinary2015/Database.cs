// Decompiled with JetBrains decompiler
// Type: AccountServer.Database
// Assembly: AccountServerBinary2015, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: EFCA16AA-F384-44A9-86B8-5D37A9F63575
// Assembly location: D:\Conquer Data\Important\Conquer_Online Source_v6159\AccountServer\AccountServerBinary2015.dll

using MySql.Data.MySqlClient;
using System;
using System.Windows;

#nullable enable
namespace AccountServer
{
  public class Database
  {
    public static string AuthConnectionString = string.Empty;
    public static string GameConnectionString = string.Empty;

    public static void AttemptLogin(AuthClient Client)
    {
      try
      {
        GameServer gameServer = (GameServer) null;
        if (!World.Servers.TryGetValue(Client.Server.GenerateHash(), out gameServer) || gameServer.State != ServerState.Normal || !Database.ValidateAccount(Client))
          return;
        if (Database.BannedMac(Client))
        {
          World.FormInstance.WriteLine("SECURITY: Rejected blacklisted MAC {0}.", (object) Client.MacAddress);
          Database.LoginReply(Client, 0, 25, "", 0U);
          Database.LogLoginAttempt(0, Client.Username, Client.Network.RemoteIP(), Client.MacAddress, false, "MAC Banned");
        }
        else if (Client.AccountStatus == AccountStatus.Banned)
        {
          World.FormInstance.WriteLine("SECURITY: Account '{0}' is banned.", (object) Client.Username);
          Database.LoginReply(Client, 0, 12, "", 0U);
          Database.LogLoginAttempt(Client.AccountId, Client.Username, Client.Network.RemoteIP(), Client.MacAddress, false, "Account Banned");
        }
        else if (World.GMOnly && Client.AccountType == 0)
        {
          World.FormInstance.WriteLine("SECURITY: Account '{0}' rejected — GM Only mode.", (object) Client.Username);
          Database.LoginReply(Client, 0, 22, "", 0U);
          Database.LogLoginAttempt(Client.AccountId, Client.Username, Client.Network.RemoteIP(), Client.MacAddress, false, "GM Only Mode");
        }
        else
        {
          using (RecycledPacket recycledPacket = new RecycledPacket())
          {
            Packet stream = recycledPacket.GetStream();
            new MsgConnect(Client.AccountId, Client.AuthHash, string.Format("{0}.0", (object) Client.AccountVip)).ToBytes(stream);
            gameServer.Connection.Network.Send(stream);
          }
          Database.ExecuteSql(string.Format("UPDATE accounts SET online_us = 1 WHERE id = '{0}'", (object) Client.AccountId), Database.AuthConnectionString);
          OnlineAccount onlineAccount = new OnlineAccount(Client);
          gameServer.OnlineAccounts.TryAdd(onlineAccount.AccountId, onlineAccount);
          Database.LoginReply(Client, Client.AccountId, Client.AuthHash, gameServer.IPAddress, gameServer.Port);
          Database.LogLoginAttempt(Client.AccountId, Client.Username, Client.Network.RemoteIP(), Client.MacAddress, true, "");
          World.FormInstance.WriteLine("AUTH: Account '{0}' authenticated and synced.", (object) Client.Username);
          Application.Current.Dispatcher.BeginInvoke((Delegate) (() => World.FormInstance.RefreshOnlinePlayers()), Array.Empty<object>());
        }
      }
      catch (Exception ex)
      {
        World.DebugLog(ex.ToString());
      }
    }

    public static bool ValidateAccount(AuthClient Client)
    {
      if (string.IsNullOrEmpty(Client.Username))
        return false;
      try
      {
        using (MySqlConnection mySqlConnection = new MySqlConnection(Database.AuthConnectionString))
        {
          mySqlConnection.Open();
          int accountId = 0;
          using (MySqlCommand mySqlCommand = new MySqlCommand("SELECT id FROM accounts WHERE name = @username LIMIT 1", mySqlConnection))
          {
            mySqlCommand.Parameters.AddWithValue("@username", (object) Client.Username);
            object obj = mySqlCommand.ExecuteScalar();
            if (obj == null)
              return false;
            accountId = Convert.ToInt32(obj);
          }
          Database.CheckVipStatus(accountId, mySqlConnection);
          using (MySqlCommand mySqlCommand = new MySqlCommand("SELECT * FROM accounts WHERE id = @id LIMIT 1", mySqlConnection))
          {
            mySqlCommand.Parameters.AddWithValue("@id", (object) accountId);
            using (MySqlDataReader mySqlDataReader = mySqlCommand.ExecuteReader())
            {
              if (!mySqlDataReader.Read())
                return false;
              Client.AccountId = mySqlDataReader.GetInt32("id");
              Client.AccountStatus = (AccountStatus) mySqlDataReader.GetInt32("banned");
              Client.AccountType = mySqlDataReader.GetInt32("type");
              int ordinal1 = mySqlDataReader.GetOrdinal("vip");
              Client.AccountVip = mySqlDataReader.IsDBNull(ordinal1) ? 0 : mySqlDataReader.GetInt32(ordinal1);
              int ordinal2 = mySqlDataReader.GetOrdinal("macaddr");
              Client.MacAddress = mySqlDataReader.IsDBNull(ordinal2) ? "" : mySqlDataReader.GetString(ordinal2);
              return true;
            }
          }
        }
      }
      catch
      {
        return false;
      }
    }

    private static void CheckVipStatus(int accountId, MySqlConnection conn)
    {
      try
      {
        using (MySqlCommand mySqlCommand = new MySqlCommand("UPDATE accounts a LEFT JOIN vips v ON a.id = v.account_id\n                    SET a.vip = CASE WHEN v.account_id IS NULL THEN 0 WHEN v.vip_expires <= NOW() THEN 0 ELSE v.vip_level END,\n                        v.days_left = CASE WHEN v.account_id IS NOT NULL AND v.vip_expires > NOW() THEN DATEDIFF(v.vip_expires, NOW()) ELSE 0 END\n                    WHERE a.id = @id", conn))
        {
          mySqlCommand.Parameters.AddWithValue("@id", (object) accountId);
          mySqlCommand.ExecuteNonQuery();
        }
      }
      catch (Exception ex)
      {
        World.DebugLog("VipCheck Critical Error: " + ex.Message);
      }
    }

    public static string GetPassword(string username)
    {
      try
      {
        using (MySqlConnection connection = new MySqlConnection(Database.AuthConnectionString))
        {
          connection.Open();
          using (MySqlCommand mySqlCommand = new MySqlCommand("SELECT password FROM accounts WHERE name = @name", connection))
          {
            mySqlCommand.Parameters.AddWithValue("@name", (object) username);
            return mySqlCommand.ExecuteScalar()?.ToString();
          }
        }
      }
      catch
      {
        return (string) null;
      }
    }

    public static void UpdateAccount(AuthClient Client)
    {
      try
      {
        using (MySqlConnection connection = new MySqlConnection(Database.AuthConnectionString))
        {
          connection.Open();
          using (MySqlCommand mySqlCommand = new MySqlCommand("UPDATE accounts SET macaddr = @mac WHERE id = @id", connection))
          {
            mySqlCommand.Parameters.AddWithValue("@mac", (object) Client.MacAddress);
            mySqlCommand.Parameters.AddWithValue("@id", (object) Client.AccountId);
            mySqlCommand.ExecuteNonQuery();
          }
        }
      }
      catch
      {
      }
    }

    public static bool BannedMac(AuthClient client)
    {
      if (string.IsNullOrEmpty(client.MacAddress))
        return false;
      try
      {
        using (MySqlConnection connection = new MySqlConnection(Database.AuthConnectionString))
        {
          connection.Open();
          using (MySqlCommand mySqlCommand = new MySqlCommand("SELECT COUNT(*) FROM mac_bans WHERE mac_address = @mac", connection))
          {
            mySqlCommand.Parameters.AddWithValue("@mac", (object) client.MacAddress);
            return Convert.ToInt32(mySqlCommand.ExecuteScalar()) > 0;
          }
        }
      }
      catch
      {
        return false;
      }
    }

    public static void LogLoginAttempt(
      int accountId,
      string accountName,
      string ip,
      string mac,
      bool success,
      string reason)
    {
      try
      {
        using (MySqlConnection connection = new MySqlConnection(Database.AuthConnectionString))
        {
          connection.Open();
          using (MySqlCommand mySqlCommand = new MySqlCommand("INSERT INTO login_history (account_id, account_name, ip_address, mac_address, success, failure_reason, attempted_at) VALUES (@aid, @name, @ip, @mac, @success, @reason, NOW())", connection))
          {
            mySqlCommand.Parameters.AddWithValue("@aid", (object) accountId);
            mySqlCommand.Parameters.AddWithValue("@name", (object) (accountName ?? ""));
            mySqlCommand.Parameters.AddWithValue("@ip", (object) (ip ?? ""));
            mySqlCommand.Parameters.AddWithValue("@mac", (object) (mac ?? ""));
            mySqlCommand.Parameters.AddWithValue("@success", (object) (success ? 1 : 0));
            mySqlCommand.Parameters.AddWithValue("@reason", (object) (reason ?? ""));
            mySqlCommand.ExecuteNonQuery();
          }
        }
      }
      catch
      {
      }
    }

    public static void LogAuditAction(
      string action,
      int targetAccountId,
      string targetInfo,
      string details)
    {
      try
      {
        using (MySqlConnection connection = new MySqlConnection(Database.AuthConnectionString))
        {
          connection.Open();
          using (MySqlCommand mySqlCommand = new MySqlCommand("INSERT INTO admin_audit_log (action, target_account_id, target_info, details, performed_at) VALUES (@action, @tid, @tinfo, @details, NOW())", connection))
          {
            mySqlCommand.Parameters.AddWithValue("@action", (object) action);
            mySqlCommand.Parameters.AddWithValue("@tid", (object) targetAccountId);
            mySqlCommand.Parameters.AddWithValue("@tinfo", (object) (targetInfo ?? ""));
            mySqlCommand.Parameters.AddWithValue("@details", (object) (details ?? ""));
            mySqlCommand.ExecuteNonQuery();
          }
        }
      }
      catch
      {
      }
    }

    public static void RecordPlayerSnapshot(int playerCount, int serverCount)
    {
      try
      {
        using (MySqlConnection connection = new MySqlConnection(Database.AuthConnectionString))
        {
          connection.Open();
          using (MySqlCommand mySqlCommand = new MySqlCommand("INSERT INTO player_snapshots (player_count, server_count, snapshot_at) VALUES (@pc, @sc, NOW())", connection))
          {
            mySqlCommand.Parameters.AddWithValue("@pc", (object) playerCount);
            mySqlCommand.Parameters.AddWithValue("@sc", (object) serverCount);
            mySqlCommand.ExecuteNonQuery();
          }
          using (MySqlCommand mySqlCommand = new MySqlCommand("DELETE FROM player_snapshots WHERE snapshot_at < DATE_SUB(NOW(), INTERVAL 7 DAY)", connection))
            mySqlCommand.ExecuteNonQuery();
        }
      }
      catch
      {
      }
    }

    public static void ExecuteSql(string Query, string connStr)
    {
      try
      {
        using (MySqlConnection connection = new MySqlConnection(connStr))
        {
          connection.Open();
          using (MySqlCommand mySqlCommand = new MySqlCommand(Query, connection))
            mySqlCommand.ExecuteNonQuery();
        }
      }
      catch
      {
      }
    }

    public static void LoginReply(
      AuthClient Client,
      int AccountId,
      int dwData,
      string IPAddress,
      uint Port)
    {
      using (RecycledPacket recycledPacket = new RecycledPacket())
      {
        Packet stream = recycledPacket.GetStream();
        new MsgLoginReply(AccountId, dwData, IPAddress, Port).ToBytes(stream);
        Client.Network.Send(stream);
      }
    }

    public static bool ConnectionTest(
      string u,
      string p,
      string d,
      string h,
      ushort prt,
      ref string cs)
    {
      MySqlConnectionStringBuilder connectionStringBuilder1 = new MySqlConnectionStringBuilder();
      connectionStringBuilder1.Server = h;
      connectionStringBuilder1.UserID = u;
      connectionStringBuilder1.Password = p;
      connectionStringBuilder1.Database = d;
      connectionStringBuilder1.Port = (uint) prt;
      MySqlConnectionStringBuilder connectionStringBuilder2 = connectionStringBuilder1;
      cs = connectionStringBuilder2.ConnectionString;
      try
      {
        using (MySqlConnection mySqlConnection = new MySqlConnection(cs))
        {
          mySqlConnection.Open();
          return true;
        }
      }
      catch
      {
        return false;
      }
    }
  }
}
