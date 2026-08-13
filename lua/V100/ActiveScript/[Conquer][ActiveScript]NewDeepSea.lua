------------------------------------------------------------------------------------
--Name:		191107[简体征服][活动脚本]新深海活动（12.10-12.23）
--Creator: 	兰瑞妹
--Created:	2019/11/07
------------------------------------------------------------------------------------

-- 命名前缀
-- New_DeepSea_

-- logid 12001741

-- taskid 3660

-- #stc 掩码说明 
-- #stc(210,61) 背包信
-- #stc(210,62) 基础值1000000 2~3 表示金币次数  上限5 4~5 表示银币兑换 上限7 6~7 表示铜币兑换 上限10 隔天清除
-- #stc(210,63) 进入地图打掩码标识 含有1 表示进入深海 含有2表示进入兑换地图 隔天清除
-- #stc(211,62) 八爪章鱼获得神纹次数 --上限10次 隔天清除
-- #stc(212,06) 深海巨魔获得神纹次数 --上限10次 隔天清除

-- #GlobalId 53922
--#动态存储表说明
-- #存储位	--存储说明--
--#data0--	记录全服兑换金币数量 上限100


--------------------------------------数据配置部分--------------------------------------
-- 常量表
local tNew_DeepSea_Count = {}
	-- 活动时间
	tNew_DeepSea_Count["ActivityTime"] = tActivityTime["NewDeepSea"]["ActivityTime"]
	tNew_DeepSea_Count["LimitExchange"] = tActivityTime["NewDeepSea"]["LimitExchange"]
	tNew_DeepSea_Count["ItemExchange"] = tActivityTime["NewDeepSea"]["ItemExchange"]
	
	-- 等级
	tNew_DeepSea_Count["Level"] = 80
	tNew_DeepSea_Count["Meto"] = 0
	
	-- 杀怪掉落
	tNew_DeepSea_Count["Min"] = 300
	tNew_DeepSea_Count["Max"] = 10000
	
	-- 激情服和普通服判断地图
	tNew_DeepSea_Count["MapId"] = 1002
	tNew_DeepSea_Count["Market"] = 1036
	
	-- 3314552,'深海金币'
	tNew_DeepSea_Count["GoldId"] = 3314552
	-- 银币
	tNew_DeepSea_Count["SiliverId"] = 3314551
	
	-- 限时金币兑换
	tNew_DeepSea_Count["GlobalId"] = 53922
	-- 上限100
	tNew_DeepSea_Count["GlobalLimit"] = 100
	-- 25508,'张顺'
	tNew_DeepSea_Count["MainNpc"] = 25508
	-- 怪物生成时间
	tNew_DeepSea_Count["Time"] = 3600
	-- 25513,'深海宝箱'
	tNew_DeepSea_Count["MainBoxNpc"] = 25513
	
	
	-- 读条时间
	tNew_DeepSea_Count["ExploreTime"] = 3
	-- 动作
	tNew_DeepSea_Count["ActionId"] = 220
	
	-- 召唤令
	tNew_DeepSea_Count["CallBoss"] = {}
	-- 深海巨魔召唤令
	tNew_DeepSea_Count["CallBoss"][3314548] = {}
	tNew_DeepSea_Count["CallBoss"][3314548]["Generator"] = 30395
	tNew_DeepSea_Count["CallBoss"][3314548]["MonsterId"] = 3054
	-- 八爪章鱼召唤令
	tNew_DeepSea_Count["CallBoss"][3314549] = {}
	tNew_DeepSea_Count["CallBoss"][3314549]["Generator"] = 30396
	tNew_DeepSea_Count["CallBoss"][3314549]["MonsterId"] = 3053
	
	-- boss给物品随机
	tNew_DeepSea_Count["Random"] = {}
	tNew_DeepSea_Count["Random"][3053] = {}
	tNew_DeepSea_Count["Random"][3053][1] = {1,2}
	tNew_DeepSea_Count["Random"][3053][2] = {2,5}
	tNew_DeepSea_Count["Random"][3054] = {}
	tNew_DeepSea_Count["Random"][3054][1] = {3,6}
	tNew_DeepSea_Count["Random"][3054][2] = {5,8}
	tNew_DeepSea_Count["Attr"] = "0 %d 0 1440 1"
	
	-- 限时刷八爪章鱼
	tNew_DeepSea_Count["LimitMonster"] = {}
	tNew_DeepSea_Count["LimitMonster"]["Generator"] = 30291
	tNew_DeepSea_Count["LimitMonster"]["MonsterId"] = 3055
	tNew_DeepSea_Count["LimitMonster"]["Time"] = 86400
	tNew_DeepSea_Count["LimitMonster"]["Pos"] = {}
	tNew_DeepSea_Count["LimitMonster"]["Pos"][1] = {286,148}
	tNew_DeepSea_Count["LimitMonster"]["Pos"][2] = {368,247}
	tNew_DeepSea_Count["LimitMonster"]["Pos"][3] = {294,290}
	tNew_DeepSea_Count["LimitMonster"]["Pos"][4] = {207,335}
	tNew_DeepSea_Count["LimitMonster"]["Pos"][5] = {192,238}
	tNew_DeepSea_Count["LimitMonster"]["Pos"][6] = {142,283}
	tNew_DeepSea_Count["LimitMonster"]["Pos"][7] = {137,083}
	tNew_DeepSea_Count["LimitMonster"]["Pos"][8] = {225,161}
	
-- 金币上限兑换次数
local nNew_DeepSea_GlobalGoldData = 0

-- Log表
local tNew_DeepSea_Log = {}
	-- 过期删除
	tNew_DeepSea_Log["OverDue"] = "0,0,%d,%d,12001741,2,0,0"
	-- 参与进图
	tNew_DeepSea_Log["EnterSea"] = "0,0,0,0,12001741,1[1],0,0"
	-- 进入兑换地图
	tNew_DeepSea_Log["EnterTreature"] = "0,0,0,0,12001741,1[2],0,0"
	-- 获得金币奖励1
	tNew_DeepSea_Log["GetGoldCoin"] = "0,0,3314552,%d,12001741,1[3],%d,0"
	-- 兑换金币奖励2
	tNew_DeepSea_Log[3314552] = "0,0,%d,%d,12001741,1[4],0,0"
	-- 兑换银币奖励
	tNew_DeepSea_Log[3314551] = "0,0,%d,%d,12001741,1[5],0,0"
	-- 兑换铜币奖励
	tNew_DeepSea_Log[3314550] = "0,0,%d,%d,12001741,1[6],0,0"
	-- 召唤令
	tNew_DeepSea_Log[3314548] = "0,0,%d,1,12001741,1[7],0,0"
	tNew_DeepSea_Log[3314549] = "0,0,%d,1,12001741,1[8],0,0"
	
-- stc掩码
local tNew_DeepSea_Stc = {}
	-- stc(210,62) 基础值1000000 2~3 表示金币次数  上限5 4~5 表示银币兑换 上限7 6~7 表示铜币兑换 上限10
	tNew_DeepSea_Stc[1] = {}
	tNew_DeepSea_Stc[1]["EventType"] = 210
	tNew_DeepSea_Stc[1]["DataType"] = 62
	tNew_DeepSea_Stc[1]["Basic"] = 1000000
	-- 进入地图打掩码标识
	tNew_DeepSea_Stc[2] = {}
	tNew_DeepSea_Stc[2]["EventType"] = 210
	tNew_DeepSea_Stc[2]["DataType"] = 63
	tNew_DeepSea_Stc[2]["Basic"] = 0
	-- #stc(211,62) 八爪章鱼获得神纹次数 --上限10次
	tNew_DeepSea_Stc[3053] = {}
	tNew_DeepSea_Stc[3053]["EventType"] = 211
	tNew_DeepSea_Stc[3053]["DataType"] = 62
	tNew_DeepSea_Stc[3053]["Basic"] = 0
	tNew_DeepSea_Stc[3053]["Limit"] = 10
	-- #stc(212,06) 深海巨魔获得神纹次数 --上限10次
	tNew_DeepSea_Stc[3054] = {}
	tNew_DeepSea_Stc[3054]["EventType"] = 212
	tNew_DeepSea_Stc[3054]["DataType"] = 06
	tNew_DeepSea_Stc[3054]["Basic"] = 0
	tNew_DeepSea_Stc[3054]["Limit"] = 10
	-- #stc(212,07) 全服限量每人一次 --上限1次 隔天清除
	tNew_DeepSea_Stc[3] = {}
	tNew_DeepSea_Stc[3]["EventType"] = 212
	tNew_DeepSea_Stc[3]["DataType"] = 07
	tNew_DeepSea_Stc[3]["Basic"] = 0
	
-- 掩码分段
local tNew_DeepSea_SubStc = {}
	-- 3314550,'深海铜币'
	-- Start 索引值初始位置 End 借宿位置
	-- Limit 上限 AddData 新增一次加的值
	-- FuncIndex 选项索引
	tNew_DeepSea_SubStc[3314550] = {}
	tNew_DeepSea_SubStc[3314550]["Start"] = 6
	tNew_DeepSea_SubStc[3314550]["End"] = 7
	tNew_DeepSea_SubStc[3314550]["Limit"] = 10
	tNew_DeepSea_SubStc[3314550]["AddData"] = 1
	tNew_DeepSea_SubStc[3314550]["FuncIndex"] = 113
	tNew_DeepSea_SubStc[3314551] = {}
	tNew_DeepSea_SubStc[3314551]["Start"] = 4
	tNew_DeepSea_SubStc[3314551]["End"] = 5
	tNew_DeepSea_SubStc[3314551]["Limit"] = 7
	tNew_DeepSea_SubStc[3314551]["AddData"] = 100
	tNew_DeepSea_SubStc[3314551]["FuncIndex"] = 112
	tNew_DeepSea_SubStc[3314552] = {}
	tNew_DeepSea_SubStc[3314552]["Start"] = 2
	tNew_DeepSea_SubStc[3314552]["End"] = 3
	tNew_DeepSea_SubStc[3314552]["Limit"] = 5
	tNew_DeepSea_SubStc[3314552]["AddData"] = 10000
	tNew_DeepSea_SubStc[3314552]["FuncIndex"] = 111
	
-- 光效
local tNew_DeepSea_Effect = {}
	tNew_DeepSea_Effect[1] = {}
	tNew_DeepSea_Effect[1]["Effect"] = "angelwing"
	tNew_DeepSea_Effect[1]["SzObj"] = "self"
	
-- 地图位置
local tNew_DeepSea_MapPosition = {}
	-- 深海地图传送进入坐标 10732,'深海'
	tNew_DeepSea_MapPosition[1] = {}
	tNew_DeepSea_MapPosition[1]["MapId"] = 10732
	tNew_DeepSea_MapPosition[1]["PosX"] = 348
	tNew_DeepSea_MapPosition[1]["PosY"] = 208
	tNew_DeepSea_MapPosition[1]["Range"] = 5
	tNew_DeepSea_MapPosition[1]["NpcId"] = 25509
	-- 兑换地图传入坐标
	tNew_DeepSea_MapPosition[2] = {}
	tNew_DeepSea_MapPosition[2]["MapId"] = 10733
	tNew_DeepSea_MapPosition[2]["PosX"] = 109
	tNew_DeepSea_MapPosition[2]["PosY"] = 145
	tNew_DeepSea_MapPosition[2]["Range"] = 5
	-- 双龙城
	tNew_DeepSea_MapPosition[3] = {}
	tNew_DeepSea_MapPosition[3]["MapId"] = 1002
	tNew_DeepSea_MapPosition[3]["PosX"] = 310
	tNew_DeepSea_MapPosition[3]["PosY"] = 496
	tNew_DeepSea_MapPosition[3]["Range"] = 5
	-- 激情服出地图
	tNew_DeepSea_MapPosition[4] = {}
	tNew_DeepSea_MapPosition[4]["MapId"] = 1036
	tNew_DeepSea_MapPosition[4]["PosX"] = 241
	tNew_DeepSea_MapPosition[4]["PosY"] = 228
	tNew_DeepSea_MapPosition[4]["Range"] = 5
	-- npc移走
	tNew_DeepSea_MapPosition[5] = {}
	tNew_DeepSea_MapPosition[5]["MapId"] = 5000
	tNew_DeepSea_MapPosition[5]["PosX"] = 100
	tNew_DeepSea_MapPosition[5]["PosY"] = 100
	

local tNew_DeepSea_MoveNPC = {}
	tNew_DeepSea_MoveNPC["MoveDate"] = {}
	tNew_DeepSea_MoveNPC["MoveDate"][1] = {}
	tNew_DeepSea_MoveNPC["MoveDate"][1]["MapId"] = 10732
	tNew_DeepSea_MoveNPC["MoveDate"][1]["PosX"] = 317
	tNew_DeepSea_MoveNPC["MoveDate"][1]["PosY"] = 187
	tNew_DeepSea_MoveNPC["MoveDate"][2] = {}
	tNew_DeepSea_MoveNPC["MoveDate"][2]["MapId"] = 10732
	tNew_DeepSea_MoveNPC["MoveDate"][2]["PosX"] = 283
	tNew_DeepSea_MoveNPC["MoveDate"][2]["PosY"] = 160
	tNew_DeepSea_MoveNPC["MoveDate"][3] = {}
	tNew_DeepSea_MoveNPC["MoveDate"][3]["MapId"] = 10732
	tNew_DeepSea_MoveNPC["MoveDate"][3]["PosX"] = 249
	tNew_DeepSea_MoveNPC["MoveDate"][3]["PosY"] = 140
	tNew_DeepSea_MoveNPC["MoveDate"][4] = {}
	tNew_DeepSea_MoveNPC["MoveDate"][4]["MapId"] = 10732
	tNew_DeepSea_MoveNPC["MoveDate"][4]["PosX"] = 234
	tNew_DeepSea_MoveNPC["MoveDate"][4]["PosY"] = 156
	tNew_DeepSea_MoveNPC["MoveDate"][5] = {}
	tNew_DeepSea_MoveNPC["MoveDate"][5]["MapId"] = 10732
	tNew_DeepSea_MoveNPC["MoveDate"][5]["PosX"] = 226
	tNew_DeepSea_MoveNPC["MoveDate"][5]["PosY"] = 178
	tNew_DeepSea_MoveNPC["MoveDate"][6] = {}
	tNew_DeepSea_MoveNPC["MoveDate"][6]["MapId"] = 10732
	tNew_DeepSea_MoveNPC["MoveDate"][6]["PosX"] = 204
	tNew_DeepSea_MoveNPC["MoveDate"][6]["PosY"] = 177
	tNew_DeepSea_MoveNPC["MoveDate"][7] = {}
	tNew_DeepSea_MoveNPC["MoveDate"][7]["MapId"] = 10732
	tNew_DeepSea_MoveNPC["MoveDate"][7]["PosX"] = 177
	tNew_DeepSea_MoveNPC["MoveDate"][7]["PosY"] = 146
	tNew_DeepSea_MoveNPC["MoveDate"][8] = {}
	tNew_DeepSea_MoveNPC["MoveDate"][8]["MapId"] = 10732
	tNew_DeepSea_MoveNPC["MoveDate"][8]["PosX"] = 197
	tNew_DeepSea_MoveNPC["MoveDate"][8]["PosY"] = 137
	tNew_DeepSea_MoveNPC["MoveDate"][9] = {}
	tNew_DeepSea_MoveNPC["MoveDate"][9]["MapId"] = 10732
	tNew_DeepSea_MoveNPC["MoveDate"][9]["PosX"] = 193
	tNew_DeepSea_MoveNPC["MoveDate"][9]["PosY"] = 112
	tNew_DeepSea_MoveNPC["MoveDate"][10] = {}
	tNew_DeepSea_MoveNPC["MoveDate"][10]["MapId"] = 10732
	tNew_DeepSea_MoveNPC["MoveDate"][10]["PosX"] = 163
	tNew_DeepSea_MoveNPC["MoveDate"][10]["PosY"] = 88
	tNew_DeepSea_MoveNPC["MoveDate"][11] = {}
	tNew_DeepSea_MoveNPC["MoveDate"][11]["MapId"] = 10732
	tNew_DeepSea_MoveNPC["MoveDate"][11]["PosX"] = 133
	tNew_DeepSea_MoveNPC["MoveDate"][11]["PosY"] = 88
	tNew_DeepSea_MoveNPC["MoveDate"][12] = {}
	tNew_DeepSea_MoveNPC["MoveDate"][12]["MapId"] = 10732
	tNew_DeepSea_MoveNPC["MoveDate"][12]["PosX"] = 106
	tNew_DeepSea_MoveNPC["MoveDate"][12]["PosY"] = 101
	tNew_DeepSea_MoveNPC["MoveDate"][13] = {}
	tNew_DeepSea_MoveNPC["MoveDate"][13]["MapId"] = 10732
	tNew_DeepSea_MoveNPC["MoveDate"][13]["PosX"] = 94
	tNew_DeepSea_MoveNPC["MoveDate"][13]["PosY"] = 134
	tNew_DeepSea_MoveNPC["MoveDate"][14] = {}
	tNew_DeepSea_MoveNPC["MoveDate"][14]["MapId"] = 10732
	tNew_DeepSea_MoveNPC["MoveDate"][14]["PosX"] = 145
	tNew_DeepSea_MoveNPC["MoveDate"][14]["PosY"] = 150
	tNew_DeepSea_MoveNPC["MoveDate"][15] = {}
	tNew_DeepSea_MoveNPC["MoveDate"][15]["MapId"] = 10732
	tNew_DeepSea_MoveNPC["MoveDate"][15]["PosX"] = 163
	tNew_DeepSea_MoveNPC["MoveDate"][15]["PosY"] = 206
	tNew_DeepSea_MoveNPC["MoveDate"][16] = {}
	tNew_DeepSea_MoveNPC["MoveDate"][16]["MapId"] = 10732
	tNew_DeepSea_MoveNPC["MoveDate"][16]["PosX"] = 113
	tNew_DeepSea_MoveNPC["MoveDate"][16]["PosY"] = 196
	tNew_DeepSea_MoveNPC["MoveDate"][17] = {}
	tNew_DeepSea_MoveNPC["MoveDate"][17]["MapId"] = 10732
	tNew_DeepSea_MoveNPC["MoveDate"][17]["PosX"] = 102
	tNew_DeepSea_MoveNPC["MoveDate"][17]["PosY"] = 212
	tNew_DeepSea_MoveNPC["MoveDate"][18] = {}
	tNew_DeepSea_MoveNPC["MoveDate"][18]["MapId"] = 10732
	tNew_DeepSea_MoveNPC["MoveDate"][18]["PosX"] = 134
	tNew_DeepSea_MoveNPC["MoveDate"][18]["PosY"] = 245
	tNew_DeepSea_MoveNPC["MoveDate"][19] = {}
	tNew_DeepSea_MoveNPC["MoveDate"][19]["MapId"] = 10732
	tNew_DeepSea_MoveNPC["MoveDate"][19]["PosX"] = 184
	tNew_DeepSea_MoveNPC["MoveDate"][19]["PosY"] = 243
	tNew_DeepSea_MoveNPC["MoveDate"][20] = {}
	tNew_DeepSea_MoveNPC["MoveDate"][20]["MapId"] = 10732
	tNew_DeepSea_MoveNPC["MoveDate"][20]["PosX"] = 158
	tNew_DeepSea_MoveNPC["MoveDate"][20]["PosY"] = 226
	tNew_DeepSea_MoveNPC["MoveDate"][21] = {}
	tNew_DeepSea_MoveNPC["MoveDate"][21]["MapId"] = 10732
	tNew_DeepSea_MoveNPC["MoveDate"][21]["PosX"] = 140
	tNew_DeepSea_MoveNPC["MoveDate"][21]["PosY"] = 281
	tNew_DeepSea_MoveNPC["MoveDate"][22] = {}
	tNew_DeepSea_MoveNPC["MoveDate"][22]["MapId"] = 10732
	tNew_DeepSea_MoveNPC["MoveDate"][22]["PosX"] = 150
	tNew_DeepSea_MoveNPC["MoveDate"][22]["PosY"] = 238
	tNew_DeepSea_MoveNPC["MoveDate"][23] = {}
	tNew_DeepSea_MoveNPC["MoveDate"][23]["MapId"] = 10732
	tNew_DeepSea_MoveNPC["MoveDate"][23]["PosX"] = 215
	tNew_DeepSea_MoveNPC["MoveDate"][23]["PosY"] = 216
	tNew_DeepSea_MoveNPC["MoveDate"][24] = {}
	tNew_DeepSea_MoveNPC["MoveDate"][24]["MapId"] = 10732
	tNew_DeepSea_MoveNPC["MoveDate"][24]["PosX"] = 249
	tNew_DeepSea_MoveNPC["MoveDate"][24]["PosY"] = 212
	tNew_DeepSea_MoveNPC["MoveDate"][25] = {}
	tNew_DeepSea_MoveNPC["MoveDate"][25]["MapId"] = 10732
	tNew_DeepSea_MoveNPC["MoveDate"][25]["PosX"] = 286
	tNew_DeepSea_MoveNPC["MoveDate"][25]["PosY"] = 209
	tNew_DeepSea_MoveNPC["MoveDate"][26] = {}
	tNew_DeepSea_MoveNPC["MoveDate"][26]["MapId"] = 10732
	tNew_DeepSea_MoveNPC["MoveDate"][26]["PosX"] = 346
	tNew_DeepSea_MoveNPC["MoveDate"][26]["PosY"] = 248
	tNew_DeepSea_MoveNPC["MoveDate"][27] = {}
	tNew_DeepSea_MoveNPC["MoveDate"][27]["MapId"] = 10732
	tNew_DeepSea_MoveNPC["MoveDate"][27]["PosX"] = 367
	tNew_DeepSea_MoveNPC["MoveDate"][27]["PosY"] = 238
	tNew_DeepSea_MoveNPC["MoveDate"][28] = {}
	tNew_DeepSea_MoveNPC["MoveDate"][28]["MapId"] = 10732
	tNew_DeepSea_MoveNPC["MoveDate"][28]["PosX"] = 367
	tNew_DeepSea_MoveNPC["MoveDate"][28]["PosY"] = 271
	tNew_DeepSea_MoveNPC["MoveDate"][29] = {}
	tNew_DeepSea_MoveNPC["MoveDate"][29]["MapId"] = 10732
	tNew_DeepSea_MoveNPC["MoveDate"][29]["PosX"] = 337
	tNew_DeepSea_MoveNPC["MoveDate"][29]["PosY"] = 275
	tNew_DeepSea_MoveNPC["MoveDate"][30] = {}
	tNew_DeepSea_MoveNPC["MoveDate"][30]["MapId"] = 10732
	tNew_DeepSea_MoveNPC["MoveDate"][30]["PosX"] = 308
	tNew_DeepSea_MoveNPC["MoveDate"][30]["PosY"] = 270
	tNew_DeepSea_MoveNPC["MoveDate"][31] = {}
	tNew_DeepSea_MoveNPC["MoveDate"][31]["MapId"] = 10732
	tNew_DeepSea_MoveNPC["MoveDate"][31]["PosX"] = 290
	tNew_DeepSea_MoveNPC["MoveDate"][31]["PosY"] = 289
	tNew_DeepSea_MoveNPC["MoveDate"][32] = {}
	tNew_DeepSea_MoveNPC["MoveDate"][32]["MapId"] = 10732
	tNew_DeepSea_MoveNPC["MoveDate"][32]["PosX"] = 270
	tNew_DeepSea_MoveNPC["MoveDate"][32]["PosY"] = 302
	tNew_DeepSea_MoveNPC["MoveDate"][33] = {}
	tNew_DeepSea_MoveNPC["MoveDate"][33]["MapId"] = 10732
	tNew_DeepSea_MoveNPC["MoveDate"][33]["PosX"] = 272
	tNew_DeepSea_MoveNPC["MoveDate"][33]["PosY"] = 325
	tNew_DeepSea_MoveNPC["MoveDate"][34] = {}
	tNew_DeepSea_MoveNPC["MoveDate"][34]["MapId"] = 10732
	tNew_DeepSea_MoveNPC["MoveDate"][34]["PosX"] = 251
	tNew_DeepSea_MoveNPC["MoveDate"][34]["PosY"] = 338
	tNew_DeepSea_MoveNPC["MoveDate"][35] = {}
	tNew_DeepSea_MoveNPC["MoveDate"][35]["MapId"] = 10732
	tNew_DeepSea_MoveNPC["MoveDate"][35]["PosX"] = 228
	tNew_DeepSea_MoveNPC["MoveDate"][35]["PosY"] = 342
	tNew_DeepSea_MoveNPC["MoveDate"][36] = {}
	tNew_DeepSea_MoveNPC["MoveDate"][36]["MapId"] = 10732
	tNew_DeepSea_MoveNPC["MoveDate"][36]["PosX"] = 199
	tNew_DeepSea_MoveNPC["MoveDate"][36]["PosY"] = 330
	
-- 随机表
local tNew_DeepSea_Random = {}
	-- ===个人金币兑换
	-- ===索引: tNew_DeepSea_Random[3314552]
	-- ===LogStep: 2[4]
	tNew_DeepSea_Random[3314552] = {}
	tNew_DeepSea_Random[3314552]["ItemChanceSum"] = 10000
	tNew_DeepSea_Random[3314552]["LogId"] = 12001741
	tNew_DeepSea_Random[3314552]["LogStep"] = " 2[4]"
	-- 黄色神纹随机包（赠） - 3%
	tNew_DeepSea_Random[3314552][1] = {}
	tNew_DeepSea_Random[3314552][1]["RandomItemChanceType"] = 2
	tNew_DeepSea_Random[3314552][1]["ItemChance"] = 300
	tNew_DeepSea_Random[3314552][1]["RewardItem"] = {}
	tNew_DeepSea_Random[3314552][1]["RewardItem"][1] = {}
	tNew_DeepSea_Random[3314552][1]["RewardItem"][1]["Id"] = 3306919 -- 黄色神纹随机包[3306919][属性:9][叠加:0][金币:0], 【表格】黄色神纹随机包（赠）
	tNew_DeepSea_Random[3314552][1]["RewardItem"][1]["Attr"] = "0 1" -- 黄色神纹随机包*1
	tNew_DeepSea_Random[3314552][1]["RewardEffect"] = {}
	tNew_DeepSea_Random[3314552][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNew_DeepSea_Random[3314552][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 黄色神纹随机包  - 2%
	tNew_DeepSea_Random[3314552][2] = {}
	tNew_DeepSea_Random[3314552][2]["RandomItemChanceType"] = 2
	tNew_DeepSea_Random[3314552][2]["ItemChance"] = 200
	tNew_DeepSea_Random[3314552][2]["RewardItem"] = {}
	tNew_DeepSea_Random[3314552][2]["RewardItem"][1] = {}
	tNew_DeepSea_Random[3314552][2]["RewardItem"][1]["Id"] = 3306919 -- 黄色神纹随机包[3306919][属性:9][叠加:0][金币:0], 【表格】黄色神纹随机包 
	tNew_DeepSea_Random[3314552][2]["RewardItem"][1]["Attr"] = "0 1" -- 黄色神纹随机包*1
	tNew_DeepSea_Random[3314552][2]["RewardEffect"] = {}
	tNew_DeepSea_Random[3314552][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNew_DeepSea_Random[3314552][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 黄色神纹碎片 - 34%
	tNew_DeepSea_Random[3314552][3] = {}
	tNew_DeepSea_Random[3314552][3]["RandomItemChanceType"] = 2
	tNew_DeepSea_Random[3314552][3]["ItemChance"] = 3400
	tNew_DeepSea_Random[3314552][3]["RewardItem"] = {}
	tNew_DeepSea_Random[3314552][3]["RewardItem"][1] = {}
	tNew_DeepSea_Random[3314552][3]["RewardItem"][1]["Id"] = 3306370 -- 黄色神纹碎片[3306370][属性:9][叠加:10000][金币:0], 【表格】黄色神纹碎片
	tNew_DeepSea_Random[3314552][3]["RewardItem"][1]["Attr"] = "0 1" -- 黄色神纹碎片*1
	tNew_DeepSea_Random[3314552][3]["RewardEffect"] = {}
	tNew_DeepSea_Random[3314552][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNew_DeepSea_Random[3314552][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 神纹精粹*10 - 34%
	tNew_DeepSea_Random[3314552][4] = {}
	tNew_DeepSea_Random[3314552][4]["RandomItemChanceType"] = 2
	tNew_DeepSea_Random[3314552][4]["ItemChance"] = 3400
	tNew_DeepSea_Random[3314552][4]["RewardItem"] = {}
	tNew_DeepSea_Random[3314552][4]["RewardItem"][1] = {}
	tNew_DeepSea_Random[3314552][4]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】神纹精粹*10
	tNew_DeepSea_Random[3314552][4]["RewardItem"][1]["Attr"] = "0 10 3" -- 万能神纹精粹（赠）*10
	tNew_DeepSea_Random[3314552][4]["RewardEffect"] = {}
	tNew_DeepSea_Random[3314552][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNew_DeepSea_Random[3314552][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 神纹精粹*20 - 17%
	tNew_DeepSea_Random[3314552][5] = {}
	tNew_DeepSea_Random[3314552][5]["RandomItemChanceType"] = 2
	tNew_DeepSea_Random[3314552][5]["ItemChance"] = 1700
	tNew_DeepSea_Random[3314552][5]["RewardItem"] = {}
	tNew_DeepSea_Random[3314552][5]["RewardItem"][1] = {}
	tNew_DeepSea_Random[3314552][5]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】神纹精粹*20
	tNew_DeepSea_Random[3314552][5]["RewardItem"][1]["Attr"] = "0 20 3" -- 万能神纹精粹（赠）*20
	tNew_DeepSea_Random[3314552][5]["RewardEffect"] = {}
	tNew_DeepSea_Random[3314552][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNew_DeepSea_Random[3314552][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 神纹精粹*30 - 10%
	tNew_DeepSea_Random[3314552][6] = {}
	tNew_DeepSea_Random[3314552][6]["RandomItemChanceType"] = 2
	tNew_DeepSea_Random[3314552][6]["ItemChance"] = 1000
	tNew_DeepSea_Random[3314552][6]["RewardItem"] = {}
	tNew_DeepSea_Random[3314552][6]["RewardItem"][1] = {}
	tNew_DeepSea_Random[3314552][6]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】神纹精粹*30
	tNew_DeepSea_Random[3314552][6]["RewardItem"][1]["Attr"] = "0 30 3" -- 万能神纹精粹（赠）*30
	tNew_DeepSea_Random[3314552][6]["RewardEffect"] = {}
	tNew_DeepSea_Random[3314552][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNew_DeepSea_Random[3314552][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 章鱼哥召唤令-- 【自身概率】 - 10%
	tNew_DeepSea_Random[3314552][7] = {}
	tNew_DeepSea_Random[3314552][7]["RandomItemChanceType"] = 3
	tNew_DeepSea_Random[3314552][7]["ItemSelfChanceSum"] = 10000
	tNew_DeepSea_Random[3314552][7]["ItemChance"] = 1000
	tNew_DeepSea_Random[3314552][7]["RewardItem"] = {}
	tNew_DeepSea_Random[3314552][7]["RewardItem"][1] = {}
	tNew_DeepSea_Random[3314552][7]["RewardItem"][1]["Id"] = 3314549 -- 八爪章鱼召唤令[3314549][属性:8][叠加:1][金币:0], 【表格】章鱼哥召唤令
	tNew_DeepSea_Random[3314552][7]["RewardItem"][1]["Attr"] = "0 1 0 4320 1" -- 3天时效(激活)的八爪章鱼召唤令*1
	tNew_DeepSea_Random[3314552][7]["RewardEffect"] = {}
	tNew_DeepSea_Random[3314552][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNew_DeepSea_Random[3314552][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 深海巨魔召唤令-- 【自身概率】 - 10%
	tNew_DeepSea_Random[3314552][8] = {}
	tNew_DeepSea_Random[3314552][8]["RandomItemChanceType"] = 3
	tNew_DeepSea_Random[3314552][8]["ItemSelfChanceSum"] = 10000
	tNew_DeepSea_Random[3314552][8]["ItemChance"] = 1000
	tNew_DeepSea_Random[3314552][8]["RewardItem"] = {}
	tNew_DeepSea_Random[3314552][8]["RewardItem"][1] = {}
	tNew_DeepSea_Random[3314552][8]["RewardItem"][1]["Id"] = 3314548 -- 深海巨魔召唤令[3314548][属性:8][叠加:1][金币:0], 【表格】深海巨魔召唤令
	tNew_DeepSea_Random[3314552][8]["RewardItem"][1]["Attr"] = "0 1 0 4320 1" -- 3天时效(激活)的深海巨魔召唤令*1
	tNew_DeepSea_Random[3314552][8]["RewardEffect"] = {}
	tNew_DeepSea_Random[3314552][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNew_DeepSea_Random[3314552][8]["RewardEffect"]["Effect"] = "angelwing"


	tNew_DeepSea_Random[3314551] = {}
	-- ===个人银币兑换
	-- ===索引: tNew_DeepSea_Random[3314551]
	-- ===LogStep: 2[5]
	tNew_DeepSea_Random[3314551]["ItemChanceSum"] = 10000
	tNew_DeepSea_Random[3314551]["LogId"] = 12001741
	tNew_DeepSea_Random[3314551]["LogStep"] = " 2[5]"
	-- 玄灵秘录-- 【必给】
	tNew_DeepSea_Random[3314551][1] = {}
	tNew_DeepSea_Random[3314551][1]["RandomItemChanceType"] = 1
	tNew_DeepSea_Random[3314551][1]["RewardItem"] = {}
	tNew_DeepSea_Random[3314551][1]["RewardItem"][1] = {}
	tNew_DeepSea_Random[3314551][1]["RewardItem"][1]["Id"] = 723341 -- 玄灵秘录[723341][属性:0][叠加:10000][金币:0], 【表格】玄灵秘录
	tNew_DeepSea_Random[3314551][1]["RewardItem"][1]["Attr"] = "0 1 3" -- 玄灵秘录（赠）*1
	tNew_DeepSea_Random[3314551][1]["RewardEffect"] = {}
	tNew_DeepSea_Random[3314551][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNew_DeepSea_Random[3314551][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 造化天书 - 4%
	tNew_DeepSea_Random[3314551][2] = {}
	tNew_DeepSea_Random[3314551][2]["RandomItemChanceType"] = 2
	tNew_DeepSea_Random[3314551][2]["ItemChance"] = 400
	tNew_DeepSea_Random[3314551][2]["RewardItem"] = {}
	tNew_DeepSea_Random[3314551][2]["RewardItem"][1] = {}
	tNew_DeepSea_Random[3314551][2]["RewardItem"][1]["Id"] = 723342 -- 造化天书[723342][属性:0][叠加:10000][金币:0], 【表格】造化天书
	tNew_DeepSea_Random[3314551][2]["RewardItem"][1]["Attr"] = "0 1 3" -- 造化天书（赠）*1
	tNew_DeepSea_Random[3314551][2]["RewardEffect"] = {}
	tNew_DeepSea_Random[3314551][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNew_DeepSea_Random[3314551][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+2 - 58%
	tNew_DeepSea_Random[3314551][3] = {}
	tNew_DeepSea_Random[3314551][3]["RandomItemChanceType"] = 2
	tNew_DeepSea_Random[3314551][3]["ItemChance"] = 5800
	tNew_DeepSea_Random[3314551][3]["RewardItem"] = {}
	tNew_DeepSea_Random[3314551][3]["RewardItem"][1] = {}
	tNew_DeepSea_Random[3314551][3]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石[730002][属性:0][叠加:0][金币:0], 【表格】赤炼石+2
	tNew_DeepSea_Random[3314551][3]["RewardItem"][1]["Attr"] = "0 1 3 2880 1" -- 2天时效(激活)的+2赤炼石（赠）*1
	tNew_DeepSea_Random[3314551][3]["RewardEffect"] = {}
	tNew_DeepSea_Random[3314551][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNew_DeepSea_Random[3314551][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+3 - 26%
	tNew_DeepSea_Random[3314551][4] = {}
	tNew_DeepSea_Random[3314551][4]["RandomItemChanceType"] = 2
	tNew_DeepSea_Random[3314551][4]["ItemChance"] = 2600
	tNew_DeepSea_Random[3314551][4]["RewardItem"] = {}
	tNew_DeepSea_Random[3314551][4]["RewardItem"][1] = {}
	tNew_DeepSea_Random[3314551][4]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤炼石+3
	tNew_DeepSea_Random[3314551][4]["RewardItem"][1]["Attr"] = "0 1 3 2880 1" -- 2天时效(激活)的+3赤炼石（赠）*1
	tNew_DeepSea_Random[3314551][4]["RewardEffect"] = {}
	tNew_DeepSea_Random[3314551][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNew_DeepSea_Random[3314551][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+4 - 12%
	tNew_DeepSea_Random[3314551][5] = {}
	tNew_DeepSea_Random[3314551][5]["RandomItemChanceType"] = 2
	tNew_DeepSea_Random[3314551][5]["ItemChance"] = 1200
	tNew_DeepSea_Random[3314551][5]["RewardItem"] = {}
	tNew_DeepSea_Random[3314551][5]["RewardItem"][1] = {}
	tNew_DeepSea_Random[3314551][5]["RewardItem"][1]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】赤炼石+4
	tNew_DeepSea_Random[3314551][5]["RewardItem"][1]["Attr"] = "0 1 3 2880 1" -- 2天时效(激活)的+4赤炼石（赠）*1
	tNew_DeepSea_Random[3314551][5]["RewardEffect"] = {}
	tNew_DeepSea_Random[3314551][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNew_DeepSea_Random[3314551][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 章鱼哥召唤令-- 【自身概率】 - 10%
	tNew_DeepSea_Random[3314551][6] = {}
	tNew_DeepSea_Random[3314551][6]["RandomItemChanceType"] = 3
	tNew_DeepSea_Random[3314551][6]["ItemSelfChanceSum"] = 10000
	tNew_DeepSea_Random[3314551][6]["ItemChance"] = 1000
	tNew_DeepSea_Random[3314551][6]["RewardItem"] = {}
	tNew_DeepSea_Random[3314551][6]["RewardItem"][1] = {}
	tNew_DeepSea_Random[3314551][6]["RewardItem"][1]["Id"] = 3314549 -- 八爪章鱼召唤令[3314549][属性:8][叠加:1][金币:0], 【表格】章鱼哥召唤令
	tNew_DeepSea_Random[3314551][6]["RewardItem"][1]["Attr"] = "0 1 0 4320 1" -- 3天时效(激活)的八爪章鱼召唤令*1
	tNew_DeepSea_Random[3314551][6]["RewardEffect"] = {}
	tNew_DeepSea_Random[3314551][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNew_DeepSea_Random[3314551][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 深海巨魔召唤令-- 【自身概率】 - 5%
	tNew_DeepSea_Random[3314551][7] = {}
	tNew_DeepSea_Random[3314551][7]["RandomItemChanceType"] = 3
	tNew_DeepSea_Random[3314551][7]["ItemSelfChanceSum"] = 10000
	tNew_DeepSea_Random[3314551][7]["ItemChance"] = 500
	tNew_DeepSea_Random[3314551][7]["RewardItem"] = {}
	tNew_DeepSea_Random[3314551][7]["RewardItem"][1] = {}
	tNew_DeepSea_Random[3314551][7]["RewardItem"][1]["Id"] = 3314548 -- 深海巨魔召唤令[3314548][属性:8][叠加:1][金币:0], 【表格】深海巨魔召唤令
	tNew_DeepSea_Random[3314551][7]["RewardItem"][1]["Attr"] = "0 1 0 4320 1" -- 3天时效(激活)的深海巨魔召唤令*1
	tNew_DeepSea_Random[3314551][7]["RewardEffect"] = {}
	tNew_DeepSea_Random[3314551][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNew_DeepSea_Random[3314551][7]["RewardEffect"]["Effect"] = "angelwing"


	tNew_DeepSea_Random[3314550] = {}
	-- ===个人铜币兑换
	-- ===索引: tNew_DeepSea_Random[3314550]
	-- ===LogStep: 2[6]
	tNew_DeepSea_Random[3314550]["ItemChanceSum"] = 10000
	tNew_DeepSea_Random[3314550]["LogId"] = 12001741
	tNew_DeepSea_Random[3314550]["LogStep"] = " 2[6]"
	-- 流星 - 20%
	tNew_DeepSea_Random[3314550][1] = {}
	tNew_DeepSea_Random[3314550][1]["RandomItemChanceType"] = 2
	tNew_DeepSea_Random[3314550][1]["ItemChance"] = 2000
	tNew_DeepSea_Random[3314550][1]["RewardItem"] = {}
	tNew_DeepSea_Random[3314550][1]["RewardItem"][1] = {}
	tNew_DeepSea_Random[3314550][1]["RewardItem"][1]["Id"] = 1088001 -- 流星[1088001][属性:0][叠加:0][金币:10000], 【表格】流星
	tNew_DeepSea_Random[3314550][1]["RewardItem"][1]["Attr"] = "0 1" -- 流星*1
	tNew_DeepSea_Random[3314550][1]["RewardEffect"] = {}
	tNew_DeepSea_Random[3314550][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNew_DeepSea_Random[3314550][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 流行卷 - 35%
	tNew_DeepSea_Random[3314550][2] = {}
	tNew_DeepSea_Random[3314550][2]["RandomItemChanceType"] = 2
	tNew_DeepSea_Random[3314550][2]["ItemChance"] = 3500
	tNew_DeepSea_Random[3314550][2]["RewardItem"] = {}
	tNew_DeepSea_Random[3314550][2]["RewardItem"][1] = {}
	tNew_DeepSea_Random[3314550][2]["RewardItem"][1]["Id"] = 720027 -- 流星卷[720027][属性:0][叠加:0][金币:0], 【表格】流行卷
	tNew_DeepSea_Random[3314550][2]["RewardItem"][1]["Attr"] = "0 1 3" -- 流星卷（赠）*1
	tNew_DeepSea_Random[3314550][2]["RewardEffect"] = {}
	tNew_DeepSea_Random[3314550][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNew_DeepSea_Random[3314550][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 微光星陨石 - 35%
	tNew_DeepSea_Random[3314550][3] = {}
	tNew_DeepSea_Random[3314550][3]["RandomItemChanceType"] = 2
	tNew_DeepSea_Random[3314550][3]["ItemChance"] = 3500
	tNew_DeepSea_Random[3314550][3]["RewardItem"] = {}
	tNew_DeepSea_Random[3314550][3]["RewardItem"][1] = {}
	tNew_DeepSea_Random[3314550][3]["RewardItem"][1]["Id"] = 3009000 -- 微光星陨石[3009000][属性:9][叠加:0][金币:0], 【表格】微光星陨石
	tNew_DeepSea_Random[3314550][3]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的微光星陨石*1
	tNew_DeepSea_Random[3314550][3]["RewardEffect"] = {}
	tNew_DeepSea_Random[3314550][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNew_DeepSea_Random[3314550][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 - 10%
	tNew_DeepSea_Random[3314550][4] = {}
	tNew_DeepSea_Random[3314550][4]["RandomItemChanceType"] = 2
	tNew_DeepSea_Random[3314550][4]["ItemChance"] = 1000
	tNew_DeepSea_Random[3314550][4]["RewardItem"] = {}
	tNew_DeepSea_Random[3314550][4]["RewardItem"][1] = {}
	tNew_DeepSea_Random[3314550][4]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tNew_DeepSea_Random[3314550][4]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	tNew_DeepSea_Random[3314550][4]["RewardEffect"] = {}
	tNew_DeepSea_Random[3314550][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNew_DeepSea_Random[3314550][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 章鱼哥召唤令-- 【自身概率】 - 5%
	tNew_DeepSea_Random[3314550][5] = {}
	tNew_DeepSea_Random[3314550][5]["RandomItemChanceType"] = 3
	tNew_DeepSea_Random[3314550][5]["ItemSelfChanceSum"] = 10000
	tNew_DeepSea_Random[3314550][5]["ItemChance"] = 500
	tNew_DeepSea_Random[3314550][5]["RewardItem"] = {}
	tNew_DeepSea_Random[3314550][5]["RewardItem"][1] = {}
	tNew_DeepSea_Random[3314550][5]["RewardItem"][1]["Id"] = 3314549 -- 八爪章鱼召唤令[3314549][属性:8][叠加:1][金币:0], 【表格】章鱼哥召唤令
	tNew_DeepSea_Random[3314550][5]["RewardItem"][1]["Attr"] = "0 1 0 4320 1" -- 3天时效(激活)的八爪章鱼召唤令*1
	tNew_DeepSea_Random[3314550][5]["RewardEffect"] = {}
	tNew_DeepSea_Random[3314550][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNew_DeepSea_Random[3314550][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 深海巨魔召唤令-- 【自身概率】 - 5%
	tNew_DeepSea_Random[3314550][6] = {}
	tNew_DeepSea_Random[3314550][6]["RandomItemChanceType"] = 3
	tNew_DeepSea_Random[3314550][6]["ItemSelfChanceSum"] = 10000
	tNew_DeepSea_Random[3314550][6]["ItemChance"] = 500
	tNew_DeepSea_Random[3314550][6]["RewardItem"] = {}
	tNew_DeepSea_Random[3314550][6]["RewardItem"][1] = {}
	tNew_DeepSea_Random[3314550][6]["RewardItem"][1]["Id"] = 3314548 -- 深海巨魔召唤令[3314548][属性:8][叠加:1][金币:0], 【表格】深海巨魔召唤令
	tNew_DeepSea_Random[3314550][6]["RewardItem"][1]["Attr"] = "0 1 0 4320 1" -- 3天时效(激活)的深海巨魔召唤令*1
	tNew_DeepSea_Random[3314550][6]["RewardEffect"] = {}
	tNew_DeepSea_Random[3314550][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNew_DeepSea_Random[3314550][6]["RewardEffect"]["Effect"] = "angelwing"


	tNew_DeepSea_Random[1] = {}
	-- ===全服限量金币兑换
	-- ===索引: tNew_DeepSea_Random[1]
	-- ===LogStep: 2[7]
	tNew_DeepSea_Random[1]["ItemChanceSum"] = 10000
	tNew_DeepSea_Random[1]["LogId"] = 12001741
	tNew_DeepSea_Random[1]["LogStep"] = " 2[7]"
	-- 桃园灵玉-- 【必给】
	tNew_DeepSea_Random[1][1] = {}
	tNew_DeepSea_Random[1][1]["RandomItemChanceType"] = 1
	tNew_DeepSea_Random[1][1]["RewardItem"] = {}
	tNew_DeepSea_Random[1][1]["RewardItem"][1] = {}
	tNew_DeepSea_Random[1][1]["RewardItem"][1]["Id"] = 711504 -- 桃源灵玉[711504][属性:9][叠加:10000][金币:0], 【表格】桃园灵玉
	tNew_DeepSea_Random[1][1]["RewardItem"][1]["Attr"] = "0 1" -- 桃源灵玉*1
	tNew_DeepSea_Random[1][1]["RewardEffect"] = {}
	tNew_DeepSea_Random[1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNew_DeepSea_Random[1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 幸运桃源灵玉礼盒 - 3%
	tNew_DeepSea_Random[1][2] = {}
	tNew_DeepSea_Random[1][2]["RandomItemChanceType"] = 2
	tNew_DeepSea_Random[1][2]["ItemChance"] = 300
	tNew_DeepSea_Random[1][2]["RewardItem"] = {}
	tNew_DeepSea_Random[1][2]["RewardItem"][1] = {}
	tNew_DeepSea_Random[1][2]["RewardItem"][1]["Id"] = 3005703 -- 幸运桃源灵玉礼盒[3005703][属性:0][叠加:0][金币:0], 【表格】幸运桃源灵玉礼盒
	tNew_DeepSea_Random[1][2]["RewardItem"][1]["Attr"] = "0 1 3" -- 幸运桃源灵玉礼盒（赠）*1
	tNew_DeepSea_Random[1][2]["RewardEffect"] = {}
	tNew_DeepSea_Random[1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNew_DeepSea_Random[1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 幻月冰风 - 0.5%
	tNew_DeepSea_Random[1][3] = {}
	tNew_DeepSea_Random[1][3]["RandomItemChanceType"] = 2
	tNew_DeepSea_Random[1][3]["ItemChance"] = 50
	tNew_DeepSea_Random[1][3]["RewardItem"] = {}
	tNew_DeepSea_Random[1][3]["RewardItem"][1] = {}
	tNew_DeepSea_Random[1][3]["RewardItem"][1]["Id"] = 200444 -- 幻月冰凤[200444][属性:0][叠加:0][金币:0], 【表格】幻月冰风
	tNew_DeepSea_Random[1][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑幻月冰凤（赠）*1
	tNew_DeepSea_Random[1][3]["RewardEffect"] = {}
	tNew_DeepSea_Random[1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNew_DeepSea_Random[1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 威武将军外套 - 0.5%
	tNew_DeepSea_Random[1][4] = {}
	tNew_DeepSea_Random[1][4]["RandomItemChanceType"] = 2
	tNew_DeepSea_Random[1][4]["ItemChance"] = 50
	tNew_DeepSea_Random[1][4]["RewardItem"] = {}
	tNew_DeepSea_Random[1][4]["RewardItem"][1] = {}
	tNew_DeepSea_Random[1][4]["RewardItem"][1]["Id"] = 187465 -- 威武将军外套[187465][属性:0][叠加:0][金币:0], 【表格】威武将军外套
	tNew_DeepSea_Random[1][4]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑威武将军外套（赠）*1
	tNew_DeepSea_Random[1][4]["RewardEffect"] = {}
	tNew_DeepSea_Random[1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNew_DeepSea_Random[1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 昊天玄狐 - 0.5%
	tNew_DeepSea_Random[1][5] = {}
	tNew_DeepSea_Random[1][5]["RandomItemChanceType"] = 2
	tNew_DeepSea_Random[1][5]["ItemChance"] = 50
	tNew_DeepSea_Random[1][5]["RewardItem"] = {}
	tNew_DeepSea_Random[1][5]["RewardItem"][1] = {}
	tNew_DeepSea_Random[1][5]["RewardItem"][1]["Id"] = 200595 -- 昊天玄狐[200595][属性:0][叠加:0][金币:0], 【表格】昊天玄狐
	tNew_DeepSea_Random[1][5]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑昊天玄狐（赠）*1
	tNew_DeepSea_Random[1][5]["RewardEffect"] = {}
	tNew_DeepSea_Random[1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNew_DeepSea_Random[1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 章鱼哥召唤令-- 【自身概率】 - 10%
	tNew_DeepSea_Random[1][6] = {}
	tNew_DeepSea_Random[1][6]["RandomItemChanceType"] = 3
	tNew_DeepSea_Random[1][6]["ItemSelfChanceSum"] = 10000
	tNew_DeepSea_Random[1][6]["ItemChance"] = 1000
	tNew_DeepSea_Random[1][6]["RewardItem"] = {}
	tNew_DeepSea_Random[1][6]["RewardItem"][1] = {}
	tNew_DeepSea_Random[1][6]["RewardItem"][1]["Id"] = 3314549 -- 八爪章鱼召唤令[3314549][属性:8][叠加:1][金币:0], 【表格】章鱼哥召唤令
	tNew_DeepSea_Random[1][6]["RewardItem"][1]["Attr"] = "0 1" -- 八爪章鱼召唤令*1
	tNew_DeepSea_Random[1][6]["RewardEffect"] = {}
	tNew_DeepSea_Random[1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNew_DeepSea_Random[1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 深海巨魔召唤令-- 【自身概率】 - 10%
	tNew_DeepSea_Random[1][7] = {}
	tNew_DeepSea_Random[1][7]["RandomItemChanceType"] = 3
	tNew_DeepSea_Random[1][7]["ItemSelfChanceSum"] = 10000
	tNew_DeepSea_Random[1][7]["ItemChance"] = 1000
	tNew_DeepSea_Random[1][7]["RewardItem"] = {}
	tNew_DeepSea_Random[1][7]["RewardItem"][1] = {}
	tNew_DeepSea_Random[1][7]["RewardItem"][1]["Id"] = 3314548 -- 深海巨魔召唤令[3314548][属性:8][叠加:1][金币:0], 【表格】深海巨魔召唤令
	tNew_DeepSea_Random[1][7]["RewardItem"][1]["Attr"] = "0 1 0 4320 1" -- 3天时效(激活)的深海巨魔召唤令*1
	tNew_DeepSea_Random[1][7]["RewardEffect"] = {}
	tNew_DeepSea_Random[1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNew_DeepSea_Random[1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 无物品
	tNew_DeepSea_Random[1][8] = {}
	tNew_DeepSea_Random[1][8]["RandomItemChanceType"] = 2
	tNew_DeepSea_Random[1][8]["ItemChance"] = 9550
	
	
	tNew_DeepSea_Random[2] = {}
	-- ===深海宝箱
	-- ===索引: tNew_DeepSea_Random[2]
	-- ===LogStep: 2[8]
	tNew_DeepSea_Random[2]["ItemChanceSum"] = 10000
	tNew_DeepSea_Random[2]["LogId"] = 12001741
	tNew_DeepSea_Random[2]["LogStep"] = " 2[8]"
	-- 深海铜币 - 66%
	tNew_DeepSea_Random[2][1] = {}
	tNew_DeepSea_Random[2][1]["RandomItemChanceType"] = 2
	tNew_DeepSea_Random[2][1]["ItemChance"] = 6600
	tNew_DeepSea_Random[2][1]["RewardItem"] = {}
	tNew_DeepSea_Random[2][1]["RewardItem"][1] = {}
	tNew_DeepSea_Random[2][1]["RewardItem"][1]["Id"] = 3314550 -- 深海铜币[3314550][属性:0][叠加:1][金币:0], 【表格】深海铜币
	tNew_DeepSea_Random[2][1]["RewardItem"][1]["Attr"] = "0 1 0 1440 1" -- 1天时效(激活)的深海铜币*1
	tNew_DeepSea_Random[2][1]["RewardEffect"] = {}
	tNew_DeepSea_Random[2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNew_DeepSea_Random[2][1]["RewardEffect"]["Effect"] = "angelwing"
	tNew_DeepSea_Random[2][1]["Talk"] = tNew_DeepSea_Text["Reward"][1]
	-- 深海银币 - 33%
	tNew_DeepSea_Random[2][2] = {}
	tNew_DeepSea_Random[2][2]["RandomItemChanceType"] = 2
	tNew_DeepSea_Random[2][2]["ItemChance"] = 3300
	tNew_DeepSea_Random[2][2]["RewardItem"] = {}
	tNew_DeepSea_Random[2][2]["RewardItem"][1] = {}
	tNew_DeepSea_Random[2][2]["RewardItem"][1]["Id"] = 3314551 -- 深海银币[3314551][属性:0][叠加:1][金币:0], 【表格】深海银币
	tNew_DeepSea_Random[2][2]["RewardItem"][1]["Attr"] = "0 1 0 1440 1" -- 1天时效(激活)的深海银币*1
	tNew_DeepSea_Random[2][2]["RewardEffect"] = {}
	tNew_DeepSea_Random[2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNew_DeepSea_Random[2][2]["RewardEffect"]["Effect"] = "angelwing"
	tNew_DeepSea_Random[2][2]["Talk"] = tNew_DeepSea_Text["Reward"][2]
	-- 深海金币 - 1%
	tNew_DeepSea_Random[2][3] = {}
	tNew_DeepSea_Random[2][3]["RandomItemChanceType"] = 2
	tNew_DeepSea_Random[2][3]["ItemChance"] = 100
	tNew_DeepSea_Random[2][3]["RewardItem"] = {}
	tNew_DeepSea_Random[2][3]["RewardItem"][1] = {}
	tNew_DeepSea_Random[2][3]["RewardItem"][1]["Id"] = 3314552 -- 深海金币[3314552][属性:0][叠加:1][金币:0], 【表格】深海金币
	tNew_DeepSea_Random[2][3]["RewardItem"][1]["Attr"] = "0 1 0 1440 1" -- 1天时效(激活)的深海金币*1
	tNew_DeepSea_Random[2][3]["RewardEffect"] = {}
	tNew_DeepSea_Random[2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNew_DeepSea_Random[2][3]["RewardEffect"]["Effect"] = "angelwing"
	tNew_DeepSea_Random[2][3]["Talk"] = tNew_DeepSea_Text["Reward"][3]
	

local tNew_DeepSea_MonsterRandom = {}
	-- ===钱币携带者
	-- ===索引: tNew_DeepSea_MonsterRandom[3051]
	-- ===LogStep: 3[1]
	tNew_DeepSea_MonsterRandom[3051] = {}
	tNew_DeepSea_MonsterRandom[3051]["LogId"] = 12001741
	tNew_DeepSea_MonsterRandom[3051]["LogStep"] = " 3[1]"
	-- 深海铜币-- 【自身概率】 - 2%
	tNew_DeepSea_MonsterRandom[3051][1] = {}
	tNew_DeepSea_MonsterRandom[3051][1]["RandomItemChanceType"] = 3
	tNew_DeepSea_MonsterRandom[3051][1]["ItemSelfChanceSum"] = 10000
	tNew_DeepSea_MonsterRandom[3051][1]["ItemChance"] = 200
	tNew_DeepSea_MonsterRandom[3051][1]["ItemNum"] = 1
	tNew_DeepSea_MonsterRandom[3051][1]["RewardItem"] = {}
	tNew_DeepSea_MonsterRandom[3051][1]["RewardItem"][1] = {}
	tNew_DeepSea_MonsterRandom[3051][1]["RewardItem"][1]["Id"] = 3314550 -- 深海铜币[3314550][属性:0][叠加:1][金币:0], 【表格】深海铜币
	tNew_DeepSea_MonsterRandom[3051][1]["RewardItem"][1]["Attr"] = "0 1 0 1440 1" -- 1天时效(激活)的深海铜币*1
	tNew_DeepSea_MonsterRandom[3051][1]["RewardEffect"] = {}
	tNew_DeepSea_MonsterRandom[3051][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNew_DeepSea_MonsterRandom[3051][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 深海银币-- 【自身概率】 - 0.1%
	tNew_DeepSea_MonsterRandom[3051][2] = {}
	tNew_DeepSea_MonsterRandom[3051][2]["RandomItemChanceType"] = 3
	tNew_DeepSea_MonsterRandom[3051][2]["ItemSelfChanceSum"] = 10000
	tNew_DeepSea_MonsterRandom[3051][2]["ItemChance"] = 10
	tNew_DeepSea_MonsterRandom[3051][2]["ItemNum"] = 1
	tNew_DeepSea_MonsterRandom[3051][2]["RewardItem"] = {}
	tNew_DeepSea_MonsterRandom[3051][2]["RewardItem"][1] = {}
	tNew_DeepSea_MonsterRandom[3051][2]["RewardItem"][1]["Id"] = 3314551 -- 深海银币[3314551][属性:0][叠加:1][金币:0], 【表格】深海银币
	tNew_DeepSea_MonsterRandom[3051][2]["RewardItem"][1]["Attr"] = "0 1 0 1440 1" -- 1天时效(激活)的深海银币*1
	tNew_DeepSea_MonsterRandom[3051][2]["RewardEffect"] = {}
	tNew_DeepSea_MonsterRandom[3051][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNew_DeepSea_MonsterRandom[3051][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 深海金币-- 【自身概率】 - 0.04%
	tNew_DeepSea_MonsterRandom[3051][3] = {}
	tNew_DeepSea_MonsterRandom[3051][3]["RandomItemChanceType"] = 3
	tNew_DeepSea_MonsterRandom[3051][3]["ItemSelfChanceSum"] = 10000
	tNew_DeepSea_MonsterRandom[3051][3]["ItemChance"] = 4
	tNew_DeepSea_MonsterRandom[3051][3]["ItemNum"] = 1
	tNew_DeepSea_MonsterRandom[3051][3]["RewardItem"] = {}
	tNew_DeepSea_MonsterRandom[3051][3]["RewardItem"][1] = {}
	tNew_DeepSea_MonsterRandom[3051][3]["RewardItem"][1]["Id"] = 3314552 -- 深海金币[3314552][属性:0][叠加:1][金币:0], 【表格】深海金币
	tNew_DeepSea_MonsterRandom[3051][3]["RewardItem"][1]["Attr"] = "0 1 0 1440 1" -- 1天时效(激活)的深海金币*1
	tNew_DeepSea_MonsterRandom[3051][3]["RewardEffect"] = {}
	tNew_DeepSea_MonsterRandom[3051][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNew_DeepSea_MonsterRandom[3051][3]["RewardEffect"]["Effect"] = "angelwing"


	tNew_DeepSea_MonsterRandom[3052] = {}
	-- ===银币章鱼
	-- ===索引: tNew_DeepSea_MonsterRandom[3052]
	-- ===LogStep: 3[2]
	tNew_DeepSea_MonsterRandom[3052]["ItemChanceSum"] = 10000
	tNew_DeepSea_MonsterRandom[3052]["LogId"] = 12001741
	tNew_DeepSea_MonsterRandom[3052]["LogStep"] = " 3[2]"
	-- 深海铜币 - 40%
	tNew_DeepSea_MonsterRandom[3052][1] = {}
	tNew_DeepSea_MonsterRandom[3052][1]["RandomItemChanceType"] = 2
	tNew_DeepSea_MonsterRandom[3052][1]["ItemChance"] = 4000
	tNew_DeepSea_MonsterRandom[3052][1]["ItemNum"] = 1
	tNew_DeepSea_MonsterRandom[3052][1]["RewardItem"] = {}
	tNew_DeepSea_MonsterRandom[3052][1]["RewardItem"][1] = {}
	tNew_DeepSea_MonsterRandom[3052][1]["RewardItem"][1]["Id"] = 3314550 -- 深海铜币[3314550][属性:0][叠加:1][金币:0], 【表格】深海铜币
	tNew_DeepSea_MonsterRandom[3052][1]["RewardItem"][1]["Attr"] = "0 1 0 1440 1" -- 1天时效(激活)的深海铜币*1
	tNew_DeepSea_MonsterRandom[3052][1]["RewardEffect"] = {}
	tNew_DeepSea_MonsterRandom[3052][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNew_DeepSea_MonsterRandom[3052][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 深海银币 - 30%
	tNew_DeepSea_MonsterRandom[3052][2] = {}
	tNew_DeepSea_MonsterRandom[3052][2]["RandomItemChanceType"] = 2
	tNew_DeepSea_MonsterRandom[3052][2]["ItemChance"] = 3000
	tNew_DeepSea_MonsterRandom[3052][2]["ItemNum"] = 1
	tNew_DeepSea_MonsterRandom[3052][2]["RewardItem"] = {}
	tNew_DeepSea_MonsterRandom[3052][2]["RewardItem"][1] = {}
	tNew_DeepSea_MonsterRandom[3052][2]["RewardItem"][1]["Id"] = 3314551 -- 深海银币[3314551][属性:0][叠加:1][金币:0], 【表格】深海银币
	tNew_DeepSea_MonsterRandom[3052][2]["RewardItem"][1]["Attr"] = "0 1 0 1440 1" -- 1天时效(激活)的深海银币*1
	tNew_DeepSea_MonsterRandom[3052][2]["RewardEffect"] = {}
	tNew_DeepSea_MonsterRandom[3052][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNew_DeepSea_MonsterRandom[3052][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 深海银币 - 29%
	tNew_DeepSea_MonsterRandom[3052][3] = {}
	tNew_DeepSea_MonsterRandom[3052][3]["RandomItemChanceType"] = 2
	tNew_DeepSea_MonsterRandom[3052][3]["ItemChance"] = 2900
	tNew_DeepSea_MonsterRandom[3052][3]["ItemNum"] = 2
	tNew_DeepSea_MonsterRandom[3052][3]["RewardItem"] = {}
	tNew_DeepSea_MonsterRandom[3052][3]["RewardItem"][1] = {}
	tNew_DeepSea_MonsterRandom[3052][3]["RewardItem"][1]["Id"] = 3314551 -- 深海银币[3314551][属性:0][叠加:1][金币:0], 【表格】深海银币
	tNew_DeepSea_MonsterRandom[3052][3]["RewardItem"][1]["Attr"] = "0 2 0 1440 1" -- 1天时效(激活)的深海银币*2
	tNew_DeepSea_MonsterRandom[3052][3]["RewardEffect"] = {}
	tNew_DeepSea_MonsterRandom[3052][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNew_DeepSea_MonsterRandom[3052][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 深海金币 - 1%
	tNew_DeepSea_MonsterRandom[3052][4] = {}
	tNew_DeepSea_MonsterRandom[3052][4]["RandomItemChanceType"] = 2
	tNew_DeepSea_MonsterRandom[3052][4]["ItemChance"] = 100
	tNew_DeepSea_MonsterRandom[3052][4]["ItemNum"] = 1
	tNew_DeepSea_MonsterRandom[3052][4]["RewardItem"] = {}
	tNew_DeepSea_MonsterRandom[3052][4]["RewardItem"][1] = {}
	tNew_DeepSea_MonsterRandom[3052][4]["RewardItem"][1]["Id"] = 3314552 -- 深海金币[3314552][属性:0][叠加:1][金币:0], 【表格】深海金币
	tNew_DeepSea_MonsterRandom[3052][4]["RewardItem"][1]["Attr"] = "0 1 0 1440 1" -- 1天时效(激活)的深海金币*1
	tNew_DeepSea_MonsterRandom[3052][4]["RewardEffect"] = {}
	tNew_DeepSea_MonsterRandom[3052][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNew_DeepSea_MonsterRandom[3052][4]["RewardEffect"]["Effect"] = "angelwing"


	tNew_DeepSea_MonsterRandom[3053] = {}
	-- ===八爪章鱼
	-- ===索引: tNew_DeepSea_MonsterRandom[3053]
	-- ===LogStep: 3[3]
	tNew_DeepSea_MonsterRandom[3053]["LogId"] = 12001741
	tNew_DeepSea_MonsterRandom[3053]["LogStep"] = " 3[3]"
	-- 深海金币-- 【必给】
	tNew_DeepSea_MonsterRandom[3053][1] = {}
	tNew_DeepSea_MonsterRandom[3053][1]["RandomItemChanceType"] = 1
	tNew_DeepSea_MonsterRandom[3053][1]["RewardItem"] = {}
	tNew_DeepSea_MonsterRandom[3053][1]["RewardItem"][1] = {}
	tNew_DeepSea_MonsterRandom[3053][1]["RewardItem"][1]["Id"] = 3314552 -- 深海金币[3314552][属性:0][叠加:1][金币:0], 【表格】深海金币
	tNew_DeepSea_MonsterRandom[3053][1]["RewardItem"][1]["Attr"] = "0 2 0 1440 1" -- 1天时效(激活)的深海金币*2
	tNew_DeepSea_MonsterRandom[3053][1]["RewardEffect"] = {}
	tNew_DeepSea_MonsterRandom[3053][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNew_DeepSea_MonsterRandom[3053][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 深海银币-- 【必给】
	tNew_DeepSea_MonsterRandom[3053][2] = {}
	tNew_DeepSea_MonsterRandom[3053][2]["RandomItemChanceType"] = 1
	tNew_DeepSea_MonsterRandom[3053][2]["RewardItem"] = {}
	tNew_DeepSea_MonsterRandom[3053][2]["RewardItem"][1] = {}
	tNew_DeepSea_MonsterRandom[3053][2]["RewardItem"][1]["Id"] = 3314551 -- 深海银币[3314551][属性:0][叠加:1][金币:0], 【表格】深海银币
	tNew_DeepSea_MonsterRandom[3053][2]["RewardItem"][1]["Attr"] = "0 5 0 1440 1" -- 1天时效(激活)的深海银币*5
	tNew_DeepSea_MonsterRandom[3053][2]["RewardEffect"] = {}
	tNew_DeepSea_MonsterRandom[3053][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNew_DeepSea_MonsterRandom[3053][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹*10-- 【自身概率】 - 30%
	tNew_DeepSea_MonsterRandom[3053][3] = {}
	tNew_DeepSea_MonsterRandom[3053][3]["LogId"] = 12001741
	tNew_DeepSea_MonsterRandom[3053][3]["LogStep"] = " 3[3]"
	tNew_DeepSea_MonsterRandom[3053][3][1] = {}
	tNew_DeepSea_MonsterRandom[3053][3][1]["RandomItemChanceType"] = 3
	tNew_DeepSea_MonsterRandom[3053][3][1]["ItemSelfChanceSum"] = 10000
	tNew_DeepSea_MonsterRandom[3053][3][1]["ItemChance"] = 3000
	tNew_DeepSea_MonsterRandom[3053][3][1]["RewardItem"] = {}
	tNew_DeepSea_MonsterRandom[3053][3][1]["RewardItem"][1] = {}
	tNew_DeepSea_MonsterRandom[3053][3][1]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹*10
	tNew_DeepSea_MonsterRandom[3053][3][1]["RewardItem"][1]["Attr"] = "0 10 3" -- 万能神纹精粹（赠）*10
	tNew_DeepSea_MonsterRandom[3053][3][1]["RewardEffect"] = {}
	tNew_DeepSea_MonsterRandom[3053][3][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNew_DeepSea_MonsterRandom[3053][3][1]["RewardEffect"]["Effect"] = "angelwing"


	tNew_DeepSea_MonsterRandom[3054] = {}
	-- ===八爪章鱼
	-- ===索引: tNew_DeepSea_MonsterRandom[3054]
	-- ===LogStep: 3[4]
	tNew_DeepSea_MonsterRandom[3054]["LogId"] = 12001741
	tNew_DeepSea_MonsterRandom[3054]["LogStep"] = " 3[4]"
	-- 深海金币-- 【必给】
	tNew_DeepSea_MonsterRandom[3054][1] = {}
	tNew_DeepSea_MonsterRandom[3054][1]["RandomItemChanceType"] = 1
	tNew_DeepSea_MonsterRandom[3054][1]["RewardItem"] = {}
	tNew_DeepSea_MonsterRandom[3054][1]["RewardItem"][1] = {}
	tNew_DeepSea_MonsterRandom[3054][1]["RewardItem"][1]["Id"] = 3314552 -- 深海金币[3314552][属性:0][叠加:1][金币:0], 【表格】深海金币
	tNew_DeepSea_MonsterRandom[3054][1]["RewardItem"][1]["Attr"] = "0 6 0 1440 1" -- 1天时效(激活)的深海金币*6
	tNew_DeepSea_MonsterRandom[3054][1]["RewardEffect"] = {}
	tNew_DeepSea_MonsterRandom[3054][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNew_DeepSea_MonsterRandom[3054][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 深海银币-- 【必给】
	tNew_DeepSea_MonsterRandom[3054][2] = {}
	tNew_DeepSea_MonsterRandom[3054][2]["RandomItemChanceType"] = 1
	tNew_DeepSea_MonsterRandom[3054][2]["RewardItem"] = {}
	tNew_DeepSea_MonsterRandom[3054][2]["RewardItem"][1] = {}
	tNew_DeepSea_MonsterRandom[3054][2]["RewardItem"][1]["Id"] = 3314551 -- 深海银币[3314551][属性:0][叠加:1][金币:0], 【表格】深海银币
	tNew_DeepSea_MonsterRandom[3054][2]["RewardItem"][1]["Attr"] = "0 8 0 1440 1" -- 1天时效(激活)的深海银币*8
	tNew_DeepSea_MonsterRandom[3054][2]["RewardEffect"] = {}
	tNew_DeepSea_MonsterRandom[3054][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNew_DeepSea_MonsterRandom[3054][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹*30-- 【自身概率】 - 30%
	tNew_DeepSea_MonsterRandom[3054][3] = {}
	tNew_DeepSea_MonsterRandom[3054][3]["LogId"] = 12001741
	tNew_DeepSea_MonsterRandom[3054][3]["LogStep"] = " 3[4]"
	tNew_DeepSea_MonsterRandom[3054][3][1] = {}
	tNew_DeepSea_MonsterRandom[3054][3][1]["RandomItemChanceType"] = 3
	tNew_DeepSea_MonsterRandom[3054][3][1]["ItemSelfChanceSum"] = 10000
	tNew_DeepSea_MonsterRandom[3054][3][1]["ItemChance"] = 3000
	tNew_DeepSea_MonsterRandom[3054][3][1]["RewardItem"] = {}
	tNew_DeepSea_MonsterRandom[3054][3][1]["RewardItem"][1] = {}
	tNew_DeepSea_MonsterRandom[3054][3][1]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹*30
	tNew_DeepSea_MonsterRandom[3054][3][1]["RewardItem"][1]["Attr"] = "0 30 3" -- 万能神纹精粹（赠）*30
	tNew_DeepSea_MonsterRandom[3054][3][1]["RewardEffect"] = {}
	tNew_DeepSea_MonsterRandom[3054][3][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNew_DeepSea_MonsterRandom[3054][3][1]["RewardEffect"]["Effect"] = "angelwing"
	
--------------------------------------逻辑配置部分--------------------------------------
-- 获取掩码值
function New_DeepSea_GetStcValue(nIndex,nUserId)
	local nEvent = tNew_DeepSea_Stc[nIndex]["EventType"]
	local nType = tNew_DeepSea_Stc[nIndex]["DataType"]
	
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	return nData
end

--设置掩码值
function New_DeepSea_SetStcValue(nIndex,nData,nUserId)
	local nEvent = tNew_DeepSea_Stc[nIndex]["EventType"]
	local nType = tNew_DeepSea_Stc[nIndex]["DataType"]
	
	Task_SetStatistic(nEvent,nType,nData,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
end

-- 增加掩码值
function New_DeepSea_AddStcValue(nIndex,nData,nUserId)
	local nEvent = tNew_DeepSea_Stc[nIndex]["EventType"]
	local nType = tNew_DeepSea_Stc[nIndex]["DataType"]
	
	Task_AddStatistic(nEvent,nType,nData,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
end

-- 隔天重置
function New_DeepSea_ClearStcInterval(nIndex,nUserId)
	local nEvent = tNew_DeepSea_Stc[nIndex]["EventType"]
	local nType = tNew_DeepSea_Stc[nIndex]["DataType"]
	
	local nBasic = tNew_DeepSea_Stc[nIndex]["Basic"]
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,nBasic,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
end

-- 传送进地图
function New_DeepSea_TransPos(nSendIndex,nUserId)
	local nMapId = tNew_DeepSea_MapPosition[nSendIndex]["MapId"]
	local nPosX = tNew_DeepSea_MapPosition[nSendIndex]["PosX"]
	local nPosY = tNew_DeepSea_MapPosition[nSendIndex]["PosY"]
	local nRange = tNew_DeepSea_MapPosition[nSendIndex]["Range"]
	
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,nRange,nRange,nCheck,nUserId)
end
--------------------------------------npc使用
-- 前往深海宝库
function New_DeepSea_EnterSea(nNpcId)
	-- 活动后
	if not Sys_ChkFullTime(tNew_DeepSea_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 等级不足
	local nLevel = tNew_DeepSea_Count["Level"]
	local nMeto = tNew_DeepSea_Count["Meto"]
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMeto,nUserId) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	
	-- 在双龙城 或者 市场才可以进入
	local nUserMapId = Get_UserMapId(nUserId)
	if nUserMapId ~= tNew_DeepSea_Count["MapId"] and nUserMapId ~= tNew_DeepSea_Count["Market"] then
		return
	end
	
	-- 隔天清除
	New_DeepSea_ClearStcInterval(2)
	local nTotalData = New_DeepSea_GetStcValue(2)
	if not Sys_ParseNumbersContain(2,nTotalData) then
		New_DeepSea_AddStcValue(2,2)
		Sys_SaveActionFestivalLog(tNew_DeepSea_Log["EnterTreature"])
	end
	
	-- 进入地图
	New_DeepSea_TransPos(2,nUserId)
end

-- 25510,'阮小二'
-- 传送
function New_DeepSea_EnterMap(nNpcId,nIndex)
	-- 活动后
	if not Sys_ChkFullTime(tNew_DeepSea_Count["ActivityTime"]) then
		return
	end
	
	-- 进入地图
	if nIndex == 3 and SpecialServer_ChkNoGiftServer() then
		nIndex = 4
	end
	
	-- 隔天清除
	New_DeepSea_ClearStcInterval(2)
	local nTotalData = New_DeepSea_GetStcValue(2)
	if nIndex == 2 then
		if not Sys_ParseNumbersContain(2,nTotalData) then
			New_DeepSea_AddStcValue(2,2)
			Sys_SaveActionFestivalLog(tNew_DeepSea_Log["EnterTreature"])
		end
	end
	if nIndex == 1 then
		if not Sys_ParseNumbersContain(1,nTotalData) then
			New_DeepSea_AddStcValue(2,1)
			Sys_SaveActionFestivalLog(tNew_DeepSea_Log["EnterSea"])
		end
	end
	
	New_DeepSea_TransPos(nIndex,nUserId)
	User_TalkChannel2005(tNew_DeepSea_Text["MapTip"][nIndex])
end

-- 25511,'阮小五'
function New_DeepSea_InitCoin(nNpcId)
	-- 隔天清除
	New_DeepSea_ClearStcInterval(1)
	local nData = New_DeepSea_GetStcValue(1)
	local nBasic = tNew_DeepSea_Stc[1]["Basic"]
	if nData < nBasic then
		New_DeepSea_SetStcValue(1,nBasic)
	end
	
	-- 初始化选项和函数
	for  i,v in pairs(tNew_DeepSea_SubStc) do
		local nCoinData = tonumber(string.sub(nData,v["Start"],v["End"]))
		local sOptionIndex = "Option" .. v["FuncIndex"]
		local sBasicText = tNew_DeepSea_Text[nNpcId][sOptionIndex]
		tNpcGossip[nNpcId][sOptionIndex] = string.format(sBasicText,nCoinData)
	end
end

-- 金币/银币/铜币兑换
function New_DeepSea_ExchangeCoin(nNpcId,nItemId)
	-- 活动后
	if not Sys_ChkFullTime(tNew_DeepSea_Count["ActivityTime"]) then
		User_TalkChannel2005(tNew_DeepSea_Text["OutTime"])
		return
	end
	
	-- 等级不足
	local nLevel = tNew_DeepSea_Count["Level"]
	local nMeto = tNew_DeepSea_Count["Meto"]
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMeto,nUserId) then
		User_TalkChannel2005(tNew_DeepSea_Text["NotLevel"])
		return
	end
	
	-- 无兑换物品
	if not Item_ChkItem(nItemId) then
		Sys_MsgBox(tNew_DeepSea_Text["ExchangeNoItem"])
		return	
	end
	
	-- 隔天清除
	New_DeepSea_ClearStcInterval(1)
	local nData = New_DeepSea_GetStcValue(1)
	
	-- 初始对白
	local tStcData = tNew_DeepSea_SubStc[nItemId]
	local nCoinData = tonumber(string.sub(nData,tStcData["Start"],tStcData["End"]))
	-- 无兑换次数
	if nCoinData + 1 > tStcData["Limit"] then
		local sItemName = Get_ItemtypeName(nItemId)
		local sExchangeUpLimit = tNew_DeepSea_Text["ExchangeUpLimit"]
		Sys_MsgBox(string.format(sExchangeUpLimit,sItemName))
		return
	end
	
	local sFunc = "New_DeepSea_SureExchangeCoin</N>%d</N>%d</N>%d"
	tNpcGossip[nNpcId]["OptionFunc211"] = string.format(sFunc,nNpcId,nItemId,1)
	tNpcGossip[nNpcId]["OptionFunc212"] = string.format(sFunc,nNpcId,nItemId,5)
	LinkNpcGossipFunc_New(nNpcId,"2-1")
end

-- 确认兑换
function New_DeepSea_SureExchangeCoin(nNpcId,nItemId,nItemNum)
	-- 活动后
	if not Sys_ChkFullTime(tNew_DeepSea_Count["ActivityTime"]) then
		User_TalkChannel2005(tNew_DeepSea_Text["OutTime"])
		return
	end
	
	-- 等级不足
	local nLevel = tNew_DeepSea_Count["Level"]
	local nMeto = tNew_DeepSea_Count["Meto"]
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMeto,nUserId) then
		User_TalkChannel2005(tNew_DeepSea_Text["NotLevel"])
		return
	end
	
	New_DeepSea_ClearStcInterval(1)
	local nData = New_DeepSea_GetStcValue(1)
	-- 判断上限
	local tStcData = tNew_DeepSea_SubStc[nItemId]
	local nCoinData = tonumber(string.sub(nData,tStcData["Start"],tStcData["End"]))
	if nCoinData + nItemNum > tStcData["Limit"] then
		local sItemName = Get_ItemtypeName(nItemId)
		local sExchangeUpLimit = tNew_DeepSea_Text["ExchangeUpLimit"]
		if nItemNum > 1 then
			sExchangeUpLimit = tNew_DeepSea_Text["ExchangeLimit"]
		end
		Sys_MsgBox(string.format(sExchangeUpLimit,sItemName))
		return
	end
	
	
	-- 判断物品
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum) then
		Sys_MsgBox(tNew_DeepSea_Text["ExchangeNoItem"])
		return
	end
	
	--  判断背包空间
	local nSpaceNum = RewardTemplate_GetRandomSpace(tNew_DeepSea_Random,nItemId,nNowUserId)
	local nLastSpaceNum = nSpaceNum*nItemNum - nItemNum
	if nLastSpaceNum > 0 and not User_CheckLeftSpace(nLastSpaceNum,nUserId) then
		Sys_MsgBox(tNew_DeepSea_Text["ExchangeNoSpace"])
		return
	end
	
	-- 删除物品获得奖励
	if Item_DelMulItem(nItemId,nItemId,nItemNum) then
		-- 打掩码
		local nAddData = tStcData["AddData"]*nItemNum
		New_DeepSea_AddStcValue(1,nAddData)
		-- 给奖励
		for i = 1, nItemNum do
			RewardTemplate_NewRandom(tNew_DeepSea_Random,nItemId,nNowUserId)
		end
		local sSzObj = tNew_DeepSea_Effect[1]["SzObj"]
		local sEffect = tNew_DeepSea_Effect[1]["Effect"]
		User_EffectAdd(sSzObj,sEffect,nUserId)
		
		-- 打log
		local sLog = tNew_DeepSea_Log[nItemId]
		Sys_SaveActionFestivalLog(string.format(sLog,nItemId,nItemNum))
	end
	
	LinkNpcGossipFunc_New(nNpcId,"1-1")
end

-- 25512,'阮小七' -- 限时兑换
function New_DeepSea_ExchangeGlobalCoin(nNpcId)
	-- 非兑换时间
	if not Sys_ChkFullTime(tNew_DeepSea_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	if not Sys_ChkDayTime(tNew_DeepSea_Count["LimitExchange"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 等级不足
	local nLevel = tNew_DeepSea_Count["Level"]
	local nMeto = tNew_DeepSea_Count["Meto"]
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMeto,nUserId) then
		User_TalkChannel2005(tNew_DeepSea_Text["NotLevel"])
		return
	end
	
	-- 无兑换物品
	local nItemId = tNew_DeepSea_Count["GoldId"]
	if not Item_ChkItem(nItemId) then
		Sys_MsgBox(tNew_DeepSea_Text["ExchangeNoItem"])
		return	
	end
	
	New_DeepSea_ClearStcInterval(3)
	local nNew_DeepSea_Data = New_DeepSea_GetStcValue(3)
	local sItemName = Get_ItemtypeName(nItemId)
	local sExchangeUpLimit = tNew_DeepSea_Text["ExchangeUpLimit"]
	if nNew_DeepSea_Data >= 1 then
		Sys_MsgBox(string.format(sExchangeUpLimit,sItemName))
		return
	end
	
	-- 无兑换次数
	local nNowData = nNew_DeepSea_GlobalGoldData
	if nNew_DeepSea_GlobalGoldData >= tNew_DeepSea_Count["GlobalLimit"] then
		Sys_MsgBox(string.format(sExchangeUpLimit,sItemName))
		return
	end
	
	local nItemNum = 1
	--  判断背包空间
	local nSpaceNum = RewardTemplate_GetRandomSpace(tNew_DeepSea_Random,1,nNowUserId)
	local nLastSpaceNum = nSpaceNum*nItemNum - nItemNum
	if nLastSpaceNum > 0 and not User_CheckLeftSpace(nLastSpaceNum,nUserId) then
		Sys_MsgBox(tNew_DeepSea_Text["ExchangeNoSpace"])
		return
	end
	
	-- 删除物品获得奖励
	if Item_DelMulItem(nItemId,nItemId,nItemNum) then
		-- 打掩码
		local nGlobalId = tNew_DeepSea_Count["GlobalId"]
		nNew_DeepSea_GlobalGoldData = nNowData + nItemNum
		Sys_SetSynaGlobalData(nGlobalId,0,nNew_DeepSea_GlobalGoldData)
		New_DeepSea_SetStcValue(3,1)
		-- 给奖励
		for i = 1, nItemNum do
			RewardTemplate_NewRandom(tNew_DeepSea_Random,1,nNowUserId)
		end
		local sSzObj = tNew_DeepSea_Effect[1]["SzObj"]
		local sEffect = tNew_DeepSea_Effect[1]["Effect"]
		User_EffectAdd(sSzObj,sEffect,nUserId)
		
		-- 打log
		local sLog = tNew_DeepSea_Log[nItemId]
		Sys_SaveActionFestivalLog(string.format(sLog,nItemId,nItemNum))
		
		LinkNpcGossipFunc_New(nNpcId,"1-1")
	end
	-- LinkNpcGossipFunc_New(nNpcId,"2-1")
end

-- 确认兑换
function New_DeepSea_SureExchangeGlobalCoin(nNpcId,nItemNum)
	-- 非兑换时间
	if not Sys_ChkFullTime(tNew_DeepSea_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	if not Sys_ChkDayTime(tNew_DeepSea_Count["LimitExchange"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 等级不足
	local nLevel = tNew_DeepSea_Count["Level"]
	local nMeto = tNew_DeepSea_Count["Meto"]
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMeto,nUserId) then
		User_TalkChannel2005(tNew_DeepSea_Text["NotLevel"])
		return
	end
	
	-- 无兑换物品
	local nItemId = tNew_DeepSea_Count["GoldId"]
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum) then
		Sys_MsgBox(tNew_DeepSea_Text["ExchangeNoItem"])
		return	
	end
	
	-- 无兑换次数
	local nNowData = nNew_DeepSea_GlobalGoldData
	if nNowData+nItemNum > tNew_DeepSea_Count["GlobalLimit"] then
		local sItemName = Get_ItemtypeName(nItemId)
		local sExchangeUpLimit = tNew_DeepSea_Text["ExchangeUpLimit"]
		Sys_MsgBox(string.format(sExchangeUpLimit,sItemName))
		return
	end
	
	
	--  判断背包空间
	local nSpaceNum = RewardTemplate_GetRandomSpace(tNew_DeepSea_Random,1,nNowUserId)
	local nLastSpaceNum = nSpaceNum*nItemNum - nItemNum
	if nLastSpaceNum > 0 and not User_CheckLeftSpace(nLastSpaceNum,nUserId) then
		Sys_MsgBox(tNew_DeepSea_Text["ExchangeNoSpace"])
		return
	end
	
	-- 删除物品获得奖励
	if Item_DelMulItem(nItemId,nItemId,nItemNum) then
		-- 打掩码
		local nGlobalId = tNew_DeepSea_Count["GlobalId"]
		nNew_DeepSea_GlobalGoldData = nNowData + nItemNum
		Sys_SetSynaGlobalData(nGlobalId,0,nNew_DeepSea_GlobalGoldData)
		-- 给奖励
		for i = 1, nItemNum do
			RewardTemplate_NewRandom(tNew_DeepSea_Random,1,nNowUserId)
		end
		local sSzObj = tNew_DeepSea_Effect[1]["SzObj"]
		local sEffect = tNew_DeepSea_Effect[1]["Effect"]
		User_EffectAdd(sSzObj,sEffect,nUserId)
		
		-- 打log
		local sLog = tNew_DeepSea_Log[nItemId]
		Sys_SaveActionFestivalLog(string.format(sLog,nItemId,nItemNum))
	end
	
	LinkNpcGossipFunc_New(nNpcId,"1-1")
end

--------------------------------------物品使用
-- 召唤令
function New_DeepSea_CallBoss(nItemId)
	-- 过期删除
	if not Sys_ChkFullTime(tNew_DeepSea_Count["ActivityTime"]) then
		local nItemNum = Get_CountItemType(nItemId,0)
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tNew_DeepSea_Text["OverDue"])
			local sLog = tNew_DeepSea_Log["OverDue"]
			Sys_SaveActionFestivalLog(string.format(sLog,nItemId,nItemNum))
 		end
		return
	end
	
	-- 非召唤时间
	if not Sys_ChkDayTime(tNew_DeepSea_Count["ItemExchange"]) then
		Sys_MsgBox(tNew_DeepSea_Text["NotTheTime"])
		return
	end
	
	-- 不是深海
	local nUserMapId = Get_UserMapId(nUserId)
	if nUserMapId ~= tNew_DeepSea_MapPosition[1]["MapId"] then
		local sFunc = "NpcPosition_PathFind</N>" .. tNew_DeepSea_Count["MainNpc"]
		Sys_MsgBox(tNew_DeepSea_Text["NotTheMap"],sFunc)
		return
	end
	
	-- 删除物品 创建怪物
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local sLog = tNew_DeepSea_Log[nItemId]
		Sys_SaveActionFestivalLog(string.format(sLog,nItemId))
		
		local nPosX = Get_UserPositionX(nUserId) + math.random(1,4)
		local nPosY = Get_UserPositionY(nUserId) + math.random(1,4)
		local nMapId = tNew_DeepSea_MapPosition[1]["MapId"]
		local nGenId = tNew_DeepSea_Count["CallBoss"][nItemId]["Generator"]
		local nMonsterId = tNew_DeepSea_Count["CallBoss"][nItemId]["MonsterId"]
		Monster_CreateMonsterRange(0,0,nMapId,nPosX,nPosY,nGenId,nMonsterId,0,"",0,1,1,1,tNew_DeepSea_Count["Time"])
		
		-- 公告提示
		local sBroadcast = tNew_DeepSea_Text[nItemId]["BroadCast"]
		local sUserName = Get_UserName(nUserId)
		Sys_TalkBroadcast(string.format(sBroadcast,sUserName,nPosX,nPosY,nPosX,nPosY))
		User_TalkChannel2005(tNew_DeepSea_Text[nItemId]["Talk"])
	end
end

-- 链接寻路
function New_DeepSea_FindBoss(nItemId,nPosX,nPosY)
	if not Sys_ChkFullTime(tNew_DeepSea_Count["ActivityTime"]) then
		return
	end
	
	local nUserMapId = Get_UserMapId()
	if nUserMapId == tNew_DeepSea_MapPosition[3]["MapId"] or nUserMapId == tNew_DeepSea_MapPosition[4]["MapId"] then
		local nNpcId = tNew_DeepSea_Count["MainNpc"]
		NpcPosition_PathFind(nNpcId)
	else
		Sys_MsgBox(tNew_DeepSea_Text["GotoPos"])
	end
end

-- 深海金币/银币/铜币
function New_DeepSea_UseCoin(nItemId)
	local nUserMapId = Get_UserMapId(nUserId)
	-- 在深海内寻路
	if nUserMapId == tNew_DeepSea_MapPosition[1]["MapId"] then
		NpcPosition_PathFind(tNew_DeepSea_MapPosition[1]["NpcId"])
	else
		User_TalkChannel2005(tNew_DeepSea_Text["UseCoinNotMap"])
	end
end
--------------------------------------怪物掉落
function New_DeepSea_KillNormalMonster(nMonsterId)
	-- 活动时间
	if not Sys_ChkFullTime(tNew_DeepSea_Count["ActivityTime"]) then
		return
	end
	
	-- 等级不足
	local nLevel = tNew_DeepSea_Count["Level"]
	local nMeto = tNew_DeepSea_Count["Meto"]
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMeto) then
		return
	end
	
	-- 背包不足
	local nNew_DeepSea_RewardId = nMonsterId
	if nMonsterId == tNew_DeepSea_Count["LimitMonster"]["MonsterId"] then
		nNew_DeepSea_RewardId = 3053
	end
	-- if nMonsterId >= 3053 then
		-- local nSpaceNum = RewardTemplate_GetRandomSpace(tNew_DeepSea_MonsterRandom[nNew_DeepSea_RewardId],3,nNowUserId)
		-- if nSpaceNum > 0 and not User_CheckLeftSpace(nSpaceNum,nUserId) then
			-- User_TalkChannel2005(tNew_DeepSea_Text["KillNoSpace"])
			-- return
		-- end
	-- end
	
	local sNewLog = tNew_DeepSea_Log["GetGoldCoin"]
	if nMonsterId == 3053 or nMonsterId == 3054 or nMonsterId == tNew_DeepSea_Count["LimitMonster"]["MonsterId"] then
		-- 掉地板
		local tReward = CommonFunc_Copy(tNew_DeepSea_MonsterRandom)
		local nNew_DeepSea_GoldId = tNew_DeepSea_Count["GoldId"]
		local tNew_DeepSea_Random = tNew_DeepSea_Count["Random"][nNew_DeepSea_RewardId][1]
		local nNew_DeepSea_ItemNum = math.random(tNew_DeepSea_Random[1],tNew_DeepSea_Random[2])
		Monster_DropMultiItem(nNew_DeepSea_GoldId,nNew_DeepSea_ItemNum,1,nUserId)
		
		
		local nNew_DeepSea_SiliverId = tNew_DeepSea_Count["SiliverId"]
		local tNew_DeepSea_NewRandom = tNew_DeepSea_Count["Random"][nNew_DeepSea_RewardId][2]
		local nNew_DeepSea_NewItemNum = math.random(tNew_DeepSea_NewRandom[1],tNew_DeepSea_NewRandom[2])
		Monster_DropMultiItem(nNew_DeepSea_SiliverId,nNew_DeepSea_NewItemNum,1,nUserId)
		
		New_DeepSea_ClearStcInterval(nNew_DeepSea_RewardId)
		local nNew_DeepSea_StcData = New_DeepSea_GetStcValue(nNew_DeepSea_RewardId)
		if nNew_DeepSea_StcData < tNew_DeepSea_Stc[nNew_DeepSea_RewardId]["Limit"] then
			local tNew_DeepSea_Reward = RewardTemplate_NewRandom(tNew_DeepSea_MonsterRandom[nNew_DeepSea_RewardId],3)
			if tNew_DeepSea_Reward[1]["tSelfItemChanceAward"] ~= nil then
				if tNew_DeepSea_Reward[1]["tSelfItemChanceAward"][1] ~= nil then
					New_DeepSea_AddStcValue(nNew_DeepSea_RewardId,1)
					if nNew_DeepSea_StcData + 1 == tNew_DeepSea_Stc[nNew_DeepSea_RewardId]["Limit"] then
						Sys_MsgBox(tNew_DeepSea_Text["RewardLimit"])
					end
				end
				
			end
		end
		if nMonsterId == tNew_DeepSea_Count["LimitMonster"]["MonsterId"] then
			-- 生成怪物
			-- if Sys_ChkDayTime(tNew_DeepSea_Count["LimitExchange"]) then
				local tNew_DeepSea_MonsterData = tNew_DeepSea_Count["LimitMonster"]
				local nNew_DeepSea_MonsterId = tNew_DeepSea_MonsterData["MonsterId"]
				local nGenId = tNew_DeepSea_MonsterData["Generator"]
				local nMapId = tNew_DeepSea_MapPosition[1]["MapId"]
				local sName = tNew_DeepSea_Text["MonsterName"]
				local nRandom = math.random(1,#tNew_DeepSea_MonsterData["Pos"])
				local tNew_DeepSea_Pos = tNew_DeepSea_MonsterData["Pos"][nRandom]
				Monster_CreateMonsterRange(0,0,nMapId,tNew_DeepSea_Pos[1],tNew_DeepSea_Pos[2],nGenId,nNew_DeepSea_MonsterId,0,sName,0,1,1,1,tNew_DeepSea_MonsterData["Time"])
			-- end
		end
	else
		-- 给奖励
		local nFlag,tReward = Probabil_RandomAward(tNew_DeepSea_MonsterRandom,nNew_DeepSea_RewardId)
		
		if tReward[1]["tSelfItemChanceAward"][1] ~= nil then
			for i,v in pairs(tReward[1]["tSelfItemChanceAward"]) do
				if v["RewardItem"][1]["Id"] ~= nil then
					Monster_DropMultiItem(v["RewardItem"][1]["Id"],v["ItemNum"],1,nUserId)
				end
			end
		end
		if tReward[1]["tAward"][1] ~= nil then
			if tReward[1]["tAward"][1]["RewardItem"][1]["Id"] ~= nil then
				Monster_DropMultiItem(tReward[1]["tAward"][1]["RewardItem"][1]["Id"],tReward[1]["tAward"][1]["ItemNum"],1,nUserId)
			end
		end
	end
end
--------------------------------------时间自检 移动npc
function New_DeepSea_TimeMoveNPC()
	if not Sys_ChkFullTime(tNew_DeepSea_Count["ActivityTime"]) then
		return
	end
	
	-- 已存在不移动
	local nIndex = math.random(1,#tNew_DeepSea_MoveNPC["MoveDate"])
	local tMoveDate = tNew_DeepSea_MoveNPC["MoveDate"][nIndex]
	local nMapId = tMoveDate["MapId"]
	local nNpcId = tNew_DeepSea_Count["MainBoxNpc"]
	local nNpcMapId = Get_NpcMapID(nNpcId)
	if nNpcMapId == nMapId then
		return
	end
	-- Sys_SystemBroadcast("nIndex"..nIndex)
	
	local nActivetyPosX = tMoveDate["PosX"]
	local nActivetyPosY = tMoveDate["PosY"]
	Npc_MoveNpcPos(nNpcId,nMapId,nActivetyPosX,nActivetyPosY)
end

-- 清理动态码
function New_DeepSea_ClearGlobal()
	if not Sys_ChkFullTime(tNew_DeepSea_Count["ActivityTime"]) then
		return
	end
	
	local nGlobalId = tNew_DeepSea_Count["GlobalId"]
	Sys_SetSynaGlobalData(nGlobalId,0,0)
	nNew_DeepSea_GlobalGoldData = 0
	
	-- 生成怪物
	-- local nMonsterId = tNew_DeepSea_Count["LimitMonster"]["MonsterId"]
	-- local nGenId = tNew_DeepSea_Count["LimitMonster"]["Generator"]
	-- local nMapId = tNew_DeepSea_MapPosition[1]["MapId"]
	-- local sName = tNew_DeepSea_Text["MonsterName"]
	-- for i,v in pairs(tNew_DeepSea_Count["LimitMonster"]["Pos"]) do
		-- Monster_CreateMonsterRange(0,0,nMapId,v[1],v[2],nGenId,nMonsterId,0,sName,0,1,1,1,tNew_DeepSea_Count["LimitMonster"]["Time"])
	-- end
	-- Sys_SystemBroadcast(tNew_DeepSea_Text["MonsterBroadCast"])
end

--------------------------------------服务器启动  重置动态吗
function New_DeepSea_StartServer()
	if not Sys_ChkFullTime(tNew_DeepSea_Count["ActivityTime"]) then
		return
	end
	
	local nGlobalId = tNew_DeepSea_Count["GlobalId"]
	nNew_DeepSea_GlobalGoldData = Get_SysDynaGlobalData0(nGlobalId)
	
	-- 生成一只
	local nMonsterId = tNew_DeepSea_Count["LimitMonster"]["MonsterId"]
	local nGenId = tNew_DeepSea_Count["LimitMonster"]["Generator"]
	local nMapId = tNew_DeepSea_MapPosition[1]["MapId"]
	local sName = tNew_DeepSea_Text["MonsterName"]
	local nNew_DeepSea_Length = #tNew_DeepSea_Count["LimitMonster"]["Pos"]
	local nNew_DeepSea_Random = math.random(1,nNew_DeepSea_Length)
	local tNew_DeepSea_MonsterPos = tNew_DeepSea_Count["LimitMonster"]["Pos"][nNew_DeepSea_Length]
	Monster_CreateMonsterRange(0,0,nMapId,tNew_DeepSea_MonsterPos[1],tNew_DeepSea_MonsterPos[2],nGenId,nMonsterId,0,sName,0,1,1,1,tNew_DeepSea_Count["LimitMonster"]["Time"])
end

--------------------------------------深海宝箱 
function New_DeepSea_OpenBox(nNpcId)
	if not Sys_ChkFullTime(tNew_DeepSea_Count["ActivityTime"]) then
		return
	end
	
	-- 等级不足
	local nLevel = tNew_DeepSea_Count["Level"]
	local nMeto = tNew_DeepSea_Count["Meto"]
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMeto,nUserId) then
		User_TalkChannel2005(tNew_DeepSea_Text["NotLevel"])
		return
	end
	
	local nNpcMapId = Get_NpcMapID(nNpcId)
	if nNpcMapId ~= tNew_DeepSea_MapPosition[1]["MapId"] then
		User_TalkChannel2005(tNew_DeepSea_Text["HaveOpen"])
		return
	end
	
	-- 背包不足
	local nSpaceNum = RewardTemplate_GetRandomSpace(tNew_DeepSea_Random,2,nNowUserId)
	if nSpaceNum > 0 and not User_CheckLeftSpace(nSpaceNum,nUserId) then
		User_TalkChannel2005(tNew_DeepSea_Text["KillNoSpace"])
		return
	end
	
	--读条
	local nExploreTime = tNew_DeepSea_Count["ExploreTime"]
	local nActionId = tNew_DeepSea_Count["ActionId"]
	local sContent = tNew_DeepSea_Text["Explore"]
	local sFunc = string.format("New_DeepSea_SureOpen</N>%d",nNpcId)
	User_SetExplore(nExploreTime,sContent,nActionId,sFunc)
end

-- 确认打开
function New_DeepSea_SureOpen(nNpcId,nUserId)
	if not Sys_ChkFullTime(tNew_DeepSea_Count["ActivityTime"]) then
		return
	end
	
	-- 背包不足
	local nSpaceNum = RewardTemplate_GetRandomSpace(tNew_DeepSea_Random,2,nUserId)
	if nSpaceNum > 0 and not User_CheckLeftSpace(nSpaceNum,nUserId) then
		User_TalkChannel2005(tNew_DeepSea_Text["KillNoSpace"],nUserId)
		return
	end
	local nNpcMapId = Get_NpcMapID(nNpcId)
	if nNpcMapId ~= tNew_DeepSea_MapPosition[1]["MapId"] then
		User_TalkChannel2005(tNew_DeepSea_Text["HaveOpen"],nUserId)
		return
	end
	local nAfterActivetyMapId = tNew_DeepSea_MapPosition[5]["MapId"]
	local nAfterActivetyPosX = tNew_DeepSea_MapPosition[5]["PosX"]
	local nAfterActivetyPosY = tNew_DeepSea_MapPosition[5]["PosY"]
	Npc_MoveNpcPos(nNpcId,nAfterActivetyMapId,nAfterActivetyPosX,nAfterActivetyPosY)
	
	RewardTemplate_NewRandom(tNew_DeepSea_Random,2,nUserId)
end
--------------------------------------NPC模块--------------------------------------
-- 25508,'张顺'
tNpcFace[6228] = 35
tNpcGossip[25508] = tNpcGossip[25508] or DefaultNpc:new{}
tNpcGossip[25508]["OptionHidden"] = 1
tNpcGossip[25508]["DialogueText"] = tNew_DeepSea_Text[25508] 
-- 活动前
tNpcGossip[25508]["Text1-1"] = {111,112,113,114,115,116,117,118}
tNpcGossip[25508]["tOption1-1"] = {111}
tNpcGossip[25508]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tNew_DeepSea_Count["ActivityTime"])
end

-- 活动后
tNpcGossip[25508]["Text1-2"] = {111,112,121}
tNpcGossip[25508]["tOption1-2"] = {121}
tNpcGossip[25508]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tNew_DeepSea_Count["ActivityTime"])
end

-- 活动中等级不足
tNpcGossip[25508]["Text1-3"] = {111,112,131,132,133,116,117,118}
tNpcGossip[25508]["tOption1-3"] = {131}
tNpcGossip[25508]["ChkFunc1-3"] = function ()
	local nLevel = tNew_DeepSea_Count["Level"]
	local nMeto = tNew_DeepSea_Count["Meto"]
	return Sys_ChkFullTime(tNew_DeepSea_Count["ActivityTime"]) and not User_JudgeLevelAndMetempsychosis(nLevel,nMeto)
end

-- 等级满足条件
tNpcGossip[25508]["Text1-4"] = {111,112,141,142,143,144,116,118}
tNpcGossip[25508]["tOption1-4"] = {141,144}
tNpcGossip[25508]["ChkFunc1-4"] = function ()
	local nLevel = tNew_DeepSea_Count["Level"]
	local nMeto = tNew_DeepSea_Count["Meto"]
	return Sys_ChkFullTime(tNew_DeepSea_Count["ActivityTime"]) and User_JudgeLevelAndMetempsychosis(nLevel,nMeto)
end
-- 1、前往深海宝库
tNpcGossip[25508]["OptionFunc141"] = "New_DeepSea_EnterSea</N>25508"
-- 2、碧海寻踪规则
tNpcGossip[25508]["OptionPoint142"] = "2-1"
-- 3、奖励一览
tNpcGossip[25508]["OptionPoint143"] = "2-3"
-- 4、离开

-- 碧海寻踪规则
tNpcGossip[25508]["Text2-1"] = {211,212,213,214,215,216,217,218,219,220,221}
tNpcGossip[25508]["tOption2-1"] = {211}
tNpcGossip[25508]["OptionPoint211"] = 1

-- 奖励一览
tNpcGossip[25508]["Text2-3"] = {231,212,232,233,234,235,236,237,238,239,212,240}
tNpcGossip[25508]["tOption2-3"] = {231}
tNpcGossip[25508]["OptionPoint231"] = 1

-- 25509,'阮小二'
tNpcFace[6229] = 46
tNpcGossip[25509] = tNpcGossip[25509] or DefaultNpc:new{}
tNpcGossip[25509]["OptionHidden"] = 1
tNpcGossip[25509]["DialogueText"] = tNew_DeepSea_Text[25509] 
-- 深海内对白
tNpcGossip[25509]["Text1-1"] = {111,112,113,114}
tNpcGossip[25509]["tOption1-1"] = {111,112,113}
tNpcGossip[25509]["ChkFunc1-1"] = function ()
	if SpecialServer_ChkNoGiftServer() then
		tNpcGossip[25509]["Option112"] = tNew_DeepSea_Text[25509]["Option1120"]
	else
		tNpcGossip[25509]["Option112"] = tNew_DeepSea_Text[25509]["Option112"]
	end
	return Sys_ChkFullTime(tNew_DeepSea_Count["ActivityTime"])
end
-- 1、前往深海宝库
tNpcGossip[25509]["OptionFunc111"] = "New_DeepSea_EnterMap</N>25509</N>2"
-- 2、返回双龙城
tNpcGossip[25509]["OptionFunc112"] = "New_DeepSea_EnterMap</N>25509</N>3"
-- 3、暂不前往

-- 25552,'阮小二'
tNpcGossip[25552] = tNpcGossip[25509]

-- 25510,'阮小二'
tNpcFace[6232] = 46
tNpcGossip[25510] = tNpcGossip[25510] or DefaultNpc:new{}
tNpcGossip[25510]["OptionHidden"] = 1
tNpcGossip[25510]["DialogueText"] = tNew_DeepSea_Text[25510] 
-- 活动地图对白
tNpcGossip[25510]["Text1-1"] = {111,112,113,114}
tNpcGossip[25510]["tOption1-1"] = {112,111,113}
tNpcGossip[25510]["ChkFunc1-1"] = function ()
	if SpecialServer_ChkNoGiftServer() then
		tNpcGossip[25510]["Option111"] = tNew_DeepSea_Text[25510]["Option1110"]
	else
		tNpcGossip[25510]["Option111"] = tNew_DeepSea_Text[25510]["Option111"]
	end
	return Sys_ChkFullTime(tNew_DeepSea_Count["ActivityTime"])
end
-- 1、返回双龙城
tNpcGossip[25510]["OptionFunc111"] = "New_DeepSea_EnterMap</N>25510</N>3"
-- 2、前往深海
tNpcGossip[25510]["OptionFunc112"] = "New_DeepSea_EnterMap</N>25510</N>1"
-- 3、等我一会，还没换完呢

-- 25511,'阮小五'
tNpcFace[6230] = 42
tNpcGossip[25511] = tNpcGossip[25511] or DefaultNpc:new{}
tNpcGossip[25511]["OptionHidden"] = 1
tNpcGossip[25511]["DialogueText"] = tNew_DeepSea_Text[25511] 
-- 活动地图对白
tNpcGossip[25511]["Text1-1"] = {111,112,113,114,115,116,117,118,119}
tNpcGossip[25511]["tOption1-1"] = {111,112,113,115}
tNpcGossip[25511]["ChkFunc1-1"] = function ()
	New_DeepSea_InitCoin(25511)
	return Sys_ChkFullTime(tNew_DeepSea_Count["ActivityTime"])
end
-- 1、金币兑换（X/5次）
tNpcGossip[25511]["OptionFunc111"] = "New_DeepSea_ExchangeCoin</N>25511</N>3314552"
-- 2、银币兑换（X/7次）
tNpcGossip[25511]["OptionFunc112"] = "New_DeepSea_ExchangeCoin</N>25511</N>3314551"
-- 3、铜币兑换（X/10次）
tNpcGossip[25511]["OptionFunc113"] = "New_DeepSea_ExchangeCoin</N>25511</N>3314550"
-- 4、奖励一览
tNpcGossip[25511]["OptionPoint114"] = "2-3"

-- 接1~3、兑换
tNpcGossip[25511]["Text2-1"] = {211}
tNpcGossip[25511]["tOption2-1"] = {211,212}

-- 奖励一览
tNpcGossip[25511]["Text2-3"] = {231,241,212,232,233,234,235,236,237,238,239,212,241,240}
tNpcGossip[25511]["tOption2-3"] = {231}
tNpcGossip[25511]["OptionPoint231"] = 1

-- 25512,'阮小七' -- 限时兑换
tNpcFace[6231] = 116
tNpcGossip[25512] = tNpcGossip[25512] or DefaultNpc:new{}
tNpcGossip[25512]["OptionHidden"] = 1
tNpcGossip[25512]["DialogueText"] = tNew_DeepSea_Text[25512] 
-- 活动地图对白
tNpcGossip[25512]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[25512]["tOption1-1"] = {111,112}
tNpcGossip[25512]["ChkFunc1-1"] = function ()
		local sBasicText = tNew_DeepSea_Text[25512]["Option111"]
		local nData = nNew_DeepSea_GlobalGoldData
		tNpcGossip[25512]["Option111"] = string.format(sBasicText,nData)
	return Sys_ChkFullTime(tNew_DeepSea_Count["ActivityTime"]) and Sys_ChkDayTime(tNew_DeepSea_Count["LimitExchange"])
end
-- 1、深海金币兑奖（X/100）
tNpcGossip[25512]["OptionFunc111"] = "New_DeepSea_ExchangeGlobalCoin</N>25512"
-- 2、离开

-- 活动时间外
tNpcGossip[25512]["Text1-2"] = {111,112,121}
tNpcGossip[25512]["tOption1-2"] = {121}
tNpcGossip[25512]["ChkFunc1-2"] = function ()
	return true
end

-- 成功，二次对白
tNpcGossip[25512]["Text2-1"] = {211,212}
tNpcGossip[25512]["tOption2-1"] = {211,212}
-- 兑换1次
tNpcGossip[25512]["OptionFunc211"] = "New_DeepSea_SureExchangeGlobalCoin</N>25512</N>1"
-- 兑换5次
tNpcGossip[25512]["OptionFunc212"] = "New_DeepSea_SureExchangeGlobalCoin</N>25512</N>5"

--------------------------------------物品模块--------------------------------------
-- 3314548,'深海巨魔召唤令'
tItem[3314548] = tItem[3314548] or {}
tItem[3314548]["Function"] = function(nItemId,sItemName)
	New_DeepSea_CallBoss(nItemId)
end
-- 3314549,'八爪章鱼召唤令'
tItem[3314549] = tItem[3314548] or {}

-- 3314550,'深海铜币'
tItem[3314550] = tItem[3314550] or {}
tItem[3314550]["Function"] = function(nItemId,sItemName)
	New_DeepSea_UseCoin(nItemId)
end
-- 3314551,'深海银币'
tItem[3314551] = tItem[3314550]
-- 3314552,'深海金币'
tItem[3314552] = tItem[3314550]


--------------------------------------怪物掉落-------------------------------------------
local tNew_DeepSea_Drop = {}
	tNew_DeepSea_Drop[1] = {}
	tNew_DeepSea_Drop[1]["ActivityTime"] = tNew_DeepSea_Count["ActivityTime"]
	tNew_DeepSea_Drop[1]["Function"] = New_DeepSea_KillNormalMonster
	tNew_DeepSea_Drop[1]["MonsterId"] = {3051,3052,3053,3054,3055}
	
-- table.insert(tMonsterDrop_AreaLoad,tNew_DeepSea_Drop[1])

--------------------------------------时间自检------------------------------------------
-- 移出宝箱
tNew_DeepSea_TimeMoveNPC = {}
-- 移动宝箱
tNew_DeepSea_TimeMoveNPC[1] = {}
tNew_DeepSea_TimeMoveNPC[1]["ActivityTime"] = tNew_DeepSea_Count["ActivityTime"]
tNew_DeepSea_TimeMoveNPC[1]["Type"] = 1
tNew_DeepSea_TimeMoveNPC[1]["TimeType"] = 5
tNew_DeepSea_TimeMoveNPC[1]["Multiple"] = {}
tNew_DeepSea_TimeMoveNPC[1]["Multiple"][1] = "00 00"
tNew_DeepSea_TimeMoveNPC[1]["Multiple"][2] = "10 10"
tNew_DeepSea_TimeMoveNPC[1]["Multiple"][3] = "20 20"
tNew_DeepSea_TimeMoveNPC[1]["Multiple"][4] = "30 30"
tNew_DeepSea_TimeMoveNPC[1]["Multiple"][5] = "40 40"
tNew_DeepSea_TimeMoveNPC[1]["Multiple"][6] = "50 50"
tNew_DeepSea_TimeMoveNPC[1]["Func"] = New_DeepSea_TimeMoveNPC
-- 清除动态码
tNew_DeepSea_TimeMoveNPC[2] = {}
tNew_DeepSea_TimeMoveNPC[2]["ActivityTime"] = tNew_DeepSea_Count["ActivityTime"]
tNew_DeepSea_TimeMoveNPC[2]["Type"] = 2
tNew_DeepSea_TimeMoveNPC[2]["TimeType"] = 4
tNew_DeepSea_TimeMoveNPC[2]["Time"] = "23:58 23:59"
tNew_DeepSea_TimeMoveNPC[2]["Func"] = New_DeepSea_ClearGlobal

-- table.insert(tSystemTime_InitialData,tNew_DeepSea_TimeMoveNPC[1])
-- table.insert(tSystemTime_InitialData,tNew_DeepSea_TimeMoveNPC[2])

--------------------------------------服务器启动-------------------------------------------
-- tServerStart["tFunction"] = tServerStart["tFunction"] or {}
-- table.insert(tServerStart["tFunction"],New_DeepSea_StartServer)
