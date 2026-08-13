//using Dapper;
//using Npgsql;
//using Serilog;
//using System;
//using System.Collections.Generic;
//using System.IO;
//using System.Threading;
//using System.Threading.Tasks;

//namespace Nyx.Server.Database
//{
//    /// <summary>
//    /// One-time bootstrap that populates the live <c>cq_magictype</c> table from the
//    /// legacy <c>database/magictype.txt</c> dump. The AttackEngine reads skill data
//    /// exclusively from <c>cq_magictype</c> at runtime — this class only exists to seed
//    /// that table the first time (and isa a no-op once rows are present).
//    ///
//    /// Idempotent: rows are inserted with <c>ON CONFLICT (type, level) DO NOTHING</c>,
//    /// so re-running never duplicates.
//    /// </summary>
//    public static class SkillDataSeeder
//    {
//        private const string TableName = "cq_magictype";
//        private const string SourceFile = "database/magictype.txt";
//        private const int BatchSize = 250;

//        public static async Task EnsureSeededAsync(CancellationToken ct = default)
//        {
//            try
//            {
//                await using var conn = DataHolder.GetConnection();
//                await conn.OpenAsync(ct).ConfigureAwait(false);

//                var existing = await conn.ExecuteScalarAsync<long>(
//                    $"SELECT COUNT(*) FROM {TableName};", ct).ConfigureAwait(false);

//                if (existing > 0)
//                {
//                    Log.Information("SkillDataSeeder: {Table} already populated ({Count} rows) — skipping seed",
//                        TableName, existing);
//                    return;
//                }

//                var path = Path.Combine(Environment.CurrentDirectory, SourceFile);
//                if (!File.Exists(path))
//                {
//                    Log.Warning("SkillDataSeeder: source file {File} not found at {Path} — cannot seed {Table}",
//                        SourceFile, path, TableName);
//                    return;
//                }

//                var rows = ParseFile(path);
//                if (rows.Count == 0)
//                {
//                    Log.Warning("SkillDataSeeder: no valid skill rows parsed from {File}", SourceFile);
//                    return;
//                }

//                var inserted = 0;
//                for (var i = 0; i < rows.Count; i += BatchSize)
//                {
//                    var batch = rows.GetRange(i, Math.Min(BatchSize, rows.Count - i));
//                    inserted += await InsertBatchAsync(conn, batch, ct).ConfigureAwait(false);
//                }

//                Log.Information("SkillDataSeeder: seeded {Inserted}/{Total} skill rows into {Table} from {File}",
//                    inserted, rows.Count, TableName, SourceFile);
//            }
//            catch (Exception ex)
//            {
//                Log.Error(ex, "SkillDataSeeder: failed to seed {Table} from {File}", TableName, SourceFile);
//            }
//        }

//        private static async Task<int> InsertBatchAsync(NpgsqlConnection conn, List<SkillRow> batch, CancellationToken ct)
//        {
//            // Build a single multi-row INSERT. Parameter names are suffixed per row to
//            // avoid collisions. ON CONFLICT keeps the operation idempotent.
//            var sql = new System.Text.StringBuilder();
//            sql.Append($@"INSERT INTO {TableName} (
//                id, type, level, sort, name, crime, ground, multi, target,
//                need_level, use_mp, power, intone_speed, percent, range, distance, status,
//                need_prof, need_exp, need_time, weapon_subtype, use_ep, use_item,
//                use_item_num, next_magic, status_data0, status_data1, status_data2,
//                attr_type, attr_power, target_num, width, coldtime, atk_interval,
//                first_magic, combo_delay, combo_timeout)
//            VALUES ");

//            var pars = new List<NpgsqlParameter>();
//            for (var r = 0; r < batch.Count; r++)
//            {
//                var row = batch[r];
//                var p = (suffix, value) =>
//                {
//                    var par = new NpgsqlParameter($"@{suffix}_{r}", value ?? DBNull.Value);
//                    pars.Add(par);
//                    return par.ParameterName;
//                };

//                if (r > 0) sql.Append(',');
//                sql.Append('(');
//                sql.Append(p("id", row.Id)).Append(',');
//                sql.Append(p("type", row.Type)).Append(',');
//                sql.Append(p("level", row.Level)).Append(',');
//                sql.Append(p("sort", row.Sort)).Append(',');
//                sql.Append(p("name", row.Name)).Append(',');
//                sql.Append(p("crime", row.Crime)).Append(',');
//                sql.Append(p("ground", row.Ground)).Append(',');
//                sql.Append(p("multi", row.Multi)).Append(',');
//                sql.Append(p("target", row.Target)).Append(',');
//                sql.Append(p("need_level", row.NeedLevel)).Append(',');
//                sql.Append(p("use_mp", row.UseMp)).Append(',');
//                sql.Append(p("power", row.Power)).Append(',');
//                sql.Append(p("intone_speed", 0)).Append(',');
//                sql.Append(p("percent", row.Percent)).Append(',');
//                sql.Append(p("range", row.Range)).Append(',');
//                sql.Append(p("distance", row.Distance)).Append(',');
//                sql.Append(p("status", row.Status)).Append(',');
//                sql.Append(p("need_prof", 0)).Append(',');
//                sql.Append(p("need_exp", row.NeedExp)).Append(',');
//                sql.Append(p("need_time", 0)).Append(',');
//                sql.Append(p("weapon_subtype", row.WeaponSubtype)).Append(',');
//                sql.Append(p("use_ep", 0)).Append(',');
//                sql.Append(p("use_item", 0)).Append(',');
//                sql.Append(p("use_item_num", 0)).Append(',');
//                sql.Append(p("next_magic", row.NextMagic)).Append(',');
//                sql.Append(p("status_data0", 0)).Append(',');
//                sql.Append(p("status_data1", 0)).Append(',');
//                sql.Append(p("status_data2", 0)).Append(',');
//                sql.Append(p("attr_type", 0)).Append(',');
//                sql.Append(p("attr_power", 0)).Append(',');
//                sql.Append(p("target_num", 0)).Append(',');
//                sql.Append(p("width", 0)).Append(',');
//                sql.Append(p("coldtime", 0)).Append(',');
//                sql.Append(p("atk_interval", 0)).Append(',');
//                sql.Append(p("first_magic", 0)).Append(',');
//                sql.Append(p("combo_delay", 0)).Append(',');
//                sql.Append(p("combo_timeout", 0));
//                sql.Append(')');
//            }

//            sql.Append($" ON CONFLICT (type, level) DO NOTHING;");

//            using var cmd = new NpgsqlCommand(sql.ToString(), conn);
//            cmd.Parameters.AddRange(pars.ToArray());
//            cmd.CommandTimeout = 120;
//            return await cmd.ExecuteNonQueryAsync(ct).ConfigureAwait(false);
//        }

//        private static List<SkillRow> ParseFile(string path)
//        {
//            var rows = new List<SkillRow>();
//            var idCounter = 1;

//            foreach (var raw in File.ReadAllLines(path))
//            {
//                var line = raw.Trim();
//                if (string.IsNullOrEmpty(line)) continue;

//                // Mirrors SpellTable.Parse: split on "@@" (and space, for safety).
//                var f = line.Split(new[] { "@@", " " }, StringSplitOptions.RemoveEmptyEntries);
//                if (f.Length < 33) continue;

//                // Explicit index access (matches SpellTable.Parse field indices).
//                int At(int i) => f.Length > i ? Convert.ToInt32(f[i]) : 0;
//                string Str(int i) => f.Length > i ? f[i] : string.Empty;

//                var row = new SkillRow
//                {
//                    Id = idCounter++,
//                    Type = (ushort)At(1),
//                    Level = (byte)At(8),
//                    Sort = (byte)At(2),
//                    Name = Str(3),
//                    Crime = At(4) == 1,
//                    Ground = At(5) == 1,
//                    Multi = At(6) == 1,
//                    Target = (byte)At(7),
//                    NeedLevel = (uint)At(20),
//                    UseMp = (uint)At(9),
//                    Power = At(10) > 0 ? At(10) : 0,
//                    Percent = (uint)At(12),
//                    Range = (uint)At(14),
//                    Distance = (int)At(15),
//                    Status = At(16),
//                    NeedExp = (uint)At(18),
//                    WeaponSubtype = (byte)(At(22) % 1000),
//                    NextMagic = (uint)At(32),
//                };

//                rows.Add(row);
//            }

//            return rows;
//        }

//        private sealed class SkillRow
//        {
//            public int Id { get; set; }
//            public ushort Type { get; set; }
//            public byte Level { get; set; }
//            public byte Sort { get; set; }
//            public string Name { get; set; } = string.Empty;
//            public bool Crime { get; set; }
//            public bool Ground { get; set; }
//            public bool Multi { get; set; }
//            public byte Target { get; set; }
//            public uint NeedLevel { get; set; }
//            public uint UseMp { get; set; }
//            public int Power { get; set; }
//            public uint Percent { get; set; }
//            public uint Range { get; set; }
//            public int Distance { get; set; }
//            public int Status { get; set; }
//            public uint NeedExp { get; set; }
//            public byte WeaponSubtype { get; set; }
//            public uint NextMagic { get; set; }
//        }
//    }
//}
