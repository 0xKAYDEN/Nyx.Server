------------------------------------------------------------------------------------
--Name:		[征服][活动脚本]2015圣诞元旦活动之圣诞礼物.lua
--Purpose:	2015圣诞元旦活动之圣诞礼物
--Creator: 	严振飞
--Created:	2015/08/24
------------------------------------------------------------------------------------
--掩码说明
---[1]	stc(138,11)	= 1 表示领取了 礼物盒阶段
---					= 2 表示已经把礼物挂在圣诞树上面了
---					= 10 表示完成任务阶段

---[2]	stc(138,12)	= 1 表示玩家挂在圣诞树上的是 流星礼物盒（自制）
---					= 2 表示玩家挂在圣诞树上的是 银两礼物盒（自制）
---					= 3 表示玩家挂在圣诞树上的是 宝石礼物盒（自制）

--LOGid 10002363
------------------------------------------------------------------------------------
--命名规范
--Christmas2015_XmasGift_
------------------------------------------------------------------------------------
--STC掩码表
local tChristmas2015_XmasGift_Stc = {}
----------------------------------------
---------------------stc(138,11)说明在上面
	tChristmas2015_XmasGift_Stc[1] = {}
	tChristmas2015_XmasGift_Stc[1]["EventData"] = 138
	tChristmas2015_XmasGift_Stc[1]["TypeData"] = 11
	tChristmas2015_XmasGift_Stc[1]["Phase1"] = 1
	tChristmas2015_XmasGift_Stc[1]["Phase2"] = 2
	tChristmas2015_XmasGift_Stc[1]["Complete"] = 10

---------------------stc(138,12)说明在上面
	tChristmas2015_XmasGift_Stc[2] = {}
	tChristmas2015_XmasGift_Stc[2]["EventData"] = 138
	tChristmas2015_XmasGift_Stc[2]["TypeData"] = 12
	tChristmas2015_XmasGift_Stc[2][3005044] = 3005302
	tChristmas2015_XmasGift_Stc[2][3005045] = 3005303
	tChristmas2015_XmasGift_Stc[2][3005046] = 3005304
	
------------------------------------------------------------------------------------
--活动数据
local tChristmas2015_XmasGift_Data = {}
	-- 活动时间
	tChristmas2015_XmasGift_Data["Festival_BefTime"] = "2017-01-01 00:00 2017-12-20 23:59"
	tChristmas2015_XmasGift_Data["Festival_NowTime"] = "2017-12-21 00:00 2018-01-03 23:59"

	--等级，转世设置，满级
	tChristmas2015_XmasGift_Data["MinLevel"] = 80
	tChristmas2015_XmasGift_Data["MinMeto"] = 0

	-- 背包空间
	tChristmas2015_XmasGift_Data["ChkSpace"] = 1

	-- 圣诞树寻路数据
	tChristmas2015_XmasGift_Data["MapId"] = 1002
	tChristmas2015_XmasGift_Data["NpcId"] = 17235
	tChristmas2015_XmasGift_Data["PosX"] = 357
	tChristmas2015_XmasGift_Data["PosY"] = 502
	
	-- 光效
	tChristmas2015_XmasGift_Data["EffectObj"] = "self"
	tChristmas2015_XmasGift_Data["Effect1"] = "angelwing"
	tChristmas2015_XmasGift_Data["Effect2"] = "zf2-e280"

----读条数据
	tChristmas2015_XmasGift_Explore = {}
	tChristmas2015_XmasGift_Explore["Secs"] = 3
	tChristmas2015_XmasGift_Explore["ActionId"] = 220

	
----礼盒物品(自制)ID
local tChristmas2015_XmasGift_GiftBoxId = {}
	tChristmas2015_XmasGift_GiftBoxId[1] = 3005043
	tChristmas2015_XmasGift_GiftBoxId[2] = 3005044
	tChristmas2015_XmasGift_GiftBoxId[3] = 3005045
	tChristmas2015_XmasGift_GiftBoxId[4] = 3005046

----礼盒ID
local tChristmas2015_XmasGift_GiftId = {}
	tChristmas2015_XmasGift_GiftId[1] = 3005302 -- 流星礼物盒
	tChristmas2015_XmasGift_GiftId[2] = 3005303 -- 银两礼物盒
	tChristmas2015_XmasGift_GiftId[3] = 3005304 -- 宝石礼物盒
----给礼盒属性
local tChristmas2015_XmasGift_GiftType = "0 0 0 1440 1"

----礼盒制作材料
local tChristmas2015_XmasGift_MadeMater = {}
	tChristmas2015_XmasGift_MadeMater[2] = 1088001
	tChristmas2015_XmasGift_MadeMater[3] = 50000
	tChristmas2015_XmasGift_MadeMater[4] = {}
	tChristmas2015_XmasGift_MadeMater[4][1] = 700041
	tChristmas2015_XmasGift_MadeMater[4][2] = 700031
	tChristmas2015_XmasGift_MadeMater[4][3] = 700021
	tChristmas2015_XmasGift_MadeMater[4][4] = 700011
	tChristmas2015_XmasGift_MadeMater[4][5] = 700001
	tChristmas2015_XmasGift_MadeMater[4][6] = 700051
	tChristmas2015_XmasGift_MadeMater[4][7] = 700061


----宝石ID
local tChristmas2015_XmasGift_GemId = {}
	-- 普通
	tChristmas2015_XmasGift_GemId["B"] = {}
	tChristmas2015_XmasGift_GemId["B"][1] = 700041
	tChristmas2015_XmasGift_GemId["B"][2] = 700031
	tChristmas2015_XmasGift_GemId["B"][3] = 700021
	tChristmas2015_XmasGift_GemId["B"][4] = 700011
	tChristmas2015_XmasGift_GemId["B"][5] = 700001
	tChristmas2015_XmasGift_GemId["B"][6] = 700051
	tChristmas2015_XmasGift_GemId["B"][7] = 700061
	-- 良品
	tChristmas2015_XmasGift_GemId["A"] = {}
	tChristmas2015_XmasGift_GemId["A"][1] = 700042
	tChristmas2015_XmasGift_GemId["A"][2] = 700032
	tChristmas2015_XmasGift_GemId["A"][3] = 700022
	tChristmas2015_XmasGift_GemId["A"][4] = 700012
	tChristmas2015_XmasGift_GemId["A"][5] = 700002
	tChristmas2015_XmasGift_GemId["A"][6] = 700052
	tChristmas2015_XmasGift_GemId["A"][7] = 700062
	-- 优质
	tChristmas2015_XmasGift_GemId["S"] = {}
	tChristmas2015_XmasGift_GemId["S"][1] = 700043
	tChristmas2015_XmasGift_GemId["S"][2] = 700033
	tChristmas2015_XmasGift_GemId["S"][3] = 700023
	tChristmas2015_XmasGift_GemId["S"][4] = 700013
	tChristmas2015_XmasGift_GemId["S"][5] = 700003
	tChristmas2015_XmasGift_GemId["S"][6] = 700053
	tChristmas2015_XmasGift_GemId["S"][7] = 700063

	
------------------------------------------------------------------------------------
--活动LOG数据
local tChristmas2015_XmasGift_Log = {}
	tChristmas2015_XmasGift_Log["FestivalId"] = 3471
	tChristmas2015_XmasGift_Log["LogId"] = 10002363
	-- 第一阶段
	tChristmas2015_XmasGift_Log["Phase1"] = "0,0,0,0,10002363,1[1],0,0"
	-- 给魔力礼盒
	tChristmas2015_XmasGift_Log["GetMagicBox"] = "0,0,0,0,10002363,2,3005043,1"
	-- 挂上自制礼盒（三种）
	tChristmas2015_XmasGift_Log["HangGiftBox"] = "0,0,%d,1,10002363,1[2],0,0"
	-- 获得礼盒
	tChristmas2015_XmasGift_Log["GetGift"] = "0,0,0,0,10002363,2,%d,1"
	-- 活动后删除礼盒
	tChristmas2015_XmasGift_Log["DelBox"] = "0,0,%d,1,10002363,2,0,0"
	-- 打开礼盒
	tChristmas2015_XmasGift_Log["OpenBox_Item"] = "0,0,%d,1,10002363,2,%d,1"
	tChristmas2015_XmasGift_Log["OpenBox_Money"] = "0,0,%d,1,10002363,2,1,%d"
	-- 制作礼盒
	tChristmas2015_XmasGift_Log["MadeGfitBox"] = "0,0,3005043[%d],1[1],10002363,2,%d,1"
	-- 制作金币礼盒
	tChristmas2015_XmasGift_Log["MadeMoneyBox"] = "0,0,3005043[1],1[%d],10002363,2,%d,1"

------------------------------------------------------------------------------------
--几率配置表
local tChristmas2015_XmasGift_Probabil = {}
----【给礼盒几率】
	tChristmas2015_XmasGift_Probabil[1] = {}
	tChristmas2015_XmasGift_Probabil[1][1] = {}
	tChristmas2015_XmasGift_Probabil[1][1]["ItemChanceSum"] = 10000
	--1/2
	tChristmas2015_XmasGift_Probabil[1][1][1] = {}
	tChristmas2015_XmasGift_Probabil[1][1][1]["RandomItemChanceType"] = 2
	tChristmas2015_XmasGift_Probabil[1][1][1]["ItemChance"] = 5000
	tChristmas2015_XmasGift_Probabil[1][1][1]["Item_1"] = 1
	--1/2
	tChristmas2015_XmasGift_Probabil[1][1][2] = {}
	tChristmas2015_XmasGift_Probabil[1][1][2]["RandomItemChanceType"] = 2
	tChristmas2015_XmasGift_Probabil[1][1][2]["ItemChance"] = 5000
	tChristmas2015_XmasGift_Probabil[1][1][2]["Item_1"] = 2
	
----【宝石-几率】
	tChristmas2015_XmasGift_Probabil[2] = {}
	tChristmas2015_XmasGift_Probabil[2][1] = {}
	tChristmas2015_XmasGift_Probabil[2][1]["ItemChanceSum"] = 7000
	--1/7	金麟宝石
	tChristmas2015_XmasGift_Probabil[2][1][1] = {}
	tChristmas2015_XmasGift_Probabil[2][1][1]["RandomItemChanceType"] = 2
	tChristmas2015_XmasGift_Probabil[2][1][1]["ItemChance"] = 1000
	tChristmas2015_XmasGift_Probabil[2][1][1]["Item_1"] = 1
	--1/7	青虹宝石
	tChristmas2015_XmasGift_Probabil[2][1][2] = {}
	tChristmas2015_XmasGift_Probabil[2][1][2]["RandomItemChanceType"] = 2
	tChristmas2015_XmasGift_Probabil[2][1][2]["ItemChance"] = 1000
	tChristmas2015_XmasGift_Probabil[2][1][2]["Item_1"] = 2
	--1/7	惊鸿宝石
	tChristmas2015_XmasGift_Probabil[2][1][3] = {}
	tChristmas2015_XmasGift_Probabil[2][1][3]["RandomItemChanceType"] = 2
	tChristmas2015_XmasGift_Probabil[2][1][3]["ItemChance"] = 1000
	tChristmas2015_XmasGift_Probabil[2][1][3]["Item_1"] = 3
	--1/7	龙恨宝石
	tChristmas2015_XmasGift_Probabil[2][1][4] = {}
	tChristmas2015_XmasGift_Probabil[2][1][4]["RandomItemChanceType"] = 2
	tChristmas2015_XmasGift_Probabil[2][1][4]["ItemChance"] = 1000
	tChristmas2015_XmasGift_Probabil[2][1][4]["Item_1"] = 4
	--1/7	凤吟宝石
	tChristmas2015_XmasGift_Probabil[2][1][5] = {}
	tChristmas2015_XmasGift_Probabil[2][1][5]["RandomItemChanceType"] = 2
	tChristmas2015_XmasGift_Probabil[2][1][5]["ItemChance"] = 1000
	tChristmas2015_XmasGift_Probabil[2][1][5]["Item_1"] = 5
	--1/7	紫霞宝石
	tChristmas2015_XmasGift_Probabil[2][1][6] = {}
	tChristmas2015_XmasGift_Probabil[2][1][6]["RandomItemChanceType"] = 2
	tChristmas2015_XmasGift_Probabil[2][1][6]["ItemChance"] = 1000
	tChristmas2015_XmasGift_Probabil[2][1][6]["Item_1"] = 6
	--1/7	明月宝石
	tChristmas2015_XmasGift_Probabil[2][1][7] = {}
	tChristmas2015_XmasGift_Probabil[2][1][7]["RandomItemChanceType"] = 2
	tChristmas2015_XmasGift_Probabil[2][1][7]["ItemChance"] = 1000
	tChristmas2015_XmasGift_Probabil[2][1][7]["Item_1"] = 7

----【流星礼物盒-几率】
	tChristmas2015_XmasGift_Probabil[3005302] = {}
	tChristmas2015_XmasGift_Probabil[3005302][1] = {}
	tChristmas2015_XmasGift_Probabil[3005302][1]["ItemChanceSum"] = 10000
	--91%	给1颗流星
	tChristmas2015_XmasGift_Probabil[3005302][1][1] = {}
	tChristmas2015_XmasGift_Probabil[3005302][1][1]["RandomItemChanceType"] = 2
	tChristmas2015_XmasGift_Probabil[3005302][1][1]["ItemChance"] = 9100
	tChristmas2015_XmasGift_Probabil[3005302][1][1]["Item_1"] = 1088001
	--9%	给流星卷
	tChristmas2015_XmasGift_Probabil[3005302][1][2] = {}
	tChristmas2015_XmasGift_Probabil[3005302][1][2]["RandomItemChanceType"] = 2
	tChristmas2015_XmasGift_Probabil[3005302][1][2]["ItemChance"] = 900
	tChristmas2015_XmasGift_Probabil[3005302][1][2]["Item_1"] = 720027
	
----【银两礼物盒-几率】
	tChristmas2015_XmasGift_Probabil[3005303] = {}
	tChristmas2015_XmasGift_Probabil[3005303][1] = {}
	tChristmas2015_XmasGift_Probabil[3005303][1]["ItemChanceSum"] = 10000
	--64%	5W
	tChristmas2015_XmasGift_Probabil[3005303][1][1] = {}
	tChristmas2015_XmasGift_Probabil[3005303][1][1]["RandomItemChanceType"] = 2
	tChristmas2015_XmasGift_Probabil[3005303][1][1]["ItemChance"] = 6400
	tChristmas2015_XmasGift_Probabil[3005303][1][1]["Item_1"] = 50000
	--27%	15W
	tChristmas2015_XmasGift_Probabil[3005303][1][2] = {}
	tChristmas2015_XmasGift_Probabil[3005303][1][2]["RandomItemChanceType"] = 2
	tChristmas2015_XmasGift_Probabil[3005303][1][2]["ItemChance"] = 2700
	tChristmas2015_XmasGift_Probabil[3005303][1][2]["Item_1"] = 150000
	--9%	25W
	tChristmas2015_XmasGift_Probabil[3005303][1][3] = {}
	tChristmas2015_XmasGift_Probabil[3005303][1][3]["RandomItemChanceType"] = 2
	tChristmas2015_XmasGift_Probabil[3005303][1][3]["ItemChance"] = 900
	tChristmas2015_XmasGift_Probabil[3005303][1][3]["Item_1"] = 250000

----【宝石礼物盒-几率】
	tChristmas2015_XmasGift_Probabil[3005304] = {}
	tChristmas2015_XmasGift_Probabil[3005304][1] = {}
	tChristmas2015_XmasGift_Probabil[3005304][1]["ItemChanceSum"] = 10000
	--84%	普通宝石
	tChristmas2015_XmasGift_Probabil[3005304][1][1] = {}
	tChristmas2015_XmasGift_Probabil[3005304][1][1]["RandomItemChanceType"] = 2
	tChristmas2015_XmasGift_Probabil[3005304][1][1]["ItemChance"] = 8400
	tChristmas2015_XmasGift_Probabil[3005304][1][1]["Item_1"] = "B"
	--14%	良品宝石
	tChristmas2015_XmasGift_Probabil[3005304][1][2] = {}
	tChristmas2015_XmasGift_Probabil[3005304][1][2]["RandomItemChanceType"] = 2
	tChristmas2015_XmasGift_Probabil[3005304][1][2]["ItemChance"] = 1400
	tChristmas2015_XmasGift_Probabil[3005304][1][2]["Item_1"] = "A"
	--2%	优质宝石
	tChristmas2015_XmasGift_Probabil[3005304][1][3] = {}
	tChristmas2015_XmasGift_Probabil[3005304][1][3]["RandomItemChanceType"] = 2
	tChristmas2015_XmasGift_Probabil[3005304][1][3]["ItemChance"] = 200
	tChristmas2015_XmasGift_Probabil[3005304][1][3]["Item_1"] = "S"



---------------------------------------NPC函数---------------------------------------------
-- 活动介绍跳转
function Christmas2015_XmasGift_Intro(nNpcId,sDialogNum)
	-- 活动时间
	if not Sys_ChkFullTime(tChristmas2015_XmasGift_Data["Festival_NowTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	LinkNpcGossipFunc_New(nNpcId,sDialogNum)
end

-- 自动寻路
function Christmas2015_XmasGift_FindNpc()
	local nMapId = tChristmas2015_XmasGift_Data["MapId"]
	local nNpcId = tChristmas2015_XmasGift_Data["NpcId"]
	local nPosX = tChristmas2015_XmasGift_Data["PosX"]
	local nPosY = tChristmas2015_XmasGift_Data["PosY"]

	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
end

-- 任务完成掩码判断函数
function Christmas2015_XmasGift_ChkTaskStc(nNpcId,sDoneText)
	local nEventData_1 = tChristmas2015_XmasGift_Stc[1]["EventData"]
	local nTypeData_1 = tChristmas2015_XmasGift_Stc[1]["TypeData"]
	local nPhase1_1 = tChristmas2015_XmasGift_Stc[1]["Phase1"]
	local nPhase2_1 = tChristmas2015_XmasGift_Stc[1]["Phase2"]
	-- 今天是否已完成
	if Task_ChkStcValue(nEventData_1,nTypeData_1,">",nPhase2_1) then
		-- 是否隔天
		if not Task_StcInterval(nEventData_1,nTypeData_1,1,4) then
			LinkNpcGossipFunc_New(nNpcId,sDoneText)
			return false
			
		-- 隔天清掩码
		else
			-- 删礼盒及三种自制礼盒
			for i=1, #tChristmas2015_XmasGift_GiftBoxId do
				local nItemId = tChristmas2015_XmasGift_GiftBoxId[i]
				if Item_ChkItem(nItemId) then
					Item_DelAllItemByType(nItemId)
				end
			end
			
			-- 掩码值清零
			local nEventData_2 = tChristmas2015_XmasGift_Stc[2]["EventData"]
			local nTypeData_2 = tChristmas2015_XmasGift_Stc[2]["TypeData"]
			Task_SetStatistic(nEventData_1,nTypeData_1,0,1)
			Task_SetStatistic(nEventData_2,nTypeData_2,0,1)
			Task_SetStcTimestamp(nEventData_1,nTypeData_1,0)
			return true
		end
	else
		return true
	end
end

---------------------------------------【圣诞树精灵叮当】
-- 领取魔力礼物盒
function Christmas2015_XmasGift_GetMagicBox(nNpcId)
	-- 活动时间
	if not Sys_ChkFullTime(tChristmas2015_XmasGift_Data["Festival_NowTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end

	-- 掩码判断
	if not Christmas2015_XmasGift_ChkTaskStc(nNpcId,"3-2") then
		return
	end
	
	-- 未领取魔力礼盒
	local nEventData_1 = tChristmas2015_XmasGift_Stc[1]["EventData"]
	local nTypeData_1 = tChristmas2015_XmasGift_Stc[1]["TypeData"]
	local nPhase1_1 = tChristmas2015_XmasGift_Stc[1]["Phase1"]
	if Task_ChkStcValue(nEventData_1,nTypeData_1,"==",0) then
		
		-- 背包空间
		if not User_CheckLeftSpace(tChristmas2015_XmasGift_Data["ChkSpace"]) then
			LinkNpcGossipFunc_New(nNpcId,"3-3")
			return
		end
		
		Task_SetStatistic(nEventData_1,nTypeData_1,nPhase1_1,1)
		Sys_SaveActionFestivalLog(tChristmas2015_XmasGift_Log["Phase1"])

	-- 表示领取魔力礼盒阶段
	elseif Task_ChkStcValue(nEventData_1,nTypeData_1,"==",nPhase1_1) then
		-- 是否存在魔力礼盒
		if Item_ChkItem(tChristmas2015_XmasGift_GiftBoxId[1]) then
			LinkNpcGossipFunc_New(nNpcId,"3-4")
			return
			
		else -- 是否已自制礼盒（三种）
			for i = 2, #tChristmas2015_XmasGift_GiftBoxId do
				if Item_ChkItem(tChristmas2015_XmasGift_GiftBoxId[i]) then
					LinkNpcGossipFunc_New(nNpcId,"3-5")
					return
				end
			end
		end
		
		-- 背包空间
		if not User_CheckLeftSpace(tChristmas2015_XmasGift_Data["ChkSpace"]) then
			LinkNpcGossipFunc_New(nNpcId,"3-3")
			return
		end

	else -- 已挂上礼物
		LinkNpcGossipFunc_New(nNpcId,"3-6")
		return
	end
	
	-- 给魔力礼盒
	Item_AddItem(tChristmas2015_XmasGift_GiftBoxId[1])
	Sys_SaveActionFestivalLog(tChristmas2015_XmasGift_Log["GetMagicBox"])
	LinkNpcGossipFunc_New(nNpcId,"3-7")
end

---------------------------------------【圣诞树】
-- 我要挂礼物
function Christmas2015_XmasGift_HangGiftBox(nNpcId)
	-- 活动时间
	if not Sys_ChkFullTime(tChristmas2015_XmasGift_Data["Festival_NowTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 掩码判断
	if not Christmas2015_XmasGift_ChkTaskStc(nNpcId,"2-1") then
		return
	end
	
	local nEventData_1 = tChristmas2015_XmasGift_Stc[1]["EventData"]
	local nTypeData_1 = tChristmas2015_XmasGift_Stc[1]["TypeData"]
	-- 未领取魔力礼盒
	if Task_ChkStcValue(nEventData_1,nTypeData_1,"==",0) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	-- 身上有	礼物盒
	local nItemId = 0
	for i = 2, #tChristmas2015_XmasGift_GiftBoxId do
		if Item_ChkItem(tChristmas2015_XmasGift_GiftBoxId[i]) then
			nItemId = tChristmas2015_XmasGift_GiftBoxId[i]
			break
		end
	end
	
	-- 礼盒（自制）都不存在
	if nItemId == 0 then
	
		-- 是否有魔盒
		if Item_ChkItem(tChristmas2015_XmasGift_GiftBoxId[1]) then
			LinkNpcGossipFunc_New(nNpcId,"2-3")
		else
			LinkNpcGossipFunc_New(nNpcId,"2-2")
		end
		return
	end
	
	local nEventData_2 = tChristmas2015_XmasGift_Stc[2]["EventData"]
	local nTypeData_2 = tChristmas2015_XmasGift_Stc[2]["TypeData"]
	-- 存在礼盒
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local nPhase2_1 = tChristmas2015_XmasGift_Stc[1]["Phase2"]
		local nStcValue_2 = tChristmas2015_XmasGift_Stc[2][nItemId]
		Task_SetStatistic(nEventData_1,nTypeData_1,nPhase2_1,1)
		Task_SetStatistic(nEventData_2,nTypeData_2,nStcValue_2,1)
		sLogText = string.format(tChristmas2015_XmasGift_Log["HangGiftBox"],nItemId)
		Sys_SaveActionFestivalLog(sLogText)
		LinkNpcGossipFunc_New(nNpcId,"2-4")
	end
end

-- 我要拿礼物
function Christmas2015_XmasGift_GetGiftBox(nNpcId)
	-- 活动时间
	if not Sys_ChkFullTime(tChristmas2015_XmasGift_Data["Festival_NowTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 掩码判断
	if not Christmas2015_XmasGift_ChkTaskStc(nNpcId,"2-1") then
		return
	end
	
	local nEventData_1 = tChristmas2015_XmasGift_Stc[1]["EventData"]
	local nTypeData_1 = tChristmas2015_XmasGift_Stc[1]["TypeData"]
	local nPhase2_1 = tChristmas2015_XmasGift_Stc[1]["Phase2"]

	-- 未挂过礼物
	if not Task_ChkStcValue(nEventData_1,nTypeData_1,"==",nPhase2_1) then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	
	-- 背包空间
	if not User_CheckLeftSpace(tChristmas2015_XmasGift_Data["ChkSpace"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end 
	
	-- 满足条件置掩码
	local nComplete = tChristmas2015_XmasGift_Stc[1]["Complete"]
	Task_SetStatistic(nEventData_1,nTypeData_1,nComplete,1)
	Task_SetStcTimestamp(nEventData_1,nTypeData_1,0)
	
	local nEventData_2 = tChristmas2015_XmasGift_Stc[2]["EventData"]
	local nTypeData_2 = tChristmas2015_XmasGift_Stc[2]["TypeData"]

	local nItemNum = 0
	local tItemId = {}
		tItemId[1] = 0
		tItemId[2] = 0
	
	-- 给哪两个礼盒处理
	for i = 1, #tChristmas2015_XmasGift_GiftId do
		local nGiftBoxId = tChristmas2015_XmasGift_GiftId[i]
		-- local nStcValue_2 = tChristmas2015_XmasGift_Stc[2][nGiftBoxId]
		if not Task_ChkStcValue(nEventData_2,nTypeData_2,"==",nGiftBoxId) then
			nItemNum = nItemNum + 1
			tItemId[nItemNum] = nGiftBoxId
		end
	end
	
	-- 重置挂树上的自制礼盒种类
	Task_SetStatistic(nEventData_2,nTypeData_2,0,1)
	
	-- 几率给礼盒
	local flat,tItem = Probabil_RandomAward(tChristmas2015_XmasGift_Probabil[1],1)
	local nItemNum = tItem[1]["tAward"][1]["Item_1"]
	local nItemId = tItemId[nItemNum]
	local sItemAttr = tChristmas2015_XmasGift_GiftType
	Item_AddNewItem(nItemId,sItemAttr)
	local sLogText = string.format(tChristmas2015_XmasGift_Log["GetGift"],nItemId)
	Sys_SaveActionFestivalLog(sLogText)
	User_TalkChannel2005(tChristmas2015_XmasGift_Text["GetGift"])
end

-------------------------------------【魔力礼物盒】---------------------------------------
-- 物品活动时间判断函数
function Christmas2015_XmasGift_ChkTaskTime(nItemId,sItemName)
	--活动前
	if Sys_ChkFullTime(tChristmas2015_XmasGift_Data["Festival_BefTime"]) then
		Sys_MsgBox(tChristmas2015_XmasGift_Text["GiftBox_BefTime"])
		return false
	end
	
	-- 活动后
	if not Sys_ChkFullTime(tChristmas2015_XmasGift_Data["Festival_NowTime"]) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			Sys_SaveActionFestivalLog(string.format(tChristmas2015_XmasGift_Log["DelBox"],nItemId))
			Sys_MsgBox(string.format(tChristmas2015_XmasGift_Text["GiftBox_AftTime"],sItemName))
		end
		return false
	end
	
	return true
end

-- 制作执行(材料为物品)
function Christmas2015_XmasGift_ItemMading(nItemId,nMaterId,nMadeType,nUserId)
	-- 活动时间
	local sItemName = Get_ItemtypeName(nItemId)
	local sMaterIdName = Get_ItemtypeName(nMaterId)
	if not Christmas2015_XmasGift_ChkTaskTime(nItemId,sItemName) then
		return
	end

	-- 删除材料
	if Item_ChkItem(nItemId,1,0,nUserId) and Item_ChkItem(nMaterId,1,0,nUserId) and Item_DelItem(nItemId,1,0,nUserId) and Item_DelItem(nMaterId,1,0,nUserId) then
		local nNewItemId = tChristmas2015_XmasGift_GiftBoxId[nMadeType]
		-- Item_AddItem(nNewItemId)
		Item_AddNewItem(nNewItemId,"0 1",nUserId)
		local sLogText = string.format(tChristmas2015_XmasGift_Log["MadeGfitBox"],nMaterId,nNewItemId)
		local sBoxText = string.format(tChristmas2015_XmasGift_Text[3005043]["SucMade"][nNewItemId],sMaterIdName)
		local sFunc = "Christmas2015_XmasGift_FindNpc"
		Sys_SaveActionFestivalLog(sLogText,nUserId)
		Sys_MsgBox(sBoxText,sFunc)
	else
		Sys_MsgBox(tChristmas2015_XmasGift_Text[3005043]["DisMater"])
		return
	end
end

-- 制作执行(材料为金币)
function Christmas2015_XmasGift_MoneyMading(nItemId,nMadeMoney,nUserId)
	-- 活动时间
	local sItemName = Get_ItemtypeName(nItemId)
	if not Christmas2015_XmasGift_ChkTaskTime(nItemId,sItemName) then
		return
	end
	
	-- 删除材料和金币
	if Item_ChkItem(nItemId,1,0,nUserId) and User_CanPutMoney2Bag(-nMadeMoney,nUserId) then
		Item_DelItem(nItemId,1,0,nUserId)
		User_AddMoney(-nMadeMoney,nUserId)
		local nNewItemId = tChristmas2015_XmasGift_GiftBoxId[3]
		-- Item_AddItem(nNewItemId)
		Item_AddNewItem(nNewItemId,"0 1",nUserId)
		local sLogText = string.format(tChristmas2015_XmasGift_Log["MadeMoneyBox"],nMadeMoney,nNewItemId)
		local sBoxText = tChristmas2015_XmasGift_Text[3005043]["SucMade"][nNewItemId]
		local sFunc = "Christmas2015_XmasGift_FindNpc"
		Sys_SaveActionFestivalLog(sLogText,nUserId)
		Sys_MsgBox(sBoxText,sFunc)
	end
end


-- 制作礼盒（材料为物品）
function Christmas2015_XmasGift_MadeByItem(nItemId,nMadeType,nGemType)
	-- 活动时间
	local sItemName = Get_ItemtypeName(nItemId)
	if not Christmas2015_XmasGift_ChkTaskTime(nItemId,sItemName) then
		return
	end
	
	local nMaterId = 0
	-- 为宝石制作
	if nMadeType == 4 then
		nMaterId = tChristmas2015_XmasGift_MadeMater[nMadeType][nGemType]
		
	-- 为流星制作
	else
		nMaterId = tChristmas2015_XmasGift_MadeMater[nMadeType]
	end
	
	-- 是否存在材料
	if Item_ChkItem(nItemId) and Item_ChkItem(nMaterId) then
		local nSecs = tChristmas2015_XmasGift_Explore["Secs"]
		local sContent = tChristmas2015_XmasGift_Text[3005043]["Explore"]
		local nActionId = tChristmas2015_XmasGift_Explore["ActionId"]
		local sFunc = "Christmas2015_XmasGift_ItemMading</N>".. nItemId .."</N>".. nMaterId .."</N>".. nMadeType
		User_SetExplore(nSecs,sContent,nActionId,sFunc)
	else
		Sys_MsgBox(tChristmas2015_XmasGift_Text[3005043]["DisMater"])
		return
	end
end

-- 制作礼盒（材料为银两）
function Christmas2015_XmasGift_MadeByMoney(nItemId,nMadeType)
	-- 活动时间
	local sItemName = Get_ItemtypeName(nItemId)
	if not Christmas2015_XmasGift_ChkTaskTime(nItemId,sItemName) then
		return
	end

	-- 判断金币是否足够
	local nMadeMoney = tChristmas2015_XmasGift_MadeMater[nMadeType]
	if Item_ChkItem(nItemId) and User_CanPutMoney2Bag(-nMadeMoney) then
		local nSecs = tChristmas2015_XmasGift_Explore["Secs"]
		local sContent = tChristmas2015_XmasGift_Text[3005043]["Explore"]
		local nActionId = tChristmas2015_XmasGift_Explore["ActionId"]
		local sFunc = "Christmas2015_XmasGift_MoneyMading</N>".. nItemId .."</N>".. nMadeMoney
		User_SetExplore(nSecs,sContent,nActionId,sFunc)
	else
		Sys_MsgBox(tChristmas2015_XmasGift_Text[3005043]["DisMater"])
		return
	end
end

-- 1颗普通宝石（二次确认）。
function Christmas2015_XmasGift_IsGem(nItemId,nMadeType,nGemType)
	-- 活动时间
	local sItemName = Get_ItemtypeName(nItemId)
	if not Christmas2015_XmasGift_ChkTaskTime(nItemId,sItemName) then
		return
	end
	local nGemId = tChristmas2015_XmasGift_MadeMater[nMadeType][nGemType]
	local sGemName = Get_ItemtypeName(nGemId)
	local sDialogText = string.format(tChristmas2015_XmasGift_Text[nItemId]["Text151"],sGemName)
	local sOptionFunc1 = string.format("</F>Christmas2015_XmasGift_MadeByItem</N>%d</N>%d</N>%d",nItemId,nMadeType,nGemType)
	local sOptionFunc2 = string.format("</F>LinkItemGossipFunc_New</N>%s</S>%s",nItemId,"1-4")
	Sys_DialogText(sDialogText)
	Sys_DialogOption(tChristmas2015_XmasGift_Text[nItemId]["151"],sOptionFunc1)
	Sys_DialogOption(tChristmas2015_XmasGift_Text[nItemId]["152"],sOptionFunc2)
	Sys_DialogEnd()
end


------------------------------------------NPC配置-------------------------------------------
---------------------NPC头像
tNpcFace[3262] = 119
tNpcFace[3263] = 201
---------------------NPC对话
------------------------------------------
-- 【圣诞树精灵叮当】
tNpcGossip[17234] = tNpcGossip[17234] or DefaultNpc:new{}
tNpcGossip[17234]["OptionHidden"] = 1

-- 活动前
tNpcGossip[17234]["Text1-1"] = {111,112,113}
tNpcGossip[17234]["Text111"] = tChristmas2015_XmasGift_Text[17234]["Text111"]
tNpcGossip[17234]["Text112"] = tChristmas2015_XmasGift_Text[17234]["Text112"]
tNpcGossip[17234]["Text113"] = tChristmas2015_XmasGift_Text[17234]["Text113"]
tNpcGossip[17234]["tOption1-1"] = {111}
tNpcGossip[17234]["Option111"] = tChristmas2015_XmasGift_Text[17234]["111"]
tNpcGossip[17234]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tChristmas2015_XmasGift_Data["Festival_BefTime"])
end

-- 活动后
tNpcGossip[17234]["Text1-2"] = {121}
tNpcGossip[17234]["Text121"] = tChristmas2015_XmasGift_Text[17234]["Text121"]
tNpcGossip[17234]["tOption1-2"] = {121}
tNpcGossip[17234]["Option121"] = tChristmas2015_XmasGift_Text[17234]["121"]
tNpcGossip[17234]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tChristmas2015_XmasGift_Data["Festival_NowTime"])
end

-- 活动中（玩家等级不足）
tNpcGossip[17234]["Text1-3"] = {131,132}
tNpcGossip[17234]["Text131"] = tChristmas2015_XmasGift_Text[17234]["Text131"]
tNpcGossip[17234]["Text132"] = tChristmas2015_XmasGift_Text[17234]["Text132"]
tNpcGossip[17234]["tOption1-3"] = {131}
tNpcGossip[17234]["Option131"] = tChristmas2015_XmasGift_Text[17234]["131"]
tNpcGossip[17234]["ChkFunc1-3"] = function ()
	return not User_JudgeLevelAndMetempsychosis(tChristmas2015_XmasGift_Data["MinLevel"],tChristmas2015_XmasGift_Data["MinMeto"])
end

-- 活动中（满足条件）
tNpcGossip[17234]["Text1-4"] = {141,142,143,144}
tNpcGossip[17234]["Text141"] = tChristmas2015_XmasGift_Text[17234]["Text141"]
tNpcGossip[17234]["Text142"] = tChristmas2015_XmasGift_Text[17234]["Text142"]
tNpcGossip[17234]["Text143"] = tChristmas2015_XmasGift_Text[17234]["Text143"]
tNpcGossip[17234]["Text144"] = tChristmas2015_XmasGift_Text[17234]["Text144"]
tNpcGossip[17234]["tOption1-4"] = {141,142,143}
tNpcGossip[17234]["Option141"] = tChristmas2015_XmasGift_Text[17234]["141"]
tNpcGossip[17234]["Option142"] = tChristmas2015_XmasGift_Text[17234]["142"]
tNpcGossip[17234]["Option143"] = tChristmas2015_XmasGift_Text[17234]["143"]
tNpcGossip[17234]["OptionFunc141"] = "Christmas2015_XmasGift_GetMagicBox</N>17234"
tNpcGossip[17234]["OptionFunc142"] = "Christmas2015_XmasGift_Intro</N>17234</S>2-1"

-- 【具体规则是什么样的呢？】
tNpcGossip[17234]["Text2-1"] = {211,212,213}
tNpcGossip[17234]["Text211"] = tChristmas2015_XmasGift_Text[17234]["Text211"]
tNpcGossip[17234]["Text212"] = tChristmas2015_XmasGift_Text[17234]["Text212"]
tNpcGossip[17234]["Text213"] = tChristmas2015_XmasGift_Text[17234]["Text213"]
tNpcGossip[17234]["tOption2-1"] = {211,212}
tNpcGossip[17234]["Option211"] = tChristmas2015_XmasGift_Text[17234]["211"]
tNpcGossip[17234]["Option212"] = tChristmas2015_XmasGift_Text[17234]["212"]
tNpcGossip[17234]["OptionFunc211"] = "Christmas2015_XmasGift_Intro</N>17234</S>2-2"

-- 礼物交换到一样的怎么办？
tNpcGossip[17234]["Text2-2"] = {221,222}
tNpcGossip[17234]["Text221"] = tChristmas2015_XmasGift_Text[17234]["Text221"]
tNpcGossip[17234]["Text222"] = tChristmas2015_XmasGift_Text[17234]["Text222"]
tNpcGossip[17234]["tOption2-2"] = {221,222}
tNpcGossip[17234]["Option221"] = tChristmas2015_XmasGift_Text[17234]["221"]
tNpcGossip[17234]["Option222"] = tChristmas2015_XmasGift_Text[17234]["222"]
tNpcGossip[17234]["OptionPoint221"] = "1"


-- 【我要领取魔力礼物盒。】
-- 等级不足
-- tNpcGossip[17234]["Text3-1"] = {311}
-- tNpcGossip[17234]["tOption3-1"] = {311}
-- tNpcGossip[17234]["Text311"] = tChristmas2015_XmasGift_Text[17234]["Text311"]
-- tNpcGossip[17234]["Option311"] = tChristmas2015_XmasGift_Text[17234]["311"]

-- 当天已完成任务
tNpcGossip[17234]["Text3-2"] = {321}
tNpcGossip[17234]["Text321"] = tChristmas2015_XmasGift_Text[17234]["Text321"]
tNpcGossip[17234]["tOption3-2"] = {321}
tNpcGossip[17234]["Option321"] = tChristmas2015_XmasGift_Text[17234]["321"]

-- 背包空间不足
tNpcGossip[17234]["Text3-3"] = {331}
tNpcGossip[17234]["Text331"] = tChristmas2015_XmasGift_Text[17234]["Text331"]
tNpcGossip[17234]["tOption3-3"] = {331}
tNpcGossip[17234]["Option331"] = tChristmas2015_XmasGift_Text[17234]["331"]

-- 已有魔力礼盒
tNpcGossip[17234]["Text3-4"] = {341}
tNpcGossip[17234]["Text341"] = tChristmas2015_XmasGift_Text[17234]["Text341"]
tNpcGossip[17234]["tOption3-4"] = {341}
tNpcGossip[17234]["Option341"] = tChristmas2015_XmasGift_Text[17234]["341"]

-- 已有自制礼盒
tNpcGossip[17234]["Text3-5"] = {351}
tNpcGossip[17234]["Text351"] = tChristmas2015_XmasGift_Text[17234]["Text351"]
tNpcGossip[17234]["Option351"] = tChristmas2015_XmasGift_Text[17234]["351"]
tNpcGossip[17234]["tOption3-5"] = {351}
tNpcGossip[17234]["OptionFunc351"] = "Christmas2015_XmasGift_FindNpc"


-- 已挂上礼物阶段
tNpcGossip[17234]["Text3-6"] = {361}
tNpcGossip[17234]["tOption3-6"] = {361}
tNpcGossip[17234]["Text361"] = tChristmas2015_XmasGift_Text[17234]["Text361"]
tNpcGossip[17234]["Option361"] = tChristmas2015_XmasGift_Text[17234]["361"]

-- 获得魔力礼盒
tNpcGossip[17234]["Text3-7"] = {371}
tNpcGossip[17234]["Text371"] = tChristmas2015_XmasGift_Text[17234]["Text371"]
tNpcGossip[17234]["tOption3-7"] = {371}
tNpcGossip[17234]["Option371"] = tChristmas2015_XmasGift_Text[17234]["371"]



------------------------------------------
-- 【圣诞树】
tNpcGossip[17235] = tNpcGossip[17235] or DefaultNpc:new{}
tNpcGossip[17235]["OptionHidden"] = 1

-- 不在活动时间内--等级不足
tNpcGossip[17235]["Text1-1"] = {111}
tNpcGossip[17235]["Text111"] = tChristmas2015_XmasGift_Text[17235]["Text111"]
tNpcGossip[17235]["tOption1-1"] = {111}
tNpcGossip[17235]["Option111"] = tChristmas2015_XmasGift_Text[17235]["111"]
tNpcGossip[17235]["ChkFunc1-1"] = function ()
	-- 活动时间
	if not Sys_ChkFullTime(tChristmas2015_XmasGift_Data["Festival_NowTime"]) then
		return true
	end
	
	-- 等级不足
	local nMinLev = tChristmas2015_XmasGift_Data["MinLevel"]
	local nMinMeto = tChristmas2015_XmasGift_Data["MinMeto"]
	if not User_JudgeLevelAndMetempsychosis(nMinLev,nMinMeto) then
		return true
	end
	
	-- 满足条件继续往下
	return false
end

-- 活动中
tNpcGossip[17235]["Text1-2"] = {121}
tNpcGossip[17235]["Text121"] = tChristmas2015_XmasGift_Text[17235]["Text121"]
tNpcGossip[17235]["tOption1-2"] = {121,122,123}
tNpcGossip[17235]["Option121"] = tChristmas2015_XmasGift_Text[17235]["121"]
tNpcGossip[17235]["Option122"] = tChristmas2015_XmasGift_Text[17235]["122"]
tNpcGossip[17235]["Option123"] = tChristmas2015_XmasGift_Text[17235]["123"]
tNpcGossip[17235]["OptionFunc121"] = "Christmas2015_XmasGift_HangGiftBox</N>17235"
tNpcGossip[17235]["OptionFunc122"] = "Christmas2015_XmasGift_GetGiftBox</N>17235"
tNpcGossip[17235]["ChkFunc1-2"] = function ()
	local nEventData_1 = tChristmas2015_XmasGift_Stc[1]["EventData"]
	local nTypeData_1 = tChristmas2015_XmasGift_Stc[1]["TypeData"]
	local nPhase2_1 = tChristmas2015_XmasGift_Stc[1]["Phase2"]

	-- 今天是否已完成
	if Task_ChkStcValue(nEventData_1,nTypeData_1,">",nPhase2_1) then
		
		-- 是否隔天
		if Task_StcInterval(nEventData_1,nTypeData_1,1,4) then
			tNpcGossip[17235]["tOption1-2"] = {121,123}
		else
			tNpcGossip[17235]["tOption1-2"] = {123}
		end
	
	-- 是否已挂上礼物
	elseif Task_ChkStcValue(nEventData_1,nTypeData_1,"==",nPhase2_1) then
		tNpcGossip[17235]["tOption1-2"] = {122,123}
	else
		tNpcGossip[17235]["tOption1-2"] = {121,123}
	end
	
	return true
end

-- 【我要挂礼物】
-- 已完成任务
tNpcGossip[17235]["Text2-1"] = {211}
tNpcGossip[17235]["Text211"] = tChristmas2015_XmasGift_Text[17235]["Text211"]
tNpcGossip[17235]["tOption2-1"] = {211}
tNpcGossip[17235]["Option211"] = tChristmas2015_XmasGift_Text[17235]["211"]

-- 未领取魔力礼盒
tNpcGossip[17235]["Text2-2"] = {221}
tNpcGossip[17235]["Text221"] = tChristmas2015_XmasGift_Text[17235]["Text221"]
tNpcGossip[17235]["tOption2-2"] = {221}
tNpcGossip[17235]["Option221"] = tChristmas2015_XmasGift_Text[17235]["221"]

-- 魔盒未做成自制礼盒
tNpcGossip[17235]["Text2-3"] = {231}
tNpcGossip[17235]["Text231"] = tChristmas2015_XmasGift_Text[17235]["Text231"]
tNpcGossip[17235]["tOption2-3"] = {231}
tNpcGossip[17235]["Option231"] = tChristmas2015_XmasGift_Text[17235]["231"]

-- 成功挂上礼盒
tNpcGossip[17235]["Text2-4"] = {241}
tNpcGossip[17235]["Text241"] = tChristmas2015_XmasGift_Text[17235]["Text241"]
tNpcGossip[17235]["tOption2-4"] = {241}
tNpcGossip[17235]["Option241"] = tChristmas2015_XmasGift_Text[17235]["241"]
tNpcGossip[17235]["OptionFunc241"] = "Christmas2015_XmasGift_GetGiftBox</N>17234"


-- 【我要拿礼物。】
-- 没挂过礼物
tNpcGossip[17235]["Text3-1"] = {311}
tNpcGossip[17235]["tOption3-1"] = {311}
tNpcGossip[17235]["Text311"] = tChristmas2015_XmasGift_Text[17235]["Text311"]
tNpcGossip[17235]["Option311"] = tChristmas2015_XmasGift_Text[17235]["311"]

-- 背包空间不足
tNpcGossip[17235]["Text3-2"] = {321}
tNpcGossip[17235]["Text321"] = tChristmas2015_XmasGift_Text[17235]["Text321"]
tNpcGossip[17235]["tOption3-2"] = {321}
tNpcGossip[17235]["Option321"] = tChristmas2015_XmasGift_Text[17235]["321"]



---------------------------------------物品配置---------------------------------------------
-------------------------------------【礼物盒（自制）】---------------------------------------
tItem[3005044] = tItem[3005044] or {}
tItem[3005045] = tItem[3005044] or {}
tItem[3005046] = tItem[3005044] or {}
tItem[3005044]["Function"] = function (nItemId,sItemName)
	-- 活动时间
	if not Christmas2015_XmasGift_ChkTaskTime(nItemId,sItemName) then
		return
	end
	
	Sys_MsgBox(tChristmas2015_XmasGift_Text["GiftBox_IntTime"])
end

-------------------------------------【礼物盒】---------------------------------------
tItem[3005302] = tItem[3005302] or {}
tItem[3005303] = tItem[3005302] or {}
tItem[3005304] = tItem[3005302] or {}
tItem[3005302]["Function"] = function (nItemId,sItemName)
	-- 活动时间
	if not Christmas2015_XmasGift_ChkTaskTime(nItemId,sItemName) then
		return
	end
	
	-- 背包空间
	if not User_CheckLeftSpace(tChristmas2015_XmasGift_Data["ChkSpace"]) then
		Sys_MsgBox(tChristmas2015_XmasGift_Text["SpaceFull"])
		return
	end
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local nFestivalId = tChristmas2015_XmasGift_Log["FestivalId"]
		local nLogId = tChristmas2015_XmasGift_Log["LogId"]
		local nEffectObj = tChristmas2015_XmasGift_Data["EffectObj"]
		local nEffect = tChristmas2015_XmasGift_Data["Effect1"]
		FestivalGeneralPackage_GetGift(nFestivalId,nLogId)
		User_EffectAdd(nEffectObj,nEffect)
		
		-- 给几率奖励
		local flat,tItem = Probabil_RandomAward(tChristmas2015_XmasGift_Probabil[nItemId],1)
		local nNewItemId = tItem[1]["tAward"][1]["Item_1"]
		local sTalkText = ""
		local sLogText = ""
		
		-- 为流星礼盒
		if nItemId == tChristmas2015_XmasGift_GiftId[1] then
			Item_AddItem(nNewItemId)
			sLogText = string.format(tChristmas2015_XmasGift_Log["OpenBox_Item"],nItemId,nNewItemId)
			sTalkText = tChristmas2015_XmasGift_Text["OpenBox"][nItemId][nNewItemId]

		-- 为银两礼盒
		elseif nItemId == tChristmas2015_XmasGift_GiftId[2] then
			-- 背包不能放入银两
			if not User_CanPutMoney2Bag(nNewItemId) then
				Sys_MsgBox(tChristmas2015_XmasGift_Text["MoneyFull"])
				return
			end
			
			User_AddMoney(nNewItemId)
			sLogText = string.format(tChristmas2015_XmasGift_Log["OpenBox_Money"],nItemId,nNewItemId)
			sTalkText = tChristmas2015_XmasGift_Text["OpenBox"][nItemId][nNewItemId]
			
		-- 为宝石礼盒
		else
			-- 随机宝石种类
			local flat,tItem = Probabil_RandomAward(tChristmas2015_XmasGift_Probabil[2],1)
			local nGemType = tItem[1]["tAward"][1]["Item_1"]
			nGemItemId = tChristmas2015_XmasGift_GemId[nNewItemId][nGemType]
			local sItemName = Get_ItemtypeName(nGemItemId)
			
			Item_AddItem(nGemItemId)
			sLogText = string.format(tChristmas2015_XmasGift_Log["OpenBox_Item"],nItemId,nGemItemId)
			sTalkText = string.format(tChristmas2015_XmasGift_Text["OpenBox"][nNewItemId],sItemName)
		end
		
		Sys_SaveActionFestivalLog(sLogText)
		User_TalkChannel2005(sTalkText)
	end
end


-------------------------------------【魔力礼物盒】---------------------------------------
tItem[3005043] = tItem[3005043] or {}
tItem[3005043]["Function"] = function (nItemId,sItemName)
	-- 活动时间
	if not Christmas2015_XmasGift_ChkTaskTime(nItemId,sItemName) then
		return
	end
	
	LinkItemGossipFunc_New(nItemId,"1-1")
end

-- 初始对白
tItem[3005043]["Text1-1"] = {111}
tItem[3005043]["Text111"] = tChristmas2015_XmasGift_Text[3005043]["Text111"] 
tItem[3005043]["tOption1-1"] = {111,112,113}
tItem[3005043]["Option111"] = tChristmas2015_XmasGift_Text[3005043]["111"]
tItem[3005043]["Option112"] = tChristmas2015_XmasGift_Text[3005043]["112"]
tItem[3005043]["Option113"] = tChristmas2015_XmasGift_Text[3005043]["113"]
tItem[3005043]["OptionPoint111"] = "1-2"
tItem[3005043]["OptionPoint112"] = "1-3"
tItem[3005043]["OptionPoint113"] = "1-4"

-- 1颗流星
tItem[3005043]["Text1-2"] = {121}
tItem[3005043]["Text121"] = tChristmas2015_XmasGift_Text[3005043]["Text121"] 
tItem[3005043]["tOption1-2"] = {121}
tItem[3005043]["Option121"] = tChristmas2015_XmasGift_Text[3005043]["121"]
tItem[3005043]["OptionFunc121"] = "Christmas2015_XmasGift_MadeByItem</N>3005043</N>2"

-- 5万银两。
tItem[3005043]["Text1-3"] = {131}
tItem[3005043]["Text131"] = tChristmas2015_XmasGift_Text[3005043]["Text131"] 
tItem[3005043]["tOption1-3"] = {131}
tItem[3005043]["Option131"] = tChristmas2015_XmasGift_Text[3005043]["131"]
tItem[3005043]["OptionFunc131"] = "Christmas2015_XmasGift_MadeByMoney</N>3005043</N>3"

-- 1颗普通宝石。
tItem[3005043]["Text1-4"] = {141}
tItem[3005043]["Text141"] = tChristmas2015_XmasGift_Text[3005043]["Text141"] 
tItem[3005043]["tOption1-4"] = {141,142,143,144,145,146,147}
tItem[3005043]["Option141"] = tChristmas2015_XmasGift_Text[3005043]["141"]
tItem[3005043]["Option142"] = tChristmas2015_XmasGift_Text[3005043]["142"]
tItem[3005043]["Option143"] = tChristmas2015_XmasGift_Text[3005043]["143"]
tItem[3005043]["Option144"] = tChristmas2015_XmasGift_Text[3005043]["144"]
tItem[3005043]["Option145"] = tChristmas2015_XmasGift_Text[3005043]["145"]
tItem[3005043]["Option146"] = tChristmas2015_XmasGift_Text[3005043]["146"]
tItem[3005043]["Option147"] = tChristmas2015_XmasGift_Text[3005043]["147"]
tItem[3005043]["OptionFunc141"] = "Christmas2015_XmasGift_IsGem</N>3005043</N>4</N>1"
tItem[3005043]["OptionFunc142"] = "Christmas2015_XmasGift_IsGem</N>3005043</N>4</N>2"
tItem[3005043]["OptionFunc143"] = "Christmas2015_XmasGift_IsGem</N>3005043</N>4</N>3"
tItem[3005043]["OptionFunc144"] = "Christmas2015_XmasGift_IsGem</N>3005043</N>4</N>4"
tItem[3005043]["OptionFunc145"] = "Christmas2015_XmasGift_IsGem</N>3005043</N>4</N>5"
tItem[3005043]["OptionFunc146"] = "Christmas2015_XmasGift_IsGem</N>3005043</N>4</N>6"
tItem[3005043]["OptionFunc147"] = "Christmas2015_XmasGift_IsGem</N>3005043</N>4</N>7"
