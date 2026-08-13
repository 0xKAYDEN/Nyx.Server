using Nyx.Combat.Model;

namespace Nyx.Combat.Abstractions;

/// <summary>
/// Loads raw skill rows from persistent storage. Called exactly once at boot (and
/// again on an explicit reload), never on the combat path.
/// </summary>
/// <remarks>
/// The engine ships one implementation, <c>Nyx.Combat.Skills.DbSkillSource</c>,
/// which reads <c>cq_magictype</c> through a caller-supplied
/// <see cref="System.Data.Common.DbConnection"/> factory. There is intentionally
/// no file-based implementation: <c>magictype.txt</c> is a legacy dump and the
/// database is the single source of truth.
/// </remarks>
public interface ISkillSource
{
    /// <summary>Reads every row of <c>cq_magictype</c>, already projected to the engine's model.</summary>
    ValueTask<IReadOnlyList<SkillDefinition>> LoadAllAsync(CancellationToken cancellationToken = default);
}
