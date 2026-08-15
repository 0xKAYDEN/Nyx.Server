using MySqlConnector;

namespace Nyx.Database.Database;

public sealed class DatabaseResult : IDisposable, IAsyncDisposable
{
    private MySqlConnection? _connection;
    private MySqlCommand? _command;
    private MySqlDataReader? _reader;

    internal DatabaseResult(
        MySqlConnection connection,
        MySqlCommand command,
        MySqlDataReader reader)
    {
        _connection = connection;
        _command = command;
        _reader = reader;
    }

    private MySqlDataReader Reader =>
        _reader ?? throw new ObjectDisposedException(nameof(DatabaseResult));

    public int FieldCount => Reader.FieldCount;
    public bool Next() => Reader.Read();
    public async ValueTask<bool> NextAsync(CancellationToken ct = default) =>
        await Reader.ReadAsync(ct).ConfigureAwait(false);

    public string GetName(int ordinal) => Reader.GetName(ordinal);
    public int GetOrdinal(string name) => Reader.GetOrdinal(name);
    public bool IsDBNull(int ordinal) => Reader.IsDBNull(ordinal);
    public object GetValue(int ordinal) => Reader.GetValue(ordinal);

    public int GetInt32(int i) => Reader.GetInt32(i);
    public uint GetUInt32(int i) => Reader.GetFieldValue<uint>(i);
    public long GetInt64(int i) => Reader.GetInt64(i);
    public ulong GetUInt64(int i) => Reader.GetFieldValue<ulong>(i);
    public short GetInt16(int i) => Reader.GetInt16(i);
    public ushort GetUInt16(int i) => Reader.GetFieldValue<ushort>(i);
    public byte GetByte(int i) => Reader.GetByte(i);
    public bool GetBoolean(int i) => Reader.GetBoolean(i);
    public float GetFloat(int i) => Reader.GetFloat(i);
    public double GetDouble(int i) => Reader.GetDouble(i);
    public decimal GetDecimal(int i) => Reader.GetDecimal(i);
    public string GetString(int i) => Reader.GetString(i);
    public DateTime GetDateTime(int i) => Reader.GetDateTime(i);
    public Guid GetGuid(int i) => Reader.GetGuid(i);
    public byte[] GetBytes(int i) => (byte[])Reader.GetValue(i);

    public void Dispose()
    {
        var reader = Interlocked.Exchange(ref _reader, null);
        var command = Interlocked.Exchange(ref _command, null);
        var connection = Interlocked.Exchange(ref _connection, null);

        reader?.Dispose();
        command?.Dispose();
        connection?.Dispose();
    }

    public async ValueTask DisposeAsync()
    {
        var reader = Interlocked.Exchange(ref _reader, null);
        var command = Interlocked.Exchange(ref _command, null);
        var connection = Interlocked.Exchange(ref _connection, null);

        if (reader is not null)
            await reader.DisposeAsync().ConfigureAwait(false);

        command?.Dispose();

        if (connection is not null)
            await connection.DisposeAsync().ConfigureAwait(false);
    }
}
