// Decompiled with JetBrains decompiler
// Type: AccountServer.AuthClient
// Assembly: AccountServerBinary2015, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: EFCA16AA-F384-44A9-86B8-5D37A9F63575
// Assembly location: D:\Conquer Data\Important\Conquer_Online Source_v6159\AccountServer\AccountServerBinary2015.dll

using AccountServer.Ciphers;

#nullable enable
namespace AccountServer
{
  public class AuthClient
  {
    private static int authCounter = 1;

    public ClientObject<AuthClient, AuthCipher> Network { get; private set; }

    public int AuthId { get; private set; }

    public string Username { get; set; }

    public string Password { get; set; }

    public string Server { get; set; }

    public string PlayerName { get; set; }

    public string MacAddress { get; set; }

    public bool Activated { get; set; }

    public bool ForcePasswordChange { get; set; }

    public SRP6 Srp { get; set; }

    public int AccountId { get; set; }

    public int AccountVip { get; set; }

    public int AccountType { get; set; }

    public AccountStatus AccountStatus { get; set; }

    public int AuthHash
    {
      get
      {
        return (int) this.Username.GenerateHash() + (int) this.Password.GenerateHash() - (int) this.Server.GenerateHash();
      }
    }

    public AuthClient(ClientObject<AuthClient, AuthCipher> network)
    {
      this.Network = network;
      this.AuthId = AuthClient.authCounter++;
      this.AccountId = -1;
      this.AccountStatus = AccountStatus.Normal;
      this.AccountVip = -1;
      this.Username = string.Empty;
      this.Password = string.Empty;
      this.Server = string.Empty;
      this.MacAddress = string.Empty;
    }
  }
}
