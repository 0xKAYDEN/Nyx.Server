using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Text;

namespace Nyx.Server.Utilities;

/// <summary>
/// Cross-platform INI file reader/writer.
/// Replaces the Windows-only IniFile class that used kernel32.dll P/Invoke.
/// 
/// Features:
/// - Pure .NET implementation (no P/Invoke)
/// - Thread-safe read operations
/// - Supports standard INI format: [sections], key=value, comments (; and #)
/// - Handles quoted values, whitespace trimming
/// </summary>
public sealed class CrossPlatformIniFile
{
    private readonly string _filePath;
    private readonly string _defaultSection;
    private readonly object _lock = new();
    private Dictionary<string, Dictionary<string, string>> _sections = new(StringComparer.OrdinalIgnoreCase);

    /// <summary>
    /// Gets the file path of the INI file.
    /// </summary>
    public string FilePath => _filePath;

    /// <summary>
    /// Gets the default section name.
    /// </summary>
    public string DefaultSection => _defaultSection;

    /// <summary>
    /// Creates a new CrossPlatformIniFile instance.
    /// </summary>
    /// <param name="filePath">Path to the INI file.</param>
    /// <param name="defaultSection">Default section name for operations (default: "data").</param>
    public CrossPlatformIniFile(string filePath, string defaultSection = "data")
    {
        _filePath = Path.GetFullPath(filePath);
        _defaultSection = defaultSection;
        Load();
    }

    /// <summary>
    /// Loads or reloads the INI file from disk.
    /// </summary>
    public void Load()
    {
        lock (_lock)
        {
            _sections = new Dictionary<string, Dictionary<string, string>>(StringComparer.OrdinalIgnoreCase);

            if (!File.Exists(_filePath))
                return;

            var currentSection = "";
            _sections[currentSection] = new Dictionary<string, string>(StringComparer.OrdinalIgnoreCase);

            foreach (var line in File.ReadAllLines(_filePath, Encoding.UTF8))
            {
                var trimmed = line.Trim();

                // Skip empty lines and comments
                if (string.IsNullOrEmpty(trimmed) || trimmed[0] == ';' || trimmed[0] == '#')
                    continue;

                // Section header
                if (trimmed[0] == '[' && trimmed[^1] == ']')
                {
                    currentSection = trimmed[1..^1].Trim();
                    if (!_sections.ContainsKey(currentSection))
                        _sections[currentSection] = new Dictionary<string, string>(StringComparer.OrdinalIgnoreCase);
                    continue;
                }

                // Key=Value pair
                var equalsIndex = trimmed.IndexOf('=');
                if (equalsIndex > 0)
                {
                    var key = trimmed[..equalsIndex].Trim();
                    var value = trimmed[(equalsIndex + 1)..].Trim();

                    // Remove quotes if present
                    if (value.Length >= 2 && 
                        ((value[0] == '"' && value[^1] == '"') || 
                         (value[0] == '\'' && value[^1] == '\'')))
                    {
                        value = value[1..^1];
                    }

                    _sections[currentSection][key] = value;
                }
            }
        }
    }

    /// <summary>
    /// Saves the current data back to the INI file.
    /// </summary>
    public void Save()
    {
        lock (_lock)
        {
            var sb = new StringBuilder();

            // Write default section first (if has entries)
            if (_sections.TryGetValue("", out var defaultEntries) && defaultEntries.Count > 0)
            {
                foreach (var kvp in defaultEntries)
                {
                    sb.AppendLine($"{kvp.Key}={kvp.Value}");
                }
                sb.AppendLine();
            }

            // Write named sections
            foreach (var section in _sections)
            {
                if (string.IsNullOrEmpty(section.Key) || section.Value.Count == 0)
                    continue;

                sb.AppendLine($"[{section.Key}]");
                foreach (var kvp in section.Value)
                {
                    sb.AppendLine($"{kvp.Key}={kvp.Value}");
                }
                sb.AppendLine();
            }

            File.WriteAllText(_filePath, sb.ToString(), Encoding.UTF8);
        }
    }

    /// <summary>
    /// Reads a string value from the specified section.
    /// </summary>
    public string ReadString(string section, string key, string defaultValue = "")
    {
        lock (_lock)
        {
            if (_sections.TryGetValue(section, out var entries) &&
                entries.TryGetValue(key, out var value))
            {
                return value;
            }
            return defaultValue;
        }
    }

    /// <summary>
    /// Reads a string value from the default section.
    /// </summary>
    public string ReadString(string key, string defaultValue = "")
    {
        return ReadString(_defaultSection, key, defaultValue);
    }

    /// <summary>
    /// Reads an integer value from the specified section.
    /// </summary>
    public int ReadInt32(string section, string key, int defaultValue = 0)
    {
        var str = ReadString(section, key, defaultValue.ToString(CultureInfo.InvariantCulture));
        return int.TryParse(str, out var result) ? result : defaultValue;
    }

    /// <summary>
    /// Reads an unsigned integer value from the specified section.
    /// </summary>
    public uint ReadUInt32(string section, string key, uint defaultValue = 0)
    {
        var str = ReadString(section, key, defaultValue.ToString(CultureInfo.InvariantCulture));
        return uint.TryParse(str, out var result) ? result : defaultValue;
    }

    /// <summary>
    /// Reads a byte value from the specified section.
    /// </summary>
    public byte ReadByte(string section, string key, byte defaultValue = 0)
    {
        var str = ReadString(section, key, defaultValue.ToString(CultureInfo.InvariantCulture));
        return byte.TryParse(str, out var result) ? result : defaultValue;
    }

    /// <summary>
    /// Reads a short value from the specified section.
    /// </summary>
    public short ReadInt16(string section, string key, short defaultValue = 0)
    {
        var str = ReadString(section, key, defaultValue.ToString(CultureInfo.InvariantCulture));
        return short.TryParse(str, out var result) ? result : defaultValue;
    }

    /// <summary>
    /// Reads a double value from the specified section.
    /// </summary>
    public double ReadDouble(string section, string key, double defaultValue = 0.0)
    {
        var str = ReadString(section, key, defaultValue.ToString(CultureInfo.InvariantCulture));
        return double.TryParse(str, NumberStyles.Float, CultureInfo.InvariantCulture, out var result) ? result : defaultValue;
    }

    /// <summary>
    /// Reads a boolean value from the specified section.
    /// </summary>
    public bool ReadBoolean(string section, string key, bool defaultValue = false)
    {
        var str = ReadString(section, key, defaultValue.ToString()).Trim();
        return str switch
        {
            "1" or "true" or "yes" or "on" => true,
            "0" or "false" or "no" or "off" => false,
            _ => defaultValue
        };
    }

    /// <summary>
    /// Writes a value to the specified section.
    /// </summary>
    public void Write(string section, string key, object value)
    {
        lock (_lock)
        {
            if (!_sections.TryGetValue(section, out var entries))
            {
                entries = new Dictionary<string, string>(StringComparer.OrdinalIgnoreCase);
                _sections[section] = entries;
            }
            entries[key] = value?.ToString() ?? "";
        }
    }

    /// <summary>
    /// Writes a value to the default section.
    /// </summary>
    public void Write(string key, object value)
    {
        Write(_defaultSection, key, value);
    }

    /// <summary>
    /// Deletes a key from the specified section.
    /// </summary>
    public bool DeleteKey(string section, string key)
    {
        lock (_lock)
        {
            if (_sections.TryGetValue(section, out var entries))
            {
                return entries.Remove(key);
            }
            return false;
        }
    }

    /// <summary>
    /// Deletes an entire section.
    /// </summary>
    public bool DeleteSection(string section)
    {
        lock (_lock)
        {
            return _sections.Remove(section);
        }
    }

    /// <summary>
    /// Gets all section names.
    /// </summary>
    public string[] GetSectionNames()
    {
        lock (_lock)
        {
            var names = new List<string>();
            foreach (var key in _sections.Keys)
            {
                if (!string.IsNullOrEmpty(key))
                    names.Add(key);
            }
            return names.ToArray();
        }
    }

    /// <summary>
    /// Gets all key names in a section.
    /// </summary>
    public string[] GetKeyNames(string section)
    {
        lock (_lock)
        {
            if (_sections.TryGetValue(section, out var entries))
            {
                var keys = new string[entries.Count];
                entries.Keys.CopyTo(keys, 0);
                return keys;
            }
            return Array.Empty<string>();
        }
    }

    /// <summary>
    /// Gets all key-value pairs in a section.
    /// </summary>
    public Dictionary<string, string> GetSectionValues(string section)
    {
        lock (_lock)
        {
            if (_sections.TryGetValue(section, out var entries))
            {
                return new Dictionary<string, string>(entries, StringComparer.OrdinalIgnoreCase);
            }
            return new Dictionary<string, string>(StringComparer.OrdinalIgnoreCase);
        }
    }

    /// <summary>
    /// Checks if a section exists.
    /// </summary>
    public bool HasSection(string section)
    {
        lock (_lock)
        {
            return _sections.ContainsKey(section);
        }
    }

    /// <summary>
    /// Checks if a key exists in a section.
    /// </summary>
    public bool HasKey(string section, string key)
    {
        lock (_lock)
        {
            return _sections.TryGetValue(section, out var entries) && entries.ContainsKey(key);
        }
    }

    /// <summary>
    /// Indexer for backward compatibility with IniFile.
    /// </summary>
    public string this[string key]
    {
        get => ReadString(_defaultSection, key);
        set => Write(_defaultSection, key, value);
    }

    /// <summary>
    /// Indexer with section for backward compatibility.
    /// </summary>
    public string this[string section, string key]
    {
        get => ReadString(section, key);
        set => Write(section, key, value);
    }
}
