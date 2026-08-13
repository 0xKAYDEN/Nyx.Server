using System.Text.RegularExpressions;

namespace Nyx.Server
{
    public static class MySqlExtensions
    {
        /// <summary>
        /// Escapes a string for MySQL (legacy compatibility).
        /// </summary>
        public static string MySqlEscape(this string usString)
        {
            if (usString == null) return null;
            return Regex.Replace(usString, @"[\r\n\x00\x1a\\'""]", @"\$0");
        }
        
        /// <summary>
        /// Escapes a string for PostgreSQL.
        /// Handles single quotes and backslashes.
        /// </summary>
        public static string PgEscape(this string usString)
        {
            if (usString == null) return null;
            
            // Escape single quotes by doubling them
            // Escape backslashes
            return usString
                .Replace("\\", "\\\\")
                .Replace("'", "''")
                .Replace("\0", "");  // Remove null bytes
        }
    }
}
