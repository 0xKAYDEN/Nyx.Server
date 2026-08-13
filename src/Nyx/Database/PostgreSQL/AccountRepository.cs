using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;
using Dapper;
using Serilog;

namespace Nyx.Server.Database.PostgreSQL;

/// <summary>
/// Repository for accounts in PostgreSQL.
/// Column names match the original MySQL schema.
/// </summary>
public class AccountRepository : RepositoryBase
{
    public AccountRepository(PostgresConnectionFactory factory) : base(factory)
    {
    }
    
    #region Account Operations
    
    /// <summary>
    /// Gets an account by EntityID.
    /// </summary>
    public async Task<AccountRecord?> GetByUidAsync(uint uid, CancellationToken ct = default)
    {
        const string sql = """
            SELECT "Username", "Password", "Email", "EntityID", "IP", "State",
                   "MobileNumber", "HDSerial", "PhoneNumber", "securitycode"
            FROM accounts 
            WHERE "EntityID" = @Uid
            """;
        
        return await QuerySingleOrDefaultAsync<AccountRecord>(sql, new { Uid = (int)uid }, ct);
    }
    
    /// <summary>
    /// Gets an account by username.
    /// </summary>
    public async Task<AccountRecord?> GetByUsernameAsync(string username, CancellationToken ct = default)
    {
        const string sql = """
            SELECT "Username", "Password", "Email", "EntityID", "IP", "State",
                   "MobileNumber", "HDSerial", "PhoneNumber", "securitycode"
            FROM accounts 
            WHERE LOWER("Username") = LOWER(@Username)
            """;
        
        return await QuerySingleOrDefaultAsync<AccountRecord>(sql, new { Username = username }, ct);
    }
    
    /// <summary>
    /// Creates a new account.
    /// </summary>
    public async Task<uint> CreateAsync(AccountRecord account, CancellationToken ct = default)
    {
        const string sql = """
            INSERT INTO accounts (
                "Username", "Password", "Email", "EntityID", "IP", "State",
                "MobileNumber", "HDSerial", "PhoneNumber", "securitycode"
            ) VALUES (
                @Username, @Password, @Email, @EntityId, @Ip, @State,
                @MobileNumber, @HDSerial, @PhoneNumber, @SecurityCode
            )
            RETURNING "EntityID"
            """;
        
        return await ExecuteScalarAsync<uint>(sql, account, ct);
    }
    
    /// <summary>
    /// Updates an existing account.
    /// </summary>
    public async Task<int> UpdateAsync(AccountRecord account, CancellationToken ct = default)
    {
        const string sql = """
            UPDATE accounts SET
                "Username" = @Username,
                "IP" = @Ip,
                "EntityID" = @EntityId,
                "MacAddress" = @Macaddress
            WHERE "Username" = @Username
            """;
        
        return await ExecuteAsync(sql, account, ct);
    }
    
    /// <summary>
    /// Updates the IP address of an account.
    /// </summary>
    public async Task<int> UpdateIpAsync(uint uid, string ip, CancellationToken ct = default)
    {
        const string sql = """
            UPDATE accounts SET
                "IP" = @Ip
            WHERE "EntityID" = @Uid
            """;
        
        return await ExecuteAsync(sql, new { Uid = (int)uid, Ip = ip }, ct);
    }
    
    /// <summary>
    /// Deletes an account.
    /// </summary>
    public async Task<int> DeleteAsync(uint uid, CancellationToken ct = default)
    {
        const string sql = """DELETE FROM accounts WHERE "EntityID" = @Uid""";
        return await ExecuteAsync(sql, new { Uid = (int)uid }, ct);
    }
    
    /// <summary>
    /// Checks if an account exists.
    /// </summary>
    public async Task<bool> ExistsAsync(uint uid, CancellationToken ct = default)
    {
        const string sql = """SELECT EXISTS(SELECT 1 FROM accounts WHERE "EntityID" = @Uid)""";
        return await ExecuteScalarAsync<bool>(sql, new { Uid = (int)uid }, ct);
    }
    
    /// <summary>
    /// Checks if a username is taken.
    /// </summary>
    public async Task<bool> UsernameExistsAsync(string username, CancellationToken ct = default)
    {
        const string sql = """SELECT EXISTS(SELECT 1 FROM accounts WHERE LOWER("Username") = LOWER(@Username))""";
        return await ExecuteScalarAsync<bool>(sql, new { Username = username }, ct);
    }
    
    /// <summary>
    /// Gets account count.
    /// </summary>
    public async Task<long> GetCountAsync(CancellationToken ct = default)
    {
        const string sql = "SELECT COUNT(*) FROM accounts";
        return await ExecuteScalarAsync<long>(sql, ct: ct);
    }
    
    /// <summary>
    /// Gets all accounts.
    /// </summary>
    public async Task<IEnumerable<AccountRecord>> GetAllAsync(CancellationToken ct = default)
    {
        const string sql = """
            SELECT "Username", "Password", "Email", "EntityID", "IP", "State",
                   "MobileNumber", "HDSerial", "PhoneNumber", "securitycode"
            FROM accounts 
            ORDER BY "EntityID"
            """;
        
        return await QueryAsync<AccountRecord>(sql, ct: ct);
    }
    
    #endregion
}

/// <summary>
/// Account record for database operations.
/// </summary>
public class AccountRecord
{
    public string Username { get; set; } = string.Empty;
    public string Password { get; set; } = string.Empty;
    public string? Email { get; set; }
    public uint? EntityId { get; set; }  // DB: EntityID
    public string? Ip { get; set; }      // DB: IP
    public int State { get; set; }
    public string? MobileNumber { get; set; }
    public string? HDSerial { get; set; }
    public string? PhoneNumber { get; set; }
    public string? SecurityCode { get; set; }  // DB: securitycode
    
    // Non-mapped properties used by AccountTable.cs
    public string? MacAddress { get; set; }
    public DateTime CreatedAt { get; set; }
    public DateTime UpdatedAt { get; set; }
}
