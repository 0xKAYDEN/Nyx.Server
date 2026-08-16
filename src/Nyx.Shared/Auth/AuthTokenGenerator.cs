using System.Security.Cryptography;
using System.Text;

namespace Nyx.Shared.Auth;

/// <summary>
/// Produces the 32-bit login identifier the client carries from auth to game.
/// Algorithm is identical to the historical <c>AccountTable.GenerateKey</c>:
/// <c>SHA256(UTF8(username:password:randomKey))</c> truncated to the first four bytes.
/// </summary>
public static class AuthTokenGenerator
{
    /// <summary>
    /// Generates a random key in the same range the legacy path used
    /// (<c>Kernel.Random.Next(11, 253) % 100 + 1</c> → 1..100).
    /// </summary>
    public static int NextRandomKey() => Random.Shared.Next(11, 253) % 100 + 1;

    public static uint Generate(string username, string password, int randomKey)
    {
        ArgumentNullException.ThrowIfNull(username);
        ArgumentNullException.ThrowIfNull(password);

        var input = $"{username}:{password}:{randomKey}";
        Span<byte> hash = stackalloc byte[32];
        SHA256.HashData(Encoding.UTF8.GetBytes(input), hash);
        return BitConverter.ToUInt32(hash);
    }

    public static bool Matches(uint identifier, string username, string password, int randomKey) =>
        identifier == Generate(username, password, randomKey);
}
