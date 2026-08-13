------------------------------------------------------------------------------
--Name:		[征服][活动脚本]种植奥运树
--Creator: 	郑宗胜
--Created:	2016/06/03
------------------------------------------------------------------------------
-- 命名前缀
-- PlantOlympicTree_

--logid :12000437

--luaini : 40283

-- 掩码说明：
-- 14629：领取树苗的次数，限定2次
-- 14630：记录当天上交奥运圣水的数量,超10个获得奖励
-- 14631：当天是否获得节日礼包
-- 14632：奥运树的成长值
-- 14633：记录领取额外奖励所需的成长值
--
-- 14682：背包信
-- 14683：每周是否领取奥运圣水
-- 14719:是否种植奥运树

--设计改变主意：不用此方法，改用站内信发
--动态表：51273（记录每周的国家队奖牌：data0-金牌，data1-银牌，data2-铜牌）


--------------------------------------数据配置----------------------------------
--常量
local tPlantOlympicTree_Constant = {}
	--活动时间
	tPlantOlympicTree_Constant["ActivityTime"]="2016-08-05 00:00 2016-08-22 23:59"
	
	-- 需要等级
	tPlantOlympicTree_Constant["Level"] = 80
	tPlantOlympicTree_Constant["Metempsychosis"] = 0
	
	--家庭地图编号
	tPlantOlympicTree_Constant["HouseType"]=1024
	
	--奥运圣水
	tPlantOlympicTree_Constant["OlympicWater"] = 3200573
	
	tPlantOlympicTree_Constant["FestivalId"]=3706
	
	tPlantOlympicTree_Constant["LogId"]=12000437
	
	--记录每周的国家队奖牌：data0-金牌，data1-银牌，data2-铜牌
	tPlantOlympicTree_Constant["Global"] =51273
	
	
	--自动寻路
	tPlantOlympicTree_Constant["NpcPox"]={}
	tPlantOlympicTree_Constant["NpcPox"]["MapId"]=1002
	
	tPlantOlympicTree_Constant["NpcPox"][1]={} --体操王子
	tPlantOlympicTree_Constant["NpcPox"][1]["PosX"]=299
	tPlantOlympicTree_Constant["NpcPox"][1]["PosY"]=361
	
	tPlantOlympicTree_Constant["NpcPox"][2]={} --桑巴达人
	tPlantOlympicTree_Constant["NpcPox"][2]["PosX"]=273
	tPlantOlympicTree_Constant["NpcPox"][2]["PosY"]=385
	
	tPlantOlympicTree_Constant["NpcPox"][3]={}--骑马大赛专员
	tPlantOlympicTree_Constant["NpcPox"][3]["PosX"]=286
	tPlantOlympicTree_Constant["NpcPox"][3]["PosY"]=361
	
	tPlantOlympicTree_Constant["NpcPox"][4]={}--小岳岳
	tPlantOlympicTree_Constant["NpcPox"][4]["PosX"]=286
	tPlantOlympicTree_Constant["NpcPox"][4]["PosY"]=385
	
	tPlantOlympicTree_Constant["NpcPox"][5]={}--尼克狐
	tPlantOlympicTree_Constant["NpcPox"][5]["PosX"]=299
	tPlantOlympicTree_Constant["NpcPox"][5]["PosY"]=385
	
	tPlantOlympicTree_Constant["NpcPox"][6]={}--主持人李勇
	tPlantOlympicTree_Constant["NpcPox"][6]["PosX"]=273
	tPlantOlympicTree_Constant["NpcPox"][6]["PosY"]=361
	
	tPlantOlympicTree_Constant["NpcPox"][7]={}--奥运树
	tPlantOlympicTree_Constant["NpcPox"][7]["PosX"]=261
	tPlantOlympicTree_Constant["NpcPox"][7]["PosY"]=359
local tPlantOlympicTree_Stc = {}
	--领取树苗的次数，限定2次
	tPlantOlympicTree_Stc["GetTree"]={}
	tPlantOlympicTree_Stc["GetTree"]["EventType"]=146
	tPlantOlympicTree_Stc["GetTree"]["DataType"]=29
	tPlantOlympicTree_Stc["GetTree"]["Limit"]=2
	
	--记录当天上交奥运圣水的数量,超10个获得奖励
	tPlantOlympicTree_Stc["HandWater"]={}
	tPlantOlympicTree_Stc["HandWater"]["EventType"]=146
	tPlantOlympicTree_Stc["HandWater"]["DataType"]=30
	tPlantOlympicTree_Stc["HandWater"]["OverNum"]= 10
	
	--当天是否获得节日礼包
	tPlantOlympicTree_Stc["AwardPack"]={}
	tPlantOlympicTree_Stc["AwardPack"]["EventType"]=146
	tPlantOlympicTree_Stc["AwardPack"]["DataType"]=31
	
	--奥运树的成长值
	tPlantOlympicTree_Stc["TreeValue"]={}
	tPlantOlympicTree_Stc["TreeValue"]["EventType"]=146
	tPlantOlympicTree_Stc["TreeValue"]["DataType"]=32
	
	--记录领取额外奖励所需的成长值
	tPlantOlympicTree_Stc["OtherAward"]={}
	tPlantOlympicTree_Stc["OtherAward"]["EventType"]=146
	tPlantOlympicTree_Stc["OtherAward"]["DataType"]=33
	tPlantOlympicTree_Stc["OtherAward"]["EachAdd"]=100 --每次领取后，所需成长值增加100
	
	--是否领取奥运圣水
	tPlantOlympicTree_Stc["AwardWater"]={}
	tPlantOlympicTree_Stc["AwardWater"]["EventType"]=146
	tPlantOlympicTree_Stc["AwardWater"]["DataType"]=83
	
	--是否种植奥运树
	tPlantOlympicTree_Stc["PlantTree"]={}
	tPlantOlympicTree_Stc["PlantTree"]["EventType"]=147
	tPlantOlympicTree_Stc["PlantTree"]["DataType"]=19
	
--奥运树的配置
local tPlantOlympicTree_Tree = {}
	tPlantOlympicTree_Tree["Name"]=tPlantOlympicTree_Text["NpcName"]["Tree"]
	tPlantOlympicTree_Tree["Type"]=2
	tPlantOlympicTree_Tree["Lookface"]=42284
	tPlantOlympicTree_Tree["Task0"]=94475291
	
local tPlantOlympicTree_Log = {}
	tPlantOlympicTree_Log["SetTree"] = "0,0,%d,1,12000437,2,0,0"   --放置奥运树，删除对应家具物品
	
	--设计要求的log
	tPlantOlympicTree_Log["Design"]={}
	tPlantOlympicTree_Log["Design"][1]="0,0,0,0,12000437,1[1],0,0" --玩家种植奥运树
	tPlantOlympicTree_Log["Design"][2]="0,0,0,0,12000437,1[2],0,0" --玩家上交奥运圣水
	tPlantOlympicTree_Log["Design"][3]="0,0,0,0,12000437,1[3],0,0" --玩家获取节日礼包
	tPlantOlympicTree_Log["Design"][4]="0,0,0,0,12000437,1[4],0,0" --玩家获取100成长值奖励
	tPlantOlympicTree_Log["Design"][5]="0,0,0,0,12000437,1[5],0,0" --获得抽奖礼包
	
--奖励配置
 local tPlantOlympicTree_Reward = {}
	tPlantOlympicTree_Reward["GetTree"] = {}
	tPlantOlympicTree_Reward["GetTree"]["RewardItem"] = {}
	tPlantOlympicTree_Reward["GetTree"]["RewardItem"][1] = {}
	tPlantOlympicTree_Reward["GetTree"]["RewardItem"][1]["Id"] = 3200572 --树苗ID
	tPlantOlympicTree_Reward["GetTree"]["RewardItem"][1]["Attr"] = "0 1"
	tPlantOlympicTree_Reward["GetTree"]["LogId"] =12000437
	tPlantOlympicTree_Reward["GetTree"]["RewardNoNeedTip"] = 1
	
	tPlantOlympicTree_Reward["AwardOther"] = {}
	tPlantOlympicTree_Reward["AwardOther"][1]={}
	tPlantOlympicTree_Reward["AwardOther"][1]["RewardStrengthValue"] = {}
	tPlantOlympicTree_Reward["AwardOther"][1]["RewardStrengthValue"]["Value"] = 1000
	tPlantOlympicTree_Reward["AwardOther"][1]["RewardItem"] = {}
	tPlantOlympicTree_Reward["AwardOther"][1]["RewardItem"][1] = {}
	tPlantOlympicTree_Reward["AwardOther"][1]["RewardItem"][1]["Id"] = 3008151 --7日时装外套自选包
	tPlantOlympicTree_Reward["AwardOther"][1]["RewardItem"][1]["Attr"] = "0 1"
	tPlantOlympicTree_Reward["AwardOther"][1]["LogId"] =12000437
	tPlantOlympicTree_Reward["AwardOther"][1]["Talk"]=tPlantOlympicTree_Text["TalkChannel"]["AwardOther"][1]
	
	tPlantOlympicTree_Reward["AwardOther"][2]={}
	tPlantOlympicTree_Reward["AwardOther"][2]["RewardStrengthValue"] = {}
	tPlantOlympicTree_Reward["AwardOther"][2]["RewardStrengthValue"]["Value"] = 1000
	tPlantOlympicTree_Reward["AwardOther"][2]["RewardItem"] = {}
	tPlantOlympicTree_Reward["AwardOther"][2]["RewardItem"][1] = {}
	tPlantOlympicTree_Reward["AwardOther"][2]["RewardItem"][1]["Id"] = 3200575 --7日坐骑外套自选包
	tPlantOlympicTree_Reward["AwardOther"][2]["RewardItem"][1]["Attr"] = "0 1"
	tPlantOlympicTree_Reward["AwardOther"][2]["LogId"] =12000437
	tPlantOlympicTree_Reward["AwardOther"][2]["Talk"]=tPlantOlympicTree_Text["TalkChannel"]["AwardOther"][2]
	
	
	
	--7日坐骑外套自选包
	tPlantOlympicTree_Reward[3200575]={}
	--选项1
	tPlantOlympicTree_Reward[3200575][1]={}
	tPlantOlympicTree_Reward[3200575][1]["RewardItem"] = {}
	tPlantOlympicTree_Reward[3200575][1]["RewardItem"][1] = {}
	tPlantOlympicTree_Reward[3200575][1]["RewardItem"][1]["Id"] = 200500 --7天时效神佑1%福来哥（赠）
	tPlantOlympicTree_Reward[3200575][1]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tPlantOlympicTree_Reward[3200575][1]["Talk"]=tPlantOlympicTree_Text["Award"][1]
	tPlantOlympicTree_Reward[3200575][1]["Log"] = "0,0,3200575,1,12000437,2,200500,1"
	tPlantOlympicTree_Reward[3200575][1]["DeleteItem"]={}
	tPlantOlympicTree_Reward[3200575][1]["DeleteItem"][1]={}
	tPlantOlympicTree_Reward[3200575][1]["DeleteItem"][1]["Id"]=3200575
	--选项2
	tPlantOlympicTree_Reward[3200575][2]={}
	tPlantOlympicTree_Reward[3200575][2]["RewardItem"] = {}
	tPlantOlympicTree_Reward[3200575][2]["RewardItem"][1] = {}
	tPlantOlympicTree_Reward[3200575][2]["RewardItem"][1]["Id"] = 200494 --马上有人民币（赠）
	tPlantOlympicTree_Reward[3200575][2]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tPlantOlympicTree_Reward[3200575][2]["Talk"]=tPlantOlympicTree_Text["Award"][2]
	tPlantOlympicTree_Reward[3200575][2]["Log"] = "0,0,3200575,1,12000437,2,200494,1"
	tPlantOlympicTree_Reward[3200575][2]["DeleteItem"]={}
	tPlantOlympicTree_Reward[3200575][2]["DeleteItem"][1]={}
	tPlantOlympicTree_Reward[3200575][2]["DeleteItem"][1]["Id"]=3200575
	--选项3
	tPlantOlympicTree_Reward[3200575][3]={}
	tPlantOlympicTree_Reward[3200575][3]["RewardItem"] = {}
	tPlantOlympicTree_Reward[3200575][3]["RewardItem"][1] = {}
	tPlantOlympicTree_Reward[3200575][3]["RewardItem"][1]["Id"] = 200421 --傲世龙神外套（赠）
	tPlantOlympicTree_Reward[3200575][3]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tPlantOlympicTree_Reward[3200575][3]["Talk"]=tPlantOlympicTree_Text["Award"][3]
	tPlantOlympicTree_Reward[3200575][3]["Log"] = "0,0,3200575,1,12000437,2,200421,1"
	tPlantOlympicTree_Reward[3200575][3]["DeleteItem"]={}
	tPlantOlympicTree_Reward[3200575][3]["DeleteItem"][1]={}
	tPlantOlympicTree_Reward[3200575][3]["DeleteItem"][1]["Id"]=3200575
--------------------------------------逻辑部分----------------------------------

--自动寻路到活动npc,nNpcIndex，npc的索引
function PlantOlympicTree_FindNpc(nNpcIndex)
	if not Sys_ChkFullTime(tPlantOlympicTree_Constant["ActivityTime"]) then
		return
	end
	local nMapId=tPlantOlympicTree_Constant["NpcPox"]["MapId"]
	local nPosX = tPlantOlympicTree_Constant["NpcPox"][nNpcIndex]["PosX"]
	local nPosY = tPlantOlympicTree_Constant["NpcPox"][nNpcIndex]["PosY"]
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId)
end

--是否满足补领条件
function PlantOlympicTree_IsCanReward()
	local nPlantEvent  = tPlantOlympicTree_Stc["PlantTree"]["EventType"]
	local nPlantData = tPlantOlympicTree_Stc["PlantTree"]["DataType"]
		--家里已经种植
	if Task_ChkStcValue(nPlantEvent,nPlantData,">=",1) then
		return false
	end
	
	--有树苗
	local nItemId = tPlantOlympicTree_Reward["GetTree"]["RewardItem"][1]["Id"]
	if Item_ChkItem(nItemId) then
		return false
	end
	
	return true
end

-- 树苗可以一直领取（先限制2次），家里种，有npc删掉重建
--领取橄榄树苗
function PlantOlympicTree_GetTree(nNpcId)
	if not Sys_ChkFullTime(tPlantOlympicTree_Constant["ActivityTime"]) then
		return
	end
	
	local nEvent = tPlantOlympicTree_Stc["GetTree"]["EventType"]
	local nData = tPlantOlympicTree_Stc["GetTree"]["DataType"]
	local nPlantEvent  = tPlantOlympicTree_Stc["PlantTree"]["EventType"]
	local nPlantData = tPlantOlympicTree_Stc["PlantTree"]["DataType"]
	
	-- --超过领取限制，改为无限制
	-- if not PlantOlympicTree_IsCanGetTree() then
		-- return
	-- end
	
	--家里已经种植
	if Task_ChkStcValue(nPlantEvent,nPlantData,">=",1) then
		Sys_MsgBox(tPlantOlympicTree_Text["TalkChannel"]["HomeHavePlant"])
		return
	end
	
	--背包空间
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"6-1")
		return
	end
	
	local nItemId = tPlantOlympicTree_Reward["GetTree"]["RewardItem"][1]["Id"]
	if Item_ChkItem(nItemId) then
		Sys_MsgBox(tPlantOlympicTree_Text["TalkChannel"]["HaveTree"],string.format("LinkNpcGossipFunc_New</N>%d</S>1-4",nNpcId))
		return
	end
	
	--领取次数加1
	Task_AddStatistic(nEvent,nData,1,1)
	Task_SetStcTimestamp(nEvent,nData,0)
	
	--获得树苗
	RewardTemplate_Reward(tPlantOlympicTree_Reward["GetTree"])
	User_TalkChannel2005(tPlantOlympicTree_Text["TalkChannel"]["AwardTree"])
end

--是否可以领取树苗，false--不可以领取，true--可以领取
function PlantOlympicTree_IsCanGetTree()
	local nEvent = tPlantOlympicTree_Stc["GetTree"]["EventType"]
	local nData = tPlantOlympicTree_Stc["GetTree"]["DataType"]
	local nLimit = tPlantOlympicTree_Stc["GetTree"]["Limit"]
	local nCurCount = Get_UserStatisticValue(nEvent,nData)
	--超过领取限制
	if nCurCount >= nLimit then
		return false
	else
		return true
	end
end


--得到今日浇灌nCurHandValue和当前的成长值nCurTreeValue
function PlantOlympicTree_GetTreeValue()
	local nTreeEvent = tPlantOlympicTree_Stc["TreeValue"]["EventType"]
	local nTreeData = tPlantOlympicTree_Stc["TreeValue"]["DataType"]
	local nEvent = tPlantOlympicTree_Stc["HandWater"]["EventType"]
	local nData = tPlantOlympicTree_Stc["HandWater"]["DataType"]
	local nCurHandValue
	if Task_StcInterval(nEvent,nData,1,4) then
		nCurHandValue = 0
		Task_SetStatistic(nEvent,nData,0,1)
		Task_SetStcTimestamp(nEvent,nData,0)
	else
		nCurHandValue = Get_UserStatisticValue(nEvent,nData)
	end
	
	local nCurTreeValue = Get_UserStatisticValue(nTreeEvent,nTreeData)
	
	return nCurHandValue,nCurTreeValue
end

--浇灌奥运圣水
function PlantOlympicTree_WaterTree(nWaterCount,nNpcId)
	if not Sys_ChkFullTime(tPlantOlympicTree_Constant["ActivityTime"]) then
		return
	end
	
	local nHandEvent =tPlantOlympicTree_Stc["HandWater"]["EventType"]
	local nHandData = tPlantOlympicTree_Stc["HandWater"]["DataType"]
	local nTreeEvent = tPlantOlympicTree_Stc["TreeValue"]["EventType"]
	local nTreeData = tPlantOlympicTree_Stc["TreeValue"]["DataType"]
	local nNeedItemId = tPlantOlympicTree_Constant["OlympicWater"]
	
	--隔天，上交数量清0
	if Task_StcInterval(nHandEvent,nHandData,1,4) then
		Task_SetStatistic(nHandEvent,nHandData,0,1)
		Task_SetStcTimestamp(nHandEvent,nHandData,0)
	end
	
	if not Item_ChkAccItem(nNeedItemId,nWaterCount) then
		--数量不够
		LinkNpcGossipFunc_New(19326,"4-"..nWaterCount)
		
	elseif Item_DelMulItem(nNeedItemId,nNeedItemId,nWaterCount) then
		--增加当天上交数量
		Task_AddStatistic(nHandEvent,nHandData,nWaterCount,1)
		Task_SetStcTimestamp(nHandEvent,nHandData,0)
		
		--设计要求的log
		Sys_SaveActionFestivalLog(tPlantOlympicTree_Log["Design"][2])
		
		--当天上交圣水超过10个，自动获得奖励
		if PlantOlympicTree_IsAwardPack() then
			PlantOlympicTree_AwardPack(19326)
		end
		
		--增加成长值
		local nAftTreeValue = Get_UserStatisticValue(nTreeEvent,nTreeData) + nWaterCount
		Task_SetStatistic(nTreeEvent,nTreeData,nAftTreeValue,1)
		
		User_EffectAdd("self","moveback")
		User_TalkChannel2005(string.format(tPlantOlympicTree_Text["TalkChannel"]["HandWater"],nWaterCount,nWaterCount))
		
		--每增加100点，提示玩家领取奖励
		local nOtherEvent = tPlantOlympicTree_Stc["OtherAward"]["EventType"]
		local nOtherData = tPlantOlympicTree_Stc["OtherAward"]["DataType"]
		if Task_ChkStcValue(nOtherEvent,nOtherData,"==",0) then
			--初始化所需成长值为100
			Task_AddStatistic(nOtherEvent,nOtherData,tPlantOlympicTree_Stc["OtherAward"]["EachAdd"],1)
		end
		if nAftTreeValue >= Get_UserStatisticValue(nOtherEvent,nOtherData) then
			
			--房屋内的NPC则自动获得额外奖励
			local nHouseType = tPlantOlympicTree_Constant["HouseType"]
			local nUserId = Get_UserId()
			local nUserMapType = Get_MapType()
			local nMapOwnerId = Get_MapOwnerId()
			if not Sys_ParseNumbersContain(nHouseType,nUserMapType) or nMapOwnerId ~= nUserId then
				Sys_MsgBox(tPlantOlympicTree_Text["CanAwardOther"])
			else
				PlantOlympicTree_AwardOther(19327)
			end
			
		else
			LinkNpcGossipFunc_New(nNpcId,"2-1")
		end
		
	end
	
end

--是否可以领取节日礼包
function PlantOlympicTree_IsAwardPack()
	local nHandEvent =tPlantOlympicTree_Stc["HandWater"]["EventType"]
	local nHandData = tPlantOlympicTree_Stc["HandWater"]["DataType"]
	local nOverNum = tPlantOlympicTree_Stc["HandWater"]["OverNum"]
	local nAwardEvent = tPlantOlympicTree_Stc["AwardPack"]["EventType"]
	local nAwardData = tPlantOlympicTree_Stc["AwardPack"]["DataType"]
	--领取奖励次数清0
	if Task_StcInterval(nAwardEvent,nAwardData,1,4) then 
		Task_SetStatistic(nAwardEvent,nAwardData,0,1)
		Task_SetStcTimestamp(nAwardEvent,nAwardData,0)
	end
	--上交奥运圣水数量次数清0
	if Task_StcInterval(nHandEvent,nHandData,1,4) then
		Task_SetStatistic(nHandEvent,nHandData,0,1) 
		Task_SetStcTimestamp(nHandEvent,nHandData,0)
	end
	
	return Task_ChkStcValue(nHandEvent,nHandData,">=",nOverNum) and not Task_ChkStcValue(nAwardEvent,nAwardData,">=",1)
end

--是否可以领取额外奖励
function PlantOlympicTree_IsAwardOther()
	local nTreeEvent = tPlantOlympicTree_Stc["TreeValue"]["EventType"]
	local nTreeData = tPlantOlympicTree_Stc["TreeValue"]["DataType"]
	local nOtherEvent = tPlantOlympicTree_Stc["OtherAward"]["EventType"]
	local nOtherData = tPlantOlympicTree_Stc["OtherAward"]["DataType"]
	--初始化所需成长值为100
	if Task_ChkStcValue(nOtherEvent,nOtherData,"==",0) then
		Task_AddStatistic(nOtherEvent,nOtherData,tPlantOlympicTree_Stc["OtherAward"]["EachAdd"],1)
	end
	local nNeedTreeValue = Get_UserStatisticValue(nOtherEvent,nOtherData)
	return Task_ChkStcValue(nTreeEvent,nTreeData,">=",nNeedTreeValue)
end



--领取节日礼包
function PlantOlympicTree_AwardPack(nNpcId)
	if not Sys_ChkFullTime(tPlantOlympicTree_Constant["ActivityTime"]) then
		return
	end
	
	--背包空间不足
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"5-1")
		return
	end
	
	local nHandEvent = tPlantOlympicTree_Stc["HandWater"]["EventType"]
	local nHandData = tPlantOlympicTree_Stc["HandWater"]["DataType"]
	local nOverNum = tPlantOlympicTree_Stc["HandWater"]["OverNum"]
	local nAwardEvent =tPlantOlympicTree_Stc["AwardPack"]["EventType"]
	local nAwardData = tPlantOlympicTree_Stc["AwardPack"]["DataType"]
	--隔天
	if Task_StcInterval(nAwardEvent,nAwardData,1,4) then
		Task_SetStatistic(nAwardEvent,nAwardData,0,1)
		Task_SetStcTimestamp(nAwardEvent,nAwardData,0)
	end
	
	--当天上交圣水超过10个，且未领取奖励
	if Task_ChkStcValue(nHandEvent,nHandData,">=",nOverNum) and not Task_ChkStcValue(nAwardEvent,nAwardData,">=",1) then
		
		Task_SetStatistic(nAwardEvent,nAwardData,1,1)
		Task_SetStcTimestamp(nAwardEvent,nAwardData,0)
		
	---获得奖励：节日欢庆礼包
	FestivalGeneralPackage_GetGift(tPlantOlympicTree_Constant["FestivalId"],tPlantOlympicTree_Constant["LogId"])
	-- User_TalkChannel2005(tPlantOlympicTree_Text["TalkChannel"]["AwardPack"])
	Sys_SaveActionFestivalLog(tPlantOlympicTree_Log["Design"][3])
	end
	
end

--领取额外奖励
function PlantOlympicTree_AwardOther(nNpcId)
	if not Sys_ChkFullTime(tPlantOlympicTree_Constant["ActivityTime"]) then
		return
	end
	
	--背包空间不足
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	
	--成长值不够，不满足领取条件
	if not PlantOlympicTree_IsAwardOther() then
		return
	end
	
	local nOtherEvent = tPlantOlympicTree_Stc["OtherAward"]["EventType"]
	local nOtherData = tPlantOlympicTree_Stc["OtherAward"]["DataType"]
	
	
	--当前领取额外奖励所需的成长值
	local nNeedTreeValue = Get_UserStatisticValue(nOtherEvent,nOtherData)
	--下一次领取额外奖励所需的成长值加100
	local nNextNeedTreeValue = nNeedTreeValue+tPlantOlympicTree_Stc["OtherAward"]["EachAdd"]
	Task_SetStatistic(nOtherEvent,nOtherData,nNextNeedTreeValue,1)
	
	--获得奖励额外奖励
	if Sys_Random(60,100) then
		--60%——7日时装外套自选包（3008151）
		RewardTemplate_Reward(tPlantOlympicTree_Reward["AwardOther"][1])
		Sys_MsgBox(tPlantOlympicTree_Text["AwardOther"][1])
	else
		--40%——7日坐骑外套自选包
		RewardTemplate_Reward(tPlantOlympicTree_Reward["AwardOther"][2])
		Sys_MsgBox(tPlantOlympicTree_Text["AwardOther"][2])
	end
		Sys_SaveActionFestivalLog(tPlantOlympicTree_Log["Design"][4])
end


-- 创建奥运树
function PlantOlympicTree_CreatTree(nItemId)
		--不在活动时间
	local sActivityTime= tPlantOlympicTree_Constant["ActivityTime"]
	if not Sys_ChkFullTime(sActivityTime) then
		if Item_ChkItem(nItemId)  and Item_DelItem(nItemId) then
			User_TalkChannel2005(tPlantOlympicTree_Text["TalkChannel"]["OverTime"])
			return
		end
	end
	
	if Item_ChkItem(nItemId) then
		--判断是否在房屋内使用,且等级大于1级
		local nHouseType = tPlantOlympicTree_Constant["HouseType"]
		local nUserId = Get_UserId()
		local nUserMapType = Get_MapType()
		local nMapOwnerId = Get_MapOwnerId()
		if not Sys_ParseNumbersContain(nHouseType,nUserMapType) or nMapOwnerId ~= nUserId or Get_MapResLev() < 2 then
			User_TalkChannel2005(tPlantOlympicTree_Text["TalkChannel"]["CreatFailed"])
			return
		end
		
		--创建奥运树
		Npc_RequestLayNpcByItem("PlantOlympicTree_SetTree</N>"..nItemId,tPlantOlympicTree_Tree["Type"],tPlantOlympicTree_Tree["Lookface"])
		
	end
end

--放置奥运树
function PlantOlympicTree_SetTree(nItemId)
	local sTreeName = tPlantOlympicTree_Tree["Name"]
	local nTreeType = tPlantOlympicTree_Tree["Type"]
	local nTreeLookface = tPlantOlympicTree_Tree["Lookface"]
	local nTreeTask = tPlantOlympicTree_Tree["Task0"]
	
	
	--不在活动时间
	local sActivityTime= tPlantOlympicTree_Constant["ActivityTime"]
	if not Sys_ChkFullTime(sActivityTime) then
		if Item_ChkItem(nItemId)  and Item_DelItem(nItemId) then
			User_TalkChannel2005(tPlantOlympicTree_Text["TalkChannel"]["OverTime"])
			return
		end
	end
	
	if Item_ChkItem(nItemId) then
		--原先存在的动态npc
		local nUserMapId =Get_UserMapId(nUserId)
		if Get_NpcCountByName(sTreeName,nUserId) > 0 then
			User_TalkChannel2005(tPlantOlympicTree_Text["TalkChannel"]["HavePlant"])
			return
		end
		
		if Npc_CreatLayNpcByItem(sTreeName,nTreeType,32,nTreeLookface,0,0,0,0,0,nTreeTask) then 
			if Item_DelItem(nItemId) then
				local nPlantEvent  = tPlantOlympicTree_Stc["PlantTree"]["EventType"]
				local nPlantData = tPlantOlympicTree_Stc["PlantTree"]["DataType"]
				Task_SetStatistic(nPlantEvent,nPlantData,1,1) --表示种植
				Sys_SaveActionFestivalLog(string.format(tPlantOlympicTree_Log["SetTree"],nItemId))
				Sys_SaveActionFestivalLog(tPlantOlympicTree_Log["Design"][1])
			end
		end
	end
end

--删除动态npc
function PlantOlympicTree_DelDynaNpc(nUserId)
	local nUserMapId =Get_UserMapId(nUserId)
	local sNpcName = tPlantOlympicTree_Text["NpcName"]["Tree"]
	
	if Get_NpcCountByName(sNpcName,nUserId) > 0 then
		return Npc_DelDynaNpc(nUserMapId,"name",sNpcName)
	end
end

--奥运树的响应
function PlantOlympicTree_TreeRespon(nNpcId)
	local sActivityTime= tPlantOlympicTree_Constant["ActivityTime"]
	if Sys_ChkFullTime(sActivityTime) then
		
		--判断是否在自己房屋内
		local nUserId = Get_UserId()
		local nMapOwnerId = Get_MapOwnerId()
		if nMapOwnerId ~= nUserId then
			LinkNpcGossipFunc_New(nNpcId,"5-1") --不是自己的树
		else
			LinkNpcGossipFunc_New(nNpcId,"1-1")
		end
		
	else
		--不在活动时间，直接删除npc
		PlantOlympicTree_DelDynaNpc()
	end
end

--移植橄榄树
function PlantOlympicTree_Remove(nNpcId)
	if not User_CheckLeftSpace(1) then
		Sys_MsgBox(tPlantOlympicTree_Text[nNpcId]["NoSpace"])
		return
	end
	User_SetExplore(2,tPlantOlympicTree_Text[19327]["Remove"],220,"PlantOlympicTree_RemoveTree</N>"..nNpcId)
end

--移植橄榄树
function PlantOlympicTree_RemoveTree(nNpcId,nUserId)
	if not User_CheckLeftSpace(1,nUserId) then
		Sys_MsgBox(tPlantOlympicTree_Text[nNpcId]["NoSpace"],nUserId)
		return
	end
	
	--已经有树苗
	local nItemId = tPlantOlympicTree_Reward["GetTree"]["RewardItem"][1]["Id"]
	if Item_ChkItem(nItemId,1,0,nUserId) then
		User_TalkChannel2005(tPlantOlympicTree_Text["TalkChannel"]["HaveTree"],nUserId)
		return
	end
	
	--删除NPC
	if PlantOlympicTree_DelDynaNpc(nUserId) then
		local nPlantEvent  = tPlantOlympicTree_Stc["PlantTree"]["EventType"]
		local nPlantData = tPlantOlympicTree_Stc["PlantTree"]["DataType"]
		Task_SetStatistic(nPlantEvent,nPlantData,0,1,nUserId) --表示未种植
		--获得树苗
		RewardTemplate_Reward(tPlantOlympicTree_Reward["GetTree"],nUserId)
		User_TalkChannel2005(tPlantOlympicTree_Text["TalkChannel"]["MoveTree"],nUserId)
	end
	
end

--使用礼包
function PlantOlympicTree_UsePackage(nItemId,nOption)
	RewardTemplate_UseItem(tPlantOlympicTree_Reward[nItemId][nOption])
end

--使用奥运圣水
function PlantOlympicTree_UseWater(nItemId)
	local sActivityTime =tPlantOlympicTree_Constant["ActivityTime"]
	--活动时间内，自动寻路到公共树，否则删除所有物品
	if Sys_ChkFullTime(sActivityTime) then
		PlantOlympicTree_FindNpc(7)
	else
		--删除所有某类型物品
		Item_DelAllItemByType(nItemId)
		User_TalkChannel2005(tPlantOlympicTree_Text["TalkChannel"]["WaterOverTime"])
	end
end

--------------------------------------NPC模板----------------------------------
--奥运大使武桓(双龙城)
tNpcFace[4227] = 7

tNpcGossip[19325] = tNpcGossip[19325] or DefaultNpc:new{}
tNpcGossip[19325]["OptionHidden"] = 1

--活动时间前
tNpcGossip[19325]["Text1-1"] = {111,112,113,114}
tNpcGossip[19325]["Text111"] = tPlantOlympicTree_Text[19325]["Text111"]
tNpcGossip[19325]["Text112"] = tPlantOlympicTree_Text[19325]["Text112"]
tNpcGossip[19325]["Text113"] = tPlantOlympicTree_Text[19325]["Text113"]
tNpcGossip[19325]["Text114"] = tPlantOlympicTree_Text[19325]["Text114"]
tNpcGossip[19325]["ChkFunc1-1"] = function ()
	local sActivityTime= tPlantOlympicTree_Constant["ActivityTime"]
	return CommonFunc_GetBeforeActivityTime(sActivityTime)
end
tNpcGossip[19325]["tOption1-1"] = {1}
tNpcGossip[19325]["Option1"] = tPlantOlympicTree_Text[19325]["Option1"]

--活动时间后
tNpcGossip[19325]["Text1-2"] = {121}
tNpcGossip[19325]["Text121"] = tPlantOlympicTree_Text[19325]["Text121"]
tNpcGossip[19325]["ChkFunc1-2"] = function ()
	local sActivityTime= tPlantOlympicTree_Constant["ActivityTime"]
	return CommonFunc_GetAfterActivityTime(sActivityTime)
end
tNpcGossip[19325]["tOption1-2"] = {2}
tNpcGossip[19325]["Option2"] = tPlantOlympicTree_Text[19325]["Option2"]


--活动时间
tNpcGossip[19325]["Text1-3"] = {131,112,113}
tNpcGossip[19325]["Text131"] = tPlantOlympicTree_Text[19325]["Text131"]
tNpcGossip[19325]["ChkFunc1-3"] = function ()
	local sActivityTime= tPlantOlympicTree_Constant["ActivityTime"]
	return Sys_ChkFullTime(sActivityTime)
end
tNpcGossip[19325]["tOption1-3"] = {3,4,5,6,7,8,9,10}
tNpcGossip[19325]["Option3"] = tPlantOlympicTree_Text[19325]["Option3"]
tNpcGossip[19325]["OptionPoint3"]="2-2"

tNpcGossip[19325]["Option4"] = tPlantOlympicTree_Text[19325]["Option4"]
tNpcGossip[19325]["OptionPoint4"]="2-3"

tNpcGossip[19325]["Option5"] = tPlantOlympicTree_Text[19325]["Option5"]
tNpcGossip[19325]["OptionPoint5"]="2-4"

tNpcGossip[19325]["Option6"] = tPlantOlympicTree_Text[19325]["Option6"]
tNpcGossip[19325]["OptionPoint6"]="2-5"

tNpcGossip[19325]["Option7"] = tPlantOlympicTree_Text[19325]["Option7"]
tNpcGossip[19325]["OptionPoint7"]="2-6"

tNpcGossip[19325]["Option8"] = tPlantOlympicTree_Text[19325]["Option8"]
tNpcGossip[19325]["OptionPoint8"]="2-7"

tNpcGossip[19325]["Option9"] = tPlantOlympicTree_Text[19325]["Option9"]
tNpcGossip[19325]["OptionPoint9"]="2-8"

tNpcGossip[19325]["Option10"] = tPlantOlympicTree_Text[19325]["Option10"]


tNpcGossip[19325]["Text2-2"] = {221,222}
tNpcGossip[19325]["Text221"] = tPlantOlympicTree_Text[19325]["Text221"]
tNpcGossip[19325]["Text222"] = tPlantOlympicTree_Text[19325]["Text222"]
tNpcGossip[19325]["tOption2-2"] = {11,12} --11是：我要种树，12：了解其它活动

tNpcGossip[19325]["Option11"] = tPlantOlympicTree_Text[19325]["Option11"]
tNpcGossip[19325]["OptionFunc11"]="PlantOlympicTree_FindNpc</N>7"

tNpcGossip[19325]["Option12"] = tPlantOlympicTree_Text[19325]["Option12"]
tNpcGossip[19325]["OptionPoint12"]="1-3" --上一页

--导航到指定npc
tNpcGossip[19325]["Text2-3"] = {231,232}
tNpcGossip[19325]["Text231"] = tPlantOlympicTree_Text[19325]["Text231"]
tNpcGossip[19325]["Text232"] = tPlantOlympicTree_Text[19325]["Text232"]
tNpcGossip[19325]["tOption2-3"] = {13,12} 
tNpcGossip[19325]["Option13"] = tPlantOlympicTree_Text[19325]["Option13"] --体操王子
tNpcGossip[19325]["OptionFunc13"]="PlantOlympicTree_FindNpc</N>1"

tNpcGossip[19325]["Text2-4"] = {241,242}
tNpcGossip[19325]["Text241"] = tPlantOlympicTree_Text[19325]["Text241"]
tNpcGossip[19325]["Text242"] = tPlantOlympicTree_Text[19325]["Text242"]
tNpcGossip[19325]["tOption2-4"] = {14,12} 
tNpcGossip[19325]["Option14"] = tPlantOlympicTree_Text[19325]["Option14"]--桑巴达人
tNpcGossip[19325]["OptionFunc14"]="PlantOlympicTree_FindNpc</N>2"

tNpcGossip[19325]["Text2-5"] = {251,252}
tNpcGossip[19325]["Text251"] = tPlantOlympicTree_Text[19325]["Text251"]
tNpcGossip[19325]["Text252"] = tPlantOlympicTree_Text[19325]["Text252"]
tNpcGossip[19325]["tOption2-5"] = {15,12} 
tNpcGossip[19325]["Option15"] = tPlantOlympicTree_Text[19325]["Option15"]--骑马大赛专员
tNpcGossip[19325]["OptionFunc15"]="PlantOlympicTree_FindNpc</N>3"

tNpcGossip[19325]["Text2-6"] = {261,262}
tNpcGossip[19325]["Text261"] = tPlantOlympicTree_Text[19325]["Text261"]
tNpcGossip[19325]["Text262"] = tPlantOlympicTree_Text[19325]["Text262"]
tNpcGossip[19325]["tOption2-6"] = {16,12} 
tNpcGossip[19325]["Option16"] = tPlantOlympicTree_Text[19325]["Option16"]--小岳岳
tNpcGossip[19325]["OptionFunc16"]="PlantOlympicTree_FindNpc</N>4"

tNpcGossip[19325]["Text2-7"] = {271,272}
tNpcGossip[19325]["Text271"] = tPlantOlympicTree_Text[19325]["Text271"]
tNpcGossip[19325]["Text272"] = tPlantOlympicTree_Text[19325]["Text272"]
tNpcGossip[19325]["tOption2-7"] = {17,12} 
tNpcGossip[19325]["Option17"] = tPlantOlympicTree_Text[19325]["Option17"]--尼克狐
tNpcGossip[19325]["OptionFunc17"]="PlantOlympicTree_FindNpc</N>5"

tNpcGossip[19325]["Text2-8"] = {281,282}
tNpcGossip[19325]["Text281"] = tPlantOlympicTree_Text[19325]["Text281"]
tNpcGossip[19325]["Text282"] = tPlantOlympicTree_Text[19325]["Text282"]
tNpcGossip[19325]["tOption2-8"] = {18,12} 
tNpcGossip[19325]["Option18"] = tPlantOlympicTree_Text[19325]["Option18"]--主持人李勇
tNpcGossip[19325]["OptionFunc18"]="PlantOlympicTree_FindNpc</N>6"




---橄榄树(花圃区NPC)
-- tNpcFace[5000] = 8

tNpcGossip[19326] = tNpcGossip[19326] or DefaultNpc:new{}
tNpcGossip[19326]["OptionHidden"] = 1

--活动时间前
tNpcGossip[19326]["Text1-1"] = {111}
tNpcGossip[19326]["Text111"] = tPlantOlympicTree_Text[19326]["Text111"]
tNpcGossip[19326]["ChkFunc1-1"] = function ()
	local sActivityTime= tPlantOlympicTree_Constant["ActivityTime"]
	return CommonFunc_GetBeforeActivityTime(sActivityTime)
end
tNpcGossip[19326]["tOption1-1"] = {1}
tNpcGossip[19326]["Option1"] = tPlantOlympicTree_Text[19326]["Option1"]

--活动时间后
tNpcGossip[19326]["Text1-2"] = {121}
tNpcGossip[19326]["Text121"] = tPlantOlympicTree_Text[19326]["Text121"]
tNpcGossip[19326]["ChkFunc1-2"] = function ()
	local sActivityTime= tPlantOlympicTree_Constant["ActivityTime"]
	return CommonFunc_GetAfterActivityTime(sActivityTime)
end
tNpcGossip[19326]["tOption1-2"] = {2}
tNpcGossip[19326]["Option2"] = tPlantOlympicTree_Text[19326]["Option2"]


--活动时间，等级不足
tNpcGossip[19326]["Text1-3"] = {131}
tNpcGossip[19326]["Text131"] = tPlantOlympicTree_Text[19326]["Text131"]
tNpcGossip[19326]["ChkFunc1-3"] = function ()
	local sActivityTime= tPlantOlympicTree_Constant["ActivityTime"]
	local nLevel = tPlantOlympicTree_Constant["Level"]
	local nMete = tPlantOlympicTree_Constant["Metempsychosis"]
	return Sys_ChkFullTime(sActivityTime) and not User_JudgeLevelAndMetempsychosis(nLevel,nMete)
end
tNpcGossip[19326]["tOption1-3"] = {3}
tNpcGossip[19326]["Option3"] = tPlantOlympicTree_Text[19326]["Option3"]


--活动时间，等级满足
tNpcGossip[19326]["Text1-4"] = {141,142,143,144,145,146,147,148}
tNpcGossip[19326]["Text141"] = tPlantOlympicTree_Text[19326]["Text141"]
tNpcGossip[19326]["Text142"] = tPlantOlympicTree_Text[19326]["Text142"]
tNpcGossip[19326]["Text143"] = tPlantOlympicTree_Text[19326]["Text143"]
tNpcGossip[19326]["Text144"] = tPlantOlympicTree_Text[19326]["Text144"]
tNpcGossip[19326]["Text145"] = tPlantOlympicTree_Text[19326]["Text145"]
tNpcGossip[19326]["Text146"] = tPlantOlympicTree_Text[19326]["Text146"]
tNpcGossip[19326]["Text147"] = tPlantOlympicTree_Text[19326]["Text147"]
tNpcGossip[19326]["Text148"] = tPlantOlympicTree_Text[19326]["Text148"]
tNpcGossip[19326]["ChkFunc1-4"] = function ()
	local sActivityTime= tPlantOlympicTree_Constant["ActivityTime"]
	local nLevel = tPlantOlympicTree_Constant["Level"]
	local nMete = tPlantOlympicTree_Constant["Metempsychosis"]
	local nCurHandValue = PlantOlympicTree_GetTreeValue()
	tNpcGossip[19326]["Text148"]=string.format(tPlantOlympicTree_Text[19326]["Text148"],nCurHandValue)
	return Sys_ChkFullTime(sActivityTime) and User_JudgeLevelAndMetempsychosis(nLevel,nMete)
end
tNpcGossip[19326]["tOption1-4"] = {20,21,4,5,6,7}

tNpcGossip[19326]["Option20"] = tPlantOlympicTree_Text[19326]["Option20"] --领取橄榄树苗
tNpcGossip[19326]["OptionFunc20"]="PlantOlympicTree_GetTree</N>19326"
tNpcGossip[19326]["OptionChkFunc20"] = function() 
	local nEvent = tPlantOlympicTree_Stc["GetTree"]["EventType"]
	local nData = tPlantOlympicTree_Stc["GetTree"]["DataType"]
	--从未领取过，才显示
	return Task_ChkStcValue(nEvent,nData,"==",0)
end

tNpcGossip[19326]["Option21"] = tPlantOlympicTree_Text[19326]["Option21"] --补领橄榄树苗
tNpcGossip[19326]["OptionFunc21"]="PlantOlympicTree_GetTree</N>19326"
tNpcGossip[19326]["OptionChkFunc21"] = function() 
	local nEvent = tPlantOlympicTree_Stc["GetTree"]["EventType"]
	local nData = tPlantOlympicTree_Stc["GetTree"]["DataType"]
	--领取过，且未超过限制才可以补领，改为无限制
	return not Task_ChkStcValue(nEvent,nData,"==",0) and PlantOlympicTree_IsCanReward()
end

tNpcGossip[19326]["Option4"] = tPlantOlympicTree_Text[19326]["Option4"] --浇灌橄榄树
tNpcGossip[19326]["OptionPoint4"]="2-1"

tNpcGossip[19326]["Option5"] = tPlantOlympicTree_Text[19326]["Option5"] --摘取植树奖励。
tNpcGossip[19326]["OptionFunc5"]="PlantOlympicTree_AwardPack</N>19326"
tNpcGossip[19326]["OptionChkFunc5"] = PlantOlympicTree_IsAwardPack

tNpcGossip[19326]["Option6"] = tPlantOlympicTree_Text[19326]["Option6"]--谈谈奥运圣水
tNpcGossip[19326]["OptionPoint6"]="3-1"

tNpcGossip[19326]["Option7"] = tPlantOlympicTree_Text[19326]["Option7"]

--浇灌橄榄树
tNpcGossip[19326]["Text2-1"] = {211,212}
tNpcGossip[19326]["Text211"] = tPlantOlympicTree_Text[19326]["Text211"]
tNpcGossip[19326]["Text212"] = tPlantOlympicTree_Text[19326]["Text148"]
tNpcGossip[19326]["ChkFunc2-1"] = function ()
	local nCurHandValue = PlantOlympicTree_GetTreeValue()
	tNpcGossip[19326]["Text212"] = string.format(tPlantOlympicTree_Text[19326]["Text148"],nCurHandValue)
	return true
end


tNpcGossip[19326]["tOption2-1"] = {8,9,10,11}
tNpcGossip[19326]["Option8"] = tPlantOlympicTree_Text[19326]["Option8"]
tNpcGossip[19326]["OptionFunc8"]="PlantOlympicTree_WaterTree</N>1</N>19326"

tNpcGossip[19326]["Option9"] = tPlantOlympicTree_Text[19326]["Option9"]
tNpcGossip[19326]["OptionFunc9"]="PlantOlympicTree_WaterTree</N>5</N>19326"

tNpcGossip[19326]["Option10"] = tPlantOlympicTree_Text[19326]["Option10"]
tNpcGossip[19326]["OptionFunc10"]="PlantOlympicTree_WaterTree</N>10</N>19326"

tNpcGossip[19326]["Option11"] = tPlantOlympicTree_Text[19326]["Option11"]


--谈谈奥运圣水
tNpcGossip[19326]["Text3-1"] = {311,312}
tNpcGossip[19326]["Text311"] = tPlantOlympicTree_Text[19326]["Text311"]
tNpcGossip[19326]["Text312"] = tPlantOlympicTree_Text[19326]["Text312"]
tNpcGossip[19326]["tOption3-1"] = {22}
tNpcGossip[19326]["Option22"] = tPlantOlympicTree_Text[19326]["Option22"]
tNpcGossip[19326]["OptionPoint22"]="3-2"

tNpcGossip[19326]["Text3-2"] = {321,322,323,324,325}
tNpcGossip[19326]["Text321"] = tPlantOlympicTree_Text[19326]["Text321"]
tNpcGossip[19326]["Text322"] = tPlantOlympicTree_Text[19326]["Text322"]
tNpcGossip[19326]["Text323"] = tPlantOlympicTree_Text[19326]["Text323"]
tNpcGossip[19326]["Text324"] = tPlantOlympicTree_Text[19326]["Text324"]
tNpcGossip[19326]["Text325"] = tPlantOlympicTree_Text[19326]["Text325"]
tNpcGossip[19326]["tOption3-2"] = {23}
tNpcGossip[19326]["Option23"] = tPlantOlympicTree_Text[19326]["Option23"]
tNpcGossip[19326]["OptionPoint23"]="1-4"


--没有足够的奥运圣水
tNpcGossip[19326]["Text4-1"]={411}
tNpcGossip[19326]["Text411"] = tPlantOlympicTree_Text[19326]["Text411"]
tNpcGossip[19326]["tOption4-1"] = {13}
tNpcGossip[19326]["Option13"] = tPlantOlympicTree_Text[19326]["Option13"]

tNpcGossip[19326]["Text4-5"]={451}
tNpcGossip[19326]["Text451"] = tPlantOlympicTree_Text[19326]["Text451"]
tNpcGossip[19326]["tOption4-5"] = {14}
tNpcGossip[19326]["Option14"] = tPlantOlympicTree_Text[19326]["Option14"]

tNpcGossip[19326]["Text4-10"]={4101}
tNpcGossip[19326]["Text4101"] = tPlantOlympicTree_Text[19326]["Text4101"]
tNpcGossip[19326]["tOption4-10"] = {15}
tNpcGossip[19326]["Option15"] = tPlantOlympicTree_Text[19326]["Option14"]

--领取奖励 ，背包空间不足
tNpcGossip[19326]["Text5-1"]={511}
tNpcGossip[19326]["Text511"] = tPlantOlympicTree_Text[19326]["Text511"]
tNpcGossip[19326]["tOption5-1"] = {16}
tNpcGossip[19326]["Option16"] = tPlantOlympicTree_Text[19326]["Option16"]

--背包空间不足
tNpcGossip[19326]["Text6-1"]={611}
tNpcGossip[19326]["Text611"] = tPlantOlympicTree_Text[19326]["Text611"]
tNpcGossip[19326]["tOption6-1"] = {17}
tNpcGossip[19326]["Option17"] = tPlantOlympicTree_Text[19326]["Option17"]



--奥运树(房屋内)
tNpcGossip[19327] = tNpcGossip[19327] or DefaultNpc:new{}
tNpcGossip[19327]["OptionHidden"] = 1

tNpcGossip[19327]["Text1-1"] = {111,112,113,114,115,116,117,118}
tNpcGossip[19327]["Text111"] = tPlantOlympicTree_Text[19326]["Text141"]
tNpcGossip[19327]["Text112"] = tPlantOlympicTree_Text[19326]["Text142"]
tNpcGossip[19327]["Text113"] = tPlantOlympicTree_Text[19327]["Text113"]
tNpcGossip[19327]["Text114"] = tPlantOlympicTree_Text[19327]["Text114"]
tNpcGossip[19327]["Text115"] = tPlantOlympicTree_Text[19327]["Text115"]
tNpcGossip[19327]["Text116"] = tPlantOlympicTree_Text[19326]["Text142"]
tNpcGossip[19327]["Text117"] = tPlantOlympicTree_Text[19327]["Text117"]
tNpcGossip[19327]["Text118"] = tPlantOlympicTree_Text[19327]["Text118"]
tNpcGossip[19327]["ChkFunc1-1"] = function ()
	local nCurHandValue,nCurTreeValue = PlantOlympicTree_GetTreeValue()
	tNpcGossip[19327]["Text117"] = string.format(tPlantOlympicTree_Text[19327]["Text117"],nCurHandValue)
	tNpcGossip[19327]["Text118"] = string.format(tPlantOlympicTree_Text[19327]["Text118"],nCurTreeValue)
	--sql接入，已经判断是否在活动时间内
	return true
end
tNpcGossip[19327]["tOption1-1"] = {1,2,3,12,4,5}
tNpcGossip[19327]["Option1"] = tPlantOlympicTree_Text[19326]["Option4"] --浇灌橄榄树，通用对白文字
tNpcGossip[19327]["OptionPoint1"]="2-1"

tNpcGossip[19327]["Option2"] = tPlantOlympicTree_Text[19326]["Option5"] --摘取植树奖励
tNpcGossip[19327]["OptionFunc2"]="PlantOlympicTree_AwardPack</N>19326"
tNpcGossip[19327]["OptionChkFunc2"] = PlantOlympicTree_IsAwardPack

tNpcGossip[19327]["Option3"] = tPlantOlympicTree_Text[19327]["Option1"] --摘取额外奖励
tNpcGossip[19327]["OptionFunc3"]="PlantOlympicTree_AwardOther</N>19327"
tNpcGossip[19327]["OptionChkFunc3"] = PlantOlympicTree_IsAwardOther

--移植橄榄树
tNpcGossip[19327]["Option12"] = tPlantOlympicTree_Text[19327]["Option12"]
tNpcGossip[19327]["OptionFunc12"]="PlantOlympicTree_Remove</N>19327"

tNpcGossip[19327]["Option4"] = tPlantOlympicTree_Text[19326]["Option6"]--谈谈奥运圣水
tNpcGossip[19327]["OptionPoint4"]="4-1"

tNpcGossip[19327]["Option5"] = tPlantOlympicTree_Text[19326]["Option7"]



--浇灌橄榄树
tNpcGossip[19327]["Text2-1"] = {211,212,213}
tNpcGossip[19327]["Text211"] =tPlantOlympicTree_Text[19326]["Text211"]
tNpcGossip[19327]["Text212"] =tPlantOlympicTree_Text[19327]["Text117"]
tNpcGossip[19327]["Text213"] =tPlantOlympicTree_Text[19327]["Text118"]
tNpcGossip[19327]["ChkFunc2-1"] = function ()
	local nCurHandValue,nCurTreeValue = PlantOlympicTree_GetTreeValue()
	tNpcGossip[19327]["Text212"] = string.format(tPlantOlympicTree_Text[19327]["Text117"],nCurHandValue)
	tNpcGossip[19327]["Text213"] = string.format(tPlantOlympicTree_Text[19327]["Text118"],nCurTreeValue)
	return true
end
tNpcGossip[19327]["tOption2-1"] = {6,7,8,9}
tNpcGossip[19327]["Option6"] = tPlantOlympicTree_Text[19326]["Option8"]
tNpcGossip[19327]["OptionFunc6"]="PlantOlympicTree_WaterTree</N>1</N>19327"

tNpcGossip[19327]["Option7"] = tPlantOlympicTree_Text[19326]["Option9"]
tNpcGossip[19327]["OptionFunc7"]="PlantOlympicTree_WaterTree</N>5</N>19327"

tNpcGossip[19327]["Option8"] = tPlantOlympicTree_Text[19326]["Option10"]
tNpcGossip[19327]["OptionFunc8"]="PlantOlympicTree_WaterTree</N>10</N>19327"

tNpcGossip[19327]["Option9"] = tPlantOlympicTree_Text[19326]["Option11"]

--领取额外奖励，背包满
tNpcGossip[19327]["Text3-1"] = {311}
tNpcGossip[19327]["Text311"] =tPlantOlympicTree_Text[19327]["Text311"]
tNpcGossip[19327]["tOption3-1"] = {10}
tNpcGossip[19327]["Option10"] = tPlantOlympicTree_Text[19327]["Option10"]

--如何获得奥运圣水
--谈谈奥运圣水
tNpcGossip[19327]["Text4-1"] = {411,412}
tNpcGossip[19327]["Text411"] = tPlantOlympicTree_Text[19326]["Text311"]
tNpcGossip[19327]["Text412"] = tPlantOlympicTree_Text[19326]["Text312"]
tNpcGossip[19327]["tOption4-1"] = {22}
tNpcGossip[19327]["Option22"] = tPlantOlympicTree_Text[19326]["Option22"]
tNpcGossip[19327]["OptionPoint22"]="4-2"

tNpcGossip[19327]["Text4-2"] = {421,422,423,424,425}
tNpcGossip[19327]["Text421"] = tPlantOlympicTree_Text[19326]["Text321"]
tNpcGossip[19327]["Text422"] = tPlantOlympicTree_Text[19326]["Text322"]
tNpcGossip[19327]["Text423"] = tPlantOlympicTree_Text[19326]["Text323"]
tNpcGossip[19327]["Text424"] = tPlantOlympicTree_Text[19326]["Text324"]
tNpcGossip[19327]["Text425"] = tPlantOlympicTree_Text[19326]["Text325"]
tNpcGossip[19327]["tOption4-2"] = {23}
tNpcGossip[19327]["Option23"] = tPlantOlympicTree_Text[19326]["Option23"]
tNpcGossip[19327]["OptionPoint23"]="1-1"

--不是自己家的树的对白
tNpcGossip[19327]["Text5-1"] = {511,512,513,514,515,516,517}
tNpcGossip[19327]["Text511"] = tPlantOlympicTree_Text[19326]["Text141"]
tNpcGossip[19327]["Text512"] = tPlantOlympicTree_Text[19326]["Text142"]
tNpcGossip[19327]["Text513"] = tPlantOlympicTree_Text[19327]["Text113"]
tNpcGossip[19327]["Text514"] = tPlantOlympicTree_Text[19327]["Text114"]
tNpcGossip[19327]["Text515"] = tPlantOlympicTree_Text[19327]["Text115"]
tNpcGossip[19327]["Text516"] = tPlantOlympicTree_Text[19326]["Text142"]
tNpcGossip[19327]["Text517"] = tPlantOlympicTree_Text[19327]["Text517"]
tNpcGossip[19327]["tOption5-1"] = {30}
tNpcGossip[19327]["Option30"]= tPlantOlympicTree_Text[19327]["Option30"]

--------------------------------------物品模板----------------------------------
--橄榄树苗
tItem[3200572] = tItem[3200572] or {}
tItem[3200572]["Function"] = function(nItemId,sItemName)
	PlantOlympicTree_CreatTree(nItemId)
end

--奥运圣水
tItem[3200573] = tItem[3200573] or {}
tItem[3200573]["Function"] = function(nItemId,sItemName)
	PlantOlympicTree_UseWater(nItemId)
end


--7日坐骑外套自选包
tItem[3200575] = tItem[3200575] or {}
tItem[3200575]["Text1-1"]={111}
tItem[3200575]["Text111"]=tPlantOlympicTree_Text[3200575]["Text111"]
tItem[3200575]["tOption1-1"]={1,2,3,4}
tItem[3200575]["Option1"]=tPlantOlympicTree_Text[3200575]["Option1"]
tItem[3200575]["OptionPoint1"]="2-1" 
tItem[3200575]["Option2"]=tPlantOlympicTree_Text[3200575]["Option2"]
tItem[3200575]["OptionPoint2"]="2-2" 
tItem[3200575]["Option3"]=tPlantOlympicTree_Text[3200575]["Option3"]
tItem[3200575]["OptionPoint3"]="2-3" 
tItem[3200575]["Option4"]=tPlantOlympicTree_Text[3200575]["Option4"]

--二次确认
tItem[3200575]["Text2-1"]={211}
tItem[3200575]["Text211"]=tPlantOlympicTree_Text[3200575]["Text211"]
tItem[3200575]["tOption2-1"]={5,6}
tItem[3200575]["Option5"]=tPlantOlympicTree_Text[3200575]["Option5"]
tItem[3200575]["OptionFunc5"]=string.format("PlantOlympicTree_UsePackage</N>%d</N>%d",3200575,1)
tItem[3200575]["Option6"]=tPlantOlympicTree_Text[3200575]["Option6"]
tItem[3200575]["OptionPoint6"]="1-1" 

tItem[3200575]["Text2-2"]={221}
tItem[3200575]["Text221"]=tPlantOlympicTree_Text[3200575]["Text221"]
tItem[3200575]["tOption2-2"]={7,6}
tItem[3200575]["Option7"]=tPlantOlympicTree_Text[3200575]["Option5"]
tItem[3200575]["OptionFunc7"]=string.format("PlantOlympicTree_UsePackage</N>%d</N>%d",3200575,2)

tItem[3200575]["Text2-3"]={231}
tItem[3200575]["Text231"]=tPlantOlympicTree_Text[3200575]["Text231"]
tItem[3200575]["tOption2-3"]={8,6}
tItem[3200575]["Option8"]=tPlantOlympicTree_Text[3200575]["Option5"]
tItem[3200575]["OptionFunc8"]=string.format("PlantOlympicTree_UsePackage</N>%d</N>%d",3200575,3)

