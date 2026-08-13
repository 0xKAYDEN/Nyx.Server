// Decompiled with JetBrains decompiler
// Type: AccountServer.MainWindow
// Assembly: AccountServerBinary2015, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: EFCA16AA-F384-44A9-86B8-5D37A9F63575
// Assembly location: D:\Conquer Data\Important\Conquer_Online Source_v6159\AccountServer\AccountServerBinary2015.dll

using MySql.Data.MySqlClient;
using System;
using System.CodeDom.Compiler;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Threading;

#nullable enable
namespace AccountServer
{
  public partial class MainWindow : Window, IComponentConnector, IStyleConnector
  {
    private DateTime _startTime = DateTime.Now;
    private DispatcherTimer _uptimeTimer;
    private DispatcherTimer _refreshTimer;
    private DispatcherTimer _vipEnforcementTimer;
    private DispatcherTimer _snapshotTimer;
    private DispatcherTimer _bruteForceCleanupTimer;
    internal 
    #nullable disable
    TextBlock UptimeLabel;
    internal RadioButton NavDashboard;
    internal Grid PanelDashboard;
    internal ListBox listBoxLog;
    internal Grid PanelPlayers;
    internal TextBox PlayerSearchBox;
    internal Button BulkKickBtn;
    internal Button BulkBanBtn;
    internal DataGrid PlayersGrid;
    internal Grid PanelLookup;
    internal TextBox LookupSearchBox;
    internal TextBox VipLevelBox;
    internal TextBox VipDaysBox;
    internal Grid PanelSecurity;
    internal TextBox ManualIpBanBox;
    internal TextBox ManualMacBanBox;
    internal Grid PanelLogs;
    internal CheckBox AutoScrollToggle;
    internal ListBox listBoxLogFull;
    internal Grid PanelAudit;
    internal Grid PanelSettings;
    internal CheckBox GmOnlyToggle;
    private bool _contentLoaded;

    public 
    #nullable enable
    MainViewModel ViewModel { get; set; }

    public MainWindow()
    {
      this.InitializeComponent();
      this.ViewModel = new MainViewModel();
      this.DataContext = (object) this.ViewModel;
      World.FormInstance = this;
      this.Loaded += new RoutedEventHandler(this.MainWindow_Loaded);
    }

    protected override void OnClosed(EventArgs e)
    {
      base.OnClosed(e);
      Environment.Exit(0);
    }

    private void MainWindow_Loaded(object sender, RoutedEventArgs e)
    {
      try
      {
        this.SetupTimers();
      }
      catch
      {
      }
      try
      {
        this.LoadConfig();
      }
      catch
      {
      }
      try
      {
        this.StartServer();
      }
      catch
      {
      }
    }

    private void StartServer()
    {
      try
      {
        string str = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Config.ini");
        if (!File.Exists(str))
          return;
        IniFile iniFile = new IniFile(str);
        Database.ConnectionTest(iniFile.ReadString("AuthDatabase", "User"), iniFile.ReadString("AuthDatabase", "Pass"), iniFile.ReadString("AuthDatabase", "Name"), iniFile.ReadString("AuthDatabase", "Host"), iniFile.ReadUInt16("AuthDatabase", "Port"), ref Database.AuthConnectionString);
        Database.ConnectionTest(iniFile.ReadString("GameDatabase", "User"), iniFile.ReadString("GameDatabase", "Pass"), iniFile.ReadString("GameDatabase", "Name"), iniFile.ReadString("GameDatabase", "Host"), iniFile.ReadUInt16("GameDatabase", "Port"), ref Database.GameConnectionString);
        World.LoginServer = new AuthServer(iniFile.ReadUInt16("AccountServer", "AuthPort"));
        World.PointServer = new PointServer(iniFile.ReadUInt16("AccountServer", "LinkPort"));
        World.Factory.Start();
        this.WriteLine("SYSTEM: Account Server engine and listeners online.");
      }
      catch (Exception ex)
      {
        this.WriteLine("STARTUP ERROR: {0}", (object) ex.Message);
      }
    }

    private void SetupTimers()
    {
      this._uptimeTimer = new DispatcherTimer()
      {
        Interval = TimeSpan.FromSeconds(1.0)
      };
      this._uptimeTimer.Tick += (EventHandler) ((s, e) =>
      {
        TimeSpan timeSpan = DateTime.Now - this._startTime;
        TextBlock uptimeLabel = this.UptimeLabel;
        DefaultInterpolatedStringHandler interpolatedStringHandler = new DefaultInterpolatedStringHandler(15, 4);
        interpolatedStringHandler.AppendLiteral("Uptime: ");
        interpolatedStringHandler.AppendFormatted<int>(timeSpan.Days);
        interpolatedStringHandler.AppendLiteral("d ");
        interpolatedStringHandler.AppendFormatted<int>(timeSpan.Hours);
        interpolatedStringHandler.AppendLiteral("h ");
        interpolatedStringHandler.AppendFormatted<int>(timeSpan.Minutes);
        interpolatedStringHandler.AppendLiteral("m ");
        interpolatedStringHandler.AppendFormatted<int>(timeSpan.Seconds);
        interpolatedStringHandler.AppendLiteral(nameof (s));
        string stringAndClear = interpolatedStringHandler.ToStringAndClear();
        uptimeLabel.Text = stringAndClear;
      });
      this._uptimeTimer.Start();
      this._refreshTimer = new DispatcherTimer()
      {
        Interval = TimeSpan.FromSeconds(10.0)
      };
      this._refreshTimer.Tick += (EventHandler) ((s, e) =>
      {
        try
        {
          this.RefreshOnlinePlayers();
        }
        catch
        {
        }
      });
      this._refreshTimer.Start();
      this._vipEnforcementTimer = new DispatcherTimer()
      {
        Interval = TimeSpan.FromSeconds(60.0)
      };
      this._vipEnforcementTimer.Tick += (EventHandler) ((s, e) =>
      {
        try
        {
          this.EnforceVipExpiration();
        }
        catch
        {
        }
      });
      this._vipEnforcementTimer.Start();
      this._snapshotTimer = new DispatcherTimer()
      {
        Interval = TimeSpan.FromMinutes(15.0)
      };
      this._snapshotTimer.Tick += (EventHandler) ((s, e) =>
      {
        try
        {
          Database.RecordPlayerSnapshot(this.ViewModel.PlayerCount, this.ViewModel.ServerCount);
          this.LoadPlayerSnapshots();
        }
        catch
        {
        }
      });
      this._snapshotTimer.Start();
      this._bruteForceCleanupTimer = new DispatcherTimer()
      {
        Interval = TimeSpan.FromMinutes(5.0)
      };
      this._bruteForceCleanupTimer.Tick += (EventHandler) ((s, e) =>
      {
        try
        {
          BruteForce.Instance.CleanExpiredBans();
        }
        catch
        {
        }
      });
      this._bruteForceCleanupTimer.Start();
      try
      {
        this.LoadPlayerSnapshots();
      }
      catch
      {
      }
      try
      {
        this.RefreshDashboardStats();
      }
      catch
      {
      }
    }

    private void Nav_Checked(object sender, RoutedEventArgs e)
    {
      string tag;
      int num;
      if (sender is RadioButton radioButton)
      {
        tag = radioButton.Tag as string;
        num = tag != null ? 1 : 0;
      }
      else
        num = 0;
      if (num == 0)
        return;
      this.PanelDashboard.Visibility = tag == "Dashboard" ? Visibility.Visible : Visibility.Collapsed;
      this.PanelPlayers.Visibility = tag == "Players" ? Visibility.Visible : Visibility.Collapsed;
      this.PanelLookup.Visibility = tag == "Lookup" ? Visibility.Visible : Visibility.Collapsed;
      this.PanelSecurity.Visibility = tag == "Security" ? Visibility.Visible : Visibility.Collapsed;
      this.PanelLogs.Visibility = tag == "Logs" ? Visibility.Visible : Visibility.Collapsed;
      this.PanelAudit.Visibility = tag == "Audit" ? Visibility.Visible : Visibility.Collapsed;
      this.PanelSettings.Visibility = tag == "Settings" ? Visibility.Visible : Visibility.Collapsed;
      if (tag == "Security")
      {
        try
        {
          this.RefreshBruteForceList();
          this.RefreshMacBanList();
        }
        catch
        {
        }
      }
      if (tag == "Audit")
      {
        try
        {
          this.RefreshAuditLog();
        }
        catch
        {
        }
      }
    }

    public void WriteLine(string format, params object[] args)
    {
      DefaultInterpolatedStringHandler interpolatedStringHandler = new DefaultInterpolatedStringHandler(3, 2);
      interpolatedStringHandler.AppendLiteral("[");
      interpolatedStringHandler.AppendFormatted<DateTime>(DateTime.Now, "HH:mm:ss");
      interpolatedStringHandler.AppendLiteral("] ");
      interpolatedStringHandler.AppendFormatted(string.Format(format, args));
      this.ViewModel.AddLogMessage(interpolatedStringHandler.ToStringAndClear());
      try
      {
        CheckBox autoScrollToggle = this.AutoScrollToggle;
        if (autoScrollToggle == null || !autoScrollToggle.IsChecked.GetValueOrDefault())
          return;
        ListBox listBoxLog = this.listBoxLog;
        if (listBoxLog != null && listBoxLog.Items.Count > 0)
          this.listBoxLog.ScrollIntoView(this.listBoxLog.Items[this.listBoxLog.Items.Count - 1]);
        ListBox listBoxLogFull = this.listBoxLogFull;
        if (listBoxLogFull != null && listBoxLogFull.Items.Count > 0)
          this.listBoxLogFull.ScrollIntoView(this.listBoxLogFull.Items[this.listBoxLogFull.Items.Count - 1]);
      }
      catch
      {
      }
    }

    public void RefreshOnlinePlayers()
    {
      try
      {
        using (MySqlConnection mySqlConnection = new MySqlConnection(Database.AuthConnectionString))
        {
          mySqlConnection.Open();
          using (MySqlCommand mySqlCommand = new MySqlCommand("SELECT a.id, a.name, a.online_us, v.vip_level, v.vip_expires\r\n                                   FROM accounts a LEFT JOIN vips v ON a.id = v.account_id\r\n                                   WHERE a.online_us = 1", mySqlConnection))
          {
            using (MySqlDataReader mySqlDataReader = mySqlCommand.ExecuteReader())
            {
              this.ViewModel.OnlinePlayers.Clear();
              while (mySqlDataReader.Read())
              {
                int int32 = mySqlDataReader.GetInt32("id");
                string str1 = mySqlDataReader.GetString("name");
                int ordinal1 = mySqlDataReader.GetOrdinal("vip_level");
                int num = mySqlDataReader.IsDBNull(ordinal1) ? 0 : mySqlDataReader.GetInt32(ordinal1);
                int ordinal2 = mySqlDataReader.GetOrdinal("vip_expires");
                DateTime? nullable = mySqlDataReader.IsDBNull(ordinal2) ? new DateTime?() : new DateTime?(mySqlDataReader.GetDateTime(ordinal2));
                string str2 = "";
                if (num > 0 && nullable.HasValue)
                {
                  if (nullable.Value <= DateTime.Now)
                  {
                    this.DeleteVipRecord(int32, mySqlConnection);
                    num = 0;
                    nullable = new DateTime?();
                  }
                  else
                  {
                    TimeSpan timeSpan = nullable.Value - DateTime.Now;
                    DefaultInterpolatedStringHandler interpolatedStringHandler;
                    string stringAndClear;
                    if (timeSpan.TotalDays < 1.0)
                    {
                      interpolatedStringHandler = new DefaultInterpolatedStringHandler(3, 2);
                      interpolatedStringHandler.AppendFormatted<int>(timeSpan.Hours);
                      interpolatedStringHandler.AppendLiteral("h ");
                      interpolatedStringHandler.AppendFormatted<int>(timeSpan.Minutes);
                      interpolatedStringHandler.AppendLiteral("m");
                      stringAndClear = interpolatedStringHandler.ToStringAndClear();
                    }
                    else
                    {
                      interpolatedStringHandler = new DefaultInterpolatedStringHandler(3, 2);
                      interpolatedStringHandler.AppendFormatted<int>((int) timeSpan.TotalDays);
                      interpolatedStringHandler.AppendLiteral("d ");
                      interpolatedStringHandler.AppendFormatted<int>(timeSpan.Hours);
                      interpolatedStringHandler.AppendLiteral("h");
                      stringAndClear = interpolatedStringHandler.ToStringAndClear();
                    }
                    str2 = stringAndClear;
                  }
                }
                this.ViewModel.OnlinePlayers.Add(new AccountModel()
                {
                  Id = int32,
                  CharacterName = str1,
                  VipLevel = num,
                  ExpirationDate = nullable,
                  TimeRemaining = str2
                });
              }
            }
          }
        }
        this.ViewModel.PlayerCount = this.ViewModel.OnlinePlayers.Count;
        this.ViewModel.ServerCount = World.Servers.Count;
        this.ViewModel.RefreshFilteredPlayers();
        this.ViewModel.OnPropertyChanged("NoServersVisible");
        this.RefreshDashboardStats();
      }
      catch (Exception ex)
      {
        World.DebugLog("RefreshPlayers: " + ex.Message);
      }
    }

    private void DeleteVipRecord(int accountId, MySqlConnection conn = null)
    {
      bool flag = conn == null;
      try
      {
        if (flag)
        {
          conn = new MySqlConnection(Database.AuthConnectionString);
          conn.Open();
        }
        using (MySqlCommand mySqlCommand = new MySqlCommand("DELETE FROM vips WHERE account_id = @id", conn))
        {
          mySqlCommand.Parameters.AddWithValue("@id", (object) accountId);
          mySqlCommand.ExecuteNonQuery();
        }
        using (MySqlCommand mySqlCommand = new MySqlCommand("UPDATE accounts SET vip = 0 WHERE id = @id", conn))
        {
          mySqlCommand.Parameters.AddWithValue("@id", (object) accountId);
          mySqlCommand.ExecuteNonQuery();
        }
        this.WriteLine("VIP SYSTEM: Account {0} VIP expired — record cleaned.", (object) accountId);
      }
      catch
      {
      }
      finally
      {
        if (flag && conn != null)
          conn.Dispose();
      }
    }

    private void EnforceVipExpiration()
    {
      try
      {
        using (MySqlConnection mySqlConnection = new MySqlConnection(Database.AuthConnectionString))
        {
          mySqlConnection.Open();
          string cmdText = "SELECT a.id, a.name FROM accounts a\r\n                                   INNER JOIN vips v ON a.id = v.account_id\r\n                                   WHERE a.online_us = 1 AND v.vip_expires <= NOW()";
          List<(int, string)> valueTupleList = new List<(int, string)>();
          using (MySqlCommand mySqlCommand = new MySqlCommand(cmdText, mySqlConnection))
          {
            using (MySqlDataReader mySqlDataReader = mySqlCommand.ExecuteReader())
            {
              while (mySqlDataReader.Read())
                valueTupleList.Add((mySqlDataReader.GetInt32("id"), mySqlDataReader.GetString("name")));
            }
          }
          foreach ((int accountId, string str) in valueTupleList)
          {
            this.KickPlayer(accountId);
            this.DeleteVipRecord(accountId, mySqlConnection);
            this.WriteLine("VIP SYSTEM: Account {0} ({1}) expired mid-session — kicked.", (object) accountId, (object) str);
          }
        }
      }
      catch
      {
      }
    }

    private void RefreshDashboardStats()
    {
      try
      {
        this.ViewModel.BruteForceCount = BruteForce.Instance.BruteForceBans.Count;
        this.ViewModel.ActiveBruteForceAttempts = BruteForce.Instance.BruteForceTry.Count;
        using (MySqlConnection connection = new MySqlConnection(Database.AuthConnectionString))
        {
          connection.Open();
          using (MySqlCommand mySqlCommand = new MySqlCommand("SELECT COUNT(*) FROM login_history WHERE success = 0 AND attempted_at >= DATE_SUB(NOW(), INTERVAL 24 HOUR)", connection))
            this.ViewModel.FailedLogins = Convert.ToInt32(mySqlCommand.ExecuteScalar());
          using (MySqlCommand mySqlCommand = new MySqlCommand("SELECT COUNT(*) FROM mac_bans", connection))
            this.ViewModel.MacBanCount = Convert.ToInt32(mySqlCommand.ExecuteScalar());
        }
      }
      catch
      {
      }
    }

    private void LoadPlayerSnapshots()
    {
      try
      {
        this.ViewModel.PlayerSnapshots.Clear();
        using (MySqlConnection connection = new MySqlConnection(Database.AuthConnectionString))
        {
          connection.Open();
          string cmdText = "SELECT player_count, snapshot_at FROM player_snapshots\r\n                                   WHERE snapshot_at >= DATE_SUB(NOW(), INTERVAL 24 HOUR)\r\n                                   ORDER BY snapshot_at ASC LIMIT 96";
          List<(int, DateTime)> source = new List<(int, DateTime)>();
          using (MySqlCommand mySqlCommand = new MySqlCommand(cmdText, connection))
          {
            using (MySqlDataReader mySqlDataReader = mySqlCommand.ExecuteReader())
            {
              while (mySqlDataReader.Read())
                source.Add((mySqlDataReader.GetInt32("player_count"), mySqlDataReader.GetDateTime("snapshot_at")));
            }
          }
          int num1 = source.Count > 0 ? source.Max<(int, DateTime)>((Func<(int, DateTime), int>) (s => s.count)) : 1;
          if (num1 < 1)
            num1 = 1;
          double num2 = 100.0;
          foreach ((int num3, DateTime dateTime) in source)
            this.ViewModel.PlayerSnapshots.Add(new PlayerSnapshotModel()
            {
              PlayerCount = num3,
              Time = dateTime.ToString("HH:mm"),
              BarHeight = (double) num3 / (double) num1 * num2
            });
        }
      }
      catch
      {
      }
    }

    private void LookupSearch_Click(object sender, RoutedEventArgs e)
    {
      this.PerformAccountLookup();
    }

    private void LookupSearch_KeyDown(object sender, KeyEventArgs e)
    {
      if (e.Key != 6)
        return;
      this.PerformAccountLookup();
    }

    private void PerformAccountLookup()
    {
      string s = this.LookupSearchBox.Text?.Trim();
      if (string.IsNullOrEmpty(s))
        return;
      try
      {
        using (MySqlConnection mySqlConnection = new MySqlConnection(Database.AuthConnectionString))
        {
          mySqlConnection.Open();
          string cmdText = !int.TryParse(s, out int _) ? "SELECT a.*, v.vip_level, v.vip_expires FROM accounts a LEFT JOIN vips v ON a.id = v.account_id WHERE a.name = @q LIMIT 1" : "SELECT a.*, v.vip_level, v.vip_expires FROM accounts a LEFT JOIN vips v ON a.id = v.account_id WHERE a.id = @q LIMIT 1";
          AccountProfileModel accountProfileModel = (AccountProfileModel) null;
          using (MySqlCommand mySqlCommand = new MySqlCommand(cmdText, mySqlConnection))
          {
            mySqlCommand.Parameters.AddWithValue("@q", (object) s);
            using (MySqlDataReader mySqlDataReader = mySqlCommand.ExecuteReader())
            {
              if (mySqlDataReader.Read())
              {
                int int32_1 = mySqlDataReader.GetInt32("banned");
                int ordinal1 = mySqlDataReader.GetOrdinal("vip_level");
                int int32_2 = mySqlDataReader.IsDBNull(ordinal1) ? 0 : mySqlDataReader.GetInt32(ordinal1);
                int ordinal2 = mySqlDataReader.GetOrdinal("vip_expires");
                DateTime? nullable = mySqlDataReader.IsDBNull(ordinal2) ? new DateTime?() : new DateTime?(mySqlDataReader.GetDateTime(ordinal2));
                string str1 = "None";
                if (int32_2 > 0 && nullable.HasValue && nullable.Value > DateTime.Now)
                {
                  DefaultInterpolatedStringHandler interpolatedStringHandler = new DefaultInterpolatedStringHandler(17, 2);
                  interpolatedStringHandler.AppendLiteral("Level ");
                  interpolatedStringHandler.AppendFormatted<int>(int32_2);
                  interpolatedStringHandler.AppendLiteral(" — expires ");
                  interpolatedStringHandler.AppendFormatted<DateTime>(nullable.Value, "yyyy-MM-dd HH:mm");
                  str1 = interpolatedStringHandler.ToStringAndClear();
                }
                int ordinal3 = mySqlDataReader.GetOrdinal("macaddr");
                string str2 = mySqlDataReader.IsDBNull(ordinal3) ? "" : mySqlDataReader.GetString(ordinal3);
                accountProfileModel = new AccountProfileModel()
                {
                  Id = mySqlDataReader.GetInt32("id"),
                  Username = mySqlDataReader.GetString("name"),
                  Status = int32_1 > 0 ? "Banned" : "Normal",
                  StatusColor = int32_1 > 0 ? (Brush) new SolidColorBrush(Color.FromRgb((byte) 248, (byte) 81, (byte) 73)) : (Brush) new SolidColorBrush(Color.FromRgb((byte) 63, (byte) 185, (byte) 80)),
                  AccountType = mySqlDataReader.GetInt32("type"),
                  MacAddress = str2,
                  LastIP = "",
                  VipLevel = int32_2,
                  VipExpires = nullable,
                  VipDisplay = str1,
                  IsOnline = mySqlDataReader.GetInt32("online_us") == 1
                };
              }
            }
          }
          if (accountProfileModel == null)
          {
            using (MySqlCommand mySqlCommand = new MySqlCommand("SELECT DISTINCT account_id FROM login_history WHERE ip_address = @q OR mac_address = @q ORDER BY attempted_at DESC LIMIT 1", mySqlConnection))
            {
              mySqlCommand.Parameters.AddWithValue("@q", (object) s);
              object obj = mySqlCommand.ExecuteScalar();
              if (obj != null)
              {
                this.LookupSearchBox.Text = obj.ToString();
                this.PerformAccountLookup();
                return;
              }
            }
            this.ViewModel.LookupProfile = new AccountProfileModel();
            int num = (int) MessageBox.Show("No account found for: " + s, "Lookup", MessageBoxButton.OK, MessageBoxImage.Asterisk);
          }
          else
          {
            using (MySqlCommand mySqlCommand = new MySqlCommand("SELECT ip_address FROM login_history WHERE account_id = @id ORDER BY attempted_at DESC LIMIT 1", mySqlConnection))
            {
              mySqlCommand.Parameters.AddWithValue("@id", (object) accountProfileModel.Id);
              object obj = mySqlCommand.ExecuteScalar();
              accountProfileModel.LastIP = obj?.ToString() ?? "Unknown";
            }
            this.ViewModel.LookupProfile = accountProfileModel;
            this.LoadRelatedAccounts(accountProfileModel.Id, accountProfileModel.LastIP, accountProfileModel.MacAddress, mySqlConnection);
            this.LoadAccountLoginHistory(accountProfileModel.Id, mySqlConnection);
          }
        }
      }
      catch (Exception ex)
      {
        this.WriteLine("SYSTEM: Lookup error — {0}", (object) ex.Message);
      }
    }

    private void LoadRelatedAccounts(int accountId, string ip, string mac, MySqlConnection conn)
    {
      this.ViewModel.RelatedAccounts.Clear();
      HashSet<int> intSet = new HashSet<int>() { accountId };
      if (!string.IsNullOrEmpty(ip))
      {
        using (MySqlCommand mySqlCommand = new MySqlCommand("SELECT DISTINCT lh.account_id, a.name FROM login_history lh INNER JOIN accounts a ON lh.account_id = a.id WHERE lh.ip_address = @ip AND lh.account_id != @aid ORDER BY lh.attempted_at DESC LIMIT 20", conn))
        {
          mySqlCommand.Parameters.AddWithValue("@ip", (object) ip);
          mySqlCommand.Parameters.AddWithValue("@aid", (object) accountId);
          using (MySqlDataReader mySqlDataReader = mySqlCommand.ExecuteReader())
          {
            while (mySqlDataReader.Read())
            {
              int int32 = mySqlDataReader.GetInt32("account_id");
              if (intSet.Add(int32))
                this.ViewModel.RelatedAccounts.Add(new RelatedAccountModel()
                {
                  Id = int32,
                  Username = mySqlDataReader.GetString("name"),
                  MatchType = "Same IP",
                  MatchValue = ip
                });
            }
          }
        }
      }
      if (string.IsNullOrEmpty(mac))
        return;
      using (MySqlCommand mySqlCommand = new MySqlCommand("SELECT id, name FROM accounts WHERE macaddr = @mac AND id != @aid LIMIT 20", conn))
      {
        mySqlCommand.Parameters.AddWithValue("@mac", (object) mac);
        mySqlCommand.Parameters.AddWithValue("@aid", (object) accountId);
        using (MySqlDataReader mySqlDataReader = mySqlCommand.ExecuteReader())
        {
          while (mySqlDataReader.Read())
          {
            int int32 = mySqlDataReader.GetInt32("id");
            if (intSet.Add(int32))
              this.ViewModel.RelatedAccounts.Add(new RelatedAccountModel()
              {
                Id = int32,
                Username = mySqlDataReader.GetString("name"),
                MatchType = "Same MAC",
                MatchValue = mac
              });
          }
        }
      }
    }

    private void LoadAccountLoginHistory(int accountId, MySqlConnection conn)
    {
      this.ViewModel.LoginHistory.Clear();
      using (MySqlCommand mySqlCommand = new MySqlCommand("SELECT * FROM login_history WHERE account_id = @id ORDER BY attempted_at DESC LIMIT 50", conn))
      {
        mySqlCommand.Parameters.AddWithValue("@id", (object) accountId);
        using (MySqlDataReader mySqlDataReader = mySqlCommand.ExecuteReader())
        {
          while (mySqlDataReader.Read())
            this.ViewModel.LoginHistory.Add(new LoginHistoryModel()
            {
              AccountName = mySqlDataReader.GetString("account_name"),
              IP = mySqlDataReader.GetString("ip_address"),
              Mac = mySqlDataReader.GetString("mac_address"),
              Result = mySqlDataReader.GetInt32("success") == 1 ? "Success" : "Failed",
              Reason = mySqlDataReader.GetString("failure_reason"),
              AttemptedAt = mySqlDataReader.GetDateTime("attempted_at").ToString("yyyy-MM-dd HH:mm:ss")
            });
        }
      }
    }

    private void GrantVip_Click(object sender, RoutedEventArgs e)
    {
      AccountProfileModel lookupProfile = this.ViewModel.LookupProfile;
      if (lookupProfile == null || lookupProfile.Id == 0)
        return;
      int result1;
      int result2;
      if (!int.TryParse(this.VipLevelBox.Text, out result1) || !int.TryParse(this.VipDaysBox.Text, out result2))
      {
        int num = (int) MessageBox.Show("Invalid VIP level or days.");
      }
      else
      {
        try
        {
          using (MySqlConnection connection = new MySqlConnection(Database.AuthConnectionString))
          {
            connection.Open();
            using (MySqlCommand mySqlCommand = new MySqlCommand("INSERT INTO vips (account_id, vip_level, days_left, vip_expires)\r\n                          VALUES (@id, @level, @days, DATE_ADD(NOW(), INTERVAL @days DAY))\r\n                          ON DUPLICATE KEY UPDATE vip_level = @level, days_left = @days, vip_expires = DATE_ADD(NOW(), INTERVAL @days DAY)", connection))
            {
              mySqlCommand.Parameters.AddWithValue("@id", (object) lookupProfile.Id);
              mySqlCommand.Parameters.AddWithValue("@level", (object) result1);
              mySqlCommand.Parameters.AddWithValue("@days", (object) result2);
              mySqlCommand.ExecuteNonQuery();
            }
            using (MySqlCommand mySqlCommand = new MySqlCommand("UPDATE accounts SET vip = @level WHERE id = @id", connection))
            {
              mySqlCommand.Parameters.AddWithValue("@level", (object) result1);
              mySqlCommand.Parameters.AddWithValue("@id", (object) lookupProfile.Id);
              mySqlCommand.ExecuteNonQuery();
            }
          }
          int id = lookupProfile.Id;
          string username = lookupProfile.Username;
          DefaultInterpolatedStringHandler interpolatedStringHandler = new DefaultInterpolatedStringHandler(13, 2);
          interpolatedStringHandler.AppendLiteral("Level ");
          interpolatedStringHandler.AppendFormatted<int>(result1);
          interpolatedStringHandler.AppendLiteral(", ");
          interpolatedStringHandler.AppendFormatted<int>(result2);
          interpolatedStringHandler.AppendLiteral(" days");
          string stringAndClear = interpolatedStringHandler.ToStringAndClear();
          Database.LogAuditAction("Grant VIP", id, username, stringAndClear);
          this.WriteLine("VIP SYSTEM: Granted VIP {0} for {1} days to account {2} ({3}).", (object) result1, (object) result2, (object) lookupProfile.Id, (object) lookupProfile.Username);
          this.PerformAccountLookup();
        }
        catch (Exception ex)
        {
          this.WriteLine("VIP ERROR: {0}", (object) ex.Message);
        }
      }
    }

    private void ExtendVip_Click(object sender, RoutedEventArgs e)
    {
      AccountProfileModel lookupProfile = this.ViewModel.LookupProfile;
      if (lookupProfile == null || lookupProfile.Id == 0)
        return;
      int result;
      if (!int.TryParse(this.VipDaysBox.Text, out result))
      {
        int num = (int) MessageBox.Show("Invalid days.");
      }
      else
      {
        try
        {
          using (MySqlConnection connection = new MySqlConnection(Database.AuthConnectionString))
          {
            connection.Open();
            using (MySqlCommand mySqlCommand = new MySqlCommand("UPDATE vips SET vip_expires = DATE_ADD(\r\n                            CASE WHEN vip_expires > NOW() THEN vip_expires ELSE NOW() END,\r\n                            INTERVAL @days DAY),\r\n                          days_left = DATEDIFF(\r\n                            DATE_ADD(CASE WHEN vip_expires > NOW() THEN vip_expires ELSE NOW() END, INTERVAL @days DAY), NOW())\r\n                          WHERE account_id = @id", connection))
            {
              mySqlCommand.Parameters.AddWithValue("@id", (object) lookupProfile.Id);
              mySqlCommand.Parameters.AddWithValue("@days", (object) result);
              mySqlCommand.ExecuteNonQuery();
            }
          }
          int id = lookupProfile.Id;
          string username = lookupProfile.Username;
          DefaultInterpolatedStringHandler interpolatedStringHandler = new DefaultInterpolatedStringHandler(6, 1);
          interpolatedStringHandler.AppendLiteral("+");
          interpolatedStringHandler.AppendFormatted<int>(result);
          interpolatedStringHandler.AppendLiteral(" days");
          string stringAndClear = interpolatedStringHandler.ToStringAndClear();
          Database.LogAuditAction("Extend VIP", id, username, stringAndClear);
          this.WriteLine("VIP SYSTEM: Extended VIP by {0} days for account {1} ({2}).", (object) result, (object) lookupProfile.Id, (object) lookupProfile.Username);
          this.PerformAccountLookup();
        }
        catch (Exception ex)
        {
          this.WriteLine("VIP ERROR: {0}", (object) ex.Message);
        }
      }
    }

    private void RevokeVip_Click(object sender, RoutedEventArgs e)
    {
      AccountProfileModel lookupProfile = this.ViewModel.LookupProfile;
      if (lookupProfile == null || lookupProfile.Id == 0 || MessageBox.Show("Revoke VIP from " + lookupProfile.Username + "?", "Confirm", MessageBoxButton.YesNo) != MessageBoxResult.Yes)
        return;
      this.DeleteVipRecord(lookupProfile.Id);
      Database.LogAuditAction("Revoke VIP", lookupProfile.Id, lookupProfile.Username, "VIP revoked by admin");
      this.WriteLine("VIP SYSTEM: Revoked VIP from account {0} ({1}).", (object) lookupProfile.Id, (object) lookupProfile.Username);
      this.PerformAccountLookup();
    }

    private void LookupKick_Click(object sender, RoutedEventArgs e)
    {
      AccountProfileModel lookupProfile = this.ViewModel.LookupProfile;
      if (lookupProfile == null || lookupProfile.Id == 0)
        return;
      this.KickPlayer(lookupProfile.Id);
      Database.LogAuditAction("Kick", lookupProfile.Id, lookupProfile.Username, "Kicked from lookup panel");
      this.WriteLine("SESSION: Admin kicked account {0} ({1}).", (object) lookupProfile.Id, (object) lookupProfile.Username);
      this.PerformAccountLookup();
    }

    private void LookupBan_Click(object sender, RoutedEventArgs e)
    {
      AccountProfileModel lookupProfile = this.ViewModel.LookupProfile;
      if (lookupProfile == null || lookupProfile.Id == 0 || MessageBox.Show("Ban account " + lookupProfile.Username + "?", "Confirm", MessageBoxButton.YesNo) != MessageBoxResult.Yes)
        return;
      DefaultInterpolatedStringHandler interpolatedStringHandler = new DefaultInterpolatedStringHandler(44, 1);
      interpolatedStringHandler.AppendLiteral("UPDATE accounts SET banned = 1 WHERE id = '");
      interpolatedStringHandler.AppendFormatted<int>(lookupProfile.Id);
      interpolatedStringHandler.AppendLiteral("'");
      Database.ExecuteSql(interpolatedStringHandler.ToStringAndClear(), Database.AuthConnectionString);
      this.KickPlayer(lookupProfile.Id);
      Database.LogAuditAction("Ban Account", lookupProfile.Id, lookupProfile.Username, "Banned from lookup panel");
      this.WriteLine("SECURITY: Admin banned account {0} ({1}).", (object) lookupProfile.Id, (object) lookupProfile.Username);
      this.PerformAccountLookup();
    }

    private void LookupUnban_Click(object sender, RoutedEventArgs e)
    {
      AccountProfileModel lookupProfile = this.ViewModel.LookupProfile;
      if (lookupProfile == null || lookupProfile.Id == 0)
        return;
      DefaultInterpolatedStringHandler interpolatedStringHandler = new DefaultInterpolatedStringHandler(44, 1);
      interpolatedStringHandler.AppendLiteral("UPDATE accounts SET banned = 0 WHERE id = '");
      interpolatedStringHandler.AppendFormatted<int>(lookupProfile.Id);
      interpolatedStringHandler.AppendLiteral("'");
      Database.ExecuteSql(interpolatedStringHandler.ToStringAndClear(), Database.AuthConnectionString);
      Database.LogAuditAction("Unban Account", lookupProfile.Id, lookupProfile.Username, "Unbanned from lookup panel");
      this.WriteLine("SECURITY: Admin unbanned account {0} ({1}).", (object) lookupProfile.Id, (object) lookupProfile.Username);
      this.PerformAccountLookup();
    }

    private void LookupMacBan_Click(object sender, RoutedEventArgs e)
    {
      AccountProfileModel lookupProfile = this.ViewModel.LookupProfile;
      if (lookupProfile == null || lookupProfile.Id == 0 || string.IsNullOrEmpty(lookupProfile.MacAddress) || MessageBox.Show("MAC ban " + lookupProfile.MacAddress + "?\nThis will affect ALL accounts using this hardware.", "Confirm", MessageBoxButton.YesNo) != MessageBoxResult.Yes)
        return;
      this.BanMacAddress(lookupProfile.MacAddress);
      this.KickPlayer(lookupProfile.Id);
      Database.LogAuditAction("MAC Ban", lookupProfile.Id, lookupProfile.Username, "MAC: " + lookupProfile.MacAddress);
      this.WriteLine("SECURITY: Admin MAC-banned {0} (account {1}).", (object) lookupProfile.MacAddress, (object) lookupProfile.Username);
    }

    private void PlayerSearch_TextChanged(object sender, TextChangedEventArgs e)
    {
      this.ViewModel.PlayerSearchText = this.PlayerSearchBox.Text;
    }

    private void RefreshPlayers_Click(object sender, RoutedEventArgs e)
    {
      this.RefreshOnlinePlayers();
    }

    private void PlayerCheckbox_Click(object sender, RoutedEventArgs e)
    {
      this.ViewModel.NotifySelectionChanged();
    }

    private void KickButton_Click(object sender, RoutedEventArgs e)
    {
      AccountModel dataContext;
      int num;
      if (sender is Button button)
      {
        dataContext = button.DataContext as AccountModel;
        num = dataContext != null ? 1 : 0;
      }
      else
        num = 0;
      if (num == 0)
        return;
      this.KickPlayer(dataContext.Id);
      Database.LogAuditAction("Kick", dataContext.Id, dataContext.CharacterName, "Kicked from player list");
      this.WriteLine("SESSION: Admin kicked account {0} ({1}).", (object) dataContext.Id, (object) dataContext.CharacterName);
      this.RefreshOnlinePlayers();
    }

    private void BanButton_Click(object sender, RoutedEventArgs e)
    {
      AccountModel dataContext;
      int num;
      if (sender is Button button)
      {
        dataContext = button.DataContext as AccountModel;
        num = dataContext != null ? 1 : 0;
      }
      else
        num = 0;
      if (num == 0 || MessageBox.Show("Ban " + dataContext.CharacterName + "?", "Confirm", MessageBoxButton.YesNo) != MessageBoxResult.Yes)
        return;
      DefaultInterpolatedStringHandler interpolatedStringHandler = new DefaultInterpolatedStringHandler(44, 1);
      interpolatedStringHandler.AppendLiteral("UPDATE accounts SET banned = 1 WHERE id = '");
      interpolatedStringHandler.AppendFormatted<int>(dataContext.Id);
      interpolatedStringHandler.AppendLiteral("'");
      Database.ExecuteSql(interpolatedStringHandler.ToStringAndClear(), Database.AuthConnectionString);
      this.KickPlayer(dataContext.Id);
      Database.LogAuditAction("Ban Account", dataContext.Id, dataContext.CharacterName, "Banned from player list");
      this.WriteLine("SECURITY: Admin banned account {0} ({1}).", (object) dataContext.Id, (object) dataContext.CharacterName);
      this.RefreshOnlinePlayers();
    }

    private void MacBanButton_Click(object sender, RoutedEventArgs e)
    {
      AccountModel dataContext;
      int num1;
      if (sender is Button button)
      {
        dataContext = button.DataContext as AccountModel;
        num1 = dataContext != null ? 1 : 0;
      }
      else
        num1 = 0;
      if (num1 == 0)
        return;
      try
      {
        string mac = "";
        using (MySqlConnection connection = new MySqlConnection(Database.AuthConnectionString))
        {
          connection.Open();
          using (MySqlCommand mySqlCommand = new MySqlCommand("SELECT macaddr FROM accounts WHERE id = @id", connection))
          {
            mySqlCommand.Parameters.AddWithValue("@id", (object) dataContext.Id);
            mac = mySqlCommand.ExecuteScalar()?.ToString() ?? "";
          }
        }
        if (string.IsNullOrEmpty(mac))
        {
          int num2 = (int) MessageBox.Show("No MAC address on file.");
        }
        else
        {
          if (MessageBox.Show("MAC ban " + mac + "?", "Confirm", MessageBoxButton.YesNo) != MessageBoxResult.Yes)
            return;
          this.BanMacAddress(mac);
          this.KickPlayer(dataContext.Id);
          Database.LogAuditAction("MAC Ban", dataContext.Id, dataContext.CharacterName, "MAC: " + mac);
          this.WriteLine("SECURITY: MAC-banned {0} (account {1}).", (object) mac, (object) dataContext.CharacterName);
          this.RefreshOnlinePlayers();
        }
      }
      catch
      {
      }
    }

    private void BulkKick_Click(object sender, RoutedEventArgs e)
    {
      List<AccountModel> list = this.ViewModel.FilteredPlayers.Where<AccountModel>((Func<AccountModel, bool>) (p => p.IsSelected)).ToList<AccountModel>();
      if (list.Count == 0)
        return;
      DefaultInterpolatedStringHandler interpolatedStringHandler = new DefaultInterpolatedStringHandler(16, 1);
      interpolatedStringHandler.AppendLiteral("Kick ");
      interpolatedStringHandler.AppendFormatted<int>(list.Count);
      interpolatedStringHandler.AppendLiteral(" player(s)?");
      if (MessageBox.Show(interpolatedStringHandler.ToStringAndClear(), "Bulk Kick", MessageBoxButton.YesNo) != MessageBoxResult.Yes)
        return;
      foreach (AccountModel accountModel in list)
      {
        this.KickPlayer(accountModel.Id);
        int id = accountModel.Id;
        string characterName = accountModel.CharacterName;
        interpolatedStringHandler = new DefaultInterpolatedStringHandler(28, 1);
        interpolatedStringHandler.AppendLiteral("Part of bulk kick (");
        interpolatedStringHandler.AppendFormatted<int>(list.Count);
        interpolatedStringHandler.AppendLiteral(" players)");
        string stringAndClear = interpolatedStringHandler.ToStringAndClear();
        Database.LogAuditAction("Bulk Kick", id, characterName, stringAndClear);
      }
      this.WriteLine("SESSION: Admin bulk-kicked {0} player(s).", (object) list.Count);
      this.RefreshOnlinePlayers();
    }

    private void BulkBan_Click(object sender, RoutedEventArgs e)
    {
      List<AccountModel> list = this.ViewModel.FilteredPlayers.Where<AccountModel>((Func<AccountModel, bool>) (p => p.IsSelected)).ToList<AccountModel>();
      if (list.Count == 0)
        return;
      DefaultInterpolatedStringHandler interpolatedStringHandler = new DefaultInterpolatedStringHandler(45, 1);
      interpolatedStringHandler.AppendLiteral("BAN ");
      interpolatedStringHandler.AppendFormatted<int>(list.Count);
      interpolatedStringHandler.AppendLiteral(" player(s)? This cannot be easily undone.");
      if (MessageBox.Show(interpolatedStringHandler.ToStringAndClear(), "Bulk Ban", MessageBoxButton.YesNo, MessageBoxImage.Exclamation) != MessageBoxResult.Yes)
        return;
      foreach (AccountModel accountModel in list)
      {
        interpolatedStringHandler = new DefaultInterpolatedStringHandler(44, 1);
        interpolatedStringHandler.AppendLiteral("UPDATE accounts SET banned = 1 WHERE id = '");
        interpolatedStringHandler.AppendFormatted<int>(accountModel.Id);
        interpolatedStringHandler.AppendLiteral("'");
        Database.ExecuteSql(interpolatedStringHandler.ToStringAndClear(), Database.AuthConnectionString);
        this.KickPlayer(accountModel.Id);
        int id = accountModel.Id;
        string characterName = accountModel.CharacterName;
        interpolatedStringHandler = new DefaultInterpolatedStringHandler(27, 1);
        interpolatedStringHandler.AppendLiteral("Part of bulk ban (");
        interpolatedStringHandler.AppendFormatted<int>(list.Count);
        interpolatedStringHandler.AppendLiteral(" players)");
        string stringAndClear = interpolatedStringHandler.ToStringAndClear();
        Database.LogAuditAction("Bulk Ban", id, characterName, stringAndClear);
      }
      this.WriteLine("SECURITY: Admin bulk-banned {0} player(s).", (object) list.Count);
      this.RefreshOnlinePlayers();
    }

    private void RefreshBruteForce_Click(object sender, RoutedEventArgs e)
    {
      this.RefreshBruteForceList();
    }

    private void RefreshMacBans_Click(object sender, RoutedEventArgs e) => this.RefreshMacBanList();

    private void RefreshBruteForceList()
    {
      try
      {
        this.ViewModel.BannedIPs.Clear();
        using (MySqlConnection connection = new MySqlConnection(Database.AuthConnectionString))
        {
          connection.Open();
          using (MySqlCommand mySqlCommand = new MySqlCommand("SELECT * FROM bruteforce_bans ORDER BY banned_at DESC", connection))
          {
            using (MySqlDataReader mySqlDataReader = mySqlCommand.ExecuteReader())
            {
              while (mySqlDataReader.Read())
              {
                int ordinal = mySqlDataReader.GetOrdinal("expires_at");
                bool flag = mySqlDataReader.IsDBNull(ordinal);
                this.ViewModel.BannedIPs.Add(new BannedIPModel()
                {
                  IP = mySqlDataReader.GetString("ip"),
                  BannedAt = mySqlDataReader.GetDateTime("banned_at").ToString("yyyy-MM-dd HH:mm"),
                  ExpiresAt = flag ? "Permanent" : mySqlDataReader.GetDateTime(ordinal).ToString("yyyy-MM-dd HH:mm"),
                  IsPermanent = flag
                });
              }
            }
          }
        }
        this.ViewModel.BruteForceCount = this.ViewModel.BannedIPs.Count;
      }
      catch
      {
      }
    }

    private void RefreshMacBanList()
    {
      try
      {
        this.ViewModel.BannedMACs.Clear();
        using (MySqlConnection connection = new MySqlConnection(Database.AuthConnectionString))
        {
          connection.Open();
          using (MySqlCommand mySqlCommand = new MySqlCommand("SELECT mac_address FROM mac_bans ORDER BY id DESC", connection))
          {
            using (MySqlDataReader mySqlDataReader = mySqlCommand.ExecuteReader())
            {
              while (mySqlDataReader.Read())
                this.ViewModel.BannedMACs.Add(new BannedMACModel()
                {
                  MacAddress = mySqlDataReader.GetString("mac_address")
                });
            }
          }
        }
        this.ViewModel.MacBanCount = this.ViewModel.BannedMACs.Count;
      }
      catch
      {
      }
    }

    private void ManualIpBan_Click(object sender, RoutedEventArgs e)
    {
      string str = this.ManualIpBanBox.Text?.Trim();
      if (string.IsNullOrEmpty(str))
        return;
      BruteForce.Instance.BanIp(str);
      BruteForce.Instance.BruteForceBans.TryAdd(str, true);
      Database.LogAuditAction("Manual IP Ban", 0, str, "Permanently banned via security panel");
      this.WriteLine("SECURITY: Admin manually banned IP {0}.", (object) str);
      this.ManualIpBanBox.Text = "";
      this.RefreshBruteForceList();
    }

    private void ManualMacBan_Click(object sender, RoutedEventArgs e)
    {
      string str = this.ManualMacBanBox.Text?.Trim();
      if (string.IsNullOrEmpty(str))
        return;
      this.BanMacAddress(str);
      Database.LogAuditAction("Manual MAC Ban", 0, str, "Banned via security panel");
      this.WriteLine("SECURITY: Admin manually banned MAC {0}.", (object) str);
      this.ManualMacBanBox.Text = "";
      this.RefreshMacBanList();
    }

    private void UnbanIP_Click(object sender, RoutedEventArgs e)
    {
      BannedIPModel dataContext;
      int num;
      if (sender is Button button)
      {
        dataContext = button.DataContext as BannedIPModel;
        num = dataContext != null ? 1 : 0;
      }
      else
        num = 0;
      if (num == 0)
        return;
      try
      {
        using (MySqlConnection connection = new MySqlConnection(Database.AuthConnectionString))
        {
          connection.Open();
          using (MySqlCommand mySqlCommand = new MySqlCommand("DELETE FROM bruteforce_bans WHERE ip = @ip", connection))
          {
            mySqlCommand.Parameters.AddWithValue("@ip", (object) dataContext.IP);
            mySqlCommand.ExecuteNonQuery();
          }
        }
        BruteForce.Instance.BruteForceBans.TryRemove(dataContext.IP, out bool _);
        Database.LogAuditAction("Unban IP", 0, dataContext.IP, "Unbanned via security panel");
        this.WriteLine("SECURITY: Unbanned IP {0}.", (object) dataContext.IP);
        this.RefreshBruteForceList();
      }
      catch
      {
      }
    }

    private void UnbanMAC_Click(object sender, RoutedEventArgs e)
    {
      BannedMACModel dataContext;
      int num;
      if (sender is Button button)
      {
        dataContext = button.DataContext as BannedMACModel;
        num = dataContext != null ? 1 : 0;
      }
      else
        num = 0;
      if (num == 0)
        return;
      try
      {
        using (MySqlConnection connection = new MySqlConnection(Database.AuthConnectionString))
        {
          connection.Open();
          using (MySqlCommand mySqlCommand = new MySqlCommand("DELETE FROM mac_bans WHERE mac_address = @mac", connection))
          {
            mySqlCommand.Parameters.AddWithValue("@mac", (object) dataContext.MacAddress);
            mySqlCommand.ExecuteNonQuery();
          }
        }
        Database.LogAuditAction("Unban MAC", 0, dataContext.MacAddress, "Unbanned via security panel");
        this.WriteLine("SECURITY: Unbanned MAC {0}.", (object) dataContext.MacAddress);
        this.RefreshMacBanList();
      }
      catch
      {
      }
    }

    private void BanMacAddress(string mac)
    {
      try
      {
        using (MySqlConnection connection = new MySqlConnection(Database.AuthConnectionString))
        {
          connection.Open();
          using (MySqlCommand mySqlCommand = new MySqlCommand("INSERT IGNORE INTO mac_bans (mac_address) VALUES (@mac)", connection))
          {
            mySqlCommand.Parameters.AddWithValue("@mac", (object) mac);
            mySqlCommand.ExecuteNonQuery();
          }
        }
      }
      catch
      {
      }
    }

    private void RefreshAudit_Click(object sender, RoutedEventArgs e) => this.RefreshAuditLog();

    private void AuditFilter_Changed(object sender, RoutedEventArgs e)
    {
      if (this.ViewModel == null || !(sender is RadioButton radioButton))
        return;
      this.ViewModel.ActiveAuditFilter = radioButton.Content.ToString();
    }

    private void RefreshAuditLog()
    {
      try
      {
        this.ViewModel.AuditLogs.Clear();
        using (MySqlConnection connection = new MySqlConnection(Database.AuthConnectionString))
        {
          connection.Open();
          using (MySqlCommand mySqlCommand = new MySqlCommand("SELECT * FROM admin_audit_log ORDER BY performed_at DESC LIMIT 500", connection))
          {
            using (MySqlDataReader mySqlDataReader = mySqlCommand.ExecuteReader())
            {
              while (mySqlDataReader.Read())
                this.ViewModel.AuditLogs.Add(new AuditLogModel()
                {
                  Action = mySqlDataReader.GetString("action"),
                  TargetAccountId = mySqlDataReader.GetInt32("target_account_id"),
                  TargetInfo = mySqlDataReader.GetString("target_info"),
                  Details = mySqlDataReader.GetString("details"),
                  PerformedAt = mySqlDataReader.GetDateTime("performed_at").ToString("yyyy-MM-dd HH:mm:ss")
                });
            }
          }
        }
        this.ViewModel.RefreshFilteredAudit();
      }
      catch
      {
      }
    }

    private void LogFilter_Changed(object sender, RoutedEventArgs e)
    {
      if (this.ViewModel == null || !(sender is RadioButton radioButton))
        return;
      this.ViewModel.ActiveLogFilter = radioButton.Content.ToString();
    }

    private void buttonCopy_Click(object sender, RoutedEventArgs e)
    {
      try
      {
        Clipboard.SetText(string.Join("\n", (IEnumerable<string>) this.ViewModel.LogMessages));
      }
      catch
      {
      }
    }

    private void buttonClear_Click(object sender, RoutedEventArgs e)
    {
      this.ViewModel.LogMessages.Clear();
      this.ViewModel.FilteredLogs.Clear();
    }

    private void ExportLogs_Click(object sender, RoutedEventArgs e)
    {
      try
      {
        string baseDirectory = AppDomain.CurrentDomain.BaseDirectory;
        DefaultInterpolatedStringHandler interpolatedStringHandler = new DefaultInterpolatedStringHandler(9, 1);
        interpolatedStringHandler.AppendLiteral("logs_");
        interpolatedStringHandler.AppendFormatted<DateTime>(DateTime.Now, "yyyyMMdd_HHmmss");
        interpolatedStringHandler.AppendLiteral(".txt");
        string stringAndClear = interpolatedStringHandler.ToStringAndClear();
        string path = Path.Combine(baseDirectory, stringAndClear);
        File.WriteAllLines(path, (IEnumerable<string>) this.ViewModel.LogMessages);
        Database.LogAuditAction("Export Logs", 0, "", "Exported to " + path);
        this.WriteLine("SYSTEM: Logs exported to {0}", (object) path);
      }
      catch (Exception ex)
      {
        this.WriteLine("SYSTEM: Export failed — {0}", (object) ex.Message);
      }
    }

    private void LoadConfig()
    {
      try
      {
        string path = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Config.ini");
        if (!File.Exists(path))
          return;
        this.ViewModel.ConfigEntries.Clear();
        string str1 = "General";
        foreach (string readAllLine in File.ReadAllLines(path))
        {
          string str2 = readAllLine.Trim();
          if (!string.IsNullOrEmpty(str2) && !str2.StartsWith(";") && !str2.StartsWith("#"))
          {
            if (str2.StartsWith("[") && str2.EndsWith("]"))
            {
              str1 = str2.Substring(1, str2.Length - 2);
            }
            else
            {
              int length = str2.IndexOf('=');
              if (length > 0)
              {
                string str3 = str2.Substring(0, length).Trim();
                string str4 = str2.Substring(length + 1).Trim();
                this.ViewModel.ConfigEntries.Add(new ConfigEntryModel()
                {
                  Section = str1,
                  Key = str3,
                  Value = str4,
                  OriginalValue = str4
                });
              }
            }
          }
        }
      }
      catch
      {
      }
    }

    private void ReloadConfig_Click(object sender, RoutedEventArgs e) => this.LoadConfig();

    private void SaveConfig_Click(object sender, RoutedEventArgs e1)
    {
      try
      {
        string path = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Config.ini");
        if (!File.Exists(path))
          return;
        List<string> list = File.ReadAllLines(path).ToList<string>();
        int num = 0;
        foreach (ConfigEntryModel configEntryModel in this.ViewModel.ConfigEntries.Where<ConfigEntryModel>((Func<ConfigEntryModel, bool>) (e2 => e2.IsDirty)))
        {
          string str1 = "";
          for (int index = 0; index < list.Count; ++index)
          {
            string str2 = list[index].Trim();
            if (str2.StartsWith("[") && str2.EndsWith("]"))
              str1 = str2.Substring(1, str2.Length - 2);
            if (str1 == configEntryModel.Section && (str2.StartsWith(configEntryModel.Key + "=") || str2.StartsWith(configEntryModel.Key + " =")))
            {
              list[index] = configEntryModel.Key + " = " + configEntryModel.Value;
              configEntryModel.OriginalValue = configEntryModel.Value;
              configEntryModel.OnPropertyChanged("IsDirty");
              ++num;
              break;
            }
          }
        }
        File.WriteAllLines(path, (IEnumerable<string>) list);
        DefaultInterpolatedStringHandler interpolatedStringHandler = new DefaultInterpolatedStringHandler(17, 1);
        interpolatedStringHandler.AppendFormatted<int>(num);
        interpolatedStringHandler.AppendLiteral(" value(s) changed");
        Database.LogAuditAction("Config Save", 0, "", interpolatedStringHandler.ToStringAndClear());
        this.WriteLine("SYSTEM: Config.ini saved — {0} value(s) updated.", (object) num);
      }
      catch (Exception ex)
      {
        this.WriteLine("SYSTEM: Config save failed — {0}", (object) ex.Message);
      }
    }

    private void GmOnly_Changed(object sender, RoutedEventArgs e)
    {
      if (this.ViewModel == null)
        return;
      bool valueOrDefault = this.GmOnlyToggle.IsChecked.GetValueOrDefault();
      World.GMOnly = valueOrDefault;
      this.ViewModel.GmOnlyStatus = valueOrDefault ? "Enabled — non-GM logins blocked" : "Disabled";
      Database.LogAuditAction("GM Only Toggle", 0, "", valueOrDefault ? "Enabled" : "Disabled");
      this.WriteLine("SYSTEM: GM Only mode {0}.", valueOrDefault ? (object) "ENABLED" : (object) "DISABLED");
    }

    private void ResetPlayerBTN_Click(object sender, RoutedEventArgs e)
    {
      if (MessageBox.Show("Reset ALL accounts to offline? Use this if online status is stuck.", "Confirm", MessageBoxButton.YesNo) != MessageBoxResult.Yes)
        return;
      Database.ExecuteSql("UPDATE accounts SET online_us = 0", Database.AuthConnectionString);
      Database.LogAuditAction("Reset Online", 0, "", "All accounts set offline");
      this.WriteLine("SYSTEM: All accounts set to offline.");
      this.RefreshOnlinePlayers();
    }

    private void KickPlayer(int accountId)
    {
      try
      {
        DefaultInterpolatedStringHandler interpolatedStringHandler = new DefaultInterpolatedStringHandler(47, 1);
        interpolatedStringHandler.AppendLiteral("UPDATE accounts SET online_us = 0 WHERE id = '");
        interpolatedStringHandler.AppendFormatted<int>(accountId);
        interpolatedStringHandler.AppendLiteral("'");
        Database.ExecuteSql(interpolatedStringHandler.ToStringAndClear(), Database.AuthConnectionString);
        foreach (KeyValuePair<uint, GameServer> server in World.Servers)
        {
          if (server.Value.OnlineAccounts.ContainsKey(accountId))
            server.Value.Kickout(accountId);
        }
      }
      catch
      {
      }
    }

    public void SetPlayerCount(int count)
    {
      ((DispatcherObject) this).Dispatcher.Invoke<int>((Func<int>) (() => this.ViewModel.PlayerCount = count));
    }

    public void SetPlayerCount()
    {
      ((DispatcherObject) this).Dispatcher.Invoke((Action) (() =>
      {
        try
        {
          int num = 0;
          if (World.Servers != null)
          {
            foreach (KeyValuePair<uint, GameServer> server in World.Servers)
              num += server.Value.OnlineAccounts.Count;
          }
          this.ViewModel.PlayerCount = num;
        }
        catch
        {
        }
      }));
    }

    public void SetServerCount(int count)
    {
      ((DispatcherObject) this).Dispatcher.Invoke<int>((Func<int>) (() => this.ViewModel.ServerCount = count));
    }

    public void SetServerCount()
    {
      ((DispatcherObject) this).Dispatcher.Invoke((Action) (() =>
      {
        try
        {
          MainViewModel viewModel = this.ViewModel;
          ConcurrentDictionary<uint, GameServer> servers = World.Servers;
          // ISSUE: explicit non-virtual call
          int count = servers != null ? __nonvirtual (servers.Count) : 0;
          viewModel.ServerCount = count;
        }
        catch
        {
        }
      }));
    }

    public void UpdateServerInfo(GameServer server)
    {
      ((DispatcherObject) this).Dispatcher.Invoke((Action) (() =>
      {
        ServerInfoModel serverInfoModel = this.ViewModel.ConnectedServers.FirstOrDefault<ServerInfoModel>((Func<ServerInfoModel, bool>) (s => s.Name == server.ServerName));
        if (serverInfoModel != null)
        {
          serverInfoModel.State = server.State.ToString();
          serverInfoModel.PlayerCount = server.OnlineAccounts.Count;
          serverInfoModel.OnPropertyChanged("State");
          serverInfoModel.OnPropertyChanged("PlayerCount");
          serverInfoModel.OnPropertyChanged("StateColor");
        }
        else
          this.ViewModel.ConnectedServers.Add(new ServerInfoModel()
          {
            Name = server.ServerName,
            State = server.State.ToString(),
            PlayerCount = server.OnlineAccounts.Count
          });
        this.ViewModel.ServerCount = this.ViewModel.ConnectedServers.Count;
        this.ViewModel.OnPropertyChanged("NoServersVisible");
      }));
    }

    public void RemoveServerInfo(string serverName)
    {
      ((DispatcherObject) this).Dispatcher.Invoke((Action) (() =>
      {
        ServerInfoModel serverInfoModel = this.ViewModel.ConnectedServers.FirstOrDefault<ServerInfoModel>((Func<ServerInfoModel, bool>) (x => x.Name == serverName));
        if (serverInfoModel != null)
          this.ViewModel.ConnectedServers.Remove(serverInfoModel);
        this.ViewModel.ServerCount = this.ViewModel.ConnectedServers.Count;
        this.ViewModel.OnPropertyChanged("NoServersVisible");
      }));
    }

    [DebuggerNonUserCode]
    [GeneratedCode("PresentationBuildTasks", "9.0.11.0")]
    public void InitializeComponent()
    {
      if (this._contentLoaded)
        return;
      this._contentLoaded = true;
      Application.LoadComponent((object) this, new Uri("/AccountServerBinary2015;component/mainwindow.xaml", UriKind.Relative));
    }

    [DebuggerNonUserCode]
    [GeneratedCode("PresentationBuildTasks", "9.0.11.0")]
    [EditorBrowsable(EditorBrowsableState.Never)]
    void IComponentConnector.Connect(int connectionId, 
    #nullable disable
    object target)
    {
      switch (connectionId)
      {
        case 1:
          this.UptimeLabel = (TextBlock) target;
          break;
        case 2:
          this.NavDashboard = (RadioButton) target;
          this.NavDashboard.Checked += new RoutedEventHandler(this.Nav_Checked);
          break;
        case 3:
          ((ToggleButton) target).Checked += new RoutedEventHandler(this.Nav_Checked);
          break;
        case 4:
          ((ToggleButton) target).Checked += new RoutedEventHandler(this.Nav_Checked);
          break;
        case 5:
          ((ToggleButton) target).Checked += new RoutedEventHandler(this.Nav_Checked);
          break;
        case 6:
          ((ToggleButton) target).Checked += new RoutedEventHandler(this.Nav_Checked);
          break;
        case 7:
          ((ToggleButton) target).Checked += new RoutedEventHandler(this.Nav_Checked);
          break;
        case 8:
          ((ToggleButton) target).Checked += new RoutedEventHandler(this.Nav_Checked);
          break;
        case 9:
          this.PanelDashboard = (Grid) target;
          break;
        case 10:
          this.listBoxLog = (ListBox) target;
          break;
        case 11:
          ((ButtonBase) target).Click += new RoutedEventHandler(this.ResetPlayerBTN_Click);
          break;
        case 12:
          ((ButtonBase) target).Click += new RoutedEventHandler(this.buttonCopy_Click);
          break;
        case 13:
          ((ButtonBase) target).Click += new RoutedEventHandler(this.buttonClear_Click);
          break;
        case 14:
          ((ButtonBase) target).Click += new RoutedEventHandler(this.ExportLogs_Click);
          break;
        case 15:
          this.PanelPlayers = (Grid) target;
          break;
        case 16:
          this.PlayerSearchBox = (TextBox) target;
          this.PlayerSearchBox.TextChanged += new TextChangedEventHandler(this.PlayerSearch_TextChanged);
          break;
        case 17:
          ((ButtonBase) target).Click += new RoutedEventHandler(this.RefreshPlayers_Click);
          break;
        case 18:
          this.BulkKickBtn = (Button) target;
          this.BulkKickBtn.Click += new RoutedEventHandler(this.BulkKick_Click);
          break;
        case 19:
          this.BulkBanBtn = (Button) target;
          this.BulkBanBtn.Click += new RoutedEventHandler(this.BulkBan_Click);
          break;
        case 20:
          this.PlayersGrid = (DataGrid) target;
          break;
        case 25:
          this.PanelLookup = (Grid) target;
          break;
        case 26:
          this.LookupSearchBox = (TextBox) target;
          this.LookupSearchBox.KeyDown += new KeyEventHandler(this.LookupSearch_KeyDown);
          break;
        case 27:
          ((ButtonBase) target).Click += new RoutedEventHandler(this.LookupSearch_Click);
          break;
        case 28:
          ((ButtonBase) target).Click += new RoutedEventHandler(this.LookupKick_Click);
          break;
        case 29:
          ((ButtonBase) target).Click += new RoutedEventHandler(this.LookupBan_Click);
          break;
        case 30:
          ((ButtonBase) target).Click += new RoutedEventHandler(this.LookupUnban_Click);
          break;
        case 31:
          ((ButtonBase) target).Click += new RoutedEventHandler(this.LookupMacBan_Click);
          break;
        case 32:
          this.VipLevelBox = (TextBox) target;
          break;
        case 33:
          this.VipDaysBox = (TextBox) target;
          break;
        case 34:
          ((ButtonBase) target).Click += new RoutedEventHandler(this.GrantVip_Click);
          break;
        case 35:
          ((ButtonBase) target).Click += new RoutedEventHandler(this.ExtendVip_Click);
          break;
        case 36:
          ((ButtonBase) target).Click += new RoutedEventHandler(this.RevokeVip_Click);
          break;
        case 37:
          this.PanelSecurity = (Grid) target;
          break;
        case 38:
          this.ManualIpBanBox = (TextBox) target;
          break;
        case 39:
          ((ButtonBase) target).Click += new RoutedEventHandler(this.ManualIpBan_Click);
          break;
        case 40:
          ((ButtonBase) target).Click += new RoutedEventHandler(this.RefreshBruteForce_Click);
          break;
        case 42:
          this.ManualMacBanBox = (TextBox) target;
          break;
        case 43:
          ((ButtonBase) target).Click += new RoutedEventHandler(this.ManualMacBan_Click);
          break;
        case 44:
          ((ButtonBase) target).Click += new RoutedEventHandler(this.RefreshMacBans_Click);
          break;
        case 46:
          this.PanelLogs = (Grid) target;
          break;
        case 47:
          ((ToggleButton) target).Checked += new RoutedEventHandler(this.LogFilter_Changed);
          break;
        case 48:
          ((ToggleButton) target).Checked += new RoutedEventHandler(this.LogFilter_Changed);
          break;
        case 49:
          ((ToggleButton) target).Checked += new RoutedEventHandler(this.LogFilter_Changed);
          break;
        case 50:
          ((ToggleButton) target).Checked += new RoutedEventHandler(this.LogFilter_Changed);
          break;
        case 51:
          ((ToggleButton) target).Checked += new RoutedEventHandler(this.LogFilter_Changed);
          break;
        case 52:
          ((ToggleButton) target).Checked += new RoutedEventHandler(this.LogFilter_Changed);
          break;
        case 53:
          this.AutoScrollToggle = (CheckBox) target;
          break;
        case 54:
          ((ButtonBase) target).Click += new RoutedEventHandler(this.ExportLogs_Click);
          break;
        case 55:
          ((ButtonBase) target).Click += new RoutedEventHandler(this.buttonCopy_Click);
          break;
        case 56:
          ((ButtonBase) target).Click += new RoutedEventHandler(this.buttonClear_Click);
          break;
        case 57:
          this.listBoxLogFull = (ListBox) target;
          break;
        case 58:
          this.PanelAudit = (Grid) target;
          break;
        case 59:
          ((ToggleButton) target).Checked += new RoutedEventHandler(this.AuditFilter_Changed);
          break;
        case 60:
          ((ToggleButton) target).Checked += new RoutedEventHandler(this.AuditFilter_Changed);
          break;
        case 61:
          ((ToggleButton) target).Checked += new RoutedEventHandler(this.AuditFilter_Changed);
          break;
        case 62:
          ((ToggleButton) target).Checked += new RoutedEventHandler(this.AuditFilter_Changed);
          break;
        case 63:
          ((ToggleButton) target).Checked += new RoutedEventHandler(this.AuditFilter_Changed);
          break;
        case 64:
          ((ButtonBase) target).Click += new RoutedEventHandler(this.RefreshAudit_Click);
          break;
        case 65:
          this.PanelSettings = (Grid) target;
          break;
        case 66:
          this.GmOnlyToggle = (CheckBox) target;
          this.GmOnlyToggle.Checked += new RoutedEventHandler(this.GmOnly_Changed);
          this.GmOnlyToggle.Unchecked += new RoutedEventHandler(this.GmOnly_Changed);
          break;
        case 67:
          ((ButtonBase) target).Click += new RoutedEventHandler(this.ReloadConfig_Click);
          break;
        case 68:
          ((ButtonBase) target).Click += new RoutedEventHandler(this.SaveConfig_Click);
          break;
        default:
          this._contentLoaded = true;
          break;
      }
    }

    [DebuggerNonUserCode]
    [GeneratedCode("PresentationBuildTasks", "9.0.11.0")]
    [EditorBrowsable(EditorBrowsableState.Never)]
    void IStyleConnector.Connect(int connectionId, object target)
    {
      switch (connectionId)
      {
        case 21:
          ((ButtonBase) target).Click += new RoutedEventHandler(this.PlayerCheckbox_Click);
          break;
        case 22:
          ((ButtonBase) target).Click += new RoutedEventHandler(this.KickButton_Click);
          break;
        case 23:
          ((ButtonBase) target).Click += new RoutedEventHandler(this.BanButton_Click);
          break;
        case 24:
          ((ButtonBase) target).Click += new RoutedEventHandler(this.MacBanButton_Click);
          break;
        case 41:
          ((ButtonBase) target).Click += new RoutedEventHandler(this.UnbanIP_Click);
          break;
        case 45:
          ((ButtonBase) target).Click += new RoutedEventHandler(this.UnbanMAC_Click);
          break;
      }
    }
  }
}
