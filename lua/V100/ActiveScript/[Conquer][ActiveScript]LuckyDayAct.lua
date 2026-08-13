------------------------------------------------------------------------------------
--Name:			190324[英文征服][活动脚本]4月幸运日活动4.16-5.6
--Creator:		吴志宏
--Created:		2019/03/24
------------------------------------------------------------------------------------
-- 前缀
-- LuckyDayAct_

-- LogId 12001345

-- stc掩码说明 
-- stc 192,36		是否领取背包信
-- stc 192,95		记录玩家处于第几期状态
-- stc 192,96		记录玩家奖券号码

-- 全局表记录
-- global
-- 53326			data0记录中奖号码
-- 53326			data1记录第几期
-- 53326			data2记录当前记录位
-- 53327~53329		data0、data2、data4记录中奖期数
-- 53327~53329		data1、data3、data5记录中奖号码
-- 53327~53329		datastr0、datastr2、datastr4记录玩家名
-- 53330			data0记录中奖期数
-- 53330			data1记录中奖号码
-- 53330			datastr0记录玩家名



--------------------------------------常量配置部分---------------------------------------
-- 常量表
local tLuckyDayAct_Cont = {}
	-- 动态存储表
	tLuckyDayAct_Cont["Global"] = {}
	-- 记录第几期及中奖号码
	tLuckyDayAct_Cont["Global"]["Number"] = 53326
	-- 记录最近10名中奖玩家信息
	tLuckyDayAct_Cont["Global"]["LuckyMan"] = {}
	tLuckyDayAct_Cont["Global"]["LuckyMan"][1] = 53327
	tLuckyDayAct_Cont["Global"]["LuckyMan"][2] = 53328
	tLuckyDayAct_Cont["Global"]["LuckyMan"][3] = 53329
	tLuckyDayAct_Cont["Global"]["LuckyMan"][4] = 53330
	
	-- 地图id
	tLuckyDayAct_Cont["Map"] = {}
	tLuckyDayAct_Cont["Map"]["TwinCity"] = 1002
	
	-- 物品
	tLuckyDayAct_Cont["Item"] = {}
	tLuckyDayAct_Cont["Item"]["TicketId"] = 3320773


-- 掩码表
local tLuckyDayAct_Stc = {}
	-- 记录玩家处于第几期状态
	tLuckyDayAct_Stc["Phase"] = {}
	tLuckyDayAct_Stc["Phase"]["Event"] = 192
	tLuckyDayAct_Stc["Phase"]["Type"] = 95
	
	-- 记录玩家奖券号码
	tLuckyDayAct_Stc["TicketNum"] = {}
	tLuckyDayAct_Stc["TicketNum"]["Event"] = 192
	tLuckyDayAct_Stc["TicketNum"]["Type"] = 96


-- 奖励表
local tLuckyDayAct_Reward = {}
	-- 领取奖券
	tLuckyDayAct_Reward["GetTicket"] = {}
	tLuckyDayAct_Reward["GetTicket"]["RewardItem"] = {}
	tLuckyDayAct_Reward["GetTicket"]["RewardItem"][1] = {}
	tLuckyDayAct_Reward["GetTicket"]["RewardItem"][1]["Id"] = 3320773
	tLuckyDayAct_Reward["GetTicket"]["RewardItem"][1]["Attr"] = "0 1"
	tLuckyDayAct_Reward["GetTicket"]["RewardNoNeedTip"] = 1
	tLuckyDayAct_Reward["GetTicket"]["LogId"] = 12001345
	tLuckyDayAct_Reward["GetTicket"]["LogStep"] = "1[1]"
	
	-- 领大奖
	tLuckyDayAct_Reward["GetReward"] = {}
	tLuckyDayAct_Reward["GetReward"]["DeleteItem"] = {}
	tLuckyDayAct_Reward["GetReward"]["DeleteItem"][1] = {}
	tLuckyDayAct_Reward["GetReward"]["DeleteItem"][1]["Id"] = 3320773
	-- 200天石
	tLuckyDayAct_Reward["GetReward"]["RewardEMoney"] = {}
	tLuckyDayAct_Reward["GetReward"]["RewardEMoney"]["Value"] = 200
	tLuckyDayAct_Reward["GetReward"]["RewardEMoney"]["EmoneyLog"] = "10000	0269	-100	-100	1	"
	-- 1000赠点
	tLuckyDayAct_Reward["GetReward"]["RewardEMoneyMono"] = {}
	tLuckyDayAct_Reward["GetReward"]["RewardEMoneyMono"]["Value"] = 1000
	tLuckyDayAct_Reward["GetReward"]["RewardEMoneyMono"]["EmoneyLog"] = "10000	0270	0	0	-1000	"
	-- 100W银两
	tLuckyDayAct_Reward["GetReward"]["RewardMoney"] = {}
	tLuckyDayAct_Reward["GetReward"]["RewardMoney"]["Value"] = 1000000
	tLuckyDayAct_Reward["GetReward"]["EmoneyLog"] = "350	22098	0	0	1	"
	tLuckyDayAct_Reward["GetReward"]["RewardEffect"] = {}
	tLuckyDayAct_Reward["GetReward"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tLuckyDayAct_Reward["GetReward"]["RewardEffect"]["Effect"] = "angelwing"
	tLuckyDayAct_Reward["GetReward"]["LogId"] = 12001345
	tLuckyDayAct_Reward["GetReward"]["LogStep"] = "1[2]"
	
	
------------------------------------工具生成奖励部分---------------------------------
	tLuckyDayAct_Reward["Pack"] = {}
	-- ===49天石礼包,3320868
	-- ===索引: 3320868
	-- ===删除: 3320868,1
	-- ===EMoneyLog: 10000,0287
	tLuckyDayAct_Reward["Pack"][3320868] = {}
	tLuckyDayAct_Reward["Pack"][3320868]["LogId"] = 12001345
	tLuckyDayAct_Reward["Pack"][3320868]["DeleteItem"] = {}
	tLuckyDayAct_Reward["Pack"][3320868]["DeleteItem"][1] = {}
	tLuckyDayAct_Reward["Pack"][3320868]["DeleteItem"][1]["Id"] = 3320868 -- 【库】49CPsPack[属性:8]
	tLuckyDayAct_Reward["Pack"][3320868]["RewardEMoney"] = {}
	tLuckyDayAct_Reward["Pack"][3320868]["RewardEMoney"]["Value"] = 49 -- 天石
	tLuckyDayAct_Reward["Pack"][3320868]["EmoneyLog"] = "10000	287	-49	-49	1	"
	tLuckyDayAct_Reward["Pack"][3320868]["RewardEffect"] = {}
	tLuckyDayAct_Reward["Pack"][3320868]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tLuckyDayAct_Reward["Pack"][3320868]["RewardEffect"]["Effect"] = "angelwing"


	-- ===99天石礼包,3320869
	-- ===索引: 3320869
	-- ===删除: 3320869,1
	-- ===EMoneyLog: 10000,0288
	tLuckyDayAct_Reward["Pack"][3320869] = {}
	tLuckyDayAct_Reward["Pack"][3320869]["LogId"] = 12001345
	tLuckyDayAct_Reward["Pack"][3320869]["DeleteItem"] = {}
	tLuckyDayAct_Reward["Pack"][3320869]["DeleteItem"][1] = {}
	tLuckyDayAct_Reward["Pack"][3320869]["DeleteItem"][1]["Id"] = 3320869 -- 【库】99CPsPack[属性:8]
	tLuckyDayAct_Reward["Pack"][3320869]["RewardEMoney"] = {}
	tLuckyDayAct_Reward["Pack"][3320869]["RewardEMoney"]["Value"] = 99 -- 天石
	tLuckyDayAct_Reward["Pack"][3320869]["EmoneyLog"] = "10000	288	-99	-99	1	"
	tLuckyDayAct_Reward["Pack"][3320869]["RewardEffect"] = {}
	tLuckyDayAct_Reward["Pack"][3320869]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tLuckyDayAct_Reward["Pack"][3320869]["RewardEffect"]["Effect"] = "angelwing"


	-- ===109天石礼包,3320870
	-- ===索引: 3320870
	-- ===删除: 3320870,1
	-- ===EMoneyLog: 10000,0289
	tLuckyDayAct_Reward["Pack"][3320870] = {}
	tLuckyDayAct_Reward["Pack"][3320870]["LogId"] = 12001345
	tLuckyDayAct_Reward["Pack"][3320870]["DeleteItem"] = {}
	tLuckyDayAct_Reward["Pack"][3320870]["DeleteItem"][1] = {}
	tLuckyDayAct_Reward["Pack"][3320870]["DeleteItem"][1]["Id"] = 3320870 -- 【库】109CPsPack[属性:8]
	tLuckyDayAct_Reward["Pack"][3320870]["RewardEMoney"] = {}
	tLuckyDayAct_Reward["Pack"][3320870]["RewardEMoney"]["Value"] = 109 -- 天石
	tLuckyDayAct_Reward["Pack"][3320870]["EmoneyLog"] = "10000	289	-109	-109	1	"
	tLuckyDayAct_Reward["Pack"][3320870]["RewardEffect"] = {}
	tLuckyDayAct_Reward["Pack"][3320870]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tLuckyDayAct_Reward["Pack"][3320870]["RewardEffect"]["Effect"] = "angelwing"


	-- ===129天石礼包,3320871
	-- ===索引: 3320871
	-- ===删除: 3320871,1
	-- ===EMoneyLog: 10000,0290
	tLuckyDayAct_Reward["Pack"][3320871] = {}
	tLuckyDayAct_Reward["Pack"][3320871]["LogId"] = 12001345
	tLuckyDayAct_Reward["Pack"][3320871]["DeleteItem"] = {}
	tLuckyDayAct_Reward["Pack"][3320871]["DeleteItem"][1] = {}
	tLuckyDayAct_Reward["Pack"][3320871]["DeleteItem"][1]["Id"] = 3320871 -- 【库】129CPsPack[属性:8]
	tLuckyDayAct_Reward["Pack"][3320871]["RewardEMoney"] = {}
	tLuckyDayAct_Reward["Pack"][3320871]["RewardEMoney"]["Value"] = 129 -- 天石
	tLuckyDayAct_Reward["Pack"][3320871]["EmoneyLog"] = "10000	290	-129	-129	1	"
	tLuckyDayAct_Reward["Pack"][3320871]["RewardEffect"] = {}
	tLuckyDayAct_Reward["Pack"][3320871]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tLuckyDayAct_Reward["Pack"][3320871]["RewardEffect"]["Effect"] = "angelwing"


	-- ===139天石礼包,3320872
	-- ===索引: 3320872
	-- ===删除: 3320872,1
	-- ===EMoneyLog: 10000,0291
	tLuckyDayAct_Reward["Pack"][3320872] = {}
	tLuckyDayAct_Reward["Pack"][3320872]["LogId"] = 12001345
	tLuckyDayAct_Reward["Pack"][3320872]["DeleteItem"] = {}
	tLuckyDayAct_Reward["Pack"][3320872]["DeleteItem"][1] = {}
	tLuckyDayAct_Reward["Pack"][3320872]["DeleteItem"][1]["Id"] = 3320872 -- 【库】139CPsPack[属性:8]
	tLuckyDayAct_Reward["Pack"][3320872]["RewardEMoney"] = {}
	tLuckyDayAct_Reward["Pack"][3320872]["RewardEMoney"]["Value"] = 139 -- 天石
	tLuckyDayAct_Reward["Pack"][3320872]["EmoneyLog"] = "10000	291	-139	-139	1	"
	tLuckyDayAct_Reward["Pack"][3320872]["RewardEffect"] = {}
	tLuckyDayAct_Reward["Pack"][3320872]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tLuckyDayAct_Reward["Pack"][3320872]["RewardEffect"]["Effect"] = "angelwing"


	-- ===149天石礼包,3320873
	-- ===索引: 3320873
	-- ===删除: 3320873,1
	-- ===EMoneyLog: 10000,0292
	tLuckyDayAct_Reward["Pack"][3320873] = {}
	tLuckyDayAct_Reward["Pack"][3320873]["LogId"] = 12001345
	tLuckyDayAct_Reward["Pack"][3320873]["DeleteItem"] = {}
	tLuckyDayAct_Reward["Pack"][3320873]["DeleteItem"][1] = {}
	tLuckyDayAct_Reward["Pack"][3320873]["DeleteItem"][1]["Id"] = 3320873 -- 【库】149CPsPack[属性:8]
	tLuckyDayAct_Reward["Pack"][3320873]["RewardEMoney"] = {}
	tLuckyDayAct_Reward["Pack"][3320873]["RewardEMoney"]["Value"] = 149 -- 天石
	tLuckyDayAct_Reward["Pack"][3320873]["EmoneyLog"] = "10000	292	-149	-149	1	"
	tLuckyDayAct_Reward["Pack"][3320873]["RewardEffect"] = {}
	tLuckyDayAct_Reward["Pack"][3320873]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tLuckyDayAct_Reward["Pack"][3320873]["RewardEffect"]["Effect"] = "angelwing"


	-- ===189天石礼包,3320874
	-- ===索引: 3320874
	-- ===删除: 3320874,1
	-- ===EMoneyLog: 10000,0293
	tLuckyDayAct_Reward["Pack"][3320874] = {}
	tLuckyDayAct_Reward["Pack"][3320874]["LogId"] = 12001345
	tLuckyDayAct_Reward["Pack"][3320874]["DeleteItem"] = {}
	tLuckyDayAct_Reward["Pack"][3320874]["DeleteItem"][1] = {}
	tLuckyDayAct_Reward["Pack"][3320874]["DeleteItem"][1]["Id"] = 3320874 -- 【库】189CPsPack[属性:8]
	tLuckyDayAct_Reward["Pack"][3320874]["RewardEMoney"] = {}
	tLuckyDayAct_Reward["Pack"][3320874]["RewardEMoney"]["Value"] = 189 -- 天石
	tLuckyDayAct_Reward["Pack"][3320874]["EmoneyLog"] = "10000	293	-189	-189	1	"
	tLuckyDayAct_Reward["Pack"][3320874]["RewardEffect"] = {}
	tLuckyDayAct_Reward["Pack"][3320874]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tLuckyDayAct_Reward["Pack"][3320874]["RewardEffect"]["Effect"] = "angelwing"


	-- ===999天石礼包,3320875
	-- ===索引: 3320875
	-- ===删除: 3320875,1
	-- ===EMoneyLog: 10000,0294
	tLuckyDayAct_Reward["Pack"][3320875] = {}
	tLuckyDayAct_Reward["Pack"][3320875]["LogId"] = 12001345
	tLuckyDayAct_Reward["Pack"][3320875]["DeleteItem"] = {}
	tLuckyDayAct_Reward["Pack"][3320875]["DeleteItem"][1] = {}
	tLuckyDayAct_Reward["Pack"][3320875]["DeleteItem"][1]["Id"] = 3320875 -- 【库】999CPsPack[属性:8]
	tLuckyDayAct_Reward["Pack"][3320875]["RewardEMoney"] = {}
	tLuckyDayAct_Reward["Pack"][3320875]["RewardEMoney"]["Value"] = 999 -- 天石
	tLuckyDayAct_Reward["Pack"][3320875]["EmoneyLog"] = "10000	294	-999	-999	1	"
	tLuckyDayAct_Reward["Pack"][3320875]["RewardEffect"] = {}
	tLuckyDayAct_Reward["Pack"][3320875]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tLuckyDayAct_Reward["Pack"][3320875]["RewardEffect"]["Effect"] = "angelwing"


	-- ===49天石（赠）礼包,3320876
	-- ===索引: 3320876
	-- ===删除: 3320876,1
	-- ===EMoneyLog: 10000,0295
	tLuckyDayAct_Reward["Pack"][3320876] = {}
	tLuckyDayAct_Reward["Pack"][3320876]["LogId"] = 12001345
	tLuckyDayAct_Reward["Pack"][3320876]["DeleteItem"] = {}
	tLuckyDayAct_Reward["Pack"][3320876]["DeleteItem"][1] = {}
	tLuckyDayAct_Reward["Pack"][3320876]["DeleteItem"][1]["Id"] = 3320876 -- 【库】49CPsPack(B)[属性:9]
	tLuckyDayAct_Reward["Pack"][3320876]["RewardEMoneyMono"] = {}
	tLuckyDayAct_Reward["Pack"][3320876]["RewardEMoneyMono"]["Value"] = 49 -- 天石（赠）
	tLuckyDayAct_Reward["Pack"][3320876]["EmoneyLog"] = "10000	295	0	0	-49	"
	tLuckyDayAct_Reward["Pack"][3320876]["RewardEffect"] = {}
	tLuckyDayAct_Reward["Pack"][3320876]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tLuckyDayAct_Reward["Pack"][3320876]["RewardEffect"]["Effect"] = "angelwing"


	-- ===99天石（赠）礼包,3320877
	-- ===索引: 3320877
	-- ===删除: 3320877,1
	-- ===EMoneyLog: 10000,0296
	tLuckyDayAct_Reward["Pack"][3320877] = {}
	tLuckyDayAct_Reward["Pack"][3320877]["LogId"] = 12001345
	tLuckyDayAct_Reward["Pack"][3320877]["DeleteItem"] = {}
	tLuckyDayAct_Reward["Pack"][3320877]["DeleteItem"][1] = {}
	tLuckyDayAct_Reward["Pack"][3320877]["DeleteItem"][1]["Id"] = 3320877 -- 【库】99CPsPack(B)[属性:9]
	tLuckyDayAct_Reward["Pack"][3320877]["RewardEMoneyMono"] = {}
	tLuckyDayAct_Reward["Pack"][3320877]["RewardEMoneyMono"]["Value"] = 99 -- 天石（赠）
	tLuckyDayAct_Reward["Pack"][3320877]["EmoneyLog"] = "10000	296	0	0	-99	"
	tLuckyDayAct_Reward["Pack"][3320877]["RewardEffect"] = {}
	tLuckyDayAct_Reward["Pack"][3320877]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tLuckyDayAct_Reward["Pack"][3320877]["RewardEffect"]["Effect"] = "angelwing"


	-- ===109天石（赠）礼包,3320878
	-- ===索引: 3320878
	-- ===删除: 3320878,1
	-- ===EMoneyLog: 10000,0297
	tLuckyDayAct_Reward["Pack"][3320878] = {}
	tLuckyDayAct_Reward["Pack"][3320878]["LogId"] = 12001345
	tLuckyDayAct_Reward["Pack"][3320878]["DeleteItem"] = {}
	tLuckyDayAct_Reward["Pack"][3320878]["DeleteItem"][1] = {}
	tLuckyDayAct_Reward["Pack"][3320878]["DeleteItem"][1]["Id"] = 3320878 -- 【库】109CPsPack(B)[属性:9]
	tLuckyDayAct_Reward["Pack"][3320878]["RewardEMoneyMono"] = {}
	tLuckyDayAct_Reward["Pack"][3320878]["RewardEMoneyMono"]["Value"] = 109 -- 天石（赠）
	tLuckyDayAct_Reward["Pack"][3320878]["EmoneyLog"] = "10000	297	0	0	-109	"
	tLuckyDayAct_Reward["Pack"][3320878]["RewardEffect"] = {}
	tLuckyDayAct_Reward["Pack"][3320878]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tLuckyDayAct_Reward["Pack"][3320878]["RewardEffect"]["Effect"] = "angelwing"


	-- ===129天石（赠）礼包,3320879
	-- ===索引: 3320879
	-- ===删除: 3320879,1
	-- ===EMoneyLog: 10000,0298
	tLuckyDayAct_Reward["Pack"][3320879] = {}
	tLuckyDayAct_Reward["Pack"][3320879]["LogId"] = 12001345
	tLuckyDayAct_Reward["Pack"][3320879]["DeleteItem"] = {}
	tLuckyDayAct_Reward["Pack"][3320879]["DeleteItem"][1] = {}
	tLuckyDayAct_Reward["Pack"][3320879]["DeleteItem"][1]["Id"] = 3320879 -- 【库】129CPsPack(B)[属性:9]
	tLuckyDayAct_Reward["Pack"][3320879]["RewardEMoneyMono"] = {}
	tLuckyDayAct_Reward["Pack"][3320879]["RewardEMoneyMono"]["Value"] = 129 -- 天石（赠）
	tLuckyDayAct_Reward["Pack"][3320879]["EmoneyLog"] = "10000	298	0	0	-129	"
	tLuckyDayAct_Reward["Pack"][3320879]["RewardEffect"] = {}
	tLuckyDayAct_Reward["Pack"][3320879]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tLuckyDayAct_Reward["Pack"][3320879]["RewardEffect"]["Effect"] = "angelwing"


	-- ===139天石（赠）礼包,3320880
	-- ===索引: 3320880
	-- ===删除: 3320880,1
	-- ===EMoneyLog: 10000,0299
	tLuckyDayAct_Reward["Pack"][3320880] = {}
	tLuckyDayAct_Reward["Pack"][3320880]["LogId"] = 12001345
	tLuckyDayAct_Reward["Pack"][3320880]["DeleteItem"] = {}
	tLuckyDayAct_Reward["Pack"][3320880]["DeleteItem"][1] = {}
	tLuckyDayAct_Reward["Pack"][3320880]["DeleteItem"][1]["Id"] = 3320880 -- 【库】139CPsPack(B)[属性:9]
	tLuckyDayAct_Reward["Pack"][3320880]["RewardEMoneyMono"] = {}
	tLuckyDayAct_Reward["Pack"][3320880]["RewardEMoneyMono"]["Value"] = 139 -- 天石（赠）
	tLuckyDayAct_Reward["Pack"][3320880]["EmoneyLog"] = "10000	299	0	0	-139	"
	tLuckyDayAct_Reward["Pack"][3320880]["RewardEffect"] = {}
	tLuckyDayAct_Reward["Pack"][3320880]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tLuckyDayAct_Reward["Pack"][3320880]["RewardEffect"]["Effect"] = "angelwing"


	-- ===149天石（赠）礼包,3320881
	-- ===索引: 3320881
	-- ===删除: 3320881,1
	-- ===EMoneyLog: 10000,0300
	tLuckyDayAct_Reward["Pack"][3320881] = {}
	tLuckyDayAct_Reward["Pack"][3320881]["LogId"] = 12001345
	tLuckyDayAct_Reward["Pack"][3320881]["DeleteItem"] = {}
	tLuckyDayAct_Reward["Pack"][3320881]["DeleteItem"][1] = {}
	tLuckyDayAct_Reward["Pack"][3320881]["DeleteItem"][1]["Id"] = 3320881 -- 【库】149CPsPack(B)[属性:9]
	tLuckyDayAct_Reward["Pack"][3320881]["RewardEMoneyMono"] = {}
	tLuckyDayAct_Reward["Pack"][3320881]["RewardEMoneyMono"]["Value"] = 149 -- 天石（赠）
	tLuckyDayAct_Reward["Pack"][3320881]["EmoneyLog"] = "10000	300	0	0	-149	"
	tLuckyDayAct_Reward["Pack"][3320881]["RewardEffect"] = {}
	tLuckyDayAct_Reward["Pack"][3320881]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tLuckyDayAct_Reward["Pack"][3320881]["RewardEffect"]["Effect"] = "angelwing"


	-- ===189天石（赠）礼包,3320882
	-- ===索引: 3320882
	-- ===删除: 3320882,1
	-- ===EMoneyLog: 10000,0301
	tLuckyDayAct_Reward["Pack"][3320882] = {}
	tLuckyDayAct_Reward["Pack"][3320882]["LogId"] = 12001345
	tLuckyDayAct_Reward["Pack"][3320882]["DeleteItem"] = {}
	tLuckyDayAct_Reward["Pack"][3320882]["DeleteItem"][1] = {}
	tLuckyDayAct_Reward["Pack"][3320882]["DeleteItem"][1]["Id"] = 3320882 -- 【库】189CPsPack(B)[属性:9]
	tLuckyDayAct_Reward["Pack"][3320882]["RewardEMoneyMono"] = {}
	tLuckyDayAct_Reward["Pack"][3320882]["RewardEMoneyMono"]["Value"] = 189 -- 天石（赠）
	tLuckyDayAct_Reward["Pack"][3320882]["EmoneyLog"] = "10000	301	0	0	-189	"
	tLuckyDayAct_Reward["Pack"][3320882]["RewardEffect"] = {}
	tLuckyDayAct_Reward["Pack"][3320882]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tLuckyDayAct_Reward["Pack"][3320882]["RewardEffect"]["Effect"] = "angelwing"


	-- ===999天石（赠）礼包,3320883
	-- ===索引: 3320883
	-- ===删除: 3320883,1
	-- ===EMoneyLog: 10000,0302
	tLuckyDayAct_Reward["Pack"][3320883] = {}
	tLuckyDayAct_Reward["Pack"][3320883]["LogId"] = 12001345
	tLuckyDayAct_Reward["Pack"][3320883]["DeleteItem"] = {}
	tLuckyDayAct_Reward["Pack"][3320883]["DeleteItem"][1] = {}
	tLuckyDayAct_Reward["Pack"][3320883]["DeleteItem"][1]["Id"] = 3320883 -- 【库】999CPsPack(B)[属性:9]
	tLuckyDayAct_Reward["Pack"][3320883]["RewardEMoneyMono"] = {}
	tLuckyDayAct_Reward["Pack"][3320883]["RewardEMoneyMono"]["Value"] = 999 -- 天石（赠）
	tLuckyDayAct_Reward["Pack"][3320883]["EmoneyLog"] = "10000	302	0	0	-999	"
	tLuckyDayAct_Reward["Pack"][3320883]["RewardEffect"] = {}
	tLuckyDayAct_Reward["Pack"][3320883]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tLuckyDayAct_Reward["Pack"][3320883]["RewardEffect"]["Effect"] = "angelwing"


	-- ===500气力值礼包,3320884
	-- ===索引: 3320884
	-- ===删除: 3320884,1
	tLuckyDayAct_Reward["Pack"][3320884] = {}
	tLuckyDayAct_Reward["Pack"][3320884]["LogId"] = 12001345
	tLuckyDayAct_Reward["Pack"][3320884]["DeleteItem"] = {}
	tLuckyDayAct_Reward["Pack"][3320884]["DeleteItem"][1] = {}
	tLuckyDayAct_Reward["Pack"][3320884]["DeleteItem"][1]["Id"] = 3320884 -- 【库】500PointsChiPack[属性:9]
	tLuckyDayAct_Reward["Pack"][3320884]["RewardStrengthValue"] = {}
	tLuckyDayAct_Reward["Pack"][3320884]["RewardStrengthValue"]["Value"] = 500 -- 气力值
	tLuckyDayAct_Reward["Pack"][3320884]["RewardEffect"] = {}
	tLuckyDayAct_Reward["Pack"][3320884]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tLuckyDayAct_Reward["Pack"][3320884]["RewardEffect"]["Effect"] = "angelwing"


	-- ===1000气力值礼包,3320885
	-- ===索引: 3320885
	-- ===删除: 3320885,1
	tLuckyDayAct_Reward["Pack"][3320885] = {}
	tLuckyDayAct_Reward["Pack"][3320885]["LogId"] = 12001345
	tLuckyDayAct_Reward["Pack"][3320885]["DeleteItem"] = {}
	tLuckyDayAct_Reward["Pack"][3320885]["DeleteItem"][1] = {}
	tLuckyDayAct_Reward["Pack"][3320885]["DeleteItem"][1]["Id"] = 3320885 -- 【库】1000PointsChiPack[属性:9]
	tLuckyDayAct_Reward["Pack"][3320885]["RewardStrengthValue"] = {}
	tLuckyDayAct_Reward["Pack"][3320885]["RewardStrengthValue"]["Value"] = 1000 -- 气力值
	tLuckyDayAct_Reward["Pack"][3320885]["RewardEffect"] = {}
	tLuckyDayAct_Reward["Pack"][3320885]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tLuckyDayAct_Reward["Pack"][3320885]["RewardEffect"]["Effect"] = "angelwing"


	-- ===+3赤炼石赠礼包',3320886
	-- ===索引: 3320886
	-- ===删除: 3320886,1
	tLuckyDayAct_Reward["Pack"][3320886] = {}
	tLuckyDayAct_Reward["Pack"][3320886]["LogId"] = 12001345
	tLuckyDayAct_Reward["Pack"][3320886]["DeleteItem"] = {}
	tLuckyDayAct_Reward["Pack"][3320886]["DeleteItem"][1] = {}
	tLuckyDayAct_Reward["Pack"][3320886]["DeleteItem"][1]["Id"] = 3320886 -- 【库】+3Stone(B)Pack[属性:9]
	tLuckyDayAct_Reward["Pack"][3320886]["RewardItem"] = {}
	tLuckyDayAct_Reward["Pack"][3320886]["RewardItem"][1] = {}
	tLuckyDayAct_Reward["Pack"][3320886]["RewardItem"][1]["Id"] = 730003 -- 【库】+3Stone[属性:0]【表格】+3赤炼石赠'
	tLuckyDayAct_Reward["Pack"][3320886]["RewardItem"][1]["Attr"] = "0 1 3" -- +3Stone(赠)*1
	tLuckyDayAct_Reward["Pack"][3320886]["RewardEffect"] = {}
	tLuckyDayAct_Reward["Pack"][3320886]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tLuckyDayAct_Reward["Pack"][3320886]["RewardEffect"]["Effect"] = "angelwing"


	-- ===+4赤练石赠',3320887
	-- ===索引: 3320887
	-- ===删除: 3320887,1
	tLuckyDayAct_Reward["Pack"][3320887] = {}
	tLuckyDayAct_Reward["Pack"][3320887]["LogId"] = 12001345
	tLuckyDayAct_Reward["Pack"][3320887]["DeleteItem"] = {}
	tLuckyDayAct_Reward["Pack"][3320887]["DeleteItem"][1] = {}
	tLuckyDayAct_Reward["Pack"][3320887]["DeleteItem"][1]["Id"] = 3320887 -- 【库】+4Stone(B)Pack[属性:9]
	tLuckyDayAct_Reward["Pack"][3320887]["RewardItem"] = {}
	tLuckyDayAct_Reward["Pack"][3320887]["RewardItem"][1] = {}
	tLuckyDayAct_Reward["Pack"][3320887]["RewardItem"][1]["Id"] = 730004 -- 【库】+4Stone[属性:0]【表格】+4赤练石赠'
	tLuckyDayAct_Reward["Pack"][3320887]["RewardItem"][1]["Attr"] = "0 1 3" -- +4Stone(赠)*1
	tLuckyDayAct_Reward["Pack"][3320887]["RewardEffect"] = {}
	tLuckyDayAct_Reward["Pack"][3320887]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tLuckyDayAct_Reward["Pack"][3320887]["RewardEffect"]["Effect"] = "angelwing"


	-- ===龙珠赠礼包,3320888
	-- ===索引: 3320888
	-- ===删除: 3320888,1
	tLuckyDayAct_Reward["Pack"][3320888] = {}
	tLuckyDayAct_Reward["Pack"][3320888]["LogId"] = 12001345
	tLuckyDayAct_Reward["Pack"][3320888]["DeleteItem"] = {}
	tLuckyDayAct_Reward["Pack"][3320888]["DeleteItem"][1] = {}
	tLuckyDayAct_Reward["Pack"][3320888]["DeleteItem"][1]["Id"] = 3320888 -- 【库】DragonBallPack[属性:9]
	tLuckyDayAct_Reward["Pack"][3320888]["RewardItem"] = {}
	tLuckyDayAct_Reward["Pack"][3320888]["RewardItem"][1] = {}
	tLuckyDayAct_Reward["Pack"][3320888]["RewardItem"][1]["Id"] = 1088000 -- 【库】DragonBall[属性:0]【表格】龙珠赠
	tLuckyDayAct_Reward["Pack"][3320888]["RewardItem"][1]["Attr"] = "0 1 3" -- DragonBall(赠)*1
	tLuckyDayAct_Reward["Pack"][3320888]["RewardEffect"] = {}
	tLuckyDayAct_Reward["Pack"][3320888]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tLuckyDayAct_Reward["Pack"][3320888]["RewardEffect"]["Effect"] = "angelwing"


	-- ===小固化石赠礼包,3320889
	-- ===索引: 3320889
	-- ===删除: 3320889,1
	tLuckyDayAct_Reward["Pack"][3320889] = {}
	tLuckyDayAct_Reward["Pack"][3320889]["LogId"] = 12001345
	tLuckyDayAct_Reward["Pack"][3320889]["DeleteItem"] = {}
	tLuckyDayAct_Reward["Pack"][3320889]["DeleteItem"][1] = {}
	tLuckyDayAct_Reward["Pack"][3320889]["DeleteItem"][1]["Id"] = 3320889 -- 【库】PermanentStonePack[属性:9]
	tLuckyDayAct_Reward["Pack"][3320889]["RewardItem"] = {}
	tLuckyDayAct_Reward["Pack"][3320889]["RewardItem"][1] = {}
	tLuckyDayAct_Reward["Pack"][3320889]["RewardItem"][1]["Id"] = 723694 -- 【库】PermanentStone[属性:0]【表格】小固化石赠
	tLuckyDayAct_Reward["Pack"][3320889]["RewardItem"][1]["Attr"] = "0 1 3" -- PermanentStone(赠)*1
	tLuckyDayAct_Reward["Pack"][3320889]["RewardEffect"] = {}
	tLuckyDayAct_Reward["Pack"][3320889]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tLuckyDayAct_Reward["Pack"][3320889]["RewardEffect"]["Effect"] = "angelwing"


	-- ===+6赤练石赠',3320890
	-- ===索引: 3320890
	-- ===删除: 3320890,1
	tLuckyDayAct_Reward["Pack"][3320890] = {}
	tLuckyDayAct_Reward["Pack"][3320890]["LogId"] = 12001345
	tLuckyDayAct_Reward["Pack"][3320890]["DeleteItem"] = {}
	tLuckyDayAct_Reward["Pack"][3320890]["DeleteItem"][1] = {}
	tLuckyDayAct_Reward["Pack"][3320890]["DeleteItem"][1]["Id"] = 3320890 -- 【库】+6Stone(B)Pack[属性:9]
	tLuckyDayAct_Reward["Pack"][3320890]["RewardItem"] = {}
	tLuckyDayAct_Reward["Pack"][3320890]["RewardItem"][1] = {}
	tLuckyDayAct_Reward["Pack"][3320890]["RewardItem"][1]["Id"] = 730006 -- 【库】+6Stone[属性:0]【表格】+6赤练石赠'
	tLuckyDayAct_Reward["Pack"][3320890]["RewardItem"][1]["Attr"] = "0 1 3" -- +6Stone(赠)*1
	tLuckyDayAct_Reward["Pack"][3320890]["RewardEffect"] = {}
	tLuckyDayAct_Reward["Pack"][3320890]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tLuckyDayAct_Reward["Pack"][3320890]["RewardEffect"]["Effect"] = "angelwing"



----------------------------------------逻辑部分-------------------------------------
-- 获取当前期数·暂时仅考虑跨度一个月内的情况
function LuckyDayAct_GetPhase()
	-- 获取当前时间
	local tDate = os.date('*t')
	-- 获取活动开始时间
	local sTime = tActivityTime["LuckyDayAct"]["ActTime"]
	local nStartMonth = tonumber(string.sub(sTime,6,7))
	local nStartDay = tonumber(string.sub(sTime,9,10))
	
	-- 获取上个月总天数
	local tTemp = {}
	tTemp["year"] = tDate['year']
	tTemp["month"] = tDate['month']
	tTemp["day"] = 0
	local nMaxDay = os.date('%d',os.time(tTemp))
	
	-- 计算当前期数·暂时仅考虑跨度一个月内的情况
	local nPhase = (tDate['month'] - nStartMonth) * nMaxDay + tDate['day'] - nStartDay
	
	-- 8点后，期数加1
	if tDate['hour'] >= tActivityTime["LuckyDayAct"]["StartHour"] then
		nPhase = nPhase + 1
	end
	
	-- 第一天8点前算第一期
	if nPhase == 0 then
		nPhase = 1
	end
	
	return nPhase
end

-- 号码转换
function LuckyDayAct_NumTransform(nNumber)
	local nNum1 = math.floor(nNumber/1000)
	local nNum2 = math.floor((nNumber%1000)/100)
	local nNum3 = math.floor((nNumber%100)/10)
	local nNum4 = nNumber%10
	
	return nNum1,nNum2,nNum3,nNum4
end

-- 记录中奖玩家信息·仅最近10个
function LuckyDayAct_RecordLuckyManInfo()
	local nGlobalId = tLuckyDayAct_Cont["Global"]["Number"]
	-- 需要记录：中奖期数，中奖号码，中奖玩家名
	local nLuckyManNum = Get_SysDynaGlobalData(nGlobalId,0)
	local nLuckyManPhase = Get_SysDynaGlobalData(nGlobalId,1)
	local nLocation = Get_SysDynaGlobalData(nGlobalId,2)
	local sUserName = Get_UserName()
	
	-- 转换
	local nIndex = math.floor(nLocation/3) + 1
	local nRecordGlobalId = tLuckyDayAct_Cont["Global"]["LuckyMan"][nIndex]
	local nPos = (nLocation % 3) * 2
	
	-- 记录
	Sys_SetSynaGlobalData(nRecordGlobalId,nPos,nLuckyManNum)
	Sys_SetSynaGlobalData(nRecordGlobalId,nPos+1,nLuckyManPhase)
	Sys_SetSynaGlobalDataStr(nRecordGlobalId,nPos,sUserName)
	
	if nLocation + 1 > 9 then
		Sys_SetSynaGlobalData(nGlobalId,2,0)
	else
		Sys_SetSynaGlobalData(nGlobalId,2,nLocation+1)
	end
	
	return true
end

-- 获取往期中奖者信息
function LuckyDayAct_GetLuckyManInfo()
	local tLuckyMan = {}
	local nGlobal = tLuckyDayAct_Cont["Global"]["Number"]
	local nLocation = Get_SysDynaGlobalData(nGlobal,2)
	
	-- 取Global数据·排序（1->10代表最新->最早）
	for i=1, 10 do
		local nIndex = 10 - i + nLocation
		if nIndex >= 10 then
			nIndex = nIndex - 10
		end
		local nGlobalIndex = math.floor(nIndex/3) + 1
		local nGlobalId = tLuckyDayAct_Cont["Global"]["LuckyMan"][nGlobalIndex]
		local nPos = (nIndex % 3) * 2
		
		tLuckyMan[i] = {}
		tLuckyMan[i]["Number"] = Get_SysDynaGlobalData(nGlobalId,nPos)
		tLuckyMan[i]["Phase"] = Get_SysDynaGlobalData(nGlobalId,nPos+1)
		tLuckyMan[i]["Name"] = Get_SysDynaGlobalDataStr(nGlobalId,nPos)
	end
	
	return tLuckyMan
end

-- 判断玩家是否中奖
function LuckyDayAct_LuckyManChk()
	local nEvent_Phase = tLuckyDayAct_Stc["Phase"]["Event"]
	local nType_Phase = tLuckyDayAct_Stc["Phase"]["Type"]
	local nEvent_TicketNum = tLuckyDayAct_Stc["TicketNum"]["Event"]
	local nType_TicketNum = tLuckyDayAct_Stc["TicketNum"]["Type"]
	local nUserPhase = Get_UserStatisticValue(nEvent_Phase,nType_Phase)
	local nTicketNum = Get_UserStatisticValue(nEvent_TicketNum,nType_TicketNum)
	
	-- 异常·第一期或者玩家未参与上期
	local nNowPhase = LuckyDayAct_GetPhase()
	if (nUserPhase ~= nNowPhase - 1) or nNowPhase == 1 then
		return false
	end
	
	-- 时间自检存在误差，检测Global记录的期数与领奖玩家参与期数是否匹配，避免8点未刷新本期中奖号码
	local nGlobalId = tLuckyDayAct_Cont["Global"]["Number"]
	local nLuckyManPhase = Get_SysDynaGlobalData(nGlobalId,1)
	if nLuckyManPhase ~= nUserPhase then
		return false
	end
	
	-- 非中奖玩家
	local nLuckyManNum = Get_SysDynaGlobalData(nGlobalId,0)
	if nTicketNum ~= nLuckyManNum then
		return false
	end
	
	return true
end

-- 领券
function LuckyDayAct_GetTicket(nNpcId)
	-- 不在活动时间
	if not Sys_ChkFullTime(tActivityTime["LuckyDayAct"]["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return false
	end
	
	local nEvent_Phase = tLuckyDayAct_Stc["Phase"]["Event"]
	local nType_Phase = tLuckyDayAct_Stc["Phase"]["Type"]
	local nUserPhase = Get_UserStatisticValue(nEvent_Phase,nType_Phase)
	
	-- 最后一期只能领奖不能再领取奖券
	if Sys_ChkFullTime(tActivityTime["LuckyDayAct"]["LastDay"]) then
		return false
	end
	
	-- 已领取
	local nNowPhase = LuckyDayAct_GetPhase()
	if nUserPhase == nNowPhase then
		Sys_MsgBox(tLuckyDayAct_Text[105]["GetTicket"]["Repetition"])
		return false
	end
	
	-- 背包中已有奖券则不可重复领取
	local nItemId = tLuckyDayAct_Cont["Item"]["TicketId"]
	if Item_ChkMulItem(nItemId,nItemId,1) then
		Sys_MsgBox(tLuckyDayAct_Text[105]["GetTicket"]["AlreadyHave"])
		return false
	end
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tLuckyDayAct_Reward["GetTicket"])
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(tLuckyDayAct_Text[105]["GetTicket"]["FullBag"])
		return false
	end
	
	-- 掩码置为已领取状态·即记录现在处于第几期
	Task_SetStatistic(nEvent_Phase,nType_Phase,nNowPhase,1)
	Task_SetStcTimestamp(nEvent_Phase,nType_Phase,0)
	
	-- 记录随机号码
	local nEvent_TicketNum = tLuckyDayAct_Stc["TicketNum"]["Event"]
	local nType_TicketNum = tLuckyDayAct_Stc["TicketNum"]["Type"]
	local nTicketNum = math.random(1,9999)
	Task_SetStatistic(nEvent_TicketNum,nType_TicketNum,nTicketNum,1)
	Task_SetStcTimestamp(nEvent_TicketNum,nType_TicketNum,0)
	
	-- 给奖券
	RewardTemplate_UseItemAndMsg(tLuckyDayAct_Reward["GetTicket"])
	Sys_MsgBox(tLuckyDayAct_Text[105]["GetTicket"]["Success"])
	User_TalkChannel2005(tLuckyDayAct_Text[2005]["GetTicketSuccess"])
	
	return true
end

-- 领大奖
function LuckyDayAct_GetReward(nNpcId)
	-- 不在活动时间
	if not Sys_ChkFullTime(tActivityTime["LuckyDayAct"]["ActTime"]) then
		Sys_MsgBox(tLuckyDayAct_Text[105]["GetReward"]["OutTime"])
		return false
	end
	
	-- 无奖券
	local nItemId = tLuckyDayAct_Cont["Item"]["TicketId"]
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		Sys_MsgBox(tLuckyDayAct_Text[105]["GetReward"]["NoTicket"])
		return false
	end
	
	-- 异常·未中奖
	if not LuckyDayAct_LuckyManChk() then
		return false
	end
	
	local nEvent_Phase = tLuckyDayAct_Stc["Phase"]["Event"]
	local nType_Phase = tLuckyDayAct_Stc["Phase"]["Type"]
	local nUserPhase = Get_UserStatisticValue(nEvent_Phase,nType_Phase)
	tNpcGossip[nNpcId]["Text211"] = string.format(tLuckyDayAct_Text[nNpcId]["Text211"],nUserPhase)
	
	LinkNpcGossipFunc_New(nNpcId,"2-1")
	return true
end

-- 确认领奖
function LuckyDayAct_GetRewardConfirm(nNpcId)
	-- 不在活动时间
	if not Sys_ChkFullTime(tActivityTime["LuckyDayAct"]["ActTime"]) then
		Sys_MsgBox(tLuckyDayAct_Text[105]["GetReward"]["OutTime"])
		return false
	end
	
	-- 无奖券
	local nItemId = tLuckyDayAct_Cont["Item"]["TicketId"]
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		Sys_MsgBox(tLuckyDayAct_Text[105]["GetReward"]["NoTicket"])
		return false
	end
	
	-- 异常·未中奖
	if not LuckyDayAct_LuckyManChk() then
		return false
	end
	
	-- 天石达上限
	local nEmoney = Get_UserEMoney()
	local nAddEmoney = tLuckyDayAct_Reward["GetReward"]["RewardEMoney"]["Value"]
	if nEmoney + nAddEmoney > G_User_MaxEmoney then
		Sys_MsgBox(tLuckyDayAct_Text[105]["GetReward"]["FullEmoney"])
		User_TalkChannel2005(tLuckyDayAct_Text[105]["GetReward"]["FullEmoney"])
		return false
	end
	
	-- 赠点达上限
	local nEmoneyMono = Get_UserMonoEMoney()
	local nAddEmoneyMono = tLuckyDayAct_Reward["GetReward"]["RewardEMoneyMono"]["Value"]
	if nEmoneyMono + nAddEmoneyMono > G_User_MaxEmoneyMono then
		Sys_MsgBox(tLuckyDayAct_Text[105]["GetReward"]["FullEmoneyMono"])
		User_TalkChannel2005(tLuckyDayAct_Text[105]["GetReward"]["FullEmoneyMono"])
		return false
	end
	
	-- 金币达上限
	local nMoney = tLuckyDayAct_Reward["GetReward"]["RewardMoney"]["Value"]
	if not User_CanPutMoney2Bag(nMoney) then
		Sys_MsgBox(tLuckyDayAct_Text[105]["GetReward"]["Fullmoney"])
		User_TalkChannel2005(tLuckyDayAct_Text[105]["GetReward"]["Fullmoney"])
		return false
	end
	
	-- 号码置0
	local nEvent_TicketNum = tLuckyDayAct_Stc["TicketNum"]["Event"]
	local nType_TicketNum = tLuckyDayAct_Stc["TicketNum"]["Type"]
	Task_SetStatistic(nEvent_TicketNum,nType_TicketNum,0,1)
	Task_SetStcTimestamp(nEvent_TicketNum,nType_TicketNum,0)
	
	RewardTemplate_UseItemAndMsg(tLuckyDayAct_Reward["GetReward"])
	
	-- 记录中奖玩家信息
	LuckyDayAct_RecordLuckyManInfo()
	
	return true
end

-- 查看每日幸运儿
function LuckyDayAct_ShowLuckyMan(nNpcId)
	-- 不在活动时间
	if not Sys_ChkFullTime(tActivityTime["LuckyDayAct"]["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return false
	end
	
	-- 无中奖者
	local tLuckyMan = LuckyDayAct_GetLuckyManInfo()
	if tLuckyMan[1]["Number"] == 0 then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return false
	end
	
	-- 显示往期中奖者
	local tText = {221,222,223}
	for i=1, 10 do
		if tLuckyMan[i]["Number"] ~= 0 then
			if i <= 6 then
				tText[#tText + 1] = 223 + i
			else
				tText[#tText + 1] = 2203 + i
			end
			
			local nNum1,nNum2,nNum3,nNum4 = LuckyDayAct_NumTransform(tLuckyMan[i]["Number"])
			tNpcGossip[nNpcId]["Text22" .. 3+i] = string.format(tLuckyDayAct_Text[nNpcId]["Text22" .. 3+i],tLuckyMan[i]["Phase"],nNum1,nNum2,nNum3,nNum4,tLuckyMan[i]["Name"])
		end
	end
	
	tText[#tText + 1] = 2214
	tNpcGossip[nNpcId]["Text2-2"] = tText
	
	LinkNpcGossipFunc_New(nNpcId,"2-2")
	return true
end

-- 每日8点随机中奖号码
function LuckyDayAct_ResetLuckyManNum()
	-- 不在活动时间
	if not Sys_ChkFullTime(tActivityTime["LuckyDayAct"]["ActTime"]) then
		return false
	end
	
	-- 第一期领券期间不随机
	local nNowPhase = LuckyDayAct_GetPhase()
	if nNowPhase == 1 then
		return false
	end
	
	-- 已随机
	local nGlobalId = tLuckyDayAct_Cont["Global"]["Number"]
	local nLuckyManPhase = Get_SysDynaGlobalData(nGlobalId,1)
	if nNowPhase-1 == nLuckyManPhase then
		return false
	end
	
	local nLuckyManNum = math.random(1,9999)
	Sys_SetSynaGlobalData(nGlobalId,0,nLuckyManNum)
	Sys_SetSynaGlobalData(nGlobalId,1,nNowPhase-1)
	
	return true
end

-- 超链接寻路
function LuckyDayAct_HyperLink(nNpcId)
	-- 不在活动时间
	if not Sys_ChkFullTime(tActivityTime["LuckyDayAct"]["ActTime"]) then
		return false
	end
	
	local nNowMapId = Get_UserMapId()
	local nMapId = tLuckyDayAct_Cont["Map"]["TwinCity"]
	
	-- 不在双龙城出提示
	if nMapId ~= nNowMapId then
		User_TalkChannel2005(tLuckyDayAct_Text[2005]["NotInTwinCity"])
		return false
	end
	
	NpcPosition_PathFind(nNpcId)
	return true
end



----------------------------------------模板部分-------------------------------------
-------------------------------NPC模板
-- 招财猫 24048
tNpcFace[6521] = 1857
tNpcGossip[24048] = tNpcGossip[24048] or DefaultNpc:new{}
tNpcGossip[24048]["OptionHidden"] = 1
tNpcGossip[24048]["DialogueText"] = tLuckyDayAct_Text[24048]

-- 活动前
tNpcGossip[24048]["Text1-1"] = {111,112,113,114}
tNpcGossip[24048]["tOption1-1"] = {111}
tNpcGossip[24048]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["LuckyDayAct"]["ActTime"])
end

-- 活动后
tNpcGossip[24048]["Text1-2"] = {121}
tNpcGossip[24048]["tOption1-2"] = {121}
tNpcGossip[24048]["ChkFunc1-2"] = function ()
	return CommonFunc_GetAfterActivityTime(tActivityTime["LuckyDayAct"]["ActTime"])
end

-- 活动中
tNpcGossip[24048]["Text1-3"] = {131,132,133,134,135,136,137,138}
tNpcGossip[24048]["tOption1-3"] = {131,132,133}
tNpcGossip[24048]["ChkFunc1-3"] = function ()
	-- 获取当前期数
	local nGlobalId = tLuckyDayAct_Cont["Global"]["Number"]
	local nLuckyManNum = Get_SysDynaGlobalData(nGlobalId,0)
	local nPhase = Get_SysDynaGlobalData(nGlobalId,1)
	
	-- 第一期领券期间不显示中奖号码 亦或是 8点时间自检卡顿导致未随机号码
	if nPhase == 1 or nLuckyManNum == 0 then
		tNpcGossip[24048]["Text1-3"] = {131,132,136,137,138}
	else
		tNpcGossip[24048]["Text1-3"] = {131,132,133,134,135,136,137,138}
		tNpcGossip[24048]["Text133"] = string.format(tLuckyDayAct_Text[24048]["Text133"],nPhase)
		
		local nNum1,nNum2,nNum3,nNum4 = LuckyDayAct_NumTransform(nLuckyManNum)
		tNpcGossip[24048]["Text134"] = string.format(tLuckyDayAct_Text[24048]["Text134"],nNum1,nNum2,nNum3,nNum4)
	end
	
	return Sys_ChkFullTime(tActivityTime["LuckyDayAct"]["ActTime"])
end

-- 领取每日奖券选项
tNpcGossip[24048]["OptionChkFunc131"] = function ()
	local nEvent_Phase = tLuckyDayAct_Stc["Phase"]["Event"]
	local nType_Phase = tLuckyDayAct_Stc["Phase"]["Type"]
	local nUserPhase = Get_UserStatisticValue(nEvent_Phase,nType_Phase)
	
	-- 最后一期只能领奖不能再领取奖券
	if Sys_ChkFullTime(tActivityTime["LuckyDayAct"]["LastDay"]) then
		return false
	end
	
	-- 判断玩家是否已领取
	local nNowPhase = LuckyDayAct_GetPhase()
	if nUserPhase == nNowPhase then
		return false
	else
		return true
	end
end

-- 领取幸运大奖选项
tNpcGossip[24048]["OptionChkFunc132"] = function ()
	return LuckyDayAct_LuckyManChk()
end

tNpcGossip[24048]["OptionFunc131"] = "LuckyDayAct_GetTicket</N>24048" 
tNpcGossip[24048]["OptionFunc132"] = "LuckyDayAct_GetReward</N>24048" 
tNpcGossip[24048]["OptionFunc133"] = "LuckyDayAct_ShowLuckyMan</N>24048" 


-- 领取幸运大奖
tNpcGossip[24048]["Text2-1"] = {211}
tNpcGossip[24048]["tOption2-1"] = {211}

tNpcGossip[24048]["OptionFunc211"] = "LuckyDayAct_GetRewardConfirm</N>24048" 

-- 查看每日幸运儿·有获奖者
tNpcGossip[24048]["Text2-2"] = {221,222,223,224,225,226,227,228,229,2210,2211,2212,2213,2214}
tNpcGossip[24048]["tOption2-2"] = {221}

-- 查看每日幸运儿·无获奖者
tNpcGossip[24048]["Text2-3"] = {231,232,233,234}
tNpcGossip[24048]["tOption2-3"] = {231}




-------------------------------物品模板
-- 幸运奖券
tItem[3320773] = tItem[3320773] or {}
tItem[3320773]["Function"] = function(nItemId,sItemName)
	local nEvent_Phase = tLuckyDayAct_Stc["Phase"]["Event"]
	local nType_Phase = tLuckyDayAct_Stc["Phase"]["Type"]
	local nEvent_TicketNum = tLuckyDayAct_Stc["TicketNum"]["Event"]
	local nType_TicketNum = tLuckyDayAct_Stc["TicketNum"]["Type"]
	local nUserPhase = Get_UserStatisticValue(nEvent_Phase,nType_Phase)
	local nUserTicketNum = Get_UserStatisticValue(nEvent_TicketNum,nType_TicketNum)
	local nNum1,nNum2,nNum3,nNum4 = LuckyDayAct_NumTransform(nUserTicketNum)
	
	-- 过期
	local nNowPhase = LuckyDayAct_GetPhase()
	if nNowPhase >= nUserPhase + 2 then
		Item_DelMulItem(nItemId,nItemId,1,1)
		Sys_MsgBox(tLuckyDayAct_Text[105]["UseTicket"]["OutTime"])
		return false
	end
	
	local sMsg = string.format(tLuckyDayAct_Text[105]["UseTicket"]["ShowNumber"],nUserPhase,nNum1,nNum2,nNum3,nNum4)
	Sys_MsgBox(sMsg,"NpcPosition_PathFind</N>24048")
	return true
end

-- 3320868,'49CPsPack'
-- 3320869,'99CPsPack'
-- 3320870,'109CPsPack'
-- 3320871,'129CPsPack'
-- 3320872,'139CPsPack'
-- 3320873,'149CPsPack'
-- 3320874,'189CPsPack'
-- 3320875,'999CPsPack'
-- 3320876,'49CPsPack(B)'
-- 3320877,'99CPsPack(B)'
-- 3320878,'109CPsPack(B)'
-- 3320879,'129CPsPack(B)'
-- 3320880,'139CPsPack(B)'
-- 3320881,'149CPsPack(B)'
-- 3320882,'189CPsPack(B)'
-- 3320883,'999CPsPack(B)'
-- 3320884,'500PointsChiPack'
-- 3320885,'1000PointsChiPack
-- 3320886,'+3Stone(B)Pack'
-- 3320887,'+4Stone(B)Pack'
-- 3320888,'DragonBallPack'
-- 3320889,'PermanentStonePack'
-- 3320890,'+6Stone(B)Pack'
tItem[3320868] = tItem[3320868] or {}
tItem[3320869] = tItem[3320868] or {}
tItem[3320870] = tItem[3320868] or {}
tItem[3320871] = tItem[3320868] or {}
tItem[3320872] = tItem[3320868] or {}
tItem[3320873] = tItem[3320868] or {}
tItem[3320874] = tItem[3320868] or {}
tItem[3320875] = tItem[3320868] or {}
tItem[3320876] = tItem[3320868] or {}
tItem[3320877] = tItem[3320868] or {}
tItem[3320878] = tItem[3320868] or {}
tItem[3320879] = tItem[3320868] or {}
tItem[3320880] = tItem[3320868] or {}
tItem[3320881] = tItem[3320868] or {}
tItem[3320882] = tItem[3320868] or {}
tItem[3320883] = tItem[3320868] or {}
tItem[3320884] = tItem[3320868] or {}
tItem[3320885] = tItem[3320868] or {}
tItem[3320886] = tItem[3320868] or {}
tItem[3320887] = tItem[3320868] or {}
tItem[3320888] = tItem[3320868] or {}
tItem[3320889] = tItem[3320868] or {}
tItem[3320890] = tItem[3320868] or {}
tItem[3320868]["Function"] = function(nItemId,sItemName)
	local nUserId = Get_UserId()
	local bJudge = TermsOfUse_Main(nItemId,tLuckyDayAct_Reward["Pack"][nItemId])
	
	if not bJudge then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tLuckyDayAct_Reward["Pack"][nItemId],nUserId,bJudge)
end


------------------------------时间自检
local tLuckyDayAct_OnTime = {}
	-- 每天8点刷新
	tLuckyDayAct_OnTime[1] = {}
	tLuckyDayAct_OnTime[1]["Type"] = 2
	tLuckyDayAct_OnTime[1]["TimeType"] = 4
	tLuckyDayAct_OnTime[1]["Multiple"] = {}
	tLuckyDayAct_OnTime[1]["Multiple"][1]  = "08:00 08:03"
	tLuckyDayAct_OnTime[1]["Func"] = LuckyDayAct_ResetLuckyManNum
	
	table.insert(tSystemTime_InitialData,tLuckyDayAct_OnTime[1])
	
	