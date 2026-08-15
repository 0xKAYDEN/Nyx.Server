using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Options;
using Nyx.Network;
using Nyx.Network.Cryptography;
using Nyx.Network.Protocol;
using Nyx.Server.Caching;
using Nyx.Server.Client;
using Nyx.Server.Database;
using Nyx.Server.Database.Repositories;
using Nyx.Server.Extensions;
using Nyx.Server.Game;
using Nyx.Monsters;
using Nyx.Server.Game.Attacking.Skills;
using Nyx.Server.Game.ConquerStructures; // For VariableVault
using Nyx.Server.Game.ConquerStructures.Society; // For Guild/Union
using Nyx.Server.Loading;
using Nyx.Server.Network;
using Nyx.Server.Network.GamePackets;
using Nyx.Server.Network.GamePackets.Union;
using Nyx.Server.Network.Dispatching;
using Nyx.Server.Network.Sockets;
using Nyx.Server.Scripts.DynamicItems;
using Nyx.Server.Scripts.DynamicMonsters;
using Nyx.Server.Scripts.DynamicNpcDialog;
using Nyx.Server.Scripts.DynamicNpcs;
using Nyx.Server.Soul;
using Nyx.Server.Threading;
using Nyx.Threading.Core;
using Serilog;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace Nyx.Server;

public sealed class Program
{
    public static DateTime LastRandomReset = DateTime.Now;
    public static ItemScript ItemScript;
    public static NpcLuaScript NpcLuaScript;
    public static MonstersLuaScript MonsterLuaScript;
    public static LuaDynamicNpcsScript DynamicNpcs { get; private set; }

    public static System.Text.Encoding Encoding => System.Text.ASCIIEncoding.Default;

    /// <summary>Legacy world state (sockets, tournaments, timers). Initialized at startup.</summary>
    public static World World { get; internal set; } = null!;

    /// <summary>Server-wide persisted variables (entity id 0).</summary>
    public static VariableVault Vars { get; private set; } = new VariableVault();

    private static readonly object OnlineSnapshotSyncRoot = new();
    private static readonly TimeSpan OnlineSnapshotCacheDuration = TimeSpan.FromMilliseconds(250);
    private static readonly TimeSpan NetworkStatsCacheDuration = TimeSpan.FromSeconds(15);
    private static GameClient[] _onlineClientSnapshot = Array.Empty<GameClient>();
    private static long _onlineClientSnapshotUpdatedAtTicks;
    private static int _onlineClientSnapshotCount = -1;
    private static string _cachedNetworkStats = "Net: N/A";
    private static long _cachedNetworkStatsUpdatedAtTicks;
    private static CancellationTokenSource? _performanceMonitorCts;
    private static Task? _performanceMonitorTask;

    /// <summary>Snapshot of online clients for legacy APIs that expect an array.</summary>
    public static GameClient[] Values => GetOnlineClientSnapshot();

    /// <summary>Same as <see cref="Values"/>; used by older code paths.</summary>
    public static GameClient[] GamePool => GetOnlineClientSnapshot();

    /// <summary>Legacy hook for automated GM-style commands (save/restart notices).</summary>
    public static void CommandsAI(string command)
    {
        Log.Information("CommandsAI: {Command}", command);
    }

    public static IHost? ApplicationHost { get; private set; }
    /// <summary>
    /// Removed. Scheduling is now handled directly by ThreadingController.
    /// See src/Nyx.Threading/Core/ThreadingController.cs
    /// </summary>
    [Obsolete("TaskScheduler has been removed — all work now routes through ThreadingController directly. Use ThreadingController.EnqueueAsync, TryEnqueue, or Subscribe instead.")]
    public static object? TaskScheduler => throw new InvalidOperationException(
        "TaskScheduler was removed. All scheduling now goes through ThreadingController. " +
        "See the server startup logs for initialization order: ThreadingController.EnsureInitialized() happens in InitializeServer().");
    public static IDataLoader? DataLoader { get; private set; }
    public static IRedisService? Redis { get; private set; }
    public static IDatabaseService? Database { get; private set; }
    public static Services.NyxBrainIntegrationService? BrainService { get; private set; }

    // Network configuration
    public static string GameIP = "0.0.0.0";
    public static ushort GamePort = 5816;
    public static ushort AuthPort = 9960;

    public static Int64 RandomSeed = 3721;

    private static int _maxOnline;
    private static System.Diagnostics.Stopwatch _serverUptime = new System.Diagnostics.Stopwatch();

    public static int MaxOn
    {
        get => _maxOnline;
        set => _maxOnline = Math.Max(_maxOnline, value);
    }

    public static GameClient[] GetOnlineClientSnapshot(bool forceRefresh = false)
    {
        var nowTicks = Environment.TickCount64;
        var currentCount = Kernel.GamePool.Count;
        var cachedSnapshot = _onlineClientSnapshot;

        if (!forceRefresh &&
            cachedSnapshot.Length == currentCount &&
            currentCount == _onlineClientSnapshotCount &&
            nowTicks - Volatile.Read(ref _onlineClientSnapshotUpdatedAtTicks) <= OnlineSnapshotCacheDuration.TotalMilliseconds)
        {
            return cachedSnapshot;
        }

        lock (OnlineSnapshotSyncRoot)
        {
            nowTicks = Environment.TickCount64;
            currentCount = Kernel.GamePool.Count;

            if (!forceRefresh &&
                _onlineClientSnapshot.Length == currentCount &&
                currentCount == _onlineClientSnapshotCount &&
                nowTicks - _onlineClientSnapshotUpdatedAtTicks <= OnlineSnapshotCacheDuration.TotalMilliseconds)
            {
                return _onlineClientSnapshot;
            }

            _onlineClientSnapshot = Kernel.GamePool.Values.ToArray();
            _onlineClientSnapshotCount = _onlineClientSnapshot.Length;
            Volatile.Write(ref _onlineClientSnapshotUpdatedAtTicks, nowTicks);
            return _onlineClientSnapshot;
        }
    }

    public static void CopyOnlineClients(List<GameClient> destination, bool requireAccount = false, bool requireAliveSocket = false)
    {
        ArgumentNullException.ThrowIfNull(destination);
        destination.Clear();

        var snapshot = GetOnlineClientSnapshot();
        for (var i = 0; i < snapshot.Length; i++)
        {
            var client = snapshot[i];
            if (client == null || client.Entity == null)
                continue;

            if (requireAccount && client.Account == null)
                continue;

            if (requireAliveSocket && (client.Socket == null || !client.Socket.Alive))
                continue;

            destination.Add(client);
        }
    }

    public static void UpdateConsoleTitle()
    {
        if (!OperatingSystem.IsWindows())
            return;

        try
        {
            var uptime = _serverUptime.Elapsed;
            var uptimeStr = $"{uptime.Days}d {uptime.Hours}h {uptime.Minutes}m {uptime.Seconds}s";
            var onlineClients = GetOnlineClientSnapshot();

            // Get performance metrics
            var process = System.Diagnostics.Process.GetCurrentProcess();
            var ramMB = process.WorkingSet64 / (1024.0 * 1024.0);
            var cpuUsage = GetCpuUsage(process);
            var networkStats = GetNetworkStats();

            var title = $"Nyx Server | Players: {onlineClients.Length} | RAM: {ramMB:F0}MB | CPU: {cpuUsage:F1}% | {networkStats} | Uptime: {uptimeStr}";
            Console.Title = title;
        }
        catch
        {
            // Fallback if metrics collection fails
            Console.Title = $">>>Nyx Server - Players: {GetOnlineClientSnapshot().Length}<<<";
        }
    }

    private static double GetCpuUsage(System.Diagnostics.Process proc)
    {
        try
        {
            // Simple CPU usage estimation using process times
            var cpuTime = proc.TotalProcessorTime.TotalMilliseconds;
            var elapsed = (DateTime.Now - proc.StartTime).TotalMilliseconds;
            if (elapsed > 0)
            {
                return (cpuTime / elapsed) * 100.0;
            }
            return 0;
        }
        catch
        {
            return 0;
        }
    }

    private static string GetNetworkStats()
    {
        var nowTicks = Environment.TickCount64;
        if (nowTicks - Volatile.Read(ref _cachedNetworkStatsUpdatedAtTicks) <= NetworkStatsCacheDuration.TotalMilliseconds)
        {
            return _cachedNetworkStats;
        }

        try
        {
            var networkInterfaces = System.Net.NetworkInformation.NetworkInterface.GetAllNetworkInterfaces();
            long totalReceived = 0;
            long totalSent = 0;

            foreach (var ni in networkInterfaces)
            {
                if (ni.OperationalStatus == System.Net.NetworkInformation.OperationalStatus.Up &&
                    ni.NetworkInterfaceType != System.Net.NetworkInformation.NetworkInterfaceType.Loopback)
                {
                    var stats = ni.GetIPStatistics();
                    totalReceived += (long)stats.BytesReceived;
                    totalSent += (long)stats.BytesSent;
                }
            }

            var recvMB = totalReceived / (1024.0 * 1024.0);
            var sentMB = totalSent / (1024.0 * 1024.0);
            _cachedNetworkStats = $"Net: ↓{recvMB:F0}MB ↑{sentMB:F0}MB";
        }
        catch
        {
            _cachedNetworkStats = "Net: N/A";
        }

        Volatile.Write(ref _cachedNetworkStatsUpdatedAtTicks, nowTicks);
        return _cachedNetworkStats;
    }

    private static void StartPerformanceMonitoring()
    {
        if (!OperatingSystem.IsWindows() || !Environment.UserInteractive)
            return;

        _performanceMonitorCts?.Cancel();
        _performanceMonitorCts?.Dispose();
        _performanceMonitorCts = new CancellationTokenSource();
        var cancellationToken = _performanceMonitorCts.Token;

        _performanceMonitorTask = Task.Run(async () =>
        {
            using var timer = new PeriodicTimer(TimeSpan.FromSeconds(2));

            while (await timer.WaitForNextTickAsync(cancellationToken))
            {
                try
                {
                    GetOnlineClientSnapshot(forceRefresh: true);
                    UpdateConsoleTitle();
                }
                catch (OperationCanceledException)
                {
                    break;
                }
                catch (Exception ex) when (!cancellationToken.IsCancellationRequested)
                {
                    Log.Warning(ex, "Error in performance monitoring");
                }
            }
        }, cancellationToken);
    }

    public static void Main(string[] args)
    {
        try
        {
            Directory.SetCurrentDirectory(AppContext.BaseDirectory);
        }
        catch
        {
            // If we cannot align cwd with the exe folder, legacy relative paths may fail.
        }

        var configPath = Path.Combine(AppContext.BaseDirectory, "ServerConfigurations.json");
        if (!File.Exists(configPath))
        {
            configPath = "ServerConfigurations.json";
        }

        Log.Logger = new LoggerConfiguration()
            .MinimumLevel.Information()
            .Enrich.FromLogContext()
            .WriteTo.Console(outputTemplate: "[{Timestamp:HH:mm:ss} {Level:u3}] {Message:lj}{NewLine}{Exception}")
            .WriteTo.File(
                path: Path.Combine("logs", "Nyx.Server-.log"),
                rollingInterval: Serilog.RollingInterval.Day,
                retainedFileCountLimit: 30,
                outputTemplate: "[{Timestamp:yyyy-MM-dd HH:mm:ss.fff zzz} {Level:u3}] {Message:lj}{NewLine}{Exception}",
                fileSizeLimitBytes: 10 * 1024 * 1024)
            .CreateLogger();

        try
        {
            Log.Information("Starting Nyx Game Server v9.0 Enterprise Edition");

            ApplicationHost = Microsoft.Extensions.Hosting.Host.CreateDefaultBuilder(args)
                .UseSerilog()
                .ConfigureServices((context, services) =>
                {
                    ConfigureServices(services, context.Configuration);
                })
                .ConfigureLogging(logging =>
                {
                    logging.ClearProviders();
                    logging.AddSerilog(Log.Logger, dispose: true);
                })
                .UseConsoleLifetime()
                .Build();

            InitializeServer();

            ApplicationHost.Run();
        }
        catch (Exception ex)
        {
            Log.Fatal(ex, "Server terminated unexpectedly");
        }
        finally
        {
            Shutdown();
            Log.CloseAndFlush();
        }
    }

    private static void ConfigureServices(IServiceCollection services, Microsoft.Extensions.Configuration.IConfiguration configuration)
    {
        var serverConfig = new EnterpriseServerConfigurations();

        configuration.GetSection("Database")?.Bind(serverConfig.Database);
        configuration.GetSection("Redis")?.Bind(serverConfig.Redis);
        configuration.GetSection("Server")?.Bind(serverConfig.Server);
        configuration.GetSection("Partitioning")?.Bind(serverConfig.Partitioning);
        configuration.GetSection("Threading")?.Bind(serverConfig.Threading);
        configuration.GetSection("HealthChecks")?.Bind(serverConfig.HealthChecks);
        configuration.GetSection("Telemetry")?.Bind(serverConfig.Telemetry);
        configuration.GetSection("Combat")?.Bind(serverConfig.Combat);

        // Store ports for later use
        GamePort = (ushort)serverConfig.Server.GamePort;
        AuthPort = (ushort)serverConfig.Server.AuthPort;
        GameIP = serverConfig.Server.ServerAddress;

        services.AddSingleton(Options.Create(serverConfig));
        services.AddSingleton(Options.Create(serverConfig.Partitioning));
        services.AddSingleton(Options.Create(serverConfig.Threading));
        services.AddSingleton(Options.Create(serverConfig.Database));
        services.AddSingleton(Options.Create(serverConfig.Redis));
        services.AddSingleton(Options.Create(serverConfig.Combat));

        // Constructors inject concrete config types, not IOptions<T>.
        services.AddSingleton(serverConfig.Partitioning);
        services.AddSingleton(serverConfig.Threading);
        services.AddSingleton(serverConfig.Database);
        services.AddSingleton(serverConfig.Redis);
        services.AddSingleton(serverConfig.Combat);

        // NOTE: GameTaskScheduler was removed — all work now routes through ThreadingController directly.
        // If you need a scheduler hook here, register it as an IHostedService that calls ThreadingController.
        services.AddSingleton<IDatabaseService, DatabaseService>();
        services.AddSingleton<IRedisService, RedisService>();
        services.AddSingleton<IDataLoader, PartitionedDataLoader>();

        // Register Network Services
        services.AddSingleton<Nyx.Network.AuthNetworkService>();
        services.AddSingleton<Nyx.Network.GameNetworkService>();
        services.AddHostedService<Nyx.Network.AuthNetworkService>(provider => provider.GetRequiredService<Nyx.Network.AuthNetworkService>());
        services.AddHostedService<Nyx.Network.GameNetworkService>(provider => provider.GetRequiredService<Nyx.Network.GameNetworkService>());

        // Register Game Logic Processing Services
        //services.AddSingleton<Nyx.Server.Services.NyxBrainIntegrationService>();
        //services.AddHostedService(provider => provider.GetRequiredService<Nyx.Server.Services.NyxBrainIntegrationService>());

        // Monster system (DI + tuples + lazy map loading, DB-backed repository)
        services.AddMonsterSystem();

        // Combat engine (Nyx.Combat): validation → targeting → scenario damage →
        // observers, with skill data read from cq_magictype.
        services.AddCombat();
        services.AddSingleton<Nyx.Monsters.Services.IMonsterRepository, Database.Monsters.PostgresMonsterRepository>();
        services.AddSingleton<Nyx.Monsters.Services.IWorldView, Game.Monsters.ServerWorldView>();
        services.AddSingleton<Nyx.Monsters.Services.IMonsterNetworkService, Game.Monsters.ServerMonsterNetworkService>();
        services.AddSingleton<Nyx.Monsters.Services.IMonsterQuestService, Game.Monsters.ServerMonsterQuestService>();

        services.AddHostedService<Nyx.Server.Threading.ThreadingBootstrapService>();
        services.AddHostedService<Nyx.Server.Threading.CharacterService>();
        services.AddHostedService<Nyx.Server.Threading.TournamentsService>();
        services.AddHostedService<Nyx.Server.Threading.SecurityService>();
        services.AddHostedService<Nyx.Server.Threading.WorldStateService>();
    }

    private static void InitializeServer()
    {
        Log.Information("Initializing server components...");

        AbstractDbContext.Configuration = ApplicationHost!.Services.GetRequiredService<IOptions<Nyx.Server.Database.DatabaseConfiguration>>().Value;

        DataHolder.Configure(AbstractDbContext.Configuration);
        DataHolder.ReadStats();

        // Nyx.Combat: load the skill catalog from cq_magictype and build the engine
        // eagerly, regardless of the UseCombatEngine flag — that flag only gates
        // whether the engine authors live damage, and a boot-time load surfaces a
        // bad table now rather than on the first punch thrown.
        try
        {
            var catalog = ApplicationHost!.Services
                .GetRequiredService<Nyx.Combat.Skills.SkillCatalogHost>();

            catalog.ReloadAsync(CancellationToken.None).AsTask().GetAwaiter().GetResult();

            // Touch the engine so a misconfiguration throws here, at startup.
            _ = ApplicationHost.Services.GetRequiredService<Nyx.Combat.Engine.CombatEngine>();

            var combatCfg = ApplicationHost.Services.GetRequiredService<Nyx.Server.CombatConfiguration>();

            Log.Information(
                "Nyx.Combat: {SkillCount} skill ranks across {TypeCount} skills loaded from cq_magictype (engine {State})",
                catalog.Count, catalog.TypeCount, combatCfg.UseCombatEngine ? "ACTIVE" : "standby");

            if (catalog.Count == 0)
                Log.Warning("Nyx.Combat: cq_magictype is empty — skill casts will fall back to the legacy path");
        }
        catch (Exception ex)
        {
            Log.Error(ex, "Nyx.Combat: startup load failed — skills will not resolve from cq_magictype");
        }

        // Nyx.Threading must be ready before World timers and packet routing
        ThreadingController.EnsureInitialized();
        GamePacketDispatcher.Initialize();

        World = new World();

        try
        {
            EntityTable.Load();
            Log.Information("EntityTable.Load: counter initialized to {UID}", EntityTable.EntityUID.Now);

            // Phase-1 bridge: route the legacy static monster table through the
            // new PostgreSQL-backed repository (Nyx.Monsters) before loading.
            var monsterRepo = ApplicationHost!.Services.GetRequiredService<Nyx.Monsters.Services.IMonsterRepository>();
            MonsterInformation.UseRepository(monsterRepo);

            MonsterInformation.Load();
            Map.CreateTimerFactories();
            Screen.CreateTimerFactories();

            MapsTable.Load();
            Log.Information("MapsTable.Load: {Count} map definitions", MapsTable.MapInformations.Count);
        }
        catch (Exception ex)
        {
            Log.Warning(ex, "MapsTable or MonsterTable load failed — world initialization may be incomplete");
        }

        try
        {
            DMaps.Load();
            Log.Information("DMaps.Load: {Count} maps in Kernel.Maps", Kernel.Maps.Count);
        }
        catch (Exception ex)
        {
            Log.Warning(ex, "DMaps.Load failed — world maps not initialized");
        }

        // TaskScheduler assignment removed — routing is now direct through ThreadingController.
        Database = ApplicationHost.Services.GetRequiredService<IDatabaseService>();
        Redis = ApplicationHost.Services.GetRequiredService<IRedisService>();
        DataLoader = ApplicationHost.Services.GetRequiredService<IDataLoader>();

        // Resolve Brain integration service (optional - may not be available yet)
        try
        {
            BrainService = ApplicationHost.Services.GetService<Services.NyxBrainIntegrationService>();
            if (BrainService != null)
            {
                Log.Information("Nyx.Brain integration service initialized");
            }
        }
        catch (Exception ex)
        {
            Log.Warning(ex, "Nyx.Brain service not available");
        }

        // Load essential item information before any item operations
        try
        {
            Nyx.Server.Database.ConquerItemInformation.Load();
            Log.Information("ConquerItemInformation loaded: {Count} base items", Nyx.Server.Database.ConquerItemInformation.BaseInformations.Count);
        }
        catch (Exception ex)
        {
            Log.Warning(ex, "ConquerItemInformation.Load failed - item rankings may not work");
        }

        // Load IP ban list
        try
        {
            Nyx.Server.Database.IPBan.Load();
            Log.Information("IPBan list loaded: {Count} banned IPs", Nyx.Server.Database.IPBan.BannedIPs.Count);
        }
        catch (Exception ex)
        {
            Log.Warning(ex, "IPBan.Load failed - IP ban checking disabled");
        }

        // Initialize essential legacy data managers
        try
        {
            Log.Information("Loading legacy data managers...");

            // Core Systems
            Way2Heroes.Load();
            PromotionsRepository.LoadPromotions("database\\Promotions.json");
            QuestInfo.Load();
            NpcLuaScript = new NpcLuaScript(Environment.CurrentDirectory + "\\database\\Scripts\\Npcs\\");
            ItemScript = new ItemScript(Environment.CurrentDirectory + "\\database\\Scripts\\Items\\");
            DynamicNpcs = new LuaDynamicNpcsScript(Environment.CurrentDirectory + "\\database\\Scripts\\DynamicNpcs\\");
            AuctionBase.Load();

            HonorShop.Load();
            RacePointShop.Load();
            ChampionShop.Load();
            StorageManager.Load();
            GuildTable.Load();
            Game.GuildWar.Initiate();
            Game.ClanWar.Initiate();
            Game.Tournaments.SkillTournament.LoadSkillTop8();
            Game.Tournaments.TeamTournament.LoadTeamTop8();
            Clan.LoadClans();
            Booths.Load();
            FloorItemTable.Load();
            ReincarnationTable.Load();
            new MsgUserAbilityScore().GetRankingList();
            new MsgEquipRefineRank().UpdateRanking();
            SkillHandlerRegistry.RegisterAllHandlers();
            MonsterLuaScript = new MonstersLuaScript(Environment.CurrentDirectory + "\\database\\Scripts\\Monsters\\");
            UnionTable.Load();
            NobilityTable.Load();
            ArenaTable.Load();
            TeamArenaTable.Load();
            SignInTable.Load();
            SpellTable.Load();
            SoulProtection.Load();
            QuestInfo.Load();
            Nyx.Server.Soul.SoulProtection.Load();
            Nyx.Server.Database.PerfectionTable.Load();
            Nyx.Server.Database.LotteryTable.Load();
            Nyx.Server.Database.ConquerItemTable.ClearNulledItems();
            Nyx.Server.Database.ConquerItemInformation.Load();
            Nyx.Server.Database.MonsterInformation.Load();

            // Advanced Systems
            Nyx.Server.Database.JiangHu.LoadStatus();
            Nyx.Server.Database.JiangHu.LoadJiangHu();
            Way2Heroes.Load();
            Booths.Load();
            Refinery.LoadItems();
            ChiTable.LoadAllChi();
            InnerPowerTable.LoadDBInformation();
            InnerPowerTable.Load();

            // Item & Economy
            ConquerItemInformation.Load();
            ShopFile.Load();
            EShopFile.Load();
            EShopV2File.Load();
            Flowers.LoadFlowers();

            // Server Variables (Entity ID 0)
            EntityVariableTable.Load(0, out var vars);
            Vars = vars;
            LuaDynamicNpcsScript dyn = new LuaDynamicNpcsScript(Environment.CurrentDirectory + "\\database\\Scripts\\DynamicNpcs\\");
            Log.Information("Legacy data managers loaded successfully");
        }
        catch (Exception ex)
        {
            Log.Error(ex, "Failed to load one or more legacy data managers - some features may be broken");
        }

        // Initialize World logic (starts global timers)
        World.Init();
        World.CreateTournaments();

        // Phase 2: Wire MonsterManager into the game loop for lazy spawn + AI tick.
        try
        {
            var monsterManager = ApplicationHost!.Services.GetRequiredService<MonsterManager>();
            monsterManager.InitializeAsync(CancellationToken.None).GetAwaiter().GetResult();
            World.SetMonsterManager(monsterManager);

            Log.Information("Phase 2: MonsterManager wired (lazy load + 20 TPS AI tick)");
        }
        catch (Exception ex)
        {
            Log.Warning(ex, "Phase 2: Failed to wire MonsterManager — monsters will not be lazy-loaded");
        }

        // Initialize brute force protection
        BruteForceProtection.CreatePoll();

        // Initialize cryptography
        AuthCryptography.PrepareAuthCryptography();

        try
        {
            DataLoader.PreloadEssentialDataAsync().GetAwaiter().GetResult();
        }
        catch (Exception ex)
        {
            Log.Warning(ex, "Failed to preload essential data - continuing without preloaded data");
        }

        // Initialize Network Services
        InitializeNetworkServices();

        // Start performance monitoring (updates console title)
        _serverUptime.Start();
        StartPerformanceMonitoring();

        UpdateConsoleTitle();
        Log.Information("Server initialization complete");
        Log.Information("Nyx.Threading: {Network} network containers, {Shards} game-logic shards",
            ThreadingController.NetworkContainerCount,
            ThreadingController.GameLogicShardCount);
        Log.Information("Network services: Auth on port {AuthPort}, Game on port {GamePort}", AuthPort, GamePort);
    }

    private static void InitializeNetworkServices()
    {
        Log.Information("Initializing network services...");

        // Initialize Auth Network Service
        var authService = ApplicationHost!.Services.GetRequiredService<Nyx.Network.AuthNetworkService>();
        authService.Configure(AuthPort);
        authService.OnSessionConnected += AuthServer_OnClientConnect;
        authService.SessionPacketProcessor = ProcessAuthSessionPacketsAsync;

        // Socket teardown -> auth-state teardown. This subscription was missing, so
        // AuthServer_OnClientDisconnect was dead code and auth sessions were never released.
        authService.OnSessionDisconnected += AuthServer_OnClientDisconnect;

        // Initialize Game Network Service
        var gameService = ApplicationHost!.Services.GetRequiredService<Nyx.Network.GameNetworkService>();
        gameService.Configure(GamePort);
        gameService.OnSessionConnected += GameServer_OnClientConnect;
        gameService.SessionPacketProcessor = ProcessGameSessionPacketsAsync;

        // Socket teardown -> game-state teardown.
        //
        // This subscription was missing, which made GameServer_OnClientDisconnect dead code:
        // when a connection dropped, GameClient.Disconnect() never ran, so the player was never
        // removed from Kernel.GamePool or from other players' screens, and -- worst of all --
        // their character was never saved. NetworkService raises this from the finally block of
        // the per-connection handler, so it fires for every termination path (clean close,
        // socket error, idle reap, and server shutdown).
        gameService.OnSessionDisconnected += GameServer_OnClientDisconnect;

        Log.Information("Network services initialized successfully");
    }

    private static async Task ProcessAuthSessionPacketsAsync(Nyx.Network.GameSession session)
    {
        try
        {
            await foreach (var packet in session.Channel.Reader.ReadAllAsync())
                await AuthServer_OnClientReceiveAsync(packet, packet.Length, session);
        }
        catch (OperationCanceledException)
        {
            // Normal shutdown
        }
        catch (Exception ex)
        {
            Log.Error(ex, "Error in auth session packet processing for {IP}", session.IP);
            session.Disconnect();
        }
    }

    private static async Task ProcessGameSessionPacketsAsync(Nyx.Network.GameSession session)
    {
        try
        {
            Log.Information("Starting packet processing for {IP}", session.IP);
            await foreach (var packet in session.Channel.Reader.ReadAllAsync())
            {
                Log.Debug("Received encrypted chunk of {Length} bytes from {IP}", packet.Length, session.IP);
                await GameServer_OnClientReceiveAsync(packet, packet.Length, session);
            }
            Log.Information("Packet processing ended for {IP}", session.IP);
        }
        catch (OperationCanceledException)
        {
            // Normal shutdown
        }
        catch (Exception ex)
        {
            Log.Error(ex, "Error in game session packet processing for {IP}", session.IP);
            session.Disconnect();
        }
    }

    #region Network Handler Methods

    private static void GameServer_OnClientConnect(Nyx.Network.GameSession session)
    {
        Log.Information("Client connected: {IP}", session.IP);
        Client.GameClient client = new Client.GameClient(session);
        // Send handshake packet - encrypted with default key
        client.Send(client.DHKeyExchange.CreateServerKeyPacket());
        session.Connector = client;
    }

    private static void GameServer_OnClientDisconnect(Nyx.Network.GameSession session)
    {
        if (session.Connector != null)
        {
            var client = session.Connector as Client.GameClient;
            Log.Information("Client disconnected: {IP} - {Name}", session.IP, client?.Entity?.Name);
            client.Disconnect();
        }
        else
        {
            Log.Information("Client disconnected: {IP}", session.IP);
            session.Disconnect();
        }
    }

    private static async Task GameServer_OnClientReceiveAsync(byte[] buffer, int length, Nyx.Network.GameSession session)
    {
        try
        {
            if (session.Connector == null)
            {
                Log.Warning("GameServer_OnClientReceiveAsync: session.Connector is null, disconnecting");
                session.Disconnect();
                return;
            }

            Client.GameClient client = session.Connector as Client.GameClient;

            if (client.Exchange)
            {
                Log.Debug("Processing handshake bytes: received {Length} from {IP}", length, client.IP);

                // The client DH response is a fixed 140-byte encrypted record, but TCP may split it
                // anywhere. Decrypt each byte once with the dedicated default cipher and buffer until
                // the complete record exists.
                client.HandshakeCryptography!.Decrypt(buffer, length);
                if (!client.TryAppendHandshake(buffer, length, out byte[] handshake, out byte[] trailingBytes))
                    return;

                int pos = 0;
                int publicKeyLength = BitConverter.ToInt32(handshake, pos);
                pos += sizeof(int);
                if (publicKeyLength != 128)
                {
                    Log.Error("Handshake public key length invalid: {Length} from {IP}", publicKeyLength, client.IP);
                    client.Disconnect();
                    return;
                }

                string publicKey = System.Text.Encoding.ASCII.GetString(handshake, pos, publicKeyLength);
                client.Cryptography = client.DHKeyExchange.HandleClientKeyPacket(publicKey, client.Cryptography);
                client.HandshakeCryptography.Dispose();
                client.HandshakeCryptography = null;
                client.Exchange = false;
                client.Action = 1;

                Log.Information("Handshake successful; keys exchanged for {IP}", client.IP);

                // Some clients coalesce the first 36-byte game packet with the DH response. Those
                // bytes were encrypted under the old key and have already been decrypted above.
                if (trailingBytes.Length != 0)
                    await ProcessPlaintextDataAsync(trailingBytes, trailingBytes.Length, client);
            }
            else
            {
                await ProcessEncryptedDataAsync(buffer, length, client);
            }
        }
        catch (Exception ex)
        {
            Log.Error(ex, "Error in GameServer_OnClientReceive. Length: {Length}", length);
            session.Disconnect();
        }
    }

    private static async Task ProcessEncryptedDataAsync(byte[] buffer, int length, Client.GameClient client)
    {
        try
        {
            // CAST5 is stream ordered: decrypt every byte exactly once before passing it to the
            // incremental frame decoder. The decoder retains torn tails and emits all coalesced
            // frames without guessing at TCP read boundaries.
            client.Cryptography.Decrypt(buffer, length);
            await ProcessPlaintextDataAsync(buffer, length, client);
        }
        catch (Exception ex)
        {
            Log.Error(ex, "Critical error in packet processing for {Name}", client.Entity?.Name ?? "Unknown");
            client.Disconnect();
        }
    }

    private static async Task ProcessPlaintextDataAsync(byte[] buffer, int length, Client.GameClient client)
    {
        client.InboundPackets.Append(buffer.AsSpan(0, length));

        while (true)
        {
            TqPacketDecodeStatus status = client.InboundPackets.TryRead(
                out byte[]? packet,
                out TqPacketStreamError error);

            if (status == TqPacketDecodeStatus.NeedMoreData)
                return;

            if (status == TqPacketDecodeStatus.InvalidData)
            {
                Log.Warning(
                    "Invalid TQ game stream ({Error}) from {Name}",
                    error,
                    client.Entity?.Name ?? "Unknown");
                client.Disconnect();
                return;
            }

            await ProcessDecryptedPacketAsync(packet!, client);
        }
    }

    private static async Task ProcessDecryptedPacketAsync(byte[] data, Client.GameClient client)
    {
        try
        {
            if (data.Length < TqPacketProtocol.HeaderSize)
            {
                Log.Warning("Invalid packet size: {Length} bytes from {Name}", data.Length, client.Entity?.Name ?? "Unknown");
                return;
            }

            ushort packetId = BitConverter.ToUInt16(data, 2);
            Log.Debug("Packet received: ID={ID}, Size={Size}, From={Name}", packetId, data.Length, client.Entity?.Name ?? "Unknown");

            if (client.Session != null)
            {
                await ThreadingController.RoutePacketAsync(client.Session, data, HandleRoutedPacketAsync);
            }
        }
        catch (Exception ex)
        {
            Log.Error(ex, "Error processing packet from {Name}", client.Entity?.Name ?? "Unknown");
        }
    }

    private static async ValueTask HandleRoutedPacketAsync(Nyx.Network.GameSession session, byte[] packet, CancellationToken ct)
    {
        if (session.Connector is not Client.GameClient client)
            return;

        ushort packetId = packet.Length >= TqPacketProtocol.HeaderSize
            ? BitConverter.ToUInt16(packet, 2)
            : (ushort)0;
        try
        {
            await GamePacketDispatcher.DispatchAsync(client, packet, ct);
        }
        catch (Exception ex)
        {
            Log.Error(ex, "Error handling routed packet ID {ID} from {Name}", packetId, client.Entity?.Name ?? "Unknown");
        }
    }

    private static void AuthServer_OnClientConnect(Nyx.Network.GameSession session)
    {
        Log.Information("Auth client connected: {IP}", session.IP);
        Client.AuthClient authState;
        session.Connector = (authState = new Client.AuthClient(session));
        authState.Cryptographer = new AuthCryptography();
        Network.AuthPackets.PasswordCryptographySeed pcs = new Network.AuthPackets.PasswordCryptographySeed();
        pcs.Seed = (int)RandomSeed;
        authState.PasswordSeed = pcs.Seed;
        authState.Send(pcs);
    }

    private static void AuthServer_OnClientDisconnect(Nyx.Network.GameSession session)
    {
        Log.Information("Auth client disconnected: {IP}", session.IP);
        if (session.Connector is Client.AuthClient client)
            client.Disconnect();
        else
            session.Disconnect();
    }

    private static async Task AuthServer_OnClientReceiveAsync(byte[] buffer, int length, Nyx.Network.GameSession session)
    {
        try
        {
            Log.Debug("Auth server received {Length} bytes from {IP}", length, session.IP);
            var player = session.Connector as Client.AuthClient;

            if (player == null)
            {
                Log.Warning("Auth client wrapper is null for {IP}", session.IP);
                session.Disconnect();
                return;
            }

            player.Cryptographer.Decrypt(buffer, length);
            player.InboundPackets.Append(buffer.AsSpan(0, length));

            while (true)
            {
                TqPacketDecodeStatus status = player.InboundPackets.TryRead(
                    out byte[]? packet,
                    out TqPacketStreamError error);

                if (status == TqPacketDecodeStatus.NeedMoreData)
                    return;

                if (status == TqPacketDecodeStatus.InvalidData)
                {
                    Log.Warning("Invalid TQ auth stream ({Error}) from {IP}", error, session.IP);
                    player.Disconnect();
                    return;
                }

                ushort len = BitConverter.ToUInt16(packet!, 0);
                ushort id = BitConverter.ToUInt16(packet!, 2);
                Log.Debug("Auth packet: Length={Len}, ID={ID}", len, id);

                if (len != 312)
                    continue;

                player.Info = new Network.AuthPackets.Authentication();
                player.Info.Deserialize(packet!);
                // Awaited, not blocked: the account lookup is a database round-trip and this
                // runs on the auth session's packet-processing loop.
                player.Account = await AccountTable.CreateAsync(player.Info.Username);

                if (!BruteForceProtection.AcceptJoin(session.IP))
                {
                    Log.Warning("Brute force protection blocked login from {IP} for user {Username}", session.IP, player.Info.Username);
                    BruteForceProtection.ClientRegistred(session.IP);
                    var blocked = new Network.AuthPackets.Forward { Type = Network.AuthPackets.Forward.ForwardType.InvalidInfo };
                    player.Send(blocked);
                    return;
                }

                var forward = new Network.AuthPackets.Forward();
                if (player.Account.Password == player.Info.Password && player.Account.Exists)
                {
                    Log.Information("Auth login success: {Username} from {IP}", player.Account.Username, session.IP);
                    forward.Type = Network.AuthPackets.Forward.ForwardType.Ready;
                }
                else
                {
                    Log.Warning("Auth login failed: invalid credentials for {Username} from {IP} (Password match: {PwdMatch}, Account exists: {Exists})",
                        player.Info.Username, session.IP,
                        player.Account.Password == player.Info.Password,
                        player.Account.Exists);
                    BruteForceProtection.ClientRegistred(session.IP);
                    forward.Type = Network.AuthPackets.Forward.ForwardType.InvalidInfo;
                }

                if (Nyx.Server.Database.IPBan.IsBanned(session.IP))
                {
                    Log.Warning("IP banned: {IP}", session.IP);
                    forward.Type = Network.AuthPackets.Forward.ForwardType.Banned;
                    player.Send(forward);
                    return;
                }

                if (forward.Type == Network.AuthPackets.Forward.ForwardType.Ready)
                {
                    forward.Identifier = player.Account.GenerateKey();
                    Kernel.AwaitingPool[forward.Identifier] = player.Account;
                    forward.IP = GameIP;
                    forward.Port = GamePort;

                    Log.Information("Forwarding client to game server: {IP}:{Port} with identifier {Identifier}", forward.IP, forward.Port, forward.Identifier);
                }

                player.Send(forward);
                Log.Debug("Forward packet sent to client {IP}", session.IP);
            }
        }
        catch (Exception ex)
        {
            Log.Error(ex, "Error in AuthServer_OnClientReceiveAsync");
            session.Disconnect();
        }
    }

    #endregion

    private static void Shutdown()
    {
        Log.Information("Shutting down server...");

        try
        {
            _performanceMonitorCts?.Cancel();
            try
            {
                _performanceMonitorTask?.GetAwaiter().GetResult();
            }
            catch (OperationCanceledException)
            {
            }

            // TaskScheduler disposal removed — ThreadingController lifecycle is managed by the DI container / shutdown sequence.
            (Database as IDisposable)?.Dispose();
            (Redis as IDisposable)?.Dispose();
            (DataLoader as IDisposable)?.Dispose();
        }
        catch (Exception ex)
        {
            Log.Error(ex, "Error during shutdown");
        }
        finally
        {
            _performanceMonitorCts?.Dispose();
            _performanceMonitorCts = null;
            _performanceMonitorTask = null;
        }

        Log.Information("Server shutdown complete");
    }
}

public sealed class ServerHostedService : IHostedService
{
    private readonly ILogger<ServerHostedService> _logger;
    private readonly IHostApplicationLifetime _lifetime;

    public ServerHostedService(ILogger<ServerHostedService> logger, IHostApplicationLifetime lifetime)
    {
        _logger = logger;
        _lifetime = lifetime;
    }

    public Task StartAsync(CancellationToken cancellationToken)
    {
        _logger.LogInformation("Server hosted service started");
        _lifetime.ApplicationStopping.Register(() => _logger.LogInformation("Server hosted service stopping"));
        return Task.CompletedTask;
    }

    public Task StopAsync(CancellationToken cancellationToken)
    {
        _logger.LogInformation("Server hosted service stopped");
        return Task.CompletedTask;
    }
}
