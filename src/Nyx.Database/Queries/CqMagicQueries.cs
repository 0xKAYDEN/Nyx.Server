using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.Database.Queries
{
    public static class CqMagicQueries
    {
        public const string GetMagicById = 
            "SELECT * FROM cq_magic WHERE id = @id";
        public const string GetMagicByOwnerId = 
            "SELECT * FROM cq_magic WHERE ownerid = @ownerid";
        public const string GetMagicByOwnerIdAndType = 
            "SELECT * FROM cq_magic WHERE ownerid = @ownerid AND type = @type";
        public const string GetMagicByOwnerIdAndTypeAndLevel = 
            "SELECT * FROM cq_magic WHERE ownerid = @ownerid AND type = @type AND level = @level";
        public const string UpdateMagicLevelById = 
            "UPDATE cq_magic SET level = @level WHERE id = @id";
        public const string UpdateMagicExpById = 
            "UPDATE cq_magic SET exp = @exp WHERE id = @id"; 
        public const string DeleteMagicById = 
            "DELETE FROM cq_magic WHERE id = @id";
    }
}
