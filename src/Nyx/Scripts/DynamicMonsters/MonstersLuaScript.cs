using Microsoft.CodeAnalysis;
using Microsoft.CodeAnalysis.Scripting;
using NLua;
using Nyx.Server.Scripts.DynamicNpcDialog;
using Serilog;
using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.Server.Scripts.DynamicMonsters
{
    public class MonstersLuaScript
    {
        private static string _scriptsFolder;
        private static FileSystemWatcher _watcher;
        private static ConcurrentDictionary<uint, Lua> _luaInstances = new();
        private static ConcurrentDictionary<string, Timer> _debounceTimers = new();
        private static ILogger logger = Log.ForContext<NpcLuaScript>();
        private static ScriptOptions _options;

        public MonstersLuaScript(string scriptsFolder)
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

            _watcher = new FileSystemWatcher(_scriptsFolder, "*.lua")
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

        private static void LoadAllScripts()
        {
            try
            {
                var files = Directory.GetFiles(_scriptsFolder, "*.lua");
                foreach (var file in files)
                {
                    LoadScript(file);
                }
            }
            catch (Exception ex)
            {
                logger.Error($"[NpcLuaScript] Error loading all scripts: {ex.Message}");
            }
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
                _luaInstances.TryRemove(id, out var lua);
                lua?.Dispose();
                logger.Warning($"NPC Lua script {id} removed.");
            }
        }

        private void OnScriptChanged(object sender, FileSystemEventArgs e)
        {
            logger.Information($"Monster Lua script changed: {e.Name}");
            DebounceLoad(e.FullPath);
        }

        private static void DebounceLoad(string path)
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

        private static void LoadScript(string path)
        {
            try
            {

                string fileName = Path.GetFileNameWithoutExtension(path);
                if (!uint.TryParse(fileName, out uint id))
                {
                    logger.Warning($"[NpcLuaScript] Invalid NPC script id: {fileName}");
                    return;
                }

                var stopwatch = Stopwatch.StartNew();

                if (!File.Exists(path))
                {
                    logger.Warning($"[NpcLuaScript] Script file not found: {path}");
                    return;
                }

                string code = File.ReadAllText(path);
                if (string.IsNullOrEmpty(code))
                {
                    logger.Warning($"[NpcLuaScript] Script file is empty: {path}");
                    return;
                }

                //logger.Information($"[NpcLuaScript] Creating Lua instance for NPC {id}");
                var lua = new Lua();

                // Register NPC dialog functions
                logger.Information($"[NpcLuaScript] Registering NPC functions for NPC {id}");
                RegisterNpcFunctions(lua);

                // Inject MonsterGlobals
                lua["globals"] = new MonsterScriptGlobals();

                // Load the script
                logger.Information($"[NpcLuaScript] Executing Lua code for NPC {id}");
                lua.DoString(code);

                // Dispose old instance if exists
                if (_luaInstances.TryGetValue(id, out var oldLua))
                {
                    logger.Information($"[NpcLuaScript] Disposing old Lua instance for NPC {id}");
                    oldLua?.Dispose();
                }

                _luaInstances[id] = lua;
                stopwatch.Stop();

                logger.Information($"[NpcLuaScript] NPC Lua script {id} loaded & cached in {stopwatch.ElapsedMilliseconds} ms.");
            }
            catch (Exception ex)
            {
                logger.Error($"[NpcLuaScript] Error loading NPC Lua script {path}: {ex.Message}");
                logger.Error($"[NpcLuaScript] Stack trace: {ex.StackTrace}");
            }
        }

        private static void RegisterNpcFunctions(Lua lua)
        {
            // Register common Lua functions that NPCs might need
            try
            {
                lua.RegisterFunction("print", typeof(Console), typeof(Console).GetMethod("WriteLine", new[] { typeof(string) }));
            }
            catch (Exception ex)
            {
                logger.Warning($"Failed to register print function: {ex.Message}");
            }
        }
    }
}
