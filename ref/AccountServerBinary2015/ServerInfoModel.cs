// Decompiled with JetBrains decompiler
// Type: AccountServer.ServerInfoModel
// Assembly: AccountServerBinary2015, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: EFCA16AA-F384-44A9-86B8-5D37A9F63575
// Assembly location: D:\Conquer Data\Important\Conquer_Online Source_v6159\AccountServer\AccountServerBinary2015.dll

using System.ComponentModel;
using System.Windows.Media;

#nullable enable
namespace AccountServer
{
  public class ServerInfoModel : INotifyPropertyChanged
  {
    public string Name { get; set; }

    public string State { get; set; }

    public int PlayerCount { get; set; }

    public Brush StateColor
    {
      get
      {
        string state = this.State;
        if (true)
          ;
        SolidColorBrush stateColor;
        switch (state)
        {
          case "Normal":
            stateColor = new SolidColorBrush(Color.FromRgb((byte) 63, (byte) 185, (byte) 80));
            break;
          case "Busy":
            stateColor = new SolidColorBrush(Color.FromRgb((byte) 210, (byte) 153, (byte) 34));
            break;
          case "Full":
            stateColor = new SolidColorBrush(Color.FromRgb((byte) 248, (byte) 81, (byte) 73));
            break;
          default:
            stateColor = new SolidColorBrush(Color.FromRgb((byte) 84, (byte) 93, (byte) 104));
            break;
        }
        if (true)
          ;
        return (Brush) stateColor;
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
