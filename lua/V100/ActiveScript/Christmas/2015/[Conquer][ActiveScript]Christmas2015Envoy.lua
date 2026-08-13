------------------------------------------------------------------------------------
--Name:		[征服][活动脚本]2015圣诞元旦活动之双蛋大使.lua
--Purpose:	2015圣诞元旦活动之双蛋大使
--Creator: 	严振飞
--Created:	2015/08/24
------------------------------------------------------------------------------------
--掩码说明
---[1]	stc(138,14)	 = 0 今日还未领取双倍经验时间
---					 = 1 今日已领取双倍经验时间
---[2]	stc(138,15)	 = 0 今日还未领取完成3个活动的奖励
---					 = 1 今日已领取完成3个活动的奖励
---[3]	stc(138,16)	 = 0 今日还未领取完成6个活动的奖励
---					 = 1 今日已领取完成6个活动的奖励
---[4]	stc(138,17)	 = 0 今日还未领取完成9个活动的奖励
---					 = 1 今日已领取完成9个活动的奖励


--LOGid 10002377
------------------------------------------------------------------------------------
--命名规范
--Christmas2015_Envoy_
------------------------------------------------------------------------------------
--STC掩码表
local tChristmas2015_Envoy_Stc = {}
----------------------------------------
---------------------stc(138,14)记录是否领取双倍经验时间
	tChristmas2015_Envoy_Stc[1] = {}
	tChristmas2015_Envoy_Stc[1]["EventData"] = 138
	tChristmas2015_Envoy_Stc[1]["TypeData"] = 14
	tChristmas2015_Envoy_Stc[1]["Complete"] = 1
---------------------stc(138,15)记录完成3个活动奖励领取情况
	tChristmas2015_Envoy_Stc[3] = {}
	tChristmas2015_Envoy_Stc[3]["EventData"] = 138
	tChristmas2015_Envoy_Stc[3]["TypeData"] = 15
	tChristmas2015_Envoy_Stc[3]["Complete"] = 1
---------------------stc(138,16)记录完成6个活动奖励领取情况
	tChristmas2015_Envoy_Stc[6] = {}
	tChristmas2015_Envoy_Stc[6]["EventData"] = 138
	tChristmas2015_Envoy_Stc[6]["TypeData"] = 16
	tChristmas2015_Envoy_Stc[6]["Complete"] = 1
---------------------stc(138,17)记录完成9个活动奖励领取情况
	tChristmas2015_Envoy_Stc[9] = {}
	tChristmas2015_Envoy_Stc[9]["EventData"] = 138
	tChristmas2015_Envoy_Stc[9]["TypeData"] = 17
	tChristmas2015_Envoy_Stc[9]["Complete"] = 1

------------------------------------------------------------------------------------
--活动数据
local tChristmas2015_Envoy_Data = {}
	-- 活动时间
	tChristmas2015_Envoy_Data["Festival_BefTime"] = "2017-01-01 00:00 2017-12-20 23:59"
	tChristmas2015_Envoy_Data["Festival_NowTime"] = "2017-12-21 00:00 2018-01-03 23:59"

	-- 等级，转世设置
	tChristmas2015_Envoy_Data["MinLevel"] = 80
	tChristmas2015_Envoy_Data["MinMeto"] = 0

	-- 两小时双倍经验
	tChristmas2015_Envoy_Data["ExpPercent"] = 200
	tChristmas2015_Envoy_Data["ExpTime"] = 7200

	-- 背包空间
	tChristmas2015_Envoy_Data["ChkSpace"] = 1

	-- 欢乐彩蛋
	tChristmas2015_Envoy_Data["ColorEgg"] = 3005319
	
	-- 光效
	tChristmas2015_Envoy_Data["EffectObj"] = "self"
	tChristmas2015_Envoy_Data["Effect_1"] = "CircleUp" -- 领取彩蛋成功
	tChristmas2015_Envoy_Data["Effect_2"] = "red-flower-charm3" -- 参加大转盘成功

	-- 轮盘转世
	tChristmas2015_Envoy_Data["RouletteMeto"] = {}
	tChristmas2015_Envoy_Data["RouletteMeto"][1] = 1
	tChristmas2015_Envoy_Data["RouletteMeto"][2] = 2
	
	-- 轮盘任务ID
	tChristmas2015_Envoy_Data["TaskId"] = {}
	tChristmas2015_Envoy_Data["TaskId"][1] = 3342
	tChristmas2015_Envoy_Data["TaskId"][2] = 3344
	tChristmas2015_Envoy_Data["TaskId"][3] = 3345

	-- 传送花圃数据
	tChristmas2015_Envoy_Data["MapId"] = 1002
	tChristmas2015_Envoy_Data["PosX"] = 345
	tChristmas2015_Envoy_Data["PosY"] = 461
	tChristmas2015_Envoy_Data["BoundX"] = 1
	tChristmas2015_Envoy_Data["BoundY"] = 1
	
	
-- 其他活动主NPC数据
local tChristmas2015_Envoy_Npc = {}
	tChristmas2015_Envoy_Npc["MapId"] = 1002
	-- 一两秒杀。
	tChristmas2015_Envoy_Npc[1] = {}
	tChristmas2015_Envoy_Npc[1]["NpcId"] = 18823
	tChristmas2015_Envoy_Npc[1]["PosX"] = 355
	tChristmas2015_Envoy_Npc[1]["PosY"] = 482
	-- 圣诞礼物。
	tChristmas2015_Envoy_Npc[2] = {}
	tChristmas2015_Envoy_Npc[2]["NpcId"] = 17234
	tChristmas2015_Envoy_Npc[2]["PosX"] = 340
	tChristmas2015_Envoy_Npc[2]["PosY"] = 487
	-- 蛋宝净化论。
	tChristmas2015_Envoy_Npc[3] = {}
	tChristmas2015_Envoy_Npc[3]["NpcId"] = 10871
	tChristmas2015_Envoy_Npc[3]["PosX"] = 355
	tChristmas2015_Envoy_Npc[3]["PosY"] = 489
	-- 礼物达人秀。
	tChristmas2015_Envoy_Npc[4] = {}
	tChristmas2015_Envoy_Npc[4]["NpcId"] = 17242
	tChristmas2015_Envoy_Npc[4]["PosX"] = 349
	tChristmas2015_Envoy_Npc[4]["PosY"] = 473
	-- 鸡蛋去哪儿。
	tChristmas2015_Envoy_Npc[5] = {}
	tChristmas2015_Envoy_Npc[5]["NpcId"] = 18814
	tChristmas2015_Envoy_Npc[5]["PosX"] = 355
	tChristmas2015_Envoy_Npc[5]["PosY"] = 467
	-- 欢乐堆雪人。
	tChristmas2015_Envoy_Npc[6] = {}
	tChristmas2015_Envoy_Npc[6]["NpcId"] = 18825
	tChristmas2015_Envoy_Npc[6]["PosX"] = 340
	tChristmas2015_Envoy_Npc[6]["PosY"] = 461
	-- 蛋碎的祝福。
	tChristmas2015_Envoy_Npc[7] = {}
	tChristmas2015_Envoy_Npc[7]["NpcId"] = 18808
	tChristmas2015_Envoy_Npc[7]["PosX"] = 355
	tChristmas2015_Envoy_Npc[7]["PosY"] = 461
	-- 舌尖上的美食。
	tChristmas2015_Envoy_Npc[8] = {}
	tChristmas2015_Envoy_Npc[8]["NpcId"] = 18810
	tChristmas2015_Envoy_Npc[8]["PosX"] = 340
	tChristmas2015_Envoy_Npc[8]["PosY"] = 475
	-- 双蛋大使
	tChristmas2015_Envoy_Npc[9] = {}
	tChristmas2015_Envoy_Npc[9]["NpcId"] = 17273
	tChristmas2015_Envoy_Npc[9]["PosX"] = 345
	tChristmas2015_Envoy_Npc[9]["PosY"] = 461

	
	
-- 其他活动完成掩码
local tChristmas2015_Envoy_DoneStc = {}
	-- 一两秒杀。
	tChristmas2015_Envoy_DoneStc[1] = {}
	tChristmas2015_Envoy_DoneStc[1]["EventData"] = 137
	tChristmas2015_Envoy_DoneStc[1]["TypeData"] = 99
	tChristmas2015_Envoy_DoneStc[1]["Complete"] = 1
	-- 圣诞礼物。
	tChristmas2015_Envoy_DoneStc[2] = {}
	tChristmas2015_Envoy_DoneStc[2]["EventData"] = 138
	tChristmas2015_Envoy_DoneStc[2]["TypeData"] = 11
	tChristmas2015_Envoy_DoneStc[2]["Complete"] = 10
	-- 蛋宝净化论。
	tChristmas2015_Envoy_DoneStc[3] = {}
	tChristmas2015_Envoy_DoneStc[3]["EventData"] = 137
	tChristmas2015_Envoy_DoneStc[3]["TypeData"] = 91
	tChristmas2015_Envoy_DoneStc[3]["Complete"] = 7
	-- 礼物达人秀。
	tChristmas2015_Envoy_DoneStc[4] = {}
	tChristmas2015_Envoy_DoneStc[4]["EventData"] = 130
	tChristmas2015_Envoy_DoneStc[4]["TypeData"] = 92
	tChristmas2015_Envoy_DoneStc[4]["Complete"] = 1
	-- 鸡蛋去哪儿。
	tChristmas2015_Envoy_DoneStc[5] = {}
	tChristmas2015_Envoy_DoneStc[5]["EventData"] = 138
	tChristmas2015_Envoy_DoneStc[5]["TypeData"] = 04
	tChristmas2015_Envoy_DoneStc[5]["Complete"] = 4
	-- 欢乐堆雪人。
	tChristmas2015_Envoy_DoneStc[6] = {}
	tChristmas2015_Envoy_DoneStc[6]["EventData"] = 138
	tChristmas2015_Envoy_DoneStc[6]["TypeData"] = 00
	tChristmas2015_Envoy_DoneStc[6]["Complete"] = 2
	-- 蛋碎的祝福。
	tChristmas2015_Envoy_DoneStc[7] = {}
	tChristmas2015_Envoy_DoneStc[7]["EventData"] = 137
	tChristmas2015_Envoy_DoneStc[7]["TypeData"] = 66
	tChristmas2015_Envoy_DoneStc[7]["Complete"] = 3
	-- 舌尖上的美食。
	tChristmas2015_Envoy_DoneStc[8] = {}
	tChristmas2015_Envoy_DoneStc[8]["EventData"] = 138
	tChristmas2015_Envoy_DoneStc[8]["TypeData"] = 92
	tChristmas2015_Envoy_DoneStc[8]["Complete"] = 1
	-- 双蛋大使
	tChristmas2015_Envoy_DoneStc[9] = {}
	tChristmas2015_Envoy_DoneStc[9]["EventData"] = 138
	tChristmas2015_Envoy_DoneStc[9]["TypeData"] = 14
	tChristmas2015_Envoy_DoneStc[9]["Complete"] = 1

---------------------------------------物品数据-------------------------------------
local tChristmas2015_Envoy_ItemData = {}
	-- 奖励类型
	tChristmas2015_Envoy_ItemData["EXP"] = 4 -- 经验
	tChristmas2015_Envoy_ItemData["BLS"] = 5 -- 祝福
	tChristmas2015_Envoy_ItemData["CUL"] = 6 -- 修行值
	tChristmas2015_Envoy_ItemData["EPC"] = 7 -- 双倍经验时间
	tChristmas2015_Envoy_ItemData["STR"] = 12 -- 气力值
	tChristmas2015_Envoy_ItemData["GFQ"] = 16 -- 真气
	tChristmas2015_Envoy_ItemData["QiMax"] = 5 -- 真气上限
	-- 奖励光效
	tChristmas2015_Envoy_ItemData["EffectObj"] = "self"
	tChristmas2015_Envoy_ItemData["Effect"] = {}
	tChristmas2015_Envoy_ItemData["Effect"]["Coat"] = "accession"	-- 外套
	tChristmas2015_Envoy_ItemData["Effect"][4] = "moveback" 	-- 经验
	tChristmas2015_Envoy_ItemData["Effect"][5] = "CircleUp" 	-- 祝福
	tChristmas2015_Envoy_ItemData["Effect"][6] = "warrior-s" 	-- 修行值
	tChristmas2015_Envoy_ItemData["Effect"][7] = "zf2-e290" 	-- 双倍经验时间
	tChristmas2015_Envoy_ItemData["Effect"][12] = "accession6" 	-- 气力值
	tChristmas2015_Envoy_ItemData["Effect"][16] = "attackup" 	-- 真气

	-- 背包信
	tChristmas2015_Envoy_ItemData[3005363] = {}
	tChristmas2015_Envoy_ItemData[3005363][4] = 30
	tChristmas2015_Envoy_ItemData[3005363][6] = 15
	-- 迷你经验火腿
	tChristmas2015_Envoy_ItemData[3005341] = {}
	tChristmas2015_Envoy_ItemData[3005341][4] = 15
	tChristmas2015_Envoy_ItemData[3005341][6] = 7
	-- 小个经验火腿
	tChristmas2015_Envoy_ItemData[3005342] = {}
	tChristmas2015_Envoy_ItemData[3005342][4] = 30
	tChristmas2015_Envoy_ItemData[3005342][6] = 15
	-- 大个经验火腿
	tChristmas2015_Envoy_ItemData[3005343] = {}
	tChristmas2015_Envoy_ItemData[3005343][4] = 60
	tChristmas2015_Envoy_ItemData[3005343][6] = 30
	-- 小颗祝福糖果
	tChristmas2015_Envoy_ItemData[3005344] = {}
	tChristmas2015_Envoy_ItemData[3005344]["Type"] = 5
	tChristmas2015_Envoy_ItemData[3005344]["Value"] = 24
	-- 大颗祝福糖果
	tChristmas2015_Envoy_ItemData[3005345] = {}
	tChristmas2015_Envoy_ItemData[3005345]["Type"] = 5
	tChristmas2015_Envoy_ItemData[3005345]["Value"] = 72
	-- 迷你修行彩虹糖
	tChristmas2015_Envoy_ItemData[3005346] = {}
	tChristmas2015_Envoy_ItemData[3005346]["Type"] = 6
	tChristmas2015_Envoy_ItemData[3005346]["Value"] = 10
	-- 小颗修行彩虹糖
	tChristmas2015_Envoy_ItemData[3005347] = {}
	tChristmas2015_Envoy_ItemData[3005347]["Type"] = 6
	tChristmas2015_Envoy_ItemData[3005347]["Value"] = 30
	-- 气力巧克力糖
	tChristmas2015_Envoy_ItemData[3005348] = {}
	tChristmas2015_Envoy_ItemData[3005348]["Type"] = 12
	tChristmas2015_Envoy_ItemData[3005348]["Value"] = 20
	-- 真气糖葫芦
	tChristmas2015_Envoy_ItemData[3005349] = {}
	tChristmas2015_Envoy_ItemData[3005349]["Type"] = 16
	tChristmas2015_Envoy_ItemData[3005349]["Value"] = 1
	-- 迷你经验披萨
	tChristmas2015_Envoy_ItemData[3005350] = {}
	tChristmas2015_Envoy_ItemData[3005350]["Type"] = 7
	tChristmas2015_Envoy_ItemData[3005350]["Value"] = 1800
	-- 小块经验披萨
	tChristmas2015_Envoy_ItemData[3005351] = {}
	tChristmas2015_Envoy_ItemData[3005351]["Type"] = 7
	tChristmas2015_Envoy_ItemData[3005351]["Value"] = 3600
	-- 大块经验披萨
	tChristmas2015_Envoy_ItemData[3005352] = {}
	tChristmas2015_Envoy_ItemData[3005352]["Type"] = 7
	tChristmas2015_Envoy_ItemData[3005352]["Value"] = 7200
	-- 圣诞嗨皮礼包
	tChristmas2015_Envoy_ItemData[3005353] = {}
	tChristmas2015_Envoy_ItemData[3005353]["ItemId"] = 192555
	tChristmas2015_Envoy_ItemData[3005353]["SafeTime"] = 1440
	-- 普世欢腾雪橇礼包
	tChristmas2015_Envoy_ItemData[3005354] = {}
	tChristmas2015_Envoy_ItemData[3005354]["ItemId"] = 200491
	tChristmas2015_Envoy_ItemData[3005354]["SafeTime"] = 1440
	-- 圣诞嗨皮礼包
	tChristmas2015_Envoy_ItemData[3005355] = {}
	tChristmas2015_Envoy_ItemData[3005355]["ItemId"] = 192555
	tChristmas2015_Envoy_ItemData[3005355]["SafeTime"] = 4320
	-- 普世欢腾雪橇礼包
	tChristmas2015_Envoy_ItemData[3005356] = {}
	tChristmas2015_Envoy_ItemData[3005356]["ItemId"] = 200491
	tChristmas2015_Envoy_ItemData[3005356]["SafeTime"] = 4320
	-- 圣诞嗨皮礼包
	tChristmas2015_Envoy_ItemData[3005357] = {}
	tChristmas2015_Envoy_ItemData[3005357]["ItemId"] = 192555
	tChristmas2015_Envoy_ItemData[3005357]["SafeTime"] = 10080
	-- 普世欢腾雪橇礼包
	tChristmas2015_Envoy_ItemData[3005358] = {}
	tChristmas2015_Envoy_ItemData[3005358]["ItemId"] = 200491
	tChristmas2015_Envoy_ItemData[3005358]["SafeTime"] = 10080

------------------------------------------------------------------------------------
--活动LOG数据
local tChristmas2015_Envoy_Log = {}
	-- 领取两小时双倍经验
	tChristmas2015_Envoy_Log["GetExpTime"] = "0,0,0,0,10002377,2,7,7200"
	-- 领取欢乐彩蛋
	tChristmas2015_Envoy_Log["GeColorEgg"] = "0,0,0,0,10002377,2[%d],3005319,1"
	-- 礼包开启
	tChristmas2015_Envoy_Log["OpenPag"] = "0,0,%d,1,10002377,2,%d,%d"
	

	
---------------------------------------NPC函数---------------------------------------------
-- 活动时间判断
function Christmas2015_Envoy_ChkTime(nNpcId,sTextNum)
	-- 活动时间
	if not Sys_ChkFullTime(tChristmas2015_Envoy_Data["Festival_NowTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	LinkNpcGossipFunc_New(nNpcId,sTextNum)
end

-- 领取彩蛋选项判断
function Christmas2015_Envoy_ChkOption(nTaskNum)
	local nEventData = tChristmas2015_Envoy_Stc[nTaskNum]["EventData"]
	local nTypeData = tChristmas2015_Envoy_Stc[nTaskNum]["TypeData"]
	local nComplete = tChristmas2015_Envoy_Stc[nTaskNum]["Complete"]
	
	-- 是否已领取
	if Task_ChkStcValue(nEventData,nTypeData,">=",nComplete) then
		-- 隔天
		return not Task_StcInterval(nEventData,nTypeData,1,4)
	else
		return false
	end
end

-- 自动寻路
function Christmas2015_Envoy_FindNpc(nNpcNum)
	local nMapId = tChristmas2015_Envoy_Npc["MapId"]
	local nNpcId = tChristmas2015_Envoy_Npc[nNpcNum]["NpcId"]
	local nPosX = tChristmas2015_Envoy_Npc[nNpcNum]["PosX"]
	local nPosY = tChristmas2015_Envoy_Npc[nNpcNum]["PosY"]
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
end

-- 切换地图
function Christmas2015_Envoy_ChgMap()
	local nMapId = tChristmas2015_Envoy_Data["MapId"]
	local nPosX = tChristmas2015_Envoy_Data["PosX"]
	local nPosY = tChristmas2015_Envoy_Data["PosY"]
	local nBoundX = tChristmas2015_Envoy_Data["BoundX"]
	local nBoundY = tChristmas2015_Envoy_Data["BoundY"]
	if Get_UserMapId() ~= Get_NpcMapID() then
		User_TalkChannel2005(tTransferFail_Text["MsgTip"])
		return
	end
	
	--将玩家传送到地图的指定区域
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,nBoundX,nBoundY)
	User_TalkChannel2005(tChristmas2015_Envoy_Text["ChgMap"])
end
--------------------------------------------------------------------------------------
-- 【领取两小时双倍经验。】
function Christmas2015_Envoy_DoubleExpTime(nNpcId)
	-- 活动时间
	if not Sys_ChkFullTime(tChristmas2015_Envoy_Data["Festival_NowTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	local nEventData_1 = tChristmas2015_Envoy_Stc[1]["EventData"]
	local nTypeData_1 = tChristmas2015_Envoy_Stc[1]["TypeData"]
	local nComplete_1 = tChristmas2015_Envoy_Stc[1]["Complete"]
	-- 是否已领取
	if Task_ChkStcValue(nEventData_1,nTypeData_1,">=",nComplete_1) then
		-- 隔天
		if not Task_StcInterval(nEventData_1,nTypeData_1,1,4) then
			Sys_MsgBox(tChristmas2015_Envoy_Text["GetExpTimeDone"])
			return
		end
	end

	-- 置掩码
	Task_SetStatistic(nEventData_1,nTypeData_1,nComplete_1,1)
	Task_SetStcTimestamp(nEventData_1,nTypeData_1,0)
	
	-- 双倍经验时间
	local nPercent = tChristmas2015_Envoy_Data["ExpPercent"]
	local nTime = tChristmas2015_Envoy_Data["ExpTime"]
	User_SetExpControl(nPercent,nTime)
	Sys_SaveActionFestivalLog(tChristmas2015_Envoy_Log["GetExpTime"])
	User_TalkChannel2005(tChristmas2015_Envoy_Text["GetExpTimeSuc"])
end

-- 【领取欢乐彩蛋。】
function Christmas2015_Envoy_ColorEggs(nNpcId,nTaskNum)
	-- 活动时间
	if not Sys_ChkFullTime(tChristmas2015_Envoy_Data["Festival_NowTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	local nEventData_N = tChristmas2015_Envoy_Stc[nTaskNum]["EventData"]
	local nTypeData_N = tChristmas2015_Envoy_Stc[nTaskNum]["TypeData"]
	local nComplete_N = tChristmas2015_Envoy_Stc[nTaskNum]["Complete"]
	-- 是否已领取
	if Task_ChkStcValue(nEventData_N,nTypeData_N,">=",nComplete_N) then
		-- 隔天
		if not Task_StcInterval(nEventData_N,nTypeData_N,1,4) then
			User_TalkChannel2005(tChristmas2015_Envoy_Text["ColorEggsDone"])
			return
		end
	end
	
	-- 背包空间
	if not User_CheckLeftSpace(tChristmas2015_Envoy_Data["ChkSpace"]) then
		User_TalkChannel2005(tChristmas2015_Envoy_Text["SpaceFull"])
		return
	end
	
	-- 记录完成几个活动
	local nTaskDoneNum = 0
	for i = 1, #tChristmas2015_Envoy_DoneStc do
		local nEventData = tChristmas2015_Envoy_DoneStc[i]["EventData"]
		local nTypeData = tChristmas2015_Envoy_DoneStc[i]["TypeData"]
		local nComplete = tChristmas2015_Envoy_DoneStc[i]["Complete"]
		-- 是否完成活动
		if Task_ChkStcValue(nEventData,nTypeData,">=",nComplete) then
			-- 隔天
			if not Task_StcInterval(nEventData,nTypeData,1,4) then
				nTaskDoneNum = nTaskDoneNum + 1
			end
		end
	end
	-- User_TalkChannel2005("完成几个："..nTaskDoneNum)
	-- 是否完成指定数量活动
	if nTaskNum > nTaskDoneNum then
		Sys_MsgBox(string.format(tChristmas2015_Envoy_Text["TaskNumLack"],nTaskNum))
		return
	end
	
	-- 置掩码
	Task_SetStatistic(nEventData_N,nTypeData_N,nComplete_N,1)
	Task_SetStcTimestamp(nEventData_N,nTypeData_N,0)
	
	-- 给彩蛋
	Item_AddItem(tChristmas2015_Envoy_Data["ColorEgg"])
	User_EffectAdd(tChristmas2015_Envoy_Data["EffectObj"],tChristmas2015_Envoy_Data["Effect_1"])
	Sys_SaveActionFestivalLog(string.format(tChristmas2015_Envoy_Log["GeColorEgg"],nTaskNum))
	User_TalkChannel2005(tChristmas2015_Envoy_Text["ColorEggsSuc"])
end
	
-- 【参与幸运大转盘。】
function Christmas2015_Envoy_LuckyRoulette(nNpcId)
	-- 活动时间
	if not Sys_ChkFullTime(tChristmas2015_Envoy_Data["Festival_NowTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 是否有彩蛋
	local nItemId = tChristmas2015_Envoy_Data["ColorEgg"]
	if Item_ChkItem(nItemId) then
		-- 转世判断
		local nUserId = Get_UserId()
		local nUserMeto = Get_UserMetempsychosis(nUserId)
		local nTaskId = 0
		for i=1, #tChristmas2015_Envoy_Data["RouletteMeto"] do
			if nUserMeto < tChristmas2015_Envoy_Data["RouletteMeto"][i] then
				nTaskId = tChristmas2015_Envoy_Data["TaskId"][i]
				break
			elseif i == #tChristmas2015_Envoy_Data["RouletteMeto"] then
				nTaskId = tChristmas2015_Envoy_Data["TaskId"][3]
			end
		end

		RouletteMould_Main(nTaskId)
		
	else
		Sys_MsgBox(tChristmas2015_Envoy_Text["RouletteFail"])
		return
	end
end
	
------------------------------------------物品函数-------------------------------------------
-- 给经验函数
function Christmas2015_Envoy_AwardExp(nItemId)
	local nUserLev = Get_UserLevel()
	local nAwardType = 0
	local nAddValue = 0
	-- 是否满级
	if nUserLev >= G_User_MaxLev then
		-- 满级给修行值
		nAwardType = tChristmas2015_Envoy_ItemData["CUL"]
		nAddValue = tChristmas2015_Envoy_ItemData[nItemId][nAwardType]
		User_AddCultivation(nAddValue)
		
	else -- 未满级给经验
		nAwardType = tChristmas2015_Envoy_ItemData["EXP"]
		nAddValue = tChristmas2015_Envoy_ItemData[nItemId][nAwardType]
		User_AddExpTime(nAddValue)
	end
	
	local sLogText = string.format(tChristmas2015_Envoy_Log["OpenPag"],nItemId,nAwardType,nAddValue)
	local sTalkText = string.format(tChristmas2015_Envoy_Text["OpenExpPag"][nAwardType],nAddValue)
	User_EffectAdd(tChristmas2015_Envoy_ItemData["EffectObj"],tChristmas2015_Envoy_ItemData["Effect"][nAwardType])
	Sys_SaveActionFestivalLog(sLogText)
	User_TalkChannel2005(sTalkText)
end

-- 背包信函数
-- function Christmas2015_Envoy_Letter(nItemId)
	-- 活动时间
	-- if not Sys_ChkFullTime(tChristmas2015_Envoy_Data["Festival_NowTime"]) then
		-- if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			-- User_TalkChannel2005(tChristmas2015_Envoy_Text["DelLetter"])
		-- end
		-- return
	-- end
	
	-- 删除道具获得奖励
	-- if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		-- Christmas2015_Envoy_AwardExp(nItemId)
	-- end
	
	-- 寻路（双蛋大使）
	-- Christmas2015_Envoy_FindNpc(9)
-- end

------------------------------------------NPC配置-------------------------------------------
---------------------NPC头像
tNpcFace[5781] = 93
---------------------NPC对话
------------------------------------------
-- 【双蛋大使】
tNpcGossip[17273] = tNpcGossip[17273] or DefaultNpc:new{}
tNpcGossip[17273]["OptionHidden"] = 1

-- 活动前
tNpcGossip[17273]["Text1-1"] = {111,112,113,114}
tNpcGossip[17273]["Text111"] = tChristmas2015_Envoy_Text[17273]["Text111"]
tNpcGossip[17273]["Text112"] = tChristmas2015_Envoy_Text[17273]["Text112"]
tNpcGossip[17273]["Text113"] = tChristmas2015_Envoy_Text[17273]["Text113"]
tNpcGossip[17273]["Text114"] = tChristmas2015_Envoy_Text[17273]["Text114"]
tNpcGossip[17273]["tOption1-1"] = {111}
tNpcGossip[17273]["Option111"] = tChristmas2015_Envoy_Text[17273]["Option111"]
tNpcGossip[17273]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tChristmas2015_Envoy_Data["Festival_BefTime"])
end

-- 活动后
tNpcGossip[17273]["Text1-2"] = {121}
tNpcGossip[17273]["Text121"] = tChristmas2015_Envoy_Text[17273]["Text121"]
tNpcGossip[17273]["tOption1-2"] = {121}
tNpcGossip[17273]["Option121"] = tChristmas2015_Envoy_Text[17273]["Option121"]
tNpcGossip[17273]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tChristmas2015_Envoy_Data["Festival_NowTime"])
end

-- 活动中（玩家等级不足）
tNpcGossip[17273]["Text1-3"] = {131,132}
tNpcGossip[17273]["Text131"] = tChristmas2015_Envoy_Text[17273]["Text131"]
tNpcGossip[17273]["Text132"] = tChristmas2015_Envoy_Text[17273]["Text132"]
tNpcGossip[17273]["tOption1-3"] = {131}
tNpcGossip[17273]["Option131"] = tChristmas2015_Envoy_Text[17273]["Option131"]
tNpcGossip[17273]["ChkFunc1-3"] = function ()
	return not User_JudgeLevelAndMetempsychosis(tChristmas2015_Envoy_Data["MinLevel"],tChristmas2015_Envoy_Data["MinMeto"])
end
-- 活动中（满足条件）
tNpcGossip[17273]["Text1-4"] = {141,142,143,144}
tNpcGossip[17273]["Text141"] = tChristmas2015_Envoy_Text[17273]["Text141"]
tNpcGossip[17273]["Text142"] = tChristmas2015_Envoy_Text[17273]["Text142"]
tNpcGossip[17273]["Text143"] = tChristmas2015_Envoy_Text[17273]["Text143"]
tNpcGossip[17273]["Text144"] = tChristmas2015_Envoy_Text[17273]["Text144"]
tNpcGossip[17273]["tOption1-4"] = {141,142,143,144,145}
tNpcGossip[17273]["Option141"]  = tChristmas2015_Envoy_Text[17273]["Option141"]
tNpcGossip[17273]["Option142"]  = tChristmas2015_Envoy_Text[17273]["Option142"]
tNpcGossip[17273]["Option143"]  = tChristmas2015_Envoy_Text[17273]["Option143"]
tNpcGossip[17273]["Option144"]  = tChristmas2015_Envoy_Text[17273]["Option144"]
tNpcGossip[17273]["Option145"]  = tChristmas2015_Envoy_Text[17273]["Option145"]
tNpcGossip[17273]["OptionFunc141"] = "Christmas2015_Envoy_ChkTime</N>17273</S>2-1"
tNpcGossip[17273]["OptionFunc142"] = "Christmas2015_Envoy_DoubleExpTime</N>17273"
tNpcGossip[17273]["OptionFunc143"] = "Christmas2015_Envoy_ChkTime</N>17273</S>3-1"
tNpcGossip[17273]["OptionFunc144"] = "Christmas2015_Envoy_LuckyRoulette</N>17273"

	
	
-- 【了解所有双蛋活动。】
tNpcGossip[17273]["Text2-1"] = {211,212}
tNpcGossip[17273]["Text211"] = tChristmas2015_Envoy_Text[17273]["Text211"]
tNpcGossip[17273]["Text212"] = tChristmas2015_Envoy_Text[17273]["Text212"]
tNpcGossip[17273]["tOption2-1"] = {219,211,212,213,214,215,216,217,218}
tNpcGossip[17273]["Option211"]  = tChristmas2015_Envoy_Text[17273]["Option211"]
tNpcGossip[17273]["Option212"]  = tChristmas2015_Envoy_Text[17273]["Option212"]
tNpcGossip[17273]["Option213"]  = tChristmas2015_Envoy_Text[17273]["Option213"]
tNpcGossip[17273]["Option214"]  = tChristmas2015_Envoy_Text[17273]["Option214"]
tNpcGossip[17273]["Option215"]  = tChristmas2015_Envoy_Text[17273]["Option215"]
tNpcGossip[17273]["Option216"]  = tChristmas2015_Envoy_Text[17273]["Option216"]
tNpcGossip[17273]["Option217"]  = tChristmas2015_Envoy_Text[17273]["Option217"]
tNpcGossip[17273]["Option218"]  = tChristmas2015_Envoy_Text[17273]["Option218"]
tNpcGossip[17273]["Option219"]  = tChristmas2015_Envoy_Text[17273]["Option219"]
tNpcGossip[17273]["OptionFunc219"] = "Christmas2015_Envoy_ChkTime</N>17273</S>3-2"
tNpcGossip[17273]["OptionFunc211"] = "Christmas2015_Envoy_ChkTime</N>17273</S>2-2"
tNpcGossip[17273]["OptionFunc212"] = "Christmas2015_Envoy_ChkTime</N>17273</S>2-3"
tNpcGossip[17273]["OptionFunc213"] = "Christmas2015_Envoy_ChkTime</N>17273</S>2-4"
tNpcGossip[17273]["OptionFunc214"] = "Christmas2015_Envoy_ChkTime</N>17273</S>2-5"
tNpcGossip[17273]["OptionFunc215"] = "Christmas2015_Envoy_ChkTime</N>17273</S>2-6"
tNpcGossip[17273]["OptionFunc216"] = "Christmas2015_Envoy_ChkTime</N>17273</S>2-7"
tNpcGossip[17273]["OptionFunc217"] = "Christmas2015_Envoy_ChkTime</N>17273</S>2-8"
tNpcGossip[17273]["OptionFunc218"] = "Christmas2015_Envoy_ChkTime</N>17273</S>2-9"

-- 圣诞元旦齐欢庆。
tNpcGossip[17273]["Text3-2"] = {321,322}
tNpcGossip[17273]["Text321"] = tChristmas2015_Envoy_Text[17273]["Text321"]
tNpcGossip[17273]["Text322"] = tChristmas2015_Envoy_Text[17273]["Text322"]
tNpcGossip[17273]["tOption3-2"] = {321,222,223}
tNpcGossip[17273]["Option321"]  = tChristmas2015_Envoy_Text[17273]["Option321"]
tNpcGossip[17273]["OptionFunc321"] = "Christmas2015_Envoy_DoubleExpTime</N>17273"

-- 一两秒杀。
tNpcGossip[17273]["Text2-2"] = {221,222}
tNpcGossip[17273]["Text221"] = tChristmas2015_Envoy_Text[17273]["Text221"]
tNpcGossip[17273]["Text222"] = tChristmas2015_Envoy_Text[17273]["Text222"]
tNpcGossip[17273]["tOption2-2"] = {221,222,223}
tNpcGossip[17273]["Option221"]  = tChristmas2015_Envoy_Text[17273]["Option221"]
tNpcGossip[17273]["Option222"]  = tChristmas2015_Envoy_Text[17273]["Option222"]
tNpcGossip[17273]["Option223"]  = tChristmas2015_Envoy_Text[17273]["Option223"]
tNpcGossip[17273]["OptionFunc221"] = "Christmas2015_Envoy_FindNpc</N>1"
tNpcGossip[17273]["OptionFunc222"] = "Christmas2015_Envoy_ChkTime</N>17273</S>2-1"
-- 圣诞礼物。
tNpcGossip[17273]["Text2-3"] = {231,232}
tNpcGossip[17273]["Text231"] = tChristmas2015_Envoy_Text[17273]["Text231"]
tNpcGossip[17273]["Text232"] = tChristmas2015_Envoy_Text[17273]["Text232"]
tNpcGossip[17273]["tOption2-3"] = {231,222,223}
tNpcGossip[17273]["Option231"]  = tChristmas2015_Envoy_Text[17273]["Option231"]
tNpcGossip[17273]["OptionFunc231"] = "Christmas2015_Envoy_FindNpc</N>2"
-- 蛋宝净化论。
tNpcGossip[17273]["Text2-4"] = {241,242,243}
tNpcGossip[17273]["Text241"] = tChristmas2015_Envoy_Text[17273]["Text241"]
tNpcGossip[17273]["Text242"] = tChristmas2015_Envoy_Text[17273]["Text242"]
tNpcGossip[17273]["Text243"] = tChristmas2015_Envoy_Text[17273]["Text243"]
tNpcGossip[17273]["tOption2-4"] = {241,222,223}
tNpcGossip[17273]["Option241"]  = tChristmas2015_Envoy_Text[17273]["Option241"]
tNpcGossip[17273]["OptionFunc241"] = "Christmas2015_Envoy_FindNpc</N>3"
-- 礼物达人秀。
tNpcGossip[17273]["Text2-5"] = {251,252}
tNpcGossip[17273]["Text251"] = tChristmas2015_Envoy_Text[17273]["Text251"]
tNpcGossip[17273]["Text252"] = tChristmas2015_Envoy_Text[17273]["Text252"]
tNpcGossip[17273]["tOption2-5"] = {251,222,223}
tNpcGossip[17273]["Option251"]  = tChristmas2015_Envoy_Text[17273]["Option251"]
tNpcGossip[17273]["OptionFunc251"] = "Christmas2015_Envoy_FindNpc</N>4"
-- 鸡蛋去哪儿。
tNpcGossip[17273]["Text2-6"] = {261,262}
tNpcGossip[17273]["Text261"] = tChristmas2015_Envoy_Text[17273]["Text261"]
tNpcGossip[17273]["Text262"] = tChristmas2015_Envoy_Text[17273]["Text262"]
tNpcGossip[17273]["tOption2-6"] = {261,222,223}
tNpcGossip[17273]["Option261"]  = tChristmas2015_Envoy_Text[17273]["Option261"]
tNpcGossip[17273]["OptionFunc261"] = "Christmas2015_Envoy_FindNpc</N>5"
-- 欢乐堆雪人。
tNpcGossip[17273]["Text2-7"] = {271,272}
tNpcGossip[17273]["Text271"] = tChristmas2015_Envoy_Text[17273]["Text271"]
tNpcGossip[17273]["Text272"] = tChristmas2015_Envoy_Text[17273]["Text272"]
tNpcGossip[17273]["tOption2-7"] = {271,222,223}
tNpcGossip[17273]["Option271"]  = tChristmas2015_Envoy_Text[17273]["Option271"]
tNpcGossip[17273]["OptionFunc271"] = "Christmas2015_Envoy_FindNpc</N>6"
-- 蛋碎的祝福。
tNpcGossip[17273]["Text2-8"] = {281,282,283}
tNpcGossip[17273]["Text281"] = tChristmas2015_Envoy_Text[17273]["Text281"]
tNpcGossip[17273]["Text282"] = tChristmas2015_Envoy_Text[17273]["Text282"]
tNpcGossip[17273]["Text283"] = tChristmas2015_Envoy_Text[17273]["Text283"]
tNpcGossip[17273]["tOption2-8"] = {281,222,223}
tNpcGossip[17273]["Option281"] = tChristmas2015_Envoy_Text[17273]["Option281"]
tNpcGossip[17273]["OptionFunc281"] = "Christmas2015_Envoy_FindNpc</N>7"
-- 舌尖上的美食。
tNpcGossip[17273]["Text2-9"] = {291,292}
tNpcGossip[17273]["Text291"] = tChristmas2015_Envoy_Text[17273]["Text291"]
tNpcGossip[17273]["Text292"] = tChristmas2015_Envoy_Text[17273]["Text292"]
tNpcGossip[17273]["tOption2-9"] = {291,222,223}
tNpcGossip[17273]["Option291"]  = tChristmas2015_Envoy_Text[17273]["Option291"]
tNpcGossip[17273]["OptionFunc291"] = "Christmas2015_Envoy_FindNpc</N>8"

-- 【领取欢乐彩蛋。】
tNpcGossip[17273]["Text3-1"] = {311,312}
tNpcGossip[17273]["Text311"] = tChristmas2015_Envoy_Text[17273]["Text311"]
tNpcGossip[17273]["Text312"] = tChristmas2015_Envoy_Text[17273]["Text312"]
tNpcGossip[17273]["tOption3-1"] = {311,312,313,314,315,316,317,318}
tNpcGossip[17273]["Option311"] = tChristmas2015_Envoy_Text[17273]["Option311"]
tNpcGossip[17273]["Option312"] = tChristmas2015_Envoy_Text[17273]["Option312"]
tNpcGossip[17273]["Option313"] = tChristmas2015_Envoy_Text[17273]["Option313"]
tNpcGossip[17273]["Option314"] = tChristmas2015_Envoy_Text[17273]["Option314"]
tNpcGossip[17273]["Option315"] = tChristmas2015_Envoy_Text[17273]["Option315"]
tNpcGossip[17273]["Option316"] = tChristmas2015_Envoy_Text[17273]["Option316"]
tNpcGossip[17273]["Option317"] = tChristmas2015_Envoy_Text[17273]["Option317"]
tNpcGossip[17273]["Option318"] = tChristmas2015_Envoy_Text[17273]["Option318"]
tNpcGossip[17273]["OptionFunc311"] = "Christmas2015_Envoy_ColorEggs</N>17273</N>3"
tNpcGossip[17273]["OptionFunc313"] = "Christmas2015_Envoy_ColorEggs</N>17273</N>6"
tNpcGossip[17273]["OptionFunc315"] = "Christmas2015_Envoy_ColorEggs</N>17273</N>9"
tNpcGossip[17273]["OptionFunc317"] = "Christmas2015_Envoy_ChkTime</N>17273</N>1-4"
tNpcGossip[17273]["OptionChkFunc311"] = function ()
	return not Christmas2015_Envoy_ChkOption(3)
end
tNpcGossip[17273]["OptionChkFunc312"] = function ()
	return Christmas2015_Envoy_ChkOption(3)
end
tNpcGossip[17273]["OptionChkFunc313"] = function ()
	return not Christmas2015_Envoy_ChkOption(6)
end
tNpcGossip[17273]["OptionChkFunc314"] = function ()
	return Christmas2015_Envoy_ChkOption(6)
end
tNpcGossip[17273]["OptionChkFunc315"] = function ()
	return not Christmas2015_Envoy_ChkOption(9)
end
tNpcGossip[17273]["OptionChkFunc316"] = function ()
	return Christmas2015_Envoy_ChkOption(9)
end


-------------------------------------【其他主城圣诞树】---------------------------------------
tNpcGossip[18843] = tNpcGossip[18843] or DefaultNpc:new{}
tNpcGossip[18844] = tNpcGossip[18843] or DefaultNpc:new{}
tNpcGossip[18845] = tNpcGossip[18843] or DefaultNpc:new{}
tNpcGossip[18846] = tNpcGossip[18843] or DefaultNpc:new{}
tNpcGossip[18843]["OptionHidden"] = 1

-- 活动前后
tNpcGossip[18843]["Text1-1"] = {111}
tNpcGossip[18843]["Text111"] = tChristmas2015_Envoy_Text[18843]["Text111"]
tNpcGossip[18843]["tOption1-1"] = {111}
tNpcGossip[18843]["Option111"] = tChristmas2015_Envoy_Text[18843]["Option111"]
tNpcGossip[18843]["ChkFunc1-1"] = function ()
	return not Sys_ChkFullTime(tChristmas2015_Envoy_Data["Festival_NowTime"])
end

-- 活动中
tNpcGossip[18843]["Text1-2"] = {121}
tNpcGossip[18843]["Text121"] = tChristmas2015_Envoy_Text[18843]["Text121"]
tNpcGossip[18843]["tOption1-2"] = {121,122}
tNpcGossip[18843]["Option121"] = tChristmas2015_Envoy_Text[18843]["Option121"]
tNpcGossip[18843]["Option122"] = tChristmas2015_Envoy_Text[18843]["Option122"]
tNpcGossip[18843]["OptionFunc121"] = "Christmas2015_Envoy_ChgMap"

-------------------------------------【迷你\小哥\大个经验火腿】---------------------------------------
tItem[3005341] = tItem[3005341] or {}
tItem[3005342] = tItem[3005341] or {}
tItem[3005343] = tItem[3005341] or {}
tItem[3005341]["Function"] = function (nItemId,sItemName)
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		-- 给经验\修行值奖励
		Christmas2015_Envoy_AwardExp(nItemId)
	end
end
-------------------------------------【小颗\大颗祝福糖果】---------------------------------------
tItem[3005344] = tItem[3005344] or {}
tItem[3005345] = tItem[3005344] or {}
tItem[3005346] = tItem[3005344] or {}
tItem[3005347] = tItem[3005344] or {}
tItem[3005348] = tItem[3005344] or {}
tItem[3005349] = tItem[3005344] or {}
tItem[3005350] = tItem[3005344] or {}
tItem[3005351] = tItem[3005344] or {}
tItem[3005352] = tItem[3005344] or {}
tItem[3005344]["Function"] = function (nItemId,sItemName)
	local nAwardType = tChristmas2015_Envoy_ItemData[nItemId]["Type"]
	-- 是否是给真气的
	if nAwardType == tChristmas2015_Envoy_ItemData["GFQ"] then
		-- 未创建武功
		if not User_IsAlreadyCreateGongFu() then
			User_TalkChannel2005(tChristmas2015_Envoy_Text["NoCreateGongFu"])
			return
		end
		
		-- 真气满
		if Get_UserGongFuQiLev() >= tChristmas2015_Envoy_ItemData["QiMax"] then
			User_TalkChannel2005(tChristmas2015_Envoy_Text["QiFull"])
			return
		end
	end

	-- 删物品给奖励
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local nAddValue = tChristmas2015_Envoy_ItemData[nItemId]["Value"]
		local sLogText = ""
		
		-- 给祝福
		if nAwardType == tChristmas2015_Envoy_ItemData["BLS"] then
			User_AddBless(nAddValue)
			sLogText = string.format(tChristmas2015_Envoy_Log["OpenPag"],nItemId,nAwardType,nAddValue)
			nAddValue = nAddValue / 24
			 
		-- 给修行值
		elseif nAwardType == tChristmas2015_Envoy_ItemData["CUL"] then
			User_AddCultivation(nAddValue)
			
		-- 给气力值
		elseif nAwardType == tChristmas2015_Envoy_ItemData["STR"] then
			User_AddStrengthValue(nAddValue)
			
		-- 给真气
		elseif nAwardType == tChristmas2015_Envoy_ItemData["GFQ"] then
			User_AddGongFuQiLeve(nAddValue)
			
		-- 双倍经验时间
		elseif nAwardType == tChristmas2015_Envoy_ItemData["EPC"] then
			User_SetExpControl(tChristmas2015_Envoy_Data["ExpPercent"],nAddValue)
			sLogText = string.format(tChristmas2015_Envoy_Log["OpenPag"],nItemId,nAwardType,nAddValue)
			nAddValue = nAddValue / 60
		end
		
		-- 使用公共LOG
		if sLogText == nil then
			sLogText = string.format(tChristmas2015_Envoy_Log["OpenPag"],nItemId,nAwardType,nAddValue)
		end
		
		local sTalkText = string.format(tChristmas2015_Envoy_Text["OpenPag"][nAwardType],nAddValue)
		User_EffectAdd(tChristmas2015_Envoy_ItemData["EffectObj"],tChristmas2015_Envoy_ItemData["Effect"][nAwardType])
		Sys_SaveActionFestivalLog(sLogText)
		User_TalkChannel2005(sTalkText)
	end
end

-------------------------------------【外套礼包】---------------------------------------
tItem[3005353] = tItem[3005353] or {}
tItem[3005354] = tItem[3005353] or {}
tItem[3005355] = tItem[3005353] or {}
tItem[3005356] = tItem[3005353] or {}
tItem[3005357] = tItem[3005353] or {}
tItem[3005358] = tItem[3005353] or {}
tItem[3005353]["Function"] = function (nItemId,sItemName)
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local nNewItemId = tChristmas2015_Envoy_ItemData[nItemId]["ItemId"]
		local nSafeTime = tChristmas2015_Envoy_ItemData[nItemId]["SafeTime"]
		local sItemAttr = string.format("0 0 3 %s",nSafeTime)
		Item_AddNewItem(nNewItemId,sItemAttr)
		nSafeTime = nSafeTime / 1440
		local sNewItemName = Get_ItemtypeName(nNewItemId)
		local sLogText = string.format(tChristmas2015_Envoy_Log["OpenPag"],nItemId,nNewItemId,1)
		local sTalkText = string.format(tChristmas2015_Envoy_Text["OpenCoatPag"],nSafeTime,sNewItemName)
		User_EffectAdd(tChristmas2015_Envoy_ItemData["EffectObj"],tChristmas2015_Envoy_ItemData["Effect"]["Coat"])
		Sys_SaveActionFestivalLog(sLogText)
		User_TalkChannel2005(sTalkText)
	end
end

-------------------------------------【背包信】---------------------------------------
-- tItem[3005363] = tItem[3005363] or {}
-- tItem[3005363]["Function"] = function (nItemId,sItemName)
	-- 活动时间
	-- if not Sys_ChkFullTime(tChristmas2015_Envoy_Data["Festival_NowTime"]) then
		-- if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			-- User_TalkChannel2005(tChristmas2015_Envoy_Text["DelLetter"])
		-- end
		-- return
	-- end 

	-- LinkItemGossipFunc_New(nItemId,"1-1")
-- end
-- tItem[3005363]["Text1-1"] = {111,112}
-- tItem[3005363]["Text111"] = tChristmas2015_Envoy_Text[3005363]["Text111"]
-- tItem[3005363]["Text112"] = tChristmas2015_Envoy_Text[3005363]["Text112"]
-- tItem[3005363]["tOption1-1"] = {111}
-- tItem[3005363]["Option111"] = tChristmas2015_Envoy_Text[3005363]["Option111"]
-- tItem[3005363]["OptionFunc111"] = "Christmas2015_Envoy_Letter</N>3005363"

-------------------------------------【欢乐彩蛋】---------------------------------------
tItem[3005319] = tItem[3005319] or {}
tItem[3005319]["Function"] = function (nItemId,sItemName)
	-- 活动时间
	if not Sys_ChkFullTime(tChristmas2015_Envoy_Data["Festival_NowTime"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_TalkChannel2005(tChristmas2015_Envoy_Text["DelColorEggs"])
		end
		return
	end

	User_TalkChannel2005(tChristmas2015_Envoy_Text["ColorEggs"])
end














