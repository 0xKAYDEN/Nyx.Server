// Decompiled with JetBrains decompiler
// Type: AccountServer.ProcessFactory
// Assembly: AccountServerBinary2015, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: EFCA16AA-F384-44A9-86B8-5D37A9F63575
// Assembly location: D:\Conquer Data\Important\Conquer_Online Source_v6159\AccountServer\AccountServerBinary2015.dll

using System;
using System.Threading;

#nullable enable
namespace AccountServer
{
  public class ProcessFactory
  {
    private const int REST = 2;
    private Action[] actions;
    private Thread[] threads;
    private int pos;

    public ProcessFactory(int workers)
    {
      this.actions = new Action[workers];
      this.threads = new Thread[workers];
      for (int index = 0; index < workers; ++index)
        this.threads[index] = new Thread(new ParameterizedThreadStart(this.Process));
    }

    private void Process(object operationObj)
    {
      int index = (int) operationObj;
      while (true)
      {
        if (this.actions[index] != null)
          this.actions[index]();
        Thread.Sleep(2);
      }
    }

    public void Start()
    {
      for (int parameter = 0; parameter < this.threads.Length; ++parameter)
        this.threads[parameter].Start((object) parameter);
    }

    public void Stop()
    {
      for (int index = 0; index < this.threads.Length; ++index)
        this.threads[index].Abort();
    }

    public void AddProcess(Action process)
    {
      this.actions[this.pos] += process;
      this.pos = (this.pos + 1) % this.actions.Length;
    }
  }
}
