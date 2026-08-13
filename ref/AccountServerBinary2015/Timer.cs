// Decompiled with JetBrains decompiler
// Type: AccountServer.Timer
// Assembly: AccountServerBinary2015, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: EFCA16AA-F384-44A9-86B8-5D37A9F63575
// Assembly location: D:\Conquer Data\Important\Conquer_Online Source_v6159\AccountServer\AccountServerBinary2015.dll

#nullable enable
namespace AccountServer
{
  public class Timer
  {
    private uint time;

    public Timer(bool local = true) => this.time = local ? TimeStamp.GetTime() : 0U;

    public void Set(uint time, int amount) => this.time = (uint) ((ulong) time + (ulong) amount);

    public void Set(int amount)
    {
      this.time = (uint) ((ulong) TimeStamp.GetTime() + (ulong) amount);
    }

    public bool ValidateFrame(uint now, int leeway)
    {
      if (this.time == 0U)
      {
        this.time = now;
        return true;
      }
      bool flag = (int) now - (int) this.time > leeway;
      if (flag)
        this.time = now;
      return flag;
    }

    public bool IsReady(uint now) => this.time < now;

    public int RemainingTime => (int) this.time - (int) TimeStamp.GetTime();

    public int ElapsedSinceTick => (int) TimeStamp.GetTime() - (int) this.time;

    public static implicit operator bool(Timer t) => t.time < TimeStamp.GetTime();
  }
}
