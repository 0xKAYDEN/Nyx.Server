namespace Nyx.Auth.Configuration;

/// <summary>Root configuration bound from ServerConfigrations.json / environment.</summary>
public sealed class AuthServerOptions
{
    public DatabaseOptions Database { get; set; } = new();
    public RedisOptions Redis { get; set; } = new();
    public ServerOptions Server { get; set; } = new();
    public AuthOptions Auth { get; set; } = new();
}

public sealed class DatabaseOptions
{
    public string Hostname { get; set; } = "localhost";
    public string Schema { get; set; } = "nyx";
    public string Username { get; set; } = "postgres";
    public string Password { get; set; } = string.Empty;
    public int Port { get; set; } = 5432;
    public int ConnectionPoolMinSize { get; set; } = 2;
    public int ConnectionPoolMaxSize { get; set; } = 32;
    public int CommandTimeoutSeconds { get; set; } = 15;

    public string BuildConnectionString() =>
        $"Host={Hostname};Port={Port};Database={Schema};Username={Username};Password={Password};" +
        $"Minimum Pool Size={ConnectionPoolMinSize};Maximum Pool Size={ConnectionPoolMaxSize};" +
        $"Timeout={CommandTimeoutSeconds};Command Timeout={CommandTimeoutSeconds};";
}

public sealed class RedisOptions
{
    public string Hostname { get; set; } = "localhost";
    public int Port { get; set; } = 6379;
    public string Password { get; set; } = string.Empty;
    public int Database { get; set; } = 0;
    public int ConnectTimeoutMs { get; set; } = 5000;
    public int SyncTimeoutMs { get; set; } = 5000;
    public bool EnableAbortOnConnectFail { get; set; } = false;
    public string InstanceName { get; set; } = "nyx:";

    public string BuildConfiguration()
    {
        var cfg = $"{Hostname}:{Port},defaultDatabase={Database},connectTimeout={ConnectTimeoutMs},syncTimeout={SyncTimeoutMs},abortConnect={EnableAbortOnConnectFail.ToString().ToLowerInvariant()}";
        if (!string.IsNullOrEmpty(Password))
            cfg += $",password={Password}";
        return cfg;
    }
}

public sealed class ServerOptions
{
    /// <summary>Public IP/hostname the client must use to reach the game server.</summary>
    public string ServerAddress { get; set; } = "127.0.0.1";

    public int AuthPort { get; set; } = 9960;
    public int GamePort { get; set; } = 5816;
}

public sealed class AuthOptions
{
    /// <summary>Password-cryptography seed sent in MsgEncryptCode. Must stay stable for the process lifetime.</summary>
    public int PasswordSeed { get; set; } = 3721;

    /// <summary>Failed-login attempts allowed per IP before temporary rejection.</summary>
    public int MaxFailedAttempts { get; set; } = 5;

    /// <summary>Seconds after which a failed-attempt counter decays by one.</summary>
    public int AttemptDecaySeconds { get; set; } = 30;

    /// <summary>Ticket TTL published to Redis.</summary>
    public int TicketTtlSeconds { get; set; } = 90;
}
