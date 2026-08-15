using Nyx.Database.Database;
using Nyx.Database.Models;

namespace Nyx.Database.Mapping;

public static class AccountMapper
{
    // Ordinals MUST match AccountQueries.SelectByUsername.
    public static Account Read(DatabaseResult row) => new()
    {
        AccountId = row.GetUInt64(0),
        Username = row.GetString(1),
        Password = row.GetString(2),
        Email = row.IsDBNull(3) ? "" : row.GetString(3),
        IP = row.IsDBNull(4) ? "" : row.GetString(4),
        LastCheck = row.IsDBNull(5) ? null : row.GetDateTime(5),
        State = row.GetInt32(6),
        EntityId = row.GetUInt64(7)
    };
}
