------------------------------------------------------------------------------------
--Name:		180314[英文征服][活动脚本]]4月彩蛋收集活动(4.1-4.10)
--Creator: 	兰瑞妹
--Created:	2018/03/20
------------------------------------------------------------------------------------

-- 命名前缀
-- EasterEgg_Painting_

-- logid 12001031

-- #stc 掩码说明 
-- #stc(175,30) 背包信
-- #stc(175,31) 今日祷告次数 上限5次
-- #stc(175,32) 颜料上交次数
-- #stc(175,33) 正气令使用
-- #stc(175,34) 交换颜料每日一次
-- #stc(175,35) 玩家想要的颜料
-- #stc(175,36) 玩家删除的颜料

-- 常量表
local tEasterEgg_Painting_Count = {}
	-- 活动全长
	tEasterEgg_Painting_Count["ActivityTime"] = tActivityTime["EasterEggPainting"]["ActivityTime"]
-- 物品使用时间
	tEasterEgg_Painting_Count["ItemUseTime"] = tActivityTime["EasterEggPainting"]["ActivityTime"]
	
	-- 等级
	tEasterEgg_Painting_Count["Level"] = 80
	tEasterEgg_Painting_Count["Meto"] = 0
	
	-- 颜料id
	tEasterEgg_Painting_Count["Item"] = {3307852,3307853,3307854,3307855,3307856}
	tEasterEgg_Painting_Count["Text"] = {212,213,214,215,216}
	
	-- 上交时间2分钟
	tEasterEgg_Painting_Count["DelayTime"] = 12001031
	
	-- 读取进度动作时间
	tEasterEgg_Painting_Count["ActionId"] = 220
	tEasterEgg_Painting_Count["Time"] = 2
	
	-- 2分钟后发邮件
	tEasterEgg_Painting_Count["MailTime"] = 120
	
	-- 索引对白
	tEasterEgg_Painting_Count["TextIndex"] = {}
	tEasterEgg_Painting_Count["TextIndex"][1] = {"Text223","Text224"}
	tEasterEgg_Painting_Count["TextIndex"][2] = {"Text225","Text226"}
	tEasterEgg_Painting_Count["TextIndex"][3] = {"Text227","Text228"}
	
	-- 最高奖励档次
	tEasterEgg_Painting_Count["High"] = 10
	tEasterEgg_Painting_Count["Second"] = 5
	
-- Log表
local tEasterEgg_Painting_Log = {}
	-- 过期删除
	tEasterEgg_Painting_Log["OverDue"] = "0,0,%d,1,12001031,2,0,0"
	-- 删除颜料欢庆礼盒
	tEasterEgg_Painting_Log["DelLog"] = "0,0,3307858,1,12001031,2,0,0"
	
-- 记录玩家上交的表
local tEasterEgg_Painting_HandIn = {}

-- stc掩码
local tEasterEgg_Painting_Stc = {}
	-- 今日祷告次数 上限5次
	tEasterEgg_Painting_Stc[1] = {}
	tEasterEgg_Painting_Stc[1]["EventType"] = 175
	tEasterEgg_Painting_Stc[1]["DataType"] = 31
	tEasterEgg_Painting_Stc[1]["Limit"] = 5
	tEasterEgg_Painting_Stc[1]["Clear"] = 1
	-- 颜料上交次数
	tEasterEgg_Painting_Stc[2] = {}
	tEasterEgg_Painting_Stc[2]["EventType"] = 175
	tEasterEgg_Painting_Stc[2]["DataType"] = 32
	-- 交换福每日一次
	tEasterEgg_Painting_Stc[3] = {}
	tEasterEgg_Painting_Stc[3]["EventType"] = 175
	tEasterEgg_Painting_Stc[3]["DataType"] = 34
	tEasterEgg_Painting_Stc[3]["Clear"] = 1
	-- 玩家想要的福
	tEasterEgg_Painting_Stc[4] = {}
	tEasterEgg_Painting_Stc[4]["EventType"] = 175
	tEasterEgg_Painting_Stc[4]["DataType"] = 35
	-- 玩家旧的福
	tEasterEgg_Painting_Stc[5] = {}
	tEasterEgg_Painting_Stc[5]["EventType"] = 175
	tEasterEgg_Painting_Stc[5]["DataType"] = 36
	
-- 奖励表
local tEasterEgg_Painting_Reward = {}
	-- 上交颜料获得礼盒
	tEasterEgg_Painting_Reward[1] = {}
	tEasterEgg_Painting_Reward[1]["LogId"] = 12001031
	tEasterEgg_Painting_Reward[1]["LogStep"] = "1[2]"
	tEasterEgg_Painting_Reward[1]["DeleteItem"] = {}
	tEasterEgg_Painting_Reward[1]["DeleteItem"][1] = {}
	tEasterEgg_Painting_Reward[1]["DeleteItem"][1]["Id"] = 3307852
	tEasterEgg_Painting_Reward[1]["DeleteItem"][2] = {}
	tEasterEgg_Painting_Reward[1]["DeleteItem"][2]["Id"] = 3307853
	tEasterEgg_Painting_Reward[1]["DeleteItem"][3] = {}
	tEasterEgg_Painting_Reward[1]["DeleteItem"][3]["Id"] = 3307854
	tEasterEgg_Painting_Reward[1]["DeleteItem"][4] = {}
	tEasterEgg_Painting_Reward[1]["DeleteItem"][4]["Id"] = 3307855
	tEasterEgg_Painting_Reward[1]["DeleteItem"][5] = {}
	tEasterEgg_Painting_Reward[1]["DeleteItem"][5]["Id"] = 3307856
	tEasterEgg_Painting_Reward[1]["RewardItem"] = {}
	tEasterEgg_Painting_Reward[1]["RewardItem"][1] = {}
	tEasterEgg_Painting_Reward[1]["RewardItem"][1]["Id"] = 3307858
	tEasterEgg_Painting_Reward[1]["RewardItem"][1]["Attr"] = "0 1"
	tEasterEgg_Painting_Reward[1]["RewardEffect"] = {}
	tEasterEgg_Painting_Reward[1]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 删除颜料
	tEasterEgg_Painting_Reward[3307852] = {}
	tEasterEgg_Painting_Reward[3307852]["LogId"] = 12001031
	tEasterEgg_Painting_Reward[3307852]["DeleteItem"] = {}
	tEasterEgg_Painting_Reward[3307852]["DeleteItem"][1] = {}
	tEasterEgg_Painting_Reward[3307852]["DeleteItem"][1]["Id"] = 3307852
	tEasterEgg_Painting_Reward[3307852]["RewardNoNeedTip"] = 1
	tEasterEgg_Painting_Reward[3307853] = {}
	tEasterEgg_Painting_Reward[3307853]["LogId"] = 12001031
	tEasterEgg_Painting_Reward[3307853]["DeleteItem"] = {}
	tEasterEgg_Painting_Reward[3307853]["DeleteItem"][1] = {}
	tEasterEgg_Painting_Reward[3307853]["DeleteItem"][1]["Id"] = 3307853
	tEasterEgg_Painting_Reward[3307853]["RewardNoNeedTip"] = 1
	tEasterEgg_Painting_Reward[3307854] = {}
	tEasterEgg_Painting_Reward[3307854]["LogId"] = 12001031
	tEasterEgg_Painting_Reward[3307854]["DeleteItem"] = {}
	tEasterEgg_Painting_Reward[3307854]["DeleteItem"][1] = {}
	tEasterEgg_Painting_Reward[3307854]["DeleteItem"][1]["Id"] = 3307854
	tEasterEgg_Painting_Reward[3307854]["RewardNoNeedTip"] = 1
	tEasterEgg_Painting_Reward[3307855] = {}
	tEasterEgg_Painting_Reward[3307855]["LogId"] = 12001031
	tEasterEgg_Painting_Reward[3307855]["DeleteItem"] = {}
	tEasterEgg_Painting_Reward[3307855]["DeleteItem"][1] = {}
	tEasterEgg_Painting_Reward[3307855]["DeleteItem"][1]["Id"] = 3307855
	tEasterEgg_Painting_Reward[3307855]["RewardNoNeedTip"] = 1
	tEasterEgg_Painting_Reward[3307856] = {}
	tEasterEgg_Painting_Reward[3307856]["LogId"] = 12001031
	tEasterEgg_Painting_Reward[3307856]["DeleteItem"] = {}
	tEasterEgg_Painting_Reward[3307856]["DeleteItem"][1] = {}
	tEasterEgg_Painting_Reward[3307856]["DeleteItem"][1]["Id"] = 3307856
	tEasterEgg_Painting_Reward[3307856]["RewardNoNeedTip"] = 1
	
	-- 邮件获得颜料
	tEasterEgg_Painting_Reward["Mail"] = {}
	tEasterEgg_Painting_Reward["Mail"][3307852] = {}
	tEasterEgg_Painting_Reward["Mail"][3307852]["LogId"] = 12001031
	tEasterEgg_Painting_Reward["Mail"][3307852]["LogStep"] = "2[1]"
	tEasterEgg_Painting_Reward["Mail"][3307852]["RewardItem"] = {}
	tEasterEgg_Painting_Reward["Mail"][3307852]["RewardItem"][1] = {}
	tEasterEgg_Painting_Reward["Mail"][3307852]["RewardItem"][1]["Id"] = 3307852
	tEasterEgg_Painting_Reward["Mail"][3307852]["RewardItem"][1]["Attr"] = "0 1"
	tEasterEgg_Painting_Reward["Mail"][3307852]["RewardEffect"] = {}
	tEasterEgg_Painting_Reward["Mail"][3307852]["RewardEffect"]["Effect"] = "angelwing"
	tEasterEgg_Painting_Reward["Mail"][3307853] = {}
	tEasterEgg_Painting_Reward["Mail"][3307853]["LogId"] = 12001031
	tEasterEgg_Painting_Reward["Mail"][3307853]["LogStep"] = "2[1]"
	tEasterEgg_Painting_Reward["Mail"][3307853]["RewardItem"] = {}
	tEasterEgg_Painting_Reward["Mail"][3307853]["RewardItem"][1] = {}
	tEasterEgg_Painting_Reward["Mail"][3307853]["RewardItem"][1]["Id"] = 3307853
	tEasterEgg_Painting_Reward["Mail"][3307853]["RewardItem"][1]["Attr"] = "0 1"
	tEasterEgg_Painting_Reward["Mail"][3307853]["RewardEffect"] = {}
	tEasterEgg_Painting_Reward["Mail"][3307853]["RewardEffect"]["Effect"] = "angelwing"
	tEasterEgg_Painting_Reward["Mail"][3307854] = {}
	tEasterEgg_Painting_Reward["Mail"][3307854]["LogId"] = 12001031
	tEasterEgg_Painting_Reward["Mail"][3307854]["LogStep"] = "2[1]"
	tEasterEgg_Painting_Reward["Mail"][3307854]["RewardItem"] = {}
	tEasterEgg_Painting_Reward["Mail"][3307854]["RewardItem"][1] = {}
	tEasterEgg_Painting_Reward["Mail"][3307854]["RewardItem"][1]["Id"] = 3307854
	tEasterEgg_Painting_Reward["Mail"][3307854]["RewardItem"][1]["Attr"] = "0 1"
	tEasterEgg_Painting_Reward["Mail"][3307854]["RewardEffect"] = {}
	tEasterEgg_Painting_Reward["Mail"][3307854]["RewardEffect"]["Effect"] = "angelwing"
	tEasterEgg_Painting_Reward["Mail"][3307855] = {}
	tEasterEgg_Painting_Reward["Mail"][3307855]["LogId"] = 12001031
	tEasterEgg_Painting_Reward["Mail"][3307855]["LogStep"] = "2[1]"
	tEasterEgg_Painting_Reward["Mail"][3307855]["RewardItem"] = {}
	tEasterEgg_Painting_Reward["Mail"][3307855]["RewardItem"][1] = {}
	tEasterEgg_Painting_Reward["Mail"][3307855]["RewardItem"][1]["Id"] = 3307855
	tEasterEgg_Painting_Reward["Mail"][3307855]["RewardItem"][1]["Attr"] = "0 1"
	tEasterEgg_Painting_Reward["Mail"][3307855]["RewardEffect"] = {}
	tEasterEgg_Painting_Reward["Mail"][3307855]["RewardEffect"]["Effect"] = "angelwing"
	tEasterEgg_Painting_Reward["Mail"][3307856] = {}
	tEasterEgg_Painting_Reward["Mail"][3307856]["LogId"] = 12001031
	tEasterEgg_Painting_Reward["Mail"][3307856]["LogStep"] = "2[1]"
	tEasterEgg_Painting_Reward["Mail"][3307856]["RewardItem"] = {}
	tEasterEgg_Painting_Reward["Mail"][3307856]["RewardItem"][1] = {}
	tEasterEgg_Painting_Reward["Mail"][3307856]["RewardItem"][1]["Id"] = 3307856
	tEasterEgg_Painting_Reward["Mail"][3307856]["RewardItem"][1]["Attr"] = "0 1"
	tEasterEgg_Painting_Reward["Mail"][3307856]["RewardEffect"] = {}
	tEasterEgg_Painting_Reward["Mail"][3307856]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 万能颜料转换
	tEasterEgg_Painting_Reward[3307857] = {}
	tEasterEgg_Painting_Reward[3307857][3307852] = {}
	tEasterEgg_Painting_Reward[3307857][3307852]["LogId"] = 12001031
	tEasterEgg_Painting_Reward[3307857][3307852]["DeleteItem"] = {}
	tEasterEgg_Painting_Reward[3307857][3307852]["DeleteItem"][1] = {}
	tEasterEgg_Painting_Reward[3307857][3307852]["DeleteItem"][1]["Id"] = 3307857
	tEasterEgg_Painting_Reward[3307857][3307852]["RewardItem"] = {}
	tEasterEgg_Painting_Reward[3307857][3307852]["RewardItem"][1] = {}
	tEasterEgg_Painting_Reward[3307857][3307852]["RewardItem"][1]["Id"] = 3307852
	tEasterEgg_Painting_Reward[3307857][3307852]["RewardItem"][1]["Attr"] = "0 1"
	tEasterEgg_Painting_Reward[3307857][3307852]["RewardEffect"] = {}
	tEasterEgg_Painting_Reward[3307857][3307852]["RewardEffect"]["Effect"] = "angelwing"
	tEasterEgg_Painting_Reward[3307857][3307853] = {}
	tEasterEgg_Painting_Reward[3307857][3307853]["LogId"] = 12001031
	tEasterEgg_Painting_Reward[3307857][3307853]["DeleteItem"] = {}
	tEasterEgg_Painting_Reward[3307857][3307853]["DeleteItem"][1] = {}
	tEasterEgg_Painting_Reward[3307857][3307853]["DeleteItem"][1]["Id"] = 3307857
	tEasterEgg_Painting_Reward[3307857][3307853]["RewardItem"] = {}
	tEasterEgg_Painting_Reward[3307857][3307853]["RewardItem"][1] = {}
	tEasterEgg_Painting_Reward[3307857][3307853]["RewardItem"][1]["Id"] = 3307853
	tEasterEgg_Painting_Reward[3307857][3307853]["RewardItem"][1]["Attr"] = "0 1"
	tEasterEgg_Painting_Reward[3307857][3307853]["RewardEffect"] = {}
	tEasterEgg_Painting_Reward[3307857][3307853]["RewardEffect"]["Effect"] = "angelwing"
	tEasterEgg_Painting_Reward[3307857][3307854] = {}
	tEasterEgg_Painting_Reward[3307857][3307854]["LogId"] = 12001031
	tEasterEgg_Painting_Reward[3307857][3307854]["DeleteItem"] = {}
	tEasterEgg_Painting_Reward[3307857][3307854]["DeleteItem"][1] = {}
	tEasterEgg_Painting_Reward[3307857][3307854]["DeleteItem"][1]["Id"] = 3307857
	tEasterEgg_Painting_Reward[3307857][3307854]["RewardItem"] = {}
	tEasterEgg_Painting_Reward[3307857][3307854]["RewardItem"][1] = {}
	tEasterEgg_Painting_Reward[3307857][3307854]["RewardItem"][1]["Id"] = 3307854
	tEasterEgg_Painting_Reward[3307857][3307854]["RewardItem"][1]["Attr"] = "0 1"
	tEasterEgg_Painting_Reward[3307857][3307854]["RewardEffect"] = {}
	tEasterEgg_Painting_Reward[3307857][3307854]["RewardEffect"]["Effect"] = "angelwing"
	tEasterEgg_Painting_Reward[3307857][3307855] = {}
	tEasterEgg_Painting_Reward[3307857][3307855]["LogId"] = 12001031
	tEasterEgg_Painting_Reward[3307857][3307855]["DeleteItem"] = {}
	tEasterEgg_Painting_Reward[3307857][3307855]["DeleteItem"][1] = {}
	tEasterEgg_Painting_Reward[3307857][3307855]["DeleteItem"][1]["Id"] = 3307857
	tEasterEgg_Painting_Reward[3307857][3307855]["RewardItem"] = {}
	tEasterEgg_Painting_Reward[3307857][3307855]["RewardItem"][1] = {}
	tEasterEgg_Painting_Reward[3307857][3307855]["RewardItem"][1]["Id"] = 3307855
	tEasterEgg_Painting_Reward[3307857][3307855]["RewardItem"][1]["Attr"] = "0 1"
	tEasterEgg_Painting_Reward[3307857][3307855]["RewardEffect"] = {}
	tEasterEgg_Painting_Reward[3307857][3307855]["RewardEffect"]["Effect"] = "angelwing"
	tEasterEgg_Painting_Reward[3307857][3307856] = {}
	tEasterEgg_Painting_Reward[3307857][3307856]["LogId"] = 12001031
	tEasterEgg_Painting_Reward[3307857][3307856]["DeleteItem"] = {}
	tEasterEgg_Painting_Reward[3307857][3307856]["DeleteItem"][1] = {}
	tEasterEgg_Painting_Reward[3307857][3307856]["DeleteItem"][1]["Id"] = 3307857
	tEasterEgg_Painting_Reward[3307857][3307856]["RewardItem"] = {}
	tEasterEgg_Painting_Reward[3307857][3307856]["RewardItem"][1] = {}
	tEasterEgg_Painting_Reward[3307857][3307856]["RewardItem"][1]["Id"] = 3307856
	tEasterEgg_Painting_Reward[3307857][3307856]["RewardItem"][1]["Attr"] = "0 1"
	tEasterEgg_Painting_Reward[3307857][3307856]["RewardEffect"] = {}
	tEasterEgg_Painting_Reward[3307857][3307856]["RewardEffect"]["Effect"] = "angelwing"
	
local tEasterEgg_Painting_Random = {}
	-- 3307858,'欢乐彩蛋礼盒'
	tEasterEgg_Painting_Random[3307858] = {}
	tEasterEgg_Painting_Random[3307858][1] = {}
	tEasterEgg_Painting_Random[3307858][1]["ItemChanceSum"] = 10000
	-- 赤炼石+4	730004	1	赠	激活7天	5.00%
	tEasterEgg_Painting_Random[3307858][1][1] = {}
	tEasterEgg_Painting_Random[3307858][1][1]["RandomItemChanceType"] = 2
	tEasterEgg_Painting_Random[3307858][1][1]["ItemChance"] = 500
	tEasterEgg_Painting_Random[3307858][1][1]["RewardItem"] = {}
	tEasterEgg_Painting_Random[3307858][1][1]["RewardItem"][1] = {}
	tEasterEgg_Painting_Random[3307858][1][1]["RewardItem"][1]["Id"] = 730004
	tEasterEgg_Painting_Random[3307858][1][1]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tEasterEgg_Painting_Random[3307858][1][1]["LogId"] = 12001031
	tEasterEgg_Painting_Random[3307858][1][1]["RewardEffect"] = {}
	tEasterEgg_Painting_Random[3307858][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- tEasterEgg_Painting_Random[3307858][1][1]["Talk"] = tEasterEgg_Painting_Text[3307858][1]
	-- 回气丹	729242	1	赠		15.00%
	tEasterEgg_Painting_Random[3307858][1][2] = {}
	tEasterEgg_Painting_Random[3307858][1][2]["RandomItemChanceType"] = 2
	tEasterEgg_Painting_Random[3307858][1][2]["ItemChance"] = 1500
	tEasterEgg_Painting_Random[3307858][1][2]["RewardItem"] = {}
	tEasterEgg_Painting_Random[3307858][1][2]["RewardItem"][1] = {}
	tEasterEgg_Painting_Random[3307858][1][2]["RewardItem"][1]["Id"] = 729242
	tEasterEgg_Painting_Random[3307858][1][2]["RewardItem"][1]["Attr"] = "0 1 3"
	tEasterEgg_Painting_Random[3307858][1][2]["LogId"] = 12001031
	tEasterEgg_Painting_Random[3307858][1][2]["RewardEffect"] = {}
	tEasterEgg_Painting_Random[3307858][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- tEasterEgg_Painting_Random[3307858][1][2]["Talk"] = tEasterEgg_Painting_Text[3307858][2]
	-- 万能神纹精粹	4060001	10	赠		20.00%
	tEasterEgg_Painting_Random[3307858][1][3] = {}
	tEasterEgg_Painting_Random[3307858][1][3]["RandomItemChanceType"] = 2
	tEasterEgg_Painting_Random[3307858][1][3]["ItemChance"] = 2000
	tEasterEgg_Painting_Random[3307858][1][3]["RewardItem"] = {}
	tEasterEgg_Painting_Random[3307858][1][3]["RewardItem"][1] = {}
	tEasterEgg_Painting_Random[3307858][1][3]["RewardItem"][1]["Id"] = 4060001
	tEasterEgg_Painting_Random[3307858][1][3]["RewardItem"][1]["Attr"] = "0 10 3"
	tEasterEgg_Painting_Random[3307858][1][3]["LogId"] = 12001031
	tEasterEgg_Painting_Random[3307858][1][3]["RewardEffect"] = {}
	tEasterEgg_Painting_Random[3307858][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- tEasterEgg_Painting_Random[3307858][1][3]["Talk"] = tEasterEgg_Painting_Text[3307858][3]
	-- 免费强炼丹	3003124	10	赠		30.00%
	tEasterEgg_Painting_Random[3307858][1][4] = {}
	tEasterEgg_Painting_Random[3307858][1][4]["RandomItemChanceType"] = 2
	tEasterEgg_Painting_Random[3307858][1][4]["ItemChance"] = 3000
	tEasterEgg_Painting_Random[3307858][1][4]["RewardItem"] = {}
	tEasterEgg_Painting_Random[3307858][1][4]["RewardItem"][1] = {}
	tEasterEgg_Painting_Random[3307858][1][4]["RewardItem"][1]["Id"] = 3003124
	tEasterEgg_Painting_Random[3307858][1][4]["RewardItem"][1]["Attr"] = "0 10 3"
	tEasterEgg_Painting_Random[3307858][1][4]["LogId"] = 12001031
	tEasterEgg_Painting_Random[3307858][1][4]["RewardEffect"] = {}
	tEasterEgg_Painting_Random[3307858][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- tEasterEgg_Painting_Random[3307858][1][4]["Talk"] = tEasterEgg_Painting_Text[3307858][4]
	-- 强效护心丹	3002030	10			30.00%
	tEasterEgg_Painting_Random[3307858][1][5] = {}
	tEasterEgg_Painting_Random[3307858][1][5]["RandomItemChanceType"] = 2
	tEasterEgg_Painting_Random[3307858][1][5]["ItemChance"] = 3000
	tEasterEgg_Painting_Random[3307858][1][5]["RewardItem"] = {}
	tEasterEgg_Painting_Random[3307858][1][5]["RewardItem"][1] = {}
	tEasterEgg_Painting_Random[3307858][1][5]["RewardItem"][1]["Id"] = 3002030
	tEasterEgg_Painting_Random[3307858][1][5]["RewardItem"][1]["Attr"] = "0 10"
	tEasterEgg_Painting_Random[3307858][1][5]["LogId"] = 12001031
	tEasterEgg_Painting_Random[3307858][1][5]["RewardEffect"] = {}
	tEasterEgg_Painting_Random[3307858][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- tEasterEgg_Painting_Random[3307858][1][5]["Talk"] = tEasterEgg_Painting_Text[3307858][5]
	-- 300分钟经验幸运包	3006921	1	赠		100.00%
	-- 150点气力值	3302457	1	赠		100.00%
	-- 赤炼石+3	730003	1	赠	激活7天	100.00%
	-- 明亮星陨石	3009001	1		激活2天	100.00%
	tEasterEgg_Painting_Random[3307858][1][6] = {}
	tEasterEgg_Painting_Random[3307858][1][6]["RandomItemChanceType"] = 1
	tEasterEgg_Painting_Random[3307858][1][6]["RewardItem"] = {}
	tEasterEgg_Painting_Random[3307858][1][6]["RewardItem"][1] = {}
	tEasterEgg_Painting_Random[3307858][1][6]["RewardItem"][1]["Id"] = 3006921
	tEasterEgg_Painting_Random[3307858][1][6]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tEasterEgg_Painting_Random[3307858][1][6]["RewardItem"][2] = {}
	tEasterEgg_Painting_Random[3307858][1][6]["RewardItem"][2]["Id"] = 3302457
	tEasterEgg_Painting_Random[3307858][1][6]["RewardItem"][2]["Attr"] = "0 1"
	tEasterEgg_Painting_Random[3307858][1][6]["RewardItem"][3] = {}
	tEasterEgg_Painting_Random[3307858][1][6]["RewardItem"][3]["Id"] = 730003
	tEasterEgg_Painting_Random[3307858][1][6]["RewardItem"][3]["Attr"] = "0 1 3 10080 1"
	tEasterEgg_Painting_Random[3307858][1][6]["RewardItem"][4] = {}
	tEasterEgg_Painting_Random[3307858][1][6]["RewardItem"][4]["Id"] = 3009001
	tEasterEgg_Painting_Random[3307858][1][6]["RewardItem"][4]["Attr"] = "0 1 0 2880 1"
	tEasterEgg_Painting_Random[3307858][1][6]["LogId"] = 12001031
	tEasterEgg_Painting_Random[3307858][1][6]["RewardEffect"] = {}
	tEasterEgg_Painting_Random[3307858][1][6]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 随机获得颜料
	tEasterEgg_Painting_Random[22717] = {}
	tEasterEgg_Painting_Random[22717][1] = {}
	tEasterEgg_Painting_Random[22717][1]["ItemChanceSum"]=10000
	-- 3307852,'富贵福'
	tEasterEgg_Painting_Random[22717][1][1]={}
	tEasterEgg_Painting_Random[22717][1][1]["RandomItemChanceType"] = 2
	tEasterEgg_Painting_Random[22717][1][1]["ItemChance"] = 2000
	tEasterEgg_Painting_Random[22717][1][1]["RewardItem"] = {}
	tEasterEgg_Painting_Random[22717][1][1]["RewardItem"][1] = {}
	tEasterEgg_Painting_Random[22717][1][1]["RewardItem"][1]["Id"] = 3307852
	tEasterEgg_Painting_Random[22717][1][1]["RewardItem"][1]["Attr"]="0 1"
	tEasterEgg_Painting_Random[22717][1][1]["LogId"] = 12001031
	tEasterEgg_Painting_Random[22717][1][1]["LogStep"] = "1[1]"
	tEasterEgg_Painting_Random[22717][1][1]["RewardEffect"] = {}
	tEasterEgg_Painting_Random[22717][1][1]["RewardEffect"]["Effect"] = "zf2-e128"
	-- 3307853,'长寿福'
	tEasterEgg_Painting_Random[22717][1][2] = {}
	tEasterEgg_Painting_Random[22717][1][2]["RandomItemChanceType"] = 2
	tEasterEgg_Painting_Random[22717][1][2]["ItemChance"] = 2000
	tEasterEgg_Painting_Random[22717][1][2]["RewardItem"] = {}
	tEasterEgg_Painting_Random[22717][1][2]["RewardItem"][1] ={}
	tEasterEgg_Painting_Random[22717][1][2]["RewardItem"][1]["Id"] = 3307853
	tEasterEgg_Painting_Random[22717][1][2]["RewardItem"][1]["Attr"]="0 1"
	tEasterEgg_Painting_Random[22717][1][2]["LogId"] = 12001031
	tEasterEgg_Painting_Random[22717][1][2]["LogStep"] = "1[1]"
	tEasterEgg_Painting_Random[22717][1][2]["RewardEffect"] = {}
	tEasterEgg_Painting_Random[22717][1][2]["RewardEffect"]["Effect"] = "zf2-e128"
	-- 3307854,'康宁福'
	tEasterEgg_Painting_Random[22717][1][3] = {}
	tEasterEgg_Painting_Random[22717][1][3]["RandomItemChanceType"] = 2
	tEasterEgg_Painting_Random[22717][1][3]["ItemChance"] = 2000
	tEasterEgg_Painting_Random[22717][1][3]["RewardItem"] = {}
	tEasterEgg_Painting_Random[22717][1][3]["RewardItem"][1] ={}
	tEasterEgg_Painting_Random[22717][1][3]["RewardItem"][1]["Id"] = 3307854
	tEasterEgg_Painting_Random[22717][1][3]["RewardItem"][1]["Attr"]="0 1"
	tEasterEgg_Painting_Random[22717][1][3]["LogId"] = 12001031
	tEasterEgg_Painting_Random[22717][1][3]["LogStep"] = "1[1]"
	tEasterEgg_Painting_Random[22717][1][3]["RewardEffect"] = {}
	tEasterEgg_Painting_Random[22717][1][3]["RewardEffect"]["Effect"] = "zf2-e128"
	-- 3307855,'仁德福'
	tEasterEgg_Painting_Random[22717][1][4] = {}
	tEasterEgg_Painting_Random[22717][1][4]["RandomItemChanceType"] = 2
	tEasterEgg_Painting_Random[22717][1][4]["ItemChance"] = 2000
	tEasterEgg_Painting_Random[22717][1][4]["RewardItem"] = {}
	tEasterEgg_Painting_Random[22717][1][4]["RewardItem"][1] ={}
	tEasterEgg_Painting_Random[22717][1][4]["RewardItem"][1]["Id"] = 3307855
	tEasterEgg_Painting_Random[22717][1][4]["RewardItem"][1]["Attr"]="0 1"
	tEasterEgg_Painting_Random[22717][1][4]["LogId"] = 12001031
	tEasterEgg_Painting_Random[22717][1][4]["LogStep"] = "1[1]"
	tEasterEgg_Painting_Random[22717][1][4]["RewardEffect"] = {}
	tEasterEgg_Painting_Random[22717][1][4]["RewardEffect"]["Effect"] = "zf2-e128"
	-- 3307856,'美满福'
	tEasterEgg_Painting_Random[22717][1][5] = {}
	tEasterEgg_Painting_Random[22717][1][5]["RandomItemChanceType"] = 2
	tEasterEgg_Painting_Random[22717][1][5]["ItemChance"] = 2000
	tEasterEgg_Painting_Random[22717][1][5]["RewardItem"] = {}
	tEasterEgg_Painting_Random[22717][1][5]["RewardItem"][1] ={}
	tEasterEgg_Painting_Random[22717][1][5]["RewardItem"][1]["Id"] = 3307856
	tEasterEgg_Painting_Random[22717][1][5]["RewardItem"][1]["Attr"]="0 1"
	tEasterEgg_Painting_Random[22717][1][5]["LogId"] = 12001031
	tEasterEgg_Painting_Random[22717][1][5]["LogStep"] = "1[1]"
	tEasterEgg_Painting_Random[22717][1][5]["RewardEffect"] = {}
	tEasterEgg_Painting_Random[22717][1][5]["RewardEffect"]["Effect"] = "zf2-e128"
	
-- 发奖邮件
local tEasterEgg_Painting_SnedMail = {}
	tEasterEgg_Painting_SnedMail["ExistDay"] = 3
	tEasterEgg_Painting_SnedMail[3307852] = 94486060
	tEasterEgg_Painting_SnedMail[3307853] = 94486061
	tEasterEgg_Painting_SnedMail[3307854] = 94486062
	tEasterEgg_Painting_SnedMail[3307855] = 94486063
	tEasterEgg_Painting_SnedMail[3307856] = 94486064
	
	

--------------------------------------逻辑部分-------------------------------------------
-- 获取掩码值
function EasterEgg_Painting_GetStcValue(nIndex,nUserId)
	local nEvent = tEasterEgg_Painting_Stc[nIndex]["EventType"]
	local nType = tEasterEgg_Painting_Stc[nIndex]["DataType"]
	
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	return nData
end

--设置掩码值
function EasterEgg_Painting_SetStcValue(nIndex,nData,nUserId)
	local nEvent = tEasterEgg_Painting_Stc[nIndex]["EventType"]
	local nType = tEasterEgg_Painting_Stc[nIndex]["DataType"]
	
	Task_SetStatistic(nEvent,nType,nData,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
end

-- 增加掩码值
function EasterEgg_Painting_AddStcValue(nIndex,nData,nUserId)
	local nEvent = tEasterEgg_Painting_Stc[nIndex]["EventType"]
	local nType = tEasterEgg_Painting_Stc[nIndex]["DataType"]
	
	Task_AddStatistic(nEvent,nType,nData,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
end

-- 隔天重置
function EasterEgg_Painting_ClearStcInterval(nUserId)
	for i,v in pairs(tEasterEgg_Painting_Stc) do
		local nEvent = tEasterEgg_Painting_Stc[i]["EventType"]
		local nType = tEasterEgg_Painting_Stc[i]["DataType"]
		local nClear = tEasterEgg_Painting_Stc[i]["Clear"]
		
		if Task_StcInterval(nEvent,nType,1,4,nUserId) and nClear ~= nil then
			Task_SetStatistic(nEvent,nType,0,1,nUserId)
			Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		end
	end
end

-- 弹框寻路
function EasterEgg_Painting_PathFind(nNpcId)
	local nUserMapId = Get_UserMapId(nUserId)
	local sFunc = "EasterEgg_Painting_SureFind</N>"..nNpcId
	Sys_MsgBox(tEasterEgg_Painting_Text[nNpcId]["SuerPath"],sFunc)
end

-- 寻路
function EasterEgg_Painting_SureFind(nNpcId)
	local nUserMapId = Get_UserMapId(nUserId)
	if nUserMapId == 1002 then
		NpcPosition_PathFind(nNpcId)
	else
		User_TalkChannel2005(tEasterEgg_Painting_Text[nNpcId]["OutMap"])
	end
end

-- 缺少的福名字
function EasterEgg_Painting_GetName()
	local tNotHave = {}
	for i,v in pairs(tEasterEgg_Painting_Count["Item"]) do
		if not Item_ChkItem(v) then
			table.insert(tNotHave,v)
		end
	end
	
	local sItemName = ""
	local nLength = #tNotHave
	for a,b in pairs(tNotHave) do
		sItemName = sItemName .. Get_ItemtypeName(b)
		if nLength > 1 and a < nLength then
			sItemName = sItemName .. "、"
		end
	end
	return sItemName
end

-- 获取玩家可获奖励索引
function EasterEgg_Painting_TextIndex()
	local nHaveTime = EasterEgg_Painting_GetStcValue(2)
	-- 最高奖励档次
	local nHigh = tEasterEgg_Painting_Count["High"]
	local nSecond = tEasterEgg_Painting_Count["Second"]
	local nIndex = 0
	local nNeedLess = 0
	if nHaveTime < nSecond then
		nIndex = 1
	elseif nHaveTime >= nSecond and nHaveTime < nHigh then
		nIndex = 2
	else
		nIndex = 3
	end
	return nIndex
end
---------------------------------------------------福满天 22717
-- 领取百宝大轮盘。
function EasterEgg_Painting_Bless(nNpcId)
	-- 活动后
	if not Sys_ChkFullTime(tEasterEgg_Painting_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-6")
		return
	end
	
	-- 等级不足
	local nLevel = tEasterEgg_Painting_Count["Level"]
	local nMeto = tEasterEgg_Painting_Count["Meto"]
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMeto) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	EasterEgg_Painting_ClearStcInterval()
	
	-- 上限五次
	local nLessData = EasterEgg_Painting_GetStcValue(1)
	local nLimit = tEasterEgg_Painting_Stc[1]["Limit"]
	if nLessData >= nLimit then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	-- 背包不足
	local nSpaceNum = RewardTemplate_GetRandomSpace(tEasterEgg_Painting_Random[nNpcId],1)
	if nSpaceNum > 0 and not User_CheckLeftSpace(nSpaceNum) then
		Sys_MsgBox(tEasterEgg_Painting_Text[nNpcId]["NoSpace"])
		return
	end
	
	-- 读条祈福
	local sContent = tEasterEgg_Painting_Text[22717]["MakeLoad"]
	local nActionId = tEasterEgg_Painting_Count["ActionId"]
	local nTime = tEasterEgg_Painting_Count["Time"]
	local nUserId = Get_UserId()
	local sFunc = "EasterEgg_Painting_SureBless</N>"..nNpcId
	User_SetExplore(nTime,sContent,nActionId,sFunc)
end

-- 祈福成功
function EasterEgg_Painting_SureBless(nNpcId,nUserId)
	-- 活动后
	if not Sys_ChkFullTime(tEasterEgg_Painting_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-6")
		return
	end
	
	-- 等级不足
	local nLevel = tEasterEgg_Painting_Count["Level"]
	local nMeto = tEasterEgg_Painting_Count["Meto"]
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMeto,nUserId) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	EasterEgg_Painting_ClearStcInterval(nUserId)
	
	-- 上限五次
	local nLessData = EasterEgg_Painting_GetStcValue(1,nUserId)
	local nLimit = tEasterEgg_Painting_Stc[1]["Limit"]
	if nLessData >= nLimit then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	-- 背包不足
	local nSpaceNum = RewardTemplate_GetRandomSpace(tEasterEgg_Painting_Random[nNpcId],1,nUserId)
	if nSpaceNum > 0 and not User_CheckLeftSpace(nSpaceNum,nUserId) then
		Sys_MsgBox(tEasterEgg_Painting_Text[nNpcId]["NoSpace"],nil,nil,nUserId)
		return
	end
	
	
	-- 祈福成功
	EasterEgg_Painting_AddStcValue(1,1,nUserId)
	
	RewardTemplate_NewRandom(tEasterEgg_Painting_Random[nNpcId],1,nUserId)
	-- 全服公告
	local nData = EasterEgg_Painting_GetStcValue(1,nUserId)
	if nData == 1 then
		local nRandom = math.random(1,4)
		local sUserName = Get_UserName(nUserId)
		local sContent = tEasterEgg_Painting_Text["Braotcast"][nRandom]
		Sys_SystemBroadcast(string.format(sContent,sUserName))
	end
end

-- 2、我要上交颜料
function EasterEgg_Painting_HandInItem(nNpcId)
	-- 活动后
	if not Sys_ChkFullTime(tEasterEgg_Painting_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-6")
		return
	end
	
	-- 等级不足
	local nLevel = tEasterEgg_Painting_Count["Level"]
	local nMeto = tEasterEgg_Painting_Count["Meto"]
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMeto) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 【失败，并无五张不同的颜料】
	local sItemName = EasterEgg_Painting_GetName()
	for i,v in pairs(tEasterEgg_Painting_Count["Item"]) do
		if not Item_ChkItem(v) then
			local sText = tEasterEgg_Painting_Text[nNpcId]["NoItem"]
			Sys_MsgBox(string.format(sText,sItemName))
			return
		end
	end
	
	-- 判断上交背包空间
	local nSpaceNum = RewardTemplate_GetRewardSpace(tEasterEgg_Painting_Reward[1])
	if nSpaceNum > 0 and not User_CheckLeftSpace(nSpaceNum) then
		Sys_MsgBox(tEasterEgg_Painting_Text[nNpcId]["HandInSpace"])
		return
	end
	
	-- 成功上交
	RewardTemplate_UseItem(tEasterEgg_Painting_Reward[1])
	
	EasterEgg_Painting_AddStcValue(2,1)
	
	local nHaveTime = EasterEgg_Painting_GetStcValue(2)
	-- 最高奖励档次
	local nHigh = tEasterEgg_Painting_Count["High"]
	local nSecond = tEasterEgg_Painting_Count["Second"]
	local nIndex = 0
	local nNeedLess = 0
	if nHaveTime < nSecond then
		nIndex = 1
	elseif nHaveTime >= nSecond and nHaveTime < nHigh then
		nIndex = 2
	else
		nIndex = 3
	end
	local sContent = ""
	if nHaveTime < nSecond then
		nNeedLess = nSecond
	elseif nHaveTime < nHigh then
		nNeedLess = nHigh
	end
	if nNeedLess > 0 then
		local nLess = nNeedLess - nHaveTime
		local sText = tEasterEgg_Painting_Text[nNpcId]["Text2210"]
		sContent = string.format(sText,nLess)
	end
	local tTextIndex = tEasterEgg_Painting_Count["TextIndex"][nIndex]
	local sText = tEasterEgg_Painting_Text[nNpcId][tTextIndex[1]]..tEasterEgg_Painting_Text[nNpcId][tTextIndex[2]]
	local sLast = tEasterEgg_Painting_Text[nNpcId]["Text222"]
	tNpcGossip[nNpcId]["Text222"] = string.format(sLast,nHaveTime,sContent)..sText
	LinkNpcGossipFunc_New(nNpcId,"2-2")
end

-- 领取集福好礼
function EasterEgg_Painting_GetAwardItem(nNpcId)
	-- 活动后
	if not Sys_ChkFullTime(tEasterEgg_Painting_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-6")
		return
	end
	
	-- 等级不足
	local nLevel = tEasterEgg_Painting_Count["Level"]
	local nMeto = tEasterEgg_Painting_Count["Meto"]
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMeto) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 已领过
	local nData = EasterEgg_Painting_GetStcValue(6)
	if nData >= 1 then
		Sys_MsgBox(tEasterEgg_Painting_Text[nNpcId]["HaveReward"])
		return
	end
	
	-- 可领奖励
	local nIndex = 4
	local nHaveTime = EasterEgg_Painting_GetStcValue(2)
	if nHaveTime > 0 then
		nIndex = EasterEgg_Painting_TextIndex()
	end
	local tReward = tEasterEgg_Painting_Reward["AfterReward"][nIndex]
	local nSpaceNum = RewardTemplate_GetRewardSpace(tReward)
	if nSpaceNum > 0 and not User_CheckLeftSpace(nSpaceNum) then
		local sText = tEasterEgg_Painting_Text[nNpcId]["NoSpaceReward"]
		Sys_MsgBox(string.format(sText,nSpaceNum))
		return
	end
	
	-- 领取奖励
	EasterEgg_Painting_AddStcValue(6,1)
	
	RewardTemplate_UseItem(tReward)
end
---------------------------------------------------贺鑫春 22718
-- 交换颜料
function EasterEgg_Painting_OpenDialog(nNpcId)
	-- 活动后
	if not Sys_ChkFullTime(tEasterEgg_Painting_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 等级不足
	local nLevel = tEasterEgg_Painting_Count["Level"]
	local nMeto = tEasterEgg_Painting_Count["Meto"]
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMeto) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	
	-- 今日已互换
	EasterEgg_Painting_ClearStcInterval()
	local nData = EasterEgg_Painting_GetStcValue(3)
	if nData >= 1 then
		Sys_MsgBox(tEasterEgg_Painting_Text[nNpcId]["AlExchange"])
		return
	end
	
	-- 失败，并无颜料
	local bHave = false
	for i,v in pairs(tEasterEgg_Painting_Count["Item"]) do
		if Item_ChkItem(v) then
			bHave = true
			break
		end
	end
	if not bHave then
		Sys_MsgBox(tEasterEgg_Painting_Text[nNpcId]["NoRealItem"])
		return
	end
	
	-- 物品数量
	for i,v in pairs(tEasterEgg_Painting_Count["Item"]) do
		local sIndex = tEasterEgg_Painting_Count["Text"][i]
		local sText = tEasterEgg_Painting_Text[nNpcId]["Text"..sIndex]
		local nNum = Get_CountItemType(v,0)
		tNpcGossip[nNpcId]["Text"..sIndex] = string.format(sText,nNum)
	end
	LinkNpcGossipFunc_New(nNpcId,"2-1")
end

-- 选择颜料
function EasterEgg_Painting_Exchange(nNpcId,nItemId)
	-- 活动后
	if not Sys_ChkFullTime(tEasterEgg_Painting_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 等级不足
	local nLevel = tEasterEgg_Painting_Count["Level"]
	local nMeto = tEasterEgg_Painting_Count["Meto"]
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMeto) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	
	-- 今日已互换
	EasterEgg_Painting_ClearStcInterval()
	local nData = EasterEgg_Painting_GetStcValue(3)
	if nData >= 1 then
		Sys_MsgBox(tEasterEgg_Painting_Text[nNpcId]["AlExchange"] )
		return
	end
	
	-- 失败，并无对应颜料
	if not Item_ChkItem(nItemId) then
		local sFunc = "LinkNpcGossipFunc_New</N>"..nNpcId.."</S>2-1"
		Sys_MsgBox(tEasterEgg_Painting_Text[nNpcId]["NoItem"],sFunc)
		return
	end
	
	for i=221,225 do
		local nIndex = i - 220
		local nNewItemId = tEasterEgg_Painting_Count["Item"][nIndex]
		if nNewItemId == nItemId then
			tNpcGossip[nNpcId]["Option"..i] = ""
		else
			tNpcGossip[nNpcId]["Option"..i] = tEasterEgg_Painting_Text[nNpcId]["Option"..i]
		end
		tNpcGossip[nNpcId]["OptionFunc"..i] = "EasterEgg_Painting_ExchangeSure</N>22718</N>"..nItemId.."</N>"..nNewItemId
	end
	
	local sNewText = tEasterEgg_Painting_Text[nNpcId]["Text221"]
	local sName = Get_ItemtypeName(nItemId)
	tNpcGossip[nNpcId]["Text221"] = string.format(sNewText,sName)
	-- 物品数量
	for i,v in pairs(tEasterEgg_Painting_Count["Item"]) do
		local sIndex = tEasterEgg_Painting_Count["Text"][i]
		local sText = tEasterEgg_Painting_Text[nNpcId]["Text"..sIndex]
		local nNum = Get_CountItemType(v,0)
		tNpcGossip[nNpcId]["Text"..sIndex] = string.format(sText,nNum)
	end
	LinkNpcGossipFunc_New(nNpcId,"2-2")
end

-- 确认上交互换
function EasterEgg_Painting_ExchangeSure(nNpcId,nItemId,nNewItemId)
	-- 活动后
	if not Sys_ChkFullTime(tEasterEgg_Painting_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 等级不足
	local nLevel = tEasterEgg_Painting_Count["Level"]
	local nMeto = tEasterEgg_Painting_Count["Meto"]
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMeto) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	
	-- 今日已互换
	EasterEgg_Painting_ClearStcInterval()
	local nData = EasterEgg_Painting_GetStcValue(3)
	if nData >= 1 then
		Sys_MsgBox(tEasterEgg_Painting_Text[22718]["AlExchange"] )
		return
	end
	
	-- 失败，并无对应颜料
	if not Item_ChkItem(nItemId) then
		local sFunc = "LinkNpcGossipFunc_New</N>"..nNpcId.."</S>2-1"
		Sys_MsgBox(tEasterEgg_Painting_Text[nNpcId]["NoItem"],sFunc)
		return
	end
	
	-- 兑换颜料
	RewardTemplate_UseItem(tEasterEgg_Painting_Reward[nItemId])
	
	EasterEgg_Painting_AddStcValue(3,1)
	EasterEgg_Painting_SetStcValue(4,nNewItemId)
	EasterEgg_Painting_SetStcValue(5,nItemId)
	
	-- 2分钟后发邮件
	local nUserId = Get_UserId()
	tEasterEgg_Painting_HandIn[nUserId] = {}
	tEasterEgg_Painting_HandIn[nUserId][1] = nItemId
	tEasterEgg_Painting_HandIn[nUserId][2] = Get_UserName()
	local nTimeDelay = tEasterEgg_Painting_Count["MailTime"]
	local sFunc = "EasterEgg_Painting_Mail</N>"..nItemId.."</N>"..nNewItemId
	User_SetTimer(nTimeDelay,sFunc,0,nUserId)
	
	
	local sText = tEasterEgg_Painting_Text[nNpcId]["Text231"]
	local sItemName = Get_ItemtypeName(nItemId)
	local sNewItemName = Get_ItemtypeName(nNewItemId)
	tNpcGossip[nNpcId]["Text231"] = string.format(sText,sItemName,sNewItemName)
	LinkNpcGossipFunc_New(nNpcId,"2-3")
end

-- 两分钟后发邮件
function EasterEgg_Painting_Mail(nItemId,nNewItemId,nUserId)
	local sSendName = ""
	local sSender = ""
	local sNowUserId = Get_UserName(nUserId)
	for i,v in pairs(tEasterEgg_Painting_HandIn) do
		if i ~= nUserId and v[1] == nNewItemId then
			sSendName = tEasterEgg_Painting_Text["Mail"]["NewContent"]..v[2]
			tEasterEgg_Painting_HandIn[i] = {}
			sSender = v[2]
			break
		end
	end
	if sSendName == "" then
		-- 没有交换玩家，改成npc发
		local nLength = #tEasterEgg_Painting_Text["NpcName"]
		local nRandom = math.random(1,nLength)
		sSendName = tEasterEgg_Painting_Text["NpcName"][nRandom]
		sSender = tEasterEgg_Painting_Text["NpcName"][nRandom]
	end
	
	EasterEgg_Painting_SetStcValue(4,0,nUserId)
	EasterEgg_Painting_SetStcValue(5,0,nUserId)
	
	-- 发邮件
	local nActionId = tEasterEgg_Painting_SnedMail[nNewItemId]
	local nExistDay = tEasterEgg_Painting_SnedMail["ExistDay"]
	-- local sSender = tEasterEgg_Painting_Text["Mail"]["Sender"]
	local sTitle = tEasterEgg_Painting_Text["Mail"]["Title"]
	local sContent = tEasterEgg_Painting_Text["Mail"]["Content"]
	local sOldItemId = Get_ItemtypeName(nItemId)
	local sNewItemId = Get_ItemtypeName(nNewItemId)
	local sLastContent = string.format(sContent,sSendName,sOldItemId,sNewItemId)
	Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sLastContent)
end

function EasterEgg_Painting_OnLine()
	-- 无物品的不发
	local nNewItemId = EasterEgg_Painting_GetStcValue(4)
	if nNewItemId <= 1 then
		return
	end
	
	local nUserId = Get_UserId()
	local nItemId = EasterEgg_Painting_GetStcValue(5)
	EasterEgg_Painting_Mail(nItemId,nNewItemId,nUserId)
end

---------------------------------------------------邮件获得颜料
function EasterEgg_Painting_MailReward(nItemId)
	RewardTemplate_UseItem(tEasterEgg_Painting_Reward["Mail"][nItemId])
end
---------------------------------------------------物品使用
-- 颜料转换
function EasterEgg_Painting_UseItem(nItemId,nExchangeId)
	-- 过期删除
	if not Sys_ChkFullTime(tEasterEgg_Painting_Count["ActivityTime"]) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tEasterEgg_Painting_Text["OverDue"])
			local sLog = tEasterEgg_Painting_Log["OverDue"]
			Sys_SaveActionFestivalLog(string.format(sLog,nItemId))
 		end
		return
	end
	
	-- 失败，背包中并无万能福
	if not Item_ChkItem(nItemId) then
		Sys_MsgBox(tEasterEgg_Painting_Text[nItemId]["NoItem"])
		return
	end
	
	-- 失败，背包满
	local nSpaceNum = RewardTemplate_GetRewardSpace(tEasterEgg_Painting_Reward[nItemId][nExchangeId])
	if nSpaceNum > 0 and not User_CheckLeftSpace(nSpaceNum) then
		Sys_MsgBox(tEasterEgg_Painting_Text[nItemId]["NoSpace"])
		return
	end
	
	RewardTemplate_UseItem(tEasterEgg_Painting_Reward[nItemId][nExchangeId])
end

-- 颜料欢庆礼盒
function EasterEgg_Painting_OpenItem(nItemId)
	-- 过期删除
	if not Sys_ChkFullTime(tEasterEgg_Painting_Count["ItemUseTime"]) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tEasterEgg_Painting_Text[nItemId]["OverDue"])
			local sLog = tEasterEgg_Painting_Log["OverDue"]
			Sys_SaveActionFestivalLog(string.format(sLog,nItemId))
 		end
		return
	end
	
	-- 背包不足
	local nSpaceNum = RewardTemplate_GetRandomSpace(tEasterEgg_Painting_Random[nItemId],1)
	if nSpaceNum > 0 and not User_CheckLeftSpace(nSpaceNum) then
		local sTip = tEasterEgg_Painting_Text[nItemId]["NoSpace"]
		Sys_MsgBox(string.format(sTip,nSpaceNum))
		return
	end
	
	-- 使用物品
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local tRward = RewardTemplate_NewRandom(tEasterEgg_Painting_Random[nItemId],1)
		Sys_SaveActionFestivalLog(tEasterEgg_Painting_Log["DelLog"])
		local nGetItemId = tRward[1]["tAward"][1]["RewardItem"][1]["Id"]
		if nGetItemId == 730004 or nGetItemId == 729242 then
			local sText = tEasterEgg_Painting_Text[nItemId]["BroadCast"]
			local sItemName = Get_ItemtypeName(nGetItemId)
			local sUserName = Get_UserName()
			Sys_SystemBroadcast(string.format(sText,sUserName,sItemName))
		end
	end
end

--------------------------------------NPC模块-------------------------------------------
-- 朱迪
tNpcFace[780] = 1401
tNpcGossip[22717] = tNpcGossip[22717] or DefaultNpc:new{}
tNpcGossip[22717]["OptionHidden"] = 1
tNpcGossip[22717]["DialogueText"] = tEasterEgg_Painting_Text[22717]
-- 活动前
tNpcGossip[22717]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[22717]["tOption1-1"] = {111}
tNpcGossip[22717]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tEasterEgg_Painting_Count["ActivityTime"])
end

-- 活动中，等级不足
tNpcGossip[22717]["Text1-2"] = {121,122,123,113,114,115}
tNpcGossip[22717]["tOption1-2"] = {121}
tNpcGossip[22717]["ChkFunc1-2"] = function ()
	local nLevel = tEasterEgg_Painting_Count["Level"]
	local nMeto = tEasterEgg_Painting_Count["Meto"]
	return Sys_ChkFullTime(tEasterEgg_Painting_Count["ActivityTime"]) and not User_JudgeLevelAndMetempsychosis(nLevel,nMeto)
end

-- 活动中，节前 等级足
tNpcGossip[22717]["Text1-3"] = {121,122,123,113,115,131}
tNpcGossip[22717]["tOption1-3"] = {131,132,133,135}
tNpcGossip[22717]["ChkFunc1-3"] = function ()
	EasterEgg_Painting_ClearStcInterval()
	-- 今日祈福次数
	local sText = tEasterEgg_Painting_Text[22717]["Text131"]
	local nLessData = EasterEgg_Painting_GetStcValue(1)
	local nData = EasterEgg_Painting_GetStcValue(2)
	tNpcGossip[22717]["Text131"] = string.format(sText,nLessData,nData)
	-- 判断等级
	local nLevel = tEasterEgg_Painting_Count["Level"]
	local nMeto = tEasterEgg_Painting_Count["Meto"]
	return Sys_ChkFullTime(tEasterEgg_Painting_Count["ActivityTime"]) and User_JudgeLevelAndMetempsychosis(nLevel,nMeto)
end
-- 1、我要祈福
tNpcGossip[22717]["OptionFunc131"] = "EasterEgg_Painting_Bless</N>22717"
-- 2、我要上交颜料
tNpcGossip[22717]["OptionFunc132"] = "EasterEgg_Painting_HandInItem</N>22717"
-- 3、集福攻略
tNpcGossip[22717]["OptionPoint133"] = "2-3"
-- 4、了解可获奖励
-- tNpcGossip[22717]["OptionPoint134"] = "3-3"
-- 5、告辞

-- 活动后
tNpcGossip[22717]["Text1-4"] = {141}
tNpcGossip[22717]["tOption1-4"] = {141}
tNpcGossip[22717]["ChkFunc1-4"] = function ()
	return not Sys_ChkFullTime(tEasterEgg_Painting_Count["ActivityTime"])
end


-- 接1、我要祈福
-- 【失败，祈福次数达到5次】
tNpcGossip[22717]["Text2-1"] = {211}
tNpcGossip[22717]["tOption2-1"] = {211}
tNpcGossip[22717]["OptionPoint211"] = 1
-- 我明白了 ====返回主对白
-- 【失败，活动已经结束】
-- （接活动后对白）
-- 【失败，背包满】
-- 接2、我要上交颜料
-- 【成功】
tNpcGossip[22717]["Text2-2"] = {221,222}
tNpcGossip[22717]["tOption2-2"] = {221}
tNpcGossip[22717]["OptionPoint221"] = 1
-- 【失败，并无五张不同的颜料】
-- 【失败，活动结束】

tNpcGossip[22717]["Text2-3"] = {231,232,233,234,235,236,237,238,239,2310,2311}
tNpcGossip[22717]["tOption2-3"] = {231}
tNpcGossip[22717]["OptionPoint231"] = 1

-- -尼克
tNpcFace[781] = 1402
tNpcGossip[22718] = tNpcGossip[22718] or DefaultNpc:new{}
tNpcGossip[22718]["OptionHidden"] = 1
tNpcGossip[22718]["DialogueText"] = tEasterEgg_Painting_Text[22718] 
-- 活动前
tNpcGossip[22718]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[22718]["tOption1-1"] = {111}
tNpcGossip[22718]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tEasterEgg_Painting_Count["ActivityTime"])
end

-- 活动后
tNpcGossip[22718]["Text1-2"] = {121,122}
tNpcGossip[22718]["tOption1-2"] = {121}
tNpcGossip[22718]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tEasterEgg_Painting_Count["ActivityTime"])
end

-- 活动中 等级不足
tNpcGossip[22718]["Text1-3"] = {131,132,133,134,113,114,115}
tNpcGossip[22718]["tOption1-3"] = {131}
tNpcGossip[22718]["ChkFunc1-3"] = function ()
	local nLevel = tEasterEgg_Painting_Count["Level"]
	local nMeto = tEasterEgg_Painting_Count["Meto"]
	return Sys_ChkFullTime(tEasterEgg_Painting_Count["ActivityTime"]) and not User_JudgeLevelAndMetempsychosis(nLevel,nMeto)
end

-- 活动中
tNpcGossip[22718]["Text1-4"] = {141,142,113}
tNpcGossip[22718]["tOption1-4"] = {141,142}
tNpcGossip[22718]["ChkFunc1-4"] = function ()
	return true
end
-- 交换颜料
tNpcGossip[22718]["OptionFunc141"] = "EasterEgg_Painting_OpenDialog</N>22718"

--接1、交换颜料
tNpcGossip[22718]["Text2-1"] = {211,212,213,214,215,216}
tNpcGossip[22718]["tOption2-1"] = {211,212,213,214,215,216}
for i=211,215 do
	local nIndex = i - 210
	local nItemId = tEasterEgg_Painting_Count["Item"][nIndex]
	tNpcGossip[22718]["OptionChkFunc".. i] = function()
		if not Item_ChkItem(nItemId) then
			return false
		end
		local nNum = Get_CountItemType(nItemId,0)
		local sText = tEasterEgg_Painting_Text[22718]["Option"..i]
		tNpcGossip[22718]["Option"..i] =string.format(sText,nNum)
		return true
	end
	tNpcGossip[22718]["OptionFunc"..i] = "EasterEgg_Painting_Exchange</N>22718</N>"..nItemId
end
-- 还是算了 ====返回主对白
tNpcGossip[22718]["OptionPoint216"] = "1"

-- 接上，【颜料名】
tNpcGossip[22718]["Text2-2"] = {221,212,213,214,215,216}
tNpcGossip[22718]["tOption2-2"] = {221,222,223,224,225,226}

-- 容我重新选择 ====返回上一层
tNpcGossip[22718]["OptionPoint226"]="2-1"

-- 【成功】
tNpcGossip[22718]["Text2-3"] = {231,232}
tNpcGossip[22718]["tOption2-3"] = {231}
--------------------------------------物品模块-------------------------------------------
-- 3307851,'欢乐彩蛋邀请函'
tItemFace[3307851] = 398
-- 3307852,'红色颜料'
tItem[3307852] = tItem[3307852] or {}
tItem[3307852]["Function"] = function(nItemId,sItemName)
	-- 过期删除
	if not Sys_ChkFullTime(tEasterEgg_Painting_Count["ActivityTime"]) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tEasterEgg_Painting_Text["OverDue"])
			local sLog = tEasterEgg_Painting_Log["OverDue"]
			Sys_SaveActionFestivalLog(string.format(sLog,nItemId))
 		end
		return
	end
	
	NpcPosition_PathFind(22717)
end
-- 3307853,'绿色颜料'
tItem[3307853] = tItem[3307852]
-- 3307854,'蓝色颜料'
tItem[3307854] = tItem[3307852]
-- 3307855,'黄色颜料'
tItem[3307855] = tItem[3307852]
-- 3307856,'紫色颜料'
tItem[3307856] = tItem[3307852]

-- 3307857,'万能颜料'
tItemFace[3307857] = 1416
tItem[3307857] = tItem[3307857] or {}
tItem[3307857]["Function"] = function(nItemId,sItemName)
	-- 过期删除
	if not Sys_ChkFullTime(tEasterEgg_Painting_Count["ActivityTime"]) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tEasterEgg_Painting_Text["OverDue"])
			local sLog = tEasterEgg_Painting_Log["OverDue"]
			Sys_SaveActionFestivalLog(string.format(sLog,nItemId))
 		end
		return
	end
	
	LinkItemGossipFunc_New(nItemId,"1-1")
end
tItem[3307857]["DialogueText"] = tEasterEgg_Painting_Text[3307857]
tItem[3307857]["Text1-1"] = {111}
tItem[3307857]["tOption1-1"] = {111,112,113,114,115,116}
tItem[3307857]["OptionFunc111"] = "EasterEgg_Painting_UseItem</N>3307857</N>3307852"
tItem[3307857]["OptionFunc112"] = "EasterEgg_Painting_UseItem</N>3307857</N>3307853"
tItem[3307857]["OptionFunc113"] = "EasterEgg_Painting_UseItem</N>3307857</N>3307854"
tItem[3307857]["OptionFunc114"] = "EasterEgg_Painting_UseItem</N>3307857</N>3307855"
tItem[3307857]["OptionFunc115"] = "EasterEgg_Painting_UseItem</N>3307857</N>3307856"

-- 3307858,'欢乐彩蛋礼盒'
tItem[3307858] = tItem[3307858] or {}
tItem[3307858]["Function"] = function(nItemId,sItemName)
	EasterEgg_Painting_OpenItem(nItemId)
end

tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,EasterEgg_Painting_OnLine)
