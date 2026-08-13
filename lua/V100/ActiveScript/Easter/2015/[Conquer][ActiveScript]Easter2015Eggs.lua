------------------------------------------------------------------------------------
--Name:			[英文征服][活动脚本]复活节活动--复活节彩蛋(4.2-4.8)
--Purpose:		复活节活动--复活节彩蛋(4.2-4.8)
--Creator:		张磊
--Created:		2015/01/30
------------------------------------------------------------------------------------

--	命名前缀
--	Easter2015_Eggs_

--	掩码说明
--	stc掩码	132	79
--	==1 表示完成任务

--task_detail 3394

--LOGID	12000027

--常量表配置
local tEaster2015_Eggs_Cont = {}
	--活动时间
	tEaster2015_Eggs_Cont["ActivityTime"] = "2017-04-14 00:00 2017-04-20 23:59"
	tEaster2015_Eggs_Cont["BeforeActivityTime"] = "2017-01-01 00:00 2017-04-13 23:59"
	
	--玩家等级要求
	tEaster2015_Eggs_Cont["Metempsychosis"] = 0
	tEaster2015_Eggs_Cont["Level"] = 80
	
	--掩码（记录玩家任务状态）
	tEaster2015_Eggs_Cont["StcEvent"] = 132
	tEaster2015_Eggs_Cont["StcType"] = 79
	tEaster2015_Eggs_Cont["Complete"] = 1
	
	--寻路到npc的坐标
	tEaster2015_Eggs_Cont["Npc_Id"] = 18198
	tEaster2015_Eggs_Cont["Npc_Mapid"] = 1002
	tEaster2015_Eggs_Cont["Npc_Cellx"] = 276
	tEaster2015_Eggs_Cont["Npc_Celly"] = 364
	
	--背包空间
	tEaster2015_Eggs_Cont["BagSpace"] = {}
	tEaster2015_Eggs_Cont["BagSpace"][1] = 1
	tEaster2015_Eggs_Cont["BagSpace"][2] = 2
	
	--房屋type
	tEaster2015_Eggs_Cont["House_Type"] = 1024
	
	
	--相关物品
	tEaster2015_Eggs_Cont["Item3005808"] = 3005808
	tEaster2015_Eggs_Cont["Item3005809"] = 3005809
	tEaster2015_Eggs_Cont["Item3005811"] = 3005811
	tEaster2015_Eggs_Cont["Item3005814"] = 3005814
	tEaster2015_Eggs_Cont["Item3005815"] = 3005815
	tEaster2015_Eggs_Cont["Item3005816"] = 3005816
	
	--节日礼包相关
	tEaster2015_Eggs_Cont["FestivalId"] = 3381
	
--各种光效
local tEaster2015_Eggs_Effect = {}
	tEaster2015_Eggs_Effect[3005811] = "zf2-e263"
	tEaster2015_Eggs_Effect[3005814] = "recovery"
	tEaster2015_Eggs_Effect[3005816] = "fighter"
	tEaster2015_Eggs_Effect[3005815] = "goldenkylin"
	tEaster2015_Eggs_Effect["ReceiveMaterials"] = "angelwing"
	tEaster2015_Eggs_Effect["Self"] = "self"
	
--LOG 表
local tEaster2015_Eggs_LOG = {}
	tEaster2015_Eggs_LOG["Log_ID"] = 10002399
	--接任务时领取LOG
	tEaster2015_Eggs_LOG["GetMaterials"] = "0,0,0,0,10002399,1[1],3005808[3005809],1[1]"
	--已经接过任务，补领材料LOG
	tEaster2015_Eggs_LOG["ReplacementMaterials"] = "0,0,0,0,10002399,1,3005808[3005809],1[1]"
	--完成任务的LOG即：画好彩蛋的LOG
	tEaster2015_Eggs_LOG["CompleteActivity"] = "0,0,3005808[3005809],1[1],10002399,2,%d[3003625],1[1]"

local tEaster2015_Eggs_Lookface = {}
	tEaster2015_Eggs_Lookface[3005811] = 35490
	tEaster2015_Eggs_Lookface[3005814] = 46650
	tEaster2015_Eggs_Lookface[3005815] = 35530
	tEaster2015_Eggs_Lookface[3005816] = 35540
	
--创建家具时家具触发的actionId
local tEaster2015_Eggs_ActionId = {}
	tEaster2015_Eggs_ActionId[3005811] = 94438050
	tEaster2015_Eggs_ActionId[3005814] = 94438057
	tEaster2015_Eggs_ActionId[3005815] = 94438058
	tEaster2015_Eggs_ActionId[3005816] = 94438059

--------------------------------------逻辑部分-----------------------------------------


--解析数字包含函数
function ParseNumbersContain(nConNum,nTotalNum)
	local nPow = 0
	local nTemp = 0
	local bBool = false
	local nCalLoop = 0
	while nTotalNum ~= 0 and nTotalNum ~= nil do
		if nCalLoop > G_CalculateLoop then
			Sys_SaveAbnormalLog("函数 ParseNumbersContain 中 [while]循环超过1000次！")
			break
		end
		nCalLoop = nCalLoop + 1
		nTemp = nTotalNum % 2
		
		if nTemp ~= 0 then
--			print("nTemp" .. nTemp)
			if nConNum == 2^nPow then
				bBool = true
				break
			end
		end

		nPow = nPow + 1
		nTotalNum = (nTotalNum - nTemp) / 2
	end
	return bBool
end



--玩家是否当天已经完成了
function Easter2015_Eggs_Complete()

	--判断当天是否已经画过了
	local nEvent = tEaster2015_Eggs_Cont["StcEvent"]
	local nType = tEaster2015_Eggs_Cont["StcType"]
	local nComplete = tEaster2015_Eggs_Cont["Complete"]
	
	if Task_ChkStcValue(nEvent,nType,">=",nComplete) then
		-- 判断是否隔天
		if Task_StcInterval(nEvent,nType,1,4) then
			Task_SetStatistic(nEvent,nType,0,1,0)
			Task_SetStcTimestamp(nEvent,nType,0,0)
			
			return false
		end
		
		return true
	else
		return false
	end
end


--寻路到彩蛋设计大师
function Easter2015_Eggs_PathFinding()
	local nNpcId = tEaster2015_Eggs_Cont["Npc_Id"]
	local nMapId = tEaster2015_Eggs_Cont["Npc_Mapid"]
	local nPosX = tEaster2015_Eggs_Cont["Npc_Cellx"]
	local nPosY = tEaster2015_Eggs_Cont["Npc_Celly"]
	if Sys_ChkFullTime(tEaster2015_Eggs_Cont["ActivityTime"]) then
		Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
	end
	return
end

--领取画笔和彩蛋选项函数
function Easter2015_Eggs_ReceiveMaterials(nNpcId)
	if not Sys_ChkFullTime(tEaster2015_Eggs_Cont["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	
	local nMetempsychosis = tEaster2015_Eggs_Cont["Metempsychosis"]
	local nLevel = tEaster2015_Eggs_Cont["Level"]
	
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis) then
		LinkNpcGossipFunc_New(nNpcId,"4-1")
		return
	end
	
	local nEvent = tEaster2015_Eggs_Cont["StcEvent"]
	local nType = tEaster2015_Eggs_Cont["StcType"]
	local nComplete = tEaster2015_Eggs_Cont["Complete"]
	
	--判断是否完成
	if Task_ChkStcValue(nEvent,nType,">=",nComplete) then
		if not Task_StcInterval(nEvent,nType,1,4) then
			LinkNpcGossipFunc_New(nNpcId,"6-1")
			return
		end
	end
	
	--stc掩码小于1（即未完成情况），或者隔天
	local nEggs = tEaster2015_Eggs_Cont["Item3005808"]
	local nPaintBrush = tEaster2015_Eggs_Cont["Item3005809"]
	local nBagSpace1 = tEaster2015_Eggs_Cont["BagSpace"][1]
	local nBagSpace2 = tEaster2015_Eggs_Cont["BagSpace"][2]
	
	Task_SetStatistic(nEvent,nType,0,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	
	if Item_ChkItem(nEggs) then
		if Item_ChkItem(nPaintBrush) then
			LinkNpcGossipFunc_New(nNpcId,"3-1")
			return
		end
		if not User_CheckLeftSpace(nBagSpace1) then
			LinkNpcGossipFunc_New(nNpcId,"2-1")
			return
		end
		Item_AddItem(nPaintBrush,0,1)
		Sys_MsgBox(tEaster2015_Eggs_Text["SysGetMaterials"])
		Sys_SaveActionFestivalLog(tEaster2015_Eggs_LOG["ReplacementMaterials"])
		return
	end
	
	if Item_ChkItem(nPaintBrush) then
		if Item_ChkItem(nEggs) then
			LinkNpcGossipFunc_New(nNpcId,"3-1")
			return
		end
		if not User_CheckLeftSpace(nBagSpace1) then
			LinkNpcGossipFunc_New(nNpcId,"2-1")
			return
		end
		Item_AddItem(nEggs,0,1)
		Sys_MsgBox(tEaster2015_Eggs_Text["SysGetMaterials"])
		Sys_SaveActionFestivalLog(tEaster2015_Eggs_LOG["ReplacementMaterials"])
		return
	end
	
	if not User_CheckLeftSpace(nBagSpace2) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	Item_AddItem(nEggs,0,1)
	Item_AddItem(nPaintBrush,0,1)
	Sys_MsgBox(tEaster2015_Eggs_Text["SysGetMaterials"])
	Sys_SaveActionFestivalLog(tEaster2015_Eggs_LOG["GetMaterials"])
	
end

--点击选择画彩蛋的选项--统一逻辑
function Easter2015_Eggs_ChosePaintingEggs(nItemId)
	local str = string.format(tEaster2015_Eggs_ItemText[3005809]["Text211"],tEaster2015_Eggs_Name[nItemId])
	Sys_DialogText(str)
	Sys_DialogOption(tEaster2015_Eggs_ItemText[3005809]["Option18"],"</F>Easter2015_Eggs_PaintingEggs</N>" .. nItemId)
	Sys_DialogOption(tEaster2015_Eggs_ItemText[3005809]["Option19"],"</F>NULL")
	Sys_DialogEnd()
	
end

--点击二次确认选项开始画彩蛋
function Easter2015_Eggs_PaintingEggs(nItemId)
	if not Sys_ChkFullTime(tEaster2015_Eggs_Cont["ActivityTime"]) then
		return
	end
	
	if Easter2015_Eggs_Complete() then
		Sys_MsgBox(tEaster2015_Eggs_ItemText["CompleteSys"])
		return
	end
		
	--活动时间内判断材料是否齐全
	local nEggId = tEaster2015_Eggs_Cont["Item3005808"]
	local nPaintId = tEaster2015_Eggs_Cont["Item3005809"]
	
	if not Item_ChkItem(nEggId)then
		if Item_ChkItem(nPaintId) then
			Sys_MsgBox(tEaster2015_Eggs_ItemText[3005809]["NoEgg"])
			return
		else
			Sys_MsgBox(tEaster2015_Eggs_ItemText[3005809]["NothingMaterials"])
			return
		end	
	elseif not Item_ChkItem(nPaintId) then
			Sys_MsgBox(tEaster2015_Eggs_ItemText[3005809]["NoPaint"])
			return
	end

	--材料齐全，打掩码，删除材料给蛋和节日礼包
		
	if not Item_DelItem(nEggId) then
		return 
	end
	if not Item_DelItem(nPaintId) then
		return 
	end
	
	local nEvent = tEaster2015_Eggs_Cont["StcEvent"]
	local nType = tEaster2015_Eggs_Cont["StcType"]
	local nComplete = tEaster2015_Eggs_Cont["Complete"]
	
	Task_SetStatistic(nEvent,nType,nComplete,1,0)
	Task_SetStcTimestamp(nEvent,nType,0,0)
	
	local str = string.format(tEaster2015_Eggs_ItemText[3005809]["SuccessPaint"],tEaster2015_Eggs_Name[nItemId])
	local str_Log = string.format(tEaster2015_Eggs_LOG["CompleteActivity"],nItemId)

	Item_AddItem(nItemId)
	FestivalGeneralPackage_GetGift(tEaster2015_Eggs_Cont["FestivalId"],tEaster2015_Eggs_LOG["Log_ID"])
	Sys_SaveActionFestivalLog(str_Log)
	Sys_MsgBox(str)
	
	--光效播放
	User_EffectAdd(tEaster2015_Eggs_Effect["Self"],tEaster2015_Eggs_Effect[nItemId])

end


--点击雕像npc
function  Easter2015_Eggs_StatueNpc(nNpcId)

	if not Sys_ChkFullTime(tEaster2015_Eggs_Cont["ActivityTime"]) then
		return
	end

	Sys_MsgBox(tEaster2015_Eggs_Text[nNpcId]["Sys_MsgBox"],"Easter2015_Eggs_PathFinding")
	return
end

--右键点击使用彩蛋
function Easter2015_Eggs_ClickEggs(nItemId)
	Sys_DialogTaskClear()
	if not Item_ChkItem(nItemId) then
		return
	end
	
	if not Sys_ChkFullTime(tEaster2015_Eggs_Cont["ActivityTime"]) then
		Item_DelItem(nItemId)
		return
	end

	--判断是否在房屋内使用
	local nHouseType = tEaster2015_Eggs_Cont["House_Type"]
	local nPlayerId = Get_UserId()
	local nUserMapType = Get_MapType()

	if not ParseNumbersContain(nHouseType,nUserMapType) then
		Sys_MsgBox(tEaster2015_Eggs_Text["NotInHouse"])
		return
	end
	
	local nMapOwnerId = Get_MapOwnerId()
	if nMapOwnerId ~= nPlayerId then
		Sys_MsgBox(tEaster2015_Eggs_Text["NotInHouse"])
		return
	end
	
	Npc_RequestLayNpcByItem("Easter2015_Eggs_GreatNpc</N>" .. nItemId,2,tEaster2015_Eggs_Lookface[nItemId])

end

function Easter2015_Eggs_GreatNpc(nItemId)
	if Item_ChkItem(nItemId) then
		if Npc_CreatLayNpcByItem(tEaster2015_Eggs_Name[nItemId],2,32,tEaster2015_Eggs_Lookface[nItemId],0,0,0,0,0,tEaster2015_Eggs_ActionId[nItemId]) then 
			if Item_DelItem(nItemId) then
				User_EffectAdd(tEaster2015_Eggs_Effect["Self"],tEaster2015_Eggs_Effect[nItemId])
			end	
		end
	end
end


--点击家具时，过期删除当前家具npc

function Easter2015_Eggs_DelDynaNpcByItem(nItemId)

	local nPlayerId = Get_UserId()
	local nMapOwnerId = Get_MapOwnerId()
	
	if nMapOwnerId ~= nPlayerId then
		return
	end

	if not Sys_ChkFullTime(tEaster2015_Eggs_Cont["ActivityTime"]) then
		Npc_DelDynaByID()
		return
	end
	
	Sys_DialogText(tEaster2015_Eggs_Text[3005811]["FoldFurniture"])
	Sys_DialogOption(tEaster2015_Eggs_Text[3005811]["Option30"],"</F>Easter2015_Eggs_FoldFurniture</N>" .. nItemId)
	Sys_DialogOption(tEaster2015_Eggs_Text[3005811]["Option31"],"</F>NULL")
	Sys_DialogEnd()
end

function Easter2015_Eggs_FoldFurniture(nItemId)

	if not Sys_ChkFullTime(tEaster2015_Eggs_Cont["ActivityTime"]) then
		Npc_DelDynaByID()
		return
	end
	
	local nPlayerId = Get_UserId()
	local nMapOwnerId = Get_MapOwnerId()
	
	if nMapOwnerId ~= nPlayerId then
		return
	end
	
	local nBagSpace1 = tEaster2015_Eggs_Cont["BagSpace"][1]
	if not User_CheckLeftSpace(nBagSpace1) then
		Sys_MsgBox(tEaster2015_Eggs_Text["SpaceNotFull"])
		return
	end
	Npc_DelDynaByID()
	Item_AddItem(nItemId)
end

--------------------------------------NPC模块-------------------------------------------
--18198	彩蛋设计大师
tNpcFace[3547] = 152
tNpcGossip[18198] = tNpcGossip[18198] or DefaultNpc:new{}
tNpcGossip[18198]["OptionHidden"] = 1


--活动时间前
tNpcGossip[18198]["Text1-1"] = {111,112,113}
tNpcGossip[18198]["Text111"] = tEaster2015_Eggs_Text[18198]["Text111"]
tNpcGossip[18198]["Text112"] = tEaster2015_Eggs_Text[18198]["Text112"]
tNpcGossip[18198]["Text113"] = tEaster2015_Eggs_Text[18198]["Text113"]
tNpcGossip[18198]["tOption1-1"] = {1}
tNpcGossip[18198]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tEaster2015_Eggs_Cont["BeforeActivityTime"])
end

--活动时间中
tNpcGossip[18198]["Text1-2"] = {121,122,123,124}
tNpcGossip[18198]["Text121"] = tEaster2015_Eggs_Text[18198]["Text121"]
tNpcGossip[18198]["Text122"] = tEaster2015_Eggs_Text[18198]["Text122"]
tNpcGossip[18198]["Text123"] = tEaster2015_Eggs_Text[18198]["Text123"]
tNpcGossip[18198]["Text124"] = tEaster2015_Eggs_Text[18198]["Text124"]
tNpcGossip[18198]["tOption1-2"] = {3,4,5}
tNpcGossip[18198]["ChkFunc1-2"] = function()
	return Sys_ChkFullTime(tEaster2015_Eggs_Cont["ActivityTime"])
end

--活动时间后
tNpcGossip[18198]["Text1-3"] = {131,132}
tNpcGossip[18198]["Text131"] = tEaster2015_Eggs_Text[18198]["Text131"]
tNpcGossip[18198]["Text132"] = tEaster2015_Eggs_Text[18198]["Text132"]
tNpcGossip[18198]["tOption1-3"] = {2}

--领取道具时背包已满提示
tNpcGossip[18198]["Text2-1"] = {211}
tNpcGossip[18198]["Text211"] = tEaster2015_Eggs_Text[18198]["Text211"]
tNpcGossip[18198]["tOption2-1"] = {6}

--身上已经有道具，点击领取道具提示
tNpcGossip[18198]["Text3-1"] = {311}
tNpcGossip[18198]["Text311"] = tEaster2015_Eggs_Text[18198]["Text311"]
tNpcGossip[18198]["tOption3-1"] = {7}

--等级条件不足，提示
tNpcGossip[18198]["Text4-1"] = {411}
tNpcGossip[18198]["Text411"] = tEaster2015_Eggs_Text[18198]["Text411"]
tNpcGossip[18198]["tOption4-1"] = {8}

--点击了解活动详情。
tNpcGossip[18198]["Text5-1"] = {511,512,513,514}
tNpcGossip[18198]["Text511"] = tEaster2015_Eggs_Text[18198]["Text511"]
tNpcGossip[18198]["Text512"] = tEaster2015_Eggs_Text[18198]["Text512"]
tNpcGossip[18198]["Text513"] = tEaster2015_Eggs_Text[18198]["Text513"]
tNpcGossip[18198]["Text514"] = tEaster2015_Eggs_Text[18198]["Text514"]
tNpcGossip[18198]["tOption5-1"] = {8}

--已经完成点击领取材料选项提示
tNpcGossip[18198]["Text6-1"] = {611}
tNpcGossip[18198]["Text611"] = tEaster2015_Eggs_Text[18198]["Text611"]
tNpcGossip[18198]["tOption6-1"] = {6}




--npc选项

tNpcGossip[18198]["Option1"] = tEaster2015_Eggs_Text[18198]["Option1"]
tNpcGossip[18198]["Option2"] = tEaster2015_Eggs_Text[18198]["Option2"]

tNpcGossip[18198]["Option3"] = tEaster2015_Eggs_Text[18198]["Option3"]
tNpcGossip[18198]["OptionFunc3"]="Easter2015_Eggs_ReceiveMaterials</N>18198"
tNpcGossip[18198]["OptionChkFunc3"] = function ()
	return  (not Easter2015_Eggs_Complete()) and Sys_ChkFullTime(tEaster2015_Eggs_Cont["ActivityTime"])
end

tNpcGossip[18198]["Option4"] = tEaster2015_Eggs_Text[18198]["Option4"]
tNpcGossip[18198]["OptionPoint4"] = "5-1"

tNpcGossip[18198]["Option5"] = tEaster2015_Eggs_Text[18198]["Option5"]
tNpcGossip[18198]["Option6"] = tEaster2015_Eggs_Text[18198]["Option6"]
tNpcGossip[18198]["Option7"] = tEaster2015_Eggs_Text[18198]["Option7"]
tNpcGossip[18198]["Option8"] = tEaster2015_Eggs_Text[18198]["Option8"]


--------------------------------------物品模块-------------------------------------------

--右键点击画笔对白
tItem[3005809] = tItem[3005809] or {}

tItem[3005809]["Text1-1"] = {111}
tItem[3005809]["Text111"] = tEaster2015_Eggs_ItemText[3005809]["Text111"]
tItem[3005809]["tOption1-1"] = {12,15,16,17}
tItem[3005809]["ChkFunc1-1"] = function()
	-- 判断时间
	if not Sys_ChkFullTime(tEaster2015_Eggs_Cont["ActivityTime"]) then
		local nNum = Get_CountItemType(3005809,0)
		Item_DelMulItem(3005809,3005809,nNum)
		User_TalkChannel2005(tEaster2015_Eggs_ItemText["TimeOut"])
		return
	end
	
	return Sys_ChkFullTime(tEaster2015_Eggs_Cont["ActivityTime"])
end

tItem[3005809]["Text2-1"] = {211}
tItem[3005809]["Text211"] = tEaster2015_Eggs_ItemText[3005809]["Text211"]
tItem[3005809]["tOptio2-1"] = {18,19}
tItem[3005809]["ChkFunc2-1"] = function()
	-- 判断时间
	if not Sys_ChkFullTime(tEaster2015_Eggs_Cont["ActivityTime"]) then
		local nNum = Get_CountItemType(3005809,0)
		Item_DelMulItem(3005809,3005809,nNum)
		User_TalkChannel2005(tEaster2015_Eggs_ItemText["TimeOut"])
		return
	end
	
	return Sys_ChkFullTime(tEaster2015_Eggs_Cont["ActivityTime"])
end

--选项

tItem[3005809]["Option12"] = tEaster2015_Eggs_ItemText[3005809]["Option12"]
tItem[3005809]["OptionFunc12"]="Easter2015_Eggs_ChosePaintingEggs</N>3005811"

tItem[3005809]["Option15"] = tEaster2015_Eggs_ItemText[3005809]["Option15"]
tItem[3005809]["OptionFunc15"]="Easter2015_Eggs_ChosePaintingEggs</N>3005814"

tItem[3005809]["Option16"] = tEaster2015_Eggs_ItemText[3005809]["Option16"]
tItem[3005809]["OptionFunc16"]="Easter2015_Eggs_ChosePaintingEggs</N>3005815"

tItem[3005809]["Option17"] = tEaster2015_Eggs_ItemText[3005809]["Option17"]
tItem[3005809]["OptionFunc17"]="Easter2015_Eggs_ChosePaintingEggs</N>3005816"

tItem[3005809]["Option18"] = tEaster2015_Eggs_ItemText[3005809]["Option18"]

tItem[3005809]["Option19"] = tEaster2015_Eggs_ItemText[3005809]["Option19"]

-- 右键点击彩蛋
tItem[3005808] = tItem[3005808] or {}
tItem[3005808]["Function"] = function(nItemId,sItemName)
	-- 判断时间
	if not Sys_ChkFullTime(tEaster2015_Eggs_Cont["ActivityTime"]) then
		local nNum = Get_CountItemType(nItemId,0)
		Item_DelMulItem(nItemId,nItemId,nNum)
		User_TalkChannel2005(tEaster2015_Eggs_ItemText["TimeOut"])
		return
	end
end