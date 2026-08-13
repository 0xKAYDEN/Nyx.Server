using Microsoft.EntityFrameworkCore;
using Nyx.Server.Database.Entities;
using Pomelo.EntityFrameworkCore.MySql;
using Pomelo.EntityFrameworkCore.MySql.Infrastructure;

namespace Nyx.Server.Database
{
    public class AbstractDbContext : DbContext
    {
        private static string ConnectionString => $"server={Configuration.Hostname};database={Configuration.Schema};user={Configuration.Username};password={Configuration.Password};port={Configuration.Port}";

        public virtual DbSet<DbNpc> Npcs { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder options)
        {
            options.UseMySql(ConnectionString, ServerVersion.AutoDetect(ConnectionString));
        }

        public static DatabaseConfiguration Configuration { get; set; } = new DatabaseConfiguration();
    }
}
