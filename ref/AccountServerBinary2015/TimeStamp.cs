// Decompiled with JetBrains decompiler
// Type: AccountServer.TimeStamp
// Assembly: AccountServerBinary2015, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: EFCA16AA-F384-44A9-86B8-5D37A9F63575
// Assembly location: D:\Conquer Data\Important\Conquer_Online Source_v6159\AccountServer\AccountServerBinary2015.dll

using System.Runtime.InteropServices;

#nullable disable
namespace AccountServer
{
  public class TimeStamp
  {
    [DllImport("winmm.dll", EntryPoint = "timeGetTime", CallingConvention = (CallingConvention) 3)]
    public static extern uint GetTime();

    [DllImport("msvcrt.dll", EntryPoint = "_time32", CallingConvention = (CallingConvention) 2)]
    public static extern uint GetUnixTime32(int timer = 0);

    [DllImport("msvcrt.dll", EntryPoint = "_time64", CallingConvention = (CallingConvention) 2)]
    public static extern ulong GetUnixTime64(long timer = 0);
  }
}
