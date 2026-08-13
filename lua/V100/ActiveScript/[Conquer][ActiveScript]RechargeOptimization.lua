------------------------------------------------------------------------------------
--Name：        190820[英文征服][活动脚本]8月首充礼包优化（8.27-长期）
--Creator:      茅志伟
--Created:      2019/08/20
------------------------------------------------------------------------------------

-- 命名前缀 tRechargeOptimization_

-- LogId = 12001575

-- lua.ini = 41460
-- 41460 = V100\ActiveScript\[Conquer][ActiveScript]RechargeOptimization.lua
-- 41460 = V100\活动脚本\[征服][活动脚本]8月首充礼包优化（8.27-长期）.lua
-- EMoneyBuylog = 10000	0730
				-- 10000	0774




local  tRechargeOptimization_Stc = {}
--记录5000赠点礼包开启次数
tRechargeOptimization_Stc[3323149] = {}
tRechargeOptimization_Stc[3323149]["EventType"] = 200
tRechargeOptimization_Stc[3323149]["DataType"] = 72



local  tRechargeOptimization_Log = {}
tRechargeOptimization_Log["DeleteLog"] = "0,0,%d,%d,0,12001575,2,0,0"
tRechargeOptimization_Log["EMonyeLog"] = {}
tRechargeOptimization_Log["EMonyeLog"]["EMonoMony"] = "10000	0774	0	0	%d	"

local tRechargeOptimization_Data = {}
tRechargeOptimization_Data["SpendEMoney"] = {}
tRechargeOptimization_Data["SpendEMoney"][3323147] = 999
tRechargeOptimization_Data["SpendEMoney"][3323148] = 2999

-- tRechargeOptimization_Data["Price"] = {}
-- tRechargeOptimization_Data["Price"][3323151] = 50000000
-- tRechargeOptimization_Data["Price"][3323152] = 200000000

local tRechargeOptimization_Pack = {}
	-- ===成长加速包
	-- ===索引: tRechargeOptimization_Pack[3323147]
	-- ===删除:3323147,1
	-- ===
	tRechargeOptimization_Pack[3323147] = {}
	tRechargeOptimization_Pack[3323147]["LogId"] = 12001575
	tRechargeOptimization_Pack[3323147]["DeleteItem"] = {}
	tRechargeOptimization_Pack[3323147]["DeleteItem"][1] = {}
	tRechargeOptimization_Pack[3323147]["DeleteItem"][1]["Id"] = 3323147 -- 【库】GrowthPack[属性:9]
	tRechargeOptimization_Pack[3323147]["RewardItem"] = {}
	tRechargeOptimization_Pack[3323147]["RewardItem"][1] = {}
	tRechargeOptimization_Pack[3323147]["RewardItem"][1]["Id"] = 3311759 -- RuneCrystal[3311759][属性:8][叠加:10000][金币:0], 【表格】神纹源晶赠*10（赠）
	tRechargeOptimization_Pack[3323147]["RewardItem"][1]["Attr"] = "0 10 3" -- RuneCrystal（赠）*10
	tRechargeOptimization_Pack[3323147]["RewardItem"][2] = {}
	tRechargeOptimization_Pack[3323147]["RewardItem"][2]["Id"] = 730005 -- +5Stone[730005][属性:0][叠加:0][金币:0], 【表格】赤练石+5赠*2（赠）
	tRechargeOptimization_Pack[3323147]["RewardItem"][2]["Attr"] = "0 2 3" -- +5Stone（赠）*2
	tRechargeOptimization_Pack[3323147]["RewardStrengthValue"] = {}
	tRechargeOptimization_Pack[3323147]["RewardStrengthValue"]["Value"] = 30000 -- 气力值, 【需求】30000点气力值赠（赠）
	tRechargeOptimization_Pack[3323147]["RewardItem"][3] = {}
	tRechargeOptimization_Pack[3323147]["RewardItem"][3]["Id"] = 3323151 -- 50000000DonationBadge(B)[3323151][属性:9][叠加:0][金币:0], 【表格】5000W爵位捐献勋章赠（7天时效）（赠）
	tRechargeOptimization_Pack[3323147]["RewardItem"][3]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的50000000DonationBadge(B)*1
	tRechargeOptimization_Pack[3323147]["RewardItem"][4] = {}
	tRechargeOptimization_Pack[3323147]["RewardItem"][4]["Id"] = 3323148 -- LuxuryGrowthPack[3323148][属性:9][叠加:0][金币:0], 【表格】豪华成长加速包赠（赠）
	tRechargeOptimization_Pack[3323147]["RewardItem"][4]["Attr"] = "0 1" -- LuxuryGrowthPack*1
	tRechargeOptimization_Pack[3323147]["RewardEffect"] = {}
	tRechargeOptimization_Pack[3323147]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRechargeOptimization_Pack[3323147]["RewardEffect"]["Effect"] = "angelwing"


	tRechargeOptimization_Pack[3323148] = {}
	-- ===豪华成长加速包
	-- ===索引: tRechargeOptimization_Pack[3323148]
	-- ===删除:3323148,1
	-- ===
	tRechargeOptimization_Pack[3323148]["LogId"] = 12001575
	tRechargeOptimization_Pack[3323148]["DeleteItem"] = {}
	tRechargeOptimization_Pack[3323148]["DeleteItem"][1] = {}
	tRechargeOptimization_Pack[3323148]["DeleteItem"][1]["Id"] = 3323148 -- 【库】LuxuryGrowthPack[属性:9]
	tRechargeOptimization_Pack[3323148]["RewardItem"] = {}
	tRechargeOptimization_Pack[3323148]["RewardItem"][1] = {}
	tRechargeOptimization_Pack[3323148]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】赠万能神纹精粹*1000礼包（赠）
	tRechargeOptimization_Pack[3323148]["RewardItem"][1]["Attr"] = "0 1000 3" -- UniversalRuneEssence（赠）*1000（[错误]物品数量超100个）
	tRechargeOptimization_Pack[3323148]["RewardItem"][2] = {}
	tRechargeOptimization_Pack[3323148]["RewardItem"][2]["Id"] = 730006 -- +6Stone[730006][属性:0][叠加:0][金币:0], 【表格】赤练石+6赠*2（赠）
	tRechargeOptimization_Pack[3323148]["RewardItem"][2]["Attr"] = "0 2 3" -- +6Stone（赠）*2
	tRechargeOptimization_Pack[3323148]["RewardStrengthValue"] = {}
	tRechargeOptimization_Pack[3323148]["RewardStrengthValue"]["Value"] = 50000 -- 气力值, 【需求】50000点气力值赠（赠）
	tRechargeOptimization_Pack[3323148]["RewardItem"][3] = {}
	tRechargeOptimization_Pack[3323148]["RewardItem"][3]["Id"] = 3000430 -- LifeFruitBasket[3000430][属性:9][叠加:5][金币:0], 【表格】王母果篮赠*20（赠）
	tRechargeOptimization_Pack[3323148]["RewardItem"][3]["Attr"] = "0 20" -- LifeFruitBasket*20（[错误]物品数量超10个）
	tRechargeOptimization_Pack[3323148]["RewardItem"][4] = {}
	tRechargeOptimization_Pack[3323148]["RewardItem"][4]["Id"] = 3323152 -- 200000000DonationBadge(B)[3323152][属性:9][叠加:0][金币:0], 【表格】2亿爵位捐献勋章赠（7天时效）（赠）
	tRechargeOptimization_Pack[3323148]["RewardItem"][4]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的200000000DonationBadge(B)*1
	tRechargeOptimization_Pack[3323148]["RewardEffect"] = {}
	tRechargeOptimization_Pack[3323148]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRechargeOptimization_Pack[3323148]["RewardEffect"]["Effect"] = "angelwing"


	tRechargeOptimization_Pack[3323149] = {}
	-- ===5000天石（赠）礼包
	-- ===索引: tRechargeOptimization_Pack[3323149]
	-- ===删除:3323149,1
	-- ===
	tRechargeOptimization_Pack[3323149]["LogId"] = 12001575
	-- tRechargeOptimization_Pack[3323149]["DeleteItem"] = {}
	-- tRechargeOptimization_Pack[3323149]["DeleteItem"][1] = {}
	-- tRechargeOptimization_Pack[3323149]["DeleteItem"][1]["Id"] = 3323149 -- 【库】5000CPs(B)Pack[属性:9]
	tRechargeOptimization_Pack[3323149]["RewardEMoneyMono"] = {}
	tRechargeOptimization_Pack[3323149]["RewardEMoneyMono"]["Value"] = 50 -- 天石（赠）, 【需求】50天石（赠）
	tRechargeOptimization_Pack[3323149]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	0730"
	tRechargeOptimization_Pack[3323149]["RewardEffect"] = {}
	tRechargeOptimization_Pack[3323149]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRechargeOptimization_Pack[3323149]["RewardEffect"]["Effect"] = "angelwing"


	tRechargeOptimization_Pack[3323150] = {}
	-- ===P18Anima抽奖包
	-- ===索引:  tRechargeOptimization_Pack[3323150]
	-- ===删除:3323150,1
	tRechargeOptimization_Pack[3323150]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tRechargeOptimization_Pack[3323150]["DeleteItem"] = {}
	tRechargeOptimization_Pack[3323150]["DeleteItem"][1] = {}
	tRechargeOptimization_Pack[3323150]["DeleteItem"][1]["Id"] = 3323150 -- 【库】P18AnimaRandomPack[属性:9]
	tRechargeOptimization_Pack[3323150]["LogId"] = 12001575
	-- 2张天道酬勤卷（赠） - 100.00%
	tRechargeOptimization_Pack[3323150][1] = {}
	tRechargeOptimization_Pack[3323150][1]["RandomItemChanceType"] = 2
	tRechargeOptimization_Pack[3323150][1]["ItemChance"] = 10000
	tRechargeOptimization_Pack[3323150][1]["RewardItem"] = {}
	tRechargeOptimization_Pack[3323150][1]["RewardItem"][1] = {}
	tRechargeOptimization_Pack[3323150][1]["RewardItem"][1]["Id"] = 3001407 -- EndeavorScroll[3001407][属性:0][叠加:0][金币:0], 【表格】2张天道酬勤卷（赠）
	tRechargeOptimization_Pack[3323150][1]["RewardItem"][1]["Attr"] = "0 2 3" -- EndeavorScroll（赠）*2
	tRechargeOptimization_Pack[3323150][1]["RewardEffect"] = {}
	tRechargeOptimization_Pack[3323150][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRechargeOptimization_Pack[3323150][1]["RewardEffect"]["Effect"] = "angelwing"
	-- P18Anima - 0.00%
	tRechargeOptimization_Pack[3323150][2] = {}
	tRechargeOptimization_Pack[3323150][2]["RandomItemChanceType"] = 2
	tRechargeOptimization_Pack[3323150][2]["ItemChance"] = 0
	tRechargeOptimization_Pack[3323150][2]["RewardItem"] = {}
	tRechargeOptimization_Pack[3323150][2]["RewardItem"][1] = {}
	tRechargeOptimization_Pack[3323150][2]["RewardItem"][1]["Id"] = 4200018 -- P18Anima[4200018][属性:72][叠加:99][金币:0], 【表格】P18Anima
	tRechargeOptimization_Pack[3323150][2]["RewardItem"][1]["Attr"] = "0 1" -- P18Anima*1
	tRechargeOptimization_Pack[3323150][2]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tRechargeOptimization_Pack[3323150][2]["RewardEffect"] = {}
	tRechargeOptimization_Pack[3323150][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRechargeOptimization_Pack[3323150][2]["RewardEffect"]["Effect"] = "angelwing"


	tRechargeOptimization_Pack[3323151] = {}
	-- ===5000万爵位捐献勋章（赠）
	-- ===索引: tRechargeOptimization_Pack[3323151]
	-- ===删除:3323151,1
	-- ===
	tRechargeOptimization_Pack[3323151]["LogId"] = 12001575
	tRechargeOptimization_Pack[3323151]["DeleteItem"] = {}
	tRechargeOptimization_Pack[3323151]["DeleteItem"][1] = {}
	tRechargeOptimization_Pack[3323151]["DeleteItem"][1]["Id"] = 3323151 -- 【库】50000000DonationBadge(B)[属性:9]
	tRechargeOptimization_Pack[3323151]["RewardDonate"] = {}
	tRechargeOptimization_Pack[3323151]["RewardDonate"]["Value"] = 50000000 -- 贡献, 【需求】5000万爵位捐献
	tRechargeOptimization_Pack[3323151]["RewardEffect"] = {}
	tRechargeOptimization_Pack[3323151]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRechargeOptimization_Pack[3323151]["RewardEffect"]["Effect"] = "angelwing"


	tRechargeOptimization_Pack[3323152] = {}
	-- ===2亿爵位捐献勋章（赠）
	-- ===索引: tRechargeOptimization_Pack[3323152]
	-- ===删除:3323152,1
	-- ===
	tRechargeOptimization_Pack[3323152]["LogId"] = 12001575
	tRechargeOptimization_Pack[3323152]["DeleteItem"] = {}
	tRechargeOptimization_Pack[3323152]["DeleteItem"][1] = {}
	tRechargeOptimization_Pack[3323152]["DeleteItem"][1]["Id"] = 3323152 -- 【库】200000000DonationBadge(B)[属性:9]
	tRechargeOptimization_Pack[3323152]["RewardDonate"] = {}
	tRechargeOptimization_Pack[3323152]["RewardDonate"]["Value"] = 200000000 -- 贡献, 【需求】2亿爵位捐献
	tRechargeOptimization_Pack[3323152]["RewardEffect"] = {}
	tRechargeOptimization_Pack[3323152]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRechargeOptimization_Pack[3323152]["RewardEffect"]["Effect"] = "angelwing"




-------------------------------------------------逻辑
-- 成长礼包对白逻辑
function RechargeOptimization_GrowUpPackText(nItemId)
	if not Item_ChkMulItem(nItemId,nItemId,1) then 
		return
	end 
	local nEMoney = tRechargeOptimization_Data["SpendEMoney"][nItemId]
	local nUserEMoney = Get_UserEMoney()
	if nEMoney > nUserEMoney then  --天石不足
		Sys_MsgBox(tRechargeOptimization_Text["Sys_MsgBox"]["EMoney"])
		return
	end 
	LinkItemGossipFunc_New(nItemId,"2-1")
end 
	
-- 成长礼包使用逻辑
function RechargeOptimization_GrowUpPack(nItemId)
	if not Item_ChkMulItem(nItemId,nItemId,1) then 
		return
	end 
	local nEMoney = tRechargeOptimization_Data["SpendEMoney"][nItemId]
	local nUserEMoney = Get_UserEMoney()
	if nEMoney > nUserEMoney then  --天石不足
		Sys_MsgBox(tRechargeOptimization_Text["Sys_MsgBox"]["EMoney"])
		return
	else
		local nSpace = RewardTemplate_GetRewardSpace(tRechargeOptimization_Pack[nItemId])
		if not User_CheckLeftSpace(nSpace) then  --背包空间
			Sys_MsgBox(tRechargeOptimization_Text["Sys_MsgBox"]["NoSpace"])
			return
		else
			if User_AddEMoney(-nEMoney) then 
				RewardTemplate_UseItemAndMsg(tRechargeOptimization_Pack[nItemId])
				local tTextEMLog = string.format(tRechargeOptimization_Log["EMonyeLog"]["EMonoMony"],nEMoney)
				Sys_SaveEmoneyBuy(tTextEMLog)
			end 
		end 
		
	end 
end 

--赠点签到礼包
function RechargeOptimization_EMoneyPack(nItemId)
	-- User_TalkChannel2005("nItemId = " ..nItemId)
	local nEventType1 = tRechargeOptimization_Stc[nItemId]["EventType"]
	local nDataType1 = tRechargeOptimization_Stc[nItemId]["DataType"]
	local nData1 = Get_UserStatisticValue(nEventType1,nDataType1)
	if nData1 >= 100 then 
		return
	end 
	local nRewardEMoneyM = 50
	if Get_UserMonoEMoney() + nRewardEMoneyM > G_User_MaxEmoneyMono then  --赠点上限
		User_TalkChannel2005(tRechargeOptimization_Text["Sys_MsgBox"]["NoMonomoney"])
		return
	end 
	if not Task_StcInterval(nEventType1,nDataType1,1,4) then  --时间戳是否隔天
		Sys_MsgBox(tRechargeOptimization_Text["Sys_MsgBox"]["Once"])
		return 
	else
		--记掩码，打时间戳
		if nData1 >= 99 then 
			if Item_DelMulItem(nItemId,nItemId,1) then 
				local tTextLog = string.format(tRechargeOptimization_Log["DeleteLog"],nItemId,1)
				Sys_SaveActionFestivalLog(tTextLog)  --删除log
			end 
		end 
		Task_AddStatistic(nEventType1,nDataType1,1,1)
		Task_SetStcTimestamp(nEventType1,nDataType1,0)
		RewardTemplate_UseItemAndMsg(tRechargeOptimization_Pack[nItemId])
	end
end 



-------------------------------------------------Npc对白
-- 成长加速包
tItemFace[3323147] = 1403
tItem[3323147] = tItem[3323147] or {}
tItem[3323147]["DialogueText"] = tRechargeOptimization_Text[3323147]
tItem[3323147]["Text1-1"] = {111,112}
tItem[3323147]["tOption1-1"] = {111,112}
tItem[3323147]["OptionFunc111"] = "RechargeOptimization_GrowUpPackText</N>3323147"
tItem[3323147]["Text2-1"] = {211,212}
tItem[3323147]["tOption2-1"] = {211,212}
tItem[3323147]["OptionFunc211"] = "RechargeOptimization_GrowUpPack</N>3323147"

-- 成长加速豪华包
tItemFace[3323148] = 2289
tItem[3323148] = tItem[3323148] or {}
tItem[3323148]["DialogueText"] = tRechargeOptimization_Text[3323148]
tItem[3323148]["Text1-1"] = {111,112}
tItem[3323148]["tOption1-1"] = {111,112}
tItem[3323148]["OptionFunc111"] = "RechargeOptimization_GrowUpPackText</N>3323148"
tItem[3323148]["Text2-1"] = {211,212}
tItem[3323148]["tOption2-1"] = {211,212}
tItem[3323148]["OptionFunc211"] = "RechargeOptimization_GrowUpPack</N>3323148"


-------------------------------------------------------------------------物品使用
tItem[3323149] = tItem[3323149] or {}
tItem[3323149]["Function"] = function(nItemId,sItemName)
	RechargeOptimization_EMoneyPack(nItemId)
end

tItem[3323150] = tItem[3323150] or {}
tItem[3323150]["Function"] = function(nItemId,sItemName)
	RewardTemplate_RandomReward(tRechargeOptimization_Pack,nItemId)
end

tItem[3323151] = tItem[3323151] or {}
tItem[3323151]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tRechargeOptimization_Pack[nItemId])
end
tItem[3323152] = tItem[3323151] or {}


