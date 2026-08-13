using Nyx.Combat.Model;

namespace Nyx.Combat.Abstractions;

/// <summary>
/// Read-only, in-memory view over <c>cq_magictype</c>.
/// </summary>
/// <remarks>
/// Every lookup on the combat hot path goes through this interface. Implementations
/// must be immutable after construction and safe for concurrent readers with no
/// locking — the production one is backed by a
/// <see cref="System.Collections.Frozen.FrozenDictionary{TKey,TValue}"/>.
/// </remarks>
public interface ISkillCatalog
{
    /// <summary>Total number of (type, level) rows held.</summary>
    int Count { get; }

    /// <summary>Number of distinct skill types held.</summary>
    int TypeCount { get; }

    /// <summary>Looks up one rank of one skill. Returns false when the rank is not in the database.</summary>
    bool TryGet(SkillKey key, out SkillDefinition definition);

    /// <summary>Convenience overload of <see cref="TryGet(SkillKey, out SkillDefinition)"/>.</summary>
    bool TryGet(ushort type, ushort level, out SkillDefinition definition);

    /// <summary>
    /// Highest rank stored for a skill type, or <see langword="null"/> when the type is unknown.
    /// Used to clamp a client-supplied level rather than rejecting the cast outright.
    /// </summary>
    SkillDefinition? GetHighestRank(ushort type);

    /// <summary>All ranks of a type, ordered by level. Cold path only (admin tools, diagnostics).</summary>
    IReadOnlyList<SkillDefinition> GetRanks(ushort type);
}
