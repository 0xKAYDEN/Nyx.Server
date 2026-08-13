// Decompiled with JetBrains decompiler
// Type: AccountServer.BruteForce
// Assembly: AccountServerBinary2015, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: EFCA16AA-F384-44A9-86B8-5D37A9F63575
// Assembly location: D:\Conquer Data\Important\Conquer_Online Source_v6159\AccountServer\AccountServerBinary2015.dll

using MySql.Data.MySqlClient;
using System;
using System.Collections.Concurrent;

#nullable enable
namespace AccountServer
{
  public class BruteForce
  {
    private static BruteForce _instance;
    public readonly ConcurrentDictionary<string, LoginTry> BruteForceTry;
    public readonly ConcurrentDictionary<string, bool> BruteForceBans;
    public static int BanDurationHours = 24;

    public static BruteForce Instance
    {
      get => BruteForce._instance ?? (BruteForce._instance = new BruteForce());
    }

    private BruteForce()
    {
      this.BruteForceTry = new ConcurrentDictionary<string, LoginTry>();
      this.BruteForceBans = new ConcurrentDictionary<string, bool>();
      this.LoadBruteForceBans();
    }

    private void LoadBruteForceBans()
    {
      try
      {
        using (MySqlConnection connection = new MySqlConnection(Database.AuthConnectionString))
        {
          connection.Open();
          using (MySqlCommand mySqlCommand = new MySqlCommand("SELECT `ip` FROM `bruteforce_bans` WHERE `expires_at` IS NULL OR `expires_at` > NOW()", connection))
          {
            using (MySqlDataReader mySqlDataReader = mySqlCommand.ExecuteReader())
            {
              while (mySqlDataReader.Read())
                this.BruteForceBans.TryAdd(mySqlDataReader.GetString("ip"), true);
            }
          }
        }
      }
      catch (Exception ex)
      {
        Console.WriteLine((object) ex);
      }
    }

    public void BanIp(string ip, int durationHours = 0)
    {
      if (ip == "127.0.0.1")
        return;
      int num = durationHours > 0 ? durationHours : BruteForce.BanDurationHours;
      try
      {
        using (MySqlConnection connection = new MySqlConnection(Database.AuthConnectionString))
        {
          connection.Open();
          using (MySqlCommand mySqlCommand = new MySqlCommand(num > 0 ? "INSERT INTO `bruteforce_bans` SET ip = @ip, banned_at = NOW(), expires_at = DATE_ADD(NOW(), INTERVAL @hours HOUR) ON DUPLICATE KEY UPDATE banned_at = NOW(), expires_at = DATE_ADD(NOW(), INTERVAL @hours HOUR)" : "INSERT INTO `bruteforce_bans` SET ip = @ip, banned_at = NOW(), expires_at = NULL ON DUPLICATE KEY UPDATE banned_at = NOW(), expires_at = NULL", connection))
          {
            mySqlCommand.Parameters.AddWithValue("@ip", (object) ip);
            if (num > 0)
              mySqlCommand.Parameters.AddWithValue("@hours", (object) num);
            mySqlCommand.ExecuteNonQuery();
          }
        }
      }
      catch (Exception ex)
      {
        Console.WriteLine((object) ex);
      }
    }

    public void CleanExpiredBans()
    {
      try
      {
        using (MySqlConnection connection = new MySqlConnection(Database.AuthConnectionString))
        {
          connection.Open();
          using (MySqlCommand mySqlCommand = new MySqlCommand("SELECT ip FROM bruteforce_bans WHERE expires_at IS NOT NULL AND expires_at <= NOW()", connection))
          {
            using (MySqlDataReader mySqlDataReader = mySqlCommand.ExecuteReader())
            {
              while (mySqlDataReader.Read())
                this.BruteForceBans.TryRemove(mySqlDataReader.GetString("ip"), out bool _);
            }
          }
          using (MySqlCommand mySqlCommand = new MySqlCommand("DELETE FROM bruteforce_bans WHERE expires_at IS NOT NULL AND expires_at <= NOW()", connection))
          {
            int num = mySqlCommand.ExecuteNonQuery();
            if (num <= 0)
              return;
            World.FormInstance?.WriteLine("SECURITY: Cleaned {0} expired IP ban(s).", (object) num);
          }
        }
      }
      catch
      {
      }
    }

    public bool Attempt(AuthClient client)
    {
      string str = client.Network.RemoteIP();
      if (this.BruteForceBans.ContainsKey(str))
      {
        Database.LoginReply(client, 0, 69, "", 0U);
        return false;
      }
      DateTime utcNow;
      if (!this.BruteForceTry.ContainsKey(str))
      {
        LoginTry loginTry1 = new LoginTry();
        loginTry1.AuthTry = 0;
        utcNow = DateTime.UtcNow;
        loginTry1.TriedAt = utcNow.AddSeconds(-3.0);
        LoginTry loginTry2 = loginTry1;
        this.BruteForceTry.TryAdd(str, loginTry2);
      }
      LoginTry newValue = this.BruteForceTry[str];
      utcNow = DateTime.UtcNow;
      if (utcNow.Subtract(newValue.TriedAt).TotalMilliseconds <= 1000.0)
      {
        newValue.TriedAt = DateTime.UtcNow;
        ++newValue.AuthTry;
        this.BruteForceTry.TryUpdate(str, newValue, this.BruteForceTry[str]);
        if (newValue.AuthTry >= 7)
        {
          if (this.BruteForceBans.TryAdd(str, true))
          {
            this.BanIp(str);
            Database.LoginReply(client, 0, 69, "", 0U);
            World.FormInstance?.WriteLine("SECURITY: Brute force ban triggered for IP {0}.", (object) str);
            Database.LogAuditAction("BruteForce Ban", 0, str, "Auto-banned after 7 rapid attempts");
          }
        }
        else
          Database.LoginReply(client, 0, 9001, "", 0U);
        return false;
      }
      newValue.TriedAt = DateTime.UtcNow;
      newValue.AuthTry = 1;
      return true;
    }
  }
}
