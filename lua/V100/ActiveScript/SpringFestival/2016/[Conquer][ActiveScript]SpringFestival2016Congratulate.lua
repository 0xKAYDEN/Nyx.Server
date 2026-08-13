------------------------------------------------------------------------------------
--Name:			[简体征服][活动脚本]【简体征服】2016春节活动之欢欢喜喜贺新春
--Creator:		刘益辉
--Created:		2015/10/23
------------------------------------------------------------------------------------
--掩码说明
-- stc(138,99) 记录玩家是否领过奖
------------------------------------------------------------------------------------
--	命名前缀
--	SpringFestivalActivities
--常量表配置
local tSpringFestivalActivities_NewYear_Cont = {}
	--活动前时间
	tSpringFestivalActivities_NewYear_Cont["BeforeActivityTime"] = "2016-01-01 00:00 2017-01-26 23:59"
	--活动中时间
	tSpringFestivalActivities_NewYear_Cont["ActivityTime"] = "2017-01-27 00:00 2017-02-06 23:59"
	--除夕时间
	tSpringFestivalActivities_NewYear_Cont["EVeActivityTime"] = "2017-01-27 00:00 2017-01-27 23:59"
	--过年时间
	tSpringFestivalActivities_NewYear_Cont["NewyearActivityTime"] = "2017-01-28 00:00 2017-02-06 23:59"
	--除夕夜（23:54前）
	tSpringFestivalActivities_NewYear_Cont["BeforeEVeTime"] = "2017-01-27 00:00 2017-01-27 23:54"
	--除夕夜（23:54后）
	tSpringFestivalActivities_NewYear_Cont["EVeTime"] = "2017-01-27 23:55 2017-01-27 23:59"
	--捡礼盒时间
	tSpringFestivalActivities_NewYear_Cont["PickupBoxTime"]="2017-01-27 23:55 2017-01-28 00:10"
	--大年初一
	tSpringFestivalActivities_NewYear_Cont["DistributeGift"]="2017-01-28 00:00 2017-01-28 23:59"
	--清理地图时间
	tSpringFestivalActivities_NewYear_Cont["KickTime"]="2017-02-07 00:00 2017-02-07 00:05"
	--背包空间
	tSpringFestivalActivities_NewYear_Cont["BagSpace"]=1
	--玩家等级要求
	tSpringFestivalActivities_NewYear_Cont["Metempsychosis"] = 0
	tSpringFestivalActivities_NewYear_Cont["Level"] = 80
	--奖励的银两
	tSpringFestivalActivities_NewYear_Cont["money"] =88888
	--回双龙城坐标
	tSpringFestivalActivities_NewYear_Cont["MapId"]=1002
	tSpringFestivalActivities_NewYear_Cont["PositionX"]=285
	tSpringFestivalActivities_NewYear_Cont["PositionY"]=372
	-- stc(138,99) 记录玩家是否领过奖
	tSpringFestivalActivities_NewYear_Cont["PReward"] = {}
	tSpringFestivalActivities_NewYear_Cont["PReward"]["Event"] = 138
	tSpringFestivalActivities_NewYear_Cont["PReward"]["StcType"] = 99
	--陷阱传送坐标
	tSpringFestivalActivities_NewYear_Cont["Trap"] = {}
	tSpringFestivalActivities_NewYear_Cont["Trap"]["MapId"]=3901
	tSpringFestivalActivities_NewYear_Cont["Trap"][992802]={}
	tSpringFestivalActivities_NewYear_Cont["Trap"][992802]["PositionX"]=093
	tSpringFestivalActivities_NewYear_Cont["Trap"][992802]["PositionY"]=160
	tSpringFestivalActivities_NewYear_Cont["Trap"][992803]={}
	tSpringFestivalActivities_NewYear_Cont["Trap"][992803]["PositionX"]=150
	tSpringFestivalActivities_NewYear_Cont["Trap"][992803]["PositionY"]=107
	tSpringFestivalActivities_NewYear_Cont["Trap"][992804]={}
	tSpringFestivalActivities_NewYear_Cont["Trap"][992804]["PositionX"]=094
	tSpringFestivalActivities_NewYear_Cont["Trap"][992804]["PositionY"]=130
	tSpringFestivalActivities_NewYear_Cont["Trap"][992805]={}
	tSpringFestivalActivities_NewYear_Cont["Trap"][992805]["PositionX"]=149
	tSpringFestivalActivities_NewYear_Cont["Trap"][992805]["PositionY"]=159
	--相关物品ID
	--指南针
	local tSpringFestivalActivities_NewYear_Cont_Id = {}
	tSpringFestivalActivities_NewYear_Cont_Id["Item"] = {}
	tSpringFestivalActivities_NewYear_Cont_Id["Item"]["Compass"] = 3007667
	--地图批量产生发大财礼盒
	tSpringFestivalActivities_NewYear_Cont_Id["Item"]["Reward"] ={}
	tSpringFestivalActivities_NewYear_Cont_Id["Item"]["Reward"]["nMapId"]=3901
	tSpringFestivalActivities_NewYear_Cont_Id["Item"]["Reward"]["nItemId"]=3007668
	tSpringFestivalActivities_NewYear_Cont_Id["Item"]["Reward"]["nPosX"]=092
	tSpringFestivalActivities_NewYear_Cont_Id["Item"]["Reward"]["nPosY"]=060
	tSpringFestivalActivities_NewYear_Cont_Id["Item"]["Reward"]["nCellx"]=200
	tSpringFestivalActivities_NewYear_Cont_Id["Item"]["Reward"]["nCelly"]=200
	tSpringFestivalActivities_NewYear_Cont_Id["Item"]["Reward"]["nItemNum"]=111
	tSpringFestivalActivities_NewYear_Cont_Id["Item"]["Reward"]["nExistTime"]=60
	-- --各种光效
	local tSpringFestivalActivities_NewYear_Effect = {}
		tSpringFestivalActivities_NewYear_Effect["Reward"] = "mammon"
	-- --LOG 表
	local tSpringFestivalActivities_NewYear_LOG = {}
		--进入活动地图(活动参与)
		tSpringFestivalActivities_NewYear_LOG["enter"] = "0,0,0,0,12000249,1[1],0,0"
		--领奖
		--tSpringFestivalActivities_NewYear_LOG["Gift"] = "0,0,0,0,12000249,2,3007668,1"
		--过期删除指南针
		tSpringFestivalActivities_NewYear_LOG["DropCompass"] ="0,0,3007667,1,12000249,3,0,0"
		--过期删除发大财礼包
		tSpringFestivalActivities_NewYear_LOG["DropGift"] ="0,0,3007668,1,12000249,3,0,0"
		--打开发大财礼包获得1000银两
		tSpringFestivalActivities_NewYear_LOG["Reward"] = "0,0,3007668,1,12000249,2,1,1000"
		--离开活动地图
		tSpringFestivalActivities_NewYear_LOG["Leave"] ="0,0,0,0,12000249,3,0,0"
		--任务完成
		tSpringFestivalActivities_NewYear_LOG["Finish"] ="0,0,0,0,12000249,1[2],0,0"
		--festivalID
		tSpringFestivalActivities_NewYear_LOG["FestivalId"]=3359
		--logID
		tSpringFestivalActivities_NewYear_LOG["LogId"]=12000249
	--传送概率
	local  tSpringFestivalActivities_NewYear_Send = {}
	tSpringFestivalActivities_NewYear_Send["Send"] = {}
	tSpringFestivalActivities_NewYear_Send["Send"]["MapId"]=3901
	tSpringFestivalActivities_NewYear_Send["Send"]["nRange"]=5
	
	tSpringFestivalActivities_NewYear_Send["Send"][1] = {}
	tSpringFestivalActivities_NewYear_Send["Send"][1]["PositionX"]=78
	tSpringFestivalActivities_NewYear_Send["Send"][1]["PositionY"]=196
	
	tSpringFestivalActivities_NewYear_Send["Send"][2] = {}
	tSpringFestivalActivities_NewYear_Send["Send"][2]["PositionX"]=186
	tSpringFestivalActivities_NewYear_Send["Send"][2]["PositionY"]=219

	tSpringFestivalActivities_NewYear_Send["Send"][3] = {}
	tSpringFestivalActivities_NewYear_Send["Send"][3]["PositionX"]=207
	tSpringFestivalActivities_NewYear_Send["Send"][3]["PositionY"]=86
	
	tSpringFestivalActivities_NewYear_Send["Send"][4] = {}
	tSpringFestivalActivities_NewYear_Send["Send"][4]["PositionX"]=97
	tSpringFestivalActivities_NewYear_Send["Send"][4]["PositionY"]=64

-- --------------------------------------逻辑部分-----------------------------------------
--民俗协会会长
--请带我去财富园
function  SpringFestivalActivities_NewYear_FindWaytoFortuneGarden(nNpcId)
	local nEvent = tSpringFestivalActivities_NewYear_Cont["PReward"]["Event"]
	local nType = tSpringFestivalActivities_NewYear_Cont["PReward"]["StcType"]
	--活动时间外
	if not Sys_ChkFullTime(tSpringFestivalActivities_NewYear_Cont["BeforeActivityTime"]) and not Sys_ChkFullTime(tSpringFestivalActivities_NewYear_Cont["ActivityTime"]) then
			LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	-- 除夕前（23:55）前
	if Sys_ChkFullTime(tSpringFestivalActivities_NewYear_Cont["BeforeEVeTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	--玩家等级不足
	if not User_JudgeLevelAndMetempsychosis(tSpringFestivalActivities_NewYear_Cont["Level"],tSpringFestivalActivities_NewYear_Cont["Metempsychosis"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	--隔天清零
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)
	end
	--判断是否捡箱子时间
	if not Sys_ChkFullTime(tSpringFestivalActivities_NewYear_Cont["PickupBoxTime"]) then
	--判断是否领过奖
		if Task_ChkStcValue(nEvent,nType,">=",1) then
			LinkNpcGossipFunc_New(nNpcId,"2-4")
			return
		end
	end
	--传送财富园
	SpringFestivalActivities_NewYear_SendFortuneGarden(nNpcId)
end
	--传送到财富园
function SpringFestivalActivities_NewYear_SendFortuneGarden(nNpcId)
	--指南针不存在
	if  not Item_ChkItem(tSpringFestivalActivities_NewYear_Cont_Id["Item"]["Compass"] ) then
	--背包空间空间不足
		if not User_CheckLeftSpace(tSpringFestivalActivities_NewYear_Cont["BagSpace"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
		end
		--添加指南针
		Item_AddItem(tSpringFestivalActivities_NewYear_Cont_Id["Item"]["Compass"] )
	end

	--随机传送到财富园
	--local flat,tSend= Probabil_RandomAward(tSpringFestivalActivities_NewYear_Send["Send"],1)  
	local v=math.random(1,4)
	local nMapId= tSpringFestivalActivities_NewYear_Send["Send"]["MapId"]
	local nPositionX= tSpringFestivalActivities_NewYear_Send["Send"][v]["PositionX"]
	local nPositionY= tSpringFestivalActivities_NewYear_Send["Send"][v]["PositionY"]
	local nRange=tSpringFestivalActivities_NewYear_Send["Send"]["nRange"]
	
	if Get_NpcMapID(nNpcId) ~= Get_UserMapId() then
		User_TalkChannel2005(tTransferFail_Text["MsgTip"])
		return
	end
	if not User_UserRandBoundTrans(nMapId,nPositionX,nPositionY,nRange,nRange) then
		return
	end
	--User_ChgMap(nMapId,nPositionX,nPositionY)
	Sys_SaveActionFestivalLog(tSpringFestivalActivities_NewYear_LOG["enter"] )
	User_TalkChannel2005(tSpringFestivalActivities_NewYear_Text["enter"])
		-- 除夕\春节对白
	if Sys_ChkFullTime(tSpringFestivalActivities_NewYear_Cont["EVeTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-5")
	else
		LinkNpcGossipFunc_New(nNpcId,"2-6")
	end
end
--回双龙城
function SpringFestivalActivities_NewYear_GoBackTwinCity(nUserId)
	local nNowUserId = nUserId or Get_UserId()
	local nMapId=tSpringFestivalActivities_NewYear_Cont["MapId"]
	local nPositionX=tSpringFestivalActivities_NewYear_Cont["PositionX"]
	local nPositionY=tSpringFestivalActivities_NewYear_Cont["PositionY"]
	local nRange=tSpringFestivalActivities_NewYear_Send["Send"]["nRange"]
	local nMapId1=tSpringFestivalActivities_NewYear_Cont_Id["Item"]["Reward"]["nMapId"] 
	if Get_UserMapId(nNowUserId) ~= nMapId1 then
		Sys_MsgBox(tSpringFestivalActivities_NewYear_Text["Limit"])
		return
	end
	if not User_UserRandBoundTrans(nMapId,nPositionX,nPositionY,nRange,nRange,0,nNowUserId) then
		return
	end
	--User_ChgMap(nMapId,nPositionX,nPositionY)
	User_TalkChannel2005(tSpringFestivalActivities_NewYear_Text["GoBack"],nNowUserId)
	Sys_SaveActionFestivalLog(tSpringFestivalActivities_NewYear_LOG["Leave"],nNowUserId)
	--删除指南针
	if Item_ChkItem(tSpringFestivalActivities_NewYear_Cont_Id["Item"]["Compass"],1,0,nNowUserId) then
		if Item_DelItem(tSpringFestivalActivities_NewYear_Cont_Id["Item"]["Compass"],1,0,nNowUserId) then 
		end
	end
end

--求财神爷爷赐财宝
function SpringFestivalActivities_NewYear_GetReward(nNpcId)
	local nEvent = tSpringFestivalActivities_NewYear_Cont["PReward"]["Event"]
	local nType = tSpringFestivalActivities_NewYear_Cont["PReward"]["StcType"]
	local nMapId=tSpringFestivalActivities_NewYear_Cont["MapId"]
	local nPositionX=tSpringFestivalActivities_NewYear_Cont["PositionX"]
	local nPositionY=tSpringFestivalActivities_NewYear_Cont["PositionY"]
	--活动时间外
	if not Sys_ChkFullTime(tSpringFestivalActivities_NewYear_Cont["BeforeActivityTime"]) and not Sys_ChkFullTime(tSpringFestivalActivities_NewYear_Cont["ActivityTime"]) then
			LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	--隔天清零
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)
	end
	--领过奖对白
	if Task_ChkStcValue(nEvent,nType,">=",1) then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	--判断背包空间
	if not User_CheckLeftSpace(tSpringFestivalActivities_NewYear_Cont["BagSpace"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	--领奖
	Task_SetStatistic(nEvent,nType,1,1,0)
	Task_SetStcTimestamp(nEvent,nType,0,0)
	FestivalGeneralPackage_GetGift(tSpringFestivalActivities_NewYear_LOG["FestivalId"],tSpringFestivalActivities_NewYear_LOG["LogId"])
	Sys_SaveActionFestivalLog(tSpringFestivalActivities_NewYear_LOG["Finish"])
	User_EffectAdd("self",tSpringFestivalActivities_NewYear_Effect["Reward"])
	User_TalkChannel2005( tSpringFestivalActivities_NewYear_Text["GetReward"] )
	--成功领奖
	LinkNpcGossipFunc_New(nNpcId,"3-3")
end
--陷阱传送
function SpringFestivalActivities_NewYear_TrapSend(nTrapId)
	local nMapId=tSpringFestivalActivities_NewYear_Cont["Trap"]["MapId"]
	local nPositionX=tSpringFestivalActivities_NewYear_Cont["Trap"][nTrapId]["PositionX"]
	local nPositionY=tSpringFestivalActivities_NewYear_Cont["Trap"][nTrapId]["PositionY"]
	local nRange=tSpringFestivalActivities_NewYear_Send["Send"]["nRange"]
	User_UserRandBoundTrans(nMapId,nPositionX,nPositionY,nRange,nRange)
	User_TalkChannel2005(tSpringFestivalActivities_NewYear_Text["Trap"])
end
---公告
function SpringFestivalActivities_NewYear_Notice()
	if Sys_ChkFullTime(tSpringFestivalActivities_NewYear_Cont["PickupBoxTime"])then
		Sys_GmBroadcast(tSpringFestivalActivities_NewYear_Text["Notice"])
		--Sys_TalkBroadcast(tSpringFestivalActivities_NewYear_Text["Notice"])
	end
end

	--清理地图
function  SpringFestivalActivities_NewYear_KickThePlayerOut()
    local   nMapId=tSpringFestivalActivities_NewYear_Cont_Id["Item"]["Reward"]["nMapId"]
	if Sys_ChkFullTime(tSpringFestivalActivities_NewYear_Cont["KickTime"]) then
		Map_UserExeFunc(nMapId,-1,"SpringFestivalActivities_NewYear_GoBackTwinCity")
	end
end

--洒礼盒
function  SpringFestivalActivities_NewYear_DistributeGift ()
	local nMapId=tSpringFestivalActivities_NewYear_Cont_Id["Item"]["Reward"]["nMapId"]
	local nItemId=tSpringFestivalActivities_NewYear_Cont_Id["Item"]["Reward"]["nItemId"]
	local nPosX=tSpringFestivalActivities_NewYear_Cont_Id["Item"]["Reward"]["nPosX"]
	local nPosY=tSpringFestivalActivities_NewYear_Cont_Id["Item"]["Reward"]["nPosY"]
	local nCellx=tSpringFestivalActivities_NewYear_Cont_Id["Item"]["Reward"]["nCellx"]
	local nCelly=tSpringFestivalActivities_NewYear_Cont_Id["Item"]["Reward"]["nCelly"]
	local nItemNum =tSpringFestivalActivities_NewYear_Cont_Id["Item"]["Reward"]["nItemNum"]
	local nExistTime =tSpringFestivalActivities_NewYear_Cont_Id["Item"]["Reward"]["nExistTime"]
	if Sys_ChkFullTime(tSpringFestivalActivities_NewYear_Cont["DistributeGift"])then
		Map_DropMultiItems(nMapId, nItemId, nPosX, nPosY, nCellx, nCelly, nItemNum, nExistTime)
	end

end

--使用指南针
function SpringFestivalActivities_NewYear_CompasstoTwinCity(nItemId,sItemName)
	local nMapId= tSpringFestivalActivities_NewYear_Cont_Id["Item"]["Reward"]["nMapId"]
	--过期删除指南针
	if not Sys_ChkFullTime(tSpringFestivalActivities_NewYear_Cont["ActivityTime"]) then
		if Item_ChkItem(tSpringFestivalActivities_NewYear_Cont_Id["Item"]["Compass"]) then
			if not Item_DelItem(tSpringFestivalActivities_NewYear_Cont_Id["Item"]["Compass"] ) then
			return
			end
			Sys_SaveActionFestivalLog(tSpringFestivalActivities_NewYear_LOG["DropCompass"])
			User_TalkChannel2005(tSpringFestivalActivities_NewYear_Text["Overdue"])
			return
		end
	end
	--判断是否在财富园
	if Get_UserMapId() ==nMapId then
		Sys_MsgBox(tSpringFestivalActivities_NewYear_Text["GoBackTwinCity"],"SpringFestivalActivities_NewYear_GoBackTwinCity")
	else
		Sys_MsgBox(tSpringFestivalActivities_NewYear_Text["Limit"])
	end
end
--使用发大财礼盒
function SpringFestivalActivities_NewYear_Reward(nItemId,sItemName)
	--[[if not Sys_ChkFullTime(tSpringFestivalActivities_NewYear_Cont["ActivityTime"]) then
		if Item_ChkItem(tSpringFestivalActivities_NewYear_Cont_Id["Item"]["Reward"]["nItemId"]) then
			Item_DelItem(tSpringFestivalActivities_NewYear_Cont_Id["Item"]["Reward"]["nItemId"])
			Sys_SaveActionFestivalLog(tSpringFestivalActivities_NewYear_LOG["DropGift"] )
			User_TalkChannel2005(tSpringFestivalActivities_NewYear_Text["Overdue"])
		end
	end--]]
	--银两上限判断
	if not User_CanPutMoney2Bag(tSpringFestivalActivities_NewYear_Cont["money"] )then
		Sys_MsgBox(tSpringFestivalActivities_NewYear_Text["TooMuch"])
		return
	end
	if not Item_ChkItem(tSpringFestivalActivities_NewYear_Cont_Id["Item"]["Reward"]["nItemId"]) then
		return
	end
	--删除礼包
	 if not Item_DelItem(tSpringFestivalActivities_NewYear_Cont_Id["Item"]["Reward"]["nItemId"]) then
		return
	 end
	User_AddMoney(tSpringFestivalActivities_NewYear_Cont["money"] )
	Sys_SaveActionFestivalLog(tSpringFestivalActivities_NewYear_LOG["Reward"] )
	User_TalkChannel2005(tSpringFestivalActivities_NewYear_Text["Reward"])
end
--------------------------------------NPC模块-------------------------------------------
	--18881	民俗协会会长
	tNpcFace[3429] = 63
	tNpcGossip[18881]= tNpcGossip[18881] or DefaultNpc:new{}
	tNpcGossip[18881]["OptionHidden"] = 1
	--活动时间前
	tNpcGossip[18881]["Text1-1"] = {111,112,113,114,115}
	tNpcGossip[18881]["Text111"] = tSpringFestivalActivities_NewYear_Text[18881]["Text111"]
	tNpcGossip[18881]["Text112"] = tSpringFestivalActivities_NewYear_Text[18881]["Text112"]
	tNpcGossip[18881]["Text113"] = tSpringFestivalActivities_NewYear_Text[18881]["Text113"]
	tNpcGossip[18881]["Text114"] = tSpringFestivalActivities_NewYear_Text[18881]["Text114"]
	tNpcGossip[18881]["Text115"] = tSpringFestivalActivities_NewYear_Text[18881]["Text115"]
	tNpcGossip[18881]["tOption1-1"] = {1}
	tNpcGossip[18881]["ChkFunc1-1"]= function()
		return Sys_ChkFullTime(tSpringFestivalActivities_NewYear_Cont["BeforeActivityTime"])
end
	--选项 求抱大腿啊！
	tNpcGossip[18881]["Option1"]  = tSpringFestivalActivities_NewYear_Text[18881]["Option1"]
	
	
		--等级判断
	tNpcGossip[18881]["Text1-2"] = {121,122}
	tNpcGossip[18881]["Text121"] = tSpringFestivalActivities_NewYear_Text[18881]["Text231"]
	tNpcGossip[18881]["Text122"] = tSpringFestivalActivities_NewYear_Text[18881]["Text232"]
	tNpcGossip[18881]["tOption1-2"]  = {9}
	tNpcGossip[18881]["ChkFunc1-2"]= function()
		return  Sys_ChkFullTime(tSpringFestivalActivities_NewYear_Cont["EVeActivityTime"]) and (not  User_JudgeLevelAndMetempsychosis(tSpringFestivalActivities_NewYear_Cont["Level"],tSpringFestivalActivities_NewYear_Cont["Metempsychosis"]))
end
	--选项 真是遗憾啊！
	tNpcGossip[18881]["Option9"]  = tSpringFestivalActivities_NewYear_Text[18881]["Option9"]
	
	--活动中
	--除夕夜
	tNpcGossip[18881]["Text1-3"] = {131,132,133,134}
	tNpcGossip[18881]["Text131"] = tSpringFestivalActivities_NewYear_Text[18881]["Text121"]
	tNpcGossip[18881]["Text132"] = tSpringFestivalActivities_NewYear_Text[18881]["Text122"]
	tNpcGossip[18881]["Text133"] = tSpringFestivalActivities_NewYear_Text[18881]["Text123"]
	tNpcGossip[18881]["Text134"] = tSpringFestivalActivities_NewYear_Text[18881]["Text124"]
	tNpcGossip[18881]["tOption1-3"] = {3,4,5,6}
	tNpcGossip[18881]["ChkFunc1-3"]= function()
		return  Sys_ChkFullTime(tSpringFestivalActivities_NewYear_Cont["EVeActivityTime"])
end
	--过年期间
	tNpcGossip[18881]["Text1-4"] = {141,142,143}
	tNpcGossip[18881]["Text141"] = tSpringFestivalActivities_NewYear_Text[18881]["Text131"]
	tNpcGossip[18881]["Text142"] = tSpringFestivalActivities_NewYear_Text[18881]["Text132"]
	tNpcGossip[18881]["Text143"] = tSpringFestivalActivities_NewYear_Text[18881]["Text133"]
	tNpcGossip[18881]["tOption1-4"] = {3,4,6}
	tNpcGossip[18881]["ChkFunc1-4"]= function()
		return  Sys_ChkFullTime(tSpringFestivalActivities_NewYear_Cont["NewyearActivityTime"])
	end
	--选项   请带我去财富园。
	tNpcGossip[18881]["Option3"]  = tSpringFestivalActivities_NewYear_Text[18881]["Option3"]
	tNpcGossip[18881]["OptionFunc3"]="SpringFestivalActivities_NewYear_FindWaytoFortuneGarden</N>18881"
	--选项  财神爷爷在哪儿呢？
	tNpcGossip[18881]["Option4"]  = tSpringFestivalActivities_NewYear_Text[18881]["Option4"]
	tNpcGossip[18881]["OptionPoint4"] = "3-1"
	--选项  除夕夜的劲爆消息。
	tNpcGossip[18881]["Option5"]  = tSpringFestivalActivities_NewYear_Text[18881]["Option5"]
	tNpcGossip[18881]["OptionPoint5"] = "4-1"
	--选项  这小道消息真给力！
	tNpcGossip[18881]["Option6"]  = tSpringFestivalActivities_NewYear_Text[18881]["Option6"]
	

	--活动时间后
	tNpcGossip[18881]["Text1-5"] = {151,152}
	tNpcGossip[18881]["Text151"] = tSpringFestivalActivities_NewYear_Text[18881]["Text141"]
	tNpcGossip[18881]["Text152"] = tSpringFestivalActivities_NewYear_Text[18881]["Text142"]
	tNpcGossip[18881]["tOption1-5"] = {2}
	--选项 同喜同喜！
	tNpcGossip[18881]["Option2"]  = tSpringFestivalActivities_NewYear_Text[18881]["Option2"]
	
		--时间判断
	tNpcGossip[18881]["Text2-1"] = {211,212}
	tNpcGossip[18881]["Text211"] = tSpringFestivalActivities_NewYear_Text[18881]["Text211"]
	tNpcGossip[18881]["Text212"] = tSpringFestivalActivities_NewYear_Text[18881]["Text212"]
	tNpcGossip[18881]["tOption2-1"] = {7}

	--选项 好的
	tNpcGossip[18881]["Option7"]  = tSpringFestivalActivities_NewYear_Text[18881]["Option7"]
	
	--背包满
	tNpcGossip[18881]["Text2-2"] = {221,222}
	tNpcGossip[18881]["Text221"] = tSpringFestivalActivities_NewYear_Text[18881]["Text221"]
	tNpcGossip[18881]["Text222"] = tSpringFestivalActivities_NewYear_Text[18881]["Text222"]
	tNpcGossip[18881]["tOption2-2"] = {8}

	--选项 好的。
	tNpcGossip[18881]["Option8"]  = tSpringFestivalActivities_NewYear_Text[18881]["Option8"]


	
	--领过奖
	tNpcGossip[18881]["Text2-4"] = {241,242,243}
	tNpcGossip[18881]["Text241"] = tSpringFestivalActivities_NewYear_Text[18881]["Text241"]
	tNpcGossip[18881]["Text242"] = tSpringFestivalActivities_NewYear_Text[18881]["Text242"]
	tNpcGossip[18881]["Text243"] = tSpringFestivalActivities_NewYear_Text[18881]["Text243"]
	tNpcGossip[18881]["tOption2-4"] = {10}

	--选项  多谢了
	tNpcGossip[18881]["Option10"]  = tSpringFestivalActivities_NewYear_Text[18881]["Option10"]
	tNpcGossip[18881]["OptionFunc10"]="SpringFestivalActivities_NewYear_SendFortuneGarden</N>18881"
	
	--除夕夜对白
	tNpcGossip[18881]["Text2-5"] = {251,252,253}
	tNpcGossip[18881]["Text251"] = tSpringFestivalActivities_NewYear_Text[18881]["Text251"]
	tNpcGossip[18881]["Text252"] = tSpringFestivalActivities_NewYear_Text[18881]["Text252"]
	tNpcGossip[18881]["Text253"] = tSpringFestivalActivities_NewYear_Text[18881]["Text253"]
	tNpcGossip[18881]["tOption2-5"] = {11}

	--选项 多谢！
	tNpcGossip[18881]["Option11"]  = tSpringFestivalActivities_NewYear_Text[18881]["Option11"]
	
	--春节对白
	tNpcGossip[18881]["Text2-6"] = {261,262,263}
	tNpcGossip[18881]["Text261"] = tSpringFestivalActivities_NewYear_Text[18881]["Text261"]
	tNpcGossip[18881]["Text262"] = tSpringFestivalActivities_NewYear_Text[18881]["Text262"]
	tNpcGossip[18881]["Text263"] = tSpringFestivalActivities_NewYear_Text[18881]["Text263"]
	tNpcGossip[18881]["tOption2-6"] = {12}

		--选项 多谢！
	tNpcGossip[18881]["Option12"]  = tSpringFestivalActivities_NewYear_Text[18881]["Option12"]
	
	--财神爷爷在哪儿呢
	tNpcGossip[18881]["Text3-1"] = {311,312,313}
	tNpcGossip[18881]["Text311"] = tSpringFestivalActivities_NewYear_Text[18881]["Text311"]
	tNpcGossip[18881]["Text312"] = tSpringFestivalActivities_NewYear_Text[18881]["Text312"]
	tNpcGossip[18881]["Text313"] = tSpringFestivalActivities_NewYear_Text[18881]["Text313"]
	tNpcGossip[18881]["tOption3-1"] = {13}

	--选项  原来是这样！！
	tNpcGossip[18881]["Option13"]  = tSpringFestivalActivities_NewYear_Text[18881]["Option13"]
	
	--除夕夜的劲爆消息。
	tNpcGossip[18881]["Text4-1"] = {411,412,413}
	tNpcGossip[18881]["Text411"] = tSpringFestivalActivities_NewYear_Text[18881]["Text411"]
	tNpcGossip[18881]["Text412"] = tSpringFestivalActivities_NewYear_Text[18881]["Text412"]
	tNpcGossip[18881]["Text413"] = tSpringFestivalActivities_NewYear_Text[18881]["Text413"]
	tNpcGossip[18881]["tOption4-1"] = {14}

	--选项  原来是这样！！
	tNpcGossip[18881]["Option14"]  = tSpringFestivalActivities_NewYear_Text[18881]["Option14"]
	
	
	---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	--18882	财神爷爷
	tNpcFace[3430] = 6
	tNpcGossip[18882]= tNpcGossip[18882] or DefaultNpc:new{}
	tNpcGossip[18882]["OptionHidden"] = 1
	
	--活动时间前
	tNpcGossip[18882]["Text1-1"] = {111}
	tNpcGossip[18882]["Text111"] = tSpringFestivalActivities_NewYear_Text[18882]["Text111"]
	tNpcGossip[18882]["tOption1-1"] = {1}
	tNpcGossip[18882]["ChkFunc1-1"]= function()
		return Sys_ChkFullTime(tSpringFestivalActivities_NewYear_Cont["BeforeActivityTime"])
end
	tNpcGossip[18882]["Option1"]  = tSpringFestivalActivities_NewYear_Text[18882]["Option1"]
	----活动中
		--除夕夜
	tNpcGossip[18882]["Text1-2"] = {121,122,123}
	tNpcGossip[18882]["Text121"] = tSpringFestivalActivities_NewYear_Text[18882]["Text121"]
	tNpcGossip[18882]["Text122"] = tSpringFestivalActivities_NewYear_Text[18882]["Text122"]
	tNpcGossip[18882]["Text123"] = tSpringFestivalActivities_NewYear_Text[18882]["Text123"]
	tNpcGossip[18882]["tOption1-2"] = {2,3}
	tNpcGossip[18882]["ChkFunc1-2"]= function()
		return Sys_ChkFullTime(tSpringFestivalActivities_NewYear_Cont["EVeActivityTime"])
end
	--请带我离开财富园吧！
	tNpcGossip[18882]["Option2"]  = tSpringFestivalActivities_NewYear_Text[18882]["Option2"]
	tNpcGossip[18882]["OptionPoint2"] = "2-1"
	--多谢财神爷爷！
	tNpcGossip[18882]["Option3"]  = tSpringFestivalActivities_NewYear_Text[18882]["Option3"]
	
	--询问是否返回双龙城
	tNpcGossip[18882]["Text2-1"] = {211}
	tNpcGossip[18882]["Text211"] = tSpringFestivalActivities_NewYear_Text[18882]["Text211"]
	tNpcGossip[18882]["tOption2-1"] = {4,5}
	--确定
	tNpcGossip[18882]["Option4"]  = tSpringFestivalActivities_NewYear_Text[18882]["Option4"]
	tNpcGossip[18882]["OptionFunc4"]="SpringFestivalActivities_NewYear_GoBackTwinCity"
	--取消
	tNpcGossip[18882]["Option5"]  = tSpringFestivalActivities_NewYear_Text[18882]["Option5"]
	
		--春节
	tNpcGossip[18882]["Text1-3"] = {131,132}
	tNpcGossip[18882]["Text131"] = tSpringFestivalActivities_NewYear_Text[18882]["Text131"]
	tNpcGossip[18882]["Text132"] = tSpringFestivalActivities_NewYear_Text[18882]["Text132"]
	tNpcGossip[18882]["tOption1-3"] = {6,2,7}
	tNpcGossip[18882]["ChkFunc1-3"]= function()
		return   Sys_ChkFullTime(tSpringFestivalActivities_NewYear_Cont["NewyearActivityTime"])
	end
	--求财神爷爷赐财宝！
	tNpcGossip[18882]["Option6"]  = tSpringFestivalActivities_NewYear_Text[18882]["Option6"]
	tNpcGossip[18882]["OptionFunc6"]="SpringFestivalActivities_NewYear_GetReward</N>18882"
	--财神爷爷保佑！
	tNpcGossip[18882]["Option7"]  = tSpringFestivalActivities_NewYear_Text[18882]["Option7"]
	
--活动后
	tNpcGossip[18882]["Text1-4"] = {141}
	tNpcGossip[18882]["Text141"] = tSpringFestivalActivities_NewYear_Text[18882]["Text141"]
	tNpcGossip[18882]["tOption1-4"] = {8}
	--多谢财神爷爷！
	tNpcGossip[18882]["Option8"]  = tSpringFestivalActivities_NewYear_Text[18882]["Option8"]
	
	--已领奖
	tNpcGossip[18882]["Text3-1"] = {311,312}
	tNpcGossip[18882]["Text311"] = tSpringFestivalActivities_NewYear_Text[18882]["Text311"]
	tNpcGossip[18882]["Text312"] = tSpringFestivalActivities_NewYear_Text[18882]["Text312"]
	tNpcGossip[18882]["tOption3-1"] = {9}
	--我搞错了
	tNpcGossip[18882]["Option9"]  = tSpringFestivalActivities_NewYear_Text[18882]["Option9"]
	
	--背包满
	tNpcGossip[18882]["Text3-2"] = {321}
	tNpcGossip[18882]["Text321"] = tSpringFestivalActivities_NewYear_Text[18882]["Text321"]
	tNpcGossip[18882]["tOption3-2"] = {10}
	--好的
	tNpcGossip[18882]["Option10"]  = tSpringFestivalActivities_NewYear_Text[18882]["Option10"]
	
		--成功领奖
	tNpcGossip[18882]["Text3-3"] = {331}
	tNpcGossip[18882]["Text331"] = tSpringFestivalActivities_NewYear_Text[18882]["Text331"]
	tNpcGossip[18882]["tOption3-3"] = {11}
	--好的
	tNpcGossip[18882]["Option11"]  = tSpringFestivalActivities_NewYear_Text[18882]["Option11"]
	tNpcGossip[18882]["OptionFunc11"]="SpringFestivalActivities_NewYear_GoBackTwinCity"
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	--18883	元宝童子18883


	tNpcFace[3431] = 36
	tNpcGossip[18883]= tNpcGossip[18883] or DefaultNpc:new{}
	tNpcGossip[18883]["OptionHidden"] = 1
	
	--活动时间中
	tNpcGossip[18883]["Text1-1"] = {111,112}
	tNpcGossip[18883]["Text111"] = tSpringFestivalActivities_NewYear_Text[18883]["Text111"]
	tNpcGossip[18883]["Text112"] = tSpringFestivalActivities_NewYear_Text[18883]["Text112"]
	tNpcGossip[18883]["tOption1-1"] = {1,2}
	tNpcGossip[18883]["ChkFunc1-1"]= function()
		return Sys_ChkFullTime(tSpringFestivalActivities_NewYear_Cont["ActivityTime"])
end
	--请带我离开财富园吧！
	tNpcGossip[18883]["Option1"]  = tSpringFestivalActivities_NewYear_Text[18883]["Option1"]
	tNpcGossip[18883]["OptionPoint1"] = "2-1"
	--嘤嘤，居然不告诉我！
	tNpcGossip[18883]["Option2"]  = tSpringFestivalActivities_NewYear_Text[18883]["Option2"]
	
	--询问是否返回双龙城
	tNpcGossip[18883]["Text2-1"] = {211}
	tNpcGossip[18883]["Text211"] = tSpringFestivalActivities_NewYear_Text[18883]["Text211"]
	tNpcGossip[18883]["tOption2-1"] = {4,5}
	--确定
	tNpcGossip[18883]["Option4"]  = tSpringFestivalActivities_NewYear_Text[18883]["Option4"]
	tNpcGossip[18883]["OptionFunc4"]="SpringFestivalActivities_NewYear_GoBackTwinCity"
	--取消
	tNpcGossip[18883]["Option5"]  = tSpringFestivalActivities_NewYear_Text[18883]["Option5"]
	
	--闲聊对白
	tNpcGossip[18883]["Text1-2"] = {121}
	tNpcGossip[18883]["Text121"] = tSpringFestivalActivities_NewYear_Text[18883]["Text121"]
	tNpcGossip[18883]["tOption1-2"] = {3}
	tNpcGossip[18883]["Option3"]  = tSpringFestivalActivities_NewYear_Text[18883]["Option3"]
	
	tNpcGossip[18884]= tNpcGossip[18883]
	tNpcGossip[18885]=tNpcGossip[18883]
	tNpcGossip[18886]=tNpcGossip[18883]
	--------------------------------------陷阱模块-------------------------------------------
	tTrap[1401] = tTrap[1401] or {}
	tTrap[1401]["Function"] = function(nTrapId,nTrapType)
	SpringFestivalActivities_NewYear_TrapSend(nTrapId)
end
	tTrap[1402] = tTrap[1401] 
	tTrap[1403] = tTrap[1401] 
	tTrap[1404] = tTrap[1401] 

	--------------------------------------时间自检-------------------------------------------
-- 系统自检
--tOntimerMin_HM[2355] = tOntimerMin_HM[2355] or {}
--table.insert(tOntimerMin_HM[2355],SpringFestivalActivities_NewYear_Notice)
--'00:00 00:07'
--tOntimerMin_HM[0000] = tOntimerMin_HM[0000] or {}
--table.insert(tOntimerMin_HM[0000],SpringFestivalActivities_NewYear_DistributeGift)
--tOntimerMin_HM[0001] = tOntimerMin_HM[0001] or {}
--table.insert(tOntimerMin_HM[0001],SpringFestivalActivities_NewYear_DistributeGift)
--tOntimerMin_HM[0002] = tOntimerMin_HM[0002] or {}
--table.insert(tOntimerMin_HM[0002],SpringFestivalActivities_NewYear_DistributeGift)
--tOntimerMin_HM[0003] = tOntimerMin_HM[0003] or {}
--table.insert(tOntimerMin_HM[0003],SpringFestivalActivities_NewYear_DistributeGift)
--tOntimerMin_HM[0004] = tOntimerMin_HM[0004] or {}
--table.insert(tOntimerMin_HM[0004],SpringFestivalActivities_NewYear_DistributeGift)
--tOntimerMin_HM[0005] = tOntimerMin_HM[0005] or {}
--table.insert(tOntimerMin_HM[0005],SpringFestivalActivities_NewYear_DistributeGift)
--tOntimerMin_HM[0006] = tOntimerMin_HM[0006] or {}
--table.insert(tOntimerMin_HM[0006],SpringFestivalActivities_NewYear_DistributeGift)
--tOntimerMin_HM[0007] = tOntimerMin_HM[0007] or {}
--table.insert(tOntimerMin_HM[0007],SpringFestivalActivities_NewYear_DistributeGift)

-- 时间自检触发
--tSystem_Prompet_Func = tSystem_Prompet_Func or {}
--table.insert(tSystem_Prompet_Func,SpringFestivalActivities_NewYear_KickThePlayerOut)

	--------------------------------------物品模块-------------------------------------------
	--指南针
	tItem[3007667] = tItem[3007667] or {}
	tItem[3007667]["Function"] = function(nItemId,sItemName)
		SpringFestivalActivities_NewYear_CompasstoTwinCity(nItemId,sItemName)
end
	--发大财礼盒
	tItem[3007668] = tItem[3007668] or {}
	tItem[3007668]["Function"] = function(nItemId,sItemName)
		SpringFestivalActivities_NewYear_Reward(nItemId,sItemName)
end
