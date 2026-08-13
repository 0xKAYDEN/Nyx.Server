using System.Text.Json;
using Nyx.Brain.Models;

namespace Nyx.Brain.Services
{
    public static class ConfigurationService
    {
        public static RateConfiguration LoadConfiguration(string filePath = "Config/BrainConfig.json")
        {
            try
            {
                if (!File.Exists(filePath))
                {
                    var defaultConfig = new RateConfiguration();
                    SaveConfiguration(defaultConfig, filePath);
                    return defaultConfig;
                }

                var json = File.ReadAllText(filePath);
                return JsonSerializer.Deserialize<RateConfiguration>(json, new JsonSerializerOptions
                {
                    PropertyNameCaseInsensitive = true
                }) ?? new RateConfiguration();
            }
            catch
            {
                return new RateConfiguration();
            }
        }

        public static void SaveConfiguration(RateConfiguration config, string filePath = "Config/BrainConfig.json")
        {
            try
            {
                var directory = Path.GetDirectoryName(filePath);
                if (!string.IsNullOrEmpty(directory) && !Directory.Exists(directory))
                {
                    Directory.CreateDirectory(directory);
                }

                var json = JsonSerializer.Serialize(config, new JsonSerializerOptions
                {
                    WriteIndented = true
                });
                File.WriteAllText(filePath, json);
            }
            catch
            {
            }
        }
    }
}
