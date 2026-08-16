namespace Nyx.Shared.Auth;

/// <summary>Shared Redis key helpers for the auth → game ticket hand-off.</summary>
public static class AuthTicketKeys
{
    /// <summary>
    /// Relative key (without the Redis instance-name prefix). Both auth and game must use
    /// the same absolute key once the configured instance prefix is applied.
    /// </summary>
    public const string RelativePrefix = "auth:ticket:";

    /// <summary>Default ticket lifetime. Short enough to limit replay, long enough for client reconnect.</summary>
    public static readonly TimeSpan DefaultTimeToLive = TimeSpan.FromSeconds(90);

    public static string RelativeKey(uint identifier) => $"{RelativePrefix}{identifier:X8}";

    public static string AbsoluteKey(string instancePrefix, uint identifier)
    {
        instancePrefix ??= string.Empty;
        return $"{instancePrefix}{RelativeKey(identifier)}";
    }
}
