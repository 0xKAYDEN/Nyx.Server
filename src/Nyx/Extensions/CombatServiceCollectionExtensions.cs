using System.Data.Common;
using Microsoft.Extensions.DependencyInjection;
using Nyx.Combat.Abstractions;
using Nyx.Combat.Configuration;
using Nyx.Combat.Engine;
using Nyx.Combat.Skills;
using Nyx.Server.Database;
using Nyx.Server.Game.Attacking;

namespace Nyx.Server.Extensions;

/// <summary>
/// Wires <c>Nyx.Combat</c> into the server.
/// </summary>
/// <remarks>
/// <para>
/// The library takes no dependency on
/// <c>Microsoft.Extensions.DependencyInjection</c> — it is constructed through
/// <see cref="CombatEngineBuilder"/> and registered here. That keeps the module
/// reusable by hosts that predate DI while still giving this one a single
/// composition root.
/// </para>
/// <para>
/// Nothing here touches the database at registration time. The catalog is loaded
/// explicitly during <c>InitializeServer</c>, after <c>DataHolder.Configure</c> has
/// run, so a connection is never opened before the connection string exists.
/// </para>
/// </remarks>
public static class CombatServiceCollectionExtensions
{
    public static IServiceCollection AddCombat(this IServiceCollection services)
    {
        // Skill data comes from cq_magictype and nowhere else. DbSkillSource takes
        // a plain DbConnection factory, so the engine neither knows nor cares that
        // the server runs on PostgreSQL.
        services.AddSingleton<ISkillSource>(_ =>
            new DbSkillSource(static () => (DbConnection)DataHolder.GetConnection()));

        // The catalog host owns the immutable snapshot and supports lock-free
        // hot-reload, so a GM can retune a skill in SQL without a restart.
        services.AddSingleton(provider =>
            new SkillCatalogHost(provider.GetRequiredService<ISkillSource>()));

        services.AddSingleton<ISkillCatalog>(provider =>
            provider.GetRequiredService<SkillCatalogHost>());

        services.AddSingleton<ICombatWorld, NyxCombatWorld>();

        // Defaults reproduce the current Battle/*.cs numbers exactly, so switching
        // the engine on is not a balance change.
        services.AddSingleton(CombatOptions.Default);

        services.AddSingleton(provider => new CombatEngineBuilder()
            .WithSkills(provider.GetRequiredService<SkillCatalogHost>())
            .WithWorld(provider.GetRequiredService<ICombatWorld>())
            .WithOptions(provider.GetRequiredService<CombatOptions>())
            .Build());

        services.AddSingleton<CombatAdapter>();

        return services;
    }
}
