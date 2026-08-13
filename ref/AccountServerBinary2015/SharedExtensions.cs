// Decompiled with JetBrains decompiler
// Type: AccountServer.SharedExtensions
// Assembly: AccountServerBinary2015, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: EFCA16AA-F384-44A9-86B8-5D37A9F63575
// Assembly location: D:\Conquer Data\Important\Conquer_Online Source_v6159\AccountServer\AccountServerBinary2015.dll

using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Reflection;
using System.Text;

#nullable enable
namespace AccountServer
{
  public static class SharedExtensions
  {
    public static unsafe void CopyTo(
      this string str,
      int srcIndex,
      sbyte* pDst,
      int offset,
      int count)
    {
      for (int index = 0; index < count; ++index)
        pDst[offset + index] = (sbyte) str[srcIndex + index];
    }

    public static string String(this bool val) => val ? "Enabled" : "Disabled";

    public static uint GenerateHash(this string owner)
    {
      uint hash = 0;
      foreach (byte num1 in Encoding.ASCII.GetBytes(owner))
      {
        uint num2;
        hash = num2 = (hash >> 4 | hash << 4) ^ (uint) num1;
      }
      return hash;
    }

    public static void Remove<T, T2>(this ConcurrentDictionary<T, T2> owner, T key)
    {
      owner.TryRemove(key, out T2 _);
    }

    public static bool Contains(this string hayStack, string needle, StringComparison cmp)
    {
      return hayStack.IndexOf(needle, cmp) > -1;
    }

    public static bool IsNull<T>(this T obj) where T : class => (object) obj == null;

    public static T GetPrivateVar<T>(this object obj, string name)
    {
      return (T) obj.GetType().GetField(name, BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic).GetValue(obj);
    }

    public static T2 Pipe<T, T2>(this T arg, Func<T, T2> pipe) => pipe(arg);

    public static void Pipe<T>(this T arg, Action<T> pipe) => pipe(arg);

    public static bool AsBool(this int i) => i != 0;

    public static T3 WithValueOrDefault<T, T2, T3>(
      this IDictionary<T, T2> collection,
      T key,
      Func<T2, T3> with,
      T3 def = null)
    {
      T2 obj;
      return collection.TryGetValue(key, out obj) ? with(obj) : def;
    }

    public static T3 WithValueOrDefault<T, T2, T3>(
      this IDictionary<T, T2> collection,
      T key,
      Predicate<T2> where,
      Func<T2, T3> with,
      T3 def = null)
    {
      T2 obj;
      return collection.TryGetValue(key, out obj) && where(obj) ? with(obj) : def;
    }

    public static bool ForAll<T>(this IEnumerable<T> list, Func<T, bool> result)
    {
      foreach (T obj in list)
      {
        if (!result(obj))
          return false;
      }
      return true;
    }

    public static T[] Map<T, T2>(this T2[] collection, Func<T2, T> transform)
    {
      T[] objArray = new T[collection.Length];
      for (int index = 0; index < collection.Length; ++index)
        objArray[index] = transform(collection[index]);
      return objArray;
    }

    public static T[] Map<T, T2>(this List<T2> collection, Func<T2, T> transform)
    {
      T[] objArray = new T[collection.Count];
      for (int index = 0; index < collection.Count; ++index)
        objArray[index] = transform(collection[index]);
      return objArray;
    }

    public static List<T> ToList<T>(this T[] collection)
    {
      List<T> list = new List<T>(collection.Length);
      for (int index = 0; index < collection.Length; ++index)
        list.Add(collection[index]);
      return list;
    }

    public static string Delimiter<T>(this T[] collection, char delimiter)
    {
      StringBuilder stringBuilder = new StringBuilder();
      foreach (T obj in collection)
      {
        stringBuilder.Append((object) obj);
        stringBuilder.Append(delimiter);
      }
      return stringBuilder.Length > 0 ? stringBuilder.Remove(stringBuilder.Length - 1, 1).ToString() : stringBuilder.ToString();
    }

    public static T Singleton<T>(this T[] collection) => collection[0];

    public static void Iterate<T>(this T[] collection, Action<T> action)
    {
      foreach (T obj in collection)
        action(obj);
    }

    public static int CountWhile<T>(this T[] collection, Predicate<T> match)
    {
      for (int index = 0; index < collection.Length; ++index)
      {
        if (!match(collection[index]))
          return index;
      }
      return collection.Length;
    }

    public static void Ignore<T>(this T arg)
    {
    }
  }
}
