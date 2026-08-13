using System.Collections.Frozen;
using System.Runtime.CompilerServices;
using Nyx.Combat.Abstractions;

namespace Nyx.Combat.Engine;

/// <summary>
/// Maps a skill type to its bespoke <see cref="ISkillBehaviour"/>, when it has one.
/// </summary>
/// <remarks>
/// <para>
/// Frozen at construction. The empty case — which is the normal case — is checked
/// with a single <c>Count == 0</c> test before the dictionary is even touched, so
/// servers with no special-cased skills pay nothing per hit.
/// </para>
/// <para>
/// Registration is explicit rather than attribute-driven. Reflection-based
/// discovery looks tidy in a demo and then costs a second of start-up, breaks under
/// trimming and AOT, and makes it impossible to tell from the source which skills
/// are special. An explicit list is boring and correct.
/// </para>
/// </remarks>
public sealed class SkillBehaviourRegistry
{
    private readonly FrozenDictionary<ushort, ISkillBehaviour> _behaviours;

    public static SkillBehaviourRegistry Empty { get; } = new(Array.Empty<ISkillBehaviour>());

    public SkillBehaviourRegistry(IEnumerable<ISkillBehaviour> behaviours)
    {
        ArgumentNullException.ThrowIfNull(behaviours);

        var map = new Dictionary<ushort, ISkillBehaviour>();
        foreach (ISkillBehaviour behaviour in behaviours)
        {
            ArgumentNullException.ThrowIfNull(behaviour);

            if (!map.TryAdd(behaviour.SkillType, behaviour))
            {
                throw new ArgumentException(
                    $"Two behaviours registered for skill type {behaviour.SkillType}: " +
                    $"{map[behaviour.SkillType].GetType().Name} and {behaviour.GetType().Name}.",
                    nameof(behaviours));
            }
        }

        _behaviours = map.ToFrozenDictionary();
    }

    public int Count => _behaviours.Count;

    /// <summary>Looks up the behaviour for a skill type, if one is registered.</summary>
    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public bool TryGet(ushort skillType, out ISkillBehaviour behaviour)
    {
        if (_behaviours.Count != 0 && _behaviours.TryGetValue(skillType, out ISkillBehaviour? found))
        {
            behaviour = found;
            return true;
        }

        behaviour = null!;
        return false;
    }
}
