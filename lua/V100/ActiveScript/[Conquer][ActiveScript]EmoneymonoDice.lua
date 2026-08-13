---Name:	160615[简体征服][活动脚本]赠点骰子活动(7.1-7.15)
--Creator: 	陈莺
--Created:	2016-06-15
--------------------------------------------------------------------------------
--npc 
-- 19324,'萨隆巴斯'

--物品
-- 3200529  萨隆巴斯的邀请函
-- 3200530  骰子
-- logid 12000427
-- 掩码 （获得骰子）
--146 54  赛马商店购买礼包（1200赛马积分，每天限一次）
--146 55  竞技场积分商店购买礼包（18000竞技场积分，每天限一次）
--146 56  记录是否3秒
--146 57  背包掩码


--命名规范
--EmoneymonoDice_
------------------------------------------------------------------------------------------
local tEmoneymonoDice_Data = {}
	tEmoneymonoDice_Data["Bef_Time"]= "2015-07-01 00:00 2016-09-07 23:59"
	tEmoneymonoDice_Data["Now_Time"] = "2016-09-08 00:00 2016-09-22 23:59"
	-- tEmoneymonoDice_Data["Bef_Time"]= "2015-07-01 00:00 2016-05-31 23:59"
	-- tEmoneymonoDice_Data["Now_Time"] = "2016-06-01 00:00 2016-08-15 23:59"

	tEmoneymonoDice_Data["Level"] = 80 
	tEmoneymonoDice_Data["Metempsychosis"] = 0
	tEmoneymonoDice_Data["GetEffect"] = "FF07-dhp"
	tEmoneymonoDice_Data["Effect"] = "angelwing"
	tEmoneymonoDice_Data["Num"] = 3
	tEmoneymonoDice_Data["EmoneyLog"] = "250	4027	0	0	%d	"
	tEmoneymonoDice_Data["EmoneyLimit"] = 999999999
	
local tEmoneymonoDice_Log = {}
	tEmoneymonoDice_Log[1] = "0,0,3200530,3,12000427,1[%d],3,%d"  ---三个点数相同
	tEmoneymonoDice_Log[2] = "0,0,3200530,3,12000427,1[8],3,%d"  ---三个点数不同
	tEmoneymonoDice_Log[3] = "0,0,0,0,12000427,3,%d,1"  ---过期删除物品


local tEmoneymonoDice_Item = {}
	tEmoneymonoDice_Item[1] = {}  ---3个点数一样
	tEmoneymonoDice_Item[1][1] = 558
	tEmoneymonoDice_Item[1][2] = 668
	tEmoneymonoDice_Item[1][3] = 778
	tEmoneymonoDice_Item[1][4] = 888
	tEmoneymonoDice_Item[1][5] = 998
	tEmoneymonoDice_Item[1][6] = 1288

	tEmoneymonoDice_Item[2] = {}  ---2个点数一样
	tEmoneymonoDice_Item[2][1] = 50
	tEmoneymonoDice_Item[2][2] = 60
	tEmoneymonoDice_Item[2][3] = 70
	tEmoneymonoDice_Item[2][4] = 80
	tEmoneymonoDice_Item[2][5] = 90
	tEmoneymonoDice_Item[2][6] = 100

	tEmoneymonoDice_Item[3] = {}  ---3个点数都不一样
	tEmoneymonoDice_Item[3][1] = 6
	tEmoneymonoDice_Item[3][2] = 7
	tEmoneymonoDice_Item[3][3] = 8
	tEmoneymonoDice_Item[3][4] = 9
	tEmoneymonoDice_Item[3][5] = 10
	tEmoneymonoDice_Item[3][6] = 11
	tEmoneymonoDice_Item[3][7] = 12
	tEmoneymonoDice_Item[3][8] = 13
	tEmoneymonoDice_Item[3][9] = 14
	tEmoneymonoDice_Item[3][10] = 15

local tEmoneymonoDice_Prob = {}
	--三种点数
	tEmoneymonoDice_Prob[1] = {}
	tEmoneymonoDice_Prob[1]["ItemChanceSum"] = 10000                     
	tEmoneymonoDice_Prob[1][1] = {}
	tEmoneymonoDice_Prob[1][1]["RandomItemChanceType"] = 2
	tEmoneymonoDice_Prob[1][1]["ItemChance"] = 276
	tEmoneymonoDice_Prob[1][1]["Item_1"]= 1
	
	tEmoneymonoDice_Prob[1][2] = {}
	tEmoneymonoDice_Prob[1][2]["RandomItemChanceType"] = 2
	tEmoneymonoDice_Prob[1][2]["ItemChance"] = 4164
	tEmoneymonoDice_Prob[1][2]["Item_1"]= 2
	                                      
	tEmoneymonoDice_Prob[1][3] = {}
	tEmoneymonoDice_Prob[1][3]["RandomItemChanceType"] = 2
	tEmoneymonoDice_Prob[1][3]["ItemChance"] = 5560
	tEmoneymonoDice_Prob[1][3]["Item_1"]= 3
	
local tEmoneymonoDice_Get = {}
	tEmoneymonoDice_Get["RewardEMoneyMono"] = {}
	tEmoneymonoDice_Get["RewardEMoneyMono"]["Value"] = 0	--赠点
	tEmoneymonoDice_Get["EMoneyMono"] = tEmoneymonoDice_Text["MsgBox"]["Emoneymono"]  ---上限文字
	tEmoneymonoDice_Get["RewardNoNeedTip"] = 1
	tEmoneymonoDice_Get["UseLog"] = "0,0,3200530,1,12000427,2,3,%d"
	tEmoneymonoDice_Get["Log"] = ""
	
---掩码
local tEmoneymonoDice_Stc = {}
	tEmoneymonoDice_Stc[1] = {} --赛马商店购买礼包（1200赛马积分，每天限一次）
	tEmoneymonoDice_Stc[1]["EventType"] = 146
	tEmoneymonoDice_Stc[1]["DataType"] = 54
	
	tEmoneymonoDice_Stc[2] = {} --竞技场积分商店购买礼包（18000竞技场积分，每天限一次）
	tEmoneymonoDice_Stc[2]["EventType"] = 146
	tEmoneymonoDice_Stc[2]["DataType"] = 55

	tEmoneymonoDice_Stc[3] = {} --记录是否3秒
	tEmoneymonoDice_Stc[3]["EventType"] = 146
	tEmoneymonoDice_Stc[3]["DataType"] = 56
	
local tEmoneymonoDice_Reward = {}
	tEmoneymonoDice_Reward[3200723] = {}
	tEmoneymonoDice_Reward[3200723]["EventType"] = 146
	tEmoneymonoDice_Reward[3200723]["DataType"] = 54
	tEmoneymonoDice_Reward[3200723]["RewardItem"] = {}
	tEmoneymonoDice_Reward[3200723]["RewardItem"][1] = {}
	tEmoneymonoDice_Reward[3200723]["RewardItem"][1]["Id"] = 3200530
	tEmoneymonoDice_Reward[3200723]["RewardItem"][1]["Attr"] = "0 1"
	tEmoneymonoDice_Reward[3200723]["Log"] = "0,0,3200723,1,12000427,1[7],3200530,1"
	
	tEmoneymonoDice_Reward[3200724] = {}
	tEmoneymonoDice_Reward[3200724]["EventType"] = 146
	tEmoneymonoDice_Reward[3200724]["DataType"] = 55
	tEmoneymonoDice_Reward[3200724]["RewardItem"] = {}
	tEmoneymonoDice_Reward[3200724]["RewardItem"][1] = {}
	tEmoneymonoDice_Reward[3200724]["RewardItem"][1]["Id"] = 3200530
	tEmoneymonoDice_Reward[3200724]["RewardItem"][1]["Attr"] = "0 1"
	tEmoneymonoDice_Reward[3200724]["Log"] = "0,0,3200724,1,12000427,1[7],3200530,1"


--三个数不一样所有的点数
local tEmoneymonoDice_Number = {}
	tEmoneymonoDice_Number[1] = {} --点数和为6
	tEmoneymonoDice_Number[1][1] = {1,2,3}
	
	tEmoneymonoDice_Number[2] = {} -- 点数和为7
	tEmoneymonoDice_Number[2][1] = {1,2,4}

	tEmoneymonoDice_Number[3] = {} -- 点数和为8
	tEmoneymonoDice_Number[3][1] = {1,2,5}
	tEmoneymonoDice_Number[3][2] = {1,3,4}

	tEmoneymonoDice_Number[4] = {} -- 点数和为9
	tEmoneymonoDice_Number[4][1] = {1,2,6}
	tEmoneymonoDice_Number[4][2] = {1,3,5}
	tEmoneymonoDice_Number[4][3] = {2,3,4}

	tEmoneymonoDice_Number[5] = {} -- 点数和为10
	tEmoneymonoDice_Number[5][1] = {1,3,6}
	tEmoneymonoDice_Number[5][2] = {1,4,5}
	tEmoneymonoDice_Number[5][3] = {2,3,5}

	tEmoneymonoDice_Number[6] = {} -- 点数和为11
	tEmoneymonoDice_Number[6][1] = {1,4,6}
	tEmoneymonoDice_Number[6][2] = {2,3,6}
	tEmoneymonoDice_Number[6][3] = {2,4,5}

	tEmoneymonoDice_Number[7] = {} -- 点数和为12
	tEmoneymonoDice_Number[7][1] = {1,5,6}
	tEmoneymonoDice_Number[7][2] = {2,4,6}
	tEmoneymonoDice_Number[7][3] = {3,4,5}

	tEmoneymonoDice_Number[8] = {} -- 点数和为13
	tEmoneymonoDice_Number[8][1] = {2,5,6}
	tEmoneymonoDice_Number[8][2] = {3,4,6}

	tEmoneymonoDice_Number[9] = {} -- 点数和为14
	tEmoneymonoDice_Number[9][1] = {3,5,6}

	tEmoneymonoDice_Number[10] = {} -- 点数和为15
	tEmoneymonoDice_Number[10][1] = {4,5,6}
---光效
	local tEmoneymonoDice_DiceEffect = {}
	tEmoneymonoDice_DiceEffect[1] = "touzi_1"
	tEmoneymonoDice_DiceEffect[2] = "touzi_2"
	tEmoneymonoDice_DiceEffect[3] = "touzi_3"
	tEmoneymonoDice_DiceEffect[4] = "touzi_4"
	tEmoneymonoDice_DiceEffect[5] = "touzi_5"
	tEmoneymonoDice_DiceEffect[6] = "touzi_6"
--------------------------------------双十一充值返利物品-----------------------------------------------
local tRechargeDice_ItemId = {}
	tRechargeDice_ItemId[3300156] = {}  -- 好运连连礼包
	tRechargeDice_ItemId[3300156]["Space"] = 1
	tRechargeDice_ItemId[3300156]["RewardItem"] = {}
	tRechargeDice_ItemId[3300156]["RewardItem"][1] = {}
	tRechargeDice_ItemId[3300156]["RewardItem"][1]["Id"] = 3200530  --骰子
	tRechargeDice_ItemId[3300156]["RewardItem"][1]["Attr"] = "0 2"
	tRechargeDice_ItemId[3300156]["RewardItem"][2] = {}
	tRechargeDice_ItemId[3300156]["RewardItem"][2]["Id"] = 3300155  --东皇赐福圣令
	tRechargeDice_ItemId[3300156]["RewardItem"][2]["Attr"] = "0 1"
	tRechargeDice_ItemId[3300156]["Log"] = "0,0,3300156,1,12000495,2,3200530[3300155],2[1]"

	tRechargeDice_ItemId[3300157] = {}  -- 三阳开泰礼包
	tRechargeDice_ItemId[3300157]["Space"] = 1
	tRechargeDice_ItemId[3300157]["RewardItem"] = {}
	tRechargeDice_ItemId[3300157]["RewardItem"][1] = {}
	tRechargeDice_ItemId[3300157]["RewardItem"][1]["Id"] = 3200530  --骰子
	tRechargeDice_ItemId[3300157]["RewardItem"][1]["Attr"] = "0 5"
	tRechargeDice_ItemId[3300157]["RewardItem"][2] = {}
	tRechargeDice_ItemId[3300157]["RewardItem"][2]["Id"] = 3300155  --东皇赐福圣令
	tRechargeDice_ItemId[3300157]["RewardItem"][2]["Attr"] = "0 1"
	tRechargeDice_ItemId[3300157]["Log"] = "0,0,3300157,1,12000495,2,3200530[3300155],5[1]"

	tRechargeDice_ItemId[3300158] = {}  -- 吉星高照礼包
	tRechargeDice_ItemId[3300158]["Space"] = 1
	tRechargeDice_ItemId[3300158]["RewardItem"] = {}
	tRechargeDice_ItemId[3300158]["RewardItem"][1] = {}
	tRechargeDice_ItemId[3300158]["RewardItem"][1]["Id"] = 3200530  --骰子
	tRechargeDice_ItemId[3300158]["RewardItem"][1]["Attr"] = "0 23"
	tRechargeDice_ItemId[3300158]["RewardItem"][2] = {}
	tRechargeDice_ItemId[3300158]["RewardItem"][2]["Id"] = 3300155  --东皇赐福圣令
	tRechargeDice_ItemId[3300158]["RewardItem"][2]["Attr"] = "0 1"
	tRechargeDice_ItemId[3300158]["Log"] = "0,0,3300158,1,12000495,2,3200530[3300155],23[1]"

	tRechargeDice_ItemId[3300159] = {}  -- 心想事成礼包
	tRechargeDice_ItemId[3300159]["Space"] = 1
	tRechargeDice_ItemId[3300159]["RewardItem"] = {}
	tRechargeDice_ItemId[3300159]["RewardItem"][1] = {}
	tRechargeDice_ItemId[3300159]["RewardItem"][1]["Id"] = 3200530  --骰子
	tRechargeDice_ItemId[3300159]["RewardItem"][1]["Attr"] = "0 46"
	tRechargeDice_ItemId[3300159]["RewardItem"][2] = {}
	tRechargeDice_ItemId[3300159]["RewardItem"][2]["Id"] = 3300155  --东皇赐福圣令
	tRechargeDice_ItemId[3300159]["RewardItem"][2]["Attr"] = "0 1"
	tRechargeDice_ItemId[3300159]["Log"] = "0,0,3300159,1,12000495,2,3200530[3300155],46[1]"

	tRechargeDice_ItemId[3300160] = {}  -- 美梦成真礼包
	tRechargeDice_ItemId[3300160]["Space"] = 1
	tRechargeDice_ItemId[3300160]["RewardItem"] = {}
	tRechargeDice_ItemId[3300160]["RewardItem"][1] = {}
	tRechargeDice_ItemId[3300160]["RewardItem"][1]["Id"] = 3200530  --骰子
	tRechargeDice_ItemId[3300160]["RewardItem"][1]["Attr"] = "0 86"
	tRechargeDice_ItemId[3300160]["RewardItem"][2] = {}
	tRechargeDice_ItemId[3300160]["RewardItem"][2]["Id"] = 3300155  --东皇赐福圣令
	tRechargeDice_ItemId[3300160]["RewardItem"][2]["Attr"] = "0 1"
	tRechargeDice_ItemId[3300160]["Log"] = "0,0,3300160,1,12000495,2,3200530[3300155],86[1]"

	tRechargeDice_ItemId[3300161] = {}  -- 鸿运当头礼包
	tRechargeDice_ItemId[3300161]["Space"] = 1
	tRechargeDice_ItemId[3300161]["RewardItem"] = {}
	tRechargeDice_ItemId[3300161]["RewardItem"][1] = {}
	tRechargeDice_ItemId[3300161]["RewardItem"][1]["Id"] = 3200530  --骰子
	tRechargeDice_ItemId[3300161]["RewardItem"][1]["Attr"] = "0 123"
	tRechargeDice_ItemId[3300161]["RewardItem"][2] = {}
	tRechargeDice_ItemId[3300161]["RewardItem"][2]["Id"] = 3300155  --东皇赐福圣令
	tRechargeDice_ItemId[3300161]["RewardItem"][2]["Attr"] = "0 1"
	tRechargeDice_ItemId[3300161]["Log"] = "0,0,3300161,1,12000495,2,3200530[3300155],123[1]"

	tRechargeDice_ItemId[3300162] = {}  -- 鸿运当头礼包
	tRechargeDice_ItemId[3300162]["Space"] = 1
	tRechargeDice_ItemId[3300162]["RewardItem"] = {}
	tRechargeDice_ItemId[3300162]["RewardItem"][1] = {}
	tRechargeDice_ItemId[3300162]["RewardItem"][1]["Id"] = 3200530  --骰子
	tRechargeDice_ItemId[3300162]["RewardItem"][1]["Attr"] = "0 414"
	tRechargeDice_ItemId[3300162]["RewardItem"][2] = {}
	tRechargeDice_ItemId[3300162]["RewardItem"][2]["Id"] = 3300155  --东皇赐福圣令
	tRechargeDice_ItemId[3300162]["RewardItem"][2]["Attr"] = "0 1"
	tRechargeDice_ItemId[3300162]["Log"] = "0,0,3300162,1,12000495,2,3200530[3300155],414[1]"

	tRechargeDice_ItemId[3300163] = {}  -- 鸿运当头礼包
	tRechargeDice_ItemId[3300163]["Space"] = 1
	tRechargeDice_ItemId[3300163]["RewardItem"] = {}
	tRechargeDice_ItemId[3300163]["RewardItem"][1] = {}
	tRechargeDice_ItemId[3300163]["RewardItem"][1]["Id"] = 3200530  --骰子
	tRechargeDice_ItemId[3300163]["RewardItem"][1]["Attr"] = "0 768"
	tRechargeDice_ItemId[3300163]["RewardItem"][2] = {}
	tRechargeDice_ItemId[3300163]["RewardItem"][2]["Id"] = 3300155  --东皇赐福圣令
	tRechargeDice_ItemId[3300163]["RewardItem"][2]["Attr"] = "0 1"
	tRechargeDice_ItemId[3300163]["Log"] = "0,0,3300163,1,12000495,2,3200530[3300155],768[1]"
	
	
	tRechargeDice_ItemId[3301422] = {}  -- 富贵无边礼包
	tRechargeDice_ItemId[3301422]["Space"] = 2
	tRechargeDice_ItemId[3301422]["RewardItem"] = {}
	tRechargeDice_ItemId[3301422]["RewardItem"][1] = {}
	tRechargeDice_ItemId[3301422]["RewardItem"][1]["Id"] = 3200530  --骰子
	tRechargeDice_ItemId[3301422]["RewardItem"][1]["Attr"] = "0 1503"
	tRechargeDice_ItemId[3301422]["RewardItem"][2] = {}
	tRechargeDice_ItemId[3301422]["RewardItem"][2]["Id"] = 3300155  --东皇赐福圣令
	tRechargeDice_ItemId[3301422]["RewardItem"][2]["Attr"] = "0 1"
	tRechargeDice_ItemId[3301422]["Log"] = "0,0,3300163,1,12000495,2,3200530[3300155],1503[1]"
	
	
	

	
	
local tRechargeDice_Stc = {}
	tRechargeDice_Stc[1] = {} --记录玩家领取赠点上限
	tRechargeDice_Stc[1]["EventType"] = 148
	tRechargeDice_Stc[1]["DataType"] = 05
local tRechargeDice_Data = {}
	tRechargeDice_Data["Limit"] = 40000
	
---------------------------------------------npc部分---------------------------------------------
--检测等级
-- function EmoneymonoDice_ChkLevel()
	-- if not User_JudgeLevelAndMetempsychosis(tEmoneymonoDice_Data["Level"],tEmoneymonoDice_Data["Metempsychosis"]) then 
		-- return true
	-- else
		-- return false
	-- end
-- end

-- 打开商店界面
-- function EmoneymonoDice_Open(nNpcId)
	-- if EmoneymonoDice_ChkLevel() then
		-- return
	-- end
	
	-- User_OpenDialog()
-- end

---------------------------------------------物品部分---------------------------------------------
function EmoneymonoDice_UseItemDice(nItemId)
	if Sys_ChkFullTime(tEmoneymonoDice_Data["Bef_Time"]) then
		User_TalkChannel2005(tEmoneymonoDice_Text["MsgBox"]["BTime"])
		return
	end

---过期删除物品
	-- if not Sys_ChkFullTime(tEmoneymonoDice_Data["Now_Time"]) then
		-- if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			-- local sLog = string.format(tEmoneymonoDice_Log[3],nItemId)
			-- Sys_SaveActionFestivalLog(sLog)
			-- Sys_MsgBox(tEmoneymonoDice_Text["MsgBox"]["AfTime"])
		-- end
		-- return
	-- end

---数量不足
	if not Item_ChkAccItem(nItemId,tEmoneymonoDice_Data["Num"]) then
		User_TalkChannel2005(tEmoneymonoDice_Text["MsgBox"]["NoUse"])
		return
	end
	local nEvent = tEmoneymonoDice_Stc[3]["EventType"]
	local nData = tEmoneymonoDice_Stc[3]["DataType"]
	if Task_StcInterval(nEvent,nData,3,0) then  --判断是否隔了3秒
		Task_SetStatistic(nEvent,nData,0,1)
		Task_SetStcTimestamp(nEvent,nData,0)
	end
	if Task_ChkStcValue(nEvent,nData,'>=',1) then
		User_TalkChannel2005(tEmoneymonoDice_Text["MsgBox"]["OverTime"])
		return
	end
	-- if Item_DelMulItem(nItemId,nItemId,tEmoneymonoDice_Data["Num"]) then
		local nMapId = Get_UserMapId()
		local nPosX = Get_UserPositionX() + 2
		local nPosY = Get_UserPositionY()
	---随机点数
		local flat,tNum = Probabil_RandomAward(tEmoneymonoDice_Prob,1)  
		local nNumber = tNum[1]["tAward"][1]["Item_1"]
		local nEventType = tRechargeDice_Stc[1]["EventType"] 
		local nDataType = tRechargeDice_Stc[1]["DataType"]
		local nDicenData = Get_UserStatisticValue(nEventType,nDataType)
		if nDicenData >= tRechargeDice_Data["Limit"] then  --赠点上限
			local nRandom22 = math.random(1,10000)
			if nRandom22 <= 5836 then
				nNumber = 3
			else
				nNumber = 2
			end
		end
		local nNum = math.random(1,#tEmoneymonoDice_Item[nNumber])  
		local nEmoneymono = tEmoneymonoDice_Item[nNumber][nNum]
		tEmoneymonoDice_Get["RewardEMoneyMono"]["Value"] = nEmoneymono
	--判断上限
		local nUserEmoneymono = Get_UserMonoEMoney()
		if  (nEmoneymono + nUserEmoneymono) > tEmoneymonoDice_Data["EmoneyLimit"] then
			User_TalkChannel2005(tEmoneymonoDice_Text["MsgBox"]["Emoneymono"])
			return
		end
	if Item_DelMulItem(nItemId,nItemId,tEmoneymonoDice_Data["Num"]) then
		if nNumber == 3 then  ---三个点数不一样
			local nFlag = math.random(1,#tEmoneymonoDice_Number[nNum])
			local tNumber = EmoneymonoDice_RadomNum(tEmoneymonoDice_Number[nNum][nFlag])
			for v,p in pairs(tNumber) do
				Map_Effect(nMapId,nPosX-2*v,nPosY-(4-v),tEmoneymonoDice_DiceEffect[p])
			end
			local nNum1 = tNumber[1]
			local nNum2 = tNumber[2]
			local nNum3 = tNumber[3]
			
			local sStr = string.format(tEmoneymonoDice_Text[3200530][nNumber],nNum1,nNum2,nNum3,nEmoneymono)
			User_TalkChannel2005(sStr)
			User_EffectAdd("self",tEmoneymonoDice_Data["Effect"])  --光效
		end
		if nNumber ~= 3 then  
			if nNumber == 1 then  ---三个点数一样
				for i=1,3 do
					
					Map_Effect(nMapId,nPosX-2*i,nPosY-(4-i),tEmoneymonoDice_DiceEffect[nNum])
				end
				local nUserId = Get_UserId()
				local sName = Get_UserName(nUserId)
				local sBroadCast = string.format(tEmoneymonoDice_Text[3200530]["BroadCast"],sName,nNum,nEmoneymono)
				Sys_SystemBroadcast(sBroadCast)
				local sLog = string.format(tEmoneymonoDice_Log[1],nNum,nEmoneymono)
				Sys_SaveActionFestivalLog(sLog)
				 sStr = string.format(tEmoneymonoDice_Text[3200530][nNumber],nNum,nNum,nNum,nNum,nEmoneymono)
				Sys_MsgBox(sStr)
			else   ---两点相同
				local tTab = {}
				for a = 1,6 do
					if a ~= nNum then
						table.insert(tTab,a)
					end
				end
				local nFlag = tTab[math.random(1,5)]
				local tAward = {nNum,nNum,nFlag}
				local tNum = EmoneymonoDice_RadomNum(tAward)
				local nNum11 = tNum[1]
				local nNum21 = tNum[2]
				local nNum31 = tNum[3]
				for i,j in pairs(tNum) do
					Map_Effect(nMapId,nPosX-2*i,nPosY-(4-i),tEmoneymonoDice_DiceEffect[j])
				end
				local sLog = string.format(tEmoneymonoDice_Log[2],nEmoneymono)
				Sys_SaveActionFestivalLog(sLog)
				local sStr = string.format(tEmoneymonoDice_Text[3200530][nNumber],nNum11,nNum21,nNum31,nNum,nEmoneymono)
				User_TalkChannel2005(sStr)
			end
			User_EffectAdd("self",tEmoneymonoDice_Data["GetEffect"])  --光效
		end
		local nNowUserId = Get_UserId()
		local sLog = tEmoneymonoDice_Get["UseLog"]
		tEmoneymonoDice_Get["Log"] = string.format(sLog,nEmoneymono)
		RewardTemplate_UseItem(tEmoneymonoDice_Get,nNowUserId)  --获得奖励
		local sEmoneyLog = string.format(tEmoneymonoDice_Data["EmoneyLog"],nEmoneymono)
		Sys_SaveEmoneyBuy(sEmoneyLog)  --emoneylog
		Task_SetStatistic(nEvent,nData,1,1)
		Task_SetStcTimestamp(nEvent,nData,0)
		Task_AddStatistic(nEventType,nDataType,nEmoneymono,1)
		Task_SetStcTimestamp(nEventType,nDataType,0)
	end
end

----随机获得点数
function EmoneymonoDice_RadomNum(tTab)
	local tAward = {}
	for i= 1,#tTab do
		tAward[i] = tTab[i]
	end
	local tTemp={} 
	for i=1,#tAward do  
		local na = math.random(#tAward)
		table.insert(tTemp,tAward[na])
		table.remove(tAward,na)
	end
	
	return tTemp
end

------获得骰子
function EmoneymonoDice_ItemDice(nItemId)
	if not Sys_ChkFullTime(tEmoneymonoDice_Data["Now_Time"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			local sLog = string.format(tEmoneymonoDice_Log[3],nItemId)
			Sys_SaveActionFestivalLog(sLog)
			Sys_MsgBox(tEmoneymonoDice_Text["MsgBox"]["AfTime"])
		end
		return
	end

--判断掩码
	local nEvent = tEmoneymonoDice_Reward[nItemId]["EventType"]
	local nType = tEmoneymonoDice_Reward[nItemId]["DataType"]
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	if Task_ChkStcValue(nEvent,nType,">",0) then
		Sys_MsgBox(tEmoneymonoDice_Text["MsgBox"][nItemId])
		return
	end
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		Task_SetStatistic(nEvent,nType,1,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		RewardTemplate_Reward(tEmoneymonoDice_Reward[nItemId])
		User_EffectAdd("self",tEmoneymonoDice_Data["Effect"])  --光效
	end
end

---------------------------------------------npc模板---------------------------------------------
---------------------------npc萨隆巴斯 19324
tNpcFace[4197] = 90

tNpcGossip[19324] = tNpcGossip[19324] or DefaultNpc:new{}
tNpcGossip[19324]["OptionHidden"] = 1
-- tNpcGossip[19324]["DialogueText"] = tEmoneymonoDice_Text[19324] 
--活动时间前
tNpcGossip[19324]["Text1-1"] = {111,112,114}
tNpcGossip[19324]["Text111"] = tEmoneymonoDice_Text[19324]["Text111"]
tNpcGossip[19324]["Text112"] = tEmoneymonoDice_Text[19324]["Text112"]
-- tNpcGossip[19324]["Text113"] = tEmoneymonoDice_Text[19324]["Text113"]
tNpcGossip[19324]["Text114"] = tEmoneymonoDice_Text[19324]["Text114"]

tNpcGossip[19324]["tOption1-1"] = {1}
tNpcGossip[19324]["Option1"] = tEmoneymonoDice_Text[19324]["Option1"]
tNpcGossip[19324]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tEmoneymonoDice_Data["Bef_Time"])
end

--活动时间后
tNpcGossip[19324]["Text1-2"] = {121}
tNpcGossip[19324]["Text121"] = tEmoneymonoDice_Text[19324]["Text121"]

tNpcGossip[19324]["tOption1-2"] = {21}
tNpcGossip[19324]["Option21"] = tEmoneymonoDice_Text[19324]["Option21"]

tNpcGossip[19324]["ChkFunc1-2"] = function()
	return not Sys_ChkFullTime(tEmoneymonoDice_Data["Now_Time"])
end


--活动时间中
---等级不足
-- tNpcGossip[19324]["Text1-3"] = {131,132,133,134,135}
-- tNpcGossip[19324]["Text131"] = tEmoneymonoDice_Text[19324]["Text131"]
-- tNpcGossip[19324]["Text132"] = tEmoneymonoDice_Text[19324]["Text132"]
-- tNpcGossip[19324]["Text133"] = tEmoneymonoDice_Text[19324]["Text133"]
-- tNpcGossip[19324]["Text134"] = tEmoneymonoDice_Text[19324]["Text134"]
-- tNpcGossip[19324]["Text135"] = tEmoneymonoDice_Text[19324]["Text135"]

-- tNpcGossip[19324]["tOption1-3"] = {31}
-- tNpcGossip[19324]["Option31"] = tEmoneymonoDice_Text[19324]["Option31"]

-- tNpcGossip[19324]["ChkFunc1-3"] = function()
	-- return (EmoneymonoDice_ChkLevel())
-- end

---【当天未接任务】
tNpcGossip[19324]["Text1-3"] = {131,132,133,134}
tNpcGossip[19324]["Text131"] = tEmoneymonoDice_Text[19324]["Text141"]
tNpcGossip[19324]["Text132"] = tEmoneymonoDice_Text[19324]["Text142"]
tNpcGossip[19324]["Text133"] = tEmoneymonoDice_Text[19324]["Text143"]
tNpcGossip[19324]["Text134"] = tEmoneymonoDice_Text[19324]["Text144"]

tNpcGossip[19324]["tOption1-3"] = {41,42,44}
tNpcGossip[19324]["Option41"] = tEmoneymonoDice_Text[19324]["Option41"]
tNpcGossip[19324]["Option42"] = tEmoneymonoDice_Text[19324]["Option42"]
-- tNpcGossip[19324]["Option43"] = tEmoneymonoDice_Text[19324]["Option43"]
tNpcGossip[19324]["Option44"] = tEmoneymonoDice_Text[19324]["Option44"]

tNpcGossip[19324]["OptionPoint41"]="2-1"
tNpcGossip[19324]["OptionPoint42"]="3-1"
-- tNpcGossip[19324]["OptionFunc43"] = "EmoneymonoDice_Open</N>19324"


---接1）如何获得骰子？
tNpcGossip[19324]["Text2-1"] = {211,212}
tNpcGossip[19324]["Text211"] = tEmoneymonoDice_Text[19324]["Text211"]
tNpcGossip[19324]["Text212"] = tEmoneymonoDice_Text[19324]["Text212"]

tNpcGossip[19324]["tOption2-1"] = {45}
tNpcGossip[19324]["Option45"] = tEmoneymonoDice_Text[19324]["Option45"]
tNpcGossip[19324]["OptionPoint45"]="1-1"

-- 接2）点数规则
tNpcGossip[19324]["Text3-1"] = {311,312,313,314,315,316}
tNpcGossip[19324]["Text311"] = tEmoneymonoDice_Text[19324]["Text311"]
tNpcGossip[19324]["Text312"] = tEmoneymonoDice_Text[19324]["Text312"]
tNpcGossip[19324]["Text313"] = tEmoneymonoDice_Text[19324]["Text313"]
tNpcGossip[19324]["Text314"] = tEmoneymonoDice_Text[19324]["Text314"]
tNpcGossip[19324]["Text315"] = tEmoneymonoDice_Text[19324]["Text315"]
tNpcGossip[19324]["Text316"] = tEmoneymonoDice_Text[19324]["Text316"]

tNpcGossip[19324]["tOption3-1"] = {46}
tNpcGossip[19324]["Option46"] = tEmoneymonoDice_Text[19324]["Option46"]
tNpcGossip[19324]["OptionPoint46"]="1-1"
---------------------------------------------物品模板---------------------------------------------
-- 骰子 3200530
tItem[3200530] = tItem[3200530] or {}
tItem[3200530]["Function"] = function (nItemId,sItemName)
	EmoneymonoDice_UseItemDice(nItemId)
end

tItem[3200723] = tItem[3200723] or {}
tItem[3200723]["Function"] = function (nItemId,sItemName)
	EmoneymonoDice_ItemDice(nItemId)
end
tItem[3200724] = tItem[3200723] or {}
