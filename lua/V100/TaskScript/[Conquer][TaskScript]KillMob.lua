------------------------------------------------------------------------------------
--Name:			160504[简体征服][任务脚本]天魔降伏任务重做
--Creator:		刘益辉
--Created:		2016/5/30
------------------------------------------------------------------------------------

--命名前缀
--ttKillMob_

--掩码说明

local tKillMob_TaskId ={}
	tKillMob_TaskId["Demo"] = 6012

local tKillMob_Constant ={}
	tKillMob_Constant["Mete"] =0
	tKillMob_Constant["Lev"] = 120
	tKillMob_Constant["Money"] = 27
	tKillMob_Constant["Gift"] = 3200245
	tKillMob_Constant["Attr"] = "0 0 0 1440 1"
	
local tDailypoint_Data = {}
	tDailypoint_Data["ActivetyTime"] = tActivityTime["LinLang"]["ActivityTime"]
	
local tKillMob_Pos ={}
	tKillMob_Pos["random"]=5
	tKillMob_Pos[1]={}
	tKillMob_Pos[1]["MapId"]=1002
	tKillMob_Pos[1]["PositionX"]=256
	tKillMob_Pos[1]["PositionY"]=471
	
	tKillMob_Pos[2]={}
	tKillMob_Pos[2]["MapId"]=3998
	tKillMob_Pos[2]["PositionX"]=145
	tKillMob_Pos[2]["PositionY"]=338
	
	tKillMob_Pos[3]={}
	tKillMob_Pos[3]["MapId"]=3998
	tKillMob_Pos[3]["PositionX"]=262
	tKillMob_Pos[3]["PositionY"]=430
	
	tKillMob_Pos[4]={}
	tKillMob_Pos[4]["MapId"]=3998
	tKillMob_Pos[4]["PositionX"]=230
	tKillMob_Pos[4]["PositionY"]=273
	
	tKillMob_Pos[5]={}
	tKillMob_Pos[5]["MapId"]=3998
	tKillMob_Pos[5]["PositionX"]=596
	tKillMob_Pos[5]["PositionY"]=447
	
	tKillMob_Pos[6]={}
	tKillMob_Pos[6]["MapId"]=3998
	tKillMob_Pos[6]["PositionX"]=307
	tKillMob_Pos[6]["PositionY"]=102
	
	tKillMob_Pos[7]={}
	tKillMob_Pos[7]["MapId"]=3998
	tKillMob_Pos[7]["PositionX"]=482
	tKillMob_Pos[7]["PositionY"]=216
	
	tKillMob_Pos[8]={}
	tKillMob_Pos[8]["MapId"]=3998
	tKillMob_Pos[8]["PositionX"]=522
	tKillMob_Pos[8]["PositionY"]=347
	
	tKillMob_Pos[9]={}
	tKillMob_Pos[9]["MapId"]=3998
	tKillMob_Pos[9]["PositionX"]=410
	tKillMob_Pos[9]["PositionY"]=508
	
	tKillMob_Pos[10]={}
	tKillMob_Pos[10]["MapId"]=3998
	tKillMob_Pos[10]["PositionX"]=381
	tKillMob_Pos[10]["PositionY"]=707
	
local tKillMob_Stc ={}--记录是否领奖 1领奖  
	tKillMob_Stc["Event"] = 144
	tKillMob_Stc["Type"] = 87

	--有关礼包
local tKillMob_Gift ={}	
	tKillMob_Gift[1] = {}
	tKillMob_Gift[1]["ExpTime"] = 1200
	tKillMob_Gift[1]["Strength"] = 300
	
	tKillMob_Gift[2] = {}
	tKillMob_Gift[2]["ExpTime"] = 2400
	tKillMob_Gift[2]["Strength"] = 600

local tKillMob_Item ={}
	tKillMob_Item[721774] = {}
	tKillMob_Item[721774]["nNeedNum"] = 10
	tKillMob_Item[721774]["nAwardItemId"] = 710214
	tKillMob_Item[721774]["Log"] = "0,0,721774,10,12000395,2,710214,1"
	
	tKillMob_Item[710214] = {}
	tKillMob_Item[710214]["ExpTime"] = 300
	tKillMob_Item[710214]["Log"] = "0,0,710214,1,12000395,2,4,300"
	tKillMob_Item[710214]["Stc"] ={}
	tKillMob_Item[710214]["Stc"]["Event"]= 145
	tKillMob_Item[710214]["Stc"]["Type"] = 20
	
local tKillMob_Effect = {}
	tKillMob_Effect["Accept"] = "eidolon"
	tKillMob_Effect["Finish"] = "angelwing"


local tKillMob_Log ={}	
	tKillMob_Log["Task"] = {}
	tKillMob_Log["Task"][1] = "0,0,0,0,12000395,1[1],0,0"
	tKillMob_Log["Task"][2] = "0,0,0,0,12000395,1[2],0,0"
	tKillMob_Log["Task"][3] = "0,0,0,0,12000395,2,11001,1"
	tKillMob_Log["Task"][4] = "0,0,0,0,12000395,1[3],0,0"
	tKillMob_Log["Task"][5] = "0,0,0,0,12000395,1[4],0,0"
	
	
	tKillMob_Log["Gift"] = {}
	tKillMob_Log["Gift"][1] ={}
	tKillMob_Log["Gift"][1]["Log1"] = "0,0,0,0,12000395,2,4,1200"
	tKillMob_Log["Gift"][1]["Log2"] = "0,0,0,0,12000395,2,12,300"
	
	tKillMob_Log["Gift"][2] = {}
	tKillMob_Log["Gift"][2]["Log1"] = "0,0,0,0,12000395,2,4,2400"
	tKillMob_Log["Gift"][2]["Log2"] = "0,0,0,0,12000395,2,12,600"
	
	tKillMob_Log["Reward"] = "0,0,0,0,12000395,2,3200245,1"
	tKillMob_Log["NewReward"] = "0,0,0,0,12000395,3,3200245,1"
	
	tKillMob_Log["EmoneyLog1"]="710	241	27	27	1	" --花费直接完成任务
	tKillMob_Log["EmoneyLog2"]="350	4444	27	27	1	" --花费打开礼包
	tKillMob_Log["EmoneyLog3"]="350	4467	27	27	1	" --花费直接完成任务--350 4467 神龙岛伏魔任务直接完成花费的天石
	
local tKillMob_OldStc = {}
tKillMob_OldStc[1] = {}
tKillMob_OldStc[1]["EventType"] = 6
tKillMob_OldStc[1]["DataType"] = 0

tKillMob_OldStc[2] = {}
tKillMob_OldStc[2]["EventType"] = 171
tKillMob_OldStc[2]["DataType"] = 52

tKillMob_OldStc["ItemType"] = 750000
-----------------------------------------逻辑部分----------------------------------------
------------公用函数--------------

--上线触发删除玩家的旧任务
function KillMob_LoginDeleteOld()
	local nUserId = Get_UserId()
	local nEvent = tKillMob_OldStc[2]["EventType"]
	local nData = tKillMob_OldStc[2]["DataType"]
	local nOldnEvent = tKillMob_OldStc[1]["EventType"]
	local nOldnData = tKillMob_OldStc[1]["DataType"]
	
	--判断玩家是否执行过这个操作，只执行一次
	if Task_ChkStcValue(nEvent,nData,"==",0,nUserId) then
		if Task_ChkStcValue(nOldnEvent,nOldnData,">=",1,nUserId) then
			--清除掩码
			Task_SetStatistic(nOldnEvent,nOldnData,0,1,nUserId)
			--删除葫芦
			local nItemId = tKillMob_OldStc["ItemType"]
			if Item_ChkMulItem(nItemId,nItemId,1) then
				Item_DelMulItem(nItemId,nItemId,1)
			end
			--更改掩码
			Task_SetStatistic(nEvent,nData,1,1,nUserId)
		end
	end
	
end

--隔周重置
function KillMob_RecTaskId()

	if Task_ChkStcValue(tKillMob_Stc["Event"],tKillMob_Stc["Type"],"==",1) then
		if not Task_ChkTaskDetail(tKillMob_TaskId["Demo"]) then
			Task_AddTaskDetail(tKillMob_TaskId["Demo"])
		end
		if Task_ChkTaskDetailValue(tKillMob_TaskId["Demo"],"CompleteFlag","<",1) then
			Task_SetTaskDetailCompleteFlag(tKillMob_TaskId["Demo"],1)
		end
	end
	
	
	if not Task_ChkTaskDetail(tKillMob_TaskId["Demo"]) then
		return 
	end
	
	
	if Task_ChkTaskDetailValue(tKillMob_TaskId["Demo"],"CompleteFlag","==",1) then
		--判断是否隔周,隔周进行掩码重置
		if Task_StcInterval(tKillMob_Stc["Event"],tKillMob_Stc["Type"],1,5) then
			Task_SetTaskDetailCompleteFlag(tKillMob_TaskId["Demo"],0)
			Task_SetTaskDetailData1(tKillMob_TaskId["Demo"],0)
			Task_DelTaskDetail(tKillMob_TaskId["Demo"])
			Task_SetStatistic(tKillMob_Stc["Event"],tKillMob_Stc["Type"],0,1)--清零领奖掩码
		end
	end
end


--传送
function KillMob_Delivery(nIndex)
	local nNum = 0
	if nIndex == nil then
		nNum = math.random(2,10)
	else
		nNum = nIndex
	end
	local nRandom = tKillMob_Pos["random"]
	local nMapId = tKillMob_Pos[nNum]["MapId"]
	local nPositionX = tKillMob_Pos[nNum]["PositionX"]
	local nPositionY = tKillMob_Pos[nNum]["PositionY"]
	User_UserRandBoundTrans(nMapId,nPositionX,nPositionY,nRandom,nRandom,1)
	
end

--判断条件
function tKillMob_Conditions()
	--失败。任务不存在
	if not Task_ChkTaskDetail(tKillMob_TaskId["Demo"]) then
		return false
	end
	
	--失败。当日已经完成任务。
	if Task_ChkTaskDetailValue(tKillMob_TaskId["Demo"],"CompleteFlag",">=",1) then
		return false
	end
	
	return true
end
-----------------------------------------------npc 逻辑-----------------------------------------
function KillMob_AcceptTask()
	--隔周重置
	KillMob_RecTaskId()
	
	--失败。任务已存在
	if Task_ChkTaskDetail(tKillMob_TaskId["Demo"]) then	
		return
	end
	
	--失败。本周已经完成任务。
	if Task_ChkTaskDetailValue(tKillMob_TaskId["Demo"],"CompleteFlag",">=",1) then
		return 
	end
	
	--失败，已领取
	if Task_ChkStcValue(tKillMob_Stc["Event"],tKillMob_Stc["Type"],">=",1) then
		return
	end
	
	
	--成功，创建任务
	Task_AddTaskDetail(tKillMob_TaskId["Demo"])--新建任务
	Task_SetTaskDetailCompleteFlag(tKillMob_TaskId["Demo"],0)--置完成标示为0
	Task_SetTaskDetailData1(tKillMob_TaskId["Demo"],0)----置杀怪数量
	Task_SetTaskDetailData7(tKillMob_TaskId["Demo"],os.time())--打时间戳
	Task_SetStcTimestamp(tKillMob_Stc["Event"],tKillMob_Stc["Type"],0)--掩码时间戳
	--光效
	User_EffectAdd("self",tKillMob_Effect["Accept"])
	--log
	Sys_SaveActionFestivalLog(tKillMob_Log["Task"][1])
	--弹窗
	local sStr = tKillMob_Text["Accept"]
	Sys_MsgBox(sStr,"KillMob_Delivery")
end

--直接完成（27天石）。
function KillMob_Employ(nNpcId)
	--隔周重置
	KillMob_RecTaskId()
	
	--失败。本周已经完成任务。
	if Task_ChkTaskDetail(tKillMob_TaskId["Demo"]) then
		if Task_ChkTaskDetailValue(tKillMob_TaskId["Demo"],"CompleteFlag",">=",1) then
			return 
		end
	end
	
	--失败，已领取
	if Task_ChkStcValue(tKillMob_Stc["Event"],tKillMob_Stc["Type"],">=",1) then
		return
	end
	
	--失败，天石不足
	local nEMoney=Get_UserEMoney()
	local nPlayMoney = tKillMob_Constant["Money"]
	if nEMoney < nPlayMoney then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	LinkNpcGossipFunc_New(nNpcId,"3-1")
	
end
--确定花费
function KillMob_SurePaly(nNpcId)
	--隔周重置
	KillMob_RecTaskId()
	
	--失败。本周已经完成任务。
	if Task_ChkTaskDetail(tKillMob_TaskId["Demo"]) then
		if Task_ChkTaskDetailValue(tKillMob_TaskId["Demo"],"CompleteFlag",">=",1) then
			return 
		end
	end
	
	--失败，已领取
	if Task_ChkStcValue(tKillMob_Stc["Event"],tKillMob_Stc["Type"],">=",1) then
		return
	end
	
	--失败，天石不足
	local nEMoney=Get_UserEMoney()
	local nPlayMoney = tKillMob_Constant["Money"]
	if nEMoney < nPlayMoney then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	--背包空间不足
	if not User_CheckLeftSpace(1) then
			LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	--新建任务
	if not Task_ChkTaskDetail(tKillMob_TaskId["Demo"]) then
		Task_AddTaskDetail(tKillMob_TaskId["Demo"])
	end
	
	Task_SetTaskDetailData1(tKillMob_TaskId["Demo"],900)--置杀怪数为900
	Task_SetTaskDetailCompleteFlag(tKillMob_TaskId["Demo"],0)--置完成标示为0
	Task_SetStcTimestamp(tKillMob_Stc["Event"],tKillMob_Stc["Type"],0)--掩码时间戳
	--扣天石
	User_AddEMoney(-nPlayMoney)
	--log
	Sys_SaveEmoneyBuy(tKillMob_Log["EmoneyLog1"])
	--获得奖励
	KillMob_Reward(nNpcId)
end

---领取谢礼。
function KillMob_Reward(nNpcId)
	--隔周重置
	KillMob_RecTaskId()
	
	--任务不存在或者已完成
	if not tKillMob_Conditions() then
		return
	end
	
	--失败，已领取
	if Task_ChkStcValue(tKillMob_Stc["Event"],tKillMob_Stc["Type"],">=",1) then
		return
	end

	--背包空间不足
	local nSpaceNum = 1
	-- 日常得积分
	-- if Sys_ChkFullTime(tDailypoint_Data["ActivetyTime"]) then
		-- if not CommonFunc_ChkGoldServer() then
			-- nSpaceNum = nSpaceNum +1
		-- end
	-- end
	if not User_CheckLeftSpace(nSpaceNum) then
		local sShowText = tKillMob_Text[nNpcId]["Text221"]
		tNpcGossip[nNpcId]["Text221"] = string.format(sShowText,nSpaceNum)
			LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	--打掩码
	Task_SetStatistic(tKillMob_Stc["Event"],tKillMob_Stc["Type"],1,1)
	Task_SetTaskDetailCompleteFlag(tKillMob_TaskId["Demo"],1)
	--给奖励\log\提示\光效
	Item_AddNewItem(tKillMob_Constant["Gift"],tKillMob_Constant["Attr"])
	--给成就
	KillMob_AddAchievement()
	--获得随机积分卡
	-- Dailypoint_RewardDraw(7)
	
	User_EffectAdd("self",tKillMob_Effect["Finish"])
	Sys_MsgBox(tKillMob_Text["Reward"])
	Sys_SaveActionFestivalLog(tKillMob_Log["Task"][2])
	Sys_SaveActionFestivalLog(tKillMob_Log["Reward"])
	
end
--给成就
function KillMob_AddAchievement()
	local nAchPos = 11001
	if not User_ChkAchByAchPosition(nAchPos) then
		Sys_SaveActionFestivalLog(tKillMob_Log["Task"][3])
		User_AddAchByAchPosition(nAchPos)
	end
end
---------------------怪物死亡
function KillMob_MonsterDie(nMonsterId)
	--任务不存在或者已完成
	if not tKillMob_Conditions() then
		return
	end

	local nData = Get_TaskDetailData1(tKillMob_TaskId["Demo"])+1
	Task_SetTaskDetailData1(tKillMob_TaskId["Demo"],nData)
	
	if nData == 900 then
		Sys_MsgBox(tKillMob_Text["FullKill"],"KillMob_Delivery</N>1")
	end
	
end

----------------物品逻辑------------
function KillMob_OpenGift(nItemId)
	--付费打开
	local nEMoney=Get_UserEMoney()
	local nPlayMoney = tKillMob_Constant["Money"]
	if nEMoney < nPlayMoney then
		Sys_MsgBox(tKillMob_Text["NoneTS"])
		return
	end
	LinkItemGossipFunc_New(nItemId,"2-1")
end


--打开礼包
function KillMob_SureOpenGift(nItemId,nIndex)
	--给奖励
	if Item_ChkItem(nItemId) then
		--付费打开
		if nIndex ==2 then
			local nEMoney=Get_UserEMoney()
			local nPlayMoney = tKillMob_Constant["Money"]
			if nEMoney < nPlayMoney then
				Sys_MsgBox(tKillMob_Text["NoneTS"])
				return
			end
			User_AddEMoney(-nPlayMoney)
			Sys_SaveEmoneyBuy(tKillMob_Log["EmoneyLog2"])
		end
	end
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then 
		local nUserLev = Get_UserLevel()
		if G_User_MaxLev <= nUserLev then --等级满
		User_AddStrengthValue(tKillMob_Gift[nIndex]["Strength"])
		User_EffectAdd("self",tKillMob_Effect["Finish"])
		Sys_SaveActionFestivalLog(tKillMob_Log["Gift"][nIndex]["Log2"])
		User_TalkChannel2005(tKillMob_Text["OpenGift"][nIndex]["Str2"])
		else
		User_AddExpTime(tKillMob_Gift[nIndex]["ExpTime"])
		User_EffectAdd("self",tKillMob_Effect["Finish"])
		Sys_SaveActionFestivalLog(tKillMob_Log["Gift"][nIndex]["Log1"])
		User_TalkChannel2005(tKillMob_Text["OpenGift"][nIndex]["Str1"])
		end
	end
end

--通商名典合成
function KillMob_Compose(nItemId)

	local nNeedNum = tKillMob_Item[nItemId]["nNeedNum"] 
	local nAwardItemId = tKillMob_Item[nItemId]["nAwardItemId"]
	--数量不足
	if Item_ChkMulItem(nItemId,nItemId,nNeedNum,0) and Item_DelMulItem(nItemId,nItemId,nNeedNum,0) then
		Item_AddNewItem(nAwardItemId,"")
		User_EffectAdd("self",tKillMob_Effect["Finish"])
		Sys_SaveActionFestivalLog(tKillMob_Item[nItemId]["Log"])
		User_TalkChannel2005(tKillMob_Text[nItemId]["ComposeSucc"])
	elseif Item_ChkMulItem(nItemId,nItemId,nNeedNum,2) and Item_DelMulItem(nItemId,nItemId,nNeedNum,2) then
		Item_AddNewItem(nAwardItemId,"0 0 3")
		User_EffectAdd("self",tKillMob_Effect["Finish"])
		Sys_SaveActionFestivalLog(tKillMob_Item[nItemId]["Log"])
		User_TalkChannel2005(tKillMob_Text[nItemId]["ComposeSucc"])
	else
		User_TalkChannel2005(tKillMob_Text[nItemId]["NotEnough"])
	end

	
end
--使用万商名典
function KillMob_UseItem(nItemId)
	local nEvent =tKillMob_Item[nItemId]["Stc"]["Event"]
	local nType  =tKillMob_Item[nItemId]["Stc"]["Type"]
	
	--隔天重置
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	
	--当日已使用过10次
	if Task_ChkStcValue(nEvent,nType,">=",10) then
		Sys_MsgBox(tKillMob_Text["Limit"])
		return
	end
	
	Task_AddStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	--等级满给提示
	local nUserLev = Get_UserLevel()
	if G_User_MaxLev <= nUserLev then 
		User_TalkChannel2005(tKillMob_Text[nItemId]["FailUse"])
		return
	end
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		User_AddExpTime(tKillMob_Item[nItemId]["ExpTime"])
		User_EffectAdd("self",tKillMob_Effect["Finish"])
		Sys_SaveActionFestivalLog(tKillMob_Item[nItemId]["Log"])
		User_TalkChannel2005(tKillMob_Text[nItemId]["SuccUse"])
	end
	
end

----------面板--------------
--放弃任务
function KillMob_TaskDetailDelete()
	--任务不存在或者已完成
	if not tKillMob_Conditions() then
		return
	end
	
	--数据清零
	Task_DelTaskDetail(tKillMob_TaskId["Demo"])
	User_TalkChannel2005(tKillMob_Text["DeleteTask"])
end



---------------------npc模块-------------------------
tNpcFace[164] = 67
tNpcGossip[2000] = tNpcGossip[2000] or DefaultNpc:new{}
tNpcGossip[2000]["OptionHidden"] = 1

--等级不满足
tNpcGossip[2000]["Text1-1"] = {111}
tNpcGossip[2000]["Text111"] = tKillMob_Text[2000]["Text111"]
tNpcGossip[2000]["ChkFunc1-1"] = function()
	local nMete = tKillMob_Constant["Mete"]
	local nLev = tKillMob_Constant["Lev"]
	return not User_JudgeLevelAndMetempsychosis(nLev,nMete)
end
tNpcGossip[2000]["tOption1-1"] = {111}
tNpcGossip[2000]["Option111"] = tKillMob_Text[2000]["Option111"]

--已领完谢礼
tNpcGossip[2000]["Text1-2"] = {121,122}
tNpcGossip[2000]["Text121"] = tKillMob_Text[2000]["Text121"]
tNpcGossip[2000]["Text122"] = tKillMob_Text[2000]["Text122"]
tNpcGossip[2000]["ChkFunc1-2"] = function()
	KillMob_RecTaskId()
	return Task_ChkStcValue(tKillMob_Stc["Event"],tKillMob_Stc["Type"],">=",1)
end
tNpcGossip[2000]["tOption1-2"] = {143,121}
tNpcGossip[2000]["Option121"] = tKillMob_Text[2000]["Option121"]

--已完成任务
tNpcGossip[2000]["Text1-3"] = {131}
tNpcGossip[2000]["Text131"] = tKillMob_Text[2000]["Text131"]
tNpcGossip[2000]["ChkFunc1-3"] = function()
	KillMob_RecTaskId()
	
	if not Task_ChkTaskDetail(tKillMob_TaskId["Demo"]) then
		return false
	end
	
	return Get_TaskDetailData1(tKillMob_TaskId["Demo"]) >= 900

end
tNpcGossip[2000]["tOption1-3"] = {131,143,132}
tNpcGossip[2000]["Option131"] = tKillMob_Text[2000]["Option131"]
tNpcGossip[2000]["OptionFunc131"] = "KillMob_Reward</N>2000"
tNpcGossip[2000]["Option132"] = tKillMob_Text[2000]["Option132"]


--等级满足    	     未接受任务
tNpcGossip[2000]["Text1-4"] = {141,144,145}
tNpcGossip[2000]["Text141"] = tKillMob_Text[2000]["Text141"]
tNpcGossip[2000]["Text144"] = tKillMob_Text[2000]["Text144"]
tNpcGossip[2000]["Text145"] = tKillMob_Text[2000]["Text145"]
tNpcGossip[2000]["ChkFunc1-4"] = function()
	return not Task_ChkTaskDetail(tKillMob_TaskId["Demo"]) 
end
tNpcGossip[2000]["tOption1-4"] = {141,142,143,144}
--接受任务（每周1次）。
tNpcGossip[2000]["Option141"] = tKillMob_Text[2000]["Option141"]
tNpcGossip[2000]["OptionFunc141"] = "KillMob_AcceptTask"
--直接完成（27天石）。
tNpcGossip[2000]["Option142"] = tKillMob_Text[2000]["Option142"]
--tNpcGossip[2000]["OptionFunc142"] = "KillMob_Employ</N>2000"
tNpcGossip[2000]["OptionPoint142"] = "4-1"
--上交万商名典。
tNpcGossip[2000]["Option143"] = tKillMob_Text[2000]["Option143"]
tNpcGossip[2000]["OptionFunc143"] = "KillMob_UseItem</N>710214"
tNpcGossip[2000]["OptionChkFunc143"] = function ()
	return  Item_ChkItem(710214) 
end
--告辞
tNpcGossip[2000]["Option144"] = tKillMob_Text[2000]["Option144"]



--已接受任务，未完成
tNpcGossip[2000]["Text1-5"] = {151}
tNpcGossip[2000]["Text151"] = tKillMob_Text[2000]["Text151"]

tNpcGossip[2000]["tOption1-5"] = {151,152,143,153}
--前往赤龙之地。
tNpcGossip[2000]["Option151"] = tKillMob_Text[2000]["Option151"]
tNpcGossip[2000]["OptionFunc151"] = "KillMob_Delivery"
--直接完成（27天石）。
tNpcGossip[2000]["Option152"] = tKillMob_Text[2000]["Option152"]
tNpcGossip[2000]["OptionPoint152"] = "4-1"
--告辞
tNpcGossip[2000]["Option153"] = tKillMob_Text[2000]["Option153"]



--天石不足
tNpcGossip[2000]["Text2-1"] = {211}
tNpcGossip[2000]["Text211"] = tKillMob_Text[2000]["Text211"]
tNpcGossip[2000]["tOption2-1"] = {211}
tNpcGossip[2000]["Option211"] = tKillMob_Text[2000]["Option211"]

--背包空间不足
tNpcGossip[2000]["Text2-2"] = {221}
tNpcGossip[2000]["Text221"] = tKillMob_Text[2000]["Text221"]
tNpcGossip[2000]["tOption2-2"] = {221}
tNpcGossip[2000]["Option221"] = tKillMob_Text[2000]["Option221"]

--二次确定
tNpcGossip[2000]["Text3-1"] = {311}
tNpcGossip[2000]["Text311"] = tKillMob_Text[2000]["Text311"]
tNpcGossip[2000]["tOption3-1"] = {311,312}
tNpcGossip[2000]["Option311"] = tKillMob_Text[2000]["Option311"]
tNpcGossip[2000]["OptionFunc311"] = "KillMob_SurePaly</N>2000"
tNpcGossip[2000]["Option312"] = tKillMob_Text[2000]["Option312"]

--花费天石对白
tNpcGossip[2000]["Text4-1"] = {411}
tNpcGossip[2000]["Text411"] = tKillMob_Text[2000]["Text411"]
tNpcGossip[2000]["tOption4-1"] = {411,412}
tNpcGossip[2000]["Option411"] = tKillMob_Text[2000]["Option411"]
tNpcGossip[2000]["OptionFunc411"] = "KillMob_Employ</N>2000"
tNpcGossip[2000]["Option412"] = tKillMob_Text[2000]["Option412"]


----------怪物模块-----------------------
local tKillMob_Monster = {}
	tKillMob_Monster["Function"] = KillMob_MonsterDie
	tKillMob_Monster["MonsterId"] = {2758,2759,2760,2761,2762,2763,2764,2765,2766}
table.insert(tMonsterDrop_AreaLoad,tKillMob_Monster)

------------物品模块----------------
tItem[3200245] = tItem[3200245] or {}
tItem[3200245]["Text1-1"] = {111,112}
tItem[3200245]["Text111"] = tKillMob_Text[3200245]["Text111"]
tItem[3200245]["Text112"] = tKillMob_Text[3200245]["Text112"]
tItem[3200245]["tOption1-1"] = {111,112}
tItem[3200245]["Option111"] = tKillMob_Text[3200245]["Option111"]
tItem[3200245]["Option112"] = tKillMob_Text[3200245]["Option112"]
--直接领取。
tItem[3200245]["OptionFunc111"] = "KillMob_SureOpenGift</N>3200245</N>1"
--翻倍领取（27天石）
tItem[3200245]["OptionFunc112"] = "KillMob_OpenGift</N>3200245"

--二次确定
tItem[3200245]["Text2-1"] = {211}
tItem[3200245]["Text211"] = tKillMob_Text[3200245]["Text211"]
tItem[3200245]["tOption2-1"] = {211,212}
tItem[3200245]["Option211"] = tKillMob_Text[3200245]["Option211"]
tItem[3200245]["OptionFunc211"] = "KillMob_SureOpenGift</N>3200245</N>2"
tItem[3200245]["Option212"] = tKillMob_Text[3200245]["Option212"]



--通商名典
tItem[721774] = tItem[721774] or {}
tItem[721774]["Function"] = function(nItemId,sItemName)
	KillMob_Compose(nItemId)
end
--万商名典
-- tItem[710214] = tItem[710214] or {}
-- tItem[710214]["Function"] = function(nItemId,sItemName)
	-- KillMob_UseItem(nItemId)
-- end
------------上线触发----------------
--删除旧任务
table.insert(tSystem_PlayLogin_Func,KillMob_LoginDeleteOld)
