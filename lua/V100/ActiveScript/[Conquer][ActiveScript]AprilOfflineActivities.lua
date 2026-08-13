------------------------------------------------------------------------------------
--Name：       190325[英文征服][活动脚本]4月线下活动相关发奖action制作
--Creator:      耿力兀
--Created:     2019-03-25
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
--前缀：
--AprilOfflineActivities_
--logId:12001340
--Stc掩码：192 40 - 192 43
--192 40	记录炼气天天乐礼包使用次数
--192 41	记录自创天天乐礼包使用次数
--192 42	记录精炼天天乐礼包使用次数
--192 43	记录追加天天乐礼包使用次数
----------------------------------表配置部分--------------------------------------------	
local tAprilOfflineActivities_Reward = {}
	-- ===炼气天天乐礼包
	tAprilOfflineActivities_Reward[3312145] = {}
	tAprilOfflineActivities_Reward[3312145]["LogId"] = 12001340
	tAprilOfflineActivities_Reward[3312145]["RewardStrengthValue"] = {}
	tAprilOfflineActivities_Reward[3312145]["RewardStrengthValue"]["Value"] = 3000 -- 气力值
	-- 玩家cq_statistic掩码
	tAprilOfflineActivities_Reward[3312145]["EventType"] = 192 -- 需手动配：[cq_statistic]表event_type
	tAprilOfflineActivities_Reward[3312145]["DataType"] = 40 -- 需手动配：[cq_statistic]表data_type
	tAprilOfflineActivities_Reward[3312145]["RewardData"] = 1 -- 每天限制的次数
	tAprilOfflineActivities_Reward[3312145]["RewardTotalData"] = 90 -- 整个活动总的限制次数
	tAprilOfflineActivities_Reward[3312145]["RewardDelay"] = 1 -- 掩码的间隔时间
	tAprilOfflineActivities_Reward[3312145]["RewardTimeType"] = 4 -- 【默认0】0:秒; 1:分钟;  2：小时;  3:天（绝对时间）;  4:天（相对时间）

	-- ===自创天天乐礼包
	tAprilOfflineActivities_Reward[3312146] = {}
	tAprilOfflineActivities_Reward[3312146]["LogId"] = 12001340
	tAprilOfflineActivities_Reward[3312146]["RewardItem"] = {}
	tAprilOfflineActivities_Reward[3312146]["RewardItem"][1] = {}
	tAprilOfflineActivities_Reward[3312146]["RewardItem"][1]["Id"] = 3003126 -- 【库】SeniorTrainingPill[属性:0]【表格】大爆丹
	tAprilOfflineActivities_Reward[3312146]["RewardItem"][1]["Attr"] = "0 10 3" -- SeniorTrainingPill(赠)*10
	tAprilOfflineActivities_Reward[3312146]["RewardItem"][2] = {}
	tAprilOfflineActivities_Reward[3312146]["RewardItem"][2]["Id"] = 3002030 -- 【库】SuperProtectionPill[属性:9]【表格】强效护心丹
	tAprilOfflineActivities_Reward[3312146]["RewardItem"][2]["Attr"] = "0 10 3" -- SuperProtectionPill(赠)*10
	tAprilOfflineActivities_Reward[3312146]["RewardItem"][3] = {}
	tAprilOfflineActivities_Reward[3312146]["RewardItem"][3]["Id"] = 3002926 -- 【库】FreeTrainingPill[属性:11]【表格】免费修炼丹
	tAprilOfflineActivities_Reward[3312146]["RewardItem"][3]["Attr"] = "0 10 3" -- FreeTrainingPill(赠)*10
	-- 玩家cq_statistic掩码
	tAprilOfflineActivities_Reward[3312146]["EventType"] = 192 -- 需手动配：[cq_statistic]表event_type
	tAprilOfflineActivities_Reward[3312146]["DataType"] = 41 -- 需手动配：[cq_statistic]表data_type
	tAprilOfflineActivities_Reward[3312146]["RewardData"] = 1 -- 每天限制的次数
	tAprilOfflineActivities_Reward[3312146]["RewardTotalData"] = 90 -- 整个活动总的限制次数
	tAprilOfflineActivities_Reward[3312146]["RewardDelay"] = 1 -- 掩码的间隔时间
	tAprilOfflineActivities_Reward[3312146]["RewardTimeType"] = 4 -- 【默认0】0:秒; 1:分钟;  2：小时;  3:天（绝对时间）;  4:天（相对时间）
	
	-- === +8赠赤炼石&10W气力值礼包
	tAprilOfflineActivities_Reward[3312147] = {}
	tAprilOfflineActivities_Reward[3312147]["LogId"] = 12001340
	tAprilOfflineActivities_Reward[3312147]["DeleteItem"] = {}
	tAprilOfflineActivities_Reward[3312147]["DeleteItem"][1] = {}
	tAprilOfflineActivities_Reward[3312147]["DeleteItem"][1]["Id"] = 3312147 -- 【库】 3312147 【enzf库里没有该物品】[属性:]
	tAprilOfflineActivities_Reward[3312147]["RewardItem"] = {}
	tAprilOfflineActivities_Reward[3312147]["RewardItem"][1] = {}
	tAprilOfflineActivities_Reward[3312147]["RewardItem"][1]["Id"] = 730008 -- 【库】+8Stone[属性:0]【表格】 +8赠赤炼石
	tAprilOfflineActivities_Reward[3312147]["RewardItem"][1]["Attr"] = "0 1 3" -- +8Stone(赠)*1
	tAprilOfflineActivities_Reward[3312147]["RewardStrengthValue"] = {}
	tAprilOfflineActivities_Reward[3312147]["RewardStrengthValue"]["Value"] = 100000 -- 气力值

	-- === +6赠赤炼石&2W气力值礼包
	tAprilOfflineActivities_Reward[3312148] = {}
	tAprilOfflineActivities_Reward[3312148]["LogId"] = 12001340
	tAprilOfflineActivities_Reward[3312148]["DeleteItem"] = {}
	tAprilOfflineActivities_Reward[3312148]["DeleteItem"][1] = {}
	tAprilOfflineActivities_Reward[3312148]["DeleteItem"][1]["Id"] = 3312148 -- 【库】 3312148 【enzf库里没有该物品】[属性:]
	tAprilOfflineActivities_Reward[3312148]["RewardItem"] = {}
	tAprilOfflineActivities_Reward[3312148]["RewardItem"][1] = {}
	tAprilOfflineActivities_Reward[3312148]["RewardItem"][1]["Id"] = 730006 -- 【库】+6Stone[属性:0]【表格】 +6赠赤炼石
	tAprilOfflineActivities_Reward[3312148]["RewardItem"][1]["Attr"] = "0 1 3" -- +6Stone(赠)*1
	tAprilOfflineActivities_Reward[3312148]["RewardStrengthValue"] = {}
	tAprilOfflineActivities_Reward[3312148]["RewardStrengthValue"]["Value"] = 20000 -- 气力值

	-- ===追加天天乐礼包
	tAprilOfflineActivities_Reward[3312165] = {}
	tAprilOfflineActivities_Reward[3312165]["LogId"] = 12001340
	tAprilOfflineActivities_Reward[3312165]["RewardItem"] = {}
	tAprilOfflineActivities_Reward[3312165]["RewardItem"][1] = {}
	tAprilOfflineActivities_Reward[3312165]["RewardItem"][1]["Id"] = 730003 -- 【库】+3Stone[属性:0]【表格】赠品+3赤炼石
	tAprilOfflineActivities_Reward[3312165]["RewardItem"][1]["Attr"] = "0 2 3 2880 1" -- 2天时效(激活)的+3Stone(赠)*2
	-- 玩家cq_statistic掩码
	tAprilOfflineActivities_Reward[3312165]["EventType"] = 192 -- 需手动配：[cq_statistic]表event_type
	tAprilOfflineActivities_Reward[3312165]["DataType"] = 43 -- 需手动配：[cq_statistic]表data_type
	tAprilOfflineActivities_Reward[3312165]["RewardData"] = 1 -- 每天限制的次数
	tAprilOfflineActivities_Reward[3312165]["RewardTotalData"] = 90 -- 整个活动总的限制次数
	tAprilOfflineActivities_Reward[3312165]["RewardDelay"] = 1 -- 掩码的间隔时间
	tAprilOfflineActivities_Reward[3312165]["RewardTimeType"] = 4 -- 【默认0】0:秒; 1:分钟;  2：小时;  3:天（绝对时间）;  4:天（相对时间）
	
	-- ===2颗璀璨星陨石&10W气力值礼包
	tAprilOfflineActivities_Reward[3312149] = {}
	tAprilOfflineActivities_Reward[3312149]["LogId"] = 12001340
	tAprilOfflineActivities_Reward[3312149]["DeleteItem"] = {}
	tAprilOfflineActivities_Reward[3312149]["DeleteItem"][1] = {}
	tAprilOfflineActivities_Reward[3312149]["DeleteItem"][1]["Id"] = 3312149 -- 【库】 3312149 【enzf库里没有该物品】[属性:]
	tAprilOfflineActivities_Reward[3312149]["RewardItem"] = {}
	tAprilOfflineActivities_Reward[3312149]["RewardItem"][1] = {}
	tAprilOfflineActivities_Reward[3312149]["RewardItem"][1]["Id"] = 3009003 -- 【库】SplendidStarStone[属性:9]【表格】璀璨星陨石
	tAprilOfflineActivities_Reward[3312149]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的SplendidStarStone*2
	tAprilOfflineActivities_Reward[3312149]["RewardStrengthValue"] = {}
	tAprilOfflineActivities_Reward[3312149]["RewardStrengthValue"]["Value"] = 100000 -- 气力值

	-- ===2颗晶莹星陨石&1W气力值礼包
	tAprilOfflineActivities_Reward[3312150] = {}
	tAprilOfflineActivities_Reward[3312150]["LogId"] = 12001340
	tAprilOfflineActivities_Reward[3312150]["DeleteItem"] = {}
	tAprilOfflineActivities_Reward[3312150]["DeleteItem"][1] = {}
	tAprilOfflineActivities_Reward[3312150]["DeleteItem"][1]["Id"] = 3312150 -- 【库】 3312150 【enzf库里没有该物品】[属性:]
	tAprilOfflineActivities_Reward[3312150]["RewardItem"] = {}
	tAprilOfflineActivities_Reward[3312150]["RewardItem"][1] = {}
	tAprilOfflineActivities_Reward[3312150]["RewardItem"][1]["Id"] = 3009002 -- 【库】RadiantStarStone[属性:9]【表格】晶莹星陨石
	tAprilOfflineActivities_Reward[3312150]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的RadiantStarStone*2
	tAprilOfflineActivities_Reward[3312150]["RewardStrengthValue"] = {}
	tAprilOfflineActivities_Reward[3312150]["RewardStrengthValue"]["Value"] = 10000 -- 气力值

	-- ===精炼天天乐礼包
	tAprilOfflineActivities_Reward[3312151] = {}
	tAprilOfflineActivities_Reward[3312151]["LogId"] = 12001340
	tAprilOfflineActivities_Reward[3312151]["RewardItem"] = {}
	tAprilOfflineActivities_Reward[3312151]["RewardItem"][1] = {}
	tAprilOfflineActivities_Reward[3312151]["RewardItem"][1]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9]【表格】明亮星陨石
	tAprilOfflineActivities_Reward[3312151]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的BrightStarStone*3
	-- 玩家cq_statistic掩码
	tAprilOfflineActivities_Reward[3312151]["EventType"] = 192 -- 需手动配：[cq_statistic]表event_type
	tAprilOfflineActivities_Reward[3312151]["DataType"] = 42 -- 需手动配：[cq_statistic]表data_type
	tAprilOfflineActivities_Reward[3312151]["RewardData"] = 1 -- 每天限制的次数
	tAprilOfflineActivities_Reward[3312151]["RewardTotalData"] = 90 -- 整个活动总的限制次数
	tAprilOfflineActivities_Reward[3312151]["RewardDelay"] = 1 -- 掩码的间隔时间
	tAprilOfflineActivities_Reward[3312151]["RewardTimeType"] = 4 -- 【默认0】0:秒; 1:分钟;  2：小时;  3:天（绝对时间）;  4:天（相对时间）

	-- ===8阶灵珠*3礼包
	tAprilOfflineActivities_Reward[3312152] = {}
	tAprilOfflineActivities_Reward[3312152]["LogId"] = 12001340
	tAprilOfflineActivities_Reward[3312152]["DeleteItem"] = {}
	tAprilOfflineActivities_Reward[3312152]["DeleteItem"][1] = {}
	tAprilOfflineActivities_Reward[3312152]["DeleteItem"][1]["Id"] = 3312152 -- 【库】 3312152 【enzf库里没有该物品】[属性:]
	tAprilOfflineActivities_Reward[3312152]["RewardItem"] = {}
	tAprilOfflineActivities_Reward[3312152]["RewardItem"][1] = {}
	tAprilOfflineActivities_Reward[3312152]["RewardItem"][1]["Id"] = 4200008 -- 【库】P8Anima[属性:8]【表格】8阶灵珠
	tAprilOfflineActivities_Reward[3312152]["RewardItem"][1]["Attr"] = "0 3" -- P8Anima*3
	tAprilOfflineActivities_Reward[3312152]["RewardItem"][1]["PreciousType"] = 307

	-- ===8阶灵珠*2礼包
	tAprilOfflineActivities_Reward[3312153] = {}
	tAprilOfflineActivities_Reward[3312153]["LogId"] = 12001340
	tAprilOfflineActivities_Reward[3312153]["DeleteItem"] = {}
	tAprilOfflineActivities_Reward[3312153]["DeleteItem"][1] = {}
	tAprilOfflineActivities_Reward[3312153]["DeleteItem"][1]["Id"] = 3312153 -- 【库】 3312153 【enzf库里没有该物品】[属性:]
	tAprilOfflineActivities_Reward[3312153]["RewardItem"] = {}
	tAprilOfflineActivities_Reward[3312153]["RewardItem"][1] = {}
	tAprilOfflineActivities_Reward[3312153]["RewardItem"][1]["Id"] = 4200008 -- 【库】P8Anima[属性:8]【表格】8阶灵珠
	tAprilOfflineActivities_Reward[3312153]["RewardItem"][1]["Attr"] = "0 2" -- P8Anima*2
	tAprilOfflineActivities_Reward[3312153]["RewardItem"][1]["PreciousType"] = 307

	-- ===7阶灵珠*3礼包
	tAprilOfflineActivities_Reward[3312154] = {}
	tAprilOfflineActivities_Reward[3312154]["LogId"] = 12001340
	tAprilOfflineActivities_Reward[3312154]["DeleteItem"] = {}
	tAprilOfflineActivities_Reward[3312154]["DeleteItem"][1] = {}
	tAprilOfflineActivities_Reward[3312154]["DeleteItem"][1]["Id"] = 3312154 -- 【库】 3312154 【enzf库里没有该物品】[属性:]
	tAprilOfflineActivities_Reward[3312154]["RewardItem"] = {}
	tAprilOfflineActivities_Reward[3312154]["RewardItem"][1] = {}
	tAprilOfflineActivities_Reward[3312154]["RewardItem"][1]["Id"] = 4200007 -- 【库】P7Anima[属性:8]【表格】7阶灵珠
	tAprilOfflineActivities_Reward[3312154]["RewardItem"][1]["Attr"] = "0 3" -- P7Anima*3
	tAprilOfflineActivities_Reward[3312154]["RewardItem"][1]["PreciousType"] = 307

	-- ===7阶灵珠*3加5阶灵珠*2礼包
	tAprilOfflineActivities_Reward[3312155] = {}
	tAprilOfflineActivities_Reward[3312155]["LogId"] = 12001340
	tAprilOfflineActivities_Reward[3312155]["DeleteItem"] = {}
	tAprilOfflineActivities_Reward[3312155]["DeleteItem"][1] = {}
	tAprilOfflineActivities_Reward[3312155]["DeleteItem"][1]["Id"] = 3312155 -- 【库】 3312155 【enzf库里没有该物品】[属性:]
	tAprilOfflineActivities_Reward[3312155]["RewardItem"] = {}
	tAprilOfflineActivities_Reward[3312155]["RewardItem"][1] = {}
	tAprilOfflineActivities_Reward[3312155]["RewardItem"][1]["Id"] = 4200007 -- 【库】P7Anima[属性:8]【表格】7阶灵珠
	tAprilOfflineActivities_Reward[3312155]["RewardItem"][1]["Attr"] = "0 3" -- P7Anima*3
	tAprilOfflineActivities_Reward[3312155]["RewardItem"][1]["PreciousType"] = 307
	tAprilOfflineActivities_Reward[3312155]["RewardItem"][2] = {}
	tAprilOfflineActivities_Reward[3312155]["RewardItem"][2]["Id"] = 4200005 -- 【库】P5Anima[属性:8]【表格】5阶灵珠
	tAprilOfflineActivities_Reward[3312155]["RewardItem"][2]["Attr"] = "0 2" -- P5Anima*2
	tAprilOfflineActivities_Reward[3312155]["RewardItem"][2]["PreciousType"] = 307

	-- ===6阶灵珠*3礼包
	tAprilOfflineActivities_Reward[3312156] = {}
	tAprilOfflineActivities_Reward[3312156]["LogId"] = 12001340
	tAprilOfflineActivities_Reward[3312156]["DeleteItem"] = {}
	tAprilOfflineActivities_Reward[3312156]["DeleteItem"][1] = {}
	tAprilOfflineActivities_Reward[3312156]["DeleteItem"][1]["Id"] = 3312156 -- 【库】 3312156 【enzf库里没有该物品】[属性:]
	tAprilOfflineActivities_Reward[3312156]["RewardItem"] = {}
	tAprilOfflineActivities_Reward[3312156]["RewardItem"][1] = {}
	tAprilOfflineActivities_Reward[3312156]["RewardItem"][1]["Id"] = 4200006 -- 【库】P6Anima[属性:8]【表格】6阶灵珠
	tAprilOfflineActivities_Reward[3312156]["RewardItem"][1]["Attr"] = "0 3" -- P6Anima*3
	tAprilOfflineActivities_Reward[3312156]["RewardItem"][1]["PreciousType"] = 307

	-- ===5阶灵珠*2礼包
	tAprilOfflineActivities_Reward[3312157] = {}
	tAprilOfflineActivities_Reward[3312157]["LogId"] = 12001340
	tAprilOfflineActivities_Reward[3312157]["DeleteItem"] = {}
	tAprilOfflineActivities_Reward[3312157]["DeleteItem"][1] = {}
	tAprilOfflineActivities_Reward[3312157]["DeleteItem"][1]["Id"] = 3312157 -- 【库】 3312157 【enzf库里没有该物品】[属性:]
	tAprilOfflineActivities_Reward[3312157]["RewardItem"] = {}
	tAprilOfflineActivities_Reward[3312157]["RewardItem"][1] = {}
	tAprilOfflineActivities_Reward[3312157]["RewardItem"][1]["Id"] = 4200005 -- 【库】P5Anima[属性:8]【表格】5阶灵珠
	tAprilOfflineActivities_Reward[3312157]["RewardItem"][1]["Attr"] = "0 2" -- P5Anima*2
	tAprilOfflineActivities_Reward[3312157]["RewardItem"][1]["PreciousType"] = 307

	-- ===4阶灵珠*1礼包
	tAprilOfflineActivities_Reward[3312158] = {}
	tAprilOfflineActivities_Reward[3312158]["LogId"] = 12001340
	tAprilOfflineActivities_Reward[3312158]["DeleteItem"] = {}
	tAprilOfflineActivities_Reward[3312158]["DeleteItem"][1] = {}
	tAprilOfflineActivities_Reward[3312158]["DeleteItem"][1]["Id"] = 3312158 -- 【库】 3312158 【enzf库里没有该物品】[属性:]
	tAprilOfflineActivities_Reward[3312158]["RewardItem"] = {}
	tAprilOfflineActivities_Reward[3312158]["RewardItem"][1] = {}
	tAprilOfflineActivities_Reward[3312158]["RewardItem"][1]["Id"] = 4200004 -- 【库】P4Anima[属性:8]【表格】4阶灵珠
	tAprilOfflineActivities_Reward[3312158]["RewardItem"][1]["Attr"] = "0 1" -- P4Anima*1
	tAprilOfflineActivities_Reward[3312158]["RewardItem"][1]["PreciousType"] = 307

	-- ===微光星陨石*5礼包
	tAprilOfflineActivities_Reward[3312159] = {}
	tAprilOfflineActivities_Reward[3312159]["LogId"] = 12001340
	tAprilOfflineActivities_Reward[3312159]["DeleteItem"] = {}
	tAprilOfflineActivities_Reward[3312159]["DeleteItem"][1] = {}
	tAprilOfflineActivities_Reward[3312159]["DeleteItem"][1]["Id"] = 3312159 -- 【库】 3312159 【enzf库里没有该物品】[属性:]
	tAprilOfflineActivities_Reward[3312159]["RewardItem"] = {}
	tAprilOfflineActivities_Reward[3312159]["RewardItem"][1] = {}
	tAprilOfflineActivities_Reward[3312159]["RewardItem"][1]["Id"] = 3009000 -- 【库】TwilightStarStone[属性:9]【表格】微光星陨石
	tAprilOfflineActivities_Reward[3312159]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的TwilightStarStone*5

	-- ===明亮星陨石*1礼包
	tAprilOfflineActivities_Reward[3312160] = {}
	tAprilOfflineActivities_Reward[3312160]["LogId"] = 12001340
	tAprilOfflineActivities_Reward[3312160]["DeleteItem"] = {}
	tAprilOfflineActivities_Reward[3312160]["DeleteItem"][1] = {}
	tAprilOfflineActivities_Reward[3312160]["DeleteItem"][1]["Id"] = 3312160 -- 【库】 3312160 【enzf库里没有该物品】[属性:]
	tAprilOfflineActivities_Reward[3312160]["RewardItem"] = {}
	tAprilOfflineActivities_Reward[3312160]["RewardItem"][1] = {}
	tAprilOfflineActivities_Reward[3312160]["RewardItem"][1]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9]【表格】明亮星陨石
	tAprilOfflineActivities_Reward[3312160]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的BrightStarStone*1

	-- ===良品神纹源晶*10礼包
	tAprilOfflineActivities_Reward[3312161] = {}
	tAprilOfflineActivities_Reward[3312161]["LogId"] = 12001340
	tAprilOfflineActivities_Reward[3312161]["DeleteItem"] = {}
	tAprilOfflineActivities_Reward[3312161]["DeleteItem"][1] = {}
	tAprilOfflineActivities_Reward[3312161]["DeleteItem"][1]["Id"] = 3312161 -- 【库】 3312161 【enzf库里没有该物品】[属性:]
	tAprilOfflineActivities_Reward[3312161]["RewardItem"] = {}
	tAprilOfflineActivities_Reward[3312161]["RewardItem"][1] = {}
	tAprilOfflineActivities_Reward[3312161]["RewardItem"][1]["Id"] = 3311820 -- 【库】MysticRuneStone[属性:9]【表格】良品神纹源晶
	tAprilOfflineActivities_Reward[3312161]["RewardItem"][1]["Attr"] = "0 10" -- MysticRuneStone*10

	-- ===永久-1%神佑非赠MonkeyKingArmor礼包
	tAprilOfflineActivities_Reward[3312162] = {}
	tAprilOfflineActivities_Reward[3312162]["LogId"] = 12001340
	tAprilOfflineActivities_Reward[3312162]["DeleteItem"] = {}
	tAprilOfflineActivities_Reward[3312162]["DeleteItem"][1] = {}
	tAprilOfflineActivities_Reward[3312162]["DeleteItem"][1]["Id"] = 3312162 -- 【库】 3312162 【enzf库里没有该物品】[属性:]
	tAprilOfflineActivities_Reward[3312162]["RewardItem"] = {}
	tAprilOfflineActivities_Reward[3312162]["RewardItem"][1] = {}
	tAprilOfflineActivities_Reward[3312162]["RewardItem"][1]["Id"] = 189685 -- 【库】MonkeyKingArmor[属性:0]【表格】MonkeyKingArmor
	tAprilOfflineActivities_Reward[3312162]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑MonkeyKingArmor*1

	-- ===永久-1%神佑非赠MonkeyKingArmor(Heaven)礼包
	tAprilOfflineActivities_Reward[3312163] = {}
	tAprilOfflineActivities_Reward[3312163]["LogId"] = 12001340
	tAprilOfflineActivities_Reward[3312163]["DeleteItem"] = {}
	tAprilOfflineActivities_Reward[3312163]["DeleteItem"][1] = {}
	tAprilOfflineActivities_Reward[3312163]["DeleteItem"][1]["Id"] = 3312163 -- 【库】 3312163 【enzf库里没有该物品】[属性:]
	tAprilOfflineActivities_Reward[3312163]["RewardItem"] = {}
	tAprilOfflineActivities_Reward[3312163]["RewardItem"][1] = {}
	tAprilOfflineActivities_Reward[3312163]["RewardItem"][1]["Id"] = 189695 -- 【库】MonkeyKingArmor(Heaven)[属性:0]【表格】MonkeyKingArmor(Heaven)
	tAprilOfflineActivities_Reward[3312163]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑MonkeyKingArmor(Heaven)*1

	-- ===永久-1%神佑非赠Invincible Eastern(Supreme)礼包
	tAprilOfflineActivities_Reward[3312164] = {}
	tAprilOfflineActivities_Reward[3312164]["LogId"] = 12001340
	tAprilOfflineActivities_Reward[3312164]["DeleteItem"] = {}
	tAprilOfflineActivities_Reward[3312164]["DeleteItem"][1] = {}
	tAprilOfflineActivities_Reward[3312164]["DeleteItem"][1]["Id"] = 3312164 -- 【库】 3312164 【enzf库里没有该物品】[属性:]
	tAprilOfflineActivities_Reward[3312164]["RewardItem"] = {}
	tAprilOfflineActivities_Reward[3312164]["RewardItem"][1] = {}
	tAprilOfflineActivities_Reward[3312164]["RewardItem"][1]["Id"] = 195485 -- 【库】InvincibleEastern(Supreme)[属性:0]【表格】InvincibleEastern(Supreme)
	tAprilOfflineActivities_Reward[3312164]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑InvincibleEastern(Supreme)*1
	
--Log表
local tAprilOfflineActivities_Log={}
	tAprilOfflineActivities_Log["OverTimeDelItem"] = "0,0,%d,%d,12001340,3,0,0"		--删除物品log

----------------------------------逻辑部分---------------------------------------------

function AprilOfflineActivities_ItemPackage(nItemId)
	--过期删除
	if nItemId ~= 3312145 then 
		if not Sys_ChkFullTime(tActivityTime["AprilOfflineActivities"]["ActivityTime"]) then
			local nItemNum = Get_CountItemType(nItemId,0)
			if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
				Sys_SaveActionFestivalLog(string.format(tAprilOfflineActivities_Log["OverTimeDelItem"],nItemId,nItemNum),nUserId)
				User_TalkChannel2005(tAprilOfflineActivities_Text["OverTime"])
			end
			return
		end 
	end
	--使用到达上限删除
	local nEvent = tAprilOfflineActivities_Reward[nItemId]["EventType"]
	local nType = tAprilOfflineActivities_Reward[nItemId]["DataType"]
	local nTotalData = tAprilOfflineActivities_Reward[nItemId]["RewardTotalData"]
	local nData = Get_UserStatisticValue(nEvent,nType)

	-- 对掩码值进行分解，取出总的次数跟今天的次数
	local nNowSingleData = nData%10000
	local nNowTotalData = (nData - nNowSingleData)/10000
	User_TalkChannel2005(tostring(nNowTotalData))
	if nNowTotalData >= nTotalData then
		local nItemNum = Get_CountItemType(nItemId,0)
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			Sys_SaveActionFestivalLog(string.format(tAprilOfflineActivities_Log["OverTimeDelItem"],nItemId,nItemNum))
			User_TalkChannel2005(tAprilOfflineActivities_Text["NoNum"])
		end
		return
	end
	
	RewardTemplate_UseItemAndMsg(tAprilOfflineActivities_Reward[nItemId])
end 

---------------------------------物品部分---------------------------------------------
--------物品无对白模板
--天天乐系列礼包
tItem[3312145] = tItem[3312145] or {}
tItem[3312145]["Function"] = function(nItemId,sItemName)
	AprilOfflineActivities_ItemPackage(nItemId)
end
tItem[3312146] = tItem[3312145] or {}
tItem[3312151] = tItem[3312145] or {}
tItem[3312165] = tItem[3312145] or {}
--普通礼包
tItem[3312147] = tItem[3312147] or {}
tItem[3312147]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tAprilOfflineActivities_Reward[nItemId])
end
tItem[3312148] = tItem[3312147] or {}
tItem[3312149] = tItem[3312147] or {}
tItem[3312150] = tItem[3312147] or {}
tItem[3312152] = tItem[3312147] or {}
tItem[3312153] = tItem[3312147] or {}
tItem[3312154] = tItem[3312147] or {}
tItem[3312155] = tItem[3312147] or {}
tItem[3312156] = tItem[3312147] or {}
tItem[3312157] = tItem[3312147] or {}
tItem[3312158] = tItem[3312147] or {}
tItem[3312159] = tItem[3312147] or {}
tItem[3312160] = tItem[3312147] or {}
tItem[3312161] = tItem[3312147] or {}
tItem[3312162] = tItem[3312147] or {}
tItem[3312163] = tItem[3312147] or {}
tItem[3312164] = tItem[3312147] or {}
