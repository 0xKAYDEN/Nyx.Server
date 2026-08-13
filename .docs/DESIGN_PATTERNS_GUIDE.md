# Nyx Server - Design Patterns Implementation Guide

**Date:** 2026-06-27  
**Purpose:** Complete design patterns reference for the Nyx server modernization

---

## Table of Contents

1. [Creational Patterns](#1-creational-patterns)
2. [Structural Patterns](#2-structural-patterns)
3. [Behavioral Patterns](#3-behavioral-patterns)
4. [Architectural Patterns](#4-architectural-patterns)
5. [Concurrency Patterns](#5-concurrency-patterns)
6. [Game-Specific Patterns](#6-game-specific-patterns)
7. [Pattern Application Matrix](#7-pattern-application-matrix)

---

## 1. Creational Patterns

### 1.1 Object Pool Pattern

**Where:** Packet buffers, task objects, network sessions  
**Why:** Reduce GC pressure from high-frequency allocations  
**Replaces:** Manual `ArrayPool` usage scattered everywhere

```csharp
/// <summary>
/// Generic object pool with lazy initialization and automatic cleanup.
/// Replaces scattered ArrayPool.Rent/Return calls.
/// </summary>
public sealed class ObjectPool<T> where T : class
{
    private readonly ConcurrentBag<T> _objects;
    private readonly Func<T> _factory;
    private readonly Action<T>? _reset;
    private readonly int _maxSize;
    private int _count;

    public ObjectPool(Func<T> factory, Action<T>? reset = null, int maxSize = 10000)
    {
        _factory = factory ?? throw new ArgumentNullException(nameof(factory));
        _reset = reset;
        _maxSize = maxSize;
        _objects = new ConcurrentBag<T>();
    }

    public T Rent()
    {
        if (_objects.TryTake(out var item))
        {
            Interlocked.Decrement(ref _count);
            return item;
        }
        return _factory();
    }

    public void Return(T item)
    {
        _reset?.Invoke(item);
        
        if (Interlocked.Increment(ref _count) <= _maxSize)
        {
            _objects.Add(item);
        }
        else
        {
            Interlocked.Decrement(ref _count);
            // Let GC collect it
        }
    }
}

/// <summary>
/// Packet-specific object pool with automatic buffer management.
/// </summary>
public sealed class PacketBufferPool
{
    private readonly ObjectPool<byte[]> _pool;
    
    public static readonly PacketBufferPool Shared = new();
    
    public PacketBufferPool()
    {
        _pool = new ObjectPool<byte[]>(
            factory: () => new byte[8192],
            reset: Array.Clear, // Zero out on return
            maxSize: 50000
        );
    }
    
    public byte[] Rent(int minimumSize = 8192)
    {
        var buffer = _pool.Rent();
        if (buffer.Length < minimumSize)
            return new byte[minimumSize]; // Can't reuse, too small
        return buffer;
    }
    
    public void Return(byte[] buffer)
    {
        if (buffer?.Length == 8192) // Only pool standard size
            _pool.Return(buffer);
    }
}

// USAGE:
// Instead of: var buffer = ArrayPool<byte>.Shared.Rent(8192);
// Use:        var buffer = PacketBufferPool.Shared.Rent();
// Return:     PacketBufferPool.Shared.Return(buffer);
```

---

### 1.2 Factory Pattern

**Where:** Creating packets, monsters, items, NPCs  
**Why:** Centralize creation logic, allow easy extension  
**Replaces:** Scattered `new` calls with complex initialization

```csharp
/// <summary>
/// Factory for creating game entities.
/// Replaces scattered MonsterInformation.Load() + manual initialization.
/// </summary>
public interface IEntityFactory
{
    Entity CreateMonster(uint typeId, ushort mapId, ushort x, ushort y);
    Entity CreateNpc(uint typeId, ushort mapId, ushort x, ushort y);
    ConquerItem CreateItem(uint typeId, byte plus = 0, byte bless = 0);
}

public class EntityFactory : IEntityFactory
{
    private readonly IMonsterRepository _monsters;
    private readonly IItemRepository _items;
    private readonly ILogger<EntityFactory> _logger;

    public EntityFactory(
        IMonsterRepository monsters,
        IItemRepository items,
        ILogger<EntityFactory> logger)
    {
        _monsters = monsters;
        _items = items;
        _logger = logger;
    }

    public Entity CreateMonster(uint typeId, ushort mapId, ushort x, ushort y)
    {
        var info = _monsters.GetByType(typeId);
        if (info == null)
        {
            _logger.LogWarning("Monster type {TypeId} not found", typeId);
            return null;
        }

        var entity = new Entity
        {
            UID = EntityTable.EntityUID.Next,
            MonsterInfo = info,
            EntityFlag = EntityFlag.Monster,
            MapID = mapId,
            X = x,
            Y = y,
            MaxHitpoints = info.Hitpoints,
            Hitpoints = info.Hitpoints,
            MinAttack = info.MinAttack,
            MaxAttack = info.MaxAttack,
            Defence = info.Defence,
            Level = info.Level,
            Mesh = info.Mesh,
            Name = info.Name
        };

        entity.CreateSpawnPacket();
        return entity;
    }

    public ConquerItem CreateItem(uint typeId, byte plus = 0, byte bless = 0)
    {
        var info = _items.GetByType(typeId);
        if (info == null)
        {
            _logger.LogWarning("Item type {TypeId} not found", typeId);
            return null;
        }

        return new ConquerItem(true)
        {
            ID = typeId,
            Plus = plus,
            Bless = bless,
            Durability = info.Durability,
            MaximDurability = info.Durability
        };
    }
}

/// <summary>
/// Abstract Factory for creating packet instances.
/// </summary>
public interface IPacketFactory
{
    byte[] CreateMessage(string text, Color color, ushort channel);
    byte[] CreateAttack(uint attackerId, uint targetId, uint damage);
    byte[] CreateWalk(ushort x, ushort y, byte direction);
    byte[] CreateSpawn(Entity entity);
}

public class PacketFactory : IPacketFactory
{
    private static readonly ulong Seal = BitConverter.ToUInt64(Encoding.Default.GetBytes("TQClient"));

    public byte[] CreateMessage(string text, Color color, ushort channel)
    {
        using var writer = new PacketSpanWriter(256);
        writer.WriteUInt32((uint)color.ToArgb());
        writer.WriteUInt16(channel);
        writer.WriteUInt16(0); // style
        writer.WriteUInt32(0); // characterId
        writer.WriteLengthPrefixedString("SYSTEM");
        writer.WriteLengthPrefixedString("ALLUSERS");
        writer.WriteLengthPrefixedString("");
        writer.WriteLengthPrefixedString(text);
        return writer.ToPacketArray(1004);
    }
}
```

---

### 1.3 Builder Pattern

**Where:** Complex packet construction, query building  
**Why:** Step-by-step construction with validation  
**Replaces:** `NyxSqlCommand` chain and manual byte array building

```csharp
/// <summary>
/// Builder for constructing complex packets with validation.
/// Replaces manual byte[] construction everywhere.
/// </summary>
public ref struct PacketBuilder
{
    private PacketSpanWriter _writer;
    private readonly ushort _packetId;
    private bool _built;

    public PacketBuilder(ushort packetId, int initialCapacity = 256)
    {
        _packetId = packetId;
        _writer = new PacketSpanWriter(initialCapacity);
        _built = false;
    }

    public PacketBuilder WriteByte(byte value)
    {
        _writer.WriteByte(value);
        return this;
    }

    public PacketBuilder WriteUInt16(ushort value)
    {
        _writer.WriteUInt16(value);
        return this;
    }

    public PacketBuilder WriteUInt32(uint value)
    {
        _writer.WriteUInt32(value);
        return this;
    }

    public PacketBuilder WriteString(string value, int fixedLength)
    {
        _writer.WriteString(value, fixedLength);
        return this;
    }

    public PacketBuilder WriteLengthPrefixedString(string value)
    {
        _writer.WriteLengthPrefixedString(value);
        return this;
    }

    /// <summary>
    /// Build the final packet with header and seal.
    /// Can only be called once.
    /// </summary>
    public byte[] Build()
    {
        if (_built)
            throw new InvalidOperationException("Packet already built");
        _built = true;
        return _writer.ToPacketArray(_packetId);
    }
}

/// <summary>
/// Builder for database queries (replaces NyxSqlCommand).
/// </summary>
public class QueryBuilder
{
    private readonly StringBuilder _sql = new();
    private readonly DynamicParameters _parameters = new();
    private QueryType _type;
    private string _table;
    private bool _hasWhere;

    public QueryBuilder Select(string table)
    {
        _type = QueryType.Select;
        _table = table;
        _sql.Append($"SELECT * FROM `{table}`");
        return this;
    }

    public QueryBuilder Update(string table)
    {
        _type = QueryType.Update;
        _table = table;
        _sql.Append($"UPDATE `{table}` SET ");
        return this;
    }

    public QueryBuilder Insert(string table)
    {
        _type = QueryType.Insert;
        _table = table;
        _sql.Append($"INSERT INTO `{table}`");
        return this;
    }

    public QueryBuilder Delete(string table)
    {
        _type = QueryType.Delete;
        _table = table;
        _sql.Append($"DELETE FROM `{table}`");
        return this;
    }

    public QueryBuilder Set(string column, object value)
    {
        var paramName = $"@{_parameters.ParameterNames.Count()}";
        
        if (_sql.ToString().EndsWith("SET "))
            _sql.Append($"`{column}` = {paramName}");
        else
            _sql.Append($", `{column}` = {paramName}");
        
        _parameters.Add(paramName, value);
        return this;
    }

    public QueryBuilder Where(string column, object value)
    {
        var paramName = $"@{_parameters.ParameterNames.Count()}";
        
        if (!_hasWhere)
        {
            _sql.Append(" WHERE ");
            _hasWhere = true;
        }
        else
        {
            _sql.Append(" AND ");
        }
        
        _sql.Append($"`{column}` = {paramName}");
        _parameters.Add(paramName, value);
        return this;
    }

    public QueryBuilder And(string column, object value) => Where(column, value);

    public (string Sql, DynamicParameters Parameters) Build()
    {
        return (_sql.ToString(), _parameters);
    }

    private enum QueryType { Select, Update, Insert, Delete }
}

// USAGE:
// Old: NyxSqlCommand cmd = new NyxSqlCommand(MySqlCommandType.UPDATE);
//      cmd.Update("entities").Set("Name", newName).Where("ID", id).Execute();
//
// New: var (sql, parameters) = new QueryBuilder()
//          .Update("entities")
//          .Set("Name", newName)
//          .Where("ID", id)
//          .Build();
//      await _database.ExecuteAsync(sql, parameters);
```

---

### 1.4 Singleton Pattern (Thread-Safe)

**Where:** Global services, managers  
**Why:** Single instance with lazy initialization  
**Replaces:** Static classes everywhere

```csharp
/// <summary>
/// Thread-safe lazy singleton.
/// Replaces static classes like Kernel, World, etc.
/// </summary>
public sealed class GameWorld
{
    // Lazy<T> is thread-safe by default
    private static readonly Lazy<GameWorld> _instance = new(
        () => new GameWorld(),
        LazyThreadSafetyMode.ExecutionAndPublication
    );

    public static GameWorld Instance => _instance.Value;

    // Instance state
    public ConcurrentDictionary<uint, GameClient> GamePool { get; } = new();
    public ConcurrentDictionary<uint, GameClient> DisconnectPool { get; } = new();
    public SafeDictionary<ushort, Map> Maps { get; } = new();
    public SafeDictionary<uint, Guild> Guilds { get; } = new();

    private GameWorld()
    {
        // Private constructor
    }

    public void Register(GameClient client) { /* ... */ }
    public void Unregister(GameClient client) { /* ... */ }
}

// BETTER: Use DI container instead of singleton
// services.AddSingleton<IGameWorld, GameWorld>();
```

---

### 1.5 Prototype Pattern

**Where:** Cloning entities, items, configurations  
**Why:** Create copies without knowing concrete types

```csharp
/// <summary>
/// Interface for cloneable game objects.
/// </summary>
public interface IPrototype<T>
{
    T Clone();
}

/// <summary>
/// Cloneable entity with deep copy support.
/// </summary>
public partial class Entity : IPrototype<Entity>
{
    public Entity Clone()
    {
        var clone = new Entity
        {
            UID = EntityTable.EntityUID.Next, // New UID
            Name = this.Name,
            Mesh = this.Mesh,
            Level = this.Level,
            Class = this.Class,
            X = this.X,
            Y = this.Y,
            MapID = this.MapID,
            Hitpoints = this.Hitpoints,
            MaxHitpoints = this.MaxHitpoints,
            MinAttack = this.MinAttack,
            MaxAttack = this.MaxAttack,
            // ... copy all relevant fields
        };

        // Deep copy collections
        clone.Titles = new ConcurrentDictionary<TitlePacket.Titles, DateTime>(this.Titles);
        
        return clone;
    }
}

// USAGE: Clone for bot/NPC creation
var botEntity = templateEntity.Clone();
```

---

## 2. Structural Patterns

### 2.1 Repository Pattern

**Where:** All database access  
**Why:** Abstract data access, enable testing  
**Replaces:** Direct `MySqlConnection` usage everywhere

```csharp
/// <summary>
/// Generic repository interface.
/// </summary>
public interface IRepository<T> where T : class
{
    ValueTask<T?> GetByIdAsync(uint id, CancellationToken ct = default);
    ValueTask<IEnumerable<T>> GetAllAsync(CancellationToken ct = default);
    ValueTask<uint> InsertAsync(T entity, CancellationToken ct = default);
    ValueTask<bool> UpdateAsync(T entity, CancellationToken ct = default);
    ValueTask<bool> DeleteAsync(uint id, CancellationToken ct = default);
}

/// <summary>
/// Base repository with common operations.
/// </summary>
public abstract class RepositoryBase<T> : IRepository<T> where T : class
{
    protected readonly IDatabaseService Database;
    protected readonly ILogger Logger;
    protected abstract string TableName { get; }
    protected abstract string IdColumn { get; }

    protected RepositoryBase(IDatabaseService database, ILogger logger)
    {
        Database = database;
        Logger = logger;
    }

    public virtual async ValueTask<T?> GetByIdAsync(uint id, CancellationToken ct = default)
    {
        var sql = $"SELECT * FROM `{TableName}` WHERE `{IdColumn}` = @Id";
        return await Database.QueryFirstOrDefaultAsync<T>(sql, new { Id = id }, ct);
    }

    public virtual async ValueTask<IEnumerable<T>> GetAllAsync(CancellationToken ct = default)
    {
        var sql = $"SELECT * FROM `{TableName}`";
        return await Database.QueryAsync<T>(sql, ct: ct);
    }

    public virtual async ValueTask<uint> InsertAsync(T entity, CancellationToken ct = default)
    {
        var sql = BuildInsertSql(entity);
        return await Database.ExecuteScalarAsync<uint>(sql, entity, ct);
    }

    public virtual async ValueTask<bool> UpdateAsync(T entity, CancellationToken ct = default)
    {
        var sql = BuildUpdateSql(entity);
        var affected = await Database.ExecuteAsync(sql, entity, ct);
        return affected > 0;
    }

    public virtual async ValueTask<bool> DeleteAsync(uint id, CancellationToken ct = default)
    {
        var sql = $"DELETE FROM `{TableName}` WHERE `{IdColumn}` = @Id";
        var affected = await Database.ExecuteAsync(sql, new { Id = id }, ct);
        return affected > 0;
    }

    protected abstract string BuildInsertSql(T entity);
    protected abstract string BuildUpdateSql(T entity);
}

/// <summary>
/// Entity-specific repository.
/// </summary>
public class EntityRepository : RepositoryBase<PlayerEntity>
{
    protected override string TableName => "entities";
    protected override string IdColumn => "UID";

    public EntityRepository(IDatabaseService database, ILogger<EntityRepository> logger)
        : base(database, logger) { }

    public async ValueTask<PlayerEntity?> GetByNameAsync(string name, CancellationToken ct = default)
    {
        const string sql = "SELECT * FROM `entities` WHERE `Name` = @Name";
        return await Database.QueryFirstOrDefaultAsync<PlayerEntity>(sql, new { Name = name }, ct);
    }

    public async ValueTask<IEnumerable<PlayerEntity>> GetByMapAsync(ushort mapId, CancellationToken ct = default)
    {
        const string sql = "SELECT * FROM `entities` WHERE `MapID` = @MapId";
        return await Database.QueryAsync<PlayerEntity>(sql, new { MapId = mapId }, ct);
    }

    public async ValueTask UpdatePositionAsync(uint entityId, ushort mapId, ushort x, ushort y, CancellationToken ct = default)
    {
        const string sql = "UPDATE `entities` SET `MapID` = @MapId, `X` = @X, `Y` = @Y WHERE `UID` = @Id";
        await Database.ExecuteAsync(sql, new { Id = entityId, MapId = mapId, X = x, Y = y }, ct);
    }

    protected override string BuildInsertSql(PlayerEntity entity)
    {
        return "INSERT INTO `entities` (...) VALUES (...)";
    }

    protected override string BuildUpdateSql(PlayerEntity entity)
    {
        return "UPDATE `entities` SET ... WHERE `UID` = @UID";
    }
}
```

---

### 2.2 Unit of Work Pattern

**Where:** Transaction management  
**Why:** Ensure atomic operations across multiple repositories

```csharp
/// <summary>
/// Unit of Work for managing transactions across multiple repositories.
/// </summary>
public interface IUnitOfWork : IDisposable
{
    IEntityRepository Entities { get; }
    IItemRepository Items { get; }
    IGuildRepository Guilds { get; }
    
    ValueTask BeginTransactionAsync(CancellationToken ct = default);
    ValueTask CommitAsync(CancellationToken ct = default);
    ValueTask RollbackAsync(CancellationToken ct = default);
}

public class UnitOfWork : IUnitOfWork
{
    private readonly IDatabaseService _database;
    private IDbTransaction _transaction;
    private IDbConnection _connection;

    public IEntityRepository Entities { get; }
    public IItemRepository Items { get; }
    public IGuildRepository Guilds { get; }

    public UnitOfWork(
        IDatabaseService database,
        IEntityRepository entities,
        IItemRepository items,
        IGuildRepository guilds)
    {
        _database = database;
        Entities = entities;
        Items = items;
        Guilds = guilds;
    }

    public async ValueTask BeginTransactionAsync(CancellationToken ct = default)
    {
        _connection = await _database.GetConnectionAsync(ct);
        _transaction = _connection.BeginTransaction();
    }

    public async ValueTask CommitAsync(CancellationToken ct = default)
    {
        try
        {
            _transaction?.Commit();
        }
        catch
        {
            _transaction?.Rollback();
            throw;
        }
    }

    public async ValueTask RollbackAsync(CancellationToken ct = default)
    {
        _transaction?.Rollback();
    }

    public void Dispose()
    {
        _transaction?.Dispose();
        _connection?.Dispose();
    }
}

// USAGE:
// using var uow = _unitOfWorkFactory.Create();
// await uow.BeginTransactionAsync();
// try
// {
//     await uow.Entities.UpdateAsync(player);
//     await uow.Items.InsertAsync(item);
//     await uow.CommitAsync();
// }
// catch
// {
//     await uow.RollbackAsync();
//     throw;
// }
```

---

### 2.3 Decorator Pattern

**Where:** Adding logging, caching, validation to services  
**Why:** Open/Closed principle - extend without modifying

```csharp
/// <summary>
/// Base interface for entity service.
/// </summary>
public interface IEntityService
{
    ValueTask<Entity?> GetByIdAsync(uint id);
    ValueTask<bool> SaveAsync(Entity entity);
}

/// <summary>
/// Core implementation.
/// </summary>
public class EntityService : IEntityService
{
    private readonly IEntityRepository _repository;

    public EntityService(IEntityRepository repository)
    {
        _repository = repository;
    }

    public async ValueTask<Entity?> GetByIdAsync(uint id)
    {
        return await _repository.GetByIdAsync(id);
    }

    public async ValueTask<bool> SaveAsync(Entity entity)
    {
        return await _repository.UpdateAsync(entity);
    }
}

/// <summary>
/// Logging decorator - adds logging without modifying core service.
/// </summary>
public class LoggingEntityServiceDecorator : IEntityService
{
    private readonly IEntityService _inner;
    private readonly ILogger _logger;

    public LoggingEntityServiceDecorator(IEntityService inner, ILogger logger)
    {
        _inner = inner;
        _logger = logger;
    }

    public async ValueTask<Entity?> GetByIdAsync(uint id)
    {
        _logger.LogDebug("Getting entity {Id}", id);
        var sw = Stopwatch.StartNew();
        
        var result = await _inner.GetByIdAsync(id);
        
        _logger.LogDebug("Got entity {Id} in {Ms}ms (Found: {Found})", 
            id, sw.ElapsedMilliseconds, result != null);
        
        return result;
    }

    public async ValueTask<bool> SaveAsync(Entity entity)
    {
        _logger.LogInformation("Saving entity {Id} ({Name})", entity.UID, entity.Name);
        var sw = Stopwatch.StartNew();
        
        var result = await _inner.SaveAsync(entity);
        
        _logger.LogInformation("Saved entity {Id} in {Ms}ms (Success: {Success})", 
            entity.UID, sw.ElapsedMilliseconds, result);
        
        return result;
    }
}

/// <summary>
/// Caching decorator - adds caching without modifying core service.
/// </summary>
public class CachingEntityServiceDecorator : IEntityService
{
    private readonly IEntityService _inner;
    private readonly IDistributedCache _cache;
    private readonly TimeSpan _cacheDuration = TimeSpan.FromMinutes(5);

    public CachingEntityServiceDecorator(IEntityService inner, IDistributedCache cache)
    {
        _inner = inner;
        _cache = cache;
    }

    public async ValueTask<Entity?> GetByIdAsync(uint id)
    {
        var cacheKey = $"entity:{id}";
        
        // Try cache first
        var cached = await _cache.GetAsync<Entity>(cacheKey);
        if (cached != null)
            return cached;
        
        // Cache miss - get from source
        var entity = await _inner.GetByIdAsync(id);
        
        if (entity != null)
            await _cache.SetAsync(cacheKey, entity, _cacheDuration);
        
        return entity;
    }

    public async ValueTask<bool> SaveAsync(Entity entity)
    {
        var result = await _inner.SaveAsync(entity);
        
        if (result)
        {
            // Invalidate cache
            await _cache.RemoveAsync($"entity:{entity.UID}");
        }
        
        return result;
    }
}

// REGISTRATION (DI):
// services.AddScoped<IEntityService, EntityService>();
// services.Decorate<IEntityService, LoggingEntityServiceDecorator>();
// services.Decorate<IEntityService, CachingEntityServiceDecorator>();
```

---

### 2.4 Facade Pattern

**Where:** Complex subsystems (combat, trade, guild)  
**Why:** Simplify interface for common operations

```csharp
/// <summary>
/// Facade for the combat subsystem.
/// Simplifies complex attack processing.
/// </summary>
public interface ICombatFacade
{
    ValueTask<CombatResult> ProcessAttackAsync(uint attackerId, uint targetId, ushort skillId);
    ValueTask<bool> CanAttackAsync(uint attackerId, uint targetId);
    ValueTask<DamageResult> CalculateDamageAsync(uint attackerId, uint targetId, ushort skillId);
}

public class CombatFacade : ICombatFacade
{
    private readonly ICombatCalculator _calculator;
    private readonly ISkillService _skills;
    private readonly IGameWorld _world;
    private readonly ILogger<CombatFacade> _logger;

    public CombatFacade(
        ICombatCalculator calculator,
        ISkillService skills,
        IGameWorld world,
        ILogger<CombatFacade> logger)
    {
        _calculator = calculator;
        _skills = skills;
        _world = world;
        _logger = logger;
    }

    public async ValueTask<CombatResult> ProcessAttackAsync(
        uint attackerId, uint targetId, ushort skillId)
    {
        // 1. Get entities
        var attacker = _world.GetEntity(attackerId);
        var target = _world.GetEntity(targetId);
        
        if (attacker == null || target == null)
            return CombatResult.InvalidTarget;
        
        // 2. Validate attack
        if (!await CanAttackAsync(attackerId, targetId))
            return CombatResult.CannotAttack;
        
        // 3. Calculate damage
        var damage = await CalculateDamageAsync(attackerId, targetId, skillId);
        
        // 4. Apply damage
        target.Hitpoints = (uint)Math.Max(0, (int)target.Hitpoints - (int)damage.TotalDamage);
        
        // 5. Check death
        if (target.Hitpoints == 0)
        {
            await HandleDeathAsync(attacker, target);
            return CombatResult.TargetKilled;
        }
        
        // 6. Broadcast
        await BroadcastAttackAsync(attacker, target, damage);
        
        return CombatResult.Success;
    }
}
```

---

### 2.5 Adapter Pattern

**Where:** Wrapping legacy code with modern interfaces  
**Why:** Incremental migration without breaking everything

```csharp
/// <summary>
/// Adapter wrapping legacy Database.DataHolder with modern interface.
/// Allows gradual migration from static methods to DI.
/// </summary>
public class DataHolderAdapter : IDatabaseService
{
    public async ValueTask<T?> QueryFirstOrDefaultAsync<T>(string sql, object? param, CancellationToken ct)
    {
        // Delegate to legacy code
        using var conn = Database.DataHolder.MySqlConnection;
        conn.Open();
        return await conn.QueryFirstOrDefaultAsync<T>(sql, param);
    }
    
    // ... other methods delegating to legacy code
}

/// <summary>
/// Adapter wrapping legacy Kernel static class.
/// </summary>
public class KernelAdapter : IGameWorld
{
    public GameClient? GetClient(uint uid) 
        => Kernel.GamePool.TryGetValue(uid, out var client) ? client : null;
    
    public Entity? GetEntity(uint uid)
        => GetClient(uid)?.Entity;
    
    public Map? GetMap(ushort mapId)
        => Kernel.Maps.TryGetValue(mapId, out var map) ? map : null;
}
```

---

### 2.6 Proxy Pattern

**Where:** Lazy loading, access control, caching  
**Why:** Control access to expensive objects

```csharp
/// <summary>
/// Lazy-loading proxy for entity data.
/// Only loads from DB when actually accessed.
/// </summary>
public class LazyEntityProxy
{
    private readonly uint _entityId;
    private readonly IEntityRepository _repository;
    private Entity? _entity;
    private bool _loaded;
    private readonly SemaphoreSlim _loadLock = new(1, 1);

    public LazyEntityProxy(uint entityId, IEntityRepository repository)
    {
        _entityId = entityId;
        _repository = repository;
    }

    public async ValueTask<Entity> GetEntityAsync()
    {
        if (_loaded)
            return _entity!;
        
        await _loadLock.WaitAsync();
        try
        {
            if (!_loaded)
            {
                _entity = await _repository.GetByIdAsync(_entityId);
                _loaded = true;
            }
        }
        finally
        {
            _loadLock.Release();
        }
        
        return _entity!;
    }
}
```

---

## 3. Behavioral Patterns

### 3.1 Strategy Pattern

**Where:** Damage calculation, movement validation, spell effects  
**Why:** Swap algorithms at runtime  
**Replaces:** Giant switch statements for different damage types

```csharp
/// <summary>
/// Strategy interface for damage calculation.
/// </summary>
public interface IDamageStrategy
{
    DamageResult Calculate(Entity attacker, Entity target, AttackContext context);
}

/// <summary>
/// Physical damage calculation.
/// </summary>
public class PhysicalDamageStrategy : IDamageStrategy
{
    public DamageResult Calculate(Entity attacker, Entity target, AttackContext context)
    {
        var baseDamage = Random.Shared.Next((int)attacker.MinAttack, (int)attacker.MaxAttack + 1);
        var defense = target.Defence;
        var damage = Math.Max(1, baseDamage - defense);
        
        // Critical hit check
        if (Random.Shared.Next(100) < attacker.CriticalRate)
            damage *= 2;
        
        return new DamageResult { Damage = (uint)damage, IsCritical = damage > baseDamage };
    }
}

/// <summary>
/// Magic damage calculation.
/// </summary>
public class MagicDamageStrategy : IDamageStrategy
{
    public DamageResult Calculate(Entity attacker, Entity target, AttackContext context)
    {
        var spell = context.Spell;
        var baseDamage = attacker.MagicAttack * spell.Power / 100;
        var defense = target.MagicDefence;
        var damage = Math.Max(1, (int)baseDamage - (int)defense);
        
        return new DamageResult { Damage = (uint)damage, IsCritical = false };
    }
}

/// <summary>
/// Context that selects the appropriate strategy.
/// </summary>
public class DamageCalculator
{
    private readonly Dictionary<DamageType, IDamageStrategy> _strategies;

    public DamageCalculator()
    {
        _strategies = new Dictionary<DamageType, IDamageStrategy>
        {
            [DamageType.Physical] = new PhysicalDamageStrategy(),
            [DamageType.Magic] = new MagicDamageStrategy(),
            [DamageType.True] = new TrueDamageStrategy(), // Ignores defense
        };
    }

    public DamageResult Calculate(Entity attacker, Entity target, AttackContext context)
    {
        if (!_strategies.TryGetValue(context.DamageType, out var strategy))
            throw new InvalidOperationException($"No strategy for {context.DamageType}");
        
        return strategy.Calculate(attacker, target, context);
    }
}
```

---

### 3.2 Command Pattern

**Where:** Player actions, undo/redo, queuing operations  
**Why:** Encapsulate actions, enable queuing and logging

```csharp
/// <summary>
/// Command interface for player actions.
/// </summary>
public interface IGameCommand
{
    uint EntityId { get; }
    DateTime ExecutedAt { get; }
    
    ValueTask ExecuteAsync();
    ValueTask UndoAsync();
    bool CanExecute();
}

/// <summary>
/// Move command - can be undone.
/// </summary>
public class MoveCommand : IGameCommand
{
    public uint EntityId { get; }
    public DateTime ExecutedAt { get; private set; }
    
    private readonly ushort _fromX, _fromY;
    private readonly ushort _toX, _toY;
    private readonly IGameWorld _world;

    public MoveCommand(uint entityId, ushort fromX, ushort fromY, ushort toX, ushort toY, IGameWorld world)
    {
        EntityId = entityId;
        _fromX = fromX;
        _fromY = fromY;
        _toX = toX;
        _toY = toY;
        _world = world;
    }

    public bool CanExecute()
    {
        var entity = _world.GetEntity(EntityId);
        return entity != null && !entity.Dead;
    }

    public ValueTask ExecuteAsync()
    {
        var entity = _world.GetEntity(EntityId);
        entity.X = _toX;
        entity.Y = _toY;
        ExecutedAt = DateTime.UtcNow;
        return ValueTask.CompletedTask;
    }

    public ValueTask UndoAsync()
    {
        var entity = _world.GetEntity(EntityId);
        entity.X = _fromX;
        entity.Y = _fromY;
        return ValueTask.CompletedTask;
    }
}

/// <summary>
/// Command invoker with history for undo support.
/// </summary>
public class CommandInvoker
{
    private readonly Stack<IGameCommand> _history = new();
    private readonly ILogger _logger;

    public async ValueTask ExecuteAsync(IGameCommand command)
    {
        if (!command.CanExecute())
        {
            _logger.LogWarning("Command {Type} cannot execute for entity {Id}", 
                command.GetType().Name, command.EntityId);
            return;
        }

        await command.ExecuteAsync();
        _history.Push(command);
        
        _logger.LogDebug("Executed {Type} for entity {Id}", 
            command.GetType().Name, command.EntityId);
    }

    public async ValueTask UndoAsync()
    {
        if (_history.Count == 0)
            return;

        var command = _history.Pop();
        await command.UndoAsync();
        
        _logger.LogDebug("Undid {Type} for entity {Id}", 
            command.GetType().Name, command.EntityId);
    }
}
```

---

### 3.3 Observer Pattern (Event Aggregator)

**Where:** Game events (level up, death, guild join)  
**Why:** Decouple event producers from consumers  
**Replaces:** Direct method calls between unrelated systems

```csharp
/// <summary>
/// Event aggregator for decoupled communication.
/// </summary>
public interface IEventAggregator
{
    void Subscribe<TEvent>(Action<TEvent> handler) where TEvent : IGameEvent;
    void Subscribe<TEvent>(Func<TEvent, Task> handler) where TEvent : IGameEvent;
    void Unsubscribe<TEvent>(Action<TEvent> handler) where TEvent : IGameEvent;
    void Publish<TEvent>(TEvent gameEvent) where TEvent : IGameEvent;
    Task PublishAsync<TEvent>(TEvent gameEvent) where TEvent : IGameEvent;
}

public class EventAggregator : IEventAggregator
{
    private readonly ConcurrentDictionary<Type, List<Delegate>> _handlers = new();
    private readonly ILogger _logger;

    public void Subscribe<TEvent>(Action<TEvent> handler) where TEvent : IGameEvent
    {
        var handlers = _handlers.GetOrAdd(typeof(TEvent), _ => new List<Delegate>());
        lock (handlers)
        {
            handlers.Add(handler);
        }
    }

    public void Publish<TEvent>(TEvent gameEvent) where TEvent : IGameEvent
    {
        if (!_handlers.TryGetValue(typeof(TEvent), out var handlers))
            return;

        List<Delegate> snapshot;
        lock (handlers)
        {
            snapshot = new List<Delegate>(handlers);
        }

        foreach (var handler in snapshot)
        {
            try
            {
                ((Action<TEvent>)handler)(gameEvent);
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Error in event handler for {EventType}", typeof(TEvent).Name);
            }
        }
    }
}

// Game Events
public interface IGameEvent { }

public record PlayerLevelUpEvent(uint EntityId, string PlayerName, int OldLevel, int NewLevel) : IGameEvent;
public record PlayerDeathEvent(uint EntityId, string PlayerName, uint? KillerId, string? KillerName) : IGameEvent;
public record ItemAcquiredEvent(uint EntityId, uint ItemId, ushort Quantity) : IGameEvent;
public record GuildJoinedEvent(uint EntityId, uint GuildId, string GuildName) : IGameEvent;

// USAGE:
// _events.Subscribe<PlayerLevelUpEvent>(evt =>
// {
//     _logger.LogInformation("{Player} reached level {Level}", evt.PlayerName, evt.NewLevel);
//     _achievementService.CheckLevelAchievements(evt.EntityId, evt.NewLevel);
// });
//
// _events.Publish(new PlayerLevelUpEvent(entity.UID, entity.Name, oldLevel, newLevel));
```

---

### 3.4 State Pattern

**Where:** Player states (alive, dead, trading, in-arena)  
**Why:** Clean state transitions with validation

```csharp
/// <summary>
/// State interface for player behavior.
/// </summary>
public interface IPlayerState
{
    PlayerStateType StateType { get; }
    
    ValueTask EnterAsync(GameClient client);
    ValueTask ExitAsync(GameClient client);
    ValueTask<bool> CanPerformActionAsync(GameClient client, PlayerAction action);
    ValueTask ProcessActionAsync(GameClient client, PlayerAction action);
}

public enum PlayerStateType
{
    Alive,
    Dead,
    Trading,
    InArena,
    InJail,
    Offline
}

/// <summary>
/// Alive state - normal gameplay.
/// </summary>
public class AliveState : IPlayerState
{
    public PlayerStateType StateType => PlayerStateType.Alive;

    public ValueTask EnterAsync(GameClient client)
    {
        client.Entity.Dead = false;
        return ValueTask.CompletedTask;
    }

    public ValueTask ExitAsync(GameClient client) => ValueTask.CompletedTask;

    public ValueTask<bool> CanPerformActionAsync(GameClient client, PlayerAction action)
    {
        return action switch
        {
            PlayerAction.Attack => ValueTask.FromResult(true),
            PlayerAction.Move => ValueTask.FromResult(true),
            PlayerAction.Trade => ValueTask.FromResult(true),
            PlayerAction.CastSpell => ValueTask.FromResult(!client.Entity.ContainsFlag(Update.Flags.Freeze)),
            _ => ValueTask.FromResult(true)
        };
    }

    public async ValueTask ProcessActionAsync(GameClient client, PlayerAction action)
    {
        // Process normal actions
    }
}

/// <summary>
/// Dead state - limited actions.
/// </summary>
public class DeadState : IPlayerState
{
    public PlayerStateType StateType => PlayerStateType.Dead;

    public ValueTask EnterAsync(GameClient client)
    {
        client.Entity.Dead = true;
        // Send death packet
        return ValueTask.CompletedTask;
    }

    public ValueTask ExitAsync(GameClient client) => ValueTask.CompletedTask;

    public ValueTask<bool> CanPerformActionAsync(GameClient client, PlayerAction action)
    {
        // Dead players can only: chat, revive, spectate
        return action switch
        {
            PlayerAction.Chat => ValueTask.FromResult(true),
            PlayerAction.Revive => ValueTask.FromResult(true),
            _ => ValueTask.FromResult(false)
        };
    }

    public async ValueTask ProcessActionAsync(GameClient client, PlayerAction action)
    {
        if (action == PlayerAction.Revive)
        {
            // Handle revive logic
        }
    }
}

/// <summary>
/// State machine managing player states.
/// </summary>
public class PlayerStateMachine
{
    private readonly Dictionary<PlayerStateType, IPlayerState> _states;
    private IPlayerState _currentState;

    public PlayerStateMachine(GameClient client)
    {
        Client = client;
        _states = new Dictionary<PlayerStateType, IPlayerState>
        {
            [PlayerStateType.Alive] = new AliveState(),
            [PlayerStateType.Dead] = new DeadState(),
            [PlayerStateType.Trading] = new TradingState(),
            [PlayerStateType.InArena] = new ArenaState(),
        };
        _currentState = _states[PlayerStateType.Alive];
    }

    public GameClient Client { get; }
    public PlayerStateType CurrentState => _currentState.StateType;

    public async ValueTask TransitionToAsync(PlayerStateType newState)
    {
        if (_currentState.StateType == newState)
            return;

        await _currentState.ExitAsync(Client);
        _currentState = _states[newState];
        await _currentState.EnterAsync(Client);
    }

    public async ValueTask<bool> TryPerformActionAsync(PlayerAction action)
    {
        if (!await _currentState.CanPerformActionAsync(Client, action))
            return false;

        await _currentState.ProcessActionAsync(Client, action);
        return true;
    }
}
```

---

### 3.5 Chain of Responsibility Pattern

**Where:** Packet validation, request processing  
**Why:** Multiple handlers can process, each decides to pass or handle  
**Already covered in middleware pipeline**

---

### 3.6 Template Method Pattern

**Where:** Tournament logic, quest processing  
**Why:** Define algorithm skeleton, let subclasses fill in steps

```csharp
/// <summary>
/// Template for tournament processing.
/// </summary>
public abstract class TournamentBase
{
    public string Name { get; }
    
    protected TournamentBase(string name)
    {
        Name = name;
    }

    /// <summary>
    /// Template method - defines the tournament algorithm.
    /// </summary>
    public async ValueTask RunAsync()
    {
        await OnStarting();
        
        await RegisterPlayers();
        await WaitForPlayers();
        
        while (!IsComplete())
        {
            var match = CreateMatch();
            await RunMatchAsync(match);
            await ProcessMatchResult(match);
        }
        
        await DetermineWinners();
        await DistributeRewards();
        await OnCompleted();
    }

    // Abstract steps - subclasses must implement
    protected abstract ValueTask RegisterPlayers();
    protected abstract Match CreateMatch();
    protected abstract ValueTask RunMatchAsync(Match match);
    protected abstract ValueTask ProcessMatchResult(Match match);
    protected abstract ValueTask DetermineWinners();
    protected abstract ValueTask DistributeRewards();

    // Virtual hooks - subclasses can override
    protected virtual ValueTask OnStarting() => ValueTask.CompletedTask;
    protected virtual ValueTask OnCompleted() => ValueTask.CompletedTask;
    protected virtual ValueTask WaitForPlayers() => ValueTask.CompletedTask;
    protected virtual bool IsComplete() => false;
}

/// <summary>
/// Elite PK tournament implementation.
/// </summary>
public class ElitePKTournament : TournamentBase
{
    public ElitePKTournament() : base("Elite PK") { }

    protected override async ValueTask RegisterPlayers()
    {
        // Open registration
        // Send announcements
    }

    protected override Match CreateMatch()
    {
        // Create 1v1 match from bracket
        return new PKMatch();
    }

    // ... implement other abstract methods
}
```

---

### 3.7 Mediator Pattern

**Where:** Communication between game systems  
**Why:** Reduce coupling between systems

```csharp
/// <summary>
/// Mediator for game system communication.
/// </summary>
public interface IGameMediator
{
    ValueTask<TResponse> SendAsync<TResponse>(IGameRequest<TResponse> request);
    ValueTask PublishAsync(IGameNotification notification);
}

public class GameMediator : IGameMediator
{
    private readonly IServiceProvider _services;
    private readonly ILogger _logger;

    public async ValueTask<TResponse> SendAsync<TResponse>(IGameRequest<TResponse> request)
    {
        var handlerType = typeof(IRequestHandler<,>).MakeGenericType(request.GetType(), typeof(TResponse));
        var handler = _services.GetService(handlerType);
        
        if (handler == null)
            throw new InvalidOperationException($"No handler for {request.GetType().Name}");
        
        var method = handlerType.GetMethod("HandleAsync");
        return await (ValueTask<TResponse>)method.Invoke(handler, new[] { request });
    }
}

// Requests
public interface IGameRequest<TResponse> { }
public interface IRequestHandler<TRequest, TResponse> where TRequest : IGameRequest<TResponse>
{
    ValueTask<TResponse> HandleAsync(TRequest request, CancellationToken ct = default);
}

public record GetPlayerInfoRequest(uint PlayerId) : IGameRequest<PlayerInfo>;
public record TransferItemRequest(uint FromId, uint ToId, uint ItemId) : IGameRequest<bool>;

// Handler
public class GetPlayerInfoHandler : IRequestHandler<GetPlayerInfoRequest, PlayerInfo>
{
    private readonly IEntityRepository _repository;

    public async ValueTask<PlayerInfo> HandleAsync(GetPlayerInfoRequest request, CancellationToken ct)
    {
        var entity = await _repository.GetByIdAsync(request.PlayerId);
        return new PlayerInfo(entity.Name, entity.Level, entity.Class);
    }
}
```

---

## 4. Architectural Patterns

### 4.1 Dependency Injection Pattern

**Where:** Throughout the application  
**Why:** Testability, loose coupling, single responsibility

```csharp
// Program.cs - DI Configuration
private static void ConfigureServices(IServiceCollection services)
{
    // Core services
    services.AddSingleton<IDatabaseService, DatabaseService>();
    services.AddSingleton<IRedisService, RedisService>();
    services.AddSingleton<IGameWorld, GameWorld>();
    services.AddSingleton<IEventAggregator, EventAggregator>();
    
    // Repositories
    services.AddScoped<IEntityRepository, EntityRepository>();
    services.AddScoped<IItemRepository, ItemRepository>();
    services.AddScoped<IGuildRepository, GuildRepository>();
    
    // Services
    services.AddScoped<IEntityService, EntityService>();
    services.Decorate<IEntityService, LoggingEntityServiceDecorator>();
    services.Decorate<IEntityService, CachingEntityServiceDecorator>();
    
    services.AddScoped<ICombatFacade, CombatFacade>();
    services.AddScoped<ITradeService, TradeService>();
    services.AddScoped<IGuildService, GuildService>();
    
    // Factories
    services.AddSingleton<IEntityFactory, EntityFactory>();
    services.AddSingleton<IPacketFactory, PacketFactory>();
    
    // Packet handling
    services.AddSingleton<PacketRouter>();
    services.Scan(scan => scan
        .FromAssemblyOf<MsgTalkHandler>()
        .AddClasses(classes => classes.AssignableTo<IPacketHandler>())
        .AsImplementedInterfaces()
        .WithScopedLifetime());
}
```

---

### 4.2 CQRS Pattern (Command Query Responsibility Segregation)

**Where:** Separating reads from writes  
**Why:** Optimize read and write paths independently

```csharp
/// <summary>
/// Command - modifies state
/// </summary>
public interface ICommand<TResult>
{
    // Marker interface
}

/// <summary>
/// Query - reads state
/// </summary>
public interface IQuery<TResult>
{
    // Marker interface
}

/// <summary>
/// Command handler
/// </summary>
public interface ICommandHandler<TCommand, TResult> where TCommand : ICommand<TResult>
{
    ValueTask<TResult> HandleAsync(TCommand command, CancellationToken ct = default);
}

/// <summary>
/// Query handler
/// </summary>
public interface IQueryHandler<TQuery, TResult> where TQuery : IQuery<TResult>
{
    ValueTask<TResult> HandleAsync(TQuery query, CancellationToken ct = default);
}

// Commands
public record UpdatePlayerPositionCommand(uint EntityId, ushort MapId, ushort X, ushort Y) : ICommand<bool>;
public record AddItemCommand(uint EntityId, uint ItemId, ushort Quantity) : ICommand<bool>;

// Queries
public record GetPlayerQuery(uint PlayerId) : IQuery<PlayerInfo>;
public record GetMapPlayersQuery(ushort MapId) : IQuery<IReadOnlyList<PlayerInfo>>;

// Handlers
public class UpdatePlayerPositionHandler : ICommandHandler<UpdatePlayerPositionCommand, bool>
{
    private readonly IEntityRepository _repository;
    private readonly IGameWorld _world;

    public async ValueTask<bool> HandleAsync(UpdatePlayerPositionCommand cmd, CancellationToken ct)
    {
        // Update in memory
        var entity = _world.GetEntity(cmd.EntityId);
        entity.MapID = cmd.MapId;
        entity.X = cmd.X;
        entity.Y = cmd.Y;
        
        // Update in database
        await _repository.UpdatePositionAsync(cmd.EntityId, cmd.MapId, cmd.X, cmd.Y, ct);
        
        return true;
    }
}

public class GetPlayerHandler : IQueryHandler<GetPlayerQuery, PlayerInfo>
{
    private readonly IEntityRepository _repository;

    public async ValueTask<PlayerInfo> HandleAsync(GetPlayerQuery query, CancellationToken ct)
    {
        var entity = await _repository.GetByIdAsync(query.PlayerId, ct);
        return new PlayerInfo(entity.Name, entity.Level, entity.Class);
    }
}
```

---

## 5. Concurrency Patterns

### 5.1 Producer-Consumer Pattern

**Where:** Packet processing, task queuing  
**Why:** Decouple producers from consumers, handle bursts

```csharp
/// <summary>
/// Producer-consumer using System.Threading.Channels.
/// </summary>
public class ProducerConsumerQueue<T> : IDisposable
{
    private readonly Channel<T> _channel;
    private readonly Task[] _consumers;
    private readonly CancellationTokenSource _cts = new();

    public ProducerConsumerQueue(
        Func<T, CancellationToken, ValueTask> processor,
        int consumerCount = 4,
        int capacity = 10000)
    {
        _channel = Channel.CreateBounded<T>(new BoundedChannelOptions(capacity)
        {
            FullMode = BoundedChannelFullMode.Wait,
            SingleReader = false,
            SingleWriter = false
        });

        _consumers = Enumerable.Range(0, consumerCount)
            .Select(_ => Task.Run(() => ConsumeAsync(processor)))
            .ToArray();
    }

    public ValueTask ProduceAsync(T item) => _channel.Writer.WriteAsync(item, _cts.Token);

    private async Task ConsumeAsync(Func<T, CancellationToken, ValueTask> processor)
    {
        await foreach (var item in _channel.Reader.ReadAllAsync(_cts.Token))
        {
            try
            {
                await processor(item, _cts.Token);
            }
            catch (Exception ex)
            {
                // Log error
            }
        }
    }

    public void Dispose()
    {
        _cts.Cancel();
        _channel.Writer.TryComplete();
        _cts.Dispose();
    }
}
```

---

### 5.2 Actor Model Pattern

**Where:** Entity processing, session management  
**Why:** No shared state, message passing only

```csharp
/// <summary>
/// Actor-style entity processor.
/// Each entity has its own mailbox and processes messages sequentially.
/// </summary>
public class EntityActor : IDisposable
{
    private readonly Channel<IEntityMessage> _mailbox;
    private readonly Task _processingTask;
    private readonly CancellationTokenSource _cts = new();
    private readonly Entity _entity;

    public EntityActor(Entity entity, int mailboxCapacity = 1000)
    {
        _entity = entity;
        _mailbox = Channel.CreateBounded<IEntityMessage>(mailboxCapacity);
        _processingTask = Task.Run(ProcessMessagesAsync);
    }

    public ValueTask TellAsync(IEntityMessage message)
    {
        return _mailbox.Writer.WriteAsync(message, _cts.Token);
    }

    private async Task ProcessMessagesAsync()
    {
        await foreach (var message in _mailbox.Reader.ReadAllAsync(_cts.Token))
        {
            try
            {
                await ProcessMessageAsync(message);
            }
            catch (Exception ex)
            {
                // Log error
            }
        }
    }

    private async ValueTask ProcessMessageAsync(IEntityMessage message)
    {
        switch (message)
        {
            case MoveMessage move:
                _entity.X = move.X;
                _entity.Y = move.Y;
                break;
            case DamageMessage damage:
                _entity.Hitpoints = (uint)Math.Max(0, (int)_entity.Hitpoints - (int)damage.Amount);
                break;
            case HealMessage heal:
                _entity.Hitpoints = Math.Min(_entity.MaxHitpoints, _entity.Hitpoints + heal.Amount);
                break;
        }
    }

    public void Dispose()
    {
        _cts.Cancel();
        _mailbox.Writer.TryComplete();
        _cts.Dispose();
    }
}

public interface IEntityMessage { }
public record MoveMessage(ushort X, ushort Y) : IEntityMessage;
public record DamageMessage(uint Amount, uint SourceId) : IEntityMessage;
public record HealMessage(uint Amount) : IEntityMessage;
```

---

## 6. Game-Specific Patterns

### 6.1 Game Loop Pattern

**Where:** Main server tick  
**Why:** Fixed timestep for consistent gameplay

```csharp
/// <summary>
/// Fixed timestep game loop.
/// </summary>
public class GameLoop
{
    private readonly TimeSpan _tickInterval = TimeSpan.FromMilliseconds(100); // 10 TPS
    private readonly IGameWorld _world;
    private readonly ILogger _logger;
    private CancellationTokenSource _cts;
    private Task _loopTask;

    public void Start()
    {
        _cts = new CancellationTokenSource();
        _loopTask = Task.Run(() => RunAsync(_cts.Token));
    }

    private async Task RunAsync(CancellationToken ct)
    {
        var stopwatch = Stopwatch.StartNew();
        var previousTime = stopwatch.Elapsed;
        var lag = TimeSpan.Zero;

        while (!ct.IsCancellationRequested)
        {
            var currentTime = stopwatch.Elapsed;
            var elapsed = currentTime - previousTime;
            previousTime = currentTime;
            lag += elapsed;

            // Process fixed timestep updates
            while (lag >= _tickInterval)
            {
                await UpdateAsync(_tickInterval);
                lag -= _tickInterval;
            }

            // Sleep to maintain target framerate
            var sleepTime = _tickInterval - (stopwatch.Elapsed - currentTime);
            if (sleepTime > TimeSpan.Zero)
                await Task.Delay(sleepTime, ct);
        }
    }

    private async ValueTask UpdateAsync(TimeSpan delta)
    {
        // Update all entities
        foreach (var client in _world.GetOnlineClients())
        {
            try
            {
                await UpdateClientAsync(client, delta);
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Error updating client {Id}", client.Entity.UID);
            }
        }

        // Update world state
        await _world.UpdateAsync(delta);
    }
}
```

---

### 6.2 Spatial Partitioning Pattern

**Where:** Range queries, collision detection  
**Why:** O(1) instead of O(n) for nearby entity lookups

```csharp
/// <summary>
/// Grid-based spatial partitioning for efficient range queries.
/// </summary>
public class SpatialGrid<T> where T : IMapObject
{
    private readonly int _cellSize;
    private readonly ConcurrentDictionary<(int x, int y), ConcurrentBag<T>> _cells = new();

    public SpatialGrid(int cellSize = 50)
    {
        _cellSize = cellSize;
    }

    public void Insert(T obj)
    {
        var cell = GetCell(obj.X, obj.Y);
        var bag = _cells.GetOrAdd(cell, _ => new ConcurrentBag<T>());
        bag.Add(obj);
    }

    public void Remove(T obj)
    {
        var cell = GetCell(obj.X, obj.Y);
        if (_cells.TryGetValue(cell, out var bag))
        {
            // Note: ConcurrentBag doesn't support Remove
            // Use a different collection or rebuild periodically
        }
    }

    public IEnumerable<T> GetNearby(ushort x, ushort y, int range)
    {
        var centerCell = GetCell(x, y);
        var cellRange = (range / _cellSize) + 1;
        var results = new List<T>();

        for (int dx = -cellRange; dx <= cellRange; dx++)
        {
            for (int dy = -cellRange; dy <= cellRange; dy++)
            {
                var cell = (centerCell.x + dx, centerCell.y + dy);
                if (_cells.TryGetValue(cell, out var bag))
                {
                    foreach (var obj in bag)
                    {
                        var distance = Math.Sqrt(
                            Math.Pow(obj.X - x, 2) + Math.Pow(obj.Y - y, 2));
                        if (distance <= range)
                            results.Add(obj);
                    }
                }
            }
        }

        return results;
    }

    private (int x, int y) GetCell(ushort x, ushort y)
    {
        return (x / _cellSize, y / _cellSize);
    }
}
```

---

## 7. Pattern Application Matrix

| Pattern | Where to Apply | Replaces | Priority |
|---------|---------------|----------|----------|
| **Object Pool** | Packet buffers, tasks | ArrayPool scattered usage | P0 |
| **Factory** | Entity/Item creation | Manual new + init | P1 |
| **Builder** | Packets, queries | NyxSqlCommand, byte[] building | P0 |
| **Repository** | All DB access | Direct SQL everywhere | P1 |
| **Unit of Work** | Transactions | Manual connection management | P2 |
| **Decorator** | Service enhancement | Inheritance chains | P2 |
| **Facade** | Combat, trade | Complex subsystem access | P1 |
| **Adapter** | Legacy code | Direct static calls | P1 |
| **Strategy** | Damage calc, movement | Switch statements | P1 |
| **Command** | Player actions | Direct method calls | P2 |
| **Observer** | Game events | Direct coupling | P1 |
| **State** | Player states | if/else chains | P1 |
| **Template Method** | Tournaments | Duplicated logic | P2 |
| **Mediator** | System communication | Direct references | P2 |
| **Producer-Consumer** | Packet processing | Manual channels | P0 |
| **Actor Model** | Entity processing | Shared state | P2 |
| **Spatial Partitioning** | Range queries | Linear search | P1 |
| **Game Loop** | Main tick | Timer-based | P1 |

---

## Summary

**Total Patterns:** 20+  
**Priority Distribution:**
- P0 (Critical): 4 patterns
- P1 (Important): 10 patterns  
- P2 (Nice to have): 6 patterns

**Implementation Order:**
1. Object Pool + Producer-Consumer (performance)
2. Builder + Repository (code quality)
3. Strategy + State + Observer (game logic)
4. Factory + Facade + Adapter (architecture)
5. Command + Mediator + Actor (advanced)
