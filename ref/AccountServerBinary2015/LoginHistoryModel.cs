// Decompiled with JetBrains decompiler
// Type: AccountServer.LoginHistoryModel
// Assembly: AccountServerBinary2015, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: EFCA16AA-F384-44A9-86B8-5D37A9F63575
// Assembly location: D:\Conquer Data\Important\Conquer_Online Source_v6159\AccountServer\AccountServerBinary2015.dll

using System.Windows.Media;

#nullable enable
namespace AccountServer
{
  public class LoginHistoryModel
  {
    public string AccountName { get; set; }

    public string IP { get; set; }

    public string Mac { get; set; }

    public string Result { get; set; }

    public Brush ResultColor
    {
      get
      {
        return !(this.Result == "Success") ? (Brush) new SolidColorBrush(Color.FromRgb((byte) 248, (byte) 81, (byte) 73)) : (Brush) new SolidColorBrush(Color.FromRgb((byte) 63, (byte) 185, (byte) 80));
      }
    }

    public string Reason { get; set; }

    public string AttemptedAt { get; set; }
  }
}
