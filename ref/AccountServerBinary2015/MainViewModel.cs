// Decompiled with JetBrains decompiler
// Type: AccountServer.MainViewModel
// Assembly: AccountServerBinary2015, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: EFCA16AA-F384-44A9-86B8-5D37A9F63575
// Assembly location: D:\Conquer Data\Important\Conquer_Online Source_v6159\AccountServer\AccountServerBinary2015.dll

using System;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Windows;

#nullable enable
namespace AccountServer
{
  public class MainViewModel : INotifyPropertyChanged
  {
    private int _playerCount;
    private int _serverCount;
    private int _failedLogins;
    private int _bruteForceCount;
    private int _macBanCount;
    private int _activeBruteForceAttempts;
    private string _gmOnlyStatus = "Disabled";
    private string _activeLogFilter = "All";
    private string _playerSearchText = "";
    private string _activeAuditFilter = "All";
    private AccountProfileModel _lookupProfile = new AccountProfileModel();

    public ObservableCollection<string> LogMessages { get; set; } = new ObservableCollection<string>();

    public ObservableCollection<AccountModel> OnlinePlayers { get; set; } = new ObservableCollection<AccountModel>();

    public ObservableCollection<AccountModel> FilteredPlayers { get; set; } = new ObservableCollection<AccountModel>();

    public ObservableCollection<string> FilteredLogs { get; set; } = new ObservableCollection<string>();

    public ObservableCollection<BannedIPModel> BannedIPs { get; set; } = new ObservableCollection<BannedIPModel>();

    public ObservableCollection<BannedMACModel> BannedMACs { get; set; } = new ObservableCollection<BannedMACModel>();

    public ObservableCollection<ServerInfoModel> ConnectedServers { get; set; } = new ObservableCollection<ServerInfoModel>();

    public ObservableCollection<RelatedAccountModel> RelatedAccounts { get; set; } = new ObservableCollection<RelatedAccountModel>();

    public ObservableCollection<LoginHistoryModel> LoginHistory { get; set; } = new ObservableCollection<LoginHistoryModel>();

    public ObservableCollection<AuditLogModel> AuditLogs { get; set; } = new ObservableCollection<AuditLogModel>();

    public ObservableCollection<AuditLogModel> FilteredAuditLogs { get; set; } = new ObservableCollection<AuditLogModel>();

    public ObservableCollection<PlayerSnapshotModel> PlayerSnapshots { get; set; } = new ObservableCollection<PlayerSnapshotModel>();

    public ObservableCollection<ConfigEntryModel> ConfigEntries { get; set; } = new ObservableCollection<ConfigEntryModel>();

    public int PlayerCount
    {
      get => this._playerCount;
      set
      {
        this._playerCount = value;
        this.OnPropertyChanged(nameof (PlayerCount));
      }
    }

    public int ServerCount
    {
      get => this._serverCount;
      set
      {
        this._serverCount = value;
        this.OnPropertyChanged(nameof (ServerCount));
      }
    }

    public int FailedLogins
    {
      get => this._failedLogins;
      set
      {
        this._failedLogins = value;
        this.OnPropertyChanged(nameof (FailedLogins));
      }
    }

    public int BruteForceCount
    {
      get => this._bruteForceCount;
      set
      {
        this._bruteForceCount = value;
        this.OnPropertyChanged(nameof (BruteForceCount));
      }
    }

    public int MacBanCount
    {
      get => this._macBanCount;
      set
      {
        this._macBanCount = value;
        this.OnPropertyChanged(nameof (MacBanCount));
      }
    }

    public int ActiveBruteForceAttempts
    {
      get => this._activeBruteForceAttempts;
      set
      {
        this._activeBruteForceAttempts = value;
        this.OnPropertyChanged(nameof (ActiveBruteForceAttempts));
      }
    }

    public string GmOnlyStatus
    {
      get => this._gmOnlyStatus;
      set
      {
        this._gmOnlyStatus = value;
        this.OnPropertyChanged(nameof (GmOnlyStatus));
      }
    }

    public AccountProfileModel LookupProfile
    {
      get => this._lookupProfile;
      set
      {
        this._lookupProfile = value;
        this.OnPropertyChanged(nameof (LookupProfile));
        this.OnPropertyChanged("LookupVisible");
      }
    }

    public Visibility LookupVisible
    {
      get
      {
        AccountProfileModel lookupProfile = this.LookupProfile;
        return (lookupProfile != null ? (lookupProfile.HasProfile ? 1 : 0) : 0) == 0 ? Visibility.Collapsed : Visibility.Visible;
      }
    }

    public Visibility NoServersVisible
    {
      get => this.ConnectedServers.Count != 0 ? Visibility.Collapsed : Visibility.Visible;
    }

    public string ActiveLogFilter
    {
      get => this._activeLogFilter;
      set
      {
        this._activeLogFilter = value;
        this.OnPropertyChanged(nameof (ActiveLogFilter));
        this.RefreshFilteredLogs();
      }
    }

    public string PlayerSearchText
    {
      get => this._playerSearchText;
      set
      {
        this._playerSearchText = value;
        this.OnPropertyChanged(nameof (PlayerSearchText));
        this.RefreshFilteredPlayers();
      }
    }

    public string ActiveAuditFilter
    {
      get => this._activeAuditFilter;
      set
      {
        this._activeAuditFilter = value;
        this.OnPropertyChanged(nameof (ActiveAuditFilter));
        this.RefreshFilteredAudit();
      }
    }

    public int SelectedPlayerCount
    {
      get
      {
        return this.FilteredPlayers.Count<AccountModel>((Func<AccountModel, bool>) (p => p.IsSelected));
      }
    }

    public void NotifySelectionChanged() => this.OnPropertyChanged("SelectedPlayerCount");

    public void RefreshFilteredPlayers()
    {
      Application.Current.Dispatcher.Invoke((Action) (() =>
      {
        this.FilteredPlayers.Clear();
        string lowerInvariant = (this.PlayerSearchText ?? "").Trim().ToLowerInvariant();
        foreach (AccountModel onlinePlayer in (Collection<AccountModel>) this.OnlinePlayers)
        {
          int num;
          if (!string.IsNullOrEmpty(lowerInvariant))
          {
            string characterName = onlinePlayer.CharacterName;
            if ((characterName != null ? (characterName.ToLowerInvariant().Contains(lowerInvariant) ? 1 : 0) : 0) == 0)
            {
              num = onlinePlayer.Id.ToString().Contains(lowerInvariant) ? 1 : 0;
              goto label_6;
            }
          }
          num = 1;
label_6:
          if (num != 0)
            this.FilteredPlayers.Add(onlinePlayer);
        }
      }));
    }

    public void RefreshFilteredLogs()
    {
      Application.Current.Dispatcher.Invoke((Action) (() =>
      {
        this.FilteredLogs.Clear();
        string filter = this.ActiveLogFilter ?? "All";
        foreach (string logMessage in (Collection<string>) this.LogMessages)
        {
          if (filter == "All" || this.MatchesLogFilter(logMessage, filter))
            this.FilteredLogs.Add(logMessage);
        }
      }));
    }

    public void RefreshFilteredAudit()
    {
      Application.Current.Dispatcher.Invoke((Action) (() =>
      {
        this.FilteredAuditLogs.Clear();
        string str = this.ActiveAuditFilter ?? "All";
        foreach (AuditLogModel auditLog in (Collection<AuditLogModel>) this.AuditLogs)
        {
          if (str == "All" || auditLog.Action.Contains(str, StringComparison.OrdinalIgnoreCase))
            this.FilteredAuditLogs.Add(auditLog);
        }
      }));
    }

    private bool MatchesLogFilter(string log, string filter)
    {
      string upperInvariant = log.ToUpperInvariant();
      if (true)
        ;
      bool flag;
      switch (filter)
      {
        case "Auth":
          flag = upperInvariant.Contains("AUTH:");
          break;
        case "Session":
          flag = upperInvariant.Contains("SESSION:");
          break;
        case "Security":
          flag = upperInvariant.Contains("SECURITY:");
          break;
        case "System":
          flag = upperInvariant.Contains("SYSTEM:") || upperInvariant.Contains("ACCOUNT SERVER");
          break;
        case "VIP":
          flag = upperInvariant.Contains("VIP");
          break;
        default:
          flag = true;
          break;
      }
      if (true)
        ;
      return flag;
    }

    public void AddLogMessage(string message)
    {
      Application.Current.Dispatcher.Invoke((Action) (() =>
      {
        this.LogMessages.Add(message);
        while (this.LogMessages.Count > 5000)
          this.LogMessages.RemoveAt(0);
        string filter = this.ActiveLogFilter ?? "All";
        if (!(filter == "All") && !this.MatchesLogFilter(message, filter))
          return;
        this.FilteredLogs.Add(message);
        while (this.FilteredLogs.Count > 5000)
          this.FilteredLogs.RemoveAt(0);
      }));
    }

    public event PropertyChangedEventHandler PropertyChanged;

    public void OnPropertyChanged(string name)
    {
      PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
      if (propertyChanged == null)
        return;
      propertyChanged((object) this, new PropertyChangedEventArgs(name));
    }
  }
}
