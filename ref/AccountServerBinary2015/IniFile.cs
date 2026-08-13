// Decompiled with JetBrains decompiler
// Type: AccountServer.IniFile
// Assembly: AccountServerBinary2015, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: EFCA16AA-F384-44A9-86B8-5D37A9F63575
// Assembly location: D:\Conquer Data\Important\Conquer_Online Source_v6159\AccountServer\AccountServerBinary2015.dll

using System.IO;
using System.Runtime.InteropServices;
using System.Text;

#nullable enable
namespace AccountServer
{
  public class IniFile
  {
    private string Path;

    [DllImport("kernel32")]
    private static extern int WritePrivateProfileString(
      string lpAppName,
      string lpKeyName,
      string lpString,
      string lpFileName);

    [DllImport("kernel32")]
    private static extern int GetPrivateProfileString(
      string lpAppName,
      string lpKeyName,
      string lpDefault,
      StringBuilder lpReturnedString,
      int nSize,
      string lpFileName);

    public IniFile(string Path) => this.Path = Path;

    public bool FileExists() => File.Exists(this.Path);

    public int WriteValue(string Section, string Key, object Value)
    {
      return IniFile.WritePrivateProfileString(Section, Key, Value.ToString(), this.Path);
    }

    public ushort ReadUInt16(string Section, string Key)
    {
      StringBuilder lpReturnedString = new StringBuilder(1024);
      IniFile.GetPrivateProfileString(Section, Key, "0", lpReturnedString, lpReturnedString.Capacity, this.Path);
      ushort result = 0;
      ushort.TryParse(lpReturnedString.ToString(), out result);
      return result;
    }

    public int ReadInt32(string Section, string Key)
    {
      StringBuilder lpReturnedString = new StringBuilder(1024);
      IniFile.GetPrivateProfileString(Section, Key, "0", lpReturnedString, lpReturnedString.Capacity, this.Path);
      int result = 0;
      int.TryParse(lpReturnedString.ToString(), out result);
      return result;
    }

    public string ReadString(string Section, string Key)
    {
      StringBuilder lpReturnedString = new StringBuilder(1024);
      IniFile.GetPrivateProfileString(Section, Key, "", lpReturnedString, lpReturnedString.Capacity, this.Path);
      return lpReturnedString.ToString();
    }

    public string ReadValue(string Section, string Key)
    {
      StringBuilder lpReturnedString = new StringBuilder(1024);
      IniFile.GetPrivateProfileString(Section, Key, "0", lpReturnedString, lpReturnedString.Capacity, this.Path);
      return lpReturnedString.ToString();
    }
  }
}
