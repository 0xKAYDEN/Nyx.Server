using System;

namespace Nyx.Threading.Configuration;

/// <summary>
/// Configuration for a ThreadContainer.
/// </summary>
public sealed class ContainerConfiguration
{
    /// <summary>
    /// Gets or sets the container name.
    /// </summary>
    public required string Name { get; init; }
    
    /// <summary>
    /// Gets or sets the CPU core index to pin the container to.
    /// If null, the system will assign a core automatically.
    /// </summary>
    public int? CoreIndex { get; init; }
    
    /// <summary>
    /// Gets or sets the channel capacity for task queuing.
    /// If null or 0, creates an unbounded channel.
    /// </summary>
    public int? Capacity { get; init; }
    
    /// <summary>
    /// Gets or sets the number of shards for sharded repositories.
    /// Default is 1 (no sharding).
    /// </summary>
    public int ShardCount { get; init; } = 1;
    
    /// <summary>
    /// Gets or sets whether to enable health monitoring.
    /// </summary>
    public bool EnableHealthMonitoring { get; init; } = true;
    
    /// <summary>
    /// Gets or sets the maximum pending tasks before warning.
    /// </summary>
    public int WarningThreshold { get; init; } = 1000;
    
    /// <summary>
    /// Gets or sets the maximum pending tasks before rejecting new tasks.
    /// </summary>
    public int RejectionThreshold { get; init; } = 10000;
}

/// <summary>
/// Pre-defined container configurations for common use cases.
/// </summary>
public static class ContainerPresets
{
    /// <summary>
    /// Configuration for network packet processing.
    /// High capacity, pinned to specific cores.
    /// </summary>
    public static ContainerConfiguration Network(int coreIndex) => new()
    {
        Name = $"Network-{coreIndex}",
        CoreIndex = coreIndex,
        Capacity = 50000,
        ShardCount = 1,
        WarningThreshold = 5000,
        RejectionThreshold = 50000
    };
    
    /// <summary>
    /// Configuration for game logic processing.
    /// Medium capacity, sharded for parallel player processing.
    /// </summary>
    public static ContainerConfiguration GameLogic(int shardIndex) => new()
    {
        Name = $"GameLogic-{shardIndex}",
        CoreIndex = null, // Let system assign
        Capacity = 20000,
        ShardCount = 1,
        WarningThreshold = 2000,
        RejectionThreshold = 20000
    };
    
    /// <summary>
    /// Configuration for database operations.
    /// Lower capacity, optimized for I/O.
    /// </summary>
    public static ContainerConfiguration Database => new()
    {
        Name = "Database",
        CoreIndex = null,
        Capacity = 10000,
        ShardCount = 4,
        WarningThreshold = 1000,
        RejectionThreshold = 10000
    };
    
    /// <summary>
    /// Configuration for background tasks.
    /// Low capacity, low priority.
    /// </summary>
    public static ContainerConfiguration Background => new()
    {
        Name = "Background",
        CoreIndex = null,
        Capacity = 5000,
        ShardCount = 2,
        WarningThreshold = 500,
        RejectionThreshold = 5000
    };
    
    /// <summary>
    /// Configuration for tournament/arena processing.
    /// Medium capacity, real-time requirements.
    /// </summary>
    public static ContainerConfiguration Tournament => new()
    {
        Name = "Tournament",
        CoreIndex = null,
        Capacity = 15000,
        ShardCount = 1,
        WarningThreshold = 1500,
        RejectionThreshold = 15000
    };
    
    /// <summary>
    /// Configuration for high-priority tasks.
    /// Low latency, high priority.
    /// </summary>
    public static ContainerConfiguration HighPriority => new()
    {
        Name = "HighPriority",
        CoreIndex = null,
        Capacity = 5000,
        ShardCount = 1,
        WarningThreshold = 500,
        RejectionThreshold = 5000
    };
}
