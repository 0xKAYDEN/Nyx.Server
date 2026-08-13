-----------------------------------------------------------------------------------------------------
--Name:		190121[简体征服][活动脚本]斗神新职业冲榜活动发奖ID
--Purpose:		斗神新职业冲榜活动发奖ID
--Creator: 	严振飞
--Created:		2019/01/21
------------------------------------------------------------------------------------------------------
-- 命名前缀
--NewProfPag_
--LOG  12001277
------------------------------------------------------------------------------------------------------


---------------------------------------------数据部分配置---------------------------------------------
local tNewProfPag_Reward = {}
	-- 3319428,'至尊王者包'
	tNewProfPag_Reward[3319428] = {}
	tNewProfPag_Reward[3319428]["DeleteItem"] = {}
	tNewProfPag_Reward[3319428]["DeleteItem"][1] = {}
	tNewProfPag_Reward[3319428]["DeleteItem"][1]["Id"] = 3319428
	tNewProfPag_Reward[3319428]["RewardItem"] = {}
	tNewProfPag_Reward[3319428]["RewardItem"][1] = {}
	tNewProfPag_Reward[3319428]["RewardItem"][1]["Id"] = 3311821	-- 优质神纹源晶
	tNewProfPag_Reward[3319428]["RewardItem"][1]["Attr"] = "0 1"
	tNewProfPag_Reward[3319428]["RewardItem"][2] = {}
	tNewProfPag_Reward[3319428]["RewardItem"][2]["Id"] = 4060001	-- 万能神纹精粹
	tNewProfPag_Reward[3319428]["RewardItem"][2]["Attr"] = "0 200 3"
	tNewProfPag_Reward[3319428]["RewardStrengthValue"] = {}
	tNewProfPag_Reward[3319428]["RewardStrengthValue"]["Value"] = 10000	-- 10000气力值
	tNewProfPag_Reward[3319428]["LogId"] = 12001277
	tNewProfPag_Reward[3319428]["RewardEffect"] = {}
	tNewProfPag_Reward[3319428]["RewardEffect"]["Effect"] = "angelwing"

	-- 3319429,'惊喜福利包'
	tNewProfPag_Reward[3319429] = {}
	tNewProfPag_Reward[3319429]["DeleteItem"] = {}
	tNewProfPag_Reward[3319429]["DeleteItem"][1] = {}
	tNewProfPag_Reward[3319429]["DeleteItem"][1]["Id"] = 3319429
	tNewProfPag_Reward[3319429]["RewardItem"] = {}
	tNewProfPag_Reward[3319429]["RewardItem"][1] = {}
	tNewProfPag_Reward[3319429]["RewardItem"][1]["Id"] = 3306510	-- 黄色神纹(赠)随机包
	tNewProfPag_Reward[3319429]["RewardItem"][1]["Attr"] = "0 1"
	tNewProfPag_Reward[3319429]["RewardItem"][2] = {}
	tNewProfPag_Reward[3319429]["RewardItem"][2]["Id"] = 3311820	-- 良品神纹源晶
	tNewProfPag_Reward[3319429]["RewardItem"][2]["Attr"] = "0 2"
	tNewProfPag_Reward[3319429]["RewardItem"][3] = {}
	tNewProfPag_Reward[3319429]["RewardItem"][3]["Id"] = 4060001	-- 万能神纹精粹
	tNewProfPag_Reward[3319429]["RewardItem"][3]["Attr"] = "0 100 3"
	tNewProfPag_Reward[3319429]["RewardStrengthValue"] = {}
	tNewProfPag_Reward[3319429]["RewardStrengthValue"]["Value"] = 5000	-- 5000气力值
	tNewProfPag_Reward[3319429]["LogId"] = 12001277
	tNewProfPag_Reward[3319429]["RewardEffect"] = {}
	tNewProfPag_Reward[3319429]["RewardEffect"]["Effect"] = "angelwing"

	-- 3319430,'鸿运满满包'
	tNewProfPag_Reward[3319430] = {}
	tNewProfPag_Reward[3319430]["DeleteItem"] = {}
	tNewProfPag_Reward[3319430]["DeleteItem"][1] = {}
	tNewProfPag_Reward[3319430]["DeleteItem"][1]["Id"] = 3319430
	tNewProfPag_Reward[3319430]["RewardItem"] = {}
	tNewProfPag_Reward[3319430]["RewardItem"][1] = {}
	tNewProfPag_Reward[3319430]["RewardItem"][1]["Id"] = 3311820	-- 良品神纹源晶
	tNewProfPag_Reward[3319430]["RewardItem"][1]["Attr"] = "0 2"
	tNewProfPag_Reward[3319430]["RewardItem"][2] = {}
	tNewProfPag_Reward[3319430]["RewardItem"][2]["Id"] = 4060001	-- 万能神纹精粹
	tNewProfPag_Reward[3319430]["RewardItem"][2]["Attr"] = "0 50 3"
	tNewProfPag_Reward[3319430]["RewardStrengthValue"] = {}
	tNewProfPag_Reward[3319430]["RewardStrengthValue"]["Value"] = 3000	-- 3000气力值
	tNewProfPag_Reward[3319430]["LogId"] = 12001277
	tNewProfPag_Reward[3319430]["RewardEffect"] = {}
	tNewProfPag_Reward[3319430]["RewardEffect"]["Effect"] = "angelwing"

	-- 3319431,'雷神全服王者包'
	tNewProfPag_Reward[3319431] = {}
	tNewProfPag_Reward[3319431]["DeleteItem"] = {}
	tNewProfPag_Reward[3319431]["DeleteItem"][1] = {}
	tNewProfPag_Reward[3319431]["DeleteItem"][1]["Id"] = 3319431
	tNewProfPag_Reward[3319431]["RewardItem"] = {}
	tNewProfPag_Reward[3319431]["RewardItem"][1] = {}
	tNewProfPag_Reward[3319431]["RewardItem"][1]["Id"] = 3311750	-- 稀有黄色神纹（赠）可选包
	tNewProfPag_Reward[3319431]["RewardItem"][1]["Attr"] = "0 1"
	tNewProfPag_Reward[3319431]["RewardItem"][2] = {}
	tNewProfPag_Reward[3319431]["RewardItem"][2]["Id"] = 3009002	-- 晶莹星陨石
	tNewProfPag_Reward[3319431]["RewardItem"][2]["Attr"] = "0 5 0 2880 1"
	tNewProfPag_Reward[3319431]["RewardItem"][3] = {}
	tNewProfPag_Reward[3319431]["RewardItem"][3]["Id"] = 3303373	-- 魔武通玄丹
	tNewProfPag_Reward[3319431]["RewardItem"][3]["Attr"] = "0 20"
	tNewProfPag_Reward[3319431]["RewardStrengthValue"] = {}
	tNewProfPag_Reward[3319431]["RewardStrengthValue"]["Value"] = 10000	-- 10000气力值
	tNewProfPag_Reward[3319431]["LogId"] = 12001277
	tNewProfPag_Reward[3319431]["RewardEffect"] = {}
	tNewProfPag_Reward[3319431]["RewardEffect"]["Effect"] = "angelwing"

	-- 3319432,'雷神单服王者包'
	tNewProfPag_Reward[3319432] = {}
	tNewProfPag_Reward[3319432]["DeleteItem"] = {}
	tNewProfPag_Reward[3319432]["DeleteItem"][1] = {}
	tNewProfPag_Reward[3319432]["DeleteItem"][1]["Id"] = 3319432
	tNewProfPag_Reward[3319432]["RewardItem"] = {}
	tNewProfPag_Reward[3319432]["RewardItem"][1] = {}
	tNewProfPag_Reward[3319432]["RewardItem"][1]["Id"] = 3319013	-- (+1)稀有黄色神纹随机包(赠)
	tNewProfPag_Reward[3319432]["RewardItem"][1]["Attr"] = "0 1"
	tNewProfPag_Reward[3319432]["RewardItem"][2] = {}
	tNewProfPag_Reward[3319432]["RewardItem"][2]["Id"] = 3009002	-- 晶莹星陨石
	tNewProfPag_Reward[3319432]["RewardItem"][2]["Attr"] = "0 3 0 2880 1"
	tNewProfPag_Reward[3319432]["RewardItem"][3] = {}
	tNewProfPag_Reward[3319432]["RewardItem"][3]["Id"] = 3002926	-- 秘制免费修炼丹
	tNewProfPag_Reward[3319432]["RewardItem"][3]["Attr"] = "0 20"
	tNewProfPag_Reward[3319432]["RewardStrengthValue"] = {}
	tNewProfPag_Reward[3319432]["RewardStrengthValue"]["Value"] = 5000	-- 5000气力值
	tNewProfPag_Reward[3319432]["LogId"] = 12001277
	tNewProfPag_Reward[3319432]["RewardEffect"] = {}
	tNewProfPag_Reward[3319432]["RewardEffect"]["Effect"] = "angelwing"

	-- 3319433,'雷神极品100级赠武器'
	tNewProfPag_Reward[3319433] = {}
	tNewProfPag_Reward[3319433]["DeleteItem"] = {}
	tNewProfPag_Reward[3319433]["DeleteItem"][1] = {}
	tNewProfPag_Reward[3319433]["DeleteItem"][1]["Id"] = 3319433
	tNewProfPag_Reward[3319433]["RewardItem"] = {}
	tNewProfPag_Reward[3319433]["RewardItem"][1] = {}
	tNewProfPag_Reward[3319433]["RewardItem"][1]["Id"] = 681199	-- 雷光战锤
	tNewProfPag_Reward[3319433]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewProfPag_Reward[3319433]["LogId"] = 12001277
	tNewProfPag_Reward[3319433]["RewardEffect"] = {}
	tNewProfPag_Reward[3319433]["RewardEffect"]["Effect"] = "angelwing"

	-- 3319434,'雷神极品100级赠衣服'
	tNewProfPag_Reward[3319434] = {}
	tNewProfPag_Reward[3319434]["DeleteItem"] = {}
	tNewProfPag_Reward[3319434]["DeleteItem"][1] = {}
	tNewProfPag_Reward[3319434]["DeleteItem"][1]["Id"] = 3319434
	tNewProfPag_Reward[3319434]["RewardItem"] = {}
	tNewProfPag_Reward[3319434]["RewardItem"][1] = {}
	tNewProfPag_Reward[3319434]["RewardItem"][1]["Id"] = 102089	 -- 蛮雷战甲
	tNewProfPag_Reward[3319434]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewProfPag_Reward[3319434]["LogId"] = 12001277
	tNewProfPag_Reward[3319434]["RewardEffect"] = {}
	tNewProfPag_Reward[3319434]["RewardEffect"]["Effect"] = "angelwing"

	-- 3319435,'雷神极品100级1洞+6赠武器'
	tNewProfPag_Reward[3319435] = {}
	tNewProfPag_Reward[3319435]["DeleteItem"] = {}
	tNewProfPag_Reward[3319435]["DeleteItem"][1] = {}
	tNewProfPag_Reward[3319435]["DeleteItem"][1]["Id"] = 3319435
	tNewProfPag_Reward[3319435]["RewardItem"] = {}
	tNewProfPag_Reward[3319435]["RewardItem"][1] = {}
	tNewProfPag_Reward[3319435]["RewardItem"][1]["Id"] = 681199	-- 雷光战锤
	tNewProfPag_Reward[3319435]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 6 255"
	tNewProfPag_Reward[3319435]["LogId"] = 12001277
	tNewProfPag_Reward[3319435]["RewardEffect"] = {}
	tNewProfPag_Reward[3319435]["RewardEffect"]["Effect"] = "angelwing"

	-- 3319436,'极品马鞭（赠）'
	tNewProfPag_Reward[3319436] = {}
	tNewProfPag_Reward[3319436]["DeleteItem"] = {}
	tNewProfPag_Reward[3319436]["DeleteItem"][1] = {}
	tNewProfPag_Reward[3319436]["DeleteItem"][1]["Id"] = 3319436
	tNewProfPag_Reward[3319436]["RewardItem"] = {}
	tNewProfPag_Reward[3319436]["RewardItem"][1] = {}
	tNewProfPag_Reward[3319436]["RewardItem"][1]["Id"] = 203009	-- 马鞭
	tNewProfPag_Reward[3319436]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewProfPag_Reward[3319436]["LogId"] = 12001277
	tNewProfPag_Reward[3319436]["RewardEffect"] = {}
	tNewProfPag_Reward[3319436]["RewardEffect"]["Effect"] = "angelwing"


---------------------------------------------逻辑部分配置---------------------------------------------

---------------------------------------------模块部分配置---------------------------------------------
-- 物品使用
tItem[3319428] = tItem[3319428] or {}
tItem[3319429] = tItem[3319428] or {}
tItem[3319430] = tItem[3319428] or {}
tItem[3319431] = tItem[3319428] or {}
tItem[3319432] = tItem[3319428] or {}
tItem[3319433] = tItem[3319428] or {}
tItem[3319434] = tItem[3319428] or {}
tItem[3319435] = tItem[3319428] or {}
tItem[3319436] = tItem[3319428] or {}
tItem[3319428]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tNewProfPag_Reward[nItemId])
end
