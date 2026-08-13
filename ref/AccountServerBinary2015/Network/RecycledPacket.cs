// Decompiled with JetBrains decompiler
// Type: AccountServer.RecycledPacket
// Assembly: AccountServerBinary2015, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: EFCA16AA-F384-44A9-86B8-5D37A9F63575
// Assembly location: D:\Conquer Data\Important\Conquer_Online Source_v6159\AccountServer\AccountServerBinary2015.dll

using System;

#nullable enable
namespace AccountServer
{
  public class RecycledPacket : IDisposable
  {
    private Packet stream;

    public Packet GetStream() => this.stream;

    public RecycledPacket() => this.stream = PacketRecycle.Take();

    ~RecycledPacket() => this.Dispose();

    public void Dispose()
    {
      if (this.stream == null)
        return;
      PacketRecycle.Reuse(this.stream);
      this.stream = (Packet) null;
      GC.SuppressFinalize((object) this);
    }
  }
}
