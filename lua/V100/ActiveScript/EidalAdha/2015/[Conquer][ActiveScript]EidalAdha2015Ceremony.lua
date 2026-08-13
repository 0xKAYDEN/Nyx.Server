------------------------------------------------------------------------------------
--Name:		[征服][活动脚本]宰牲节活动之会礼
--Purpose:	宰牲节活动之会礼
--Creator: 	严振飞
--Created:	2015/05/12
------------------------------------------------------------------------------------

------------------------------------------------------------------------------------
--掩码说明
---stc(127,63) =1领过任务 =2完成净身 =3完成礼拜 =4领取奖励
---stc(127,89) 记录任务数量
---stc(127,95) =3、4、5、6领取奖励(分别表示完成3、4、5、6个任务的奖励)
--LOGid 10002246
------------------------------------------------------------------------------------
--命名规范
--EidalAdha2015_Ceremony_
------------------------------------------------------------------------------------
--STC掩码表
local tEidalAdha2015_Ceremony_Stc = {}
----------------------------------------
--stc(127,63) =1领过任务 =2完成净身 =3完成礼拜 =4领取奖励
	tEidalAdha2015_Ceremony_Stc[1] = {}
	tEidalAdha2015_Ceremony_Stc[1]["EventData"] = 127
	tEidalAdha2015_Ceremony_Stc[1]["TypeData"] = 63
	tEidalAdha2015_Ceremony_Stc[1]["Begin"] = 0
	tEidalAdha2015_Ceremony_Stc[1]["Phase_1"] = 1
	tEidalAdha2015_Ceremony_Stc[1]["Phase_2"] = 2
	tEidalAdha2015_Ceremony_Stc[1]["Phase_3"] = 3
	tEidalAdha2015_Ceremony_Stc[1]["Complete"] = 4
---stc(127,89) 记录任务数量
	tEidalAdha2015_Ceremony_Stc[2] = {}
	tEidalAdha2015_Ceremony_Stc[2]["EventData"] = 127
	tEidalAdha2015_Ceremony_Stc[2]["TypeData"] = 89
	tEidalAdha2015_Ceremony_Stc[2]["Phase_1"] = 1
	tEidalAdha2015_Ceremony_Stc[2]["Complete"] = 3
---stc(127,95) =3、4、5、6领取奖励
	tEidalAdha2015_Ceremony_Stc[3] = {}
	tEidalAdha2015_Ceremony_Stc[3]["EventData"] = 127
	tEidalAdha2015_Ceremony_Stc[3]["TypeData"] = 95
	tEidalAdha2015_Ceremony_Stc[3]["Phase_1"] = 1
	tEidalAdha2015_Ceremony_Stc[3]["Phase_2"] = 2
	tEidalAdha2015_Ceremony_Stc[3]["Phase_3"] = 3
	tEidalAdha2015_Ceremony_Stc[3]["Phase_4"] = 4
	tEidalAdha2015_Ceremony_Stc[3]["Phase_5"] = 5
	tEidalAdha2015_Ceremony_Stc[3]["Phase_6"] = 6



------------------------------------------------------------------------------------
--活动数据
local tEidalAdha2015_Ceremony_Data = {}
	--活动时间--9.23至9.30
	tEidalAdha2015_Ceremony_Data["Festival_BefTime"] = "2015-01-01 00:00 2017-09-01 23:59"
	tEidalAdha2015_Ceremony_Data["Festival_NowTime"] = "2017-09-02 00:00 2017-09-08 23:59"
	
	--等级，转世设置
	tEidalAdha2015_Ceremony_Data["LevTop"] = 140
	tEidalAdha2015_Ceremony_Data["MinLevel"] = 80
	tEidalAdha2015_Ceremony_Data["MinMeto"] = 0

	--清真肥皂ID
	tEidalAdha2015_Ceremony_Data["SoapId"] = 3004453
	--特别奖励
	tEidalAdha2015_Ceremony_Data["SpecialAward"] = {}
	tEidalAdha2015_Ceremony_Data["SpecialAward"][3] = 3004484 	--良品宝石礼包
	tEidalAdha2015_Ceremony_Data["SpecialAward"][4] = 720027 	--流星卷
	tEidalAdha2015_Ceremony_Data["SpecialAward"][5] = 721316 	--良品宝石礼包
	tEidalAdha2015_Ceremony_Data["SpecialAward"][6] = 3 		--节日欢庆礼包(个数)
	
	--良品宝石礼包-打开获得的各种宝石
	tEidalAdha2015_Ceremony_Data["Gemstone"] = {}
	tEidalAdha2015_Ceremony_Data["Gemstone"][1] = 700012 --良品龙恨宝石
	tEidalAdha2015_Ceremony_Data["Gemstone"][2] = 700002 --良品凤吟宝石
	tEidalAdha2015_Ceremony_Data["Gemstone"][3] = 700032 --良品青虹宝石
	
	--自动寻路信息
	tEidalAdha2015_Ceremony_Data["MapId"] = 1002
	
	tEidalAdha2015_Ceremony_Data["PosX"] = {}
	tEidalAdha2015_Ceremony_Data["PosY"] = {}
	tEidalAdha2015_Ceremony_Data["NpcId"] = {}
	--前往河边
	tEidalAdha2015_Ceremony_Data["PosX"][1] = 493
	tEidalAdha2015_Ceremony_Data["PosY"][1] = 322
	tEidalAdha2015_Ceremony_Data["NpcId"][1] = 0
	--寻找阿訇（会礼）
	tEidalAdha2015_Ceremony_Data["PosX"][2] = 285
	tEidalAdha2015_Ceremony_Data["PosY"][2] = 371
	tEidalAdha2015_Ceremony_Data["NpcId"][2] = 16889
	--寻找鲁格曼（捉拿牛怪）
	tEidalAdha2015_Ceremony_Data["PosX"][3] = 287
	tEidalAdha2015_Ceremony_Data["PosY"][3] = 385
	tEidalAdha2015_Ceremony_Data["NpcId"][3] = 16890
	--乌依古尔（真主祭品）
	tEidalAdha2015_Ceremony_Data["PosX"][4] = 274
	tEidalAdha2015_Ceremony_Data["PosY"][4] = 378
	tEidalAdha2015_Ceremony_Data["NpcId"][4] = 16897
	--土豪磊（土豪磊的馈赠）
	tEidalAdha2015_Ceremony_Data["PosX"][5] = 294
	tEidalAdha2015_Ceremony_Data["PosY"][5] = 378
	tEidalAdha2015_Ceremony_Data["NpcId"][5] = 16898
	--羊肉大叔（羊肉大烧烤）
	tEidalAdha2015_Ceremony_Data["PosX"][6] = 292
	tEidalAdha2015_Ceremony_Data["PosY"][6] = 359
	tEidalAdha2015_Ceremony_Data["NpcId"][6] = 16908
	--穆斯林主厨（美食的聚会）
	tEidalAdha2015_Ceremony_Data["PosX"][7] = 278
	tEidalAdha2015_Ceremony_Data["PosY"][7] = 359
	tEidalAdha2015_Ceremony_Data["NpcId"][7] = 16910
	--宰牲节活动大使班尔纳
	tEidalAdha2015_Ceremony_Data["PosX"][8] = 300
	tEidalAdha2015_Ceremony_Data["PosY"][8] = 371
	tEidalAdha2015_Ceremony_Data["NpcId"][8] = 16914
	
	--背包空间
	tEidalAdha2015_Ceremony_Data["ChkSpace"] = 1
	
	--花圃区域数据
	tEidalAdha2015_Ceremony_Data["CellxMid"] = 285
	tEidalAdha2015_Ceremony_Data["CellyMid"] = 370
	tEidalAdha2015_Ceremony_Data["Range"] = 20

	--河边区域数据
	tEidalAdha2015_Ceremony_Data["RiverCellxMid"] = 493
	tEidalAdha2015_Ceremony_Data["RiverCellyMid"] = 322
	tEidalAdha2015_Ceremony_Data["RiverRange"] = 5
	
	--读条数据
	tEidalAdha2015_Ceremony_Data["ExploreTime"] = 6
	tEidalAdha2015_Ceremony_Data["ExploreActionId"] = 220
	
	--光效
	tEidalAdha2015_Ceremony_Data["EffectObj"] = "self"
	tEidalAdha2015_Ceremony_Data["Effect_1"] = "zf2-e300"
	tEidalAdha2015_Ceremony_Data["Effect_2"] = "zf2-e280"
	tEidalAdha2015_Ceremony_Data["Effect_3"] = "accession2"
	
	--可领奖的完成任务数
	tEidalAdha2015_Ceremony_Data["TaskMin"] = 3
	tEidalAdha2015_Ceremony_Data["TaskMax"] = 6
------------------------------------------------------------------------------------
--活动LOG数据
local tEidalAdha2015_Ceremony_Log = {}
	--节日礼包
	tEidalAdha2015_Ceremony_Log["FestivalId"] = 3307
	tEidalAdha2015_Ceremony_Log["LogId"] = 10002246
	--任务阶段
	tEidalAdha2015_Ceremony_Log["Phase_1"] = "0,0,0,0,10002246,1[1],3004453,1"
	tEidalAdha2015_Ceremony_Log["Phase_2"] = "0,0,3004453,1,10002246,1[2],0,0"
	tEidalAdha2015_Ceremony_Log["Phase_3"] = "0,0,0,0,10002246,1[3],0,1"
	tEidalAdha2015_Ceremony_Log["Return"] = "0,0,0,0,10002246,2,3003625,1"
	tEidalAdha2015_Ceremony_Log["SpecialAward"] = "0,0,0,0,10002255,2,%d,1"
	--良品宝石礼包
	tEidalAdha2015_Ceremony_Log["Gemstone"] = "0,0,3004484,1,10002255,2,%d,1"
------------------------------------------------------------------------------------

--几率配置表
local tEidalAdha2015_Ceremony_Probabil = {}
	--会礼成功获得奖励概率
	tEidalAdha2015_Ceremony_Probabil[1] = {}
	tEidalAdha2015_Ceremony_Probabil[1][1] = {}
	tEidalAdha2015_Ceremony_Probabil[1][1]["ItemChanceSum"] = 100
	--70%的几率正常
	tEidalAdha2015_Ceremony_Probabil[1][1][1] = {}
	tEidalAdha2015_Ceremony_Probabil[1][1][1]["RandomItemChanceType"] = 2
	tEidalAdha2015_Ceremony_Probabil[1][1][1]["ItemChance"] = 70
	tEidalAdha2015_Ceremony_Probabil[1][1][1]["Item_1"] = 0
	--30%的几率额外获得1天祝福
	tEidalAdha2015_Ceremony_Probabil[1][1][2] = {}
	tEidalAdha2015_Ceremony_Probabil[1][1][2]["RandomItemChanceType"] = 2
	tEidalAdha2015_Ceremony_Probabil[1][1][2]["ItemChance"] = 30
	tEidalAdha2015_Ceremony_Probabil[1][1][2]["Item_1"] = 24 ---祝福时间直接在这个配

------------------------------------------逻辑部分-------------------------------------------
--所有活动完成函数
function EidalAdha2015_Ceremony_AllComplete()
	local nEventData2 = tEidalAdha2015_Ceremony_Stc[2]["EventData"]
	local nTypeData2 = tEidalAdha2015_Ceremony_Stc[2]["TypeData"]
	local nPhase2_1 = tEidalAdha2015_Ceremony_Stc[2]["Phase_1"]
	local nComplete2 = tEidalAdha2015_Ceremony_Stc[2]["Complete"]
	local nEventData3 = tEidalAdha2015_Ceremony_Stc[3]["EventData"]
	local nTypeData3 = tEidalAdha2015_Ceremony_Stc[3]["TypeData"]
	local nPhase3_6 = tEidalAdha2015_Ceremony_Stc[3]["Phase_6"]
	
	--是否完成所有任务
	if not Task_ChkStcValue(nEventData3,nTypeData3,">=",nPhase3_6) then
		
		--是否已有活动完成
		if Task_ChkStcValue(nEventData2,nTypeData2,">=",nPhase2_1) then
		
			--宰牲节活动完成个数+1
			Task_AddStatistic(nEventData2,nTypeData2,1,1)
		
			--是否已完成3个以上宰牲节活动
			if Task_ChkStcValue(nEventData2,nTypeData2,">=",nComplete2) then
				local nStcValue = Get_UserStatisticValue(nEventData2,nTypeData2)
				local sText = string.format(tEidalAdha2015_Ceremony_Text["Complete3Task"],nStcValue)
				Sys_MsgBox(sText,"EidalAdha2015_Ceremony_FindWay</N>8")
			end
			return
		end
	elseif not Task_StcInterval(nEventData3,nTypeData3,1,4) then
		return
	end
	
	--置掩码
	Task_SetStatistic(nEventData2,nTypeData2,nPhase2_1,1)
	Task_SetStcTimestamp(nEventData2,nTypeData2,0)
	Task_SetStatistic(nEventData3,nTypeData3,0,1)
	Task_SetStcTimestamp(nEventData3,nTypeData3,0)
end



--所有活动隔天清理
function EidalAdha2015_Ceremony_ResetAllStc()
	local nEventData = tEidalAdha2015_Ceremony_Stc[2]["EventData"]
	local nTypeData = tEidalAdha2015_Ceremony_Stc[2]["TypeData"]
	local nPhase_1 =  tEidalAdha2015_Ceremony_Stc[2]["Phase_1"]
	
	if Task_ChkStcValue(nEventData,nTypeData,">=",nPhase_1) then
		
		--是否隔天
		if Task_StcInterval(nEventData,nTypeData,1,4) then
			Task_SetStatistic(nEventData,nTypeData,0,1)
			Task_SetStcTimestamp(nEventData,nTypeData,0)
		end
	end
end



--寻路
function EidalAdha2015_Ceremony_FindWay(nNum)
	local nPosX = tEidalAdha2015_Ceremony_Data["PosX"][nNum]
	local nPosY = tEidalAdha2015_Ceremony_Data["PosY"][nNum]
	local nMapId = tEidalAdha2015_Ceremony_Data["MapId"]
	local nNpcId = tEidalAdha2015_Ceremony_Data["NpcId"][nNum]

	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
end



--领取清真肥皂
function EidalAdha2015_Ceremony_ReceiveSoap(nNpcId)
	--活动时间判断
	if not Sys_ChkFullTime(tEidalAdha2015_Ceremony_Data["Festival_NowTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	--判断掩码是否为零
	if Task_ChkStcValue(tEidalAdha2015_Ceremony_Stc[1]["EventData"],tEidalAdha2015_Ceremony_Stc[1]["TypeData"],"==",tEidalAdha2015_Ceremony_Stc[1]["Begin"]) then
		
		--判断是否等级不足
		if not User_JudgeLevelAndMetempsychosis(tEidalAdha2015_Ceremony_Data["MinLevel"],tEidalAdha2015_Ceremony_Data["MinMeto"]) then
			LinkNpcGossipFunc_New(nNpcId,"2-1")
			return
		end
		
		--第一次领取清真肥皂
		--判断是否有肥皂
		if Item_ChkItem(tEidalAdha2015_Ceremony_Data["SoapId"]) then
			
			--是否删除成功
			if not Item_DelItem(tEidalAdha2015_Ceremony_Data["SoapId"]) then
				return
			end

		--判断背包空间
		elseif not User_CheckLeftSpace(tEidalAdha2015_Ceremony_Data["ChkSpace"]) then
			LinkNpcGossipFunc_New(nNpcId,"2-2")
			return
		end
		
		--置掩码+打时间戳+给肥皂+打LOG+出对白
		Task_SetStatistic(tEidalAdha2015_Ceremony_Stc[1]["EventData"],tEidalAdha2015_Ceremony_Stc[1]["TypeData"],tEidalAdha2015_Ceremony_Stc[1]["Phase_1"],1)
		Task_SetStcTimestamp(tEidalAdha2015_Ceremony_Stc[1]["EventData"],tEidalAdha2015_Ceremony_Stc[1]["TypeData"],0)
		Item_AddItem(tEidalAdha2015_Ceremony_Data["SoapId"])
		Sys_SaveActionFestivalLog(tEidalAdha2015_Ceremony_Log["Phase_1"])
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		
	--非第一次补领
	elseif Task_ChkStcValue(tEidalAdha2015_Ceremony_Stc[1]["EventData"],tEidalAdha2015_Ceremony_Stc[1]["TypeData"],"==",tEidalAdha2015_Ceremony_Stc[1]["Phase_1"]) then
		
		--判断是否有肥皂
		if Item_ChkItem(tEidalAdha2015_Ceremony_Data["SoapId"]) then
			LinkNpcGossipFunc_New(nNpcId,"2-4")
			return
			
		--背包空间
		elseif not User_CheckLeftSpace(tEidalAdha2015_Ceremony_Data["ChkSpace"]) then
			LinkNpcGossipFunc_New(nNpcId,"2-2")
			return
			
		else --给肥皂+打LOG+出对白
			Item_AddItem(tEidalAdha2015_Ceremony_Data["SoapId"])
			Sys_SaveActionFestivalLog(tEidalAdha2015_Ceremony_Log["Phase_1"])
			LinkNpcGossipFunc_New(nNpcId,"2-3")
		end
	else
		LinkNpcGossipFunc_New(nNpcId,"2-5")
	end
end



--跪拜成功
function EidalAdha2015_Ceremony_CeremonySuccess(nUserId)
	--置掩码
	Task_SetStatistic(tEidalAdha2015_Ceremony_Stc[1]["EventData"],tEidalAdha2015_Ceremony_Stc[1]["TypeData"],tEidalAdha2015_Ceremony_Stc[1]["Phase_3"],1,nUserId)
	Task_SetStcTimestamp(tEidalAdha2015_Ceremony_Stc[1]["EventData"],tEidalAdha2015_Ceremony_Stc[1]["TypeData"],0,nUserId)
	Sys_SaveActionFestivalLog(tEidalAdha2015_Ceremony_Log["Phase_3"],nUserId)
	User_EffectAdd(tEidalAdha2015_Ceremony_Data["EffectObj"],tEidalAdha2015_Ceremony_Data["Effect_1"],nUserId)

	--跪拜会礼几率
	local flat,tItem = Probabil_RandomAward(tEidalAdha2015_Ceremony_Probabil[1],1)
	local nBless = tItem[1]["tAward"][1]["Item_1"]

	--70%几率正常
	if nBless == 0 then
		Sys_MsgBox(tEidalAdha2015_Ceremony_Text["CeremonySuccess1"],"EidalAdha2015_Ceremony_FindWay</N>2","NULL",nUserId)
		
	--30%几率获得1天祝福
	else
		User_AddBless(nBless,nUserId)
		Sys_MsgBox(tEidalAdha2015_Ceremony_Text["CeremonySuccess2"],"EidalAdha2015_Ceremony_FindWay</N>2","NULL",nUserId)
	end
end


-- 【跪拜会礼。】
function EidalAdha2015_Ceremony_Ceremony(nNpcId)

	--活动时间判断
	if not Sys_ChkFullTime(tEidalAdha2015_Ceremony_Data["Festival_NowTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end

	--是否完成净身
	if not Task_ChkStcValue(tEidalAdha2015_Ceremony_Stc[1]["EventData"],tEidalAdha2015_Ceremony_Stc[1]["TypeData"],">=",tEidalAdha2015_Ceremony_Stc[1]["Phase_2"]) then
		Sys_MsgBox(tEidalAdha2015_Ceremony_Text["CeremonyFail"])
		return
	end
	
	--区域判断
	local nUserPosX = Get_UserPositionX()
	local nUserPosY = Get_UserPositionY()
	local nCellxMid = tEidalAdha2015_Ceremony_Data["CellxMid"]
	local nCellyMid = tEidalAdha2015_Ceremony_Data["CellyMid"]
	local nRange = tEidalAdha2015_Ceremony_Data["Range"]

	--与花圃中心距离是否超过20
	if math.abs(nUserPosX - nCellxMid) > nRange or math.abs(nUserPosY - nCellyMid) > nRange then
		Sys_MsgBox(tEidalAdha2015_Ceremony_Text["OutRrange"])
		return
	end
	
	local nSecs = tEidalAdha2015_Ceremony_Data["ExploreTime"]
	local sContent = tEidalAdha2015_Ceremony_Text["ExploreText"]
	local nActionId = tEidalAdha2015_Ceremony_Data["ExploreActionId"]

	--成功
	User_SetExplore(nSecs,sContent,nActionId,"EidalAdha2015_Ceremony_CeremonySuccess")
end


-- 【领取回礼。】
function EidalAdha2015_Ceremony_Return(nNpcId)
	--活动时间判断
	if not Sys_ChkFullTime(tEidalAdha2015_Ceremony_Data["Festival_NowTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	--是否完成跪拜会礼
	if not Task_ChkStcValue(tEidalAdha2015_Ceremony_Stc[1]["EventData"],tEidalAdha2015_Ceremony_Stc[1]["TypeData"],">=",tEidalAdha2015_Ceremony_Stc[1]["Phase_3"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	
	--是否完成收回礼
	if Task_ChkStcValue(tEidalAdha2015_Ceremony_Stc[1]["EventData"],tEidalAdha2015_Ceremony_Stc[1]["TypeData"],">=",tEidalAdha2015_Ceremony_Stc[1]["Complete"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	local nItemId = tEidalAdha2015_Ceremony_Data["SoapId"]
	--是否有肥皂+有则删除
	if Item_ChkItem(nItemId) and not Item_DelItem(nItemId) then
		return
	end

	--判断背包空间
	if not User_CheckLeftSpace(tEidalAdha2015_Ceremony_Data["ChkSpace"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-3")
		return
	end
	
	--给奖
	Task_SetStatistic(tEidalAdha2015_Ceremony_Stc[1]["EventData"],tEidalAdha2015_Ceremony_Stc[1]["TypeData"],tEidalAdha2015_Ceremony_Stc[1]["Complete"],1)
	Task_SetStcTimestamp(tEidalAdha2015_Ceremony_Stc[1]["EventData"],tEidalAdha2015_Ceremony_Stc[1]["TypeData"],0)

	User_EffectAdd(tEidalAdha2015_Ceremony_Data["EffectObj"],tEidalAdha2015_Ceremony_Data["Effect_2"])
	FestivalGeneralPackage_GetGift(tEidalAdha2015_Ceremony_Log["FestivalId"],tEidalAdha2015_Ceremony_Log["LogId"])
	Sys_SaveActionFestivalLog(tEidalAdha2015_Ceremony_Log["Return"])
	
	--所有活动完成函数
	EidalAdha2015_Ceremony_AllComplete()
	LinkNpcGossipFunc_New(nNpcId,"3-4")
end



---------------------- //宰牲节活动宣传大使班尔纳 --------------------
-- 【领取3,4,5,6任务奖励】
function EidalAdha2015_Ceremony_CompleteNum(nNpcId,nTaskNum)

	--活动时间判断
	if not Sys_ChkFullTime(tEidalAdha2015_Ceremony_Data["Festival_NowTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end

	--判断背包空间
	if nTaskNum >= tEidalAdha2015_Ceremony_Stc[3]["Phase_6"] then
		--节日礼包的空间
		if not User_CheckLeftSpace(tEidalAdha2015_Ceremony_Data["SpecialAward"][nTaskNum]) then
			LinkNpcGossipFunc_New(nNpcId,"3-1")
			return
		end
		
	--其他奖励的空间
	elseif not User_CheckLeftSpace(tEidalAdha2015_Ceremony_Data["ChkSpace"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end

	--置掩码+获得奖励+打LOG+提示(奖励修改,且完成6个任务时,会获得3个节日欢庆礼包)
	Task_SetStatistic(tEidalAdha2015_Ceremony_Stc[3]["EventData"],tEidalAdha2015_Ceremony_Stc[3]["TypeData"],nTaskNum,1)
	Task_SetStcTimestamp(tEidalAdha2015_Ceremony_Stc[3]["EventData"],tEidalAdha2015_Ceremony_Stc[3]["TypeData"],0)
	if nTaskNum <= tEidalAdha2015_Ceremony_Stc[3]["Phase_5"] then
		Item_AddItem(tEidalAdha2015_Ceremony_Data["SpecialAward"][nTaskNum])
		Sys_SaveActionFestivalLog(string.format(tEidalAdha2015_Ceremony_Log["SpecialAward"],tEidalAdha2015_Ceremony_Data["SpecialAward"][nTaskNum]))
	elseif nTaskNum >= tEidalAdha2015_Ceremony_Stc[3]["Phase_6"] then
		for i = 1,tEidalAdha2015_Ceremony_Data["SpecialAward"][nTaskNum] do
			FestivalGeneralPackage_GetGift(tEidalAdha2015_Ceremony_Log["FestivalId"],tEidalAdha2015_Ceremony_Log["LogId"])
			Sys_SaveActionFestivalLog(tEidalAdha2015_Ceremony_Log["Return"])
		end
	end
	
	--领取奖励时,光效zf2-e300
	User_EffectAdd(tEidalAdha2015_Ceremony_Data["EffectObj"],tEidalAdha2015_Ceremony_Data["Effect_1"])
	--对白
	local sDialogText = string.format(tEidalAdha2015_Ceremony_Text[nNpcId]["Text321"],nTaskNum,tEidalAdha2015_Ceremony_Text["SpecialAwardName"][nTaskNum])
	Sys_DialogText(sDialogText)
	Sys_DialogOption(tEidalAdha2015_Ceremony_Text[nNpcId]["Option32"], "</F>EidalAdha2015_Ceremony_SuperAward</N>".. nNpcId)
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
	
	--2005提示
	local sTalkText = string.format(tEidalAdha2015_Ceremony_Text["SpecialAward"],tEidalAdha2015_Ceremony_Text["SpecialAwardName"][nTaskNum])
	User_TalkChannel2005(sTalkText)
end



-- 【我要领取特别奖励！】
function EidalAdha2015_Ceremony_SuperAward(nNpcId)
	--活动时间判断
	if not Sys_ChkFullTime(tEidalAdha2015_Ceremony_Data["Festival_NowTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end

	for nTaskNum = tEidalAdha2015_Ceremony_Data["TaskMin"],tEidalAdha2015_Ceremony_Data["TaskMax"] do
		--是否已领取完成nTaskNum个任务的奖励
		if not Task_ChkStcValue(tEidalAdha2015_Ceremony_Stc[3]["EventData"],tEidalAdha2015_Ceremony_Stc[3]["TypeData"],">=",nTaskNum) then
		
			--是否完成nTaskNum个任务
			if Task_ChkStcValue(tEidalAdha2015_Ceremony_Stc[2]["EventData"],tEidalAdha2015_Ceremony_Stc[2]["TypeData"],">=",nTaskNum) then
				local sDialogText = string.format(tEidalAdha2015_Ceremony_Text[nNpcId]["Text211"],nTaskNum,tEidalAdha2015_Ceremony_Text["SpecialAwardName"][nTaskNum])
				local sFunc = string.format("</F>EidalAdha2015_Ceremony_CompleteNum</N>%d</N>%d",nNpcId,nTaskNum)
				Sys_DialogText(sDialogText)
				Sys_DialogOption(tEidalAdha2015_Ceremony_Text[nNpcId]["Option21"], sFunc)
			
			--未完成nTaskNum个任务
			else
				local sDialogText = string.format(tEidalAdha2015_Ceremony_Text[nNpcId]["Text221"],nTaskNum,nTaskNum,tEidalAdha2015_Ceremony_Text["SpecialAwardName"][nTaskNum])
				Sys_DialogText(sDialogText)
				Sys_DialogOption(tEidalAdha2015_Ceremony_Text[nNpcId]["Option22"], "</F>NULL")
			end
			Sys_DialogFace(nNpcId)
			Sys_DialogEnd()
			return
		end
	end
	
	--全部都已领取
	LinkNpcGossipFunc_New(nNpcId,"2-3")
end


-- 【活动详情】
function EidalAdha2015_Ceremony_EventDetails(nNpcId,nTextNum)
	LinkNpcGossipFunc_New(nNpcId,"7-".. nTextNum)
end



---------------------- //物品 良品宝石礼包 逻辑--------------------
--获得相应良品宝石
function EidalAdha2015_Ceremony_Gemstone(nItemId,StoneNum)
	--是否存在礼包
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId)then
		--获得宝石
		Item_AddItem(tEidalAdha2015_Ceremony_Data["Gemstone"][StoneNum])
		Sys_SaveActionFestivalLog(string.format(tEidalAdha2015_Ceremony_Log["Gemstone"],tEidalAdha2015_Ceremony_Data["Gemstone"][StoneNum]))
		Sys_MsgBox(tEidalAdha2015_Ceremony_Text["Gemstone"][StoneNum])
	end
end



------------------------------------------NPC头像-------------------------------------------
tNpcFace[3104] = 218
tNpcFace[3131] = 33
------------------------------------------NPC对话-------------------------------------------

---------------------- //阿訇 --------------------
tNpcGossip[16889] = tNpcGossip[16889] or DefaultNpc:new{}
tNpcGossip[16889]["OptionHidden"] = 1

-- 【起始对白】
tNpcGossip[16889]["Text1-1"] = {111,112,113} 		-- 活动时间前
tNpcGossip[16889]["Text1-2"] = {121} 				-- 活动时间后
tNpcGossip[16889]["Text1-3"] = {131,132,133} 		-- 活动时间中
-- 活动前
tNpcGossip[16889]["Text111"] = tEidalAdha2015_Ceremony_Text[16889]["Text111"]
tNpcGossip[16889]["Text112"] = tEidalAdha2015_Ceremony_Text[16889]["Text112"]
tNpcGossip[16889]["Text113"] = tEidalAdha2015_Ceremony_Text[16889]["Text113"]
tNpcGossip[16889]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tEidalAdha2015_Ceremony_Data["Festival_BefTime"])
end
-- 活动后
tNpcGossip[16889]["Text121"] = tEidalAdha2015_Ceremony_Text[16889]["Text121"]
tNpcGossip[16889]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tEidalAdha2015_Ceremony_Data["Festival_NowTime"])
end
-- 活动中
tNpcGossip[16889]["Text131"] = tEidalAdha2015_Ceremony_Text[16889]["Text131"]
tNpcGossip[16889]["Text132"] = tEidalAdha2015_Ceremony_Text[16889]["Text132"]
tNpcGossip[16889]["Text133"] = tEidalAdha2015_Ceremony_Text[16889]["Text133"]
--选项
tNpcGossip[16889]["tOption1-1"] = {11}				-- 活动时间前
tNpcGossip[16889]["tOption1-2"] = {12}				-- 活动时间后
tNpcGossip[16889]["tOption1-3"] = {13,14,15,16,17}		-- 活动时间中
tNpcGossip[16889]["Option11"] = tEidalAdha2015_Ceremony_Text[16889]["Option11"]
tNpcGossip[16889]["Option12"] = tEidalAdha2015_Ceremony_Text[16889]["Option12"]
tNpcGossip[16889]["Option13"] = tEidalAdha2015_Ceremony_Text[16889]["Option13"]
tNpcGossip[16889]["OptionChkFunc13"] = function ()
	local nEventData = tEidalAdha2015_Ceremony_Stc[1]["EventData"]
	local nTypeData = tEidalAdha2015_Ceremony_Stc[1]["TypeData"]
	local nComplete = tEidalAdha2015_Ceremony_Stc[1]["Complete"]
	local nPhase_2 = tEidalAdha2015_Ceremony_Stc[1]["Phase_2"]
	
	--判断是否已领取奖励
	if Task_ChkStcValue(nEventData,nTypeData,">=",nComplete) then
		
		--是否隔天
		if Task_StcInterval(nEventData,nTypeData,1,4) then
			Task_SetStatistic(nEventData,nTypeData,0,1)
			Task_SetStcTimestamp(nEventData,nTypeData,0)
			EidalAdha2015_Ceremony_ResetAllStc()
			return true
		end
		
	--判断是否完成净身
	elseif not Task_ChkStcValue(nEventData,nTypeData,">=",nPhase_2) then
		return true
	else
		return false
	end
end
tNpcGossip[16889]["Option14"] = tEidalAdha2015_Ceremony_Text[16889]["Option14"]
tNpcGossip[16889]["OptionChkFunc14"] = function ()
	return not Task_ChkStcValue(tEidalAdha2015_Ceremony_Stc[1]["EventData"],tEidalAdha2015_Ceremony_Stc[1]["TypeData"],">=",tEidalAdha2015_Ceremony_Stc[1]["Phase_3"])
end
tNpcGossip[16889]["Option15"] = tEidalAdha2015_Ceremony_Text[16889]["Option15"]
tNpcGossip[16889]["Option16"] = tEidalAdha2015_Ceremony_Text[16889]["Option16"]
tNpcGossip[16889]["Option17"] = tEidalAdha2015_Ceremony_Text[16889]["Option17"]
tNpcGossip[16889]["OptionFunc13"] = "EidalAdha2015_Ceremony_ReceiveSoap</N>16889"
tNpcGossip[16889]["OptionFunc14"] = "EidalAdha2015_Ceremony_Ceremony</N>16889"
tNpcGossip[16889]["OptionFunc15"] = "EidalAdha2015_Ceremony_Return</N>16889"
tNpcGossip[16889]["OptionPoint16"] = "4"


-- 【领取清真肥皂。】
tNpcGossip[16889]["Text2-1"] = {211,212} 	--等级不足提示
tNpcGossip[16889]["Text2-2"] = {221} 		--背包空间不足
tNpcGossip[16889]["Text2-3"] = {231,232} 	--成功领取肥皂
tNpcGossip[16889]["Text2-4"] = {241} 		--身上已经有肥皂
tNpcGossip[16889]["Text2-5"] = {251} 		--已完成净身
tNpcGossip[16889]["Text211"] = tEidalAdha2015_Ceremony_Text[16889]["Text211"]
tNpcGossip[16889]["Text212"] = tEidalAdha2015_Ceremony_Text[16889]["Text212"]
tNpcGossip[16889]["Text221"] = tEidalAdha2015_Ceremony_Text[16889]["Text221"]
tNpcGossip[16889]["Text231"] = tEidalAdha2015_Ceremony_Text[16889]["Text231"]
tNpcGossip[16889]["Text232"] = tEidalAdha2015_Ceremony_Text[16889]["Text232"]
tNpcGossip[16889]["Text241"] = tEidalAdha2015_Ceremony_Text[16889]["Text241"]
tNpcGossip[16889]["Text251"] = tEidalAdha2015_Ceremony_Text[16889]["Text251"]
--选项
tNpcGossip[16889]["tOption2-1"] = {21}
tNpcGossip[16889]["tOption2-2"] = {22}
tNpcGossip[16889]["tOption2-3"] = {23}
tNpcGossip[16889]["tOption2-4"] = {24}
tNpcGossip[16889]["tOption2-5"] = {25}
tNpcGossip[16889]["Option21"] = tEidalAdha2015_Ceremony_Text[16889]["Option21"]
tNpcGossip[16889]["Option22"] = tEidalAdha2015_Ceremony_Text[16889]["Option22"]
tNpcGossip[16889]["Option23"] = tEidalAdha2015_Ceremony_Text[16889]["Option23"]
tNpcGossip[16889]["Option24"] = tEidalAdha2015_Ceremony_Text[16889]["Option24"]
tNpcGossip[16889]["Option25"] = tEidalAdha2015_Ceremony_Text[16889]["Option25"]
tNpcGossip[16889]["OptionFunc23"] = "EidalAdha2015_Ceremony_FindWay</N>1"


-- 【领取回礼。】
tNpcGossip[16889]["Text3-1"] = {311} 		--未完成跪拜会礼
tNpcGossip[16889]["Text3-2"] = {321}		--已完成收回礼
tNpcGossip[16889]["Text3-3"] = {331}		--背包空间不足
tNpcGossip[16889]["Text3-4"] = {341}		--完成领取回礼
tNpcGossip[16889]["Text311"] = tEidalAdha2015_Ceremony_Text[16889]["Text311"]
tNpcGossip[16889]["Text321"] = tEidalAdha2015_Ceremony_Text[16889]["Text321"]
tNpcGossip[16889]["Text331"] = tEidalAdha2015_Ceremony_Text[16889]["Text331"]
tNpcGossip[16889]["Text341"] = tEidalAdha2015_Ceremony_Text[16889]["Text341"]
--选项
tNpcGossip[16889]["tOption3-1"] = {31}
tNpcGossip[16889]["tOption3-2"] = {32}
tNpcGossip[16889]["tOption3-3"] = {33}
tNpcGossip[16889]["tOption3-4"] = {34}
tNpcGossip[16889]["Option31"] = tEidalAdha2015_Ceremony_Text[16889]["Option31"]
tNpcGossip[16889]["Option32"] = tEidalAdha2015_Ceremony_Text[16889]["Option32"]
tNpcGossip[16889]["Option33"] = tEidalAdha2015_Ceremony_Text[16889]["Option33"]
tNpcGossip[16889]["Option34"] = tEidalAdha2015_Ceremony_Text[16889]["Option34"]


-- 【我要怎么做？】
tNpcGossip[16889]["Text4-1"] = {411,412,413} 	--说明内容
tNpcGossip[16889]["Text411"] = tEidalAdha2015_Ceremony_Text[16889]["Text411"]
tNpcGossip[16889]["Text412"] = tEidalAdha2015_Ceremony_Text[16889]["Text412"]
tNpcGossip[16889]["Text413"] = tEidalAdha2015_Ceremony_Text[16889]["Text413"]
--选项
tNpcGossip[16889]["tOption4-1"] = {41}
tNpcGossip[16889]["Option41"] = tEidalAdha2015_Ceremony_Text[16889]["Option41"]





---------------------- //宰牲节活动宣传大使班尔纳 --------------------
tNpcGossip[16914] = tNpcGossip[16914] or DefaultNpc:new{}
tNpcGossip[16914]["OptionHidden"] = 1
-- 【起始对白】
tNpcGossip[16914]["Text1-1"] = {111,112,113,114} 	-- 活动时间前
tNpcGossip[16914]["Text1-2"] = {121} 				-- 活动时间后
tNpcGossip[16914]["Text1-3"] = {131,132,133,134} 		-- 活动时间中
-- 活动前
tNpcGossip[16914]["Text111"] = tEidalAdha2015_Ceremony_Text[16914]["Text111"]
tNpcGossip[16914]["Text112"] = tEidalAdha2015_Ceremony_Text[16914]["Text112"]
tNpcGossip[16914]["Text113"] = tEidalAdha2015_Ceremony_Text[16914]["Text113"]
tNpcGossip[16914]["Text114"] = tEidalAdha2015_Ceremony_Text[16914]["Text114"]
tNpcGossip[16914]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tEidalAdha2015_Ceremony_Data["Festival_BefTime"])
end
-- 活动后
tNpcGossip[16914]["Text121"] = tEidalAdha2015_Ceremony_Text[16914]["Text121"]
tNpcGossip[16914]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tEidalAdha2015_Ceremony_Data["Festival_NowTime"])
end
-- 活动中
tNpcGossip[16914]["Text131"] = tEidalAdha2015_Ceremony_Text[16914]["Text131"]
tNpcGossip[16914]["Text132"] = tEidalAdha2015_Ceremony_Text[16914]["Text132"]
tNpcGossip[16914]["Text133"] = tEidalAdha2015_Ceremony_Text[16914]["Text133"]
tNpcGossip[16914]["Text134"] = tEidalAdha2015_Ceremony_Text[16914]["Text134"]
--选项
tNpcGossip[16914]["tOption1-1"] = {11}				-- 活动时间前
tNpcGossip[16914]["tOption1-2"] = {12}				-- 活动时间后
tNpcGossip[16914]["tOption1-3"] = {13,14,15,16}		-- 活动时间中
tNpcGossip[16914]["Option11"] = tEidalAdha2015_Ceremony_Text[16914]["Option11"]
tNpcGossip[16914]["Option12"] = tEidalAdha2015_Ceremony_Text[16914]["Option12"]
tNpcGossip[16914]["Option13"] = tEidalAdha2015_Ceremony_Text[16914]["Option13"]
tNpcGossip[16914]["OptionChkFunc13"] = function ()
	--是否领取特别奖励
	if not Task_ChkStcValue(tEidalAdha2015_Ceremony_Stc[3]["EventData"],tEidalAdha2015_Ceremony_Stc[3]["TypeData"],">=",tEidalAdha2015_Ceremony_Stc[3]["Phase_6"]) then
		return true
	end

	--是否隔天
	if Task_StcInterval(tEidalAdha2015_Ceremony_Stc[3]["EventData"],tEidalAdha2015_Ceremony_Stc[3]["TypeData"],1,4) then
		Task_SetStatistic(tEidalAdha2015_Ceremony_Stc[3]["EventData"],tEidalAdha2015_Ceremony_Stc[3]["TypeData"],0,1)
		Task_SetStcTimestamp(tEidalAdha2015_Ceremony_Stc[3]["EventData"],tEidalAdha2015_Ceremony_Stc[3]["TypeData"],0)
		Task_SetStatistic(tEidalAdha2015_Ceremony_Stc[2]["EventData"],tEidalAdha2015_Ceremony_Stc[2]["TypeData"],0,1)
		Task_SetStcTimestamp(tEidalAdha2015_Ceremony_Stc[2]["EventData"],tEidalAdha2015_Ceremony_Stc[2]["TypeData"],0)
	end
	
	return true
end
tNpcGossip[16914]["Option14"] = tEidalAdha2015_Ceremony_Text[16914]["Option14"]
tNpcGossip[16914]["Option15"] = tEidalAdha2015_Ceremony_Text[16914]["Option15"]
tNpcGossip[16914]["Option16"] = tEidalAdha2015_Ceremony_Text[16914]["Option16"]
tNpcGossip[16914]["OptionFunc13"] = "EidalAdha2015_Ceremony_SuperAward</N>16914"
tNpcGossip[16914]["OptionPoint14"] = "6"
tNpcGossip[16914]["OptionPoint15"] = "4"


-- 【我要领取特别奖励！】
tNpcGossip[16914]["Text2-1"] = {211} 		--已完成N个任务
tNpcGossip[16914]["Text2-2"] = {221} 		--未完成N个任务
tNpcGossip[16914]["Text2-3"] = {231} 		--全部都已领取
tNpcGossip[16914]["Text211"] = tEidalAdha2015_Ceremony_Text[16914]["Text211"]
tNpcGossip[16914]["Text221"] = tEidalAdha2015_Ceremony_Text[16914]["Text221"]
tNpcGossip[16914]["Text231"] = tEidalAdha2015_Ceremony_Text[16914]["Text231"]
tNpcGossip[16914]["tOption2-3"] = {23}
tNpcGossip[16914]["Option23"] = tEidalAdha2015_Ceremony_Text[16914]["Option23"]


-- 【3,4,5,6个。】
tNpcGossip[16914]["Text3-1"] = {311} 		-- 背包空间不足
tNpcGossip[16914]["Text3-2"] = {321} 		-- 领取N个任务奖励
tNpcGossip[16914]["Text311"] = tEidalAdha2015_Ceremony_Text[16914]["Text311"]
tNpcGossip[16914]["Text321"] = tEidalAdha2015_Ceremony_Text[16914]["Text321"]

--选项
tNpcGossip[16914]["tOption3-1"] = {31}		--背包空间不足
tNpcGossip[16914]["tOption3-2"] = {32}		--领取N个任务奖励
tNpcGossip[16914]["Option31"] = tEidalAdha2015_Ceremony_Text[16914]["Option31"]
tNpcGossip[16914]["Option32"] = tEidalAdha2015_Ceremony_Text[16914]["Option32"]




-- 【了解特别奖励。】
tNpcGossip[16914]["Text4-1"] = {411}
tNpcGossip[16914]["Text411"] = tEidalAdha2015_Ceremony_Text[16914]["Text411"]
--选项
tNpcGossip[16914]["tOption4-1"] = {41,42}
tNpcGossip[16914]["Option41"] = tEidalAdha2015_Ceremony_Text[16914]["Option41"]
tNpcGossip[16914]["Option42"] = tEidalAdha2015_Ceremony_Text[16914]["Option42"]
tNpcGossip[16914]["OptionPoint41"] = "5"

-- 【都有什么奖励？】
tNpcGossip[16914]["Text5-1"] = {511,512}
tNpcGossip[16914]["Text511"] = tEidalAdha2015_Ceremony_Text[16914]["Text511"]
tNpcGossip[16914]["Text512"] = tEidalAdha2015_Ceremony_Text[16914]["Text512"]
tNpcGossip[16914]["tOption5-1"] = {51}
tNpcGossip[16914]["Option51"] = tEidalAdha2015_Ceremony_Text[16914]["Option51"]

-- 【请告诉我宰牲节活动详情。】
tNpcGossip[16914]["Text6-1"] = {611,612} 		-- 未完成相关个数任务
tNpcGossip[16914]["Text611"] = tEidalAdha2015_Ceremony_Text[16914]["Text611"]
tNpcGossip[16914]["Text612"] = tEidalAdha2015_Ceremony_Text[16914]["Text612"]
--选项
tNpcGossip[16914]["tOption6-1"] = {61,62,63,64,65,66,67,68}
tNpcGossip[16914]["Option61"] = tEidalAdha2015_Ceremony_Text[16914]["Option61"]
tNpcGossip[16914]["Option62"] = tEidalAdha2015_Ceremony_Text[16914]["Option62"]
tNpcGossip[16914]["Option63"] = tEidalAdha2015_Ceremony_Text[16914]["Option63"]
tNpcGossip[16914]["Option64"] = tEidalAdha2015_Ceremony_Text[16914]["Option64"]
tNpcGossip[16914]["Option65"] = tEidalAdha2015_Ceremony_Text[16914]["Option65"]
tNpcGossip[16914]["Option66"] = tEidalAdha2015_Ceremony_Text[16914]["Option66"]
tNpcGossip[16914]["Option67"] = tEidalAdha2015_Ceremony_Text[16914]["Option67"]
tNpcGossip[16914]["Option68"] = tEidalAdha2015_Ceremony_Text[16914]["Option68"]
tNpcGossip[16914]["OptionFunc61"] = "EidalAdha2015_Ceremony_EventDetails</N>16914</N>1"
tNpcGossip[16914]["OptionFunc62"] = "EidalAdha2015_Ceremony_EventDetails</N>16914</N>2"
tNpcGossip[16914]["OptionFunc63"] = "EidalAdha2015_Ceremony_EventDetails</N>16914</N>3"
tNpcGossip[16914]["OptionFunc64"] = "EidalAdha2015_Ceremony_EventDetails</N>16914</N>4"
tNpcGossip[16914]["OptionFunc65"] = "EidalAdha2015_Ceremony_EventDetails</N>16914</N>5"
tNpcGossip[16914]["OptionFunc66"] = "EidalAdha2015_Ceremony_EventDetails</N>16914</N>6"
tNpcGossip[16914]["OptionFunc67"] = "EidalAdha2015_Ceremony_EventDetails</N>16914</N>7"



-- 【活动详情】
tNpcGossip[16914]["Text7-1"] = {711,712} --会礼
tNpcGossip[16914]["Text7-2"] = {721,722} --捉拿牛怪
tNpcGossip[16914]["Text7-3"] = {731,732} --真主祭品
tNpcGossip[16914]["Text7-4"] = {741,742} --土豪磊的馈赠
tNpcGossip[16914]["Text7-5"] = {751,752} --羊肉大烧烤
tNpcGossip[16914]["Text7-6"] = {761,762} --美食的聚会
tNpcGossip[16914]["Text7-7"] = {771,772} --节日大放送
tNpcGossip[16914]["Text711"] = tEidalAdha2015_Ceremony_Text[16914]["Text711"]
tNpcGossip[16914]["Text712"] = tEidalAdha2015_Ceremony_Text[16914]["Text712"]
tNpcGossip[16914]["Text721"] = tEidalAdha2015_Ceremony_Text[16914]["Text721"]
tNpcGossip[16914]["Text722"] = tEidalAdha2015_Ceremony_Text[16914]["Text722"]
tNpcGossip[16914]["Text731"] = tEidalAdha2015_Ceremony_Text[16914]["Text731"]
tNpcGossip[16914]["Text732"] = tEidalAdha2015_Ceremony_Text[16914]["Text732"]
tNpcGossip[16914]["Text741"] = tEidalAdha2015_Ceremony_Text[16914]["Text741"]
tNpcGossip[16914]["Text742"] = tEidalAdha2015_Ceremony_Text[16914]["Text742"]
tNpcGossip[16914]["Text751"] = tEidalAdha2015_Ceremony_Text[16914]["Text751"]
tNpcGossip[16914]["Text752"] = tEidalAdha2015_Ceremony_Text[16914]["Text752"]
tNpcGossip[16914]["Text761"] = tEidalAdha2015_Ceremony_Text[16914]["Text761"]
tNpcGossip[16914]["Text762"] = tEidalAdha2015_Ceremony_Text[16914]["Text762"]
tNpcGossip[16914]["Text771"] = tEidalAdha2015_Ceremony_Text[16914]["Text771"]
tNpcGossip[16914]["Text772"] = tEidalAdha2015_Ceremony_Text[16914]["Text772"]
--选项
tNpcGossip[16914]["tOption7-1"] = {71,77}
tNpcGossip[16914]["tOption7-2"] = {72,77}
tNpcGossip[16914]["tOption7-3"] = {73,77}
tNpcGossip[16914]["tOption7-4"] = {74,77}
tNpcGossip[16914]["tOption7-5"] = {75,77}
tNpcGossip[16914]["tOption7-6"] = {76,77}
tNpcGossip[16914]["tOption7-7"] = {78}
tNpcGossip[16914]["Option71"] = tEidalAdha2015_Ceremony_Text[16914]["Option71"]
tNpcGossip[16914]["Option72"] = tEidalAdha2015_Ceremony_Text[16914]["Option72"]
tNpcGossip[16914]["Option73"] = tEidalAdha2015_Ceremony_Text[16914]["Option73"]
tNpcGossip[16914]["Option74"] = tEidalAdha2015_Ceremony_Text[16914]["Option74"]
tNpcGossip[16914]["Option75"] = tEidalAdha2015_Ceremony_Text[16914]["Option75"]
tNpcGossip[16914]["Option76"] = tEidalAdha2015_Ceremony_Text[16914]["Option76"]
tNpcGossip[16914]["Option77"] = tEidalAdha2015_Ceremony_Text[16914]["Option77"]
tNpcGossip[16914]["Option78"] = tEidalAdha2015_Ceremony_Text[16914]["Option78"]
tNpcGossip[16914]["OptionFunc71"] = "EidalAdha2015_Ceremony_FindWay</N>2"
tNpcGossip[16914]["OptionFunc72"] = "EidalAdha2015_Ceremony_FindWay</N>3"
tNpcGossip[16914]["OptionFunc73"] = "EidalAdha2015_Ceremony_FindWay</N>4"
tNpcGossip[16914]["OptionFunc74"] = "EidalAdha2015_Ceremony_FindWay</N>5"
tNpcGossip[16914]["OptionFunc75"] = "EidalAdha2015_Ceremony_FindWay</N>6"
tNpcGossip[16914]["OptionFunc76"] = "EidalAdha2015_Ceremony_FindWay</N>7"
tNpcGossip[16914]["OptionPoint77"] = "6"



------------------------------------------物品配置-------------------------------------------
------------------------------------------
-- // ==清真肥皂== \\
tItem[3004453] = tItem[3004453] or {}
tItem[3004453]["Function"] = function (nItemId,sItemName)
	--活动时间判断
	if not Sys_ChkFullTime(tEidalAdha2015_Ceremony_Data["Festival_NowTime"]) then
		--删除肥皂
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_TalkChannel2005(tEidalAdha2015_Ceremony_Text["ItemOverdue"])
		end
		return
	end

	--是否完成净身
	if Task_ChkStcValue(tEidalAdha2015_Ceremony_Stc[1]["EventData"],tEidalAdha2015_Ceremony_Stc[1]["TypeData"],">=",tEidalAdha2015_Ceremony_Stc[1]["Phase_2"]) then
		--删除肥皂
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_TalkChannel2005(tEidalAdha2015_Ceremony_Text["BeComplete"])
		end
		return
	end

	--是否领过任务
	if not Task_ChkStcValue(tEidalAdha2015_Ceremony_Stc[1]["EventData"],tEidalAdha2015_Ceremony_Stc[1]["TypeData"],"==",tEidalAdha2015_Ceremony_Stc[1]["Phase_1"]) then
		return
	end
	
	--区域判断
	local nUserPosX = Get_UserPositionX()
	local nUserPosY = Get_UserPositionY()
	local nCellxMid = tEidalAdha2015_Ceremony_Data["RiverCellxMid"]
	local nCellyMid = tEidalAdha2015_Ceremony_Data["RiverCellyMid"]
	local nRange = tEidalAdha2015_Ceremony_Data["RiverRange"]

	--与花圃中心距离是否超过20
	if math.abs(nUserPosX - nCellxMid) > nRange or math.abs(nUserPosY - nCellyMid) > nRange then
		Sys_MsgBox(tEidalAdha2015_Ceremony_Text["OutRiverRange"],"EidalAdha2015_Ceremony_FindWay</N>1")
		return
	end
	
	--删除肥皂
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		--成功使用+置掩码+播光效+LOG+提示+确定导航
		Task_SetStatistic(tEidalAdha2015_Ceremony_Stc[1]["EventData"],tEidalAdha2015_Ceremony_Stc[1]["TypeData"],tEidalAdha2015_Ceremony_Stc[1]["Phase_2"],1)
		Task_SetStcTimestamp(tEidalAdha2015_Ceremony_Stc[1]["EventData"],tEidalAdha2015_Ceremony_Stc[1]["TypeData"],0)
		User_EffectAdd(tEidalAdha2015_Ceremony_Data["EffectObj"],tEidalAdha2015_Ceremony_Data["Effect_3"])
		Sys_SaveActionFestivalLog(tEidalAdha2015_Ceremony_Log["Phase_2"])
		Sys_MsgBox(tEidalAdha2015_Ceremony_Text["CompleteBathe"],"EidalAdha2015_Ceremony_FindWay</N>2")
	end
end



-- // ==良品宝石礼包== \\
tItemFace[3004484] = 670
tItem[3004484] = tItem[3004484] or {}

tItem[3004484]["Text1-1"] = {111}
tItem[3004484]["Text111"] = tEidalAdha2015_Ceremony_Text[3004484]["Text111"]
tItem[3004484]["tOption1-1"] = {11,12,13,14}
tItem[3004484]["Option11"] = tEidalAdha2015_Ceremony_Text[3004484]["Option11"]
tItem[3004484]["Option12"] = tEidalAdha2015_Ceremony_Text[3004484]["Option12"]
tItem[3004484]["Option13"] = tEidalAdha2015_Ceremony_Text[3004484]["Option13"]
tItem[3004484]["Option14"] = tEidalAdha2015_Ceremony_Text[3004484]["Option14"]
tItem[3004484]["OptionPoint11"] = "2"
tItem[3004484]["OptionPoint12"] = "3"
tItem[3004484]["OptionPoint13"] = "4"

--【良品龙恨宝石。】
tItem[3004484]["Text2-1"] = {211}
tItem[3004484]["Text211"] = tEidalAdha2015_Ceremony_Text[3004484]["Text211"]
tItem[3004484]["tOption2-1"] = {21,22}
tItem[3004484]["Option21"] = tEidalAdha2015_Ceremony_Text[3004484]["Option21"]
tItem[3004484]["Option22"] = tEidalAdha2015_Ceremony_Text[3004484]["Option22"]
tItem[3004484]["OptionFunc21"] = "EidalAdha2015_Ceremony_Gemstone</N>3004484</N>1"


--【良品凤吟宝石。】
tItem[3004484]["Text3-1"] = {311}
tItem[3004484]["Text311"] = tEidalAdha2015_Ceremony_Text[3004484]["Text311"]
tItem[3004484]["tOption3-1"] = {31,32}
tItem[3004484]["Option31"] = tEidalAdha2015_Ceremony_Text[3004484]["Option31"]
tItem[3004484]["Option32"] = tEidalAdha2015_Ceremony_Text[3004484]["Option32"]
tItem[3004484]["OptionFunc31"] = "EidalAdha2015_Ceremony_Gemstone</N>3004484</N>2"

--【良品凤吟宝石。】
tItem[3004484]["Text4-1"] = {411}
tItem[3004484]["Text411"] = tEidalAdha2015_Ceremony_Text[3004484]["Text411"]
tItem[3004484]["tOption4-1"] = {41,42}
tItem[3004484]["Option41"] = tEidalAdha2015_Ceremony_Text[3004484]["Option41"]
tItem[3004484]["Option42"] = tEidalAdha2015_Ceremony_Text[3004484]["Option42"]
tItem[3004484]["OptionFunc41"] = "EidalAdha2015_Ceremony_Gemstone</N>3004484</N>3"

