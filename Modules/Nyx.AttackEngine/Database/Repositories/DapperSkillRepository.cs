using Dapper;
using Nyx.AttackEngine.Database.Model;
using Nyx.AttackEngine.interfaces;
using Serilog;
using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.AttackEngine.Database.Repositories
{
    /// <summary>
    /// Provider-agnostic: works against MySqlConnection or NpgsqlConnection,
    /// whichever _connectionFactory produces.
    /// </summary>
    public sealed class DapperSkillRepository : ISkillRepository
    {
        private readonly Func<DbConnection> _connectionFactory;
        private readonly ILogger _logger;

        // Every selected column is explicitly aliased to its MagicType
        // property name. Do not rely on Dapper's underscore-stripping —
        // it doesn't do any; "intone_speed" will NOT bind to "IntoneSpeed"
        // without an explicit AS. This was the second, separate bug found
        // in the previous version of this query.
        private const string Sql = """
            SELECT id AS Id,
                   type AS Type,
                   sort AS Sort,
                   name AS Name,
                   crime AS Crime,
                   ground AS Ground,
                   multi AS Multi,
                   target AS Target,
                   level AS Level,
                   use_mp AS UseMp,
                   power AS Power,
                   intone_speed AS IntoneSpeed,
                   percent AS Percent,
                   step_secs AS StepSecs,
                   range AS Range,
                   distance AS Distance,
                   status AS Status,
                   need_prof AS NeedProf,
                   need_exp AS NeedExp,
                   need_time AS NeedTime,
                   need_level AS NeedLevel,
                   use_xp AS UseXp,
                   weapon_subtype AS WeaponSubtype,
                   active_times AS ActiveTimes,
                   auto_active AS AutoActive,
                   floor_attr AS FloorAttr,
                   auto_learn AS AutoLearn,
                   learn_level AS LearnLevel,
                   drop_weapon AS DropWeapon,
                   use_ep AS UseEp,
                   weapon_hit AS WeaponHit,
                   use_item AS UseItem,
                   next_magic AS NextMagic,
                   delay_ms AS DelayMs,
                   use_item_num AS UseItemNum,
                   status_data0 AS StatusData0,
                   status_data1 AS StatusData1,
                   status_data2 AS StatusData2,
                   attr_type AS AttrType,
                   attr_power AS AttrPower,
                   target_num AS TargetNum,
                   need_ast_prof AS NeedAstProf,
                   need_ast_prof_rank AS NeedAstProfRank,
                   width AS Width,
                   data AS Data,
                   dur_time AS DurTime,
                   atk_interval AS AtkInterval,
                   coldtime AS Coldtime,
                   req_uplevtime AS ReqUplevtime,
                   first_magic AS FirstMagic,
                   combo_delay AS ComboDelay,
                   combo_timeout AS ComboTimeout,
                   magictypeex_id AS MagictypeexId
            FROM cq_magictype
            """;

        public DapperSkillRepository(Func<DbConnection> connectionFactory, ILogger? logger = null)
        {
            _connectionFactory = connectionFactory;
            _logger = logger ?? Log.ForContext<DapperSkillRepository>();
        }

        public async ValueTask<IReadOnlyList<MagicType>> GetAllAsync(CancellationToken ct = default)
        {
            _logger.Information("Skill repository: querying all skill definitions from {Table}", "cq_magictype");
            try
            {
                await using var conn = _connectionFactory();
                await conn.OpenAsync(ct).ConfigureAwait(false);

                // One-time schema guard: catches any future column-type drift
                // (someone alters cq_magictype, or a MySQL/Postgres definition
                // diverges) at boot with the exact column named, instead of a
                // generic byte-offset exception discovered in production.
                await SchemaGuard.AssertColumnTypesMatchAsync<MagicType>(conn, "cq_magictype", ct)
                    .ConfigureAwait(false);

                var rows = await conn.QueryAsync<MagicType>(new CommandDefinition(Sql, cancellationToken: ct))
                                      .ConfigureAwait(false);

                var list = rows is IReadOnlyList<MagicType> l ? l : rows.ToList();
                _logger.Information("Skill repository: loaded {Count} rows from {Table}", list.Count, "cq_magictype");
                return list;
            }
            catch (Exception ex)
            {
                _logger.Error(ex, "Skill repository: failed to load skills from {Table}", "cq_magictype");
                throw;
            }
        }
    }
}
