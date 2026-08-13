using Microsoft.Extensions.DependencyInjection;
using Nyx.Monsters.Core;
using Nyx.Monsters.Runtime;
using Nyx.Monsters.Services;

namespace Nyx.Monsters;

public sealed class MonsterOptions
{
    /// <summary>Pre-warmed monster state objects in the pool.</summary>
    public int MonsterPoolPrewarm { get; set; } = 256;

    /// <summary>Hard cap on pooled monster states.</summary>
    public int MonsterPoolCapacity { get; set; } = 50_000;

    /// <summary>Pre-warmed map instances (one per active map).</summary>
    public int MapPoolPrewarm { get; set; } = 16;

    /// <summary>Hard cap on pooled map instances.</summary>
    public int MapPoolCapacity { get; set; } = 1_000;
}

public static class MonsterServiceCollectionExtensions
{
    /// <summary>
    /// Registers the monster system's library-side services.
    /// The server must additionally register the DB-backed implementations of
    /// <see cref="IMonsterRepository"/>, <see cref="IWorldView"/>,
    /// <see cref="IMonsterNetworkService"/> and <see cref="IMonsterQuestService"/>.
    /// </summary>
    public static IServiceCollection AddMonsterSystem(
        this IServiceCollection services,
        Action<MonsterOptions>? configure = null)
    {
        var options = new MonsterOptions();
        configure?.Invoke(options);

        services.AddSingleton(options);
        services.AddSingleton<IRandomProvider, XorShiftRandom>();

        services.AddSingleton(_ => new ObjectPool<MonsterState>(
            options.MonsterPoolPrewarm, options.MonsterPoolCapacity));
        services.AddSingleton(_ => new ObjectPool<MapInstance>(
            options.MapPoolPrewarm, options.MapPoolCapacity));

        // Default library implementations — server may override.
        services.AddSingleton<IMonsterCombatService, DefaultMonsterCombatService>();
        services.AddSingleton<IMonsterAIService, DefaultMonsterAIService>();
        services.AddSingleton<IMonsterDropService, DefaultMonsterDropService>();
        services.AddSingleton<IMonsterExpService, DefaultMonsterExpService>();

        services.AddSingleton<MonsterManager>();

        return services;
    }
}