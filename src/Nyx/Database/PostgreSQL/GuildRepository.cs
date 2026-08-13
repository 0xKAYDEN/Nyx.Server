using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;
using Dapper;
using Serilog;

namespace Nyx.Server.Database.PostgreSQL;

/// <summary>
/// Repository for guilds in PostgreSQL.
/// Handles CRUD operations for the guilds and guild_members tables.
/// </summary>
public class GuildRepository : RepositoryBase
{
    public GuildRepository(PostgresConnectionFactory factory) : base(factory)
    {
    }
    
    #region Guild Operations
    
    /// <summary>
    /// Gets a guild by UID.
    /// </summary>
    public async Task<GuildRecord?> GetByUidAsync(uint uid, CancellationToken ct = default)
    {
        const string sql = """
            SELECT uid, name, leader_uid, leader_name, fund, level, emblem,
                   members_count, max_members, announce, created_at, updated_at
            FROM guilds 
            WHERE uid = @Uid
            """;
        
        return await QuerySingleOrDefaultAsync<GuildRecord>(sql, new { Uid = uid }, ct);
    }
    
    /// <summary>
    /// Gets a guild by name.
    /// </summary>
    public async Task<GuildRecord?> GetByNameAsync(string name, CancellationToken ct = default)
    {
        const string sql = """
            SELECT uid, name, leader_uid, leader_name, fund, level, emblem,
                   members_count, max_members, announce, created_at, updated_at
            FROM guilds 
            WHERE LOWER(name) = LOWER(@Name)
            """;
        
        return await QuerySingleOrDefaultAsync<GuildRecord>(sql, new { Name = name }, ct);
    }
    
    /// <summary>
    /// Gets all guilds.
    /// </summary>
    public async Task<IEnumerable<GuildRecord>> GetAllAsync(CancellationToken ct = default)
    {
        const string sql = """
            SELECT uid, name, leader_uid, leader_name, fund, level, emblem,
                   members_count, max_members, announce, created_at, updated_at
            FROM guilds 
            ORDER BY level DESC, fund DESC
            """;
        
        return await QueryAsync<GuildRecord>(sql, ct: ct);
    }
    
    /// <summary>
    /// Creates a new guild.
    /// </summary>
    public async Task<uint> CreateAsync(GuildRecord guild, CancellationToken ct = default)
    {
        const string sql = """
            INSERT INTO guilds (
                name, leader_uid, leader_name, fund, level, emblem,
                members_count, max_members, announce, created_at, updated_at
            ) VALUES (
                @Name, @LeaderUid, @LeaderName, @Fund, @Level, @Emblem,
                @MembersCount, @MaxMembers, @Announce, @CreatedAt, @UpdatedAt
            )
            RETURNING uid
            """;
        
        return await ExecuteScalarAsync<uint>(sql, guild, ct);
    }
    
    /// <summary>
    /// Updates an existing guild.
    /// </summary>
    public async Task<int> UpdateAsync(GuildRecord guild, CancellationToken ct = default)
    {
        const string sql = """
            UPDATE guilds SET
                name = @Name,
                leader_uid = @LeaderUid,
                leader_name = @LeaderName,
                fund = @Fund,
                level = @Level,
                emblem = @Emblem,
                members_count = @MembersCount,
                max_members = @MaxMembers,
                announce = @Announce,
                updated_at = @UpdatedAt
            WHERE uid = @Uid
            """;
        
        return await ExecuteAsync(sql, guild, ct);
    }
    
    /// <summary>
    /// Deletes a guild.
    /// </summary>
    public async Task<int> DeleteAsync(uint uid, CancellationToken ct = default)
    {
        const string sql = "DELETE FROM guilds WHERE uid = @Uid";
        return await ExecuteAsync(sql, new { Uid = uid }, ct);
    }
    
    /// <summary>
    /// Checks if a guild exists.
    /// </summary>
    public async Task<bool> ExistsAsync(uint uid, CancellationToken ct = default)
    {
        const string sql = "SELECT EXISTS(SELECT 1 FROM guilds WHERE uid = @Uid)";
        return await ExecuteScalarAsync<bool>(sql, new { Uid = uid }, ct);
    }
    
    /// <summary>
    /// Checks if a guild name is taken.
    /// </summary>
    public async Task<bool> NameExistsAsync(string name, CancellationToken ct = default)
    {
        const string sql = "SELECT EXISTS(SELECT 1 FROM guilds WHERE LOWER(name) = LOWER(@Name))";
        return await ExecuteScalarAsync<bool>(sql, new { Name = name }, ct);
    }
    
    /// <summary>
    /// Gets the next available guild UID.
    /// </summary>
    public async Task<uint> GetNextUidAsync(CancellationToken ct = default)
    {
        const string sql = "SELECT COALESCE(MAX(uid), 1) + 1 FROM guilds";
        return await ExecuteScalarAsync<uint>(sql, ct: ct);
    }
    
    /// <summary>
    /// Gets guild count.
    /// </summary>
    public async Task<long> GetCountAsync(CancellationToken ct = default)
    {
        const string sql = "SELECT COUNT(*) FROM guilds";
        return await ExecuteScalarAsync<long>(sql, ct: ct);
    }
    
    #endregion
    
    #region Guild Member Operations
    
    /// <summary>
    /// Gets all members of a guild.
    /// </summary>
    public async Task<IEnumerable<GuildMemberRecord>> GetMembersAsync(uint guildUid, CancellationToken ct = default)
    {
        const string sql = """
            SELECT uid, guild_uid, entity_uid, rank, title, donation, joined_at
            FROM guild_members 
            WHERE guild_uid = @GuildUid
            ORDER BY rank, joined_at
            """;
        
        return await QueryAsync<GuildMemberRecord>(sql, new { GuildUid = guildUid }, ct);
    }
    
    /// <summary>
    /// Gets a specific guild member.
    /// </summary>
    public async Task<GuildMemberRecord?> GetMemberAsync(uint guildUid, uint entityUid, CancellationToken ct = default)
    {
        const string sql = """
            SELECT uid, guild_uid, entity_uid, rank, title, donation, joined_at
            FROM guild_members 
            WHERE guild_uid = @GuildUid AND entity_uid = @EntityUid
            """;
        
        return await QuerySingleOrDefaultAsync<GuildMemberRecord>(sql, new { GuildUid = guildUid, EntityUid = entityUid }, ct);
    }
    
    /// <summary>
    /// Adds a member to a guild.
    /// </summary>
    public async Task<uint> AddMemberAsync(GuildMemberRecord member, CancellationToken ct = default)
    {
        const string sql = """
            INSERT INTO guild_members (
                guild_uid, entity_uid, rank, title, donation, joined_at
            ) VALUES (
                @GuildUid, @EntityUid, @Rank, @Title, @Donation, @JoinedAt
            )
            RETURNING uid
            """;
        
        return await ExecuteScalarAsync<uint>(sql, member, ct);
    }
    
    /// <summary>
    /// Updates a guild member.
    /// </summary>
    public async Task<int> UpdateMemberAsync(GuildMemberRecord member, CancellationToken ct = default)
    {
        const string sql = """
            UPDATE guild_members SET
                rank = @Rank,
                title = @Title,
                donation = @Donation
            WHERE guild_uid = @GuildUid AND entity_uid = @EntityUid
            """;
        
        return await ExecuteAsync(sql, member, ct);
    }
    
    /// <summary>
    /// Removes a member from a guild.
    /// </summary>
    public async Task<int> RemoveMemberAsync(uint guildUid, uint entityUid, CancellationToken ct = default)
    {
        const string sql = "DELETE FROM guild_members WHERE guild_uid = @GuildUid AND entity_uid = @EntityUid";
        return await ExecuteAsync(sql, new { GuildUid = guildUid, EntityUid = entityUid }, ct);
    }
    
    /// <summary>
    /// Gets the member count of a guild.
    /// </summary>
    public async Task<long> GetMemberCountAsync(uint guildUid, CancellationToken ct = default)
    {
        const string sql = "SELECT COUNT(*) FROM guild_members WHERE guild_uid = @GuildUid";
        return await ExecuteScalarAsync<long>(sql, new { GuildUid = guildUid }, ct);
    }
    
    /// <summary>
    /// Checks if an entity is a member of a guild.
    /// </summary>
    public async Task<bool> IsMemberAsync(uint guildUid, uint entityUid, CancellationToken ct = default)
    {
        const string sql = "SELECT EXISTS(SELECT 1 FROM guild_members WHERE guild_uid = @GuildUid AND entity_uid = @EntityUid)";
        return await ExecuteScalarAsync<bool>(sql, new { GuildUid = guildUid, EntityUid = entityUid }, ct);
    }
    
    /// <summary>
    /// Gets the guild of an entity.
    /// </summary>
    public async Task<GuildRecord?> GetGuildByEntityUidAsync(uint entityUid, CancellationToken ct = default)
    {
        const string sql = """
            SELECT g.uid, g.name, g.leader_uid, g.leader_name, g.fund, g.level, g.emblem,
                   g.members_count, g.max_members, g.announce, g.created_at, g.updated_at
            FROM guilds g
            INNER JOIN guild_members gm ON g.uid = gm.guild_uid
            WHERE gm.entity_uid = @EntityUid
            """;
        
        return await QuerySingleOrDefaultAsync<GuildRecord>(sql, new { EntityUid = entityUid }, ct);
    }
    
    #endregion
}

/// <summary>
/// Guild record for database operations.
/// </summary>
public class GuildRecord
{
    public uint Uid { get; set; }
    public string Name { get; set; } = string.Empty;
    public uint? LeaderUid { get; set; }
    public string? LeaderName { get; set; }
    public uint Fund { get; set; }
    public int Level { get; set; }
    public int Emblem { get; set; }
    public int MembersCount { get; set; }
    public int MaxMembers { get; set; }
    public string? Announce { get; set; }
    public DateTime CreatedAt { get; set; }
    public DateTime UpdatedAt { get; set; }
}

/// <summary>
/// Guild member record for database operations.
/// </summary>
public class GuildMemberRecord
{
    public uint Uid { get; set; }
    public uint GuildUid { get; set; }
    public uint EntityUid { get; set; }
    public int Rank { get; set; }
    public string? Title { get; set; }
    public uint Donation { get; set; }
    public DateTime JoinedAt { get; set; }
}
