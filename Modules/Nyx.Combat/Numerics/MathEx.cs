using System.Runtime.CompilerServices;

namespace Nyx.Combat.Numerics;

/// <summary>
/// Small integer helpers shared by every calculator. All branch-light and
/// aggressively inlined; these run several times per hit.
/// </summary>
public static class MathEx
{
    /// <summary>
    /// <c>number * numerator / denominator</c> computed in 64-bit so the
    /// intermediate product cannot overflow, then clamped back to
    /// <see cref="int"/>. This is the Conquer/Win32 <c>MulDiv</c> the original
    /// server code leans on for every percentage scaling.
    /// </summary>
    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public static int MulDiv(int number, int numerator, int denominator)
    {
        if (denominator == 0) return 0;
        long r = (long)number * numerator / denominator;
        return r > int.MaxValue ? int.MaxValue : r < int.MinValue ? int.MinValue : (int)r;
    }

    /// <summary>Scales a value by a percentage: <c>value * percent / 100</c>.</summary>
    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public static int Percent(int value, int percent) => MulDiv(value, percent, 100);

    /// <summary>Adds <c>percent</c>% of the value to itself.</summary>
    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public static int AddPercent(int value, int percent) => value + MulDiv(value, percent, 100);

    /// <summary>Clamps to <c>[min, max]</c> without branching on the common path.</summary>
    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public static int Clamp(int value, int min, int max) => value < min ? min : value > max ? max : value;

    /// <summary>Saturating conversion of a double to a non-negative <see cref="int"/>.</summary>
    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public static int ToDamage(double value)
    {
        if (double.IsNaN(value)) return 1;
        if (value <= 1.0) return 1;
        return value >= int.MaxValue ? int.MaxValue : (int)value;
    }

    /// <summary>Chebyshev distance — Conquer's notion of "tiles away" for range checks.</summary>
    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public static int ChebyshevDistance(int x1, int y1, int x2, int y2)
    {
        int dx = Math.Abs(x1 - x2);
        int dy = Math.Abs(y1 - y2);
        return dx > dy ? dx : dy;
    }

    /// <summary>Squared euclidean distance; use against a squared radius to avoid a sqrt.</summary>
    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public static int DistanceSquared(int x1, int y1, int x2, int y2)
    {
        int dx = x1 - x2;
        int dy = y1 - y2;
        return (dx * dx) + (dy * dy);
    }

    /// <summary>
    /// The eight-way Conquer facing index (0 = south-west, counter-clockwise),
    /// used to decide whether a target sits inside a cone skill.
    /// </summary>
    public static int Direction(int x1, int y1, int x2, int y2)
    {
        double angle = Math.Atan2(y2 - y1, x2 - x1) * (180.0 / Math.PI);
        if (angle < 0) angle += 360.0;
        return (int)Math.Round(angle / 45.0) & 7;
    }
}
