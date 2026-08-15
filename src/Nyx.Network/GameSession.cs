using System;
using System.Buffers;
using System.IO.Pipelines;
using System.Net.Sockets;
using System.Threading;
using System.Threading.Channels;
using System.Threading.Tasks;

namespace Nyx.Network;

/// <summary>
/// Represents a network session with a connected client.
/// Owns encrypted transport chunks, serialized outbound writes, and connection lifecycle.
/// Protocol framing and encryption are deliberately handled above this transport boundary.
/// 
/// Thread Safety: This class is designed to be used from multiple threads.
/// The Alive property uses volatile reads/writes for visibility.
/// Disconnect() is safe to call from any thread and will only execute once.
/// </summary>
public sealed class GameSession : IDisposable
{
    #region Constants

    /// <summary>
    /// Buffer size requested from the receive PipeWriter.
    /// </summary>
    private const int SocketBufferSize = 2048;
    private const int InboundChunkCapacity = 256;
    private const int OutboundFrameCapacity = 1024;

    #endregion

    #region Fields

    /// <summary>
    /// Atomic flag to ensure Disconnect() only executes once.
    /// </summary>
    private int _disconnectCalled;

    /// <summary>
    /// Whether the session is alive. Uses volatile for cross-thread visibility.
    /// </summary>
    private volatile bool _alive = true;

    /// <summary>
    /// Serializes all writes for this socket. TCP is ordered, but overlapping SendAsync calls are
    /// not a message queue and can otherwise interleave or reorder packet fragments.
    /// </summary>
    private readonly Channel<byte[]> _outbound;
    private readonly CancellationTokenSource _lifetime = new();

    #endregion

    #region Properties

    /// <summary>
    /// The underlying socket for this session.
    /// </summary>
    public Socket Socket { get; }

    /// <summary>
    /// Channel for receiving ordered encrypted chunks from the network layer.
    /// </summary>
    public PacketChannel<byte[]> Channel { get; }

    /// <summary>
    /// The client's IP address.
    /// </summary>
    public string IP { get; }

    /// <summary>
    /// Connection ID for routing packets to the correct network container.
    /// </summary>
    public uint ConnectionId { get; set; }

    /// <summary>
    /// Whether this session is still connected and operational.
    /// Thread-safe via volatile.
    /// </summary>
    public bool Alive
    {
        get => _alive;
        set => _alive = value;
    }

    /// <summary>
    /// Generic connector object used by game logic (e.g., GameClient).
    /// </summary>
    public object? Connector { get; set; }

    /// <summary>
    /// MAC address of the connected client (if available).
    /// </summary>
    public string MAC { get; set; } = string.Empty;

    /// <summary>
    /// Timestamp of the last received data.
    /// </summary>
    public DateTime LastReceiveTime { get; set; }

    #endregion

    #region Constructor

    public GameSession(Socket socket)
    {
        Socket = socket ?? throw new ArgumentNullException(nameof(socket));
        IP = (socket.RemoteEndPoint as System.Net.IPEndPoint)?.Address.ToString() ?? "unknown";
        Channel = new PacketChannel<byte[]>(InboundChunkCapacity);
        _outbound = System.Threading.Channels.Channel.CreateBounded<byte[]>(new BoundedChannelOptions(OutboundFrameCapacity)
        {
            SingleReader = true,
            SingleWriter = false,
            FullMode = BoundedChannelFullMode.Wait,
            AllowSynchronousContinuations = false
        });
        _alive = true;
        LastReceiveTime = DateTime.UtcNow;
        _ = ProcessSendQueueAsync();
    }

    #endregion

    #region Receive Loop

    /// <summary>
    /// Processes the receive loop using System.IO.Pipelines for efficient buffered I/O.
    /// This method blocks until the session is disconnected or cancellation is requested.
    /// </summary>
    public async Task ProcessReceiveLoopAsync(CancellationToken token)
    {
        var pipe = new Pipe();

        try
        {
            // Run fill and read in parallel
            var fillTask = FillPipeAsync(Socket, pipe.Writer, token);
            var readTask = ReadPipeAsync(pipe.Reader, token);

            await Task.WhenAll(fillTask, readTask);
        }
        catch (OperationCanceledException)
        {
            // Normal shutdown
        }
        catch (Exception ex)
        {
            Console.WriteLine($"[Error] ProcessReceiveLoopAsync: {ex.Message}");
        }
        finally
        {
            _alive = false;
        }
    }

    /// <summary>
    /// Fills the pipe with raw bytes from the socket.
    /// Handles socket errors gracefully with cross-platform error handling.
    /// </summary>
    private async Task FillPipeAsync(Socket socket, PipeWriter writer, CancellationToken token)
    {
        try
        {
            while (!token.IsCancellationRequested && _alive)
            {
                Memory<byte> memory = writer.GetMemory(SocketBufferSize);
                int bytesRead;

                try
                {
                    bytesRead = await socket.ReceiveAsync(memory, SocketFlags.None, token).ConfigureAwait(false);
                }
                catch (OperationCanceledException)
                {
                    break;
                }
                catch (SocketException ex) when (
                    ex.SocketErrorCode == SocketError.ConnectionReset ||
                    ex.SocketErrorCode == SocketError.ConnectionAborted ||
                    ex.SocketErrorCode == SocketError.OperationAborted ||
                    ex.SocketErrorCode == SocketError.Shutdown ||
                    ex.SocketErrorCode == SocketError.HostUnreachable ||
                    ex.SocketErrorCode == SocketError.NetworkDown ||
                    ex.SocketErrorCode == SocketError.NetworkReset)
                {
                    break;
                }
                catch (ObjectDisposedException)
                {
                    break;
                }

                if (bytesRead == 0)
                    break;

                LastReceiveTime = DateTime.UtcNow;
                writer.Advance(bytesRead);
                FlushResult flush = await writer.FlushAsync(token).ConfigureAwait(false);
                if (flush.IsCanceled || flush.IsCompleted)
                    break;
            }
        }
        catch (OperationCanceledException)
        {
            // Normal shutdown.
        }
        catch (Exception ex)
        {
            Console.WriteLine($"[Error] FillPipeAsync: {ex}");
        }
        finally
        {
            await writer.CompleteAsync().ConfigureAwait(false);
            _alive = false;
        }
    }

    /// <summary>
    /// Moves ordered encrypted chunks from the pipe to the bounded processing channel.
    /// </summary>
    private async Task ReadPipeAsync(PipeReader reader, CancellationToken token)
    {
        try
        {
            while (!token.IsCancellationRequested)
            {
                ReadResult result;

                try
                {
                    result = await reader.ReadAsync(token);
                }
                catch (OperationCanceledException)
                {
                    break;
                }

                ReadOnlySequence<byte> buffer = result.Buffer;

                // Encryption and the irregular DH exchange live above the transport boundary. The
                // channel therefore carries ordered encrypted chunks; protocol framing occurs once,
                // after decryption, in TqPacketStreamDecoder.
                if (!buffer.IsEmpty)
                {
                    byte[] chunk = buffer.ToArray();
                    await Channel.WriteAsync(chunk, token).ConfigureAwait(false);
                }

                reader.AdvanceTo(buffer.End);
                if (result.IsCompleted)
                    break;
            }
        }
        catch (OperationCanceledException)
        {
            // Normal shutdown
        }
        catch (Exception ex)
        {
            Console.WriteLine($"[Error] ReadPipeAsync: {ex.Message}");
        }
        finally
        {
            _alive = false;
            Channel.Complete();
            await reader.CompleteAsync().ConfigureAwait(false);
        }
    }

    #endregion

    #region Send

    /// <summary>
    /// Queues immutable, session-owned bytes for the single socket writer.
    /// Backpressure is applied when a client cannot consume the bounded queue.
    /// </summary>
    public async Task SendAsync(byte[] data)
    {
        if (data is null || data.Length == 0 || !_alive)
            return;

        try
        {
            await _outbound.Writer.WriteAsync(data, _lifetime.Token).ConfigureAwait(false);
        }
        catch (OperationCanceledException)
        {
            // Session is shutting down.
        }
        catch (ChannelClosedException)
        {
            _alive = false;
        }
    }

    /// <summary>Compatibility enqueue API used by game packet producers.</summary>
    public void Send(byte[] data)
    {
        if (data is null || data.Length == 0 || !_alive)
            return;

        if (!_outbound.Writer.TryWrite(data))
        {
            // Never drop or reorder a stateful encrypted packet. A client that cannot consume a
            // OutboundFrameCapacity-packet backlog is disconnected instead of creating unbounded
            // asynchronous waiters.
            FailSocket();
        }
    }

    private async Task ProcessSendQueueAsync()
    {
        try
        {
            await foreach (byte[] data in _outbound.Reader.ReadAllAsync(_lifetime.Token).ConfigureAwait(false))
            {
                int sent = 0;
                while (sent < data.Length)
                {
                    int count = await Socket.SendAsync(
                        data.AsMemory(sent),
                        SocketFlags.None,
                        _lifetime.Token).ConfigureAwait(false);
                    if (count == 0)
                        throw new SocketException((int)SocketError.ConnectionReset);
                    sent += count;
                }
            }
        }
        catch (OperationCanceledException)
        {
            // Session is shutting down.
        }
        catch (SocketException)
        {
            FailSocket();
        }
        catch (ObjectDisposedException)
        {
            _alive = false;
        }
        catch (Exception ex)
        {
            Console.WriteLine($"[Error] Send loop failed: {ex.Message}");
            FailSocket();
        }
    }

    private void FailSocket()
    {
        _alive = false;
        _outbound.Writer.TryComplete();
        try { Socket.Shutdown(SocketShutdown.Both); }
        catch (SocketException) { }
        catch (ObjectDisposedException) { }
    }

    #endregion

    #region Disconnect

    /// <summary>
    /// Disconnects this session and releases resources.
    /// Thread-safe: guaranteed to execute only once regardless of how many threads call it.
    /// </summary>
    public void Disconnect()
    {
        // Atomic guard - only one thread can execute the disconnect logic
        if (Interlocked.Exchange(ref _disconnectCalled, 1) == 1)
            return;

        _alive = false;
        _outbound.Writer.TryComplete();
        _lifetime.Cancel();
        Channel.Complete();

        try
        {
            if (Socket != null)
            {
                try
                {
                    if (Socket.Connected)
                    {
                        Socket.Shutdown(SocketShutdown.Both);
                    }
                }
                catch (SocketException)
                {
                    // Socket already disconnected
                }
                catch (ObjectDisposedException)
                {
                    // Socket already disposed
                }

                try
                {
                    Socket.Close();
                }
                catch
                {
                    // Ignore close errors
                }

                try
                {
                    Socket.Dispose();
                }
                catch
                {
                    // Ignore dispose errors
                }
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine($"[Error] GameSession.Disconnect: {ex.Message}");
        }

        // Connector deliberately remains available until NetworkService has drained inbound work
        // and raised its disconnect callback. Domain teardown (saving/removing the player) needs it.
    }

    #endregion

    #region IDisposable

    public void Dispose()
    {
        Disconnect();
        Connector = null;
        Channel.Dispose();
        _lifetime.Dispose();
        GC.SuppressFinalize(this);
    }

    #endregion
}
