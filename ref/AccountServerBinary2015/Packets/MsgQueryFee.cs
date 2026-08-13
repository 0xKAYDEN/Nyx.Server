// Decompiled with JetBrains decompiler
// Type: AccountServer.MsgQueryFee
// Assembly: AccountServerBinary2015, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: EFCA16AA-F384-44A9-86B8-5D37A9F63575
// Assembly location: D:\Conquer Data\Important\Conquer_Online Source_v6159\AccountServer\AccountServerBinary2015.dll

#nullable enable
namespace AccountServer
{
  public class MsgQueryFee
  {
    public const ushort cType = 1201;

    public ushort Size { get; private set; }

    public ushort Type { get; private set; }

    public int AccountId { get; private set; }

    public uint dwData { get; private set; }

    public uint Time { get; private set; }

    public MsgQueryFeeType SubType { get; private set; }

    public MsgQueryFee(Packet msg)
    {
      msg.Seek(0);
      this.Size = msg.ReadUInt16();
      this.Type = msg.ReadUInt16();
      this.AccountId = msg.ReadInt32();
      this.dwData = msg.ReadUInt32();
      this.Time = msg.ReadUInt32();
      this.SubType = (MsgQueryFeeType) msg.ReadUInt8();
    }

    public MsgQueryFee(int _AccountId, uint _dwData, uint _Time, MsgQueryFeeType _MsgQueryFeeType)
    {
      this.Size = (ushort) 32;
      this.Type = (ushort) 1201;
      this.AccountId = _AccountId;
      this.dwData = _dwData;
      this.Time = _Time;
      this.SubType = _MsgQueryFeeType;
    }

    public void ToBytes(Packet msg)
    {
      msg.InitWriter();
      msg.Write(this.AccountId);
      msg.Write(this.dwData);
      msg.Write(this.Time);
      msg.Write((uint) this.SubType);
      msg.Finalize((ushort) 1201);
    }

    public void Process(PointClient Client)
    {
    }
  }
}
