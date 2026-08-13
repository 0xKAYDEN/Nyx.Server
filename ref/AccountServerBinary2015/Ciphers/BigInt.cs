// Decompiled with JetBrains decompiler
// Type: AccountServer.Ciphers.BigInt
// Assembly: AccountServerBinary2015, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: EFCA16AA-F384-44A9-86B8-5D37A9F63575
// Assembly location: D:\Conquer Data\Important\Conquer_Online Source_v6159\AccountServer\AccountServerBinary2015.dll

using Mono.Math;
using System;
using System.Globalization;
using System.Linq;
using System.Text;

#nullable enable
namespace AccountServer.Ciphers
{
  public class BigInt
  {
    public BigInt() => this.Bn = new BigInteger();

    public BigInt(BigInteger bn) => this.Bn = bn;

    public static byte[] StringToByteArray(string hex)
    {
      return Enumerable.Range(0, hex.Length).Where<int>((Func<int, bool>) (x => x % 2 == 0)).Select<int, byte>((Func<int, byte>) (x => Convert.ToByte(hex.Substring(x, 2), 16))).ToArray<byte>();
    }

    public BigInteger Bn { get; set; }

    public static BigInt FromHexString(string str)
    {
      return new BigInt(new BigInteger(BigInt.StringToByteArray(str)));
    }

    public static BigInt FromMemoryHS(string str)
    {
      string str1 = "";
      for (; str.Length > 0; str = str.Substring(0, str.Length - 2))
        str1 += str.Substring(str.Length - 2, 2);
      return BigInt.FromHexString(str1);
    }

    public static string ByteArrayToString(byte[] ba)
    {
      StringBuilder stringBuilder = new StringBuilder(ba.Length * 2);
      foreach (byte num in ba)
        stringBuilder.AppendFormat("{0:x2}", (object) num);
      return stringBuilder.ToString();
    }

    public override string ToString() => BigInt.ByteArrayToString(this.Bn.GetBytes());

    public void Subtract(BigInt n) => this.Bn = BigInteger.Subtract(this.Bn, n.Bn);

    public void Add(BigInt n) => this.Bn = BigInteger.Add(this.Bn, n.Bn);

    public void Multiply(BigInt n) => this.Bn = BigInteger.Multiply(this.Bn, n.Bn);

    public void ModPow(BigInt exp, BigInt N) => this.Bn = this.Bn.ModPow(exp.Bn, N.Bn);

    public BigInt Duplicate() => new BigInt(this.Bn);

    public byte[] GetBytes()
    {
      string str = this.ToString();
      if (str.StartsWith("-"))
        str = str.Remove(0, 1);
      if ((str.Length & 1) == 1)
        str = "0" + str;
      byte[] array = new byte[str.Length / 2];
      int num = 0;
      for (; str.Length > 0; str = str.Remove(0, 2))
        array[num++] = byte.Parse(str.Substring(0, 2), NumberStyles.HexNumber);
      Array.Reverse<byte>(array);
      return array;
    }

    public static BigInt FromMemoryBytes(byte[] final)
    {
      StringBuilder stringBuilder = new StringBuilder();
      foreach (byte num in final)
        stringBuilder.Append(num.ToString("X2"));
      return BigInt.FromMemoryHS(stringBuilder.ToString());
    }
  }
}
