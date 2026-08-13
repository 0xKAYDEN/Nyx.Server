// Decompiled with JetBrains decompiler
// Type: AccountServer.LoginTry
// Assembly: AccountServerBinary2015, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: EFCA16AA-F384-44A9-86B8-5D37A9F63575
// Assembly location: D:\Conquer Data\Important\Conquer_Online Source_v6159\AccountServer\AccountServerBinary2015.dll

using System;

#nullable enable
namespace AccountServer
{
  public class LoginTry
  {
    public string IP { get; set; }

    public int AuthTry { get; set; }

    public DateTime TriedAt { get; set; }
  }
}
