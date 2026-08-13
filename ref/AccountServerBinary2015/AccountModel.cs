// Decompiled with JetBrains decompiler
// Type: AccountServer.AccountModel
// Assembly: AccountServerBinary2015, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: EFCA16AA-F384-44A9-86B8-5D37A9F63575
// Assembly location: D:\Conquer Data\Important\Conquer_Online Source_v6159\AccountServer\AccountServerBinary2015.dll

using System;
using System.ComponentModel;

#nullable enable
namespace AccountServer
{
  public class AccountModel : INotifyPropertyChanged
  {
    private bool _isSelected;

    public int Id { get; set; }

    public string Username { get; set; }

    public string CharacterName { get; set; }

    public int VipLevel { get; set; }

    public DateTime? ExpirationDate { get; set; }

    public string TimeRemaining { get; set; }

    public bool IsVip
    {
      get
      {
        if (this.VipLevel > 0)
        {
          DateTime? expirationDate = this.ExpirationDate;
          if (expirationDate.HasValue)
          {
            expirationDate = this.ExpirationDate;
            return expirationDate.Value > DateTime.Now;
          }
        }
        return false;
      }
    }

    public bool IsSelected
    {
      get => this._isSelected;
      set
      {
        this._isSelected = value;
        this.OnPropertyChanged(nameof (IsSelected));
      }
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
