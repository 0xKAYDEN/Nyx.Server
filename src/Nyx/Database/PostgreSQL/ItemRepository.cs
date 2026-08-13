using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;
using Dapper;
using Serilog;

namespace Nyx.Server.Database.PostgreSQL;

/// <summary>
/// Repository for items in PostgreSQL.
/// Handles CRUD operations for the items table.
/// </summary>
public class ItemRepository : RepositoryBase
{
    public ItemRepository(PostgresConnectionFactory factory) : base(factory)
    {
    }
    
    #region Item Operations
    
    /// <summary>
    /// Gets all items for an entity.
    /// </summary>
    public async Task<IEnumerable<ItemRecord>> GetByEntityUidAsync(uint entityUid, CancellationToken ct = default)
    {
        const string sql = """
            SELECT uid, entity_uid, item_id, plus, bless, enchant,
                   socket_one, socket_two, durability, max_durability,
                   bound, locked, color, stack_size, effect_type,
                   effect_value, created_at, updated_at
            FROM items 
            WHERE entity_uid = @EntityUid
            ORDER BY uid
            """;
        
        return await QueryAsync<ItemRecord>(sql, new { EntityUid = entityUid }, ct);
    }
    
    /// <summary>
    /// Gets a single item by UID.
    /// </summary>
    public async Task<ItemRecord?> GetByUidAsync(uint uid, CancellationToken ct = default)
    {
        const string sql = """
            SELECT uid, entity_uid, item_id, plus, bless, enchant,
                   socket_one, socket_two, durability, max_durability,
                   bound, locked, color, stack_size, effect_type,
                   effect_value, created_at, updated_at
            FROM items 
            WHERE uid = @Uid
            """;
        
        return await QuerySingleOrDefaultAsync<ItemRecord>(sql, new { Uid = uid }, ct);
    }
    
    /// <summary>
    /// Creates a new item.
    /// </summary>
    public async Task<uint> CreateAsync(ItemRecord item, CancellationToken ct = default)
    {
        const string sql = """
            INSERT INTO items (
                entity_uid, item_id, plus, bless, enchant,
                socket_one, socket_two, durability, max_durability,
                bound, locked, color, stack_size, effect_type,
                effect_value, created_at, updated_at
            ) VALUES (
                @EntityUid, @ItemId, @Plus, @Bless, @Enchant,
                @SocketOne, @SocketTwo, @Durability, @MaxDurability,
                @Bound, @Locked, @Color, @StackSize, @EffectType,
                @EffectValue, @CreatedAt, @UpdatedAt
            )
            RETURNING uid
            """;
        
        return await ExecuteScalarAsync<uint>(sql, item, ct);
    }
    
    /// <summary>
    /// Updates an existing item.
    /// </summary>
    public async Task<int> UpdateAsync(ItemRecord item, CancellationToken ct = default)
    {
        const string sql = """
            UPDATE items SET
                entity_uid = @EntityUid,
                item_id = @ItemId,
                plus = @Plus,
                bless = @Bless,
                enchant = @Enchant,
                socket_one = @SocketOne,
                socket_two = @SocketTwo,
                durability = @Durability,
                max_durability = @MaxDurability,
                bound = @Bound,
                locked = @Locked,
                color = @Color,
                stack_size = @StackSize,
                effect_type = @EffectType,
                effect_value = @EffectValue,
                updated_at = @UpdatedAt
            WHERE uid = @Uid
            """;
        
        return await ExecuteAsync(sql, item, ct);
    }
    
    /// <summary>
    /// Deletes an item.
    /// </summary>
    public async Task<int> DeleteAsync(uint uid, CancellationToken ct = default)
    {
        const string sql = "DELETE FROM items WHERE uid = @Uid";
        return await ExecuteAsync(sql, new { Uid = uid }, ct);
    }
    
    /// <summary>
    /// Deletes all items for an entity.
    /// </summary>
    public async Task<int> DeleteByEntityUidAsync(uint entityUid, CancellationToken ct = default)
    {
        const string sql = "DELETE FROM items WHERE entity_uid = @EntityUid";
        return await ExecuteAsync(sql, new { EntityUid = entityUid }, ct);
    }
    
    /// <summary>
    /// Gets the next available item UID.
    /// </summary>
    public async Task<uint> GetNextUidAsync(CancellationToken ct = default)
    {
        const string sql = "SELECT COALESCE(MAX(uid), 1) + 1 FROM items";
        return await ExecuteScalarAsync<uint>(sql, ct: ct);
    }
    
    /// <summary>
    /// Gets item count for an entity.
    /// </summary>
    public async Task<long> GetCountByEntityUidAsync(uint entityUid, CancellationToken ct = default)
    {
        const string sql = "SELECT COUNT(*) FROM items WHERE entity_uid = @EntityUid";
        return await ExecuteScalarAsync<long>(sql, new { EntityUid = entityUid }, ct);
    }
    
    /// <summary>
    /// Bulk updates items for an entity.
    /// </summary>
    public async Task<int> BulkUpdateAsync(IEnumerable<ItemRecord> items, CancellationToken ct = default)
    {
        const string sql = """
            UPDATE items SET
                entity_uid = @EntityUid,
                item_id = @ItemId,
                plus = @Plus,
                bless = @Bless,
                enchant = @Enchant,
                socket_one = @SocketOne,
                socket_two = @SocketTwo,
                durability = @Durability,
                max_durability = @MaxDurability,
                bound = @Bound,
                locked = @Locked,
                color = @Color,
                stack_size = @StackSize,
                effect_type = @EffectType,
                effect_value = @EffectValue,
                updated_at = @UpdatedAt
            WHERE uid = @Uid
            """;
        
        return await ExecuteMultipleAsync(sql, items, ct);
    }
    
    #endregion
}

/// <summary>
/// Item record for database operations.
/// </summary>
public class ItemRecord
{
    public uint UID { get; set; }
    public uint EntityUid { get; set; }
    public uint ItemId { get; set; }
    public ushort Durability { get; set; }
    public ushort MaximDurability { get; set; } // For compatibility with ConquerItem
    public byte Plus { get; set; }
    public byte Bless { get; set; }
    public byte Enchant { get; set; }
    public ushort StackSize { get; set; } = 1;
    public ushort MaxStackSize { get; set; } = 1;
    public bool Bound { get; set; }
    public byte Color { get; set; }
    public byte SocketOne { get; set; }
    public byte SocketTwo { get; set; }
    public uint TimeLeftInMinutes { get; set; }
    public DateTime? TimeStamp { get; set; }
    public ulong Minutes { get; set; } // ConquerItem property
    public byte Stars { get; set; }
    public uint OwnerUID { get; set; }
    public string Owner { get; set; }
    public string Signature { get; set; }
    public ushort Position { get; set; }
    public bool InWardrobe { get; set; }
    public bool MobDropped { get; set; }
    public bool StatsLoaded { get; set; }
    public bool Suspicious { get; set; }
    public bool Unlocking { get; set; }
    public bool Inscribed { get; set; }
    public uint SocketProgress { get; set; }
    public uint PerfectionProgress { get; set; }
    public uint PlusProgress { get; set; }
    public byte Lock { get; set; }
    public DateTime SuspiciousStart { get; set; }
    public DateTime UnlockEnd { get; set; }
    public ulong suspiciousStart { get; set; }
    public ulong unlockEnd { get; set; }
    public uint RefineItem { get; set; }
    public DateTime RefineryTime { get; set; }
    public byte NextRed { get; set; }
    public byte NextBlue { get; set; }
    public byte NextGreen { get; set; }
    public ushort Vigor { get; set; }
    public short BattlePower { get; set; }

    // Integrity hash of this item's immutable/core state
    public string Hash { get; private set; }
    public ushort MaxDurability { get; set; }
    public bool Locked { get; set; }
    public byte EffectType { get; set; }
    public uint EffectValue { get; set; }
    public DateTime CreatedAt { get; set; }
    public DateTime UpdatedAt { get; set; }
}
