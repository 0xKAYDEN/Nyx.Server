------------------------------------------------------------------------------------
--Name:			150706[简体征服][活动脚本]宰牲节(9.23-9.30)-羊肉大烧烤
--Purpose:		宰牲节活动(9.23-9.30)-羊肉大烧烤
--Creator:		黄昕哲
--Created:		2015/07/06
------------------------------------------------------------------------------------
--复用自2014年宰牲节活动

--背包信改为阅后即焚,给30分钟经验/20修行值

--命名前缀
--EidalAdha2015_Barbecue_
--stc(127,87)表示活动进行的阶段
--stc(127,90)记录烧烤的时间间隔
-------------------------------------------------------------------------------------
--表定义
local tEidalAdha2015_Barbecue_Data = {}
tEidalAdha2015_Barbecue_Data["BeforeTime"] = "2015-01-01 00:00 2017-09-01 23:59"
tEidalAdha2015_Barbecue_Data["Time"] = "2017-09-02 00:00 2017-09-08 23:59"
tEidalAdha2015_Barbecue_Data["MinMeto"] = 0
tEidalAdha2015_Barbecue_Data["MinLev"] = 80
tEidalAdha2015_Barbecue_Data["MaxLev"] = 140

tEidalAdha2015_Barbecue_Data["SpaceForMateria"] = 2

--"烧烤"相关
tEidalAdha2015_Barbecue_Data["CookTime"] = 10
tEidalAdha2015_Barbecue_Data["CookRest"] = 180

tEidalAdha2015_Barbecue_Data["Stun"] = {}
	tEidalAdha2015_Barbecue_Data["Stun"]["Status"] = 55
	tEidalAdha2015_Barbecue_Data["Stun"]["Power"] = 200
	tEidalAdha2015_Barbecue_Data["Stun"]["Secs"] = 10
	tEidalAdha2015_Barbecue_Data["Stun"]["Times"] = 1
	tEidalAdha2015_Barbecue_Data["Stun"]["RemainTime"] = 10
	tEidalAdha2015_Barbecue_Data["Stun"]["EndTime"] = 1
	tEidalAdha2015_Barbecue_Data["Stun"]["Recordable"] = 1

tEidalAdha2015_Barbecue_Data["DecLifePec"] = 1
	
tEidalAdha2015_Barbecue_Data["PackLetterExp"] = 60
tEidalAdha2015_Barbecue_Data["PackLetterCult"] = 30

local tEidalAdha2015_Barbecue_Rate = {}
tEidalAdha2015_Barbecue_Rate["Cooked"] = 10
tEidalAdha2015_Barbecue_Rate["CookedStun"] = 3
tEidalAdha2015_Barbecue_Rate["CookedLoss"] = 3
tEidalAdha2015_Barbecue_Rate["Explorer"] = 10
tEidalAdha2015_Barbecue_Rate["ExplorerFail1"] = 1
tEidalAdha2015_Barbecue_Rate["ExplorerFail2"] = 1


local tEidalAdha2015_Barbecue_Pos ={}
tEidalAdha2015_Barbecue_Pos["MapId"] = 1002
tEidalAdha2015_Barbecue_Pos[16914] = {}
tEidalAdha2015_Barbecue_Pos[16914]["CellX"] = 300
tEidalAdha2015_Barbecue_Pos[16914]["CellY"] = 371
tEidalAdha2015_Barbecue_Pos[16909] = {}
tEidalAdha2015_Barbecue_Pos[16909]["CellX"] = 292
tEidalAdha2015_Barbecue_Pos[16909]["CellY"] = 364
tEidalAdha2015_Barbecue_Pos[16909]["Distance"] = 5

local tEidalAdha2015_Barbecue_Stc = {}
tEidalAdha2015_Barbecue_Stc["Phase"] = {}
tEidalAdha2015_Barbecue_Stc["Phase"]["EventType"] = 127
tEidalAdha2015_Barbecue_Stc["Phase"]["DataType"] = 87
tEidalAdha2015_Barbecue_Stc["Cook"] = {}
tEidalAdha2015_Barbecue_Stc["Cook"]["EventType"] = 127
tEidalAdha2015_Barbecue_Stc["Cook"]["DataType"] = 90

local tEidalAdha2015_Barbecue_Phase = {}
tEidalAdha2015_Barbecue_Phase["ReceiveTask"] = 1
tEidalAdha2015_Barbecue_Phase["CompleteTask"] = 2
tEidalAdha2015_Barbecue_Phase["GetReward"] = 3

local tEidalAdha2015_Barbecue_Effect = {}
tEidalAdha2015_Barbecue_Effect["Stun"] = "faint10"
tEidalAdha2015_Barbecue_Effect["LossLife"] = "BloodGhost-4"
tEidalAdha2015_Barbecue_Effect["Normal"] = "zf2-e280"
tEidalAdha2015_Barbecue_Effect["Success"] = "nicety40"

local tEidalAdha2015_Barbecue_ItemId = {}
tEidalAdha2015_Barbecue_ItemId["FreshLamb"] = 3006909
tEidalAdha2015_Barbecue_ItemId["Spice"] = 3006910
tEidalAdha2015_Barbecue_ItemId["PickledLamb"] = 3006911
tEidalAdha2015_Barbecue_ItemId["CookedLamb"] = 3006912
tEidalAdha2015_Barbecue_ItemId["PackLetter"] = 3006914

local tEidalAdha2015_Barbecue_Log = {}
tEidalAdha2015_Barbecue_Log["PackLetterExp"] = "0,0,3006914,1,10002255,2,4,30"
tEidalAdha2015_Barbecue_Log["PackLetterCult"] = "0,0,3006914,1,10002255,2,6,30"

tEidalAdha2015_Barbecue_Log["FreshLambOrSpice"] = "0,0,0,0,10002253,1[1],%s,1"
tEidalAdha2015_Barbecue_Log["DropItem"] = "0,0,%s,1,10002253,3,0,0"
tEidalAdha2015_Barbecue_Log["PickledLamb"] = "0,0,3006909[3006910],1[1],10002253,1[1],3006911,1"
tEidalAdha2015_Barbecue_Log["DropPickledLamb"] = "0,0,3006911,1,10002253,3,0,0"
tEidalAdha2015_Barbecue_Log["CookedLamb"] = "0,0,3006911,1,10002253,1[2],3006912,1"
tEidalAdha2015_Barbecue_Log["DropCookedLamb"] = "0,0,3006912,1,10002253,3,0,0"
tEidalAdha2015_Barbecue_Log["Stun"] = "0,0,3006912,1,10002253,2,1096,55"
tEidalAdha2015_Barbecue_Log["LossLife"] = "0,0,3006912,1,10002253,2,1510,1"
tEidalAdha2015_Barbecue_Log["EatCookedLamb"] = "0,0,3006912,1,10002253,2,3003625,1"
--节日礼包
tEidalAdha2015_Barbecue_Log["FestivalId"] = 3307
tEidalAdha2015_Barbecue_Log["LogId"] = 10002253

-----------------------------------逻辑部分------------------------------------------
math.randomseed(os.time())

--领取鲜嫩羊肉/孜然
function EidalAdha2015_Barbecue_ApplyLambOrSpice(nNpcId)
	--先行检测时间
	if not Sys_ChkFullTime(tEidalAdha2015_Barbecue_Data["Time"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
		--隔天清理
	local nBarbecueEvent = tEidalAdha2015_Barbecue_Stc["Phase"]["EventType"]
	local nBarbecueType = tEidalAdha2015_Barbecue_Stc["Phase"]["DataType"]
	local nCookEvent = tEidalAdha2015_Barbecue_Stc["Cook"]["EventType"]
	local nCookType = tEidalAdha2015_Barbecue_Stc["Cook"]["DataType"]
	if Task_ChkStcValue(nBarbecueEvent,nBarbecueType,">=",tEidalAdha2015_Barbecue_Phase["GetReward"]) then
		--已隔天
		if Task_StcInterval(nBarbecueEvent,nBarbecueType,1,4) then
			EidalAdha2015_Barbecue_AhFreshMeat(2)
			Task_SetStatistic(nBarbecueEvent,nBarbecueType,0,1,0)
			Task_SetStatistic(nCookEvent,nCookType,0,1,0)
			Task_SetStcTimestamp(nBarbecueEvent,nBarbecueType,0)
			EidalAdha2015_Ceremony_ResetAllStc()
		--已完成过,未隔天
		else
			Sys_MsgBox(tEidalAdha2015_Barbecue_Text["UncleLamb"]["SysMsg2"])
			return
		end
	end
	--身上携带极品孜然羊肉
	if Item_ChkItem(tEidalAdha2015_Barbecue_ItemId["CookedLamb"]) then
		Sys_MsgBox(tEidalAdha2015_Barbecue_Text["UncleLamb"]["SysMsg3"])
		return
	end
	--当天完成了烧烤之后丢弃极品孜然羊肉==2
	if Task_ChkStcValue(nBarbecueEvent,nBarbecueType,"==",tEidalAdha2015_Barbecue_Phase["CompleteTask"]) then
		Task_SetStatistic(nBarbecueEvent,nBarbecueType,tEidalAdha2015_Barbecue_Phase["ReceiveTask"],1,0)
		Task_SetStcTimestamp(nBarbecueEvent,nBarbecueType,0)
	end
	--等级不足
	if not User_JudgeLevelAndMetempsychosis(tEidalAdha2015_Barbecue_Data["MinLev"],tEidalAdha2015_Barbecue_Data["MinMeto"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	--背包已满
	if not User_CheckLeftSpace(tEidalAdha2015_Barbecue_Data["SpaceForMateria"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	--已有鲜肉/孜然的情况
	if Item_ChkItem(tEidalAdha2015_Barbecue_ItemId["FreshLamb"]) and Item_ChkItem(tEidalAdha2015_Barbecue_ItemId["Spice"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	--已有腌肉的情况
	if Item_ChkItem(tEidalAdha2015_Barbecue_ItemId["PickledLamb"]) then
			LinkNpcGossipFunc_New(nNpcId,"2-4")
			return
	end
	--第1次领取phase=0    =>写入掩码
	if Task_ChkStcValue(nBarbecueEvent,nBarbecueType,"==",0) then
		EidalAdha2015_Barbecue_AhFreshMeat(1)
		Task_SetStatistic(nBarbecueEvent,nBarbecueType,tEidalAdha2015_Barbecue_Phase["ReceiveTask"],1,0)
		Task_SetStcTimestamp(nBarbecueEvent,nBarbecueType,0)
		Sys_SaveActionFestivalLog(string.format(tEidalAdha2015_Barbecue_Log["FreshLambOrSpice"],nItemId))
	end
	--第1/2次领取及补领
	local tDelItemID = {tEidalAdha2015_Barbecue_ItemId["FreshLamb"],tEidalAdha2015_Barbecue_ItemId["Spice"]}
	for _,v in ipairs(tDelItemID) do
		if Item_ChkItem(v) then
			if Item_DelAllItemByType(v) then
			end
		end
		Item_AddItem(v)
	end
	Sys_MsgBox(tEidalAdha2015_Barbecue_Text["UncleLamb"]["GetMateria"])
end

function EidalAdha2015_Barbecue_Cook(nNpcId)
		--先行检测时间
	if not Sys_ChkFullTime(tEidalAdha2015_Barbecue_Data["Time"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	local nBarbecueEvent = tEidalAdha2015_Barbecue_Stc["Phase"]["EventType"]
	local nBarbecueType = tEidalAdha2015_Barbecue_Stc["Phase"]["DataType"]
	if Task_ChkStcValue(nBarbecueEvent,nBarbecueType,">=",tEidalAdha2015_Barbecue_Phase["GetReward"]) then
		Sys_MsgBox(tEidalAdha2015_Barbecue_Text["Fire"]["SysMsg1"])
		return
	end
	--完成烧烤,身上携带极品孜然羊肉
	if Item_ChkItem(tEidalAdha2015_Barbecue_ItemId["CookedLamb"]) and Task_ChkStcValue(nBarbecueEvent,nBarbecueType,">=",tEidalAdha2015_Barbecue_Phase["CompleteTask"]) then
		Sys_MsgBox(tEidalAdha2015_Barbecue_Text["UncleLamb"]["SysMsg3"])
		return
	end
	--未携带腌肉
	if not Item_ChkItem(tEidalAdha2015_Barbecue_ItemId["PickledLamb"]) then
		Sys_MsgBox(tEidalAdha2015_Barbecue_Text["Fire"]["SysMsg2"])
		return
	end
	--距离过远
	if not EidalAdha2015_Barbecue_ChkPos(nNpcId) then
		User_TalkChannel2005(tEidalAdha2015_Barbecue_Text["Fire"]["TalkCh1"])
		return
	end
	local nCookEvent = tEidalAdha2015_Barbecue_Stc["Cook"]["EventType"]
	local nCookType = tEidalAdha2015_Barbecue_Stc["Cook"]["DataType"]
	--时间不足,要求等待
	if Task_ChkStcValue(nCookEvent,nCookType,">=",1) and not Task_StcInterval(nCookEvent,nCookType,tEidalAdha2015_Barbecue_Data["CookRest"],0) then
		Sys_MsgBox(tEidalAdha2015_Barbecue_Text["Fire"]["SysMsg6"])
		return
	end
	--条件都满足,读条
	User_SetExplore(tEidalAdha2015_Barbecue_Data["CookTime"],tEidalAdha2015_Barbecue_Text["Fire"]["Operation"],220,"</F>EidalAdha2015_Barbecue_Explorer")
end
--距离判断
function EidalAdha2015_Barbecue_ChkPos(nNpcId)
	local nCellX = tEidalAdha2015_Barbecue_Pos[nNpcId]["CellX"]
	local nCellY = tEidalAdha2015_Barbecue_Pos[nNpcId]["CellY"]
	local nDistance = tEidalAdha2015_Barbecue_Pos[nNpcId]["Distance"]
	local nUserX = Get_UserPositionX()
	local nUserY = Get_UserPositionY()
	if math.abs(nUserX - nCellX) <= nDistance then
		if math.abs(nUserY - nCellY) <= nDistance then
			return true
		end
	end
	return false
end
--烧烤读条
function EidalAdha2015_Barbecue_Explorer(nUserId)
	local nCookEvent = tEidalAdha2015_Barbecue_Stc["Cook"]["EventType"]
	local nCookType = tEidalAdha2015_Barbecue_Stc["Cook"]["DataType"]
	Task_SetStatistic(nCookEvent,nCookType,1,1,nUserId)
	Task_SetStcTimestamp(nCookEvent,nCookType,0,nUserId)
	--检测腌肉
	if not Item_ChkItem(tEidalAdha2015_Barbecue_ItemId["PickledLamb"],1,0,nUserId) then
		Sys_MsgBox(tEidalAdha2015_Barbecue_Text["Fire"]["SysMsg2"],"NULL","NULL",nUserId)
		return
	end
	if Item_DelItem(tEidalAdha2015_Barbecue_ItemId["PickledLamb"],1,0,nUserId) then
	end
	local nRate = math.random(tEidalAdha2015_Barbecue_Rate["Explorer"])
	--失败1/2
	if nRate <= tEidalAdha2015_Barbecue_Rate["ExplorerFail1"] then
		Sys_MsgBox(tEidalAdha2015_Barbecue_Text["Fire"]["SysMsg3"],"NULL","NULL",nUserId)
		return
	end
	if nRate <= tEidalAdha2015_Barbecue_Rate["ExplorerFail1"] + tEidalAdha2015_Barbecue_Rate["ExplorerFail2"] then
		Sys_MsgBox(tEidalAdha2015_Barbecue_Text["Fire"]["SysMsg4"],"NULL","NULL",nUserId)
		return
	end
	--成功,掩码,羊肉,光效,log,对白
	local nBarbecueEvent = tEidalAdha2015_Barbecue_Stc["Phase"]["EventType"]
	local nBarbecueType = tEidalAdha2015_Barbecue_Stc["Phase"]["DataType"]
	Task_SetStatistic(nBarbecueEvent,nBarbecueType,tEidalAdha2015_Barbecue_Phase["CompleteTask"],1,nUserId)
	Task_SetStcTimestamp(nBarbecueEvent,nBarbecueType,0,nUserId)
	-- Item_AddItem(tEidalAdha2015_Barbecue_ItemId["CookedLamb"])
	Item_AddNewItem(tEidalAdha2015_Barbecue_ItemId["CookedLamb"],"",nUserId)
	User_EffectAdd("self",tEidalAdha2015_Barbecue_Effect["Success"],nUserId)
	Sys_SaveActionFestivalLog(tEidalAdha2015_Barbecue_Log["CookedLamb"],nUserId)
	Sys_MsgBox(tEidalAdha2015_Barbecue_Text["Fire"]["SysMsg5"],"NULL","NULL",nUserId)
end

--背包信使用函数
function EidalAdha2015_Barbecue_PackLetter(nItemId)
	--不在活动期间
	if not Sys_ChkFullTime(tEidalAdha2015_Barbecue_Data["Time"]) then
		User_TalkChannel2005(tEidalAdha2015_Barbecue_Text["PackLetter"]["OverTime"])
		if Item_ChkItem(nItemId) then
			if Item_DelItem(nItemId) then
			end
		end
		return
	end
	Sys_DialogText(tEidalAdha2015_Barbecue_Text["PackLetter"]["Text111"])
	Sys_DialogOption(tEidalAdha2015_Barbecue_Text["PackLetter"]["Option1"],"</F>EidalAdha2015_Barbecue_BurnLetter</N>3006914</N>16914")
	Sys_DialogItemFace(nItemId)
	Sys_DialogEnd()
end

--阅后即焚,并且寻路
function EidalAdha2015_Barbecue_BurnLetter(nItemId,nNpcId)
	if Item_ChkItem(nItemId) then
		if Item_DelItem(nItemId) then
		end
	end
	--获得修行值
	User_AddCultivation(tEidalAdha2015_Barbecue_Data["PackLetterCult"])
	Sys_SaveActionFestivalLog(tEidalAdha2015_Barbecue_Log["PackLetterCult"])
	User_TalkChannel2005(tEidalAdha2015_Barbecue_Text["PackLetter"]["RewardCultivation"])
	local nMapId = tEidalAdha2015_Barbecue_Pos["MapId"]
	local nCellX = tEidalAdha2015_Barbecue_Pos[nNpcId]["CellX"]
	local nCellY = tEidalAdha2015_Barbecue_Pos[nNpcId]["CellY"]
	Sys_GotoSomeWhere(nCellX,nCellY,nMapId,nNpcId)
end

--鲜嫩羊肉和特调孜然接到此函数
function EidalAdha2015_Barbecue_FreshMateria(nItemId)
	--非活动期间
	if not Sys_ChkFullTime(tEidalAdha2015_Barbecue_Data["Time"]) then
		if Item_ChkItem(nItemId) then
			if Item_DelItem(nItemId) then
			end
		end
		Sys_SaveActionFestivalLog(string.format(tEidalAdha2015_Barbecue_Log["DropItem"],nItemId))
		User_TalkChannel2005(tEidalAdha2015_Barbecue_Text["FreshLamb"]["TalkCh1"])
		return
	end
	local nBarbecueEvent = tEidalAdha2015_Barbecue_Stc["Phase"]["EventType"]
	local nBarbecueType = tEidalAdha2015_Barbecue_Stc["Phase"]["DataType"]
	local nBarbecuephase = Get_UserStatisticValue(nBarbecueEvent,nBarbecueType)
	--领取肉隔天
	if Task_ChkStcValue(nBarbecueEvent,nBarbecueType,"<",tEidalAdha2015_Barbecue_Phase["ReceiveTask"]) or Task_StcInterval(nBarbecueEvent,nBarbecueType,1,4) then
		EidalAdha2015_Barbecue_AhFreshMeat(1)
		return
	end
	--鲜肉和孜然都不可缺
	if not (Item_ChkItem(tEidalAdha2015_Barbecue_ItemId["FreshLamb"]) and Item_ChkItem(tEidalAdha2015_Barbecue_ItemId["Spice"])) then
		User_TalkChannel2005(tEidalAdha2015_Barbecue_Text["FreshLamb"]["TalkCh3"])
		return
	end
	--消耗鲜肉和孜然,获取腌制羊肉
	if Item_DelItem(tEidalAdha2015_Barbecue_ItemId["FreshLamb"]) then
	end
	if Item_DelItem(tEidalAdha2015_Barbecue_ItemId["Spice"]) then
	end
	Item_AddItem(tEidalAdha2015_Barbecue_ItemId["PickledLamb"])
	Sys_SaveActionFestivalLog(tEidalAdha2015_Barbecue_Log["PickledLamb"])
	Sys_MsgBox(tEidalAdha2015_Barbecue_Text["FreshLamb"]["SysMsg1"])
end
--食材过期清理
function EidalAdha2015_Barbecue_AhFreshMeat(nFirst)
	local bNeedDel = false
	local tDelItemID = {tEidalAdha2015_Barbecue_ItemId["FreshLamb"],tEidalAdha2015_Barbecue_ItemId["Spice"],tEidalAdha2015_Barbecue_ItemId["PickledLamb"]}
	for _,v in ipairs(tDelItemID) do
		if Item_ChkItem(v) then
			if Item_DelItem(v) then
			end
			bNeedDel = true
		end
	end
	local nBarbecueEvent = tEidalAdha2015_Barbecue_Stc["Phase"]["EventType"]
	local nBarbecueType = tEidalAdha2015_Barbecue_Stc["Phase"]["DataType"]
	Task_SetStcTimestamp(nBarbecueEvent,nBarbecueType,0)
	if bNeedDel == true and nFirst ~= 2 then
		User_TalkChannel2005(tEidalAdha2015_Barbecue_Text["FreshLamb"]["TalkCh2"])
	end
end

--腌制的羊肉
function EidalAdha2015_Barbecue_PickledLamb(nItemId)
	--非活动时间
	if not Sys_ChkFullTime(tEidalAdha2015_Barbecue_Data["Time"]) then
		if Item_ChkItem(nItemId) then 
			if Item_DelItem(nItemId) then
			end
		end
		Sys_SaveActionFestivalLog(tEidalAdha2015_Barbecue_Log["DropPickledLamb"])
		User_TalkChannel2005(tEidalAdha2015_Barbecue_Text["PickledLamb"]["TalkCh1"])
		return
	end
	User_TalkChannel2005(tEidalAdha2015_Barbecue_Text["PickledLamb"]["TalkCh2"])
end

--使用极品羊肉
function EidalAdha2015_Barbecue_CookedLamb(nItemId)
	local nBarbecueEvent = tEidalAdha2015_Barbecue_Stc["Phase"]["EventType"]
	local nBarbecueType = tEidalAdha2015_Barbecue_Stc["Phase"]["DataType"]
	--非活动时间
	if Item_ChkItem(nItemId) then 
		if Item_DelItem(nItemId) then
		end
	end
	if not Sys_ChkFullTime(tEidalAdha2015_Barbecue_Data["Time"]) then
		Sys_SaveActionFestivalLog(tEidalAdha2015_Barbecue_Log["DropCookedLamb"])
		User_TalkChannel2005(tEidalAdha2015_Barbecue_Text["CookedLamb"]["TalkCh1"])
		return
	end
	--隔天
	if Task_ChkStcValue(nBarbecueEvent,nBarbecueType,"<",tEidalAdha2015_Barbecue_Phase["CompleteTask"]) then
		EidalAdha2015_Barbecue_AhFreshMeat(2)
		return
	end
	if Task_StcInterval(nBarbecueEvent,nBarbecueType,1,4) then
		local nRate = math.random(tEidalAdha2015_Barbecue_Rate["Cooked"])
		--晕眩10秒
		if nRate <= tEidalAdha2015_Barbecue_Rate["CookedStun"] then
			local nUserId = Get_UserId()
			User_AddRoleStatus(tEidalAdha2015_Barbecue_Data["Stun"],0,0,nUserId)
			User_EffectAdd("self",tEidalAdha2015_Barbecue_Effect["Stun"])
			Sys_SaveActionFestivalLog(tEidalAdha2015_Barbecue_Log["Stun"])
			User_TalkChannel2005(tEidalAdha2015_Barbecue_Text["CookedLamb"]["TalkCh2"])
			return
		--损失1%血量
		elseif nRate <= tEidalAdha2015_Barbecue_Rate["CookedStun"] + tEidalAdha2015_Barbecue_Rate["CookedLoss"] then 
			User_DecLifePercent(tEidalAdha2015_Barbecue_Data["DecLifePec"],1)
			User_EffectAdd("self",tEidalAdha2015_Barbecue_Effect["LossLife"])
			Sys_SaveActionFestivalLog(tEidalAdha2015_Barbecue_Log["LossLife"])
			User_TalkChannel2005(tEidalAdha2015_Barbecue_Text["CookedLamb"]["TalkCh3"])
			return
		--提示
		else
			Task_SetStatistic(nBarbecueEvent,nBarbecueType,0,1,0)
			Task_SetStcTimestamp(nBarbecueEvent,nBarbecueType,0)
			User_TalkChannel2005(tEidalAdha2015_Barbecue_Text["CookedLamb"]["TalkCh4"])
			return
		end
	end
	--未隔天,确认步骤
	if Task_ChkStcValue(nBarbecueEvent,nBarbecueType,"==",tEidalAdha2015_Barbecue_Phase["CompleteTask"]) then
		Task_SetStatistic(nBarbecueEvent,nBarbecueType,tEidalAdha2015_Barbecue_Phase["GetReward"],1,0)
		Task_SetStcTimestamp(nBarbecueEvent,nBarbecueType,0)
		Sys_SaveActionFestivalLog(tEidalAdha2015_Barbecue_Log["EatCookedLamb"])
		User_EffectAdd("self",tEidalAdha2015_Barbecue_Effect["Normal"])
		--所有活动完成函数
		EidalAdha2015_Ceremony_AllComplete()
		--通用节日礼包
		FestivalGeneralPackage_GetGift(tEidalAdha2015_Barbecue_Log["FestivalId"],tEidalAdha2015_Barbecue_Log["LogId"])
		local nTalkNum = math.random(5,7)
		User_TalkChannel2005(tEidalAdha2015_Barbecue_Text["CookedLamb"]["TalkCh" .. nTalkNum])
	end
end

--------------------物品模板--------------------
--背包信改为阅后即焚
tItemFace[3006914] = 669
tItem[3006914] = tItem[3006914] or {}
tItem[3006914]["Function"] = function(nItemId,sItemName)
	EidalAdha2015_Barbecue_PackLetter(nItemId)
end

--鲜嫩羊肉,和特调孜然都接到同一个函数
tItem[3006909] = tItem[3006909] or {}
tItem[3006909]["Function"] = function(nItemId,sItemName)
	EidalAdha2015_Barbecue_FreshMateria(nItemId)
end
--特调孜然
tItem[3006910] = tItem[3006910] or {}
tItem[3006910]["Function"] = function(nItemId,sItemName)
	EidalAdha2015_Barbecue_FreshMateria(nItemId)
end

--腌制的羊肉
tItem[3006911] = tItem[3006911] or {}
tItem[3006911]["Function"] = function(nItemId,sItemName)
	EidalAdha2015_Barbecue_PickledLamb(nItemId)
end

--极品孜然羊肉
tItem[3006912] = tItem[3006912] or {}
tItem[3006912]["Function"] = function(nItemId,sItemName)
	EidalAdha2015_Barbecue_CookedLamb(nItemId)
end

---------------------Npc模板--------------------
--羊肉大叔
tNpcFace[3127] = 67
tNpcGossip[16908] = tNpcGossip[16908] or DefaultNpc:new{}
tNpcGossip[16908]["OptionHidden"] = 1
--活动前
tNpcGossip[16908]["Text1-1"] = {111,112,113,114}
tNpcGossip[16908]["Text111"] = tEidalAdha2015_Barbecue_Text["UncleLamb"]["Text111"]
tNpcGossip[16908]["Text112"] = tEidalAdha2015_Barbecue_Text["UncleLamb"]["Text112"]
tNpcGossip[16908]["Text113"] = tEidalAdha2015_Barbecue_Text["UncleLamb"]["Text113"]
tNpcGossip[16908]["Text114"] = tEidalAdha2015_Barbecue_Text["UncleLamb"]["Text114"]
tNpcGossip[16908]["tOption1-1"] = {1}
tNpcGossip[16908]["Option1"] = tEidalAdha2015_Barbecue_Text["UncleLamb"]["Option1"]
tNpcGossip[16908]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tEidalAdha2015_Barbecue_Data["BeforeTime"])
end
--活动中
tNpcGossip[16908]["Text1-2"] = {121,122,123}
tNpcGossip[16908]["Text121"] = tEidalAdha2015_Barbecue_Text["UncleLamb"]["Text121"]
tNpcGossip[16908]["Text122"] = tEidalAdha2015_Barbecue_Text["UncleLamb"]["Text122"]
tNpcGossip[16908]["Text123"] = tEidalAdha2015_Barbecue_Text["UncleLamb"]["Text123"]
tNpcGossip[16908]["tOption1-2"] = {2,4,5}
tNpcGossip[16908]["Option2"] = tEidalAdha2015_Barbecue_Text["UncleLamb"]["Option2"]
tNpcGossip[16908]["OptionFunc2"] = "EidalAdha2015_Barbecue_ApplyLambOrSpice</N>16908"
tNpcGossip[16908]["Option4"] = tEidalAdha2015_Barbecue_Text["UncleLamb"]["Option4"]
	tNpcGossip[16908]["OptionPoint4"] = "2-6"
tNpcGossip[16908]["Option5"] = tEidalAdha2015_Barbecue_Text["UncleLamb"]["Option5"]
tNpcGossip[16908]["ChkFunc1-2"] = function()
	return Sys_ChkFullTime(tEidalAdha2015_Barbecue_Data["Time"])
end
--活动后
tNpcGossip[16908]["Text1-3"] = {131,132}
tNpcGossip[16908]["Text131"] = tEidalAdha2015_Barbecue_Text["UncleLamb"]["Text131"]
tNpcGossip[16908]["Text132"] = tEidalAdha2015_Barbecue_Text["UncleLamb"]["Text132"]
tNpcGossip[16908]["tOption1-3"] = {6}
tNpcGossip[16908]["Option6"] = tEidalAdha2015_Barbecue_Text["UncleLamb"]["Option6"]
--等级不足
tNpcGossip[16908]["Text2-1"] = {211}
tNpcGossip[16908]["Text211"] = tEidalAdha2015_Barbecue_Text["UncleLamb"]["Text211"]
tNpcGossip[16908]["tOption2-1"] = {7}
tNpcGossip[16908]["Option7"] = tEidalAdha2015_Barbecue_Text["UncleLamb"]["Option7"]
--背包已满
tNpcGossip[16908]["Text2-2"] = {221}
tNpcGossip[16908]["Text221"] = tEidalAdha2015_Barbecue_Text["UncleLamb"]["Text221"]
tNpcGossip[16908]["tOption2-2"] = {8}
tNpcGossip[16908]["Option8"] = tEidalAdha2015_Barbecue_Text["UncleLamb"]["Option8"]
--已有1级物品补领羊肉/孜然
tNpcGossip[16908]["Text2-3"] = {231}
tNpcGossip[16908]["Text231"] = tEidalAdha2015_Barbecue_Text["UncleLamb"]["Text231"]
tNpcGossip[16908]["tOption2-3"] = {9}
tNpcGossip[16908]["Option9"] = tEidalAdha2015_Barbecue_Text["UncleLamb"]["Option9"]
--已有2级物品补领羊肉
tNpcGossip[16908]["Text2-4"] = {241}
tNpcGossip[16908]["Text241"] = tEidalAdha2015_Barbecue_Text["UncleLamb"]["Text241"]
tNpcGossip[16908]["tOption2-4"] = {10}
tNpcGossip[16908]["Option10"] = tEidalAdha2015_Barbecue_Text["UncleLamb"]["Option9"]
--活动说明
tNpcGossip[16908]["Text2-6"] = {261,262,263,264,265}
tNpcGossip[16908]["Text261"] = tEidalAdha2015_Barbecue_Text["UncleLamb"]["Text261"]
tNpcGossip[16908]["Text262"] = tEidalAdha2015_Barbecue_Text["UncleLamb"]["Text262"]
tNpcGossip[16908]["Text263"] = tEidalAdha2015_Barbecue_Text["UncleLamb"]["Text263"]
tNpcGossip[16908]["Text264"] = tEidalAdha2015_Barbecue_Text["UncleLamb"]["Text264"]
tNpcGossip[16908]["Text265"] = tEidalAdha2015_Barbecue_Text["UncleLamb"]["Text265"]
tNpcGossip[16908]["tOption2-6"] = {12}
tNpcGossip[16908]["Option12"] = tEidalAdha2015_Barbecue_Text["UncleLamb"]["Option10"]
	tNpcGossip[16908]["OptionPoint12"] = "1-2"

--篝火
tNpcGossip[16909] = tNpcGossip[16909] or DefaultNpc:new{}
tNpcGossip[16909]["OptionHidden"] = 1
--活动前
tNpcGossip[16909]["Text1-1"] = {111,112,113,114}
tNpcGossip[16909]["Text111"] = tEidalAdha2015_Barbecue_Text["Fire"]["Text111"]
tNpcGossip[16909]["Text112"] = tEidalAdha2015_Barbecue_Text["Fire"]["Text112"]
tNpcGossip[16909]["Text113"] = tEidalAdha2015_Barbecue_Text["Fire"]["Text113"]
tNpcGossip[16909]["Text114"] = tEidalAdha2015_Barbecue_Text["Fire"]["Text114"]
tNpcGossip[16909]["tOption1-1"] = {1}
tNpcGossip[16909]["Option1"] = tEidalAdha2015_Barbecue_Text["Fire"]["Option1"]
tNpcGossip[16909]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tEidalAdha2015_Barbecue_Data["BeforeTime"])
end
--活动中
tNpcGossip[16909]["Text1-2"] = {121,122,123}
tNpcGossip[16909]["Text121"] = tEidalAdha2015_Barbecue_Text["Fire"]["Text121"]
tNpcGossip[16909]["Text122"] = tEidalAdha2015_Barbecue_Text["Fire"]["Text122"]
tNpcGossip[16909]["Text123"] = tEidalAdha2015_Barbecue_Text["Fire"]["Text123"]
tNpcGossip[16909]["tOption1-2"] = {2,3}
tNpcGossip[16909]["Option2"] = tEidalAdha2015_Barbecue_Text["Fire"]["Option2"]
	tNpcGossip[16909]["OptionFunc2"] = "EidalAdha2015_Barbecue_Cook</N>16909"
tNpcGossip[16909]["Option3"] = tEidalAdha2015_Barbecue_Text["Fire"]["Option3"]
tNpcGossip[16909]["ChkFunc1-2"] = function()
	return Sys_ChkFullTime(tEidalAdha2015_Barbecue_Data["Time"])
end
--活动后
tNpcGossip[16909]["Text1-3"] = {131,132}
tNpcGossip[16909]["Text131"] = tEidalAdha2015_Barbecue_Text["Fire"]["Text131"]
tNpcGossip[16909]["Text132"] = tEidalAdha2015_Barbecue_Text["Fire"]["Text132"]
tNpcGossip[16909]["tOption1-3"] = {4}
tNpcGossip[16909]["Option4"] = tEidalAdha2015_Barbecue_Text["Fire"]["Option4"]
