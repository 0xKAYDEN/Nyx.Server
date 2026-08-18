namespace Nyx.Server
{
    public sealed class EnterpriseServerConfigurations
    {
        public Nyx.Server.Database.DatabaseConfiguration Database { get; set; } = new();
        public RedisConfiguration Redis { get; set; } = new();
        public ServerConfiguration Server { get; set; } = new();
        public PartitioningConfiguration Partitioning { get; set; } = new();
        public ThreadingConfiguration Threading { get; set; } = new();
        public HealthCheckConfiguration HealthChecks { get; set; } = new();
        public TelemetryConfiguration Telemetry { get; set; } = new();
        public CombatConfiguration Combat { get; set; } = new();
    }

    public sealed class CombatConfiguration
    {
        /// <summary>
        /// When true, damage resolution routes through the Nyx.Combat engine
        /// instead of the legacy Handle.cs path.
        /// </summary>
        /// <remarks>
        /// Defaults to false. The catalog still loads from <c>cq_magictype</c> at
        /// startup either way, so the flag can be flipped on a staging shard and
        /// compared against live numbers before it authors anyone's combat. When
        /// off, not a single instruction of the legacy path changes.
        /// </remarks>
        public bool UseCombatEngine { get; set; } = true;
    }

    public sealed class RedisConfiguration
    {
        public string Hostname { get; set; } = "localhost";
        public int Port { get; set; } = 6379;
        public string Password { get; set; } = string.Empty;
        public int Database { get; set; } = 0;
        public int ConnectTimeoutMs { get; set; } = 5000;
        public int SyncTimeoutMs { get; set; } = 5000;
        public bool EnableAbortOnConnectFail { get; set; } = false;
        public string InstanceName { get; set; } = "nyx:";
    }

    public sealed class ServerConfiguration
    {
        public string ServerAddress { get; set; } = "172.27.31.108";
        public int AuthPort { get; set; } = 9960;
        public int GamePort { get; set; } = 5816;
    }

    public sealed class PartitioningConfiguration
    {
        public int PartitionCount { get; set; } = 32;
        public int EntitiesPerPartition { get; set; } = 200;
        public int MaxLoadPercentBeforeRebalance { get; set; } = 80;
        public bool EnableDynamicRebalancing { get; set; } = true;
        public int RebalanceCheckIntervalMs { get; set; } = 30000;
        public HashFunctionType HashFunction { get; set; } = HashFunctionType.XXHash;
        public SpatialPartitioningMode SpatialMode { get; set; } = SpatialPartitioningMode.Grid;
        public int GridCellSize { get; set; } = 20;
    }

    public sealed class ThreadingConfiguration
    {
        public int CombatWorkerCount { get; set; } = 8;
        public int PlayerInputWorkerCount { get; set; } = 8;
        public int AIWorkerCount { get; set; } = 4;
        public int BackgroundWorkerCount { get; set; } = 2;
        public int MaxQueueDepth { get; set; } = 10000;
        public bool EnableWorkStealing { get; set; } = true;
        public bool PreferPerPartitionScheduling { get; set; } = true;
    }

    public sealed class HealthCheckConfiguration
    {
        public bool EnableHealthChecks { get; set; } = true;
        public int HealthCheckIntervalSeconds { get; set; } = 30;
        public bool EnableReadinessProbe { get; set; } = true;
        public bool EnableLivenessProbe { get; set; } = true;
    }

    public sealed class TelemetryConfiguration
    {
        public bool EnableOpenTelemetry { get; set; } = true;
        public string ServiceName { get; set; } = "nyx-game-server";
        public string OtlpEndpoint { get; set; } = "http://localhost:4317";
        public int MetricsExportIntervalMs { get; set; } = 10000;
        public bool EnablePrometheusEndpoint { get; set; } = true;
        public int PrometheusPort { get; set; } = 9090;
    }

    public enum HashFunctionType
    {
        XXHash,
        MurmurHash3,
        Multiplicative
    }

    public enum SpatialPartitioningMode
    {
        None,
        Grid,
        Quadtree
    }
}
