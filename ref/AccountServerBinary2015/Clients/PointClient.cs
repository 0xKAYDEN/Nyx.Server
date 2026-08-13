// Decompiled with JetBrains decompiler
// Type: AccountServer.PointClient
// Assembly: AccountServerBinary2015, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: EFCA16AA-F384-44A9-86B8-5D37A9F63575
// Assembly location: D:\Conquer Data\Important\Conquer_Online Source_v6159\AccountServer\AccountServerBinary2015.dll

#nullable enable
namespace AccountServer
{
  public class PointClient
  {
    private static int pointCounter = 1;

    public ClientObject<PointClient, PointCipher> Network { get; private set; }

    public int PointId { get; private set; }

    public string Username { get; set; }

    public string Password { get; set; }

    public string Server { get; set; }

    public string IPAddress { get; set; }

    public uint Port { get; set; }

    public PointClient(ClientObject<PointClient, PointCipher> network)
    {
      this.Network = network;
      this.PointId = PointClient.pointCounter++;
      this.Username = string.Empty;
      this.Password = string.Empty;
      this.Server = string.Empty;
      this.IPAddress = string.Empty;
    }
  }
}
