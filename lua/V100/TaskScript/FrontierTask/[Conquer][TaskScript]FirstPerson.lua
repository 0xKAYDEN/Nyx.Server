------------------------------------------------------------------------------------
--Name:		[征服][任务脚本]先发制人
--Purpose:	先发制人
--Creator: 	郑鋆
--Created:	2015/11/10
------------------------------------------------------------------------------------

-- 命名前缀
-- FirstPerson_

-- logid:	18000083

-- 任务掩码
-- 35026		记录获得击杀卫兵精英的奖励次数
-- 35027		记录获得击杀战车怪物的奖励次数
-- 35028		记录获得水晶的奖励次数
-- 35007		data1记录杀怪的数量，data6记录先发制人的积分
-- 144,11		记录每天开启水晶礼包的次数
-- 144,12		记录每天开启战功礼包的次数

-- 常量表
local tFirstPerson_Constant = {}
	-- 日常任务完成金令
	tFirstPerson_Constant["Item"] = 3309841
	-- 任务ID
	tFirstPerson_Constant["TaskId"] = 35007
	-- 完成任务需要的积分
	tFirstPerson_Constant["Score"] = 300
	-- 领取任务奖励的背包空间
	tFirstPerson_Constant["Space"] = 3
	-- 任务完成掩码
	tFirstPerson_Constant["Succ"] = 35012
	-- 领取援军令的最高战斗力
	tFirstPerson_Constant["MaxBattleLev"] = 250
	-- 国境地图
	tFirstPerson_Constant["MapId"] = 3935
	-- 魂珠任务ID
	tFirstPerson_Constant["SoulBeadTask"] = 2375
	tFirstPerson_Constant["KillMonster"] = 1
	
	tFirstPerson_Constant["Magic"] = 12615
	tFirstPerson_Constant["MonsterId"] = 7901
	tFirstPerson_Constant["Time"] = 600
	
	-- 水晶需要的怪物数量
	tFirstPerson_Constant["MonsterNum"] = 50
	-- 每天可以领取的奖励次数
	tFirstPerson_Constant["MaxTime"] = 1
	-- 全魔性
	tFirstPerson_Constant["FullMagic"] = 15
	-- 直接完成的天石花费
	tFirstPerson_Constant["Emoney"] = 10
	--第一次杀怪
	tFirstPerson_Constant["CrossFirstKLog"] = "0,0,0,0,12000170,3,0,0"
	--第300积分
	tFirstPerson_Constant["CrossLastKLog"] = "0,0,0,0,12000171,3,0,0"
	-- 水晶
	tFirstPerson_Constant["Crystal"] = 35028
	
	tFirstPerson_Constant["CostEmoneyFinish"] = "350	4315	10	10	1	"
	
	tFirstPerson_Constant["SpecialTaskId"] = 35034
	
-- stc掩码
local tFirstPerson_Stc ={}           
	tFirstPerson_Stc["EventType"] = 136
	--积分掩码
	tFirstPerson_Stc["DataType"] = 74
	
	-- 魂珠的品质
	tFirstPerson_Stc[1] = {}
	tFirstPerson_Stc[1]["EventType"] = 108
	tFirstPerson_Stc[1]["DataType"] = 84
	
	-- 魂珠的品质
	tFirstPerson_Stc[2] = {}
	tFirstPerson_Stc[2]["EventType"] = 108
	tFirstPerson_Stc[2]["DataType"] = 57
	
	-- 水晶礼包
	tFirstPerson_Stc[3600029] = {}
	tFirstPerson_Stc[3600029]["EventType"] = 144
	tFirstPerson_Stc[3600029]["DataType"] = 11
	
	-- 战功礼包
	tFirstPerson_Stc[3600030] = {}
	tFirstPerson_Stc[3600030]["EventType"] = 144
	tFirstPerson_Stc[3600030]["DataType"] = 12

-- 援军令	
local tFirstPerson_MilitaryAid = {}
	tFirstPerson_MilitaryAid["ItemId"] = 3600020
	tFirstPerson_MilitaryAid["Space"] = 1
	tFirstPerson_MilitaryAid["ItemAttr"] = "0 1 0 60 1"
	tFirstPerson_MilitaryAid["Log"] = "0,0,0,0,18000083,2,3600020,1"

-- 任务完成的奖励
local tFirstPerson_RewardItem = {}
	tFirstPerson_RewardItem["Log"] = "0,0,0,0,18000083,2,3002926[35011][3600023][3006921][21],2[30][1][1][50]"
	tFirstPerson_RewardItem["NewLog"] = "0,0,0,0,18000083,2,3006539[35011][3600023][3006921][21],1[30][1][1][50]"
	
	tFirstPerson_RewardItem[1] = {}

	-- 天香续命精装包（1个 45%的机率）							赠
	tFirstPerson_RewardItem[1][1] = {}
	tFirstPerson_RewardItem[1][1]["ItemChanceSum"] = 10000
	tFirstPerson_RewardItem[1][1]["ItemChance"] = 4500
	tFirstPerson_RewardItem[1][1]["Item_1"] = 729549
	tFirstPerson_RewardItem[1][1]["ItemAttr"] = "0 1 3"
	tFirstPerson_RewardItem[1][1]["Log"] = "0,0,0,0,18000083,2,729549,1"
	
	-- 免费修炼丹*2，武功境界到全魔性给气力值 50点；					ID = 3002926，气力给 3006539 （激活时效1天）
	tFirstPerson_RewardItem[1][2] = {}
	tFirstPerson_RewardItem[1][2]["Item_1"] = 3002926
	tFirstPerson_RewardItem[1][2]["ItemAttr"] = "0 2"
	tFirstPerson_RewardItem[1][2]["NewItem"] = 3006539
	tFirstPerson_RewardItem[1][2]["NewItemAttr"] = "0 1"

	-- 跨服功勋值+90								直接加掩码
	tFirstPerson_RewardItem[1][3] = {}
	tFirstPerson_RewardItem[1][3]["Item_1"] = 90
	tFirstPerson_RewardItem[1][3]["IsTask"] = true

	-- 日常完成轮盘									新制作（激活时效1天）（9属性）
	tFirstPerson_RewardItem[1][4] = {}
	tFirstPerson_RewardItem[1][4]["Item_1"] = 3600023
	tFirstPerson_RewardItem[1][4]["ItemAttr"] = "0 1"

	-- 300分钟经验									新制作经验包（激活时效1天）（9属性）
	tFirstPerson_RewardItem[1][5] = {}
	tFirstPerson_RewardItem[1][5]["Item_1"] = 3200334
	tFirstPerson_RewardItem[1][5]["ItemAttr"] = "0 1 0 1440 1"

	-- 黄金联赛积分：50点；								直接加，要是加不上的话，给礼包吧。（激活时效1天）（9属性）
	tFirstPerson_RewardItem[1][6] = {}
	tFirstPerson_RewardItem[1][6]["Item_1"] = 50
	tFirstPerson_RewardItem[1][6]["IsGoldenLeague"] = true

-- 水晶奖励
local tFirstPerson_Crystal = {}
	tFirstPerson_Crystal[1] = {}
	tFirstPerson_Crystal[1]["ItemChanceSum"] = 10000
	tFirstPerson_Crystal[1]["Log"] = "0,0,3600029,1,18000083,2,%d,1"
	
	-- 强效护心丹*1  20%；								（激活时效1天），ID = 3002030
	tFirstPerson_Crystal[1][1] = {}
	tFirstPerson_Crystal[1][1]["RandomItemChanceType"] = 2
	tFirstPerson_Crystal[1][1]["ItemChance"] = 2000
	tFirstPerson_Crystal[1][1]["Item_1"] = 3002030
	tFirstPerson_Crystal[1][1]["ItemAttr"] = "0 1"
	
	-- 气力值50点  10%；								ID = 3006539 （激活时效1天）
	tFirstPerson_Crystal[1][2] = {}
	tFirstPerson_Crystal[1][2]["RandomItemChanceType"] = 2
	tFirstPerson_Crystal[1][2]["ItemChance"] = 2000
	tFirstPerson_Crystal[1][2]["Item_1"] = 3006539
	tFirstPerson_Crystal[1][2]["ItemAttr"] = "0 1"
	
	-- 通神丹  20%；								赠，ID = 3003125
	tFirstPerson_Crystal[1][3] = {}
	tFirstPerson_Crystal[1][3]["RandomItemChanceType"] = 2
	tFirstPerson_Crystal[1][3]["ItemChance"] = 2000
	tFirstPerson_Crystal[1][3]["Item_1"] = 3003125
	tFirstPerson_Crystal[1][3]["ItemAttr"] = "0 1 3"
	
	-- 免费秘制修炼丹   20%；							ID = 3002926
	tFirstPerson_Crystal[1][4] = {}
	tFirstPerson_Crystal[1][4]["RandomItemChanceType"] = 2
	tFirstPerson_Crystal[1][4]["ItemChance"] = 2000
	tFirstPerson_Crystal[1][4]["Item_1"] = 3002926
	tFirstPerson_Crystal[1][4]["ItemAttr"] = "0 1"
	
	-- 7阶神魂抽奖道具  10%								赠，ID = 3004181
	-- tFirstPerson_Crystal[1][5] = {}
	-- tFirstPerson_Crystal[1][5]["RandomItemChanceType"] = 2
	-- tFirstPerson_Crystal[1][5]["ItemChance"] = 1000
	-- tFirstPerson_Crystal[1][5]["Item_1"] = 3004181
	-- tFirstPerson_Crystal[1][5]["ItemAttr"] = "0 1 3"
	
	-- 龙珠碎片10合1（赠）    20%							新制作，9属性
	tFirstPerson_Crystal[1][5] = {}
	tFirstPerson_Crystal[1][5]["RandomItemChanceType"] = 2
	tFirstPerson_Crystal[1][5]["ItemChance"] = 2000
	tFirstPerson_Crystal[1][5]["Item_1"] = 3008994
	tFirstPerson_Crystal[1][5]["ItemAttr"] = "0 1"
	
-- 魂珠需求
local tFirstPerson_SoulValue = {}
	tFirstPerson_SoulValue[0] = 2500
	tFirstPerson_SoulValue[1] = 2000
	tFirstPerson_SoulValue[2] = 1500
	tFirstPerson_SoulValue[3] = 1000
	tFirstPerson_SoulValue[4] = 500

-- 任务taskDetail掩码
local tFirstPerson_TaskDetail = {35012,35026,35027,35028,35024,35030,35025,35031,35032,35011,35007,35034}

local tFirstPerson_Monster = {}
	-- 卫兵精英
	tFirstPerson_Monster[7897] = {}
	tFirstPerson_Monster[7897]["Score"] = 20
	tFirstPerson_Monster[7897]["TaskId"] = 35026
	tFirstPerson_Monster[7897]["MaxData"] = 10
	tFirstPerson_Monster[7897]["BeginNum"] = 1000
	tFirstPerson_Monster[7897]["EndNum"] = 10000
	tFirstPerson_Monster[7897]["ItemId"] = 3600030
	tFirstPerson_Monster[7897]["ItemAttr"] = "0 1"
	tFirstPerson_Monster[7897]["Log"] = "0,0,0,0,18000083,2,3600030,1"
	tFirstPerson_Monster[7897]["Brush"] = 4
	tFirstPerson_Monster[7897]["GenId"] = 18336
	tFirstPerson_Monster[7897]["MonsterId"] = 7896
	tFirstPerson_Monster[7897]["AddNum"] = 1

	-- 战车
	tFirstPerson_Monster[7898] = {}
	tFirstPerson_Monster[7898]["Score"] = 50
	tFirstPerson_Monster[7898]["TaskId"] = 35027
	tFirstPerson_Monster[7898]["MaxData"] = 5
	tFirstPerson_Monster[7898]["BeginNum"] = 1000
	tFirstPerson_Monster[7898]["EndNum"] = 10000
	tFirstPerson_Monster[7898]["ItemId"] = 3600030
	tFirstPerson_Monster[7898]["ItemAttr"] = "0 2"
	tFirstPerson_Monster[7898]["Log"] = "0,0,0,0,18000083,2,3600030,2"
	tFirstPerson_Monster[7898]["AddNum"] = 10

-- 旋风状态
local tFirstPerson_NegativeState = {}
	-- 旋风状态，持续5分钟。
	tFirstPerson_NegativeState["Status"] = 18
	tFirstPerson_NegativeState["Power"] = 50
	tFirstPerson_NegativeState["Secs"] = 300
	tFirstPerson_NegativeState["Times"] = 1
	tFirstPerson_NegativeState["RemainTime"] = 300
	tFirstPerson_NegativeState["EndTime"] = 1
	tFirstPerson_NegativeState["Recordable"] = 0
	
--------------------------------------------------------------新增调整0421
--  新的LOGID   12000388

local tFirstPerson_ZHU = {}
	-- 镇魂珠品质最高级
	tFirstPerson_ZHU["PZ"] = 5
	-- 等级上限
	tFirstPerson_ZHU["Level"] = 140
	tFirstPerson_ZHU["Meto"] = 0
	-- 等级上限
	tFirstPerson_ZHU["OpenLevel"] = 100	
	-- 背包空间判断
	tFirstPerson_ZHU["Space"] = 1

	-- 镇魂珠奖励
	tFirstPerson_ZHU["Reward"] = {}
	tFirstPerson_ZHU["Reward"]["EXP"] = 360
	tFirstPerson_ZHU["Reward"]["Bless"] = 48
	tFirstPerson_ZHU["Reward"]["Clu"] = 100
	tFirstPerson_ZHU["Reward"]["Item"] = 729304

	-- 镇魂珠ID
	tFirstPerson_ZHU["ZHU_Id"] = {}
	tFirstPerson_ZHU["ZHU_Id"][1] = 729611
	tFirstPerson_ZHU["ZHU_Id"][2] = 729612
	tFirstPerson_ZHU["ZHU_Id"][3] = 729613
	tFirstPerson_ZHU["ZHU_Id"][4] = 729614
	tFirstPerson_ZHU["ZHU_Id"][5] = 729703
	
	-- log
	tFirstPerson_ZHU["Log"] = {}
	tFirstPerson_ZHU["Log"][1] = "0,0,%d,1,10001131,2,4[5][6][729304],360[48][100][1]"
	tFirstPerson_ZHU["Log"][2] = "0,0,%d,1,10001131,2,5[6][729304],48[100][1]"
	tFirstPerson_ZHU["NewLog"] = "0,0,%d,1,12000388,1[5],0,0"
	
	-- 使用光效
	tFirstPerson_ZHU["Effect"] = {}
	tFirstPerson_ZHU["Effect"]["Self"] = "self"
	tFirstPerson_ZHU["Effect"]["Effect"] = "angelwing"

local tFirstPerson_ActivityStc = {}
--打开国境犒赏【筑防设障】礼包，会获得一张投票劵
tFirstPerson_ActivityStc[1] = {}
tFirstPerson_ActivityStc[1]["EventType"] = 164
tFirstPerson_ActivityStc[1]["DataType"] = 70
--------------------------------------------------逻辑部分-----------------------------------------------
-- 领取杀敌奖励
function FirstPerson_ReceiveAward(nNpcId)
	--判断stc掩码
	if not FirstPerson_JudgeStc() then
		return
	end
	
	local nTaskId = tFirstPerson_Constant["TaskId"]
	-- 获取积分
	local nScore = Get_TaskDetail(nTaskId,"6")
	
	if nScore < tFirstPerson_Constant["Score"] then
		LinkNpcGossipFunc_New(nNpcId,"10003-1")
		return
	end
	
	-- 判断背包空间
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"10001-1")
		return
	end

	FirstPerson_SetComplete()
	LinkNpcGossipFunc_New(nNpcId,"10004-1")
end

-- 直接完成
function FirstPerson_DirectlyComplete(nNpcId)
	--判断stc掩码
	if not FirstPerson_JudgeStc() then
		return
	end
	
	local nTaskId = tFirstPerson_Constant["TaskId"]
	-- 获取积分
	local nScore = Get_TaskDetail(nTaskId,"6")
	
	if nScore >= tFirstPerson_Constant["Score"] then
		User_TalkChannel2005(tFirstPerson_Text["HasComplete"])
		return
	end
	
	-- 判断玩家身上的天石数
	local nUserEmoney = Get_UserEMoney()
	
	if nUserEmoney < tFirstPerson_Constant["Emoney"] then
		User_TalkChannel2005(tFirstPerson_Text["NoEmoney"])
		return
	end
	
	-- 判断背包空间
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"10001-1")
		return
	end
	
	if User_AddEMoney(-tFirstPerson_Constant["Emoney"]) then
		Sys_SaveEmoneyBuy(tFirstPerson_Constant["CostEmoneyFinish"])
		FirstPerson_SetComplete()
		LinkNpcGossipFunc_New(nNpcId,"10004-1")
	end
end

function FirstPerson_SetComplete(nUserId)
	local nNowUserId = nUserId or Get_UserId()
	local nEvent = tFirstPerson_Stc["EventType"] 
	local nType = tFirstPerson_Stc["DataType"]
	local nTaskId = tFirstPerson_Constant["TaskId"]
	
	-- 任务完成设掩码
	if not Task_ChkTaskDetail(nTaskId,nNowUserId) then 
		Task_AddTaskDetail(nTaskId,0,nNowUserId)
	end 
	if not Task_ChkTaskDetail(tFirstPerson_Constant["Succ"],nNowUserId) then 
		Task_AddTaskDetail(tFirstPerson_Constant["Succ"],0,nNowUserId)
	end 
	Task_SetTaskDetailData(nTaskId,0,"6",nNowUserId)
	Task_SetTaskDetailCompleteFlag(nTaskId,1,nNowUserId)
	Task_SetTaskDetailData(tFirstPerson_Constant["Succ"],1,"6",nNowUserId)
	
	Task_SetStatistic(nEvent,nType,1,1,nNowUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nNowUserId)
	
	Item_AddNewItem(3200000,"0 1 0 1440 1",nNowUserId)
	User_EffectAdd("self","angelwing",nNowUserId)
end

-- 国境犒赏【先发制人】
function FirstPerson_Reward(nItemId)
	
	---------------------------------------------------
	--隔天清理掩码
	local nUserId = Get_UserId()
	SeptemberMakerActivity_CleanStc(nUserId)
	
	--9月Vs活动
	local nEventype = tFirstPerson_ActivityStc[1]["EventType"] 
	local nData = tFirstPerson_ActivityStc[1]["DataType"]
	if Task_ChkStcValue(nEventype,nData,"==",0) then
		tFirstPerson_Constant["Space"] = 4
	else
		tFirstPerson_Constant["Space"] = 3
	end
	----------------------------------------------------
	
	-- 判断背包空间
	if not User_CheckLeftSpace(tFirstPerson_Constant["Space"]) then
		User_TalkChannel2005(tFirstPerson_Text[nItemId]["NoSpace"])
		return
	end

	if not (Item_ChkItem(nItemId) and Item_DelItem(nItemId)) then
		return
	end

	local sLog = tFirstPerson_RewardItem["NewLog"]
	
	for i,v in pairs(tFirstPerson_RewardItem[1]) do
		if v["IsTask"] == true then
			National_War_AddIntegral(v["Item_1"])
		elseif v["IsGoldenLeague"] == true then
			GoldenLeaguePoints_Add(v["Item_1"])
		elseif v["NewItem"] ~= nil then
			local nItemId = v["NewItem"]
			local sItemAttr = v["NewItemAttr"]
			
			-- 判断是否自创武功
			if User_IsAlreadyCreateGongFu() then
				local nSkill = Get_UserGongFuSkill()
				
				if nSkill < tFirstPerson_Constant["FullMagic"] then
					nItemId = v["Item_1"]
				    sItemAttr = v["ItemAttr"]
					sLog = tFirstPerson_RewardItem["Log"]
				end
			end

			Item_AddNewItem(nItemId,sItemAttr)	
		elseif v["ItemChanceSum"] ~= nil then
			if Sys_Random(v["ItemChance"],v["ItemChanceSum"]) then
				Item_AddNewItem(v["Item_1"],v["ItemAttr"])
				Sys_SaveActionTaskLog(v["Log"])
			end
		else
			Item_AddNewItem(v["Item_1"],v["ItemAttr"])
		end
	end

	-- 打log
	Sys_SaveActionTaskLog(sLog)
	
	-- 给提示
	User_TalkChannel2005(tFirstPerson_Text[nItemId]["Success"])
	
	--9月VS活动
	SeptemberMakerActivity_CountryAward(nItemId)
	--内嵌世界版图探索活动
	local nUserId = Get_UserId()
	MapExploration_AddStc(24,nUserId)
end

-- 判断STC掩码，是否领取过奖励
function FirstPerson_JudgeStc(nUserId)
	local nNowUserId = nUserId or Get_UserId()
	local nEvent = tFirstPerson_Stc["EventType"] 
	local nType = tFirstPerson_Stc["DataType"]
	
	--判断是否隔天
	if Task_StcInterval(nEvent,nType,1,4,nNowUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nNowUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nNowUserId)

	-- 判断是否领取过
	elseif not Task_ChkStcValue(nEvent,nType,"==",0,nNowUserId) then
		return false
	end
	
	return true
end

-- 领取援军令
function FirstPerson_ReceiveMilitaryAid(nNpcId)
	--判断stc掩码
	if not FirstPerson_JudgeStc() then
		return
	end

	-- 判断身上是否已经有援军令
	local nItemId = tFirstPerson_MilitaryAid["ItemId"]
	
	if Item_ChkItem(nItemId) then
		LinkNpcGossipFunc_New(nNpcId,"10007-1")
		return
	end

	-- 判断战斗力
	local nBattleLevel = Get_UserBattleLevel()
	
	if nBattleLevel > tFirstPerson_Constant["MaxBattleLev"] then
		return
	end

	-- 判断背包空间
	if not User_CheckLeftSpace(tFirstPerson_MilitaryAid["Space"]) then
		LinkNpcGossipFunc_New(nNpcId,"10006-1")
		return
	end

	-- 给物品
	Item_AddNewItem(nItemId,tFirstPerson_MilitaryAid["ItemAttr"])
	
	-- 打log
	Sys_SaveActionTaskLog(tFirstPerson_MilitaryAid["Log"])

	LinkNpcGossipFunc_New(nNpcId,"10008-1")
end

-- 使用援军令
function FirstPerson_UseMilitaryAid(nItemId)
	-- 判断使用地图
	local nMapId = Get_UserMapId()
	if nMapId ~= tFirstPerson_Constant["MapId"] then
		User_TalkChannel2005(tFirstPerson_Text[nItemId]["UseMap"])
		return
	end
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		-- 变身怪物
		User_TransFormByMagic(tFirstPerson_Constant["Magic"],0,tFirstPerson_Constant["MonsterId"],tFirstPerson_Constant["Time"],0,1)
		User_EffectAdd("self","zf2-e128")
		User_TalkChannel2005(tFirstPerson_Text[nItemId]["Success"])
	end
end

-- 使用五雷镇魂印
function FirstPerson_UseFiveLeiZhenSoul(nItemId,nUserId)
	local nNowUserId = nUserId or Get_UserId()
	-- 判断使用地图
	local nMapId = Get_UserMapId(nNowUserId)
	if nMapId == tFirstPerson_Constant["MapId"] then
		return
	end
	
	-- 判断等级是否满足使用条件
	if not User_JudgeLevelAndMetempsychosis(tFirstPerson_ZHU["OpenLevel"],tFirstPerson_ZHU["Meto"],nNowUserId) then
		User_TalkChannel2005(tFirstPerson_Text[3007870]["LessLevel"],nNowUserId)
		return
	end	
	
	local nTaskId = tFirstPerson_Constant["SoulBeadTask"]
	-- 判断是否领取过“替天行道镇妖魂”任务
	if not Task_ChkTaskDetail(nTaskId,nNowUserId) then
		if not Task_AddTaskDetail(nTaskId,0,nNowUserId) then
			return
		end
	end
	
	-- 判断今天是否已完成过该任务
	if Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",1,nNowUserId) then
		
		if not Task_DetailInterval(nTaskId,1,4,nNowUserId) then
			Sys_MsgBox(tostring(tFirstPerson_Text[3007870]["Completed"]),"NULL","NULL",nNowUserId)
			return
		end		
	end
	
	-- 没完成，判断背包空间是否足够
	if not User_CheckLeftSpace(tFirstPerson_ZHU["Space"],nNowUserId) then
		User_TalkChannel2005(tFirstPerson_Text[3007870]["NoSpace"],nNowUserId)
		return
	end

	local nEvent = tFirstPerson_Stc[1]["EventType"]
	local nType = tFirstPerson_Stc[1]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType,nNowUserId)

	--设置完成掩码
	if Item_ChkItem(nItemId,1,0,nNowUserId) or (nItemId == tFirstPerson_Constant["Item"]) then
		if nItemId ~= tFirstPerson_Constant["Item"] then
			Item_DelItem(nItemId,1,0,nNowUserId)
		end
		--直接完成任务，但是不影响玩家第二天领取的镇魂珠类型
		if nData >= tFirstPerson_ZHU["PZ"] then
			Task_SetStatistic(nEvent,nType,0,1,nNowUserId)
		end
		
		-- 删除玩家身上的镇魂珠
		for k,v in pairs(tFirstPerson_ZHU["ZHU_Id"]) do
			if Item_ChkItem(v,1,0,nNowUserId) then
				Item_DelItem(v,1,0,nNowUserId)
			end		
		end
		
		Task_SetTaskDetailCompleteFlag(nTaskId,1,nNowUserId)
		Task_SetTaskDetailData7(nTaskId,os.time(),nNowUserId)
		
		-- 三月幸运树
		LuckyTree_FinishTask(24,nNowUserId)
		
		-- 
		local nFlag = 0
		if Get_UserLevel(nNowUserId) < tFirstPerson_ZHU["Level"] and not User_ChkSurplusExp(nNowUserId) then
			User_AddExpTime(tFirstPerson_ZHU["Reward"]["EXP"],nNowUserId)
			nFlag = 1
		else
			nFlag = 2
		end
		
		User_AddBless(tFirstPerson_ZHU["Reward"]["Bless"],nNowUserId)
		User_AddCultivation(tFirstPerson_ZHU["Reward"]["Clu"],nNowUserId)
		Item_AddNewItem(tFirstPerson_ZHU["Reward"]["Item"],"",nNowUserId)
		
		Sys_SaveActionFestivalLog(string.format(tFirstPerson_ZHU["Log"][nFlag],nItemId),nNowUserId)
		Sys_SaveActionFestivalLog(string.format(tFirstPerson_ZHU["NewLog"],nItemId),nNowUserId)
		User_TalkChannel2005(tFirstPerson_Text[3007870]["Complete"],nNowUserId)
		Task_AddActivityTaskSchedule(4,nNowUserId)
		-- 光效
		User_EffectAdd(tFirstPerson_ZHU["Effect"]["Self"],tFirstPerson_ZHU["Effect"]["Effect"],nNowUserId)
		NewTaskItem_AddProcessTask(nNowUserId)
		return nFlag
	end	
end

-- 获取击杀怪物的数量
function FirstPerson_AddKillMonsterNum(nNowUserId,nAddNum)
	local nUserId = nNowUserId or Get_UserId()
	local nTaskId = tFirstPerson_Constant["Crystal"]
	local nAddMonsterNum = nAddNum or 1

	-- 判断身上是否有掩码
	if not Task_ChkTaskDetail(nTaskId,nUserId) then
		Task_AddTaskDetail(nTaskId,0,nUserId)
		Task_SetTaskDetailData7(nTaskId,os.time(),nUserId)
	end
	
	-- 判断今天是否领取过1次奖励
	if Get_TaskDetailData6(nTaskId,nUserId) >= tFirstPerson_Constant["MaxTime"] then
		return
	end
	
	local nData = Get_TaskDetailData1(nTaskId,nUserId)
	Task_SetTaskDetailData1(nTaskId,nData + nAddMonsterNum,nUserId)
	
	if nData + nAddMonsterNum >= tFirstPerson_Constant["MonsterNum"] then
		User_TalkChannel2005(tFirstPerson_Text["MonsterNum"],nUserId)
	end
end

-- 判断掩码是否存在，不存在则新建个
function FirstPerson_ChkTaskDetail()
	local nFirstPerson_SpecialTaskId = tFirstPerson_Constant["SpecialTaskId"]
	local nUserId = Get_UserId()
	if not Task_ChkTaskDetail(nFirstPerson_SpecialTaskId) then
		Task_AddTaskDetail(nFirstPerson_SpecialTaskId)
		Task_SetTaskDetailData7(nFirstPerson_SpecialTaskId,os.time())
		Task_SetTaskDetailData2(nFirstPerson_SpecialTaskId,nUserId,nUserId)
		
		-- 设置玩家语种的值
		local nData = Get_SysDynaGlobalData0(54020)
		Task_SetTaskDetailData3(nFirstPerson_SpecialTaskId,nData,nUserId)
	else
		-- 设置玩家语种的值
		local nData = Get_SysDynaGlobalData0(54020)
		Task_SetTaskDetailData3(nFirstPerson_SpecialTaskId,nData,nUserId)
	end
		
	-- 判断玩家等级
	if not User_JudgeLevelAndMetempsychosis(110,1) then
		return
	end
	
	for i,v in pairs (tFirstPerson_TaskDetail) do
		if not Task_ChkTaskDetail(v) then
			Task_AddTaskDetail(v)
			Task_SetTaskDetailData7(v,os.time())
			if v == 35034 then
				-- local nUserId = Get_UserId()
				Task_SetTaskDetailData2(v,nUserId,nUserId)
			end
		end
		
		if v == 35034 then
			-- local nUserId = Get_UserId()
			local nGetUserId = Get_TaskDetailData2(v,nUserId)
			if Task_ChkTaskDetail(v) and (nGetUserId ~= nUserId) then
				Task_SetTaskDetailData7(v,os.time())
				Task_SetTaskDetailData2(v,nUserId,nUserId)
			end
		end
	end	
end

-- 击杀怪物
function FirstPerson_KillMonster(nMonsterId)
	FirstPerson_OtherReward(nMonsterId)
	FirstPerson_GenerationSoldier(nMonsterId)

	--组队共享积分
	local nPlayerNumber = Get_UserTeamNumbers()
	if  nPlayerNumber >= 2 then
		--队员分享积分
		User_TeamExeFuncByTeamer(2,"FirstPerson_AddScore</N>"..nMonsterId)
	else
		FirstPerson_AddScore(nMonsterId)
	end
end

function FirstPerson_AddScore(nMonsterId,nTeamId)
	local nUserId = nTeamId or Get_UserId()
	FirstPerson_AddKillMonsterNum(nUserId,tFirstPerson_Monster[nMonsterId]["AddNum"])
	
	local nTaskChk = Get_TaskDetail(tFirstPerson_Constant["Succ"],"6",nUserId)
	if nTaskChk >= 1 then
		return 
	end

	-- 加积分
	local nScoreTaskId = tFirstPerson_Constant["TaskId"]
	local nScore = Get_TaskDetailData6(nScoreTaskId,nUserId)
	
	-- 判断是否可以领奖
	if nScore >= tFirstPerson_Constant["Score"] then
		-- 提示领奖
		User_TalkChannel2005(string.format(tFirstPerson_Text["Reward"],nScore),nUserId)
		return
	end
	
	if nScore == 0 then
		Sys_SaveActionFestivalLog(tFirstPerson_Constant["CrossFirstKLog"],nUserId)
	end
	
	nScore = nScore + tFirstPerson_Monster[nMonsterId]["Score"]
	if nScore >= tFirstPerson_Constant["Score"] then
		nScore = tFirstPerson_Constant["Score"]
	end
	
	Task_SetTaskDetailData6(nScoreTaskId,nScore,nUserId)
	local sStr = string.format(tInterServeTask_Killer_Text["KillMonster"],nScore)  
	User_TalkChannel2005(sStr,nUserId)
	
	-- 判断是否可以领奖
	if nScore >= tFirstPerson_Constant["Score"] then
		Sys_SaveActionFestivalLog(tFirstPerson_Constant["CrossLastKLog"],nUserId)
		-- 提示领奖
		Sys_MsgBox(tFirstPerson_Text["HasReward"],nil,nil,nUserId)
	end
end

function FirstPerson_OtherReward(nMonsterId)
	local nTaskId = tFirstPerson_Monster[nMonsterId]["TaskId"]
	
	if nTaskId == nil then
		return
	end
	
	local nData = Get_TaskDetailData6(nTaskId)
	-- 判断今天是否领取完了
	if nData >= tFirstPerson_Monster[nMonsterId]["MaxData"] then
		return
	end
		
	local nBeginNum = tFirstPerson_Monster[nMonsterId]["BeginNum"]
	local nEndNum = tFirstPerson_Monster[nMonsterId]["EndNum"]
	
	if Sys_Random(nBeginNum,nEndNum) then
		Task_SetTaskDetailData6(nTaskId,nData + 1)
		local nItemId = tFirstPerson_Monster[nMonsterId]["ItemId"]
		local sItemAttr = tFirstPerson_Monster[nMonsterId]["ItemAttr"]
		Item_AddNewItem(nItemId,sItemAttr)
		-- 打log
		Sys_SaveActionTaskLog(tFirstPerson_Monster[nMonsterId]["Log"])
		-- 给提示
		local sItemName = Get_ItemtypeName(nItemId)
		User_TalkChannel2005(string.format(tFirstPerson_Text["KillMonster"],sItemName))
	end
end

-- 生成小兵
function FirstPerson_GenerationSoldier(nMonsterId)
	if tFirstPerson_Monster[nMonsterId]["Brush"] == nil then
		return
	end

	local nMapId = Get_UserMapId()
	local nGenId = tFirstPerson_Monster[nMonsterId]["GenId"]
	local nBrushMonsterId = tFirstPerson_Monster[nMonsterId]["MonsterId"]
	local nUserPosX = Get_UserPositionX()
	local nUserPosY = Get_UserPositionY()
	local j = -2
	local tDisparity = {{0,2},{0,-2},{-4,-2},{-4,2}}

	for i = 1,tFirstPerson_Monster[nMonsterId]["Brush"] do
		local nPosX = nUserPosX + tDisparity[i][1]
		local nPosY = nUserPosY + tDisparity[i][2]

		Monster_AddMonster(nMapId,nPosX,nPosY,nGenId,nBrushMonsterId)
	end
	
	User_TalkChannel2005(tFirstPerson_Text["Brush"])
end

-- 水晶判断
function FirstPerson_Crystal(nUserId)
	local nNowUserId = nUserId or Get_UserId()
	local nTaskId = tFirstPerson_Constant["Crystal"]
	
	-- 判断今天是否已经领取过1次
	local nData = Get_TaskDetailData6(nTaskId,nNowUserId)
	
	if nData >= tFirstPerson_Constant["MaxTime"] then
		Sys_MsgBox(tFirstPerson_Text["HaveReward"],"NULL","NULL",nNowUserId)
		return
	end
	
	-- 判断杀怪数量是否满足
	local nMonsterNum = Get_TaskDetailData1(nTaskId,nNowUserId)
	
	if nMonsterNum < tFirstPerson_Constant["MonsterNum"] then
		Sys_MsgBox(tFirstPerson_Text["NoKill"],"NULL","NULL",nNowUserId)
		return
	end

	-- 判断背包空间
	if not User_CheckLeftSpace(1,nNowUserId) then
		Sys_MsgBox(tFirstPerson_Text["NoSpace"],"NULL","NULL",nNowUserId)
		return
	end
	
	Task_SetTaskDetailData1(nTaskId,0,nNowUserId)
	Task_SetTaskDetailData6(nTaskId,1,nNowUserId)

	-- 给奖励
	Item_AddNewItem(3600029,"0 5",nNowUserId)
	User_EffectAdd("self","angelwing",nNowUserId)
	Sys_MsgBox(tFirstPerson_Text["Crystal"],"NULL","NULL",nNowUserId)
end

-- 龙血精石
function FirstPerson_DragonBloodstone(nItemId)
	if not User_CheckLeftSpace(1) then
		Sys_MsgBox(tFirstPerson_Text[nItemId]["NoSpace"])
		return
	end

	if not Item_ChkMulItem(nItemId,nItemId,10) then
		User_TalkChannel2005(tFirstPerson_Text[nItemId]["NoItem"])
		return
	end
	
	if Item_DelMulItem(nItemId,nItemId,10) then
		Item_AddNewItem(1088000,"0 1 3")
		Sys_SaveActionTaskLog("0,0,3008994,10,18000083,2,1088000,1")
		User_TalkChannel2005(tFirstPerson_Text[nItemId]["Success"])
	end
end

-- 水晶奖励礼包
function FirstPerson_CrystalPackage(nItemId)
	--内嵌世界版图探索活动
	local nUserId = Get_UserId()
	MapExploration_AddStc(24,nUserId)
	-- 判断是否是跨服
	if User_IsCross() then
		User_TalkChannel2005(tFirstPerson_Text[nItemId]["ThisService"])
		return
	end
	local nEvent = tFirstPerson_Stc[nItemId]["EventType"]
	local nType = tFirstPerson_Stc[nItemId]["DataType"]
	-- 判断背包空间
	local nSpace = 1 
	if Task_ChkStcValue(nEvent,nType,"==",4) then
		nSpace = 3
	end 
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(string.format(tFirstPerson_Text[nItemId]["NoSpace"],nSpace))
		return
	end

	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		-- 判断是否隔天
		if Task_StcInterval(nEvent,nType,1,4) then
			Task_SetStatistic(nEvent,nType,0,1)
			Task_SetStcTimestamp(nEvent,nType,0)
		end
		
		Task_AddStatistic(nEvent,nType,1,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		
		-- 给奖励
		local nFlag,tAward = Probabil_RandomAward(tFirstPerson_Crystal,1)
		local tReward = tAward[1]["tAward"][1]
		local sItemName = Get_ItemtypeName(tReward["Item_1"])

		Item_AddNewItem(tReward["Item_1"],tReward["ItemAttr"])
		Sys_SaveActionTaskLog(string.format(tFirstPerson_Crystal[1]["Log"],tReward["Item_1"]))
		User_TalkChannel2005(string.format(tFirstPerson_Text[nItemId]["Success"],sItemName))

		if Task_ChkStcValue(nEvent,nType,"==",5) then
			National_War_AddIntegral(30)
			if Sys_Random(5000,10000) then
				Item_AddNewItem(3007269,"0 1")
				Sys_SaveActionTaskLog("0,0,0,0,18000083,2,3007269,1")
			end
	    	--额外给一个日常减负令
			tNewTaskItem_AwardItem()
		end
		
		local nTaskId = tFirstPerson_Constant["Crystal"]
		
		if Task_ChkTaskDetailValue(nTaskId,"CompleteFlag","==",0) and (Get_TaskDetailData6(nTaskId) >= tFirstPerson_Constant["MaxTime"]) then
			Task_SetTaskDetailCompleteFlag(nTaskId,1)
		end
	end
end

-- 5点战功
function FirstPerson_ServiceValue(nItemId)
	-- 判断是否是跨服
	if User_IsCross() then
		User_TalkChannel2005(tFirstPerson_Text[nItemId]["ThisService"])
		return
	end
	
	local nEvent = tFirstPerson_Stc[nItemId]["EventType"]
	local nType = tFirstPerson_Stc[nItemId]["DataType"]
		
	-- 判断是否隔天
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	
	if Task_ChkStcValue(nEvent,nType,">=",20) then
		User_TalkChannel2005(tFirstPerson_Text[nItemId]["NoTime"])
		return
	end
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		Task_AddStatistic(nEvent,nType,1,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		
		-- 判断是否自创武功并真气值未满
		if User_IsAlreadyCreateGongFu() then
			local nFuQiLev = Get_UserGongFuQiLev()
			
			if nFuQiLev + 1 <= G_User_MaxZhenQi then
				-- 给真气
				User_AddGongFuQiLeve(1)
				Sys_SaveActionTaskLog("0,0,0,0,18000083,2,16,1")
			end
		end
		
		User_AddServiceValue(5)
		Sys_SaveActionTaskLog("0,0,0,0,18000083,2,22,5")
		User_TalkChannel2005(tFirstPerson_Text[nItemId]["Success"])
	end
end

-------------------------NPC 模板配置表部分---------------------------------
tNpcGossip[17400] = tNpcGossip[17400] or DefaultNpc:new{}

tNpcGossip[17400]["Option10013"]= tFirstPerson_Text[17400]["Option10013"]
tNpcGossip[17400]["OptionPoint10013"] = "10000-1"
tNpcGossip[17400]["OptionChkFunc10013"] = function ()
	if not FirstPerson_JudgeStc() then
		tNpcGossip[17400]["Option10013"]= tFirstPerson_Text[17400]["Option10013New"] 
	else
		tNpcGossip[17400]["Option10013"]= tFirstPerson_Text[17400]["Option10013"] 
	end
	
	return true
end
	
tNpcGossip[17400]["Option10016"]= tFirstPerson_Text[17400]["Option10016"]
tNpcGossip[17400]["OptionPoint10016"] = "10009-1"
tNpcGossip[17400]["OptionChkFunc10016"] = function ()
	local nTaskId = tFirstPerson_Constant["Crystal"]
	local nData = 0
	if Task_ChkTaskDetail(nTaskId) then
		nData = Get_TaskDetailData6(nTaskId)
	end
	
	if nData >= tFirstPerson_Constant["MaxTime"] then
		tNpcGossip[17400]["Option10016"]= tFirstPerson_Text[17400]["Option10016New"]
	else
		tNpcGossip[17400]["Option10016"]= tFirstPerson_Text[17400]["Option10016"]
	end
	
	return true
end

tNpcGossip[17400]["Text10000-1"] = {1000011,1000012,1000013}
tNpcGossip[17400]["Text1000011"] = tFirstPerson_Text[17400]["Text1000011"]
tNpcGossip[17400]["Text1000012"] = tFirstPerson_Text[17400]["Text1000012"]
tNpcGossip[17400]["Text1000013"] = tFirstPerson_Text[17400]["Text1000013"]
tNpcGossip[17400]["tOption10000-1"] = {10000,10014,10001,10002,10003}

tNpcGossip[17400]["Option10000"]=tFirstPerson_Text[17400]["Option10000"]
tNpcGossip[17400]["OptionFunc10000"]="FirstPerson_ReceiveAward</N>17400"
tNpcGossip[17400]["OptionChkFunc10000"] = function ()
	return FirstPerson_JudgeStc()
end
tNpcGossip[17400]["Option10014"]=tFirstPerson_Text[17400]["Option10014"]
tNpcGossip[17400]["OptionFunc10014"]="FirstPerson_DirectlyComplete</N>17400"
tNpcGossip[17400]["OptionChkFunc10014"] = function ()
	return FirstPerson_JudgeStc()
end
tNpcGossip[17400]["Option10001"]=tFirstPerson_Text[17400]["Option10001"]
tNpcGossip[17400]["OptionPoint10001"]="10005-1"
tNpcGossip[17400]["OptionChkFunc10001"] = function ()
	local nBattleLevel = Get_UserBattleLevel()
	
	if nBattleLevel > tFirstPerson_Constant["MaxBattleLev"] then
		return false
	end
	
	return FirstPerson_JudgeStc()
end

tNpcGossip[17400]["Option10002"]=tFirstPerson_Text[17400]["Option10002"]
tNpcGossip[17400]["OptionPoint10002"] = "1-1"
tNpcGossip[17400]["Option10003"]=tFirstPerson_Text[17400]["Option10003"]

-- 接a，失败，背包空间不足
tNpcGossip[17400]["Text10001-1"] = {1000111}
tNpcGossip[17400]["Text1000111"] = tFirstPerson_Text[17400]["Text1000111"]
tNpcGossip[17400]["tOption10001-1"] = {10004}
tNpcGossip[17400]["Option10004"]  = tFirstPerson_Text[17400]["Option10004"]

-- 接a，失败，天石已达上限
tNpcGossip[17400]["Text10002-1"] = {1000211}
tNpcGossip[17400]["Text1000211"] = tFirstPerson_Text[17400]["Text1000211"]
tNpcGossip[17400]["tOption10002-1"] = {10005}
tNpcGossip[17400]["Option10005"]  = tFirstPerson_Text[17400]["Option10005"]

-- 接a，失败，御敌积分不足300
tNpcGossip[17400]["Text10003-1"] = {1000311}
tNpcGossip[17400]["Text1000311"] = tFirstPerson_Text[17400]["Text1000311"]
tNpcGossip[17400]["tOption10003-1"] = {10006}
tNpcGossip[17400]["Option10006"]  = tFirstPerson_Text[17400]["Option10006"]

-- 接a，成功
tNpcGossip[17400]["Text10004-1"] = {1000411}
tNpcGossip[17400]["Text1000411"] = tFirstPerson_Text[17400]["Text1000411"]
tNpcGossip[17400]["tOption10004-1"] = {10007}
tNpcGossip[17400]["Option10007"]  = tFirstPerson_Text[17400]["Option10007"]

-- 接b，呈请援军令
tNpcGossip[17400]["Text10005-1"] = {1000511,1000512}
tNpcGossip[17400]["Text1000511"] = tFirstPerson_Text[17400]["Text1000511"]
tNpcGossip[17400]["Text1000512"] = tFirstPerson_Text[17400]["Text1000512"]
tNpcGossip[17400]["tOption10005-1"] = {10008,10009}

tNpcGossip[17400]["Option10008"]  = tFirstPerson_Text[17400]["Option10008"]
tNpcGossip[17400]["OptionFunc10008"] = "FirstPerson_ReceiveMilitaryAid</N>17400"
tNpcGossip[17400]["Option10009"]  = tFirstPerson_Text[17400]["Option10009"]

-- 接1，失败，背包空间不足
tNpcGossip[17400]["Text10006-1"] = {1000611}
tNpcGossip[17400]["Text1000611"] = tFirstPerson_Text[17400]["Text1000611"]
tNpcGossip[17400]["tOption10006-1"] = {10010}
tNpcGossip[17400]["Option10010"]  = tFirstPerson_Text[17400]["Option10010"]

-- 接1，失败，身上已有
tNpcGossip[17400]["Text10007-1"] = {1000711}
tNpcGossip[17400]["Text1000711"] = tFirstPerson_Text[17400]["Text1000711"]
tNpcGossip[17400]["tOption10007-1"] = {10011}
tNpcGossip[17400]["Option10011"]  = tFirstPerson_Text[17400]["Option10011"]

-- 接1，成功
tNpcGossip[17400]["Text10008-1"] = {1000811}
tNpcGossip[17400]["Text1000811"] = tFirstPerson_Text[17400]["Text1000811"]
tNpcGossip[17400]["tOption10008-1"] = {10012}
tNpcGossip[17400]["Option10012"]  = tFirstPerson_Text[17400]["Option10012"]

tNpcGossip[17400]["Text10009-1"] = {1000911,1000912,1000913}
tNpcGossip[17400]["Text1000911"] = tFirstPerson_Text[17400]["Text1000911"]
tNpcGossip[17400]["Text1000912"] = tFirstPerson_Text[17400]["Text1000912"]
tNpcGossip[17400]["Text1000913"] = tFirstPerson_Text[17400]["Text1000913"]
tNpcGossip[17400]["tOption10009-1"] = {10015}
tNpcGossip[17400]["Option10015"]  = tFirstPerson_Text[17400]["Option10015"]

-------------------------物品使用-----------------------------------------------
-- 援军令
tItem[3600020] = tItem[3600020] or {}
tItem[3600020]["Function"] = function (nItemId)
	FirstPerson_UseMilitaryAid(nItemId)
end

-- 五雷镇魂印
tItem[3007870] = tItem[3007870] or {}
tItem[3007870]["Function"] = function (nItemId)
	FirstPerson_UseFiveLeiZhenSoul(nItemId)
end

-- 龙血精石
tItem[3008994] = tItem[3008994] or {}
tItem[3008994]["Function"] = function (nItemId)
	FirstPerson_DragonBloodstone(nItemId)
end

-- 水晶奖励
tItem[3600029] = tItem[3600029] or {}
tItem[3600029]["Function"] = function (nItemId)
	FirstPerson_CrystalPackage(nItemId)
end
-- 5点战功
tItem[3600030] = tItem[3600030] or {}
tItem[3600030]["Function"] = function (nItemId)
	FirstPerson_ServiceValue(nItemId)
end

-- 国境犒赏【先发制人】
tItem[3200000] = tItem[3200000] or {}
tItem[3200000]["Function"] = function (nItemId)
	FirstPerson_Reward(nItemId)
end
-------------------------怪物掉落-----------------------------------------------
tMonster[7896] = tMonster[7896] or {}
tMonster[7896]["tFunction"] = tMonster[7896]["tFunction"] or {}
table.insert(tMonster[7896]["tFunction"],InterServeTask_Killer_TeamEnjoy)

tMonster[7897] = tMonster[7897] or {}
tMonster[7897]["tFunction"] = tMonster[7897]["tFunction"] or {}
table.insert(tMonster[7897]["tFunction"],FirstPerson_KillMonster)

tMonster[7898] = tMonster[7898] or {}
tMonster[7898]["tFunction"] = tMonster[7898]["tFunction"] or {}
table.insert(tMonster[7898]["tFunction"],FirstPerson_KillMonster)

tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,FirstPerson_ChkTaskDetail)