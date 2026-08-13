using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.Calculations.Validations
{
    public enum ValidationType : byte
    {
        Melee = 0, //Only Validate Range
        Magic = 1, // Validate Range, Mana
        Physical = 2, // Validate Range, Stamina
    }
}
