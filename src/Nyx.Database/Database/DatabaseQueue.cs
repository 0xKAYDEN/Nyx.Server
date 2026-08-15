using System.Threading.Channels;
using MySqlConnector;

namespace Nyx.Database.Database;

public sealed class DatabaseQueue : IAsyncDisposable
{
    private readonly Channel<WorkItem> _queue;
    private readonly DatabaseConnection _database;
    private readonly Task[] _workers;
    private int _disposed;

    public DatabaseQueue(
        DatabaseConnection database,
        int capacity = 4096,
        int workers = 1)
    {
        if (capacity <= 0) throw new ArgumentOutOfRangeException(nameof(capacity));
        if (workers <= 0) throw new ArgumentOutOfRangeException(nameof(workers));

        _database = database;

        _queue = Channel.CreateBounded<WorkItem>(
            new BoundedChannelOptions(capacity)
            {
                FullMode = BoundedChannelFullMode.Wait,
                SingleWriter = false,
                SingleReader = workers == 1,
                AllowSynchronousContinuations = false
            });

        _workers = new Task[workers];

        for (int i = 0; i < workers; i++)
            _workers[i] = WorkerAsync();
    }

    public ValueTask EnqueueAsync(
        string sql,
        CancellationToken cancellationToken = default,
        params MySqlParameter[] parameters)
    {
        if (Volatile.Read(ref _disposed) != 0)
            throw new ObjectDisposedException(nameof(DatabaseQueue));

        return _queue.Writer.WriteAsync(
            new WorkItem(sql, parameters),
            cancellationToken);
    }

    private async Task WorkerAsync()
    {
        await foreach (var item in _queue.Reader.ReadAllAsync())
        {
            try
            {
                await using var connection =
                    await _database.OpenAsync().ConfigureAwait(false);

                await using var command = connection.CreateCommand();
                command.CommandText = item.Sql;
                command.CommandTimeout = (int)_database.Options.CommandTimeout;

                if (item.Parameters.Length != 0)
                    command.Parameters.AddRange(item.Parameters);

                await command.ExecuteNonQueryAsync().ConfigureAwait(false);
            }
            catch (Exception ex)
            {
                Console.Error.WriteLine(
                    $"Database queue query failed: {ex.Message}");
            }
        }
    }

    public async ValueTask DisposeAsync()
    {
        if (Interlocked.Exchange(ref _disposed, 1) != 0)
            return;

        _queue.Writer.TryComplete();
        await Task.WhenAll(_workers).ConfigureAwait(false);
    }

    private readonly record struct WorkItem(
        string Sql,
        MySqlParameter[] Parameters);
}
