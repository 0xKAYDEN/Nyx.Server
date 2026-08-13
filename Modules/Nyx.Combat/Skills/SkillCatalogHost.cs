using Nyx.Combat.Abstractions;
using Nyx.Combat.Model;

namespace Nyx.Combat.Skills;

/// <summary>
/// Holds the live <see cref="SkillCatalog"/> and supports hot-reload without ever
/// blocking a reader.
/// </summary>
/// <remarks>
/// <para>
/// Reload builds an entirely new immutable catalog off the combat path and then
/// publishes it with a single reference assignment. Reference writes are atomic on
/// every CLR target, so a thread mid-attack either sees the old catalog or the new
/// one — never a partially rebuilt index, and never a lock.
/// </para>
/// <para>
/// This is the classic copy-on-write / immutable-snapshot pattern, and it is why a
/// GM can hot-fix a skill's power in SQL and reload it on a live server with
/// thousands of players fighting.
/// </para>
/// </remarks>
public sealed class SkillCatalogHost : ISkillCatalog
{
    private readonly ISkillSource _source;
    private volatile SkillCatalog _current;

    /// <summary>Fired after a successful reload, with the new catalog. Never fired on failure.</summary>
    public event Action<SkillCatalog>? Reloaded;

    public SkillCatalogHost(ISkillSource source, SkillCatalog? initial = null)
    {
        _source = source ?? throw new ArgumentNullException(nameof(source));
        _current = initial ?? SkillCatalog.Empty;
    }

    /// <summary>The catalog in force right now.</summary>
    public SkillCatalog Current => _current;

    public int Count => _current.Count;

    public int TypeCount => _current.TypeCount;

    public bool TryGet(SkillKey key, out SkillDefinition definition) => _current.TryGet(key, out definition);

    public bool TryGet(ushort type, ushort level, out SkillDefinition definition)
        => _current.TryGet(type, level, out definition);

    public SkillDefinition? GetHighestRank(ushort type) => _current.GetHighestRank(type);

    public IReadOnlyList<SkillDefinition> GetRanks(ushort type) => _current.GetRanks(type);

    /// <summary>
    /// Rebuilds the catalog from the database and publishes it atomically.
    /// If the load throws, the previous catalog stays in force — a bad SQL edit
    /// cannot take combat down.
    /// </summary>
    /// <returns>The number of rows now in force.</returns>
    public async ValueTask<int> ReloadAsync(CancellationToken cancellationToken = default)
    {
        SkillCatalog rebuilt = await SkillCatalog.LoadAsync(_source, cancellationToken).ConfigureAwait(false);
        _current = rebuilt;
        Reloaded?.Invoke(rebuilt);
        return rebuilt.Count;
    }
}
