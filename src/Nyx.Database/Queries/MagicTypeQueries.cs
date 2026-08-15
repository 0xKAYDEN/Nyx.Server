
namespace Nyx.Database.Queries;

public static  class MagicTypeQueries
{
    public const string LoadMagicTypeAsync =
        "SELECT * FROM cq_magictype LIMIT 1000";

    public const string GetMagicTypeByIdAsync =
        "SELECT * FROM cq_magictype WHERE id = @id LIMIT 1";

    public const string GetMagicTypeByNameAsync =
        "SELECT * FROM cq_magictype WHERE name = @name LIMIT 1";

    public const string GetMagicTypeByTypeAsync =
        "SELECT * FROM cq_magictype WHERE type = @type LIMIT 1";
}
