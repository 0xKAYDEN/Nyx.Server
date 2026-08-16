using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using Nyx.Auth.Configuration;
using Nyx.Auth.Database;
using Nyx.Auth.Hosting;
using Nyx.Auth.Security;
using Nyx.Network;
using Nyx.Shared.Auth;
using Serilog;

namespace Nyx.Auth;

/// <summary>
/// Standalone Conquer Online authentication server (patch 6323).
/// Listens for TQ clients, validates credentials against PostgreSQL, publishes a
/// one-shot Redis ticket, and forwards the client to the game server via MsgConnectEx.
/// </summary>
public static class Program
{
    public static async Task<int> Main(string[] args)
    {
        try
        {
            Directory.SetCurrentDirectory(AppContext.BaseDirectory);
        }
        catch
        {
            // Best-effort cwd alignment for relative config paths.
        }

        Log.Logger = new LoggerConfiguration()
            .MinimumLevel.Information()
            .Enrich.FromLogContext()
            .WriteTo.Console(outputTemplate: "[{Timestamp:HH:mm:ss} {Level:u3}] [AUTH] {Message:lj}{NewLine}{Exception}")
            .WriteTo.File(
                path: Path.Combine("logs", "Nyx.Auth-.log"),
                rollingInterval: RollingInterval.Day,
                retainedFileCountLimit: 14,
                outputTemplate: "[{Timestamp:yyyy-MM-dd HH:mm:ss.fff zzz} {Level:u3}] {Message:lj}{NewLine}{Exception}",
                fileSizeLimitBytes: 10 * 1024 * 1024)
            .CreateLogger();

        try
        {
            Log.Information("Starting Nyx.Auth (standalone authentication server)");

            var host = Host.CreateDefaultBuilder(args)
                .UseSerilog()
                .ConfigureAppConfiguration((context, config) =>
                {
                    // Prefer the shared game-server config file (historical typo preserved).
                    config.Sources.Clear();
                    config.SetBasePath(AppContext.BaseDirectory);
                    config.AddJsonFile("appsettings.json", optional: true, reloadOnChange: true);
                    config.AddJsonFile("ServerConfigrations.json", optional: true, reloadOnChange: true);
                    config.AddJsonFile("ServerConfigurations.json", optional: true, reloadOnChange: true);
                    config.AddEnvironmentVariables();
                    config.AddCommandLine(args);
                })
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

            await host.RunAsync().ConfigureAwait(false);
            return 0;
        }
        catch (Exception ex)
        {
            Log.Fatal(ex, "Nyx.Auth terminated unexpectedly");
            return 1;
        }
        finally
        {
            await Log.CloseAndFlushAsync().ConfigureAwait(false);
        }
    }

    private static void ConfigureServices(IServiceCollection services, IConfiguration configuration)
    {
        var options = new AuthServerOptions();
        configuration.GetSection("Database").Bind(options.Database);
        configuration.GetSection("Redis").Bind(options.Redis);
        configuration.GetSection("Server").Bind(options.Server);
        configuration.GetSection("Auth").Bind(options.Auth);

        // Historical seed lives on Program.RandomSeed in the game host; keep the same default.
        if (options.Auth.PasswordSeed == 0)
            options.Auth.PasswordSeed = 3721;

        services.AddSingleton(Microsoft.Extensions.Options.Options.Create(options));
        services.AddSingleton(options);

        services.AddSingleton<IAccountRepository, PostgresAccountRepository>();
        services.AddSingleton<LoginRateLimiter>();
        services.AddSingleton<BannedIpCache>();
        services.AddSingleton<AuthLoginService>();

        services.AddSingleton<IAuthTicketStore>(sp =>
        {
            var opts = sp.GetRequiredService<AuthServerOptions>();
            Log.Information(
                "Auth ticket store → Redis {Host}:{Port} db={Db} prefix={Prefix}",
                opts.Redis.Hostname,
                opts.Redis.Port,
                opts.Redis.Database,
                opts.Redis.InstanceName);

            return new RedisAuthTicketStore(opts.Redis.BuildConfiguration(), opts.Redis.InstanceName);
        });

        // NetworkService is itself an IHostedService (BackgroundService). Register once
        // as singleton and also as hosted so DI hands out the same instance.
        //
        // Order matters: AuthNetworkHostedService must Configure() the listener and
        // attach SessionPacketProcessor BEFORE AuthNetworkService.ExecuteAsync runs.
        services.AddSingleton<AuthNetworkService>();
        services.AddHostedService<AuthNetworkHostedService>();
        services.AddHostedService(sp => sp.GetRequiredService<AuthNetworkService>());

        Log.Information(
            "Auth configured: listen={AuthPort}, game={GameIP}:{GamePort}, seed={Seed}",
            options.Server.AuthPort,
            options.Server.ServerAddress,
            options.Server.GamePort,
            options.Auth.PasswordSeed);
    }
}
