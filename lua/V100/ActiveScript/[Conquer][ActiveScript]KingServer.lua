------------------------------------------------------------------------------------
--Name：       190725[英文征服][活动脚本]赛季服-王者服（8.06-9.12）
--Creator:     吴燕柚
--Created:     2019/07/25
------------------------------------------------------------------------------------
--任务需求：

--命名规范 KingServer_

--logid 12001537

--stc(201, 39) 背包信
--stc(201, 40) 领取装备
--stc(206, 98) 道具装备
--stc(201, 41) 总王者积分
--stc(201, 42) 王者奖池

--stc(201, 43) 战斗力PK赛
--stc(201, 44) 个人竞技场排位赛
--stc(201, 45) 组队PK赛
--stc(201, 46) 组队大众PK赛
--stc(201, 47) 家族占领赛
--stc(201, 48) 精英pk
--stc(201, 49) 帮派争霸赛
--stc(201, 50) 战旗争霸赛
--stc(201, 51) 跨服战旗争霸赛
--stc(201, 52) PK周赛
--stc(201, 53) PK月赛
--stc(201, 54) 职业PK赛

--stc(201, 70) 组队PK赛天石奖池
--stc(201, 71) 组队大众PK赛天石奖池
--stc(201, 72) 精英PK赛天石奖池
--stc(201, 73) 帮派争霸战天石奖池

--stc(202, 17) 帮战杀人数
--stc(202, 18) 战旗杀人数

--global 53522 记录boss是否刷新
--global 53526 记录是否王者服

------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------

local tKingServer_Data = {}
tKingServer_Data["IntroWeb"] = "https://coevent.99.com/kingserver/"
tKingServer_Data["MaxMete"] = 2
tKingServer_Data["MaxLev"] = 140
tKingServer_Data["MaxSynLev"] = 9
tKingServer_Data["Enter"] = {}
tKingServer_Data["Enter"]["PosX"] = 444
tKingServer_Data["Enter"]["PosY"] = 587
tKingServer_Data["Enter"]["Cell"] = 10
tKingServer_Data["NpcId"] = 24687
tKingServer_Data["Boss"] = {}
tKingServer_Data["Boss"]["Global"] = 53522
tKingServer_Data["Boss"]["Id"] = 1098
tKingServer_Data["Boss"]["Gen"] = 28664
tKingServer_Data["Boss"]["MapId"] = 10588
tKingServer_Data["Boss"]["PosX"] = 387
tKingServer_Data["Boss"]["PosY"] = 386
tKingServer_Data["ServerGlobal"] = 53526
tKingServer_Data["ProID"] = {}--职业编号
tKingServer_Data["ProID"][1] = 132--水道士
tKingServer_Data["ProID"][2] = 142--火道士
tKingServer_Data["ProID"][3] = 11--勇士
tKingServer_Data["ProID"][4] = 161--铁扇门
tKingServer_Data["ProID"][5] = 91--斗士
tKingServer_Data["ProID"][6] = 71--海盗
tKingServer_Data["ProID"][7] = 81--小龙
tKingServer_Data["ProID"][8] = 61--武僧
tKingServer_Data["ProID"][9] = 51--忍者
tKingServer_Data["ProID"][10] = 21--战士
tKingServer_Data["ProID"][11] = 41--弓手
tKingServer_Data["TaoistID"] = {}--道士编号
tKingServer_Data["TaoistID"][0] = 10--道士编号
tKingServer_Data["TaoistID"][1] = 13002--水道士
tKingServer_Data["TaoistID"][2] = 14002--火道士
tKingServer_Data["WarriorID"] = 1001
tKingServer_Data["Skill"] = {}
tKingServer_Data["Skill"][1] = 16030
tKingServer_Data["Skill"][2] = 7001

-- 转世技能继承
local tKingServer_Skill = {}
	-- 一转技能继承
	tKingServer_Skill[1] = {}
	-- 勇士职业
	tKingServer_Skill[1][15] = {}
	tKingServer_Skill[1][15][11] = {3050}
	tKingServer_Skill[1][15][21] = {5100}
	tKingServer_Skill[1][15][61] = {10490}
	tKingServer_Skill[1][15][71] = {11140}
	tKingServer_Skill[1][15][81] = {12240,12290}
	tKingServer_Skill[1][15][161] = {12860,12870,12980,13090}
	-- 战士职业
	tKingServer_Skill[1][25] = {}
	tKingServer_Skill[1][25][61] = {10490}
	tKingServer_Skill[1][25][71] = {11140}
	tKingServer_Skill[1][25][81] = {12240,12290}
	tKingServer_Skill[1][25][161] = {12860,12870,12980,13090}
	-- 弓手职业
	tKingServer_Skill[1][45] = {}
	tKingServer_Skill[1][45][11] = {5002}
	tKingServer_Skill[1][45][21] = {5002}
	tKingServer_Skill[1][45][41] = {5000}
	tKingServer_Skill[1][45][61] = {10490}
	tKingServer_Skill[1][45][71] = {11140}
	tKingServer_Skill[1][45][81] = {12240,12290}
	tKingServer_Skill[1][45][132] = {5002}
	tKingServer_Skill[1][45][142] = {5002}
	tKingServer_Skill[1][45][161] = {12860,12870,12980,13090}
	-- 忍者职业
	tKingServer_Skill[1][55] = {}
	tKingServer_Skill[1][55][61] = {10490}
	tKingServer_Skill[1][55][71] = {11140}
	tKingServer_Skill[1][55][81] = {12240,12290}
	tKingServer_Skill[1][55][161] = {12860,12870,12980,13090}
	-- 武僧职业
	tKingServer_Skill[1][65] = {}
	tKingServer_Skill[1][65][71] = {11140}
	tKingServer_Skill[1][65][81] = {12240,12290}
	tKingServer_Skill[1][65][161] = {12860,12870,12980,13090}
	-- 海盗职业
	tKingServer_Skill[1][75] = {}
	tKingServer_Skill[1][75][61] = {10490}
	tKingServer_Skill[1][75][81] = {12240,12290}
	tKingServer_Skill[1][75][161] = {12860,12870,12980,13090}
	-- 水道士职业
	tKingServer_Skill[1][135] = {}
	tKingServer_Skill[1][135][61] = {10490}
	tKingServer_Skill[1][135][71] = {11140}
	tKingServer_Skill[1][135][81] = {12240,12290}
	tKingServer_Skill[1][135][132] = {3090}
	tKingServer_Skill[1][135][161] = {12860,12870,12980,13090}
	-- 火道士职业
	tKingServer_Skill[1][145] = {}
	tKingServer_Skill[1][145][61] = {10490}
	tKingServer_Skill[1][145][71] = {11140}
	tKingServer_Skill[1][145][81] = {12240,12290}
	tKingServer_Skill[1][145][142] = {3080}
	tKingServer_Skill[1][145][161] = {12860,12870,12980,13090}
	-- 铁扇门
	tKingServer_Skill[1][165] = {}
	tKingServer_Skill[1][165][61] = {10490}
	tKingServer_Skill[1][165][71] = {11140}
	tKingServer_Skill[1][165][81] = {12240,12290}
	tKingServer_Skill[1][165][161] = {12860,12870,12980,13090}
	-- 雷神
	tKingServer_Skill[1][95] = {}
	tKingServer_Skill[1][95][61] = {10490}
	tKingServer_Skill[1][95][71] = {11140}
	tKingServer_Skill[1][95][81] = {12240,12290}
	tKingServer_Skill[1][95][161] = {12860,12870,12980,13090}
	tKingServer_Skill[1][95][91] = {15750,15790}

	-- 二转技能继承
	tKingServer_Skill[2] = {}
	-- 勇士职业
	tKingServer_Skill[2][15] = {}
	tKingServer_Skill[2][15][11] = {9876,3050}
	tKingServer_Skill[2][15][21] = {9876,5100}
	tKingServer_Skill[2][15][41] = {9876}
	tKingServer_Skill[2][15][51] = {9876}
	tKingServer_Skill[2][15][61] = {9876,10490}
	tKingServer_Skill[2][15][71] = {9876,11140}
	tKingServer_Skill[2][15][81] = {9876,12240,12290}
	tKingServer_Skill[2][15][132] = {9876}
	tKingServer_Skill[2][15][142] = {9876}
	tKingServer_Skill[2][15][161] = {9876,12860,12870,12980,13090}
	tKingServer_Skill[2][15][91] = {9876}
	-- 战士
	tKingServer_Skill[2][25] = {}
	tKingServer_Skill[2][25][11] = {9876}
	tKingServer_Skill[2][25][21] = {9876}
	tKingServer_Skill[2][25][41] = {9876}
	tKingServer_Skill[2][25][51] = {9876}
	tKingServer_Skill[2][25][61] = {9876,10490}
	tKingServer_Skill[2][25][71] = {9876,11140}
	tKingServer_Skill[2][25][81] = {9876,12240,12290}
	tKingServer_Skill[2][25][132] = {9876}
	tKingServer_Skill[2][25][142] = {9876}
	tKingServer_Skill[2][25][161] = {9876,12860,12870,12980,13090}
	tKingServer_Skill[2][25][91] = {9876}
	-- 弓箭手
	tKingServer_Skill[2][45] = {}
	tKingServer_Skill[2][45][11] = {9876,5002}
	tKingServer_Skill[2][45][21] = {9876,5002}
	tKingServer_Skill[2][45][41] = {9876,5000}
	tKingServer_Skill[2][45][51] = {9876}
	tKingServer_Skill[2][45][61] = {9876,10490}
	tKingServer_Skill[2][45][71] = {9876,11140}
	tKingServer_Skill[2][45][81] = {9876,12240,12290}
	tKingServer_Skill[2][45][132] = {9876,5002}
	tKingServer_Skill[2][45][142] = {9876,5002}
	tKingServer_Skill[2][45][161] = {9876,12860,12870,12980,13090}
	tKingServer_Skill[2][45][91] = {9876}
	-- 忍者
	tKingServer_Skill[2][55] = {}
	tKingServer_Skill[2][55][11] = {9876}
	tKingServer_Skill[2][55][21] = {9876}
	tKingServer_Skill[2][55][41] = {9876}
	tKingServer_Skill[2][55][51] = {9876}
	tKingServer_Skill[2][55][61] = {9876,10490}
	tKingServer_Skill[2][55][71] = {9876,11140}
	tKingServer_Skill[2][55][81] = {9876,12240,12290}
	tKingServer_Skill[2][55][132] = {9876}
	tKingServer_Skill[2][55][142] = {9876}
	tKingServer_Skill[2][55][161] = {9876,12860,12870,12980,13090}
	tKingServer_Skill[2][55][91] = {9876}
	-- 武僧
	tKingServer_Skill[2][65] = {}
	tKingServer_Skill[2][65][11] = {9876}
	tKingServer_Skill[2][65][21] = {9876}
	tKingServer_Skill[2][65][41] = {9876}
	tKingServer_Skill[2][65][51] = {9876}
	tKingServer_Skill[2][65][61] = {9876}
	tKingServer_Skill[2][65][71] = {9876,11140}
	tKingServer_Skill[2][65][81] = {9876,12240,12290}
	tKingServer_Skill[2][65][132] = {9876}
	tKingServer_Skill[2][65][142] = {9876}
	tKingServer_Skill[2][65][161] = {9876,12860,12870,12980,13090}
	tKingServer_Skill[2][65][91] = {9876}
	-- 海盗
	tKingServer_Skill[2][75] = {}
	tKingServer_Skill[2][75][11] = {9876}
	tKingServer_Skill[2][75][21] = {9876}
	tKingServer_Skill[2][75][41] = {9876}
	tKingServer_Skill[2][75][51] = {9876}
	tKingServer_Skill[2][75][61] = {9876,10490}
	tKingServer_Skill[2][75][71] = {9876}
	tKingServer_Skill[2][75][81] = {9876,12240,12290}
	tKingServer_Skill[2][75][132] = {9876}
	tKingServer_Skill[2][75][142] = {9876}
	tKingServer_Skill[2][75][161] = {9876,12860,12870,12980,13090}
	tKingServer_Skill[2][75][91] = {9876}
	-- 截拳师
	tKingServer_Skill[2][85] = {}
	tKingServer_Skill[2][85][11] = {9876}
	tKingServer_Skill[2][85][21] = {9876}
	tKingServer_Skill[2][85][41] = {9876}
	tKingServer_Skill[2][85][51] = {9876}
	tKingServer_Skill[2][85][61] = {9876}
	tKingServer_Skill[2][85][71] = {9876}
	tKingServer_Skill[2][85][81] = {9876}
	tKingServer_Skill[2][85][132] = {9876}
	tKingServer_Skill[2][85][142] = {9876}
	tKingServer_Skill[2][85][161] = {9876,12860,12870,12980,13090}
	tKingServer_Skill[2][85][91] = {9876}
	-- 水道
	tKingServer_Skill[2][135] = {}
	tKingServer_Skill[2][135][11] = {9876}
	tKingServer_Skill[2][135][21] = {9876}
	tKingServer_Skill[2][135][41] = {9876}
	tKingServer_Skill[2][135][51] = {9876}
	tKingServer_Skill[2][135][61] = {9876,10490}
	tKingServer_Skill[2][135][71] = {9876,11140}
	tKingServer_Skill[2][135][81] = {9876,12240,12290}
	tKingServer_Skill[2][135][132] = {9876,3090}
	tKingServer_Skill[2][135][142] = {9876}
	tKingServer_Skill[2][135][161] = {9876,12860,12870,12980,13090}
	tKingServer_Skill[2][135][91] = {9876}
	-- 火道
	tKingServer_Skill[2][145] = {}
	tKingServer_Skill[2][145][11] = {9876}
	tKingServer_Skill[2][145][21] = {9876}
	tKingServer_Skill[2][145][41] = {9876}
	tKingServer_Skill[2][145][51] = {9876}
	tKingServer_Skill[2][145][61] = {9876,10490}
	tKingServer_Skill[2][145][71] = {9876,11140}
	tKingServer_Skill[2][145][81] = {9876,12240,12290}
	tKingServer_Skill[2][145][132] = {9876}
	tKingServer_Skill[2][145][142] = {9876,3080}
	tKingServer_Skill[2][145][161] = {9876,12860,12870,12980,13090}
	tKingServer_Skill[2][145][91] = {9876}
	-- 铁扇门
	tKingServer_Skill[2][165] = {}
	tKingServer_Skill[2][165][11] = {9876}
	tKingServer_Skill[2][165][21] = {9876}
	tKingServer_Skill[2][165][41] = {9876}
	tKingServer_Skill[2][165][51] = {9876}
	tKingServer_Skill[2][165][61] = {9876,10490}
	tKingServer_Skill[2][165][71] = {9876,11140}
	tKingServer_Skill[2][165][81] = {9876,12240,12290}
	tKingServer_Skill[2][165][132] = {9876}
	tKingServer_Skill[2][165][142] = {9876}
	tKingServer_Skill[2][165][91] = {9876}
	tKingServer_Skill[2][165][161] = {9876,12860,12870,12980,13090}
	-- 雷神
	tKingServer_Skill[2][95] = {}
	tKingServer_Skill[2][95][11] = {9876}
	tKingServer_Skill[2][95][21] = {9876}
	tKingServer_Skill[2][95][41] = {9876}
	tKingServer_Skill[2][95][51] = {9876}
	tKingServer_Skill[2][95][61] = {9876,10490}
	tKingServer_Skill[2][95][71] = {9876,11140}
	tKingServer_Skill[2][95][81] = {9876,12240,12290}
	tKingServer_Skill[2][95][132] = {9876}
	tKingServer_Skill[2][95][142] = {9876}
	tKingServer_Skill[2][95][161] = {9876,12860,12870,12980,13090}
	tKingServer_Skill[2][95][91] = {9876,15750,15790}

--杀人触发
local tKingServer_Kill = {}
tKingServer_Kill[1038] = {}--帮战
tKingServer_Kill[1038]["MapId"] = 1038
tKingServer_Kill[1038]["Time"] = "6 12:00 6 15:00"
tKingServer_Kill[1038]["Max"] = 50
tKingServer_Kill[1038]["Event"] = 201
tKingServer_Kill[1038]["Data"] = 49
tKingServer_Kill[1038]["Score"] = 1
tKingServer_Kill[1038]["KillNum"] = {}
tKingServer_Kill[1038]["KillNum"]["Event"] = 202
tKingServer_Kill[1038]["KillNum"]["Data"] = 17
tKingServer_Kill[1038]["SingleEvent"] = 202--本次比赛
tKingServer_Kill[1038]["SingleData"] = 24
tKingServer_Kill[2057] = {}--战旗赛
tKingServer_Kill[2057]["MapId"] = 2057
tKingServer_Kill[2057]["Time"] = "6 20:59 6 22:00"
tKingServer_Kill[2057]["Max"] = 50
tKingServer_Kill[2057]["Event"] = 201
tKingServer_Kill[2057]["Data"] = 50
tKingServer_Kill[2057]["Score"] = 1
tKingServer_Kill[2057]["KillNum"] = {}
tKingServer_Kill[2057]["KillNum"]["Event"] = 202
tKingServer_Kill[2057]["KillNum"]["Data"] = 18
tKingServer_Kill[2057]["SingleEvent"] = 202--本次比赛
tKingServer_Kill[2057]["SingleData"] = 25

local tKingServer_Stc = {}
tKingServer_Stc["Gear"] = {}--是否已领取装备
tKingServer_Stc["Gear"]["Event"] = 201
tKingServer_Stc["Gear"]["Data"] = 40
tKingServer_Stc["Stone"] = {}--是否已获得礼包里的装备
tKingServer_Stc["Stone"]["Event"] = 206
tKingServer_Stc["Stone"]["Data"] = 98
tKingServer_Stc["TotalScore"] = {}
tKingServer_Stc["TotalScore"]["Event"] = 201
tKingServer_Stc["TotalScore"]["Data"] = 41
tKingServer_Stc["TotalEMoney"] = {}
tKingServer_Stc["TotalEMoney"]["Event"] = 201
tKingServer_Stc["TotalEMoney"]["Data"] = 42

local tKingServer_BossDrop = {}
tKingServer_BossDrop["MapId"] = 10588
tKingServer_BossDrop["PosX"] = 379
tKingServer_BossDrop["PosY"] = 379
tKingServer_BossDrop["Cell"] = 10
tKingServer_BossDrop["ExistTime"] = 300
tKingServer_BossDrop["TotalChance"] = 10000--总概率
tKingServer_BossDrop["Item"] = {}--掉落物品
tKingServer_BossDrop["Item"][1] = {}--1W气力值包
tKingServer_BossDrop["Item"][1]["Id"] = 3008201
tKingServer_BossDrop["Item"][1]["Num"] = 1
tKingServer_BossDrop["Item"][1]["Chance"] = 10000
tKingServer_BossDrop["Item"][2] = {}--赠品+6赤练石
tKingServer_BossDrop["Item"][2]["Id"] = 3303298
tKingServer_BossDrop["Item"][2]["Num"] = 1
tKingServer_BossDrop["Item"][2]["Chance"] = 5000
tKingServer_BossDrop["Item"][3] = {}--晶莹星陨石
tKingServer_BossDrop["Item"][3]["Id"] = 3200727
tKingServer_BossDrop["Item"][3]["Num"] = 2
tKingServer_BossDrop["Item"][3]["Chance"] = 5000
tKingServer_BossDrop["Item"][4] = {}--明亮星陨石
tKingServer_BossDrop["Item"][4]["Id"] = 3200726
tKingServer_BossDrop["Item"][4]["Num"] = 3
tKingServer_BossDrop["Item"][4]["Chance"] = 5000
tKingServer_BossDrop["Item"][5] = {}--+2赤炼石包
tKingServer_BossDrop["Item"][5]["Id"] = 3301224
tKingServer_BossDrop["Item"][5]["Num"] = 5
tKingServer_BossDrop["Item"][5]["Chance"] = 10000

local tKingServer_Reward = {}
	-- ===给极品一洞装备
	-- ===索引: tKingServer_Reward["Gear"]
	-- ===LogStep: 1[1]
	tKingServer_Reward["Gear"] = {}
	tKingServer_Reward["Gear"]["LogId"] = 12001537
	tKingServer_Reward["Gear"]["LogStep"] = "1[1]"
	tKingServer_Reward["Gear"]["RewardItem"] = {}
	tKingServer_Reward["Gear"]["RewardItem"][1] = {}
	tKingServer_Reward["Gear"]["RewardItem"][1]["Id"] = 120269 -- FloridNecklace[120269][属性:0][叠加:0][金币:32000], 【表格】瑶华宝链
	tKingServer_Reward["Gear"]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞FloridNecklace（赠）*1
	tKingServer_Reward["Gear"]["RewardItem"][2] = {}
	tKingServer_Reward["Gear"]["RewardItem"][2]["Id"] = 150269 -- CrimsonRing[150269][属性:0][叠加:0][金币:46480], 【表格】绛珠宝戒
	tKingServer_Reward["Gear"]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞CrimsonRing（赠）*1
	tKingServer_Reward["Gear"]["RewardItem"][3] = {}
	tKingServer_Reward["Gear"]["RewardItem"][3]["Id"] = 160249 -- Blizzard[160249][属性:0][叠加:0][金币:41180], 【表格】腾龙靴
	tKingServer_Reward["Gear"]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞Blizzard（赠）*1
	tKingServer_Reward["Gear"]["RewardItem"][4] = {}
	tKingServer_Reward["Gear"]["RewardItem"][4]["Id"] = 201009 -- HeavenFan[201009][属性:0][叠加:0][金币:37818], 【表格】凌霄扇
	tKingServer_Reward["Gear"]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞HeavenFan（赠）*1
	tKingServer_Reward["Gear"]["RewardItem"][5] = {}
	tKingServer_Reward["Gear"]["RewardItem"][5]["Id"] = 202009 -- StarTower[202009][属性:0][叠加:0][金币:37818], 【表格】混元塔
	tKingServer_Reward["Gear"]["RewardItem"][5]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞StarTower（赠）*1
	tKingServer_Reward["Gear"]["RewardItem"][6] = {}
	tKingServer_Reward["Gear"]["RewardItem"][6]["Id"] = 203009 -- RidingCrop[203009][属性:0][叠加:0][金币:37818], 【表格】马鞭
	tKingServer_Reward["Gear"]["RewardItem"][6]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞RidingCrop（赠）*1
	tKingServer_Reward["Gear"]["RewardItem"][7] = {}
	tKingServer_Reward["Gear"]["RewardItem"][7]["Id"] = 204009 -- TempestWing[204009][属性:0][叠加:0][金币:37818], 【表格】风雷翅
	tKingServer_Reward["Gear"]["RewardItem"][7]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞TempestWing（赠）*1
	tKingServer_Reward["Gear"]["RewardItem"][8] = {}
	tKingServer_Reward["Gear"]["RewardItem"][8]["Id"] = 300000 -- Steed[300000][属性:0][叠加:0][金币:0], 【表格】马
	tKingServer_Reward["Gear"]["RewardItem"][8]["Attr"] = "0 1 3" -- Steed
	tKingServer_Reward["Gear"]["RewardProItem"] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][1] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][1]["Pro"] = {{10,15}}
	tKingServer_Reward["Gear"]["RewardProItem"][1]["Item"] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][1]["Item"][1] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][1]["Item"][1]["Id"] = 118309 -- PeerlessCoronet[118309][属性:0][叠加:0][金币:48080], 【表格】勇士装备
	tKingServer_Reward["Gear"]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞PeerlessCoronet（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][1]["Item"][2] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][1]["Item"][2]["Id"] = 130309 -- ObsidianArmor[130309][属性:0][叠加:0][金币:129000], 【表格】勇士装备
	tKingServer_Reward["Gear"]["RewardProItem"][1]["Item"][2]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞ObsidianArmor（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][1]["Item"][3] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][1]["Item"][3]["Id"] = 410439 -- SkyBlade[410439][属性:0][叠加:0][金币:100000], 【表格】勇士装备
	tKingServer_Reward["Gear"]["RewardProItem"][1]["Item"][3]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞SkyBlade（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][1]["Item"][4] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][1]["Item"][4]["Id"] = 614439 -- FangCrossSaber[614439][属性:0][叠加:0][金币:200000], 【表格】勇士装备
	tKingServer_Reward["Gear"]["RewardProItem"][1]["Item"][4]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞FangCrossSaber（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][1]["Item"][5] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][1]["Item"][5]["Id"] = 614439 -- FangCrossSaber[614439][属性:0][叠加:0][金币:200000], 【表格】勇士装备
	tKingServer_Reward["Gear"]["RewardProItem"][1]["Item"][5]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞FangCrossSaber（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][1]["Item"][6] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][1]["Item"][6]["Id"] = 420439 -- SquallSword[420439][属性:0][叠加:0][金币:100000], 【表格】勇士装备
	tKingServer_Reward["Gear"]["RewardProItem"][1]["Item"][6]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞SquallSword（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][1]["Item"][7] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][1]["Item"][7]["Id"] = 561439 -- OccultWand[561439][属性:0][叠加:0][金币:100000], 【表格】勇士装备
	tKingServer_Reward["Gear"]["RewardProItem"][1]["Item"][7]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞OccultWand（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][2] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][2]["Pro"] = {{20,25}}
	tKingServer_Reward["Gear"]["RewardProItem"][2]["Item"] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][2]["Item"][1] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][2]["Item"][1]["Id"] = 111309 -- SteelHelmet[111309][属性:0][叠加:0][金币:48080], 【表格】战士装备
	tKingServer_Reward["Gear"]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞SteelHelmet（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][2]["Item"][2] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][2]["Item"][2]["Id"] = 141309 -- DragonHeadband[141309][属性:0][叠加:0][金币:48080], 【表格】战士装备
	tKingServer_Reward["Gear"]["RewardProItem"][2]["Item"][2]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞DragonHeadband（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][2]["Item"][2] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][2]["Item"][2]["Id"] = 131309 -- ImperiousArmor[131309][属性:0][叠加:0][金币:129000], 【表格】战士装备
	tKingServer_Reward["Gear"]["RewardProItem"][2]["Item"][2]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞ImperiousArmor（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][2]["Item"][3] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][2]["Item"][3]["Id"] = 560439 -- SpearOfWrath[560439][属性:0][叠加:0][金币:100000], 【表格】战士装备
	tKingServer_Reward["Gear"]["RewardProItem"][2]["Item"][3]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞SpearOfWrath（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][2]["Item"][4] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][2]["Item"][4]["Id"] = 900309 -- CelestialShield[900309][属性:0][叠加:0][金币:113020], 【表格】战士装备
	tKingServer_Reward["Gear"]["RewardProItem"][2]["Item"][4]["Attr"] = "0 1 3" -- CelestialShield（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][2]["Item"][5] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][2]["Item"][5]["Id"] = 624439 -- EvilSlayer[624439][属性:0][叠加:0][金币:200000], 【表格】战士装备
	tKingServer_Reward["Gear"]["RewardProItem"][2]["Item"][5]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞EvilSlayer（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][2]["Item"][6] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][2]["Item"][6]["Id"] = 624439 -- EvilSlayer[624439][属性:0][叠加:0][金币:200000], 【表格】战士装备
	tKingServer_Reward["Gear"]["RewardProItem"][2]["Item"][6]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞EvilSlayer（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][3] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][3]["Pro"] = {{40,45}}
	tKingServer_Reward["Gear"]["RewardProItem"][3]["Item"] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][3]["Item"][1] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][3]["Item"][1]["Id"] = 113309 -- WhiteTigerHat[113309][属性:0][叠加:0][金币:96160], 【表格】弓手装备
	tKingServer_Reward["Gear"]["RewardProItem"][3]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞WhiteTigerHat（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][3]["Item"][2] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][3]["Item"][2]["Id"] = 142309 -- HeavenPlume[142309][属性:0][叠加:0][金币:96160], 【表格】弓手装备
	tKingServer_Reward["Gear"]["RewardProItem"][3]["Item"][2]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞HeavenPlume（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][3]["Item"][3] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][3]["Item"][3]["Id"] = 133309 -- WelkinCoat[133309][属性:0][叠加:0][金币:258000], 【表格】弓手装备
	tKingServer_Reward["Gear"]["RewardProItem"][3]["Item"][3]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞WelkinCoat（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][3]["Item"][4] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][3]["Item"][4]["Id"] = 500429 -- HeavenlyBow[500429][属性:0][叠加:0][金币:200000], 【表格】弓手装备
	tKingServer_Reward["Gear"]["RewardProItem"][3]["Item"][4]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞HeavenlyBow（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][3]["Item"][5] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][3]["Item"][5]["Id"] = 1050002 -- SpeedArrow[1050002][属性:0][叠加:0][金币:50000], 【表格】弓手装备
	tKingServer_Reward["Gear"]["RewardProItem"][3]["Item"][5]["Attr"] = "0 1 3" -- SpeedArrow（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][3]["Item"][6] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][3]["Item"][6]["Id"] = 613429 -- FantasyKnife[613429][属性:0][叠加:0][金币:100000], 【表格】弓手装备
	tKingServer_Reward["Gear"]["RewardProItem"][3]["Item"][6]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞FantasyKnife（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][3]["Item"][7] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][3]["Item"][7]["Id"] = 613429 -- FantasyKnife[613429][属性:0][叠加:0][金币:100000], 【表格】弓手装备
	tKingServer_Reward["Gear"]["RewardProItem"][3]["Item"][7]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞FantasyKnife（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][4] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][4]["Pro"] = {{50,55}}
	tKingServer_Reward["Gear"]["RewardProItem"][4]["Item"] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][4]["Item"][1] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][4]["Item"][1]["Id"] = 112309 -- RambleVeil[112309][属性:0][叠加:0][金币:48080], 【表格】忍者装备
	tKingServer_Reward["Gear"]["RewardProItem"][4]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞RambleVeil（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][4]["Item"][2] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][4]["Item"][2]["Id"] = 123309 -- NightmareHood[123309][属性:0][叠加:0][金币:48080], 【表格】忍者装备
	tKingServer_Reward["Gear"]["RewardProItem"][4]["Item"][2]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞NightmareHood（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][4]["Item"][3] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][4]["Item"][3]["Id"] = 616439 -- Nobunaga`sSwiftClaw[616439][属性:0][叠加:0][金币:200000], 【表格】忍者装备
	tKingServer_Reward["Gear"]["RewardProItem"][4]["Item"][3]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞Nobunaga`sSwiftClaw（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][4]["Item"][4] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][4]["Item"][4]["Id"] = 616439 -- Nobunaga`sSwiftClaw[616439][属性:0][叠加:0][金币:200000], 【表格】忍者装备
	tKingServer_Reward["Gear"]["RewardProItem"][4]["Item"][4]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞Nobunaga`sSwiftClaw（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][4]["Item"][5] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][4]["Item"][5]["Id"] = 135309 -- NightmareVest[135309][属性:0][叠加:0][金币:129000], 【表格】忍者装备
	tKingServer_Reward["Gear"]["RewardProItem"][4]["Item"][5]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞NightmareVest（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][4]["Item"][6] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][4]["Item"][6]["Id"] = 601439 -- HanzoKatana[601439][属性:0][叠加:0][金币:100000], 【表格】忍者装备
	tKingServer_Reward["Gear"]["RewardProItem"][4]["Item"][6]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞HanzoKatana（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][4]["Item"][7] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][4]["Item"][7]["Id"] = 601439 -- HanzoKatana[601439][属性:0][叠加:0][金币:100000], 【表格】忍者装备
	tKingServer_Reward["Gear"]["RewardProItem"][4]["Item"][7]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞HanzoKatana（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][4]["Item"][8] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][4]["Item"][8]["Id"] = 511439 -- SilenceScythe[511439][属性:0][叠加:0][金币:100000], 【表格】忍者装备
	tKingServer_Reward["Gear"]["RewardProItem"][4]["Item"][8]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞SilenceScythe（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][5] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][5]["Pro"] = {{60,65}}
	tKingServer_Reward["Gear"]["RewardProItem"][5]["Item"] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][5]["Item"][1] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][5]["Item"][1]["Id"] = 143309 -- XumiCap[143309][属性:0][叠加:0][金币:48080], 【表格】武僧装备
	tKingServer_Reward["Gear"]["RewardProItem"][5]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞XumiCap（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][5]["Item"][2] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][5]["Item"][2]["Id"] = 136309 -- WhiteLotusFrock[136309][属性:0][叠加:0][金币:129000], 【表格】武僧装备
	tKingServer_Reward["Gear"]["RewardProItem"][5]["Item"][2]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞WhiteLotusFrock（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][5]["Item"][3] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][5]["Item"][3]["Id"] = 610439 -- LazuritePrayerBeads[610439][属性:0][叠加:0][金币:100000], 【表格】武僧装备
	tKingServer_Reward["Gear"]["RewardProItem"][5]["Item"][3]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞LazuritePrayerBeads（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][5]["Item"][4] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][5]["Item"][4]["Id"] = 610439 -- LazuritePrayerBeads[610439][属性:0][叠加:0][金币:100000], 【表格】武僧装备
	tKingServer_Reward["Gear"]["RewardProItem"][5]["Item"][4]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞LazuritePrayerBeads（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][5]["Item"][5] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][5]["Item"][5]["Id"] = 117309 -- DreamEarrings[117309][属性:0][叠加:0][金币:48080], 【表格】武僧装备
	tKingServer_Reward["Gear"]["RewardProItem"][5]["Item"][5]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞DreamEarrings（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][5]["Item"][6] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][5]["Item"][6]["Id"] = 622439 -- AlmightyEmperor`sPillar[622439][属性:0][叠加:0][金币:200000], 【表格】武僧装备
	tKingServer_Reward["Gear"]["RewardProItem"][5]["Item"][6]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞AlmightyEmperor`sPillar（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][5]["Item"][7] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][5]["Item"][7]["Id"] = 622439 -- AlmightyEmperor`sPillar[622439][属性:0][叠加:0][金币:200000], 【表格】武僧装备
	tKingServer_Reward["Gear"]["RewardProItem"][5]["Item"][7]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞AlmightyEmperor`sPillar（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][6] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][6]["Pro"] = {{70,75}}
	tKingServer_Reward["Gear"]["RewardProItem"][6]["Item"] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][6]["Item"][1] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][6]["Item"][1]["Id"] = 144309 -- DominatorHat[144309][属性:0][叠加:0][金币:48080], 【表格】海盗装备
	tKingServer_Reward["Gear"]["RewardProItem"][6]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞DominatorHat（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][6]["Item"][2] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][6]["Item"][2]["Id"] = 139309 -- DarkDragonCoat[139309][属性:0][叠加:0][金币:129000], 【表格】海盗装备
	tKingServer_Reward["Gear"]["RewardProItem"][6]["Item"][2]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞DarkDragonCoat（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][6]["Item"][3] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][6]["Item"][3]["Id"] = 611439 -- CaptainRapier[611439][属性:0][叠加:0][金币:100000], 【表格】海盗装备
	tKingServer_Reward["Gear"]["RewardProItem"][6]["Item"][3]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞CaptainRapier（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][6]["Item"][4] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][6]["Item"][4]["Id"] = 612439 -- LordPistol[612439][属性:0][叠加:0][金币:100000], 【表格】海盗装备
	tKingServer_Reward["Gear"]["RewardProItem"][6]["Item"][4]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞LordPistol（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][6]["Item"][5] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][6]["Item"][5]["Id"] = 671439 -- MightyRapierofViolence[671439][属性:0][叠加:0][金币:200000], 【表格】海盗装备
	tKingServer_Reward["Gear"]["RewardProItem"][6]["Item"][5]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞MightyRapierofViolence（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][6]["Item"][6] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][6]["Item"][6]["Id"] = 670439 -- OceanDominator[670439][属性:0][叠加:0][金币:200000], 【表格】海盗装备
	tKingServer_Reward["Gear"]["RewardProItem"][6]["Item"][6]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞OceanDominator（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][7] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][7]["Pro"] = {{80,85}}
	tKingServer_Reward["Gear"]["RewardProItem"][7]["Item"] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][7]["Item"][1] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][7]["Item"][1]["Id"] = 148309 -- LegendHood[148309][属性:0][叠加:0][金币:48080], 【表格】小龙装备
	tKingServer_Reward["Gear"]["RewardProItem"][7]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞LegendHood（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][7]["Item"][2] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][7]["Item"][2]["Id"] = 138309 -- CombatSuit(Lv.140)[138309][属性:0][叠加:0][金币:129000], 【表格】小龙装备
	tKingServer_Reward["Gear"]["RewardProItem"][7]["Item"][2]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞CombatSuit(Lv.140)（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][7]["Item"][3] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][7]["Item"][3]["Id"] = 617439 -- SkyNunchaku[617439][属性:0][叠加:0][金币:100000], 【表格】小龙装备
	tKingServer_Reward["Gear"]["RewardProItem"][7]["Item"][3]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞SkyNunchaku（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][7]["Item"][4] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][7]["Item"][4]["Id"] = 617439 -- SkyNunchaku[617439][属性:0][叠加:0][金币:100000], 【表格】小龙装备
	tKingServer_Reward["Gear"]["RewardProItem"][7]["Item"][4]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞SkyNunchaku（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][8] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][8]["Pro"] = {{90,95}}
	tKingServer_Reward["Gear"]["RewardProItem"][8]["Item"] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][8]["Item"][1] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][8]["Item"][1]["Id"] = 147309 -- BlitzHeadwear[147309][属性:0][叠加:0][金币:48080], 【表格】斗士装备
	tKingServer_Reward["Gear"]["RewardProItem"][8]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞BlitzHeadwear（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][8]["Item"][2] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][8]["Item"][2]["Id"] = 146309 -- MightyHelmet[146309][属性:0][叠加:0][金币:48080], 【表格】斗士装备
	tKingServer_Reward["Gear"]["RewardProItem"][8]["Item"][2]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞MightyHelmet（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][8]["Item"][3] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][8]["Item"][3]["Id"] = 102309 -- TitanArmor[102309][属性:0][叠加:0][金币:129000], 【表格】斗士装备
	tKingServer_Reward["Gear"]["RewardProItem"][8]["Item"][3]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞TitanArmor（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][8]["Item"][4] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][8]["Item"][4]["Id"] = 680439 -- InfiniteFlashaxe[680439][属性:0][叠加:0][金币:200000], 【表格】斗士装备
	tKingServer_Reward["Gear"]["RewardProItem"][8]["Item"][4]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞InfiniteFlashaxe（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][8]["Item"][5] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][8]["Item"][5]["Id"] = 681439 -- ChaoticStormhammer[681439][属性:0][叠加:0][金币:200000], 【表格】斗士装备
	tKingServer_Reward["Gear"]["RewardProItem"][8]["Item"][5]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞ChaoticStormhammer（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][9] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][9]["Pro"] = {{100,145}}
	tKingServer_Reward["Gear"]["RewardProItem"][9]["Item"] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][9]["Item"][1] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][9]["Item"][1]["Id"] = 114309 -- DistinctCap[114309][属性:0][叠加:0][金币:48080], 【表格】道士装备
	tKingServer_Reward["Gear"]["RewardProItem"][9]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞DistinctCap（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][9]["Item"][2] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][9]["Item"][2]["Id"] = 121269 -- NiftyBag[121269][属性:0][叠加:0][金币:32000], 【表格】道士装备
	tKingServer_Reward["Gear"]["RewardProItem"][9]["Item"][2]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞NiftyBag（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][9]["Item"][3] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][9]["Item"][3]["Id"] = 152279 -- WyvernBracelet[152279][属性:0][叠加:0][金币:37818], 【表格】道士装备
	tKingServer_Reward["Gear"]["RewardProItem"][9]["Item"][3]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞WyvernBracelet（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][9]["Item"][4] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][9]["Item"][4]["Id"] = 134309 -- EternalRobe[134309][属性:0][叠加:0][金币:129000], 【表格】道士装备
	tKingServer_Reward["Gear"]["RewardProItem"][9]["Item"][4]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞EternalRobe（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][9]["Item"][5] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][9]["Item"][5]["Id"] = 421439 -- SupremeSword[421439][属性:0][叠加:0][金币:100000], 【表格】道士装备
	tKingServer_Reward["Gear"]["RewardProItem"][9]["Item"][5]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞SupremeSword（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][9]["Item"][6] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][9]["Item"][6]["Id"] = 117309 -- DreamEarrings[117309][属性:0][叠加:0][金币:48080], 【表格】道士装备
	tKingServer_Reward["Gear"]["RewardProItem"][9]["Item"][6]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞DreamEarrings（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][9]["Item"][7] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][9]["Item"][7]["Id"] = 619439 -- FierceImmortal[619439][属性:0][叠加:0][金币:200000], 【表格】道士装备
	tKingServer_Reward["Gear"]["RewardProItem"][9]["Item"][7]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞FierceImmortal（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][9]["Item"][8] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][9]["Item"][8]["Id"] = 620439 -- ImperialBacksword[620439][属性:0][叠加:0][金币:100000], 【表格】道士装备
	tKingServer_Reward["Gear"]["RewardProItem"][9]["Item"][8]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞ImperialBacksword（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][10] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][10]["Pro"] = {{160,165}}
	tKingServer_Reward["Gear"]["RewardProItem"][10]["Item"] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][10]["Item"][1] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][10]["Item"][1]["Id"] = 626439 -- DragonFan[626439][属性:0][叠加:0][金币:200000], 【表格】铁扇装备
	tKingServer_Reward["Gear"]["RewardProItem"][10]["Item"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞DragonFan（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][10]["Item"][2] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][10]["Item"][2]["Id"] = 626439 -- DragonFan[626439][属性:0][叠加:0][金币:200000], 【表格】铁扇装备
	tKingServer_Reward["Gear"]["RewardProItem"][10]["Item"][2]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞DragonFan（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][10]["Item"][3] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][10]["Item"][3]["Id"] = 101309 -- BrilliantWindrobe[101309][属性:0][叠加:0][金币:129000], 【表格】铁扇装备
	tKingServer_Reward["Gear"]["RewardProItem"][10]["Item"][3]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞BrilliantWindrobe（赠）*1
	tKingServer_Reward["Gear"]["RewardProItem"][10]["Item"][4] = {}
	tKingServer_Reward["Gear"]["RewardProItem"][10]["Item"][4]["Id"] = 170309 -- DivineCloudHat[170309][属性:0][叠加:0][金币:48080], 【表格】铁扇装备
	tKingServer_Reward["Gear"]["RewardProItem"][10]["Item"][4]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255" -- 1洞DivineCloudHat（赠）*1
	tKingServer_Reward["Gear"]["RewardEffect"] = {}
	tKingServer_Reward["Gear"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tKingServer_Reward["Gear"]["RewardEffect"]["Effect"] = "angelwing"

	-- ===给极品+12两洞装备
	-- ===索引: tKingServer_Reward["Stone"]
	tKingServer_Reward["Stone"] = {}
	tKingServer_Reward["Stone"]["LogId"] = 12001537
	tKingServer_Reward["Stone"]["DeleteItem"] = {}
	tKingServer_Reward["Stone"]["DeleteItem"][1] = {}
	tKingServer_Reward["Stone"]["DeleteItem"][1]["Id"] = 3326438 -- 【库】RebirthStone[属性:9]
	tKingServer_Reward["Stone"]["RewardItem"] = {}
	tKingServer_Reward["Stone"]["RewardItem"][1] = {}
	tKingServer_Reward["Stone"]["RewardItem"][1]["Id"] = 120269 -- FloridNecklace[120269][属性:0][叠加:0][金币:32000], 【表格】瑶华宝链
	tKingServer_Reward["Stone"]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 12 255 255" -- 2洞（追加+12）FloridNecklace（赠）*1
	tKingServer_Reward["Stone"]["RewardItem"][2] = {}
	tKingServer_Reward["Stone"]["RewardItem"][2]["Id"] = 150269 -- CrimsonRing[150269][属性:0][叠加:0][金币:46480], 【表格】绛珠宝戒
	tKingServer_Reward["Stone"]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 0 0 0 12 255 255" -- 2洞（追加+12）CrimsonRing（赠）*1
	tKingServer_Reward["Stone"]["RewardItem"][3] = {}
	tKingServer_Reward["Stone"]["RewardItem"][3]["Id"] = 160249 -- Blizzard[160249][属性:0][叠加:0][金币:41180], 【表格】腾龙靴
	tKingServer_Reward["Stone"]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 0 0 0 12 255 255" -- 2洞（追加+12）Blizzard（赠）*1
	tKingServer_Reward["Stone"]["RewardItem"][4] = {}
	tKingServer_Reward["Stone"]["RewardItem"][4]["Id"] = 201009 -- HeavenFan[201009][属性:0][叠加:0][金币:37818], 【表格】凌霄扇
	tKingServer_Reward["Stone"]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 0 0 0 12 255 255" -- 2洞（追加+12）HeavenFan（赠）*1
	tKingServer_Reward["Stone"]["RewardItem"][5] = {}
	tKingServer_Reward["Stone"]["RewardItem"][5]["Id"] = 202009 -- StarTower[202009][属性:0][叠加:0][金币:37818], 【表格】混元塔
	tKingServer_Reward["Stone"]["RewardItem"][5]["Attr"] = "0 1 3 0 0 0 0 0 0 0 12 255 255" -- 2洞（追加+12）StarTower（赠）*1
	tKingServer_Reward["Stone"]["RewardItem"][6] = {}
	tKingServer_Reward["Stone"]["RewardItem"][6]["Id"] = 203009 -- RidingCrop[203009][属性:0][叠加:0][金币:37818], 【表格】马鞭
	tKingServer_Reward["Stone"]["RewardItem"][6]["Attr"] = "0 1 3 0 0 0 0 0 0 0 12 255 255" -- 2洞（追加+12）RidingCrop（赠）*1
	tKingServer_Reward["Stone"]["RewardItem"][7] = {}
	tKingServer_Reward["Stone"]["RewardItem"][7]["Id"] = 204009 -- TempestWing[204009][属性:0][叠加:0][金币:37818], 【表格】风雷翅
	tKingServer_Reward["Stone"]["RewardItem"][7]["Attr"] = "0 1 3 0 0 0 0 0 0 0 12 255 255" -- 2洞（追加+12）TempestWing（赠）*1
	tKingServer_Reward["Stone"]["RewardItem"][8] = {}
	tKingServer_Reward["Stone"]["RewardItem"][8]["Id"] = 300000 -- Steed[300000][属性:0][叠加:0][金币:0], 【表格】枣红马
	tKingServer_Reward["Stone"]["RewardItem"][8]["Attr"] = "0 1 3 0 0 0 16750080 255 150 0 12" -- （追加+12）枣红马(普通马)（赠）*1
	tKingServer_Reward["Stone"]["RewardItem"][9] = {}
	tKingServer_Reward["Stone"]["RewardItem"][9]["Id"] = 118309 -- PeerlessCoronet[118309][属性:0][叠加:0][金币:48080], 【表格】勇士装备
	tKingServer_Reward["Stone"]["RewardItem"][9]["Attr"] = "0 1 3 0 0 0 0 0 0 0 12 255 255" -- 2洞（追加+12）PeerlessCoronet（赠）*1
	tKingServer_Reward["Stone"]["RewardItem"][10] = {}
	tKingServer_Reward["Stone"]["RewardItem"][10]["Id"] = 130309 -- ObsidianArmor[130309][属性:0][叠加:0][金币:129000], 【表格】勇士装备
	tKingServer_Reward["Stone"]["RewardItem"][10]["Attr"] = "0 1 3 0 0 0 0 0 0 0 12 255 255" -- 2洞（追加+12）ObsidianArmor（赠）*1
	tKingServer_Reward["Stone"]["RewardItem"][11] = {}
	tKingServer_Reward["Stone"]["RewardItem"][11]["Id"] = 410439 -- SkyBlade[410439][属性:0][叠加:0][金币:100000], 【表格】勇士装备
	tKingServer_Reward["Stone"]["RewardItem"][11]["Attr"] = "0 1 3 0 0 0 0 0 0 0 12 255 255" -- 2洞（追加+12）SkyBlade（赠）*1
	tKingServer_Reward["Stone"]["RewardItem"][12] = {}
	tKingServer_Reward["Stone"]["RewardItem"][12]["Id"] = 614439 -- FangCrossSaber[614439][属性:0][叠加:0][金币:200000], 【表格】勇士装备
	tKingServer_Reward["Stone"]["RewardItem"][12]["Attr"] = "0 1 3 0 0 0 0 0 0 0 12 255 255" -- 2洞（追加+12）FangCrossSaber（赠）*1
	tKingServer_Reward["Stone"]["RewardItem"][13] = {}
	tKingServer_Reward["Stone"]["RewardItem"][13]["Id"] = 614439 -- FangCrossSaber[614439][属性:0][叠加:0][金币:200000], 【表格】勇士装备
	tKingServer_Reward["Stone"]["RewardItem"][13]["Attr"] = "0 1 3 0 0 0 0 0 0 0 12 255 255" -- 2洞（追加+12）FangCrossSaber（赠）*1
	tKingServer_Reward["Stone"]["RewardItem"][14] = {}
	tKingServer_Reward["Stone"]["RewardItem"][14]["Id"] = 420439 -- SquallSword[420439][属性:0][叠加:0][金币:100000], 【表格】勇士装备
	tKingServer_Reward["Stone"]["RewardItem"][14]["Attr"] = "0 1 3 0 0 0 0 0 0 0 12 255 255" -- 2洞（追加+12）SquallSword（赠）*1
	tKingServer_Reward["Stone"]["RewardItem"][15] = {}
	tKingServer_Reward["Stone"]["RewardItem"][15]["Id"] = 561439 -- OccultWand[561439][属性:0][叠加:0][金币:100000], 【表格】勇士装备
	tKingServer_Reward["Stone"]["RewardItem"][15]["Attr"] = "0 1 3 0 0 0 0 0 0 0 12 255 255" -- 2洞（追加+12）OccultWand（赠）*1
	tKingServer_Reward["Stone"]["RewardItem"][16] = {}
	tKingServer_Reward["Stone"]["RewardItem"][16]["Id"] = 193525 -- FrozenFantasy(Glory)[193525][属性:8][叠加:0][金币:0], 【表格】FrozenFantasy（Glory）
	tKingServer_Reward["Stone"]["RewardItem"][16]["Attr"] = "0 1 3 518400 1 0 0 1" -- 360天时效(激活)的1%神佑FrozenFantasy(Glory)（赠）*1
	tKingServer_Reward["Stone"]["RewardItem"][17] = {}
	tKingServer_Reward["Stone"]["RewardItem"][17]["Id"] = 200544 -- GeneralCat(Star)[200544][属性:0][叠加:0][金币:0], 【表格】GeneralCat（Star）
	tKingServer_Reward["Stone"]["RewardItem"][17]["Attr"] = "0 1 3 518400 1 0 0 1" -- 360天时效(激活)的1%神佑GeneralCat(Star)（赠）*1
	tKingServer_Reward["Stone"]["RewardEffect"] = {}
	tKingServer_Reward["Stone"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tKingServer_Reward["Stone"]["RewardEffect"]["Effect"] = "angelwing"

	-- ===小怪掉落
	-- ===索引: tKingServer_Reward[1097][1]
	-- ===LogStep: 1[1]
	tKingServer_Reward[1097] = {}
	tKingServer_Reward[1097][1] = {}
	tKingServer_Reward[1097][1]["LogId"] = 12001537
	tKingServer_Reward[1097][1]["LogStep"] = "1[1]"
	tKingServer_Reward[1097][1]["RewardItem"] = {}
	tKingServer_Reward[1097][1]["RewardItem"][1] = {}
	tKingServer_Reward[1097][1]["RewardItem"][1]["Id"] = 3009000 -- TwilightStarStone[3009000][属性:9][叠加:0][金币:0], 【表格】微光星陨石
	tKingServer_Reward[1097][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的TwilightStarStone*1
	tKingServer_Reward[1097][1]["RewardEffect"] = {}
	tKingServer_Reward[1097][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tKingServer_Reward[1097][1]["RewardEffect"]["Effect"] = "angelwing"


	tKingServer_Reward[1097][2] = {}
	-- ===小怪掉落
	-- ===索引: tKingServer_Reward[1097][2]
	-- ===LogStep: 1[1]
	tKingServer_Reward[1097][2]["LogId"] = 12001537
	tKingServer_Reward[1097][2]["LogStep"] = "1[1]"
	tKingServer_Reward[1097][2]["RewardItem"] = {}
	tKingServer_Reward[1097][2]["RewardItem"][1] = {}
	tKingServer_Reward[1097][2]["RewardItem"][1]["Id"] = 3006552 --  3006552 【+2StonePack】, 【表格】+2赤炼石包
	tKingServer_Reward[1097][2]["RewardItem"][1]["Attr"] = "0 1 3" --  3006552 【+2StonePack】（赠）*1
	tKingServer_Reward[1097][2]["RewardEffect"] = {}
	tKingServer_Reward[1097][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tKingServer_Reward[1097][2]["RewardEffect"]["Effect"] = "angelwing"


	tKingServer_Reward[1097][3] = {}
	-- ===小怪掉落
	-- ===索引: tKingServer_Reward[1097][3]
	-- ===LogStep: 1[1]
	tKingServer_Reward[1097][3]["LogId"] = 12001537
	tKingServer_Reward[1097][3]["LogStep"] = "1[1]"
	tKingServer_Reward[1097][3]["RewardItem"] = {}
	tKingServer_Reward[1097][3]["RewardItem"][1] = {}
	tKingServer_Reward[1097][3]["RewardItem"][1]["Id"] = 3304333 -- Blissful3000ChiBag[3304333][属性:9][叠加:10000][金币:0], 【表格】3000气力值
	tKingServer_Reward[1097][3]["RewardItem"][1]["Attr"] = "0 1 3" -- Blissful3000ChiBag（赠）*1
	tKingServer_Reward[1097][3]["RewardEffect"] = {}
	tKingServer_Reward[1097][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tKingServer_Reward[1097][3]["RewardEffect"]["Effect"] = "angelwing"

--概率表
	local tKingServer_Chance = {}
	-- ===小怪掉落
	-- ===索引: tKingServer_Chance[1097]
	-- ===LogStep: 1[1]
	tKingServer_Chance[1097] = {}
	tKingServer_Chance[1097]["ItemChanceSum"] = 10000
	tKingServer_Chance[1097]["LogId"] = 12001537
	tKingServer_Chance[1097]["LogStep"] = " 1[1]"
	-- 微光星陨石 - 2.00%
	tKingServer_Chance[1097][1] = {}
	tKingServer_Chance[1097][1]["RandomItemChanceType"] = 2
	tKingServer_Chance[1097][1]["ItemChance"] = 200
	tKingServer_Chance[1097][1]["Item_1"] = 1
	-- +2赤炼石包 - 2.00%
	tKingServer_Chance[1097][2] = {}
	tKingServer_Chance[1097][2]["RandomItemChanceType"] = 2
	tKingServer_Chance[1097][2]["ItemChance"] = 200
	tKingServer_Chance[1097][2]["Item_1"] = 2
	-- 3000气力值 - 2.00%
	tKingServer_Chance[1097][3] = {}
	tKingServer_Chance[1097][3]["RandomItemChanceType"] = 2
	tKingServer_Chance[1097][3]["ItemChance"] = 200
	tKingServer_Chance[1097][3]["Item_1"] = 3
	-- 无奖励 - 94.00%
	tKingServer_Chance[1097][4] = {}
	tKingServer_Chance[1097][4]["RandomItemChanceType"] = 2
	tKingServer_Chance[1097][4]["ItemChance"] = 9400
	tKingServer_Chance[1097][4]["Item_1"] = 4

local tKingServer_Score = {}
	-- 战斗力PK赛
		tKingServer_Score[1] = {}
		tKingServer_Score[1]["Grade"] = 1
		tKingServer_Score[1]["limit"] = 10
		tKingServer_Score[1]["EventType"] = 201
		tKingServer_Score[1]["DateType"] = 43
	-- 个人竞技场排位赛
		tKingServer_Score[2] = {}
		tKingServer_Score[2]["Grade"] = 0
		tKingServer_Score[2]["limit"] = 28
		tKingServer_Score[2]["EventType"] = 201
		tKingServer_Score[2]["DateType"] = 44
	-- 组队PK赛
		tKingServer_Score[3] = {}
		tKingServer_Score[3][720794] = 0
		tKingServer_Score[3][720795] = 0
		tKingServer_Score[3][720796] = 0
		tKingServer_Score[3][720797] = 50
		tKingServer_Score[3]["720797EMoney"] = 500
		tKingServer_Score[3][720798] = 0
		tKingServer_Score[3][720799] = 0
		tKingServer_Score[3][720800] = 0
		tKingServer_Score[3][720801] = 30
		tKingServer_Score[3]["720801EMoney"] = 300
		tKingServer_Score[3][720802] = 0
		tKingServer_Score[3][720803] = 0
		tKingServer_Score[3][720804] = 0
		tKingServer_Score[3][720805] = 20
		tKingServer_Score[3]["720805EMoney"] = 200
		tKingServer_Score[3][720806] = 0
		tKingServer_Score[3][720807] = 0
		tKingServer_Score[3][720808] = 0
		tKingServer_Score[3][720809] = 10
		tKingServer_Score[3]["720809EMoney"] = 100
		--tKingServer_Score[3]["limit"] = 50
		tKingServer_Score[3]["EventType"] = 201
		tKingServer_Score[3]["DateType"] = 45
		tKingServer_Score[3]["EMoneyEventType"] = 201
		tKingServer_Score[3]["EMoneyDataType"] = 70
	-- 组队大众PK赛
		tKingServer_Score[4] = {}
		tKingServer_Score[4][1] = 50
		tKingServer_Score[4]["1EMoney"] = 500
		tKingServer_Score[4][2] = 30
		tKingServer_Score[4]["2EMoney"] = 300
		tKingServer_Score[4][3] = 20
		tKingServer_Score[4]["3EMoney"] = 200
		tKingServer_Score[4][4] = 10
		tKingServer_Score[4]["4EMoney"] = 100
		tKingServer_Score[4][5] = 10
		tKingServer_Score[4]["5EMoney"] = 100
		tKingServer_Score[4][6] = 10
		tKingServer_Score[4]["6EMoney"] = 100
		tKingServer_Score[4][7] = 10
		tKingServer_Score[4]["7EMoney"] = 100
		tKingServer_Score[4][8] = 10
		tKingServer_Score[4]["8EMoney"] = 100
		--tKingServer_Score[4]["limit"] = 50
		tKingServer_Score[4]["EventType"] = 201
		tKingServer_Score[4]["DateType"] = 46
		tKingServer_Score[4]["EMoneyEventType"] = 201
		tKingServer_Score[4]["EMoneyDataType"] = 71
	-- 家族占领赛
		tKingServer_Score[5] = {}
		tKingServer_Score[5]["Grade"] = 5
		--tKingServer_Score[5]["limit"] = 70
		tKingServer_Score[5]["EventType"] = 201
		tKingServer_Score[5]["DateType"] = 47
	-- 精英pk
		tKingServer_Score[6] = {}
		tKingServer_Score[6][720714] = 0
		tKingServer_Score[6][720718] = 0
		tKingServer_Score[6][720722] = 0
		tKingServer_Score[6][720726] = 0

		tKingServer_Score[6][720715] = 0
		tKingServer_Score[6][720719] = 0
		tKingServer_Score[6][720723] = 0
		tKingServer_Score[6][720727] = 0
	
		tKingServer_Score[6][720716] = 0
		tKingServer_Score[6][720720] = 0
		tKingServer_Score[6][720724] = 0
		tKingServer_Score[6][720728] = 0

		tKingServer_Score[6][720717] = 50
		tKingServer_Score[6]["720717EMoney"] = 500
		tKingServer_Score[6][720721] = 30
		tKingServer_Score[6]["720721EMoney"] = 300
		tKingServer_Score[6][720725] = 20
		tKingServer_Score[6]["720725EMoney"] = 200
		tKingServer_Score[6][720729] = 10
		tKingServer_Score[6]["720729EMoney"] = 100
		--tKingServer_Score[6]["limit"] = 50
		tKingServer_Score[6]["EventType"] = 201
		tKingServer_Score[6]["DateType"] = 48
		tKingServer_Score[6]["EMoneyEventType"] = 201
		tKingServer_Score[6]["EMoneyDataType"] = 72
		
	-- 帮派争霸赛(参加比赛即获得5分；杀敌5人后开始计分，每杀一人可得1分附加分，最多可得45分附加分)
		tKingServer_Score[7] = {}
		tKingServer_Score[7][1] = 5
		tKingServer_Score[7][2] = 1
		tKingServer_Score[7]["limit"] = 150
		tKingServer_Score[7]["EventType"] = 201
		tKingServer_Score[7]["DateType"] = 49
	-- 战旗争霸赛(参加比赛即获得5分；杀敌5人后开始计分，每杀一人可得1分附加分，最多可得45分附加分)
		tKingServer_Score[8] = {}
		tKingServer_Score[8][1] = 5
		tKingServer_Score[8][2] = 1
		tKingServer_Score[8]["limit"] = 150
		tKingServer_Score[8]["EventType"] = 201
		tKingServer_Score[8]["DateType"] = 50
	-- 跨服战旗争霸赛
		tKingServer_Score[9] = {}
		tKingServer_Score[9]["Grade"] = 0
		tKingServer_Score[9]["limit"] = 5
		tKingServer_Score[9]["EventType"] = 201
		tKingServer_Score[9]["DateType"] = 51
	-- PK周赛
		tKingServer_Score[10] = {}
		tKingServer_Score[10]["Grade"] = 50
		--tKingServer_Score[10]["limit"] = 50
		tKingServer_Score[10]["EventType"] = 201
		tKingServer_Score[10]["DateType"] = 52
	-- PK月赛
		tKingServer_Score[11] = {}
		tKingServer_Score[11]["Grade"] = 50
		--tKingServer_Score[11]["limit"] = 50
		tKingServer_Score[11]["EventType"] = 201
		tKingServer_Score[11]["DateType"] = 53
	-- 职业PK赛
		tKingServer_Score[12] = {}
		tKingServer_Score[12]["Grade"] = 25
		--tKingServer_Score[12]["limit"] = 25
		tKingServer_Score[12]["EventType"] = 201
		tKingServer_Score[12]["DateType"] = 54

----------------------------------逻辑部分---------------------------------------------

--进入王者地图
function KingServer_EnterMap(nNpcId)
    local nUserId = Get_UserId()

	User_UserRandBoundTrans(tKingServer_BossDrop["MapId"], tKingServer_Data["Enter"]["PosX"], tKingServer_Data["Enter"]["PosY"], tKingServer_Data["Enter"]["Cell"], tKingServer_Data["Enter"]["Cell"], 1, nUserId)

end

--打开网页
function KingServer_OpenWeb(nNpcId)
    local nUserId = Get_UserId()

    User_SendWebPage(tKingServer_Data["IntroWeb"], nUserId)
end

--升级到2转140级
function KingServer_UpLev(nNpcId, nChoosePro)
	local nUserId = Get_UserId()
	local nProf = (math.floor(Get_UserProfession(nUserId)/10)*1000)+5--计算最高职级
	local nUserMete = Get_UserMetempsychosis(nUserId)
	--已到达二转
	if nUserMete >= tKingServer_Data["MaxMete"] then
		User_UpLevelTo(tKingServer_Data["MaxLev"])
		LinkNpcGossipFunc_New(nNpcId, "2-1")
		return
	end

	local nNewProf = nChoosePro--转世后职级
	local nLookFace = 8
	if Get_UserSex(nUserId) == 2 then
		nLookFace = 7
	end
    --等级已达到
    if User_JudgeLevelAndMetempsychosis(tKingServer_Data["MaxLev"], tKingServer_Data["MaxMete"], nUserId) then
        LinkNpcGossipFunc_New(nNpcId, "2-1")
        return
	end

	--等级未达到
    if (Get_UserLevel(nUserId) < tKingServer_Data["MaxLev"]) then
        User_UpLevelTo(tKingServer_Data["MaxLev"])
    end

	local nMete = Get_UserMetempsychosis(nUserId)
	User_SetProfession(nProf, nUserId)
    --转世未达到
	if (nMete < tKingServer_Data["MaxMete"]) then
		local nPro = Get_UserProfession(nUserId)
		local nNewPro = CommonFunc_OldProChangeNewPro(nNewProf)
		-- 玩家转世
		User_Rebirth(nNewPro, nLookFace, nUserMete + 1, nUserId)
		
		-- 转世技能处理
		if not User_RebirthSkill(nUserId) then
			return false
		end
		
		-- 继承原有职业的部分技能
		if tKingServer_Skill[nUserMete + 1] == nil then
			return true
		end

		-- 判断该职业是否有需要继承技能的配置
		if tKingServer_Skill[nUserMete + 1][nPro] == nil then
			return true
		end

		-- 判断选择要转世的职业是否有需要继承技能的配置
		if tKingServer_Skill[nUserMete + 1][nPro][nNewProf] == nil then
			return true
		end

		for i,v in pairs(tKingServer_Skill[nUserMete + 1][nPro][nNewProf]) do
			if not Magic_ChkType(v,nUserId) then
				Magic_Learn(v,nUserId)
			end
		end
		
		-- 转世遗忘技能
		if not User_UnlearnSkill(nUserId) then
			return false
		end
		
		User_UpLevelTo(tKingServer_Data["MaxLev"])
	end
end

--领取一洞极品装备
function KingServer_ClaimGear(nNpcId)
    local nUserId = Get_UserId()

    --已经领取过
    local nEvent = tKingServer_Stc["Gear"]["Event"]
    local nData = tKingServer_Stc["Gear"]["Data"]
    if (Get_UserStatisticValue(nEvent, nData, nUserId) ~= 0) then
        LinkNpcGossipFunc_New(nNpcId, "2-2")
        return
    end

    --给极品装备
    --空间不足
    if not RewardTemplate_UpperLimit(tKingServer_Reward["Gear"], nUserId) then
        return
    end
    --记录领取掩码
    Task_SetStatistic(nEvent, nData, 1, 1, nUserId)
    Task_SetStcTimestamp(nEvent, nData, 0, nUserId)

    RewardTemplate_UseItemAndMsg(tKingServer_Reward["Gear"], nUserId)

end

--杀小怪触发
function KingServer_KillMonster(nMonsterId) 
	local nUserId = Get_UserId()

	local nFlag, tAward = Probabil_RandomAward(tKingServer_Chance, nMonsterId)
	local nIndex = tAward[1]["tAward"][1]["Item_1"]

	if (tKingServer_Reward[nMonsterId][nIndex] == nil) then
		return
	end

	RewardTemplate_UseItemAndMsg(tKingServer_Reward[nMonsterId][nIndex], nUserId)

end

--击杀BOSS
function KingServer_KillBoss(nMonsterId)

	for i, v in pairs(tKingServer_BossDrop["Item"]) do
		if Sys_Random(v["Chance"], tKingServer_BossDrop["TotalChance"]) then
			Map_DropMultiItems(tKingServer_BossDrop["MapId"], v["Id"], tKingServer_BossDrop["PosX"], tKingServer_BossDrop["PosY"], tKingServer_BossDrop["Cell"], tKingServer_BossDrop["Cell"], v["Num"], tKingServer_BossDrop["ExistTime"])
		end
	end

end

--每小时刷BOSS
function KingServer_BossBorn()
	local nGlobal = tKingServer_Data["Boss"]["Global"]
	local nMapId = tKingServer_Data["Boss"]["MapId"]

	--global 不为0 则为已刷新
	if (Get_SysDynaGlobalData(nGlobal, 0) ~= 0) then
		return
	end
	--删除上一个BOSS
	Monster_DelMonster(nMapId, tKingServer_Data["Boss"]["Id"])

	Monster_AddMonster(tKingServer_Data["Boss"]["MapId"], tKingServer_Data["Boss"]["PosX"], tKingServer_Data["Boss"]["PosY"], tKingServer_Data["Boss"]["Gen"], tKingServer_Data["Boss"]["Id"])
	--记录已刷新
	Sys_SetSynaGlobalData(nGlobal, 0, 1)

end

--清空BOSS刷新纪录
function KingServer_ClearBossGlobal()
	local nGlobal = tKingServer_Data["Boss"]["Global"]

	--global 不为0 则为已刷新
	if (Get_SysDynaGlobalData(nGlobal, 0) ~= 0) then
		Sys_SetSynaGlobalData(nGlobal, 0, 0)
	end

end

--给比赛奖励
function KingServer_Reward(nNum, nItem)
	--检测活动时间
	-- if not Sys_ChkFullTime(tActivityTime["KingServer"]["ActTime"]) then
		-- return
	-- end
	--检测金币博弈服时间
	if not Sys_ChkFullTime(tActivityTime["GoldServer"]["ActivityTime"]) then
		return
	end
	--检查服务器是不是王者服
	local nServerGlobal = tKingServer_Data["ServerGlobal"]
	if (Get_SysDynaGlobalData(nServerGlobal, 0) == 0) then
		return
	end
	local nUserId = Get_UserId()
	--判断本周是否已经达到上限了
	local nEvent = tKingServer_Score[nNum]["EventType"]
	local nType = tKingServer_Score[nNum]["DateType"]
	local nLimit = tKingServer_Score[nNum]["limit"]
	if Task_StcInterval(nEvent,nType,1,5,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
	if nLimit ~= nil then
		if Task_ChkStcValue(nEvent,nType,">=",nLimit,nUserId) then
			return
		end
	end
	local nGrade = 0
	if nItem == nil then
		nGrade = tKingServer_Score[nNum]["Grade"]
	else
		if tKingServer_Score[nNum][nItem] ~= nil then
			nGrade = tKingServer_Score[nNum][nItem]
		end
	end
	Task_AddStatistic(nEvent,nType,nGrade,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	--加总积分
	local nEventGrade = tKingServer_Stc["TotalScore"]["Event"]
	local nEventType = tKingServer_Stc["TotalScore"]["Data"]
	Task_AddStatistic(nEventGrade,nEventType,nGrade,1,nUserId)
	Task_SetStcTimestamp(nEventGrade,nEventType,0,nUserId)

	--加天石积分
	if nItem ~= nil then
		if (tKingServer_Score[nNum][nItem .. "EMoney"] ~= nil) then
			local nClassEvent = tKingServer_Score[nNum]["EMoneyEventType"]--加到类别掩码上
			local nClassData = tKingServer_Score[nNum]["EMoneyDataType"]
			Task_AddStatistic(nClassEvent, nClassData, tKingServer_Score[nNum][nItem .. "EMoney"],1,nUserId)
			Task_SetStcTimestamp(nClassEvent, nClassData, 0, nUserId)
			local nEMoneyEvent = tKingServer_Stc["TotalEMoney"]["Event"]
			local nEMoneyData = tKingServer_Stc["TotalEMoney"]["Data"]
			Task_AddStatistic(nEMoneyEvent, nEMoneyData, tKingServer_Score[nNum][nItem .. "EMoney"],1,nUserId)
			Task_SetStcTimestamp(nEMoneyEvent, nEMoneyData,0,nUserId)
		end
	end

end

--道士选择现在职业
function KingServer_NowPro(nNpcId, nNo)
	local nUserId = Get_UserId()
	local nNowProf = math.floor(Get_UserProfession(nUserId)/10)
	if nNowProf ~= tKingServer_Data["TaoistID"][0] then
		return
	end

	local nChoosePro = tKingServer_Data["TaoistID"][nNo]

	User_SetProfession(nChoosePro, nUserId)

	LinkNpcGossipFunc_New(nNpcId, "3-1")
end

--选择转世职业
function KingServer_ChoosePro(nNpcId, nNo)
	local nUserId = Get_UserId()

	local nMaxMete = tKingServer_Data["MaxMete"]

	local nUserMete = Get_UserMetempsychosis(nUserId)

	User_UpLevelTo(tKingServer_Data["MaxLev"])

	if nUserMete >= nMaxMete then--已达到
		LinkNpcGossipFunc_New(nNpcId, "2-1")
		return
	end

	local nChoosePro = tKingServer_Data["ProID"][nNo]

	KingServer_UpLev(nNpcId, nChoosePro)

end

--杀人触发，判断是否在比赛中
function KingServer_KillOther(nKiller, nBeKilled)
	local nUserId = nKiller or Get_UserId()

	local nUserMap = Get_UserMapId(nUserId)

	if tKingServer_Kill[nUserMap] == nil then--不在活动地图
		return
	end

	if not Sys_ChkWeedTime(tKingServer_Kill[nUserMap]["Time"]) then--不在活动时间
		return
	end

	--杀够5人才开始计分
	local nKillNumEvent = tKingServer_Kill[nUserMap]["KillNum"]["Event"]
	local nKillNumData = tKingServer_Kill[nUserMap]["KillNum"]["Data"]
	if Task_StcInterval(nKillNumEvent, nKillNumData, 1, 5, nUserId) then
		Task_SetStatistic(nKillNumEvent, nKillNumData, 0, 1, nUserId)
		Task_SetStcTimestamp(nKillNumEvent, nKillNumData, 0, nUserId)
	end
	Task_AddStatistic(nKillNumEvent, nKillNumData, 1, 1, nUserId)
	Task_SetStcTimestamp(nKillNumEvent, nKillNumData, 0, nUserId)
	local nKillNum = Get_UserStatisticValue(nKillNumEvent, nKillNumData, nUserId)
	if nKillNum <= 5 then
		return
	end

	--记录单场比赛是否达到50
	local nSingleEvent = tKingServer_Kill[nUserMap]["SingleEvent"]
	local nSingleData = tKingServer_Kill[nUserMap]["SingleData"]
	if Task_StcInterval(nSingleEvent, nSingleData, 1, 5, nUserId) then
		Task_SetStatistic(nSingleEvent, nSingleData, 0, 1, nUserId)
		Task_SetStcTimestamp(nSingleEvent, nSingleData, 0, nUserId)
	end

	local nEvent = tKingServer_Kill[nUserMap]["Event"]
	local nData = tKingServer_Kill[nUserMap]["Data"]
	if (Get_UserStatisticValue(nSingleEvent, nSingleData, nUserId) < tKingServer_Kill[nUserMap]["Max"]) then--没超过上限才加
		Task_AddStatistic(nSingleEvent, nSingleData, tKingServer_Kill[nUserMap]["Score"], 1, nUserId)
		Task_SetStcTimestamp(nSingleEvent, nSingleData, 0, nUserId)
		Task_AddStatistic(nEvent, nData, tKingServer_Kill[nUserMap]["Score"], 1, nUserId)
		Task_SetStcTimestamp(nEvent, nData, 0, nUserId)
		local nTotalEvent = tKingServer_Stc["TotalScore"]["Event"]
		local nTotalData = tKingServer_Stc["TotalScore"]["Data"]
		Task_AddStatistic(nTotalEvent, nTotalData, tKingServer_Kill[nUserMap]["Score"], 1, nUserId)
		Task_SetStcTimestamp(nTotalEvent, nTotalData, 0, nUserId)
	end

end

----------------------------------NPC部分---------------------------------------------

--英雄王 24687
tNpcFace[6170] = 40
tNpcGossip[24687]= tNpcGossip[24687] or DefaultNpc:new{}
tNpcGossip[24687]["OptionHidden"] = 1
tNpcGossip[24687]["DialogueText"] = tKingServer_Text[24687]
--活动前 1-1
tNpcGossip[24687]["Text1-1"] = {111, 112, 113, 114, 115, 116}
tNpcGossip[24687]["tOption1-1"] = {111}
tNpcGossip[24687]["ChkFunc1-1"] = function()
    local nUserId = Get_UserId()
    
	return CommonFunc_GetBeforeActivityTime(tActivityTime["KingServer"]["ActTime"])
end
--活动后 1-2
tNpcGossip[24687]["Text1-2"] = {121}
tNpcGossip[24687]["tOption1-2"] = {121}
tNpcGossip[24687]["ChkFunc1-2"] = function()
    local nUserId = Get_UserId()
    
	return CommonFunc_GetAfterActivityTime(tActivityTime["KingServer"]["ActTime"])
end
--活动中 1-3
tNpcGossip[24687]["Text1-3"] = {131, 132, 133, 134, 135, 136}
tNpcGossip[24687]["tOption1-3"] = {131, 132, 133, 134}
tNpcGossip[24687]["OptionFunc131"] = "KingServer_EnterMap</N>24687"--进入王者地图
tNpcGossip[24687]["OptionFunc132"] = "KingServer_OpenWeb</N>24687"--王者服详情 线下页面
tNpcGossip[24687]["OptionFunc134"] = "KingServer_ClaimGear</N>24687"--领取一洞极品装备
tNpcGossip[24687]["ChkFunc1-3"] = function()
    local nUserId = Get_UserId()
    --领取装备选项
    local nEvent = tKingServer_Stc["Gear"]["Event"]
    local nData = tKingServer_Stc["Gear"]["Data"]
    if (Get_UserStatisticValue(nEvent, nData, nUserId) ~= 0) then
        tNpcGossip[24687]["Option134"] = tKingServer_Text[24687]["Option134"] .. tKingServer_Text[24687]["Option137"]
    else
        tNpcGossip[24687]["Option134"] = tKingServer_Text[24687]["Option134"]
    end
    --升级选项
    local nLevel = tKingServer_Data["MaxLev"]
    local nMete = tKingServer_Data["MaxMete"]
    if User_JudgeLevelAndMetempsychosis(nLevel, nMete, nUserId) then
        tNpcGossip[24687]["Option133"] = tKingServer_Text[24687]["Option133"] .. tKingServer_Text[24687]["Option136"]
    else
        tNpcGossip[24687]["Option133"] = tKingServer_Text[24687]["Option133"]
    end
	-- 道士选项
	local nNowProf = math.floor(Get_UserProfession(nUserId)/10)
	if nNowProf == tKingServer_Data["TaoistID"][0] then
		tNpcGossip[24687]["OptionPoint133"] = "4-1"--选职业
	else
		tNpcGossip[24687]["OptionPoint133"] = "3-1"--直升
	end

	return Sys_ChkFullTime(tActivityTime["KingServer"]["ActTime"])
end
--升级到2转140 已达到 2-1
tNpcGossip[24687]["Text2-1"] = {211}
tNpcGossip[24687]["tOption2-1"] = {211}
--领取全套一洞极品装备 已领取 2-2
tNpcGossip[24687]["Text2-2"] = {221}
tNpcGossip[24687]["tOption2-2"] = {221}
--选择转世职业 3-1
tNpcGossip[24687]["Text3-1"] = {311}
tNpcGossip[24687]["tOption3-1"] = {311, 312, 313, 314, 315, 316, 317, 318, 319, 3110, 3111}
tNpcGossip[24687]["OptionFunc311"] = "KingServer_ChoosePro</N>24687</N>1"
tNpcGossip[24687]["OptionFunc312"] = "KingServer_ChoosePro</N>24687</N>2"
tNpcGossip[24687]["OptionFunc313"] = "KingServer_ChoosePro</N>24687</N>3"
tNpcGossip[24687]["OptionFunc314"] = "KingServer_ChoosePro</N>24687</N>4"
tNpcGossip[24687]["OptionFunc315"] = "KingServer_ChoosePro</N>24687</N>5"
tNpcGossip[24687]["OptionFunc316"] = "KingServer_ChoosePro</N>24687</N>6"
tNpcGossip[24687]["OptionFunc317"] = "KingServer_ChoosePro</N>24687</N>7"
tNpcGossip[24687]["OptionFunc318"] = "KingServer_ChoosePro</N>24687</N>8"
tNpcGossip[24687]["OptionFunc319"] = "KingServer_ChoosePro</N>24687</N>9"
tNpcGossip[24687]["OptionFunc3110"] = "KingServer_ChoosePro</N>24687</N>10"
tNpcGossip[24687]["OptionFunc3111"] = "KingServer_ChoosePro</N>24687</N>11"
--道士选择现在职业 4-1
tNpcGossip[24687]["Text4-1"] = {411}
tNpcGossip[24687]["tOption4-1"] = {411, 412}
tNpcGossip[24687]["OptionFunc411"] = "KingServer_NowPro</N>24687</N>1"
tNpcGossip[24687]["OptionFunc412"] = "KingServer_NowPro</N>24687</N>2"


--英雄王 24705
tNpcGossip[24705]= tNpcGossip[24705] or DefaultNpc:new{}
tNpcGossip[24705]["OptionHidden"] = 1
tNpcGossip[24705]["DialogueText"] = tKingServer_Text[24687]
--活动前 1-1
tNpcGossip[24705]["Text1-1"] = {111, 112, 113, 114, 115, 116}
tNpcGossip[24705]["tOption1-1"] = {111}
tNpcGossip[24705]["ChkFunc1-1"] = function()
    local nUserId = Get_UserId()
    
	return Sys_ChkFullTime(tActivityTime["KingServer"]["ActTime"])
end

---------------------------------物品部分---------------------------------------------
-- 转世石
tItem[3326438] = tItem[3326438] or {}
tItem[3326438]["Function"] = function(nItemId,sItemName)
	local nUserId = Get_UserId()
	if not Item_ChkItem(nItemId)then
		return
	end
	
	--已经领取过
	local nEvent = tKingServer_Stc["Stone"]["Event"]
	local nData = tKingServer_Stc["Stone"]["Data"]
	if Get_UserStatisticValue(nEvent, nData, nUserId) ~= 0 then
		if Item_DelItem(nItemId) then
			User_TalkChannel2005(tKingServer_Text["RebirthStone"])
		end
		return
	end

	--给极品装备
	--空间不足
	if not RewardTemplate_CheckSpace(tKingServer_Reward["Stone"], nUserId) then
		return
	end
	
	-- 转世处理
	if not User_JudgeLevelAndMetempsychosis(tKingServer_Data["MaxLev"], tKingServer_Data["MaxMete"], nUserId) then
		local nUserMete = Get_UserMetempsychosis(nUserId)
		if nUserMete == 0 then
			-- 设置当前职业
			User_SetProfession(tKingServer_Data["WarriorID"], nUserId)
			-- 一转
			KingServer_ChoosePro(tKingServer_Data["NpcId"],3)
		end
		-- 二转
		KingServer_ChoosePro(tKingServer_Data["NpcId"],3)
	end
	
	-- 学习技能
	-- 变猪
	if not Magic_ChkType(tKingServer_Data["Skill"][1],nUserId) then
		Magic_Learn(tKingServer_Data["Skill"][1],nUserId)
	end
	-- 骑术
	if not Magic_ChkType(tKingServer_Data["Skill"][2],nUserId) then
		Magic_Learn(tKingServer_Data["Skill"][2],nUserId)
	end

	--记录领取掩码
	Task_SetStatistic(nEvent, nData, 1, 1, nUserId)
	Task_SetStcTimestamp(nEvent, nData, 0, nUserId)

	RewardTemplate_UseItemAndMsg(tKingServer_Reward["Stone"], nUserId)
end

---------------------------------陷阱部分---------------------------------------------
tTrap[173] = tTrap[173] or {}--出地图trap
tTrap[173]["Function"] = function(nTrapId, nTrapType)
	local nUserId = Get_UserId()
	local nNpcId = tKingServer_Data["NpcId"]
	local nMapId = Get_NpcMapID(nNpcId)
	local nPosX = Get_NpcPositionX(nNpcId)
	local nPosY = Get_NpcPositionY(nNpcId)

	User_UserRandBoundTrans(nMapId, nPosX, nPosY, tKingServer_Data["Enter"]["Cell"], tKingServer_Data["Enter"]["Cell"], 1, nUserId)

end
---------------------------------怪物部分---------------------------------------------
local tKingServer_KillMonster = {}
tKingServer_KillMonster["ActivityTime"] = tActivityTime["KingServer"]["ActTime"]
tKingServer_KillMonster["Function"] = KingServer_KillMonster
tKingServer_KillMonster["MonsterId"] = {1097}
table.insert(tMonsterDrop_AreaLoad, tKingServer_KillMonster)
table.insert(tMonsterDrop_AreaLoad_NoGift, tKingServer_KillMonster)

local tKingServer_KillBoss = {}
tKingServer_KillBoss["ActivityTime"] = tActivityTime["KingServer"]["ActTime"]
tKingServer_KillBoss["Function"] = KingServer_KillBoss
tKingServer_KillBoss["MonsterId"] = {1098}
table.insert(tMonsterDrop_AreaLoad, tKingServer_KillBoss)
table.insert(tMonsterDrop_AreaLoad_NoGift, tKingServer_KillBoss)

---------------------------------时间自检--------------------------------------------

local tKingServer_OnTime = {}
	--每小时刷BOSS
	tKingServer_OnTime[1] = {}
	tKingServer_OnTime[1]["Type"] = 6
	tKingServer_OnTime[1]["TimeType"] = 4
	tKingServer_OnTime[1]["Multiple"] = {}
	tKingServer_OnTime[1]["Multiple"][1]  = "00:00 00:02"
	tKingServer_OnTime[1]["Multiple"][2]  = "01:00 01:02"
	tKingServer_OnTime[1]["Multiple"][3]  = "02:00 02:02"
	tKingServer_OnTime[1]["Multiple"][4]  = "03:00 03:02"
	tKingServer_OnTime[1]["Multiple"][5]  = "04:00 04:02"
	tKingServer_OnTime[1]["Multiple"][6]  = "05:00 05:02"
	tKingServer_OnTime[1]["Multiple"][7]  = "06:00 06:02"
	tKingServer_OnTime[1]["Multiple"][8]  = "07:00 07:02"
	tKingServer_OnTime[1]["Multiple"][9]  = "08:00 08:02"
	tKingServer_OnTime[1]["Multiple"][10] = "09:00 09:02"
	tKingServer_OnTime[1]["Multiple"][11] = "10:00 10:02"
	tKingServer_OnTime[1]["Multiple"][12] = "11:00 11:02"
	tKingServer_OnTime[1]["Multiple"][13] = "12:00 12:02"
	tKingServer_OnTime[1]["Multiple"][14] = "13:00 13:02"
	tKingServer_OnTime[1]["Multiple"][15] = "14:00 14:02"
	tKingServer_OnTime[1]["Multiple"][16] = "15:00 15:02"
	tKingServer_OnTime[1]["Multiple"][17] = "16:00 16:02"
	tKingServer_OnTime[1]["Multiple"][18] = "17:00 17:02"
	tKingServer_OnTime[1]["Multiple"][19] = "18:00 18:02"
	tKingServer_OnTime[1]["Multiple"][20] = "19:00 19:02"
	tKingServer_OnTime[1]["Multiple"][21] = "20:00 20:02"
	tKingServer_OnTime[1]["Multiple"][22] = "21:00 21:02"
	tKingServer_OnTime[1]["Multiple"][23] = "22:00 22:02"
	tKingServer_OnTime[1]["Multiple"][24] = "23:00 23:02"
	tKingServer_OnTime[1]["Func"] = KingServer_BossBorn
	table.insert(tSystemTime_InitialData, tKingServer_OnTime[1])
	--清空BOSS动态码
	tKingServer_OnTime[2] = {}
	tKingServer_OnTime[2]["Type"] = 6
	tKingServer_OnTime[2]["TimeType"] = 4
	tKingServer_OnTime[2]["Multiple"] = {}
	tKingServer_OnTime[2]["Multiple"][1]  = "00:30 00:32"
	tKingServer_OnTime[2]["Multiple"][2]  = "01:30 01:32"
	tKingServer_OnTime[2]["Multiple"][3]  = "02:30 02:32"
	tKingServer_OnTime[2]["Multiple"][4]  = "03:30 03:32"
	tKingServer_OnTime[2]["Multiple"][5]  = "04:30 04:32"
	tKingServer_OnTime[2]["Multiple"][6]  = "05:30 05:32"
	tKingServer_OnTime[2]["Multiple"][7]  = "06:30 06:32"
	tKingServer_OnTime[2]["Multiple"][8]  = "07:30 07:32"
	tKingServer_OnTime[2]["Multiple"][9]  = "08:30 08:32"
	tKingServer_OnTime[2]["Multiple"][10] = "09:30 09:32"
	tKingServer_OnTime[2]["Multiple"][11] = "10:30 10:32"
	tKingServer_OnTime[2]["Multiple"][12] = "11:30 11:32"
	tKingServer_OnTime[2]["Multiple"][13] = "12:30 12:32"
	tKingServer_OnTime[2]["Multiple"][14] = "13:30 13:32"
	tKingServer_OnTime[2]["Multiple"][15] = "14:30 14:32"
	tKingServer_OnTime[2]["Multiple"][16] = "15:30 15:32"
	tKingServer_OnTime[2]["Multiple"][17] = "16:30 16:32"
	tKingServer_OnTime[2]["Multiple"][18] = "17:30 17:32"
	tKingServer_OnTime[2]["Multiple"][19] = "18:30 18:32"
	tKingServer_OnTime[2]["Multiple"][20] = "19:30 19:32"
	tKingServer_OnTime[2]["Multiple"][21] = "20:30 20:32"
	tKingServer_OnTime[2]["Multiple"][22] = "21:30 21:32"
	tKingServer_OnTime[2]["Multiple"][23] = "22:30 22:32"
	tKingServer_OnTime[2]["Multiple"][24] = "23:30 23:32"
	tKingServer_OnTime[2]["Func"] = KingServer_ClearBossGlobal
	table.insert(tSystemTime_InitialData, tKingServer_OnTime[2])

---------------------------------杀人触发

tUserKilled["tFunction"] = tUserKilled["tFunction"] or {}
table.insert(tUserKilled["tFunction"], KingServer_KillOther)
