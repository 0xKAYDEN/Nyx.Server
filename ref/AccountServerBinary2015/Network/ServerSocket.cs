// Decompiled with JetBrains decompiler
// Type: AccountServer.ServerSocket`2
// Assembly: AccountServerBinary2015, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: EFCA16AA-F384-44A9-86B8-5D37A9F63575
// Assembly location: D:\Conquer Data\Important\Conquer_Online Source_v6159\AccountServer\AccountServerBinary2015.dll

using System;
using System.Net;
using System.Net.Sockets;

#nullable enable
namespace AccountServer
{
  public class ServerSocket<T, TCipher> where TCipher : ICipher, new()
  {
    private Socket listener;
    public Action<ClientObject<T, TCipher>> OnConnect;
    public Action<ClientObject<T, TCipher>> OnDisconnect;

    public int Port { get; private set; }

    public ServerSocket(int port)
    {
      this.Port = port;
      this.listener = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);
      this.listener.Bind((EndPoint) new IPEndPoint(IPAddress.Any, port));
    }

    public void Start(int backlog)
    {
      this.listener.Listen(backlog);
      this.Accept();
    }

    public void Kick(ClientObject<T, TCipher> user, string reason)
    {
      if (!user.Alive)
        return;
      user.Alive = false;
      user.KickReason = reason;
      if (this.OnDisconnect != null)
        this.OnDisconnect(user);
      try
      {
        user.Connection.Disconnect(false);
      }
      catch
      {
      }
    }

    private void Accept()
    {
      this.listener.BeginAccept(new AsyncCallback(this.AcceptCallback), (object) null);
    }

    private void AcceptCallback(IAsyncResult res)
    {
      try
      {
        ClientObject<T, TCipher> clientObject = new ClientObject<T, TCipher>(this, this.listener.EndAccept(res));
        if (this.OnConnect != null)
          this.OnConnect(clientObject);
      }
      catch
      {
      }
      this.Accept();
    }
  }
}
