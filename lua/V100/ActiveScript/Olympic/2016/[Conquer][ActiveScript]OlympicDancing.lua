--------------------------------------------------------------------------------
---Name:160617[简体征服][活动脚本]2016奥运会之一起桑巴(8.5-8.22)
--Creator: 	许乐
--Created:	2016-06-17
--------------------------------------------------------------------------------
--前缀 OlympicDancing_

--npc 19329-19347
--npctype 4204-4222
--logid 12000430
--luaid 40280

-- 掩码说明
-- stc(146,51)		当天是否接任务
-- stc(146,52)		当天是否领取奖励
-- stc(146,53)		记录当天跳对几种舞蹈，达到3种完成任务

-- 动态码说明
-- global: 51271  1 记录当天第一个完成任务的人---舞王信息

------------------------------------------常量表配置--------------------------------------
local tOlympicDancing_Cont = {}
	--活动期间	
	tOlympicDancing_Cont["BeforeActivity"] = "2015-07-27 00:00 2016-08-04 23:59"
	tOlympicDancing_Cont["Activity"] = "2016-08-05 00:00 2016-08-22 23:59"

	-- 跳舞npc组每天更换
	tOlympicDancing_Cont["DynaTime"] = {}
	tOlympicDancing_Cont["DynaTime"][1] = "1 00:00 1 23:59"
	tOlympicDancing_Cont["DynaTime"][2] = "2 00:00 2 23:59"
	tOlympicDancing_Cont["DynaTime"][3] = "3 00:00 3 23:59"
	tOlympicDancing_Cont["DynaTime"][4] = "4 00:00 4 23:59"
	tOlympicDancing_Cont["DynaTime"][5] = "5 00:00 5 23:59"
	tOlympicDancing_Cont["DynaTime"][6] = "6 00:00 6 23:59"
	tOlympicDancing_Cont["DynaTime"][7] = "0 00:00 0 23:59"
	
	--玩家等级要求
	tOlympicDancing_Cont["Metempsychosis"] = 0
	tOlympicDancing_Cont["Level"] = 80
	tOlympicDancing_Cont["LevelTop"] = G_User_MaxLev
	
	-- 创建动态npc 相关数据
	tOlympicDancing_Cont["Field"] = "name"
	tOlympicDancing_Cont["MapId"] = 1002
	tOlympicDancing_Cont["Sort"] = 1	
	tOlympicDancing_Cont["Type"] = 2
	tOlympicDancing_Cont["Task0"] = 94418000
	
	-- 动态npc的坐标
	tOlympicDancing_Cont["Pos"] = {}
	tOlympicDancing_Cont["Pos"][1] = {271,393}
	tOlympicDancing_Cont["Pos"][2] = {276,393}
	tOlympicDancing_Cont["Pos"][3] = {281,393}
	tOlympicDancing_Cont["Pos"][4] = {286,393}
	tOlympicDancing_Cont["Pos"][5] = {291,393}
	tOlympicDancing_Cont["Pos"][6] = {296,393}
	
	-- 以npcid为索引的坐标
	tOlympicDancing_Cont["NpcPos"] = {}
	tOlympicDancing_Cont["NpcPos"][19330] = {271,393}
	tOlympicDancing_Cont["NpcPos"][19331] = {276,393}
	tOlympicDancing_Cont["NpcPos"][19332] = {281,393}
	tOlympicDancing_Cont["NpcPos"][19333] = {286,393}
	tOlympicDancing_Cont["NpcPos"][19334] = {291,393}
	tOlympicDancing_Cont["NpcPos"][19335] = {296,393}
	
	tOlympicDancing_Cont["NpcPos"][19336] = {271,393}
	tOlympicDancing_Cont["NpcPos"][19337] = {276,393}
	tOlympicDancing_Cont["NpcPos"][19338] = {281,393}
	tOlympicDancing_Cont["NpcPos"][19339] = {286,393}
	tOlympicDancing_Cont["NpcPos"][19340] = {291,393}
	tOlympicDancing_Cont["NpcPos"][19341] = {296,393}
	
	tOlympicDancing_Cont["NpcPos"][19342] = {271,393}
	tOlympicDancing_Cont["NpcPos"][19343] = {276,393}
	tOlympicDancing_Cont["NpcPos"][19344] = {281,393}
	tOlympicDancing_Cont["NpcPos"][19345] = {286,393}
	tOlympicDancing_Cont["NpcPos"][19346] = {291,393}
	tOlympicDancing_Cont["NpcPos"][19347] = {296,393}

	tOlympicDancing_Cont["NpcDialogIndex"] = {}
	tOlympicDancing_Cont["NpcDialogIndex"][1] = {19330,19333,19336,19339,19342,19345}
	tOlympicDancing_Cont["NpcDialogIndex"][2] = {19331,19334,19337,19340,19343,19346}
	tOlympicDancing_Cont["NpcDialogIndex"][3] = {19332,19335,19338,19341,19344,19347}
	
	--跳舞读条10s
	tOlympicDancing_Cont["Second"] = 10		--读条10s

local tOlympicDancing_Npc = {}
	-- 19329	卢西奥
	tOlympicDancing_Npc[19329] = {}
	tOlympicDancing_Npc[19329]["CellX"] = 273
	tOlympicDancing_Npc[19329]["CellY"] = 385
	tOlympicDancing_Npc[19329]["Mapid"] = 1002
	tOlympicDancing_Npc[19329]["NpcId"] = 19329
	tOlympicDancing_Npc["BoundCX"] = 5
	tOlympicDancing_Npc["BoundCY"] = 5
	
	-- 寻路到男舞者
	tOlympicDancing_Npc[1] = {}
	tOlympicDancing_Npc[1][1] = {}
	tOlympicDancing_Npc[1][1]["CellX"] = 271
	tOlympicDancing_Npc[1][1]["CellY"] = 394
	tOlympicDancing_Npc[1][1]["Mapid"] = 1002
	
	tOlympicDancing_Npc[1][2] = {}
	tOlympicDancing_Npc[1][2]["CellX"] = 276
	tOlympicDancing_Npc[1][2]["CellY"] = 394
	tOlympicDancing_Npc[1][2]["Mapid"] = 1002
	
	tOlympicDancing_Npc[1][3] = {}
	tOlympicDancing_Npc[1][3]["CellX"] = 281
	tOlympicDancing_Npc[1][3]["CellY"] = 394
	tOlympicDancing_Npc[1][3]["Mapid"] = 1002
	
	-- 寻路女舞者
	tOlympicDancing_Npc[2] = {}
	tOlympicDancing_Npc[2][1] = {}
	tOlympicDancing_Npc[2][1]["CellX"] = 286
	tOlympicDancing_Npc[2][1]["CellY"] = 394
	tOlympicDancing_Npc[2][1]["Mapid"] = 1002
	
	tOlympicDancing_Npc[2][2] = {}
	tOlympicDancing_Npc[2][2]["CellX"] = 291
	tOlympicDancing_Npc[2][2]["CellY"] = 394
	tOlympicDancing_Npc[2][2]["Mapid"] = 1002

	tOlympicDancing_Npc[2][3] = {}
	tOlympicDancing_Npc[2][3]["CellX"] = 296
	tOlympicDancing_Npc[2][3]["CellY"] = 394
	tOlympicDancing_Npc[2][3]["Mapid"] = 1002

--掩码
local tOlympicDancing_Stc = {}
	tOlympicDancing_Stc[1] = {}
	tOlympicDancing_Stc[1]["EventType"] = 146
	tOlympicDancing_Stc[1]["DataType"] = 51		-- 当天是否接任务
	
	tOlympicDancing_Stc[2] = {}
	tOlympicDancing_Stc[2]["EventType"] = 146
	tOlympicDancing_Stc[2]["DataType"] = 52		-- 当天是否领取奖励
	
	tOlympicDancing_Stc[3] = {}
	tOlympicDancing_Stc[3]["EventType"] = 146
	tOlympicDancing_Stc[3]["DataType"] = 53		-- 记录当天跳对几种舞蹈，达到3种完成任务

	tOlympicDancing_Stc["Data"] = {}
	tOlympicDancing_Stc["Data"][1] = 1
	tOlympicDancing_Stc["Data"][2] = 2
	tOlympicDancing_Stc["Data"][3] = 4
	
local tOlympicDancing_Global = {}
	tOlympicDancing_Global["GlobalId"] = 51271
	tOlympicDancing_Global["Position"] = 1

-- 跳舞npc的分组信息
local tOlympicDancing_Dancing = {}
	tOlympicDancing_Dancing["NpcStcIndex"] = {1,2,3,1,2,3}
	
	tOlympicDancing_Dancing[1] = {}
	tOlympicDancing_Dancing[1]["NpcLookface"] = {42050,42060,42070,42140,42150,42160}
	tOlympicDancing_Dancing[1]["Task0"] = {94475394,94475395,94475396,94475403,94475404,94475405}
	tOlympicDancing_Dancing[1]["NpcId"] = {19330,19331,19332,19339,19340,19341}
	tOlympicDancing_Dancing[1]["NpcDanceIndex"] = {003,006,014,003,006,014}
	tOlympicDancing_Dancing[1]["ShowTime"] = {1,4,0}		-- 星期数
	tOlympicDancing_Dancing[1]["DanceIndex"] = {003,006,014}
	
	tOlympicDancing_Dancing[2] = {}
	tOlympicDancing_Dancing[2]["NpcLookface"] = {42080,42090,42100,42170,42180,42190}
	tOlympicDancing_Dancing[2]["Task0"] = {94475397,94475398,94475399,94475406,94475407,94475408}
	tOlympicDancing_Dancing[2]["NpcId"] = {19333,19334,19335,19342,19343,19344}
	tOlympicDancing_Dancing[2]["NpcDanceIndex"] = {004,007,016,004,007,016}
	tOlympicDancing_Dancing[2]["ShowTime"] = {2,5,7}
	tOlympicDancing_Dancing[2]["DanceIndex"] = {004,007,016}
	
	tOlympicDancing_Dancing[3] = {}
	tOlympicDancing_Dancing[3]["NpcLookface"] = {42110,42120,42130,42200,42210,42220}
	tOlympicDancing_Dancing[3]["Task0"] = {94475400,94475401,94475402,94475409,94475410,94475411}
	tOlympicDancing_Dancing[3]["NpcId"] = {19336,19337,19338,19345,19346,19347}
	tOlympicDancing_Dancing[3]["NpcDanceIndex"] = {005,013,017,005,013,017}
	tOlympicDancing_Dancing[3]["ShowTime"] = {3,6,0}
	tOlympicDancing_Dancing[3]["DanceIndex"] = {005,013,017}
	
local tOlympicDancing_Reward = {}
	-- 获得普通奖励---3个奥运圣水
	tOlympicDancing_Reward["OlyWater"] = 3200573
	tOlympicDancing_Reward[3200573] = {}
	tOlympicDancing_Reward[3200573]["RewardItem"] = {}
	tOlympicDancing_Reward[3200573]["RewardItem"][1] = {}
	tOlympicDancing_Reward[3200573]["RewardItem"][1]["Id"] = 3200573
	tOlympicDancing_Reward[3200573]["RewardItem"][1]["Attr"] = "0 3"
	tOlympicDancing_Reward[3200573]["RewardNoNeedTip"] = 1
	tOlympicDancing_Reward[3200573]["Log"] = "0,0,0,0,12000430,2,3200573,3"

	-- 舞王额外奖励--1颗龙珠
	tOlympicDancing_Reward["Extra"] = 1088000
	tOlympicDancing_Reward[1088000] = {}
	tOlympicDancing_Reward[1088000]["RewardItem"] = {}
	tOlympicDancing_Reward[1088000]["RewardItem"][1] = {}
	tOlympicDancing_Reward[1088000]["RewardItem"][1]["Id"] = 1088000
	tOlympicDancing_Reward[1088000]["RewardItem"][1]["Attr"] = "0 1"
	tOlympicDancing_Reward[1088000]["RewardNoNeedTip"] = 1
	tOlympicDancing_Reward[1088000]["Log"] = "0,0,0,0,12000430,2,1088000,1"
	
--特效
local tOlympicDancing_Effect = {}
	tOlympicDancing_Effect[1] = "self"
	tOlympicDancing_Effect[2] = "angelwing"
	tOlympicDancing_Effect[3] = "zf2-e128"
	
--LOG
local tOlympicDancing_Log = {}	
	tOlympicDancing_Log["FestivalId"] = 3706
	tOlympicDancing_Log["Log"] = 12000430
	
	tOlympicDancing_Log["TakeIn"] = "0,0,0,0,12000430,1[1],0,0"
	tOlympicDancing_Log["Finish"] = "0,0,0,0,12000430,1[2],0,0"

-------------------------------------------逻辑部分----------------------------------
--玩家等级判断
function OlympicDancing_LevelJudgement()
	local nLevel = tOlympicDancing_Cont["Level"]
	local nMete = tOlympicDancing_Cont["Metempsychosis"]
	if User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		return true
	else
		return false
	end
end

-- 掩码隔天重置
function OlympicDancing_ResetStc(nStcIndex)
	local nEvent = tOlympicDancing_Stc[nStcIndex]["EventType"]
	local nType = tOlympicDancing_Stc[nStcIndex]["DataType"]
	
	if Task_ChkStcValue(nEvent,nType,">",0) then
		if Task_StcInterval(nEvent,nType,1,4) then
			Task_SetStatistic(nEvent,nType,0,1,0)
			Task_SetStcTimestamp(nEvent,nType,0,0)
		end
	end
end

-- 参加活动
function OlympicDancing_Participate(nNpcId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tOlympicDancing_Cont["Activity"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	
	-- 判断等级
	if not OlympicDancing_LevelJudgement() then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 判断是否接受任务
	local nEvent = tOlympicDancing_Stc[1]["EventType"]
	local nType = tOlympicDancing_Stc[1]["DataType"]
	OlympicDancing_ResetStc(1)
	
	if Task_ChkStcValue(nEvent,nType,">",0) then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	local nSex = Get_UserSex()
	Task_SetStatistic(nEvent,nType,nSex,1,0)
	Task_SetStcTimestamp(nEvent,nType,0,0)
	
	-- 参加活动
	Sys_SaveActionFestivalLog(tOlympicDancing_Log["TakeIn"])

	if nSex == 1 then  -- 男
		LinkNpcGossipFunc_New(nNpcId,"2-1")
	else  -- 女
		LinkNpcGossipFunc_New(nNpcId,"2-2")
	end
end

-- 接到任务后，寻路到对应跳舞的NPC处
function OlympicDancing_FindDancer(nIndex)
	local nEvent = tOlympicDancing_Stc[1]["EventType"]
	local nType = tOlympicDancing_Stc[1]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType)

	local nPosX = tOlympicDancing_Npc[nData][nIndex]["CellX"]
	local nPosY = tOlympicDancing_Npc[nData][nIndex]["CellY"]
	local nMapId = tOlympicDancing_Npc[nData][nIndex]["Mapid"]
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId)
end

-- 领取奖励
function OlympicDancing_GetReward(nNpcId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tOlympicDancing_Cont["Activity"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	
	-- 判断等级
	if not OlympicDancing_LevelJudgement() then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 判断是否完成任务
	local nEvent1 = tOlympicDancing_Stc[3]["EventType"]
	local nType1 = tOlympicDancing_Stc[3]["DataType"]
	OlympicDancing_ResetStc(3)
	if not Task_ChkStcValue(nEvent1,nType1,">=",7) then
		LinkNpcGossipFunc_New(nNpcId,"3-6")
		return
	end

	-- 判断玩家是否领取过奖励
	local nEvent = tOlympicDancing_Stc[2]["EventType"]
	local nType = tOlympicDancing_Stc[2]["DataType"]
	OlympicDancing_ResetStc(2)
	if Task_ChkStcValue(nEvent,nType,">",0) then
		LinkNpcGossipFunc_New(nNpcId,"3-4")
		return
	end
	
	-- 判断是否是舞王
	local nGlobalId = tOlympicDancing_Global["GlobalId"]
	local nPos = tOlympicDancing_Global["Position"]
	local nPlayerId = Get_SysDynaGlobalData(nGlobalId,nPos)
	local sPlayerName = Get_SysDynaGlobalDataStr(nGlobalId,nPos)
	
	local nSpace = 2
	if nPlayerId == Get_UserId() and sPlayerName == Get_UserName() then
		-- 给舞王的额外奖励龙珠
		nSpace = 3
	end
	
	-- 判断背包空间
	if not User_CheckLeftSpace(nSpace) then
		tNpcGossip[nNpcId]["Text331"] = string.format(tOlympicDancing_Text[nNpcId]["Text331"],nSpace)
		LinkNpcGossipFunc_New(nNpcId,"3-3")
		return
	end
	
	-- 获得奖励
	Task_SetStatistic(nEvent,nType,1,1,0)
	Task_SetStcTimestamp(nEvent,nType,0,0)
	
	-- 给普通完成任务的奖励
	-- 节日礼包
	FestivalGeneralPackage_GetGift(tOlympicDancing_Log["FestivalId"],tOlympicDancing_Log["Log"])
	-- 奥运圣水
	local nItemId = tOlympicDancing_Reward["OlyWater"]
	RewardTemplate_Reward(tOlympicDancing_Reward[nItemId])

	if nPlayerId == Get_UserId() and sPlayerName == Get_UserName() then
		-- 给舞王的额外奖励
		-- 龙珠
		local nExtraReward = tOlympicDancing_Reward["Extra"]
		RewardTemplate_Reward(tOlympicDancing_Reward[nExtraReward])
		Sys_MsgBox(tOlympicDancing_Text["WinnerReward"])
		User_EffectAdd(tOlympicDancing_Effect[1],tOlympicDancing_Effect[3])
		tNpcGossip[19329]["Text321"]=string.format(tOlympicDancing_Text[19329]["Text321"],sPlayerName)
		LinkNpcGossipFunc_New(nNpcId,"3-2")
	else
		-- 获得普通奖励的对白
		Sys_MsgBox(tOlympicDancing_Text["GetReward"])
		User_EffectAdd(tOlympicDancing_Effect[1],tOlympicDancing_Effect[2])
		LinkNpcGossipFunc_New(nNpcId,"3-1")
	end
	-- 完成任务
	Sys_SaveActionFestivalLog(tOlympicDancing_Log["Finish"])

end

-- 谁是舞王
function OlympicDancing_WhoIsDancer(nNpcId)
	if not Sys_ChkFullTime(tOlympicDancing_Cont["Activity"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	
	if not OlympicDancing_LevelJudgement() then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	local nGlobalId = tOlympicDancing_Global["GlobalId"]
	local nPos = tOlympicDancing_Global["Position"]
	local nPlayerId = Get_SysDynaGlobalData(nGlobalId,nPos)
	local sPlayerName = Get_SysDynaGlobalDataStr(nGlobalId,nPos)
	if nPlayerId == 0 and sPlayerName == "" then
		LinkNpcGossipFunc_New(nNpcId,"4-1")
	elseif nPlayerId == Get_UserId() and sPlayerName == Get_UserName() then
		tNpcGossip[19329]["Text431"]=string.format(tOlympicDancing_Text[19329]["Text431"],sPlayerName)
		tNpcGossip[19329]["Text433"]=string.format(tOlympicDancing_Text[19329]["Text433"],sPlayerName)
		LinkNpcGossipFunc_New(nNpcId,"4-3")
	else
		tNpcGossip[19329]["Text421"]=string.format(tOlympicDancing_Text[19329]["Text421"],sPlayerName)
		LinkNpcGossipFunc_New(nNpcId,"4-2")
	end
end

-- 记录舞王信息
function OlympicDancing_SetDancer(nUserId)
	-- local nUserId = Get_UserId()
	local sUserName = Get_UserName(nUserId)
	local nGlobalId = tOlympicDancing_Global["GlobalId"]
	local nPos = tOlympicDancing_Global["Position"]
	local nData = Get_SysDynaGlobalData(nGlobalId,nPos)
	if nData <= 0 then
		Sys_SetSynaGlobalData(nGlobalId,nPos,nUserId)
		Sys_SetSynaGlobalDataStr(nGlobalId,nPos,sUserName)
	end
end

-- 从sql接入NPC模板
function OlympicDancing_LinkNpc(nNpcId)
	if Sys_ChkFullTime(tOlympicDancing_Cont["BeforeActivity"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-8")
		return
	end

	if not Sys_ChkFullTime(tOlympicDancing_Cont["Activity"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-7")
		return
	end

	-- 判断当前有无任务，是否完成3次
	local nEvent = tOlympicDancing_Stc[1]["EventType"]
	local nType = tOlympicDancing_Stc[1]["DataType"]
	
	local nEvent1 = tOlympicDancing_Stc[2]["EventType"]
	local nType1 = tOlympicDancing_Stc[2]["DataType"]
	
	local nEvent2 = tOlympicDancing_Stc[3]["EventType"]
	local nType2 = tOlympicDancing_Stc[3]["DataType"]
	
	-- 掩码隔天重置
	OlympicDancing_ResetStc(1)
	OlympicDancing_ResetStc(2)
	OlympicDancing_ResetStc(3)
	
	-- 判断男女对白索引
	local nFlag = 2		-- 女
	if nNpcId >= 19330 and nNpcId <= 19338 then
		nFlag = 1		-- 男
	end
	
	-- 判断当前点击的NPC属于第几个动作
	local nIndex = 1
	for i = 1,6 do
		for j = 1,3 do
			if nNpcId == tOlympicDancing_Cont["NpcDialogIndex"][j][i] then
				nIndex = j
			end
		end
	end

	-- User_TalkChannel2005("nIndex=="..nIndex)
	if Task_ChkStcValue(nEvent,nType,">",0) then
		local nSex = Get_UserStatisticValue(nEvent,nType)
		if nSex ~= nFlag then
			-- 性别不符
			tNpcGossip[nNpcId]["Text1-6"] = {16 .. tostring(nFlag)}
			local sMale = tOlympicDancing_Text["NpcName"][1]
			local sFemale = tOlympicDancing_Text["NpcName"][4]
			tNpcGossip[19339]["Text161"] = string.format(tOlympicDancing_Text[19339]["Text161"],sFemale)
			tNpcGossip[19339]["Text162"] = string.format(tOlympicDancing_Text[19339]["Text162"],sMale)
			LinkNpcGossipFunc_New(nNpcId,"1-6")
			return
		end	
	
		-- 有任务
		if Task_ChkStcValue(nEvent2,nType2,"<",7) then
			-- 未完成任务
			local nData = Get_UserStatisticValue(nEvent2,nType2)
			if Sys_ParseNumbersContain(tOlympicDancing_Stc["Data"][nIndex],nData) then
				-- 已跟当前NPC跳过舞
				tNpcGossip[nNpcId]["Text1-3"] = {13 .. tostring(nFlag)}
				LinkNpcGossipFunc_New(nNpcId,"1-3")
			else
				-- 未跟当前NPC跳过舞
				-- User_TalkChannel2005("nFlag=="..nFlag)
				-- if nFlag == 1 then
					-- tNpcGossip[nNpcId]["Text1-2"] = {121}
				-- else
					-- tNpcGossip[nNpcId]["Text1-2"] = {122}
				-- end
				tNpcGossip[nNpcId]["Text1-2"] = {12 .. tostring(nFlag)}
				LinkNpcGossipFunc_New(nNpcId,"1-2")
			end
		else
			if Task_ChkStcValue(nEvent1,nType1,">",0) then
				-- 已完成任务，已领奖
				LinkNpcGossipFunc_New(nNpcId,"1-5")
			else
				-- 已完成任务,但未领奖
				LinkNpcGossipFunc_New(nNpcId,"1-4")
			end
		end
	else
		-- 无任务
		tNpcGossip[nNpcId]["Text1-1"] = {11 .. tostring(nFlag)}
		LinkNpcGossipFunc_New(nNpcId,"1-1")
	end
end

-- 隔天重置舞王信息，创建新的一组跳舞npc
function OlympicDancing_ResetGlobalData()
	-- 判断活动时间
	if not Sys_ChkFullTime(tOlympicDancing_Cont["Activity"]) then
		return
	end

	-- 重置动态码
	local nGlobalId = tOlympicDancing_Global["GlobalId"]
	local nPos = tOlympicDancing_Global["Position"]
	Sys_SetSynaGlobalData(nGlobalId,nPos,0)
	Sys_SetSynaGlobalDataStr(nGlobalId,nPos,"")
	
	local sField = tOlympicDancing_Cont["Field"]
	local nMapId = tOlympicDancing_Cont["MapId"]
	for i = 1,6 do
		local sData = tOlympicDancing_Text["NpcName"][i]
		Npc_DelDynaNpc(nMapId,sField,sData)
	end
	
	local nIndex = 1
	local nGroup = 1
	-- 判断时间：周几，刷新对应的动态跳舞npc
	for i,v in pairs(tOlympicDancing_Cont["DynaTime"]) do
		if Sys_ChkWeedTime(v) then
			nIndex = i		-- 1-7		
		end
	end
	
	for k = 1,3 do
		for j = 1,3 do
			if nIndex == tOlympicDancing_Dancing[k]["ShowTime"][j] then
				nGroup = k
			end
		end
	end
	
	local nNpcType = tOlympicDancing_Cont["Type"]
	local nSort = tOlympicDancing_Cont["Sort"]
	local nMapId = tOlympicDancing_Cont["MapId"]

	for j = 1,6 do
		local sName = tOlympicDancing_Text["NpcName"][j]
		local nLookFace = tOlympicDancing_Dancing[nGroup]["NpcLookface"][j]
		local nTask0 = tOlympicDancing_Dancing[nGroup]["Task0"][j]
		local nPosX = tOlympicDancing_Cont["Pos"][j][1]
		local nPosY = tOlympicDancing_Cont["Pos"][j][2]
		Npc_CreateDynaNpc(sName,nNpcType,nSort,nLookFace,0,0,nMapId,nPosX,nPosY,0,0,0,nTask0)
	end
end

-- 与跳舞npc对话
function OlympicDancing_DancingNpc(nChoose)
	-- 获取当天是出现第几组npc
	local nGroup = OlympicDancing_TodayDancerGroup()
	
	-- 获取玩家选择的舞蹈选项
	local nChooseDanceIndex = tOlympicDancing_Dancing[nGroup]["DanceIndex"][nChoose]
	
	local nNpcId = Get_NpcId()
	local nPosX = Get_NpcPositionX()
	local nPosY = Get_NpcPositionY()
	local nFirstNpcId = tOlympicDancing_Dancing[nGroup]["NpcId"][1]
	local nLastNpcId = tOlympicDancing_Dancing[nGroup]["NpcId"][6]
	local nSex = 1
	
	-- 男
	for i = nFirstNpcId,nFirstNpcId+2,1 do 
		if nPosX == tOlympicDancing_Cont["NpcPos"][i][1] and nPosY == tOlympicDancing_Cont["NpcPos"][i][2] then
			nNpcId = i
			nSex = 1		
		end
	end
	
	-- 女
	for i = nLastNpcId-2,nLastNpcId,1 do 
		if nPosX == tOlympicDancing_Cont["NpcPos"][i][1] and nPosY == tOlympicDancing_Cont["NpcPos"][i][2] then
			nNpcId = i
			nSex = 2	
		end
	end

	local nEvent = tOlympicDancing_Stc[1]["EventType"]
	local nType = tOlympicDancing_Stc[1]["DataType"]
	local nUserSex = Get_UserStatisticValue(nEvent,nType)

	-- 获取当前点击的npc的跳舞动作
	local nNum = 1
	for j = 1,6 do
		if nNpcId == tOlympicDancing_Dancing[nGroup]["NpcId"][j] then
			nNum = j
		end
	end
	local nRightDanceIndex = tOlympicDancing_Dancing[nGroup]["NpcDanceIndex"][nNum]
	local nNpcStcIndex = tOlympicDancing_Dancing["NpcStcIndex"][nNum]
	
	-- 判断是否已在此NPC处完成一次跳舞
	local nEvent1 = tOlympicDancing_Stc[3]["EventType"]
	local nType1 = tOlympicDancing_Stc[3]["DataType"]
	local nData = Get_UserStatisticValue(nEvent1,nType1)
	if Sys_ParseNumbersContain(tOlympicDancing_Stc["Data"][nNpcStcIndex],nData) then
		if nNpcId >= 19330 and nNpcId <= 19338 then
			tNpcGossip[nNpcId]["Text1-3"] = {132}
		else
			tNpcGossip[nNpcId]["Text1-3"] = {131}
		end
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	
	local nSecs = tOlympicDancing_Cont["Second"]
	local nActionId = nChooseDanceIndex
	local sContent = tOlympicDancing_Text["Dancing"]
	User_SetExplore(nSecs,sContent,nActionId,"OlympicDancing_IsDancingRight</N>" .. nNpcId .. "</N>" .. nChooseDanceIndex .. "</N>" .. nRightDanceIndex .. "</N>" .. nNpcStcIndex)
end

-- 读条后告知玩家是否跳对
function OlympicDancing_IsDancingRight(nNpcId,nChooseDanceIndex,nRightDanceIndex,nNpcStcIndex,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	
	if nChooseDanceIndex == nRightDanceIndex then
		-- 正确
		--设置掩码
		local nEvent1 = tOlympicDancing_Stc[1]["EventType"]
		local nType1 = tOlympicDancing_Stc[1]["DataType"]
		if Task_ChkStcValue(nEvent1,nType1,">",0,nUserId) then
			if Task_StcInterval(nEvent1,nType1,1,4,nUserId) then
				Task_SetStatistic(nEvent1,nType1,0,1,nUserId)
				Task_SetStcTimestamp(nEvent1,nType1,0,nUserId)
			end
		end
		
		local nEvent = tOlympicDancing_Stc[3]["EventType"]
		local nType = tOlympicDancing_Stc[3]["DataType"]
		if Task_ChkStcValue(nEvent,nType,">",0,nUserId) then
			if Task_StcInterval(nEvent,nType,1,4,nUserId) then
				Task_SetStatistic(nEvent,nType,0,1,nUserId)
				Task_SetStcTimestamp(nEvent,nType,0,nUserId)
			end
		end
		
		-- 判断当前玩家身上是否有任务
		if Task_ChkStcValue(nEvent1,nType1,">",0,nUserId) then
			if Task_ChkStcValue(nEvent,nType,">=",7,nUserId) then
				Sys_MsgBox(tOlympicDancing_Text["RightTriple"],"OlympicDancing_FindNpc</N>19329","NULL",nUserId)
			else
				local nAddData = tOlympicDancing_Stc["Data"][nNpcStcIndex]
				Task_AddStatistic(nEvent,nType,nAddData,1,nUserId)
				Task_SetStcTimestamp(nEvent,nType,0,nUserId)
				
				-- 设置舞王
				if Task_ChkStcValue(nEvent,nType,">=",7,nUserId) then
					OlympicDancing_SetDancer(nUserId)
					Sys_MsgBox(tOlympicDancing_Text["RightTriple"],"OlympicDancing_FindNpc</N>19329","NULL",nUserId)
					return
				end
				
				local nIndex = 1
				if nNpcStcIndex <= 2 then
					nIndex = nNpcStcIndex + 1
				else
					nIndex = 1
				end
				
				Sys_MsgBox(tOlympicDancing_Text["DancingEnd"],"OlympicDancing_FindDancer</N>" .. nIndex,"NULL",nUserId)
			end
		else
			LinkNpcGossipFunc_New(nNpcId,"1-1")
			return
		end
	else
		-- 错误
		Sys_MsgBox(tOlympicDancing_Text["WrongChoose"],"NULL","NULL",nUserId)
	end
end

-- 满足领奖条件，寻路到NPC去领奖
function OlympicDancing_FindNpc(nNpcId)
	local nPosX = tOlympicDancing_Npc[nNpcId]["CellX"]
	local nPosY = tOlympicDancing_Npc[nNpcId]["CellY"]
	local nMapId = tOlympicDancing_Npc[nNpcId]["Mapid"]
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
end

-- 获取当天是出现第几组npc
function OlympicDancing_TodayDancerGroup()
	local nIndex = 1
	local nGroup = 1
	-- 判断时间：周几，刷新对应的动态跳舞npc
	for i,v in pairs(tOlympicDancing_Cont["DynaTime"]) do
		if Sys_ChkWeedTime(v) then
			nIndex = i		-- 1-7		
		end
	end
	
	for k = 1,3 do
		for j = 1,3 do
			if nIndex == tOlympicDancing_Dancing[k]["ShowTime"][j] then
				nGroup = k
			end
		end
	end
	-- User_TalkChannel2005("nIndex==" .. nIndex)
	-- User_TalkChannel2005("nGroup==" .. nGroup)
	return nGroup
end

-------------------------------------------npc模板----------------------------------
-- 19329	卢西奥
tNpcFace[4204] = 75
tNpcGossip[19329] = tNpcGossip[19329] or DefaultNpc:new{}
tNpcGossip[19329]["OptionHidden"] = 1
-- tNpcGossip[19329]["DialogueText"] = tOlympicDancing_Text[19329]

--活动前对白
tNpcGossip[19329]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[19329]["Text111"] = tOlympicDancing_Text[19329]["Text111"]
tNpcGossip[19329]["Text112"] = tOlympicDancing_Text[19329]["Text112"]
tNpcGossip[19329]["Text113"] = tOlympicDancing_Text[19329]["Text113"]
tNpcGossip[19329]["Text114"] = tOlympicDancing_Text[19329]["Text114"]
tNpcGossip[19329]["Text115"] = tOlympicDancing_Text[19329]["Text115"]
tNpcGossip[19329]["tOption1-1"] = {1}
tNpcGossip[19329]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tOlympicDancing_Cont["BeforeActivity"])
end
tNpcGossip[19329]["Option1"] = tOlympicDancing_Text[19329]["Option1"]

--活动中对白
--玩家等级不足
tNpcGossip[19329]["Text1-2"] = {121,122,123,124,125}
tNpcGossip[19329]["Text121"] = tOlympicDancing_Text[19329]["Text121"]
tNpcGossip[19329]["Text122"] = tOlympicDancing_Text[19329]["Text122"]
tNpcGossip[19329]["Text123"] = tOlympicDancing_Text[19329]["Text123"]
tNpcGossip[19329]["Text124"] = tOlympicDancing_Text[19329]["Text124"]
tNpcGossip[19329]["Text125"] = tOlympicDancing_Text[19329]["Text125"]
tNpcGossip[19329]["tOption1-2"] = {2}
tNpcGossip[19329]["ChkFunc1-2"] = function()
	return Sys_ChkFullTime(tOlympicDancing_Cont["Activity"]) and (not OlympicDancing_LevelJudgement())
end
tNpcGossip[19329]["Option2"] = tOlympicDancing_Text[19329]["Option2"]
--等级满足条件
tNpcGossip[19329]["Text1-3"] = {131,132,133,134,135}
tNpcGossip[19329]["Text131"] = tOlympicDancing_Text[19329]["Text131"]
tNpcGossip[19329]["Text132"] = tOlympicDancing_Text[19329]["Text132"]
tNpcGossip[19329]["Text133"] = tOlympicDancing_Text[19329]["Text133"]
tNpcGossip[19329]["Text134"] = tOlympicDancing_Text[19329]["Text134"]
tNpcGossip[19329]["Text135"] = tOlympicDancing_Text[19329]["Text135"]
tNpcGossip[19329]["tOption1-3"] = {3,4,5,6,7}
tNpcGossip[19329]["ChkFunc1-3"] = function()
	return Sys_ChkFullTime(tOlympicDancing_Cont["Activity"]) and OlympicDancing_LevelJudgement()
end
tNpcGossip[19329]["Option3"] = tOlympicDancing_Text[19329]["Option3"]
tNpcGossip[19329]["OptionFunc3"] = "OlympicDancing_Participate</N>19329"
tNpcGossip[19329]["OptionChkFunc3"] = function ()   -- （今日已完成任务后屏蔽）
	local nEvent = tOlympicDancing_Stc[3]["EventType"]	
	local nType = tOlympicDancing_Stc[3]["DataType"]
	
	OlympicDancing_ResetStc(1)
	OlympicDancing_ResetStc(3)
	
	if Task_ChkStcValue(nEvent,nType,">=",7) then
		return false
	else
		return true
	end
end
tNpcGossip[19329]["Option4"] = tOlympicDancing_Text[19329]["Option4"]
tNpcGossip[19329]["OptionFunc4"] = "OlympicDancing_GetReward</N>19329"
tNpcGossip[19329]["OptionChkFunc4"] = function ()			-- （完成任务后出现）
	local nEvent = tOlympicDancing_Stc[3]["EventType"]	
	local nType = tOlympicDancing_Stc[3]["DataType"]
	
	OlympicDancing_ResetStc(1)
	OlympicDancing_ResetStc(3)
	
	if Task_ChkStcValue(nEvent,nType,">=",7) then
		return true
	else
		return false
	end
end
tNpcGossip[19329]["Option5"] = tOlympicDancing_Text[19329]["Option5"]
tNpcGossip[19329]["OptionFunc5"] = "OlympicDancing_WhoIsDancer</N>19329"
tNpcGossip[19329]["Option6"] = tOlympicDancing_Text[19329]["Option6"]
tNpcGossip[19329]["OptionPoint6"] = "5-1"
tNpcGossip[19329]["Option7"] = tOlympicDancing_Text[19329]["Option7"]
--活动后对白
tNpcGossip[19329]["Text1-4"] = {141}
tNpcGossip[19329]["Text141"] = tOlympicDancing_Text[19329]["Text141"]
tNpcGossip[19329]["tOption1-4"] = {8}
tNpcGossip[19329]["Option8"] = tOlympicDancing_Text[19329]["Option8"]
-- 接3：我要加入！
-- 成功，判断玩家男女
-- 男
tNpcGossip[19329]["Text2-1"] = {211}
tNpcGossip[19329]["Text211"] = tOlympicDancing_Text[19329]["Text211"]
tNpcGossip[19329]["tOption2-1"] = {9}
tNpcGossip[19329]["Option9"] = tOlympicDancing_Text[19329]["Option9"]
tNpcGossip[19329]["OptionFunc9"] = "OlympicDancing_FindDancer</N>1"
-- 女
tNpcGossip[19329]["Text2-2"] = {221}
tNpcGossip[19329]["Text221"] = tOlympicDancing_Text[19329]["Text221"]
tNpcGossip[19329]["tOption2-2"] = {9}
-- 玩家已有任务
tNpcGossip[19329]["Text2-3"] = {231}
tNpcGossip[19329]["Text231"] = tOlympicDancing_Text[19329]["Text231"]
tNpcGossip[19329]["tOption2-3"] = {10}
tNpcGossip[19329]["Option10"] = tOlympicDancing_Text[19329]["Option10"]
-- 接4：领取奖励。
-- 成功，不包括舞王奖励
tNpcGossip[19329]["Text3-1"] = {311}
tNpcGossip[19329]["Text311"] = tOlympicDancing_Text[19329]["Text311"]
tNpcGossip[19329]["tOption3-1"] = {11}
tNpcGossip[19329]["Option11"] = tOlympicDancing_Text[19329]["Option11"]
-- 成功，包括舞王奖励
tNpcGossip[19329]["Text3-2"] = {321,322}
tNpcGossip[19329]["Text321"] = tOlympicDancing_Text[19329]["Text321"]
tNpcGossip[19329]["Text322"] = tOlympicDancing_Text[19329]["Text322"]
tNpcGossip[19329]["tOption3-2"] = {12}
tNpcGossip[19329]["Option12"] = tOlympicDancing_Text[19329]["Option12"]
-- 失败，背包空间不足
tNpcGossip[19329]["Text3-3"] = {331}
tNpcGossip[19329]["Text331"] = tOlympicDancing_Text[19329]["Text331"]
tNpcGossip[19329]["tOption3-3"] = {13}
tNpcGossip[19329]["Option13"] = tOlympicDancing_Text[19329]["Option13"]
-- 失败，今日已领取过奖励
tNpcGossip[19329]["Text3-4"] = {341}
tNpcGossip[19329]["Text341"] = tOlympicDancing_Text[19329]["Text341"]
tNpcGossip[19329]["tOption3-4"] = {14}
tNpcGossip[19329]["Option14"] = tOlympicDancing_Text[19329]["Option14"]
-- 失败，已超过领奖期限
tNpcGossip[19329]["Text3-5"] = {351}
tNpcGossip[19329]["Text351"] = tOlympicDancing_Text[19329]["Text351"]
tNpcGossip[19329]["tOption3-5"] = {15}
tNpcGossip[19329]["Option15"] = tOlympicDancing_Text[19329]["Option15"]
-- 失败，未完成任务
tNpcGossip[19329]["Text3-6"] = {361}
tNpcGossip[19329]["Text361"] = tOlympicDancing_Text[19329]["Text361"]
tNpcGossip[19329]["tOption3-6"] = {361}
tNpcGossip[19329]["Option361"] = tOlympicDancing_Text[19329]["Option361"]
	
-- 接5：今天的舞王是谁？
-- 今日舞王尚未诞生
tNpcGossip[19329]["Text4-1"] = {411}
tNpcGossip[19329]["Text411"] = tOlympicDancing_Text[19329]["Text411"]
tNpcGossip[19329]["tOption4-1"] = {16}
tNpcGossip[19329]["Option16"] = tOlympicDancing_Text[19329]["Option16"]
-- 舞王已诞生，玩家非今日舞王
tNpcGossip[19329]["Text4-2"] = {421}
tNpcGossip[19329]["Text421"] = tOlympicDancing_Text[19329]["Text421"]
tNpcGossip[19329]["tOption4-2"] = {17}
tNpcGossip[19329]["Option17"] = tOlympicDancing_Text[19329]["Option17"]
-- 玩家是今日舞王
tNpcGossip[19329]["Text4-3"] = {431,432,433}
tNpcGossip[19329]["Text431"] = tOlympicDancing_Text[19329]["Text431"]
tNpcGossip[19329]["Text432"] = tOlympicDancing_Text[19329]["Text432"]
tNpcGossip[19329]["Text433"] = tOlympicDancing_Text[19329]["Text433"]
tNpcGossip[19329]["tOption4-3"] = {18}
tNpcGossip[19329]["Option18"] = tOlympicDancing_Text[19329]["Option18"]

-- 接6：了解规则。
tNpcGossip[19329]["Text5-1"] = {511,512,513}
tNpcGossip[19329]["Text511"] = tOlympicDancing_Text[19329]["Text511"]
tNpcGossip[19329]["Text512"] = tOlympicDancing_Text[19329]["Text512"]
tNpcGossip[19329]["Text513"] = tOlympicDancing_Text[19329]["Text513"]
tNpcGossip[19329]["tOption5-1"] = {19}
tNpcGossip[19329]["Option19"] = tOlympicDancing_Text[19329]["Option19"]
	
-- 马科斯,费尔南多,卡洛斯
-- 19330-19338
tNpcFace[4205] = 34
tNpcFace[4206] = 34
tNpcFace[4207] = 34
tNpcFace[4208] = 34
tNpcFace[4209] = 34
tNpcFace[4210] = 34
tNpcFace[4211] = 34
tNpcFace[4212] = 34
tNpcFace[4213] = 34
-- 米兰达,卡洛琳,伊莎贝拉
-- 19339-19347
tNpcFace[4214] = 119
tNpcFace[4215] = 119
tNpcFace[4216] = 119
tNpcFace[4217] = 119
-- tNpcFace[4218] = 119
tNpcFace[4219] = 119
tNpcFace[4220] = 119
tNpcFace[4221] = 119
tNpcFace[4222] = 119

tNpcGossip[19339] = tNpcGossip[19339] or DefaultNpc:new{}
tNpcGossip[19339]["OptionHidden"] = 1
-- tNpcGossip[19339]["DialogueText"] = tOlympicDancing_Text[19339]

-- 玩家身上无任务
tNpcGossip[19339]["Text1-1"] = {111,112}
tNpcGossip[19339]["Text111"] = tOlympicDancing_Text[19339]["Text111"]
tNpcGossip[19339]["Text112"] = tOlympicDancing_Text[19339]["Text112"]
tNpcGossip[19339]["tOption1-1"] = {1}
tNpcGossip[19339]["Option1"] = tOlympicDancing_Text[19339]["Option1"]
tNpcGossip[19339]["OptionFunc1"] = "OlympicDancing_FindNpc</N>19329"
--有任务
-- 今日未跟当前NPC跳过舞
tNpcGossip[19339]["Text1-2"] = {121,122}
tNpcGossip[19339]["Text121"] = tOlympicDancing_Text[19339]["Text121"]
tNpcGossip[19339]["Text122"] = tOlympicDancing_Text[19339]["Text122"]
tNpcGossip[19339]["tOption1-2"] = {2,3,4}
tNpcGossip[19339]["Option2"] = tOlympicDancing_Text[19339]["Option2"]
tNpcGossip[19339]["OptionFunc2"] = "OlympicDancing_DancingNpc</N>1"
tNpcGossip[19339]["OptionChkFunc2"] = function ()
	local nNpcId = Get_NpcId()
	
	local nGroup = OlympicDancing_TodayDancerGroup()
	local sDanceName = tOlympicDancing_Text["DanceName"][nGroup][1]
	local nFirstNpcId = tOlympicDancing_Dancing[nGroup]["NpcId"][1]
	local nLastNpcId = tOlympicDancing_Dancing[nGroup]["NpcId"][6]
	
	local nPosX = Get_NpcPositionX()
	local nPosY = Get_NpcPositionY()
	
	for i = nFirstNpcId,nFirstNpcId+2,1 do 
		if nPosX == tOlympicDancing_Cont["NpcPos"][i][1] and nPosY == tOlympicDancing_Cont["NpcPos"][i][2] then
			nNpcId = i
		end
	end
	
	for i = nLastNpcId-2,nLastNpcId,1 do 
		if nPosX == tOlympicDancing_Cont["NpcPos"][i][1] and nPosY == tOlympicDancing_Cont["NpcPos"][i][2] then
			nNpcId = i
		end
	end

	tNpcGossip[nNpcId]["Option2"] = string.format(tOlympicDancing_Text[19339]["Option2"],sDanceName)
	return true
end
tNpcGossip[19339]["Option3"] = tOlympicDancing_Text[19339]["Option3"]
tNpcGossip[19339]["OptionFunc3"] = "OlympicDancing_DancingNpc</N>2"
tNpcGossip[19339]["OptionChkFunc3"] = function ()
	local nNpcId = Get_NpcId()
	
	local nGroup = OlympicDancing_TodayDancerGroup()
	local sDanceName = tOlympicDancing_Text["DanceName"][nGroup][2]
	local nFirstNpcId = tOlympicDancing_Dancing[nGroup]["NpcId"][1]
	local nLastNpcId = tOlympicDancing_Dancing[nGroup]["NpcId"][6]
	
	local nPosX = Get_NpcPositionX()
	local nPosY = Get_NpcPositionY()
	
	for i = nFirstNpcId,nFirstNpcId+2,1 do 
		if nPosX == tOlympicDancing_Cont["NpcPos"][i][1] and nPosY == tOlympicDancing_Cont["NpcPos"][i][2] then
			nNpcId = i
		end
	end
	
	for i = nLastNpcId-2,nLastNpcId,1 do 
		if nPosX == tOlympicDancing_Cont["NpcPos"][i][1] and nPosY == tOlympicDancing_Cont["NpcPos"][i][2] then
			nNpcId = i
		end
	end
	
	tNpcGossip[nNpcId]["Option3"] = string.format(tOlympicDancing_Text[19339]["Option3"],sDanceName)
	return true
end
tNpcGossip[19339]["Option4"] = tOlympicDancing_Text[19339]["Option4"]
tNpcGossip[19339]["OptionFunc4"] = "OlympicDancing_DancingNpc</N>3"
tNpcGossip[19339]["OptionChkFunc4"] = function ()
	local nNpcId = Get_NpcId()
	-- User_TalkChannel2005("nNpcId1==".. nNpcId)
	local nGroup = OlympicDancing_TodayDancerGroup()
	local sDanceName = tOlympicDancing_Text["DanceName"][nGroup][3]
	local nFirstNpcId = tOlympicDancing_Dancing[nGroup]["NpcId"][1]
	local nLastNpcId = tOlympicDancing_Dancing[nGroup]["NpcId"][6]
	
	local nPosX = Get_NpcPositionX()
	local nPosY = Get_NpcPositionY()
	
	for i = nFirstNpcId,nFirstNpcId+2,1 do 
		if nPosX == tOlympicDancing_Cont["NpcPos"][i][1] and nPosY == tOlympicDancing_Cont["NpcPos"][i][2] then
			nNpcId = i
		end
	end
	
	for i = nLastNpcId-2,nLastNpcId,1 do 
		if nPosX == tOlympicDancing_Cont["NpcPos"][i][1] and nPosY == tOlympicDancing_Cont["NpcPos"][i][2] then
			nNpcId = i
		end
	end
	-- User_TalkChannel2005("nNpcId2==".. nNpcId)
	-- User_TalkChannel2005("sDanceName==".. sDanceName)
	tNpcGossip[nNpcId]["Option4"] = string.format(tOlympicDancing_Text[19339]["Option4"],sDanceName)
	return true
end
-- 今日已跟当前NPC跳过舞
tNpcGossip[19339]["Text1-3"] = {131,132}
tNpcGossip[19339]["Text131"] = tOlympicDancing_Text[19339]["Text131"]
tNpcGossip[19339]["Text132"] = tOlympicDancing_Text[19339]["Text132"]
tNpcGossip[19339]["tOption1-3"] = {5}
tNpcGossip[19339]["Option5"] = tOlympicDancing_Text[19339]["Option5"]

-- 玩家今日已完成任务，但未领奖
tNpcGossip[19339]["Text1-4"] = {141}
tNpcGossip[19339]["Text141"] = tOlympicDancing_Text[19339]["Text141"]
tNpcGossip[19339]["tOption1-4"] = {6}
tNpcGossip[19339]["Option6"] = tOlympicDancing_Text[19339]["Option6"]
tNpcGossip[19339]["OptionFunc6"] = "OlympicDancing_FindNpc</N>19329"
-- 玩家今日已完成任务，已领奖
tNpcGossip[19339]["Text1-5"] = {151}
tNpcGossip[19339]["Text151"] = tOlympicDancing_Text[19339]["Text151"]
tNpcGossip[19339]["tOption1-5"] = {7}
tNpcGossip[19339]["Option7"] = tOlympicDancing_Text[19339]["Option7"]
-- 当前NPC性别与玩家性别不符合
tNpcGossip[19339]["Text1-6"] = {161,162}
tNpcGossip[19339]["Text161"] = tOlympicDancing_Text[19339]["Text161"]
tNpcGossip[19339]["Text162"] = tOlympicDancing_Text[19339]["Text162"]
tNpcGossip[19339]["tOption1-6"] = {8}
tNpcGossip[19339]["Option8"] = tOlympicDancing_Text[19339]["Option8"]
tNpcGossip[19339]["OptionFunc8"] = "OlympicDancing_FindDancer</N>1"
-- 活动结束
tNpcGossip[19339]["Text1-7"] = {171}
tNpcGossip[19339]["Text171"] = tOlympicDancing_Text[19339]["Text171"]
tNpcGossip[19339]["tOption1-7"] = {9}
tNpcGossip[19339]["Option9"] = tOlympicDancing_Text[19339]["Option9"]
-- 活动前
tNpcGossip[19339]["Text1-8"] = {181,182}
tNpcGossip[19339]["Text181"] = tOlympicDancing_Text[19339]["Text181"]
tNpcGossip[19339]["Text182"] = tOlympicDancing_Text[19339]["Text182"]
tNpcGossip[19339]["tOption1-8"] = {10}
tNpcGossip[19339]["Option10"] = tOlympicDancing_Text[19339]["Option10"]


tNpcGossip[19330] = tNpcGossip[19339]
tNpcGossip[19331] = tNpcGossip[19339]
tNpcGossip[19332] = tNpcGossip[19339]
tNpcGossip[19333] = tNpcGossip[19339]
tNpcGossip[19334] = tNpcGossip[19339]
tNpcGossip[19335] = tNpcGossip[19339]
tNpcGossip[19336] = tNpcGossip[19339]
tNpcGossip[19337] = tNpcGossip[19339]
tNpcGossip[19338] = tNpcGossip[19339]

tNpcGossip[19340] = tNpcGossip[19339]
tNpcGossip[19341] = tNpcGossip[19339]
tNpcGossip[19342] = tNpcGossip[19339]
tNpcGossip[19343] = tNpcGossip[19339]
tNpcGossip[19344] = tNpcGossip[19339]
tNpcGossip[19345] = tNpcGossip[19339]
tNpcGossip[19346] = tNpcGossip[19339]
tNpcGossip[19347] = tNpcGossip[19339]

--------------------------------------------时间自检---------------------------------------
-- 每天00:00重置动态码
-- tOntimerMin_HM[0000] = tOntimerMin_HM[0000] or {}
-- table.insert(tOntimerMin_HM[0000],OlympicDancing_ResetGlobalData)

