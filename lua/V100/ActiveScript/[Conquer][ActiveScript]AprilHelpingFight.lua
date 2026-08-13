------------------------------------------------------------------------------------
--Name：            180314[英文征服][活动脚本]4月超级帮战（4.5-5.11）
--Creator:      杨艳
--Created:     2018/03/14
------------------------------------------------------------------------------------
--命名规范： AprilHelpingFight_

--logid:  12001042
------------------------------------------------------------------------------------
local tAprilHelpingFight_Data = {}
	
	--等级要求
	tAprilHelpingFight_Data["Level"] = 100
	tAprilHelpingFight_Data["MinMeto"] = 0

	--领取礼包的时间（周一到周四）
	tAprilHelpingFight_Data["GetRewardDate"] = "1 00:00 4 23:59"
	
	--掩码说明
	tAprilHelpingFight_Data["EventType"] = {}
	tAprilHelpingFight_Data["DataType"] = {}
	
	--记录玩家第几次打开胜利礼包
    tAprilHelpingFight_Data["EventType"][3307793] = 175
	tAprilHelpingFight_Data["DataType"][3307793] = 58
	
	--记录玩家第几次打开失败礼包
	tAprilHelpingFight_Data["EventType"][3307794] = 175
	tAprilHelpingFight_Data["DataType"][3307794] = 59
	
	--记录玩家是否领取参赛礼包
	tAprilHelpingFight_Data["EventType"][1] = 175
	tAprilHelpingFight_Data["DataType"][1] = 60
	
	--记录玩家是否打开过礼包
	tAprilHelpingFight_Data["EventType"][2] = 175
	tAprilHelpingFight_Data["DataType"][2] = 61
	
	
local tAprilHelpingFight_Award = {}
	--GrandVictoryPack  3307793 
	tAprilHelpingFight_Award[3307793] = {}
	
	-- 500点气力值
	tAprilHelpingFight_Award[3307793]["RewardStrengthValue"] = {}
	tAprilHelpingFight_Award[3307793]["RewardStrengthValue"]["Value"] = 500
	
	-- 明亮星陨石
	tAprilHelpingFight_Award[3307793]["RewardItem"] = {}
	tAprilHelpingFight_Award[3307793]["RewardItem"][1] = {}
    tAprilHelpingFight_Award[3307793]["RewardItem"][1]["Id"] = 3009001
    tAprilHelpingFight_Award[3307793]["RewardItem"][1]["Attr"] = "0 1 2880 1"
    tAprilHelpingFight_Award[3307793]["Log"] = "0,0,0,0,12001042,2,[12]3009001,500[1]"
	
	-- PersistencePack 3307794
	tAprilHelpingFight_Award[3307794] = {}
	
	-- 300点气力值
	tAprilHelpingFight_Award[3307794]["RewardStrengthValue"] = {}
	tAprilHelpingFight_Award[3307794]["RewardStrengthValue"]["Value"] = 300
	                       
	-- 微光星陨石   
	tAprilHelpingFight_Award[3307794]["RewardItem"] = {}
	tAprilHelpingFight_Award[3307794]["RewardItem"][1] = {}
    tAprilHelpingFight_Award[3307794]["RewardItem"][1]["Id"] = 3009000
    tAprilHelpingFight_Award[3307794]["RewardItem"][1]["Attr"] = "0 5 2880 1"
    tAprilHelpingFight_Award[3307794]["Log"] = "0,0,0,0,12001042,2,[12]3009000,300[5]"


	--帮派参与奖励
	tAprilHelpingFight_Award[1] = {}
	tAprilHelpingFight_Award[1]["RewardItem"] = {}
	tAprilHelpingFight_Award[1]["RewardItem"][1] = {}
    tAprilHelpingFight_Award[1]["RewardItem"][1]["Id"] = 3307793
    tAprilHelpingFight_Award[1]["RewardItem"][1]["Attr"] = "0 1 3"
    tAprilHelpingFight_Award[1]["Log"] = "0,0,0,0,12001042,2,3307793,1"
	
	tAprilHelpingFight_Award[2] = {}
	tAprilHelpingFight_Award[2]["RewardItem"] = {}
	tAprilHelpingFight_Award[2]["RewardItem"][1] = {}
    tAprilHelpingFight_Award[2]["RewardItem"][1]["Id"] = 3307794
    tAprilHelpingFight_Award[2]["RewardItem"][1]["Attr"] = "0 1 3"
    tAprilHelpingFight_Award[2]["Log"] = "0,0,0,0,12001042,2,3307794,1"
	
	
	
local tAprilHelpingFight_RunDomAward = {}

	--GrandVictoryPack  3307793 
	tAprilHelpingFight_RunDomAward[3307793] = {}
	tAprilHelpingFight_RunDomAward[3307793]["ItemChanceSum"] = 10000

	--万能神纹精粹 4060001  20%
	tAprilHelpingFight_RunDomAward[3307793][1] = {}
	tAprilHelpingFight_RunDomAward[3307793][1]["RandomItemChanceType"] = 2
	tAprilHelpingFight_RunDomAward[3307793][1]["ItemChance"] = 2000
	tAprilHelpingFight_RunDomAward[3307793][1]["RewardItem"] = {}
	tAprilHelpingFight_RunDomAward[3307793][1]["RewardItem"][1] = {}
	tAprilHelpingFight_RunDomAward[3307793][1]["RewardItem"][1]["Id"] = 4060001
	tAprilHelpingFight_RunDomAward[3307793][1]["RewardItem"][1]["Attr"] = "0 10 3"
	tAprilHelpingFight_RunDomAward[3307793][1]["Log"] = "0,0,0,0,12001042,2,4060001,10"
	
	tAprilHelpingFight_RunDomAward[3307793][2] = {}
	tAprilHelpingFight_RunDomAward[3307793][2]["RandomItemChanceType"] = 2
	tAprilHelpingFight_RunDomAward[3307793][2]["ItemChance"] = 8000
	
	-- PersistencePack 3307794
	tAprilHelpingFight_RunDomAward[3307794] = {}
	tAprilHelpingFight_RunDomAward[3307794]["ItemChanceSum"] = 10000
                                  
	--万能神纹精粹 4060001  20%   
	tAprilHelpingFight_RunDomAward[3307794][1] = {}
	tAprilHelpingFight_RunDomAward[3307794][1]["RandomItemChanceType"] = 2
	tAprilHelpingFight_RunDomAward[3307794][1]["ItemChance"] = 2000
	tAprilHelpingFight_RunDomAward[3307794][1]["RewardItem"] = {}
	tAprilHelpingFight_RunDomAward[3307794][1]["RewardItem"][1] = {}
	tAprilHelpingFight_RunDomAward[3307794][1]["RewardItem"][1]["Id"] = 4060001
	tAprilHelpingFight_RunDomAward[3307794][1]["RewardItem"][1]["Attr"] = "0 5 3"
	tAprilHelpingFight_RunDomAward[3307794][1]["Log"] = "0,0,0,0,12001042,2,4060001,5"
	  
	tAprilHelpingFight_RunDomAward[3307794][2] = {}
	tAprilHelpingFight_RunDomAward[3307794][2]["RandomItemChanceType"] = 2
	tAprilHelpingFight_RunDomAward[3307794][2]["ItemChance"] = 8000
	
	
	

--log表
local tAprilHelpingFight_Log = {}
	tAprilHelpingFight_Log["DelItem"] = "0,0,%d,1,12001042,3,0,0" --删除任务物品
	tAprilHelpingFight_Log["DelAllItem"] = "0,0,%d,%d,12001042,2,0,0"		


---------------------------------逻辑部分---------------------------------------------
--帮战npc 820 
function AprilHelpingFight_GetRewards(nFlag)

	local nNpcId = 22729
	local nUserId = Get_UserId()
	--活动时间
	if  CommonFunc_GetBeforeActivityTime(tActivityTime["AprilHelpingFight"]["ActivityTime"]) then
	
		return
	end

	--判断时间
	if not Sys_ChkFullTime(tActivityTime["AprilHelpingFight"]["ActivityTime"]) then
	
		LinkNpcGossipFunc_New(nNpcId, "1-3")
		return
	end

	-- 等级判断
	if not User_JudgeLevelAndMetempsychosis(tAprilHelpingFight_Data["Level"], tAprilHelpingFight_Data["MinMeto"]) then

		LinkNpcGossipFunc_New(nNpcId, "1-4")

		return
	end

	--是否是领奖时间 周一到周四
	if not Sys_ChkWeedTime(tAprilHelpingFight_Data["GetRewardDate"]) then

		--提示玩家不是领奖时间
		User_TalkChannel2005(tAprilHelpingFight_Text["Sys"]["NoGetTime"])
		return
	end

	local nEvent = tAprilHelpingFight_Data["EventType"][1]
	local nData = tAprilHelpingFight_Data["DataType"][1]
	
	if Task_StcInterval(nEvent,nData,1,5,nUserId) then
		Task_SetStatistic(nEvent, nData, 0, 1)
		Task_SetStcTimestamp(nEvent,nData,0,nUserId)
	end

	local nTime	= Get_UserStatisticValue(nEvent,nData)
	
	if nTime > 0 then
		-- 提示玩家每周领取一次这周已经领取过了 
		User_TalkChannel2005(tAprilHelpingFight_Text["Sys"]["HaveGot"])
		return
	end


	local nUserGuildId = Get_UserGuildId(nUserId)
	
	--非帮派玩家
	if nUserGuildId == 0 or nUserGuildId == nil then 

		User_TalkChannel2005(tAprilHelpingFight_Text["Sys"]["NoGroup"])
		return
	end 
	
	--背包空间
	if not User_CheckLeftSpace(RewardTemplate_GetRewardSpace(tAprilHelpingFight_Award[nFlag],nUserId)) then
	
		User_TalkChannel2005(tAprilHelpingFight_Text["Sys"]["NoSpace"])
		return
	end

	--置掩码
	Task_AddStatistic(nEvent,nData,1,1)
	Task_SetStcTimestamp(nEvent,nData,0)
	
	RewardTemplate_UseItemAndMsg(tAprilHelpingFight_Award[nFlag])
	
	
	
end


function AprilHelpingFight_UseGrandVictoryPack(nItemId)

	local nUserId = Get_UserId()
	if not Item_ChkItem(nItemId) then
		return
	end

	if  CommonFunc_GetBeforeActivityTime(tActivityTime["AprilHelpingFight"]["ActivityTime"]) then
	
		return
	end

	--判断时间
	if not Sys_ChkFullTime(tActivityTime["AprilHelpingFight"]["ActivityTime"]) then
		if Item_ChkItem(nItemId) then
			if Item_DelItem(nItemId) then
				local sDelItemLog = string.format(tAprilHelpingFight_Log["DelItem"],nItemId)
				Sys_SaveActionFestivalLog(sDelItemLog)
				User_TalkChannel2005(tLuaRes[10004])
			end
		end	
		return
	end

	--等级判断
	if not User_JudgeLevelAndMetempsychosis(tAprilHelpingFight_Data["Level"], tAprilHelpingFight_Data["MinMeto"]) then
		return
	end

	local nSpaceSum = RewardTemplate_GetRewardSpace(tAprilHelpingFight_Award[nItemId],nUserId)
	local nSpaceRun = RewardTemplate_GetRandomSpace(tAprilHelpingFight_RunDomAward,nItemId,nUserId)
	nSpaceSum = nSpaceSum + nSpaceRun
	--判断背包空间
	if not User_CheckLeftSpace(nSpaceSum) then
		User_TalkChannel2005(string.format(tAprilHelpingFight_Text["Sys"]["BagFull"],nSpaceSum))
		return
	end
	--玩家第几次领取
	local nEventNum = tAprilHelpingFight_Data["EventType"][nItemId] 
	local nDataNum = tAprilHelpingFight_Data["DataType"][nItemId] 
	
	-- 判断是否隔天
	if Task_StcInterval(nEventNum, nDataNum, 1, 4) then

		Task_SetStcTimestamp(nEventNum, nDataNum, 0)
	else
		User_TalkChannel2005(tAprilHelpingFight_Text["Sys"]["GetReward"])
		return
	end
	
	local nTime = Get_UserStatisticValue(nEventNum,nDataNum)

	
	--打开7次以上
	if nTime > 6 then
		if Item_ChkItem(nItemId) then
			if Item_DelItem(nItemId) then
				local sDelItemLog = string.format(tAprilHelpingFight_Log["DelItem"],nItemId)
				Sys_SaveActionFestivalLog(sDelItemLog)
				User_TalkChannel2005(tAprilHelpingFight_Text["Sys"]["FullTimes"])
			end
		end	
		Task_SetStatistic(nEventNum, nDataNum, 0, 1)
		Task_SetStcTimestamp(nEventNum, nDataNum, 0)
		return
	end

	

	--最后一次打开礼包
	if nTime ==6 then 
		if Item_DelItem(nItemId) then
			local sDelItemLog = string.format(tAprilHelpingFight_Log["DelItem"],nItemId)
			Sys_SaveActionFestivalLog(sDelItemLog)
			
			--给奖励
			RewardTemplate_UseItem(tAprilHelpingFight_Award[nItemId])
			RewardTemplate_NewRandom(tAprilHelpingFight_RunDomAward,nItemId)
			Task_SetStatistic(nEventNum, nDataNum, 0, 1)
			Task_SetStcTimestamp(nEventNum, nDataNum, 0)
		end
		return
	end
	
	Task_AddStatistic(nEventNum,nDataNum,1,1)
	Task_SetStcTimestamp(nEventNum,nDataNum,0)
	--给奖励
	RewardTemplate_UseItem(tAprilHelpingFight_Award[nItemId])
	RewardTemplate_NewRandom(tAprilHelpingFight_RunDomAward,nItemId)

end

---------------------------generalofficer 820
tNpcFace[816] = 110   --头像

tNpcGossip[22729] = tNpcGossip[22729] or DefaultNpc:new{}
tNpcGossip[22729]["OptionHidden"] = 1

--活动时间后
tNpcGossip[22729]["Text1-3"] = {131}
tNpcGossip[22729]["Text131"] = tAprilHelpingFight_Text[820]["Text131"]

tNpcGossip[22729]["tOption1-3"] = {21}
tNpcGossip[22729]["Option21"] = tAprilHelpingFight_Text[820]["Option21"]
tNpcGossip[22729]["ChkFunc1-3"] = function()
	return not Sys_ChkFullTime(tActivityTime["AprilHelpingFight"]["ActivityTime"])
end


--等级要求
tNpcGossip[22729]["Text1-4"] = {141}
tNpcGossip[22729]["Text141"] = tAprilHelpingFight_Text[820]["Text141"] 

tNpcGossip[22729]["tOption1-4"] = {41}
tNpcGossip[22729]["Option41"] = tAprilHelpingFight_Text[820]["Option41"]
tNpcGossip[22729]["ChkFunc1-4"] = function()
	return  Sys_ChkFullTime(tActivityTime["AprilHelpingFight"]["ActivityTime"]) and not User_JudgeLevelAndMetempsychosis(tAprilHelpingFight_Data["Level"], tAprilHelpingFight_Data["MinMeto"])
end


---------------------------------物品部分---------------------------------------------
--GrandVictoryPack  3307793 
tItem[3307793] = tItem[3307793] or {}
tItem[3307793]["Function"] = function(nItemId,sItemName)
	AprilHelpingFight_UseGrandVictoryPack(nItemId)
end

-- PersistencePack 3307794
tItem[3307794] = tItem[3307793]












