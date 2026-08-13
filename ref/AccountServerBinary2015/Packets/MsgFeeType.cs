// Decompiled with JetBrains decompiler
// Type: AccountServer.MsgFeeType
// Assembly: AccountServerBinary2015, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: EFCA16AA-F384-44A9-86B8-5D37A9F63575
// Assembly location: D:\Conquer Data\Important\Conquer_Online Source_v6159\AccountServer\AccountServerBinary2015.dll

#nullable disable
namespace AccountServer
{
  public enum MsgFeeType : uint
  {
    FEE_BEGIN,
    FEE_END,
    FEE_POINT,
    HEARTBEAT,
    FEE_KICKOUT,
    FEE_OFFLINE,
    SERVER_BUSY,
    SERVER_FULL,
    SERVER_CLOSE,
    FEE_TICK,
  }
}
