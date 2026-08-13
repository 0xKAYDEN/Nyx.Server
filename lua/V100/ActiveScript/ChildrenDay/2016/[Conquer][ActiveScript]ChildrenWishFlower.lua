------------------------------------------------------------------------------------
--Name:		[征服][活动脚本]2016儿童节心愿大红花（5.30-6.3）
--Purpose:	儿童节心愿大红花
--Creator: 	张世超
--Created:	2106/03/29
------------------------------------------------------------------------------------
-- 40205 = V100\ActiveScript\Children\2016\[Conquer][ActiveScript]ChildrenWishFlower.lua
-- 40205 = V100\活动脚本\儿童节\2016\[征服][活动脚本]2016儿童节心愿大红花（5.30-6.3）.lua



	
	


-- 常量表
local tChildrenWishFlower_Count = {}
	tChildrenWishFlower_Count["Space"] = 2
	tChildrenWishFlower_Count["Pen"] = 3003884
	tChildrenWishFlower_Count["Paper"] = 3003885
	tChildrenWishFlower_Count["Flower"] = 3003873
	tChildrenWishFlower_Count["FlowerAttr"] = ""
	tChildrenWishFlower_Count["FlowerExAttr"] = "0 5"
	tChildrenWishFlower_Count["Effect"] = "CircleUp"
	tChildrenWishFlower_Count["NpcId"] = 16788
	tChildrenWishFlower_Count["Balloon"] = 16790

	-- #每分钟刷出30朵灵蛇花
	-- (94306395,00000000,00000000,308,0,'3003883 1011 300 50 40 40 30 60'),

	tChildrenWishFlower_Count["MapId"] = 1011	
	tChildrenWishFlower_Count["PosX"] = 300	
	tChildrenWishFlower_Count["PosY"] = 50	
	tChildrenWishFlower_Count["Cellx"] = 40	
	tChildrenWishFlower_Count["Celly"] = 40	
	tChildrenWishFlower_Count["ItemNum"] = 30	
	tChildrenWishFlower_Count["ExistTime"] = 60	

	
	--各个任务领奖需要的背包空间
	tChildrenWishFlower_Count["TaskSpace"] = {}
	tChildrenWishFlower_Count["TaskSpace"][1] = 1
	tChildrenWishFlower_Count["TaskSpace"][2] = 1
	tChildrenWishFlower_Count["TaskSpace"][3] = 1
	tChildrenWishFlower_Count["TaskSpace"][4] = 1
	tChildrenWishFlower_Count["TaskSpace"][5] = 1
	tChildrenWishFlower_Count["TaskSpace"][6] = 2
	
	-- 玩家等级要求
	tChildrenWishFlower_Count["Metempsychosis"] = 0
	tChildrenWishFlower_Count["Level"] = 80
	
	tChildrenWishFlower_Count["BeforeActivityTime"] = "2017-03-22 00:00 2017-05-31 23:59"
	tChildrenWishFlower_Count["ActivityTime"] = "2017-06-01 00:00 2017-06-05 23:59"
	
	tChildrenWishFlower_CountDay = {}
	tChildrenWishFlower_CountDay[1] = "2017-06-01 00:00 2017-06-01 23:59"
	tChildrenWishFlower_CountDay[2] = "2017-06-02 00:00 2017-06-02 23:59"
	tChildrenWishFlower_CountDay[3] = "2017-06-03 00:00 2017-06-03 23:59"
	tChildrenWishFlower_CountDay[4] = "2017-06-04 00:00 2017-06-04 23:59"
	tChildrenWishFlower_CountDay[5] = "2017-06-05 00:00 2017-06-05 23:59"
	--tChildrenWishFlower_CountDay[6] = "2017-06-06 00:00 2017-06-06 23:59"

local tChildrenWishFlower_Stc = {}
	tChildrenWishFlower_Stc["EventType"] = 124
	tChildrenWishFlower_Stc["DataType"] = {}
	tChildrenWishFlower_Stc["DataType"][1] = 90
	tChildrenWishFlower_Stc["DataType"][2] = 91
	tChildrenWishFlower_Stc["DataType"][3] = 92
	tChildrenWishFlower_Stc["DataType"][4] = 93
	tChildrenWishFlower_Stc["DataType"][5] = 94
	--tChildrenWishFlower_Stc["DataType"][6] = 95

	tChildrenWishFlower_Stc["NoMisson"] = 0	--未接受任务，==0
	tChildrenWishFlower_Stc["MissonStart"] = 1	--接受任务，==1
	tChildrenWishFlower_Stc["GetAward"] = 10	--完成，获得奖励，==10
	tChildrenWishFlower_Stc["Killed"] = 5	--第六天已pk ==5

local tChildrenWishFlower_HandInItem = {}
	tChildrenWishFlower_HandInItem[1] = 3003881
	tChildrenWishFlower_HandInItem[2] = 3003882
	tChildrenWishFlower_HandInItem[3] = 3003883
	tChildrenWishFlower_HandInItem[4] = 3003886
	tChildrenWishFlower_HandInItem[5] = 3003887
	
local tChildrenWishFlower_HandInNum = {}
	tChildrenWishFlower_HandInNum[1] = 5
	tChildrenWishFlower_HandInNum[2] = 5
	tChildrenWishFlower_HandInNum[3] = 5
	tChildrenWishFlower_HandInNum[4] = 1
	tChildrenWishFlower_HandInNum[5] = 1
	
local tChildrenWishFlower_StartMissonDialogue = {}
	tChildrenWishFlower_StartMissonDialogue[1] = "4-1"
	tChildrenWishFlower_StartMissonDialogue[2] = "4-2"
	tChildrenWishFlower_StartMissonDialogue[3] = "4-3"
	tChildrenWishFlower_StartMissonDialogue[4] = "4-4"
	tChildrenWishFlower_StartMissonDialogue[5] = "4-5"
	--tChildrenWishFlower_StartMissonDialogue[6] = "4-6"
	
local tChildrenWishFlower_MissonFailDialogue = {}
	tChildrenWishFlower_MissonFailDialogue[1] = "5-1"
	tChildrenWishFlower_MissonFailDialogue[2] = "5-2"
	tChildrenWishFlower_MissonFailDialogue[3] = "5-3"
	tChildrenWishFlower_MissonFailDialogue[4] = "5-4"
	tChildrenWishFlower_MissonFailDialogue[5] = "5-5"
	--tChildrenWishFlower_MissonFailDialogue[6] = "5-6"
	
local tChildrenWishFlower_MissonSuccessDialogue = {}
	tChildrenWishFlower_MissonSuccessDialogue[1] = "6-1"
	tChildrenWishFlower_MissonSuccessDialogue[2] = "6-2"
	tChildrenWishFlower_MissonSuccessDialogue[3] = "6-3"
	tChildrenWishFlower_MissonSuccessDialogue[4] = "6-4"
	tChildrenWishFlower_MissonSuccessDialogue[5] = "6-5"
	--tChildrenWishFlower_MissonSuccessDialogue[6] = "6-6"

--怪物掉落函数数据	
local tChildrenWishFlower_Monster = {}
tChildrenWishFlower_Monster[13] = {}
tChildrenWishFlower_Monster[13]["DataType"] =  tChildrenWishFlower_Stc["DataType"][1]
tChildrenWishFlower_Monster[13]["ItemId"] =  tChildrenWishFlower_HandInItem[1]
tChildrenWishFlower_Monster[13]["ItemNum"] =   tChildrenWishFlower_HandInNum[1]
tChildrenWishFlower_Monster[13]["ActivityTime"] =  tChildrenWishFlower_CountDay[1]

tChildrenWishFlower_Monster[79] = {}
tChildrenWishFlower_Monster[79]["DataType"] =  tChildrenWishFlower_Stc["DataType"][2]
tChildrenWishFlower_Monster[79]["ItemId"] =  tChildrenWishFlower_HandInItem[2]
tChildrenWishFlower_Monster[79]["ItemNum"] =   tChildrenWishFlower_HandInNum[2]
tChildrenWishFlower_Monster[79]["ActivityTime"] =  tChildrenWishFlower_CountDay[2]



-- Log表
local tChildrenWishFlower_Log = {}

	tChildrenWishFlower_Log["FestivalId"] = 3285
	tChildrenWishFlower_Log["LogId"] = 10002202
	tChildrenWishFlower_Log["GetAward"] = "0,0,0,0,10002202,2,3003873,1"
	tChildrenWishFlower_Log["ExAward"] = "0,0,0,0,10002202,2,3003873,5"
	
	tChildrenWishFlower_Log["MissonStart"] = "0,0,0,0,10002202,1[1],0,0"
	tChildrenWishFlower_Log["MissonEnd"] = "0,0,0,0,10002202,1[2],0,0"
	tChildrenWishFlower_Log["GetTaskItem"] = "0,0,0,0,10002202,2,%s,1"
	
	
-- 任务传送位置
local tChildrenWishFlower_Map = {}
	tChildrenWishFlower_Map["Cellx"] = 3
	tChildrenWishFlower_Map["Celly"] = 3
	
	tChildrenWishFlower_Map[0] = {}
	tChildrenWishFlower_Map[0]["MapId"] = 1002
	tChildrenWishFlower_Map[0]["MapX"] = 280
	tChildrenWishFlower_Map[0]["MapY"] = 360
	
	
	tChildrenWishFlower_Map[1] = {}
	tChildrenWishFlower_Map[1]["MapId"] = 1020
	tChildrenWishFlower_Map[1]["MapX"] = 249
	tChildrenWishFlower_Map[1]["MapY"] = 586
	
	tChildrenWishFlower_Map[2] = {}
	tChildrenWishFlower_Map[2]["MapId"] = 1015
	tChildrenWishFlower_Map[2]["MapX"] = 344
	tChildrenWishFlower_Map[2]["MapY"] = 264
	
	tChildrenWishFlower_Map[3] = {}
	tChildrenWishFlower_Map[3]["MapId"] = 1011
	tChildrenWishFlower_Map[3]["MapX"] = 343
	tChildrenWishFlower_Map[3]["MapY"] = 88
	
	tChildrenWishFlower_Map[4] = {}
	tChildrenWishFlower_Map[4]["MapId"] = 1000
	tChildrenWishFlower_Map[4]["MapX"] = 537
	tChildrenWishFlower_Map[4]["MapY"] = 646
	
	tChildrenWishFlower_Map[5] = {}
	tChildrenWishFlower_Map[5]["MapId"] = 1002
	tChildrenWishFlower_Map[5]["MapX"] = 244
	tChildrenWishFlower_Map[5]["MapY"] = 270
	
--------------------------------------逻辑部分-------------------------------------------
--获取是活动第几天
function ChildrenWishFlower_GetDay()
	for i,v in pairs(tChildrenWishFlower_CountDay) do
		if Sys_ChkFullTime(v) then
			return i
		end
	end
	return -1
end

--任务条件判断
function ChildrenWishFlower_MissonFail(nDay)
	--前5天
	if nDay <= 5 then
		local nItemId = tChildrenWishFlower_HandInItem[nDay]
		local nItemNum = tChildrenWishFlower_HandInNum[nDay]
		if Item_ChkMulItem(nItemId,nItemId,nItemNum) then
			return false
		else
			return true
		end
		
	else
		--第六天
		local nEventType = tChildrenWishFlower_Stc["EventType"]
		local nDataType = tChildrenWishFlower_Stc["DataType"][nDay]
		local nValue = Get_UserStatisticValue(nEventType,nDataType) or 0
		if nValue >= tChildrenWishFlower_Stc["Killed"] then
			return false
		else
			return true
		end
	end
end

function ChildrenWishFlower_StartMisson(nNpcId)
	if not User_JudgeLevelAndMetempsychosis(tChildrenWishFlower_Count["Level"],tChildrenWishFlower_Count["Metempsychosis"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	local nDay = ChildrenWishFlower_GetDay()
	if nDay == -1 then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	local nEventType = tChildrenWishFlower_Stc["EventType"]
	local nDataType =  tChildrenWishFlower_Stc["DataType"][nDay]
	local nValue = Get_UserStatisticValue(nEventType,nDataType) or 0
	local sDialogue = ""
	--未接任务，接任务对白
	if nValue == tChildrenWishFlower_Stc["NoMisson"] then
		sDialogue = tChildrenWishFlower_StartMissonDialogue[nDay]
		LinkNpcGossipFunc_New(nNpcId,sDialogue)
		return
	elseif nValue >= tChildrenWishFlower_Stc["GetAward"] then	
		--已领取奖励
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	else
		--已接任务，判断任务条件是否没有达成
		if ChildrenWishFlower_MissonFail(nDay) then
			sDialogue = tChildrenWishFlower_MissonFailDialogue[nDay]
		else
			sDialogue = tChildrenWishFlower_MissonSuccessDialogue[nDay]
		end	
		LinkNpcGossipFunc_New(nNpcId,sDialogue)
		return		
	end
end

function ChildrenWishFlower_MissonStart(nNpcId,nDay)
	if not Sys_ChkFullTime(tChildrenWishFlower_CountDay[nDay]) then
		LinkNpcGossipFunc_New(nNpcId,"3-3")
		return	
	end
	
	if nDay ==4 then
		if not User_CheckLeftSpace(tChildrenWishFlower_Count["Space"]) then
			tNpcGossip[nNpcId]["Text341"] = string.format(tChildrenWishFlower_Text[nNpcId]["Text341"],tChildrenWishFlower_Count["Space"])
			LinkNpcGossipFunc_New(nNpcId,"3-4")
			return
		end
	end
	
	local nEventType = tChildrenWishFlower_Stc["EventType"]
	local nDataType =  tChildrenWishFlower_Stc["DataType"][nDay]
	local sLog = tChildrenWishFlower_Log["MissonStart"]
	Task_SetStatistic(nEventType,nDataType,tChildrenWishFlower_Stc["MissonStart"],1) 
	Sys_SaveActionFestivalLog(sLog)
	if nDay ==4 then
		--心愿目标：【大漠风光图】需要给2个任务物品
		Item_AddItem(tChildrenWishFlower_Count["Pen"])
		Item_AddItem(tChildrenWishFlower_Count["Paper"])
		Sys_MsgBox(tChildrenWishFlower_Text["Msg"]["GetPen"])
	end	
	
	--传送到指定区域
	local nMapId = tChildrenWishFlower_Map[nDay]["MapId"]
	local nMapX = tChildrenWishFlower_Map[nDay]["MapX"]
	local nMapY = tChildrenWishFlower_Map[nDay]["MapY"]
	local nCellx = tChildrenWishFlower_Map["Cellx"]
	local nCelly = tChildrenWishFlower_Map["Celly"]
	User_UserRandBoundTrans(nMapId,nMapX,nMapY,nCellx,nCelly,1)

end

--我要大红花
function ChildrenWishFlower_GetAward(nNpcId)
	local nDay = ChildrenWishFlower_GetDay()
	if nDay == -1 then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end	
	local nEventType = tChildrenWishFlower_Stc["EventType"]
	local nDataType =  tChildrenWishFlower_Stc["DataType"][nDay]
	local nValue = Get_UserStatisticValue(nEventType,nDataType) or 0
	local sDialogue = ""
	
	if nValue == tChildrenWishFlower_Stc["NoMisson"] then
		sDialogue = tChildrenWishFlower_StartMissonDialogue[nDay]
		LinkNpcGossipFunc_New(nNpcId,sDialogue)
		return
	elseif nValue >= tChildrenWishFlower_Stc["GetAward"] then	
		--已领取奖励
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	else
		--已接任务，判断任务条件是否没有达成
		if ChildrenWishFlower_MissonFail(nDay) then
			sDialogue = tChildrenWishFlower_MissonFailDialogue[nDay]
			LinkNpcGossipFunc_New(nNpcId,sDialogue)
			return		
		else
			ChildrenWishFlower_GetAward2(nNpcId,nDay)
		end
	end
end

function ChildrenWishFlower_GetAward2(nNpcId,nDay)
	--背包检查
	if not User_CheckLeftSpace(tChildrenWishFlower_Count["TaskSpace"][nDay]) then
		tNpcGossip[nNpcId]["Text341"] = string.format(tChildrenWishFlower_Text[nNpcId]["Text341"],tChildrenWishFlower_Count["TaskSpace"][nDay])
		LinkNpcGossipFunc_New(nNpcId,"3-4")
		return
	end	
	--删除任务物品
	if nDay <= 5 then
		local nItemId = tChildrenWishFlower_HandInItem[nDay]
		local nItemNum = tChildrenWishFlower_HandInNum[nDay]
		if Item_ChkMulItem(nItemId,nItemId,nItemNum) and Item_DelMulItem(nItemId,nItemId,nItemNum) then
			--打掩码，给奖励
			local nEventType = tChildrenWishFlower_Stc["EventType"]
			local nDataType =  tChildrenWishFlower_Stc["DataType"][nDay]
			Task_SetStatistic(nEventType,nDataType,tChildrenWishFlower_Stc["GetAward"],1)
			
			Item_AddNewItem(tChildrenWishFlower_Count["Flower"],tChildrenWishFlower_Count["FlowerAttr"])
			FestivalGeneralPackage_GetGift(tChildrenWishFlower_Log["FestivalId"],tChildrenWishFlower_Log["LogId"])
			Sys_SaveActionFestivalLog(tChildrenWishFlower_Log["GetAward"])
			Sys_SaveActionFestivalLog(tChildrenWishFlower_Log["MissonEnd"])
			User_TalkChannel2005(tChildrenWishFlower_Text["Msg"]["GetAward"])
			User_EffectAdd("self",tChildrenWishFlower_Count["Effect"])

			--最后一天，判断是否获得额外5个大红花
			if nDay >= #tChildrenWishFlower_CountDay then
				for i,v in ipairs(tChildrenWishFlower_Stc["DataType"]) do
					local nEventType = tChildrenWishFlower_Stc["EventType"]
					local nDataType =  v
					local nValue = Get_UserStatisticValue(nEventType,nDataType) or 0
					
					if not (nValue >= tChildrenWishFlower_Stc["GetAward"]) then
						return
					end
				end
				
				Item_AddNewItem(tChildrenWishFlower_Count["Flower"],tChildrenWishFlower_Count["FlowerExAttr"])
				Sys_SaveActionFestivalLog(tChildrenWishFlower_Log["ExAward"])
				User_TalkChannel2005(tChildrenWishFlower_Text["Msg"]["ExAward"])
			end
		end
	end
end


--蛇人、湖岛悍匪
function ChildrenWishFlower_Monster(nMonsterId)
	if not Sys_ChkFullTime(tChildrenWishFlower_Monster[nMonsterId]["ActivityTime"]) then
		return
	end
	
	local nEventType = tChildrenWishFlower_Stc["EventType"]
	local nDataType =  tChildrenWishFlower_Monster[nMonsterId]["DataType"] 
	
	if not Task_ChkStcValue(nEventType,nDataType,"==",tChildrenWishFlower_Stc["MissonStart"]) then
		return
	end
	if not User_CheckLeftSpace(1) then
		User_TalkChannel2005(tChildrenWishFlower_Text["Msg"]["NoSpace"])
		return
	end
	
	local nItemId = tChildrenWishFlower_Monster[nMonsterId]["ItemId"]
	local sItemIdName = Get_ItemtypeName(tChildrenWishFlower_Monster[nMonsterId]["ItemId"])
	local nItemNum = tChildrenWishFlower_Monster[nMonsterId]["ItemNum"]
	local nPosX = Get_NpcPositionX(tChildrenWishFlower_Count["NpcId"])
	local nPosY = Get_NpcPositionY(tChildrenWishFlower_Count["NpcId"])
	local sText
	if Item_ChkMulItem(nItemId,nItemId,nItemNum) then
		sText = string.format(tChildrenWishFlower_Text["Msg"]["Enough"],nItemNum,sItemIdName,nPosX,nPosY)
		Sys_MsgBox(sText,"</F>ChildrenWishFlower_GetBack")
		return
	end
	
	local nRd = math.random(100)
	if nRd <= 30 then
		return
	else
		Item_AddItem(nItemId)
		Sys_SaveActionFestivalLog(string.format(tChildrenWishFlower_Log["GetTaskItem"],nItemId))
		if Item_ChkMulItem(nItemId,nItemId,nItemNum) then
			sText = string.format(tChildrenWishFlower_Text["Msg"]["Enough"],nItemNum,sItemIdName,nPosX,nPosY)
			User_TalkChannel2005(sText)
			return
		else	
			sText = string.format(tChildrenWishFlower_Text["Msg"]["NoEnough"],sItemIdName)
			User_TalkChannel2005(sText)	
		end		
	end
end


function ChildrenWishFlower_CreatTaskItem()
	if not Sys_ChkFullTime(tChildrenWishFlower_CountDay[3]) then
		return
	end

	local nItemId = tChildrenWishFlower_HandInItem[3]
	local nMapId = tChildrenWishFlower_Count["MapId"]
	local nPosX =tChildrenWishFlower_Count["PosX"]
	local nPosY = tChildrenWishFlower_Count["PosY"]
	local nCellx = tChildrenWishFlower_Count["Cellx"]
	local nCelly = tChildrenWishFlower_Count["Celly"]
	local nItemNum = tChildrenWishFlower_Count["ItemNum"]
	local nExistTime = tChildrenWishFlower_Count["ExistTime"]

	Map_DropMultiItems(nMapId, nItemId, nPosX, nPosY, nCellx, nCelly, nItemNum, nExistTime)

end

function ChildrenWishFlower_Balloon()
	local nEventType = tChildrenWishFlower_Stc["EventType"]
	local nDataType =  tChildrenWishFlower_Stc["DataType"][5]	
	local sText = ""
	if not Task_ChkStcValue(nEventType,nDataType,"==",tChildrenWishFlower_Stc["MissonStart"]) then
		return
	end

	local nItemId = tChildrenWishFlower_HandInItem[5]
	local sItemIdName = Get_ItemtypeName(tChildrenWishFlower_HandInItem[5])

	if Item_ChkMulItem(nItemId,nItemId,1) then
		local sItemIdName = Get_ItemtypeName(nItemId)
		local nPosX = Get_NpcPositionX(tChildrenWishFlower_Count["NpcId"])
		local nPosY = Get_NpcPositionY(tChildrenWishFlower_Count["NpcId"])
		sText = string.format(tChildrenWishFlower_Text["Msg"]["Balloon"],sItemIdName,nPosX,nPosY)
		User_TalkChannel2005(sText)
		return
	end
	
	local nDistanceX = math.abs(Get_UserPositionX() - Get_NpcPositionX(tChildrenWishFlower_Count["Balloon"]))
	local nDistanceY = math.abs(Get_UserPositionY() - Get_NpcPositionY(tChildrenWishFlower_Count["Balloon"]))
	if nDistanceX >= 3 or nDistanceY >= 3 then
		Sys_MsgBox(tChildrenWishFlower_Text["Msg"]["Distance"])
		return
	end
	
	if not User_CheckLeftSpace(1) then
		Sys_MsgBox(tChildrenWishFlower_Text["Msg"]["NoSpace"])
		return
	end
	Item_AddItem(nItemId)
	Sys_SaveActionFestivalLog(string.format(tChildrenWishFlower_Log["GetTaskItem"],nItemId))
	sText = string.format(tChildrenWishFlower_Text["Msg"]["NoEnough"],sItemIdName)
	Sys_MsgBox(sText)	
end

--补领纸笔。


function ChildrenWishFlower_GetPen(nNpcId)
	local nEventType = tChildrenWishFlower_Stc["EventType"]
	local nDataType =  tChildrenWishFlower_Stc["DataType"][4]	
	if Task_ChkStcValue(nEventType,nDataType,"==",tChildrenWishFlower_Stc["MissonStart"]) then
		if  Item_ChkItem(tChildrenWishFlower_Count["Pen"]) and Item_ChkItem(tChildrenWishFlower_Count["Paper"])  then
			Sys_MsgBox(tChildrenWishFlower_Text["Msg"]["HavePen"])	
			return
		end
	
		if not Item_ChkItem(tChildrenWishFlower_Count["Pen"]) then
			if not User_CheckLeftSpace(1) then
				Sys_MsgBox(tChildrenWishFlower_Text["Msg"]["NoSpace"])
				return
			end
			Item_AddItem(tChildrenWishFlower_Count["Pen"])
		end
		
		if not Item_ChkItem(tChildrenWishFlower_Count["Paper"]) then
			if not User_CheckLeftSpace(1) then
				Sys_MsgBox(tChildrenWishFlower_Text["Msg"]["NoSpace"])
				return
			end	
			Item_AddItem(tChildrenWishFlower_Count["Paper"])
		end	
		
		Sys_MsgBox(tChildrenWishFlower_Text["Msg"]["GetPen2"])	
	end
end

--传送回npc处
function ChildrenWishFlower_GetBack()
	User_UserRandBoundTrans(tChildrenWishFlower_Map[0]["MapId"],tChildrenWishFlower_Map[0]["MapX"],tChildrenWishFlower_Map[0]["MapY"],tChildrenWishFlower_Map["Cellx"],tChildrenWishFlower_Map["Celly"],1)
end

--------------------------------------NPC模块-------------------------------------------
-- 节日特使阮倩儿
tNpcFace[3030] = 175
tNpcGossip[16788] = tNpcGossip[16788] or DefaultNpc:new{}
tNpcGossip[16788]["OptionHidden"] = 1

--活动前
tNpcGossip[16788]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[16788]["tOption1-1"] = {111}
tNpcGossip[16788]["Text111"] = tChildrenWishFlower_Text[16788]["Text111"]
tNpcGossip[16788]["Text112"] = tChildrenWishFlower_Text[16788]["Text112"]
tNpcGossip[16788]["Text113"] = tChildrenWishFlower_Text[16788]["Text113"]
tNpcGossip[16788]["Text114"] = tChildrenWishFlower_Text[16788]["Text114"]
tNpcGossip[16788]["Text115"] = tChildrenWishFlower_Text[16788]["Text115"]
tNpcGossip[16788]["Option111"] = tChildrenWishFlower_Text[16788]["Option111"]
tNpcGossip[16788]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tChildrenWishFlower_Count["BeforeActivityTime"])
end

--活动后
tNpcGossip[16788]["Text1-2"] = {121}
tNpcGossip[16788]["tOption1-2"] = {121}
tNpcGossip[16788]["Text121"] = tChildrenWishFlower_Text[16788]["Text121"]
tNpcGossip[16788]["Option121"] = tChildrenWishFlower_Text[16788]["Option121"]
tNpcGossip[16788]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tChildrenWishFlower_Count["ActivityTime"])
end

--活动中
tNpcGossip[16788]["Text1-3"] = {131,132,133,134,135}
tNpcGossip[16788]["tOption1-3"] = {131,132,133,134,135,136}
tNpcGossip[16788]["Text131"] = tChildrenWishFlower_Text[16788]["Text131"]
tNpcGossip[16788]["Text132"] = tChildrenWishFlower_Text[16788]["Text132"]
tNpcGossip[16788]["Text133"] = tChildrenWishFlower_Text[16788]["Text133"]
tNpcGossip[16788]["Text134"] = tChildrenWishFlower_Text[16788]["Text134"]
tNpcGossip[16788]["Text135"] = tChildrenWishFlower_Text[16788]["Text135"]
tNpcGossip[16788]["Option131"] = tChildrenWishFlower_Text[16788]["Option131"]
tNpcGossip[16788]["Option132"] = tChildrenWishFlower_Text[16788]["Option132"]
tNpcGossip[16788]["Option133"] = tChildrenWishFlower_Text[16788]["Option133"]
tNpcGossip[16788]["Option134"] = tChildrenWishFlower_Text[16788]["Option134"]
tNpcGossip[16788]["Option135"] = tChildrenWishFlower_Text[16788]["Option135"]
tNpcGossip[16788]["Option136"] = tChildrenWishFlower_Text[16788]["Option136"]
tNpcGossip[16788]["OptionFunc131"] = "ChildrenWishFlower_StartMisson</N>16788"
tNpcGossip[16788]["OptionFunc132"] = "ChildrenWishFlower_GetAward</N>16788"
tNpcGossip[16788]["OptionFunc133"] = "ChildrenWishFlower_GetPen</N>16788"
tNpcGossip[16788]["OptionPoint134"] = "2-1"
tNpcGossip[16788]["OptionPoint135"] = "2-2"

tNpcGossip[16788]["OptionChkFunc131"] = function ()
	local nDay = ChildrenWishFlower_GetDay()
	local nEventType = tChildrenWishFlower_Stc["EventType"]
	local nDataType =  tChildrenWishFlower_Stc["DataType"][nDay]
	local nValue = Get_UserStatisticValue(nEventType,nDataType) or 0
	if nValue == tChildrenWishFlower_Stc["NoMisson"] then
		return true
	else
		return false
	end
end

tNpcGossip[16788]["OptionChkFunc132"] = function ()
	local nDay = ChildrenWishFlower_GetDay()
	local nEventType = tChildrenWishFlower_Stc["EventType"]
	local nDataType =  tChildrenWishFlower_Stc["DataType"][nDay]
	local nValue = Get_UserStatisticValue(nEventType,nDataType) or 0
	if nValue >= tChildrenWishFlower_Stc["MissonStart"] then
		return true
	else
		return false
	end
end

tNpcGossip[16788]["OptionChkFunc133"] = function ()
	local nDay = ChildrenWishFlower_GetDay()
	local nEventType = tChildrenWishFlower_Stc["EventType"]
	local nDataType =  tChildrenWishFlower_Stc["DataType"][nDay]
	local nValue = Get_UserStatisticValue(nEventType,nDataType) or 0
	if (nValue == tChildrenWishFlower_Stc["MissonStart"]) and  (nDay == 4) then
		return true
	else
		return false
	end
end

--心愿大红花是啥？
tNpcGossip[16788]["Text2-1"] = {211}
tNpcGossip[16788]["tOption2-1"] = {211}
tNpcGossip[16788]["Text211"] = tChildrenWishFlower_Text[16788]["Text211"]
tNpcGossip[16788]["Option211"] = tChildrenWishFlower_Text[16788]["Option211"]

--天晴猪之礼又是啥？
tNpcGossip[16788]["Text2-2"] = {221,222}
tNpcGossip[16788]["tOption2-2"] = {221}
tNpcGossip[16788]["Text221"] = tChildrenWishFlower_Text[16788]["Text221"]
tNpcGossip[16788]["Text222"] = tChildrenWishFlower_Text[16788]["Text222"]
tNpcGossip[16788]["Option221"] = tChildrenWishFlower_Text[16788]["Option221"]

--我来完成心愿?等级不够
tNpcGossip[16788]["Text3-1"] = {311}
tNpcGossip[16788]["tOption3-1"] = {311}
tNpcGossip[16788]["Text311"] = tChildrenWishFlower_Text[16788]["Text311"]
tNpcGossip[16788]["Option311"] = tChildrenWishFlower_Text[16788]["Option311"]

--我来完成心愿?今日已完成过
tNpcGossip[16788]["Text3-2"] = {321}
tNpcGossip[16788]["tOption3-2"] = {321}
tNpcGossip[16788]["Text321"] = tChildrenWishFlower_Text[16788]["Text321"]
tNpcGossip[16788]["Option321"] = tChildrenWishFlower_Text[16788]["Option321"]

tNpcGossip[16788]["Text3-3"] = {331}
tNpcGossip[16788]["tOption3-3"] = {331}
tNpcGossip[16788]["Text331"] = tChildrenWishFlower_Text[16788]["Text331"]
tNpcGossip[16788]["Option331"] = tChildrenWishFlower_Text[16788]["Option331"]

--背包已满
tNpcGossip[16788]["Text3-4"] = {341}
tNpcGossip[16788]["tOption3-4"] = {341}
tNpcGossip[16788]["Text341"] = tChildrenWishFlower_Text[16788]["Text341"]
tNpcGossip[16788]["Option341"] = tChildrenWishFlower_Text[16788]["Option341"]

--我来完成心愿第1天
tNpcGossip[16788]["Text4-1"] = {411,412,413,414,415,416,417,418}
tNpcGossip[16788]["tOption4-1"] = {411}
tNpcGossip[16788]["Text411"] = tChildrenWishFlower_Text[16788]["Text411"]
tNpcGossip[16788]["Text412"] = tChildrenWishFlower_Text[16788]["Text412"]
tNpcGossip[16788]["Text413"] = tChildrenWishFlower_Text[16788]["Text413"]
tNpcGossip[16788]["Text414"] = tChildrenWishFlower_Text[16788]["Text414"]
tNpcGossip[16788]["Text415"] = tChildrenWishFlower_Text[16788]["Text415"]
tNpcGossip[16788]["Text416"] = tChildrenWishFlower_Text[16788]["Text416"]
tNpcGossip[16788]["Text417"] = tChildrenWishFlower_Text[16788]["Text417"]
tNpcGossip[16788]["Text418"] = tChildrenWishFlower_Text[16788]["Text418"]
tNpcGossip[16788]["Option411"] = tChildrenWishFlower_Text[16788]["Option411"]
tNpcGossip[16788]["OptionFunc411"] = "ChildrenWishFlower_MissonStart</N>16788</N>1"

--我来完成心愿第2天
tNpcGossip[16788]["Text4-2"] = {421,422,423,424,425,426,427,428}
tNpcGossip[16788]["tOption4-2"] = {421}
tNpcGossip[16788]["Text421"] = tChildrenWishFlower_Text[16788]["Text421"]
tNpcGossip[16788]["Text422"] = tChildrenWishFlower_Text[16788]["Text422"]
tNpcGossip[16788]["Text423"] = tChildrenWishFlower_Text[16788]["Text423"]
tNpcGossip[16788]["Text424"] = tChildrenWishFlower_Text[16788]["Text424"]
tNpcGossip[16788]["Text425"] = tChildrenWishFlower_Text[16788]["Text425"]
tNpcGossip[16788]["Text426"] = tChildrenWishFlower_Text[16788]["Text426"]
tNpcGossip[16788]["Text427"] = tChildrenWishFlower_Text[16788]["Text427"]
tNpcGossip[16788]["Text428"] = tChildrenWishFlower_Text[16788]["Text428"]
tNpcGossip[16788]["Option421"] = tChildrenWishFlower_Text[16788]["Option421"]
tNpcGossip[16788]["OptionFunc421"] = "ChildrenWishFlower_MissonStart</N>16788</N>2"

--我来完成心愿第3天
tNpcGossip[16788]["Text4-3"] = {431,432,433,434,435,436,437,438}
tNpcGossip[16788]["tOption4-3"] = {431}
tNpcGossip[16788]["Text431"] = tChildrenWishFlower_Text[16788]["Text431"]
tNpcGossip[16788]["Text432"] = tChildrenWishFlower_Text[16788]["Text432"]
tNpcGossip[16788]["Text433"] = tChildrenWishFlower_Text[16788]["Text433"]
tNpcGossip[16788]["Text434"] = tChildrenWishFlower_Text[16788]["Text434"]
tNpcGossip[16788]["Text435"] = tChildrenWishFlower_Text[16788]["Text435"]
tNpcGossip[16788]["Text436"] = tChildrenWishFlower_Text[16788]["Text436"]
tNpcGossip[16788]["Text437"] = tChildrenWishFlower_Text[16788]["Text437"]
tNpcGossip[16788]["Text438"] = tChildrenWishFlower_Text[16788]["Text438"]
tNpcGossip[16788]["Option431"] = tChildrenWishFlower_Text[16788]["Option431"]
tNpcGossip[16788]["OptionFunc431"] = "ChildrenWishFlower_MissonStart</N>16788</N>3"

--我来完成心愿第4天
tNpcGossip[16788]["Text4-4"] = {441,442,443,444,445,446,447,448}
tNpcGossip[16788]["tOption4-4"] = {441}
tNpcGossip[16788]["Text441"] = tChildrenWishFlower_Text[16788]["Text441"]
tNpcGossip[16788]["Text442"] = tChildrenWishFlower_Text[16788]["Text442"]
tNpcGossip[16788]["Text443"] = tChildrenWishFlower_Text[16788]["Text443"]
tNpcGossip[16788]["Text444"] = tChildrenWishFlower_Text[16788]["Text444"]
tNpcGossip[16788]["Text445"] = tChildrenWishFlower_Text[16788]["Text445"]
tNpcGossip[16788]["Text446"] = tChildrenWishFlower_Text[16788]["Text446"]
tNpcGossip[16788]["Text447"] = tChildrenWishFlower_Text[16788]["Text447"]
tNpcGossip[16788]["Text448"] = tChildrenWishFlower_Text[16788]["Text448"]
tNpcGossip[16788]["Option441"] = tChildrenWishFlower_Text[16788]["Option441"]
tNpcGossip[16788]["OptionFunc441"] = "ChildrenWishFlower_MissonStart</N>16788</N>4"

--我来完成心愿第5天
tNpcGossip[16788]["Text4-5"] = {451,452,453,454,455,456,457,458}
tNpcGossip[16788]["tOption4-5"] = {451}
tNpcGossip[16788]["Text451"] = tChildrenWishFlower_Text[16788]["Text451"]
tNpcGossip[16788]["Text452"] = tChildrenWishFlower_Text[16788]["Text452"]
tNpcGossip[16788]["Text453"] = tChildrenWishFlower_Text[16788]["Text453"]
tNpcGossip[16788]["Text454"] = tChildrenWishFlower_Text[16788]["Text454"]
tNpcGossip[16788]["Text455"] = tChildrenWishFlower_Text[16788]["Text455"]
tNpcGossip[16788]["Text456"] = tChildrenWishFlower_Text[16788]["Text456"]
tNpcGossip[16788]["Text457"] = tChildrenWishFlower_Text[16788]["Text457"]
tNpcGossip[16788]["Text458"] = tChildrenWishFlower_Text[16788]["Text458"]
tNpcGossip[16788]["Option451"] = tChildrenWishFlower_Text[16788]["Option451"]
tNpcGossip[16788]["OptionFunc451"] = "ChildrenWishFlower_MissonStart</N>16788</N>5"

--我来完成心愿第6天
tNpcGossip[16788]["Text4-6"] = {461,462,463,464,465,466,467,468}
tNpcGossip[16788]["tOption4-6"] = {461}
tNpcGossip[16788]["Text461"] = tChildrenWishFlower_Text[16788]["Text461"]
tNpcGossip[16788]["Text462"] = tChildrenWishFlower_Text[16788]["Text462"]
tNpcGossip[16788]["Text463"] = tChildrenWishFlower_Text[16788]["Text463"]
tNpcGossip[16788]["Text464"] = tChildrenWishFlower_Text[16788]["Text464"]
tNpcGossip[16788]["Text465"] = tChildrenWishFlower_Text[16788]["Text465"]
tNpcGossip[16788]["Text466"] = tChildrenWishFlower_Text[16788]["Text466"]
tNpcGossip[16788]["Text467"] = tChildrenWishFlower_Text[16788]["Text467"]
tNpcGossip[16788]["Text468"] = tChildrenWishFlower_Text[16788]["Text468"]
tNpcGossip[16788]["Option461"] = tChildrenWishFlower_Text[16788]["Option461"]
tNpcGossip[16788]["OptionFunc461"] = "ChildrenWishFlower_MissonStart</N>16788</N>6"

--尚未完成心愿第1天
tNpcGossip[16788]["Text5-1"] = {511}
tNpcGossip[16788]["tOption5-1"] = {511}
tNpcGossip[16788]["Text511"] = tChildrenWishFlower_Text[16788]["Text511"]
tNpcGossip[16788]["Option511"] = tChildrenWishFlower_Text[16788]["Option511"]
--尚未完成心愿第2天
tNpcGossip[16788]["Text5-2"] = {521}
tNpcGossip[16788]["tOption5-2"] = {521}
tNpcGossip[16788]["Text521"] = tChildrenWishFlower_Text[16788]["Text521"]
tNpcGossip[16788]["Option521"] = tChildrenWishFlower_Text[16788]["Option521"]
--尚未完成心愿第3天
tNpcGossip[16788]["Text5-3"] = {531}
tNpcGossip[16788]["tOption5-3"] = {531}
tNpcGossip[16788]["Text531"] = tChildrenWishFlower_Text[16788]["Text531"]
tNpcGossip[16788]["Option531"] = tChildrenWishFlower_Text[16788]["Option531"]
--尚未完成心愿第4天
tNpcGossip[16788]["Text5-4"] = {541}
tNpcGossip[16788]["tOption5-4"] = {541}
tNpcGossip[16788]["Text541"] = tChildrenWishFlower_Text[16788]["Text541"]
tNpcGossip[16788]["Option541"] = tChildrenWishFlower_Text[16788]["Option541"]
--尚未完成心愿第5天
tNpcGossip[16788]["Text5-5"] = {551}
tNpcGossip[16788]["tOption5-5"] = {551}
tNpcGossip[16788]["Text551"] = tChildrenWishFlower_Text[16788]["Text551"]
tNpcGossip[16788]["Option551"] = tChildrenWishFlower_Text[16788]["Option551"]
--尚未完成心愿第6天
tNpcGossip[16788]["Text5-6"] = {561}
tNpcGossip[16788]["tOption5-6"] = {561}
tNpcGossip[16788]["Text561"] = tChildrenWishFlower_Text[16788]["Text561"]
tNpcGossip[16788]["Option561"] = tChildrenWishFlower_Text[16788]["Option561"]

--我来完成心愿第1天
tNpcGossip[16788]["Text6-1"] = {611,612,613,614,615,616,617,618}
tNpcGossip[16788]["tOption6-1"] = {611}
tNpcGossip[16788]["Text611"] = tChildrenWishFlower_Text[16788]["Text611"]
tNpcGossip[16788]["Text612"] = tChildrenWishFlower_Text[16788]["Text612"]
tNpcGossip[16788]["Text613"] = tChildrenWishFlower_Text[16788]["Text613"]
tNpcGossip[16788]["Text614"] = tChildrenWishFlower_Text[16788]["Text614"]
tNpcGossip[16788]["Text615"] = tChildrenWishFlower_Text[16788]["Text615"]
tNpcGossip[16788]["Text616"] = tChildrenWishFlower_Text[16788]["Text616"]
tNpcGossip[16788]["Text617"] = tChildrenWishFlower_Text[16788]["Text617"]
tNpcGossip[16788]["Text618"] = tChildrenWishFlower_Text[16788]["Text618"]
tNpcGossip[16788]["Option611"] = tChildrenWishFlower_Text[16788]["Option611"]
tNpcGossip[16788]["OptionFunc611"] = "ChildrenWishFlower_GetAward2</N>16788</N>1"

--我来完成心愿第2天
tNpcGossip[16788]["Text6-2"] = {621,622,623,624,625,626,627,628}
tNpcGossip[16788]["tOption6-2"] = {621}
tNpcGossip[16788]["Text621"] = tChildrenWishFlower_Text[16788]["Text621"]
tNpcGossip[16788]["Text622"] = tChildrenWishFlower_Text[16788]["Text622"]
tNpcGossip[16788]["Text623"] = tChildrenWishFlower_Text[16788]["Text623"]
tNpcGossip[16788]["Text624"] = tChildrenWishFlower_Text[16788]["Text624"]
tNpcGossip[16788]["Text625"] = tChildrenWishFlower_Text[16788]["Text625"]
tNpcGossip[16788]["Text626"] = tChildrenWishFlower_Text[16788]["Text626"]
tNpcGossip[16788]["Text627"] = tChildrenWishFlower_Text[16788]["Text627"]
tNpcGossip[16788]["Text628"] = tChildrenWishFlower_Text[16788]["Text628"]
tNpcGossip[16788]["Option621"] = tChildrenWishFlower_Text[16788]["Option621"]
tNpcGossip[16788]["OptionFunc621"] = "ChildrenWishFlower_GetAward2</N>16788</N>2"

--我来完成心愿第3天
tNpcGossip[16788]["Text6-3"] = {631,632,633,634,635,636,637,638}
tNpcGossip[16788]["tOption6-3"] = {631}
tNpcGossip[16788]["Text631"] = tChildrenWishFlower_Text[16788]["Text631"]
tNpcGossip[16788]["Text632"] = tChildrenWishFlower_Text[16788]["Text632"]
tNpcGossip[16788]["Text633"] = tChildrenWishFlower_Text[16788]["Text633"]
tNpcGossip[16788]["Text634"] = tChildrenWishFlower_Text[16788]["Text634"]
tNpcGossip[16788]["Text635"] = tChildrenWishFlower_Text[16788]["Text635"]
tNpcGossip[16788]["Text636"] = tChildrenWishFlower_Text[16788]["Text636"]
tNpcGossip[16788]["Text637"] = tChildrenWishFlower_Text[16788]["Text637"]
tNpcGossip[16788]["Text638"] = tChildrenWishFlower_Text[16788]["Text638"]
tNpcGossip[16788]["Option631"] = tChildrenWishFlower_Text[16788]["Option631"]
tNpcGossip[16788]["OptionFunc631"] = "ChildrenWishFlower_GetAward2</N>16788</N>3"

--我来完成心愿第4天
tNpcGossip[16788]["Text6-4"] = {641,642,643,644,645,646,647,648}
tNpcGossip[16788]["tOption6-4"] = {641}
tNpcGossip[16788]["Text641"] = tChildrenWishFlower_Text[16788]["Text641"]
tNpcGossip[16788]["Text642"] = tChildrenWishFlower_Text[16788]["Text642"]
tNpcGossip[16788]["Text643"] = tChildrenWishFlower_Text[16788]["Text643"]
tNpcGossip[16788]["Text644"] = tChildrenWishFlower_Text[16788]["Text644"]
tNpcGossip[16788]["Text645"] = tChildrenWishFlower_Text[16788]["Text645"]
tNpcGossip[16788]["Text646"] = tChildrenWishFlower_Text[16788]["Text646"]
tNpcGossip[16788]["Text647"] = tChildrenWishFlower_Text[16788]["Text647"]
tNpcGossip[16788]["Text648"] = tChildrenWishFlower_Text[16788]["Text648"]
tNpcGossip[16788]["Option641"] = tChildrenWishFlower_Text[16788]["Option641"]
tNpcGossip[16788]["OptionFunc641"] = "ChildrenWishFlower_GetAward2</N>16788</N>4"

--我来完成心愿第5天
tNpcGossip[16788]["Text6-5"] = {651,652,653,654,655,656,657,658}
tNpcGossip[16788]["tOption6-5"] = {651}
tNpcGossip[16788]["Text651"] = tChildrenWishFlower_Text[16788]["Text651"]
tNpcGossip[16788]["Text652"] = tChildrenWishFlower_Text[16788]["Text652"]
tNpcGossip[16788]["Text653"] = tChildrenWishFlower_Text[16788]["Text653"]
tNpcGossip[16788]["Text654"] = tChildrenWishFlower_Text[16788]["Text654"]
tNpcGossip[16788]["Text655"] = tChildrenWishFlower_Text[16788]["Text655"]
tNpcGossip[16788]["Text656"] = tChildrenWishFlower_Text[16788]["Text656"]
tNpcGossip[16788]["Text657"] = tChildrenWishFlower_Text[16788]["Text657"]
tNpcGossip[16788]["Text658"] = tChildrenWishFlower_Text[16788]["Text658"]
tNpcGossip[16788]["Option651"] = tChildrenWishFlower_Text[16788]["Option651"]
tNpcGossip[16788]["OptionFunc651"] = "ChildrenWishFlower_GetAward2</N>16788</N>5"

--我来完成心愿第6天
tNpcGossip[16788]["Text6-6"] = {661,662,663,664,665,666,667,668}
tNpcGossip[16788]["tOption6-6"] = {461}
tNpcGossip[16788]["Text661"] = tChildrenWishFlower_Text[16788]["Text661"]
tNpcGossip[16788]["Text662"] = tChildrenWishFlower_Text[16788]["Text662"]
tNpcGossip[16788]["Text663"] = tChildrenWishFlower_Text[16788]["Text663"]
tNpcGossip[16788]["Text664"] = tChildrenWishFlower_Text[16788]["Text664"]
tNpcGossip[16788]["Text665"] = tChildrenWishFlower_Text[16788]["Text665"]
tNpcGossip[16788]["Text666"] = tChildrenWishFlower_Text[16788]["Text666"]
tNpcGossip[16788]["Text667"] = tChildrenWishFlower_Text[16788]["Text667"]
tNpcGossip[16788]["Text668"] = tChildrenWishFlower_Text[16788]["Text668"]
tNpcGossip[16788]["Option661"] = tChildrenWishFlower_Text[16788]["Option661"]
tNpcGossip[16788]["OptionFunc661"] = "ChildrenWishFlower_GetAward2</N>16788</N>6"


-- -- ---- ---- --实时检测
-- table.insert(tSystem_Prompet_Func,ChildrenWishFlower_CreatTaskItem)


-- -- ---- ---- --怪物掉落
-- tMonster[13] = tMonster[13] or {}
-- tMonster[13]["tFunction"] = tMonster[13]["tFunction"] or {}
-- table.insert(tMonster[13]["tFunction"],ChildrenWishFlower_Monster)

-- tMonster[79] = tMonster[79] or {}
-- tMonster[79]["tFunction"] = tMonster[79]["tFunction"] or {}
-- table.insert(tMonster[79]["tFunction"],ChildrenWishFlower_Monster)