namespace Nyx.AttackEngine.Database.Model
{
    /// <summary>
    /// Maps 1:1 to a row in cq_magictype. Types are matched against the
    /// WIDEST declared type across both MySQL and Postgres schemas, checked
    /// column-by-column — not assumed. Only power, status, and need_exp are
    /// int4 (32-bit) in the Postgres schema; every other numeric column is
    /// int8 (64-bit) or int2 (16-bit). Get any of these three wrong in
    /// either direction and Dapper/Npgsql throws at load time.
    /// </summary>
    public sealed class MagicType
    {
        public long Id { get; set; }
        public long Type { get; set; }
        public long Sort { get; set; }
        public string Name { get; set; } = string.Empty;

        public short Crime { get; set; }
        public short Ground { get; set; }
        public short Multi { get; set; }
        public long Target { get; set; }
        public long Level { get; set; }
        public long UseMp { get; set; }

        public int Power { get; set; }              // int4 — do not widen

        public long IntoneSpeed { get; set; }
        public long Percent { get; set; }
        public long StepSecs { get; set; }
        public long Range { get; set; }
        public long Distance { get; set; }

        public int Status { get; set; }             // int4 — do not widen

        public long NeedProf { get; set; }

        public int NeedExp { get; set; }             // int4 — do not widen

        public long NeedTime { get; set; }
        public long NeedLevel { get; set; }
        public short UseXp { get; set; }
        public long WeaponSubtype { get; set; }
        public long ActiveTimes { get; set; }
        public short AutoActive { get; set; }
        public long FloorAttr { get; set; }
        public short AutoLearn { get; set; }
        public long LearnLevel { get; set; }
        public short DropWeapon { get; set; }
        public long UseEp { get; set; }
        public short WeaponHit { get; set; }
        public long UseItem { get; set; }
        public long? NextMagic { get; set; }         // nullable — no NOT NULL in schema
        public long DelayMs { get; set; }
        public long UseItemNum { get; set; }
        public long StatusData0 { get; set; }
        public long StatusData1 { get; set; }
        public long StatusData2 { get; set; }
        public short AttrType { get; set; }
        public long AttrPower { get; set; }
        public short TargetNum { get; set; }
        public long NeedAstProf { get; set; }
        public short NeedAstProfRank { get; set; }
        public long? Width { get; set; }             // nullable — no NOT NULL in schema
        public long Data { get; set; }
        public long? DurTime { get; set; }           // nullable — no NOT NULL in schema
        public long? AtkInterval { get; set; }        // nullable — no NOT NULL in schema
        public long Coldtime { get; set; }
        public long ReqUplevtime { get; set; }
        public long FirstMagic { get; set; }
        public long ComboDelay { get; set; }
        public long ComboTimeout { get; set; }
        public long MagictypeexId { get; set; }

        // Convenience accessors — Postgres declares these int2, not boolean,
        // so Dapper won't auto-convert; use these instead of the raw fields
        // anywhere the pipeline wants a bool.
        public bool IsCrime => Crime != 0;
        public bool IsGround => Ground != 0;
        public bool IsMulti => Multi != 0;
        public bool UseXpFlag => UseXp != 0;
        public bool IsAutoActive => AutoActive != 0;
        public bool IsAutoLearn => AutoLearn != 0;
        public bool IsDropWeapon => DropWeapon != 0;
        public bool IsWeaponHit => WeaponHit != 0;
    }
}
