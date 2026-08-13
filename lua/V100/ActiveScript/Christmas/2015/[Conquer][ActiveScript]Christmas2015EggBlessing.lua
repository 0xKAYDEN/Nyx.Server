-----------------------------------------------------------------------------------------------------
--Name:		150912[简体征服][活动脚本]2015圣诞元旦之蛋碎的祝福(12.22-01.04)
--Purpose:		2015圣诞元旦之蛋碎的祝福
--Creator: 	许乐
--Created:		2015/09/12
------------------------------------------------------------------------------------------------------
-- 命名前缀
--Christmas2015_EggBlessing_
------------------------------------------------------------------------------------------------------
-- 1.玩家从节日NPC处获取三种贺卡
-- 2.使用贺卡选择祝福语和送祝福的对象即可将自己的祝福展示在世界频道上
-- 3.送出满3张贺卡，可以向npc获得节日礼包和砸蛋小锤子，小锤子有概率获得
-- 4.用小锤子可以砸开节日彩蛋，可以概率获得特殊奖励：+1赤炼石礼包(赠)
-----------------------------------------------------------------------------------------------------------
-- cq_npc(2个)			18808-18809
-- npctype(2个)			3795-3796
-- cq_itemtype(6个)	3007393-3007398
-- task_detail			3471
-- logid						12000201
-- stc						13766-13768  13810
-- lua.ini					40104
--dyna_global_data	50970
--------------- 掩码说明          
-- stc(137,66) ==1		接了任务
--  				  ==2		完成任务	
-- 				  ==3		领取奖励
--stc(137,67)  ==1		表示发出圣诞快乐贺卡
-- 				  ==2		表示发出新年好运贺卡
-- 				  ==4		表示发出无限祝福贺卡
-- stc(137,68) 		 	记录使用锤子砸蛋的次数
-- stc(138,10)  ==1 	记录获得流星的个数（每人每日限获得一个）
--------------- 动态码 
-- 50970       记录每个服务器产出一个龙珠 每日限1个
-----------------------------------------常量表配置-----------------------------------------------
local tChristmas2015_EggBlessing_Cont = {}
	--活动期间	
	tChristmas2015_EggBlessing_Cont["BeforeActivity"] = "2017-07-27 00:00 2017-12-20 23:59"
	tChristmas2015_EggBlessing_Cont["Activity"] = "2017-12-21 00:00 2018-01-03 23:59"
	--玩家等级要求
	tChristmas2015_EggBlessing_Cont["Metempsychosis"] = 0
	tChristmas2015_EggBlessing_Cont["Level"] = 80
	tChristmas2015_EggBlessing_Cont["LevelTop"] = G_User_MaxLev
	
--NPC坐标
local tChristmas2015_EggBlessing_Npc = {}
	-- 18808 贺卡萝莉花小蛋
	tChristmas2015_EggBlessing_Npc[18808] = {}
	tChristmas2015_EggBlessing_Npc[18808]["CellX"] = 355
	tChristmas2015_EggBlessing_Npc[18808]["CellY"] = 461
	tChristmas2015_EggBlessing_Npc[18808]["Mapid"] = 1002
	tChristmas2015_EggBlessing_Npc[18808]["NpcId"] = 18808
	-- 18809幸运彩蛋
	tChristmas2015_EggBlessing_Npc[18809] = {}
	tChristmas2015_EggBlessing_Npc[18809]["CellX"] =355
	tChristmas2015_EggBlessing_Npc[18809]["CellY"] = 463
	tChristmas2015_EggBlessing_Npc[18809]["Mapid"] = 1002
	tChristmas2015_EggBlessing_Npc[18809]["NpcId"] = 18809
	tChristmas2015_EggBlessing_Npc["BoundCX"] = 5
	tChristmas2015_EggBlessing_Npc["BoundCY"] = 5
	
--掩码
local tChristmas2015_EggBlessing_Stc = {}
	-- stc(137,66) ==1	接了任务    	==2	完成任务     	==3	领取奖励
	tChristmas2015_EggBlessing_Stc[1] = {}
	tChristmas2015_EggBlessing_Stc[1]["EventType"] = 137
	tChristmas2015_EggBlessing_Stc[1]["DataType"] = 66
	tChristmas2015_EggBlessing_Stc[1]["GetTask"] = 1
	tChristmas2015_EggBlessing_Stc[1]["TaskOver"] = 2
	tChristmas2015_EggBlessing_Stc[1]["Complete"] = 3
	--	stc(137,67) ==1  表示发出圣诞快乐贺卡  ==2 表示发出新年好运贺卡  ==4 表示发出无限祝福贺卡
	tChristmas2015_EggBlessing_Stc[2] = {}
	tChristmas2015_EggBlessing_Stc[2]["EventType"] = 137
	tChristmas2015_EggBlessing_Stc[2]["DataType"] = 67
	tChristmas2015_EggBlessing_Stc[2][3007393] = 1
	tChristmas2015_EggBlessing_Stc[2][3007394] = 2
	tChristmas2015_EggBlessing_Stc[2][3007395] = 4
	tChristmas2015_EggBlessing_Stc[2]["Complete"] = 7
	-- stc(137,68)   表示使用锤子的次数
	tChristmas2015_EggBlessing_Stc[3] = {}
	tChristmas2015_EggBlessing_Stc[3]["EventType"] = 137
	tChristmas2015_EggBlessing_Stc[3]["DataType"] = 68
	tChristmas2015_EggBlessing_Stc[3]["Add"] = 1
	-- stc(138,10) 	记录获得流星的个数（每人每日限获得一个）
	tChristmas2015_EggBlessing_Stc[4] = {}
	tChristmas2015_EggBlessing_Stc[4]["EventType"] = 138
	tChristmas2015_EggBlessing_Stc[4]["DataType"] = 10
	tChristmas2015_EggBlessing_Stc[4]["Complete"] = 1	
	
	tChristmas2015_EggBlessing_Stc[5] = {}
	tChristmas2015_EggBlessing_Stc[5]["EventType"] = 150
	tChristmas2015_EggBlessing_Stc[5]["DataType"] = 35
	
--物品
local tChristmas2015_EggBlessing_Item = {}	
	tChristmas2015_EggBlessing_Item["Item"] = {}
	tChristmas2015_EggBlessing_Item["Item"][1] = 3007393	-- 圣诞快乐贺卡
	tChristmas2015_EggBlessing_Item["Item"][2] = 3007394	-- 新年好运贺卡
	tChristmas2015_EggBlessing_Item["Item"][3] = 3007395	-- 无限祝福贺卡
	tChristmas2015_EggBlessing_Item["Item3007396"] = 3007396	-- 小金锤
	tChristmas2015_EggBlessing_Item["Item3007397"] = 3007397	-- 小银锤
	tChristmas2015_EggBlessing_Item["Item3007398"] = 3007398	-- 小铜锤
	
local tChristmas2015_EggBlessing_Data = {}
	tChristmas2015_EggBlessing_Data["BagSpace_1"] = 1			--检查背包数量
	tChristmas2015_EggBlessing_Data["BagSpace_2"] = 2
	tChristmas2015_EggBlessing_Data["BagSpace_3"] = 3
	tChristmas2015_EggBlessing_Data["Reward1"] = 1088001    --流星id
	tChristmas2015_EggBlessing_Data["Reward2"] = 1088000   --龙珠id
	tChristmas2015_EggBlessing_Data["Reward3"] = 3003879     -- 良品随机宝石袋 id
	tChristmas2015_EggBlessing_Data["Reward3_Attr"] = "0 1 3"
	tChristmas2015_EggBlessing_Data["Second"] = 2			--读条2s
	tChristmas2015_EggBlessing_Data["Action"] = 220		--读条action
	tChristmas2015_EggBlessing_Data["StrLength"] = 15  	--输入长度
	tChristmas2015_EggBlessing_Data["Money"] = {}
	tChristmas2015_EggBlessing_Data["Money"][1] = -100000		--铜锤升级银锤
	tChristmas2015_EggBlessing_Data["Money"][2] = -200000	--银锤升级金锤
	
	--补领贺卡配置
	tChristmas2015_EggBlessing_Data["GetCard"] = {}
	tChristmas2015_EggBlessing_Data["GetCard"][0] = {}
	tChristmas2015_EggBlessing_Data["GetCard"][0]["BagSpace"] = 3
	tChristmas2015_EggBlessing_Data["GetCard"][0][1] = 3007393
	tChristmas2015_EggBlessing_Data["GetCard"][0][2] = 3007394
	tChristmas2015_EggBlessing_Data["GetCard"][0][3] = 3007395
	
	tChristmas2015_EggBlessing_Data["GetCard"][1] = {}
	tChristmas2015_EggBlessing_Data["GetCard"][1]["BagSpace"] = 2
	tChristmas2015_EggBlessing_Data["GetCard"][1][1] = 3007394
	tChristmas2015_EggBlessing_Data["GetCard"][1][2] = 3007395
	
	tChristmas2015_EggBlessing_Data["GetCard"][2] = {}
	tChristmas2015_EggBlessing_Data["GetCard"][2]["BagSpace"] = 2
	tChristmas2015_EggBlessing_Data["GetCard"][2][1] = 3007393
	tChristmas2015_EggBlessing_Data["GetCard"][2][2] = 3007395
	
	tChristmas2015_EggBlessing_Data["GetCard"][3] = {}
	tChristmas2015_EggBlessing_Data["GetCard"][3]["BagSpace"] = 1
	tChristmas2015_EggBlessing_Data["GetCard"][3][1] = 3007395
	
	tChristmas2015_EggBlessing_Data["GetCard"][4] = {}
	tChristmas2015_EggBlessing_Data["GetCard"][4]["BagSpace"] = 2
	tChristmas2015_EggBlessing_Data["GetCard"][4][1] = 3007393
	tChristmas2015_EggBlessing_Data["GetCard"][4][2] = 3007394
	
	tChristmas2015_EggBlessing_Data["GetCard"][5] = {}
	tChristmas2015_EggBlessing_Data["GetCard"][5]["BagSpace"] = 1
	tChristmas2015_EggBlessing_Data["GetCard"][5][1] = 3007394
	
	tChristmas2015_EggBlessing_Data["GetCard"][6] = {}
	tChristmas2015_EggBlessing_Data["GetCard"][6]["BagSpace"] = 1
	tChristmas2015_EggBlessing_Data["GetCard"][6][1] = 3007393
	
	tChristmas2015_EggBlessing_Data["GetCard"][7] = {}
	tChristmas2015_EggBlessing_Data["GetCard"][7]["BagSpace"] = 0
	tChristmas2015_EggBlessing_Data["GetCard"][7][1] = false
	
 -- 动态存储表配置 每个服务器产出一个龙珠 每日限1个
local tChristmas2015_EggBlessing_Global = {}
	tChristmas2015_EggBlessing_Global["GlobalId"] = 50970
	tChristmas2015_EggBlessing_Global["GlobalData"] = 0
	tChristmas2015_EggBlessing_Global["MaxData"] = 1
	
--随机获得锤子
local tChristmas2015_EggBlessing_Reward = {}
	tChristmas2015_EggBlessing_Reward["RandomHammer"] = {}
	tChristmas2015_EggBlessing_Reward["RandomHammer"][1] = {}
	tChristmas2015_EggBlessing_Reward["RandomHammer"][1]["ItemChanceSum"] = 10000
	-- 小金锤 20%
	tChristmas2015_EggBlessing_Reward["RandomHammer"][1][1] = {}
	tChristmas2015_EggBlessing_Reward["RandomHammer"][1][1]["RandomItemChanceType"] = 2
	tChristmas2015_EggBlessing_Reward["RandomHammer"][1][1]["ItemChance"] = 2000
	tChristmas2015_EggBlessing_Reward["RandomHammer"][1][1]["Item_1"] = 3007396
	-- 小银锤  35%
	tChristmas2015_EggBlessing_Reward["RandomHammer"][1][2] = {}
	tChristmas2015_EggBlessing_Reward["RandomHammer"][1][2]["RandomItemChanceType"] = 2
	tChristmas2015_EggBlessing_Reward["RandomHammer"][1][2]["ItemChance"] = 3500
	tChristmas2015_EggBlessing_Reward["RandomHammer"][1][2]["Item_1"] = 3007397
	-- 小铜锤  45%
	tChristmas2015_EggBlessing_Reward["RandomHammer"][1][3] = {}
	tChristmas2015_EggBlessing_Reward["RandomHammer"][1][3]["RandomItemChanceType"] = 2
	tChristmas2015_EggBlessing_Reward["RandomHammer"][1][3]["ItemChance"] = 4500
	tChristmas2015_EggBlessing_Reward["RandomHammer"][1][3]["Item_1"] = 3007398
	
--特效
local tChristmas2015_EggBlessing_Effect = {}
	tChristmas2015_EggBlessing_Effect[1] = "self"
	tChristmas2015_EggBlessing_Effect[2] = "zf2-e019"		----获得贺卡
	tChristmas2015_EggBlessing_Effect[3] = "dgbos_addr"	----砸蛋成功
	tChristmas2015_EggBlessing_Effect[4] = "angelwing"		----获得礼包
	tChristmas2015_EggBlessing_Effect[5] = "FF12-dhp"		----打开贺卡
	
--LOG
local tChristmas2015_EggBlessing_Log = {}
	tChristmas2015_EggBlessing_Log["GetItem"] = "0,0,0,0,12000201,2,%s,1"			--获得贺卡，锤子
	tChristmas2015_EggBlessing_Log["GetMeteor"] = "0,0,0,0,12000201,2,1088001,1"			--获得流星
	tChristmas2015_EggBlessing_Log["GetDragonBall"] = "0,0,0,0,12000201,2,1088000,1"	--获得龙珠
	tChristmas2015_EggBlessing_Log["GetStoneBag"] = "0,0,0,0,12000201,2,3003879,1"		--获得良品随机宝石袋
	tChristmas2015_EggBlessing_Log["PayMoney"] = "0,0,1[%s],%s[1],12000201,2,%s,1"		--使用金币升级锤子
	tChristmas2015_EggBlessing_Log["DelItem"] = "0,0,%s,1,12000201,2,0,0"			--过期删除物品
	tChristmas2015_EggBlessing_Log["FestivalId"] = 3471
	tChristmas2015_EggBlessing_Log["Log"] = 12000201

------------------------------------------------逻辑部分-------------------------------------------------
--玩家等级判断
function Christmas2015_EggBlessing_LevelJudgement()
	local nLevel = tChristmas2015_EggBlessing_Cont["Level"]
	local nMete = tChristmas2015_EggBlessing_Cont["Metempsychosis"]
	if User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		return true
	else
		return false
	end
end

-- stc(137,66) ==1		接了任务     ==2		完成任务	  ==3	领取奖励  nStcNum = 1
--	stc(137,67) ==n 	发出某张贺卡  nStcNum = 2
-- stc(138,10) ==1		记录获得流星的个数（每人每日限获得一个）nStcNum = 4
function Christmas2015_EggBlessing_ChkStcComplete(nStcNum)
	local nEvent = tChristmas2015_EggBlessing_Stc[nStcNum]["EventType"]
	local nType = tChristmas2015_EggBlessing_Stc[nStcNum]["DataType"]
	local nComplete = tChristmas2015_EggBlessing_Stc[nStcNum]["Complete"]

	if Task_ChkStcValue(nEvent,nType,">=",nComplete) then
		-- 判断是否隔天
		if Task_StcInterval(nEvent,nType,1,4) then
			Task_SetStatistic(nEvent,nType,0,1,0)
			Task_SetStcTimestamp(nEvent,nType,0,0)	
			return false
		else
			return true
		end
	else
		return false
	end
end

-- npc  贺卡萝莉花小蛋
-- 我要送贺卡  	--（完成任务后屏蔽该选项）
function Christmas2015_EggBlessing_SendCards(nNpcId)
	--活动时间判断
	if not Sys_ChkFullTime(tChristmas2015_EggBlessing_Cont["Activity"]) then
		return
	end
	
	--玩家等级判断
	if not Christmas2015_EggBlessing_LevelJudgement() then
		return
	end
	
	if Christmas2015_EggBlessing_ChkStcComplete(1) then
		return
	end
	
	local nEvent = tChristmas2015_EggBlessing_Stc[1]["EventType"]
	local nType = tChristmas2015_EggBlessing_Stc[1]["DataType"]
	local nData1 = tChristmas2015_EggBlessing_Stc[1]["GetTask"]
	local nData2 = tChristmas2015_EggBlessing_Stc[1]["TaskOver"]
	
	--判断已领取任务  ==1
	if Task_ChkStcValue(nEvent,nType,"==",nData1) then
		LinkNpcGossipFunc_New(nNpcId,"3-3")
		return
	end
	--完成任务提示
	if Task_ChkStcValue(nEvent,nType,"==",nData2) then
		return
	end
	
	--若存在贺卡，先删除再判断空间
	for _,v in pairs(tChristmas2015_EggBlessing_Item["Item"]) do
		if Item_ChkItem(v) then
			Item_DelItem(v)
		end
	end
	
	--判断背包 3格
	if not User_CheckLeftSpace(tChristmas2015_EggBlessing_Data["BagSpace_3"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end

	--成功领取贺卡
	Task_SetStatistic(nEvent,nType,nData1,1,0)
	Task_SetStcTimestamp(nEvent,nType,0,0)
	
	for _,v in pairs(tChristmas2015_EggBlessing_Item["Item"]) do
		Item_AddItem(v)
		Sys_SaveActionFestivalLog(string.format(tChristmas2015_EggBlessing_Log["GetItem"],v))
	end
	User_EffectAdd(tChristmas2015_EggBlessing_Effect[1],tChristmas2015_EggBlessing_Effect[2])
	LinkNpcGossipFunc_New(nNpcId,"3-1")
end

-- 补领贺卡		--（接受任务后出现该选项，完成任务后屏蔽该选项）
function Christmas2015_EggBlessing_GetCards(nNpcId)
	--活动时间判断
	if not Sys_ChkFullTime(tChristmas2015_EggBlessing_Cont["Activity"]) then
		return
	end
	
	--玩家等级判断
	if not Christmas2015_EggBlessing_LevelJudgement() then
		return
	end
	
	-- 检查是否有贺卡
	for _,v in pairs(tChristmas2015_EggBlessing_Item["Item"]) do
		if Item_ChkItem(v) then
			LinkNpcGossipFunc_New(nNpcId,"4-2")
			return
		end
	end
	
	--已领取当天奖励
	if Christmas2015_EggBlessing_ChkStcComplete(1) then
		return
	end
	
	local nEvent1 = tChristmas2015_EggBlessing_Stc[1]["EventType"]
	local nType1 = tChristmas2015_EggBlessing_Stc[1]["DataType"]		
	local nTask = tChristmas2015_EggBlessing_Stc[1]["TaskOver"]

	--已发完3张贺卡
	if Christmas2015_EggBlessing_ChkStcComplete(2) then
		Task_SetStatistic(nEvent1,nType1,nTask,1,0)
		return
	end

	local nEvent = tChristmas2015_EggBlessing_Stc[2]["EventType"]
	local nType = tChristmas2015_EggBlessing_Stc[2]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType)
	--判断应该补领哪种贺卡
	if Task_ChkStcValue(nEvent,nType,"==",0) then
		if User_CheckLeftSpace(tChristmas2015_EggBlessing_Data["GetCard"][0]["BagSpace"]) then
			for nIndex = 1, #tChristmas2015_EggBlessing_Data["GetCard"][0] do
				Item_AddItem(tChristmas2015_EggBlessing_Data["GetCard"][0][nIndex])
				Sys_SaveActionFestivalLog(string.format(tChristmas2015_EggBlessing_Log["GetItem"],tChristmas2015_EggBlessing_Data["GetCard"][0][nIndex]))
			end
			LinkNpcGossipFunc_New(nNpcId,"4-1")
			User_EffectAdd(tChristmas2015_EggBlessing_Effect[1],tChristmas2015_EggBlessing_Effect[2])
		else
			LinkNpcGossipFunc_New(nNpcId,"4-3")
			return
		end
	else
		if User_CheckLeftSpace(tChristmas2015_EggBlessing_Data["GetCard"][nData]["BagSpace"]) then
			for nIndex = 1, #tChristmas2015_EggBlessing_Data["GetCard"][nData] do
				if tChristmas2015_EggBlessing_Data["GetCard"][nData][nIndex] ~= false then
					Item_AddItem(tChristmas2015_EggBlessing_Data["GetCard"][nData][nIndex])
					Sys_SaveActionFestivalLog(string.format(tChristmas2015_EggBlessing_Log["GetItem"],tChristmas2015_EggBlessing_Data["GetCard"][nData][nIndex]))
				end
			end
			LinkNpcGossipFunc_New(nNpcId,"4-1")
			User_EffectAdd(tChristmas2015_EggBlessing_Effect[1],tChristmas2015_EggBlessing_Effect[2])
		else
			LinkNpcGossipFunc_New(nNpcId,"4-3")
			return
		end
	end
end

--我要礼物
function Christmas2015_EggBlessing_GetRewards(nNpcId)
	--活动时间判断
	if not Sys_ChkFullTime(tChristmas2015_EggBlessing_Cont["Activity"]) then
		return
	end
	
	--玩家等级判断
	if not Christmas2015_EggBlessing_LevelJudgement() then
		return
	end
	
	--已领取当天奖励
	if Christmas2015_EggBlessing_ChkStcComplete(1) then
		LinkNpcGossipFunc_New(nNpcId,"5-1")
		return
	end
	
	local nEvent = tChristmas2015_EggBlessing_Stc[1]["EventType"]
	local nType = tChristmas2015_EggBlessing_Stc[1]["DataType"]	
	local nData1 = tChristmas2015_EggBlessing_Stc[1]["GetTask"]
	local nData2 = tChristmas2015_EggBlessing_Stc[1]["TaskOver"]
	local nComplete = tChristmas2015_EggBlessing_Stc[1]["Complete"]

	if Christmas2015_EggBlessing_ChkStcComplete(2) then
		Task_SetStatistic(nEvent,nType,nData2,1,0)
	else
		LinkNpcGossipFunc_New(nNpcId,"5-2")
		return
	end
	
	--背包满
	if not User_CheckLeftSpace(tChristmas2015_EggBlessing_Data["BagSpace_2"]) then
		LinkNpcGossipFunc_New(nNpcId,"5-3")
		return
	end

	--已完成任务，可领取
	if Task_ChkStcValue(nEvent,nType,"==",nData2) then
		LinkNpcGossipFunc_New(nNpcId,"5-4")
		Task_SetStatistic(nEvent,nType,nComplete,1,0)
		--Task_SetStcTimestamp(nEvent,nType,0,0)
		
		--杨艳修改  增加节日礼包上限的判断
		local nFstEvent = tChristmas2015_EggBlessing_Stc[5]["EventType"]
		local nFstData = tChristmas2015_EggBlessing_Stc[5]["DataType"] 
		local nUserId = Get_UserId()
		--隔天判断
		if Task_StcInterval(nFstEvent,nFstData,1,4,nUserId) then
			Task_SetStatistic(nFstEvent,nFstData,0,1,nUserId)
			Task_SetStcTimestamp(nFstEvent,nFstData,0,nUserId)
		end
		local nFstTime =  Get_UserStatisticValue(nFstEvent,nFstData)
		if nFstTime >= 9 then
			Sys_MsgBox(string.format(tFestivalGeneralPackage["OverLimit_Msg"],nFstTime))
			return
		end
		
		--给礼包
		FestivalGeneralPackage_GetGift(tChristmas2015_EggBlessing_Log["FestivalId"],tChristmas2015_EggBlessing_Log["Log"])
		User_EffectAdd(tChristmas2015_EggBlessing_Effect[1],tChristmas2015_EggBlessing_Effect[4])
		Sys_MsgBox(tChristmas2015_EggBlessing_Text["GetGiftBag"])
		--随机获得锤子
		local nFlat,tAward = Probabil_RandomAward(tChristmas2015_EggBlessing_Reward["RandomHammer"],1)
		local nItem = tAward[1]["tAward"][1]["Item_1"]
		Item_AddItem(nItem)
		Sys_SaveActionFestivalLog(string.format(tChristmas2015_EggBlessing_Log["GetItem"],nItem))
		--获得锤子后的对白
		if nItem == tChristmas2015_EggBlessing_Item["Item3007396"] then		--获得小金锤
			Sys_MsgBox(tChristmas2015_EggBlessing_Text[nItem]["Text111"],"Christmas2015_EggBlessing_AutoFindWay</N>18809")
		else	--获得小铜,银锤
			LinkItemGossipFunc_New(nItem,"1-1")
		end
	end
end

--自动寻路到彩蛋npc
function Christmas2015_EggBlessing_AutoFindWay(nNpcId)
	local nPosX = tChristmas2015_EggBlessing_Npc[nNpcId]["CellX"]
	local nPosY = tChristmas2015_EggBlessing_Npc[nNpcId]["CellY"]
	local nMapId = tChristmas2015_EggBlessing_Npc[nNpcId]["Mapid"]
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
end
 
--幸运彩蛋
function Christmas2015_EggBlessing_ThrowEgg(nNpcId,nItemId)
	--活动时间判断
	if not Sys_ChkFullTime(tChristmas2015_EggBlessing_Cont["Activity"]) then
		return
	end
	
	--玩家等级判断
	if not Christmas2015_EggBlessing_LevelJudgement() then
		User_TalkChannel2005(tChristmas2015_EggBlessing_Text["NoLevel"])
		return
	end
	
	--背包中没有对应锤子
	if not Item_ChkItem(nItemId) then
		Sys_MsgBox(string.format(tChristmas2015_EggBlessing_Text[18809]["NoHammer"],tChristmas2015_EggBlessing_Text["Name"][nItemId]))
		return
	end
	
	-- 砸蛋进度可以累积，即今天用小银锤砸了一下，次日再用一个小银锤砸一下必然能砸开
	-- 如果玩家使用了一个小银锤，接下来使用一个铜锤仍有35%几率直接开，再用一个铜锤或小银锤必然能打开
	-- 如果玩家已经使用了一个小铜锤，使用小银锤有60%几率直接打开，再用一个小铜锤或小银锤必然能砸开
	local nSecs = tChristmas2015_EggBlessing_Data["Second"]
	local nActionId = tChristmas2015_EggBlessing_Data["Action"]
	local sContent = tChristmas2015_EggBlessing_Text["Content"]
	User_SetExplore(nSecs,sContent,nActionId,"Christmas2015_EggBlessing_UseHammer</N>"..nItemId)
end

--砸蛋结果
function Christmas2015_EggBlessing_UseHammer(nItemId,nUserId)
	--第一次砸：金100% 银60% 铜35%
	--第二次砸：金银100% 铜35%
	--第三次砸：金银铜100%	
	--如果砸蛋成功一次，重置砸蛋次数，每日不限砸蛋次数，可累积，不隔天重置
	local nEvent = tChristmas2015_EggBlessing_Stc[3]["EventType"]
	local nType = tChristmas2015_EggBlessing_Stc[3]["DataType"]
	local nAdd = tChristmas2015_EggBlessing_Stc[3]["Add"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	
	if nData == 0 then      --第一次砸蛋
		if nItemId == tChristmas2015_EggBlessing_Item["Item3007396"] then  --金
			Christmas2015_EggBlessing_HammerSuccess(nItemId,nUserId)
		elseif nItemId == tChristmas2015_EggBlessing_Item["Item3007397"] then  --银
			if Sys_Random(6000,10000) then
				Christmas2015_EggBlessing_HammerSuccess(nItemId,nUserId)
			else
				Christmas2015_EggBlessing_HammerFailed(nItemId,nData,nUserId)
			end
		elseif nItemId == tChristmas2015_EggBlessing_Item["Item3007398"] then  --铜
			if Sys_Random(3500,10000) then
				Christmas2015_EggBlessing_HammerSuccess(nItemId,nUserId)
			else
				Christmas2015_EggBlessing_HammerFailed(nItemId,nData,nUserId)
			end
		end
	elseif nData == 1 then	 --第二次砸蛋
		if nItemId == tChristmas2015_EggBlessing_Item["Item3007398"] then  --铜
			if Sys_Random(3500,10000) then
				Christmas2015_EggBlessing_HammerSuccess(nItemId,nUserId)
			else
				Christmas2015_EggBlessing_HammerFailed(nItemId,nData,nUserId)
			end
		else			
			Christmas2015_EggBlessing_HammerSuccess(nItemId,nUserId)
		end
	else	 --第三次砸蛋
		Christmas2015_EggBlessing_HammerSuccess(nItemId,nUserId)
	end
end

--砸蛋成功操作
function Christmas2015_EggBlessing_HammerSuccess(nItemId,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nEvent = tChristmas2015_EggBlessing_Stc[3]["EventType"]
	local nType = tChristmas2015_EggBlessing_Stc[3]["DataType"]
	--删锤子，给奖励
	if Item_ChkItem(nItemId,1,0,nUserId) and Item_DelItem(nItemId,1,0,nUserId) then
		--成功砸蛋完成掩码
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		User_EffectAdd(tChristmas2015_EggBlessing_Effect[1],tChristmas2015_EggBlessing_Effect[3],nUserId)
		--奖励
		Item_AddNewItem(tChristmas2015_EggBlessing_Data["Reward3"],tChristmas2015_EggBlessing_Data["Reward3_Attr"],nUserId)
		Sys_SaveActionFestivalLog(tChristmas2015_EggBlessing_Log["GetStoneBag"],nUserId)
		User_TalkChannel2005(tChristmas2015_EggBlessing_Text[18809]["Text231"],nUserId)
	end
end

--砸蛋失败提示
function Christmas2015_EggBlessing_HammerFailed(nItemId,nData,nNowUserId)
	local nUserId = nNowUserId or Get_UserId() 
	local nEvent = tChristmas2015_EggBlessing_Stc[3]["EventType"]
	local nType = tChristmas2015_EggBlessing_Stc[3]["DataType"]
	local nAdd = tChristmas2015_EggBlessing_Stc[3]["Add"]
	if Item_ChkItem(nItemId,1,0,nUserId) and Item_DelItem(nItemId,1,0,nUserId) then
		--掩码累积砸蛋次数
		Task_AddStatistic(nEvent,nType,nAdd,1,nUserId)
		--失败提示
		local nNpcId = tChristmas2015_EggBlessing_Npc[18809]["NpcId"]
		if nData == 0 then
			User_TalkChannel2005(tChristmas2015_EggBlessing_Text[18809]["Text211"],nUserId)
		elseif nData == 1 then
			User_TalkChannel2005(tChristmas2015_EggBlessing_Text[18809]["Text221"],nUserId)
		end
	end
end

-------------------------------------------使用物品逻辑----------------------------------------------------------
--判断贺卡是否过期
function Christmas2015_EggBlessing_JudgeTimeOut(nItemId)
	local nEvent = tChristmas2015_EggBlessing_Stc[1]["EventType"]
	local nType = tChristmas2015_EggBlessing_Stc[1]["DataType"]
	if Sys_ChkFullTime(tChristmas2015_EggBlessing_Cont["Activity"]) then
		if Task_ChkStcValue(nEvent,nType,">=",1) and Task_StcInterval(nEvent,nType,1,4) then
			if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
				User_TalkChannel2005(tChristmas2015_EggBlessing_Text["OutTime"])
				return
			end
		else
			LinkItemGossipFunc_New(nItemId,"1-1")
		end
	else
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_TalkChannel2005(tChristmas2015_EggBlessing_Text["OutTime"])
			Sys_SaveActionFestivalLog(string.format(tChristmas2015_EggBlessing_Log["DelItem"],nItemId))
			return 
		end
	end
end

--节日贺卡 选择祝福语	--当天未完成消失
function Christmas2015_EggBlessing_ChooseBlessing(nItemId,nChoose)
	local nEvent = tChristmas2015_EggBlessing_Stc[1]["EventType"]
	local nType = tChristmas2015_EggBlessing_Stc[1]["DataType"]
	if Task_ChkStcValue(nEvent,nType,">=",1) and Task_StcInterval(nEvent,nType,1,4) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_TalkChannel2005(tChristmas2015_EggBlessing_Text["OutTime"])
			return
		end
	end
	
	if Christmas2015_EggBlessing_ChkStcComplete(2) then
		--当天已发送过三张不同的贺卡
		User_TalkChannel2005(tChristmas2015_EggBlessing_Text["Enough"])
		return
	end
	Sys_DialogText(tChristmas2015_EggBlessing_Text[nItemId]["Text211"])
	Sys_DialogOptEdit(tChristmas2015_EggBlessing_Text["Input"],tChristmas2015_EggBlessing_Data["StrLength"],"Christmas2015_EggBlessing_SureToSend</N>"..nItemId.."</N>"..nChoose)
	Sys_DialogOption(tChristmas2015_EggBlessing_Text[nItemId]["Option14"],"</F>Christmas2015_EggBlessing_LastPage</N>"..nItemId)
	Sys_DialogEnd()
end

--判断输入框中的玩家姓名是否正确，正确发送
function Christmas2015_EggBlessing_SureToSend(nItemId,nChoose)
	local nEvent = tChristmas2015_EggBlessing_Stc[1]["EventType"]
	local nType = tChristmas2015_EggBlessing_Stc[1]["DataType"]
	if Task_ChkStcValue(nEvent,nType,">=",1) and Task_StcInterval(nEvent,nType,1,4) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_TalkChannel2005(tChristmas2015_EggBlessing_Text["OutTime"])
			return
		end
	end

	if Christmas2015_EggBlessing_ChkStcComplete(2) then
		--当天已发送过三张不同的贺卡
		User_TalkChannel2005(tChristmas2015_EggBlessing_Text["Enough"])
		return
	end

	local sName = tostring(Get_SysAcceptStr())
	if sName == nil then
		Sys_MsgBox(tChristmas2015_EggBlessing_Text["NotExist"])
		return
	end
	--祝福成功  设置掩码
	local nEvent2 = tChristmas2015_EggBlessing_Stc[2]["EventType"]
	local nType2 = tChristmas2015_EggBlessing_Stc[2]["DataType"]
	local nData2 = tChristmas2015_EggBlessing_Stc[2][nItemId]
	if Task_StcInterval(nEvent2,nType2,1,4) then
		Task_SetStatistic(nEvent2,nType2,0,1,0)
		Task_SetStcTimestamp(nEvent2,nType2,0,0)
	end
	Task_AddStatistic(nEvent2,nType2,nData2,1,0)
	-- Task_SetStcTimestamp(nEvent2,nType2,0,0)
	
	--世界频道提示
	local sPlayerName = Get_UserName()
	local sCardName = tChristmas2015_EggBlessing_Text["Name"][nItemId]
	local sText = tostring("Option"..nChoose)
	local sBlessing = tChristmas2015_EggBlessing_Text[nItemId][sText]
	local str = string.format(tChristmas2015_EggBlessing_Text["Broad"],sPlayerName,sName,sCardName,sBlessing)
	Sys_SystemBroadcast(str)
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		User_EffectAdd(tChristmas2015_EggBlessing_Effect[1],tChristmas2015_EggBlessing_Effect[5])
		--随机给奖励
		-- 有15%概率获得一颗流星（每人每天最多获得一个）
		if not Christmas2015_EggBlessing_ChkStcComplete(4) then
			if Sys_Random(1500,10000) then
				if not User_CheckLeftSpace(tChristmas2015_EggBlessing_Data["BagSpace_1"]) then
					User_TalkChannel2005(tChristmas2015_EggBlessing_Text["FullBag"])
					return
				end
				local nEvent4 = tChristmas2015_EggBlessing_Stc[4]["EventType"]
				local nType4 = tChristmas2015_EggBlessing_Stc[4]["DataType"]
				local nComplete = tChristmas2015_EggBlessing_Stc[4]["Complete"]
				Task_SetStatistic(nEvent4,nType4,nComplete,1,0)
				Task_SetStcTimestamp(nEvent4,nType4,0,0)
				--获得一个流星
				Item_AddItem(tChristmas2015_EggBlessing_Data["Reward1"])
				Sys_SaveActionFestivalLog(tChristmas2015_EggBlessing_Log["GetMeteor"])
				Sys_MsgBox(tChristmas2015_EggBlessing_Text["GetMeteor"])
			end
		end
		
		-- 有0. 3%概率获得一颗龙珠（每个服务器每天最多获得一个），获得后世界广播
		local nGlobalId = tChristmas2015_EggBlessing_Global["GlobalId"]
		local nGlobalData = tChristmas2015_EggBlessing_Global["GlobalData"]
		local nMaxNum = tChristmas2015_EggBlessing_Global["MaxData"]
		local nData = Get_SysDynaGlobalData(nGlobalId,nGlobalData)
		if nData < nMaxNum then
			if Sys_Random(30,10000) then
				if not User_CheckLeftSpace(tChristmas2015_EggBlessing_Data["BagSpace_1"]) then
					User_TalkChannel2005(tChristmas2015_EggBlessing_Text["FullBag"])
					return
				end
				--设置限制数量
				Sys_SetSynaGlobalData(nGlobalId,nGlobalData,nMaxNum)
				--获得一个龙珠
				Item_AddItem(tChristmas2015_EggBlessing_Data["Reward2"])
				Sys_SaveActionFestivalLog(tChristmas2015_EggBlessing_Log["GetDragonBall"])
				Sys_SystemBroadcast(string.format(tChristmas2015_EggBlessing_Text["GetDragonBall"],sPlayerName))
			end
		end
	end
	
	--发完3张后提示完成 寻路
	if Christmas2015_EggBlessing_ChkStcComplete(2) then
		Sys_MsgBox(tChristmas2015_EggBlessing_Text["ThreeCard"],"Christmas2015_EggBlessing_AutoFindWay</N>18808")
	end
end

--重新选择祝福语
function Christmas2015_EggBlessing_LastPage(nItemId)
	LinkItemGossipFunc_New(nItemId,"1-1")
end

--支付金币刷新锤子
function Christmas2015_EggBlessing_UpgradeHammer(nItemId,nChoose)
	if not User_CanPutMoney2Bag(tChristmas2015_EggBlessing_Data["Money"][nChoose]) then
		--银两不足
		LinkItemGossipFunc_New(nItemId,"2-1")
		return
	end	
	--确认购买
	LinkItemGossipFunc_New(nItemId,"2-2")
end
 
 --确定升级锤子
 function Christmas2015_EggBlessing_SureToUpgrade(nItemId,nChoose)
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId)then
		--扣除金币
		User_AddMoney(tChristmas2015_EggBlessing_Data["Money"][nChoose])
		if nChoose == 1 then 	--获得小银锤
			Item_AddItem(tChristmas2015_EggBlessing_Item["Item3007397"])
			local str = string.format(tChristmas2015_EggBlessing_Log["PayMoney"],nItemId,math.abs(tChristmas2015_EggBlessing_Data["Money"][nChoose]),tChristmas2015_EggBlessing_Item["Item3007397"])
			Sys_SaveActionFestivalLog(str)
		else		--获得小金锤
			Item_AddItem(tChristmas2015_EggBlessing_Item["Item3007396"])
			local str = string.format(tChristmas2015_EggBlessing_Log["PayMoney"],nItemId,math.abs(tChristmas2015_EggBlessing_Data["Money"][nChoose]),tChristmas2015_EggBlessing_Item["Item3007396"])
			Sys_SaveActionFestivalLog(str)
		end
	end
 end
 
 --锤子的过期判断
function Christmas2015_EggBlessing_HammerTimeOut(nItemId)
	if Sys_ChkFullTime(tChristmas2015_EggBlessing_Cont["Activity"]) then
		if nItemId == tChristmas2015_EggBlessing_Item["Item3007396"] then
			Sys_MsgBox(tChristmas2015_EggBlessing_Text[nItemId]["Text112"],"Christmas2015_EggBlessing_AutoFindWay</N>18809")
		else
			LinkItemGossipFunc_New(nItemId,"1-1")
		end
	elseif Sys_ChkFullTime(tChristmas2015_EggBlessing_Cont["BeforeActivity"]) then
		User_TalkChannel2005(tChristmas2015_EggBlessing_Text["TimeComing"])
	else
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_TalkChannel2005(tChristmas2015_EggBlessing_Text["Disappear"])
			Sys_SaveActionFestivalLog(string.format(tChristmas2015_EggBlessing_Log["DelItem"],nItemId))
			return 
		end
	end
end

-----------------------------------------------上线触发--------------------------------------------------
--上线触发判断活动贺卡是否隔天删除
function Christmas2015_EggBlessing_IsCardDel()
	-- 检查是否有贺卡，过期删除
	local nId = {}
	local nCounter = 0
	for _,v in pairs(tChristmas2015_EggBlessing_Item["Item"]) do
		if Item_ChkItem(v) then
			nCounter = nCounter + 1
			table.insert(nId,v)
		end
	end

	local nEvent = tChristmas2015_EggBlessing_Stc[2]["EventType"]
	local nType = tChristmas2015_EggBlessing_Stc[2]["DataType"]
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)
		--隔天重置掩码 删除贺卡
		if nCounter ~= 0 then
			for _,k in pairs(nId) do
				if Item_ChkItem(k) and Item_DelAllItemByType(k) then
					Sys_SaveActionFestivalLog(string.format(tChristmas2015_EggBlessing_Log["DelItem"],k))
				end
			end
		end
		User_TalkChannel2005(tChristmas2015_EggBlessing_Text["OutTime"])
	end
end

--清理动态表
function Christmas2015_EggBlessing_ClearGlobalData()
	if Sys_ChkFullTime(tChristmas2015_EggBlessing_Cont["Activity"]) then
		local nGlobalId = tChristmas2015_EggBlessing_Global["GlobalId"]
		Sys_ResetAllSynaGlobalData(nGlobalId)
	end
end


------------------------------------------------NPC模块--------------------------------------------------
-- 18808  贺卡萝莉花小蛋
tNpcFace[3795] = 135 
tNpcGossip[18808] = tNpcGossip[18808] or DefaultNpc:new{}
tNpcGossip[18808]["OptionHidden"] = 1
--活动前对白
tNpcGossip[18808]["Text1-1"] = {111,112,113,114}
tNpcGossip[18808]["Text111"] = tChristmas2015_EggBlessing_Text[18808]["Text111"]
tNpcGossip[18808]["Text112"] = tChristmas2015_EggBlessing_Text[18808]["Text112"]
tNpcGossip[18808]["Text113"] = tChristmas2015_EggBlessing_Text[18808]["Text113"]
tNpcGossip[18808]["Text114"] = tChristmas2015_EggBlessing_Text[18808]["Text114"]
tNpcGossip[18808]["tOption1-1"] = {1}
tNpcGossip[18808]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tChristmas2015_EggBlessing_Cont["BeforeActivity"])
end
--活动中对白
--玩家等级不足
tNpcGossip[18808]["Text1-2"] = {121}
tNpcGossip[18808]["Text121"] = tChristmas2015_EggBlessing_Text[18808]["Text121"]
tNpcGossip[18808]["tOption1-2"] = {2}
tNpcGossip[18808]["ChkFunc1-2"] = function ()
	return Sys_ChkFullTime(tChristmas2015_EggBlessing_Cont["Activity"]) and (not Christmas2015_EggBlessing_LevelJudgement())
end
--等级满足条件
tNpcGossip[18808]["Text1-3"] = {131,132,133,134}
tNpcGossip[18808]["Text131"] = tChristmas2015_EggBlessing_Text[18808]["Text131"]
tNpcGossip[18808]["Text132"] = tChristmas2015_EggBlessing_Text[18808]["Text132"]
tNpcGossip[18808]["Text133"] = tChristmas2015_EggBlessing_Text[18808]["Text133"]
tNpcGossip[18808]["Text134"] = tChristmas2015_EggBlessing_Text[18808]["Text134"]
tNpcGossip[18808]["tOption1-3"] = {3,4,5,6,7}
tNpcGossip[18808]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tChristmas2015_EggBlessing_Cont["Activity"]) and Christmas2015_EggBlessing_LevelJudgement()
end
--活动后对白
tNpcGossip[18808]["Text1-4"] = {141}
tNpcGossip[18808]["Text141"] = tChristmas2015_EggBlessing_Text[18808]["Text141"]
tNpcGossip[18808]["tOption1-4"] = {8}
--接option3：我要送贺卡！
--成功，等到贺卡
tNpcGossip[18808]["Text3-1"] = {311}
tNpcGossip[18808]["Text311"] = tChristmas2015_EggBlessing_Text[18808]["Text311"]
tNpcGossip[18808]["tOption3-1"] = {9}
--失败，背包空间不足
tNpcGossip[18808]["Text3-2"] = {321}
tNpcGossip[18808]["Text321"] = tChristmas2015_EggBlessing_Text[18808]["Text321"]
tNpcGossip[18808]["tOption3-2"] = {10}
--失败，已领取任务
tNpcGossip[18808]["Text3-3"] = {331}
tNpcGossip[18808]["Text331"] = tChristmas2015_EggBlessing_Text[18808]["Text331"]
tNpcGossip[18808]["tOption3-3"] = {11}
--接option4：补领贺卡。
--成功补领贺卡
tNpcGossip[18808]["Text4-1"] = {411}
tNpcGossip[18808]["Text411"] = tChristmas2015_EggBlessing_Text[18808]["Text411"]
tNpcGossip[18808]["tOption4-1"] = {12}
--失败，贺卡没有丢
tNpcGossip[18808]["Text4-2"] = {421}
tNpcGossip[18808]["Text421"] = tChristmas2015_EggBlessing_Text[18808]["Text421"]
tNpcGossip[18808]["tOption4-2"] = {13}
--失败，背包满
tNpcGossip[18808]["Text4-3"] = {431}
tNpcGossip[18808]["Text431"] = tChristmas2015_EggBlessing_Text[18808]["Text431"]
tNpcGossip[18808]["tOption4-3"] = {14}
--接option5：我要礼物！
--失败，已领取当天奖励
tNpcGossip[18808]["Text5-1"] = {511}
tNpcGossip[18808]["Text511"] = tChristmas2015_EggBlessing_Text[18808]["Text511"]
tNpcGossip[18808]["tOption5-1"] = {15}
--失败，未完成任务
tNpcGossip[18808]["Text5-2"] = {521}
tNpcGossip[18808]["Text521"] = tChristmas2015_EggBlessing_Text[18808]["Text521"]
tNpcGossip[18808]["tOption5-2"] = {16}
--失败，背包满
tNpcGossip[18808]["Text5-3"] = {531}
tNpcGossip[18808]["Text531"] = tChristmas2015_EggBlessing_Text[18808]["Text531"]
tNpcGossip[18808]["tOption5-3"] = {17}
--成功领取奖励
tNpcGossip[18808]["Text5-4"] = {541}
tNpcGossip[18808]["Text541"] = tChristmas2015_EggBlessing_Text[18808]["Text541"]
tNpcGossip[18808]["tOption5-4"] = {18}
--接option6：了解详情。
tNpcGossip[18808]["Text6-1"] = {611,612}
tNpcGossip[18808]["Text611"] = tChristmas2015_EggBlessing_Text[18808]["Text611"]
tNpcGossip[18808]["Text612"] = tChristmas2015_EggBlessing_Text[18808]["Text612"]
tNpcGossip[18808]["tOption6-1"] = {19,20}

--选项
tNpcGossip[18808]["Option1"] = tChristmas2015_EggBlessing_Text[18808]["Option1"]
tNpcGossip[18808]["Option2"] = tChristmas2015_EggBlessing_Text[18808]["Option2"]
--我要送贺卡   	--（接到任务后屏蔽该选项）没任务时只显示接任务选项，有任务显示补领和交任务选项
tNpcGossip[18808]["Option3"] = tChristmas2015_EggBlessing_Text[18808]["Option3"]
tNpcGossip[18808]["OptionFunc3"] = "Christmas2015_EggBlessing_SendCards</N>18808"
tNpcGossip[18808]["OptionChkFunc3"] = function ()
	local nEvent = tChristmas2015_EggBlessing_Stc[1]["EventType"]
	local nType = tChristmas2015_EggBlessing_Stc[1]["DataType"]
	local nData = tChristmas2015_EggBlessing_Stc[1]["GetTask"]
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)	
	end
	if Christmas2015_EggBlessing_ChkStcComplete(2) or Task_ChkStcValue(nEvent,nType,">=",nData) then
		return false
	else
		return true
	end
end
-- 补领贺卡		--（接受任务后出现该选项，完成任务后屏蔽该选项）
tNpcGossip[18808]["Option4"] = tChristmas2015_EggBlessing_Text[18808]["Option4"]
tNpcGossip[18808]["OptionFunc4"] = "Christmas2015_EggBlessing_GetCards</N>18808"
tNpcGossip[18808]["OptionChkFunc4"] = function ()
	local nEvent = tChristmas2015_EggBlessing_Stc[1]["EventType"]
	local nType = tChristmas2015_EggBlessing_Stc[1]["DataType"]
	local nData = tChristmas2015_EggBlessing_Stc[1]["GetTask"]
	if Christmas2015_EggBlessing_ChkStcComplete(2) or Christmas2015_EggBlessing_ChkStcComplete(1) then
		return false
	end
	if Task_ChkStcValue(nEvent,nType,"==",nData) then
		return true
	else
		return false
	end
end
--我要礼物！（接受任务后出现该选项）
tNpcGossip[18808]["Option5"] = tChristmas2015_EggBlessing_Text[18808]["Option5"]
tNpcGossip[18808]["OptionFunc5"] = "Christmas2015_EggBlessing_GetRewards</N>18808"
tNpcGossip[18808]["OptionChkFunc5"] = function ()
	local nEvent = tChristmas2015_EggBlessing_Stc[1]["EventType"]
	local nType = tChristmas2015_EggBlessing_Stc[1]["DataType"]
	local nData = tChristmas2015_EggBlessing_Stc[1]["GetTask"]
	if Task_ChkStcValue(nEvent,nType,">=",nData) then
		return true
	else
		return false
	end
end

--了解详情。
tNpcGossip[18808]["Option6"] = tChristmas2015_EggBlessing_Text[18808]["Option6"]
tNpcGossip[18808]["OptionPoint6"] = "6-1"
tNpcGossip[18808]["Option7"] = tChristmas2015_EggBlessing_Text[18808]["Option7"]
tNpcGossip[18808]["Option8"] = tChristmas2015_EggBlessing_Text[18808]["Option8"]
tNpcGossip[18808]["Option9"] = tChristmas2015_EggBlessing_Text[18808]["Option9"]
tNpcGossip[18808]["Option10"] = tChristmas2015_EggBlessing_Text[18808]["Option10"]
tNpcGossip[18808]["Option11"] = tChristmas2015_EggBlessing_Text[18808]["Option11"]
tNpcGossip[18808]["Option12"] = tChristmas2015_EggBlessing_Text[18808]["Option12"]
tNpcGossip[18808]["Option13"] = tChristmas2015_EggBlessing_Text[18808]["Option13"]
tNpcGossip[18808]["Option14"] = tChristmas2015_EggBlessing_Text[18808]["Option14"]
tNpcGossip[18808]["Option15"] = tChristmas2015_EggBlessing_Text[18808]["Option15"]
tNpcGossip[18808]["Option16"] = tChristmas2015_EggBlessing_Text[18808]["Option16"]
tNpcGossip[18808]["Option17"] = tChristmas2015_EggBlessing_Text[18808]["Option17"]
tNpcGossip[18808]["Option18"] = tChristmas2015_EggBlessing_Text[18808]["Option18"]
tNpcGossip[18808]["Option19"] = tChristmas2015_EggBlessing_Text[18808]["Option19"]
tNpcGossip[18808]["OptionPoint19"] = "1-3"
tNpcGossip[18808]["Option20"] = tChristmas2015_EggBlessing_Text[18808]["Option20"]

-- 18809  幸运彩蛋
tNpcGossip[18809] = tNpcGossip[18809] or DefaultNpc:new{}
tNpcGossip[18809]["OptionHidden"] = 1
--活动中对白
tNpcGossip[18809]["Text1-1"] = {111}
tNpcGossip[18809]["Text111"] = tChristmas2015_EggBlessing_Text[18809]["Text111"]
tNpcGossip[18809]["tOption1-1"] = {1,2,3,4}
tNpcGossip[18809]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tChristmas2015_EggBlessing_Cont["Activity"])
end
--活动之外对白
tNpcGossip[18809]["Text1-2"] = {121}
tNpcGossip[18809]["Text121"] = tChristmas2015_EggBlessing_Text[18809]["Text121"]
tNpcGossip[18809]["tOption1-2"] = {5}
tNpcGossip[18809]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tChristmas2015_EggBlessing_Cont["Activity"])
end
--接1,2,3：使用锤子
--第一次砸蛋，读条2s后提示未成功
tNpcGossip[18809]["Text2-1"] = {211}
tNpcGossip[18809]["Text211"] = tChristmas2015_EggBlessing_Text[18809]["Text211"]
tNpcGossip[18809]["tOption2-1"] = {6}
--第二次砸蛋，读条2s后提示未成功
tNpcGossip[18809]["Text2-2"] = {221}
tNpcGossip[18809]["Text221"] = tChristmas2015_EggBlessing_Text[18809]["Text221"]
tNpcGossip[18809]["tOption2-2"] = {7}
--第三次砸蛋，读条2秒后101提示成功
tNpcGossip[18809]["Text2-3"] = {231}
tNpcGossip[18809]["Text231"] = tChristmas2015_EggBlessing_Text[18809]["Text231"]
tNpcGossip[18809]["tOption2-3"] = {8}
--选项
tNpcGossip[18809]["Option1"] = tChristmas2015_EggBlessing_Text[18809]["Option1"]
tNpcGossip[18809]["OptionFunc1"] = "Christmas2015_EggBlessing_ThrowEgg</N>18809</N>3007398"
tNpcGossip[18809]["Option2"] = tChristmas2015_EggBlessing_Text[18809]["Option2"]
tNpcGossip[18809]["OptionFunc2"] = "Christmas2015_EggBlessing_ThrowEgg</N>18809</N>3007397"
tNpcGossip[18809]["Option3"] = tChristmas2015_EggBlessing_Text[18809]["Option3"]
tNpcGossip[18809]["OptionFunc3"] = "Christmas2015_EggBlessing_ThrowEgg</N>18809</N>3007396"
tNpcGossip[18809]["Option4"] = tChristmas2015_EggBlessing_Text[18809]["Option4"]
tNpcGossip[18809]["Option5"] = tChristmas2015_EggBlessing_Text[18809]["Option5"]
tNpcGossip[18809]["Option6"] = tChristmas2015_EggBlessing_Text[18809]["Option6"]
tNpcGossip[18809]["Option7"] = tChristmas2015_EggBlessing_Text[18809]["Option7"]
tNpcGossip[18809]["Option8"] = tChristmas2015_EggBlessing_Text[18809]["Option8"]

------------------------------------------------itemtype模块--------------------------------------------------
-- 3007393	圣诞快乐贺卡
tItem[3007393] = tItem[3007393] or {}
tItem[3007393]["Function"] = function(nItemId,sItemName)
	local nItemId = tChristmas2015_EggBlessing_Item["Item"][1]
	Christmas2015_EggBlessing_JudgeTimeOut(nItemId)
end
tItem[3007393]["Text1-1"] = {111}
tItem[3007393]["Text111"] = tChristmas2015_EggBlessing_Text[3007393]["Text111"]
tItem[3007393]["tOption1-1"] = {1,2,3,4,5,6,7,8}
tItem[3007393]["Text1-2"] = {111}
tItem[3007393]["tOption1-2"] = {9,10,11,12}
tItem[3007393]["Text2-1"] = {211}
tItem[3007393]["Text211"] = tChristmas2015_EggBlessing_Text[3007393]["Text211"]
tItem[3007393]["tOption2-1"] = {13,14,15}
tItem[3007393]["Option1"] = tChristmas2015_EggBlessing_Text[3007393]["Option1"]
tItem[3007393]["OptionFunc1"] = "Christmas2015_EggBlessing_ChooseBlessing</N>3007393</N>1"
tItem[3007393]["Option2"] = tChristmas2015_EggBlessing_Text[3007393]["Option2"]
tItem[3007393]["OptionFunc2"] = "Christmas2015_EggBlessing_ChooseBlessing</N>3007393</N>2"
tItem[3007393]["Option3"] = tChristmas2015_EggBlessing_Text[3007393]["Option3"]
tItem[3007393]["OptionFunc3"] = "Christmas2015_EggBlessing_ChooseBlessing</N>3007393</N>3"
tItem[3007393]["Option4"] = tChristmas2015_EggBlessing_Text[3007393]["Option4"]
tItem[3007393]["OptionFunc4"] = "Christmas2015_EggBlessing_ChooseBlessing</N>3007393</N>4"
tItem[3007393]["Option5"] = tChristmas2015_EggBlessing_Text[3007393]["Option5"]
tItem[3007393]["OptionFunc5"] = "Christmas2015_EggBlessing_ChooseBlessing</N>3007393</N>5"
tItem[3007393]["Option6"] = tChristmas2015_EggBlessing_Text[3007393]["Option6"]
tItem[3007393]["OptionFunc6"] = "Christmas2015_EggBlessing_ChooseBlessing</N>3007393</N>6"
tItem[3007393]["Option7"] = tChristmas2015_EggBlessing_Text[3007393]["Option7"]
tItem[3007393]["OptionFunc7"] = "Christmas2015_EggBlessing_ChooseBlessing</N>3007393</N>7"
tItem[3007393]["Option8"] = tChristmas2015_EggBlessing_Text[3007393]["Option8"]
tItem[3007393]["OptionPoint8"] = "1-2"
tItem[3007393]["Option9"] = tChristmas2015_EggBlessing_Text[3007393]["Option9"]
tItem[3007393]["OptionFunc9"] = "Christmas2015_EggBlessing_ChooseBlessing</N>3007393</N>9"
tItem[3007393]["Option10"] = tChristmas2015_EggBlessing_Text[3007393]["Option10"]
tItem[3007393]["OptionFunc10"] = "Christmas2015_EggBlessing_ChooseBlessing</N>3007393</N>10"
tItem[3007393]["Option11"] = tChristmas2015_EggBlessing_Text[3007393]["Option11"]
tItem[3007393]["OptionFunc11"] = "Christmas2015_EggBlessing_ChooseBlessing</N>3007393</N>11"
tItem[3007393]["Option12"] = tChristmas2015_EggBlessing_Text[3007393]["Option12"]
tItem[3007393]["OptionPoint12"] = "1-1"
tItem[3007393]["Option13"] = tChristmas2015_EggBlessing_Text[3007393]["Option13"]
tItem[3007393]["OptionFunc13"] = "Christmas2015_EggBlessing_SureToSend</N>3007393"
tItem[3007393]["Option14"] = tChristmas2015_EggBlessing_Text[3007393]["Option14"]
tItem[3007393]["OptionPoint14"] = "1-1"

-- 3007394	新年好运贺卡
tItem[3007394] = tItem[3007394] or {}
tItem[3007394]["Function"] = function(nItemId,sItemName)
	local nItemId = tChristmas2015_EggBlessing_Item["Item"][2]
	Christmas2015_EggBlessing_JudgeTimeOut(nItemId)
end
tItem[3007394]["Text1-1"] = {111}
tItem[3007394]["Text111"] = tChristmas2015_EggBlessing_Text[3007394]["Text111"]
tItem[3007394]["tOption1-1"] = {1,2,3,4,5,6,7,8}
tItem[3007394]["Text1-2"] = {111}
tItem[3007394]["tOption1-2"] = {9,10,11,12}
tItem[3007394]["Text2-1"] = {211}
tItem[3007394]["Text211"] = tChristmas2015_EggBlessing_Text[3007394]["Text211"]
tItem[3007394]["tOption2-1"] = {13,14,15}
tItem[3007394]["Option1"] = tChristmas2015_EggBlessing_Text[3007394]["Option1"]
tItem[3007394]["OptionFunc1"] = "Christmas2015_EggBlessing_ChooseBlessing</N>3007394</N>1"
tItem[3007394]["Option2"] = tChristmas2015_EggBlessing_Text[3007394]["Option2"]
tItem[3007394]["OptionFunc2"] = "Christmas2015_EggBlessing_ChooseBlessing</N>3007394</N>2"
tItem[3007394]["Option3"] = tChristmas2015_EggBlessing_Text[3007394]["Option3"]
tItem[3007394]["OptionFunc3"] = "Christmas2015_EggBlessing_ChooseBlessing</N>3007394</N>3"
tItem[3007394]["Option4"] = tChristmas2015_EggBlessing_Text[3007394]["Option4"]
tItem[3007394]["OptionFunc4"] = "Christmas2015_EggBlessing_ChooseBlessing</N>3007394</N>4"
tItem[3007394]["Option5"] = tChristmas2015_EggBlessing_Text[3007394]["Option5"]
tItem[3007394]["OptionFunc5"] = "Christmas2015_EggBlessing_ChooseBlessing</N>3007394</N>5"
tItem[3007394]["Option6"] = tChristmas2015_EggBlessing_Text[3007394]["Option6"]
tItem[3007394]["OptionFunc6"] = "Christmas2015_EggBlessing_ChooseBlessing</N>3007394</N>6"
tItem[3007394]["Option7"] = tChristmas2015_EggBlessing_Text[3007394]["Option7"]
tItem[3007394]["OptionFunc7"] = "Christmas2015_EggBlessing_ChooseBlessing</N>3007394</N>7"
tItem[3007394]["Option8"] = tChristmas2015_EggBlessing_Text[3007394]["Option8"]
tItem[3007394]["OptionPoint8"] = "1-2"
tItem[3007394]["Option9"] = tChristmas2015_EggBlessing_Text[3007394]["Option9"]
tItem[3007394]["OptionFunc9"] = "Christmas2015_EggBlessing_ChooseBlessing</N>3007394</N>9"
tItem[3007394]["Option10"] = tChristmas2015_EggBlessing_Text[3007394]["Option10"]
tItem[3007394]["OptionFunc10"] = "Christmas2015_EggBlessing_ChooseBlessing</N>3007394</N>10"
tItem[3007394]["Option11"] = tChristmas2015_EggBlessing_Text[3007394]["Option11"]
tItem[3007394]["OptionFunc11"] = "Christmas2015_EggBlessing_ChooseBlessing</N>3007394</N>11"
tItem[3007394]["Option12"] = tChristmas2015_EggBlessing_Text[3007394]["Option12"]
tItem[3007394]["OptionPoint12"] = "1-1"
tItem[3007394]["Option13"] = tChristmas2015_EggBlessing_Text[3007394]["Option13"]
tItem[3007394]["OptionFunc13"] = "Christmas2015_EggBlessing_SureToSend</N>3007394"
tItem[3007394]["Option14"] = tChristmas2015_EggBlessing_Text[3007394]["Option14"]
tItem[3007394]["OptionPoint14"] = "1-1"

-- 3007395	无限祝福贺卡
tItem[3007395] = tItem[3007395] or {}
tItem[3007395]["Function"] = function(nItemId,sItemName)
	local nItemId = tChristmas2015_EggBlessing_Item["Item"][3]
	Christmas2015_EggBlessing_JudgeTimeOut(nItemId)
end
tItem[3007395]["Text1-1"] = {111}
tItem[3007395]["Text111"] = tChristmas2015_EggBlessing_Text[3007395]["Text111"]
tItem[3007395]["tOption1-1"] = {1,2,3,4,5,6,7,8}
tItem[3007395]["Text1-2"] = {111}
tItem[3007395]["tOption1-2"] = {9,10,11,12}
tItem[3007395]["Text2-1"] = {211}
tItem[3007395]["Text211"] = tChristmas2015_EggBlessing_Text[3007395]["Text211"]
tItem[3007395]["tOption2-1"] = {13,14,15}
tItem[3007395]["Option1"] = tChristmas2015_EggBlessing_Text[3007395]["Option1"]
tItem[3007395]["OptionFunc1"] = "Christmas2015_EggBlessing_ChooseBlessing</N>3007395</N>1"
tItem[3007395]["Option2"] = tChristmas2015_EggBlessing_Text[3007395]["Option2"]
tItem[3007395]["OptionFunc2"] = "Christmas2015_EggBlessing_ChooseBlessing</N>3007395</N>2"
tItem[3007395]["Option3"] = tChristmas2015_EggBlessing_Text[3007395]["Option3"]
tItem[3007395]["OptionFunc3"] = "Christmas2015_EggBlessing_ChooseBlessing</N>3007395</N>3"
tItem[3007395]["Option4"] = tChristmas2015_EggBlessing_Text[3007395]["Option4"]
tItem[3007395]["OptionFunc4"] = "Christmas2015_EggBlessing_ChooseBlessing</N>3007395</N>4"
tItem[3007395]["Option5"] = tChristmas2015_EggBlessing_Text[3007395]["Option5"]
tItem[3007395]["OptionFunc5"] = "Christmas2015_EggBlessing_ChooseBlessing</N>3007395</N>5"
tItem[3007395]["Option6"] = tChristmas2015_EggBlessing_Text[3007395]["Option6"]
tItem[3007395]["OptionFunc6"] = "Christmas2015_EggBlessing_ChooseBlessing</N>3007395</N>6"
tItem[3007395]["Option7"] = tChristmas2015_EggBlessing_Text[3007395]["Option7"]
tItem[3007395]["OptionFunc7"] = "Christmas2015_EggBlessing_ChooseBlessing</N>3007395</N>7"
tItem[3007395]["Option8"] = tChristmas2015_EggBlessing_Text[3007395]["Option8"]
tItem[3007395]["OptionPoint8"] = "1-2"
tItem[3007395]["Option9"] = tChristmas2015_EggBlessing_Text[3007395]["Option9"]
tItem[3007395]["OptionFunc9"] = "Christmas2015_EggBlessing_ChooseBlessing</N>3007395</N>9"
tItem[3007395]["Option10"] = tChristmas2015_EggBlessing_Text[3007395]["Option10"]
tItem[3007395]["OptionFunc10"] = "Christmas2015_EggBlessing_ChooseBlessing</N>3007395</N>10"
tItem[3007395]["Option11"] = tChristmas2015_EggBlessing_Text[3007395]["Option11"]
tItem[3007395]["OptionFunc11"] = "Christmas2015_EggBlessing_ChooseBlessing</N>3007395</N>11"
tItem[3007395]["Option12"] = tChristmas2015_EggBlessing_Text[3007395]["Option12"]
tItem[3007395]["OptionPoint12"] = "1-1"
tItem[3007395]["Option13"] = tChristmas2015_EggBlessing_Text[3007395]["Option13"]
tItem[3007395]["OptionFunc13"] = "Christmas2015_EggBlessing_SureToSend</N>3007395"
tItem[3007395]["Option14"] = tChristmas2015_EggBlessing_Text[3007395]["Option14"]
tItem[3007395]["OptionPoint14"] = "1-1"

-- 3007396	小金锤
tItem[3007396] = tItem[3007396] or {}
tItem[3007396]["Function"] = function(nItemId,sItemName)
	local nItemId = tChristmas2015_EggBlessing_Item["Item3007396"]
	Christmas2015_EggBlessing_HammerTimeOut(nItemId)
end

-- 3007397	小银锤
tItem[3007397] = tItem[3007397] or {}
tItem[3007397]["Function"] = function(nItemId,sItemName)
	local nItemId = tChristmas2015_EggBlessing_Item["Item3007397"]
	Christmas2015_EggBlessing_HammerTimeOut(nItemId)
end
tItem[3007397]["Text1-1"] = {111}
tItem[3007397]["Text111"] = tChristmas2015_EggBlessing_Text[3007397]["Text112"]
tItem[3007397]["tOption1-1"] = {1,2}
tItem[3007397]["Text2-1"] = {211}
tItem[3007397]["Text211"] = tChristmas2015_EggBlessing_Text[3007397]["Text211"]
tItem[3007397]["tOption2-1"] = {3}
tItem[3007397]["Text2-2"] = {221}
tItem[3007397]["Text221"] = tChristmas2015_EggBlessing_Text[3007397]["Text221"]
tItem[3007397]["tOption2-2"] = {4,5}
tItem[3007397]["Option1"] = tChristmas2015_EggBlessing_Text[3007397]["Option1"]
tItem[3007397]["OptionFunc1"] = "Christmas2015_EggBlessing_UpgradeHammer</N>3007397</N>2"
tItem[3007397]["Option2"] = tChristmas2015_EggBlessing_Text[3007397]["Option2"]
tItem[3007397]["OptionFunc2"] = "Christmas2015_EggBlessing_AutoFindWay</N>18809"
tItem[3007397]["Option3"] = tChristmas2015_EggBlessing_Text[3007397]["Option3"]
tItem[3007397]["Option4"] = tChristmas2015_EggBlessing_Text[3007397]["Option4"]
tItem[3007397]["OptionFunc4"] = "Christmas2015_EggBlessing_SureToUpgrade</N>3007397</N>2"
tItem[3007397]["Option5"] = tChristmas2015_EggBlessing_Text[3007397]["Option5"]

-- 3007398	小铜锤
tItem[3007398] = tItem[3007398] or {}
tItem[3007398]["Function"] = function(nItemId,sItemName)
	local nItemId = tChristmas2015_EggBlessing_Item["Item3007398"]
	Christmas2015_EggBlessing_HammerTimeOut(nItemId)
end
tItem[3007398]["Text1-1"] = {111}
tItem[3007398]["Text111"] = tChristmas2015_EggBlessing_Text[3007398]["Text112"]
tItem[3007398]["tOption1-1"] = {1,2}
tItem[3007398]["Text2-1"] = {211}
tItem[3007398]["Text211"] = tChristmas2015_EggBlessing_Text[3007398]["Text211"]
tItem[3007398]["tOption2-1"] = {3}
tItem[3007398]["Text2-2"] = {221}
tItem[3007398]["Text221"] = tChristmas2015_EggBlessing_Text[3007398]["Text221"]
tItem[3007398]["tOption2-2"] = {4,5}
tItem[3007398]["Option1"] = tChristmas2015_EggBlessing_Text[3007398]["Option1"]
tItem[3007398]["OptionFunc1"] = "Christmas2015_EggBlessing_UpgradeHammer</N>3007398</N>1"
tItem[3007398]["Option2"] = tChristmas2015_EggBlessing_Text[3007398]["Option2"]
tItem[3007398]["OptionFunc2"] = "Christmas2015_EggBlessing_AutoFindWay</N>18809"
tItem[3007398]["Option3"] = tChristmas2015_EggBlessing_Text[3007398]["Option3"]
tItem[3007398]["Option4"] = tChristmas2015_EggBlessing_Text[3007398]["Option4"]
tItem[3007398]["OptionFunc4"] = "Christmas2015_EggBlessing_SureToUpgrade</N>3007398</N>1"
tItem[3007398]["Option5"] = tChristmas2015_EggBlessing_Text[3007398]["Option5"]


-- tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
-- table.insert(tSystem_PlayLogin_Func,Christmas2015_EggBlessing_IsCardDel)

-- 清理动态表
-- tOntimerMin_HM[0001] = tOntimerMin_HM[0001] or {}
-- table.insert(tOntimerMin_HM[0001],Christmas2015_EggBlessing_ClearGlobalData)
