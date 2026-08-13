-------------------------------------------------------------------------------------------------------------------
--Name:		[征服][公用函数]加载函数.lua
--Purpose:	加载函数
--Creator: 	郑鋆
--Created:	2015/11/03
-------------------------------------------------------------------------------------------------------------------

-- 命名前缀
-- LoadFunc_

local tLoadFunc_Field = {}
	-- 任务函数_检测任务活动时间
	tLoadFunc_Field["ActiveTime"] = {}
	tLoadFunc_Field["ActiveTime"]["IsReceived"] = 100
	tLoadFunc_Field["ActiveTime"]["IsHandOver"] = 100
	tLoadFunc_Field["ActiveTime"]["MonsterTask"] = 100
	
	-- 任务函数_检测等级是否符合
	tLoadFunc_Field["ActiveTimeType"] = {}
	tLoadFunc_Field["ActiveTimeType"]["IsReceived"] = 100
	tLoadFunc_Field["ActiveTimeType"]["IsHandOver"] = 100
	tLoadFunc_Field["ActiveTimeType"]["MonsterTask"] = 100
	
	tLoadFunc_Field["RevMinLevel"] = {}
	tLoadFunc_Field["RevMinLevel"]["IsReceived"] = 200
	tLoadFunc_Field["RevMinLevel"]["IsHandOver"] = 200
	tLoadFunc_Field["RevMinLevel"]["MonsterTask"] = 200

	tLoadFunc_Field["RevMinMetempsychosis"] = {}
	tLoadFunc_Field["RevMinMetempsychosis"]["IsReceived"] = 200
	tLoadFunc_Field["RevMinMetempsychosis"]["IsHandOver"] = 200
	tLoadFunc_Field["RevMinMetempsychosis"]["MonsterTask"] = 200

	tLoadFunc_Field["RevMaxLevel"] = {}
	tLoadFunc_Field["RevMaxLevel"]["IsReceived"] = 200
	tLoadFunc_Field["RevMaxLevel"]["IsHandOver"] = 200
	tLoadFunc_Field["RevMaxLevel"]["MonsterTask"] = 200

	tLoadFunc_Field["RevMaxMetempsychosis"] = {}
	tLoadFunc_Field["RevMaxMetempsychosis"]["IsReceived"] = 200
	tLoadFunc_Field["RevMaxMetempsychosis"]["IsHandOver"] = 200
	tLoadFunc_Field["RevMaxMetempsychosis"]["MonsterTask"] = 200
	
	-- 任务需求性别判断
	tLoadFunc_Field["RevSex"] = {}
	tLoadFunc_Field["RevSex"]["IsReceived"] = 300
	tLoadFunc_Field["RevSex"]["IsHandOver"] = 300
	
	-- taskDetail任务掩码检测
	tLoadFunc_Field["TaskId"] = {}
	tLoadFunc_Field["TaskId"]["IsReceived"] = 400
	tLoadFunc_Field["TaskId"]["MonsterTask"] = 300
	tLoadFunc_Field["TaskId"]["AcceptTask"] = 100
	tLoadFunc_Field["TaskId"]["IsHandOver"] = 1200
	tLoadFunc_Field["TaskId"]["HandOverTask"] = 200
	
	-- stc任务掩码检测
	tLoadFunc_Field["RevEventType"] = {}
	tLoadFunc_Field["RevEventType"]["IsReceived"] = 500
	tLoadFunc_Field["RevEventType"]["AcceptTask"] = 200
	tLoadFunc_Field["RevEventType"]["MonsterTask"] = 400

	tLoadFunc_Field["RevDataType"] = {}
	tLoadFunc_Field["RevDataType"]["IsReceived"] = 500
	tLoadFunc_Field["RevDataType"]["AcceptTask"] = 200
	tLoadFunc_Field["RevDataType"]["MonsterTask"] = 400

	tLoadFunc_Field["RevData"] = {}
	tLoadFunc_Field["RevData"]["IsReceived"] = 500
	tLoadFunc_Field["RevData"]["AcceptTask"] = 200
	tLoadFunc_Field["RevData"]["MonsterTask"] = 400
	
	-- 检测背包空间
	tLoadFunc_Field["RevSpace"] = {}
	tLoadFunc_Field["RevSpace"]["IsReceived"] = 600
	
	-- 前置任务检测
	tLoadFunc_Field["FrontTask"] = {}
	tLoadFunc_Field["FrontTask"]["IsReceived"] = 700
	
	-- 前置Stc检测
	tLoadFunc_Field["FrontEventType"] = {}
	tLoadFunc_Field["FrontEventType"]["IsReceived"] = 800
	
	tLoadFunc_Field["FrontDataType"] = {}
	tLoadFunc_Field["FrontDataType"]["IsReceived"] = 800
	
	tLoadFunc_Field["FrontData"] = {}
	tLoadFunc_Field["FrontData"]["IsReceived"] = 800
	
	-- 地点检测
	tLoadFunc_Field["RevMap"] = {}
	tLoadFunc_Field["RevMap"]["IsReceived"] = 900
	
	-- 判断职业是否符合任务条件
	tLoadFunc_Field["RevMinPro"] = {}
	tLoadFunc_Field["RevMinPro"]["IsReceived"] = 1000
	
	tLoadFunc_Field["RevMaxPro"] = {}
	tLoadFunc_Field["RevMaxPro"]["IsReceived"] = 1000
	
	-- 判断帮派是否符合任务条件
	tLoadFunc_Field["RevGang"] = {}
	tLoadFunc_Field["RevGang"]["IsReceived"] = 1100
	
	-- 判断帮派职位是否符合任务条件
	tLoadFunc_Field["RevGangRank"] = {}
	tLoadFunc_Field["RevGangRank"]["IsReceived"] = 1200
	
	-- 判断是否持有接任务所必须的物品
	tLoadFunc_Field["RevItem"] = {}
	tLoadFunc_Field["RevItem"]["IsReceived"] = 1300
	
	-- 判断是否持有接任务所需要的足够的游戏币
	tLoadFunc_Field["RevMoney"] = {}
	tLoadFunc_Field["RevMoney"]["IsReceived"] = 1400
	
	-- 判断是否持有接任务所需要的足够的天石
	tLoadFunc_Field["RevEMoney"] = {}
	tLoadFunc_Field["RevEMoney"]["IsReceived"] = 1500
	
	-- 判断是否持有接任务所需要的足够的赠品天石
	tLoadFunc_Field["RevMonoEMoney"] = {}
	tLoadFunc_Field["RevMonoEMoney"]["IsReceived"] = 1600
	
	-- 判断是否持有接任务所需要的VIP等级
	tLoadFunc_Field["RevVip"] = {}
	tLoadFunc_Field["RevVip"]["IsReceived"] = 1700
	
	-- 判断是否变身状态下
	tLoadFunc_Field["RevTransform"] = {}
	tLoadFunc_Field["RevTransform"]["IsReceived"] = 1800
	
	-- 给任务物品
	tLoadFunc_Field["GetItemId1"] = {}
	tLoadFunc_Field["GetItemId1"]["AcceptTask"] = 300
	
	-- 给光效
	tLoadFunc_Field["RevEffect"] = {}
	tLoadFunc_Field["RevEffect"]["AcceptTask"] = 400
	
	-- 给log
	tLoadFunc_Field["RevLog"] = {}
	tLoadFunc_Field["RevLog"]["AcceptTask"] = 500
	
	-- 自动寻路
	tLoadFunc_Field["RevPosX"] = {}
	tLoadFunc_Field["RevPosX"]["AcceptTask"] = 600
	
	tLoadFunc_Field["RevPosY"] = {}
	tLoadFunc_Field["RevPosY"]["AcceptTask"] = 600
	
	tLoadFunc_Field["RevMapId"] = {}
	tLoadFunc_Field["RevMapId"]["AcceptTask"] = 600
	
	-- 交任务需求物品判断
	tLoadFunc_Field["ReqItemId1"] = {}
	tLoadFunc_Field["ReqItemId1"]["IsHandOver"] = 400
	tLoadFunc_Field["ReqItemId1"]["HandOverTask"] = 100
	
	-- 交任务需求怪物数量检测
	tLoadFunc_Field["ReqMonsterCount1"] = {}
	tLoadFunc_Field["ReqMonsterCount1"]["IsHandOver"] = 500
	tLoadFunc_Field["ReqMonsterCount1"]["MonsterTask"] = 700
	
	-- 交任务需求金币上限
	tLoadFunc_Field["RewMoney"] = {}
	tLoadFunc_Field["RewMoney"]["IsHandOver"] = 600
	tLoadFunc_Field["RewMoney"]["HandOverTask"] = 600
	
	-- 交任务需求天石上限
	tLoadFunc_Field["RewEMoney"] = {}
	tLoadFunc_Field["RewEMoney"]["IsHandOver"] = 700
	tLoadFunc_Field["RewEMoney"]["HandOverTask"] = 700
	
	-- 交任务需求赠品天石上限
	tLoadFunc_Field["RewMonoEMoney"] = {}
	tLoadFunc_Field["RewMonoEMoney"]["IsHandOver"] = 800
	tLoadFunc_Field["RewMonoEMoney"]["HandOverTask"] = 800
	
	-- 交任务检测背包空间
	tLoadFunc_Field["RewSpace"] = {}
	tLoadFunc_Field["RewSpace"]["IsHandOver"] = 900
	
	-- 交任务检测STC掩码
	tLoadFunc_Field["ReqEventType1"] = {}
	tLoadFunc_Field["ReqEventType1"]["IsHandOver"] = 1000
	tLoadFunc_Field["ReqEventType1"]["MonsterTask"] = 700

	tLoadFunc_Field["ReqDataType1"] = {}
	tLoadFunc_Field["ReqDataType1"]["IsHandOver"] = 1000
	tLoadFunc_Field["ReqDataType1"]["MonsterTask"] = 700
	
	tLoadFunc_Field["ReqData1"] = {}
	tLoadFunc_Field["ReqData1"]["IsHandOver"] = 1000
	tLoadFunc_Field["ReqData1"]["MonsterTask"] = 700
	
	-- 交任务taskDetail的Data位
	tLoadFunc_Field["Data1"] = {}
	tLoadFunc_Field["Data1"]["IsHandOver"] = 1100

	-- STC掩码设完成
	tLoadFunc_Field["RewEventType"] = {}
	tLoadFunc_Field["RewEventType"]["HandOverTask"] = 300
	
	tLoadFunc_Field["RewDataType"] = {}
	tLoadFunc_Field["RewDataType"]["HandOverTask"] = 300
	
	tLoadFunc_Field["RewData"] = {}
	tLoadFunc_Field["RewData"]["HandOverTask"] = 300
	
	-- 给经验点奖励
	tLoadFunc_Field["RewExp"] = {}
	tLoadFunc_Field["RewExp"]["HandOverTask"] = 400
	
	-- 给经验时间奖励
	tLoadFunc_Field["RewExpTime"] = {}
	tLoadFunc_Field["RewExpTime"]["HandOverTask"] = 500

	-- 播光效
	tLoadFunc_Field["RewardEffect"] = {}
	tLoadFunc_Field["RewardEffect"]["HandOverTask"] = 900
	
	-- 给修行值
	tLoadFunc_Field["RewCultivation"] = {}
	tLoadFunc_Field["RewCultivation"]["HandOverTask"] = 1000
	
	-- 给修行值
	tLoadFunc_Field["RewStrengthValue"] = {}
	tLoadFunc_Field["RewStrengthValue"]["HandOverTask"] = 1100
	
	-- 给物品
	tLoadFunc_Field["RewItemId1"] = {}
	tLoadFunc_Field["RewItemId1"]["HandOverTask"] = 1200
	
	-- 给职业装备
	tLoadFunc_Field["RewardProItem"] = {}
	tLoadFunc_Field["RewardProItem"]["HandOverTask"] = 1300
	
	-- 给log
	tLoadFunc_Field["RewLog"] = {}
	tLoadFunc_Field["RewLog"]["HandOverTask"] = 1400
	
	tLoadFunc_Field["RewardZhenQi"] = {}
	tLoadFunc_Field["RewardZhenQi"]["HandOverTask"] = 1500
	-- 
	tLoadFunc_Field["RewardRandom"] = {}
	tLoadFunc_Field["RewardRandom"]["HandOverTask"] = 1600

	-- 怪物掉落需要检测背包空间
	tLoadFunc_Field["MustSpace"] = {}
	tLoadFunc_Field["MustSpace"]["MonsterTask"] = 500
	
	-- 杀怪是否需要携带任务物品
	tLoadFunc_Field["NeedItemId1"] = {}
	tLoadFunc_Field["NeedItemId1"]["MonsterTask"] = 600
	
	-- 杀怪必掉任务物品
	tLoadFunc_Field["MustFallItemId1"] = {}
	tLoadFunc_Field["MustFallItemId1"]["MonsterTask"] = 800
	
	-- 满足杀怪数量后才掉落任务物品
	tLoadFunc_Field["Demand1"] = {}
	tLoadFunc_Field["Demand1"]["MonsterTask"] = 900
	
	-- 有概率掉落任务物品
	tLoadFunc_Field["ProbabilityDropItem1"] = {}
	tLoadFunc_Field["ProbabilityDropItem1"]["MonsterTask"] = 1100
	
	-- 杀怪是否需要加光效
	tLoadFunc_Field["NeedEffect1"] = {}
	tLoadFunc_Field["NeedEffect1"]["MonsterTask"] = 1200
	-- 接受任务时创建副本
	-- tLoadFunc_Field["Instance"] = {}
	-- tLoadFunc_Field["Instance"]["AcceptTask"] = 700

local tLoadFunc_Condit = {"IsReceived","AcceptTask","IsHandOver","HandOverTask","MonsterTask"}
	
-- 加载的主函数
function LoadFunc_Main()
	for i,v in pairs(tTaskTemplate) do
		-- 接任务NPC加入相应数据
		local nBeginNpcId = v["BeginNpcId"]
		if nBeginNpcId ~= nil then
			tTaskAcceptNpc[nBeginNpcId] = tTaskAcceptNpc[nBeginNpcId] or {}
			table.insert(tTaskAcceptNpc[nBeginNpcId],i)
		end
		
		-- 交任务NPC加入相应数据
		local nEndNpcId = v["EndNpcId"]
		if nEndNpcId ~= nil then
			tTaskHandOverNpc[nEndNpcId] = tTaskHandOverNpc[nEndNpcId] or {}
			table.insert(tTaskHandOverNpc[nEndNpcId],i)
		end
		
		-- 怪物关联表
		for nIndex = 1,6 do
			local nMonsterId = v["ReqMonsterId" .. nIndex]
			
			if nMonsterId ~= nil and type(nMonsterId) == "number" then
				tTaskMonster[nMonsterId] = tTaskMonster[nMonsterId] or {}
				table.insert(tTaskMonster[nMonsterId],i)
			elseif nMonsterId ~= nil and type(nMonsterId) == "table" then
				for a,b in pairs(nMonsterId) do
					tTaskMonster[b] = tTaskMonster[b] or {}
					table.insert(tTaskMonster[b],i)
				end
			else
				break
			end
		end
		
		-- 条件判断表
		for a,b in pairs (tLoadFunc_Condit) do
			v[b] = {}
		end

		-- 自动设置接任务所需的背包空间
		LoadFunc_SetRevSpace(v)
		-- 自动设置交任务所需的背包空间
		LoadFunc_SetRewSpace(v)
		
		-- 加载对应的判断条件
		for a,b in pairs(tLoadFunc_Field) do
			if v[a] ~= nil then
				for m,n in pairs(b) do
					table.insert(v[m],n)
				end
			end
		end

		for a,b in pairs (tLoadFunc_Condit) do
			v[b] = CommonFunc_RemoveDplicate(v[b])
			table.sort(v[b])
		end
	end
end

-- 自动设置接任务所需的背包空间
function LoadFunc_SetRevSpace(v)
	if v["RevSpace"] ~= nil then
		return
	end
	
	local nRevSpace = 0
	
	for i = 1,6 do
		if v["GetItemId" .. i] ~= nil then
			local sAttr = v["GetItemAttr" .. i]
			local nItemId = v["GetItemId" .. i]
			
			if sAttr == nil then
				nRevSpace = nRevSpace + 1
			else
				local nRewardSpace = LoadFunc_GetItemSpace(nItemId,sAttr)
				nRevSpace = nRevSpace + math.ceil(nRewardSpace)
			end
		else
			break
		end
	end
	
	if nRevSpace > 0 then
		v["RevSpace"] = nRevSpace
	end
end

-- 自动设置交任务所需的背包空间
function LoadFunc_SetRewSpace(v)
	if v["RewSpace"] ~= nil then
		return
	end
	
	local nRewSpace = 0
	
	-- 获得的奖励需要的空间
	for i = 1,6 do
		if v["RewItemId" .. i] ~= nil then
			local sAttr = v["RewItemAttr" .. i]
			local nItemId = v["RewItemId" .. i]
			local nRewardSpace = LoadFunc_GetItemSpace(nItemId,sAttr)
			nRewSpace = nRewSpace + math.ceil(nRewardSpace)
		else
			break
		end
	end
	
	-- 获得职业装备需要的空间
	if v["RewardProItem"] ~= nil and type(v["RewardProItem"]) == "table" then
		local nProSpace = 0
		
		for a,b in pairs (v["RewardProItem"]) do
			local nNowSpace = 0
			
			for m,n in pairs(b["ProItem"]) do
				local nItemId = n["Id"]
				local sAttr = n["Attr"]
				local nRewardSpace = LoadFunc_GetItemSpace(nItemId,sAttr)
				nNowSpace = nNowSpace + math.ceil(nRewardSpace)
			end
			
			if nNowSpace > nProSpace then
				nProSpace = nNowSpace
			end
		end
		
		nRewSpace = nRewSpace + nProSpace
	end
	
	-- 删除任务物品需要的空间
	for i = 1,6 do
		if v["ReqItemId" .. i] ~= nil then
			local nReqCount = v["ReqItemCount" .. i] or 1
			local nItemId = v["ReqItemId" .. i]
			local nLimit = Get_ItemtypeAccumulateLimit(nItemId)
			
			nRewSpace = nRewSpace + (-1*math.floor(nReqCount/nLimit))
		else
			break
		end
	end

	if nRewSpace > 0 then
		v["RewSpace"] = nRewSpace
	end
end

function LoadFunc_GetItemSpace(nItemId,sItemAttr)
	if sItemAttr == nil then
		return 1
	end
	
	local nLimit = Get_ItemtypeAccumulateLimit(nItemId)
	local nRewardNum = Sys_Split(sItemAttr," ")
	
	if nLimit == 0 then
		nLimit = 1
	end
				
	return nRewardNum[2]/nLimit		
end

tServerStart["tFunction"] = tServerStart["tFunction"] or {}
table.insert(tServerStart["tFunction"],LoadFunc_Main)