------------------------------------------------------------------------------------
--Name:			[阿语征服][活动脚本]2016狂欢节活动之篝火狂欢会
--Creator:		刘益辉
--Created:		2015/12/03
------------------------------------------------------------------------------------
--掩码说明
-- 掩码：11141记录玩家每天放烟火次数时间戳，次数等于5时领取狂欢节礼包
-- 掩码：11142是否领取焰火，等于0表示未领取。 
-- 动态存储器：50200记录全服玩家放烟花次数 ，每天凌晨清零
------------------------------------------------------------------------------------
--	命名前缀
--	tCarnival_Bonfire
--常量表配置
local tCarnival_Bonfire_Cont = {}
	--活动前时间
	tCarnival_Bonfire_Cont["BeforeActivityTime"] = "2015-01-01 00:00 2017-03-01 23:59"
	--活动中时间
	tCarnival_Bonfire_Cont["ActivityTime"] = "2017-03-02 00:00 2017-03-08 23:59"
	--清理地图时间
	tCarnival_Bonfire_Cont["KickTime"]="2017-03-09 00:00 2017-03-09 00:05"
	--背包空间
	tCarnival_Bonfire_Cont["BagSpace"]=1
	--距离
	tCarnival_Bonfire_Cont["Distance"]=15
	--玩家等级要求
	tCarnival_Bonfire_Cont["Metempsychosis"] = 0
	tCarnival_Bonfire_Cont["Level"] = 80
	--读条数据
	tCarnival_Bonfire_Cont["Secs"] =  5
	tCarnival_Bonfire_Cont["ActionId"] = 220
	
	tCarnival_Bonfire_Cont["Map"]={}
	--传送篝火狂欢城的坐标
	tCarnival_Bonfire_Cont["Map"][9926] = {}
	tCarnival_Bonfire_Cont["Map"][9926]["MapId"] = 9926
	tCarnival_Bonfire_Cont["Map"][9926]["PositionX"] = 162
	tCarnival_Bonfire_Cont["Map"][9926]["PositionY"] = 235
	tCarnival_Bonfire_Cont["Map"][9926]["Range"] = 8
	tCarnival_Bonfire_Cont["Map"][9926]["Msg"] =tCarnival_Bonfire_Text["CarnivalCity"]
	--传送双龙城的坐标
	tCarnival_Bonfire_Cont["Map"][1002]={}
	tCarnival_Bonfire_Cont["Map"][1002]["MapId"] = 1002
	tCarnival_Bonfire_Cont["Map"][1002]["PositionX"] = 290
	tCarnival_Bonfire_Cont["Map"][1002]["PositionY"] = 380
	tCarnival_Bonfire_Cont["Map"][1002]["Range"] = 8
	tCarnival_Bonfire_Cont["Map"][1002]["Msg"] =tCarnival_Bonfire_Text["City"]
	-- stc(111,41) 记录玩家每天放烟火次数时间戳，次数等于5时领取狂欢节礼包
	tCarnival_Bonfire_Cont["Number"] = {}
	tCarnival_Bonfire_Cont["Number"]["Event"] = 111
	tCarnival_Bonfire_Cont["Number"]["StcType"] = 41
	
	-- stc(111,42)是否领取焰火，等于0表示未领取。
	tCarnival_Bonfire_Cont["Receive"] = {}
	tCarnival_Bonfire_Cont["Receive"]["Event"] = 111
	tCarnival_Bonfire_Cont["Receive"]["StcType"] = 42
	
	--相关物品ID
	--烟花
	tCarnival_Bonfire_Cont["FireworksId"] = 3000464
	--篝火
	tCarnival_Bonfire_Cont["BonfireId"] = 15373
	--经验时间
	tCarnival_Bonfire_Cont["ExpTime"] = 3
	--GlobalId
	tCarnival_Bonfire_Cont["GlobalId"] = 50200
	-- --各种光效
	local tCarnival_Bonfire_Effect = {}
		tCarnival_Bonfire_Effect["Receive"] = "angelwing"
		tCarnival_Bonfire_Effect["Lightingeffect"]= {}
		tCarnival_Bonfire_Effect["Lightingeffect"][1]="FF04"
		tCarnival_Bonfire_Effect["Lightingeffect"][2]="FF08"
		tCarnival_Bonfire_Effect["Lightingeffect"][3]="FF16"
		tCarnival_Bonfire_Effect["Lightingeffect"][4]="FF17"
	-- --LOG 表
	local tCarnival_Bonfire_LOG = {}
	--领取烟花
		tCarnival_Bonfire_LOG["Receive"]= "0,0,0,0,10001506,2,3000464,10"
		tCarnival_Bonfire_LOG["Exp"]="0,0,3000464,1,10001506,2,4,3"
		--festivalID
		tCarnival_Bonfire_LOG["FestivalId"]=3373
		--logID
		tCarnival_Bonfire_LOG["LogId"]=10001506
	--全服数量
	local tCarnival_Bonfire_GlobalData={}
		tCarnival_Bonfire_GlobalData["MapId"]=9926
		tCarnival_Bonfire_GlobalData["existsecs"]=30
		tCarnival_Bonfire_GlobalData["ItemId"]= 3000483
		
		tCarnival_Bonfire_GlobalData["Extra"] = {}
		tCarnival_Bonfire_GlobalData["Extra"][100]={}
		tCarnival_Bonfire_GlobalData["Extra"][100]["PosX"]=152
		tCarnival_Bonfire_GlobalData["Extra"][100]["PosY"]=207
		tCarnival_Bonfire_GlobalData["Extra"][100]["r"]=20
		tCarnival_Bonfire_GlobalData["Extra"][100]["number"]=10
		                          
		tCarnival_Bonfire_GlobalData["Extra"][500]={}
		tCarnival_Bonfire_GlobalData["Extra"][500]["PosX"]=152
		tCarnival_Bonfire_GlobalData["Extra"][500]["PosY"]=207
		tCarnival_Bonfire_GlobalData["Extra"][500]["r"]=20
		tCarnival_Bonfire_GlobalData["Extra"][500]["number"]=20
		                            
		tCarnival_Bonfire_GlobalData["Extra"][1000]={}
		tCarnival_Bonfire_GlobalData["Extra"][1000]["PosX"]=142
		tCarnival_Bonfire_GlobalData["Extra"][1000]["PosY"]=197
		tCarnival_Bonfire_GlobalData["Extra"][1000]["r"]=40
		tCarnival_Bonfire_GlobalData["Extra"][1000]["number"]=30
		                            
		tCarnival_Bonfire_GlobalData["Extra"][2000]={}
		tCarnival_Bonfire_GlobalData["Extra"][2000]["PosX"]=142
		tCarnival_Bonfire_GlobalData["Extra"][2000]["PosY"]=197
		tCarnival_Bonfire_GlobalData["Extra"][2000]["r"]=40
		tCarnival_Bonfire_GlobalData["Extra"][2000]["number"]=40
-- --------------------------------------逻辑部分-----------------------------------------
function Carnival_Bonfire_TimeJudge()
	if Sys_ChkFullTime(tCarnival_Bonfire_Cont["BeforeActivityTime"] ) then
		return 0
	elseif Sys_ChkFullTime(tCarnival_Bonfire_Cont["ActivityTime"] ) then
		return 1
	end
	--活动后
	return 2
end

--篝火狂欢会大使/焰火使者
--送我去篝火狂欢城/返回双龙城
function  Carnival_Bonfire_FindWay(nMapId,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nPositionX = tCarnival_Bonfire_Cont["Map"][nMapId]["PositionX"]
	local nPositionY = tCarnival_Bonfire_Cont["Map"][nMapId]["PositionY"]
	local nRange = tCarnival_Bonfire_Cont["Map"][nMapId]["Range"]
	local sMsg = tCarnival_Bonfire_Cont["Map"][nMapId]["Msg"]
	User_UserRandBoundTrans(nMapId,nPositionX,nPositionY,nRange,nRange,1,nUserId)
	User_TalkChannel2005(sMsg,nUserId)
end
--焰火使者
--我要领取焰火。
function Carnival_Bonfire_ReceiveFireworks(nNpcId)
	local nEvent = tCarnival_Bonfire_Cont["Receive"]["Event"]
	local nType  = tCarnival_Bonfire_Cont["Receive"]["StcType"]
	local nBagPace = tCarnival_Bonfire_Cont["BagSpace"]
	local nItemId = tCarnival_Bonfire_Cont["FireworksId"]
	--活动后
	if  Carnival_Bonfire_TimeJudge() >= 2 then 
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	--已领取
	if Task_ChkStcValue(nEvent,nType,">=",1) then
		if not Task_StcInterval(nEvent,nType,1,4) then
			LinkNpcGossipFunc_New(nNpcId,"2-1")
			return
		end
	end
	--背包满
	if not User_CheckLeftSpace(nBagPace) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	--满足条件
	Task_SetStatistic(nEvent,nType,1,1,0)
	Task_SetStcTimestamp(nEvent,nType,0,0)
	Item_AddNewItem(nItemId,"0 10")
	User_EffectAdd("self",tCarnival_Bonfire_Effect["Receive"])
	Sys_SaveActionFestivalLog(tCarnival_Bonfire_LOG["Receive"])
	Sys_MsgBox(tCarnival_Bonfire_Text["SuccessfulReceive"])
end
--距离判断
function Carnival_Bonfire_DistanceChk()
local nNpcId =tCarnival_Bonfire_Cont["BonfireId"] 
--玩家位置
	local nUserX = Get_UserPositionX()
	local nUserY = Get_UserPositionY()
--篝火位置
	local nNpcX = Get_NpcPositionX(nNpcId)
	local nNpcY = Get_NpcPositionY(nNpcId)
--最大距离
	local nDis = tCarnival_Bonfire_Cont["Distance"]
	if math.abs(nUserX - nNpcX) > nDis then
		return false
	elseif math.abs(nUserY - nNpcY) > nDis then
		return false
	end
	return true
end
--使用烟火
function Carnival_Bonfire_UseFireworks(nItemId)
	local nMapId=tCarnival_Bonfire_Cont["Map"][9926]["MapId"]
	local nEvent = tCarnival_Bonfire_Cont["Number"]["Event"]
	local nType = tCarnival_Bonfire_Cont["Number"]["StcType"]
	--活动后
	if  Carnival_Bonfire_TimeJudge() >= 2 then 
		if Item_ChkItem(nItemId) then
			if not Item_DelAllItemByType(nItemId ) then
			return
		end
		Sys_MsgBox(tCarnival_Bonfire_Text["Drop"])
		return
		end
	end
	--不在活动地图使用
	if Get_UserMapId() ~=nMapId then
		Sys_MsgBox(tCarnival_Bonfire_Text["PlaceLimit"])
		return
	end
	--不在距离内
	if not Carnival_Bonfire_DistanceChk() then
		Sys_MsgBox(tCarnival_Bonfire_Text["Far"])
		return
	end

	-- 第5次燃放烟花时，会给节日礼包，故此情况下要判断背包
	if Task_ChkStcValue(nEvent,nType,"==",4) then
		if not User_CheckLeftSpace(1) then
			Sys_MsgBox(tCarnival_Bonfire_Text["BagFull"])
			return
		end
	end
	
	--一天内燃放次数超过10次
	if Task_ChkStcValue(nEvent,nType,">=",10) then
		if not Task_StcInterval(nEvent,nType,1,4) then
			Sys_MsgBox(tCarnival_Bonfire_Text["NumberLimit"])
			return
		else
			Task_SetStatistic(nEvent,nType,0,1,0)
		end
	end
	
	--满足条件
	--燃放烟火
	local nSecs=tCarnival_Bonfire_Cont["Secs"]
	local sContent=tCarnival_Bonfire_Text["Content"]
	local nActionId=tCarnival_Bonfire_Cont["ActionId"]
	local sFunc= string.format("Carnival_Bonfire_Light</N>%d",nItemId)
	User_SetExplore(nSecs,sContent,nActionId,sFunc)
end

--燃放烟火
function  Carnival_Bonfire_Light(nItemId,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nEvent = tCarnival_Bonfire_Cont["Number"]["Event"]
	local nType = tCarnival_Bonfire_Cont["Number"]["StcType"]
--删除物品
	if Item_ChkItem(nItemId,1,0,nUserId) then
		if not Item_DelItem(nItemId,1,0,nUserId) then
			return
		end
	end
--次数+1
	Task_AddStatistic(nEvent,nType,1,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	
	local nData1 = Get_SysDynaGlobalData1(tCarnival_Bonfire_Cont["GlobalId"]) + 1
	Sys_SetSynaGlobalData1(tCarnival_Bonfire_Cont["GlobalId"],nData1)

--随机播放光效
	local nMapId = tCarnival_Bonfire_Cont["Map"][9926]["MapId"]
	local nPosX = Get_UserPositionX(nUserId)
	local nPosY = Get_UserPositionY(nUserId)
	local v=math.random(1,4)
	local sEffectName = tCarnival_Bonfire_Effect["Lightingeffect"][v]
	Map_Effect(nMapId, nPosX, nPosY, sEffectName)
	
	--领取奖励（燃放次数=5则3分钟经验奖励和一个狂欢节礼包，否就3分钟经验）
	if Task_ChkStcValue(nEvent,nType,"==",5,nUserId) then
		FestivalGeneralPackage_GetGift(tCarnival_Bonfire_LOG["FestivalId"],tCarnival_Bonfire_LOG["LogId"],nil,nUserId)
		User_TalkChannel2005(tCarnival_Bonfire_Text["Gift"],nUserId)
	end
	if Get_UserLevel(nUserId) < G_User_MaxLev then 
		User_AddExpTime(tCarnival_Bonfire_Cont["ExpTime"],nUserId)
		Sys_SaveActionFestivalLog(tCarnival_Bonfire_LOG["Exp"],nUserId)
		User_TalkChannel2005(tCarnival_Bonfire_Text["Exp"],nUserId)
	end
	--全服数量满足奖励
	local nItem  = tCarnival_Bonfire_GlobalData["ItemId"]
	local nExistTime =tCarnival_Bonfire_GlobalData["existsecs"]
	for k,v in pairs(tCarnival_Bonfire_GlobalData["Extra"]) do
		if k == nData1 then
			Map_DropMultiItems(nMapId, nItem, tCarnival_Bonfire_GlobalData["Extra"][k]["PosX"], tCarnival_Bonfire_GlobalData["Extra"][k]["PosY"], tCarnival_Bonfire_GlobalData["Extra"][k]["r"], tCarnival_Bonfire_GlobalData["Extra"][k]["r"], nData1, nExistTime)
			Sys_GmBroadcast(tCarnival_Bonfire_Text["GlobalGift"])
		end
	end
end
	--清理地图
function Carnival_Bonfire_KickThePlayerOut()
		if Sys_ChkFullTime(tCarnival_Bonfire_Cont["KickTime"]) then
			local nMapId =tCarnival_Bonfire_Cont["Map"][9926]["MapId"]
			Map_UserExeFunc(nMapId,-1,"Carnival_Bonfire_FindWay</N>1002")
		end
end

---------------------------------系统自检函数-------------------------------------------
-- 自检限制清除
function Carnival_Bonfire_ResetLimit()
	-- 活动时间
	if Carnival_Bonfire_TimeJudge() ~= 1 then
		return
	end
	Sys_SetSynaGlobalData2(tCarnival_Bonfire_Cont["GlobalId"],0)
end

--系统活动时间内每天清零动态存储器
function Carnival_Bonfire_Clear()
	-- if  Carnival_Bonfire_TimeJudge() == 1 then 
		-- if Sys_ChkDayTime(tCarnival_Bonfire_Cont["ClearTime"]) then
			-- Sys_ResetAllSynaGlobalData(tCarnival_Bonfire_Cont["GlobalId"])
		-- end
	-- end
		-- 活动时间
	if Carnival_Bonfire_TimeJudge() ~= 1 then
		return
	end
	local nGlobalId = tCarnival_Bonfire_Cont["GlobalId"] 
	local nData_2 = Get_SysDynaGlobalData(nGlobalId,2)
		-- 重置限制判断
	if nData_2 ~= 0 then
		return
	end
	Sys_SetSynaGlobalData1(nGlobalId,0)
	Sys_SetSynaGlobalData2(nGlobalId,1)
end

--------------------------------------NPC模块-------------------------------------------
--15371	篝火狂欢会大使
tNpcFace[2193] = 46
tNpcGossip[15371]= tNpcGossip[15371] or DefaultNpc:new{}
tNpcGossip[15371]["OptionHidden"] = 1
--活动时间前
tNpcGossip[15371]["Text1-1"] = {111,112}
tNpcGossip[15371]["Text111"] = tCarnival_Bonfire_Text[15371]["Text111"]
tNpcGossip[15371]["Text112"] = tCarnival_Bonfire_Text[15371]["Text112"]
tNpcGossip[15371]["tOption1-1"] = {1}
tNpcGossip[15371]["ChkFunc1-1"]= function()
	return Sys_ChkFullTime(tCarnival_Bonfire_Cont["BeforeActivityTime"])
end
--选项 好期待！
tNpcGossip[15371]["Option1"]  = tCarnival_Bonfire_Text[15371]["Option1"]

--等级判断
tNpcGossip[15371]["Text1-2"] = {121,122}
tNpcGossip[15371]["Text121"] = tCarnival_Bonfire_Text[15371]["Text121"]
tNpcGossip[15371]["Text122"] = tCarnival_Bonfire_Text[15371]["Text122"]
tNpcGossip[15371]["tOption1-2"] = {2}
tNpcGossip[15371]["ChkFunc1-2"]= function()
	return  (Carnival_Bonfire_TimeJudge() <= 1) and (not User_JudgeLevelAndMetempsychosis(tCarnival_Bonfire_Cont["Level"],tCarnival_Bonfire_Cont["Metempsychosis"]))
end
--选项 真是遗憾啊！
tNpcGossip[15371]["Option2"]  = tCarnival_Bonfire_Text[15371]["Option2"]
--活动中
tNpcGossip[15371]["Text1-3"] = {131,132,133}
tNpcGossip[15371]["Text131"] = tCarnival_Bonfire_Text[15371]["Text131"]
tNpcGossip[15371]["Text132"] = tCarnival_Bonfire_Text[15371]["Text132"]
tNpcGossip[15371]["Text133"] = tCarnival_Bonfire_Text[15371]["Text133"]
tNpcGossip[15371]["tOption1-3"] = {3,4}
tNpcGossip[15371]["ChkFunc1-3"]= function()
	return  Sys_ChkFullTime(tCarnival_Bonfire_Cont["ActivityTime"])
end
--选项   送我去篝火狂欢城。
tNpcGossip[15371]["Option3"]  = tCarnival_Bonfire_Text[15371]["Option3"]
tNpcGossip[15371]["OptionFunc3"]="Carnival_Bonfire_FindWay</N>9926"
--选项  我一会再来。
tNpcGossip[15371]["Option4"]  = tCarnival_Bonfire_Text[15371]["Option4"]

--活动后
tNpcGossip[15371]["Text1-4"] = {141,142}
tNpcGossip[15371]["Text141"] = tCarnival_Bonfire_Text[15371]["Text141"]
tNpcGossip[15371]["Text142"] = tCarnival_Bonfire_Text[15371]["Text142"]
tNpcGossip[15371]["tOption1-4"] = {5}
--选项  就这么说好了！
tNpcGossip[15371]["Option5"]  = tCarnival_Bonfire_Text[15371]["Option5"]




---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--15372	焰火使者
tNpcFace[2194] = 112
tNpcGossip[15372]= tNpcGossip[15372] or DefaultNpc:new{}
tNpcGossip[15372]["OptionHidden"] = 1

--活动时间中
tNpcGossip[15372]["Text1-1"] = {111,112,113,114}
tNpcGossip[15372]["Text111"] = tCarnival_Bonfire_Text[15372]["Text111"]
tNpcGossip[15372]["Text112"] = tCarnival_Bonfire_Text[15372]["Text112"]
tNpcGossip[15372]["Text113"] = tCarnival_Bonfire_Text[15372]["Text113"]
tNpcGossip[15372]["Text114"] = tCarnival_Bonfire_Text[15372]["Text114"]
tNpcGossip[15372]["tOption1-1"] = {1,2,3,4}
tNpcGossip[15372]["ChkFunc1-1"]= function()
	return Sys_ChkFullTime(tCarnival_Bonfire_Cont["ActivityTime"])
end

--选项   我要领取焰火。
tNpcGossip[15372]["Option1"]  = tCarnival_Bonfire_Text[15372]["Option1"]
tNpcGossip[15372]["OptionFunc1"]="Carnival_Bonfire_ReceiveFireworks</N>15372"

--选项 如何使用焰火呢？
tNpcGossip[15372]["Option2"]  = tCarnival_Bonfire_Text[15372]["Option2"]
tNpcGossip[15372]["OptionPoint2"] = "3-1"

--选项 请送我回双龙城。
tNpcGossip[15372]["Option3"]  = tCarnival_Bonfire_Text[15372]["Option3"]
tNpcGossip[15372]["OptionFunc3"]="Carnival_Bonfire_FindWay</N>1002"

--选项 我一会再来。
tNpcGossip[15372]["Option4"]  = tCarnival_Bonfire_Text[15372]["Option4"]

--活动后
tNpcGossip[15372]["Text1-2"] = {121,122}
tNpcGossip[15372]["Text121"] = tCarnival_Bonfire_Text[15372]["Text121"]
tNpcGossip[15372]["Text122"] = tCarnival_Bonfire_Text[15372]["Text122"]
tNpcGossip[15372]["tOption1-2"] = {3}
--选项  就这么说好了！

--接我要领取焰火  已领取
tNpcGossip[15372]["Text2-1"] = {211}
tNpcGossip[15372]["Text211"] = tCarnival_Bonfire_Text[15372]["Text211"]
tNpcGossip[15372]["tOption2-1"] = {5}
--选项  好嘛，人家只是想多玩一下
tNpcGossip[15372]["Option5"]  = tCarnival_Bonfire_Text[15372]["Option5"]

--接我要领取焰火 背包满
tNpcGossip[15372]["Text2-2"] = {221}
tNpcGossip[15372]["Text221"] = tCarnival_Bonfire_Text[15372]["Text221"]
tNpcGossip[15372]["tOption2-2"] = {6}
--选项  好的。
tNpcGossip[15372]["Option6"]  = tCarnival_Bonfire_Text[15372]["Option6"]

--接 如何使用焰火呢？
tNpcGossip[15372]["Text3-1"] = {311,312,313}
tNpcGossip[15372]["Text311"] = tCarnival_Bonfire_Text[15372]["Text311"]
tNpcGossip[15372]["Text312"] = tCarnival_Bonfire_Text[15372]["Text312"]
tNpcGossip[15372]["Text313"] = tCarnival_Bonfire_Text[15372]["Text313"]
tNpcGossip[15372]["tOption3-1"] = {7,8,9}
--选项  快说嘛，快说嘛。
tNpcGossip[15372]["Option7"]  = tCarnival_Bonfire_Text[15372]["Option7"]
tNpcGossip[15372]["OptionPoint7"] = "4-1"

--选项  我想看看别的
tNpcGossip[15372]["Option8"]  = tCarnival_Bonfire_Text[15372]["Option8"]
tNpcGossip[15372]["OptionPoint8"] = "1-1"

--选项 我知道啦。
tNpcGossip[15372]["Option9"]  = tCarnival_Bonfire_Text[15372]["Option9"]

--接  快说嘛，快说嘛。
tNpcGossip[15372]["Text4-1"] = {411,412}
tNpcGossip[15372]["Text411"] = tCarnival_Bonfire_Text[15372]["Text411"]
tNpcGossip[15372]["Text412"] = tCarnival_Bonfire_Text[15372]["Text412"]
tNpcGossip[15372]["tOption4-1"] = {10,9}
--选项 我想看看别的
tNpcGossip[15372]["Option10"]  = tCarnival_Bonfire_Text[15372]["Option10"]
tNpcGossip[15372]["OptionPoint10"] = "3-1"

--------------------------------------物品模块-------------------------------------------
	--烟火
	tItem[3000464] = tItem[3000464] or {}
	tItem[3000464]["Function"] = function(nItemId,sItemName)
		Carnival_Bonfire_UseFireworks(nItemId)
	end

--------------------------------------时间-------------------------------------------
-- --时间函数触发
-- --'00:00 00:03'
-- tOntimerMin_HM[0000] = tOntimerMin_HM[0000] or {}
-- table.insert(tOntimerMin_HM[0000],Carnival_Bonfire_Clear)
-- tOntimerMin_HM[0001] = tOntimerMin_HM[0001] or {}
-- table.insert(tOntimerMin_HM[0001],Carnival_Bonfire_Clear)
-- tOntimerMin_HM[0002] = tOntimerMin_HM[0002] or {}
-- table.insert(tOntimerMin_HM[0002],Carnival_Bonfire_ResetLimit)
-- tOntimerMin_HM[0003] = tOntimerMin_HM[0003] or {}
-- table.insert(tOntimerMin_HM[0003],Carnival_Bonfire_ResetLimit)
 
-- tSystem_Prompet_Func = tSystem_Prompet_Func or {}
-- table.insert(tSystem_Prompet_Func,Carnival_Bonfire_KickThePlayerOut)
