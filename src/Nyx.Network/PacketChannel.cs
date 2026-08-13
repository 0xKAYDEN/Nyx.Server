using System;
using System.Threading;
using System.Threading.Channels;
using System.Threading.Tasks;

namespace Nyx.Network;

/// <summary>
/// Thread-safe channel for passing packets between producer and consumer.
/// Supports backpressure via bounded channel to prevent memory exhaustion.
/// 
/// Thread Safety: All methods are thread-safe and can be called concurrently.
/// </summary>
/// <typeparam name="T">The type of items in the channel.</typeparam>
public sealed class PacketChannel<T> : IDisposable
{
    #region Constants

    /// <summary>
    /// Default capacity for bounded channels.
    /// </summary>
    private const int DefaultCapacity = 10000;

    #endregion

    #region Fields

    private readonly Channel<T> _channel;
    private readonly int _capacity;
    private long _totalWritten;
    private long _totalRead;
    private int _disposed;

    #endregion

    #region Properties

    /// <summary>
    /// Gets the reader end of the channel.
    /// </summary>
    public ChannelReader<T> Reader => _channel.Reader;

    /// <summary>
    /// Gets the writer end of the channel.
    /// </summary>
    public ChannelWriter<T> Writer => _channel.Writer;

    /// <summary>
    /// Gets the approximate number of items in the channel.
    /// </summary>
    public int Count => _channel.Reader.Count;

    /// <summary>
    /// Gets whether the channel is empty.
    /// </summary>
    public bool IsEmpty => _channel.Reader.Count == 0;

    /// <summary>
    /// Gets whether the channel has been completed.
    /// </summary>
    public bool IsCompleted => _channel.Reader.Completion.IsCompleted;

    /// <summary>
    /// Gets the total number of items written to the channel.
    /// </summary>
    public long TotalWritten => Interlocked.Read(ref _totalWritten);

    /// <summary>
    /// Gets the total number of items read from the channel.
    /// </summary>
    public long TotalRead => Interlocked.Read(ref _totalRead);

    /// <summary>
    /// Gets the capacity of the channel (0 if unbounded).
    /// </summary>
    public int Capacity => _capacity;

    #endregion

    #region Constructor

    /// <summary>
    /// Creates a new PacketChannel with the specified capacity.
    /// </summary>
    /// <param name="capacity">
    /// The maximum number of items the channel can hold.
    /// If 0 or negative, creates an unbounded channel.
    /// </param>
    /// <param name="fullMode">
    /// How to handle a full channel. Default is Wait (backpressure).
    /// Use DropOldest or DropNewest for real-time scenarios where dropping packets is acceptable.
    /// </param>
    public PacketChannel(int capacity = DefaultCapacity, BoundedChannelFullMode fullMode = BoundedChannelFullMode.Wait)
    {
        _capacity = capacity;

        if (capacity > 0)
        {
            var options = new BoundedChannelOptions(capacity)
            {
                SingleReader = true,
                SingleWriter = false,
                FullMode = fullMode,
                AllowSynchronousContinuations = false
            };
            _channel = Channel.CreateBounded<T>(options);
        }
        else
        {
            var options = new UnboundedChannelOptions
            {
                SingleReader = true,
                SingleWriter = false,
                AllowSynchronousContinuations = false
            };
            _channel = Channel.CreateUnbounded<T>(options);
        }
    }

    #endregion

    #region Write Operations

    /// <summary>
    /// Writes an item to the channel asynchronously.
    /// Will wait if the channel is full (backpressure).
    /// </summary>
    /// <returns>True if the item was written, false if the channel was completed.</returns>
    public async ValueTask<bool> WriteAsync(T item, CancellationToken cancellationToken = default)
    {
        ObjectDisposedException.ThrowIf(_disposed == 1, this);

        try
        {
            await _channel.Writer.WriteAsync(item, cancellationToken);
            Interlocked.Increment(ref _totalWritten);
            return true;
        }
        catch (ChannelClosedException)
        {
            return false;
        }
        catch (OperationCanceledException)
        {
            return false;
        }
    }

    /// <summary>
    /// Attempts to write an item to the channel without waiting.
    /// Returns immediately if the channel is full.
    /// </summary>
    /// <returns>True if the item was written, false if the channel is full or completed.</returns>
    public bool TryWrite(T item)
    {
        ObjectDisposedException.ThrowIf(_disposed == 1, this);

        if (_channel.Writer.TryWrite(item))
        {
            Interlocked.Increment(ref _totalWritten);
            return true;
        }
        return false;
    }

    /// <summary>
    /// Writes an item, dropping the oldest item if the channel is full.
    /// Useful for real-time scenarios where recent data is more important.
    /// </summary>
    /// <returns>True if the item was written, false if the channel was completed.</returns>
    public bool WriteOrDropOldest(T item)
    {
        ObjectDisposedException.ThrowIf(_disposed == 1, this);

        // Try to write normally first
        if (_channel.Writer.TryWrite(item))
        {
            Interlocked.Increment(ref _totalWritten);
            return true;
        }

        // Channel is full - try to read and discard oldest item, then write
        if (_channel is Channel<T> boundedChannel)
        {
            // Try to read and discard
            if (_channel.Reader.TryRead(out _))
            {
                Interlocked.Increment(ref _totalRead); // Count the dropped item
                
                // Try writing again
                if (_channel.Writer.TryWrite(item))
                {
                    Interlocked.Increment(ref _totalWritten);
                    return true;
                }
            }
        }

        return false;
    }

    #endregion

    #region Read Operations

    /// <summary>
    /// Reads an item from the channel asynchronously.
    /// </summary>
    public ValueTask<T> ReadAsync(CancellationToken cancellationToken = default)
    {
        ObjectDisposedException.ThrowIf(_disposed == 1, this);
        return _channel.Reader.ReadAsync(cancellationToken);
    }

    /// <summary>
    /// Attempts to read an item from the channel without waiting.
    /// </summary>
    /// <returns>True if an item was read, false if the channel is empty.</returns>
    public bool TryRead(out T? item)
    {
        ObjectDisposedException.ThrowIf(_disposed == 1, this);

        if (_channel.Reader.TryRead(out item))
        {
            Interlocked.Increment(ref _totalRead);
            return true;
        }
        return false;
    }

    /// <summary>
    /// Gets all available items from the channel without waiting.
    /// Useful for batch processing.
    /// </summary>
    public int TryReadAll(Span<T> destination)
    {
        ObjectDisposedException.ThrowIf(_disposed == 1, this);

        var count = 0;
        while (count < destination.Length && _channel.Reader.TryRead(out var item))
        {
            destination[count++] = item;
            Interlocked.Increment(ref _totalRead);
        }
        return count;
    }

    /// <summary>
    /// Creates an async enumerable for consuming items from the channel.
    /// </summary>
    public IAsyncEnumerable<T> ReadAllAsync(CancellationToken cancellationToken = default)
    {
        ObjectDisposedException.ThrowIf(_disposed == 1, this);
        return _channel.Reader.ReadAllAsync(cancellationToken);
    }

    #endregion

    #region Completion

    /// <summary>
    /// Marks the channel as complete, signaling that no more items will be written.
    /// Readers can continue to read remaining items.
    /// </summary>
    public void Complete()
    {
        _channel.Writer.TryComplete();
    }

    /// <summary>
    /// Marks the channel as complete with an error.
    /// </summary>
    public void Complete(Exception error)
    {
        _channel.Writer.TryComplete(error);
    }

    #endregion

    #region IDisposable

    public void Dispose()
    {
        if (Interlocked.Exchange(ref _disposed, 1) == 1)
            return;

        _channel.Writer.TryComplete();
        GC.SuppressFinalize(this);
    }

    #endregion
}
