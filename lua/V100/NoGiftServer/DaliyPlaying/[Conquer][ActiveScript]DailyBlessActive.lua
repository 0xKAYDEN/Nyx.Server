------------------------------------------------------------------------------------
--Name:		180920[简体征服][活动脚本]无赠品服务器整点祈福活动
--Purpose:	无赠品服务器整点祈福活动
--Creator: 	洪聪敏
--Created:	2018/09/21
------------------------------------------------------------------------------------
--命名前缀：DailyBlessActive_
--log:12001171
--lua.ini:41001

--STC
--(183,58) 玩家是否开始吸收灵气
--(183,59) 记录玩家本小时内是否吸收
--(183,60) 记录玩家当日吸收次数
------------------------------------------------------------------------------------
--常量：
local tDailyBlessActive_Cont = {}
	tDailyBlessActive_Cont["Time"] = "00 19"
	tDailyBlessActive_Cont["MapId"] = 1036
	tDailyBlessActive_Cont["Bound"] = 18
	tDailyBlessActive_Cont["PosX"] = 195
	tDailyBlessActive_Cont["PosY"] = 196
	tDailyBlessActive_Cont["SetTimer"] = 60
	tDailyBlessActive_Cont["ChgPoin"] = {}
	tDailyBlessActive_Cont["ChgPoin"]["MapId"] = 1036
	tDailyBlessActive_Cont["ChgPoin"]["PosX"] = 187
	tDailyBlessActive_Cont["ChgPoin"]["PosY"] = 205
	
	
	-- 两小时双倍经验
	tDailyBlessActive_Cont["ExpPercent"] = 200
	tDailyBlessActive_Cont["ExpTime"] = 3600
--STC
local tDailyBlessActive_Stc = {}
	--玩家是否开始吸收灵气
	tDailyBlessActive_Stc[1] = {}
	tDailyBlessActive_Stc[1]["EventType"] = 183
	tDailyBlessActive_Stc[1]["DataType"] = 58
	--记录玩家本小时内是否吸收
	tDailyBlessActive_Stc[2] = {}
	tDailyBlessActive_Stc[2]["EventType"] = 183
	tDailyBlessActive_Stc[2]["DataType"] = 59
	--记录玩家当日吸收次数
	tDailyBlessActive_Stc[3] = {}
	tDailyBlessActive_Stc[3]["EventType"] = 183
	tDailyBlessActive_Stc[3]["DataType"] = 60
	
	
-----------------------------------奖励部分-----------------------------------------
local tDailyBlessActive_Reward = {}
	--每天前三次祈福
	tDailyBlessActive_Reward[1] = {}
	tDailyBlessActive_Reward[1]["RewardEffect"] = {}
	tDailyBlessActive_Reward[1]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyBlessActive_Reward[1]["RewardMulExpTime"] ={}
	tDailyBlessActive_Reward[1]["RewardMulExpTime"]["Percent"] = 200 -- 1小时双倍经验
	tDailyBlessActive_Reward[1]["RewardMulExpTime"]["Time"] = 1
	tDailyBlessActive_Reward[1]["RewardBless"] = {}
	tDailyBlessActive_Reward[1]["RewardBless"]["Value"] = 3 -- 3小时祝福时间
	tDailyBlessActive_Reward[1]["LogId"] = 12001171
	tDailyBlessActive_Reward[1]["LogStep"] = "1[1]"
	--三次之后
	tDailyBlessActive_Reward[2] = {}
	tDailyBlessActive_Reward[2]["RewardEffect"] = {}
	tDailyBlessActive_Reward[2]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyBlessActive_Reward[2]["RewardBless"] = {}
	tDailyBlessActive_Reward[2]["RewardBless"]["Value"] = 1 -- 3小时祝福时间
	tDailyBlessActive_Reward[2]["RewardCultivation"] = {}
	tDailyBlessActive_Reward[2]["RewardCultivation"]["Value"] = 50
	tDailyBlessActive_Reward[2]["LogId"] = 12001171
	tDailyBlessActive_Reward[2]["LogStep"] = "1[2]"
	
local tDailyBlessActive_ExtraReward = {}
--1转：100修行值
	tDailyBlessActive_ExtraReward[1] = {}
	tDailyBlessActive_ExtraReward[1]["RewardCultivation"] ={}
	tDailyBlessActive_ExtraReward[1]["RewardCultivation"]["Value"] = 100
	tDailyBlessActive_ExtraReward[1]["LogId"] = 12001171
	tDailyBlessActive_ExtraReward[1]["LogStep"] = "2[1]"
--2转：200气力值
	tDailyBlessActive_ExtraReward[2] = {}
	tDailyBlessActive_ExtraReward[2]["RewardStrengthValue"] ={}
	tDailyBlessActive_ExtraReward[2]["RewardStrengthValue"]["Value"] = 200
	tDailyBlessActive_ExtraReward[2]["LogId"] = 12001171
	tDailyBlessActive_ExtraReward[2]["LogStep"] = "2[2]"

-----------------------------------逻辑部分------------------------------------------
--吸收灵气前置条件判断
function DailyBlessActive_ConfirmAbsorb(nNpcId)
	local nUserId = nUserId or Get_UserId()
	local nUserMap = Get_UserMapId(nUserId)
	local nNowPosX = Get_UserPositionX(nUserId)
	local nNowPosY = Get_UserPositionY(nUserId)
	local nMapId = tDailyBlessActive_Cont["MapId"]
	local nBound = tDailyBlessActive_Cont["Bound"]
	local nPosX = tDailyBlessActive_Cont["PosX"]
	local nPosY = tDailyBlessActive_Cont["PosY"]
	--开始吸收标志
	local nEvent_Start = tDailyBlessActive_Stc[1]["EventType"]
	local nType_Start  = tDailyBlessActive_Stc[1]["DataType"]
	--本小时吸收次数
	local nEvent = tDailyBlessActive_Stc[2]["EventType"]
	local nType  = tDailyBlessActive_Stc[2]["DataType"]
	
	--每小时清零吸收次数
	if Task_StcInterval(nEvent,nType,2,1,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
--是否每小时前十分钟
	if not Sys_ChkMinute(tDailyBlessActive_Cont["Time"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
--本小时内是否吸收过
	if Task_ChkStcValue(nEvent,nType,">=",1,nUserId) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
--正在吸收
	if Task_ChkStcValue(nEvent_Start,nType_Start,"==",1,nUserId) then
		LinkNpcGossipFunc_New(nNpcId,"2-5")
		return
	end
--是否在法阵内
	if nUserMap == nMapId then
		if (nNowPosX >= nPosX - nBound and nNowPosX <= nPosX + nBound) and (nNowPosY >= nPosY - nBound and nNowPosY <= nPosY + nBound) then
			LinkNpcGossipFunc_New(nNpcId,"2-3")
			return
		end
	end
	LinkNpcGossipFunc_New(nNpcId,"2-4")
end
--进入法阵
function DailyBlessActive_EntArray(nNpcId)
	local nMapId = tDailyBlessActive_Cont["ChgPoin"]["MapId"]
	local nPosX = tDailyBlessActive_Cont["ChgPoin"]["PosX"]
	local nPosY = tDailyBlessActive_Cont["ChgPoin"]["PosY"]
	User_ChgMap(nMapId,nPosX,nPosY,1)
	DailyBlessActive_StartAbsorb(nNpcId)
end
--开始吸收灵气
function DailyBlessActive_StartAbsorb(nNpcId)
	local nUserId = Get_UserId()
	local nEvent = tDailyBlessActive_Stc[1]["EventType"]
	local nType  = tDailyBlessActive_Stc[1]["DataType"]
	local nUserMap = Get_UserMapId(nUserId)
	local nNowPosX = Get_UserPositionX(nUserId)
	local nNowPosY = Get_UserPositionY(nUserId)
	local nMapId = tDailyBlessActive_Cont["MapId"]
	local nBound = tDailyBlessActive_Cont["Bound"]
	local nPosX = tDailyBlessActive_Cont["PosX"]
	local nPosY = tDailyBlessActive_Cont["PosY"]
--是否在法阵内
	if nUserMap == nMapId then
		if (nNowPosX >= nPosX - nBound and nNowPosX <= nPosX + nBound) and (nNowPosY >= nPosY - nBound and nNowPosY <= nPosY + nBound) then
		--出提示
			Sys_MsgBox(tDailyBlessActive_Text["GoAwary"])
			--打开始吸收掩码
			Task_SetStatistic(nEvent,nType,1,1,nUserId)
			Task_SetStcTimestamp(nEvent,nType,0,nUserId)
			--祈福开始光效
			User_EffectAdd("self","attackup1",nUserId)
			--倒计时一分钟
			local nTime = tDailyBlessActive_Cont["SetTimer"]
			local sFunc = "DailyBlessActive_GetReward"
			User_SetTimer(nTime,sFunc,1,nUserId)
			return
		end
	end
	
	LinkNpcGossipFunc_New(nNpcId,"2-4")
end

--倒计时结束检测玩家是否离开法阵和领取奖励
function DailyBlessActive_GetReward(nUserId)
	local nUserId = nUserId or Get_UserId()
	local nUserMap = Get_UserMapId(nUserId)
	local nNowPosX = Get_UserPositionX(nUserId)
	local nNowPosY = Get_UserPositionY(nUserId)
	local nMapId = tDailyBlessActive_Cont["MapId"]
	local nBound = tDailyBlessActive_Cont["Bound"]
	local nPosX = tDailyBlessActive_Cont["PosX"]
	local nPosY = tDailyBlessActive_Cont["PosY"]
	--转世次数
	local nUserMetempsychosis = Get_UserMetempsychosis(nUserId)
	if nUserMetempsychosis > 2 then 
		nUserMetempsychosis = 2 
	end
	--开始吸收标志
	local nEvent = tDailyBlessActive_Stc[1]["EventType"]
	local nType  = tDailyBlessActive_Stc[1]["DataType"]
	--每小时吸收标志
	local nEvent_Hours = tDailyBlessActive_Stc[2]["EventType"]
	local nType_Hours = tDailyBlessActive_Stc[2]["DataType"]
	--当天吸收次数
	local nEvent_Num = tDailyBlessActive_Stc[3]["EventType"]
	local nType_Num  = tDailyBlessActive_Stc[3]["DataType"]
	--祈福结束删除光效
	User_EffectDel("self","attackup1",nUserId)
	
	if nUserMap == nMapId then
		if (nNowPosX >= nPosX - nBound and nNowPosX <= nPosX + nBound) and (nNowPosY >= nPosY - nBound and nNowPosY <= nPosY + nBound) then
			if Task_ChkStcValue(nEvent,nType,"==",1,nUserId) then 
			--在法阵内且有开始吸收掩码
				--清除吸收掩码
				Task_SetStatistic(nEvent,nType,0,1,nUserId)
				Task_SetStcTimestamp(nEvent,nType,0,nUserId)
				--每小时吸收灵气掩码+1
				Task_SetStatistic(nEvent_Hours,nType_Hours,1,1,nUserId)
				Task_SetStcTimestamp(nEvent_Hours,nType_Hours,0,nUserId)
				--吸收次数+1
				Task_AddStatistic(nEvent_Num,nType_Num,1,1,nUserId)
				Task_SetStcTimestamp(nEvent_Num,nType_Num,0,nUserId)
				local nAbsorbNum = Get_UserStatisticValue(nEvent_Num,nType_Num,nUserId)
				--判断当前是第几次领取奖励
				if nAbsorbNum <= 3 then
					-- 前三次
					if nUserMetempsychosis ~= 0 then
						local sText = string.format(tDailyBlessActive_Text["GetReward"][3],nAbsorbNum)
						if nUserMetempsychosis == 2 then
							sText = string.format(tDailyBlessActive_Text["GetReward"][4],nAbsorbNum)
						end
						Sys_MsgBox(sText,"NULL","NULL",nUserId)
						RewardTemplate_UseItemAndMsg(tDailyBlessActive_Reward[1],nUserId)
						RewardTemplate_UseItemAndMsg(tDailyBlessActive_ExtraReward[nUserMetempsychosis],nUserId)
					else
						RewardTemplate_UseItemAndMsg(tDailyBlessActive_Reward[1],nUserId)
						Sys_MsgBox(string.format(tDailyBlessActive_Text["GetReward"][1],nAbsorbNum),"NULL","NULL",nUserId)
					end
				else
					Sys_MsgBox(tDailyBlessActive_Text["GetReward"][2],"NULL","NULL",nUserId)
					RewardTemplate_UseItemAndMsg(tDailyBlessActive_Reward[2],nUserId)
				end
			end
			return
		end
	end
	--不在祈福区
	Task_SetStatistic(nEvent,nType,0,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	Sys_MsgBox(tDailyBlessActive_Text["Fail"],"DailyBlessActive_GoNpc","NULL",nUserId)
end
--传送到聚灵法阵NPC附近
function DailyBlessActive_GoNpc()
	local nMapId = tDailyBlessActive_Cont["ChgPoin"]["MapId"]
	local nPosX = tDailyBlessActive_Cont["ChgPoin"]["PosX"]
	local nPosY = tDailyBlessActive_Cont["ChgPoin"]["PosY"]
	User_ChgMap(nMapId,nPosX,nPosY,1)
end
--上线自检
function DailyBlessActive_UserLogin()
--防止计时器计时到一半玩家下线情况，玩家上线统一删除开始吸收灵气掩码
	local nUserId = Get_UserId()
	local nEvent = tDailyBlessActive_Stc[1]["EventType"]
	local nType  = tDailyBlessActive_Stc[1]["DataType"]
	--清除吸收掩码
	Task_SetStatistic(nEvent,nType,0,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
end
----------------------------------NPC部分--------------------------------------------
tNpcFace[1379] = 49
tNpcGossip[23269] = tNpcGossip[23269] or DefaultNpc:new{}
tNpcGossip[23269]["OptionHidden"] = 1
tNpcGossip[23269]["DialogueText"] = tDailyBlessActive_Text[23269]
--主对白
tNpcGossip[23269]["Text1-1"] = {111,112,113,114,115,116,117}
tNpcGossip[23269]["tOption1-1"] = {111,112}
tNpcGossip[23269]["ChkFunc1-1"] = function ()
	local nUserId = Get_UserId()
	local nEvent = tDailyBlessActive_Stc[3]["EventType"]
	local nType  = tDailyBlessActive_Stc[3]["DataType"]
	--隔天清零
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
	return true
end
tNpcGossip[23269]["OptionChkFunc111"] = function ()
	local nUserId = Get_UserId()
	local nEvent = tDailyBlessActive_Stc[3]["EventType"]
	local nType  = tDailyBlessActive_Stc[3]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	local nNewData = nData + 1
	tNpcGossip[23269]["Option111"] = string.format(tDailyBlessActive_Text[23269]["Option111"],nNewData)
	return true 
end
tNpcGossip[23269]["OptionFunc111"] = "DailyBlessActive_ConfirmAbsorb</N>23269"

--活动时间外
tNpcGossip[23269]["Text2-1"] = {211}
tNpcGossip[23269]["tOption2-1"] = {211}
--已经吸收过
tNpcGossip[23269]["Text2-2"] = {221}
tNpcGossip[23269]["tOption2-2"] = {221}
--吸收灵气确认
tNpcGossip[23269]["Text2-3"] = {231}
tNpcGossip[23269]["tOption2-3"] = {231,232}
tNpcGossip[23269]["OptionFunc231"] = "DailyBlessActive_StartAbsorb</N>23269"
--玩家不在法阵内
tNpcGossip[23269]["Text2-4"] = {241}
tNpcGossip[23269]["tOption2-4"] = {241}
tNpcGossip[23269]["OptionFunc241"] = "DailyBlessActive_EntArray</N>23269"
--玩家正在吸收
tNpcGossip[23269]["Text2-5"] = {251}
tNpcGossip[23269]["tOption2-5"] = {251}

---------------------------------------上线触发--------------------------------
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,DailyBlessActive_UserLogin)