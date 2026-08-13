// Decompiled with JetBrains decompiler
// Type: AccountServer.AccountProfileModel
// Assembly: AccountServerBinary2015, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: EFCA16AA-F384-44A9-86B8-5D37A9F63575
// Assembly location: D:\Conquer Data\Important\Conquer_Online Source_v6159\AccountServer\AccountServerBinary2015.dll

using System;
using System.ComponentModel;
using System.Windows.Media;

#nullable enable
namespace AccountServer
{
  public class AccountProfileModel : INotifyPropertyChanged
  {
    public int Id { get; set; }

    public string Username { get; set; }

    public string Status { get; set; }

    public Brush StatusColor { get; set; }

    public int AccountType { get; set; }

    public string MacAddress { get; set; }

    public string LastIP { get; set; }

    public int VipLevel { get; set; }

    public DateTime? VipExpires { get; set; }

    public string VipDisplay { get; set; }

    public bool IsOnline { get; set; }

    public bool HasProfile => this.Id > 0;

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
