------------------------------------------------------------------------------------
--Name:		151110[简体征服][活动脚本]2016春节活动之欢天喜地办年货(2.03-2.07)
--Purpose:		2016年春节-大采购
--Creator:		许乐
--Created:		2015/11/10
------------------------------------------------------------------------------------
--掩码说明：
-- #stc(138,80)	== 0 表示没有接取任务
-- #					== 1 表示已接任务
-- #					== 2 表示已经从npc处拿到对应的年货
-- #					>= 3 表示已经完成此次任务
-- #stc(138,81)	记录玩家需要购买什么年货，记录的物品ID
-- #stc(138,82)	记录玩家讨价还价的次数
-- #stc(138,83)	记录年货的价格
------------------------------------------------------------------------------------
--npcid:			17296-17300
--itemtypeid:		3007635-3007638
--npctype:			3339-3343
--logid:				12000240
--stc:				13880-13883
------------------------------------------------------------------------------------
-- 命名规则
-- TheSpringFestival_Shopping_

----------------------------------常量表配置-------------------------------------------------------------
local tTheSpringFestival_Shopping_Cont = {}
	-- 时间
	tTheSpringFestival_Shopping_Cont["BeforeActivityTime"] = "2016-01-01 00:00 2017-01-22 23:59"
	tTheSpringFestival_Shopping_Cont["ActivityTime"] = "2017-01-23 00:00 2017-01-27 23:59"
	
	-- tTheSpringFestival_Shopping_Cont["BeforeActivityTime"] = "2015-01-01 00:00 2016-01-10 23:59"
	-- tTheSpringFestival_Shopping_Cont["ActivityTime"] = "2016-01-11 00:00 2016-02-07 23:59"

	-- 等级
	tTheSpringFestival_Shopping_Cont["Metempsychosis"] = 0
	tTheSpringFestival_Shopping_Cont["Level"] = 80
	--金币奖励
	tTheSpringFestival_Shopping_Cont["MoneyReward"] = 100000
	
--npc信息
local tTheSpringFestival_Shopping_Npc = {}
	tTheSpringFestival_Shopping_Npc["BoundCX"] = 3
	tTheSpringFestival_Shopping_Npc["BoundCY"]	= 3
	--概率
	tTheSpringFestival_Shopping_Npc["Sum"] = 4
	tTheSpringFestival_Shopping_Npc["Rand"] = 1
	--采购员包便宜
 	tTheSpringFestival_Shopping_Npc[17296] = {}
	tTheSpringFestival_Shopping_Npc[17296]["CellX"] = 282
	tTheSpringFestival_Shopping_Npc[17296]["CellY"] = 382
	tTheSpringFestival_Shopping_Npc[17296]["MapId"] = 1002
	tTheSpringFestival_Shopping_Npc[17296]["NpcId"] = 17296
	--阮小妹
	tTheSpringFestival_Shopping_Npc[3007635] = {}
	tTheSpringFestival_Shopping_Npc[3007635]["CellX"] = 179
	tTheSpringFestival_Shopping_Npc[3007635]["CellY"] = 266
	tTheSpringFestival_Shopping_Npc[3007635]["MapId"] = 1011
	tTheSpringFestival_Shopping_Npc[3007635]["NpcId"] = 17297
	--于大妈
	tTheSpringFestival_Shopping_Npc[3007636] = {}
	tTheSpringFestival_Shopping_Npc[3007636]["CellX"] = 551
	tTheSpringFestival_Shopping_Npc[3007636]["CellY"] = 564
	tTheSpringFestival_Shopping_Npc[3007636]["MapId"] = 1020
	tTheSpringFestival_Shopping_Npc[3007636]["NpcId"] = 17298
	--王大叔
	tTheSpringFestival_Shopping_Npc[3007637] = {}
	tTheSpringFestival_Shopping_Npc[3007637]["CellX"] = 506
	tTheSpringFestival_Shopping_Npc[3007637]["CellY"] = 640
	tTheSpringFestival_Shopping_Npc[3007637]["MapId"] = 1000
	tTheSpringFestival_Shopping_Npc[3007637]["NpcId"] = 17299
	--李小伙
	tTheSpringFestival_Shopping_Npc[3007638] = {}
	tTheSpringFestival_Shopping_Npc[3007638]["CellX"] = 726
	tTheSpringFestival_Shopping_Npc[3007638]["CellY"] = 561
	tTheSpringFestival_Shopping_Npc[3007638]["MapId"] = 1015
	tTheSpringFestival_Shopping_Npc[3007638]["NpcId"] = 17300
	
--相关物品
local tTheSpringFestival_Shopping_Item = {}
	tTheSpringFestival_Shopping_Item[1] = 3007635
	tTheSpringFestival_Shopping_Item[2] = 3007636
	tTheSpringFestival_Shopping_Item[3] = 3007637
	tTheSpringFestival_Shopping_Item[4] = 3007638
	tTheSpringFestival_Shopping_Item["BagSpace"] = 1
	
-- 掩码表
local tTheSpringFestival_Shopping_Stc = {}
	tTheSpringFestival_Shopping_Stc["Event_Type"] = 138
	tTheSpringFestival_Shopping_Stc["Data_Type"] = {}
	--== 0 表示没有接取任务   == 1 表示已接任务  == 2 表示已经从npc处拿到对应的年货   >= 3 表示已经完成此次任务
	tTheSpringFestival_Shopping_Stc["Data_Type"][1] = 80
	--记录玩家需要购买什么年货，记录的ID
	tTheSpringFestival_Shopping_Stc["Data_Type"][2] = 81
	--记录玩家讨价还价的次数
	tTheSpringFestival_Shopping_Stc["Data_Type"][3] = 82
	--记录年货的初始价格 10000
	tTheSpringFestival_Shopping_Stc["Data_Type"][4] = 83
	
	-- Stc任务掩码步骤
	tTheSpringFestival_Shopping_Stc["Accpect"] = 1
	tTheSpringFestival_Shopping_Stc["Ongoing"] = 2
	tTheSpringFestival_Shopping_Stc["Complete"] = 3

-- 砍价成功几率与砍价成功减少的钱
-- 不同物品砍价成功几率不同
local tTheSpringFestival_Shopping_RandMoney = {}
	tTheSpringFestival_Shopping_RandMoney["DelMoney"] = -100000
	tTheSpringFestival_Shopping_RandMoney["Sum"] = 10000
-- 糯米甜馃
	tTheSpringFestival_Shopping_RandMoney[3007635] = {}
	tTheSpringFestival_Shopping_RandMoney[3007635][1] = {3000,-30000,-1}
	tTheSpringFestival_Shopping_RandMoney[3007635][2] = {3000,-10000,1}
	tTheSpringFestival_Shopping_RandMoney[3007635][3] = {7500,-5000,0}
-- 什锦果盘
	tTheSpringFestival_Shopping_RandMoney[3007636] = {}
	tTheSpringFestival_Shopping_RandMoney[3007636][1] = {3000,-30000,-1}
	tTheSpringFestival_Shopping_RandMoney[3007636][2] = {4000,-10000,1}
	tTheSpringFestival_Shopping_RandMoney[3007636][3] = {4000,-5000,0}
-- 烟熏腊肉
	tTheSpringFestival_Shopping_RandMoney[3007637] = {}
	tTheSpringFestival_Shopping_RandMoney[3007637][1] = {8000,-30000,-1}
	tTheSpringFestival_Shopping_RandMoney[3007637][2] = {3000,-10000,1}
	tTheSpringFestival_Shopping_RandMoney[3007637][3] = {3000,-5000,0}
-- 新年爆竹
	tTheSpringFestival_Shopping_RandMoney[3007638] = {}
	tTheSpringFestival_Shopping_RandMoney[3007638][1] = {2000,-30000,-1}
	tTheSpringFestival_Shopping_RandMoney[3007638][2] = {2700,-10000,1}
	tTheSpringFestival_Shopping_RandMoney[3007638][3] = {5000,-5000,0}
	
-- 材料砍价次数
local tTheSpringFestival_Shopping_Times = {}
	tTheSpringFestival_Shopping_Times[3007635] = 5
	tTheSpringFestival_Shopping_Times[3007636] = 4
	tTheSpringFestival_Shopping_Times[3007637] = 3
	tTheSpringFestival_Shopping_Times[3007638] = 10
	
--对白索引
local tTheSpringFestival_Shopping_Dialog = {}
	tTheSpringFestival_Shopping_Dialog[1] = {"5-1","5-2","5-3","5-4"}
	tTheSpringFestival_Shopping_Dialog[2] = {"6-1","6-2","6-3","6-4"}
	tTheSpringFestival_Shopping_Dialog[3] = {"7-1","7-2","7-3","7-4"}	
	
-- 光效
local tTheSpringFestival_Shopping_Effect = {}
	tTheSpringFestival_Shopping_Effect[1] = "self"
	tTheSpringFestival_Shopping_Effect[2] = "angelwing"   --获得奖励
	
--log
local tTheSpringFestival_Shopping_Log = {}
	tTheSpringFestival_Shopping_Log["GetTask"] = "0,0,0,0,12000240,1[1],0,0"   		 --接到任务
	tTheSpringFestival_Shopping_Log["DelItem"] = "0,0,%d,1,12000240,2,0,0"			--过期删除物品
	tTheSpringFestival_Shopping_Log["GetItem"] = "0,0,1,%d,12000240,1[2],%d,1"		--砍价获得年货
	tTheSpringFestival_Shopping_Log["GetMoney"] = "0,0,%d,1,12000240,2,1,100000"	--获得金币奖励
	tTheSpringFestival_Shopping_Log["LogId"] = 12000240
	tTheSpringFestival_Shopping_Log["FestivalId"] = 3364

----------------------------------------------------------------------------------------------------
--玩家等级判断
function TheSpringFestival_Shopping_LevelJudgement()
	local nLevel = tTheSpringFestival_Shopping_Cont["Level"]
	local nMete = tTheSpringFestival_Shopping_Cont["Metempsychosis"]
	return User_JudgeLevelAndMetempsychosis(nLevel,nMete)
end

-- 完成掩码的判断与重置
function TheSpringFestival_Shopping_JudgeStc()
	local nEvent = tTheSpringFestival_Shopping_Stc["Event_Type"]
	local nType = tTheSpringFestival_Shopping_Stc["Data_Type"][1]
	local nUserData = Get_UserStatisticValue(nEvent,nType) or 0
	
	if nUserData < tTheSpringFestival_Shopping_Stc["Accpect"] then
		return true
	end
	
	if nUserData >= tTheSpringFestival_Shopping_Stc["Complete"] then
		if Task_StcInterval(nEvent,nType,1,4) then
			Task_SetStatistic(nEvent,nType,0,1,0)
			Task_SetStcTimestamp(nEvent,nType,0,0)		
			return true
		else
			return false
		end
	else
		return false
	end
end

--隔天设置掩码初始值
function TheSpringFestival_Shopping_SetInitData()
	local nEvent = tTheSpringFestival_Shopping_Stc["Event_Type"]
	for _,v in pairs(tTheSpringFestival_Shopping_Stc["Data_Type"]) do
		if Task_StcInterval(nEvent,v,1,4) then
			Task_SetStatistic(nEvent,v,0,1,0)
			Task_SetStcTimestamp(nEvent,v,0,0)
		end
	end
end

--传送到各城的年货npc处
function TheSpringFestival_Shopping_SendToNpc(nItemId)
	local nEvent = tTheSpringFestival_Shopping_Stc["Event_Type"]
	local nType = tTheSpringFestival_Shopping_Stc["Data_Type"][2]
	local nUserData = Get_UserStatisticValue(nEvent,nType) or 0
	if nUserData == nItemId then
		local nCellX = tTheSpringFestival_Shopping_Npc[nItemId]["CellX"]
		local nCellY = tTheSpringFestival_Shopping_Npc[nItemId]["CellY"]
		local nMapId = tTheSpringFestival_Shopping_Npc[nItemId]["MapId"]
		local nBoundCX = tTheSpringFestival_Shopping_Npc["BoundCX"]
		local nBoundCY = tTheSpringFestival_Shopping_Npc["BoundCY"]
		User_UserRandBoundTrans(nMapId,nCellX,nCellY,nBoundCX,nBoundCY,1,0)
	end
end

--传送回主npc处
function TheSpringFestival_Shopping_SendMainNpc()
	local nCellX = tTheSpringFestival_Shopping_Npc[17296]["CellX"]
	local nCellY = tTheSpringFestival_Shopping_Npc[17296]["CellY"]
	local nMapId = tTheSpringFestival_Shopping_Npc[17296]["MapId"]
	local nBoundCX = tTheSpringFestival_Shopping_Npc["BoundCX"]
	local nBoundCY = tTheSpringFestival_Shopping_Npc["BoundCY"]
	User_UserRandBoundTrans(nMapId,nCellX,nCellY,nBoundCX,nBoundCY,1,0)
end

--Option3:我来帮你吧   接受任务（接任务后消失）
function TheSpringFestival_Shopping_Accept(nNpcId)
	if not Sys_ChkFullTime(tTheSpringFestival_Shopping_Cont["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	
	if not TheSpringFestival_Shopping_LevelJudgement() then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	local nEvent = tTheSpringFestival_Shopping_Stc["Event_Type"]
	local nType = tTheSpringFestival_Shopping_Stc["Data_Type"][1]
	local nUserData = Get_UserStatisticValue(nEvent,nType) or 0
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)		
	end
	
	-- 当天已经完成
	if nUserData >= tTheSpringFestival_Shopping_Stc["Complete"] then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	--可以接任务
	if nUserData == 0 then
		Task_SetStatistic(nEvent,nType,tTheSpringFestival_Shopping_Stc["Accpect"],1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)		
		Sys_SaveActionFestivalLog(tTheSpringFestival_Shopping_Log["GetTask"])
		
		--随机一个地点
		local nSum = tTheSpringFestival_Shopping_Npc["Sum"]
		local nRand = tTheSpringFestival_Shopping_Npc["Rand"]
		local nNpcRand = math.random(nRand,nSum)
		local nItemId = tTheSpringFestival_Shopping_Item[nNpcRand]
		local nType2 = tTheSpringFestival_Shopping_Stc["Data_Type"][2]
		Task_SetStatistic(nEvent,nType2,nItemId,1,0)
		Task_SetStcTimestamp(nEvent,nType2,0,0)		
		
		local nTimes = tTheSpringFestival_Shopping_Times[nItemId]
		local nType3 = tTheSpringFestival_Shopping_Stc["Data_Type"][3]
		Task_SetStatistic(nEvent,nType3,nTimes,1,0)
		Task_SetStcTimestamp(nEvent,nType3,0,0)
		
		local nMoneyInit = math.abs(tTheSpringFestival_Shopping_RandMoney["DelMoney"])
		local nType4 = tTheSpringFestival_Shopping_Stc["Data_Type"][4]
		Task_SetStatistic(nEvent,nType4,nMoneyInit,1,0)
		Task_SetStcTimestamp(nEvent,nType4,0,0)
		
		local sItemName = tTheSpringFestival_Shopping_Text[nItemId]["ItemName"]
		local sNpcName = tTheSpringFestival_Shopping_Text[nItemId]["NpcName"]
		Sys_DialogText(string.format(tTheSpringFestival_Shopping_Text[nNpcId]["Text311"],sItemName,sNpcName))
		Sys_DialogOption(tTheSpringFestival_Shopping_Text[17296]["Option7"],"</F>NULL")
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
		
		Sys_MsgBox(tTheSpringFestival_Shopping_Text["Accept"],"TheSpringFestival_Shopping_SendToNpc</N>"..nItemId)
	end
end

--Option4:喏，年货给你  （接任务后可见）
function TheSpringFestival_Shopping_HandInItem(nNpcId)
	if not Sys_ChkFullTime(tTheSpringFestival_Shopping_Cont["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	
	if not TheSpringFestival_Shopping_LevelJudgement() then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	local nEvent = tTheSpringFestival_Shopping_Stc["Event_Type"]
	local nType = tTheSpringFestival_Shopping_Stc["Data_Type"][1]
	local nType2 = tTheSpringFestival_Shopping_Stc["Data_Type"][2]
	local nType3 = tTheSpringFestival_Shopping_Stc["Data_Type"][3]
	local nType4 = tTheSpringFestival_Shopping_Stc["Data_Type"][4]
	
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)
	
		Task_SetStatistic(nEvent,nType2,0,1,0)
		Task_SetStatistic(nEvent,nType3,0,1,0)
		Task_SetStatistic(nEvent,nType4,0,1,0)
		
		LinkNpcGossipFunc_New(nNpcId,"4-5")
		return
	end
	
	local nUserData = Get_UserStatisticValue(nEvent,nType) or 0
	
	-- 当天已经完成
	if nUserData >= tTheSpringFestival_Shopping_Stc["Complete"] then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	if nUserData ~= 0 then
		local nUserData2 = Get_UserStatisticValue(nEvent,nType2) or 0
		if Item_ChkItem(nUserData2) then
			local nBagMoneyNum = tTheSpringFestival_Shopping_Cont["MoneyReward"]
			if User_CanPutMoney2Bag(nBagMoneyNum) then
				if not User_CheckLeftSpace(tTheSpringFestival_Shopping_Item["BagSpace"]) then
					LinkNpcGossipFunc_New(nNpcId,"4-2")
					return
				end
				
				if Item_DelItem(nUserData2) then
					Task_SetStatistic(nEvent,nType,tTheSpringFestival_Shopping_Stc["Complete"],1,0)
					Task_SetStcTimestamp(nEvent,nType,0,0)
					User_AddMoney(nBagMoneyNum)
					Sys_SaveActionFestivalLog(string.format(tTheSpringFestival_Shopping_Log["GetMoney"],nUserData2))
					FestivalGeneralPackage_GetGift(tTheSpringFestival_Shopping_Log["FestivalId"],tTheSpringFestival_Shopping_Log["LogId"])
					LinkNpcGossipFunc_New(nNpcId,"4-4")
					User_EffectAdd(tTheSpringFestival_Shopping_Effect[1],tTheSpringFestival_Shopping_Effect[2])
					Task_SetStatistic(nEvent,nType2,0,1,0)
					User_TalkChannel2005(tTheSpringFestival_Shopping_Text["Compete"])
					return
				end
			else
				LinkNpcGossipFunc_New(nNpcId,"4-3")
				return
			end
		else
			--失败，没有年货
			LinkNpcGossipFunc_New(nNpcId,"4-1")
		end
		
		for _,v in pairs(tTheSpringFestival_Shopping_Item) do 
			if nUserData2 == v then
				local sItemName = tTheSpringFestival_Shopping_Text[v]["ItemName"]
				local sDialog = tTheSpringFestival_Shopping_Text[v]["Dialog"]
				Sys_MsgBox(string.format(tTheSpringFestival_Shopping_Text[17296]["Text461"],sItemName,sDialog),"TheSpringFestival_Shopping_SendToNpc</N>"..v)
			end
		end
	end
end

-- Option2:买了
function TheSpringFestival_Shopping_Buy(nNpcId,nItemId)
	if not Sys_ChkFullTime(tTheSpringFestival_Shopping_Cont["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	
	if not TheSpringFestival_Shopping_LevelJudgement() then
		User_TalkChannel2005(tTheSpringFestival_Shopping_Text["LevelTip"])
		return
	end
	
	local nEvent = tTheSpringFestival_Shopping_Stc["Event_Type"]
	local nType = tTheSpringFestival_Shopping_Stc["Data_Type"][1]
	local nType4 = tTheSpringFestival_Shopping_Stc["Data_Type"][4]
	
	local nMoneyInit = math.abs(tTheSpringFestival_Shopping_RandMoney["DelMoney"])
	local nBagMoneyNum = Get_UserStatisticValue(nEvent,nType4) or nMoneyInit
	local sItemName = tTheSpringFestival_Shopping_Text[nItemId]["ItemName"]
	
	if not Item_ChkItem(nItemId) then
		if User_CanPutMoney2Bag((-1)*nBagMoneyNum) then
			if not User_CheckLeftSpace(tTheSpringFestival_Shopping_Item["BagSpace"]) then
				Sys_MsgBox(tTheSpringFestival_Shopping_Text["NoSpace"])
				return
			end
			Task_SetStatistic(nEvent,nType,tTheSpringFestival_Shopping_Stc["Ongoing"],1,0)
			Item_AddItem(nItemId)
			User_AddMoney((-1)*nBagMoneyNum)
			Sys_SaveActionFestivalLog(string.format(tTheSpringFestival_Shopping_Log["GetItem"],nBagMoneyNum,nItemId))
			Sys_MsgBox((string.format(tTheSpringFestival_Shopping_Text["Success"],sItemName)),"TheSpringFestival_Shopping_SendMainNpc")
		else
			User_TalkChannel2005(tTheSpringFestival_Shopping_Text["NotHaveEnoughMoney"])
		end
	else
		Sys_MsgBox((string.format(tTheSpringFestival_Shopping_Text["HaveOne"],sItemName)),"TheSpringFestival_Shopping_SendMainNpc")
	end
end

--我要砍价
function TheSpringFestival_Shopping_CutPrice(nNpcId,nItemId,nChoose)
	if not Sys_ChkFullTime(tTheSpringFestival_Shopping_Cont["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	
	if not TheSpringFestival_Shopping_LevelJudgement() then
		User_TalkChannel2005(tTheSpringFestival_Shopping_Text["LevelTip"])
		return
	end
	
	local nSum = tTheSpringFestival_Shopping_RandMoney["Sum"]
	local nRand = tTheSpringFestival_Shopping_RandMoney[nItemId][nChoose][1]
	local nTimes = tTheSpringFestival_Shopping_Times[nItemId]
	local nDelTimes = tTheSpringFestival_Shopping_RandMoney[nItemId][nChoose][3]
	local nMoneyInit = math.abs(tTheSpringFestival_Shopping_RandMoney["DelMoney"])
	local nDelMoney = tTheSpringFestival_Shopping_RandMoney[nItemId][nChoose][2]
	
	local nEvent = tTheSpringFestival_Shopping_Stc["Event_Type"]
	local nType3 = tTheSpringFestival_Shopping_Stc["Data_Type"][3]
	local nType4 = tTheSpringFestival_Shopping_Stc["Data_Type"][4]
	
	local sItemName = tTheSpringFestival_Shopping_Text[nItemId]["ItemName"]
	if Item_ChkItem(nItemId) then
		Sys_MsgBox(string.format(tTheSpringFestival_Shopping_Text["HaveOne"],sItemName),"TheSpringFestival_Shopping_SendMainNpc")
		return
	end

	local sDialog = ""
	if Sys_Random(nRand,nSum) then
		--设置金币数
		if Task_ChkStcValue(nEvent,nType4,">",0) and Task_ChkStcValue(nEvent,nType3,">",0) then
			if Get_UserStatisticValue(nEvent,nType4) <= math.abs(nDelMoney) then
				Task_SetStatistic(nEvent,nType4,0,1,0)
			else
				Task_AddStatistic(nEvent,nType4,nDelMoney,1,0)
			end
		end
		
		--设置次数
		if Task_ChkStcValue(nEvent,nType3,">",0) then
			Task_AddStatistic(nEvent,nType3,nDelTimes,1,0)
		end
		
		--成功，砍价到价格为0
		if Task_ChkStcValue(nEvent,nType4,"<=",0) then
			sDialog = tTheSpringFestival_Shopping_Dialog[nChoose][4]
			LinkNpcGossipFunc_New(nNpcId,sDialog)
			return
		end

		--成功，砍价次数为0，但价格不为0
		if Task_ChkStcValue(nEvent,nType3,"<=",0) and Task_ChkStcValue(nEvent,nType4,">",0) then
			sDialog = tTheSpringFestival_Shopping_Dialog[nChoose][3]
			LinkNpcGossipFunc_New(nNpcId,sDialog)
			return
		end
		
		--成功，还能继续砍价
		sDialog = tTheSpringFestival_Shopping_Dialog[nChoose][2]
		LinkNpcGossipFunc_New(nNpcId,sDialog)
		return
	else
		--砍价次数为0，但价格不为0
		if Task_ChkStcValue(nEvent,nType3,"<=",0) and Task_ChkStcValue(nEvent,nType4,">",0) then
			sDialog = tTheSpringFestival_Shopping_Dialog[nChoose][3]
			LinkNpcGossipFunc_New(nNpcId,sDialog)
			return
		end
		
		--砍价到价格为0
		if Task_ChkStcValue(nEvent,nType4,"<=",0) then
			sDialog = tTheSpringFestival_Shopping_Dialog[nChoose][4]
			LinkNpcGossipFunc_New(nNpcId,sDialog)
			return
		end

		--失败
		Task_AddStatistic(nEvent,nType3,-1,1,0)
		sDialog = tTheSpringFestival_Shopping_Dialog[nChoose][1]
		LinkNpcGossipFunc_New(nNpcId,sDialog)
		return
	end
end

--判断是否显示 砍价选项  
--如果砍价到0或者砍价次数为0，则不显示继续砍价的选项
function TheSpringFestival_Shopping_IsShowCutPrice(nNum)
	TheSpringFestival_Shopping_SetInitData()
	local nEvent = tTheSpringFestival_Shopping_Stc["Event_Type"]
	local nType = tTheSpringFestival_Shopping_Stc["Data_Type"][2]
	local nUserData = Get_UserStatisticValue(nEvent,nType) or 0
    if Sys_ChkFullTime(tTheSpringFestival_Shopping_Cont["ActivityTime"]) and nUserData == tTheSpringFestival_Shopping_Item[nNum] then
		--钱数
		local nType1 = tTheSpringFestival_Shopping_Stc["Data_Type"][4]
		--次数
		local nType2 = tTheSpringFestival_Shopping_Stc["Data_Type"][3]

		local nMoney = math.abs(tTheSpringFestival_Shopping_RandMoney["DelMoney"])
		local nData1 = Get_UserStatisticValue(nEvent,nType1) or nMoney
		local nData2 = Get_UserStatisticValue(nEvent,nType2)
		
		if nData1 == 0 then
			return false
		elseif nData2 == 0 then
			return false
		else
			return true
		end
	else
		return false
	end
end

--------------------------------------物品使用逻辑------------------------------------------------------------
--在活动时间前 中 后  物品使用提示
function TheSpringFestival_Shopping_UseItem(nItemId,sItemName)
	if Sys_ChkFullTime(tTheSpringFestival_Shopping_Cont["ActivityTime"]) then
		User_TalkChannel2005(tTheSpringFestival_Shopping_Text["HandIn"])
		return
	elseif Sys_ChkFullTime(tTheSpringFestival_Shopping_Cont["BeforeActivityTime"]) then
		User_TalkChannel2005(tTheSpringFestival_Shopping_Text["NotInTime"])
		return
	else
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			if nItemId == tTheSpringFestival_Shopping_Item[4] then
				User_TalkChannel2005(tTheSpringFestival_Shopping_Text["OutTime_1"])
			else
				User_TalkChannel2005(string.format(tTheSpringFestival_Shopping_Text["OutTime"],sItemName))
			end
			Sys_SaveActionFestivalLog(string.format(tTheSpringFestival_Shopping_Log["DelItem"],nItemId))
		end
	end
end

--------------------------------------NPC 模版------------------------------------------------------------
-------------------- 17296   采购员包便宜    3339
tNpcFace[3339] = 34
tNpcGossip[17296] = tNpcGossip[17296] or DefaultNpc:new{}
tNpcGossip[17296]["OptionHidden"] = 1

tNpcGossip[17296]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[17296]["Text111"] = tTheSpringFestival_Shopping_Text[17296]["Text111"]
tNpcGossip[17296]["Text112"] = tTheSpringFestival_Shopping_Text[17296]["Text112"]
tNpcGossip[17296]["Text113"] = tTheSpringFestival_Shopping_Text[17296]["Text113"]
tNpcGossip[17296]["Text114"] = tTheSpringFestival_Shopping_Text[17296]["Text114"]
tNpcGossip[17296]["Text115"] = tTheSpringFestival_Shopping_Text[17296]["Text115"]
tNpcGossip[17296]["Text116"] = tTheSpringFestival_Shopping_Text[17296]["Text116"]
tNpcGossip[17296]["tOption1-1"] = {1}
tNpcGossip[17296]["ChkFunc1-1"]= function()
    return  Sys_ChkFullTime(tTheSpringFestival_Shopping_Cont["BeforeActivityTime"])
end
tNpcGossip[17296]["Option1"]  = tTheSpringFestival_Shopping_Text[17296]["Option1"]

-- 活动时间内
--等级不足
tNpcGossip[17296]["Text1-2"] = {121}
tNpcGossip[17296]["Text121"] = tTheSpringFestival_Shopping_Text[17296]["Text121"]
tNpcGossip[17296]["tOption1-2"] = {2}
tNpcGossip[17296]["ChkFunc1-2"]= function()
    return  Sys_ChkFullTime(tTheSpringFestival_Shopping_Cont["ActivityTime"]) and (not TheSpringFestival_Shopping_LevelJudgement())
end
tNpcGossip[17296]["Option2"]  = tTheSpringFestival_Shopping_Text[17296]["Option2"]

--等级满足
tNpcGossip[17296]["Text1-3"] = {131,132,133,134,135,136}
tNpcGossip[17296]["Text131"] = tTheSpringFestival_Shopping_Text[17296]["Text131"]
tNpcGossip[17296]["Text132"] = tTheSpringFestival_Shopping_Text[17296]["Text132"]
tNpcGossip[17296]["Text133"] = tTheSpringFestival_Shopping_Text[17296]["Text133"]
tNpcGossip[17296]["Text134"] = tTheSpringFestival_Shopping_Text[17296]["Text134"]
tNpcGossip[17296]["Text135"] = tTheSpringFestival_Shopping_Text[17296]["Text135"]
tNpcGossip[17296]["Text136"] = tTheSpringFestival_Shopping_Text[17296]["Text136"]
tNpcGossip[17296]["tOption1-3"] = {3,4,5,6}
tNpcGossip[17296]["ChkFunc1-3"]= function()
    return  Sys_ChkFullTime(tTheSpringFestival_Shopping_Cont["ActivityTime"]) and TheSpringFestival_Shopping_LevelJudgement()
end

tNpcGossip[17296]["Option3"]  = tTheSpringFestival_Shopping_Text[17296]["Option3"]
tNpcGossip[17296]["OptionFunc3"]="TheSpringFestival_Shopping_Accept</N>17296"
tNpcGossip[17296]["OptionChkFunc3"] = function ()
	return Sys_ChkFullTime(tTheSpringFestival_Shopping_Cont["ActivityTime"]) and TheSpringFestival_Shopping_JudgeStc()
end
tNpcGossip[17296]["Option4"]  = tTheSpringFestival_Shopping_Text[17296]["Option4"]
tNpcGossip[17296]["OptionFunc4"]="TheSpringFestival_Shopping_HandInItem</N>17296"
tNpcGossip[17296]["OptionChkFunc4"] = function ()
	local nEvent = tTheSpringFestival_Shopping_Stc["Event_Type"]
	local nType = tTheSpringFestival_Shopping_Stc["Data_Type"][1]
	local nUserData = Get_UserStatisticValue(nEvent,nType) or 0
	if Sys_ChkFullTime(tTheSpringFestival_Shopping_Cont["ActivityTime"]) and (nUserData == tTheSpringFestival_Shopping_Stc["Accpect"] or nUserData == tTheSpringFestival_Shopping_Stc["Ongoing"]) then
		return true
	else
		return false
	end
end
tNpcGossip[17296]["Option5"]  = tTheSpringFestival_Shopping_Text[17296]["Option5"]
tNpcGossip[17296]["OptionPoint5"]="5-1"
tNpcGossip[17296]["OptionChkFunc5"] = function ()
	return Sys_ChkFullTime(tTheSpringFestival_Shopping_Cont["ActivityTime"])
end
tNpcGossip[17296]["Option6"]  = tTheSpringFestival_Shopping_Text[17296]["Option6"]

-- 活动时间后
tNpcGossip[17296]["Text1-4"] = {141,142}
tNpcGossip[17296]["Text141"] = tTheSpringFestival_Shopping_Text[17296]["Text141"]
tNpcGossip[17296]["Text142"] = tTheSpringFestival_Shopping_Text[17296]["Text142"]
tNpcGossip[17296]["tOption1-4"] = {7}
tNpcGossip[17296]["Option7"]  = tTheSpringFestival_Shopping_Text[17296]["Option7"]

--Option3:我来帮你吧。
--成功
tNpcGossip[17296]["Text3-1"] = {311}
tNpcGossip[17296]["Text311"] = tTheSpringFestival_Shopping_Text[17296]["Text311"]
tNpcGossip[17296]["tOption3-1"] = {7}

-- 当天已经完成
tNpcGossip[17296]["Text3-2"] = {311}
tNpcGossip[17296]["Text321"] = tTheSpringFestival_Shopping_Text[17296]["Text321"]
tNpcGossip[17296]["tOption3-2"] = {8}
tNpcGossip[17296]["Option8"]  = tTheSpringFestival_Shopping_Text[17296]["Option8"]

--Option4:喏，年货给你。
--失败，没有年货
tNpcGossip[17296]["Text4-1"] = {411}
tNpcGossip[17296]["Text411"] = tTheSpringFestival_Shopping_Text[17296]["Text411"]
tNpcGossip[17296]["tOption4-1"] = {7}
--失败，背包空间不足
tNpcGossip[17296]["Text4-2"] = {421}
tNpcGossip[17296]["Text421"] = tTheSpringFestival_Shopping_Text[17296]["Text421"]
tNpcGossip[17296]["tOption4-2"] = {8}
--失败，背包中银两已满
tNpcGossip[17296]["Text4-3"] = {431}
tNpcGossip[17296]["Text431"] = tTheSpringFestival_Shopping_Text[17296]["Text431"]
tNpcGossip[17296]["tOption4-3"] = {8}
--成功
tNpcGossip[17296]["Text4-4"] = {441}
tNpcGossip[17296]["Text441"] = tTheSpringFestival_Shopping_Text[17296]["Text441"]
tNpcGossip[17296]["tOption4-4"] = {9}
tNpcGossip[17296]["Option9"]  = tTheSpringFestival_Shopping_Text[17296]["Option9"]
--未接任务
tNpcGossip[17296]["Text4-5"] = {451}
tNpcGossip[17296]["Text451"] = tTheSpringFestival_Shopping_Text[17296]["Text451"]
tNpcGossip[17296]["tOption4-5"] = {8}
--提示玩家应该去哪儿购买年货
tNpcGossip[17296]["Text4-6"] = {461}
tNpcGossip[17296]["Text461"] = tTheSpringFestival_Shopping_Text[17296]["Text461"]
tNpcGossip[17296]["tOption4-6"] = {18,19}
tNpcGossip[17296]["Option18"]  = tTheSpringFestival_Shopping_Text[17296]["Option18"]
tNpcGossip[17296]["Option19"]  = tTheSpringFestival_Shopping_Text[17296]["Option19"]

--Option5:了解活动详情。
tNpcGossip[17296]["Text5-1"] = {511,512}
tNpcGossip[17296]["Text511"] = tTheSpringFestival_Shopping_Text[17296]["Text511"]
tNpcGossip[17296]["Text512"] = tTheSpringFestival_Shopping_Text[17296]["Text512"]
tNpcGossip[17296]["tOption5-1"] = {10,11,12,13,14,15}
tNpcGossip[17296]["Option10"]  = tTheSpringFestival_Shopping_Text[17296]["Option10"]
tNpcGossip[17296]["OptionPoint10"]="10-1"
tNpcGossip[17296]["Option11"]  = tTheSpringFestival_Shopping_Text[17296]["Option11"]
tNpcGossip[17296]["OptionPoint11"]="11-1"
tNpcGossip[17296]["Option12"]  = tTheSpringFestival_Shopping_Text[17296]["Option12"]
tNpcGossip[17296]["OptionPoint12"]="12-1"
tNpcGossip[17296]["Option13"]  = tTheSpringFestival_Shopping_Text[17296]["Option13"]
tNpcGossip[17296]["OptionPoint13"]="13-1"
tNpcGossip[17296]["Option14"]  = tTheSpringFestival_Shopping_Text[17296]["Option14"]
tNpcGossip[17296]["OptionPoint14"]="14-1"
tNpcGossip[17296]["Option15"]  = tTheSpringFestival_Shopping_Text[17296]["Option15"]
tNpcGossip[17296]["OptionPoint15"]="1-3"

--Option10:买年货要注意什么？
tNpcGossip[17296]["Text10-1"] = {1011,1012}
tNpcGossip[17296]["Text1011"] = tTheSpringFestival_Shopping_Text[17296]["Text1011"]
tNpcGossip[17296]["Text1012"] = tTheSpringFestival_Shopping_Text[17296]["Text1012"]
tNpcGossip[17296]["tOption10-1"] = {16,17}
tNpcGossip[17296]["Option16"]  = tTheSpringFestival_Shopping_Text[17296]["Option16"]
tNpcGossip[17296]["OptionPoint16"]="5-1"
tNpcGossip[17296]["Option17"]  = tTheSpringFestival_Shopping_Text[17296]["Option17"]

-- Option11:去哪里买糯米甜粿？
tNpcGossip[17296]["Text11-1"] = {1111,1112}
tNpcGossip[17296]["Text1111"] = tTheSpringFestival_Shopping_Text[17296]["Text1111"]
tNpcGossip[17296]["Text1112"] = tTheSpringFestival_Shopping_Text[17296]["Text1112"]
tNpcGossip[17296]["tOption11-1"] = {16,17}

-- Option12:去哪里买什锦果盘？
tNpcGossip[17296]["Text12-1"] = {1211,1212}
tNpcGossip[17296]["Text1211"] = tTheSpringFestival_Shopping_Text[17296]["Text1211"]
tNpcGossip[17296]["Text1212"] = tTheSpringFestival_Shopping_Text[17296]["Text1212"]
tNpcGossip[17296]["tOption12-1"] = {16,17}

-- Option13:去哪里买烟熏腊肉？
tNpcGossip[17296]["Text13-1"] = {1311,1312}
tNpcGossip[17296]["Text1311"] = tTheSpringFestival_Shopping_Text[17296]["Text1311"]
tNpcGossip[17296]["Text1312"] = tTheSpringFestival_Shopping_Text[17296]["Text1312"]
tNpcGossip[17296]["tOption13-1"] = {16,17}

-- Option14:去哪里买新年爆竹？
tNpcGossip[17296]["Text14-1"] = {1411,1412}
tNpcGossip[17296]["Text1411"] = tTheSpringFestival_Shopping_Text[17296]["Text1411"]
tNpcGossip[17296]["Text1412"] = tTheSpringFestival_Shopping_Text[17296]["Text1412"]
tNpcGossip[17296]["tOption14-1"] = {16,17}

--------------------- 17297   阮小妹          3340
tNpcFace[3340] = 1
tNpcGossip[17297] = tNpcGossip[17297] or DefaultNpc:new{}
tNpcGossip[17297]["OptionHidden"] = 1

tNpcGossip[17297]["Text1-1"] = {111,112}
tNpcGossip[17297]["Text111"] = tTheSpringFestival_Shopping_Text[17297]["Text111"]
tNpcGossip[17297]["Text112"] = tTheSpringFestival_Shopping_Text[17297]["Text112"]
tNpcGossip[17297]["tOption1-1"] = {1}
tNpcGossip[17297]["ChkFunc1-1"]= function()
	TheSpringFestival_Shopping_SetInitData()
	local nEvent = tTheSpringFestival_Shopping_Stc["Event_Type"]
	local nType = tTheSpringFestival_Shopping_Stc["Data_Type"][2]
	local nUserData = Get_UserStatisticValue(nEvent,nType) or 0
    if (not Sys_ChkFullTime(tTheSpringFestival_Shopping_Cont["ActivityTime"])) or nUserData ~= tTheSpringFestival_Shopping_Item[1] then
		return true
	else
		return false
	end
end
tNpcGossip[17297]["Option1"]  = tTheSpringFestival_Shopping_Text[17297]["Option1"]

-- 活动时间内
tNpcGossip[17297]["Text1-2"] = {121,122}
tNpcGossip[17297]["Text121"] = tTheSpringFestival_Shopping_Text[17297]["Text121"]
tNpcGossip[17297]["Text122"] = tTheSpringFestival_Shopping_Text[17297]["Text122"]
tNpcGossip[17297]["tOption1-2"] = {2,3,4}
tNpcGossip[17297]["ChkFunc1-2"]= function()
	TheSpringFestival_Shopping_SetInitData()
	local nEvent = tTheSpringFestival_Shopping_Stc["Event_Type"]
	local nType = tTheSpringFestival_Shopping_Stc["Data_Type"][2]
	local nUserData = Get_UserStatisticValue(nEvent,nType) or 0
    if Sys_ChkFullTime(tTheSpringFestival_Shopping_Cont["ActivityTime"]) and nUserData == tTheSpringFestival_Shopping_Item[1] then
		local nType1 = tTheSpringFestival_Shopping_Stc["Data_Type"][4]
		local nMoney = math.abs(tTheSpringFestival_Shopping_RandMoney["DelMoney"])
		local nData = Get_UserStatisticValue(nEvent,nType1) or nMoney
		tNpcGossip[17297]["Text121"] = tTheSpringFestival_Shopping_Text[17297]["Text121"]
		if nData == 0 then
			tNpcGossip[17297]["Text122"] = tTheSpringFestival_Shopping_Text[17297]["Text123"]
		else
			tNpcGossip[17297]["Text122"] = string.format(tTheSpringFestival_Shopping_Text[17297]["Text122"],nData)
		end
		return true
	else
		return false
	end
end
tNpcGossip[17297]["Option2"]  = tTheSpringFestival_Shopping_Text[17297]["Option2"]
tNpcGossip[17297]["OptionFunc2"]="TheSpringFestival_Shopping_Buy</N>17297</N>3007635"
tNpcGossip[17297]["Option3"]  = tTheSpringFestival_Shopping_Text[17297]["Option3"]
tNpcGossip[17297]["OptionPoint3"]="3-1"
tNpcGossip[17297]["OptionChkFunc3"]= function()
	local nItem = 1
	return TheSpringFestival_Shopping_IsShowCutPrice(nItem)
end
tNpcGossip[17297]["Option4"]  = tTheSpringFestival_Shopping_Text[17297]["Option4"]

-- Option3:我要砍价
tNpcGossip[17297]["Text3-1"] = {311,312}
tNpcGossip[17297]["Text311"] = tTheSpringFestival_Shopping_Text[17297]["Text311"]
tNpcGossip[17297]["Text312"] = tTheSpringFestival_Shopping_Text[17297]["Text312"]
tNpcGossip[17297]["tOption3-1"] = {5,6,7,8}

tNpcGossip[17297]["Option5"]  = tTheSpringFestival_Shopping_Text[17297]["Option5"]
tNpcGossip[17297]["OptionFunc5"]="TheSpringFestival_Shopping_CutPrice</N>17297</N>3007635</N>1"
tNpcGossip[17297]["Option6"]  = tTheSpringFestival_Shopping_Text[17297]["Option6"]
tNpcGossip[17297]["OptionFunc6"]="TheSpringFestival_Shopping_CutPrice</N>17297</N>3007635</N>2"
tNpcGossip[17297]["Option7"]  = tTheSpringFestival_Shopping_Text[17297]["Option7"]
tNpcGossip[17297]["OptionFunc7"]="TheSpringFestival_Shopping_CutPrice</N>17297</N>3007635</N>3"
tNpcGossip[17297]["Option8"]  = tTheSpringFestival_Shopping_Text[17297]["Option8"]

-- Option5:太贵啦，便宜点儿吧！
-- 失败
tNpcGossip[17297]["Text5-1"] = {511}
tNpcGossip[17297]["Text511"] = tTheSpringFestival_Shopping_Text[17297]["Text511"]
tNpcGossip[17297]["tOption5-1"] = {9}
tNpcGossip[17297]["ChkFunc5-1"]= function()
	local nEvent = tTheSpringFestival_Shopping_Stc["Event_Type"]
	local nType = tTheSpringFestival_Shopping_Stc["Data_Type"][4]
	local nMoney = math.abs(tTheSpringFestival_Shopping_RandMoney["DelMoney"])
	local nData = Get_UserStatisticValue(nEvent,nType) or nMoney
	tNpcGossip[17297]["Text511"] = string.format(tTheSpringFestival_Shopping_Text[17297]["Text511"],nData)
	return true
end
tNpcGossip[17297]["Option9"]  = tTheSpringFestival_Shopping_Text[17297]["Option9"]
--成功，还能继续砍价
tNpcGossip[17297]["Text5-2"] = {521}
tNpcGossip[17297]["Text521"] = tTheSpringFestival_Shopping_Text[17297]["Text521"]
tNpcGossip[17297]["tOption5-2"] = {10,11,12}
tNpcGossip[17297]["ChkFunc5-2"]= function()
	local nEvent = tTheSpringFestival_Shopping_Stc["Event_Type"]
	local nType = tTheSpringFestival_Shopping_Stc["Data_Type"][4]
	local nMoney = math.abs(tTheSpringFestival_Shopping_RandMoney["DelMoney"])
	local nData = Get_UserStatisticValue(nEvent,nType) or nMoney
	tNpcGossip[17297]["Text521"] = string.format(tTheSpringFestival_Shopping_Text[17297]["Text521"],nData)
	return true
end
tNpcGossip[17297]["Option10"]  = tTheSpringFestival_Shopping_Text[17297]["Option10"]
tNpcGossip[17297]["OptionFunc10"]="TheSpringFestival_Shopping_Buy</N>17297</N>3007635"
tNpcGossip[17297]["Option11"]  = tTheSpringFestival_Shopping_Text[17297]["Option11"]
tNpcGossip[17297]["OptionPoint11"]="3-1"
tNpcGossip[17297]["OptionChkFunc11"]= function()
	local nItem = 1
	return TheSpringFestival_Shopping_IsShowCutPrice(nItem)
end
tNpcGossip[17297]["Option12"]  = tTheSpringFestival_Shopping_Text[17297]["Option12"]
--成功，砍价次数为0，但价格不为0
tNpcGossip[17297]["Text5-3"] = {531}
tNpcGossip[17297]["Text531"] = tTheSpringFestival_Shopping_Text[17297]["Text531"]
tNpcGossip[17297]["tOption5-3"] = {10,12}
tNpcGossip[17297]["ChkFunc5-3"]= function()
	local nEvent = tTheSpringFestival_Shopping_Stc["Event_Type"]
	local nType = tTheSpringFestival_Shopping_Stc["Data_Type"][4]
	local nMoney = math.abs(tTheSpringFestival_Shopping_RandMoney["DelMoney"])
	local nData = Get_UserStatisticValue(nEvent,nType) or nMoney
	tNpcGossip[17297]["Text531"] = string.format(tTheSpringFestival_Shopping_Text[17297]["Text531"],nData)
	return true
end
--成功，砍价到价格为0
tNpcGossip[17297]["Text5-4"] = {541}
tNpcGossip[17297]["Text541"] = tTheSpringFestival_Shopping_Text[17297]["Text541"]
tNpcGossip[17297]["tOption5-4"] = {13,12}
tNpcGossip[17297]["Option13"]  = tTheSpringFestival_Shopping_Text[17297]["Option13"]
tNpcGossip[17297]["OptionFunc13"]="TheSpringFestival_Shopping_Buy</N>17297</N>3007635"

-- Option6:我一闻就知道糖放多了。
--失败
tNpcGossip[17297]["Text6-1"] = {611}
tNpcGossip[17297]["Text611"] = tTheSpringFestival_Shopping_Text[17297]["Text611"]
tNpcGossip[17297]["tOption6-1"] = {14}
tNpcGossip[17297]["Option14"]  = tTheSpringFestival_Shopping_Text[17297]["Option14"]
--成功，还能继续砍价
tNpcGossip[17297]["Text6-2"] = {621}
tNpcGossip[17297]["Text621"] = tTheSpringFestival_Shopping_Text[17297]["Text621"]
tNpcGossip[17297]["tOption6-2"] = {15,16,17}
tNpcGossip[17297]["ChkFunc6-2"]= function()
	local nEvent = tTheSpringFestival_Shopping_Stc["Event_Type"]
	local nType = tTheSpringFestival_Shopping_Stc["Data_Type"][4]
	local nMoney = math.abs(tTheSpringFestival_Shopping_RandMoney["DelMoney"])
	local nData = Get_UserStatisticValue(nEvent,nType) or nMoney
	tNpcGossip[17297]["Text621"] = string.format(tTheSpringFestival_Shopping_Text[17297]["Text621"],nData)
	return true
end
tNpcGossip[17297]["Option15"]  = tTheSpringFestival_Shopping_Text[17297]["Option15"]
tNpcGossip[17297]["OptionFunc15"]="TheSpringFestival_Shopping_Buy</N>17297</N>3007635"
tNpcGossip[17297]["Option16"]  = tTheSpringFestival_Shopping_Text[17297]["Option16"]
tNpcGossip[17297]["OptionPoint16"]="3-1"
tNpcGossip[17297]["OptionChkFunc16"]= function()
	local nItem = 1
	return TheSpringFestival_Shopping_IsShowCutPrice(nItem)
end
tNpcGossip[17297]["Option17"]  = tTheSpringFestival_Shopping_Text[17297]["Option17"]
--成功，砍价次数为0，但价格不为0
tNpcGossip[17297]["Text6-3"] = {631}
tNpcGossip[17297]["Text631"] = tTheSpringFestival_Shopping_Text[17297]["Text631"]
tNpcGossip[17297]["tOption6-3"] = {18,17}
tNpcGossip[17297]["ChkFunc6-3"]= function()
	local nEvent = tTheSpringFestival_Shopping_Stc["Event_Type"]
	local nType = tTheSpringFestival_Shopping_Stc["Data_Type"][4]
	local nMoney = math.abs(tTheSpringFestival_Shopping_RandMoney["DelMoney"])
	local nData = Get_UserStatisticValue(nEvent,nType) or nMoney
	tNpcGossip[17297]["Text631"] = string.format(tTheSpringFestival_Shopping_Text[17297]["Text631"],nData)
	return true
end
tNpcGossip[17297]["Option18"]  = tTheSpringFestival_Shopping_Text[17297]["Option18"]
tNpcGossip[17297]["OptionFunc18"]="TheSpringFestival_Shopping_Buy</N>17297</N>3007635"
--成功，砍价到价格为0
tNpcGossip[17297]["Text6-4"] = {641}
tNpcGossip[17297]["Text641"] = tTheSpringFestival_Shopping_Text[17297]["Text641"]
tNpcGossip[17297]["tOption6-4"] = {19,17}
tNpcGossip[17297]["Option19"]  = tTheSpringFestival_Shopping_Text[17297]["Option19"]
tNpcGossip[17297]["OptionFunc19"]="TheSpringFestival_Shopping_Buy</N>17297</N>3007635"

-- Option7:我剩的钱不多了……
--失败
tNpcGossip[17297]["Text7-1"] = {711}
tNpcGossip[17297]["Text711"] = tTheSpringFestival_Shopping_Text[17297]["Text711"]
tNpcGossip[17297]["tOption7-1"] = {20}
tNpcGossip[17297]["Option20"]  = tTheSpringFestival_Shopping_Text[17297]["Option20"]
--成功，还能继续砍价
tNpcGossip[17297]["Text7-2"] = {721}
tNpcGossip[17297]["Text721"] = tTheSpringFestival_Shopping_Text[17297]["Text721"]
tNpcGossip[17297]["tOption7-2"] = {21,22,23}
tNpcGossip[17297]["ChkFunc7-2"]= function()
	local nEvent = tTheSpringFestival_Shopping_Stc["Event_Type"]
	local nType = tTheSpringFestival_Shopping_Stc["Data_Type"][4]
	local nMoney = math.abs(tTheSpringFestival_Shopping_RandMoney["DelMoney"])
	local nData = Get_UserStatisticValue(nEvent,nType) or nMoney
	tNpcGossip[17297]["Text721"] = string.format(tTheSpringFestival_Shopping_Text[17297]["Text721"],nData)
	return true
end
tNpcGossip[17297]["Option21"]  = tTheSpringFestival_Shopping_Text[17297]["Option21"]
tNpcGossip[17297]["OptionFunc21"]="TheSpringFestival_Shopping_Buy</N>17297</N>3007635"
tNpcGossip[17297]["Option22"]  = tTheSpringFestival_Shopping_Text[17297]["Option22"]
tNpcGossip[17297]["OptionPoint22"]="3-1"
tNpcGossip[17297]["OptionChkFunc22"]= function()
	local nItem = 1
	return TheSpringFestival_Shopping_IsShowCutPrice(nItem)
end
tNpcGossip[17297]["Option23"]  = tTheSpringFestival_Shopping_Text[17297]["Option23"]
--成功，砍价次数为0，但价格不为0
tNpcGossip[17297]["Text7-3"] = {731}
tNpcGossip[17297]["Text731"] = tTheSpringFestival_Shopping_Text[17297]["Text731"]
tNpcGossip[17297]["tOption7-3"] = {24,23}
tNpcGossip[17297]["ChkFunc7-3"]= function()
	local nEvent = tTheSpringFestival_Shopping_Stc["Event_Type"]
	local nType = tTheSpringFestival_Shopping_Stc["Data_Type"][4]
	local nMoney = math.abs(tTheSpringFestival_Shopping_RandMoney["DelMoney"])
	local nData = Get_UserStatisticValue(nEvent,nType) or nMoney
	tNpcGossip[17297]["Text731"] = string.format(tTheSpringFestival_Shopping_Text[17297]["Text731"],nData)
	return true
end
tNpcGossip[17297]["Option24"]  = tTheSpringFestival_Shopping_Text[17297]["Option24"]
tNpcGossip[17297]["OptionFunc24"]="TheSpringFestival_Shopping_Buy</N>17297</N>3007635"
--成功，砍价到价格为0
tNpcGossip[17297]["Text7-4"] = {741}
tNpcGossip[17297]["Text741"] = tTheSpringFestival_Shopping_Text[17297]["Text741"]
tNpcGossip[17297]["tOption7-4"] = {25,23}
tNpcGossip[17297]["Option25"]  = tTheSpringFestival_Shopping_Text[17297]["Option25"]
tNpcGossip[17297]["OptionFunc25"]="TheSpringFestival_Shopping_Buy</N>17297</N>3007635"

--------------------- 17298	于大妈  3341
tNpcFace[3341] = 3
tNpcGossip[17298] = tNpcGossip[17298] or DefaultNpc:new{}
tNpcGossip[17298]["OptionHidden"] = 1

tNpcGossip[17298]["Text1-1"] = {111,112}
tNpcGossip[17298]["Text111"] = tTheSpringFestival_Shopping_Text[17298]["Text111"]
tNpcGossip[17298]["Text112"] = tTheSpringFestival_Shopping_Text[17298]["Text112"]
tNpcGossip[17298]["tOption1-1"] = {1}
tNpcGossip[17298]["ChkFunc1-1"]= function()
	TheSpringFestival_Shopping_SetInitData()
	local nEvent = tTheSpringFestival_Shopping_Stc["Event_Type"]
	local nType = tTheSpringFestival_Shopping_Stc["Data_Type"][2]
	local nUserData = Get_UserStatisticValue(nEvent,nType) or 0
    if (not Sys_ChkFullTime(tTheSpringFestival_Shopping_Cont["ActivityTime"])) or nUserData ~= tTheSpringFestival_Shopping_Item[2] then
		return true
	else
		return false
	end
end
tNpcGossip[17298]["Option1"]  = tTheSpringFestival_Shopping_Text[17298]["Option1"]

-- 活动时间内
tNpcGossip[17298]["Text1-2"] = {121,122}
tNpcGossip[17298]["Text121"] = tTheSpringFestival_Shopping_Text[17298]["Text121"]
tNpcGossip[17298]["Text122"] = tTheSpringFestival_Shopping_Text[17298]["Text122"]
tNpcGossip[17298]["tOption1-2"] = {2,3,4}
tNpcGossip[17298]["ChkFunc1-2"]= function()
	TheSpringFestival_Shopping_SetInitData()
	local nEvent = tTheSpringFestival_Shopping_Stc["Event_Type"]
	local nType = tTheSpringFestival_Shopping_Stc["Data_Type"][2]
	local nUserData = Get_UserStatisticValue(nEvent,nType) or 0
    if Sys_ChkFullTime(tTheSpringFestival_Shopping_Cont["ActivityTime"]) and nUserData == tTheSpringFestival_Shopping_Item[2] then
		local nType1 = tTheSpringFestival_Shopping_Stc["Data_Type"][4]
		local nMoney = math.abs(tTheSpringFestival_Shopping_RandMoney["DelMoney"])
		local nData = Get_UserStatisticValue(nEvent,nType1) or nMoney
		tNpcGossip[17298]["Text121"] = tTheSpringFestival_Shopping_Text[17298]["Text121"]
		if nData == 0 then
			tNpcGossip[17298]["Text122"] = tTheSpringFestival_Shopping_Text[17298]["Text123"]
		else
			tNpcGossip[17298]["Text122"] = string.format(tTheSpringFestival_Shopping_Text[17298]["Text122"],nData)
		end
		return true
	else
		return false
	end
end
tNpcGossip[17298]["Option2"]  = tTheSpringFestival_Shopping_Text[17298]["Option2"]
tNpcGossip[17298]["OptionFunc2"]="TheSpringFestival_Shopping_Buy</N>17298</N>3007636"
tNpcGossip[17298]["Option3"]  = tTheSpringFestival_Shopping_Text[17298]["Option3"]
tNpcGossip[17298]["OptionPoint3"]="3-1"
tNpcGossip[17298]["OptionChkFunc3"]= function()
	local nItem = 2
	return TheSpringFestival_Shopping_IsShowCutPrice(nItem)
end
tNpcGossip[17298]["Option4"]  = tTheSpringFestival_Shopping_Text[17298]["Option4"]

-- Option3:我要砍价
tNpcGossip[17298]["Text3-1"] = {311,312}
tNpcGossip[17298]["Text311"] = tTheSpringFestival_Shopping_Text[17298]["Text311"]
tNpcGossip[17298]["Text312"] = tTheSpringFestival_Shopping_Text[17298]["Text312"]
tNpcGossip[17298]["tOption3-1"] = {5,6,7,8}
tNpcGossip[17298]["ChkFunc3-1"]= function()
	local nEvent = tTheSpringFestival_Shopping_Stc["Event_Type"]
	local nType = tTheSpringFestival_Shopping_Stc["Data_Type"][4]
	local nMoney = math.abs(tTheSpringFestival_Shopping_RandMoney["DelMoney"])
	local nData = Get_UserStatisticValue(nEvent,nType) or nMoney
	tNpcGossip[17298]["Text311"] = tTheSpringFestival_Shopping_Text[17298]["Text311"]
	tNpcGossip[17298]["Text312"] = string.format(tTheSpringFestival_Shopping_Text[17298]["Text312"],nData)
	return true
end
tNpcGossip[17298]["Option5"]  = tTheSpringFestival_Shopping_Text[17298]["Option5"]
tNpcGossip[17298]["OptionFunc5"]="TheSpringFestival_Shopping_CutPrice</N>17298</N>3007636</N>1"
tNpcGossip[17298]["Option6"]  = tTheSpringFestival_Shopping_Text[17298]["Option6"]
tNpcGossip[17298]["OptionFunc6"]="TheSpringFestival_Shopping_CutPrice</N>17298</N>3007636</N>2"
tNpcGossip[17298]["Option7"]  = tTheSpringFestival_Shopping_Text[17298]["Option7"]
tNpcGossip[17298]["OptionFunc7"]="TheSpringFestival_Shopping_CutPrice</N>17298</N>3007636</N>3"
tNpcGossip[17298]["OptionChkFunc7"]= function()
	local nEvent = tTheSpringFestival_Shopping_Stc["Event_Type"]
	local nType = tTheSpringFestival_Shopping_Stc["Data_Type"][4]
	local nMoney = math.abs(tTheSpringFestival_Shopping_RandMoney["DelMoney"])
	local nData = Get_UserStatisticValue(nEvent,nType) or nMoney
	tNpcGossip[17298]["Option7"]  = string.format(tTheSpringFestival_Shopping_Text[17298]["Option7"],nData)
	return true
end
tNpcGossip[17298]["Option8"]  = tTheSpringFestival_Shopping_Text[17298]["Option8"]

-- Option5:不、不，实在太贵了！
-- 失败
tNpcGossip[17298]["Text5-1"] = {511}
tNpcGossip[17298]["Text511"] = tTheSpringFestival_Shopping_Text[17298]["Text511"]
tNpcGossip[17298]["tOption5-1"] = {9}
tNpcGossip[17298]["Option9"]  = tTheSpringFestival_Shopping_Text[17298]["Option9"]
--成功，还能继续砍价
tNpcGossip[17298]["Text5-2"] = {521}
tNpcGossip[17298]["Text521"] = tTheSpringFestival_Shopping_Text[17298]["Text521"]
tNpcGossip[17298]["tOption5-2"] = {10,11,12}
tNpcGossip[17298]["ChkFunc5-2"]= function()
	local nEvent = tTheSpringFestival_Shopping_Stc["Event_Type"]
	local nType = tTheSpringFestival_Shopping_Stc["Data_Type"][4]
	local nMoney = math.abs(tTheSpringFestival_Shopping_RandMoney["DelMoney"])
	local nData = Get_UserStatisticValue(nEvent,nType) or nMoney
	tNpcGossip[17298]["Text521"] = string.format(tTheSpringFestival_Shopping_Text[17298]["Text521"],nData)
	return true
end
tNpcGossip[17298]["Option10"]  = tTheSpringFestival_Shopping_Text[17298]["Option10"]
tNpcGossip[17298]["OptionFunc10"]="TheSpringFestival_Shopping_Buy</N>17298</N>3007636"
tNpcGossip[17298]["Option11"]  = tTheSpringFestival_Shopping_Text[17298]["Option11"]
tNpcGossip[17298]["OptionPoint11"]="3-1"
tNpcGossip[17298]["OptionChkFunc11"]= function()
	local nItem = 2
	return TheSpringFestival_Shopping_IsShowCutPrice(nItem)
end
tNpcGossip[17298]["Option12"]  = tTheSpringFestival_Shopping_Text[17298]["Option12"]
--成功，砍价次数为0，但价格不为0
tNpcGossip[17298]["Text5-3"] = {531}
tNpcGossip[17298]["Text531"] = tTheSpringFestival_Shopping_Text[17298]["Text531"]
tNpcGossip[17298]["tOption5-3"] = {10,12}
tNpcGossip[17298]["ChkFunc5-3"]= function()
	local nEvent = tTheSpringFestival_Shopping_Stc["Event_Type"]
	local nType = tTheSpringFestival_Shopping_Stc["Data_Type"][4]
	local nMoney = math.abs(tTheSpringFestival_Shopping_RandMoney["DelMoney"])
	local nData = Get_UserStatisticValue(nEvent,nType) or nMoney
	tNpcGossip[17298]["Text531"] = string.format(tTheSpringFestival_Shopping_Text[17298]["Text531"],nData)
	return true
end
--成功，砍价到价格为0
tNpcGossip[17298]["Text5-4"] = {541}
tNpcGossip[17298]["Text541"] = tTheSpringFestival_Shopping_Text[17298]["Text541"]
tNpcGossip[17298]["tOption5-4"] = {13,12}
tNpcGossip[17298]["Option13"]  = tTheSpringFestival_Shopping_Text[17298]["Option13"]
tNpcGossip[17298]["OptionFunc13"]="TheSpringFestival_Shopping_Buy</N>17298</N>3007636"

-- Option6:这盘的量也太少了吧。
--失败
tNpcGossip[17298]["Text6-1"] = {611}
tNpcGossip[17298]["Text611"] = tTheSpringFestival_Shopping_Text[17298]["Text611"]
tNpcGossip[17298]["tOption6-1"] = {14}
tNpcGossip[17298]["ChkFunc6-1"]= function()
	local nEvent = tTheSpringFestival_Shopping_Stc["Event_Type"]
	local nType = tTheSpringFestival_Shopping_Stc["Data_Type"][4]
	local nMoney = math.abs(tTheSpringFestival_Shopping_RandMoney["DelMoney"])
	local nData = Get_UserStatisticValue(nEvent,nType) or nMoney
	tNpcGossip[17298]["Text611"] = string.format(tTheSpringFestival_Shopping_Text[17298]["Text611"],nData)
	return true
end
tNpcGossip[17298]["Option14"]  = tTheSpringFestival_Shopping_Text[17298]["Option14"]
--成功，还能继续砍价
tNpcGossip[17298]["Text6-2"] = {621}
tNpcGossip[17298]["Text621"] = tTheSpringFestival_Shopping_Text[17298]["Text621"]
tNpcGossip[17298]["tOption6-2"] = {15,16,17}
tNpcGossip[17298]["ChkFunc6-2"]= function()
	local nEvent = tTheSpringFestival_Shopping_Stc["Event_Type"]
	local nType = tTheSpringFestival_Shopping_Stc["Data_Type"][4]
	local nMoney = math.abs(tTheSpringFestival_Shopping_RandMoney["DelMoney"])
	local nData = Get_UserStatisticValue(nEvent,nType) or nMoney
	tNpcGossip[17298]["Text621"] = string.format(tTheSpringFestival_Shopping_Text[17298]["Text621"],nData)
	return true
end
tNpcGossip[17298]["Option15"]  = tTheSpringFestival_Shopping_Text[17298]["Option15"]
tNpcGossip[17298]["OptionFunc15"]="TheSpringFestival_Shopping_Buy</N>17298</N>3007636"
tNpcGossip[17298]["Option16"]  = tTheSpringFestival_Shopping_Text[17298]["Option16"]
tNpcGossip[17298]["OptionPoint16"]="3-1"
tNpcGossip[17298]["OptionChkFunc16"]= function()
	local nItem = 2
	return TheSpringFestival_Shopping_IsShowCutPrice(nItem)
end
tNpcGossip[17298]["Option17"]  = tTheSpringFestival_Shopping_Text[17298]["Option17"]
--成功，砍价次数为0，但价格不为0
tNpcGossip[17298]["Text6-3"] = {631}
tNpcGossip[17298]["Text631"] = tTheSpringFestival_Shopping_Text[17298]["Text631"]
tNpcGossip[17298]["tOption6-3"] = {18,17}
tNpcGossip[17298]["ChkFunc6-3"]= function()
	local nEvent = tTheSpringFestival_Shopping_Stc["Event_Type"]
	local nType = tTheSpringFestival_Shopping_Stc["Data_Type"][4]
	local nMoney = math.abs(tTheSpringFestival_Shopping_RandMoney["DelMoney"])
	local nData = Get_UserStatisticValue(nEvent,nType) or nMoney
	tNpcGossip[17298]["Text631"] = string.format(tTheSpringFestival_Shopping_Text[17298]["Text631"],nData)
	return true
end
tNpcGossip[17298]["Option18"]  = tTheSpringFestival_Shopping_Text[17298]["Option18"]
tNpcGossip[17298]["OptionFunc18"]="TheSpringFestival_Shopping_Buy</N>17298</N>3007636"

--成功，砍价到价格为0
tNpcGossip[17298]["Text6-4"] = {641}
tNpcGossip[17298]["Text641"] = tTheSpringFestival_Shopping_Text[17298]["Text641"]
tNpcGossip[17298]["tOption6-4"] = {19,17}
tNpcGossip[17298]["Option19"]  = tTheSpringFestival_Shopping_Text[17298]["Option19"]
tNpcGossip[17298]["OptionFunc19"]="TheSpringFestival_Shopping_Buy</N>17298</N>3007636"

-- Option7:10万买水果也太奢侈了。
--失败
tNpcGossip[17298]["Text7-1"] = {711}
tNpcGossip[17298]["Text711"] = tTheSpringFestival_Shopping_Text[17298]["Text711"]
tNpcGossip[17298]["tOption7-1"] = {20}
tNpcGossip[17298]["Option20"]  = tTheSpringFestival_Shopping_Text[17298]["Option20"]
--成功，还能继续砍价
tNpcGossip[17298]["Text7-2"] = {721}
tNpcGossip[17298]["Text721"] = tTheSpringFestival_Shopping_Text[17298]["Text721"]
tNpcGossip[17298]["tOption7-2"] = {21,22,23}
tNpcGossip[17298]["ChkFunc7-2"]= function()
	local nEvent = tTheSpringFestival_Shopping_Stc["Event_Type"]
	local nType = tTheSpringFestival_Shopping_Stc["Data_Type"][4]
	local nMoney = math.abs(tTheSpringFestival_Shopping_RandMoney["DelMoney"])
	local nData = Get_UserStatisticValue(nEvent,nType) or nMoney
	tNpcGossip[17298]["Text721"] = string.format(tTheSpringFestival_Shopping_Text[17298]["Text721"],nData)
	return true
end
tNpcGossip[17298]["Option21"]  = tTheSpringFestival_Shopping_Text[17298]["Option21"]
tNpcGossip[17298]["OptionFunc21"]="TheSpringFestival_Shopping_Buy</N>17298</N>3007636"
tNpcGossip[17298]["Option22"]  = tTheSpringFestival_Shopping_Text[17298]["Option22"]
tNpcGossip[17298]["OptionPoint22"]="3-1"
tNpcGossip[17298]["OptionChkFunc22"]= function()
	local nItem = 2
	return TheSpringFestival_Shopping_IsShowCutPrice(nItem)
end
tNpcGossip[17298]["Option23"]  = tTheSpringFestival_Shopping_Text[17298]["Option23"]
--成功，砍价次数为0，但价格不为0
tNpcGossip[17298]["Text7-3"] = {731}
tNpcGossip[17298]["Text731"] = tTheSpringFestival_Shopping_Text[17298]["Text731"]
tNpcGossip[17298]["tOption7-3"] = {24,23}
tNpcGossip[17298]["ChkFunc7-3"]= function()
	local nEvent = tTheSpringFestival_Shopping_Stc["Event_Type"]
	local nType = tTheSpringFestival_Shopping_Stc["Data_Type"][4]
	local nMoney = math.abs(tTheSpringFestival_Shopping_RandMoney["DelMoney"])
	local nData = Get_UserStatisticValue(nEvent,nType) or nMoney
	tNpcGossip[17298]["Text731"] = string.format(tTheSpringFestival_Shopping_Text[17298]["Text731"],nData)
	return true
end
tNpcGossip[17298]["Option24"]  = tTheSpringFestival_Shopping_Text[17298]["Option24"]
tNpcGossip[17298]["OptionFunc24"]="TheSpringFestival_Shopping_Buy</N>17298</N>3007636"
--成功，砍价到价格为0
tNpcGossip[17298]["Text7-4"] = {741}
tNpcGossip[17298]["Text741"] = tTheSpringFestival_Shopping_Text[17298]["Text741"]
tNpcGossip[17298]["tOption7-4"] = {25,23}
tNpcGossip[17298]["Option25"]  = tTheSpringFestival_Shopping_Text[17298]["Option25"]
tNpcGossip[17298]["OptionFunc25"]="TheSpringFestival_Shopping_Buy</N>17298</N>3007636"

--------------------- 17299	王大叔  3342
tNpcFace[3342] = 67
tNpcGossip[17299] = tNpcGossip[17299] or DefaultNpc:new{}
tNpcGossip[17299]["OptionHidden"] = 1

tNpcGossip[17299]["Text1-1"] = {111,112}
tNpcGossip[17299]["Text111"] = tTheSpringFestival_Shopping_Text[17299]["Text111"]
tNpcGossip[17299]["Text112"] = tTheSpringFestival_Shopping_Text[17299]["Text112"]
tNpcGossip[17299]["tOption1-1"] = {1}
tNpcGossip[17299]["ChkFunc1-1"]= function()
	TheSpringFestival_Shopping_SetInitData()
	local nEvent = tTheSpringFestival_Shopping_Stc["Event_Type"]
	local nType = tTheSpringFestival_Shopping_Stc["Data_Type"][2]
	local nUserData = Get_UserStatisticValue(nEvent,nType) or 0
    if (not Sys_ChkFullTime(tTheSpringFestival_Shopping_Cont["ActivityTime"])) or nUserData ~= tTheSpringFestival_Shopping_Item[3] then
		return true
	else
		return false
	end
end
tNpcGossip[17299]["Option1"]  = tTheSpringFestival_Shopping_Text[17299]["Option1"]

-- 活动时间内
tNpcGossip[17299]["Text1-2"] = {121,122}
tNpcGossip[17299]["Text121"] = tTheSpringFestival_Shopping_Text[17299]["Text121"]
tNpcGossip[17299]["Text122"] = tTheSpringFestival_Shopping_Text[17299]["Text122"]
tNpcGossip[17299]["tOption1-2"] = {2,3,4}
tNpcGossip[17299]["ChkFunc1-2"]= function()
	TheSpringFestival_Shopping_SetInitData()
	local nEvent = tTheSpringFestival_Shopping_Stc["Event_Type"]
	local nType = tTheSpringFestival_Shopping_Stc["Data_Type"][2]
	local nUserData = Get_UserStatisticValue(nEvent,nType) or 0
    if Sys_ChkFullTime(tTheSpringFestival_Shopping_Cont["ActivityTime"]) and nUserData == tTheSpringFestival_Shopping_Item[3] then
		local nType1 = tTheSpringFestival_Shopping_Stc["Data_Type"][4]
		local nMoney = math.abs(tTheSpringFestival_Shopping_RandMoney["DelMoney"])
		local nData = Get_UserStatisticValue(nEvent,nType1) or nMoney
		tNpcGossip[17299]["Text121"] = tTheSpringFestival_Shopping_Text[17299]["Text121"]
		if nData == 0 then
			tNpcGossip[17299]["Text122"] = tTheSpringFestival_Shopping_Text[17299]["Text123"]
		else
			tNpcGossip[17299]["Text122"] = string.format(tTheSpringFestival_Shopping_Text[17299]["Text122"],nData)
		end
		return true
	else
		return false
	end
end
tNpcGossip[17299]["Option2"]  = tTheSpringFestival_Shopping_Text[17299]["Option2"]
tNpcGossip[17299]["OptionFunc2"]="TheSpringFestival_Shopping_Buy</N>17299</N>3007637"
tNpcGossip[17299]["Option3"]  = tTheSpringFestival_Shopping_Text[17299]["Option3"]
tNpcGossip[17299]["OptionPoint3"]="3-1"
tNpcGossip[17299]["OptionChkFunc3"]= function()
	local nItem = 3
	return TheSpringFestival_Shopping_IsShowCutPrice(nItem)
end
tNpcGossip[17299]["Option4"]  = tTheSpringFestival_Shopping_Text[17299]["Option4"]

-- Option3:我要砍价
tNpcGossip[17299]["Text3-1"] = {311,312}
tNpcGossip[17299]["Text311"] = tTheSpringFestival_Shopping_Text[17299]["Text311"]
tNpcGossip[17299]["Text312"] = tTheSpringFestival_Shopping_Text[17299]["Text312"]
tNpcGossip[17299]["tOption3-1"] = {5,6,7,8}

tNpcGossip[17299]["Option5"]  = tTheSpringFestival_Shopping_Text[17299]["Option5"]
tNpcGossip[17299]["OptionFunc5"]="TheSpringFestival_Shopping_CutPrice</N>17299</N>3007637</N>1"
tNpcGossip[17299]["Option6"]  = tTheSpringFestival_Shopping_Text[17299]["Option6"]
tNpcGossip[17299]["OptionFunc6"]="TheSpringFestival_Shopping_CutPrice</N>17299</N>3007637</N>2"
tNpcGossip[17299]["Option7"]  = tTheSpringFestival_Shopping_Text[17299]["Option7"]
tNpcGossip[17299]["OptionFunc7"]="TheSpringFestival_Shopping_CutPrice</N>17299</N>3007637</N>3"
tNpcGossip[17299]["Option8"]  = tTheSpringFestival_Shopping_Text[17299]["Option8"]

-- Option5:太贵了！
-- 失败
tNpcGossip[17299]["Text5-1"] = {511}
tNpcGossip[17299]["Text511"] = tTheSpringFestival_Shopping_Text[17299]["Text511"]
tNpcGossip[17299]["tOption5-1"] = {9}
tNpcGossip[17299]["Option9"]  = tTheSpringFestival_Shopping_Text[17299]["Option9"]
--成功，还能继续砍价
tNpcGossip[17299]["Text5-2"] = {521}
tNpcGossip[17299]["Text521"] = tTheSpringFestival_Shopping_Text[17299]["Text521"]
tNpcGossip[17299]["tOption5-2"] = {10,11,12}
tNpcGossip[17299]["ChkFunc5-2"]= function()
	local nEvent = tTheSpringFestival_Shopping_Stc["Event_Type"]
	local nType = tTheSpringFestival_Shopping_Stc["Data_Type"][4]
	local nMoney = math.abs(tTheSpringFestival_Shopping_RandMoney["DelMoney"])
	local nData = Get_UserStatisticValue(nEvent,nType) or nMoney
	tNpcGossip[17299]["Text521"] = string.format(tTheSpringFestival_Shopping_Text[17299]["Text521"],nData)
	return true
end
tNpcGossip[17299]["Option10"]  = tTheSpringFestival_Shopping_Text[17299]["Option10"]
tNpcGossip[17299]["OptionFunc10"]="TheSpringFestival_Shopping_Buy</N>17299</N>3007637"
tNpcGossip[17299]["Option11"]  = tTheSpringFestival_Shopping_Text[17299]["Option11"]
tNpcGossip[17299]["OptionPoint11"]="3-1"
tNpcGossip[17299]["OptionChkFunc11"]= function()
	local nItem = 3
	return TheSpringFestival_Shopping_IsShowCutPrice(nItem)
end
tNpcGossip[17299]["Option12"]  = tTheSpringFestival_Shopping_Text[17299]["Option12"]
--成功，砍价次数为0，但价格不为0
tNpcGossip[17299]["Text5-3"] = {531}
tNpcGossip[17299]["Text531"] = tTheSpringFestival_Shopping_Text[17299]["Text531"]
tNpcGossip[17299]["tOption5-3"] = {10,12}
tNpcGossip[17299]["ChkFunc5-3"]= function()
	local nEvent = tTheSpringFestival_Shopping_Stc["Event_Type"]
	local nType = tTheSpringFestival_Shopping_Stc["Data_Type"][4]
	local nMoney = math.abs(tTheSpringFestival_Shopping_RandMoney["DelMoney"])
	local nData = Get_UserStatisticValue(nEvent,nType) or nMoney
	tNpcGossip[17299]["Text531"] = string.format(tTheSpringFestival_Shopping_Text[17299]["Text531"],nData)
	return true
end
--成功，砍价到价格为0
tNpcGossip[17299]["Text5-4"] = {541}
tNpcGossip[17299]["Text541"] = tTheSpringFestival_Shopping_Text[17299]["Text541"]
tNpcGossip[17299]["tOption5-4"] = {13,12}
tNpcGossip[17299]["Option13"]  = tTheSpringFestival_Shopping_Text[17299]["Option13"]
tNpcGossip[17299]["OptionFunc13"]="TheSpringFestival_Shopping_Buy</N>17299</N>3007637"

-- Option6:我觉得似乎熏的久了点。
--失败
tNpcGossip[17299]["Text6-1"] = {611}
tNpcGossip[17299]["Text611"] = tTheSpringFestival_Shopping_Text[17299]["Text611"]
tNpcGossip[17299]["tOption6-1"] = {14}
tNpcGossip[17299]["Option14"]  = tTheSpringFestival_Shopping_Text[17299]["Option14"]
--成功，还能继续砍价
tNpcGossip[17299]["Text6-2"] = {621}
tNpcGossip[17299]["Text621"] = tTheSpringFestival_Shopping_Text[17299]["Text621"]
tNpcGossip[17299]["tOption6-2"] = {15,16,17}
tNpcGossip[17299]["ChkFunc6-2"]= function()
	local nEvent = tTheSpringFestival_Shopping_Stc["Event_Type"]
	local nType = tTheSpringFestival_Shopping_Stc["Data_Type"][4]
	local nMoney = math.abs(tTheSpringFestival_Shopping_RandMoney["DelMoney"])
	local nData = Get_UserStatisticValue(nEvent,nType) or nMoney
	tNpcGossip[17299]["Text621"] = string.format(tTheSpringFestival_Shopping_Text[17299]["Text621"],nData)
	return true
end
tNpcGossip[17299]["Option15"]  = tTheSpringFestival_Shopping_Text[17299]["Option15"]
tNpcGossip[17299]["OptionFunc15"]="TheSpringFestival_Shopping_Buy</N>17299</N>3007637"
tNpcGossip[17299]["Option16"]  = tTheSpringFestival_Shopping_Text[17299]["Option16"]
tNpcGossip[17299]["OptionPoint16"]="3-1"
tNpcGossip[17299]["OptionChkFunc16"]= function()
	local nItem = 3
	return TheSpringFestival_Shopping_IsShowCutPrice(nItem)
end
tNpcGossip[17299]["Option17"]  = tTheSpringFestival_Shopping_Text[17299]["Option17"]
--成功，砍价次数为0，但价格不为0
tNpcGossip[17299]["Text6-3"] = {631}
tNpcGossip[17299]["Text631"] = tTheSpringFestival_Shopping_Text[17299]["Text631"]
tNpcGossip[17299]["tOption6-3"] = {18,17}
tNpcGossip[17299]["ChkFunc6-3"]= function()
	local nEvent = tTheSpringFestival_Shopping_Stc["Event_Type"]
	local nType = tTheSpringFestival_Shopping_Stc["Data_Type"][4]
	local nMoney = math.abs(tTheSpringFestival_Shopping_RandMoney["DelMoney"])
	local nData = Get_UserStatisticValue(nEvent,nType) or nMoney
	tNpcGossip[17299]["Text631"] = string.format(tTheSpringFestival_Shopping_Text[17299]["Text631"],nData)
	return true
end
tNpcGossip[17299]["Option18"]  = tTheSpringFestival_Shopping_Text[17299]["Option18"]
tNpcGossip[17299]["OptionFunc18"]="TheSpringFestival_Shopping_Buy</N>17299</N>3007637"
--成功，砍价到价格为0
tNpcGossip[17299]["Text6-4"] = {641}
tNpcGossip[17299]["Text641"] = tTheSpringFestival_Shopping_Text[17299]["Text641"]
tNpcGossip[17299]["tOption6-4"] = {19,17}
tNpcGossip[17299]["Option19"]  = tTheSpringFestival_Shopping_Text[17299]["Option19"]
tNpcGossip[17299]["OptionFunc19"]="TheSpringFestival_Shopping_Buy</N>17299</N>3007637"

-- Option7:你就便宜一点卖我嘛。
--失败
tNpcGossip[17299]["Text7-1"] = {711}
tNpcGossip[17299]["Text711"] = tTheSpringFestival_Shopping_Text[17299]["Text711"]
tNpcGossip[17299]["tOption7-1"] = {20}
tNpcGossip[17299]["Option20"]  = tTheSpringFestival_Shopping_Text[17299]["Option20"]
--成功，还能继续砍价
tNpcGossip[17299]["Text7-2"] = {721}
tNpcGossip[17299]["Text721"] = tTheSpringFestival_Shopping_Text[17299]["Text721"]
tNpcGossip[17299]["tOption7-2"] = {21,22,23}
tNpcGossip[17299]["ChkFunc7-2"]= function()
	local nEvent = tTheSpringFestival_Shopping_Stc["Event_Type"]
	local nType = tTheSpringFestival_Shopping_Stc["Data_Type"][4]
	local nMoney = math.abs(tTheSpringFestival_Shopping_RandMoney["DelMoney"])
	local nData = Get_UserStatisticValue(nEvent,nType) or nMoney
	tNpcGossip[17299]["Text721"] = string.format(tTheSpringFestival_Shopping_Text[17299]["Text721"],nData)
	return true
end
tNpcGossip[17299]["Option21"]  = tTheSpringFestival_Shopping_Text[17299]["Option21"]
tNpcGossip[17299]["OptionFunc21"]="TheSpringFestival_Shopping_Buy</N>17299</N>3007637"
tNpcGossip[17299]["Option22"]  = tTheSpringFestival_Shopping_Text[17299]["Option22"]
tNpcGossip[17299]["OptionPoint22"]="3-1"
tNpcGossip[17299]["OptionChkFunc22"]= function()
	local nItem = 3
	return TheSpringFestival_Shopping_IsShowCutPrice(nItem)
end
tNpcGossip[17299]["Option23"]  = tTheSpringFestival_Shopping_Text[17299]["Option23"]
--成功，砍价次数为0，但价格不为0
tNpcGossip[17299]["Text7-3"] = {731}
tNpcGossip[17299]["Text731"] = tTheSpringFestival_Shopping_Text[17299]["Text731"]
tNpcGossip[17299]["tOption7-3"] = {24,23}
tNpcGossip[17299]["ChkFunc7-3"]= function()
	local nEvent = tTheSpringFestival_Shopping_Stc["Event_Type"]
	local nType = tTheSpringFestival_Shopping_Stc["Data_Type"][4]
	local nMoney = math.abs(tTheSpringFestival_Shopping_RandMoney["DelMoney"])
	local nData = Get_UserStatisticValue(nEvent,nType) or nMoney
	tNpcGossip[17299]["Text731"] = string.format(tTheSpringFestival_Shopping_Text[17299]["Text731"],nData)
	return true
end
tNpcGossip[17299]["Option24"]  = tTheSpringFestival_Shopping_Text[17299]["Option24"]
tNpcGossip[17299]["OptionFunc24"]="TheSpringFestival_Shopping_Buy</N>17299</N>3007637"
--成功，砍价到价格为0
tNpcGossip[17299]["Text7-4"] = {741}
tNpcGossip[17299]["Text741"] = tTheSpringFestival_Shopping_Text[17299]["Text741"]
tNpcGossip[17299]["tOption7-4"] = {25,23}
tNpcGossip[17299]["Option25"]  = tTheSpringFestival_Shopping_Text[17299]["Option25"]
tNpcGossip[17299]["OptionFunc25"]="TheSpringFestival_Shopping_Buy</N>17299</N>3007637"

---------------------- 17300	李小伙  3343
tNpcFace[3343] = 60
tNpcGossip[17300] = tNpcGossip[17300] or DefaultNpc:new{}
tNpcGossip[17300]["OptionHidden"] = 1

tNpcGossip[17300]["Text1-1"] = {111}
tNpcGossip[17300]["Text111"] = tTheSpringFestival_Shopping_Text[17300]["Text111"]
tNpcGossip[17300]["tOption1-1"] = {1}
tNpcGossip[17300]["ChkFunc1-1"]= function()
	TheSpringFestival_Shopping_SetInitData()
	local nEvent = tTheSpringFestival_Shopping_Stc["Event_Type"]
	local nType = tTheSpringFestival_Shopping_Stc["Data_Type"][2]
	local nUserData = Get_UserStatisticValue(nEvent,nType) or 0
    if (not Sys_ChkFullTime(tTheSpringFestival_Shopping_Cont["ActivityTime"])) or nUserData ~= tTheSpringFestival_Shopping_Item[4] then
		return true
	else
		return false
	end
end
tNpcGossip[17300]["Option1"]  = tTheSpringFestival_Shopping_Text[17300]["Option1"]

-- 活动时间内
tNpcGossip[17300]["Text1-2"] = {121}
tNpcGossip[17300]["Text121"] = tTheSpringFestival_Shopping_Text[17300]["Text121"]
tNpcGossip[17300]["tOption1-2"] = {2,3,4}
tNpcGossip[17300]["ChkFunc1-2"]= function()
	TheSpringFestival_Shopping_SetInitData()
	local nEvent = tTheSpringFestival_Shopping_Stc["Event_Type"]
	local nType = tTheSpringFestival_Shopping_Stc["Data_Type"][2]
	local nUserData = Get_UserStatisticValue(nEvent,nType) or 0
    if Sys_ChkFullTime(tTheSpringFestival_Shopping_Cont["ActivityTime"]) and nUserData == tTheSpringFestival_Shopping_Item[4] then
		local nType1 = tTheSpringFestival_Shopping_Stc["Data_Type"][4]
		local nMoney = math.abs(tTheSpringFestival_Shopping_RandMoney["DelMoney"])
		local nData = Get_UserStatisticValue(nEvent,nType1) or nMoney
		if nData == 0 then
			tNpcGossip[17300]["Text121"] = tTheSpringFestival_Shopping_Text[17300]["Text122"]
		else
			tNpcGossip[17300]["Text121"] = string.format(tTheSpringFestival_Shopping_Text[17300]["Text121"],nData,nData)
		end
		return true
	else
		return false
	end
end
tNpcGossip[17300]["Option2"]  = tTheSpringFestival_Shopping_Text[17300]["Option2"]
tNpcGossip[17300]["OptionFunc2"]="TheSpringFestival_Shopping_Buy</N>17300</N>3007638"
tNpcGossip[17300]["Option3"]  = tTheSpringFestival_Shopping_Text[17300]["Option3"]
tNpcGossip[17300]["OptionPoint3"]="3-1"
tNpcGossip[17300]["OptionChkFunc3"]= function()
	local nItem = 4
	return TheSpringFestival_Shopping_IsShowCutPrice(nItem)
end
tNpcGossip[17300]["Option4"]  = tTheSpringFestival_Shopping_Text[17300]["Option4"]

-- Option3:我要砍价
tNpcGossip[17300]["Text3-1"] = {311}
tNpcGossip[17300]["Text311"] = tTheSpringFestival_Shopping_Text[17300]["Text311"]
tNpcGossip[17300]["tOption3-1"] = {5,6,7,8}

tNpcGossip[17300]["Option5"]  = tTheSpringFestival_Shopping_Text[17300]["Option5"]
tNpcGossip[17300]["OptionFunc5"]="TheSpringFestival_Shopping_CutPrice</N>17300</N>3007638</N>1"
tNpcGossip[17300]["Option6"]  = tTheSpringFestival_Shopping_Text[17300]["Option6"]
tNpcGossip[17300]["OptionFunc6"]="TheSpringFestival_Shopping_CutPrice</N>17300</N>3007638</N>2"
tNpcGossip[17300]["Option7"]  = tTheSpringFestival_Shopping_Text[17300]["Option7"]
tNpcGossip[17300]["OptionFunc7"]="TheSpringFestival_Shopping_CutPrice</N>17300</N>3007638</N>3"
tNpcGossip[17300]["Option8"]  = tTheSpringFestival_Shopping_Text[17300]["Option8"]

-- Option5:贵了！
-- 失败
tNpcGossip[17300]["Text5-1"] = {511}
tNpcGossip[17300]["Text511"] = tTheSpringFestival_Shopping_Text[17300]["Text511"]
tNpcGossip[17300]["tOption5-1"] = {9}
tNpcGossip[17300]["Option9"]  = tTheSpringFestival_Shopping_Text[17300]["Option9"]
--成功，还能继续砍价
tNpcGossip[17300]["Text5-2"] = {521}
tNpcGossip[17300]["Text521"] = tTheSpringFestival_Shopping_Text[17300]["Text521"]
tNpcGossip[17300]["tOption5-2"] = {10,11,12}
tNpcGossip[17300]["ChkFunc5-2"]= function()
	local nEvent = tTheSpringFestival_Shopping_Stc["Event_Type"]
	local nType = tTheSpringFestival_Shopping_Stc["Data_Type"][4]
	local nMoney = math.abs(tTheSpringFestival_Shopping_RandMoney["DelMoney"])
	local nData = Get_UserStatisticValue(nEvent,nType) or nMoney
	tNpcGossip[17300]["Text521"] = string.format(tTheSpringFestival_Shopping_Text[17300]["Text521"],nData)
	return true
end
tNpcGossip[17300]["Option10"]  = tTheSpringFestival_Shopping_Text[17300]["Option10"]
tNpcGossip[17300]["OptionFunc10"]="TheSpringFestival_Shopping_Buy</N>17300</N>3007638"
tNpcGossip[17300]["Option11"]  = tTheSpringFestival_Shopping_Text[17300]["Option11"]
tNpcGossip[17300]["OptionPoint11"]="3-1"
tNpcGossip[17300]["OptionChkFunc11"]= function()
	local nItem = 4
	return TheSpringFestival_Shopping_IsShowCutPrice(nItem)
end
tNpcGossip[17300]["Option12"]  = tTheSpringFestival_Shopping_Text[17300]["Option12"]
--成功，砍价次数为0，但价格不为0
tNpcGossip[17300]["Text5-3"] = {531}
tNpcGossip[17300]["Text531"] = tTheSpringFestival_Shopping_Text[17300]["Text531"]
tNpcGossip[17300]["tOption5-3"] = {10,12}
tNpcGossip[17300]["ChkFunc5-3"]= function()
	local nEvent = tTheSpringFestival_Shopping_Stc["Event_Type"]
	local nType = tTheSpringFestival_Shopping_Stc["Data_Type"][4]
	local nMoney = math.abs(tTheSpringFestival_Shopping_RandMoney["DelMoney"])
	local nData = Get_UserStatisticValue(nEvent,nType) or nMoney
	tNpcGossip[17300]["Text531"] = string.format(tTheSpringFestival_Shopping_Text[17300]["Text531"],nData)
	return true
end
--成功，砍价到价格为0
tNpcGossip[17300]["Text5-4"] = {541}
tNpcGossip[17300]["Text541"] = tTheSpringFestival_Shopping_Text[17300]["Text541"]
tNpcGossip[17300]["tOption5-4"] = {13,12}
tNpcGossip[17300]["Option13"]  = tTheSpringFestival_Shopping_Text[17300]["Option13"]
tNpcGossip[17300]["OptionFunc13"]="TheSpringFestival_Shopping_Buy</N>17300</N>3007638"

-- Option6:爆竹太危险了。
--失败
tNpcGossip[17300]["Text6-1"] = {611}
tNpcGossip[17300]["Text611"] = tTheSpringFestival_Shopping_Text[17300]["Text611"]
tNpcGossip[17300]["tOption6-1"] = {14}
tNpcGossip[17300]["Option14"]  = tTheSpringFestival_Shopping_Text[17300]["Option14"]
--成功，还能继续砍价
tNpcGossip[17300]["Text6-2"] = {621}
tNpcGossip[17300]["Text621"] = tTheSpringFestival_Shopping_Text[17300]["Text621"]
tNpcGossip[17300]["tOption6-2"] = {15,16,17}
tNpcGossip[17300]["ChkFunc6-2"]= function()
	local nEvent = tTheSpringFestival_Shopping_Stc["Event_Type"]
	local nType = tTheSpringFestival_Shopping_Stc["Data_Type"][4]
	local nMoney = math.abs(tTheSpringFestival_Shopping_RandMoney["DelMoney"])
	local nData = Get_UserStatisticValue(nEvent,nType) or nMoney
	tNpcGossip[17300]["Text621"] = string.format(tTheSpringFestival_Shopping_Text[17300]["Text621"],nData)
	return true
end
tNpcGossip[17300]["Option15"]  = tTheSpringFestival_Shopping_Text[17300]["Option15"]
tNpcGossip[17300]["OptionFunc15"]="TheSpringFestival_Shopping_Buy</N>17300</N>3007638"
tNpcGossip[17300]["Option16"]  = tTheSpringFestival_Shopping_Text[17300]["Option16"]
tNpcGossip[17300]["OptionPoint16"]="3-1"
tNpcGossip[17300]["OptionChkFunc16"]= function()
	local nItem = 4
	return TheSpringFestival_Shopping_IsShowCutPrice(nItem)
end
tNpcGossip[17300]["Option17"]  = tTheSpringFestival_Shopping_Text[17300]["Option17"]
--成功，砍价次数为0，但价格不为0
tNpcGossip[17300]["Text6-3"] = {631}
tNpcGossip[17300]["Text631"] = tTheSpringFestival_Shopping_Text[17300]["Text631"]
tNpcGossip[17300]["tOption6-3"] = {18,17}
tNpcGossip[17300]["ChkFunc6-3"]= function()
	local nEvent = tTheSpringFestival_Shopping_Stc["Event_Type"]
	local nType = tTheSpringFestival_Shopping_Stc["Data_Type"][4]
	local nMoney = math.abs(tTheSpringFestival_Shopping_RandMoney["DelMoney"])
	local nData = Get_UserStatisticValue(nEvent,nType) or nMoney
	tNpcGossip[17300]["Text631"] = string.format(tTheSpringFestival_Shopping_Text[17300]["Text631"],nData)
	return true
end
tNpcGossip[17300]["Option18"]  = tTheSpringFestival_Shopping_Text[17300]["Option18"]
tNpcGossip[17300]["OptionFunc18"]="TheSpringFestival_Shopping_Buy</N>17300</N>3007638"
--成功，砍价到价格为0
tNpcGossip[17300]["Text6-4"] = {641}
tNpcGossip[17300]["Text641"] = tTheSpringFestival_Shopping_Text[17300]["Text641"]
tNpcGossip[17300]["tOption6-4"] = {19,17}
tNpcGossip[17300]["Option19"]  = tTheSpringFestival_Shopping_Text[17300]["Option19"]
tNpcGossip[17300]["OptionFunc19"]="TheSpringFestival_Shopping_Buy</N>17300</N>3007638"

-- Option7:没一会就放完了。
--失败
tNpcGossip[17300]["Text7-1"] = {711}
tNpcGossip[17300]["Text711"] = tTheSpringFestival_Shopping_Text[17300]["Text711"]
tNpcGossip[17300]["tOption7-1"] = {20}
tNpcGossip[17300]["Option20"]  = tTheSpringFestival_Shopping_Text[17300]["Option20"]
--成功，还能继续砍价
tNpcGossip[17300]["Text7-2"] = {721}
tNpcGossip[17300]["Text721"] = tTheSpringFestival_Shopping_Text[17300]["Text721"]
tNpcGossip[17300]["tOption7-2"] = {21,22,23}
tNpcGossip[17300]["ChkFunc7-2"]= function()
	local nEvent = tTheSpringFestival_Shopping_Stc["Event_Type"]
	local nType = tTheSpringFestival_Shopping_Stc["Data_Type"][4]
	local nMoney = math.abs(tTheSpringFestival_Shopping_RandMoney["DelMoney"])
	local nData = Get_UserStatisticValue(nEvent,nType) or nMoney
	tNpcGossip[17300]["Text721"] = string.format(tTheSpringFestival_Shopping_Text[17300]["Text721"],nData)
	return true
end
tNpcGossip[17300]["Option21"]  = tTheSpringFestival_Shopping_Text[17300]["Option21"]
tNpcGossip[17300]["OptionFunc21"]="TheSpringFestival_Shopping_Buy</N>17300</N>3007638"
tNpcGossip[17300]["Option22"]  = tTheSpringFestival_Shopping_Text[17300]["Option22"]
tNpcGossip[17300]["OptionPoint22"]="3-1"
tNpcGossip[17300]["OptionChkFunc22"]= function()
	local nItem = 4
	return TheSpringFestival_Shopping_IsShowCutPrice(nItem)
end
tNpcGossip[17300]["Option23"]  = tTheSpringFestival_Shopping_Text[17300]["Option23"]
--成功，砍价次数为0，但价格不为0
tNpcGossip[17300]["Text7-3"] = {731}
tNpcGossip[17300]["Text731"] = tTheSpringFestival_Shopping_Text[17300]["Text731"]
tNpcGossip[17300]["tOption7-3"] = {24,23}
tNpcGossip[17300]["ChkFunc7-3"]= function()
	local nEvent = tTheSpringFestival_Shopping_Stc["Event_Type"]
	local nType = tTheSpringFestival_Shopping_Stc["Data_Type"][4]
	local nMoney = math.abs(tTheSpringFestival_Shopping_RandMoney["DelMoney"])
	local nData = Get_UserStatisticValue(nEvent,nType) or nMoney
	tNpcGossip[17300]["Text731"] = string.format(tTheSpringFestival_Shopping_Text[17300]["Text731"],nData)
	return true
end
tNpcGossip[17300]["Option24"]  = tTheSpringFestival_Shopping_Text[17300]["Option24"]
tNpcGossip[17300]["OptionFunc24"]="TheSpringFestival_Shopping_Buy</N>17300</N>3007638"
--成功，砍价到价格为0
tNpcGossip[17300]["Text7-4"] = {741}
tNpcGossip[17300]["Text741"] = tTheSpringFestival_Shopping_Text[17300]["Text741"]
tNpcGossip[17300]["tOption7-4"] = {25,23}
tNpcGossip[17300]["Option25"]  = tTheSpringFestival_Shopping_Text[17300]["Option25"]
tNpcGossip[17300]["OptionFunc25"]="TheSpringFestival_Shopping_Buy</N>17300</N>3007638"

---------------------------------物品模板-----------------------------------------------
-- 3007635	糯米甜馃
tItem[3007635] = tItem[3007635] or {}
tItem[3007635]["Function"] = function(nItemId,sItemName)
	TheSpringFestival_Shopping_UseItem(nItemId,sItemName)
end

-- 3007636	什锦果盘
tItem[3007636] = tItem[3007636] or {}
tItem[3007636]["Function"] = function(nItemId,sItemName)
	TheSpringFestival_Shopping_UseItem(nItemId,sItemName)
end

-- 3007637	烟熏腊肉
tItem[3007637] = tItem[3007637] or {}
tItem[3007637]["Function"] = function(nItemId,sItemName)
	TheSpringFestival_Shopping_UseItem(nItemId,sItemName)
end

-- 3007638	新年爆竹
tItem[3007638] = tItem[3007638] or {}
tItem[3007638]["Function"] = function(nItemId,sItemName)
	TheSpringFestival_Shopping_UseItem(nItemId,sItemName)
end
