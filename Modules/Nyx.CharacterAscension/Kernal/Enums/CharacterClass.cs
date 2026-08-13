namespace Nyx.CharacterAscension.Kernal.Enums
{
    public static class CharacterClass
    {
        public enum Trojan : byte
        {
            Base = 10,
            Trojan,
            VeteranTrojan,
            TigerTrojan,
            DragonTrojan,
            TrojanMaster
        }
        public enum Warrior : byte
        {
            Base = 20,
            Warrior,
            BrassWarrior,
            SilverWarrior,
            GoldWarrior,
            WarriorMaster
        }
        public enum Archer : byte
        {
            Base = 40,
            Archer,
            EagleArcher,
            TigerArcher,
            DragonArcher,
            ArcherMaster
        }
        public enum Ninja : byte
        {
            Base = 50,
            Ninja,
            MiddleNinja,
            DarkNinja,
            MysticNinja,
            NinjaMaster
        }
        public enum Monk : byte
        {
            Base =60,
            Saint,
            Dhyana,
            Dharma,
            Prajna,
            Nirvana
        }
        public enum Pirate : byte
        {
            Base =70,
            Pirate,
            PirateGunner,
            Quartermaster,
            PirateCaptain,
            PirateLord
        }
        public enum DragonWarrior : byte
        {
            Base = 80,
            DragonWarrior,
            ExpertDragonWarrior,
            EliteDragonWarrior,
            MasterDragonWarrior,
            KingDragonWarrior
        }
        public enum Taoist : byte
        {
            Base = 100,
            Taoist,
            WaterTaoist = 132,
            WaterWizard = 133,
            WaterMaster = 134,
            WaterSaint = 135,
            FireTaoist = 142,
            FireWizard,
            FireMaster,
            FireSaint
        }
        public enum WaterTaoist : byte
        {
            Base = 100,
            Taoist,
            WaterTaoist = 132,
            WaterWizard,
            WaterMaster,
            WaterSaint
        }
        public enum FireTaoist : byte
        {
            Base = 100,
            Taoist,
            FireTaoist = 142,
            FireWizard,
            FireMaster,
            FireSaint
        }
        public static bool IsTrojan(int value) => value >= 10 && value <= 15;
        public static bool IsWarrior(int value) => value >= 20 && value <= 25;
        public static bool IsArcher(int value) => value >= 40 && value <= 45;
        public static bool IsNinja(int value) => value >= 50 && value <= 55;
        public static bool IsMonk(int value) => value >= 60 && value <= 65;
        public static bool IsPirate(int value) => value >= 70 && value <= 75;
        public static bool IsDragonWarrior(int value) => value >= 80 && value <= 85;
        public static bool IsTaoist(int value) => value >= 100 && value <= 101;
        public static bool IsWaterTaoist(int value) => value >= 132 && value <= 135;
        public static bool IsFireTaoist(int value) => value >= 142 && value <= 145;
        public static string AvalibleAscension(int Class)
        {
            return Class switch
            {
                #region Trojan
                10 => "Intern Trojan",
                11 => "Trojan",
                12 => "Veteran Trojan",
                13 => "Tiger Trojan",
                14 => "Dragon Trojan",
                15 => "Trojan Master",
                #endregion
                #region Warrior
                20 => "Intern Warrior",
                21 => "Warrior",
                22 => "Brass Warrior",
                23 => "Silver Warrior",
                24 => "Gold Warrior",
                25 => "Warrior Master",
                #endregion
                #region Archer
                40 => "Intern Archer",
                41 => "Archer",
                42 => "Eagle Archer",
                43 => "Tiger Archer",
                44 => "Dragon Archer",
                45 => "Archer Master",
                #endregion
                #region Ninja
                50 => "Intern Ninja",
                51 => "Ninja",
                52 => "Middle Ninja",
                53 => "Dark Ninja",
                54 => "Mystic Ninja",
                55 => "Ninja Master",
                #endregion
                #region Monk
                60 => "Intern Monk",
                61 => "Monk",
                62 => "Dhyana Monk",
                63 => "Dharma Monk",
                64 => "Prajna Monk",
                65 => "Nirvana Monk",
                #endregion
                #region Pirate
                70 => "Intern Pirate",
                71 => "Pirate",
                72 => "Pirate Gunner",
                73 => "Quarter Master",
                74 => "Pirate Captain",
                75 => "Pirate Lord",
                #endregion
                #region DragonWarrior
                80 => "Novice DragonWarrior",
                81 => "Dragon-Warrior",
                82 => "Expert DragonWarrior",
                83 => "Elite DragonWarrior",
                84 => "Master DragonWarrior",
                85 => "King DragonWarrior",
                #endregion
                #region Taoist Water/Fire
                100 => "Intern Taoist",
                101 => "Taoist",

                132 => "Water Taoist",
                133 => "Water Wizard",
                134 => "Water Master",
                135 => "Water Saint",

                142 => "Fire Taoist",
                143 => "Fire Wizard",
                144 => "Fire Master",
                145 => "Fire Saint",
                #endregion

                0 => "Not selected",
                _ => "Unknown Class"
            };
        }
    }
}
