-----------------------------------------------------------------------------------------------------
--Name:		160516[简体征服][活动脚本]2016欧洲杯活动之狂欢地图陷阱
--Purpose:		2016欧洲杯活动之狂欢地图陷阱
--Creator: 	张磊
--Created:		2016/05/20
------------------------------------------------------------------------------------------------------
-- 命名前缀
--EuropeanFootballCupTrap_
--Log 12000407
--log 12000422
------------------------------------------------------------------------------------------------------

------------------------------------------------------数据配置-----------------------------------------
local tEuropeanFootballCupTrap_Cont = {}
	tEuropeanFootballCupTrap_Cont["Space"] = 2
	tEuropeanFootballCupTrap_Cont["Timer"] = 20
	--测试
	-- tEuropeanFootballCupTrap_Cont["Timer"] = 1000000
	
	tEuropeanFootballCupTrap_Cont["CoatAttr"] = "0 1 0 0 0 0 0 1"
	
local tEuropeanFootballCupTrap_KHTime = {}
	tEuropeanFootballCupTrap_KHTime["BeforActiveTime"] = "2016-01-01 00:00 2016-06-23 23:59"
	tEuropeanFootballCupTrap_KHTime["ActiveTime"] = "2016-06-24 00:00 2016-07-16 23:59"
	--兑换称号时间
	tEuropeanFootballCupTrap_KHTime["ExchangeActiveTime"] = "2016-06-16 00:00 2016-07-24 23:59"
	--洗赠选项时间配置
	tEuropeanFootballCupTrap_KHTime["CoatXZ"] = "2016-06-24 00:00 2016-07-24 23:59"

	--测试时间
	-- tEuropeanFootballCupTrap_KHTime["BeforActiveTime"] = "2016-01-01 00:00 2016-05-23 23:59"
	-- tEuropeanFootballCupTrap_KHTime["ActiveTime"] = "2016-05-24 00:00 2016-07-11 23:59"

	
local tEuropeanFootballCupTrap_MapLimit = {}
	tEuropeanFootballCupTrap_MapLimit[10014] = 3
	tEuropeanFootballCupTrap_MapLimit["Global"] = 51182
	tEuropeanFootballCupTrap_MapLimit["TrapType"] = 1425

	--积分掩码
local tEuropeanFootballCupTrap_Stc = {}
	tEuropeanFootballCupTrap_Stc["EventData"] = 145
	tEuropeanFootballCupTrap_Stc["TypeData"] = 97
	tEuropeanFootballCupTrap_Stc["DataLimit"] = 50
	
local tEuropeanFootballCupTrap_Use = {}
	-- 可用积分掩码
	tEuropeanFootballCupTrap_Use["EventData"] = 145
	tEuropeanFootballCupTrap_Use["TypeData"] = 21
	tEuropeanFootballCupTrap_Use["UseData"] = 69
	
local tEuropeanFootballCupTrap_GoInStc = {}
	tEuropeanFootballCupTrap_GoInStc["EventData"] = 145
	tEuropeanFootballCupTrap_GoInStc["TypeData"] = 47
	
	-- 添加每天踩陷阱获得奖励的次数
	tEuropeanFootballCupTrap_GoInStc["RewardLimit"] = 93
	tEuropeanFootballCupTrap_GoInStc["DataLimit"] = 15
	
local tEuropeanFootballCupTrap_Level = {}
	tEuropeanFootballCupTrap_Level["Meto"] = 0
	tEuropeanFootballCupTrap_Level["Level"] = 80
	
	

local tEuropeanFootballCupTrap_XY = {}
	tEuropeanFootballCupTrap_XY[01] = {{x = 066,y = 123},{x = 068,y = 081}}
	tEuropeanFootballCupTrap_XY[02] = {{x = 076,y = 125},{x = 062,y = 077}}
	tEuropeanFootballCupTrap_XY[03] = {{x = 092,y = 130},{x = 072,y = 074}}
	tEuropeanFootballCupTrap_XY[04] = {{x = 097,y = 121},{x = 081,y = 080}}
	tEuropeanFootballCupTrap_XY[05] = {{x = 108,y = 117},{x = 094,y = 081}}
	tEuropeanFootballCupTrap_XY[06] = {{x = 098,y = 106},{x = 099,y = 074}}
	tEuropeanFootballCupTrap_XY[07] = {{x = 092,y = 112},{x = 105,y = 081}}
	tEuropeanFootballCupTrap_XY[08] = {{x = 083,y = 101},{x = 110,y = 071}}
	tEuropeanFootballCupTrap_XY[09] = {{x = 069,y = 102},{x = 102,y = 063}}
	tEuropeanFootballCupTrap_XY[10] = {{x = 063,y = 108},{x = 108,y = 060}}
	tEuropeanFootballCupTrap_XY[11] = {{x = 070,y = 101},{x = 104,y = 049}}
	tEuropeanFootballCupTrap_XY[12] = {{x = 063,y = 094},{x = 109,y = 043}}
	tEuropeanFootballCupTrap_XY[13] = {{x = 071,y = 089},{x = 091,y = 040}}
	tEuropeanFootballCupTrap_XY[14] = {{x = 089,y = 091},{x = 088,y = 045}}
	tEuropeanFootballCupTrap_XY[15] = {{x = 098,y = 094},{x = 081,y = 038}}
	tEuropeanFootballCupTrap_XY[16] = {{x = 108,y = 089},{x = 072,y = 040}}
	tEuropeanFootballCupTrap_XY[17] = {{x = 107,y = 106},{x = 066,y = 044}}
	tEuropeanFootballCupTrap_XY[18] = {{x = 087,y = 115},{x = 072,y = 050}}
	tEuropeanFootballCupTrap_XY[19] = {{x = 082,y = 107},{x = 083,y = 057}}
	tEuropeanFootballCupTrap_XY[20] = {{x = 061,y = 087},{x = 086,y = 068}}
	
local tEuropeanFootballCupTrap_RandomPos = {}
	tEuropeanFootballCupTrap_RandomPos[1] = {64,40}
	tEuropeanFootballCupTrap_RandomPos[2] = {108,38}
	tEuropeanFootballCupTrap_RandomPos[3] = {108,131}
	tEuropeanFootballCupTrap_RandomPos[4] = {64,131}
	
local tEuropeanFootballCupTrap_GoOut = {}
	tEuropeanFootballCupTrap_GoOut["MapId"] = 1002
	tEuropeanFootballCupTrap_GoOut["nPosX"] = 263
	tEuropeanFootballCupTrap_GoOut["nPosY"] = 234

local tEuropeanFootballCupTrap_MapId = {}	
	tEuropeanFootballCupTrap_MapId[1] = 10013
	tEuropeanFootballCupTrap_MapId[2] = 10014
	
local tEuropeanFootballCupTrap_Random = {}
	--普通地图刷出陷阱概率
	tEuropeanFootballCupTrap_Random[10013] = {}
	tEuropeanFootballCupTrap_Random[10013][1] = {}
	tEuropeanFootballCupTrap_Random[10013][1]["ItemChanceSum"] = 10000

	tEuropeanFootballCupTrap_Random[10013][1][1] = {}
	tEuropeanFootballCupTrap_Random[10013][1][1]["RandomItemChanceType"] = 2
	tEuropeanFootballCupTrap_Random[10013][1][1]["ItemChance"] = 7100
	tEuropeanFootballCupTrap_Random[10013][1][1]["Item_1"] = 1423
	tEuropeanFootballCupTrap_Random[10013][1][1]["Look"] = 1423

	tEuropeanFootballCupTrap_Random[10013][1][2] = {}
	tEuropeanFootballCupTrap_Random[10013][1][2]["RandomItemChanceType"] = 2
	tEuropeanFootballCupTrap_Random[10013][1][2]["ItemChance"] = 2900
	tEuropeanFootballCupTrap_Random[10013][1][2]["Item_1"] = 1424
	tEuropeanFootballCupTrap_Random[10013][1][2]["Look"] = 1424
	
	--高级地图刷出陷阱概率
	tEuropeanFootballCupTrap_Random[10014] = {}
	tEuropeanFootballCupTrap_Random[10014][1] = {}
	tEuropeanFootballCupTrap_Random[10014][1]["ItemChanceSum"] = 10000

	tEuropeanFootballCupTrap_Random[10014][1][1] = {}
	tEuropeanFootballCupTrap_Random[10014][1][1]["RandomItemChanceType"] = 2
	tEuropeanFootballCupTrap_Random[10014][1][1]["ItemChance"] = 7000
	tEuropeanFootballCupTrap_Random[10014][1][1]["Item_1"] = 1423
	tEuropeanFootballCupTrap_Random[10014][1][1]["Look"] = 1423

	tEuropeanFootballCupTrap_Random[10014][1][2] = {}
	tEuropeanFootballCupTrap_Random[10014][1][2]["RandomItemChanceType"] = 2
	tEuropeanFootballCupTrap_Random[10014][1][2]["ItemChance"] = 2900
	tEuropeanFootballCupTrap_Random[10014][1][2]["Item_1"] = 1424
	tEuropeanFootballCupTrap_Random[10014][1][2]["Look"] = 1424

	tEuropeanFootballCupTrap_Random[10014][1][3] = {}
	tEuropeanFootballCupTrap_Random[10014][1][3]["RandomItemChanceType"] = 2
	tEuropeanFootballCupTrap_Random[10014][1][3]["ItemChance"] = 100
	tEuropeanFootballCupTrap_Random[10014][1][3]["Item_1"] = 1425
	tEuropeanFootballCupTrap_Random[10014][1][3]["Look"] = 1425
	
	
local tEuropeanFootballCupTrap_RewardRandom = {}
	--金球陷阱
	tEuropeanFootballCupTrap_RewardRandom[1425] = {}
	tEuropeanFootballCupTrap_RewardRandom[1425][1] = {}
	tEuropeanFootballCupTrap_RewardRandom[1425][1]["ItemChanceSum"] = 10000

	-- 炽热天石碎片	3008727	30.00%
	tEuropeanFootballCupTrap_RewardRandom[1425][1][1] = {}
	tEuropeanFootballCupTrap_RewardRandom[1425][1][1]["RandomItemChanceType"] = 2
	tEuropeanFootballCupTrap_RewardRandom[1425][1][1]["ItemChance"] = 3000
	tEuropeanFootballCupTrap_RewardRandom[1425][1][1]["RewardItem"] = {}
	tEuropeanFootballCupTrap_RewardRandom[1425][1][1]["RewardItem"][1] = {}
	tEuropeanFootballCupTrap_RewardRandom[1425][1][1]["RewardItem"][1]["Id"] = 3008727
	tEuropeanFootballCupTrap_RewardRandom[1425][1][1]["RewardItem"][1]["Attr"] = "0 1"	
	tEuropeanFootballCupTrap_RewardRandom[1425][1][1]["Log"] = "0,0,0,0,12000407,2,3008727,1"
	
	-- 明亮星陨石（时效）	3009001	30.00%
	tEuropeanFootballCupTrap_RewardRandom[1425][1][2] = {}
	tEuropeanFootballCupTrap_RewardRandom[1425][1][2]["RandomItemChanceType"] = 2
	tEuropeanFootballCupTrap_RewardRandom[1425][1][2]["ItemChance"] = 3000
	tEuropeanFootballCupTrap_RewardRandom[1425][1][2]["RewardItem"] = {}
	tEuropeanFootballCupTrap_RewardRandom[1425][1][2]["RewardItem"][1] = {}
	tEuropeanFootballCupTrap_RewardRandom[1425][1][2]["RewardItem"][1]["Id"] = 3009001
	tEuropeanFootballCupTrap_RewardRandom[1425][1][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tEuropeanFootballCupTrap_RewardRandom[1425][1][2]["Log"] = "0,0,0,0,12000407,2,3009001,1"
	
    -- 小乾坤袋碎片	3008174	40.00%
	tEuropeanFootballCupTrap_RewardRandom[1425][1][3] = {}
	tEuropeanFootballCupTrap_RewardRandom[1425][1][3]["RandomItemChanceType"] = 2
	tEuropeanFootballCupTrap_RewardRandom[1425][1][3]["ItemChance"] = 4000
	tEuropeanFootballCupTrap_RewardRandom[1425][1][3]["RewardItem"] = {}
	tEuropeanFootballCupTrap_RewardRandom[1425][1][3]["RewardItem"][1] = {}
	tEuropeanFootballCupTrap_RewardRandom[1425][1][3]["RewardItem"][1]["Id"] = 3008174
	tEuropeanFootballCupTrap_RewardRandom[1425][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tEuropeanFootballCupTrap_RewardRandom[1425][1][3]["Log"] = "0,0,0,0,12000407,2,3008174,1"

	--银球陷阱
	tEuropeanFootballCupTrap_RewardRandom[1424] = {}
	tEuropeanFootballCupTrap_RewardRandom[1424][1] = {}
	tEuropeanFootballCupTrap_RewardRandom[1424][1]["ItemChanceSum"] = 10000

	-- 良品宝石（不含天地玄）	3003876	15.00%
	tEuropeanFootballCupTrap_RewardRandom[1424][1][1] = {}
	tEuropeanFootballCupTrap_RewardRandom[1424][1][1]["RandomItemChanceType"] = 2
	tEuropeanFootballCupTrap_RewardRandom[1424][1][1]["ItemChance"] = 1500
	tEuropeanFootballCupTrap_RewardRandom[1424][1][1]["RewardItem"] = {}
	tEuropeanFootballCupTrap_RewardRandom[1424][1][1]["RewardItem"][1] = {}
	tEuropeanFootballCupTrap_RewardRandom[1424][1][1]["RewardItem"][1]["Id"] = 3003876
	tEuropeanFootballCupTrap_RewardRandom[1424][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tEuropeanFootballCupTrap_RewardRandom[1424][1][1]["Log"] = "0,0,0,0,12000407,2,3003876,1"

	-- 100点气力值	3002027	25.00%
	tEuropeanFootballCupTrap_RewardRandom[1424][1][2] = {}
	tEuropeanFootballCupTrap_RewardRandom[1424][1][2]["RandomItemChanceType"] = 2
	tEuropeanFootballCupTrap_RewardRandom[1424][1][2]["ItemChance"] = 2500
	tEuropeanFootballCupTrap_RewardRandom[1424][1][2]["RewardItem"] = {}
	tEuropeanFootballCupTrap_RewardRandom[1424][1][2]["RewardItem"][1] = {}
	tEuropeanFootballCupTrap_RewardRandom[1424][1][2]["RewardItem"][1]["Id"] = 3002027
	tEuropeanFootballCupTrap_RewardRandom[1424][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tEuropeanFootballCupTrap_RewardRandom[1424][1][2]["Log"] = "0,0,0,0,12000407,2,3002027,1"
	
	-- 100点修行值	3002553	25.00%
	tEuropeanFootballCupTrap_RewardRandom[1424][1][3] = {}
	tEuropeanFootballCupTrap_RewardRandom[1424][1][3]["RandomItemChanceType"] = 2
	tEuropeanFootballCupTrap_RewardRandom[1424][1][3]["ItemChance"] = 2500
	tEuropeanFootballCupTrap_RewardRandom[1424][1][3]["RewardItem"] = {}
	tEuropeanFootballCupTrap_RewardRandom[1424][1][3]["RewardItem"][1] = {}
	tEuropeanFootballCupTrap_RewardRandom[1424][1][3]["RewardItem"][1]["Id"] = 3002553
	tEuropeanFootballCupTrap_RewardRandom[1424][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tEuropeanFootballCupTrap_RewardRandom[1424][1][3]["Log"] = "0,0,0,0,12000407,2,3002553,1"
	
	-- 200点气力值	2个3002027	15.00%
	tEuropeanFootballCupTrap_RewardRandom[1424][1][4] = {}
	tEuropeanFootballCupTrap_RewardRandom[1424][1][4]["RandomItemChanceType"] = 2
	tEuropeanFootballCupTrap_RewardRandom[1424][1][4]["ItemChance"] = 1500
	tEuropeanFootballCupTrap_RewardRandom[1424][1][4]["RewardItem"] = {}
	tEuropeanFootballCupTrap_RewardRandom[1424][1][4]["RewardItem"][1] = {}
	tEuropeanFootballCupTrap_RewardRandom[1424][1][4]["RewardItem"][1]["Id"] = 3002027
	tEuropeanFootballCupTrap_RewardRandom[1424][1][4]["RewardItem"][1]["Attr"] = "0 2"
	tEuropeanFootballCupTrap_RewardRandom[1424][1][4]["Log"] = "0,0,0,0,12000407,2,3002027,2"
	
	-- 200点修行值	3005123	10.00%
	tEuropeanFootballCupTrap_RewardRandom[1424][1][5] = {}
	tEuropeanFootballCupTrap_RewardRandom[1424][1][5]["RandomItemChanceType"] = 2
	tEuropeanFootballCupTrap_RewardRandom[1424][1][5]["ItemChance"] = 1000
	tEuropeanFootballCupTrap_RewardRandom[1424][1][5]["RewardItem"] = {}
	tEuropeanFootballCupTrap_RewardRandom[1424][1][5]["RewardItem"][1] = {}
	tEuropeanFootballCupTrap_RewardRandom[1424][1][5]["RewardItem"][1]["Id"] = 3005123
	tEuropeanFootballCupTrap_RewardRandom[1424][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tEuropeanFootballCupTrap_RewardRandom[1424][1][5]["Log"] = "0,0,0,0,12000407,2,3005123,1"
	
	-- 微光星陨石（时效）	3009000	10.00%
	tEuropeanFootballCupTrap_RewardRandom[1424][1][6] = {}
	tEuropeanFootballCupTrap_RewardRandom[1424][1][6]["RandomItemChanceType"] = 2
	tEuropeanFootballCupTrap_RewardRandom[1424][1][6]["ItemChance"] = 1000
	tEuropeanFootballCupTrap_RewardRandom[1424][1][6]["RewardItem"] = {}
	tEuropeanFootballCupTrap_RewardRandom[1424][1][6]["RewardItem"][1] = {}
	tEuropeanFootballCupTrap_RewardRandom[1424][1][6]["RewardItem"][1]["Id"] = 3009000
	tEuropeanFootballCupTrap_RewardRandom[1424][1][6]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tEuropeanFootballCupTrap_RewardRandom[1424][1][6]["Log"] = "0,0,0,0,12000407,2,3009000,1"
	
	--铜球陷阱
	tEuropeanFootballCupTrap_RewardRandom[1423] = {}
	tEuropeanFootballCupTrap_RewardRandom[1423][1] = {}
	tEuropeanFootballCupTrap_RewardRandom[1423][1]["ItemChanceSum"] = 10000

	-- 普通宝石（不含天地玄）	3003875	10.00%
	tEuropeanFootballCupTrap_RewardRandom[1423][1][1] = {}
	tEuropeanFootballCupTrap_RewardRandom[1423][1][1]["RandomItemChanceType"] = 2
	tEuropeanFootballCupTrap_RewardRandom[1423][1][1]["ItemChance"] = 1000
	tEuropeanFootballCupTrap_RewardRandom[1423][1][1]["RewardItem"] = {}
	tEuropeanFootballCupTrap_RewardRandom[1423][1][1]["RewardItem"][1] = {}
	tEuropeanFootballCupTrap_RewardRandom[1423][1][1]["RewardItem"][1]["Id"] = 3003875
	tEuropeanFootballCupTrap_RewardRandom[1423][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tEuropeanFootballCupTrap_RewardRandom[1423][1][1]["Log"] = "0,0,0,0,12000407,2,3003875,1"
	
	-- 流星	1088001	15.00%
	tEuropeanFootballCupTrap_RewardRandom[1423][1][2] = {}
	tEuropeanFootballCupTrap_RewardRandom[1423][1][2]["RandomItemChanceType"] = 2
	tEuropeanFootballCupTrap_RewardRandom[1423][1][2]["ItemChance"] = 1500
	tEuropeanFootballCupTrap_RewardRandom[1423][1][2]["RewardItem"] = {}
	tEuropeanFootballCupTrap_RewardRandom[1423][1][2]["RewardItem"][1] = {}
	tEuropeanFootballCupTrap_RewardRandom[1423][1][2]["RewardItem"][1]["Id"] = 1088001
	tEuropeanFootballCupTrap_RewardRandom[1423][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tEuropeanFootballCupTrap_RewardRandom[1423][1][2]["Log"] = "0,0,0,0,12000407,2,1088001,1"
	
	-- 龙虎回力丸	729252	15.00%
	tEuropeanFootballCupTrap_RewardRandom[1423][1][3] = {}
	tEuropeanFootballCupTrap_RewardRandom[1423][1][3]["RandomItemChanceType"] = 2
	tEuropeanFootballCupTrap_RewardRandom[1423][1][3]["ItemChance"] = 1500
	tEuropeanFootballCupTrap_RewardRandom[1423][1][3]["RewardItem"] = {}
	tEuropeanFootballCupTrap_RewardRandom[1423][1][3]["RewardItem"][1] = {}
	tEuropeanFootballCupTrap_RewardRandom[1423][1][3]["RewardItem"][1]["Id"] = 729252
	tEuropeanFootballCupTrap_RewardRandom[1423][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tEuropeanFootballCupTrap_RewardRandom[1423][1][3]["Log"] = "0,0,0,0,12000407,2,729252,1"
	
	-- 奇门秘籍	723340	15.00%
	tEuropeanFootballCupTrap_RewardRandom[1423][1][4] = {}
	tEuropeanFootballCupTrap_RewardRandom[1423][1][4]["RandomItemChanceType"] = 2
	tEuropeanFootballCupTrap_RewardRandom[1423][1][4]["ItemChance"] = 1500
	tEuropeanFootballCupTrap_RewardRandom[1423][1][4]["RewardItem"] = {}
	tEuropeanFootballCupTrap_RewardRandom[1423][1][4]["RewardItem"][1] = {}
	tEuropeanFootballCupTrap_RewardRandom[1423][1][4]["RewardItem"][1]["Id"] = 723340
	tEuropeanFootballCupTrap_RewardRandom[1423][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tEuropeanFootballCupTrap_RewardRandom[1423][1][4]["Log"] = "0,0,0,0,12000407,2,723340,1"
	
	-- 60分钟经验包	3200346	15.00%
	tEuropeanFootballCupTrap_RewardRandom[1423][1][5] = {}
	tEuropeanFootballCupTrap_RewardRandom[1423][1][5]["RandomItemChanceType"] = 2
	tEuropeanFootballCupTrap_RewardRandom[1423][1][5]["ItemChance"] = 1500
	tEuropeanFootballCupTrap_RewardRandom[1423][1][5]["RewardItem"] = {}
	tEuropeanFootballCupTrap_RewardRandom[1423][1][5]["RewardItem"][1] = {}
	tEuropeanFootballCupTrap_RewardRandom[1423][1][5]["RewardItem"][1]["Id"] = 3200346
	tEuropeanFootballCupTrap_RewardRandom[1423][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tEuropeanFootballCupTrap_RewardRandom[1423][1][5]["Log"] = "0,0,0,0,12000407,2,3200346,1"
	
	-- 真气礼包	3006542	15.00%
	tEuropeanFootballCupTrap_RewardRandom[1423][1][6] = {}
	tEuropeanFootballCupTrap_RewardRandom[1423][1][6]["RandomItemChanceType"] = 2
	tEuropeanFootballCupTrap_RewardRandom[1423][1][6]["ItemChance"] = 1500
	tEuropeanFootballCupTrap_RewardRandom[1423][1][6]["RewardItem"] = {}
	tEuropeanFootballCupTrap_RewardRandom[1423][1][6]["RewardItem"][1] = {}
	tEuropeanFootballCupTrap_RewardRandom[1423][1][6]["RewardItem"][1]["Id"] = 3006542
	tEuropeanFootballCupTrap_RewardRandom[1423][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tEuropeanFootballCupTrap_RewardRandom[1423][1][6]["Log"] = "0,0,0,0,12000407,2,3006542,1"
	
	-- 修炼礼包	3006543	15.00%
	tEuropeanFootballCupTrap_RewardRandom[1423][1][7] = {}
	tEuropeanFootballCupTrap_RewardRandom[1423][1][7]["RandomItemChanceType"] = 2
	tEuropeanFootballCupTrap_RewardRandom[1423][1][7]["ItemChance"] = 1500
	tEuropeanFootballCupTrap_RewardRandom[1423][1][7]["RewardItem"] = {}
	tEuropeanFootballCupTrap_RewardRandom[1423][1][7]["RewardItem"][1] = {}
	tEuropeanFootballCupTrap_RewardRandom[1423][1][7]["RewardItem"][1]["Id"] = 3006543
	tEuropeanFootballCupTrap_RewardRandom[1423][1][7]["RewardItem"][1]["Attr"] = "0 1"
	tEuropeanFootballCupTrap_RewardRandom[1423][1][7]["Log"] = "0,0,0,0,12000407,2,3006543,1"
	
local tEuropeanFootballCupTrap_RewardLB = {}
	tEuropeanFootballCupTrap_RewardLB["ItemId"] = 3200358


local tEuropeanFootballCupTrap_Coat = {}
	tEuropeanFootballCupTrap_Coat[1] = 164
	tEuropeanFootballCupTrap_Coat[2] = 165
	tEuropeanFootballCupTrap_Coat[3] = 166
	tEuropeanFootballCupTrap_Coat[4] = 167
	tEuropeanFootballCupTrap_Coat[5] = 92
	tEuropeanFootballCupTrap_Coat[6] = 91
	
	tEuropeanFootballCupTrap_Coat[7] = 168
	tEuropeanFootballCupTrap_Coat[8] = 169
	tEuropeanFootballCupTrap_Coat[9] = 170
	tEuropeanFootballCupTrap_Coat[10] = 171
	tEuropeanFootballCupTrap_Coat[11] = 172
	tEuropeanFootballCupTrap_Coat[12] = 173
	
	
	
local tEuropeanFootballCupTrap_QCCoat = {}
	tEuropeanFootballCupTrap_QCCoat[1] = 107
	tEuropeanFootballCupTrap_QCCoat[2] = 108
	

	
-- 球衣对应的数量和称号
local tEuropeanFootballCupTrap_TitleCon = {}
	-- 获得1件球衣外套和1件骑宠外套
	tEuropeanFootballCupTrap_TitleCon[1] = 1
    -- 集齐6件球衣外套
	tEuropeanFootballCupTrap_TitleCon[2] = 6
	
local tEuropeanFootballCupTrap_TitleType = {}
	tEuropeanFootballCupTrap_TitleType[1] = 2032
	tEuropeanFootballCupTrap_TitleType[2] = 2033
	
----翅膀
local tEuropeanFootballCupTrap_WingsType = {}
	tEuropeanFootballCupTrap_WingsType[1] = 6009
	
local tEuropeanFootballCupTrap_Log = {}
	-- 兑换骑宠光效的ＬＯＧ
	tEuropeanFootballCupTrap_Log[1] = "0,0,200563[3200479],1[1],12000407,2,200564,1"
	-- 进入地图LOG
	tEuropeanFootballCupTrap_Log[2] = "0,0,0,0,12000407,3[1],%d,1"
	tEuropeanFootballCupTrap_Log[3] = "0,0,0,0,12000407,3[2],%d,1"
	
local tEuropeanFootballCupTrap_RewardLog = {}
	-- 兑换LOG记录
	tEuropeanFootballCupTrap_RewardLog[1] = "0,0,0,0,12000422,1[7],0,1"       --兑换称号1
	tEuropeanFootballCupTrap_RewardLog[2] = "0,0,0,0,12000422,1[8],0,1"       --兑换称号2
	tEuropeanFootballCupTrap_RewardLog[3] = "0,0,0,0,12000422,1[9],0,1"       --兑换光效翅膀
	tEuropeanFootballCupTrap_RewardLog[4] = "0,0,0,0,12000422,1[12],0,1"       --兑换光效骑宠
	-- 额外获得加油喇叭LOG
	tEuropeanFootballCupTrap_RewardLog[5] = "0,0,0,0,12000422,1[15],3200358,1"       --额外获得加油喇叭LOG
	tEuropeanFootballCupTrap_RewardLog[6] = "0,0,0,0,12000422,1[16],0,1"       --对话光效球衣
	tEuropeanFootballCupTrap_RewardLog[7] = "0,0,0,0,12000422,1[17],0,1"       --赠品人物外套换非赠外套

	
local tEuropeanFootballCupTrap_CoatCont = {}

	tEuropeanFootballCupTrap_CoatCont["Nor"] = 200563
	tEuropeanFootballCupTrap_CoatCont["EffectCoat"] = 200564
	-- 光效道具
	tEuropeanFootballCupTrap_CoatCont["EffectItem"] = 3200479
	
local tEuropeanFootballCupTrap_FindNpc = {}
	tEuropeanFootballCupTrap_FindNpc["ID"] = 19301
	tEuropeanFootballCupTrap_FindNpc["MapID"] = 1002
	tEuropeanFootballCupTrap_FindNpc["PosX"] = 259
	tEuropeanFootballCupTrap_FindNpc["PosY"] = 224

local tEuropeanFootballCupTrap_RwCoatCont = {}
	tEuropeanFootballCupTrap_RwCoatCont[1] = {193735,193775}
	tEuropeanFootballCupTrap_RwCoatCont[2] = {193745,193785}
	tEuropeanFootballCupTrap_RwCoatCont[3] = {193755,193795}
	tEuropeanFootballCupTrap_RwCoatCont[4] = {193765,193805}
	tEuropeanFootballCupTrap_RwCoatCont[5] = {192655,192705,193815}
	tEuropeanFootballCupTrap_RwCoatCont[6] = {192665,192715,193825}
	
local tEuropeanFootballCupTrap_CoatAttr = {}
	tEuropeanFootballCupTrap_CoatAttr[0] = "0 1 0 0 0 0 0 1"
	tEuropeanFootballCupTrap_CoatAttr[2] = "0 1 3 0 0 0 0 1"
	
local tEuropeanFootballCupTrap_CoatItem = {}
	tEuropeanFootballCupTrap_CoatItem[1] = 193755
	tEuropeanFootballCupTrap_CoatItem[2] = 193795
	
	tEuropeanFootballCupTrap_CoatItem[3] = 193745
	tEuropeanFootballCupTrap_CoatItem[4] = 193785
	
	tEuropeanFootballCupTrap_CoatItem[5] = 193765
	tEuropeanFootballCupTrap_CoatItem[6] = 193805
	
	tEuropeanFootballCupTrap_CoatItem[7] = 193735
	tEuropeanFootballCupTrap_CoatItem[8] = 193775
	
	tEuropeanFootballCupTrap_CoatItem[9] = {}
	tEuropeanFootballCupTrap_CoatItem[9][1] = 192655
	tEuropeanFootballCupTrap_CoatItem[9][2] = 192705
	
	tEuropeanFootballCupTrap_CoatItem[10] = 193815
	
	tEuropeanFootballCupTrap_CoatItem[11] = {}
	tEuropeanFootballCupTrap_CoatItem[11][1] = 192665
	tEuropeanFootballCupTrap_CoatItem[11][2] = 192715
	
	tEuropeanFootballCupTrap_CoatItem[12] = 193825
	
	
	
	
-----------------------------------------------------------逻辑部分--------------------------------------------
-- 取陷阱要创建的下一个坐标
function EuropeanFootballCupTrap_TrapPos(nPosX,nPosY)
	for i,v in pairs(tEuropeanFootballCupTrap_XY) do
		for j = 1,#v do
			if v[j]["x"] == nPosX and v[j]["y"] == nPosY then
				local nIndex = 2
				if j == 2 then
					nIndex = 1
				end
				
				return v[nIndex]["x"],v[nIndex]["y"]
			end
		end
	end
end

--陷阱触发
function EuropeanFootballCupTrap_TrapFunc(nTrapId,nTrapType)
	-- 活动时间判断
	if not Sys_ChkFullTime(tEuropeanFootballCupTrap_KHTime["ActiveTime"]) then
		return
	end
	
	-- 判断背包是否满足
	if not User_CheckLeftSpace(tEuropeanFootballCupTrap_Cont["Space"]) then
		User_TalkChannel2005(tEuropeanFootballCupTrap_Text["Msg"]["NoSpace"])
		return
	end
	
	local nEvent = tEuropeanFootballCupTrap_GoInStc["EventData"]
	local nType = tEuropeanFootballCupTrap_GoInStc["RewardLimit"]
	local nData = tEuropeanFootballCupTrap_GoInStc["DataLimit"]
	
	
	-- 判断掩码情况
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	elseif Task_ChkStcValue(nEvent,nType,">=",nData) then
		--超过15次传出地图
		local nUserId = Get_UserId()
		local nUserMapId = Get_UserMapId(nUserId)
		Sys_SaveActionFestivalLog(string.format(tEuropeanFootballCupTrap_Log[3],nUserMapId))
		EuropeanFootballCupTrap_ChgMap(nUserId)
		User_TalkChannel2005(tEuropeanFootballCupTrap_Text["Msg"]["DataLimit"])
		return
	end
	
	-- 取当前地图，取陷阱对应的另一个坐标
	-- 删除陷阱
	Trap_EraseMapTrap(nTrapId)
	local nPosX = Get_TrapPosX()
	local nPosY = Get_TrapPosY()
	local nNewPosX,nNewPosY = EuropeanFootballCupTrap_TrapPos(nPosX,nPosY)
	
	local nUserMapId = Get_UserMapId()
	local nData1 = Get_SysDynaGlobalData1(tEuropeanFootballCupTrap_MapLimit["Global"])
	local nFlag = true
	local nNewTrapType = 0
	local nNewTrapLook = 0
	local nFlat,tTrapTypeTable = 0,{}
	
	
	if nTrapType == tEuropeanFootballCupTrap_MapLimit["TrapType"] then
		if nData1 > 0 then
			Sys_SetSynaGlobalData1(tEuropeanFootballCupTrap_MapLimit["Global"],nData1 - 1)
		end		
	end
	
	if tEuropeanFootballCupTrap_MapLimit[nUserMapId] ~= nil then
		if nData1 < 3 then
			nFlat,tTrapTypeTable = Probabil_RandomAward(tEuropeanFootballCupTrap_Random[nUserMapId],1)
		else
			nFlat,tTrapTypeTable = Probabil_RandomAward(tEuropeanFootballCupTrap_Random[nUserMapId - 1],1)
		end
	else
		nFlat,tTrapTypeTable = Probabil_RandomAward(tEuropeanFootballCupTrap_Random[nUserMapId],1)
	end
	
	-- 陷阱的trap
	nNewTrapType = tTrapTypeTable[1]["tAward"][1]["Item_1"]
	nNewTrapLook = tTrapTypeTable[1]["tAward"][1]["Look"]
	
	if nNewTrapType == tEuropeanFootballCupTrap_MapLimit["TrapType"] then
		Sys_SetSynaGlobalData1(tEuropeanFootballCupTrap_MapLimit["Global"],nData1 + 1)
	end	
	-- 创建陷阱
	Trap_CreateMapTrap(nNewTrapType,nNewTrapLook,0,nUserMapId,nNewPosX,nNewPosY,3,3)
	
	
	--给奖励

	Task_AddStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	
	-- RewardTemplate_Random(tEuropeanFootballCupTrap_RewardRandom[nTrapType],1)
	local tGetReward = RewardTemplate_Random(tEuropeanFootballCupTrap_RewardRandom[nTrapType],1)
	local nItemId = tGetReward[1]["tAward"][1]["RewardItem"][1]["Id"]
	
	User_TalkChannel2005(string.format(tEuropeanFootballCupTrap_Text["Msg"]["Reward"][nTrapType],Get_ItemtypeName(nItemId)))
	
	-- 额外获得加油喇叭
	if Sys_Random(2000,10000) then
		Item_AddNewItem(tEuropeanFootballCupTrap_RewardLB["ItemId"],"")
		Sys_SaveActionFestivalLog(tEuropeanFootballCupTrap_RewardLog[5])
		User_TalkChannel2005(tEuropeanFootballCupTrap_Text["Msg"]["GetLB"])
	end
	
	if Task_ChkStcValue(nEvent,nType,">=",nData) then
		--超过15次传出地图
		local nUserId = Get_UserId()
		local nUserMapId = Get_UserMapId(nUserId)
		Sys_SaveActionFestivalLog(string.format(tEuropeanFootballCupTrap_Log[3],nUserMapId))
		EuropeanFootballCupTrap_ChgMap(nUserId)		
		User_TalkChannel2005(tEuropeanFootballCupTrap_Text["Msg"]["DataLimit"])
	end
end

--判断进入掩码是否满足条件
function EuropeanFootballCupTrap_ChkStc()
	local nEvent = tEuropeanFootballCupTrap_GoInStc["EventData"]
	local nType = tEuropeanFootballCupTrap_GoInStc["TypeData"]
	
	if Task_ChkStcValue(nEvent,nType,"==",0) then
		return true
	elseif Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		return true
	else
		return false
	end
end

--进入地图
function EuropeanFootballCupTrap_GoInMap(nNpcId,nFlag)
	if not Sys_ChkFullTime(tEuropeanFootballCupTrap_KHTime["ActiveTime"]) then
		return
	end
	
	local nMeto = tEuropeanFootballCupTrap_Level["Meto"]
	local nLevel = tEuropeanFootballCupTrap_Level["Level"]
	local nEvent = tEuropeanFootballCupTrap_Stc["EventData"]
	local nType = tEuropeanFootballCupTrap_Stc["TypeData"]
	local nData = tEuropeanFootballCupTrap_Stc["DataLimit"]
	
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMeto) then
		return
	end
	

	if not EuropeanFootballCupTrap_ChkStc() then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end

	--设置掩码，传送进地图，打进入地图LOG
	local nGoInEvent = tEuropeanFootballCupTrap_GoInStc["EventData"]
	local nGoInType = tEuropeanFootballCupTrap_GoInStc["TypeData"]
	
	Task_SetStatistic(nGoInEvent,nGoInType,1,1)
	Task_SetStcTimestamp(nGoInEvent,nGoInType,0)
	
	--加定时器
	User_SetTimer(tEuropeanFootballCupTrap_Cont["Timer"],'EuropeanFootballCupTrap_ChgMap',1)
	
	--随机一个位置传送进去
	----判断玩家进入哪张地图（小于50分进入普通地图，大于50分进入高级地图）
	
	local nGoInMapId = tEuropeanFootballCupTrap_MapId[nFlag]
	local nPosX = 0
	local nPosY = 0
	
	
	-- if Task_ChkStcValue(nEvent,nType,"<",nData) then
		-- nGoInMapId = tEuropeanFootballCupTrap_MapId["Nor"]
	-- else
		-- nGoInMapId = tEuropeanFootballCupTrap_MapId["Spe"]
	-- end
	
	local nMark = math.random(1,#tEuropeanFootballCupTrap_RandomPos)
	nPosX = tEuropeanFootballCupTrap_RandomPos[nMark][1]
	nPosY = tEuropeanFootballCupTrap_RandomPos[nMark][2]
	
	--传送
	Sys_SaveActionFestivalLog(string.format(tEuropeanFootballCupTrap_Log[2],nGoInMapId))

	User_ChgMap(nGoInMapId,nPosX,nPosY,1)
	User_TalkChannel2005(tEuropeanFootballCupTrap_Text["Msg"]["GoInMag"][nFlag])
end

--定时器倒计时触发
function EuropeanFootballCupTrap_ChgMap(nUserId)
	--判断玩家地图
	local nUserMap = Get_UserMapId(nUserId)
	
	for k,v in pairs(tEuropeanFootballCupTrap_MapId) do
		if nUserMap == v then
			--传送出地图
			Sys_SaveActionFestivalLog(string.format(tEuropeanFootballCupTrap_Log[3],v),nUserId)
			User_ChgMap(tEuropeanFootballCupTrap_GoOut["MapId"],tEuropeanFootballCupTrap_GoOut["nPosX"],tEuropeanFootballCupTrap_GoOut["nPosY"],1,nUserId)
		end
	end
end

function EuropeanFootballCupTrap_GetTitle(nNpcId,nFlag)
	if not Sys_ChkFullTime(tEuropeanFootballCupTrap_KHTime["ExchangeActiveTime"]) then
		return
	end
	local bCoat = false
	local bQCCoat = false
	local nCoatType = 1
	local nQCtype = 2
	--判断条件
	---- 判断是否已经有这个称号了
	if User_CheckTitle(tEuropeanFootballCupTrap_TitleType[nFlag],tEuropeanFootballCupTrap_TitleType[nFlag]) then
		return
	end
	
	if nFlag == 1 then
		for k,v in pairs(tEuropeanFootballCupTrap_Coat) do
			if User_ChkStorageCoat(nCoatType,v) then
				bCoat = true
				break
			end
		end
		for k,v in pairs(tEuropeanFootballCupTrap_QCCoat) do
			if User_ChkStorageCoat(nQCtype,v) then
				bQCCoat = true
				break
			end
		end
	elseif nFlag == 2 then
		local nCoatNum = 0
		local nQCCoatNum = 0
		
		for k,v in pairs(tEuropeanFootballCupTrap_Coat) do
			if User_ChkStorageCoat(nCoatType,v) then
				nCoatNum = nCoatNum + 1
			end
		end
		if nCoatNum >= tEuropeanFootballCupTrap_TitleCon[nFlag] then
			bCoat = true
			bQCCoat = true
		end
	end
		
	--判断是否可以领取称号或者翅膀
	if bCoat and bQCCoat then	
		User_AwardTitle(tEuropeanFootballCupTrap_TitleType[nFlag],tEuropeanFootballCupTrap_TitleType[nFlag])
		User_TalkChannel2005(string.format(tEuropeanFootballCupTrap_Text["Msg"]["GetTitle"],tEuropeanFootballCupTrap_Text["TitleName"][tEuropeanFootballCupTrap_TitleType[nFlag]]))
	
		if nFlag == 1 then
			Sys_SaveActionFestivalLog(tEuropeanFootballCupTrap_RewardLog[1])
		elseif nFlag == 2 then
			Sys_SaveActionFestivalLog(tEuropeanFootballCupTrap_RewardLog[2])
		end	
	else
		LinkNpcGossipFunc_New(nNpcId,"2-1")
	end
end

-- 光效骑宠外套合成
function EuropeanFootballCupTrap_Combination(nNpcId)
	if not Sys_ChkFullTime(tEuropeanFootballCupTrap_KHTime["ExchangeActiveTime"]) then
		return
	end
	
	local nCoatId = tEuropeanFootballCupTrap_CoatCont["Nor"]
	local nEffItem = tEuropeanFootballCupTrap_CoatCont["EffectItem"]
	local nGetItem = tEuropeanFootballCupTrap_CoatCont["EffectCoat"]
	
	if not (Item_ChkItem(nCoatId,0) or Item_ChkItem(nCoatId,2)) then
		LinkNpcGossipFunc_New(nNpcId,"4-1")
		return
	end
	
	if not Item_ChkItem(nEffItem) then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	
	if Item_DelItem(nCoatId,0) and Item_DelItem(nEffItem) then
		Item_AddNewItem(nGetItem,"0 1 0 0 0 0 0 1")
		Sys_SaveActionFestivalLog(tEuropeanFootballCupTrap_RewardLog[4])
		Sys_SaveActionFestivalLog(tEuropeanFootballCupTrap_Log[1])
		User_TalkChannel2005(string.format(tEuropeanFootballCupTrap_Text["Msg"]["GetEffCoat"],Get_ItemtypeName(nGetItem)))
	elseif Item_DelItem(nCoatId,2) and Item_DelItem(nEffItem) then
		Item_AddNewItem(nGetItem,"0 1 3 0 0 0 0 1")
		Sys_SaveActionFestivalLog(tEuropeanFootballCupTrap_RewardLog[4])
		Sys_SaveActionFestivalLog(tEuropeanFootballCupTrap_Log[1])
		User_TalkChannel2005(string.format(tEuropeanFootballCupTrap_Text["Msg"]["GetEffCoat"],Get_ItemtypeName(nGetItem)))
	end
end

-- 物品的使用
function EuropeanFootballCupTrap_UseItem(nItemId)
	-- if not Sys_ChkFullTime(tEuropeanFootballCupTrap_KHTime["ExchangeActiveTime"]) then
		-- return
	-- end
	
	if not Item_ChkItem(nItemId) then
		return
	end
	
	-- 判断是否已经有翅膀了
	if User_CheckTitle(tEuropeanFootballCupTrap_WingsType[1],tEuropeanFootballCupTrap_WingsType[1]) then
		Sys_MsgBox(tEuropeanFootballCupTrap_Text["Msg"]["HavedTitle"])
		return
	end
		
	if not Item_DelItem(nItemId) then
		return
	end
	
	Sys_SaveActionFestivalLog(tEuropeanFootballCupTrap_RewardLog[3])
	User_AwardTitle(tEuropeanFootballCupTrap_WingsType[1],tEuropeanFootballCupTrap_WingsType[1])
	User_TalkChannel2005(string.format(tEuropeanFootballCupTrap_Text["Msg"]["GetTitle"],tEuropeanFootballCupTrap_Text["TitleName"][tEuropeanFootballCupTrap_WingsType[1]]))	
end

-- 寻路
function EuropeanFootballCupTrap_FindNpc(nItemId)
	if not Sys_ChkFullTime(tEuropeanFootballCupTrap_KHTime["ExchangeActiveTime"]) then
		return
	end
	
	local nMapId = tEuropeanFootballCupTrap_FindNpc["MapID"]
	local nPosX = tEuropeanFootballCupTrap_FindNpc["PosX"]
	local nPosY = tEuropeanFootballCupTrap_FindNpc["PosY"]
	local nNpcId = tEuropeanFootballCupTrap_FindNpc["ID"]
	
	
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
end

--判断取出放入物品时是否满足称号条件
function EuropeanFootballCupTrap_CheckTitle(nUserId,nFlag)
	for k,v in pairs(tEuropeanFootballCupTrap_TitleType) do
		local bCoat = false
		local bQCCoat = false
		local nCoatType = 1
		local nQCtype = 2
		
		if k == 1 then
			for i,j in pairs(tEuropeanFootballCupTrap_Coat) do
				if User_ChkStorageCoat(nCoatType,j,nUserId) then
					bCoat = true
					break
				end
			end
			for i,j in pairs(tEuropeanFootballCupTrap_QCCoat) do
				if User_ChkStorageCoat(nQCtype,j,nUserId) then
					bQCCoat = true
					break
				end
			end
		elseif k == 2 then
			local nCoatNum = 0
			local nQCCoatNum = 0
			
			for i,j in pairs(tEuropeanFootballCupTrap_Coat) do
				if User_ChkStorageCoat(nCoatType,j,nUserId) then
					nCoatNum = nCoatNum + 1
				end
			end
			if nCoatNum >= tEuropeanFootballCupTrap_TitleCon[k] then
				bCoat = true
				bQCCoat = true
			end
		end
		
		--判断是否可以领取称号或者翅膀
		if bCoat and bQCCoat then
			if not User_CheckTitle(tEuropeanFootballCupTrap_TitleType[k],tEuropeanFootballCupTrap_TitleType[k],nUserId) then
				User_AwardTitle(tEuropeanFootballCupTrap_TitleType[k],tEuropeanFootballCupTrap_TitleType[k],0,nUserId)
				
				if k == 1 then
					Sys_SaveActionFestivalLog(tEuropeanFootballCupTrap_RewardLog[1],nUserId)
				elseif k == 2 then
					Sys_SaveActionFestivalLog(tEuropeanFootballCupTrap_RewardLog[2],nUserId)
				end				
			end
		else
			if User_CheckTitle(tEuropeanFootballCupTrap_TitleType[k],tEuropeanFootballCupTrap_TitleType[k],nUserId) then
				User_DeleteTitle(tEuropeanFootballCupTrap_TitleType[k],tEuropeanFootballCupTrap_TitleType[k],nUserId)
			end
		end

	end

end

-- 合成光效球衣函数
function EuropeanFootballCupTrap_GXQY(nNpcId,nFlag)
	if not Sys_ChkFullTime(tEuropeanFootballCupTrap_KHTime["ExchangeActiveTime"]) then
		return
	end

	-- 判断是否有光效道具
	local nEffItem = tEuropeanFootballCupTrap_CoatCont["EffectItem"]
	if not Item_ChkItem(nEffItem) then
		LinkNpcGossipFunc_New(nNpcId,"7-1")
		return
	end	
	
	-- 判断是否有非赠的球衣外套
	local nNum = #tEuropeanFootballCupTrap_RwCoatCont[nFlag]
	local nItemId1 = 0
	local nItemId2 = 0
	local nRewardItem = 0
	
	if nNum == 2 then
		nItemId1 = tEuropeanFootballCupTrap_RwCoatCont[nFlag][1]
		nRewardItem = tEuropeanFootballCupTrap_RwCoatCont[nFlag][2]
		
		if not (Item_ChkMulItem(nItemId1,nItemId1,1,0,0,0,0) or Item_ChkMulItem(nItemId1,nItemId1,1,2,0,0,0)) then
			tNpcGossip[19301]["Text611"] = string.format(tEuropeanFootballCupTrap_Text[19301]["Text611"],Get_ItemtypeName(nItemId1))
			LinkNpcGossipFunc_New(nNpcId,"6-1")
			return
		end
		
		if Item_ChkMulItem(nItemId1,nItemId1,1,0,0,0,0) and Item_DelMulItem(nItemId1,nItemId1,1,0,0,0,0) and Item_DelItem(nEffItem) then
			Item_AddNewItem(nRewardItem,tEuropeanFootballCupTrap_CoatAttr[0])
			Sys_SaveActionFestivalLog(tEuropeanFootballCupTrap_RewardLog[6])
			User_TalkChannel2005(tEuropeanFootballCupTrap_Text["Msg"]["Effect"])
		elseif Item_ChkMulItem(nItemId1,nItemId1,1,2,0,0,0) and Item_DelMulItem(nItemId1,nItemId1,1,2,0,0,0) and Item_DelItem(nEffItem) then
	
			Item_AddNewItem(nRewardItem,tEuropeanFootballCupTrap_CoatAttr[2])
			Sys_SaveActionFestivalLog(tEuropeanFootballCupTrap_RewardLog[6])
			User_TalkChannel2005(tEuropeanFootballCupTrap_Text["Msg"]["Effect"])			
		end	
	elseif nNum == 3 then
		nItemId1 = tEuropeanFootballCupTrap_RwCoatCont[nFlag][1]
		nItemId2 = tEuropeanFootballCupTrap_RwCoatCont[nFlag][2]
		nRewardItem = tEuropeanFootballCupTrap_RwCoatCont[nFlag][3]
		local nDelItemCoat = 0
		local nMonFlag
		
		if Item_ChkMulItem(nItemId1,nItemId1,1,0,0,0,0) then
			nDelItemCoat = nItemId1
			nMonFlag = 0
		elseif Item_ChkMulItem(nItemId2,nItemId2,1,0,0,0,0) then
			nDelItemCoat = nItemId2
			nMonFlag = 0
		elseif Item_ChkMulItem(nItemId1,nItemId1,1,2,0,0,0) then
			nDelItemCoat = nItemId1
			nMonFlag = 2
		elseif Item_ChkMulItem(nItemId2,nItemId2,1,2,0,0,0) then
			nDelItemCoat = nItemId2
			nMonFlag = 2

		else			
			tNpcGossip[19301]["Text611"] = string.format(tEuropeanFootballCupTrap_Text[19301]["Text611"],Get_ItemtypeName(nItemId1))
			LinkNpcGossipFunc_New(nNpcId,"6-1")
			return
		end
		
		if nDelItemCoat == 0 then

			return
		end
		
		if Item_DelMulItem(nDelItemCoat,nDelItemCoat,1,nMonFlag,0,0,0) and Item_DelItem(nEffItem) then
			Item_AddNewItem(nRewardItem,tEuropeanFootballCupTrap_CoatAttr[nMonFlag])
			Sys_SaveActionFestivalLog(tEuropeanFootballCupTrap_RewardLog[6])
			User_TalkChannel2005(tEuropeanFootballCupTrap_Text["Msg"]["Effect"])
		end
	end	
end


-- 增加兑换选项（赠品换非赠）
function EuropeanFootballCupTrap_Monoply(nNpcId,nFlag)
	-- tEuropeanFootballCupTrap_CoatItem[10]
	if not Sys_ChkFullTime(tEuropeanFootballCupTrap_KHTime["CoatXZ"]) then
		return
	end
	
	local nEvent = tEuropeanFootballCupTrap_Use["EventData"]
	local nType = tEuropeanFootballCupTrap_Use["TypeData"]
	local nData = tEuropeanFootballCupTrap_Use["UseData"]
	local nUserData = Get_UserStatisticValue(nEvent,nType)
	
	if nUserData < nData then
		LinkNpcGossipFunc_New(nNpcId,"20-1")
		return
	end
	
	local Item = tEuropeanFootballCupTrap_CoatItem[nFlag]
	local nCoatItem = 0
	local nMsgItem = 0
	
	if type(Item) == "table" then
		nMsgItem = Item[1]
		for k,v in pairs(Item) do
			if Item_ChkMulItem(v,v,1,2,0,0,0) then
				nCoatItem = v
				break
			end			
		end
	else
		nMsgItem = Item	
		nCoatItem = Item	
	end
	
	
	if nCoatItem == 0 or not Item_ChkMulItem(nCoatItem,nCoatItem,1,2,0,0,0) then
		tNpcGossip[19301]["Text2111"] = string.format(tEuropeanFootballCupTrap_Text[19301]["Text2111"],Get_ItemtypeName(nMsgItem))
		LinkNpcGossipFunc_New(nNpcId,"21-1")
		return
	end
	
	if Task_AddStatistic(nEvent,nType,-nData,1) and Item_DelMulItem(nCoatItem,nCoatItem,1,2,0,0,0) and Item_AddNewItem(nCoatItem,tEuropeanFootballCupTrap_Cont["CoatAttr"]) then
		Sys_SaveActionFestivalLog(tEuropeanFootballCupTrap_RewardLog[7])
		Sys_MsgBox(string.format(tEuropeanFootballCupTrap_Text["Msg"]["GetMonCoat"],Get_ItemtypeName(nCoatItem)))
		return
	end	
end

-------------------------------------------------------------NPC对白--------------------------------------------
tNpcFace[5132] = 42
tNpcGossip[19298] = tNpcGossip[19298] or DefaultNpc:new{}
tNpcGossip[19298]["OptionHidden"] = 1

tNpcGossip[19298]["Text1-1"] = {111,112}
tNpcGossip[19298]["Text111"] = tEuropeanFootballCupTrap_Text[19298]["Text111"]
tNpcGossip[19298]["Text112"] = tEuropeanFootballCupTrap_Text[19298]["Text112"]
tNpcGossip[19298]["tOption1-1"] = {111}
tNpcGossip[19298]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tEuropeanFootballCupTrap_KHTime["BeforActiveTime"])
end

tNpcGossip[19298]["Option111"] = tEuropeanFootballCupTrap_Text[19298]["Option111"]

tNpcGossip[19298]["Text1-2"] = {121,122}
tNpcGossip[19298]["Text121"] = tEuropeanFootballCupTrap_Text[19298]["Text121"]
tNpcGossip[19298]["Text122"] = tEuropeanFootballCupTrap_Text[19298]["Text122"]
tNpcGossip[19298]["tOption1-2"] = {121}
tNpcGossip[19298]["ChkFunc1-2"] = function()
	return not Sys_ChkFullTime(tEuropeanFootballCupTrap_KHTime["ActiveTime"])
end

tNpcGossip[19298]["Option121"] = tEuropeanFootballCupTrap_Text[19298]["Option121"]

---活动时间中积分不满足等级分提示
tNpcGossip[19298]["Text1-3"] = {131,132,133,134,135,136}
tNpcGossip[19298]["Text131"] = tEuropeanFootballCupTrap_Text[19298]["Text131"]
tNpcGossip[19298]["Text132"] = ""
tNpcGossip[19298]["Text133"] = ""
tNpcGossip[19298]["Text134"] = tEuropeanFootballCupTrap_Text[19298]["Text134"]
tNpcGossip[19298]["Text135"] = tEuropeanFootballCupTrap_Text[19298]["Text135"]
tNpcGossip[19298]["Text136"] = tEuropeanFootballCupTrap_Text[19298]["Text136"]
tNpcGossip[19298]["tOption1-3"] = {131}
tNpcGossip[19298]["ChkFunc1-3"] = function()
	local nMeto = tEuropeanFootballCupTrap_Level["Meto"]
	local nLevel = tEuropeanFootballCupTrap_Level["Level"]
	
	local nEvent = tEuropeanFootballCupTrap_Stc["EventData"]
	local nType = tEuropeanFootballCupTrap_Stc["TypeData"]
	local nData = tEuropeanFootballCupTrap_Stc["DataLimit"]
	local nFlag = 0
	
	if Task_ChkStcValue(nEvent,nType,"<",nData) then		
		nFlag = 1
	else
		nFlag = 2
	end
	
	tNpcGossip[19298]["Text132"] = string.format(tEuropeanFootballCupTrap_Text[19298]["Text132"],tEuropeanFootballCupTrap_Text["MapName"][nFlag][1],tEuropeanFootballCupTrap_Text["MapName"][nFlag][2])
	tNpcGossip[19298]["Text133"] = string.format(tEuropeanFootballCupTrap_Text[19298]["Text133"],tEuropeanFootballCupTrap_Text["MapName"][nFlag][3],tEuropeanFootballCupTrap_Text["MapName"][nFlag][1])
	
	return not User_JudgeLevelAndMetempsychosis(nLevel,nMeto)
end

tNpcGossip[19298]["Option131"] = tEuropeanFootballCupTrap_Text[19298]["Option131"]



---提交满足
tNpcGossip[19298]["Text1-4"] = {141,142,143,144,145}
tNpcGossip[19298]["Text141"] = tEuropeanFootballCupTrap_Text[19298]["Text141"]
tNpcGossip[19298]["Text142"] = tEuropeanFootballCupTrap_Text[19298]["Text142"]
tNpcGossip[19298]["Text143"] = tEuropeanFootballCupTrap_Text[19298]["Text143"]
tNpcGossip[19298]["Text144"] = tEuropeanFootballCupTrap_Text[19298]["Text144"]
tNpcGossip[19298]["Text145"] = tEuropeanFootballCupTrap_Text[19298]["Text145"]
tNpcGossip[19298]["tOption1-4"] = {141,142}
tNpcGossip[19298]["ChkFunc1-4"] = function()
	local nMeto = tEuropeanFootballCupTrap_Level["Meto"]
	local nLevel = tEuropeanFootballCupTrap_Level["Level"]
	
	local nEvent = tEuropeanFootballCupTrap_Stc["EventData"]
	local nType = tEuropeanFootballCupTrap_Stc["TypeData"]
	local nData = tEuropeanFootballCupTrap_Stc["DataLimit"]
	local nFlag = 0
	
	if Task_ChkStcValue(nEvent,nType,"<",nData) then		
		nFlag = 1
	else
		nFlag = 2
	end
	
	tNpcGossip[19298]["Text142"] = string.format(tEuropeanFootballCupTrap_Text[19298]["Text142"],tEuropeanFootballCupTrap_Text["MapName"][nFlag][1],tEuropeanFootballCupTrap_Text["MapName"][nFlag][2])
	tNpcGossip[19298]["Text143"] = string.format(tEuropeanFootballCupTrap_Text[19298]["Text143"],tEuropeanFootballCupTrap_Text["MapName"][nFlag][3],tEuropeanFootballCupTrap_Text["MapName"][nFlag][1])
	tNpcGossip[19298]["Option141"] = string.format(tEuropeanFootballCupTrap_Text[19298]["Option141"],tEuropeanFootballCupTrap_Text["MapName"][nFlag][1])
	return User_JudgeLevelAndMetempsychosis(nLevel,nMeto)
end

tNpcGossip[19298]["Option141"] = ""
tNpcGossip[19298]["OptionPoint141"] = "2-1"
tNpcGossip[19298]["Option142"] = tEuropeanFootballCupTrap_Text[19298]["Option142"]


tNpcGossip[19298]["Text2-1"] = {211,212}
tNpcGossip[19298]["Text211"] = tEuropeanFootballCupTrap_Text[19298]["Text211"]
tNpcGossip[19298]["Text212"] = tEuropeanFootballCupTrap_Text[19298]["Text212"]
tNpcGossip[19298]["tOption2-1"] = {211,212}
tNpcGossip[19298]["Option211"] = tEuropeanFootballCupTrap_Text[19298]["Option211"]
tNpcGossip[19298]["OptionFunc211"] = ""
tNpcGossip[19298]["ChkFunc2-1"] = function()
	local nEvent = tEuropeanFootballCupTrap_Stc["EventData"]
	local nType = tEuropeanFootballCupTrap_Stc["TypeData"]
	local nData = tEuropeanFootballCupTrap_Stc["DataLimit"]
	local nFlag = 0
	
	if Task_ChkStcValue(nEvent,nType,"<",nData) then		
		nFlag = 1
	else
		nFlag = 2
	end
	
	tNpcGossip[19298]["Text211"] = string.format(tEuropeanFootballCupTrap_Text[19298]["Text211"],tEuropeanFootballCupTrap_Text["MapName"][nFlag][1])
	
	tNpcGossip[19298]["OptionFunc211"] = "EuropeanFootballCupTrap_GoInMap</N>19298</N>" .. nFlag
	return Sys_ChkFullTime(tEuropeanFootballCupTrap_KHTime["ActiveTime"])
end

tNpcGossip[19298]["Option212"] = tEuropeanFootballCupTrap_Text[19298]["Option212"]

tNpcGossip[19298]["Text3-1"] = {311}
tNpcGossip[19298]["Text311"] = tEuropeanFootballCupTrap_Text[19298]["Text311"]
tNpcGossip[19298]["tOption3-1"] = {311}
tNpcGossip[19298]["Option311"] = tEuropeanFootballCupTrap_Text[19298]["Option311"]






tNpcFace[5133] = 217
tNpcGossip[19301] = tNpcGossip[19301] or DefaultNpc:new{}
tNpcGossip[19301]["OptionHidden"] = 1

tNpcGossip[19301]["Text1-1"] = {111,113,114,115,118,112}
tNpcGossip[19301]["Text111"] = tEuropeanFootballCupTrap_Text[19301]["Text111"]
tNpcGossip[19301]["Text112"] = tEuropeanFootballCupTrap_Text[19301]["Text112"]
tNpcGossip[19301]["Text113"] = tEuropeanFootballCupTrap_Text[19301]["Text113"]
tNpcGossip[19301]["Text114"] = tEuropeanFootballCupTrap_Text[19301]["Text114"]
tNpcGossip[19301]["Text115"] = tEuropeanFootballCupTrap_Text[19301]["Text115"]
tNpcGossip[19301]["Text116"] = tEuropeanFootballCupTrap_Text[19301]["Text116"]
tNpcGossip[19301]["Text117"] = tEuropeanFootballCupTrap_Text[19301]["Text117"]
tNpcGossip[19301]["Text118"] = tEuropeanFootballCupTrap_Text[19301]["Text118"]
tNpcGossip[19301]["Text1011"] = tEuropeanFootballCupTrap_Text[19301]["Text1011"]
tNpcGossip[19301]["Text1012"] = tEuropeanFootballCupTrap_Text[19301]["Text1012"]
tNpcGossip[19301]["tOption1-1"] = {}

tNpcGossip[19301]["ChkFunc1-1"] = function()
	local nMeto = tEuropeanFootballCupTrap_Level["Meto"]
	local nLevel = tEuropeanFootballCupTrap_Level["Level"]
	local nEvent = tEuropeanFootballCupTrap_Stc["EventData"]
	local nType = tEuropeanFootballCupTrap_Stc["TypeData"]
	local nData = tEuropeanFootballCupTrap_Stc["DataLimit"]
	
	if User_JudgeLevelAndMetempsychosis(nLevel,nMeto) and Sys_ChkFullTime(tEuropeanFootballCupTrap_KHTime["ExchangeActiveTime"]) then
		-- 判断称号是不是都领了
		if User_CheckTitle(tEuropeanFootballCupTrap_TitleType[1],tEuropeanFootballCupTrap_TitleType[1])  and User_CheckTitle(tEuropeanFootballCupTrap_TitleType[2],tEuropeanFootballCupTrap_TitleType[2]) then
				if Sys_ChkFullTime(tEuropeanFootballCupTrap_KHTime["CoatXZ"]) then
					tNpcGossip[19301]["Text1-1"] = {1011,1012}
					tNpcGossip[19301]["tOption1-1"] = {15,10,3,4,5}					
				else
					tNpcGossip[19301]["Text1-1"] = {511,512}
					tNpcGossip[19301]["tOption1-1"] = {15,10,5}
				end
		elseif Sys_ChkFullTime(tEuropeanFootballCupTrap_KHTime["CoatXZ"]) then
			tNpcGossip[19301]["Text1-1"] = {1011,1012,113,114,115,116,117,118}
			tNpcGossip[19301]["tOption1-1"] = {1,2,15,10,3,4,5}		
		else
			tNpcGossip[19301]["Text1-1"] = {111,113,114,115,118}
			tNpcGossip[19301]["tOption1-1"] = {1,2,15,10,5}
		end
	elseif Sys_ChkFullTime(tEuropeanFootballCupTrap_KHTime["CoatXZ"]) then
		tNpcGossip[19301]["Text1-1"] = {1011,1012,113,114,115,116,117,118}
		tNpcGossip[19301]["tOption1-1"] = {6}
	else
		tNpcGossip[19301]["Text1-1"] = {111,113,114,115,118}
		tNpcGossip[19301]["tOption1-1"] = {6}		
	end
	return true
end

tNpcGossip[19301]["Option1"] = tEuropeanFootballCupTrap_Text[19301]["Option1"]
tNpcGossip[19301]["Option2"] = tEuropeanFootballCupTrap_Text[19301]["Option2"]
tNpcGossip[19301]["Option3"] = tEuropeanFootballCupTrap_Text[19301]["Option3"]
tNpcGossip[19301]["Option4"] = tEuropeanFootballCupTrap_Text[19301]["Option4"]
tNpcGossip[19301]["Option5"] = tEuropeanFootballCupTrap_Text[19301]["Option5"]
tNpcGossip[19301]["Option6"] = tEuropeanFootballCupTrap_Text[19301]["Option6"]
tNpcGossip[19301]["Option10"] = tEuropeanFootballCupTrap_Text[19301]["Option10"]
tNpcGossip[19301]["Option15"] = tEuropeanFootballCupTrap_Text[19301]["Option15"]
tNpcGossip[19301]["OptionPoint15"] = "8-1"

-- 球衣洗赠
tNpcGossip[19301]["OptionPoint4"] = "11-1"
tNpcGossip[19301]["OptionChkFunc4"] = function ()
	return Sys_ChkFullTime(tEuropeanFootballCupTrap_KHTime["CoatXZ"])
end

tNpcGossip[19301]["OptionFunc3"] = "EuropeanCupActivityNpc_GiveCoatGift</N>19301"
tNpcGossip[19301]["OptionChkFunc3"] = function ()
	return Sys_ChkFullTime(tEuropeanFootballCupTrap_KHTime["CoatXZ"])
end

tNpcGossip[19301]["OptionFunc1"] = "EuropeanFootballCupTrap_GetTitle</N>19301</N>1"
tNpcGossip[19301]["OptionChkFunc1"] = function ()
	if User_CheckTitle(tEuropeanFootballCupTrap_TitleType[1],tEuropeanFootballCupTrap_TitleType[1]) then
		return false
	end
	return true
end
tNpcGossip[19301]["OptionFunc2"] = "EuropeanFootballCupTrap_GetTitle</N>19301</N>2"
tNpcGossip[19301]["OptionChkFunc2"] = function ()
	if User_CheckTitle(tEuropeanFootballCupTrap_TitleType[2],tEuropeanFootballCupTrap_TitleType[2]) then
		return false
	end
	return true	
end
tNpcGossip[19301]["OptionFunc10"] = "EuropeanFootballCupTrap_Combination</N>19301"


tNpcGossip[19301]["Text2-1"] = {211}
tNpcGossip[19301]["Text211"] = tEuropeanFootballCupTrap_Text[19301]["Text211"]
tNpcGossip[19301]["tOption2-1"] = {211}
tNpcGossip[19301]["Option211"] = tEuropeanFootballCupTrap_Text[19301]["Option211"]

tNpcGossip[19301]["Text511"] = tEuropeanFootballCupTrap_Text[19301]["Text511"]
tNpcGossip[19301]["Text512"] = tEuropeanFootballCupTrap_Text[19301]["Text512"]
tNpcGossip[19301]["Option511"] = tEuropeanFootballCupTrap_Text[19301]["Option511"]



-- 没有普通骑宠外套
tNpcGossip[19301]["Text3-1"] = {311}
tNpcGossip[19301]["Text311"] = tEuropeanFootballCupTrap_Text[19301]["Text311"]
tNpcGossip[19301]["tOption3-1"] = {211}

-- 没有气球翅膀道具
tNpcGossip[19301]["Text4-1"] = {411}
tNpcGossip[19301]["Text411"] = tEuropeanFootballCupTrap_Text[19301]["Text411"]
tNpcGossip[19301]["tOption4-1"] = {211}


-- 二层对白
tNpcGossip[19301]["Text8-1"] = {811}
tNpcGossip[19301]["Text811"] = tEuropeanFootballCupTrap_Text[19301]["Text811"]
tNpcGossip[19301]["tOption8-1"] = {20,21,22,23,24,25,26}
tNpcGossip[19301]["Option20"] = tEuropeanFootballCupTrap_Text[19301]["Option20"]
tNpcGossip[19301]["OptionFunc20"] = "EuropeanFootballCupTrap_GXQY</N>19301</N>1"
tNpcGossip[19301]["Option21"] = tEuropeanFootballCupTrap_Text[19301]["Option21"]
tNpcGossip[19301]["OptionFunc21"] = "EuropeanFootballCupTrap_GXQY</N>19301</N>2"
tNpcGossip[19301]["Option22"] = tEuropeanFootballCupTrap_Text[19301]["Option22"]
tNpcGossip[19301]["OptionFunc22"] = "EuropeanFootballCupTrap_GXQY</N>19301</N>3"
tNpcGossip[19301]["Option23"] = tEuropeanFootballCupTrap_Text[19301]["Option23"]
tNpcGossip[19301]["OptionFunc23"] = "EuropeanFootballCupTrap_GXQY</N>19301</N>4"
tNpcGossip[19301]["Option24"] = tEuropeanFootballCupTrap_Text[19301]["Option24"]
tNpcGossip[19301]["OptionFunc24"] = "EuropeanFootballCupTrap_GXQY</N>19301</N>5"
tNpcGossip[19301]["Option25"] = tEuropeanFootballCupTrap_Text[19301]["Option25"]
tNpcGossip[19301]["OptionFunc25"] = "EuropeanFootballCupTrap_GXQY</N>19301</N>6"
tNpcGossip[19301]["Option26"] = tEuropeanFootballCupTrap_Text[19301]["Option26"]
tNpcGossip[19301]["OptionPoint26"] = "1-1"

tNpcGossip[19301]["Text6-1"] = {611}
tNpcGossip[19301]["Text611"] = tEuropeanFootballCupTrap_Text[19301]["Text611"]
tNpcGossip[19301]["tOption6-1"] = {30}
tNpcGossip[19301]["Option30"] = tEuropeanFootballCupTrap_Text[19301]["Option30"]

tNpcGossip[19301]["Text7-1"] = {711}
tNpcGossip[19301]["Text711"] = tEuropeanFootballCupTrap_Text[19301]["Text711"]
tNpcGossip[19301]["tOption7-1"] = {30}


--洗赠2层对白
tNpcGossip[19301]["Text11-1"] = {1111}
tNpcGossip[19301]["Text1111"] = tEuropeanFootballCupTrap_Text[19301]["Text1111"]
tNpcGossip[19301]["ChkFunc11-1"] = function()
	local nEvent = tEuropeanFootballCupTrap_Use["EventData"]
	local nType = tEuropeanFootballCupTrap_Use["TypeData"]
	local nUserData = Get_UserStatisticValue(nEvent,nType)
	
	tNpcGossip[19301]["Text1111"] = string.format(tEuropeanFootballCupTrap_Text[19301]["Text1111"],nUserData)
	return true
end

tNpcGossip[19301]["tOption11-1"] = {1111,1112,1113,1114,1115,1116,1117}
tNpcGossip[19301]["Option1111"] = tEuropeanFootballCupTrap_Text[19301]["Option1111"]
tNpcGossip[19301]["OptionPoint1111"] = "12-1"
tNpcGossip[19301]["Option1112"] = tEuropeanFootballCupTrap_Text[19301]["Option1112"]
tNpcGossip[19301]["OptionPoint1112"] = "13-1"
tNpcGossip[19301]["Option1113"] = tEuropeanFootballCupTrap_Text[19301]["Option1113"]
tNpcGossip[19301]["OptionPoint1113"] = "14-1"
tNpcGossip[19301]["Option1114"] = tEuropeanFootballCupTrap_Text[19301]["Option1114"]
tNpcGossip[19301]["OptionPoint1114"] = "15-1"
tNpcGossip[19301]["Option1115"] = tEuropeanFootballCupTrap_Text[19301]["Option1115"]
tNpcGossip[19301]["OptionPoint1115"] = "16-1"
tNpcGossip[19301]["Option1116"] = tEuropeanFootballCupTrap_Text[19301]["Option1116"]
tNpcGossip[19301]["OptionPoint1116"] = "17-1"
tNpcGossip[19301]["Option1117"] = tEuropeanFootballCupTrap_Text[19301]["Option1117"]
tNpcGossip[19301]["OptionPoint1117"] = "1-1"

-- 孤胆英雄。
tNpcGossip[19301]["Text12-1"] = {1211}
tNpcGossip[19301]["Text1211"] = tEuropeanFootballCupTrap_Text[19301]["Text1211"]
tNpcGossip[19301]["tOption12-1"] = {1211,1212}
tNpcGossip[19301]["Option1211"] = tEuropeanFootballCupTrap_Text[19301]["Option1211"]
tNpcGossip[19301]["OptionFunc1211"] = "EuropeanFootballCupTrap_Monoply</N>19301</N>1"
tNpcGossip[19301]["Option1212"] = tEuropeanFootballCupTrap_Text[19301]["Option1212"]
tNpcGossip[19301]["OptionFunc1212"] = "EuropeanFootballCupTrap_Monoply</N>19301</N>2"

-- 复仇三狮
tNpcGossip[19301]["Text13-1"] = {1311}
tNpcGossip[19301]["Text1311"] = tEuropeanFootballCupTrap_Text[19301]["Text1311"]
tNpcGossip[19301]["tOption13-1"] = {1311,1312}
tNpcGossip[19301]["Option1311"] = tEuropeanFootballCupTrap_Text[19301]["Option1311"]
tNpcGossip[19301]["OptionFunc1311"] = "EuropeanFootballCupTrap_Monoply</N>19301</N>3"
tNpcGossip[19301]["Option1312"] = tEuropeanFootballCupTrap_Text[19301]["Option1312"]
tNpcGossip[19301]["OptionFunc1312"] = "EuropeanFootballCupTrap_Monoply</N>19301</N>4"

--蓝色复兴。
tNpcGossip[19301]["Text14-1"] = {1411}
tNpcGossip[19301]["Text1411"] = tEuropeanFootballCupTrap_Text[19301]["Text1411"]
tNpcGossip[19301]["tOption14-1"] = {1411,1412}
tNpcGossip[19301]["Option1411"] = tEuropeanFootballCupTrap_Text[19301]["Option1411"]
tNpcGossip[19301]["OptionFunc1411"] = "EuropeanFootballCupTrap_Monoply</N>19301</N>5"
tNpcGossip[19301]["Option1412"] = tEuropeanFootballCupTrap_Text[19301]["Option1412"]
tNpcGossip[19301]["OptionFunc1412"] = "EuropeanFootballCupTrap_Monoply</N>19301</N>6"

--破晓雄鸡
tNpcGossip[19301]["Text15-1"] = {1511}
tNpcGossip[19301]["Text1511"] = tEuropeanFootballCupTrap_Text[19301]["Text1511"]
tNpcGossip[19301]["tOption15-1"] = {1511,1512}
tNpcGossip[19301]["Option1511"] = tEuropeanFootballCupTrap_Text[19301]["Option1511"]
tNpcGossip[19301]["OptionFunc1511"] = "EuropeanFootballCupTrap_Monoply</N>19301</N>7"
tNpcGossip[19301]["Option1512"] = tEuropeanFootballCupTrap_Text[19301]["Option1512"]
tNpcGossip[19301]["OptionFunc1512"] = "EuropeanFootballCupTrap_Monoply</N>19301</N>8"

--日耳曼战魂
tNpcGossip[19301]["Text16-1"] = {1611}
tNpcGossip[19301]["Text1611"] = tEuropeanFootballCupTrap_Text[19301]["Text1611"]
tNpcGossip[19301]["tOption16-1"] = {1611,1612}
tNpcGossip[19301]["Option1611"] = tEuropeanFootballCupTrap_Text[19301]["Option1611"]
tNpcGossip[19301]["OptionFunc1611"] = "EuropeanFootballCupTrap_Monoply</N>19301</N>9"
tNpcGossip[19301]["Option1612"] = tEuropeanFootballCupTrap_Text[19301]["Option1612"]
tNpcGossip[19301]["OptionFunc1612"] = "EuropeanFootballCupTrap_Monoply</N>19301</N>10"

--激情西班牙
tNpcGossip[19301]["Text17-1"] = {1711}
tNpcGossip[19301]["Text1711"] = tEuropeanFootballCupTrap_Text[19301]["Text1711"]
tNpcGossip[19301]["tOption17-1"] = {1711,1712}
tNpcGossip[19301]["Option1711"] = tEuropeanFootballCupTrap_Text[19301]["Option1711"]
tNpcGossip[19301]["OptionFunc1711"] = "EuropeanFootballCupTrap_Monoply</N>19301</N>11"
tNpcGossip[19301]["Option1712"] = tEuropeanFootballCupTrap_Text[19301]["Option1712"]
tNpcGossip[19301]["OptionFunc1712"] = "EuropeanFootballCupTrap_Monoply</N>19301</N>12"

--积分不足
tNpcGossip[19301]["Text20-1"] = {2011}
tNpcGossip[19301]["Text2011"] = tEuropeanFootballCupTrap_Text[19301]["Text2011"]
tNpcGossip[19301]["tOption20-1"] = {2011}
tNpcGossip[19301]["Option2011"] = tEuropeanFootballCupTrap_Text[19301]["Option2011"]

tNpcGossip[19301]["Text21-1"] = {2111}
tNpcGossip[19301]["Text2111"] = tEuropeanFootballCupTrap_Text[19301]["Text2111"]
tNpcGossip[19301]["tOption21-1"] = {2111}
tNpcGossip[19301]["Option2111"] = tEuropeanFootballCupTrap_Text[19301]["Option2111"]

-- 没有金杯
tNpcGossip[19301]["Text50-1"] = {5011}
tNpcGossip[19301]["Text5011"] = tEuropeanFootballCupTrap_Text[19301]["Text5011"]
tNpcGossip[19301]["tOption50-1"] = {5011}
tNpcGossip[19301]["Option5011"] = tEuropeanFootballCupTrap_Text[19301]["Option5011"]

-- 背包已满
tNpcGossip[19301]["Text51-1"] = {5111}
tNpcGossip[19301]["Text5111"] = tEuropeanFootballCupTrap_Text[19301]["Text5111"]
tNpcGossip[19301]["tOption51-1"] = {5111}
tNpcGossip[19301]["Option5111"] = tEuropeanFootballCupTrap_Text[19301]["Option5111"]

-- 已领取
tNpcGossip[19301]["Text52-1"] = {5211}
tNpcGossip[19301]["Text5211"] = tEuropeanFootballCupTrap_Text[19301]["Text5211"]
tNpcGossip[19301]["tOption52-1"] = {5211}
tNpcGossip[19301]["Option5211"] = tEuropeanFootballCupTrap_Text[19301]["Option5211"]

-----------------------------------------------------------陷阱触发---------------------------------------------
-- tTrap[1423] = tTrap[1423] or {}
-- tTrap[1423]["Function"] = function(nTrapId,nTrapType)
	 -- EuropeanFootballCupTrap_TrapFunc(nTrapId,nTrapType)
-- end

-- tTrap[1424] = tTrap[1423]
-- tTrap[1425] = tTrap[1423]


tItem[3200479] = tItem[3200479] or {}
tItem[3200479]["Text1-1"] = {111,112}
tItem[3200479]["Text111"] = tEuropeanFootballCupTrap_Text[3200479]["Text111"] 
tItem[3200479]["Text112"] = tEuropeanFootballCupTrap_Text[3200479]["Text112"] 
tItem[3200479]["tOption1-1"] = {1,2}

tItem[3200479]["Option1"] = tEuropeanFootballCupTrap_Text[3200479]["Option1"]
tItem[3200479]["Option2"] = tEuropeanFootballCupTrap_Text[3200479]["Option2"]

tItem[3200479]["OptionFunc1"]="EuropeanFootballCupTrap_UseItem</N>3200479"
tItem[3200479]["OptionFunc2"]="EuropeanFootballCupTrap_FindNpc</N>3200479"

tItem[3200479]["OptionChkFunc2"] = function ()
	if not Sys_ChkFullTime(tEuropeanFootballCupTrap_KHTime["ExchangeActiveTime"]) then
		return false
	end
	return true
end


tCheckInItemToCoatStorage["tFunction"] = tCheckInItemToCoatStorage["tFunction"] or {}
table.insert(tCheckInItemToCoatStorage["tFunction"],EuropeanFootballCupTrap_CheckTitle)

tCheckOutItemFromCoatStorage["tFunction"] = tCheckOutItemFromCoatStorage["tFunction"] or {}
table.insert(tCheckOutItemFromCoatStorage["tFunction"],EuropeanFootballCupTrap_CheckTitle)