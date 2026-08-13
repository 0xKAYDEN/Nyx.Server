------------------------------------------------------------------------------------
--Name：       190815[简体征服][活动脚本]全球中秋博饼活动-活动二（9.10-9.23）
--Creator:      陈莺
--Created:     2019-08-15
------------------------------------------------------------------------------------
-- MidAutumn2019Two_

----------------------------------表配置部分--------------------------------------------
local tMidAutumn2019Two_Data = {}
	tMidAutumn2019Two_Data["Level"] = 80
	tMidAutumn2019Two_Data["Metempsychosis"] = 0
	tMidAutumn2019Two_Data["Second"] = 2		--读条2s
	tMidAutumn2019Two_Data["Action"] = 290		--读条action
	tMidAutumn2019Two_Data["Web"] = "https://wjdown.99.com/games/zf/video/love.mp4"
	tMidAutumn2019Two_Data["GetLevel"] = 120
	tMidAutumn2019Two_Data["GetMetempsychosis"] = 2
	
	
	tMidAutumn2019Two_Data["Log"] = {}
	tMidAutumn2019Two_Data["Log"][1] = "0,0,0,0,12001568,3[1],0,0"  --传送到嫦娥处
	tMidAutumn2019Two_Data["Log"][2] = "0,0,3313697,1,12001568,3[2],1,0"  --变身log
	tMidAutumn2019Two_Data["Log"][3] = "0,0,0,0,12001568,3,0,0" --进地图
	
local tMidAutumn2019Two_Change = {}
-- 兔女郎
	tMidAutumn2019Two_Change[1] = {}
	tMidAutumn2019Two_Change[1]["Monster"] = 5742
	tMidAutumn2019Two_Change[1]["Magic"] = 10641
-- 月兔
	tMidAutumn2019Two_Change[2] = {}
	tMidAutumn2019Two_Change[2]["Monster"] = 5740
	tMidAutumn2019Two_Change[2]["Magic"] = 10642
-- 吴刚
	tMidAutumn2019Two_Change[3] = {}
	tMidAutumn2019Two_Change[3]["Monster"] = 5741
	tMidAutumn2019Two_Change[3]["Magic"] = 10643
-- 后羿
	tMidAutumn2019Two_Change[4] = {}
	tMidAutumn2019Two_Change[4]["Monster"] = 5746
	tMidAutumn2019Two_Change[4]["Magic"] = 10521

	
local tMidAutumn2019Two_Pos = {}
	--进地图
	tMidAutumn2019Two_Pos[1] = {}
	tMidAutumn2019Two_Pos[1]["MapId"] = 10593
	tMidAutumn2019Two_Pos[1]["PosX"] = 171
	tMidAutumn2019Two_Pos[1]["PosY"] = 166
	
	--进地图
	tMidAutumn2019Two_Pos[2] = {}
	tMidAutumn2019Two_Pos[2]["MapId"] = 10593
	tMidAutumn2019Two_Pos[2]["PosX"] = 171
	tMidAutumn2019Two_Pos[2]["PosY"] = 166
	
	--到嫦娥处
	tMidAutumn2019Two_Pos[3] = {}
	tMidAutumn2019Two_Pos[3]["MapId"] = 10593
	tMidAutumn2019Two_Pos[3]["PosX"] = 49
	tMidAutumn2019Two_Pos[3]["PosY"] = 93
	
	--离开赏月台
	tMidAutumn2019Two_Pos[24860] = {}
	tMidAutumn2019Two_Pos[24860]["MapId"] = 1002
	tMidAutumn2019Two_Pos[24860]["PosX"] = 327
	tMidAutumn2019Two_Pos[24860]["PosY"] = 451
	-- 激情服
	tMidAutumn2019Two_Pos[4] = {}
	tMidAutumn2019Two_Pos[4]["MapId"] = 1036
	tMidAutumn2019Two_Pos[4]["PosX"] = 232--327
	tMidAutumn2019Two_Pos[4]["PosY"] = 164--451
	-----陷进
	tMidAutumn2019Two_Pos[177] = {}
	tMidAutumn2019Two_Pos[177]["MapId"] = 10593
	tMidAutumn2019Two_Pos[177]["PosX"] = 52
	tMidAutumn2019Two_Pos[177]["PosY"] = 116
	
	tMidAutumn2019Two_Pos[178] = {}
	tMidAutumn2019Two_Pos[178]["MapId"] = 10593
	tMidAutumn2019Two_Pos[178]["PosX"] = 76
	tMidAutumn2019Two_Pos[178]["PosY"] = 144

	tMidAutumn2019Two_Pos[179] = {}
	tMidAutumn2019Two_Pos[179]["MapId"] = 10593
	tMidAutumn2019Two_Pos[179]["PosX"] = 118
	tMidAutumn2019Two_Pos[179]["PosY"] = 126

	tMidAutumn2019Two_Pos[180] = {}
	tMidAutumn2019Two_Pos[180]["MapId"] = 10593
	tMidAutumn2019Two_Pos[180]["PosX"] = 135
	tMidAutumn2019Two_Pos[180]["PosY"] = 138

	tMidAutumn2019Two_Pos[181] = {}
	tMidAutumn2019Two_Pos[181]["MapId"] = 1002
	tMidAutumn2019Two_Pos[181]["PosX"] = 327
	tMidAutumn2019Two_Pos[181]["PosY"] = 451
	
local tMidAutumn2019Two_Stc = {}
-- 记录祝福过
	tMidAutumn2019Two_Stc[1] = {}
	tMidAutumn2019Two_Stc[1]["EventType"] = 202
	tMidAutumn2019Two_Stc[1]["DataType"] = 89
	tMidAutumn2019Two_Stc[1]["Data"] = 1
	
-- 记录已伐木
	tMidAutumn2019Two_Stc[2] = {}
	tMidAutumn2019Two_Stc[2]["EventType"] = 202
	tMidAutumn2019Two_Stc[2]["DataType"] = 90
	tMidAutumn2019Two_Stc[2]["Data"] = 3

-- 记录首充跟后羿对话
	tMidAutumn2019Two_Stc[3] = {}
	tMidAutumn2019Two_Stc[3]["EventType"] = 202
	tMidAutumn2019Two_Stc[3]["DataType"] = 91
	tMidAutumn2019Two_Stc[3]["Data"] = 1
	
-- 记录今日已兑换药材
	tMidAutumn2019Two_Stc[4] = {}
	tMidAutumn2019Two_Stc[4]["EventType"] = 202
	tMidAutumn2019Two_Stc[4]["DataType"] = 92
	tMidAutumn2019Two_Stc[4]["Data"] = 1
	
-- 记录领取嫦娥仙子奖励
	tMidAutumn2019Two_Stc[5] = {}
	tMidAutumn2019Two_Stc[5]["EventType"] = 202
	tMidAutumn2019Two_Stc[5]["DataType"] = 93
	tMidAutumn2019Two_Stc[5]["Data"] = 2
	
-- 记录月赏月NPC第一次对话  二进制记录
	tMidAutumn2019Two_Stc[6] = {}
	tMidAutumn2019Two_Stc[6]["EventType"] = 203
	tMidAutumn2019Two_Stc[6]["DataType"] = 13
--------新增
	-- 记录跟吴刚对过话
	tMidAutumn2019Two_Stc[7] = {}
	tMidAutumn2019Two_Stc[7]["EventType"] = 203
	tMidAutumn2019Two_Stc[7]["DataType"] = 92
	tMidAutumn2019Two_Stc[7]["Data"] = 1
	
	-- 记录是否点过内嵌页面
	tMidAutumn2019Two_Stc[8] = {}
	tMidAutumn2019Two_Stc[8]["EventType"] = 203
	tMidAutumn2019Two_Stc[8]["DataType"] = 93
	tMidAutumn2019Two_Stc[8]["Data"] = 1
	
	-- 记录是否点过内嵌页面
	tMidAutumn2019Two_Stc[9] = {}
	tMidAutumn2019Two_Stc[9]["EventType"] = 203
	tMidAutumn2019Two_Stc[9]["DataType"] = 94
	tMidAutumn2019Two_Stc[9]["Data"] = 1
	
	-- 记录完成玉兔任务
	tMidAutumn2019Two_Stc[10] = {}
	tMidAutumn2019Two_Stc[10]["EventType"] = 164
	tMidAutumn2019Two_Stc[10]["DataType"] = 58
	tMidAutumn2019Two_Stc[10]["Data"] = 1
	
	-- 记录完成玉兔任务
	tMidAutumn2019Two_Stc[11] = {}
	tMidAutumn2019Two_Stc[11]["EventType"] = 204
	tMidAutumn2019Two_Stc[11]["DataType"] = 36
	tMidAutumn2019Two_Stc[11]["Data"] = 1
	
local tMidAutumn2019Two_Stcdata = {}
	tMidAutumn2019Two_Stcdata[24800] = 1
	tMidAutumn2019Two_Stcdata[24801] = 2
	tMidAutumn2019Two_Stcdata[24802] = 4
	tMidAutumn2019Two_Stcdata[24803] = 8
	tMidAutumn2019Two_Stcdata[24804] = 16
	tMidAutumn2019Two_Stcdata[24805] = 32
	tMidAutumn2019Two_Stcdata[24806] = 64
	tMidAutumn2019Two_Stcdata[24807] = 128
	tMidAutumn2019Two_Stcdata[24808] = 256
	tMidAutumn2019Two_Stcdata[24809] = 512
	tMidAutumn2019Two_Stcdata[24810] = 1024
	
local tMidAutumn2019Two_Reward = {}
-- 长生丹材料
	tMidAutumn2019Two_Reward[1] = {}
	tMidAutumn2019Two_Reward[1]["LogId"] = 12001568
	tMidAutumn2019Two_Reward[1]["RewardItem"] = {}
	tMidAutumn2019Two_Reward[1]["RewardItem"][1] = {}
	tMidAutumn2019Two_Reward[1]["RewardItem"][1]["Id"] = 3313513  --长生丹材料
	tMidAutumn2019Two_Reward[1]["RewardItem"][1]["Attr"] = "0 1"
	tMidAutumn2019Two_Reward[1]["RewardItem"][2] = {}
	tMidAutumn2019Two_Reward[1]["RewardItem"][2]["Id"] = 3323106  --骰子
	tMidAutumn2019Two_Reward[1]["RewardItem"][2]["Attr"] = "0 3"
	tMidAutumn2019Two_Reward[1]["RewardEffect"] = {}
	tMidAutumn2019Two_Reward[1]["RewardEffect"]["SzObj"] = "self"
	tMidAutumn2019Two_Reward[1]["RewardEffect"]["Effect"] = "zf2-e128"
-- 长生药碎片
	tMidAutumn2019Two_Reward[2] = {}
	tMidAutumn2019Two_Reward[2]["LogId"] = 12001568
	tMidAutumn2019Two_Reward[2]["DeleteItem"] = {}
	tMidAutumn2019Two_Reward[2]["DeleteItem"][1] = {}
	tMidAutumn2019Two_Reward[2]["DeleteItem"][1]["Id"] = 3313513
	tMidAutumn2019Two_Reward[2]["DeleteItem"][1]["ItemNum"] = 2
	tMidAutumn2019Two_Reward[2]["RewardItem"] = {}
	tMidAutumn2019Two_Reward[2]["RewardItem"][1] = {}
	tMidAutumn2019Two_Reward[2]["RewardItem"][1]["Id"] = 3313514  --长生药碎片
	tMidAutumn2019Two_Reward[2]["RewardItem"][1]["Attr"] = "0 1"
	tMidAutumn2019Two_Reward[2]["RewardItem"][2] = {}
	tMidAutumn2019Two_Reward[2]["RewardItem"][2]["Id"] = 3323106  --骰子
	tMidAutumn2019Two_Reward[2]["RewardItem"][2]["Attr"] = "0 6"
	tMidAutumn2019Two_Reward[2]["RewardEffect"] = {}
	tMidAutumn2019Two_Reward[2]["RewardEffect"]["SzObj"] = "self"
	tMidAutumn2019Two_Reward[2]["RewardEffect"]["Effect"] = "angelwing"
-- 使用长生丹后，找嫦娥领取奖励
	tMidAutumn2019Two_Reward[3] = {}
	tMidAutumn2019Two_Reward[3]["LogId"] = 12001568
	tMidAutumn2019Two_Reward[3]["RewardItem"] = {}
	tMidAutumn2019Two_Reward[3]["RewardItem"][1] = {}
	tMidAutumn2019Two_Reward[3]["RewardItem"][1]["Id"] = 3313638  --嫦娥奔月礼包
	tMidAutumn2019Two_Reward[3]["RewardItem"][1]["Attr"] = "0 1"
	tMidAutumn2019Two_Reward[3]["RewardItem"][2] = {}
	tMidAutumn2019Two_Reward[3]["RewardItem"][2]["Id"] = 3323106  --博饼骰子
	tMidAutumn2019Two_Reward[3]["RewardItem"][2]["Attr"] = "0 30"
	tMidAutumn2019Two_Reward[3]["RewardEffect"] = {}
	tMidAutumn2019Two_Reward[3]["RewardEffect"]["SzObj"] = "self"
	tMidAutumn2019Two_Reward[3]["RewardEffect"]["Effect"] = "angelwing"
--给长生丹
	tMidAutumn2019Two_Reward[11] = {}
	tMidAutumn2019Two_Reward[11]["LogId"] = 12001568
	tMidAutumn2019Two_Reward[11]["RewardItem"] = {}
	tMidAutumn2019Two_Reward[11]["RewardItem"][1] = {}
	tMidAutumn2019Two_Reward[11]["RewardItem"][1]["Id"] = 3313515  --长生不老药
	tMidAutumn2019Two_Reward[11]["RewardItem"][1]["Attr"] = "0 1"
	tMidAutumn2019Two_Reward[11]["RewardEffect"] = {}
	tMidAutumn2019Two_Reward[11]["RewardEffect"]["SzObj"] = "self"
	tMidAutumn2019Two_Reward[11]["RewardEffect"]["Effect"] = "angelwing"
	-- 嫦娥奔月礼包
	tMidAutumn2019Two_Reward[3313638] = {}
	tMidAutumn2019Two_Reward[3313638][1] = {}
	tMidAutumn2019Two_Reward[3313638][1]["LogId"] = 12001568
	tMidAutumn2019Two_Reward[3313638][1]["DeleteItem"] = {}
	tMidAutumn2019Two_Reward[3313638][1]["DeleteItem"][1] = {}
	tMidAutumn2019Two_Reward[3313638][1]["DeleteItem"][1]["Id"] = 3313638
	tMidAutumn2019Two_Reward[3313638][1]["DeleteItem"][1]["ItemNum"] = 1
	tMidAutumn2019Two_Reward[3313638][1]["RewardItem"] = {}
	tMidAutumn2019Two_Reward[3313638][1]["RewardItem"][1] = {}
	tMidAutumn2019Two_Reward[3313638][1]["RewardItem"][1]["Id"] = 3008200  --5000气力值
	tMidAutumn2019Two_Reward[3313638][1]["RewardItem"][1]["Attr"] = "0 1"
	tMidAutumn2019Two_Reward[3313638][1]["RewardEffect"] = {}
	tMidAutumn2019Two_Reward[3313638][1]["RewardEffect"]["SzObj"] = "self"
	tMidAutumn2019Two_Reward[3313638][1]["RewardEffect"]["Effect"] = "angelwing"

	tMidAutumn2019Two_Reward[3313638][2] = {}
	tMidAutumn2019Two_Reward[3313638][2]["LogId"] = 12001568
	tMidAutumn2019Two_Reward[3313638][2]["DeleteItem"] = {}
	tMidAutumn2019Two_Reward[3313638][2]["DeleteItem"][1] = {}
	tMidAutumn2019Two_Reward[3313638][2]["DeleteItem"][1]["Id"] = 3313638
	tMidAutumn2019Two_Reward[3313638][2]["DeleteItem"][1]["ItemNum"] = 1
	tMidAutumn2019Two_Reward[3313638][2]["RewardItem"] = {}
	tMidAutumn2019Two_Reward[3313638][2]["RewardItem"][1] = {}
	tMidAutumn2019Two_Reward[3313638][2]["RewardItem"][1]["Id"] = 730005  --赤炼石+5
	tMidAutumn2019Two_Reward[3313638][2]["RewardItem"][1]["Attr"] = "0 1 3 7200 1"
	tMidAutumn2019Two_Reward[3313638][2]["RewardEffect"] = {}
	tMidAutumn2019Two_Reward[3313638][2]["RewardEffect"]["SzObj"] = "self"
	tMidAutumn2019Two_Reward[3313638][2]["RewardEffect"]["Effect"] = "angelwing"
	
	tMidAutumn2019Two_Reward[3313638][3] = {}
	tMidAutumn2019Two_Reward[3313638][3]["LogId"] = 12001568
	tMidAutumn2019Two_Reward[3313638][3]["DeleteItem"] = {}
	tMidAutumn2019Two_Reward[3313638][3]["DeleteItem"][1] = {}
	tMidAutumn2019Two_Reward[3313638][3]["DeleteItem"][1]["Id"] = 3313638
	tMidAutumn2019Two_Reward[3313638][3]["DeleteItem"][1]["ItemNum"] = 1
	tMidAutumn2019Two_Reward[3313638][3]["RewardItem"] = {}
	tMidAutumn2019Two_Reward[3313638][3]["RewardItem"][1] = {}
	tMidAutumn2019Two_Reward[3313638][3]["RewardItem"][1]["Id"] = 3009002  --晶莹星陨石
	tMidAutumn2019Two_Reward[3313638][3]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tMidAutumn2019Two_Reward[3313638][3]["RewardEffect"] = {}
	tMidAutumn2019Two_Reward[3313638][3]["RewardEffect"]["SzObj"] = "self"
	tMidAutumn2019Two_Reward[3313638][3]["RewardEffect"]["Effect"] = "angelwing"

	tMidAutumn2019Two_Reward[3313638][4] = {}
	tMidAutumn2019Two_Reward[3313638][4]["LogId"] = 12001568
	tMidAutumn2019Two_Reward[3313638][4]["DeleteItem"] = {}
	tMidAutumn2019Two_Reward[3313638][4]["DeleteItem"][1] = {}
	tMidAutumn2019Two_Reward[3313638][4]["DeleteItem"][1]["Id"] = 3313638
	tMidAutumn2019Two_Reward[3313638][4]["DeleteItem"][1]["ItemNum"] = 1
	tMidAutumn2019Two_Reward[3313638][4]["RewardItem"] = {}
	tMidAutumn2019Two_Reward[3313638][4]["RewardItem"][1] = {}
	tMidAutumn2019Two_Reward[3313638][4]["RewardItem"][1]["Id"] = 3009103  --天灵果
	tMidAutumn2019Two_Reward[3313638][4]["RewardItem"][1]["Attr"] = "0 1"
	tMidAutumn2019Two_Reward[3313638][4]["RewardEffect"] = {}
	tMidAutumn2019Two_Reward[3313638][4]["RewardEffect"]["SzObj"] = "self"
	tMidAutumn2019Two_Reward[3313638][4]["RewardEffect"]["Effect"] = "angelwing"

	tMidAutumn2019Two_Reward[3313638][5] = {}
	tMidAutumn2019Two_Reward[3313638][5]["LogId"] = 12001568
	tMidAutumn2019Two_Reward[3313638][5]["DeleteItem"] = {}
	tMidAutumn2019Two_Reward[3313638][5]["DeleteItem"][1] = {}
	tMidAutumn2019Two_Reward[3313638][5]["DeleteItem"][1]["Id"] = 3313638
	tMidAutumn2019Two_Reward[3313638][5]["DeleteItem"][1]["ItemNum"] = 1
	tMidAutumn2019Two_Reward[3313638][5]["RewardItem"] = {}
	tMidAutumn2019Two_Reward[3313638][5]["RewardItem"][1] = {}
	tMidAutumn2019Two_Reward[3313638][5]["RewardItem"][1]["Id"] = 3321098  --神兵灵魄
	tMidAutumn2019Two_Reward[3313638][5]["RewardItem"][1]["Attr"] = "0 20"
	tMidAutumn2019Two_Reward[3313638][5]["RewardEffect"] = {}
	tMidAutumn2019Two_Reward[3313638][5]["RewardEffect"]["SzObj"] = "self"
	tMidAutumn2019Two_Reward[3313638][5]["RewardEffect"]["Effect"] = "angelwing"

	
	-- ===花灯送祝福奖励
	-- ===索引:tMidAutumn2019Two_Reward[4]
	-- ===
	-- ===
	tMidAutumn2019Two_Reward[4] = {}
	tMidAutumn2019Two_Reward[4]["ItemChanceSum"] = 10000
	tMidAutumn2019Two_Reward[4]["LogId"] = 12001568
	-- 微光星陨石 - 27.0000%
	tMidAutumn2019Two_Reward[4][1] = {}
	tMidAutumn2019Two_Reward[4][1]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_Reward[4][1]["ItemChance"] = 2700
	tMidAutumn2019Two_Reward[4][1]["RewardItem"] = {}
	tMidAutumn2019Two_Reward[4][1]["RewardItem"][1] = {}
	tMidAutumn2019Two_Reward[4][1]["RewardItem"][1]["Id"] = 3009000 -- 微光星陨石[3009000][属性:9][叠加:0][金币:0], 【表格】微光星陨石
	tMidAutumn2019Two_Reward[4][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的微光星陨石*1
	tMidAutumn2019Two_Reward[4][1]["RewardEffect"] = {}
	tMidAutumn2019Two_Reward[4][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumn2019Two_Reward[4][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+1 - 25.0000%
	tMidAutumn2019Two_Reward[4][2] = {}
	tMidAutumn2019Two_Reward[4][2]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_Reward[4][2]["ItemChance"] = 2500
	tMidAutumn2019Two_Reward[4][2]["RewardItem"] = {}
	tMidAutumn2019Two_Reward[4][2]["RewardItem"][1] = {}
	tMidAutumn2019Two_Reward[4][2]["RewardItem"][1]["Id"] = 730001 -- +1赤炼石[730001][属性:0][叠加:0][金币:0], 【表格】赤炼石+1
	tMidAutumn2019Two_Reward[4][2]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+1赤炼石（赠）*1
	tMidAutumn2019Two_Reward[4][2]["RewardEffect"] = {}
	tMidAutumn2019Two_Reward[4][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumn2019Two_Reward[4][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 20.0000%
	tMidAutumn2019Two_Reward[4][3] = {}
	tMidAutumn2019Two_Reward[4][3]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_Reward[4][3]["ItemChance"] = 2000
	tMidAutumn2019Two_Reward[4][3]["RewardItem"] = {}
	tMidAutumn2019Two_Reward[4][3]["RewardItem"][1] = {}
	tMidAutumn2019Two_Reward[4][3]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】人参果
	tMidAutumn2019Two_Reward[4][3]["RewardItem"][1]["Attr"] = "0 1" -- 人参果*1
	tMidAutumn2019Two_Reward[4][3]["RewardEffect"] = {}
	tMidAutumn2019Two_Reward[4][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumn2019Two_Reward[4][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 25.0000%
	tMidAutumn2019Two_Reward[4][4] = {}
	tMidAutumn2019Two_Reward[4][4]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_Reward[4][4]["ItemChance"] = 2500
	tMidAutumn2019Two_Reward[4][4]["RewardItem"] = {}
	tMidAutumn2019Two_Reward[4][4]["RewardItem"][1] = {}
	tMidAutumn2019Two_Reward[4][4]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tMidAutumn2019Two_Reward[4][4]["RewardItem"][1]["Attr"] = "0 1 3" -- 万能神纹精粹*1
	tMidAutumn2019Two_Reward[4][4]["RewardEffect"] = {}
	tMidAutumn2019Two_Reward[4][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumn2019Two_Reward[4][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 晶莹星陨石 - 1.0000%
	tMidAutumn2019Two_Reward[4][5] = {}
	tMidAutumn2019Two_Reward[4][5]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_Reward[4][5]["ItemChance"] = 100
	tMidAutumn2019Two_Reward[4][5]["RewardItem"] = {}
	tMidAutumn2019Two_Reward[4][5]["RewardItem"][1] = {}
	tMidAutumn2019Two_Reward[4][5]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tMidAutumn2019Two_Reward[4][5]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
	tMidAutumn2019Two_Reward[4][5]["RewardEffect"] = {}
	tMidAutumn2019Two_Reward[4][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumn2019Two_Reward[4][5]["RewardEffect"]["Effect"] = "angelwing"
	tMidAutumn2019Two_Reward[4][5]["RewardBroadCast"] = "sBroadCastText" -- 全服公告
	tMidAutumn2019Two_Reward[4][5]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 赤炼石+4 - 1.0000%
	tMidAutumn2019Two_Reward[4][6] = {}
	tMidAutumn2019Two_Reward[4][6]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_Reward[4][6]["ItemChance"] = 100
	tMidAutumn2019Two_Reward[4][6]["RewardItem"] = {}
	tMidAutumn2019Two_Reward[4][6]["RewardItem"][1] = {}
	tMidAutumn2019Two_Reward[4][6]["RewardItem"][1]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】赤炼石+4
	tMidAutumn2019Two_Reward[4][6]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+4赤炼石（赠）*1
	tMidAutumn2019Two_Reward[4][6]["RewardEffect"] = {}
	tMidAutumn2019Two_Reward[4][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumn2019Two_Reward[4][6]["RewardEffect"]["Effect"] = "angelwing"
	tMidAutumn2019Two_Reward[4][6]["RewardBroadCast"] = "sBroadCastText" -- 全服公告
	tMidAutumn2019Two_Reward[4][6]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 天灵果 - 1.0000%
	tMidAutumn2019Two_Reward[4][7] = {}
	tMidAutumn2019Two_Reward[4][7]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_Reward[4][7]["ItemChance"] = 100
	tMidAutumn2019Two_Reward[4][7]["RewardItem"] = {}
	tMidAutumn2019Two_Reward[4][7]["RewardItem"][1] = {}
	tMidAutumn2019Two_Reward[4][7]["RewardItem"][1]["Id"] = 3009103 -- 天灵果[3009103][属性:9][叠加:99][金币:0], 【表格】天灵果
	tMidAutumn2019Two_Reward[4][7]["RewardItem"][1]["Attr"] = "0 1" -- 天灵果*1
	tMidAutumn2019Two_Reward[4][7]["RewardEffect"] = {}
	tMidAutumn2019Two_Reward[4][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumn2019Two_Reward[4][7]["RewardEffect"]["Effect"] = "angelwing"
	tMidAutumn2019Two_Reward[4][7]["RewardBroadCast"] = "sBroadCastText" -- 全服公告
	tMidAutumn2019Two_Reward[4][7]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】

	-- 长生药碎片
	tMidAutumn2019Two_Reward[3313514] = {}
	tMidAutumn2019Two_Reward[3313514]["LogId"] = 12001568
	tMidAutumn2019Two_Reward[3313514]["DeleteItem"] = {}
	tMidAutumn2019Two_Reward[3313514]["DeleteItem"][1] = {}
	tMidAutumn2019Two_Reward[3313514]["DeleteItem"][1]["Id"] = 3313514
	tMidAutumn2019Two_Reward[3313514]["DeleteItem"][1]["ItemNum"] = 7
	tMidAutumn2019Two_Reward[3313514]["RewardItem"] = {}
	tMidAutumn2019Two_Reward[3313514]["RewardItem"][1] = {}
	tMidAutumn2019Two_Reward[3313514]["RewardItem"][1]["Id"] = 3313515  --长生不老药
	tMidAutumn2019Two_Reward[3313514]["RewardItem"][1]["Attr"] = "0 1"
	tMidAutumn2019Two_Reward[3313514]["RewardEffect"] = {}
	tMidAutumn2019Two_Reward[3313514]["RewardEffect"]["SzObj"] = "self"
	tMidAutumn2019Two_Reward[3313514]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 长生药碎片
	tMidAutumn2019Two_Reward[3313515] = {}
	tMidAutumn2019Two_Reward[3313515]["LogId"] = 12001568
	tMidAutumn2019Two_Reward[3313515]["DeleteItem"] = {}
	tMidAutumn2019Two_Reward[3313515]["DeleteItem"][1] = {}
	tMidAutumn2019Two_Reward[3313515]["DeleteItem"][1]["Id"] = 3313515
	tMidAutumn2019Two_Reward[3313515]["DeleteItem"][1]["ItemNum"] = 1
	tMidAutumn2019Two_Reward[3313515]["RewardEffect"] = {}
	tMidAutumn2019Two_Reward[3313515]["RewardEffect"]["SzObj"] = "self"
	tMidAutumn2019Two_Reward[3313515]["RewardEffect"]["Effect"] = "angelwing"
	
	
	tMidAutumn2019Two_Reward[12] = {}
	tMidAutumn2019Two_Reward[12]["ItemChanceSum"] = 10000
	tMidAutumn2019Two_Reward[12]["LogId"] = 12001568
	
	tMidAutumn2019Two_Reward[12][1] = {}
	tMidAutumn2019Two_Reward[12][1]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_Reward[12][1]["ItemChance"] = 3000
	tMidAutumn2019Two_Reward[12][1]["RewardItem"] = {}
	tMidAutumn2019Two_Reward[12][1]["RewardItem"][1] = {}
	tMidAutumn2019Two_Reward[12][1]["RewardItem"][1]["Id"] = 3313697 --月桂树枝
	tMidAutumn2019Two_Reward[12][1]["RewardItem"][1]["Attr"] = "0 1"
	tMidAutumn2019Two_Reward[12][1]["RewardEffect"] = {}
	tMidAutumn2019Two_Reward[12][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumn2019Two_Reward[12][1]["RewardEffect"]["Effect"] = "angelwing"
	tMidAutumn2019Two_Reward[12][1]["Flag"] = 1

	tMidAutumn2019Two_Reward[12][2] = {}
	tMidAutumn2019Two_Reward[12][2]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_Reward[12][2]["ItemChance"] = 7000
	tMidAutumn2019Two_Reward[12][2]["RewardEffect"] = {}
	tMidAutumn2019Two_Reward[12][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumn2019Two_Reward[12][2]["RewardEffect"]["Effect"] = "angelwing"
	tMidAutumn2019Two_Reward[12][2]["Flag"] = 0
	
-----随机玩家名字
local tMidAutumn2019Two_UserName = {}
	--美国
	tMidAutumn2019Two_UserName[1] = {}
	tMidAutumn2019Two_UserName[1]["NpcId"] = 24810
	tMidAutumn2019Two_UserName[1]["ItemChanceSum"] = 10000
	
	tMidAutumn2019Two_UserName[1][1] = {}
	tMidAutumn2019Two_UserName[1][1]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[1][1]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[1][1]["Num"] = 1
	
	tMidAutumn2019Two_UserName[1][2] = {}
	tMidAutumn2019Two_UserName[1][2]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[1][2]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[1][2]["Num"] = 2
	
	tMidAutumn2019Two_UserName[1][3] = {}
	tMidAutumn2019Two_UserName[1][3]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[1][3]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[1][3]["Num"] = 3
	
	tMidAutumn2019Two_UserName[1][4] = {}
	tMidAutumn2019Two_UserName[1][4]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[1][4]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[1][4]["Num"] = 4
	
	tMidAutumn2019Two_UserName[1][5] = {}
	tMidAutumn2019Two_UserName[1][5]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[1][5]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[1][5]["Num"] = 5
	
	tMidAutumn2019Two_UserName[1][6] = {}
	tMidAutumn2019Two_UserName[1][6]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[1][6]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[1][6]["Num"] = 6
	
	tMidAutumn2019Two_UserName[1][7] = {}
	tMidAutumn2019Two_UserName[1][7]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[1][7]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[1][7]["Num"] = 7
	
	tMidAutumn2019Two_UserName[1][8] = {}
	tMidAutumn2019Two_UserName[1][8]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[1][8]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[1][8]["Num"] = 8
	
	tMidAutumn2019Two_UserName[1][9] = {}
	tMidAutumn2019Two_UserName[1][9]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[1][9]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[1][9]["Num"] = 9
	
	tMidAutumn2019Two_UserName[1][10] = {}
	tMidAutumn2019Two_UserName[1][10]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[1][10]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[1][10]["Num"] = 10
	
	tMidAutumn2019Two_UserName[1][11] = {}
	tMidAutumn2019Two_UserName[1][11]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[1][11]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[1][11]["Num"] = 11
	
	tMidAutumn2019Two_UserName[1][12] = {}
	tMidAutumn2019Two_UserName[1][12]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[1][12]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[1][12]["Num"] = 12
	
	tMidAutumn2019Two_UserName[1][13] = {}
	tMidAutumn2019Two_UserName[1][13]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[1][13]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[1][13]["Num"] = 13
	
	tMidAutumn2019Two_UserName[1][14] = {}
	tMidAutumn2019Two_UserName[1][14]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[1][14]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[1][14]["Num"] = 14
	
	tMidAutumn2019Two_UserName[1][15] = {}
	tMidAutumn2019Two_UserName[1][15]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[1][15]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[1][15]["Num"] = 15
	
	tMidAutumn2019Two_UserName[1][16] = {}
	tMidAutumn2019Two_UserName[1][16]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[1][16]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[1][16]["Num"] = 16
	
	tMidAutumn2019Two_UserName[1][17] = {}
	tMidAutumn2019Two_UserName[1][17]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[1][17]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[1][17]["Num"] = 17
	
	tMidAutumn2019Two_UserName[1][18] = {}
	tMidAutumn2019Two_UserName[1][18]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[1][18]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[1][18]["Num"] = 18
	
	tMidAutumn2019Two_UserName[1][19] = {}
	tMidAutumn2019Two_UserName[1][19]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[1][19]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[1][19]["Num"] = 19
	
	tMidAutumn2019Two_UserName[1][20] = {}
	tMidAutumn2019Two_UserName[1][20]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[1][20]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[1][20]["Num"] = 20

	-- 多米尼加 
	tMidAutumn2019Two_UserName[2] = {}
	-- 男
	tMidAutumn2019Two_UserName[2][1] = {}
	tMidAutumn2019Two_UserName[2][1]["NpcId"] = 24805
	tMidAutumn2019Two_UserName[2][1]["ItemChanceSum"] = 10000
	
	tMidAutumn2019Two_UserName[2][1][1] = {}
	tMidAutumn2019Two_UserName[2][1][1]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[2][1][1]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[2][1][1]["Num"] = 1
	
	tMidAutumn2019Two_UserName[2][1][2] = {}
	tMidAutumn2019Two_UserName[2][1][2]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[2][1][2]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[2][1][2]["Num"] = 2
	
	tMidAutumn2019Two_UserName[2][1][3] = {}
	tMidAutumn2019Two_UserName[2][1][3]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[2][1][3]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[2][1][3]["Num"] = 3
	
	tMidAutumn2019Two_UserName[2][1][4] = {}
	tMidAutumn2019Two_UserName[2][1][4]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[2][1][4]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[2][1][4]["Num"] = 4
	
	tMidAutumn2019Two_UserName[2][1][5] = {}
	tMidAutumn2019Two_UserName[2][1][5]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[2][1][5]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[2][1][5]["Num"] = 5
	
	tMidAutumn2019Two_UserName[2][1][6] = {}
	tMidAutumn2019Two_UserName[2][1][6]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[2][1][6]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[2][1][6]["Num"] = 6
	
	tMidAutumn2019Two_UserName[2][1][7] = {}
	tMidAutumn2019Two_UserName[2][1][7]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[2][1][7]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[2][1][7]["Num"] = 7
	
	tMidAutumn2019Two_UserName[2][1][8] = {}
	tMidAutumn2019Two_UserName[2][1][8]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[2][1][8]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[2][1][8]["Num"] = 8
	
	tMidAutumn2019Two_UserName[2][1][9] = {}
	tMidAutumn2019Two_UserName[2][1][9]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[2][1][9]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[2][1][9]["Num"] = 9
	
	tMidAutumn2019Two_UserName[2][1][10] = {}
	tMidAutumn2019Two_UserName[2][1][10]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[2][1][10]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[2][1][10]["Num"] = 10

	tMidAutumn2019Two_UserName[2][1][11] = {}
	tMidAutumn2019Two_UserName[2][1][11]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[2][1][11]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[2][1][11]["Num"] = 11
	
	tMidAutumn2019Two_UserName[2][1][12] = {}
	tMidAutumn2019Two_UserName[2][1][12]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[2][1][12]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[2][1][12]["Num"] = 12
	
	tMidAutumn2019Two_UserName[2][1][13] = {}
	tMidAutumn2019Two_UserName[2][1][13]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[2][1][13]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[2][1][13]["Num"] = 13
	
	tMidAutumn2019Two_UserName[2][1][14] = {}
	tMidAutumn2019Two_UserName[2][1][14]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[2][1][14]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[2][1][14]["Num"] = 14
	
	tMidAutumn2019Two_UserName[2][1][15] = {}
	tMidAutumn2019Two_UserName[2][1][15]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[2][1][15]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[2][1][15]["Num"] = 15
	
	tMidAutumn2019Two_UserName[2][1][16] = {}
	tMidAutumn2019Two_UserName[2][1][16]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[2][1][16]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[2][1][16]["Num"] = 16
	
	tMidAutumn2019Two_UserName[2][1][17] = {}
	tMidAutumn2019Two_UserName[2][1][17]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[2][1][17]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[2][1][17]["Num"] = 17
	
	tMidAutumn2019Two_UserName[2][1][18] = {}
	tMidAutumn2019Two_UserName[2][1][18]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[2][1][18]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[2][1][18]["Num"] = 18
	
	tMidAutumn2019Two_UserName[2][1][19] = {}
	tMidAutumn2019Two_UserName[2][1][19]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[2][1][19]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[2][1][19]["Num"] = 19
	
	tMidAutumn2019Two_UserName[2][1][20] = {}
	tMidAutumn2019Two_UserName[2][1][20]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[2][1][20]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[2][1][20]["Num"] = 20

	-- 女
	tMidAutumn2019Two_UserName[2][2] = {}
	tMidAutumn2019Two_UserName[2][2]["NpcId"] = 24806
	tMidAutumn2019Two_UserName[2][2]["ItemChanceSum"] = 10000
	
	tMidAutumn2019Two_UserName[2][2][1] = {}
	tMidAutumn2019Two_UserName[2][2][1]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[2][2][1]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[2][2][1]["Num"] = 1
	
	tMidAutumn2019Two_UserName[2][2][2] = {}
	tMidAutumn2019Two_UserName[2][2][2]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[2][2][2]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[2][2][2]["Num"] = 2
	
	tMidAutumn2019Two_UserName[2][2][3] = {}
	tMidAutumn2019Two_UserName[2][2][3]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[2][2][3]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[2][2][3]["Num"] = 3
	
	tMidAutumn2019Two_UserName[2][2][4] = {}
	tMidAutumn2019Two_UserName[2][2][4]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[2][2][4]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[2][2][4]["Num"] = 4
	
	tMidAutumn2019Two_UserName[2][2][5] = {}
	tMidAutumn2019Two_UserName[2][2][5]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[2][2][5]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[2][2][5]["Num"] = 5
	
	tMidAutumn2019Two_UserName[2][2][6] = {}
	tMidAutumn2019Two_UserName[2][2][6]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[2][2][6]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[2][2][6]["Num"] = 6
	
	tMidAutumn2019Two_UserName[2][2][7] = {}
	tMidAutumn2019Two_UserName[2][2][7]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[2][2][7]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[2][2][7]["Num"] = 7
	
	tMidAutumn2019Two_UserName[2][2][8] = {}
	tMidAutumn2019Two_UserName[2][2][8]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[2][2][8]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[2][2][8]["Num"] = 8
	
	tMidAutumn2019Two_UserName[2][2][9] = {}
	tMidAutumn2019Two_UserName[2][2][9]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[2][2][9]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[2][2][9]["Num"] = 9
	
	tMidAutumn2019Two_UserName[2][2][10] = {}
	tMidAutumn2019Two_UserName[2][2][10]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[2][2][10]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[2][2][10]["Num"] = 10

	tMidAutumn2019Two_UserName[2][2][11] = {}
	tMidAutumn2019Two_UserName[2][2][11]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[2][2][11]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[2][2][11]["Num"] = 11
	
	tMidAutumn2019Two_UserName[2][2][12] = {}
	tMidAutumn2019Two_UserName[2][2][12]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[2][2][12]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[2][2][12]["Num"] = 12
	
	tMidAutumn2019Two_UserName[2][2][13] = {}
	tMidAutumn2019Two_UserName[2][2][13]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[2][2][13]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[2][2][13]["Num"] = 13
	
	tMidAutumn2019Two_UserName[2][2][14] = {}
	tMidAutumn2019Two_UserName[2][2][14]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[2][2][14]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[2][2][14]["Num"] = 14
	
	tMidAutumn2019Two_UserName[2][2][15] = {}
	tMidAutumn2019Two_UserName[2][2][15]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[2][2][15]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[2][2][15]["Num"] = 15
	
	tMidAutumn2019Two_UserName[2][2][16] = {}
	tMidAutumn2019Two_UserName[2][2][16]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[2][2][16]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[2][2][16]["Num"] = 16
	
	tMidAutumn2019Two_UserName[2][2][17] = {}
	tMidAutumn2019Two_UserName[2][2][17]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[2][2][17]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[2][2][17]["Num"] = 17
	
	tMidAutumn2019Two_UserName[2][2][18] = {}
	tMidAutumn2019Two_UserName[2][2][18]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[2][2][18]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[2][2][18]["Num"] = 18
	
	tMidAutumn2019Two_UserName[2][2][19] = {}
	tMidAutumn2019Two_UserName[2][2][19]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[2][2][19]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[2][2][19]["Num"] = 19
	
	tMidAutumn2019Two_UserName[2][2][20] = {}
	tMidAutumn2019Two_UserName[2][2][20]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[2][2][20]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[2][2][20]["Num"] = 20

	--埃及
	tMidAutumn2019Two_UserName[3] = {}
	-- 男
	tMidAutumn2019Two_UserName[3][1] = {}
	tMidAutumn2019Two_UserName[3][1]["NpcId"] = {}
	tMidAutumn2019Two_UserName[3][1]["NpcId"][1] = 24807
	tMidAutumn2019Two_UserName[3][1]["NpcId"][2] = 24808
	tMidAutumn2019Two_UserName[3][1]["NpcId"][3] = 24809
	tMidAutumn2019Two_UserName[3][1]["ItemChanceSum"] = 10000
	
	tMidAutumn2019Two_UserName[3][1][1] = {}
	tMidAutumn2019Two_UserName[3][1][1]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[3][1][1]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[3][1][1]["Num"] = 1
	
	tMidAutumn2019Two_UserName[3][1][2] = {}
	tMidAutumn2019Two_UserName[3][1][2]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[3][1][2]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[3][1][2]["Num"] = 2
	
	tMidAutumn2019Two_UserName[3][1][3] = {}
	tMidAutumn2019Two_UserName[3][1][3]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[3][1][3]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[3][1][3]["Num"] = 3
	
	tMidAutumn2019Two_UserName[3][1][4] = {}
	tMidAutumn2019Two_UserName[3][1][4]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[3][1][4]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[3][1][4]["Num"] = 4
	
	tMidAutumn2019Two_UserName[3][1][5] = {}
	tMidAutumn2019Two_UserName[3][1][5]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[3][1][5]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[3][1][5]["Num"] = 5
	
	tMidAutumn2019Two_UserName[3][1][6] = {}
	tMidAutumn2019Two_UserName[3][1][6]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[3][1][6]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[3][1][6]["Num"] = 6
	
	tMidAutumn2019Two_UserName[3][1][7] = {}
	tMidAutumn2019Two_UserName[3][1][7]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[3][1][7]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[3][1][7]["Num"] = 7
	
	tMidAutumn2019Two_UserName[3][1][8] = {}
	tMidAutumn2019Two_UserName[3][1][8]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[3][1][8]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[3][1][8]["Num"] = 8
	
	tMidAutumn2019Two_UserName[3][1][9] = {}
	tMidAutumn2019Two_UserName[3][1][9]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[3][1][9]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[3][1][9]["Num"] = 9
	
	tMidAutumn2019Two_UserName[3][1][10] = {}
	tMidAutumn2019Two_UserName[3][1][10]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[3][1][10]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[3][1][10]["Num"] = 10
	
	tMidAutumn2019Two_UserName[3][1][11] = {}
	tMidAutumn2019Two_UserName[3][1][11]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[3][1][11]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[3][1][11]["Num"] = 11
	
	tMidAutumn2019Two_UserName[3][1][12] = {}
	tMidAutumn2019Two_UserName[3][1][12]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[3][1][12]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[3][1][12]["Num"] = 12
	
	tMidAutumn2019Two_UserName[3][1][13] = {}
	tMidAutumn2019Two_UserName[3][1][13]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[3][1][13]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[3][1][13]["Num"] = 13
	
	tMidAutumn2019Two_UserName[3][1][14] = {}
	tMidAutumn2019Two_UserName[3][1][14]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[3][1][14]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[3][1][14]["Num"] = 14
	
	tMidAutumn2019Two_UserName[3][1][15] = {}
	tMidAutumn2019Two_UserName[3][1][15]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[3][1][15]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[3][1][15]["Num"] = 15
	
	tMidAutumn2019Two_UserName[3][1][16] = {}
	tMidAutumn2019Two_UserName[3][1][16]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[3][1][16]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[3][1][16]["Num"] = 16
	
	tMidAutumn2019Two_UserName[3][1][17] = {}
	tMidAutumn2019Two_UserName[3][1][17]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[3][1][17]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[3][1][17]["Num"] = 17
	
	tMidAutumn2019Two_UserName[3][1][18] = {}
	tMidAutumn2019Two_UserName[3][1][18]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[3][1][18]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[3][1][18]["Num"] = 18
	
	tMidAutumn2019Two_UserName[3][1][19] = {}
	tMidAutumn2019Two_UserName[3][1][19]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[3][1][19]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[3][1][19]["Num"] = 19
	
	tMidAutumn2019Two_UserName[3][1][20] = {}
	tMidAutumn2019Two_UserName[3][1][20]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[3][1][20]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[3][1][20]["Num"] = 20
	
	-- 女
	tMidAutumn2019Two_UserName[3][2] = {}
	tMidAutumn2019Two_UserName[3][2]["NpcId"] = {}
	tMidAutumn2019Two_UserName[3][2]["NpcId"][1] = 24807
	tMidAutumn2019Two_UserName[3][2]["NpcId"][2] = 24808
	tMidAutumn2019Two_UserName[3][2]["NpcId"][3] = 24809
	tMidAutumn2019Two_UserName[3][2]["ItemChanceSum"] = 10000
	
	tMidAutumn2019Two_UserName[3][2][1] = {}
	tMidAutumn2019Two_UserName[3][2][1]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[3][2][1]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[3][2][1]["Num"] = 1
	
	tMidAutumn2019Two_UserName[3][2][2] = {}
	tMidAutumn2019Two_UserName[3][2][2]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[3][2][2]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[3][2][2]["Num"] = 2
	
	tMidAutumn2019Two_UserName[3][2][3] = {}
	tMidAutumn2019Two_UserName[3][2][3]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[3][2][3]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[3][2][3]["Num"] = 3
	
	tMidAutumn2019Two_UserName[3][2][4] = {}
	tMidAutumn2019Two_UserName[3][2][4]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[3][2][4]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[3][2][4]["Num"] = 4
	
	tMidAutumn2019Two_UserName[3][2][5] = {}
	tMidAutumn2019Two_UserName[3][2][5]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[3][2][5]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[3][2][5]["Num"] = 5
	
	tMidAutumn2019Two_UserName[3][2][6] = {}
	tMidAutumn2019Two_UserName[3][2][6]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[3][2][6]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[3][2][6]["Num"] = 6
	
	tMidAutumn2019Two_UserName[3][2][7] = {}
	tMidAutumn2019Two_UserName[3][2][7]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[3][2][7]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[3][2][7]["Num"] = 7
	
	tMidAutumn2019Two_UserName[3][2][8] = {}
	tMidAutumn2019Two_UserName[3][2][8]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[3][2][8]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[3][2][8]["Num"] = 8
	
	tMidAutumn2019Two_UserName[3][2][9] = {}
	tMidAutumn2019Two_UserName[3][2][9]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[3][2][9]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[3][2][9]["Num"] = 9
	
	tMidAutumn2019Two_UserName[3][2][10] = {}
	tMidAutumn2019Two_UserName[3][2][10]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[3][2][10]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[3][2][10]["Num"] = 10
	
	tMidAutumn2019Two_UserName[3][2][11] = {}
	tMidAutumn2019Two_UserName[3][2][11]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[3][2][11]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[3][2][11]["Num"] = 11
	
	tMidAutumn2019Two_UserName[3][2][12] = {}
	tMidAutumn2019Two_UserName[3][2][12]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[3][2][12]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[3][2][12]["Num"] = 12
	
	tMidAutumn2019Two_UserName[3][2][13] = {}
	tMidAutumn2019Two_UserName[3][2][13]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[3][2][13]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[3][2][13]["Num"] = 13
	
	tMidAutumn2019Two_UserName[3][2][14] = {}
	tMidAutumn2019Two_UserName[3][2][14]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[3][2][14]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[3][2][14]["Num"] = 14
	
	tMidAutumn2019Two_UserName[3][2][15] = {}
	tMidAutumn2019Two_UserName[3][2][15]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[3][2][15]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[3][2][15]["Num"] = 15
	
	tMidAutumn2019Two_UserName[3][2][16] = {}
	tMidAutumn2019Two_UserName[3][2][16]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[3][2][16]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[3][2][16]["Num"] = 16
	
	tMidAutumn2019Two_UserName[3][2][17] = {}
	tMidAutumn2019Two_UserName[3][2][17]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[3][2][17]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[3][2][17]["Num"] = 17
	
	tMidAutumn2019Two_UserName[3][2][18] = {}
	tMidAutumn2019Two_UserName[3][2][18]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[3][2][18]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[3][2][18]["Num"] = 18
	
	tMidAutumn2019Two_UserName[3][2][19] = {}
	tMidAutumn2019Two_UserName[3][2][19]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[3][2][19]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[3][2][19]["Num"] = 19
	
	tMidAutumn2019Two_UserName[3][2][20] = {}
	tMidAutumn2019Two_UserName[3][2][20]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[3][2][20]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[3][2][20]["Num"] = 20

	--中国
	tMidAutumn2019Two_UserName[4] = {}
	--男
	tMidAutumn2019Two_UserName[4][1] = {}
	tMidAutumn2019Two_UserName[4][1]["NpcId"] = {}
	tMidAutumn2019Two_UserName[4][1]["NpcId"][1] = 24800
	tMidAutumn2019Two_UserName[4][1]["NpcId"][2] = 24801
	tMidAutumn2019Two_UserName[4][1]["NpcId"][3] = 24803
	tMidAutumn2019Two_UserName[4][1]["ItemChanceSum"] = 10000
	
	tMidAutumn2019Two_UserName[4][1][1] = {}
	tMidAutumn2019Two_UserName[4][1][1]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[4][1][1]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[4][1][1]["Num"] = 1
	
	tMidAutumn2019Two_UserName[4][1][2] = {}
	tMidAutumn2019Two_UserName[4][1][2]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[4][1][2]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[4][1][2]["Num"] = 2
	
	tMidAutumn2019Two_UserName[4][1][3] = {}
	tMidAutumn2019Two_UserName[4][1][3]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[4][1][3]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[4][1][3]["Num"] = 3
	
	tMidAutumn2019Two_UserName[4][1][4] = {}
	tMidAutumn2019Two_UserName[4][1][4]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[4][1][4]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[4][1][4]["Num"] = 4
	
	tMidAutumn2019Two_UserName[4][1][5] = {}
	tMidAutumn2019Two_UserName[4][1][5]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[4][1][5]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[4][1][5]["Num"] = 5
	
	tMidAutumn2019Two_UserName[4][1][6] = {}
	tMidAutumn2019Two_UserName[4][1][6]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[4][1][6]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[4][1][6]["Num"] = 6
	
	tMidAutumn2019Two_UserName[4][1][7] = {}
	tMidAutumn2019Two_UserName[4][1][7]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[4][1][7]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[4][1][7]["Num"] = 7
	
	tMidAutumn2019Two_UserName[4][1][8] = {}
	tMidAutumn2019Two_UserName[4][1][8]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[4][1][8]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[4][1][8]["Num"] = 8
	
	tMidAutumn2019Two_UserName[4][1][9] = {}
	tMidAutumn2019Two_UserName[4][1][9]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[4][1][9]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[4][1][9]["Num"] = 9
	
	tMidAutumn2019Two_UserName[4][1][10] = {}
	tMidAutumn2019Two_UserName[4][1][10]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[4][1][10]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[4][1][10]["Num"] = 10

	tMidAutumn2019Two_UserName[4][1][11] = {}
	tMidAutumn2019Two_UserName[4][1][11]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[4][1][11]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[4][1][11]["Num"] = 11
	
	tMidAutumn2019Two_UserName[4][1][12] = {}
	tMidAutumn2019Two_UserName[4][1][12]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[4][1][12]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[4][1][12]["Num"] = 12
	
	tMidAutumn2019Two_UserName[4][1][13] = {}
	tMidAutumn2019Two_UserName[4][1][13]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[4][1][13]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[4][1][13]["Num"] = 13
	
	tMidAutumn2019Two_UserName[4][1][14] = {}
	tMidAutumn2019Two_UserName[4][1][14]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[4][1][14]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[4][1][14]["Num"] = 14
	
	tMidAutumn2019Two_UserName[4][1][15] = {}
	tMidAutumn2019Two_UserName[4][1][15]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[4][1][15]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[4][1][15]["Num"] = 15
	
	tMidAutumn2019Two_UserName[4][1][16] = {}
	tMidAutumn2019Two_UserName[4][1][16]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[4][1][16]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[4][1][16]["Num"] = 16
	
	tMidAutumn2019Two_UserName[4][1][17] = {}
	tMidAutumn2019Two_UserName[4][1][17]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[4][1][17]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[4][1][17]["Num"] = 17
	
	tMidAutumn2019Two_UserName[4][1][18] = {}
	tMidAutumn2019Two_UserName[4][1][18]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[4][1][18]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[4][1][18]["Num"] = 18
	
	tMidAutumn2019Two_UserName[4][1][19] = {}
	tMidAutumn2019Two_UserName[4][1][19]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[4][1][19]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[4][1][19]["Num"] = 19
	
	tMidAutumn2019Two_UserName[4][1][20] = {}
	tMidAutumn2019Two_UserName[4][1][20]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[4][1][20]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[4][1][20]["Num"] = 20

	--女
	tMidAutumn2019Two_UserName[4][2] = {}
	tMidAutumn2019Two_UserName[4][2]["NpcId"] = {}
	tMidAutumn2019Two_UserName[4][2]["NpcId"][1] = 24802
	tMidAutumn2019Two_UserName[4][2]["NpcId"][2] = 24804
	tMidAutumn2019Two_UserName[4][2]["ItemChanceSum"] = 10000
	
	tMidAutumn2019Two_UserName[4][2][1] = {}
	tMidAutumn2019Two_UserName[4][2][1]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[4][2][1]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[4][2][1]["Num"] = 1
	
	tMidAutumn2019Two_UserName[4][2][2] = {}
	tMidAutumn2019Two_UserName[4][2][2]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[4][2][2]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[4][2][2]["Num"] = 2
	
	tMidAutumn2019Two_UserName[4][2][3] = {}
	tMidAutumn2019Two_UserName[4][2][3]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[4][2][3]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[4][2][3]["Num"] = 3
	
	tMidAutumn2019Two_UserName[4][2][4] = {}
	tMidAutumn2019Two_UserName[4][2][4]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[4][2][4]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[4][2][4]["Num"] = 4
	
	tMidAutumn2019Two_UserName[4][2][5] = {}
	tMidAutumn2019Two_UserName[4][2][5]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[4][2][5]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[4][2][5]["Num"] = 5
	
	tMidAutumn2019Two_UserName[4][2][6] = {}
	tMidAutumn2019Two_UserName[4][2][6]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[4][2][6]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[4][2][6]["Num"] = 6
	
	tMidAutumn2019Two_UserName[4][2][7] = {}
	tMidAutumn2019Two_UserName[4][2][7]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[4][2][7]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[4][2][7]["Num"] = 7
	
	tMidAutumn2019Two_UserName[4][2][8] = {}
	tMidAutumn2019Two_UserName[4][2][8]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[4][2][8]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[4][2][8]["Num"] = 8
	
	tMidAutumn2019Two_UserName[4][2][9] = {}
	tMidAutumn2019Two_UserName[4][2][9]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[4][2][9]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[4][2][9]["Num"] = 9
	
	tMidAutumn2019Two_UserName[4][2][10] = {}
	tMidAutumn2019Two_UserName[4][2][10]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[4][2][10]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[4][2][10]["Num"] = 10

	tMidAutumn2019Two_UserName[4][2][11] = {}
	tMidAutumn2019Two_UserName[4][2][11]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[4][2][11]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[4][2][11]["Num"] = 11
	
	tMidAutumn2019Two_UserName[4][2][12] = {}
	tMidAutumn2019Two_UserName[4][2][12]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[4][2][12]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[4][2][12]["Num"] = 12
	
	tMidAutumn2019Two_UserName[4][2][13] = {}
	tMidAutumn2019Two_UserName[4][2][13]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[4][2][13]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[4][2][13]["Num"] = 13
	
	tMidAutumn2019Two_UserName[4][2][14] = {}
	tMidAutumn2019Two_UserName[4][2][14]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[4][2][14]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[4][2][14]["Num"] = 14
	
	tMidAutumn2019Two_UserName[4][2][15] = {}
	tMidAutumn2019Two_UserName[4][2][15]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[4][2][15]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[4][2][15]["Num"] = 15
	
	tMidAutumn2019Two_UserName[4][2][16] = {}
	tMidAutumn2019Two_UserName[4][2][16]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[4][2][16]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[4][2][16]["Num"] = 16
	
	tMidAutumn2019Two_UserName[4][2][17] = {}
	tMidAutumn2019Two_UserName[4][2][17]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[4][2][17]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[4][2][17]["Num"] = 17
	
	tMidAutumn2019Two_UserName[4][2][18] = {}
	tMidAutumn2019Two_UserName[4][2][18]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[4][2][18]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[4][2][18]["Num"] = 18
	
	tMidAutumn2019Two_UserName[4][2][19] = {}
	tMidAutumn2019Two_UserName[4][2][19]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[4][2][19]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[4][2][19]["Num"] = 19
	
	tMidAutumn2019Two_UserName[4][2][20] = {}
	tMidAutumn2019Two_UserName[4][2][20]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_UserName[4][2][20]["ItemChance"] = 500
	tMidAutumn2019Two_UserName[4][2][20]["Num"] = 20

	
local tMidAutumn2019Two_Get = {}
	tMidAutumn2019Two_Get[1] = {}
	tMidAutumn2019Two_Get[1]["ItemChanceSum"] = 10000
	-- 骰子
	tMidAutumn2019Two_Get[1][1] ={}
	tMidAutumn2019Two_Get[1][1]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_Get[1][1]["ItemChance"] = 5000
	tMidAutumn2019Two_Get[1][1]["RewardItem"] = {}
	tMidAutumn2019Two_Get[1][1]["RewardItem"][1] = {}
	tMidAutumn2019Two_Get[1][1]["RewardItem"][1]["Id"] = 3323106  --骰子
	tMidAutumn2019Two_Get[1][1]["RewardItem"][1]["Attr"] = "0 1"
	tMidAutumn2019Two_Get[1][1]["RewardEffect"] = {}
	tMidAutumn2019Two_Get[1][1]["RewardEffect"]["SzObj"] = "self"
	tMidAutumn2019Two_Get[1][1]["RewardEffect"]["Effect"] = "accession"
	tMidAutumn2019Two_Get[1][1]["Log"] = "0,0,0,0,12001568,2,3323106,1"
	tMidAutumn2019Two_Get[1][1]["Flag"] = 1

	tMidAutumn2019Two_Get[1][2] ={}
	tMidAutumn2019Two_Get[1][2]["RandomItemChanceType"] = 2
	tMidAutumn2019Two_Get[1][2]["ItemChance"] = 5000
	tMidAutumn2019Two_Get[1][2]["RewardEffect"] = {}
	tMidAutumn2019Two_Get[1][2]["RewardEffect"]["SzObj"] = "self"
	tMidAutumn2019Two_Get[1][2]["RewardEffect"]["Effect"] = "zf2-e300"
	tMidAutumn2019Two_Get[1][2]["Log"] = "0,0,0,0,12001568,2,0,0"
	tMidAutumn2019Two_Get[1][2]["Flag"] = 0
----------------------------------逻辑部分---------------------------------------------
---判断时间段
function MidAutumn2019Two_ChkTime()
	if Sys_ChkDayTime(tActivityTime["MidAutumn2019Two"]["Open_Time1"]) or Sys_ChkDayTime(tActivityTime["MidAutumn2019Two"]["Open_Time2"]) then
		return true
	end

	return false
end

--掩码判断
function MidAutumn2019Two_ChkStc(nNum,nUserId)
	local nNewUserId = nUserId or Get_UserId()
	local nEvent = tMidAutumn2019Two_Stc[nNum]["EventType"]
	local nType = tMidAutumn2019Two_Stc[nNum]["DataType"]
	if nNum ~= 3 and nNum ~= 8 then
		if Task_StcInterval(nEvent,nType,1,4,nNewUserId) then  --隔天清零
			Task_SetStatistic(nEvent,nType,0,1,nNewUserId)
			Task_SetStcTimestamp(nEvent,nType,0,nNewUserId)
		end
	end
	---判断
	if Task_ChkStcValue(nEvent,nType,">=",tMidAutumn2019Two_Stc[nNum]["Data"],nNewUserId)  then
		return false
	else
		return true
	end
end
--寻路
function MidAutumn2019Two_GotoNpc(nNum)
	local nUserMap = Get_UserMapId()
	if nUserMap ~= 10593 then
		return
	end
	-- NpcPosition_PathFind(24794)
	LinkNpcGossipFunc_New(24798,"2-1")
end
--进地图
function MidAutumn2019Two_GotoMap(nNum)
	if not Sys_ChkFullTime(tActivityTime["MidAutumn2019Two"]["Now_Time"])  then
		return
	end
	if not User_JudgeLevelAndMetempsychosis(tMidAutumn2019Two_Data["Level"],tMidAutumn2019Two_Data["Metempsychosis"]) then
		return
	end
	local nMapId = tMidAutumn2019Two_Pos[nNum]["MapId"]
	local nPosX = tMidAutumn2019Two_Pos[nNum]["PosX"]
	local nPosY = tMidAutumn2019Two_Pos[nNum]["PosY"]
	if nNum == 24860 and SpecialServer_ChkNoGiftServer() then
		nMapId = tMidAutumn2019Two_Pos[4]["MapId"]
		nPosX = tMidAutumn2019Two_Pos[4]["PosX"]
		nPosY = tMidAutumn2019Two_Pos[4]["PosY"]
	end
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,5,5,1)
	if nNum == 1 then
		Sys_MsgBox(tMidAutumn2019Two_Text[24794]["Msg"]["GotoMap"],"NpcPosition_PathFind</N>24860")
		User_TalkChannel2005(tMidAutumn2019Two_Text[24794]["Msg"]["GoInto"])
		Sys_SaveActionFestivalLog(tMidAutumn2019Two_Data["Log"][3])
	end
end
--送祝福
function MidAutumn2019Two_SendBless(nNpcId,nNum)
	if not Sys_ChkFullTime(tActivityTime["MidAutumn2019Two"]["Now_Time"])  then
		return
	end
	if not MidAutumn2019Two_ChkStc(1) then
		LinkNpcGossipFunc_New(nNpc,"1-2")
		return
	end
	-- 检测背包空间
	local nSpace1 = RewardTemplate_GetRewardSpace(tMidAutumn2019Two_Reward[1])
	local nSpace2 = RewardTemplate_GetRandomSpace(tMidAutumn2019Two_Reward,4)
	local nSpace3 = RewardTemplate_GetRandomSpace(tMidAutumn2019Two_Reward,12)
	if not User_CheckLeftSpace(nSpace1+nSpace2+nSpace3) then
		Sys_MsgBox(tMidAutumn2019Two_Text[24798]["Msg"]["NoSpace"])
		return
	end
	--打掩码给奖励
	local nEvent = tMidAutumn2019Two_Stc[1]["EventType"]
	local nType = tMidAutumn2019Two_Stc[1]["DataType"]
	Task_SetStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0)

	RewardTemplate_UseItemAndMsg(tMidAutumn2019Two_Reward[1])
	RewardTemplate_NewRandom(tMidAutumn2019Two_Reward,4)
	MidAutumn2019Two_GetNewItem()
	
	local sStr = tMidAutumn2019Two_Text[24798]["Option11" .. nNum]
	local nUserId = Get_UserId()
	local sUserName = Get_UserName(nUserId)
	
	local sConent = string.format(tMidAutumn2019Two_Text[24798]["Msg"]["Broad"],sUserName,sStr)
	Sys_SystemBroadcast(sConent)  --全服广播
	--105
	Sys_MsgBox(tMidAutumn2019Two_Text[24798]["Msg"]["Sussess"])
	--集齐两份出提示
	local nItemId = tMidAutumn2019Two_Reward[1]["RewardItem"][1]["Id"]
	local nItemNum = Get_CountItemType(nItemId,0)
	if nItemNum >= 2 then
		User_TalkChannel2005(tMidAutumn2019Two_Text["Msg"]["Reward"])
	end
end
---兑换药材
function MidAutumn2019Two_ExchageItem(nNpcId)
	if not Sys_ChkFullTime(tActivityTime["MidAutumn2019Two"]["Now_Time"])  then
		return
	end
	--今日已换
	if not MidAutumn2019Two_ChkStc(4) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	--判断数量
	local nItemId = tMidAutumn2019Two_Reward[2]["DeleteItem"][1]["Id"]
	local nItemNum = tMidAutumn2019Two_Reward[2]["DeleteItem"][1]["ItemNum"]
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	-- 背包空间不足
	local nSpace1 = RewardTemplate_GetRewardSpace(tMidAutumn2019Two_Reward[2])
	local nSpace2 = RewardTemplate_GetRandomSpace(tMidAutumn2019Two_Reward,4)
	local nSpace3 = RewardTemplate_GetRandomSpace(tMidAutumn2019Two_Reward,12)
	if not User_CheckLeftSpace(nSpace1+nSpace2+nSpace3) then
		Sys_MsgBox(tMidAutumn2019Two_Text[24798]["Msg"]["NoSpace"])
		return
	end
	--打掩码给奖励
	local nEvent = tMidAutumn2019Two_Stc[4]["EventType"]
	local nType = tMidAutumn2019Two_Stc[4]["DataType"]
	Task_SetStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0)

	RewardTemplate_UseItemAndMsg(tMidAutumn2019Two_Reward[2])
	--概率获得 一天一个
	MidAutumn2019Two_GetNewItem()
	local tReward = RewardTemplate_NewRandom(tMidAutumn2019Two_Reward,4)
	local nItem = tReward[1]["tAward"][1]["RewardItem"][1]["Id"]
	local sAddItemName = Get_ItemtypeName(nItem)
	local sStr = string.format(tMidAutumn2019Two_Text[24796]["Text231"],sAddItemName)
	tNpcGossip[nNpcId]["Text231"] = sStr
	LinkNpcGossipFunc_New(nNpcId,"2-3")
	Sys_MsgBox(tMidAutumn2019Two_Text["Msg"]["Jiqi"])
	--广播
	if tReward[1]["tAward"][1]["RewardBroadCast"] ~= nil then
		local nUserId = Get_UserId()
		local sUserName = Get_UserName(nUserId)
		local sConent = string.format(tMidAutumn2019Two_Text["Msg"][1],sUserName,sAddItemName)
		Sys_SystemBroadcast(sConent)  --全服广播
	end
end
-- 嫦娥仙子
function MidAutumn2019Two_MoonReward(nNpcId)
	if not Sys_ChkFullTime(tActivityTime["MidAutumn2019Two"]["Now_Time"]) then
		return
	end
	if not MidAutumn2019Two_ChkStc(5) then
		return
	end
	local nEvent = tMidAutumn2019Two_Stc[5]["EventType"]
	local nType = tMidAutumn2019Two_Stc[5]["DataType"]
	if Task_ChkStcValue(nEvent,nType,"<",1)  then
		return
	end
	--判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tMidAutumn2019Two_Reward[3])
	if not RewardTemplate_CheckSpace(tMidAutumn2019Two_Reward[3]) then
		local sStr = string.format(tMidAutumn2019Two_Text[24797]["Text211"],nSpace)
		tNpcGossip[nNpcId]["Text211"] = sStr
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	--打掩码给奖励
	Task_SetStatistic(nEvent,nType,2,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	RewardTemplate_UseItemAndMsg(tMidAutumn2019Two_Reward[3])
	local nUserId = Get_UserId()
	local sUserName = Get_UserName(nUserId)
	local sConent = string.format(tMidAutumn2019Two_Text[24797]["Msg"]["Get"],sUserName)
	Sys_SystemBroadcast(sConent)  --全服广播

end 

---换NPC
function MidAutumn2019Two_MoveNpc()
	if not Sys_ChkFullTime(tActivityTime["MidAutumn2019Two"]["Now_Time"]) then
		return
	end
	--随机美国一个
	MidAutumn2019Two_MoveMeiNpc()
	--随机多米尼加 一男一女
	MidAutumn2019Two_MoveDuoMiNpc()
	--随机埃及
	MidAutumn2019Two_MoveAiJiNpc(3,2)
	--随机中国
	MidAutumn2019Two_MoveAiJiNpc(4,2)
end

function MidAutumn2019Two_MoveMeiNpc()
	local flat,tNum = Probabil_RandomAward(tMidAutumn2019Two_UserName,1)  
	local nNum = tNum[1]["tAward"][1]["Num"]
	local nNpcId = tMidAutumn2019Two_UserName[1]["NpcId"]
	local sUserName = tMidAutumn2019Two_Text[1][nNum]
	Npc_ChgName(sUserName,nNpcId)
end
function MidAutumn2019Two_MoveDuoMiNpc()
	for i = 1,2 do
		local flat,tNum = Probabil_RandomAward(tMidAutumn2019Two_UserName[2],i)  
		local nNum = tNum[1]["tAward"][1]["Num"]
		local nNpcId = tMidAutumn2019Two_UserName[2][i]["NpcId"]
		local sUserName = tMidAutumn2019Two_Text[2][i][nNum]
		Npc_ChgName(sUserName,nNpcId)
	end
end

function MidAutumn2019Two_MoveAiJiNpc(nIndex,nData)
-- nData 代表男女 1男 2女
	local tTab = CommonFunc_Copy(tMidAutumn2019Two_UserName[nIndex])
	for j = 1,nData do
		local nFlag = #tMidAutumn2019Two_UserName[nIndex][j]["NpcId"]
		for i = 1,nFlag do
			local flat,tNum = Probabil_RandomAward(tTab,j)  
			local nNum = tNum[1]["tAward"][1]["Num"]
			local nNpcId = tTab[j]["NpcId"][i]
			local sUserName = tMidAutumn2019Two_Text[nIndex][j][nNum]
			Npc_ChgName(sUserName,nNpcId)
			
			tTab[j]["ItemChanceSum"] = tTab[j]["ItemChanceSum"] - tTab[j][nNum]["ItemChance"]
			tTab[j][nNum]["ItemChance"] = 0
		end
	end
end

-- 采集药材
function MidAutumn2019Two_CaiJiNpc()
	if not Sys_ChkFullTime(tActivityTime["MidAutumn2019Two"]["Now_Time"]) then
		return
	end
	--没跟吴刚对话过
	if MidAutumn2019Two_ChkStc(7) then
		return
	end
	--今日已换
	if not MidAutumn2019Two_ChkStc(2) then
		Sys_MsgBox(tMidAutumn2019Two_Text["Msg"]["NoGet"])
		return
	end
	--判断背包空间
	local nSpace1 = RewardTemplate_GetRewardSpace(tMidAutumn2019Two_Reward[1])
	local nSpace2 = RewardTemplate_GetRandomSpace(tMidAutumn2019Two_Reward,4)
	local nSpace3 = RewardTemplate_GetRandomSpace(tMidAutumn2019Two_Reward,12)
	if not User_CheckLeftSpace(nSpace1+nSpace2+nSpace3) then
		Sys_MsgBox(tMidAutumn2019Two_Text[24798]["Msg"]["NoSpace"])
		return
	end
	--读条 采集
	local nSecs = tMidAutumn2019Two_Data["Second"]
	local nActionId = tMidAutumn2019Two_Data["Action"]
	local sContent = tMidAutumn2019Two_Text[24795]["Msg"]["Getting"]
	User_SetExplore(nSecs,sContent,nActionId,"MidAutumn2019Two_Geting")
end

function MidAutumn2019Two_Geting(nUserId)
	if not Sys_ChkFullTime(tActivityTime["MidAutumn2019Two"]["Now_Time"]) then
		return
	end
	--判断背包空间
	local nSpace1 = RewardTemplate_GetRewardSpace(tMidAutumn2019Two_Reward[1],nUserId)
	local nSpace2 = RewardTemplate_GetRandomSpace(tMidAutumn2019Two_Reward,4,nUserId)
	local nSpace3 = RewardTemplate_GetRandomSpace(tMidAutumn2019Two_Reward,12,nUserId)
	if not User_CheckLeftSpace(nSpace1+nSpace2+nSpace3,nUserId) then
		Sys_MsgBox(tMidAutumn2019Two_Text[24798]["Msg"]["NoSpace"],nil,nil,nUserId)
		return
	end
	-- 打掩码给物品
	local nEvent = tMidAutumn2019Two_Stc[2]["EventType"]
	local nType = tMidAutumn2019Two_Stc[2]["DataType"]
	Task_AddStatistic(nEvent,nType,1,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	--3次才给奖励
	if Task_ChkStcValue(nEvent,nType,">=",tMidAutumn2019Two_Stc[2]["Data"],nUserId) then
		RewardTemplate_UseItemAndMsg(tMidAutumn2019Two_Reward[1],nUserId)
		MidAutumn2019Two_GetNewItem(nUserId)
		local tReward = RewardTemplate_NewRandom(tMidAutumn2019Two_Reward,4,nUserId)
		local nItem = tReward[1]["tAward"][1]["RewardItem"][1]["Id"]
		
		local sAddItemName = Get_ItemtypeName(nItem)
		local sStr = string.format(tMidAutumn2019Two_Text[24795]["Msg"]["Get"],sAddItemName)
		Sys_MsgBox(sStr,nil,nil,nUserId)
		--广播
		if tReward[1]["tAward"][1]["RewardBroadCast"] ~= nil then
			local sUserName = Get_UserName(nUserId)
			local sConent = string.format(tMidAutumn2019Two_Text["Msg"][2],sUserName,sAddItemName)
			Sys_SystemBroadcast(sConent)  --全服广播
		end
		--集齐两份出提示
		local nItemId = tMidAutumn2019Two_Reward[1]["RewardItem"][1]["Id"]
		local nItemNum = Get_CountItemType(nItemId,0,1,nUserId,nUserId)
		if nItemNum >= 2 then
			User_TalkChannel2005(tMidAutumn2019Two_Text["Msg"]["Reward"],nUserId)
		end
		return
	end
	local nTime = Get_UserStatisticValue(nEvent,nType,nUserId)
	local sConent = string.format(tMidAutumn2019Two_Text[24795]["Msg"]["Reward"],nTime)
	User_TalkChannel2005(sConent,nUserId)
	--光效
	User_EffectAdd("self",tMidAutumn2019Two_Reward[1]["RewardEffect"]["Effect"],nUserId)
end

function MidAutumn2019Two_SetStc(nNpcId)
	if not Sys_ChkFullTime(tActivityTime["MidAutumn2019Two"]["Now_Time"]) then
		return
	end
	if not MidAutumn2019Two_ChkStc(3) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	local nEvent = tMidAutumn2019Two_Stc[3]["EventType"]
	local nType = tMidAutumn2019Two_Stc[3]["DataType"]
	Task_SetStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0)

	User_OpenVideo(960,7)
	--判断背包空间
	if not RewardTemplate_CheckSpace(tMidAutumn2019Two_Reward[11]) then
		return
	end
	--判断等级 2转120才给物品
	if not User_JudgeLevelAndMetempsychosis(tMidAutumn2019Two_Data["GetLevel"],tMidAutumn2019Two_Data["GetMetempsychosis"]) then
		return
	end
	RewardTemplate_UseItemAndMsg(tMidAutumn2019Two_Reward[11])
	-- Sys_MsgBox(tMidAutumn2019Two_Text["Msg"]["MoonGet"])

	Sys_MsgBox(tMidAutumn2019Two_Text["Msg"]["Houyi"],"LinkNpcGossipFunc_New</N>" .. nNpcId .. "</S>" .. "1-2")
end

function MidAutumn2019Two_OpenWeb()
	 User_SendWebPage(tMidAutumn2019Two_Data["Web"])
end

--嫦娥仙子
function MidAutumn2019Two_OpenNpc(nNpcId)
	--判断玩家距离
	local nUserId = Get_UserId()
	local nUserPosX = Get_UserPositionX(nUserId)
	local nUserPosY = Get_UserPositionY(nUserId)
	local nPosX = Get_NpcPositionX(nNpcId)
	local nPosY = Get_NpcPositionY(nNpcId)
	local nX_Distance = math.abs(nUserPosX-nPosX)
	local nY_Distance = math.abs(nUserPosY-nPosY)
	--比较宝藏的坐标x,y与玩家的坐标差绝对值
	if nX_Distance < 8 and nY_Distance < 8 then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
	end
end
-- 与赏月npc对话 有机会获得骰子
function MidAutumn2019Two_TalkNpc(nNpcId)
	if not Sys_ChkFullTime(tActivityTime["MidAutumn2019Two"]["Now_Time"]) then
		return false
	end
	if not User_JudgeLevelAndMetempsychosis(tMidAutumn2019Two_Data["Level"],tMidAutumn2019Two_Data["Metempsychosis"]) then
		return false
	end
	local nEvent = tMidAutumn2019Two_Stc[6]["EventType"]
	local nType = tMidAutumn2019Two_Stc[6]["DataType"]
	local nValue = Get_UserStatisticValue(nEvent,nType)
	if Sys_ParseNumbersContain(tMidAutumn2019Two_Stcdata[nNpcId],nValue) then
		return true
	end
	if not RewardTemplate_ChkRandomSpace(tMidAutumn2019Two_Get,1) then
		return true
	end
	Task_AddStatistic(nEvent,nType,tMidAutumn2019Two_Stcdata[nNpcId],1)
	Task_SetStcTimestamp(nEvent,nType,0)

	--随机物品
	local tReward = RewardTemplate_NewRandom(tMidAutumn2019Two_Get,1)
	local nItem = tReward[1]["tAward"][1]["Flag"]
	if nItem == 1 then
		Sys_MsgBox(tMidAutumn2019Two_Text["Msg"]["Get"])
	else
		if Get_UserTransformId() >= 0 then
			User_SetTransform(0)
		end
		--变身兔女郎
		User_TransForm(10641,0,5742,30)
		Sys_MsgBox(tMidAutumn2019Two_Text["Msg"]["Change"])
	end
	return true
end

function MidAutumn2019Two_Open(nItemId,nNum)
	if not Item_ChkItem(nItemId) then
		return
	end
	--判断职业
	local nUserId = Get_UserId()
	if nNum == 5 then
		local nUserPro = Get_NewUserProfession(nUserId)
		if nUserPro < G_PRO_Trojan0_New or nUserPro > G_PRO_Trojan49_New then
			Sys_MsgBox(tMidAutumn2019Two_Text[3313638]["Not"])
			return
		end
	end
	--背包空间判断
	if not RewardTemplate_CheckSpace(tMidAutumn2019Two_Reward[3313638][nNum]) then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tMidAutumn2019Two_Reward[3313638][nNum])
end

function MidAutumn2019Two_First(nNpcId)
	local nEvent = tMidAutumn2019Two_Stc[8]["EventType"]
	local nType = tMidAutumn2019Two_Stc[8]["DataType"]
	Task_SetStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0)

	LinkNpcGossipFunc_New(nNpcId,"1-4")
	--页面
	User_OpenVideo(960,9)
end

--变身
function MidAutumn2019Two_ChangeUser()
	if not Sys_ChkFullTime(tActivityTime["MidAutumn2019Two"]["Now_Time"]) then
		return false
	end
	if not User_JudgeLevelAndMetempsychosis(tMidAutumn2019Two_Data["Level"],tMidAutumn2019Two_Data["Metempsychosis"]) then
		return false
	end
	if Get_UserTransformId() >= 0 then
		User_SetTransform(0)
	end
	--变身兔子
	User_TransForm(10642,0,5740,30)
	Sys_MsgBox(tMidAutumn2019Two_Text["Msg"]["TuNvLang"])
end

function MidAutumn2019Two_GotoMoon(nNpcId)
	if not Sys_ChkFullTime(tActivityTime["MidAutumn2019Two"]["Now_Time"]) then
		return false
	end
	if not User_JudgeLevelAndMetempsychosis(tMidAutumn2019Two_Data["Level"],tMidAutumn2019Two_Data["Metempsychosis"]) then
		return false
	end
	User_OpenVideo(960,7)
	-- local nEvent = tMidAutumn2019Two_Stc[9]["EventType"]
	-- local nType = tMidAutumn2019Two_Stc[9]["DataType"]
	-- if Task_ChkStcValue(nEvent,nType,">=",tMidAutumn2019Two_Stc[9]["Data"])  then
		-- return
	-- end

	-- 判断背包空间
	-- if not RewardTemplate_CheckSpace(tMidAutumn2019Two_Reward[11]) then
		-- return
	-- end
	-- Task_SetStatistic(nEvent,nType,1,1)
	-- Task_SetStcTimestamp(nEvent,nType,0)
	-- 判断等级 2转120才给物品
	-- if not User_JudgeLevelAndMetempsychosis(tMidAutumn2019Two_Data["GetLevel"],tMidAutumn2019Two_Data["GetMetempsychosis"]) then
		-- return
	-- end
	-- RewardTemplate_UseItemAndMsg(tMidAutumn2019Two_Reward[11])
	-- Sys_MsgBox(tMidAutumn2019Two_Text["Msg"]["MoonGet"])
	-- tNpcGossip[24796]["OptionFunc311"] = "MidAutumn2019Two_GotoMoon</N>24796"  
end

function MidAutumn2019Two_PathFind(nNpcId)
	if not Sys_ChkFullTime(tActivityTime["MidAutumn2019Two"]["Now_Time"]) then
		return false
	end
	if not User_JudgeLevelAndMetempsychosis(tMidAutumn2019Two_Data["Level"],tMidAutumn2019Two_Data["Metempsychosis"]) then
		return false
	end
	if not MidAutumn2019Two_ChkStc(2) then
		return
	end
	local nEvent = tMidAutumn2019Two_Stc[7]["EventType"]
	local nType = tMidAutumn2019Two_Stc[7]["DataType"]
	Task_SetStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	if Get_UserTransformId() >= 0 then
		User_SetTransform(0)
	end
	--变身
	User_TransForm(10643,0,5741,30)
	NpcPosition_PathFind(nNpcId) 
end

function MidAutumn2019Two_ChangeItem(nItemId,nNum)
	if not Item_ChkItem(nItemId) then
		return
	end

	if Item_DelItem(nItemId) then
		local nMonId = tMidAutumn2019Two_Change[nNum]["Monster"]
		local nMagic = tMidAutumn2019Two_Change[nNum]["Magic"]
		if Get_UserTransformId() >= 0 then
			User_SetTransform(0)
		end
		
		User_TransForm(nMagic,0,nMonId,30)
		Sys_SaveActionFestivalLog(tMidAutumn2019Two_Data["Log"][2])
	end
end
function MidAutumn2019Two_GetNewItem(nUserId)
	local nNewUserId = nUserId or Get_UserId()
	if not MidAutumn2019Two_ChkStc(11,nNewUserId) then
		return
	end
	if not RewardTemplate_ChkRandomSpace(tMidAutumn2019Two_Reward,12,nNewUserId) then
		return
	end
	local nEvent = tMidAutumn2019Two_Stc[11]["EventType"]
	local nType = tMidAutumn2019Two_Stc[11]["DataType"]

	local tReward = RewardTemplate_NewRandom(tMidAutumn2019Two_Reward,12,nNewUserId)
	local nFlag = tReward[1]["tAward"][1]["Flag"]
	if nFlag == 1 then
		Task_SetStatistic(nEvent,nType,1,1,nNewUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nNewUserId)
	end
end 
----------------------------------Npc模板部分---------------------------------------------
tNpcFace[2070] = 6
tNpcGossip[24794] = tNpcGossip[24794] or DefaultNpc:new{}
tNpcGossip[24794]["OptionHidden"] = 1
tNpcGossip[24794]["DialogueText"] = tMidAutumn2019Two_Text[24794]
-- 活动前
tNpcGossip[24794]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[24794]["tOption1-1"] = {111}
tNpcGossip[24794]["ChkFunc1-1"]= function()
	return Sys_ChkFullTime(tActivityTime["MidAutumn2019Two"]["Bef_Time"]) 
end
-- 活动后
tNpcGossip[24794]["Text1-2"] = {111,121}
tNpcGossip[24794]["tOption1-2"] = {121}
tNpcGossip[24794]["ChkFunc1-2"]= function()
	return not Sys_ChkFullTime(tActivityTime["MidAutumn2019Two"]["Now_Time"]) 
end
-- 活动中
-- 【等级不足】
tNpcGossip[24794]["Text1-3"] = {111,131,132,133,134}
tNpcGossip[24794]["tOption1-3"] = {131}
tNpcGossip[24794]["ChkFunc1-3"]= function()
	return not User_JudgeLevelAndMetempsychosis(tMidAutumn2019Two_Data["Level"],tMidAutumn2019Two_Data["Metempsychosis"])
end
-- 【等级达到】
tNpcGossip[24794]["Text1-4"] = {141,142,143,144,145,146,147,148,149}
tNpcGossip[24794]["tOption1-4"] = {141,142,161}
tNpcGossip[24794]["ChkFunc1-4"]= function()
	return Sys_ChkFullTime(tActivityTime["MidAutumn2019Two"]["Now_Time"]) --and not MidAutumn2019Two_ChkStc(8)
end
tNpcGossip[24794]["OptionFunc141"] = "MidAutumn2019Two_GotoMap</N>1"  
tNpcGossip[24794]["OptionChkFunc141"]= function()
	return MidAutumn2019Two_ChkTime()
end
tNpcGossip[24794]["OptionChkFunc142"]= function()
	return not MidAutumn2019Two_ChkTime()
end
tNpcGossip[24794]["OptionFunc160"] = "GlobalMidAutumn_EnterGlobalServer</N>24794"  
tNpcGossip[24794]["OptionPoint161"] = "1-6"

-- tNpcGossip[24794]["Text1-5"] = {141,142,143,144,145,146,147,148,149}
-- tNpcGossip[24794]["tOption1-5"] = {147,142}
-- tNpcGossip[24794]["ChkFunc1-5"]= function()

	-- return MidAutumn2019Two_ChkStc(8)
-- end
-- tNpcGossip[24794]["OptionFunc147"] = "MidAutumn2019Two_First</N>24794"  

tNpcGossip[24794]["Text1-6"] = {161,162,163,164,165}
tNpcGossip[24794]["tOption1-6"] = {162}
tNpcGossip[24794]["OptionFunc162"] = "GlobalMidAutumn_OpenWeb</N>24794"  

-----------赏月台NPC
tNpcGossip[24860] = tNpcGossip[24860] or DefaultNpc:new{}
tNpcGossip[24860]["OptionHidden"] = 1
tNpcGossip[24860]["DialogueText"] = tMidAutumn2019Two_Text[24794]
-- 活动前
tNpcGossip[24860]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[24860]["tOption1-1"] = {111}
tNpcGossip[24860]["ChkFunc1-1"]= function()
	return Sys_ChkFullTime(tActivityTime["MidAutumn2019Two"]["Bef_Time"]) 
end
-- 活动后
tNpcGossip[24860]["Text1-2"] = {121}
tNpcGossip[24860]["tOption1-2"] = {121}
tNpcGossip[24860]["ChkFunc1-2"]= function()
	return not Sys_ChkFullTime(tActivityTime["MidAutumn2019Two"]["Now_Time"]) 
end
-- 活动中
-- 【等级不足】
tNpcGossip[24860]["Text1-3"] = {131,132,133,134}
tNpcGossip[24860]["tOption1-3"] = {131}
tNpcGossip[24860]["ChkFunc1-3"]= function()
	return not User_JudgeLevelAndMetempsychosis(tMidAutumn2019Two_Data["Level"],tMidAutumn2019Two_Data["Metempsychosis"])
end
-- 【等级达到】
tNpcGossip[24860]["Text1-4"] = {141,142,143,144,145,146,147,148,149}
tNpcGossip[24860]["tOption1-4"] = {144,151,145,152,146,153,148,154,149,143}
tNpcGossip[24860]["ChkFunc1-4"]= function()
	return Sys_ChkFullTime(tActivityTime["MidAutumn2019Two"]["Now_Time"]) 
end
tNpcGossip[24860]["OptionFunc143"] = "MidAutumn2019Two_GotoMap</N>24860"  

tNpcGossip[24860]["OptionFunc144"] = "NpcPosition_PathFind</N>24857"  
tNpcGossip[24860]["OptionFunc145"] = "NpcPosition_PathFind</N>24795"  
tNpcGossip[24860]["OptionFunc146"] = "NpcPosition_PathFind</N>24796"  
tNpcGossip[24860]["OptionFunc148"] = "MidAutumn2019Two_ChangeUser</N>24796"  
tNpcGossip[24860]["OptionFunc149"] = "NpcPosition_PathFind</N>24807"  
tNpcGossip[24860]["OptionChkFunc144"]= function()
	return  MidAutumn2019Two_ChkStc(1)
end
tNpcGossip[24860]["OptionChkFunc145"]= function()
	return  MidAutumn2019Two_ChkStc(2)
end
tNpcGossip[24860]["OptionChkFunc146"]= function()
	return  MidAutumn2019Two_ChkStc(4)
end
tNpcGossip[24860]["OptionChkFunc148"]= function()

	return MidAutumn2019Two_ChkStc(10)
end
--已完成
tNpcGossip[24860]["OptionChkFunc151"]= function()
	return not MidAutumn2019Two_ChkStc(1)
end
tNpcGossip[24860]["OptionChkFunc152"]= function()
	return not MidAutumn2019Two_ChkStc(2)
end
tNpcGossip[24860]["OptionChkFunc153"]= function()
	return not MidAutumn2019Two_ChkStc(4)
end

tNpcGossip[24860]["OptionChkFunc154"]= function()

	return not MidAutumn2019Two_ChkStc(10)
end

-- 月桂树
-- tNpcFace[4098] = 180
-- tNpcGossip[24799] = tNpcGossip[24799] or DefaultNpc:new{}
-- tNpcGossip[24799]["OptionHidden"] = 1
-- tNpcGossip[24799]["DialogueText"] = tMidAutumn2019Two_Text[24799]
-- 活动前
-- tNpcGossip[24799]["Text1-1"] = {111}
-- tNpcGossip[24799]["tOption1-1"] = {111}

-- 中秋花灯
tNpcFace[2074] = 2467
tNpcGossip[24798] = tNpcGossip[24798] or DefaultNpc:new{}
tNpcGossip[24798]["OptionHidden"] = 1
tNpcGossip[24798]["DialogueText"] = tMidAutumn2019Two_Text[24798]
-- 活动前
tNpcGossip[24798]["Text1-1"] = {111,112}
tNpcGossip[24798]["tOption1-1"] = {111,112,113,114,115,116,117,118}
tNpcGossip[24798]["OptionFunc111"] = "MidAutumn2019Two_SendBless</N>24798</N>1"  
tNpcGossip[24798]["OptionFunc112"] = "MidAutumn2019Two_SendBless</N>24798</N>2"  
tNpcGossip[24798]["OptionFunc113"] = "MidAutumn2019Two_SendBless</N>24798</N>3"  
tNpcGossip[24798]["OptionFunc114"] = "MidAutumn2019Two_SendBless</N>24798</N>4"  
tNpcGossip[24798]["OptionFunc115"] = "MidAutumn2019Two_SendBless</N>24798</N>5"  
tNpcGossip[24798]["OptionFunc116"] = "MidAutumn2019Two_SendBless</N>24798</N>6"  
tNpcGossip[24798]["OptionFunc117"] = "MidAutumn2019Two_SendBless</N>24798</N>7"  
tNpcGossip[24798]["OptionFunc118"] = "MidAutumn2019Two_SendBless</N>24798</N>8"  

tNpcGossip[24798]["ChkFunc1-1"]= function()
	return MidAutumn2019Two_ChkStc(1)
end

tNpcGossip[24798]["Text1-2"] = {121,122}
tNpcGossip[24798]["tOption1-2"] = {121}

tNpcGossip[24857] = tNpcGossip[24798] or DefaultNpc:new{}
tNpcGossip[24858] = tNpcGossip[24798] or DefaultNpc:new{}
tNpcGossip[24859] = tNpcGossip[24798] or DefaultNpc:new{}
-- 吴刚
tNpcFace[5160] = 23
tNpcGossip[24795] = tNpcGossip[24795] or DefaultNpc:new{}
tNpcGossip[24795]["OptionHidden"] = 1
tNpcGossip[24795]["DialogueText"] = tMidAutumn2019Two_Text[24795]
-- 活动前
tNpcGossip[24795]["Text1-1"] = {111,112,113}
tNpcGossip[24795]["tOption1-1"] = {111,112,113}
tNpcGossip[24795]["OptionFunc111"] = "MidAutumn2019Two_PathFind</N>24799"  
-- tNpcGossip[24795]["OptionFunc113"] = "User_OpenVideo</N>960</N>8"  
tNpcGossip[24795]["OptionPoint113"] = "2-1"
tNpcGossip[24795]["OptionChkFunc111"]= function()
	return MidAutumn2019Two_ChkStc(2)
end
tNpcGossip[24795]["OptionChkFunc112"]= function()
	return not MidAutumn2019Two_ChkStc(2)
end
tNpcGossip[24795]["Text2-1"] = {211,212,213}
tNpcGossip[24795]["tOption2-1"] = {211}

-- 【奔月】后羿
tNpcFace[5161] = 32
tNpcGossip[24796] = tNpcGossip[24796] or DefaultNpc:new{}
tNpcGossip[24796]["OptionHidden"] = 1
tNpcGossip[24796]["DialogueText"] = tMidAutumn2019Two_Text[24796]
-- 【首次对话、阅读嫦娥奔月的故事】
tNpcGossip[24796]["Text1-1"] = {111,112,113,114}
tNpcGossip[24796]["tOption1-1"] = {111}
tNpcGossip[24796]["OptionFunc111"] = "MidAutumn2019Two_SetStc</N>24796"  
tNpcGossip[24796]["ChkFunc1-1"]= function()

	return MidAutumn2019Two_ChkStc(3)
end
-- 【再次点击NPC】
tNpcGossip[24796]["Text1-2"] = {121,122,123,124,125,126,127}
tNpcGossip[24796]["tOption1-2"] = {121,122,123}
tNpcGossip[24796]["OptionFunc121"] = "MidAutumn2019Two_ExchageItem</N>24796"  
-- tNpcGossip[24796]["OptionPoint123"] = "3-1"
tNpcGossip[24796]["OptionFunc123"] = "MidAutumn2019Two_GotoMoon</N>24796"  


tNpcGossip[24796]["OptionChkFunc121"]= function()
	return MidAutumn2019Two_ChkStc(4)
end
tNpcGossip[24796]["OptionChkFunc122"]= function()
	return not MidAutumn2019Two_ChkStc(4)
end
-- 接1、换取长生药碎片（3份药材）
tNpcGossip[24796]["Text2-1"] = {211,212}
tNpcGossip[24796]["tOption2-1"] = {211}
-- 【今日已换】
tNpcGossip[24796]["Text2-2"] = {221}
tNpcGossip[24796]["tOption2-2"] = {221}
-- 【换得长生药碎片】
tNpcGossip[24796]["Text2-3"] = {231}
tNpcGossip[24796]["tOption2-3"] = {231}

-- 听听嫦娥奔月的故事
-- tNpcGossip[24796]["Text3-1"] = {311,312,313,314,315,316}
-- tNpcGossip[24796]["tOption3-1"] = {311}
-- tNpcGossip[24796]["OptionFunc311"] = "MidAutumn2019Two_GotoMoon</N>24796"  

-- 【月宫珍宝】嫦娥仙子
tNpcFace[5176] = 232
tNpcGossip[24797] = tNpcGossip[24797] or DefaultNpc:new{}
tNpcGossip[24797]["OptionHidden"] = 1
tNpcGossip[24797]["DialogueText"] = tMidAutumn2019Two_Text[24797]
tNpcGossip[24797]["Text1-1"] = {111,112,113,114}
tNpcGossip[24797]["tOption1-1"] = {111,113,112}
tNpcGossip[24797]["OptionFunc111"] = "MidAutumn2019Two_MoonReward</N>24797"  
tNpcGossip[24797]["OptionFunc112"] = "MidAutumn2019Two_GotoMap</N>2"  
tNpcGossip[24797]["OptionChkFunc111"]= function()
	return MidAutumn2019Two_ChkStc(5)
end
tNpcGossip[24797]["OptionChkFunc113"]= function()
	return not MidAutumn2019Two_ChkStc(5)
end
-- 接1、领取珍宝
-- 【背包空间不足】
tNpcGossip[24797]["Text2-1"] = {211}
tNpcGossip[24797]["tOption2-1"] = {211}

-- 中国
tNpcFace[5163] = 7
tNpcGossip[24800] = tNpcGossip[24800] or DefaultNpc:new{}
tNpcGossip[24800]["OptionHidden"] = 1
tNpcGossip[24800]["DialogueText"] = tMidAutumn2019Two_Text[24800]
tNpcGossip[24800]["Text1-1"] = {111}
tNpcGossip[24800]["tOption1-1"] = {111}
tNpcGossip[24800]["ChkFunc1-1"]= function()
	return MidAutumn2019Two_TalkNpc(24800)
end
tNpcFace[5171] = 25
tNpcGossip[24801] = tNpcGossip[24801] or DefaultNpc:new{}
tNpcGossip[24801]["OptionHidden"] = 1
tNpcGossip[24801]["DialogueText"] = tMidAutumn2019Two_Text[24801]
tNpcGossip[24801]["Text1-1"] = {111}
tNpcGossip[24801]["tOption1-1"] = {111}
tNpcGossip[24801]["ChkFunc1-1"]= function()
	return MidAutumn2019Two_TalkNpc(24801)
end
tNpcFace[5172] = 110
tNpcGossip[24802] = tNpcGossip[24802] or DefaultNpc:new{}
tNpcGossip[24802]["OptionHidden"] = 1
tNpcGossip[24802]["DialogueText"] = tMidAutumn2019Two_Text[24802]
tNpcGossip[24802]["Text1-1"] = {111}
tNpcGossip[24802]["tOption1-1"] = {111}
tNpcGossip[24802]["ChkFunc1-1"]= function()
	return MidAutumn2019Two_TalkNpc(24802)
end
tNpcFace[5173] = 54
tNpcGossip[24803] = tNpcGossip[24803] or DefaultNpc:new{}
tNpcGossip[24803]["OptionHidden"] = 1
tNpcGossip[24803]["DialogueText"] = tMidAutumn2019Two_Text[24803]
tNpcGossip[24803]["Text1-1"] = {111}
tNpcGossip[24803]["tOption1-1"] = {111}
tNpcGossip[24803]["ChkFunc1-1"]= function()
	return MidAutumn2019Two_TalkNpc(24803)
end
tNpcFace[5174] = 155
tNpcGossip[24804] = tNpcGossip[24804] or DefaultNpc:new{}
tNpcGossip[24804]["OptionHidden"] = 1
tNpcGossip[24804]["DialogueText"] = tMidAutumn2019Two_Text[24804]
tNpcGossip[24804]["Text1-1"] = {111}
tNpcGossip[24804]["tOption1-1"] = {111}
tNpcGossip[24804]["ChkFunc1-1"]= function()
	return MidAutumn2019Two_TalkNpc(24804)
end
-- 多米尼加（一对情侣在互诉衷肠）
tNpcFace[5436] = 59
tNpcGossip[24805] = tNpcGossip[24805] or DefaultNpc:new{}
tNpcGossip[24805]["OptionHidden"] = 1
tNpcGossip[24805]["DialogueText"] = tMidAutumn2019Two_Text[24805]
tNpcGossip[24805]["Text1-1"] = {111}
tNpcGossip[24805]["tOption1-1"] = {111}
tNpcGossip[24805]["ChkFunc1-1"]= function()
	return MidAutumn2019Two_TalkNpc(24805)
end
tNpcFace[5175] = 119
tNpcGossip[24806] = tNpcGossip[24806] or DefaultNpc:new{}
tNpcGossip[24806]["OptionHidden"] = 1
tNpcGossip[24806]["DialogueText"] = tMidAutumn2019Two_Text[24806]
tNpcGossip[24806]["Text1-1"] = {111}
tNpcGossip[24806]["tOption1-1"] = {111}
tNpcGossip[24806]["ChkFunc1-1"]= function()
	return MidAutumn2019Two_TalkNpc(24806)
end
-- 埃及（三个朋友在讨论月亮的故事）
tNpcFace[5437] = 229
tNpcGossip[24807] = tNpcGossip[24807] or DefaultNpc:new{}
tNpcGossip[24807]["OptionHidden"] = 1
tNpcGossip[24807]["DialogueText"] = tMidAutumn2019Two_Text[24807]
tNpcGossip[24807]["Text1-1"] = {111}
tNpcGossip[24807]["tOption1-1"] = {111}
tNpcGossip[24807]["ChkFunc1-1"]= function()
	return MidAutumn2019Two_TalkNpc(24807)
end
tNpcFace[5438] = 49
tNpcGossip[24808] = tNpcGossip[24808] or DefaultNpc:new{}
tNpcGossip[24808]["OptionHidden"] = 1
tNpcGossip[24808]["DialogueText"] = tMidAutumn2019Two_Text[24808]
tNpcGossip[24808]["Text1-1"] = {111}
tNpcGossip[24808]["tOption1-1"] = {111}
tNpcGossip[24808]["ChkFunc1-1"]= function()
	return MidAutumn2019Two_TalkNpc(24808)
end
tNpcFace[5439] = 240
tNpcGossip[24809] = tNpcGossip[24809] or DefaultNpc:new{}
tNpcGossip[24809]["OptionHidden"] = 1
tNpcGossip[24809]["DialogueText"] = tMidAutumn2019Two_Text[24809]
tNpcGossip[24809]["Text1-1"] = {111}
tNpcGossip[24809]["tOption1-1"] = {111}
tNpcGossip[24809]["ChkFunc1-1"]= function()
	return MidAutumn2019Two_TalkNpc(24809)
end
-- 美国（一个人，看着月亮感慨）
tNpcFace[5440] = 50
tNpcGossip[24810] = tNpcGossip[24810] or DefaultNpc:new{}
tNpcGossip[24810]["OptionHidden"] = 1
tNpcGossip[24810]["DialogueText"] = tMidAutumn2019Two_Text[24810]
tNpcGossip[24810]["Text1-1"] = {111}
tNpcGossip[24810]["tOption1-1"] = {111}
tNpcGossip[24810]["ChkFunc1-1"]= function()
	return MidAutumn2019Two_TalkNpc(24810)
end


----------------------------------物品部分---------------------------------------------
-- 长生药材
tItem[3313513] = tItem[3313513] or {}
tItem[3313513]["Function"] = function(nItemId,sItemName)
	if not Item_ChkItem(nItemId) then
		return
	end
	NpcPosition_PathFind(24796) 
end
tItem[3313513]["Time"] = tActivityTime["MidAutumn2019Two"]["Now_Time"]

-- 长生药碎片
tItem[3313514] = tItem[3313514] or {}
tItem[3313514]["Function"] = function(nItemId,sItemName)
	if not Item_ChkMulItem(nItemId,nItemId,7) then
		Sys_MsgBox(tMidAutumn2019Two_Text[3313514]["Not"])
		return
	end
	--背包空间不足
	if not RewardTemplate_CheckSpace(tMidAutumn2019Two_Reward[3313514]) then
		return
	end
	RewardTemplate_UseItemAndMsg(tMidAutumn2019Two_Reward[3313514])
end
tItem[3313514]["Time"] = tActivityTime["MidAutumn2019Two"]["Now_Time"]

-- 长生不老药
tItem[3313515] = tItem[3313515] or {}
tItem[3313515]["Function"] = function(nItemId,sItemName)
	if not Item_ChkItem(nItemId) then
		return
	end
	if not MidAutumn2019Two_ChkStc(5) then
		Sys_MsgBox(tMidAutumn2019Two_Text["Msg"]["Fish"])
		return
	end
	if RewardTemplate_UseItemAndMsg(tMidAutumn2019Two_Reward[3313515]) then
		local nEvent = tMidAutumn2019Two_Stc[5]["EventType"]
		local nType = tMidAutumn2019Two_Stc[5]["DataType"]
		Task_SetStatistic(nEvent,nType,1,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		-- 传送到嫦娥处
		MidAutumn2019Two_GotoMap(3)
		Sys_MsgBox(tMidAutumn2019Two_Text[3313514]["Use"])
		Sys_SaveActionFestivalLog(tMidAutumn2019Two_Data["Log"][1])
	end
end
tItem[3313515]["Time"] = tActivityTime["MidAutumn2019Two"]["Now_Time"]

-- 嫦娥奔月礼包
tItemFace[3313638] = 2476
tItem[3313638] = tItem[3313638] or {}
tItem[3313638]["DialogueText"] = tMidAutumn2019Two_Text[3313638]
tItem[3313638]["Text1-1"] = {111}
tItem[3313638]["tOption1-1"] = {111,112,113,114,115,116}
tItem[3313638]["OptionFunc111"] = "MidAutumn2019Two_Open</N>3313638</N>1"
tItem[3313638]["OptionFunc112"] = "MidAutumn2019Two_Open</N>3313638</N>2"
tItem[3313638]["OptionFunc113"] = "MidAutumn2019Two_Open</N>3313638</N>3"
tItem[3313638]["OptionFunc114"] = "MidAutumn2019Two_Open</N>3313638</N>4"
tItem[3313638]["OptionFunc115"] = "MidAutumn2019Two_Open</N>3313638</N>5"
tItem[3313638]["Time"] = tActivityTime["MidAutumn2019Two"]["Now_Time"]


-- 嫦娥奔月礼包
tItemFace[3313697] = 2501
tItem[3313697] = tItem[3313697] or {}
tItem[3313697]["DialogueText"] = tMidAutumn2019Two_Text[3313697]
tItem[3313697]["Text1-1"] = {111}
tItem[3313697]["tOption1-1"] = {111,112,113}
tItem[3313697]["OptionFunc111"] = "MidAutumn2019Two_ChangeItem</N>3313697</N>1"
tItem[3313697]["OptionFunc112"] = "MidAutumn2019Two_ChangeItem</N>3313697</N>2"
tItem[3313697]["OptionFunc113"] = "MidAutumn2019Two_ChangeItem</N>3313697</N>3"
tItem[3313697]["OptionFunc114"] = "MidAutumn2019Two_ChangeItem</N>3313697</N>4"

tItem[3313697]["Time"] = tActivityTime["MidAutumn2019Two"]["Now_Time"]


--------------------------------------------陷进--------------------------------------------
tTrap[177] = tTrap[177] or {}
tTrap[177]["Function"] = function(nTrapId,nTrapType)
	local nMapId = tMidAutumn2019Two_Pos[nTrapType]["MapId"]
	local nPosX = tMidAutumn2019Two_Pos[nTrapType]["PosX"]
	local nPosY = tMidAutumn2019Two_Pos[nTrapType]["PosY"]
	if nTrapType == 181 and SpecialServer_ChkNoGiftServer() then
		nMapId = tMidAutumn2019Two_Pos[4]["MapId"]
		nPosX = tMidAutumn2019Two_Pos[4]["PosX"]
		nPosY = tMidAutumn2019Two_Pos[4]["PosY"]
	end
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,5,5,1)
end

tTrap[178] = tTrap[177] or {}
tTrap[179] = tTrap[177] or {}
tTrap[180] = tTrap[177] or {}
tTrap[181] = tTrap[177] or {}
--------------------------------------------时间自检--------------------------------------------
local tMidAutumn2019Two_OnTime = {}
	-- 每30分钟换名字
	tMidAutumn2019Two_OnTime[1] = {}
	tMidAutumn2019Two_OnTime[1]["Type"] = 2
	tMidAutumn2019Two_OnTime[1]["TimeType"] = 5
	tMidAutumn2019Two_OnTime[1]["Multiple"] = {}
	tMidAutumn2019Two_OnTime[1]["Multiple"][1]  = "00 00"
	tMidAutumn2019Two_OnTime[1]["Multiple"][2]  = "30 30"
	tMidAutumn2019Two_OnTime[1]["Func"] = MidAutumn2019Two_MoveNpc
	table.insert(tSystemTime_InitialData,tMidAutumn2019Two_OnTime[1])

