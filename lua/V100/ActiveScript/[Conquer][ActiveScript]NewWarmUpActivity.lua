------------------------------------------------------------------------------------
--Name:		170802[简体征服][活动脚本]新征服预热活动制作
--Purpose:		新征服预热活动制作
--Creator:		许乐
--Created:		2017/08/02
------------------------------------------------------------------------------------
-- 前缀
-- NewWarmUpActivity_

-- 【简体征服】新征服预热活动制作
-- 1、预热送祝福NPC，玩家点击NPC即可发送新征服的祝福语，每小时可发送1次，NPC布置于玩家容易看见的地方
-- 2、每次发送可获得3颗幸运星，用于天降福禄抽奖，每天最多获得15颗
-- 3、累计一定人次送祝福，发放全民预热奖励，所有送过祝福的玩家都可以领（多个档次）
-----------------------------------------------------------
-- stc掩码说明
-- stc(163,70)		 每日限制获得幸运星的个数15个		每日重置
-- stc(163,71)		 记录玩家每小时送的祝福次数	每小时可送1次 	每小时重置
-- stc(163,72)		 记录玩家每日是否已领取对应档位的额外奖励	100/500/3000，即可领取额外礼包	每日重置
-- stc(163,77)		上线获得预热礼包

-- stc(165,62)		 开启预热礼包的次数	不重置

-- 动态码说明
-- 51703		-- data0 记录每日单服累积送祝福次数		每日重置
--						data1 记录使用新征服惊喜礼包随机获得璀璨星陨石 单服限制2个
-- 单服送祝福次数每累计100次发送一条系统公告

-- logid: 12000812
---------------------------------------------------------------
local tNewWarmUpActivity_Cont = {}
	-- tNewWarmUpActivity_Cont["BeforeActivity"] = tActivityTime["WarmUp"]["BeforeActivityTime"]
	-- tNewWarmUpActivity_Cont["Activity"] = tActivityTime["WarmUp"]["ActivityTime"]
	
	-- 等级限制
	tNewWarmUpActivity_Cont["Level"] = 100
	tNewWarmUpActivity_Cont["Metempsychosis"] = 1
	
	tNewWarmUpActivity_Cont["Web"] = "http://zf.99.com/gamer/progress/"
	
	tNewWarmUpActivity_Cont["GlobalId"] = 51703
	
	tNewWarmUpActivity_Cont["MapId"] = {}
	tNewWarmUpActivity_Cont["MapId"][1] = 1036
	tNewWarmUpActivity_Cont["MapId"][2] = 1002
	tNewWarmUpActivity_Cont["MapId"][3] = 10137
	tNewWarmUpActivity_Cont["MapId"][4] = 10166
	tNewWarmUpActivity_Cont["MapId"][5] = 1068
	
	tNewWarmUpActivity_Cont[1036] = {}
	tNewWarmUpActivity_Cont[1036]["NpcId"] = 22013
	tNewWarmUpActivity_Cont[1036]["MapId"] = 1036
	tNewWarmUpActivity_Cont[1036]["CellX"] = 270
	tNewWarmUpActivity_Cont[1036]["CellY"] = 196
	
	tNewWarmUpActivity_Cont[1002] = {}
	tNewWarmUpActivity_Cont[1002]["NpcId"] = 22014
	tNewWarmUpActivity_Cont[1002]["MapId"] = 1002
	tNewWarmUpActivity_Cont[1002]["CellX"] = 309
	tNewWarmUpActivity_Cont[1002]["CellY"] = 347
	
	tNewWarmUpActivity_Cont[10137] = {}
	tNewWarmUpActivity_Cont[10137]["NpcId"] = 22015
	tNewWarmUpActivity_Cont[10137]["MapId"] = 10137
	tNewWarmUpActivity_Cont[10137]["CellX"] = 108
	tNewWarmUpActivity_Cont[10137]["CellY"] = 408
	
	tNewWarmUpActivity_Cont[10166] = {}
	tNewWarmUpActivity_Cont[10166]["NpcId"] = 22016
	tNewWarmUpActivity_Cont[10166]["MapId"] = 10166
	tNewWarmUpActivity_Cont[10166]["CellX"] = 69
	tNewWarmUpActivity_Cont[10166]["CellY"] = 122
	
	tNewWarmUpActivity_Cont[1068] = {}
	tNewWarmUpActivity_Cont[1068]["NpcId"] = 22017
	tNewWarmUpActivity_Cont[1068]["MapId"] = 1068
	tNewWarmUpActivity_Cont[1068]["CellX"] = 51
	tNewWarmUpActivity_Cont[1068]["CellY"] = 54
	
local tNewWarmUpActivity_Stc = {}
	-- stc(163,70)		 每日限制获得幸运星的个数15个		每日重置
	tNewWarmUpActivity_Stc[1] = {}
	tNewWarmUpActivity_Stc[1]["EventType"] = 163
	tNewWarmUpActivity_Stc[1]["DataType"] = 70
	-- stc(163,71)		 记录玩家每小时送的祝福次数	每小时可送1次
	tNewWarmUpActivity_Stc[2] = {}
	tNewWarmUpActivity_Stc[2]["EventType"] = 163
	tNewWarmUpActivity_Stc[2]["DataType"] = 71
	-- stc(163,72)		 记录玩家是否已领取对应档位的额外奖励	100/500/3000，即可领取额外礼包
	tNewWarmUpActivity_Stc[3] = {}
	tNewWarmUpActivity_Stc[3]["EventType"] = 163
	tNewWarmUpActivity_Stc[3]["DataType"] = 72
	-- stc(163,77)		 上线获得预热礼包
	tNewWarmUpActivity_Stc[4] = {}
	tNewWarmUpActivity_Stc[4]["EventType"] = 163
	tNewWarmUpActivity_Stc[4]["DataType"] = 77
	-- stc(165,62)		 开启预热礼包的次数
	tNewWarmUpActivity_Stc[5] = {}
	tNewWarmUpActivity_Stc[5]["EventType"] = 165 --163
	tNewWarmUpActivity_Stc[5]["DataType"] = 62 --83

-- 使用礼包
local tNewWarmUpActivity_UsePack = {}
	-- 3304540	新征服惊喜礼包
	tNewWarmUpActivity_UsePack[3304540] = {}
	-- 概率获得
	tNewWarmUpActivity_UsePack[3304540][1] = {}
	tNewWarmUpActivity_UsePack[3304540][1]["Space"] = 5
	tNewWarmUpActivity_UsePack[3304540][1]["EmoneyMono"] = 2000
	tNewWarmUpActivity_UsePack[3304540][1]["ItemChanceSum"] = 10000
	-- 微光星陨石*2	12%		3009000
	tNewWarmUpActivity_UsePack[3304540][1][1] = {}
	tNewWarmUpActivity_UsePack[3304540][1][1]["RandomItemChanceType"] = 2
	tNewWarmUpActivity_UsePack[3304540][1][1]["ItemChance"] = 1200
	tNewWarmUpActivity_UsePack[3304540][1][1]["RewardItem"] = {}
	tNewWarmUpActivity_UsePack[3304540][1][1]["RewardItem"][1] = {}
	tNewWarmUpActivity_UsePack[3304540][1][1]["RewardItem"][1]["Id"] = 3009000
	tNewWarmUpActivity_UsePack[3304540][1][1]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	tNewWarmUpActivity_UsePack[3304540][1][1]["Log"] = "0,0,3304540,1,12000812,1[4],3009000,2"
	-- 微光星陨石*3	5%	3009000
	tNewWarmUpActivity_UsePack[3304540][1][2] = {}
	tNewWarmUpActivity_UsePack[3304540][1][2]["RandomItemChanceType"] = 2
	tNewWarmUpActivity_UsePack[3304540][1][2]["ItemChance"] = 500
	tNewWarmUpActivity_UsePack[3304540][1][2]["RewardItem"] = {}
	tNewWarmUpActivity_UsePack[3304540][1][2]["RewardItem"][1] = {}
	tNewWarmUpActivity_UsePack[3304540][1][2]["RewardItem"][1]["Id"] = 3009000
	tNewWarmUpActivity_UsePack[3304540][1][2]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tNewWarmUpActivity_UsePack[3304540][1][2]["Log"] = "0,0,3304540,1,12000812,1[4],3009000,3"
	-- 微光星陨石*5	5%	3009000
	tNewWarmUpActivity_UsePack[3304540][1][3] = {}
	tNewWarmUpActivity_UsePack[3304540][1][3]["RandomItemChanceType"] = 2
	tNewWarmUpActivity_UsePack[3304540][1][3]["ItemChance"] = 500
	tNewWarmUpActivity_UsePack[3304540][1][3]["RewardItem"] = {}
	tNewWarmUpActivity_UsePack[3304540][1][3]["RewardItem"][1] = {}
	tNewWarmUpActivity_UsePack[3304540][1][3]["RewardItem"][1]["Id"] = 3009000
	tNewWarmUpActivity_UsePack[3304540][1][3]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	tNewWarmUpActivity_UsePack[3304540][1][3]["Log"] = "0,0,3304540,1,12000812,1[4],3009000,5"
	-- 晶莹星陨石	1.30%	3009002
	tNewWarmUpActivity_UsePack[3304540][1][4] = {}
	tNewWarmUpActivity_UsePack[3304540][1][4]["RandomItemChanceType"] = 2
	tNewWarmUpActivity_UsePack[3304540][1][4]["ItemChance"] = 130
	tNewWarmUpActivity_UsePack[3304540][1][4]["RewardItem"] = {}
	tNewWarmUpActivity_UsePack[3304540][1][4]["RewardItem"][1] = {}
	tNewWarmUpActivity_UsePack[3304540][1][4]["RewardItem"][1]["Id"] = 3009002
	tNewWarmUpActivity_UsePack[3304540][1][4]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tNewWarmUpActivity_UsePack[3304540][1][4]["Log"] = "0,0,3304540,1,12000812,1[4],3009002,1"
	tNewWarmUpActivity_UsePack[3304540][1][4]["RewardBroadCast"] = tNewWarmUpActivity_Text[3304540]["Broad"][4]
	-- 璀璨星陨石	0.05%	3009003
	tNewWarmUpActivity_UsePack[3304540][1][5] = {}
	tNewWarmUpActivity_UsePack[3304540][1][5]["RandomItemChanceType"] = 2
	tNewWarmUpActivity_UsePack[3304540][1][5]["ItemChance"] = 5
	tNewWarmUpActivity_UsePack[3304540][1][5]["RewardItem"] = {}
	tNewWarmUpActivity_UsePack[3304540][1][5]["RewardItem"][1] = {}
	tNewWarmUpActivity_UsePack[3304540][1][5]["RewardItem"][1]["Id"] = 3009003
	tNewWarmUpActivity_UsePack[3304540][1][5]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tNewWarmUpActivity_UsePack[3304540][1][5]["GlobalId"] = 51703
	tNewWarmUpActivity_UsePack[3304540][1][5]["Pos"] = 1
	tNewWarmUpActivity_UsePack[3304540][1][5]["MaxData"] = 2
	tNewWarmUpActivity_UsePack[3304540][1][5]["FullIndex"] = 4
	tNewWarmUpActivity_UsePack[3304540][1][5]["Log"] = "0,0,3304540,1,12000812,1[4],3009003,1"
	tNewWarmUpActivity_UsePack[3304540][1][5]["RewardBroadCast"] = tNewWarmUpActivity_Text[3304540]["Broad"][5]
	-- 2000赠点	0.10%
	tNewWarmUpActivity_UsePack[3304540][1][6] = {}
	tNewWarmUpActivity_UsePack[3304540][1][6]["RandomItemChanceType"] = 2
	tNewWarmUpActivity_UsePack[3304540][1][6]["ItemChance"] = 10
	tNewWarmUpActivity_UsePack[3304540][1][6]["RewardEMoneyMono"] = {}
	tNewWarmUpActivity_UsePack[3304540][1][6]["RewardEMoneyMono"]["Value"] = 2000
	tNewWarmUpActivity_UsePack[3304540][1][6]["Log"] = "0,0,3304540,1,12000812,1[4],3,2000"
	tNewWarmUpActivity_UsePack[3304540][1][6]["RewardBroadCast"] = tNewWarmUpActivity_Text[3304540]["Broad"][6]
	-- 20赠点	15%
	tNewWarmUpActivity_UsePack[3304540][1][7] = {}
	tNewWarmUpActivity_UsePack[3304540][1][7]["RandomItemChanceType"] = 2
	tNewWarmUpActivity_UsePack[3304540][1][7]["ItemChance"] = 1500
	tNewWarmUpActivity_UsePack[3304540][1][7]["RewardEMoneyMono"] = {}
	tNewWarmUpActivity_UsePack[3304540][1][7]["RewardEMoneyMono"]["Value"] = 20
	tNewWarmUpActivity_UsePack[3304540][1][7]["Log"] = "0,0,3304540,1,12000812,1[4],3,20"
	-- 30赠点	5%
	tNewWarmUpActivity_UsePack[3304540][1][8] = {}
	tNewWarmUpActivity_UsePack[3304540][1][8]["RandomItemChanceType"] = 2
	tNewWarmUpActivity_UsePack[3304540][1][8]["ItemChance"] = 500
	tNewWarmUpActivity_UsePack[3304540][1][8]["RewardEMoneyMono"] = {}
	tNewWarmUpActivity_UsePack[3304540][1][8]["RewardEMoneyMono"]["Value"] = 30
	tNewWarmUpActivity_UsePack[3304540][1][8]["Log"] = "0,0,3304540,1,12000812,1[4],3,30"
	-- 50赠点	5%
	tNewWarmUpActivity_UsePack[3304540][1][9] = {}
	tNewWarmUpActivity_UsePack[3304540][1][9]["RandomItemChanceType"] = 2
	tNewWarmUpActivity_UsePack[3304540][1][9]["ItemChance"] = 500
	tNewWarmUpActivity_UsePack[3304540][1][9]["RewardEMoneyMono"] = {}
	tNewWarmUpActivity_UsePack[3304540][1][9]["RewardEMoneyMono"]["Value"] = 50
	tNewWarmUpActivity_UsePack[3304540][1][9]["Log"] = "0,0,3304540,1,12000812,1[4],3,50"
	-- 500赠点	1.30%
	tNewWarmUpActivity_UsePack[3304540][1][10] = {}
	tNewWarmUpActivity_UsePack[3304540][1][10]["RandomItemChanceType"] = 2
	tNewWarmUpActivity_UsePack[3304540][1][10]["ItemChance"] = 130
	tNewWarmUpActivity_UsePack[3304540][1][10]["RewardEMoneyMono"] = {}
	tNewWarmUpActivity_UsePack[3304540][1][10]["RewardEMoneyMono"]["Value"] = 500
	tNewWarmUpActivity_UsePack[3304540][1][10]["Log"] = "0,0,3304540,1,12000812,1[4],3,500"
	tNewWarmUpActivity_UsePack[3304540][1][10]["RewardBroadCast"] = tNewWarmUpActivity_Text[3304540]["Broad"][10]
	-- 赤炼石+1（赠）*2	15%	730001
	tNewWarmUpActivity_UsePack[3304540][1][11] = {}
	tNewWarmUpActivity_UsePack[3304540][1][11]["RandomItemChanceType"] = 2
	tNewWarmUpActivity_UsePack[3304540][1][11]["ItemChance"] = 1500
	tNewWarmUpActivity_UsePack[3304540][1][11]["RewardItem"] = {}
	tNewWarmUpActivity_UsePack[3304540][1][11]["RewardItem"][1] = {}
	tNewWarmUpActivity_UsePack[3304540][1][11]["RewardItem"][1]["Id"] = 730001
	tNewWarmUpActivity_UsePack[3304540][1][11]["RewardItem"][1]["Attr"] = "0 2 3"
	tNewWarmUpActivity_UsePack[3304540][1][11]["Log"] = "0,0,3304540,1,12000812,1[4],730001,2"
	-- 赤炼石+1（赠）*3	5%	730001
	tNewWarmUpActivity_UsePack[3304540][1][12] = {}
	tNewWarmUpActivity_UsePack[3304540][1][12]["RandomItemChanceType"] = 2
	tNewWarmUpActivity_UsePack[3304540][1][12]["ItemChance"] = 500
	tNewWarmUpActivity_UsePack[3304540][1][12]["RewardItem"] = {}
	tNewWarmUpActivity_UsePack[3304540][1][12]["RewardItem"][1] = {}
	tNewWarmUpActivity_UsePack[3304540][1][12]["RewardItem"][1]["Id"] = 730001
	tNewWarmUpActivity_UsePack[3304540][1][12]["RewardItem"][1]["Attr"] = "0 3 3"
	tNewWarmUpActivity_UsePack[3304540][1][12]["Log"] = "0,0,3304540,1,12000812,1[4],730001,3"
	-- 赤炼石+1（赠）*5	3%	730001
	tNewWarmUpActivity_UsePack[3304540][1][13] = {}
	tNewWarmUpActivity_UsePack[3304540][1][13]["RandomItemChanceType"] = 2
	tNewWarmUpActivity_UsePack[3304540][1][13]["ItemChance"] = 300
	tNewWarmUpActivity_UsePack[3304540][1][13]["RewardItem"] = {}
	tNewWarmUpActivity_UsePack[3304540][1][13]["RewardItem"][1] = {}
	tNewWarmUpActivity_UsePack[3304540][1][13]["RewardItem"][1]["Id"] = 730001
	tNewWarmUpActivity_UsePack[3304540][1][13]["RewardItem"][1]["Attr"] = "0 5 3"
	tNewWarmUpActivity_UsePack[3304540][1][13]["Log"] = "0,0,3304540,1,12000812,1[4],730001,5"
	-- 赤炼石+5（赠）	1.30%		730005
	tNewWarmUpActivity_UsePack[3304540][1][14] = {}
	tNewWarmUpActivity_UsePack[3304540][1][14]["RandomItemChanceType"] = 2
	tNewWarmUpActivity_UsePack[3304540][1][14]["ItemChance"] = 130
	tNewWarmUpActivity_UsePack[3304540][1][14]["RewardItem"] = {}
	tNewWarmUpActivity_UsePack[3304540][1][14]["RewardItem"][1] = {}
	tNewWarmUpActivity_UsePack[3304540][1][14]["RewardItem"][1]["Id"] = 730005
	tNewWarmUpActivity_UsePack[3304540][1][14]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewWarmUpActivity_UsePack[3304540][1][14]["Log"] = "0,0,3304540,1,12000812,1[4],730005,1"
	tNewWarmUpActivity_UsePack[3304540][1][14]["RewardBroadCast"] = tNewWarmUpActivity_Text[3304540]["Broad"][14]
	-- 赤炼石+6（赠）	0.05%		730006
	tNewWarmUpActivity_UsePack[3304540][1][15] = {}
	tNewWarmUpActivity_UsePack[3304540][1][15]["RandomItemChanceType"] = 2
	tNewWarmUpActivity_UsePack[3304540][1][15]["ItemChance"] = 5
	tNewWarmUpActivity_UsePack[3304540][1][15]["RewardItem"] = {}
	tNewWarmUpActivity_UsePack[3304540][1][15]["RewardItem"][1] = {}
	tNewWarmUpActivity_UsePack[3304540][1][15]["RewardItem"][1]["Id"] = 730006
	tNewWarmUpActivity_UsePack[3304540][1][15]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewWarmUpActivity_UsePack[3304540][1][15]["Log"] = "0,0,3304540,1,12000812,1[4],730006,1"
	tNewWarmUpActivity_UsePack[3304540][1][15]["RewardBroadCast"] = tNewWarmUpActivity_Text[3304540]["Broad"][15]
	-- 3000气力	0.10%
	tNewWarmUpActivity_UsePack[3304540][1][16] = {}
	tNewWarmUpActivity_UsePack[3304540][1][16]["RandomItemChanceType"] = 2
	tNewWarmUpActivity_UsePack[3304540][1][16]["ItemChance"] = 10
	tNewWarmUpActivity_UsePack[3304540][1][16]["RewardStrengthValue"] = {}
	tNewWarmUpActivity_UsePack[3304540][1][16]["RewardStrengthValue"]["Value"] = 3000
	tNewWarmUpActivity_UsePack[3304540][1][16]["Log"] = "0,0,3304540,1,12000812,1[4],12,3000"
	tNewWarmUpActivity_UsePack[3304540][1][16]["RewardBroadCast"] = tNewWarmUpActivity_Text[3304540]["Broad"][16]
	-- 20气力值	15%
	tNewWarmUpActivity_UsePack[3304540][1][17] = {}
	tNewWarmUpActivity_UsePack[3304540][1][17]["RandomItemChanceType"] = 2
	tNewWarmUpActivity_UsePack[3304540][1][17]["ItemChance"] = 1500
	tNewWarmUpActivity_UsePack[3304540][1][17]["RewardStrengthValue"] = {}
	tNewWarmUpActivity_UsePack[3304540][1][17]["RewardStrengthValue"]["Value"] = 20
	tNewWarmUpActivity_UsePack[3304540][1][17]["Log"] = "0,0,3304540,1,12000812,1[4],12,20"
	-- 30气力值	5%
	tNewWarmUpActivity_UsePack[3304540][1][18] = {}
	tNewWarmUpActivity_UsePack[3304540][1][18]["RandomItemChanceType"] = 2
	tNewWarmUpActivity_UsePack[3304540][1][18]["ItemChance"] = 500
	tNewWarmUpActivity_UsePack[3304540][1][18]["RewardStrengthValue"] = {}
	tNewWarmUpActivity_UsePack[3304540][1][18]["RewardStrengthValue"]["Value"] = 30
	tNewWarmUpActivity_UsePack[3304540][1][18]["Log"] = "0,0,3304540,1,12000812,1[4],12,30"
	-- 50气力值	4%
	tNewWarmUpActivity_UsePack[3304540][1][19] = {}
	tNewWarmUpActivity_UsePack[3304540][1][19]["RandomItemChanceType"] = 2
	tNewWarmUpActivity_UsePack[3304540][1][19]["ItemChance"] = 400
	tNewWarmUpActivity_UsePack[3304540][1][19]["RewardStrengthValue"] = {}
	tNewWarmUpActivity_UsePack[3304540][1][19]["RewardStrengthValue"]["Value"] = 50
	tNewWarmUpActivity_UsePack[3304540][1][19]["Log"] = "0,0,3304540,1,12000812,1[4],12,50"
	-- 1000气力值	1.80%
	tNewWarmUpActivity_UsePack[3304540][1][20] = {}
	tNewWarmUpActivity_UsePack[3304540][1][20]["RandomItemChanceType"] = 2
	tNewWarmUpActivity_UsePack[3304540][1][20]["ItemChance"] = 180
	tNewWarmUpActivity_UsePack[3304540][1][20]["RewardStrengthValue"] = {}
	tNewWarmUpActivity_UsePack[3304540][1][20]["RewardStrengthValue"]["Value"] = 1000
	tNewWarmUpActivity_UsePack[3304540][1][20]["Log"] = "0,0,3304540,1,12000812,1[4],12,1000"
	tNewWarmUpActivity_UsePack[3304540][1][20]["RewardBroadCast"] = tNewWarmUpActivity_Text[3304540]["Broad"][20]
	
	-- 获得奖励礼包
	tNewWarmUpActivity_UsePack["GetReward"] = {}
	-- 一键领取 1个
	tNewWarmUpActivity_UsePack["GetReward"][1] = {}
	tNewWarmUpActivity_UsePack["GetReward"][1]["RewardItem"] = {}
	tNewWarmUpActivity_UsePack["GetReward"][1]["RewardItem"][1] = {}
	tNewWarmUpActivity_UsePack["GetReward"][1]["RewardItem"][1]["Id"] = 3304540
	tNewWarmUpActivity_UsePack["GetReward"][1]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tNewWarmUpActivity_UsePack["GetReward"][1]["Log"] = "0,0,0,0,12000812,1[3],3304540,1"
	-- 一键领取 2个
	tNewWarmUpActivity_UsePack["GetReward"][2] = {}
	tNewWarmUpActivity_UsePack["GetReward"][2]["RewardItem"] = {}
	tNewWarmUpActivity_UsePack["GetReward"][2]["RewardItem"][1] = {}
	tNewWarmUpActivity_UsePack["GetReward"][2]["RewardItem"][1]["Id"] = 3304540
	tNewWarmUpActivity_UsePack["GetReward"][2]["RewardItem"][1]["Attr"] = "0 2 0 1440 1"
	tNewWarmUpActivity_UsePack["GetReward"][2]["Log"] = "0,0,0,0,12000812,1[3],3304540,2"
	-- 一键领取 3个
	tNewWarmUpActivity_UsePack["GetReward"][3] = {}
	tNewWarmUpActivity_UsePack["GetReward"][3]["RewardItem"] = {}
	tNewWarmUpActivity_UsePack["GetReward"][3]["RewardItem"][1] = {}
	tNewWarmUpActivity_UsePack["GetReward"][3]["RewardItem"][1]["Id"] = 3304540
	tNewWarmUpActivity_UsePack["GetReward"][3]["RewardItem"][1]["Attr"] = "0 3 0 1440 1"
	tNewWarmUpActivity_UsePack["GetReward"][3]["Log"] = "0,0,0,0,12000812,1[3],3304540,3"
	
	-- 获得幸运星  3304541
	tNewWarmUpActivity_UsePack[3304541] = {}
	tNewWarmUpActivity_UsePack[3304541]["RewardItem"] = {}
	tNewWarmUpActivity_UsePack[3304541]["RewardItem"][1] = {}
	tNewWarmUpActivity_UsePack[3304541]["RewardItem"][1]["Id"] = 3304541
	tNewWarmUpActivity_UsePack[3304541]["RewardItem"][1]["Attr"] = "0 3"
	tNewWarmUpActivity_UsePack[3304541]["Log"] = "0,0,0,0,12000812,1[2],3304541,3"
	
	-- 3304539	新征服上线大礼包
	--tNewWarmUpActivity_UsePack["Login"] = {}
	--tNewWarmUpActivity_UsePack["Login"]["RewardItem"] = {}
	--tNewWarmUpActivity_UsePack["Login"]["RewardItem"][1] = {}
	--tNewWarmUpActivity_UsePack["Login"]["RewardItem"][1]["Id"] = 3304539
	--tNewWarmUpActivity_UsePack["Login"]["RewardItem"][1]["Attr"] = "0 1"
	--tNewWarmUpActivity_UsePack["Login"]["Log"] = "0,0,0,0,12000812,2,3304539,1"
	--tNewWarmUpActivity_UsePack["Login"]["Talk"] = tNewWarmUpActivity_Text[3304539]["RewardItem"]
	
---------------------后续部分新增内容
	-- 3304539	新征服上线大礼包
	--[[
	tNewWarmUpActivity_UsePack[3304539] = {}
	-- 第1次	100气力+1颗明亮星陨石	额外赠送2个怀旧武器外套包	
	tNewWarmUpActivity_UsePack[3304539][1] = {}
	tNewWarmUpActivity_UsePack[3304539][1]["Space"] = 3
	tNewWarmUpActivity_UsePack[3304539][1]["RewardItem"] = {}
	tNewWarmUpActivity_UsePack[3304539][1]["RewardItem"][1] = {}
	tNewWarmUpActivity_UsePack[3304539][1]["RewardItem"][1]["Id"] = 3009001
	tNewWarmUpActivity_UsePack[3304539][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tNewWarmUpActivity_UsePack[3304539][1]["RewardItem"][2] = {}
	tNewWarmUpActivity_UsePack[3304539][1]["RewardItem"][2]["Id"] = 3304542
	tNewWarmUpActivity_UsePack[3304539][1]["RewardItem"][2]["Attr"] = "0 2"
	tNewWarmUpActivity_UsePack[3304539][1]["RewardStrengthValue"] = {}
	tNewWarmUpActivity_UsePack[3304539][1]["RewardStrengthValue"]["Value"] = 100
	tNewWarmUpActivity_UsePack[3304539][1]["Log"] = "0,0,0,0,12000812,2[1],3009001[12][3304542],1[100][2]"
	-- 第2次	200气力+2颗明亮星陨石		
	tNewWarmUpActivity_UsePack[3304539][2] = {}
	tNewWarmUpActivity_UsePack[3304539][2]["Space"] = 2
	tNewWarmUpActivity_UsePack[3304539][2]["RewardItem"] = {}
	tNewWarmUpActivity_UsePack[3304539][2]["RewardItem"][1] = {}
	tNewWarmUpActivity_UsePack[3304539][2]["RewardItem"][1]["Id"] = 3009001
	tNewWarmUpActivity_UsePack[3304539][2]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	tNewWarmUpActivity_UsePack[3304539][2]["RewardStrengthValue"] = {}
	tNewWarmUpActivity_UsePack[3304539][2]["RewardStrengthValue"]["Value"] = 200
	tNewWarmUpActivity_UsePack[3304539][2]["Log"] = "0,0,0,0,12000812,2[2],3009001[12],2[200]"
	-- 第3次	300气力+3颗明亮星陨石		
	tNewWarmUpActivity_UsePack[3304539][3] = {}
	tNewWarmUpActivity_UsePack[3304539][3]["Space"] = 3
	tNewWarmUpActivity_UsePack[3304539][3]["RewardItem"] = {}
	tNewWarmUpActivity_UsePack[3304539][3]["RewardItem"][1] = {}
	tNewWarmUpActivity_UsePack[3304539][3]["RewardItem"][1]["Id"] = 3009001
	tNewWarmUpActivity_UsePack[3304539][3]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tNewWarmUpActivity_UsePack[3304539][3]["RewardStrengthValue"] = {}
	tNewWarmUpActivity_UsePack[3304539][3]["RewardStrengthValue"]["Value"] = 300
	tNewWarmUpActivity_UsePack[3304539][3]["Log"] = "0,0,0,0,12000812,2[3],3009001[12],3[300]"
	-- 第4次	400气力+4颗明亮星陨石		
	tNewWarmUpActivity_UsePack[3304539][4] = {}
	tNewWarmUpActivity_UsePack[3304539][4]["Space"] = 4
	tNewWarmUpActivity_UsePack[3304539][4]["RewardItem"] = {}
	tNewWarmUpActivity_UsePack[3304539][4]["RewardItem"][1] = {}
	tNewWarmUpActivity_UsePack[3304539][4]["RewardItem"][1]["Id"] = 3009001
	tNewWarmUpActivity_UsePack[3304539][4]["RewardItem"][1]["Attr"] = "0 4 0 2880 1"
	tNewWarmUpActivity_UsePack[3304539][4]["RewardStrengthValue"] = {}
	tNewWarmUpActivity_UsePack[3304539][4]["RewardStrengthValue"]["Value"] = 400
	tNewWarmUpActivity_UsePack[3304539][4]["Log"] = "0,0,0,0,12000812,2[4],3009001[12],4[400]"
	-- 第5次	500气力+5颗明亮星陨石		
	tNewWarmUpActivity_UsePack[3304539][5] = {}
	tNewWarmUpActivity_UsePack[3304539][5]["Space"] = 5
	tNewWarmUpActivity_UsePack[3304539][5]["RewardItem"] = {}
	tNewWarmUpActivity_UsePack[3304539][5]["RewardItem"][1] = {}
	tNewWarmUpActivity_UsePack[3304539][5]["RewardItem"][1]["Id"] = 3009001
	tNewWarmUpActivity_UsePack[3304539][5]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	tNewWarmUpActivity_UsePack[3304539][5]["RewardStrengthValue"] = {}
	tNewWarmUpActivity_UsePack[3304539][5]["RewardStrengthValue"]["Value"] = 500
	tNewWarmUpActivity_UsePack[3304539][5]["Log"] = "0,0,0,0,12000812,2[5],3009001[12],5[500]"
	-- 第6次	600气力+6颗明亮星陨石		
	tNewWarmUpActivity_UsePack[3304539][6] = {}
	tNewWarmUpActivity_UsePack[3304539][6]["Space"] = 6
	tNewWarmUpActivity_UsePack[3304539][6]["RewardItem"] = {}
	tNewWarmUpActivity_UsePack[3304539][6]["RewardItem"][1] = {}
	tNewWarmUpActivity_UsePack[3304539][6]["RewardItem"][1]["Id"] = 3009001
	tNewWarmUpActivity_UsePack[3304539][6]["RewardItem"][1]["Attr"] = "0 6 0 2880 1"
	tNewWarmUpActivity_UsePack[3304539][6]["RewardStrengthValue"] = {}
	tNewWarmUpActivity_UsePack[3304539][6]["RewardStrengthValue"]["Value"] = 600
	tNewWarmUpActivity_UsePack[3304539][6]["Log"] = "0,0,0,0,12000812,2[6],3009001[12],6[600]"
	-- 第7次	700气力+7颗明亮星陨石		
	tNewWarmUpActivity_UsePack[3304539][7] = {}
	tNewWarmUpActivity_UsePack[3304539][7]["Space"] = 6
	tNewWarmUpActivity_UsePack[3304539][7]["RewardItem"] = {}
	tNewWarmUpActivity_UsePack[3304539][7]["RewardItem"][1] = {}
	tNewWarmUpActivity_UsePack[3304539][7]["RewardItem"][1]["Id"] = 3009001
	tNewWarmUpActivity_UsePack[3304539][7]["RewardItem"][1]["Attr"] = "0 7 0 2880 1"
	tNewWarmUpActivity_UsePack[3304539][7]["RewardStrengthValue"] = {}
	tNewWarmUpActivity_UsePack[3304539][7]["RewardStrengthValue"]["Value"] = 700
	tNewWarmUpActivity_UsePack[3304539][7]["Log"] = "0,0,0,0,12000812,2[7],3009001[12],7[700]"
	]]--
	-- 3304542	怀旧武器外套包
	tNewWarmUpActivity_UsePack[3304542] = {}
	-- 370008	九霄惊雷【弓】
	tNewWarmUpActivity_UsePack[3304542][370008] = {}
	tNewWarmUpActivity_UsePack[3304542][370008]["RewardItem"] = {}
	tNewWarmUpActivity_UsePack[3304542][370008]["RewardItem"][1] = {}
	tNewWarmUpActivity_UsePack[3304542][370008]["RewardItem"][1]["Id"] = 370008
	tNewWarmUpActivity_UsePack[3304542][370008]["RewardItem"][1]["Attr"] = "0 1 3 21600 1 0 0 1"
	tNewWarmUpActivity_UsePack[3304542][370008]["Log"] = "0,0,0,0,12000812,2,370008,1"
	-- 350022	断岳青虹【长武】
	tNewWarmUpActivity_UsePack[3304542][350022] = {}
	tNewWarmUpActivity_UsePack[3304542][350022]["RewardItem"] = {}
	tNewWarmUpActivity_UsePack[3304542][350022]["RewardItem"][1] = {}
	tNewWarmUpActivity_UsePack[3304542][350022]["RewardItem"][1]["Id"] = 350022
	tNewWarmUpActivity_UsePack[3304542][350022]["RewardItem"][1]["Attr"] = "0 1 3 21600 1 0 0 1"
	tNewWarmUpActivity_UsePack[3304542][350022]["Log"] = "0,0,0,0,12000812,2,350022,1"
	-- 380010		不灭明王盾【盾】
	tNewWarmUpActivity_UsePack[3304542][380010] = {}
	tNewWarmUpActivity_UsePack[3304542][380010]["RewardItem"] = {}
	tNewWarmUpActivity_UsePack[3304542][380010]["RewardItem"][1] = {}
	tNewWarmUpActivity_UsePack[3304542][380010]["RewardItem"][1]["Id"] = 380010
	tNewWarmUpActivity_UsePack[3304542][380010]["RewardItem"][1]["Attr"] = "0 1 3 21600 1 0 0 1"
	tNewWarmUpActivity_UsePack[3304542][380010]["Log"] = "0,0,0,0,12000812,2,380010,1"
	-- 360220	分光破浪【短武】
	tNewWarmUpActivity_UsePack[3304542][360220] = {}
	tNewWarmUpActivity_UsePack[3304542][360220]["RewardItem"] = {}
	tNewWarmUpActivity_UsePack[3304542][360220]["RewardItem"][1] = {}
	tNewWarmUpActivity_UsePack[3304542][360220]["RewardItem"][1]["Id"] = 360220
	tNewWarmUpActivity_UsePack[3304542][360220]["RewardItem"][1]["Attr"] = "0 1 3 21600 1 0 0 1"
	tNewWarmUpActivity_UsePack[3304542][360220]["Log"] = "0,0,0,0,12000812,2,360220,1"
	-- 360221		八荒炎龙【短武】
	tNewWarmUpActivity_UsePack[3304542][360221] = {}
	tNewWarmUpActivity_UsePack[3304542][360221]["RewardItem"] = {}
	tNewWarmUpActivity_UsePack[3304542][360221]["RewardItem"][1] = {}
	tNewWarmUpActivity_UsePack[3304542][360221]["RewardItem"][1]["Id"] = 360221
	tNewWarmUpActivity_UsePack[3304542][360221]["RewardItem"][1]["Attr"] = "0 1 3 21600 1 0 0 1"
	tNewWarmUpActivity_UsePack[3304542][360221]["Log"] = "0,0,0,0,12000812,2,360221,1"
	-- 360222	冥魂九狱【短武】
	tNewWarmUpActivity_UsePack[3304542][360222] = {}
	tNewWarmUpActivity_UsePack[3304542][360222]["RewardItem"] = {}
	tNewWarmUpActivity_UsePack[3304542][360222]["RewardItem"][1] = {}
	tNewWarmUpActivity_UsePack[3304542][360222]["RewardItem"][1]["Id"] = 360222
	tNewWarmUpActivity_UsePack[3304542][360222]["RewardItem"][1]["Attr"] = "0 1 3 21600 1 0 0 1"
	tNewWarmUpActivity_UsePack[3304542][360222]["Log"] = "0,0,0,0,12000812,2,360222,1"
	-- 360223	开阳【短武】
	tNewWarmUpActivity_UsePack[3304542][360223] = {}
	tNewWarmUpActivity_UsePack[3304542][360223]["RewardItem"] = {}
	tNewWarmUpActivity_UsePack[3304542][360223]["RewardItem"][1] = {}
	tNewWarmUpActivity_UsePack[3304542][360223]["RewardItem"][1]["Id"] = 360223
	tNewWarmUpActivity_UsePack[3304542][360223]["RewardItem"][1]["Attr"] = "0 1 3 21600 1 0 0 1"
	tNewWarmUpActivity_UsePack[3304542][360223]["Log"] = "0,0,0,0,12000812,2,360223,1"
	-- 360224	大日飞凰【短武】
	tNewWarmUpActivity_UsePack[3304542][360224] = {}
	tNewWarmUpActivity_UsePack[3304542][360224]["RewardItem"] = {}
	tNewWarmUpActivity_UsePack[3304542][360224]["RewardItem"][1] = {}
	tNewWarmUpActivity_UsePack[3304542][360224]["RewardItem"][1]["Id"] = 360224
	tNewWarmUpActivity_UsePack[3304542][360224]["RewardItem"][1]["Attr"] = "0 1 3 21600 1 0 0 1"
	tNewWarmUpActivity_UsePack[3304542][360224]["Log"] = "0,0,0,0,12000812,2,360224,1"
	-- 360225	擒龙【短武】
	tNewWarmUpActivity_UsePack[3304542][360225] = {}
	tNewWarmUpActivity_UsePack[3304542][360225]["RewardItem"] = {}
	tNewWarmUpActivity_UsePack[3304542][360225]["RewardItem"][1] = {}
	tNewWarmUpActivity_UsePack[3304542][360225]["RewardItem"][1]["Id"] = 360225
	tNewWarmUpActivity_UsePack[3304542][360225]["RewardItem"][1]["Attr"] = "0 1 3 21600 1 0 0 1"
	tNewWarmUpActivity_UsePack[3304542][360225]["Log"] = "0,0,0,0,12000812,2,360225,1"
	-- 360226	灵蛇舞【短武】
	tNewWarmUpActivity_UsePack[3304542][360226] = {}
	tNewWarmUpActivity_UsePack[3304542][360226]["RewardItem"] = {}
	tNewWarmUpActivity_UsePack[3304542][360226]["RewardItem"][1] = {}
	tNewWarmUpActivity_UsePack[3304542][360226]["RewardItem"][1]["Id"] = 360226
	tNewWarmUpActivity_UsePack[3304542][360226]["RewardItem"][1]["Attr"] = "0 1 3 21600 1 0 0 1"
	tNewWarmUpActivity_UsePack[3304542][360226]["Log"] = "0,0,0,0,12000812,2,360226,1"
	-- 360227	飞影流霜【短武】
	tNewWarmUpActivity_UsePack[3304542][360227] = {}
	tNewWarmUpActivity_UsePack[3304542][360227]["RewardItem"] = {}
	tNewWarmUpActivity_UsePack[3304542][360227]["RewardItem"][1] = {}
	tNewWarmUpActivity_UsePack[3304542][360227]["RewardItem"][1]["Id"] = 360227
	tNewWarmUpActivity_UsePack[3304542][360227]["RewardItem"][1]["Attr"] = "0 1 3 21600 1 0 0 1"
	tNewWarmUpActivity_UsePack[3304542][360227]["Log"] = "0,0,0,0,12000812,2,360227,1"

local tNewWarmUpActivity_Log = {}
	-- 送祝福
	tNewWarmUpActivity_Log["Bless"] = "0,0,0,0,12000812,1[1],0,0"
	
local tNewWarmUpActivity_Effect = {}
	tNewWarmUpActivity_Effect[1] = "self"
	tNewWarmUpActivity_Effect[2] = "angelwing"
	tNewWarmUpActivity_Effect[3] = "zf2-e128"
	tNewWarmUpActivity_Effect[4] = "task055"
	
local tNewWarmUpActivity_NewEmoneylog = {}
tNewWarmUpActivity_NewEmoneylog["Log"] = "350	20180	0	0	1	"
------------------------------------------------逻辑部分-------------------------------------------------
-- 等级判断
function NewWarmUpActivity_JudgeLevel()
	local nLevel = tNewWarmUpActivity_Cont["Level"]
	local nMete = tNewWarmUpActivity_Cont["Metempsychosis"]
	if User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		return true
	else
		return false
	end
end

-- 判断时间
function NewWarmUpActivity_JudgeTime()
	if Sys_ChkFullTime(tActivityTime["WarmUp"]["ActivityTime"]) then
		return true
	else
		return false	
	end
end

-- 送祝福
function NewWarmUpActivity_SendBless(nNpcId,nChoose)
	
	-- 判断时间
	if not NewWarmUpActivity_JudgeTime() then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	
	-- 判断等级
	if not NewWarmUpActivity_JudgeLevel() then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 判断每小时送一次  整点
	-- stc(163,71)		 记录玩家每小时送的祝福次数	每小时可送1次
	local nEvent1 = tNewWarmUpActivity_Stc[2]["EventType"]
	local nType1 = tNewWarmUpActivity_Stc[2]["DataType"]
	if Task_StcInterval(nEvent1,nType1,1,4,0) then
		Task_SetStatistic(nEvent1,nType1,0,1,0)
		Task_SetStcTimestamp(nEvent1,nType1,0,0)
	end
	
	local nNowHour = os.date("%H")
	nNowHour = tonumber(nNowHour + 1)  -- 有0点的时候， 掩码值为当前小时数+1
	local nTime = Get_UserStatisticValue(nEvent1,nType1)
	if nTime == nNowHour then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
	
	-- 判断送的幸运星数量 15个上限
	-- stc(163,70)		 每日限制获得幸运星的个数15个		每日重置
	local nEvent3 = tNewWarmUpActivity_Stc[1]["EventType"]
	local nType3 = tNewWarmUpActivity_Stc[1]["DataType"]
	if Task_StcInterval(nEvent3,nType3,1,4,0) then
		Task_SetStatistic(nEvent3,nType3,0,1,0)
		Task_SetStcTimestamp(nEvent3,nType3,0,0)
	end
	
	local bFlag = true
	if Task_ChkStcValue(nEvent3,nType3,">=",5) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		bFlag = false
	end
	
	if bFlag then
		-- 判断背包空间
		local nSpace = RewardTemplate_GetRewardSpace(tNewWarmUpActivity_UsePack[3304541])
		if not User_CheckLeftSpace(nSpace) then
			LinkNpcGossipFunc_New(nNpcId,"2-3")
			return
		end
	end
	
	Task_SetStatistic(nEvent1,nType1,nNowHour,1,0)
	Task_SetStcTimestamp(nEvent1,nType1,0,0)

	local sUserName = Get_UserName()
	local nRand = 1
	if nChoose == 1 then
		nRand = math.random(1,3)
	else
		nRand = math.random(1,6)
	end
	Sys_SystemBroadcast(string.format(tNewWarmUpActivity_Text["Word"][nChoose][nRand],sUserName))
	Sys_SaveActionFestivalLog(tNewWarmUpActivity_Log["Bless"])
	User_EffectAdd(tNewWarmUpActivity_Effect[1],tNewWarmUpActivity_Effect[4])

	-- 记录单服累积送祝福次数
	local nGlobal = tNewWarmUpActivity_Cont["GlobalId"]
	local nData = Get_SysDynaGlobalData(nGlobal,0)
	local nNowData = nData + 1
	Sys_SetSynaGlobalData(nGlobal,0,nNowData)

	-- 单服送祝福次数每累计100次发送一条系统公告
	if nNowData%100 == 0 then
		Sys_SystemBroadcast(string.format(tNewWarmUpActivity_Text["Broadcast"],nNowData))
	end

	if bFlag then
		-- 给幸运星 3个
		Task_AddStatistic(nEvent3,nType3,1,1,0)
		Task_SetStcTimestamp(nEvent3,nType3,0,0)
		RewardTemplate_Reward(tNewWarmUpActivity_UsePack[3304541])
		-- User_EffectAdd(tNewWarmUpActivity_Effect[1],tNewWarmUpActivity_Effect[2])
		
		Sys_SaveEmoneyBuy(tNewWarmUpActivity_NewEmoneylog["Log"])
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		
	end
end

-- 领取额外奖励
function NewWarmUpActivity_GetReward(nNpcId)
	-- 判断时间
	if not NewWarmUpActivity_JudgeTime() then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	
	-- 判断等级
	if not NewWarmUpActivity_JudgeLevel() then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 判断是否送过祝福
	local nEvent1 = tNewWarmUpActivity_Stc[2]["EventType"]
	local nType1 = tNewWarmUpActivity_Stc[2]["DataType"]
	if Task_StcInterval(nEvent1,nType1,1,4,0) then
		Task_SetStatistic(nEvent1,nType1,0,1,0)
		Task_SetStcTimestamp(nEvent1,nType1,0,0)
	end
	
	if not Task_ChkStcValue(nEvent1,nType1,">",0) then
		LinkNpcGossipFunc_New(nNpcId,"4-3")
		return
	end
	
	-- 判断是否领取过全部奖励
	-- stc(163,72)		 记录玩家是否已领取对应档位的额外奖励	100/500/3000，即可领取额外礼包
	local nEvent2 = tNewWarmUpActivity_Stc[3]["EventType"]
	local nType2 = tNewWarmUpActivity_Stc[3]["DataType"]
	if Task_StcInterval(nEvent2,nType2,1,4,0) then
		Task_SetStatistic(nEvent2,nType2,0,1,0)
		Task_SetStcTimestamp(nEvent2,nType2,0,0)
	end
	
	if Task_ChkStcValue(nEvent2,nType2,">=",3) then
		LinkNpcGossipFunc_New(nNpcId,"4-2")
		return
	end
	
	local nGlobal = tNewWarmUpActivity_Cont["GlobalId"]
	local nData = Get_SysDynaGlobalData(nGlobal,0)
	local nNum = 0
	-- 判断应该领取哪一档的奖励
	if nData < 100 then
		nNum = 0
	elseif nData >= 100 and nData < 500 then
		if Task_ChkStcValue(nEvent2,nType2,">=",1) then
			nNum = 0
		else
			nNum = 1
		end
	elseif nData >= 500 and nData < 3000 then
		if Task_ChkStcValue(nEvent2,nType2,">=",2) then
			nNum = 0
		elseif Task_ChkStcValue(nEvent2,nType2,"==",1) then
			nNum = 1
		else
			nNum = 2
		end
	else
		if Task_ChkStcValue(nEvent2,nType2,">=",3) then
			nNum = 0
		elseif Task_ChkStcValue(nEvent2,nType2,"==",2) then
			nNum = 1
		elseif Task_ChkStcValue(nEvent2,nType2,"==",1) then
			nNum = 2
		else
			nNum = 3
		end
	end
	
	if nNum == 0 then
		LinkNpcGossipFunc_New(nNpcId,"4-2")
		return
	end
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tNewWarmUpActivity_UsePack["GetReward"][nNum])
	if not User_CheckLeftSpace(nSpace) then
		LinkNpcGossipFunc_New(nNpcId,"4-1")
		return
	end
	
	Task_AddStatistic(nEvent2,nType2,nNum,1,0)
	Task_SetStcTimestamp(nEvent2,nType2,0,0)

	-- 领取奖励
	RewardTemplate_Reward(tNewWarmUpActivity_UsePack["GetReward"][nNum])
	User_EffectAdd(tNewWarmUpActivity_Effect[1],tNewWarmUpActivity_Effect[3])
end

------------------------------------------------物品逻辑部分-------------------------------------------------
-- 3304539	新征服上线大礼包
-- 9.1日前
function NewWarmUpActivity_UseWarmUpItem(nItemId)
	if Item_ChkItem(nItemId) then
		local nMapId = tNewWarmUpActivity_Cont["MapId"][1]
		local nUserMap = Get_UserMapId()
		for i,v in pairs(tNewWarmUpActivity_Cont["MapId"]) do
			if nUserMap == v then
				nMapId = v
				break
			end
		end
	
		local nPosX = tNewWarmUpActivity_Cont[nMapId]["CellX"]
		local nPosY = tNewWarmUpActivity_Cont[nMapId]["CellY"]
		local nNpcId = tNewWarmUpActivity_Cont[nMapId]["NpcId"]
		local nMapId = tNewWarmUpActivity_Cont[nMapId]["MapId"]
		Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
	end
end

-- 3304539	新征服上线大礼包
-- 9.1日后
function NewWarmUpActivity_UseWarmUpItemAfter(nItemId)
	if Item_ChkItem(nItemId) then
		local nEvent = tNewWarmUpActivity_Stc[5]["EventType"]
		local nType = tNewWarmUpActivity_Stc[5]["DataType"]
		-- 7天都领取过了，还有礼包的情况 删掉
		if Task_ChkStcValue(nEvent,nType,">=",7) then
			if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
				User_TalkChannel2005(tNewWarmUpActivity_Text[nItemId]["TimeOut"])
			end
			return
		end
		
		-- 判断是否隔天
		local bFlag = false
		if Task_StcInterval(nEvent,nType,1,4,0) then
			bFlag = true
		end
		
		local sStr1 = tNewWarmUpActivity_Text[nItemId]["Tip"][1]		-- 未领
		local sStr2 = tNewWarmUpActivity_Text[nItemId]["Tip"][2]      -- 可领
		local sStr3 = tNewWarmUpActivity_Text[nItemId]["Tip"][3]      -- 已领
		Sys_DialogItemFace(nItemId)
		Sys_DialogText(tNewWarmUpActivity_Text[nItemId]["Text311"])
		Sys_DialogText(tNewWarmUpActivity_Text[nItemId]["Text312"])
		Sys_DialogText(tNewWarmUpActivity_Text[nItemId]["Text313"])
		
		local nData = Get_UserStatisticValue(nEvent,nType)
		if nData == 0  then
			-- 可领
			Sys_DialogText(string.format(tNewWarmUpActivity_Text[nItemId]["Text314"],sStr2))
			-- 未领
			for i = 1,6 do
				Sys_DialogText(string.format(tNewWarmUpActivity_Text[nItemId]["Text" .. tostring(314 + i)],sStr1))
			end
		elseif nData > 0 and  nData <= 7 then
			-- 已领
			for j = 1,nData do
				Sys_DialogText(string.format(tNewWarmUpActivity_Text[nItemId]["Text" .. tostring(313 + j)],sStr3))
			end
			
			-- 未领或已领
			if nData + 1 <= 7 then
				if bFlag then
					Sys_DialogText(string.format(tNewWarmUpActivity_Text[nItemId]["Text" .. tostring(313 + nData + 1)],sStr2))
				else
					Sys_DialogText(string.format(tNewWarmUpActivity_Text[nItemId]["Text" .. tostring(313 + nData + 1)],sStr1))
				end
			end
			
			-- 未领
			if nData + 2 <= 7 then
				for m = nData + 2, 7 do
					Sys_DialogText(string.format(tNewWarmUpActivity_Text[nItemId]["Text" .. tostring(313 + m)],sStr1))
				end
			
			end
		end
		
		Sys_DialogText(tNewWarmUpActivity_Text[nItemId]["Text321"])
		if bFlag then
			Sys_DialogOption(tNewWarmUpActivity_Text[nItemId]["Option11"],"</F>NewWarmUpActivity_OpenGetReward</N>"..nItemId)
		else
			Sys_DialogOption(tNewWarmUpActivity_Text[nItemId]["Option12"],"</F>NewWarmUpActivity_OpenGetReward</N>"..nItemId)
		end
		Sys_DialogOption(tNewWarmUpActivity_Text[nItemId]["Option13"],"</F>NULL")
		Sys_DialogEnd()
	end
end

-- 开启礼包
function NewWarmUpActivity_OpenGetReward(nItemId)
	if Item_ChkItem(nItemId) then
		local nEvent = tNewWarmUpActivity_Stc[5]["EventType"]
		local nType = tNewWarmUpActivity_Stc[5]["DataType"]
		-- 7天都领取过了，还有礼包的情况 删掉
		if Task_ChkStcValue(nEvent,nType,">=",7) then
			if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
				User_TalkChannel2005(tNewWarmUpActivity_Text[nItemId]["TimeOut"])
			end
			return
		end
	
		local nData = Get_UserStatisticValue(nEvent,nType)
		local nNowData = nData + 1
	
		-- 判断是否隔天
		if not Task_StcInterval(nEvent,nType,1,4,0) then
			local sName = tNewWarmUpActivity_Text[nItemId]["Reward"][nNowData]
			tItem[3304539]["Text412"] = string.format(tNewWarmUpActivity_Text[3304539]["Text412"],sName)
			LinkItemGossipFunc_New(nItemId,"4-1")
			return
		end
		
		-- 判断背包空间
		local nSpace = RewardTemplate_GetRewardSpace(tNewWarmUpActivity_UsePack[nItemId][nNowData])
		if not User_CheckLeftSpace(nSpace) then
			User_TalkChannel2005(string.format(tNewWarmUpActivity_Text[nItemId]["BagFull"],nSpace))
			return
		end
		
		if nNowData == 7 then
			if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
				Task_AddStatistic(nEvent,nType,1,1,0)
				Task_SetStcTimestamp(nEvent,nType,0,0)
				RewardTemplate_Reward(tNewWarmUpActivity_UsePack[nItemId][nNowData])
				User_EffectAdd(tNewWarmUpActivity_Effect[1],tNewWarmUpActivity_Effect[3])
			end
		else
			if Item_ChkItem(nItemId) then
				Task_AddStatistic(nEvent,nType,1,1,0)
				Task_SetStcTimestamp(nEvent,nType,0,0)
				RewardTemplate_Reward(tNewWarmUpActivity_UsePack[nItemId][nNowData])
				if nNowData == 1 then
					-- 首次打开额外系统提示
					User_TalkChannel2005(tNewWarmUpActivity_Text[nItemId]["First"])
				end
				User_EffectAdd(tNewWarmUpActivity_Effect[1],tNewWarmUpActivity_Effect[3])
			end
		end
	end
end

-- 3304540	新征服惊喜礼包
function NewWarmUpActivity_UseItem(nItemId)
	if Item_ChkItem(nItemId) then
		-- 判断背包空间
		local bNotFull,nSpace = RewardTemplate_ChkRandomSpace(tNewWarmUpActivity_UsePack[nItemId],1)
		if not bNotFull then
			User_TalkChannel2005(string.format(tNewWarmUpActivity_Text[nItemId]["BagFull"],nSpace))
			return
		end
		
		-- 判断赠点数量
		local nEmoneyMono = Get_UserMonoEMoney()
		local nAddEmoneyMono = tNewWarmUpActivity_UsePack[nItemId][1]["EmoneyMono"]
		if nEmoneyMono + nAddEmoneyMono > G_User_MaxEmoneyMono then
			User_TalkChannel2005(tNewWarmUpActivity_Text[nItemId]["EmoneyMonoFull"])
			return
		end

		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			RewardTemplate_NewRandom(tNewWarmUpActivity_UsePack[nItemId],1)
			User_EffectAdd(tNewWarmUpActivity_Effect[1],tNewWarmUpActivity_Effect[3])
		end
	end
end

-- 3304542	怀旧武器外套包
function NewWarmUpActivity_UseWeaponPack(nItemId,nChoose)
	if Item_ChkItem(nItemId) then
		-- 判断背包空间
		local nSpace = RewardTemplate_GetRewardSpace(tNewWarmUpActivity_UsePack[nItemId][nChoose])
		if not User_CheckLeftSpace(nSpace) then
			User_TalkChannel2005(string.format(tNewWarmUpActivity_Text[nItemId]["BagFull"],nSpace))
			return
		end

		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			RewardTemplate_Reward(tNewWarmUpActivity_UsePack[nItemId][nChoose])
			User_EffectAdd(tNewWarmUpActivity_Effect[1],tNewWarmUpActivity_Effect[3])
		end
	end
end

------------------------------------------------时间自检部分---------------------------------------
-- 单服祝福次数 每日重置
function NewWarmUpActivity_ClearGlobal()
	-- 判断时间
	if not NewWarmUpActivity_JudgeTime() then
		return
	end
	local nGlobal = tNewWarmUpActivity_Cont["GlobalId"]
	Sys_ResetAllSynaGlobalData(nGlobal)
end

-- 上线获得预热礼包
function NewWarmUpActivity_Login()
	-- 判断时间
	if not NewWarmUpActivity_JudgeTime() then
		return
	end
	
	-- 判断等级
	if not NewWarmUpActivity_JudgeLevel() then
		return
	end
	
	-- stc(163,77)		 上线获得预热礼包
	local nEvent = tNewWarmUpActivity_Stc[4]["EventType"]
	local nType = tNewWarmUpActivity_Stc[4]["DataType"]
	-- 判断是否已获得过
	if Task_ChkStcValue(nEvent,nType,">=",1) then
		return
	end
	
	-- 首次登陆弹出内嵌页面
	local sWeb = tNewWarmUpActivity_Cont["Web"]
	User_SendWebDialog(sWeb)

	-- 判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tNewWarmUpActivity_UsePack["Login"])
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(tNewWarmUpActivity_Text[3304539]["NoSpace"])
		return
	end

	Task_SetStatistic(nEvent,nType,1,1,0)
	Task_SetStcTimestamp(nEvent,nType,0,0)
	RewardTemplate_Reward(tNewWarmUpActivity_UsePack["Login"])
	
	local nItemId = Get_ItemLastAdd()
	local sText = tNewWarmUpActivity_Text[3304539]["Text"]
	Item_Dialog(nItemId,sText,"</F>NewWarmUpActivity_Use</N>3304539","NULL")
end

function NewWarmUpActivity_Use(nItemId)
	if Item_ChkItem(nItemId) then
		if Sys_ChkFullTime(tActivityTime["WarmUp"]["UsePack"]) then
			LinkItemGossipFunc_New(nItemId,"1-1")
		else
			NewWarmUpActivity_UseWarmUpItemAfter(nItemId)
		end
	end
end

------------------------------------------------NPC模板--------------------------------------------------
-- 22013	郝芙蓉
tNpcFace[4891] = 67
-- 4891
tNpcGossip[22013] = tNpcGossip[22013] or DefaultNpc:new{}
tNpcGossip[22013]["OptionHidden"] = 1
tNpcGossip[22013]["DialogueText"] = tNewWarmUpActivity_Text[22013]
-- 活动时间前
tNpcGossip[22013]["Text1-1"] = {111,114,115}
tNpcGossip[22013]["tOption1-1"] = {1}
tNpcGossip[22013]["ChkFunc1-1"] = function ()
	if Sys_ChkFullTime(tActivityTime["WarmUp"]["BeforeActivityTime"]) then
		return true
	else
		return false
	end
end
-- 活动中
-- 玩家等级不足
tNpcGossip[22013]["Text1-2"] = {121,124,125,126,127,128,129,130}
tNpcGossip[22013]["tOption1-2"] = {2}
tNpcGossip[22013]["ChkFunc1-2"] = function ()
	if NewWarmUpActivity_JudgeTime() then
		if NewWarmUpActivity_JudgeLevel() then
			return false
		else
			return true
		end
	else
		return false
	end
end
-- 玩家等级达到
tNpcGossip[22013]["Text1-3"] = {131,134,135,136,137,138,139,140}
tNpcGossip[22013]["tOption1-3"] = {3,4,6}
tNpcGossip[22013]["ChkFunc1-3"] = function ()
	if NewWarmUpActivity_JudgeTime() then
		if NewWarmUpActivity_JudgeLevel() then
			local nGlobal = tNewWarmUpActivity_Cont["GlobalId"]
			local nData = Get_SysDynaGlobalData(nGlobal,0)
			tNpcGossip[22013]["Text138"] = string.format(tNewWarmUpActivity_Text[22013]["Text138"],nData)
			return true
		else
			return false
		end
	else
		return false
	end
end
tNpcGossip[22013]["OptionFunc3"] = "NewWarmUpActivity_SendBless</N>22013</N>1"
tNpcGossip[22013]["OptionFunc4"] = "NewWarmUpActivity_SendBless</N>22013</N>2"
tNpcGossip[22013]["OptionPoint6"] = "3-1"
-- 活动后
tNpcGossip[22013]["Text1-4"] = {141,144}
tNpcGossip[22013]["tOption1-4"] = {7}
tNpcGossip[22013]["ChkFunc1-4"] = function ()
	if NewWarmUpActivity_JudgeTime() then
		return false
	else
		return true
	end
end
 -- Option3 - 5  送祝福
-- 【成功，获得了幸运星】
tNpcGossip[22013]["Text2-1"] = {211}
tNpcGossip[22013]["tOption2-1"] = {8}
 -- 【成功，没获得幸运星】
tNpcGossip[22013]["Text2-2"] = {221}
tNpcGossip[22013]["tOption2-2"] = {9}
-- 【失败，背包满】
tNpcGossip[22013]["Text2-3"] = {231}
tNpcGossip[22013]["tOption2-3"] = {10}
 -- 【失败，距离上次送祝福未满1小时】
tNpcGossip[22013]["Text2-4"] = {241}
tNpcGossip[22013]["tOption2-4"] = {12}
 
-- Option6 领取惊喜好礼
tNpcGossip[22013]["Text3-1"] = {311,312,313,314,315,316,317,318,319}
tNpcGossip[22013]["tOption3-1"] = {13,14}
tNpcGossip[22013]["ChkFunc3-1"] = function ()
	local nGlobal = tNewWarmUpActivity_Cont["GlobalId"]
	local nData = Get_SysDynaGlobalData(nGlobal,0)
	local sTip = tNewWarmUpActivity_Text[22013]["Tip"]
	
	local nEvent2 = tNewWarmUpActivity_Stc[3]["EventType"]
	local nType2 = tNewWarmUpActivity_Stc[3]["DataType"]
	if Task_StcInterval(nEvent2,nType2,1,4,0) then
		Task_SetStatistic(nEvent2,nType2,0,1,0)
		Task_SetStcTimestamp(nEvent2,nType2,0,0)
	end
	
	local sStr1 = ""
	local sStr2 = ""
	local sStr3 = ""
	
	-- 判断应该领取哪一档的奖励
	if nData < 100 then
		sStr1 = tNewWarmUpActivity_Text[22013]["Status"][3]
		sStr2 = tNewWarmUpActivity_Text[22013]["Status"][3]
		sStr3 = tNewWarmUpActivity_Text[22013]["Status"][3]
	elseif nData >= 100 and nData < 500 then
		if Task_ChkStcValue(nEvent2,nType2,">=",1) then
			sStr1 = tNewWarmUpActivity_Text[22013]["Status"][2]
		else
			sStr1 = tNewWarmUpActivity_Text[22013]["Status"][1]
		end
		sStr2 = tNewWarmUpActivity_Text[22013]["Status"][3]
		sStr3 = tNewWarmUpActivity_Text[22013]["Status"][3]
	elseif nData >= 500 and nData < 3000 then
		if Task_ChkStcValue(nEvent2,nType2,">=",2) then
			sStr1 = tNewWarmUpActivity_Text[22013]["Status"][2]
			sStr2 = tNewWarmUpActivity_Text[22013]["Status"][2]
		elseif Task_ChkStcValue(nEvent2,nType2,"==",1) then
			sStr1 = tNewWarmUpActivity_Text[22013]["Status"][2]
			sStr2 = tNewWarmUpActivity_Text[22013]["Status"][1]
		else
			sStr1 = tNewWarmUpActivity_Text[22013]["Status"][1]
			sStr2 = tNewWarmUpActivity_Text[22013]["Status"][1]
		end
		sStr3 = tNewWarmUpActivity_Text[22013]["Status"][3]
	else
		if Task_ChkStcValue(nEvent2,nType2,">=",3) then
			sStr1 = tNewWarmUpActivity_Text[22013]["Status"][2]
			sStr2 = tNewWarmUpActivity_Text[22013]["Status"][2]
			sStr3 = tNewWarmUpActivity_Text[22013]["Status"][2]
		elseif Task_ChkStcValue(nEvent2,nType2,"==",2) then
			sStr1 = tNewWarmUpActivity_Text[22013]["Status"][2]
			sStr2 = tNewWarmUpActivity_Text[22013]["Status"][2]
			sStr3 = tNewWarmUpActivity_Text[22013]["Status"][1]
		elseif Task_ChkStcValue(nEvent2,nType2,"==",1) then
			sStr1 = tNewWarmUpActivity_Text[22013]["Status"][2]
			sStr2 = tNewWarmUpActivity_Text[22013]["Status"][1]
			sStr3 = tNewWarmUpActivity_Text[22013]["Status"][1]
		else
			sStr1 = tNewWarmUpActivity_Text[22013]["Status"][1]
			sStr2 = tNewWarmUpActivity_Text[22013]["Status"][1]
			sStr3 = tNewWarmUpActivity_Text[22013]["Status"][1]
		end
	end
	tNpcGossip[22013]["Text314"] = string.format(tNewWarmUpActivity_Text[22013]["Text314"],sTip,sStr1)
	tNpcGossip[22013]["Text315"] = string.format(tNewWarmUpActivity_Text[22013]["Text315"],sTip,sStr2)
	tNpcGossip[22013]["Text316"] = string.format(tNewWarmUpActivity_Text[22013]["Text316"],sTip,sStr3)
	

	
	tNpcGossip[22013]["Text318"] = string.format(tNewWarmUpActivity_Text[22013]["Text318"],nData)
	return true
end
tNpcGossip[22013]["OptionFunc13"] = "NewWarmUpActivity_GetReward</N>22013"

 -- Option13  一键领取
-- 【失败，背包空间不足】
tNpcGossip[22013]["Text4-1"] = {411}
tNpcGossip[22013]["tOption4-1"] = {15}
 -- 【失败，没有可领的礼包】
tNpcGossip[22013]["Text4-2"] = {421}
tNpcGossip[22013]["tOption4-2"] = {16}
 -- 【失败，不满足领取礼包的条件】
tNpcGossip[22013]["Text4-3"] = {431}
tNpcGossip[22013]["tOption4-3"] = {17}
 
tNpcGossip[22014] = tNpcGossip[22013]
tNpcGossip[22015] = tNpcGossip[22013]
tNpcGossip[22016] = tNpcGossip[22013]


--------------------------------------------物品模板---------------------------------------
--[[
-- 3304539	新征服上线大礼包
tItemFace[3304539] = 789
tItem[3304539] = tItem[3304539] or {}
tItem[3304539]["Function"] = function (nItemId,sItemName)
	NewWarmUpActivity_Use(nItemId)
end
tItem[3304539]["DialogueText"] = tNewWarmUpActivity_Text[3304539]
-- 9.1日前使用
tItem[3304539]["Text1-1"] = {111}
tItem[3304539]["tOption1-1"] = {1,2}
tItem[3304539]["OptionFunc1"] = "NewWarmUpActivity_UseWarmUpItem</N>3304539"
tItem[3304539]["OptionPoint2"] = "2-1"

tItem[3304539]["Text2-1"] = {211,212,213,214,215,216,217,218,219,220,221}
tItem[3304539]["tOption2-1"] = {3}
-- 9.1日后使用
tItem[3304539]["Text3-1"] = {311,312,313,314,315,316,317,318,319,320,321}
tItem[3304539]["tOption3-1"] = {11,12,13}
-- 【失败，今日已开启】
tItem[3304539]["Text4-1"] = {411,412}
tItem[3304539]["tOption4-1"] = {14}
]]--
-- 3304540	新征服惊喜礼包
tItem[3304540] = tItem[3304540] or {}
tItem[3304540]["Function"] = function (nItemId,sItemName)
	NewWarmUpActivity_UseItem(nItemId)
end

-- 3304541	新征服幸运星
tItem[3304541] = tItem[3304541] or {}
tItem[3304541]["Function"] = function (nItemId,sItemName)
end
tItem[3304541]["Time"] = tActivityTime["WarmUp"]["ActivityTime"]

-- 3304542	怀旧武器外套包
tItemFace[3304542] = 554
tItem[3304542] = tItem[3304542] or {}
tItem[3304542]["DialogueText"] = tNewWarmUpActivity_Text[3304542]
tItem[3304542]["Text1-1"] = {111}
tItem[3304542]["tOption1-1"] = {1,2,3,4,5,6,7,8,9,10,11}
tItem[3304542]["OptionFunc1"] = "NewWarmUpActivity_UseWeaponPack</N>3304542</N>370008"
tItem[3304542]["OptionFunc2"] = "NewWarmUpActivity_UseWeaponPack</N>3304542</N>350022"
tItem[3304542]["OptionFunc3"] = "NewWarmUpActivity_UseWeaponPack</N>3304542</N>380010"
tItem[3304542]["OptionFunc4"] = "NewWarmUpActivity_UseWeaponPack</N>3304542</N>360220"
tItem[3304542]["OptionFunc5"] = "NewWarmUpActivity_UseWeaponPack</N>3304542</N>360221"
tItem[3304542]["OptionFunc6"] = "NewWarmUpActivity_UseWeaponPack</N>3304542</N>360222"
tItem[3304542]["OptionFunc7"] = "NewWarmUpActivity_UseWeaponPack</N>3304542</N>360223"
tItem[3304542]["OptionFunc8"] = "NewWarmUpActivity_UseWeaponPack</N>3304542</N>360224"
tItem[3304542]["OptionFunc9"] = "NewWarmUpActivity_UseWeaponPack</N>3304542</N>360225"
tItem[3304542]["OptionFunc10"] = "NewWarmUpActivity_UseWeaponPack</N>3304542</N>360226"
tItem[3304542]["OptionFunc11"] = "NewWarmUpActivity_UseWeaponPack</N>3304542</N>360227"

--------------------------------------------时间自检模板---------------------------------------
-- -- 单服祝福次数 每日重置
tOntimerMin_HM[0000] = tOntimerMin_HM[0000] or {}
table.insert(tOntimerMin_HM[0000],NewWarmUpActivity_ClearGlobal)
tOntimerMin_HM[0001] = tOntimerMin_HM[0001] or {}
table.insert(tOntimerMin_HM[0001],NewWarmUpActivity_ClearGlobal)
tOntimerMin_HM[0002] = tOntimerMin_HM[0002] or {}
table.insert(tOntimerMin_HM[0002],NewWarmUpActivity_ClearGlobal)

-- -- 上线获得预热礼包
-- tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
-- table.insert(tSystem_PlayLogin_Func,NewWarmUpActivity_Login)
