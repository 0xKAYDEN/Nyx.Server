------------------------------------------------------------------------------------
--Name:		[简体征服][活动脚本]新天石雨活动
--Purpose:	新天石雨活动
--Creator: 	严振飞
--Created:	2017/09/15
------------------------------------------------------------------------------------
-- tNewCPsRain_Text = {}
-- tNewCPsRain_Text["BroadCast"] = {}
-- 命名前缀
-- NewCPsRain_

-- 掩码说明
--	stc(167,30)		记录-玩家今日积分
--	stc(167,31)		记录-玩家累计积分
--	stc(167,32)		记录-玩家是否领取奖励
--	stc(167,33)		记录-背包信

--	stc(167,64)		记录-潜龙渊掉落限制

-- 动态存储表
-- （前20名玩家记录）
-- 51762	data1~~data5		1~5名玩家的ID
-- 			datastr1~~datastr5	1-5名玩家的名字
-- 51763	data1~~data5		6~10名玩家的ID
-- 			datastr1~~datastr5	6-10名玩家的名字
-- 51764	data1~~data5		11~15名玩家的ID
-- 			datastr1~~datastr5	11-15名玩家的名字
-- 51765	data1~~data5		16~20名玩家的ID
-- 			datastr1~~datastr5	16-20名玩家的名字

-- （前20名玩家累计积分记录）
-- 51769	data1~~data5		1~5名玩家的积分
-- 51770	data1~~data5		6~10名玩家的积分
-- 51771	data1~~data5		11~15名玩家的积分
-- 51772	data1~~data5		16-20名玩家的积分

-- 【每1.5小时重置】
-- 51763	data0		清秋宝箱	天石宝箱限量产出(30)(已去掉，不产出)
-- 51764	data0		清秋宝箱	限量大奖(1)

-- 【每天重置】
-- 51765	data0		潜龙渊怪物掉落限制
-- 51762	data0		清秋宝箱	赠点限量产出


-- 【活动期间不重置】
-- 51766	data0		限量大奖 -- 赤炼石+6赠（3）
-- 51766	data1		限量大奖 -- 金刚坚钻（3）
-- 51766	data2		限量大奖 -- 圣灵神木（1）
-- 51766	data3		限量大奖 -- 轮回之眼（1）
-- 51766	data4		限量大奖 -- 神宝仙丹（1）
-- 51766	data5		限量大奖 -- 空灵佛心（1）

--51939	data0		限量大奖 -- 赤炼石+7赠（1）
--51939 	data1		限量大奖 -- 璀璨星陨石（1）
--51939 	data2		限量大奖 -- 小固化石*2（5）

-- 51767	data0		当前大奖编号
-- 51768	data0		当前大奖记录位置

-- 51767	data1--data5		1-5名开启【绝世好礼】奖品ID
-- 			datastr1~~datastr5	1-5名开启【绝世好礼】玩家的名字
-- 51768	data1--data5		6-10名开启【绝世好礼】奖品ID
-- 			datastr1~~datastr5	6-10名开启【绝世好礼】玩家的名字

-- 【发奖邮件】
-- 51766	datastr0		是否已发邮件奖励


-- LOG-id:12000872

----------------------------------------数据部分--------------------------------------------

-- 掩码数据
local tNewCPsRain_Stc = {}
	-- 记录-玩家今日积分
	tNewCPsRain_Stc[1] = {}
	tNewCPsRain_Stc[1]["EventType"] = 167
	tNewCPsRain_Stc[1]["DataType"] = 30
	-- 记录-玩家累计积分
	tNewCPsRain_Stc[2] = {}
	tNewCPsRain_Stc[2]["EventType"] = 167
	tNewCPsRain_Stc[2]["DataType"] = 31

	-- 记录-玩家是否领取奖励
	tNewCPsRain_Stc[3] = {}
	tNewCPsRain_Stc[3]["EventType"] = 167
	tNewCPsRain_Stc[3]["DataType"] = 32
	tNewCPsRain_Stc[3]["Value"] = {}
	tNewCPsRain_Stc[3]["Value"][1] = 1 -- 50积分礼
	tNewCPsRain_Stc[3]["Value"][2] = 2 -- 300积分礼
	tNewCPsRain_Stc[3]["Value"][3] = 4 -- 使用正气令获得密钥
	tNewCPsRain_Stc[3]["Value"][4] = 8 -- 是否获得邮件
	tNewCPsRain_Stc[3]["Value"][4] = 16 -- 是否屏蔽二次确认

	-- 记录-潜龙渊掉落限制
	tNewCPsRain_Stc[4] = {}
	tNewCPsRain_Stc[4]["EventType"] = 167
	tNewCPsRain_Stc[4]["DataType"] = 64

-- 基础数据
local tNewCPsRain_Cont = {}
	-- 今日可领取积分
	tNewCPsRain_Cont["DayPoint"] = {}
	tNewCPsRain_Cont["DayPoint"][1] = 100
	tNewCPsRain_Cont["DayPoint"][2] = 300

	-- 百宝秘钥
	 tNewCPsRain_Cont["BoxKey"] = 3305464
	
	-- 黄金秘钥
	--tNewCPsRain_Cont["BoxKey"] = 3305465
	
	-- 读条数据
	tNewCPsRain_Cont["ExploreTime"] = 1
	tNewCPsRain_Cont["ExploreActionId"] = 220

	-- 双龙城活动NPC
	tNewCPsRain_Cont["MainNpc"] = 22098

	-- 宝箱增加积分
	tNewCPsRain_Cont["BoxPoint"] = 10

	-- 随机刷宝箱范围
	tNewCPsRain_Cont["Min_X"] = 206
	tNewCPsRain_Cont["Max_X"] = 465
	tNewCPsRain_Cont["Min_Y"] = 210
	tNewCPsRain_Cont["Max_Y"] = 469
	
	-- 当前限制大奖
	tNewCPsRain_Cont["NowRare"] = {51767,0}
	-- 当前限制大奖记录位置
	tNewCPsRain_Cont["RarePos"] = {51768,0}

	-- 每1.5小时重置的存储表
	tNewCPsRain_Cont["ResetTable"] = {}
	--tNewCPsRain_Cont["ResetTable"][1] = {51762,0}
	--tNewCPsRain_Cont["ResetTable"][2] = {51763,0}
	tNewCPsRain_Cont["ResetTable"][1] = {51764,0}
	-- 每天重置
	tNewCPsRain_Cont["DayReset"] = {}
	-- tNewCPsRain_Cont["DayReset"][1] = {51765,0}
	tNewCPsRain_Cont["DayReset"][1] = {51762,0}
	-- 邮件奖励
	tNewCPsRain_Cont["DoMail"]= {51766,0}

	-- 邮件数据
	tNewCPsRain_Cont["Mail"] = {}
	tNewCPsRain_Cont["Mail"]["ActionId"] = {}
	tNewCPsRain_Cont["Mail"]["ActionId"][1]  = 566723
	tNewCPsRain_Cont["Mail"]["ActionId"][2]  = 566724
	tNewCPsRain_Cont["Mail"]["ActionId"][3]  = 566725
	tNewCPsRain_Cont["Mail"]["ActionId"][4]  = 566726
	tNewCPsRain_Cont["Mail"]["ActionId"][5]  = 566727
	tNewCPsRain_Cont["Mail"]["ActionId"][6]  = 566728
	tNewCPsRain_Cont["Mail"]["ActionId"][7]  = 566729
	tNewCPsRain_Cont["Mail"]["ActionId"][8]  = 566730
	tNewCPsRain_Cont["Mail"]["ActionId"][9]  = 566731
	tNewCPsRain_Cont["Mail"]["ActionId"][10] = 566732
	-- 保存时间
	tNewCPsRain_Cont["Mail"]["ExistDay"] = 30
	
	-- 排名对应特殊奖励数量
	tNewCPsRain_Cont["MailNum"] = {}
	tNewCPsRain_Cont["MailNum"][1]  = 30
	tNewCPsRain_Cont["MailNum"][2]  = 15
	tNewCPsRain_Cont["MailNum"][3]  = 10
	tNewCPsRain_Cont["MailNum"][4]  = 9
	tNewCPsRain_Cont["MailNum"][5]  = 8
	tNewCPsRain_Cont["MailNum"][6]  = 7
	tNewCPsRain_Cont["MailNum"][7]  = 6
	tNewCPsRain_Cont["MailNum"][8]  = 5
	tNewCPsRain_Cont["MailNum"][9]  = 4
	tNewCPsRain_Cont["MailNum"][10] = 3
	
--等级
	tNewCPsRain_Cont["Metempsychosis"] =0
	tNewCPsRain_Cont["Level"] =100
	
--金币服标识
	tNewCPsRain_Cont["GoldGolbal"] = G_Gold_DynaGlobal
-- 宝箱对应NPC
local tNewCPsRain_Box2Npc = {}
	-- 普通宝箱
	tNewCPsRain_Box2Npc[22101] = {
		22101,22102,22103,22104,22105,22106,22107,22108,22109,22110,
		22111,22112,22113,22114,22115,22116,22117,22118,22119,22120,
		22121,22122,22123,22124,22125,22126,22127,22128,22129,22130,
		22131,22132,22133,22134,22135,22136,22137,22138,22139,22140,
		22141,22142,22143,22144,22145,22146,22147,22148,22149,22150,
		22180,22181,22182,22183,22184,22185,22186,22187,22188,22189,
		22190,22191,22192,22193,22194,22195,22196,22197,22198,22199,
	}
	-- 稀有宝箱
	tNewCPsRain_Box2Npc[22151] = {
		22151,22152
	}
	
-- 传送地图数据
local tNewCPsRain_MapData = {}
	-- 进“百宝库”坐标
	tNewCPsRain_MapData[22098] = {}
	tNewCPsRain_MapData[22098]["MapId"] = 10220
	tNewCPsRain_MapData[22098]["PosX"] = 347
	tNewCPsRain_MapData[22098]["PosY"] = 341
	tNewCPsRain_MapData[22098]["Range"] = 2
	-- 返回市场
	tNewCPsRain_MapData[22099] = {}
	tNewCPsRain_MapData[22099]["MapId"] = 1002
	tNewCPsRain_MapData[22099]["PosX"] = 375
	tNewCPsRain_MapData[22099]["PosY"] = 435
	tNewCPsRain_MapData[22099]["Range"] = 3
	-- 稀有宝箱移回集中营
	tNewCPsRain_MapData[22151] = {}
	tNewCPsRain_MapData[22151]["MapId"] = 5000
	tNewCPsRain_MapData[22151]["PosX"] = 100
	tNewCPsRain_MapData[22151]["PosY"] = 100


-- 排行榜数据
local tNewCPsRain_AllRank = {}
	-- (1-5名)
	tNewCPsRain_AllRank[1] = {51762,1}
	tNewCPsRain_AllRank[2] = {51762,2}
	tNewCPsRain_AllRank[3] = {51762,3}
	tNewCPsRain_AllRank[4] = {51762,4}
	tNewCPsRain_AllRank[5] = {51762,5}
	-- (6-10名)
	tNewCPsRain_AllRank[6] = {51763,1}
	tNewCPsRain_AllRank[7] = {51763,2}
	tNewCPsRain_AllRank[8] = {51763,3}
	tNewCPsRain_AllRank[9] = {51763,4}
	tNewCPsRain_AllRank[10] = {51763,5}
	-- (11-15名)
	tNewCPsRain_AllRank[11] = {51764,1}
	tNewCPsRain_AllRank[12] = {51764,2}
	tNewCPsRain_AllRank[13] = {51764,3}
	tNewCPsRain_AllRank[14] = {51764,4}
	tNewCPsRain_AllRank[15] = {51764,5}
	-- (16-20名)
	tNewCPsRain_AllRank[16] = {51765,1}
	tNewCPsRain_AllRank[17] = {51765,2}
	tNewCPsRain_AllRank[18] = {51765,3}
	tNewCPsRain_AllRank[19] = {51765,4}
	tNewCPsRain_AllRank[20] = {51765,5}
	
-- 排行榜积分
local tNewCPsRain_RankPoint = {}
	-- (1-5名)
	tNewCPsRain_RankPoint[1] = {51769,1}
	tNewCPsRain_RankPoint[2] = {51769,2}
	tNewCPsRain_RankPoint[3] = {51769,3}
	tNewCPsRain_RankPoint[4] = {51769,4}
	tNewCPsRain_RankPoint[5] = {51769,5}
	-- (6-10名)
	tNewCPsRain_RankPoint[6]  = {51770,1}
	tNewCPsRain_RankPoint[7]  = {51770,2}
	tNewCPsRain_RankPoint[8]  = {51770,3}
	tNewCPsRain_RankPoint[9]  = {51770,4}
	tNewCPsRain_RankPoint[10] = {51770,5}
	-- (11-15名)
	tNewCPsRain_RankPoint[11] = {51771,1}
	tNewCPsRain_RankPoint[12] = {51771,2}
	tNewCPsRain_RankPoint[13] = {51771,3}
	tNewCPsRain_RankPoint[14] = {51771,4}
	tNewCPsRain_RankPoint[15] = {51771,5}
	-- (16-20名)
	tNewCPsRain_RankPoint[16] = {51772,1}
	tNewCPsRain_RankPoint[17] = {51772,2}
	tNewCPsRain_RankPoint[18] = {51772,3}
	tNewCPsRain_RankPoint[19] = {51772,4}
	tNewCPsRain_RankPoint[20] = {51772,5}
	
-- 限制大奖记录
local tNewCPsRain_RareRank = {}
	-- (1-5名)
	tNewCPsRain_RareRank[1] = {51767,1}
	tNewCPsRain_RareRank[2] = {51767,2}
	tNewCPsRain_RareRank[3] = {51767,3}
	tNewCPsRain_RareRank[4] = {51767,4}
	tNewCPsRain_RareRank[5] = {51767,5}
	-- (6-10名)
	tNewCPsRain_RareRank[6]  = {51768,1}
	tNewCPsRain_RareRank[7]  = {51768,2}
	tNewCPsRain_RareRank[8]  = {51768,3}
	tNewCPsRain_RareRank[9]  = {51768,4}
	tNewCPsRain_RareRank[10] = {51768,5}

	
----------------------------------------
-- 每日积分奖励
local tNewCPsRain_DayData = {}
	-- 100积分奖励
	tNewCPsRain_DayData[1] = {}
	tNewCPsRain_DayData[1]["RewardItem"] = {}
	tNewCPsRain_DayData[1]["RewardItem"][1] = {}
	tNewCPsRain_DayData[1]["RewardItem"][1]["Id"] = 3008727 -- 炽热天石碎片
	tNewCPsRain_DayData[1]["RewardItem"][1]["Attr"] = "0 1"
	tNewCPsRain_DayData[1]["RewardStrengthValue"] = {}
	tNewCPsRain_DayData[1]["RewardStrengthValue"]["Value"] = 150
	tNewCPsRain_DayData[1]["LogId"] = 12000872
	tNewCPsRain_DayData[1]["LogStep"] = "3[1]"
	-- 300积分奖励
	tNewCPsRain_DayData[2] = {}
	tNewCPsRain_DayData[2]["RewardItem"] = {}
	tNewCPsRain_DayData[2]["RewardItem"][1] = {}
	tNewCPsRain_DayData[2]["RewardItem"][1]["Id"] = 3008727 -- 炽热天石碎片
	tNewCPsRain_DayData[2]["RewardItem"][1]["Attr"] = "0 3"
	tNewCPsRain_DayData[2]["RewardStrengthValue"] = {}
	tNewCPsRain_DayData[2]["RewardStrengthValue"]["Value"] = 500
	tNewCPsRain_DayData[2]["LogId"] = 12000872
	tNewCPsRain_DayData[2]["LogStep"] = "3[2]"

-- X枚百宝秘钥
local tNewCPsRain_KeyBag = {}
	-- 5枚
	tNewCPsRain_KeyBag[3305468] = {}
	tNewCPsRain_KeyBag[3305468]["DeleteItem"] = {}
	tNewCPsRain_KeyBag[3305468]["DeleteItem"][1] = {}
	tNewCPsRain_KeyBag[3305468]["DeleteItem"][1]["Id"] = 3305468
	tNewCPsRain_KeyBag[3305468]["RewardItem"] = {}
	tNewCPsRain_KeyBag[3305468]["RewardItem"][1] = {}
	tNewCPsRain_KeyBag[3305468]["RewardItem"][1]["Id"] = 3305464 -- 百宝秘钥
	tNewCPsRain_KeyBag[3305468]["RewardItem"][1]["Attr"] = "0 5"
	tNewCPsRain_KeyBag[3305468]["LogId"] = 12000872
	-- 10枚
	tNewCPsRain_KeyBag[3305469] = {}
	tNewCPsRain_KeyBag[3305469]["DeleteItem"] = {}
	tNewCPsRain_KeyBag[3305469]["DeleteItem"][1] = {}
	tNewCPsRain_KeyBag[3305469]["DeleteItem"][1]["Id"] = 3305469
	tNewCPsRain_KeyBag[3305469]["RewardItem"] = {}
	tNewCPsRain_KeyBag[3305469]["RewardItem"][1] = {}
	tNewCPsRain_KeyBag[3305469]["RewardItem"][1]["Id"] = 3305464 -- 百宝秘钥
	tNewCPsRain_KeyBag[3305469]["RewardItem"][1]["Attr"] = "0 10"
	tNewCPsRain_KeyBag[3305469]["LogId"] = 12000872
	-- 50枚
	tNewCPsRain_KeyBag[3305470] = {}
	tNewCPsRain_KeyBag[3305470]["DeleteItem"] = {}
	tNewCPsRain_KeyBag[3305470]["DeleteItem"][1] = {}
	tNewCPsRain_KeyBag[3305470]["DeleteItem"][1]["Id"] = 3305470
	tNewCPsRain_KeyBag[3305470]["RewardItem"] = {}
	tNewCPsRain_KeyBag[3305470]["RewardItem"][1] = {}
	tNewCPsRain_KeyBag[3305470]["RewardItem"][1]["Id"] = 3305464 -- 百宝秘钥
	tNewCPsRain_KeyBag[3305470]["RewardItem"][1]["Attr"] = "0 50"
	tNewCPsRain_KeyBag[3305470]["LogId"] = 12000872
	
--[[X枚黄金秘钥
	-- 5枚
	tNewCPsRain_KeyBag[3305640] = {}
	tNewCPsRain_KeyBag[3305640]["DeleteItem"] = {}
	tNewCPsRain_KeyBag[3305640]["DeleteItem"][1] = {}
	tNewCPsRain_KeyBag[3305640]["DeleteItem"][1]["Id"] = 3305640
	tNewCPsRain_KeyBag[3305640]["RewardItem"] = {}
	tNewCPsRain_KeyBag[3305640]["RewardItem"][1] = {}
	tNewCPsRain_KeyBag[3305640]["RewardItem"][1]["Id"] = 3305465 -- 黄金秘钥
	tNewCPsRain_KeyBag[3305640]["RewardItem"][1]["Attr"] = "0 5"
	tNewCPsRain_KeyBag[3305640]["LogId"] = 12000872
	-- 10枚
	tNewCPsRain_KeyBag[3305641] = {}
	tNewCPsRain_KeyBag[3305641]["DeleteItem"] = {}
	tNewCPsRain_KeyBag[3305641]["DeleteItem"][1] = {}
	tNewCPsRain_KeyBag[3305641]["DeleteItem"][1]["Id"] = 3305641
	tNewCPsRain_KeyBag[3305641]["RewardItem"] = {}
	tNewCPsRain_KeyBag[3305641]["RewardItem"][1] = {}
	tNewCPsRain_KeyBag[3305641]["RewardItem"][1]["Id"] = 3305465 -- 黄金秘钥
	tNewCPsRain_KeyBag[3305641]["RewardItem"][1]["Attr"] = "0 10"
	tNewCPsRain_KeyBag[3305641]["LogId"] = 12000872
	-- 50枚
	tNewCPsRain_KeyBag[3305642] = {}
	tNewCPsRain_KeyBag[3305642]["DeleteItem"] = {}
	tNewCPsRain_KeyBag[3305642]["DeleteItem"][1] = {}
	tNewCPsRain_KeyBag[3305642]["DeleteItem"][1]["Id"] = 3305642
	tNewCPsRain_KeyBag[3305642]["RewardItem"] = {}
	tNewCPsRain_KeyBag[3305642]["RewardItem"][1] = {}
	tNewCPsRain_KeyBag[3305642]["RewardItem"][1]["Id"] = 3305465 -- 黄金秘钥
	tNewCPsRain_KeyBag[3305642]["RewardItem"][1]["Attr"] = "0 50"
	tNewCPsRain_KeyBag[3305642]["LogId"] = 12000872

-- 物品使用
local tNewCPsRain_ItemReward = {}
	tNewCPsRain_ItemReward[3305474] = {}
	tNewCPsRain_ItemReward[3305474]["DeleteItem"] = {}
	tNewCPsRain_ItemReward[3305474]["DeleteItem"][1] = {}
	tNewCPsRain_ItemReward[3305474]["DeleteItem"][1]["Id"] = 3305474
	tNewCPsRain_ItemReward[3305474]["RewardExpPercentSpecial"] = {}
	tNewCPsRain_ItemReward[3305474]["RewardExpPercentSpecial"]["Value"] = 1
	tNewCPsRain_ItemReward[3305474]["LogId"] = 12000872
	-- 满级给修行值
	tNewCPsRain_ItemReward[3305474]["RewardExpPercentSpecial"]["FullIndex"] = "RewardCultivation"
	tNewCPsRain_ItemReward[3305474]["RewardExpPercentSpecial"]["FullValue"] = 500
]]
-- 限量大奖配置
local tNewCPsRain_RareReward = {}
	-- 高级洞装宝盒
	tNewCPsRain_RareReward[1] = {}
	tNewCPsRain_RareReward[1]["Id"] = 3305467 -- 高级洞装宝盒
	tNewCPsRain_RareReward[1]["Attr"] = "0 1"
	-- 赤炼石+6（赠）
	tNewCPsRain_RareReward[2] = {}
	tNewCPsRain_RareReward[2]["Id"] = 730006 -- 赤炼石+6（赠）
	tNewCPsRain_RareReward[2]["Attr"] = "0 1 3"
	-- 赤炼石+7（赠）
	tNewCPsRain_RareReward[3] = {}
	tNewCPsRain_RareReward[3]["Id"] = 730007 -- 赤炼石+7（赠）
	tNewCPsRain_RareReward[3]["Attr"] = "0 1 3"
	-- 璀璨星陨石
	tNewCPsRain_RareReward[4] = {}
	tNewCPsRain_RareReward[4]["Id"] = 3009003 -- 璀璨星陨石
	tNewCPsRain_RareReward[4]["Attr"] = "0 1 0 2880 1"
	-- 2000气力值包
	tNewCPsRain_RareReward[5] = {}
	tNewCPsRain_RareReward[5]["Id"] = 3008196 -- 2000气力值包
	tNewCPsRain_RareReward[5]["Attr"] = "0 1"
	-- 小固化石*2
	tNewCPsRain_RareReward[6] = {}
	tNewCPsRain_RareReward[6]["Id"] = 3000987 -- 小固化石*2
	tNewCPsRain_RareReward[6]["Attr"] = "0 1"
	-- 金钢坚钻
	tNewCPsRain_RareReward[7] = {}
	tNewCPsRain_RareReward[7]["Id"] = 1200005 -- 金钢坚钻
	tNewCPsRain_RareReward[7]["Attr"] = "0 1"
	-- 10000气力值包
	tNewCPsRain_RareReward[8] = {}
	tNewCPsRain_RareReward[8]["Id"] = 3008201 -- 10000气力值包
	tNewCPsRain_RareReward[8]["Attr"] = "0 1"
	-- 圣灵神木
	tNewCPsRain_RareReward[9] = {}
	tNewCPsRain_RareReward[9]["Id"] = 3003660 -- 圣灵神木
	tNewCPsRain_RareReward[9]["Attr"] = "0 1"
	-- 轮回之眼
	tNewCPsRain_RareReward[10] = {}
	tNewCPsRain_RareReward[10]["Id"] = 3004464 -- 轮回之眼
	tNewCPsRain_RareReward[10]["Attr"] = "0 1"
	-- 神宝仙丹
	tNewCPsRain_RareReward[11] = {}
	tNewCPsRain_RareReward[11]["Id"] = 3006016 -- 神宝仙丹
	tNewCPsRain_RareReward[11]["Attr"] = "0 1"
	-- 空灵佛心
	tNewCPsRain_RareReward[12] = {}
	tNewCPsRain_RareReward[12]["Id"] = 3007564 -- 空灵佛心
	tNewCPsRain_RareReward[12]["Attr"] = "0 1"
	
	
---------------------------------
-- 怪物掉落几率
local tNewCPsRain_MontKey = {}
	tNewCPsRain_MontKey[1] = {}
	tNewCPsRain_MontKey[1]["ItemChanceSum"] = 10000
	tNewCPsRain_MontKey[1]["LogId"] = 12000872
	tNewCPsRain_MontKey[1]["LogStep"] = "1[1]"
	-- 1%几率
	tNewCPsRain_MontKey[1][1] = {}
	tNewCPsRain_MontKey[1][1]["RandomItemChanceType"] = 2
	tNewCPsRain_MontKey[1][1]["ItemChance"] = 100
	-- tNewCPsRain_MontKey[1][1]["GlobalId"] = 51765
	-- tNewCPsRain_MontKey[1][1]["Pos"] = 0
	-- tNewCPsRain_MontKey[1][1]["MaxData"] = 5
	tNewCPsRain_MontKey[1][1]["EventType"] = 167
	tNewCPsRain_MontKey[1][1]["DataType"] = 64
	tNewCPsRain_MontKey[1][1]["RewardData"] = 5
	tNewCPsRain_MontKey[1][1]["RewardDelay"] = 1
	tNewCPsRain_MontKey[1][1]["RewardTimeType"] = 4
	tNewCPsRain_MontKey[1][1]["FullIndex"] = 2
	tNewCPsRain_MontKey[1][1]["RewardItem"] = {}
	tNewCPsRain_MontKey[1][1]["RewardItem"][1] = {}
	tNewCPsRain_MontKey[1][1]["RewardItem"][1]["Id"] = tNewCPsRain_Cont["BoxKey"] -- 百宝秘钥
	tNewCPsRain_MontKey[1][1]["RewardItem"][1]["Attr"] = "0 1"
	-- 99%几率
	tNewCPsRain_MontKey[1][2] = {}
	tNewCPsRain_MontKey[1][2]["RandomItemChanceType"] = 2
	tNewCPsRain_MontKey[1][2]["ItemChance"] = 9900

-- 其他活动获得密钥
local tNewCPsRain_ActKey = {}
	-- 每日签到礼包(3100011)
	--tNewCPsRain_ActKey[1] = {}
	--tNewCPsRain_ActKey[1]["RewardItem"] = {}
	--tNewCPsRain_ActKey[1]["RewardItem"][1] = {}
	--tNewCPsRain_ActKey[1]["RewardItem"][1]["Id"] = tNewCPsRain_Cont["BoxKey"] -- 百宝秘钥
	--tNewCPsRain_ActKey[1]["RewardItem"][1]["Attr"] = "0 1"
	--tNewCPsRain_ActKey[1]["LogId"] = 12000872
	--tNewCPsRain_ActKey[1]["LogStep"] = "1[2]"
	-- 正气令
	tNewCPsRain_ActKey[2] = {}
	tNewCPsRain_ActKey[2]["RewardItem"] = {}
	tNewCPsRain_ActKey[2]["RewardItem"][1] = {}
	tNewCPsRain_ActKey[2]["RewardItem"][1]["Id"] = tNewCPsRain_Cont["BoxKey"] -- 百宝秘钥
	tNewCPsRain_ActKey[2]["RewardItem"][1]["Attr"] = "0 1"
	tNewCPsRain_ActKey[2]["LogId"] = 12000872
	tNewCPsRain_ActKey[2]["LogStep"] = "1[2]"

---------------------------------
-- 限量奖池随机
local tNewCPsRain_RareBox = {}

	-- 限量大奖奖励几率
	tNewCPsRain_RareBox[1] = {}
	tNewCPsRain_RareBox[1]["ItemChanceSum"] = 10000
	-- 12.00%
	tNewCPsRain_RareBox[1][1] = {}
	tNewCPsRain_RareBox[1][1]["RandomItemChanceType"] = 2
	tNewCPsRain_RareBox[1][1]["ItemChance"] = 1200
	tNewCPsRain_RareBox[1][1]["RewardNum"] = 1
	-- 17.00%
	tNewCPsRain_RareBox[1][2] = {}
	tNewCPsRain_RareBox[1][2]["RandomItemChanceType"] = 2
	tNewCPsRain_RareBox[1][2]["ItemChance"] = 1700
	tNewCPsRain_RareBox[1][2]["GlobalId"] = 51766
	tNewCPsRain_RareBox[1][2]["Pos"] = 0
	tNewCPsRain_RareBox[1][2]["MaxData"] = 3
	tNewCPsRain_RareBox[1][2]["FullIndex"] = 5
	tNewCPsRain_RareBox[1][2]["RewardNum"] = 2
	-- 7.00%
	tNewCPsRain_RareBox[1][3] = {}
	tNewCPsRain_RareBox[1][3]["RandomItemChanceType"] = 2
	tNewCPsRain_RareBox[1][3]["ItemChance"] = 700
	tNewCPsRain_RareBox[1][3]["GlobalId"] = 51939
	tNewCPsRain_RareBox[1][3]["Pos"] = 0
	tNewCPsRain_RareBox[1][3]["MaxData"] = 1
	tNewCPsRain_RareBox[1][3]["FullIndex"] = 5
	tNewCPsRain_RareBox[1][3]["RewardNum"] = 3
	-- 17.00%
	tNewCPsRain_RareBox[1][4] = {}
	tNewCPsRain_RareBox[1][4]["RandomItemChanceType"] = 2
	tNewCPsRain_RareBox[1][4]["ItemChance"] = 1700
	tNewCPsRain_RareBox[1][4]["GlobalId"] =51939
	tNewCPsRain_RareBox[1][4]["Pos"] = 1
	tNewCPsRain_RareBox[1][4]["MaxData"] = 1
	tNewCPsRain_RareBox[1][4]["FullIndex"] = 5
	tNewCPsRain_RareBox[1][4]["RewardNum"] = 4
	-- 7.00%
	tNewCPsRain_RareBox[1][5] = {}
	tNewCPsRain_RareBox[1][5]["RandomItemChanceType"] = 2
	tNewCPsRain_RareBox[1][5]["ItemChance"] = 700
	tNewCPsRain_RareBox[1][5]["RewardNum"] = 5
	-- 17.00%
	tNewCPsRain_RareBox[1][6] = {}
	tNewCPsRain_RareBox[1][6]["RandomItemChanceType"] = 2
	tNewCPsRain_RareBox[1][6]["ItemChance"] = 1700
	tNewCPsRain_RareBox[1][6]["GlobalId"] = 51939
	tNewCPsRain_RareBox[1][6]["Pos"] = 2
	tNewCPsRain_RareBox[1][6]["MaxData"] = 5
	tNewCPsRain_RareBox[1][6]["FullIndex"] = 5
	tNewCPsRain_RareBox[1][6]["RewardNum"] = 6
	-- 7.00%
	tNewCPsRain_RareBox[1][7] = {}
	tNewCPsRain_RareBox[1][7]["RandomItemChanceType"] = 2
	tNewCPsRain_RareBox[1][7]["ItemChance"] = 700
	tNewCPsRain_RareBox[1][7]["GlobalId"] = 51766
	tNewCPsRain_RareBox[1][7]["Pos"] = 1
	tNewCPsRain_RareBox[1][7]["MaxData"] = 3
	tNewCPsRain_RareBox[1][7]["FullIndex"] = 5
	tNewCPsRain_RareBox[1][7]["RewardNum"] = 7
	-- 12.00%
	tNewCPsRain_RareBox[1][8] = {}
	tNewCPsRain_RareBox[1][8]["RandomItemChanceType"] = 2
	tNewCPsRain_RareBox[1][8]["ItemChance"] = 1200
	tNewCPsRain_RareBox[1][8]["RewardItem"] = {}
	tNewCPsRain_RareBox[1][8]["RewardNum"] = 8
	-- 1.00%
	tNewCPsRain_RareBox[1][9] = {}
	tNewCPsRain_RareBox[1][9]["RandomItemChanceType"] = 2
	tNewCPsRain_RareBox[1][9]["ItemChance"] = 100
	tNewCPsRain_RareBox[1][9]["GlobalId"] = 51766
	tNewCPsRain_RareBox[1][9]["Pos"] = 2
	tNewCPsRain_RareBox[1][9]["MaxData"] = 1
	tNewCPsRain_RareBox[1][9]["FullIndex"] = 5
	tNewCPsRain_RareBox[1][9]["RewardNum"] = 9
	-- 1.00%
	tNewCPsRain_RareBox[1][10] = {}
	tNewCPsRain_RareBox[1][10]["RandomItemChanceType"] = 2
	tNewCPsRain_RareBox[1][10]["ItemChance"] = 100
	tNewCPsRain_RareBox[1][10]["GlobalId"] = 51766
	tNewCPsRain_RareBox[1][10]["Pos"] = 3
	tNewCPsRain_RareBox[1][10]["MaxData"] = 1
	tNewCPsRain_RareBox[1][10]["FullIndex"] = 5
	tNewCPsRain_RareBox[1][10]["RewardNum"] = 10
	-- 1.00%
	tNewCPsRain_RareBox[1][11] = {}
	tNewCPsRain_RareBox[1][11]["RandomItemChanceType"] = 2
	tNewCPsRain_RareBox[1][11]["ItemChance"] = 100
	tNewCPsRain_RareBox[1][11]["GlobalId"] = 51766
	tNewCPsRain_RareBox[1][11]["Pos"] = 4
	tNewCPsRain_RareBox[1][11]["MaxData"] = 1
	tNewCPsRain_RareBox[1][11]["FullIndex"] = 5
	tNewCPsRain_RareBox[1][11]["RewardNum"] = 11
	-- 1.00%
	tNewCPsRain_RareBox[1][12] = {}
	tNewCPsRain_RareBox[1][12]["RandomItemChanceType"] = 2
	tNewCPsRain_RareBox[1][12]["ItemChance"] = 100
	tNewCPsRain_RareBox[1][12]["GlobalId"] = 51766
	tNewCPsRain_RareBox[1][12]["Pos"] = 5
	tNewCPsRain_RareBox[1][12]["MaxData"] = 1
	tNewCPsRain_RareBox[1][12]["FullIndex"] = 5
	tNewCPsRain_RareBox[1][12]["RewardNum"] = 12

---------------------------------
-- 宝箱开启普通奖励
local tNewCPsRain_BoxData = {}
	-- 普通宝箱奖励
	tNewCPsRain_BoxData[22101] = {}
	tNewCPsRain_BoxData[22101]["ItemChanceSum"] = 10000
	tNewCPsRain_BoxData[22101]["LogId"] = 12000872
	tNewCPsRain_BoxData[22101]["LogStep"] = "2[1]"
	-- 7.00%
	tNewCPsRain_BoxData[22101][1] = {}
	tNewCPsRain_BoxData[22101][1]["RandomItemChanceType"] = 2
	tNewCPsRain_BoxData[22101][1]["ItemChance"] = 700
	tNewCPsRain_BoxData[22101][1]["RewardItem"] = {}
	tNewCPsRain_BoxData[22101][1]["RewardItem"][1] = {}
	tNewCPsRain_BoxData[22101][1]["RewardItem"][1]["Id"] = 3002926 -- 秘制免费修炼丹
	tNewCPsRain_BoxData[22101][1]["RewardItem"][1]["Attr"] = "0 1"
	-- 2.00%
	tNewCPsRain_BoxData[22101][2] = {}
	tNewCPsRain_BoxData[22101][2]["RandomItemChanceType"] = 2
	tNewCPsRain_BoxData[22101][2]["ItemChance"] = 200
	tNewCPsRain_BoxData[22101][2]["RewardItem"] = {}
	tNewCPsRain_BoxData[22101][2]["RewardItem"][1] = {}
	tNewCPsRain_BoxData[22101][2]["RewardItem"][1]["Id"] = 3002029 -- 护心丹
	tNewCPsRain_BoxData[22101][2]["RewardItem"][1]["Attr"] = "0 1 0 0 1"
	-- 7.00%
	tNewCPsRain_BoxData[22101][3] = {}
	tNewCPsRain_BoxData[22101][3]["RandomItemChanceType"] = 2
	tNewCPsRain_BoxData[22101][3]["ItemChance"] = 700
	tNewCPsRain_BoxData[22101][3]["RewardItem"] = {}
	tNewCPsRain_BoxData[22101][3]["RewardItem"][1] = {}
	tNewCPsRain_BoxData[22101][3]["RewardItem"][1]["Id"] = 3003124 -- 强炼丹
	tNewCPsRain_BoxData[22101][3]["RewardItem"][1]["Attr"] = "0 1"
	-- 8.00%
	tNewCPsRain_BoxData[22101][4] = {}
	tNewCPsRain_BoxData[22101][4]["RandomItemChanceType"] = 2
	tNewCPsRain_BoxData[22101][4]["ItemChance"] = 800
	tNewCPsRain_BoxData[22101][4]["RewardItem"] = {}
	tNewCPsRain_BoxData[22101][4]["RewardItem"][1] = {}
	tNewCPsRain_BoxData[22101][4]["RewardItem"][1]["Id"] = 3008186 -- 50气力值包
	tNewCPsRain_BoxData[22101][4]["RewardItem"][1]["Attr"] = "0 1"
	-- 5.90%
	tNewCPsRain_BoxData[22101][5] = {}
	tNewCPsRain_BoxData[22101][5]["RandomItemChanceType"] = 2
	tNewCPsRain_BoxData[22101][5]["ItemChance"] = 590
	tNewCPsRain_BoxData[22101][5]["RewardItem"] = {}
	tNewCPsRain_BoxData[22101][5]["RewardItem"][1] = {}
	tNewCPsRain_BoxData[22101][5]["RewardItem"][1]["Id"] = 3008187 -- 150气力值包
	tNewCPsRain_BoxData[22101][5]["RewardItem"][1]["Attr"] = "0 1"
	-- 3.00%
	tNewCPsRain_BoxData[22101][6] = {}
	tNewCPsRain_BoxData[22101][6]["RandomItemChanceType"] = 2
	tNewCPsRain_BoxData[22101][6]["ItemChance"] = 300
	tNewCPsRain_BoxData[22101][6]["RewardItem"] = {}
	tNewCPsRain_BoxData[22101][6]["RewardItem"][1] = {}
	tNewCPsRain_BoxData[22101][6]["RewardItem"][1]["Id"] = 3008190 -- 500气力值包
	tNewCPsRain_BoxData[22101][6]["RewardItem"][1]["Attr"] = "0 1"
	-- 1.50%
	tNewCPsRain_BoxData[22101][7] = {}
	tNewCPsRain_BoxData[22101][7]["RandomItemChanceType"] = 2
	tNewCPsRain_BoxData[22101][7]["ItemChance"] = 150
	tNewCPsRain_BoxData[22101][7]["RewardItem"] = {}
	tNewCPsRain_BoxData[22101][7]["RewardItem"][1] = {}
	tNewCPsRain_BoxData[22101][7]["RewardItem"][1]["Id"] = 3008193 -- 1000气力值包
	tNewCPsRain_BoxData[22101][7]["RewardItem"][1]["Attr"] = "0 1"
	tNewCPsRain_BoxData[22101][7]["ShowBroad"] = tNewCPsRain_Text["BroadCast"][22101]
	-- 8.00%
	tNewCPsRain_BoxData[22101][8] = {}
	tNewCPsRain_BoxData[22101][8]["RandomItemChanceType"] = 2
	tNewCPsRain_BoxData[22101][8]["ItemChance"] = 800
	tNewCPsRain_BoxData[22101][8]["RewardItem"] = {}
	tNewCPsRain_BoxData[22101][8]["RewardItem"][1] = {}
	tNewCPsRain_BoxData[22101][8]["RewardItem"][1]["Id"] = 3301223 -- +1赤炼石极运包
	tNewCPsRain_BoxData[22101][8]["RewardItem"][1]["Attr"] = "0 1"
	-- 3.00%
	tNewCPsRain_BoxData[22101][9] = {}
	tNewCPsRain_BoxData[22101][9]["RandomItemChanceType"] = 2
	tNewCPsRain_BoxData[22101][9]["ItemChance"] = 300
	tNewCPsRain_BoxData[22101][9]["RewardItem"] = {}
	tNewCPsRain_BoxData[22101][9]["RewardItem"][1] = {}
	tNewCPsRain_BoxData[22101][9]["RewardItem"][1]["Id"] = 3301224 -- +2赤炼石极运包
	tNewCPsRain_BoxData[22101][9]["RewardItem"][1]["Attr"] = "0 1"
	-- 1.50%
	tNewCPsRain_BoxData[22101][10] = {}
	tNewCPsRain_BoxData[22101][10]["RandomItemChanceType"] = 2
	tNewCPsRain_BoxData[22101][10]["ItemChance"] = 150
	tNewCPsRain_BoxData[22101][10]["RewardItem"] = {}
	tNewCPsRain_BoxData[22101][10]["RewardItem"][1] = {}
	tNewCPsRain_BoxData[22101][10]["RewardItem"][1]["Id"] = 3301225 -- +3赤炼石极运包
	tNewCPsRain_BoxData[22101][10]["RewardItem"][1]["Attr"] = "0 1"
	-- 0.80%
	tNewCPsRain_BoxData[22101][11] = {}
	tNewCPsRain_BoxData[22101][11]["RandomItemChanceType"] = 2
	tNewCPsRain_BoxData[22101][11]["ItemChance"] = 80
	tNewCPsRain_BoxData[22101][11]["RewardItem"] = {}
	tNewCPsRain_BoxData[22101][11]["RewardItem"][1] = {}
	tNewCPsRain_BoxData[22101][11]["RewardItem"][1]["Id"] = 3301226 -- +4赤炼石极运包
	tNewCPsRain_BoxData[22101][11]["RewardItem"][1]["Attr"] = "0 1"
	-- 0.20%
	tNewCPsRain_BoxData[22101][12] = {}
	tNewCPsRain_BoxData[22101][12]["RandomItemChanceType"] = 2
	tNewCPsRain_BoxData[22101][12]["ItemChance"] = 20
	tNewCPsRain_BoxData[22101][12]["RewardItem"] = {}
	tNewCPsRain_BoxData[22101][12]["RewardItem"][1] = {}
	tNewCPsRain_BoxData[22101][12]["RewardItem"][1]["Id"] = 3301227 -- +5赤炼石极运包
	tNewCPsRain_BoxData[22101][12]["RewardItem"][1]["Attr"] = "0 1"
	tNewCPsRain_BoxData[22101][12]["ShowBroad"] = tNewCPsRain_Text["BroadCast"][22101]
	-- 20.00%
	tNewCPsRain_BoxData[22101][13] = {}
	tNewCPsRain_BoxData[22101][13]["RandomItemChanceType"] = 2
	tNewCPsRain_BoxData[22101][13]["ItemChance"] = 2000
	tNewCPsRain_BoxData[22101][13]["RewardItem"] = {}
	tNewCPsRain_BoxData[22101][13]["RewardItem"][1] = {}
	tNewCPsRain_BoxData[22101][13]["RewardItem"][1]["Id"] = 3009000 -- 微光星陨石
	tNewCPsRain_BoxData[22101][13]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	-- 3.00%
	tNewCPsRain_BoxData[22101][14] = {}
	tNewCPsRain_BoxData[22101][14]["RandomItemChanceType"] = 2
	tNewCPsRain_BoxData[22101][14]["ItemChance"] = 300
	tNewCPsRain_BoxData[22101][14]["RewardItem"] = {}
	tNewCPsRain_BoxData[22101][14]["RewardItem"][1] = {}
	tNewCPsRain_BoxData[22101][14]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石
	tNewCPsRain_BoxData[22101][14]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	-- 0.50%
	tNewCPsRain_BoxData[22101][15] = {}
	tNewCPsRain_BoxData[22101][15]["RandomItemChanceType"] = 2
	tNewCPsRain_BoxData[22101][15]["ItemChance"] = 50
	tNewCPsRain_BoxData[22101][15]["RewardItem"] = {}
	tNewCPsRain_BoxData[22101][15]["RewardItem"][1] = {}
	tNewCPsRain_BoxData[22101][15]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石
	tNewCPsRain_BoxData[22101][15]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tNewCPsRain_BoxData[22101][15]["ShowBroad"] = tNewCPsRain_Text["BroadCast"][22101]
	-- 6.00%
	tNewCPsRain_BoxData[22101][16] = {}
	tNewCPsRain_BoxData[22101][16]["RandomItemChanceType"] = 2
	tNewCPsRain_BoxData[22101][16]["ItemChance"] = 600
	tNewCPsRain_BoxData[22101][16]["GlobalId"] = 51762
	tNewCPsRain_BoxData[22101][16]["Pos"] = 0
	tNewCPsRain_BoxData[22101][16]["MaxData"] = 150
	tNewCPsRain_BoxData[22101][16]["FullIndex"] = 5
	tNewCPsRain_BoxData[22101][16]["RewardItem"] = {}
	tNewCPsRain_BoxData[22101][16]["RewardItem"][1] = {}
	tNewCPsRain_BoxData[22101][16]["RewardItem"][1]["Id"] = 3300309 --  赠点10
	tNewCPsRain_BoxData[22101][16]["RewardItem"][1]["Attr"] = "0 1"

	-- 5.00%
	tNewCPsRain_BoxData[22101][17] = {}
	tNewCPsRain_BoxData[22101][17]["RandomItemChanceType"] = 2
	tNewCPsRain_BoxData[22101][17]["ItemChance"] = 500
	tNewCPsRain_BoxData[22101][17]["GlobalId"] = 51762
	tNewCPsRain_BoxData[22101][17]["Pos"] = 0
	tNewCPsRain_BoxData[22101][17]["MaxData"] = 150
	tNewCPsRain_BoxData[22101][17]["FullIndex"] = 5
	tNewCPsRain_BoxData[22101][17]["RewardItem"] = {}
	tNewCPsRain_BoxData[22101][17]["RewardItem"][1] = {}
	tNewCPsRain_BoxData[22101][17]["RewardItem"][1]["Id"] = 3301239 --  赠点20
	tNewCPsRain_BoxData[22101][17]["RewardItem"][1]["Attr"] = "0 1"

	-- 0.80%
	tNewCPsRain_BoxData[22101][18] = {}
	tNewCPsRain_BoxData[22101][18]["RandomItemChanceType"] = 2
	tNewCPsRain_BoxData[22101][18]["ItemChance"] = 80
	tNewCPsRain_BoxData[22101][18]["GlobalId"] = 51762
	tNewCPsRain_BoxData[22101][18]["Pos"] = 0
	tNewCPsRain_BoxData[22101][18]["MaxData"] = 150
	tNewCPsRain_BoxData[22101][18]["FullIndex"] = 5
	tNewCPsRain_BoxData[22101][18]["RewardItem"] = {}
	tNewCPsRain_BoxData[22101][18]["RewardItem"][1] = {}
	tNewCPsRain_BoxData[22101][18]["RewardItem"][1]["Id"] = 3301240 --  赠点30
	tNewCPsRain_BoxData[22101][18]["RewardItem"][1]["Attr"] = "0 1"

	-- 0.20%
	tNewCPsRain_BoxData[22101][19] = {}
	tNewCPsRain_BoxData[22101][19]["RandomItemChanceType"] = 2
	tNewCPsRain_BoxData[22101][19]["ItemChance"] = 20
	tNewCPsRain_BoxData[22101][19]["GlobalId"] = 51762
	tNewCPsRain_BoxData[22101][19]["Pos"] = 0
	tNewCPsRain_BoxData[22101][19]["MaxData"] = 150
	tNewCPsRain_BoxData[22101][19]["FullIndex"] = 5
	tNewCPsRain_BoxData[22101][19]["RewardItem"] = {}
	tNewCPsRain_BoxData[22101][19]["RewardItem"][1] = {}
	tNewCPsRain_BoxData[22101][19]["RewardItem"][1]["Id"] = 3301241 --  赠点50
	tNewCPsRain_BoxData[22101][19]["RewardItem"][1]["Attr"] = "0 1"
	tNewCPsRain_BoxData[22101][19]["ShowBroad"] = tNewCPsRain_Text["BroadCast"][22101]
	-- 2.00%
	tNewCPsRain_BoxData[22101][20] = {}
	tNewCPsRain_BoxData[22101][20]["RandomItemChanceType"] = 2
	tNewCPsRain_BoxData[22101][20]["ItemChance"] = 200
	tNewCPsRain_BoxData[22101][20]["RewardItem"] = {}
	tNewCPsRain_BoxData[22101][20]["RewardItem"][1] = {}
	tNewCPsRain_BoxData[22101][20]["RewardItem"][1]["Id"] = 3008192 -- 800气力值
	tNewCPsRain_BoxData[22101][20]["RewardItem"][1]["Attr"] = "0 1"
	-- 9.00%
	tNewCPsRain_BoxData[22101][21] = {}
	tNewCPsRain_BoxData[22101][21]["RandomItemChanceType"] = 2
	tNewCPsRain_BoxData[22101][21]["ItemChance"] = 900
	tNewCPsRain_BoxData[22101][21]["RewardItem"] = {}
	tNewCPsRain_BoxData[22101][21]["RewardItem"][1] = {}
	tNewCPsRain_BoxData[22101][21]["RewardItem"][1]["Id"] = 720128 -- 清心符*2
	tNewCPsRain_BoxData[22101][21]["RewardItem"][1]["Attr"] = "0 2"
	-- 2.00%
	tNewCPsRain_BoxData[22101][22] = {}
	tNewCPsRain_BoxData[22101][22]["RandomItemChanceType"] = 2
	tNewCPsRain_BoxData[22101][22]["ItemChance"] = 200
	tNewCPsRain_BoxData[22101][22]["RewardItem"] = {}
	tNewCPsRain_BoxData[22101][22]["RewardItem"][1] = {}
	tNewCPsRain_BoxData[22101][22]["RewardItem"][1]["Id"] = 3305466 -- 洞装宝盒
	tNewCPsRain_BoxData[22101][22]["RewardItem"][1]["Attr"] = "0 1"
	-- 0.50%
	tNewCPsRain_BoxData[22101][23] = {}
	tNewCPsRain_BoxData[22101][23]["RandomItemChanceType"] = 2
	tNewCPsRain_BoxData[22101][23]["ItemChance"] = 50
	tNewCPsRain_BoxData[22101][23]["RewardItem"] = {}
	tNewCPsRain_BoxData[22101][23]["RewardItem"][1] = {}
	tNewCPsRain_BoxData[22101][23]["RewardItem"][1]["Id"] = 720836 -- 怀旧武器外套包
	tNewCPsRain_BoxData[22101][23]["RewardItem"][1]["Attr"] = "0 1"
	-- 2.00%
	tNewCPsRain_BoxData[22101][24] = {}
	tNewCPsRain_BoxData[22101][24]["RandomItemChanceType"] = 2
	tNewCPsRain_BoxData[22101][24]["ItemChance"] = 200
	tNewCPsRain_BoxData[22101][24]["RewardItem"] = {}
	tNewCPsRain_BoxData[22101][24]["RewardItem"][1] = {}
	tNewCPsRain_BoxData[22101][24]["RewardItem"][1]["Id"] = 3008221 -- 岫山玉
	tNewCPsRain_BoxData[22101][24]["RewardItem"][1]["Attr"] = "0 1"
	-- 0.70%
	tNewCPsRain_BoxData[22101][25] = {}
	tNewCPsRain_BoxData[22101][25]["RandomItemChanceType"] = 2
	tNewCPsRain_BoxData[22101][25]["ItemChance"] = 70
	tNewCPsRain_BoxData[22101][25]["RewardItem"] = {}
	tNewCPsRain_BoxData[22101][25]["RewardItem"][1] = {}
	tNewCPsRain_BoxData[22101][25]["RewardItem"][1]["Id"] = 3008223 -- 昆仑玉
	tNewCPsRain_BoxData[22101][25]["RewardItem"][1]["Attr"] = "0 1"
	tNewCPsRain_BoxData[22101][25]["ShowBroad"] = tNewCPsRain_Text["BroadCast"][22101]
	-- 0.30%
	tNewCPsRain_BoxData[22101][26] = {}
	tNewCPsRain_BoxData[22101][26]["RandomItemChanceType"] = 2
	tNewCPsRain_BoxData[22101][26]["ItemChance"] = 30
	tNewCPsRain_BoxData[22101][26]["RewardItem"] = {}
	tNewCPsRain_BoxData[22101][26]["RewardItem"][1] = {}
	tNewCPsRain_BoxData[22101][26]["RewardItem"][1]["Id"] = 3008225 -- 千年血玉
	tNewCPsRain_BoxData[22101][26]["RewardItem"][1]["Attr"] = "0 1"
	tNewCPsRain_BoxData[22101][26]["ShowBroad"] = tNewCPsRain_Text["BroadCast"][22101]
	-- 9.90%
	tNewCPsRain_BoxData[22101][27] = {}
	tNewCPsRain_BoxData[22101][27]["RandomItemChanceType"] = 2
	tNewCPsRain_BoxData[22101][27]["ItemChance"] = 0
	tNewCPsRain_BoxData[22101][27]["RewardItem"] = {}
	tNewCPsRain_BoxData[22101][27]["RewardItem"][1] = {}
	tNewCPsRain_BoxData[22101][27]["RewardItem"][1]["Id"] = tNewCPsRain_Cont["BoxKey"] -- 第二期百宝秘钥
	tNewCPsRain_BoxData[22101][27]["RewardItem"][1]["Attr"] = "0 1"
	-- 0.10%
	tNewCPsRain_BoxData[22101][28] = {}
	tNewCPsRain_BoxData[22101][28]["RandomItemChanceType"] = 2
	tNewCPsRain_BoxData[22101][28]["ItemChance"] = 10
	tNewCPsRain_BoxData[22101][28]["GlobalId"] = 51764
	tNewCPsRain_BoxData[22101][28]["Pos"] = 0
	tNewCPsRain_BoxData[22101][28]["MaxData"] = 1
	tNewCPsRain_BoxData[22101][28]["FullIndex"] = 19
	tNewCPsRain_BoxData[22101][28]["RewardItem"] = {}
	tNewCPsRain_BoxData[22101][28]["RewardItem"][1] = {}
	tNewCPsRain_BoxData[22101][28]["RewardItem"][1]["Id"] = 3008727 -- 【逻辑内会重写】
	tNewCPsRain_BoxData[22101][28]["RewardItem"][1]["Attr"] = "0 1"
	tNewCPsRain_BoxData[22101][28]["RewardNoNeedTip"] = 1
	tNewCPsRain_BoxData[22101][28]["ShowTalk"] = tNewCPsRain_Text["OpenRareBox"]
	tNewCPsRain_BoxData[22101][28]["ShowBroad"] = tNewCPsRain_Text["BroadCast"]["Rare"]
	tNewCPsRain_BoxData[22101][28]["Rare"] = true

	-- 提示配置
	for nBox_1 = 1 , #tNewCPsRain_BoxData[22101] - 1 do
		tNewCPsRain_BoxData[22101][nBox_1]["RewardNoNeedTip"] = 1
		tNewCPsRain_BoxData[22101][nBox_1]["RewardEffect"] = {}
		tNewCPsRain_BoxData[22101][nBox_1]["RewardEffect"]["Effect"] = "dgbos_addr"
		tNewCPsRain_BoxData[22101][nBox_1]["ShowTalk"] = tNewCPsRain_Text["OpenBox"]
	end
	
---------------------------------
	-- 稀有宝箱奖励
	tNewCPsRain_BoxData[22151] = {}
	tNewCPsRain_BoxData[22151]["ItemChanceSum"] = 10000
	tNewCPsRain_BoxData[22151]["LogId"] = 12000872
	tNewCPsRain_BoxData[22151]["LogStep"] = "2[2]"
	-- 20.00%
	tNewCPsRain_BoxData[22151][1] = {}
	tNewCPsRain_BoxData[22151][1]["RandomItemChanceType"] = 2
	tNewCPsRain_BoxData[22151][1]["ItemChance"] = 2000
	tNewCPsRain_BoxData[22151][1]["RewardItem"] = {}
	tNewCPsRain_BoxData[22151][1]["RewardItem"][1] = {}
	tNewCPsRain_BoxData[22151][1]["RewardItem"][1]["Id"] = 3003124 --  强炼丹
	tNewCPsRain_BoxData[22151][1]["RewardItem"][1]["Attr"] = "0 10"
	-- 20.00%
	tNewCPsRain_BoxData[22151][2] = {}
	tNewCPsRain_BoxData[22151][2]["RandomItemChanceType"] = 2
	tNewCPsRain_BoxData[22151][2]["ItemChance"] = 2000
	tNewCPsRain_BoxData[22151][2]["RewardItem"] = {}
	tNewCPsRain_BoxData[22151][2]["RewardItem"][1] = {}
	tNewCPsRain_BoxData[22151][2]["RewardItem"][1]["Id"] = 3008190 -- 500气力值包
	tNewCPsRain_BoxData[22151][2]["RewardItem"][1]["Attr"] = "0 1"
	-- 10.00%
	tNewCPsRain_BoxData[22151][3] = {}
	tNewCPsRain_BoxData[22151][3]["RandomItemChanceType"] = 2
	tNewCPsRain_BoxData[22151][3]["ItemChance"] = 1000
	tNewCPsRain_BoxData[22151][3]["RewardItem"] = {}
	tNewCPsRain_BoxData[22151][3]["RewardItem"][1] = {}
	tNewCPsRain_BoxData[22151][3]["RewardItem"][1]["Id"] = 3008193 -- 1000气力值包
	tNewCPsRain_BoxData[22151][3]["RewardItem"][1]["Attr"] = "0 1"
	-- 8.00%
	tNewCPsRain_BoxData[22151][4] = {}
	tNewCPsRain_BoxData[22151][4]["RandomItemChanceType"] = 2
	tNewCPsRain_BoxData[22151][4]["ItemChance"] = 800
	tNewCPsRain_BoxData[22151][4]["RewardItem"] = {}
	tNewCPsRain_BoxData[22151][4]["RewardItem"][1] = {}
	tNewCPsRain_BoxData[22151][4]["RewardItem"][1]["Id"] = 3301225 -- +3赤炼石极运包
	tNewCPsRain_BoxData[22151][4]["RewardItem"][1]["Attr"] = "0 1"
	-- 5.00%
	tNewCPsRain_BoxData[22151][5] = {}
	tNewCPsRain_BoxData[22151][5]["RandomItemChanceType"] = 2
	tNewCPsRain_BoxData[22151][5]["ItemChance"] = 500
	tNewCPsRain_BoxData[22151][5]["RewardItem"] = {}
	tNewCPsRain_BoxData[22151][5]["RewardItem"][1] = {}
	tNewCPsRain_BoxData[22151][5]["RewardItem"][1]["Id"] = 3301226 -- +4赤炼石极运包
	tNewCPsRain_BoxData[22151][5]["RewardItem"][1]["Attr"] = "0 1"
	-- 1.00%
	tNewCPsRain_BoxData[22151][6] = {}
	tNewCPsRain_BoxData[22151][6]["RandomItemChanceType"] = 2
	tNewCPsRain_BoxData[22151][6]["ItemChance"] = 100
	tNewCPsRain_BoxData[22151][6]["RewardItem"] = {}
	tNewCPsRain_BoxData[22151][6]["RewardItem"][1] = {}
	tNewCPsRain_BoxData[22151][6]["RewardItem"][1]["Id"] = 3301227 -- +5赤炼石极运包
	tNewCPsRain_BoxData[22151][6]["RewardItem"][1]["Attr"] = "0 1"
	-- 15.00%
	tNewCPsRain_BoxData[22151][7] = {}
	tNewCPsRain_BoxData[22151][7]["RandomItemChanceType"] = 2
	tNewCPsRain_BoxData[22151][7]["ItemChance"] = 1500
	tNewCPsRain_BoxData[22151][7]["RewardItem"] = {}
	tNewCPsRain_BoxData[22151][7]["RewardItem"][1] = {}
	tNewCPsRain_BoxData[22151][7]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石
	tNewCPsRain_BoxData[22151][7]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	-- 2.00%
	tNewCPsRain_BoxData[22151][8] = {}
	tNewCPsRain_BoxData[22151][8]["RandomItemChanceType"] = 2
	tNewCPsRain_BoxData[22151][8]["ItemChance"] = 200
	tNewCPsRain_BoxData[22151][8]["RewardItem"] = {}
	tNewCPsRain_BoxData[22151][8]["RewardItem"][1] = {}
	tNewCPsRain_BoxData[22151][8]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石
	tNewCPsRain_BoxData[22151][8]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	-- 4.00%
	tNewCPsRain_BoxData[22151][9] = {}
	tNewCPsRain_BoxData[22151][9]["RandomItemChanceType"] = 2
	tNewCPsRain_BoxData[22151][9]["ItemChance"] = 400
	tNewCPsRain_BoxData[22151][9]["GlobalId"] = 51762
	tNewCPsRain_BoxData[22151][9]["Pos"] = 0
	tNewCPsRain_BoxData[22151][9]["MaxData"] = 100
	tNewCPsRain_BoxData[22151][9]["FullIndex"] = 2
	tNewCPsRain_BoxData[22151][9]["RewardItem"] = {}
	tNewCPsRain_BoxData[22151][9]["RewardItem"][1] = {}
	tNewCPsRain_BoxData[22151][9]["RewardItem"][1]["Id"] = 3301240-- 赠点30
	tNewCPsRain_BoxData[22151][9]["RewardItem"][1]["Attr"] = "0 1" 

	-- 1.00%
	tNewCPsRain_BoxData[22151][10] = {}
	tNewCPsRain_BoxData[22151][10]["RandomItemChanceType"] = 2
	tNewCPsRain_BoxData[22151][10]["ItemChance"] = 100
	tNewCPsRain_BoxData[22151][10]["GlobalId"] = 51762
	tNewCPsRain_BoxData[22151][10]["Pos"] = 0
	tNewCPsRain_BoxData[22151][10]["MaxData"] = 100
	tNewCPsRain_BoxData[22151][10]["FullIndex"] = 2
	tNewCPsRain_BoxData[22151][10]["RewardItem"] = {}
	tNewCPsRain_BoxData[22151][10]["RewardItem"][1] = {}
	tNewCPsRain_BoxData[22151][10]["RewardItem"][1]["Id"] = 3301241-- 赠点50
	tNewCPsRain_BoxData[22151][10]["RewardItem"][1]["Attr"] = "0 1" 

	-- 2.00%
	tNewCPsRain_BoxData[22151][11] = {}
	tNewCPsRain_BoxData[22151][11]["RandomItemChanceType"] = 2
	tNewCPsRain_BoxData[22151][11]["ItemChance"] = 200
	tNewCPsRain_BoxData[22151][11]["RewardItem"] = {}
	tNewCPsRain_BoxData[22151][11]["RewardItem"][1] = {}
	tNewCPsRain_BoxData[22151][11]["RewardItem"][1]["Id"] = 3305466 -- 洞装宝盒
	tNewCPsRain_BoxData[22151][11]["RewardItem"][1]["Attr"] = "0 1"
	-- 5.00%
	tNewCPsRain_BoxData[22151][12] = {}
	tNewCPsRain_BoxData[22151][12]["RandomItemChanceType"] = 2
	tNewCPsRain_BoxData[22151][12]["ItemChance"] = 500
	tNewCPsRain_BoxData[22151][12]["RewardItem"] = {}
	tNewCPsRain_BoxData[22151][12]["RewardItem"][1] = {}
	tNewCPsRain_BoxData[22151][12]["RewardItem"][1]["Id"] = 720836 -- 怀旧武器外套包
	tNewCPsRain_BoxData[22151][12]["RewardItem"][1]["Attr"] = "0 1"
	-- 5.00%
	tNewCPsRain_BoxData[22151][13] = {}
	tNewCPsRain_BoxData[22151][13]["RandomItemChanceType"] = 2
	tNewCPsRain_BoxData[22151][13]["ItemChance"] = 500
	tNewCPsRain_BoxData[22151][13]["RewardItem"] = {}
	tNewCPsRain_BoxData[22151][13]["RewardItem"][1] = {}
	tNewCPsRain_BoxData[22151][13]["RewardItem"][1]["Id"] = 3008223 -- 昆仑玉
	tNewCPsRain_BoxData[22151][13]["RewardItem"][1]["Attr"] = "0 1"
	-- 1.50%
	tNewCPsRain_BoxData[22151][14] = {}
	tNewCPsRain_BoxData[22151][14]["RandomItemChanceType"] = 2
	tNewCPsRain_BoxData[22151][14]["ItemChance"] = 150
	tNewCPsRain_BoxData[22151][14]["RewardItem"] = {}
	tNewCPsRain_BoxData[22151][14]["RewardItem"][1] = {}
	tNewCPsRain_BoxData[22151][14]["RewardItem"][1]["Id"] = 3008225 -- 千年血玉
	tNewCPsRain_BoxData[22151][14]["RewardItem"][1]["Attr"] = "0 1"
	-- 0%
	tNewCPsRain_BoxData[22151][15] = {}
	tNewCPsRain_BoxData[22151][15]["RandomItemChanceType"] = 2
	tNewCPsRain_BoxData[22151][15]["ItemChance"] = 0
	tNewCPsRain_BoxData[22151][15]["RewardItem"] = {}
	tNewCPsRain_BoxData[22151][15]["RewardItem"][1] = {}
	tNewCPsRain_BoxData[22151][15]["RewardItem"][1]["Id"] = tNewCPsRain_Cont["BoxKey"] -- 第二期百宝秘钥
	tNewCPsRain_BoxData[22151][15]["RewardItem"][1]["Attr"] = "0 1"
	-- 0.50%
	tNewCPsRain_BoxData[22151][16] = {}
	tNewCPsRain_BoxData[22151][16]["RandomItemChanceType"] = 2
	tNewCPsRain_BoxData[22151][16]["ItemChance"] = 50
	tNewCPsRain_BoxData[22151][16]["GlobalId"] = 51764
	tNewCPsRain_BoxData[22151][16]["Pos"] = 0
	tNewCPsRain_BoxData[22151][16]["MaxData"] = 1
	tNewCPsRain_BoxData[22151][16]["FullIndex"] = 10
	tNewCPsRain_BoxData[22151][16]["RewardItem"] = {}
	tNewCPsRain_BoxData[22151][16]["RewardItem"][1] = {}
	tNewCPsRain_BoxData[22151][16]["RewardItem"][1]["Id"] = 3008190 -- 【逻辑内会重写】
	tNewCPsRain_BoxData[22151][16]["RewardItem"][1]["Attr"] = "0 1"
	tNewCPsRain_BoxData[22151][16]["RewardNoNeedTip"] = 1
	tNewCPsRain_BoxData[22151][16]["ShowTalk"] = tNewCPsRain_Text["OpenRareBox"]
	tNewCPsRain_BoxData[22151][16]["ShowBroad"] = tNewCPsRain_Text["BroadCast"]["Rare"]
	tNewCPsRain_BoxData[22151][16]["Rare"] = true

	-- 提示配置
	for nBox_2 = 1 , #tNewCPsRain_BoxData[22151] - 1 do
		tNewCPsRain_BoxData[22151][nBox_2]["RewardNoNeedTip"] = 1
		tNewCPsRain_BoxData[22151][nBox_2]["RewardEffect"] = {}
		tNewCPsRain_BoxData[22151][nBox_2]["RewardEffect"]["Effect"] = "dgbos_addr"
		tNewCPsRain_BoxData[22151][nBox_2]["ShowTalk"] = tNewCPsRain_Text["OpenBox"]
		tNewCPsRain_BoxData[22151][nBox_2]["ShowBroad"] = tNewCPsRain_Text["BroadCast"][22151]
	end
	
----------------------------------------
-- log部分
local tNewCPsRain_Log = {}
	tNewCPsRain_Log["OpenByEmoney"] = "%d,0,0,0,12000872,2[0],0,0"
	tNewCPsRain_Log["EmoneyBuyLog"] = "250	4038	%d	%d	1	"
----------------------------------------函数部分--------------------------------------------

-- 传送函数
function NewCPsRain_ChgMap(nNpcId,nUserId)
	local nUserId = nUserId or Get_UserId()
	-- 切地图传送
	local nMapId = tNewCPsRain_MapData[nNpcId]["MapId"]
	local nPosX = tNewCPsRain_MapData[nNpcId]["PosX"]
	local nPosY = tNewCPsRain_MapData[nNpcId]["PosY"]
	local nRange = tNewCPsRain_MapData[nNpcId]["Range"]
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,nRange,nRange,1,nUserId)
end


-- 进活动地图
function NewCPsRain_IntoMap(nNpcId)
	-- 活动外
	if not Sys_ChkFullTime(tActivityTime["NewCPsRain"]["NowTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end

	-- 开启时间段外
	if not Sys_ChkDayTime(tActivityTime["NewCPsRain"]["OpenTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	-- 传送
	NewCPsRain_ChgMap(nNpcId)
end

-- 打开商店界面
function NewCPsRain_OpenShop(nNpcId)
	-- 活动外
	if not Sys_ChkFullTime(tActivityTime["NewCPsRain"]["NowTime"]) then
		-- 传送出地图
		NewCPsRain_ChgMap(nNpcId)
		User_TalkChannel2005(tNewCPsRain_Text["TimeOutMap"])
		return
	end

	User_OpenDialog()
end


-- 检测二进制掩码
function NewCPsRain_ChkStc2Bin(nStc,nValue,nUserId)
	local nUserId = nUserId or Get_UserId()
	local nEvent = tNewCPsRain_Stc[nStc]["EventType"]
	local nType = tNewCPsRain_Stc[nStc]["DataType"]

	-- 掩码隔天重置
	if not Task_ChkStcValue(nEvent,nType,"==",0,nUserId) then
		if Task_StcInterval(nEvent,nType,1,4,nUserId) then
			Task_SetStatistic(nEvent,nType,0,1,nUserId)
			Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		end
	end

	local nPetData = Get_UserStatisticValue(nEvent,nType,nUserId)
	local nData = tNewCPsRain_Stc[nStc]["Value"][nValue]
	
	if Sys_ParseNumbersContain(nData,nPetData) then
		return true
	else
		return false
	end
end

-- 设置二进制掩码
function NewCPsRain_SetStc2Bin(nStc,nValue)
	local nEvent = tNewCPsRain_Stc[nStc]["EventType"]
	local nType = tNewCPsRain_Stc[nStc]["DataType"]
	local nData = tNewCPsRain_Stc[nStc]["Value"][nValue]

	Task_AddStatistic(nEvent,nType,nData,1)
	Task_SetStcTimestamp(nEvent,nType,0)
end


-- 初始化限量大奖
function NewCPsRain_TakeRare(nUserId)
	local nUserId = nUserId or Get_UserId()

	-- 当前大奖是否存在
	local nNowGlobId = tNewCPsRain_Cont["NowRare"][1]
	local nNowPos = tNewCPsRain_Cont["NowRare"][2]
	local nNowValue = Get_SysDynaGlobalData(nNowGlobId,nNowPos)

	-- 未设置限量大奖
	if nNowValue == 0 then
		local tRandomReward = CommonFunc_Copy(tNewCPsRain_RareBox)
		local tReward = RewardTemplate_NewRandomNoTip(tRandomReward,1,nUserId)
		local nRewardNum = tReward[1]["tAward"][1]["RewardNum"]
		Sys_SetSynaGlobalData(nNowGlobId,nNowPos,nRewardNum)
	end

	-- 确认奖励属性
	local nNewNum = Get_SysDynaGlobalData(nNowGlobId,nNowPos)
	local nNewItemId = tNewCPsRain_RareReward[nNewNum]["Id"]
	local sNewAttr = tNewCPsRain_RareReward[nNewNum]["Attr"]

	-- 宝箱奖励表修改
	for _,tBox in pairs(tNewCPsRain_BoxData) do
		for _,v in ipairs(tBox) do
			if v["Rare"] ~= nil then
				v["RewardItem"][1]["Id"] = nNewItemId
				v["RewardItem"][1]["Attr"] = sNewAttr
			end
		end
	end
end

-- 重置限量大奖
function NewCPsRain_ResetRare(nRewardId,nUserId)
	local tRarePos = tNewCPsRain_Cont["RarePos"]
	local tNowRare = tNewCPsRain_Cont["NowRare"]
	local nPos = Get_SysDynaGlobalData(tRarePos[1],tRarePos[2])
	
	-- 初始化
	if nPos == 0 then
		nPos = 1
	end
	
	-- 记录获奖内容
	for i,v in ipairs(tNewCPsRain_RareRank) do
		if i == nPos then
			nPos = nPos + 1
			local nNow = Get_SysDynaGlobalData(tNowRare[1],tNowRare[2])
			local sUserName = Get_UserName(nUserId)
			Sys_SetSynaGlobalData(v[1],v[2],nNow)
			Sys_SetSynaGlobalDataStr(v[1],v[2],sUserName)
			break
		end
	end
	
	Sys_SetSynaGlobalData(tRarePos[1],tRarePos[2],nPos)
	
	-- 重置当前大奖
	Sys_SetSynaGlobalData(tNowRare[1],tNowRare[2],0)
	NewCPsRain_TakeRare(nUserId)
end
-- 获取公共NPCid
function NewCPsRain_GetMainNpcId(nNpcId)
	for nMainNpcId,v in pairs(tNewCPsRain_Box2Npc) do
		for _,nId in ipairs(v) do
			if nNpcId == nId then 
				return nMainNpcId
			end
		end
	end
	
	return nNpcId
end
----------------------------------------
-- 排行榜处理函数
function NewCPsRain_DealRank(nType,nUserId)
	-- nType == 1, 刷新排行榜
	-- nType == 2, 刷新排行榜并处理玩家排行
	local nUserId = nUserId or Get_UserId()

	-- 无积分玩家不刷新排行榜
	local nEvent_2 = tNewCPsRain_Stc[2]["EventType"]
	local nType_2 = tNewCPsRain_Stc[2]["DataType"]
	if Task_ChkStcValue(nEvent_2,nType_2,"<=",0,nUserId) then
		return
	end
	
	-- 取存储表数据建表
	local tRank = {}
	for nRank,tGlobalData in ipairs(tNewCPsRain_AllRank) do
		local nNowUserId = Get_SysDynaGlobalData(tGlobalData[1],tGlobalData[2])
		local sNowUserName = Get_SysDynaGlobalDataStr(tGlobalData[1],tGlobalData[2])
		
		-- 累计积分
		local tRankPoint = tNewCPsRain_RankPoint[nRank]
		local nNowPoint = Get_SysDynaGlobalData(tRankPoint[1],tRankPoint[2])
		
		local tSynRank = {
				nPlayerId = nNowUserId,
				sPlayerName = sNowUserName,
				nPoint = nNowPoint
			}

		table.insert(tRank,tSynRank)
	end

	if nType == 2 then
	
		-- 已在排行榜内
		local bAddRank = true
		for _,tSynRank in ipairs(tRank) do
			if nUserId == tSynRank.nPlayerId then
				tSynRank.nPoint = Get_UserStatisticValue(nEvent_2,nType_2,nUserId)
				bAddRank = false
				break
			end
		end
		
		-- 还未入榜
		if bAddRank then
			-- （排名数未满20）
			local bFull = true
			for nRankNum,tSynRank in ipairs(tRank) do
				if tSynRank.nPlayerId == 0 then
					local tNewRank = {
						nPlayerId = nUserId,
						sPlayerName = Get_UserName(nUserId),
						nPoint = Get_UserStatisticValue(nEvent_2,nType_2,nUserId)
					}
					table.insert(tRank,nRankNum,tNewRank)
					table.remove(tRank)
					bFull = false
					break
				end
			end
			
			-- （排名数满20）
			if bFull then
				local tNewRank = {
					nPlayerId = nUserId,
					sPlayerName = Get_UserName(nUserId),
					nPoint = Get_UserStatisticValue(nEvent_2,nType_2,nUserId)
				}
				table.insert(tRank,tNewRank)
			end
		end
	end
	
	-- 排序
	local nLen = #tRank
	for nStart = 1, nLen - 1 do
		for nNext = 1, nLen - nStart do
			if tRank[nNext].nPoint < tRank[nNext + 1].nPoint then
				tRank[nNext],tRank[nNext + 1] = tRank[nNext + 1],tRank[nNext]
			end
		end
	end

	-- 存入存储表
	for nRankNum,tRankData in ipairs(tNewCPsRain_AllRank) do
		-- 排行数据
		local tRankData = tNewCPsRain_AllRank[nRankNum]
		Sys_SetSynaGlobalData(tRankData[1],tRankData[2],tRank[nRankNum].nPlayerId)
		Sys_SetSynaGlobalDataStr(tRankData[1],tRankData[2],tRank[nRankNum].sPlayerName)

		-- 累计积分
		local tRankPoint = tNewCPsRain_RankPoint[nRankNum]
		Sys_SetSynaGlobalData(tRankPoint[1],tRankPoint[2],tRank[nRankNum].nPoint)
	end
end


-- 排行榜内容提取函数
function NewCPsRain_GetRankMsg(nRankNum)
	local nUserId = Get_UserId()
	local nEvent_2 = tNewCPsRain_Stc[2]["EventType"]
	local nType_2 = tNewCPsRain_Stc[2]["DataType"]

	-- 玩家自己积分
	local nUserPoint = Get_UserStatisticValue(nEvent_2,nType_2,nUserId)
	local sUserRank = tNewCPsRain_Text["NoIntoRank"]
	
	-- 排行榜内容
	local tRankText = {}
	for nRank = 1 , #tNewCPsRain_AllRank do
		local tRanking = tNewCPsRain_AllRank[nRank]
		local nPlayerId = Get_SysDynaGlobalData(tRanking[1],tRanking[2])
		local sPlayerName = Get_SysDynaGlobalDataStr(tRanking[1],tRanking[2])
		local nAllPoint = 0
		
		if nPlayerId == 0 then
			nPlayerId = tNewCPsRain_Text["NoRank"]
			sPlayerName = tNewCPsRain_Text["NoRank"]
		else
			local tRankPoint = tNewCPsRain_RankPoint[nRank]
			nAllPoint = Get_SysDynaGlobalData(tRankPoint[1],tRankPoint[2])
			
			-- 玩家排名
			if nPlayerId == nUserId then
				sUserRank = string.format(tNewCPsRain_Text["RankName"],nRank)
			end
		end
		
		-- 对白内容
		if nRank <= nRankNum then
			local sRankName = string.format(tNewCPsRain_Text["RankName"],nRank)
			local sRandReward = tNewCPsRain_Text["RandReward"][nRank]
			local sText = Sys_Alignment(sRankName,3,nAllPoint,32,sRandReward,55,sPlayerName,80)
			table.insert(tRankText,sText)
		end
	end
	
	return tRankText,nUserPoint,sUserRank
end


----------------------------------------
-- 【福利】百宝库管事（NPC接入）
function NewCPsRain_MapNpcMain(nNpcId)
	local nNpcId = nNpcId or Get_NpcId()

	-- 刷新排行榜
	NewCPsRain_DealRank(2)
	
	-- 主对白
	LinkNpcGossipFunc_New(nNpcId,"1-1")
end
	
-- 每日积分说明
function NewCPsRain_ShowPoint(nNpcId)
	-- 今日积分隔天重置
	local nEvent_1 = tNewCPsRain_Stc[1]["EventType"]
	local nType_1 = tNewCPsRain_Stc[1]["DataType"]
	if not Task_ChkStcValue(nEvent_1,nType_1,"==",0) then
		if Task_StcInterval(nEvent_1,nType_1,1,4) then
			Task_SetStatistic(nEvent_1,nType_1,0,1)
			Task_SetStcTimestamp(nEvent_1,nType_1,0)
		end
	end
	
	-- 玩家今日积分
	local nDayPoint = Get_UserStatisticValue(nEvent_1,nType_1)

	-- 玩家累计积分
	local nEvent_2 = tNewCPsRain_Stc[2]["EventType"]
	local nType_2 = tNewCPsRain_Stc[2]["DataType"]
	local nAllPoint = Get_UserStatisticValue(nEvent_2,nType_2)

	-- 对白组合
	local sText123 = string.format(tNewCPsRain_Text[nNpcId]["Text123"],nDayPoint,nAllPoint)
	tNpcGossip[nNpcId]["Text123"] = sText123
	
	-- 今日积分奖励对白
	for i,nNeedPoint in ipairs(tNewCPsRain_Cont["DayPoint"]) do
		local sReward = ""
		-- 不可领
		if not (nDayPoint >= nNeedPoint) then
			sReward = tNewCPsRain_Text[nNpcId]["NoReward"]
		
		-- 已领取
		elseif NewCPsRain_ChkStc2Bin(3,i) then
			sReward = tNewCPsRain_Text[nNpcId]["DidReward"]
			
		-- 可领取
		else
			sReward = tNewCPsRain_Text[nNpcId]["YesReward"]
		end
		
		local sText111X = string.format(tNewCPsRain_Text[nNpcId]["Text121".. i],sReward)
		tNpcGossip[nNpcId]["Text121".. i] = sText111X
	end
	
	-- 出对白
	LinkNpcGossipFunc_New(nNpcId,"1-2")
end


-- 领取每日积分奖励
function NewCPsRain_GetDayReward(nNpcId)
	local nUserId = Get_UserId()
	-- 活动外
	if not Sys_ChkFullTime(tActivityTime["NewCPsRain"]["NowTime"]) then
		-- 传送出地图
		NewCPsRain_ChgMap(nNpcId)
		User_TalkChannel2005(tNewCPsRain_Text["TimeOutMap"])
		return
	end
	--未达到等级传出
	if not User_JudgeLevelAndMetempsychosis(tNewCPsRain_Cont["Level"],tNewCPsRain_Cont["Metempsychosis"],nUserId) then
			NewCPsRain_ChgMap(22099,nUserId)
		return
	end
	-- 开启时间段外
	if not Sys_ChkDayTime(tActivityTime["NewCPsRain"]["OpenTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	-- 今日积分隔天重置
	local nEvent_1 = tNewCPsRain_Stc[1]["EventType"]
	local nType_1 = tNewCPsRain_Stc[1]["DataType"]
	if not Task_ChkStcValue(nEvent_1,nType_1,"==",0) then
		if Task_StcInterval(nEvent_1,nType_1,1,4) then
			Task_SetStatistic(nEvent_1,nType_1,0,1)
			Task_SetStcTimestamp(nEvent_1,nType_1,0)
		end
	end
	
	-- 玩家今日积分
	local nDayPoint = Get_UserStatisticValue(nEvent_1,nType_1)

	-- 今日积分奖励循环领取
	for i,nNeedPoint in ipairs(tNewCPsRain_Cont["DayPoint"]) do
		-- 积分满足
		if nDayPoint >= nNeedPoint then
			-- 未领取
			if not NewCPsRain_ChkStc2Bin(3,i) then
				-- 背包空间不足
				local nSpace = RewardTemplate_GetRewardSpace(tNewCPsRain_DayData[i])
				if not User_CheckLeftSpace(nSpace) then
					local sText221 = string.format(tNewCPsRain_Text[nNpcId]["Text221"],nSpace)
					tNpcGossip[nNpcId]["Text221"] = sText221
					LinkNpcGossipFunc_New(nNpcId,"2-2")
					return
				end
				
				-- 置掩码
				NewCPsRain_SetStc2Bin(3,i)
				
				-- 给奖励
				RewardTemplate_UseItem(tNewCPsRain_DayData[i])
				return
			end
			
		else -- 积分不满足
			local sRewardTip = tNewCPsRain_Text[nNpcId]["RewardTip"][i]
			local sText211 = string.format(tNewCPsRain_Text[nNpcId]["Text211"],nDayPoint,nNeedPoint,sRewardTip)
			tNpcGossip[nNpcId]["Text211"] = sText211
			LinkNpcGossipFunc_New(nNpcId,"2-1")
			return
		end
	end
	
	-- 奖励都已领取
	LinkNpcGossipFunc_New(nNpcId,"2-4")
end

----------------------------------------

-- 【福利】累计积分榜（地图内）

function NewCPsRain_ShowRank()
		local nNpcId = Get_NpcId()

	-- 刷新排行榜
	NewCPsRain_DealRank(2)
	
	-- 初始化
	tNpcGossip[nNpcId]["Text1-1"] = {111,112,113}
	
	-- 排行榜内容
	local tRankText,nUserPoint,sUserRank = NewCPsRain_GetRankMsg(10)
	for nRank, sText in ipairs(tRankText) do
			tNpcGossip[nNpcId]["Text111".. nRank] = sText.. "\n"
			table.insert(tNpcGossip[nNpcId]["Text1-1"],111 .. nRank)
	end


	-- 自己的数据
	local sText116 = string.format(tNewCPsRain_Text[nNpcId]["Text116"],nUserPoint,sUserRank)
	tNpcGossip[nNpcId]["Text116"] = sText116
	
	-- 必显示内容
	table.insert(tNpcGossip[nNpcId]["Text1-1"],114)
	table.insert(tNpcGossip[nNpcId]["Text1-1"],115)
	table.insert(tNpcGossip[nNpcId]["Text1-1"],116)
	-- 出对白
	LinkNpcGossipFunc_New(nNpcId,"1-1")
end


----------------------------------------
-- 【福利】宝箱（地图内）
function NewCPsRain_OpenBox(nNpcId)
	local nNpcId = nNpcId or Get_NpcId()
	local nMainNpcId = NewCPsRain_GetMainNpcId(nNpcId)

	-- 初始化限量大奖
	NewCPsRain_TakeRare()
	
	-- 宝箱原坐标
	local nBoxPosX = Get_NpcPositionX(nNpcId)
	local nBoxPosY = Get_NpcPositionY(nNpcId)
	
	-- 条件不满足
	if not NewCPsRain_IsOpen(nNpcId,nMainNpcId,nBoxPosX,nBoxPosY) then
		return
	end

	-- 读条
	local nSecs = tNewCPsRain_Cont["ExploreTime"]
	local sContent = tNewCPsRain_Text["Explore"]
	local nActionId = tNewCPsRain_Cont["ExploreActionId"]
	local sFunc = string.format("NewCPsRain_DoExplore</N>%d</N>%d</N>%d</N>%d",nNpcId,nMainNpcId,nBoxPosX,nBoxPosY)
	User_SetExplore(nSecs,sContent,nActionId,sFunc)
end


-- 正常宝箱开启前置条件
function NewCPsRain_IsOpen(nNpcId,nMainNpcId,nBoxPosX,nBoxPosY,nUserId)
	local nUserId = nUserId or Get_UserId()

	-- 活动外
	if not Sys_ChkFullTime(tActivityTime["NewCPsRain"]["NowTime"]) then
		-- 传送出地图
		NewCPsRain_ChgMap(22099,nUserId)
		User_TalkChannel2005(tNewCPsRain_Text["TimeOutMap"],nUserId)
		return false
	end
	--未达到等级传出
	if not User_JudgeLevelAndMetempsychosis(tNewCPsRain_Cont["Level"],tNewCPsRain_Cont["Metempsychosis"],nUserId) then
			NewCPsRain_ChgMap(22099,nUserId)
		return
	end
	-- 开启时间段外
	if not Sys_ChkDayTime(tActivityTime["NewCPsRain"]["OpenTime"]) then
		Sys_MsgBox(tNewCPsRain_Text["TimeOutTip"],nil,nil,nUserId)
		return false
	end
	
	-- 没有百宝金钥
	if not Item_ChkItem(tNewCPsRain_Cont["BoxKey"],nil,nil,nUserId) then
		-- 密钥价格
		local nKeyEmoney = Get_ItemtypeEmoneyPrice(tNewCPsRain_Cont["BoxKey"])
		local sText117 = string.format(tNewCPsRain_Text[nMainNpcId]["Text117"],nKeyEmoney)
		local sOptText111 = string.format(tNewCPsRain_Text[nMainNpcId]["Option111"],nKeyEmoney)
		tNpcGossip[nMainNpcId]["Text117"] = sText117
		tNpcGossip[nMainNpcId]["Option111"] = sOptText111
		
		local sFunc111 = string.format("NewCPsRain_OpenByEMoney</N>%d</N>%d</N>%d</N>%d</N>%d</N>%d",nNpcId,nMainNpcId,nKeyEmoney,nBoxPosX,nBoxPosY,nUserId)
		tNpcGossip[nMainNpcId]["OptionFunc111"] = sFunc111
		
		-- 出对白
		LinkNpcGossipFunc_New(nMainNpcId,"1-1")
		return false
	end
	
	-- 背包空间
	local nSpace = RewardTemplate_GetRandomSpace(tNewCPsRain_BoxData,nMainNpcId,nUserId)
	if not User_CheckLeftSpace(nSpace,nUserId) then
		Sys_MsgBox(string.format(tNewCPsRain_Text["NoSpace"],nSpace),nil,nil,nUserId)
		return false
	end
	
	return true
end


-- 天石开启宝箱条件
function NewCPsRain_IsEMoneyOpen(nNpcId,nMainNpcId,nKeyEmoney,nBoxPosX,nBoxPosY,nUserId)
	local nUserId = nUserId or Get_UserId()

	-- 活动外
	if not Sys_ChkFullTime(tActivityTime["NewCPsRain"]["NowTime"]) then
		-- 传送出地图
		NewCPsRain_ChgMap(22099,nUserId)
		User_TalkChannel2005(tNewCPsRain_Text["TimeOutMap"],nUserId)
		return false
	end
	
	-- 开启时间段外
	if not Sys_ChkDayTime(tActivityTime["NewCPsRain"]["OpenTime"]) then
		Sys_MsgBox(tNewCPsRain_Text["TimeOutTip"],nil,nil,nUserId)
		return false
	end

	-- 天石不足
	local nUserEMoney = Get_UserEMoney(nUserId)
	if not (nUserEMoney >= nKeyEmoney) then
		LinkNpcGossipFunc_New(nMainNpcId,"2-1")
		return false
	end
	
	-- 背包空间
	local nSpace = RewardTemplate_GetRandomSpace(tNewCPsRain_BoxData,nMainNpcId,nUserId)
	if not User_CheckLeftSpace(nSpace,nUserId) then
		Sys_MsgBox(string.format(tNewCPsRain_Text["NoSpace"],nSpace),nil,nil,nUserId)
		return false
	end
	
	-- 宝箱是否被人开启
	local nNowPosX = Get_NpcPositionX(nNpcId)
	local nNowPosY = Get_NpcPositionY(nNpcId)
	if nNowPosX ~= nBoxPosX or nNowPosY ~= nBoxPosY then
		Sys_MsgBox(tNewCPsRain_Text["BoxRemove"],nil,nil,nUserId)
		return
	end

	return true
end


-- 读条触发函数
function NewCPsRain_DoExplore(nNpcId,nMainNpcId,nBoxPosX,nBoxPosY,nUserId)
	-- 条件不满足
	if not NewCPsRain_IsOpen(nNpcId,nMainNpcId,nBoxPosX,nBoxPosY,nUserId) then
		return
	end
	
	-- 宝箱是否被人开启
	local nNowPosX = Get_NpcPositionX(nNpcId)
	local nNowPosY = Get_NpcPositionY(nNpcId)
	if nNowPosX ~= nBoxPosX or nNowPosY ~= nBoxPosY then
		Sys_MsgBox(tNewCPsRain_Text["BoxRemove"],nil,nil,nUserId)
		return
	end

	-- 删除钥匙
	local nNeedItem = tNewCPsRain_Cont["BoxKey"]
	if not (Item_ChkItem(nNeedItem,nil,nil,nUserId) and Item_DelItem(nNeedItem,nil,nil,nUserId)) then
		return
	end
	
	-- 成功开启宝箱
	NewCPsRain_DoOpenBox(nNpcId,nMainNpcId,nUserId)
end
-- 天石打开密钥开宝箱
function NewCPsRain_OpenByEMoney(nNpcId,nMainNpcId,nKeyEmoney,nBoxPosX,nBoxPosY,nUserId)
	-- 条件不满足
	if not NewCPsRain_IsEMoneyOpen(nNpcId,nMainNpcId,nKeyEmoney,nBoxPosX,nBoxPosY,nUserId) then
		return
	end
	
	-- 不出二次确认
	if NewCPsRain_ChkStc2Bin(3,4,nUserId) then
		NewCPsRain_EMoneyExplore(nNpcId,nMainNpcId,nKeyEmoney,nBoxPosX,nBoxPosY,nUserId)
		return
	end
	
	local sText311 = string.format(tNewCPsRain_Text[nMainNpcId]["Text311"],nKeyEmoney)
	local sOptText311 = string.format(tNewCPsRain_Text[nMainNpcId]["Option311"],nKeyEmoney)
	tNpcGossip[nMainNpcId]["Text311"] = sText311
	tNpcGossip[nMainNpcId]["Option311"] = sOptText311

	local sFunc311 = string.format("NewCPsRain_EMoneyExplore</N>%d</N>%d</N>%d</N>%d</N>%d</N>%d",nNpcId,nMainNpcId,nKeyEmoney,nBoxPosX,nBoxPosY,nUserId)
	local sFunc312 = string.format("NewCPsRain_DelIsFunc</N>%d",nNpcId)
	tNpcGossip[nMainNpcId]["OptionFunc311"] = sFunc311
	tNpcGossip[nMainNpcId]["OptionFunc312"] = sFunc312

	-- 出二次确认
	LinkNpcGossipFunc_New(nMainNpcId,"3-1")
end
-- 天石开箱读条
function NewCPsRain_EMoneyExplore(nNpcId,nMainNpcId,nKeyEmoney,nBoxPosX,nBoxPosY,nUserId)
	-- 条件不满足
	if not NewCPsRain_IsEMoneyOpen(nNpcId,nMainNpcId,nKeyEmoney,nBoxPosX,nBoxPosY,nUserId) then
		return
	end

	-- 读条
	local nSecs = tNewCPsRain_Cont["ExploreTime"]
	local sContent = tNewCPsRain_Text["Explore"]
	local nActionId = tNewCPsRain_Cont["ExploreActionId"]
	local sFunc = string.format("NewCPsRain_DoByEMoney</N>%d</N>%d</N>%d</N>%d</N>%d",nNpcId,nMainNpcId,nKeyEmoney,nBoxPosX,nBoxPosY)

	User_SetExplore(nSecs,sContent,nActionId,sFunc,nil,nUserId)

end
-- 天石开箱执行购买
function NewCPsRain_DoByEMoney(nNpcId,nMainNpcId,nKeyEmoney,nBoxPosX,nBoxPosY,nUserId)

	-- 条件不满足
	if not NewCPsRain_IsEMoneyOpen(nNpcId,nMainNpcId,nKeyEmoney,nBoxPosX,nBoxPosY,nUserId) then
		return
	end

	-- 扣天石执行开宝箱
	if User_AddEMoneyNew(-nKeyEmoney,12000872,nUserId) then
		NewCPsRain_DoOpenBox(nNpcId,nMainNpcId,nUserId)
		local sText = string.format(tNewCPsRain_Log["OpenByEmoney"],nKeyEmoney)
		local sEMoneyText = string.format(tNewCPsRain_Log["EmoneyBuyLog"],nKeyEmoney,nKeyEmoney)
		Sys_SaveActionRewardLog(sText,nUserId)
		Sys_SaveEmoneyBuy(sEMoneyText,nUserId)
	end
end
	

-- 执行开宝箱
function NewCPsRain_DoOpenBox(nNpcId,nMainNpcId,nUserId)

	-- 今日积分隔天重置
	local nEvent_1 = tNewCPsRain_Stc[1]["EventType"]
	local nType_1 = tNewCPsRain_Stc[1]["DataType"]
	if not Task_ChkStcValue(nEvent_1,nType_1,"==",0,nUserId) then
		if Task_StcInterval(nEvent_1,nType_1,1,4,nUserId) then
			Task_SetStatistic(nEvent_1,nType_1,0,1,nUserId)
			Task_SetStcTimestamp(nEvent_1,nType_1,0,nUserId)
		end
	end
	
	-- 今日积分增加
	local nAddPoint = tNewCPsRain_Cont["BoxPoint"]
	Task_AddStatistic(nEvent_1,nType_1,nAddPoint,1,nUserId)
	Task_SetStcTimestamp(nEvent_1,nType_1,0,nUserId)
	
	-- 累计积分增加
	local nEvent_2 = tNewCPsRain_Stc[2]["EventType"]
	local nType_2 = tNewCPsRain_Stc[2]["DataType"]
	Task_AddStatistic(nEvent_2,nType_2,nAddPoint,1,nUserId)
	Task_SetStcTimestamp(nEvent_2,nType_2,0,nUserId)

	-- 处理排行榜
	NewCPsRain_DealRank(2,nUserId)

	-- 获得奖励
	local tRandomReward = CommonFunc_Copy(tNewCPsRain_BoxData)
	local tReward,sRewardStr = RewardTemplate_NewRandomNoTip(tRandomReward,nMainNpcId,nUserId)
	
	local nRewardId = tReward[1]["tAward"][1]["RewardItem"][1]["Id"]
	local sTalk = tReward[1]["tAward"][1]["ShowTalk"]

	-- 为限制奖池
	if tReward[1]["tAward"][1]["Rare"] ~= nil then
		NewCPsRain_ResetRare(nRewardId,nUserId)
	end
	
	-- 普通宝箱随机移动NPC
	if nMainNpcId == 22101 then
		NewCPsRain_ChgBoxPos(nNpcId)
		
	-- 稀有宝箱移回集中营
	elseif nMainNpcId == 22151 then
		local nMapId = tNewCPsRain_MapData[nMainNpcId]["MapId"]
		local nPosX = tNewCPsRain_MapData[nMainNpcId]["PosX"]
		local nPosY = tNewCPsRain_MapData[nMainNpcId]["PosY"]
		Npc_MoveNpcPos(nNpcId,nMapId,nPosX,nPosY)
	end
		
	-- 提示
	local sBoxName = Get_NpcName(nNpcId)
	local sTipText = string.format(sTalk,sBoxName,sRewardStr)
	User_TalkChannel2005(sTipText,nUserId)
	Sys_MsgBox(sTipText,nil,nil,nUserId)
	
	-- 是否全服公告
	if tReward[1]["tAward"][1]["ShowBroad"] ~= nil then
		local nShowNpc = tNewCPsRain_Cont["MainNpc"]
		local nPosX = Get_NpcPositionX(nShowNpc)
		local nPosY = Get_NpcPositionY(nShowNpc)
		local sUserName = Get_UserName(nUserId)
		local sBroadText = string.format(tReward[1]["tAward"][1]["ShowBroad"],sUserName,sRewardStr,nPosX,nPosY)
		Sys_TalkBroadcast(sBroadText)
	end
end


-- 取消二次确认
function NewCPsRain_DelIsFunc(nNpcId)
	-- 置掩码
	NewCPsRain_SetStc2Bin(3,4)
	
	-- 返回主对白
	NewCPsRain_OpenBox(nNpcId)
end

-----------------------------------------
-- 【福利】绝世好礼榜（地图内）
function NewCPsRain_RewardListNpc()
	local nNpcId = Get_NpcId()
	-- 初始化限量大奖
	NewCPsRain_TakeRare()
	
	-- 初始化
	tNpcGossip[nNpcId]["Text1-1"] = {111,112}
	
	-- 显示内容
	local bNoHave = true
	for i=#tNewCPsRain_RareRank,1,-1 do
		local tRareRank = tNewCPsRain_RareRank[i]
		local nItemId = Get_SysDynaGlobalData(tRareRank[1],tRareRank[2])
		if nItemId ~= 0 then
			local sUserName = Get_SysDynaGlobalDataStr(tRareRank[1],tRareRank[2])
			local nNum = Get_SysDynaGlobalData(tRareRank[1],tRareRank[2])
			local sItemName = tNewCPsRain_Text["RareReaward"][nNum]
		
			tNpcGossip[nNpcId]["Text111".. i] = string.format(tNewCPsRain_Text[nNpcId]["Text1111"],sUserName,sItemName)
			table.insert(tNpcGossip[nNpcId]["Text1-1"],111 .. i)
			bNoHave = false
		end
	end
	
	-- 无内容
	if bNoHave then
		table.insert(tNpcGossip[nNpcId]["Text1-1"],1110)
	end
	
	-- 当前大奖
	local tNowRare = tNewCPsRain_Cont["NowRare"]
	local nNowNum = Get_SysDynaGlobalData(tNowRare[1],tNowRare[2])
	local sNowName = tNewCPsRain_Text["RareReaward"][nNowNum]
	tNpcGossip[nNpcId]["Text116"] = string.format(tNewCPsRain_Text[nNpcId]["Text116"],sNowName)
	
	-- 必显示内容
	table.insert(tNpcGossip[nNpcId]["Text1-1"],113)
	table.insert(tNpcGossip[nNpcId]["Text1-1"],114)
	table.insert(tNpcGossip[nNpcId]["Text1-1"],115)
	table.insert(tNpcGossip[nNpcId]["Text1-1"],116)

	-- 出对白
	LinkNpcGossipFunc_New(nNpcId,"1-1")
end


-----------------------------------------
-- 宝箱随机变换位置
function NewCPsRain_ChgBoxPos(nNpcId)
	local nMapId = tNewCPsRain_MapData[22098]["MapId"]

	-- 随机新坐标
	local nRandomX = math.random(tNewCPsRain_Cont["Min_X"],tNewCPsRain_Cont["Max_X"])
	local nRandomY = math.random(tNewCPsRain_Cont["Min_Y"],tNewCPsRain_Cont["Max_Y"])
	
	-- 移到新位置
	if not Npc_MoveNpcPos(nNpcId,nMapId,nRandomX,nRandomY) then
		NewCPsRain_ChgBoxPos(nNpcId)
	end
end


-- 稀有宝箱移动函数
function NewCPsRain_MoveRareBox()
	-- 活动外
	if not Sys_ChkFullTime(tActivityTime["NewCPsRain"]["NowTime"]) then
		return
	end
	
	-- 活动地图
	local nActMapId = tNewCPsRain_MapData[22098]["MapId"]
	
	-- 循环移动
	for _,nNpcId in ipairs(tNewCPsRain_Box2Npc[22151]) do
		local nNpcMapId = Get_NpcMapID(nNpcId)
		-- Npc还未移出
		if nActMapId ~= nNpcMapId then
			NewCPsRain_ChgBoxPos(nNpcId)
			break
		end
	end
end

-- 每1.5小时重置存储表
function NewCPsRain_ResetFunc1()
	for _,v in ipairs(tNewCPsRain_Cont["ResetTable"]) do
		Sys_SetSynaGlobalData(v[1],v[2],0)
	end
end

-- 每天重置存储表
function NewCPsRain_ResetFunc2()
	for _,v in ipairs(tNewCPsRain_Cont["DayReset"]) do
		Sys_SetSynaGlobalData(v[1],v[2],0)
	end
	
	-- 为发邮件时间
	if Sys_ChkFullTime(tActivityTime["NewCPsRain"]["MailTime"]) then
		local tDoMain = tNewCPsRain_Cont["DoMail"]
		local nValue = Get_SysDynaGlobalDataStr(tDoMain[1],tDoMain[2])

		-- 已发邮件
		if nValue ~= "" then
			return
		end
		
		-- 置存储表
		Sys_SetSynaGlobalDataStr(tDoMain[1],tDoMain[2],"1")
		
		-- 循环发邮件
		for nRank,tData in ipairs(tNewCPsRain_AllRank) do
			local nUserId = Get_SysDynaGlobalData(tData[1],tData[2])
			
			if nUserId == 0 then
				return
			end
			
			-- 发奖
			local nActionId = tNewCPsRain_Cont["Mail"]["ActionId"][nRank]
			local nExistDay = tNewCPsRain_Cont["Mail"]["ExistDay"]
			local sSender = tNewCPsRain_Text["Sender"]
			local sTitle = tNewCPsRain_Text["Title"]
			local sContent = string.format(tNewCPsRain_Text["Content"],nRank,tNewCPsRain_Text["RandReward"][nRank])
			Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
		end
	end
end

-----------------------------------------
-- 离开活动地图
function NewCPsRain_LeaveMap(nUserId)
	NewCPsRain_ChgMap(22099,nUserId)
end

-----------------------------------------
-- 额外获得钥匙
function NewCPsRain_AddKey(nType)
	-- 活动外
	if not Sys_ChkFullTime(tActivityTime["NewCPsRain"]["NowTime"]) then
		return
	end
	
	-- 为正气令
	if nType == 2 then
		-- 是否增加过砍价次数
		if NewCPsRain_ChkStc2Bin(3,3) then
			return
		end
		
		-- 置掩码
		NewCPsRain_SetStc2Bin(3,3)
	end
	
	-- 给奖励
	RewardTemplate_UseItem(tNewCPsRain_ActKey[nType])
end


-- 怪物掉落
function NewCPsRain_MontDrop()

--判断是否金币服
	local nGlobalId_1 = tNewCPsRain_Cont["GoldGolbal"]
	local nData_1 = Get_SysDynaGlobalData(nGlobalId_1,0)
	if nGlobalId_1 ~= nil and nData_1 ~= 0 then
		return
	end

	-- 活动外
	if not Sys_ChkFullTime(tActivityTime["NewCPsRain"]["NowTime"]) then
		return
	end
	
	-- 超限制出提示
	local nEvent_4 = tNewCPsRain_Stc[4]["EventType"]
	local nType_4 = tNewCPsRain_Stc[4]["DataType"]
	if not Task_StcInterval(nEvent_4,nType_4,1,4) then
		local nMax = tNewCPsRain_MontKey[1][1]["RewardData"]
		-- 105 只出1次
		if Task_ChkStcValue(nEvent_4,nType_4,">=",nMax) then
			if Task_ChkStcValue(nEvent_4,nType_4,"<=",nMax) then
				Task_AddStatistic(nEvent_4,nType_4,1,1)
				Task_SetStcTimestamp(nEvent_4,nType_4,0)
				Sys_MsgBox(tNewCPsRain_Text["MontKeyFull"])
			end
			return
		end
	end
	
	-- 几率掉落
	RewardTemplate_NewRandom(tNewCPsRain_MontKey,1)
end


-----------------------------------------NPC配置--------------------------------------------
-- 【福利】石崇（市场）
tNpcFace[5773] = 90
tNpcGossip[22098] = tNpcGossip[22098] or DefaultNpc:new{}
tNpcGossip[22098]["OptionHidden"] = 1
tNpcGossip[22098]["DialogueText"] = tNewCPsRain_Text[22098]
-- 活动前
tNpcGossip[22098]["Text1-1"] = {111,112,113,114,115,116,117}
tNpcGossip[22098]["tOption1-1"] = {111}
tNpcGossip[22098]["ChkFunc1-1"]= function()
	-- 刷新排行榜
	NewCPsRain_DealRank(2)
	return Sys_ChkFullTime(tActivityTime["NewCPsRain"]["BefTime"])
end
-- 活动后
tNpcGossip[22098]["Text1-2"] = {111,112,113, 121}
tNpcGossip[22098]["tOption1-2"] = {121}
tNpcGossip[22098]["ChkFunc1-2"]= function()
	return not Sys_ChkFullTime(tActivityTime["NewCPsRain"]["NowTime"])
end

--活动中等级不足100
tNpcGossip[22098]["Text1-4"] = {111,112,113, 131,132,133,134,135,136,137,138,139}
tNpcGossip[22098]["tOption1-4"] = {133}
tNpcGossip[22098]["ChkFunc1-4"]= function()
	local nLevel = tNewCPsRain_Cont["Level"]
	local nMete =tNewCPsRain_Cont["Metempsychosis"]
	return Sys_ChkFullTime(tActivityTime["NewCPsRain"]["NowTime"]) and not User_JudgeLevelAndMetempsychosis(nLevel,nMete)
end

-- 活动中
tNpcGossip[22098]["Text1-3"] = {111,112,113, 131,132,133,134,135,137,138,139}
tNpcGossip[22098]["tOption1-3"] = {131,132}
tNpcGossip[22098]["OptionFunc131"] = "NewCPsRain_IntoMap</N>22098"
tNpcGossip[22098]["OptionPoint132"] = "2-2"
tNpcGossip[22098]["ChkFunc1-3"]= function()
	local nLevel = tNewCPsRain_Cont["Level"]
	local nMete =tNewCPsRain_Cont["Metempsychosis"]
	return Sys_ChkFullTime(tActivityTime["NewCPsRain"]["NowTime"]) and User_JudgeLevelAndMetempsychosis(nLevel,nMete)
end
-- 开启时间段外
tNpcGossip[22098]["Text2-1"] = {211}
tNpcGossip[22098]["tOption2-1"] = {211}
-- 了解详情
tNpcGossip[22098]["Text2-2"] = {221,222,223,224,225,226,227,228,229,2210,2211,2212,2213,2214}
tNpcGossip[22098]["tOption2-2"] = {221}
tNpcGossip[22098]["OptionPoint221"] = "1"


-- 【福利】百宝库管事（地图内）
tNpcFace[5774] = 60
tNpcGossip[22099] = tNpcGossip[22099] or DefaultNpc:new{}
tNpcGossip[22099]["OptionHidden"] = 1
tNpcGossip[22099]["DialogueText"] = tNewCPsRain_Text[22099]
-- 主对白
tNpcGossip[22099]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111,1112,1113,1114,1115,1116,1117}
tNpcGossip[22099]["tOption1-1"] = {111,112}
tNpcGossip[22099]["OptionFunc111"] = "NewCPsRain_ShowPoint</N>22099"
tNpcGossip[22099]["OptionFunc112"] = "NewCPsRain_OpenShop</N>22099"

-- 每日积分说明
tNpcGossip[22099]["Text1-2"] = {121,122,123,1211,1212,124,125}
tNpcGossip[22099]["tOption1-2"] = {121}
tNpcGossip[22099]["OptionFunc121"] = "NewCPsRain_GetDayReward</N>22099"

-- 失败，积分未到不能领取
tNpcGossip[22099]["Text2-1"] = {211,212}
tNpcGossip[22099]["tOption2-1"] = {211}
tNpcGossip[22099]["OptionFunc211"] = "NewCPsRain_MapNpcMain</N>22099"

-- 失败，空间不足
tNpcGossip[22099]["Text2-2"] = {221}
tNpcGossip[22099]["tOption2-2"] = {221}
-- 失败，今日活动已结束
tNpcGossip[22099]["Text2-3"] = {231}
tNpcGossip[22099]["tOption2-3"] = {231}
-- 失败，今日奖励已都领取完
tNpcGossip[22099]["Text2-4"] = {241}
tNpcGossip[22099]["tOption2-4"] = {241}

-----------------------------------------
-- NPC：【福利】累计积分榜（地图内）
tNpcFace[1099] = 841
tNpcGossip[22179] = tNpcGossip[22179] or DefaultNpc:new{}
tNpcGossip[22179]["OptionHidden"] = 1
tNpcGossip[22179]["DialogueText"] = tNewCPsRain_Text[22179]
-- 查看累计积分榜
tNpcGossip[22179]["Text1-1"] = {111,112,113,1111,1112,1113,1114,1115,1116,1117,1118,1119,11110,114,115,116}
tNpcGossip[22179]["tOption1-1"] = {111}

-----------------------------------------
-- NPC：【福利】绝世好礼榜（地图内）
tNpcFace[1075] = 841
tNpcGossip[22100] = tNpcGossip[22100] or DefaultNpc:new{}
tNpcGossip[22100]["OptionHidden"] = 1
tNpcGossip[22100]["DialogueText"] = tNewCPsRain_Text[22100]
-- 主对白
tNpcGossip[22100]["Text1-1"] = {111,112,1110,1111,113,114,115,116}
tNpcGossip[22100]["tOption1-1"] = {111}


-----------------------------------------
-- 普通宝箱
tNpcFace[1076] = 417
tNpcGossip[22101] = tNpcGossip[22101] or DefaultNpc:new{}
tNpcGossip[22101]["OptionHidden"] = 1
tNpcGossip[22101]["DialogueText"] = tNewCPsRain_Text[22101]
-- 失败，没有密钥
tNpcGossip[22101]["Text1-1"] = {111,112,113,114,115,116,117}
tNpcGossip[22101]["tOption1-1"] = {111,112}
tNpcGossip[22101]["OptionFunc111"] = "NewCPsRain_OpenByEMoney"
--tNpcGossip[22101]["OptionFunc112"] = "NpcPosition_PathFind</N>22099"

-- 失败，天石不足
tNpcGossip[22101]["Text2-1"] = {211}
tNpcGossip[22101]["tOption2-1"] = {211}

-- 二次确认
tNpcGossip[22101]["Text3-1"] = {311}
tNpcGossip[22101]["tOption3-1"] = {311,312,313}
tNpcGossip[22101]["OptionFunc311"] = "NewCPsRain_EMoneyExplore"
tNpcGossip[22101]["OptionFunc312"] = "NewCPsRain_DelIsFunc"

-- 稀有宝箱
tNpcFace[1077] = 416
tNpcGossip[22151] = tNpcGossip[22151] or DefaultNpc:new{}
tNpcGossip[22151]["OptionHidden"] = 1
tNpcGossip[22151]["DialogueText"] = tNewCPsRain_Text[22151]
-- 失败，今日活动已结束
tNpcGossip[22151]["Text1-1"] = {111,112,113,114,115,116,117}
tNpcGossip[22151]["tOption1-1"] = {111,112}
tNpcGossip[22151]["OptionFunc111"] = "NewCPsRain_OpenByEMoney"
--tNpcGossip[22151]["OptionFunc112"] = "NpcPosition_PathFind</N>22099"

-- 失败，天石不足
tNpcGossip[22151]["Text2-1"] = {211}
tNpcGossip[22151]["tOption2-1"] = {211}

-- 二次确认
tNpcGossip[22151]["Text3-1"] = {311}
tNpcGossip[22151]["tOption3-1"] = {311,312,313}
tNpcGossip[22151]["OptionFunc311"] = "NewCPsRain_EMoneyExplore"
tNpcGossip[22151]["OptionFunc312"] = "NewCPsRain_DelIsFunc"


-----------------------------------------
-- 普通宝箱（展示NPC）
tNpcFace[1078] = 417
tNpcGossip[22168] = tNpcGossip[22168] or DefaultNpc:new{}
tNpcGossip[22168]["OptionHidden"] = 1
tNpcGossip[22168]["DialogueText"] = tNewCPsRain_Text[22168]
-- 失败，今日活动已结束
tNpcGossip[22168]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[22168]["tOption1-1"] = {111}
tNpcGossip[22168]["OptionFunc111"] = "NpcPosition_PathFind</N>22098"


-- 稀有宝箱（展示NPC）
tNpcFace[1079] = 416
tNpcGossip[22169] = tNpcGossip[22169] or DefaultNpc:new{}
tNpcGossip[22169]["OptionHidden"] = 1
tNpcGossip[22169]["DialogueText"] = tNewCPsRain_Text[22169]
-- 失败，今日活动已结束
tNpcGossip[22169]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[22169]["tOption1-1"] = {111}
tNpcGossip[22169]["OptionFunc111"] = "NpcPosition_PathFind</N>22098"


-----------------------------------------物品配置--------------------------------------------
-- 背包信头像
tItemFace[3305463] = 838

-- 百宝秘钥
tItem[3305464] = tItem[3305464] or {}
tItem[3305464]["Function"] = function(nItemId,sItemName)
	-- 过期删除
	if not Sys_ChkFullTime(tActivityTime["NewCPsRain"]["NowTime"]) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(string.format(tNewCPsRain_Text["DelItem"],sItemName))
		end
		return
	end
	
	-- 获得地图内
	local nUserMap = Get_UserMapId()
	local nActMap = tNewCPsRain_MapData[22098]["MapId"]
	if nUserMap == nActMap then
		User_TalkChannel2005(tNewCPsRain_Text["AtActMap"])
		return
	end
	
	-- 寻路
	NpcPosition_PathFind(tNewCPsRain_Cont["MainNpc"])
end

--[[ 黄金秘钥
tItem[3305465] = tItem[3305465] or {}
tItem[3305465]["Function"] = function(nItemId,sItemName)
	-- 过期删除
	if not Sys_ChkFullTime(tActivityTime["NewCPsRain"]["NowTime"]) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(string.format(tNewCPsRain_Text["DelItem"],sItemName))
		end
		return
	end
	
	-- 获得地图内
	local nUserMap = Get_UserMapId()
	local nActMap = tNewCPsRain_MapData[22098]["MapId"]
	if nUserMap == nActMap then
		User_TalkChannel2005(tNewCPsRain_Text["AtActMap"])
		return
	end
	
	-- 寻路
	NpcPosition_PathFind(tNewCPsRain_Cont["MainNpc"])
end
]]
-- X枚百宝秘钥
tItem[3305468] = tItem[3305468] or {}
tItem[3305469] = tItem[3305468] or {}
tItem[3305470] = tItem[3305468] or {}
tItem[3305468]["Function"] = function(nItemId,sItemName)
	-- 过期删除
	if not Sys_ChkFullTime(tActivityTime["NewCPsRain"]["NowTime"]) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(string.format(tNewCPsRain_Text["DelItem"],sItemName))
		end
		return
	end

	-- 获得奖励
	RewardTemplate_UseItem(tNewCPsRain_KeyBag[nItemId])
end
--[[ X枚黄金秘钥
tItem[3305640] = tItem[3305640] or {}
tItem[3305641] = tItem[3305640] or {}
tItem[3305642] = tItem[3305640] or {}
tItem[3305640]["Function"] = function(nItemId,sItemName)
	-- 过期删除
	if not Sys_ChkFullTime(tActivityTime["NewCPsRain"]["NowTime"]) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(string.format(tNewCPsRain_Text["DelItem"],sItemName))
		end
		return
	end

	-- 获得奖励
	RewardTemplate_UseItem(tNewCPsRain_KeyBag[nItemId])
end

-- 1%特殊经验灵露
tItem[3305474] = tItem[3305474] or {}
tItem[3305474]["Function"] = function(nItemId,sItemName)
	-- 获得奖励
	RewardTemplate_UseItem(tNewCPsRain_ItemReward[nItemId])
end
]]
-----------------------------------------陷阱触发--------------------------------------------
tTrap[1748] = tTrap[1748] or {}
tTrap[1748]["Function"] = function()
	local sFunc = "NewCPsRain_LeaveMap"
	local nUserId = Get_UserId()
	Sys_MsgBox(tNewCPsRain_Text["LeaveMap"],sFunc,nil,nUserId)
end

-----------------------------------------怪物配置--------------------------------------------
-- 潜龙渊
-- 3973	魔族斥候
-- 3974	魔族刀斧手
-- 3975	魔族百夫长
-- local NewCPsRain_AreaLoad = {}
	-- NewCPsRain_AreaLoad["Function"] = NewCPsRain_MontDrop
	-- NewCPsRain_AreaLoad["MonsterId"] = {3973,3974,3975}
-- table.insert(tMonsterDrop_AreaLoad,NewCPsRain_AreaLoad)

-----------------------------------------时间自检--------------------------------------------
local tNewCPsRain_OnTime = {}
	-- 每1.5小时
	tNewCPsRain_OnTime[1] = {}
	tNewCPsRain_OnTime[1]["Type"] = 2
	tNewCPsRain_OnTime[1]["TimeType"] = 4
	tNewCPsRain_OnTime[1]["Multiple"] = {}
	tNewCPsRain_OnTime[1]["Multiple"][1]  = "00:00 00:00"
	tNewCPsRain_OnTime[1]["Multiple"][2]  = "01:30 01:30"
	tNewCPsRain_OnTime[1]["Multiple"][3]  = "03:00 03:00"
	tNewCPsRain_OnTime[1]["Multiple"][4]  = "04:30 04:30"
	tNewCPsRain_OnTime[1]["Multiple"][5]  = "06:00 06:00"
	tNewCPsRain_OnTime[1]["Multiple"][6]  = "07:30 07:30"
	tNewCPsRain_OnTime[1]["Multiple"][7]  = "09:00 09:00"
	tNewCPsRain_OnTime[1]["Multiple"][8]  = "10:30 10:30"
	tNewCPsRain_OnTime[1]["Multiple"][9]  = "12:00 12:00"
	tNewCPsRain_OnTime[1]["Multiple"][10] = "13:30 13:30"
	tNewCPsRain_OnTime[1]["Multiple"][11] = "15:00 15:00"
	tNewCPsRain_OnTime[1]["Multiple"][12] = "16:30 16:30"
	tNewCPsRain_OnTime[1]["Multiple"][13] = "18:00 18:00"
	tNewCPsRain_OnTime[1]["Multiple"][14] = "19:30 19:30"
	tNewCPsRain_OnTime[1]["Multiple"][15] = "21:00 21:00"
	tNewCPsRain_OnTime[1]["Multiple"][16] = "22:30 22:30"
	tNewCPsRain_OnTime[1]["Func"] = NewCPsRain_ResetFunc1

	-- 每5分钟执行
	tNewCPsRain_OnTime[2] = {}
	tNewCPsRain_OnTime[2]["Type"] = 1
	tNewCPsRain_OnTime[2]["TimeType"] = 5
	tNewCPsRain_OnTime[2]["Multiple"] = {}
	tNewCPsRain_OnTime[2]["Multiple"][1]  = "00 00"
	tNewCPsRain_OnTime[2]["Multiple"][2]  = "05 05"
	tNewCPsRain_OnTime[2]["Multiple"][3]  = "10 10"
	tNewCPsRain_OnTime[2]["Multiple"][4]  = "15 15"
	tNewCPsRain_OnTime[2]["Multiple"][5]  = "20 20"
	tNewCPsRain_OnTime[2]["Multiple"][6]  = "25 25"
	tNewCPsRain_OnTime[2]["Multiple"][7]  = "30 30"
	tNewCPsRain_OnTime[2]["Multiple"][8]  = "35 35"
	tNewCPsRain_OnTime[2]["Multiple"][9]  = "40 40"
	tNewCPsRain_OnTime[2]["Multiple"][10] = "45 45"
	tNewCPsRain_OnTime[2]["Multiple"][11] = "50 50"
	tNewCPsRain_OnTime[2]["Multiple"][12] = "55 55"
	tNewCPsRain_OnTime[2]["Func"] = NewCPsRain_MoveRareBox

	-- 每天执行
	tNewCPsRain_OnTime[3] = {}
	tNewCPsRain_OnTime[3]["Type"] = 2
	tNewCPsRain_OnTime[3]["TimeType"] = 4
	tNewCPsRain_OnTime[3]["Multiple"] = {}
	tNewCPsRain_OnTime[3]["Multiple"][1]  = "00:00 00:05"
	tNewCPsRain_OnTime[3]["Func"] = NewCPsRain_ResetFunc2

table.insert(tSystemTime_InitialData,tNewCPsRain_OnTime[1])
table.insert(tSystemTime_InitialData,tNewCPsRain_OnTime[2])
table.insert(tSystemTime_InitialData,tNewCPsRain_OnTime[3])
