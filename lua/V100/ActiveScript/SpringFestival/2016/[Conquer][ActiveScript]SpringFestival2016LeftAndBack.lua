------------------------------------------------------------------------------------
--Name:			151015[简体征服][活动脚本]2016春节活动之送灶神/接灶神
--Purpose:		2016春节活动之喜气洋洋送灶神/兴高采烈接灶神
--Creator:		黄昕哲
--Created:		2015/10/16
------------------------------------------------------------------------------------
--[[
#复用自2016年春节活动
#活动时间：2016年2月3日-2016年2月22日
#		2月3号-2月7号是小年	喜气洋洋送灶神
#		2月8号-2月17号是大年	兴高采烈接灶神

命名前缀SpringFestival2016_LB_
命名前缀SpringFestival2016_Left_
命名前缀SpringFestival2016_Back_

掩码说明
1.送灶神掩码
stc(131,88)记录任务步骤
	= 0 ：未做过任务
	= 1 ：已领取空瓶道具，收集物品中
	= 2 ：已采集清水
	= 3：已上交道具并领取奖励

logid 12000221

任务物品掉落怪物
id = 3	罗罗鸟

2.接灶神掩码

stc(132,14)
	= 0 ：未做过任务
	= 1 ：已接受任务
	= 2 ：已领取笼头藏绘图,收集材料中
	= 3 ：已拜祭完神像
	= 4 ：已领取奖励

logid:12000247

]]--

-------------------------------数据存储表------------------------
local tSpringFestival2016_LB_Data = {}
	--活动时间：2016年2月3日-2016年2月22日
	--小年时间
	tSpringFestival2016_LB_Data["BeforeTime"] = "2016-01-01 00:00 2017-01-22 23:59"
	tSpringFestival2016_LB_Data["ActTime1"] = "2017-01-23 00:00 2017-01-27 23:59"
	--大年时间
	tSpringFestival2016_LB_Data["ActTime2"] = "2017-01-28 00:00 2017-02-06 23:59"
	--任务等级
	tSpringFestival2016_LB_Data["MinLev"] = 80
	tSpringFestival2016_LB_Data["MinMeto"] = 0
	--读条取水相关
	tSpringFestival2016_LB_Data["ExploreTime"] = 3
	tSpringFestival2016_LB_Data["ExploreAction"] = 220
	--祭拜奖励,5小时祝福,1小时经验/30修行值
	tSpringFestival2016_LB_Data["Bless"] = 5
	tSpringFestival2016_LB_Data["Exp"] = 60
	tSpringFestival2016_LB_Data["Cult"] = 30
	
local tSpringFestival2016_Left_Item = {}
	--料豆
	tSpringFestival2016_Left_Item["Bean"] = 712010
	tSpringFestival2016_Left_Item["BeanNum"] = 5
	--糖果
	tSpringFestival2016_Left_Item["Candy"] = 712011
	tSpringFestival2016_Left_Item["CandyNum"] = 5
	tSpringFestival2016_Left_Item["CandyPrice"] = 500
	--水瓶
	tSpringFestival2016_Left_Item["EmptyBottle"] = 3001070
	tSpringFestival2016_Left_Item["HalfBottle"] = 3001071
	tSpringFestival2016_Left_Item["FullBottle"] = 3001072
local tSpringFestival2016_Back_Item = {}
	--笼头藏绘图
	tSpringFestival2016_Back_Item["TreasureMap"] = 3005570
	--笼头
	tSpringFestival2016_Back_Item["Treasure"] = 712013
	tSpringFestival2016_Back_Item["TreasureNum"] = 3
	--纸马
	tSpringFestival2016_Back_Item["Horse"] = 712014
	--纸轿子
	tSpringFestival2016_Back_Item["Sedan"] = 712015
	--美酒
	tSpringFestival2016_Back_Item["Wine"] = 712016
	tSpringFestival2016_Back_Item["WineNum"] = 3
	tSpringFestival2016_Back_Item["WinePrice"] = 500

--npc位置相关
local tSpringFestival2016_LB_Pos = {}
	tSpringFestival2016_LB_Pos["MapId"] = 1002
	tSpringFestival2016_LB_Pos["TreasureMapId"] = 1000
	tSpringFestival2016_LB_Pos["Distance"] = 3
--灶王特使小仙
	tSpringFestival2016_LB_Pos["Envoy"] = {}
	tSpringFestival2016_LB_Pos["Envoy"]["Id"] = 17434
	tSpringFestival2016_LB_Pos["Envoy"]["CellX"] = 273
	tSpringFestival2016_LB_Pos["Envoy"]["CellY"] = 378
--小伙计
	tSpringFestival2016_LB_Pos["Guy"] = {}
	tSpringFestival2016_LB_Pos["Guy"]["Id"] = 17435
	tSpringFestival2016_LB_Pos["Guy"]["CellX"] = 252
	tSpringFestival2016_LB_Pos["Guy"]["CellY"] = 363
--取水处
	tSpringFestival2016_LB_Pos["WaterSource"] = {}
	tSpringFestival2016_LB_Pos["WaterSource"]["Id"] = 17437
	tSpringFestival2016_LB_Pos["WaterSource"]["CellX"] = 230
	tSpringFestival2016_LB_Pos["WaterSource"]["CellY"] = 376
--寻路到罗罗鸟
	tSpringFestival2016_LB_Pos["Bird"] = {}
	tSpringFestival2016_LB_Pos["Bird"]["CellX"] = 418
	tSpringFestival2016_LB_Pos["Bird"]["CellY"] = 590
-------------------------------
--接灶神的相关坐标
--灶王神像
	tSpringFestival2016_LB_Pos["Joss"] = {}
	tSpringFestival2016_LB_Pos["Joss"]["Id"] = 10765
	tSpringFestival2016_LB_Pos["Joss"]["CellX"] = 273
	tSpringFestival2016_LB_Pos["Joss"]["CellY"] = 384
--灶王小吏
	tSpringFestival2016_LB_Pos["Officer"] = {}
	tSpringFestival2016_LB_Pos["Officer"]["Id"] = 10766
	tSpringFestival2016_LB_Pos["Officer"]["CellX"] = 273
	tSpringFestival2016_LB_Pos["Officer"]["CellY"] = 379
	--灶王小吏传送点
	tSpringFestival2016_LB_Pos["OfficerTp"] = {}
	tSpringFestival2016_LB_Pos["OfficerTp"]["CellX"] = 277
	tSpringFestival2016_LB_Pos["OfficerTp"]["CellY"] = 379
--笼头藏匿点
	tSpringFestival2016_LB_Pos["HidingSpaceTeleport"] = {}
	tSpringFestival2016_LB_Pos["HidingSpaceTeleport"]["CellX"] = 542
	tSpringFestival2016_LB_Pos["HidingSpaceTeleport"]["CellY"] = 647
	tSpringFestival2016_LB_Pos["HidingSpaceTeleport"]["Round"] = 5
	tSpringFestival2016_LB_Pos["HidingSpace1"] = {}
	tSpringFestival2016_LB_Pos["HidingSpace1"]["Id"] = 17442
	tSpringFestival2016_LB_Pos["HidingSpace1"]["CellX"] = 521
	tSpringFestival2016_LB_Pos["HidingSpace1"]["CellY"] = 622
	tSpringFestival2016_LB_Pos["HidingSpace2"] = {}
	tSpringFestival2016_LB_Pos["HidingSpace2"]["Id"] = 17443
	tSpringFestival2016_LB_Pos["HidingSpace2"]["CellX"] = 471
	tSpringFestival2016_LB_Pos["HidingSpace2"]["CellY"] = 653
	tSpringFestival2016_LB_Pos["HidingSpace3"] = {}
	tSpringFestival2016_LB_Pos["HidingSpace3"]["Id"] = 17444
	tSpringFestival2016_LB_Pos["HidingSpace3"]["CellX"] = 504
	tSpringFestival2016_LB_Pos["HidingSpace3"]["CellY"] = 666


local tSpringFestival2016_LB_Effect = {}
tSpringFestival2016_LB_Effect["self"] = "self"
tSpringFestival2016_LB_Effect["Tribute"] = "angelwing"


local tSpringFestival2016_Left_Rate = {}
	tSpringFestival2016_Left_Rate["Total"] = 10000
	tSpringFestival2016_Left_Rate["GetBean"] = 4000

--送灶神掩码
local tSpringFestival2016_Left_Stc = {}
	tSpringFestival2016_Left_Stc["Event"] = 131
	tSpringFestival2016_Left_Stc["Type"] = 88
	--任务阶段
	tSpringFestival2016_Left_Stc["TaskBegin"] = 10
	tSpringFestival2016_Left_Stc["GetWater"] = 11
	tSpringFestival2016_Left_Stc["TaskFin"] = 12
--接灶神掩码
local tSpringFestival2016_Back_Stc = {}
	tSpringFestival2016_Back_Stc["Event"] = 132
	tSpringFestival2016_Back_Stc["Type"] = 14
	--任务总体的阶段
	tSpringFestival2016_Back_Stc["TaskBegin"] = 1
	tSpringFestival2016_Back_Stc["GetMap"] = 2
	tSpringFestival2016_Back_Stc["TaskFin"] = 3

local tSpringFestival2016_Left_Log = {}
	tSpringFestival2016_Left_Log["Id"] = 12000221
	tSpringFestival2016_Left_Log["FestivalId"] = 3364
	tSpringFestival2016_Left_Log["ShoppingLeft"] = "0,0,1,500,12000221,1,712016,3"
	tSpringFestival2016_Left_Log["ShoppingBack"] = "0,0,1,500,12000247,1,712011,5"
	tSpringFestival2016_Left_Log["Loot"] = "0,0,0,0,12000221,2,712010,1"
	tSpringFestival2016_Left_Log["TaskBegin"] = "0,0,0,0,12000221,1[1],3001070,1"
	tSpringFestival2016_Left_Log["TaskFin"] = "0,0,712010[712011][3001072],5[3][1],12000221,1[2],3004678,1"
	tSpringFestival2016_Left_Log["Expire"] = "0,0,%s,1,12000221,2,0,0"
	tSpringFestival2016_Left_Log["GetWater"] = "0,0,%d,1,12000221,1,%d,1"
	tSpringFestival2016_Left_Log["ItemDel"] = "0,0,%s,%s,12000221,2,0,0"
	
local tSpringFestival2016_Back_Log = {}
	tSpringFestival2016_Back_Log["Id"] = 12000247
	tSpringFestival2016_Back_Log["FestivalId"] = 3359
	tSpringFestival2016_Back_Log["Shopping"] = "0,0,1,500,12000247,1,712011,5"
	tSpringFestival2016_Back_Log["GetMap"] = "0,0,0,0,12000247,1[1],3005570,1"
	tSpringFestival2016_Back_Log["GetTreasure"] = "0,0,0,0,12000247,1,712013,1"
	tSpringFestival2016_Back_Log["GetTribute"] = "0,0,712013[3005570],3[1],12000247,1,712014[712015],1[1]"
	tSpringFestival2016_Back_Log["TaskFin"] = "0,0,712014[712015][712016],1[1][3],12000247,1[2],4[5][3004678],60[5][1]"
	tSpringFestival2016_Back_Log["TaskFinMaxLev"] = "0,0,712014[712015][712016],1[1][3],12000247,1[2],6[5][3004678],30[5][1]"
	tSpringFestival2016_Back_Log["ItemDel"] = "0,0,%s,%s,12000247,2,0,0"
	tSpringFestival2016_Back_Log["Expire"] = "0,0,3005570,1,12000221,2,0,0"
------------------------------公用逻辑部分------------------------
--检查掩码,nMethod =nil 返回当前任务阶段,nMethod>=0时,设置任务阶段
function SpringFestival2016_Left_Phase(nMethod,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nEvent = tSpringFestival2016_Left_Stc["Event"]
	local nData = tSpringFestival2016_Left_Stc["Type"]
	local nPhase = 0
	if nMethod == nil then
		nPhase = Get_UserStatisticValue(nEvent,nData,nUserId)
		return nPhase
	end
	--nMethod>=0时,设置任务阶段
	Task_SetStatistic(nEvent,nData,nMethod,1,nUserId)
end
function SpringFestival2016_Back_Phase(nMethod,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nEvent = tSpringFestival2016_Back_Stc["Event"]
	local nData = tSpringFestival2016_Back_Stc["Type"]
	local nPhase = 0
	if nMethod == nil then
		nPhase = Get_UserStatisticValue(nEvent,nData,nUserId)
		return nPhase
	end
	--nMethod>=0时,设置任务阶段
	Task_SetStatistic(nEvent,nData,nMethod,1,nUserId)
end

--掩码时间戳设置,nMethod= 0重置任务时间戳,nMethod>=1时,检测时间戳是否间隔nMethod天以上
function SpringFestival2016_Left_TimeStamp(nMethod,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nEvent = tSpringFestival2016_Left_Stc["Event"]
	local nData = tSpringFestival2016_Left_Stc["Type"]
	local nPhase = 0
	if nMethod == 0 then
		Task_SetStcTimestamp(nEvent,nData,0,nUserId)
	else
		return Task_StcInterval(nEvent,nData,nMethod,4,nUserId)
	end
end
function SpringFestival2016_Back_TimeStamp(nMethod)
	local nEvent = tSpringFestival2016_Back_Stc["Event"]
	local nData = tSpringFestival2016_Back_Stc["Type"]
	local nPhase = 0
	if nMethod == 0 then
		Task_SetStcTimestamp(nEvent,nData,0)
	else
		return Task_StcInterval(nEvent,nData,nMethod,4)
	end
end

--时间判断,返回数字0,1,2,3分别表示活动前,小年,大年,活动后4个时段
function SpringFestival2016_LB_TimeJudge()
	if Sys_ChkFullTime(tSpringFestival2016_LB_Data["BeforeTime"]) then
		return 0
	elseif Sys_ChkFullTime(tSpringFestival2016_LB_Data["ActTime1"]) then
		return 1
	elseif Sys_ChkFullTime(tSpringFestival2016_LB_Data["ActTime2"]) then
		return 2
	end
	--活动后
	return 3
end

--自动寻路
function SpringFestival2016_LB_AutoFindWay(sMethod)
	local nMapId = tSpringFestival2016_LB_Pos["MapId"]
	local nCellX = tSpringFestival2016_LB_Pos[sMethod]["CellX"]
	local nCellY = tSpringFestival2016_LB_Pos[sMethod]["CellY"]
	local nNpcId = tSpringFestival2016_LB_Pos[sMethod]["Id"]
	if nCellX == nil then
		return
	end
	Sys_GotoSomeWhere(nCellX,nCellY,nMapId,nNpcId)
end

--送灶神任务物品检测,检测是否有各种任务物品
function SpringFestival2016_Left_ItemChk()
	local nBeanId = tSpringFestival2016_Left_Item["Bean"]
	local nBeanNum = tSpringFestival2016_Left_Item["BeanNum"]
	local nCandyId = tSpringFestival2016_Left_Item["Candy"]
	local nCandyNum = tSpringFestival2016_Left_Item["CandyNum"]
	local nBottleId = tSpringFestival2016_Left_Item["FullBottle"]
	--没有料豆的情况
	if not Item_ChkMulItem(nBeanId,nBeanId,nBeanNum) then
		return false
	end
	--没有糖果的情况
	if not Item_ChkMulItem(nCandyId,nCandyId,nCandyNum) then
		return false
	end
	--没有装满的水瓶的情况
	if not Item_ChkItem(nBottleId) then
		return false
	end
	--物品都齐的情况
	return true
end
--送灶神任务删除各种任务物品
function SpringFestival2016_Left_ItemDel()
	local tItemId = {}
	local tItemChkId = {}
	table.insert(tItemChkId,tSpringFestival2016_Left_Item["Bean"])
	table.insert(tItemChkId,tSpringFestival2016_Left_Item["Candy"])
	table.insert(tItemChkId,tSpringFestival2016_Left_Item["EmptyBottle"])
	table.insert(tItemChkId,tSpringFestival2016_Left_Item["HalfBottle"])
	table.insert(tItemChkId,tSpringFestival2016_Left_Item["FullBottle"])
	for _,n in pairs(tItemChkId) do
		if Item_ChkItem(n) then
			Item_DelAllItemByType(n)
			table.insert(tItemId,n)
		end
	end
	--被删除的物品计入log
	local sItemIdArray = ""
	local sItemNumArray = ""
	for _,v in pairs(tItemId) do
		if sItemIdArray == "" then
			sItemIdArray = sItemIdArray .. v
			sItemNumArray = sItemNumArray .. 1
		else
			sItemIdArray = sItemIdArray .. "[" .. v .. "]"
			sItemNumArray = sItemNumArray .. "[" .. 1 .. "]"
		end
	end
	local sLog = string.format(tSpringFestival2016_Left_Log["ItemDel"],sItemIdArray,sItemNumArray)
	Sys_SaveActionFestivalLog(sLog)
end


--返回背包内笼头数量
function SpringFestival2016_Back_CountTreasure(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nTreasureId = tSpringFestival2016_Back_Item["Treasure"]
	if not Item_ChkItem(nTreasureId,1,0,nUserId) then
		return 0
	elseif Item_ChkMulItem(nTreasureId,nTreasureId,3,1,0,nUserId) then
		return 3
	elseif Item_ChkMulItem(nTreasureId,nTreasureId,2,1,0,nUserId) then
		return 2
	elseif Item_ChkMulItem(nTreasureId,nTreasureId,1,1,0,nUserId) then
		return 1
	end
end
--接灶神任务,删除所有任务物品
function SpringFestival2016_Back_ItemDel()
	--被删除的任务物品
	local tItemId = {}
	--检测全任务物品
	local tItemChkId = {}
	table.insert(tItemChkId,tSpringFestival2016_Back_Item["TreasureMap"])
	table.insert(tItemChkId,tSpringFestival2016_Back_Item["Treasure"])
	table.insert(tItemChkId,tSpringFestival2016_Back_Item["Horse"])
	table.insert(tItemChkId,tSpringFestival2016_Back_Item["Sedan"])
	table.insert(tItemChkId,tSpringFestival2016_Back_Item["Wine"])
	for _,n in pairs(tItemChkId) do
		if Item_ChkItem(n) then
			Item_DelAllItemByType(n)
			table.insert(tItemId,n)
		end
	end
	--被删除的物品计入log
	local sItemIdArray = ""
	local sItemNumArray = ""
	for _,v in pairs(tItemId) do
		if sItemIdArray == "" then
			sItemIdArray = sItemIdArray .. v
			sItemNumArray = sItemNumArray .. 1
		else
			sItemIdArray = sItemIdArray .. "[" .. v .. "]"
			sItemNumArray = sItemNumArray .. "[" .. 1 .. "]"
		end
	end
	local sLog = string.format(tSpringFestival2016_Back_Log["ItemDel"],sItemIdArray,sItemNumArray)
	Sys_SaveActionFestivalLog(sLog)
end


------------------------------npc逻辑部分------------------------
-------------------小仙--------------
--开始任务
function SpringFestival2016_Left_ApplyTask(nNpcId)
	--活动时间外
	if SpringFestival2016_LB_TimeJudge() >= 2 then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	--等级不足
	if not User_JudgeLevelAndMetempsychosis(tSpringFestival2016_LB_Data["MinLev"],tSpringFestival2016_LB_Data["MinMeto"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	--已完成过
	if SpringFestival2016_Left_Phase() >= tSpringFestival2016_Left_Stc["TaskFin"] then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	--已完成未领取奖励
	if SpringFestival2016_Left_ItemChk() then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
	--背包满
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"2-6")
		return
	end
	--都正确,可以接受任务
	SpringFestival2016_Left_Phase(tSpringFestival2016_Left_Stc["TaskBegin"])
	SpringFestival2016_Left_TimeStamp(0)
	SpringFestival2016_Left_ItemDel()
	Item_AddItem(tSpringFestival2016_Left_Item["EmptyBottle"])
	User_TalkChannel2005(tSpringFestival2016_LB_Text["Bottle"]["Get"])
	LinkNpcGossipFunc_New(nNpcId,"2-1")
	Sys_SaveActionFestivalLog(tSpringFestival2016_Left_Log["TaskBegin"])
end
--领取奖励
function SpringFestival2016_Left_ApplyAward(nNpcId)
	--活动时间外
	if SpringFestival2016_LB_TimeJudge() >= 2 then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	--已完成过
	if SpringFestival2016_Left_Phase() >= tSpringFestival2016_Left_Stc["TaskFin"] then
		LinkNpcGossipFunc_New(nNpcId,"3-3")
		return
	end
	--还未完成
	if not SpringFestival2016_Left_ItemChk() then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
---------------------------------------- 建议修改
	--背包满
	--if not User_CheckLeftSpace(1) then
	--	LinkNpcGossipFunc_New(nNpcId,"3-4")
	--	return
	--end
	--条件均满足,领取奖励
	SpringFestival2016_Left_ItemDel()
	SpringFestival2016_Left_Phase(tSpringFestival2016_Left_Stc["TaskFin"])
	SpringFestival2016_Left_TimeStamp(0)
	FestivalGeneralPackage_GetGift(tSpringFestival2016_Left_Log["FestivalId"],tSpringFestival2016_Left_Log["Id"])
	LinkNpcGossipFunc_New(nNpcId,"3-1")
	Sys_SaveActionFestivalLog(tSpringFestival2016_Left_Log["TaskFin"])
end
--补领净水空瓶
function SpringFestival2016_Left_ApplyItem(nNpcId)
	--活动时间外
	if SpringFestival2016_LB_TimeJudge() >= 2 then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	--无任务
	if SpringFestival2016_Left_Phase() <= 0 then
		LinkNpcGossipFunc_New(nNpcId,"4-2")
		return
	end
	--已有瓶子
	if Item_ChkItem(tSpringFestival2016_Left_Item["EmptyBottle"]) then
		LinkNpcGossipFunc_New(nNpcId,"4-3")
		return
	elseif Item_ChkItem(tSpringFestival2016_Left_Item["HalfBottle"]) then
		LinkNpcGossipFunc_New(nNpcId,"4-3")
		return
	elseif Item_ChkItem(tSpringFestival2016_Left_Item["FullBottle"]) then
		LinkNpcGossipFunc_New(nNpcId,"4-3")
		return
	end
		--已完成过
	if SpringFestival2016_Left_Phase() >= tSpringFestival2016_Left_Stc["TaskFin"] then
		LinkNpcGossipFunc_New(nNpcId,"4-4")
		return
	end
	--背包满
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"4-5")
		return
	end
	--条件满足,补领道具
	Item_AddItem(tSpringFestival2016_Left_Item["EmptyBottle"])
	SpringFestival2016_Left_Phase(tSpringFestival2016_Left_Stc["TaskBegin"])
	SpringFestival2016_Left_TimeStamp(0)
	User_TalkChannel2005(tSpringFestival2016_LB_Text["Bottle"]["Get"])
	LinkNpcGossipFunc_New(nNpcId,"4-1")
	Sys_SaveActionFestivalLog(tSpringFestival2016_Left_Log["TaskBegin"])
end

-------------------小伙计--------------
function SpringFestival2016_Left_Shopping(nNpcId,nItemId)
	if SpringFestival2016_LB_TimeJudge() > 2 then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
	end
	local nItemNum = 0
	local nPrice = 0
	local sLog = ""
	local sMsg = ""
	local fChkFunction = nil
	if nItemId == tSpringFestival2016_Left_Item["Candy"] then
		nItemNum = tSpringFestival2016_Left_Item["CandyNum"]
		nPrice = tSpringFestival2016_Left_Item["CandyPrice"]
		sLog = tSpringFestival2016_Left_Log["ShoppingLeft"]
	elseif nItemId == tSpringFestival2016_Back_Item["Wine"] then
		nItemNum = tSpringFestival2016_Back_Item["WineNum"]
		nPrice = tSpringFestival2016_Back_Item["WinePrice"]
		sLog = tSpringFestival2016_Left_Log["ShoppingBack"]
	end
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	if not User_CanPutMoney2Bag(-nPrice) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	--背包有空间,也有钱,扣钱给道具,log
	User_AddMoney(-nPrice)
	Item_AddItem(nItemId,0,nItemNum)
--买完对白+检测,自动寻路到下一阶段处继续任务
	if nItemId == tSpringFestival2016_Left_Item["Candy"] then
		sMsg = tSpringFestival2016_LB_Text["Left"]["BuyCandy"]
		SpringFestival2016_Left_AfterChk()
	elseif nItemId == tSpringFestival2016_Back_Item["Wine"] then
		sMsg = tSpringFestival2016_LB_Text["Back"]["BuyWine"]
		SpringFestival2016_Back_AfterChk()
	end
	User_TalkChannel2005(sMsg)
	Sys_SaveActionFestivalLog(sLog)
end
--事后检测
function SpringFestival2016_Left_AfterChk()
	--寻路前提示,和寻路函数
	local sMsg = ""
	local sFunc = ""
	--需要检测的物品id和数量
	local nBeanId = tSpringFestival2016_Left_Item["Bean"]
	local nBeanNum = tSpringFestival2016_Left_Item["BeanNum"]
	local nCandyId = tSpringFestival2016_Left_Item["Candy"]
	local nCandyNum = tSpringFestival2016_Left_Item["CandyNum"]
	local nBottleId1 = tSpringFestival2016_Left_Item["EmptyBottle"]
	local nBottleId2 = tSpringFestival2016_Left_Item["FullBottle"]
	--没有料豆,需要去打怪
	if not Item_ChkMulItem(nBeanId,nBeanId,nBeanNum) then
		sMsg = tSpringFestival2016_LB_Text["Bottle"]["NeedBean"]
		sFunc = "</F>SpringFestival2016_LB_AutoFindWay</S>Bird"
	--没有糖果,需要购买
	elseif not Item_ChkMulItem(nCandyId,nCandyId,nCandyNum) then
		sMsg = tSpringFestival2016_LB_Text["Bottle"]["NeedCandy"]
		sFunc = "</F>SpringFestival2016_LB_AutoFindWay</S>Guy"
	--收集清水完成(掩码正确,有瓶子)
	elseif (SpringFestival2016_Left_Phase() >= tSpringFestival2016_Left_Stc["GetWater"]) and Item_ChkItem(nBottleId2) then
		sMsg = tSpringFestival2016_LB_Text["Left"]["Collected"]
		sFunc = "</F>SpringFestival2016_LB_AutoFindWay</S>Envoy"
	--收集清水未完成,有瓶子
	elseif Item_ChkItem(nBottleId1) then
		local tSourceInfo = tSpringFestival2016_LB_Pos["WaterSource"]
		local nCellX = tSourceInfo["CellX"]
		local nCellY = tSourceInfo["CellY"]
		local nSourceId = tSourceInfo["Id"]
		local nMapId = tSpringFestival2016_LB_Pos["MapId"]
		sMsg = string.format(tSpringFestival2016_LB_Text["Bottle"]["Next"],nCellX,nCellY)
		sFunc = string.format("</F>Sys_GotoSomeWhere</N>%d</N>%d</N>%d",nCellX,nCellY,nMapId)
		--收集未完成,没有瓶子
	else
		sMsg = tSpringFestival2016_LB_Text["Bottle"]["LackBottle"]
		sFunc = "</F>SpringFestival2016_LB_AutoFindWay</S>Envoy"
	end
	Sys_MsgBox(sMsg,sFunc)
end
function SpringFestival2016_Back_AfterChk(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	--寻路前提示,和寻路函数
	local sMsg = ""
	local sFunc = ""
	--检测所需的id和数量
	local nTreasureMapId = tSpringFestival2016_Back_Item["TreasureMap"]
	local nTreasureId = tSpringFestival2016_Back_Item["Treasure"]
	local nTreasureNum = tSpringFestival2016_Back_Item["TreasureNum"]
	local nHorse = tSpringFestival2016_Back_Item["Horse"]
	local nSedan = tSpringFestival2016_Back_Item["Sedan"]
	local nWine = tSpringFestival2016_Back_Item["Wine"]
	local nWineNum = tSpringFestival2016_Back_Item["WineNum"]

	--已有马和轿子
	if Item_ChkItem(nHorse,1,0,nUserId) and Item_ChkItem(nSedan,1,0,nUserId) then
		sMsg = tSpringFestival2016_LB_Text["Back"]["Collected"]
		sFunc = "</F>SpringFestival2016_LB_AutoFindWay</S>Joss"
	--没有马和轿子,检测是否有三个笼头,有则传送回小吏处
	elseif Item_ChkMulItem(nTreasureId,nTreasureId,nTreasureNum,1,0,nUserId) then
		sFunc = "</F>User_UserRandBoundTrans</N>%d</N>%d</N>%d</N>%d</N>%d</N>0</N>0"
		local nMapId = tSpringFestival2016_LB_Pos["MapId"]
		local nCellX = tSpringFestival2016_LB_Pos["OfficerTp"]["CellX"]
		local nCellY = tSpringFestival2016_LB_Pos["OfficerTp"]["CellY"]
		local nRound = tSpringFestival2016_LB_Pos["HidingSpaceTeleport"]["Round"]
		sFunc = string.format(sFunc,nMapId,nCellX,nCellY,nRound,nRound)
		sMsg = tSpringFestival2016_LB_Text["Map"]["TelPort"]
	--检测美酒
	elseif not Item_ChkMulItem(nWine,nWine,nWineNum,1,0,nUserId) then
		sMsg = tSpringFestival2016_LB_Text["Back"]["NeedWine"]
		sFunc = "</F>SpringFestival2016_LB_AutoFindWay</S>Guy"
	--没有三个笼头,检测地图,根据笼头数目取坐标和对白
	elseif Item_ChkItem(nTreasureMapId,1,0,nUserId) then
		local nCount = SpringFestival2016_Back_CountTreasure(nUserId) + 1
		local nCellX = tSpringFestival2016_LB_Pos["HidingSpace" .. nCount]["CellX"]
		local nCellY = tSpringFestival2016_LB_Pos["HidingSpace" .. nCount]["CellY"]
		local nMapId = tSpringFestival2016_LB_Pos["TreasureMapId"]
		local nNpcId = tSpringFestival2016_LB_Pos["HidingSpace" .. nCount]["Id"]
		sMsg = string.format(tSpringFestival2016_LB_Text["Map"]["Pos"],nCellX,nCellY)
		sFunc = string.format("</F>Sys_GotoSomeWhere</N>%d</N>%d</N>%d</N>%d",nCellX,nCellY,nMapId,nNpcId)
	else
		--没有笼头,无地图
		sMsg = tSpringFestival2016_LB_Text["Back"]["NeedItem"]
		sFunc = "</F>SpringFestival2016_LB_AutoFindWay</S>Officer"
	end
	Sys_MsgBox(sMsg,sFunc)
end

-------------------取水处,无对白,接到此函数--------------
function SpringFestival2016_LB_TalkToWaterSource()
	--活动时间外
	if SpringFestival2016_LB_TimeJudge() >= 2 then
		return
	end
	local nNpcId = Get_NpcId()
	local nPhase = SpringFestival2016_Left_Phase()
	--不在取水阶段,无反应
	if nPhase ~= tSpringFestival2016_Left_Stc["TaskBegin"] then
		return
	end
	--距离判断,需要小于3格
	if not SpringFestival2016_LB_DistanceChk(nNpcId) then
		Sys_MsgBox(tSpringFestival2016_LB_Text["Bottle"]["Far"])
		return
	end
	--检测水瓶存在
	if not SpringFestival2016_Left_BottleChk() then
		Sys_MsgBox(tSpringFestival2016_LB_Text["Bottle"]["LackBottle"])
		SpringFestival2016_LB_AutoFindWay("Envoy")
		return
	end
	--读条取水
	local nSecs = tSpringFestival2016_LB_Data["ExploreTime"]
	local sContent = tSpringFestival2016_LB_Text["Bottle"]["Explore"]
	local nActionId = tSpringFestival2016_LB_Data["ExploreAction"]
	local sFunc = string.format("</F>SpringFestival2016_Left_Explore</N>%d",nNpcId)
	User_SetExplore(nSecs,sContent,nActionId,sFunc)
end
--距离判断
function SpringFestival2016_LB_DistanceChk(nNpcId,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
--玩家位置
	local nUserX = Get_UserPositionX(nUserId)
	local nUserY = Get_UserPositionY(nUserId)
--npc位置
	local nNpcX = Get_NpcPositionX(nNpcId)
	local nNpcY = Get_NpcPositionY(nNpcId)
--最大距离
	local nDis = tSpringFestival2016_LB_Pos["Distance"]
	if math.abs(nUserX - nNpcX) > nDis then
		return false
	elseif math.abs(nUserY - nNpcY) > nDis then
		return false
	end
	return true
end
--水瓶检测,不存在的情况下返回false,存在返回水瓶id
function SpringFestival2016_Left_BottleChk(nNpcId,nUserId)
	local nPhase = SpringFestival2016_Left_Phase(nil,nUserId)
	local nItemId = 0
	if nPhase == tSpringFestival2016_Left_Stc["TaskBegin"] then
		nItemId = tSpringFestival2016_Left_Item["EmptyBottle"]
	else
		nItemId = tSpringFestival2016_Left_Item["FullBottle"]
	end
	if not Item_ChkItem(nItemId,1,0,nUserId) then
		return false
	end
	return nItemId
end
--取水读条执行函数
function SpringFestival2016_Left_Explore(nNpcId,nUserId)
	--不在取水阶段直接跳出无反应
	local nPhase = SpringFestival2016_Left_Phase(nil,nUserId)
	if nPhase~= tSpringFestival2016_Left_Stc["TaskBegin"] then
		return
	end
	local sCollectMsg = ""
	local sFunc = ""
	local sLog = tSpringFestival2016_Left_Log["GetWater"]
	--不存在水瓶的情况下,提示跳出
	local nItemId = SpringFestival2016_Left_BottleChk(nNpcId,nUserId)
	if not nItemId then
		Sys_MsgBox(tSpringFestival2016_LB_Text["Bottle"]["LackBottle"])
		SpringFestival2016_LB_AutoFindWay("Envoy")
		return
	end
	--存在的情况,掩码增加,删除旧物品,给与新物品
	SpringFestival2016_Left_Phase(tSpringFestival2016_Left_Stc["GetWater"],nUserId)
	SpringFestival2016_Left_TimeStamp(0,nUserId)
	Item_DelItem(nItemId,1,0,nUserId)
	-- Item_AddItem(tSpringFestival2016_Left_Item["FullBottle"])
	Item_AddNewItem(tSpringFestival2016_Left_Item["FullBottle"],"0 1",nUserId)
	sCollectMsg= tSpringFestival2016_LB_Text["Bottle"]["Fin"]
	sFunc = "</F>SpringFestival2016_Left_AfterChk"
	sLog = string.format(sLog,nItemId,tSpringFestival2016_Left_Item["FullBottle"])
	--确定后检测其他任务道具
	Sys_MsgBox(sCollectMsg,sFunc)
	Sys_SaveActionFestivalLog(sLog,nUserId)
end


-------------------神像--------------
--放心交给我吧
function SpringFestival2016_Back_ApplyTask(nNpcId)
	--活动后
	if SpringFestival2016_LB_TimeJudge() >= 3 then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	--等级不足
	if not User_JudgeLevelAndMetempsychosis(tSpringFestival2016_LB_Data["MinLev"],tSpringFestival2016_LB_Data["MinMeto"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	--已完成过
	if SpringFestival2016_Back_Phase() > tSpringFestival2016_Back_Stc["TaskFin"] then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	--已有任务物品,尚未领取奖励
	if SpringFestival2016_Back_ItemChk() then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	--条件都满足,成功
	--当天第一次开始任务时,重置掩码,删除道具
	if SpringFestival2016_Back_Phase() < tSpringFestival2016_Back_Stc["TaskBegin"] then
		SpringFestival2016_Back_ItemDel()
		SpringFestival2016_Back_Phase(tSpringFestival2016_Back_Stc["TaskBegin"])
		SpringFestival2016_Back_TimeStamp(0)
	end
	LinkNpcGossipFunc_New(nNpcId,"2-2")
end
--祭拜灶王神像
function SpringFestival2016_Back_ApplyAward(nNpcId)
	--活动后
	if SpringFestival2016_LB_TimeJudge() >= 3 then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	--已祭拜过灶王神像
	if SpringFestival2016_Back_Phase() >= tSpringFestival2016_Back_Stc["TaskFin"] then
		LinkNpcGossipFunc_New(nNpcId,"3-3")
		return
	end
		--未祭拜过,但是材料不足
	if not SpringFestival2016_Back_ItemChk(nNpcId) then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	--条件都满足,删除任务物品,掩码,log,奖励(祝福5h,angelwing,60分钟经验/30修行值),礼包
	SpringFestival2016_Back_ItemDel()
	SpringFestival2016_Back_Phase(tSpringFestival2016_Back_Stc["TaskFin"])
	SpringFestival2016_Back_TimeStamp(0)
	FestivalGeneralPackage_GetGift(tSpringFestival2016_Back_Log["FestivalId"],tSpringFestival2016_Back_Log["Id"])
	User_AddBless(tSpringFestival2016_LB_Data["Bless"])
	User_EffectAdd(tSpringFestival2016_LB_Effect["self"],tSpringFestival2016_LB_Effect["Tribute"])
	--满级和未满级的情况不同奖励
	local sLog = ""
	local sMsg = ""
	if Get_UserLevel() >= G_User_MaxLev then
		User_AddCultivation(tSpringFestival2016_LB_Data["Cult"])
		sLog = tSpringFestival2016_Back_Log["TaskFinMaxLev"]
		sMsg = tSpringFestival2016_LB_Text[10765]["Msg2"]
	else
		User_AddExpTime(tSpringFestival2016_LB_Data["Exp"])
		sLog = tSpringFestival2016_Back_Log["TaskFin"]
		sMsg = tSpringFestival2016_LB_Text[10765]["Msg1"]
	end
	Sys_MsgBox(sMsg)
	LinkNpcGossipFunc_New(nNpcId,"3-1")
	Sys_SaveActionFestivalLog(sLog)
end

--检查贡品,有缺失返回false,否则返回true
function SpringFestival2016_Back_ItemChk(nNpcId)
	local nHorseId = tSpringFestival2016_Back_Item["Horse"]
	local nSedanId = tSpringFestival2016_Back_Item["Sedan"]
	local nWineId = tSpringFestival2016_Back_Item["Wine"]
	local nWineNum = tSpringFestival2016_Back_Item["WineNum"]
	--马
	if not Item_ChkItem(nHorseId) then
		return false
	end
	--纸轿子
	if not Item_ChkItem(nSedanId) then
		return false
	end
	--美酒
	if not Item_ChkMulItem(nWineId,nWineId,nWineNum) then
		return false
	end
	return true
end

-------------------小吏--------------
--我这就去找(领取地图)
function SpringFestival2016_Back_ApplyMap(nNpcId)
	local nTreasureId = tSpringFestival2016_Back_Item["Treasure"]
	local nTreasureNum = tSpringFestival2016_Back_Item["TreasureNum"]
	--活动后
	if SpringFestival2016_LB_TimeJudge() >= 3 then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	local nPhase = SpringFestival2016_Back_Phase()
	--已接受过任务
	if (nPhase == tSpringFestival2016_Back_Stc["GetMap"]) then
		if Item_ChkMulItem(nTreasureId,nTreasureId,nTreasureNum) then
			LinkNpcGossipFunc_New(nNpcId,"2-4")
			return
		end
		if Item_ChkItem(tSpringFestival2016_Back_Item["TreasureMap"]) then
			LinkNpcGossipFunc_New(nNpcId,"2-2")
			return
		else
			SpringFestival2016_Back_ApplyMap2(nNpcId)
			return
		end
	end
	--未接受任务的情况
	--检测背包
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	--条件都满足,给地图,置掩码,log,对白
	SpringFestival2016_Back_Phase(tSpringFestival2016_Back_Stc["GetMap"])
	SpringFestival2016_Back_TimeStamp(0)
	if Item_ChkItem(tSpringFestival2016_Back_Item["TreasureMap"]) then
		Item_DelAllItemByType(tSpringFestival2016_Back_Item["TreasureMap"])
	end
	Item_AddItem(tSpringFestival2016_Back_Item["TreasureMap"])
	LinkNpcGossipFunc_New(nNpcId,"2-1")
	Sys_SaveActionFestivalLog(tSpringFestival2016_Back_Log["GetMap"])
end
--传送到云门关
function SpringFestival2016_Back_Teleport(nNpcId)
	--活动后
	if SpringFestival2016_LB_TimeJudge() >= 3 then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	--没有地图的情况,接到补领地图
	if not Item_ChkItem(tSpringFestival2016_Back_Item["TreasureMap"]) then
		User_TalkChannel2005(tSpringFestival2016_LB_Text["Map"]["NoItem"])
		return
	end
	--有地图,传送到云门关
	local nMapId = tSpringFestival2016_LB_Pos["TreasureMapId"]
	local nCellX = tSpringFestival2016_LB_Pos["HidingSpaceTeleport"]["CellX"]
	local nCellY = tSpringFestival2016_LB_Pos["HidingSpaceTeleport"]["CellY"]
	local nRound = tSpringFestival2016_LB_Pos["HidingSpaceTeleport"]["Round"]
	if User_UserRandBoundTrans(nMapId,nCellX,nCellY,nRound,nRound,1,0) then
		local sFunc = "</F>SpringFestival2016_Back_FindNextPoint"
		Sys_MsgBox(tSpringFestival2016_LB_Text[10766]["TeleportMsg"],sFunc)
	end
end

--补领地图
function SpringFestival2016_Back_ApplyMap2(nNpcId)
	--活动后
	if SpringFestival2016_LB_TimeJudge() >= 3 then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	if Item_ChkItem(tSpringFestival2016_Back_Item["TreasureMap"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
		--检测任务道具
	local nTreasureId = tSpringFestival2016_Back_Item["Treasure"]
	local nTreasureNum = tSpringFestival2016_Back_Item["TreasureNum"]
	if Item_ChkMulItem(nTreasureId,nTreasureId,nTreasureNum) then
		LinkNpcGossipFunc_New(nNpcId,"3-4")
		return
	end
	--检测背包
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"3-3")
		return
	end
	--条件都满足,给地图,置掩码,log,对白
	SpringFestival2016_Back_Phase(tSpringFestival2016_Back_Stc["GetMap"])
	SpringFestival2016_Back_TimeStamp(0)
	if Item_ChkItem(tSpringFestival2016_Back_Item["TreasureMap"]) then
		Item_DelItem(tSpringFestival2016_Back_Item["TreasureMap"])
	end
	Item_AddItem(tSpringFestival2016_Back_Item["TreasureMap"])
	LinkNpcGossipFunc_New(nNpcId,"3-1")
	Sys_SaveActionFestivalLog(tSpringFestival2016_Back_Log["GetMap"])
end
--小吏选项检查函数
function SpringFestival2016_Back_OptionChk()
	local nTreasureId = tSpringFestival2016_Back_Item["Treasure"]
	local nTreasureNum = tSpringFestival2016_Back_Item["TreasureNum"]
	local nHorseId = tSpringFestival2016_Back_Item["Horse"]
	local nSedanId = tSpringFestival2016_Back_Item["Sedan"]
	if Item_ChkMulItem(nTreasureId,nTreasureId,nTreasureNum) then
		return false
	elseif Item_ChkItem(nHorseId) then
		return false
	elseif Item_ChkItem(nSedanId) then
		return false
	end
	return SpringFestival2016_Back_Phase() == tSpringFestival2016_Back_Stc["GetMap"]
end

--这是你要的东西(上交笼头和地图,换取任务道具)
function SpringFestival2016_Back_ApplyItem(nNpcId)
	--活动后
	if SpringFestival2016_LB_TimeJudge() >= 3 then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	--检查任务物品
	if Item_ChkItem(tSpringFestival2016_Back_Item["Horse"]) and Item_ChkItem(tSpringFestival2016_Back_Item["Sedan"]) then
		--已换过道具
		LinkNpcGossipFunc_New(nNpcId,"4-3")
		return
	end
	--检查笼头
	local nTreasureId = tSpringFestival2016_Back_Item["Treasure"]
	local nTreasureNum = tSpringFestival2016_Back_Item["TreasureNum"]
	if not Item_ChkMulItem(nTreasureId,nTreasureId,nTreasureNum) then
		LinkNpcGossipFunc_New(nNpcId,"4-2")
		return
	end
	--检测背包
	if not User_CheckLeftSpace(1) then
		Sys_MsgBox(tSpringFestival2016_LB_Text["Map"]["FullBag"])
		return
	end
	--条件都满足,删除道具,给物品,重置时间戳,log,对白
	SpringFestival2016_Back_TimeStamp(0)
	if Item_ChkItem(tSpringFestival2016_Back_Item["Treasure"]) then
		Item_DelAllItemByType(tSpringFestival2016_Back_Item["Treasure"])
	end
	if Item_ChkItem(tSpringFestival2016_Back_Item["TreasureMap"]) then
		Item_DelAllItemByType(tSpringFestival2016_Back_Item["TreasureMap"])
	end
	Item_AddItem(tSpringFestival2016_Back_Item["Horse"])
	Item_AddItem(tSpringFestival2016_Back_Item["Sedan"])
	Sys_SaveActionFestivalLog(tSpringFestival2016_Back_Log["GetTribute"])
	LinkNpcGossipFunc_New(nNpcId,"4-1")
end

----------------采集npc无对白,直接接到此函数上----------------
function SpringFestival2016_LB_TalkToHidingPlace()
	local nNpcId = Get_NpcId()
	local nTreasureId = tSpringFestival2016_Back_Item["Treasure"]
	--活动时间后/无任务的情况,点击无反应
	if SpringFestival2016_LB_TimeJudge() >= 3 then
		return
	end
	if SpringFestival2016_Back_Phase() ~= tSpringFestival2016_Back_Stc["GetMap"] then
		return
	end
	--距离太远
	if not SpringFestival2016_LB_DistanceChk(nNpcId) then
		Sys_MsgBox(tSpringFestival2016_LB_Text["Bottle"]["Far"])
		return
	end
	--检测地图
	if not Item_ChkItem(tSpringFestival2016_Back_Item["TreasureMap"]) then
		User_TalkChannel2005(tSpringFestival2016_LB_Text["Map"]["NoItem"])
		return
	end
	--距离足够,判断背包内物品数量
	local nTreasureCount = SpringFestival2016_Back_CountTreasure()
	if nTreasureCount == tSpringFestival2016_Back_Item["TreasureNum"] then
		Sys_MsgBox(tSpringFestival2016_LB_Text["Map"]["Fin"])
		SpringFestival2016_LB_AutoFindWay("Officer")
		return
	end
	--检测是否是正确的挖掘点
	local nOrderId = tSpringFestival2016_LB_Pos["HidingSpace" .. (nTreasureCount + 1)]["Id"]
	if nNpcId ~= nOrderId then
		Sys_MsgBox(tSpringFestival2016_LB_Text["Map"]["Fail"])
		return
	end
	--背包已满
	if not User_CheckLeftSpace(1) then
		Sys_MsgBox(tSpringFestival2016_LB_Text["Map"]["FullBag"])
		return
	end
	--可以挖掘
	local nSecs = tSpringFestival2016_LB_Data["ExploreTime"]
	local sContent = tSpringFestival2016_LB_Text["Map"]["Explore"]
	local nActionId = tSpringFestival2016_LB_Data["ExploreAction"]
	local sFunc = "</F>SpringFestival2016_Back_Explore</N>" .. nNpcId
	User_SetExplore(nSecs,sContent,nActionId,sFunc)
end

--读条函数
function SpringFestival2016_Back_Explore(nNpcId,nUserId)
	local nTreasureCount = SpringFestival2016_Back_CountTreasure(nUserId)
	--活动时间后/无任务的情况,点击无反应
	if SpringFestival2016_LB_TimeJudge() >= 3 then
		return
	end
	if SpringFestival2016_Back_Phase(nil,nUserId) ~= tSpringFestival2016_Back_Stc["GetMap"] then
		return
	end
	--距离太远
	if not SpringFestival2016_LB_DistanceChk(nNpcId,nUserId) then
		Sys_MsgBox(tSpringFestival2016_LB_Text["Bottle"]["Far"])
		return
	end
	--检测地图
	if not Item_ChkItem(tSpringFestival2016_Back_Item["TreasureMap"],1,0,nUserId) then
		Sys_MsgBox(tSpringFestival2016_LB_Text["Map"]["NoItem"])
		SpringFestival2016_LB_AutoFindWay("Officer")
		return
	end
	--检测数量,3个就不需要再给了
	if nTreasureCount >= tSpringFestival2016_Back_Item["TreasureNum"] then
		SpringFestival2016_Back_AfterChk(nUserId)
		return
	end
	--背包已满
	if not User_CheckLeftSpace(1,nUserId) then
		Sys_MsgBox(tSpringFestival2016_LB_Text["Map"]["FullBag"])
		return
	end
	-- Item_AddItem(tSpringFestival2016_Back_Item["Treasure"])
	Item_AddNewItem(tSpringFestival2016_Back_Item["Treasure"],"0 1",nUserId)
		--已有三个
	nTreasureCount = SpringFestival2016_Back_CountTreasure(nUserId)
	if nTreasureCount >= tSpringFestival2016_Back_Item["TreasureNum"] then
		SpringFestival2016_Back_AfterChk(nUserId)
		return
	else
		--不满三个的情况
		local sFunc = "</F>SpringFestival2016_Back_FindNextPoint"
		Sys_MsgBox(tSpringFestival2016_LB_Text["Map"]["Success"],sFunc)
	end
	Sys_SaveActionFestivalLog(tSpringFestival2016_Back_Log["GetTreasure"],nUserId)
end

--寻找下一个挖掘点
function SpringFestival2016_Back_FindNextPoint()
	--当包里有nCount个笼头时,寻找的是nCount个采集点
	nCount = SpringFestival2016_Back_CountTreasure() + 1
	if nCount <= tSpringFestival2016_Back_Item["TreasureNum"] then
		local nCellX = tSpringFestival2016_LB_Pos["HidingSpace" .. nCount]["CellX"]
		local nCellY = tSpringFestival2016_LB_Pos["HidingSpace" .. nCount]["CellY"]
		local nMapId = tSpringFestival2016_LB_Pos["TreasureMapId"]
		local nId = tSpringFestival2016_LB_Pos["HidingSpace" .. nCount]["Id"]
		Sys_GotoSomeWhere(nCellX,nCellY,nMapId,nId)
		return
	end
	SpringFestival2016_LB_AutoFindWay("Officer")
end

------------------------------物品逻辑部分------------------------
--净水瓶(空/半)调用函数
function SpringFestival2016_Left_BottleDialog(nItemId)
	local sDropLog = string.format(tSpringFestival2016_Left_Log["Expire"],nItemId)
	local nPhase = SpringFestival2016_Left_Phase() - 9
	local nPosMsg = tSpringFestival2016_LB_Text["Bottle"]["Next"]
	--过期
	if SpringFestival2016_LB_TimeJudge() >= 2 then
		Item_DelItem(nItemId)
		User_TalkChannel2005(tSpringFestival2016_LB_Text["Bottle"]["Expire"])
		Sys_SaveActionFestivalLog(sDropLog)
	end
	local nCellX = tSpringFestival2016_LB_Pos["WaterSource"]["CellX"]
	local nCellY = tSpringFestival2016_LB_Pos["WaterSource"]["CellY"]
	--未过期,寻路到指定位置去取水
	nPosMsg = string.format(nPosMsg,nCellX,nCellY)
	Sys_MsgBox(nPosMsg)
	SpringFestival2016_LB_AutoFindWay("WaterSource")
end
--净水瓶(满)调用函数
function SpringFestival2016_Left_FullBottleDialog(nItemId)
	local sDropLog = string.format(tSpringFestival2016_Left_Log["Expire"],nItemId)
	--料豆和糖果的id和所需数量
	local nBeanId = tSpringFestival2016_Left_Item["Bean"]
	local nBeanNum = tSpringFestival2016_Left_Item["BeanNum"]
	local nCandyId = tSpringFestival2016_Left_Item["Candy"]
	local nCandyNum = tSpringFestival2016_Left_Item["CandyNum"]
	--过期
	if SpringFestival2016_LB_TimeJudge() >= 2 then
		Item_DelItem(nItemId)
		User_TalkChannel2005(tSpringFestival2016_LB_Text["Bottle"]["Expire"])
		Sys_SaveActionFestivalLog(sDropLog)
	end
	--未过期,判断物品是否备齐
	if not Item_ChkMulItem(nBeanId,nBeanId,nBeanNum) then
		Sys_MsgBox(tSpringFestival2016_LB_Text["Bottle"]["NeedBean"],"SpringFestival2016_LB_AutoFindWay</S>Bird")
		return
	elseif not Item_ChkMulItem(nCandyId,nCandyId,nBeanNum) then
		Sys_MsgBox(tSpringFestival2016_LB_Text["Bottle"]["NeedCandy"],"SpringFestival2016_LB_AutoFindWay</S>Guy")
		return
	end
	--都备齐,回去找npc完成任务
	Sys_MsgBox(tSpringFestival2016_LB_Text["Left"]["Collected"])
	SpringFestival2016_LB_AutoFindWay("Envoy")
end

--地图调用
function SpringFestival2016_Back_MapDialog(nItemId)
	local nCellX = 0
	local nCellY = 0
	local nNpcId = 0
	local nMapId = tSpringFestival2016_LB_Pos["TreasureMapId"]
	local sMsg = ""
	local sFunc = ""
	--活动后,删除任务物品,对白
	if SpringFestival2016_LB_TimeJudge() >= 3 then
		SpringFestival2016_Back_ItemDel()
		Sys_MsgBox(tSpringFestival2016_LB_Text["Map"]["Expire"])
		Sys_SaveActionFestivalLog(tSpringFestival2016_Back_Log["Expire"])
	end
	--活动中
	local nTreasureCount = SpringFestival2016_Back_CountTreasure()
	--背包里0,1,2个笼头时,继续挖掘,3个笼头,回去找小吏换奖励
	if nTreasureCount < tSpringFestival2016_Back_Item["TreasureNum"] then
		nCellX = tSpringFestival2016_LB_Pos["HidingSpace" .. (nTreasureCount + 1)]["CellX"]
		nCellY = tSpringFestival2016_LB_Pos["HidingSpace" .. (nTreasureCount + 1)]["CellY"]
		sFunc = "</F>SpringFestival2016_Back_FindNextPoint"
		sMsg = string.format(tSpringFestival2016_LB_Text["Map"]["Pos"],nCellX,nCellY)
	else
		sFunc = "</F>SpringFestival2016_LB_AutoFindWay</S>Officer"
		sMsg = tSpringFestival2016_LB_Text["Map"]["Fin"]
	end
	Sys_MsgBox(sMsg,sFunc)
end

------------------------------怪物逻辑部分------------------------
--罗罗鸟掉落任务物品:料豆
function SpringFestival2016_Left_MonsterLoot()
	--时间不正确,无反应
	if not Sys_ChkFullTime(tSpringFestival2016_LB_Data["ActTime1"]) then
		return
	end
	--无任务,无反应
	local nTaskPhase = SpringFestival2016_Left_Phase()
	if nTaskPhase < tSpringFestival2016_Left_Stc["TaskBegin"] then
		return
	elseif nTaskPhase >= tSpringFestival2016_Left_Stc["TaskFin"] then
		return
	end
	--已有五个物品,提示玩家
	local nBeanId = tSpringFestival2016_Left_Item["Bean"]
	local nBeanNum = tSpringFestival2016_Left_Item["BeanNum"]
	if Item_ChkMulItem(nBeanId,nBeanId,nBeanNum) then
		 User_TalkChannel2005(tSpringFestival2016_LB_Text["Mon"]["Fin"])
		 SpringFestival2016_Left_AfterChk()
		 return
	end
	--不足5个,检查背包
	if not User_CheckLeftSpace(1) then
		User_TalkChannel2005(tSpringFestival2016_LB_Text["Mon"]["FullBag"])
		return
	end
	--条件都满足,掉落1个,对白,log
	Item_AddItem(tSpringFestival2016_Left_Item["Bean"])
	if Item_ChkMulItem(nBeanId,nBeanId,nBeanNum) then
		User_TalkChannel2005(tSpringFestival2016_LB_Text["Mon"]["Fin"])
		Sys_SaveActionFestivalLog(tSpringFestival2016_Left_Log["Loot"])
		SpringFestival2016_Left_AfterChk()
	else
		User_TalkChannel2005(tSpringFestival2016_LB_Text["Mon"]["Loot"])
		Sys_SaveActionFestivalLog(tSpringFestival2016_Left_Log["Loot"])
	end
end

------------------------------Npc模版部分------------------------
--17434 灶王特使小仙 lookface=3421  face=610107
tNpcFace[3421] = 110
tNpcGossip[17434] = tNpcGossip[17434] or DefaultNpc:new{}
tNpcGossip[17434]["OptionHidden"] = 1

--活动前对白
tNpcGossip[17434]["Text1-1"] = {111,112,113,114}
tNpcGossip[17434]["Text111"] = tSpringFestival2016_LB_Text[17434]["Text111"]
tNpcGossip[17434]["Text112"] = tSpringFestival2016_LB_Text[17434]["Text112"]
tNpcGossip[17434]["Text113"] = tSpringFestival2016_LB_Text[17434]["Text113"]
tNpcGossip[17434]["Text114"] = tSpringFestival2016_LB_Text[17434]["Text114"]
tNpcGossip[17434]["tOption1-1"] = {111}
tNpcGossip[17434]["Option111"] = tSpringFestival2016_LB_Text[17434]["Option111"]
tNpcGossip[17434]["ChkFunc1-1"] = function()
	return (SpringFestival2016_LB_TimeJudge() <= 0)
end

--【接1、等级不足】
tNpcGossip[17434]["Text1-2"] = {121}
tNpcGossip[17434]["Text121"] = tSpringFestival2016_LB_Text[17434]["Text221"]
tNpcGossip[17434]["tOption1-2"] = {121}
tNpcGossip[17434]["Option121"] = tSpringFestival2016_LB_Text[17434]["Option221"]
tNpcGossip[17434]["ChkFunc1-2"] = function()
	return (SpringFestival2016_LB_TimeJudge() <= 1) and (not User_JudgeLevelAndMetempsychosis(tSpringFestival2016_LB_Data["MinLev"],tSpringFestival2016_LB_Data["MinMeto"]))
end

--活动中对白
tNpcGossip[17434]["Text1-3"] = {131,132,133,134}
tNpcGossip[17434]["Text131"] = tSpringFestival2016_LB_Text[17434]["Text121"]
tNpcGossip[17434]["Text132"] = tSpringFestival2016_LB_Text[17434]["Text122"]
tNpcGossip[17434]["Text133"] = tSpringFestival2016_LB_Text[17434]["Text123"]
tNpcGossip[17434]["Text134"] = tSpringFestival2016_LB_Text[17434]["Text124"]
tNpcGossip[17434]["tOption1-3"] = {131,132,133,134,135}
tNpcGossip[17434]["Option131"] = tSpringFestival2016_LB_Text[17434]["Option121"]
tNpcGossip[17434]["OptionFunc131"] = "</F>SpringFestival2016_Left_ApplyTask</N>17434"
tNpcGossip[17434]["OptionChkFunc131"] = function()
	--未接到任务的情况
	return (SpringFestival2016_Left_Phase() <= 0)
end
tNpcGossip[17434]["Option132"] = tSpringFestival2016_LB_Text[17434]["Option122"]
tNpcGossip[17434]["OptionFunc132"] = "</F>SpringFestival2016_Left_ApplyAward</N>17434"
tNpcGossip[17434]["OptionChkFunc132"] = function()
	--已接到任务的情况
	return (SpringFestival2016_Left_Phase() >= tSpringFestival2016_Left_Stc["TaskBegin"])
end
tNpcGossip[17434]["Option133"] = tSpringFestival2016_LB_Text[17434]["Option123"]
tNpcGossip[17434]["OptionFunc133"] = "</F>SpringFestival2016_Left_ApplyItem</N>17434"
tNpcGossip[17434]["OptionChkFunc133"] = function()
	--已接到任务且还未完成的情况
	if (SpringFestival2016_Left_Phase() >= tSpringFestival2016_Left_Stc["TaskBegin"]) and (SpringFestival2016_Left_Phase() < tSpringFestival2016_Left_Stc["TaskFin"]) then
		return true
	end
	return false
end
tNpcGossip[17434]["Option134"] = tSpringFestival2016_LB_Text[17434]["Option124"]
tNpcGossip[17434]["OptionPoint134"] = "5-1"
tNpcGossip[17434]["Option135"] = tSpringFestival2016_LB_Text[17434]["Option125"]
tNpcGossip[17434]["ChkFunc1-3"] = function()
	if (SpringFestival2016_Left_Phase() >= tSpringFestival2016_Left_Stc["TaskFin"]) and SpringFestival2016_Left_TimeStamp(1) then
		SpringFestival2016_Left_Phase(0)
		SpringFestival2016_Left_ItemDel()
		SpringFestival2016_Left_TimeStamp(0)
	end
	return (SpringFestival2016_LB_TimeJudge() <= 1)
end
--活动后
tNpcGossip[17434]["Text1-4"] = {141}
tNpcGossip[17434]["Text141"] = tSpringFestival2016_LB_Text[17434]["Text131"]
tNpcGossip[17434]["tOption1-4"] = {141}
tNpcGossip[17434]["Option141"] = tSpringFestival2016_LB_Text[17434]["Option131"]

--【接1、此事包在我身上】
tNpcGossip[17434]["Text2-1"] = {211}
tNpcGossip[17434]["Text211"] = tSpringFestival2016_LB_Text[17434]["Text211"]
tNpcGossip[17434]["tOption2-1"] = {211,212,213}
tNpcGossip[17434]["Option211"] = tSpringFestival2016_LB_Text[17434]["Option211"]
tNpcGossip[17434]["OptionFunc211"] = "</F>SpringFestival2016_LB_AutoFindWay</S>Guy"
tNpcGossip[17434]["Option212"] = tSpringFestival2016_LB_Text[17434]["Option212"]
tNpcGossip[17434]["OptionFunc212"] = "</F>SpringFestival2016_LB_AutoFindWay</S>Bird"
tNpcGossip[17434]["Option213"] = tSpringFestival2016_LB_Text[17434]["Option213"]
--【接1?此事包在我身上?今天已完成过】
tNpcGossip[17434]["Text2-3"] = {231}
tNpcGossip[17434]["Text231"] = tSpringFestival2016_LB_Text[17434]["Text231"]
tNpcGossip[17434]["tOption2-3"] = {231}
tNpcGossip[17434]["Option231"] = tSpringFestival2016_LB_Text[17434]["Option231"]
--【接1?此事包在我身上?今天已完成并未上交】
tNpcGossip[17434]["Text2-4"] = {241}
tNpcGossip[17434]["Text241"] = tSpringFestival2016_LB_Text[17434]["Text241"]
tNpcGossip[17434]["tOption2-4"] = {241}
tNpcGossip[17434]["Option241"] = tSpringFestival2016_LB_Text[17434]["Option241"]
--【接1?此事包在我身上?还未完成】
tNpcGossip[17434]["Text2-5"] = {251}
tNpcGossip[17434]["Text251"] = tSpringFestival2016_LB_Text[17434]["Text251"]
tNpcGossip[17434]["tOption2-5"] = {251}
tNpcGossip[17434]["Option251"] = tSpringFestival2016_LB_Text[17434]["Option251"]
--【接1?此事包在我身上?背包满】
tNpcGossip[17434]["Text2-6"] = {261}
tNpcGossip[17434]["Text261"] = tSpringFestival2016_LB_Text[17434]["Text261"]
tNpcGossip[17434]["tOption2-6"] = {261}
tNpcGossip[17434]["Option261"] = tSpringFestival2016_LB_Text[17434]["Option261"]

--【接2?在下已准备好供品?成功】
tNpcGossip[17434]["Text3-1"] = {311}
tNpcGossip[17434]["Text311"] = tSpringFestival2016_LB_Text[17434]["Text311"]
tNpcGossip[17434]["tOption3-1"] = {311}
tNpcGossip[17434]["Option311"] = tSpringFestival2016_LB_Text[17434]["Option311"]
--【接2?在下已准备好供品?任务未完成】
tNpcGossip[17434]["Text3-2"] = {321}
tNpcGossip[17434]["Text321"] = tSpringFestival2016_LB_Text[17434]["Text321"]
tNpcGossip[17434]["tOption3-2"] = {321}
tNpcGossip[17434]["Option321"] = tSpringFestival2016_LB_Text[17434]["Option321"]
tNpcGossip[17434]["OptionFunc321"] = "</F>SpringFestival2016_Left_AfterChk"
--【接2?在下已准备好供品?已上交过】
tNpcGossip[17434]["Text3-3"] = {331}
tNpcGossip[17434]["Text331"] = tSpringFestival2016_LB_Text[17434]["Text331"]
tNpcGossip[17434]["tOption3-3"] = {331}
tNpcGossip[17434]["Option331"] = tSpringFestival2016_LB_Text[17434]["Option331"]
--【接2?在下已准备好供品?玩家背包满】
tNpcGossip[17434]["Text3-4"] = {341}
tNpcGossip[17434]["Text341"] = tSpringFestival2016_LB_Text[17434]["Text341"]
tNpcGossip[17434]["tOption3-4"] = {341}
tNpcGossip[17434]["Option341"] = tSpringFestival2016_LB_Text[17434]["Option341"]


--【接3?补领净水空瓶】
tNpcGossip[17434]["Text4-1"] = {411}
tNpcGossip[17434]["Text411"] = tSpringFestival2016_LB_Text[17434]["Text411"]
tNpcGossip[17434]["tOption4-1"] = {411}
tNpcGossip[17434]["Option411"] = tSpringFestival2016_LB_Text[17434]["Option411"]
--【接3?补领净水空瓶?没接过任务】
tNpcGossip[17434]["Text4-2"] = {421}
tNpcGossip[17434]["Text421"] = tSpringFestival2016_LB_Text[17434]["Text421"]
tNpcGossip[17434]["tOption4-2"] = {421}
tNpcGossip[17434]["Option421"] = tSpringFestival2016_LB_Text[17434]["Option421"]
--【接3?补领净水空瓶?有瓶子】
tNpcGossip[17434]["Text4-3"] = {431}
tNpcGossip[17434]["Text431"] = tSpringFestival2016_LB_Text[17434]["Text431"]
tNpcGossip[17434]["tOption4-3"] = {431}
tNpcGossip[17434]["Option431"] = tSpringFestival2016_LB_Text[17434]["Option431"]
--【接3?补领净水空瓶?当天已完成】
tNpcGossip[17434]["Text4-4"] = {441}
tNpcGossip[17434]["Text441"] = tSpringFestival2016_LB_Text[17434]["Text441"]
tNpcGossip[17434]["tOption4-4"] = {441}
tNpcGossip[17434]["Option441"] = tSpringFestival2016_LB_Text[17434]["Option441"]
--【接3?补领净水空瓶?背包空间不够】
tNpcGossip[17434]["Text4-5"] = {451}
tNpcGossip[17434]["Text451"] = tSpringFestival2016_LB_Text[17434]["Text451"]
tNpcGossip[17434]["tOption4-5"] = {451}
tNpcGossip[17434]["Option451"] = tSpringFestival2016_LB_Text[17434]["Option451"]

--【接4、可否请小仙详细说说】
tNpcGossip[17434]["Text5-1"] = {511}
tNpcGossip[17434]["Text511"] = tSpringFestival2016_LB_Text[17434]["Text511"]
tNpcGossip[17434]["tOption5-1"] = {511}
tNpcGossip[17434]["Option511"] = tSpringFestival2016_LB_Text[17434]["Option511"]

--17435 杂货铺小伙计 lookface = 3422 face = 610013
tNpcFace[3422] = 120
tNpcGossip[17435] = tNpcGossip[17435] or DefaultNpc:new{}
tNpcGossip[17435]["OptionHidden"] = 1
--活动前/等级不足
tNpcGossip[17435]["Text1-1"] = {111}
tNpcGossip[17435]["Text111"] = tSpringFestival2016_LB_Text[17435]["Text111"]
tNpcGossip[17435]["tOption1-1"] = {111}
tNpcGossip[17435]["Option111"] = tSpringFestival2016_LB_Text[17435]["Option111"]
tNpcGossip[17435]["ChkFunc1-1"] = function()
	if SpringFestival2016_LB_TimeJudge() <= 0 then
		return true
	elseif not User_JudgeLevelAndMetempsychosis(tSpringFestival2016_LB_Data["MinLev"],tSpringFestival2016_LB_Data["MinMeto"]) then
		return true
	end
	return false
end
--活动中,当当前活动完成时,只有再买剁手选项
tNpcGossip[17435]["Text1-2"] = {121}
tNpcGossip[17435]["Text121"] = tSpringFestival2016_LB_Text[17435]["Text121"]
tNpcGossip[17435]["tOption1-2"] = {121,122,123}
tNpcGossip[17435]["Option121"] = tSpringFestival2016_LB_Text[17435]["Option121"]
tNpcGossip[17435]["OptionFunc121"] = "</F>SpringFestival2016_Left_Shopping</N>17435</N>712011"
tNpcGossip[17435]["OptionChkFunc121"] = function()
	return (SpringFestival2016_LB_TimeJudge() == 1) and (SpringFestival2016_Left_Phase() < tSpringFestival2016_Left_Stc["TaskFin"]) and (SpringFestival2016_Left_Phase() >= tSpringFestival2016_Left_Stc["TaskBegin"])
end
tNpcGossip[17435]["Option122"] = tSpringFestival2016_LB_Text[17435]["Option122"]
tNpcGossip[17435]["OptionFunc122"] = "</F>SpringFestival2016_Left_Shopping</N>17435</N>712016"
tNpcGossip[17435]["OptionChkFunc122"] = function()
	return (SpringFestival2016_LB_TimeJudge() == 2)  and (SpringFestival2016_Back_Phase() < tSpringFestival2016_Back_Stc["TaskFin"]) and (SpringFestival2016_Back_Phase() >= tSpringFestival2016_Back_Stc["TaskBegin"])
end
tNpcGossip[17435]["Option123"] = tSpringFestival2016_LB_Text[17435]["Option123"]
tNpcGossip[17435]["ChkFunc1-2"] = function()
	return SpringFestival2016_LB_TimeJudge() <= 2
end
--活动后
tNpcGossip[17435]["Text1-3"] = {131}
tNpcGossip[17435]["Text131"] = tSpringFestival2016_LB_Text[17435]["Text131"]
tNpcGossip[17435]["tOption1-3"] = {131}
tNpcGossip[17435]["Option131"] = tSpringFestival2016_LB_Text[17435]["Option131"]

--背包满
tNpcGossip[17435]["Text2-1"] = {211}
tNpcGossip[17435]["Text211"] = tSpringFestival2016_LB_Text[17435]["Text211"]
tNpcGossip[17435]["tOption2-1"] = {211}
tNpcGossip[17435]["Option211"] = tSpringFestival2016_LB_Text[17435]["Option211"]
--钱不足
tNpcGossip[17435]["Text2-2"] = {221}
tNpcGossip[17435]["Text221"] = tSpringFestival2016_LB_Text[17435]["Text221"]
tNpcGossip[17435]["tOption2-2"] = {221}
tNpcGossip[17435]["Option221"] = tSpringFestival2016_LB_Text[17435]["Option221"]

--10765 灶王神像 lookface = 3424 face = 610049
tNpcFace[3424] = 49
tNpcGossip[10765] = tNpcGossip[10765] or DefaultNpc:new{}
tNpcGossip[10765]["OptionHidden"] = 1

--活动前
tNpcGossip[10765]["Text1-1"] = {111,112,113,114}
tNpcGossip[10765]["Text111"] = tSpringFestival2016_LB_Text[10765]["Text111"]
tNpcGossip[10765]["Text112"] = tSpringFestival2016_LB_Text[10765]["Text112"]
tNpcGossip[10765]["Text113"] = tSpringFestival2016_LB_Text[10765]["Text113"]
tNpcGossip[10765]["Text114"] = tSpringFestival2016_LB_Text[10765]["Text114"]
tNpcGossip[10765]["tOption1-1"] = {111}
tNpcGossip[10765]["Option111"] = tSpringFestival2016_LB_Text[10765]["Option111"]
tNpcGossip[10765]["ChkFunc1-1"] = function()
	return (SpringFestival2016_LB_TimeJudge() <= 1)
end

--【接1?放心交给我吧?等级不足】
tNpcGossip[10765]["Text1-2"] = {121}
tNpcGossip[10765]["Text121"] = tSpringFestival2016_LB_Text[10765]["Text211"]
tNpcGossip[10765]["tOption1-2"] = {121}
tNpcGossip[10765]["Option121"] = tSpringFestival2016_LB_Text[10765]["Option211"]
tNpcGossip[10765]["ChkFunc1-2"] = function()
	return not User_JudgeLevelAndMetempsychosis(tSpringFestival2016_LB_Data["MinLev"],tSpringFestival2016_LB_Data["MinMeto"])
end

--活动中
tNpcGossip[10765]["Text1-3"] = {131,132,133,134}
tNpcGossip[10765]["Text131"] = tSpringFestival2016_LB_Text[10765]["Text121"]
tNpcGossip[10765]["Text132"] = tSpringFestival2016_LB_Text[10765]["Text122"]
tNpcGossip[10765]["Text133"] = tSpringFestival2016_LB_Text[10765]["Text123"]
tNpcGossip[10765]["Text134"] = tSpringFestival2016_LB_Text[10765]["Text124"]
tNpcGossip[10765]["tOption1-3"] = {131,132,133,134}
tNpcGossip[10765]["Option131"] = tSpringFestival2016_LB_Text[10765]["Option121"]
tNpcGossip[10765]["OptionFunc131"] = "</F>SpringFestival2016_Back_ApplyTask</N>10765"
tNpcGossip[10765]["OptionChkFunc131"] = function()
	--完成任务则不再出现这个选项
	if Item_ChkItem(tSpringFestival2016_Back_Item["Horse"]) and Item_ChkItem(tSpringFestival2016_Back_Item["Sedan"]) then
		return not Item_ChkMulItem(tSpringFestival2016_Back_Item["Wine"],tSpringFestival2016_Back_Item["Wine"],tSpringFestival2016_Back_Item["WineNum"])
	end
	return (SpringFestival2016_Back_Phase() < tSpringFestival2016_Back_Stc["TaskFin"])
end
tNpcGossip[10765]["Option132"] = tSpringFestival2016_LB_Text[10765]["Option122"]
tNpcGossip[10765]["OptionFunc132"] = "</F>SpringFestival2016_Back_ApplyAward</N>10765"
tNpcGossip[10765]["OptionChkFunc132"] = function()
	--有领过地图才出现此选项
	return (SpringFestival2016_Back_Phase() >= tSpringFestival2016_Back_Stc["GetMap"])
end
tNpcGossip[10765]["Option133"] = tSpringFestival2016_LB_Text[10765]["Option123"]
tNpcGossip[10765]["OptionPoint133"] = "4-1"
tNpcGossip[10765]["Option134"] = tSpringFestival2016_LB_Text[10765]["Option124"]
tNpcGossip[10765]["ChkFunc1-3"] = function()
	if (SpringFestival2016_Back_Phase() >= tSpringFestival2016_Back_Stc["TaskFin"]) and SpringFestival2016_Back_TimeStamp(1) then
		SpringFestival2016_Back_Phase(0)
		SpringFestival2016_Back_ItemDel()
		SpringFestival2016_Back_TimeStamp(0)
	end
	return (SpringFestival2016_LB_TimeJudge() == 2)
end
--活动后
tNpcGossip[10765]["Text1-4"] = {131}
tNpcGossip[10765]["Text141"] = tSpringFestival2016_LB_Text[10765]["Text131"]
tNpcGossip[10765]["tOption1-4"] = {131}
tNpcGossip[10765]["Option141"] = tSpringFestival2016_LB_Text[10765]["Option131"]


--【接1?放心交给我吧?成功】
tNpcGossip[10765]["Text2-2"] = {221}
tNpcGossip[10765]["Text221"] = tSpringFestival2016_LB_Text[10765]["Text221"]
tNpcGossip[10765]["tOption2-2"] = {221,222,223}
tNpcGossip[10765]["Option221"] = tSpringFestival2016_LB_Text[10765]["Option221"]
tNpcGossip[10765]["OptionFunc221"] = "</F>SpringFestival2016_LB_AutoFindWay</S>Guy"
tNpcGossip[10765]["Option222"] = tSpringFestival2016_LB_Text[10765]["Option222"]
tNpcGossip[10765]["OptionFunc222"] = "</F>SpringFestival2016_LB_AutoFindWay</S>Officer"
tNpcGossip[10765]["Option223"] = tSpringFestival2016_LB_Text[10765]["Option223"]
--【接1?放心交给我吧?今天已完成过】
tNpcGossip[10765]["Text2-3"] = {231}
tNpcGossip[10765]["Text231"] = tSpringFestival2016_LB_Text[10765]["Text231"]
tNpcGossip[10765]["tOption2-3"] = {231}
tNpcGossip[10765]["Option231"] = tSpringFestival2016_LB_Text[10765]["Option231"]
--【接1?放心交给我吧?今天已完成并未领取奖励】
tNpcGossip[10765]["Text2-4"] = {241}
tNpcGossip[10765]["Text241"] = tSpringFestival2016_LB_Text[10765]["Text241"]
tNpcGossip[10765]["tOption2-4"] = {241}
tNpcGossip[10765]["Option241"] = tSpringFestival2016_LB_Text[10765]["Option241"]
tNpcGossip[10765]["OptionFunc241"] = "</F>SpringFestival2016_Back_ApplyAward</N>10765"

--【接2?祭拜灶王神像?成功】
tNpcGossip[10765]["Text3-1"] = {311}
tNpcGossip[10765]["Text311"] = tSpringFestival2016_LB_Text[10765]["Text311"]
tNpcGossip[10765]["tOption3-1"] = {311}
tNpcGossip[10765]["Option311"] = tSpringFestival2016_LB_Text[10765]["Option311"]
--【接2?祭拜灶王神像?材料不足】
tNpcGossip[10765]["Text3-2"] = {321}
tNpcGossip[10765]["Text321"] = tSpringFestival2016_LB_Text[10765]["Text321"]
tNpcGossip[10765]["tOption3-2"] = {321}
tNpcGossip[10765]["Option321"] = tSpringFestival2016_LB_Text[10765]["Option321"]
--【接2?祭拜灶王神像?今天已祭拜过】
tNpcGossip[10765]["Text3-3"] = {331}
tNpcGossip[10765]["Text331"] = tSpringFestival2016_LB_Text[10765]["Text331"]
tNpcGossip[10765]["tOption3-3"] = {331}
tNpcGossip[10765]["Option331"] = tSpringFestival2016_LB_Text[10765]["Option331"]

--【接3?可否请仙官详细说说？】
tNpcGossip[10765]["Text4-1"] = {411}
tNpcGossip[10765]["Text411"] = tSpringFestival2016_LB_Text[10765]["Text411"]
tNpcGossip[10765]["tOption4-1"] = {411}
tNpcGossip[10765]["Option411"] = tSpringFestival2016_LB_Text[10765]["Option411"]

--10766 灶王小吏 lookface = 3425 face = 610029
tNpcFace[3425] = 29
tNpcGossip[10766] = tNpcGossip[10766] or DefaultNpc:new{}
tNpcGossip[10766]["OptionHidden"] = 1
--【活动前】
tNpcGossip[10766]["Text1-1"] = {111}
tNpcGossip[10766]["Text111"] = tSpringFestival2016_LB_Text[10766]["Text111"]
tNpcGossip[10766]["tOption1-1"] = {111}
tNpcGossip[10766]["Option111"] = tSpringFestival2016_LB_Text[10766]["Option111"]
tNpcGossip[10766]["ChkFunc1-1"] = function()
	return (SpringFestival2016_LB_TimeJudge() < 2)
end
--【闲聊/没接任务】
tNpcGossip[10766]["Text1-2"] = {121}
tNpcGossip[10766]["Text121"] = tSpringFestival2016_LB_Text[10766]["Text121"]
tNpcGossip[10766]["tOption1-2"] = {121}
tNpcGossip[10766]["Option121"] = tSpringFestival2016_LB_Text[10766]["Option121"]
tNpcGossip[10766]["OptionFunc121"] = "</F>SpringFestival2016_LB_AutoFindWay</S>Joss"
tNpcGossip[10766]["ChkFunc1-2"] = function()
	if SpringFestival2016_Back_Phase() >= tSpringFestival2016_Back_Stc["TaskBegin"] then
		return false
	end
	return SpringFestival2016_LB_TimeJudge() == 2
end
--【活动中，已接任务】
tNpcGossip[10766]["Text1-3"] = {131}
tNpcGossip[10766]["Text131"] = tSpringFestival2016_LB_Text[10766]["Text131"]
tNpcGossip[10766]["tOption1-3"] = {131,132,133,134,135,136}
tNpcGossip[10766]["Option131"] = tSpringFestival2016_LB_Text[10766]["Option131"]
tNpcGossip[10766]["OptionFunc131"] = "</F>SpringFestival2016_Back_ApplyMap</N>10766"
tNpcGossip[10766]["OptionChkFunc131"] =function()
	return SpringFestival2016_Back_Phase() < tSpringFestival2016_Back_Stc["GetMap"] 
end
tNpcGossip[10766]["Option132"] = tSpringFestival2016_LB_Text[10766]["Option132"]
tNpcGossip[10766]["OptionFunc132"] = "</F>SpringFestival2016_Back_Teleport</N>10766"
tNpcGossip[10766]["OptionChkFunc132"] =function()
	return SpringFestival2016_Back_OptionChk()
end
tNpcGossip[10766]["Option133"] = tSpringFestival2016_LB_Text[10766]["Option133"]
tNpcGossip[10766]["OptionFunc133"] = "</F>SpringFestival2016_Back_ApplyMap2</N>10766"
tNpcGossip[10766]["OptionChkFunc133"] =function()
	return SpringFestival2016_Back_OptionChk()
end
tNpcGossip[10766]["Option134"] = tSpringFestival2016_LB_Text[10766]["Option134"]
tNpcGossip[10766]["OptionFunc134"] = "</F>SpringFestival2016_Back_ApplyItem</N>10766"
tNpcGossip[10766]["OptionChkFunc134"] =function()
	return SpringFestival2016_Back_Phase() == tSpringFestival2016_Back_Stc["GetMap"]
end
tNpcGossip[10766]["Option135"] = tSpringFestival2016_LB_Text[10766]["Option135"]
tNpcGossip[10766]["OptionPoint135"] = "5-1"
tNpcGossip[10766]["Option136"] = tSpringFestival2016_LB_Text[10766]["Option136"]
tNpcGossip[10766]["ChkFunc1-3"] = function()
	if (SpringFestival2016_Back_Phase() >= tSpringFestival2016_Back_Stc["TaskBegin"]) then
		return (SpringFestival2016_LB_TimeJudge() == 2)
	end
	return false
end

--【活动后】
tNpcGossip[10766]["Text1-4"] = {141}
tNpcGossip[10766]["Text141"] = tSpringFestival2016_LB_Text[10766]["Text141"]
tNpcGossip[10766]["tOption1-4"] = {141}
tNpcGossip[10766]["Option141"] = tSpringFestival2016_LB_Text[10766]["Option141"]

--【接1?我这就去找?成功】
tNpcGossip[10766]["Text2-1"] = {211}
tNpcGossip[10766]["Text211"] = tSpringFestival2016_LB_Text[10766]["Text211"]
tNpcGossip[10766]["tOption2-1"] = {211}
tNpcGossip[10766]["Option211"] = tSpringFestival2016_LB_Text[10766]["Option211"]
tNpcGossip[10766]["OptionFunc211"] = "</F>SpringFestival2016_Back_Teleport</N>10766"
--【接1?我这就去?已接受过任务】
tNpcGossip[10766]["Text2-2"] = {221}
tNpcGossip[10766]["Text221"] = tSpringFestival2016_LB_Text[10766]["Text221"]
tNpcGossip[10766]["tOption2-2"] = {221}
tNpcGossip[10766]["Option221"] = tSpringFestival2016_LB_Text[10766]["Option221"]
--【接1?我这就去?背包满】
tNpcGossip[10766]["Text2-3"] = {231}
tNpcGossip[10766]["Text231"] = tSpringFestival2016_LB_Text[10766]["Text231"]
tNpcGossip[10766]["tOption2-3"] = {231}
tNpcGossip[10766]["Option231"] = tSpringFestival2016_LB_Text[10766]["Option231"]
--【接1?我这就去?东西已准备好未交换】
tNpcGossip[10766]["Text2-4"] = {241}
tNpcGossip[10766]["Text241"] = tSpringFestival2016_LB_Text[10766]["Text241"]
tNpcGossip[10766]["tOption2-4"] = {241}
tNpcGossip[10766]["Option241"] = tSpringFestival2016_LB_Text[10766]["Option241"]

--【接2?补领笼头藏绘图?成功】
tNpcGossip[10766]["Text3-1"] = {311}
tNpcGossip[10766]["Text311"] = tSpringFestival2016_LB_Text[10766]["Text311"]
tNpcGossip[10766]["tOption3-1"] = {311}
tNpcGossip[10766]["Option311"] = tSpringFestival2016_LB_Text[10766]["Option311"]
tNpcGossip[10766]["OptionFunc311"] = "</F>SpringFestival2016_Back_Teleport</N>10766"
--【接2?补领笼头藏绘图?背包中已有】
tNpcGossip[10766]["Text3-2"] = {321}
tNpcGossip[10766]["Text321"] = tSpringFestival2016_LB_Text[10766]["Text321"]
tNpcGossip[10766]["tOption3-2"] = {321}
tNpcGossip[10766]["Option321"] = tSpringFestival2016_LB_Text[10766]["Option321"]
--【接２?补领笼头藏绘图?背包满】
tNpcGossip[10766]["Text3-3"] = {331}
tNpcGossip[10766]["Text331"] = tSpringFestival2016_LB_Text[10766]["Text331"]
tNpcGossip[10766]["tOption3-3"] = {331}
tNpcGossip[10766]["Option331"] = tSpringFestival2016_LB_Text[10766]["Option331"]
--【接2?补领笼头藏绘图?已收集3个笼头完毕或已用笼头换取纸轿子和纸马】
tNpcGossip[10766]["Text3-4"] = {341}
tNpcGossip[10766]["Text341"] = tSpringFestival2016_LB_Text[10766]["Text341"]
tNpcGossip[10766]["tOption3-4"] = {341}
tNpcGossip[10766]["Option341"] = tSpringFestival2016_LB_Text[10766]["Option341"]

--【接3?这是你要的东西?成功】
tNpcGossip[10766]["Text4-1"] = {411}
tNpcGossip[10766]["Text411"] = tSpringFestival2016_LB_Text[10766]["Text411"]
tNpcGossip[10766]["tOption4-1"] = {411}
tNpcGossip[10766]["Option411"] = tSpringFestival2016_LB_Text[10766]["Option411"]
--【接3?这是你要的东西?东西没带齐】
tNpcGossip[10766]["Text4-2"] = {421}
tNpcGossip[10766]["Text421"] = tSpringFestival2016_LB_Text[10766]["Text421"]
tNpcGossip[10766]["tOption4-2"] = {421}
tNpcGossip[10766]["Option421"] = tSpringFestival2016_LB_Text[10766]["Option421"]
--【接3?这是你要的东西?已兑换过】
tNpcGossip[10766]["Text4-3"] = {431}
tNpcGossip[10766]["Text431"] = tSpringFestival2016_LB_Text[10766]["Text431"]
tNpcGossip[10766]["tOption4-3"] = {431}
tNpcGossip[10766]["Option431"] = tSpringFestival2016_LB_Text[10766]["Option431"]

--【接4?可否详细一说？】
tNpcGossip[10766]["Text5-1"] = {511}
tNpcGossip[10766]["Text511"] = tSpringFestival2016_LB_Text[10766]["Text511"]
tNpcGossip[10766]["tOption5-1"] = {511}
tNpcGossip[10766]["Option511"] = tSpringFestival2016_LB_Text[10766]["Option511"]


------------------------------物品模版部分------------------------
--净水瓶(空)
tItem[3001070] = tItem[3001070] or {}
tItem[3001070]["Function"] = function(nItemId,sItemName)
	SpringFestival2016_Left_BottleDialog(nItemId)
end
--净水瓶(半)
tItem[3001071] = tItem[3001071] or {}
tItem[3001071]["Function"] = function(nItemId,sItemName)
	SpringFestival2016_Left_BottleDialog(nItemId)
end
--净水瓶(满)
tItem[3001072] = tItem[3001072] or {}
tItem[3001072]["Function"] = function(nItemId,sItemName)
	SpringFestival2016_Left_FullBottleDialog(nItemId)
end

--笼头藏绘图
tItem[3005570] = tItem[3005570] or {}
tItem[3005570]["Function"] = function(nItemId,sItemName)
	SpringFestival2016_Back_MapDialog(nItemId)
end

------------------------------怪物模版部分------------------------
--罗罗鸟,3
--tMonster[3] = tMonster[3] or {}
--tMonster[3]["tFunction"] = tMonster[3]["tFunction"] or {}
--table.insert(tMonster[3]["tFunction"],SpringFestival2016_Left_MonsterLoot)

