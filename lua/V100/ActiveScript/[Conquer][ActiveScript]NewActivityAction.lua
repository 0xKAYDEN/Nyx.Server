------------------------------------------------------------------------------------
--Name：            190626[简体征服][活动脚本]烦请安排制作新增活动发奖ID
--Creator:      江宇君
--Created:     2019-06-26
------------------------------------------------------------------------------------
--任务需求：
-- 命名前缀	NewActivityAction_

-- 掩码使用：
	-- stc(199,08)	0~10 表示 璀璨星陨石特惠包 的使用次数
	-- stc(199,09)	0~10 表示 晶莹星陨石特惠包 的使用次数
	-- stc(199,10)	0~10 表示 +6赤炼石特惠包 的使用次数
	-- stc(199,11)	0~10 表示 +8赤炼石特惠包 的使用次数

-- logid: 12001479

-- 3322182的EMoneyLog 10000,0539
-- 3322183的EMoneyLog 10000,0540
-- 3322184的EMoneyLog 10000,0541
-- 3322185的EMoneyLog 10000,0542
------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
-- 删除物品的log
local tNewActivityAction_DeleteItemLog = "0,0,%d,%d,12001479,2,0,0"

local tNewActivityAction_Reward = {}
	tNewActivityAction_Reward[3322171] = {}
	-- ===3322171,'勇霸天下·无双包'
	-- ===索引: tNewActivityAction_Reward[3322171][1]
	-- ===删除: 3322171,1
	tNewActivityAction_Reward[3322171][1] = {}
	tNewActivityAction_Reward[3322171][1]["LogId"] = 12001479
	tNewActivityAction_Reward[3322171][1]["DeleteItem"] = {}
	tNewActivityAction_Reward[3322171][1]["DeleteItem"][1] = {}
	tNewActivityAction_Reward[3322171][1]["DeleteItem"][1]["Id"] = 3322171 -- 【库】勇霸天下·无双包[属性:9]
	tNewActivityAction_Reward[3322171][1]["RewardItem"] = {}
	tNewActivityAction_Reward[3322171][1]["RewardItem"][1] = {}
	tNewActivityAction_Reward[3322171][1]["RewardItem"][1]["Id"] = 195715 -- 【库】勇霸天下·无双[属性:0], 【表格】勇霸天下·无双
	tNewActivityAction_Reward[3322171][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑勇霸天下·无双*1
	tNewActivityAction_Reward[3322171][1]["RewardEffect"] = {}
	tNewActivityAction_Reward[3322171][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewActivityAction_Reward[3322171][1]["RewardEffect"]["Effect"] = "angelwing"


	tNewActivityAction_Reward[3322172] = {}
	-- ===3322172,'勇霸天下·无双包（30天）'
	-- ===索引: tNewActivityAction_Reward[3322172][1]
	-- ===删除: 3322172,1
	tNewActivityAction_Reward[3322172][1] = {}
	tNewActivityAction_Reward[3322172][1]["LogId"] = 12001479
	tNewActivityAction_Reward[3322172][1]["DeleteItem"] = {}
	tNewActivityAction_Reward[3322172][1]["DeleteItem"][1] = {}
	tNewActivityAction_Reward[3322172][1]["DeleteItem"][1]["Id"] = 3322172 -- 【库】勇霸天下·无双包（30天）[属性:9]
	tNewActivityAction_Reward[3322172][1]["RewardItem"] = {}
	tNewActivityAction_Reward[3322172][1]["RewardItem"][1] = {}
	tNewActivityAction_Reward[3322172][1]["RewardItem"][1]["Id"] = 195715 -- 【库】勇霸天下·无双[属性:0], 【表格】勇霸天下·无双
	tNewActivityAction_Reward[3322172][1]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑勇霸天下·无双*1
	tNewActivityAction_Reward[3322172][1]["RewardEffect"] = {}
	tNewActivityAction_Reward[3322172][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewActivityAction_Reward[3322172][1]["RewardEffect"]["Effect"] = "angelwing"


	tNewActivityAction_Reward[3322173] = {}
	-- ===3322173,'勇霸天下·无双包（15天）'
	-- ===索引: tNewActivityAction_Reward[3322173][1]
	-- ===删除: 3322173,1
	tNewActivityAction_Reward[3322173][1] = {}
	tNewActivityAction_Reward[3322173][1]["LogId"] = 12001479
	tNewActivityAction_Reward[3322173][1]["DeleteItem"] = {}
	tNewActivityAction_Reward[3322173][1]["DeleteItem"][1] = {}
	tNewActivityAction_Reward[3322173][1]["DeleteItem"][1]["Id"] = 3322173 -- 【库】勇霸天下·无双包（15天）[属性:9]
	tNewActivityAction_Reward[3322173][1]["RewardItem"] = {}
	tNewActivityAction_Reward[3322173][1]["RewardItem"][1] = {}
	tNewActivityAction_Reward[3322173][1]["RewardItem"][1]["Id"] = 195715 -- 【库】勇霸天下·无双[属性:0], 【表格】勇霸天下·无双
	tNewActivityAction_Reward[3322173][1]["RewardItem"][1]["Attr"] = "0 1 0 21600 1 0 0 1" -- 15天时效(激活)的1%神佑勇霸天下·无双*1
	tNewActivityAction_Reward[3322173][1]["RewardEffect"] = {}
	tNewActivityAction_Reward[3322173][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewActivityAction_Reward[3322173][1]["RewardEffect"]["Effect"] = "angelwing"


	tNewActivityAction_Reward[3322174] = {}
	-- ===3322174,'勇霸天下·无双（赠）包'
	-- ===索引: tNewActivityAction_Reward[3322174][1]
	-- ===删除: 3322174,1
	tNewActivityAction_Reward[3322174][1] = {}
	tNewActivityAction_Reward[3322174][1]["LogId"] = 12001479
	tNewActivityAction_Reward[3322174][1]["DeleteItem"] = {}
	tNewActivityAction_Reward[3322174][1]["DeleteItem"][1] = {}
	tNewActivityAction_Reward[3322174][1]["DeleteItem"][1]["Id"] = 3322174 -- 【库】勇霸天下·无双（赠）包[属性:9]
	tNewActivityAction_Reward[3322174][1]["RewardItem"] = {}
	tNewActivityAction_Reward[3322174][1]["RewardItem"][1] = {}
	tNewActivityAction_Reward[3322174][1]["RewardItem"][1]["Id"] = 195715 -- 【库】勇霸天下·无双[属性:0], 【表格】勇霸天下·无双（赠）
	tNewActivityAction_Reward[3322174][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑勇霸天下·无双（赠）*1
	tNewActivityAction_Reward[3322174][1]["RewardEffect"] = {}
	tNewActivityAction_Reward[3322174][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewActivityAction_Reward[3322174][1]["RewardEffect"]["Effect"] = "angelwing"


	tNewActivityAction_Reward[3322175] = {}
	-- ===3322175,'勇霸天下·无双（赠）包（30天）'
	-- ===索引: tNewActivityAction_Reward[3322175][1]
	-- ===删除: 3322175,1
	tNewActivityAction_Reward[3322175][1] = {}
	tNewActivityAction_Reward[3322175][1]["LogId"] = 12001479
	tNewActivityAction_Reward[3322175][1]["DeleteItem"] = {}
	tNewActivityAction_Reward[3322175][1]["DeleteItem"][1] = {}
	tNewActivityAction_Reward[3322175][1]["DeleteItem"][1]["Id"] = 3322175 -- 【库】勇霸天下·无双（赠）包（30天）[属性:9]
	tNewActivityAction_Reward[3322175][1]["RewardItem"] = {}
	tNewActivityAction_Reward[3322175][1]["RewardItem"][1] = {}
	tNewActivityAction_Reward[3322175][1]["RewardItem"][1]["Id"] = 195715 -- 【库】勇霸天下·无双[属性:0], 【表格】勇霸天下·无双（赠）
	tNewActivityAction_Reward[3322175][1]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑勇霸天下·无双（赠）*1
	tNewActivityAction_Reward[3322175][1]["RewardEffect"] = {}
	tNewActivityAction_Reward[3322175][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewActivityAction_Reward[3322175][1]["RewardEffect"]["Effect"] = "angelwing"


	tNewActivityAction_Reward[3322176] = {}
	-- ===3322176,'勇霸天下·无双（赠）包（15天）'
	-- ===索引: tNewActivityAction_Reward[3322176][1]
	-- ===删除: 3322176,1
	tNewActivityAction_Reward[3322176][1] = {}
	tNewActivityAction_Reward[3322176][1]["LogId"] = 12001479
	tNewActivityAction_Reward[3322176][1]["DeleteItem"] = {}
	tNewActivityAction_Reward[3322176][1]["DeleteItem"][1] = {}
	tNewActivityAction_Reward[3322176][1]["DeleteItem"][1]["Id"] = 3322176 -- 【库】勇霸天下·无双（赠）包（15天）[属性:9]
	tNewActivityAction_Reward[3322176][1]["RewardItem"] = {}
	tNewActivityAction_Reward[3322176][1]["RewardItem"][1] = {}
	tNewActivityAction_Reward[3322176][1]["RewardItem"][1]["Id"] = 195715 -- 【库】勇霸天下·无双[属性:0], 【表格】勇霸天下·无双（赠）
	tNewActivityAction_Reward[3322176][1]["RewardItem"][1]["Attr"] = "0 1 3 21600 1 0 0 1" -- 15天时效(激活)的1%神佑勇霸天下·无双（赠）*1
	tNewActivityAction_Reward[3322176][1]["RewardEffect"] = {}
	tNewActivityAction_Reward[3322176][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewActivityAction_Reward[3322176][1]["RewardEffect"]["Effect"] = "angelwing"


	tNewActivityAction_Reward[3322177] = {}
	-- ===3322177,'勇霸天下礼包'
	-- ===索引: tNewActivityAction_Reward[3322177][1]
	-- ===删除: 3322177,1
	tNewActivityAction_Reward[3322177][1] = {}
	tNewActivityAction_Reward[3322177][1]["LogId"] = 12001479
	tNewActivityAction_Reward[3322177][1]["DeleteItem"] = {}
	tNewActivityAction_Reward[3322177][1]["DeleteItem"][1] = {}
	tNewActivityAction_Reward[3322177][1]["DeleteItem"][1]["Id"] = 3322177 -- 【库】勇霸天下礼包[属性:9]
	tNewActivityAction_Reward[3322177][1]["RewardItem"] = {}
	tNewActivityAction_Reward[3322177][1]["RewardItem"][1] = {}
	tNewActivityAction_Reward[3322177][1]["RewardItem"][1]["Id"] = 195725 -- 【库】勇霸天下[属性:0], 【表格】勇霸天下
	tNewActivityAction_Reward[3322177][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑勇霸天下*1
	tNewActivityAction_Reward[3322177][1]["RewardEffect"] = {}
	tNewActivityAction_Reward[3322177][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewActivityAction_Reward[3322177][1]["RewardEffect"]["Effect"] = "angelwing"


	tNewActivityAction_Reward[3322178] = {}
	-- ===3322178,'勇霸天下（赠）礼包'
	-- ===索引: tNewActivityAction_Reward[3322178][1]
	-- ===删除: 3322178,1
	tNewActivityAction_Reward[3322178][1] = {}
	tNewActivityAction_Reward[3322178][1]["LogId"] = 12001479
	tNewActivityAction_Reward[3322178][1]["DeleteItem"] = {}
	tNewActivityAction_Reward[3322178][1]["DeleteItem"][1] = {}
	tNewActivityAction_Reward[3322178][1]["DeleteItem"][1]["Id"] = 3322178 -- 【库】勇霸天下（赠）礼包[属性:9]
	tNewActivityAction_Reward[3322178][1]["RewardItem"] = {}
	tNewActivityAction_Reward[3322178][1]["RewardItem"][1] = {}
	tNewActivityAction_Reward[3322178][1]["RewardItem"][1]["Id"] = 195725 -- 【库】勇霸天下[属性:0], 【表格】勇霸天下（赠）
	tNewActivityAction_Reward[3322178][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑勇霸天下（赠）*1
	tNewActivityAction_Reward[3322178][1]["RewardEffect"] = {}
	tNewActivityAction_Reward[3322178][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewActivityAction_Reward[3322178][1]["RewardEffect"]["Effect"] = "angelwing"

----------------------------------逻辑部分---------------------------------------------
function NewActivityAction_FragmentUse(nItemId, nIndex)
	local nUserId = Get_UserId()
	-- local nItemNum = Get_CountItemType(nItemId, 0)
	if not Item_ChkMulItem(nItemId, nItemId, nIndex) then
		if nItemId == 3322179 then
			User_TalkChannel2005(string.format(tNewActivityAction_Text["Sys"]["FragmentNotEnough"],nIndex))
		end
		return
	end
	
	if not RewardTemplate_CheckSpace(tNewActivityAction_Reward[nItemId][nIndex]) then
		return
	end
	
	local bFlag, sStr = RewardTemplate_UseItemAndMsg(tNewActivityAction_Reward[nItemId][nIndex])
	if bFlag and nItemId == 3322179 then
		User_TalkChannel2005(string.format(tNewActivityAction_Text["Sys"]["FragmentUse"], nIndex, sStr))
	end
end

---------------------------------物品部分---------------------------------------------
-- 3322171,'勇霸天下·无双包'
tItem[3322171] = tItem[3322171] or {}
tItem[3322171]["Function"] = function(nItemId,sItemName)
	NewActivityAction_FragmentUse(nItemId, 1)
end

-- 3322172,'勇霸天下·无双包（30天）'
tItem[3322172] = tItem[3322171] or {}
-- 3322173,'勇霸天下·无双包（15天）'
tItem[3322173] = tItem[3322171] or {}
-- 3322174,'勇霸天下·无双（赠）包'
tItem[3322174] = tItem[3322171] or {}
-- 3322175,'勇霸天下·无双（赠）包（30天）'
tItem[3322175] = tItem[3322171] or {}
-- 3322176,'勇霸天下·无双（赠）包（15天）'
tItem[3322176] = tItem[3322171] or {}
-- 3322177,'勇霸天下礼包'
tItem[3322177] = tItem[3322171] or {}
-- 3322178,'勇霸天下（赠）礼包'
tItem[3322178] = tItem[3322171] or {}



