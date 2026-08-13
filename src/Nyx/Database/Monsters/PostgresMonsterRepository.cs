using System;
using System.Collections.Generic;
using System.Collections.Immutable;
using System.Runtime.CompilerServices;
using Microsoft.Extensions.Logging;
using Nyx.Monsters.Core;
using Nyx.Monsters.Services;
using Nyx.Server.Utilities;

namespace Nyx.Server.Database.Monsters;

/// <summary>
/// Loads monster &amp; map templates from PostgreSQL via the existing
/// <see cref="NyxSqlCommand"/>/<see cref="MySqlReader"/> infrastructure.
/// </summary>
public sealed class PostgresMonsterRepository : IMonsterRepository
{
    private readonly ILogger<PostgresMonsterRepository> _logger;
    private readonly IniFile _monstersIni;

    // In-memory template cache keyed by monster id.
    private readonly Dictionary<uint, MonsterTemplate> _templates = new(4096);

    public PostgresMonsterRepository(ILogger<PostgresMonsterRepository> logger)
    {
        _logger = logger;
        _monstersIni = new IniFile(Constants.MonstersPath);
    }

    /// <inheritdoc/>
    public void LoadAll()
    {
        _templates.Clear();
        int loaded = 0;
        using var cmd = new NyxSqlCommand(MySqlCommandType.SELECT);
        cmd.Select("monsterinfos");
        using var reader = cmd.CreateReader();
        while (reader.Read())
        {
            var t = ReadTemplate(reader);
            if (t.Id != 0) { _templates[t.Id] = t; loaded++; }
        }
        _logger.LogInformation("PostgresMonsterRepository.LoadAll: {Count} templates", loaded);
    }

    /// <inheritdoc/>
    public ValueTask LoadAllAsync(CancellationToken ct = default)
    {
        LoadAll();
        return ValueTask.CompletedTask;
    }

    /// <inheritdoc/>
    public ValueTask<MapTemplate> LoadMapTemplateAsync(ushort mapId, CancellationToken ct = default)
    {
        var t = ReadMapTemplate(mapId);
        return ValueTask.FromResult(t);
    }

    /// <inheritdoc/>
    public bool TryGetTemplate(uint monsterId, out MonsterTemplate template) =>
        _templates.TryGetValue(monsterId, out template!);

    /// <inheritdoc/>
    public IEnumerable<MonsterTemplate> AllTemplates() => _templates.Values;

    private MapTemplate ReadMapTemplate(ushort mapId)
    {
        var zones = ImmutableArray.CreateBuilder<SpawnZone>();
        using var cmd = new NyxSqlCommand(MySqlCommandType.SELECT);
        cmd.Select("monsterspawns").Where("mapid", mapId);
        using var reader = cmd.CreateReader();
        while (reader.Read())
        {
            uint monsterId = reader.ReadUInt32("npctype");
            if (monsterId == 0) continue;
            zones.Add(new SpawnZone
            {
                MonsterId = monsterId,
                Bounds = new Nyx.Monsters.Core.Bounds(
                    reader.ReadUInt16("bound_x"),
                    reader.ReadUInt16("bound_y"),
                    reader.ReadUInt16("bound_cx"),
                    reader.ReadUInt16("bound_cy")),
                Count = (ushort)reader.ReadInt32("max_per_gen"),
                RespawnSeconds = reader.ReadInt32("rest_secs") + 5
            });
        }
        return new MapTemplate { MapId = mapId, SpawnZones = zones.ToImmutable() };
    }

    private MonsterTemplate ReadTemplate(MySqlReader r)
    {
        uint id = r.ReadUInt32("id");
        string name = r.ReadString("name");
        uint life = r.ReadUInt32("life");
        bool boss = false;

        string iniMaxLife = _monstersIni.ReadString(name, "MaxLife");
        if (!string.IsNullOrEmpty(iniMaxLife) && uint.Parse(iniMaxLife) != 0)
        {
            life = uint.Parse(iniMaxLife);
            byte b = byte.Parse(_monstersIni.ReadString(name, "Boss"));
            boss = b != 0;
        }

        int moveSpeed = r.ReadInt32("move_speed");
        int attackSpeed = r.ReadInt32("attack_speed");
        if (moveSpeed <= 500) moveSpeed += 500;
        if (attackSpeed <= 500) attackSpeed += 500;

        uint dbType = r.ReadUInt32("type");
        bool isGuard = name.Contains("Guard");

        var drops = MonsterDrops.Empty;
        var owned = ImmutableArray.CreateBuilder<OwnedDrop>(3);
        AddOwned(owned, r.ReadUInt32("ownitem"), r.ReadUInt32("ownitemrate"));
        AddOwned(owned, r.ReadUInt32("ownitem2"), r.ReadUInt32("ownitemrate2"));
        AddOwned(owned, r.ReadUInt32("ownitem3"), r.ReadUInt32("ownitemrate3"));
        if (owned.Count > 0)
            drops = new MonsterDrops { Owned = owned.ToImmutable() };

        return new MonsterTemplate
        {
            Id = id, Name = name, Type = dbType, Mesh = r.ReadUInt16("lookface"),
            Level = r.ReadByte("level"),
            Stats = new MonsterStats
            {
                MaxHitpoints = life, MinAttack = r.ReadUInt32("attack_min"),
                MaxAttack = r.ReadUInt32("attack_max"), Defence = r.ReadUInt16("defence"),
                ViewRange = r.ReadUInt16("view_range"),
                AttackRange = r.ReadUInt16("attack_range"),
                AttackType = r.ReadByte("attack_user"), SpellId = r.ReadUInt16("magic_type"),
                MoveSpeed = moveSpeed, RunSpeed = r.ReadInt32("run_speed"),
                AttackSpeed = attackSpeed, ExtraExperience = r.ReadUInt32("extra_exp"),
                IsBoss = boss, IsGuard = isGuard
            },
            Drops = drops
        };
    }

    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    private static void AddOwned(ImmutableArray<OwnedDrop>.Builder b, uint itemId, uint rate)
    {
        if (itemId != 0 && rate != 0)
            b.Add(new OwnedDrop(itemId, rate));
    }
}
