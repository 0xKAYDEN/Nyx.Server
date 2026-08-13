------------------------------------------------------------------------------------
--Name:			150822[简体征服][活动脚本]双蛋活动之蛋宝净化论
--Purpose:		双蛋活动之蛋宝净化论
--Creator:		黄昕哲
--Created:		2015/08/22
------------------------------------------------------------------------------------
--[[
掩码说明
stc(137,91)用于记录任务进行的阶段
		=0表示无任务
		=1表示已接到任务,尚未开始擦彩蛋
		=2~6表示已接到任务,已经擦蛋数目
		=7表示已经获取奖励
stc(137,92)用于记录玩家当天已经被变形成彩蛋的次数
		上限为3
stc(137,93)-stc(137,97)用于存储玩家已经擦过的彩蛋id

stc(139,59)用于记录本次活动玩家是否已经领过礼包

全局数据说明
dyna_global_data 50944 用于限制新版本的圣诞嘉年华礼包及其奖励数量
		data0表示每天已经开出的背包数量,每天每服限制为5个
		data1表示每天已经开出的180天外套数量,每天每服限制为1个
		data2表示每天已经开出的永久外套数量,每天美服限制为1个
]]--
--前缀Christmas2015_Spy_

local tChristmas2015_Spy_Data = {}
	--时间限制
	tChristmas2015_Spy_Data["BeforeTime"] = "2017-01-01 00:00 2017-12-20 23:59"
	tChristmas2015_Spy_Data["DuringTime"] = "2017-12-21 00:00 2018-01-03 23:59"
	--等级限制
	tChristmas2015_Spy_Data["MinLev"] = 80
	tChristmas2015_Spy_Data["MinMes"] = 0
	
	--读条相关
	tChristmas2015_Spy_Data["ExploreTime"] = 2
	tChristmas2015_Spy_Data["ExploreAction"] = 220
	
	--变形相关
	tChristmas2015_Spy_Data["MonLookface"] = 232
	
	--需要擦拭的彩蛋数目
	tChristmas2015_Spy_Data["Goal"] = 5
	--玩家被变形次数上限
	tChristmas2015_Spy_Data["MaxTransform"] = 3
	
	--头像
	tChristmas2015_Spy_Data["Face"] = {}
		tChristmas2015_Spy_Data["Face"]["Host"] = 120
		tChristmas2015_Spy_Data["Face"]["Children"] = 68
	--熊孩子的lookface
	tChristmas2015_Spy_Data["Lookface"] = 38007
		--熊孩子的task0
	tChristmas2015_Spy_Data["ChildTask0"] = 94007653
	
	--擦蛋所需的距离
	tChristmas2015_Spy_Data["Distance"] = 7


	
	--全局表
	--data0表示每天已经开出的背包数量
	--data1表示每天已经开出的180天外套数量
	--data2表示每天已经开出的永久外套数量
	tChristmas2015_Spy_Data["Global"] = 50944

--掩码
local tChristmas2015_Spy_Stc = {}
	--stc(137,91)用于记录任务进行的阶段
	tChristmas2015_Spy_Stc["Phase"] = {}
		tChristmas2015_Spy_Stc["Phase"]["Event"] = 137
		tChristmas2015_Spy_Stc["Phase"]["Data"] = 91
		tChristmas2015_Spy_Stc["Phase"]["TaskStart"] = 1
		tChristmas2015_Spy_Stc["Phase"]["FirstEgg"] = 2
		tChristmas2015_Spy_Stc["Phase"]["LastEgg"] = 6
		tChristmas2015_Spy_Stc["Phase"]["GetReward"] = 7
	--stc(137,92)用于记录玩家当天已经被变形成彩蛋的次数
	tChristmas2015_Spy_Stc["Transform"] = {}
		tChristmas2015_Spy_Stc["Transform"]["Event"] = 137
		tChristmas2015_Spy_Stc["Transform"]["Data"] = 92
		tChristmas2015_Spy_Stc["Transform"]["Limit"] = 2
	--stc(137,93)-stc(137,97)用于存储玩家已经擦过的彩蛋id
	tChristmas2015_Spy_Stc["Egg"] = {}
		tChristmas2015_Spy_Stc["Egg"]["Event"] = 137
		tChristmas2015_Spy_Stc["Egg"]["Data1"] = 93
		tChristmas2015_Spy_Stc["Egg"]["Data2"] = 94
		tChristmas2015_Spy_Stc["Egg"]["Data3"] = 95
		tChristmas2015_Spy_Stc["Egg"]["Data4"] = 96
		tChristmas2015_Spy_Stc["Egg"]["Data5"] = 97
		
	--掩码记录玩家已经获取的礼包(每个玩家活动期间最多获得1个礼包)
	tChristmas2015_Spy_Stc["Total"] = {}
	tChristmas2015_Spy_Stc["Total"]["Event"] =139
	tChristmas2015_Spy_Stc["Total"]["Data"] = 59
	tChristmas2015_Spy_Stc["Total"]["Limit"] = 1
	

--概率相关
local tChristmas2015_Spy_Rate = {}
	tChristmas2015_Spy_Rate["Total"] = 1000000
	tChristmas2015_Spy_Rate["TouchFail"] = 600000
	tChristmas2015_Spy_Rate["GetPack"] = 20000
	tChristmas2015_Spy_Rate["PackLimit"] = 5
	
--圣诞嘉年华礼包开出的外套,分别为7天/30天/180天/永久
	tChristmas2015_Spy_Rate[1] = {}
	tChristmas2015_Spy_Rate[1]["Id"] = 188225
	tChristmas2015_Spy_Rate[1]["Attr"] = "0 0 0 10080 1 0 0 1"
	tChristmas2015_Spy_Rate[1]["Rate"] = 771208
	
	tChristmas2015_Spy_Rate[2] = {}
	tChristmas2015_Spy_Rate[2]["Id"] = 188225
	tChristmas2015_Spy_Rate[2]["Attr"] = "0 0 0 43200 1 0 0 1"
	tChristmas2015_Spy_Rate[2]["Rate"] = 192802
	
	tChristmas2015_Spy_Rate[3] = {}
	tChristmas2015_Spy_Rate[3]["Id"] = 188225
	tChristmas2015_Spy_Rate[3]["Attr"] = "0 0 0 259200 1 0 0 1"
	tChristmas2015_Spy_Rate[3]["Rate"] = 32134
	tChristmas2015_Spy_Rate[3]["Limit"] = 1
	
	tChristmas2015_Spy_Rate[4] = {}
	tChristmas2015_Spy_Rate[4]["Id"] = 188225
	tChristmas2015_Spy_Rate[4]["Attr"] = "0 0 0 0 0 0 0 1"
	tChristmas2015_Spy_Rate[4]["Rate"] = 3856
	tChristmas2015_Spy_Rate[4]["Limit"] = 1

--光效
local tChristmas2015_Spy_Effect = {}
	tChristmas2015_Spy_Effect["self"] = "self"
	tChristmas2015_Spy_Effect["Open"] = "born"
	tChristmas2015_Spy_Effect["GetPack"] = "red-flower-rain"
	--变形和移回彩蛋均有此光效
	tChristmas2015_Spy_Effect["Transform"] = "taoist-s"
	tChristmas2015_Spy_Effect["CleanEgg"] = "Intone"
	tChristmas2015_Spy_Effect["Complete"] = "angelwing"

--相关的id
local tChristmas2015_Spy_Id = {}
	tChristmas2015_Spy_Id["Item"] = {}
	tChristmas2015_Spy_Id["Item"]["Handkerchief"] = 3006769
	tChristmas2015_Spy_Id["Item"]["CarnivalPack"] = 3006768
	
	tChristmas2015_Spy_Id["Npc"] = {}
	--主持人
	tChristmas2015_Spy_Id["Npc"]["Host"] = 10871
	--15个彩蛋开始到结束的id
	tChristmas2015_Spy_Id["Npc"]["Egg1"] = 10872
	tChristmas2015_Spy_Id["Npc"]["Egg15"] = 10879
--坐标
local tChristmas2015_Spy_Pos = {}
tChristmas2015_Spy_Pos["MapId"] = 1002
--主持人坐标
tChristmas2015_Spy_Pos[10871] = {}
tChristmas2015_Spy_Pos[10871]["CellX"] = 355
tChristmas2015_Spy_Pos[10871]["CellY"] = 489
--寻路去找蛋的坐标
tChristmas2015_Spy_Pos["Egg"] = {}
tChristmas2015_Spy_Pos["Egg"]["CellX"] = 358
tChristmas2015_Spy_Pos["Egg"]["CellY"] = 493
--npc移出位置
tChristmas2015_Spy_Pos["Vault"] = {}
tChristmas2015_Spy_Pos["Vault"]["CellX"] = 50
tChristmas2015_Spy_Pos["Vault"]["CellY"] = 50
tChristmas2015_Spy_Pos["Vault"]["MapId"] = 5000
--蛋的实际坐标(10个)
tChristmas2015_Spy_Pos[10872] = {}
tChristmas2015_Spy_Pos[10872]["CellX"] = 358
tChristmas2015_Spy_Pos[10872]["CellY"] = 493
tChristmas2015_Spy_Pos[10873] = {}
tChristmas2015_Spy_Pos[10873]["CellX"] = 362
tChristmas2015_Spy_Pos[10873]["CellY"] = 493
tChristmas2015_Spy_Pos[10874] = {}
tChristmas2015_Spy_Pos[10874]["CellX"] = 366
tChristmas2015_Spy_Pos[10874]["CellY"] = 493
tChristmas2015_Spy_Pos[10875] = {}
tChristmas2015_Spy_Pos[10875]["CellX"] = 370
tChristmas2015_Spy_Pos[10875]["CellY"] = 493
tChristmas2015_Spy_Pos[10876] = {}
tChristmas2015_Spy_Pos[10876]["CellX"] = 374
tChristmas2015_Spy_Pos[10876]["CellY"] = 493
tChristmas2015_Spy_Pos[10877] = {}
tChristmas2015_Spy_Pos[10877]["CellX"] = 378
tChristmas2015_Spy_Pos[10877]["CellY"] = 493
tChristmas2015_Spy_Pos[10878] = {}
tChristmas2015_Spy_Pos[10878]["CellX"] = 382
tChristmas2015_Spy_Pos[10878]["CellY"] = 493
tChristmas2015_Spy_Pos[10879] = {}
tChristmas2015_Spy_Pos[10879]["CellX"] = 386
tChristmas2015_Spy_Pos[10879]["CellY"] = 493
-- tChristmas2015_Spy_Pos[10880] = {}
-- tChristmas2015_Spy_Pos[10880]["CellX"] = 297
-- tChristmas2015_Spy_Pos[10880]["CellY"] = 392
-- tChristmas2015_Spy_Pos[10881] = {}
-- tChristmas2015_Spy_Pos[10881]["CellX"] = 300
-- tChristmas2015_Spy_Pos[10881]["CellY"] = 392


--玩家被变形被眩晕相关
local tChristmas2015_Spy_Mud = {}
--变形
	tChristmas2015_Spy_Mud["MagicType"] = 10515
	tChristmas2015_Spy_Mud["MagicLev"] = 0
	tChristmas2015_Spy_Mud["MonsterType"] = 2752
	tChristmas2015_Spy_Mud["TransformTime"] = 5
--眩晕
	tChristmas2015_Spy_Mud["Status"] = 55
	tChristmas2015_Spy_Mud["Power"] = 200
	tChristmas2015_Spy_Mud["Secs"] = 5
	tChristmas2015_Spy_Mud["Times"] = 1
	tChristmas2015_Spy_Mud["RemainTime"] = 5
	tChristmas2015_Spy_Mud["EndTime"] = 1
	tChristmas2015_Spy_Mud["Recordable"] = 1

--log相关
local tChristmas2015_Spy_Log = {}
	tChristmas2015_Spy_Log["FestivalId"] = 3471
--任务阶段
	tChristmas2015_Spy_Log["Task"] = 12000207
	tChristmas2015_Spy_Log["TaskStart"] = "0,0,0,0,12000207,1,3006769,1"
	tChristmas2015_Spy_Log["Clean"] = "0,0,0,0,12000207,%s,0,0"
	tChristmas2015_Spy_Log["Finish"] = "0,0,3006769,1,12000207,7,3003625,1"
--礼包相关
	tChristmas2015_Spy_Log["Pack"] = 12000208
	--丢弃礼包的log
	tChristmas2015_Spy_Log["PackAftime"] = "0,0,3006768,1,12000208,2,0,0"
	--打开礼包获取外套的log
	tChristmas2015_Spy_Log["PackSuit"] = "0,0,3006768,1,12000208,2,%s,1"
	--获取礼包
	tChristmas2015_Spy_Log["GetPack"] ="0,0,0,0,12000208,1,3006768,1"



-----------------------------逻辑部分------------------------------------
---------------------------公用部分---------------------------
--每日重置所有掩码以及时间戳
function Christmas2015_Spy_ResetEveryDay()
	local nEventType = tChristmas2015_Spy_Stc["Phase"]["Event"]
	local nDataTypeStart = tChristmas2015_Spy_Stc["Phase"]["Data"]
	--已领取过奖励且已经隔天
	if not (Task_ChkStcValue(nEventType,nDataTypeStart,">=",tChristmas2015_Spy_Stc["Phase"]["GetReward"],0) and Task_StcInterval(nEventType,nDataTypeStart,1,4)) then
		return
	end
	local nDataTypeEnd = tChristmas2015_Spy_Stc["Egg"]["Data5"]
	--重置所有掩码
	for nDataType = nDataTypeStart,nDataTypeEnd do
		Task_SetStatistic(nEventType,nDataType,0,1)
	end
	--重置任务阶段掩码时间戳
	Task_SetStcTimestamp(nEventType,nDataTypeStart,0,0)
end

--检测掩码,用于选择出现的选项
function Christmas2015_Spy_ChkOption(sType)
	local nEvent = tChristmas2015_Spy_Stc[sType]["Event"]
	local nData = tChristmas2015_Spy_Stc[sType]["Data"]
	return Get_UserStatisticValue(nEvent,nData)
end

--自动寻路=>参数=npcid则寻路至npc,参数="Egg"则寻路至预设位置
function Christmas2015_Spy_AutoFindWay(nNpcId)
	local nMapId = tChristmas2015_Spy_Pos["MapId"]
	local nPosX = 0
	local nPosY = 0
	if nNpcId == "Egg" then
		nPosX = tChristmas2015_Spy_Pos["Egg"]["CellX"]
		nPosY = tChristmas2015_Spy_Pos["Egg"]["CellY"]
		nNpcId = nil
	else
		nNpcId = tonumber(nNpcId)
		nPosX = tChristmas2015_Spy_Pos[nNpcId]["CellX"]
		nPosY = tChristmas2015_Spy_Pos[nNpcId]["CellY"]
	end
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
end


--检测玩家和蛋的距离,当距离太远时,返回true
function Christmas2015_Spy_JudgeDistance()
	local nNpcId = Get_NpcId()
	local nEggX = Get_NpcPositionX(nNpcId)
	local nEggY = Get_NpcPositionY(nNpcId)
	local nPlayerX =  Get_UserPositionX()
	local nPlayerY =  Get_UserPositionY()
	local nDisOnX = math.abs(nEggX-nPlayerX)
	local nDisOnY = math.abs(nEggY-nPlayerY)
	if nDisOnX <= tChristmas2015_Spy_Data["Distance"] and nDisOnY <= tChristmas2015_Spy_Data["Distance"] then
		return false
	end
	return true
end


---------------------------主持人逻辑---------------------------
	--我来帮忙
function Christmas2015_Spy_ApplyTask(nNpcId)
	local nPhaseEvent = tChristmas2015_Spy_Stc["Phase"]["Event"]
	local nPhaseData = tChristmas2015_Spy_Stc["Phase"]["Data"]
	--时间检测
	if not Sys_ChkFullTime(tChristmas2015_Spy_Data["DuringTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	--等级不足
	if not User_JudgeLevelAndMetempsychosis(tChristmas2015_Spy_Data["MinLev"],tChristmas2015_Spy_Data["MinMes"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	--背包已满
	elseif not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	--已有任务
	elseif Task_ChkStcValue(nPhaseEvent,nPhaseData,">=",tChristmas2015_Spy_Stc["Phase"]["TaskStart"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
	--可以接到任务,改变掩码和时间戳.给与任务物品,log,开始自动寻路
	Task_SetStatistic(nPhaseEvent,nPhaseData,tChristmas2015_Spy_Stc["Phase"]["TaskStart"],1)
	Task_SetStcTimestamp(nPhaseEvent,nPhaseData,0,0)
	--假定玩家已有任务物品,先删除再给物品
	local nHandkerchiefId = tChristmas2015_Spy_Id["Item"]["Handkerchief"]
	if Item_ChkItem(nHandkerchiefId) and Item_DelItem(nHandkerchiefId) then
	end
	Item_AddItem(tChristmas2015_Spy_Id["Item"]["Handkerchief"])
	Christmas2015_Spy_AutoFindWay("Egg")
	Sys_SaveActionFestivalLog(tChristmas2015_Spy_Log["TaskStart"])
end

--补领手帕
function Christmas2015_Spy_ApplyItem(nNpcId)
	--检测时间
	if not Sys_ChkFullTime(tChristmas2015_Spy_Data["DuringTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	--检测是否已有手帕
	if Item_ChkItem(tChristmas2015_Spy_Id["Item"]["Handkerchief"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	--检测背包空间
	elseif not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"3-3")
		return
	end
	--可以补领手帕
	local nHandkerchiefId = tChristmas2015_Spy_Id["Item"]["Handkerchief"]
	if Item_ChkItem(nHandkerchiefId) and Item_DelItem(nHandkerchiefId) then
	end
	Item_AddItem(tChristmas2015_Spy_Id["Item"]["Handkerchief"])
	Christmas2015_Spy_AutoFindWay("Egg")
	LinkNpcGossipFunc_New(nNpcId,"3-1")
end

--我要礼物
function Christmas2015_Spy_ApplyReward(nNpcId)
	local nPhaseEvent = tChristmas2015_Spy_Stc["Phase"]["Event"]
	local nPhaseData = tChristmas2015_Spy_Stc["Phase"]["Data"]
	--时间检测
	if not Sys_ChkFullTime(tChristmas2015_Spy_Data["DuringTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	--已领过
	elseif Task_ChkStcValue(nPhaseEvent,nPhaseData,">=",tChristmas2015_Spy_Stc["Phase"]["GetReward"]) then
		LinkNpcGossipFunc_New(nNpcId,"4-1")
		return
	--未完成任务
	elseif Task_ChkStcValue(nPhaseEvent,nPhaseData,"<",tChristmas2015_Spy_Stc["Phase"]["LastEgg"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	--背包已满
	elseif not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"4-3")
		return
	end
	--领取奖励礼包,删除手帕.改变掩码,节日礼包,对白,log
	local nHandkerchiefId = tChristmas2015_Spy_Id["Item"]["Handkerchief"]
	if Item_ChkItem(nHandkerchiefId) and Item_DelItem(nHandkerchiefId) then
	end
	Task_SetStatistic(nPhaseEvent,nPhaseData,tChristmas2015_Spy_Stc["Phase"]["GetReward"],1)
	Task_SetStcTimestamp(nPhaseEvent,nPhaseData,0,0)
	FestivalGeneralPackage_GetGift(tChristmas2015_Spy_Log["FestivalId"],tChristmas2015_Spy_Log["Task"])
	User_EffectAdd(tChristmas2015_Spy_Effect["self"],tChristmas2015_Spy_Effect["Complete"])
	LinkNpcGossipFunc_New(nNpcId,"4-4")
	Sys_SaveActionFestivalLog(tChristmas2015_Spy_Log["Finish"])
end


---------------------------彩蛋相关逻辑---------------------------
--彩蛋对白的预先判断,当前蛋可擦返回true
function Christmas2015_Spy_PreJudgeEgg(nNpcId)
	if nNpcId == nil then
		nNpcId = Get_NpcId()
	end
	--判断擦蛋数目
	local nPhaseEvent = tChristmas2015_Spy_Stc["Phase"]["Event"]
	local nPhaseData = tChristmas2015_Spy_Stc["Phase"]["Data"]
	--已领取奖励
	if Task_ChkStcValue(nPhaseEvent,nPhaseData,">=",tChristmas2015_Spy_Stc["Phase"]["GetReward"],0) then
		return false
	end
	--已擦拭过5个蛋
	if Task_ChkStcValue(nPhaseEvent,nPhaseData,">=",tChristmas2015_Spy_Stc["Phase"]["LastEgg"],0) then
		User_TalkChannel2005(tChristmas2015_Spy_Text["Egg"]["Finish"])
		if Task_ChkStcValue(nPhaseEvent,nPhaseData,"<",tChristmas2015_Spy_Stc["Phase"]["GetReward"],0) then
			Christmas2015_Spy_AutoFindWay(tChristmas2015_Spy_Id["Npc"]["Host"])
		end
		return false
	--判断这个蛋是否已经擦过了
	elseif Christmas2015_Spy_EggChk(nNpcId) then
		return false
	end
	return true
end

--检测当前蛋是否已经被擦过(遍历掩码),已擦过返回true,未擦过反馈false
function Christmas2015_Spy_EggChk(nNpcId)
	local nEggEvent = tChristmas2015_Spy_Stc["Egg"]["Event"]
	local nEggData = 0
	for i = 1,5 do
		nEggData = tChristmas2015_Spy_Stc["Egg"]["Data" .. i]
		if Task_ChkStcValue(nEggEvent,nEggData,"==",nNpcId,0) then
			return true
		end
	end
	return false
end

--未变形的玩家点击彩蛋时,消灭所有熊孩子,移回所有彩蛋
function Christmas2015_Spy_ChildDisappear()
	--变形的玩家
	if Get_UserTransformId(0) ~= -1 then
		return
	end
	local sChildName = tChristmas2015_Spy_Text["Child"]
	--删除熊孩子
	Npc_DelDynaNpc(tChristmas2015_Spy_Pos["MapId"],"name",sChildName)
	--移回所有彩蛋
	for nVNpcId = tChristmas2015_Spy_Id["Npc"]["Egg1"],tChristmas2015_Spy_Id["Npc"]["Egg15"] do
		local nMapId = Get_NpcMapID(nVNpcId)
		local nGardenMapId = tChristmas2015_Spy_Pos["MapId"]
		if nMapId == tChristmas2015_Spy_Pos["Vault"]["MapId"] then
			local nCellX = tChristmas2015_Spy_Pos[nVNpcId]["CellX"]
			local nCellY = tChristmas2015_Spy_Pos[nVNpcId]["CellY"]
			Map_Effect(nGardenMapId,nCellX,nCellY,tChristmas2015_Spy_Effect["Transform"])
			Npc_MoveNpcPos(nVNpcId,nGardenMapId,nCellX,nCellY)
		end
	end
end

--选择帮忙擦拭
function Christmas2015_Spy_EggDialog()
	local nNpcId = Get_NpcId()
	--判断时间
	if not Sys_ChkFullTime(tChristmas2015_Spy_Data["DuringTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	--时间正确,判断是否携带手帕
	if not Item_ChkItem(tChristmas2015_Spy_Id["Item"]["Handkerchief"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	--携带手帕,检测掩码
	--已擦拭过5个蛋
	if not Christmas2015_Spy_PreJudgeEgg(nNpcId) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	--掩码正确,读条擦拭
	local nExploreTime = tChristmas2015_Spy_Data["ExploreTime"]
	local nExploreAction = tChristmas2015_Spy_Data["ExploreAction"]
	User_SetExplore(nExploreTime,tChristmas2015_Spy_Text["Casting"],nExploreAction,"Christmas2015_Spy_CleanEgg</N>" .. nNpcId)
end

--读条擦拭=>0.6熊孩子,0.4正常,额外有2%给礼包
function Christmas2015_Spy_CleanEgg(nNpcId,nUserId)
	local nCleanRand = math.random(tChristmas2015_Spy_Rate["Total"])
	local nPhaseEvent = tChristmas2015_Spy_Stc["Phase"]["Event"]
	local nPhaseData = tChristmas2015_Spy_Stc["Phase"]["Data"]
	local nMudEvent = tChristmas2015_Spy_Stc["Transform"]["Event"]
	local nMudData = tChristmas2015_Spy_Stc["Transform"]["Data"]
	--当今天被坑不满3次而且脸黑轮到0.6概率时出熊孩子
	if (nCleanRand <= tChristmas2015_Spy_Rate["TouchFail"]) and Task_ChkStcValue(nMudEvent,nMudData,"<=",tChristmas2015_Spy_Stc["Transform"]["Limit"],nUserId) then
		Christmas2015_Spy_ChildAppear(nNpcId,nUserId)
		return
	end
	--不出熊孩子,正常擦拭,存储当前蛋id,阶段+1,光效
	local nPhase = Get_UserStatisticValue(nPhaseEvent,nPhaseData,nUserId)
	local nCleanEvent = tChristmas2015_Spy_Stc["Egg"]["Event"]
	local nCleanData = tChristmas2015_Spy_Stc["Egg"]["Data" .. nPhase]
	nPhase = nPhase + 1
	Task_SetStatistic(nCleanEvent,nCleanData,nNpcId,1,nUserId)
	Task_SetStatistic(nPhaseEvent,nPhaseData,nPhase,1,nUserId)
	local sTaskLog = string.format(tChristmas2015_Spy_Log["Clean"],nPhase)
	Sys_SaveActionFestivalLog(sTaskLog,nUserId)
	local nEffectMapId = tChristmas2015_Spy_Pos["MapId"]
	local nEffectCellX = tChristmas2015_Spy_Pos[nNpcId]["CellX"]
	local nEffectCellY = tChristmas2015_Spy_Pos[nNpcId]["CellY"]
	Map_Effect(nEffectMapId,nEffectCellX,nEffectCellY,tChristmas2015_Spy_Effect["CleanEgg"])
	--礼包判断
	Christmas2015_Spy_PackJudge(nUserId)
		--判断擦蛋数目
	--根据完成阶段出对白
	if nPhase < tChristmas2015_Spy_Stc["Phase"]["GetReward"] then
		User_TalkChannel2005(tChristmas2015_Spy_Text["Egg"]["Success"],nUserId)
	else
		User_TalkChannel2005(tChristmas2015_Spy_Text["Egg"]["Finish"],nUserId)
	end
	--已擦拭过5个蛋
	if Task_ChkStcValue(nPhaseEvent,nPhaseData,">=",tChristmas2015_Spy_Stc["Phase"]["LastEgg"],nUserId) then
		User_TalkChannel2005(tChristmas2015_Spy_Text["Egg"]["Finish"],nUserId)
		if Task_ChkStcValue(nPhaseEvent,nPhaseData,"<",tChristmas2015_Spy_Stc["Phase"]["GetReward"],nUserId) then
			User_SetTimer(1,"Sys_GotoSomeWhere</N>281</N>383</N>1002</N>10871",1)
			return
		end
	end
end

---------------------------熊孩子相关逻辑---------------------------
function Christmas2015_Spy_ChildAppear(nNpcId,nUserId)
	--野生的熊孩子出现了,掩码,移走彩蛋,变形,眩晕玩家,光效,刷新动态npc,对白
	local nMudEvent = tChristmas2015_Spy_Stc["Transform"]["Event"]
	local nMudData = tChristmas2015_Spy_Stc["Transform"]["Data"]
	--记录玩家被坑次数
	local nMudNum = Get_UserStatisticValue(nMudEvent,nMudData,0) + 1
	Task_SetStatistic(nMudEvent,nMudData,nMudNum,1,nUserId)
	--把npc移到小黑屋去
	local nVMapId = tChristmas2015_Spy_Pos["Vault"]["MapId"]
	local nVCellX = tChristmas2015_Spy_Pos["Vault"]["CellX"]
	local nVCellY = tChristmas2015_Spy_Pos["Vault"]["CellY"]
	Npc_MoveNpcPos(nNpcId,nVMapId,nVCellX,nVCellY)
	--读取被移走的npc位置,原地创建一个熊孩子,task0接到sql的task0上
	local nNpcMapId = tChristmas2015_Spy_Pos["MapId"]
	local nNpcCellX = tChristmas2015_Spy_Pos[nNpcId]["CellX"]
	local nNpcCellY = tChristmas2015_Spy_Pos[nNpcId]["CellY"]
	local nLookface = tChristmas2015_Spy_Data["Lookface"]
	local nTask0 = tChristmas2015_Spy_Data["ChildTask0"]
	local sChildName = tChristmas2015_Spy_Text["Child"]
	--删除熊孩子
	Npc_DelDynaNpc(tChristmas2015_Spy_Pos["MapId"],"name",sChildName)
	Npc_CreateDynaNpc(tChristmas2015_Spy_Text["Child"],2,0,nLookface,0,0,nNpcMapId,nNpcCellX,nNpcCellY,0,0,0,nTask0)
	--光效
	User_EffectAdd(tChristmas2015_Spy_Effect["self"],tChristmas2015_Spy_Effect["Transform"],nUserId)
		--变形玩家
	local nMagicId = tChristmas2015_Spy_Mud["MagicType"]
	local nMagicLev = tChristmas2015_Spy_Mud["MagicLev"]
	local nMonTypeId = tChristmas2015_Spy_Mud["MonsterType"]
	local nTransformTime = tChristmas2015_Spy_Mud["TransformTime"]
	User_TransForm(nMagicId,nMagicLev,nMonTypeId,nTransformTime,nUserId)
		--眩晕玩家
	local nStunStatus = tChristmas2015_Spy_Mud["Status"]
	local nStunPower = tChristmas2015_Spy_Mud["Power"]
	local nStunSecs = tChristmas2015_Spy_Mud["Secs"]
	local nStunTimes = tChristmas2015_Spy_Mud["Times"]
	local nStunRemainTime = tChristmas2015_Spy_Mud["RemainTime"]
	local nStunEndTime = tChristmas2015_Spy_Mud["EndTime"]
	local nStunRecordable = tChristmas2015_Spy_Mud["Recordable"]
	-- local nUserId = Get_UserId()
	User_AddRoleStatus(nStunStatus,nStunPower,nStunSecs,nStunTimes,nStunRemainTime,nStunEndTime,nStunRecordable,0,0,nUserId)
	--嘲讽对白
	User_TalkChannel2005(tChristmas2015_Spy_Text["Egg"]["Mud1"],nUserId)
end

--点击熊孩子
function Christmas2015_Spy_ChildClick()
	Christmas2015_Spy_ChildDisappear()
end

---------------------------礼包相关逻辑---------------------------
--2%收到礼包
function Christmas2015_Spy_PackJudge(nUserId)
	local nGlobalDataId = tChristmas2015_Spy_Data["Global"]
	local nTdPackGetNum = Get_SysDynaGlobalData0(nGlobalDataId)

	--玩家只能获得1次礼包
	local nTotalEvent = tChristmas2015_Spy_Stc["Total"]["Event"]
	local nTotalType = tChristmas2015_Spy_Stc["Total"]["Data"]
	local nTotalLimit = tChristmas2015_Spy_Stc["Total"]["Limit"]
	if Task_ChkStcValue(nTotalEvent,nTotalType,">=",nTotalLimit,nUserId) then
		return
	end
	--限制礼包产出,并且包里有空位
	if (nTdPackGetNum >= tChristmas2015_Spy_Rate["PackLimit"]) or not User_CheckLeftSpace(1,nUserId) then
		return
	end
	--当天礼包产出未满,按一定概率给礼包:加掩码,广播,给礼包,光效,log
	local nPackRand = math.random(tChristmas2015_Spy_Rate["Total"])
	if nPackRand <= tChristmas2015_Spy_Rate["GetPack"] then
		Task_SetStatistic(nTotalEvent,nTotalType,1,1,nUserId)
		nTdPackGetNum = nTdPackGetNum + 1
		Sys_SetSynaGlobalData0(nGlobalDataId,nTdPackGetNum)
		User_TalkChannel2005(tChristmas2015_Spy_Text[3006768]["GetPack"],nUserId)
		local sPlayerName = Get_UserName(nUserId)
		local sBroadcastText = string.format(tChristmas2015_Spy_Text[3006768]["Broadcast"],sPlayerName)
		Sys_GmBroadcast(sBroadcastText)
		-- Item_AddItem(tChristmas2015_Spy_Id["Item"]["CarnivalPack"])
		Item_AddNewItem(tChristmas2015_Spy_Id["Item"]["CarnivalPack"],"0 1",nUserId)
		User_EffectAdd(tChristmas2015_Spy_Effect["self"],tChristmas2015_Spy_Effect["GetPack"],nUserId)
		Sys_SaveActionFestivalLog(tChristmas2015_Spy_Log["GetPack"],nUserId)
	end
end

--礼包使用
function Christmas2015_Spy_CarnivalPack(nItemId,sItemName)
	--过期删除
	if not Sys_ChkFullTime(tChristmas2015_Spy_Data["DuringTime"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		end
		Sys_MsgBox(tChristmas2015_Spy_Text[3006768]["AfterAct"])
		Sys_SaveActionFestivalLog(tChristmas2015_Spy_Log["PackAftime"])
		return
	end
	--活动期间--删除自身,给与1神佑的188225,时间分别为7天,30天,180天,概率为771208/192802/32134
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
	end
	User_EffectAdd(tChristmas2015_Spy_Effect["self"],tChristmas2015_Spy_Effect["Open"])
	--获取所发外套类型,给外套,对白,log
	local nSuitType = Christmas2015_Spy_GetPackRewardType()
	Item_AddNewItem(tChristmas2015_Spy_Rate[nSuitType]["Id"],tChristmas2015_Spy_Rate[nSuitType]["Attr"])
	local sSuitText = string.format(tChristmas2015_Spy_Text[3006768]["Suit"],tChristmas2015_Spy_Text[3006768]["Available" .. nSuitType])
	User_TalkChannel2005(sSuitText)
	local sSuitLog= string.format(tChristmas2015_Spy_Log["PackSuit"],tChristmas2015_Spy_Rate[nSuitType]["Id"])
	Sys_SaveActionFestivalLog(sSuitLog)
end

--随机给外套奖励,控制长时效的全服产出
function Christmas2015_Spy_GetPackRewardType()
	local nRate = math.random(tChristmas2015_Spy_Rate["Total"])
	local nGlobalDataId = tChristmas2015_Spy_Data["Global"]
	local nSuit180DLimit = Get_SysDynaGlobalData1(nGlobalDataId)
	local nSuitEverLimit = Get_SysDynaGlobalData2(nGlobalDataId)
	local tTempRate = {}
		tTempRate[1] = tChristmas2015_Spy_Rate[1]["Rate"]
		tTempRate[2] = tChristmas2015_Spy_Rate[2]["Rate"] + tTempRate[1]
		tTempRate[3] = tChristmas2015_Spy_Rate[3]["Rate"] + tTempRate[2]
	if nRate <= tTempRate[1] then
		return 1
	elseif nRate <= tTempRate[2] then
		return 2
	elseif nRate <= tTempRate[3] then
		if nSuit180DLimit < tChristmas2015_Spy_Rate[3]["Limit"] then
			nSuit180DLimit = nSuit180DLimit + 1
			Sys_SetSynaGlobalData1(nGlobalDataId,nSuit180DLimit)
			return 3
		end
		return 1
	else
		if nSuitEverLimit < tChristmas2015_Spy_Rate[4]["Limit"] then
			nSuitEverLimit = nSuitEverLimit + 1
			Sys_SetSynaGlobalData2(nGlobalDataId,nSuitEverLimit)
			return 4
		end
		return 2
	end
end



-----------------------------物品模版----------------------------------

--礼包
tItem[3006768] = tItem[3006768] or {}
tItem[3006768]["Function"] = function(nItemId,sItemName)
	Christmas2015_Spy_CarnivalPack(nItemId,sItemName)
end

--手帕
tItem[3006769] = tItem[3006769] or {}
tItem[3006769]["Function"] = function(nItemId,sItemName)
	if not Sys_ChkFullTime(tChristmas2015_Spy_Data["DuringTime"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_TalkChannel2005(tChristmas2015_Spy_Text[3006769]["Expire"])
		end
		return
	end
	LinkItemGossipFunc_New(nItemId,"1-1")
end

tItem[3006769]["Text1-1"] = {111}
tItem[3006769]["Text111"] = tChristmas2015_Spy_Text[3006769]["Text111"]
tItem[3006769]["tOption1-1"] = {1}
tItem[3006769]["Option1"] = tChristmas2015_Spy_Text[3006769]["Option1"]
tItem[3006769]["OptionFunc1"] = "Christmas2015_Spy_AutoFindWay</S>Egg"

-----------------------------Npc模版----------------------------------
--10871彩蛋选美主持人,lookface= lookface10871
tNpcFace[3798] = tChristmas2015_Spy_Data["Face"]["Host"]
tNpcGossip[10871] = tNpcGossip[10871] or DefaultNpc:new{}
tNpcGossip[10871]["OptionHidden"] = 1
--活动前对话
	tNpcGossip[10871]["Text1-1"] = {111,112,113,114}
	tNpcGossip[10871]["Text111"] = tChristmas2015_Spy_Text[10871]["Text111"]
	tNpcGossip[10871]["Text112"] = tChristmas2015_Spy_Text[10871]["Text112"]
	tNpcGossip[10871]["Text113"] = tChristmas2015_Spy_Text[10871]["Text113"]
	tNpcGossip[10871]["Text114"] = tChristmas2015_Spy_Text[10871]["Text114"]
	tNpcGossip[10871]["tOption1-1"] = {1}
	tNpcGossip[10871]["ChkFunc1-1"] = function()
		return Sys_ChkFullTime(tChristmas2015_Spy_Data["BeforeTime"])
	end
	tNpcGossip[10871]["Option1"] = tChristmas2015_Spy_Text[10871]["Option1"]

--活动中对话
	tNpcGossip[10871]["Text1-2"] = {121,122,123,124}
	tNpcGossip[10871]["Text121"] = tChristmas2015_Spy_Text[10871]["Text121"]
	tNpcGossip[10871]["Text122"] = tChristmas2015_Spy_Text[10871]["Text122"]
	tNpcGossip[10871]["Text123"] = tChristmas2015_Spy_Text[10871]["Text123"]
	tNpcGossip[10871]["Text124"] = tChristmas2015_Spy_Text[10871]["Text124"]
	tNpcGossip[10871]["tOption1-2"] = {2,3,4,5,6}
	tNpcGossip[10871]["ChkFunc1-2"] = function()
		Christmas2015_Spy_ResetEveryDay()
		return Sys_ChkFullTime(tChristmas2015_Spy_Data["DuringTime"])
	end
	tNpcGossip[10871]["Option2"] = tChristmas2015_Spy_Text[10871]["Option2"]
	tNpcGossip[10871]["OptionFunc2"] = "</F>Christmas2015_Spy_ApplyTask</N>10871"
	tNpcGossip[10871]["OptionChkFunc2"] = function()
		return Christmas2015_Spy_ChkOption("Phase") <= 0
	end
	tNpcGossip[10871]["Option3"] = tChristmas2015_Spy_Text[10871]["Option3"]
	tNpcGossip[10871]["OptionFunc3"] = "</F>Christmas2015_Spy_ApplyItem</N>10871"
	tNpcGossip[10871]["OptionChkFunc3"] = function()
		return (Christmas2015_Spy_ChkOption("Phase")) > 0 and (Christmas2015_Spy_ChkOption("Phase") < tChristmas2015_Spy_Stc["Phase"]["LastEgg"])
	end
	tNpcGossip[10871]["Option4"] = tChristmas2015_Spy_Text[10871]["Option4"]
	tNpcGossip[10871]["OptionFunc4"] = "</F>Christmas2015_Spy_ApplyReward</N>10871"
	tNpcGossip[10871]["OptionChkFunc4"] = function()
		return Christmas2015_Spy_ChkOption("Phase") >= tChristmas2015_Spy_Stc["Phase"]["LastEgg"]
	end
	tNpcGossip[10871]["Option5"] = tChristmas2015_Spy_Text[10871]["Option5"]
	tNpcGossip[10871]["OptionPoint5"] = "5-1" 
	tNpcGossip[10871]["Option6"] = tChristmas2015_Spy_Text[10871]["Option6"]

--活动后对话
	tNpcGossip[10871]["Text1-3"] = {131}
	tNpcGossip[10871]["Text131"] = tChristmas2015_Spy_Text[10871]["Text131"]
	tNpcGossip[10871]["tOption1-3"] = {7}
	tNpcGossip[10871]["Option7"] = tChristmas2015_Spy_Text[10871]["Option6"]
	
	--接受任务,成功
	tNpcGossip[10871]["Text2-1"] = {211}
	tNpcGossip[10871]["Text211"] = tChristmas2015_Spy_Text[10871]["Text211"]
	tNpcGossip[10871]["tOption2-1"] = {11,12}
	tNpcGossip[10871]["Option11"] = tChristmas2015_Spy_Text[10871]["Option11"]
	tNpcGossip[10871]["Option12"] = tChristmas2015_Spy_Text[10871]["Option12"]
	--接受任务,等级不足
	tNpcGossip[10871]["Text2-2"] = {221}
	tNpcGossip[10871]["Text221"] = tChristmas2015_Spy_Text[10871]["Text212"]
	tNpcGossip[10871]["tOption2-2"] = {13}
	tNpcGossip[10871]["Option13"] = tChristmas2015_Spy_Text[10871]["Option13"]
	--接受任务,背包已满
	tNpcGossip[10871]["Text2-3"] = {231}
	tNpcGossip[10871]["Text231"] = tChristmas2015_Spy_Text[10871]["Text213"]
	tNpcGossip[10871]["tOption2-3"] = {14}
	tNpcGossip[10871]["Option14"] = tChristmas2015_Spy_Text[10871]["Option14"]
	--接受任务,已有任务
	tNpcGossip[10871]["Text2-4"] = {241}
	tNpcGossip[10871]["Text241"] = tChristmas2015_Spy_Text[10871]["Text214"]
	tNpcGossip[10871]["tOption2-4"] = {15}
	tNpcGossip[10871]["Option15"] = tChristmas2015_Spy_Text[10871]["Option15"]

	--补领手帕.成功
	tNpcGossip[10871]["Text3-1"] = {311}
	tNpcGossip[10871]["Text311"] = tChristmas2015_Spy_Text[10871]["Text221"]
	tNpcGossip[10871]["tOption3-1"] = {21}
	tNpcGossip[10871]["Option21"] = tChristmas2015_Spy_Text[10871]["Option21"]
	--补领手帕.已有手帕
	tNpcGossip[10871]["Text3-2"] = {321}
	tNpcGossip[10871]["Text321"] = tChristmas2015_Spy_Text[10871]["Text222"]
	tNpcGossip[10871]["tOption3-2"] = {22}
	tNpcGossip[10871]["Option22"] = tChristmas2015_Spy_Text[10871]["Option22"]
	--补领手帕.背包满
	tNpcGossip[10871]["Text3-3"] = {331}
	tNpcGossip[10871]["Text331"] = tChristmas2015_Spy_Text[10871]["Text223"]
	tNpcGossip[10871]["tOption3-3"] = {23}
	tNpcGossip[10871]["Option23"] = tChristmas2015_Spy_Text[10871]["Option23"]
	
--选择领取奖励,已领取当天奖励
	tNpcGossip[10871]["Text4-1"] = {411}
	tNpcGossip[10871]["Text411"] = tChristmas2015_Spy_Text[10871]["Text231"]
	tNpcGossip[10871]["tOption4-1"] = {31}
	tNpcGossip[10871]["Option31"] = tChristmas2015_Spy_Text[10871]["Option31"]
--选择领取奖励,未完成任务
	tNpcGossip[10871]["Text4-2"] = {421}
	tNpcGossip[10871]["Text421"] = tChristmas2015_Spy_Text[10871]["Text232"]
	tNpcGossip[10871]["tOption4-2"] = {32}
	tNpcGossip[10871]["Option32"] = tChristmas2015_Spy_Text[10871]["Option32"]
--选择领取奖励,背包满
	tNpcGossip[10871]["Text4-3"] = {431}
	tNpcGossip[10871]["Text431"] = tChristmas2015_Spy_Text[10871]["Text233"]
	tNpcGossip[10871]["tOption4-3"] = {33}
	tNpcGossip[10871]["Option33"] = tChristmas2015_Spy_Text[10871]["Option33"]
--选择领取奖励,成功领取奖励
	tNpcGossip[10871]["Text4-4"] = {441}
	tNpcGossip[10871]["Text441"] = tChristmas2015_Spy_Text[10871]["Text234"]
	tNpcGossip[10871]["tOption4-4"] = {34}
	tNpcGossip[10871]["Option34"] = tChristmas2015_Spy_Text[10871]["Option34"]

--了解详情
	tNpcGossip[10871]["Text5-1"] = {511}
	tNpcGossip[10871]["Text511"] = tChristmas2015_Spy_Text[10871]["Text241"]
	tNpcGossip[10871]["tOption5-1"] = {41,42}
	tNpcGossip[10871]["Option41"] = tChristmas2015_Spy_Text[10871]["Option41"]
	tNpcGossip[10871]["OptionPoint41"] = "1-2"
	tNpcGossip[10871]["Option42"] = tChristmas2015_Spy_Text[10871]["Option42"]

--彩蛋宝宝部分10872-10887
-- tNpcFace[3799] = 0
	tNpcGossip[10872] = tNpcGossip[10872] or DefaultNpc:new{}
	tNpcGossip[10872]["OptionHidden"] = 1
	--活动前
	tNpcGossip[10872]["Text1-1"] = {111}
	tNpcGossip[10872]["Text111"] = tChristmas2015_Spy_Text["Egg"]["Text111"]
	tNpcGossip[10872]["tOption1-1"] = {1}
	tNpcGossip[10872]["ChkFunc1-1"] = function()
		return Sys_ChkFullTime(tChristmas2015_Spy_Data["BeforeTime"])
	end
	tNpcGossip[10872]["Option1"] = tChristmas2015_Spy_Text["Egg"]["Option1"]
	
	--离蛋太远
	tNpcGossip[10872]["Text1-2"] = {121}
	tNpcGossip[10872]["Text121"] = tChristmas2015_Spy_Text["Egg"]["Distance1"]
	tNpcGossip[10872]["tOption1-2"] = {2}
	tNpcGossip[10872]["ChkFunc1-2"] = function()
		Christmas2015_Spy_ResetEveryDay()
		Christmas2015_Spy_ChildDisappear()
		return Christmas2015_Spy_JudgeDistance()
	end
	tNpcGossip[10872]["Option2"] = tChristmas2015_Spy_Text["Egg"]["Distance2"]
	tNpcGossip[10872]["OptionFunc2"] = function()
		local nNpcId = Get_NpcId()
		Christmas2015_Spy_AutoFindWay(nNpcId)
	end
	
	--活动中对话(擦过版本)
	tNpcGossip[10872]["Text1-3"] = {131}
	tNpcGossip[10872]["Text131"] = tChristmas2015_Spy_Text["Egg"]["Text121"]
	tNpcGossip[10872]["tOption1-3"] = {3}
	tNpcGossip[10872]["ChkFunc1-3"] = function()
		-- tNpcFace[3799] = 0
		return Sys_ChkFullTime(tChristmas2015_Spy_Data["DuringTime"]) and not Christmas2015_Spy_PreJudgeEgg()
	end
	tNpcGossip[10872]["Option3"] = tChristmas2015_Spy_Text["Egg"]["Option2"]
	
	--活动中对话(未擦过版本)
	tNpcGossip[10872]["Text1-4"] = {141}
	tNpcGossip[10872]["Text141"] = tChristmas2015_Spy_Text["Egg"]["Text131"]
	tNpcGossip[10872]["tOption1-4"] = {4,5}
	tNpcGossip[10872]["ChkFunc1-4"] = function()
		return Sys_ChkFullTime(tChristmas2015_Spy_Data["DuringTime"]) and Christmas2015_Spy_PreJudgeEgg()
	end
	tNpcGossip[10872]["Option4"] = tChristmas2015_Spy_Text["Egg"]["Option3"]
	tNpcGossip[10872]["OptionFunc4"] = "</F>Christmas2015_Spy_EggDialog"
	tNpcGossip[10872]["Option5"] = tChristmas2015_Spy_Text["Egg"]["Option4"]
	
	--活动后对话
	tNpcGossip[10872]["Text1-5"] = {151}
	tNpcGossip[10872]["Text151"] = tChristmas2015_Spy_Text["Egg"]["Text141"]
	tNpcGossip[10872]["tOption1-5"] = {6}
	tNpcGossip[10872]["Option6"] = tChristmas2015_Spy_Text["Egg"]["Option2"]

	--无手帕的情况
	tNpcGossip[10872]["Text2-1"] = {211}
	tNpcGossip[10872]["Text211"] = tChristmas2015_Spy_Text["Egg"]["Text211"]
	tNpcGossip[10872]["tOption2-1"] = {7}

	tNpcGossip[10872]["Option7"] = tChristmas2015_Spy_Text["Egg"]["Option5"]
	tNpcGossip[10872]["OptionFunc7"] = "</F>Christmas2015_Spy_AutoFindWay</N>10871"
	
for i = tChristmas2015_Spy_Id["Npc"]["Egg1"],tChristmas2015_Spy_Id["Npc"]["Egg15"] do
	tNpcGossip[i] = tNpcGossip[10872]
end


--------配置函数
--每日清理全局数据,隔天0点时执行一次
function Christmas2015_Spy_ResetGlobalData()
	if not Sys_ChkFullTime(tChristmas2015_Spy_Data["DuringTime"]) then
		return
	end
	local nGlobalData = tChristmas2015_Spy_Data["Global"]
	local nGlobalData5 = Get_SysDynaGlobalData(nGlobalData,5)
	
	--每天只重置1次
	if nGlobalData5 ~= 0 then
		return
	end
	Sys_SetSynaGlobalData5(nGlobalData,1)
	
	Sys_SetSynaGlobalData0(nGlobalData,0)
	Sys_SetSynaGlobalData1(nGlobalData,0)
	Sys_SetSynaGlobalData2(nGlobalData,0)
end



-- 自检限制清除
function Christmas2015_Spy_ResetLimit()
	-- 活动时间
	if not Sys_ChkFullTime(tChristmas2015_Spy_Data["DuringTime"]) then
		return
	end
	local nGlobalData = tChristmas2015_Spy_Data["Global"]
	Sys_SetSynaGlobalData5(nGlobalData,0)
end


------------------------------------------配置数据------------------------------------------
--时间函数触发,重置圣诞嘉年华礼包的相关限制(执行1次)
--'00:00 00:00'
-- tOntimerMin_HM[0000] = tOntimerMin_HM[0000] or {}
-- table.insert(tOntimerMin_HM[0000],Christmas2015_Spy_ResetGlobalData)
-- tOntimerMin_HM[0001] = tOntimerMin_HM[0001] or {}
-- table.insert(tOntimerMin_HM[0001],Christmas2015_Spy_ResetGlobalData)
-- tOntimerMin_HM[0002] = tOntimerMin_HM[0002] or {}
-- table.insert(tOntimerMin_HM[0002],Christmas2015_Spy_ResetLimit)
-- tOntimerMin_HM[0003] = tOntimerMin_HM[0003] or {}
-- table.insert(tOntimerMin_HM[0003],Christmas2015_Spy_ResetLimit)
