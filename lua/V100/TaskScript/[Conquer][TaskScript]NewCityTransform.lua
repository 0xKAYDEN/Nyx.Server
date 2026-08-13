-------------------------------------------------------------------------------------------------------------------
--Name:		[征服][任务脚本]新双龙城驿站
--Purpose:	新双龙城驿站
--Creator: 	cyh
--Created:	2017/06/20
-------------------------------------------------------------------------------------------------------------------
-- 新前缀： NewCityTransform_
-- 附加驿站npc
-- 20440~20444
-- INSERT INTO `cq_npc` (`id`,`name`,`type`,`lookface`,`idxserver`,`mapid`,`cellx`,`celly`,`task0`) VALUES
-- (20440,'驿站老板(市场)',2,286,-1,1002,334,383,94418000),
-- (20441,'驿站老板(皇宫)',2,280,-1,1002,375,325,94418000),
-- (20442,'驿站老板(日常)',2,287,-1,1002,278,460,94418000),
-- (20443,'驿站老板(城门1)',2,286,-1,1002,528,314,94418000),
-- (20444,'驿站老板(城门2)',2,280,-1,1002,436,464,94418000),

-------------------------------------------------------------------------------------------------------------------
local tNewCityTransform_Count = {}
	-- 暑期小活动等级限制
	tNewCityTransform_Count["Level"] = 80
	tNewCityTransform_Count["Metempsychosis"] = 0
	
	tNewCityTransform_Count["NpcId"] = {}
	tNewCityTransform_Count["NpcId"][1] = 20440
	tNewCityTransform_Count["NpcId"][2] = 20441
	tNewCityTransform_Count["NpcId"][3] = 20442
	tNewCityTransform_Count["NpcId"][4] = 20443
	tNewCityTransform_Count["NpcId"][5] = 20444

	tNewCityTransform_Count["Cellx"] = {}
	tNewCityTransform_Count["Cellx"][1] = 338
	tNewCityTransform_Count["Cellx"][2] = 365
	tNewCityTransform_Count["Cellx"][3] = 279
	tNewCityTransform_Count["Cellx"][4] = 532
	tNewCityTransform_Count["Cellx"][5] = 439
	tNewCityTransform_Count["Cellx"][6] = 427
	tNewCityTransform_Count["Cellx"][7] = 343

	tNewCityTransform_Count["Celly"] = {}
	tNewCityTransform_Count["Celly"][1] = 387
	tNewCityTransform_Count["Celly"][2] = 324
	tNewCityTransform_Count["Celly"][3] = 473
	tNewCityTransform_Count["Celly"][4] = 320
	tNewCityTransform_Count["Celly"][5] = 471
	tNewCityTransform_Count["Celly"][6] = 357
	tNewCityTransform_Count["Celly"][7] = 434
	
	tNewCityTransform_Count["MapId"] = 1002
	
local tSpringActivity_Reward = {}
	-- 新增奖励--雪糕
	tSpringActivity_Reward[1] = {}
	tSpringActivity_Reward[1]["RewardItem"] = {}
	tSpringActivity_Reward[1]["RewardItem"][1] = {}
	tSpringActivity_Reward[1]["RewardItem"][1]["Id"] = 3303338
	tSpringActivity_Reward[1]["RewardItem"][1]["Attr"] = "0 1"
	tSpringActivity_Reward[1]["LogId"] = 12000582
	
-- 暑期小活动新增掩码
local tSpringActivity_Stc = {}
	tSpringActivity_Stc[1] = {}
	tSpringActivity_Stc[1]["EventType"] = 177
	tSpringActivity_Stc[1]["DataType"] = 42
	

-- 暑期小活动新增概率表
local tSpringActivity_Random = {}
	tSpringActivity_Random[1] = {}
	tSpringActivity_Random[1]["ItemChanceSum"] = 10000
	
	tSpringActivity_Random[1][1] = {}
	tSpringActivity_Random[1][1]["RandomItemChanceType"] = 2
	tSpringActivity_Random[1][1]["ItemChance"] = 3000
	tSpringActivity_Random[1][1]["Item"] = 1
	
	tSpringActivity_Random[1][2] = {}
	tSpringActivity_Random[1][2]["RandomItemChanceType"] = 2
	tSpringActivity_Random[1][2]["ItemChance"] = 7000
	tSpringActivity_Random[1][2]["Item"] = 0
	
------------------------------------------逻辑----------------------------------------------
--跳转到德州Npc的位置处
function NewCityTransform_Location()
	local nMapId = tNewCityTransform_Count["MapId"]
	local nCellx = tNewCityTransform_Count["Cellx"][7]
	local nCelly = tNewCityTransform_Count["Celly"][7]
	User_ChgMap(nMapId,nCellx,nCelly)
end

-- 双龙城传送使者额外添加
function SpringActivity_Summer(nNpcId)
	local nUserId = Get_UserId()
	local nEvent = tSpringActivity_Stc[1]["EventType"]
	local nType =  tSpringActivity_Stc[1]["DataType"]
	 
	-- 判断活动时间与等级
	if Sys_ChkFullTime(tActivityTime["SummerActivityShop"]["ActivityTime"]) and User_JudgeLevelAndMetempsychosis(tNewCityTransform_Count["Level"],tNewCityTransform_Count["Metempsychosis"],nUserId) then 
		-- 判断隔天
		if Task_StcInterval(nEvent,nType,1,4,nUserId) then
			Task_SetStatistic(nEvent,nType,0,1,nUserId)
			Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		end
		
		-- 判断上限
		local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
		if nData < 3 then 
			local flat,tNum = Probabil_RandomAward(tSpringActivity_Random,1)
			local nItemId = tNum[1]["tAward"][1]["Item"]
			
			-- 随机出对白
			if nItemId == 1 then
				-- LinkNpcGossipFunc_New(nNpcId,"1-4")
				SpringActivity_Reward(nNpcId)
				return
			end
		end
	end
	
	LinkNpcGossipFunc_New(nNpcId,"1")
end

-- 双龙城传送使者领取雪糕
function SpringActivity_Reward(nNpcId)
	local nEvent = tSpringActivity_Stc[1]["EventType"]
	local nType =  tSpringActivity_Stc[1]["DataType"]
	
	-- 判断活动时间与等级
	if not Sys_ChkFullTime(tActivityTime["SummerActivityShop"]["ActivityTime"]) or not User_JudgeLevelAndMetempsychosis(tNewCityTransform_Count["Level"],tNewCityTransform_Count["Metempsychosis"]) then 
		LinkNpcGossipFunc_New(nNpcId,"1")
		return
	end
	
	-- 判断隔天
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	
	-- 判断上限
	local nData = Get_UserStatisticValue(nEvent,nType)
	if nData >= 3 then 
		LinkNpcGossipFunc_New(nNpcId,"1")
		return
	end
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tSpringActivity_Reward[1])
	if not User_CheckLeftSpace(nSpace) then
		-- LinkNpcGossipFunc_New(nNpcId,"2-1")
		LinkNpcGossipFunc_New(nNpcId,"1")
		return
	end
	
	Task_AddStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	RewardTemplate_UseItem(tSpringActivity_Reward[1])
	LinkNpcGossipFunc_New(nNpcId,"1-4")
	
	return
end


----------------------------------------------------------npc逻辑-----------------------------------------------------
for i = 20440,20444 do
-- npc对白设置
tNpcFace[4893] = 1
tNpcGossip[i] = tNpcGossip[i] or DefaultNpc:new{}
tNpcGossip[i]["OptionHidden"] = 1

tNpcGossip[i]["Text1-1"] = {111,112,113}
tNpcGossip[i]["Text111"] = tNewCityTransform_Text["TransFrom"]["Text111"]
tNpcGossip[i]["Text112"] = tNewCityTransform_Text["TransFrom"]["Text112"]
tNpcGossip[i]["Text113"] = tNewCityTransform_Text["TransFrom"]["Text113"]
tNpcGossip[i]["tOption1-1"] = {7,1,2,3,4,5,6}
tNpcGossip[i]["Option1"] = tNewCityTransform_Text["TransFrom"]["Option1"]
tNpcGossip[i]["Option2"] = tNewCityTransform_Text["TransFrom"]["Option2"]
tNpcGossip[i]["Option3"] = tNewCityTransform_Text["TransFrom"]["Option3"]
tNpcGossip[i]["Option4"] = tNewCityTransform_Text["TransFrom"]["Option4"]
tNpcGossip[i]["Option5"] = tNewCityTransform_Text["TransFrom"]["Option5"]
tNpcGossip[i]["Option6"] = tNewCityTransform_Text["TransFrom"]["Option6"]
tNpcGossip[i]["Option7"] = tNewCityTransform_Text["TransFrom"]["Option7"]

tNpcGossip[i]["OptionFunc1"] = "User_ChgMap</N>"..tNewCityTransform_Count["MapId"].."</N>"..tNewCityTransform_Count["Cellx"][1].."</N>"..tNewCityTransform_Count["Celly"][1]
tNpcGossip[i]["OptionFunc2"] = "User_ChgMap</N>"..tNewCityTransform_Count["MapId"].."</N>"..tNewCityTransform_Count["Cellx"][3].."</N>"..tNewCityTransform_Count["Celly"][3]
tNpcGossip[i]["OptionFunc3"] = "User_ChgMap</N>"..tNewCityTransform_Count["MapId"].."</N>"..tNewCityTransform_Count["Cellx"][4].."</N>"..tNewCityTransform_Count["Celly"][4]
tNpcGossip[i]["OptionFunc4"] = "User_ChgMap</N>"..tNewCityTransform_Count["MapId"].."</N>"..tNewCityTransform_Count["Cellx"][5].."</N>"..tNewCityTransform_Count["Celly"][5]
tNpcGossip[i]["OptionFunc5"] = "User_ChgMap</N>"..tNewCityTransform_Count["MapId"].."</N>"..tNewCityTransform_Count["Cellx"][2].."</N>"..tNewCityTransform_Count["Celly"][2]    
tNpcGossip[i]["OptionFunc6"] = "User_ChgMap</N>"..tNewCityTransform_Count["MapId"].."</N>"..tNewCityTransform_Count["Cellx"][6].."</N>"..tNewCityTransform_Count["Celly"][6]
-- tNpcGossip[i]["OptionFunc6"] = "NpcPosition_PathFind</N>10080"
tNpcGossip[i]["OptionFunc7"] = "User_ChgMap</N>"..tNewCityTransform_Count["MapId"].."</N>"..tNewCityTransform_Count["Cellx"][7].."</N>"..tNewCityTransform_Count["Celly"][7]

-- 暑期小活动额外对白
tNpcGossip[i]["Text1-4"] = {141,142,143}
tNpcGossip[i]["Text141"] = tNewCityTransform_Text["TransFrom"]["Text141"]
tNpcGossip[i]["Text142"] = tNewCityTransform_Text["TransFrom"]["Text142"]
tNpcGossip[i]["Text143"] = tNewCityTransform_Text["TransFrom"]["Text143"]
tNpcGossip[i]["tOption1-4"] = {141}
tNpcGossip[i]["Option141"] = tNewCityTransform_Text["TransFrom"]["Option141"]
tNpcGossip[i]["OptionFunc141"] = "SpringActivity_Reward</N>" .. i

-- 背包满
tNpcGossip[i]["Text2-1"] = {211}
tNpcGossip[i]["Text211"] = tNewCityTransform_Text["TransFrom"]["Text211"]
tNpcGossip[i]["tOption2-1"] = {211}
tNpcGossip[i]["Option211"] = tNewCityTransform_Text["TransFrom"]["Option211"]
end