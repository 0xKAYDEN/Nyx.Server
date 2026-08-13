// Decompiled with JetBrains decompiler
// Type: AccountServer.OnlineAccount
// Assembly: AccountServerBinary2015, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: EFCA16AA-F384-44A9-86B8-5D37A9F63575
// Assembly location: D:\Conquer Data\Important\Conquer_Online Source_v6159\AccountServer\AccountServerBinary2015.dll

#nullable enable
namespace AccountServer
{
  public class OnlineAccount
  {
    public int AccountId { get; set; }

    public int AuthenId { get; set; }

    public string Username { get; set; }

    public string Password { get; set; }

    public string RemoteIP { get; set; }

    public string PlayerName { get; set; }

    public string Server { get; set; }

    public OnlineAccount(AuthClient _Client)
    {
      this.AccountId = _Client.AccountId;
      this.AuthenId = _Client.AuthHash;
      this.Username = _Client.Username;
      this.Password = _Client.Password;
      this.PlayerName = _Client.PlayerName;
      this.RemoteIP = _Client.Network.RemoteIP();
      this.Server = _Client.Server;
    }
  }
}
