// Decompiled with JetBrains decompiler
// Type: AccountServer.World
// Assembly: AccountServerBinary2015, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: EFCA16AA-F384-44A9-86B8-5D37A9F63575
// Assembly location: D:\Conquer Data\Important\Conquer_Online Source_v6159\AccountServer\AccountServerBinary2015.dll

using System;
using System.Collections.Concurrent;
using System.IO;

#nullable enable
namespace AccountServer
{
  public class World
  {
    public static ProcessFactory Factory = new ProcessFactory(6);
    public static MainWindow FormInstance;
    public static AuthServer LoginServer;
    public static PointServer PointServer;
    public static bool GMOnly;
    public static int ClientLimit;
    public static string OnlineColumn = "online";
    public static int DefaultVIP = 0;
    public static object ExtensiveLock = new object();
    public static object DebugLock = new object();
    public static ConcurrentDictionary<uint, GameServer> Servers = new ConcurrentDictionary<uint, GameServer>();
    public const int HEARTBEAT_INTERVAL_SECS = 86400;
    public const int HEARTBEAT_KICK_SECS = 86400;
    public const int SERVER_BUSY_DELAY_SECS = 30000;
    public const int SERVER_FULL_DELAY_SECS = 30000;

    public static void DebugWriteLine(string Line, params object[] args)
    {
      try
      {
        if (World.FormInstance == null)
          return;
        string str = string.Format(Line, args);
        string format = string.Format("[{0}] {1}", (object) DateTime.Now.ToLongTimeString(), (object) str);
        World.FormInstance.WriteLine(format);
      }
      catch
      {
      }
    }

    public static void DebugLog(string Line, params object[] args)
    {
      lock (World.DebugLock)
      {
        try
        {
          string str1 = string.Format(Line, args);
          DateTime now = DateTime.Now;
          string longTimeString = now.ToLongTimeString();
          now = DateTime.Now;
          // ISSUE: variable of a boxed type
          __Boxed<int> millisecond = (ValueType) now.Millisecond;
          string str2 = str1;
          string str3 = string.Format("[{0}:{1}] {2}", (object) longTimeString, (object) millisecond, (object) str2);
          string path = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, nameof (DebugLog));
          if (!Directory.Exists(path))
            Directory.CreateDirectory(path);
          string path1 = path;
          now = DateTime.Now;
          string path2 = now.ToLongDateString() + ".txt";
          using (StreamWriter streamWriter = new StreamWriter(Path.Combine(path1, path2), true))
          {
            streamWriter.WriteLine(str3);
            streamWriter.Flush();
          }
        }
        catch
        {
        }
      }
    }

    public static void ExtensiveLog(string Line, params object[] args)
    {
      lock (World.ExtensiveLock)
      {
        try
        {
          string str1 = string.Format(Line, args);
          DateTime now = DateTime.Now;
          string longTimeString = now.ToLongTimeString();
          now = DateTime.Now;
          // ISSUE: variable of a boxed type
          __Boxed<int> millisecond = (ValueType) now.Millisecond;
          string str2 = str1;
          string str3 = string.Format("[{0}:{1}] {2}", (object) longTimeString, (object) millisecond, (object) str2);
          string path = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, nameof (ExtensiveLog));
          if (!Directory.Exists(path))
            Directory.CreateDirectory(path);
          string path1 = path;
          now = DateTime.Now;
          string path2 = now.ToLongDateString() + ".txt";
          using (StreamWriter streamWriter = new StreamWriter(Path.Combine(path1, path2), true))
          {
            streamWriter.WriteLine(str3);
            streamWriter.Flush();
          }
        }
        catch
        {
        }
      }
    }
  }
}
