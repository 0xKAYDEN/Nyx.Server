using Nyx.AttackEngine.Data;
using Nyx.AttackEngine.Database.Model;
using Nyx.AttackEngine.interfaces;
using Serilog;
using System;
using System.Collections.Frozen;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.AttackEngine.Caching
{
    public sealed class SkillDataCache
    {
        private readonly ILogger _logger = Log.ForContext<SkillDataCache>();
        private FrozenDictionary<SkillKey, MagicType> _skills =
            FrozenDictionary<SkillKey, MagicType>.Empty;

        public bool TryGet(long type, long level, out MagicType skill)
            => _skills.TryGetValue(new SkillKey(type, level), out skill!);

        public MagicType Get(long type, long level)
            => _skills.TryGetValue(new SkillKey(type, level), out var s)
                ? s
                : throw new KeyNotFoundException($"Skill {type}:{level} not found in cache.");

        public async Task ReloadAsync(ISkillRepository repo, CancellationToken ct = default)
        {
            var rows = await repo.GetAllAsync(ct).ConfigureAwait(false);

            // Build with GroupBy instead of ToFrozenDictionary directly —
            // this surfaces EVERY duplicate key in one pass instead of
            // crashing on the first one found, and lets us decide a
            // deterministic winner instead of depending on row order.
            var grouped = rows
                .GroupBy(r => new SkillKey(r.Type, r.Level))
                .ToList();

            var duplicates = grouped.Where(g => g.Count() > 1).ToList();

            if (duplicates.Count > 0)
            {
                foreach (var dup in duplicates)
                {
                    var ids = string.Join(", ", dup.Select(r => r.Id));
                    _logger.Warning(
                        "cq_magictype: duplicate (type, level) key {Key} across ids [{Ids}] — using the row with the highest id",
                        dup.Key, ids);
                }
            }

            // Deterministic tie-break: highest Id wins (assumed most recent
            // edit). Change this rule if your data convention says otherwise
            // once you've inspected the actual duplicate rows.
            var deduped = grouped
                .Select(g => g.OrderByDescending(r => r.Id).First())
                .ToArray();

            _skills = deduped.ToFrozenDictionary(r => new SkillKey(r.Type, r.Level));

            _logger.Information(
                "Skill cache reloaded: {Count} unique skills ({DupCount} duplicate keys resolved)",
                _skills.Count, duplicates.Count);
        }

        public int Count => _skills.Count;
    }
}
