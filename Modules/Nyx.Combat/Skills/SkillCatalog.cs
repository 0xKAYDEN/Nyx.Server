using System.Collections.Frozen;
using System.Runtime.CompilerServices;
using Nyx.Combat.Abstractions;
using Nyx.Combat.Model;

namespace Nyx.Combat.Skills;

/// <summary>
/// The in-memory, read-only index of <c>cq_magictype</c>.
/// </summary>
/// <remarks>
/// <para>
/// Built once from an <see cref="ISkillSource"/> and immutable thereafter, so every
/// map thread reads it concurrently with no locking and no volatile reads.
/// </para>
/// <para>
/// Backed by <see cref="FrozenDictionary{TKey,TValue}"/>: it spends extra time at
/// construction to build a perfect-hash layout, and in exchange lookups are
/// measurably faster than <see cref="Dictionary{TKey,TValue}"/> and completely
/// branch-stable. Combined with the 32-bit packed <see cref="SkillKey"/>, a skill
/// lookup is a hash of one integer and one comparison.
/// </para>
/// <para>
/// Hot-reload is handled by building a whole new catalog and swapping the reference
/// (see <see cref="SkillCatalogHost"/>) rather than mutating in place — readers
/// mid-attack keep a consistent snapshot and never see a torn state.
/// </para>
/// </remarks>
public sealed class SkillCatalog : ISkillCatalog
{
    private readonly FrozenDictionary<SkillKey, SkillDefinition> _byKey;
    private readonly FrozenDictionary<ushort, SkillDefinition[]> _byType;

    /// <summary>An empty catalog. Useful as a safe default and in tests.</summary>
    public static SkillCatalog Empty { get; } = new(Array.Empty<SkillDefinition>());

    public SkillCatalog(IReadOnlyList<SkillDefinition> definitions)
    {
        ArgumentNullException.ThrowIfNull(definitions);

        // Deduplicate on (type, level). Real dumps do contain duplicates; the
        // highest-level row of a duplicated pair is the one the client honours,
        // and taking "last wins" over an ordered source reproduces that.
        var byKey = new Dictionary<SkillKey, SkillDefinition>(definitions.Count);
        var byType = new Dictionary<ushort, List<SkillDefinition>>();

        for (int i = 0; i < definitions.Count; i++)
        {
            SkillDefinition definition = definitions[i];
            byKey[definition.Key] = definition;

            if (!byType.TryGetValue(definition.Type, out List<SkillDefinition>? ranks))
                byType[definition.Type] = ranks = new List<SkillDefinition>(4);

            ranks.Add(definition);
        }

        _byKey = byKey.ToFrozenDictionary();

        var typeIndex = new Dictionary<ushort, SkillDefinition[]>(byType.Count);
        foreach ((ushort type, List<SkillDefinition> ranks) in byType)
        {
            ranks.Sort(static (a, b) => a.Level.CompareTo(b.Level));
            typeIndex[type] = ranks.ToArray();
        }

        _byType = typeIndex.ToFrozenDictionary();
    }

    public int Count => _byKey.Count;

    public int TypeCount => _byType.Count;

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public bool TryGet(SkillKey key, out SkillDefinition definition)
        => _byKey.TryGetValue(key, out definition!);

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public bool TryGet(ushort type, ushort level, out SkillDefinition definition)
        => _byKey.TryGetValue(new SkillKey(type, level), out definition!);

    public SkillDefinition? GetHighestRank(ushort type)
        => _byType.TryGetValue(type, out SkillDefinition[]? ranks) && ranks.Length > 0
            ? ranks[^1]
            : null;

    public IReadOnlyList<SkillDefinition> GetRanks(ushort type)
        => _byType.TryGetValue(type, out SkillDefinition[]? ranks)
            ? ranks
            : Array.Empty<SkillDefinition>();

    /// <summary>Loads a catalog from a source. Boot path only.</summary>
    public static async ValueTask<SkillCatalog> LoadAsync(
        ISkillSource source, CancellationToken cancellationToken = default)
    {
        ArgumentNullException.ThrowIfNull(source);
        IReadOnlyList<SkillDefinition> rows = await source.LoadAllAsync(cancellationToken).ConfigureAwait(false);
        return new SkillCatalog(rows);
    }
}
