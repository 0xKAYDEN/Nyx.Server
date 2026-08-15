namespace Nyx.Database.Queries;

public static class AccountQueries
{
    public const string SelectByUsername =
        "SELECT AccountID, Username, Password, Email, IP, LastCheck, State, EntityID " +
        "FROM account WHERE Username = @username LIMIT 1";

    public const string Insert =
        "INSERT INTO account " +
        "(Username, Password, Email, IP, LastCheck, State, EntityID) " +
        "VALUES (@username, @password, @email, @ip, @lastCheck, @state, @entityId)";

    public const string UpdateState =
        "UPDATE account SET State = @state " +
        "WHERE AccountID = @accountId LIMIT 1";
}
