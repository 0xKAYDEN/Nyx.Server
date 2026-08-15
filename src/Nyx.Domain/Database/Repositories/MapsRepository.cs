using Nyx.Domain.Database.Entities;
using Nyx.Server.Database.Context;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.Domain.Database.Repositories
{
    public class MapsRepository
    {
        public static async Task<DbMap> GetAsync(uint idMap)
        {
            //here i will use query from the database dll 
            return await Task.FromResult<DbMap>(null);
            //await using var db = new ServerDbContext();
            //return await db.Maps.FirstOrDefaultAsync(x => x.Identity == idMap);
        }
    }
}
