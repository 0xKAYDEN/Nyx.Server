// Decompiled with JetBrains decompiler
// Type: AccountServer.ConfigEntryModel
// Assembly: AccountServerBinary2015, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: EFCA16AA-F384-44A9-86B8-5D37A9F63575
// Assembly location: D:\Conquer Data\Important\Conquer_Online Source_v6159\AccountServer\AccountServerBinary2015.dll

using System.ComponentModel;

#nullable enable
namespace AccountServer
{
  public class ConfigEntryModel : INotifyPropertyChanged
  {
    private string _value;

    public string Section { get; set; }

    public string Key { get; set; }

    public string Value
    {
      get => this._value;
      set
      {
        this._value = value;
        this.OnPropertyChanged(nameof (Value));
        this.OnPropertyChanged("IsDirty");
      }
    }

    public string OriginalValue { get; set; }

    public bool IsDirty => this.Value != this.OriginalValue;

    public bool IsPassword => this.Key.ToLowerInvariant().Contains("pass");

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
