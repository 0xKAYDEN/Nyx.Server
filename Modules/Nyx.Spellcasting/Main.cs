using Serilog;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.Spellcasting
{
    public class Main
    {
        private static readonly ILogger logger = Log.ForContext<Main>();
        public static void Initialize()
        {
            //1. Get Spells From the database
            //2. use a dispatcher to handle spell casting requests

            // Initialization logic for the Spellcasting module
            logger.Information("Nyx.Spellcasting module initialized.");
        }
        public async Task HandelSpellAsync(ushort SpellID)
        {

            // Cleanup logic for the Spellcasting module
            logger.Information("Nyx.Spellcasting module shutdown.");
        }
    }
}
