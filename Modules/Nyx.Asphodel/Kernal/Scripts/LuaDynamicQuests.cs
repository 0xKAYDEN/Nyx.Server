using Microsoft.CodeAnalysis;
using Microsoft.CodeAnalysis.Scripting;
using NLua;
using Serilog;
using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.Asphodel.Kernal.Scripts
{
    public class LuaDynamicQuests
    {
        private static string _scriptsFolder;
        private static FileSystemWatcher _watcher;
        private static ConcurrentDictionary<uint, Lua> _luaInstances = new();
        private static ConcurrentDictionary<string, Timer> _debounceTimers = new();
        private static ILogger logger = Log.ForContext<LuaDynamicQuests>();
        private static ScriptOptions _options;

        public LuaDynamicQuests(string scriptsFolder)
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
        private static void OnScriptChanged(object sender, FileSystemEventArgs e)
        {
            logger.Information($"NPC Lua script changed: {e.Name}");
            DebounceLoad(e.FullPath);
        }

        private static void OnScriptRenamed(object sender, RenamedEventArgs e)
        {
            OnScriptDeleted(sender, new FileSystemEventArgs(WatcherChangeTypes.Deleted, Path.GetDirectoryName(e.OldFullPath)!, e.OldName!));
            OnScriptChanged(sender, new FileSystemEventArgs(WatcherChangeTypes.Created, Path.GetDirectoryName(e.FullPath)!, e.Name!));
        }

        private static void OnScriptDeleted(object sender, FileSystemEventArgs e)
        {
            string fileName = Path.GetFileNameWithoutExtension(e.Name);
            if (uint.TryParse(fileName, out uint id))
            {
                _luaInstances.TryRemove(id, out var lua);
                lua?.Dispose();
                logger.Warning($"NPC Lua script {id} removed.");
            }
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
                logger.Error($"[LuaDynamicQuests] Error loading all scripts: {ex.Message}");
            }
        }

        private static void LoadScript(string path)
        {
            try
            {

                string fileName = Path.GetFileNameWithoutExtension(path);
                if (!uint.TryParse(fileName, out uint id))
                {
                    logger.Warning($"[LuaDynamicQuests] Invalid NPC script id: {fileName}");
                    return;
                }

                var stopwatch = Stopwatch.StartNew();

                if (!File.Exists(path))
                {
                    logger.Warning($"[LuaDynamicQuests] Script file not found: {path}");
                    return;
                }

                string code = File.ReadAllText(path);
                if (string.IsNullOrEmpty(code))
                {
                    logger.Warning($"[LuaDynamicQuests] Script file is empty: {path}");
                    return;
                }

                //logger.Information($"[NpcLuaScript] Creating Lua instance for NPC {id}");
                var lua = new Lua();

                // Register NPC dialog functions
                logger.Information($"[LuaDynamicQuests] Registering NPC functions for NPC {id}");
                RegisterNpcFunctions(lua);

                // Load the script
                logger.Information($"[LuaDynamicQuests] Executing Lua code for NPC {id}");
                lua.DoString(code);

                // Dispose old instance if exists
                if (_luaInstances.TryGetValue(id, out var oldLua))
                {
                    logger.Information($"[LuaDynamicQuests] Disposing old Lua instance for NPC {id}");
                    oldLua?.Dispose();
                }

                _luaInstances[id] = lua;
                stopwatch.Stop();

                logger.Information($"[LuaDynamicQuests] NPC Lua script {id} loaded & cached in {stopwatch.ElapsedMilliseconds} ms.");
            }
            catch (Exception ex)
            {
                logger.Error($"[LuaDynamicQuests] Error loading NPC Lua script {path}: {ex.Message}");
                logger.Error($"[LuaDynamicQuests] Stack trace: {ex.StackTrace}");
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

        //public static bool ExecuteNpc(uint npcId, Client.GameClient player, Network.GamePackets.NpcRequest request)
        //{
        //    var stopwatch = Stopwatch.StartNew();
        //    if (!_luaInstances.TryGetValue(npcId, out var lua))
        //    {
        //        logger.Warning($"Lua script for NPC {npcId} not found in cache. Trying to load...");
        //        var filePath = Path.Combine(_scriptsFolder, $"{npcId}.lua");

        //        if (File.Exists(filePath))
        //        {
        //            LoadScript(filePath);
        //            if (!_luaInstances.TryGetValue(npcId, out lua))
        //                return false;
        //        }
        //        else
        //        {
        //            logger.Warning($"No Lua script file found for NPC {npcId}");
        //            return false;
        //        }
        //    }
        //    try
        //    {
        //        // Create script globals with NPC dialog functionality
        //        var globals = new NpcScriptGlobals(player, request);

        //        // Set globals in Lua
        //        lua["player"] = globals;
        //        lua["npc"] = globals;
        //        lua["request"] = request;

        //        // Execute the appropriate function based on interaction type
        //        string functionName = GetFunctionName(request.InteractType, request.OptionID);
        //        logger.Information($"NPC {npcId}: InteractType={request.InteractType}, OptionID={request.OptionID}, FunctionName={functionName}");

        //        var function = lua.GetFunction(functionName);
        //        if (function != null)
        //        {
        //            logger.Information($"Calling function {functionName} for NPC {npcId}");
        //            function.Call();
        //        }
        //        else
        //        {
        //            logger.Warning($"Function {functionName} not found for NPC {npcId}, trying fallback");
        //            // Try default function
        //            var defaultFunction = lua.GetFunction("on_interact");
        //            if (defaultFunction != null)
        //            {
        //                logger.Information($"Calling fallback function on_interact for NPC {npcId}");
        //                defaultFunction.Call();
        //            }
        //            else
        //            {
        //                logger.Warning($"No handler function found for NPC {npcId}");
        //                return false;
        //            }
        //        }

        //        stopwatch.Stop();
        //        logger.Information($"NPC Lua script {npcId} executed in {stopwatch.ElapsedMilliseconds} ms.");
        //        return true;
        //    }
        //    catch (Exception ex)
        //    {
        //        logger.Error($"Error executing NPC Lua script {npcId}: {ex.Message}");
        //        return false;
        //    }
        //}

        //private static string GetFunctionName(byte interactType, byte optionId)
        //{
        //    // For option selections, we should use the optionId to determine the function
        //    if (optionId > 0 && optionId != 255)
        //    {
        //        return $"on_option_{optionId}";
        //    }

        //    // For initial interactions or when optionId is 0
        //    if (optionId == 0)
        //    {
        //        return "on_talk";
        //    }

        //    // For input interactions
        //    if (interactType == 3) // Input
        //    {
        //        return "on_input";
        //    }

        //    // Default fallback
        //    return "on_interact";
        //}

        public void Dispose()
        {
            _watcher?.Dispose();
            foreach (var lua in _luaInstances.Values)
            {
                lua?.Dispose();
            }
            _luaInstances.Clear();
        }
    }

}
