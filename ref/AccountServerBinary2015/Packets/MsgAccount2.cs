// Decompiled with JetBrains decompiler
// Type: AccountServer.MsgAccount2
// Assembly: AccountServerBinary2015, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: EFCA16AA-F384-44A9-86B8-5D37A9F63575
// Assembly location: D:\Conquer Data\Important\Conquer_Online Source_v6159\AccountServer\AccountServerBinary2015.dll

#nullable enable
namespace AccountServer
{
  public class MsgAccount2
  {
    public const ushort cType = 1086;

    public ushort Size { get; private set; }

    public ushort Type { get; private set; }

    public string Account { get; private set; }

    public string Password { get; private set; }

    public string ServerName { get; private set; }

    private byte[] PassBytes { get; set; }

    public MsgAccount2(Packet msg)
    {
      msg.Seek(0);
      this.Size = msg.ReadUInt16();
      this.Type = msg.ReadUInt16();
      this.Account = msg.ReadCString(16);
      msg.SeekForward(112);
      this.PassBytes = msg.ReadBytes(16);
      this.Password = PasswordCipher.Decrypt(this.PassBytes);
      msg.SeekForward(112);
      this.ServerName = msg.ReadCString(16);
    }
  }
}
