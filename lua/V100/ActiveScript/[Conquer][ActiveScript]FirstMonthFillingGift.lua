------------------------------------------------------------------------------------
--Name:		190822[英文征服][活动脚本]9月月首充礼包（9.24-9.30）
--Creator: 	兰瑞妹
--Created:	2019/08/22
------------------------------------------------------------------------------------

-- 命名前缀
-- FirstMonth_FillingGift_

-- logid 12001585

-- #stc 掩码说明 
-- #stc(203,14) 总次数，基数1000000000，取8~10是 5000赠品天石礼包 总开启次数，5~7是 修行值10000 总开启次数，2~4是 微光星陨石*100 总开启次数
-- #stc(203,15) 总次数，基数1000000000，取8~10是 气力值10000点 总开启次数，5~7是 赠品赤练石+1*30 总开启次数，2~4是 赠品马匹+1*30 总开启次数
-- #stc(203,16) 总次数，基数1000000000，取8~10是 赠流星*100 总开启次数，5~7是 真气礼包*100 总开启次数
-- #stc(203,17) 5000赠品天石礼包		每天开1次，连续开100天，每天获得50赠点==1表示当天已开
-- #stc(203,18) 修行值10000				每天开1次，连续开100天，每天获得100修行值==1表示当天已开
-- #stc(203,19) 微光星陨石*100			每天开1次，连续开100天，每天获得1颗微光星陨石==1表示当天已开
-- #stc(203,20) 气力值10000点 			每天开1次，连续开100天，每天获得100气力值 ==1表示当天已开
-- #stc(203,21) 赠品赤练石+1*30			每天开1次，连续开30天，每天获得赠品赤炼石+1*1==1表示当天已开
-- #stc(203,22) 赠品马匹+1*30 			每天开1次，连续开30天，每天获得赠品马匹+1*1 ==1表示当天已开
-- #stc(203,23) 赠流星*100 				每天开1次，连续开100天，每天获得1颗赠品流星 ==1表示当天已开
-- #stc(203,24) 真气礼包*100 				每天开1次，连续开100天，每天获得1个赠真气礼包 ==1表示当天已开

--------------------------------------数据配置部分--------------------------------------
-- 常量表
local tFirstMonth_FillingGift_Count = {}
	-- 总次数初始值
	tFirstMonth_FillingGift_Count["BasicNum"] = 1000000000
	
-- 常量表
local tFirstMonth_FillingGift_Log = {}
	-- 超过总次数未删除的
	tFirstMonth_FillingGift_Log["OverTimeDel"] = "0,0,%d,1,12001585,2,0,0"
	
-- stc掩码
local tFirstMonth_FillingGift_Stc = {}
	-- 总次数
	tFirstMonth_FillingGift_Stc[1] = {}
	tFirstMonth_FillingGift_Stc[1]["EventType"] = 203
	tFirstMonth_FillingGift_Stc[1]["DataType"] = 14
	-- 总次数
	tFirstMonth_FillingGift_Stc[2] = {}
	tFirstMonth_FillingGift_Stc[2]["EventType"] = 203
	tFirstMonth_FillingGift_Stc[2]["DataType"] = 15
	-- 总次数
	tFirstMonth_FillingGift_Stc[3] = {}
	tFirstMonth_FillingGift_Stc[3]["EventType"] = 203
	tFirstMonth_FillingGift_Stc[3]["DataType"] = 16
	-- 每天开1次，连续开100天，每天获得50赠点
	tFirstMonth_FillingGift_Stc[3313590] = {}
	tFirstMonth_FillingGift_Stc[3313590]["EventType"] = 203
	tFirstMonth_FillingGift_Stc[3313590]["DataType"] = 17
	tFirstMonth_FillingGift_Stc[3313590]["Limit"] = 100
	tFirstMonth_FillingGift_Stc[3313590]["TotalIndex"] = 1
	tFirstMonth_FillingGift_Stc[3313590]["TotalAdd"] = 1
	tFirstMonth_FillingGift_Stc[3313590]["TotalStart"] = 8
	tFirstMonth_FillingGift_Stc[3313590]["TotalEnd"] = 10
	-- 每天开1次，连续开100天，每天获得100修行值
	tFirstMonth_FillingGift_Stc[3313591] = {}
	tFirstMonth_FillingGift_Stc[3313591]["EventType"] = 203
	tFirstMonth_FillingGift_Stc[3313591]["DataType"] = 18
	tFirstMonth_FillingGift_Stc[3313591]["Limit"] = 100
	tFirstMonth_FillingGift_Stc[3313591]["TotalIndex"] = 1
	tFirstMonth_FillingGift_Stc[3313591]["TotalAdd"] = 1000
	tFirstMonth_FillingGift_Stc[3313591]["TotalStart"] = 5
	tFirstMonth_FillingGift_Stc[3313591]["TotalEnd"] = 7
	-- 每天开1次，连续开100天，每天获得1颗微光星陨石
	tFirstMonth_FillingGift_Stc[3313592] = {}
	tFirstMonth_FillingGift_Stc[3313592]["EventType"] = 203
	tFirstMonth_FillingGift_Stc[3313592]["DataType"] = 19
	tFirstMonth_FillingGift_Stc[3313592]["Limit"] = 100
	tFirstMonth_FillingGift_Stc[3313592]["TotalIndex"] = 1
	tFirstMonth_FillingGift_Stc[3313592]["TotalAdd"] = 1000000
	tFirstMonth_FillingGift_Stc[3313592]["TotalStart"] = 2
	tFirstMonth_FillingGift_Stc[3313592]["TotalEnd"] = 4
	-- 每天开1次，连续开100天，每天获得100气力值
	tFirstMonth_FillingGift_Stc[3313593] = {}
	tFirstMonth_FillingGift_Stc[3313593]["EventType"] = 203
	tFirstMonth_FillingGift_Stc[3313593]["DataType"] = 20
	tFirstMonth_FillingGift_Stc[3313593]["Limit"] = 100
	tFirstMonth_FillingGift_Stc[3313593]["TotalIndex"] = 2
	tFirstMonth_FillingGift_Stc[3313593]["TotalAdd"] = 1
	tFirstMonth_FillingGift_Stc[3313593]["TotalStart"] = 8
	tFirstMonth_FillingGift_Stc[3313593]["TotalEnd"] = 10
	-- 每天开1次，连续开30天，每天获得赠品赤炼石+1*1
	tFirstMonth_FillingGift_Stc[3313594] = {}
	tFirstMonth_FillingGift_Stc[3313594]["EventType"] = 203
	tFirstMonth_FillingGift_Stc[3313594]["DataType"] = 21
	tFirstMonth_FillingGift_Stc[3313594]["Limit"] = 30
	tFirstMonth_FillingGift_Stc[3313594]["TotalIndex"] = 2
	tFirstMonth_FillingGift_Stc[3313594]["TotalAdd"] = 1000
	tFirstMonth_FillingGift_Stc[3313594]["TotalStart"] = 5
	tFirstMonth_FillingGift_Stc[3313594]["TotalEnd"] = 7
	-- 每天开1次，连续开30天，每天获得赠品马匹+1*1
	tFirstMonth_FillingGift_Stc[3313595] = {}
	tFirstMonth_FillingGift_Stc[3313595]["EventType"] = 203
	tFirstMonth_FillingGift_Stc[3313595]["DataType"] = 22
	tFirstMonth_FillingGift_Stc[3313595]["Limit"] = 30
	tFirstMonth_FillingGift_Stc[3313595]["TotalIndex"] = 2
	tFirstMonth_FillingGift_Stc[3313595]["TotalAdd"] = 1000000
	tFirstMonth_FillingGift_Stc[3313595]["TotalStart"] = 2
	tFirstMonth_FillingGift_Stc[3313595]["TotalEnd"] = 4
	-- 每天开1次，连续开100天，每天获得1颗赠品流星
	tFirstMonth_FillingGift_Stc[3313596] = {}
	tFirstMonth_FillingGift_Stc[3313596]["EventType"] = 203
	tFirstMonth_FillingGift_Stc[3313596]["DataType"] = 23
	tFirstMonth_FillingGift_Stc[3313596]["Limit"] = 100
	tFirstMonth_FillingGift_Stc[3313596]["TotalIndex"] = 3
	tFirstMonth_FillingGift_Stc[3313596]["TotalAdd"] = 1
	tFirstMonth_FillingGift_Stc[3313596]["TotalStart"] = 8
	tFirstMonth_FillingGift_Stc[3313596]["TotalEnd"] = 10
	-- 每天开1次，连续开100天，每天获得1个赠真气礼包
	tFirstMonth_FillingGift_Stc[3313597] = {}
	tFirstMonth_FillingGift_Stc[3313597]["EventType"] = 203
	tFirstMonth_FillingGift_Stc[3313597]["DataType"] = 24
	tFirstMonth_FillingGift_Stc[3313597]["Limit"] = 100
	tFirstMonth_FillingGift_Stc[3313597]["TotalIndex"] = 3
	tFirstMonth_FillingGift_Stc[3313597]["TotalAdd"] = 1000
	tFirstMonth_FillingGift_Stc[3313597]["TotalStart"] = 5
	tFirstMonth_FillingGift_Stc[3313597]["TotalEnd"] = 7
	
-- 奖励表
local tFirstMonth_FillingGift_Reward = {}
	-- ===充值返利豪华大礼盒
	-- ===索引: tFirstMonth_FillingGift_Reward[3313589]
	-- ===删除: 3313589,1
	tFirstMonth_FillingGift_Reward[3313589] = {}
	tFirstMonth_FillingGift_Reward[3313589]["LogId"] = 12001585
	tFirstMonth_FillingGift_Reward[3313589]["DeleteItem"] = {}
	tFirstMonth_FillingGift_Reward[3313589]["DeleteItem"][1] = {}
	tFirstMonth_FillingGift_Reward[3313589]["DeleteItem"][1]["Id"] = 3313589 -- 【库】充值返利豪华大礼盒[属性:9]
	tFirstMonth_FillingGift_Reward[3313589]["RewardItem"] = {}
	tFirstMonth_FillingGift_Reward[3313589]["RewardItem"][1] = {}
	tFirstMonth_FillingGift_Reward[3313589]["RewardItem"][1]["Id"] = 3313590 -- 天石（赠）首充礼盒[3313590][属性:9][叠加:1][金币:0], 【表格】天石（赠）首充礼盒
	tFirstMonth_FillingGift_Reward[3313589]["RewardItem"][1]["Attr"] = "0 1" -- 天石（赠）首充礼盒*1
	tFirstMonth_FillingGift_Reward[3313589]["RewardItem"][2] = {}
	tFirstMonth_FillingGift_Reward[3313589]["RewardItem"][2]["Id"] = 3313591 -- 修行值首充礼盒[3313591][属性:9][叠加:1][金币:0], 【表格】修行值首充礼盒
	tFirstMonth_FillingGift_Reward[3313589]["RewardItem"][2]["Attr"] = "0 1" -- 修行值首充礼盒*1
	tFirstMonth_FillingGift_Reward[3313589]["RewardItem"][3] = {}
	tFirstMonth_FillingGift_Reward[3313589]["RewardItem"][3]["Id"] = 3313592 -- 微光星陨石首充礼盒[3313592][属性:9][叠加:1][金币:0], 【表格】微光星陨石首充礼盒
	tFirstMonth_FillingGift_Reward[3313589]["RewardItem"][3]["Attr"] = "0 1" -- 微光星陨石首充礼盒*1
	tFirstMonth_FillingGift_Reward[3313589]["RewardItem"][4] = {}
	tFirstMonth_FillingGift_Reward[3313589]["RewardItem"][4]["Id"] = 3313593 -- 气力值首充礼盒[3313593][属性:9][叠加:1][金币:0], 【表格】气力值首充礼盒
	tFirstMonth_FillingGift_Reward[3313589]["RewardItem"][4]["Attr"] = "0 1" -- 气力值首充礼盒*1
	tFirstMonth_FillingGift_Reward[3313589]["RewardItem"][5] = {}
	tFirstMonth_FillingGift_Reward[3313589]["RewardItem"][5]["Id"] = 3313594 -- 赤练石（赠）首充礼盒[3313594][属性:9][叠加:1][金币:0], 【表格】赤练石（赠）首充礼盒
	tFirstMonth_FillingGift_Reward[3313589]["RewardItem"][5]["Attr"] = "0 1" -- 赤练石（赠）首充礼盒*1
	tFirstMonth_FillingGift_Reward[3313589]["RewardItem"][6] = {}
	tFirstMonth_FillingGift_Reward[3313589]["RewardItem"][6]["Id"] = 3313595 -- +1骏马（赠）首充礼盒[3313595][属性:9][叠加:1][金币:0], 【表格】 +1骏马（赠）首充礼盒
	tFirstMonth_FillingGift_Reward[3313589]["RewardItem"][6]["Attr"] = "0 1" -- +1骏马（赠）首充礼盒*1
	tFirstMonth_FillingGift_Reward[3313589]["RewardItem"][7] = {}
	tFirstMonth_FillingGift_Reward[3313589]["RewardItem"][7]["Id"] = 3313596 -- 流星（赠）首充礼盒[3313596][属性:9][叠加:1][金币:0], 【表格】流星（赠）首充礼盒
	tFirstMonth_FillingGift_Reward[3313589]["RewardItem"][7]["Attr"] = "0 1" -- 流星（赠）首充礼盒*1
	tFirstMonth_FillingGift_Reward[3313589]["RewardItem"][8] = {}
	tFirstMonth_FillingGift_Reward[3313589]["RewardItem"][8]["Id"] = 3313597 -- 真气首充礼盒[3313597][属性:9][叠加:1][金币:0], 【表格】真气首充礼盒
	tFirstMonth_FillingGift_Reward[3313589]["RewardItem"][8]["Attr"] = "0 1" -- 真气首充礼盒*1
	tFirstMonth_FillingGift_Reward[3313589]["RewardItem"][9] = {}
	tFirstMonth_FillingGift_Reward[3313589]["RewardItem"][9]["Id"] = 3313598 -- P18Anima极运礼盒[3313598][属性:9][叠加:1][金币:0], 【表格】P18Anima极运礼盒
	tFirstMonth_FillingGift_Reward[3313589]["RewardItem"][9]["Attr"] = "0 1" -- P18Anima极运礼盒*1
	tFirstMonth_FillingGift_Reward[3313589]["RewardEffect"] = {}
	tFirstMonth_FillingGift_Reward[3313589]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFirstMonth_FillingGift_Reward[3313589]["RewardEffect"]["Effect"] = "angelwing"


	tFirstMonth_FillingGift_Reward[3313590] = {}
	-- ===天石（赠）首充礼盒
	-- ===索引: tFirstMonth_FillingGift_Reward[3313590][1]
	-- ===NewEMoneyLog: 10000,775
	tFirstMonth_FillingGift_Reward[3313590][1] = {}
	tFirstMonth_FillingGift_Reward[3313590][1]["LogId"] = 12001585
	tFirstMonth_FillingGift_Reward[3313590][1]["RewardEMoneyMono"] = {}
	tFirstMonth_FillingGift_Reward[3313590][1]["RewardEMoneyMono"]["Value"] = 50 -- 天石（赠）, 【需求】50天石（赠）
	tFirstMonth_FillingGift_Reward[3313590][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	775"
	tFirstMonth_FillingGift_Reward[3313590][1]["RewardEffect"] = {}
	tFirstMonth_FillingGift_Reward[3313590][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFirstMonth_FillingGift_Reward[3313590][1]["RewardEffect"]["Effect"] = "angelwing"


	tFirstMonth_FillingGift_Reward[3313590][2] = {}
	-- ===天石（赠）首充礼盒最后一次（100天）
	-- ===索引: tFirstMonth_FillingGift_Reward[3313590][2]
	-- ===删除: 3313590,1
	-- ===NewEMoneyLog: 10000,755
	tFirstMonth_FillingGift_Reward[3313590][2]["LogId"] = 12001585
	tFirstMonth_FillingGift_Reward[3313590][2]["DeleteItem"] = {}
	tFirstMonth_FillingGift_Reward[3313590][2]["DeleteItem"][1] = {}
	tFirstMonth_FillingGift_Reward[3313590][2]["DeleteItem"][1]["Id"] = 3313590 -- 【库】天石（赠）首充礼盒[属性:9]
	tFirstMonth_FillingGift_Reward[3313590][2]["RewardEMoneyMono"] = {}
	tFirstMonth_FillingGift_Reward[3313590][2]["RewardEMoneyMono"]["Value"] = 50 -- 天石（赠）, 【需求】50天石（赠）
	tFirstMonth_FillingGift_Reward[3313590][2]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	755"
	tFirstMonth_FillingGift_Reward[3313590][2]["RewardEffect"] = {}
	tFirstMonth_FillingGift_Reward[3313590][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFirstMonth_FillingGift_Reward[3313590][2]["RewardEffect"]["Effect"] = "angelwing"


	tFirstMonth_FillingGift_Reward[3313591] = {}
	-- ===修行值首充礼盒
	-- ===索引: tFirstMonth_FillingGift_Reward[3313591][1]
	tFirstMonth_FillingGift_Reward[3313591][1] = {}
	tFirstMonth_FillingGift_Reward[3313591][1]["LogId"] = 12001585
	tFirstMonth_FillingGift_Reward[3313591][1]["RewardCultivation"] = {}
	tFirstMonth_FillingGift_Reward[3313591][1]["RewardCultivation"]["Value"] = 100 -- 修行值, 【需求】100修行值
	tFirstMonth_FillingGift_Reward[3313591][1]["RewardEffect"] = {}
	tFirstMonth_FillingGift_Reward[3313591][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFirstMonth_FillingGift_Reward[3313591][1]["RewardEffect"]["Effect"] = "angelwing"


	tFirstMonth_FillingGift_Reward[3313591][2] = {}
	-- ===修行值首充礼盒最后一次（100天）
	-- ===索引: tFirstMonth_FillingGift_Reward[3313591][2]
	-- ===删除: 3313591,1
	tFirstMonth_FillingGift_Reward[3313591][2]["LogId"] = 12001585
	tFirstMonth_FillingGift_Reward[3313591][2]["DeleteItem"] = {}
	tFirstMonth_FillingGift_Reward[3313591][2]["DeleteItem"][1] = {}
	tFirstMonth_FillingGift_Reward[3313591][2]["DeleteItem"][1]["Id"] = 3313591 -- 【库】修行值首充礼盒[属性:9]
	tFirstMonth_FillingGift_Reward[3313591][2]["RewardCultivation"] = {}
	tFirstMonth_FillingGift_Reward[3313591][2]["RewardCultivation"]["Value"] = 100 -- 修行值, 【需求】100修行值
	tFirstMonth_FillingGift_Reward[3313591][2]["RewardEffect"] = {}
	tFirstMonth_FillingGift_Reward[3313591][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFirstMonth_FillingGift_Reward[3313591][2]["RewardEffect"]["Effect"] = "angelwing"


	tFirstMonth_FillingGift_Reward[3313592] = {}
	-- ===微光星陨石首充礼盒
	-- ===索引: tFirstMonth_FillingGift_Reward[3313592][1]
	tFirstMonth_FillingGift_Reward[3313592][1] = {}
	tFirstMonth_FillingGift_Reward[3313592][1]["LogId"] = 12001585
	tFirstMonth_FillingGift_Reward[3313592][1]["RewardItem"] = {}
	tFirstMonth_FillingGift_Reward[3313592][1]["RewardItem"][1] = {}
	tFirstMonth_FillingGift_Reward[3313592][1]["RewardItem"][1]["Id"] = 3009000 -- TwilightStarStone[3009000][属性:9][叠加:0][金币:0], 【表格】1颗微光星陨石
	tFirstMonth_FillingGift_Reward[3313592][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的TwilightStarStone*1
	tFirstMonth_FillingGift_Reward[3313592][1]["RewardEffect"] = {}
	tFirstMonth_FillingGift_Reward[3313592][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFirstMonth_FillingGift_Reward[3313592][1]["RewardEffect"]["Effect"] = "angelwing"


	tFirstMonth_FillingGift_Reward[3313592][2] = {}
	-- ===微光星陨石首充礼盒最后一次（100天）
	-- ===索引: tFirstMonth_FillingGift_Reward[3313592][2]
	-- ===删除: 3313592,1
	tFirstMonth_FillingGift_Reward[3313592][2]["LogId"] = 12001585
	tFirstMonth_FillingGift_Reward[3313592][2]["DeleteItem"] = {}
	tFirstMonth_FillingGift_Reward[3313592][2]["DeleteItem"][1] = {}
	tFirstMonth_FillingGift_Reward[3313592][2]["DeleteItem"][1]["Id"] = 3313592 -- 【库】微光星陨石首充礼盒[属性:9]
	tFirstMonth_FillingGift_Reward[3313592][2]["RewardItem"] = {}
	tFirstMonth_FillingGift_Reward[3313592][2]["RewardItem"][1] = {}
	tFirstMonth_FillingGift_Reward[3313592][2]["RewardItem"][1]["Id"] = 3009000 -- TwilightStarStone[3009000][属性:9][叠加:0][金币:0], 【表格】1颗微光星陨石
	tFirstMonth_FillingGift_Reward[3313592][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的TwilightStarStone*1
	tFirstMonth_FillingGift_Reward[3313592][2]["RewardEffect"] = {}
	tFirstMonth_FillingGift_Reward[3313592][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFirstMonth_FillingGift_Reward[3313592][2]["RewardEffect"]["Effect"] = "angelwing"


	tFirstMonth_FillingGift_Reward[3313593] = {}
	-- ===气力值首充礼盒
	-- ===索引: tFirstMonth_FillingGift_Reward[3313593][1]
	tFirstMonth_FillingGift_Reward[3313593][1] = {}
	tFirstMonth_FillingGift_Reward[3313593][1]["LogId"] = 12001585
	tFirstMonth_FillingGift_Reward[3313593][1]["RewardStrengthValue"] = {}
	tFirstMonth_FillingGift_Reward[3313593][1]["RewardStrengthValue"]["Value"] = 100 -- 气力值, 【需求】100气力值
	tFirstMonth_FillingGift_Reward[3313593][1]["RewardEffect"] = {}
	tFirstMonth_FillingGift_Reward[3313593][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFirstMonth_FillingGift_Reward[3313593][1]["RewardEffect"]["Effect"] = "angelwing"


	tFirstMonth_FillingGift_Reward[3313593][2] = {}
	-- ===气力值首充礼盒最后一次（100天）
	-- ===索引: tFirstMonth_FillingGift_Reward[3313593][2]
	-- ===删除: 3313593,1
	tFirstMonth_FillingGift_Reward[3313593][2]["LogId"] = 12001585
	tFirstMonth_FillingGift_Reward[3313593][2]["DeleteItem"] = {}
	tFirstMonth_FillingGift_Reward[3313593][2]["DeleteItem"][1] = {}
	tFirstMonth_FillingGift_Reward[3313593][2]["DeleteItem"][1]["Id"] = 3313593 -- 【库】气力值首充礼盒[属性:9]
	tFirstMonth_FillingGift_Reward[3313593][2]["RewardStrengthValue"] = {}
	tFirstMonth_FillingGift_Reward[3313593][2]["RewardStrengthValue"]["Value"] = 100 -- 气力值, 【需求】100气力值
	tFirstMonth_FillingGift_Reward[3313593][2]["RewardEffect"] = {}
	tFirstMonth_FillingGift_Reward[3313593][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFirstMonth_FillingGift_Reward[3313593][2]["RewardEffect"]["Effect"] = "angelwing"


	tFirstMonth_FillingGift_Reward[3313594] = {}
	-- ===赤练石（赠）首充礼盒
	-- ===索引: tFirstMonth_FillingGift_Reward[3313594][1]
	tFirstMonth_FillingGift_Reward[3313594][1] = {}
	tFirstMonth_FillingGift_Reward[3313594][1]["LogId"] = 12001585
	tFirstMonth_FillingGift_Reward[3313594][1]["RewardItem"] = {}
	tFirstMonth_FillingGift_Reward[3313594][1]["RewardItem"][1] = {}
	tFirstMonth_FillingGift_Reward[3313594][1]["RewardItem"][1]["Id"] = 730001 -- +1Stone[730001][属性:0][叠加:0][金币:0], 【表格】赠品赤炼石+1*1
	tFirstMonth_FillingGift_Reward[3313594][1]["RewardItem"][1]["Attr"] = "0 1 3" -- +1Stone（赠）*1
	tFirstMonth_FillingGift_Reward[3313594][1]["RewardEffect"] = {}
	tFirstMonth_FillingGift_Reward[3313594][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFirstMonth_FillingGift_Reward[3313594][1]["RewardEffect"]["Effect"] = "angelwing"


	tFirstMonth_FillingGift_Reward[3313594][2] = {}
	-- ===赤练石（赠）首充礼盒最后一次（30天）
	-- ===索引: tFirstMonth_FillingGift_Reward[3313594][2]
	-- ===删除: 3313594,1
	tFirstMonth_FillingGift_Reward[3313594][2]["LogId"] = 12001585
	tFirstMonth_FillingGift_Reward[3313594][2]["DeleteItem"] = {}
	tFirstMonth_FillingGift_Reward[3313594][2]["DeleteItem"][1] = {}
	tFirstMonth_FillingGift_Reward[3313594][2]["DeleteItem"][1]["Id"] = 3313594 -- 【库】赤练石（赠）首充礼盒[属性:9]
	tFirstMonth_FillingGift_Reward[3313594][2]["RewardItem"] = {}
	tFirstMonth_FillingGift_Reward[3313594][2]["RewardItem"][1] = {}
	tFirstMonth_FillingGift_Reward[3313594][2]["RewardItem"][1]["Id"] = 730001 -- +1Stone[730001][属性:0][叠加:0][金币:0], 【表格】赠品赤炼石+1*1
	tFirstMonth_FillingGift_Reward[3313594][2]["RewardItem"][1]["Attr"] = "0 1 3" -- +1Stone（赠）*1
	tFirstMonth_FillingGift_Reward[3313594][2]["RewardEffect"] = {}
	tFirstMonth_FillingGift_Reward[3313594][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFirstMonth_FillingGift_Reward[3313594][2]["RewardEffect"]["Effect"] = "angelwing"


	tFirstMonth_FillingGift_Reward[3313595] = {}
	-- === +1骏马（赠）首充礼盒
	-- ===索引: tFirstMonth_FillingGift_Reward[3313595][1]
	tFirstMonth_FillingGift_Reward[3313595][1] = {}
	tFirstMonth_FillingGift_Reward[3313595][1]["LogId"] = 12001585
	tFirstMonth_FillingGift_Reward[3313595][1]["RewardItem"] = {}
	tFirstMonth_FillingGift_Reward[3313595][1]["RewardItem"][1] = {}
	tFirstMonth_FillingGift_Reward[3313595][1]["RewardItem"][1]["Id"] = 300000 -- Steed[300000][属性:0][叠加:0][金币:0], 【表格】雪脂马
	tFirstMonth_FillingGift_Reward[3313595][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 65430 0 255 0 1 0 0 0 0 0 0 150" -- （追加+1）雪脂马(普通马)（赠）*1
	tFirstMonth_FillingGift_Reward[3313595][1]["RewardEffect"] = {}
	tFirstMonth_FillingGift_Reward[3313595][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFirstMonth_FillingGift_Reward[3313595][1]["RewardEffect"]["Effect"] = "angelwing"


	tFirstMonth_FillingGift_Reward[3313595][2] = {}
	-- === +1骏马（赠）首充礼盒最后一次（30天）
	-- ===索引: tFirstMonth_FillingGift_Reward[3313595][2]
	-- ===删除: 3313595,1
	tFirstMonth_FillingGift_Reward[3313595][2]["LogId"] = 12001585
	tFirstMonth_FillingGift_Reward[3313595][2]["DeleteItem"] = {}
	tFirstMonth_FillingGift_Reward[3313595][2]["DeleteItem"][1] = {}
	tFirstMonth_FillingGift_Reward[3313595][2]["DeleteItem"][1]["Id"] = 3313595 -- 【库】+1骏马（赠）首充礼盒[属性:9]
	tFirstMonth_FillingGift_Reward[3313595][2]["RewardItem"] = {}
	tFirstMonth_FillingGift_Reward[3313595][2]["RewardItem"][1] = {}
	tFirstMonth_FillingGift_Reward[3313595][2]["RewardItem"][1]["Id"] = 300000 -- Steed[300000][属性:0][叠加:0][金币:0], 【表格】雪脂马
	tFirstMonth_FillingGift_Reward[3313595][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 65430 0 255 0 1 0 0 0 0 0 0 150" -- （追加+1）雪脂马(普通马)（赠）*1
	tFirstMonth_FillingGift_Reward[3313595][2]["RewardEffect"] = {}
	tFirstMonth_FillingGift_Reward[3313595][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFirstMonth_FillingGift_Reward[3313595][2]["RewardEffect"]["Effect"] = "angelwing"


	tFirstMonth_FillingGift_Reward[3313596] = {}
	-- ===流星（赠）首充礼盒
	-- ===索引: tFirstMonth_FillingGift_Reward[3313596][1]
	tFirstMonth_FillingGift_Reward[3313596][1] = {}
	tFirstMonth_FillingGift_Reward[3313596][1]["LogId"] = 12001585
	tFirstMonth_FillingGift_Reward[3313596][1]["RewardItem"] = {}
	tFirstMonth_FillingGift_Reward[3313596][1]["RewardItem"][1] = {}
	tFirstMonth_FillingGift_Reward[3313596][1]["RewardItem"][1]["Id"] = 1088001 -- Meteor[1088001][属性:0][叠加:0][金币:10000], 【表格】1颗赠品流星
	tFirstMonth_FillingGift_Reward[3313596][1]["RewardItem"][1]["Attr"] = "0 1 3" -- Meteor（赠）*1
	tFirstMonth_FillingGift_Reward[3313596][1]["RewardEffect"] = {}
	tFirstMonth_FillingGift_Reward[3313596][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFirstMonth_FillingGift_Reward[3313596][1]["RewardEffect"]["Effect"] = "angelwing"


	tFirstMonth_FillingGift_Reward[3313596][2] = {}
	-- ===流星（赠）首充礼盒最后一次（100天）
	-- ===索引: tFirstMonth_FillingGift_Reward[3313596][2]
	-- ===删除: 3313596,1
	tFirstMonth_FillingGift_Reward[3313596][2]["LogId"] = 12001585
	tFirstMonth_FillingGift_Reward[3313596][2]["DeleteItem"] = {}
	tFirstMonth_FillingGift_Reward[3313596][2]["DeleteItem"][1] = {}
	tFirstMonth_FillingGift_Reward[3313596][2]["DeleteItem"][1]["Id"] = 3313596 -- 【库】流星（赠）首充礼盒[属性:9]
	tFirstMonth_FillingGift_Reward[3313596][2]["RewardItem"] = {}
	tFirstMonth_FillingGift_Reward[3313596][2]["RewardItem"][1] = {}
	tFirstMonth_FillingGift_Reward[3313596][2]["RewardItem"][1]["Id"] = 1088001 -- Meteor[1088001][属性:0][叠加:0][金币:10000], 【表格】1颗赠品流星
	tFirstMonth_FillingGift_Reward[3313596][2]["RewardItem"][1]["Attr"] = "0 1 3" -- Meteor（赠）*1
	tFirstMonth_FillingGift_Reward[3313596][2]["RewardEffect"] = {}
	tFirstMonth_FillingGift_Reward[3313596][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFirstMonth_FillingGift_Reward[3313596][2]["RewardEffect"]["Effect"] = "angelwing"


	tFirstMonth_FillingGift_Reward[3313597] = {}
	-- ===真气首充礼盒
	-- ===索引: tFirstMonth_FillingGift_Reward[3313597][1]
	tFirstMonth_FillingGift_Reward[3313597][1] = {}
	tFirstMonth_FillingGift_Reward[3313597][1]["LogId"] = 12001585
	tFirstMonth_FillingGift_Reward[3313597][1]["RewardItem"] = {}
	tFirstMonth_FillingGift_Reward[3313597][1]["RewardItem"][1] = {}
	tFirstMonth_FillingGift_Reward[3313597][1]["RewardItem"][1]["Id"] = 3006542 -- TrainingTalentPack[3006542][属性:9][叠加:10000][金币:0], 【表格】1个赠真气礼包
	tFirstMonth_FillingGift_Reward[3313597][1]["RewardItem"][1]["Attr"] = "0 1" -- TrainingTalentPack*1
	tFirstMonth_FillingGift_Reward[3313597][1]["RewardEffect"] = {}
	tFirstMonth_FillingGift_Reward[3313597][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFirstMonth_FillingGift_Reward[3313597][1]["RewardEffect"]["Effect"] = "angelwing"


	tFirstMonth_FillingGift_Reward[3313597][2] = {}
	-- ===真气首充礼盒最后一次（100天）
	-- ===索引: tFirstMonth_FillingGift_Reward[3313597][2]
	-- ===删除: 3313597,1
	tFirstMonth_FillingGift_Reward[3313597][2]["LogId"] = 12001585
	tFirstMonth_FillingGift_Reward[3313597][2]["DeleteItem"] = {}
	tFirstMonth_FillingGift_Reward[3313597][2]["DeleteItem"][1] = {}
	tFirstMonth_FillingGift_Reward[3313597][2]["DeleteItem"][1]["Id"] = 3313597 -- 【库】真气首充礼盒[属性:9]
	tFirstMonth_FillingGift_Reward[3313597][2]["RewardItem"] = {}
	tFirstMonth_FillingGift_Reward[3313597][2]["RewardItem"][1] = {}
	tFirstMonth_FillingGift_Reward[3313597][2]["RewardItem"][1]["Id"] = 3006542 -- TrainingTalentPack[3006542][属性:9][叠加:10000][金币:0], 【表格】1个赠真气礼包
	tFirstMonth_FillingGift_Reward[3313597][2]["RewardItem"][1]["Attr"] = "0 1" -- TrainingTalentPack*1
	tFirstMonth_FillingGift_Reward[3313597][2]["RewardEffect"] = {}
	tFirstMonth_FillingGift_Reward[3313597][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFirstMonth_FillingGift_Reward[3313597][2]["RewardEffect"]["Effect"] = "angelwing"


	tFirstMonth_FillingGift_Reward[3313598] = {}
	-- ===P18Anima极运礼盒
	-- ===索引: tFirstMonth_FillingGift_Reward[3313598]
	-- ===删除: 3313598,1
	tFirstMonth_FillingGift_Reward[3313598]["LogId"] = 12001585
	tFirstMonth_FillingGift_Reward[3313598]["DeleteItem"] = {}
	tFirstMonth_FillingGift_Reward[3313598]["DeleteItem"][1] = {}
	tFirstMonth_FillingGift_Reward[3313598]["DeleteItem"][1]["Id"] = 3313598 -- 【库】P18Anima极运礼盒[属性:9]
	tFirstMonth_FillingGift_Reward[3313598]["RewardItem"] = {}
	tFirstMonth_FillingGift_Reward[3313598]["RewardItem"][1] = {}
	tFirstMonth_FillingGift_Reward[3313598]["RewardItem"][1]["Id"] = 3001407 -- EndeavorScroll[3001407][属性:0][叠加:0][金币:0], 【表格】天道酬勤卷轴
	tFirstMonth_FillingGift_Reward[3313598]["RewardItem"][1]["Attr"] = "0 2 3" -- EndeavorScroll（赠）*2
	tFirstMonth_FillingGift_Reward[3313598]["RewardEffect"] = {}
	tFirstMonth_FillingGift_Reward[3313598]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFirstMonth_FillingGift_Reward[3313598]["RewardEffect"]["Effect"] = "angelwing"


--------------------------------------逻辑配置部分--------------------------------------
-- 获取掩码值
function FirstMonth_FillingGift_GetStcValue(nIndex,nUserId)
	local nEvent = tFirstMonth_FillingGift_Stc[nIndex]["EventType"]
	local nType = tFirstMonth_FillingGift_Stc[nIndex]["DataType"]
	
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	return nData
end

--设置掩码值
function FirstMonth_FillingGift_SetStcValue(nIndex,nData,nUserId)
	local nEvent = tFirstMonth_FillingGift_Stc[nIndex]["EventType"]
	local nType = tFirstMonth_FillingGift_Stc[nIndex]["DataType"]
	
	Task_SetStatistic(nEvent,nType,nData,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
end

-- 增加掩码值
function FirstMonth_FillingGift_AddStcValue(nIndex,nData,nUserId)
	local nEvent = tFirstMonth_FillingGift_Stc[nIndex]["EventType"]
	local nType = tFirstMonth_FillingGift_Stc[nIndex]["DataType"]
	
	Task_AddStatistic(nEvent,nType,nData,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
end

-- 隔天重置
function FirstMonth_FillingGift_ClearStcInterval(nIndex,nUserId)
	local nEvent = tFirstMonth_FillingGift_Stc[nIndex]["EventType"]
	local nType = tFirstMonth_FillingGift_Stc[nIndex]["DataType"]
	
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
end

--------------------------------------物品使用
-- 礼包打开
function FirstMonth_FillingGift_OpenItem(nItemId)
	-- 隔天清除掩码
	FirstMonth_FillingGift_ClearStcInterval(nItemId)
	
	--获取礼包打开上限次数
	local nLimit = tFirstMonth_FillingGift_Stc[nItemId]["Limit"]
	-- 取剩余次数
	local tStcIndex = tFirstMonth_FillingGift_Stc[nItemId]
	local nTotalIndex = tStcIndex["TotalIndex"]
	local nAllTotalData = FirstMonth_FillingGift_GetStcValue(nTotalIndex) 
	local nBasicNum = tFirstMonth_FillingGift_Count["BasicNum"]
	local nTotalData = 0
	if nAllTotalData < nBasicNum then
		-- 如果总计算的未设置初始值
		FirstMonth_FillingGift_SetStcValue(nTotalIndex,nBasicNum)
		nTotalData = 0
	else
		local sTotalData = string.sub(nAllTotalData,tStcIndex["TotalStart"],tStcIndex["TotalEnd"])
		nTotalData = tonumber(sTotalData)
	end
	-- 计算剩余次数
	local nLastData = nLimit - nTotalData
	if nLastData <= 0 then
		-- 最后一次未删除判断
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			local sLog = string.format(tFirstMonth_FillingGift_Log["OverTimeDel"],nItemId)
			Sys_SaveActionFestivalLog(sLog)
		end
		return
	end
	-- 获取当天开启掩码值
	local nItemData = FirstMonth_FillingGift_GetStcValue(nItemId)
	if nItemData >= 1 then
		local sHaveOpen = tFirstMonth_FillingGift_Text["ItemUse"]["HaveOpen"]
		Sys_MsgBox(string.format(sHaveOpen,nLastData))
		return
	end
	
	-- 是否最后一次打开礼包
	local nRewardIndex = 1
	if nLastData == 1 then
		nRewardIndex = 2
	end
	
	-- 判断上限
	if not RewardTemplate_UpperLimit(tFirstMonth_FillingGift_Reward[nItemId][nRewardIndex]) then
		return
	end
	
	-- 设今日已开掩码
	FirstMonth_FillingGift_SetStcValue(nItemId,1)
	-- 设总次数掩码
	FirstMonth_FillingGift_AddStcValue(nTotalIndex,tStcIndex["TotalAdd"])
	
	-- 给奖励
	RewardTemplate_UseItem(tFirstMonth_FillingGift_Reward[nItemId][nRewardIndex])
	
	-- 提示
	local sRewardItem = tFirstMonth_FillingGift_Text[nItemId]
	local sReward = tFirstMonth_FillingGift_Text["ItemUse"]["Reward"]
	if nLastData == 1 then
		Sys_MsgBox(string.format(tFirstMonth_FillingGift_Text["ItemUse"]["RewardLast"],sRewardItem))
		return
	end
	
	Sys_MsgBox(string.format(sReward,sRewardItem,nLastData-1))
end


--------------------------------------物品模块--------------------------------------
-- 3313589,'充值返利豪华大礼盒'
tItem[3313589] = tItem[3313589] or {}
tItem[3313589]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tFirstMonth_FillingGift_Reward[nItemId])
end
-- 3313590,'天石（赠）首充礼盒'
tItem[3313590] = tItem[3313590] or {}
tItem[3313590]["Function"] = function(nItemId,sItemName)
	FirstMonth_FillingGift_OpenItem(nItemId)
end
-- 3313591,'修行值首充礼盒'
-- 3313592,'微光星陨石首充礼盒'
-- 3313593,'气力值首充礼盒'
-- 3313594,'赤练石（赠）首充礼盒'
-- 3313595,'+1骏马（赠）首充礼盒'
-- 3313596,'流星（赠）首充礼盒'
-- 3313597,'真气首充礼盒'
tItem[3313591] = tItem[3313590]
tItem[3313592] = tItem[3313590]
tItem[3313593] = tItem[3313590]
tItem[3313594] = tItem[3313590]
tItem[3313595] = tItem[3313590]
tItem[3313596] = tItem[3313590]
tItem[3313597] = tItem[3313590]

-- 3313598,'P18Anima极运礼盒'
tItem[3313598] = tItem[3313589] 

