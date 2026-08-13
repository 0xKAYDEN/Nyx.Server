------------------------------------------------------------------------------------
--Name：            200225[英文征服][活动脚本]3月金币博弈新服（3.12-4.12）
--Creator:      耿力兀
--Created:     2020-02-25
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
--前缀：GoldServer_
--stc :21649-21651
--21649 背包信
--21650 领装备
--21651 升级
----------------------------------表配置部分--------------------------------------------
local tGoldServer_Data = {}
tGoldServer_Data["MaxMete"] = 1
tGoldServer_Data["MaxLev"] = 120
tGoldServer_Data["ProID"] = {}--职业编号
tGoldServer_Data["ProID"][1] = 132--水道士
tGoldServer_Data["ProID"][2] = 142--火道士
tGoldServer_Data["ProID"][3] = 11--勇士
tGoldServer_Data["ProID"][4] = 161--铁扇门
tGoldServer_Data["ProID"][5] = 91--斗士
tGoldServer_Data["ProID"][6] = 71--海盗
tGoldServer_Data["ProID"][7] = 81--小龙
tGoldServer_Data["ProID"][8] = 61--武僧
tGoldServer_Data["ProID"][9] = 51--忍者
tGoldServer_Data["ProID"][10] = 21--战士
tGoldServer_Data["ProID"][11] = 41--弓手
tGoldServer_Data["TaoistID"] = {}--道士编号
tGoldServer_Data["TaoistID"][0] = 10--道士编号
tGoldServer_Data["TaoistID"][1] = 13002--水道士
tGoldServer_Data["TaoistID"][2] = 14002--火道士
tGoldServer_Data["WarriorID"] = 1001
tGoldServer_Data["Skill"] = {}
tGoldServer_Data["Skill"][1] = 16030
tGoldServer_Data["Skill"][2] = 7001
tGoldServer_Data["Woman"] = 7
tGoldServer_Data["Man"] = 8
-- 转世技能继承
local tGoldServer_Skill = {}
	-- 一转技能继承
	tGoldServer_Skill[1] = {}
	-- 勇士职业
	tGoldServer_Skill[1][15] = {}
	tGoldServer_Skill[1][15][11] = {3050}
	tGoldServer_Skill[1][15][21] = {5100}
	tGoldServer_Skill[1][15][61] = {10490}
	tGoldServer_Skill[1][15][71] = {11140}
	tGoldServer_Skill[1][15][81] = {12240,12290}
	tGoldServer_Skill[1][15][161] = {12860,12870,12980,13090}
	-- 战士职业
	tGoldServer_Skill[1][25] = {}
	tGoldServer_Skill[1][25][61] = {10490}
	tGoldServer_Skill[1][25][71] = {11140}
	tGoldServer_Skill[1][25][81] = {12240,12290}
	tGoldServer_Skill[1][25][161] = {12860,12870,12980,13090}
	-- 弓手职业
	tGoldServer_Skill[1][45] = {}
	tGoldServer_Skill[1][45][11] = {5002}
	tGoldServer_Skill[1][45][21] = {5002}
	tGoldServer_Skill[1][45][41] = {5000}
	tGoldServer_Skill[1][45][61] = {10490}
	tGoldServer_Skill[1][45][71] = {11140}
	tGoldServer_Skill[1][45][81] = {12240,12290}
	tGoldServer_Skill[1][45][132] = {5002}
	tGoldServer_Skill[1][45][142] = {5002}
	tGoldServer_Skill[1][45][161] = {12860,12870,12980,13090}
	-- 忍者职业
	tGoldServer_Skill[1][55] = {}
	tGoldServer_Skill[1][55][61] = {10490}
	tGoldServer_Skill[1][55][71] = {11140}
	tGoldServer_Skill[1][55][81] = {12240,12290}
	tGoldServer_Skill[1][55][161] = {12860,12870,12980,13090}
	-- 武僧职业
	tGoldServer_Skill[1][65] = {}
	tGoldServer_Skill[1][65][71] = {11140}
	tGoldServer_Skill[1][65][81] = {12240,12290}
	tGoldServer_Skill[1][65][161] = {12860,12870,12980,13090}
	-- 海盗职业
	tGoldServer_Skill[1][75] = {}
	tGoldServer_Skill[1][75][61] = {10490}
	tGoldServer_Skill[1][75][81] = {12240,12290}
	tGoldServer_Skill[1][75][161] = {12860,12870,12980,13090}
	-- 水道士职业
	tGoldServer_Skill[1][135] = {}
	tGoldServer_Skill[1][135][61] = {10490}
	tGoldServer_Skill[1][135][71] = {11140}
	tGoldServer_Skill[1][135][81] = {12240,12290}
	tGoldServer_Skill[1][135][132] = {3090}
	tGoldServer_Skill[1][135][161] = {12860,12870,12980,13090}
	-- 火道士职业
	tGoldServer_Skill[1][145] = {}
	tGoldServer_Skill[1][145][61] = {10490}
	tGoldServer_Skill[1][145][71] = {11140}
	tGoldServer_Skill[1][145][81] = {12240,12290}
	tGoldServer_Skill[1][145][142] = {3080}
	tGoldServer_Skill[1][145][161] = {12860,12870,12980,13090}
	-- 铁扇门
	tGoldServer_Skill[1][165] = {}
	tGoldServer_Skill[1][165][61] = {10490}
	tGoldServer_Skill[1][165][71] = {11140}
	tGoldServer_Skill[1][165][81] = {12240,12290}
	tGoldServer_Skill[1][165][161] = {12860,12870,12980,13090}
	-- 雷神
	tGoldServer_Skill[1][95] = {}
	tGoldServer_Skill[1][95][61] = {10490}
	tGoldServer_Skill[1][95][71] = {11140}
	tGoldServer_Skill[1][95][81] = {12240,12290}
	tGoldServer_Skill[1][95][161] = {12860,12870,12980,13090}
	tGoldServer_Skill[1][95][91] = {15750,15790}

local tGoldServer_Reward = {}
	-- ===给极品一洞装备
	-- ===索引: tGoldServer_Reward["Gear"]
	-- ===LogStep: 1[1]
	tGoldServer_Reward["Gear"] = {}
	tGoldServer_Reward["Gear"]["LogId"] = 12001537
	tGoldServer_Reward["Gear"]["LogStep"] = "1[1]"
	tGoldServer_Reward["Gear"]["RewardItem"] = {}
	tGoldServer_Reward["Gear"]["RewardItem"][1] = {}
	tGoldServer_Reward["Gear"]["RewardItem"][1]["Id"] = 120269 -- FloridNecklace[120269][属性:0][叠加:0][金币:32000], 【表格】瑶华宝链
	tGoldServer_Reward["Gear"]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞FloridNecklace（赠）*1
	tGoldServer_Reward["Gear"]["RewardItem"][2] = {}
	tGoldServer_Reward["Gear"]["RewardItem"][2]["Id"] = 150269 -- CrimsonRing[150269][属性:0][叠加:0][金币:46480], 【表格】绛珠宝戒
	tGoldServer_Reward["Gear"]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞CrimsonRing（赠）*1
	tGoldServer_Reward["Gear"]["RewardItem"][3] = {}
	tGoldServer_Reward["Gear"]["RewardItem"][3]["Id"] = 160249 -- Blizzard[160249][属性:0][叠加:0][金币:41180], 【表格】腾龙靴
	tGoldServer_Reward["Gear"]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞Blizzard（赠）*1
	tGoldServer_Reward["Gear"]["RewardItem"][4] = {}
	tGoldServer_Reward["Gear"]["RewardItem"][4]["Id"] = 201009 -- HeavenFan[201009][属性:0][叠加:0][金币:37818], 【表格】凌霄扇
	tGoldServer_Reward["Gear"]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞HeavenFan（赠）*1
	tGoldServer_Reward["Gear"]["RewardItem"][5] = {}
	tGoldServer_Reward["Gear"]["RewardItem"][5]["Id"] = 202009 -- StarTower[202009][属性:0][叠加:0][金币:37818], 【表格】混元塔
	tGoldServer_Reward["Gear"]["RewardItem"][5]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞StarTower（赠）*1
	tGoldServer_Reward["Gear"]["RewardItem"][6] = {}
	tGoldServer_Reward["Gear"]["RewardItem"][6]["Id"] = 203009 -- RidingCrop[203009][属性:0][叠加:0][金币:37818], 【表格】马鞭
	tGoldServer_Reward["Gear"]["RewardItem"][6]["Attr"] = "0 1 3" -- RidingCrop（赠）*1
	tGoldServer_Reward["Gear"]["RewardItem"][7] = {}
	tGoldServer_Reward["Gear"]["RewardItem"][7]["Id"] = 204009 -- TempestWing[204009][属性:0][叠加:0][金币:37818], 【表格】风雷翅
	tGoldServer_Reward["Gear"]["RewardItem"][7]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞TempestWing（赠）*1
	tGoldServer_Reward["Gear"]["RewardItem"][8] = {}
	tGoldServer_Reward["Gear"]["RewardItem"][8]["Id"] = 300000 -- Steed[300000][属性:0][叠加:0][金币:0], 【表格】马
	tGoldServer_Reward["Gear"]["RewardItem"][8]["Attr"] = "0 1 3" -- Steed
	tGoldServer_Reward["Gear"]["RewardProItem"] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][1] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][1]["Pro"] = {{10,15}}
	tGoldServer_Reward["Gear"]["RewardProItem"][1]["Item"] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][1]["Item"][1] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][1]["Item"][1]["Id"] = 118309 -- PeerlessCoronet[118309][属性:0][叠加:0][金币:48080], 【表格】勇士装备
	tGoldServer_Reward["Gear"]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞PeerlessCoronet（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][1]["Item"][2] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][1]["Item"][2]["Id"] = 130309 -- ObsidianArmor[130309][属性:0][叠加:0][金币:129000], 【表格】勇士装备
	tGoldServer_Reward["Gear"]["RewardProItem"][1]["Item"][2]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞ObsidianArmor（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][1]["Item"][3] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][1]["Item"][3]["Id"] = 410439 -- SkyBlade[410439][属性:0][叠加:0][金币:100000], 【表格】勇士装备
	tGoldServer_Reward["Gear"]["RewardProItem"][1]["Item"][3]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞SkyBlade（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][1]["Item"][4] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][1]["Item"][4]["Id"] = 614439 -- FangCrossSaber[614439][属性:0][叠加:0][金币:200000], 【表格】勇士装备
	tGoldServer_Reward["Gear"]["RewardProItem"][1]["Item"][4]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞FangCrossSaber（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][1]["Item"][5] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][1]["Item"][5]["Id"] = 614439 -- FangCrossSaber[614439][属性:0][叠加:0][金币:200000], 【表格】勇士装备
	tGoldServer_Reward["Gear"]["RewardProItem"][1]["Item"][5]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞FangCrossSaber（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][1]["Item"][6] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][1]["Item"][6]["Id"] = 420439 -- SquallSword[420439][属性:0][叠加:0][金币:100000], 【表格】勇士装备
	tGoldServer_Reward["Gear"]["RewardProItem"][1]["Item"][6]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞SquallSword（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][1]["Item"][7] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][1]["Item"][7]["Id"] = 561439 -- OccultWand[561439][属性:0][叠加:0][金币:100000], 【表格】勇士装备
	tGoldServer_Reward["Gear"]["RewardProItem"][1]["Item"][7]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞OccultWand（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][2] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][2]["Pro"] = {{20,25}}
	tGoldServer_Reward["Gear"]["RewardProItem"][2]["Item"] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][2]["Item"][1] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][2]["Item"][1]["Id"] = 111309 -- SteelHelmet[111309][属性:0][叠加:0][金币:48080], 【表格】战士装备
	tGoldServer_Reward["Gear"]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞SteelHelmet（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][2]["Item"][2] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][2]["Item"][2]["Id"] = 141309 -- DragonHeadband[141309][属性:0][叠加:0][金币:48080], 【表格】战士装备
	tGoldServer_Reward["Gear"]["RewardProItem"][2]["Item"][2]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞DragonHeadband（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][2]["Item"][2] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][2]["Item"][2]["Id"] = 131309 -- ImperiousArmor[131309][属性:0][叠加:0][金币:129000], 【表格】战士装备
	tGoldServer_Reward["Gear"]["RewardProItem"][2]["Item"][2]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞ImperiousArmor（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][2]["Item"][3] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][2]["Item"][3]["Id"] = 560439 -- SpearOfWrath[560439][属性:0][叠加:0][金币:100000], 【表格】战士装备
	tGoldServer_Reward["Gear"]["RewardProItem"][2]["Item"][3]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞SpearOfWrath（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][2]["Item"][4] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][2]["Item"][4]["Id"] = 900309 -- CelestialShield[900309][属性:0][叠加:0][金币:113020], 【表格】战士装备
	tGoldServer_Reward["Gear"]["RewardProItem"][2]["Item"][4]["Attr"] = "0 1 3" -- CelestialShield（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][2]["Item"][5] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][2]["Item"][5]["Id"] = 624439 -- EvilSlayer[624439][属性:0][叠加:0][金币:200000], 【表格】战士装备
	tGoldServer_Reward["Gear"]["RewardProItem"][2]["Item"][5]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞EvilSlayer（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][2]["Item"][6] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][2]["Item"][6]["Id"] = 624439 -- EvilSlayer[624439][属性:0][叠加:0][金币:200000], 【表格】战士装备
	tGoldServer_Reward["Gear"]["RewardProItem"][2]["Item"][6]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞EvilSlayer（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][3] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][3]["Pro"] = {{40,45}}
	tGoldServer_Reward["Gear"]["RewardProItem"][3]["Item"] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][3]["Item"][1] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][3]["Item"][1]["Id"] = 113309 -- WhiteTigerHat[113309][属性:0][叠加:0][金币:96160], 【表格】弓手装备
	tGoldServer_Reward["Gear"]["RewardProItem"][3]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞WhiteTigerHat（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][3]["Item"][2] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][3]["Item"][2]["Id"] = 142309 -- HeavenPlume[142309][属性:0][叠加:0][金币:96160], 【表格】弓手装备
	tGoldServer_Reward["Gear"]["RewardProItem"][3]["Item"][2]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞HeavenPlume（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][3]["Item"][3] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][3]["Item"][3]["Id"] = 133309 -- WelkinCoat[133309][属性:0][叠加:0][金币:258000], 【表格】弓手装备
	tGoldServer_Reward["Gear"]["RewardProItem"][3]["Item"][3]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞WelkinCoat（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][3]["Item"][4] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][3]["Item"][4]["Id"] = 500429 -- HeavenlyBow[500429][属性:0][叠加:0][金币:200000], 【表格】弓手装备
	tGoldServer_Reward["Gear"]["RewardProItem"][3]["Item"][4]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞HeavenlyBow（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][3]["Item"][5] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][3]["Item"][5]["Id"] = 1050002 -- SpeedArrow[1050002][属性:0][叠加:0][金币:50000], 【表格】弓手装备
	tGoldServer_Reward["Gear"]["RewardProItem"][3]["Item"][5]["Attr"] = "0 1 3" -- SpeedArrow（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][3]["Item"][6] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][3]["Item"][6]["Id"] = 613429 -- FantasyKnife[613429][属性:0][叠加:0][金币:100000], 【表格】弓手装备
	tGoldServer_Reward["Gear"]["RewardProItem"][3]["Item"][6]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞FantasyKnife（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][3]["Item"][7] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][3]["Item"][7]["Id"] = 613429 -- FantasyKnife[613429][属性:0][叠加:0][金币:100000], 【表格】弓手装备
	tGoldServer_Reward["Gear"]["RewardProItem"][3]["Item"][7]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞FantasyKnife（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][4] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][4]["Pro"] = {{50,55}}
	tGoldServer_Reward["Gear"]["RewardProItem"][4]["Item"] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][4]["Item"][1] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][4]["Item"][1]["Id"] = 112309 -- RambleVeil[112309][属性:0][叠加:0][金币:48080], 【表格】忍者装备
	tGoldServer_Reward["Gear"]["RewardProItem"][4]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞RambleVeil（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][4]["Item"][2] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][4]["Item"][2]["Id"] = 123309 -- NightmareHood[123309][属性:0][叠加:0][金币:48080], 【表格】忍者装备
	tGoldServer_Reward["Gear"]["RewardProItem"][4]["Item"][2]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞NightmareHood（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][4]["Item"][3] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][4]["Item"][3]["Id"] = 616439 -- Nobunaga`sSwiftClaw[616439][属性:0][叠加:0][金币:200000], 【表格】忍者装备
	tGoldServer_Reward["Gear"]["RewardProItem"][4]["Item"][3]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞Nobunaga`sSwiftClaw（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][4]["Item"][4] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][4]["Item"][4]["Id"] = 616439 -- Nobunaga`sSwiftClaw[616439][属性:0][叠加:0][金币:200000], 【表格】忍者装备
	tGoldServer_Reward["Gear"]["RewardProItem"][4]["Item"][4]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞Nobunaga`sSwiftClaw（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][4]["Item"][5] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][4]["Item"][5]["Id"] = 135309 -- NightmareVest[135309][属性:0][叠加:0][金币:129000], 【表格】忍者装备
	tGoldServer_Reward["Gear"]["RewardProItem"][4]["Item"][5]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞NightmareVest（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][4]["Item"][6] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][4]["Item"][6]["Id"] = 601439 -- HanzoKatana[601439][属性:0][叠加:0][金币:100000], 【表格】忍者装备
	tGoldServer_Reward["Gear"]["RewardProItem"][4]["Item"][6]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞HanzoKatana（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][4]["Item"][7] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][4]["Item"][7]["Id"] = 601439 -- HanzoKatana[601439][属性:0][叠加:0][金币:100000], 【表格】忍者装备
	tGoldServer_Reward["Gear"]["RewardProItem"][4]["Item"][7]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞HanzoKatana（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][4]["Item"][8] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][4]["Item"][8]["Id"] = 511439 -- SilenceScythe[511439][属性:0][叠加:0][金币:100000], 【表格】忍者装备
	tGoldServer_Reward["Gear"]["RewardProItem"][4]["Item"][8]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞SilenceScythe（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][5] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][5]["Pro"] = {{60,65}}
	tGoldServer_Reward["Gear"]["RewardProItem"][5]["Item"] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][5]["Item"][1] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][5]["Item"][1]["Id"] = 143309 -- XumiCap[143309][属性:0][叠加:0][金币:48080], 【表格】武僧装备
	tGoldServer_Reward["Gear"]["RewardProItem"][5]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞XumiCap（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][5]["Item"][2] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][5]["Item"][2]["Id"] = 136309 -- WhiteLotusFrock[136309][属性:0][叠加:0][金币:129000], 【表格】武僧装备
	tGoldServer_Reward["Gear"]["RewardProItem"][5]["Item"][2]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞WhiteLotusFrock（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][5]["Item"][3] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][5]["Item"][3]["Id"] = 610439 -- LazuritePrayerBeads[610439][属性:0][叠加:0][金币:100000], 【表格】武僧装备
	tGoldServer_Reward["Gear"]["RewardProItem"][5]["Item"][3]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞LazuritePrayerBeads（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][5]["Item"][4] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][5]["Item"][4]["Id"] = 610439 -- LazuritePrayerBeads[610439][属性:0][叠加:0][金币:100000], 【表格】武僧装备
	tGoldServer_Reward["Gear"]["RewardProItem"][5]["Item"][4]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞LazuritePrayerBeads（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][5]["Item"][5] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][5]["Item"][5]["Id"] = 117309 -- DreamEarrings[117309][属性:0][叠加:0][金币:48080], 【表格】武僧装备
	tGoldServer_Reward["Gear"]["RewardProItem"][5]["Item"][5]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞DreamEarrings（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][5]["Item"][6] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][5]["Item"][6]["Id"] = 622439 -- AlmightyEmperor`sPillar[622439][属性:0][叠加:0][金币:200000], 【表格】武僧装备
	tGoldServer_Reward["Gear"]["RewardProItem"][5]["Item"][6]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞AlmightyEmperor`sPillar（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][5]["Item"][7] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][5]["Item"][7]["Id"] = 622439 -- AlmightyEmperor`sPillar[622439][属性:0][叠加:0][金币:200000], 【表格】武僧装备
	tGoldServer_Reward["Gear"]["RewardProItem"][5]["Item"][7]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞AlmightyEmperor`sPillar（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][6] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][6]["Pro"] = {{70,75}}
	tGoldServer_Reward["Gear"]["RewardProItem"][6]["Item"] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][6]["Item"][1] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][6]["Item"][1]["Id"] = 144309 -- DominatorHat[144309][属性:0][叠加:0][金币:48080], 【表格】海盗装备
	tGoldServer_Reward["Gear"]["RewardProItem"][6]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞DominatorHat（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][6]["Item"][2] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][6]["Item"][2]["Id"] = 139309 -- DarkDragonCoat[139309][属性:0][叠加:0][金币:129000], 【表格】海盗装备
	tGoldServer_Reward["Gear"]["RewardProItem"][6]["Item"][2]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞DarkDragonCoat（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][6]["Item"][3] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][6]["Item"][3]["Id"] = 611439 -- CaptainRapier[611439][属性:0][叠加:0][金币:100000], 【表格】海盗装备
	tGoldServer_Reward["Gear"]["RewardProItem"][6]["Item"][3]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞CaptainRapier（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][6]["Item"][4] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][6]["Item"][4]["Id"] = 612439 -- LordPistol[612439][属性:0][叠加:0][金币:100000], 【表格】海盗装备
	tGoldServer_Reward["Gear"]["RewardProItem"][6]["Item"][4]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞LordPistol（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][6]["Item"][5] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][6]["Item"][5]["Id"] = 671439 -- MightyRapierofViolence[671439][属性:0][叠加:0][金币:200000], 【表格】海盗装备
	tGoldServer_Reward["Gear"]["RewardProItem"][6]["Item"][5]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞MightyRapierofViolence（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][6]["Item"][6] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][6]["Item"][6]["Id"] = 670439 -- OceanDominator[670439][属性:0][叠加:0][金币:200000], 【表格】海盗装备
	tGoldServer_Reward["Gear"]["RewardProItem"][6]["Item"][6]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞OceanDominator（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][7] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][7]["Pro"] = {{80,85}}
	tGoldServer_Reward["Gear"]["RewardProItem"][7]["Item"] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][7]["Item"][1] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][7]["Item"][1]["Id"] = 148309 -- LegendHood[148309][属性:0][叠加:0][金币:48080], 【表格】小龙装备
	tGoldServer_Reward["Gear"]["RewardProItem"][7]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞LegendHood（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][7]["Item"][2] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][7]["Item"][2]["Id"] = 138309 -- CombatSuit(Lv.140)[138309][属性:0][叠加:0][金币:129000], 【表格】小龙装备
	tGoldServer_Reward["Gear"]["RewardProItem"][7]["Item"][2]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞CombatSuit(Lv.140)（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][7]["Item"][3] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][7]["Item"][3]["Id"] = 617439 -- SkyNunchaku[617439][属性:0][叠加:0][金币:100000], 【表格】小龙装备
	tGoldServer_Reward["Gear"]["RewardProItem"][7]["Item"][3]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞SkyNunchaku（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][7]["Item"][4] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][7]["Item"][4]["Id"] = 617439 -- SkyNunchaku[617439][属性:0][叠加:0][金币:100000], 【表格】小龙装备
	tGoldServer_Reward["Gear"]["RewardProItem"][7]["Item"][4]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞SkyNunchaku（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][8] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][8]["Pro"] = {{90,95}}
	tGoldServer_Reward["Gear"]["RewardProItem"][8]["Item"] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][8]["Item"][1] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][8]["Item"][1]["Id"] = 147309 -- BlitzHeadwear[147309][属性:0][叠加:0][金币:48080], 【表格】斗士装备
	tGoldServer_Reward["Gear"]["RewardProItem"][8]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞BlitzHeadwear（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][8]["Item"][2] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][8]["Item"][2]["Id"] = 146309 -- MightyHelmet[146309][属性:0][叠加:0][金币:48080], 【表格】斗士装备
	tGoldServer_Reward["Gear"]["RewardProItem"][8]["Item"][2]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞MightyHelmet（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][8]["Item"][3] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][8]["Item"][3]["Id"] = 102309 -- TitanArmor[102309][属性:0][叠加:0][金币:129000], 【表格】斗士装备
	tGoldServer_Reward["Gear"]["RewardProItem"][8]["Item"][3]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞TitanArmor（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][8]["Item"][4] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][8]["Item"][4]["Id"] = 680439 -- InfiniteFlashaxe[680439][属性:0][叠加:0][金币:200000], 【表格】斗士装备
	tGoldServer_Reward["Gear"]["RewardProItem"][8]["Item"][4]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞InfiniteFlashaxe（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][8]["Item"][5] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][8]["Item"][5]["Id"] = 681439 -- ChaoticStormhammer[681439][属性:0][叠加:0][金币:200000], 【表格】斗士装备
	tGoldServer_Reward["Gear"]["RewardProItem"][8]["Item"][5]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞ChaoticStormhammer（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][9] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][9]["Pro"] = {{100,145}}
	tGoldServer_Reward["Gear"]["RewardProItem"][9]["Item"] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][9]["Item"][1] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][9]["Item"][1]["Id"] = 114309 -- DistinctCap[114309][属性:0][叠加:0][金币:48080], 【表格】道士装备
	tGoldServer_Reward["Gear"]["RewardProItem"][9]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞DistinctCap（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][9]["Item"][2] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][9]["Item"][2]["Id"] = 121269 -- NiftyBag[121269][属性:0][叠加:0][金币:32000], 【表格】道士装备
	tGoldServer_Reward["Gear"]["RewardProItem"][9]["Item"][2]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞NiftyBag（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][9]["Item"][3] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][9]["Item"][3]["Id"] = 152279 -- WyvernBracelet[152279][属性:0][叠加:0][金币:37818], 【表格】道士装备
	tGoldServer_Reward["Gear"]["RewardProItem"][9]["Item"][3]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞WyvernBracelet（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][9]["Item"][4] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][9]["Item"][4]["Id"] = 134309 -- EternalRobe[134309][属性:0][叠加:0][金币:129000], 【表格】道士装备
	tGoldServer_Reward["Gear"]["RewardProItem"][9]["Item"][4]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞EternalRobe（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][9]["Item"][5] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][9]["Item"][5]["Id"] = 421439 -- SupremeSword[421439][属性:0][叠加:0][金币:100000], 【表格】道士装备
	tGoldServer_Reward["Gear"]["RewardProItem"][9]["Item"][5]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞SupremeSword（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][9]["Item"][6] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][9]["Item"][6]["Id"] = 117309 -- DreamEarrings[117309][属性:0][叠加:0][金币:48080], 【表格】道士装备
	tGoldServer_Reward["Gear"]["RewardProItem"][9]["Item"][6]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞DreamEarrings（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][9]["Item"][7] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][9]["Item"][7]["Id"] = 619439 -- FierceImmortal[619439][属性:0][叠加:0][金币:200000], 【表格】道士装备
	tGoldServer_Reward["Gear"]["RewardProItem"][9]["Item"][7]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞FierceImmortal（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][9]["Item"][8] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][9]["Item"][8]["Id"] = 620439 -- ImperialBacksword[620439][属性:0][叠加:0][金币:100000], 【表格】道士装备
	tGoldServer_Reward["Gear"]["RewardProItem"][9]["Item"][8]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞ImperialBacksword（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][10] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][10]["Pro"] = {{160,165}}
	tGoldServer_Reward["Gear"]["RewardProItem"][10]["Item"] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][10]["Item"][1] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][10]["Item"][1]["Id"] = 626439 -- DragonFan[626439][属性:0][叠加:0][金币:200000], 【表格】铁扇装备
	tGoldServer_Reward["Gear"]["RewardProItem"][10]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞DragonFan（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][10]["Item"][2] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][10]["Item"][2]["Id"] = 626439 -- DragonFan[626439][属性:0][叠加:0][金币:200000], 【表格】铁扇装备
	tGoldServer_Reward["Gear"]["RewardProItem"][10]["Item"][2]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞DragonFan（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][10]["Item"][3] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][10]["Item"][3]["Id"] = 101309 -- BrilliantWindrobe[101309][属性:0][叠加:0][金币:129000], 【表格】铁扇装备
	tGoldServer_Reward["Gear"]["RewardProItem"][10]["Item"][3]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞BrilliantWindrobe（赠）*1
	tGoldServer_Reward["Gear"]["RewardProItem"][10]["Item"][4] = {}
	tGoldServer_Reward["Gear"]["RewardProItem"][10]["Item"][4]["Id"] = 170309 -- DivineCloudHat[170309][属性:0][叠加:0][金币:48080], 【表格】铁扇装备
	tGoldServer_Reward["Gear"]["RewardProItem"][10]["Item"][4]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞DivineCloudHat（赠）*1
	tGoldServer_Reward["Gear"]["RewardEffect"] = {}
	tGoldServer_Reward["Gear"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGoldServer_Reward["Gear"]["RewardEffect"]["Effect"] = "angelwing"

local tGoldServer_Stc = {}
	tGoldServer_Stc["Event"] = 216
	tGoldServer_Stc["Data"] = 50
----------------------------------逻辑部分---------------------------------------------
--升级到2转140级
function GoldServer_UpLev(nNpcId, nChoosePro)
	local nUserId = Get_UserId()
	local nProf = (math.floor(Get_UserProfession(nUserId)/10)*1000)+5--计算最高职级
	local nUserMete = Get_UserMetempsychosis(nUserId)
	--已到达二转
	if nUserMete >= tGoldServer_Data["MaxMete"] then
		User_UpLevelTo(tGoldServer_Data["MaxLev"])
		LinkNpcGossipFunc_New(nNpcId, "2-1")
		return
	end

	local nNewProf = nChoosePro--转世后职级
	local nLookFace = tGoldServer_Data["Man"]
	if Get_UserSex(nUserId) == 2 then
		nLookFace = tGoldServer_Data["Woman"]
	end
    --等级已达到
    if User_JudgeLevelAndMetempsychosis(tGoldServer_Data["MaxLev"], tGoldServer_Data["MaxMete"], nUserId) then
        LinkNpcGossipFunc_New(nNpcId, "2-1")
        return
	end

	--等级未达到
    if (Get_UserLevel(nUserId) < tGoldServer_Data["MaxLev"]) then
        User_UpLevelTo(tGoldServer_Data["MaxLev"])
    end

	local nMete = Get_UserMetempsychosis(nUserId)
	User_SetProfession(nProf, nUserId)
    --转世未达到
	if (nMete < tGoldServer_Data["MaxMete"]) then
		local nPro = Get_UserProfession(nUserId)
		local nNewPro = CommonFunc_OldProChangeNewPro(nNewProf)
		-- 玩家转世
		User_Rebirth(nNewPro, nLookFace, nUserMete + 1, nUserId)
		
		-- 转世技能处理
		if not User_RebirthSkill(nUserId) then
			return false
		end
		
		-- 继承原有职业的部分技能
		if tGoldServer_Skill[nUserMete + 1] == nil then
			return true
		end

		-- 判断该职业是否有需要继承技能的配置
		if tGoldServer_Skill[nUserMete + 1][nPro] == nil then
			return true
		end

		-- 判断选择要转世的职业是否有需要继承技能的配置
		if tGoldServer_Skill[nUserMete + 1][nPro][nNewProf] == nil then
			return true
		end

		for i,v in pairs(tGoldServer_Skill[nUserMete + 1][nPro][nNewProf]) do
			if not Magic_ChkType(v,nUserId) then
				Magic_Learn(v,nUserId)
			end
		end
		
		-- 转世遗忘技能
		if not User_UnlearnSkill(nUserId) then
			return false
		end
		
		User_UpLevelTo(tGoldServer_Data["MaxLev"])
	end
end

--领取一洞极品装备
function GoldServer_ClaimGear(nNpcId)
    local nUserId = Get_UserId()

    --已经领取过
    local nEvent = tGoldServer_Stc["Event"]
    local nData = tGoldServer_Stc["Data"]
    if (Get_UserStatisticValue(nEvent, nData, nUserId) ~= 0) then
        LinkNpcGossipFunc_New(nNpcId, "2-2")
        return
    end
    --给极品装备
    --空间不足
    if not RewardTemplate_UpperLimit(tGoldServer_Reward["Gear"],nUserId) then
        return
    end
    --记录领取掩码
    Task_SetStatistic(nEvent,nData,1,1,nUserId)
    Task_SetStcTimestamp(nEvent,nData,0,nUserId)
    RewardTemplate_UseItemAndMsg(tGoldServer_Reward["Gear"],nUserId)

end
--道士选择现在职业
function GoldServer_NowPro(nNpcId,nNo)
	local nUserId = Get_UserId()
	local nNowProf = math.floor(Get_UserProfession(nUserId)/10)
	if nNowProf ~= tGoldServer_Data["TaoistID"][0] then
		return
	end

	local nChoosePro = tGoldServer_Data["TaoistID"][nNo]

	User_SetProfession(nChoosePro,nUserId)

	LinkNpcGossipFunc_New(nNpcId, "3-1")
end

--选择转世职业
function GoldServer_ChoosePro(nNpcId, nNo)
	local nUserId = Get_UserId()
	local nMaxMete = tGoldServer_Data["MaxMete"]
	local nUserMete = Get_UserMetempsychosis(nUserId)
	User_UpLevelTo(tGoldServer_Data["MaxLev"])
	if nUserMete >= nMaxMete then--已达到
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	local nChoosePro = tGoldServer_Data["ProID"][nNo]
	GoldServer_UpLev(nNpcId, nChoosePro)
end

----------------------------------NPC部分---------------------------------------------
--英雄王 26011
tNpcFace[6170] = 40
tNpcGossip[26011]= tNpcGossip[26011] or DefaultNpc:new{}
tNpcGossip[26011]["OptionHidden"] = 1
tNpcGossip[26011]["DialogueText"] = tGoldServer_Text[26011]
--活动前 1-1
tNpcGossip[26011]["Text1-1"] = {111,112,113,114}
tNpcGossip[26011]["tOption1-1"] = {111}
tNpcGossip[26011]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["GoldServer"]["ActivityTime"])
end
--活动后 1-2
tNpcGossip[26011]["Text1-2"] = {121}
tNpcGossip[26011]["tOption1-2"] = {121}
tNpcGossip[26011]["ChkFunc1-2"] = function()
    return CommonFunc_GetAfterActivityTime(tActivityTime["GoldServer"]["ActivityTime"])
end
--活动中 1-3
tNpcGossip[26011]["Text1-3"] = {131,132,133,134}
tNpcGossip[26011]["tOption1-3"] = {131,132}
tNpcGossip[26011]["OptionPoint131"] = "3-1"--直升
tNpcGossip[26011]["OptionFunc132"] = "GoldServer_ClaimGear</N>26011"--领取一洞极品装备
tNpcGossip[26011]["ChkFunc1-3"] = function()
    local nUserId = Get_UserId()
    --领取装备选项
    local nEvent = tGoldServer_Stc["Event"]
    local nData = tGoldServer_Stc["Data"]
    if (Get_UserStatisticValue(nEvent, nData, nUserId) ~= 0) then
        tNpcGossip[26011]["Option132"] = tGoldServer_Text[26011]["Option134"]
    else
        tNpcGossip[26011]["Option132"] = tGoldServer_Text[26011]["Option132"]
    end
    --升级选项
    local nLevel = tGoldServer_Data["MaxLev"]
    local nMete = tGoldServer_Data["MaxMete"]
    if User_JudgeLevelAndMetempsychosis(nLevel, nMete, nUserId) then
        tNpcGossip[26011]["Option131"] = tGoldServer_Text[26011]["Option133"]
    else
        tNpcGossip[26011]["Option131"] = tGoldServer_Text[26011]["Option131"]
    end
	-- 道士选项
	local nNowProf = math.floor(Get_UserProfession(nUserId)/10)
	if nNowProf == tGoldServer_Data["TaoistID"][0] then
		tNpcGossip[26011]["OptionPoint131"] = "4-1"--选职业
	else
		tNpcGossip[26011]["OptionPoint131"] = "3-1"--直升
	end

	return Sys_ChkFullTime(tActivityTime["GoldServer"]["ActivityTime"])
end
--升级到2转140 已达到 2-1
tNpcGossip[26011]["Text2-1"] = {211}
tNpcGossip[26011]["tOption2-1"] = {211}
--领取全套一洞极品装备 已领取 2-2
tNpcGossip[26011]["Text2-2"] = {221}
tNpcGossip[26011]["tOption2-2"] = {221}
--选择转世职业 3-1
tNpcGossip[26011]["Text3-1"] = {311}
tNpcGossip[26011]["tOption3-1"] = {311,312,313,314,315,316,317,318,319,3110,3111}
tNpcGossip[26011]["OptionFunc311"] = "GoldServer_ChoosePro</N>26011</N>1"
tNpcGossip[26011]["OptionFunc312"] = "GoldServer_ChoosePro</N>26011</N>2"
tNpcGossip[26011]["OptionFunc313"] = "GoldServer_ChoosePro</N>26011</N>3"
tNpcGossip[26011]["OptionFunc314"] = "GoldServer_ChoosePro</N>26011</N>4"
tNpcGossip[26011]["OptionFunc315"] = "GoldServer_ChoosePro</N>26011</N>5"
tNpcGossip[26011]["OptionFunc316"] = "GoldServer_ChoosePro</N>26011</N>6"
tNpcGossip[26011]["OptionFunc317"] = "GoldServer_ChoosePro</N>26011</N>7"
tNpcGossip[26011]["OptionFunc318"] = "GoldServer_ChoosePro</N>26011</N>8"
tNpcGossip[26011]["OptionFunc319"] = "GoldServer_ChoosePro</N>26011</N>9"
tNpcGossip[26011]["OptionFunc3110"] = "GoldServer_ChoosePro</N>26011</N>10"
tNpcGossip[26011]["OptionFunc3111"] = "GoldServer_ChoosePro</N>26011</N>11"
--道士选择现在职业 4-1
tNpcGossip[26011]["Text4-1"] = {411}
tNpcGossip[26011]["tOption4-1"] = {411,412}
tNpcGossip[26011]["OptionFunc411"] = "GoldServer_NowPro</N>26011</N>1"
tNpcGossip[26011]["OptionFunc412"] = "GoldServer_NowPro</N>26011</N>2"


