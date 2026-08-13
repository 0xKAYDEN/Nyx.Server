using System;
using System.Collections.Generic;
using System.Reflection;
using System.Threading;
using System.Threading.Tasks;
using Dapper;
using Nyx.Server.Client;
using Serilog;

namespace Nyx.Server.Database.PostgreSQL;

/// <summary>
/// Repository for player entities in PostgreSQL.
/// Handles CRUD operations for the entities table.
/// Column names match the original MySQL schema.
/// Note: PostgreSQL doesn't support UInt32, so we cast to Int32 for all queries.
/// </summary>
public class EntityRepository : RepositoryBase
{
    public EntityRepository(PostgresConnectionFactory factory) : base(factory)
    {
    }

    #region Entity Operations

    /// <summary>
    /// Gets an entity by UID.
    /// </summary>
    //public async Task<EntityRecord?> GetByUidAsync(uint uid, CancellationToken ct = default)
    //{
    //    const string sql = """
    //        SELECT "UID" as Uid, "Name", "Body" as Mesh, "HairStyle" as Hairstyle, "Class", "Level", "Experience",
    //               "Strength", "Agility", "Vitality", "Spirit", "Atributes" as AttributePoints,
    //               "Hitpoints", "Mana", "PKPoints" as PkPoints, "MapID" as MapId, "X", "Y",
    //               "Money", "ConquerPoints", "VirtuePoints" as Virtue, "VIPLevel" as VipLevel,
    //               "Online" as IsOnline, "Nullifications", "DidBrightFortune", "StarterPackLevel", "WarehousePW"
    //        FROM entities 
    //        WHERE "UID" = @Uid
    //        """;

    //    return await QuerySingleOrDefaultAsync<EntityRecord>(sql, new { Uid = (int)uid }, ct);
    //}
    public async Task<EntityRecord?> GetByUidAsync(uint uid, CancellationToken ct = default)
    {
        const string sql = """
        SELECT 
            "UID" as UID,"Name","Body" as Mesh,"Face","HairStyle" as Hairstyle,"Class","Level"::INTEGER,"Strength"::INTEGER,"Agility"::INTEGER,"Vitality"::INTEGER,
            "Spirit"::INTEGER,"Atributes" as AttributePoints,"Hitpoints"::INTEGER,"Mana"::INTEGER,"MapID" as MapId,"X"::INTEGER,"Y"::INTEGER,"PreviousMapID"::INTEGER,"PreviousX"::INTEGER,"PreviousY"::INTEGER,"CountryID"::INTEGER,
            "Money","ConquerPoints","BoundCPs","NormalGems","MoneySave","WarehousePW"::INTEGER,"Experience","EnlightenPoints","EnlightsReceived",
            "EnlightmentWait"::INTEGER,"DoubleExpTime"::INTEGER,"DoubleExpToday"::INTEGER,"HeavenBlessingTime"::INTEGER,"BlessTime"::INTEGER,
            "ExpBalls"::INTEGER,"FirstRebornClass"::INTEGER,"SecondRebornClass"::INTEGER,"FirstRebornLevel"::INTEGER,"SecondRebornLevel"::INTEGER,"GuildID"::INTEGER,"GuildRank"::INTEGER,"GuildSilverDonation","GuildConquerPointDonation","GuildArsenalDonation"::INTEGER,"GuildLastLogin"::INTEGER,"UnionID"::INTEGER,"Harem"::INTEGER,"Offical"::INTEGER,"Guards"::INTEGER,
            "UnionExploits"::INTEGER,
            "ClanId"::INTEGER,
            "ClanRank"::INTEGER,
            "ClanDonation"::INTEGER,
            "Merchant"::INTEGER,
            "VIPLevel"::INTEGER as VipLevel,
            "DailySignVIPChances"::INTEGER,
            "DailySignRewards"::INTEGER,
            "DailySignedDays",
            "QuizPoints"::INTEGER,
            "VirtuePoints"::INTEGER as Virtue,
            "PKPoints"::INTEGER as PkPoints,
            "LotteryEntries"::INTEGER,
            "SubClass"::INTEGER,
            "SubClassLevel"::INTEGER,
            "StudyPoints"::INTEGER,
            "My_Title"::INTEGER,
            "EditNameTimes"::INTEGER,
            "Achievement",
            "BlackList",
            "SwordSoul"::INTEGER,
            "BansheeSpirit"::INTEGER,
            "DidBrightFortune"::INTEGER,
            "AnsweredKingdomQuiz"::INTEGER,
            "FirstCredit"::INTEGER,
            "StarterPackLevel"::INTEGER,
            "Nullifications"::INTEGER,
            "GLCTF"::INTEGER,
            "OnlineTrainning"::INTEGER,
            "HuntingExp"::INTEGER,
            "OfflineTGEnterTime"::INTEGER,
            "Online"::INTEGER,
            "Wardrobe",
            "TotalPerfectionScore"::INTEGER,
            "RacePoints"::INTEGER,
            "CTFCpsReward"::INTEGER,
            "CTFSilverReward"::INTEGER,
            "Exploits"::INTEGER,
            "LastDragonBallUse"::INTEGER,
            "LastResetTime"::INTEGER
        FROM entities
        WHERE "UID" = @Uid
        LIMIT 1;
        """;

        return await QuerySingleOrDefaultAsync<EntityRecord>(sql, new { Uid = (int)uid }, ct);
    }

    /// <summary>
    /// Gets an entity by name.
    /// </summary>
    public async Task<EntityRecord?> GetByNameAsync(string name, CancellationToken ct = default)
    {
        const string sql = """
            SELECT "UID" as UID, "Name", "Body" as Mesh, "HairStyle" as Hairstyle, "Class", "Level", "Experience",
                   "Strength", "Agility", "Vitality", "Spirit", "Atributes" as AttributePoints,
                   "Hitpoints", "Mana", "PKPoints" as PkPoints, "MapID" as MapId, "X", "Y",
                   "Money", "ConquerPoints", "VirtuePoints" as Virtue, "VIPLevel" as VipLevel,
                   "Online" as IsOnline
            FROM entities 
            WHERE LOWER("Name") = LOWER(@Name)
            """;
        
        return await QuerySingleOrDefaultAsync<EntityRecord>(sql, new { Name = name }, ct);
    }
    
    /// <summary>
    /// Gets all online entities.
    /// </summary>
    public async Task<IEnumerable<EntityRecord>> GetOnlineAsync(CancellationToken ct = default)
    {
        const string sql = """
            SELECT "UID" as UID, "Name", "Body" as Mesh, "HairStyle" as Hairstyle, "Class", "Level", "Experience",
                   "Strength", "Agility", "Vitality", "Spirit", "Atributes" as AttributePoints,
                   "Hitpoints", "Mana", "PKPoints" as PkPoints, "MapID" as MapId, "X", "Y",
                   "Money", "ConquerPoints", "VirtuePoints" as Virtue, "VIPLevel" as VipLevel,
                   "Online" as IsOnline
            FROM entities 
            WHERE "Online" = 1
            ORDER BY "Name"
            """;
        
        return await QueryAsync<EntityRecord>(sql, ct: ct);
    }
    
    /// <summary>
    /// Creates a new entity.
    /// </summary>
    public async Task<uint> CreateAsync(EntityRecord entity, CancellationToken ct = default)
    {
        const string sql = """
            INSERT INTO entities (
                "Name", "Owner", "Body", "HairStyle", "Class", "Level", "Experience",
                "Strength", "Agility", "Vitality", "Spirit", "Atributes",
                "Hitpoints", "Mana", "PKPoints", "MapID", "X", "Y",
                "Money", "ConquerPoints", "VirtuePoints", "VIPLevel",
                "Online", "UID"
            ) VALUES (
                @Name, @Owner, @Mesh, @Hairstyle, @Class, @Level, @Experience,
                @Strength, @Agility, @Vitality, @Spirit, @AttributePoints,
                @Hitpoints, @Mana, @PkPoints, @MapId, @X, @Y,
                @Money, @ConquerPoints, @Virtue, @VipLevel,
                @IsOnline, @Uid
            )
            RETURNING "UID"
            """;
        
        return (uint)await ExecuteScalarAsync<int>(sql, entity, ct);
    }
    
    /// <summary>
    /// Updates an existing entity.
    /// </summary>
    public async Task<int> UpdateAsync(EntityRecord entity, CancellationToken ct = default)
    {
        const string sql = """
            UPDATE entities SET
                "Name" = @Name,
                "Owner" = @Owner,
                "Body" = @Mesh,
                "HairStyle" = @Hairstyle,
                "Class" = @Class,
                "Level" = @Level,
                "Experience" = @Experience,
                "Strength" = @Strength,
                "Agility" = @Agility,
                "Vitality" = @Vitality,
                "Spirit" = @Spirit,
                "Atributes" = @AttributePoints,
                "Hitpoints" = @Hitpoints,
                "Mana" = @Mana,
                "PKPoints" = @PkPoints,
                "MapID" = @MapId,
                "X" = @X,
                "Y" = @Y,
                "Money" = @Money,
                "ConquerPoints" = @ConquerPoints,
                "VirtuePoints" = @Virtue,
                "VIPLevel" = @VipLevel,
                "Online" = @IsOnline
            WHERE "UID" = @Uid
            """;
        
        return await ExecuteAsync(sql, entity, ct);
    }
    
    /// <summary>
    /// Updates the online status of an entity.
    /// </summary>
    public async Task<int> UpdateOnlineStatusAsync(uint uid, bool isOnline, CancellationToken ct = default)
    {
        const string sql = """
            UPDATE entities SET
                "Online" = @IsOnline
            WHERE "UID" = @Uid
            """;
        
        return await ExecuteAsync(sql, new { Uid = (int)uid, IsOnline = isOnline ? 1 : 0 }, ct);
    }
    
    /// <summary>
    /// Deletes an entity.
    /// </summary>
    public async Task<int> DeleteAsync(uint uid, CancellationToken ct = default)
    {
        const string sql = """DELETE FROM entities WHERE "UID" = @Uid""";
        return await ExecuteAsync(sql, new { Uid = (int)uid }, ct);
    }
    
    /// <summary>
    /// Checks if an entity exists.
    /// </summary>
    public async Task<bool> ExistsAsync(uint uid, CancellationToken ct = default)
    {
        const string sql = """SELECT EXISTS(SELECT 1 FROM entities WHERE "UID" = @Uid)""";
        return await ExecuteScalarAsync<bool>(sql, new { Uid = (int)uid }, ct);
    }
    
    /// <summary>
    /// Checks if an entity name is taken.
    /// </summary>
    public async Task<bool> NameExistsAsync(string name, CancellationToken ct = default)
    {
        const string sql = """SELECT EXISTS(SELECT 1 FROM entities WHERE LOWER("Name") = LOWER(@Name))""";
        return await ExecuteScalarAsync<bool>(sql, new { Name = name }, ct);
    }
    
    /// <summary>
    /// Gets the next available entity UID.
    /// </summary>
    public async Task<uint> GetNextUidAsync(CancellationToken ct = default)
    {
        const string sql = """SELECT COALESCE(MAX("UID"), 1000000) + 1 FROM entities""";
        return (uint)await ExecuteScalarAsync<int>(sql, ct: ct);
    }
    
    /// <summary>
    /// Gets entity count.
    /// </summary>
    public async Task<long> GetCountAsync(CancellationToken ct = default)
    {
        const string sql = "SELECT COUNT(*) FROM entities";
        return await ExecuteScalarAsync<long>(sql, ct: ct);
    }
    
    /// <summary>
    /// Gets online entity count.
    /// </summary>
    public async Task<long> GetOnlineCountAsync(CancellationToken ct = default)
    {
        const string sql = """SELECT COUNT(*) FROM entities WHERE "Online" = 1""";
        return await ExecuteScalarAsync<long>(sql, ct: ct);
    }
    
    #endregion
}

/// <summary>
/// Entity record for database operations.
/// Property names are C# conventions; SQL maps to original MySQL column names.
/// </summary>
public class EntityRecord
{
    public string Name { get; set; } = string.Empty;
    public int Uid { get; set; }             // DB: UID (stored as int, cast to uint in code)
    public string Owner { get; set; } = string.Empty;  // DB: Owner (username as string)
    public int Hairstyle { get; set; }       // DB: HairStyle
    public int Class { get; set; }
    public long Money { get; set; }
    public long ConquerPoints { get; set; }
    public int Mesh { get; set; }            // DB: Body
    public int Face { get; set; }            // DB: DefaultFace
    public int Level { get; set; }
    public int Strength { get; set; }
    public int Agility { get; set; }
    public int Vitality { get; set; }
    public int Spirit { get; set; }
    public int AttributePoints { get; set; } // DB: Atributes
    public int Hitpoints { get; set; }
    public int Mana { get; set; }
    public int MapId { get; set; }           // DB: MapID
    public int X { get; set; }
    public int Y { get; set; }
    public int PkPoints { get; set; }        // DB: PKPoints
    public long Experience { get; set; }
    public long QuizPoints { get; set; }
    public int PreviousMapID { get; set; }
    public string Spouse { get; set; } = "";
    public int WarehousePW { get; set; }
    public int MoneySave { get; set; }
    public int FirstRebornClass { get; set; }
    public int SecondRebornClass { get; set; }
    public int FirstRebornLevel { get; set; }
    public int SecondRebornLevel { get; set; }
    public int IsOnline { get; set; }        // DB: Online
    public int EnlightenPoints { get; set; }        // DB: Online
    public int DoubleExpTime { get; set; }        // DB: Online
    public int HeavenBlessingTime { get; set; }        // DB: Online
    public int BlessTime { get; set; }        // DB: Online
    public long LastDragonBallUse { get; set; }        // DB: Online
    public long LastResetTime { get; set; }        // DB: Online
    public int EnlightsReceived { get; set; }        // DB: Online
    public int EnlightmentWait { get; set; }        // DB: Online
    public int DoubleExpToday { get; set; }        // DB: Online
    public int GuildID { get; set; }        // DB: Online
    public int GuildRank { get; set; }        // DB: Online
    public long GuildSilverDonation { get; set; }        // DB: Online
    public long GuildConquerPointDonation { get; set; }        // DB: Online
    public int VipLevel { get; set; }        // DB: VIPLevel
    public long Virtue { get; set; }         // DB: VirtuePoints
    public int LotteryEntries { get; set; }         // DB: VirtuePoints
    public int PreviousX { get; set; }         // DB: VirtuePoints
    public int PreviousY { get; set; }         // DB: VirtuePoints
    public long OfflineTGEnterTime { get; set; }         // DB: VirtuePoints
    public long ExpBalls { get; set; }         // DB: VirtuePoints
    public int ClanId { get; set; }         // DB: VirtuePoints
    public int ClanDonation { get; set; }         // DB: VirtuePoints
    public int ClanRank { get; set; }         // DB: VirtuePoints
    public int SubClass { get; set; }         // DB: VirtuePoints
    public int SubClassLevel { get; set; }         // DB: VirtuePoints
    public int StudyPoints { get; set; }         // DB: VirtuePoints
    public int My_Title { get; set; }         // DB: VirtuePoints
    public int EditNameTimes { get; set; }         // DB: VirtuePoints
    public int CountryID { get; set; }         // DB: VirtuePoints
    public string Achievement { get; set; }         // DB: VirtuePoints
    public int CTFCpsReward { get; set; }         // DB: VirtuePoints
    public int CTFSilverReward { get; set; }         // DB: VirtuePoints
    public int RacePoints { get; set; }         // DB: VirtuePoints
    public int BoundCPs { get; set; }         // DB: VirtuePoints
    public int GuildArsenalDonation { get; set; }         // DB: VirtuePoints
    public int GuildLastLogin { get; set; }         // DB: VirtuePoints
    public int ExtraInventory { get; set; }         // DB: VirtuePoints
    public int Exploits { get; set; }         // DB: VirtuePoints
    public int GLCTF { get; set; }         // DB: VirtuePoints
    public int OnlineTrainning { get; set; }         // DB: VirtuePoints
    public int HuntingExp { get; set; }         // DB: VirtuePoints
    public int FirstCredit { get; set; }         // DB: VirtuePoints
    public int AnsweredKingdomQuiz { get; set; }         // DB: VirtuePoints
    public int StarterPackLevel { get; set; }         // DB: VirtuePoints
    public int NormalGems { get; set; }         // DB: VirtuePoints
    public int UnionID { get; set; }         // DB: VirtuePoints
    public int Harem { get; set; }         // DB: VirtuePoints
    public int Offical { get; set; }         // DB: VirtuePoints
    public int Guards { get; set; }         // DB: VirtuePoints
    public int UnionExploits { get; set; }         // DB: VirtuePoints
    public int Merchant { get; set; }         // DB: VirtuePoints
    public int DidBrightFortune { get; set; }         // DB: VirtuePoints
    public int TotalPerfectionScore { get; set; }         // DB: VirtuePoints
    public string BlackList { get; set; }         // DB: VirtuePoints
    public string DailySignedDays { get; set; }         // DB: VirtuePoints
    public int DailySignRewards { get; set; }         // DB: VirtuePoints
    public string Wardrobe { get; set; }         // DB: VirtuePoints
    public int DailySignVIPChances { get; set; }         // DB: VirtuePoints
    public int SwordSoul { get; set; }         // DB: VirtuePoints
    public int BansheeSpirit { get; set; }         // DB: VirtuePoints
    public int Nullifications { get; set; }         // DB: VirtuePoints

}
