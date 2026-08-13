------------------------------------------------------------------------------------
--Name：        191014[英文征服][活动脚本]累计消费有礼活动（11.21-12.11）
--Creator:      茅志伟
--Created:      2019/10/14
------------------------------------------------------------------------------------
-- 命名前缀 tCumulativeConsumptionReward_

-- lua.ini = 41563
-- 41563 = V100\ActiveScript\[Conquer][ActiveScript]CumulativeConsumptionReward.lua
-- 41563 = V100\活动脚本\[征服][活动脚本]累计消费有礼活动（11.21-12.11）.lua

-- LogId = 12001687

-- Stc 掩码
-- 207,75 记录礼包中获得的纪念币数量

-- Global 

-- 53797 data0 记录排行榜第1 位的信息
-- 53797 data2 记录排行榜第2 位的信息
-- 53797 data4 记录排行榜第3 位的信息
-- 53798 data0 记录排行榜第4 位的信息
-- 53798 data2 记录排行榜第5 位的信息
-- 53798 data4 记录排行榜第6 位的信息
-- 53799 data0 记录排行榜第7 位的信息
-- 53799 data2 记录排行榜第8 位的信息
-- 53799 data4 记录排行榜第9 位的信息
-- 53800 data0 记录排行榜第10位的信息
-- 53800 data2 记录排行榜第11位的信息
-- 53800 data4 记录排行榜第12位的信息
-- 53823 data0 记录排行榜第13位的信息
-- 53823 data5 记录排行榜邮件是否发放

local tCumulativeConsumptionReward_Pack = {}
	-- ===+5赤炼石（赠）礼盒
	-- ===索引:tCumulativeConsumptionReward_Pack[3326548]
	-- ===删除:3326548,1
	-- ===EMoneyLog: 350,22688
	-- ===
	tCumulativeConsumptionReward_Pack[3326548] = {}
	tCumulativeConsumptionReward_Pack[3326548]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326548]["EmoneyLog"] = "350	22688	0	0	1	"
	tCumulativeConsumptionReward_Pack[3326548]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326548]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326548]["DeleteItem"][1]["Id"] = 3326548 -- 【库】+5赤炼石（赠）礼盒[属性:9]
	tCumulativeConsumptionReward_Pack[3326548]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326548]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326548]["RewardItem"][1]["Id"] = 730005 -- +5Stone[730005][属性:0][叠加:0][金币:0], 【表格】‘+5赤练石*1（赠）
	tCumulativeConsumptionReward_Pack[3326548]["RewardItem"][1]["Attr"] = "0 1 3" -- +5Stone（赠）*1
	tCumulativeConsumptionReward_Pack[3326548]["RewardItem"][2] = {}
	tCumulativeConsumptionReward_Pack[3326548]["RewardItem"][2]["Id"] = 3326547 -- 熊猫纪念币[3326547][属性:9][叠加:0][金币:0], 【表格】熊猫纪念币*81（赠）
	tCumulativeConsumptionReward_Pack[3326548]["RewardItem"][2]["Attr"] = "0 81" -- 熊猫纪念币*81（[错误]物品数量超10个）
	tCumulativeConsumptionReward_Pack[3326548]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326548]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326548]["RewardEffect"]["Effect"] = "angelwing"


	tCumulativeConsumptionReward_Pack[3326549] = {}
	-- ===+5骏马（赠）礼盒
	-- ===索引:tCumulativeConsumptionReward_Pack[3326549]
	-- ===删除:3326549,1
	-- ===EMoneyLog: 350,22689
	-- ===
	tCumulativeConsumptionReward_Pack[3326549]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326549]["EmoneyLog"] = "350	22689	0	0	1	"
	tCumulativeConsumptionReward_Pack[3326549]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326549]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326549]["DeleteItem"][1]["Id"] = 3326549 -- 【库】+5骏马（赠）礼盒[属性:9]
	tCumulativeConsumptionReward_Pack[3326549]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326549]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326549]["RewardItem"][1]["Id"] = 3308597 -- +5Steed(B)Box[3308597][属性:9][叠加:0][金币:0], 【表格】+5骏马（赠）
	tCumulativeConsumptionReward_Pack[3326549]["RewardItem"][1]["Attr"] = "0 1" -- +5Steed(B)Box*1
	tCumulativeConsumptionReward_Pack[3326549]["RewardItem"][2] = {}
	tCumulativeConsumptionReward_Pack[3326549]["RewardItem"][2]["Id"] = 3326547 -- 熊猫纪念币[3326547][属性:9][叠加:0][金币:0], 【表格】熊猫纪念币*81（赠）
	tCumulativeConsumptionReward_Pack[3326549]["RewardItem"][2]["Attr"] = "0 81" -- 熊猫纪念币*81（[错误]物品数量超10个）
	tCumulativeConsumptionReward_Pack[3326549]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326549]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326549]["RewardEffect"]["Effect"] = "angelwing"


	tCumulativeConsumptionReward_Pack[3326550] = {}
	-- ===晶莹星陨石礼盒
	-- ===索引:tCumulativeConsumptionReward_Pack[3326550]
	-- ===删除:3326550,1
	-- ===EMoneyLog: 350,22690
	-- ===
	tCumulativeConsumptionReward_Pack[3326550]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326550]["EmoneyLog"] = "350	22690	0	0	1	"
	tCumulativeConsumptionReward_Pack[3326550]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326550]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326550]["DeleteItem"][1]["Id"] = 3326550 -- 【库】晶莹星陨石礼盒[属性:9]
	tCumulativeConsumptionReward_Pack[3326550]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326550]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326550]["RewardItem"][1]["Id"] = 3009002 -- RadiantStarStone[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石*1
	tCumulativeConsumptionReward_Pack[3326550]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的RadiantStarStone*1
	tCumulativeConsumptionReward_Pack[3326550]["RewardItem"][2] = {}
	tCumulativeConsumptionReward_Pack[3326550]["RewardItem"][2]["Id"] = 3326547 -- 熊猫纪念币[3326547][属性:9][叠加:0][金币:0], 【表格】熊猫纪念币*144（赠）
	tCumulativeConsumptionReward_Pack[3326550]["RewardItem"][2]["Attr"] = "0 144" -- 熊猫纪念币*144（[错误]物品数量超10个）
	tCumulativeConsumptionReward_Pack[3326550]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326550]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326550]["RewardEffect"]["Effect"] = "angelwing"


	tCumulativeConsumptionReward_Pack[3326551] = {}
	-- ===固化石（赠）礼盒
	-- ===索引:tCumulativeConsumptionReward_Pack[3326551]
	-- ===删除:3326551,1
	-- ===EMoneyLog: 350,22691
	-- ===
	tCumulativeConsumptionReward_Pack[3326551]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326551]["EmoneyLog"] = "350	22691	0	0	1	"
	tCumulativeConsumptionReward_Pack[3326551]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326551]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326551]["DeleteItem"][1]["Id"] = 3326551 -- 【库】固化石（赠）礼盒[属性:9]
	tCumulativeConsumptionReward_Pack[3326551]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326551]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326551]["RewardItem"][1]["Id"] = 723694 -- PermanentStone[723694][属性:0][叠加:0][金币:0], 【表格】固化石*1（赠）
	tCumulativeConsumptionReward_Pack[3326551]["RewardItem"][1]["Attr"] = "0 1 3" -- PermanentStone（赠）*1
	tCumulativeConsumptionReward_Pack[3326551]["RewardItem"][2] = {}
	tCumulativeConsumptionReward_Pack[3326551]["RewardItem"][2]["Id"] = 3326547 -- 熊猫纪念币[3326547][属性:9][叠加:0][金币:0], 【表格】熊猫纪念币*36（赠）
	tCumulativeConsumptionReward_Pack[3326551]["RewardItem"][2]["Attr"] = "0 36" -- 熊猫纪念币*36（[错误]物品数量超10个）
	tCumulativeConsumptionReward_Pack[3326551]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326551]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326551]["RewardEffect"]["Effect"] = "angelwing"


	tCumulativeConsumptionReward_Pack[3326552] = {}
	-- ===9块桃源灵玉（赠）礼盒
	-- ===索引:tCumulativeConsumptionReward_Pack[3326552]
	-- ===删除:3326552,1
	-- ===EMoneyLog: 350,22692
	tCumulativeConsumptionReward_Pack[3326552]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326552]["EmoneyLog"] = "350	22692	0	0	1	"
	tCumulativeConsumptionReward_Pack[3326552]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326552]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326552]["DeleteItem"][1]["Id"] = 3326552 -- 【库】9块桃源灵玉（赠）礼盒[属性:9]
	tCumulativeConsumptionReward_Pack[3326552]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326552]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326552]["RewardItem"][1]["Id"] = 711504 -- SmallLotteryTicket[711504][属性:9][叠加:10000][金币:0], 【表格】桃源灵玉*9（赠）
	tCumulativeConsumptionReward_Pack[3326552]["RewardItem"][1]["Attr"] = "0 9" -- SmallLotteryTicket*9
	tCumulativeConsumptionReward_Pack[3326552]["RewardItem"][2] = {}
	tCumulativeConsumptionReward_Pack[3326552]["RewardItem"][2]["Id"] = 3326547 -- 熊猫纪念币[3326547][属性:9][叠加:0][金币:0], 【表格】熊猫纪念币*35（赠）
	tCumulativeConsumptionReward_Pack[3326552]["RewardItem"][2]["Attr"] = "0 35" -- 熊猫纪念币*35（[错误]物品数量超10个）
	tCumulativeConsumptionReward_Pack[3326552]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326552]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326552]["RewardEffect"]["Effect"] = "angelwing"


	tCumulativeConsumptionReward_Pack[3326553] = {}
	-- ===龙珠（赠）礼盒
	-- ===索引:tCumulativeConsumptionReward_Pack[3326553]
	-- ===删除:3326553,1
	-- ===EMoneyLog: 350,22693
	-- ===
	tCumulativeConsumptionReward_Pack[3326553]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326553]["EmoneyLog"] = "350	22693	0	0	1	"
	tCumulativeConsumptionReward_Pack[3326553]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326553]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326553]["DeleteItem"][1]["Id"] = 3326553 -- 【库】龙珠（赠）礼盒[属性:9]
	tCumulativeConsumptionReward_Pack[3326553]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326553]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326553]["RewardItem"][1]["Id"] = 1088000 -- DragonBall[1088000][属性:0][叠加:0][金币:10000], 【表格】龙珠*1（赠）
	tCumulativeConsumptionReward_Pack[3326553]["RewardItem"][1]["Attr"] = "0 1 3" -- DragonBall（赠）*1
	tCumulativeConsumptionReward_Pack[3326553]["RewardItem"][2] = {}
	tCumulativeConsumptionReward_Pack[3326553]["RewardItem"][2]["Id"] = 3326547 -- 熊猫纪念币[3326547][属性:9][叠加:0][金币:0], 【表格】熊猫纪念币*9（赠）
	tCumulativeConsumptionReward_Pack[3326553]["RewardItem"][2]["Attr"] = "0 9" -- 熊猫纪念币*9
	tCumulativeConsumptionReward_Pack[3326553]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326553]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326553]["RewardEffect"]["Effect"] = "angelwing"


	tCumulativeConsumptionReward_Pack[3326554] = {}
	-- ===免试金牌（赠）礼盒
	-- ===索引:tCumulativeConsumptionReward_Pack[3326554]
	-- ===删除:3326554,1
	-- ===EMoneyLog: 350,22694
	-- ===
	tCumulativeConsumptionReward_Pack[3326554]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326554]["EmoneyLog"] = "350	22694	0	0	1	"
	tCumulativeConsumptionReward_Pack[3326554]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326554]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326554]["DeleteItem"][1]["Id"] = 3326554 -- 【库】免试金牌（赠）礼盒[属性:9]
	tCumulativeConsumptionReward_Pack[3326554]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326554]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326554]["RewardItem"][1]["Id"] = 723701 -- ExemptionToken[723701][属性:0][叠加:0][金币:0], 【表格】免试金牌*1（赠）
	tCumulativeConsumptionReward_Pack[3326554]["RewardItem"][1]["Attr"] = "0 1 3" -- ExemptionToken（赠）*1
	tCumulativeConsumptionReward_Pack[3326554]["RewardItem"][2] = {}
	tCumulativeConsumptionReward_Pack[3326554]["RewardItem"][2]["Id"] = 3326547 -- 熊猫纪念币[3326547][属性:9][叠加:0][金币:0], 【表格】熊猫纪念币*315（赠）
	tCumulativeConsumptionReward_Pack[3326554]["RewardItem"][2]["Attr"] = "0 315" -- 熊猫纪念币*315（[错误]物品数量超10个）
	tCumulativeConsumptionReward_Pack[3326554]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326554]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326554]["RewardEffect"]["Effect"] = "angelwing"


	tCumulativeConsumptionReward_Pack[3326555] = {}
	-- ===1天时效+9黄色神纹（赠）礼盒
	-- ===索引: tCumulativeConsumptionReward_Pack[3326555]
	-- ===删除:3326555,1
	-- ===
	tCumulativeConsumptionReward_Pack[3326555]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tCumulativeConsumptionReward_Pack[3326555]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326555]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326555]["DeleteItem"][1]["Id"] = 3326555 -- 【库】1天时效+9黄色神纹（赠）礼盒[属性:9]
	tCumulativeConsumptionReward_Pack[3326555]["LogId"] = 12001687
	-- 熊猫纪念币*10（赠）-- 【必给】
	tCumulativeConsumptionReward_Pack[3326555][1] = {}
	tCumulativeConsumptionReward_Pack[3326555][1]["RandomItemChanceType"] = 1
	tCumulativeConsumptionReward_Pack[3326555][1]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326555][1]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326555][1]["RewardItem"][1]["Id"] = 3326547 -- 熊猫纪念币[3326547][属性:9][叠加:0][金币:0], 【表格】熊猫纪念币*10（赠）
	tCumulativeConsumptionReward_Pack[3326555][1]["RewardItem"][1]["Attr"] = "0 10" -- 熊猫纪念币*10
	tCumulativeConsumptionReward_Pack[3326555][1]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326555][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326555][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 夺魂*1（赠） - 2%
	tCumulativeConsumptionReward_Pack[3326555][2] = {}
	tCumulativeConsumptionReward_Pack[3326555][2]["RandomItemChanceType"] = 2
	tCumulativeConsumptionReward_Pack[3326555][2]["ItemChance"] = 200
	tCumulativeConsumptionReward_Pack[3326555][2]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326555][2]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326555][2]["RewardItem"][1]["Id"] = 4031309 -- Witchery(+9)[4031309][属性:8][叠加:0][金币:0], 【表格】夺魂*1（赠）
	tCumulativeConsumptionReward_Pack[3326555][2]["RewardItem"][1]["Attr"] = "0 1 3 1440 1" -- 1天时效(激活)的Witchery(+9)（赠）*1
	tCumulativeConsumptionReward_Pack[3326555][2]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326555][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326555][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 破玄元*1（赠） - 4%
	tCumulativeConsumptionReward_Pack[3326555][3] = {}
	tCumulativeConsumptionReward_Pack[3326555][3]["RandomItemChanceType"] = 2
	tCumulativeConsumptionReward_Pack[3326555][3]["ItemChance"] = 400
	tCumulativeConsumptionReward_Pack[3326555][3]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326555][3]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326555][3]["RewardItem"][1]["Id"] = 4030109 -- TortoiseBreaker(+9)[4030109][属性:8][叠加:0][金币:0], 【表格】破玄元*1（赠）
	tCumulativeConsumptionReward_Pack[3326555][3]["RewardItem"][1]["Attr"] = "0 1 3 1440 1" -- 1天时效(激活)的TortoiseBreaker(+9)（赠）*1
	tCumulativeConsumptionReward_Pack[3326555][3]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326555][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326555][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 撼星诀*1（赠） - 10%
	tCumulativeConsumptionReward_Pack[3326555][4] = {}
	tCumulativeConsumptionReward_Pack[3326555][4]["RandomItemChanceType"] = 2
	tCumulativeConsumptionReward_Pack[3326555][4]["ItemChance"] = 1000
	tCumulativeConsumptionReward_Pack[3326555][4]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326555][4]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326555][4]["RewardItem"][1]["Id"] = 4030209 -- DrainingTouchBooster(+9)[4030209][属性:8][叠加:0][金币:0], 【表格】撼星诀*1（赠）
	tCumulativeConsumptionReward_Pack[3326555][4]["RewardItem"][1]["Attr"] = "0 1 3 1440 1" -- 1天时效(激活)的DrainingTouchBooster(+9)（赠）*1
	tCumulativeConsumptionReward_Pack[3326555][4]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326555][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326555][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 血回元*1（赠） - 10%
	tCumulativeConsumptionReward_Pack[3326555][5] = {}
	tCumulativeConsumptionReward_Pack[3326555][5]["RandomItemChanceType"] = 2
	tCumulativeConsumptionReward_Pack[3326555][5]["ItemChance"] = 1000
	tCumulativeConsumptionReward_Pack[3326555][5]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326555][5]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326555][5]["RewardItem"][1]["Id"] = 4030309 -- BloodSpawnBooster(+9)[4030309][属性:8][叠加:0][金币:0], 【表格】血回元*1（赠）
	tCumulativeConsumptionReward_Pack[3326555][5]["RewardItem"][1]["Attr"] = "0 1 3 1440 1" -- 1天时效(激活)的BloodSpawnBooster(+9)（赠）*1
	tCumulativeConsumptionReward_Pack[3326555][5]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326555][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326555][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 万物生*1（赠） - 8%
	tCumulativeConsumptionReward_Pack[3326555][6] = {}
	tCumulativeConsumptionReward_Pack[3326555][6]["RandomItemChanceType"] = 2
	tCumulativeConsumptionReward_Pack[3326555][6]["ItemChance"] = 800
	tCumulativeConsumptionReward_Pack[3326555][6]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326555][6]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326555][6]["RewardItem"][1]["Id"] = 4030409 -- Healer(+9)[4030409][属性:8][叠加:0][金币:0], 【表格】万物生*1（赠）
	tCumulativeConsumptionReward_Pack[3326555][6]["RewardItem"][1]["Attr"] = "0 1 3 1440 1" -- 1天时效(激活)的Healer(+9)（赠）*1
	tCumulativeConsumptionReward_Pack[3326555][6]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326555][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326555][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 无懈可击*1（赠） - 10%
	tCumulativeConsumptionReward_Pack[3326555][7] = {}
	tCumulativeConsumptionReward_Pack[3326555][7]["RandomItemChanceType"] = 2
	tCumulativeConsumptionReward_Pack[3326555][7]["ItemChance"] = 1000
	tCumulativeConsumptionReward_Pack[3326555][7]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326555][7]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326555][7]["RewardItem"][1]["Id"] = 4030509 -- Sturdiness(+9)[4030509][属性:8][叠加:0][金币:0], 【表格】无懈可击*1（赠）
	tCumulativeConsumptionReward_Pack[3326555][7]["RewardItem"][1]["Attr"] = "0 1 3 1440 1" -- 1天时效(激活)的Sturdiness(+9)（赠）*1
	tCumulativeConsumptionReward_Pack[3326555][7]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326555][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326555][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 狂暴克星*1（赠） - 8%
	tCumulativeConsumptionReward_Pack[3326555][8] = {}
	tCumulativeConsumptionReward_Pack[3326555][8]["RandomItemChanceType"] = 2
	tCumulativeConsumptionReward_Pack[3326555][8]["ItemChance"] = 800
	tCumulativeConsumptionReward_Pack[3326555][8]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326555][8]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326555][8]["RewardItem"][1]["Id"] = 4030609 -- XPKiller(+9)[4030609][属性:8][叠加:0][金币:0], 【表格】狂暴克星*1（赠）
	tCumulativeConsumptionReward_Pack[3326555][8]["RewardItem"][1]["Attr"] = "0 1 3 1440 1" -- 1天时效(激活)的XPKiller(+9)（赠）*1
	tCumulativeConsumptionReward_Pack[3326555][8]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326555][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326555][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 风卷残云*1（赠） - 8%
	tCumulativeConsumptionReward_Pack[3326555][9] = {}
	tCumulativeConsumptionReward_Pack[3326555][9]["RandomItemChanceType"] = 2
	tCumulativeConsumptionReward_Pack[3326555][9]["ItemChance"] = 800
	tCumulativeConsumptionReward_Pack[3326555][9]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326555][9]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326555][9]["RewardItem"][1]["Id"] = 4030709 -- Grabber(+9)[4030709][属性:8][叠加:0][金币:0], 【表格】风卷残云*1（赠）
	tCumulativeConsumptionReward_Pack[3326555][9]["RewardItem"][1]["Attr"] = "0 1 3 1440 1" -- 1天时效(激活)的Grabber(+9)（赠）*1
	tCumulativeConsumptionReward_Pack[3326555][9]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326555][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326555][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 回灵术*1（赠） - 8%
	tCumulativeConsumptionReward_Pack[3326555][10] = {}
	tCumulativeConsumptionReward_Pack[3326555][10]["RandomItemChanceType"] = 2
	tCumulativeConsumptionReward_Pack[3326555][10]["ItemChance"] = 800
	tCumulativeConsumptionReward_Pack[3326555][10]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326555][10]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326555][10]["RewardItem"][1]["Id"] = 4030809 -- MPMaster(+9)[4030809][属性:8][叠加:0][金币:0], 【表格】回灵术*1（赠）
	tCumulativeConsumptionReward_Pack[3326555][10]["RewardItem"][1]["Attr"] = "0 1 3 1440 1" -- 1天时效(激活)的MPMaster(+9)（赠）*1
	tCumulativeConsumptionReward_Pack[3326555][10]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326555][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326555][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 杀破狼*1（赠） - 10%
	tCumulativeConsumptionReward_Pack[3326555][11] = {}
	tCumulativeConsumptionReward_Pack[3326555][11]["RandomItemChanceType"] = 2
	tCumulativeConsumptionReward_Pack[3326555][11]["ItemChance"] = 1000
	tCumulativeConsumptionReward_Pack[3326555][11]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326555][11]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326555][11]["RewardItem"][1]["Id"] = 4030909 -- BossKiller(+9)[4030909][属性:8][叠加:0][金币:0], 【表格】杀破狼*1（赠）
	tCumulativeConsumptionReward_Pack[3326555][11]["RewardItem"][1]["Attr"] = "0 1 3 1440 1" -- 1天时效(激活)的BossKiller(+9)（赠）*1
	tCumulativeConsumptionReward_Pack[3326555][11]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326555][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326555][11]["RewardEffect"]["Effect"] = "angelwing"
	-- 追命*1（赠） - 2%
	tCumulativeConsumptionReward_Pack[3326555][12] = {}
	tCumulativeConsumptionReward_Pack[3326555][12]["RandomItemChanceType"] = 2
	tCumulativeConsumptionReward_Pack[3326555][12]["ItemChance"] = 200
	tCumulativeConsumptionReward_Pack[3326555][12]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326555][12]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326555][12]["RewardItem"][1]["Id"] = 4031009 -- NoMercy(+9)[4031009][属性:8][叠加:0][金币:0], 【表格】追命*1（赠）
	tCumulativeConsumptionReward_Pack[3326555][12]["RewardItem"][1]["Attr"] = "0 1 3 1440 1" -- 1天时效(激活)的NoMercy(+9)（赠）*1
	tCumulativeConsumptionReward_Pack[3326555][12]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326555][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326555][12]["RewardEffect"]["Effect"] = "angelwing"
	-- 奔雷不息*1（赠） - 10%
	tCumulativeConsumptionReward_Pack[3326555][13] = {}
	tCumulativeConsumptionReward_Pack[3326555][13]["RandomItemChanceType"] = 2
	tCumulativeConsumptionReward_Pack[3326555][13]["ItemChance"] = 1000
	tCumulativeConsumptionReward_Pack[3326555][13]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326555][13]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326555][13]["RewardItem"][1]["Id"] = 4031109 -- XPBooster(+9)[4031109][属性:8][叠加:0][金币:0], 【表格】奔雷不息*1（赠）
	tCumulativeConsumptionReward_Pack[3326555][13]["RewardItem"][1]["Attr"] = "0 1 3 1440 1" -- 1天时效(激活)的XPBooster(+9)（赠）*1
	tCumulativeConsumptionReward_Pack[3326555][13]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326555][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326555][13]["RewardEffect"]["Effect"] = "angelwing"
	-- 安魂定魄*1（赠） - 10%
	tCumulativeConsumptionReward_Pack[3326555][14] = {}
	tCumulativeConsumptionReward_Pack[3326555][14]["RandomItemChanceType"] = 2
	tCumulativeConsumptionReward_Pack[3326555][14]["ItemChance"] = 1000
	tCumulativeConsumptionReward_Pack[3326555][14]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326555][14]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326555][14]["RewardItem"][1]["Id"] = 4031209 -- FreeSoulBooster(+9)[4031209][属性:8][叠加:0][金币:0], 【表格】安魂定魄*1（赠）
	tCumulativeConsumptionReward_Pack[3326555][14]["RewardItem"][1]["Attr"] = "0 1 3 1440 1" -- 1天时效(激活)的FreeSoulBooster(+9)（赠）*1
	tCumulativeConsumptionReward_Pack[3326555][14]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326555][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326555][14]["RewardEffect"]["Effect"] = "angelwing"


	tCumulativeConsumptionReward_Pack[3326556] = {}
	-- ===30天时效玫瑰风暴武器外套（赠）礼盒
	-- ===索引:tCumulativeConsumptionReward_Pack[3326556][1]
	-- ===删除:3326556,1
	-- ===EMoneyLog: 350,22695
	-- ===
	tCumulativeConsumptionReward_Pack[3326556][1] = {}
	tCumulativeConsumptionReward_Pack[3326556][1]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326556][1]["EmoneyLog"] = "350	22695	0	0	1	"
	tCumulativeConsumptionReward_Pack[3326556][1]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326556][1]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326556][1]["DeleteItem"][1]["Id"] = 3326556 -- 【库】30天时效玫瑰风暴武器外套（赠）礼盒[属性:9]
	tCumulativeConsumptionReward_Pack[3326556][1]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326556][1]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326556][1]["RewardItem"][1]["Id"] = 360149 -- RodofRoses[360149][属性:0][叠加:0][金币:0], 【表格】短武器外套 *1（赠）
	tCumulativeConsumptionReward_Pack[3326556][1]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑RodofRoses（赠）*1
	tCumulativeConsumptionReward_Pack[3326556][1]["RewardItem"][2] = {}
	tCumulativeConsumptionReward_Pack[3326556][1]["RewardItem"][2]["Id"] = 3326547 -- 熊猫纪念币[3326547][属性:9][叠加:0][金币:0], 【表格】熊猫纪念币*15（赠）
	tCumulativeConsumptionReward_Pack[3326556][1]["RewardItem"][2]["Attr"] = "0 15" -- 熊猫纪念币*15（[错误]物品数量超10个）
	tCumulativeConsumptionReward_Pack[3326556][1]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326556][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326556][1]["RewardEffect"]["Effect"] = "angelwing"


	tCumulativeConsumptionReward_Pack[3326556][2] = {}
	-- ===30天时效玫瑰风暴武器外套（赠）礼盒
	-- ===索引:tCumulativeConsumptionReward_Pack[3326556][2]
	-- ===删除:3326556,1
	-- ===EMoneyLog: 350,22695
	-- ===
	tCumulativeConsumptionReward_Pack[3326556][2]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326556][2]["EmoneyLog"] = "350	22695	0	0	1	"
	tCumulativeConsumptionReward_Pack[3326556][2]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326556][2]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326556][2]["DeleteItem"][1]["Id"] = 3326556 -- 【库】30天时效玫瑰风暴武器外套（赠）礼盒[属性:9]
	tCumulativeConsumptionReward_Pack[3326556][2]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326556][2]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326556][2]["RewardItem"][1]["Id"] = 350079 -- RodofRoses[350079][属性:0][叠加:0][金币:0], 【表格】长武器外套 *1（赠）
	tCumulativeConsumptionReward_Pack[3326556][2]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑RodofRoses（赠）*1
	tCumulativeConsumptionReward_Pack[3326556][2]["RewardItem"][2] = {}
	tCumulativeConsumptionReward_Pack[3326556][2]["RewardItem"][2]["Id"] = 3326547 -- 熊猫纪念币[3326547][属性:9][叠加:0][金币:0], 【表格】熊猫纪念币*15（赠）
	tCumulativeConsumptionReward_Pack[3326556][2]["RewardItem"][2]["Attr"] = "0 15" -- 熊猫纪念币*15（[错误]物品数量超10个）
	tCumulativeConsumptionReward_Pack[3326556][2]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326556][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326556][2]["RewardEffect"]["Effect"] = "angelwing"


	tCumulativeConsumptionReward_Pack[3326557] = {}
	-- ===30天时效心有灵犀武器外套（赠）礼盒
	-- ===索引:tCumulativeConsumptionReward_Pack[3326557][1]
	-- ===删除:3326557,1
	-- ===EMoneyLog: 350,22696
	-- ===
	tCumulativeConsumptionReward_Pack[3326557][1] = {}
	tCumulativeConsumptionReward_Pack[3326557][1]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326557][1]["EmoneyLog"] = "350	22696	0	0	1	"
	tCumulativeConsumptionReward_Pack[3326557][1]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326557][1]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326557][1]["DeleteItem"][1]["Id"] = 3326557 -- 【库】30天时效心有灵犀武器外套（赠）礼盒[属性:9]
	tCumulativeConsumptionReward_Pack[3326557][1]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326557][1]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326557][1]["RewardItem"][1]["Id"] = 360150 -- FloralHeart[360150][属性:0][叠加:0][金币:0], 【表格】短武器外套 *1（赠）
	tCumulativeConsumptionReward_Pack[3326557][1]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑FloralHeart（赠）*1
	tCumulativeConsumptionReward_Pack[3326557][1]["RewardItem"][2] = {}
	tCumulativeConsumptionReward_Pack[3326557][1]["RewardItem"][2]["Id"] = 3326547 -- 熊猫纪念币[3326547][属性:9][叠加:0][金币:0], 【表格】熊猫纪念币*15（赠）
	tCumulativeConsumptionReward_Pack[3326557][1]["RewardItem"][2]["Attr"] = "0 15" -- 熊猫纪念币*15（[错误]物品数量超10个）
	tCumulativeConsumptionReward_Pack[3326557][1]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326557][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326557][1]["RewardEffect"]["Effect"] = "angelwing"


	tCumulativeConsumptionReward_Pack[3326557][2] = {}
	-- ===30天时效心有灵犀武器外套（赠）礼盒
	-- ===索引:tCumulativeConsumptionReward_Pack[3326557][2]
	-- ===删除:3326557,1
	-- ===EMoneyLog: 350,22696
	-- ===
	tCumulativeConsumptionReward_Pack[3326557][2]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326557][2]["EmoneyLog"] = "350	22696	0	0	1	"
	tCumulativeConsumptionReward_Pack[3326557][2]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326557][2]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326557][2]["DeleteItem"][1]["Id"] = 3326557 -- 【库】30天时效心有灵犀武器外套（赠）礼盒[属性:9]
	tCumulativeConsumptionReward_Pack[3326557][2]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326557][2]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326557][2]["RewardItem"][1]["Id"] = 350080 -- FloralHeart[350080][属性:0][叠加:0][金币:0], 【表格】长武器外套 *1（赠）
	tCumulativeConsumptionReward_Pack[3326557][2]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑FloralHeart（赠）*1
	tCumulativeConsumptionReward_Pack[3326557][2]["RewardItem"][2] = {}
	tCumulativeConsumptionReward_Pack[3326557][2]["RewardItem"][2]["Id"] = 3326547 -- 熊猫纪念币[3326547][属性:9][叠加:0][金币:0], 【表格】熊猫纪念币*15（赠）
	tCumulativeConsumptionReward_Pack[3326557][2]["RewardItem"][2]["Attr"] = "0 15" -- 熊猫纪念币*15（[错误]物品数量超10个）
	tCumulativeConsumptionReward_Pack[3326557][2]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326557][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326557][2]["RewardEffect"]["Effect"] = "angelwing"


	tCumulativeConsumptionReward_Pack[3326558] = {}
	-- ===30天时效酷酷喵星杖【魅力版】武器外套（赠）礼盒
	-- ===索引:tCumulativeConsumptionReward_Pack[3326558]
	-- ===删除:3326558,1
	-- ===EMoneyLog: 350,22697
	-- ===
	tCumulativeConsumptionReward_Pack[3326558]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326558]["EmoneyLog"] = "350	22697	0	0	1	"
	tCumulativeConsumptionReward_Pack[3326558]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326558]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326558]["DeleteItem"][1]["Id"] = 3326558 -- 【库】30天时效酷酷喵星杖【魅力版】武器外套（赠）礼盒[属性:9]
	tCumulativeConsumptionReward_Pack[3326558]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326558]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326558]["RewardItem"][1]["Id"] = 350090 -- DarkCatStaff(Charm)[350090][属性:0][叠加:0][金币:0], 【表格】酷酷喵星杖*1（赠）
	tCumulativeConsumptionReward_Pack[3326558]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑DarkCatStaff(Charm)（赠）*1
	tCumulativeConsumptionReward_Pack[3326558]["RewardItem"][2] = {}
	tCumulativeConsumptionReward_Pack[3326558]["RewardItem"][2]["Id"] = 3326547 -- 熊猫纪念币[3326547][属性:9][叠加:0][金币:0], 【表格】熊猫纪念币*28（赠）
	tCumulativeConsumptionReward_Pack[3326558]["RewardItem"][2]["Attr"] = "0 28" -- 熊猫纪念币*28（[错误]物品数量超10个）
	tCumulativeConsumptionReward_Pack[3326558]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326558]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326558]["RewardEffect"]["Effect"] = "angelwing"


	tCumulativeConsumptionReward_Pack[3326559] = {}
	-- ===30天时效绒绒喵星杖【魅力版】武器外套（赠）礼盒
	-- ===索引:tCumulativeConsumptionReward_Pack[3326559]
	-- ===删除:3326559,1
	-- ===EMoneyLog: 350,22698
	-- ===
	tCumulativeConsumptionReward_Pack[3326559]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326559]["EmoneyLog"] = "350	22698	0	0	1	"
	tCumulativeConsumptionReward_Pack[3326559]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326559]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326559]["DeleteItem"][1]["Id"] = 3326559 -- 【库】30天时效绒绒喵星杖【魅力版】武器外套（赠）礼盒[属性:9]
	tCumulativeConsumptionReward_Pack[3326559]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326559]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326559]["RewardItem"][1]["Id"] = 360176 -- StarCatStaff(Charm)[360176][属性:0][叠加:0][金币:0], 【表格】绒绒喵星杖*1（赠）
	tCumulativeConsumptionReward_Pack[3326559]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑StarCatStaff(Charm)（赠）*1
	tCumulativeConsumptionReward_Pack[3326559]["RewardItem"][2] = {}
	tCumulativeConsumptionReward_Pack[3326559]["RewardItem"][2]["Id"] = 3326547 -- 熊猫纪念币[3326547][属性:9][叠加:0][金币:0], 【表格】熊猫纪念币*28（赠）
	tCumulativeConsumptionReward_Pack[3326559]["RewardItem"][2]["Attr"] = "0 28" -- 熊猫纪念币*28（[错误]物品数量超10个）
	tCumulativeConsumptionReward_Pack[3326559]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326559]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326559]["RewardEffect"]["Effect"] = "angelwing"


	tCumulativeConsumptionReward_Pack[3326560] = {}
	-- ===30天时效比翼双飞武器外套（赠）礼盒
	-- ===索引:tCumulativeConsumptionReward_Pack[3326560][1]
	-- ===删除:3326560,1
	-- ===EMoneyLog: 350,22699
	-- ===
	tCumulativeConsumptionReward_Pack[3326560][1] = {}
	tCumulativeConsumptionReward_Pack[3326560][1]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326560][1]["EmoneyLog"] = "350	22699	0	0	1	"
	tCumulativeConsumptionReward_Pack[3326560][1]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326560][1]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326560][1]["DeleteItem"][1]["Id"] = 3326560 -- 【库】30天时效比翼双飞武器外套（赠）礼盒[属性:9]
	tCumulativeConsumptionReward_Pack[3326560][1]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326560][1]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326560][1]["RewardItem"][1]["Id"] = 360192 -- GraspofLove[360192][属性:0][叠加:0][金币:0], 【表格】短武器外套 *1（赠）
	tCumulativeConsumptionReward_Pack[3326560][1]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑GraspofLove（赠）*1
	tCumulativeConsumptionReward_Pack[3326560][1]["RewardItem"][2] = {}
	tCumulativeConsumptionReward_Pack[3326560][1]["RewardItem"][2]["Id"] = 3326547 -- 熊猫纪念币[3326547][属性:9][叠加:0][金币:0], 【表格】熊猫纪念币*28（赠）
	tCumulativeConsumptionReward_Pack[3326560][1]["RewardItem"][2]["Attr"] = "0 28" -- 熊猫纪念币*28（[错误]物品数量超10个）
	tCumulativeConsumptionReward_Pack[3326560][1]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326560][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326560][1]["RewardEffect"]["Effect"] = "angelwing"


	tCumulativeConsumptionReward_Pack[3326560][2] = {}
	-- ===30天时效比翼双飞武器外套（赠）礼盒
	-- ===索引:tCumulativeConsumptionReward_Pack[3326560][2]
	-- ===删除:3326560,1
	-- ===EMoneyLog: 350,22699
	-- ===
	tCumulativeConsumptionReward_Pack[3326560][2]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326560][2]["EmoneyLog"] = "350	22699	0	0	1	"
	tCumulativeConsumptionReward_Pack[3326560][2]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326560][2]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326560][2]["DeleteItem"][1]["Id"] = 3326560 -- 【库】30天时效比翼双飞武器外套（赠）礼盒[属性:9]
	tCumulativeConsumptionReward_Pack[3326560][2]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326560][2]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326560][2]["RewardItem"][1]["Id"] = 350099 -- GraspofLove[350099][属性:0][叠加:0][金币:0], 【表格】长武器外套 *1（赠）
	tCumulativeConsumptionReward_Pack[3326560][2]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑GraspofLove（赠）*1
	tCumulativeConsumptionReward_Pack[3326560][2]["RewardItem"][2] = {}
	tCumulativeConsumptionReward_Pack[3326560][2]["RewardItem"][2]["Id"] = 3326547 -- 熊猫纪念币[3326547][属性:9][叠加:0][金币:0], 【表格】熊猫纪念币*28（赠）
	tCumulativeConsumptionReward_Pack[3326560][2]["RewardItem"][2]["Attr"] = "0 28" -- 熊猫纪念币*28（[错误]物品数量超10个）
	tCumulativeConsumptionReward_Pack[3326560][2]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326560][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326560][2]["RewardEffect"]["Effect"] = "angelwing"


	tCumulativeConsumptionReward_Pack[3326561] = {}
	-- ===30天时效巧克力甜心【炫彩】武器外套（赠）礼盒
	-- ===索引:tCumulativeConsumptionReward_Pack[3326561][1]
	-- ===删除:3326561,1
	-- ===EMoneyLog: 350,22700
	-- ===
	tCumulativeConsumptionReward_Pack[3326561][1] = {}
	tCumulativeConsumptionReward_Pack[3326561][1]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326561][1]["EmoneyLog"] = "350	22700	0	0	1	"
	tCumulativeConsumptionReward_Pack[3326561][1]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326561][1]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326561][1]["DeleteItem"][1]["Id"] = 3326561 -- 【库】30天时效巧克力甜心【炫彩】武器外套（赠）礼盒[属性:9]
	tCumulativeConsumptionReward_Pack[3326561][1]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326561][1]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326561][1]["RewardItem"][1]["Id"] = 360291 -- ChocolateHeart(Dazzle)[360291][属性:0][叠加:0][金币:0], 【表格】短武器外套 *1（赠）
	tCumulativeConsumptionReward_Pack[3326561][1]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑ChocolateHeart(Dazzle)（赠）*1
	tCumulativeConsumptionReward_Pack[3326561][1]["RewardItem"][2] = {}
	tCumulativeConsumptionReward_Pack[3326561][1]["RewardItem"][2]["Id"] = 3326547 -- 熊猫纪念币[3326547][属性:9][叠加:0][金币:0], 【表格】熊猫纪念币*28（赠）
	tCumulativeConsumptionReward_Pack[3326561][1]["RewardItem"][2]["Attr"] = "0 28" -- 熊猫纪念币*28（[错误]物品数量超10个）
	tCumulativeConsumptionReward_Pack[3326561][1]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326561][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326561][1]["RewardEffect"]["Effect"] = "angelwing"


	tCumulativeConsumptionReward_Pack[3326561][2] = {}
	-- ===30天时效巧克力甜心【炫彩】武器外套（赠）礼盒
	-- ===索引:tCumulativeConsumptionReward_Pack[3326561][2]
	-- ===删除:3326561,1
	-- ===EMoneyLog: 350,22700
	-- ===
	tCumulativeConsumptionReward_Pack[3326561][2]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326561][2]["EmoneyLog"] = "350	22700	0	0	1	"
	tCumulativeConsumptionReward_Pack[3326561][2]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326561][2]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326561][2]["DeleteItem"][1]["Id"] = 3326561 -- 【库】30天时效巧克力甜心【炫彩】武器外套（赠）礼盒[属性:9]
	tCumulativeConsumptionReward_Pack[3326561][2]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326561][2]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326561][2]["RewardItem"][1]["Id"] = 350030 -- ChocolateHeart(Dazzle)[350030][属性:0][叠加:0][金币:0], 【表格】长武器外套 *1（赠）
	tCumulativeConsumptionReward_Pack[3326561][2]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑ChocolateHeart(Dazzle)（赠）*1
	tCumulativeConsumptionReward_Pack[3326561][2]["RewardItem"][2] = {}
	tCumulativeConsumptionReward_Pack[3326561][2]["RewardItem"][2]["Id"] = 3326547 -- 熊猫纪念币[3326547][属性:9][叠加:0][金币:0], 【表格】熊猫纪念币*28（赠）
	tCumulativeConsumptionReward_Pack[3326561][2]["RewardItem"][2]["Attr"] = "0 28" -- 熊猫纪念币*28（[错误]物品数量超10个）
	tCumulativeConsumptionReward_Pack[3326561][2]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326561][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326561][2]["RewardEffect"]["Effect"] = "angelwing"


	tCumulativeConsumptionReward_Pack[3326562] = {}
	-- ===30天时效十里桃花·三生三世武器外套（赠）礼盒
	-- ===索引:tCumulativeConsumptionReward_Pack[3326562][1]
	-- ===删除:3326562,1
	-- ===EMoneyLog: 350,22701
	-- ===
	tCumulativeConsumptionReward_Pack[3326562][1] = {}
	tCumulativeConsumptionReward_Pack[3326562][1]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326562][1]["EmoneyLog"] = "350	22701	0	0	1	"
	tCumulativeConsumptionReward_Pack[3326562][1]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326562][1]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326562][1]["DeleteItem"][1]["Id"] = 3326562 -- 【库】30天时效十里桃花·三生三世武器外套（赠）礼盒[属性:9]
	tCumulativeConsumptionReward_Pack[3326562][1]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326562][1]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326562][1]["RewardItem"][1]["Id"] = 360297 -- LingeringBlossoms(Forever)[360297][属性:0][叠加:0][金币:0], 【表格】短武器外套 *1（赠）
	tCumulativeConsumptionReward_Pack[3326562][1]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑LingeringBlossoms(Forever)（赠）*1
	tCumulativeConsumptionReward_Pack[3326562][1]["RewardItem"][2] = {}
	tCumulativeConsumptionReward_Pack[3326562][1]["RewardItem"][2]["Id"] = 3326547 -- 熊猫纪念币[3326547][属性:9][叠加:0][金币:0], 【表格】熊猫纪念币*25（赠）
	tCumulativeConsumptionReward_Pack[3326562][1]["RewardItem"][2]["Attr"] = "0 25" -- 熊猫纪念币*25（[错误]物品数量超10个）
	tCumulativeConsumptionReward_Pack[3326562][1]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326562][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326562][1]["RewardEffect"]["Effect"] = "angelwing"


	tCumulativeConsumptionReward_Pack[3326562][2] = {}
	-- ===30天时效十里桃花·三生三世武器外套（赠）礼盒
	-- ===索引:tCumulativeConsumptionReward_Pack[3326562][2]
	-- ===删除:3326562,1
	-- ===EMoneyLog: 350,22701
	-- ===
	tCumulativeConsumptionReward_Pack[3326562][2]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326562][2]["EmoneyLog"] = "350	22701	0	0	1	"
	tCumulativeConsumptionReward_Pack[3326562][2]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326562][2]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326562][2]["DeleteItem"][1]["Id"] = 3326562 -- 【库】30天时效十里桃花·三生三世武器外套（赠）礼盒[属性:9]
	tCumulativeConsumptionReward_Pack[3326562][2]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326562][2]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326562][2]["RewardItem"][1]["Id"] = 350164 -- LingeringBlossoms(Forever)[350164][属性:0][叠加:0][金币:0], 【表格】长武器外套 *1（赠）
	tCumulativeConsumptionReward_Pack[3326562][2]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑LingeringBlossoms(Forever)（赠）*1
	tCumulativeConsumptionReward_Pack[3326562][2]["RewardItem"][2] = {}
	tCumulativeConsumptionReward_Pack[3326562][2]["RewardItem"][2]["Id"] = 3326547 -- 熊猫纪念币[3326547][属性:9][叠加:0][金币:0], 【表格】熊猫纪念币*25（赠）
	tCumulativeConsumptionReward_Pack[3326562][2]["RewardItem"][2]["Attr"] = "0 25" -- 熊猫纪念币*25（[错误]物品数量超10个）
	tCumulativeConsumptionReward_Pack[3326562][2]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326562][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326562][2]["RewardEffect"]["Effect"] = "angelwing"


	tCumulativeConsumptionReward_Pack[3326563] = {}
	-- ===酒仙熊猫（赠）礼盒
	-- ===索引:tCumulativeConsumptionReward_Pack[3326563]
	-- ===删除:3326563,1
	-- ===
	tCumulativeConsumptionReward_Pack[3326563]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326563]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326563]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326563]["DeleteItem"][1]["Id"] = 3326563 -- 【库】酒仙熊猫（赠）礼盒[属性:9]
	tCumulativeConsumptionReward_Pack[3326563]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326563]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326563]["RewardItem"][1]["Id"] = 200443 -- WinebibberPanda[200443][属性:0][叠加:0][金币:0], 【表格】酒仙熊猫*1（赠）
	tCumulativeConsumptionReward_Pack[3326563]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑WinebibberPanda（赠）*1
	tCumulativeConsumptionReward_Pack[3326563]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326563]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326563]["RewardEffect"]["Effect"] = "angelwing"


	tCumulativeConsumptionReward_Pack[3326564] = {}
	-- ===战鼓熊猫（赠）礼盒
	-- ===索引:tCumulativeConsumptionReward_Pack[3326564]
	-- ===删除:3326564,1
	-- ===
	tCumulativeConsumptionReward_Pack[3326564]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326564]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326564]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326564]["DeleteItem"][1]["Id"] = 3326564 -- 【库】战鼓熊猫（赠）礼盒[属性:9]
	tCumulativeConsumptionReward_Pack[3326564]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326564]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326564]["RewardItem"][1]["Id"] = 200476 -- DrummerPanda[200476][属性:0][叠加:0][金币:0], 【表格】战鼓熊猫*1（赠）
	tCumulativeConsumptionReward_Pack[3326564]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑DrummerPanda（赠）*1
	tCumulativeConsumptionReward_Pack[3326564]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326564]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326564]["RewardEffect"]["Effect"] = "angelwing"


	tCumulativeConsumptionReward_Pack[3326565] = {}
	-- ===FairyGarment（赠）礼盒
	-- ===索引:tCumulativeConsumptionReward_Pack[3326565]
	-- ===删除:3326565,1
	-- ===
	tCumulativeConsumptionReward_Pack[3326565]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326565]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326565]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326565]["DeleteItem"][1]["Id"] = 3326565 -- 【库】FairyGarment（赠）礼盒[属性:9]
	tCumulativeConsumptionReward_Pack[3326565]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326565]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326565]["RewardItem"][1]["Id"] = 192300 -- FairyGarment[192300][属性:0][叠加:0][金币:0], 【表格】FairyGarment*1（赠）
	tCumulativeConsumptionReward_Pack[3326565]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑FairyGarment（赠）*1
	tCumulativeConsumptionReward_Pack[3326565]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326565]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326565]["RewardEffect"]["Effect"] = "angelwing"


	tCumulativeConsumptionReward_Pack[3326566] = {}
	-- ===Doctor`sJacket（赠）礼盒
	-- ===索引:tCumulativeConsumptionReward_Pack[3326566]
	-- ===删除:3326566,1
	-- ===
	tCumulativeConsumptionReward_Pack[3326566]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326566]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326566]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326566]["DeleteItem"][1]["Id"] = 3326566 -- 【库】Doctor`sJacket（赠）礼盒[属性:9]
	tCumulativeConsumptionReward_Pack[3326566]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326566]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326566]["RewardItem"][1]["Id"] = 183385 -- Doctor`sJacket[183385][属性:0][叠加:0][金币:0], 【表格】Doctor`sJacket*1（赠）
	tCumulativeConsumptionReward_Pack[3326566]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑Doctor`sJacket（赠）*1
	tCumulativeConsumptionReward_Pack[3326566]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326566]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326566]["RewardEffect"]["Effect"] = "angelwing"


	tCumulativeConsumptionReward_Pack[3326567] = {}
	-- ===CogsoftheHeart（赠）礼盒
	-- ===索引:tCumulativeConsumptionReward_Pack[3326567]
	-- ===删除:3326567,1
	-- ===
	tCumulativeConsumptionReward_Pack[3326567]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326567]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326567]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326567]["DeleteItem"][1]["Id"] = 3326567 -- 【库】CogsoftheHeart（赠）礼盒[属性:9]
	tCumulativeConsumptionReward_Pack[3326567]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326567]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326567]["RewardItem"][1]["Id"] = 192565 -- CogsoftheHeart[192565][属性:0][叠加:0][金币:0], 【表格】CogsoftheHeart*1（赠）
	tCumulativeConsumptionReward_Pack[3326567]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑CogsoftheHeart（赠）*1
	tCumulativeConsumptionReward_Pack[3326567]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326567]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326567]["RewardEffect"]["Effect"] = "angelwing"


	tCumulativeConsumptionReward_Pack[3326568] = {}
	-- ===XmasBunny（赠）礼盒
	-- ===索引:tCumulativeConsumptionReward_Pack[3326568]
	-- ===删除:3326568,1
	-- ===
	tCumulativeConsumptionReward_Pack[3326568]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326568]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326568]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326568]["DeleteItem"][1]["Id"] = 3326568 -- 【库】XmasBunny（赠）礼盒[属性:9]
	tCumulativeConsumptionReward_Pack[3326568]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326568]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326568]["RewardItem"][1]["Id"] = 193115 -- XmasBunny[193115][属性:0][叠加:0][金币:100], 【表格】XmasBunny*1（赠）
	tCumulativeConsumptionReward_Pack[3326568]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑XmasBunny（赠）*1
	tCumulativeConsumptionReward_Pack[3326568]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326568]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326568]["RewardEffect"]["Effect"] = "angelwing"


	tCumulativeConsumptionReward_Pack[3326569] = {}
	-- ===MidsummerSuit（赠）礼盒
	-- ===索引:tCumulativeConsumptionReward_Pack[3326569]
	-- ===删除:3326569,1
	-- ===
	tCumulativeConsumptionReward_Pack[3326569]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326569]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326569]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326569]["DeleteItem"][1]["Id"] = 3326569 -- 【库】MidsummerSuit（赠）礼盒[属性:9]
	tCumulativeConsumptionReward_Pack[3326569]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326569]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326569]["RewardItem"][1]["Id"] = 192495 -- MidsummerSuit[192495][属性:0][叠加:0][金币:0], 【表格】MidsummerSuit*1（赠）
	tCumulativeConsumptionReward_Pack[3326569]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑MidsummerSuit（赠）*1
	tCumulativeConsumptionReward_Pack[3326569]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326569]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326569]["RewardEffect"]["Effect"] = "angelwing"


	tCumulativeConsumptionReward_Pack[3326570] = {}
	-- ===SoulofSword（赠）礼盒
	-- ===索引:tCumulativeConsumptionReward_Pack[3326570]
	-- ===删除:3326570,1
	-- ===
	tCumulativeConsumptionReward_Pack[3326570]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326570]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326570]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326570]["DeleteItem"][1]["Id"] = 3326570 -- 【库】SoulofSword（赠）礼盒[属性:9]
	tCumulativeConsumptionReward_Pack[3326570]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326570]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326570]["RewardItem"][1]["Id"] = 188185 -- SoulofSword[188185][属性:0][叠加:0][金币:0], 【表格】SoulofSword*1（赠）
	tCumulativeConsumptionReward_Pack[3326570]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑SoulofSword（赠）*1
	tCumulativeConsumptionReward_Pack[3326570]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326570]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326570]["RewardEffect"]["Effect"] = "angelwing"


	tCumulativeConsumptionReward_Pack[3326571] = {}
	-- ===ColorOfWind（赠）礼盒
	-- ===索引:tCumulativeConsumptionReward_Pack[3326571]
	-- ===删除:3326571,1
	-- ===
	tCumulativeConsumptionReward_Pack[3326571]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326571]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326571]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326571]["DeleteItem"][1]["Id"] = 3326571 -- 【库】ColorOfWind（赠）礼盒[属性:9]
	tCumulativeConsumptionReward_Pack[3326571]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326571]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326571]["RewardItem"][1]["Id"] = 192425 -- ColorOfWind[192425][属性:0][叠加:0][金币:100], 【表格】ColorOfWind*1（赠）
	tCumulativeConsumptionReward_Pack[3326571]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑ColorOfWind（赠）*1
	tCumulativeConsumptionReward_Pack[3326571]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326571]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326571]["RewardEffect"]["Effect"] = "angelwing"


	tCumulativeConsumptionReward_Pack[3326572] = {}
	-- ===SongofDespair（赠）礼盒
	-- ===索引:tCumulativeConsumptionReward_Pack[3326572]
	-- ===删除:3326572,1
	-- ===
	tCumulativeConsumptionReward_Pack[3326572]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326572]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326572]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326572]["DeleteItem"][1]["Id"] = 3326572 -- 【库】SongofDespair（赠）礼盒[属性:9]
	tCumulativeConsumptionReward_Pack[3326572]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326572]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326572]["RewardItem"][1]["Id"] = 193295 -- SongofDespair[193295][属性:0][叠加:0][金币:100], 【表格】SongofDespair*1（赠）
	tCumulativeConsumptionReward_Pack[3326572]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑SongofDespair（赠）*1
	tCumulativeConsumptionReward_Pack[3326572]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326572]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326572]["RewardEffect"]["Effect"] = "angelwing"


	tCumulativeConsumptionReward_Pack[3326573] = {}
	-- ===TenderFlame（赠）礼盒
	-- ===索引:tCumulativeConsumptionReward_Pack[3326573]
	-- ===删除:3326573,1
	-- ===
	tCumulativeConsumptionReward_Pack[3326573]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326573]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326573]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326573]["DeleteItem"][1]["Id"] = 3326573 -- 【库】TenderFlame（赠）礼盒[属性:9]
	tCumulativeConsumptionReward_Pack[3326573]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326573]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326573]["RewardItem"][1]["Id"] = 188495 -- TenderFlame[188495][属性:0][叠加:0][金币:0], 【表格】TenderFlame*1（赠）
	tCumulativeConsumptionReward_Pack[3326573]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑TenderFlame（赠）*1
	tCumulativeConsumptionReward_Pack[3326573]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326573]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326573]["RewardEffect"]["Effect"] = "angelwing"


	tCumulativeConsumptionReward_Pack[3326574] = {}
	-- ===AspirationJacket（赠）礼盒
	-- ===索引:tCumulativeConsumptionReward_Pack[3326574]
	-- ===删除:3326574,1
	-- ===
	tCumulativeConsumptionReward_Pack[3326574]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326574]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326574]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326574]["DeleteItem"][1]["Id"] = 3326574 -- 【库】AspirationJacket（赠）礼盒[属性:9]
	tCumulativeConsumptionReward_Pack[3326574]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326574]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326574]["RewardItem"][1]["Id"] = 193325 -- AspirationJacket[193325][属性:0][叠加:0][金币:100], 【表格】AspirationJacket*1（赠）
	tCumulativeConsumptionReward_Pack[3326574]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑AspirationJacket（赠）*1
	tCumulativeConsumptionReward_Pack[3326574]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326574]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326574]["RewardEffect"]["Effect"] = "angelwing"


	tCumulativeConsumptionReward_Pack[3326575] = {}
	-- ===BlossomRomance（Charm）（赠）礼盒
	-- ===索引:tCumulativeConsumptionReward_Pack[3326575]
	-- ===删除:3326575,1
	-- ===
	tCumulativeConsumptionReward_Pack[3326575]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326575]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326575]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326575]["DeleteItem"][1]["Id"] = 3326575 -- 【库】BlossomRomance(Charm)（赠）礼盒[属性:9]
	tCumulativeConsumptionReward_Pack[3326575]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326575]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326575]["RewardItem"][1]["Id"] = 195405 -- BlossomRomance(Charm)[195405][属性:0][叠加:0][金币:0], 【表格】BlossomRomance（Charm）*1（赠）
	tCumulativeConsumptionReward_Pack[3326575]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑BlossomRomance(Charm)（赠）*1
	tCumulativeConsumptionReward_Pack[3326575]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326575]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326575]["RewardEffect"]["Effect"] = "angelwing"


	tCumulativeConsumptionReward_Pack[3326576] = {}
	-- ===FieryBeast（赠）礼盒
	-- ===索引:tCumulativeConsumptionReward_Pack[3326576]
	-- ===删除:3326576,1
	-- ===
	tCumulativeConsumptionReward_Pack[3326576]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326576]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326576]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326576]["DeleteItem"][1]["Id"] = 3326576 -- 【库】FieryBeast（赠）礼盒[属性:9]
	tCumulativeConsumptionReward_Pack[3326576]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326576]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326576]["RewardItem"][1]["Id"] = 200579 -- FieryBeast[200579][属性:8][叠加:0][金币:0], 【表格】FieryBeast*1（赠）
	tCumulativeConsumptionReward_Pack[3326576]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑FieryBeast（赠）*1
	tCumulativeConsumptionReward_Pack[3326576]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326576]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326576]["RewardEffect"]["Effect"] = "angelwing"


	tCumulativeConsumptionReward_Pack[3326577] = {}
	-- ===SnowFox（赠）礼盒
	-- ===索引:tCumulativeConsumptionReward_Pack[3326577]
	-- ===删除:3326577,1
	-- ===
	tCumulativeConsumptionReward_Pack[3326577]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326577]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326577]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326577]["DeleteItem"][1]["Id"] = 3326577 -- 【库】SnowFox（赠）礼盒[属性:9]
	tCumulativeConsumptionReward_Pack[3326577]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326577]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326577]["RewardItem"][1]["Id"] = 200480 -- SnowFox[200480][属性:0][叠加:0][金币:0], 【表格】SnowFox*1（赠）
	tCumulativeConsumptionReward_Pack[3326577]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑SnowFox（赠）*1
	tCumulativeConsumptionReward_Pack[3326577]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326577]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326577]["RewardEffect"]["Effect"] = "angelwing"


	tCumulativeConsumptionReward_Pack[3326578] = {}
	-- ===MythicBeast（赠）礼盒
	-- ===索引:tCumulativeConsumptionReward_Pack[3326578]
	-- ===删除:3326578,1
	-- ===
	tCumulativeConsumptionReward_Pack[3326578]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326578]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326578]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326578]["DeleteItem"][1]["Id"] = 3326578 -- 【库】MythicBeast（赠）礼盒[属性:9]
	tCumulativeConsumptionReward_Pack[3326578]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326578]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326578]["RewardItem"][1]["Id"] = 200580 -- MythicBeast[200580][属性:8][叠加:0][金币:0], 【表格】MythicBeast*1（赠）
	tCumulativeConsumptionReward_Pack[3326578]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑MythicBeast（赠）*1
	tCumulativeConsumptionReward_Pack[3326578]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326578]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326578]["RewardEffect"]["Effect"] = "angelwing"


	tCumulativeConsumptionReward_Pack[3326579] = {}
	-- ===30天时效ArmorofHolyLight（赠）礼盒
	-- ===索引:tCumulativeConsumptionReward_Pack[3326579]
	-- ===删除:3326579,1
	-- ===
	tCumulativeConsumptionReward_Pack[3326579]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326579]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326579]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326579]["DeleteItem"][1]["Id"] = 3326579 -- 【库】30天时效ArmorofHolyLight（赠）礼盒[属性:9]
	tCumulativeConsumptionReward_Pack[3326579]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326579]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326579]["RewardItem"][1]["Id"] = 189135 -- ArmorofHolyLight[189135][属性:9][叠加:0][金币:0], 【表格】ArmorofHolyLight*1（赠）
	tCumulativeConsumptionReward_Pack[3326579]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑ArmorofHolyLight*1
	tCumulativeConsumptionReward_Pack[3326579]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326579]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326579]["RewardEffect"]["Effect"] = "angelwing"


	tCumulativeConsumptionReward_Pack[3326580] = {}
	-- ===30天时效MoneyHorse（赠）礼盒
	-- ===索引:tCumulativeConsumptionReward_Pack[3326580]
	-- ===删除:3326580,1
	-- ===
	tCumulativeConsumptionReward_Pack[3326580]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326580]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326580]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326580]["DeleteItem"][1]["Id"] = 3326580 -- 【库】30天时效MoneyHorse（赠）礼盒[属性:9]
	tCumulativeConsumptionReward_Pack[3326580]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326580]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326580]["RewardItem"][1]["Id"] = 200494 -- MoneyHorse[200494][属性:0][叠加:0][金币:100], 【表格】MoneyHorse*1（赠）
	tCumulativeConsumptionReward_Pack[3326580]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑MoneyHorse（赠）*1
	tCumulativeConsumptionReward_Pack[3326580]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326580]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326580]["RewardEffect"]["Effect"] = "angelwing"


	tCumulativeConsumptionReward_Pack[3326581] = {}
	-- ===30天时效SoulChariot（赠）礼盒
	-- ===索引:tCumulativeConsumptionReward_Pack[3326581]
	-- ===删除:3326581,1
	-- ===
	tCumulativeConsumptionReward_Pack[3326581]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326581]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326581]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326581]["DeleteItem"][1]["Id"] = 3326581 -- 【库】30天时效SoulChariot（赠）礼盒[属性:9]
	tCumulativeConsumptionReward_Pack[3326581]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326581]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326581]["RewardItem"][1]["Id"] = 200606 -- SoulChariot[200606][属性:0][叠加:0][金币:0], 【表格】SoulChariot*1（赠）
	tCumulativeConsumptionReward_Pack[3326581]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑SoulChariot（赠）*1
	tCumulativeConsumptionReward_Pack[3326581]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326581]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326581]["RewardEffect"]["Effect"] = "angelwing"


	tCumulativeConsumptionReward_Pack[3326582] = {}
	-- ===30天时效CelestialDragon（Freedom）（赠）礼盒
	-- ===索引:tCumulativeConsumptionReward_Pack[3326582]
	-- ===删除:3326582,1
	-- ===
	tCumulativeConsumptionReward_Pack[3326582]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326582]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326582]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326582]["DeleteItem"][1]["Id"] = 3326582 -- 【库】30天时效CelestialDragon(Freedom)（赠）礼盒[属性:9]
	tCumulativeConsumptionReward_Pack[3326582]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326582]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326582]["RewardItem"][1]["Id"] = 205000 -- CelestialDragon(Freedom)[205000][属性:0][叠加:0][金币:0], 【表格】CelestialDragon（Freedom）*1（赠）
	tCumulativeConsumptionReward_Pack[3326582]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑CelestialDragon(Freedom)（赠）*1
	tCumulativeConsumptionReward_Pack[3326582]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326582]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326582]["RewardEffect"]["Effect"] = "angelwing"


	tCumulativeConsumptionReward_Pack[3326583] = {}
	-- ===30天时效DelicateFoxEars礼盒
	-- ===索引:tCumulativeConsumptionReward_Pack[3326583][1]
	-- ===删除:3326583,1
	-- ===
	tCumulativeConsumptionReward_Pack[3326583][1] = {}
	tCumulativeConsumptionReward_Pack[3326583][1]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326583][1]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326583][1]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326583][1]["DeleteItem"][1]["Id"] = 3326583 -- 【库】30天时效DelicateFoxEars礼盒[属性:9]
	tCumulativeConsumptionReward_Pack[3326583][1]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326583][1]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326583][1]["RewardItem"][1]["Id"] = 3005977 -- DelicateFoxEars(Male)[3005977][属性:9][叠加:0][金币:0], 【表格】DelicateFoxEars*1（赠）
	tCumulativeConsumptionReward_Pack[3326583][1]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的DelicateFoxEars(Male)*1
	tCumulativeConsumptionReward_Pack[3326583][1]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326583][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326583][1]["RewardEffect"]["Effect"] = "angelwing"


	tCumulativeConsumptionReward_Pack[3326583][2] = {}
	-- ===30天时效DelicateFoxEars礼盒
	-- ===索引:tCumulativeConsumptionReward_Pack[3326583][2]
	-- ===删除:3326583,1
	-- ===
	tCumulativeConsumptionReward_Pack[3326583][2]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326583][2]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326583][2]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326583][2]["DeleteItem"][1]["Id"] = 3326583 -- 【库】30天时效DelicateFoxEars礼盒[属性:9]
	tCumulativeConsumptionReward_Pack[3326583][2]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326583][2]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326583][2]["RewardItem"][1]["Id"] = 3005974 -- DelicateFoxEars(Female)[3005974][属性:9][叠加:0][金币:0], 【表格】DelicateFoxEars*1（赠）
	tCumulativeConsumptionReward_Pack[3326583][2]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的DelicateFoxEars(Female)*1
	tCumulativeConsumptionReward_Pack[3326583][2]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326583][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326583][2]["RewardEffect"]["Effect"] = "angelwing"


	tCumulativeConsumptionReward_Pack[3326584] = {}
	-- ===30天时效CuteCatEars礼盒
	-- ===索引:tCumulativeConsumptionReward_Pack[3326584]
	-- ===删除:3326584,1
	-- ===
	tCumulativeConsumptionReward_Pack[3326584]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326584]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326584]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326584]["DeleteItem"][1]["Id"] = 3326584 -- 【库】30天时效CuteCatEars礼盒[属性:9]
	tCumulativeConsumptionReward_Pack[3326584]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326584]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326584]["RewardItem"][1]["Id"] = 3008000 -- CuteCatEars[3008000][属性:9][叠加:0][金币:0], 【表格】CuteCatEars*1（赠）
	tCumulativeConsumptionReward_Pack[3326584]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的CuteCatEars*1
	tCumulativeConsumptionReward_Pack[3326584]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326584]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326584]["RewardEffect"]["Effect"] = "angelwing"


	-- tCumulativeConsumptionReward_Pack[3326585] = {}
	-- -- ===30天时效FallenLove礼盒
	-- -- ===索引:tCumulativeConsumptionReward_Pack[3326585]
	-- -- ===删除:3326585,1
	-- -- ===
	-- tCumulativeConsumptionReward_Pack[3326585]["LogId"] = 12001687
	-- tCumulativeConsumptionReward_Pack[3326585]["DeleteItem"] = {}
	-- tCumulativeConsumptionReward_Pack[3326585]["DeleteItem"][1] = {}
	-- tCumulativeConsumptionReward_Pack[3326585]["DeleteItem"][1]["Id"] = 3326585 -- 【库】30天时效FallenLove礼盒[属性:9]
	-- tCumulativeConsumptionReward_Pack[3326585]["RewardEffect"] = {}
	-- tCumulativeConsumptionReward_Pack[3326585]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	-- tCumulativeConsumptionReward_Pack[3326585]["RewardEffect"]["Effect"] = "angelwing"


	tCumulativeConsumptionReward_Pack[3326586] = {}
	-- ===30天时效MagicFate礼盒
	-- ===索引:tCumulativeConsumptionReward_Pack[3326586][1]
	-- ===删除:3326586,1
	-- ===
	tCumulativeConsumptionReward_Pack[3326586][1] = {}
	tCumulativeConsumptionReward_Pack[3326586][1]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326586][1]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326586][1]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326586][1]["DeleteItem"][1]["Id"] = 3326586 -- 【库】30天时效MagicFate礼盒[属性:9]
	tCumulativeConsumptionReward_Pack[3326586][1]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326586][1]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326586][1]["RewardItem"][1]["Id"] = 3302203 -- MagicFate(Male)[3302203][属性:9][叠加:1][金币:0], 【表格】MagicFate*1（赠）
	tCumulativeConsumptionReward_Pack[3326586][1]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的MagicFate(Male)*1
	tCumulativeConsumptionReward_Pack[3326586][1]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326586][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326586][1]["RewardEffect"]["Effect"] = "angelwing"


	tCumulativeConsumptionReward_Pack[3326586][2] = {}
	-- ===30天时效MagicFate礼盒
	-- ===索引:tCumulativeConsumptionReward_Pack[3326586][2]
	-- ===删除:3326586,1
	-- ===
	tCumulativeConsumptionReward_Pack[3326586][2]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326586][2]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326586][2]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326586][2]["DeleteItem"][1]["Id"] = 3326586 -- 【库】30天时效MagicFate礼盒[属性:9]
	tCumulativeConsumptionReward_Pack[3326586][2]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326586][2]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326586][2]["RewardItem"][1]["Id"] = 3302202 -- MagicFate(Female)[3302202][属性:9][叠加:1][金币:0], 【表格】MagicFate*1（赠）
	tCumulativeConsumptionReward_Pack[3326586][2]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的MagicFate(Female)*1
	tCumulativeConsumptionReward_Pack[3326586][2]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326586][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326586][2]["RewardEffect"]["Effect"] = "angelwing"


	tCumulativeConsumptionReward_Pack[3326587] = {}
	-- ===30天时效LoveHat礼盒
	-- ===索引:tCumulativeConsumptionReward_Pack[3326587][1]
	-- ===删除:3326587,1
	-- ===
	tCumulativeConsumptionReward_Pack[3326587][1] = {}
	tCumulativeConsumptionReward_Pack[3326587][1]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326587][1]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326587][1]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326587][1]["DeleteItem"][1]["Id"] = 3326587 -- 【库】30天时效LoveHat礼盒[属性:9]
	tCumulativeConsumptionReward_Pack[3326587][1]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326587][1]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326587][1]["RewardItem"][1]["Id"] = 3005978 -- LoveHat(Male)[3005978][属性:9][叠加:0][金币:0], 【表格】LoveHat*1（赠）
	tCumulativeConsumptionReward_Pack[3326587][1]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的LoveHat(Male)*1
	tCumulativeConsumptionReward_Pack[3326587][1]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326587][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326587][1]["RewardEffect"]["Effect"] = "angelwing"


	tCumulativeConsumptionReward_Pack[3326587][2] = {}
	-- ===30天时效LoveHat礼盒盒
	-- ===索引:tCumulativeConsumptionReward_Pack[3326587][2]
	-- ===删除:3326587,1
	-- ===
	tCumulativeConsumptionReward_Pack[3326587][2]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326587][2]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326587][2]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326587][2]["DeleteItem"][1]["Id"] = 3326587 -- 【库】30天时效LoveHat礼盒[属性:9]
	tCumulativeConsumptionReward_Pack[3326587][2]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326587][2]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326587][2]["RewardItem"][1]["Id"] = 3005975 -- LoveHat(Female)[3005975][属性:9][叠加:0][金币:0], 【表格】LoveHat*1（赠）
	tCumulativeConsumptionReward_Pack[3326587][2]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的LoveHat(Female)*1
	tCumulativeConsumptionReward_Pack[3326587][2]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326587][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326587][2]["RewardEffect"]["Effect"] = "angelwing"


	tCumulativeConsumptionReward_Pack[3326588] = {}
	-- ===30天时效FairyWings礼盒
	-- ===索引:tCumulativeConsumptionReward_Pack[3326588]
	-- ===删除:3326588,1
	-- ===
	tCumulativeConsumptionReward_Pack[3326588]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326588]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326588]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326588]["DeleteItem"][1]["Id"] = 3326588 -- 【库】30天时效FairyWings礼盒[属性:9]
	tCumulativeConsumptionReward_Pack[3326588]["RewardWing"] = {}
	tCumulativeConsumptionReward_Pack[3326588]["RewardWing"]["TitleType"] = 6005 -- 【库】FairyWings, 【表格】FairyWings*1（赠）
	tCumulativeConsumptionReward_Pack[3326588]["RewardWing"]["TitleId"] = 6005
	tCumulativeConsumptionReward_Pack[3326588]["RewardWing"]["SaveTime"] = 43200 -- 30天时效的[翅膀]:FairyWings, 【需求】FairyWings*1（赠）
	tCumulativeConsumptionReward_Pack[3326588]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326588]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326588]["RewardEffect"]["Effect"] = "angelwing"



	tCumulativeConsumptionReward_Pack[3326589] = {}
	-- ===至尊消费排行礼盒
	-- ===索引:tCumulativeConsumptionReward_Pack[3326589]
	-- ===删除:3326589,1
	-- ===
	tCumulativeConsumptionReward_Pack[3326589]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326589]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326589]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326589]["DeleteItem"][1]["Id"] = 3326589 -- 【库】TopRankingBox[属性:9]
	tCumulativeConsumptionReward_Pack[3326589]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326589]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326589]["RewardItem"][1]["Id"] = 3326592 -- 180-dayWingsPack[3326592][属性:9][叠加:0][金币:0], 【表格】180天时效翅膀礼包
	tCumulativeConsumptionReward_Pack[3326589]["RewardItem"][1]["Attr"] = "0 1" -- 180-dayWingsPack*1
	tCumulativeConsumptionReward_Pack[3326589]["RewardItem"][2] = {}
	tCumulativeConsumptionReward_Pack[3326589]["RewardItem"][2]["Id"] = 3311744 -- RareYellowRuneFragment[3311744][属性:8][叠加:10000][金币:0], 【表格】赠品稀有黄色神纹碎片*10（赠）
	tCumulativeConsumptionReward_Pack[3326589]["RewardItem"][2]["Attr"] = "0 10 3" -- RareYellowRuneFragment（赠）*10
	tCumulativeConsumptionReward_Pack[3326589]["RewardItem"][3] = {}
	tCumulativeConsumptionReward_Pack[3326589]["RewardItem"][3]["Id"] = 3306510 -- RandomYellowRune(B)Pack[3306510][属性:9][叠加:10000][金币:0], 【表格】赠品随机黄色神纹包（赠）
	tCumulativeConsumptionReward_Pack[3326589]["RewardItem"][3]["Attr"] = "0 1" -- RandomYellowRune(B)Pack*1
	tCumulativeConsumptionReward_Pack[3326589]["RewardItem"][4] = {}
	tCumulativeConsumptionReward_Pack[3326589]["RewardItem"][4]["Id"] = 730007 -- +7Stone[730007][属性:0][叠加:0][金币:0], 【表格】赤练石+7（赠）
	tCumulativeConsumptionReward_Pack[3326589]["RewardItem"][4]["Attr"] = "0 1 3" -- +7Stone（赠）*1
	tCumulativeConsumptionReward_Pack[3326589]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326589]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326589]["RewardEffect"]["Effect"] = "angelwing"


	tCumulativeConsumptionReward_Pack[3326590] = {}
	-- ===豪华消费排行礼盒
	-- ===索引:tCumulativeConsumptionReward_Pack[3326590]
	-- ===删除:3326590,1
	-- ===
	tCumulativeConsumptionReward_Pack[3326590]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326590]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326590]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326590]["DeleteItem"][1]["Id"] = 3326590 -- 【库】SuperRankingBox[属性:9]
	tCumulativeConsumptionReward_Pack[3326590]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326590]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326590]["RewardItem"][1]["Id"] = 3326593 -- 90-dayWingsPack[3326593][属性:9][叠加:0][金币:0], 【表格】90天时效翅膀礼包
	tCumulativeConsumptionReward_Pack[3326590]["RewardItem"][1]["Attr"] = "0 1" -- 90-dayWingsPack*1
	tCumulativeConsumptionReward_Pack[3326590]["RewardItem"][2] = {}
	tCumulativeConsumptionReward_Pack[3326590]["RewardItem"][2]["Id"] = 3311744 -- RareYellowRuneFragment[3311744][属性:8][叠加:10000][金币:0], 【表格】赠品稀有黄色神纹碎片*5（赠）
	tCumulativeConsumptionReward_Pack[3326590]["RewardItem"][2]["Attr"] = "0 5 3" -- RareYellowRuneFragment（赠）*5
	tCumulativeConsumptionReward_Pack[3326590]["RewardItem"][3] = {}
	tCumulativeConsumptionReward_Pack[3326590]["RewardItem"][3]["Id"] = 3306510 -- RandomYellowRune(B)Pack[3306510][属性:9][叠加:10000][金币:0], 【表格】赠品随机黄色神纹包（赠）
	tCumulativeConsumptionReward_Pack[3326590]["RewardItem"][3]["Attr"] = "0 1" -- RandomYellowRune(B)Pack*1
	tCumulativeConsumptionReward_Pack[3326590]["RewardItem"][4] = {}
	tCumulativeConsumptionReward_Pack[3326590]["RewardItem"][4]["Id"] = 730006 -- +6Stone[730006][属性:0][叠加:0][金币:0], 【表格】赤练石+6（赠）
	tCumulativeConsumptionReward_Pack[3326590]["RewardItem"][4]["Attr"] = "0 1 3" -- +6Stone（赠）*1
	tCumulativeConsumptionReward_Pack[3326590]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326590]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326590]["RewardEffect"]["Effect"] = "angelwing"


	tCumulativeConsumptionReward_Pack[3326591] = {}
	-- ===精致消费排行礼盒
	-- ===索引:tCumulativeConsumptionReward_Pack[3326591]
	-- ===删除:3326591,1
	-- ===
	tCumulativeConsumptionReward_Pack[3326591]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326591]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326591]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326591]["DeleteItem"][1]["Id"] = 3326591 -- 【库】FineRankingBox[属性:9]
	tCumulativeConsumptionReward_Pack[3326591]["RewardItem"] = {}
	tCumulativeConsumptionReward_Pack[3326591]["RewardItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326591]["RewardItem"][1]["Id"] = 3306510 -- RandomYellowRune(B)Pack[3306510][属性:9][叠加:10000][金币:0], 【表格】赠品随机黄色神纹包（赠）
	tCumulativeConsumptionReward_Pack[3326591]["RewardItem"][1]["Attr"] = "0 1" -- RandomYellowRune(B)Pack*1
	tCumulativeConsumptionReward_Pack[3326591]["RewardItem"][2] = {}
	tCumulativeConsumptionReward_Pack[3326591]["RewardItem"][2]["Id"] = 730005 -- +5Stone[730005][属性:0][叠加:0][金币:0], 【表格】赤练石+5（赠）
	tCumulativeConsumptionReward_Pack[3326591]["RewardItem"][2]["Attr"] = "0 1 3" -- +5Stone（赠）*1
	tCumulativeConsumptionReward_Pack[3326591]["RewardItem"][3] = {}
	tCumulativeConsumptionReward_Pack[3326591]["RewardItem"][3]["Id"] = 3009101 -- DragonFruit[3009101][属性:9][叠加:99][金币:0], 【表格】龙鳞果*3
	tCumulativeConsumptionReward_Pack[3326591]["RewardItem"][3]["Attr"] = "0 3" -- DragonFruit*3
	tCumulativeConsumptionReward_Pack[3326591]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326591]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326591]["RewardEffect"]["Effect"] = "angelwing"



	tCumulativeConsumptionReward_Pack[3326592] = {}
	-- ===180天时效翅膀礼包
	-- ===索引:tCumulativeConsumptionReward_Pack[3326592][1]
	-- ===删除:3326592,1
	-- ===
	tCumulativeConsumptionReward_Pack[3326592][1] = {}
	tCumulativeConsumptionReward_Pack[3326592][1]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326592][1]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326592][1]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326592][1]["DeleteItem"][1]["Id"] = 3326592 -- 【库】180-dayWingsPack[属性:9]
	tCumulativeConsumptionReward_Pack[3326592][1]["RewardWing"] = {}
	tCumulativeConsumptionReward_Pack[3326592][1]["RewardWing"]["TitleType"] = 6013 -- 【库】EmeraldGlowWing, 【表格】180天EmeraldGlowWings
	tCumulativeConsumptionReward_Pack[3326592][1]["RewardWing"]["TitleId"] = 6013
	tCumulativeConsumptionReward_Pack[3326592][1]["RewardWing"]["SaveTime"] = 259200 -- 180天时效的[翅膀]:EmeraldGlowWing, 【需求】180天EmeraldGlowWings
	tCumulativeConsumptionReward_Pack[3326592][1]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326592][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326592][1]["RewardEffect"]["Effect"] = "angelwing"


	tCumulativeConsumptionReward_Pack[3326592][2] = {}
	-- ===180天时效翅膀礼包
	-- ===索引:tCumulativeConsumptionReward_Pack[3326592][2]
	-- ===删除:3326592,1
	-- ===
	tCumulativeConsumptionReward_Pack[3326592][2]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326592][2]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326592][2]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326592][2]["DeleteItem"][1]["Id"] = 3326592 -- 【库】180-dayWingsPack[属性:9]
	tCumulativeConsumptionReward_Pack[3326592][2]["RewardWing"] = {}
	tCumulativeConsumptionReward_Pack[3326592][2]["RewardWing"]["TitleType"] = 6014 -- 【库】OrangeGlowWings, 【表格】180天OrangeGlowWings
	tCumulativeConsumptionReward_Pack[3326592][2]["RewardWing"]["TitleId"] = 6014
	tCumulativeConsumptionReward_Pack[3326592][2]["RewardWing"]["SaveTime"] = 259200 -- 180天时效的[翅膀]:OrangeGlowWings, 【需求】180天OrangeGlowWings
	tCumulativeConsumptionReward_Pack[3326592][2]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326592][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326592][2]["RewardEffect"]["Effect"] = "angelwing"


	tCumulativeConsumptionReward_Pack[3326592][3] = {}
	-- ===180天时效翅膀礼包
	-- ===索引:tCumulativeConsumptionReward_Pack[3326592][3]
	-- ===删除:3326592,1
	-- ===
	tCumulativeConsumptionReward_Pack[3326592][3]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326592][3]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326592][3]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326592][3]["DeleteItem"][1]["Id"] = 3326592 -- 【库】180-dayWingsPack[属性:9]
	tCumulativeConsumptionReward_Pack[3326592][3]["RewardWing"] = {}
	tCumulativeConsumptionReward_Pack[3326592][3]["RewardWing"]["TitleType"] = 6015 -- 【库】FlameGlowWings, 【表格】180天FlameGlowWings
	tCumulativeConsumptionReward_Pack[3326592][3]["RewardWing"]["TitleId"] = 6015
	tCumulativeConsumptionReward_Pack[3326592][3]["RewardWing"]["SaveTime"] = 259200 -- 180天时效的[翅膀]:FlameGlowWings, 【需求】180天FlameGlowWings
	tCumulativeConsumptionReward_Pack[3326592][3]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326592][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326592][3]["RewardEffect"]["Effect"] = "angelwing"


	tCumulativeConsumptionReward_Pack[3326592][4] = {}
	-- ===180天时效翅膀礼包
	-- ===索引:tCumulativeConsumptionReward_Pack[3326592][4]
	-- ===删除:3326592,1
	-- ===
	tCumulativeConsumptionReward_Pack[3326592][4]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326592][4]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326592][4]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326592][4]["DeleteItem"][1]["Id"] = 3326592 -- 【库】180-dayWingsPack[属性:9]
	tCumulativeConsumptionReward_Pack[3326592][4]["RewardWing"] = {}
	tCumulativeConsumptionReward_Pack[3326592][4]["RewardWing"]["TitleType"] = 6016 -- 【库】BrightGlowWings, 【表格】180天BrightGlowWings
	tCumulativeConsumptionReward_Pack[3326592][4]["RewardWing"]["TitleId"] = 6016
	tCumulativeConsumptionReward_Pack[3326592][4]["RewardWing"]["SaveTime"] = 259200 -- 180天时效的[翅膀]:BrightGlowWings, 【需求】180天BrightGlowWings
	tCumulativeConsumptionReward_Pack[3326592][4]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326592][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326592][4]["RewardEffect"]["Effect"] = "angelwing"


	tCumulativeConsumptionReward_Pack[3326593] = {}
	-- ===90天时效翅膀礼包
	-- ===索引:tCumulativeConsumptionReward_Pack[3326593][1]
	-- ===删除:3326593,1
	-- ===
	tCumulativeConsumptionReward_Pack[3326593][1] = {}
	tCumulativeConsumptionReward_Pack[3326593][1]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326593][1]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326593][1]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326593][1]["DeleteItem"][1]["Id"] = 3326593 -- 【库】90-dayWingsPack[属性:9]
	tCumulativeConsumptionReward_Pack[3326593][1]["RewardWing"] = {}
	tCumulativeConsumptionReward_Pack[3326593][1]["RewardWing"]["TitleType"] = 6013 -- 【库】EmeraldGlowWing, 【表格】90天EmeraldGlowWings
	tCumulativeConsumptionReward_Pack[3326593][1]["RewardWing"]["TitleId"] = 6013
	tCumulativeConsumptionReward_Pack[3326593][1]["RewardWing"]["SaveTime"] = 129600 -- 90天时效的[翅膀]:EmeraldGlowWing, 【需求】90天EmeraldGlowWings
	tCumulativeConsumptionReward_Pack[3326593][1]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326593][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326593][1]["RewardEffect"]["Effect"] = "angelwing"


	tCumulativeConsumptionReward_Pack[3326593][2] = {}
	-- ===90天时效翅膀礼包
	-- ===索引:tCumulativeConsumptionReward_Pack[3326593][2]
	-- ===删除:3326593,1
	-- ===
	tCumulativeConsumptionReward_Pack[3326593][2]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326593][2]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326593][2]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326593][2]["DeleteItem"][1]["Id"] = 3326593 -- 【库】90-dayWingsPack[属性:9]
	tCumulativeConsumptionReward_Pack[3326593][2]["RewardWing"] = {}
	tCumulativeConsumptionReward_Pack[3326593][2]["RewardWing"]["TitleType"] = 6014 -- 【库】OrangeGlowWings, 【表格】90天OrangeGlowWings
	tCumulativeConsumptionReward_Pack[3326593][2]["RewardWing"]["TitleId"] = 6014
	tCumulativeConsumptionReward_Pack[3326593][2]["RewardWing"]["SaveTime"] = 129600 -- 90天时效的[翅膀]:OrangeGlowWings, 【需求】90天OrangeGlowWings
	tCumulativeConsumptionReward_Pack[3326593][2]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326593][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326593][2]["RewardEffect"]["Effect"] = "angelwing"


	tCumulativeConsumptionReward_Pack[3326593][3] = {}
	-- ===90天时效翅膀礼包
	-- ===索引:tCumulativeConsumptionReward_Pack[3326593][3]
	-- ===删除:3326593,1
	-- ===
	tCumulativeConsumptionReward_Pack[3326593][3]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326593][3]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326593][3]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326593][3]["DeleteItem"][1]["Id"] = 3326593 -- 【库】90-dayWingsPack[属性:9]
	tCumulativeConsumptionReward_Pack[3326593][3]["RewardWing"] = {}
	tCumulativeConsumptionReward_Pack[3326593][3]["RewardWing"]["TitleType"] = 6015 -- 【库】FlameGlowWings, 【表格】90天FlameGlowWings
	tCumulativeConsumptionReward_Pack[3326593][3]["RewardWing"]["TitleId"] = 6015
	tCumulativeConsumptionReward_Pack[3326593][3]["RewardWing"]["SaveTime"] = 129600 -- 90天时效的[翅膀]:FlameGlowWings, 【需求】90天FlameGlowWings
	tCumulativeConsumptionReward_Pack[3326593][3]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326593][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326593][3]["RewardEffect"]["Effect"] = "angelwing"


	tCumulativeConsumptionReward_Pack[3326593][4] = {}
	-- ===90天时效翅膀礼包
	-- ===索引:tCumulativeConsumptionReward_Pack[3326593][4]
	-- ===删除:3326593,1
	-- ===
	tCumulativeConsumptionReward_Pack[3326593][4]["LogId"] = 12001687
	tCumulativeConsumptionReward_Pack[3326593][4]["DeleteItem"] = {}
	tCumulativeConsumptionReward_Pack[3326593][4]["DeleteItem"][1] = {}
	tCumulativeConsumptionReward_Pack[3326593][4]["DeleteItem"][1]["Id"] = 3326593 -- 【库】90-dayWingsPack[属性:9]
	tCumulativeConsumptionReward_Pack[3326593][4]["RewardWing"] = {}
	tCumulativeConsumptionReward_Pack[3326593][4]["RewardWing"]["TitleType"] = 6016 -- 【库】BrightGlowWings, 【表格】90天BrightGlowWings
	tCumulativeConsumptionReward_Pack[3326593][4]["RewardWing"]["TitleId"] = 6016
	tCumulativeConsumptionReward_Pack[3326593][4]["RewardWing"]["SaveTime"] = 129600 -- 90天时效的[翅膀]:BrightGlowWings, 【需求】90天BrightGlowWings
	tCumulativeConsumptionReward_Pack[3326593][4]["RewardEffect"] = {}
	tCumulativeConsumptionReward_Pack[3326593][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCumulativeConsumptionReward_Pack[3326593][4]["RewardEffect"]["Effect"] = "angelwing"




local tCumulativeConsumptionReward_Stc = {}
--记录礼包中获得的纪念币数量
tCumulativeConsumptionReward_Stc["CoinNum"] = {}
tCumulativeConsumptionReward_Stc["CoinNum"]["EventType"] = 207
tCumulativeConsumptionReward_Stc["CoinNum"]["DataType"] = 75

local tCumulativeConsumptionReward_Data = {}
tCumulativeConsumptionReward_Data["CoinNum"] = {}
tCumulativeConsumptionReward_Data["CoinNum"][3326548] = 81 
tCumulativeConsumptionReward_Data["CoinNum"][3326549] = 81 
tCumulativeConsumptionReward_Data["CoinNum"][3326550] = 144 
tCumulativeConsumptionReward_Data["CoinNum"][3326551] = 36 
tCumulativeConsumptionReward_Data["CoinNum"][3326552] = 35 
tCumulativeConsumptionReward_Data["CoinNum"][3326553] = 9 
tCumulativeConsumptionReward_Data["CoinNum"][3326554] = 315 
tCumulativeConsumptionReward_Data["CoinNum"][3326555] = 10 
tCumulativeConsumptionReward_Data["CoinNum"][3326556] = 15 
tCumulativeConsumptionReward_Data["CoinNum"][3326557] = 15 
tCumulativeConsumptionReward_Data["CoinNum"][3326558] = 28 
tCumulativeConsumptionReward_Data["CoinNum"][3326559] = 28 
tCumulativeConsumptionReward_Data["CoinNum"][3326560] = 28 
tCumulativeConsumptionReward_Data["CoinNum"][3326561] = 28 
tCumulativeConsumptionReward_Data["CoinNum"][3326562] = 25 

tCumulativeConsumptionReward_Data["RankingList"] = {}
tCumulativeConsumptionReward_Data["RankingList"]["Global"] = {53797,53798,53799,53800,53823}

tCumulativeConsumptionReward_Data["RankingList"]["CoinNum"] = {}

-- tCumulativeConsumptionReward_Data["RankingList"]["CoinNum"][1] = 

-- 排行榜参数 globalId  上榜条件 存储Pro 发奖Action
tCumulativeConsumptionReward_Data["RankData"] = {}
tCumulativeConsumptionReward_Data["RankData"][1] = {53797,12000,0,574934}
tCumulativeConsumptionReward_Data["RankData"][2] = {53797,8000,2,574935}
tCumulativeConsumptionReward_Data["RankData"][3] = {53797,8000,4,574935}
tCumulativeConsumptionReward_Data["RankData"][4] = {53798,5000,0,574936}
tCumulativeConsumptionReward_Data["RankData"][5] = {53798,5000,2,574936}
tCumulativeConsumptionReward_Data["RankData"][6] = {53798,5000,4,574936}
tCumulativeConsumptionReward_Data["RankData"][7] = {53799,5000,0,574936}
tCumulativeConsumptionReward_Data["RankData"][8] = {53799,5000,2,574936}
tCumulativeConsumptionReward_Data["RankData"][9] = {53799,5000,4,574936}
tCumulativeConsumptionReward_Data["RankData"][10] = {53800,5000,0,574936}
tCumulativeConsumptionReward_Data["RankData"][11] = {53800,5000,2,0}
tCumulativeConsumptionReward_Data["RankData"][12] = {53800,5000,4,0}
tCumulativeConsumptionReward_Data["RankData"][13] = {53823,5000,0,0}


tCumulativeConsumptionReward_Data["RankReward"] = {3326589,3326590,3326591}

tCumulativeConsumptionReward_Data["HairId"] = {}
tCumulativeConsumptionReward_Data["HairId"][3326583] = 30
tCumulativeConsumptionReward_Data["HairId"][3326584] = 35
tCumulativeConsumptionReward_Data["HairId"][3326585] = 63
tCumulativeConsumptionReward_Data["HairId"][3326586] = 38
tCumulativeConsumptionReward_Data["HairId"][3326587] = 32

tCumulativeConsumptionReward_Data["NpcId"] = {}
tCumulativeConsumptionReward_Data["NpcId"][1] = 25055

local tCumulativeConsumptionReward_Log = {}
tCumulativeConsumptionReward_Log["DeleteLog"] = "0,0,%d,%d,0,12001687,2,0,0"



---------------------------------------------------逻辑部分------------------------
--天石商店
function CumulativeConsumptionReward_OpenShop(nNpcId)
	if Sys_ChkFullTime(tActivityTime["CumulativeConsumptionReward"]["ActivityTime"]) then 
		User_OpenDialog(0,nNpcId)
	end
	-- if CommonFunc_GetAfterActivityTime(tActivityTime["SummerSpecialBenefit"]["ActivityTime"]) then 
	-- LinkNpcGossipFunc_New(nNpcId,"1-2")
		-- return
	-- end
end
-- 开启包含硬币的礼包
function CumulativeConsumptionReward_OpenCoinPack(nItemId,nNum)
	if nNum == nil then
		nNum = 0 
	end 
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return
	end 
	local nCoinNum = tCumulativeConsumptionReward_Data["CoinNum"][nItemId]
	local nEventType1 = tCumulativeConsumptionReward_Stc["CoinNum"]["EventType"]
	local nDataType1 = tCumulativeConsumptionReward_Stc["CoinNum"]["DataType"]
	local nData1 = Get_UserStatisticValue(nEventType1,nDataType1)
	if Sys_ChkFullTime(tActivityTime["CumulativeConsumptionReward"]["ActivityTime"]) then 
		-- User_TalkChannel2005("nCoinNum =" ..nCoinNum)
		Task_AddStatistic(nEventType1,nDataType1,nCoinNum,1)
		Task_SetStcTimestamp(nEventType1,nDataType1,0)
	end 
	if nNum == 0 then 
		RewardTemplate_UseItemAndMsg(tCumulativeConsumptionReward_Pack[nItemId])
	else
		RewardTemplate_UseItemAndMsg(tCumulativeConsumptionReward_Pack[nItemId][nNum])
	end 
	CumulativeConsumptionReward_RankingList()
end 

function CumulativeConsumptionReward_OpenCoinRandomPack(nItemId)
	local nCoinNum = tCumulativeConsumptionReward_Data["CoinNum"][nItemId]
	local nEventType1 = tCumulativeConsumptionReward_Stc["CoinNum"]["EventType"]
	local nDataType1 = tCumulativeConsumptionReward_Stc["CoinNum"]["DataType"]
	local nData1 = Get_UserStatisticValue(nEventType1,nDataType1)
	if Sys_ChkFullTime(tActivityTime["CumulativeConsumptionReward"]["ActivityTime"]) then 
		Task_AddStatistic(nEventType1,nDataType1,nCoinNum,1)
		Task_SetStcTimestamp(nEventType1,nDataType1,0)
	end 
	if not Sys_ChkFullTime(tActivityTime["CumulativeConsumptionReward"]["DeleteTime"]) then 
		local nItemNum = Get_CountItemType(nItemId,0)
		if Item_DelMulItem(nItemId,nItemId,nItemNum) then
			local tTextLog = string.format(tCumulativeConsumptionReward_Log["DeleteLog"],nItemId,nItemNum)
			Sys_SaveActionFestivalLog(tTextLog)
			return
		end 
	end 
	
	RewardTemplate_RandomReward(tCumulativeConsumptionReward_Pack,nItemId)
	CumulativeConsumptionReward_RankingList()
end 

-- 排行榜
function CumulativeConsumptionReward_RankingList()
	local nEventType1 = tCumulativeConsumptionReward_Stc["CoinNum"]["EventType"]
	local nDataType1 = tCumulativeConsumptionReward_Stc["CoinNum"]["DataType"]
	local nData1 = Get_UserStatisticValue(nEventType1,nDataType1)
	local nUserIds = Get_UserId()
	local sNames = Get_UserName()
	-- User_TalkChannel2005("nUserIds =" ..nUserIds)
	-- User_TalkChannel2005("sNames =" ..sNames)
	local nYesOrNo = 0
	if not Sys_ChkFullTime(tActivityTime["CumulativeConsumptionReward"]["ActivityTime"]) then 
		return
	end 
	-- 不足5000纪念币不上榜
	if nData1 < 5000 then 
		return
	end 
	-- 把排行榜Global中的纪念币数量和玩家当前纪念币数量存入临时表
	-- for k,v in ipairs(tCumulativeConsumptionReward_Data["RankingList"]["Global"]) do
		-- for i = 0,5,2 do
			-- local nGlobalId = v
			-- local nCoinTotal = Get_SysDynaGlobalData(nGlobalId,i)
			-- local nUserId = Get_SysDynaGlobalData(nGlobalId,i+1)
			-- local sUserName = Get_SysDynaGlobalDataStr(nGlobalId,i)
			
			-- local nTableNum = (i+2)%2 + ((k-1)*3)
			-- if nTableNum == 11 then 
				-- nCoinTotal = nData1
			-- end 
			-- tCumulativeConsumptionReward_Data["RankingList"]["CoinNum"][nTableNum] = {}
			-- tCumulativeConsumptionReward_Data["RankingList"]["CoinNum"][nTableNum][1] = nCoinTotal
			-- tCumulativeConsumptionReward_Data["RankingList"]["CoinNum"][nTableNum][2] = nUserId
			-- tCumulativeConsumptionReward_Data["RankingList"]["CoinNum"][nTableNum][3] = sUserName
		-- end 
	-- end 
	
	for k = 1,13,1 do 
		local nGlobalId = tCumulativeConsumptionReward_Data["RankData"][k][1]
		local nPro1 = tCumulativeConsumptionReward_Data["RankData"][k][3]
		local nCoinTotal = Get_SysDynaGlobalData(nGlobalId,nPro1)
		local nUserId = Get_SysDynaGlobalData(nGlobalId,nPro1+1)
		local sUserName = Get_SysDynaGlobalDataStr(nGlobalId,nPro1)
		
		if nUserIds == nUserId then  --判断玩家是否已经在排行榜上
			nCoinTotal = nData1
			nYesOrNo = 1 
		end 
		
		tCumulativeConsumptionReward_Data["RankingList"]["CoinNum"][k] = {}
		tCumulativeConsumptionReward_Data["RankingList"]["CoinNum"][k][1] = nCoinTotal
		tCumulativeConsumptionReward_Data["RankingList"]["CoinNum"][k][2] = nUserId
		tCumulativeConsumptionReward_Data["RankingList"]["CoinNum"][k][3] = sUserName
	end 
	if nYesOrNo == 1 then   --玩家本身就在排行榜上第14个的纪念币数量直接记0
		tCumulativeConsumptionReward_Data["RankingList"]["CoinNum"][14] = {}
		tCumulativeConsumptionReward_Data["RankingList"]["CoinNum"][14][1] = 0
		tCumulativeConsumptionReward_Data["RankingList"]["CoinNum"][14][2] = 0
		tCumulativeConsumptionReward_Data["RankingList"]["CoinNum"][14][3] = ""
		
		
	else                    --玩家原本不在排行榜上 第14个记录当前玩家的纪念币数量等信息
		tCumulativeConsumptionReward_Data["RankingList"]["CoinNum"][14] = {}
		tCumulativeConsumptionReward_Data["RankingList"]["CoinNum"][14][1] = nData1
		tCumulativeConsumptionReward_Data["RankingList"]["CoinNum"][14][2] = nUserIds
		tCumulativeConsumptionReward_Data["RankingList"]["CoinNum"][14][3] = sNames
		
	end 
		
	-- 临时表中的纪念币数量重新排序
	for a=1,14,1 do
		for b=1,14-a,1 do
			if (tCumulativeConsumptionReward_Data["RankingList"]["CoinNum"][b][1] < tCumulativeConsumptionReward_Data["RankingList"]["CoinNum"][b+1][1]) then 
				-- local c = tCumulativeConsumptionReward_Data["RankingList"]["CoinNum"][b][1]
				tCumulativeConsumptionReward_Data["RankingList"]["CoinNum"][b],tCumulativeConsumptionReward_Data["RankingList"]["CoinNum"][b+1] = tCumulativeConsumptionReward_Data["RankingList"]["CoinNum"][b+1],tCumulativeConsumptionReward_Data["RankingList"]["CoinNum"][b]
				-- tCumulativeConsumptionReward_Data["RankingList"]["CoinNum"][b+1][1] = c
			end 
		end 
	end 
	-- 清空Global
	for v = 1,13,1 do 
		local nGlobalId3 = tCumulativeConsumptionReward_Data["RankData"][v][1]
		local nPro3 = tCumulativeConsumptionReward_Data["RankData"][v][3]
		local nCoinNum3 = 0
		local nUserId3 = 0
		local sUserName3 = ""
		Sys_SetSynaGlobalData(nGlobalId3,nPro3,nCoinNum3)
		Sys_SetSynaGlobalData(nGlobalId3,nPro3+1,nUserId3)
		Sys_SetSynaGlobalDataStr(nGlobalId3,nPro3,sUserName3)
	end 
	--临时表重新排序后的数据存进Global
	local nAdd = 0 
	for j = 1,13,1 do 
		local nCoinNum2 = tCumulativeConsumptionReward_Data["RankingList"]["CoinNum"][j][1]
		local nUserId2 = tCumulativeConsumptionReward_Data["RankingList"]["CoinNum"][j][2]
		local sUserName2 = tCumulativeConsumptionReward_Data["RankingList"]["CoinNum"][j][3]
		-- local nNumRank = math.ceil(i/3)
		-- local nGlobalId = tCumulativeConsumptionReward_Data["RankingList"]["Global"][nNumRank]
		local nMininum = tCumulativeConsumptionReward_Data["RankData"][j+nAdd][2]
		local nCalLoop = 0
		while nCoinNum2 < nMininum do  -- 判断临时表中的排序的纪念币数量是否够上排行榜的各个档次
			if nCalLoop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 CumulativeConsumptionReward_RankingList 中 [while]循环超过1000次！")
				break
			end
			nCalLoop = nCalLoop + 1
			nAdd = nAdd + 1
			if nAdd + j > 13 then 
				return
			end
			nMininum = tCumulativeConsumptionReward_Data["RankData"][j+nAdd][2]
		end 
		local nPro = tCumulativeConsumptionReward_Data["RankData"][j+nAdd][3]
		local nGlobalId = tCumulativeConsumptionReward_Data["RankData"][j+nAdd][1]
		Sys_SetSynaGlobalData(nGlobalId,nPro,nCoinNum2)
		Sys_SetSynaGlobalData(nGlobalId,nPro+1,nUserId2)
		Sys_SetSynaGlobalDataStr(nGlobalId,nPro,sUserName2)
		if nGlobalId == 53823 and nPro == 0 then 
			return
		end
	end
end 
-- 排行榜对白显示
function CumulativeConsumptionReward_RankingListText(nTextPro)
	local nUserId = Get_UserId()
	-- local nRank = 0
	for i=1,10,1 do
		local nGlobalId = tCumulativeConsumptionReward_Data["RankData"][i][1]
		local nPro = tCumulativeConsumptionReward_Data["RankData"][i][3]
		local nGlobalCoinNum = Get_SysDynaGlobalData(nGlobalId,nPro)
		local nGlobalUserId = Get_SysDynaGlobalData(nGlobalId,nPro+1)
		local sGlobalUserName = Get_SysDynaGlobalDataStr(nGlobalId,nPro)
		sGlobalUserName = Sys_StringGSubTip(sGlobalUserName)
		-- if nGlobalUserId == nUserId then
			-- nRank = i
		-- end 
		local nTextnum = i+3
		if nGlobalUserId == 0 then 
			nGlobalCoinNum = 0 
			sGlobalUserName = tCumulativeConsumptionReward_Text["null"]
		end 
		-- tNpcGossip[25056]["Text1" .. nTextPro ..nTextnum] = string.format(tCumulativeConsumptionReward_Text[25056]["Text1" .. nTextPro ..nTextnum],sGlobalUserName,nGlobalCoinNum)
		tNpcGossip[25056]["Text1" .. nTextPro ..nTextnum] = Sys_Alignment(i,3,sGlobalUserName,33,nGlobalCoinNum,73) .. "\n"
	end 
	local nEventType1 = tCumulativeConsumptionReward_Stc["CoinNum"]["EventType"]
	local nDataType1 = tCumulativeConsumptionReward_Stc["CoinNum"]["DataType"]
	local nData1 = Get_UserStatisticValue(nEventType1,nDataType1)
	
	if nTextPro == 3 then 
		tNpcGossip[25056]["Text1318"] = string.format(tCumulativeConsumptionReward_Text[25056]["Text1318"],nData1)
		if Sys_ChkFullTime(tActivityTime["CumulativeConsumptionReward"]["ActivityTime"]) then 
			return true
		else
			return false
		end 
	elseif nTextPro == 2 then 
		tNpcGossip[25056]["Text1215"] = string.format(tCumulativeConsumptionReward_Text[25056]["Text1215"],nData1)
		if CommonFunc_GetAfterActivityTime(tActivityTime["CumulativeConsumptionReward"]["ActivityTime"]) then 
			return true
		else
			return false
		end 
	end 
end 

-- 邮件发奖
function CumulativeConsumptionReward_MailReward()
	local nGolobalId = tCumulativeConsumptionReward_Data["RankData"][13][1]
	local ndata5 = Get_SysDynaGlobalData5(nGolobalId)
	if ndata5 >= 1 then 
		return
	end 
	local sSender = tCumulativeConsumptionReward_Text["Email"]["Name"]
	local sTitle = tCumulativeConsumptionReward_Text["Email"]["ZhuTi"]
	for i=1,10,1 do
		local nGlobalId = tCumulativeConsumptionReward_Data["RankData"][i][1]
		local nPro = tCumulativeConsumptionReward_Data["RankData"][i][3]
		local nGlobalUserId = Get_SysDynaGlobalData(nGlobalId,nPro+1)
		local sContent = string.format(tCumulativeConsumptionReward_Text["Email"]["NeiRong"],i)
		local nMailActionId = tCumulativeConsumptionReward_Data["RankData"][i][4]
		if nGlobalUserId ~= 0 then 
			Sys_SendMail(nGlobalUserId,0,0,nMailActionId,0,7,sSender,sTitle,sContent)
		end 
	end 
	Sys_SetSynaGlobalData5(nGolobalId,1)
end 

function CumulativeConsumptionReward_ChoicePack(nItemId,nNum)
	
	local bJudge = TermsOfUse_Main(nItemId,tCumulativeConsumptionReward_Pack[nItemId][nNum])
	if not bJudge then
		return
	end
	RewardTemplate_UseItemAndMsg(tCumulativeConsumptionReward_Pack[nItemId][nNum])
end 

-- 时效发型
function CumulativeConsumptionReward_Hair(nItemId,nNum)
	if nNum == nil then 
		nNum = 0
	end 
	local nHairId = tCumulativeConsumptionReward_Data["HairId"][nItemId]
	-- if nNum == 0 then 
		-- nHairId = tCumulativeConsumptionReward_Data["HairId"][nItemId]
	-- elseif
		-- nHairId = tCumulativeConsumptionReward_Data["HairId"][nItemId][1]
	-- elseif
		-- nHairId = tCumulativeConsumptionReward_Data["HairId"][nItemId][2]
	-- end 
	-- User_HairFaceCheckExist(0,nHairId) 
	-- User_ChangeUserHair(nHairId)   -- 永久
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return
	end 
	if Item_DelItem(nItemId) then 
		local tTextLog = string.format(tCumulativeConsumptionReward_Log["DeleteLog"],nItemId,1)
		Sys_SaveActionFestivalLog(tTextLog)
		User_NotifyChgHairstyle(nHairId,43200)
	end 
end 

function CumulativeConsumptionReward_FindNpc(nItemId)
	if CommonFunc_GetBeforeActivityTime(tActivityTime["CumulativeConsumptionReward"]["ActivityTime"]) then 
		return
	end 
	if CommonFunc_GetAfterActivityTime(tActivityTime["CumulativeConsumptionReward"]["ActivityTime"]) then 
		local nItemNum = Get_CountItemType(nItemId,0)
		local tTextLog = string.format(tCumulativeConsumptionReward_Log["DeleteLog"],nItemId,nItemNum)
		if Item_DelMulItem(nItemId,nItemId,nItemNum) then 
			Sys_SaveActionFestivalLog(tTextLog)
		end 
		return
	end 
	NpcPosition_PathFind(tCumulativeConsumptionReward_Data["NpcId"][1])
end 

--------------------------------------------------对白部分
--熊猫仙人
tNpcFace[5051] = 2580
tNpcGossip[25054] = tNpcGossip[25054] or DefaultNpc:new{}
tNpcGossip[25054]["OptionHidden"] = 1
tNpcGossip[25054]["DialogueText"] = tCumulativeConsumptionReward_Text[25054]
--活动前
tNpcGossip[25054]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[25054]["tOption1-1"] = {111}
tNpcGossip[25054]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["CumulativeConsumptionReward"]["ActivityTime"])
end
--活动后
tNpcGossip[25054]["Text1-2"] = {121}
tNpcGossip[25054]["tOption1-2"] = {121}
tNpcGossip[25054]["ChkFunc1-2"] = function ()
	return CommonFunc_GetAfterActivityTime(tActivityTime["CumulativeConsumptionReward"]["ActivityTime"])
end
--活动中
tNpcGossip[25054]["Text1-3"] = {131,132,133,134,135}
tNpcGossip[25054]["tOption1-3"] = {132,133}
tNpcGossip[25054]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tActivityTime["CumulativeConsumptionReward"]["ActivityTime"])
end
-- tNpcGossip[25054]["OptionFunc131"] = "CumulativeConsumptionReward_OpenShop</N>25167"
tNpcGossip[25054]["OptionFunc132"] = "CumulativeConsumptionReward_OpenShop</N>25054"
-- tNpcGossip[25054]["OptionPoint131"] = "2-1"

--熊猫商贩
tNpcFace[2129] = 2580
tNpcGossip[25055] = tNpcGossip[25055] or DefaultNpc:new{}
tNpcGossip[25055]["OptionHidden"] = 1
tNpcGossip[25055]["DialogueText"] = tCumulativeConsumptionReward_Text[25055]
--活动前
tNpcGossip[25055]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[25055]["tOption1-1"] = {111}
tNpcGossip[25055]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["CumulativeConsumptionReward"]["ActivityTime"])
end
--活动后
tNpcGossip[25055]["Text1-2"] = {121}
tNpcGossip[25055]["tOption1-2"] = {121}
tNpcGossip[25055]["ChkFunc1-2"] = function ()
	return CommonFunc_GetAfterActivityTime(tActivityTime["CumulativeConsumptionReward"]["ActivityTime"])
end
--活动中
tNpcGossip[25055]["Text1-3"] = {131,132,133,134,135}
tNpcGossip[25055]["tOption1-3"] = {131,132,133}
tNpcGossip[25055]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tActivityTime["CumulativeConsumptionReward"]["ActivityTime"])
end
tNpcGossip[25055]["OptionFunc131"] = "User_OpenExchangeShop</N>25055"

--排行榜
-- tNpcFace[2114] = 21
tNpcGossip[25056] = tNpcGossip[25056] or DefaultNpc:new{}
tNpcGossip[25056]["OptionHidden"] = 1
tNpcGossip[25056]["DialogueText"] = tCumulativeConsumptionReward_Text[25056]
--活动前
tNpcGossip[25056]["Text1-1"] = {111}
tNpcGossip[25056]["tOption1-1"] = {111}
tNpcGossip[25056]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["CumulativeConsumptionReward"]["ActivityTime"])
end
--活动后
tNpcGossip[25056]["Text1-2"] = {121,122,123,124,125,126,127,128,129,1210,1211,1212,1213,1214,1216}
tNpcGossip[25056]["tOption1-2"] = {121}
tNpcGossip[25056]["ChkFunc1-2"] = function ()
	return CumulativeConsumptionReward_RankingListText(2)
end
--活动中
tNpcGossip[25056]["Text1-3"] = {131,132,133,134,135,136,137,138,139,1310,1311,1312,1313,1320,1314,1315,1316,1317,1318,1319}
tNpcGossip[25056]["tOption1-3"] = {131,132}
tNpcGossip[25056]["ChkFunc1-3"] = function ()
	return CumulativeConsumptionReward_RankingListText(3)
end
tNpcGossip[25056]["OptionPoint131"] = "2-1"
-- 接1、查看排行奖励
tNpcGossip[25056]["Text2-1"] = {211,212,213,214,215,216,217,218,219}
tNpcGossip[25056]["tOption2-1"] = {211}



-- 30天时效玫瑰风暴武器外套（赠）礼盒
tItemFace[3326556] = 971
tItem[3326556] = tItem[3326556] or {}
tItem[3326556]["DialogueText"] = tCumulativeConsumptionReward_Text["Choice"]
tItem[3326556]["Text1-1"] = {111}
tItem[3326556]["tOption1-1"] = {111,112}
tItem[3326556]["OptionFunc111"] = "CumulativeConsumptionReward_OpenCoinPack</N>3326556</N>2"
tItem[3326556]["OptionFunc112"] = "CumulativeConsumptionReward_OpenCoinPack</N>3326556</N>1"

-- 30天时效心有灵犀武器外套（赠）礼盒
tItemFace[3326557] = 554
tItem[3326557] = tItem[3326557] or {}
tItem[3326557]["DialogueText"] = tCumulativeConsumptionReward_Text["Choice"]
tItem[3326557]["Text1-1"] = {111}
tItem[3326557]["tOption1-1"] = {111,112}
tItem[3326557]["OptionFunc111"] = "CumulativeConsumptionReward_OpenCoinPack</N>3326557</N>2"
tItem[3326557]["OptionFunc112"] = "CumulativeConsumptionReward_OpenCoinPack</N>3326557</N>1"

-- -- 30天时效酷酷喵星杖【魅力版】武器外套（赠）礼盒
-- tItemFace[3326558] = 524
-- tItem[3326558] = tItem[3326558] or {}
-- tItem[3326558]["DialogueText"] = tCumulativeConsumptionReward_Text["Choice"]
-- tItem[3326558]["Text1-1"] = {111}
-- tItem[3326558]["tOption1-1"] = {111,112}
-- tItem[3326558]["OptionFunc111"] = "CumulativeConsumptionReward_OpenCoinPack</N>3326558</N>1"
-- tItem[3326558]["OptionFunc112"] = "CumulativeConsumptionReward_OpenCoinPack</N>3326558</N>2"

-- -- 30天时效绒绒喵星杖【魅力版】武器外套（赠）礼盒
-- tItemFace[3326559] = 524
-- tItem[3326559] = tItem[3326559] or {}
-- tItem[3326559]["DialogueText"] = tCumulativeConsumptionReward_Text["Choice"]
-- tItem[3326559]["Text1-1"] = {111}
-- tItem[3326559]["tOption1-1"] = {111,112}
-- tItem[3326559]["OptionFunc111"] = "CumulativeConsumptionReward_OpenCoinPack</N>3326559</N>1"
-- tItem[3326559]["OptionFunc112"] = "CumulativeConsumptionReward_OpenCoinPack</N>3326559</N>2"

-- 30天时效比翼双飞武器外套（赠）礼盒
tItemFace[3326560] = 847
tItem[3326560] = tItem[3326560] or {}
tItem[3326560]["DialogueText"] = tCumulativeConsumptionReward_Text["Choice"]
tItem[3326560]["Text1-1"] = {111}
tItem[3326560]["tOption1-1"] = {111,112}
tItem[3326560]["OptionFunc111"] = "CumulativeConsumptionReward_OpenCoinPack</N>3326560</N>2"
tItem[3326560]["OptionFunc112"] = "CumulativeConsumptionReward_OpenCoinPack</N>3326560</N>1"

-- 30天时效巧克力甜心【炫彩】武器外套（赠）礼盒
tItemFace[3326561] = 957
tItem[3326561] = tItem[3326561] or {}
tItem[3326561]["DialogueText"] = tCumulativeConsumptionReward_Text["Choice"]
tItem[3326561]["Text1-1"] = {111}
tItem[3326561]["tOption1-1"] = {111,112}
tItem[3326561]["OptionFunc111"] = "CumulativeConsumptionReward_OpenCoinPack</N>3326561</N>2"
tItem[3326561]["OptionFunc112"] = "CumulativeConsumptionReward_OpenCoinPack</N>3326561</N>1"

-- 30天时效十里桃花·三生三世武器外套（赠）礼盒
tItemFace[3326562] = 970
tItem[3326562] = tItem[3326562] or {}
tItem[3326562]["DialogueText"] = tCumulativeConsumptionReward_Text["Choice"]
tItem[3326562]["Text1-1"] = {111}
tItem[3326562]["tOption1-1"] = {111,112}
tItem[3326562]["OptionFunc111"] = "CumulativeConsumptionReward_OpenCoinPack</N>3326562</N>2"
tItem[3326562]["OptionFunc112"] = "CumulativeConsumptionReward_OpenCoinPack</N>3326562</N>1"

-- 30天时效DelicateFoxEars礼盒
tItemFace[3326583] = 576
tItem[3326583] = tItem[3326583] or {}
tItem[3326583]["DialogueText"] = tCumulativeConsumptionReward_Text["ChoiceHair"]
tItem[3326583]["Text1-1"] = {111}
tItem[3326583]["tOption1-1"] = {111,112}
tItem[3326583]["OptionFunc111"] = "CumulativeConsumptionReward_Hair</N>3326583</N>1"
tItem[3326583]["OptionFunc112"] = "CumulativeConsumptionReward_Hair</N>3326583</N>2"

-- 30天时效MagicFate礼盒
tItemFace[3326586] = 953
tItem[3326586] = tItem[3326586] or {}
tItem[3326586]["DialogueText"] = tCumulativeConsumptionReward_Text["ChoiceHair"]
tItem[3326586]["Text1-1"] = {111}
tItem[3326586]["tOption1-1"] = {111,112}
tItem[3326586]["OptionFunc111"] = "CumulativeConsumptionReward_Hair</N>3326586</N>1"
tItem[3326586]["OptionFunc112"] = "CumulativeConsumptionReward_Hair</N>3326586</N>2"

-- 30天时效LoveHat礼盒
tItemFace[3326587] = 963
tItem[3326587] = tItem[3326587] or {}
tItem[3326587]["DialogueText"] = tCumulativeConsumptionReward_Text["ChoiceHair"]
tItem[3326587]["Text1-1"] = {111}
tItem[3326587]["tOption1-1"] = {111,112}
tItem[3326587]["OptionFunc111"] = "CumulativeConsumptionReward_Hair</N>3326587</N>1"
tItem[3326587]["OptionFunc112"] = "CumulativeConsumptionReward_Hair</N>3326587</N>2"

-- 180天时效翅膀礼包
tItemFace[3326592] = 1441
tItem[3326592] = tItem[3326592] or {}
tItem[3326592]["DialogueText"] = tCumulativeConsumptionReward_Text[3326592]
tItem[3326592]["Text1-1"] = {111}
tItem[3326592]["tOption1-1"] = {111,112,113,114}
tItem[3326592]["OptionFunc111"] = "CumulativeConsumptionReward_ChoicePack</N>3326592</N>1"
tItem[3326592]["OptionFunc112"] = "CumulativeConsumptionReward_ChoicePack</N>3326592</N>2"
tItem[3326592]["OptionFunc113"] = "CumulativeConsumptionReward_ChoicePack</N>3326592</N>3"
tItem[3326592]["OptionFunc114"] = "CumulativeConsumptionReward_ChoicePack</N>3326592</N>4"

-- 90天时效翅膀礼包
tItemFace[3326593] = 1668
tItem[3326593] = tItem[3326593] or {}
tItem[3326593]["DialogueText"] = tCumulativeConsumptionReward_Text[3326593]
tItem[3326593]["Text1-1"] = {111}
tItem[3326593]["tOption1-1"] = {111,112,113,114}
tItem[3326593]["OptionFunc111"] = "CumulativeConsumptionReward_ChoicePack</N>3326593</N>1"
tItem[3326593]["OptionFunc112"] = "CumulativeConsumptionReward_ChoicePack</N>3326593</N>2"
tItem[3326593]["OptionFunc113"] = "CumulativeConsumptionReward_ChoicePack</N>3326593</N>3"
tItem[3326593]["OptionFunc114"] = "CumulativeConsumptionReward_ChoicePack</N>3326593</N>4"






tItem[3326548] = tItem[3326548] or {}
tItem[3326548]["Function"] = function(nItemId,sItemName)
	local nUserId = Get_UserId()
	local bJudge = TermsOfUse_Main(nItemId,tCumulativeConsumptionReward_Pack[nItemId])
	if not bJudge then
		return
	end
	CumulativeConsumptionReward_OpenCoinPack(nItemId)
end

tItem[3326549] = tItem[3326548] or {}
tItem[3326550] = tItem[3326548] or {}
tItem[3326551] = tItem[3326548] or {}
tItem[3326552] = tItem[3326548] or {}
tItem[3326553] = tItem[3326548] or {}
tItem[3326554] = tItem[3326548] or {}


tItem[3326555] = tItem[3326555] or {}
tItem[3326555]["Function"] = function(nItemId,sItemName)
	local bJudge = TermsOfUse_Main(nItemId,tCumulativeConsumptionReward_Pack[nItemId])
	if not bJudge then
		return
	end
	-- RewardTemplate_RandomReward(tCumulativeConsumptionReward_Pack,nItemId)
	CumulativeConsumptionReward_OpenCoinRandomPack(nItemId)
end


-- tItem[3326556] = tItem[3326548] or {}
-- tItem[3326557] = tItem[3326548] or {}
tItem[3326558] = tItem[3326548] or {}
tItem[3326559] = tItem[3326548] or {}
-- tItem[3326560] = tItem[3326548] or {}
-- tItem[3326561] = tItem[3326548] or {}
-- tItem[3326562] = tItem[3326548] or {}

tItem[3326563] = tItem[3326563] or {}
tItem[3326563]["Function"] = function(nItemId,sItemName)
	local bJudge = TermsOfUse_Main(nItemId,tCumulativeConsumptionReward_Pack[nItemId])
	if not bJudge then
		return
	end
	RewardTemplate_UseItemAndMsg(tCumulativeConsumptionReward_Pack[nItemId])
end
tItem[3326564] = tItem[3326563] or {}
tItem[3326565] = tItem[3326563] or {}
tItem[3326566] = tItem[3326563] or {}
tItem[3326567] = tItem[3326563] or {}
tItem[3326568] = tItem[3326563] or {}
tItem[3326569] = tItem[3326563] or {}
tItem[3326570] = tItem[3326563] or {}
tItem[3326571] = tItem[3326563] or {}
tItem[3326572] = tItem[3326563] or {}
tItem[3326573] = tItem[3326563] or {}
tItem[3326574] = tItem[3326563] or {}
tItem[3326575] = tItem[3326563] or {}

tItem[3326576] = tItem[3326563] or {}
tItem[3326577] = tItem[3326563] or {}
tItem[3326578] = tItem[3326563] or {}
tItem[3326579] = tItem[3326563] or {}
tItem[3326580] = tItem[3326563] or {}
tItem[3326581] = tItem[3326563] or {}
tItem[3326582] = tItem[3326563] or {}

tItem[3326588] = tItem[3326563] or {}

tItem[3326589] = tItem[3326563] or {}
tItem[3326590] = tItem[3326563] or {}
tItem[3326591] = tItem[3326563] or {}

tItem[3326584] = tItem[3326584] or {}
tItem[3326584]["Function"] = function(nItemId,sItemName)
	CumulativeConsumptionReward_Hair(nItemId)
end
tItem[3326585] = tItem[3326584] or {}

tItem[3326547] = tItem[3326547] or {}
tItem[3326547]["Function"] = function(nItemId,sItemName)
	CumulativeConsumptionReward_FindNpc(nItemId)
end

---------------------------------------------时间自检
--邮件发奖
tCumulativeConsumptionReward_Mail = {}
tCumulativeConsumptionReward_Mail["ActivityTime"] = tActivityTime["CumulativeConsumptionReward"]["MailTime"]
tCumulativeConsumptionReward_Mail["Type"] = 6
tCumulativeConsumptionReward_Mail["TimeType"] = 1
tCumulativeConsumptionReward_Mail["Multiple"] = {}
tCumulativeConsumptionReward_Mail["Multiple"][1] = "12-12 00:00 12-12 00:03"
tCumulativeConsumptionReward_Mail["Func"] = CumulativeConsumptionReward_MailReward
table.insert(tSystemTime_InitialData,tCumulativeConsumptionReward_Mail)

