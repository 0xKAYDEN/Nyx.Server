using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using Microsoft.Extensions.Logging;
using Serilog;

namespace Nyx.Server.Loading;

/// <summary>
/// High-performance parallel data loader for the Nyx server.
/// Loads independent data sources concurrently using Task.WhenAll.
/// 
/// Features:
/// - Parallel execution of independent load operations
/// - Dependency-aware ordering for dependent operations
/// - Progress reporting and metrics
/// - Graceful error handling (continues loading other data if one fails)
/// - Thread-safe and cancellation-aware
/// </summary>
public sealed class ParallelDataLoader : IDisposable
{
    private readonly ILogger<ParallelDataLoader> _logger;
    private readonly ConcurrentDictionary<string, LoadMetrics> _metrics = new();
    private readonly List<LoadPhase> _phases = new();
    private bool _disposed;

    public ParallelDataLoader(ILogger<ParallelDataLoader> logger)
    {
        _logger = logger ?? throw new ArgumentNullException(nameof(logger));
    }

    /// <summary>
    /// Adds a load phase that can run in parallel with other operations in the same phase.
    /// Operations within a phase run concurrently, but phases execute sequentially.
    /// </summary>
    /// <param name="phaseName">Name of the phase for logging.</param>
    /// <param name="operations">The load operations to execute in this phase.</param>
    /// <returns>This instance for fluent configuration.</returns>
    public ParallelDataLoader AddPhase(string phaseName, params LoadOperation[] operations)
    {
        _phases.Add(new LoadPhase(phaseName, operations));
        return this;
    }

    /// <summary>
    /// Executes all configured phases in order, running operations within each phase in parallel.
    /// </summary>
    /// <param name="ct">Cancellation token.</param>
    /// <returns>A task representing the completion of all phases.</returns>
    public async Task ExecuteAllAsync(CancellationToken ct = default)
    {
        var totalStopwatch = Stopwatch.StartNew();
        _logger.LogInformation("Starting parallel data loading with {PhaseCount} phases", _phases.Count);

        foreach (var phase in _phases)
        {
            if (ct.IsCancellationRequested)
            {
                _logger.LogWarning("Data loading cancelled before phase {Phase}", phase.Name);
                break;
            }

            await ExecutePhaseAsync(phase, ct);
        }

        totalStopwatch.Stop();
        _logger.LogInformation(
            "Parallel data loading completed in {ElapsedMs}ms. {SuccessCount} succeeded, {FailCount} failed",
            totalStopwatch.ElapsedMilliseconds,
            _metrics.Values.Count(m => m.Success),
            _metrics.Values.Count(m => !m.Success));
    }

    private async Task ExecutePhaseAsync(LoadPhase phase, CancellationToken ct)
    {
        var phaseStopwatch = Stopwatch.StartNew();
        _logger.LogInformation("Starting phase: {Phase} ({OperationCount} operations)", 
            phase.Name, phase.Operations.Length);

        var tasks = phase.Operations.Select(op => ExecuteOperationAsync(op, ct)).ToArray();

        try
        {
            await Task.WhenAll(tasks);
        }
        catch (Exception ex)
        {
            // Task.WhenAll wraps exceptions in AggregateException
            // Individual operation failures are already logged and captured in metrics
            _logger.LogWarning(ex, "One or more operations failed in phase {Phase}", phase.Name);
        }

        phaseStopwatch.Stop();
        
        var phaseMetrics = phase.Operations
            .Where(op => _metrics.ContainsKey(op.Name))
            .Select(op => _metrics[op.Name])
            .ToList();

        var successCount = phaseMetrics.Count(m => m.Success);
        var failCount = phaseMetrics.Count(m => !m.Success);

        _logger.LogInformation(
            "Phase {Phase} completed in {ElapsedMs}ms: {Success} succeeded, {Failed} failed",
            phase.Name, phaseStopwatch.ElapsedMilliseconds, successCount, failCount);
    }

    private async Task ExecuteOperationAsync(LoadOperation operation, CancellationToken ct)
    {
        var stopwatch = Stopwatch.StartNew();
        
        try
        {
            _logger.LogDebug("Starting: {Operation}", operation.Name);
            
            await operation.ExecuteAsync(ct);
            
            stopwatch.Stop();
            
            _metrics[operation.Name] = new LoadMetrics(
                operation.Name,
                true,
                stopwatch.ElapsedMilliseconds,
                null);

            _logger.LogDebug("Completed: {Operation} in {ElapsedMs}ms", 
                operation.Name, stopwatch.ElapsedMilliseconds);
        }
        catch (Exception ex)
        {
            stopwatch.Stop();
            
            _metrics[operation.Name] = new LoadMetrics(
                operation.Name,
                false,
                stopwatch.ElapsedMilliseconds,
                ex.Message);

            _logger.LogError(ex, "Failed: {Operation} after {ElapsedMs}ms", 
                operation.Name, stopwatch.ElapsedMilliseconds);

            // Don't rethrow - allow other operations to continue
            if (operation.IsRequired)
            {
                _logger.LogWarning("Required operation {Operation} failed - server may not function correctly", 
                    operation.Name);
            }
        }
    }

    /// <summary>
    /// Gets metrics for all executed operations.
    /// </summary>
    public IReadOnlyDictionary<string, LoadMetrics> GetMetrics() => _metrics;

    /// <summary>
    /// Gets a summary of all load operations.
    /// </summary>
    public LoadSummary GetSummary()
    {
        var metrics = _metrics.Values.ToList();
        return new LoadSummary(
            metrics.Count,
            metrics.Count(m => m.Success),
            metrics.Count(m => !m.Success),
            metrics.Sum(m => m.ElapsedMs),
            metrics.Where(m => !m.Success).Select(m => m.Name).ToList());
    }

    public void Dispose()
    {
        if (_disposed) return;
        _disposed = true;
        _metrics.Clear();
        _phases.Clear();
    }
}

/// <summary>
/// Represents a single load operation that can be executed asynchronously.
/// </summary>
public sealed class LoadOperation
{
    /// <summary>
    /// Gets the name of this operation for logging and metrics.
    /// </summary>
    public string Name { get; }

    /// <summary>
    /// Gets whether this operation is required for server startup.
    /// </summary>
    public bool IsRequired { get; }

    /// <summary>
    /// Gets the async function to execute.
    /// </summary>
    public Func<CancellationToken, Task> ExecuteAsync { get; }

    /// <summary>
    /// Creates a new load operation.
    /// </summary>
    /// <param name="name">Name for logging.</param>
    /// <param name="executeAsync">The async function to execute.</param>
    /// <param name="isRequired">Whether this operation is required.</param>
    public LoadOperation(string name, Func<CancellationToken, Task> executeAsync, bool isRequired = false)
    {
        Name = name ?? throw new ArgumentNullException(nameof(name));
        ExecuteAsync = executeAsync ?? throw new ArgumentNullException(nameof(executeAsync));
        IsRequired = isRequired;
    }

    /// <summary>
    /// Creates a load operation from a synchronous action.
    /// </summary>
    public static LoadOperation Create(string name, Action action, bool isRequired = false)
    {
        return new LoadOperation(name, ct =>
        {
            action();
            return Task.CompletedTask;
        }, isRequired);
    }

    /// <summary>
    /// Creates a load operation from an async function.
    /// </summary>
    public static LoadOperation CreateAsync(string name, Func<CancellationToken, Task> asyncFunc, bool isRequired = false)
    {
        return new LoadOperation(name, asyncFunc, isRequired);
    }
}

/// <summary>
/// Represents a phase of load operations that can run in parallel.
/// </summary>
public sealed class LoadPhase
{
    public string Name { get; }
    public LoadOperation[] Operations { get; }

    public LoadPhase(string name, LoadOperation[] operations)
    {
        Name = name ?? throw new ArgumentNullException(nameof(name));
        Operations = operations ?? throw new ArgumentNullException(nameof(operations));
    }
}

/// <summary>
/// Metrics for a single load operation.
/// </summary>
public readonly record struct LoadMetrics(
    string Name,
    bool Success,
    long ElapsedMs,
    string? ErrorMessage);

/// <summary>
/// Summary of all load operations.
/// </summary>
public readonly record struct LoadSummary(
    int TotalOperations,
    int SuccessCount,
    int FailureCount,
    long TotalElapsedMs,
    IReadOnlyList<string> FailedOperations);
