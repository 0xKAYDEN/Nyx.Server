------------------------------------------------------------------------------------
--Name:		[征服][活动脚本]伊历新年活动之守护古兰经
--Purpose:	伊历新年活动之守护古兰经
--Creator: 	严振飞
--Created:	2015/04/22
------------------------------------------------------------------------------------

------------------------------------------------------------------------------------
--掩码说明
---stc(128,89) =1表示是已接取任务，>=10表示已领取奖励
---stc(128,90) 记录消灭尖牙魔鼠数量
---stc(128,91) 记录找回古兰经任务完成次数
---stc(128,92) 记录古兰经掉落次数
---stc(134,29) 记录节日通用礼包当天上限


--LOGid 10002315
------------------------------------------------------------------------------------
--命名规范
--ArabicNewYear2015_ProtectKoran_
------------------------------------------------------------------------------------
--STC掩码表
local tArabicNewYear2015_ProtectKoran_Stc = {}
----------------------------------------
--stc(128,89)--=1表示是已接取任务，>=10表示已领取奖励
	tArabicNewYear2015_ProtectKoran_Stc[1] = {}
	tArabicNewYear2015_ProtectKoran_Stc[1]["EventData"] = 128
	tArabicNewYear2015_ProtectKoran_Stc[1]["TypeData"] = 89
	tArabicNewYear2015_ProtectKoran_Stc[1]["Complete"] = 10
	
--stc(128,90)--记录消灭尖牙魔鼠数量
	tArabicNewYear2015_ProtectKoran_Stc[2] = {}
	tArabicNewYear2015_ProtectKoran_Stc[2]["EventData"] = 128
	tArabicNewYear2015_ProtectKoran_Stc[2]["TypeData"] = 90
	tArabicNewYear2015_ProtectKoran_Stc[2]["Complete"] = 30
	
--stc(128,91)--记录找回古兰经任务完成次数
	tArabicNewYear2015_ProtectKoran_Stc[3] = {}
	tArabicNewYear2015_ProtectKoran_Stc[3]["EventData"] = 128
	tArabicNewYear2015_ProtectKoran_Stc[3]["TypeData"] = 91
	tArabicNewYear2015_ProtectKoran_Stc[3]["Complete"] = 3
	
	
--stc(128,92)--记录古兰经掉落次数
	tArabicNewYear2015_ProtectKoran_Stc[4] = {}
	tArabicNewYear2015_ProtectKoran_Stc[4]["EventData"] = 128
	tArabicNewYear2015_ProtectKoran_Stc[4]["TypeData"] = 92
	tArabicNewYear2015_ProtectKoran_Stc[4]["Complete"] = 3
	
------------------------------------------------------------------------------------
--活动数据
local tArabicNewYear2015_ProtectKoran_Data = {}
	--活动时间
	tArabicNewYear2015_ProtectKoran_Data["Festival_BefTime"] = tActivityTime["ArabicNewYear"]["BeforeActiveTime"]
	tArabicNewYear2015_ProtectKoran_Data["Festival_NowTime"] = tActivityTime["ArabicNewYear"]["AcitveTime"]
	
	--等级，转世设置
	tArabicNewYear2015_ProtectKoran_Data["LevTop"] = 140
	tArabicNewYear2015_ProtectKoran_Data["MinLevel"] = 80
	tArabicNewYear2015_ProtectKoran_Data["MinMeto"] = 0

	--切地图信息
	tArabicNewYear2015_ProtectKoran_Data["MapId"] = 1011
	tArabicNewYear2015_ProtectKoran_Data["Cellx"] = 600
	tArabicNewYear2015_ProtectKoran_Data["Celly"] = 426
	tArabicNewYear2015_ProtectKoran_Data["Boundx"] = 10
	tArabicNewYear2015_ProtectKoran_Data["Boundy"] = 10
	
	--背包空间
	tArabicNewYear2015_ProtectKoran_Data["ChkSpace"] = 1
	
	--古兰经的物品ID
	tArabicNewYear2015_ProtectKoran_Data["KoranId"] = 3004689
	
	--经验时间+修行值
	tArabicNewYear2015_ProtectKoran_Data["ExpTime"] = 30
	tArabicNewYear2015_ProtectKoran_Data["Cultivation"] = 20
	
	
	--通用礼包ID
	tArabicNewYear2015_ProtectKoran_Data["FestivalId"] = 3319
	tArabicNewYear2015_ProtectKoran_Data["LogId"] = 10002315
	
	--百分比扣血数据
	tArabicNewYear2015_ProtectKoran_Data["DecLifePercent"] = 10
	tArabicNewYear2015_ProtectKoran_Data["DecLifetType"] = 0
	
	
	
--眩晕状态数据
local tArabicNewYear2015_ProtectKoran_Status = {}
	tArabicNewYear2015_ProtectKoran_Status["Status"] = 57
	tArabicNewYear2015_ProtectKoran_Status["Power"] = 200
	tArabicNewYear2015_ProtectKoran_Status["Secs"] = 10
	tArabicNewYear2015_ProtectKoran_Status["Times"] = 1
	tArabicNewYear2015_ProtectKoran_Status["RemainTime"] = 10
	tArabicNewYear2015_ProtectKoran_Status["EndTime"] = 1
	tArabicNewYear2015_ProtectKoran_Status["Recordable"] = 1
	
	
------------------------------------------------------------------------------------
--活动LOG数据
local tArabicNewYear2015_ProtectKoran_Log = {}
	--任务阶段
	tArabicNewYear2015_ProtectKoran_Log["Phase_1"] = "0,0,0,0,10002315,1[1],0,0"
	tArabicNewYear2015_ProtectKoran_Log["Phase_2"] = "0,0,0,0,10002315,1[2],0,0"
	tArabicNewYear2015_ProtectKoran_Log["AddExpTime"] = "0,0,3004689,1,10002315,2,4,30"
	tArabicNewYear2015_ProtectKoran_Log["AddCultivation"] = "0,0,3004689,1,10002315,2,6,20"
	tArabicNewYear2015_ProtectKoran_Log["GetKoran"] = "0,0,0,0,10002315,2,3004689,1"
	--删除古兰经
	tArabicNewYear2015_ProtectKoran_Log["DelItem"] = "0,0,3004689,1,10002315,2,0,0"
------------------------------------------------------------------------------------

--几率配置表
local tArabicNewYear2015_ProtectKoran_Probabil = {}
	--讨好宠物成功概率
	tArabicNewYear2015_ProtectKoran_Probabil[1] = {}
	tArabicNewYear2015_ProtectKoran_Probabil[1][1] = {}
	tArabicNewYear2015_ProtectKoran_Probabil[1][1]["ItemChanceSum"] = 100
	--5%的几率掉落古兰经
	tArabicNewYear2015_ProtectKoran_Probabil[1][1][1] = {}
	tArabicNewYear2015_ProtectKoran_Probabil[1][1][1]["RandomItemChanceType"] = 2
	tArabicNewYear2015_ProtectKoran_Probabil[1][1][1]["ItemChance"] = 5
	tArabicNewYear2015_ProtectKoran_Probabil[1][1][1]["Item_1"] = 1
	--5%的几率放出毒气（逆向10秒）
	tArabicNewYear2015_ProtectKoran_Probabil[1][1][2] = {}
	tArabicNewYear2015_ProtectKoran_Probabil[1][1][2]["RandomItemChanceType"] = 2
	tArabicNewYear2015_ProtectKoran_Probabil[1][1][2]["ItemChance"] = 5
	tArabicNewYear2015_ProtectKoran_Probabil[1][1][2]["Item_1"] = 2
	--5%几率被咬一口（血量损失10%）
	tArabicNewYear2015_ProtectKoran_Probabil[1][1][3] = {}
	tArabicNewYear2015_ProtectKoran_Probabil[1][1][3]["RandomItemChanceType"] = 2
	tArabicNewYear2015_ProtectKoran_Probabil[1][1][3]["ItemChance"] = 5
	tArabicNewYear2015_ProtectKoran_Probabil[1][1][3]["Item_1"] = 3
	--85%几率啥事没有
	tArabicNewYear2015_ProtectKoran_Probabil[1][1][4] = {}
	tArabicNewYear2015_ProtectKoran_Probabil[1][1][4]["RandomItemChanceType"] = 2
	tArabicNewYear2015_ProtectKoran_Probabil[1][1][4]["ItemChance"] = 85
	tArabicNewYear2015_ProtectKoran_Probabil[1][1][4]["Item_1"] = 4



------------------------------------------逻辑部分-------------------------------------------
--单用STC掩码判断
function ArabicNewYear2015_ProtectKoran_ChkStc(nStcNum)
	local nEventData = tArabicNewYear2015_ProtectKoran_Stc[nStcNum]["EventData"]
	local nTypeData = tArabicNewYear2015_ProtectKoran_Stc[nStcNum]["TypeData"]
	
	--判断掩码是否为0
	if Task_ChkStcValue(nEventData,nTypeData,"==",0) then
		return true
	end
	
	--是否
	if not Task_ChkStcValue(nEventData,nTypeData,">=",tArabicNewYear2015_ProtectKoran_Stc[nStcNum]["Complete"]) then
		return false
	end
	
	--判断是否隔天
	if Task_StcInterval(nEventData,nTypeData,1,4) then
		Task_SetStatistic(nEventData,nTypeData,0,1)
		Task_SetStcTimestamp(nEventData,nTypeData,0)
		return true
	end
	
	--不等0，未隔天
	if Task_ChkStcValue(nEventData,nTypeData,">=",nStcNum) then
		return false
	end
end



--义不容辞！(参加活动)
function ArabicNewYear2015_ProtectKoran_Join(nNpcId)
	--活动时间判断
	if not Sys_ChkFullTime(tArabicNewYear2015_ProtectKoran_Data["Festival_NowTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	--判断是否等级不足
	if not User_JudgeLevelAndMetempsychosis(tArabicNewYear2015_ProtectKoran_Data["MinLevel"],tArabicNewYear2015_ProtectKoran_Data["MinMeto"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	local nEventData = tArabicNewYear2015_ProtectKoran_Stc[1]["EventData"]
	local nTypeData = tArabicNewYear2015_ProtectKoran_Stc[1]["TypeData"]
	local nComplete = tArabicNewYear2015_ProtectKoran_Stc[1]["Complete"]
	
	--是否满足条件
	if not Task_ChkStcValue(nEventData,nTypeData,"==",0) then
	
		--是否已接取任务
		if not Task_ChkStcValue(nEventData,nTypeData,">=",nComplete) then
			LinkNpcGossipFunc_New(nNpcId,"2-2")
			return
			
		--当天已经完成任务
		elseif not Task_StcInterval(nEventData,nTypeData,1,4) then
			LinkNpcGossipFunc_New(nNpcId,"2-3")
			return
		end
	end
	
	--置掩码
	Task_SetStatistic(nEventData,nTypeData,1,1)
	Task_SetStcTimestamp(nEventData,nTypeData,0)
	Sys_SaveActionFestivalLog(tArabicNewYear2015_ProtectKoran_Log["Phase_1"])
	LinkNpcGossipFunc_New(nNpcId,"2-4")
end


--成功接取任务后寻路
function ArabicNewYear2015_ProtectKoran_WayFinding(nNpcId)
	--活动时间判断
	if not Sys_ChkFullTime(tArabicNewYear2015_ProtectKoran_Data["Festival_NowTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end

	--切地图
	local nMapId = tArabicNewYear2015_ProtectKoran_Data["MapId"]
	local nCellx = tArabicNewYear2015_ProtectKoran_Data["Cellx"]
	local nCelly = tArabicNewYear2015_ProtectKoran_Data["Celly"]
	local nBoundx = tArabicNewYear2015_ProtectKoran_Data["Boundx"]
	local nBoundy = tArabicNewYear2015_ProtectKoran_Data["Boundy"]
	User_UserRandBoundTrans(nMapId,nCellx,nCelly,nBoundx,nBoundy)
end



--【我已经消灭足够的尖牙魔鼠了。】领取奖赏
function ArabicNewYear2015_ProtectKoran_Reward(nNpcId)

	--活动时间判断
	if not Sys_ChkFullTime(tArabicNewYear2015_ProtectKoran_Data["Festival_NowTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end

	--判断是否等级不足
	if not User_JudgeLevelAndMetempsychosis(tArabicNewYear2015_ProtectKoran_Data["MinLevel"],tArabicNewYear2015_ProtectKoran_Data["MinMeto"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	local nEventData1 = tArabicNewYear2015_ProtectKoran_Stc[1]["EventData"]
	local nTypeData1 = tArabicNewYear2015_ProtectKoran_Stc[1]["TypeData"]
	local nComplete1 = tArabicNewYear2015_ProtectKoran_Stc[1]["Complete"]
	
	--判断是否接取任务
	if Task_ChkStcValue(nEventData1,nTypeData1,"==",0) then
		LinkNpcGossipFunc_New(nNpcId,"4-1")
		return
	
	--判断是否已领取奖励
	elseif Task_ChkStcValue(nEventData1,nTypeData1,">=",nComplete1) then
		if Task_StcInterval(nEventData1,nTypeData1,1,4) then
		
			--未接取任务
			LinkNpcGossipFunc_New(nNpcId,"4-1")
			return
		else
			--已经领取奖励
			LinkNpcGossipFunc_New(nNpcId,"4-2")
			return
		end
	end
	
	local nEventData2 = tArabicNewYear2015_ProtectKoran_Stc[2]["EventData"]
	local nTypeData2 = tArabicNewYear2015_ProtectKoran_Stc[2]["TypeData"]
	local nComplete2 = tArabicNewYear2015_ProtectKoran_Stc[2]["Complete"]
	
	--判断是否杀够魔鼠
	if not Task_ChkStcValue(nEventData2,nTypeData2,">=",nComplete2) then
		LinkNpcGossipFunc_New(nNpcId,"4-3")
		return
	end
	
	--判断背包空间
	if not User_CheckLeftSpace(tArabicNewYear2015_ProtectKoran_Data["ChkSpace"]) then
		LinkNpcGossipFunc_New(nNpcId,"4-4")
		return
	end
	
	--打掩码，领取奖励，记录活动LOG
	Task_SetStatistic(nEventData1,nTypeData1,nComplete1,1)
	Task_SetStatistic(nEventData2,nTypeData2,0,1)
	Task_SetStcTimestamp(nEventData1,nTypeData1,0)
	FestivalGeneralPackage_GetGift(tArabicNewYear2015_ProtectKoran_Data["FestivalId"],tArabicNewYear2015_ProtectKoran_Data["LogId"])
	Sys_SaveActionFestivalLog(tArabicNewYear2015_ProtectKoran_Log["Phase_2"])
	LinkNpcGossipFunc_New(nNpcId,"4-5")
end




--【我帮你找回古兰经了。】
function ArabicNewYear2015_ProtectKoran_BackKoran(nNpcId)
	--活动时间判断
	if not Sys_ChkFullTime(tArabicNewYear2015_ProtectKoran_Data["Festival_NowTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	--判断是否等级不足
	if not User_JudgeLevelAndMetempsychosis(tArabicNewYear2015_ProtectKoran_Data["MinLevel"],tArabicNewYear2015_ProtectKoran_Data["MinMeto"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	local nEventData1 = tArabicNewYear2015_ProtectKoran_Stc[1]["EventData"]
	local nTypeData1 = tArabicNewYear2015_ProtectKoran_Stc[1]["TypeData"]
	local nComplete1 = tArabicNewYear2015_ProtectKoran_Stc[1]["Complete"]

	
	--判断是否接取任务
	if Task_ChkStcValue(nEventData1,nTypeData1,"==",0) then
		LinkNpcGossipFunc_New(nNpcId,"4-1")
		return
	
	elseif Task_ChkStcValue(nEventData1,nTypeData1,">=",nComplete1) then
		if Task_StcInterval(nEventData1,nTypeData1,1,4) then
			LinkNpcGossipFunc_New(nNpcId,"4-1")
		end
	end
	
	local nEventData3 = tArabicNewYear2015_ProtectKoran_Stc[3]["EventData"]
	local nTypeData3 = tArabicNewYear2015_ProtectKoran_Stc[3]["TypeData"]
	local nComplete3 = tArabicNewYear2015_ProtectKoran_Stc[3]["Complete"]

	--没接任务或者完成杀火数的任务了，则需要从新接取任务
	--判断当天是否已经完成3次了
	if Task_StcInterval(nEventData3,nTypeData3,1,4) then
		Task_SetStatistic(nEventData3,nTypeData3,0,1)
		Task_SetStcTimestamp(nEventData3,nTypeData3,0)
	elseif Task_ChkStcValue(nEventData3,nTypeData3,">=",nComplete3) then
		LinkNpcGossipFunc_New(nNpcId,"5-1")
		return
	end
	
	local nItemId = tArabicNewYear2015_ProtectKoran_Data["KoranId"]
	--判断玩家是否有古兰经
	if not Item_ChkItem(nItemId) then
		LinkNpcGossipFunc_New(nNpcId,"5-2")
		return
	elseif not Item_DelItem(nItemId) then
		return
	end
	
	--置掩码
	Task_AddStatistic(nEventData3,nTypeData3,1,1)
	Task_SetStcTimestamp(nEventData3,nTypeData3,0)

	--判断是否满级
	local nUserLev = Get_UserLevel()
	local nTopLev = tArabicNewYear2015_ProtectKoran_Data["LevTop"]
	if nUserLev < nTopLev then
	
		--增加玩家经验时间(30分钟)+LOG+提示
		User_AddExpTime(tArabicNewYear2015_ProtectKoran_Data["ExpTime"])
		Sys_SaveActionFestivalLog(tArabicNewYear2015_ProtectKoran_Log["AddExpTime"])
		LinkNpcGossipFunc_New(nNpcId,"5-3")
	else
		--增加玩家修行值(20点)+LOG+提示
		User_AddCultivation(tArabicNewYear2015_ProtectKoran_Data["Cultivation"])
		Sys_SaveActionFestivalLog(tArabicNewYear2015_ProtectKoran_Log["AddCultivation"])
		LinkNpcGossipFunc_New(nNpcId,"5-4")
	end
end


------------------------------------------怪物逻辑配置-------------------------------------------
--尖牙魔鼠计数函数
function ArabicNewYear2015_ProtectKoran_MonsterCount()
	local nEventData1 = tArabicNewYear2015_ProtectKoran_Stc[1]["EventData"]
	local nTypeData1 = tArabicNewYear2015_ProtectKoran_Stc[1]["TypeData"]
	local nComplete1 = tArabicNewYear2015_ProtectKoran_Stc[1]["Complete"]
	local nEventData2 = tArabicNewYear2015_ProtectKoran_Stc[2]["EventData"]
	local nTypeData2 = tArabicNewYear2015_ProtectKoran_Stc[2]["TypeData"]
	local nComplete2 = tArabicNewYear2015_ProtectKoran_Stc[2]["Complete"]

	
	--判断是否已领取奖励
	if Task_ChkStcValue(nEventData1,nTypeData1,">=",nComplete1) then
		if Task_StcInterval(nEventData1,nTypeData1,1,4) then
			Task_SetStatistic(nEventData2,nTypeData2,0,1)
		end
		return
	end
	
	--判断是否杀够魔鼠
	if Task_ChkStcValue(nEventData2,nTypeData2,">=",nComplete2) then
		User_TalkChannel2005(tArabicNewYear2015_ProtectKoran_Text["KillEnough"])
		return
	end
	
	--置掩码
	Task_AddStatistic(nEventData2,nTypeData2,1,1)
	
	--再次判断是否杀够魔鼠
	if Task_ChkStcValue(nEventData2,nTypeData2,">=",nComplete2) then
		User_TalkChannel2005(tArabicNewYear2015_ProtectKoran_Text["KillEnough"])
		return
	end
end


--尖牙魔鼠掉落古兰经函数
function ArabicNewYear2015_ProtectKoran_MonsterDrop()
	local nEventData4 = tArabicNewYear2015_ProtectKoran_Stc[4]["EventData"]
	local nTypeData4 = tArabicNewYear2015_ProtectKoran_Stc[4]["TypeData"]
	local nComplete4 = tArabicNewYear2015_ProtectKoran_Stc[4]["Complete"]

	--5/100几率
	local flat,tItem = Probabil_RandomAward(tArabicNewYear2015_ProtectKoran_Probabil[1],1)
	local nValue = tItem[1]["tAward"][1]["Item_1"]
	
	--5%的几率掉落古兰经
	if nValue == 1 then
		local nEventData4 = tArabicNewYear2015_ProtectKoran_Stc[4]["EventData"]
		local nTypeData4 = tArabicNewYear2015_ProtectKoran_Stc[4]["TypeData"]
		local nComplete4 = tArabicNewYear2015_ProtectKoran_Stc[4]["Complete"]

		--是否掉落了3次古兰经
		if Task_StcInterval(nEventData4,nTypeData4,1,4) then
			Task_SetStatistic(nEventData4,nTypeData4,0,1)
		elseif Task_ChkStcValue(nEventData4,nTypeData4,">=",nComplete4) then
			return
		end
		
		--判断背包空间
		if not User_CheckLeftSpace(tArabicNewYear2015_ProtectKoran_Data["ChkSpace"]) then
			User_TalkChannel2005(tArabicNewYear2015_ProtectKoran_Text["FullSpace"])
			return
		end
		
		--置掩码+给古兰经+LOG+提示
		Task_AddStatistic(nEventData4,nTypeData4,1,1)
		Task_SetStcTimestamp(nEventData4,nTypeData4,0)
		Item_AddItem(tArabicNewYear2015_ProtectKoran_Data["KoranId"])
		Sys_SaveActionFestivalLog(tArabicNewYear2015_ProtectKoran_Log["GetKoran"])
		User_TalkChannel2005(tArabicNewYear2015_ProtectKoran_Text["GetKoran"])
		
	--5%的几率放出一股毒气（逆向10秒）
	elseif nValue == 2 then
		local nStatus = tArabicNewYear2015_ProtectKoran_Status["Status"]
		local nPower =  tArabicNewYear2015_ProtectKoran_Status["Power"]
		local nSecs = tArabicNewYear2015_ProtectKoran_Status["Secs"]
		local nTimes = tArabicNewYear2015_ProtectKoran_Status["Times"]
		local nRemainTime = tArabicNewYear2015_ProtectKoran_Status["RemainTime"]
		local nEndTime = tArabicNewYear2015_ProtectKoran_Status["EndTime"]
		local nRecordable = tArabicNewYear2015_ProtectKoran_Status["Recordable"]
		local nUserId = Get_UserId()
		User_AddRoleStatus(nStatus,nPower,nSecs,nTimes,nRemainTime,nEndTime,nRecordable,0,0,nUserId)
		User_TalkChannel2005(tArabicNewYear2015_ProtectKoran_Text["ToxicGas"])
		
	--5%几率被咬一口（血量损失10%）
	elseif nValue == 3 then
		User_DecLifePercent(tArabicNewYear2015_ProtectKoran_Data["DecLifePercent"],tArabicNewYear2015_ProtectKoran_Data["DecLifetType"])
		User_TalkChannel2005(tArabicNewYear2015_ProtectKoran_Text["ReduceLife"])
	end
end




-- //怪物触发逻辑
function ArabicNewYear2015_ProtectKoran_Monster(nMonsterTypeId)
	local nEventData1 = tArabicNewYear2015_ProtectKoran_Stc[1]["EventData"]
	local nTypeData1 = tArabicNewYear2015_ProtectKoran_Stc[1]["TypeData"]
	local nComplete1 = tArabicNewYear2015_ProtectKoran_Stc[1]["Complete"]
	local nEventData2 = tArabicNewYear2015_ProtectKoran_Stc[2]["EventData"]
	local nTypeData2 = tArabicNewYear2015_ProtectKoran_Stc[2]["TypeData"]
	local nComplete2 = tArabicNewYear2015_ProtectKoran_Stc[2]["Complete"]

	--活动时间判断
	if not Sys_ChkFullTime(tArabicNewYear2015_ProtectKoran_Data["Festival_NowTime"]) then
		return
	end

	--判断是否等级不足
	if not User_JudgeLevelAndMetempsychosis(tArabicNewYear2015_ProtectKoran_Data["MinLevel"],tArabicNewYear2015_ProtectKoran_Data["MinMeto"]) then
		return
	end
	
	--判断是否接取任务
	if Task_ChkStcValue(nEventData1,nTypeData1,"==",0) then
		return
	end
	
	--尖牙魔鼠计数函数
	ArabicNewYear2015_ProtectKoran_MonsterCount()
	--尖牙魔鼠掉落古兰经函数
	ArabicNewYear2015_ProtectKoran_MonsterDrop()
end








------------------------------------------NPC头像-------------------------------------------
tNpcFace[3179] = 51
------------------------------------------NPC对话-------------------------------------------

-- //舞者小丸子
tNpcGossip[17094] = tNpcGossip[17094] or DefaultNpc:new{}
tNpcGossip[17094]["OptionHidden"] = 1

-- 【起始对白】
tNpcGossip[17094]["Text1-1"] = {111,112,113} 		-- 活动时间前
tNpcGossip[17094]["Text1-2"] = {121,122} 			-- 活动时间后
tNpcGossip[17094]["Text1-3"] = {131,128,133} 		-- 活动时间后
-- 活动前
tNpcGossip[17094]["Text111"] = tArabicNewYear2015_ProtectKoran_Text[17094]["Text111"]
tNpcGossip[17094]["Text112"] = tArabicNewYear2015_ProtectKoran_Text[17094]["Text112"]
tNpcGossip[17094]["Text113"] = tArabicNewYear2015_ProtectKoran_Text[17094]["Text113"]
tNpcGossip[17094]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tArabicNewYear2015_ProtectKoran_Data["Festival_BefTime"])
end
-- 活动后
tNpcGossip[17094]["Text121"] = tArabicNewYear2015_ProtectKoran_Text[17094]["Text121"]
tNpcGossip[17094]["Text122"] = tArabicNewYear2015_ProtectKoran_Text[17094]["Text122"]
tNpcGossip[17094]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tArabicNewYear2015_ProtectKoran_Data["Festival_NowTime"])
end
-- 活动中
tNpcGossip[17094]["Text131"] = tArabicNewYear2015_ProtectKoran_Text[17094]["Text131"]
tNpcGossip[17094]["Text128"] = tArabicNewYear2015_ProtectKoran_Text[17094]["Text132"]
tNpcGossip[17094]["Text133"] = tArabicNewYear2015_ProtectKoran_Text[17094]["Text133"]
--选项
tNpcGossip[17094]["tOption1-1"] = {11}				-- 活动时间前
tNpcGossip[17094]["tOption1-2"] = {12}				-- 活动时间后
tNpcGossip[17094]["tOption1-3"] = {13,14,15,16,17}		-- 活动时间中
tNpcGossip[17094]["Option11"] = tArabicNewYear2015_ProtectKoran_Text[17094]["Option11"]
tNpcGossip[17094]["Option12"] = tArabicNewYear2015_ProtectKoran_Text[17094]["Option12"]
tNpcGossip[17094]["Option13"] = tArabicNewYear2015_ProtectKoran_Text[17094]["Option13"]
tNpcGossip[17094]["OptionChkFunc13"] = function ()
	return ArabicNewYear2015_ProtectKoran_ChkStc(1)
end
tNpcGossip[17094]["Option14"] = tArabicNewYear2015_ProtectKoran_Text[17094]["Option14"]
tNpcGossip[17094]["OptionChkFunc14"] = function ()
	local nEventData = tArabicNewYear2015_ProtectKoran_Stc[1]["EventData"]
	local nTypeData = tArabicNewYear2015_ProtectKoran_Stc[1]["TypeData"]
	local nComplete = tArabicNewYear2015_ProtectKoran_Stc[1]["Complete"]
	return not Task_ChkStcValue(nEventData,nTypeData,">=",nComplete)
end
tNpcGossip[17094]["Option15"] = tArabicNewYear2015_ProtectKoran_Text[17094]["Option15"]
tNpcGossip[17094]["Option16"] = tArabicNewYear2015_ProtectKoran_Text[17094]["Option16"]
tNpcGossip[17094]["Option17"] = tArabicNewYear2015_ProtectKoran_Text[17094]["Option17"]
tNpcGossip[17094]["OptionFunc13"] = "ArabicNewYear2015_ProtectKoran_Join</N>17094"
tNpcGossip[17094]["OptionFunc14"] = "ArabicNewYear2015_ProtectKoran_Reward</N>17094"
tNpcGossip[17094]["OptionFunc15"] = "ArabicNewYear2015_ProtectKoran_BackKoran</N>17094"
tNpcGossip[17094]["OptionPoint16"] = "6"


-- 【义不容辞！】
tNpcGossip[17094]["Text2-1"] = {211} 		--等级不足提示
tNpcGossip[17094]["Text2-2"] = {221} 		--已经接取任务
tNpcGossip[17094]["Text2-3"] = {231,232} 	--当天已完成任务
tNpcGossip[17094]["Text2-4"] = {241,242} 	--成功接取任务
tNpcGossip[17094]["Text211"] = tArabicNewYear2015_ProtectKoran_Text[17094]["Text211"]
tNpcGossip[17094]["Text221"] = tArabicNewYear2015_ProtectKoran_Text[17094]["Text221"]
tNpcGossip[17094]["Text231"] = tArabicNewYear2015_ProtectKoran_Text[17094]["Text231"]
tNpcGossip[17094]["Text232"] = tArabicNewYear2015_ProtectKoran_Text[17094]["Text232"]
tNpcGossip[17094]["Text241"] = tArabicNewYear2015_ProtectKoran_Text[17094]["Text241"]
tNpcGossip[17094]["Text242"] = tArabicNewYear2015_ProtectKoran_Text[17094]["Text242"]
tNpcGossip[17094]["tOption2-1"] = {21}
tNpcGossip[17094]["tOption2-2"] = {22}
tNpcGossip[17094]["tOption2-3"] = {23}
tNpcGossip[17094]["tOption2-4"] = {24}
tNpcGossip[17094]["Option21"] = tArabicNewYear2015_ProtectKoran_Text[17094]["Option21"]
tNpcGossip[17094]["Option22"] = tArabicNewYear2015_ProtectKoran_Text[17094]["Option22"]
tNpcGossip[17094]["Option23"] = tArabicNewYear2015_ProtectKoran_Text[17094]["Option23"]
tNpcGossip[17094]["Option24"] = tArabicNewYear2015_ProtectKoran_Text[17094]["Option24"]
tNpcGossip[17094]["OptionPoint24"] = "3"


-- 【交给我吧！】
tNpcGossip[17094]["Text3-1"] = {311} 		--对白
tNpcGossip[17094]["Text311"] = tArabicNewYear2015_ProtectKoran_Text[17094]["Text311"]
tNpcGossip[17094]["tOption3-1"] = {31,32}
tNpcGossip[17094]["Option31"] = tArabicNewYear2015_ProtectKoran_Text[17094]["Option31"]
tNpcGossip[17094]["OptionFunc31"] = "ArabicNewYear2015_ProtectKoran_WayFinding</N>17094"
tNpcGossip[17094]["Option32"] = tArabicNewYear2015_ProtectKoran_Text[17094]["Option32"]


-- 【我已经消灭足够的尖牙魔鼠了。】
tNpcGossip[17094]["Text4-1"] = {411} 	--还未接取任务
tNpcGossip[17094]["Text4-2"] = {421} 	--已经领取奖励
tNpcGossip[17094]["Text4-3"] = {431} 	--没杀够火鼠
tNpcGossip[17094]["Text4-4"] = {441} 	--背包空间不足
tNpcGossip[17094]["Text4-5"] = {451,452} 	--成功领取奖励
tNpcGossip[17094]["Text411"] = tArabicNewYear2015_ProtectKoran_Text[17094]["Text411"]
tNpcGossip[17094]["Text421"] = tArabicNewYear2015_ProtectKoran_Text[17094]["Text421"]
tNpcGossip[17094]["Text431"] = tArabicNewYear2015_ProtectKoran_Text[17094]["Text431"]
tNpcGossip[17094]["Text441"] = tArabicNewYear2015_ProtectKoran_Text[17094]["Text441"]
tNpcGossip[17094]["Text451"] = tArabicNewYear2015_ProtectKoran_Text[17094]["Text451"]
tNpcGossip[17094]["Text452"] = tArabicNewYear2015_ProtectKoran_Text[17094]["Text452"]
tNpcGossip[17094]["tOption4-1"] = {41}
tNpcGossip[17094]["tOption4-2"] = {42}
tNpcGossip[17094]["tOption4-3"] = {43}
tNpcGossip[17094]["tOption4-4"] = {44}
tNpcGossip[17094]["tOption4-5"] = {45}
tNpcGossip[17094]["Option41"] = tArabicNewYear2015_ProtectKoran_Text[17094]["Option41"]
tNpcGossip[17094]["Option42"] = tArabicNewYear2015_ProtectKoran_Text[17094]["Option42"]
tNpcGossip[17094]["Option43"] = tArabicNewYear2015_ProtectKoran_Text[17094]["Option43"]
tNpcGossip[17094]["Option44"] = tArabicNewYear2015_ProtectKoran_Text[17094]["Option44"]
tNpcGossip[17094]["Option45"] = tArabicNewYear2015_ProtectKoran_Text[17094]["Option45"]
tNpcGossip[17094]["OptionFunc43"] = "ArabicNewYear2015_ProtectKoran_WayFinding</N>17094"

-- 【我帮你找回古兰经了。】
tNpcGossip[17094]["Text5-1"] = {511} 	--当天已经完成3次
tNpcGossip[17094]["Text5-2"] = {521} 	--没有古兰经
tNpcGossip[17094]["Text5-3"] = {531} 	--获得经验奖励
tNpcGossip[17094]["Text5-4"] = {541} 	--获得修行值奖励
tNpcGossip[17094]["Text511"] = tArabicNewYear2015_ProtectKoran_Text[17094]["Text511"]
tNpcGossip[17094]["Text521"] = tArabicNewYear2015_ProtectKoran_Text[17094]["Text521"]
tNpcGossip[17094]["Text531"] = tArabicNewYear2015_ProtectKoran_Text[17094]["Text531"]
tNpcGossip[17094]["Text541"] = tArabicNewYear2015_ProtectKoran_Text[17094]["Text541"]
tNpcGossip[17094]["tOption5-1"] = {51}
tNpcGossip[17094]["tOption5-2"] = {52}
tNpcGossip[17094]["tOption5-3"] = {53}
tNpcGossip[17094]["tOption5-4"] = {54}
tNpcGossip[17094]["Option51"] = tArabicNewYear2015_ProtectKoran_Text[17094]["Option51"]
tNpcGossip[17094]["Option52"] = tArabicNewYear2015_ProtectKoran_Text[17094]["Option52"]
tNpcGossip[17094]["Option53"] = tArabicNewYear2015_ProtectKoran_Text[17094]["Option53"]
tNpcGossip[17094]["Option54"] = tArabicNewYear2015_ProtectKoran_Text[17094]["Option54"]

-- 【我该怎么帮你呢？】
tNpcGossip[17094]["Text6-1"] = {611,612,613} 	--对白
tNpcGossip[17094]["Text611"] = tArabicNewYear2015_ProtectKoran_Text[17094]["Text611"]
tNpcGossip[17094]["Text612"] = tArabicNewYear2015_ProtectKoran_Text[17094]["Text612"]
tNpcGossip[17094]["Text613"] = tArabicNewYear2015_ProtectKoran_Text[17094]["Text613"]
tNpcGossip[17094]["tOption6-1"] = {61}
tNpcGossip[17094]["Option61"] = tArabicNewYear2015_ProtectKoran_Text[17094]["Option61"]


------------------------------------------------【古兰经】------------------------------------------------
tItem[3004689] = tItem[3004689] or {}
tItem[3004689]["Function"] = function (nItemId,sItemName)
	-- 活动时间前
	if Sys_ChkFullTime(tArabicNewYear2015_ProtectKoran_Data["Festival_BefTime"]) then
		User_TalkChannel2005(tArabicNewYear2015_ProtectKoran_Text["BeforeTime"])
		return
	end
	
	-- 活动时间后
	if not Sys_ChkFullTime(tArabicNewYear2015_ProtectKoran_Data["Festival_NowTime"]) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			Sys_SaveActionFestivalLog(tArabicNewYear2015_ProtectKoran_Log["DelItem"])
			User_TalkChannel2005(tArabicNewYear2015_ProtectKoran_Text["AfterTime"])
		end
		return
	end
	-- 活动时间内
	--若玩家在双龙城，则自动寻路找NPC
	if Get_UserMapId() == 1002 then
		NpcPosition_PathFind(17094)
	else
		User_TalkChannel2005(tArabicNewYear2015_ProtectKoran_Text["NowTime"])
	end
end

------------------------------------------怪物配置-------------------------------------------
---- //尖牙魔鼠
-- tMonster[7588] = tMonster[7588] or {}
-- tMonster[7588]["tFunction"] = tMonster[7588]["tFunction"] or {}
-- table.insert(tMonster[7588]["tFunction"],ArabicNewYear2015_ProtectKoran_Monster)
