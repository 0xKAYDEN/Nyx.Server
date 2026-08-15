namespace Nyx.Database.Database;

public sealed class CoreDatabase
{
    private static readonly Lazy<CoreDatabase> InstanceHolder =
        new(() => new CoreDatabase(),
            LazyThreadSafetyMode.ExecutionAndPublication);

    private DatabaseConnection? _connection;
    private DatabaseContext? _context;
    private DatabaseQuery? _query;

    private CoreDatabase() { }

    public static CoreDatabase Instance => InstanceHolder.Value;

    public void Initialize(DatabaseOptions options)
    {
        if (_connection is not null)
            return;

        _connection = new DatabaseConnection(options);
        _context = new DatabaseContext(_connection);
        _query = new DatabaseQuery(_context);
    }

    public DatabaseConnection Connection =>
        _connection ?? throw new InvalidOperationException(
            "Call Database.Instance.Initialize(options) first.");

    public DatabaseContext Context =>
        _context ?? throw new InvalidOperationException(
            "Call Database.Instance.Initialize(options) first.");

    public DatabaseQuery Query =>
        _query ?? throw new InvalidOperationException(
            "Call Database.Instance.Initialize(options) first.");
}
