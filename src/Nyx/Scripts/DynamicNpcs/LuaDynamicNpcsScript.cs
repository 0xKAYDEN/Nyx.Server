using Microsoft.CodeAnalysis;
using Microsoft.CodeAnalysis.Scripting;
using Microsoft.Extensions.Logging;
using NLua;
using Serilog;
using Serilog.Core;
using System.Collections.Concurrent;
using System.Diagnostics;
using static Nyx.Server.Network.GamePackets.Game_SubClass;

namespace Nyx.Server.Scripts.DynamicNpcs
{
    public sealed class LuaDynamicNpcsScript : IDisposable
    {
        private static readonly Serilog.ILogger _log = Log.ForContext<LuaDynamicNpcsScript>();

        private readonly string _folder;
        private readonly FileSystemWatcher _watcher;
        private readonly ConcurrentDictionary<uint, Lua> _instances = new();
        private readonly ConcurrentDictionary<string, Timer> _debounceTimers = new();


        public LuaDynamicNpcsScript(string scriptsFolder)
        {
            _folder = scriptsFolder;
            Directory.CreateDirectory(_folder);

            _watcher = new FileSystemWatcher(_folder, "*.lua")
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

        private void OnScriptRenamed(object sender, RenamedEventArgs e)
        {
            OnScriptDeleted(sender, new FileSystemEventArgs(WatcherChangeTypes.Deleted, Path.GetDirectoryName(e.OldFullPath)!, e.OldName!));
            OnScriptChanged(sender, new FileSystemEventArgs(WatcherChangeTypes.Created, Path.GetDirectoryName(e.FullPath)!, e.Name!));
        }

        private void OnScriptChanged(object sender, FileSystemEventArgs e)
        {
            _log.Information($"Script changed: {e.Name}");
            DebounceLoad(e.FullPath);

            if (!uint.TryParse(Path.GetFileNameWithoutExtension(e.Name), out var id)) return;

            if (_instances.TryRemove(id, out var lua))
                lua.Dispose();

            // remove from every map
            foreach (var map in Kernel.Maps.Values)
                map.RemoveNpc(id);
        }
        private void LoadAllScripts()
        {
            foreach (var file in Directory.GetFiles(_folder, "*.lua"))
                LoadScript(file);
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
        private void LoadScript(string path)
        {
            try
            {
                string fileName = Path.GetFileNameWithoutExtension(path);
                if (!uint.TryParse(fileName, out uint id))
                {
                    _log.Warning($"Invalid script id: {fileName}");
                    return;
                }

                var stopwatch = Stopwatch.StartNew();

                var code = File.ReadAllText(path);

                var lua = new Lua();
                RegisterFunctions(lua);

                lua.DoString(code);

                var init = lua.GetFunction("Init");
                if (init != null)
                {
                    lua["globals"] = new DynamicNpcsGlobals();
                    init.Call();
                }

                if (_instances.TryRemove(id, out var old))
                    old.Dispose();
                _instances[id] = lua;

                stopwatch.Stop();
                _log.Information($"[DynamicNpcs] Script {id} compiled & cached in {stopwatch.ElapsedMilliseconds} ms.");
            }
            catch (Exception ex)
            {
                _log.Error(ex, "[DynamicNpcs] failed to load {Path}", path);
            }
        }
        private static void RegisterFunctions(Lua lua)
        {
            lua.RegisterFunction("print", typeof(Console), typeof(Console).GetMethod("WriteLine", new[] { typeof(string) })!);
            lua.RegisterFunction("log", _log, _log.GetType().GetMethod("Information", new[] { typeof(string) })!);
            lua.RegisterFunction("random", typeof(Random), typeof(Random).GetMethod("Next", new[] { typeof(int), typeof(int) })!);
        }
        private void OnScriptDeleted(object? _, FileSystemEventArgs e)
        {
            if (!uint.TryParse(Path.GetFileNameWithoutExtension(e.Name), out var id)) return;

            if (_instances.TryRemove(id, out var lua))
                lua.Dispose();

            // remove from every map
            foreach (var map in Kernel.Maps.Values)
                map.RemoveNpc(id);

            _log.Information("[DynamicNpcs] script {NpcId} deleted", id);
        }
        public void Dispose()
        {
            _watcher?.Dispose();
            foreach (var lua in _instances.Values) lua?.Dispose();
            _instances.Clear();
        }
    }
}

