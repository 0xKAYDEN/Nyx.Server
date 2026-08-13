// Decompiled with JetBrains decompiler
// Type: AccountServer.LogFile
// Assembly: AccountServerBinary2015, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: EFCA16AA-F384-44A9-86B8-5D37A9F63575
// Assembly location: D:\Conquer Data\Important\Conquer_Online Source_v6159\AccountServer\AccountServerBinary2015.dll

using System;
using System.Collections.Concurrent;
using System.IO;
using System.Linq;

#nullable enable
namespace AccountServer
{
  public class LogFile
  {
    private static ConcurrentBag<string> OutPurgeQueue = new ConcurrentBag<string>();
    private static ConcurrentBag<string> InPurgeQueue = new ConcurrentBag<string>();
    private static uint LastPurge = 0;
    private static uint LastGarbage = 0;

    static LogFile()
    {
      if (!Directory.Exists(Environment.CurrentDirectory + "\\DebugLog\\"))
        Directory.CreateDirectory(Environment.CurrentDirectory + "\\DebugLog\\");
      if (!Directory.Exists(Environment.CurrentDirectory + "\\InLogs\\"))
        Directory.CreateDirectory(Environment.CurrentDirectory + "\\InLogs\\");
      if (!Directory.Exists(Environment.CurrentDirectory + "\\OutLogs\\"))
        Directory.CreateDirectory(Environment.CurrentDirectory + "\\OutLogs\\");
      if (Directory.Exists(Environment.CurrentDirectory + "\\ExtensiveLog\\"))
        return;
      Directory.CreateDirectory(Environment.CurrentDirectory + "\\ExtensiveLog\\");
    }

    private static string GenerateInLogFilePath()
    {
      return string.Format("{0}\\InLogs\\{1}.txt", (object) Environment.CurrentDirectory, (object) DateTime.Now.ToLongDateString());
    }

    private static string GenerateOutLogFilePath()
    {
      return string.Format("{0}\\OutLogs\\{1}.txt", (object) Environment.CurrentDirectory, (object) DateTime.Now.ToLongDateString());
    }

    public static void Purge()
    {
      if (TimeStamp.GetTime() > LogFile.LastPurge + 5000U)
      {
        lock (LogFile.InPurgeQueue)
        {
          string[] array = LogFile.InPurgeQueue.Reverse<string>().ToArray<string>();
          using (StreamWriter streamWriter = new StreamWriter(LogFile.GenerateInLogFilePath(), true))
          {
            foreach (string str in array)
              streamWriter.WriteLine(str);
            streamWriter.Flush();
          }
          LogFile.InPurgeQueue = new ConcurrentBag<string>();
        }
        lock (LogFile.OutPurgeQueue)
        {
          string[] array = LogFile.OutPurgeQueue.Reverse<string>().ToArray<string>();
          using (StreamWriter streamWriter = new StreamWriter(LogFile.GenerateOutLogFilePath(), true))
          {
            foreach (string str in array)
              streamWriter.WriteLine(str);
            streamWriter.Flush();
          }
          LogFile.OutPurgeQueue = new ConcurrentBag<string>();
        }
        LogFile.LastPurge = TimeStamp.GetTime();
      }
      if (TimeStamp.GetTime() <= LogFile.LastGarbage + 60000U)
        return;
      GC.Collect();
      LogFile.LastGarbage = TimeStamp.GetTime();
    }

    public static void AddInFileLog(string Line, params object[] args)
    {
      string str = string.Format(Line, args);
      LogFile.InPurgeQueue.Add(string.Format("[{0}] {1}", (object) DateTime.Now.ToLongTimeString(), (object) str));
    }

    public static void AddOutFileLog(string Line, params object[] args)
    {
      string str = string.Format(Line, args);
      LogFile.OutPurgeQueue.Add(string.Format("[{0}] {1}", (object) DateTime.Now.ToLongTimeString(), (object) str));
    }
  }
}
