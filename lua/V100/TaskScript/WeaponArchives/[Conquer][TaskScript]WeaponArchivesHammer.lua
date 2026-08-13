------------------------------------------------------------------------------------
--Name：            190419[简体征服][活动脚本]勇士百兵谱支线任务-锤
--Creator:      江宇君
--Created:     2019-04-19
------------------------------------------------------------------------------------
--任务需求：
-- 去与铁匠对话，为铁匠收集100根天灵木，投入火炉之中。
-- 然后点击锻造台，点击1次，播放一个锤子砸下来光效，需要锤1000次，
-- 概率暴击，有大爆，小爆，分别增加100次，50次锤炼次数。也可花钱雇佣铁匠帮你。

-- 步骤1：前往寻找双龙城铁匠，与之对话
-- 步骤2：前往神龙岛，到指定位置采集天灵木（采集物采集后消失，每次可采5根左右）
-- 步骤3：提交天灵木后，开始锻造，点击铁匠边上的熔炉
-- 步骤4：完成1000次锻造

------------------------------------------------------------------------------------
-- 命名前缀:	WeaponArchivesHammer_

-- 测试语句
-- /callluafunc </F>Task_SetTaskDetailData1</N>7010</N>100 -- 采集数量100
-- /callluafunc </F>Task_SetTaskDetailData2</N>7010</N>1000 -- 锻造次数1000
-- /callluafunc </F>Task_SetTaskDetailData3</N>7010</N>0 -- 上交天灵木
-- /callluafunc </F>Task_SetTaskDetailCompleteFlag</N>7010</N>0 -- 锻造次数1000
-- /awarditem 3312248 100 -- 加物品100
-- /chgmap 1036 101 101 -- 铁匠位置
-- /callluafunc </F>Task_SetStatistic</N>194</N>10</N>0</N>1 -- 清首次对白掩码
-- /callluafunc </F>Task_SetStatistic</N>197</N>40</N>0</N>1


----------------------------------表配置部分--------------------------------------------
-- 采集点坐标
local tWeaponArchivesHammer_Pos = {}
	
	-- 采集npc坐标
	tWeaponArchivesHammer_Pos["CollectMapId1"] = 1020
	tWeaponArchivesHammer_Pos["CollectMapId2"] = 10366
	tWeaponArchivesHammer_Pos["CollectCell"] = {}
	-- x坐标	y坐标	标志位 1表示有npc 0表示无npc
	tWeaponArchivesHammer_Pos["CollectCell"][1] = {722,761,1}
	tWeaponArchivesHammer_Pos["CollectCell"][2] = {715,761,1}
	tWeaponArchivesHammer_Pos["CollectCell"][3] = {704,754,1}
	tWeaponArchivesHammer_Pos["CollectCell"][4] = {721,744,1}
	tWeaponArchivesHammer_Pos["CollectCell"][5] = {692,752,1}
	tWeaponArchivesHammer_Pos["CollectCell"][6] = {705,748,1}
	tWeaponArchivesHammer_Pos["CollectCell"][7] = {708,741,1}
	tWeaponArchivesHammer_Pos["CollectCell"][8] = {722,750,1}
	tWeaponArchivesHammer_Pos["CollectCell"][9] = {711,748,0}
	tWeaponArchivesHammer_Pos["CollectCell"][10] = {712,763,0}
	tWeaponArchivesHammer_Pos["CollectCell"][11] = {695,755,0}
	tWeaponArchivesHammer_Pos["CollectCell"][12] = {706,745,0}
	tWeaponArchivesHammer_Pos["CollectCell"][13] = {725,748,0}
	tWeaponArchivesHammer_Pos["CollectCell"][14] = {703,743,0}
	
	-- 传送到神龙岛的坐标
	tWeaponArchivesHammer_Pos["Trans"] = {}
	tWeaponArchivesHammer_Pos["Trans"]["MapId1"] = 1020
	tWeaponArchivesHammer_Pos["Trans"]["MapId2"] = 10366
	tWeaponArchivesHammer_Pos["Trans"]["PosX"] = 713
	tWeaponArchivesHammer_Pos["Trans"]["PosY"] = 751
	
	
local tWeaponArchivesHammer_TaskDetail = {}
	tWeaponArchivesHammer_TaskDetail["TaskId"] = 7010
	tWeaponArchivesHammer_TaskDetail["CompleteFlag"] = 1
	tWeaponArchivesHammer_TaskDetail["Data1"] = 100 -- 需要采集的天灵木数目
	tWeaponArchivesHammer_TaskDetail["Data2"] = 1000  -- 需要锻造的总次数
	tWeaponArchivesHammer_TaskDetail["Data3"] = 1  -- 上交过天灵木
	
	tWeaponArchivesHammer_TaskDetail["FirstTaskId"] = 1084  -- 前置任务
	tWeaponArchivesHammer_TaskDetail["FirstTaskIdNoGift"] = 1092  -- 前置任务
	
-- 首次点击npc时的对白
local tWeaponArchivesHammer_Stc = {}
	tWeaponArchivesHammer_Stc["EventType"] = 194
	tWeaponArchivesHammer_Stc["DataType"] = 10
	
	tWeaponArchivesHammer_Stc["CompleteEvent"] = 197
	tWeaponArchivesHammer_Stc["CompleteType"] = 40
	
local tWeaponArchivesHammer_Data = {}
	tWeaponArchivesHammer_Data["Forging"] = {}
	tWeaponArchivesHammer_Data["Forging"][10] = tWeaponArchivesHammer_Text["Forging"][10]    --锻造10次花费3天石
	tWeaponArchivesHammer_Data["Forging"][50] = tWeaponArchivesHammer_Text["Forging"][50]    --锻造50次花费12天石
	tWeaponArchivesHammer_Data["Forging"][100] = tWeaponArchivesHammer_Text["Forging"][100]  --锻造100次花费20天石
	tWeaponArchivesHammer_Data["NeedItemId"] = 3312248 -- 天灵木
	tWeaponArchivesHammer_Data["NeedItemNum"] = 100 -- 需要的天灵木数量
	tWeaponArchivesHammer_Data["ForgingTimes"] = {}
	tWeaponArchivesHammer_Data["ForgingTimes"][1] = 1
	tWeaponArchivesHammer_Data["ForgingTimes"][2] = 50
	tWeaponArchivesHammer_Data["ForgingTimes"][3] = 100
	tWeaponArchivesHammer_Data["EMoneyLog"] = "10000	0360	%d	%d	1	" -- emoneylog
	tWeaponArchivesHammer_Data["Hammer"] = 460 -- 锤的武器id
	
-- 光效表
local tWeaponArchivesHammer_Effect = {}
	tWeaponArchivesHammer_Effect["SzObj"] = "self"
	tWeaponArchivesHammer_Effect["User"] = "accession"   -- 玩家锻造1000次时的光效
	tWeaponArchivesHammer_Effect["Npc"] = "thor_Hammer"  -- 每次锻造时神炉上的光效
	tWeaponArchivesHammer_Effect["HandIn"] = "angelwing" -- 上交时的光效
	tWeaponArchivesHammer_Effect["Forging1"] = "100wtask_dz1"      -- 锻造时弹出的次数光效1
	tWeaponArchivesHammer_Effect["Forging10"] = "100wtask_dz10"    -- 锻造时弹出的次数光效10
	tWeaponArchivesHammer_Effect["Forging50"] = "100wtask_dz50"    -- 锻造时弹出的次数光效50
	tWeaponArchivesHammer_Effect["Forging100"] = "100wtask_dz100"  -- 锻造时弹出的次数光效100
	
-- 概率表
local tWeaponArchivesHammer_Probabilit = {}
	tWeaponArchivesHammer_Probabilit["Total"] = 10000 -- 总概率
	tWeaponArchivesHammer_Probabilit["Large"] = 100   -- 大爆的概率
	tWeaponArchivesHammer_Probabilit["Small"] = 1000  -- 小爆的概率
	
local tWeaponArchivesHammer_Reward = {}
	-- ===给玩家天灵木
	-- ===索引: tWeaponArchivesHammer_Reward[3312248]
	tWeaponArchivesHammer_Reward[3312248] = {}
	tWeaponArchivesHammer_Reward[3312248]["LogId"] = 18000209
	tWeaponArchivesHammer_Reward[3312248]["RewardItem"] = {}
	tWeaponArchivesHammer_Reward[3312248]["RewardItem"][1] = {}
	tWeaponArchivesHammer_Reward[3312248]["RewardItem"][1]["Id"] = 3312248 -- 【库】天灵木[属性:11], 【表格】天灵木
	tWeaponArchivesHammer_Reward[3312248]["RewardItem"][1]["Attr"] = "0 %d" -- 天灵木*1
	tWeaponArchivesHammer_Reward[3312248]["RewardEffect"] = {}
	tWeaponArchivesHammer_Reward[3312248]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesHammer_Reward[3312248]["RewardEffect"]["Effect"] = "zf2-e128"
	tWeaponArchivesHammer_Reward[3312248]["RewardNoNeedTip"] = 1
	
-- 临时表 存储玩家采集数目的次数
local tWeaponArchivesHammer_Tiems = {}

----------------------------------逻辑部分---------------------------------------------
-- 采集函数
function WeaponArchivesHammer_Collect()
	local nUserId = Get_UserId()
	local nNpcId = Get_NpcId()
	local nTaskId = tWeaponArchivesHammer_TaskDetail["TaskId"]
	-- 玩家身上无任务
	if not Task_ChkTaskDetail(nTaskId) then
		Sys_MsgBox(tWeaponArchivesHammer_Text["NoTask"])
		return
	end
	
	-- 玩家已完成任务
	if Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",tWeaponArchivesHammer_TaskDetail["CompleteFlag"]) then
		Sys_MsgBox(tWeaponArchivesHammer_Text["CollectEnough"])
		return
	end
	
	-- 玩家锻造次数已满
	if Task_ChkTaskDetailValue(nTaskId,"2",">=",tWeaponArchivesHammer_TaskDetail["Data2"]) then
		return
	end
	
	-- 玩家采集数量已满
	if Task_ChkTaskDetailValue(nTaskId,"1",">=",tWeaponArchivesHammer_TaskDetail["Data1"]) then
		Sys_MsgBox(tWeaponArchivesHammer_Text["CollectEnough"])
		return
	end
	User_SetExplore(1, tWeaponArchivesHammer_Text["Collect"], 220, "WeaponArchivesHammer_Success</N>" .. nNpcId.."</N>" .. nTaskId)
	
end

-- 采集成功逻辑
function WeaponArchivesHammer_Success(nNpcId, nTaskId, nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nMapId = tWeaponArchivesHammer_Pos["CollectMapId1"]
	local nItemId = tWeaponArchivesHammer_Data["NeedItemId"]
	local tReward = CommonFunc_Copy(tWeaponArchivesHammer_Reward[nItemId])
	
	if SpecialServer_ChkNoGiftServer() then
		nMapId = tWeaponArchivesHammer_Pos["CollectMapId2"]
	end
	
	-- 表空时 存入当前采集数量和当前采集的NpcId
	if tWeaponArchivesHammer_Tiems[nUserId] == nil then
		tWeaponArchivesHammer_Tiems[nUserId] = {}
		tWeaponArchivesHammer_Tiems[nUserId]["NpcId"] = nNpcId
		tWeaponArchivesHammer_Tiems[nUserId][nNpcId] = 0
	end
	
	-- 表不为空时 判断表的NpcId和当前采集的NpcId是否相同 不同则重置当前表
	if tWeaponArchivesHammer_Tiems[nUserId]["NpcId"] ~= nNpcId then
		tWeaponArchivesHammer_Tiems[nUserId]["NpcId"] = nNpcId
		tWeaponArchivesHammer_Tiems[nUserId][nNpcId] = 0
	end
	
	-- 采集成功+随机2-5次
	local nTimes = math.random(5,10) -- 获取随机2-5棵天灵木
	
	local nData1 = Get_TaskDetailData1(nTaskId, nUserId)
	local nSetData1 = nData1 + nTimes
	
	-- 如果总采集数超过100 置为100 重置给玩家的物品数量nTimes
	if nSetData1 >= tWeaponArchivesHammer_TaskDetail["Data1"] then
		nSetData1 = tWeaponArchivesHammer_TaskDetail["Data1"]
		nTimes = tWeaponArchivesHammer_TaskDetail["Data1"] - nData1 -- 还差nTimes个天灵木到达100
	end
	
	tReward["RewardItem"][1]["Attr"] = string.format(tReward["RewardItem"][1]["Attr"], nTimes)
	-- 判断背包空间
	if not RewardTemplate_CheckSpace(tReward, nUserId) then
		return
	end
	-- 打掩码成功给奖励弹对白
	if Task_SetTaskDetailData1(nTaskId, nSetData1, nUserId) then
		RewardTemplate_UseItem(tReward, nUserId)
		tWeaponArchivesHammer_Tiems[nUserId][nNpcId] = tWeaponArchivesHammer_Tiems[nUserId][nNpcId] + 1
		User_TalkChannel2005(string.format(tWeaponArchivesHammer_Text["CollectTrees"],nTimes), nUserId)
	end
	
	-- 玩家采集数量已满
	if Task_ChkTaskDetailValue(nTaskId,"1",">=",tWeaponArchivesHammer_TaskDetail["Data1"],nUserId) then
		Sys_MsgBox(tWeaponArchivesHammer_Text["CollectEnough"], "WeaponArchivesHammer_GoBack</N>24140",nil,nUserId)
		return
	end
	
	-- 采集5次 移动npc
	if tWeaponArchivesHammer_Tiems[nUserId][nNpcId] == 5 then
		local tNpcPos = {}
		tNpcPos["PosX"] = {}
		tNpcPos["PosY"] = {}
		
		-- 取出标志位为0的坐标
		for i, v in ipairs(tWeaponArchivesHammer_Pos["CollectCell"]) do
			if v[3] == 0 then
				table.insert(tNpcPos["PosX"], v[1])
				table.insert(tNpcPos["PosY"], v[2])
			end
		end
		
		local nIndexPos = math.random(1, #tNpcPos["PosX"]) -- 取随机数
		
		-- 移动npc	标志位置0
		local nChgMapId, nChgPosX, nChgPosY = NpcPosition_Get(nNpcId)
		for i, v in ipairs(tWeaponArchivesHammer_Pos["CollectCell"]) do
			if v[1] == nChgPosX and v[2] == nChgPosY then
				tWeaponArchivesHammer_Pos["CollectCell"][i][3] = 0
			end
		end
		local nPosX = tNpcPos["PosX"][nIndexPos]
		local nPosY = tNpcPos["PosY"][nIndexPos]
		Npc_MoveNpcPos(nNpcId, nMapId, nPosX, nPosY)
		
		-- 移动后的坐标位置1
		for i, v in ipairs(tWeaponArchivesHammer_Pos["CollectCell"]) do
			if v[1] == nPosX and v[2] == nPosY then
				tWeaponArchivesHammer_Pos["CollectCell"][i][3] = 1
			end
		end
		
		Sys_MsgBox(tWeaponArchivesHammer_Text["NoTrees"], nil, nil, nUserId)
		
		-- 清空临时表
		tWeaponArchivesHammer_Tiems = {}
	end
end

-- 上交天灵木 上交成功置data3位为1
function WeaponArchivesHammer_HandIn(nNpcId, nTaskId)
	-- 玩家身上无任务
	if not Task_ChkTaskDetail(nTaskId) then 
		return
	end
	
	-- 任务已完成
	if Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",tWeaponArchivesHammer_TaskDetail["CompleteFlag"]) then
		return
	end
	
	-- 物品数量不足
	if not Item_ChkMulItem(tWeaponArchivesHammer_Data["NeedItemId"], tWeaponArchivesHammer_Data["NeedItemId"], tWeaponArchivesHammer_Data["NeedItemNum"]) then
		Sys_MsgBox(tWeaponArchivesHammer_Text["TreesLimit"])
		return
	end
	
	local nNums = Get_CountItemType(tWeaponArchivesHammer_Data["NeedItemId"], 0)
	if not Item_DelMulItem(tWeaponArchivesHammer_Data["NeedItemId"], tWeaponArchivesHammer_Data["NeedItemId"], nNums) then
		return
	end
	
	if Task_SetTaskDetailData3(nTaskId, 1) then
		User_EffectAdd(tWeaponArchivesHammer_Effect["SzObj"], tWeaponArchivesHammer_Effect["HandIn"])
		LinkNpcGossipFunc_New(nNpcId, "1-4")
	end
end

-- 首次点击帮我锻造xx次 弹出二次确认对白
function WeaponArchivesHammer_Cost(nNpcId, nTaskId, nTimes)
	local nCostEMoney = tWeaponArchivesHammer_Text["Forging"][nTimes]
	local sOption = tWeaponArchivesHammer_Text[nNpcId]["Option211"]
	local sText = tWeaponArchivesHammer_Text[nNpcId]["Text211"]
	
	tNpcGossip[nNpcId]["Text211"] = string.format(sText, nCostEMoney, nTimes)
	tNpcGossip[nNpcId]["Option211"] = string.format(sOption, nCostEMoney)
	tNpcGossip[nNpcId]["OptionFunc211"] = "WeaponArchivesHammer_CostConfirm</N>"..nNpcId.."</N>".. nTaskId .."</N>"..nTimes
	LinkNpcGossipFunc_New(nNpcId, "2-1")
end

-- 确定花费xx天石
function WeaponArchivesHammer_CostConfirm(nNpcId, nTaskId, nTimes)
	local sEMeonyLog = tWeaponArchivesHammer_Data["EMoneyLog"]
	local nCostEMoney = tWeaponArchivesHammer_Text["Forging"][nTimes]
	-- 玩家身上无任务
	if not Task_ChkTaskDetail(nTaskId) then
		return
	end
	
	-- 任务已完成
	if Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",tWeaponArchivesHammer_TaskDetail["CompleteFlag"]) then
		return
	end
	
	-- 判断锻造次数
	if Task_ChkTaskDetailValue(nTaskId,"2",">=",tWeaponArchivesHammer_TaskDetail["Data2"]) then
		return
	end
	
	-- 判断玩家是否上交过天灵木
	if not Task_ChkTaskDetailValue(nTaskId,"3",">=",tWeaponArchivesHammer_TaskDetail["Data3"]) then
		return
	end
	
	-- 玩家天石不足
	if Get_UserEMoney() < nCostEMoney then
		Sys_MsgBox(tWeaponArchivesHammer_Text["EMoneyLimit"])
		return
	end
	
	-- 扣除玩家天石
	if User_AddEMoney(-nCostEMoney) then
		local nData2 = Get_TaskDetailData2(nTaskId)
		nData2 = nData2 + nTimes
		
		if nData2 < tWeaponArchivesHammer_TaskDetail["Data2"] then
			User_TalkChannel2005(string.format(tWeaponArchivesHammer_Text["ForgingTalk"],nData2,(tWeaponArchivesHammer_TaskDetail["Data2"]-nData2)))
		else
			nData2 = tWeaponArchivesHammer_TaskDetail["Data2"]
		end
		
		Task_SetTaskDetailData2(nTaskId, nData2)
		local nMapId, nPosX, nPosY = NpcPosition_Get(24141)
		Map_Effect(nMapId, nPosX, nPosY, tWeaponArchivesHammer_Effect["Npc"])
		User_EffectAdd(tWeaponArchivesHammer_Effect["SzObj"],tWeaponArchivesHammer_Effect["Forging"..nTimes])
		-- 打log
		Sys_SaveEmoneyBuy(string.format(sEMeonyLog, nCostEMoney, nCostEMoney))
	end
	
	-- 判断锻造次数
	if Task_ChkTaskDetailValue(nTaskId,"2",">=",tWeaponArchivesHammer_TaskDetail["Data2"]) then
		User_EffectAdd(tWeaponArchivesHammer_Effect["SzObj"],tWeaponArchivesHammer_Effect["User"])
		if Task_SetTaskDetailCompleteFlag(nTaskId, tWeaponArchivesHammer_TaskDetail["CompleteFlag"]) and Task_SetStatistic(tWeaponArchivesHammer_Stc["CompleteEvent"],tWeaponArchivesHammer_Stc["CompleteType"],1,1) then
			Task_AddStatistic(197,20,1,1)
			Task_SetStcTimestamp(tWeaponArchivesHammer_Stc["CompleteEvent"],tWeaponArchivesHammer_Stc["CompleteType"],0)
			User_AwardHundredWeapon(tWeaponArchivesHammer_Data["Hammer"])
			Sys_MsgBox(tWeaponArchivesHammer_Text["Complete"], "WeaponArchivesHammer_GoBack</N>23971")
		end
	end
end

function WeaponArchivesHammer_GoBack(nNpcId)
	local nUserId = Get_UserId()
	local nMapId, nPosX, nPosY = NpcPosition_Get(nNpcId)
	User_UserRandBoundTrans(nMapId,nPosX, nPosY,5,5,1,nUserId)
end

-- 点击天灵神炉进行锻造（npc无需对白，接自定义actionid）
function WeaponArchivesHammer_Forging()
	local nNpcId = Get_NpcId()
	local nTaskId = tWeaponArchivesHammer_TaskDetail["TaskId"] 
	-- 玩家身上无任务
	if not Task_ChkTaskDetail(nTaskId) then
		Sys_MsgBox(tWeaponArchivesHammer_Text["NotForging"])
		return
	end
	
	-- 任务已完成
	if Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",tWeaponArchivesHammer_TaskDetail["CompleteFlag"]) then
		Sys_MsgBox(tWeaponArchivesHammer_Text["ForgingOk"])
		return
	end
	
	-- 判断锻造次数
	if Task_ChkTaskDetailValue(nTaskId,"2",">=",tWeaponArchivesHammer_TaskDetail["Data2"]) then
		Sys_MsgBox(tWeaponArchivesHammer_Text["ForgingOk"])
		return
	end
	
	-- 判断玩家是否上交过天灵木
	if not Task_ChkTaskDetailValue(nTaskId,"3",">=",tWeaponArchivesHammer_TaskDetail["Data3"]) then
		Sys_MsgBox(tWeaponArchivesHammer_Text["NotForging"])
		return
	end
	
	local nData2 = Get_TaskDetailData2(nTaskId)
	local nLarge = tWeaponArchivesHammer_Probabilit["Large"]
	local nSmall = tWeaponArchivesHammer_Probabilit["Small"]
	local nTotal = tWeaponArchivesHammer_Probabilit["Total"]
	if Sys_Random(nLarge, nTotal) then -- 大爆
		nData2 = nData2 + tWeaponArchivesHammer_Data["ForgingTimes"][3]
		
		if nData2 < tWeaponArchivesHammer_TaskDetail["Data2"] then
			User_TalkChannel2005(string.format(tWeaponArchivesHammer_Text["Large"],(tWeaponArchivesHammer_TaskDetail["Data2"]-nData2)))
			Sys_MsgBox(string.format(tWeaponArchivesHammer_Text["Large"],(tWeaponArchivesHammer_TaskDetail["Data2"]-nData2)))
			User_EffectAdd(tWeaponArchivesHammer_Effect["SzObj"],tWeaponArchivesHammer_Effect["Forging100"])
		else
			nData2 = tWeaponArchivesHammer_TaskDetail["Data2"]
		end
		
	elseif Sys_Random(nSmall, nTotal - nLarge) then -- 小爆
		nData2 = nData2 + tWeaponArchivesHammer_Data["ForgingTimes"][2]
		
		if nData2 < tWeaponArchivesHammer_TaskDetail["Data2"] then
			User_TalkChannel2005(string.format(tWeaponArchivesHammer_Text["Small"],(tWeaponArchivesHammer_TaskDetail["Data2"]-nData2)))
			Sys_MsgBox(string.format(tWeaponArchivesHammer_Text["Small"],(tWeaponArchivesHammer_TaskDetail["Data2"]-nData2)))
			User_EffectAdd(tWeaponArchivesHammer_Effect["SzObj"],tWeaponArchivesHammer_Effect["Forging50"])
		else
			nData2 = tWeaponArchivesHammer_TaskDetail["Data2"]
		end
		
	else
		nData2 = nData2 + tWeaponArchivesHammer_Data["ForgingTimes"][1]
		
		if nData2 < tWeaponArchivesHammer_TaskDetail["Data2"] then
			if nData2%5 == 0 then
				User_TalkChannel2005(string.format(tWeaponArchivesHammer_Text["ForgingTalk"],nData2,(tWeaponArchivesHammer_TaskDetail["Data2"]-nData2)))
			end
		else
			nData2 = tWeaponArchivesHammer_TaskDetail["Data2"]
		end
		User_EffectAdd(tWeaponArchivesHammer_Effect["SzObj"],tWeaponArchivesHammer_Effect["Forging1"])
	end
	
	-- 锻造次数存入data2
	if not Task_SetTaskDetailData2(nTaskId, nData2) then
		return
	end
	
	-- 判断锻造次数
	if Task_ChkTaskDetailValue(nTaskId,"2",">=",tWeaponArchivesHammer_TaskDetail["Data2"]) then
		User_EffectAdd(tWeaponArchivesHammer_Effect["SzObj"],tWeaponArchivesHammer_Effect["User"])
		if Task_SetTaskDetailCompleteFlag(nTaskId, tWeaponArchivesHammer_TaskDetail["CompleteFlag"]) and Task_SetStatistic(tWeaponArchivesHammer_Stc["CompleteEvent"],tWeaponArchivesHammer_Stc["CompleteType"],1,1) then
			Task_AddStatistic(197,20,1,1)
			Task_SetStcTimestamp(tWeaponArchivesHammer_Stc["CompleteEvent"],tWeaponArchivesHammer_Stc["CompleteType"],0)
			User_AwardHundredWeapon(tWeaponArchivesHammer_Data["Hammer"])
			Sys_MsgBox(tWeaponArchivesHammer_Text["Complete"], "WeaponArchivesHammer_GoBack</N>23971")
		end
	end
	
	-- 播放锻造光效
	local nMapId, nPosX, nPosY = NpcPosition_Get(nNpcId)
	Map_Effect(nMapId, nPosX, nPosY, tWeaponArchivesHammer_Effect["Npc"])
end

function WeaponArchivesHammer_Receive(nNpcId, nTaskId)
	-- 玩家身上无任务
	if not Task_ChkTaskDetail(nTaskId) then
		if not Task_AddTaskDetail(nTaskId) then
			return
		end
	end
	
	if SpecialServer_ChkNoGiftServer() then
		User_UserRandBoundTrans(tWeaponArchivesHammer_Pos["Trans"]["MapId2"],tWeaponArchivesHammer_Pos["Trans"]["PosX"],tWeaponArchivesHammer_Pos["Trans"]["PosY"],5,5,1)
		return
	end
	
	User_UserRandBoundTrans(tWeaponArchivesHammer_Pos["Trans"]["MapId1"],tWeaponArchivesHammer_Pos["Trans"]["PosX"],tWeaponArchivesHammer_Pos["Trans"]["PosY"],5,5,1)
end

function WeaponArchivesHammer_Restart(nTaskId)
	local nItemNums = Get_CountItemType(tWeaponArchivesHammer_Data["NeedItemId"], 0)
	if not Task_SetTaskDetailData1(nTaskId, nItemNums) then
		return
	end
	tWeaponArchivesHammer_Tiems = {}
end

----------------------------------NPC部分---------------------------------------------
tNpcFace[1757] = 66
tNpcGossip[24140]= tNpcGossip[24140] or DefaultNpc:new{}
tNpcGossip[24140]["OptionHidden"] = 1
tNpcGossip[24140]["DialogueText"] = tWeaponArchivesHammer_Text[24140]

-- 闲聊对白
tNpcGossip[24140]["Text1-1"] = {111,112}
tNpcGossip[24140]["tOption1-1"] = {111}
tNpcGossip[24140]["ChkFunc1-1"]= function()
	local nTaskId = tWeaponArchivesHammer_TaskDetail["TaskId"]
	local nFirstTaskId = tWeaponArchivesHammer_TaskDetail["FirstTaskId"]
	local nEvent = tWeaponArchivesHammer_Stc["CompleteEvent"]
	local nType = tWeaponArchivesHammer_Stc["CompleteType"]
	
	tNpcGossip[24140]["Text111"] = tWeaponArchivesHammer_Text[24140]["Text111"]
	tNpcGossip[24140]["Text112"] = tWeaponArchivesHammer_Text[24140]["Text112"]
	tNpcGossip[24140]["Option111"] = tWeaponArchivesHammer_Text[24140]["Option111"]
	tNpcGossip[24140]["OptionFunc111"] = ""
	
	if SpecialServer_ChkNoGiftServer() then
		nFirstTaskId = tWeaponArchivesHammer_TaskDetail["FirstTaskIdNoGift"]
	end
	
	if not Task_ChkTaskDetail(nFirstTaskId) then
		
		return true
	end
	
	-- 玩家身上无任务 不显示
	if Task_ChkStcValue(nEvent, nType, ">=", 1) and Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",tWeaponArchivesHammer_TaskDetail["CompleteFlag"]) then
		tNpcGossip[24140]["Text111"] = tWeaponArchivesHammer_Text[24140]["Text161"]
		tNpcGossip[24140]["Text112"] = tWeaponArchivesHammer_Text[24140]["Text162"]
		tNpcGossip[24140]["Option111"] = tWeaponArchivesHammer_Text[24140]["Option161"]
		tNpcGossip[24140]["OptionFunc111"] = "WeaponArchivesHammer_GoBack</N>23971"
		return true
	end
	
	return false
end

-- 首次对白出神锤介绍
tNpcGossip[24140]["Text1-2"] = {121, 122, 123, 124, 125, 126}
tNpcGossip[24140]["tOption1-2"] = {121}
tNpcGossip[24140]["ChkFunc1-2"]= function()
	local nEvent = tWeaponArchivesHammer_Stc["EventType"]
	local nType = tWeaponArchivesHammer_Stc["DataType"]
	local nFirstTaskId = tWeaponArchivesHammer_TaskDetail["FirstTaskId"]
	
	if SpecialServer_ChkNoGiftServer() then
		nFirstTaskId = tWeaponArchivesHammer_TaskDetail["FirstTaskIdNoGift"]
	end
	
	if Task_ChkStcValue(nEvent, nType, ">=", 1) then
		return false
	end
	
	Task_SetTaskDetailCompleteFlag(nFirstTaskId, 1)
	Task_SetStatistic(nEvent, nType, 1, 1)
	Task_SetStcTimestamp(nEvent, nType, 0)
	return true
end
tNpcGossip[24140]["OptionPoint121"] = "1-3"

-- 可接任务的主对白 或 接	那我如何获得神锤之魂？
tNpcGossip[24140]["Text1-3"] = {131,132,133,134}
tNpcGossip[24140]["tOption1-3"] = {131,132}
tNpcGossip[24140]["ChkFunc1-3"]= function()
	local nTaskId = tWeaponArchivesHammer_TaskDetail["TaskId"]
	
	-- 玩家身上无任务
	if not Task_ChkTaskDetail(nTaskId) then
		return true
	end
	
	-- 采集数与背包物品数量不一致
	if Task_ChkTaskDetailValue(nTaskId,"1",">=",tWeaponArchivesHammer_TaskDetail["Data1"]) then
		if not Item_ChkMulItem(tWeaponArchivesHammer_Data["NeedItemId"], tWeaponArchivesHammer_Data["NeedItemId"], tWeaponArchivesHammer_Data["NeedItemNum"]) then
			return false
		end
		
		return not Task_ChkTaskDetailValue(nTaskId,"3",">=",tWeaponArchivesHammer_TaskDetail["Data3"])
	end
	
	return not Task_ChkTaskDetailValue(nTaskId,"3",">=",tWeaponArchivesHammer_TaskDetail["Data3"])
end
tNpcGossip[24140]["OptionChkFunc131"] = function()
	local nTaskId = tWeaponArchivesHammer_TaskDetail["TaskId"]
	
	-- 玩家身上无任务
	if not Task_ChkTaskDetail(nTaskId) then
		return true
	end
	
	return not Task_ChkTaskDetailValue(nTaskId,"1",">=",tWeaponArchivesHammer_TaskDetail["Data1"])
end
tNpcGossip[24140]["OptionFunc131"] = "WeaponArchivesHammer_Receive</N>24140</N>7010" -- 传送到神龙岛

tNpcGossip[24140]["OptionChkFunc132"] = function()
	local nTaskId = tWeaponArchivesHammer_TaskDetail["TaskId"]
	
	-- 玩家身上无任务
	if not Task_ChkTaskDetail(nTaskId) then
		return false
	end
	
	-- 物品数量不足
	if not Item_ChkMulItem(tWeaponArchivesHammer_Data["NeedItemId"], tWeaponArchivesHammer_Data["NeedItemId"], tWeaponArchivesHammer_Data["NeedItemNum"]) then
		return false
	end
	
	return not Task_ChkTaskDetailValue(nTaskId,"3",">=",tWeaponArchivesHammer_TaskDetail["Data3"])
end
tNpcGossip[24140]["OptionFunc132"] = "WeaponArchivesHammer_HandIn</N>24140</N>7010" -- 上交天灵木


-- 接2	上交100根天灵木
tNpcGossip[24140]["Text1-4"] = {141,142}
tNpcGossip[24140]["tOption1-4"] = {141,142,143,144}
tNpcGossip[24140]["ChkFunc1-4"]= function()
	local nTaskId = tWeaponArchivesHammer_TaskDetail["TaskId"]
	
	-- 玩家身上无任务
	if not Task_ChkTaskDetail(nTaskId) then
		return false
	end
	
	return Task_ChkTaskDetailValue(nTaskId,"3",">=",tWeaponArchivesHammer_TaskDetail["Data3"])
end
tNpcGossip[24140]["OptionFunc141"] = "WeaponArchivesHammer_Cost</N>24140</N>7010</N>10" -- 10表示次数
tNpcGossip[24140]["OptionFunc142"] = "WeaponArchivesHammer_Cost</N>24140</N>7010</N>50"
tNpcGossip[24140]["OptionFunc143"] = "WeaponArchivesHammer_Cost</N>24140</N>7010</N>100"
tNpcGossip[24140]["OptionFunc144"] = "Sys_MsgBox</S>"..tWeaponArchivesHammer_Text["MyselfDo"]

tNpcGossip[24140]["Text1-5"] = {151}
tNpcGossip[24140]["tOption1-5"] = {151,152}
tNpcGossip[24140]["ChkFunc1-5"]= function()
	local nTaskId = tWeaponArchivesHammer_TaskDetail["TaskId"]
	
	-- 玩家身上无任务
	if not Task_ChkTaskDetail(nTaskId) then
		return false
	end
	
	-- 采集数与背包物品数量不一致
	if Task_ChkTaskDetailValue(nTaskId,"1",">=",tWeaponArchivesHammer_TaskDetail["Data1"]) then
		if not Item_ChkMulItem(tWeaponArchivesHammer_Data["NeedItemId"], tWeaponArchivesHammer_Data["NeedItemId"], tWeaponArchivesHammer_Data["NeedItemNum"]) then
			return true
		end
		return false
	end
	
	return false
end
tNpcGossip[24140]["OptionFunc151"] = "WeaponArchivesHammer_Restart</N>7010"


-- 接上	二次确认
tNpcGossip[24140]["Text2-1"] = {211,212}
tNpcGossip[24140]["tOption2-1"] = {211,212}

---------------------------------物品部分---------------------------------------------
--------物品无对白模板
tItem[3312248] = tItem[3312248] or {}
tItem[3312248]["Function"] = function(nItemId,sItemName)
	local nMapId, nPosX, nPosY = NpcPosition_Get(24140)
	Sys_GotoSomeWhere(nPosX, nPosY, nMapId, 24140)
end
