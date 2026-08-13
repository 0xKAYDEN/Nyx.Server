---Name:150901[简体征服][活动脚本]2015年圣诞元旦活动之堆雪人(12.22-01.04)
--Creator: 	陈莺
--Created:	2015-09-01
--------------------------------------------------------------------------------
--npc 
-- 18825  圣诞老人
-- 18826  服装店老板
-- 18827  雪人
-- 18828-18830  雪堆
-- 18831-18836  树枝
--物品
-- 3007449  铲子
-- 3007450  雪球
-- 3007451  圣诞帽
-- 3007452  胡萝卜
-- 3007453  黑色纽扣
-- 3007454  树枝
-- 3007455  雪堆
-- 3007456  橙色雪灵珠
-- 3007457  粉色雪灵珠
-- 3007458  红色雪灵珠
-- 3007459  黄色雪灵珠
-- 3007460  绿色雪灵珠
-- 3007461  蓝色雪灵珠
-- 3007462  紫色雪灵珠
-- 3007463  雪人
-- 3007464  橙色雪人
-- 3007465  粉色雪人
-- 3007466  红色雪人
-- 3007467  黄色雪人
-- 3007468  绿色雪人
-- 3007469  蓝色雪人
-- 3007470  紫色雪人
--logid  12000210
--掩码说明
--stc(138,00) =1 领取 =2 今天已完成
--stc(138,01) 打怪使用的掩码
--stc(138,29) 拔萝卜使用的掩码 3次必得
--命名规范
--Christmas2015_MakeSnowman_
------------------------------------------------------------------------------------------
--活动时间
local tChristmas2015_MakeSnowman_Data= {}
	tChristmas2015_MakeSnowman_Data["Bef_Time"]= "2017-05-18 00:00 2017-12-20 23:59"
	tChristmas2015_MakeSnowman_Data["Now_Time"] = "2017-12-21 00:00 2018-01-03 23:59"

--等级
	tChristmas2015_MakeSnowman_Data["Level"] = 80
	tChristmas2015_MakeSnowman_Data["Metempsychosis"] = 0
--背包空间
	tChristmas2015_MakeSnowman_Data["Space"] = 1
	tChristmas2015_MakeSnowman_Data["Space2"] = 2
--买雪灵珠需要的银两
	tChristmas2015_MakeSnowman_Data["OrangeMoney"] = -50000
	tChristmas2015_MakeSnowman_Data["OtherMoney"] = -30000
--合成雪人光效
	tChristmas2015_MakeSnowman_Data["SnowEffect"] = "Intone"
--领取奖励光效
	tChristmas2015_MakeSnowman_Data["RewardEffect"] = "LevelUp-1"
--地图坐标
	tChristmas2015_MakeSnowman_Data["House_Type"] = 1024
	tChristmas2015_MakeSnowman_Data["Market_Type"] = 1036
	tChristmas2015_MakeSnowman_Data["TwinCity_Type"] = 1002
--圣诞老人坐标
	tChristmas2015_MakeSnowman_Data["NpcX"] = 340
	tChristmas2015_MakeSnowman_Data["NpcY"] = 461
	tChristmas2015_MakeSnowman_Data["NpcId"] = 18825
--蹑空鬼斧王
	tChristmas2015_MakeSnowman_Data["MonsterId"] = 5
--掉落纽扣概率
	-- tChristmas2015_MakeSnowman_Data["ButtonsRandom"] = 99
	tChristmas2015_MakeSnowman_Data["ButtonsRandom"] = 80
--掉落雪球概率
	tChristmas2015_MakeSnowman_Data["BollRandom"] = 10
	-- tChristmas2015_MakeSnowman_Data["BollRandom"] = 99
--采集胡萝卜概率
	tChristmas2015_MakeSnowman_Data["CarrotsRandom"] = 40
	-- tChristmas2015_MakeSnowman_Data["CarrotsRandom"] = 1
	--家具摆放限制
	tChristmas2015_MakeSnowman_Data["FurnitureLimit"] = {}
	tChristmas2015_MakeSnowman_Data["FurnitureLimit"][2] = 8
	tChristmas2015_MakeSnowman_Data["FurnitureLimit"][3] = 9
	tChristmas2015_MakeSnowman_Data["FurnitureLimit"][4] = 10
	tChristmas2015_MakeSnowman_Data["FurnitureLimit"][5] = 12
	tChristmas2015_MakeSnowman_Data["FurnitureLimit"][6] = 20

--npc雪堆坐标
	local tChristmas2015_MakeSnowman_Position= {}
	tChristmas2015_MakeSnowman_Position["MapId"] = 1002
	tChristmas2015_MakeSnowman_Position[1] = {413,518}
	tChristmas2015_MakeSnowman_Position[2] = {417,527}
	tChristmas2015_MakeSnowman_Position[3] = {416,512}
--寻路到雪堆处
	tChristmas2015_MakeSnowman_Position["SnowPlace"] = {}
	tChristmas2015_MakeSnowman_Position["SnowPlace"][3007450] = {413,519}
--寻路到服装店老板
	tChristmas2015_MakeSnowman_Position["SnowPlace"][3007451] = {265,421}	
--寻路到胡萝卜	
	tChristmas2015_MakeSnowman_Position["SnowPlace"][3007452] = {338,625}
--寻路打怪
	tChristmas2015_MakeSnowman_Position["SnowPlace"][3007453] = {122,562}
--寻路树枝
	tChristmas2015_MakeSnowman_Position["SnowPlace"][3007454] = {407,591}

	-- tChristmas2015_MakeSnowman_Position["NpcId"] = 0
--物品id
local tChristmas2015_MakeSnowman_ItemId= {}
	tChristmas2015_MakeSnowman_ItemId[3007449] = 3007449
	tChristmas2015_MakeSnowman_ItemId[3007455] = 3007455
	--合成雪人物品
	tChristmas2015_MakeSnowman_ItemId["Snowman"] = {}
	tChristmas2015_MakeSnowman_ItemId["Snowman"][1] = {3007450,2}
	tChristmas2015_MakeSnowman_ItemId["Snowman"][2] = {3007451,1}
	tChristmas2015_MakeSnowman_ItemId["Snowman"][3] = {3007452,1}
	tChristmas2015_MakeSnowman_ItemId["Snowman"][4] = {3007453,2}
	tChristmas2015_MakeSnowman_ItemId["Snowman"][5] = {3007454,2}
	                                             
	--七色灵珠
	tChristmas2015_MakeSnowman_ItemId[1] = 3007456
	tChristmas2015_MakeSnowman_ItemId[2] = 3007457
	tChristmas2015_MakeSnowman_ItemId[3] = 3007458
	tChristmas2015_MakeSnowman_ItemId[4] = 3007459
	tChristmas2015_MakeSnowman_ItemId[5] = 3007460
	tChristmas2015_MakeSnowman_ItemId[6] = 3007461
	tChristmas2015_MakeSnowman_ItemId[7] = 3007462
	--雪人
	tChristmas2015_MakeSnowman_ItemId[3007463] = 3007463
	--堆好的雪人
	tChristmas2015_MakeSnowman_ItemId[3007547] = 3007547
	--七色雪人
	tChristmas2015_MakeSnowman_ItemId[3007456] = 3007464
	tChristmas2015_MakeSnowman_ItemId[3007457] = 3007465
	tChristmas2015_MakeSnowman_ItemId[3007458] = 3007466
	tChristmas2015_MakeSnowman_ItemId[3007459] = 3007467
	tChristmas2015_MakeSnowman_ItemId[3007460] = 3007468
	tChristmas2015_MakeSnowman_ItemId[3007461] = 3007469
	tChristmas2015_MakeSnowman_ItemId[3007462] = 3007470
	
--雪人npc外形
local tChristmas2015_MakeSnowman_Lookface = {}
	tChristmas2015_MakeSnowman_Lookface[3007463] = 38080
	tChristmas2015_MakeSnowman_Lookface[3007464] = 38150
	tChristmas2015_MakeSnowman_Lookface[3007465] = 38160
	tChristmas2015_MakeSnowman_Lookface[3007466] = 38170
	tChristmas2015_MakeSnowman_Lookface[3007467] = 38180
	tChristmas2015_MakeSnowman_Lookface[3007468] = 38200
	tChristmas2015_MakeSnowman_Lookface[3007469] = 38190
	tChristmas2015_MakeSnowman_Lookface[3007470] = 38210
--雪人家具链接id
local tChristmas2015_MakeSnowman_LinkId = {}
	tChristmas2015_MakeSnowman_LinkId[3007463] = 98556500
	tChristmas2015_MakeSnowman_LinkId[3007464] = 98556501
	tChristmas2015_MakeSnowman_LinkId[3007465] = 98556502
	tChristmas2015_MakeSnowman_LinkId[3007466] = 98556503
	tChristmas2015_MakeSnowman_LinkId[3007467] = 98556504
	tChristmas2015_MakeSnowman_LinkId[3007468] = 98556505
	tChristmas2015_MakeSnowman_LinkId[3007469] = 98556506
	tChristmas2015_MakeSnowman_LinkId[3007470] = 98556507
--采集需要的数量
local tChristmas2015_MakeSnowman_CollectNum = {}
	tChristmas2015_MakeSnowman_CollectNum[3007452] = 1
	tChristmas2015_MakeSnowman_CollectNum[3007454] = 2
	tChristmas2015_MakeSnowman_CollectNum[3007450] = 2
--掩码
local tChristmas2015_MakeSnowman_Stc = {}

--stc(138,00) =1 领取 =2 今天已完成
	tChristmas2015_MakeSnowman_Stc["Complete"] = {}
	tChristmas2015_MakeSnowman_Stc["Complete"]["EventType"] = 138
	tChristmas2015_MakeSnowman_Stc["Complete"]["DataType"] = 00
--打怪掉落雪灵球 一天只能获得一个
	tChristmas2015_MakeSnowman_Stc["MonsterDrop"] = {}
	tChristmas2015_MakeSnowman_Stc["MonsterDrop"]["EventType"] = 138
	tChristmas2015_MakeSnowman_Stc["MonsterDrop"]["DataType"] = 01
--拔萝卜3次必获得
	tChristmas2015_MakeSnowman_Stc["CarrotTime"] = {}
	tChristmas2015_MakeSnowman_Stc["CarrotTime"]["EventType"] = 138
	tChristmas2015_MakeSnowman_Stc["CarrotTime"]["DataType"] = 29

--log表
local tChristmas2015_MakeSnowman_Log = {}
	tChristmas2015_MakeSnowman_Log["GetShovel"] = "0,0,0,0,12000210,1,3007449[3007455],1[1]"
	tChristmas2015_MakeSnowman_Log["GetGift"] = "0,0,3007547[3007455],1,12000210,2,3003625[3007463],1[1]"
	tChristmas2015_MakeSnowman_Log["Money"] = "0,0,1,%d,12000210,3,%d,1"
	tChristmas2015_MakeSnowman_Log["Delete"] = "0,0,%d,1,12000210,3,0,0"
	tChristmas2015_MakeSnowman_Log["Snow"] = "0,0,3007449,1,12000210,2,3007450,1"
	tChristmas2015_MakeSnowman_Log["GetSnowman"] = "0,0,3007450[3007451][3007452][3007453][3007454],2[1][1][2][2],12000210,2,3007547,1"
	tChristmas2015_MakeSnowman_Log["GetMaterial"] = "0,0,0,0,12000210,2,%d,1"
	tChristmas2015_MakeSnowman_Log["DressSnowman"] = "0,0,%d[3007463],1[1],12000210,2,%d,1"
	tChristmas2015_MakeSnowman_Log["LogId"] = 12000210
	tChristmas2015_MakeSnowman_Log["FestivalId"] = 3471

local tChristmas2015_MakeSnowman_Dialogue = {}
	tChristmas2015_MakeSnowman_Dialogue[3007449]= {"3-4","3-6"}
	tChristmas2015_MakeSnowman_Dialogue[3007455]= {"5-1","6-1"}

----------------------------------------npc逻辑部分-------------------------------------------
--我要堆雪人！
function Christmas2015_MakeSnowman_Snowman(nNpcId)
	local nCompleteEvent = tChristmas2015_MakeSnowman_Stc["Complete"]["EventType"]
	local nCompleteData = tChristmas2015_MakeSnowman_Stc["Complete"]["DataType"]

--判断活动时间
	if not Sys_ChkFullTime(tChristmas2015_MakeSnowman_Data["Now_Time"]) then
		return
	end
--判断等级
	if not User_JudgeLevelAndMetempsychosis(tChristmas2015_MakeSnowman_Data["Level"],tChristmas2015_MakeSnowman_Data["Metempsychosis"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
--判断是否领过
	if Task_ChkStcValue(nCompleteEvent,nCompleteData,"==",1) then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
--判断是否有铲子
	if Item_ChkItem(tChristmas2015_MakeSnowman_ItemId[3007449]) then
		if Item_DelItem(tChristmas2015_MakeSnowman_ItemId[3007449]) then
		end
	end
--判断是否有雪人配方
	if Item_ChkItem(tChristmas2015_MakeSnowman_ItemId[3007455]) then
		if Item_DelItem(tChristmas2015_MakeSnowman_ItemId[3007455]) then
		end
	end
--判断背包空间
	if not User_CheckLeftSpace(tChristmas2015_MakeSnowman_Data["Space2"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-5")
		return
	end
--成功领取
	Task_SetStatistic(nCompleteEvent,nCompleteData,1,1)
	Task_SetStcTimestamp(nCompleteEvent,nCompleteData,0)
	
	Sys_SaveActionFestivalLog(tChristmas2015_MakeSnowman_Log["GetShovel"])
	Item_AddItem(tChristmas2015_MakeSnowman_ItemId[3007455])
	Item_AddItem(tChristmas2015_MakeSnowman_ItemId[3007449])
	LinkNpcGossipFunc_New(nNpcId,"3-3")

end
--补领铲子、雪人配方
function Christmas2015_MakeSnowman_Replace(nNpcId,nItem)
--判断活动时间
	if not Sys_ChkFullTime(tChristmas2015_MakeSnowman_Data["Now_Time"]) then
		return
	end
--铲子
	if nItem == tChristmas2015_MakeSnowman_ItemId[3007449] then
	-- 已经有2个雪球
		if Item_ChkAccItem(tChristmas2015_MakeSnowman_ItemId["Snowman"][1][1],2) then
			User_TalkChannel2005(tChristmas2015_MakeSnowman_Text["MsgBox"]["NotUseShovel"])
			return
		end
	end
--检测物品
	if Item_ChkItem(tChristmas2015_MakeSnowman_ItemId[nItem]) then
		LinkNpcGossipFunc_New(nNpcId,tChristmas2015_MakeSnowman_Dialogue[nItem][1])
		return
	end

	if not User_CheckLeftSpace(tChristmas2015_MakeSnowman_Data["Space"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-5")
		return
	end
	Item_AddItem(tChristmas2015_MakeSnowman_ItemId[nItem])
	LinkNpcGossipFunc_New(nNpcId,tChristmas2015_MakeSnowman_Dialogue[nItem][2])
end
--我要圣诞礼物
function Christmas2015_MakeSnowman_GetGift(nNpcId)
	local nCompleteEvent = tChristmas2015_MakeSnowman_Stc["Complete"]["EventType"]
	local nCompleteData = tChristmas2015_MakeSnowman_Stc["Complete"]["DataType"]

	--判断活动时间
	if not Sys_ChkFullTime(tChristmas2015_MakeSnowman_Data["Now_Time"]) then
		return
	end
--判断等级
	if not User_JudgeLevelAndMetempsychosis(tChristmas2015_MakeSnowman_Data["Level"],tChristmas2015_MakeSnowman_Data["Metempsychosis"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
--判断是否领取过奖励
	if Task_ChkStcValue(nCompleteEvent,nCompleteData,">=",2) then
		LinkNpcGossipFunc_New(nNpcId,"3-7")
		return
	end
--检测是否有有雪人
	if not Item_ChkItem(tChristmas2015_MakeSnowman_ItemId[3007547]) then
		LinkNpcGossipFunc_New(nNpcId,"3-8")
		return
	end
--判断背包空间
	if not User_CheckLeftSpace(tChristmas2015_MakeSnowman_Data["Space"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-5")
		return
	end
--删除雪人配方
	if  Item_ChkItem(tChristmas2015_MakeSnowman_ItemId[3007455]) and Item_DelItem(tChristmas2015_MakeSnowman_ItemId[3007455]) then
	end 
--删除铲子
	if  Item_ChkItem(tChristmas2015_MakeSnowman_ItemId[3007449]) and Item_DelItem(tChristmas2015_MakeSnowman_ItemId[3007449]) then
	end 

--领取奖励
	if Item_DelItem(tChristmas2015_MakeSnowman_ItemId[3007547]) then
		Task_SetStatistic(nCompleteEvent,nCompleteData,2,1)
		Task_SetStcTimestamp(nCompleteEvent,nCompleteData,0)
		Sys_SaveActionFestivalLog(tChristmas2015_MakeSnowman_Log["GetGift"])
		Item_AddItem(tChristmas2015_MakeSnowman_ItemId[3007463])
		FestivalGeneralPackage_GetGift(tChristmas2015_MakeSnowman_Log["FestivalId"],tChristmas2015_MakeSnowman_Log["LogId"])
		User_EffectAdd("self",tChristmas2015_MakeSnowman_Data["RewardEffect"])
		LinkNpcGossipFunc_New(nNpcId,"3-9")
	end
end
--购买雪人装饰
function Christmas2015_MakeSnowman_BuyDecoration(nNpcId,nItemId)
	--判断活动时间
	local nMoney = 0
	if not Sys_ChkFullTime(tChristmas2015_MakeSnowman_Data["Now_Time"]) then
		return
	end
--橙色雪灵珠（5万银两）
	if nItemId == tChristmas2015_MakeSnowman_ItemId[1] then
		 nMoney = tChristmas2015_MakeSnowman_Data["OrangeMoney"]
--其他雪灵珠 （3万银两）
	else
		 nMoney = tChristmas2015_MakeSnowman_Data["OtherMoney"]
	end
	local nMon = math.abs(nMoney)
	local sStr = string.format(tChristmas2015_MakeSnowman_Text[18825]["Text421"],nMon,tChristmas2015_MakeSnowman_Text["Color"][nItemId])
	Sys_DialogText(sStr)
	Sys_DialogOption(tChristmas2015_MakeSnowman_Text[18825]["Option30"],"</F>Christmas2015_MakeSnowman_Buy</N>" .. nNpcId .. "</N>" .. nItemId.. "</N>" .. nMoney.. "</N>" .. nMon)
	Sys_DialogOption(tChristmas2015_MakeSnowman_Text[18825]["Option31"],"</F>NULL")
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end
function Christmas2015_MakeSnowman_Buy(nNpcId,nItemId,nMoney,nMon)
--判断背包空间
	if not User_CheckLeftSpace(tChristmas2015_MakeSnowman_Data["Space"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-5")
		return
	end
--判断背包金币数
	if User_CanPutMoney2Bag(nMoney) then
		User_AddMoney(nMoney)
		Item_AddItem(nItemId)
		local sLog = string.format(tChristmas2015_MakeSnowman_Log["Money"],nMon,nItemId)
		Sys_SaveActionFestivalLog(sLog)
		local sStr = string.format(tChristmas2015_MakeSnowman_Text[18825]["Text431"],tChristmas2015_MakeSnowman_Text["Color"][nItemId])
		Sys_DialogText(sStr)
		Sys_DialogOption(tChristmas2015_MakeSnowman_Text[18825]["Option32"],"</F>NULL")
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
	else
	--银两不足
		local sNotMoneyStr = string.format(tChristmas2015_MakeSnowman_Text[18825]["Text411"],tChristmas2015_MakeSnowman_Text["Color"][nItemId])
		Sys_DialogText(sNotMoneyStr)
		Sys_DialogOption(tChristmas2015_MakeSnowman_Text[18825]["Option29"],"</F>NULL")
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
	end
end 

--服装店老板 18826
function Christmas2015_MakeSnowman_ChristmasHat(nNpcId)
	local nCompleteEvent = tChristmas2015_MakeSnowman_Stc["Complete"]["EventType"]
	local nCompleteData = tChristmas2015_MakeSnowman_Stc["Complete"]["DataType"]

	--判断活动时间
	if not Sys_ChkFullTime(tChristmas2015_MakeSnowman_Data["Now_Time"]) then
		return
	end
--判断等级
	if not User_JudgeLevelAndMetempsychosis(tChristmas2015_MakeSnowman_Data["Level"],tChristmas2015_MakeSnowman_Data["Metempsychosis"]) then
		LinkNpcGossipFunc_New(nNpcId,"5-1")
		return
	end
	if Task_ChkStcValue(nCompleteEvent,nCompleteData,"==",1) then
--判断是否有圣诞帽
		if Item_ChkItem(tChristmas2015_MakeSnowman_ItemId["Snowman"][2][1]) then
			LinkNpcGossipFunc_New(nNpcId,"2-1")
			return
		end
--判断背包空间
		if not User_CheckLeftSpace(tChristmas2015_MakeSnowman_Data["Space"]) then
			LinkNpcGossipFunc_New(nNpcId,"3-1")
			return
		end
--领取成功
		Item_AddItem(tChristmas2015_MakeSnowman_ItemId["Snowman"][2][1])
		local sHatLog = string.format(tChristmas2015_MakeSnowman_Log["GetMaterial"],tChristmas2015_MakeSnowman_ItemId["Snowman"][2][1])
		Sys_SaveActionFestivalLog(sHatLog)
		LinkNpcGossipFunc_New(nNpcId,"4-1")
		Christmas2015_MakeSnowman_Box()
	end
end 

--采集npc
function Christmas2015_MakeSnowman_Colect(nItem)
	
	local nCompleteEvent = tChristmas2015_MakeSnowman_Stc["Complete"]["EventType"]
	local nCompleteData = tChristmas2015_MakeSnowman_Stc["Complete"]["DataType"]

	--判断活动时间
	local nNeedNum = tChristmas2015_MakeSnowman_CollectNum[nItem]
	if not Sys_ChkFullTime(tChristmas2015_MakeSnowman_Data["Now_Time"]) then
		return
	end
	--判断是否接任务
	if Task_ChkStcValue(nCompleteEvent,nCompleteData,"==",1) then
	--已采集
		if Item_ChkAccItem(nItem,nNeedNum) then
			User_TalkChannel2005(tChristmas2015_MakeSnowman_Text["Collect"][nItem])
			return
		end
--采集胡萝卜
		if nItem == tChristmas2015_MakeSnowman_ItemId["Snowman"][3][1] then
		--检测背包空间
			if not User_CheckLeftSpace(tChristmas2015_MakeSnowman_Data["Space"]) then
				User_TalkChannel2005(tChristmas2015_MakeSnowman_Text["MsgBox"]["BagFull"])
				return
			end
			User_SetExplore(2,tChristmas2015_MakeSnowman_Text["MsgBox"]["CollectCarrot"],220,"Christmas2015_MakeSnowman_GetCarrotsRandom</N>"..nItem)
			local sCarrotLog = string.format(tChristmas2015_MakeSnowman_Log["GetMaterial"],nItem)
			Sys_SaveActionFestivalLog(sCarrotLog)
			return
		end
	--采集雪球
		if nItem == tChristmas2015_MakeSnowman_ItemId["Snowman"][1][1] then
	--背包没有铲子
			if not Item_ChkItem(tChristmas2015_MakeSnowman_ItemId[3007449]) then
				User_TalkChannel2005(tChristmas2015_MakeSnowman_Text["MsgBox"]["NOtShovel"])
				return
			end
			Christmas2015_MakeSnowman_Snowboll(nItem)
			return
		end
--采集树枝
--第1次采集树枝
		if not Item_ChkItem(nItem) then
			if not User_CheckLeftSpace(tChristmas2015_MakeSnowman_Data["Space"]) then
				User_TalkChannel2005(tChristmas2015_MakeSnowman_Text["MsgBox"]["BagFull"])
				return
			end
		end
		User_SetExplore(2,tChristmas2015_MakeSnowman_Text["MsgBox"]["CollectTreebranch"],220,"Christmas2015_MakeSnowman_GetMaterial</N>"..nItem)
		local sTreebranchLog = string.format(tChristmas2015_MakeSnowman_Log["GetMaterial"],nItem)
		Sys_SaveActionFestivalLog(sTreebranchLog)
	end
end
--采集胡萝卜读条
function Christmas2015_MakeSnowman_GetCarrotsRandom(nItem,nUserId)
	local nCarrotTimeEvent = tChristmas2015_MakeSnowman_Stc["CarrotTime"]["EventType"]
	local nCarrotTimeData = tChristmas2015_MakeSnowman_Stc["CarrotTime"]["DataType"]

	local nNum = math.random(1,100)
	--40%概率采集到胡萝卜
	if nNum <= tChristmas2015_MakeSnowman_Data["CarrotsRandom"] then
	Christmas2015_MakeSnowman_GetCarrots(nItem,nCarrotTimeEvent,nCarrotTimeData,nUserId)
		return
	end
	if Task_ChkStcValue(nCarrotTimeEvent,nCarrotTimeData,"<",2,nUserId) then
		Task_AddStatistic(nCarrotTimeEvent,nCarrotTimeData,1,1,nUserId)
		local nNumber = math.random(1,3)
		Sys_MsgBox(tChristmas2015_MakeSnowman_Text["Collect"][nNumber],"NULL","NULL",nUserId)
	else
		Christmas2015_MakeSnowman_GetCarrots(nItem,nCarrotTimeEvent,nCarrotTimeData,nUserId)
	end
end 
--获得胡萝卜
function Christmas2015_MakeSnowman_GetCarrots(nItem,nCarrotTimeEvent,nCarrotTimeData,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	Task_SetStatistic(nCarrotTimeEvent,nCarrotTimeData,0,1,nUserId)
	Task_SetStcTimestamp(nCarrotTimeEvent,nCarrotTimeData,0,nUserId)
	if not User_CheckLeftSpace(tChristmas2015_MakeSnowman_Data["Space"],nUserId) then
		User_TalkChannel2005(tChristmas2015_MakeSnowman_Text["MsgBox"]["BagFull"],nUserId)
		return
	end
	-- Item_AddItem(nItem)
	Item_AddNewItem(nItem,"0 1",nUserId)
	if Christmas2015_MakeSnowman_ChkItem(nUserId) then
		Sys_MsgBox(tChristmas2015_MakeSnowman_Text["MsgBox"]["COlletFull"],"NULL","NULL",nUserId)
		return
	end
	Sys_MsgBox(tChristmas2015_MakeSnowman_Text["Collect"]["GetCarrot"],"NULL","NULL",nUserId)
end
--寻路到材料处
function Christmas2015_MakeSnowman_GotoSnowPlace(nItem,nNpcId)
	Sys_GotoSomeWhere(tChristmas2015_MakeSnowman_Position["SnowPlace"][nItem][1],tChristmas2015_MakeSnowman_Position["SnowPlace"][nItem][2],tChristmas2015_MakeSnowman_Position["MapId"],nNpcId)
end

-- =2且隔天
function Christmas2015_MakeSnowman_StcReset(nCompleteEvent,nCompleteData)
	local nCarrotTimeEvent = tChristmas2015_MakeSnowman_Stc["CarrotTime"]["EventType"]
	local nCarrotTimeData = tChristmas2015_MakeSnowman_Stc["CarrotTime"]["DataType"]
	local nMonsterDropEvent = tChristmas2015_MakeSnowman_Stc["MonsterDrop"]["EventType"]
	local nMonsterDropData = tChristmas2015_MakeSnowman_Stc["MonsterDrop"]["DataType"]

	if Task_ChkStcValue(nCompleteEvent,nCompleteData,">=",2) and Task_StcInterval(nCompleteEvent,nCompleteData,1,4) then
		Task_SetStatistic(nCompleteEvent,nCompleteData,0,1)
		Task_SetStcTimestamp(nCompleteEvent,nCompleteData,0)
		Task_SetStatistic(nMonsterDropEvent,nMonsterDropData,0,1)
		Task_SetStcTimestamp(nMonsterDropEvent,nMonsterDropData,0)
		Task_SetStatistic(nCarrotTimeEvent,nCarrotTimeData,0,1)
		Task_SetStcTimestamp(nCarrotTimeEvent,nCarrotTimeData,0)

		return true
	end
end
--收集满出弹框
function Christmas2015_MakeSnowman_Box(nUserId)
	if Christmas2015_MakeSnowman_ChkItem(nUserId) then
		Sys_MsgBox(tChristmas2015_MakeSnowman_Text["MsgBox"]["COlletFull"],"NULL","NULL",nUserId)
	end
end
function Christmas2015_MakeSnowman_Snowboll(nItem)
	local nItemId = tChristmas2015_MakeSnowman_ItemId[3007449]
--第二次获得雪球
	if Item_ChkItem(nItem) and Item_DelItem(nItemId) then
		User_SetExplore(1,tChristmas2015_MakeSnowman_Text["MsgBox"]["SnowBoll"],220,"Christmas2015_MakeSnowman_GetMaterial</N>"..nItem)
		Sys_SaveActionFestivalLog(tChristmas2015_MakeSnowman_Log["Snow"])
		return
	end
---第一次获得雪球
	if not User_CheckLeftSpace(tChristmas2015_MakeSnowman_Data["Space"]) then
		User_TalkChannel2005(tChristmas2015_MakeSnowman_Text["MsgBox"]["BagFull"])
		return
	end
	User_SetExplore(1,tChristmas2015_MakeSnowman_Text["MsgBox"]["SnowBoll"],220,"Christmas2015_MakeSnowman_GetMaterial</N>"..nItem)
	local SnowBollLog = string.format(tChristmas2015_MakeSnowman_Log["GetMaterial"],nItem)
	Sys_SaveActionFestivalLog(SnowBollLog)
end
--读条
function Christmas2015_MakeSnowman_GetMaterial(nItem,nUserId)
	if not User_CheckLeftSpace(tChristmas2015_MakeSnowman_Data["Space"],nUserId) then
		User_TalkChannel2005(tChristmas2015_MakeSnowman_Text["MsgBox"]["BagFull"],nUserId)
		return
	end
	-- Item_AddItem(nItem)
	Item_AddNewItem(nItem,"0 1",nUserId)
	User_TalkChannel2005(tChristmas2015_MakeSnowman_Text["MsgBox"][nItem],nUserId)
	Christmas2015_MakeSnowman_Box(nUserId)
end

----------------------------------------------物品逻辑部分------------------------------------------
--铲子
function Christmas2015_MakeSnowman_UseShovel(nItemId)
	--判断时间
	if not Sys_ChkFullTime(tChristmas2015_MakeSnowman_Data["Now_Time"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		end
		local sLog = string.format(tChristmas2015_MakeSnowman_Log["Delete"],nItemId)
		Sys_SaveActionFestivalLog(sLog)
		User_TalkChannel2005(tChristmas2015_MakeSnowman_Text["MsgBox"]["OverTime"])
		return
	end 
end

--点击物品，合成雪人
function Christmas2015_MakeSnowman_MakeSnowman(nItemId)
--判断活动时间
	if not Sys_ChkFullTime(tChristmas2015_MakeSnowman_Data["Now_Time"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		end
		local sLog = string.format(tChristmas2015_MakeSnowman_Log["Delete"],nItemId)
		Sys_SaveActionFestivalLog(sLog)
		User_TalkChannel2005(tChristmas2015_MakeSnowman_Text["MsgBox"]["OverTime"])
		return
	end
--获得雪人
	if Christmas2015_MakeSnowman_ChkItem() then
		for i=1,5 do
			local nStartItem = tChristmas2015_MakeSnowman_ItemId["Snowman"][i][1]
			if Item_DelAllItemByType(nStartItem) then 
			end
		end
		Item_AddItem(tChristmas2015_MakeSnowman_ItemId[3007547])
		User_EffectAdd("self",tChristmas2015_MakeSnowman_Data["SnowEffect"])
		Sys_SaveActionFestivalLog(tChristmas2015_MakeSnowman_Log["GetSnowman"])
		Sys_MsgBox(tChristmas2015_MakeSnowman_Text["MsgBox"]["GetSnowman"],"Christmas2015_MakeSnowman_FindroadNpc")

	else
	User_TalkChannel2005(tChristmas2015_MakeSnowman_Text["MsgBox"]["NotGetSnowman"])
	end
end
--检测物品
function Christmas2015_MakeSnowman_ChkItem(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	for k,v in ipairs(tChristmas2015_MakeSnowman_ItemId["Snowman"]) do 
		local nItem = tChristmas2015_MakeSnowman_ItemId["Snowman"][k][1]
		local nNeedNum = tChristmas2015_MakeSnowman_ItemId["Snowman"][k][2]
		if not Item_ChkAccItem(nItem,nNeedNum,0,nUserId) then
			return false
		end
	end
	return true
end


--使用装饰品
function Christmas2015_MakeSnowman_UseDecoration(nItemId)
	if not Sys_ChkFullTime(tChristmas2015_MakeSnowman_Data["Now_Time"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		end
		local sLog = string.format(tChristmas2015_MakeSnowman_Log["Delete"],nItemId)
		Sys_SaveActionFestivalLog(sLog)
		User_TalkChannel2005(tChristmas2015_MakeSnowman_Text["MsgBox"]["OverTime"])
		return
	end
	local sBollStr = string.format(tChristmas2015_MakeSnowman_Text["MsgBox"]["UseBoll"],tChristmas2015_MakeSnowman_Text["Color"][nItemId])
	Sys_MsgBox(sBollStr,"Christmas2015_MakeSnowman_DecorateSnowman</N>".. nItemId)
end
function Christmas2015_MakeSnowman_DecorateSnowman(nItemId)
	local nItem = tChristmas2015_MakeSnowman_ItemId[3007463]
	if not Item_ChkItem(nItem) then
		User_TalkChannel2005(tChristmas2015_MakeSnowman_Text["MsgBox"]["NotSnowman"])
		return
	end
	if Item_ChkItem(nItemId) then
		if Item_DelItem(nItemId) and Item_DelItem(nItem) then
			local sColor= tChristmas2015_MakeSnowman_Text["Color"][nItemId]
			Item_AddItem(tChristmas2015_MakeSnowman_ItemId[nItemId])
			local sLogid = string.format(tChristmas2015_MakeSnowman_Log["DressSnowman"],nItemId,tChristmas2015_MakeSnowman_ItemId[nItemId])
			Sys_SaveActionFestivalLog(sLogid)
			local sStr = string.format(tChristmas2015_MakeSnowman_Text["MsgBox"]["DressSnowman"],sColor,sColor)
			User_TalkChannel2005(sStr)
		end
	end
end
--雪人家具
function Christmas2015_MakeSnowman_UseSnowmanFurniture(nItemId)
	local nCompleteEvent = tChristmas2015_MakeSnowman_Stc["Complete"]["EventType"]
	local nCompleteData = tChristmas2015_MakeSnowman_Stc["Complete"]["DataType"]

	if not Sys_ChkFullTime(tChristmas2015_MakeSnowman_Data["Now_Time"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		end
		local sLog = string.format(tChristmas2015_MakeSnowman_Log["Delete"],nItemId)
		Sys_SaveActionFestivalLog(sLog)
		User_TalkChannel2005(tChristmas2015_MakeSnowman_Text["MsgBox"]["OverTime"])
		return
	end
	Sys_DialogText(tChristmas2015_MakeSnowman_Text["Text111"][3007463])
	Sys_DialogOption(tChristmas2015_MakeSnowman_Text["Text111"]["Option2"],"</F>Christmas2015_MakeSnowman_SnowmanFurniture</N>" .. nItemId)
	Sys_DialogOption(tChristmas2015_MakeSnowman_Text["Text111"]["Option3"],"</F>NULL")
	Sys_DialogEnd()
end 
function Christmas2015_MakeSnowman_SnowmanFurniture(nItemId)
	--判断是否在房屋内使用
	local nHouseType = tChristmas2015_MakeSnowman_Data["House_Type"]
	local nPlayerId = Get_UserId()
	local nUserMapType = Get_MapType()
	local nMapLev = Get_MapResLev(nNowMapId)
	if not Sys_ParseNumbersContain(nHouseType,nUserMapType) then
		User_TalkChannel2005(tChristmas2015_MakeSnowman_Text["MsgBox"]["NotHouse"])
		return
	end
	
	local nMapOwnerId = Get_MapOwnerId()
	if nMapOwnerId ~= nPlayerId then
		User_TalkChannel2005(tChristmas2015_MakeSnowman_Text["Furniture"]["TalkError1"])
		return
	end
	local nFurnitureLimit = 0
	if 2 <= nMapLev and nMapLev <= 6 then
		nFurnitureLimit = tChristmas2015_MakeSnowman_Data["FurnitureLimit"][nMapLev]
	else
		Sys_DialogText(tChristmas2015_MakeSnowman_Text["Furniture"]["Text"])
		Sys_DialogOption(tChristmas2015_MakeSnowman_Text["Furniture"]["Option"])
		Sys_DialogEnd()
		return
	end
	--判断玩家房子内的家具数量
	if Get_NpcCount() >= nFurnitureLimit then
		local sErrorTip = string.format(tChristmas2015_MakeSnowman_Text["Furniture"]["TalkError2"],nMapLev,tChristmas2015_MakeSnowman_Data["FurnitureLimit"][nMapLev])
		User_TalkChannel2005(sErrorTip)
		return
	end

	Npc_RequestLayNpcByItem("Christmas2015_MakeSnowman_CreateNpc</N>" .. nItemId,2,tChristmas2015_MakeSnowman_Lookface[nItemId],0,nPlayerId)

end
--雪人npc
function Christmas2015_MakeSnowman_CreateNpc(nItemId)
	if Npc_CreatLayNpcByItem(tChristmas2015_MakeSnowman_Text["Name"][nItemId],2,32,tChristmas2015_MakeSnowman_Lookface[nItemId],0,0,0,0,0,tChristmas2015_MakeSnowman_LinkId[nItemId]) then 
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_TalkChannel2005(tChristmas2015_MakeSnowman_Text["MsgBox"]["SnowmanNpc"])
			return
		end
	end
	return
end
--点击家具时，过期删除当前家具npc
function Christmas2015_MakeSnowman_DelNpcItem(nItemId)
	if not Sys_ChkFullTime(tChristmas2015_MakeSnowman_Data["Now_Time"]) then
		Npc_DelDynaByID()
		User_TalkChannel2005(tChristmas2015_MakeSnowman_Text["MsgBox"]["DeleteSnowman"])
		return
	end
	Sys_DialogText(tChristmas2015_MakeSnowman_Text["Snowman"]["Text"])
	Sys_DialogOption(tChristmas2015_MakeSnowman_Text["Snowman"]["Option1"],"</F>Christmas2015_MakeSnowman_FoldFurniture</N>"..nItemId)
	Sys_DialogOption(tChristmas2015_MakeSnowman_Text["Snowman"]["Option2"],"</F>NULL")
	Sys_DialogEnd()
end

--收起家具
function Christmas2015_MakeSnowman_FoldFurniture(nItemId)
	if not Sys_ChkFullTime(tChristmas2015_MakeSnowman_Data["Now_Time"]) then
		Npc_DelDynaByID()
		return
	end
	local nPlayerId = Get_UserId()
	local nMapOwnerId = Get_MapOwnerId()
	if nMapOwnerId ~= nPlayerId then
		return
	end
	if not User_CheckLeftSpace(tChristmas2015_MakeSnowman_Data["Space"]) then
		User_TalkChannel2005(tChristmas2015_MakeSnowman_Text["MsgBox"]["BagFull"])
		return
	end
	Npc_DelDynaByID()
	Item_AddItem(nItemId)
end
--堆好的雪人
function Christmas2015_MakeSnowman_UseMakeSnowman(nItemId)
	Sys_MsgBox(tChristmas2015_MakeSnowman_Text["MsgBox"]["FindRoad"],"Christmas2015_MakeSnowman_FindroadNpc")
end
--自动寻路，找圣诞老人 18825 1002,300,360
function Christmas2015_MakeSnowman_FindroadNpc(nItemId)
	local nMap = tChristmas2015_MakeSnowman_Data["TwinCity_Type"]
	local nNpcX = tChristmas2015_MakeSnowman_Data["NpcX"]
	local nNpcY = tChristmas2015_MakeSnowman_Data["NpcY"]
	Sys_GotoSomeWhere(nNpcX,nNpcY,nMap,tChristmas2015_MakeSnowman_Data["NpcId"])
end
---------------------------------------怪物逻辑-----------------------------------------
function Christmas2015_MakeSnowman_DropItem(nMonsterTypeId)
	local nMonsterDropEvent = tChristmas2015_MakeSnowman_Stc["MonsterDrop"]["EventType"]
	local nMonsterDropData = tChristmas2015_MakeSnowman_Stc["MonsterDrop"]["DataType"]
	local nCompleteEvent = tChristmas2015_MakeSnowman_Stc["Complete"]["EventType"]
	local nCompleteData = tChristmas2015_MakeSnowman_Stc["Complete"]["DataType"]
	--判断时间
	if not Sys_ChkFullTime(tChristmas2015_MakeSnowman_Data["Now_Time"]) then
		return
	end 
	--判断等级
	if not User_JudgeLevelAndMetempsychosis(tChristmas2015_MakeSnowman_Data["Level"],tChristmas2015_MakeSnowman_Data["Metempsychosis"]) then
		return
	end
	
	if Task_ChkStcValue(nCompleteEvent,nCompleteData,"~=",1) then
		return
	end

--判断背包空间
	if not User_CheckLeftSpace(tChristmas2015_MakeSnowman_Data["Space"]) then
		return
	end
	--雪灵球
	if Task_ChkStcValue(nMonsterDropEvent,nMonsterDropData,"<",1) then
		local nRandom = math.random(1,100)
		local nItemNum = math.random(1,7)
		local nBollItem = tChristmas2015_MakeSnowman_ItemId[nItemNum]
		if nRandom <= tChristmas2015_MakeSnowman_Data["BollRandom"] then
			Task_SetStatistic(nMonsterDropEvent,nMonsterDropData,1,1)
			Task_SetStcTimestamp(nMonsterDropEvent,nMonsterDropData,0)
			Item_AddItem(nBollItem)
			local sBollLog = string.format(tChristmas2015_MakeSnowman_Log["GetMaterial"],nBollItem)
			Sys_SaveActionFestivalLog(sBollLog)
			local sBollMsg = string.format(tChristmas2015_MakeSnowman_Text["MsgBox"]["CollectBoll"],tChristmas2015_MakeSnowman_Text["Color"][nBollItem])
			Sys_MsgBox(sBollMsg)
		end
	end
	--纽扣
	if nMonsterTypeId == tChristmas2015_MakeSnowman_Data["MonsterId"] then
		if Item_ChkAccItem(tChristmas2015_MakeSnowman_ItemId["Snowman"][4][1],tChristmas2015_MakeSnowman_ItemId["Snowman"][4][2]) then
			return
		end
		local nRandom = math.random(1,100)
		if nRandom <= tChristmas2015_MakeSnowman_Data["ButtonsRandom"] then
			Item_AddItem(tChristmas2015_MakeSnowman_ItemId["Snowman"][4][1])
			local sButtonsLog = string.format(tChristmas2015_MakeSnowman_Log["GetMaterial"],tChristmas2015_MakeSnowman_ItemId["Snowman"][4][1])
			Sys_SaveActionFestivalLog(sButtonsLog)
			if Christmas2015_MakeSnowman_ChkItem() then
				Sys_MsgBox(tChristmas2015_MakeSnowman_Text["MsgBox"]["COlletFull"])
				return
			end
			Sys_MsgBox(tChristmas2015_MakeSnowman_Text["MsgBox"]["CollectButtons"])
		end
	end
end
--------------------------------------npc模板----------------------------------------------
--圣诞老人 18825
---NPC头像
tNpcFace[5780] = 197

tNpcGossip[18825] = tNpcGossip[18825] or DefaultNpc:new{}
tNpcGossip[18825]["OptionHidden"] = 1

--活动时间前
tNpcGossip[18825]["Text1-1"] = {111,112,113,114}
tNpcGossip[18825]["Text111"] = tChristmas2015_MakeSnowman_Text[18825]["Text111"]
tNpcGossip[18825]["Text112"] = tChristmas2015_MakeSnowman_Text[18825]["Text112"]
tNpcGossip[18825]["Text113"] = tChristmas2015_MakeSnowman_Text[18825]["Text113"]
tNpcGossip[18825]["Text114"] = tChristmas2015_MakeSnowman_Text[18825]["Text114"]
tNpcGossip[18825]["tOption1-1"] = {1}
tNpcGossip[18825]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tChristmas2015_MakeSnowman_Data["Bef_Time"])
end
tNpcGossip[18825]["Option1"] = tChristmas2015_MakeSnowman_Text[18825]["Option1"]

--活动时间中
tNpcGossip[18825]["Text1-2"] = {121,122,123,124}
tNpcGossip[18825]["Text121"] = tChristmas2015_MakeSnowman_Text[18825]["Text121"]
tNpcGossip[18825]["Text122"] = tChristmas2015_MakeSnowman_Text[18825]["Text122"]
tNpcGossip[18825]["Text123"] = tChristmas2015_MakeSnowman_Text[18825]["Text123"]
tNpcGossip[18825]["Text124"] = tChristmas2015_MakeSnowman_Text[18825]["Text124"]
tNpcGossip[18825]["tOption1-2"] = {2,3,4,5,6,7,8}
tNpcGossip[18825]["ChkFunc1-2"] = function()
	return Sys_ChkFullTime(tChristmas2015_MakeSnowman_Data["Now_Time"])
end
--我要堆雪人！
tNpcGossip[18825]["Option2"] = tChristmas2015_MakeSnowman_Text[18825]["Option2"]
tNpcGossip[18825]["OptionFunc2"]="Christmas2015_MakeSnowman_Snowman</N>18825"
tNpcGossip[18825]["OptionChkFunc2"] = function()
	local nCompleteEvent = tChristmas2015_MakeSnowman_Stc["Complete"]["EventType"]
	local nCompleteData = tChristmas2015_MakeSnowman_Stc["Complete"]["DataType"]
	if (Task_ChkStcValue(nCompleteEvent,nCompleteData,"<=",1)  or Christmas2015_MakeSnowman_StcReset(nCompleteEvent,nCompleteData)) then
		return true
	end
end
--补领铲子
tNpcGossip[18825]["Option3"] = tChristmas2015_MakeSnowman_Text[18825]["Option3"]
tNpcGossip[18825]["OptionFunc3"]="Christmas2015_MakeSnowman_Replace</N>18825</N>3007449"
tNpcGossip[18825]["OptionChkFunc3"] = function()
	local nCompleteEvent = tChristmas2015_MakeSnowman_Stc["Complete"]["EventType"]
	local nCompleteData = tChristmas2015_MakeSnowman_Stc["Complete"]["DataType"]
	if Task_ChkStcValue(nCompleteEvent,nCompleteData,"==",1) and (not Item_ChkItem(tChristmas2015_MakeSnowman_ItemId[3007547])) then
		return true
	end
end
--补领雪人配方
tNpcGossip[18825]["Option4"] = tChristmas2015_MakeSnowman_Text[18825]["Option17"]
tNpcGossip[18825]["OptionFunc4"]="Christmas2015_MakeSnowman_Replace</N>18825</N>3007455"
tNpcGossip[18825]["OptionChkFunc4"] = function()
	local nCompleteEvent = tChristmas2015_MakeSnowman_Stc["Complete"]["EventType"]
	local nCompleteData = tChristmas2015_MakeSnowman_Stc["Complete"]["DataType"]
	if Task_ChkStcValue(nCompleteEvent,nCompleteData,"==",1) and (not Item_ChkItem(tChristmas2015_MakeSnowman_ItemId[3007547])) then
		return true
	end
end

--购买雪人装饰
tNpcGossip[18825]["Option5"] = tChristmas2015_MakeSnowman_Text[18825]["Option4"]
tNpcGossip[18825]["OptionPoint5"]="2-1"
--我要圣诞礼物
tNpcGossip[18825]["Option6"] = tChristmas2015_MakeSnowman_Text[18825]["Option5"]
tNpcGossip[18825]["OptionFunc6"]="Christmas2015_MakeSnowman_GetGift</N>18825"
--怎么堆雪人呢
tNpcGossip[18825]["Option7"] = tChristmas2015_MakeSnowman_Text[18825]["Option6"]
tNpcGossip[18825]["OptionPoint7"]="2-2"
--圣诞快乐
tNpcGossip[18825]["Option8"] = tChristmas2015_MakeSnowman_Text[18825]["Option7"]

--活动后
tNpcGossip[18825]["Text1-3"] = {131}
tNpcGossip[18825]["Text131"] = tChristmas2015_MakeSnowman_Text[18825]["Text131"]
tNpcGossip[18825]["tOption1-3"] = {9}
tNpcGossip[18825]["Option9"] = tChristmas2015_MakeSnowman_Text[18825]["Option8"]
--购买雪人装饰
tNpcGossip[18825]["Text2-1"] = {211}
tNpcGossip[18825]["Text211"] = tChristmas2015_MakeSnowman_Text[18825]["Text211"]
tNpcGossip[18825]["tOption2-1"] = {10,11,12,13,14,15,16,17}
--橙色雪灵珠（5万银两） 3007456
tNpcGossip[18825]["Option10"] = tChristmas2015_MakeSnowman_Text[18825]["Option9"]
tNpcGossip[18825]["OptionFunc10"]="Christmas2015_MakeSnowman_BuyDecoration</N>18825</N>3007456"
--粉色雪灵珠（3万银两）
tNpcGossip[18825]["Option11"] = tChristmas2015_MakeSnowman_Text[18825]["Option10"]
tNpcGossip[18825]["OptionFunc11"]="Christmas2015_MakeSnowman_BuyDecoration</N>18825</N>3007457"
--红色雪灵珠（3万银两）
tNpcGossip[18825]["Option12"] = tChristmas2015_MakeSnowman_Text[18825]["Option11"]
tNpcGossip[18825]["OptionFunc12"]="Christmas2015_MakeSnowman_BuyDecoration</N>18825</N>3007458"
--黄色雪灵珠（3万银两）
tNpcGossip[18825]["Option13"] = tChristmas2015_MakeSnowman_Text[18825]["Option12"]
tNpcGossip[18825]["OptionFunc13"]="Christmas2015_MakeSnowman_BuyDecoration</N>18825</N>3007459"
--绿色雪灵珠（3万银两）
tNpcGossip[18825]["Option14"] = tChristmas2015_MakeSnowman_Text[18825]["Option13"]
tNpcGossip[18825]["OptionFunc14"]="Christmas2015_MakeSnowman_BuyDecoration</N>18825</N>3007460"
--蓝色雪灵珠（3万银两）
tNpcGossip[18825]["Option15"] = tChristmas2015_MakeSnowman_Text[18825]["Option14"]
tNpcGossip[18825]["OptionFunc15"]="Christmas2015_MakeSnowman_BuyDecoration</N>18825</N>3007461"
--紫色雪灵珠（3万银两）
tNpcGossip[18825]["Option16"] = tChristmas2015_MakeSnowman_Text[18825]["Option15"]
tNpcGossip[18825]["OptionFunc16"]="Christmas2015_MakeSnowman_BuyDecoration</N>18825</N>3007462"
--囊中羞涩
tNpcGossip[18825]["Option17"] = tChristmas2015_MakeSnowman_Text[18825]["Option16"]
--怎么堆雪人呢
tNpcGossip[18825]["Text2-2"] = {221,222,223}
tNpcGossip[18825]["Text221"] = tChristmas2015_MakeSnowman_Text[18825]["Text221"]
tNpcGossip[18825]["Text222"] = tChristmas2015_MakeSnowman_Text[18825]["Text222"]
tNpcGossip[18825]["Text223"] = tChristmas2015_MakeSnowman_Text[18825]["Text223"]
tNpcGossip[18825]["tOption2-2"] = {18,19}
--上一页
tNpcGossip[18825]["Option18"] = tChristmas2015_MakeSnowman_Text[18825]["Option18"]
tNpcGossip[18825]["OptionPoint18"]="1-2"
--我知道了
tNpcGossip[18825]["Option19"] = tChristmas2015_MakeSnowman_Text[18825]["Option19"]
--等级不足
tNpcGossip[18825]["Text3-1"] = {311}
tNpcGossip[18825]["Text311"] = tChristmas2015_MakeSnowman_Text[18825]["Text311"]
tNpcGossip[18825]["tOption3-1"] = {20}
tNpcGossip[18825]["Option20"] = tChristmas2015_MakeSnowman_Text[18825]["Option20"]
--已经领过
tNpcGossip[18825]["Text3-2"] = {321}
tNpcGossip[18825]["Text321"] = tChristmas2015_MakeSnowman_Text[18825]["Text321"]
tNpcGossip[18825]["tOption3-2"] = {21}
tNpcGossip[18825]["Option21"] = tChristmas2015_MakeSnowman_Text[18825]["Option21"]
--成功领取
tNpcGossip[18825]["Text3-3"] = {331,332}
tNpcGossip[18825]["Text331"] = tChristmas2015_MakeSnowman_Text[18825]["Text331"]
tNpcGossip[18825]["Text332"] = tChristmas2015_MakeSnowman_Text[18825]["Text332"]
tNpcGossip[18825]["tOption3-3"] = {22}
tNpcGossip[18825]["Option22"] = tChristmas2015_MakeSnowman_Text[18825]["Option22"]
tNpcGossip[18825]["OptionFunc22"]="Christmas2015_MakeSnowman_GotoSnowPlace</N>3007450</N>0"

--有铲子
tNpcGossip[18825]["Text3-4"] = {341}
tNpcGossip[18825]["Text341"] = tChristmas2015_MakeSnowman_Text[18825]["Text341"]
tNpcGossip[18825]["tOption3-4"] = {22}
tNpcGossip[18825]["Option23"] = tChristmas2015_MakeSnowman_Text[18825]["Option23"]
--背包满
tNpcGossip[18825]["Text3-5"] = {351}
tNpcGossip[18825]["Text351"] = tChristmas2015_MakeSnowman_Text[18825]["Text351"]
tNpcGossip[18825]["tOption3-5"] = {24}
tNpcGossip[18825]["Option24"] = tChristmas2015_MakeSnowman_Text[18825]["Option24"]
--补领成功
tNpcGossip[18825]["Text3-6"] = {361}
tNpcGossip[18825]["Text361"] = tChristmas2015_MakeSnowman_Text[18825]["Text361"]
tNpcGossip[18825]["tOption3-6"] = {25}
tNpcGossip[18825]["Option25"] = tChristmas2015_MakeSnowman_Text[18825]["Option25"]
--已领取过当天的奖励了
tNpcGossip[18825]["Text3-7"] = {371}
tNpcGossip[18825]["Text371"] = tChristmas2015_MakeSnowman_Text[18825]["Text371"]
tNpcGossip[18825]["tOption3-7"] = {26}
tNpcGossip[18825]["Option26"] = tChristmas2015_MakeSnowman_Text[18825]["Option26"]
--还没堆出雪人
tNpcGossip[18825]["Text3-8"] = {381}
tNpcGossip[18825]["Text381"] = tChristmas2015_MakeSnowman_Text[18825]["Text381"]
tNpcGossip[18825]["tOption3-8"] = {27}
tNpcGossip[18825]["Option27"] = tChristmas2015_MakeSnowman_Text[18825]["Option27"]
--成功领取奖励
tNpcGossip[18825]["Text3-9"] = {391}
tNpcGossip[18825]["Text391"] = tChristmas2015_MakeSnowman_Text[18825]["Text391"]
tNpcGossip[18825]["tOption3-9"] = {28}
tNpcGossip[18825]["Option28"] = tChristmas2015_MakeSnowman_Text[18825]["Option28"]
--已经有雪人配方
tNpcGossip[18825]["Text5-1"] = {511}
tNpcGossip[18825]["Text511"] = tChristmas2015_MakeSnowman_Text[18825]["Text511"]
tNpcGossip[18825]["tOption5-1"] = {30}
tNpcGossip[18825]["Option30"] = tChristmas2015_MakeSnowman_Text[18825]["Option33"]

--补领雪人配方成功
tNpcGossip[18825]["Text6-1"] = {611}
tNpcGossip[18825]["Text611"] = tChristmas2015_MakeSnowman_Text[18825]["Text611"]
tNpcGossip[18825]["tOption6-1"] = {31}
tNpcGossip[18825]["Option31"] = tChristmas2015_MakeSnowman_Text[18825]["Option34"]

--服装店老板 18826
---NPC头像
tNpcFace[3807] = 60

tNpcGossip[18826] = tNpcGossip[18826] or DefaultNpc:new{}
tNpcGossip[18826]["OptionHidden"] = 1
--活动中
tNpcGossip[18826]["Text1-1"] = {111,112}
tNpcGossip[18826]["Text111"] = tChristmas2015_MakeSnowman_Text[18826]["Text111"]
tNpcGossip[18826]["Text112"] = tChristmas2015_MakeSnowman_Text[18826]["Text112"]
tNpcGossip[18826]["tOption1-1"] = {1,2}
tNpcGossip[18826]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tChristmas2015_MakeSnowman_Data["Now_Time"])
end
tNpcGossip[18826]["Option1"] = tChristmas2015_MakeSnowman_Text[18826]["Option1"]
tNpcGossip[18826]["OptionFunc1"]="Christmas2015_MakeSnowman_ChristmasHat</N>18826"
tNpcGossip[18826]["Option2"] = tChristmas2015_MakeSnowman_Text[18826]["Option2"]
--活动外
tNpcGossip[18826]["Text1-2"] = {121}
tNpcGossip[18826]["Text121"] = tChristmas2015_MakeSnowman_Text[18826]["Text121"]
tNpcGossip[18826]["tOption1-2"] = {3}
tNpcGossip[18826]["ChkFunc1-2"] = function()
	return (not Sys_ChkFullTime(tChristmas2015_MakeSnowman_Data["Now_Time"]))
end
tNpcGossip[18826]["Option3"] = tChristmas2015_MakeSnowman_Text[18826]["Option3"]

--已经有圣诞帽
tNpcGossip[18826]["Text2-1"] = {211}
tNpcGossip[18826]["Text211"] = tChristmas2015_MakeSnowman_Text[18826]["Text211"]
tNpcGossip[18826]["tOption2-1"] = {4}
tNpcGossip[18826]["Option4"] = tChristmas2015_MakeSnowman_Text[18826]["Option4"]
----背包满
tNpcGossip[18826]["Text3-1"] = {311}
tNpcGossip[18826]["Text311"] = tChristmas2015_MakeSnowman_Text[18826]["Text311"]
tNpcGossip[18826]["tOption3-1"] = {5}
tNpcGossip[18826]["Option5"] = tChristmas2015_MakeSnowman_Text[18826]["Option5"]
--领取成功
tNpcGossip[18826]["Text4-1"] = {411}
tNpcGossip[18826]["Text411"] = tChristmas2015_MakeSnowman_Text[18826]["Text411"]
tNpcGossip[18826]["tOption4-1"] = {6}
tNpcGossip[18826]["Option6"] = tChristmas2015_MakeSnowman_Text[18826]["Option6"]
--等级不足
tNpcGossip[18826]["Text5-1"] = {511}
tNpcGossip[18826]["Text511"] = tChristmas2015_MakeSnowman_Text[18826]["Text511"]
tNpcGossip[18826]["tOption5-1"] = {7}
tNpcGossip[18826]["Option7"] = tChristmas2015_MakeSnowman_Text[18826]["Option7"]

-------------------------------------------物品模板---------------------------------------------
--铲子 3007449
tItem[3007449] = tItem[3007449] or {}
tItem[3007449]["Function"] = function(nItemId,sItemName)
	Christmas2015_MakeSnowman_UseShovel(nItemId)
end

--雪球 3007450
tItem[3007450] = tItem[3007450] or {}
tItem[3007450]["Function"] = function(nItemId,sItemName)
	Christmas2015_MakeSnowman_MakeSnowman(nItemId)
end
--圣诞帽 3007451-3007454
for i = 3007451,3007454 do
	tItem[i] = tItem[3007450]
end

-- 3007456  橙色雪灵珠
tItem[3007456] = tItem[3007456] or {}
tItem[3007456]["Function"] = function(nItemId,sItemName)
	Christmas2015_MakeSnowman_UseDecoration(nItemId)
end
-- 3007457-3007462
for i = 3007457,3007462 do
	tItem[i] = tItem[3007456]
end

-- 3007463 雪人
tItem[3007463] = tItem[3007463] or {}
tItem[3007463]["Function"] = function(nItemId,sItemName)
	Christmas2015_MakeSnowman_UseSnowmanFurniture(nItemId)
end
-- 3007464-3007470 七色雪人
for i = 3007464,3007470 do
	tItem[i] = tItem[3007463]
end

-- 3007547 堆好的雪人
tItem[3007547] = tItem[3007547] or {}
tItem[3007547]["Function"] = function(nItemId,sItemName)
	Christmas2015_MakeSnowman_UseMakeSnowman(nItemId)
end
-- 3007455 雪人配方
tItem[3007455] = tItem[3007455] or {}
tItem[3007455]["Text1-1"] = {111}
tItem[3007455]["Text111"] = tChristmas2015_MakeSnowman_Text[3007455]["Text111"] 
tItem[3007455]["tOption1-1"] = {1,2,3,4,5}
tItem[3007455]["Option1"] = tChristmas2015_MakeSnowman_Text[3007455]["Option1"]
tItem[3007455]["OptionFunc1"]="Christmas2015_MakeSnowman_GotoSnowPlace</N>3007450</N>0"

tItem[3007455]["Option2"] = tChristmas2015_MakeSnowman_Text[3007455]["Option2"]
tItem[3007455]["OptionFunc2"]="Christmas2015_MakeSnowman_GotoSnowPlace</N>3007452</N>0"

tItem[3007455]["Option3"] = tChristmas2015_MakeSnowman_Text[3007455]["Option3"]
tItem[3007455]["OptionFunc3"]="Christmas2015_MakeSnowman_GotoSnowPlace</N>3007454</N>0"

tItem[3007455]["Option4"] = tChristmas2015_MakeSnowman_Text[3007455]["Option4"]
tItem[3007455]["OptionFunc4"]="Christmas2015_MakeSnowman_GotoSnowPlace</N>3007453</N>0"

tItem[3007455]["Option5"] = tChristmas2015_MakeSnowman_Text[3007455]["Option5"]
tItem[3007455]["OptionFunc5"]="Christmas2015_MakeSnowman_GotoSnowPlace</N>3007451</N>18826"


--------------------------------------怪物掉落-------------------------------------------
-- local tChristmas2015_MakeSnowman_KillMonster = {}
-- tChristmas2015_MakeSnowman_KillMonster["ActivityTime"] = tChristmas2015_MakeSnowman_Data["Now_Time"]
-- tChristmas2015_MakeSnowman_KillMonster["Function"] = Christmas2015_MakeSnowman_DropItem
-- table.insert(tMonsterDrop_AreaLoad,tChristmas2015_MakeSnowman_KillMonster)