---------------------------------------------------------------------------------------
---160316[征服][活动脚本]新服狂欢活动制作-新服任务狂欢(新服地图打宝活动)
---SQL BY:魏贻逵
---DATE:2016-03-16
---------------------------------------------------------------------------------------
--命名前缀：LookForTreasure
--掩码说明:
-- 14338 - 进入副本的次数
-- 14339 - 进地图5分钟限制

local	tLookForTreasure_Cont = {}
		tLookForTreasure_Cont["Beftime"] = tActivityTime["LookForTreasure"]["Beftime"]
		tLookForTreasure_Cont["Nowtime"] = tActivityTime["LookForTreasure"]["Nowtime"]
		tLookForTreasure_Cont["Hourtime"] = tActivityTime["LookForTreasure"]["Hourtime"]
		tLookForTreasure_Cont["Global"] = 51132

--传送地图
		tLookForTreasure_Cont["MapId"] = {}
		tLookForTreasure_Cont["MapId"][1] = 10006
		tLookForTreasure_Cont["MapId"][2] = 1002

--传送坐标
		tLookForTreasure_Cont["PosX"] = {}
		tLookForTreasure_Cont["PosX"][1] = 338
		tLookForTreasure_Cont["PosX"][2] = 200
		tLookForTreasure_Cont["PosX"][3] = 468
		tLookForTreasure_Cont["PosX"][4] = 468
		tLookForTreasure_Cont["PosX"][5] = 199
		tLookForTreasure_Cont["PosX"][6] = 330

		tLookForTreasure_Cont["PosY"] = {}
		tLookForTreasure_Cont["PosY"][1] = 337
		tLookForTreasure_Cont["PosY"][2] = 472
		tLookForTreasure_Cont["PosY"][3] = 472
		tLookForTreasure_Cont["PosY"][4] = 204
		tLookForTreasure_Cont["PosY"][5] = 203
		tLookForTreasure_Cont["PosY"][6] = 448

--掩码
local	tLookForTreasure_Stc = {}
		tLookForTreasure_Stc[1] = {}
		tLookForTreasure_Stc[1]["EventType"] = 143
		tLookForTreasure_Stc[1]["DataType"] = 38

		tLookForTreasure_Stc[2] = {}
		tLookForTreasure_Stc[2]["EventType"] = 143
		tLookForTreasure_Stc[2]["DataType"] = 39

--随机宝石
local	tLookForTreasure_Stone = {}
		tLookForTreasure_Stone[1] = 700001
		tLookForTreasure_Stone[2] = 700011
		tLookForTreasure_Stone[3] = 700021
		tLookForTreasure_Stone[4] = 700031
		tLookForTreasure_Stone[5] = 700041
		tLookForTreasure_Stone[6] = 700051
		tLookForTreasure_Stone[7] = 700061

--掉落概率
local	tLookForTreasure_MonsterDrop = {} 
		tLookForTreasure_MonsterDrop[3823] = {} 
		tLookForTreasure_MonsterDrop[3823]["Reward"] = {}
		tLookForTreasure_MonsterDrop[3823]["Reward"][1] = {}
		tLookForTreasure_MonsterDrop[3823]["Reward"][1]["ItemChanceSum"] = 10000

		tLookForTreasure_MonsterDrop[3823]["Reward"][1][1] = {}
		tLookForTreasure_MonsterDrop[3823]["Reward"][1][1]["RandomItemChanceType"] = 2
		tLookForTreasure_MonsterDrop[3823]["Reward"][1][1]["ItemChance"] = 2100
		tLookForTreasure_MonsterDrop[3823]["Reward"][1][1]["Item_1"] = tLookForTreasure_Stone

		tLookForTreasure_MonsterDrop[3823]["Reward"][1][2] = {}
		tLookForTreasure_MonsterDrop[3823]["Reward"][1][2]["RandomItemChanceType"] = 2
		tLookForTreasure_MonsterDrop[3823]["Reward"][1][2]["ItemChance"] = 1800
		tLookForTreasure_MonsterDrop[3823]["Reward"][1][2]["Item_1"] = 1088001

		tLookForTreasure_MonsterDrop[3823]["Reward"][1][3] = {}
		tLookForTreasure_MonsterDrop[3823]["Reward"][1][3]["RandomItemChanceType"] = 2
		tLookForTreasure_MonsterDrop[3823]["Reward"][1][3]["ItemChance"] = 1200
		tLookForTreasure_MonsterDrop[3823]["Reward"][1][3]["Item_1"] = 723340

		tLookForTreasure_MonsterDrop[3823]["Reward"][1][4] = {}
		tLookForTreasure_MonsterDrop[3823]["Reward"][1][4]["RandomItemChanceType"] = 2
		tLookForTreasure_MonsterDrop[3823]["Reward"][1][4]["ItemChance"] = 1000
		tLookForTreasure_MonsterDrop[3823]["Reward"][1][4]["Item_1"] = 729252

		tLookForTreasure_MonsterDrop[3823]["Reward"][1][5] = {}
		tLookForTreasure_MonsterDrop[3823]["Reward"][1][5]["RandomItemChanceType"] = 2
		tLookForTreasure_MonsterDrop[3823]["Reward"][1][5]["ItemChance"] = 1200
		tLookForTreasure_MonsterDrop[3823]["Reward"][1][5]["Item_1"] = 3008902

		tLookForTreasure_MonsterDrop[3823]["Reward"][1][6] = {}
		tLookForTreasure_MonsterDrop[3823]["Reward"][1][6]["RandomItemChanceType"] = 2
		tLookForTreasure_MonsterDrop[3823]["Reward"][1][6]["ItemChance"] = 500
		tLookForTreasure_MonsterDrop[3823]["Reward"][1][6]["Item_1"] = 3314911

		tLookForTreasure_MonsterDrop[3823]["Reward"][1][7] = {}
		tLookForTreasure_MonsterDrop[3823]["Reward"][1][7]["RandomItemChanceType"] = 2
		tLookForTreasure_MonsterDrop[3823]["Reward"][1][7]["ItemChance"] = 500
		tLookForTreasure_MonsterDrop[3823]["Reward"][1][7]["Item_1"] = 3314912

		tLookForTreasure_MonsterDrop[3823]["Reward"][1][8] = {}
		tLookForTreasure_MonsterDrop[3823]["Reward"][1][8]["RandomItemChanceType"] = 2
		tLookForTreasure_MonsterDrop[3823]["Reward"][1][8]["ItemChance"] = 50
		tLookForTreasure_MonsterDrop[3823]["Reward"][1][8]["Item_1"] = 3008903
		tLookForTreasure_MonsterDrop[3823]["Reward"][1][8]["Attr"] = "0 1"
		tLookForTreasure_MonsterDrop[3823]["Reward"][1][8]["Broadcast"] = tLookForTreasure_Text[4]
		tLookForTreasure_MonsterDrop[3823]["Reward"][1][8]["Limit"] = 200

		tLookForTreasure_MonsterDrop[3823]["Reward"][1][9] = {}
		tLookForTreasure_MonsterDrop[3823]["Reward"][1][9]["RandomItemChanceType"] = 2
		tLookForTreasure_MonsterDrop[3823]["Reward"][1][9]["ItemChance"] = 50
		tLookForTreasure_MonsterDrop[3823]["Reward"][1][9]["Item_1"] = 3008174
		tLookForTreasure_MonsterDrop[3823]["Reward"][1][9]["Attr"] = "0 1"

		tLookForTreasure_MonsterDrop[3823]["Reward"][1][10] = {}
		tLookForTreasure_MonsterDrop[3823]["Reward"][1][10]["RandomItemChanceType"] = 2
		tLookForTreasure_MonsterDrop[3823]["Reward"][1][10]["ItemChance"] = 300
		tLookForTreasure_MonsterDrop[3823]["Reward"][1][10]["Item_1"] = 3008904
		tLookForTreasure_MonsterDrop[3823]["Reward"][1][10]["Attr"] = "0 1"

		tLookForTreasure_MonsterDrop[3823]["Reward"][1][11] = {}
		tLookForTreasure_MonsterDrop[3823]["Reward"][1][11]["RandomItemChanceType"] = 2
		tLookForTreasure_MonsterDrop[3823]["Reward"][1][11]["ItemChance"] = 300
		tLookForTreasure_MonsterDrop[3823]["Reward"][1][11]["Item_1"] = 3008905
		tLookForTreasure_MonsterDrop[3823]["Reward"][1][11]["Attr"] = "0 1"

		tLookForTreasure_MonsterDrop[3823]["Reward"][1][12] = {}
		tLookForTreasure_MonsterDrop[3823]["Reward"][1][12]["RandomItemChanceType"] = 2
		tLookForTreasure_MonsterDrop[3823]["Reward"][1][12]["ItemChance"] = 400
		tLookForTreasure_MonsterDrop[3823]["Reward"][1][12]["Item_1"] = 3003124
		tLookForTreasure_MonsterDrop[3823]["Reward"][1][12]["Attr"] = "0 1 3"
		tLookForTreasure_MonsterDrop[3823]["Reward"][1][12]["Monopoly"] = 1

		tLookForTreasure_MonsterDrop[3823]["Reward"][1][13] = {}
		tLookForTreasure_MonsterDrop[3823]["Reward"][1][13]["RandomItemChanceType"] = 2
		tLookForTreasure_MonsterDrop[3823]["Reward"][1][13]["ItemChance"] = 300
		tLookForTreasure_MonsterDrop[3823]["Reward"][1][13]["Item_1"] = 3003125
		tLookForTreasure_MonsterDrop[3823]["Reward"][1][13]["Attr"] = "0 1 3"
		tLookForTreasure_MonsterDrop[3823]["Reward"][1][13]["Monopoly"] = 1

		tLookForTreasure_MonsterDrop[3823]["Reward"][1][14] = {}
		tLookForTreasure_MonsterDrop[3823]["Reward"][1][14]["RandomItemChanceType"] = 2
		tLookForTreasure_MonsterDrop[3823]["Reward"][1][14]["ItemChance"] = 300
		tLookForTreasure_MonsterDrop[3823]["Reward"][1][14]["Item_1"] = 3002030
		tLookForTreasure_MonsterDrop[3823]["Reward"][1][14]["Attr"] = "0 1"

--秘境天石包概率
local	tLookForTreasure_Cppack = {} 
		tLookForTreasure_Cppack[3008903] = {} 
		tLookForTreasure_Cppack[3008903]["Reward"] = {}
		tLookForTreasure_Cppack[3008903]["Reward"][1] = {}
		tLookForTreasure_Cppack[3008903]["Reward"][1]["ItemChanceSum"] = 10000

		tLookForTreasure_Cppack[3008903]["Reward"][1][1] = {}
		tLookForTreasure_Cppack[3008903]["Reward"][1][1]["RandomItemChanceType"] = 2
		tLookForTreasure_Cppack[3008903]["Reward"][1][1]["ItemChance"] = 500
		tLookForTreasure_Cppack[3008903]["Reward"][1][1]["Item_1"] = 1
		tLookForTreasure_Cppack[3008903]["Reward"][1][1]["Start"] = 1
		tLookForTreasure_Cppack[3008903]["Reward"][1][1]["End"] = 10

		tLookForTreasure_Cppack[3008903]["Reward"][1][2] = {}
		tLookForTreasure_Cppack[3008903]["Reward"][1][2]["RandomItemChanceType"] = 2
		tLookForTreasure_Cppack[3008903]["Reward"][1][2]["ItemChance"] = 2500
		tLookForTreasure_Cppack[3008903]["Reward"][1][2]["Item_1"] = 2
		tLookForTreasure_Cppack[3008903]["Reward"][1][2]["Start"] = 11
		tLookForTreasure_Cppack[3008903]["Reward"][1][2]["End"] = 20

		tLookForTreasure_Cppack[3008903]["Reward"][1][3] = {}
		tLookForTreasure_Cppack[3008903]["Reward"][1][3]["RandomItemChanceType"] = 2
		tLookForTreasure_Cppack[3008903]["Reward"][1][3]["ItemChance"] = 3500
		tLookForTreasure_Cppack[3008903]["Reward"][1][3]["Item_1"] = 3
		tLookForTreasure_Cppack[3008903]["Reward"][1][3]["Start"] = 21
		tLookForTreasure_Cppack[3008903]["Reward"][1][3]["End"] = 30

		tLookForTreasure_Cppack[3008903]["Reward"][1][4] = {}
		tLookForTreasure_Cppack[3008903]["Reward"][1][4]["RandomItemChanceType"] = 2
		tLookForTreasure_Cppack[3008903]["Reward"][1][4]["ItemChance"] = 1800
		tLookForTreasure_Cppack[3008903]["Reward"][1][4]["Item_1"] = 4
		tLookForTreasure_Cppack[3008903]["Reward"][1][4]["Start"] = 31
		tLookForTreasure_Cppack[3008903]["Reward"][1][4]["End"] = 40

		tLookForTreasure_Cppack[3008903]["Reward"][1][5] = {}
		tLookForTreasure_Cppack[3008903]["Reward"][1][5]["RandomItemChanceType"] = 2
		tLookForTreasure_Cppack[3008903]["Reward"][1][5]["ItemChance"] = 1200
		tLookForTreasure_Cppack[3008903]["Reward"][1][5]["Item_1"] = 5
		tLookForTreasure_Cppack[3008903]["Reward"][1][5]["Start"] = 41
		tLookForTreasure_Cppack[3008903]["Reward"][1][5]["End"] = 50

		tLookForTreasure_Cppack[3008903]["Reward"][1][6] = {}
		tLookForTreasure_Cppack[3008903]["Reward"][1][6]["RandomItemChanceType"] = 2
		tLookForTreasure_Cppack[3008903]["Reward"][1][6]["ItemChance"] = 400
		tLookForTreasure_Cppack[3008903]["Reward"][1][6]["Item_1"] = 6
		tLookForTreasure_Cppack[3008903]["Reward"][1][6]["Start"] = 51
		tLookForTreasure_Cppack[3008903]["Reward"][1][6]["End"] = 60

		tLookForTreasure_Cppack[3008903]["Reward"][1][7] = {}
		tLookForTreasure_Cppack[3008903]["Reward"][1][7]["RandomItemChanceType"] = 2
		tLookForTreasure_Cppack[3008903]["Reward"][1][7]["ItemChance"] = 100
		tLookForTreasure_Cppack[3008903]["Reward"][1][7]["Item_1"] = 7
		tLookForTreasure_Cppack[3008903]["Reward"][1][7]["Start"] = 61
		tLookForTreasure_Cppack[3008903]["Reward"][1][7]["End"] = 88

--秘境赤练石礼包概率
local	tLookForTreasure_Stonepack = {} 
		tLookForTreasure_Stonepack[3008904] = {} 
		tLookForTreasure_Stonepack[3008904]["Reward"] = {}
		tLookForTreasure_Stonepack[3008904]["Reward"][1] = {}
		tLookForTreasure_Stonepack[3008904]["Reward"][1]["ItemChanceSum"] = 10000

		tLookForTreasure_Stonepack[3008904]["Reward"][1][1] = {}
		tLookForTreasure_Stonepack[3008904]["Reward"][1][1]["RandomItemChanceType"] = 2
		tLookForTreasure_Stonepack[3008904]["Reward"][1][1]["ItemChance"] = 9000
		tLookForTreasure_Stonepack[3008904]["Reward"][1][1]["Item_1"] = 730001
		tLookForTreasure_Stonepack[3008904]["Reward"][1][1]["Attr"] = "0 1 3 21600 1"
		tLookForTreasure_Stonepack[3008904]["Reward"][1][1]["Text"] = tLookForTreasure_Text[3008904][1]

		tLookForTreasure_Stonepack[3008904]["Reward"][1][2] = {}
		tLookForTreasure_Stonepack[3008904]["Reward"][1][2]["RandomItemChanceType"] = 2
		tLookForTreasure_Stonepack[3008904]["Reward"][1][2]["ItemChance"] = 900
		tLookForTreasure_Stonepack[3008904]["Reward"][1][2]["Item_1"] = 730002
		tLookForTreasure_Stonepack[3008904]["Reward"][1][2]["Attr"] = "0 1 3 21600 1"
		tLookForTreasure_Stonepack[3008904]["Reward"][1][2]["Text"] = tLookForTreasure_Text[3008904][2]

		tLookForTreasure_Stonepack[3008904]["Reward"][1][3] = {}
		tLookForTreasure_Stonepack[3008904]["Reward"][1][3]["RandomItemChanceType"] = 2
		tLookForTreasure_Stonepack[3008904]["Reward"][1][3]["ItemChance"] = 100
		tLookForTreasure_Stonepack[3008904]["Reward"][1][3]["Item_1"] = 730003
		tLookForTreasure_Stonepack[3008904]["Reward"][1][3]["Attr"] = "0 1 3 21600 1"
		tLookForTreasure_Stonepack[3008904]["Reward"][1][3]["Text"] = tLookForTreasure_Text[3008904][3]

--秘境经验礼包
local	tLookForTreasure_Item = {}
		tLookForTreasure_Item[3008902] = {}
		tLookForTreasure_Item[3008902]["Exp"] = 10
		tLookForTreasure_Item[3008902]["Cultivation"] = 5
		tLookForTreasure_Item[3008902]["ExpLog"] = "0,0,3008902,1,12000332,2,4,10"
		tLookForTreasure_Item[3008902]["CultivationLog"] = "0,0,3008902,1,12000332,2,6,5"

--秘境天石礼包
		tLookForTreasure_Item[3008903] = {}
		tLookForTreasure_Item[3008903]["Limit"] = 88
		tLookForTreasure_Item[3008903]["EmoneyLog"] = "0,0,3008903,1,12000332,2,2,%d"
		tLookForTreasure_Item[3008903]["MonoEmoneyLog"] = "0,0,3008903,1,12000332,2,3,%d"

--秘境赤炼礼包
		tLookForTreasure_Item[3008904] = {}
		tLookForTreasure_Item[3008904]["Log"] = "0,0,3008904,1,12000332,2,%d,1"

--龙珠碎片
		tLookForTreasure_Item[3008905] = {}
		tLookForTreasure_Item[3008905]["Item"] = 1088000
		tLookForTreasure_Item[3008905]["Attr"] = "0 1 3"

		tLookForTreasure_Item[3008905]["Log"] = {}
		tLookForTreasure_Item[3008905]["Log"][1] = "0,0,3008905,1,12000332,2,%d,1"
		tLookForTreasure_Item[3008905]["Log"][2] = "0,0,3008905,1,12000332,2,0,0"

local	tLookForTreasure_Log = {}
		tLookForTreasure_Log[1] = "0,0,0,0,12000332,1,1,0"
		tLookForTreasure_Log[2] = "0,0,0,0,12000332,2,%d,1"
		tLookForTreasure_Log[3] = "0,0,0,0,12000332,2[3],%d,1"

---------------------------------------------------------------------------------------
--倒计时
function LookForTreasure_Time()
local	nTime = 300 + Get_UserStcTimestampValue(tLookForTreasure_Stc[2]["EventType"],tLookForTreasure_Stc[2]["DataType"]) - os.time()
		if nTime <= 0 then
			return
		end
		User_SetTimer(nTime,"LookForTreasure_Time_1",0) --不在界面上显示倒计时间
end

--传送出去
function LookForTreasure_Time_1(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	if	Get_UserMapId(nUserId) == tLookForTreasure_Cont["MapId"][1] then
		Sys_MsgBox(tLookForTreasure_Text[1])
		User_UserRandBoundTrans(tLookForTreasure_Cont["MapId"][2],tLookForTreasure_Cont["PosX"][6],tLookForTreasure_Cont["PosY"][6],10,10,0,nUserId)
	end
end

--进入聚宝秘境。
function LookForTreasure_Option1_11003(nNpcId)
	if not Sys_ChkFullTime(tLookForTreasure_Cont["Nowtime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end

	local nEventType1 = tLookForTreasure_Stc[1]["EventType"]
	local nDataType1 = tLookForTreasure_Stc[1]["DataType"]
	local nEventType2 = tLookForTreasure_Stc[2]["EventType"]
	local nDataType2 = tLookForTreasure_Stc[2]["DataType"]
	local nMapId = tLookForTreasure_Cont["MapId"][1]
	local nNum = math.random(1,5)
	local nBoundX = tLookForTreasure_Cont["PosX"][nNum]
	local nBoundY = tLookForTreasure_Cont["PosY"][nNum]
	local sLog = tLookForTreasure_Log[1]
	
	if Get_NpcMapID(nNpcId) ~= Get_UserMapId() then
		User_TalkChannel2005(tTransferFail_Text["MsgTip"])
		return
	end
	
--没超过5分钟直接传送
	if Task_ChkStcValue(nEventType2,nDataType2,">=",1)  and (not Task_StcInterval(nEventType2,nDataType2,300,0)) then
		Sys_MsgBox(tLookForTreasure_Text[nNpcId][1])
		LookForTreasure_Time()
		User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,10,10)
		return
	end

--判断进入活动次数
	if Task_ChkStcValue(nEventType1,nDataType1,"<=",0) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end

--进入活动地图
	Task_AddStatistic(nEventType1,nDataType1,-1,1,0)
	Task_SetStatistic(nEventType2,nDataType2,1,1,0)
	Task_SetStcTimestamp(nEventType2,nDataType2,0,0)
	Sys_MsgBox(tLookForTreasure_Text[nNpcId][1])
	Sys_SaveActionFestivalLog(sLog)
	LookForTreasure_Time()
	User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,10,10)

end

---------------------------------------------------------------------------------------
--怪物掉落
function LookForTreasure_Monster(nMonsterTypeId)
	local nEventType2 = tLookForTreasure_Stc[2]["EventType"]
	local nDataType2 = tLookForTreasure_Stc[2]["DataType"]
--非活动时间或超过5分钟传送出去
	if not Sys_ChkFullTime(tLookForTreasure_Cont["Nowtime"]) or Task_StcInterval(nEventType2,nDataType2,300,0) then
		Sys_MsgBox(tLookForTreasure_Text[1])
		User_UserRandBoundTrans(tLookForTreasure_Cont["MapId"][2],tLookForTreasure_Cont["PosX"][6],tLookForTreasure_Cont["PosY"][6],10,10)
		return
	end

--判断背包空间
	if not User_CheckLeftSpace(1) then
		Sys_MsgBox(tLookForTreasure_Text[2])
		return
	end

--物品掉落
	local flat,tNum = Probabil_RandomAward(tLookForTreasure_MonsterDrop[3823]["Reward"],1) 
	local nItemId = tNum[1]["tAward"][1]["Item_1"]
	local nGlobalId = tLookForTreasure_Cont["Global"]
	local nSysDynaGlobalData1 = Get_SysDynaGlobalData1(nGlobalId)

--限制全服每天产出个数为200，有5%开出非赠天石。获得播放全服公告。超出给免费强炼丹。
	if tNum[1]["tAward"][1]["Limit"] ~= nil then
		local nLimit = tNum[1]["tAward"][1]["Limit"]
		if nSysDynaGlobalData1 >= nLimit then
			nItemId = 3003124
		else
			nSysDynaGlobalData1 = nSysDynaGlobalData1 + 1
			Sys_SetSynaGlobalData1(nGlobalId,nSysDynaGlobalData1)
		end
	end

--随机到宝石处理
	if type(nItemId) == "table" then
		nItemId = tLookForTreasure_Stone[math.random(1,#tLookForTreasure_Stone)]
	end
	
	Sys_SaveActionFestivalLog(string.format(tLookForTreasure_Log[3],nItemId))

--掉地上或者直接掉背包
	local sLog = string.format(tLookForTreasure_Log[2],nItemId)
	local sItemName = Get_ItemtypeName(nItemId)
	local sText = ""
	if tNum[1]["tAward"][1]["Monopoly"] == nil then
		sText = string.format(tLookForTreasure_Text[3][1],sItemName)
	else
		sText = string.format(tLookForTreasure_Text[3][2],sItemName)
	end
	
	if tNum[1]["tAward"][1]["Attr"] ~= nil then
		local sAttr = tNum[1]["tAward"][1]["Attr"]
		Item_AddNewItem(nItemId,sAttr)
		Sys_SaveActionFestivalLog(sLog)
		User_TalkChannel2005(sText)
	else
		Monster_SysDropItem(nItemId)
		Sys_SaveActionFestivalLog(sLog)
	end

	--打到秘境天石礼包，全服公告
	if tNum[1]["tAward"][1]["Broadcast"] ~= nil then
		if nItemId == 3008903 then
			local sName = Get_UserName()
			local sBroadcast = string.format(tNum[1]["tAward"][1]["Broadcast"],sName)
			Sys_SystemBroadcast(sBroadcast)
		end
	end
end

---------------------------------------------------------------------------------------
--秘境经验礼包
function LookForTreasure_Item3008902(nItemId,sItemName)
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local nLev = Get_UserLevel()
		if nLev < G_User_MaxLev then
			User_AddExpTime(tLookForTreasure_Item[nItemId]["Exp"])
			Sys_SaveActionFestivalLog(tLookForTreasure_Item[nItemId]["ExpLog"])
			User_TalkChannel2005(tLookForTreasure_Text[nItemId]["Exp"])
		else
			User_AddCultivation(tLookForTreasure_Item[nItemId]["Cultivation"])
			Sys_SaveActionFestivalLog(tLookForTreasure_Item[nItemId]["CultivationLog"])
			User_TalkChannel2005(tLookForTreasure_Text[nItemId]["Cultivation"])
		end
	end
end

--秘境天石礼包
function LookForTreasure_Item3008903(nItemId,sItemName)
--判断天石上限和赠点上限
	if Get_UserEMoney() + tLookForTreasure_Item[nItemId]["Limit"] > 999999999 then
		User_TalkChannel2005(tLookForTreasure_Text[nItemId]["EmoneyLimit"])
		return
	end

	if Get_UserMonoEMoney() + tLookForTreasure_Item[nItemId]["Limit"] > 999999999 then
		User_TalkChannel2005(tLookForTreasure_Text[nItemId]["MonoEmoneyLimit"])
		return
	end

--给天石或赠点
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local flat,tNum = Probabil_RandomAward(tLookForTreasure_Cppack[nItemId]["Reward"],1)
		local nStart = tNum[1]["tAward"][1]["Start"]
		local nEnd = tNum[1]["tAward"][1]["End"]
		local nCp = math.random(nStart,nEnd)
		if Sys_Random(5,100) then
			local sText = string.format(tLookForTreasure_Text[nItemId]["Emoney"],nCp)
			local sLog = string.format(tLookForTreasure_Item[nItemId]["EmoneyLog"],nCp)
			local sName = Get_UserName()
			local sBroadcast = string.format(tLookForTreasure_Text[nItemId]["Broadcast"],sName,nCp)
			User_AddEMoney(nCp)
			Sys_SaveActionFestivalLog(sLog)
			User_TalkChannel2005(sText)
			Sys_SystemBroadcast(sBroadcast)
		else
			local sText = string.format(tLookForTreasure_Text[nItemId]["MonoEmoney"],nCp)
			local sLog = string.format(tLookForTreasure_Item[nItemId]["MonoEmoneyLog"],nCp)
			User_AddEMoneyMono(nCp)
			Sys_SaveActionFestivalLog(sLog)
			User_TalkChannel2005(sText)
		end
	end
end

--秘境赤炼礼包
function LookForTreasure_Item3008904(nItemId,sItemName)
	if not User_CheckLeftSpace(1) then
		Sys_MsgBox(tLookForTreasure_Text[nItemId][4])
		return
	end

	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local flat,tNum = Probabil_RandomAward(tLookForTreasure_Stonepack[3008904]["Reward"],1) 
		local nAddItemId = tNum[1]["tAward"][1]["Item_1"]
		local sAttr = tNum[1]["tAward"][1]["Attr"]
		local sText = tNum[1]["tAward"][1]["Text"]
		local sLog = string.format(tLookForTreasure_Item[nItemId]["Log"],nAddItemId)
		Item_AddNewItem(nAddItemId,sAttr)
		Sys_SaveActionFestivalLog(sLog)
		User_TalkChannel2005(sText)
	end
end

--龙珠碎片
function LookForTreasure_Item3008905(nItemId,sItemName)
	LinkItemGossipFunc_New(nItemId,"1-1")
end


function LookForTreasure_Item3008905_1(nItemId,nNum)
	if not Item_ChkMulItem(nItemId,nItemId,nNum,1) then
		LinkItemGossipFunc_New(nItemId,"3-1")
		return
	end

	if not User_CheckLeftSpace(1) then
		LinkItemGossipFunc_New(nItemId,"3-2")
		return
	end

	if Item_DelMulItem(nItemId,nItemId,nNum,1) then
		if Sys_Random(nNum,7) then
			local nAddItemId = tLookForTreasure_Item[nItemId]["Item"]
			local sAttr = tLookForTreasure_Item[nItemId]["Attr"]
			local sLog = string.format(tLookForTreasure_Item[nItemId]["Log"][1],nAddItemId)
			Item_AddNewItem(nAddItemId,sAttr)
			Sys_SaveActionFestivalLog(sLog)
			User_TalkChannel2005(tLookForTreasure_Text[nItemId][1])
		else
			local sLog = tLookForTreasure_Item[nItemId]["Log"][2]
			Sys_SaveActionFestivalLog(sLog)
			LinkItemGossipFunc_New(nItemId,"3-3")
		end
	end
end

function LookForTreasure_Item3008905_2(nItemId,nNum)
	if Item_ChkMulItem(nItemId,nItemId,nNum,1) then
		LinkItemGossipFunc_New(nItemId,"1-1")
	end
end

--使用正气令增加次数
function tLookForTreasure_AddTimes()
--判断活动时间和新服
	if not Sys_ChkFullTime(tLookForTreasure_Cont["Nowtime"]) or Get_SysDynaGlobalData0(tLookForTreasure_Cont["Global"]) <= 0 then
		return
	end

	local nEventType = tLookForTreasure_Stc[1]["EventType"]
	local nDataType = tLookForTreasure_Stc[1]["DataType"]
	Task_AddStatistic(nEventType,nDataType,1,1,0)
	User_TalkChannel2005(tLookForTreasure_Text[5])
end
---------------------------------------------------------------------------------------
--200w清动态存储表
function tLookForTreasure_Timechk()
--活动前不处理
	if Sys_ChkFullTime(tLookForTreasure_Cont["Beftime"]) then
		return
	end

--活动后清开关
	if not Sys_ChkFullTime(tLookForTreasure_Cont["Nowtime"]) and Get_SysDynaGlobalData0(tLookForTreasure_Cont["Global"]) >= 1 then
		Sys_SetSynaGlobalData0(51132,0)
	end

--活动中清数量限制
	if Sys_ChkFullTime(tLookForTreasure_Cont["Nowtime"]) and Get_SysDynaGlobalData0(tLookForTreasure_Cont["Global"]) >= 1 then
		Sys_SetSynaGlobalData1(51132,0)
	end

end

---------------------------------------------------------------------------------------
--聚宝秘境仙子
tNpcFace[4075] = 112
tNpcGossip[11003] = tNpcGossip[11003] or DefaultNpc:new{}
tNpcGossip[11003]["OptionHidden"] = 1

--主对白
tNpcGossip[11003]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[11003]["Text111"] = tLookForTreasure_Text[11003]["Text111"]
tNpcGossip[11003]["Text112"] = tLookForTreasure_Text[11003]["Text112"]
tNpcGossip[11003]["Text113"] = tLookForTreasure_Text[11003]["Text113"]
tNpcGossip[11003]["Text114"] = tLookForTreasure_Text[11003]["Text114"]
-- tNpcGossip[11003]["Text115"] = tLookForTreasure_Text[11003]["Text115"]

tNpcGossip[11003]["tOption1-1"] = {1,2}
tNpcGossip[11003]["Option1"] = tLookForTreasure_Text[11003]["Option1"]
tNpcGossip[11003]["Option2"] = tLookForTreasure_Text[11003]["Option2"]
tNpcGossip[11003]["ChkFunc1-1"] = function ()
local	nStc = Get_UserStatisticValue(tLookForTreasure_Stc[1]["EventType"],tLookForTreasure_Stc[1]["DataType"])
		tNpcGossip[11003]["Text115"] = string.format(tLookForTreasure_Text[11003]["Text115"],nStc)
		return true
end

tNpcGossip[11003]["OptionChkFunc1"] = function ()
	return Sys_ChkFullTime(tLookForTreasure_Cont["Nowtime"])
end

tNpcGossip[11003]["OptionFunc1"]="LookForTreasure_Option1_11003</N>11003"

tNpcGossip[11003]["Text2-1"] = {211}
tNpcGossip[11003]["Text211"] = tLookForTreasure_Text[11003]["Text211"]
tNpcGossip[11003]["tOption2-1"] = {3}
tNpcGossip[11003]["Option3"] = tLookForTreasure_Text[11003]["Option3"]
---------------------------------------------------------------------------------------
tMonster[3823] = tMonster[3823] or {}
tMonster[3823]["tFunction"] = tMonster[3823]["tFunction"] or {}
table.insert(tMonster[3823]["tFunction"],LookForTreasure_Monster)
---------------------------------------------------------------------------------------
tItem[3008902] = tItem[3008902] or {}
tItem[3008902]["Function"] = function(nItemId,sItemName)
	LookForTreasure_Item3008902(nItemId,sItemName)
end
tItem[3008903] = tItem[3008903] or {}
tItem[3008903]["Function"] = function(nItemId,sItemName)
	LookForTreasure_Item3008903(nItemId,sItemName)
end
tItem[3008904] = tItem[3008904] or {}
tItem[3008904]["Function"] = function(nItemId,sItemName)
	LookForTreasure_Item3008904(nItemId,sItemName)
end
tItem[3008905] = tItem[3008905] or {}
tItem[3008905]["Function"] = function(nItemId,sItemName)
	LookForTreasure_Item3008905(nItemId,sItemName)
end

tItem[3008905]["Text1-1"] = {111,112}
tItem[3008905]["tOption1-1"] = {1,2}
tItem[3008905]["Text111"] = tLookForTreasure_Text[3008905]["Text111"]
tItem[3008905]["Text112"] = tLookForTreasure_Text[3008905]["Text112"]
tItem[3008905]["Option1"] = tLookForTreasure_Text[3008905]["Option1"]
tItem[3008905]["Option2"] = tLookForTreasure_Text[3008905]["Option2"]
tItem[3008905]["OptionPoint1"] = "2-1"
tItem[3008905]["OptionPoint2"] = "2-2"

tItem[3008905]["Text2-1"] = {211}
tItem[3008905]["tOption2-1"] = {3}
tItem[3008905]["Text211"] = tLookForTreasure_Text[3008905]["Text211"]
tItem[3008905]["Option3"] = tLookForTreasure_Text[3008905]["Option3"]
tItem[3008905]["OptionFunc3"] = "LookForTreasure_Item3008905_1</N>3008905</N>1"

tItem[3008905]["Text2-2"] = {221}
tItem[3008905]["tOption2-2"] = {4}
tItem[3008905]["Text221"] = tLookForTreasure_Text[3008905]["Text221"]
tItem[3008905]["Option4"] = tLookForTreasure_Text[3008905]["Option4"]
tItem[3008905]["OptionFunc4"] = "LookForTreasure_Item3008905_1</N>3008905</N>7"

tItem[3008905]["Text3-1"] = {311}
tItem[3008905]["tOption3-1"] = {5}
tItem[3008905]["Text311"] = tLookForTreasure_Text[3008905]["Text311"]
tItem[3008905]["Option5"] = tLookForTreasure_Text[3008905]["Option5"]

tItem[3008905]["Text3-2"] = {321}
tItem[3008905]["tOption3-2"] = {6}
tItem[3008905]["Text322"] = tLookForTreasure_Text[3008905]["Text321"]
tItem[3008905]["Option6"] = tLookForTreasure_Text[3008905]["Option6"]

tItem[3008905]["Text3-3"] = {331}
tItem[3008905]["tOption3-3"] = {7}
tItem[3008905]["Text331"] = tLookForTreasure_Text[3008905]["Text331"]
tItem[3008905]["Option7"] = tLookForTreasure_Text[3008905]["Option7"]
tItem[3008905]["OptionFunc7"] = "LookForTreasure_Item3008905_2</N>3008905</N>1"

tOntimerMin_HM[0000] = tOntimerMin_HM[0000] or {}
table.insert(tOntimerMin_HM[0000],tLookForTreasure_Timechk)

tTrap[1415] = tTrap[1415] or {}
tTrap[1415]["Function"] = function()
	User_UserRandBoundTrans(1002,320,254,10,10)
end




