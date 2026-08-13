------------------------------------------------------------------------------------
--Name:		[征服][活动脚本]元宵节之横扫八方战元宵
--Purpose:	元宵节之横扫八方战元宵
--Creator: 	严振飞
--Created:	2014/12/09
------------------------------------------------------------------------------------
--[[
任务需求：


]]--
------------------------------------------------------------------------------------
--掩码说明
---stc(132,09) --通用礼包使用
---stc(132,10) --记录是否完成任务
---stc(132,11) --记录杀怪情况
---stc(132,18) --记录下一怪编号
---stc(132,83) --记录上一怪编号
---stc(132,88) --记录杀错怪顺序重置与否
--LOGid 10002408
------------------------------------------------------------------------------------
--命名规范
--FestivalSpring2015_FestivalWar_
------------------------------------------------------------------------------------
--STC掩码表
local tFestivalSpring2015_FestivalWar_Stc = {}
----------------------------------------
--stc(132,10)--记录是否完成任务
	tFestivalSpring2015_FestivalWar_Stc[1] = {}
	tFestivalSpring2015_FestivalWar_Stc[1]["Event"] = 132
	tFestivalSpring2015_FestivalWar_Stc[1]["Type"] = 10
	
--stc(132,11)--记录杀怪情况
	tFestivalSpring2015_FestivalWar_Stc[2] = {}
	tFestivalSpring2015_FestivalWar_Stc[2]["Event"] = 132
	tFestivalSpring2015_FestivalWar_Stc[2]["Type"] = 11
	tFestivalSpring2015_FestivalWar_Stc[2]["Finish"] = 11111
		--掩码存储位置
	tFestivalSpring2015_FestivalWar_Stc[2]["Place"] = {}
	tFestivalSpring2015_FestivalWar_Stc[2]["Place"][1] = 1 --已击杀--烈焰豹
	tFestivalSpring2015_FestivalWar_Stc[2]["Place"][2] = 10 --已击杀--碧风蛇
	tFestivalSpring2015_FestivalWar_Stc[2]["Place"][3] = 100 --已击杀--熔金魔
	tFestivalSpring2015_FestivalWar_Stc[2]["Place"][4] = 1000 --已击杀--水幽姬
	tFestivalSpring2015_FestivalWar_Stc[2]["Place"][5] = 10000 --已击杀--地阴君
--stc(132,18) --记录下一只怪编号
	tFestivalSpring2015_FestivalWar_Stc[3] = {}
	tFestivalSpring2015_FestivalWar_Stc[3]["Event"] = 132
	tFestivalSpring2015_FestivalWar_Stc[3]["Type"] = 18
---stc(132,83) --记录上一怪编号
	tFestivalSpring2015_FestivalWar_Stc[4] = {}
	tFestivalSpring2015_FestivalWar_Stc[4]["Event"] = 132
	tFestivalSpring2015_FestivalWar_Stc[4]["Type"] = 83
---stc(132,88) --记录杀错怪顺序重置与否
	tFestivalSpring2015_FestivalWar_Stc[5] = {}
	tFestivalSpring2015_FestivalWar_Stc[5]["Event"] = 132
	tFestivalSpring2015_FestivalWar_Stc[5]["Type"] = 88
	tFestivalSpring2015_FestivalWar_Stc[5]["Finish"] = 1
------------------------------------------------------------------------------------
--活动数据
local tFestivalSpring2015_FestivalWar_Data = {}
	--活动时间
	tFestivalSpring2015_FestivalWar_Data["Festival_BefTime"] = "2016-01-01 00:00 2017-02-06 23:59"
	tFestivalSpring2015_FestivalWar_Data["Festival_NowTime"] = "2017-02-07 00:00 2017-02-11 23:59"
	
	--等级，转世设置
	-- tFestivalSpring2015_FestivalWar_Data["LevTop"] = G_User_MaxLev
	tFestivalSpring2015_FestivalWar_Data["MinLevel"] = 80
	tFestivalSpring2015_FestivalWar_Data["MinMeto"] = 0

	--背包空间
	tFestivalSpring2015_FestivalWar_Data["ChkSpace"] = 1
	
	--妖魔战场传送数据
	tFestivalSpring2015_FestivalWar_Data["Join"] = {}
	tFestivalSpring2015_FestivalWar_Data["Join"]["MapId"] = 3907
	tFestivalSpring2015_FestivalWar_Data["Join"]["PosX"] = 40
	tFestivalSpring2015_FestivalWar_Data["Join"]["PosY"] = 40
	tFestivalSpring2015_FestivalWar_Data["Join"]["BoundX"] = 5
	tFestivalSpring2015_FestivalWar_Data["Join"]["BoundY"] = 5
	--双龙城回城数据
	tFestivalSpring2015_FestivalWar_Data["Leave"] = {}
	tFestivalSpring2015_FestivalWar_Data["Leave"]["MapId"] = 1002
	tFestivalSpring2015_FestivalWar_Data["Leave"]["PosX"] = 297
	tFestivalSpring2015_FestivalWar_Data["Leave"]["PosY"] = 370
	tFestivalSpring2015_FestivalWar_Data["Leave"]["BoundX"] = 5
	tFestivalSpring2015_FestivalWar_Data["Leave"]["BoundY"] = 5

	--自动寻路坐标（主NPC）
	tFestivalSpring2015_FestivalWar_Data["Npc"] = {}
	tFestivalSpring2015_FestivalWar_Data["Npc"]["NpcId"] = 17432
	tFestivalSpring2015_FestivalWar_Data["Npc"]["MapId"] = 1002
	tFestivalSpring2015_FestivalWar_Data["Npc"]["PosX"] = 289
	tFestivalSpring2015_FestivalWar_Data["Npc"]["PosY"] = 362
	
	--怪物的顺序
	tFestivalSpring2015_FestivalWar_Data["OrderPlace"] = {}
	tFestivalSpring2015_FestivalWar_Data["OrderPlace"]["Max"] = 5
	tFestivalSpring2015_FestivalWar_Data["OrderPlace"][7654] = 1
	tFestivalSpring2015_FestivalWar_Data["OrderPlace"][7655] = 2
	tFestivalSpring2015_FestivalWar_Data["OrderPlace"][7656] = 3
	tFestivalSpring2015_FestivalWar_Data["OrderPlace"][7657] = 4
	tFestivalSpring2015_FestivalWar_Data["OrderPlace"][7658] = 5
	
	--通用礼包ID
	tFestivalSpring2015_FestivalWar_Data["FestivalId"] = 3370
	tFestivalSpring2015_FestivalWar_Data["LogId"] = 10002408
	
	--获得节日礼包光效
	tFestivalSpring2015_FestivalWar_Data["EffectObj"] = "self"
	tFestivalSpring2015_FestivalWar_Data["Effect_1"] = "angelwing"
------------------------------------------------------------------------------------
--活动LOG数据
local tFestivalSpring2015_FestivalWar_Log = {}
	--任务阶段
	tFestivalSpring2015_FestivalWar_Log["Phase_1"] = "0,0,0,0,10002408,1[1],0,0"
	tFestivalSpring2015_FestivalWar_Log["Phase_2"] = "0,0,0,0,10002408,1[2],0,0"
	
------------------------------------------------------------------------------------


------------------------------------------逻辑部分-------------------------------------------

--传送逻辑
function FestivalSpring2015_FestivalWar_ChgMap(sWay)
	local nMapId = tFestivalSpring2015_FestivalWar_Data[sWay]["MapId"]
	local nPosX = tFestivalSpring2015_FestivalWar_Data[sWay]["PosX"]
	local nPosY = tFestivalSpring2015_FestivalWar_Data[sWay]["PosY"]
	local nBoundX = tFestivalSpring2015_FestivalWar_Data[sWay]["BoundX"]
	local nBoundY = tFestivalSpring2015_FestivalWar_Data[sWay]["BoundY"]
	
	--将玩家传送到地图的指定区域
	if not User_UserRandBoundTrans(nMapId,nPosX,nPosY,nBoundX,nBoundY) then
		return false
	end
	User_TalkChannel2005(tFestivalSpring2015_FestivalWar_Text[sWay])
	return true
end


-- 寻路函数
function FestivalSpring2015_FestivalWar_FindWay(sObject)
	local nFireksPosX = tFestivalSpring2015_FestivalWar_Data[sObject]["PosX"]
	local nFireksPosY = tFestivalSpring2015_FestivalWar_Data[sObject]["PosY"]
	local nFireksMapId = tFestivalSpring2015_FestivalWar_Data[sObject]["MapId"]
	local nObjNpcId = tFestivalSpring2015_FestivalWar_Data[sObject]["NpcId"]
	
	Sys_GotoSomeWhere(nFireksPosX,nFireksPosY,nFireksMapId,nObjNpcId)
end


--单用掩码判断
function FestivalSpring2015_FestivalWar_ChkStc(nStcNum)
	local nEvent = tFestivalSpring2015_FestivalWar_Stc[nStcNum]["Event"]
	local nType = tFestivalSpring2015_FestivalWar_Stc[nStcNum]["Type"]
	
	--判断掩码是否为0
	if Task_ChkStcValue(nEvent,nType,"==",0) then
		return true
	end
	
	--判断是否隔天
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		return true
	end
	
	--不等0，未隔天
	return false
end


-- 玩家进场
function FestivalSpring2015_FestivalWar_Join(nNpcId)
	--活动时间判断
	if not Sys_ChkFullTime(tFestivalSpring2015_FestivalWar_Data["Festival_NowTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end

	--玩家等级判断
	-- if not User_JudgeLevelAndMetempsychosis(tFestivalSpring2015_FestivalWar_Data["MinLevel"],tFestivalSpring2015_FestivalWar_Data["MinMeto"]) then
		-- LinkNpcGossipFunc_New(nNpcId,"2-1")
		-- return
	-- end
	
	--是否领取过奖励判断
	if not FestivalSpring2015_FestivalWar_ChkStc(1) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end

	local nEvent = tFestivalSpring2015_FestivalWar_Stc[2]["Event"]
	local nType = tFestivalSpring2015_FestivalWar_Stc[2]["Type"]

	--杀怪隔天判断
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	
	--是否已杀完怪判断
	if Task_ChkStcValue(nEvent,nType,"==",tFestivalSpring2015_FestivalWar_Stc[2]["Finish"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	--成功进场,任务重置
	Task_SetStatistic(tFestivalSpring2015_FestivalWar_Stc[2]["Event"],tFestivalSpring2015_FestivalWar_Stc[2]["Type"],0,1)
	Task_SetStcTimestamp(tFestivalSpring2015_FestivalWar_Stc[2]["Event"],tFestivalSpring2015_FestivalWar_Stc[2]["Type"],0)
	
	--上一只怪记录重置
	Task_SetStatistic(tFestivalSpring2015_FestivalWar_Stc[4]["Event"],tFestivalSpring2015_FestivalWar_Stc[4]["Type"],0,1)
	Task_SetStcTimestamp(tFestivalSpring2015_FestivalWar_Stc[4]["Event"],tFestivalSpring2015_FestivalWar_Stc[4]["Type"],0)

	--随机生成顺序
	local nMonster = math.random(tFestivalSpring2015_FestivalWar_Data["OrderPlace"]["Max"])
	
	--确定目标怪物
	Task_SetStatistic(tFestivalSpring2015_FestivalWar_Stc[3]["Event"],tFestivalSpring2015_FestivalWar_Stc[3]["Type"],nMonster,1)
	Task_SetStcTimestamp(tFestivalSpring2015_FestivalWar_Stc[3]["Event"],tFestivalSpring2015_FestivalWar_Stc[3]["Type"],0)
	Sys_SaveActionFestivalLog(tFestivalSpring2015_FestivalWar_Log["Phase_1"])
	
	--将玩家传送到地图的随机点
	if not FestivalSpring2015_FestivalWar_ChgMap("Join") then
		return false
	end
	User_TalkChannel2005(tFestivalSpring2015_FestivalWar_Text["Monster"][nMonster])
	Sys_MsgBox(tFestivalSpring2015_FestivalWar_Text["Monster"][nMonster])
	return false
end


--玩家离场
function FestivalSpring2015_FestivalWar_Leave(nNpcId)
	local nEvent = tFestivalSpring2015_FestivalWar_Stc[2]["Event"]
	local nType = tFestivalSpring2015_FestivalWar_Stc[2]["Type"]

	--是否已杀完怪判断
	if Task_ChkStcValue(nEvent,nType,"==",tFestivalSpring2015_FestivalWar_Stc[2]["Finish"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	else
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
end


--领取酬劳
function FestivalSpring2015_FestivalWar_Reward(nNpcId)
	--活动时间判断
	if not Sys_ChkFullTime(tFestivalSpring2015_FestivalWar_Data["Festival_NowTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end

	--是否领取过奖励判断
	if not FestivalSpring2015_FestivalWar_ChkStc(1) then
		LinkNpcGossipFunc_New(nNpcId,"4-1")
		return
	end
	
	local nEvent = tFestivalSpring2015_FestivalWar_Stc[2]["Event"]
	local nType = tFestivalSpring2015_FestivalWar_Stc[2]["Type"]
	
	--杀怪隔天判断
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end 

	--是否已杀完怪判断
	if not Task_ChkStcValue(nEvent,nType,"==",tFestivalSpring2015_FestivalWar_Stc[2]["Finish"]) then
		LinkNpcGossipFunc_New(nNpcId,"4-2")
		return
	end
	
	--背包空间判断
	if not User_CheckLeftSpace(tFestivalSpring2015_FestivalWar_Data["ChkSpace"]) then
		LinkNpcGossipFunc_New(nNpcId,"4-3")
		return
	end
	
	--获得节日礼包
	Task_SetStatistic(tFestivalSpring2015_FestivalWar_Stc[1]["Event"],tFestivalSpring2015_FestivalWar_Stc[1]["Type"],1,1)
	Task_SetStcTimestamp(tFestivalSpring2015_FestivalWar_Stc[1]["Event"],tFestivalSpring2015_FestivalWar_Stc[1]["Type"],0)
	FestivalGeneralPackage_GetGift(tFestivalSpring2015_FestivalWar_Data["FestivalId"],tFestivalSpring2015_FestivalWar_Data["LogId"])
	Sys_SaveActionFestivalLog(tFestivalSpring2015_FestivalWar_Log["Phase_2"])
	User_EffectAdd(tFestivalSpring2015_FestivalWar_Data["EffectObj"],tFestivalSpring2015_FestivalWar_Data["Effect_1"])
	LinkNpcGossipFunc_New(nNpcId,"4-4")
end


--愿闻其详
function FestivalSpring2015_FestivalWar_Introduction(nNpcId)
	--活动时间判断
	if not Sys_ChkFullTime(tFestivalSpring2015_FestivalWar_Data["Festival_NowTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	--活动时间内出对白
	LinkNpcGossipFunc_New(nNpcId,"5-1")
end


------------------------------------------怪物逻辑配置-------------------------------------------
-- //怪物触发逻辑
function FestivalSpring2015_FestivalWar_Monster(nMonsterTypeId)
	local nMonsterNum = tFestivalSpring2015_FestivalWar_Data["OrderPlace"][nMonsterTypeId]
	local nEvent_2 = tFestivalSpring2015_FestivalWar_Stc[2]["Event"]
	local nType_2 = tFestivalSpring2015_FestivalWar_Stc[2]["Type"]
	local nEvent_3 = tFestivalSpring2015_FestivalWar_Stc[3]["Event"]
	local nType_3 = tFestivalSpring2015_FestivalWar_Stc[3]["Type"]
	local nEvent_4 = tFestivalSpring2015_FestivalWar_Stc[4]["Event"]
	local nType_4 = tFestivalSpring2015_FestivalWar_Stc[4]["Type"]
	local nEvent_5 = tFestivalSpring2015_FestivalWar_Stc[5]["Event"]
	local nType_5 = tFestivalSpring2015_FestivalWar_Stc[5]["Type"]
	local nStcValue_3 = Get_UserStatisticValue(nEvent_3,nType_3)
	local nStcValue_4 = Get_UserStatisticValue(nEvent_4,nType_4)

	--是否杀对怪判断
	if nMonsterNum ~= nStcValue_3 then
	
		--判断是否已重置顺序
		local nStcValue_5 = Get_UserStatisticValue(nEvent_5,nType_5)
		if nStcValue_5 >= 1 then
			Sys_MsgBox(tFestivalSpring2015_FestivalWar_Text["KillError"])
			User_TalkChannel2005(tFestivalSpring2015_FestivalWar_Text["Monster"][nStcValue_3])
			return
		end
		
		--判断是否杀的是上一只怪
		if nMonsterNum == nStcValue_4 then
		
			--判断当前怪是不是编号最高的怪
			if nMonsterNum >= tFestivalSpring2015_FestivalWar_Data["OrderPlace"]["Max"] then
				--是编号最高的怪则编号置0
				nMonsterNum = 0
			end
		
			--是否完成击杀任务
			if Task_ChkStcValue(nEvent_2,nType_2,"==",tFestivalSpring2015_FestivalWar_Stc[2]["Finish"]) then
				return
			end
		
			--提示
			local nMonster = nMonsterNum + 1
			Sys_MsgBox(tFestivalSpring2015_FestivalWar_Text["Monster"][nMonster])
			User_TalkChannel2005(tFestivalSpring2015_FestivalWar_Text["Monster"][nMonster])
			return
		end
		
		--重置怪物顺序
		local nMonster = math.random(tFestivalSpring2015_FestivalWar_Data["OrderPlace"]["Max"])
		
		--重置杀怪掩码
		Task_SetStatistic(nEvent_2,nType_2,0,1)
		Task_SetStcTimestamp(nEvent_2,nType_2,0)

		--重置目标怪物
		Task_SetStatistic(nEvent_3,nType_3,nMonster,1)
		Task_SetStcTimestamp(nEvent_3,nType_3,0)
		
		--记录已重置过怪物顺序
		Task_SetStatistic(nEvent_5,nType_5,tFestivalSpring2015_FestivalWar_Stc[5]["Finish"],1)
		Task_SetStcTimestamp(nEvent_5,nType_5,0)
		
		Sys_MsgBox(tFestivalSpring2015_FestivalWar_Text["KillError"])
		User_TalkChannel2005(tFestivalSpring2015_FestivalWar_Text["Monster"][nMonster])
		return
		
	--正确击杀怪物
	else
		--置掩码
		Task_AddStatistic(nEvent_2,nType_2,tFestivalSpring2015_FestivalWar_Stc[2]["Place"][nMonsterNum],1)
		Task_SetStcTimestamp(nEvent_2,nType_2,0)
		
		--存储上一怪编号
		Task_SetStatistic(nEvent_4,nType_4,nMonsterNum,1)
		Task_SetStcTimestamp(nEvent_4,nType_4,0)
		
		--判断当前怪是不是编号最高的怪
		if nMonsterNum >= tFestivalSpring2015_FestivalWar_Data["OrderPlace"]["Max"] then
			--是编号最高的怪则编号置0
			nMonsterNum = 0
		end
		
		--确定下一目标怪物
		local nMonster = nMonsterNum + 1
		Task_SetStatistic(nEvent_3,nType_3,nMonster,1)
		Task_SetStcTimestamp(nEvent_3,nType_3,0)
		
		--清除重置怪物顺序记录
		Task_SetStatistic(nEvent_5,nType_5,0,1)
		Task_SetStcTimestamp(nEvent_5,nType_5,0)
		
		--是否完成击杀任务
		if Task_ChkStcValue(nEvent_2,nType_2,"==",tFestivalSpring2015_FestivalWar_Stc[2]["Finish"]) then
			FestivalSpring2015_FestivalWar_ChgMap("Leave")
			Sys_MsgBox(tFestivalSpring2015_FestivalWar_Text["Finish"],"FestivalSpring2015_FestivalWar_FindWay</S>Npc")
			return
		end
		
		--提示
		Sys_MsgBox(tFestivalSpring2015_FestivalWar_Text["Monster"][nMonster])
		User_TalkChannel2005(tFestivalSpring2015_FestivalWar_Text["Monster"][nMonster])
	end
end


------------------------------------------NPC头像-------------------------------------------
tNpcFace[3419] = 67
tNpcFace[3420] = 67
------------------------------------------NPC对话-------------------------------------------

-- //大将军卫无敌
tNpcGossip[17432] = tNpcGossip[17432] or DefaultNpc:new{}
tNpcGossip[17433] = tNpcGossip[17432] or DefaultNpc:new{}
tNpcGossip[17432]["OptionHidden"] = 1

-- 活动前
tNpcGossip[17432]["Text1-1"] = {111,112,113}
tNpcGossip[17432]["Text111"] = tFestivalSpring2015_FestivalWar_Text[17432]["Text111"]
tNpcGossip[17432]["Text112"] = tFestivalSpring2015_FestivalWar_Text[17432]["Text112"]
tNpcGossip[17432]["Text113"] = tFestivalSpring2015_FestivalWar_Text[17432]["Text113"]
tNpcGossip[17432]["tOption1-1"] = {111}
tNpcGossip[17432]["Option111"] = tFestivalSpring2015_FestivalWar_Text[17432]["Option111"]
tNpcGossip[17432]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tFestivalSpring2015_FestivalWar_Data["Festival_BefTime"])
end

-- 活动后
tNpcGossip[17432]["Text1-2"] = {121}
tNpcGossip[17432]["Text121"] = tFestivalSpring2015_FestivalWar_Text[17432]["Text121"]
tNpcGossip[17432]["tOption1-2"] = {121}
tNpcGossip[17432]["Option121"] = tFestivalSpring2015_FestivalWar_Text[17432]["Option121"]
tNpcGossip[17432]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tFestivalSpring2015_FestivalWar_Data["Festival_NowTime"])
end

--【活动中】
-- 等级不足
tNpcGossip[17432]["Text1-3"] = {131}
tNpcGossip[17432]["Text131"] = tFestivalSpring2015_FestivalWar_Text[17432]["Text131"]
tNpcGossip[17432]["tOption1-3"] = {131}
tNpcGossip[17432]["Option131"] = tFestivalSpring2015_FestivalWar_Text[17432]["Option131"]
tNpcGossip[17432]["ChkFunc1-3"] = function ()
	return not User_JudgeLevelAndMetempsychosis(tFestivalSpring2015_FestivalWar_Data["MinLevel"],tFestivalSpring2015_FestivalWar_Data["MinMeto"])
end

-- 主对白
tNpcGossip[17432]["Text1-4"] = {141,142,143} 	-- 活动时间中
tNpcGossip[17432]["Text141"] = tFestivalSpring2015_FestivalWar_Text[17432]["Text141"]
tNpcGossip[17432]["Text142"] = tFestivalSpring2015_FestivalWar_Text[17432]["Text142"]
tNpcGossip[17432]["Text143"] = tFestivalSpring2015_FestivalWar_Text[17432]["Text143"]
tNpcGossip[17432]["tOption1-4"] = {141,142,143,144,145}
tNpcGossip[17432]["Option141"] = tFestivalSpring2015_FestivalWar_Text[17432]["Option141"]
tNpcGossip[17432]["Option142"] = tFestivalSpring2015_FestivalWar_Text[17432]["Option142"]
tNpcGossip[17432]["Option143"] = tFestivalSpring2015_FestivalWar_Text[17432]["Option143"]
tNpcGossip[17432]["Option144"] = tFestivalSpring2015_FestivalWar_Text[17432]["Option144"]
tNpcGossip[17432]["Option145"] = tFestivalSpring2015_FestivalWar_Text[17432]["Option145"]
tNpcGossip[17432]["OptionFunc141"] ="FestivalSpring2015_FestivalWar_Join</N>17432"
tNpcGossip[17432]["OptionFunc142"] = "FestivalSpring2015_FestivalWar_Leave</N>17433"
tNpcGossip[17432]["OptionFunc143"] = "FestivalSpring2015_FestivalWar_Reward</N>17432"
tNpcGossip[17432]["OptionFunc144"] = "FestivalSpring2015_FestivalWar_Introduction</N>17432"
tNpcGossip[17432]["OptionChkFunc141"] = function ()
	local nNpcId = Get_NpcId()
	--为进场NPC
	return nNpcId == 17432
end
tNpcGossip[17432]["OptionChkFunc142"] = function ()
	local nNpcId = Get_NpcId()
	--为离场NPC
	return nNpcId == 17433
end


-- 【前往妖魔战场。】
-- 当天已完成
tNpcGossip[17432]["Text2-1"] = {211}
tNpcGossip[17432]["Text211"] = tFestivalSpring2015_FestivalWar_Text[17432]["Text211"]
tNpcGossip[17432]["tOption2-1"] = {211}
tNpcGossip[17432]["Option211"] = tFestivalSpring2015_FestivalWar_Text[17432]["Option211"]

-- 已成功杀怪，提示领奖
tNpcGossip[17432]["Text2-2"] = {221}
tNpcGossip[17432]["Text221"] = tFestivalSpring2015_FestivalWar_Text[17432]["Text221"]
tNpcGossip[17432]["tOption2-2"] = {221}
tNpcGossip[17432]["Option221"] = tFestivalSpring2015_FestivalWar_Text[17432]["Option221"]

-- 【返回双龙城。】
-- 未完成任务
tNpcGossip[17432]["Text3-1"] = {311}
tNpcGossip[17432]["Text311"] = tFestivalSpring2015_FestivalWar_Text[17432]["Text311"]
tNpcGossip[17432]["tOption3-1"] = {311,312}
tNpcGossip[17432]["Option311"] = tFestivalSpring2015_FestivalWar_Text[17432]["Option311"]
tNpcGossip[17432]["Option312"] = tFestivalSpring2015_FestivalWar_Text[17432]["Option312"]
tNpcGossip[17432]["OptionFunc311"] = "FestivalSpring2015_FestivalWar_ChgMap</S>Leave"

--已完成任务
tNpcGossip[17432]["Text3-2"] = {321}
tNpcGossip[17432]["Text321"] = tFestivalSpring2015_FestivalWar_Text[17432]["Text321"]
tNpcGossip[17432]["tOption3-2"] = {321}
tNpcGossip[17432]["Option321"] = tFestivalSpring2015_FestivalWar_Text[17432]["Option321"]
tNpcGossip[17432]["OptionFunc321"] = "FestivalSpring2015_FestivalWar_ChgMap</S>Leave"


-- 【领取酬劳。】
-- 当天已完成
tNpcGossip[17432]["Text4-1"] = {411}
tNpcGossip[17432]["Text411"] = tFestivalSpring2015_FestivalWar_Text[17432]["Text411"]
tNpcGossip[17432]["tOption4-1"] = {411}
tNpcGossip[17432]["Option411"] = tFestivalSpring2015_FestivalWar_Text[17432]["Option411"]

--任务未完成
tNpcGossip[17432]["Text4-2"] = {421}
tNpcGossip[17432]["Text421"] = tFestivalSpring2015_FestivalWar_Text[17432]["Text421"]
tNpcGossip[17432]["tOption4-2"] = {421}
tNpcGossip[17432]["Option421"] = tFestivalSpring2015_FestivalWar_Text[17432]["Option421"]

-- 背包满
tNpcGossip[17432]["Text4-3"] = {431}
tNpcGossip[17432]["Text431"] = tFestivalSpring2015_FestivalWar_Text[17432]["Text431"]
tNpcGossip[17432]["tOption4-3"] = {431}
tNpcGossip[17432]["Option431"] = tFestivalSpring2015_FestivalWar_Text[17432]["Option431"]

--成功领取
tNpcGossip[17432]["Text4-4"] = {441}
tNpcGossip[17432]["Text441"] = tFestivalSpring2015_FestivalWar_Text[17432]["Text441"]
tNpcGossip[17432]["tOption4-4"] = {441}
tNpcGossip[17432]["Option441"] = tFestivalSpring2015_FestivalWar_Text[17432]["Option441"]


-- 【愿闻其详。】
tNpcGossip[17432]["Text5-1"] = {511,512,513} 	--内容
tNpcGossip[17432]["Text511"] = tFestivalSpring2015_FestivalWar_Text[17432]["Text521"]
tNpcGossip[17432]["Text512"] = tFestivalSpring2015_FestivalWar_Text[17432]["Text522"]
tNpcGossip[17432]["Text513"] = tFestivalSpring2015_FestivalWar_Text[17432]["Text523"]
tNpcGossip[17432]["tOption5-1"] = {521,522}
tNpcGossip[17432]["Option521"] = tFestivalSpring2015_FestivalWar_Text[17432]["Option521"]
tNpcGossip[17432]["OptionPoint521"] = "1"
tNpcGossip[17432]["Option522"] = tFestivalSpring2015_FestivalWar_Text[17432]["Option522"]


------------------------------------------怪物配置-------------------------------------------
-- //烈焰豹
-- tMonster[7654] = tMonster[7654] or {}
-- tMonster[7654]["tFunction"] = tMonster[7654]["tFunction"] or {}
-- table.insert(tMonster[7654]["tFunction"],FestivalSpring2015_FestivalWar_Monster)
-- //碧风蛇
-- tMonster[7655] = tMonster[7655] or {}
-- tMonster[7655]["tFunction"] = tMonster[7655]["tFunction"] or {}
-- table.insert(tMonster[7655]["tFunction"],FestivalSpring2015_FestivalWar_Monster)
-- //熔金魔
-- tMonster[7656] = tMonster[7656] or {}
-- tMonster[7656]["tFunction"] = tMonster[7656]["tFunction"] or {}
-- table.insert(tMonster[7656]["tFunction"],FestivalSpring2015_FestivalWar_Monster)
-- //水幽姬
-- tMonster[7657] = tMonster[7657] or {}
-- tMonster[7657]["tFunction"] = tMonster[7657]["tFunction"] or {}
-- table.insert(tMonster[7657]["tFunction"],FestivalSpring2015_FestivalWar_Monster)
-- //地阴君
-- tMonster[7658] = tMonster[7658] or {}
-- tMonster[7658]["tFunction"] = tMonster[7658]["tFunction"] or {}
-- table.insert(tMonster[7658]["tFunction"],FestivalSpring2015_FestivalWar_Monster)



