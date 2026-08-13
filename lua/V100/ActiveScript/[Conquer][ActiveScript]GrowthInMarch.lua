------------------------------------------------------------------------------------
--Name：        200217[英文征服][活动脚本]3月职业成长之路（3.19-4.10）
--Creator:      茅志伟
--Created:      DATE：2020-02-17
------------------------------------------------------------------------------------
-- 命名前缀 ：tGrowthInMarch_

-- Lua.ini = 41725
-- 41725 = V100\ActiveScript\[Conquer][ActiveScript]GrowthInMarch.lua
-- 41725 = V100\活动脚本\[征服][活动脚本]3月职业成长之路（3.19-4.10）.lua
-- Logid = 10002468


local tGrowthInMarch_Stc = {}
-- 记录凭证上交数量
tGrowthInMarch_Stc["VoucherNum"] = {}
-- 赤炼石凭证
tGrowthInMarch_Stc["VoucherNum"][1] = {}
tGrowthInMarch_Stc["VoucherNum"][1]["EventType"] = 216
tGrowthInMarch_Stc["VoucherNum"][1]["DataType"] = 42
-- 气力值凭证
tGrowthInMarch_Stc["VoucherNum"][2] = {}
tGrowthInMarch_Stc["VoucherNum"][2]["EventType"] = 216
tGrowthInMarch_Stc["VoucherNum"][2]["DataType"] = 43
-- 万能神纹精粹凭证
tGrowthInMarch_Stc["VoucherNum"][3] = {}
tGrowthInMarch_Stc["VoucherNum"][3]["EventType"] = 216
tGrowthInMarch_Stc["VoucherNum"][3]["DataType"] = 44

-- 每日凭证上交总数
tGrowthInMarch_Stc["VoucherDayTotalNum"] = {}
tGrowthInMarch_Stc["VoucherDayTotalNum"]["EventType"] = 216
tGrowthInMarch_Stc["VoucherDayTotalNum"]["DataType"] = 76

-- 记录上交凭证领奖情况
tGrowthInMarch_Stc["VoucherReward"] = {}
-- 赤炼石凭证奖励
tGrowthInMarch_Stc["VoucherReward"][1] = {}
tGrowthInMarch_Stc["VoucherReward"][1]["EventType"] = 216
tGrowthInMarch_Stc["VoucherReward"][1]["DataType"] = 45
-- 气力值凭证奖励
tGrowthInMarch_Stc["VoucherReward"][2] = {}
tGrowthInMarch_Stc["VoucherReward"][2]["EventType"] = 216
tGrowthInMarch_Stc["VoucherReward"][2]["DataType"] = 46
-- 万能神纹精粹凭证奖励
tGrowthInMarch_Stc["VoucherReward"][3] = {}
tGrowthInMarch_Stc["VoucherReward"][3]["EventType"] = 216
tGrowthInMarch_Stc["VoucherReward"][3]["DataType"] = 47




-- 常量表
tGrowthInMarch_Data = {}
tGrowthInMarch_Data["VoucherId"] = {}
tGrowthInMarch_Data["VoucherId"][1] = 3329843
tGrowthInMarch_Data["VoucherId"][2] = 3329844
tGrowthInMarch_Data["VoucherId"][3] = 3329845

tGrowthInMarch_Data["RewardNum"] = {}
-- 赤炼石
tGrowthInMarch_Data["RewardNum"][1] = {}
tGrowthInMarch_Data["RewardNum"][1][1] = 1
tGrowthInMarch_Data["RewardNum"][1][2] = 3
tGrowthInMarch_Data["RewardNum"][1][3] = 5
tGrowthInMarch_Data["RewardNum"][1][4] = 10
tGrowthInMarch_Data["RewardNum"][1][5] = 15
tGrowthInMarch_Data["RewardNum"][1][6] = 20
tGrowthInMarch_Data["RewardNum"][1][7] = 35

-- 气力值
tGrowthInMarch_Data["RewardNum"][2] = {}
tGrowthInMarch_Data["RewardNum"][2][1] = 1
tGrowthInMarch_Data["RewardNum"][2][2] = 3
tGrowthInMarch_Data["RewardNum"][2][3] = 5
tGrowthInMarch_Data["RewardNum"][2][4] = 10
tGrowthInMarch_Data["RewardNum"][2][5] = 15
tGrowthInMarch_Data["RewardNum"][2][6] = 20
tGrowthInMarch_Data["RewardNum"][2][7] = 35

-- 万能神纹精粹
tGrowthInMarch_Data["RewardNum"][3] = {}
tGrowthInMarch_Data["RewardNum"][3][1] = 1
tGrowthInMarch_Data["RewardNum"][3][2] = 3
tGrowthInMarch_Data["RewardNum"][3][3] = 5
tGrowthInMarch_Data["RewardNum"][3][4] = 10
tGrowthInMarch_Data["RewardNum"][3][5] = 15
tGrowthInMarch_Data["RewardNum"][3][6] = 20
tGrowthInMarch_Data["RewardNum"][3][7] = 35



tGrowthInMarch_Data["MailActionID"] = {}

tGrowthInMarch_Data["MailActionID"]["LevelReward"] = {}
-- 赤炼石等级奖励
tGrowthInMarch_Data["MailActionID"]["LevelReward"][1] = {}
tGrowthInMarch_Data["MailActionID"]["LevelReward"][1][1] = 576396
tGrowthInMarch_Data["MailActionID"]["LevelReward"][1][2] = 576397
tGrowthInMarch_Data["MailActionID"]["LevelReward"][1][3] = 576398
tGrowthInMarch_Data["MailActionID"]["LevelReward"][1][4] = 576399
tGrowthInMarch_Data["MailActionID"]["LevelReward"][1][5] = 576400
tGrowthInMarch_Data["MailActionID"]["LevelReward"][1][6] = 576401
tGrowthInMarch_Data["MailActionID"]["LevelReward"][1][7] = 576402
-- 气力值等级奖励
tGrowthInMarch_Data["MailActionID"]["LevelReward"][2] = {}
tGrowthInMarch_Data["MailActionID"]["LevelReward"][2][1] = 576403
tGrowthInMarch_Data["MailActionID"]["LevelReward"][2][2] = 576404
tGrowthInMarch_Data["MailActionID"]["LevelReward"][2][3] = 576405
tGrowthInMarch_Data["MailActionID"]["LevelReward"][2][4] = 576406
tGrowthInMarch_Data["MailActionID"]["LevelReward"][2][5] = 576407
tGrowthInMarch_Data["MailActionID"]["LevelReward"][2][6] = 576408
tGrowthInMarch_Data["MailActionID"]["LevelReward"][2][7] = 576409
-- 万能神纹精粹等级奖励
tGrowthInMarch_Data["MailActionID"]["LevelReward"][3] = {}
tGrowthInMarch_Data["MailActionID"]["LevelReward"][3][1] = 576410
tGrowthInMarch_Data["MailActionID"]["LevelReward"][3][2] = 576411
tGrowthInMarch_Data["MailActionID"]["LevelReward"][3][3] = 576412
tGrowthInMarch_Data["MailActionID"]["LevelReward"][3][4] = 576413
tGrowthInMarch_Data["MailActionID"]["LevelReward"][3][5] = 576414
tGrowthInMarch_Data["MailActionID"]["LevelReward"][3][6] = 576415
tGrowthInMarch_Data["MailActionID"]["LevelReward"][3][7] = 576416

tGrowthInMarch_Data["NpcId"] = {}
tGrowthInMarch_Data["NpcId"][1] = 25990
tGrowthInMarch_Data["NpcId"][2] = 25991

-- 排行榜id
tGrowthInMarch_Data["RankId"] = {}
tGrowthInMarch_Data["RankId"][1] = 259911 


--排行榜数据
tGrowthInMarch_Data["RankGlobal"] = {}

tGrowthInMarch_Data["RankGlobal"][1] = {}
tGrowthInMarch_Data["RankGlobal"][1][1]  = {54262,0,576386}
tGrowthInMarch_Data["RankGlobal"][1][2]  = {54262,2,576387}
tGrowthInMarch_Data["RankGlobal"][1][3]  = {54262,4,576388}
tGrowthInMarch_Data["RankGlobal"][1][4]  = {54263,0,576389}
tGrowthInMarch_Data["RankGlobal"][1][5]  = {54263,2,576390}
tGrowthInMarch_Data["RankGlobal"][1][6]  = {54263,4,576391}
tGrowthInMarch_Data["RankGlobal"][1][7]  = {54264,0,576392}
tGrowthInMarch_Data["RankGlobal"][1][8]  = {54264,2,576393}
tGrowthInMarch_Data["RankGlobal"][1][9]  = {54264,4,576394}
tGrowthInMarch_Data["RankGlobal"][1][10] = {54265,0,576395}






-- 成长礼包付费天石数量及类型、对白序号、第几层礼包
tGrowthInMarch_Data["PayCpNum"] = {}
-- +6赤炼石
tGrowthInMarch_Data["PayCpNum"][3329812] = {0,1,1,1}
tGrowthInMarch_Data["PayCpNum"][3329813] = {389,1,1,2}
tGrowthInMarch_Data["PayCpNum"][3329814] = {369,1,1,3}
tGrowthInMarch_Data["PayCpNum"][3329815] = {349,1,1,4}
tGrowthInMarch_Data["PayCpNum"][3329816] = {319,1,1,5}
-- +8赤炼石
tGrowthInMarch_Data["PayCpNum"][3329817] = {0,1,2,1}
tGrowthInMarch_Data["PayCpNum"][3329818] = {3149,1,2,2}
tGrowthInMarch_Data["PayCpNum"][3329819] = {2949,1,2,3}
tGrowthInMarch_Data["PayCpNum"][3329820] = {2749,1,2,4}
tGrowthInMarch_Data["PayCpNum"][3329821] = {2599,1,2,5}
-- 10万气力值
tGrowthInMarch_Data["PayCpNum"][3329822] = {0,2,3,1}
tGrowthInMarch_Data["PayCpNum"][3329823] = {3300,2,3,2} 
tGrowthInMarch_Data["PayCpNum"][3329824] = {3100,2,3,3} 
tGrowthInMarch_Data["PayCpNum"][3329825] = {3000,2,3,4} 
tGrowthInMarch_Data["PayCpNum"][3329826] = {2900,2,3,5} 
-- 100万气力值
tGrowthInMarch_Data["PayCpNum"][3329827] = {0,2,4,1}
tGrowthInMarch_Data["PayCpNum"][3329828] = {30000,2,4,2}
tGrowthInMarch_Data["PayCpNum"][3329829] = {29000,2,4,3}
tGrowthInMarch_Data["PayCpNum"][3329830] = {28000,2,4,4}
tGrowthInMarch_Data["PayCpNum"][3329831] = {27000,2,4,5}
-- 500个万能神纹精粹
tGrowthInMarch_Data["PayCpNum"][3329832] = {0,3,5,1}
tGrowthInMarch_Data["PayCpNum"][3329833] = {899,3,5,2} 
tGrowthInMarch_Data["PayCpNum"][3329834] = {799,3,5,3} 
tGrowthInMarch_Data["PayCpNum"][3329835] = {699,3,5,4} 
tGrowthInMarch_Data["PayCpNum"][3329836] = {599,3,5,5} 
-- 10000个万能神纹精粹
tGrowthInMarch_Data["PayCpNum"][3329837] = {0,3,6,1}
tGrowthInMarch_Data["PayCpNum"][3329838] = {18999,3,6,2}
tGrowthInMarch_Data["PayCpNum"][3329839] = {17999,3,6,3}
tGrowthInMarch_Data["PayCpNum"][3329840] = {16999,3,6,4}
tGrowthInMarch_Data["PayCpNum"][3329841] = {15999,3,6,5}

tGrowthInMarch_Data["GlobalId"] = {}
tGrowthInMarch_Data["GlobalId"][1] = 54269

-- 排行榜模板
	tRankingFunc_Info[259911] = {}
	tRankingFunc_Info[259911]["DayTime"] = {}
	tRankingFunc_Info[259911]["DayTime"][1] = "00:00 23:59"
	-- tRankingFunc_Info[259911]["Reset"] = 1
	tRankingFunc_Info[259911]["ResetTime"] = {}
	tRankingFunc_Info[259911]["ResetTime"][1] = "00:00 00:05"
	tRankingFunc_Info[259911]["RankMode"] = 1
	tRankingFunc_Info[259911]["ActiveTime"] = tActivityTime["GrowthInMarch"]["RankActTime"]
	tRankingFunc_Info[259911]["Global"] = {54262,54263,54264,54265}
	tRankingFunc_Info[259911]["BeforeGlobal"] = {54266,54267,54268,54269}
	tRankingFunc_Info[259911]["RankNum"] = 10
	
	tRankingFunc_Info[259911]["Mail"] = {}
	tRankingFunc_Info[259911]["Mail"]["ActiveTime"] = tActivityTime["GrowthInMarch"]["RankMailTime"]
	tRankingFunc_Info[259911]["Mail"]["RewardTime"] = {}
	tRankingFunc_Info[259911]["Mail"]["RewardTime"][1] = "00:00 00:05"
	
	tRankingFunc_Info[259911]["Mail"]["Reward"] = {}
	tRankingFunc_Info[259911]["Mail"]["Reward"][1] = {}
	tRankingFunc_Info[259911]["Mail"]["Reward"][1]["RewardRank"] = 1
	tRankingFunc_Info[259911]["Mail"]["Reward"][1]["ActionId"] = 576386
	tRankingFunc_Info[259911]["Mail"]["Reward"][1]["ExistDay"] = 30
	tRankingFunc_Info[259911]["Mail"]["Reward"][1]["Title"] = tGrowthInMarch_Text["Mail"][2]["Zhuti"]
	tRankingFunc_Info[259911]["Mail"]["Reward"][1]["Sender"] = tGrowthInMarch_Text["Mail"][2]["Name"]
	tRankingFunc_Info[259911]["Mail"]["Reward"][1]["Content"] = string.format(tGrowthInMarch_Text["Mail"][2]["NeiRong"],1)
	-- tRankingFunc_Info[259911]["Mail"]["Reward"][1]["Content"] = tGrowthInMarch_Text["Mail"][2]["NeiRong"]
	tRankingFunc_Info[259911]["Mail"]["Reward"][2] = {}
	tRankingFunc_Info[259911]["Mail"]["Reward"][2]["RewardRank"] = 2
	tRankingFunc_Info[259911]["Mail"]["Reward"][2]["ActionId"] = 576387
	tRankingFunc_Info[259911]["Mail"]["Reward"][2]["ExistDay"] = 30
	tRankingFunc_Info[259911]["Mail"]["Reward"][2]["Title"] = tGrowthInMarch_Text["Mail"][2]["Zhuti"]
	tRankingFunc_Info[259911]["Mail"]["Reward"][2]["Sender"] = tGrowthInMarch_Text["Mail"][2]["Name"]
	tRankingFunc_Info[259911]["Mail"]["Reward"][2]["Content"] = string.format(tGrowthInMarch_Text["Mail"][2]["NeiRong"],2)
	-- tRankingFunc_Info[259911]["Mail"]["Reward"][2]["Content"] = tGrowthInMarch_Text["Mail"][2]["NeiRong"]
	tRankingFunc_Info[259911]["Mail"]["Reward"][3] = {}
	tRankingFunc_Info[259911]["Mail"]["Reward"][3]["RewardRank"] = 3
	tRankingFunc_Info[259911]["Mail"]["Reward"][3]["ActionId"] = 576388
	tRankingFunc_Info[259911]["Mail"]["Reward"][3]["ExistDay"] = 30
	tRankingFunc_Info[259911]["Mail"]["Reward"][3]["Title"] = tGrowthInMarch_Text["Mail"][2]["Zhuti"]
	tRankingFunc_Info[259911]["Mail"]["Reward"][3]["Sender"] = tGrowthInMarch_Text["Mail"][2]["Name"]
	tRankingFunc_Info[259911]["Mail"]["Reward"][3]["Content"] = string.format(tGrowthInMarch_Text["Mail"][2]["NeiRong"],3)
	-- tRankingFunc_Info[259911]["Mail"]["Reward"][3]["Content"] = tGrowthInMarch_Text["Mail"][2]["NeiRong"]
	tRankingFunc_Info[259911]["Mail"]["Reward"][4] = {}
	tRankingFunc_Info[259911]["Mail"]["Reward"][4]["RewardRank"] = 4
	tRankingFunc_Info[259911]["Mail"]["Reward"][4]["ActionId"] = 576389
	tRankingFunc_Info[259911]["Mail"]["Reward"][4]["ExistDay"] = 30
	tRankingFunc_Info[259911]["Mail"]["Reward"][4]["Title"] = tGrowthInMarch_Text["Mail"][2]["Zhuti"]
	tRankingFunc_Info[259911]["Mail"]["Reward"][4]["Sender"] = tGrowthInMarch_Text["Mail"][2]["Name"]
	tRankingFunc_Info[259911]["Mail"]["Reward"][4]["Content"] = string.format(tGrowthInMarch_Text["Mail"][2]["NeiRong"],4)
	-- tRankingFunc_Info[259911]["Mail"]["Reward"][4]["Content"] = tGrowthInMarch_Text["Mail"][2]["NeiRong"]
	tRankingFunc_Info[259911]["Mail"]["Reward"][5] = {}
	tRankingFunc_Info[259911]["Mail"]["Reward"][5]["RewardRank"] = 5
	tRankingFunc_Info[259911]["Mail"]["Reward"][5]["ActionId"] = 576390
	tRankingFunc_Info[259911]["Mail"]["Reward"][5]["ExistDay"] = 30
	tRankingFunc_Info[259911]["Mail"]["Reward"][5]["Title"] = tGrowthInMarch_Text["Mail"][2]["Zhuti"]
	tRankingFunc_Info[259911]["Mail"]["Reward"][5]["Sender"] = tGrowthInMarch_Text["Mail"][2]["Name"]
	tRankingFunc_Info[259911]["Mail"]["Reward"][5]["Content"] = string.format(tGrowthInMarch_Text["Mail"][2]["NeiRong"],5)
	-- tRankingFunc_Info[259911]["Mail"]["Reward"][5]["Content"] = tGrowthInMarch_Text["Mail"][2]["NeiRong"]
	tRankingFunc_Info[259911]["Mail"]["Reward"][6] = {}
	tRankingFunc_Info[259911]["Mail"]["Reward"][6]["RewardRank"] = 6
	tRankingFunc_Info[259911]["Mail"]["Reward"][6]["ActionId"] = 576391
	tRankingFunc_Info[259911]["Mail"]["Reward"][6]["ExistDay"] = 30
	tRankingFunc_Info[259911]["Mail"]["Reward"][6]["Title"] = tGrowthInMarch_Text["Mail"][2]["Zhuti"]
	tRankingFunc_Info[259911]["Mail"]["Reward"][6]["Sender"] = tGrowthInMarch_Text["Mail"][2]["Name"]
	tRankingFunc_Info[259911]["Mail"]["Reward"][6]["Content"] = string.format(tGrowthInMarch_Text["Mail"][2]["NeiRong"],6)
	-- tRankingFunc_Info[259911]["Mail"]["Reward"][6]["Content"] = tGrowthInMarch_Text["Mail"][2]["NeiRong"]
	tRankingFunc_Info[259911]["Mail"]["Reward"][7] = {}
	tRankingFunc_Info[259911]["Mail"]["Reward"][7]["RewardRank"] = 7
	tRankingFunc_Info[259911]["Mail"]["Reward"][7]["ActionId"] = 576392
	tRankingFunc_Info[259911]["Mail"]["Reward"][7]["ExistDay"] = 30
	tRankingFunc_Info[259911]["Mail"]["Reward"][7]["Title"] = tGrowthInMarch_Text["Mail"][2]["Zhuti"]
	tRankingFunc_Info[259911]["Mail"]["Reward"][7]["Sender"] = tGrowthInMarch_Text["Mail"][2]["Name"]
	tRankingFunc_Info[259911]["Mail"]["Reward"][7]["Content"] = string.format(tGrowthInMarch_Text["Mail"][2]["NeiRong"],7)
	-- tRankingFunc_Info[259911]["Mail"]["Reward"][7]["Content"] = tGrowthInMarch_Text["Mail"][2]["NeiRong"]
	tRankingFunc_Info[259911]["Mail"]["Reward"][8] = {}
	tRankingFunc_Info[259911]["Mail"]["Reward"][8]["RewardRank"] = 8
	tRankingFunc_Info[259911]["Mail"]["Reward"][8]["ActionId"] = 576393
	tRankingFunc_Info[259911]["Mail"]["Reward"][8]["ExistDay"] = 30
	tRankingFunc_Info[259911]["Mail"]["Reward"][8]["Title"] = tGrowthInMarch_Text["Mail"][2]["Zhuti"]
	tRankingFunc_Info[259911]["Mail"]["Reward"][8]["Sender"] = tGrowthInMarch_Text["Mail"][2]["Name"]
	tRankingFunc_Info[259911]["Mail"]["Reward"][8]["Content"] = string.format(tGrowthInMarch_Text["Mail"][2]["NeiRong"],8)
	-- tRankingFunc_Info[259911]["Mail"]["Reward"][8]["Content"] = tGrowthInMarch_Text["Mail"][2]["NeiRong"]
	tRankingFunc_Info[259911]["Mail"]["Reward"][9] = {}
	tRankingFunc_Info[259911]["Mail"]["Reward"][9]["RewardRank"] = 9
	tRankingFunc_Info[259911]["Mail"]["Reward"][9]["ActionId"] = 576394
	tRankingFunc_Info[259911]["Mail"]["Reward"][9]["ExistDay"] = 30
	tRankingFunc_Info[259911]["Mail"]["Reward"][9]["Title"] = tGrowthInMarch_Text["Mail"][2]["Zhuti"]
	tRankingFunc_Info[259911]["Mail"]["Reward"][9]["Sender"] = tGrowthInMarch_Text["Mail"][2]["Name"]
	tRankingFunc_Info[259911]["Mail"]["Reward"][9]["Content"] = string.format(tGrowthInMarch_Text["Mail"][2]["NeiRong"],9)
	-- tRankingFunc_Info[259911]["Mail"]["Reward"][9]["Content"] = tGrowthInMarch_Text["Mail"][2]["NeiRong"]
	tRankingFunc_Info[259911]["Mail"]["Reward"][10] = {}
	tRankingFunc_Info[259911]["Mail"]["Reward"][10]["RewardRank"] = 10
	tRankingFunc_Info[259911]["Mail"]["Reward"][10]["ActionId"] = 576395
	tRankingFunc_Info[259911]["Mail"]["Reward"][10]["ExistDay"] = 30
	tRankingFunc_Info[259911]["Mail"]["Reward"][10]["Title"] = tGrowthInMarch_Text["Mail"][2]["Zhuti"]
	tRankingFunc_Info[259911]["Mail"]["Reward"][10]["Sender"] = tGrowthInMarch_Text["Mail"][2]["Name"]
	tRankingFunc_Info[259911]["Mail"]["Reward"][10]["Content"] = string.format(tGrowthInMarch_Text["Mail"][2]["NeiRong"],10)
	-- tRankingFunc_Info[259911]["Mail"]["Reward"][10]["Content"] =tGrowthInMarch_Text["Mail"][2]["NeiRong"]
	
local tGrowthInMarch_Pack = {}
	-- ===+6赤炼石（赠）礼盒
	-- ===索引: tGrowthInMarch_Pack[3329812]
	-- ===删除:3329812,1
	-- ===EMoneyLog: 1000,1547
	-- ===
	tGrowthInMarch_Pack[3329812] = {}
	tGrowthInMarch_Pack[3329812]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329812]["EmoneyLog"] = "1000	1547	0	0	1	"
	tGrowthInMarch_Pack[3329812]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329812]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329812]["DeleteItem"][1]["Id"] = 3329812 -- 【库】+6Stone(B)Box[属性:9]
	tGrowthInMarch_Pack[3329812]["RewardItem"] = {}
	tGrowthInMarch_Pack[3329812]["RewardItem"][1] = {}
	tGrowthInMarch_Pack[3329812]["RewardItem"][1]["Id"] = 730006 -- +6Stone[730006][属性:0][叠加:0][金币:0], 【表格】+6赤炼石（赠）
	tGrowthInMarch_Pack[3329812]["RewardItem"][1]["Attr"] = "0 1 3" -- +6Stone（赠）*1
	tGrowthInMarch_Pack[3329812]["RewardItem"][2] = {}
	tGrowthInMarch_Pack[3329812]["RewardItem"][2]["Id"] = 3329843 -- +StoneCertificate[3329843][属性:11][叠加:10000][金币:0], 【表格】赤炼石凭证
	tGrowthInMarch_Pack[3329812]["RewardItem"][2]["Attr"] = "0 1" -- +StoneCertificate*1
	tGrowthInMarch_Pack[3329812]["RewardItem"][3] = {}
	tGrowthInMarch_Pack[3329812]["RewardItem"][3]["Id"] = 3329813 -- +6Stone(B)Box[3329813][属性:9][叠加:0][金币:0], 【表格】+6赤炼石（赠）礼盒
	tGrowthInMarch_Pack[3329812]["RewardItem"][3]["Attr"] = "0 1" -- +6Stone(B)Box*1
	tGrowthInMarch_Pack[3329812]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329812]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329812]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329813] = {}
	-- ===+6赤炼石（赠）礼盒
	-- ===索引: tGrowthInMarch_Pack[3329813]
	-- ===删除:3329813,1
	-- ===EMoneyLog: 1000,1547
	-- ===
	tGrowthInMarch_Pack[3329813]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329813]["EmoneyLog"] = "1000	1547	0	0	2	"
	tGrowthInMarch_Pack[3329813]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329813]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329813]["DeleteItem"][1]["Id"] = 3329813 -- 【库】+6Stone(B)Box[属性:9]
	tGrowthInMarch_Pack[3329813]["RewardItem"] = {}
	tGrowthInMarch_Pack[3329813]["RewardItem"][1] = {}
	tGrowthInMarch_Pack[3329813]["RewardItem"][1]["Id"] = 730006 -- +6Stone[730006][属性:0][叠加:0][金币:0], 【表格】+6赤炼石（赠）
	tGrowthInMarch_Pack[3329813]["RewardItem"][1]["Attr"] = "0 1 3" -- +6Stone（赠）*1
	tGrowthInMarch_Pack[3329813]["RewardItem"][2] = {}
	tGrowthInMarch_Pack[3329813]["RewardItem"][2]["Id"] = 3329843 -- +StoneCertificate[3329843][属性:11][叠加:10000][金币:0], 【表格】赤炼石凭证
	tGrowthInMarch_Pack[3329813]["RewardItem"][2]["Attr"] = "0 1" -- +StoneCertificate*1
	tGrowthInMarch_Pack[3329813]["RewardItem"][3] = {}
	tGrowthInMarch_Pack[3329813]["RewardItem"][3]["Id"] = 3329814 -- +6Stone(B)Box[3329814][属性:9][叠加:0][金币:0], 【表格】+6赤炼石（赠）礼盒
	tGrowthInMarch_Pack[3329813]["RewardItem"][3]["Attr"] = "0 1" -- +6Stone(B)Box*1
	tGrowthInMarch_Pack[3329813]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329813]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329813]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329814] = {}
	-- ===+6赤炼石（赠）礼盒
	-- ===索引: tGrowthInMarch_Pack[3329814]
	-- ===删除:3329814,1
	-- ===EMoneyLog: 1000,1547
	-- ===
	tGrowthInMarch_Pack[3329814]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329814]["EmoneyLog"] = "1000	1547	0	0	3	"
	tGrowthInMarch_Pack[3329814]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329814]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329814]["DeleteItem"][1]["Id"] = 3329814 -- 【库】+6Stone(B)Box[属性:9]
	tGrowthInMarch_Pack[3329814]["RewardItem"] = {}
	tGrowthInMarch_Pack[3329814]["RewardItem"][1] = {}
	tGrowthInMarch_Pack[3329814]["RewardItem"][1]["Id"] = 730006 -- +6Stone[730006][属性:0][叠加:0][金币:0], 【表格】+6赤炼石（赠）
	tGrowthInMarch_Pack[3329814]["RewardItem"][1]["Attr"] = "0 1 3" -- +6Stone（赠）*1
	tGrowthInMarch_Pack[3329814]["RewardItem"][2] = {}
	tGrowthInMarch_Pack[3329814]["RewardItem"][2]["Id"] = 3329843 -- +StoneCertificate[3329843][属性:11][叠加:10000][金币:0], 【表格】赤炼石凭证
	tGrowthInMarch_Pack[3329814]["RewardItem"][2]["Attr"] = "0 1" -- +StoneCertificate*1
	tGrowthInMarch_Pack[3329814]["RewardItem"][3] = {}
	tGrowthInMarch_Pack[3329814]["RewardItem"][3]["Id"] = 3329815 -- +6Stone(B)Box[3329815][属性:9][叠加:0][金币:0], 【表格】+6赤炼石（赠）礼盒
	tGrowthInMarch_Pack[3329814]["RewardItem"][3]["Attr"] = "0 1" -- +6Stone(B)Box*1
	tGrowthInMarch_Pack[3329814]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329814]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329814]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329815] = {}
	-- ===+6赤炼石（赠）礼盒
	-- ===索引: tGrowthInMarch_Pack[3329815]
	-- ===删除:3329815,1
	-- ===EMoneyLog: 1000,1547
	-- ===
	tGrowthInMarch_Pack[3329815]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329815]["EmoneyLog"] = "1000	1547	0	0	4	"
	tGrowthInMarch_Pack[3329815]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329815]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329815]["DeleteItem"][1]["Id"] = 3329815 -- 【库】+6Stone(B)Box[属性:9]
	tGrowthInMarch_Pack[3329815]["RewardItem"] = {}
	tGrowthInMarch_Pack[3329815]["RewardItem"][1] = {}
	tGrowthInMarch_Pack[3329815]["RewardItem"][1]["Id"] = 730006 -- +6Stone[730006][属性:0][叠加:0][金币:0], 【表格】+6赤炼石（赠）
	tGrowthInMarch_Pack[3329815]["RewardItem"][1]["Attr"] = "0 1 3" -- +6Stone（赠）*1
	tGrowthInMarch_Pack[3329815]["RewardItem"][2] = {}
	tGrowthInMarch_Pack[3329815]["RewardItem"][2]["Id"] = 3329843 -- +StoneCertificate[3329843][属性:11][叠加:10000][金币:0], 【表格】赤炼石凭证
	tGrowthInMarch_Pack[3329815]["RewardItem"][2]["Attr"] = "0 1" -- +StoneCertificate*1
	tGrowthInMarch_Pack[3329815]["RewardItem"][3] = {}
	tGrowthInMarch_Pack[3329815]["RewardItem"][3]["Id"] = 3329816 -- +6Stone(B)Box[3329816][属性:9][叠加:0][金币:0], 【表格】+6赤炼石（赠）礼盒
	tGrowthInMarch_Pack[3329815]["RewardItem"][3]["Attr"] = "0 1" -- +6Stone(B)Box*1
	tGrowthInMarch_Pack[3329815]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329815]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329815]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329816] = {}
	-- ===+6赤炼石（赠）礼盒
	-- ===索引: tGrowthInMarch_Pack[3329816]
	-- ===删除:3329816,1
	-- ===EMoneyLog: 1000,1547
	-- ===
	tGrowthInMarch_Pack[3329816]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329816]["EmoneyLog"] = "1000	1547	0	0	5	"
	tGrowthInMarch_Pack[3329816]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329816]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329816]["DeleteItem"][1]["Id"] = 3329816 -- 【库】+6Stone(B)Box[属性:9]
	tGrowthInMarch_Pack[3329816]["RewardItem"] = {}
	tGrowthInMarch_Pack[3329816]["RewardItem"][1] = {}
	tGrowthInMarch_Pack[3329816]["RewardItem"][1]["Id"] = 730006 -- +6Stone[730006][属性:0][叠加:0][金币:0], 【表格】+6赤炼石（赠）
	tGrowthInMarch_Pack[3329816]["RewardItem"][1]["Attr"] = "0 1 3" -- +6Stone（赠）*1
	tGrowthInMarch_Pack[3329816]["RewardItem"][2] = {}
	tGrowthInMarch_Pack[3329816]["RewardItem"][2]["Id"] = 3329843 -- +StoneCertificate[3329843][属性:11][叠加:10000][金币:0], 【表格】赤炼石凭证
	tGrowthInMarch_Pack[3329816]["RewardItem"][2]["Attr"] = "0 1" -- +StoneCertificate*1
	tGrowthInMarch_Pack[3329816]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329816]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329816]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329817] = {}
	-- ===+8赤炼石（赠）礼盒
	-- ===索引: tGrowthInMarch_Pack[3329817]
	-- ===删除:3329817,1
	-- ===EMoneyLog: 1000,1548
	-- ===
	tGrowthInMarch_Pack[3329817]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329817]["EmoneyLog"] = "1000	1548	0	0	1	"
	tGrowthInMarch_Pack[3329817]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329817]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329817]["DeleteItem"][1]["Id"] = 3329817 -- 【库】+8Stone(B)Box[属性:9]
	tGrowthInMarch_Pack[3329817]["RewardItem"] = {}
	tGrowthInMarch_Pack[3329817]["RewardItem"][1] = {}
	tGrowthInMarch_Pack[3329817]["RewardItem"][1]["Id"] = 730008 -- +8Stone[730008][属性:0][叠加:0][金币:0], 【表格】+8赤炼石（赠）
	tGrowthInMarch_Pack[3329817]["RewardItem"][1]["Attr"] = "0 1 3" -- +8Stone（赠）*1
	tGrowthInMarch_Pack[3329817]["RewardItem"][2] = {}
	tGrowthInMarch_Pack[3329817]["RewardItem"][2]["Id"] = 3329843 -- +StoneCertificate[3329843][属性:11][叠加:10000][金币:0], 【表格】赤炼石凭证
	tGrowthInMarch_Pack[3329817]["RewardItem"][2]["Attr"] = "0 7" -- +StoneCertificate*7
	tGrowthInMarch_Pack[3329817]["RewardItem"][3] = {}
	tGrowthInMarch_Pack[3329817]["RewardItem"][3]["Id"] = 3329818 -- +8Stone(B)Box[3329818][属性:9][叠加:0][金币:0], 【表格】+8赤炼石（赠）礼盒
	tGrowthInMarch_Pack[3329817]["RewardItem"][3]["Attr"] = "0 1" -- +8Stone(B)Box*1
	tGrowthInMarch_Pack[3329817]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329817]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329817]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329818] = {}
	-- ===+8赤炼石（赠）礼盒
	-- ===索引: tGrowthInMarch_Pack[3329818]
	-- ===删除:3329818,1
	-- ===EMoneyLog: 1000,1548
	-- ===
	tGrowthInMarch_Pack[3329818]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329818]["EmoneyLog"] = "1000	1548	0	0	2	"
	tGrowthInMarch_Pack[3329818]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329818]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329818]["DeleteItem"][1]["Id"] = 3329818 -- 【库】+8Stone(B)Box[属性:9]
	tGrowthInMarch_Pack[3329818]["RewardItem"] = {}
	tGrowthInMarch_Pack[3329818]["RewardItem"][1] = {}
	tGrowthInMarch_Pack[3329818]["RewardItem"][1]["Id"] = 730008 -- +8Stone[730008][属性:0][叠加:0][金币:0], 【表格】+8赤炼石（赠）
	tGrowthInMarch_Pack[3329818]["RewardItem"][1]["Attr"] = "0 1 3" -- +8Stone（赠）*1
	tGrowthInMarch_Pack[3329818]["RewardItem"][2] = {}
	tGrowthInMarch_Pack[3329818]["RewardItem"][2]["Id"] = 3329843 -- +StoneCertificate[3329843][属性:11][叠加:10000][金币:0], 【表格】赤炼石凭证
	tGrowthInMarch_Pack[3329818]["RewardItem"][2]["Attr"] = "0 7" -- +StoneCertificate*7
	tGrowthInMarch_Pack[3329818]["RewardItem"][3] = {}
	tGrowthInMarch_Pack[3329818]["RewardItem"][3]["Id"] = 3329819 -- +8Stone(B)Box[3329819][属性:9][叠加:0][金币:0], 【表格】+8赤炼石（赠）礼盒
	tGrowthInMarch_Pack[3329818]["RewardItem"][3]["Attr"] = "0 1" -- +8Stone(B)Box*1
	tGrowthInMarch_Pack[3329818]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329818]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329818]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329819] = {}
	-- ===+8赤炼石（赠）礼盒
	-- ===索引: tGrowthInMarch_Pack[3329819]
	-- ===删除:3329819,1
	-- ===EMoneyLog: 1000,1548
	-- ===
	tGrowthInMarch_Pack[3329819]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329819]["EmoneyLog"] = "1000	1548	0	0	3	"
	tGrowthInMarch_Pack[3329819]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329819]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329819]["DeleteItem"][1]["Id"] = 3329819 -- 【库】+8Stone(B)Box[属性:9]
	tGrowthInMarch_Pack[3329819]["RewardItem"] = {}
	tGrowthInMarch_Pack[3329819]["RewardItem"][1] = {}
	tGrowthInMarch_Pack[3329819]["RewardItem"][1]["Id"] = 730008 -- +8Stone[730008][属性:0][叠加:0][金币:0], 【表格】+8赤炼石（赠）
	tGrowthInMarch_Pack[3329819]["RewardItem"][1]["Attr"] = "0 1 3" -- +8Stone（赠）*1
	tGrowthInMarch_Pack[3329819]["RewardItem"][2] = {}
	tGrowthInMarch_Pack[3329819]["RewardItem"][2]["Id"] = 3329843 -- +StoneCertificate[3329843][属性:11][叠加:10000][金币:0], 【表格】赤炼石凭证
	tGrowthInMarch_Pack[3329819]["RewardItem"][2]["Attr"] = "0 7" -- +StoneCertificate*7
	tGrowthInMarch_Pack[3329819]["RewardItem"][3] = {}
	tGrowthInMarch_Pack[3329819]["RewardItem"][3]["Id"] = 3329820 -- +8Stone(B)Box[3329820][属性:9][叠加:0][金币:0], 【表格】+8赤炼石（赠）礼盒
	tGrowthInMarch_Pack[3329819]["RewardItem"][3]["Attr"] = "0 1" -- +8Stone(B)Box*1
	tGrowthInMarch_Pack[3329819]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329819]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329819]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329820] = {}
	-- ===+8赤炼石（赠）礼盒
	-- ===索引: tGrowthInMarch_Pack[3329820]
	-- ===删除:3329820,1
	-- ===EMoneyLog: 1000,1548
	-- ===
	tGrowthInMarch_Pack[3329820]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329820]["EmoneyLog"] = "1000	1548	0	0	4	"
	tGrowthInMarch_Pack[3329820]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329820]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329820]["DeleteItem"][1]["Id"] = 3329820 -- 【库】+8Stone(B)Box[属性:9]
	tGrowthInMarch_Pack[3329820]["RewardItem"] = {}
	tGrowthInMarch_Pack[3329820]["RewardItem"][1] = {}
	tGrowthInMarch_Pack[3329820]["RewardItem"][1]["Id"] = 730008 -- +8Stone[730008][属性:0][叠加:0][金币:0], 【表格】+8赤炼石（赠）
	tGrowthInMarch_Pack[3329820]["RewardItem"][1]["Attr"] = "0 1 3" -- +8Stone（赠）*1
	tGrowthInMarch_Pack[3329820]["RewardItem"][2] = {}
	tGrowthInMarch_Pack[3329820]["RewardItem"][2]["Id"] = 3329843 -- +StoneCertificate[3329843][属性:11][叠加:10000][金币:0], 【表格】赤炼石凭证
	tGrowthInMarch_Pack[3329820]["RewardItem"][2]["Attr"] = "0 7" -- +StoneCertificate*7
	tGrowthInMarch_Pack[3329820]["RewardItem"][3] = {}
	tGrowthInMarch_Pack[3329820]["RewardItem"][3]["Id"] = 3329821 -- +8Stone(B)Box[3329821][属性:9][叠加:0][金币:0], 【表格】+8赤炼石（赠）礼盒
	tGrowthInMarch_Pack[3329820]["RewardItem"][3]["Attr"] = "0 1" -- +8Stone(B)Box*1
	tGrowthInMarch_Pack[3329820]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329820]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329820]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329821] = {}
	-- ===+8赤炼石（赠）礼盒
	-- ===索引: tGrowthInMarch_Pack[3329821]
	-- ===删除:3329821,1
	-- ===EMoneyLog: 1000,1548
	-- ===
	tGrowthInMarch_Pack[3329821]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329821]["EmoneyLog"] = "1000	1548	0	0	5	"
	tGrowthInMarch_Pack[3329821]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329821]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329821]["DeleteItem"][1]["Id"] = 3329821 -- 【库】+8Stone(B)Box[属性:9]
	tGrowthInMarch_Pack[3329821]["RewardItem"] = {}
	tGrowthInMarch_Pack[3329821]["RewardItem"][1] = {}
	tGrowthInMarch_Pack[3329821]["RewardItem"][1]["Id"] = 730008 -- +8Stone[730008][属性:0][叠加:0][金币:0], 【表格】+8赤炼石（赠）
	tGrowthInMarch_Pack[3329821]["RewardItem"][1]["Attr"] = "0 1 3" -- +8Stone（赠）*1
	tGrowthInMarch_Pack[3329821]["RewardItem"][2] = {}
	tGrowthInMarch_Pack[3329821]["RewardItem"][2]["Id"] = 3329843 -- +StoneCertificate[3329843][属性:11][叠加:10000][金币:0], 【表格】赤炼石凭证
	tGrowthInMarch_Pack[3329821]["RewardItem"][2]["Attr"] = "0 7" -- +StoneCertificate*7
	tGrowthInMarch_Pack[3329821]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329821]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329821]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329822] = {}
	-- ===10万气力值礼盒
	-- ===索引: tGrowthInMarch_Pack[3329822]
	-- ===删除:3329822,1
	-- ===EMoneyLog: 1000,1549
	-- ===
	tGrowthInMarch_Pack[3329822]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329822]["EmoneyLog"] = "1000	1549	0	0	1	"
	tGrowthInMarch_Pack[3329822]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329822]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329822]["DeleteItem"][1]["Id"] = 3329822 -- 【库】100000ChiPointsBox[属性:9]
	tGrowthInMarch_Pack[3329822]["RewardStrengthValue"] = {}
	tGrowthInMarch_Pack[3329822]["RewardStrengthValue"]["Value"] = 100000 -- 气力值, 【需求】10万气力值
	tGrowthInMarch_Pack[3329822]["RewardItem"] = {}
	tGrowthInMarch_Pack[3329822]["RewardItem"][1] = {}
	tGrowthInMarch_Pack[3329822]["RewardItem"][1]["Id"] = 3329844 -- ChiPointCertificate[3329844][属性:11][叠加:10000][金币:0], 【表格】气力凭证
	tGrowthInMarch_Pack[3329822]["RewardItem"][1]["Attr"] = "0 1" -- ChiPointCertificate*1
	tGrowthInMarch_Pack[3329822]["RewardItem"][2] = {}
	tGrowthInMarch_Pack[3329822]["RewardItem"][2]["Id"] = 3329823 -- 100000ChiPointsBox[3329823][属性:9][叠加:0][金币:0], 【表格】10万气力值礼盒
	tGrowthInMarch_Pack[3329822]["RewardItem"][2]["Attr"] = "0 1" -- 100000ChiPointsBox*1
	tGrowthInMarch_Pack[3329822]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329822]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329822]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329823] = {}
	-- ===10万气力值礼盒
	-- ===索引: tGrowthInMarch_Pack[3329823]
	-- ===删除:3329823,1
	-- ===EMoneyLog: 1000,1549
	-- ===
	tGrowthInMarch_Pack[3329823]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329823]["EmoneyLog"] = "1000	1549	0	0	2	"
	tGrowthInMarch_Pack[3329823]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329823]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329823]["DeleteItem"][1]["Id"] = 3329823 -- 【库】100000ChiPointsBox[属性:9]
	tGrowthInMarch_Pack[3329823]["RewardStrengthValue"] = {}
	tGrowthInMarch_Pack[3329823]["RewardStrengthValue"]["Value"] = 100000 -- 气力值, 【需求】10万气力值
	tGrowthInMarch_Pack[3329823]["RewardItem"] = {}
	tGrowthInMarch_Pack[3329823]["RewardItem"][1] = {}
	tGrowthInMarch_Pack[3329823]["RewardItem"][1]["Id"] = 3329844 -- ChiPointCertificate[3329844][属性:11][叠加:10000][金币:0], 【表格】气力凭证
	tGrowthInMarch_Pack[3329823]["RewardItem"][1]["Attr"] = "0 1" -- ChiPointCertificate*1
	tGrowthInMarch_Pack[3329823]["RewardItem"][2] = {}
	tGrowthInMarch_Pack[3329823]["RewardItem"][2]["Id"] = 3329824 -- 100000ChiPointsBox[3329824][属性:9][叠加:0][金币:0], 【表格】10万气力值礼盒
	tGrowthInMarch_Pack[3329823]["RewardItem"][2]["Attr"] = "0 1" -- 100000ChiPointsBox*1
	tGrowthInMarch_Pack[3329823]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329823]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329823]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329824] = {}
	-- ===10万气力值礼盒
	-- ===索引: tGrowthInMarch_Pack[3329824]
	-- ===删除:3329824,1
	-- ===EMoneyLog: 1000,1549
	-- ===
	tGrowthInMarch_Pack[3329824]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329824]["EmoneyLog"] = "1000	1549	0	0	3	"
	tGrowthInMarch_Pack[3329824]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329824]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329824]["DeleteItem"][1]["Id"] = 3329824 -- 【库】100000ChiPointsBox[属性:9]
	tGrowthInMarch_Pack[3329824]["RewardStrengthValue"] = {}
	tGrowthInMarch_Pack[3329824]["RewardStrengthValue"]["Value"] = 100000 -- 气力值, 【需求】10万气力值
	tGrowthInMarch_Pack[3329824]["RewardItem"] = {}
	tGrowthInMarch_Pack[3329824]["RewardItem"][1] = {}
	tGrowthInMarch_Pack[3329824]["RewardItem"][1]["Id"] = 3329844 -- ChiPointCertificate[3329844][属性:11][叠加:10000][金币:0], 【表格】气力凭证
	tGrowthInMarch_Pack[3329824]["RewardItem"][1]["Attr"] = "0 1" -- ChiPointCertificate*1
	tGrowthInMarch_Pack[3329824]["RewardItem"][2] = {}
	tGrowthInMarch_Pack[3329824]["RewardItem"][2]["Id"] = 3329825 -- 100000ChiPointsBox[3329825][属性:9][叠加:0][金币:0], 【表格】10万气力值礼盒
	tGrowthInMarch_Pack[3329824]["RewardItem"][2]["Attr"] = "0 1" -- 100000ChiPointsBox*1
	tGrowthInMarch_Pack[3329824]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329824]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329824]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329825] = {}
	-- ===10万气力值礼盒
	-- ===索引: tGrowthInMarch_Pack[3329825]
	-- ===删除:3329825,1
	-- ===EMoneyLog: 1000,1549
	-- ===
	tGrowthInMarch_Pack[3329825]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329825]["EmoneyLog"] = "1000	1549	0	0	4	"
	tGrowthInMarch_Pack[3329825]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329825]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329825]["DeleteItem"][1]["Id"] = 3329825 -- 【库】100000ChiPointsBox[属性:9]
	tGrowthInMarch_Pack[3329825]["RewardStrengthValue"] = {}
	tGrowthInMarch_Pack[3329825]["RewardStrengthValue"]["Value"] = 100000 -- 气力值, 【需求】10万气力值
	tGrowthInMarch_Pack[3329825]["RewardItem"] = {}
	tGrowthInMarch_Pack[3329825]["RewardItem"][1] = {}
	tGrowthInMarch_Pack[3329825]["RewardItem"][1]["Id"] = 3329844 -- ChiPointCertificate[3329844][属性:11][叠加:10000][金币:0], 【表格】气力凭证
	tGrowthInMarch_Pack[3329825]["RewardItem"][1]["Attr"] = "0 1" -- ChiPointCertificate*1
	tGrowthInMarch_Pack[3329825]["RewardItem"][2] = {}
	tGrowthInMarch_Pack[3329825]["RewardItem"][2]["Id"] = 3329826 -- 100000ChiPointsBox[3329826][属性:9][叠加:0][金币:0], 【表格】10万气力值礼盒
	tGrowthInMarch_Pack[3329825]["RewardItem"][2]["Attr"] = "0 1" -- 100000ChiPointsBox*1
	tGrowthInMarch_Pack[3329825]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329825]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329825]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329826] = {}
	-- ===10万气力值礼盒
	-- ===索引: tGrowthInMarch_Pack[3329826]
	-- ===删除:3329826,1
	-- ===EMoneyLog: 1000,1549
	-- ===
	tGrowthInMarch_Pack[3329826]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329826]["EmoneyLog"] = "1000	1549	0	0	5	"
	tGrowthInMarch_Pack[3329826]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329826]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329826]["DeleteItem"][1]["Id"] = 3329826 -- 【库】100000ChiPointsBox[属性:9]
	tGrowthInMarch_Pack[3329826]["RewardStrengthValue"] = {}
	tGrowthInMarch_Pack[3329826]["RewardStrengthValue"]["Value"] = 100000 -- 气力值, 【需求】10万气力值
	tGrowthInMarch_Pack[3329826]["RewardItem"] = {}
	tGrowthInMarch_Pack[3329826]["RewardItem"][1] = {}
	tGrowthInMarch_Pack[3329826]["RewardItem"][1]["Id"] = 3329844 -- ChiPointCertificate[3329844][属性:11][叠加:10000][金币:0], 【表格】气力凭证
	tGrowthInMarch_Pack[3329826]["RewardItem"][1]["Attr"] = "0 1" -- ChiPointCertificate*1
	tGrowthInMarch_Pack[3329826]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329826]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329826]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329827] = {}
	-- ===100万气力值礼盒
	-- ===索引: tGrowthInMarch_Pack[3329827]
	-- ===删除:3329827,1
	-- ===EMoneyLog: 1000,1550
	-- ===
	tGrowthInMarch_Pack[3329827]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329827]["EmoneyLog"] = "1000	1550	0	0	1	"
	tGrowthInMarch_Pack[3329827]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329827]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329827]["DeleteItem"][1]["Id"] = 3329827 -- 【库】1000000ChiPointsBox[属性:9]
	tGrowthInMarch_Pack[3329827]["RewardStrengthValue"] = {}
	tGrowthInMarch_Pack[3329827]["RewardStrengthValue"]["Value"] = 1000000 -- 气力值, 【需求】100万气力值
	tGrowthInMarch_Pack[3329827]["RewardItem"] = {}
	tGrowthInMarch_Pack[3329827]["RewardItem"][1] = {}
	tGrowthInMarch_Pack[3329827]["RewardItem"][1]["Id"] = 3329844 -- ChiPointCertificate[3329844][属性:11][叠加:10000][金币:0], 【表格】气力凭证
	tGrowthInMarch_Pack[3329827]["RewardItem"][1]["Attr"] = "0 7" -- ChiPointCertificate*7
	tGrowthInMarch_Pack[3329827]["RewardItem"][2] = {}
	tGrowthInMarch_Pack[3329827]["RewardItem"][2]["Id"] = 3329828 -- 1000000ChiPointsBox[3329828][属性:9][叠加:0][金币:0], 【表格】100万气力值礼盒
	tGrowthInMarch_Pack[3329827]["RewardItem"][2]["Attr"] = "0 1" -- 1000000ChiPointsBox*1
	tGrowthInMarch_Pack[3329827]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329827]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329827]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329828] = {}
	-- ===100万气力值礼盒
	-- ===索引: tGrowthInMarch_Pack[3329828]
	-- ===删除:3329828,1
	-- ===EMoneyLog: 1000,1550
	-- ===
	tGrowthInMarch_Pack[3329828]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329828]["EmoneyLog"] = "1000	1550	0	0	2	"
	tGrowthInMarch_Pack[3329828]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329828]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329828]["DeleteItem"][1]["Id"] = 3329828 -- 【库】1000000ChiPointsBox[属性:9]
	tGrowthInMarch_Pack[3329828]["RewardStrengthValue"] = {}
	tGrowthInMarch_Pack[3329828]["RewardStrengthValue"]["Value"] = 1000000 -- 气力值, 【需求】100万气力值
	tGrowthInMarch_Pack[3329828]["RewardItem"] = {}
	tGrowthInMarch_Pack[3329828]["RewardItem"][1] = {}
	tGrowthInMarch_Pack[3329828]["RewardItem"][1]["Id"] = 3329844 -- ChiPointCertificate[3329844][属性:11][叠加:10000][金币:0], 【表格】气力凭证
	tGrowthInMarch_Pack[3329828]["RewardItem"][1]["Attr"] = "0 7" -- ChiPointCertificate*7
	tGrowthInMarch_Pack[3329828]["RewardItem"][2] = {}
	tGrowthInMarch_Pack[3329828]["RewardItem"][2]["Id"] = 3329829 -- 1000000ChiPointsBox[3329829][属性:9][叠加:0][金币:0], 【表格】100万气力值礼盒
	tGrowthInMarch_Pack[3329828]["RewardItem"][2]["Attr"] = "0 1" -- 1000000ChiPointsBox*1
	tGrowthInMarch_Pack[3329828]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329828]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329828]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329829] = {}
	-- ===100万气力值礼盒
	-- ===索引: tGrowthInMarch_Pack[3329829]
	-- ===删除:3329829,1
	-- ===EMoneyLog: 1000,1550
	-- ===
	tGrowthInMarch_Pack[3329829]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329829]["EmoneyLog"] = "1000	1550	0	0	3	"
	tGrowthInMarch_Pack[3329829]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329829]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329829]["DeleteItem"][1]["Id"] = 3329829 -- 【库】1000000ChiPointsBox[属性:9]
	tGrowthInMarch_Pack[3329829]["RewardStrengthValue"] = {}
	tGrowthInMarch_Pack[3329829]["RewardStrengthValue"]["Value"] = 1000000 -- 气力值, 【需求】100万气力值
	tGrowthInMarch_Pack[3329829]["RewardItem"] = {}
	tGrowthInMarch_Pack[3329829]["RewardItem"][1] = {}
	tGrowthInMarch_Pack[3329829]["RewardItem"][1]["Id"] = 3329844 -- ChiPointCertificate[3329844][属性:11][叠加:10000][金币:0], 【表格】气力凭证
	tGrowthInMarch_Pack[3329829]["RewardItem"][1]["Attr"] = "0 7" -- ChiPointCertificate*7
	tGrowthInMarch_Pack[3329829]["RewardItem"][2] = {}
	tGrowthInMarch_Pack[3329829]["RewardItem"][2]["Id"] = 3329830 -- 1000000ChiPointsBox[3329830][属性:9][叠加:0][金币:0], 【表格】100万气力值礼盒
	tGrowthInMarch_Pack[3329829]["RewardItem"][2]["Attr"] = "0 1" -- 1000000ChiPointsBox*1
	tGrowthInMarch_Pack[3329829]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329829]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329829]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329830] = {}
	-- ===100万气力值礼盒
	-- ===索引: tGrowthInMarch_Pack[3329830]
	-- ===删除:3329830,1
	-- ===EMoneyLog: 1000,1550
	-- ===
	tGrowthInMarch_Pack[3329830]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329830]["EmoneyLog"] = "1000	1550	0	0	4	"
	tGrowthInMarch_Pack[3329830]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329830]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329830]["DeleteItem"][1]["Id"] = 3329830 -- 【库】1000000ChiPointsBox[属性:9]
	tGrowthInMarch_Pack[3329830]["RewardStrengthValue"] = {}
	tGrowthInMarch_Pack[3329830]["RewardStrengthValue"]["Value"] = 1000000 -- 气力值, 【需求】100万气力值
	tGrowthInMarch_Pack[3329830]["RewardItem"] = {}
	tGrowthInMarch_Pack[3329830]["RewardItem"][1] = {}
	tGrowthInMarch_Pack[3329830]["RewardItem"][1]["Id"] = 3329844 -- ChiPointCertificate[3329844][属性:11][叠加:10000][金币:0], 【表格】气力凭证
	tGrowthInMarch_Pack[3329830]["RewardItem"][1]["Attr"] = "0 7" -- ChiPointCertificate*7
	tGrowthInMarch_Pack[3329830]["RewardItem"][2] = {}
	tGrowthInMarch_Pack[3329830]["RewardItem"][2]["Id"] = 3329831 -- 1000000ChiPointsBox[3329831][属性:9][叠加:0][金币:0], 【表格】100万气力值礼盒
	tGrowthInMarch_Pack[3329830]["RewardItem"][2]["Attr"] = "0 1" -- 1000000ChiPointsBox*1
	tGrowthInMarch_Pack[3329830]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329830]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329830]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329831] = {}
	-- ===100万气力值礼盒
	-- ===索引: tGrowthInMarch_Pack[3329831]
	-- ===删除:3329831,1
	-- ===EMoneyLog: 1000,1550
	-- ===
	tGrowthInMarch_Pack[3329831]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329831]["EmoneyLog"] = "1000	1550	0	0	5	"
	tGrowthInMarch_Pack[3329831]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329831]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329831]["DeleteItem"][1]["Id"] = 3329831 -- 【库】1000000ChiPointsBox[属性:9]
	tGrowthInMarch_Pack[3329831]["RewardStrengthValue"] = {}
	tGrowthInMarch_Pack[3329831]["RewardStrengthValue"]["Value"] = 1000000 -- 气力值, 【需求】100万气力值
	tGrowthInMarch_Pack[3329831]["RewardItem"] = {}
	tGrowthInMarch_Pack[3329831]["RewardItem"][1] = {}
	tGrowthInMarch_Pack[3329831]["RewardItem"][1]["Id"] = 3329844 -- ChiPointCertificate[3329844][属性:11][叠加:10000][金币:0], 【表格】气力凭证
	tGrowthInMarch_Pack[3329831]["RewardItem"][1]["Attr"] = "0 7" -- ChiPointCertificate*7
	tGrowthInMarch_Pack[3329831]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329831]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329831]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329832] = {}
	-- ===500个万能神纹精粹礼盒
	-- ===索引: tGrowthInMarch_Pack[3329832]
	-- ===删除:3329832,1
	-- ===EMoneyLog: 1000,1551
	-- ===
	tGrowthInMarch_Pack[3329832]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329832]["EmoneyLog"] = "1000	1551	0	0	1	"
	tGrowthInMarch_Pack[3329832]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329832]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329832]["DeleteItem"][1]["Id"] = 3329832 -- 【库】500UniversalRuneEssencesBox[属性:9]
	tGrowthInMarch_Pack[3329832]["RewardItem"] = {}
	tGrowthInMarch_Pack[3329832]["RewardItem"][1] = {}
	tGrowthInMarch_Pack[3329832]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】500个万能神纹精粹（赠）
	tGrowthInMarch_Pack[3329832]["RewardItem"][1]["Attr"] = "0 500 3" -- UniversalRuneEssence*500（[错误]物品数量超100个）
	tGrowthInMarch_Pack[3329832]["RewardItem"][2] = {}
	tGrowthInMarch_Pack[3329832]["RewardItem"][2]["Id"] = 3329845 -- EssenceCertificate[3329845][属性:11][叠加:10000][金币:0], 【表格】精粹凭证
	tGrowthInMarch_Pack[3329832]["RewardItem"][2]["Attr"] = "0 1" -- EssenceCertificate*1
	tGrowthInMarch_Pack[3329832]["RewardItem"][3] = {}
	tGrowthInMarch_Pack[3329832]["RewardItem"][3]["Id"] = 3329833 -- 500UniversalRuneEssencesBox[3329833][属性:9][叠加:0][金币:0], 【表格】500个万能神纹精粹礼盒
	tGrowthInMarch_Pack[3329832]["RewardItem"][3]["Attr"] = "0 1" -- 500UniversalRuneEssencesBox*1
	tGrowthInMarch_Pack[3329832]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329832]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329832]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329833] = {}
	-- ===500个万能神纹精粹礼盒
	-- ===索引: tGrowthInMarch_Pack[3329833]
	-- ===删除:3329833,1
	-- ===EMoneyLog: 1000,1551
	-- ===
	tGrowthInMarch_Pack[3329833]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329833]["EmoneyLog"] = "1000	1551	0	0	2	"
	tGrowthInMarch_Pack[3329833]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329833]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329833]["DeleteItem"][1]["Id"] = 3329833 -- 【库】500UniversalRuneEssencesBox[属性:9]
	tGrowthInMarch_Pack[3329833]["RewardItem"] = {}
	tGrowthInMarch_Pack[3329833]["RewardItem"][1] = {}
	tGrowthInMarch_Pack[3329833]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】500个万能神纹精粹（赠）
	tGrowthInMarch_Pack[3329833]["RewardItem"][1]["Attr"] = "0 500 3" -- UniversalRuneEssence*500（[错误]物品数量超100个）
	tGrowthInMarch_Pack[3329833]["RewardItem"][2] = {}
	tGrowthInMarch_Pack[3329833]["RewardItem"][2]["Id"] = 3329845 -- EssenceCertificate[3329845][属性:11][叠加:10000][金币:0], 【表格】精粹凭证
	tGrowthInMarch_Pack[3329833]["RewardItem"][2]["Attr"] = "0 1" -- EssenceCertificate*1
	tGrowthInMarch_Pack[3329833]["RewardItem"][3] = {}
	tGrowthInMarch_Pack[3329833]["RewardItem"][3]["Id"] = 3329834 -- 500UniversalRuneEssencesBox[3329834][属性:9][叠加:0][金币:0], 【表格】500个万能神纹精粹礼盒
	tGrowthInMarch_Pack[3329833]["RewardItem"][3]["Attr"] = "0 1" -- 500UniversalRuneEssencesBox*1
	tGrowthInMarch_Pack[3329833]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329833]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329833]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329834] = {}
	-- ===500个万能神纹精粹礼盒
	-- ===索引: tGrowthInMarch_Pack[3329834]
	-- ===删除:3329834,1
	-- ===EMoneyLog: 1000,1551
	-- ===
	tGrowthInMarch_Pack[3329834]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329834]["EmoneyLog"] = "1000	1551	0	0	3	"
	tGrowthInMarch_Pack[3329834]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329834]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329834]["DeleteItem"][1]["Id"] = 3329834 -- 【库】500UniversalRuneEssencesBox[属性:9]
	tGrowthInMarch_Pack[3329834]["RewardItem"] = {}
	tGrowthInMarch_Pack[3329834]["RewardItem"][1] = {}
	tGrowthInMarch_Pack[3329834]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】500个万能神纹精粹（赠）
	tGrowthInMarch_Pack[3329834]["RewardItem"][1]["Attr"] = "0 500 3" -- UniversalRuneEssence*500（[错误]物品数量超100个）
	tGrowthInMarch_Pack[3329834]["RewardItem"][2] = {}
	tGrowthInMarch_Pack[3329834]["RewardItem"][2]["Id"] = 3329845 -- EssenceCertificate[3329845][属性:11][叠加:10000][金币:0], 【表格】精粹凭证
	tGrowthInMarch_Pack[3329834]["RewardItem"][2]["Attr"] = "0 1" -- EssenceCertificate*1
	tGrowthInMarch_Pack[3329834]["RewardItem"][3] = {}
	tGrowthInMarch_Pack[3329834]["RewardItem"][3]["Id"] = 3329835 -- 500UniversalRuneEssencesBox[3329835][属性:9][叠加:0][金币:0], 【表格】500个万能神纹精粹礼盒
	tGrowthInMarch_Pack[3329834]["RewardItem"][3]["Attr"] = "0 1" -- 500UniversalRuneEssencesBox*1
	tGrowthInMarch_Pack[3329834]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329834]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329834]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329835] = {}
	-- ===500个万能神纹精粹礼盒
	-- ===索引: tGrowthInMarch_Pack[3329835]
	-- ===删除:3329835,1
	-- ===EMoneyLog: 1000,1551
	-- ===
	tGrowthInMarch_Pack[3329835]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329835]["EmoneyLog"] = "1000	1551	0	0	4	"
	tGrowthInMarch_Pack[3329835]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329835]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329835]["DeleteItem"][1]["Id"] = 3329835 -- 【库】500UniversalRuneEssencesBox[属性:9]
	tGrowthInMarch_Pack[3329835]["RewardItem"] = {}
	tGrowthInMarch_Pack[3329835]["RewardItem"][1] = {}
	tGrowthInMarch_Pack[3329835]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】500个万能神纹精粹（赠）
	tGrowthInMarch_Pack[3329835]["RewardItem"][1]["Attr"] = "0 500 3" -- UniversalRuneEssence*500（[错误]物品数量超100个）
	tGrowthInMarch_Pack[3329835]["RewardItem"][2] = {}
	tGrowthInMarch_Pack[3329835]["RewardItem"][2]["Id"] = 3329845 -- EssenceCertificate[3329845][属性:11][叠加:10000][金币:0], 【表格】精粹凭证
	tGrowthInMarch_Pack[3329835]["RewardItem"][2]["Attr"] = "0 1" -- EssenceCertificate*1
	tGrowthInMarch_Pack[3329835]["RewardItem"][3] = {}
	tGrowthInMarch_Pack[3329835]["RewardItem"][3]["Id"] = 3329836 -- 500UniversalRuneEssencesBox[3329836][属性:9][叠加:0][金币:0], 【表格】500个万能神纹精粹礼盒
	tGrowthInMarch_Pack[3329835]["RewardItem"][3]["Attr"] = "0 1" -- 500UniversalRuneEssencesBox*1
	tGrowthInMarch_Pack[3329835]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329835]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329835]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329836] = {}
	-- ===500个万能神纹精粹礼盒
	-- ===索引: tGrowthInMarch_Pack[3329836]
	-- ===删除:3329836,1
	-- ===EMoneyLog: 1000,1551
	-- ===
	tGrowthInMarch_Pack[3329836]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329836]["EmoneyLog"] = "1000	1551	0	0	5	"
	tGrowthInMarch_Pack[3329836]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329836]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329836]["DeleteItem"][1]["Id"] = 3329836 -- 【库】500UniversalRuneEssencesBox[属性:9]
	tGrowthInMarch_Pack[3329836]["RewardItem"] = {}
	tGrowthInMarch_Pack[3329836]["RewardItem"][1] = {}
	tGrowthInMarch_Pack[3329836]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】500个万能神纹精粹（赠）
	tGrowthInMarch_Pack[3329836]["RewardItem"][1]["Attr"] = "0 500 3" -- UniversalRuneEssence*500（[错误]物品数量超100个）
	tGrowthInMarch_Pack[3329836]["RewardItem"][2] = {}
	tGrowthInMarch_Pack[3329836]["RewardItem"][2]["Id"] = 3329845 -- EssenceCertificate[3329845][属性:11][叠加:10000][金币:0], 【表格】精粹凭证
	tGrowthInMarch_Pack[3329836]["RewardItem"][2]["Attr"] = "0 1" -- EssenceCertificate*1
	tGrowthInMarch_Pack[3329836]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329836]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329836]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329837] = {}
	-- ===10000个万能神纹精粹礼盒
	-- ===索引: tGrowthInMarch_Pack[3329837]
	-- ===删除:3329837,1
	-- ===EMoneyLog: 1000,1552
	-- ===
	tGrowthInMarch_Pack[3329837]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329837]["EmoneyLog"] = "1000	1552	0	0	1	"
	tGrowthInMarch_Pack[3329837]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329837]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329837]["DeleteItem"][1]["Id"] = 3329837 -- 【库】10000UniversalRuneEssencesBox[属性:9]
	tGrowthInMarch_Pack[3329837]["RewardItem"] = {}
	tGrowthInMarch_Pack[3329837]["RewardItem"][1] = {}
	tGrowthInMarch_Pack[3329837]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】10000个万能神纹精粹（赠）
	tGrowthInMarch_Pack[3329837]["RewardItem"][1]["Attr"] = "0 10000 3" -- UniversalRuneEssence*10000（[错误]物品数量超100个）
	tGrowthInMarch_Pack[3329837]["RewardItem"][2] = {}
	tGrowthInMarch_Pack[3329837]["RewardItem"][2]["Id"] = 3329845 -- EssenceCertificate[3329845][属性:11][叠加:10000][金币:0], 【表格】精粹凭证
	tGrowthInMarch_Pack[3329837]["RewardItem"][2]["Attr"] = "0 7" -- EssenceCertificate*7
	tGrowthInMarch_Pack[3329837]["RewardItem"][3] = {}
	tGrowthInMarch_Pack[3329837]["RewardItem"][3]["Id"] = 3329838 -- 10000UniversalRuneEssencesBox[3329838][属性:9][叠加:0][金币:0], 【表格】10000个万能神纹精粹礼盒
	tGrowthInMarch_Pack[3329837]["RewardItem"][3]["Attr"] = "0 1" -- 10000UniversalRuneEssencesBox*1
	tGrowthInMarch_Pack[3329837]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329837]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329837]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329838] = {}
	-- ===10000个万能神纹精粹礼盒
	-- ===索引: tGrowthInMarch_Pack[3329838]
	-- ===删除:3329838,1
	-- ===EMoneyLog: 1000,1552
	-- ===
	tGrowthInMarch_Pack[3329838]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329838]["EmoneyLog"] = "1000	1552	0	0	2	"
	tGrowthInMarch_Pack[3329838]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329838]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329838]["DeleteItem"][1]["Id"] = 3329838 -- 【库】10000UniversalRuneEssencesBox[属性:9]
	tGrowthInMarch_Pack[3329838]["RewardItem"] = {}
	tGrowthInMarch_Pack[3329838]["RewardItem"][1] = {}
	tGrowthInMarch_Pack[3329838]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】10000个万能神纹精粹（赠）
	tGrowthInMarch_Pack[3329838]["RewardItem"][1]["Attr"] = "0 10000 3" -- UniversalRuneEssence*10000（[错误]物品数量超100个）
	tGrowthInMarch_Pack[3329838]["RewardItem"][2] = {}
	tGrowthInMarch_Pack[3329838]["RewardItem"][2]["Id"] = 3329845 -- EssenceCertificate[3329845][属性:11][叠加:10000][金币:0], 【表格】精粹凭证
	tGrowthInMarch_Pack[3329838]["RewardItem"][2]["Attr"] = "0 7" -- EssenceCertificate*7
	tGrowthInMarch_Pack[3329838]["RewardItem"][3] = {}
	tGrowthInMarch_Pack[3329838]["RewardItem"][3]["Id"] = 3329839 -- 10000UniversalRuneEssencesBox[3329839][属性:9][叠加:0][金币:0], 【表格】10000个万能神纹精粹礼盒
	tGrowthInMarch_Pack[3329838]["RewardItem"][3]["Attr"] = "0 1" -- 10000UniversalRuneEssencesBox*1
	tGrowthInMarch_Pack[3329838]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329838]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329838]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329839] = {}
	-- ===10000个万能神纹精粹礼盒
	-- ===索引: tGrowthInMarch_Pack[3329839]
	-- ===删除:3329839,1
	-- ===EMoneyLog: 1000,1552
	-- ===
	tGrowthInMarch_Pack[3329839]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329839]["EmoneyLog"] = "1000	1552	0	0	3	"
	tGrowthInMarch_Pack[3329839]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329839]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329839]["DeleteItem"][1]["Id"] = 3329839 -- 【库】10000UniversalRuneEssencesBox[属性:9]
	tGrowthInMarch_Pack[3329839]["RewardItem"] = {}
	tGrowthInMarch_Pack[3329839]["RewardItem"][1] = {}
	tGrowthInMarch_Pack[3329839]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】10000个万能神纹精粹（赠）
	tGrowthInMarch_Pack[3329839]["RewardItem"][1]["Attr"] = "0 10000 3" -- UniversalRuneEssence*10000（[错误]物品数量超100个）
	tGrowthInMarch_Pack[3329839]["RewardItem"][2] = {}
	tGrowthInMarch_Pack[3329839]["RewardItem"][2]["Id"] = 3329845 -- EssenceCertificate[3329845][属性:11][叠加:10000][金币:0], 【表格】精粹凭证
	tGrowthInMarch_Pack[3329839]["RewardItem"][2]["Attr"] = "0 7" -- EssenceCertificate*7
	tGrowthInMarch_Pack[3329839]["RewardItem"][3] = {}
	tGrowthInMarch_Pack[3329839]["RewardItem"][3]["Id"] = 3329840 -- 10000UniversalRuneEssencesBox[3329840][属性:9][叠加:0][金币:0], 【表格】10000个万能神纹精粹礼盒
	tGrowthInMarch_Pack[3329839]["RewardItem"][3]["Attr"] = "0 1" -- 10000UniversalRuneEssencesBox*1
	tGrowthInMarch_Pack[3329839]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329839]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329839]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329840] = {}
	-- ===10000个万能神纹精粹礼盒
	-- ===索引: tGrowthInMarch_Pack[3329840]
	-- ===删除:3329840,1
	-- ===EMoneyLog: 1000,1552
	-- ===
	tGrowthInMarch_Pack[3329840]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329840]["EmoneyLog"] = "1000	1552	0	0	4	"
	tGrowthInMarch_Pack[3329840]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329840]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329840]["DeleteItem"][1]["Id"] = 3329840 -- 【库】10000UniversalRuneEssencesBox[属性:9]
	tGrowthInMarch_Pack[3329840]["RewardItem"] = {}
	tGrowthInMarch_Pack[3329840]["RewardItem"][1] = {}
	tGrowthInMarch_Pack[3329840]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】10000个万能神纹精粹（赠）
	tGrowthInMarch_Pack[3329840]["RewardItem"][1]["Attr"] = "0 10000 3" -- UniversalRuneEssence*10000（[错误]物品数量超100个）
	tGrowthInMarch_Pack[3329840]["RewardItem"][2] = {}
	tGrowthInMarch_Pack[3329840]["RewardItem"][2]["Id"] = 3329845 -- EssenceCertificate[3329845][属性:11][叠加:10000][金币:0], 【表格】精粹凭证
	tGrowthInMarch_Pack[3329840]["RewardItem"][2]["Attr"] = "0 7" -- EssenceCertificate*7
	tGrowthInMarch_Pack[3329840]["RewardItem"][3] = {}
	tGrowthInMarch_Pack[3329840]["RewardItem"][3]["Id"] = 3329841 -- 10000UniversalRuneEssencesBox[3329841][属性:9][叠加:0][金币:0], 【表格】10000个万能神纹精粹礼盒
	tGrowthInMarch_Pack[3329840]["RewardItem"][3]["Attr"] = "0 1" -- 10000UniversalRuneEssencesBox*1
	tGrowthInMarch_Pack[3329840]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329840]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329840]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329841] = {}
	-- ===10000个万能神纹精粹礼盒
	-- ===索引: tGrowthInMarch_Pack[3329841]
	-- ===删除:3329841,1
	-- ===EMoneyLog: 1000,1552
	-- ===
	tGrowthInMarch_Pack[3329841]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329841]["EmoneyLog"] = "1000	1552	0	0	5	"
	tGrowthInMarch_Pack[3329841]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329841]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329841]["DeleteItem"][1]["Id"] = 3329841 -- 【库】10000UniversalRuneEssencesBox[属性:9]
	tGrowthInMarch_Pack[3329841]["RewardItem"] = {}
	tGrowthInMarch_Pack[3329841]["RewardItem"][1] = {}
	tGrowthInMarch_Pack[3329841]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】10000个万能神纹精粹（赠）
	tGrowthInMarch_Pack[3329841]["RewardItem"][1]["Attr"] = "0 10000 3" -- UniversalRuneEssence*10000（[错误]物品数量超100个）
	tGrowthInMarch_Pack[3329841]["RewardItem"][2] = {}
	tGrowthInMarch_Pack[3329841]["RewardItem"][2]["Id"] = 3329845 -- EssenceCertificate[3329845][属性:11][叠加:10000][金币:0], 【表格】精粹凭证
	tGrowthInMarch_Pack[3329841]["RewardItem"][2]["Attr"] = "0 7" -- EssenceCertificate*7
	tGrowthInMarch_Pack[3329841]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329841]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329841]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329846] = {}
	-- ===5个万能神纹精粹（赠）礼盒
	-- ===索引: tGrowthInMarch_Pack[3329846]
	-- ===删除:3329846,1
	-- ===
	-- ===
	tGrowthInMarch_Pack[3329846]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329846]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329846]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329846]["DeleteItem"][1]["Id"] = 3329846 -- 【库】5UniversalRuneEssences(B)Box[属性:9]
	tGrowthInMarch_Pack[3329846]["RewardItem"] = {}
	tGrowthInMarch_Pack[3329846]["RewardItem"][1] = {}
	tGrowthInMarch_Pack[3329846]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹*5（赠）
	tGrowthInMarch_Pack[3329846]["RewardItem"][1]["Attr"] = "0 5 3" -- UniversalRuneEssence*5
	tGrowthInMarch_Pack[3329846]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329846]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329846]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329847] = {}
	-- ===1颗明亮星陨石礼盒
	-- ===索引: tGrowthInMarch_Pack[3329847]
	-- ===删除:3329847,1
	-- ===
	-- ===
	tGrowthInMarch_Pack[3329847]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329847]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329847]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329847]["DeleteItem"][1]["Id"] = 3329847 -- 【库】1BrightStarStoneBox[属性:9]
	tGrowthInMarch_Pack[3329847]["RewardItem"] = {}
	tGrowthInMarch_Pack[3329847]["RewardItem"][1] = {}
	tGrowthInMarch_Pack[3329847]["RewardItem"][1]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*1
	tGrowthInMarch_Pack[3329847]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的BrightStarStone*1
	tGrowthInMarch_Pack[3329847]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329847]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329847]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329848] = {}
	-- ===1颗+3赤炼石礼盒
	-- ===索引: tGrowthInMarch_Pack[3329848]
	-- ===删除:3329848,1
	-- ===
	-- ===
	tGrowthInMarch_Pack[3329848]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329848]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329848]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329848]["DeleteItem"][1]["Id"] = 3329848 -- 【库】1+3Stone(B)Box[属性:9]
	tGrowthInMarch_Pack[3329848]["RewardItem"] = {}
	tGrowthInMarch_Pack[3329848]["RewardItem"][1] = {}
	tGrowthInMarch_Pack[3329848]["RewardItem"][1]["Id"] = 730003 -- +3Stone[730003][属性:0][叠加:0][金币:0], 【表格】赠品赤炼石+3*1（赠）
	tGrowthInMarch_Pack[3329848]["RewardItem"][1]["Attr"] = "0 1 3" -- +3Stone（赠）*1
	tGrowthInMarch_Pack[3329848]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329848]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329848]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329849] = {}
	-- ===1000气力值礼盒
	-- ===索引: tGrowthInMarch_Pack[3329849]
	-- ===删除:3329849,1
	-- ===
	-- ===
	tGrowthInMarch_Pack[3329849]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329849]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329849]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329849]["DeleteItem"][1]["Id"] = 3329849 -- 【库】1000ChiPointsBox[属性:9]
	tGrowthInMarch_Pack[3329849]["RewardStrengthValue"] = {}
	tGrowthInMarch_Pack[3329849]["RewardStrengthValue"]["Value"] = 1000 -- 气力值, 【需求】1000气力值
	tGrowthInMarch_Pack[3329849]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329849]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329849]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329850] = {}
	-- ===5个真气礼包（赠）礼盒
	-- ===索引: tGrowthInMarch_Pack[3329850]
	-- ===删除:3329850,1
	-- ===
	-- ===
	tGrowthInMarch_Pack[3329850]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329850]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329850]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329850]["DeleteItem"][1]["Id"] = 3329850 -- 【库】5TrainingTalentPacks(B)Box[属性:9]
	tGrowthInMarch_Pack[3329850]["RewardItem"] = {}
	tGrowthInMarch_Pack[3329850]["RewardItem"][1] = {}
	tGrowthInMarch_Pack[3329850]["RewardItem"][1]["Id"] = 3006542 -- TrainingTalentPack[3006542][属性:9][叠加:10000][金币:0], 【表格】真气礼包赠*5（赠）
	tGrowthInMarch_Pack[3329850]["RewardItem"][1]["Attr"] = "0 5" -- TrainingTalentPack*5
	tGrowthInMarch_Pack[3329850]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329850]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329850]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329851] = {}
	-- ===15颗人参果礼盒
	-- ===索引: tGrowthInMarch_Pack[3329851]
	-- ===删除:3329851,1
	-- ===
	-- ===
	tGrowthInMarch_Pack[3329851]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329851]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329851]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329851]["DeleteItem"][1]["Id"] = 3329851 -- 【库】15GinsengFruitsBox[属性:9]
	tGrowthInMarch_Pack[3329851]["RewardItem"] = {}
	tGrowthInMarch_Pack[3329851]["RewardItem"][1] = {}
	tGrowthInMarch_Pack[3329851]["RewardItem"][1]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果*15
	tGrowthInMarch_Pack[3329851]["RewardItem"][1]["Attr"] = "0 15" -- GinsengFruit*15（[错误]物品数量超10个）
	tGrowthInMarch_Pack[3329851]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329851]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329851]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329852] = {}
	-- ===500天石（赠）礼盒
	-- ===索引: tGrowthInMarch_Pack[3329852]
	-- ===删除:3329852,1
	-- ===
	-- ===
	tGrowthInMarch_Pack[3329852]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329852]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329852]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329852]["DeleteItem"][1]["Id"] = 3329852 -- 【库】500CPs(B)Box[属性:9]
	tGrowthInMarch_Pack[3329852]["RewardEMoneyMono"] = {}
	tGrowthInMarch_Pack[3329852]["RewardEMoneyMono"]["Value"] = 500 -- 天石（赠）, 【需求】500天石（赠）
	tGrowthInMarch_Pack[3329852]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1559"
	tGrowthInMarch_Pack[3329852]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329852]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329852]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329853] = {}
	-- ===100天石（赠）礼盒
	-- ===索引: tGrowthInMarch_Pack[3329853]
	-- ===删除:3329853,1
	-- ===
	-- ===
	tGrowthInMarch_Pack[3329853]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329853]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329853]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329853]["DeleteItem"][1]["Id"] = 3329853 -- 【库】100CPs(B)Box[属性:9]
	tGrowthInMarch_Pack[3329853]["RewardEMoneyMono"] = {}
	tGrowthInMarch_Pack[3329853]["RewardEMoneyMono"]["Value"] = 100 -- 天石（赠）, 【需求】100天石（赠）
	tGrowthInMarch_Pack[3329853]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1560"
	tGrowthInMarch_Pack[3329853]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329853]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329853]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329854] = {}
	-- ===300天石（赠）礼盒
	-- ===索引: tGrowthInMarch_Pack[3329854]
	-- ===删除:3329854,1
	-- ===
	-- ===
	tGrowthInMarch_Pack[3329854]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329854]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329854]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329854]["DeleteItem"][1]["Id"] = 3329854 -- 【库】300CPs(B)Box[属性:9]
	tGrowthInMarch_Pack[3329854]["RewardEMoneyMono"] = {}
	tGrowthInMarch_Pack[3329854]["RewardEMoneyMono"]["Value"] = 300 -- 天石（赠）, 【需求】300天石（赠）
	tGrowthInMarch_Pack[3329854]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1561"
	tGrowthInMarch_Pack[3329854]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329854]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329854]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329855] = {}
	-- ===1000天石（赠）礼盒
	-- ===索引: tGrowthInMarch_Pack[3329855]
	-- ===删除:3329855,1
	-- ===
	-- ===
	tGrowthInMarch_Pack[3329855]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329855]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329855]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329855]["DeleteItem"][1]["Id"] = 3329855 -- 【库】1000CPs(B)Box[属性:9]
	tGrowthInMarch_Pack[3329855]["RewardEMoneyMono"] = {}
	tGrowthInMarch_Pack[3329855]["RewardEMoneyMono"]["Value"] = 1000 -- 天石（赠）, 【需求】1000天石（赠）
	tGrowthInMarch_Pack[3329855]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1562"
	tGrowthInMarch_Pack[3329855]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329855]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329855]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329856] = {}
	-- ===1500天石（赠）礼盒
	-- ===索引: tGrowthInMarch_Pack[3329856]
	-- ===删除:3329856,1
	-- ===
	-- ===
	tGrowthInMarch_Pack[3329856]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329856]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329856]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329856]["DeleteItem"][1]["Id"] = 3329856 -- 【库】1500CPs(B)Box[属性:9]
	tGrowthInMarch_Pack[3329856]["RewardEMoneyMono"] = {}
	tGrowthInMarch_Pack[3329856]["RewardEMoneyMono"]["Value"] = 1500 -- 天石（赠）, 【需求】1500天石（赠）
	tGrowthInMarch_Pack[3329856]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1563"
	tGrowthInMarch_Pack[3329856]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329856]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329856]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329857] = {}
	-- ===2000天石（赠）礼盒
	-- ===索引: tGrowthInMarch_Pack[3329857]
	-- ===删除:3329857,1
	-- ===
	-- ===
	tGrowthInMarch_Pack[3329857]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329857]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329857]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329857]["DeleteItem"][1]["Id"] = 3329857 -- 【库】2000CPs(B)Box[属性:9]
	tGrowthInMarch_Pack[3329857]["RewardEMoneyMono"] = {}
	tGrowthInMarch_Pack[3329857]["RewardEMoneyMono"]["Value"] = 2000 -- 天石（赠）, 【需求】2000天石（赠）
	tGrowthInMarch_Pack[3329857]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1564"
	tGrowthInMarch_Pack[3329857]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329857]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329857]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329858] = {}
	-- ===3000天石（赠）礼盒
	-- ===索引: tGrowthInMarch_Pack[3329858]
	-- ===删除:3329858,1
	-- ===
	-- ===
	tGrowthInMarch_Pack[3329858]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329858]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329858]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329858]["DeleteItem"][1]["Id"] = 3329858 -- 【库】3000CPs(B)Box[属性:9]
	tGrowthInMarch_Pack[3329858]["RewardEMoneyMono"] = {}
	tGrowthInMarch_Pack[3329858]["RewardEMoneyMono"]["Value"] = 3000 -- 天石（赠）, 【需求】3000天石（赠）
	tGrowthInMarch_Pack[3329858]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1565"
	tGrowthInMarch_Pack[3329858]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329858]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329858]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329859] = {}
	-- ===5颗微光星陨石礼盒
	-- ===索引: tGrowthInMarch_Pack[3329859]
	-- ===删除:3329859,1
	-- ===
	-- ===
	tGrowthInMarch_Pack[3329859]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329859]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329859]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329859]["DeleteItem"][1]["Id"] = 3329859 -- 【库】5TwilightStarStonesBox[属性:9]
	tGrowthInMarch_Pack[3329859]["RewardItem"] = {}
	tGrowthInMarch_Pack[3329859]["RewardItem"][1] = {}
	tGrowthInMarch_Pack[3329859]["RewardItem"][1]["Id"] = 3009000 -- TwilightStarStone[3009000][属性:9][叠加:0][金币:0], 【表格】微光星陨石*5
	tGrowthInMarch_Pack[3329859]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的TwilightStarStone*5
	tGrowthInMarch_Pack[3329859]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329859]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329859]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329860] = {}
	-- ===1颗回气丹（赠）礼盒
	-- ===索引: tGrowthInMarch_Pack[3329860]
	-- ===删除:3329860,1
	-- ===
	-- ===
	tGrowthInMarch_Pack[3329860]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329860]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329860]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329860]["DeleteItem"][1]["Id"] = 3329860 -- 【库】1VitalPill(B)Box[属性:9]
	tGrowthInMarch_Pack[3329860]["RewardItem"] = {}
	tGrowthInMarch_Pack[3329860]["RewardItem"][1] = {}
	tGrowthInMarch_Pack[3329860]["RewardItem"][1]["Id"] = 729481 -- VitalPill[729481][属性:0][叠加:0][金币:0], 【表格】赠回气丹*1（赠）
	tGrowthInMarch_Pack[3329860]["RewardItem"][1]["Attr"] = "0 1 3" -- VitalityPill（赠）*1
	tGrowthInMarch_Pack[3329860]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329860]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329860]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329861] = {}
	-- ===50个神器源晶（赠）礼盒
	-- ===索引: tGrowthInMarch_Pack[3329861]
	-- ===删除:3329861,1
	-- ===
	-- ===
	tGrowthInMarch_Pack[3329861]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329861]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329861]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329861]["DeleteItem"][1]["Id"] = 3329861 -- 【库】50RelicCrystals(B)Box[属性:9]
	tGrowthInMarch_Pack[3329861]["RewardItem"] = {}
	tGrowthInMarch_Pack[3329861]["RewardItem"][1] = {}
	tGrowthInMarch_Pack[3329861]["RewardItem"][1]["Id"] = 3306885 -- RelicCrystal[3306885][属性:9][叠加:10000][金币:0], 【表格】神器源晶*50（赠）
	tGrowthInMarch_Pack[3329861]["RewardItem"][1]["Attr"] = "0 50" -- RelicCrystal*50（[错误]物品数量超10个）
	tGrowthInMarch_Pack[3329861]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329861]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329861]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329862] = {}
	-- ===5颗明亮星陨石礼盒
	-- ===索引: tGrowthInMarch_Pack[3329862]
	-- ===删除:3329862,1
	-- ===
	-- ===
	tGrowthInMarch_Pack[3329862]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329862]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329862]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329862]["DeleteItem"][1]["Id"] = 3329862 -- 【库】5BrightStarStonesBox[属性:9]
	tGrowthInMarch_Pack[3329862]["RewardItem"] = {}
	tGrowthInMarch_Pack[3329862]["RewardItem"][1] = {}
	tGrowthInMarch_Pack[3329862]["RewardItem"][1]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*5
	tGrowthInMarch_Pack[3329862]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的BrightStarStone*5
	tGrowthInMarch_Pack[3329862]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329862]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329862]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329863] = {}
	-- ===2颗+3赤炼石（赠）礼盒
	-- ===索引: tGrowthInMarch_Pack[3329863]
	-- ===删除:3329863,1
	-- ===
	-- ===
	tGrowthInMarch_Pack[3329863]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329863]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329863]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329863]["DeleteItem"][1]["Id"] = 3329863 -- 【库】2+3Stones(B)Box[属性:9]
	tGrowthInMarch_Pack[3329863]["RewardItem"] = {}
	tGrowthInMarch_Pack[3329863]["RewardItem"][1] = {}
	tGrowthInMarch_Pack[3329863]["RewardItem"][1]["Id"] = 730003 -- +3Stone[730003][属性:0][叠加:0][金币:0], 【表格】2颗+3赤炼石（赠）
	tGrowthInMarch_Pack[3329863]["RewardItem"][1]["Attr"] = "0 2 3" -- +3Stone（赠）*2
	tGrowthInMarch_Pack[3329863]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329863]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329863]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329864] = {}
	-- ===1颗散功丹（赠）礼盒
	-- ===索引: tGrowthInMarch_Pack[3329864]
	-- ===删除:3329864,1
	-- ===
	-- ===
	tGrowthInMarch_Pack[3329864]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329864]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329864]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329864]["DeleteItem"][1]["Id"] = 3329864 -- 【库】1PowerEraser(B)Box[属性:9]
	tGrowthInMarch_Pack[3329864]["RewardItem"] = {}
	tGrowthInMarch_Pack[3329864]["RewardItem"][1] = {}
	tGrowthInMarch_Pack[3329864]["RewardItem"][1]["Id"] = 3005412 -- PowerEraser[3005412][属性:0][叠加:10000][金币:0], 【表格】1颗散功丹（赠）
	tGrowthInMarch_Pack[3329864]["RewardItem"][1]["Attr"] = "0 1 3" -- PowerEraser（赠）*1
	tGrowthInMarch_Pack[3329864]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329864]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329864]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329865] = {}
	-- ===20颗龙鳞果礼盒
	-- ===索引: tGrowthInMarch_Pack[3329865]
	-- ===删除:3329865,1
	-- ===
	-- ===
	tGrowthInMarch_Pack[3329865]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329865]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329865]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329865]["DeleteItem"][1]["Id"] = 3329865 -- 【库】20DragonFruitsBox[属性:9]
	tGrowthInMarch_Pack[3329865]["RewardItem"] = {}
	tGrowthInMarch_Pack[3329865]["RewardItem"][1] = {}
	tGrowthInMarch_Pack[3329865]["RewardItem"][1]["Id"] = 3009101 -- DragonFruit[3009101][属性:9][叠加:10000][金币:0], 【表格】20颗龙鳞果
	tGrowthInMarch_Pack[3329865]["RewardItem"][1]["Attr"] = "0 20" -- DragonFruit*20（[错误]物品数量超10个）
	tGrowthInMarch_Pack[3329865]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329865]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329865]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329866] = {}
	-- ===永久3星外套礼盒
	-- ===索引: tGrowthInMarch_Pack[3329866][1]
	-- ===删除:3329866,1
	-- ===
	-- ===
	tGrowthInMarch_Pack[3329866][1] = {}
	tGrowthInMarch_Pack[3329866][1]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329866][1]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329866][1]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329866][1]["DeleteItem"][1]["Id"] = 3329866 -- 【库】Permanent3-StarGarmentBox[属性:9]
	tGrowthInMarch_Pack[3329866][1]["RewardItem"] = {}
	tGrowthInMarch_Pack[3329866][1]["RewardItem"][1] = {}
	tGrowthInMarch_Pack[3329866][1]["RewardItem"][1]["Id"] = 200553 -- CuteMonkey[200553][属性:0][叠加:0][金币:0], 【表格】呆萌猴（赠）
	tGrowthInMarch_Pack[3329866][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑CuteMonkey（赠）*1
	tGrowthInMarch_Pack[3329866][1]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329866][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329866][1]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329866][2] = {}
	-- ===永久3星外套礼盒
	-- ===索引: tGrowthInMarch_Pack[3329866][2]
	-- ===删除:3329866,1
	-- ===
	-- ===
	tGrowthInMarch_Pack[3329866][2]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329866][2]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329866][2]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329866][2]["DeleteItem"][1]["Id"] = 3329866 -- 【库】Permanent3-StarGarmentBox[属性:9]
	tGrowthInMarch_Pack[3329866][2]["RewardItem"] = {}
	tGrowthInMarch_Pack[3329866][2]["RewardItem"][1] = {}
	tGrowthInMarch_Pack[3329866][2]["RewardItem"][1]["Id"] = 200554 -- YokMonkey[200554][属性:0][叠加:0][金币:0], 【表格】嘻哈猴（赠）
	tGrowthInMarch_Pack[3329866][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑YokMonkey（赠）*1
	tGrowthInMarch_Pack[3329866][2]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329866][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329866][2]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329866][3] = {}
	-- ===永久3星外套礼盒
	-- ===索引: tGrowthInMarch_Pack[3329866][3]
	-- ===删除:3329866,1
	-- ===
	-- ===
	tGrowthInMarch_Pack[3329866][3]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329866][3]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329866][3]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329866][3]["DeleteItem"][1]["Id"] = 3329866 -- 【库】Permanent3-StarGarmentBox[属性:9]
	tGrowthInMarch_Pack[3329866][3]["RewardItem"] = {}
	tGrowthInMarch_Pack[3329866][3]["RewardItem"][1] = {}
	tGrowthInMarch_Pack[3329866][3]["RewardItem"][1]["Id"] = 200555 -- SmartMonkey[200555][属性:0][叠加:0][金币:0], 【表格】俏皮猴（赠）
	tGrowthInMarch_Pack[3329866][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑SmartMonkey（赠）*1
	tGrowthInMarch_Pack[3329866][3]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329866][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329866][3]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329866][4] = {}
	-- ===永久3星外套礼盒
	-- ===索引: tGrowthInMarch_Pack[3329866][4]
	-- ===删除:3329866,1
	-- ===
	-- ===
	tGrowthInMarch_Pack[3329866][4]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329866][4]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329866][4]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329866][4]["DeleteItem"][1]["Id"] = 3329866 -- 【库】Permanent3-StarGarmentBox[属性:9]
	tGrowthInMarch_Pack[3329866][4]["RewardItem"] = {}
	tGrowthInMarch_Pack[3329866][4]["RewardItem"][1] = {}
	tGrowthInMarch_Pack[3329866][4]["RewardItem"][1]["Id"] = 200556 -- JoyfulMonkey[200556][属性:0][叠加:0][金币:0], 【表格】开心猴（赠）
	tGrowthInMarch_Pack[3329866][4]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑JoyfulMonkey（赠）*1
	tGrowthInMarch_Pack[3329866][4]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329866][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329866][4]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329866][5] = {}
	-- ===永久3星外套礼盒
	-- ===索引: tGrowthInMarch_Pack[3329866][5]
	-- ===删除:3329866,1
	-- ===
	-- ===
	tGrowthInMarch_Pack[3329866][5]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329866][5]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329866][5]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329866][5]["DeleteItem"][1]["Id"] = 3329866 -- 【库】Permanent3-StarGarmentBox[属性:9]
	tGrowthInMarch_Pack[3329866][5]["RewardItem"] = {}
	tGrowthInMarch_Pack[3329866][5]["RewardItem"][1] = {}
	tGrowthInMarch_Pack[3329866][5]["RewardItem"][1]["Id"] = 200557 -- FunnyMonkey[200557][属性:0][叠加:0][金币:0], 【表格】逗比猴（赠）
	tGrowthInMarch_Pack[3329866][5]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑FunnyMonkey（赠）*1
	tGrowthInMarch_Pack[3329866][5]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329866][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329866][5]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329866][6] = {}
	-- ===永久3星外套礼盒
	-- ===索引: tGrowthInMarch_Pack[3329866][6]
	-- ===删除:3329866,1
	-- ===
	-- ===
	tGrowthInMarch_Pack[3329866][6]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329866][6]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329866][6]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329866][6]["DeleteItem"][1]["Id"] = 3329866 -- 【库】Permanent3-StarGarmentBox[属性:9]
	tGrowthInMarch_Pack[3329866][6]["RewardItem"] = {}
	tGrowthInMarch_Pack[3329866][6]["RewardItem"][1] = {}
	tGrowthInMarch_Pack[3329866][6]["RewardItem"][1]["Id"] = 200558 -- CharmingMonkey[200558][属性:0][叠加:0][金币:0], 【表格】娇媚猴（赠）
	tGrowthInMarch_Pack[3329866][6]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑CharmingMonkey（赠）*1
	tGrowthInMarch_Pack[3329866][6]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329866][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329866][6]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329867] = {}
	-- ===10000气力值礼盒
	-- ===索引: tGrowthInMarch_Pack[3329867]
	-- ===删除:3329867,1
	-- ===
	-- ===
	tGrowthInMarch_Pack[3329867]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329867]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329867]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329867]["DeleteItem"][1]["Id"] = 3329867 -- 【库】10000ChiPoints[属性:9]
	tGrowthInMarch_Pack[3329867]["RewardStrengthValue"] = {}
	tGrowthInMarch_Pack[3329867]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】10000气力值
	tGrowthInMarch_Pack[3329867]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329867]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329867]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329868] = {}
	-- ===9000气力值礼盒
	-- ===索引: tGrowthInMarch_Pack[3329868]
	-- ===删除:3329868,1
	-- ===
	-- ===
	tGrowthInMarch_Pack[3329868]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329868]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329868]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329868]["DeleteItem"][1]["Id"] = 3329868 -- 【库】9000ChiPoints[属性:9]
	tGrowthInMarch_Pack[3329868]["RewardStrengthValue"] = {}
	tGrowthInMarch_Pack[3329868]["RewardStrengthValue"]["Value"] = 9000 -- 气力值, 【需求】9000气力值
	tGrowthInMarch_Pack[3329868]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329868]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329868]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329869] = {}
	-- ===8000气力值礼盒
	-- ===索引: tGrowthInMarch_Pack[3329869]
	-- ===删除:3329869,1
	-- ===
	-- ===
	tGrowthInMarch_Pack[3329869]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329869]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329869]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329869]["DeleteItem"][1]["Id"] = 3329869 -- 【库】8000ChiPoints[属性:9]
	tGrowthInMarch_Pack[3329869]["RewardStrengthValue"] = {}
	tGrowthInMarch_Pack[3329869]["RewardStrengthValue"]["Value"] = 8000 -- 气力值, 【需求】8000气力值
	tGrowthInMarch_Pack[3329869]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329869]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329869]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329870] = {}
	-- ===7000气力值礼盒
	-- ===索引: tGrowthInMarch_Pack[3329870]
	-- ===删除:3329870,1
	-- ===
	-- ===
	tGrowthInMarch_Pack[3329870]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329870]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329870]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329870]["DeleteItem"][1]["Id"] = 3329870 -- 【库】7000ChiPoints[属性:9]
	tGrowthInMarch_Pack[3329870]["RewardStrengthValue"] = {}
	tGrowthInMarch_Pack[3329870]["RewardStrengthValue"]["Value"] = 7000 -- 气力值, 【需求】7000气力值
	tGrowthInMarch_Pack[3329870]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329870]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329870]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329871] = {}
	-- ===6000气力值礼盒
	-- ===索引: tGrowthInMarch_Pack[3329871]
	-- ===删除:3329871,1
	-- ===
	-- ===
	tGrowthInMarch_Pack[3329871]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329871]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329871]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329871]["DeleteItem"][1]["Id"] = 3329871 -- 【库】6000ChiPoints[属性:9]
	tGrowthInMarch_Pack[3329871]["RewardStrengthValue"] = {}
	tGrowthInMarch_Pack[3329871]["RewardStrengthValue"]["Value"] = 6000 -- 气力值, 【需求】6000气力值
	tGrowthInMarch_Pack[3329871]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329871]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329871]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329872] = {}
	-- ===5000气力值礼盒
	-- ===索引: tGrowthInMarch_Pack[3329872]
	-- ===删除:3329872,1
	-- ===
	-- ===
	tGrowthInMarch_Pack[3329872]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329872]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329872]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329872]["DeleteItem"][1]["Id"] = 3329872 -- 【库】5000ChiPoints[属性:9]
	tGrowthInMarch_Pack[3329872]["RewardStrengthValue"] = {}
	tGrowthInMarch_Pack[3329872]["RewardStrengthValue"]["Value"] = 5000 -- 气力值, 【需求】5000气力值
	tGrowthInMarch_Pack[3329872]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329872]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329872]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329873] = {}
	-- ===4000气力值礼盒
	-- ===索引: tGrowthInMarch_Pack[3329873]
	-- ===删除:3329873,1
	-- ===
	-- ===
	tGrowthInMarch_Pack[3329873]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329873]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329873]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329873]["DeleteItem"][1]["Id"] = 3329873 -- 【库】4000ChiPoints[属性:9]
	tGrowthInMarch_Pack[3329873]["RewardStrengthValue"] = {}
	tGrowthInMarch_Pack[3329873]["RewardStrengthValue"]["Value"] = 4000 -- 气力值, 【需求】4000气力值
	tGrowthInMarch_Pack[3329873]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329873]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329873]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329874] = {}
	-- ===3000气力值礼盒
	-- ===索引: tGrowthInMarch_Pack[3329874]
	-- ===删除:3329874,1
	-- ===
	-- ===
	tGrowthInMarch_Pack[3329874]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329874]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329874]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329874]["DeleteItem"][1]["Id"] = 3329874 -- 【库】3000ChiPoints[属性:9]
	tGrowthInMarch_Pack[3329874]["RewardStrengthValue"] = {}
	tGrowthInMarch_Pack[3329874]["RewardStrengthValue"]["Value"] = 3000 -- 气力值, 【需求】3000气力值
	tGrowthInMarch_Pack[3329874]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329874]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329874]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_Pack[3329875] = {}
	-- ===2000气力值礼盒
	-- ===索引: tGrowthInMarch_Pack[3329875]
	-- ===删除:3329875,1
	-- ===
	-- ===
	tGrowthInMarch_Pack[3329875]["LogId"] = 10002468
	tGrowthInMarch_Pack[3329875]["DeleteItem"] = {}
	tGrowthInMarch_Pack[3329875]["DeleteItem"][1] = {}
	tGrowthInMarch_Pack[3329875]["DeleteItem"][1]["Id"] = 3329875 -- 【库】2000ChiPoints[属性:9]
	tGrowthInMarch_Pack[3329875]["RewardStrengthValue"] = {}
	tGrowthInMarch_Pack[3329875]["RewardStrengthValue"]["Value"] = 2000 -- 气力值, 【需求】2000气力值
	tGrowthInMarch_Pack[3329875]["RewardEffect"] = {}
	tGrowthInMarch_Pack[3329875]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_Pack[3329875]["RewardEffect"]["Effect"] = "angelwing"


local tGrowthInMarch_LevelReward = {}
	-- ===赤炼石1级奖励
	-- ===索引: tGrowthInMarch_LevelReward[1][1]
	-- ===
	-- ===
	-- ===
	tGrowthInMarch_LevelReward[1] = {}
	tGrowthInMarch_LevelReward[1][1] = {}
	tGrowthInMarch_LevelReward[1][1]["LogId"] = 10002468
	tGrowthInMarch_LevelReward[1][1]["RewardItem"] = {}
	tGrowthInMarch_LevelReward[1][1]["RewardItem"][1] = {}
	tGrowthInMarch_LevelReward[1][1]["RewardItem"][1]["Id"] = 3329846 -- 5UniversalRuneEssences(B)Box[3329846][属性:9][叠加:0][金币:0], 【表格】5个万能神纹精粹（赠）礼盒
	tGrowthInMarch_LevelReward[1][1]["RewardItem"][1]["Attr"] = "0 1" -- 5UniversalRuneEssences(B)Box*1
	tGrowthInMarch_LevelReward[1][1]["RewardEffect"] = {}
	tGrowthInMarch_LevelReward[1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_LevelReward[1][1]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_LevelReward[1][2] = {}
	-- ===赤炼石2级奖励
	-- ===索引: tGrowthInMarch_LevelReward[1][2]
	-- ===
	-- ===
	-- ===
	tGrowthInMarch_LevelReward[1][2]["LogId"] = 10002468
	tGrowthInMarch_LevelReward[1][2]["RewardItem"] = {}
	tGrowthInMarch_LevelReward[1][2]["RewardItem"][1] = {}
	tGrowthInMarch_LevelReward[1][2]["RewardItem"][1]["Id"] = 3329847 -- 1BrightStarStoneBox[3329847][属性:9][叠加:0][金币:0], 【表格】1颗明亮星陨石礼盒
	tGrowthInMarch_LevelReward[1][2]["RewardItem"][1]["Attr"] = "0 1" -- 1BrightStarStoneBox*1
	tGrowthInMarch_LevelReward[1][2]["RewardEffect"] = {}
	tGrowthInMarch_LevelReward[1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_LevelReward[1][2]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_LevelReward[1][3] = {}
	-- ===赤炼石3级奖励
	-- ===索引: tGrowthInMarch_LevelReward[1][3]
	-- ===
	-- ===
	-- ===
	tGrowthInMarch_LevelReward[1][3]["LogId"] = 10002468
	tGrowthInMarch_LevelReward[1][3]["RewardItem"] = {}
	tGrowthInMarch_LevelReward[1][3]["RewardItem"][1] = {}
	tGrowthInMarch_LevelReward[1][3]["RewardItem"][1]["Id"] = 3329848 -- 1+3Stone(B)Box[3329848][属性:9][叠加:0][金币:0], 【表格】1颗+3赤炼石（赠）礼盒
	tGrowthInMarch_LevelReward[1][3]["RewardItem"][1]["Attr"] = "0 1" -- 1+3Stone(B)Box*1
	tGrowthInMarch_LevelReward[1][3]["RewardEffect"] = {}
	tGrowthInMarch_LevelReward[1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_LevelReward[1][3]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_LevelReward[1][4] = {}
	-- ===赤炼石4级奖励
	-- ===索引: tGrowthInMarch_LevelReward[1][4]
	-- ===
	-- ===
	-- ===
	tGrowthInMarch_LevelReward[1][4]["LogId"] = 10002468
	tGrowthInMarch_LevelReward[1][4]["RewardItem"] = {}
	tGrowthInMarch_LevelReward[1][4]["RewardItem"][1] = {}
	tGrowthInMarch_LevelReward[1][4]["RewardItem"][1]["Id"] = 3329849 -- 1000ChiPointsBox[3329849][属性:9][叠加:0][金币:0], 【表格】1000气力值礼盒
	tGrowthInMarch_LevelReward[1][4]["RewardItem"][1]["Attr"] = "0 1" -- 1000ChiPointsBox*1
	tGrowthInMarch_LevelReward[1][4]["RewardEffect"] = {}
	tGrowthInMarch_LevelReward[1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_LevelReward[1][4]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_LevelReward[1][5] = {}
	-- ===赤炼石5级奖励
	-- ===索引: tGrowthInMarch_LevelReward[1][5]
	-- ===
	-- ===
	-- ===
	tGrowthInMarch_LevelReward[1][5]["LogId"] = 10002468
	tGrowthInMarch_LevelReward[1][5]["RewardItem"] = {}
	tGrowthInMarch_LevelReward[1][5]["RewardItem"][1] = {}
	tGrowthInMarch_LevelReward[1][5]["RewardItem"][1]["Id"] = 3329850 -- 5TrainingTalentPacks(B)Box[3329850][属性:9][叠加:0][金币:0], 【表格】5个真气礼包（赠）礼盒
	tGrowthInMarch_LevelReward[1][5]["RewardItem"][1]["Attr"] = "0 1" -- 5TrainingTalentPacks(B)Box*1
	tGrowthInMarch_LevelReward[1][5]["RewardEffect"] = {}
	tGrowthInMarch_LevelReward[1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_LevelReward[1][5]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_LevelReward[1][6] = {}
	-- ===赤炼石6级奖励
	-- ===索引: tGrowthInMarch_LevelReward[1][6]
	-- ===
	-- ===
	-- ===
	tGrowthInMarch_LevelReward[1][6]["LogId"] = 10002468
	tGrowthInMarch_LevelReward[1][6]["RewardItem"] = {}
	tGrowthInMarch_LevelReward[1][6]["RewardItem"][1] = {}
	tGrowthInMarch_LevelReward[1][6]["RewardItem"][1]["Id"] = 3329851 -- 15GinsengFruitsBox[3329851][属性:9][叠加:0][金币:0], 【表格】15颗人参果礼盒
	tGrowthInMarch_LevelReward[1][6]["RewardItem"][1]["Attr"] = "0 1" -- 15GinsengFruitsBox*1
	tGrowthInMarch_LevelReward[1][6]["RewardEffect"] = {}
	tGrowthInMarch_LevelReward[1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_LevelReward[1][6]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_LevelReward[1][7] = {}
	-- ===赤炼石7级奖励
	-- ===索引: tGrowthInMarch_LevelReward[1][7]
	-- ===
	-- ===
	-- ===
	tGrowthInMarch_LevelReward[1][7]["LogId"] = 10002468
	tGrowthInMarch_LevelReward[1][7]["RewardItem"] = {}
	tGrowthInMarch_LevelReward[1][7]["RewardItem"][1] = {}
	tGrowthInMarch_LevelReward[1][7]["RewardItem"][1]["Id"] = 3329852 -- 500CPs(B)Box[3329852][属性:9][叠加:0][金币:0], 【表格】500天石（赠）礼盒
	tGrowthInMarch_LevelReward[1][7]["RewardItem"][1]["Attr"] = "0 1" -- 500CPs(B)Box*1
	tGrowthInMarch_LevelReward[1][7]["RewardEffect"] = {}
	tGrowthInMarch_LevelReward[1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_LevelReward[1][7]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_LevelReward[2] = {}
	-- ===气力值1级奖励
	-- ===索引: tGrowthInMarch_LevelReward[2][1]
	-- ===
	-- ===
	-- ===
	tGrowthInMarch_LevelReward[2][1] = {}
	tGrowthInMarch_LevelReward[2][1]["LogId"] = 10002468
	tGrowthInMarch_LevelReward[2][1]["RewardItem"] = {}
	tGrowthInMarch_LevelReward[2][1]["RewardItem"][1] = {}
	tGrowthInMarch_LevelReward[2][1]["RewardItem"][1]["Id"] = 3329853 -- 100CPs(B)Box[3329853][属性:9][叠加:0][金币:0], 【表格】100天石（赠）礼盒
	tGrowthInMarch_LevelReward[2][1]["RewardItem"][1]["Attr"] = "0 1" -- 100CPs(B)Box*1
	tGrowthInMarch_LevelReward[2][1]["RewardEffect"] = {}
	tGrowthInMarch_LevelReward[2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_LevelReward[2][1]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_LevelReward[2][2] = {}
	-- ===气力值2级奖励
	-- ===索引: tGrowthInMarch_LevelReward[2][2]
	-- ===
	-- ===
	-- ===
	tGrowthInMarch_LevelReward[2][2]["LogId"] = 10002468
	tGrowthInMarch_LevelReward[2][2]["RewardItem"] = {}
	tGrowthInMarch_LevelReward[2][2]["RewardItem"][1] = {}
	tGrowthInMarch_LevelReward[2][2]["RewardItem"][1]["Id"] = 3329854 -- 300CPs(B)Box[3329854][属性:9][叠加:0][金币:0], 【表格】300天石（赠）礼盒
	tGrowthInMarch_LevelReward[2][2]["RewardItem"][1]["Attr"] = "0 1" -- 300CPs(B)Box*1
	tGrowthInMarch_LevelReward[2][2]["RewardEffect"] = {}
	tGrowthInMarch_LevelReward[2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_LevelReward[2][2]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_LevelReward[2][3] = {}
	-- ===气力值3级奖励
	-- ===索引: tGrowthInMarch_LevelReward[2][3]
	-- ===
	-- ===
	-- ===
	tGrowthInMarch_LevelReward[2][3]["LogId"] = 10002468
	tGrowthInMarch_LevelReward[2][3]["RewardItem"] = {}
	tGrowthInMarch_LevelReward[2][3]["RewardItem"][1] = {}
	tGrowthInMarch_LevelReward[2][3]["RewardItem"][1]["Id"] = 3329854 -- 300CPs(B)Box[3329854][属性:9][叠加:0][金币:0], 【表格】300天石（赠）礼盒
	tGrowthInMarch_LevelReward[2][3]["RewardItem"][1]["Attr"] = "0 1" -- 300CPs(B)Box*1
	tGrowthInMarch_LevelReward[2][3]["RewardEffect"] = {}
	tGrowthInMarch_LevelReward[2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_LevelReward[2][3]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_LevelReward[2][4] = {}
	-- ===气力值4级奖励
	-- ===索引: tGrowthInMarch_LevelReward[2][4]
	-- ===
	-- ===
	-- ===
	tGrowthInMarch_LevelReward[2][4]["LogId"] = 10002468
	tGrowthInMarch_LevelReward[2][4]["RewardItem"] = {}
	tGrowthInMarch_LevelReward[2][4]["RewardItem"][1] = {}
	tGrowthInMarch_LevelReward[2][4]["RewardItem"][1]["Id"] = 3329855 -- 1000CPs(B)Box[3329855][属性:9][叠加:0][金币:0], 【表格】1000天石（赠）礼盒
	tGrowthInMarch_LevelReward[2][4]["RewardItem"][1]["Attr"] = "0 1" -- 1000CPs(B)Box*1
	tGrowthInMarch_LevelReward[2][4]["RewardEffect"] = {}
	tGrowthInMarch_LevelReward[2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_LevelReward[2][4]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_LevelReward[2][5] = {}
	-- ===气力值5级奖励
	-- ===索引: tGrowthInMarch_LevelReward[2][5]
	-- ===
	-- ===
	-- ===
	tGrowthInMarch_LevelReward[2][5]["LogId"] = 10002468
	tGrowthInMarch_LevelReward[2][5]["RewardItem"] = {}
	tGrowthInMarch_LevelReward[2][5]["RewardItem"][1] = {}
	tGrowthInMarch_LevelReward[2][5]["RewardItem"][1]["Id"] = 3329856 -- 1500CPs(B)Box[3329856][属性:9][叠加:0][金币:0], 【表格】1500天石（赠）礼盒
	tGrowthInMarch_LevelReward[2][5]["RewardItem"][1]["Attr"] = "0 1" -- 1500CPs(B)Box*1
	tGrowthInMarch_LevelReward[2][5]["RewardEffect"] = {}
	tGrowthInMarch_LevelReward[2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_LevelReward[2][5]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_LevelReward[2][6] = {}
	-- ===气力值6级奖励
	-- ===索引: tGrowthInMarch_LevelReward[2][6]
	-- ===
	-- ===
	-- ===
	tGrowthInMarch_LevelReward[2][6]["LogId"] = 10002468
	tGrowthInMarch_LevelReward[2][6]["RewardItem"] = {}
	tGrowthInMarch_LevelReward[2][6]["RewardItem"][1] = {}
	tGrowthInMarch_LevelReward[2][6]["RewardItem"][1]["Id"] = 3329857 -- 2000CPs(B)Box[3329857][属性:9][叠加:0][金币:0], 【表格】2000天石（赠）礼盒
	tGrowthInMarch_LevelReward[2][6]["RewardItem"][1]["Attr"] = "0 1" -- 2000CPs(B)Box*1
	tGrowthInMarch_LevelReward[2][6]["RewardEffect"] = {}
	tGrowthInMarch_LevelReward[2][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_LevelReward[2][6]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_LevelReward[2][7] = {}
	-- ===气力值7级奖励
	-- ===索引: tGrowthInMarch_LevelReward[2][7]
	-- ===
	-- ===
	-- ===
	tGrowthInMarch_LevelReward[2][7]["LogId"] = 10002468
	tGrowthInMarch_LevelReward[2][7]["RewardItem"] = {}
	tGrowthInMarch_LevelReward[2][7]["RewardItem"][1] = {}
	tGrowthInMarch_LevelReward[2][7]["RewardItem"][1]["Id"] = 3329858 -- 3000CPs(B)Box[3329858][属性:9][叠加:0][金币:0], 【表格】3000天石（赠）礼盒
	tGrowthInMarch_LevelReward[2][7]["RewardItem"][1]["Attr"] = "0 1" -- 3000CPs(B)Box*1
	tGrowthInMarch_LevelReward[2][7]["RewardEffect"] = {}
	tGrowthInMarch_LevelReward[2][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_LevelReward[2][7]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_LevelReward[3] = {}
	-- ===精粹1级奖励
	-- ===索引: tGrowthInMarch_LevelReward[3][1]
	-- ===
	-- ===
	-- ===
	tGrowthInMarch_LevelReward[3][1] = {}
	tGrowthInMarch_LevelReward[3][1]["LogId"] = 10002468
	tGrowthInMarch_LevelReward[3][1]["RewardItem"] = {}
	tGrowthInMarch_LevelReward[3][1]["RewardItem"][1] = {}
	tGrowthInMarch_LevelReward[3][1]["RewardItem"][1]["Id"] = 3329859 -- 5TwilightStarStonesBox[3329859][属性:9][叠加:0][金币:0], 【表格】5颗微光星陨石礼盒
	tGrowthInMarch_LevelReward[3][1]["RewardItem"][1]["Attr"] = "0 1" -- 5TwilightStarStonesBox*1
	tGrowthInMarch_LevelReward[3][1]["RewardEffect"] = {}
	tGrowthInMarch_LevelReward[3][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_LevelReward[3][1]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_LevelReward[3][2] = {}
	-- ===精粹2级奖励
	-- ===索引: tGrowthInMarch_LevelReward[3][2]
	-- ===
	-- ===
	-- ===
	tGrowthInMarch_LevelReward[3][2]["LogId"] = 10002468
	tGrowthInMarch_LevelReward[3][2]["RewardItem"] = {}
	tGrowthInMarch_LevelReward[3][2]["RewardItem"][1] = {}
	tGrowthInMarch_LevelReward[3][2]["RewardItem"][1]["Id"] = 3329860 -- 1VitalPill(B)Box[3329860][属性:9][叠加:0][金币:0], 【表格】1颗回气丹（赠）礼盒
	tGrowthInMarch_LevelReward[3][2]["RewardItem"][1]["Attr"] = "0 1" -- 1VitalPill(B)Box*1
	tGrowthInMarch_LevelReward[3][2]["RewardEffect"] = {}
	tGrowthInMarch_LevelReward[3][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_LevelReward[3][2]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_LevelReward[3][3] = {}
	-- ===精粹3级奖励
	-- ===索引: tGrowthInMarch_LevelReward[3][3]
	-- ===
	-- ===
	-- ===
	tGrowthInMarch_LevelReward[3][3]["LogId"] = 10002468
	tGrowthInMarch_LevelReward[3][3]["RewardItem"] = {}
	tGrowthInMarch_LevelReward[3][3]["RewardItem"][1] = {}
	tGrowthInMarch_LevelReward[3][3]["RewardItem"][1]["Id"] = 3329861 -- 50RelicCrystals(B)Box[3329861][属性:9][叠加:0][金币:0], 【表格】50个神器源晶（赠）礼盒
	tGrowthInMarch_LevelReward[3][3]["RewardItem"][1]["Attr"] = "0 1" -- 50RelicCrystals(B)Box*1
	tGrowthInMarch_LevelReward[3][3]["RewardEffect"] = {}
	tGrowthInMarch_LevelReward[3][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_LevelReward[3][3]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_LevelReward[3][4] = {}
	-- ===精粹4级奖励
	-- ===索引: tGrowthInMarch_LevelReward[3][4]
	-- ===
	-- ===
	-- ===
	tGrowthInMarch_LevelReward[3][4]["LogId"] = 10002468
	tGrowthInMarch_LevelReward[3][4]["RewardItem"] = {}
	tGrowthInMarch_LevelReward[3][4]["RewardItem"][1] = {}
	tGrowthInMarch_LevelReward[3][4]["RewardItem"][1]["Id"] = 3329862 -- 5BrightStarStonesBox[3329862][属性:9][叠加:0][金币:0], 【表格】5颗明亮星陨石礼盒
	tGrowthInMarch_LevelReward[3][4]["RewardItem"][1]["Attr"] = "0 1" -- 5BrightStarStonesBox*1
	tGrowthInMarch_LevelReward[3][4]["RewardEffect"] = {}
	tGrowthInMarch_LevelReward[3][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_LevelReward[3][4]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_LevelReward[3][5] = {}
	-- ===精粹5级奖励
	-- ===索引: tGrowthInMarch_LevelReward[3][5]
	-- ===
	-- ===
	-- ===
	tGrowthInMarch_LevelReward[3][5]["LogId"] = 10002468
	tGrowthInMarch_LevelReward[3][5]["RewardItem"] = {}
	tGrowthInMarch_LevelReward[3][5]["RewardItem"][1] = {}
	tGrowthInMarch_LevelReward[3][5]["RewardItem"][1]["Id"] = 3329863 -- 2+3Stones(B)Box[3329863][属性:9][叠加:0][金币:0], 【表格】2颗+3赤炼石（赠）礼盒
	tGrowthInMarch_LevelReward[3][5]["RewardItem"][1]["Attr"] = "0 1" -- 2+3Stones(B)Box*1
	tGrowthInMarch_LevelReward[3][5]["RewardEffect"] = {}
	tGrowthInMarch_LevelReward[3][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_LevelReward[3][5]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_LevelReward[3][6] = {}
	-- ===精粹6级奖励
	-- ===索引: tGrowthInMarch_LevelReward[3][6]
	-- ===
	-- ===
	-- ===
	tGrowthInMarch_LevelReward[3][6]["LogId"] = 10002468
	tGrowthInMarch_LevelReward[3][6]["RewardItem"] = {}
	tGrowthInMarch_LevelReward[3][6]["RewardItem"][1] = {}
	tGrowthInMarch_LevelReward[3][6]["RewardItem"][1]["Id"] = 3329864 -- 1PowerEraser(B)Box[3329864][属性:9][叠加:0][金币:0], 【表格】1颗散功丹（赠）礼盒
	tGrowthInMarch_LevelReward[3][6]["RewardItem"][1]["Attr"] = "0 1" -- 1PowerEraser(B)Box*1
	tGrowthInMarch_LevelReward[3][6]["RewardEffect"] = {}
	tGrowthInMarch_LevelReward[3][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_LevelReward[3][6]["RewardEffect"]["Effect"] = "angelwing"


	tGrowthInMarch_LevelReward[3][7] = {}
	-- ===精粹7级奖励
	-- ===索引: tGrowthInMarch_LevelReward[3][7]
	-- ===
	-- ===
	-- ===
	tGrowthInMarch_LevelReward[3][7]["LogId"] = 10002468
	tGrowthInMarch_LevelReward[3][7]["RewardItem"] = {}
	tGrowthInMarch_LevelReward[3][7]["RewardItem"][1] = {}
	tGrowthInMarch_LevelReward[3][7]["RewardItem"][1]["Id"] = 3329865 -- 20DragonFruitsBox[3329865][属性:9][叠加:0][金币:0], 【表格】20颗龙鳞果礼盒
	tGrowthInMarch_LevelReward[3][7]["RewardItem"][1]["Attr"] = "0 1" -- 20DragonFruitsBox*1
	tGrowthInMarch_LevelReward[3][7]["RewardEffect"] = {}
	tGrowthInMarch_LevelReward[3][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGrowthInMarch_LevelReward[3][7]["RewardEffect"]["Effect"] = "angelwing"




local tGrowthInMarch_Log = {}
tGrowthInMarch_Log["EMonyeLog"] = {} 
tGrowthInMarch_Log["EMonyeLog"][1] = "1000	1553	%d	%d	1	"   -- 付费奖励领取
tGrowthInMarch_Log["EMonyeLog"][2] = "1000	1554	%d	%d	1	"   -- 付费奖励领取
tGrowthInMarch_Log["EMonyeLog"][3] = "1000	1555	%d	%d	1	"   -- 付费奖励领取
tGrowthInMarch_Log["EMonyeLog"][4] = "1000	1556	%d	%d	1	"   -- 付费奖励领取
tGrowthInMarch_Log["EMonyeLog"][5] = "1000	1557	%d	%d	1	"   -- 付费奖励领取
tGrowthInMarch_Log["EMonyeLog"][6] = "1000	1558	%d	%d	1	"   -- 付费奖励领取

tGrowthInMarch_Log["DeleteLog"] = "0,0,%d,%d,0,10002468,2,0,0"

-----------------------------------------------逻辑部分-----------------------
-- 打开天石商店
function GrowthInMarch_OpenShop(nGrowthInMarch_NpcId)
	if not Sys_ChkFullTime(tActivityTime["GrowthInMarch"]["ActivityTime"]) then 
		return
	end 
	User_OpenDialog()
end

-- 上交凭证跳转对白
function GrowthInMarch_HandInVoucherText(nGrowthInMarch_Type)
	local nGrowthInMarch_NpcId = tGrowthInMarch_Data["NpcId"][2]
	tNpcGossip[nGrowthInMarch_NpcId]["OptionFunc221"] = "GrowthInMarch_HandInVoucher</N>" ..nGrowthInMarch_Type.. "</N>1"  --上交1个
	tNpcGossip[nGrowthInMarch_NpcId]["OptionFunc222"] = "GrowthInMarch_HandInVoucher</N>" ..nGrowthInMarch_Type.. "</N>5"  --上交5个
	tNpcGossip[nGrowthInMarch_NpcId]["OptionFunc223"] = "GrowthInMarch_HandInVoucher</N>" ..nGrowthInMarch_Type.. "</N>0"  --上交全部
	LinkNpcGossipFunc_New(nGrowthInMarch_NpcId,"2-2")
end 

-- 计算上交三种凭证总数
function GrowthInMarch_HandInVoucherTotal()
	local nGrowthInMarch_EventType1 = tGrowthInMarch_Stc["VoucherNum"][1]["EventType"]
	local nGrowthInMarch_DataType1 = tGrowthInMarch_Stc["VoucherNum"][1]["DataType"] 
	local nGrowthInMarch_Data1 = Get_UserStatisticValue(nGrowthInMarch_EventType1,nGrowthInMarch_DataType1)
	local nGrowthInMarch_EventType2 = tGrowthInMarch_Stc["VoucherNum"][2]["EventType"]
	local nGrowthInMarch_DataType2 = tGrowthInMarch_Stc["VoucherNum"][2]["DataType"] 
	local nGrowthInMarch_Data2 = Get_UserStatisticValue(nGrowthInMarch_EventType2,nGrowthInMarch_DataType2)
	local nGrowthInMarch_EventType3 = tGrowthInMarch_Stc["VoucherNum"][3]["EventType"]
	local nGrowthInMarch_DataType3 = tGrowthInMarch_Stc["VoucherNum"][3]["DataType"] 
	local nGrowthInMarch_Data3 = Get_UserStatisticValue(nGrowthInMarch_EventType3,nGrowthInMarch_DataType3)
	local nGrowthInMarch_Total = nGrowthInMarch_Data1 + nGrowthInMarch_Data2 + nGrowthInMarch_Data3
	return nGrowthInMarch_Total
end 



-- 上交凭证
function GrowthInMarch_HandInVoucher(nGrowthInMarch_Type,nGrowthInMarch_Num)
	if not Sys_ChkFullTime(tActivityTime["GrowthInMarch"]["ActivityTime"]) then 
		return
	end 
	if Sys_ChkFullTime(tActivityTime["GrowthInMarch"]["RankMailTime"]) then 
		if Sys_ChkDayTime(tActivityTime["GrowthInMarch"]["RankTime"]) then 
			Sys_MsgBox(tGrowthInMarch_Text["MsgBox"]["NoTime"])
			return
		end
	end 
	local nGrowthInMarch_ItemId = tGrowthInMarch_Data["VoucherId"][nGrowthInMarch_Type]
	local nGrowthInMarch_nItemNum = Get_CountItemType(nGrowthInMarch_ItemId,0)
	if nGrowthInMarch_nItemNum == 0 then   --没有凭证
		Sys_MsgBox(tGrowthInMarch_Text["MsgBox"]["ShangJiaoSB"])
		return
	end 
	if nGrowthInMarch_Num == 0 then -- 判断是否上交全部
		nGrowthInMarch_Num = nGrowthInMarch_nItemNum
	else
	--判断背包中的凭证数量是否足够
		if not Item_ChkMulItem(nGrowthInMarch_ItemId,nGrowthInMarch_ItemId,nGrowthInMarch_Num) then
			Sys_MsgBox(tGrowthInMarch_Text["MsgBox"]["ShangJiaoSB"])
			return
		end 
	end 

-- 记录凭证上交数量
	local nGrowthInMarch_EventTypeNum = tGrowthInMarch_Stc["VoucherNum"][nGrowthInMarch_Type]["EventType"]
	local nGrowthInMarch_DataTypeNum = tGrowthInMarch_Stc["VoucherNum"][nGrowthInMarch_Type]["DataType"]
-- 记录上交凭证领奖情况（等级）
	local nGrowthInMarch_EventTypeLevel = tGrowthInMarch_Stc["VoucherReward"][nGrowthInMarch_Type]["EventType"]
	local nGrowthInMarch_DataTypeLevel = tGrowthInMarch_Stc["VoucherReward"][nGrowthInMarch_Type]["DataType"]
	local nGrowthInMarch_DataLevel = Get_UserStatisticValue(nGrowthInMarch_EventTypeLevel,nGrowthInMarch_DataTypeLevel)
	-- 记录当天上交凭证总数
	local nGrowthInMarch_EventTypeDayNum = tGrowthInMarch_Stc["VoucherDayTotalNum"]["EventType"]
	local nGrowthInMarch_DataTypeDayNum = tGrowthInMarch_Stc["VoucherDayTotalNum"]["DataType"]
	-- 删除凭证
	if Item_DelMulItem(nGrowthInMarch_ItemId,nGrowthInMarch_ItemId,tonumber(nGrowthInMarch_Num)) then
		-- 增加凭证数量
		Task_AddStatistic(nGrowthInMarch_EventTypeNum,nGrowthInMarch_DataTypeNum,nGrowthInMarch_Num,1)
		-- 隔天重置当日上交数量7
		if Task_StcInterval(nGrowthInMarch_EventTypeDayNum,nGrowthInMarch_DataTypeDayNum,1,4) then  --时间戳是否隔天
			Task_SetStatistic(nGrowthInMarch_EventTypeDayNum,nGrowthInMarch_DataTypeDayNum,0,1)     --隔天重置上交数量
			Task_SetStcTimestamp(nGrowthInMarch_EventTypeDayNum,nGrowthInMarch_DataTypeDayNum,0)
		end 
		Task_AddStatistic(nGrowthInMarch_EventTypeDayNum,nGrowthInMarch_DataTypeDayNum,nGrowthInMarch_Num,1)
		Task_SetStcTimestamp(nGrowthInMarch_EventTypeDayNum,nGrowthInMarch_DataTypeDayNum,0)
		
		-- 上交后凭证数量
		local nGrowthInMarch_DataNum = Get_UserStatisticValue(nGrowthInMarch_EventTypeNum,nGrowthInMarch_DataTypeNum)
		-- 排行榜id
		local nGrowthInMarch_Index = tGrowthInMarch_Data["RankId"][1]
		-- 当前上交凭证总数
		-- local nGrowthInMarch_Total = GrowthInMarch_HandInVoucherTotal()
		local nGrowthInMarch_Total = Get_UserStatisticValue(nGrowthInMarch_EventTypeDayNum,nGrowthInMarch_DataTypeDayNum)
		-- 写入排行榜
		local nGrowthInMarch_UserId = Get_UserId()
		RankingFunc_SetInfo(nGrowthInMarch_Index,nGrowthInMarch_Total,nGrowthInMarch_UserId)
		-- 上交后的可领奖等级
		local nGrowthInMarch_NewDataLevel
		-- 当前可领取第几级奖励
		for i = 1,7,1 do 
			local nGrowthInMarch_RewardLevelNum = tGrowthInMarch_Data["RewardNum"][nGrowthInMarch_Type][i]
			if nGrowthInMarch_RewardLevelNum <= nGrowthInMarch_DataNum then 
				nGrowthInMarch_NewDataLevel = i
			end 
		end 
		-- 判断上交后的奖励等级是否大于上交前
		if nGrowthInMarch_NewDataLevel > nGrowthInMarch_DataLevel then 
			-- 重置奖励等级
			Task_SetStatistic(nGrowthInMarch_EventTypeLevel,nGrowthInMarch_DataTypeLevel,nGrowthInMarch_NewDataLevel,1)
			-- 发奖
			for j = nGrowthInMarch_DataLevel+1,nGrowthInMarch_NewDataLevel,1 do 
				if not User_CheckLeftSpace(1) then  --判断背包空间
					-- 邮件发奖
					local sGrowthInMarch_Sender = tGrowthInMarch_Text["Mail"][1]["Name"]
					local sGrowthInMarch_Title = tGrowthInMarch_Text["Mail"][1]["Zhuti"]
					local sGrowthInMarch_Content = tGrowthInMarch_Text["Mail"][1]["NeiRong"]
					local nGrowthInMarch_MailActionId = tGrowthInMarch_Data["MailActionID"]["LevelReward"][nGrowthInMarch_Type][j]
					local nGrowthInMarch_UserId = Get_UserId()
					Sys_SendMail(nGrowthInMarch_UserId,0,0,nGrowthInMarch_MailActionId,0,7,sGrowthInMarch_Sender,sGrowthInMarch_Title,sGrowthInMarch_Content)
				else
					-- 背包发奖
					RewardTemplate_UseItemAndMsg(tGrowthInMarch_LevelReward[nGrowthInMarch_Type][j])
				end 
			end 
		end 
	end 
end 


-- 显示排行榜数据
function GrowthInMarch_RankingListText()
	local nGrowthInMarch_NpcId = tGrowthInMarch_Data["NpcId"][2]
	for i = 1,10,1 do 
		local nGrowthInMarch_GlobalId = tGrowthInMarch_Data["RankGlobal"][1][i][1]
		local nGrowthInMarch_Pro = tGrowthInMarch_Data["RankGlobal"][1][i][2]
		local nGrowthInMarch_Pro2 = tGrowthInMarch_Data["RankGlobal"][1][i][3]
		local nGrowthInMarch_GlobalNum = Get_SysDynaGlobalData(nGrowthInMarch_GlobalId,nGrowthInMarch_Pro)
		local sGrowthInMarch_GlobalName = Get_SysDynaGlobalDataStr(nGrowthInMarch_GlobalId,nGrowthInMarch_Pro)
		if sGrowthInMarch_GlobalName == "" then 
			sGrowthInMarch_GlobalName = tGrowthInMarch_Text[nGrowthInMarch_NpcId]["NoName"]
		end 
		sGrowthInMarch_GlobalName = string.gsub(sGrowthInMarch_GlobalName, "<", " ")
		sGrowthInMarch_GlobalName = string.gsub(sGrowthInMarch_GlobalName, ">", " ")
		tNpcGossip[nGrowthInMarch_NpcId]["Text31" .. i+3] = string.format(tGrowthInMarch_Text[nGrowthInMarch_NpcId]["Text31" .. i+3],nGrowthInMarch_GlobalNum,sGrowthInMarch_GlobalName)
	end 
	local nGrowthInMarch_GlobalTotal = GrowthInMarch_HandInVoucherTotal()
		-- 记录当天上交凭证总数
	local nGrowthInMarch_EventTypeDayNum = tGrowthInMarch_Stc["VoucherDayTotalNum"]["EventType"]
	local nGrowthInMarch_DataTypeDayNum = tGrowthInMarch_Stc["VoucherDayTotalNum"]["DataType"]
	if Task_StcInterval(nGrowthInMarch_EventTypeDayNum,nGrowthInMarch_DataTypeDayNum,1,4) then  --时间戳是否隔天
		Task_SetStatistic(nGrowthInMarch_EventTypeDayNum,nGrowthInMarch_DataTypeDayNum,0,1)     --隔天重置上交数量
		Task_SetStcTimestamp(nGrowthInMarch_EventTypeDayNum,nGrowthInMarch_DataTypeDayNum,0)
	end 
	local nGrowthInMarch_DataDayNum = Get_UserStatisticValue(nGrowthInMarch_EventTypeDayNum,nGrowthInMarch_DataTypeDayNum)
	tNpcGossip[nGrowthInMarch_NpcId]["Text3115"] = string.format(tGrowthInMarch_Text[nGrowthInMarch_NpcId]["Text3115"],nGrowthInMarch_DataDayNum)
	LinkNpcGossipFunc_New(nGrowthInMarch_NpcId,"3-1")
end 

-- 查看凭证累计奖励对白
function GrowthInMarch_CumulativeRewardText(nGrowthInMarch_NpcId,nGrowthInMarch_Type)
	local nGrowthInMarch_EventTypeNum = tGrowthInMarch_Stc["VoucherNum"][nGrowthInMarch_Type]["EventType"]
	local nGrowthInMarch_DataTypeNum = tGrowthInMarch_Stc["VoucherNum"][nGrowthInMarch_Type]["DataType"]
	local nGrowthInMarch_DataNum = Get_UserStatisticValue(nGrowthInMarch_EventTypeNum,nGrowthInMarch_DataTypeNum)
	
	tNpcGossip[nGrowthInMarch_NpcId]["Text4" .. nGrowthInMarch_Type+1 .. "12"] = string.format(tGrowthInMarch_Text[nGrowthInMarch_NpcId]["Text4" .. nGrowthInMarch_Type+1 .. "12"],nGrowthInMarch_DataNum)
	
	LinkNpcGossipFunc_New(nGrowthInMarch_NpcId,"4-" .. nGrowthInMarch_Type+1)
end 


-- 成长礼盒免费开启
function GrowthInMarch_OpenGrowBoxFree(nGrowthInMarch_ItemId)
	if not Item_ChkMulItem(nGrowthInMarch_ItemId,nGrowthInMarch_ItemId,1) then
		return
	end 
	local bGrowthInMarch_Judge = TermsOfUse_Main(nGrowthInMarch_ItemId,tGrowthInMarch_Pack[nGrowthInMarch_ItemId])
	if not bGrowthInMarch_Judge then
		return
	end
	RewardTemplate_UseItemAndMsg(tGrowthInMarch_Pack[nGrowthInMarch_ItemId])
end 

-- 成长礼盒付费开启
function GrowthInMarch_OpenGrowBoxPay(nGrowthInMarch_ItemId)
	if not Item_ChkMulItem(nGrowthInMarch_ItemId,nGrowthInMarch_ItemId,1) then
		return
	end 
	local bGrowthInMarch_Judge = TermsOfUse_Main(nGrowthInMarch_ItemId,tGrowthInMarch_Pack[nGrowthInMarch_ItemId])
	if not bGrowthInMarch_Judge then
		return
	end
	-- 开启花费的天石数量
	local nGrowthInMarch_EMoneyNum = tGrowthInMarch_Data["PayCpNum"][nGrowthInMarch_ItemId][1]
	-- 礼包类型 赤炼石、气力、精粹
	local nGrowthInMarch_ItemType = tGrowthInMarch_Data["PayCpNum"][nGrowthInMarch_ItemId][3]
	local nGrowthInMarch_UserEMoney = Get_UserEMoney()
	if nGrowthInMarch_EMoneyNum > nGrowthInMarch_UserEMoney then     --判断玩家天石是否足够
		Sys_MsgBox(tGrowthInMarch_Text["MsgBox"]["NoCP"])
		return 
	end 
	if User_AddEMoney(-nGrowthInMarch_EMoneyNum) then   --判断是否成功扣除天石
		local tGrowthInMarch_BuyLog = string.format(tGrowthInMarch_Log["EMonyeLog"][nGrowthInMarch_ItemType],nGrowthInMarch_EMoneyNum,nGrowthInMarch_EMoneyNum)
		Sys_SaveEmoneyBuy(tGrowthInMarch_BuyLog)
		RewardTemplate_UseItemAndMsg(tGrowthInMarch_Pack[nGrowthInMarch_ItemId])
		return
	end 
end 


function GrowthInMarch_GrowBoxPayText(nGrowthInMarch_ItemId)
	-- 开启花费的天石数量
	local nGrowthInMarch_EMoneyNum = tGrowthInMarch_Data["PayCpNum"][nGrowthInMarch_ItemId][1]
	-- 对白序号
	local nGrowthInMarch_TextNum = tGrowthInMarch_Data["PayCpNum"][nGrowthInMarch_ItemId][3]
	-- 礼包层数
	local nGrowthInMarch_BoxNum = tGrowthInMarch_Data["PayCpNum"][nGrowthInMarch_ItemId][4]
	tItem[nGrowthInMarch_ItemId]["Text111"] = string.format(tGrowthInMarch_Text[nGrowthInMarch_TextNum]["Text111"],nGrowthInMarch_BoxNum,nGrowthInMarch_EMoneyNum)
	return true
end 

-- 成长礼盒付费跳转对白
function GrowthInMarch_GrowBoxPayText2(nGrowthInMarch_ItemId)
	-- 开启花费的天石数量
	local nGrowthInMarch_EMoneyNum = tGrowthInMarch_Data["PayCpNum"][nGrowthInMarch_ItemId][1]
	-- 对白序号
	local nGrowthInMarch_TextNum = tGrowthInMarch_Data["PayCpNum"][nGrowthInMarch_ItemId][3]
	
	tItem[nGrowthInMarch_ItemId]["Text211"] = string.format(tGrowthInMarch_Text[nGrowthInMarch_TextNum]["Text211"],nGrowthInMarch_EMoneyNum)
	LinkItemGossipFunc_New(nGrowthInMarch_ItemId,"2-1")
	
end 
-- 外套可选包
function GrowthInMarch_OpenCoatBox(nGrowthInMarch_ItemId,nGrowthInMarch_CoatType)
	local bGrowthInMarch_Judge = TermsOfUse_Main(nGrowthInMarch_ItemId,tGrowthInMarch_Pack[nGrowthInMarch_ItemId][nGrowthInMarch_CoatType])
	if not bGrowthInMarch_Judge then
		return
	end
	RewardTemplate_UseItemAndMsg(tGrowthInMarch_Pack[nGrowthInMarch_ItemId][nGrowthInMarch_CoatType])
end 

-- 凭证寻路
function GrowthInMarch_VoucherFindNPC(nGrowthInMarch_ItemId,sGrowthInMarch_ItemName)
	if CommonFunc_GetBeforeActivityTime(tActivityTime["GrowthInMarch"]["ActivityTime"]) then 
		return
	end 
	if CommonFunc_GetAfterActivityTime(tActivityTime["GrowthInMarch"]["ActivityTime"]) then 
		local nGrowthInMarch_ItemNum = Get_CountItemType(nGrowthInMarch_ItemId,0)
		local tGrowthInMarch_TextLog = string.format(tGrowthInMarch_Log["DeleteLog"],nGrowthInMarch_ItemId,nGrowthInMarch_ItemNum)
		if Item_DelMulItem(nGrowthInMarch_ItemId,nGrowthInMarch_ItemId,nGrowthInMarch_ItemNum) then 
			Sys_SaveActionFestivalLog(tGrowthInMarch_TextLog)
			User_TalkChannel2005(string.format(tGrowthInMarch_Text["MsgBox"]["DeleteItem"],sGrowthInMarch_ItemName))
		end 
		return
	end 
	NpcPosition_PathFind(tGrowthInMarch_Data["NpcId"][2])
end 

-- -- 排行榜邮件发奖
-- function GrowthInMarch_MailReward()
	-- if not Sys_ChkFullTime(tActivityTime["GrowthInMarch"]["RankMailTime"]) then 
		-- return
	-- end 
	-- local nGrowthInMarch_GlobalId = tGrowthInMarch_Data["GlobalId"][1]
	-- if Get_SysDynaGlobalData(nGrowthInMarch_GlobalId,5) == 0 then 
		-- for i = 1,10,1 do 
			-- local nGrowthInMarch_RankGlobalId = tGrowthInMarch_Data["RankGlobal"][1][i][1]
			-- local nGrowthInMarch_Pro = tGrowthInMarch_Data["RankGlobal"][1][i][2]
			-- local nGrowthInMarch_RankNum = Get_SysDynaGlobalData(nGrowthInMarch_RankGlobalId,nGrowthInMarch_Pro)
			-- local nGrowthInMarch_RankUserId = Get_SysDynaGlobalData(nGrowthInMarch_RankGlobalId,nGrowthInMarch_Pro+1)
			-- local sGrowthInMarch_Sender = tGrowthInMarch_Text["Mail"][2]["Name"]
			-- local sGrowthInMarch_Title = tGrowthInMarch_Text["Mail"][2]["Zhuti"]
			-- local sGrowthInMarch_Content = string.format(tGrowthInMarch_Text["Mail"][2]["NeiRong"],i)
			-- local nGrowthInMarch_MailActionId = tGrowthInMarch_Data["RankGlobal"][1][i][3]
			-- if nGrowthInMarch_RankUserId ~= 0 then 
				-- Sys_SendMail(nGrowthInMarch_RankUserId,0,0,nGrowthInMarch_MailActionId,0,30,sGrowthInMarch_Sender,sGrowthInMarch_Title,sGrowthInMarch_Content)
			-- end 
		-- end 
		-- Sys_SetSynaGlobalData(nGrowthInMarch_GlobalId,5,1)
	-- end 
-- end 

-- -- 重置排行榜标识位
-- function GrowthInMarch_Reset()
	-- if not Sys_ChkFullTime(tActivityTime["GrowthInMarch"]["RankMailTime"]) then 
		-- return
	-- end 
	-- local nGrowthInMarch_GlobalId = tGrowthInMarch_Data["GlobalId"][1]
	
	-- if Get_SysDynaGlobalData(nGrowthInMarch_GlobalId,5) ~= 0 then 
		-- Sys_SetSynaGlobalData(nGrowthInMarch_GlobalId,5,0)
	-- end 
-- end 



-- 批判上限！！！！！！！！！

---------------------------------------------------------NPC对白
--夏奇拉
tNpcFace[6186] = 151
tNpcGossip[25990] = tNpcGossip[25990] or DefaultNpc:new{}
tNpcGossip[25990]["OptionHidden"] = 1
tNpcGossip[25990]["DialogueText"] = tGrowthInMarch_Text[25990]
--活动前
tNpcGossip[25990]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[25990]["tOption1-1"] = {111}
tNpcGossip[25990]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["GrowthInMarch"]["ActivityTime"])
end
--活动后
tNpcGossip[25990]["Text1-2"] = {121}
tNpcGossip[25990]["tOption1-2"] = {121}
tNpcGossip[25990]["ChkFunc1-2"] = function ()
	return CommonFunc_GetAfterActivityTime(tActivityTime["GrowthInMarch"]["ActivityTime"])
end
--活动中 
tNpcGossip[25990]["Text1-3"] = {131,132,133,134,135,136}
tNpcGossip[25990]["tOption1-3"] = {131,132}
tNpcGossip[25990]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tActivityTime["GrowthInMarch"]["ActivityTime"])
end
-- 打开天石商店
tNpcGossip[25990]["OptionFunc131"] = "GrowthInMarch_OpenShop</N>25990"


--泰瑞
tNpcFace[6187] = 21
tNpcGossip[25991] = tNpcGossip[25991] or DefaultNpc:new{}
tNpcGossip[25991]["OptionHidden"] = 1
tNpcGossip[25991]["DialogueText"] = tGrowthInMarch_Text[25991]
--活动前
tNpcGossip[25991]["Text1-1"] = {111,112,113,114}
tNpcGossip[25991]["tOption1-1"] = {111}
tNpcGossip[25991]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["GrowthInMarch"]["ActivityTime"])
end
--活动后
tNpcGossip[25991]["Text1-2"] = {121}
tNpcGossip[25991]["tOption1-2"] = {121}
tNpcGossip[25991]["ChkFunc1-2"] = function ()
	return CommonFunc_GetAfterActivityTime(tActivityTime["GrowthInMarch"]["ActivityTime"])
end
--活动中 
tNpcGossip[25991]["Text1-3"] = {131,132,133,134,135,136}
tNpcGossip[25991]["tOption1-3"] = {131,132,133}
tNpcGossip[25991]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tActivityTime["GrowthInMarch"]["ActivityTime"])
end
tNpcGossip[25991]["OptionPoint131"] = "2-1"
tNpcGossip[25991]["OptionFunc132"] = "GrowthInMarch_RankingListText"
tNpcGossip[25991]["OptionPoint133"] = "4-1"
-- 接1、上交凭证
tNpcGossip[25991]["Text2-1"] = {211}
tNpcGossip[25991]["tOption2-1"] = {211,212,213}
tNpcGossip[25991]["OptionFunc211"] = "GrowthInMarch_HandInVoucherText</N>1"   --上交赤炼石凭证
tNpcGossip[25991]["OptionFunc212"] = "GrowthInMarch_HandInVoucherText</N>2"   --上交气力值凭证
tNpcGossip[25991]["OptionFunc213"] = "GrowthInMarch_HandInVoucherText</N>3"   --上交精粹凭证
-- -- 接1~3 上交凭证
tNpcGossip[25991]["Text2-2"] = {221}
tNpcGossip[25991]["tOption2-2"] = {221,222,223}
-- tNpcGossip[25991]["OptionFunc221"] = ""
-- tNpcGossip[25991]["OptionFunc222"] = ""
-- tNpcGossip[25991]["OptionFunc223"] = ""

-- 接2、查看每日排行
tNpcGossip[25991]["Text3-1"] = {311,312,313,314,315,316,317,318,319,3110,3111,3112,3113,3114,3115}
-- tNpcGossip[25991]["ChkFunc3-1"] = function ()
	
-- end
tNpcGossip[25991]["OptionPoint311"] = "1-3"

-- 接3、查看累计凭证奖励
tNpcGossip[25991]["Text4-1"] = {411}
tNpcGossip[25991]["tOption4-1"] = {411,412,413}
tNpcGossip[25991]["OptionFunc411"] = "GrowthInMarch_CumulativeRewardText</N>25991</N>1"
tNpcGossip[25991]["OptionFunc412"] = "GrowthInMarch_CumulativeRewardText</N>25991</N>2"
tNpcGossip[25991]["OptionFunc413"] = "GrowthInMarch_CumulativeRewardText</N>25991</N>3"
-- 接1、查看赤炼石凭证累计奖励
tNpcGossip[25991]["Text4-2"] = {421,422,423,424,425,426,427,428,429,4210,4211,4212}
tNpcGossip[25991]["tOption4-2"] = {421}
tNpcGossip[25991]["OptionPoint421"] = "1-3"
-- 接2、查看气力值凭证累计奖励
tNpcGossip[25991]["Text4-3"] = {431,432,433,434,435,436,437,438,439,4310,4311,4312}
tNpcGossip[25991]["tOption4-3"] = {431}
tNpcGossip[25991]["OptionPoint431"] = "1-3"
-- 接3、查看精粹凭证累计奖励
tNpcGossip[25991]["Text4-4"] = {441,442,443,444,445,446,447,448,449,4410,4411,4412}
tNpcGossip[25991]["tOption4-4"] = {441}
tNpcGossip[25991]["OptionPoint441"] = "1-3"


-- +6赤炼石（赠）礼盒
-- 一层
tItemFace[3329812] = 406
tItem[3329812] = tItem[3329812] or {}
tItem[3329812]["DialogueText"] = tGrowthInMarch_Text[3329812]
tItem[3329812]["Text1-1"] = {111}
tItem[3329812]["tOption1-1"] = {111,112}
tItem[3329812]["OptionFunc111"] = "GrowthInMarch_OpenGrowBoxFree</N>3329812"
-- 二层
tItemFace[3329813] = 406
tItem[3329813] = tItem[3329813] or {}
tItem[3329813]["DialogueText"] = tGrowthInMarch_Text[1]
tItem[3329813]["Text1-1"] = {111}
tItem[3329813]["ChkFunc1-1"] = function ()
	return GrowthInMarch_GrowBoxPayText(3329813)
end
tItem[3329813]["tOption1-1"] = {111,112}
tItem[3329813]["OptionFunc111"] = "GrowthInMarch_GrowBoxPayText2</N>3329813"

tItem[3329813]["Text2-1"] = {211}
tItem[3329813]["tOption2-1"] = {211,212}
tItem[3329813]["OptionFunc211"] = "GrowthInMarch_OpenGrowBoxPay</N>3329813"


-- 三层
tItemFace[3329814] = 406
tItem[3329814] = tItem[3329814] or {}
tItem[3329814]["DialogueText"] = tGrowthInMarch_Text[1]
tItem[3329814]["Text1-1"] = {111}
tItem[3329814]["ChkFunc1-1"] = function ()
	return GrowthInMarch_GrowBoxPayText(3329814)
end
tItem[3329814]["tOption1-1"] = {111,112}
tItem[3329814]["OptionFunc111"] = "GrowthInMarch_GrowBoxPayText2</N>3329814"

tItem[3329814]["Text2-1"] = {211}
tItem[3329814]["tOption2-1"] = {211,212}
tItem[3329814]["OptionFunc211"] = "GrowthInMarch_OpenGrowBoxPay</N>3329814"

-- 四层
tItemFace[3329815] = 406
tItem[3329815] = tItem[3329815] or {}
tItem[3329815]["DialogueText"] = tGrowthInMarch_Text[1]
tItem[3329815]["Text1-1"] = {111}
tItem[3329815]["ChkFunc1-1"] = function ()
	return GrowthInMarch_GrowBoxPayText(3329815)
end
tItem[3329815]["tOption1-1"] = {111,112}
tItem[3329815]["OptionFunc111"] = "GrowthInMarch_GrowBoxPayText2</N>3329815"

tItem[3329815]["Text2-1"] = {211}
tItem[3329815]["tOption2-1"] = {211,212}
tItem[3329815]["OptionFunc211"] = "GrowthInMarch_OpenGrowBoxPay</N>3329815"

-- 五层
tItemFace[3329816] = 406
tItem[3329816] = tItem[3329816] or {}
tItem[3329816]["DialogueText"] = tGrowthInMarch_Text[1]
tItem[3329816]["Text1-1"] = {111}
tItem[3329816]["ChkFunc1-1"] = function ()
	return GrowthInMarch_GrowBoxPayText(3329816)
end
tItem[3329816]["tOption1-1"] = {111,112}
tItem[3329816]["OptionFunc111"] = "GrowthInMarch_GrowBoxPayText2</N>3329816"

tItem[3329816]["Text2-1"] = {211}
tItem[3329816]["tOption2-1"] = {211,212}
tItem[3329816]["OptionFunc211"] = "GrowthInMarch_OpenGrowBoxPay</N>3329816"

-- +8赤炼石（赠）礼盒
-- 一层
tItemFace[3329817] = 1039
tItem[3329817] = tItem[3329817] or {}
tItem[3329817]["DialogueText"] = tGrowthInMarch_Text[3329817]
tItem[3329817]["Text1-1"] = {111}
tItem[3329817]["tOption1-1"] = {111,112}
tItem[3329817]["OptionFunc111"] = "GrowthInMarch_OpenGrowBoxFree</N>3329817"
-- 二层
tItemFace[3329818] = 1039
tItem[3329818] = tItem[3329818] or {}
tItem[3329818]["DialogueText"] = tGrowthInMarch_Text[2]
tItem[3329818]["Text1-1"] = {111}
tItem[3329818]["ChkFunc1-1"] = function ()
	return GrowthInMarch_GrowBoxPayText(3329818)
end
tItem[3329818]["tOption1-1"] = {111,112}
tItem[3329818]["OptionFunc111"] = "GrowthInMarch_GrowBoxPayText2</N>3329818"

tItem[3329818]["Text2-1"] = {211}
tItem[3329818]["tOption2-1"] = {211,212}
tItem[3329818]["OptionFunc211"] = "GrowthInMarch_OpenGrowBoxPay</N>3329818"

-- 三层
tItemFace[3329819] = 1039
tItem[3329819] = tItem[3329819] or {}
tItem[3329819]["DialogueText"] = tGrowthInMarch_Text[2]
tItem[3329819]["Text1-1"] = {111}
tItem[3329819]["ChkFunc1-1"] = function ()
	return GrowthInMarch_GrowBoxPayText(3329819)
end
tItem[3329819]["tOption1-1"] = {111,112}
tItem[3329819]["OptionFunc111"] = "GrowthInMarch_GrowBoxPayText2</N>3329819"

tItem[3329819]["Text2-1"] = {211}
tItem[3329819]["tOption2-1"] = {211,212}
tItem[3329819]["OptionFunc211"] = "GrowthInMarch_OpenGrowBoxPay</N>3329819"

-- 四层
tItemFace[3329820] = 1039
tItem[3329820] = tItem[3329820] or {}
tItem[3329820]["DialogueText"] = tGrowthInMarch_Text[2]
tItem[3329820]["Text1-1"] = {111}
tItem[3329820]["ChkFunc1-1"] = function ()
	return GrowthInMarch_GrowBoxPayText(3329820)
end
tItem[3329820]["tOption1-1"] = {111,112}
tItem[3329820]["OptionFunc111"] = "GrowthInMarch_GrowBoxPayText2</N>3329820"

tItem[3329820]["Text2-1"] = {211}
tItem[3329820]["tOption2-1"] = {211,212}
tItem[3329820]["OptionFunc211"] = "GrowthInMarch_OpenGrowBoxPay</N>3329820"

-- 五层
tItemFace[3329821] = 1039
tItem[3329821] = tItem[3329821] or {}
tItem[3329821]["DialogueText"] = tGrowthInMarch_Text[2]
tItem[3329821]["Text1-1"] = {111}
tItem[3329821]["ChkFunc1-1"] = function ()
	return GrowthInMarch_GrowBoxPayText(3329821)
end
tItem[3329821]["tOption1-1"] = {111,112}
tItem[3329821]["OptionFunc111"] = "GrowthInMarch_GrowBoxPayText2</N>3329821"

tItem[3329821]["Text2-1"] = {211}
tItem[3329821]["tOption2-1"] = {211,212}
tItem[3329821]["OptionFunc211"] = "GrowthInMarch_OpenGrowBoxPay</N>3329821"



-- 10万气力值礼盒
-- 一层
tItemFace[3329822] = 1375
tItem[3329822] = tItem[3329822] or {}
tItem[3329822]["DialogueText"] = tGrowthInMarch_Text[3329822]
tItem[3329822]["Text1-1"] = {111}
tItem[3329822]["tOption1-1"] = {111,112}
tItem[3329822]["OptionFunc111"] = "GrowthInMarch_OpenGrowBoxFree</N>3329822"
-- 二层
tItemFace[3329823] = 1375
tItem[3329823] = tItem[3329823] or {}
tItem[3329823]["DialogueText"] = tGrowthInMarch_Text[3]
tItem[3329823]["Text1-1"] = {111}
tItem[3329823]["ChkFunc1-1"] = function ()
	return GrowthInMarch_GrowBoxPayText(3329823)
end
tItem[3329823]["tOption1-1"] = {111,112}
tItem[3329823]["OptionFunc111"] = "GrowthInMarch_GrowBoxPayText2</N>3329823"

tItem[3329823]["Text2-1"] = {211}
tItem[3329823]["tOption2-1"] = {211,212}
tItem[3329823]["OptionFunc211"] = "GrowthInMarch_OpenGrowBoxPay</N>3329823"

-- 三层
tItemFace[3329824] = 1375
tItem[3329824] = tItem[3329824] or {}
tItem[3329824]["DialogueText"] = tGrowthInMarch_Text[3]
tItem[3329824]["Text1-1"] = {111}
tItem[3329824]["ChkFunc1-1"] = function ()
	return GrowthInMarch_GrowBoxPayText(3329824)
end
tItem[3329824]["tOption1-1"] = {111,112}
tItem[3329824]["OptionFunc111"] = "GrowthInMarch_GrowBoxPayText2</N>3329824"

tItem[3329824]["Text2-1"] = {211}
tItem[3329824]["tOption2-1"] = {211,212}
tItem[3329824]["OptionFunc211"] = "GrowthInMarch_OpenGrowBoxPay</N>3329824"

-- 四层
tItemFace[3329825] = 1375
tItem[3329825] = tItem[3329825] or {}
tItem[3329825]["DialogueText"] = tGrowthInMarch_Text[3]
tItem[3329825]["Text1-1"] = {111}
tItem[3329825]["ChkFunc1-1"] = function ()
	return GrowthInMarch_GrowBoxPayText(3329825)
end
tItem[3329825]["tOption1-1"] = {111,112}
tItem[3329825]["OptionFunc111"] = "GrowthInMarch_GrowBoxPayText2</N>3329825"

tItem[3329825]["Text2-1"] = {211}
tItem[3329825]["tOption2-1"] = {211,212}
tItem[3329825]["OptionFunc211"] = "GrowthInMarch_OpenGrowBoxPay</N>3329825"

-- 五层
tItemFace[3329826] = 1375
tItem[3329826] = tItem[3329826] or {}
tItem[3329826]["DialogueText"] = tGrowthInMarch_Text[3]
tItem[3329826]["Text1-1"] = {111}
tItem[3329826]["ChkFunc1-1"] = function ()
	return GrowthInMarch_GrowBoxPayText(3329826)
end
tItem[3329826]["tOption1-1"] = {111,112}
tItem[3329826]["OptionFunc111"] = "GrowthInMarch_GrowBoxPayText2</N>3329826"

tItem[3329826]["Text2-1"] = {211}
tItem[3329826]["tOption2-1"] = {211,212}
tItem[3329826]["OptionFunc211"] = "GrowthInMarch_OpenGrowBoxPay</N>3329826"


-- 100万气力值礼盒
-- 一层
tItemFace[3329827] = 1013
tItem[3329827] = tItem[3329827] or {}
tItem[3329827]["DialogueText"] = tGrowthInMarch_Text[3329827]
tItem[3329827]["Text1-1"] = {111}
tItem[3329827]["tOption1-1"] = {111,112}
tItem[3329827]["OptionFunc111"] = "GrowthInMarch_OpenGrowBoxFree</N>3329827"
-- 二层
tItemFace[3329828] = 1013
tItem[3329828] = tItem[3329828] or {}
tItem[3329828]["DialogueText"] = tGrowthInMarch_Text[4]
tItem[3329828]["Text1-1"] = {111}
tItem[3329828]["ChkFunc1-1"] = function ()
	return GrowthInMarch_GrowBoxPayText(3329828)
end
tItem[3329828]["tOption1-1"] = {111,112}
tItem[3329828]["OptionFunc111"] = "GrowthInMarch_GrowBoxPayText2</N>3329828"

tItem[3329828]["Text2-1"] = {211}
tItem[3329828]["tOption2-1"] = {211,212}
tItem[3329828]["OptionFunc211"] = "GrowthInMarch_OpenGrowBoxPay</N>3329828"

-- 三层
tItemFace[3329829] = 1013
tItem[3329829] = tItem[3329829] or {}
tItem[3329829]["DialogueText"] = tGrowthInMarch_Text[4]
tItem[3329829]["Text1-1"] = {111}
tItem[3329829]["ChkFunc1-1"] = function ()
	return GrowthInMarch_GrowBoxPayText(3329829)
end
tItem[3329829]["tOption1-1"] = {111,112}
tItem[3329829]["OptionFunc111"] = "GrowthInMarch_GrowBoxPayText2</N>3329829"

tItem[3329829]["Text2-1"] = {211}
tItem[3329829]["tOption2-1"] = {211,212}
tItem[3329829]["OptionFunc211"] = "GrowthInMarch_OpenGrowBoxPay</N>3329829"

-- 四层
tItemFace[3329830] = 1013
tItem[3329830] = tItem[3329830] or {}
tItem[3329830]["DialogueText"] = tGrowthInMarch_Text[4]
tItem[3329830]["Text1-1"] = {111}
tItem[3329830]["ChkFunc1-1"] = function ()
	return GrowthInMarch_GrowBoxPayText(3329830)
end
tItem[3329830]["tOption1-1"] = {111,112}
tItem[3329830]["OptionFunc111"] = "GrowthInMarch_GrowBoxPayText2</N>3329830"

tItem[3329830]["Text2-1"] = {211}
tItem[3329830]["tOption2-1"] = {211,212}
tItem[3329830]["OptionFunc211"] = "GrowthInMarch_OpenGrowBoxPay</N>3329830"

-- 五层
tItemFace[3329831] = 1013
tItem[3329831] = tItem[3329831] or {}
tItem[3329831]["DialogueText"] = tGrowthInMarch_Text[4]
tItem[3329831]["Text1-1"] = {111}
tItem[3329831]["ChkFunc1-1"] = function ()
	return GrowthInMarch_GrowBoxPayText(3329831)
end
tItem[3329831]["tOption1-1"] = {111,112}
tItem[3329831]["OptionFunc111"] = "GrowthInMarch_GrowBoxPayText2</N>3329831"

tItem[3329831]["Text2-1"] = {211}
tItem[3329831]["tOption2-1"] = {211,212}
tItem[3329831]["OptionFunc211"] = "GrowthInMarch_OpenGrowBoxPay</N>3329831"


-- 500个万能神纹精粹礼盒
-- 一层
tItemFace[3329832] = 1419
tItem[3329832] = tItem[3329832] or {}
tItem[3329832]["DialogueText"] = tGrowthInMarch_Text[3329832]
tItem[3329832]["Text1-1"] = {111}
tItem[3329832]["tOption1-1"] = {111,112}
tItem[3329832]["OptionFunc111"] = "GrowthInMarch_OpenGrowBoxFree</N>3329832"
-- 二层
tItemFace[3329833] = 1419
tItem[3329833] = tItem[3329833] or {}
tItem[3329833]["DialogueText"] = tGrowthInMarch_Text[5]
tItem[3329833]["Text1-1"] = {111}
tItem[3329833]["ChkFunc1-1"] = function ()
	return GrowthInMarch_GrowBoxPayText(3329833)
end
tItem[3329833]["tOption1-1"] = {111,112}
tItem[3329833]["OptionFunc111"] = "GrowthInMarch_GrowBoxPayText2</N>3329833"

tItem[3329833]["Text2-1"] = {211}
tItem[3329833]["tOption2-1"] = {211,212}
tItem[3329833]["OptionFunc211"] = "GrowthInMarch_OpenGrowBoxPay</N>3329833"

-- 三层
tItemFace[3329834] = 1419
tItem[3329834] = tItem[3329834] or {}
tItem[3329834]["DialogueText"] = tGrowthInMarch_Text[5]
tItem[3329834]["Text1-1"] = {111}
tItem[3329834]["ChkFunc1-1"] = function ()
	return GrowthInMarch_GrowBoxPayText(3329834)
end
tItem[3329834]["tOption1-1"] = {111,112}
tItem[3329834]["OptionFunc111"] = "GrowthInMarch_GrowBoxPayText2</N>3329834"

tItem[3329834]["Text2-1"] = {211}
tItem[3329834]["tOption2-1"] = {211,212}
tItem[3329834]["OptionFunc211"] = "GrowthInMarch_OpenGrowBoxPay</N>3329834"

-- 四层
tItemFace[3329835] = 1419
tItem[3329835] = tItem[3329835] or {}
tItem[3329835]["DialogueText"] = tGrowthInMarch_Text[5]
tItem[3329835]["Text1-1"] = {111}
tItem[3329835]["ChkFunc1-1"] = function ()
	return GrowthInMarch_GrowBoxPayText(3329835)
end
tItem[3329835]["tOption1-1"] = {111,112}
tItem[3329835]["OptionFunc111"] = "GrowthInMarch_GrowBoxPayText2</N>3329835"

tItem[3329835]["Text2-1"] = {211}
tItem[3329835]["tOption2-1"] = {211,212}
tItem[3329835]["OptionFunc211"] = "GrowthInMarch_OpenGrowBoxPay</N>3329835"

-- 五层
tItemFace[3329836] = 1419
tItem[3329836] = tItem[3329836] or {}
tItem[3329836]["DialogueText"] = tGrowthInMarch_Text[5]
tItem[3329836]["Text1-1"] = {111}
tItem[3329836]["ChkFunc1-1"] = function ()
	return GrowthInMarch_GrowBoxPayText(3329836)
end
tItem[3329836]["tOption1-1"] = {111,112}
tItem[3329836]["OptionFunc111"] = "GrowthInMarch_GrowBoxPayText2</N>3329836"

tItem[3329836]["Text2-1"] = {211}
tItem[3329836]["tOption2-1"] = {211,212}
tItem[3329836]["OptionFunc211"] = "GrowthInMarch_OpenGrowBoxPay</N>3329836"


-- 10000个万能神纹精粹礼盒
-- 一层
tItemFace[3329837] = 2600
tItem[3329837] = tItem[3329837] or {}
tItem[3329837]["DialogueText"] = tGrowthInMarch_Text[3329837]
tItem[3329837]["Text1-1"] = {111}
tItem[3329837]["tOption1-1"] = {111,112}
tItem[3329837]["OptionFunc111"] = "GrowthInMarch_OpenGrowBoxFree</N>3329837"
-- 二层
tItemFace[3329838] = 2600
tItem[3329838] = tItem[3329838] or {}
tItem[3329838]["DialogueText"] = tGrowthInMarch_Text[6]
tItem[3329838]["Text1-1"] = {111}
tItem[3329838]["ChkFunc1-1"] = function ()
	return GrowthInMarch_GrowBoxPayText(3329838)
end
tItem[3329838]["tOption1-1"] = {111,112}
tItem[3329838]["OptionFunc111"] = "GrowthInMarch_GrowBoxPayText2</N>3329838"

tItem[3329838]["Text2-1"] = {211}
tItem[3329838]["tOption2-1"] = {211,212}
tItem[3329838]["OptionFunc211"] = "GrowthInMarch_OpenGrowBoxPay</N>3329838"

-- 三层
tItemFace[3329839] = 2600
tItem[3329839] = tItem[3329839] or {}
tItem[3329839]["DialogueText"] = tGrowthInMarch_Text[6]
tItem[3329839]["Text1-1"] = {111}
tItem[3329839]["ChkFunc1-1"] = function ()
	return GrowthInMarch_GrowBoxPayText(3329839)
end
tItem[3329839]["tOption1-1"] = {111,112}
tItem[3329839]["OptionFunc111"] = "GrowthInMarch_GrowBoxPayText2</N>3329839"

tItem[3329839]["Text2-1"] = {211}
tItem[3329839]["tOption2-1"] = {211,212}
tItem[3329839]["OptionFunc211"] = "GrowthInMarch_OpenGrowBoxPay</N>3329839"

-- 四层
tItemFace[3329840] = 2600
tItem[3329840] = tItem[3329840] or {}
tItem[3329840]["DialogueText"] = tGrowthInMarch_Text[6]
tItem[3329840]["Text1-1"] = {111}
tItem[3329840]["ChkFunc1-1"] = function ()
	return GrowthInMarch_GrowBoxPayText(3329840)
end
tItem[3329840]["tOption1-1"] = {111,112}
tItem[3329840]["OptionFunc111"] = "GrowthInMarch_GrowBoxPayText2</N>3329840"

tItem[3329840]["Text2-1"] = {211}
tItem[3329840]["tOption2-1"] = {211,212}
tItem[3329840]["OptionFunc211"] = "GrowthInMarch_OpenGrowBoxPay</N>3329840"

-- 五层
tItemFace[3329841] = 2600
tItem[3329841] = tItem[3329841] or {}
tItem[3329841]["DialogueText"] = tGrowthInMarch_Text[6]
tItem[3329841]["Text1-1"] = {111}
tItem[3329841]["ChkFunc1-1"] = function ()
	return GrowthInMarch_GrowBoxPayText(3329841)
end
tItem[3329841]["tOption1-1"] = {111,112}
tItem[3329841]["OptionFunc111"] = "GrowthInMarch_GrowBoxPayText2</N>3329841"

tItem[3329841]["Text2-1"] = {211}
tItem[3329841]["tOption2-1"] = {211,212}
tItem[3329841]["OptionFunc211"] = "GrowthInMarch_OpenGrowBoxPay</N>3329841"


-- 外套可选包
tItemFace[3329866] = 2315
tItem[3329866] = tItem[3329866] or {}
tItem[3329866]["DialogueText"] = tGrowthInMarch_Text[3329866]
tItem[3329866]["Text1-1"] = {111}
tItem[3329866]["tOption1-1"] = {111,112,113,114,115,116}
tItem[3329866]["OptionFunc111"] = "GrowthInMarch_OpenCoatBox</N>3329866</N>1"
tItem[3329866]["OptionFunc112"] = "GrowthInMarch_OpenCoatBox</N>3329866</N>2"
tItem[3329866]["OptionFunc113"] = "GrowthInMarch_OpenCoatBox</N>3329866</N>3"
tItem[3329866]["OptionFunc114"] = "GrowthInMarch_OpenCoatBox</N>3329866</N>4"
tItem[3329866]["OptionFunc115"] = "GrowthInMarch_OpenCoatBox</N>3329866</N>5"
tItem[3329866]["OptionFunc116"] = "GrowthInMarch_OpenCoatBox</N>3329866</N>6"


-- 普通礼包
tItem[3329846] = tItem[3329846] or {}
tItem[3329846]["Function"] = function(nGrowthInMarch_ItemId,sGrowthInMarch_ItemName)
	local bGrowthInMarch_Judge = TermsOfUse_Main(nGrowthInMarch_ItemId,tGrowthInMarch_Pack[nGrowthInMarch_ItemId])
	if not bGrowthInMarch_Judge then
		return
	end
	RewardTemplate_UseItemAndMsg(tGrowthInMarch_Pack[nGrowthInMarch_ItemId])
end
tItem[3329847] = tItem[3329846] or {}
tItem[3329848] = tItem[3329846] or {}
tItem[3329849] = tItem[3329846] or {}
tItem[3329850] = tItem[3329846] or {}
tItem[3329851] = tItem[3329846] or {}
tItem[3329859] = tItem[3329846] or {}
tItem[3329860] = tItem[3329846] or {}
tItem[3329861] = tItem[3329846] or {}
tItem[3329862] = tItem[3329846] or {}
tItem[3329863] = tItem[3329846] or {}
tItem[3329864] = tItem[3329846] or {}
tItem[3329865] = tItem[3329846] or {}
tItem[3329867] = tItem[3329846] or {}
tItem[3329868] = tItem[3329846] or {}
tItem[3329869] = tItem[3329846] or {}
tItem[3329870] = tItem[3329846] or {}
tItem[3329871] = tItem[3329846] or {}
tItem[3329872] = tItem[3329846] or {}
tItem[3329873] = tItem[3329846] or {}
tItem[3329874] = tItem[3329846] or {}
tItem[3329875] = tItem[3329846] or {}

-- 赠点礼包
tItem[3329852] = tItem[3329852] or {}
tItem[3329852]["Function"] = function(nGrowthInMarch_ItemId,sGrowthInMarch_ItemName)
	local bGrowthInMarch_Judge = TermsOfUse_Main(nGrowthInMarch_ItemId,tGrowthInMarch_Pack[nGrowthInMarch_ItemId])
	if not bGrowthInMarch_Judge then
		return
	end
	--判断赠点上限
	if Get_UserMonoEMoney() + tGrowthInMarch_Pack[nGrowthInMarch_ItemId]["RewardEMoneyMono"]["Value"] > G_User_MaxEmoneyMono then
		Sys_MsgBox(tGrowthInMarch_Text["MsgBox"]["CPMonoFull"])
		return
	end	
	
	RewardTemplate_UseItemAndMsg(tGrowthInMarch_Pack[nGrowthInMarch_ItemId])
end
tItem[3329853] = tItem[3329852] or {}
tItem[3329854] = tItem[3329852] or {}
tItem[3329855] = tItem[3329852] or {}
tItem[3329856] = tItem[3329852] or {}
tItem[3329857] = tItem[3329852] or {}
tItem[3329858] = tItem[3329852] or {}

-- 凭证寻路
tItem[3329843] = tItem[3329843] or {}
tItem[3329843]["Function"] = function(nGrowthInMarch_ItemId,sGrowthInMarch_ItemName)
	GrowthInMarch_VoucherFindNPC(nGrowthInMarch_ItemId,sGrowthInMarch_ItemName)
end
tItem[3329844] = tItem[3329843] or {}
tItem[3329845] = tItem[3329843] or {}

-------------------------------------------------时间自检
-- -- 排行榜每日发奖
-- local tGrowthInMarch_OnTime = {}
	-- tGrowthInMarch_OnTime[1] = {}
	-- tGrowthInMarch_OnTime[1]["ActivityTime"] = tActivityTime["GrowthInMarch"]["RankMailTime"]
	-- tGrowthInMarch_OnTime[1]["Type"] = 6
	-- tGrowthInMarch_OnTime[1]["TimeType"] = 4
	-- tGrowthInMarch_OnTime[1]["Multiple"] = {}
	-- tGrowthInMarch_OnTime[1]["Multiple"][1]  = "00:00 00:05"
	-- tGrowthInMarch_OnTime[1]["Func"] = GrowthInMarch_MailReward
	-- table.insert(tSystemTime_InitialData,tGrowthInMarch_OnTime[1])
	
	-- tGrowthInMarch_OnTime[2] = {}
	-- tGrowthInMarch_OnTime[2]["ActivityTime"] = tActivityTime["GrowthInMarch"]["RankMailTime"]
	-- tGrowthInMarch_OnTime[2]["Type"] = 6
	-- tGrowthInMarch_OnTime[2]["TimeType"] = 4
	-- tGrowthInMarch_OnTime[2]["Multiple"] = {}
	-- tGrowthInMarch_OnTime[2]["Multiple"][1]  = "00:06 00:10"
	-- tGrowthInMarch_OnTime[2]["Func"] = GrowthInMarch_Reset
	-- table.insert(tSystemTime_InitialData,tGrowthInMarch_OnTime[2])