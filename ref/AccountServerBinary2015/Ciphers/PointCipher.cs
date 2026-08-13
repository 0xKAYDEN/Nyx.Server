// Decompiled with JetBrains decompiler
// Type: AccountServer.PointCipher
// Assembly: AccountServerBinary2015, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: EFCA16AA-F384-44A9-86B8-5D37A9F63575
// Assembly location: D:\Conquer Data\Important\Conquer_Online Source_v6159\AccountServer\AccountServerBinary2015.dll

#nullable enable
namespace AccountServer
{
  public class PointCipher : ICipher
  {
    private ushort InCounter;
    private ushort OutCounter;
    private byte[] cipherKey1 = new byte[256];
    private byte[] cipherKey2 = new byte[256];

    public PointCipher()
    {
      byte num1 = 126;
      byte num2 = 211;
      for (int index = 0; index < 256; ++index)
      {
        this.cipherKey1[index] = num1;
        this.cipherKey2[index] = num2;
        num1 = (byte) (((int) num1 * 18 + 151) * (int) num1 + 25);
        num2 = (byte) (((int) num2 * 72 + 81) * (int) num2 + 27);
      }
      this.InCounter = (ushort) 0;
      this.OutCounter = (ushort) 0;
    }

    public unsafe void Encrypt(byte* src, int srcOffset, byte[] dst, int dstOffset, int length)
    {
      fixed (byte* numPtr1 = &dst[dstOffset])
      {
        for (int index = srcOffset; index < srcOffset + length; ++index)
        {
          numPtr1[index] = (byte) ((uint) src[index] ^ 171U);
          numPtr1[index] = (byte) ((int) numPtr1[index] >> 4 | (int) dst[index] << 4);
          byte* numPtr2 = numPtr1 + index;
          *numPtr2 = (byte) ((uint) *numPtr2 ^ (uint) this.cipherKey2[(int) this.OutCounter >> 8]);
          byte* numPtr3 = numPtr1 + index;
          *numPtr3 = (byte) ((uint) *numPtr3 ^ (uint) this.cipherKey1[(int) this.OutCounter & (int) byte.MaxValue]);
          ++this.OutCounter;
        }
      }
    }

    public unsafe void Decrypt(byte[] src, int srcOffset, byte* dst, int dstOffset, int length)
    {
      fixed (byte* numPtr1 = &src[srcOffset])
      {
        for (int index = dstOffset; index < dstOffset + length; ++index)
        {
          dst[index] = (byte) ((uint) numPtr1[index] ^ 171U);
          dst[index] = (byte) ((int) dst[index] << 4 | (int) dst[index] >> 4);
          byte* numPtr2 = dst + index;
          *numPtr2 = (byte) ((uint) *numPtr2 ^ (uint) this.cipherKey2[(int) this.InCounter >> 8]);
          byte* numPtr3 = dst + index;
          *numPtr3 = (byte) ((uint) *numPtr3 ^ (uint) this.cipherKey1[(int) this.InCounter & (int) byte.MaxValue]);
          ++this.InCounter;
        }
      }
    }
  }
}
