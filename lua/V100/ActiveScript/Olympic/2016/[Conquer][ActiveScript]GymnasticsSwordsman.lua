------------------------------------------------------------------------------
--Name:		[征服][活动脚本]体操大侠
--Creator: 	郑宗胜
--Created:	2016/06/02
------------------------------------------------------------------------------
-- 命名前缀
-- GymnasticsSwordsman_

--logid :12000421
--luaini : 40274

-- #掩码说明：
-- #(145,87):记录是否学习了：五行艺术操，0--未学习，1--学习了五行艺术操#####设计改变需求，此掩码暂无用
-- #(145,88):记录当前玩家身上光效
-- #(145,89):正确踩中陷阱的次数
-- #(145,90):是否当天第一次表演，0--是，1--不是，还未踩中5次陷阱 ,  2--踩中5次陷阱
-- #(145,91):是否一次性踩中5个陷阱：0--是，1--不是
-- #(145,92):当天任务完成次数，0--当天未完成，1--当天完成（领取了奖励）

--51231 :记录可以刷陷阱的空位置，data0:mapid，data1:x ,data2:y
--------------------------------------数据配置----------------------------------
--常量
local tGymnasticsSwordsman_Constant = {}
	--活动时间
	tGymnasticsSwordsman_Constant["ActivityTime"]="2016-08-05 00:00 2016-08-22 23:59"
	
	-- 需要等级
	tGymnasticsSwordsman_Constant["Level"] = 80
	tGymnasticsSwordsman_Constant["Metempsychosis"] = 0

	--踩错陷阱，传回位置索引的的npc（进入体操表演大厅）
	tGymnasticsSwordsman_Constant["NPC"]=19321
	
	--记录可以刷陷阱的空位置，data0:mapid，data1:x ,data2:y
	tGymnasticsSwordsman_Constant["Global"]=51231
	
	--获得节日欢庆礼包标记
	tGymnasticsSwordsman_Constant["LogId"] = 12000421
	tGymnasticsSwordsman_Constant["FestivalId"] = 3706
	
--掩码配置
local tGymnasticsSwordsman_Stc = {}
	--记录是否学习了：五行艺术操，0--未学习，1--学习了五行艺术操
	tGymnasticsSwordsman_Stc["Learn"]={}
	tGymnasticsSwordsman_Stc["Learn"]["EventType"] = 145
	tGymnasticsSwordsman_Stc["Learn"]["DataType"] = 87
	
	--记录当前玩家身上光效
	tGymnasticsSwordsman_Stc["Effect"]={}
	tGymnasticsSwordsman_Stc["Effect"]["EventType"] = 145
	tGymnasticsSwordsman_Stc["Effect"]["DataType"] = 88
	tGymnasticsSwordsman_Stc["Effect"]["Limit"] = 5 --时间改为5秒
	
	--正确踩中陷阱的次数
	tGymnasticsSwordsman_Stc["Count"]={}
	tGymnasticsSwordsman_Stc["Count"]["EventType"] = 145
	tGymnasticsSwordsman_Stc["Count"]["DataType"] = 89
	tGymnasticsSwordsman_Stc["Count"]["Complete"] = 5
	
	--是否当天第一次表演，0--是，1--不是，还未踩中5次陷阱 ,  2--踩中5次陷阱
	tGymnasticsSwordsman_Stc["FirstShow"]={}
	tGymnasticsSwordsman_Stc["FirstShow"]["EventType"] = 145
	tGymnasticsSwordsman_Stc["FirstShow"]["DataType"] = 90
	
	--是否一次性踩中5个陷阱：0--是，1--不是
	tGymnasticsSwordsman_Stc["Once"]={}
	tGymnasticsSwordsman_Stc["Once"]["EventType"] = 145
	tGymnasticsSwordsman_Stc["Once"]["DataType"] = 91
	
	--当天任务完成次数，0--当天未完成，1--当天完成（领取了奖励）
	tGymnasticsSwordsman_Stc["Award"]={}
	tGymnasticsSwordsman_Stc["Award"]["EventType"] = 145
	tGymnasticsSwordsman_Stc["Award"]["DataType"] = 92
	
	
--位置配置
local tGymnasticsSwordsman_Position={}
	tGymnasticsSwordsman_Position[19321]={} -- 进入体操表演大厅
	tGymnasticsSwordsman_Position[19321]["ChgMapId"]=10020
	tGymnasticsSwordsman_Position[19321]["ChgPosX"]=15
	tGymnasticsSwordsman_Position[19321]["ChgPosY"]=23
	
	tGymnasticsSwordsman_Position[19322]={} --退出，返回双龙城
	tGymnasticsSwordsman_Position[19322]["ChgMapId"]=1002
	tGymnasticsSwordsman_Position[19322]["ChgPosX"]=299
	tGymnasticsSwordsman_Position[19322]["ChgPosY"]=361
	
--光效配置
local tGymnasticsSwordsman_Effect = {}
	--火，金，木，水，土
	tGymnasticsSwordsman_Effect[1] = "halo_huo_fir_2"
	-- tGymnasticsSwordsman_Effect[2] = "halo_jin_fir_2"
	tGymnasticsSwordsman_Effect[3] = "halo_mu_fir_2"
	tGymnasticsSwordsman_Effect[4] = "halo_shui_fir_2"
	tGymnasticsSwordsman_Effect[5] = "halo_tu_fir_2"
	
	
	--获得奖励
	tGymnasticsSwordsman_Effect["Award"] = "zf2-e280"

--陷阱配置
local tGymnasticsSwordsman_Trap = {}
	tGymnasticsSwordsman_Trap[1446]=1
	tGymnasticsSwordsman_Trap[1447]=2
	tGymnasticsSwordsman_Trap[1448]=3
	tGymnasticsSwordsman_Trap[1449]=4
	tGymnasticsSwordsman_Trap[1450]=5

--设计要求的log
local tGymnasticsSwordsman_Log={}
	tGymnasticsSwordsman_Log["AwardPack"]="0,0,0,0,12000421,1[1],0,0" --获得节日礼包
	tGymnasticsSwordsman_Log["OnceComplete"]="0,0,0,0,12000421,1[2],0,0" --一气呵成
	tGymnasticsSwordsman_Log["AcceptTask"]="0,0,0,0,12000421,1[3],0,0" --接受体操任务
	
--随机获得一种光效
local tGymnasticsSwordsman_AwardEffect={}
	tGymnasticsSwordsman_AwardEffect["Reward"]={}
	tGymnasticsSwordsman_AwardEffect["Reward"]["Effect"]={} 
	tGymnasticsSwordsman_AwardEffect["Reward"]["Effect"]["ItemChanceSum"] =10000
	
	tGymnasticsSwordsman_AwardEffect["Reward"]["Effect"][1] ={}
	tGymnasticsSwordsman_AwardEffect["Reward"]["Effect"][1]["RandomItemChanceType"] =2
	tGymnasticsSwordsman_AwardEffect["Reward"]["Effect"][1]["ItemChance"] =2500
	tGymnasticsSwordsman_AwardEffect["Reward"]["Effect"][1]["Item_1"] =1 --火 , 光效的标记
	
	--去掉金色的陷阱
	-- tGymnasticsSwordsman_AwardEffect["Reward"]["Effect"][2] ={}
	-- tGymnasticsSwordsman_AwardEffect["Reward"]["Effect"][2]["RandomItemChanceType"] =2
	-- tGymnasticsSwordsman_AwardEffect["Reward"]["Effect"][2]["ItemChance"] =2000
	-- tGymnasticsSwordsman_AwardEffect["Reward"]["Effect"][2]["Item_1"] =2 --金
	
	tGymnasticsSwordsman_AwardEffect["Reward"]["Effect"][2] ={}
	tGymnasticsSwordsman_AwardEffect["Reward"]["Effect"][2]["RandomItemChanceType"] =2
	tGymnasticsSwordsman_AwardEffect["Reward"]["Effect"][2]["ItemChance"] =2500
	tGymnasticsSwordsman_AwardEffect["Reward"]["Effect"][2]["Item_1"] =3 --木
	
	tGymnasticsSwordsman_AwardEffect["Reward"]["Effect"][3] ={}
	tGymnasticsSwordsman_AwardEffect["Reward"]["Effect"][3]["RandomItemChanceType"] =2
	tGymnasticsSwordsman_AwardEffect["Reward"]["Effect"][3]["ItemChance"] =2500
	tGymnasticsSwordsman_AwardEffect["Reward"]["Effect"][3]["Item_1"] =4 --水
	
	tGymnasticsSwordsman_AwardEffect["Reward"]["Effect"][4] ={}
	tGymnasticsSwordsman_AwardEffect["Reward"]["Effect"][4]["RandomItemChanceType"] =2
	tGymnasticsSwordsman_AwardEffect["Reward"]["Effect"][4]["ItemChance"] =2500
	tGymnasticsSwordsman_AwardEffect["Reward"]["Effect"][4]["Item_1"] =5 --土
	
--奖励配置
local tGymnasticsSwordsman_Reward={}
	tGymnasticsSwordsman_Reward["Other"]={}
	tGymnasticsSwordsman_Reward["Other"][1]={}
	tGymnasticsSwordsman_Reward["Other"][1]["RewardItem"]={}
	tGymnasticsSwordsman_Reward["Other"][1]["RewardItem"][1]={}
	tGymnasticsSwordsman_Reward["Other"][1]["RewardItem"][1]["Id"]=3200573 --奥运圣水，额外奖励
	tGymnasticsSwordsman_Reward["Other"][1]["RewardItem"][1]["Attr"]="0 3"
	tGymnasticsSwordsman_Reward["Other"][1]["Log"]="0,0,0,0,12000421,2,3200573,3"
	tGymnasticsSwordsman_Reward["Other"][1]["RewardNoNeedTip"] = 1
	--一次性完成
	tGymnasticsSwordsman_Reward["Other"][2]={}
	tGymnasticsSwordsman_Reward["Other"][2]["RewardItem"]={}
	tGymnasticsSwordsman_Reward["Other"][2]["RewardItem"][1]={}
	tGymnasticsSwordsman_Reward["Other"][2]["RewardItem"][1]["Id"]=3200573 --奥运圣水，额外奖励
	tGymnasticsSwordsman_Reward["Other"][2]["RewardItem"][1]["Attr"]="0 6"
	tGymnasticsSwordsman_Reward["Other"][2]["Log"]="0,0,0,0,12000421,2,3200573,6"
	tGymnasticsSwordsman_Reward["Other"][2]["Talk"]=tGymnasticsSwordsman_Text["Award"]
--------------------------------------逻辑部分----------------------------------

--隔天清掩码
function GymnasticsSwordsman_ChkNextDay()
	local nAwardEvent = tGymnasticsSwordsman_Stc["Award"]["EventType"]
	local nAwardData = tGymnasticsSwordsman_Stc["Award"]["DataType"]
	local nFirstEvent = tGymnasticsSwordsman_Stc["FirstShow"]["EventType"]
	local nFirstData = tGymnasticsSwordsman_Stc["FirstShow"]["DataType"]
	local nCountEvent = tGymnasticsSwordsman_Stc["Count"]["EventType"]
	local nCountData = tGymnasticsSwordsman_Stc["Count"]["DataType"]
	local nEffectEvent =tGymnasticsSwordsman_Stc["Effect"]["EventType"]
	local nEffectData = tGymnasticsSwordsman_Stc["Effect"]["DataType"] 
	local nOnceEvent = tGymnasticsSwordsman_Stc["Once"]["EventType"] 
	local nOnceData = tGymnasticsSwordsman_Stc["Once"]["DataType"]

	--任务完成,隔天清理
	if Task_StcInterval(nAwardEvent,nAwardData,1,4) then
		Task_SetStatistic(nAwardEvent,nAwardData,0,1)
		Task_SetStcTimestamp(nAwardEvent,nAwardData,0)
		
		--光效清0
		Task_SetStatistic(nEffectEvent,nEffectData,0,1)
		Task_SetStcTimestamp(nEffectEvent,nEffectData,0)
		
		--第一次表演
		Task_SetStatistic(nFirstEvent,nFirstData,0,1)
		Task_SetStcTimestamp(nFirstEvent,nFirstData,0)
		
		--踩中陷阱次数0次
		Task_SetStatistic(nCountEvent,nCountData,0,1)
		Task_SetStcTimestamp(nCountEvent,nCountData,0)
		
		--是不是一次性完成
		Task_SetStatistic(nOnceEvent,nOnceData,0,1)
		Task_SetStcTimestamp(nOnceEvent,nOnceData,0)
	end
end

--切换地图
function GymnasticsSwordsman_Chgmap(nNpcId)
	local nMapId = tGymnasticsSwordsman_Position[nNpcId]["ChgMapId"]
	local nPosX = tGymnasticsSwordsman_Position[nNpcId]["ChgPosX"]
	local nPosY = tGymnasticsSwordsman_Position[nNpcId]["ChgPosY"]
	if Get_NpcMapID(nNpcId) ~= Get_UserMapId() then
		User_TalkChannel2005(tTransferFail_Text["MsgTip"])
		return
	end
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,5,5)
	--是否提示
	if tGymnasticsSwordsman_Position[nNpcId]["TalkChannel"] ~=nil then
		User_TalkChannel2005(tGymnasticsSwordsman_Position[nNpcId]["TalkChannel"])
	end
	
end

--进入体操表演大厅
function GymnasticsSwordsman_EnterMap(nNpcId)
	if not Sys_ChkFullTime(tGymnasticsSwordsman_Constant["ActivityTime"]) then
		return
	end
	
	GymnasticsSwordsman_Chgmap(nNpcId)
	--链接主对白
	LinkNpcGossipFunc_New(19322,"1-3")
end

--读条后学习五行艺术操
function GymnasticsSwordsman_LearnSword(nNpcId)
	User_SetExplore(2,tGymnasticsSwordsman_Text["Explore"],220,"GymnasticsSwordsman_Learn</N>"..nNpcId,"NULL")
end

--学习五行艺术操
function GymnasticsSwordsman_Learn(nNpcId,nUserId)
	local nLearnEvent = tGymnasticsSwordsman_Stc["Learn"]["EventType"]
	local nLearnData = tGymnasticsSwordsman_Stc["Learn"]["DataType"]
	--学习了五行艺术操
	Task_SetStatistic(nLearnEvent,nLearnData,1,1,nUserId)
	Task_SetStcTimestamp(nLearnEvent,nLearnData,0,nUserId)
	User_TalkChannel2005(tGymnasticsSwordsman_Text["LearnSword"],nUserId)
	User_EffectAdd("self","relive",nUserId)
	
end

--开始表演
function GymnasticsSwordsman_StartShow()
	if not Sys_ChkFullTime(tGymnasticsSwordsman_Constant["ActivityTime"]) then
		return
	end
	
	--隔天清掩码
	GymnasticsSwordsman_ChkNextDay()
	
	--当天已经完成任务
	local nAwardEvent = tGymnasticsSwordsman_Stc["Award"]["EventType"]
	local nAwardData = tGymnasticsSwordsman_Stc["Award"]["DataType"]
	if Task_ChkStcValue(nAwardEvent,nAwardData,">=",1) then
		return
	end
	
	local flat,tNum = Probabil_RandomAward(tGymnasticsSwordsman_AwardEffect["Reward"],"Effect")
	local nEffectNum = tNum[1]["tAward"][1]["Item_1"] --光效的标记
	
	--记录当前光效，重置时间搓
	local nEffectEvent = tGymnasticsSwordsman_Stc["Effect"]["EventType"]
	local nEffectData =tGymnasticsSwordsman_Stc["Effect"]["DataType"]
	Task_SetStatistic(nEffectEvent,nEffectData,nEffectNum,1)
	Task_SetStcTimestamp(nEffectEvent,nEffectData,0)
	
	--踩中陷阱次数清0
	local nCountEvent = tGymnasticsSwordsman_Stc["Count"]["EventType"]
	local nCountData = tGymnasticsSwordsman_Stc["Count"]["DataType"]
	Task_SetStatistic(nCountEvent,nCountData,0,1)
	Task_SetStcTimestamp(nCountEvent,nCountData,0)
	
	--任务进行中
	local nFirstEvent = tGymnasticsSwordsman_Stc["FirstShow"]["EventType"]
	local nFirstData = tGymnasticsSwordsman_Stc["FirstShow"]["DataType"]
	if not Task_ChkStcValue(nFirstEvent,nFirstData,"==",1) then
		Task_SetStatistic(nFirstEvent,nFirstData,1,1)
		Task_SetStcTimestamp(nFirstEvent,nFirstData,0)
		
		--接受体操任务
		Sys_SaveActionFestivalLog(tGymnasticsSwordsman_Log["AcceptTask"])
	end
	
	--播放光效
	User_EffectAdd("self",tGymnasticsSwordsman_Effect[nEffectNum])
	User_TalkChannel2005(string.format(tGymnasticsSwordsman_Text["AwardEffect"],tGymnasticsSwordsman_Text["EffectName"][nEffectNum]))
	
	--超过3s后，任务失败
	User_SetTimer(tGymnasticsSwordsman_Stc["Effect"]["Limit"],string.format("GymnasticsSwordsman_EffectTimeOver</N>%d",nEffectNum),1)
	
end

--重新开始表演
function GymnasticsSwordsman_ReStartShow()
	if not Sys_ChkFullTime(tGymnasticsSwordsman_Constant["ActivityTime"]) then
		return
	end
	
	local nOnceEvent = tGymnasticsSwordsman_Stc["Once"]["EventType"] 
	local nOnceData = tGymnasticsSwordsman_Stc["Once"]["DataType"]
	--不是一次性完成
	Task_SetStatistic(nOnceEvent,nOnceData,1,1)
	Task_SetStcTimestamp(nOnceEvent,nOnceData,0)
	
	--删除光效
	local nEffectEvent = tGymnasticsSwordsman_Stc["Effect"]["EventType"]
	local nEffectData =tGymnasticsSwordsman_Stc["Effect"]["DataType"]
	local nCurEffect = Get_UserStatisticValue(nEffectEvent,nEffectData)
	if nCurEffect ~= 0 then
		User_EffectDel("self",tGymnasticsSwordsman_Effect[nCurEffect])
	end
	--开始表演
	GymnasticsSwordsman_StartShow()
end


--光效时间到
function  GymnasticsSwordsman_EffectTimeOver(nEffectNum,nUserId)
	local nEffectEvent = tGymnasticsSwordsman_Stc["Effect"]["EventType"]
	local nEffectData =tGymnasticsSwordsman_Stc["Effect"]["DataType"]
	local nCountEvent = tGymnasticsSwordsman_Stc["Count"]["EventType"]
	local nCountData = tGymnasticsSwordsman_Stc["Count"]["DataType"]
	local nComplete = tGymnasticsSwordsman_Stc["Count"]["Complete"]
	local nAwardEvent = tGymnasticsSwordsman_Stc["Award"]["EventType"]
	local nAwardData = tGymnasticsSwordsman_Stc["Award"]["DataType"]
	local nNpcId = tGymnasticsSwordsman_Constant["NPC"]
	-- User_TalkChannel2005("nEffectNum"..nEffectNum,nUserId)
		--删除光效
	if Get_UserStatisticValue(nEffectEvent,nEffectData,nUserId) == nEffectNum then
		--超时才删除光效
		if Task_StcInterval(nEffectEvent,nEffectData,tGymnasticsSwordsman_Stc["Effect"]["Limit"],0,nUserId) then
			User_EffectDel("self",tGymnasticsSwordsman_Effect[nEffectNum],nUserId)
		end
		--任务未完成，且超时
		if not Task_ChkStcValue(nAwardEvent,nAwardData,">=",1,nUserId) and not Task_ChkStcValue(nCountEvent,nCountData,">=",nComplete,nUserId) and Task_StcInterval(nEffectEvent,nEffectData,tGymnasticsSwordsman_Stc["Effect"]["Limit"],0,nUserId) then
			Sys_MsgBox(tGymnasticsSwordsman_Text["UnCompleteTask"],"GymnasticsSwordsman_Chgmap</N>"..nNpcId,"NULL",nUserId)
		end
	end
	
end

--陷阱触发
function GymnasticsSwordsman_TrapRespon(nTrapId,nTrapType)
	if not Sys_ChkFullTime(tGymnasticsSwordsman_Constant["ActivityTime"]) then
		return
	end
	
	local nEffectEvent = tGymnasticsSwordsman_Stc["Effect"]["EventType"]
	local nEffectData =tGymnasticsSwordsman_Stc["Effect"]["DataType"]
	local nLimit = tGymnasticsSwordsman_Stc["Effect"]["Limit"]
	local nCountEvent = tGymnasticsSwordsman_Stc["Count"]["EventType"]
	local nCountData = tGymnasticsSwordsman_Stc["Count"]["DataType"]
	local nComplete = tGymnasticsSwordsman_Stc["Count"]["Complete"]
	local nFirstEvent = tGymnasticsSwordsman_Stc["FirstShow"]["EventType"]
	local nFirstData = tGymnasticsSwordsman_Stc["FirstShow"]["DataType"]
	local nOnceEvent = tGymnasticsSwordsman_Stc["Once"]["EventType"] 
	local nOnceData = tGymnasticsSwordsman_Stc["Once"]["DataType"]
	local nNpcId = tGymnasticsSwordsman_Constant["NPC"]
	local nCurEffect = Get_UserStatisticValue(nEffectEvent,nEffectData) --当前玩家身上的光效
	local nCurCount = Get_UserStatisticValue(nCountEvent,nCountData) --当前玩家踩中的次数
	
	--判断是否是一次性完成任务,105提示不同
	local sTemp = (Task_ChkStcValue(nOnceEvent,nOnceData,"==",0) and "OnceComplete") or "CompleteTask"
	--踩中5次，回去领奖
	if nCurCount >= nComplete then
		Sys_MsgBox(tGymnasticsSwordsman_Text[sTemp],"GymnasticsSwordsman_Chgmap</N>"..nNpcId)
		return
	end
	
	--没有任务,任务不是在进行中
	if not Task_ChkStcValue(nFirstEvent,nFirstData,"==",1) then
		return
	end
	
	--玩家身上没有光效 ，或者超过3秒
	if nCurEffect == 0 or Task_StcInterval(nEffectEvent,nEffectData,nLimit,0) then
		Sys_MsgBox(tGymnasticsSwordsman_Text["UnCompleteTask"],"GymnasticsSwordsman_Chgmap</N>"..nNpcId)
		return
	end
	
	--踩错陷阱，光效不对应
	if tGymnasticsSwordsman_Trap[nTrapType] ~= nCurEffect then
		--删除光效
		User_EffectDel("self",tGymnasticsSwordsman_Effect[nCurEffect])
		
		--光效清0，重置时间，防止倒计时再删
		Task_SetStatistic(nEffectEvent,nEffectData,0,1)
		Task_SetStcTimestamp(nEffectEvent,nEffectData,0)
		
		--陷阱踩中次数清0
		Task_SetStatistic(nCountEvent,nCountData,0,1)
		
		--传回体操皇后处
		GymnasticsSwordsman_Chgmap(nNpcId)
		
		--删除陷阱
		-- local nAfterNullPosX =  Get_TrapPosX(nTrapId) --之后空的位置，赋值给动态表，方便再次刷出在此处
		-- local nAfterNullPosY =  Get_TrapPosY(nTrapId)
		-- local nLook = Get_TrapLook(nTrapId)
		-- Trap_EraseMapTrap(nTrapId)
		
		-- local nGlobalId = tGymnasticsSwordsman_Constant["Global"]
		-- local nMapId = Get_SysDynaGlobalData0(nGlobalId)
		-- local nPosX = Get_SysDynaGlobalData1(nGlobalId)
		-- local nPosY = Get_SysDynaGlobalData2(nGlobalId)
		-- --陷阱刷在别的地方
		-- Trap_CreateMapTrap(nTrapType,nLook,0,nMapId,nPosX,nPosY,0,0)
		-- --重新记录空位置
		-- Sys_SetSynaGlobalData1(nGlobalId,nAfterNullPosX)
		-- Sys_SetSynaGlobalData2(nGlobalId,nAfterNullPosY)
		
		--提示
		Sys_MsgBox(tGymnasticsSwordsman_Text["NotRightTrap105"])
		User_TalkChannel2005(tGymnasticsSwordsman_Text["NotRightTrap"])
		return
	end
	
	--踩中次数加1
	local nCount = nCurCount + 1
	Task_SetStatistic(nCountEvent,nCountData,nCount,1)
	
	--踩中5次，回去领奖
	if nCount >= nComplete then
		-- 完成任务，可以回去领奖
		Task_SetStatistic(nFirstEvent,nFirstData,2,1)
		Task_SetStcTimestamp(nFirstEvent,nFirstData,0)
		
		--判断是否是一次性完成任务
		Sys_MsgBox(tGymnasticsSwordsman_Text[sTemp],"GymnasticsSwordsman_Chgmap</N>"..nNpcId)
		return
	end
	
	--替换光效,与当前不同光效
	local nNextEffect
	
	local nCalLoop = 0
	while true do
		if nCalLoop > G_CalculateLoop then
			Sys_SaveAbnormalLog("函数 GymnasticsSwordsman_TrapRespon 中 [while]循环超过1000次！")
			break
		end
		nCalLoop = nCalLoop + 1
		local flat,tNum = Probabil_RandomAward(tGymnasticsSwordsman_AwardEffect["Reward"],"Effect")
		nNextEffect = tNum[1]["tAward"][1]["Item_1"] --光效的标记
		if nNextEffect ~= nCurEffect then
			break
		end
	end
	
	Task_SetStatistic(nEffectEvent,nEffectData,nNextEffect,1)
	Task_SetStcTimestamp(nEffectEvent,nEffectData,0)
	
	--删除光效,在增加新的光效
	User_EffectDel("self",tGymnasticsSwordsman_Effect[nCurEffect])
	User_EffectAdd("self",tGymnasticsSwordsman_Effect[nNextEffect])
	User_TalkChannel2005(string.format(tGymnasticsSwordsman_Text["InTask"],nCount,tGymnasticsSwordsman_Text["EffectName"][nNextEffect]))
	--超过3s后，任务失败
	User_SetTimer(tGymnasticsSwordsman_Stc["Effect"]["Limit"],string.format("GymnasticsSwordsman_EffectTimeOver</N>%d",nNextEffect),1)
end

--领取奖励
function GymnasticsSwordsman_Award(nNpcId)
	if not Sys_ChkFullTime(tGymnasticsSwordsman_Constant["ActivityTime"]) then
		return
	end
	
	local nCountEvent = tGymnasticsSwordsman_Stc["Count"]["EventType"]
	local nCountData = tGymnasticsSwordsman_Stc["Count"]["DataType"]
	local nOnceEvent = tGymnasticsSwordsman_Stc["Once"]["EventType"] 
	local nOnceData = tGymnasticsSwordsman_Stc["Once"]["DataType"]
	local nAwardEvent = tGymnasticsSwordsman_Stc["Award"]["EventType"]
	local nAwardData = tGymnasticsSwordsman_Stc["Award"]["DataType"]
	--没有连续踩中5个陷阱
	if not (Get_UserStatisticValue(nCountEvent,nCountData) >= tGymnasticsSwordsman_Stc["Count"]["Complete"]) or Task_ChkStcValue(nAwardEvent,nAwardData,">=",1) then
		return
	end
	
	--判断背包空间,，获得额外奖牌，需要多一个空间
	if not User_CheckLeftSpace(2) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	local bAwardOther = false --额外奖励
	if not Task_ChkStcValue(nOnceEvent,nOnceData,">=",1) then
		bAwardOther = true
	end

	
	--打掩码,获得奖励，踩中陷阱次数清0
	Task_SetStatistic(nAwardEvent,nAwardData,1,1)
	Task_SetStcTimestamp(nAwardEvent,nAwardData,0)
	
	Task_SetStatistic(nCountEvent,nCountData,0,1)
	
	--获得奖励：节日欢庆礼包
	FestivalGeneralPackage_GetGift(tGymnasticsSwordsman_Constant["FestivalId"],tGymnasticsSwordsman_Constant["LogId"])
	User_EffectAdd("self",tGymnasticsSwordsman_Effect["Award"])
	
	--设计要求的log
	Sys_SaveActionFestivalLog(tGymnasticsSwordsman_Log["AwardPack"])
	
	if bAwardOther then
		--一次性完成，额外奖励
		RewardTemplate_Reward(tGymnasticsSwordsman_Reward["Other"][2])
		Sys_MsgBox(tGymnasticsSwordsman_Text["AwardWater"][2])
			--设计要求的log
		Sys_SaveActionFestivalLog(tGymnasticsSwordsman_Log["OnceComplete"])
	else
		RewardTemplate_Reward(tGymnasticsSwordsman_Reward["Other"][1])
		Sys_MsgBox(tGymnasticsSwordsman_Text["AwardWater"][1])
	end
	
	--传送出去
	GymnasticsSwordsman_Chgmap(nNpcId)
end


--------------------------------------NPC模板----------------------------------
---体操王子倪宁
tNpcFace[4190] = 8

tNpcGossip[19321] = tNpcGossip[19321] or DefaultNpc:new{}
tNpcGossip[19321]["OptionHidden"] = 1

--活动时间前
tNpcGossip[19321]["Text1-1"] = {111,112,113,114}
tNpcGossip[19321]["Text111"] = tGymnasticsSwordsman_Text[19321]["Text111"]
tNpcGossip[19321]["Text112"] = tGymnasticsSwordsman_Text[19321]["Text112"]
tNpcGossip[19321]["Text113"] = tGymnasticsSwordsman_Text[19321]["Text113"]
tNpcGossip[19321]["Text114"] = tGymnasticsSwordsman_Text[19321]["Text114"]
tNpcGossip[19321]["ChkFunc1-1"] = function ()
	local sActivityTime= tGymnasticsSwordsman_Constant["ActivityTime"]
	return CommonFunc_GetBeforeActivityTime(sActivityTime)
end
tNpcGossip[19321]["tOption1-1"] = {1}
tNpcGossip[19321]["Option1"] = tGymnasticsSwordsman_Text[19321]["Option1"]

--活动时间后
tNpcGossip[19321]["Text1-2"] = {121}
tNpcGossip[19321]["Text121"] = tGymnasticsSwordsman_Text[19321]["Text121"]
tNpcGossip[19321]["ChkFunc1-2"] = function ()
	local sActivityTime= tGymnasticsSwordsman_Constant["ActivityTime"]
	return CommonFunc_GetAfterActivityTime(sActivityTime)
end
tNpcGossip[19321]["tOption1-2"] = {2}
tNpcGossip[19321]["Option2"] = tGymnasticsSwordsman_Text[19321]["Option2"]


--活动时间，等级不足
tNpcGossip[19321]["Text1-3"] = {131,132,133,134}
tNpcGossip[19321]["Text131"] = tGymnasticsSwordsman_Text[19321]["Text131"]
tNpcGossip[19321]["Text132"] = tGymnasticsSwordsman_Text[19321]["Text112"]
tNpcGossip[19321]["Text133"] = tGymnasticsSwordsman_Text[19321]["Text113"]
tNpcGossip[19321]["Text134"] = tGymnasticsSwordsman_Text[19321]["Text114"]
tNpcGossip[19321]["ChkFunc1-3"] = function ()
	local sActivityTime= tGymnasticsSwordsman_Constant["ActivityTime"]
	local nLevel = tGymnasticsSwordsman_Constant["Level"]
	local nMete = tGymnasticsSwordsman_Constant["Metempsychosis"]
	return Sys_ChkFullTime(sActivityTime) and not User_JudgeLevelAndMetempsychosis(nLevel,nMete)
end
tNpcGossip[19321]["tOption1-3"] = {3}
tNpcGossip[19321]["Option3"] = tGymnasticsSwordsman_Text[19321]["Option3"]

--活动时间，等级满足，未完成当天任务
tNpcGossip[19321]["Text1-4"] = {141,142,143}
tNpcGossip[19321]["Text141"] = tGymnasticsSwordsman_Text[19321]["Text131"]
tNpcGossip[19321]["Text142"] = tGymnasticsSwordsman_Text[19321]["Text112"]
tNpcGossip[19321]["Text143"] = tGymnasticsSwordsman_Text[19321]["Text114"]
tNpcGossip[19321]["ChkFunc1-4"] = function ()
	local sActivityTime= tGymnasticsSwordsman_Constant["ActivityTime"]
	local nLevel = tGymnasticsSwordsman_Constant["Level"]
	local nMete = tGymnasticsSwordsman_Constant["Metempsychosis"]
	local nAwardEvent = tGymnasticsSwordsman_Stc["Award"]["EventType"]
	local nAwardData = tGymnasticsSwordsman_Stc["Award"]["DataType"]
		--隔天清掩码
	GymnasticsSwordsman_ChkNextDay()
	return Sys_ChkFullTime(sActivityTime) and User_JudgeLevelAndMetempsychosis(nLevel,nMete) and Task_ChkStcValue(nAwardEvent,nAwardData,"==",0)
end
tNpcGossip[19321]["tOption1-4"] = {4,7}
--进入体操表演大厅
tNpcGossip[19321]["Option4"] = tGymnasticsSwordsman_Text[19321]["Option4"]
tNpcGossip[19321]["OptionChkFunc4"] = function() 
	-- local nLearnEvent = tGymnasticsSwordsman_Stc["Learn"]["EventType"]
	-- local nLearnData = tGymnasticsSwordsman_Stc["Learn"]["DataType"]
	local nAwardEvent = tGymnasticsSwordsman_Stc["Award"]["EventType"]
	local nAwardData = tGymnasticsSwordsman_Stc["Award"]["DataType"]
	-- return Task_ChkStcValue(nLearnEvent,nLearnData,"==",1) and Task_ChkStcValue(nAwardEvent,nAwardData,"==",0)
	
	return Task_ChkStcValue(nAwardEvent,nAwardData,"==",0)
end
tNpcGossip[19321]["OptionFunc4"] = "GymnasticsSwordsman_EnterMap</N>19321"

--学习五行艺术操(设计修改无需这个选项)
tNpcGossip[19321]["Option5"] = tGymnasticsSwordsman_Text[19321]["Option5"]
tNpcGossip[19321]["OptionChkFunc5"] = function() 
	local nLearnEvent = tGymnasticsSwordsman_Stc["Learn"]["EventType"]
	local nLearnData = tGymnasticsSwordsman_Stc["Learn"]["DataType"]
	return Task_ChkStcValue(nLearnEvent,nLearnData,"==",0)
end
tNpcGossip[19321]["OptionFunc5"] = "GymnasticsSwordsman_LearnSword</N>19321"

--好像很有趣呢！
tNpcGossip[19321]["Option7"] = tGymnasticsSwordsman_Text[19321]["Option7"]


--活动时间，等级满足,完成当天任务
tNpcGossip[19321]["Text1-5"] = {151}
tNpcGossip[19321]["Text151"] = tGymnasticsSwordsman_Text[19321]["Text151"]
tNpcGossip[19321]["ChkFunc1-5"] = function ()
	local sActivityTime= tGymnasticsSwordsman_Constant["ActivityTime"]
	local nLevel = tGymnasticsSwordsman_Constant["Level"]
	local nMete = tGymnasticsSwordsman_Constant["Metempsychosis"]
	local nAwardEvent = tGymnasticsSwordsman_Stc["Award"]["EventType"]
	local nAwardData = tGymnasticsSwordsman_Stc["Award"]["DataType"]
		--隔天清掩码
	GymnasticsSwordsman_ChkNextDay()
	return Sys_ChkFullTime(sActivityTime) and User_JudgeLevelAndMetempsychosis(nLevel,nMete) and Task_ChkStcValue(nAwardEvent,nAwardData,">=",1)
end
tNpcGossip[19321]["tOption1-5"] = {8}
tNpcGossip[19321]["Option8"] = tGymnasticsSwordsman_Text[19321]["Option9"]


---体操皇后柳璇
tNpcFace[4191] = 134

tNpcGossip[19322] = tNpcGossip[19322] or DefaultNpc:new{}
tNpcGossip[19322]["OptionHidden"] = 1

--活动前
tNpcGossip[19322]["Text1-1"] = {111}
tNpcGossip[19322]["Text111"] = tGymnasticsSwordsman_Text[19322]["Text111"]
tNpcGossip[19322]["ChkFunc1-1"] = function ()
	local sActivityTime= tGymnasticsSwordsman_Constant["ActivityTime"]
	return CommonFunc_GetBeforeActivityTime(sActivityTime)
end
tNpcGossip[19322]["tOption1-1"] = {1}
tNpcGossip[19322]["Option1"] = tGymnasticsSwordsman_Text[19322]["Option1"]

--活动后
tNpcGossip[19322]["Text1-2"] = {111}
tNpcGossip[19322]["Text121"] = tGymnasticsSwordsman_Text[19322]["Text121"]
tNpcGossip[19322]["ChkFunc1-2"] = function ()
	local sActivityTime= tGymnasticsSwordsman_Constant["ActivityTime"]
	return CommonFunc_GetAfterActivityTime(sActivityTime)
end
tNpcGossip[19322]["tOption1-2"] = {2}
tNpcGossip[19322]["Option2"] = tGymnasticsSwordsman_Text[19322]["Option2"]

--活动中
tNpcGossip[19322]["Text1-3"] = {131,132}
tNpcGossip[19322]["Text131"] = tGymnasticsSwordsman_Text[19322]["Text131"]
tNpcGossip[19322]["Text132"] = tGymnasticsSwordsman_Text[19322]["Text132"]
tNpcGossip[19322]["ChkFunc1-3"] = function ()
	local sActivityTime= tGymnasticsSwordsman_Constant["ActivityTime"]
	--隔天清掩码
	GymnasticsSwordsman_ChkNextDay()
	return Sys_ChkFullTime(sActivityTime)
end
tNpcGossip[19322]["tOption1-3"] = {3,4,5,6,10,7}
--开始表演
tNpcGossip[19322]["Option3"] = tGymnasticsSwordsman_Text[19322]["Option3"]
tNpcGossip[19322]["OptionChkFunc3"] = function() 
	local nAwardEvent = tGymnasticsSwordsman_Stc["Award"]["EventType"]
	local nAwardData = tGymnasticsSwordsman_Stc["Award"]["DataType"]
	local nFirstEvent = tGymnasticsSwordsman_Stc["FirstShow"]["EventType"]
	local nFirstData = tGymnasticsSwordsman_Stc["FirstShow"]["DataType"]
	return Task_ChkStcValue(nAwardEvent,nAwardData,"==",0) and Task_ChkStcValue(nFirstEvent,nFirstData,"==",0)
end
tNpcGossip[19322]["OptionFunc3"] = "GymnasticsSwordsman_StartShow"

--重新表演
tNpcGossip[19322]["Option4"] = tGymnasticsSwordsman_Text[19322]["Option4"]
tNpcGossip[19322]["OptionChkFunc4"] = function() 
	local nAwardEvent = tGymnasticsSwordsman_Stc["Award"]["EventType"]
	local nAwardData = tGymnasticsSwordsman_Stc["Award"]["DataType"]
	local nFirstEvent = tGymnasticsSwordsman_Stc["FirstShow"]["EventType"]
	local nFirstData = tGymnasticsSwordsman_Stc["FirstShow"]["DataType"]
	return Task_ChkStcValue(nAwardEvent,nAwardData,"==",0) and Task_ChkStcValue(nFirstEvent,nFirstData,"==",1)
end
tNpcGossip[19322]["OptionFunc4"] = "GymnasticsSwordsman_ReStartShow"

--领取谢礼
tNpcGossip[19322]["Option5"] = tGymnasticsSwordsman_Text[19322]["Option5"]
tNpcGossip[19322]["OptionChkFunc5"] = function() 
	local nAwardEvent = tGymnasticsSwordsman_Stc["Award"]["EventType"]
	local nAwardData = tGymnasticsSwordsman_Stc["Award"]["DataType"]
	local nFirstEvent = tGymnasticsSwordsman_Stc["FirstShow"]["EventType"]
	local nFirstData = tGymnasticsSwordsman_Stc["FirstShow"]["DataType"]
	return Task_ChkStcValue(nAwardEvent,nAwardData,"==",0)  and Task_ChkStcValue(nFirstEvent,nFirstData,"==",2) 
end
tNpcGossip[19322]["OptionFunc5"] = "GymnasticsSwordsman_Award</N>19322"

--送我回去
tNpcGossip[19322]["Option6"] = tGymnasticsSwordsman_Text[19322]["Option6"]
tNpcGossip[19322]["OptionFunc6"] = "GymnasticsSwordsman_Chgmap</N>19322"
--我对表演不感兴趣
tNpcGossip[19322]["Option7"] = tGymnasticsSwordsman_Text[19322]["Option7"]

--如何表演体操
tNpcGossip[19322]["Option10"] = tGymnasticsSwordsman_Text[19322]["Option10"]
tNpcGossip[19322]["OptionPoint10"]="3-1"

--背包空间不足对白
tNpcGossip[19322]["Text2-1"] = {211}
tNpcGossip[19322]["Text211"] = tGymnasticsSwordsman_Text[19322]["Text211"]
tNpcGossip[19322]["tOption2-1"] = {8}
tNpcGossip[19322]["Option8"] = tGymnasticsSwordsman_Text[19322]["Option8"]

tNpcGossip[19322]["Text2-2"] = {221}
tNpcGossip[19322]["Text221"] = tGymnasticsSwordsman_Text[19322]["Text221"]
tNpcGossip[19322]["tOption2-2"] = {9}
tNpcGossip[19322]["Option9"] = tGymnasticsSwordsman_Text[19322]["Option8"]


--表演体操介绍
tNpcGossip[19322]["Text3-1"] = {311,312,313,314,315,316,317}
tNpcGossip[19322]["Text311"] = tGymnasticsSwordsman_Text[19321]["Text211"]
tNpcGossip[19322]["Text312"] = tGymnasticsSwordsman_Text[19321]["Text212"]
tNpcGossip[19322]["Text313"] = tGymnasticsSwordsman_Text[19321]["Text213"]
tNpcGossip[19322]["Text314"] = tGymnasticsSwordsman_Text[19321]["Text214"]
tNpcGossip[19322]["Text315"] = tGymnasticsSwordsman_Text[19321]["Text215"]
tNpcGossip[19322]["Text316"] = tGymnasticsSwordsman_Text[19321]["Text216"]
tNpcGossip[19322]["Text317"] = tGymnasticsSwordsman_Text[19321]["Text212"]
tNpcGossip[19322]["tOption3-1"] = {11}
tNpcGossip[19322]["Option11"] = tGymnasticsSwordsman_Text[19321]["Option8"]
tNpcGossip[19322]["OptionPoint11"]="1-3"


-------------------------------------陷阱模板部分----------------------------------
--1446是cq_traptype的id
tTrap[1446] = tTrap[1446] or {}
tTrap[1446]["Function"] = function (nTrapId,nTrapType)
	--nTrapId，当前位置的陷阱ID ， nTrapType =1446陷阱类型
	GymnasticsSwordsman_TrapRespon(nTrapId,nTrapType)
end

tTrap[1447] = tTrap[1447] or {}
tTrap[1447]["Function"] = function (nTrapId,nTrapType)
	GymnasticsSwordsman_TrapRespon(nTrapId,nTrapType)
end

tTrap[1448] = tTrap[1448] or {}
tTrap[1448]["Function"] = function (nTrapId,nTrapType)
	GymnasticsSwordsman_TrapRespon(nTrapId,nTrapType)
end

tTrap[1449] = tTrap[1449] or {}
tTrap[1449]["Function"] = function (nTrapId,nTrapType)
	GymnasticsSwordsman_TrapRespon(nTrapId,nTrapType)
end

tTrap[1450] = tTrap[1450] or {}
tTrap[1450]["Function"] = function (nTrapId,nTrapType)
	GymnasticsSwordsman_TrapRespon(nTrapId,nTrapType)
end



