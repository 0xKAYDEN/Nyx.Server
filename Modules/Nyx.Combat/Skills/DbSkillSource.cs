using System.Data;
using System.Data.Common;
using Nyx.Combat.Abstractions;
using Nyx.Combat.Model;

namespace Nyx.Combat.Skills;

/// <summary>
/// Loads skill definitions from the <c>cq_magictype</c> table.
/// </summary>
/// <remarks>
/// <para>
/// This is the engine's <b>only</b> skill loader. There is no <c>magictype.txt</c>
/// parser and no hard-coded fallback table: the database is the single source of
/// truth, so a GM changing a skill's power in SQL and issuing a reload is the whole
/// workflow.
/// </para>
/// <para>
/// Deliberately written against <see cref="DbConnection"/> and raw ADO.NET rather
/// than an ORM. The engine takes no third-party dependency, works identically on
/// MySQL/MariaDB and PostgreSQL, and reads every column by <i>ordinal</i> resolved
/// once up front, so a 3000-row load does no per-row name hashing and no boxing.
/// </para>
/// <para>
/// Runs exactly once at boot (and on an explicit reload), never on the combat path.
/// </para>
/// </remarks>
public sealed class DbSkillSource : ISkillSource
{
    /// <summary>
    /// The load query.
    /// </summary>
    /// <remarks>
    /// <c>SELECT *</c> is deliberate here, and it is safe because every column is
    /// resolved by <i>name</i> into an ordinal exactly once (see
    /// <see cref="Ordinals"/>) before the first row is read. Naming the columns
    /// explicitly would be the usual advice, but <c>cq_magictype</c> contains
    /// <c>range</c> and <c>percent</c>, which are reserved words that need
    /// different quoting on MySQL (backticks) and PostgreSQL (double quotes) — and
    /// the whole point of this loader is that it works on both without a dialect
    /// switch. Schema drift is handled instead: unknown columns are ignored and
    /// missing ones read as their default.
    /// </remarks>
    private const string Query = "SELECT * FROM cq_magictype ORDER BY type, level";

    private readonly Func<CancellationToken, ValueTask<DbConnection>> _connectionFactory;
    private readonly bool _disposeConnection;

    /// <param name="connectionFactory">
    /// Produces an <i>open</i> connection. The caller owns pooling; the source
    /// disposes what it is given unless <paramref name="disposeConnection"/> says
    /// otherwise.
    /// </param>
    /// <param name="disposeConnection">
    /// Whether to dispose the connection after loading. Leave true when the factory
    /// hands out fresh pooled connections (the usual case).
    /// </param>
    public DbSkillSource(
        Func<CancellationToken, ValueTask<DbConnection>> connectionFactory,
        bool disposeConnection = true)
    {
        _connectionFactory = connectionFactory ?? throw new ArgumentNullException(nameof(connectionFactory));
        _disposeConnection = disposeConnection;
    }

    /// <summary>Convenience overload for a synchronous connection factory.</summary>
    public DbSkillSource(Func<DbConnection> connectionFactory, bool disposeConnection = true)
        : this(_ => ValueTask.FromResult(connectionFactory()), disposeConnection)
    {
    }

    public async ValueTask<IReadOnlyList<SkillDefinition>> LoadAllAsync(CancellationToken cancellationToken = default)
    {
        DbConnection connection = await _connectionFactory(cancellationToken).ConfigureAwait(false);

        try
        {
            if (connection.State != ConnectionState.Open)
                await connection.OpenAsync(cancellationToken).ConfigureAwait(false);

            await using DbCommand command = connection.CreateCommand();
            command.CommandText = Query;
            command.CommandTimeout = 60;

            await using DbDataReader reader = await command
                .ExecuteReaderAsync(cancellationToken)
                .ConfigureAwait(false);

            var ordinals = new Ordinals(reader);

            // cq_magictype is a few thousand rows on a full server; size for that
            // up front so the list never re-grows during the load.
            var definitions = new List<SkillDefinition>(4096);

            while (await reader.ReadAsync(cancellationToken).ConfigureAwait(false))
                definitions.Add(Project(reader, in ordinals));

            return definitions;
        }
        finally
        {
            if (_disposeConnection) await connection.DisposeAsync().ConfigureAwait(false);
        }
    }

    private static SkillDefinition Project(DbDataReader reader, in Ordinals o)
    {
        int rawPower = ReadInt32(reader, o.Power);
        (int powerPercent, int powerFlat) = SkillDefinition.DecodePower(rawPower);

        var sort = (SkillSort)ReadInt32(reader, o.Sort);
        int rawWeapon = ReadInt32(reader, o.WeaponSubtype);
        (ushort weapon1, ushort weapon2) = DecodeWeaponSubtype(rawWeapon);

        uint coldtime = (uint)Math.Max(0, ReadInt32(reader, o.ColdTime));

        return new SkillDefinition
        {
            Key = new SkillKey(
                (ushort)ReadInt32(reader, o.Type),
                (ushort)ReadInt32(reader, o.Level)),
            Name = ReadString(reader, o.Name),
            Sort = sort,
            Power = rawPower,
            PowerPercent = powerPercent,
            PowerFlat = powerFlat,
            Percent = (byte)Math.Clamp(ReadInt32(reader, o.Percent), 0, 255),
            Range = (byte)Math.Clamp(ReadInt32(reader, o.Range), 0, 255),
            Distance = (byte)Math.Clamp(ReadInt32(reader, o.Distance), 0, 255),
            MaxTargets = (ushort)Math.Clamp(ReadInt32(reader, o.TargetNum), 0, ushort.MaxValue),
            Width = (byte)Math.Clamp(ReadInt32(reader, o.Width), 0, 255),
            UseMana = (ushort)Math.Clamp(ReadInt32(reader, o.UseMp), 0, ushort.MaxValue),
            UseStamina = (ushort)Math.Clamp(ReadInt32(reader, o.UseEp), 0, ushort.MaxValue),
            NeedLevel = (ushort)Math.Clamp(ReadInt32(reader, o.NeedLevel), 0, ushort.MaxValue),
            NeedProficiency = (uint)Math.Max(0, ReadInt32(reader, o.NeedProf)),

            // Some dumps store coldtime in seconds, some in milliseconds. Anything
            // small enough to be a plausible "seconds" value is normalised up.
            CooldownMs = coldtime is > 0 and < 1000 ? coldtime * 1000 : coldtime,
            IntervalMs = (uint)Math.Max(0, ReadInt32(reader, o.AtkInterval)),

            Status = (uint)Math.Max(0, ReadInt32(reader, o.Status)),
            Element = (ElementType)Math.Clamp(ReadInt32(reader, o.AttrType), 0, 5),
            ElementPower = ReadInt32(reader, o.AttrPower),
            TargetMask = (uint)Math.Max(0, ReadInt32(reader, o.Target)),
            RequiredWeapon1 = weapon1,
            RequiredWeapon2 = weapon2,
            IsCrime = ReadBool(reader, o.Crime),
            GroundOnly = ReadBool(reader, o.Ground),
            IsMulti = ReadBool(reader, o.Multi),
            IsMagic = IsMagicSort(sort, rawWeapon),
            IsXpSkill = false,
            NextMagic = (ushort)Math.Clamp(ReadInt32(reader, o.NextMagic), 0, ushort.MaxValue),
        };
    }

    /// <summary>
    /// A skill resolves as magic unless it is tied to a physical weapon subtype.
    /// Weapon skills always declare the weapon they belong to; spells never do.
    /// </summary>
    private static bool IsMagicSort(SkillSort sort, int weaponSubtype)
    {
        if (sort == SkillSort.Passive) return false;
        return weaponSubtype == 0;
    }

    /// <summary>
    /// Legacy dumps pack two weapon subtypes into a single integer
    /// (<c>v % 1000</c> and <c>v / 1000 % 1000</c>), and use the sentinels
    /// <c>50000</c> ("none") and <c>60000</c> (subtype 614).
    /// </summary>
    internal static (ushort first, ushort second) DecodeWeaponSubtype(int value)
    {
        switch (value)
        {
            case <= 0:
            case 50000:
                return (0, 0);
            case 60000:
                return (614, 0);
        }

        var first = (ushort)(value % 1000);
        var second = (ushort)(value / 1000 % 1000);
        return (first, second);
    }

    // -----------------------------------------------------------------
    // Type-tolerant readers. The same table is SMALLINT/BOOLEAN on
    // PostgreSQL and TINYINT/INT on MySQL, so never assume a CLR type.
    // -----------------------------------------------------------------

    private static int ReadInt32(DbDataReader reader, int ordinal)
    {
        if (ordinal < 0 || reader.IsDBNull(ordinal)) return 0;

        return Type.GetTypeCode(reader.GetFieldType(ordinal)) switch
        {
            TypeCode.Int32 => reader.GetInt32(ordinal),
            TypeCode.Int16 => reader.GetInt16(ordinal),
            TypeCode.Byte => reader.GetByte(ordinal),
            TypeCode.SByte => reader.GetInt16(ordinal),
            TypeCode.Int64 => (int)Math.Clamp(reader.GetInt64(ordinal), int.MinValue, int.MaxValue),
            TypeCode.UInt32 => (int)Math.Min(reader.GetFieldValue<uint>(ordinal), int.MaxValue),
            TypeCode.UInt16 => reader.GetFieldValue<ushort>(ordinal),
            TypeCode.Boolean => reader.GetBoolean(ordinal) ? 1 : 0,
            TypeCode.Decimal => (int)reader.GetDecimal(ordinal),
            TypeCode.Double => (int)reader.GetDouble(ordinal),
            TypeCode.Single => (int)reader.GetFloat(ordinal),
            _ => Convert.ToInt32(reader.GetValue(ordinal)),
        };
    }

    private static bool ReadBool(DbDataReader reader, int ordinal)
    {
        if (ordinal < 0 || reader.IsDBNull(ordinal)) return false;
        return reader.GetFieldType(ordinal) == typeof(bool)
            ? reader.GetBoolean(ordinal)
            : ReadInt32(reader, ordinal) != 0;
    }

    private static string ReadString(DbDataReader reader, int ordinal)
        => ordinal < 0 || reader.IsDBNull(ordinal) ? string.Empty : reader.GetString(ordinal);

    /// <summary>
    /// Column ordinals resolved once per load. Reading by ordinal instead of by
    /// name turns each field access into an array index.
    /// </summary>
    private readonly struct Ordinals
    {
        public readonly int Type, Level, Sort, Name, Crime, Ground, Multi, Target;
        public readonly int NeedLevel, UseMp, Power, Percent, Range, Distance, Status;
        public readonly int NeedProf, WeaponSubtype, UseEp, NextMagic;
        public readonly int AttrType, AttrPower, TargetNum, Width, ColdTime, AtkInterval;

        public Ordinals(DbDataReader reader)
        {
            Type = Find(reader, "type");
            Level = Find(reader, "level");
            Sort = Find(reader, "sort");
            Name = Find(reader, "name");
            Crime = Find(reader, "crime");
            Ground = Find(reader, "ground");
            Multi = Find(reader, "multi");
            Target = Find(reader, "target");
            NeedLevel = Find(reader, "need_level");
            UseMp = Find(reader, "use_mp");
            Power = Find(reader, "power");
            Percent = Find(reader, "percent");
            Range = Find(reader, "range");
            Distance = Find(reader, "distance");
            Status = Find(reader, "status");
            NeedProf = Find(reader, "need_prof");
            WeaponSubtype = Find(reader, "weapon_subtype");
            UseEp = Find(reader, "use_ep");
            NextMagic = Find(reader, "next_magic");
            AttrType = Find(reader, "attr_type");
            AttrPower = Find(reader, "attr_power");
            TargetNum = Find(reader, "target_num");
            Width = Find(reader, "width");
            ColdTime = Find(reader, "coldtime");
            AtkInterval = Find(reader, "atk_interval");

            if (Type < 0 || Level < 0)
                throw new InvalidOperationException(
                    "cq_magictype is missing the 'type' and/or 'level' columns. " +
                    "The combat engine cannot key skills without them.");
        }

        /// <summary>Returns -1 for an absent column instead of throwing, so an older schema still boots.</summary>
        private static int Find(DbDataReader reader, string name)
        {
            for (int i = 0; i < reader.FieldCount; i++)
            {
                if (string.Equals(reader.GetName(i), name, StringComparison.OrdinalIgnoreCase))
                    return i;
            }

            return -1;
        }
    }
}
