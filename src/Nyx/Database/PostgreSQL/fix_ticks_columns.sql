-- =============================================================
-- Fix: DateTime.Ticks columns migrated as INTEGER must be BIGINT
-- -------------------------------------------------------------
-- Background:
--   In the original MySQL schema these columns were `bigint`.
--   The MySQL -> PostgreSQL migration converted every bigint to
--   INTEGER. That is fine for UIDs/counts, but columns that store
--   DateTime.Ticks (a signed 64-bit value ~= 6.4 x 10^17) overflow
--   INTEGER (max ~= 2.1 x 10^9). PostgreSQL then raises:
--       22003: value "639202871855717515" is out of range for type integer
--   which makes INSERTs/UPDATEs fail and (before the code fix) caused
--   ConquerItemTable.AddItem to recurse forever and stack-overflow.
--
--   arena.ArenaPointFill was already fixed manually; teamarena still
--   has the bug, and so do all the columns below.
--
-- Safe to run more than once: ALTER ... TYPE is a no-op if the column
-- is already BIGINT.
-- =============================================================

-- arena (ArenaPointFill) -- already fixed manually, kept for completeness/idempotency
ALTER TABLE arena ALTER COLUMN "ArenaPointFill" TYPE BIGINT;

-- teamarena (same ArenaPointFill overflow that crashed 'arena')
ALTER TABLE teamarena ALTER COLUMN "ArenaPointFill" TYPE BIGINT;

-- items (the table that caused the AddItem stack-overflow)
ALTER TABLE items ALTER COLUMN "TimeStamp"        TYPE BIGINT;
ALTER TABLE items ALTER COLUMN "UnlockEnd"        TYPE BIGINT;
ALTER TABLE items ALTER COLUMN "SuspiciousStart"  TYPE BIGINT;
ALTER TABLE items ALTER COLUMN "RefineryTime"     TYPE BIGINT;
ALTER TABLE items ALTER COLUMN "RefineryStarted"   TYPE BIGINT;

-- entities (player save: LastDragonBallUse / LastResetTime / OfflineTGEnterTime)
ALTER TABLE entities ALTER COLUMN "LastDragonBallUse" TYPE BIGINT;
ALTER TABLE entities ALTER COLUMN "LastResetTime"      TYPE BIGINT;
ALTER TABLE entities ALTER COLUMN "OfflineTGEnterTime" TYPE BIGINT;
ALTER TABLE entities ALTER COLUMN "GuildLastLogin"     TYPE BIGINT;

-- other tables that store DateTime.Ticks and will overflow on next use
ALTER TABLE claimitems    ALTER COLUMN "Date"                TYPE BIGINT;
ALTER TABLE detaineditems ALTER COLUMN "Date"                TYPE BIGINT;
ALTER TABLE auction       ALTER COLUMN "EndTime"             TYPE BIGINT;
ALTER TABLE itemadding    ALTER COLUMN "addedon"            TYPE BIGINT;
ALTER TABLE partners      ALTER COLUMN "ProbationStartedOn"  TYPE BIGINT;
ALTER TABLE titles        ALTER COLUMN "Time"                TYPE BIGINT;
ALTER TABLE guilds        ALTER COLUMN "AnnouncementDate"   TYPE BIGINT;
ALTER TABLE guilds        ALTER COLUMN "EnrollmentDate"      TYPE BIGINT;
