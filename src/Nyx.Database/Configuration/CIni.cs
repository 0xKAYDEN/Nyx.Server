namespace Nyx.Database.Configuration;

public sealed class CIni
{
    private readonly Dictionary<string, Dictionary<string, string>> _data =
        new(StringComparer.OrdinalIgnoreCase);

    public CIni(string path)
    {
        if (!File.Exists(path)) return;

        string section = "";
        foreach (var raw in File.ReadLines(path))
        {
            var line = raw.Trim();
            if (line.Length == 0 || line.StartsWith(';') || line.StartsWith('#'))
                continue;

            if (line[0] == '[' && line[^1] == ']')
            {
                section = line[1..^1].Trim();
                _data.TryAdd(section, new Dictionary<string, string>(
                    StringComparer.OrdinalIgnoreCase));
                continue;
            }

            int i = line.IndexOf('=');
            if (i <= 0 || section.Length == 0) continue;

            _data[section][line[..i].Trim()] = line[(i + 1)..].Trim();
        }
    }

    public string GetString(string section, string key, string defaultValue = "") =>
        _data.TryGetValue(section, out var s) &&
        s.TryGetValue(key, out var value) ? value : defaultValue;

    public uint GetUInt32(string section, string key, uint defaultValue = 0) =>
        uint.TryParse(GetString(section, key), out var value) ? value : defaultValue;

    public bool GetBoolean(string section, string key, bool defaultValue = false)
    {
        var value = GetString(section, key);
        if (value.Length == 0) return defaultValue;
        if (value is "1" or "true" or "yes" or "on") return true;
        if (value is "0" or "false" or "no" or "off") return false;
        return defaultValue;
    }
}
