using Microsoft.CodeAnalysis;
using Microsoft.CodeAnalysis.CSharp.Scripting;
using Microsoft.CodeAnalysis.Scripting;
using Serilog;
using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.Server.Scripts.DynamicItems
{
    public class ItemScript
    {
        private static string _scriptsFolder;
        private readonly FileSystemWatcher _watcher;
        private static ConcurrentDictionary<uint, ScriptRunner<object>> _scriptRunners = new();
        private readonly ConcurrentDictionary<string, Timer> _debounceTimers = new();
        private static ILogger logger = Log.ForContext<ItemScript>();

        private static ScriptOptions _options;

        public ItemScript(string scriptsFolder)
        {
            _scriptsFolder = scriptsFolder;

            _options = ScriptOptions.Default
                .WithImports(
                    "System",
                    "System.Threading.Tasks",
                    "System.Collections.Generic"
                )
                .WithReferences(AppDomain.CurrentDomain.GetAssemblies()
                    .Where(a => !a.IsDynamic && !string.IsNullOrEmpty(a.Location))
                    .Select(a => MetadataReference.CreateFromFile(a.Location)));

            _watcher = new FileSystemWatcher(_scriptsFolder, "*.csx")
            {
                NotifyFilter = NotifyFilters.LastWrite | NotifyFilters.FileName | NotifyFilters.Size,
                EnableRaisingEvents = true
            };

            _watcher.Changed += OnScriptChanged;
            _watcher.Created += OnScriptChanged;
            _watcher.Deleted += OnScriptDeleted;
            _watcher.Renamed += OnScriptRenamed;

            LoadAllScripts();
        }

        private void OnScriptChanged(object sender, FileSystemEventArgs e)
        {
            logger.Information($"Script changed: {e.Name}");
            DebounceLoad(e.FullPath);
        }

        private void OnScriptRenamed(object sender, RenamedEventArgs e)
        {
            OnScriptDeleted(sender, new FileSystemEventArgs(WatcherChangeTypes.Deleted, Path.GetDirectoryName(e.OldFullPath)!, e.OldName!));
            OnScriptChanged(sender, new FileSystemEventArgs(WatcherChangeTypes.Created, Path.GetDirectoryName(e.FullPath)!, e.Name!));
        }

        private void OnScriptDeleted(object sender, FileSystemEventArgs e)
        {
            string fileName = Path.GetFileNameWithoutExtension(e.Name);
            if (uint.TryParse(fileName, out uint id))
            {
                _scriptRunners.TryRemove(id, out _);
                logger.Warning($"Script {id} removed.");
            }
        }

        private void DebounceLoad(string path)
        {
            const int debounceTimeMs = 500;

            if (_debounceTimers.TryGetValue(path, out var existingTimer))
            {
                existingTimer.Change(debounceTimeMs, Timeout.Infinite);
            }
            else
            {
                var timer = new Timer(_ =>
                {
                    LoadScript(path);
                    _debounceTimers.TryRemove(path, out var t);
                    t?.Dispose();
                }, null, debounceTimeMs, Timeout.Infinite);

                _debounceTimers[path] = timer;
            }
        }

        private void LoadAllScripts()
        {
            foreach (var file in Directory.GetFiles(_scriptsFolder, "*.csx"))
                LoadScript(file);
        }

        private static void LoadScript(string path)
        {
            try
            {
                string fileName = Path.GetFileNameWithoutExtension(path);
                if (!uint.TryParse(fileName, out uint id))
                {
                    logger.Warning($"Invalid script id: {fileName}");
                    return;
                }

                var stopwatch = Stopwatch.StartNew();
                string code = File.ReadAllText(path);

                var script = CSharpScript.Create(code, _options, typeof(ScriptGlobals));
                var runner = script.CreateDelegate();

                _scriptRunners[id] = runner;
                stopwatch.Stop();

                logger.Information($"Script {id} compiled & cached in {stopwatch.ElapsedMilliseconds} ms.");
            }
            catch (Exception ex)
            {
                logger.Error($"Error loading script {path}: {ex.Message}");
            }
        }

        public static bool ExecuteItem(uint id, Client.GameClient player, Network.GamePackets.ConquerItem item)
        {
            var stopwatch = Stopwatch.StartNew();
            if (!_scriptRunners.TryGetValue(id, out var runner))
            {
                logger.Warning($"Script for item {id} not found in cache. Trying to load...");
                var filePath = Path.Combine(_scriptsFolder, $"{id}.csx");

                if (File.Exists(filePath))
                {
                    LoadScript(filePath);
                    if (!_scriptRunners.TryGetValue(id, out runner))
                        return false;
                }
                else
                {
                    logger.Warning($"No script file found for item {id}");
                    return false;
                }
            }

            try
            {
                var globals = new ScriptGlobals(player, item);
                runner(globals);

                stopwatch.Stop();

                logger.Information($"Script {id} executed in {stopwatch.ElapsedMilliseconds} ms.");
                return true;
            }
            catch (Exception ex)
            {
                logger.Error($"Error executing script {id}: {ex.Message}");
                return false;
            }

        }
    }
}
