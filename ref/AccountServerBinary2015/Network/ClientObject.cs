// Decompiled with JetBrains decompiler
// Type: AccountServer.ClientObject`2
// Assembly: AccountServerBinary2015, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: EFCA16AA-F384-44A9-86B8-5D37A9F63575
// Assembly location: D:\Conquer Data\Important\Conquer_Online Source_v6159\AccountServer\AccountServerBinary2015.dll

using System;
using System.Collections.Concurrent;
using System.Net.Sockets;

#nullable enable
namespace AccountServer
{
  public class ClientObject<T, TCipher> where TCipher : ICipher, new()
  {
    public T Wrapper;
    public ConcurrentQueue<byte[]> SendQueue;
    private ConcurrentQueue<Packet> RecvQueue;
    private Packet RecvResult;
    private int RecvSize;
    private int RecvLeft;
    private int RecvOffset;

    public ServerSocket<T, TCipher> Owner { get; private set; }

    public Socket Connection { get; private set; }

    public bool Alive { get; internal set; }

    public string KickReason { get; internal set; }

    public ICipher Language { get; private set; }

    public byte[] Buffer { get; private set; }

    public string RemoteIP()
    {
      string[] strArray = this.Connection.RemoteEndPoint.ToString().Split(':');
      return strArray.Length == 2 ? strArray[0] : string.Empty;
    }

    public bool NextReceiveCandidate(out Packet next) => this.RecvQueue.TryDequeue(out next);

    public bool NextSendCandidate(out byte[] next) => this.SendQueue.TryDequeue(out next);

    public unsafe void Send(Packet message)
    {
      byte[] dst = new byte[message.Size];
      this.Language.Encrypt(message.Memory, 0, dst, 0, message.Size);
      this.SendQueue.Enqueue(dst);
    }

    public unsafe bool BlockSend(Packet message)
    {
      byte[] numArray = new byte[message.Size];
      this.Language.Encrypt(message.Memory, 0, numArray, 0, message.Size);
      try
      {
        this.Connection.Send(numArray);
        return true;
      }
      catch (Exception ex)
      {
        this.Kick(nameof (BlockSend), ex);
        return false;
      }
    }

    public void DirectSend(byte[] message)
    {
      try
      {
        this.Connection.BeginSend(message, 0, message.Length, SocketFlags.None, (AsyncCallback) (result =>
        {
          try
          {
            this.Connection.EndSend(result);
          }
          catch (Exception ex)
          {
            this.Kick(nameof (DirectSend), ex);
          }
        }), (object) null);
      }
      catch (Exception ex)
      {
        this.Kick(nameof (DirectSend), ex);
      }
    }

    internal ClientObject(ServerSocket<T, TCipher> _Owner, Socket _Connection)
    {
      this.Owner = _Owner;
      this.Connection = _Connection;
      this.Language = (ICipher) new TCipher();
      this.Alive = true;
      this.Buffer = new byte[512];
      this.RecvQueue = new ConcurrentQueue<Packet>();
      this.SendQueue = new ConcurrentQueue<byte[]>();
      this.Connection.ReceiveBufferSize = (int) ushort.MaxValue;
      this.Connection.SendBufferSize = (int) ushort.MaxValue;
    }

    public void Kick(string reason) => this.Owner.Kick(this, reason);

    public void Kick(string where, Exception ex) => this.Kick(where + " -- " + ex.ToString());

    public void Receive()
    {
      this.RecvLeft = 2;
      this.RecvOffset = 0;
      this.RecvResult = PacketRecycle.Take();
      this.RecvResult.Seek(0);
      this.Connection.BeginReceive(this.Buffer, 0, this.RecvLeft, SocketFlags.None, new AsyncCallback(this.ReceiveHeader), (object) null);
    }

    private unsafe void ReceiveBody(IAsyncResult res)
    {
      try
      {
        int num = this.Connection.EndReceive(res);
        this.RecvLeft -= num;
        this.RecvOffset += num;
        if (num == 0)
          this.Kick("ReceiveBody() -- graceful disconnect");
        else if (this.RecvLeft > 0)
        {
          this.Connection.BeginReceive(this.Buffer, this.RecvOffset, this.RecvLeft, SocketFlags.None, new AsyncCallback(this.ReceiveBody), (object) null);
        }
        else
        {
          this.Language.Decrypt(this.Buffer, 0, this.RecvResult.Stream, 0, this.RecvSize - 2);
          this.RecvQueue.Enqueue(this.RecvResult);
          this.Receive();
        }
      }
      catch (Exception ex)
      {
        this.Kick(nameof (ReceiveBody), ex);
      }
    }

    private unsafe void ReceiveHeader(IAsyncResult res)
    {
      try
      {
        int num = this.Connection.EndReceive(res);
        this.RecvLeft -= num;
        this.RecvOffset += num;
        if (num == 0)
          this.Kick("ReceiveHeader() -- graceful disconnect");
        else if (this.RecvLeft == 0)
        {
          this.Language.Decrypt(this.Buffer, 0, this.RecvResult.Stream, 0, 2);
          this.RecvSize = (int) this.RecvResult.ReadUInt16();
          this.RecvResult.Size = this.RecvSize;
          this.RecvLeft = this.RecvSize - 2;
          if (this.RecvLeft > 1024)
          {
            this.Kick("ReceiveHeader() -- header too large!");
          }
          else
          {
            this.RecvOffset = 0;
            this.Connection.BeginReceive(this.Buffer, this.RecvOffset, this.RecvLeft, SocketFlags.None, new AsyncCallback(this.ReceiveBody), (object) null);
          }
        }
        else
          this.Connection.BeginReceive(this.Buffer, this.RecvOffset, this.RecvLeft, SocketFlags.None, new AsyncCallback(this.ReceiveHeader), (object) null);
      }
      catch (Exception ex)
      {
        this.Kick(nameof (ReceiveHeader), ex);
      }
    }
  }
}
