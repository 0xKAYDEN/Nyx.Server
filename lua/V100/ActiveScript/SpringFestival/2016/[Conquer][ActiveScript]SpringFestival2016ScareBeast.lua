------------------------------------------------------------------------------------
--Name:			151015[简体征服][活动脚本]2016春节活动之炸年兽
--Purpose:		2016春节活动之炸年兽
--Creator:		黄昕哲
--Created:		2015/10/16
------------------------------------------------------------------------------------
--[[
活动时间：2016年2月8日-2016年2月17日
命名前缀SpringFestival2016_ScareBeast_

掩码说明:
stc(131,42)
	= 1 接到任务
	= 2 已吓倒年兽
	= 3 已领取奖励

logid 12000221
]]--
-------------------------------数据存储表------------------------
local tSpringFestival2016_ScareBeast_Data = {}
	--活动时间：2016年2月4日-2016年2月22日
	tSpringFestival2016_ScareBeast_Data["BeforeTime"] = "2016-01-01 00:00 2017-01-27 23:59"
	tSpringFestival2016_ScareBeast_Data["DuringTime"] = "2017-01-28 00:00 2017-02-06 23:59"


	tSpringFestival2016_ScareBeast_Data["MinLev"] = 80
	tSpringFestival2016_ScareBeast_Data["MinMet"] = 0
	
	tSpringFestival2016_ScareBeast_Data["SmallExploreTime"] = 1
	tSpringFestival2016_ScareBeast_Data["BigExploreTime"] = 3
	tSpringFestival2016_ScareBeast_Data["ExploreAction"] = 220

--光效
local tSpringFestival2016_ScareBeast_Effect = {}
	tSpringFestival2016_ScareBeast_Effect["self"] = "self"
	tSpringFestival2016_ScareBeast_Effect["TaskFin"] = "angelwing"
	tSpringFestival2016_ScareBeast_Effect["BoomBeast"] = "firemagic"
	tSpringFestival2016_ScareBeast_Effect["BoomBeastFail"] = "fireball-bomb"

--几率
local tSpringFestival2016_ScareBeast_Rate = {}
--总概率
tSpringFestival2016_ScareBeast_Rate["Total"] = 10000
--小爆竹炸年兽的几率
tSpringFestival2016_ScareBeast_Rate["Beast"] = {}
	--被鄙视
	tSpringFestival2016_ScareBeast_Rate["Beast"]["Down"] = 3000
	--被无视
	tSpringFestival2016_ScareBeast_Rate["Beast"]["Ignore"] = 3000
	--喷嚏
	tSpringFestival2016_ScareBeast_Rate["Beast"]["Sneeze"] = 3000
	--成功
	tSpringFestival2016_ScareBeast_Rate["Beast"]["Success"] = 1000

--爆竹怪的掉落几率
tSpringFestival2016_ScareBeast_Rate["Mon"] = {}
	--掉落爆竹
	tSpringFestival2016_ScareBeast_Rate["Mon"]["Loot"] = 2500
	--爆炸
	tSpringFestival2016_ScareBeast_Rate["Mon"]["Boom"] = 500
	tSpringFestival2016_ScareBeast_Rate["Mon"]["BoomStatus"] = {55,200,2,1,2,1,1}

local tSpringFestival2016_ScareBeast_Item = {}
	--大小爆竹
	tSpringFestival2016_ScareBeast_Item["SmallFirecracker"] = 3005370
	tSpringFestival2016_ScareBeast_Item["SmallFirecrackerNum"] = 10
	tSpringFestival2016_ScareBeast_Item["BigFirecracker"] = 3005371


local tSpringFestival2016_ScareBeast_Pos = {}
	tSpringFestival2016_ScareBeast_Pos["OutMapId"] = 1002
	--炸年兽地图
	tSpringFestival2016_ScareBeast_Pos["InMapId"] = 2101
	tSpringFestival2016_ScareBeast_Pos["Round"] = 5

	tSpringFestival2016_ScareBeast_Pos["Elder_Out"] = {}
	tSpringFestival2016_ScareBeast_Pos["Elder_Out"]["Id"] = 17282
	tSpringFestival2016_ScareBeast_Pos["Elder_Out"]["CellX"] = 289
	tSpringFestival2016_ScareBeast_Pos["Elder_Out"]["CellY"] = 384
	
	tSpringFestival2016_ScareBeast_Pos["Elder_In"] = {}
	tSpringFestival2016_ScareBeast_Pos["Elder_In"]["Id"] = 17283
	tSpringFestival2016_ScareBeast_Pos["Elder_In"]["CellX"] = 45
	tSpringFestival2016_ScareBeast_Pos["Elder_In"]["CellY"] = 45

	tSpringFestival2016_ScareBeast_Pos["Beast"] = {}
	tSpringFestival2016_ScareBeast_Pos["Beast"]["Id"] = 17284
	tSpringFestival2016_ScareBeast_Pos["Beast"]["CellX"] = 40
	tSpringFestival2016_ScareBeast_Pos["Beast"]["CellY"] = 46
	
local tSpringFestival2016_ScareBeast_Stc = {}
	tSpringFestival2016_ScareBeast_Stc["Event"] = 131
	tSpringFestival2016_ScareBeast_Stc["Data"] = 42
	
	tSpringFestival2016_ScareBeast_Stc["TaskBegin"] = 1
	tSpringFestival2016_ScareBeast_Stc["ShockBeast"] = 2
	tSpringFestival2016_ScareBeast_Stc["TaskFin"] = 3
	
local tSpringFestival2016_ScareBeast_Log = {}
	tSpringFestival2016_ScareBeast_Log["LogId"] = 12000223
	tSpringFestival2016_ScareBeast_Log["FestivalId"] = 3359
	tSpringFestival2016_ScareBeast_Log["TaskBegin"] = "0,0,0,0,12000223,1[1],0,0"
	tSpringFestival2016_ScareBeast_Log["GetItem"] = "0,0,0,0,12000223,1,3005370,1"
	tSpringFestival2016_ScareBeast_Log["TaskComplete"] = "0,0,%s,1,12000223,2,0,0"
	tSpringFestival2016_ScareBeast_Log["TaskFin"] = "0,0,0,0,12000223,1[2],3004678,1"

	tSpringFestival2016_ScareBeast_Log["ItemExpire"] = "0,0,%s,1,12000223,2,0,0"
	tSpringFestival2016_ScareBeast_Log["ItemSuccess"] = "0,0,3005370,10,12000223,1,3005371,1"
	

------------------------------逻辑部分---------------------------
--检查掩码,并重置nMethod =0 并返回当前任务阶段,nMethod>=1时,设置任务阶段
function SpringFestival2016_ScareBeast_Phase(nMethod,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nEvent = tSpringFestival2016_ScareBeast_Stc["Event"]
	local nData = tSpringFestival2016_ScareBeast_Stc["Data"]
	local nPhase = 0
	if nMethod == 0 then
		--检测隔天,是则重置掩码和时间戳
		if Task_ChkStcValue(nEvent,nData,">=",tSpringFestival2016_ScareBeast_Stc["TaskFin"],nUserId) and Task_StcInterval(nEvent,nData,1,4,nUserId) then
			Task_SetStatistic(nEvent,nData,0,1,nUserId)
			Task_SetStcTimestamp(nEvent,nData,0,nUserId)
		end
		nPhase = Get_UserStatisticValue(nEvent,nData,nUserId)
		return nPhase
	end
	--nMethod>=1时,设置任务阶段
	Task_SetStatistic(nEvent,nData,nMethod,1,nUserId)
	Task_SetStcTimestamp(nEvent,nData,0,nUserId)
end

--选择2,任务开始
function SpringFestival2016_ScareBeast_ApplyTask(nNpcId)
	--失败,时间错误
	if not Sys_ChkFullTime(tSpringFestival2016_ScareBeast_Data["DuringTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	--失败,已完成任务
	if SpringFestival2016_ScareBeast_Phase(0) >= tSpringFestival2016_ScareBeast_Stc["TaskFin"] then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	--失败,等级不足
	if not User_JudgeLevelAndMetempsychosis(tSpringFestival2016_ScareBeast_Data["MinLev"],tSpringFestival2016_ScareBeast_Data["MinMet"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	--条件满足,进入地图,开始任务
	local nMapId = tSpringFestival2016_ScareBeast_Pos["InMapId"]
	local nCellX = tSpringFestival2016_ScareBeast_Pos["Elder_In"]["CellX"]
	local nCellY = tSpringFestival2016_ScareBeast_Pos["Elder_In"]["CellY"]
	local nRound = tSpringFestival2016_ScareBeast_Pos["Round"]
	--如果已经在地图内了,则不用换地图了
	if Get_UserMapId(0) ~= nMapId then
		if not User_UserRandBoundTrans(nMapId,nCellX,nCellY,nRound,nRound,0,0) then
			return
		end
	end
	SpringFestival2016_ScareBeast_Phase(tSpringFestival2016_ScareBeast_Stc["TaskBegin"])
	User_TalkChannel2005(tSpringFestival2016_ScareBeast_Text[17282]["EnterMap"])
		--第一次进入地图的玩家身上的道具会被先行删除
	if SpringFestival2016_ScareBeast_Phase(0) == 0 then
		SpringFestival2016_ScareBeast_DelTaskItem()
		Sys_SaveActionFestivalLog(tSpringFestival2016_ScareBeast_Log["TaskBegin"])
	end
end

--删除玩家的任务物品
function SpringFestival2016_ScareBeast_DelTaskItem()
	if Item_ChkItem(tSpringFestival2016_ScareBeast_Item["SmallFirecracker"]) then
		Item_DelAllItemByType(tSpringFestival2016_ScareBeast_Item["SmallFirecracker"])
	end
	if Item_ChkItem(tSpringFestival2016_ScareBeast_Item["BigFirecracker"]) then
		Item_DelAllItemByType(tSpringFestival2016_ScareBeast_Item["BigFirecracker"])
	end
end

--选择3,领取奖励
function SpringFestival2016_ScareBeast_ApplyReward(nNpcId)
	--失败,时间错误
	if not Sys_ChkFullTime(tSpringFestival2016_ScareBeast_Data["DuringTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	--失败,未完成任务
	if SpringFestival2016_ScareBeast_Phase(0) < tSpringFestival2016_ScareBeast_Stc["ShockBeast"] then
		LinkNpcGossipFunc_New(nNpcId,"4-2")
		return
	end
	--失败,当天已经完成
	if SpringFestival2016_ScareBeast_Phase(0) >= tSpringFestival2016_ScareBeast_Stc["TaskFin"] then
		LinkNpcGossipFunc_New(nNpcId,"4-1")
		return
	end
	--失败,背包已满
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"4-3")
		return
	end
	--以上条件均满足,删除任务物品,掩码,领取奖励,,log
	SpringFestival2016_ScareBeast_DelTaskItem()
	SpringFestival2016_ScareBeast_Phase(tSpringFestival2016_ScareBeast_Stc["TaskFin"])
	FestivalGeneralPackage_GetGift(tSpringFestival2016_ScareBeast_Log["FestivalId"],tSpringFestival2016_ScareBeast_Log["LogId"])
	User_EffectAdd(tSpringFestival2016_ScareBeast_Effect["self"],tSpringFestival2016_ScareBeast_Effect["TaskFin"])
	Sys_MsgBox(tSpringFestival2016_ScareBeast_Text[17282]["TaskFin"])
	Sys_SaveActionFestivalLog(tSpringFestival2016_ScareBeast_Log["TaskFin"])
end

--离开任务地图
function SpringFestival2016_ScareBeast_LeaveMap(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nMapId = tSpringFestival2016_ScareBeast_Pos["OutMapId"]
	local nCellX = tSpringFestival2016_ScareBeast_Pos["Elder_Out"]["CellX"]
	local nCellY = tSpringFestival2016_ScareBeast_Pos["Elder_Out"]["CellY"]
	local nRound = tSpringFestival2016_ScareBeast_Pos["Round"]
	if not User_UserRandBoundTrans(nMapId,nCellX,nCellY,nRound,nRound,0,nUserId) then
		return
	end
	Sys_MsgBox(tSpringFestival2016_ScareBeast_Text[17283]["LeaveMap"])
end

--年兽对话检查,若已经完成任务或时间不正确,返回true
function SpringFestival2016_ScareBeast_BeastDialog()
	--已完成
	if SpringFestival2016_ScareBeast_Phase(0) >= tSpringFestival2016_ScareBeast_Stc["ShockBeast"] then
		return true
	end
	--时间 不正确
	if not Sys_ChkFullTime(tSpringFestival2016_ScareBeast_Data["DuringTime"]) then
		return true
	end
	--未完成,对白随机出一种
	local nRandom = math.random(121,125)
	tNpcGossip[17284]["Text121"] = tSpringFestival2016_ScareBeast_Text[17284]["Text" .. nRandom]
	return false
end

--用爆竹吓年兽的预判断,返回true表示条件都满足,可以继续进行
function SpringFestival2016_ScareBeast_Pre_ScareBeast(nNpcId,nMethod,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local sNeedItemDialog =""
	--时间不正确
	if not Sys_ChkFullTime(tSpringFestival2016_ScareBeast_Data["DuringTime"]) then
		SpringFestival2016_ScareBeast_LeaveMap()
		return false
	end
	--等级转世不正确
	if not User_JudgeLevelAndMetempsychosis(tSpringFestival2016_ScareBeast_Data["MinLev"],tSpringFestival2016_ScareBeast_Data["MinMet"],nUserId) then
		--此处没有提示
		return false
	end
	local nItemId = 0
	local sNeedItemMsg = ""
	--检测道具
	if nMethod == 0 then
		nItemId = tSpringFestival2016_ScareBeast_Item["SmallFirecracker"]
		sNeedItemDialog = tSpringFestival2016_ScareBeast_Text[17284]["Msg211"]
	else
		nItemId = tSpringFestival2016_ScareBeast_Item["BigFirecracker"]
		sNeedItemDialog = tSpringFestival2016_ScareBeast_Text[17284]["Msg241"]
	end
	--无道具,提示,返回false
	if not Item_ChkItem(nItemId,1,0,nUserId) then
		Sys_MsgBox(sNeedItemDialog)
		return false
	end
	--以上条件均满足,返回
	return true
end

--用爆竹吓年兽,用nMethod表示使用的爆竹,=0表示小爆竹,=1表示大爆竹
function SpringFestival2016_ScareBeast_ScareBeast(nNpcId,nMethod)
	if not SpringFestival2016_ScareBeast_Pre_ScareBeast(nNpcId,nMethod) then
		return
	end
	--读条时间和读条动作
	local nExploreTime = 0
	local nExploreAction = tSpringFestival2016_ScareBeast_Data["ExploreAction"]
	--小爆竹的情况,有失败几率,读条1s
	if nMethod == 0 then
		nExploreTime = tSpringFestival2016_ScareBeast_Data["SmallExploreTime"]
	else
		--大爆竹的情况,必定成功,读条3s
		nExploreTime = tSpringFestival2016_ScareBeast_Data["BigExploreTime"]
	end
	--读条
	User_SetExplore(nExploreTime,tSpringFestival2016_ScareBeast_Text[17284]["Explore"],nExploreAction,"SpringFestival2016_ScareBeast_ExploreEnd</N>17284</N>" .. nMethod)
end

--年兽选择燃放小爆竹的失败判断,失败返回false,成功返回true
function SpringFestival2016_ScareBeast_ScareFail(nNpcId)
	--判断的结果
	local bJudgeEnd = true
	local nMapId = tSpringFestival2016_ScareBeast_Pos["InMapId"]
	local nPosX = tSpringFestival2016_ScareBeast_Pos["Beast"]["CellX"]
	local nPosY	= tSpringFestival2016_ScareBeast_Pos["Beast"]["CellY"]
	local sEffect = tSpringFestival2016_ScareBeast_Effect["BoomBeast"]
	local nRandom = math.random(tSpringFestival2016_ScareBeast_Rate["Total"])
	local nRate = tSpringFestival2016_ScareBeast_Rate["Beast"]["Down"]
	--被鄙视
	if nRandom <= nRate then
		tNpcGossip[17284]["Text221"] = tSpringFestival2016_ScareBeast_Text[17284]["Text221"]
		bJudgeEnd = false
	end
	--被无视
	nRate = nRate + tSpringFestival2016_ScareBeast_Rate["Beast"]["Ignore"]
	if nRandom <= nRate then
		tNpcGossip[17284]["Text221"] = tSpringFestival2016_ScareBeast_Text[17284]["Text222"]
		bJudgeEnd = false
	end
	--打喷嚏
	nRate = nRate + tSpringFestival2016_ScareBeast_Rate["Beast"]["Sneeze"]
	if nRandom <= nRate then
		tNpcGossip[17284]["Text221"] = tSpringFestival2016_ScareBeast_Text[17284]["Text223"]
		bJudgeEnd = false
	end
	--失败出对白,光效
	if not bJudgeEnd then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		Map_Effect(nMapId,nPosX,nPosY,sEffect)
	end
	--返回结果
	return bJudgeEnd
end

--读条结果
function SpringFestival2016_ScareBeast_ExploreEnd(nNpcId,nMethod,nUserId)
	--读条后还需再次判断条件
	if not SpringFestival2016_ScareBeast_Pre_ScareBeast(nNpcId,nMethod,nUserId) then
		return
	end
	local nItemId = 0
	local sMsgText = ""
	if nMethod == 0 then
		nItemId = tSpringFestival2016_ScareBeast_Item["SmallFirecracker"]
		sMsgText = tSpringFestival2016_ScareBeast_Text[17284]["Msg231"]
	else
		nItemId = tSpringFestival2016_ScareBeast_Item["BigFirecracker"]
		sMsgText = tSpringFestival2016_ScareBeast_Text[17284]["Msg251"]
	end
	--确认物品存在
	if not Item_ChkItem(nItemId,1,0,nUserId) then
		return
	end
	--删除任务物品
	Item_DelItem(nItemId,1,0,nUserId)
	--燃放小鞭炮时,有可能失败
	if nMethod == 0 and not SpringFestival2016_ScareBeast_ScareFail(nNpcId) then
		return
	end
	--改变掩码
	SpringFestival2016_ScareBeast_Phase(tSpringFestival2016_ScareBeast_Stc["ShockBeast"],nUserId)
	local nMapId = tSpringFestival2016_ScareBeast_Pos["InMapId"]
	local nPosX = tSpringFestival2016_ScareBeast_Pos["Beast"]["CellX"]
	local nPosY = tSpringFestival2016_ScareBeast_Pos["Beast"]["CellY"]
	local sEffect = tSpringFestival2016_ScareBeast_Effect["BoomBeast"]
	Map_Effect(nMapId,nPosX,nPosY,sEffect)
	Sys_MsgBox(sMsgText,"</F>SpringFestival2016_ScareBeast_AutoFindWay</N>17283")
	local sLog = string.format(tSpringFestival2016_ScareBeast_Log["TaskComplete"],nItemId)
	Sys_SaveActionFestivalLog(sLog,nUserId)
end

--任务完成后的自动寻路
function SpringFestival2016_ScareBeast_AutoFindWay(nNpcId)
	local nCellX = tSpringFestival2016_ScareBeast_Pos["Elder_In"]["CellX"]
	local nCellY = tSpringFestival2016_ScareBeast_Pos["Elder_In"]["CellY"]
	local nMapId = tSpringFestival2016_ScareBeast_Pos["InMapId"]
	Sys_GotoSomeWhere(nCellX,nCellY,nMapId,nNpcId)
end
--------------------------------怪物逻辑部分--------------------------------
function SpringFestival2016_ScareBeast_MonsterDie()
	--活动时间外
	if not Sys_ChkFullTime(tSpringFestival2016_ScareBeast_Data["DuringTime"]) then
		return
	end
	--已有大爆竹或10个小爆竹
	local nSmallItemId = tSpringFestival2016_ScareBeast_Item["SmallFirecracker"]
	local nSmallItemNum = tSpringFestival2016_ScareBeast_Item["SmallFirecrackerNum"]
	if  Item_ChkMulItem(nSmallItemId,nSmallItemId,nSmallItemNum) then
		return
	end
	if Item_ChkItem(tSpringFestival2016_ScareBeast_Item["BigFirecracker"]) then
		return
	end
	--身上没有任务物品,25%给物品,5%爆炸
	local nTotalRate = tSpringFestival2016_ScareBeast_Rate["Total"]
	local nRate = tSpringFestival2016_ScareBeast_Rate["Mon"]["Loot"]
	local nRandom = math.random(tSpringFestival2016_ScareBeast_Rate["Total"])
	--25% 掉小爆竹
	if nRandom <= nRate then
		SpringFestival2016_ScareBeast_MonsterLoot()
		return
	end
	--5% 炸晕玩家2s
	nRate = nRate + tSpringFestival2016_ScareBeast_Rate["Mon"]["Boom"]
	if nRandom <= nRate then
		local nStatus = tSpringFestival2016_ScareBeast_Rate["Mon"]["BoomStatus"][1]
		local nPower = tSpringFestival2016_ScareBeast_Rate["Mon"]["BoomStatus"][2]
		local nSecs = tSpringFestival2016_ScareBeast_Rate["Mon"]["BoomStatus"][3]
		local nTimes = tSpringFestival2016_ScareBeast_Rate["Mon"]["BoomStatus"][4]
		local nRemainTime = tSpringFestival2016_ScareBeast_Rate["Mon"]["BoomStatus"][5]
		local nEndTime = tSpringFestival2016_ScareBeast_Rate["Mon"]["BoomStatus"][6]
		local nRecordable = tSpringFestival2016_ScareBeast_Rate["Mon"]["BoomStatus"][7]
		local nUserId = Get_UserId(0)
		User_AddRoleStatus(nStatus,nPower,nSecs,nTimes,nRemainTime,nEndTime,nRecordable,0,0,nUserId)
		local sObject = tSpringFestival2016_ScareBeast_Effect["self"]
		local sEffect = tSpringFestival2016_ScareBeast_Effect["BoomBeastFail"]
		User_EffectAdd(sObject,sEffect)
		Sys_MsgBox(tSpringFestival2016_ScareBeast_Text["Loot"]["Boom"])
	end
end

--掉落爆竹
function SpringFestival2016_ScareBeast_MonsterLoot()
	--检测背包空间
	if not User_CheckLeftSpace(1) then
		Sys_MsgBox(tSpringFestival2016_ScareBeast_Text["Loot"]["FullBag"])
		return
	end
	--空间足够,给物品,提示,log
	local nItemId = tSpringFestival2016_ScareBeast_Item["SmallFirecracker"]
	local sMsg = tSpringFestival2016_ScareBeast_Text["Loot"]["Loot"]
	local sLog = tSpringFestival2016_ScareBeast_Log["GetItem"]
	Item_AddItem(nItemId)
	User_TalkChannel2005(sMsg)
	Sys_SaveActionFestivalLog(sLog)
	--掉落之后再次检测小爆竹数量
	local nSmallItemId = tSpringFestival2016_ScareBeast_Item["SmallFirecracker"]
	local nSmallItemNum = tSpringFestival2016_ScareBeast_Item["SmallFirecrackerNum"]
	if not Item_ChkMulItem(nSmallItemId,nSmallItemId,nSmallItemNum) then
		return
	end
	--若确认将小爆竹合成大爆竹,调用小爆竹使用函数
	Sys_MsgBox(tSpringFestival2016_ScareBeast_Text["Loot"]["Fusion"],"SpringFestival2016_ScareBeast_Fusion</N>" .. nSmallItemId)
end

----------------------------------物品函数部分--------------------------------

--小爆竹使用函数
function SpringFestival2016_ScareBeast_Fusion(nItemId)
	if not Sys_ChkFullTime(tSpringFestival2016_ScareBeast_Data["DuringTime"]) then
		--不在活动时间内,删除物品,给与提示
		Item_DelAllItemByType(nItemId)
		User_TalkChannel2005(tSpringFestival2016_ScareBeast_Text["Firecracker"]["Expire"])
		local sDelLog = string.format(tSpringFestival2016_ScareBeast_Log["ItemExpire"],nItemId)
		Sys_SaveActionFestivalLog(sDelLog)
		return
	end
	local nItemNum = tSpringFestival2016_ScareBeast_Item["SmallFirecrackerNum"]
	--活动时间内,检测是否有十个
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum) then
		User_TalkChannel2005(tSpringFestival2016_ScareBeast_Text["Firecracker"]["More"])
		return
	end
	--确认有十个,删除十个,给大爆竹
	Item_DelMulItem(nItemId,nItemId,nItemNum)
	Item_AddItem(tSpringFestival2016_ScareBeast_Item["BigFirecracker"])
	Sys_MsgBox(tSpringFestival2016_ScareBeast_Text["Firecracker"]["Success"])
	Sys_SaveActionFestivalLog(tSpringFestival2016_ScareBeast_Log["ItemSuccess"])
end

--大爆竹使用函数
function SpringFestival2016_ScareBeast_UseBigFirecracker(nItemId)
	if not Sys_ChkFullTime(tSpringFestival2016_ScareBeast_Data["DuringTime"]) then
		--不在活动时间内,删除物品,给与提示
		Item_DelItem(nItemId)
		Sys_MsgBox(tSpringFestival2016_ScareBeast_Text["Firecracker"]["Expire"])
		local sDelLog = string.format(tSpringFestival2016_ScareBeast_Log["ItemExpire"],nItemId)
		Sys_SaveActionFestivalLog(sDelLog)
		return
	end
	--活动时间内,给提示
	User_TalkChannel2005(tSpringFestival2016_ScareBeast_Text["Firecracker"]["UseBig"])
end


------------------------------Npc模版部分------------------------
--17282 银须老者 lookface=3374  face=610006
tNpcFace[3374] = 6
tNpcGossip[17282] = tNpcGossip[17282] or DefaultNpc:new{}
tNpcGossip[17282]["OptionHidden"] = 1

--活动前对白
tNpcGossip[17282]["Text1-1"] = {111,112,113,114}
tNpcGossip[17282]["Text111"] = tSpringFestival2016_ScareBeast_Text[17282]["Text111"]
tNpcGossip[17282]["Text112"] = tSpringFestival2016_ScareBeast_Text[17282]["Text112"]
tNpcGossip[17282]["Text113"] = tSpringFestival2016_ScareBeast_Text[17282]["Text113"]
tNpcGossip[17282]["Text114"] = tSpringFestival2016_ScareBeast_Text[17282]["Text114"]
tNpcGossip[17282]["tOption1-1"] = {111}
tNpcGossip[17282]["Option111"] = tSpringFestival2016_ScareBeast_Text[17282]["Option111"]
tNpcGossip[17282]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tSpringFestival2016_ScareBeast_Data["BeforeTime"])
end

--等级不足
tNpcGossip[17282]["Text1-2"] = {121}
tNpcGossip[17282]["Text121"] = tSpringFestival2016_ScareBeast_Text[17282]["Text321"]
tNpcGossip[17282]["tOption1-2"] = {121}
tNpcGossip[17282]["Option121"] = tSpringFestival2016_ScareBeast_Text[17282]["Option321"]
tNpcGossip[17282]["ChkFunc1-2"] = function()
	return Sys_ChkFullTime(tSpringFestival2016_ScareBeast_Data["DuringTime"]) and (not User_JudgeLevelAndMetempsychosis(tSpringFestival2016_ScareBeast_Data["MinLev"],tSpringFestival2016_ScareBeast_Data["MinMet"]))
end


--活动中对白
tNpcGossip[17282]["Text1-3"] = {131,132,133,134}
tNpcGossip[17282]["Text131"] = tSpringFestival2016_ScareBeast_Text[17282]["Text121"]
tNpcGossip[17282]["Text132"] = tSpringFestival2016_ScareBeast_Text[17282]["Text122"]
tNpcGossip[17282]["Text133"] = tSpringFestival2016_ScareBeast_Text[17282]["Text123"]
tNpcGossip[17282]["Text134"] = tSpringFestival2016_ScareBeast_Text[17282]["Text124"]
tNpcGossip[17282]["tOption1-3"] = {131,132,133,134}
tNpcGossip[17282]["Option131"] = tSpringFestival2016_ScareBeast_Text[17282]["Option121"]
tNpcGossip[17282]["OptionFunc131"] = "</F>SpringFestival2016_ScareBeast_ApplyTask</N>17282"
tNpcGossip[17282]["Option132"] = tSpringFestival2016_ScareBeast_Text[17282]["Option122"]
tNpcGossip[17282]["OptionFunc132"] = "</F>SpringFestival2016_ScareBeast_ApplyReward</N>17282"
tNpcGossip[17282]["Option133"] = tSpringFestival2016_ScareBeast_Text[17282]["Option123"]
tNpcGossip[17282]["OptionPoint133"] = "2-1"
tNpcGossip[17282]["OptionChkFunc133"] = function()
	return (SpringFestival2016_ScareBeast_Phase(0) >= tSpringFestival2016_ScareBeast_Stc["TaskFin"])
end
tNpcGossip[17282]["Option134"] = tSpringFestival2016_ScareBeast_Text[17282]["Option124"]
tNpcGossip[17282]["ChkFunc1-3"] = function()
	SpringFestival2016_ScareBeast_Phase(0)
	return Sys_ChkFullTime(tSpringFestival2016_ScareBeast_Data["DuringTime"])
end
--活动后对白
tNpcGossip[17282]["Text1-4"] = {141}
tNpcGossip[17282]["Text141"] = tSpringFestival2016_ScareBeast_Text[17282]["Text131"]
tNpcGossip[17282]["tOption1-4"] = {131}
tNpcGossip[17282]["Option141"] = tSpringFestival2016_ScareBeast_Text[17282]["Option131"]

--了解详情1
tNpcGossip[17282]["Text2-1"] = {211,212}
tNpcGossip[17282]["Text211"] = tSpringFestival2016_ScareBeast_Text[17282]["Text211"]
tNpcGossip[17282]["Text212"] = tSpringFestival2016_ScareBeast_Text[17282]["Text212"]
tNpcGossip[17282]["tOption2-1"] = {211,212,213}
tNpcGossip[17282]["Option211"] = tSpringFestival2016_ScareBeast_Text[17282]["Option211"]
tNpcGossip[17282]["OptionPoint211"] = "2-2"
tNpcGossip[17282]["Option212"] = tSpringFestival2016_ScareBeast_Text[17282]["Option212"]
tNpcGossip[17282]["OptionPoint212"] = "1-3"
tNpcGossip[17282]["Option213"] = tSpringFestival2016_ScareBeast_Text[17282]["Option213"]
--了解详情2
tNpcGossip[17282]["Text2-2"] = {221,222}
tNpcGossip[17282]["Text221"] = tSpringFestival2016_ScareBeast_Text[17282]["Text221"]
tNpcGossip[17282]["Text222"] = tSpringFestival2016_ScareBeast_Text[17282]["Text222"]
tNpcGossip[17282]["tOption2-2"] = {221}
tNpcGossip[17282]["Option221"] = tSpringFestival2016_ScareBeast_Text[17282]["Option221"]
tNpcGossip[17282]["OptionPoint221"] = "2-1"

--进入地图
--失败,已完成
tNpcGossip[17282]["Text3-1"] = {311}
tNpcGossip[17282]["Text311"] = tSpringFestival2016_ScareBeast_Text[17282]["Text311"]
tNpcGossip[17282]["tOption3-1"] = {311}
tNpcGossip[17282]["Option311"] = tSpringFestival2016_ScareBeast_Text[17282]["Option311"]


--领取奖励
--失败,已完成
tNpcGossip[17282]["Text4-1"] = {411}
tNpcGossip[17282]["Text411"] = tSpringFestival2016_ScareBeast_Text[17282]["Text411"]
tNpcGossip[17282]["tOption4-1"] = {411}
tNpcGossip[17282]["Option411"] = tSpringFestival2016_ScareBeast_Text[17282]["Option411"]
--失败,未完成
tNpcGossip[17282]["Text4-2"] = {421}
tNpcGossip[17282]["Text421"] = tSpringFestival2016_ScareBeast_Text[17282]["Text421"]
tNpcGossip[17282]["tOption4-2"] = {421,422}
tNpcGossip[17282]["Option421"] = tSpringFestival2016_ScareBeast_Text[17282]["Option421"]
tNpcGossip[17282]["OptionFunc421"] = "</F>SpringFestival2016_ScareBeast_ApplyTask</N>17282"
tNpcGossip[17282]["Option422"] = tSpringFestival2016_ScareBeast_Text[17282]["Option422"]
--失败,背包已满
tNpcGossip[17282]["Text4-3"] = {431}
tNpcGossip[17282]["Text431"] = tSpringFestival2016_ScareBeast_Text[17282]["Text431"]
tNpcGossip[17282]["tOption4-3"] = {431}
tNpcGossip[17282]["Option431"] = tSpringFestival2016_ScareBeast_Text[17282]["Option431"]


--17283 银须老者(困兽林) lookface=3374  face=610006
--头像一致,不再定义
tNpcGossip[17283] = tNpcGossip[17283] or DefaultNpc:new{}
tNpcGossip[17283]["OptionHidden"] = 1

tNpcGossip[17283]["Text1-1"] = {111,112}
tNpcGossip[17283]["Text111"] = tSpringFestival2016_ScareBeast_Text[17283]["Text111"]
tNpcGossip[17283]["Text112"] = tSpringFestival2016_ScareBeast_Text[17283]["Text112"]
tNpcGossip[17283]["tOption1-1"] = {111,112,113}
tNpcGossip[17283]["Option111"] = tSpringFestival2016_ScareBeast_Text[17283]["Option111"]
tNpcGossip[17283]["OptionFunc111"] = "</F>SpringFestival2016_ScareBeast_LeaveMap"
tNpcGossip[17283]["Option112"] = tSpringFestival2016_ScareBeast_Text[17283]["Option112"]
tNpcGossip[17283]["OptionFunc112"] = "</F>SpringFestival2016_ScareBeast_ApplyReward</N>17282"
tNpcGossip[17283]["Option113"] = tSpringFestival2016_ScareBeast_Text[17283]["Option113"]
tNpcGossip[17283]["ChkFunc1-1"] = function()
	if Sys_ChkFullTime(tSpringFestival2016_ScareBeast_Data["DuringTime"]) then
		SpringFestival2016_ScareBeast_Phase(0)
		return true
	end
	SpringFestival2016_ScareBeast_LeaveMap()
	return false
end

--活动后对白
tNpcGossip[17283]["Text1-2"] = {121}
tNpcGossip[17283]["Text121"] = tSpringFestival2016_ScareBeast_Text[17282]["Text131"]
tNpcGossip[17283]["tOption1-2"] = {121}
tNpcGossip[17283]["Option121"] = tSpringFestival2016_ScareBeast_Text[17282]["Option131"]

--领取奖励
--失败,已完成
tNpcGossip[17283]["Text2-1"] = {211}
tNpcGossip[17283]["Text211"] = tSpringFestival2016_ScareBeast_Text[17282]["Text211"]
tNpcGossip[17283]["tOption2-1"] = {211}
tNpcGossip[17283]["Option211"] = tSpringFestival2016_ScareBeast_Text[17282]["Option211"]
--失败,未完成
tNpcGossip[17283]["Text2-2"] = {221}
tNpcGossip[17283]["Text221"] = tSpringFestival2016_ScareBeast_Text[17282]["Text221"]
tNpcGossip[17283]["tOption2-2"] = {221}
tNpcGossip[17283]["Option221"] = tSpringFestival2016_ScareBeast_Text[17282]["Option221"]
--失败,背包已满
tNpcGossip[17283]["Text2-3"] = {231}
tNpcGossip[17283]["Text231"] = tSpringFestival2016_ScareBeast_Text[17282]["Text231"]
tNpcGossip[17283]["tOption2-3"] = {231}
tNpcGossip[17283]["Option231"] = tSpringFestival2016_ScareBeast_Text[17282]["Option231"]


--17284 年兽 lookface = 3375 face = 610011(无头像)
tNpcGossip[17284] = tNpcGossip[17284] or DefaultNpc:new{}
tNpcGossip[17284]["OptionHidden"] = 1
--已完成或活动已过
tNpcGossip[17284]["Text1-1"] = {111}
tNpcGossip[17284]["Text111"] = tSpringFestival2016_ScareBeast_Text[17284]["Text111"]
tNpcGossip[17284]["tOption1-1"] = {111}
tNpcGossip[17284]["Option111"] = tSpringFestival2016_ScareBeast_Text[17284]["Option111"]
tNpcGossip[17284]["ChkFunc1-1"] = function()
	return SpringFestival2016_ScareBeast_BeastDialog()
end


--未完成,对白随机出一种
tNpcGossip[17284]["Text1-2"] = {121}
--此处对白共5种,随机替换
tNpcGossip[17284]["Text121"] = tSpringFestival2016_ScareBeast_Text[17284]["Text121"]
tNpcGossip[17284]["tOption1-2"] = {121,122,123}
tNpcGossip[17284]["Option121"] = tSpringFestival2016_ScareBeast_Text[17284]["Option121"]
tNpcGossip[17284]["OptionFunc121"] = "</F>SpringFestival2016_ScareBeast_ScareBeast</N>17284</N>0"
tNpcGossip[17284]["Option122"] = tSpringFestival2016_ScareBeast_Text[17284]["Option122"]
tNpcGossip[17284]["OptionFunc122"] = "</F>SpringFestival2016_ScareBeast_ScareBeast</N>17284</N>1"
tNpcGossip[17284]["Option123"] = tSpringFestival2016_ScareBeast_Text[17284]["Option123"]

tNpcGossip[17284]["Text2-2"] = {221}
tNpcGossip[17284]["Text221"] = tSpringFestival2016_ScareBeast_Text[17284]["Text221"]
tNpcGossip[17284]["tOption2-2"] = {221,222}
tNpcGossip[17284]["Option221"] = tSpringFestival2016_ScareBeast_Text[17284]["Option221"]
tNpcGossip[17284]["OptionPoint221"] = "1-2"
tNpcGossip[17284]["Option222"] = tSpringFestival2016_ScareBeast_Text[17284]["Option222"]


----------------------------怪物模版部分-------------------------------------------------
--爆竹妖,7652
--tMonster[7652] = tMonster[7652] or {}
--tMonster[7652]["tFunction"] = tMonster[7652]["tFunction"] or {}
--table.insert(tMonster[7652]["tFunction"],SpringFestival2016_ScareBeast_MonsterDie)


------------------------------物品模版部分------------------------
--小爆竹 3005370
tItem[3005370] = tItem[3005370] or {}
tItem[3005370]["Function"] = function(nItemId,sItemName)
	SpringFestival2016_ScareBeast_Fusion(nItemId)
end


