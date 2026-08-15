using System;
using System.Collections.Concurrent;
using System.Net;
using System.Net.Sockets;
using System.Threading;
using System.Threading.Tasks;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;

namespace Nyx.Network;

/// <summary>
/// Base network service that accepts TCP connections and manages client sessions.
/// Provides session lifecycle management, cleanup, and event hooks.
/// 
/// Thread Safety: All session operations are thread-safe via ConcurrentDictionary.
/// </summary>
public abstract class NetworkService : BackgroundService
{
    #region Constants

    /// <summary>
    /// Default listen backlog for incoming connections.
    /// </summary>
    private const int DefaultListenBacklog = 200;

    /// <summary>
    /// How often to check for inactive sessions.
    /// </summary>
    private static readonly TimeSpan CleanupInterval = TimeSpan.FromMinutes(5);

    /// <summary>
    /// Default session timeout for inactive connections.
    /// </summary>
    public TimeSpan SessionTimeout { get; set; } = TimeSpan.FromMinutes(60);

    #endregion

    #region Fields

    private readonly ILogger<NetworkService> _logger;
    private readonly ConcurrentDictionary<string, SessionInfo> _sessions = new();
    private readonly ConcurrentDictionary<long, TaskCompletionSource> _clientOperations = new();
    private long _clientOperationId;
    private Socket? _listenSocket;
    private int _port;
    private CancellationTokenSource? _linkedCts;

    /// <summary>
    /// Monotonic source for <see cref="GameSession.ConnectionId"/>.
    /// </summary>
    /// <remarks>
    /// Previously nothing ever assigned ConnectionId, so every session carried the default
    /// value of 0. Packet routing hashes this value (connectionId % containerCount), so every
    /// connection resolved to container 0 and the remaining network containers stayed idle for
    /// the lifetime of the process. Assigning a unique id here is what actually distributes
    /// sessions across the container pool.
    ///
    /// Starts at 0 and is pre-incremented, so the first session gets id 1; 0 is reserved as the
    /// "unassigned" sentinel and is never handed out.
    /// </remarks>
    private static int _connectionIdCounter;

    #endregion

    #region Events

    /// <summary>
    /// Raised when a new session is connected and ready for processing.
    /// </summary>
    public event Action<GameSession>? OnSessionConnected;

    /// <summary>
    /// Raised when a session is disconnected (after its inbound channel has been fully drained).
    /// </summary>
    public event Action<GameSession>? OnSessionDisconnected;

    /// <summary>
    /// Optional single-reader consumer for each session's ordered inbound chunk channel. The
    /// service awaits it before disconnect callbacks and disposal, so a final socket read cannot
    /// race client-state teardown.
    /// </summary>
    public Func<GameSession, Task>? SessionPacketProcessor { get; set; }

    #endregion

    #region Properties

    /// <summary>
    /// Gets the number of active sessions.
    /// </summary>
    public int ActiveSessionCount => _sessions.Count;

    /// <summary>
    /// Gets whether the service is currently listening for connections.
    /// </summary>
    public bool IsListening => _listenSocket?.IsBound == true;

    #endregion

    #region Constructor

    protected NetworkService(ILogger<NetworkService> logger)
    {
        _logger = logger ?? throw new ArgumentNullException(nameof(logger));
    }

    #endregion

    #region Configuration

    /// <summary>
    /// Configures the network service to listen on the specified port.
    /// Must be called before StartAsync.
    /// </summary>
    public void Configure(int port)
    {
        if (port <= 0 || port > 65535)
            throw new ArgumentOutOfRangeException(nameof(port), "Port must be between 1 and 65535");
        _port = port;
    }

    #endregion

    #region BackgroundService

    protected override async Task ExecuteAsync(CancellationToken stoppingToken)
    {
        if (_port == 0)
        {
            _logger.LogError("NetworkService not configured. Call Configure(port) before starting.");
            return;
        }
        if (SessionPacketProcessor is null)
        {
            _logger.LogError("NetworkService has no session packet processor configured.");
            return;
        }

        _linkedCts = CancellationTokenSource.CreateLinkedTokenSource(stoppingToken);

        try
        {
            // Create and bind the listen socket with cross-platform options
            _listenSocket = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);
            
            // Cross-platform socket options
            _listenSocket.SetSocketOption(SocketOptionLevel.Socket, SocketOptionName.ReuseAddress, true);
            _listenSocket.NoDelay = true; // Disable Nagle's algorithm for low latency
            
            // Linux-specific: Set keep-alive options
            if (!OperatingSystem.IsWindows())
            {
                _listenSocket.SetSocketOption(SocketOptionLevel.Socket, SocketOptionName.KeepAlive, true);
            }

            _listenSocket.Bind(new IPEndPoint(IPAddress.Any, _port));
            _listenSocket.Listen(DefaultListenBacklog);

            _logger.LogInformation("NetworkService listening on port {Port} (Platform: {Platform})", 
                _port, OperatingSystem.IsWindows() ? "Windows" : "Linux");

            // Start background cleanup task
            _ = CleanupInactiveSessionsAsync(_linkedCts.Token);

            // Accept loop
            while (!stoppingToken.IsCancellationRequested)
            {
                try
                {
                    var clientSocket = await _listenSocket.AcceptAsync(stoppingToken);
                    
                    // Cross-platform client socket options
                    clientSocket.NoDelay = true;
                    
                    if (!OperatingSystem.IsWindows())
                    {
                        clientSocket.SetSocketOption(SocketOptionLevel.Socket, SocketOptionName.KeepAlive, true);
                    }
                    
                    // The accept loop stays non-blocking, but the operation is tracked so service
                    // shutdown can await channel drain, final packet dispatch, and disconnect hooks.
                    StartTrackedClient(clientSocket, _linkedCts.Token);
                }
                catch (OperationCanceledException)
                {
                    break;
                }
                catch (SocketException ex) when (ex.SocketErrorCode == System.Net.Sockets.SocketError.OperationAborted)
                {
                    // Socket closed during shutdown
                    break;
                }
            }
        }
        catch (OperationCanceledException)
        {
            _logger.LogInformation("NetworkService stopping gracefully");
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "NetworkService encountered an error");
        }
        finally
        {
            await ShutdownAllSessionsAsync();
        }
    }

    #endregion

    #region Session Management

    private void StartTrackedClient(Socket socket, CancellationToken token)
    {
        long operationId = Interlocked.Increment(ref _clientOperationId);
        var completion = new TaskCompletionSource(TaskCreationOptions.RunContinuationsAsynchronously);
        if (!_clientOperations.TryAdd(operationId, completion))
            throw new InvalidOperationException($"Duplicate client operation id {operationId}.");

        _ = RunTrackedClientAsync(operationId, completion, socket, token);
    }

    private async Task RunTrackedClientAsync(
        long operationId,
        TaskCompletionSource completion,
        Socket socket,
        CancellationToken token)
    {
        try
        {
            await HandleClientAsync(socket, token).ConfigureAwait(false);
        }
        finally
        {
            completion.TrySetResult();
            _clientOperations.TryRemove(operationId, out _);
        }
    }

    private async Task HandleClientAsync(Socket socket, CancellationToken token)
    {
        var sessionId = Guid.NewGuid().ToString("N"); // No hyphens for cleaner keys
        var ip = (socket.RemoteEndPoint as IPEndPoint)?.Address.ToString() ?? "unknown";
        
        GameSession? session = null;
        
        try
        {
            session = CreateSession(socket);

            // Assign a unique, monotonic connection id BEFORE any listener runs.
            // Packet routing shards on this value, so it must be set before OnSessionConnected
            // fires and before the receive loop can enqueue the first packet.
            // Interlocked.Increment wraps to negative at int.MaxValue; the unchecked cast to
            // uint keeps the value well-defined and the modulo routing correct across the wrap.
            session.ConnectionId = unchecked((uint)Interlocked.Increment(ref _connectionIdCounter));

            var sessionInfo = new SessionInfo
            {
                Session = session,
                SessionId = sessionId,
                ConnectedAt = DateTime.UtcNow
            };

            if (!_sessions.TryAdd(sessionId, sessionInfo))
            {
                _logger.LogWarning("Failed to register session {SessionId}", sessionId);
                socket.Dispose();
                return;
            }

            _logger.LogInformation("Client connected: {IP} (Session: {Id})", ip, sessionId);

            // Initialize protocol/client state before the packet consumer starts.
            OnSessionConnected?.Invoke(session);

            // The transport completes the channel after the final socket bytes are enqueued. Await
            // both sides so disconnect cleanup cannot dispose client state while that final chunk is
            // still being decrypted or dispatched.
            Task packetProcessor = SessionPacketProcessor?.Invoke(session) ?? Task.CompletedTask;
            await session.ProcessReceiveLoopAsync(token).ConfigureAwait(false);
            await packetProcessor.ConfigureAwait(false);
        }
        catch (OperationCanceledException)
        {
            // Normal shutdown
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error handling client {IP}", ip);
        }
        finally
        {
            // IMPORTANT: Always clean up the session from the dictionary
            if (_sessions.TryRemove(sessionId, out var removedInfo))
            {
                _logger.LogInformation("Client disconnected: {IP} (Session: {Id})", ip, sessionId);
            }

            // Notify listeners
            if (session != null)
            {
                try
                {
                    OnSessionDisconnected?.Invoke(session);
                }
                catch (Exception ex)
                {
                    _logger.LogError(ex, "Error in OnSessionDisconnected handler");
                }
            }

            // Dispose the session (handles socket cleanup)
            try
            {
                session?.Dispose();
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Error disposing session {SessionId}", sessionId);
            }
        }
    }

    /// <summary>
    /// Periodically cleans up inactive sessions that have exceeded the timeout.
    /// </summary>
    private async Task CleanupInactiveSessionsAsync(CancellationToken ct)
    {
        while (!ct.IsCancellationRequested)
        {
            try
            {
                await Task.Delay(CleanupInterval, ct);
                
                var now = DateTime.UtcNow;
                var inactiveSessions = new List<string>();

                // Idle is measured from GameSession.LastReceiveTime, which the receive loop
                // stamps on every read. The old code compared SessionInfo.LastActivity, which
                // was only ever written once at construction (its only mutator,
                // UpdateSessionActivity, had no callers), so this check could never be true and
                // half-open connections accumulated for the lifetime of the process.
                foreach (var kvp in _sessions)
                {
                    if (now - kvp.Value.LastActivity > SessionTimeout)
                    {
                        inactiveSessions.Add(kvp.Key);
                    }
                }

                foreach (var sessionId in inactiveSessions)
                {
                    if (_sessions.TryRemove(sessionId, out var sessionInfo))
                    {
                        _logger.LogWarning(
                            "Closing inactive session {SessionId} (IP: {IP}, Idle: {Idle})",
                            sessionId,
                            sessionInfo.Session.IP,
                            now - sessionInfo.LastActivity);

                        // Disconnect() tears down the socket, which unblocks the receive loop in
                        // HandleClientAsync; its finally block raises OnSessionDisconnected and
                        // disposes the session. Disposing here as well would race that path.
                        sessionInfo.Session.Disconnect();
                    }
                }
            }
            catch (OperationCanceledException)
            {
                break;
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Error in session cleanup");
            }
        }
    }

    /// <summary>
    /// Shuts down all active sessions gracefully.
    /// </summary>
    private async Task ShutdownAllSessionsAsync()
    {
        _logger.LogInformation("Shutting down all sessions ({Count} active)", _sessions.Count);
        _linkedCts?.Cancel();

        foreach (var kvp in _sessions)
        {
            try
            {
                // HandleClientAsync remains the sole owner of disconnect callbacks and disposal.
                // Closing the socket completes its receive loop and inbound channel.
                kvp.Value.Session.Disconnect();
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Error stopping session {SessionId}", kvp.Key);
            }
        }

        Task[] clientOperations = _clientOperations.Values
            .Select(static completion => completion.Task)
            .ToArray();
        await Task.WhenAll(clientOperations).ConfigureAwait(false);
        _sessions.Clear();

        _logger.LogInformation("All sessions shut down");
    }

    #endregion

    #region Public API

    /// <summary>
    /// Gets a session by its ID.
    /// </summary>
    public GameSession? GetSession(string sessionId)
    {
        return _sessions.TryGetValue(sessionId, out var info) ? info.Session : null;
    }

    /// <summary>
    /// Gets all active sessions.
    /// </summary>
    public IReadOnlyList<GameSession> GetAllSessions()
    {
        return _sessions.Values.Select(info => info.Session).ToList().AsReadOnly();
    }

    /// <summary>
    /// Sends data to a specific socket.
    /// </summary>
    [Obsolete("Send through GameSession so writes remain serialized and stream-ordered.", error: true)]
    public Task SendAsync(Socket socket, byte[] data) =>
        throw new NotSupportedException("Direct socket sends bypass the per-session outbound queue.");

    /// <summary>
    /// Receives data from a specific socket.
    /// </summary>
    public async Task<int> ReceiveAsync(Socket socket, byte[] buffer)
    {
        if (socket == null || !socket.Connected)
            return 0;
        
        return await socket.ReceiveAsync(buffer, SocketFlags.None);
    }

    /// <summary>
    /// Updates the last activity time for a session (call when receiving data).
    /// </summary>
    public void UpdateSessionActivity(string sessionId)
    {
        if (_sessions.TryGetValue(sessionId, out var info))
        {
            // Activity is now tracked on the session itself by the receive loop, so this is a
            // no-op kept for API compatibility. Stamping it here is still correct for callers
            // that want to keep a session alive across a long non-socket operation.
            info.Session.LastReceiveTime = DateTime.UtcNow;
        }
    }

    #endregion

    #region Factory Method

    /// <summary>
    /// Creates a new GameSession for the given socket.
    /// Override in derived classes to customize session creation.
    /// </summary>
    protected virtual GameSession CreateSession(Socket socket)
    {
        return new GameSession(socket);
    }

    #endregion

    #region Cleanup

    public override void Dispose()
    {
        _linkedCts?.Cancel();
        _linkedCts?.Dispose();
        
        try
        {
            _listenSocket?.Close();
            _listenSocket?.Dispose();
        }
        catch
        {
            // Ignore cleanup errors
        }

        base.Dispose();
    }

    #endregion

    #region Session Info

    /// <summary>
    /// Internal session tracking information.
    /// </summary>
    private sealed class SessionInfo
    {
        public required GameSession Session { get; init; }
        public required string SessionId { get; init; }
        public DateTime ConnectedAt { get; init; }

        /// <summary>
        /// Last time this session read data from its socket.
        /// </summary>
        /// <remarks>
        /// Delegates to <see cref="GameSession.LastReceiveTime"/>, which the receive loop keeps
        /// current, instead of holding a private copy that nothing updated.
        /// </remarks>
        public DateTime LastActivity => Session.LastReceiveTime;
    }

    #endregion
}
