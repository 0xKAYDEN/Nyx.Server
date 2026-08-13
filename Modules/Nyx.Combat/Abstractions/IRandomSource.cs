namespace Nyx.Combat.Abstractions;

/// <summary>
/// Source of randomness for the combat math.
/// </summary>
/// <remarks>
/// Abstracted purely so tests can inject a deterministic sequence and reproduce a
/// reported damage number exactly. The production implementation
/// (<c>Nyx.Combat.Numerics.FastRandom</c>) is a per-thread xoshiro256** with no
/// locking.
/// </remarks>
public interface IRandomSource
{
    /// <summary>Uniform value in <c>[0, exclusiveMax)</c>.</summary>
    int Next(int exclusiveMax);

    /// <summary>Uniform value in <c>[inclusiveMin, exclusiveMax)</c>.</summary>
    int Next(int inclusiveMin, int exclusiveMax);

    /// <summary>Uniform double in <c>[0, 1)</c>.</summary>
    double NextDouble();

    /// <summary>True with the given probability in percent (0..100).</summary>
    bool Chance(double percent);

    /// <summary>True with probability <c>numerator / denominator</c>.</summary>
    bool Chance(int numerator, int denominator);
}
