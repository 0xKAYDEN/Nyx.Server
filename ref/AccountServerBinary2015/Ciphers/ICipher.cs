// Decompiled with JetBrains decompiler
// Type: AccountServer.ICipher
// Assembly: AccountServerBinary2015, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: EFCA16AA-F384-44A9-86B8-5D37A9F63575
// Assembly location: D:\Conquer Data\Important\Conquer_Online Source_v6159\AccountServer\AccountServerBinary2015.dll

#nullable enable
namespace AccountServer
{
  public interface ICipher
  {
    unsafe void Encrypt(byte* src, int srcOffset, byte[] dst, int dstOffset, int length);

    unsafe void Decrypt(byte[] src, int srcOffset, byte* dst, int dstOffset, int length);
  }
}
