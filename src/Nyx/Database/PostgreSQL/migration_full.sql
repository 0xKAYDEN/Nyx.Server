-- Nyx Server PostgreSQL Migration
-- Auto-generated from MySQL schema
-- All identifiers are quoted to preserve original case

DROP TABLE IF EXISTS "accounts" CASCADE;
CREATE TABLE "accounts" (
    "Username" CHAR(25) NOT NULL DEFAULT '',
    "Password" CHAR(16) NOT NULL DEFAULT '',
    "IP" CHAR(15) DEFAULT '',
    "EntityID" INTEGER DEFAULT 0,
    "State" SMALLINT DEFAULT NULL,
    "MobileNumber" CHAR(50) NOT NULL DEFAULT '',
    "Email" CHAR(50) NOT NULL,
    "HDSerial" VARCHAR(255) DEFAULT NULL,
    "PhoneNumber" VARCHAR(255) DEFAULT NULL,
    "securitycode" VARCHAR(255) NOT NULL,
    "ProfileImage" BYTEA,
    "RegisterationDate" TIMESTAMP DEFAULT NULL
);

DROP TABLE IF EXISTS "achievement" CASCADE;
CREATE TABLE "achievement" (
    "Name" VARCHAR(16) NOT NULL,
    "UID" INTEGER NOT NULL,
    "Owner" VARCHAR(45) NOT NULL,
    "Achievement" VARCHAR(999) DEFAULT NULL,
    PRIMARY KEY ("UID")
);

DROP TABLE IF EXISTS "activeness" CASCADE;
CREATE TABLE "activeness" (
    "UID" INTEGER NOT NULL DEFAULT 0,
    "ClaimedGift1" INTEGER NOT NULL DEFAULT 0,
    "ClaimedGift2" INTEGER NOT NULL DEFAULT 0,
    "ClaimedGift3" INTEGER NOT NULL DEFAULT 0,
    "ChiStudy" INTEGER NOT NULL DEFAULT 0,
    "JiangStudy" INTEGER NOT NULL DEFAULT 0,
    "DidTIB" INTEGER NOT NULL DEFAULT 0,
    "EnlightmentTimes" INTEGER NOT NULL DEFAULT 0,
    "HoursTimes" INTEGER NOT NULL DEFAULT 0,
    PRIMARY KEY ("UID")
);

DROP TABLE IF EXISTS "adv" CASCADE;
CREATE TABLE "adv" (
    "Rank" INTEGER NOT NULL DEFAULT 0,
    "UID" INTEGER NOT NULL DEFAULT 0,
    "Name" CHAR(32) NOT NULL DEFAULT '',
    "LeaderName" CHAR(17) NOT NULL DEFAULT '0',
    "Buletin" CHAR(255) NOT NULL DEFAULT 'this is new guild.',
    "Level" INTEGER NOT NULL DEFAULT 9,
    "MemberCount" INTEGER DEFAULT 1,
    "SilverFund" INTEGER DEFAULT 500000
);

DROP TABLE IF EXISTS "apprentice" CASCADE;
CREATE TABLE "apprentice" (
    "MentorID" INTEGER NOT NULL DEFAULT 0,
    "MentorName" VARCHAR(45) NOT NULL DEFAULT '',
    "ApprenticeID" INTEGER NOT NULL DEFAULT 0,
    "ApprenticeName" VARCHAR(45) NOT NULL DEFAULT '',
    "EnroleDate" INTEGER NOT NULL DEFAULT 0,
    "Actual_Experience" INTEGER DEFAULT 0,
    "Actual_Plus" INTEGER DEFAULT 0,
    "Actual_HeavenBlessing" INTEGER DEFAULT 0,
    "Total_Experience" INTEGER DEFAULT 0,
    "Total_Plus" INTEGER DEFAULT 0,
    "Total_HeavenBlessing" INTEGER DEFAULT 0
);

DROP TABLE IF EXISTS "arena" CASCADE;
CREATE TABLE "arena" (
    "EntityID" INTEGER NOT NULL DEFAULT 0,
    "EntityName" VARCHAR(45) NOT NULL DEFAULT '',
    "ArenaPoints" INTEGER DEFAULT 0,
    "ActivityPoints" INTEGER DEFAULT 0,
    "TodayWin" INTEGER DEFAULT 0,
    "TodayBattles" INTEGER DEFAULT 0,
    "TotalWin" INTEGER DEFAULT 0,
    "TotalLose" INTEGER DEFAULT 0,
    "CurrentHonor" INTEGER DEFAULT 0,
    "HistoryHonor" INTEGER DEFAULT 0,
    "LastSeasonRank" INTEGER DEFAULT 0,
    "Level" INTEGER DEFAULT 0,
    "Class" INTEGER DEFAULT 0,
    "ArenaPointFill" INTEGER DEFAULT 0,
    "Model" INTEGER DEFAULT 0,
    "LastSeasonArenaPoints" INTEGER DEFAULT 0,
    "LastSeasonWin" INTEGER DEFAULT 0,
    "LastSeasonLose" INTEGER DEFAULT 0,
    "ChampionPoints" INTEGER DEFAULT 0,
    "TodayChampionPoints" INTEGER DEFAULT 0,
    "AllChampionPoints" INTEGER DEFAULT 0,
    PRIMARY KEY ("EntityID")
);

DROP TABLE IF EXISTS "auction" CASCADE;
CREATE TABLE "auction" (
    "ID" INTEGER NOT NULL DEFAULT 0,
    "UID" INTEGER NOT NULL DEFAULT 0,
    "Plus" INTEGER DEFAULT 0,
    "Bless" INTEGER DEFAULT 0,
    "Enchant" INTEGER NOT NULL DEFAULT 0,
    "SocketOne" INTEGER DEFAULT 0,
    "SocketTwo" INTEGER DEFAULT 0,
    "Durability" INTEGER NOT NULL DEFAULT 0,
    "MaximDurability" INTEGER NOT NULL DEFAULT 0,
    "SocketProgress" INTEGER DEFAULT 0,
    "PlusProgress" INTEGER DEFAULT 0,
    "Effect" INTEGER DEFAULT 0,
    "Bound" INTEGER DEFAULT 0,
    "Locked" INTEGER DEFAULT 0,
    "UnlockEnd" INTEGER DEFAULT 0,
    "Suspicious" INTEGER DEFAULT 0,
    "SuspiciousStart" INTEGER DEFAULT 0,
    "Color" INTEGER DEFAULT 0,
    "Position" INTEGER DEFAULT 0,
    "Warehouse" INTEGER DEFAULT 0,
    "StackSize" INTEGER NOT NULL DEFAULT 0,
    "Inscribed" INTEGER NOT NULL DEFAULT 0,
    "agate" TEXT,
    "RefineryStarted" INTEGER NOT NULL DEFAULT 0,
    "RefineryPercent" INTEGER NOT NULL DEFAULT 0,
    "RefineryLevel" INTEGER NOT NULL DEFAULT 0,
    "RefineryItem" INTEGER NOT NULL DEFAULT 0,
    "RefineryTime" INTEGER NOT NULL DEFAULT 0,
    "NextSteedColor" INTEGER NOT NULL DEFAULT 0,
    "EndTime" INTEGER DEFAULT 0,
    "BasePrice" INTEGER NOT NULL DEFAULT 0,
    "BidderUID" INTEGER NOT NULL DEFAULT 0,
    "FixedPrice" INTEGER NOT NULL DEFAULT 0,
    "MoneyType" INTEGER NOT NULL DEFAULT 0,
    "SellerUID" INTEGER NOT NULL DEFAULT 0,
    "Time" INTEGER NOT NULL DEFAULT 0,
    "SellerName" VARCHAR(16) NOT NULL DEFAULT '',
    "BidderName" VARCHAR(16) NOT NULL DEFAULT ''
);

DROP TABLE IF EXISTS "bannedips" CASCADE;
CREATE TABLE "bannedips" (
    "ip_int" INTEGER NOT NULL,
    "ip" VARCHAR(16) NOT NULL,
    PRIMARY KEY ("ip_int")
);

DROP TABLE IF EXISTS "chi" CASCADE;
CREATE TABLE "chi" (
    "uid" INTEGER NOT NULL,
    "name" VARCHAR(32) NOT NULL,
    "points" INTEGER DEFAULT 0,
    "chipowers" BYTEA,
    PRIMARY KEY ("uid")
);

DROP TABLE IF EXISTS "chiretreat" CASCADE;
CREATE TABLE "chiretreat" (
    "uid" INTEGER NOT NULL,
    "chipowers" BYTEA,
    PRIMARY KEY ("uid")
);

DROP TABLE IF EXISTS "claimitems" CASCADE;
CREATE TABLE "claimitems" (
    "ItemUID" INTEGER NOT NULL DEFAULT 0,
    "Date" INTEGER DEFAULT NULL,
    "ConquerPointsCost" INTEGER DEFAULT NULL,
    "OwnerUID" INTEGER DEFAULT NULL,
    "OwnerName" VARCHAR(45) DEFAULT NULL,
    "GainerUID" INTEGER DEFAULT NULL,
    "GainerName" VARCHAR(45) DEFAULT NULL
);

DROP TABLE IF EXISTS "clanrelation" CASCADE;
CREATE TABLE "clanrelation" (
    "id" INTEGER NOT NULL,
    "clanid" INTEGER DEFAULT 0,
    "AssociatedId" INTEGER DEFAULT 0,
    "type" INTEGER DEFAULT 0,
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "clans" CASCADE;
CREATE TABLE "clans" (
    "Identifier" INTEGER NOT NULL DEFAULT 0,
    "LeaderId" INTEGER NOT NULL DEFAULT 0,
    "Name" VARCHAR(32) NOT NULL DEFAULT '0',
    "Fund" INTEGER NOT NULL DEFAULT 0,
    "Announcement" VARCHAR(255) NOT NULL DEFAULT 'This is new clan!',
    "BPTower" INTEGER NOT NULL DEFAULT 5,
    "Level" INTEGER NOT NULL DEFAULT 5,
    "LeaderName" VARCHAR(32) NOT NULL DEFAULT '0',
    "polekeeper" INTEGER NOT NULL DEFAULT 0,
    "ClanID" INTEGER DEFAULT NULL,
    PRIMARY KEY ("Identifier")
);

DROP TABLE IF EXISTS "configuration" CASCADE;
CREATE TABLE "configuration" (
    "ServerIP" TEXT NOT NULL DEFAULT '',
    "ServerPort" INTEGER NOT NULL DEFAULT 9958,
    "Server" VARCHAR(45) NOT NULL DEFAULT '',
    "EntityID" INTEGER DEFAULT 1000000,
    "ItemUID" INTEGER DEFAULT 1,
    "GuildID" INTEGER DEFAULT 1,
    "UnionID" INTEGER NOT NULL DEFAULT 0,
    "ServerKingdom" INTEGER NOT NULL DEFAULT 0,
    "SpellExperienceRate" INTEGER DEFAULT 1,
    "ExperienceRate" INTEGER DEFAULT 1,
    "ProficiencyExperienceRate" INTEGER DEFAULT 1,
    "MoneyDropRate" INTEGER DEFAULT 50,
    "ConquerPointsDropRate" INTEGER DEFAULT 10,
    "ItemDropRate" INTEGER DEFAULT 25,
    "ItemDropQualityString" VARCHAR(100) DEFAULT '50~20~15~10~5',
    "LastDailySignReset" INTEGER NOT NULL DEFAULT 0
);

DROP TABLE IF EXISTS "dailyquest" CASCADE;
CREATE TABLE "dailyquest" (
    "UID" INTEGER NOT NULL,
    "Name" VARCHAR(255) DEFAULT NULL,
    "DesertGurdian" INTEGER DEFAULT 0,
    "TowerOfMystery" INTEGER DEFAULT NULL,
    "TowerLevel" INTEGER DEFAULT NULL,
    "DayNumber" INTEGER DEFAULT NULL,
    PRIMARY KEY ("UID")
);

DROP TABLE IF EXISTS "dailyquests" CASCADE;
CREATE TABLE "dailyquests" (
    "UID" INTEGER NOT NULL DEFAULT 0,
    "ETHAPItemID" INTEGER NOT NULL DEFAULT 0,
    "ETHAPItemAmount" INTEGER NOT NULL DEFAULT 0,
    "SpiritBeadsCount" INTEGER NOT NULL DEFAULT 0,
    "SpiritBeadsType" INTEGER NOT NULL DEFAULT 0,
    "RareMaterialsAmount" INTEGER NOT NULL DEFAULT 0,
    "RareMaterialsItemID" INTEGER NOT NULL DEFAULT 0,
    "DidFirstHeavenTreasury" INTEGER NOT NULL DEFAULT 0,
    "TOMRC" INTEGER NOT NULL DEFAULT 3,
    "TOMQ" INTEGER NOT NULL DEFAULT 255,
    "TOM" INTEGER NOT NULL DEFAULT 0,
    "DidTOM" INTEGER NOT NULL DEFAULT 0,
    PRIMARY KEY ("UID")
);

DROP TABLE IF EXISTS "detaineditems" CASCADE;
CREATE TABLE "detaineditems" (
    "ItemUID" INTEGER NOT NULL DEFAULT 0,
    "Date" INTEGER DEFAULT NULL,
    "ConquerPointsCost" INTEGER DEFAULT NULL,
    "OwnerUID" INTEGER DEFAULT NULL,
    "OwnerName" VARCHAR(45) DEFAULT NULL,
    "GainerUID" INTEGER DEFAULT NULL,
    "GainerName" VARCHAR(45) DEFAULT NULL,
    "ID" INTEGER NOT NULL,
    PRIMARY KEY ("ItemUID")
);

DROP TABLE IF EXISTS "elitepk" CASCADE;
CREATE TABLE "elitepk" (
    "UID" INTEGER NOT NULL DEFAULT 0,
    "Avatar" INTEGER NOT NULL DEFAULT 0,
    "Name" VARCHAR(32) NOT NULL,
    "Mesh" INTEGER NOT NULL DEFAULT 0,
    "Points" INTEGER NOT NULL DEFAULT 0,
    "Postion" INTEGER NOT NULL DEFAULT 0,
    "MyTitle" INTEGER NOT NULL DEFAULT 0,
    PRIMARY KEY ("UID")
);

DROP TABLE IF EXISTS "enemy" CASCADE;
CREATE TABLE "enemy" (
    "EntityID" INTEGER NOT NULL DEFAULT 0,
    "EnemyID" INTEGER NOT NULL DEFAULT 0,
    "EnemyName" VARCHAR(45) NOT NULL DEFAULT ''
);

DROP TABLE IF EXISTS "entities" CASCADE;
CREATE TABLE "entities" (
    "Name" VARCHAR(16) NOT NULL DEFAULT '',
    "UID" INTEGER NOT NULL DEFAULT 0,
    "Owner" VARCHAR(45) NOT NULL DEFAULT '',
    "HairStyle" INTEGER DEFAULT 215,
    "Class" SMALLINT NOT NULL DEFAULT 10,
    "Money" INTEGER DEFAULT 100,
    "ConquerPoints" INTEGER DEFAULT 0,
    "Body" INTEGER NOT NULL DEFAULT 0,
    "Face" INTEGER NOT NULL DEFAULT 0,
    "Level" SMALLINT DEFAULT 1,
    "Strength" INTEGER DEFAULT 1,
    "Agility" INTEGER DEFAULT 1,
    "Vitality" INTEGER DEFAULT 1,
    "Spirit" INTEGER DEFAULT 0,
    "Atributes" INTEGER DEFAULT 0,
    "Hitpoints" INTEGER NOT NULL DEFAULT 93,
    "Mana" INTEGER DEFAULT 0,
    "MapID" INTEGER DEFAULT 1002,
    "X" INTEGER DEFAULT 300,
    "Y" INTEGER DEFAULT 278,
    "PKPoints" INTEGER DEFAULT 0,
    "Experience" INTEGER DEFAULT 0,
    "QuizPoints" INTEGER NOT NULL DEFAULT 0,
    "PreviousMapID" INTEGER DEFAULT 1002,
    "Spouse" VARCHAR(16) DEFAULT 'None',
    "WarehousePW" INTEGER DEFAULT NULL,
    "MoneySave" INTEGER DEFAULT 0,
    "FirstRebornClass" SMALLINT DEFAULT 0,
    "SecondRebornClass" SMALLINT DEFAULT 0,
    "FirstRebornLevel" SMALLINT DEFAULT 0,
    "SecondRebornLevel" SMALLINT DEFAULT 0,
    "Online" SMALLINT DEFAULT 0,
    "EnlightenPoints" INTEGER DEFAULT 0,
    "DoubleExpTime" INTEGER DEFAULT 0,
    "HeavenBlessingTime" INTEGER DEFAULT 0,
    "BlessTime" INTEGER DEFAULT 0,
    "LastDragonBallUse" INTEGER DEFAULT 0,
    "LastResetTime" INTEGER DEFAULT 0,
    "EnlightsReceived" SMALLINT DEFAULT 0,
    "EnlightmentWait" INTEGER DEFAULT 0,
    "DoubleExpToday" SMALLINT DEFAULT 0,
    "GuildID" INTEGER DEFAULT 0,
    "GuildRank" INTEGER DEFAULT 0,
    "GuildSilverDonation" INTEGER DEFAULT 0,
    "GuildConquerPointDonation" INTEGER DEFAULT 0,
    "VIPLevel" SMALLINT DEFAULT 0,
    "VirtuePoints" INTEGER DEFAULT 0,
    "LotteryEntries" INTEGER DEFAULT 0,
    "PreviousX" INTEGER DEFAULT 0,
    "PreviousY" INTEGER DEFAULT 0,
    "OfflineTGEnterTime" INTEGER DEFAULT 0,
    "ExpBalls" INTEGER DEFAULT 0,
    "ClanId" INTEGER DEFAULT 0,
    "ClanDonation" INTEGER DEFAULT 0,
    "ClanRank" INTEGER DEFAULT 0,
    "SubClass" INTEGER NOT NULL DEFAULT 0,
    "SubClassLevel" INTEGER NOT NULL DEFAULT 0,
    "StudyPoints" INTEGER DEFAULT 0,
    "My_Title" INTEGER NOT NULL DEFAULT 0,
    "EditNameTimes" INTEGER NOT NULL DEFAULT 5,
    "CountryID" INTEGER DEFAULT 0,
    "Achievement" VARCHAR(255) DEFAULT NULL,
    "CTFCpsReward" INTEGER DEFAULT NULL,
    "CTFSilverReward" INTEGER DEFAULT NULL,
    "RacePoints" INTEGER NOT NULL DEFAULT 0,
    "BoundCPs" INTEGER DEFAULT 0,
    "GuildArsenalDonation" INTEGER DEFAULT NULL,
    "GuildLastLogin" INTEGER DEFAULT NULL,
    "ExtraInventory" INTEGER DEFAULT 0,
    "Exploits" INTEGER DEFAULT 0,
    "GLCTF" INTEGER NOT NULL DEFAULT 0,
    "OnlineTrainning" INTEGER DEFAULT NULL,
    "HuntingExp" INTEGER NOT NULL DEFAULT 0,
    "FirstCredit" SMALLINT NOT NULL DEFAULT 0,
    "AnsweredKingdomQuiz" SMALLINT NOT NULL DEFAULT 0,
    "StarterPackLevel" SMALLINT NOT NULL DEFAULT 0,
    "NormalGems" INTEGER NOT NULL DEFAULT 0,
    "UnionID" INTEGER NOT NULL DEFAULT 0,
    "Harem" INTEGER NOT NULL DEFAULT 0,
    "Offical" INTEGER NOT NULL DEFAULT 0,
    "Guards" INTEGER NOT NULL DEFAULT 0,
    "UnionExploits" INTEGER NOT NULL DEFAULT 0,
    "Merchant" INTEGER NOT NULL DEFAULT 0,
    "DidBrightFortune" INTEGER NOT NULL DEFAULT 0,
    "TotalPerfectionScore" INTEGER NOT NULL DEFAULT 0,
    "BlackList" TEXT NOT NULL DEFAULT '',
    "DailySignedDays" TEXT NOT NULL DEFAULT '',
    "DailySignRewards" INTEGER NOT NULL DEFAULT 0,
    "Wardrobe" VARCHAR(255) DEFAULT NULL,
    "DailySignVIPChances" INTEGER NOT NULL DEFAULT 10,
    "SwordSoul" INTEGER DEFAULT 0,
    "BansheeSpirit" INTEGER DEFAULT 0,
    PRIMARY KEY ("UID")
);

DROP TABLE IF EXISTS "flooritem" CASCADE;
CREATE TABLE "flooritem" (
    "ID" INTEGER NOT NULL DEFAULT 0,
    "Type" INTEGER NOT NULL DEFAULT 0,
    "Color" INTEGER NOT NULL DEFAULT 0,
    "MapID" INTEGER NOT NULL DEFAULT 0,
    "X" INTEGER NOT NULL DEFAULT 0,
    "Y" INTEGER NOT NULL DEFAULT 0,
    "Comment" TEXT
);

DROP TABLE IF EXISTS "friends" CASCADE;
CREATE TABLE "friends" (
    "EntityID" INTEGER NOT NULL DEFAULT 0,
    "FriendID" INTEGER NOT NULL DEFAULT 0,
    "FriendName" VARCHAR(20) NOT NULL DEFAULT '',
    "Message" TEXT
);

DROP TABLE IF EXISTS "furniture" CASCADE;
CREATE TABLE "furniture" (
    "id" INTEGER NOT NULL DEFAULT 0000,
    "NameOwner" VARCHAR(16) NOT NULL DEFAULT '',
    "type" INTEGER DEFAULT 0000,
    "lookface" INTEGER DEFAULT 0000,
    "mapid" INTEGER DEFAULT 0000,
    "cellx" INTEGER DEFAULT 0000,
    "celly" INTEGER DEFAULT 0000
);

DROP TABLE IF EXISTS "guild_arsenals" CASCADE;
CREATE TABLE "guild_arsenals" (
    "id" INTEGER NOT NULL,
    "guild_uid" INTEGER NOT NULL DEFAULT 0,
    "head_allowed" INTEGER NOT NULL,
    "armor_allowed" INTEGER NOT NULL,
    "weapon_allowed" INTEGER NOT NULL,
    "boots_allowed" INTEGER NOT NULL,
    "neck_allowed" INTEGER NOT NULL,
    "fan_allowed" INTEGER NOT NULL,
    "tower_allowed" INTEGER NOT NULL,
    "ring_allowed" INTEGER NOT NULL,
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "guild_arsenalsdonation" CASCADE;
CREATE TABLE "guild_arsenalsdonation" (
    "id" INTEGER NOT NULL,
    "d_uid" INTEGER NOT NULL DEFAULT 0,
    "guild_uid" INTEGER NOT NULL DEFAULT 0,
    "name" VARCHAR(36) NOT NULL DEFAULT 'None',
    "item_uid" INTEGER NOT NULL DEFAULT 0,
    "item_donation" INTEGER NOT NULL DEFAULT 0,
    "item_arsenal_type" INTEGER NOT NULL DEFAULT 0,
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "guildally" CASCADE;
CREATE TABLE "guildally" (
    "GuildID" INTEGER NOT NULL DEFAULT 0,
    "AllyID" INTEGER DEFAULT NULL
);

DROP TABLE IF EXISTS "guildarsenal" CASCADE;
CREATE TABLE "guildarsenal" (
    "id" INTEGER NOT NULL,
    "data" BYTEA,
    "datalength" INTEGER DEFAULT NULL,
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "guildenemy" CASCADE;
CREATE TABLE "guildenemy" (
    "GuildID" INTEGER NOT NULL DEFAULT 0,
    "EnemyID" INTEGER NOT NULL DEFAULT 0
);

DROP TABLE IF EXISTS "guilds" CASCADE;
CREATE TABLE "guilds" (
    "ID" INTEGER NOT NULL DEFAULT 0,
    "Name" VARCHAR(45) NOT NULL DEFAULT '',
    "Bulletin" VARCHAR(255) NOT NULL DEFAULT 'This is a new guild.',
    "SilverFund" INTEGER DEFAULT 500000,
    "ConquerPointFund" INTEGER DEFAULT 0,
    "Wins" INTEGER DEFAULT 0,
    "Losts" INTEGER DEFAULT 0,
    "LeaderName" VARCHAR(45) NOT NULL DEFAULT '0',
    "LevelRequirement" INTEGER DEFAULT 1,
    "RebornRequirement" INTEGER DEFAULT 0,
    "ClassRequirement" INTEGER DEFAULT 0,
    "CTFPoints" INTEGER DEFAULT 0,
    "CTFdonationCPs" INTEGER DEFAULT NULL,
    "CTFdonationSilver" INTEGER DEFAULT 0,
    "CTFdonationSilverold" INTEGER DEFAULT 0,
    "CTFdonationCPsold" INTEGER DEFAULT NULL,
    "CTFReward" INTEGER DEFAULT 0,
    "EnrollmentDate" INTEGER DEFAULT 0,
    "AnnouncementDate" INTEGER DEFAULT NULL,
    "AutoRecruit" INTEGER DEFAULT NULL,
    "adLevelRequirement" INTEGER DEFAULT NULL,
    "adRebornRequirement" INTEGER DEFAULT NULL,
    "adClassRequirement" INTEGER DEFAULT NULL,
    "PoleKeeper" INTEGER DEFAULT 0,
    "UnionID" INTEGER NOT NULL DEFAULT 0,
    PRIMARY KEY ("ID")
);

DROP TABLE IF EXISTS "house" CASCADE;
CREATE TABLE "house" (
    "ID" INTEGER NOT NULL DEFAULT 0,
    "Map" INTEGER NOT NULL DEFAULT 0,
    "Type" INTEGER DEFAULT 0000,
    "Weather" INTEGER DEFAULT 0000,
    "Owner" INTEGER DEFAULT 0,
    "HouseLevel" INTEGER DEFAULT 0,
    "Name" VARCHAR(16) DEFAULT NULL,
    PRIMARY KEY ("ID")
);

DROP TABLE IF EXISTS "inner_power" CASCADE;
CREATE TABLE "inner_power" (
    "UID" INTEGER NOT NULL,
    "Name" VARCHAR(32) NOT NULL,
    "Powers" BYTEA NOT NULL,
    PRIMARY KEY ("UID")
);

DROP TABLE IF EXISTS "itemadding" CASCADE;
CREATE TABLE "itemadding" (
    "iditemadding" INTEGER NOT NULL,
    "uid" INTEGER DEFAULT NULL,
    "addingtype" INTEGER DEFAULT NULL,
    "addingid" INTEGER DEFAULT NULL,
    "addinglevel" INTEGER DEFAULT NULL,
    "addingpercent" INTEGER DEFAULT NULL,
    "duration" INTEGER DEFAULT NULL,
    "addedon" INTEGER DEFAULT NULL,
    "stabilizationpoints" INTEGER DEFAULT NULL,
    PRIMARY KEY ("iditemadding")
);

DROP TABLE IF EXISTS "items" CASCADE;
CREATE TABLE "items" (
    "EntityID" INTEGER NOT NULL DEFAULT 0,
    "ID" INTEGER NOT NULL DEFAULT 0,
    "UID" INTEGER NOT NULL DEFAULT 0,
    "Plus" INTEGER DEFAULT 0,
    "Bless" INTEGER DEFAULT 0,
    "Enchant" INTEGER NOT NULL DEFAULT 0,
    "SocketOne" INTEGER DEFAULT 0,
    "SocketTwo" INTEGER DEFAULT 0,
    "Durability" INTEGER NOT NULL DEFAULT 0,
    "MaximDurability" INTEGER NOT NULL DEFAULT 0,
    "SocketProgress" INTEGER DEFAULT 0,
    "PlusProgress" INTEGER DEFAULT 0,
    "Effect" INTEGER DEFAULT 0,
    "Bound" INTEGER DEFAULT 0,
    "Locked" INTEGER DEFAULT 0,
    "UnlockEnd" INTEGER DEFAULT 0,
    "Suspicious" INTEGER DEFAULT 0,
    "SuspiciousStart" INTEGER DEFAULT 0,
    "Color" INTEGER DEFAULT 0,
    "Position" INTEGER DEFAULT 0,
    "Warehouse" INTEGER DEFAULT 0,
    "StackSize" INTEGER NOT NULL DEFAULT 0,
    "Inscribed" INTEGER NOT NULL DEFAULT 0,
    "agate" TEXT,
    "RefineryStarted" INTEGER NOT NULL DEFAULT 0,
    "RefineryPercent" INTEGER NOT NULL DEFAULT 0,
    "RefineryLevel" INTEGER NOT NULL DEFAULT 0,
    "RefineryItem" INTEGER NOT NULL DEFAULT 0,
    "RefineryTime" INTEGER NOT NULL DEFAULT 0,
    "NextSteedColor" INTEGER NOT NULL DEFAULT 0,
    "InWardrobe" INTEGER NOT NULL DEFAULT 0,
    "MinutesLeft" INTEGER NOT NULL,
    "TimeStamp" INTEGER NOT NULL,
    "PerfectionProgress" INTEGER NOT NULL DEFAULT 0,
    "Stars" INTEGER NOT NULL DEFAULT 0,
    "Owner" VARCHAR(16) NOT NULL DEFAULT '',
    "OwnerUID" INTEGER NOT NULL DEFAULT 0,
    "Signature" VARCHAR(16) NOT NULL DEFAULT '',
    PRIMARY KEY ("UID")
);

DROP TABLE IF EXISTS "jiang" CASCADE;
CREATE TABLE "jiang" (
    "UID" INTEGER NOT NULL,
    "OwnName" VARCHAR(32) NOT NULL,
    "CustomizedName" VARCHAR(32) NOT NULL,
    "Powers" BYTEA NOT NULL
);

DROP TABLE IF EXISTS "josephvariable" CASCADE;
CREATE TABLE "josephvariable" (
    "ID" VARCHAR(255) NOT NULL,
    "data" BYTEA NOT NULL,
    PRIMARY KEY ("ID")
);

DROP TABLE IF EXISTS "kingdommission" CASCADE;
CREATE TABLE "kingdommission" (
    "UID" INTEGER NOT NULL DEFAULT 0,
    "StrikePoints" INTEGER NOT NULL DEFAULT 0,
    "KingdomDeeds" INTEGER NOT NULL DEFAULT 0,
    "CompletedUndercover" INTEGER NOT NULL DEFAULT 0,
    "TodayStrikePoints" INTEGER NOT NULL DEFAULT 0,
    PRIMARY KEY ("UID")
);

DROP TABLE IF EXISTS "lottery" CASCADE;
CREATE TABLE "lottery" (
    "id" INTEGER NOT NULL DEFAULT 0,
    "type" INTEGER NOT NULL DEFAULT 0,
    "rank" SMALLINT NOT NULL DEFAULT 0,
    "chance" INTEGER NOT NULL DEFAULT 0,
    "prize_name" CHAR(32) NOT NULL DEFAULT '',
    "prize_item" INTEGER NOT NULL DEFAULT 0,
    "color" SMALLINT NOT NULL DEFAULT 0,
    "hole_num" SMALLINT NOT NULL DEFAULT 0,
    "addition_lev" SMALLINT NOT NULL DEFAULT 0,
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "maps" CASCADE;
CREATE TABLE "maps" (
    "id" INTEGER NOT NULL DEFAULT 0,
    "mapdoc" INTEGER NOT NULL DEFAULT 0,
    "type" INTEGER DEFAULT 0000,
    "weather" INTEGER DEFAULT 0000,
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "monsterinfos" CASCADE;
CREATE TABLE "monsterinfos" (
    "id" INTEGER NOT NULL DEFAULT 0000,
    "name" VARCHAR(16) NOT NULL DEFAULT '',
    "type" INTEGER NOT NULL DEFAULT 0000,
    "lookface" INTEGER NOT NULL DEFAULT 0000,
    "life" INTEGER NOT NULL DEFAULT 00,
    "mana" INTEGER NOT NULL DEFAULT 00,
    "attack_max" INTEGER NOT NULL DEFAULT 0,
    "attack_min" INTEGER NOT NULL DEFAULT 0000,
    "defence" INTEGER NOT NULL DEFAULT 0000,
    "attack_range" INTEGER NOT NULL DEFAULT 0000,
    "view_range" INTEGER NOT NULL DEFAULT 0000,
    "attack_speed" INTEGER NOT NULL DEFAULT 0000,
    "move_speed" INTEGER NOT NULL DEFAULT 0000,
    "level" INTEGER NOT NULL DEFAULT 0000,
    "attack_user" INTEGER NOT NULL DEFAULT 3,
    "run_speed" INTEGER NOT NULL DEFAULT 0000,
    "magic_type" INTEGER NOT NULL DEFAULT 0000,
    "extra_exp" INTEGER NOT NULL DEFAULT 0,
    "ownitem" INTEGER DEFAULT 0,
    "ownitemrate" INTEGER DEFAULT 0,
    "ownitem2" INTEGER DEFAULT 0,
    "ownitemrate2" INTEGER DEFAULT 0,
    "ownitem3" INTEGER DEFAULT 0,
    "ownitemrate3" INTEGER DEFAULT 0,
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "monsterspawns" CASCADE;
CREATE TABLE "monsterspawns" (
    "id" INTEGER NOT NULL,
    "mapid" INTEGER NOT NULL DEFAULT 0000,
    "bound_x" INTEGER NOT NULL DEFAULT 0000,
    "bound_y" INTEGER NOT NULL DEFAULT 0000,
    "bound_cx" INTEGER NOT NULL DEFAULT 0000,
    "bound_cy" INTEGER NOT NULL DEFAULT 0000,
    "maxnpc" INTEGER NOT NULL DEFAULT 0000,
    "rest_secs" INTEGER NOT NULL DEFAULT 0000,
    "max_per_gen" INTEGER NOT NULL DEFAULT 0000,
    "npctype" INTEGER NOT NULL DEFAULT 0000,
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "nobility" CASCADE;
CREATE TABLE "nobility" (
    "EntityName" VARCHAR(16) NOT NULL DEFAULT '',
    "EntityUID" INTEGER NOT NULL DEFAULT 0,
    "Donation" INTEGER DEFAULT 0,
    "Gender" SMALLINT NOT NULL DEFAULT 0,
    "Mesh" INTEGER NOT NULL DEFAULT 0,
    PRIMARY KEY ("EntityUID")
);

DROP TABLE IF EXISTS "npcs" CASCADE;
CREATE TABLE "npcs" (
    "id" INTEGER NOT NULL DEFAULT 0000,
    "name" VARCHAR(255) NOT NULL DEFAULT '',
    "type" INTEGER DEFAULT 0000,
    "lookface" INTEGER DEFAULT 0000,
    "mapid" INTEGER DEFAULT 0000,
    "cellx" INTEGER DEFAULT 0000,
    "celly" INTEGER DEFAULT 0000,
    "task0" INTEGER DEFAULT 0000,
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "partners" CASCADE;
CREATE TABLE "partners" (
    "EntityID" INTEGER NOT NULL DEFAULT 0,
    "PartnerID" INTEGER NOT NULL DEFAULT 0,
    "PartnerName" VARCHAR(45) NOT NULL DEFAULT '',
    "ProbationStartedOn" INTEGER NOT NULL DEFAULT 0
);

DROP TABLE IF EXISTS "pk_explorer" CASCADE;
CREATE TABLE "pk_explorer" (
    "id" INTEGER NOT NULL,
    "uid" INTEGER NOT NULL DEFAULT 0,
    "killed_uid" INTEGER NOT NULL DEFAULT 0,
    "killed_name" VARCHAR(100) NOT NULL DEFAULT 'None',
    "killed_map" VARCHAR(100) NOT NULL DEFAULT 'None',
    "lost_exp" INTEGER NOT NULL,
    "times" INTEGER NOT NULL,
    "battle_power" INTEGER NOT NULL,
    "level" INTEGER NOT NULL DEFAULT 0,
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "prizes" CASCADE;
CREATE TABLE "prizes" (
    "UID" INTEGER NOT NULL,
    "Name" VARCHAR(32) NOT NULL,
    "Prizes" BYTEA,
    PRIMARY KEY ("UID")
);

DROP TABLE IF EXISTS "profs" CASCADE;
CREATE TABLE "profs" (
    "EntityID" INTEGER NOT NULL DEFAULT 0,
    "ID" INTEGER NOT NULL DEFAULT 0,
    "Level" INTEGER NOT NULL DEFAULT 0,
    "Experience" INTEGER DEFAULT 0,
    "PreviousLevel" INTEGER DEFAULT 0,
    "TempLevel" INTEGER DEFAULT 0
);

DROP TABLE IF EXISTS "quests" CASCADE;
CREATE TABLE "quests" (
    "UID" INTEGER NOT NULL,
    "Name" VARCHAR(32) NOT NULL,
    "quests" BYTEA,
    PRIMARY KEY ("UID")
);

DROP TABLE IF EXISTS "rates" CASCADE;
CREATE TABLE "rates" (
    "GuildWar" INTEGER DEFAULT 0,
    "EliteGw" INTEGER DEFAULT 0,
    "TopSpouse" INTEGER DEFAULT 0,
    "DailyPk" INTEGER DEFAULT 0,
    "LastMan" INTEGER DEFAULT 0,
    "Riencration" INTEGER DEFAULT 0,
    "kings" INTEGER DEFAULT 0,
    "prince" INTEGER DEFAULT 0,
    "HousePromete" INTEGER DEFAULT 0,
    "HouseUpgrade" INTEGER DEFAULT 0,
    "ItemBox" INTEGER DEFAULT 0,
    "ServerWebsite" CHAR(255) DEFAULT '0',
    "ServerName" CHAR(255) NOT NULL DEFAULT '0',
    "LoginSite" CHAR(255) NOT NULL DEFAULT '0',
    "MaxCps" INTEGER DEFAULT 0,
    "MiniCps" INTEGER DEFAULT 0,
    "CpsMethod" CHAR(45) DEFAULT '0',
    "CpsMethodNum" CHAR(45) DEFAULT NULL,
    "ClassPk" INTEGER DEFAULT 0,
    "WeeklyPk" INTEGER DEFAULT 0,
    "Coder" CHAR(45) NOT NULL DEFAULT '0',
    "CryptKey" CHAR(255) NOT NULL DEFAULT '0',
    "ChangeName" INTEGER NOT NULL DEFAULT 0,
    "MonthlyPk" INTEGER NOT NULL DEFAULT 0,
    "SteedRace" INTEGER NOT NULL DEFAULT 0,
    "elitepk" INTEGER NOT NULL DEFAULT 0,
    "RemoveBound" INTEGER NOT NULL DEFAULT 0,
    "BotJail" INTEGER NOT NULL DEFAULT 0,
    "TreasureLow" INTEGER NOT NULL DEFAULT 0,
    "TreasureMin" INTEGER NOT NULL DEFAULT 0,
    "TreasureMax" INTEGER NOT NULL DEFAULT 0,
    "SnowBanshe" INTEGER NOT NULL DEFAULT 0,
    "ThrillingSpook" INTEGER NOT NULL DEFAULT 0,
    "TeratoDragon" INTEGER NOT NULL DEFAULT 0,
    "LevelUp" INTEGER NOT NULL DEFAULT 0,
    "DamageGarment" INTEGER NOT NULL DEFAULT 0,
    "DamageTails" INTEGER NOT NULL DEFAULT 0,
    "SoulP6" INTEGER NOT NULL DEFAULT 0,
    "VoteUrl" CHAR(255) NOT NULL DEFAULT '0',
    "VotePrize" INTEGER NOT NULL DEFAULT 0,
    "Mount" INTEGER NOT NULL DEFAULT 0,
    "Steed" INTEGER NOT NULL DEFAULT 0,
    "Garment" INTEGER NOT NULL DEFAULT 0,
    "Weather" INTEGER NOT NULL DEFAULT 0,
    "Night" INTEGER NOT NULL DEFAULT 0,
    "SkillTeam" INTEGER NOT NULL DEFAULT 0,
    "CaptureFlag" INTEGER NOT NULL DEFAULT 0,
    "DemonCave" INTEGER NOT NULL DEFAULT 0,
    "PartyDrop" INTEGER NOT NULL DEFAULT 0,
    "plus13" INTEGER NOT NULL DEFAULT 0,
    "plus14" INTEGER NOT NULL DEFAULT 0,
    "plus15" INTEGER NOT NULL DEFAULT 0,
    "KoCount" INTEGER NOT NULL DEFAULT 0,
    "LastItem" INTEGER NOT NULL DEFAULT 0,
    "LastEntity" INTEGER NOT NULL DEFAULT 0,
    "Clanwar" INTEGER NOT NULL,
    "Treasurebox" INTEGER NOT NULL,
    "SSFB" INTEGER NOT NULL,
    "NormalQuests" INTEGER NOT NULL,
    PRIMARY KEY ("ServerName")
);

DROP TABLE IF EXISTS "refinery" CASCADE;
CREATE TABLE "refinery" (
    "identifier" INTEGER NOT NULL DEFAULT 0,
    "refinetype" INTEGER NOT NULL,
    "position" INTEGER NOT NULL,
    "level" INTEGER NOT NULL,
    "percent" INTEGER NOT NULL,
    "untradable" INTEGER NOT NULL DEFAULT 0,
    PRIMARY KEY ("identifier")
);

DROP TABLE IF EXISTS "refineryboxes" CASCADE;
CREATE TABLE "refineryboxes" (
    "Identifier" INTEGER NOT NULL DEFAULT 0,
    "Refinetype" INTEGER NOT NULL DEFAULT 0,
    "Position" INTEGER NOT NULL DEFAULT 0,
    "Untradable" INTEGER NOT NULL DEFAULT 0,
    PRIMARY KEY ("Identifier")
);

DROP TABLE IF EXISTS "reincarnation" CASCADE;
CREATE TABLE "reincarnation" (
    "id" INTEGER NOT NULL,
    "uid" INTEGER NOT NULL DEFAULT 0,
    "level" INTEGER NOT NULL DEFAULT 0,
    "experience" INTEGER NOT NULL DEFAULT 0,
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "servergift" CASCADE;
CREATE TABLE "servergift" (
    "UID" VARCHAR(255) NOT NULL,
    "Username" VARCHAR(255) NOT NULL,
    "Claimed" INTEGER DEFAULT NULL,
    "MacAddress" VARCHAR(255) NOT NULL,
    "RegistrationTime" TIMESTAMP DEFAULT NULL
);

DROP TABLE IF EXISTS "skills" CASCADE;
CREATE TABLE "skills" (
    "EntityID" INTEGER NOT NULL DEFAULT 0,
    "ID" INTEGER NOT NULL DEFAULT 0,
    "Level" INTEGER NOT NULL DEFAULT 0,
    "Experience" INTEGER DEFAULT 0,
    "PreviousLevel" INTEGER DEFAULT 0,
    "TempLevel" INTEGER DEFAULT 0,
    "LevelHu" INTEGER NOT NULL DEFAULT 0
);

DROP TABLE IF EXISTS "skillteampk" CASCADE;
CREATE TABLE "skillteampk" (
    "UID" INTEGER NOT NULL DEFAULT 0,
    "Avatar" INTEGER NOT NULL DEFAULT 0,
    "Name" CHAR(32) NOT NULL DEFAULT '',
    "Mesh" INTEGER NOT NULL DEFAULT 0,
    "Points" INTEGER NOT NULL DEFAULT 0,
    "Postion" INTEGER NOT NULL DEFAULT 0,
    "MyTitle" INTEGER NOT NULL DEFAULT 0,
    PRIMARY KEY ("UID")
);

DROP TABLE IF EXISTS "sobnpcs" CASCADE;
CREATE TABLE "sobnpcs" (
    "id" INTEGER NOT NULL,
    "name" VARCHAR(16) NOT NULL DEFAULT '',
    "type" INTEGER DEFAULT 00,
    "lookface" INTEGER DEFAULT 0000,
    "mapid" INTEGER DEFAULT 0000,
    "cellx" INTEGER DEFAULT 00,
    "celly" INTEGER DEFAULT 00,
    "life" INTEGER DEFAULT 0000,
    "maxlife" INTEGER DEFAULT 0000,
    "base" INTEGER DEFAULT 0000,
    "sort" INTEGER DEFAULT 00,
    "showname" INTEGER DEFAULT 0,
    "prize" INTEGER NOT NULL DEFAULT 0,
    "effect" VARCHAR(16) NOT NULL,
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "spells" CASCADE;
CREATE TABLE "spells" (
    "id" INTEGER NOT NULL,
    "type" INTEGER NOT NULL DEFAULT 0000,
    "sort" INTEGER NOT NULL DEFAULT 0000,
    "name" VARCHAR(30) NOT NULL DEFAULT '',
    "crime" SMALLINT NOT NULL DEFAULT 0,
    "ground" SMALLINT NOT NULL DEFAULT 0,
    "multi" SMALLINT NOT NULL DEFAULT 0,
    "target" INTEGER NOT NULL DEFAULT 0000,
    "level" INTEGER NOT NULL DEFAULT 0000,
    "use_mp" INTEGER NOT NULL DEFAULT 0000,
    "power" INTEGER NOT NULL DEFAULT 0,
    "intone_speed" INTEGER NOT NULL DEFAULT 0000,
    "percent" INTEGER NOT NULL DEFAULT 0100,
    "step_secs" INTEGER NOT NULL DEFAULT 0000,
    "range" INTEGER NOT NULL DEFAULT 0000,
    "distance" INTEGER NOT NULL DEFAULT 0000,
    "status" INTEGER NOT NULL DEFAULT 0000,
    "need_prof" INTEGER NOT NULL DEFAULT 0000,
    "need_exp" INTEGER NOT NULL DEFAULT 0,
    "need_level" INTEGER NOT NULL DEFAULT 0000,
    "use_xp" SMALLINT NOT NULL DEFAULT 0,
    "weapon_subtype" INTEGER NOT NULL DEFAULT 0000,
    "active_times" INTEGER NOT NULL DEFAULT 0000,
    "auto_active" SMALLINT NOT NULL DEFAULT 0,
    "floor_attr" INTEGER NOT NULL DEFAULT 0000,
    "auto_learn" SMALLINT NOT NULL DEFAULT 0,
    "learn_level" INTEGER NOT NULL DEFAULT 0000,
    "drop_weapon" SMALLINT NOT NULL DEFAULT 0,
    "use_ep" INTEGER NOT NULL DEFAULT 0000,
    "weapon_hit" SMALLINT NOT NULL DEFAULT 0,
    "use_item" INTEGER NOT NULL DEFAULT 0000,
    "next_magic" INTEGER NOT NULL DEFAULT 0000,
    "delay_ms" INTEGER NOT NULL DEFAULT 0000,
    "use_item_num" INTEGER NOT NULL DEFAULT 0001,
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "status" CASCADE;
CREATE TABLE "status" (
    "id" INTEGER NOT NULL,
    "EntityID" INTEGER NOT NULL DEFAULT 0,
    "status" INTEGER NOT NULL DEFAULT 0,
    "time" INTEGER DEFAULT 0,
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "subclasses" CASCADE;
CREATE TABLE "subclasses" (
    "unique" INTEGER NOT NULL,
    "id" INTEGER NOT NULL DEFAULT 0,
    "uid" INTEGER NOT NULL DEFAULT 1,
    "phase" INTEGER NOT NULL DEFAULT 1,
    "level" INTEGER NOT NULL DEFAULT 1,
    PRIMARY KEY ("unique")
);

DROP TABLE IF EXISTS "teamarena" CASCADE;
CREATE TABLE "teamarena" (
    "EntityID" INTEGER NOT NULL,
    "EntityName" VARCHAR(45) NOT NULL,
    "ArenaPoints" INTEGER DEFAULT 0,
    "ActivityPoints" INTEGER DEFAULT 0,
    "TodayWin" INTEGER DEFAULT 0,
    "TodayBattles" INTEGER DEFAULT 0,
    "TotalWin" INTEGER DEFAULT 0,
    "TotalLose" INTEGER DEFAULT 0,
    "CurrentHonor" INTEGER DEFAULT 0,
    "HistoryHonor" INTEGER DEFAULT 0,
    "LastSeasonRank" INTEGER DEFAULT 0,
    "Level" INTEGER DEFAULT 0,
    "Class" INTEGER DEFAULT 0,
    "ArenaPointFill" INTEGER DEFAULT 0,
    "Model" INTEGER DEFAULT 0,
    "LastSeasonArenaPoints" INTEGER DEFAULT 0,
    "LastSeasonWin" INTEGER DEFAULT 0,
    "LastSeasonLose" INTEGER DEFAULT 0,
    PRIMARY KEY ("EntityID")
);

DROP TABLE IF EXISTS "teampk" CASCADE;
CREATE TABLE "teampk" (
    "UID" INTEGER NOT NULL DEFAULT 0,
    "Avatar" INTEGER NOT NULL DEFAULT 0,
    "Name" CHAR(32) NOT NULL DEFAULT '',
    "Mesh" INTEGER NOT NULL DEFAULT 0,
    "Points" INTEGER NOT NULL DEFAULT 0,
    "Postion" INTEGER NOT NULL DEFAULT 0,
    "MyTitle" INTEGER NOT NULL DEFAULT 0,
    PRIMARY KEY ("UID")
);

DROP TABLE IF EXISTS "titles" CASCADE;
CREATE TABLE "titles" (
    "Id" INTEGER NOT NULL DEFAULT 0,
    "Points" INTEGER NOT NULL DEFAULT 500,
    "Data" BYTEA,
    "Time" INTEGER DEFAULT 0,
    PRIMARY KEY ("Id")
);

DROP TABLE IF EXISTS "unions" CASCADE;
CREATE TABLE "unions" (
    "ID" INTEGER NOT NULL DEFAULT 0,
    "GoldBricks" INTEGER NOT NULL DEFAULT 0,
    "UnionFund" INTEGER NOT NULL DEFAULT 0,
    "Name" VARCHAR(255) NOT NULL DEFAULT '',
    "Title" VARCHAR(255) NOT NULL DEFAULT '',
    "LeaderName" VARCHAR(255) NOT NULL DEFAULT '',
    "Bulletin" VARCHAR(255) NOT NULL DEFAULT '',
    "Declaration" VARCHAR(255) NOT NULL DEFAULT '',
    "LeaderUID" INTEGER NOT NULL DEFAULT 0,
    "CoreOfficals" VARCHAR(999) NOT NULL DEFAULT '0#0#0#0#0#0#0#0',
    "Harem" VARCHAR(999) NOT NULL DEFAULT '0#0#0#0#0#0#0#0#0#0',
    "Guards" VARCHAR(999) NOT NULL DEFAULT '0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0',
    PRIMARY KEY ("ID")
);

DROP TABLE IF EXISTS "variablevault" CASCADE;
CREATE TABLE "variablevault" (
    "entityid" INTEGER NOT NULL,
    "data" BYTEA,
    PRIMARY KEY ("entityid")
);

DROP TABLE IF EXISTS "way2heroes" CASCADE;
CREATE TABLE "way2heroes" (
    "UID" INTEGER NOT NULL,
    "Name" VARCHAR(32) NOT NULL,
    "Way2Heroes" BYTEA,
    PRIMARY KEY ("UID")
);

-- Performance indexes
CREATE INDEX idx_entities_uid ON "entities"("UID");
CREATE INDEX idx_entities_name ON "entities"("Name");
CREATE INDEX idx_entities_guild ON "entities"("GuildID");
CREATE INDEX idx_entities_clan ON "entities"("ClanId");
CREATE INDEX idx_entities_online ON "entities"("Online");
CREATE INDEX idx_entities_map ON "entities"("MapID");
CREATE INDEX idx_items_uid ON "items"("UID");
CREATE INDEX idx_items_entity ON "items"("EntityID");
CREATE INDEX idx_skills_entity ON "skills"("EntityID");
CREATE INDEX idx_profs_entity ON "profs"("EntityID");
CREATE INDEX idx_npcs_map ON "npcs"("mapid");
CREATE INDEX idx_sobnpcs_map ON "sobnpcs"("mapid");
CREATE INDEX idx_monsterinfos_id ON "monsterinfos"("id");
