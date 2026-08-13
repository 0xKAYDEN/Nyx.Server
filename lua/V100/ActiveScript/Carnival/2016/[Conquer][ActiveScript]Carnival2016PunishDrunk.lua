------------------------------------------------------------------------------------
--Name:			151204[阿语征服][活动脚本]2016狂欢节活动之对付醉鬼
--Purpose:		2016狂欢节活动之对付醉鬼
--Creator:		黄昕哲
--Created:		2015/12/08
------------------------------------------------------------------------------------
--[[
命名前缀 Carnival2016_PunishDrunk_

--stc(111,47)	记录玩家是否完成任务并领取奖励
--stc(111,48)	记录玩家成功灌醒醉醺醺的醉鬼数量
--stc(111,49)	记录玩家成功捕捉喝醉的士兵数量

--stc(111,57)	记录点击醉醺醺的酒鬼（id=15377）的情况（0：失败 1表示成功）
--stc(111,58)	记录点击醉醺醺的酒鬼（id=15378）的情况（0：失败 1表示成功）
--stc(111,59)	记录点击醉醺醺的酒鬼（id=15379）的情况（0：失败 1表示成功）
--stc(111,60)	记录点击醉醺醺的酒鬼（id=15380）的情况（0：失败 1表示成功）
--stc(111,61)	记录点击醉醺醺的酒鬼（id=15381）的情况（0：失败 1表示成功）
--stc(111,62)	记录点击醉醺醺的酒鬼（id=15382）的情况（0：失败 1表示成功）
--stc(111,63)	记录点击醉醺醺的酒鬼（id=15383）的情况（0：失败 1表示成功）
--stc(111,64)	记录点击醉醺醺的酒鬼（id=15384）的情况（0：失败 1表示成功）

----8个喝醉的士兵坐标（475,341）（478,376）（472,390）（439,387）（416,380）（417,360）（429,348）（427,331）
]]--

local tCarnival2016_PunishDrunk_Data = {}
	tCarnival2016_PunishDrunk_Data["Before"] = "2016-01-01 00:00 2017-03-01 23:59"
	tCarnival2016_PunishDrunk_Data["During"] = "2017-03-02 00:00 2017-03-08 23:59"

	tCarnival2016_PunishDrunk_Data["Level"] = 80
	tCarnival2016_PunishDrunk_Data["Meto"] = 0
	
	tCarnival2016_PunishDrunk_Data["ExploreTime"] = 2
	tCarnival2016_PunishDrunk_Data["ExploreAct"] = 100
	
	
	tCarnival2016_PunishDrunk_Data["MouseIcon"] = 12
	

	
local tCarnival2016_PunishDrunk_Status = {}
	tCarnival2016_PunishDrunk_Status["Status"] = 55
	tCarnival2016_PunishDrunk_Status["Power"] = 200
	tCarnival2016_PunishDrunk_Status["Secs"] = 5
	tCarnival2016_PunishDrunk_Status["Times"] = 1
	tCarnival2016_PunishDrunk_Status["RemainTime"] = 5
	tCarnival2016_PunishDrunk_Status["EndTime"] = 1
	tCarnival2016_PunishDrunk_Status["Recordable"] = 1

	
	
	
	

local tCarnival2016_PunishDrunk_Id = {}
	tCarnival2016_PunishDrunk_Id["Tea"] = 3000481
	tCarnival2016_PunishDrunk_Id["Rope"] = 3000482
	
	
	tCarnival2016_PunishDrunk_Id["Guard"] = 15376
	
	tCarnival2016_PunishDrunk_Id["MonsterType"] = 7165


local tCarnival2016_PunishDrunk_Pos = {}

	tCarnival2016_PunishDrunk_Pos["MapId"] = 1002

	tCarnival2016_PunishDrunk_Pos["Guard"] = {}
	tCarnival2016_PunishDrunk_Pos["Guard"]["CellX"] = 299
	tCarnival2016_PunishDrunk_Pos["Guard"]["CellY"] = 360
	
	tCarnival2016_PunishDrunk_Pos["Drunk"] = {}
	tCarnival2016_PunishDrunk_Pos["Drunk"][1] = {}
	tCarnival2016_PunishDrunk_Pos["Drunk"][1]["Id"] = 15377
	tCarnival2016_PunishDrunk_Pos["Drunk"][1]["CellX"] = 294
	tCarnival2016_PunishDrunk_Pos["Drunk"][1]["CellY"] = 290

	tCarnival2016_PunishDrunk_Pos["Drunk"][2] = {}
	tCarnival2016_PunishDrunk_Pos["Drunk"][2]["Id"] = 15378
	tCarnival2016_PunishDrunk_Pos["Drunk"][2]["CellX"] = 295
	tCarnival2016_PunishDrunk_Pos["Drunk"][2]["CellY"] = 262

	tCarnival2016_PunishDrunk_Pos["Drunk"][3] = {}
	tCarnival2016_PunishDrunk_Pos["Drunk"][3]["Id"] = 15379
	tCarnival2016_PunishDrunk_Pos["Drunk"][3]["CellX"] = 303
	tCarnival2016_PunishDrunk_Pos["Drunk"][3]["CellY"] = 256

	tCarnival2016_PunishDrunk_Pos["Drunk"][4] = {}
	tCarnival2016_PunishDrunk_Pos["Drunk"][4]["Id"] = 15380
	tCarnival2016_PunishDrunk_Pos["Drunk"][4]["CellX"] = 316
	tCarnival2016_PunishDrunk_Pos["Drunk"][4]["CellY"] = 256

	tCarnival2016_PunishDrunk_Pos["Drunk"][5] = {}
	tCarnival2016_PunishDrunk_Pos["Drunk"][5]["Id"] = 15381
	tCarnival2016_PunishDrunk_Pos["Drunk"][5]["CellX"] = 326
	tCarnival2016_PunishDrunk_Pos["Drunk"][5]["CellY"] = 272

	tCarnival2016_PunishDrunk_Pos["Drunk"][6] = {}
	tCarnival2016_PunishDrunk_Pos["Drunk"][6]["Id"] = 15382
	tCarnival2016_PunishDrunk_Pos["Drunk"][6]["CellX"] = 331
	tCarnival2016_PunishDrunk_Pos["Drunk"][6]["CellY"] = 287

	tCarnival2016_PunishDrunk_Pos["Drunk"][7] = {}
	tCarnival2016_PunishDrunk_Pos["Drunk"][7]["Id"] = 15383
	tCarnival2016_PunishDrunk_Pos["Drunk"][7]["CellX"] = 325
	tCarnival2016_PunishDrunk_Pos["Drunk"][7]["CellY"] = 294

	tCarnival2016_PunishDrunk_Pos["Drunk"][8] = {}
	tCarnival2016_PunishDrunk_Pos["Drunk"][8]["Id"] = 15384
	tCarnival2016_PunishDrunk_Pos["Drunk"][8]["CellX"] = 307
	tCarnival2016_PunishDrunk_Pos["Drunk"][8]["CellY"] = 244

	--玩家飞出去的坐标,等整合后设计修改
	tCarnival2016_PunishDrunk_Pos["User"] = {}
	tCarnival2016_PunishDrunk_Pos["User"][1] = {298,296}
	tCarnival2016_PunishDrunk_Pos["User"][2] = {315,298}
	tCarnival2016_PunishDrunk_Pos["User"][3] = {324,299}
	tCarnival2016_PunishDrunk_Pos["User"][4] = {337,279}
	tCarnival2016_PunishDrunk_Pos["User"][5] = {324,254}

	
local tCarnival2016_PunishDrunk_Rate = {}
	tCarnival2016_PunishDrunk_Rate["Dialog"] = {}
	tCarnival2016_PunishDrunk_Rate["Dialog"][1] = {}
	tCarnival2016_PunishDrunk_Rate["Dialog"][1]["ItemChanceSum"] = 10000
	
	tCarnival2016_PunishDrunk_Rate["Dialog"][1][1] = {}
	tCarnival2016_PunishDrunk_Rate["Dialog"][1][1]["RandomItemChanceType"] = 2
	tCarnival2016_PunishDrunk_Rate["Dialog"][1][1]["ItemChance"] = 2500
	tCarnival2016_PunishDrunk_Rate["Dialog"][1][1]["Item_1"] = 1

	tCarnival2016_PunishDrunk_Rate["Dialog"][1][2] = {}
	tCarnival2016_PunishDrunk_Rate["Dialog"][1][2]["RandomItemChanceType"] = 2
	tCarnival2016_PunishDrunk_Rate["Dialog"][1][2]["ItemChance"] = 2500
	tCarnival2016_PunishDrunk_Rate["Dialog"][1][2]["Item_1"] = 2
	
	tCarnival2016_PunishDrunk_Rate["Dialog"][1][3] = {}
	tCarnival2016_PunishDrunk_Rate["Dialog"][1][3]["RandomItemChanceType"] = 2
	tCarnival2016_PunishDrunk_Rate["Dialog"][1][3]["ItemChance"] = 2500
	tCarnival2016_PunishDrunk_Rate["Dialog"][1][3]["Item_1"] = 3
	
	tCarnival2016_PunishDrunk_Rate["Dialog"][1][4] = {}
	tCarnival2016_PunishDrunk_Rate["Dialog"][1][4]["RandomItemChanceType"] = 2
	tCarnival2016_PunishDrunk_Rate["Dialog"][1][4]["ItemChance"] = 2500
	tCarnival2016_PunishDrunk_Rate["Dialog"][1][4]["Item_1"] = 4

	tCarnival2016_PunishDrunk_Rate["Drunk"] = {}
	tCarnival2016_PunishDrunk_Rate["Drunk"][1] = {}
	tCarnival2016_PunishDrunk_Rate["Drunk"][1]["ItemChanceSum"] = 10000
	
	tCarnival2016_PunishDrunk_Rate["Drunk"][1][1] = {}
	tCarnival2016_PunishDrunk_Rate["Drunk"][1][1]["RandomItemChanceType"] = 2
	tCarnival2016_PunishDrunk_Rate["Drunk"][1][1]["ItemChance"] = 2000
	tCarnival2016_PunishDrunk_Rate["Drunk"][1][1]["Item_1"] = 1
	
	tCarnival2016_PunishDrunk_Rate["Drunk"][1][2] = {}
	tCarnival2016_PunishDrunk_Rate["Drunk"][1][2]["RandomItemChanceType"] = 2
	tCarnival2016_PunishDrunk_Rate["Drunk"][1][2]["ItemChance"] = 2000
	tCarnival2016_PunishDrunk_Rate["Drunk"][1][2]["Item_1"] = 2
	
	tCarnival2016_PunishDrunk_Rate["Drunk"][1][3] = {}
	tCarnival2016_PunishDrunk_Rate["Drunk"][1][3]["RandomItemChanceType"] = 2
	tCarnival2016_PunishDrunk_Rate["Drunk"][1][3]["ItemChance"] = 2000
	tCarnival2016_PunishDrunk_Rate["Drunk"][1][3]["Item_1"] = 3
	
	tCarnival2016_PunishDrunk_Rate["Drunk"][1][4] = {}
	tCarnival2016_PunishDrunk_Rate["Drunk"][1][4]["RandomItemChanceType"] = 2
	tCarnival2016_PunishDrunk_Rate["Drunk"][1][4]["ItemChance"] = 2000
	tCarnival2016_PunishDrunk_Rate["Drunk"][1][4]["Item_1"] = 4
	
	tCarnival2016_PunishDrunk_Rate["Drunk"][1][5] = {}
	tCarnival2016_PunishDrunk_Rate["Drunk"][1][5]["RandomItemChanceType"] = 2
	tCarnival2016_PunishDrunk_Rate["Drunk"][1][5]["ItemChance"] = 2000
	tCarnival2016_PunishDrunk_Rate["Drunk"][1][5]["Item_1"] = 5
	
local tCarnival2016_PunishDrunk_Stc = {}
--任务进行阶段
	tCarnival2016_PunishDrunk_Stc["Phase"] = {}
	tCarnival2016_PunishDrunk_Stc["Phase"]["Event"] = 111
	tCarnival2016_PunishDrunk_Stc["Phase"]["Type"] = 47
	tCarnival2016_PunishDrunk_Stc["Phase"]["Limit"] = 1

--灌醒醉鬼数量
	tCarnival2016_PunishDrunk_Stc["UseTea"] = {}
	tCarnival2016_PunishDrunk_Stc["UseTea"]["Event"] = 111
	tCarnival2016_PunishDrunk_Stc["UseTea"]["Type"] = 48
	tCarnival2016_PunishDrunk_Stc["UseTea"]["Limit"] = 5

	--捕捉士兵数量
	tCarnival2016_PunishDrunk_Stc["Catch"] = {}
	tCarnival2016_PunishDrunk_Stc["Catch"]["Event"] = 111
	tCarnival2016_PunishDrunk_Stc["Catch"]["Type"] = 49
	tCarnival2016_PunishDrunk_Stc["Catch"]["Limit"] = 5
	
	--点击醉鬼的情况
	tCarnival2016_PunishDrunk_Stc[15377] = {}
	tCarnival2016_PunishDrunk_Stc[15377]["Event"] = 111
	tCarnival2016_PunishDrunk_Stc[15377]["Type"] = 57
	
	tCarnival2016_PunishDrunk_Stc[15378] = {}
	tCarnival2016_PunishDrunk_Stc[15378]["Event"] = 111
	tCarnival2016_PunishDrunk_Stc[15378]["Type"] = 58

	tCarnival2016_PunishDrunk_Stc[15379] = {}
	tCarnival2016_PunishDrunk_Stc[15379]["Event"] = 111
	tCarnival2016_PunishDrunk_Stc[15379]["Type"] = 59
	
	tCarnival2016_PunishDrunk_Stc[15380] = {}
	tCarnival2016_PunishDrunk_Stc[15380]["Event"] = 111
	tCarnival2016_PunishDrunk_Stc[15380]["Type"] = 60
	
	tCarnival2016_PunishDrunk_Stc[15381] = {}
	tCarnival2016_PunishDrunk_Stc[15381]["Event"] = 111
	tCarnival2016_PunishDrunk_Stc[15381]["Type"] = 61
	
	tCarnival2016_PunishDrunk_Stc[15382] = {}
	tCarnival2016_PunishDrunk_Stc[15382]["Event"] = 111
	tCarnival2016_PunishDrunk_Stc[15382]["Type"] = 62
	
	tCarnival2016_PunishDrunk_Stc[15383] = {}
	tCarnival2016_PunishDrunk_Stc[15383]["Event"] = 111
	tCarnival2016_PunishDrunk_Stc[15383]["Type"] = 63
	
	tCarnival2016_PunishDrunk_Stc[15384] = {}
	tCarnival2016_PunishDrunk_Stc[15384]["Event"] = 111
	tCarnival2016_PunishDrunk_Stc[15384]["Type"] = 64


local tCarnival2016_PunishDrunk_Log = {}
	tCarnival2016_PunishDrunk_Log["LogId"] = 10001516
	tCarnival2016_PunishDrunk_Log["FestivalId"] = 3373
	
	tCarnival2016_PunishDrunk_Log["Get_Tea"] = "0,0,0,0,10001516,1,3000481,1"
	tCarnival2016_PunishDrunk_Log["Use_Tea"] = "0,0,3000481,1,10001516,2,0,0"
	tCarnival2016_PunishDrunk_Log["Get_Rope"] = "0,0,0,0,10001516,1,3000482,1"
	tCarnival2016_PunishDrunk_Log["Use_Rope"] = "0,0,3000482,1,10001516,2,0,0"

	tCarnival2016_PunishDrunk_Log["TaskFin"] = "0,0,0,0,10001516,2,3003625,1"

------------------------------------------------公用逻辑-------------------------------------------------------
--时间检测
function Carnival2016_PunishDrunk_TimeJudge()
	if Sys_ChkFullTime(tCarnival2016_PunishDrunk_Data["Before"]) then
		return 0
	elseif Sys_ChkFullTime(tCarnival2016_PunishDrunk_Data["During"]) then
		return 1
	else
		return 2
	end
end

--操作掩码,sType为掩码的类型,nValue==nil时,返回当前掩码值,当nValue==number时,将掩码设置为nValue
function Carnival2016_PunishDrunk_Stc(sType,nValue,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nEvent = tCarnival2016_PunishDrunk_Stc[sType]["Event"]
	local nData = tCarnival2016_PunishDrunk_Stc[sType]["Type"]

	--当参数为数字时,设置掩码,重置时间戳
	if type(nValue) == "number" then
		Task_SetStatistic(nEvent,nData,nValue,1,nUserId)
		Carnival2016_PunishDrunk_TimeStamp(sType,nil,nUserId)
	--当参数为nil时,返回掩码值
	else
		return Get_UserStatisticValue(nEvent,nData,nUserId)
	end
end

--操作时间戳,sType为掩码的类型,nValue==nil时,重置时间戳,当nValue==number时,比较隔天数量
function Carnival2016_PunishDrunk_TimeStamp(sType,nValue,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nEvent = tCarnival2016_PunishDrunk_Stc[sType]["Event"]
	local nData = tCarnival2016_PunishDrunk_Stc[sType]["Type"]
	--当nValue为数字时,比较时间戳间隔天数
	if type(nValue) == "number" then
		return Task_StcInterval(nEvent,nData,nValue,4,nUserId)
		
	--当参数为nil时,重置时间戳
	else
		Task_SetStcTimestamp(nEvent,nData,0,nUserId)
	end
end

--每天重置掩码
function Carnival2016_PunishDrunk_ResetStc(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	if Carnival2016_PunishDrunk_TimeStamp("Phase",1,nUserId) then
		--需要重置所有掩码
		Carnival2016_PunishDrunk_Stc("Phase",0,nUserId)
		Carnival2016_PunishDrunk_Stc("UseTea",0,nUserId)
		Carnival2016_PunishDrunk_Stc("Catch",0,nUserId)
		for nDrunkId = 15377,15384 do
			Carnival2016_PunishDrunk_Stc(nDrunkId,0,nUserId)
		end
	end
end

--每天重置醒酒汤掩码
function Carnival2016_PunishDrunk_ResetTeaStc(nDrunkId,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	if (Carnival2016_PunishDrunk_Stc(nDrunkId,nil,nUserId) >= 1) and Carnival2016_PunishDrunk_TimeStamp(nDrunkId,1,nUserId) then
		Carnival2016_PunishDrunk_Stc(nDrunkId,0,nUserId)
	end
end

------------------------------------------------npc逻辑-------------------------------------------------------
--领取醒酒汤
function Carnival2016_PunishDrunk_ApplyTea(nNpcId)
	--活动时间后
	if Carnival2016_PunishDrunk_TimeJudge() >= 2 then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	local nLevel = tCarnival2016_PunishDrunk_Data["Level"]
	local nMeto = tCarnival2016_PunishDrunk_Data["Meto"]
	--等级不足
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMeto) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	--已经完成任务
	if Carnival2016_PunishDrunk_Stc("Phase") >= 1 then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	--已有醒酒汤
	local nTeaId = tCarnival2016_PunishDrunk_Id["Tea"]
	if Item_ChkItem(nTeaId) then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
	--背包满
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"2-5")
		return
	end
	
	--条件都满足.领取,对白,log
	Item_AddItem(nTeaId)
	LinkNpcGossipFunc_New(nNpcId,"2-6")
	Sys_SaveActionFestivalLog(tCarnival2016_PunishDrunk_Log["Get_Tea"])
end

--领取绳索
function Carnival2016_PunishDrunk_ApplyRope(nNpcId)
	--活动时间后
	if Carnival2016_PunishDrunk_TimeJudge() >= 2 then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	local nLevel = tCarnival2016_PunishDrunk_Data["Level"]
	local nMeto = tCarnival2016_PunishDrunk_Data["Meto"]
	--等级不足
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMeto) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	--已经完成任务
	if Carnival2016_PunishDrunk_Stc("Phase") >= 1 then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	--已有绳索
	local nRopeId = tCarnival2016_PunishDrunk_Id["Rope"]
	if Item_ChkItem(nRopeId) then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	--背包满
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	--条件都满足.领取(10个),对白,log
	Item_AddItem(nRopeId,0,10)
	LinkNpcGossipFunc_New(nNpcId,"3-3")
	Sys_SaveActionFestivalLog(tCarnival2016_PunishDrunk_Log["Get_Rope"])
end

--领取奖励
function Carnival2016_PunishDrunk_ApplyAward(nNpcId)
	--活动时间后
	if Carnival2016_PunishDrunk_TimeJudge() >= 2 then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	local nLevel = tCarnival2016_PunishDrunk_Data["Level"]
	local nMeto = tCarnival2016_PunishDrunk_Data["Meto"]
	--等级不足
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMeto) then
		LinkNpcGossipFunc_New(nNpcId,"4-3")
		return
	end
	--已经领取过
	if Carnival2016_PunishDrunk_Stc("Phase") >= 1 then
		LinkNpcGossipFunc_New(nNpcId,"4-4")
		return
	end
	local nTeaLimit = tCarnival2016_PunishDrunk_Stc["UseTea"]["Limit"]
	local nCatchLimit = tCarnival2016_PunishDrunk_Stc["Catch"]["Limit"]
	
	-- --当天尚未完成
	-- if (Carnival2016_PunishDrunk_Stc("UseTea") < nTeaLimit) or (Carnival2016_PunishDrunk_Stc("Catch") < nCatchLimit) then
		-- LinkNpcGossipFunc_New(nNpcId,"4-1")
		-- return
	-- end
	
	--当天尚未完成
	if Carnival2016_PunishDrunk_Stc("UseTea") < nTeaLimit then
		LinkNpcGossipFunc_New(nNpcId,"4-1")
		return
	end

	--背包满
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"4-2")
		return
	end
	
	--条件满足,删除身上的背包和绳索,重置掩码,给奖励,对白,log
	local nTeaId = tCarnival2016_PunishDrunk_Id["Tea"]
	local nRopeId = tCarnival2016_PunishDrunk_Id["Rope"]
	
	if Item_ChkItem(nTeaId) and Item_DelAllItemByType(nTeaId) then
	end
	-- if Item_ChkItem(nRopeId) and Item_DelAllItemByType(nRopeId) then
	-- end
	Carnival2016_PunishDrunk_Stc("Phase",1)
	User_TalkChannel2005(tCarnival2016_PunishDrunk_Text[15376]["GetAward"])
	FestivalGeneralPackage_GetGift(tCarnival2016_PunishDrunk_Log["FestivalId"],tCarnival2016_PunishDrunk_Log["LogId"])
	Sys_SaveActionFestivalLog(tCarnival2016_PunishDrunk_Log["TaskFin"])
end

	--未使用过醒酒汤,随机出对白
function Carnival2016_PunishDrunk_DrunkDialogJudge(nNpcId)
	local _,tItem1 = Probabil_RandomAward(tCarnival2016_PunishDrunk_Rate["Dialog"],1)
	local nNum = tItem1[1]["tAward"][1]["Item_1"]
	local tDialogText = tCarnival2016_PunishDrunk_Text["Drunk"]["Text"][nNum]
	local tDialogOption = tCarnival2016_PunishDrunk_Text["Drunk"]["Option"][nNum]
	tNpcGossip[nNpcId]["Text111"] = tDialogText
	tNpcGossip[nNpcId]["Option111"] = tDialogOption
end


------------------------------------------------物品逻辑-------------------------------------------------------
--使用醒酒汤
function Carnival2016_PunishDrunk_UseTea(nItemId)
	--活动过期
	if Carnival2016_PunishDrunk_TimeJudge() ~= 1 then
		Sys_MsgBox(tCarnival2016_PunishDrunk_Text[3000481]["Expire"])
		return
	end

	--活动期间,选择目标
	local sFunc = "Carnival2016_PunishDrunk_ChooseNpc"
	Sys_MouseWaitClick(tCarnival2016_PunishDrunk_Data["MouseIcon"],sFunc)
end

--点选目标后进行判断
function Carnival2016_PunishDrunk_ChooseNpc(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	--活动过期
	if Carnival2016_PunishDrunk_TimeJudge() ~= 1 then
		Sys_MsgBox(tCarnival2016_PunishDrunk_Text[3000481]["Expire"],"NULL","NULL",nUserId)
		Sys_MouseClearStatus(nUserId)
		return
	end
	local nDrunkId = Carnival2016_PunishDrunk_GetDrunkId(nUserId)

	--当id为空时,说明玩家附近没有npc
	if nil == nDrunkId then
		if Sys_NpcMouseType(tCarnival2016_PunishDrunk_Text[3000481]["Name"],nUserId) then
			Sys_MouseClearStatus(nUserId)
			Sys_MsgBox(tCarnival2016_PunishDrunk_Text[3000481]["Distance"],"NULL","NULL",nUserId)
			return
		end
		return
	end
	--当附近有的时候,清除指针状态
	Sys_MouseClearStatus(nUserId)
	
	--存在npc,存在昨天的掩码先重置掩码
	
	Carnival2016_PunishDrunk_ResetTeaStc(nDrunkId,nUserId)
	
	--当天已经完成过
	if Carnival2016_PunishDrunk_Stc("Phase",nil,nUserId) >= 1 then
		Sys_MsgBox(tCarnival2016_PunishDrunk_Text[3000481]["Finish"],"NULL","NULL",nUserId)
		return
	end

	--当天已经点击过
	if Carnival2016_PunishDrunk_Stc(nDrunkId,nil,nUserId) >= 1 then
		Sys_MsgBox(tCarnival2016_PunishDrunk_Text[3000481]["Used"],"NULL","NULL",nUserId)
		return
	end
	
	Carnival2016_PunishDrunk_ResetStc(nUserId)
	
	if not Item_ChkItem(tCarnival2016_PunishDrunk_Id["Tea"],1,0,nUserId) then
		User_TalkChannel2005(tCarnival2016_PunishDrunk_Text[3000481]["NoItem"],nUserId)
	end
	
	--检测已经灌过醒酒汤的数目
	local nUseTeaLimit = tCarnival2016_PunishDrunk_Stc["UseTea"]["Limit"]
	if Carnival2016_PunishDrunk_Stc("UseTea",nil,nUserId) >= nUseTeaLimit then
		-- User_TalkChannel2005(tCarnival2016_PunishDrunk_Text[3000481]["Finish"],nUserId)
		Sys_MsgBox(tCarnival2016_PunishDrunk_Text[3000481]["Finish"],"</F>Carnival2016_PunishDrunk_SendToNpc","NULL",nUserId)
		return
	end


	--读条
	local nExploreTime = tCarnival2016_PunishDrunk_Data["ExploreTime"]
	local nExploreText = tCarnival2016_PunishDrunk_Text[3000481]["Explore"]
	local nExploreAct = tCarnival2016_PunishDrunk_Data["ExploreAct"]
	local sFunc = "Carnival2016_PunishDrunk_TeaOnDrunk</N>" .. nDrunkId .. "<./N>" .. nUserId
	User_SetExplore(nExploreTime,nExploreText,nExploreAct,sFunc,"NULL",nUserId)
end

--遍历数组,判断npcid
function Carnival2016_PunishDrunk_GetDrunkId(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nUserX = Get_UserPositionX(nUserId)
	local nUserY = Get_UserPositionY(nUserId)
	local nUserMapId = Get_UserMapId(nUserId)
	
	local nNpcX = 0
	local nNpcY = 0
	
	local nDistanceX = 0
	local nDistanceY = 0
	
	--地图不正确的情况
	if nUserMapId ~= tCarnival2016_PunishDrunk_Pos["MapId"] then
		return
	end
	
	--地图正确,查看坐标间隔是否在2位之内
	for _,v in pairs(tCarnival2016_PunishDrunk_Pos["Drunk"]) do
		nNpcX = v["CellX"]
		nNpcY = v["CellY"]
		nDistanceX = math.abs(nNpcX - nUserX)
		nDistanceY = math.abs(nNpcY - nUserY)
		if (nDistanceX <= 7) and (nDistanceY <= 7) then
			return v["Id"]
		end
	end
	
	--全坐标不正确
	return
end

--灌醒醉鬼读条函数
function Carnival2016_PunishDrunk_TeaOnDrunk(nNpcId,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	--活动过期
	if Carnival2016_PunishDrunk_TimeJudge() ~= 1 then
		Sys_MsgBox(tCarnival2016_PunishDrunk_Text[3000481]["Expire"],"NULL","NULL",nUserId)
		return
	end
	local _,tItem1 = Probabil_RandomAward(tCarnival2016_PunishDrunk_Rate["Drunk"],1)
	local nResult = tItem1[1]["tAward"][1]["Item_1"]
	local nUseTeaTime = 0
	if not Item_ChkItem(tCarnival2016_PunishDrunk_Id["Tea"],1,0,nUserId) then
		User_TalkChannel2005(tCarnival2016_PunishDrunk_Text[3000481]["NoItem"],nUserId)
	end
	
	local nUseTeaLimit = tCarnival2016_PunishDrunk_Stc["UseTea"]["Limit"]
	if Carnival2016_PunishDrunk_Stc("UseTea",nil,nUserId) >= nUseTeaLimit then
		-- User_TalkChannel2005(tCarnival2016_PunishDrunk_Text[3000481]["Finish"],nUserId)
		Sys_MsgBox(tCarnival2016_PunishDrunk_Text[3000481]["Finish"],"</F>Carnival2016_PunishDrunk_SendToNpc","NULL",nUserId)
		return
	end
	--根据随机返回结果,反馈灌醒醉鬼的结果
	--成功,当前掩码置1,灌醒+1,对白
	if nResult == 1 then
		nUseTeaTime = Carnival2016_PunishDrunk_Stc("UseTea",nil,nUserId)
		Carnival2016_PunishDrunk_Stc("UseTea",nUseTeaTime + 1,nUserId)
		Carnival2016_PunishDrunk_Stc(nNpcId,1,nUserId)
	--成功,,当前掩码置1,灌醒+1,状态,对白
	elseif nResult == 2 then
		nUseTeaTime = Carnival2016_PunishDrunk_Stc("UseTea",nil,nUserId)
		Carnival2016_PunishDrunk_Stc("UseTea",nUseTeaTime + 1,nUserId)
		Carnival2016_PunishDrunk_Stc(nNpcId,1,nUserId)
		local nStatus = tCarnival2016_PunishDrunk_Status["Status"]
		local nPower =  tCarnival2016_PunishDrunk_Status["Power"]
		local nSecs = tCarnival2016_PunishDrunk_Status["Secs"]
		local nTimes = tCarnival2016_PunishDrunk_Status["Times"]
		local nRemainTime = tCarnival2016_PunishDrunk_Status["RemainTime"]
		local nEndTime = tCarnival2016_PunishDrunk_Status["EndTime"]
		local nRecordable = tCarnival2016_PunishDrunk_Status["Recordable"]
		-- local nUserId = Get_UserId()
		User_AddRoleStatus(nStatus,nPower,nSecs,nTimes,nRemainTime,nEndTime,nRecordable,0,0,nUserId)
	--失败,对白
	elseif nResult == 3 then
	--失败,对白
	elseif nResult == 4 then
	--失败,删除醒酒汤+对白
	elseif nResult == 5 then
		if Item_ChkItem(tCarnival2016_PunishDrunk_Id["Tea"],1,0,nUserId) and Item_DelAllItemByType(tCarnival2016_PunishDrunk_Id["Tea"],nUserId) then
		else
			nResult = 4
		end
	end
	User_TalkChannel2005(tCarnival2016_PunishDrunk_Text[3000481][nResult],nUserId)
end

-- 完成任务，寻路到npc
function Carnival2016_PunishDrunk_SendToNpc()
	local nPosX = tCarnival2016_PunishDrunk_Pos["Guard"]["CellX"]
	local nPosY = tCarnival2016_PunishDrunk_Pos["Guard"]["CellY"]
	local nMapId = tCarnival2016_PunishDrunk_Pos["MapId"]
	local nNpcId = tCarnival2016_PunishDrunk_Id["Guard"]
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
end

--使用绳索
function Carnival2016_PunishDrunk_UseRope(nItemId)
	--活动过期
	if Carnival2016_PunishDrunk_TimeJudge() ~= 1 then
		Sys_MsgBox(tCarnival2016_PunishDrunk_Text[3000482]["Expire"])
		return
	end

	--活动期间,选择目标
	local sFunc = "Carnival2016_PunishDrunk_ChooseMonster"
	Sys_MouseWaitClick(tCarnival2016_PunishDrunk_Data["MouseIcon"],sFunc,0)
end

--使用绳索点选后判断
function Carnival2016_PunishDrunk_ChooseMonster(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	--活动过期
	if Carnival2016_PunishDrunk_TimeJudge() ~= 1 then
		Sys_MsgBox(tCarnival2016_PunishDrunk_Text[3000482]["Expire"],"NULL","NULL",nUserId)
		Sys_MouseClearStatus(nUserId)
		return
	end
	local nMonsterType = tCarnival2016_PunishDrunk_Id["MonsterType"]
	
	if not Sys_MonsterMouseType(tostring(nMonsterType),nUserId) then
		Sys_MouseClearStatus(nUserId)
		return
	end

	--存在怪物,昨天的掩码先重置掩码
	Carnival2016_PunishDrunk_ResetStc(nUserId)
	
	--当天已经完成过
	if Carnival2016_PunishDrunk_Stc("Phase",nil,nUserId) >= 1 then
		Sys_MouseClearStatus(nUserId)
		Sys_MsgBox(tCarnival2016_PunishDrunk_Text[3000482]["Finish"],"NULL","NULL",nUserId)
		return
	end
	
	--检测已经灌过醒酒汤的数目
	if Carnival2016_PunishDrunk_Stc("Catch",nil,nUserId) >= tCarnival2016_PunishDrunk_Stc["Catch"]["Limit"] then
		Sys_MsgBox(tCarnival2016_PunishDrunk_Text[3000482]["Finish"],"NULL","NULL",nUserId)
		return
	end
	
	if not Item_ChkItem(tCarnival2016_PunishDrunk_Id["Rope"],1,0,nUserId) then
		User_TalkChannel2005(tCarnival2016_PunishDrunk_Text[3000482]["NoItem"],nUserId)
	end
	
	--读条
	local nExploreTime = tCarnival2016_PunishDrunk_Data["ExploreTime"]
	local nExploreText = tCarnival2016_PunishDrunk_Text[3000482]["Explore"]
	local nExploreAct = tCarnival2016_PunishDrunk_Data["ExploreAct"]
	local sFunc = "Carnival2016_PunishDrunk_RopeOnSoldier"
	User_SetExplore(nExploreTime,nExploreText,nExploreAct,sFunc,"NULL",nUserId)
end

--绳索读条函数
function Carnival2016_PunishDrunk_RopeOnSoldier(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	--活动过期
	if Carnival2016_PunishDrunk_TimeJudge() ~= 1 then
		Sys_MsgBox(tCarnival2016_PunishDrunk_Text[3000482]["Expire"],"NULL","NULL",nUserId)
		return
	end
	local _,tItem1 = Probabil_RandomAward(tCarnival2016_PunishDrunk_Rate["Drunk"],1)
	local nResult = tItem1[1]["tAward"][1]["Item_1"]
	if not Item_ChkItem(tCarnival2016_PunishDrunk_Id["Rope"],1,0,nUserId) then
		User_TalkChannel2005(tCarnival2016_PunishDrunk_Text[3000482]["NoItem"],nUserId)
	end
	
	local nUseRopeLimit = tCarnival2016_PunishDrunk_Stc["Catch"]["Limit"]
	if Carnival2016_PunishDrunk_Stc("Catch",nil,nUserId) >= nUseRopeLimit then
		User_TalkChannel2005(tCarnival2016_PunishDrunk_Text[3000482]["Finish"],nUserId)
		return
	end
	local nCatchNum = 0
	local nRopeId = tCarnival2016_PunishDrunk_Id["Rope"]
	--根据随机返回结果,反馈灌醒醉鬼的结果
	--成功,捆绑+1,对白,删除士兵,删除绳索
	if nResult == 1 then
		if Item_ChkItem(nRopeId,1,0,nUserId) and Item_DelItem(nRopeId,1,0,nUserId) then
			nCatchNum = Carnival2016_PunishDrunk_Stc("Catch",nil,nUserId)
			Carnival2016_PunishDrunk_Stc("Catch",nCatchNum + 1,nUserId)
			Sys_MouseDeleteChosen(nUserId)
		end
	--成功,捆绑+1,状态,对白,删除士兵,删除所有绳索
	elseif nResult == 2 then
		if Item_ChkItem(nRopeId,1,0,nUserId) and Item_DelAllItemByType(nRopeId,nUserId) then
			nCatchNum = Carnival2016_PunishDrunk_Stc("Catch",nil,nUserId)
			Carnival2016_PunishDrunk_Stc("Catch",nCatchNum + 1,nUserId)
			Sys_MouseDeleteChosen(nUserId)
		end
	--失败,删除绳索
	elseif nResult == 3 then
		if Item_ChkItem(nRopeId,1,0,nUserId) and Item_DelItem(nRopeId,1,0,nUserId) then
			Sys_MouseClearStatus(nUserId)
		end
	--失败,删除士兵/绳索
	elseif nResult == 4 then
		if Item_ChkItem(nRopeId,1,0,nUserId) and Item_DelItem(nRopeId,1,0,nUserId) then
			Sys_MouseDeleteChosen(nUserId)
		end
	--失败,删除绳索
	elseif nResult == 5 then
		if Item_ChkItem(nRopeId,1,0,nUserId) and Item_DelItem(nRopeId,1,0,nUserId) then
			--随机打飞
			local _,tItem2 = Probabil_RandomAward(tCarnival2016_PunishDrunk_Rate["Drunk"],1)
			local nUserPosId = tItem2[1]["tAward"][1]["Item_1"]
			local nMapId = tCarnival2016_PunishDrunk_Pos["MapId"]
			local nUserX,nUserY = tCarnival2016_PunishDrunk_Pos["User"][nUserPosId][1],tCarnival2016_PunishDrunk_Pos["User"][nUserPosId][2]
			User_ChgMap(nMapId,nUserX,nUserY,0,nUserId)
			
			--眩晕
			local nStatus = tCarnival2016_PunishDrunk_Status["Status"]
			local nPower =  tCarnival2016_PunishDrunk_Status["Power"]
			local nSecs = tCarnival2016_PunishDrunk_Status["Secs"]
			local nTimes = tCarnival2016_PunishDrunk_Status["Times"]
			local nRemainTime = tCarnival2016_PunishDrunk_Status["RemainTime"]
			local nEndTime = tCarnival2016_PunishDrunk_Status["EndTime"]
			local nRecordable = tCarnival2016_PunishDrunk_Status["Recordable"]
			-- local nUserId = Get_UserId()
			User_AddRoleStatus(nStatus,nPower,nSecs,nTimes,nRemainTime,nEndTime,nRecordable,0,0,nUserId)
			Sys_MouseClearStatus(nUserId)
		end
	end
	Sys_MouseClearStatus(nUserId)
	User_TalkChannel2005(tCarnival2016_PunishDrunk_Text[3000482][nResult],nUserId)
end

------------------------------------------------npc模版-------------------------------------------------------
--//狂欢节治安队长 15376 face = 107 look = 2203
tNpcFace[2203] = 107
tNpcGossip[15376] = tNpcGossip[15376] or DefaultNpc:new{}
tNpcGossip[15376]["OptionHidden"] = 1

--活动时间前
tNpcGossip[15376]["Text1-1"] = {111,112,113}
tNpcGossip[15376]["Text111"] = tCarnival2016_PunishDrunk_Text[15376]["Text111"]
tNpcGossip[15376]["Text112"] = tCarnival2016_PunishDrunk_Text[15376]["Text112"]
tNpcGossip[15376]["Text113"] = tCarnival2016_PunishDrunk_Text[15376]["Text113"]
tNpcGossip[15376]["tOption1-1"] = {111}
tNpcGossip[15376]["ChkFunc1-1"] = function()
	return Carnival2016_PunishDrunk_TimeJudge() <= 0
end

tNpcGossip[15376]["Option111"] = tCarnival2016_PunishDrunk_Text[15376]["Option111"]

--活动时间内
tNpcGossip[15376]["Text1-2"] = {121,122,123,124,125,126,127,128}
tNpcGossip[15376]["Text121"] = tCarnival2016_PunishDrunk_Text[15376]["Text121"]
tNpcGossip[15376]["Text122"] = tCarnival2016_PunishDrunk_Text[15376]["Text122"]
tNpcGossip[15376]["Text123"] = tCarnival2016_PunishDrunk_Text[15376]["Text123"]
tNpcGossip[15376]["Text124"] = tCarnival2016_PunishDrunk_Text[15376]["Text124"]
tNpcGossip[15376]["Text125"] = tCarnival2016_PunishDrunk_Text[15376]["Text125"]
tNpcGossip[15376]["Text126"] = tCarnival2016_PunishDrunk_Text[15376]["Text126"]
tNpcGossip[15376]["Text127"] = tCarnival2016_PunishDrunk_Text[15376]["Text127"]
tNpcGossip[15376]["Text128"] = tCarnival2016_PunishDrunk_Text[15376]["Text128"]
tNpcGossip[15376]["tOption1-2"] = {121,122,124,125}
tNpcGossip[15376]["ChkFunc1-2"] = function()
	--每天重置掩码
	local nUserId = Get_UserId()
	Carnival2016_PunishDrunk_ResetStc(nUserId)
	return Carnival2016_PunishDrunk_TimeJudge() == 1
end

tNpcGossip[15376]["Option121"] = tCarnival2016_PunishDrunk_Text[15376]["Option121"]
tNpcGossip[15376]["OptionPoint121"] = "2-1"
tNpcGossip[15376]["Option122"] = tCarnival2016_PunishDrunk_Text[15376]["Option122"]
tNpcGossip[15376]["OptionFunc122"] = "</F>Carnival2016_PunishDrunk_ApplyTea</N>15376"
-- tNpcGossip[15376]["Option123"] = tCarnival2016_PunishDrunk_Text[15376]["Option123"]
-- tNpcGossip[15376]["OptionFunc123"] = "</F>Carnival2016_PunishDrunk_ApplyRope</N>15376"
tNpcGossip[15376]["Option124"] = tCarnival2016_PunishDrunk_Text[15376]["Option124"]
tNpcGossip[15376]["OptionFunc124"] = "</F>Carnival2016_PunishDrunk_ApplyAward</N>15376"
tNpcGossip[15376]["Option125"] = tCarnival2016_PunishDrunk_Text[15376]["Option125"]


--活动时间后
tNpcGossip[15376]["Text1-3"] = {131,132,133}
tNpcGossip[15376]["Text131"] = tCarnival2016_PunishDrunk_Text[15376]["Text131"]
tNpcGossip[15376]["Text132"] = tCarnival2016_PunishDrunk_Text[15376]["Text132"]
tNpcGossip[15376]["Text133"] = tCarnival2016_PunishDrunk_Text[15376]["Text133"]
tNpcGossip[15376]["tOption1-3"] = {131}

tNpcGossip[15376]["Option131"] = tCarnival2016_PunishDrunk_Text[15376]["Option131"]

--介绍活动
tNpcGossip[15376]["Text2-1"] = {211,212,213,214,215,216,217}
tNpcGossip[15376]["Text211"] = tCarnival2016_PunishDrunk_Text[15376]["Text211"]
tNpcGossip[15376]["Text212"] = tCarnival2016_PunishDrunk_Text[15376]["Text212"]
tNpcGossip[15376]["Text213"] = tCarnival2016_PunishDrunk_Text[15376]["Text213"]
tNpcGossip[15376]["Text214"] = tCarnival2016_PunishDrunk_Text[15376]["Text214"]
tNpcGossip[15376]["Text215"] = tCarnival2016_PunishDrunk_Text[15376]["Text215"]
tNpcGossip[15376]["Text216"] = tCarnival2016_PunishDrunk_Text[15376]["Text216"]
tNpcGossip[15376]["Text217"] = tCarnival2016_PunishDrunk_Text[15376]["Text217"]
tNpcGossip[15376]["tOption2-1"] = {211,212}
tNpcGossip[15376]["Option211"] = tCarnival2016_PunishDrunk_Text[15376]["Option211"]
tNpcGossip[15376]["OptionPoint211"] = "1-2"
tNpcGossip[15376]["Option212"] = tCarnival2016_PunishDrunk_Text[15376]["Option212"]

--等级不足
tNpcGossip[15376]["Text2-2"] = {221,222}
tNpcGossip[15376]["Text221"] = tCarnival2016_PunishDrunk_Text[15376]["Text221"]
tNpcGossip[15376]["Text222"] = tCarnival2016_PunishDrunk_Text[15376]["Text222"]
tNpcGossip[15376]["tOption2-2"] = {221}
tNpcGossip[15376]["Option221"] = tCarnival2016_PunishDrunk_Text[15376]["Option221"]

--已完成
tNpcGossip[15376]["Text2-3"] = {231}
tNpcGossip[15376]["Text231"] = tCarnival2016_PunishDrunk_Text[15376]["Text231"]
tNpcGossip[15376]["tOption2-3"] = {231}
tNpcGossip[15376]["Option231"] = tCarnival2016_PunishDrunk_Text[15376]["Option231"]

--领取已有醒酒汤
tNpcGossip[15376]["Text2-4"] = {241}
tNpcGossip[15376]["Text241"] = tCarnival2016_PunishDrunk_Text[15376]["Text241"]
tNpcGossip[15376]["tOption2-4"] = {241}
tNpcGossip[15376]["Option241"] = tCarnival2016_PunishDrunk_Text[15376]["Option241"]

--领取醒酒汤,背包满
tNpcGossip[15376]["Text2-5"] = {251,252}
tNpcGossip[15376]["Text251"] = tCarnival2016_PunishDrunk_Text[15376]["Text251"]
tNpcGossip[15376]["Text252"] = tCarnival2016_PunishDrunk_Text[15376]["Text252"]
tNpcGossip[15376]["tOption2-5"] = {251}
tNpcGossip[15376]["Option251"] = tCarnival2016_PunishDrunk_Text[15376]["Option251"]

--领取醒酒汤
tNpcGossip[15376]["Text2-6"] = {261,262,263}
tNpcGossip[15376]["Text261"] = tCarnival2016_PunishDrunk_Text[15376]["Text261"]
tNpcGossip[15376]["Text262"] = tCarnival2016_PunishDrunk_Text[15376]["Text262"]
tNpcGossip[15376]["Text263"] = tCarnival2016_PunishDrunk_Text[15376]["Text263"]
tNpcGossip[15376]["tOption2-6"] = {261}
tNpcGossip[15376]["Option261"] = tCarnival2016_PunishDrunk_Text[15376]["Option261"]

-- --领取绳索,已有
-- tNpcGossip[15376]["Text3-1"] = {311}
-- tNpcGossip[15376]["Text311"] = tCarnival2016_PunishDrunk_Text[15376]["Text311"]
-- tNpcGossip[15376]["tOption3-1"] = {311}
-- tNpcGossip[15376]["Option311"] = tCarnival2016_PunishDrunk_Text[15376]["Option311"]

-- --领取绳索,背包满
-- tNpcGossip[15376]["Text3-2"] = {321,322}
-- tNpcGossip[15376]["Text321"] = tCarnival2016_PunishDrunk_Text[15376]["Text321"]
-- tNpcGossip[15376]["Text322"] = tCarnival2016_PunishDrunk_Text[15376]["Text322"]
-- tNpcGossip[15376]["tOption3-2"] = {321}
-- tNpcGossip[15376]["Option321"] = tCarnival2016_PunishDrunk_Text[15376]["Option321"]

-- --领取绳索
-- tNpcGossip[15376]["Text3-3"] = {331,332,333}
-- tNpcGossip[15376]["Text331"] = tCarnival2016_PunishDrunk_Text[15376]["Text331"]
-- tNpcGossip[15376]["Text332"] = tCarnival2016_PunishDrunk_Text[15376]["Text332"]
-- tNpcGossip[15376]["Text333"] = tCarnival2016_PunishDrunk_Text[15376]["Text333"]
-- tNpcGossip[15376]["tOption3-3"] = {331}
-- tNpcGossip[15376]["Option331"] = tCarnival2016_PunishDrunk_Text[15376]["Option331"]

--领取奖励.未完成
tNpcGossip[15376]["Text4-1"] = {411,412,413}
tNpcGossip[15376]["Text411"] = tCarnival2016_PunishDrunk_Text[15376]["Text411"]
tNpcGossip[15376]["Text412"] = tCarnival2016_PunishDrunk_Text[15376]["Text412"]
tNpcGossip[15376]["Text413"] = tCarnival2016_PunishDrunk_Text[15376]["Text413"]
tNpcGossip[15376]["tOption4-1"] = {411}
tNpcGossip[15376]["Option411"] = tCarnival2016_PunishDrunk_Text[15376]["Option411"]

--领取奖励.背包满
tNpcGossip[15376]["Text4-2"] = {421,422}
tNpcGossip[15376]["Text421"] = tCarnival2016_PunishDrunk_Text[15376]["Text421"]
tNpcGossip[15376]["Text422"] = tCarnival2016_PunishDrunk_Text[15376]["Text422"]
tNpcGossip[15376]["tOption4-2"] = {421}
tNpcGossip[15376]["Option421"] = tCarnival2016_PunishDrunk_Text[15376]["Option421"]

--领取奖励.等级不足
tNpcGossip[15376]["Text4-3"] = {431,432}
tNpcGossip[15376]["Text431"] = tCarnival2016_PunishDrunk_Text[15376]["Text431"]
tNpcGossip[15376]["tOption4-3"] = {431}
tNpcGossip[15376]["Option431"] = tCarnival2016_PunishDrunk_Text[15376]["Option431"]

--领取奖励,已领取过
tNpcGossip[15376]["Text4-4"] = {441}
tNpcGossip[15376]["Text441"] = tCarnival2016_PunishDrunk_Text[15376]["Text441"]
tNpcGossip[15376]["tOption4-4"] = {441}
tNpcGossip[15376]["Option441"] = tCarnival2016_PunishDrunk_Text[15376]["Option441"]


--醉鬼 15377 - 15384 face  = 48 look = 2204 ,2205,2206,2207
tNpcFace[2204] = 53
tNpcFace[2205] = 84
tNpcFace[2206] = 51
tNpcFace[2207] = 48

for i = 15377,15384 do
	tNpcGossip[i] = tNpcGossip[i] or DefaultNpc:new{}
	tNpcGossip[i]["OptionHidden"] = 1
	
	--使用醒酒汤前
	tNpcGossip[i]["Text1-1"] = {111}
	tNpcGossip[i]["Text111"] = tCarnival2016_PunishDrunk_Text["Drunk"]["Text"][1]
	tNpcGossip[i]["tOption1-1"] = {111}
	tNpcGossip[i]["Option111"] = tCarnival2016_PunishDrunk_Text["Drunk"]["Option"][1]
	tNpcGossip[i]["ChkFunc1-1"] = function()
		local nUserId = Get_UserId()
		Carnival2016_PunishDrunk_ResetTeaStc(i,nUserId)
		if Carnival2016_PunishDrunk_Stc(i,nil,nUserId) >= 1 then
			return false
		else
		--未使用过醒酒汤,随机出对白
		Carnival2016_PunishDrunk_DrunkDialogJudge(i)
			return true
		end
	end
	
	--使用醒酒汤后对白
	tNpcGossip[i]["Text1-2"] = {121,122}
	tNpcGossip[i]["Text121"] = tCarnival2016_PunishDrunk_Text["Waken"]["Text1"]
	tNpcGossip[i]["Text122"] = tCarnival2016_PunishDrunk_Text["Waken"]["Text2"]
	tNpcGossip[i]["tOption1-2"] = {121}
	tNpcGossip[i]["Option121"] = tCarnival2016_PunishDrunk_Text["Waken"]["Option1"]
end


------------------------------------------------物品模版-------------------------------------------------------
--醒酒汤
tItem[3000481] = tItem[3000481] or {}
tItem[3000481]["Function"] = function(nItemId,sItemName)
	Carnival2016_PunishDrunk_UseTea(nItemId)
end

-- --绳索
-- tItem[3000482] = tItem[3000482] or {}
-- tItem[3000482]["Function"] = function(nItemId,sItemName)
	-- Carnival2016_PunishDrunk_UseRope(nItemId)
-- end
