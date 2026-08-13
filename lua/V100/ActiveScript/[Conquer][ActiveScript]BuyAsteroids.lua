------------------------------------------------------------------------------------
--Name：            171220[英文征服][活动脚本]星陨石优惠购活动(1.02-1.08)
--Creator:      吴燕柚
--Created:     2017/12/20
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
-- stc
-- 162 17 记录每日二次确定屏蔽 1 是明亮   2是晶莹
-- 162 18 记录明亮星陨刷新的折扣
-- 162 19 记录晶莹星陨刷新的折扣
-- 162 41 背包信
-- 162 42 上线获得一张1小时时效晶莹星陨石6折优惠券
-- 162 47 每天第5次打开赤龙异宝获得2个碎片
----命名规范
-- tBuyAsteroids_

----------------------------------表配置部分--------------------------------------------
local tBuyAsteroids_Data = {}
	-- tBuyAsteroids_Data["Bef_Time"]= "2017-05-18 00:00 2017-07-17 23:59"
	-- tBuyAsteroids_Data["Now_Time"]= "2017-07-18 00:00 2017-07-24 23:59"
	tBuyAsteroids_Data["Bef_Time"]= tActivityTime["BuyAsteroids"]["Bef_Time"]
	tBuyAsteroids_Data["Now_Time"]= tActivityTime["BuyAsteroids"]["Now_Time"]
	
	tBuyAsteroids_Data["Count"] = 68  --68折
	tBuyAsteroids_Data["NpcId"] = 20872  --晶莹星陨Npc 
	
	tBuyAsteroids_Data["Item"] = {}
	tBuyAsteroids_Data["Item"][20871] = 3009001  --明亮星陨石
	tBuyAsteroids_Data["Item"][20872] = 3009002  --晶莹星陨石

	tBuyAsteroids_Data["Emoney"] = {}
	tBuyAsteroids_Data["Emoney"][20871] = 1  --明亮星陨石
	tBuyAsteroids_Data["Emoney"][20872] = 5  --晶莹星陨石

	tBuyAsteroids_Data["Num"] = {}  --二次确认屏蔽
	tBuyAsteroids_Data["Num"][20871] = 1  --明亮星陨石
	tBuyAsteroids_Data["Num"][20872] = 2  --晶莹星陨石

	tBuyAsteroids_Data["Need"] = {}
	tBuyAsteroids_Data["Need"][20871] = 70000  --7万金币
	tBuyAsteroids_Data["Need"][20872] = 3303852  --晶莹星陨68折券

	tBuyAsteroids_Data["Log"] = {}
	--过期删除物品
	tBuyAsteroids_Data["Log"]["OverTime"] = "0,0,%d,1,12000762,3,0,0"
	--金币跟晶莹星陨石折扣刷折扣log
	tBuyAsteroids_Data["Log"][1] = {}
	tBuyAsteroids_Data["Log"][1][20871] = "0,0,1,70000,12000762,1,0,0"----7万金币
	tBuyAsteroids_Data["Log"][1][20872] = "0,0,3303852,1,12000762,1,0,0"----折扣券

	--金币跟晶莹星陨石折扣刷折扣log
	tBuyAsteroids_Data["Log"][2] = {}
	tBuyAsteroids_Data["Log"][2][20871] = "0,0,2,1,12000762,1,0,0"
	tBuyAsteroids_Data["Log"][2][20872] = "0,0,2,5,12000762,1,0,0"

	
local tBuyAsteroids_Stc = {}
	tBuyAsteroids_Stc[1] = {}
	tBuyAsteroids_Stc[1]["EventType"] = 162
	tBuyAsteroids_Stc[1]["DataType"] = 17
	
	tBuyAsteroids_Stc[20871] = {}
	tBuyAsteroids_Stc[20871]["EventType"] = 162
	tBuyAsteroids_Stc[20871]["DataType"] = 18

	tBuyAsteroids_Stc[20872] = {}
	tBuyAsteroids_Stc[20872]["EventType"] = 162
	tBuyAsteroids_Stc[20872]["DataType"] = 19
	
	tBuyAsteroids_Stc[2] = {}
	tBuyAsteroids_Stc[2]["EventType"] = 162
	tBuyAsteroids_Stc[2]["DataType"] = 47
	tBuyAsteroids_Stc[2]["Data"] = 5
	
local tBuyAsteroids_Index = {}
	tBuyAsteroids_Index[20872] = {}
	tBuyAsteroids_Index[20872][90] = 360
	tBuyAsteroids_Index[20872][80] = 320
	tBuyAsteroids_Index[20872][70] = 280
	tBuyAsteroids_Index[20872][60] = 240
	tBuyAsteroids_Index[20872][50] = 200
	tBuyAsteroids_Index[20872][30] = 120
	tBuyAsteroids_Index[20872][10] = 40
	tBuyAsteroids_Index[20872][68] = 272

	tBuyAsteroids_Index[20871] = {}
	tBuyAsteroids_Index[20871][90] = 36
	tBuyAsteroids_Index[20871][80] = 32
	tBuyAsteroids_Index[20871][75] = 30
	tBuyAsteroids_Index[20871][70] = 28
	tBuyAsteroids_Index[20871][65] = 26
	tBuyAsteroids_Index[20871][60] = 24
	tBuyAsteroids_Index[20871][50] = 20


local tBuyAsteroids_Money = {}
---明亮星陨石
	tBuyAsteroids_Money[20871] = {}
	tBuyAsteroids_Money[20871]["ItemChanceSum"] = 10000

	tBuyAsteroids_Money[20871][1] = {}
	tBuyAsteroids_Money[20871][1]["RandomItemChanceType"] = 2
	tBuyAsteroids_Money[20871][1]["ItemChance"] = 1350
	tBuyAsteroids_Money[20871][1]["Item_1"] = 36
	tBuyAsteroids_Money[20871][1]["Percent"] = 90
	
	tBuyAsteroids_Money[20871][2] = {}
	tBuyAsteroids_Money[20871][2]["RandomItemChanceType"] = 2
	tBuyAsteroids_Money[20871][2]["ItemChance"] = 3000
	tBuyAsteroids_Money[20871][2]["Item_1"] = 32
	tBuyAsteroids_Money[20871][2]["Percent"] = 80
	
	tBuyAsteroids_Money[20871][3] = {}
	tBuyAsteroids_Money[20871][3]["RandomItemChanceType"] = 2
	tBuyAsteroids_Money[20871][3]["ItemChance"] = 2500
	tBuyAsteroids_Money[20871][3]["Item_1"] = 30
	tBuyAsteroids_Money[20871][3]["Percent"] = 75
	
	tBuyAsteroids_Money[20871][4] = {}
	tBuyAsteroids_Money[20871][4]["RandomItemChanceType"] = 2
	tBuyAsteroids_Money[20871][4]["ItemChance"] = 2500
	tBuyAsteroids_Money[20871][4]["Item_1"] = 28
	tBuyAsteroids_Money[20871][4]["Percent"] = 70
	
	tBuyAsteroids_Money[20871][5] = {}
	tBuyAsteroids_Money[20871][5]["RandomItemChanceType"] = 2
	tBuyAsteroids_Money[20871][5]["ItemChance"] = 500
	tBuyAsteroids_Money[20871][5]["Item_1"] = 26
	tBuyAsteroids_Money[20871][5]["Percent"] = 65
	
	tBuyAsteroids_Money[20871][6] = {}
	tBuyAsteroids_Money[20871][6]["RandomItemChanceType"] = 2
	tBuyAsteroids_Money[20871][6]["ItemChance"] = 100
	tBuyAsteroids_Money[20871][6]["Item_1"] = 24
	tBuyAsteroids_Money[20871][6]["Percent"] = 60
	
	tBuyAsteroids_Money[20871][7] = {}
	tBuyAsteroids_Money[20871][7]["RandomItemChanceType"] = 2
	tBuyAsteroids_Money[20871][7]["ItemChance"] = 50
	tBuyAsteroids_Money[20871][7]["Item_1"] = 20
	tBuyAsteroids_Money[20871][7]["Percent"] = 50
	
----晶莹星陨石
	tBuyAsteroids_Money[20872] = {}
	tBuyAsteroids_Money[20872]["ItemChanceSum"] = 10000

	tBuyAsteroids_Money[20872][1] = {}
	tBuyAsteroids_Money[20872][1]["RandomItemChanceType"] = 2
	tBuyAsteroids_Money[20872][1]["ItemChance"] = 1350
	tBuyAsteroids_Money[20872][1]["Item_1"] = 360
	tBuyAsteroids_Money[20872][1]["Percent"] = 90
	
	tBuyAsteroids_Money[20872][2] = {}
	tBuyAsteroids_Money[20872][2]["RandomItemChanceType"] = 2
	tBuyAsteroids_Money[20872][2]["ItemChance"] = 3000
	tBuyAsteroids_Money[20872][2]["Item_1"] = 320
	tBuyAsteroids_Money[20872][2]["Percent"] = 80
	
	tBuyAsteroids_Money[20872][3] = {}
	tBuyAsteroids_Money[20872][3]["RandomItemChanceType"] = 2
	tBuyAsteroids_Money[20872][3]["ItemChance"] = 2500
	tBuyAsteroids_Money[20872][3]["Item_1"] = 280
	tBuyAsteroids_Money[20872][3]["Percent"] = 70
	
	tBuyAsteroids_Money[20872][4] = {}
	tBuyAsteroids_Money[20872][4]["RandomItemChanceType"] = 2
	tBuyAsteroids_Money[20872][4]["ItemChance"] = 2500
	tBuyAsteroids_Money[20872][4]["Item_1"] = 240
	tBuyAsteroids_Money[20872][4]["Percent"] = 60
	
	tBuyAsteroids_Money[20872][5] = {}
	tBuyAsteroids_Money[20872][5]["RandomItemChanceType"] = 2
	tBuyAsteroids_Money[20872][5]["ItemChance"] = 500
	tBuyAsteroids_Money[20872][5]["Item_1"] = 200
	tBuyAsteroids_Money[20872][5]["Percent"] = 50
	
	tBuyAsteroids_Money[20872][6] = {}
	tBuyAsteroids_Money[20872][6]["RandomItemChanceType"] = 2
	tBuyAsteroids_Money[20872][6]["ItemChance"] = 100
	tBuyAsteroids_Money[20872][6]["Item_1"] = 120
	tBuyAsteroids_Money[20872][6]["Percent"] = 30
	
	tBuyAsteroids_Money[20872][7] = {}
	tBuyAsteroids_Money[20872][7]["RandomItemChanceType"] = 2
	tBuyAsteroids_Money[20872][7]["ItemChance"] = 50
	tBuyAsteroids_Money[20872][7]["Item_1"] = 40
	tBuyAsteroids_Money[20872][7]["Percent"] = 10

local tBuyAsteroids_GetItem = {}
	tBuyAsteroids_GetItem[20871] = {}
	tBuyAsteroids_GetItem[20871]["LogId"] = 12000762
	tBuyAsteroids_GetItem[20871]["Space"] = 1
	tBuyAsteroids_GetItem[20871]["RewardItem"] = {}
	tBuyAsteroids_GetItem[20871]["RewardItem"][1] = {}
	tBuyAsteroids_GetItem[20871]["RewardItem"][1]["Id"] = 3009001  --明亮星陨石
	tBuyAsteroids_GetItem[20871]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tBuyAsteroids_GetItem[20871]["RewardEffect"] = {}
	tBuyAsteroids_GetItem[20871]["RewardEffect"]["SzObj"] = "self"
	tBuyAsteroids_GetItem[20871]["RewardEffect"]["Effect"] = "angelwing"
	tBuyAsteroids_GetItem[20871]["RewardNoNeedTip"] = 1

	tBuyAsteroids_GetItem[20872] = {}
	tBuyAsteroids_GetItem[20872]["LogId"] = 12000762
	tBuyAsteroids_GetItem[20872]["Space"] = 1
	tBuyAsteroids_GetItem[20872]["RewardItem"] = {}
	tBuyAsteroids_GetItem[20872]["RewardItem"][1] = {}
	tBuyAsteroids_GetItem[20872]["RewardItem"][1]["Id"] = 3009002  --晶莹星陨石
	tBuyAsteroids_GetItem[20872]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tBuyAsteroids_GetItem[20872]["RewardEffect"] = {}
	tBuyAsteroids_GetItem[20872]["RewardEffect"]["SzObj"] = "self"
	tBuyAsteroids_GetItem[20872]["RewardEffect"]["Effect"] = "angelwing"
	tBuyAsteroids_GetItem[20872]["RewardNoNeedTip"] = 1
	
local tBuyAsteroids_Item = {}
	tBuyAsteroids_Item[3303851] = {}
	tBuyAsteroids_Item[3303851]["LogId"] = 12000762
	tBuyAsteroids_Item[3303851]["Space"] = 1
	tBuyAsteroids_Item[3303851]["DeleteItem"] = {}
	tBuyAsteroids_Item[3303851]["DeleteItem"][1] = {}
	tBuyAsteroids_Item[3303851]["DeleteItem"][1]["Id"] = 3303851
	tBuyAsteroids_Item[3303851]["DeleteItem"][1]["ItemNum"] = 5
	tBuyAsteroids_Item[3303851]["RewardItem"] = {}
	tBuyAsteroids_Item[3303851]["RewardItem"][1] = {}
	tBuyAsteroids_Item[3303851]["RewardItem"][1]["Id"] = 3303852
	tBuyAsteroids_Item[3303851]["RewardItem"][1]["Attr"] = "0 1 0 60 1"
	tBuyAsteroids_Item[3303851]["RewardEffect"] = {}
	tBuyAsteroids_Item[3303851]["RewardEffect"]["SzObj"] = "self"
	tBuyAsteroids_Item[3303851]["RewardEffect"]["Effect"] = "angelwing"
	tBuyAsteroids_Item[3303851]["RewardNoNeedTip"] = 1
	
	tBuyAsteroids_Item[1] = {}  --每天第5次打开赤龙异宝后给两个碎片
	tBuyAsteroids_Item[1]["LogId"] = 12000762
	tBuyAsteroids_Item[1]["LogStep"] = "2[1]"
	tBuyAsteroids_Item[1]["Space"] = 1
	tBuyAsteroids_Item[1]["RewardItem"] = {}
	tBuyAsteroids_Item[1]["RewardItem"][1] = {}
	tBuyAsteroids_Item[1]["RewardItem"][1]["Id"] = 3303851
	tBuyAsteroids_Item[1]["RewardItem"][1]["Attr"] = "0 2"
	-- tBuyAsteroids_Item[1]["RewardEffect"] = {}
	-- tBuyAsteroids_Item[1]["RewardEffect"]["SzObj"] = "self"
	-- tBuyAsteroids_Item[1]["RewardEffect"]["Effect"] = "angelwing"
	
	tBuyAsteroids_Item[2] = {}  --开启镇魔塔宝箱奖励获得晶莹星陨石绝对低价优惠卷碎片
	tBuyAsteroids_Item[2]["LogId"] = 12000762
	tBuyAsteroids_Item[2]["LogStep"] = "2[2]"
	tBuyAsteroids_Item[2]["Space"] = 1
	tBuyAsteroids_Item[2]["RewardItem"] = {}
	tBuyAsteroids_Item[2]["RewardItem"][1] = {}
	tBuyAsteroids_Item[2]["RewardItem"][1]["Id"] = 3303851
	tBuyAsteroids_Item[2]["RewardItem"][1]["Attr"] = "0 1"
	-- tBuyAsteroids_Item[2]["RewardEffect"] = {}
	-- tBuyAsteroids_Item[2]["RewardEffect"]["SzObj"] = "self"
	-- tBuyAsteroids_Item[2]["RewardEffect"]["Effect"] = "angelwing"
	
local tBuyAsteroids_EmoneyLog = {}
	tBuyAsteroids_EmoneyLog[20871] = "350	21024	%d	%d	1	"  ----购买明亮星陨石
	tBuyAsteroids_EmoneyLog[1] = "350	21027	1	1	1	"  ----1天石刷新明亮星陨石
	tBuyAsteroids_EmoneyLog[20872] = "350	21025	%d	%d	1	"  ----购买晶莹星陨石
	tBuyAsteroids_EmoneyLog[5] = "350	21028	5	5	1	"  ----5天石刷新晶莹星陨石
	tBuyAsteroids_EmoneyLog[4] = "350	21029	0	0	1	"  ----绝对低价优惠券购买晶莹星陨石
	tBuyAsteroids_EmoneyLog[6] = "350	21031	0	0	1	"  ----获得绝对低价优惠券碎片
	tBuyAsteroids_EmoneyLog[7] = "350	21032	0	0	1	"  ----合成绝对低价优惠券
	tBuyAsteroids_EmoneyLog[8] = "350	21026	0	0	1	"  ----7万金币刷新
----------------------------------逻辑部分---------------------------------------------
---获得
function BuyAsteroids_Reward(nNum)
	-- 判断活动时间
	if not Sys_ChkFullTime(tBuyAsteroids_Data["Now_Time"]) then
		--LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	RewardTemplate_UseItem(tBuyAsteroids_Item[nNum])
	
	Sys_SaveEmoneyBuy(tBuyAsteroids_EmoneyLog[6])
	
end
---每天第5次打开赤龙异宝后给两个碎片
function BuyAsteroids_AddReward(nNum)

	-- 判断活动时间
	if not Sys_ChkFullTime(tBuyAsteroids_Data["Now_Time"]) then
		--LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	local nEvent = tBuyAsteroids_Stc[2]["EventType"]
	local nType = tBuyAsteroids_Stc[2]["DataType"]
		--隔天清零
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0,0)
	end
	local nData = Get_UserStatisticValue(nEvent,nType)
	if nData >= tBuyAsteroids_Stc[2]["Data"] then
		return
	end
	
	nData = nData + 1
	
	Task_SetStatistic(nEvent,nType,nData,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	
	if nData >= tBuyAsteroids_Stc[2]["Data"] then
		BuyAsteroids_Reward(nNum)
	end
	
	
	
end

----购买星陨石
function BuyAsteroids_Buy(nNpcId,nNeedMoney,nPercent)
	-- 判断活动时间
	if not Sys_ChkFullTime(tBuyAsteroids_Data["Now_Time"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	--判断天石
	local nUserId = Get_UserId()
	local nUserEmoney = Get_UserEMoney(nUserId)
	local nGetItem = tBuyAsteroids_Data["Item"][nNpcId]
	local sItemName = Get_ItemtypeName(nGetItem)
	if nUserEmoney < nNeedMoney then
		local sStr = string.format(tBuyAsteroids_Text["Msg"]["NoEmoney"],sItemName)
		Sys_MsgBox(sStr,nil,nil,nUserId)
		User_TalkChannel2005(sStr,nUserId)
		return
	end
	--判断背包空间
	local nSpace = tBuyAsteroids_GetItem[nNpcId]["Space"]
	if not User_CheckLeftSpace(nSpace) then
		local sSpace = string.format(tBuyAsteroids_Text["Msg"]["NoSpace"],sItemName)
		Sys_MsgBox(sSpace,nil,nil,nUserId)
		User_TalkChannel2005(sSpace,nUserId)
		return
	end
	----二次确认
	local nOff = 100 - nPercent
	local sText211  = string.format(tBuyAsteroids_Text[20871]["Text211"],nNeedMoney,nOff)
	local sOption21 = string.format(tBuyAsteroids_Text[20871]["Option21"],nNeedMoney)
	Sys_DialogText(sText211)
	Sys_DialogOption(sOption21,"</F>BuyAsteroids_BuyItem</N>" .. nNpcId .. "</N>" .. nNeedMoney .. "</N>" .. nPercent)
	Sys_DialogOption(tBuyAsteroids_Text[20871]["Option22"],"</F>LinkNpcGossipFunc_New</N>" .. nNpcId .. "</S>" .. "1-3")
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end
function BuyAsteroids_BuyItem(nNpcId,nNeedMoney,nPercent)
	-- 判断活动时间
	if not Sys_ChkFullTime(tBuyAsteroids_Data["Now_Time"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	--判断天石
	local nUserId = Get_UserId()
	local nUserEmoney = Get_UserEMoney(nUserId)
	local nGetItem = tBuyAsteroids_Data["Item"][nNpcId]
	local sItemName = Get_ItemtypeName(nGetItem)
	if nUserEmoney < nNeedMoney then
		local sStr = string.format(tBuyAsteroids_Text["Msg"]["NoEmoney"],sItemName)
		Sys_MsgBox(sStr)
		User_TalkChannel2005(sStr,nUserId)
		return
	end
	--判断背包空间
	local nSpace = tBuyAsteroids_GetItem[nNpcId]["Space"]
	if not User_CheckLeftSpace(nSpace) then
		local sSpace = string.format(tBuyAsteroids_Text["Msg"]["NoSpace"],sItemName)
		Sys_MsgBox(sSpace)
		User_TalkChannel2005(sSpace,nUserId)
		return
	end
	--扣钱给物品
	if User_AddEMoney(-nNeedMoney) then
		local nEvent = tBuyAsteroids_Stc[nNpcId]["EventType"]
		local nType = tBuyAsteroids_Stc[nNpcId]["DataType"]
		Task_SetStatistic(nEvent,nType,0,1) 
		Task_SetStcTimestamp(nEvent,nType,0)
		RewardTemplate_UseItemAndMsg(tBuyAsteroids_GetItem[nNpcId],nUserId)
		local nEmoneylog = string.format(tBuyAsteroids_EmoneyLog[nNpcId],nNeedMoney,nNeedMoney)
		Sys_SaveEmoneyBuy(nEmoneylog)  --emoneylog
		local sText = string.format(tBuyAsteroids_Text["Msg"]["Success"],nNeedMoney,sItemName)
		Sys_MsgBox(sText)
		User_TalkChannel2005(sText,nUserId)
		--全服公告
		if nPercent <= 50 then
			local nOff = 100 - nPercent
			local nUserId = Get_UserId()
			local sUserName = Get_UserName(nUserId)
			local sNpcName = Get_NpcName(nNpcId)
			local sStr = string.format(tBuyAsteroids_Text["Msg"]["BroadItem"],sUserName,sNpcName,nNeedMoney,nOff,sItemName)
			Sys_SystemBroadcast(sStr)
		end
	end
end
-----天石刷新折扣
function BuyAsteroids_ChangeEMoney(nFlag,nNpcId,nPercent)
	-- 判断活动时间
	if not Sys_ChkFullTime(tBuyAsteroids_Data["Now_Time"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	---天石不足
	local nNeedMoney = tBuyAsteroids_Data["Emoney"][nNpcId]
	local nUserId = Get_UserId()
	local nUserEmoney = Get_UserEMoney(nUserId)
	local nGetItem = tBuyAsteroids_Data["Item"][nNpcId]
	local sItemName = Get_ItemtypeName(nGetItem)
	if nUserEmoney < nNeedMoney then
		Sys_MsgBox(tBuyAsteroids_Text["Msg"]["NoPay"])
		User_TalkChannel2005(tBuyAsteroids_Text["Msg"]["NoPay"],nUserId)
		return
	end
	---最低折扣
	if nFlag == 1 then
		local nLowPercent = tBuyAsteroids_Money[nNpcId][7]["Percent"]
		if nPercent <= nLowPercent then
			Sys_MsgBox(tBuyAsteroids_Text["Msg"]["Lower"],"LinkNpcGossipFunc_New</N>" .. nNpcId .. "</S>" .. "1-3",nil,nUserId)
			User_TalkChannel2005(tBuyAsteroids_Text["Msg"]["Lower"],nUserId)
			return
		end
	end
	---二次确认
	local nEvent = tBuyAsteroids_Stc[1]["EventType"]
	local nType = tBuyAsteroids_Stc[1]["DataType"]
	local nData =  Get_UserStatisticValue(nEvent,nType)
	if nFlag == 1 and not Sys_ParseNumbersContain(tBuyAsteroids_Data["Num"][nNpcId],nData) then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	---扣天石刷新
	if User_AddEMoney(-nNeedMoney) then
		local nEvent = tBuyAsteroids_Stc[nNpcId]["EventType"]
		local nType = tBuyAsteroids_Stc[nNpcId]["DataType"]
		Task_SetStatistic(nEvent,nType,0,1) 
		Task_SetStcTimestamp(nEvent,nType,0)
		Sys_SaveEmoneyBuy(tBuyAsteroids_EmoneyLog[nNeedMoney])  --emoneylog
		--打log
		Sys_SaveActionFestivalLog(tBuyAsteroids_Data["Log"][2][nNpcId])
		LinkNpcGossipFunc_New(nNpcId,"1-3")

	end
end
-- 屏蔽二次确认
function BuyAsteroids_Close(nNpcId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tBuyAsteroids_Data["Now_Time"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	local nEvent = tBuyAsteroids_Stc[1]["EventType"]
	local nType = tBuyAsteroids_Stc[1]["DataType"]
		--隔天清零
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0,0)
	end
	local nData =  Get_UserStatisticValue(nEvent,nType)
	if Sys_ParseNumbersContain(tBuyAsteroids_Data["Num"][nNpcId],nData) then
		return
	end
	Task_AddStatistic(nEvent,nType,tBuyAsteroids_Data["Num"][nNpcId],1) 
	Task_SetStcTimestamp(nEvent,nType,0)
	LinkNpcGossipFunc_New(nNpcId,"1-3")
end
---金币跟晶莹星陨石折扣刷折扣
function BuyAsteroids_ChangeMoney(nNpcId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tBuyAsteroids_Data["Now_Time"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	local nEvent = tBuyAsteroids_Stc[nNpcId]["EventType"]
	local nType = tBuyAsteroids_Stc[nNpcId]["DataType"]
	local nData =  Get_UserStatisticValue(nEvent,nType)

	---金币不够
	if nNpcId == 20871 then
		if not User_CanPutMoney2Bag(-tBuyAsteroids_Data["Need"][20871]) then
			Sys_MsgBox(tBuyAsteroids_Text["Msg"]["NoMoney"])
			User_TalkChannel2005(tBuyAsteroids_Text["Msg"]["NoMoney"],nUserId)
			return
		end
		User_AddMoney(-tBuyAsteroids_Data["Need"][20871])
		Task_SetStatistic(nEvent,nType,0,1) 
		Task_SetStcTimestamp(nEvent,nType,0)
		Sys_SaveEmoneyBuy(tBuyAsteroids_EmoneyLog[8])
---刷新折扣
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		
	end

	if nNpcId == 20872 then
	----没有物品
		if not Item_ChkItem(tBuyAsteroids_Data["Need"][20872]) then
			LinkNpcGossipFunc_New(nNpcId,"4-1")
			return
		end
	----折扣大于68折
		if nData <= tBuyAsteroids_Data["Count"] then
			LinkNpcGossipFunc_New(nNpcId,"5-1")
			return
		end
		if Item_DelItem(tBuyAsteroids_Data["Need"][20872]) then
			Task_SetStatistic(nEvent,nType,68,1) 
			Task_SetStcTimestamp(nEvent,nType,0)
		end
		Sys_SaveEmoneyBuy(tBuyAsteroids_EmoneyLog[4])  --emoneylog
		Sys_MsgBox(tBuyAsteroids_Text["Msg"]["UseItem"],"LinkNpcGossipFunc_New</N>" .. nNpcId .. "</S>" .. "1-3")
	end
	--打log
	Sys_SaveActionFestivalLog(tBuyAsteroids_Data["Log"][1][nNpcId])
	

end
-----显示对白函数
function BuyAsteroids_Text(nNpcId)
	local nEvent = tBuyAsteroids_Stc[nNpcId]["EventType"]
	local nType = tBuyAsteroids_Stc[nNpcId]["DataType"]
	local nData =  Get_UserStatisticValue(nEvent,nType)
	local nNeedMoney = 0 
	local nPercent = 0

	--掩码==0 刷新
	if nData <= 0 then
		local flat,tItem= Probabil_RandomAward(tBuyAsteroids_Money,nNpcId) 
		nNeedMoney = tItem[1]["tAward"][1]["Item_1"]
		nPercent = tItem[1]["tAward"][1]["Percent"]
		Task_SetStatistic(nEvent,nType,nPercent,1) 
		Task_SetStcTimestamp(nEvent,nType,0)
	else
		nPercent = Get_UserStatisticValue(nEvent,nType)
		nNeedMoney = tBuyAsteroids_Index[nNpcId][nPercent]
	end

	local nOff = 100 - nPercent
	local sText136 = string.format(tBuyAsteroids_Text[nNpcId]["Text136"],nNeedMoney,nOff)
	local sOption3 = string.format(tBuyAsteroids_Text[nNpcId]["Option3"],nNeedMoney)
	tNpcGossip[20871]["Text131"] = tBuyAsteroids_Text[nNpcId]["Text131"]
	tNpcGossip[20871]["Text132"] = tBuyAsteroids_Text[nNpcId]["Text132"]
	tNpcGossip[20871]["Text133"] = tBuyAsteroids_Text[nNpcId]["Text133"]
	tNpcGossip[20871]["Text134"] = tBuyAsteroids_Text[nNpcId]["Text134"]
	tNpcGossip[20871]["Text135"] = tBuyAsteroids_Text[nNpcId]["Text135"]
	tNpcGossip[20871]["Text136"] = sText136
	tNpcGossip[20871]["Option3"] = sOption3
	tNpcGossip[20871]["OptionFunc3"] = "BuyAsteroids_Buy</N>" .. nNpcId .. "</N>" .. nNeedMoney .. "</N>" .. nPercent
	
	tNpcGossip[20871]["Option4"] = tBuyAsteroids_Text[nNpcId]["Option4"]
	tNpcGossip[20871]["OptionFunc4"] = "BuyAsteroids_ChangeEMoney</N>1" .. "</N>" .. nNpcId .. "</N>" .. nPercent

	tNpcGossip[20871]["Option5"] = tBuyAsteroids_Text[nNpcId]["Option5"]
	tNpcGossip[20871]["OptionFunc5"] = "BuyAsteroids_ChangeMoney</N>" .. nNpcId
	--全服公告
	if nPercent <= 50 then
		local nOff = 100-nPercent
		local nUserId = Get_UserId()
		local sUserName = Get_UserName(nUserId)
		local sNpcName = Get_NpcName(nNpcId)
		local sStr = string.format(tBuyAsteroids_Text["Msg"]["Broadcast"],sUserName,sNpcName,nOff)
		Sys_SystemBroadcast(sStr)
	end
end
-------------------------物品逻辑---------------------------
function BuyAsteroids_UseItem(nItemId)
----活动结束
	if CommonFunc_GetAfterActivityTime(tBuyAsteroids_Data["Now_Time"]) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tBuyAsteroids_Text["Msg"]["ItemOver"][nItemId])
			local sLog = string.format(tBuyAsteroids_Data["Log"]["OverTime"],nItemId)
			Sys_SaveActionFestivalLog(sLog)
		end
		return
	end
	---晶莹星陨68折券
	if nItemId == tBuyAsteroids_Data["Need"][20872] then
		local nNpcId = tBuyAsteroids_Data["NpcId"]
		local nMapId = Get_NpcMapID(nNpcId)
		local nPosX = Get_NpcPositionX(nNpcId)
		local nPoxY  = Get_NpcPositionY(nNpcId)
		Sys_GotoSomeWhere(nPosX,nPoxY,nMapId,nNpcId)
		return
	end
	-- 晶莹星陨68折券碎片
	if not Item_ChkMulItem(nItemId,nItemId,5) then
		Sys_MsgBox(tBuyAsteroids_Text["Msg"]["NotNum"])
		User_TalkChannel2005(tBuyAsteroids_Text["Msg"]["NotNum"])
		return
	end
	--背包空间不足
	local nSpace = tBuyAsteroids_Item[3303851]["Space"]
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(tBuyAsteroids_Text["Msg"]["NotGet"])
		User_TalkChannel2005(tBuyAsteroids_Text["Msg"]["NotGet"])
		return
	end
	--成功合成
	RewardTemplate_UseItem(tBuyAsteroids_Item[3303851],nUserId)
	Sys_MsgBox(tBuyAsteroids_Text["Msg"]["GetItem"])
	User_TalkChannel2005(tBuyAsteroids_Text["Msg"]["GetTalk"])
	Sys_SaveEmoneyBuy(tBuyAsteroids_EmoneyLog[7])
end



----------------------------------NPC部分---------------------------------------------
tNpcFace[4889] = 1
tNpcGossip[20871]= tNpcGossip[20871] or DefaultNpc:new{}
tNpcGossip[20871]["OptionHidden"] = 1
tNpcGossip[20871]["Text1-1"] = {111,112,113,114,115,112}
tNpcGossip[20871]["Text111"] = tBuyAsteroids_Text[20871]["Text111"]
tNpcGossip[20871]["Text112"] = tBuyAsteroids_Text[20871]["Text112"]
tNpcGossip[20871]["Text113"] = tBuyAsteroids_Text[20871]["Text113"]
tNpcGossip[20871]["Text114"] = tBuyAsteroids_Text[20871]["Text114"]
tNpcGossip[20871]["Text115"] = tBuyAsteroids_Text[20871]["Text115"]
tNpcGossip[20871]["ChkFunc1-1"]= function()
	local nNpcId = Get_NpcId()
	tNpcGossip[20871]["Text111"] = tBuyAsteroids_Text[nNpcId]["Text111"]
	tNpcGossip[20871]["Text112"] = tBuyAsteroids_Text[nNpcId]["Text112"]
	tNpcGossip[20871]["Text113"] = tBuyAsteroids_Text[nNpcId]["Text113"]
	tNpcGossip[20871]["Text114"] = tBuyAsteroids_Text[nNpcId]["Text114"]
	tNpcGossip[20871]["Text115"] = tBuyAsteroids_Text[nNpcId]["Text115"]
	return Sys_ChkFullTime(tBuyAsteroids_Data["Bef_Time"]) 
end
tNpcGossip[20871]["tOption1-1"] = {1}
tNpcGossip[20871]["Option1"] = tBuyAsteroids_Text[20871]["Option1"]
--活动后
tNpcGossip[20871]["Text1-2"] = {121}
tNpcGossip[20871]["Text121"] = tBuyAsteroids_Text[20871]["Text121"]
tNpcGossip[20871]["ChkFunc1-2"]= function()
	local nNpcId = Get_NpcId()
	tNpcGossip[20871]["Text121"] = tBuyAsteroids_Text[nNpcId]["Text121"]
	return not Sys_ChkFullTime(tBuyAsteroids_Data["Now_Time"]) 
end
tNpcGossip[20871]["tOption1-2"] = {2}
tNpcGossip[20871]["Option2"] = tBuyAsteroids_Text[20871]["Option2"]
---活动中
tNpcGossip[20871]["Text1-3"] = {131,132,133,134,135,136,132}
tNpcGossip[20871]["Text131"] = tBuyAsteroids_Text[20871]["Text131"]
tNpcGossip[20871]["Text132"] = tBuyAsteroids_Text[20871]["Text132"]
tNpcGossip[20871]["Text133"] = tBuyAsteroids_Text[20871]["Text133"]
tNpcGossip[20871]["Text134"] = tBuyAsteroids_Text[20871]["Text134"]
tNpcGossip[20871]["Text135"] = tBuyAsteroids_Text[20871]["Text135"]
tNpcGossip[20871]["Text136"] = tBuyAsteroids_Text[20871]["Text136"]

tNpcGossip[20871]["ChkFunc1-3"]= function()
	local nNpcId = Get_NpcId()
	--对白显示
	BuyAsteroids_Text(nNpcId)
	return Sys_ChkFullTime(tBuyAsteroids_Data["Now_Time"]) 
end
tNpcGossip[20871]["tOption1-3"] = {3,4,5}
tNpcGossip[20871]["Option3"] = tBuyAsteroids_Text[20871]["Option3"]
tNpcGossip[20871]["OptionFunc3"] = "BuyAsteroids_Buy</N>20871"  

tNpcGossip[20871]["Option4"] = tBuyAsteroids_Text[20871]["Option4"]
tNpcGossip[20871]["OptionFunc4"] = "BuyAsteroids_ChangeEMoney</N>20871"  

tNpcGossip[20871]["Option5"] = tBuyAsteroids_Text[20871]["Option5"]
tNpcGossip[20871]["OptionFunc5"] = "BuyAsteroids_ChangeMoney</N>20871"  

-- 接2、刷新折扣（1天石）
tNpcGossip[20871]["Text3-1"] = {311}
tNpcGossip[20871]["Text311"] = tBuyAsteroids_Text[20871]["Text311"]
tNpcGossip[20871]["ChkFunc3-1"]= function()
	local nNpcId = Get_NpcId()
	tNpcGossip[20871]["Text311"] = tBuyAsteroids_Text[nNpcId]["Text311"]
	tNpcGossip[20871]["Option31"] = tBuyAsteroids_Text[nNpcId]["Option31"]
	tNpcGossip[20871]["OptionFunc31"] = "BuyAsteroids_ChangeEMoney</N>" .. 2 .. "</N>" .. nNpcId

	tNpcGossip[20871]["Option32"] = tBuyAsteroids_Text[nNpcId]["Option32"]
	tNpcGossip[20871]["OptionFunc32"] = "BuyAsteroids_Close</N>" .. nNpcId

	return Sys_ChkFullTime(tBuyAsteroids_Data["Now_Time"]) 
end
tNpcGossip[20871]["tOption3-1"] = {31,32}
tNpcGossip[20871]["Option31"] = tBuyAsteroids_Text[20871]["Option31"]
tNpcGossip[20871]["OptionFunc31"] = "BuyAsteroids_ChangeEMoney</N>20871"  

tNpcGossip[20871]["Option32"] = tBuyAsteroids_Text[20871]["Option32"]
tNpcGossip[20871]["OptionFunc32"] = "BuyAsteroids_Close</N>20871"  

----明亮星陨石
tNpcFace[4890] = 112
tNpcGossip[20872]= tNpcGossip[20871] or DefaultNpc:new{}
-- 【失败，背包里没有这个道具】
tNpcGossip[20872]["Text4-1"] = {411}
tNpcGossip[20872]["Text411"] = tBuyAsteroids_Text[20872]["Text411"]
tNpcGossip[20872]["tOption4-1"] = {41}
tNpcGossip[20872]["Option41"] = tBuyAsteroids_Text[20872]["Option41"]

-- 【失败，当前折扣不高于68折】
tNpcGossip[20872]["Text5-1"] = {511}
tNpcGossip[20872]["Text511"] = tBuyAsteroids_Text[20872]["Text511"]
tNpcGossip[20872]["tOption5-1"] = {41}
tNpcGossip[20872]["Option51"] = tBuyAsteroids_Text[20872]["Option51"]
tNpcGossip[20872]["OptionPoint51"] = "1-3" 

---------------------------------物品部分---------------------------------------------
--------晶莹星陨68折券碎片
tItem[3303851] = tItem[3303851] or {}
tItem[3303851]["Function"] = function(nItemId,sItemName)
	BuyAsteroids_UseItem(nItemId)
end
tItem[3303852] = tItem[3303852] or {}
tItem[3303852]["Function"] = function(nItemId,sItemName)
	BuyAsteroids_UseItem(nItemId)
end

tItemFace[3303853] = 1174