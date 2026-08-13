-----------------------------------------------------------------------------------------------------
--Name:			150609[阿语征服][活动脚本]伊历新年活动制作之宝箱有约(10.14-10.21)
--Purpose:		伊历新年活动制作之宝箱有约
--Creator: 		许乐
--Created:		2015/06/09
------------------------------------------------------------------------------------------------------
-- 命名前缀
--ArabicNewYear2015Box_

-- mapid:				3866
-- npcId:				18653-18654
-- npctype:			3721
-- monstertype:	7589

-- 掩码说明          
--stc(135,25)
-- stc(135,25) = 1	表示当天完成任务

-- logID:12000118
--FestivalId: 3319
--FestivalGeneralPackage stc：13429

-----------------------------------------常量表配置-----------------------------------------------
local nGiftNum = 0
local tArabicNewYear2015Box_Cont = {}
	--活动时间
	tArabicNewYear2015Box_Cont["ActivityTime"] = tActivityTime["ArabicNewYear"]["AcitveTime"]
	tArabicNewYear2015Box_Cont["BeforeActivityTime"] = tActivityTime["ArabicNewYear"]["BeforeActiveTime"]
	tArabicNewYear2015Box_Cont["AfterActivityTime"] = "2018-09-13 00:00 2020-10-01 23:59"
	
	--玩家等级要求
	tArabicNewYear2015Box_Cont["Metempsychosis"] = 0
	tArabicNewYear2015Box_Cont["Level"] = 80

--NPC坐标
local tArabicNewYear2015Box_Npc = {}
	-- 18653 神秘商人
	tArabicNewYear2015Box_Npc[18653] = {}
	tArabicNewYear2015Box_Npc[18653]["CellX"] = 328
	tArabicNewYear2015Box_Npc[18653]["CellY"] = 491
	tArabicNewYear2015Box_Npc[18653]["Mapid"] = 1002

	-- 18654 神秘商人
	tArabicNewYear2015Box_Npc[18654] = {}
	tArabicNewYear2015Box_Npc[18654]["CellX"] = 60
	tArabicNewYear2015Box_Npc[18654]["CellY"] = 56
	tArabicNewYear2015Box_Npc[18654]["Mapid"] = 3866
	
	tArabicNewYear2015Box_Npc["BoundCX"] = 5
	tArabicNewYear2015Box_Npc["BoundCY"] = 5

--掩码
local tArabicNewYear2015Box_Stc = {}
	tArabicNewYear2015Box_Stc["EventType"] = 135
	tArabicNewYear2015Box_Stc["DataType"] = 25
	tArabicNewYear2015Box_Stc["GetPackage"] = 3
	tArabicNewYear2015Box_Stc["Complete"] = 10
	
--怪物数据
local tArabicNewYear2015Box_Data = {}	
	tArabicNewYear2015Box_Data["GenId"] = 17141     --刷怪generatorId 
	tArabicNewYear2015Box_Data["RewardSpace"] = 1 	--判断背包空间
	--怪物掉落配置
	tArabicNewYear2015Box_Data[7589] = {}
	tArabicNewYear2015Box_Data[7589][1] = {}
	tArabicNewYear2015Box_Data[7589][1]["ItemChanceSum"] = 10000
	-- money += 1000  4500
	tArabicNewYear2015Box_Data[7589][1][1] = {}
	tArabicNewYear2015Box_Data[7589][1][1]["RandomItemChanceType"] = 2
	tArabicNewYear2015Box_Data[7589][1][1]["ItemChance"] = 4500
	tArabicNewYear2015Box_Data[7589][1][1]["Item_1"] = 1000
	tArabicNewYear2015Box_Data[7589][1][1]["IsMoney"] = true
	tArabicNewYear2015Box_Data[7589][1][1]["Index"] = 1
	tArabicNewYear2015Box_Data[7589][1][1]["Num"] = 1         					--------掉落的金币堆数
	--money += 10000 (2堆)   5000*2   1500
	tArabicNewYear2015Box_Data[7589][1][2] = {}
	tArabicNewYear2015Box_Data[7589][1][2]["RandomItemChanceType"] = 2
	tArabicNewYear2015Box_Data[7589][1][2]["ItemChance"] = 1500
	tArabicNewYear2015Box_Data[7589][1][2]["Item_1"] = 5000
	tArabicNewYear2015Box_Data[7589][1][2]["IsMoney"] = true
	tArabicNewYear2015Box_Data[7589][1][2]["Index"] = 2
	tArabicNewYear2015Box_Data[7589][1][2]["Num"] = 2							--------掉落的金币堆数
	--money += 100000 (5堆)   20000*5   500
	tArabicNewYear2015Box_Data[7589][1][3] = {}
	tArabicNewYear2015Box_Data[7589][1][3]["RandomItemChanceType"] = 2
	tArabicNewYear2015Box_Data[7589][1][3]["ItemChance"] = 500
	tArabicNewYear2015Box_Data[7589][1][3]["Item_1"] = 20000
	tArabicNewYear2015Box_Data[7589][1][3]["IsMoney"] = true
	tArabicNewYear2015Box_Data[7589][1][3]["Index"] = 3	
	tArabicNewYear2015Box_Data[7589][1][3]["Num"] = 5							--------掉落的金币堆数
	--出现1只土墓蝠   1000
	tArabicNewYear2015Box_Data[7589][1][4] = {}
	tArabicNewYear2015Box_Data[7589][1][4]["RandomItemChanceType"] = 2
	tArabicNewYear2015Box_Data[7589][1][4]["ItemChance"] = 1000
	tArabicNewYear2015Box_Data[7589][1][4]["Item_1"] = 7873					--------怪物ID  7873  原20
	tArabicNewYear2015Box_Data[7589][1][4]["IsMonster"] = true
	tArabicNewYear2015Box_Data[7589][1][4]["Index"] = 4
	--出现1只牛怪   1000
	tArabicNewYear2015Box_Data[7589][1][5] = {}
	tArabicNewYear2015Box_Data[7589][1][5]["RandomItemChanceType"] = 2
	tArabicNewYear2015Box_Data[7589][1][5]["ItemChance"] = 1000
	tArabicNewYear2015Box_Data[7589][1][5]["Item_1"] = 7874					--------怪物ID  7874  原57
	tArabicNewYear2015Box_Data[7589][1][5]["IsMonster"] = true
	tArabicNewYear2015Box_Data[7589][1][5]["Index"] = 5
	--获得礼包（掉背包）当天击杀3只后才会触发，获得后打完成活动的log   1500
	tArabicNewYear2015Box_Data[7589][1][6] = {}
	tArabicNewYear2015Box_Data[7589][1][6]["RandomItemChanceType"] = 2
	tArabicNewYear2015Box_Data[7589][1][6]["ItemChance"] = 1500
	tArabicNewYear2015Box_Data[7589][1][6]["Item_1"] = 1
	tArabicNewYear2015Box_Data[7589][1][6]["Index"] = 6

--特效
local tArabicNewYear2015Box_Effect = {}
	tArabicNewYear2015Box_Effect[1] = "self"
	tArabicNewYear2015Box_Effect[2] = "angelwing"

--logid: 12000118
local tArabicNewYear2015Box_Log = {}
	tArabicNewYear2015Box_Log["SendInMap"] = "0,0,0,0,12000118,1,0,0"
	tArabicNewYear2015Box_Log["FestivalId"] = 3319
	tArabicNewYear2015Box_Log["LogId"] = 12000118


------------------------------------------------逻辑部分-------------------------------------------------
-- 判断活动时间
function ArabicNewYear2015Box_TimeJudgement()
	if not Sys_ChkFullTime(tArabicNewYear2015Box_Cont["ActivityTime"]) then
		return false
	else
		return true
	end
end

--判断掩码 stc(135,25)
function ArabicNewYear2015Box_ChkStcComplete()
	local nEvent = tArabicNewYear2015Box_Stc["EventType"]
	local nType = tArabicNewYear2015Box_Stc["DataType"]
	local nComplete = tArabicNewYear2015Box_Stc["Complete"]

	if Task_ChkStcValue(nEvent,nType,">=",nComplete) then
		-- 判断是否隔天
		if Task_StcInterval(nEvent,nType,1,4) then
			Task_SetStatistic(nEvent,nType,0,1,0)
			Task_SetStcTimestamp(nEvent,nType,0,0)
			nGiftNum = 0
			return false
		else
			return true
		end
	else
		return false
	end
end

-- --传送地图逻辑
function ArabicNewYear2015Box_ChgMap(nNpcId)
	local nMapId = tArabicNewYear2015Box_Npc[nNpcId]["Mapid"]
	local nBoundX = tArabicNewYear2015Box_Npc[nNpcId]["CellX"]
	local nBoundY = tArabicNewYear2015Box_Npc[nNpcId]["CellY"]
	local nBoundCX = tArabicNewYear2015Box_Npc["BoundCX"]
	local nBoundCY = tArabicNewYear2015Box_Npc["BoundCY"]
	User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,nBoundCX,nBoundCY,1,0)
end

--求宝箱财富
function ArabicNewYear2015Box_Judgement(nNpcId)
	-- 判断活动时间
	if not ArabicNewYear2015Box_TimeJudgement() then
		--不在活动时间，活动后
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end

	-- 判断玩家等级
	local nLevel = tArabicNewYear2015Box_Cont["Level"]
	local nMete = tArabicNewYear2015Box_Cont["Metempsychosis"]
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	-- 判断当前是否完成过此任务 ==10
	if ArabicNewYear2015Box_ChkStcComplete() then
		LinkNpcGossipFunc_New(nNpcId,"3-3")
		return 
	end
	nGiftNum = 0
	LinkNpcGossipFunc_New(nNpcId,"3-1")
end

--没问题！ 进入地图
function ArabicNewYear2015Box_SendInMap(nNpcId)
	-- 判断活动时间
	if not ArabicNewYear2015Box_TimeJudgement() then
		--不在活动时间，活动后
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	--进入地图，清除地图中的多余怪物
	local nMapId = tArabicNewYear2015Box_Npc[18654]["Mapid"]
	local nMonsterId_1 = tArabicNewYear2015Box_Data[7589][1][4]["Item_1"]
	local nMonsterId_2 = tArabicNewYear2015Box_Data[7589][1][5]["Item_1"]
	Monster_DelMonster(nMapId,nMonsterId_1)
	Monster_DelMonster(nMapId,nMonsterId_2)
	
	--进入
	ArabicNewYear2015Box_ChgMap(18654)
	User_TalkChannel2005(tArabicNewYear2015Box_Text["SendMap"][nNpcId])
	Sys_SaveActionFestivalLog(tArabicNewYear2015Box_Log["SendInMap"])
end


--怎么瓜分来着,详细信息
function ArabicNewYear2015Box_KnowDetails(nNpcId)
	-- 判断活动时间
	if not ArabicNewYear2015Box_TimeJudgement() then
		--不在活动时间，活动后
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	LinkNpcGossipFunc_New(nNpcId,"4-1")
end

--离开仓库
function ArabicNewYear2015Box_LeaveMap(nNpcId)
	--切换地图,传送回去
	ArabicNewYear2015Box_ChgMap(18653)
	User_TalkChannel2005(tArabicNewYear2015Box_Text["SendMap"][nNpcId])
end

--杀掉 神秘金宝箱 掉落内容
function ArabicNewYear2015Box_KillMonster_7589(nMonsterId)
	-- 判断活动时间
	if not ArabicNewYear2015Box_TimeJudgement() then
		return
	end
	
	local nEvent = tArabicNewYear2015Box_Stc["EventType"]
	local nType = tArabicNewYear2015Box_Stc["DataType"]
	local nData = tArabicNewYear2015Box_Stc["GetPackage"]
	local nComplete = tArabicNewYear2015Box_Stc["Complete"]
	Task_AddStatistic(nEvent,nType,1,1,0)
	
	local nFlat,tAward = Probabil_RandomAward(tArabicNewYear2015Box_Data[nMonsterId],1)
	local nItem = tAward[1]["tAward"][1]["Item_1"]
	local nIndex = tAward[1]["tAward"][1]["Index"]

	if tAward[1]["tAward"][1]["IsMoney"] == true then    --掉落金币
		local nNum = tAward[1]["tAward"][1]["Num"]
		for i = 1,nNum do
			Monster_SysDropMoney(nItem)
		end
	elseif tAward[1]["tAward"][1]["IsMonster"] == true then   --出现怪物
		local nMapId = tArabicNewYear2015Box_Npc[18654]["Mapid"]
		local nPosX = Get_UserPositionX()
		local nPosY = Get_UserPositionY()
		local nGenId = tArabicNewYear2015Box_Data["GenId"]
		Monster_AddMonster(nMapId,nPosX,nPosY,nGenId,nItem)
	else		--获得礼包
		if Task_ChkStcValue(nEvent,nType,">=",nData) then
			-- 判断背包空间
			if not User_CheckLeftSpace(tArabicNewYear2015Box_Data["RewardSpace"]) then
				User_TalkChannel2005(tArabicNewYear2015Box_Text["FullBag"])
				return
			end
			-- 获得礼包掩码设值
			Task_SetStatistic(nEvent,nType,nComplete,1,0)
			Task_SetStcTimestamp(nEvent,nType,0,0)
			if nGiftNum == 0 then
				nGiftNum = 1
				--领取奖励
				FestivalGeneralPackage_GetGift(tArabicNewYear2015Box_Log["FestivalId"],tArabicNewYear2015Box_Log["LogId"])
				User_EffectAdd(tArabicNewYear2015Box_Effect[1],tArabicNewYear2015Box_Effect[2])
			end
			--离开地图
			ArabicNewYear2015Box_ChgMap(18653)
			User_TalkChannel2005(tArabicNewYear2015Box_Text["SendMap"][18654])
		end
	end
	User_TalkChannel2005(tArabicNewYear2015Box_Text["Drop"][nIndex])
end

------------------------------------------------NPC模块--------------------------------------------------
-- 17095 神秘商人
tNpcFace[3721] = 18 
tNpcGossip[18653] = tNpcGossip[18653] or DefaultNpc:new{}
tNpcGossip[18653]["OptionHidden"] = 1

--活动前对白
tNpcGossip[18653]["Text1-1"] = {111,112,113}
tNpcGossip[18653]["Text111"] = tArabicNewYear2015Box_Text[18653]["Text111"]
tNpcGossip[18653]["Text112"] = tArabicNewYear2015Box_Text[18653]["Text112"]
tNpcGossip[18653]["Text113"] = tArabicNewYear2015Box_Text[18653]["Text113"]
tNpcGossip[18653]["tOption1-1"] = {1}
tNpcGossip[18653]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tArabicNewYear2015Box_Cont["BeforeActivityTime"])
end

--活动后对白
tNpcGossip[18653]["Text1-2"] = {121}
tNpcGossip[18653]["Text121"] = tArabicNewYear2015Box_Text[18653]["Text121"]
tNpcGossip[18653]["tOption1-2"] = {2}
tNpcGossip[18653]["ChkFunc1-2"] = function ()
	return Sys_ChkFullTime(tArabicNewYear2015Box_Cont["AfterActivityTime"])
end

--活动中对白
tNpcGossip[18653]["Text1-3"] = {131,132,133,134}
tNpcGossip[18653]["Text131"] = tArabicNewYear2015Box_Text[18653]["Text131"]
tNpcGossip[18653]["Text132"] = tArabicNewYear2015Box_Text[18653]["Text132"]
tNpcGossip[18653]["Text133"] = tArabicNewYear2015Box_Text[18653]["Text133"]
tNpcGossip[18653]["Text134"] = tArabicNewYear2015Box_Text[18653]["Text134"]
tNpcGossip[18653]["tOption1-3"] = {3,4,5}
tNpcGossip[18653]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tArabicNewYear2015Box_Cont["ActivityTime"])
end

--接Option3：求宝箱财富！
--成功、玩家对话后进入地图
tNpcGossip[18653]["Text3-1"] = {311,312,313}
tNpcGossip[18653]["Text311"] = tArabicNewYear2015Box_Text[18653]["Text311"]
tNpcGossip[18653]["Text312"] = tArabicNewYear2015Box_Text[18653]["Text312"]
tNpcGossip[18653]["Text313"] = tArabicNewYear2015Box_Text[18653]["Text313"]
tNpcGossip[18653]["tOption3-1"] = {9}

--失败、判断等级不足
tNpcGossip[18653]["Text3-2"] = {321,322}
tNpcGossip[18653]["Text321"] = tArabicNewYear2015Box_Text[18653]["Text321"]
tNpcGossip[18653]["Text322"] = tArabicNewYear2015Box_Text[18653]["Text322"]
tNpcGossip[18653]["tOption3-2"] = {7}

--失败、已领取当天奖励
tNpcGossip[18653]["Text3-3"] = {331,332}
tNpcGossip[18653]["Text331"] = tArabicNewYear2015Box_Text[18653]["Text331"]
tNpcGossip[18653]["Text332"] = tArabicNewYear2015Box_Text[18653]["Text332"]
tNpcGossip[18653]["tOption3-3"] = {8}

--接Option4：怎么瓜分来着？
tNpcGossip[18653]["Text4-1"] = {411,412,413}
tNpcGossip[18653]["Text411"] = tArabicNewYear2015Box_Text[18653]["Text411"]
tNpcGossip[18653]["Text412"] = tArabicNewYear2015Box_Text[18653]["Text412"]
tNpcGossip[18653]["Text413"] = tArabicNewYear2015Box_Text[18653]["Text413"]
tNpcGossip[18653]["tOption4-1"] = {6}

--选项
tNpcGossip[18653]["Option1"] = tArabicNewYear2015Box_Text[18653]["Option1"]
tNpcGossip[18653]["Option2"] = tArabicNewYear2015Box_Text[18653]["Option2"]
--求宝箱财富！
tNpcGossip[18653]["Option3"] = tArabicNewYear2015Box_Text[18653]["Option3"]
tNpcGossip[18653]["OptionFunc3"]="ArabicNewYear2015Box_Judgement</N>18653"

--怎么瓜分来着？
tNpcGossip[18653]["Option4"] = tArabicNewYear2015Box_Text[18653]["Option4"]
tNpcGossip[18653]["OptionFunc4"]="ArabicNewYear2015Box_KnowDetails</N>18653"

tNpcGossip[18653]["Option5"] = tArabicNewYear2015Box_Text[18653]["Option5"]
tNpcGossip[18653]["Option6"] = tArabicNewYear2015Box_Text[18653]["Option6"]
tNpcGossip[18653]["Option7"] = tArabicNewYear2015Box_Text[18653]["Option7"]
tNpcGossip[18653]["Option8"] = tArabicNewYear2015Box_Text[18653]["Option8"]
tNpcGossip[18653]["Option9"] = tArabicNewYear2015Box_Text[18653]["Option9"]
tNpcGossip[18653]["OptionFunc9"]="ArabicNewYear2015Box_SendInMap</N>18653"

-- 18654 神秘商人
tNpcFace[3721] = 18 
tNpcGossip[18654] = tNpcGossip[18654] or DefaultNpc:new{}
tNpcGossip[18654]["OptionHidden"] = 1

--活动中对白
tNpcGossip[18654]["Text1-1"] = {111,112,113}
tNpcGossip[18654]["Text111"] = tArabicNewYear2015Box_Text[18654]["Text111"]
tNpcGossip[18654]["Text112"] = tArabicNewYear2015Box_Text[18654]["Text112"]
tNpcGossip[18654]["Text113"] = tArabicNewYear2015Box_Text[18654]["Text113"]
tNpcGossip[18654]["tOption1-1"] = {1,2}
tNpcGossip[18654]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tArabicNewYear2015Box_Cont["ActivityTime"])
end

--选项
tNpcGossip[18654]["Option1"] = tArabicNewYear2015Box_Text[18654]["Option1"]
tNpcGossip[18654]["OptionFunc1"]="ArabicNewYear2015Box_LeaveMap</N>18654"
tNpcGossip[18654]["Option2"] = tArabicNewYear2015Box_Text[18654]["Option2"]

------------------------------------------------Monster模块--------------------------------------------------
-- 7589   神秘金宝箱
-- tMonster[7589] = tMonster[7589] or {}
-- tMonster[7589]["tFunction"] = tMonster[7589]["tFunction"] or {}
-- table.insert(tMonster[7589]["tFunction"],ArabicNewYear2015Box_KillMonster_7589)
