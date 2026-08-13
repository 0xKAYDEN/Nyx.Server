using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.AttackEngine.Database
{
    /// <summary>
    /// Verifies a POCO's property types match the live database's actual
    /// column types before any real query runs. Turns silent overflow /
    /// byte-overrun bugs into a named, actionable startup failure instead
    /// of an exception discovered against production data.
    /// </summary>
    public static class SchemaGuard
    {
        public static async Task AssertColumnTypesMatchAsync<T>(
            DbConnection conn, string tableName, CancellationToken ct = default)
        {
            var props = typeof(T).GetProperties()
                .ToDictionary(p => p.Name, p => p, StringComparer.OrdinalIgnoreCase);

            using var cmd = conn.CreateCommand();
            cmd.CommandText = $"SELECT * FROM {tableName} LIMIT 1";
            using var reader = await cmd.ExecuteReaderAsync(ct).ConfigureAwait(false);

            var mismatches = new StringBuilder();

            for (var i = 0; i < reader.FieldCount; i++)
            {
                var columnName = reader.GetName(i);
                var propKey = columnName.Replace("_", "");

                // Try both the raw name and the alias-stripped name — this
                // runs against SELECT * so column names are the raw DB names,
                // not the query's aliases.
                if (!props.TryGetValue(columnName, out var prop) &&
                    !props.TryGetValue(propKey, out prop))
                {
                    continue; // unmapped column — not our concern here
                }

                var dbClrType = reader.GetFieldType(i);
                var propType = Nullable.GetUnderlyingType(prop.PropertyType) ?? prop.PropertyType;

                if (propType == typeof(string) && dbClrType == typeof(string)) continue;

                if (propType != dbClrType)
                {
                    mismatches.AppendLine(
                        $"  '{columnName}' (db type: {reader.GetDataTypeName(i)} / clr: {dbClrType.Name}) " +
                        $"vs {typeof(T).Name}.{prop.Name} ({propType.Name})");
                }
            }

            if (mismatches.Length > 0)
            {
                throw new InvalidOperationException(
                    $"Schema mismatch between '{tableName}' and {typeof(T).Name}. " +
                    $"Fix the POCO before startup continues:\n{mismatches}");
            }
        }
    }
}
