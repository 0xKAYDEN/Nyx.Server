namespace Nyx.Database.Database;

public sealed class DatabaseOptions
{
    public string Server { get; init; } = "127.0.0.1";
    public uint Port { get; init; } = 3306;
    public string Database { get; init; } = "";
    public string Username { get; init; } = "";
    public string Password { get; init; } = "";
    public string Charset { get; init; } = "latin1";
    public uint ConnectTimeout { get; init; } = 5;
    public uint CommandTimeout { get; init; } = 30;
    public uint Keepalive { get; init; } = 60;
    public bool Pooling { get; init; } = true;
    public uint MinimumPoolSize { get; init; } = 10;
    public uint MaximumPoolSize { get; init; } = 100;
    public uint ConnectionIdleTimeout { get; init; } = 60;

    public void Validate()
    {
        if (string.IsNullOrWhiteSpace(Server)) throw new ArgumentException("Server");
        if (Port == 0) throw new ArgumentException("Port");
        if (string.IsNullOrWhiteSpace(Database)) throw new ArgumentException("Database");
        if (string.IsNullOrWhiteSpace(Username)) throw new ArgumentException("Username");
        if (string.IsNullOrWhiteSpace(Charset)) throw new ArgumentException("Charset");
        if (MaximumPoolSize == 0) throw new ArgumentException("MaximumPoolSize");
        if (MinimumPoolSize > MaximumPoolSize)
            throw new ArgumentException("MinimumPoolSize cannot exceed MaximumPoolSize");
    }
}
