using System;
using System.Buffers;
using System.IO.Pipelines;
using System.Net.Sockets;
using System.Threading;
using System.Threading.Tasks;
using Nyx.Network.Cryptography;

namespace Nyx.Network;

/// <summary>
/// Represents a network session with a connected client.
/// Handles packet framing, encryption, and connection lifecycle.
/// 
/// Thread Safety: This class is designed to be used from multiple threads.
/// The Alive property uses volatile reads/writes for visibility.
/// Disconnect() is safe to call from any thread and will only execute once.
/// </summary>
public sealed class GameSession : IDisposable
{
    #region Constants

    /// <summary>
    /// Minimum valid TQ packet size (length + id).
    /// </summary>
    private const int MinPacketSize = 4;

    /// <summary>
    /// Maximum valid TQ packet size to prevent memory attacks.
    /// </summary>
    private const int MaxPacketSize = 1024;

    /// <summary>
    /// Size of the TQClient seal appended to packets.
    /// </summary>
    private const int SealSize = 8;

    /// <summary>
    /// Buffer size for socket reads.
    /// </summary>
    private const int SocketBufferSize = 2048;

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

    #endregion

    #region Properties

    /// <summary>
    /// The underlying socket for this session.
    /// </summary>
    public Socket Socket { get; }

    /// <summary>
    /// Channel for receiving parsed packets from the network layer.
    /// </summary>
    public PacketChannel<byte[]> Channel { get; }

    /// <summary>
    /// Cryptography handler for this session (set during handshake).
    /// </summary>
    public ICipher? Cryptography { get; private set; }

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

    /// <summary>
    /// Whether this session is in raw mode (no packet framing).
    /// </summary>
    public bool RawMode { get; set; }

    #endregion

    #region Constructor

    public GameSession(Socket socket)
    {
        Socket = socket ?? throw new ArgumentNullException(nameof(socket));
        IP = (socket.RemoteEndPoint as System.Net.IPEndPoint)?.Address.ToString() ?? "unknown";
        Channel = new PacketChannel<byte[]>();
        _alive = true;
        LastReceiveTime = DateTime.UtcNow;
    }

    #endregion

    #region Configuration

    public void SetCryptography(ICipher cipher)
    {
        Cryptography = cipher;
    }

    public void EnablePacketFraming()
    {
        RawMode = false;
    }

    public void EnableRawMode()
    {
        RawMode = true;
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
        var buffer = ArrayPool<byte>.Shared.Rent(SocketBufferSize);

        try
        {
            while (!token.IsCancellationRequested && _alive)
            {
                int bytesRead;

                try
                {
                    bytesRead = await socket.ReceiveAsync(
                        new Memory<byte>(buffer),
                        SocketFlags.None,
                        token);
                }
                catch (OperationCanceledException)
                {
                    break;
                }
                catch (SocketException ex) when (
                    ex.SocketErrorCode == SocketError.ConnectionReset ||
                    ex.SocketErrorCode == SocketError.ConnectionAborted ||
                    ex.SocketErrorCode == SocketError.Shutdown ||
                    ex.SocketErrorCode == SocketError.HostUnreachable ||
                    ex.SocketErrorCode == SocketError.NetworkDown ||
                    ex.SocketErrorCode == SocketError.NetworkReset)
                {
                    // Cross-platform disconnection scenarios
                    break;
                }
                catch (ObjectDisposedException)
                {
                    break;
                }

                if (bytesRead == 0)
                    break; // Client disconnected gracefully

                LastReceiveTime = DateTime.UtcNow;

                // Write raw bytes to pipe
                await writer.WriteAsync(new ReadOnlyMemory<byte>(buffer, 0, bytesRead), token);
            }
        }
        catch (OperationCanceledException ez)
        {
            Console.WriteLine(ez.ToString());
            // Normal shutdown
        }
        catch (Exception ex)
        {
            Console.WriteLine($"[Error] FillPipeAsync: {ex}");
        }
        finally
        {
            ArrayPool<byte>.Shared.Return(buffer);
            await writer.CompleteAsync();
            _alive = false;
        }
    }

    /// <summary>
    /// Reads packets from the pipe and writes them to the channel.
    /// Handles both raw mode and framed mode.
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

                var buffer = result.Buffer;

                if (RawMode)
                {
                    // Raw mode: pass all available data as a single chunk
                    if (!buffer.IsEmpty)
                    {
                        var packet = buffer.ToArray();
                        await Channel.WriteAsync(packet);
                        reader.AdvanceTo(buffer.End);
                    }
                    else
                    {
                        reader.AdvanceTo(buffer.Start);
                    }
                }
                else
                {
                    // Framed mode: extract individual packets
                    while (TryReadPacket(ref buffer, out var packet))
                    {
                        await Channel.WriteAsync(packet);
                    }
                    reader.AdvanceTo(buffer.Start, buffer.End);
                }

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
        }
    }

    /// <summary>
    /// Attempts to read a single TQ packet from the buffer.
    /// TQ Packet Format: [Length:2][Data:Length-2][Seal:8]
    /// </summary>
    private static bool TryReadPacket(ref ReadOnlySequence<byte> buffer, out byte[]? packet)
    {
        // TQ Packet Structure: 
        // First 2 bytes = Length (inclusive of header)
        // Length is Little Endian usually.

        packet = null;

        if (buffer.Length < 2)
            return false;

        // Read first 2 bytes to get length
        var lengthSlice = buffer.Slice(0, 2);
        Span<byte> lengthBytes = stackalloc byte[2];
        lengthSlice.CopyTo(lengthBytes);
        ushort length = BitConverter.ToUInt16(lengthBytes);

        // Sanity check
        if (length < 4 || length > 8192)
        {
            packet = null;
            return false;
        }

        if (buffer.Length < length)
        {
            packet = null;
            return false;
        }

        // Copy data to array
        packet = new byte[length];
        buffer.Slice(0, length).CopyTo(packet);

        // Update buffer cursor
        buffer = buffer.Slice(length);
        return true;
    }

    #endregion

    #region Send

    /// <summary>
    /// Sends raw data to the client asynchronously.
    /// Thread-safe: can be called from any thread.
    /// </summary>
    public async Task SendAsync(byte[] data)
    {
        if (data == null || data.Length == 0)
            return;

        if (!_alive)
            return;

        try
        {
            await Socket.SendAsync(data, SocketFlags.None);
        }
        catch (SocketException)
        {
            _alive = false;
            // Don't rethrow - let the receive loop handle disconnect
        }
        catch (ObjectDisposedException)
        {
            _alive = false;
        }
    }

    /// <summary>
    /// Sends raw data to the client synchronously (fire-and-forget).
    /// Use for legacy compatibility. Prefer SendAsync when possible.
    /// </summary>
    public void Send(byte[] data)
    {
        if (data == null || data.Length == 0)
            return;

        if (!_alive)
            return;

        // Fire and forget - directly call SendAsync without Task.Run
        // Task.Run introduces scheduling delay which causes DH handshake to fail
        _ = SendAsync(data);
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
        finally
        {
            // Clear references to allow GC
            Connector = null;

            try
            {
                Cryptography?.Dispose();
            }
            catch
            {
                // Ignore crypto dispose errors
            }

            Cryptography = null;
        }
    }

    #endregion

    #region IDisposable

    public void Dispose()
    {
        Disconnect();
        GC.SuppressFinalize(this);
    }

    #endregion
}
