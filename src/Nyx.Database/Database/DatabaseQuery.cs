using MySqlConnector;

namespace Nyx.Database.Database;

public sealed class DatabaseQuery
{
    private readonly DatabaseContext _context;

    internal DatabaseQuery(DatabaseContext context) => _context = context;

    public ValueTask<DatabaseResult> ReaderAsync(
        string sql,
        CancellationToken cancellationToken = default,
        params MySqlParameter[] parameters) =>
        _context.ReaderAsync(sql, cancellationToken, parameters);

    public ValueTask<int> ExecuteAsync(
        string sql,
        CancellationToken cancellationToken = default,
        params MySqlParameter[] parameters) =>
        _context.ExecuteAsync(sql, cancellationToken, parameters);

    public ValueTask<object?> ScalarAsync(
        string sql,
        CancellationToken cancellationToken = default,
        params MySqlParameter[] parameters) =>
        _context.ExecuteScalarAsync(sql, cancellationToken, parameters);
}
