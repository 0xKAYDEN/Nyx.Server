// Decompiled with JetBrains decompiler
// Type: AccountServer.AuditLogModel
// Assembly: AccountServerBinary2015, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: EFCA16AA-F384-44A9-86B8-5D37A9F63575
// Assembly location: D:\Conquer Data\Important\Conquer_Online Source_v6159\AccountServer\AccountServerBinary2015.dll

#nullable enable
namespace AccountServer
{
  public class AuditLogModel
  {
    public string Action { get; set; }

    public int TargetAccountId { get; set; }

    public string TargetInfo { get; set; }

    public string Details { get; set; }

    public string PerformedAt { get; set; }
  }
}
