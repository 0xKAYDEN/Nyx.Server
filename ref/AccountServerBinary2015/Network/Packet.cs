// Decompiled with JetBrains decompiler
// Type: AccountServer.Packet
// Assembly: AccountServerBinary2015, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: EFCA16AA-F384-44A9-86B8-5D37A9F63575
// Assembly location: D:\Conquer Data\Important\Conquer_Online Source_v6159\AccountServer\AccountServerBinary2015.dll

using System;
using System.Runtime.InteropServices;
using System.Text;

#nullable enable
namespace AccountServer
{
  public class Packet : IDisposable
  {
    public const int MAX_SIZE = 512;
    public static int Padding;
    private unsafe byte* stream;

    [DllImport("msvcrt.dll", CallingConvention = (CallingConvention) 2)]
    private static extern unsafe void* memcpy(void* dst, void* src, int num);

    [DllImport("msvcrt.dll", CallingConvention = (CallingConvention) 2)]
    private static extern unsafe void* memset(void* dst, int val, int count);

    public int Size { get; set; }

    public unsafe byte* Memory { get; private set; }

    public unsafe bool IsDisposed => (IntPtr) this.Memory == IntPtr.Zero;

    public unsafe int Position => (int) (this.stream - this.Memory);

    public unsafe byte* Stream => this.stream;

    public unsafe Packet(int size)
    {
      this.Memory = (byte*) Marshal.AllocHGlobal(size);
      this.stream = this.Memory;
    }

    ~Packet() => this.Dispose();

    public unsafe void Dispose()
    {
      if (this.IsDisposed)
        return;
      Marshal.FreeHGlobal((IntPtr) this.Memory);
      this.Memory = (byte*) null;
      GC.SuppressFinalize((object) this);
    }

    public void InitWriter() => this.Seek(4);

    public unsafe void Seek(int offset) => this.stream = this.Memory + offset;

    public void SeekForward(int amount) => this.Seek(this.Position + amount);

    public void SeekBackwards(int amount) => this.Seek(this.Position - amount);

    public unsafe void Write(byte value)
    {
      *this.stream = value;
      ++this.stream;
    }

    public unsafe void Write(ushort value)
    {
      *(short*) this.stream = (short) value;
      this.stream += 2;
    }

    public unsafe void Write(uint value)
    {
      *(int*) this.stream = (int) value;
      this.stream += 4;
    }

    public unsafe void Write(ulong value)
    {
      *(long*) this.stream = (long) value;
      this.stream += 8;
    }

    public void Write(sbyte value) => this.Write((byte) value);

    public void Write(short value) => this.Write((ushort) value);

    public void Write(int value) => this.Write((uint) value);

    public void Write(long value) => this.Write((ulong) value);

    public void Write(string value, int length)
    {
      int num = Math.Min(value.Length, length);
      for (int index = 0; index < num; ++index)
        this.Write((byte) value[index]);
      this.ZeroFill(length - num);
    }

    public void Write(params string[] value)
    {
      this.Write((byte) value.Length);
      for (int index = 0; index < value.Length; ++index)
      {
        string str = value[index];
        if (string.IsNullOrEmpty(str))
        {
          this.Write((byte) 0);
        }
        else
        {
          this.Write((byte) str.Length);
          this.Write(str, str.Length);
        }
      }
    }

    public void Write(byte[] values)
    {
      for (int index = 0; index < values.Length; ++index)
        this.Write(values[index]);
    }

    public unsafe void WriteUnsafe(void* buf, int length)
    {
      Packet.memcpy((void*) this.stream, buf, length);
      this.stream += length;
    }

    public unsafe void ZeroFill(int amount)
    {
      Packet.memset((void*) this.stream, 0, amount);
      this.stream += amount;
    }

    public string[] ReadStringList()
    {
      string[] strArray = new string[(int) this.ReadUInt8()];
      for (int index = 0; index < strArray.Length; ++index)
        strArray[index] = this.ReadCString((int) this.ReadUInt8());
      return strArray;
    }

    public unsafe void ReadUnsafe(void* buf, int length)
    {
      Packet.memcpy(buf, (void*) this.stream, length);
      this.stream += length;
    }

    public byte[] ReadBytes(int size)
    {
      byte[] numArray = new byte[size];
      for (int index = 0; index < numArray.Length; ++index)
        numArray[index] = this.ReadUInt8();
      return numArray;
    }

    public unsafe string ReadCString(int size)
    {
      string str = new string((sbyte*) this.stream, 0, size);
      this.stream += size;
      int length = str.IndexOf(char.MinValue);
      return length > -1 ? str.Substring(0, length) : str;
    }

    public unsafe byte ReadUInt8()
    {
      byte num = *this.stream;
      ++this.stream;
      return num;
    }

    public unsafe ushort ReadUInt16()
    {
      ushort num = *(ushort*) this.stream;
      this.stream += 2;
      return num;
    }

    public unsafe uint ReadUInt32()
    {
      uint num = *(uint*) this.stream;
      this.stream += 4;
      return num;
    }

    public unsafe ulong ReadUInt64()
    {
      ulong num = (ulong) *(long*) this.stream;
      this.stream += 8;
      return num;
    }

    public sbyte ReadInt8() => (sbyte) this.ReadUInt8();

    public short ReadInt16() => (short) this.ReadUInt16();

    public int ReadInt32() => (int) this.ReadUInt32();

    public long ReadInt64() => (long) this.ReadUInt64();

    public void Finalize(ushort type)
    {
      this.Size = this.Position;
      this.Seek(0);
      this.Write((ushort) (this.Size - Packet.Padding));
      this.Write(type);
    }

    private static unsafe string CreatePacketStringWithNumbers(byte* b, int len)
    {
      StringBuilder stringBuilder = new StringBuilder(len * 4 + (len / 16 + 1) * 9);
      for (int index1 = 0; index1 < len; index1 += 16)
      {
        stringBuilder.AppendFormat("[{0:000}] ", (object) index1);
        for (int index2 = index1; index2 < index1 + 16; ++index2)
        {
          if (index2 >= len)
            stringBuilder.Append("   ");
          else
            stringBuilder.AppendFormat("{0:x2} ", (object) b[index2]);
        }
        stringBuilder.Append('\t');
        for (int index3 = index1; index3 < index1 + 16; ++index3)
        {
          if (index3 >= len)
            stringBuilder.Append(" ");
          else if (b[index3] > (byte) 32 && b[index3] < (byte) 127)
            stringBuilder.AppendFormat("{0}", (object) (char) b[index3]);
          else
            stringBuilder.Append('.');
        }
        stringBuilder.Append("\r\n");
      }
      return stringBuilder.ToString();
    }

    public static unsafe string Dump(byte[] b)
    {
      fixed (byte* b1 = b)
        return Packet.CreatePacketStringWithNumbers(b1, b.Length);
    }

    public unsafe string Dump(string header)
    {
      int position = this.Position;
      this.Seek(2);
      int num = (int) this.ReadUInt16();
      this.Seek(position);
      return "Packet (" + header + ") - Type: " + num.ToString() + " Size - " + this.Size.ToString() + "\r\n" + Packet.CreatePacketStringWithNumbers(this.Memory, this.Size);
    }
  }
}
