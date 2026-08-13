/*
 Navicat Premium Dump SQL

 Source Server         : localhost_5432
 Source Server Type    : PostgreSQL
 Source Server Version : 180004 (180004)
 Source Host           : localhost:5432
 Source Catalog        : nyx
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 180004 (180004)
 File Encoding         : 65001

 Date: 03/07/2026 18:04:49
*/


-- ----------------------------
-- Table structure for entities
-- ----------------------------
DROP TABLE IF EXISTS "public"."entities";
CREATE TABLE "public"."entities" (
  "Name" varchar(16) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "UID" int4 NOT NULL DEFAULT 0,
  "Owner" varchar(45) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "HairStyle" int4 DEFAULT 215,
  "Class" int2 NOT NULL DEFAULT 10,
  "Money" int4 DEFAULT 100,
  "ConquerPoints" int4 DEFAULT 0,
  "Body" int4 NOT NULL DEFAULT 0,
  "Face" int4 NOT NULL DEFAULT 0,
  "Level" int2 DEFAULT 1,
  "Strength" int4 DEFAULT 1,
  "Agility" int4 DEFAULT 1,
  "Vitality" int4 DEFAULT 1,
  "Spirit" int4 DEFAULT 0,
  "Atributes" int4 DEFAULT 0,
  "Hitpoints" int4 NOT NULL DEFAULT 93,
  "Mana" int4 DEFAULT 0,
  "MapID" int4 DEFAULT 1002,
  "X" int4 DEFAULT 300,
  "Y" int4 DEFAULT 278,
  "PKPoints" int4 DEFAULT 0,
  "Experience" int4 DEFAULT 0,
  "QuizPoints" int4 NOT NULL DEFAULT 0,
  "PreviousMapID" int4 DEFAULT 1002,
  "Spouse" varchar(16) COLLATE "pg_catalog"."default" DEFAULT 'None'::character varying,
  "WarehousePW" int4,
  "MoneySave" int4 DEFAULT 0,
  "FirstRebornClass" int2 DEFAULT 0,
  "SecondRebornClass" int2 DEFAULT 0,
  "FirstRebornLevel" int2 DEFAULT 0,
  "SecondRebornLevel" int2 DEFAULT 0,
  "Online" int2 DEFAULT 0,
  "EnlightenPoints" int4 DEFAULT 0,
  "DoubleExpTime" int4 DEFAULT 0,
  "HeavenBlessingTime" int4 DEFAULT 0,
  "BlessTime" int4 DEFAULT 0,
  "LastDragonBallUse" int4 DEFAULT 0,
  "LastResetTime" int4 DEFAULT 0,
  "EnlightsReceived" int2 DEFAULT 0,
  "EnlightmentWait" int4 DEFAULT 0,
  "DoubleExpToday" int2 DEFAULT 0,
  "GuildID" int4 DEFAULT 0,
  "GuildRank" int4 DEFAULT 0,
  "GuildSilverDonation" int4 DEFAULT 0,
  "GuildConquerPointDonation" int4 DEFAULT 0,
  "VIPLevel" int2 DEFAULT 0,
  "VirtuePoints" int4 DEFAULT 0,
  "LotteryEntries" int4 DEFAULT 0,
  "PreviousX" int4 DEFAULT 0,
  "PreviousY" int4 DEFAULT 0,
  "OfflineTGEnterTime" int4 DEFAULT 0,
  "ExpBalls" int4 DEFAULT 0,
  "ClanId" int4 DEFAULT 0,
  "ClanDonation" int4 DEFAULT 0,
  "ClanRank" int4 DEFAULT 0,
  "SubClass" int4 NOT NULL DEFAULT 0,
  "SubClassLevel" int4 NOT NULL DEFAULT 0,
  "StudyPoints" int4 DEFAULT 0,
  "My_Title" int4 NOT NULL DEFAULT 0,
  "EditNameTimes" int4 NOT NULL DEFAULT 5,
  "CountryID" int4 DEFAULT 0,
  "Achievement" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "CTFCpsReward" int4,
  "CTFSilverReward" int4,
  "RacePoints" int4 NOT NULL DEFAULT 0,
  "BoundCPs" int4 DEFAULT 0,
  "GuildArsenalDonation" int4,
  "GuildLastLogin" int4,
  "ExtraInventory" int4 DEFAULT 0,
  "Exploits" int4 DEFAULT 0,
  "GLCTF" int4 NOT NULL DEFAULT 0,
  "OnlineTrainning" int4,
  "HuntingExp" int4 NOT NULL DEFAULT 0,
  "FirstCredit" int2 NOT NULL DEFAULT 0,
  "AnsweredKingdomQuiz" int2 NOT NULL DEFAULT 0,
  "StarterPackLevel" int2 NOT NULL DEFAULT 0,
  "NormalGems" int4 NOT NULL DEFAULT 0,
  "UnionID" int4 NOT NULL DEFAULT 0,
  "Harem" int4 NOT NULL DEFAULT 0,
  "Offical" int4 NOT NULL DEFAULT 0,
  "Guards" int4 NOT NULL DEFAULT 0,
  "UnionExploits" int4 NOT NULL DEFAULT 0,
  "Merchant" int4 NOT NULL DEFAULT 0,
  "DidBrightFortune" int4 NOT NULL DEFAULT 0,
  "TotalPerfectionScore" int4 NOT NULL DEFAULT 0,
  "BlackList" text COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::text,
  "DailySignedDays" text COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::text,
  "DailySignRewards" int4 NOT NULL DEFAULT 0,
  "Wardrobe" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "DailySignVIPChances" int4 NOT NULL DEFAULT 10,
  "SwordSoul" int4 DEFAULT 0,
  "BansheeSpirit" int4 DEFAULT 0,
  "Nullifications" int4
)
;

-- ----------------------------
-- Records of entities
-- ----------------------------
INSERT INTO "public"."entities" VALUES ('RAVEN', 1000004, '1', 517, 60, 500, 500, 1003, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1002, 265, 219, 0, 0, 0, 1002, 'None', NULL, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, NULL, 10, 0, 0, NULL);

-- ----------------------------
-- Indexes structure for table entities
-- ----------------------------
CREATE INDEX "idx_entities_clan" ON "public"."entities" USING btree (
  "ClanId" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "idx_entities_guild" ON "public"."entities" USING btree (
  "GuildID" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "idx_entities_map" ON "public"."entities" USING btree (
  "MapID" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "idx_entities_name" ON "public"."entities" USING btree (
  "Name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_entities_online" ON "public"."entities" USING btree (
  "Online" "pg_catalog"."int2_ops" ASC NULLS LAST
);
CREATE INDEX "idx_entities_uid" ON "public"."entities" USING btree (
  "UID" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table entities
-- ----------------------------
ALTER TABLE "public"."entities" ADD CONSTRAINT "entities_pkey" PRIMARY KEY ("UID");
