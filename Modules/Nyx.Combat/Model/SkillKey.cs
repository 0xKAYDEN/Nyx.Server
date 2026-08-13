using System.Runtime.CompilerServices;

namespace Nyx.Combat.Model;

/// <summary>
/// Primary key of <c>cq_magictype</c>: the (type, level) pair that uniquely
/// identifies one rank of one skill.
/// </summary>
/// <remarks>
/// Packed into a single <see cref="uint"/> so the dictionary bucket lookup is one
/// comparison and one hash of a 32-bit value — no tuple boxing, no string keys,
/// no <c>ValueTuple.GetHashCode</c> call chain.
/// </remarks>
public readonly struct SkillKey : IEquatable<SkillKey>
{
    private readonly uint _packed;

    public SkillKey(ushort type, ushort level) => _packed = ((uint)type << 16) | level;

    public ushort Type
    {
        [MethodImpl(MethodImplOptions.AggressiveInlining)]
        get => (ushort)(_packed >> 16);
    }

    public ushort Level
    {
        [MethodImpl(MethodImplOptions.AggressiveInlining)]
        get => (ushort)_packed;
    }

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public bool Equals(SkillKey other) => _packed == other._packed;

    public override bool Equals(object? obj) => obj is SkillKey k && Equals(k);

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public override int GetHashCode() => (int)_packed;

    public override string ToString() => $"{Type}/{Level}";

    public static bool operator ==(SkillKey a, SkillKey b) => a._packed == b._packed;
    public static bool operator !=(SkillKey a, SkillKey b) => a._packed != b._packed;
}
