namespace Nyx.Database.Queries;

public static class ConfigQueries
{
    // Same important query shape shown in the supplied C++ routine.
    public const string SelectByType =
        "SELECT * FROM cq_config WHERE type = @type LIMIT 1";

    public const string SelectAllByType =
        "SELECT * FROM cq_config WHERE type = @type";
}
