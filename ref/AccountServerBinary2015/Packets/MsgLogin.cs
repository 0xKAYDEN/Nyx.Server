// Decompiled with JetBrains decompiler
// Type: AccountServer.MsgLogin
// Assembly: AccountServerBinary2015, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: EFCA16AA-F384-44A9-86B8-5D37A9F63575
// Assembly location: D:\Conquer Data\Important\Conquer_Online Source_v6159\AccountServer\AccountServerBinary2015.dll

#nullable enable
namespace AccountServer
{
  public class MsgLogin
  {
    public const ushort cType = 1002;

    public ushort Size { get; private set; }

    public ushort Type { get; private set; }

    public uint AccountId { get; private set; }

    public uint CheckData { get; private set; }

    public string Name { get; private set; }

    public ushort Version { get; private set; }

    public MsgLogin(Packet msg)
    {
      msg.Seek(0);
      this.Size = msg.ReadUInt16();
      this.Type = msg.ReadUInt16();
      this.AccountId = msg.ReadUInt32();
      this.CheckData = msg.ReadUInt32();
      this.Version = msg.ReadUInt16();
      this.Name = msg.ReadCString(16);
    }

    public MsgLogin(uint _AccountId, uint _CheckData, ushort _Version, string _szName)
    {
      this.Size = (ushort) 32;
      this.Type = (ushort) 1002;
      this.AccountId = _AccountId;
      this.CheckData = _CheckData;
      this.Version = _Version;
      this.Name = _szName;
    }

    public void ToBytes(Packet msg)
    {
      msg.InitWriter();
      msg.Write(this.AccountId);
      msg.Write(this.CheckData);
      msg.Write(this.Version);
      msg.Write(this.Name, 18);
      msg.Finalize((ushort) 1002);
    }

    public void Process(PointClient Client)
    {
      GameServer gameServer;
      if (!World.Servers.TryGetValue(Client.Server.GenerateHash(), out gameServer))
        return;
      gameServer.SetState(ServerState.Normal);
      if (World.FormInstance != null)
      {
        World.FormInstance.SetServerCount();
        World.FormInstance.WriteLine("Game Server '{0}' has connected successfully.", (object) Client.Server);
      }
    }
  }
}
