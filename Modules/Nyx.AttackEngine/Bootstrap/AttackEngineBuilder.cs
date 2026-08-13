using Nyx.AttackEngine.Caching;
using Nyx.AttackEngine.Combat;
using Nyx.AttackEngine.Combat.Steps;
using Nyx.AttackEngine.CustomSkills;
using Nyx.AttackEngine.Database.Repositories;
using Nyx.AttackEngine.interfaces;
using Serilog;
using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace Nyx.AttackEngine.Bootstrap
{
    public static class AttackEngineBuilder
    {
        public static async Task<(SkillDataCache Cache, AttackPipeline Pipeline)> BuildAsync(
            Func<DbConnection> connectionFactory,
            Func<uint, uint, bool> isPvpAllowedBetween,
            Func<uint, uint, int, Span<uint>, int> queryNearby,
            IReadOnlyDictionary<short, IAttrEffect> attrEffects,
            ILogger? logger = null,
            CancellationToken ct = default)
        {
            logger ??= Log.ForContext(typeof(AttackEngineBuilder));

            logger.Information("AttackEngine: building combat pipeline and loading skill data from cq_magictype");

            try
            {
                ISkillRepository repo = new DapperSkillRepository(connectionFactory);
                var cache = new SkillDataCache();
                await cache.ReloadAsync(repo, ct);

                if (cache.Count == 0)
                    logger.Warning("AttackEngine: cq_magictype yielded 0 skill rows — skills will not resolve until the table is populated");

                var customHandlers = CustomHandlerRegistry.Build(Assembly.GetExecutingAssembly());

                var pipeline = new AttackPipeline(
                    validationSteps: new IValidationStep[]
                    {
                    new MpCostValidationStep(),
                    new EpCostValidationStep(),
                    new WeaponSubtypeValidationStep(),
                    new LevelRequirementValidationStep(),
                    new ProficiencyValidationStep(),
                    new CrimeFlagValidationStep(isPvpAllowedBetween),
                    },
                    targetSteps: new ITargetResolutionStep[]
                    {
                    new SingleTargetResolutionStep(),
                    new GroundAoeResolutionStep(queryNearby),
                    },
                    damageSteps: new IDamageStep[]
                    {
                    new BasePowerDamageStep(),
                    new AttrEffectDamageStep(attrEffects),
                    new ModeMultiplierDamageStep(),
                    },
                    postEffectSteps: new IPostEffectStep[]
                    {
                    new StatusApplicationPostEffectStep(),
                    new ComboChainPostEffectStep(),
                    new TargetKilledPostEffectStep(),
                    },
                    customHandlers: customHandlers);

                logger.Information("AttackEngine: pipeline built with {SkillCount} skills loaded from cq_magictype",
                    cache.Count);

                return (cache, pipeline);
            }
            catch (Exception ex)
            {
                logger.Error(ex, "AttackEngine: failed to build combat pipeline / load skills from cq_magictype");
                throw;
            }
        }
    }
}
