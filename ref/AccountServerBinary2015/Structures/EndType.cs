// Decompiled with JetBrains decompiler
// Type: AccountServer.EndType
// Assembly: AccountServerBinary2015, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: EFCA16AA-F384-44A9-86B8-5D37A9F63575
// Assembly location: D:\Conquer Data\Important\Conquer_Online Source_v6159\AccountServer\AccountServerBinary2015.dll

#nullable disable
namespace AccountServer
{
  public enum EndType : uint
  {
    c_endNone,
    c_endNormal,
    c_endRejoin,
    c_endGameServerKick,
    c_endAccountRejoinKick,
    c_endAccountOvertimeKick,
    c_endAccountCloseKick,
    c_endGameServerLose,
    c_endAll,
  }
}
