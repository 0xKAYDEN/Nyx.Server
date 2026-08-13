// Decompiled with JetBrains decompiler
// Type: AccountServer.PlayerOnlineHandler
// Assembly: AccountServerBinary2015, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: EFCA16AA-F384-44A9-86B8-5D37A9F63575
// Assembly location: D:\Conquer Data\Important\Conquer_Online Source_v6159\AccountServer\AccountServerBinary2015.dll

using System.Text;

#nullable enable
namespace AccountServer
{
  internal class PlayerOnlineHandler
  {
    private static PlayerOnlineHandler _handler;

    public static PlayerOnlineHandler Instance
    {
      get
      {
        if (PlayerOnlineHandler._handler == null)
          PlayerOnlineHandler._handler = new PlayerOnlineHandler();
        return PlayerOnlineHandler._handler;
      }
    }

    public void SetPlayerOnline(int AccountId) => this.UpdateStatus(AccountId, true);

    public void SetPlayerOffline(int AccountId) => this.UpdateStatus(AccountId, false);

    public void SetAllOffline()
    {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.Append("UPDATE `accounts` SET ");
      stringBuilder.Append("online_eu = 0, ");
      stringBuilder.Append("online_us = 0");
      Database.ExecuteSql(stringBuilder.ToString(), Database.AuthConnectionString);
    }

    private void UpdateStatus(int AccountId, bool Online)
    {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.Append("UPDATE `accounts` SET ");
      stringBuilder.Append(string.Format("{0} = {1} ", (object) World.OnlineColumn, (object) (Online ? 1 : 0)));
      stringBuilder.Append(string.Format("WHERE id = {0} LIMIT 1", (object) AccountId));
      Database.ExecuteSql(stringBuilder.ToString(), Database.AuthConnectionString);
    }
  }
}
