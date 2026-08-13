// Decompiled with JetBrains decompiler
// Type: AccountServer.LoginReplyType
// Assembly: AccountServerBinary2015, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: EFCA16AA-F384-44A9-86B8-5D37A9F63575
// Assembly location: D:\Conquer Data\Important\Conquer_Online Source_v6159\AccountServer\AccountServerBinary2015.dll

#nullable disable
namespace AccountServer
{
  public enum LoginReplyType
  {
    Invalid_AccountID_Or_Password = 1,
    Server_Is_Down = 10, // 0x0000000A
    Please_Try_Again_Later = 11, // 0x0000000B
    Account_Banned = 12, // 0x0000000C
    Server_Is_Busy = 20, // 0x00000014
    Server_Is_Busy_Try_Again_Later = 21, // 0x00000015
    Account_Locked_Maintenance = 22, // 0x00000016
    Hardware_Banned = 25, // 0x00000019
  }
}
