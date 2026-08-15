using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.Database.Queries
{
    public static class cq_itemtype_queries
    {
        public const string LoadItemTypeQuery = 
            "SELECT * FROM cq_itemtype LIMIT 1000";

        public const string LoadItemTypeByNameQuery = 
            "SELECT * FROM cq_itemtype WHERE name = @name LIMIT 1";

        public const string LoadItemTypeByIDQuery = 
            "SELECT * FROM cq_itemtype WHERE id = @id LIMIT 1";

        public const string UpdateItemPriceQuery = 
            "UPDATE cq_itemtype SET price = @price WHERE id = @id LIMIT 1";

        public const string UpdateStackSizeQuery =
            "UPDATE cq_itemtype SET accumulate_limit = @accumulate_limit WHERE id = @id LIMIT 1";
    }
}
