using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.Database.Repositories
{
    public class NewbieRepository
    {
        public async Task FeatchAsync()
        {
            var Data = File.ReadAllLines(Path.Combine("Configurations", "Newbie.ini"));
            
        }
    }
}
