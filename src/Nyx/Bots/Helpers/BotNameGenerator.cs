using System;

namespace Nyx.Server.Bots.Helpers
{
    public static class BotNameGenerator
    {
        private static readonly string[] Names = new string[]
        {
            "Mace", "Falchion","Montante","Battleaxe","Zweihander","Hatchet",
            "Billhook","Club","Hammer","Caltrop","Maul","Sledgehammer","Longbow",
            "Bludgeon","Harpoon","Crossbow","Lance","Angon","Pike","TigerClaw","FireLance",
            "Poleaxe","BrassKnuckle","Matchlock","Quarterstaff","Gauntlet","Bullwhip","WarHammer","Katar",
            "FlyingClaw","Spear","Dagger","Slungshot","Katana","Gladius","Aspis","Saber","Cutlass",
            "Blade","Broadsword","Scimitar","Lockback","Claymore","Espada","Machete","Grizzly","Wolverine",
            "Deathstalker","Snake","Wolf","Scorpion","Vulture","Claw","Boomslang","Falcon","Fang","Viper",
            "Ram","Grip","Sting","Boar","BlackMamba","Lash","Tusk","Goshawk","Gnaw","Amazon","Majesty",
            "Anomoly","Malice","Banshee","Mannequin","Belladonna","Minx","Beretta","Mirage","BlackBeauty",
            "Nightmare","Calypso","Nova","Carbon","Pumps","Cascade","Raven","Colada","Resin","Cosma","Riveter",
            "Cougar","Rogue","Countess","Roulette","Enchantress","Shadow","Enigma","Siren","FemmeFatale","Stiletto",
            "Firecracker","Tattoo","Geisha","T_Back","Goddess","Temperance","HalfPint","Tequila","Harlem","Terror","Heroin",
            "Thunderbird","Infinity","Ultra","Insomnia","Vanity","Ivy","Velvet","Legacy","Vixen","Lithium","Voodoo","Lolita",
            "Wicked","Lotus","Widow","Mademoiselle","Xenon","Kahina","Teuta","Isis","Dihya","Artemis","Nefertiti","RunningEagle",
            "Atalanta","Sekhmet","Colestah","Athena","Ishtar","CalamityJane","Enyo","Ashtart","PearlHeart","Bellona","Juno","BelleStarr",
            "WhiteTights","Tanit","HuaMulan","Shieldmaiden","Devi","Boudica","Valkyrie","Selkie","Medb","Cleo","Venus","Fate","Beguile","Deviant",
            "Illusion","Crafty","Variance","Delusion","Deceit","Caprice","Deception","Waylay","Aberr","Myth","Ambush","Variant","Daydream","Feint","Hero",
            "NightTerror","Catch_22","Villain","Figment","Puzzler","Daredevil","Virtual","Curio","Mercenary","Chicanery","Prodigy","Voyager","Trick",
            "Breach","Wanderer","Vile","MissFortune","Audacity","Horror","Vex","Swagger","Dismay","Grudge","Nerve","Phobia","Enmity","Egomania","Fright",
            "Animus","Scheme","Panic","Hostility","Paramour","Agony","Rancor","X_hibit","ffqfff","Malevolence","Charade",
            "Blaze","Poison","Hauteur","Crucible","Spite","Vainglory","Haunter","Spitefulness","Narcissus","Bane","Venom",
            "Brass","Volcano","Vampire","Hulk","Abdo255","Ahmed100","3adel_333","KahledKing","MohamedKing","SaeedAhmed",
            "KingOfAhmed","PrinceSss","sadasd","gwgewg","asdasr","3f42f3","r2w1r12r","guif2yh789349","asdqwd123",
            "sdaf","oubg","Pubg3131","keborddd","hguirhg34","656545t43","2456246t24","46t34t6346","9679i67i9",
            "67i9679","75u67u4","46yu67u","5u65u","56u65u5","65uhjrt6u","4u45u5t44uyh"
        };

        public static string GetRandomName()
        {
            return Names[Kernel.Random.Next(Names.Length)];
        }
    }
}
