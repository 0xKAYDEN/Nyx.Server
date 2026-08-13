------------------------------------------------------------------------------------
--Name:			190311[简体征服][活动脚本]勇士觉醒前章预热线上任务活动
--Creator:		吴燕柚
--Created:		2019/03/12
------------------------------------------------------------------------------------
--任务需求：
--任务要求 1转120级

--命名规范 TrojanAwakenI_
--logid 12001331

--stc(191, 56) 背包信
--stc(191, 76) 正气令产出限制
--stc(191, 77) 打怪掉落限制
--stc(191, 78) 显著功勋礼包使用

--玩家投票数记录
--stc(191, 57) 水道士 序号1 
--stc(191, 58) 火道士 序号2 
--stc(191, 59) 勇士   序号3 
--stc(191, 60) 铁扇门 序号4 
--stc(191, 61) 斗神   序号5 
--stc(191, 62) 海盗   序号6 
--stc(191, 63) 截拳师 序号7 
--stc(191, 64) 武僧   序号8 
--stc(191, 65) 忍者   序号9 
--stc(191, 66) 战士   序号10
--stc(191, 67) 弓手   序号11


----------------------------------表配置部分--------------------------------------------
--掩码
local tTrojanAwakenI_Stc = {}
--玩家投票数记录
	tTrojanAwakenI_Stc[1] = {}--水道 1
	tTrojanAwakenI_Stc[1]["Event"] = 191
	tTrojanAwakenI_Stc[1]["Data"] = 57
	tTrojanAwakenI_Stc[2] = {}--火道 2
	tTrojanAwakenI_Stc[2]["Event"] = 191
	tTrojanAwakenI_Stc[2]["Data"] = 58
	tTrojanAwakenI_Stc[3] = {}--勇士 3
	tTrojanAwakenI_Stc[3]["Event"] = 191
	tTrojanAwakenI_Stc[3]["Data"] = 59
	tTrojanAwakenI_Stc[4] = {}--铁扇门 4
	tTrojanAwakenI_Stc[4]["Event"] = 191
	tTrojanAwakenI_Stc[4]["Data"] = 60
	tTrojanAwakenI_Stc[5] = {}--斗神 5
	tTrojanAwakenI_Stc[5]["Event"] = 191
	tTrojanAwakenI_Stc[5]["Data"] = 61
	tTrojanAwakenI_Stc[6] = {}--海盗 6
	tTrojanAwakenI_Stc[6]["Event"] = 191
	tTrojanAwakenI_Stc[6]["Data"] = 62
	tTrojanAwakenI_Stc[7] = {}--截拳师 7
	tTrojanAwakenI_Stc[7]["Event"] = 191
	tTrojanAwakenI_Stc[7]["Data"] = 63
	tTrojanAwakenI_Stc[8] = {}--武僧 8
	tTrojanAwakenI_Stc[8]["Event"] = 191
	tTrojanAwakenI_Stc[8]["Data"] = 64
	tTrojanAwakenI_Stc[9] = {}--忍者 9
	tTrojanAwakenI_Stc[9]["Event"] = 191
	tTrojanAwakenI_Stc[9]["Data"] = 65
	tTrojanAwakenI_Stc[10] = {}--战士 10
	tTrojanAwakenI_Stc[10]["Event"] = 191
	tTrojanAwakenI_Stc[10]["Data"] = 66
	tTrojanAwakenI_Stc[11] = {}--弓手 11
	tTrojanAwakenI_Stc[11]["Event"] = 191
	tTrojanAwakenI_Stc[11]["Data"] = 67
	
	tTrojanAwakenI_Stc["Reward"] = {}
	tTrojanAwakenI_Stc["Reward"][1] = {}--显著功勋获得通灵宝玉记录
	tTrojanAwakenI_Stc["Reward"][1]["Event"] = 191
	tTrojanAwakenI_Stc["Reward"][1]["Data"] = 78
	tTrojanAwakenI_Stc["Reward"][2] = {}--打怪获得通灵宝玉记录
	tTrojanAwakenI_Stc["Reward"][2]["Event"] = 191
	tTrojanAwakenI_Stc["Reward"][2]["Data"] = 77

local tTrojanAwakenI_Data = {}
	tTrojanAwakenI_Data["Mete"] = 1--玩家参加等级要求
	tTrojanAwakenI_Data["Level"] = 120
	tTrojanAwakenI_Data["nItemId"] = 3312103--通灵宝玉
	tTrojanAwakenI_Data["NeedItemNum"] = {}--投注对应物品数量
	tTrojanAwakenI_Data["NeedItemNum"][1] = 1
	tTrojanAwakenI_Data["NeedItemNum"][2] = 10
	tTrojanAwakenI_Data["RewardBox"] = 3007108--显著功勋礼包
	tTrojanAwakenI_Data["RewardChance"] = 500--怪物掉落率 500/10000
	tTrojanAwakenI_Data["RewardLimit"] = 15--怪物掉落上限
	tTrojanAwakenI_Data["RewardNum"] = 1--怪物每次掉落
	tTrojanAwakenI_Data["EMoneyLimit"] = 88
	tTrojanAwakenI_Data["BetNpc"] = 23849
	tTrojanAwakenI_Data["ExchangeNpc"] = 23850
	--全局动态表ID 各职业对应位置
	tTrojanAwakenI_Data["Global"] = {}
	tTrojanAwakenI_Data["Global"][1] =  {53280, 0}--水道士 id 53280,位置data0
	tTrojanAwakenI_Data["Global"][2] =  {53280, 1}--火道士
	tTrojanAwakenI_Data["Global"][3] =  {53280, 2}--勇士  
	tTrojanAwakenI_Data["Global"][4] =  {53280, 3}--铁扇门
	tTrojanAwakenI_Data["Global"][5] =  {53280, 4}--斗神  
	tTrojanAwakenI_Data["Global"][6] =  {53280, 5}--海盗  
	tTrojanAwakenI_Data["Global"][7] =  {53281, 0}--截拳师
	tTrojanAwakenI_Data["Global"][8] =  {53281, 1}--武僧  
	tTrojanAwakenI_Data["Global"][9] =  {53281, 2}--忍者  
	tTrojanAwakenI_Data["Global"][10] = {53281, 3}--战士  
	tTrojanAwakenI_Data["Global"][11] = {53281, 4}--弓手  
	tTrojanAwakenI_Data["DeleteLog"] = "0,0,3312103,%d,12001331,1[1],0,0"--手动打删除通灵宝玉LOG

--奖励表
local tTrojanAwakenI_Reward = {}
	-- ===投注通灵宝玉
	-- ===索引: Delete
	-- ===删除: 3312103,3
	-- ===LogStep: 2[1]
	-- ===EMoneyLog: 10000,195
	tTrojanAwakenI_Reward["Delete"] = {}
	tTrojanAwakenI_Reward["Delete"]["LogId"] = 12001331
	tTrojanAwakenI_Reward["Delete"]["LogStep"] = "2[1]"
	tTrojanAwakenI_Reward["Delete"]["DeleteItem"] = {}
	tTrojanAwakenI_Reward["Delete"]["DeleteItem"][1] = {}
	tTrojanAwakenI_Reward["Delete"]["DeleteItem"][1]["Id"] = 3312103 -- 【库】通灵宝玉[属性:9]
	tTrojanAwakenI_Reward["Delete"]["DeleteItem"][1]["ItemNum"] = 0

	-- ===获得通灵宝玉
	-- ===索引: "Reward"
	-- ===LogStep: 1[1]
	-- ===
	tTrojanAwakenI_Reward["Reward"] = {}
	tTrojanAwakenI_Reward["Reward"]["LogId"] = 12001331
	tTrojanAwakenI_Reward["Reward"]["LogStep"] = "1[1]"
	tTrojanAwakenI_Reward["Reward"]["RewardItem"] = {}
	tTrojanAwakenI_Reward["Reward"]["RewardItem"][1] = {}
	tTrojanAwakenI_Reward["Reward"]["RewardItem"][1]["Id"] = 3312103 -- 【库】通灵宝玉[属性:9]【表格】通灵宝玉*15
	tTrojanAwakenI_Reward["Reward"]["RewardItem"][1]["Attr"] = "0 " -- 通灵宝玉*15
	tTrojanAwakenI_Reward["Reward"]["RewardEffect"] = {}
	tTrojanAwakenI_Reward["Reward"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanAwakenI_Reward["Reward"]["RewardEffect"]["Effect"] = "angelwing"

	-- ===3颗究极通神丹礼包
	-- ===删除: 3312106,1
	-- ===索引: 3312106
	-- ===LogStep: 1[1]
	tTrojanAwakenI_Reward[3312106] = {}
	tTrojanAwakenI_Reward[3312106]["LogId"] = 12001331
	tTrojanAwakenI_Reward[3312106]["LogStep"] = "1[1]"
	tTrojanAwakenI_Reward[3312106]["DeleteItem"] = {}
	tTrojanAwakenI_Reward[3312106]["DeleteItem"][1] = {}
	tTrojanAwakenI_Reward[3312106]["DeleteItem"][1]["Id"] = 3312106 -- 【库】觉醒天石大礼包[属性:9]
	tTrojanAwakenI_Reward[3312106]["RewardItem"] = {}
	tTrojanAwakenI_Reward[3312106]["RewardItem"][1] = {}
	tTrojanAwakenI_Reward[3312106]["RewardItem"][1]["Id"] = 3003126 -- 【库】究极通神丹[属性:0]【表格】究极通神丹*3
	tTrojanAwakenI_Reward[3312106]["RewardItem"][1]["Attr"] = "0 3 3" -- 究极通神丹(赠)*3
	tTrojanAwakenI_Reward[3312106]["RewardEffect"] = {}
	tTrojanAwakenI_Reward[3312106]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanAwakenI_Reward[3312106]["RewardEffect"]["Effect"] = "angelwing"

	-- ===6阶武器神魂可选包
	-- ===删除: 3312107,1
	-- ===索引: 3312107,1
	-- ===LogStep: 1[1]
	tTrojanAwakenI_Reward[3312107] = {}
	tTrojanAwakenI_Reward[3312107][1] = {}
	tTrojanAwakenI_Reward[3312107][1]["LogId"] = 12001331
	tTrojanAwakenI_Reward[3312107][1]["LogStep"] = "1[1]"
	tTrojanAwakenI_Reward[3312107][1]["DeleteItem"] = {}
	tTrojanAwakenI_Reward[3312107][1]["DeleteItem"][1] = {}
	tTrojanAwakenI_Reward[3312107][1]["DeleteItem"][1]["Id"] = 3312107 -- 【库】6阶武器神魂可选包（7天）[属性:9]
	tTrojanAwakenI_Reward[3312107][1]["RewardItem"] = {}
	tTrojanAwakenI_Reward[3312107][1]["RewardItem"][1] = {}
	tTrojanAwakenI_Reward[3312107][1]["RewardItem"][1]["Id"] = 800000 -- 【库】紫魔刃[属性:0]【表格】紫魔刃[短武]
	tTrojanAwakenI_Reward[3312107][1]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的紫魔刃(赠)*1
	tTrojanAwakenI_Reward[3312107][1]["RewardEffect"] = {}
	tTrojanAwakenI_Reward[3312107][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanAwakenI_Reward[3312107][1]["RewardEffect"]["Effect"] = "angelwing"
	-- ===6阶武器神魂可选包
	-- ===删除: 3312107,1
	-- ===索引: 3312107,2
	-- ===LogStep: 1[1]
	tTrojanAwakenI_Reward[3312107][2] = {}
	tTrojanAwakenI_Reward[3312107][2]["LogId"] = 12001331
	tTrojanAwakenI_Reward[3312107][2]["LogStep"] = "1[1]"
	tTrojanAwakenI_Reward[3312107][2]["DeleteItem"] = {}
	tTrojanAwakenI_Reward[3312107][2]["DeleteItem"][1] = {}
	tTrojanAwakenI_Reward[3312107][2]["DeleteItem"][1]["Id"] = 3312107 -- 【库】6阶武器神魂可选包（7天）[属性:9]
	tTrojanAwakenI_Reward[3312107][2]["RewardItem"] = {}
	tTrojanAwakenI_Reward[3312107][2]["RewardItem"][1] = {}
	tTrojanAwakenI_Reward[3312107][2]["RewardItem"][1]["Id"] = 800110 -- 【库】魔吕锤[属性:0]【表格】魔吕锤[短武]
	tTrojanAwakenI_Reward[3312107][2]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的魔吕锤(赠)*1
	tTrojanAwakenI_Reward[3312107][2]["RewardEffect"] = {}
	tTrojanAwakenI_Reward[3312107][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanAwakenI_Reward[3312107][2]["RewardEffect"]["Effect"] = "angelwing"
	-- ===6阶武器神魂可选包
	-- ===删除: 3312107,1
	-- ===索引: 3312107,3
	-- ===LogStep: 1[1]
	tTrojanAwakenI_Reward[3312107][3] = {}
	tTrojanAwakenI_Reward[3312107][3]["LogId"] = 12001331
	tTrojanAwakenI_Reward[3312107][3]["LogStep"] = "1[1]"
	tTrojanAwakenI_Reward[3312107][3]["DeleteItem"] = {}
	tTrojanAwakenI_Reward[3312107][3]["DeleteItem"][1] = {}
	tTrojanAwakenI_Reward[3312107][3]["DeleteItem"][1]["Id"] = 3312107 -- 【库】6阶武器神魂可选包（7天）[属性:9]
	tTrojanAwakenI_Reward[3312107][3]["RewardItem"] = {}
	tTrojanAwakenI_Reward[3312107][3]["RewardItem"][1] = {}
	tTrojanAwakenI_Reward[3312107][3]["RewardItem"][1]["Id"] = 800320 -- 【库】龙翼长棍[属性:0]【表格】龙翼长棍[长武]
	tTrojanAwakenI_Reward[3312107][3]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的龙翼长棍(赠)*1
	tTrojanAwakenI_Reward[3312107][3]["RewardEffect"] = {}
	tTrojanAwakenI_Reward[3312107][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanAwakenI_Reward[3312107][3]["RewardEffect"]["Effect"] = "angelwing"
	-- ===6阶武器神魂可选包
	-- ===删除: 3312107,1
	-- ===索引: 3312107,4
	-- ===LogStep: 1[1]
	tTrojanAwakenI_Reward[3312107][4] = {}
	tTrojanAwakenI_Reward[3312107][4]["LogId"] = 12001331
	tTrojanAwakenI_Reward[3312107][4]["LogStep"] = "1[1]"
	tTrojanAwakenI_Reward[3312107][4]["DeleteItem"] = {}
	tTrojanAwakenI_Reward[3312107][4]["DeleteItem"][1] = {}
	tTrojanAwakenI_Reward[3312107][4]["DeleteItem"][1]["Id"] = 3312107 -- 【库】6阶武器神魂可选包（7天）[属性:9]
	tTrojanAwakenI_Reward[3312107][4]["RewardItem"] = {}
	tTrojanAwakenI_Reward[3312107][4]["RewardItem"][1] = {}
	tTrojanAwakenI_Reward[3312107][4]["RewardItem"][1]["Id"] = 800616 -- 【库】天翼弓[属性:0]【表格】天翼弓[弓]
	tTrojanAwakenI_Reward[3312107][4]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的天翼弓(赠)*1
	tTrojanAwakenI_Reward[3312107][4]["RewardEffect"] = {}
	tTrojanAwakenI_Reward[3312107][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanAwakenI_Reward[3312107][4]["RewardEffect"]["Effect"] = "angelwing"
	-- ===6阶武器神魂可选包
	-- ===删除: 3312107,1
	-- ===索引: 3312107,5
	-- ===LogStep: 1[1]
	tTrojanAwakenI_Reward[3312107][5] = {}
	tTrojanAwakenI_Reward[3312107][5]["LogId"] = 12001331
	tTrojanAwakenI_Reward[3312107][5]["LogStep"] = "1[1]"
	tTrojanAwakenI_Reward[3312107][5]["DeleteItem"] = {}
	tTrojanAwakenI_Reward[3312107][5]["DeleteItem"][1] = {}
	tTrojanAwakenI_Reward[3312107][5]["DeleteItem"][1]["Id"] = 3312107 -- 【库】6阶武器神魂可选包（7天）[属性:9]
	tTrojanAwakenI_Reward[3312107][5]["RewardItem"] = {}
	tTrojanAwakenI_Reward[3312107][5]["RewardItem"][1] = {}
	tTrojanAwakenI_Reward[3312107][5]["RewardItem"][1]["Id"] = 800916 -- 【库】帝青龙牙[属性:0]【表格】帝青龙牙[飞刀]
	tTrojanAwakenI_Reward[3312107][5]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的帝青龙牙(赠)*1
	tTrojanAwakenI_Reward[3312107][5]["RewardEffect"] = {}
	tTrojanAwakenI_Reward[3312107][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanAwakenI_Reward[3312107][5]["RewardEffect"]["Effect"] = "angelwing"
	-- ===6阶武器神魂可选包
	-- ===删除: 3312107,1
	-- ===索引: 3312107,6
	-- ===LogStep: 1[1]
	tTrojanAwakenI_Reward[3312107][6] = {}
	tTrojanAwakenI_Reward[3312107][6]["LogId"] = 12001331
	tTrojanAwakenI_Reward[3312107][6]["LogStep"] = "1[1]"
	tTrojanAwakenI_Reward[3312107][6]["DeleteItem"] = {}
	tTrojanAwakenI_Reward[3312107][6]["DeleteItem"][1] = {}
	tTrojanAwakenI_Reward[3312107][6]["DeleteItem"][1]["Id"] = 3312107 -- 【库】6阶武器神魂可选包（7天）[属性:9]
	tTrojanAwakenI_Reward[3312107][6]["RewardItem"] = {}
	tTrojanAwakenI_Reward[3312107][6]["RewardItem"][1] = {}
	tTrojanAwakenI_Reward[3312107][6]["RewardItem"][1]["Id"] = 800809 -- 【库】命运之剑[属性:0]【表格】命运之剑[刺剑]
	tTrojanAwakenI_Reward[3312107][6]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 命运之剑(赠)*1
	tTrojanAwakenI_Reward[3312107][6]["RewardEffect"] = {}
	tTrojanAwakenI_Reward[3312107][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanAwakenI_Reward[3312107][6]["RewardEffect"]["Effect"] = "angelwing"
	-- ===6阶武器神魂可选包
	-- ===删除: 3312107,1
	-- ===索引: 3312107,7
	-- ===LogStep: 1[1]
	tTrojanAwakenI_Reward[3312107][7] = {}
	tTrojanAwakenI_Reward[3312107][7]["LogId"] = 12001331
	tTrojanAwakenI_Reward[3312107][7]["LogStep"] = "1[1]"
	tTrojanAwakenI_Reward[3312107][7]["DeleteItem"] = {}
	tTrojanAwakenI_Reward[3312107][7]["DeleteItem"][1] = {}
	tTrojanAwakenI_Reward[3312107][7]["DeleteItem"][1]["Id"] = 3312107 -- 【库】6阶武器神魂可选包（7天）[属性:9]
	tTrojanAwakenI_Reward[3312107][7]["RewardItem"] = {}
	tTrojanAwakenI_Reward[3312107][7]["RewardItem"][1] = {}
	tTrojanAwakenI_Reward[3312107][7]["RewardItem"][1]["Id"] = 800804 -- 【库】岁月之枪[属性:0]【表格】岁月之枪[火枪]
	tTrojanAwakenI_Reward[3312107][7]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的岁月之枪(赠)*1
	tTrojanAwakenI_Reward[3312107][7]["RewardEffect"] = {}
	tTrojanAwakenI_Reward[3312107][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanAwakenI_Reward[3312107][7]["RewardEffect"]["Effect"] = "angelwing"
	-- ===6阶武器神魂可选包
	-- ===删除: 3312107,1
	-- ===索引: 3312107,8
	-- ===LogStep: 1[1]
	tTrojanAwakenI_Reward[3312107][8] = {}
	tTrojanAwakenI_Reward[3312107][8]["LogId"] = 12001331
	tTrojanAwakenI_Reward[3312107][8]["LogStep"] = "1[1]"
	tTrojanAwakenI_Reward[3312107][8]["DeleteItem"] = {}
	tTrojanAwakenI_Reward[3312107][8]["DeleteItem"][1] = {}
	tTrojanAwakenI_Reward[3312107][8]["DeleteItem"][1]["Id"] = 3312107 -- 【库】6阶武器神魂可选包（7天）[属性:9]
	tTrojanAwakenI_Reward[3312107][8]["RewardItem"] = {}
	tTrojanAwakenI_Reward[3312107][8]["RewardItem"][1] = {}
	tTrojanAwakenI_Reward[3312107][8]["RewardItem"][1]["Id"] = 800722 -- 【库】定海玄珠[属性:0]【表格】定海玄珠[念珠]
	tTrojanAwakenI_Reward[3312107][8]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的定海玄珠(赠)*1
	tTrojanAwakenI_Reward[3312107][8]["RewardEffect"] = {}
	tTrojanAwakenI_Reward[3312107][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanAwakenI_Reward[3312107][8]["RewardEffect"]["Effect"] = "angelwing"
	-- ===6阶武器神魂可选包
	-- ===删除: 3312107,1
	-- ===索引: 3312107,9
	-- ===LogStep: 1[1]
	tTrojanAwakenI_Reward[3312107][9] = {}
	tTrojanAwakenI_Reward[3312107][9]["LogId"] = 12001331
	tTrojanAwakenI_Reward[3312107][9]["LogStep"] = "1[1]"
	tTrojanAwakenI_Reward[3312107][9]["DeleteItem"] = {}
	tTrojanAwakenI_Reward[3312107][9]["DeleteItem"][1] = {}
	tTrojanAwakenI_Reward[3312107][9]["DeleteItem"][1]["Id"] = 3312107 -- 【库】6阶武器神魂可选包（7天）[属性:9]
	tTrojanAwakenI_Reward[3312107][9]["RewardItem"] = {}
	tTrojanAwakenI_Reward[3312107][9]["RewardItem"][1] = {}
	tTrojanAwakenI_Reward[3312107][9]["RewardItem"][1]["Id"] = 800017 -- 【库】隐夜忍刀[属性:0]【表格】隐夜忍刀[忍刀]
	tTrojanAwakenI_Reward[3312107][9]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的隐夜忍刀(赠)*1
	tTrojanAwakenI_Reward[3312107][9]["RewardEffect"] = {}
	tTrojanAwakenI_Reward[3312107][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanAwakenI_Reward[3312107][9]["RewardEffect"]["Effect"] = "angelwing"
	-- ===6阶武器神魂可选包
	-- ===删除: 3312107,1
	-- ===索引: 3312107,10
	-- ===LogStep: 1[1]
	tTrojanAwakenI_Reward[3312107][10] = {}
	tTrojanAwakenI_Reward[3312107][10]["LogId"] = 12001331
	tTrojanAwakenI_Reward[3312107][10]["LogStep"] = "1[1]"
	tTrojanAwakenI_Reward[3312107][10]["DeleteItem"] = {}
	tTrojanAwakenI_Reward[3312107][10]["DeleteItem"][1] = {}
	tTrojanAwakenI_Reward[3312107][10]["DeleteItem"][1]["Id"] = 3312107 -- 【库】6阶武器神魂可选包（7天）[属性:9]
	tTrojanAwakenI_Reward[3312107][10]["RewardItem"] = {}
	tTrojanAwakenI_Reward[3312107][10]["RewardItem"][1] = {}
	tTrojanAwakenI_Reward[3312107][10]["RewardItem"][1]["Id"] = 800254 -- 【库】勾魂神镰[属性:0]【表格】勾魂神镰[钩镰]
	tTrojanAwakenI_Reward[3312107][10]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的勾魂神镰(赠)*1
	tTrojanAwakenI_Reward[3312107][10]["RewardEffect"] = {}
	tTrojanAwakenI_Reward[3312107][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanAwakenI_Reward[3312107][10]["RewardEffect"]["Effect"] = "angelwing"
	-- ===6阶武器神魂可选包
	-- ===删除: 3312107,1
	-- ===索引: 3312107,11
	-- ===LogStep: 1[1]
	tTrojanAwakenI_Reward[3312107][11] = {}
	tTrojanAwakenI_Reward[3312107][11]["LogId"] = 12001331
	tTrojanAwakenI_Reward[3312107][11]["LogStep"] = "1[1]"
	tTrojanAwakenI_Reward[3312107][11]["DeleteItem"] = {}
	tTrojanAwakenI_Reward[3312107][11]["DeleteItem"][1] = {}
	tTrojanAwakenI_Reward[3312107][11]["DeleteItem"][1]["Id"] = 3312107 -- 【库】6阶武器神魂可选包（7天）[属性:9]
	tTrojanAwakenI_Reward[3312107][11]["RewardItem"] = {}
	tTrojanAwakenI_Reward[3312107][11]["RewardItem"][1] = {}
	tTrojanAwakenI_Reward[3312107][11]["RewardItem"][1]["Id"] = 800513 -- 【库】影灵宝剑[属性:0]【表格】影灵宝剑[法剑]
	tTrojanAwakenI_Reward[3312107][11]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的影灵宝剑(赠)*1
	tTrojanAwakenI_Reward[3312107][11]["RewardEffect"] = {}
	tTrojanAwakenI_Reward[3312107][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanAwakenI_Reward[3312107][11]["RewardEffect"]["Effect"] = "angelwing"
	-- ===6阶武器神魂可选包
	-- ===删除: 3312107,1
	-- ===索引: 3312107,12
	-- ===LogStep: 1[1]
	tTrojanAwakenI_Reward[3312107][12] = {}
	tTrojanAwakenI_Reward[3312107][12]["LogId"] = 12001331
	tTrojanAwakenI_Reward[3312107][12]["LogStep"] = "1[1]"
	tTrojanAwakenI_Reward[3312107][12]["DeleteItem"] = {}
	tTrojanAwakenI_Reward[3312107][12]["DeleteItem"][1] = {}
	tTrojanAwakenI_Reward[3312107][12]["DeleteItem"][1]["Id"] = 3312107 -- 【库】6阶武器神魂可选包（7天）[属性:9]
	tTrojanAwakenI_Reward[3312107][12]["RewardItem"] = {}
	tTrojanAwakenI_Reward[3312107][12]["RewardItem"][1] = {}
	tTrojanAwakenI_Reward[3312107][12]["RewardItem"][1]["Id"] = 800421 -- 【库】蛰龙玄盾[属性:0]【表格】蛰龙玄盾[盾牌]
	tTrojanAwakenI_Reward[3312107][12]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的蛰龙玄盾(赠)*1
	tTrojanAwakenI_Reward[3312107][12]["RewardEffect"] = {}
	tTrojanAwakenI_Reward[3312107][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanAwakenI_Reward[3312107][12]["RewardEffect"]["Effect"] = "angelwing"
	-- ===6阶武器神魂可选包
	-- ===删除: 3312107,1
	-- ===索引: 3312107,13
	-- ===LogStep: 1[1]
	tTrojanAwakenI_Reward[3312107][13] = {}
	tTrojanAwakenI_Reward[3312107][13]["LogId"] = 12001331
	tTrojanAwakenI_Reward[3312107][13]["LogStep"] = "1[1]"
	tTrojanAwakenI_Reward[3312107][13]["DeleteItem"] = {}
	tTrojanAwakenI_Reward[3312107][13]["DeleteItem"][1] = {}
	tTrojanAwakenI_Reward[3312107][13]["DeleteItem"][1]["Id"] = 3312107 -- 【库】6阶武器神魂可选包（7天）[属性:9]
	tTrojanAwakenI_Reward[3312107][13]["RewardItem"] = {}
	tTrojanAwakenI_Reward[3312107][13]["RewardItem"][1] = {}
	tTrojanAwakenI_Reward[3312107][13]["RewardItem"][1]["Id"] = 801003 -- 【库】沧海龙吟[属性:0]【表格】沧海龙吟[双截棍]
	tTrojanAwakenI_Reward[3312107][13]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的沧海龙吟(赠)*1
	tTrojanAwakenI_Reward[3312107][13]["RewardEffect"] = {}
	tTrojanAwakenI_Reward[3312107][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanAwakenI_Reward[3312107][13]["RewardEffect"]["Effect"] = "angelwing"
	-- ===6阶武器神魂可选包
	-- ===删除: 3312107,1
	-- ===索引: 3312107,14
	-- ===LogStep: 1[1]
	tTrojanAwakenI_Reward[3312107][14] = {}
	tTrojanAwakenI_Reward[3312107][14]["LogId"] = 12001331
	tTrojanAwakenI_Reward[3312107][14]["LogStep"] = "1[1]"
	tTrojanAwakenI_Reward[3312107][14]["DeleteItem"] = {}
	tTrojanAwakenI_Reward[3312107][14]["DeleteItem"][1] = {}
	tTrojanAwakenI_Reward[3312107][14]["DeleteItem"][1]["Id"] = 3312107 -- 【库】6阶武器神魂可选包（7天）[属性:9]
	tTrojanAwakenI_Reward[3312107][14]["RewardItem"] = {}
	tTrojanAwakenI_Reward[3312107][14]["RewardItem"][1] = {}
	tTrojanAwakenI_Reward[3312107][14]["RewardItem"][1]["Id"] = 801103 -- 【库】上清仙莲[属性:0]【表格】上清仙莲[法器]
	tTrojanAwakenI_Reward[3312107][14]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的上清仙莲(赠)*1
	tTrojanAwakenI_Reward[3312107][14]["RewardEffect"] = {}
	tTrojanAwakenI_Reward[3312107][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanAwakenI_Reward[3312107][14]["RewardEffect"]["Effect"] = "angelwing"
	-- ===6阶武器神魂可选包
	-- ===删除: 3312107,1
	-- ===索引: 3312107,15
	-- ===LogStep: 1[1]
	tTrojanAwakenI_Reward[3312107][15] = {}
	tTrojanAwakenI_Reward[3312107][15]["LogId"] = 12001331
	tTrojanAwakenI_Reward[3312107][15]["LogStep"] = "1[1]"
	tTrojanAwakenI_Reward[3312107][15]["DeleteItem"] = {}
	tTrojanAwakenI_Reward[3312107][15]["DeleteItem"][1] = {}
	tTrojanAwakenI_Reward[3312107][15]["DeleteItem"][1]["Id"] = 3312107 -- 【库】6阶武器神魂可选包（7天）[属性:9]
	tTrojanAwakenI_Reward[3312107][15]["RewardItem"] = {}
	tTrojanAwakenI_Reward[3312107][15]["RewardItem"][1] = {}
	tTrojanAwakenI_Reward[3312107][15]["RewardItem"][1]["Id"] = 801212 -- 【库】烈拳·碎空[属性:0]【表格】烈拳·碎空[拳套]（暴击）
	tTrojanAwakenI_Reward[3312107][15]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的烈拳·碎空(赠)*1
	tTrojanAwakenI_Reward[3312107][15]["RewardEffect"] = {}
	tTrojanAwakenI_Reward[3312107][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanAwakenI_Reward[3312107][15]["RewardEffect"]["Effect"] = "angelwing"
	-- ===6阶武器神魂可选包
	-- ===删除: 3312107,1
	-- ===索引: 3312107,16
	-- ===LogStep: 1[1]
	tTrojanAwakenI_Reward[3312107][16] = {}
	tTrojanAwakenI_Reward[3312107][16]["LogId"] = 12001331
	tTrojanAwakenI_Reward[3312107][16]["LogStep"] = "1[1]"
	tTrojanAwakenI_Reward[3312107][16]["DeleteItem"] = {}
	tTrojanAwakenI_Reward[3312107][16]["DeleteItem"][1] = {}
	tTrojanAwakenI_Reward[3312107][16]["DeleteItem"][1]["Id"] = 3312107 -- 【库】6阶武器神魂可选包（7天）[属性:9]
	tTrojanAwakenI_Reward[3312107][16]["RewardItem"] = {}
	tTrojanAwakenI_Reward[3312107][16]["RewardItem"][1] = {}
	tTrojanAwakenI_Reward[3312107][16]["RewardItem"][1]["Id"] = 801214 -- 【库】烈拳·撼地[属性:0]【表格】烈拳·撼地[拳套]（粉碎）
	tTrojanAwakenI_Reward[3312107][16]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的烈拳·撼地(赠)*1
	tTrojanAwakenI_Reward[3312107][16]["RewardEffect"] = {}
	tTrojanAwakenI_Reward[3312107][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanAwakenI_Reward[3312107][16]["RewardEffect"]["Effect"] = "angelwing"
	-- ===6阶武器神魂可选包
	-- ===删除: 3312107,1
	-- ===索引: 3312107,17
	-- ===LogStep: 1[1]
	tTrojanAwakenI_Reward[3312107][17] = {}
	tTrojanAwakenI_Reward[3312107][17]["LogId"] = 12001331
	tTrojanAwakenI_Reward[3312107][17]["LogStep"] = "1[1]"
	tTrojanAwakenI_Reward[3312107][17]["DeleteItem"] = {}
	tTrojanAwakenI_Reward[3312107][17]["DeleteItem"][1] = {}
	tTrojanAwakenI_Reward[3312107][17]["DeleteItem"][1]["Id"] = 3312107 -- 【库】6阶武器神魂可选包（7天）[属性:9]
	tTrojanAwakenI_Reward[3312107][17]["RewardItem"] = {}
	tTrojanAwakenI_Reward[3312107][17]["RewardItem"][1] = {}
	tTrojanAwakenI_Reward[3312107][17]["RewardItem"][1]["Id"] = 801306 -- 【库】翳日仙扇[属性:0]【表格】翳日仙扇[折扇]
	tTrojanAwakenI_Reward[3312107][17]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的翳日仙扇(赠)*1
	tTrojanAwakenI_Reward[3312107][17]["RewardEffect"] = {}
	tTrojanAwakenI_Reward[3312107][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanAwakenI_Reward[3312107][17]["RewardEffect"]["Effect"] = "angelwing"
	-- ===6阶武器神魂可选包
	-- ===删除: 3312107,1
	-- ===索引: 3312107,18
	-- ===LogStep: 1[1]
	tTrojanAwakenI_Reward[3312107][18] = {}
	tTrojanAwakenI_Reward[3312107][18]["LogId"] = 12001331
	tTrojanAwakenI_Reward[3312107][18]["LogStep"] = "1[1]"
	tTrojanAwakenI_Reward[3312107][18]["DeleteItem"] = {}
	tTrojanAwakenI_Reward[3312107][18]["DeleteItem"][1] = {}
	tTrojanAwakenI_Reward[3312107][18]["DeleteItem"][1]["Id"] = 3312107 -- 【库】6阶武器神魂可选包（7天）[属性:9]
	tTrojanAwakenI_Reward[3312107][18]["RewardItem"] = {}
	tTrojanAwakenI_Reward[3312107][18]["RewardItem"][1] = {}
	tTrojanAwakenI_Reward[3312107][18]["RewardItem"][1]["Id"] = 827006 -- 【库】神锤·吞天[属性:0]【表格】神锤·吞天[战锤]
	tTrojanAwakenI_Reward[3312107][18]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的神锤·吞天(赠)*1
	tTrojanAwakenI_Reward[3312107][18]["RewardEffect"] = {}
	tTrojanAwakenI_Reward[3312107][18]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanAwakenI_Reward[3312107][18]["RewardEffect"]["Effect"] = "angelwing"
	-- ===6阶武器神魂可选包
	-- ===删除: 3312107,1
	-- ===索引: 3312107,19
	-- ===LogStep: 1[1]
	tTrojanAwakenI_Reward[3312107][19] = {}
	tTrojanAwakenI_Reward[3312107][19]["LogId"] = 12001331
	tTrojanAwakenI_Reward[3312107][19]["LogStep"] = "1[1]"
	tTrojanAwakenI_Reward[3312107][19]["DeleteItem"] = {}
	tTrojanAwakenI_Reward[3312107][19]["DeleteItem"][1] = {}
	tTrojanAwakenI_Reward[3312107][19]["DeleteItem"][1]["Id"] = 3312107 -- 【库】6阶武器神魂可选包（7天）[属性:9]
	tTrojanAwakenI_Reward[3312107][19]["RewardItem"] = {}
	tTrojanAwakenI_Reward[3312107][19]["RewardItem"][1] = {}
	tTrojanAwakenI_Reward[3312107][19]["RewardItem"][1]["Id"] = 827007 -- 【库】神斧·吞天[属性:0]【表格】神斧·吞天[战斧]
	tTrojanAwakenI_Reward[3312107][19]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的神斧·吞天(赠)*1
	tTrojanAwakenI_Reward[3312107][19]["RewardEffect"] = {}
	tTrojanAwakenI_Reward[3312107][19]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanAwakenI_Reward[3312107][19]["RewardEffect"]["Effect"] = "angelwing"
	-- ===6阶武器神魂可选包
	-- ===删除: 3312107,1
	-- ===索引: 3312107,20
	-- ===LogStep: 1[1]
	tTrojanAwakenI_Reward[3312107][20] = {}
	tTrojanAwakenI_Reward[3312107][20]["LogId"] = 12001331
	tTrojanAwakenI_Reward[3312107][20]["LogStep"] = "1[1]"
	tTrojanAwakenI_Reward[3312107][20]["DeleteItem"] = {}
	tTrojanAwakenI_Reward[3312107][20]["DeleteItem"][1] = {}
	tTrojanAwakenI_Reward[3312107][20]["DeleteItem"][1]["Id"] = 3312107 -- 【库】6阶武器神魂可选包（7天）[属性:9]
	tTrojanAwakenI_Reward[3312107][20]["RewardItem"] = {}
	tTrojanAwakenI_Reward[3312107][20]["RewardItem"][1] = {}
	tTrojanAwakenI_Reward[3312107][20]["RewardItem"][1]["Id"] = 827008 -- 【库】神锤·噬日[属性:0]【表格】神锤·噬日[战锤]
	tTrojanAwakenI_Reward[3312107][20]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的神锤·噬日(赠)*1
	tTrojanAwakenI_Reward[3312107][20]["RewardEffect"] = {}
	tTrojanAwakenI_Reward[3312107][20]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanAwakenI_Reward[3312107][20]["RewardEffect"]["Effect"] = "angelwing"
	-- ===6阶武器神魂可选包
	-- ===删除: 3312107,1
	-- ===索引: 3312107,21
	-- ===LogStep: 1[1]
	tTrojanAwakenI_Reward[3312107][21] = {}
	tTrojanAwakenI_Reward[3312107][21]["LogId"] = 12001331
	tTrojanAwakenI_Reward[3312107][21]["LogStep"] = "1[1]"
	tTrojanAwakenI_Reward[3312107][21]["DeleteItem"] = {}
	tTrojanAwakenI_Reward[3312107][21]["DeleteItem"][1] = {}
	tTrojanAwakenI_Reward[3312107][21]["DeleteItem"][1]["Id"] = 3312107 -- 【库】6阶武器神魂可选包（7天）[属性:9]
	tTrojanAwakenI_Reward[3312107][21]["RewardItem"] = {}
	tTrojanAwakenI_Reward[3312107][21]["RewardItem"][1] = {}
	tTrojanAwakenI_Reward[3312107][21]["RewardItem"][1]["Id"] = 827009 -- 【库】神斧·噬日[属性:0]【表格】神斧·噬日[战斧]
	tTrojanAwakenI_Reward[3312107][21]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的神斧·噬日(赠)*1
	tTrojanAwakenI_Reward[3312107][21]["RewardEffect"] = {}
	tTrojanAwakenI_Reward[3312107][21]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanAwakenI_Reward[3312107][21]["RewardEffect"]["Effect"] = "angelwing"

	-- ===幻雪蓝莲坐骑外套（30天）
	-- ===索引: 3312108
	-- ===删除: 3312108,1
	-- ===LogStep: 1[1]
	tTrojanAwakenI_Reward[3312108] = {}
	tTrojanAwakenI_Reward[3312108]["LogId"] = 12001331
	tTrojanAwakenI_Reward[3312108]["LogStep"] = "1[1]"
	tTrojanAwakenI_Reward[3312108]["DeleteItem"] = {}
	tTrojanAwakenI_Reward[3312108]["DeleteItem"][1] = {}
	tTrojanAwakenI_Reward[3312108]["DeleteItem"][1]["Id"] = 3312108 -- 【库】幻雪蓝莲坐骑外套（30天）[属性:9]
	tTrojanAwakenI_Reward[3312108]["RewardItem"] = {}
	tTrojanAwakenI_Reward[3312108]["RewardItem"][1] = {}
	tTrojanAwakenI_Reward[3312108]["RewardItem"][1]["Id"] = 200574 -- 【库】幻雪蓝莲[属性:0]【表格】30天时效1％神佑幻雪蓝莲
	tTrojanAwakenI_Reward[3312108]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑幻雪蓝莲(赠)*1
	tTrojanAwakenI_Reward[3312108]["RewardEffect"] = {}
	tTrojanAwakenI_Reward[3312108]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanAwakenI_Reward[3312108]["RewardEffect"]["Effect"] = "angelwing"
	-- ===喵基尼【魅力版】时装外套（30天）
	-- ===索引: 3312109
	-- ===删除: 3312109,1
	-- ===LogStep: 1[1]
	tTrojanAwakenI_Reward[3312109] = {}
	tTrojanAwakenI_Reward[3312109]["LogId"] = 12001331
	tTrojanAwakenI_Reward[3312109]["LogStep"] = "1[1]"
	tTrojanAwakenI_Reward[3312109]["DeleteItem"] = {}
	tTrojanAwakenI_Reward[3312109]["DeleteItem"][1] = {}
	tTrojanAwakenI_Reward[3312109]["DeleteItem"][1]["Id"] = 3312109 -- 【库】喵基尼【魅力版】时装外套（30天）[属性:9]
	tTrojanAwakenI_Reward[3312109]["RewardItem"] = {}
	tTrojanAwakenI_Reward[3312109]["RewardItem"][1] = {}
	tTrojanAwakenI_Reward[3312109]["RewardItem"][1]["Id"] = 193555 -- 【库】喵基尼【魅力版】[属性:0]【表格】30天时效1%神佑的喵基尼【魅力版】时装外套（赠）
	tTrojanAwakenI_Reward[3312109]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑喵基尼【魅力版】(赠)*1
	tTrojanAwakenI_Reward[3312109]["RewardEffect"] = {}
	tTrojanAwakenI_Reward[3312109]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanAwakenI_Reward[3312109]["RewardEffect"]["Effect"] = "angelwing"


local tTrojanAwakenI_Probability = {}
	--赠点包 3312105 同步自3301461
	tTrojanAwakenI_Probability[3312105] = {} 
	tTrojanAwakenI_Probability[3312105]["Reward"] = {}
	tTrojanAwakenI_Probability[3312105]["Reward"][1] = {}
	tTrojanAwakenI_Probability[3312105]["Reward"][1]["ItemChanceSum"] = 10000
      
	tTrojanAwakenI_Probability[3312105]["Reward"][1][1] = {}
	tTrojanAwakenI_Probability[3312105]["Reward"][1][1]["RandomItemChanceType"] = 2
	tTrojanAwakenI_Probability[3312105]["Reward"][1][1]["ItemChance"] = 500
	tTrojanAwakenI_Probability[3312105]["Reward"][1][1]["Item_1"] = 1
	tTrojanAwakenI_Probability[3312105]["Reward"][1][1]["Start"] = 1
	tTrojanAwakenI_Probability[3312105]["Reward"][1][1]["End"] = 10
         
	tTrojanAwakenI_Probability[3312105]["Reward"][1][2] = {}
	tTrojanAwakenI_Probability[3312105]["Reward"][1][2]["RandomItemChanceType"] = 2
	tTrojanAwakenI_Probability[3312105]["Reward"][1][2]["ItemChance"] = 2500
	tTrojanAwakenI_Probability[3312105]["Reward"][1][2]["Item_1"] = 2
	tTrojanAwakenI_Probability[3312105]["Reward"][1][2]["Start"] = 11
	tTrojanAwakenI_Probability[3312105]["Reward"][1][2]["End"] = 20
       
	tTrojanAwakenI_Probability[3312105]["Reward"][1][3] = {}
	tTrojanAwakenI_Probability[3312105]["Reward"][1][3]["RandomItemChanceType"] = 2
	tTrojanAwakenI_Probability[3312105]["Reward"][1][3]["ItemChance"] = 3500
	tTrojanAwakenI_Probability[3312105]["Reward"][1][3]["Item_1"] = 3
	tTrojanAwakenI_Probability[3312105]["Reward"][1][3]["Start"] = 21
	tTrojanAwakenI_Probability[3312105]["Reward"][1][3]["End"] = 30
      
	tTrojanAwakenI_Probability[3312105]["Reward"][1][4] = {}
	tTrojanAwakenI_Probability[3312105]["Reward"][1][4]["RandomItemChanceType"] = 2
	tTrojanAwakenI_Probability[3312105]["Reward"][1][4]["ItemChance"] = 1800
	tTrojanAwakenI_Probability[3312105]["Reward"][1][4]["Item_1"] = 4
	tTrojanAwakenI_Probability[3312105]["Reward"][1][4]["Start"] = 31
	tTrojanAwakenI_Probability[3312105]["Reward"][1][4]["End"] = 40
	 
	tTrojanAwakenI_Probability[3312105]["Reward"][1][5] = {}
	tTrojanAwakenI_Probability[3312105]["Reward"][1][5]["RandomItemChanceType"] = 2
	tTrojanAwakenI_Probability[3312105]["Reward"][1][5]["ItemChance"] = 1200
	tTrojanAwakenI_Probability[3312105]["Reward"][1][5]["Item_1"] = 5
	tTrojanAwakenI_Probability[3312105]["Reward"][1][5]["Start"] = 41
	tTrojanAwakenI_Probability[3312105]["Reward"][1][5]["End"] = 50
	
	tTrojanAwakenI_Probability[3312105]["Reward"][1][6] = {}
	tTrojanAwakenI_Probability[3312105]["Reward"][1][6]["RandomItemChanceType"] = 2
	tTrojanAwakenI_Probability[3312105]["Reward"][1][6]["ItemChance"] = 400
	tTrojanAwakenI_Probability[3312105]["Reward"][1][6]["Item_1"] = 6
	tTrojanAwakenI_Probability[3312105]["Reward"][1][6]["Start"] = 51
	tTrojanAwakenI_Probability[3312105]["Reward"][1][6]["End"] = 60
    
	tTrojanAwakenI_Probability[3312105]["Reward"][1][7] = {}
	tTrojanAwakenI_Probability[3312105]["Reward"][1][7]["RandomItemChanceType"] = 2
	tTrojanAwakenI_Probability[3312105]["Reward"][1][7]["ItemChance"] = 100
	tTrojanAwakenI_Probability[3312105]["Reward"][1][7]["Item_1"] = 7
	tTrojanAwakenI_Probability[3312105]["Reward"][1][7]["Start"] = 61
	tTrojanAwakenI_Probability[3312105]["Reward"][1][7]["End"] = 88
	-- 临时表 赠点包
	tTrojanAwakenI_Reward["Donative"] = {}
	tTrojanAwakenI_Reward["Donative"]["LogId"] = 12001331
	tTrojanAwakenI_Reward["Donative"]["DeleteItem"] = {}
	tTrojanAwakenI_Reward["Donative"]["DeleteItem"][1] = {}
	tTrojanAwakenI_Reward["Donative"]["RewardEMoneyMono"] = {}
	
		-- ===通灵宝玉过期兑换年运通宝
	-- ===删除：3312103
	-- ===LogStep: 1[1]
	tTrojanAwakenI_Reward["OutTime"] = {}
	tTrojanAwakenI_Reward["OutTime"]["LogId"] = 12001331
	tTrojanAwakenI_Reward["OutTime"]["LogStep"] = "1[1]"
	tTrojanAwakenI_Reward["OutTime"]["RewardItem"] = {}
	tTrojanAwakenI_Reward["OutTime"]["RewardItem"][1] = {}
	tTrojanAwakenI_Reward["OutTime"]["RewardItem"][1]["Id"] = 3301454 -- 【库】年运通宝[属性:9]【表格】年运通宝
	tTrojanAwakenI_Reward["OutTime"]["RewardItem"][1]["Attr"] = "0 1" -- 年运通宝*1
	tTrojanAwakenI_Reward["OutTime"]["RewardEffect"] = {}
	tTrojanAwakenI_Reward["OutTime"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanAwakenI_Reward["OutTime"]["RewardEffect"]["Effect"] = "angelwing"

	
----------------------------------逻辑部分---------------------------------------------
-- 可以领取的通灵宝玉数量
function TrojanAwakenI_GetRewardNums()
	local tEvent = {}
	local tType = {}
	local tData = {}
	local nTrojanNums = 0 -- 投勇士的票数
	local nOtherNums = 0 -- 投其它职业的票数
	local nTotalNums = 0 -- 总数
	
	for i = 1, 11 do
		tEvent[i] = tTrojanAwakenI_Stc[i]["Event"]
		tType[i] = tTrojanAwakenI_Stc[i]["Data"]
		tData[i] = Get_UserStatisticValue(tEvent[i], tType[i])
		nOtherNums = nOtherNums + tData[i] -- 所有职业的票数
	end
	
	nTrojanNums = tData[3] + tData[3] 
	nOtherNums = nOtherNums - tData[3]
	nTotalNums = nTrojanNums + nOtherNums
	
	return nTrojanNums, nOtherNums, nTotalNums
end


--竞猜选项函数
function TrojanAwakenI_ChoosePro(nNpcId, nProNum)
	--二次确认对白
	tNpcGossip[nNpcId]["Text311"] = string.format(tTrojanAwakenI_Text[nNpcId]["Text311"], tTrojanAwakenI_Text["ProName"][nProNum])
	tNpcGossip[23849]["OptionFunc311"] = string.format(tNpcGossip[23849]["OptionFunc311Raw"], nProNum)
	tNpcGossip[23849]["OptionFunc312"] = string.format(tNpcGossip[23849]["OptionFunc312Raw"], nProNum)
	tNpcGossip[23849]["OptionFunc313"] = string.format(tNpcGossip[23849]["OptionFunc313Raw"], nProNum)
	LinkNpcGossipFunc_New(nNpcId, "3-1")
end
--竞猜投注宝玉
function TrojanAwakenI_ConfirmChoose(nNpcId, nNum, nProNum)
	local nUserId = Get_UserId()
	local nItemId = tTrojanAwakenI_Data["nItemId"]
	local nItemNum = Get_CountItemType(nItemId, 0)
	local nNeedNum = tTrojanAwakenI_Data["NeedItemNum"][nNum] or nItemNum--判断应扣除物品数量 1 10 或所有
	local nGlobalId = tTrojanAwakenI_Data["Global"][nProNum][1]--职业存放总数的globalID
	local nGlobalPos = tTrojanAwakenI_Data["Global"][nProNum][2]--职业存放总数的globalPos
	if nItemNum == 0 then
		User_TalkChannel2005(tTrojanAwakenI_Text["MsgBox"]["NoItem"], nUserId)
		return
	end
	--扣除物品
	local tReward = CommonFunc_Copy(tTrojanAwakenI_Reward["Delete"])
	tReward["DeleteItem"][1]["ItemNum"] = nNeedNum
	if RewardTemplate_UseItem(tReward, nUserId) then
		local nEvent = tTrojanAwakenI_Stc[nProNum]["Event"]
		local nData = tTrojanAwakenI_Stc[nProNum]["Data"]
		local sLog = string.format(tTrojanAwakenI_Data["DeleteLog"], nNeedNum)
		Sys_SaveActionRewardLog(sLog, nUserId)
		--记录数据
		Task_AddStatistic(nEvent, nData, nNeedNum, 1, nUserId)
		--记录总数
		local nTotalNum = Get_SysDynaGlobalData(nGlobalId, nGlobalPos)
		local nSumNum = nTotalNum + nNeedNum
		Sys_SetSynaGlobalData(nGlobalId, nGlobalPos, nSumNum)
		--投注成功提示
		Sys_MsgBox(string.format(tTrojanAwakenI_Text["MsgBox"]["ChooseSuccess"], nNeedNum), "LinkNpcGossipFunc_New</N>" .. nNpcId .. "</S>1-4</N>0</N>11")
		User_EffectAdd("self", "zf2-e128", nUserId)
	else
		--Sys_MsgBox(tTrojanAwakenI_Text["MsgBox"]["ChooseFail"])
		LinkNpcGossipFunc_New(nNpcId, "3-4")
		return 
	end
	
end
--增加通灵宝玉奖励 
--nNum 获得数量
function TrojanAwakenI_Reward(nItemId, nNum)
	local nUserId = Get_UserId()
	local nEvent = tTrojanAwakenI_Stc["Reward"][1]["Event"]
	local nData = tTrojanAwakenI_Stc["Reward"][1]["Data"]
	local nLevel = tTrojanAwakenI_Data["Level"]
	local nMete = tTrojanAwakenI_Data["Mete"]

	--等级不足不掉落
	if not User_JudgeLevelAndMetempsychosis(nLevel, nMete) then
		return
	end
	if not Sys_ChkFullTime(tActivityTime["TrojanAwakenI"]["ActivityTime"]) then
		return
	end
	if nItemId ~= tTrojanAwakenI_Data["RewardBox"] then
		return
	end
	
	
	local tReward = CommonFunc_Copy(tTrojanAwakenI_Reward["Reward"])
	tReward["RewardItem"][1]["Attr"] = "0 " .. nNum
	
	
	if Task_StcInterval(nEvent, nData, 1, 4, nUserId) then
		Task_SetStatistic(nEvent, nData, 0, 1, nUserId)
		Task_SetStcTimestamp(nEvent, nData, 0, nUserId)
	end
	if (Get_UserStatisticValue(nEvent, nData, nUserId) == 0) then
		Task_SetStatistic(nEvent, nData, 1, 1, nUserId)
		Task_SetStcTimestamp(nEvent, nData, 0, nUserId)
		RewardTemplate_UseItemAndMsg(tReward, nUserId)
		
	end
	
	
end
--怪物掉落函数
function TrojanAwakenI_MonsterDrop()
	local nEvent = tTrojanAwakenI_Stc["Reward"][2]["Event"]
	local nData = tTrojanAwakenI_Stc["Reward"][2]["Data"]
	local nLevel = tTrojanAwakenI_Data["Level"]
	local nMete = tTrojanAwakenI_Data["Mete"]
	local nUserId = Get_UserId()
	--等级不足不掉落
	if not User_JudgeLevelAndMetempsychosis(nLevel, nMete) then
		return
	end
	--隔天重置
	if Task_StcInterval(nEvent, nData, 1, 4, nUserId) then
		Task_SetStatistic(nEvent, nData, 0, 1, nUserId)
		Task_SetStcTimestamp(nEvent, nData, 0, nUserId)
	end
	
	if (Get_UserStatisticValue(nEvent, nData, nUserId) >= tTrojanAwakenI_Data["RewardLimit"]) then
		return
	end
	
	local tReward = CommonFunc_Copy(tTrojanAwakenI_Reward["Reward"])
	tReward["RewardItem"][1]["Attr"] = "0 " .. tTrojanAwakenI_Data["RewardNum"]
	
	if Sys_Random(tTrojanAwakenI_Data["RewardChance"], 10000) then
		
		if not RewardTemplate_UpperLimit(tReward) then
			return
		end
		
		if (Get_UserStatisticValue(nEvent, nData, nUserId) == 14) then
			Sys_MsgBox(tTrojanAwakenI_Text["MsgBox"]["DropLimit"])
		end
		Task_AddStatistic(nEvent, nData, tTrojanAwakenI_Data["RewardNum"], 1, nUserId)
		Task_SetStcTimestamp(nEvent, nData, 0, nUserId)
		RewardTemplate_UseItemAndMsg(tReward, nUserId)
	end
	
end
--赠点包 3312105
function TrojanAwakenI_GiftEmoney(nItemId)

	--判断赠点上限
	if Get_UserMonoEMoney() + tTrojanAwakenI_Data["EMoneyLimit"] > G_User_MaxEmoneyMono then
		User_TalkChannel2005(tTrojanAwakenI_Text["Luck1"])
		return
	end
--给赠点
	if Item_ChkMulItem(nItemId, nItemId, 1) then
		local flat,tNum = Probabil_RandomAward(tTrojanAwakenI_Probability[nItemId]["Reward"],1)
		local nStart = tNum[1]["tAward"][1]["Start"]
		local nEnd = tNum[1]["tAward"][1]["End"]
		local nCp = math.random(nStart,nEnd)
		local tReward = tTrojanAwakenI_Reward["Donative"]
		
		tReward["DeleteItem"][1]["Id"] = nItemId
		tReward["RewardEMoneyMono"]["Value"] = nCp
		tReward["RewardEMoneyMono"]["EmoneyLog"] = "250	4079	0	0	"..nCp.."	"
		
		RewardTemplate_UseItemAndMsg(tReward)
	end
end
--神魂可选包 3312107
function TrojanAwakenI_OpenChoose(nItemId, nNo)
	local nUserId = Get_UserId()
	RewardTemplate_UseItemAndMsg(tTrojanAwakenI_Reward[nItemId][nNo], nUserId)
end




----------------------------------NPC部分---------------------------------------------
--叶修 23849
tNpcFace[6291] = 35
tNpcGossip[23849]= tNpcGossip[23849] or DefaultNpc:new{}
tNpcGossip[23849]["OptionHidden"] = 1
tNpcGossip[23849]["DialogueText"] = tTrojanAwakenI_Text[23849]
tNpcGossip[23849]["nPageNum"] = 11
--活动前 1-1
tNpcGossip[23849]["Text1-1"] = {111, 112, 113, 114}
tNpcGossip[23849]["tOption1-1"] = {111}
tNpcGossip[23849]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["TrojanAwakenI"]["ActivityTime"])
end
--活动后 1-2
tNpcGossip[23849]["Text1-2"] = {111, 121}
tNpcGossip[23849]["tOption1-2"] = {121}
tNpcGossip[23849]["ChkFunc1-2"] = function()
	return not Sys_ChkFullTime(tActivityTime["TrojanAwakenI"]["ActivityTime"])
end
--活动中等级不足 1-3
tNpcGossip[23849]["Text1-3"] = {111, 131, 132, 133, 134}
tNpcGossip[23849]["tOption1-3"] = {131}
tNpcGossip[23849]["ChkFunc1-3"] = function()
	local nLevel = tTrojanAwakenI_Data["Level"]
	local nMete = tTrojanAwakenI_Data["Mete"]
	
	return (Sys_ChkFullTime(tActivityTime["TrojanAwakenI"]["ActivityTime"]) and (not User_JudgeLevelAndMetempsychosis(nLevel, nMete)))
end
--活动中等级足够 1-4
tNpcGossip[23849]["Text1-4"] = {111, 141, 142, 143}
tNpcGossip[23849]["tOption1-4"] = {141, 143, 142}
tNpcGossip[23849]["ChkFunc1-4"] = function()
	local nLevel = tTrojanAwakenI_Data["Level"]
	local nMete = tTrojanAwakenI_Data["Mete"]
	
	return (Sys_ChkFullTime(tActivityTime["TrojanAwakenI"]["ActivityTime"]) and User_JudgeLevelAndMetempsychosis(nLevel, nMete))
end
tNpcGossip[23849]["OptionPoint141"] = "2-1"--竞猜 接2-1
tNpcGossip[23849]["OptionPoint143"] = "3-3"--查看我的投注 接3-3
tNpcGossip[23849]["OptionPoint142"] = "3-2"--查看竞猜实况 接3-2
--接 竞猜 2-1
tNpcGossip[23849]["Text2-1"] = {211, 212, 213}
tNpcGossip[23849]["tOption2-1"] = {211, 212, 213, 214, 215, 216, 217, 218,219, 2110, 2111}
tNpcGossip[23849]["ChkFunc2-1"] = function()
	local nLevel = tTrojanAwakenI_Data["Level"]
	local nMete = tTrojanAwakenI_Data["Mete"]
	
	return (Sys_ChkFullTime(tActivityTime["TrojanAwakenI"]["ActivityTime"]) and User_JudgeLevelAndMetempsychosis(nLevel, nMete))
end
for i = 1, 11 do
	tNpcGossip[23849]["OptionFunc21" .. i] = "TrojanAwakenI_ChoosePro</N>23849</N>" .. i --竞猜选项函数
end
--竞猜二次确认 3-1
tNpcGossip[23849]["Text3-1"] = {311}
tNpcGossip[23849]["tOption3-1"] = {311, 312, 313, 314}
tNpcGossip[23849]["ChkFunc3-1"] = function()
	local nLevel = tTrojanAwakenI_Data["Level"]
	local nMete = tTrojanAwakenI_Data["Mete"]
	
	return (Sys_ChkFullTime(tActivityTime["TrojanAwakenI"]["ActivityTime"]) and User_JudgeLevelAndMetempsychosis(nLevel, nMete))
end
tNpcGossip[23849]["OptionFunc311Raw"] = "TrojanAwakenI_ConfirmChoose</N>23849</N>1</N>%d"--竞猜1个通灵宝玉
tNpcGossip[23849]["OptionFunc312Raw"] = "TrojanAwakenI_ConfirmChoose</N>23849</N>2</N>%d"--竞猜10个通灵宝玉
tNpcGossip[23849]["OptionFunc313Raw"] = "TrojanAwakenI_ConfirmChoose</N>23849</N>3</N>%d"--竞猜所有通灵宝玉
tNpcGossip[23849]["OptionPoint314"] = "2-1"--返回上一级
--接查看实况 3-2
tNpcGossip[23849]["Text3-2"] = {321, 322, 323, 3213, 326, 3214, 3211, 3212, 329, 328, 324, 325, 327, 3210, 3215, 3216}
tNpcGossip[23849]["tOption3-2"] = {321}
tNpcGossip[23849]["OptionPoint321"] = "1-4"-- 回主对白
tNpcGossip[23849]["ChkFunc3-2"] = function()
	local nLevel = tTrojanAwakenI_Data["Level"]
	local nMete = tTrojanAwakenI_Data["Mete"]
	
	for i = 4, 14 do
		local j = i - 3
		local nGlobalId = tTrojanAwakenI_Data["Global"][j][1]
		local nGlobalPos = tTrojanAwakenI_Data["Global"][j][2]
		local nTotalNum = Get_SysDynaGlobalData(nGlobalId, nGlobalPos)
		tNpcGossip[23849]["Text32" .. i] = string.format(tTrojanAwakenI_Text[23849]["Text32" .. i], nTotalNum)
	end
	
	return (Sys_ChkFullTime(tActivityTime["TrojanAwakenI"]["ActivityTime"]) and User_JudgeLevelAndMetempsychosis(nLevel, nMete))
end
--接查看我的投注 3-3
tNpcGossip[23849]["Text3-3"] = {331, 332, 333, 3313, 336, 3314, 3311, 3312, 339, 338, 334, 335, 337, 3310, 3315, 3316}
tNpcGossip[23849]["tOption3-3"] = {331}
tNpcGossip[23849]["OptionPoint331"] = "1-4"-- 回主对白
tNpcGossip[23849]["ChkFunc3-3"] = function()
	local nLevel = tTrojanAwakenI_Data["Level"]
	local nMete = tTrojanAwakenI_Data["Mete"]
	local nUserId = Get_UserId()
	
	for i = 4, 14 do
		local j = i - 3
		local nEvent = tTrojanAwakenI_Stc[j]["Event"]
		local nData = tTrojanAwakenI_Stc[j]["Data"]
		local nTotalNum = Get_UserStatisticValue(nEvent, nData, nUserId)
		tNpcGossip[23849]["Text33" .. i] = string.format(tTrojanAwakenI_Text[23849]["Text33" .. i], nTotalNum)
	end
	
	return (Sys_ChkFullTime(tActivityTime["TrojanAwakenI"]["ActivityTime"]) and User_JudgeLevelAndMetempsychosis(nLevel, nMete))
end
--通灵宝玉不足 3-4
tNpcGossip[23849]["Text3-4"] = {341, 342, 343, 344}
tNpcGossip[23849]["tOption3-4"] = {341}
tNpcGossip[23849]["OptionPoint341"] = "1-4"-- 回主对白

--23944,'TaoistSun'
tNpcFace[6542] = 40
tNpcGossip[23944]= tNpcGossip[23944] or DefaultNpc:new{}
tNpcGossip[23944]["OptionHidden"] = 1
tNpcGossip[23944]["DialogueText"] = tTrojanAwakenI_Text[23944]
tNpcGossip[23944]["Text1-1"] = {111, 112}
tNpcGossip[23944]["tOption1-1"] = {111}
--23945,'TaoistMoon'
tNpcFace[6546] = 6
tNpcGossip[23945]= tNpcGossip[23945] or DefaultNpc:new{}
tNpcGossip[23945]["OptionHidden"] = 1
tNpcGossip[23945]["DialogueText"] = tTrojanAwakenI_Text[23945]
tNpcGossip[23945]["Text1-1"] = {111, 112}
tNpcGossip[23945]["tOption1-1"] = {111}
--23946,'PirateLord'
tNpcFace[6547] = 234
tNpcGossip[23946]= tNpcGossip[23946] or DefaultNpc:new{}
tNpcGossip[23946]["OptionHidden"] = 1
tNpcGossip[23946]["DialogueText"] = tTrojanAwakenI_Text[23946]
tNpcGossip[23946]["Text1-1"] = {111, 112}
tNpcGossip[23946]["tOption1-1"] = {111}
--23947,'WindWalkerLord'
tNpcFace[6548] = 333
tNpcGossip[23947]= tNpcGossip[23947] or DefaultNpc:new{}
tNpcGossip[23947]["OptionHidden"] = 1
tNpcGossip[23947]["DialogueText"] = tTrojanAwakenI_Text[23947]
tNpcGossip[23947]["Text1-1"] = {111, 112}
tNpcGossip[23947]["tOption1-1"] = {111}
--23948,'TrojanStar'
tNpcFace[6549] = 5
tNpcGossip[23948]= tNpcGossip[23948] or DefaultNpc:new{}
tNpcGossip[23948]["OptionHidden"] = 1
tNpcGossip[23948]["DialogueText"] = tTrojanAwakenI_Text[23948]
tNpcGossip[23948]["Text1-1"] = {111, 112}
tNpcGossip[23948]["tOption1-1"] = {111}
--23949,'HeadAbbot'
tNpcFace[6550] = 226
tNpcGossip[23949]= tNpcGossip[23949] or DefaultNpc:new{}
tNpcGossip[23949]["OptionHidden"] = 1
tNpcGossip[23949]["DialogueText"] = tTrojanAwakenI_Text[23949]
tNpcGossip[23949]["Text1-1"] = {111, 112}
tNpcGossip[23949]["tOption1-1"] = {111}
--23950,'KungfuKing'
tNpcFace[6551] = 259
tNpcGossip[23950]= tNpcGossip[23950] or DefaultNpc:new{}
tNpcGossip[23950]["OptionHidden"] = 1
tNpcGossip[23950]["DialogueText"] = tTrojanAwakenI_Text[23950]
tNpcGossip[23950]["Text1-1"] = {111, 112}
tNpcGossip[23950]["tOption1-1"] = {111}
--23951,'ThunderGeneral'
tNpcFace[6552] = 86
tNpcGossip[23951]= tNpcGossip[23951] or DefaultNpc:new{}
tNpcGossip[23951]["OptionHidden"] = 1
tNpcGossip[23951]["DialogueText"] = tTrojanAwakenI_Text[23951]
tNpcGossip[23951]["Text1-1"] = {111, 112}
tNpcGossip[23951]["tOption1-1"] = {111}
--23952,'StormMaster'
tNpcFace[6553] = 10
tNpcGossip[23952]= tNpcGossip[23952] or DefaultNpc:new{}
tNpcGossip[23952]["OptionHidden"] = 1
tNpcGossip[23952]["DialogueText"] = tTrojanAwakenI_Text[23952]
tNpcGossip[23952]["Text1-1"] = {111, 112}
tNpcGossip[23952]["tOption1-1"] = {111}
--23953,'WarriorGod'
tNpcFace[6476] = 8
tNpcGossip[23953]= tNpcGossip[23953] or DefaultNpc:new{}
tNpcGossip[23953]["OptionHidden"] = 1
tNpcGossip[23953]["DialogueText"] = tTrojanAwakenI_Text[23953]
tNpcGossip[23953]["Text1-1"] = {111, 112}
tNpcGossip[23953]["tOption1-1"] = {111}
--23954,'WindSage'
tNpcFace[6477] = 203
tNpcGossip[23954]= tNpcGossip[23954] or DefaultNpc:new{}
tNpcGossip[23954]["OptionHidden"] = 1
tNpcGossip[23954]["DialogueText"] = tTrojanAwakenI_Text[23954]
tNpcGossip[23954]["Text1-1"] = {111, 112}
tNpcGossip[23954]["tOption1-1"] = {111}


---------------------------------物品部分---------------------------------------------
--通灵宝玉
tItem[3312103] = tItem[3312103] or {}
tItem[3312103]["Function"] = function(nItemId,sItemName)
	local nUserId = Get_UserId()
	--过期直接删除
	if not Sys_ChkFullTime(tActivityTime["TrojanAwakenI"]["ExchangeTime"]) then
		local nItemNum = Get_CountItemType(nItemId, 0)
		if nItemNum == 0 then
			return
		end
		if Item_ChkMulItem(nItemId, nItemId, nItemNum) and Item_DelMulItem(nItemId, nItemId, nItemNum) then
			local tReward = CommonFunc_Copy(tTrojanAwakenI_Reward["OutTime"])
			tReward["RewardItem"][1]["Attr"] = "0 " .. nItemNum
			RewardTemplate_UseItemAndMsg(tReward, nUserId)
			User_TalkChannel2005(string.format(tTrojanAwakenI_Text["MsgBox"]["ItemOutTime"], nItemNum), nUserId)
		end
		return
	end
	
	local nNpcId = tTrojanAwakenI_Data["BetNpc"]
	if Sys_ChkFullTime(tActivityTime["TrojanAwakenI"]["NewExchangeTime"]) then
		nNpcId = tTrojanAwakenI_Data["ExchangeNpc"]
	end
	NpcPosition_PathFind(nNpcId)
end
--觉醒珍宝礼盒
tItem[3312104] = tItem[3312104] or {}
tItem[3312104]["Function"] = function(nItemId,sItemName)
	Get_NewFestiveCelebrationsPack(nItemId)
end
--觉醒天石大礼包
tItem[3312105] = tItem[3312105] or {}
tItem[3312105]["Function"] = function(nItemId,sItemName)
	TrojanAwakenI_GiftEmoney(nItemId)
end
--3312106,'3颗究极通神丹礼包
tItem[3312106] = tItem[3312106] or {}
tItem[3312106]["Function"] = function(nItemId,sItemName)
	local nUserId = Get_UserId()
	RewardTemplate_UseItemAndMsg(tTrojanAwakenI_Reward[nItemId], nUserId)
end
--3312107,'6阶武器神魂可选包（7天）'
tItemFace[3312107] = 505
tItem[3312107] = tItem[3312107] or {}
tItem[3312107]["DialogueText"] = tTrojanAwakenI_Text[3312107]
tItem[3312107]["Text1-1"] = {111}
tItem[3312107]["tOption1-1"] = {111, 112, 113, 114, 115, 116, 117, 118, 119, 1110, 1111, 1112, 1113, 1114, 1115, 1116, 1117, 1118, 1119, 1120, 1121}
tItem[3312107]["ChkFunc1-1"] = function()
	return true
end
for i = 1, 21 do
	tItem[3312107]["OptionFunc11" .. i] = "TrojanAwakenI_OpenChoose</N>3312107</N>" .. i
end
--3312108,'幻雪蓝莲坐骑外套（30天）'
tItem[3312108] = tItem[3312108] or {}
tItem[3312108]["Function"] = function(nItemId,sItemName)
	local nUserId = Get_UserId()
	RewardTemplate_UseItemAndMsg(tTrojanAwakenI_Reward[nItemId], nUserId)
end
--3312109,'喵基尼【魅力版】时装外套（30天）'
tItem[3312109] = tItem[3312109] or {}
tItem[3312109]["Function"] = function(nItemId,sItemName)
	local nUserId = Get_UserId()
	RewardTemplate_UseItemAndMsg(tTrojanAwakenI_Reward[nItemId], nUserId)
end


---------------------------------怪物部分---------------------------------------------

local tTrojanAwakenI_KillMonster = {}
tTrojanAwakenI_KillMonster["ActivityTime"] = tActivityTime["TrojanAwakenI"]["ActivityTime"]
tTrojanAwakenI_KillMonster["Function"]= TrojanAwakenI_MonsterDrop
table.insert(tMonsterDrop_AreaLoad, tTrojanAwakenI_KillMonster)

-- 激情服
-- local tTrojanAwakenI_KillMonster_NoGift = {}
-- tTrojanAwakenI_KillMonster_NoGift["ActivityTime"] = tActivityTime["TrojanAwakenI"]["ActivityTime"]
-- tTrojanAwakenI_KillMonster_NoGift["Function"]= TrojanAwakenI_MonsterDrop
-- tTrojanAwakenI_KillMonster_NoGift["MonsterId"]= {4833,4834,4835,4836,4838,4839,4840,4841,4868,4842,4843,4844,4845,4869,4870,4846,4847,4848,4849,4871,
-- 4850,4851,4852,4853,4854,4872,4874,4855,4856,4857,4858,4873,4875,4876,4877,4878,4879,4859,4860,4862,4863,4865,4867}
-- table.insert(tMonsterDrop_AreaLoad_NoGift, tTrojanAwakenI_KillMonster_NoGift)






