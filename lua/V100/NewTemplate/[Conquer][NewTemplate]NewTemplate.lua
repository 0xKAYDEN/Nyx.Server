----------------------------------------------------------------------------
--Name:		[征服][物品模板]新模板外部调用部分.lua
--Purpose:	新模板外部调用部分
--Creator: 	郑鋆
--Created:	2018/03/09
----------------------------------------------------------------------------

-- 命名前缀
-- NewTemplate


-- 消耗部分
local tNewTemplate_Consume = {}
	-- 消耗天石
	tNewTemplate_Consume["EMoney"] = {}
	tNewTemplate_Consume["EMoney"]["Judge"] = NewTemplateFunc_JudgeConsumeEMoney
	tNewTemplate_Consume["EMoney"]["Consume"] = NewTemplateFunc_ConsumeEMoney
	-- 消耗赠品天石
	tNewTemplate_Consume["EMoneyMono"] = {}
	tNewTemplate_Consume["EMoneyMono"]["Judge"] = NewTemplateFunc_JudgeConsumeEMoneyMono
	tNewTemplate_Consume["EMoneyMono"]["Consume"] = NewTemplateFunc_ConsumeEMoneyMono
	-- 消耗银两
	tNewTemplate_Consume["Money"] = {}
	tNewTemplate_Consume["Money"]["Judge"] = NewTemplateFunc_JudgeConsumeMoney
	tNewTemplate_Consume["Money"]["Consume"] = NewTemplateFunc_ConsumeMoney
	-- 消耗气力
	tNewTemplate_Consume["StrengthValue"] = {}
	tNewTemplate_Consume["StrengthValue"]["Judge"] = NewTemplateFunc_JudgeConsumeStrengthValue
	tNewTemplate_Consume["StrengthValue"]["Consume"] = NewTemplateFunc_ConsumeStrengthValue
	-- 消耗修行值
	tNewTemplate_Consume["Cultivation"] = {}
	tNewTemplate_Consume["Cultivation"]["Judge"] = NewTemplateFunc_JudgeConsumeCultivation
	tNewTemplate_Consume["Cultivation"]["Consume"] = NewTemplateFunc_ConsumeCultivation
	-- 消耗骑马积分
	tNewTemplate_Consume["RidingPoint"] = {}
	tNewTemplate_Consume["RidingPoint"]["Judge"] = NewTemplateFunc_JudgeConsumeRidingPoint
	tNewTemplate_Consume["RidingPoint"]["Consume"] = NewTemplateFunc_ConsumeRidingPoint
	-- 消耗修为值
	tNewTemplate_Consume["RepairValue"] = {}
	tNewTemplate_Consume["RepairValue"]["Judge"] = NewTemplateFunc_JudgeConsumeRepairValue
	tNewTemplate_Consume["RepairValue"]["Consume"] = NewTemplateFunc_ConsumeRepairValue
	-- 消耗黄金联赛积分
	tNewTemplate_Consume["GoldenLeague"] = {}
	tNewTemplate_Consume["GoldenLeague"]["Judge"] = NewTemplateFunc_JudgeConsumeGoldenLeague
	tNewTemplate_Consume["GoldenLeague"]["Consume"] = NewTemplateFunc_ConsumeGoldenLeague
	-- 消耗物品
	tNewTemplate_Consume["DeleteItem"] = {}
	tNewTemplate_Consume["DeleteItem"]["Judge"] = NewTemplateFunc_JudgeConsumeItem
	tNewTemplate_Consume["DeleteItem"]["Consume"] = NewTemplateFunc_ConsumeItem
	-- 消耗stc
	
-- 上限部分	
local tNewTemplate_Limit = {}	
	tNewTemplate_Limit["RewardZhenQi"] = NewTemplateFunc_ZhenQiLimit
	tNewTemplate_Limit["RewardMoney"] = NewTemplateFunc_MoneyLimit
	tNewTemplate_Limit["RewardEMoney"] = NewTemplateFunc_EMoneyLimit
	tNewTemplate_Limit["RewardEMoneyMono"] = NewTemplateFunc_EMoneyMonoLimit
	tNewTemplate_Limit["RewardFreePractNum"] = NewTemplateFunc_FreePractNumLimit
	tNewTemplate_Limit["RewardRepairValue"] = NewTemplateFunc_RepairValueLimit
	tNewTemplate_Limit["RewardStrengthAttr"] = NewTemplateFunc_AttrLimit
	tNewTemplate_Limit["RewardSpeedAttr"] = NewTemplateFunc_AttrLimit
	tNewTemplate_Limit["RewardHealthAttr"] = NewTemplateFunc_AttrLimit
	tNewTemplate_Limit["RewardSoulAttr"] = NewTemplateFunc_AttrLimit
	tNewTemplate_Limit["RewardAttrPoint"] = NewTemplateFunc_AttrLimit

-- 检测标志
local tNewTemplate_JudgeSign = {}
	
-----------------------------------------------------------------逻辑部分-------------------------------------------------------------------------------------
-- 消耗的判断
function NewTemplate_JudgeConsume(tConsume,nNowUserId)
	if tConsume == nil or type(tConsume) ~= "table" or tConsume["Consume"] == nil or type(tConsume["Consume"]) ~= "table" then
		return false
	end
	
	local nUserId = nNowUserId or Get_UserId()
	
	for i,v in pairs(tConsume["Consume"]) do
		local func = tNewTemplate_Consume[i]["Judge"]

		if func == nil or type(func) ~= "function" or not func(v,nUserId) then
			NewTemplateFunc_Msg(tConsume,"Consume",i,nUserId)
			return false
		end
	end
	
	if tNewTemplate_JudgeSign[nUserId] == nil then
		tNewTemplate_JudgeSign[nUserId] = {}
	end
	
	tNewTemplate_JudgeSign[nUserId]["Consume"] = true
	return true
end

-- 消耗操作
function NewTemplate_Consume(tConsume,nNowUserId)
	if tConsume == nil or type(tConsume) ~= "table" or tConsume["Consume"] == nil or type(tConsume["Consume"]) ~= "table" then
		return false
	end
	
	local nUserId = nNowUserId or Get_UserId()
	
	-- 判断是否检测过
	if tNewTemplate_JudgeSign[nUserId] == nil or not tNewTemplate_JudgeSign[nUserId]["Consume"] then
		return false
	end
	
	for i,v in pairs(tConsume["Consume"]) do
		local func = tNewTemplate_Consume[i]["Consume"]

		if func == nil or type(func) ~= "function" or not func(v,nUserId) then
			NewTemplateFunc_Msg(tConsume,"Consume",i,nUserId)
			return false
		end
	end
	
	tNewTemplate_JudgeSign[nUserId]["Consume"] = nil
	return true
end

-- 随机奖励的上限判断
function NewTemplate_RandomUpperLimit(tRandom,Index,nTime,nNowUserId)
	local tAwardSource = {}
	local tAbsoluteSource = {}
	local nUserId = nNowUserId or Get_UserId()

	for i,v in pairs(tRandom[Index]) do
		if type(v) == "table" then
			local nType = v.RandomItemChanceType
			local tTable = NewTemplate_GetMaxRandom(v)
			
			if nType == 2 then
				tAwardSource = NewTemplateFunc_GetAwardTable(tTable,tAwardSource)
			else
				tAbsoluteSource = NewTemplateFunc_GetAbsoluteTable(tTable,tAbsoluteSource)
			end
		end
	end
	
	local tTotal = NewTemplateFunc_GetAbsoluteTable(tAwardSource,tAbsoluteSource)

	-- 上限判断
	for i,v in pairs(tTotal) do
		local func = tNewTemplate_Limit[i]
		
		if type(func) == "function" then
			local bFlag = func(v,nTime,nUserId)
			
			if not bFlag then
				NewTemplateFunc_Msg(tRandom[Index],"Limit",i,nUserId)
				return false
			elseif bFlag == 1 then
				return false
			end
		end
	end
	
	-- 背包空间的判断
	-- local bFlag,nSpace = RewardTemplate_ChkRandomSpace(tRandom,Index,nUserId)
	local bFlag,nSpace = NewTemplateFunc_ChkRandomSpace(tRandom,Index,nTime,nUserId)
	
	if not bFlag then
		NewTemplateFunc_NoSpace(tRandom[Index],nSpace,nUserId)
		return false
	end
	
	return true
end

function NewTemplate_GetMaxRandom(tReward)
	local tTable = {}
	
	for i,v in pairs(tReward) do
		if tNewTemplate_Limit[i] ~= nil and type(tNewTemplate_Limit[i]) == "function" then
			tTable[i] = v
		end
	end

	return tTable
end
