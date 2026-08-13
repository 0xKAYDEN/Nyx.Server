namespace Nyx.Server.Database
{
    /// <summary>
    /// Database connection settings for PostgreSQL.
    /// </summary>
    public class DatabaseConfiguration
    {
        public string Hostname { get; set; } = "localhost";
        public string Schema { get; set; } = "nyx";
        public string Username { get; set; } = "postgres";
        public string Password { get; set; } = "12345678";
        public int Port { get; set; } = 5432;
        public int ConnectionPoolMinSize { get; set; } = 5;
        public int ConnectionPoolMaxSize { get; set; } = 100;
        public int CommandTimeoutSeconds { get; set; } = 30;
        public bool EnableRetryOnFailure { get; set; } = true;
        public int MaxRetryCount { get; set; } = 3;
    }
}
