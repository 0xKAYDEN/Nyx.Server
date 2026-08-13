using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.Spellcasting.Enums
{
    public enum SpellTarget : byte
    {
        Magic = 0,
        EntitiesOnly = 1,
        Self = 2,
        AroundCoordonates = 4,
        Sector = 8,
        AutoAttack = 16,
        PlayersOnly = 32
    }
}
