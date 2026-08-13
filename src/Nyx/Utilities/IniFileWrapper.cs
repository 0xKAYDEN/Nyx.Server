using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Text;

namespace Nyx.Server;

/// <summary>
/// Cross-platform INI file reader/writer.
/// Replaces the Windows-only IniFile class that used kernel32.dll P/Invoke.
/// 
/// This is a backward-compatible wrapper around CrossPlatformIniFile
/// that maintains the same API as the original IniFile class.
/// </summary>
public class IniFile
{
    private readonly Utilities.CrossPlatformIniFile _inner;

    /// <summary>
    /// Gets the file path.
    /// </summary>
    public string FileName => _inner.FilePath;

    /// <summary>
    /// Gets or sets the default section name.
    /// </summary>
    public string FileSection
    {
        get => _inner.DefaultSection;
        set => throw new NotSupportedException("Changing section after construction is not supported");
    }

    /// <summary>
    /// Creates a new IniFile instance.
    /// </summary>
    public IniFile() : this("config.ini", "data")
    {
    }

    /// <summary>
    /// Creates a new IniFile instance with the specified file path.
    /// </summary>
    /// <param name="fileName">Path to the INI file.</param>
    /// <param name="section">Default section name (default: "data").</param>
    public IniFile(string fileName, string section = "data")
    {
        _inner = new Utilities.CrossPlatformIniFile(fileName, section);
    }

    /// <summary>
    /// Indexer for reading/writing values in the default section.
    /// </summary>
    public object this[object key, object _default = null]
    {
        get
        {
            if (_inner.DefaultSection == null) return null;
            return _inner.ReadString(_inner.DefaultSection, key.ToString(), _default?.ToString() ?? "");
        }
        set
        {
            if (_inner.DefaultSection == null) return;
            _inner.Write(_inner.DefaultSection, key.ToString(), value);
        }
    }

    /// <summary>
    /// Reads a byte value.
    /// </summary>
    public byte ReadByte(string Section, string Key, byte _Default)
    {
        return _inner.ReadByte(Section, Key, _Default);
    }

    /// <summary>
    /// Reads a short value.
    /// </summary>
    public short ReadInt16(string Section, string Key, short _Default)
    {
        return _inner.ReadInt16(Section, Key, _Default);
    }

    /// <summary>
    /// Reads an integer value.
    /// </summary>
    public int ReadInt32(string Section, string Key, int _Default)
    {
        return _inner.ReadInt32(Section, Key, _Default);
    }

    /// <summary>
    /// Reads a signed byte value.
    /// </summary>
    public sbyte ReadSByte(string Section, string Key, byte _Default)
    {
        var str = _inner.ReadString(Section, Key, _Default.ToString());
        return sbyte.TryParse(str, out var result) ? result : (sbyte)_Default;
    }

    /// <summary>
    /// Reads a string value.
    /// </summary>
    public string ReadString(string Section, string Key)
    {
        return _inner.ReadString(Section, Key, "");
    }

    /// <summary>
    /// Reads a string value with default.
    /// </summary>
    public string ReadString(string Section, string Key, string _Default, int BufSize = 400)
    {
        return _inner.ReadString(Section, Key, _Default);
    }

    /// <summary>
    /// Reads an unsigned short value.
    /// </summary>
    public ushort ReadUInt16(string Section, string Key)
    {
        var str = _inner.ReadString(Section, Key, "0");
        return ushort.TryParse(str, out var result) ? result : (ushort)0;
    }

    /// <summary>
    /// Reads an unsigned integer value.
    /// </summary>
    public uint ReadUInt32(string Section, string Key)
    {
        return _inner.ReadUInt32(Section, Key, 0);
    }

    /// <summary>
    /// Writes a value to the specified section.
    /// </summary>
    public void Write(string Section, string Key, object Value)
    {
        _inner.Write(Section, Key, Value);
    }

    /// <summary>
    /// Writes a string value to the specified section.
    /// </summary>
    public void Write(string Section, string Key, string Value)
    {
        _inner.Write(Section, Key, Value);
    }

    /// <summary>
    /// Saves the INI file to disk.
    /// </summary>
    public void Save()
    {
        _inner.Save();
    }

    /// <summary>
    /// Reloads the INI file from disk.
    /// </summary>
    public void Reload()
    {
        _inner.Load();
    }

    /// <summary>
    /// Gets all section names.
    /// </summary>
    public string[] GetSectionNames()
    {
        return _inner.GetSectionNames();
    }

    /// <summary>
    /// Gets all key names in a section.
    /// </summary>
    public string[] GetKeyNames(string Section)
    {
        return _inner.GetKeyNames(Section);
    }

    /// <summary>
    /// Gets all key-value pairs in a section.
    /// </summary>
    public Dictionary<string, string> GetSectionValues(string Section)
    {
        return _inner.GetSectionValues(Section);
    }

    /// <summary>
    /// Gets all key-value pairs in a section as a list.
    /// </summary>
    public List<KeyValuePair<string, string>> GetSectionValuesAsList(string Section)
    {
        var dict = _inner.GetSectionValues(Section);
        return new List<KeyValuePair<string, string>>(dict);
    }

    /// <summary>
    /// Deletes a key from a section.
    /// </summary>
    public void DeleteKey(string sectionName, string keyName)
    {
        _inner.DeleteKey(sectionName, keyName);
    }

    /// <summary>
    /// Deletes an entire section.
    /// </summary>
    public void DeleteSection(string sectionName)
    {
        _inner.DeleteSection(sectionName);
    }

    /// <summary>
    /// Writes a double value.
    /// </summary>
    public void WriteValue(string sectionName, string keyName, double value)
    {
        _inner.Write(sectionName, keyName, value.ToString(CultureInfo.InvariantCulture));
    }

    /// <summary>
    /// Writes a short value.
    /// </summary>
    public void WriteValue(string sectionName, string keyName, short value)
    {
        _inner.Write(sectionName, keyName, value.ToString(CultureInfo.InvariantCulture));
    }

    /// <summary>
    /// Writes an integer value.
    /// </summary>
    public void WriteValue(string sectionName, string keyName, int value)
    {
        _inner.Write(sectionName, keyName, value.ToString(CultureInfo.InvariantCulture));
    }

    /// <summary>
    /// Writes a float value.
    /// </summary>
    public void WriteValue(string sectionName, string keyName, float value)
    {
        _inner.Write(sectionName, keyName, value.ToString(CultureInfo.InvariantCulture));
    }

    /// <summary>
    /// Writes a string value.
    /// </summary>
    public void WriteValue(string sectionName, string keyName, string value)
    {
        _inner.Write(sectionName, keyName, value);
    }

    /// <summary>
    /// Gets the file path.
    /// </summary>
    public string Path => _inner.FilePath;

    /// <summary>
    /// Gets a double value.
    /// </summary>
    public double GetDouble(string sectionName, string keyName, double defaultValue)
    {
        return _inner.ReadDouble(sectionName, keyName, defaultValue);
    }

    /// <summary>
    /// Gets an integer value.
    /// </summary>
    public int GetInt32(string sectionName, string keyName, int defaultValue)
    {
        return _inner.ReadInt32(sectionName, keyName, defaultValue);
    }

    /// <summary>
    /// Gets a string value.
    /// </summary>
    public string GetString(string sectionName, string keyName, string defaultValue)
    {
        return _inner.ReadString(sectionName, keyName, defaultValue);
    }
}
