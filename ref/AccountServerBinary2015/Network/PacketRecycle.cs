// Decompiled with JetBrains decompiler
// Type: AccountServer.PacketRecycle
// Assembly: AccountServerBinary2015, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: EFCA16AA-F384-44A9-86B8-5D37A9F63575
// Assembly location: D:\Conquer Data\Important\Conquer_Online Source_v6159\AccountServer\AccountServerBinary2015.dll

using System.Collections.Concurrent;

#nullable enable
namespace AccountServer
{
  public static class PacketRecycle
  {
    private static ConcurrentQueue<Packet> bin = new ConcurrentQueue<Packet>();

    public static Packet Take()
    {
      Packet result;
      if (!PacketRecycle.bin.TryDequeue(out result))
        result = new Packet(512);
      result.Seek(4);
      return result;
    }

    public static void Reuse(Packet old)
    {
      old.Seek(0);
      PacketRecycle.bin.Enqueue(old);
    }
  }
}
