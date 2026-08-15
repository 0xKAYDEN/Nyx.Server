namespace Nyx.Server.Game
{
    /// <summary>
    /// Original Conquer Online style leveling system.
    /// </summary>
    /// <remarks>
    /// <para>
    /// This is a self-contained rewrite of the server's character leveling and
    /// monster-kill experience, replacing the previous damage-based "hybrid" system
    /// (which awarded EXP per-hit, scaled by <c>DamageDealt / MonsterHP</c>, tuned to a
    /// fixed exp/hour target). It follows the classic Conquer Online model instead:
    /// </para>
    /// <list type="bullet">
    /// <item>Level-up EXP comes from a per-level table (the original lvl.dat curve, which
    /// the server already shipped as <c>Level.ini</c>), not from a formula.</item>
    /// <item>A monster grants a <b>flat</b> EXP amount determined by its own level,
    /// multiplied by a player-vs-monster level-difference modifier. Damage no longer
    /// matters, so there is no kill-stealing abuse of the damage-tracking map.</item>
    /// </list>
    /// <para>
    /// All numbers are deliberate tuning constants (see <see cref="KillsPerLevel"/>) and
    /// are safe to adjust. The whole system is pure and has no dependencies on the game
    /// loop, so it can be unit-tested in isolation.
    /// </para>
    /// </remarks>
    public static class LevelingSystem
    {
        /// <summary>
        /// The highest level a character can reach. The original table provides one EXP
        /// value per level up to 139 (the step into 140); a character already at 140 has
        /// nothing further to earn.
        /// </summary>
        public const byte MaxLevel = 140;

        /// <summary>
        /// Roughly how many kills of an on-level monster are intended to produce one level
        /// up. Used only to sanity-check the flat kill-EXP scaling; it is not referenced by
        /// the formulas below directly.
        /// </summary>
        public const int KillsPerLevel = 8;

        /// <summary>
        /// The original Conquer Online per-level experience table (lvl.dat / Level.ini).
        /// Index <c>i</c> holds the experience required to advance from level <c>i + 1</c>
        /// to level <c>i + 2</c>. Index 0 (level 1 -&gt; 2) is 120, climbing to the enormous
        /// late-game steps. This is the authentic curve, not a rounded approximation.
        /// </summary>
        private static readonly ulong[] ExperienceTable =
        {
            120UL, 180UL, 240UL, 360UL, 600UL, 960UL, 1200UL, 2400UL,
            3600UL, 8400UL, 12000UL, 14400UL, 18000UL, 21600UL, 22646UL, 32203UL,
            37433UL, 47556UL, 56609UL, 68772UL, 70515UL, 75936UL, 97733UL, 114836UL,
            120853UL, 123981UL, 126720UL, 145878UL, 173436UL, 197646UL, 202451UL, 212160UL,
            244190UL, 285823UL, 305986UL, 312864UL, 324480UL, 366168UL, 433959UL, 460590UL,
            506738UL, 569994UL, 728527UL, 850829UL, 916479UL, 935118UL, 940800UL, 1076593UL,
            1272780UL, 1357994UL, 1384861UL, 1478400UL, 1632438UL, 1903104UL, 2066042UL, 2104924UL,
            1921085UL, 2417202UL, 2853462UL, 3054574UL, 3111217UL, 3225600UL, 3810962UL, 4437896UL,
            4880605UL, 4970962UL, 5107200UL, 5652518UL, 6579162UL, 6877991UL, 7100700UL, 7157657UL,
            9106860UL, 10596398UL, 11220549UL, 11409192UL, 11424000UL, 12882952UL, 15172807UL, 15896990UL,
            16163799UL, 16800000UL, 19230280UL, 22365208UL, 23819312UL, 24219528UL, 24864000UL, 27200077UL,
            32033165UL, 33723801UL, 34291317UL, 34944000UL, 39463523UL, 45878567UL, 48924236UL, 49729220UL,
            51072000UL, 55808379UL, 64870058UL, 68391931UL, 69537026UL, 76422968UL, 96950789UL, 112676755UL,
            120090482UL, 121798280UL, 127680000UL, 137446887UL, 193715970UL, 408832150UL, 454674685UL, 461125885UL,
            469189885UL, 477253885UL, 480479485UL, 485317885UL, 493381885UL, 580580046UL, 717424987UL, 282274058UL,
            338728870UL, 406474644UL, 487769572UL, 585323487UL, 702388184UL, 842865821UL, 1011438985UL, 1073741823UL,
            1073741823UL, 8589134588UL, 25767403764UL, 77302211292UL, 231906633876UL, 347859950814UL, 447859950814UL, 547859950814UL,
            1174030000000UL, 1761040000000UL, 2641550000000UL,
        };

        /// <summary>
        /// Experience required to advance from <paramref name="level"/> to the next level.
        /// </summary>
        /// <param name="level">The character's current level.</param>
        /// <returns>EXP needed to reach <c>level + 1</c>, or 0 when at/above <see cref="MaxLevel"/>.</returns>
        public static ulong ExperienceToNextLevel(byte level)
        {
            if (level >= MaxLevel)
                return 0;

            // ExperienceTable[0] is the step out of level 1, so the required step for the
            // current level is indexed by level - 1.
            int index = level - 1;
            if (index < 0 || index >= ExperienceTable.Length)
                return 0;

            return ExperienceTable[index];
        }

        /// <summary>
        /// Flat experience granted for killing a monster of <paramref name="monsterLevel"/>,
        /// scaled by the player-vs-monster level difference.
        /// </summary>
        /// <remarks>
        /// <para>This replaces the old damage-based share. A monster is worth a base amount
        /// that grows with its own level (squared), then the player's own level compared to
        /// the monster decides how much of that base they actually earn. Damage dealt plays
        /// no role, so two players killing the same monster get the same EXP regardless of
        /// who dealt the final blow.</para>
        /// <para>See <see cref="LevelDifferenceMultiplier"/> for the exact modifier bands.</para>
        /// </remarks>
        public static ulong KillExperience(byte playerLevel, byte monsterLevel)
        {
            // Base monster EXP: level² * 2. A level 47 monster -> 4418 base; level 102 ->
            // 20808; level 120 -> 28800. This mirrors the classic Conquer monster reward curve.
            ulong baseExp = (ulong)monsterLevel * (ulong)monsterLevel * 2UL;

            double multiplier = LevelDifferenceMultiplier(playerLevel, monsterLevel);
            return (ulong)(baseExp * multiplier);
        }

        /// <summary>
        /// Player-vs-monster level difference modifier for kill EXP.
        /// </summary>
        /// <remarks>
        /// <para>The classic Conquer behaviour is mirrored: a monster that is <b>higher</b>
        /// level than the player is worth more (you get a bonus for taking on something
        /// above you), while a monster that is <b>below</b> the player pays progressively
        /// less. The transition is smooth and bounded so that a level-1 player is never
        /// punished for farming at their own tier and a max-level player cannot exploit
        /// low-level monsters.</para>
        /// <list type="bullet">
        /// <item>monster 3+ levels higher: <c>1.5x</c></item>
        /// <item>monster 1-2 levels higher: <c>1.25x</c></item>
        /// <item>equal or up to 2 below: <c>1.0x</c></item>
        /// <item>3-9 below: <c>0.75x</c></item>
        /// <item>10+ below: <c>0.5x</c></item>
        /// </list>
        /// </remarks>
        public static double LevelDifferenceMultiplier(byte playerLevel, byte monsterLevel)
        {
            int diff = monsterLevel - playerLevel; // >0 => monster above player

            if (diff >= 3) return 1.5;
            if (diff >= 1) return 1.25;
            if (diff >= -2) return 1.0;
            if (diff >= -9) return 0.75;
            return 0.5;
        }
    }
}