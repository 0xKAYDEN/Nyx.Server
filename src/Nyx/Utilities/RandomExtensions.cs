using System;
using System.Runtime.CompilerServices;

namespace Nyx.Server.Utilities;

/// <summary>
/// Extension methods for System.Random to provide backward compatibility
/// with FastRandom's additional methods.
/// </summary>
public static class RandomExtensions
{
    /// <summary>
    /// Returns a random sign: either -1 or 1.
    /// Replaces FastRandom.Sign() method.
    /// </summary>
    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    public static int Sign(this Random random)
    {
        return random.Next(0, 2) == 0 ? -1 : 1;
    }
}
