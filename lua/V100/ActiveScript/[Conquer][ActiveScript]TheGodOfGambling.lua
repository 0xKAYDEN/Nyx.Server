------------------------------------------------------------------------------------
--Name:	170719[简体征服][活动脚本]赌神活动制作(8.3-8.16)
--Creator: 姚曦宇
--Created:	2017/07/19
------------------------------------------------------------------------------------
-- 统一前缀 TheGodOfGambling_
-- LogId：12000795
-- Stc：
-- 163,40 筹码券一天免费领取一张
-- 163,41 幸运骰子一天免费领取一个
-- 163,42 幸运转盘一天免费领取一张
-- 163,43 幸运扑克一天免费领取一个
-- 动态表
-- 51655 data0 动态码清理标记
-- 51655 data1~4 免费骰子单日单服领取数量
-- 51656 data1~4 免费转盘单日单服领取数量
-- 51657 data1 免费翻牌器单日单服领取数量
 
------------------------------------------------------------------------------------
local tTheGodOfGambling_Cont = {}
--  预热时间
	tTheGodOfGambling_Cont["PreHeating"] = "2017-08-01 00:00 2017-09-18 23:59"
--  活动时间
	tTheGodOfGambling_Cont["ActiveTime"] = "2017-09-19 00:00 2017-09-30 23:59"
--  物品过期时间
	tTheGodOfGambling_Cont["DelTime"] = "2017-09-19 00:00 2017-10-31 23:59"
--  回收时间
	tTheGodOfGambling_Cont["RecoverTime"] = "2017-09-19 00:00 2017-10-07 23:59"
--  兑换时间
	tTheGodOfGambling_Cont["ExchangeTime"] = "2017-09-19 00:00 2017-10-07 23:59"
--  玩家转世等级限制
	tTheGodOfGambling_Cont["Level"] = 80
	tTheGodOfGambling_Cont["Metem"] = 0
	
	tTheGodOfGambling_Cont["AwardLimit"] = 3000
	tTheGodOfGambling_Cont["GlobalId"] = {}
	tTheGodOfGambling_Cont["GlobalId"][1] = 51655
	tTheGodOfGambling_Cont["GlobalId"][2] = 51656
	tTheGodOfGambling_Cont["GlobalId"][3] = 51657
	
local tTheGodOfGambling_Log = {}
	tTheGodOfGambling_Log["DelItem"] = "0,0,%d,%d,12000795,2,0,0"
	
local tTheGodOfGambling_Npc = {}
-- 骰子王高进
	tTheGodOfGambling_Npc[20892] = {}
	tTheGodOfGambling_Npc[20892]["MapId"] = 1002
	tTheGodOfGambling_Npc[20892]["PosX"] = 322
	tTheGodOfGambling_Npc[20892]["PosY"] = 429
-- 游戏王阿星
	-- tTheGodOfGambling_Npc[20893] = {}
	-- tTheGodOfGambling_Npc[20893]["MapId"] = 1036
	-- tTheGodOfGambling_Npc[20893]["PosX"] = 247
	-- tTheGodOfGambling_Npc[20893]["PosY"] = 232
-- 扑克王刀仔
	-- tTheGodOfGambling_Npc[20894] = {}
	-- tTheGodOfGambling_Npc[20894]["MapId"] = 1036
	-- tTheGodOfGambling_Npc[20894]["PosX"] = 247
	-- tTheGodOfGambling_Npc[20894]["PosY"] = 242
-- 雯雯
	tTheGodOfGambling_Npc[20895] = {}
	tTheGodOfGambling_Npc[20895]["MapId"] = 1002
	tTheGodOfGambling_Npc[20895]["PosX"] = 327
	tTheGodOfGambling_Npc[20895]["PosY"] = 429
-- 金币游戏机
	-- tTheGodOfGambling_Npc[22004] = {}
	-- tTheGodOfGambling_Npc[22004]["MapId"] = 1036
	-- tTheGodOfGambling_Npc[22004]["PosX"] = 241
	-- tTheGodOfGambling_Npc[22004]["PosY"] = 241
-- 天石游戏机
	-- tTheGodOfGambling_Npc[22005] = {}
	-- tTheGodOfGambling_Npc[22005]["MapId"] = 1036
	-- tTheGodOfGambling_Npc[22005]["PosX"] = 241
	-- tTheGodOfGambling_Npc[22005]["PosY"] = 235
	
-- 扑克游戏
	-- tTheGodOfGambling_Npc[116] = {}
	-- tTheGodOfGambling_Npc[116]["MapId"] = 1036
	-- tTheGodOfGambling_Npc[116]["PosX"] = 250
	-- tTheGodOfGambling_Npc[116]["PosY"] = 252
	
-- -- 回收星仔
	-- tTheGodOfGambling_Npc[21129] = {}
	-- tTheGodOfGambling_Npc[21129]["MapId"] = 1002
	-- tTheGodOfGambling_Npc[21129]["PosX"] = 317
	-- tTheGodOfGambling_Npc[21129]["PosY"] = 429
	
-- -- 领取上限
local tTheGodOfGambling_Stc = {}
-- -- 筹码券
	-- tTheGodOfGambling_Stc[1] = {}
	-- tTheGodOfGambling_Stc[1]["EventType"] = 163
	-- tTheGodOfGambling_Stc[1]["DataType"] = 40
	-- tTheGodOfGambling_Stc[1]["Limit"] = 1
-- -- 幸运骰子
	-- tTheGodOfGambling_Stc[2] = {}
	-- tTheGodOfGambling_Stc[2]["EventType"] = 163
	-- tTheGodOfGambling_Stc[2]["DataType"] = 41
	-- tTheGodOfGambling_Stc[2]["Limit"] = 1
-- -- 幸运奖盘
	-- tTheGodOfGambling_Stc[3] = {}
	-- tTheGodOfGambling_Stc[3]["EventType"] = 163
	-- tTheGodOfGambling_Stc[3]["DataType"] = 42
	-- tTheGodOfGambling_Stc[3]["Limit"] = 1
-- -- 幸运扑克
	-- tTheGodOfGambling_Stc[4] = {}
	-- tTheGodOfGambling_Stc[4]["EventType"] = 163
	-- tTheGodOfGambling_Stc[4]["DataType"] = 43
	-- tTheGodOfGambling_Stc[4]["Limit"] = 1
-- 骰子时候用限制
	tTheGodOfGambling_Stc[5] = {}
	tTheGodOfGambling_Stc[5]["EventType"] = 163
	tTheGodOfGambling_Stc[5]["DataType"] = 57
	tTheGodOfGambling_Stc[5]["Limit"] = 1
-- -- 每日打怪获得筹码
	-- tTheGodOfGambling_Stc[6] = {}
	-- tTheGodOfGambling_Stc[6]["EventType"] = 163
	-- tTheGodOfGambling_Stc[6]["DataType"] = 58
	-- tTheGodOfGambling_Stc[6]["Limit"] = 80

 local tTheGodOfGambling_Award = {}

-- --  筹码券
	-- tTheGodOfGambling_Award[3304258] = {}
	-- tTheGodOfGambling_Award[3304258]["OverTimeDel"] = 1
	-- tTheGodOfGambling_Award[3304258][1] = {}
	-- tTheGodOfGambling_Award[3304258][1]["ItemChanceSum"] = 10000
	-- -- 极运筹码*3   10%
	-- tTheGodOfGambling_Award[3304258][1][1] = {}
	-- tTheGodOfGambling_Award[3304258][1][1]["RandomItemChanceType"] = 2
	-- tTheGodOfGambling_Award[3304258][1][1]["ItemChance"] = 1000
	-- tTheGodOfGambling_Award[3304258][1][1]["RewardEffect"] = {}
	-- tTheGodOfGambling_Award[3304258][1][1]["RewardEffect"]["SzObj"] = "self"
	-- tTheGodOfGambling_Award[3304258][1][1]["RewardEffect"]["Effect"] = "zf2-e128"
	-- tTheGodOfGambling_Award[3304258][1][1]["RewardItem"] = {}
	-- tTheGodOfGambling_Award[3304258][1][1]["RewardItem"][1] = {}
	-- tTheGodOfGambling_Award[3304258][1][1]["RewardItem"][1]["Id"] = 3303926
	-- tTheGodOfGambling_Award[3304258][1][1]["RewardItem"][1]["Attr"] = "0 3"
	-- tTheGodOfGambling_Award[3304258][1][1]["LogId"] = 12000795
	-- tTheGodOfGambling_Award[3304258][1][1]["LogStep"] = "2"	
	-- -- 极运筹码*5   20%
	-- tTheGodOfGambling_Award[3304258][1][2] = {}
	-- tTheGodOfGambling_Award[3304258][1][2]["RandomItemChanceType"] = 2
	-- tTheGodOfGambling_Award[3304258][1][2]["ItemChance"] = 2000
	-- tTheGodOfGambling_Award[3304258][1][2]["RewardEffect"] = {}
	-- tTheGodOfGambling_Award[3304258][1][2]["RewardEffect"]["SzObj"] = "self"
	-- tTheGodOfGambling_Award[3304258][1][2]["RewardEffect"]["Effect"] = "zf2-e128"
	-- tTheGodOfGambling_Award[3304258][1][2]["RewardItem"] = {}
	-- tTheGodOfGambling_Award[3304258][1][2]["RewardItem"][1] = {}
	-- tTheGodOfGambling_Award[3304258][1][2]["RewardItem"][1]["Id"] = 3303926
	-- tTheGodOfGambling_Award[3304258][1][2]["RewardItem"][1]["Attr"] = "0 5"
	-- tTheGodOfGambling_Award[3304258][1][2]["LogId"] = 12000795
	-- tTheGodOfGambling_Award[3304258][1][2]["LogStep"] = "2"	
	-- -- 极运筹码*7   30%
	-- tTheGodOfGambling_Award[3304258][1][3] = {}
	-- tTheGodOfGambling_Award[3304258][1][3]["RandomItemChanceType"] = 2
	-- tTheGodOfGambling_Award[3304258][1][3]["ItemChance"] = 3000
	-- tTheGodOfGambling_Award[3304258][1][3]["RewardEffect"] = {}
	-- tTheGodOfGambling_Award[3304258][1][3]["RewardEffect"]["SzObj"] = "self"
	-- tTheGodOfGambling_Award[3304258][1][3]["RewardEffect"]["Effect"] = "zf2-e128"
	-- tTheGodOfGambling_Award[3304258][1][3]["RewardItem"] = {}
	-- tTheGodOfGambling_Award[3304258][1][3]["RewardItem"][1] = {}
	-- tTheGodOfGambling_Award[3304258][1][3]["RewardItem"][1]["Id"] = 3303926
	-- tTheGodOfGambling_Award[3304258][1][3]["RewardItem"][1]["Attr"] = "0 7"
	-- tTheGodOfGambling_Award[3304258][1][3]["LogId"] = 12000795
	-- tTheGodOfGambling_Award[3304258][1][3]["LogStep"] = "2"	
	-- -- 极运筹码*10   20%
	-- tTheGodOfGambling_Award[3304258][1][4] = {}
	-- tTheGodOfGambling_Award[3304258][1][4]["RandomItemChanceType"] = 2
	-- tTheGodOfGambling_Award[3304258][1][4]["ItemChance"] = 2000
	-- tTheGodOfGambling_Award[3304258][1][4]["RewardEffect"] = {}
	-- tTheGodOfGambling_Award[3304258][1][4]["RewardEffect"]["SzObj"] = "self"
	-- tTheGodOfGambling_Award[3304258][1][4]["RewardEffect"]["Effect"] = "zf2-e128"
	-- tTheGodOfGambling_Award[3304258][1][4]["RewardItem"] = {}
	-- tTheGodOfGambling_Award[3304258][1][4]["RewardItem"][1] = {}
	-- tTheGodOfGambling_Award[3304258][1][4]["RewardItem"][1]["Id"] = 3303926
	-- tTheGodOfGambling_Award[3304258][1][4]["RewardItem"][1]["Attr"] = "0 10"
	-- tTheGodOfGambling_Award[3304258][1][4]["LogId"] = 12000795
	-- tTheGodOfGambling_Award[3304258][1][4]["LogStep"] = "2"	
	-- -- 极运筹码*15   10%
	-- tTheGodOfGambling_Award[3304258][1][5] = {}
	-- tTheGodOfGambling_Award[3304258][1][5]["RandomItemChanceType"] = 2
	-- tTheGodOfGambling_Award[3304258][1][5]["ItemChance"] = 1000
	-- tTheGodOfGambling_Award[3304258][1][5]["RewardEffect"] = {}
	-- tTheGodOfGambling_Award[3304258][1][5]["RewardEffect"]["SzObj"] = "self"
	-- tTheGodOfGambling_Award[3304258][1][5]["RewardEffect"]["Effect"] = "zf2-e128"
	-- tTheGodOfGambling_Award[3304258][1][5]["RewardItem"] = {}
	-- tTheGodOfGambling_Award[3304258][1][5]["RewardItem"][1] = {}
	-- tTheGodOfGambling_Award[3304258][1][5]["RewardItem"][1]["Id"] = 3303926
	-- tTheGodOfGambling_Award[3304258][1][5]["RewardItem"][1]["Attr"] = "0 15"
	-- tTheGodOfGambling_Award[3304258][1][5]["LogId"] = 12000795
	-- tTheGodOfGambling_Award[3304258][1][5]["LogStep"] = "2"	
	-- -- 极运筹码*20   10%
	-- tTheGodOfGambling_Award[3304258][1][6] = {}
	-- tTheGodOfGambling_Award[3304258][1][6]["RandomItemChanceType"] = 2
	-- tTheGodOfGambling_Award[3304258][1][6]["ItemChance"] = 1000
	-- tTheGodOfGambling_Award[3304258][1][6]["RewardEffect"] = {}
	-- tTheGodOfGambling_Award[3304258][1][6]["RewardEffect"]["SzObj"] = "self"
	-- tTheGodOfGambling_Award[3304258][1][6]["RewardEffect"]["Effect"] = "zf2-e128"
	-- tTheGodOfGambling_Award[3304258][1][6]["RewardItem"] = {}
	-- tTheGodOfGambling_Award[3304258][1][6]["RewardItem"][1] = {}
	-- tTheGodOfGambling_Award[3304258][1][6]["RewardItem"][1]["Id"] = 3303926
	-- tTheGodOfGambling_Award[3304258][1][6]["RewardItem"][1]["Attr"] = "0 20"
	-- tTheGodOfGambling_Award[3304258][1][6]["LogId"] = 12000795
	-- tTheGodOfGambling_Award[3304258][1][6]["LogStep"] = "2"		
	
-- --  极运筹码
	-- tTheGodOfGambling_Award[3303926] = {}
	-- tTheGodOfGambling_Award[3303926]["RewardEffect"] = {}
	-- tTheGodOfGambling_Award[3303926]["RewardEffect"]["SzObj"] = "self"
	-- tTheGodOfGambling_Award[3303926]["RewardEffect"]["Effect"] = "angelwing"
	-- tTheGodOfGambling_Award[3303926]["DeleteItem"] = {}
	-- tTheGodOfGambling_Award[3303926]["DeleteItem"][1] = {}
	-- tTheGodOfGambling_Award[3303926]["DeleteItem"][1]["Id"] = 3303926
	-- tTheGodOfGambling_Award[3303926]["RewardCultivation"] = {}
	-- tTheGodOfGambling_Award[3303926]["RewardCultivation"]["Value"] = 5
	-- tTheGodOfGambling_Award[3303926]["LogId"] = 12000795
	-- tTheGodOfGambling_Award[3303926]["LogStep"] = "2"	
	
-- -- 赤炼石骰子
	tTheGodOfGambling_Award[3304260] = {}
	tTheGodOfGambling_Award[3304260]["TimeLimit"] = 3
	tTheGodOfGambling_Award[3304260]["Touzi"] = 1
	tTheGodOfGambling_Award[3304260]["FromItem"] = 3304260
	tTheGodOfGambling_Award[3304260][1] = {}
	tTheGodOfGambling_Award[3304260][1]["ItemChanceSum"] = 10000
	-- 赤炼石+1（赠）礼包*1   22%
	tTheGodOfGambling_Award[3304260][1][1] = {}
	tTheGodOfGambling_Award[3304260][1][1]["RandomItemChanceType"] = 2
	tTheGodOfGambling_Award[3304260][1][1]["ItemChance"] = 2200
	tTheGodOfGambling_Award[3304260][1][1]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304260][1][1]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304260][1][1]["RewardEffect"]["Effect"] = "touzi_1"
	tTheGodOfGambling_Award[3304260][1][1]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304260][1][1]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304260][1][1]["RewardItem"][1]["Id"] = 3304295
	tTheGodOfGambling_Award[3304260][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_Award[3304260][1][1]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304260][1][1]["LogStep"] = "2"	
	-- 赤炼石+1（赠）礼包*2   23%
	tTheGodOfGambling_Award[3304260][1][2] = {}
	tTheGodOfGambling_Award[3304260][1][2]["RandomItemChanceType"] = 2
	tTheGodOfGambling_Award[3304260][1][2]["ItemChance"] = 2300
	tTheGodOfGambling_Award[3304260][1][2]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304260][1][2]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304260][1][2]["RewardEffect"]["Effect"] = "touzi_2"
	tTheGodOfGambling_Award[3304260][1][2]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304260][1][2]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304260][1][2]["RewardItem"][1]["Id"] = 3304421
	tTheGodOfGambling_Award[3304260][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_Award[3304260][1][2]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304260][1][2]["LogStep"] = "2"	
	-- 赤炼石+1（赠）礼包*3   20%
	tTheGodOfGambling_Award[3304260][1][3] = {}
	tTheGodOfGambling_Award[3304260][1][3]["RandomItemChanceType"] = 2
	tTheGodOfGambling_Award[3304260][1][3]["ItemChance"] = 2000
	tTheGodOfGambling_Award[3304260][1][3]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304260][1][3]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304260][1][3]["RewardEffect"]["Effect"] = "touzi_3"
	tTheGodOfGambling_Award[3304260][1][3]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304260][1][3]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304260][1][3]["RewardItem"][1]["Id"] = 3304422
	tTheGodOfGambling_Award[3304260][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_Award[3304260][1][3]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304260][1][3]["LogStep"] = "2"	
	-- 赤炼石+1（赠）礼包*4   17%
	tTheGodOfGambling_Award[3304260][1][4] = {}
	tTheGodOfGambling_Award[3304260][1][4]["RandomItemChanceType"] = 2
	tTheGodOfGambling_Award[3304260][1][4]["ItemChance"] = 1700
	tTheGodOfGambling_Award[3304260][1][4]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304260][1][4]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304260][1][4]["RewardEffect"]["Effect"] = "touzi_4"
	tTheGodOfGambling_Award[3304260][1][4]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304260][1][4]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304260][1][4]["RewardItem"][1]["Id"] = 3304423
	tTheGodOfGambling_Award[3304260][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_Award[3304260][1][4]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304260][1][4]["LogStep"] = "2"	
	-- 赤炼石+1（赠）礼包*5   11.30%
	tTheGodOfGambling_Award[3304260][1][5] = {}
	tTheGodOfGambling_Award[3304260][1][5]["RandomItemChanceType"] = 2
	tTheGodOfGambling_Award[3304260][1][5]["ItemChance"] = 1130
	tTheGodOfGambling_Award[3304260][1][5]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304260][1][5]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304260][1][5]["RewardEffect"]["Effect"] = "touzi_5"
	tTheGodOfGambling_Award[3304260][1][5]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304260][1][5]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304260][1][5]["RewardItem"][1]["Id"] = 3304424
	tTheGodOfGambling_Award[3304260][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_Award[3304260][1][5]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304260][1][5]["LogStep"] = "2"	
	-- 赤炼石+5（赠）礼包*1   6.60%      
	tTheGodOfGambling_Award[3304260][1][6] = {}
	tTheGodOfGambling_Award[3304260][1][6]["TellToAll"] = 1
	tTheGodOfGambling_Award[3304260][1][6]["RandomItemChanceType"] = 2
	tTheGodOfGambling_Award[3304260][1][6]["ItemChance"] = 660
	tTheGodOfGambling_Award[3304260][1][6]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304260][1][6]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304260][1][6]["RewardEffect"]["Effect"] = "touzi_6"
	tTheGodOfGambling_Award[3304260][1][6]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304260][1][6]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304260][1][6]["RewardItem"][1]["Id"] = 3304299
	tTheGodOfGambling_Award[3304260][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_Award[3304260][1][6]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304260][1][6]["LogStep"] = "2"		
	-- 赤炼石+6（赠）礼包*1   0.10%      
	tTheGodOfGambling_Award[3304260][1][7] = {}
	tTheGodOfGambling_Award[3304260][1][7]["TellToAll"] = 1
	tTheGodOfGambling_Award[3304260][1][7]["RandomItemChanceType"] = 2
	tTheGodOfGambling_Award[3304260][1][7]["ItemChance"] = 10
	tTheGodOfGambling_Award[3304260][1][7]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304260][1][7]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304260][1][7]["RewardEffect"]["Effect"] = "bombarrow"
	tTheGodOfGambling_Award[3304260][1][7]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304260][1][7]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304260][1][7]["RewardItem"][1]["Id"] = 3304301
	tTheGodOfGambling_Award[3304260][1][7]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_Award[3304260][1][7]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304260][1][7]["LogStep"] = "2"		
	
-- 星陨石骰子
	tTheGodOfGambling_Award[3304261] = {}
	tTheGodOfGambling_Award[3304261]["OverTimeDel"] = 1
	tTheGodOfGambling_Award[3304261]["TimeLimit"] = 3
	tTheGodOfGambling_Award[3304261]["Touzi"] = 1
	tTheGodOfGambling_Award[3304261]["FromItem"] = 3304261
	tTheGodOfGambling_Award[3304261][1] = {}
	tTheGodOfGambling_Award[3304261][1]["ItemChanceSum"] = 10000
	-- 微光星陨石礼包*1   22%
	tTheGodOfGambling_Award[3304261][1][1] = {}
	tTheGodOfGambling_Award[3304261][1][1]["RandomItemChanceType"] = 2
	tTheGodOfGambling_Award[3304261][1][1]["ItemChance"] = 2200
	tTheGodOfGambling_Award[3304261][1][1]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304261][1][1]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304261][1][1]["RewardEffect"]["Effect"] = "touzi_1"
	tTheGodOfGambling_Award[3304261][1][1]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304261][1][1]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304261][1][1]["RewardItem"][1]["Id"] = 3304337
	tTheGodOfGambling_Award[3304261][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_Award[3304261][1][1]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304261][1][1]["LogStep"] = "2"	
	-- 微光星陨石礼包*2   22%
	tTheGodOfGambling_Award[3304261][1][2] = {}
	tTheGodOfGambling_Award[3304261][1][2]["RandomItemChanceType"] = 2
	tTheGodOfGambling_Award[3304261][1][2]["ItemChance"] = 2200
	tTheGodOfGambling_Award[3304261][1][2]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304261][1][2]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304261][1][2]["RewardEffect"]["Effect"] = "touzi_2"
	tTheGodOfGambling_Award[3304261][1][2]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304261][1][2]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304261][1][2]["RewardItem"][1]["Id"] = 3304338
	tTheGodOfGambling_Award[3304261][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_Award[3304261][1][2]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304261][1][2]["LogStep"] = "2"	
	-- 微光星陨石礼包*3   20%
	tTheGodOfGambling_Award[3304261][1][3] = {}
	tTheGodOfGambling_Award[3304261][1][3]["RandomItemChanceType"] = 2
	tTheGodOfGambling_Award[3304261][1][3]["ItemChance"] = 2000
	tTheGodOfGambling_Award[3304261][1][3]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304261][1][3]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304261][1][3]["RewardEffect"]["Effect"] = "touzi_3"
	tTheGodOfGambling_Award[3304261][1][3]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304261][1][3]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304261][1][3]["RewardItem"][1]["Id"] = 3304339
	tTheGodOfGambling_Award[3304261][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_Award[3304261][1][3]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304261][1][3]["LogStep"] = "2"	
	-- 微光星陨石礼包*4   18%
	tTheGodOfGambling_Award[3304261][1][4] = {}
	tTheGodOfGambling_Award[3304261][1][4]["RandomItemChanceType"] = 2
	tTheGodOfGambling_Award[3304261][1][4]["ItemChance"] = 1800
	tTheGodOfGambling_Award[3304261][1][4]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304261][1][4]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304261][1][4]["RewardEffect"]["Effect"] = "touzi_4"
	tTheGodOfGambling_Award[3304261][1][4]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304261][1][4]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304261][1][4]["RewardItem"][1]["Id"] = 3304340
	tTheGodOfGambling_Award[3304261][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_Award[3304261][1][4]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304261][1][4]["LogStep"] = "2"	
	-- 微光星陨石礼包*5   11.30%
	tTheGodOfGambling_Award[3304261][1][5] = {}
	tTheGodOfGambling_Award[3304261][1][5]["RandomItemChanceType"] = 2
	tTheGodOfGambling_Award[3304261][1][5]["ItemChance"] = 1130
	tTheGodOfGambling_Award[3304261][1][5]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304261][1][5]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304261][1][5]["RewardEffect"]["Effect"] = "touzi_5"
	tTheGodOfGambling_Award[3304261][1][5]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304261][1][5]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304261][1][5]["RewardItem"][1]["Id"] = 3304341
	tTheGodOfGambling_Award[3304261][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_Award[3304261][1][5]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304261][1][5]["LogStep"] = "2"	
	-- 晶莹星陨石礼包*1   6.60% 
	tTheGodOfGambling_Award[3304261][1][6] = {}
	tTheGodOfGambling_Award[3304261][1][6]["TellToAll"] = 1
	tTheGodOfGambling_Award[3304261][1][6]["RandomItemChanceType"] = 2
	tTheGodOfGambling_Award[3304261][1][6]["ItemChance"] = 660
	tTheGodOfGambling_Award[3304261][1][6]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304261][1][6]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304261][1][6]["RewardEffect"]["Effect"] = "touzi_6"
	tTheGodOfGambling_Award[3304261][1][6]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304261][1][6]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304261][1][6]["RewardItem"][1]["Id"] = 3304347
	tTheGodOfGambling_Award[3304261][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_Award[3304261][1][6]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304261][1][6]["LogStep"] = "2"		
	-- 璀璨星陨石礼包*1   0.10%      -- 全服公告
	tTheGodOfGambling_Award[3304261][1][7] = {}
	tTheGodOfGambling_Award[3304261][1][7]["TellToAll"] = 1
	tTheGodOfGambling_Award[3304261][1][7]["RandomItemChanceType"] = 2
	tTheGodOfGambling_Award[3304261][1][7]["ItemChance"] = 10
	tTheGodOfGambling_Award[3304261][1][7]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304261][1][7]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304261][1][7]["RewardEffect"]["Effect"] = "bombarrow"
	tTheGodOfGambling_Award[3304261][1][7]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304261][1][7]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304261][1][7]["RewardItem"][1]["Id"] = 3009003
	tTheGodOfGambling_Award[3304261][1][7]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tTheGodOfGambling_Award[3304261][1][7]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304261][1][7]["LogStep"] = "2"	
	

-- 气力值骰子
	tTheGodOfGambling_Award[3304262] = {}
	tTheGodOfGambling_Award[3304262]["TimeLimit"] = 3
	tTheGodOfGambling_Award[3304262]["Touzi"] = 1
	tTheGodOfGambling_Award[3304262]["FromItem"] = 3304262
	tTheGodOfGambling_Award[3304262][1] = {}
	tTheGodOfGambling_Award[3304262][1]["ItemChanceSum"] = 10000
	-- 20气力值礼包*1   22%
	tTheGodOfGambling_Award[3304262][1][1] = {}
	tTheGodOfGambling_Award[3304262][1][1]["RandomItemChanceType"] = 2
	tTheGodOfGambling_Award[3304262][1][1]["ItemChance"] = 2200
	tTheGodOfGambling_Award[3304262][1][1]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304262][1][1]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304262][1][1]["RewardEffect"]["Effect"] = "touzi_1"
	tTheGodOfGambling_Award[3304262][1][1]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304262][1][1]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304262][1][1]["RewardItem"][1]["Id"] = 3008185
	tTheGodOfGambling_Award[3304262][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_Award[3304262][1][1]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304262][1][1]["LogStep"] = "2"	
	-- 30气力值礼包*1   22%
	tTheGodOfGambling_Award[3304262][1][2] = {}
	tTheGodOfGambling_Award[3304262][1][2]["RandomItemChanceType"] = 2
	tTheGodOfGambling_Award[3304262][1][2]["ItemChance"] = 2200
	tTheGodOfGambling_Award[3304262][1][2]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304262][1][2]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304262][1][2]["RewardEffect"]["Effect"] = "touzi_2"
	tTheGodOfGambling_Award[3304262][1][2]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304262][1][2]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304262][1][2]["RewardItem"][1]["Id"] = 3304319
	tTheGodOfGambling_Award[3304262][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_Award[3304262][1][2]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304262][1][2]["LogStep"] = "2"	
	-- 50气力值礼包*1   20%
	tTheGodOfGambling_Award[3304262][1][3] = {}
	tTheGodOfGambling_Award[3304262][1][3]["RandomItemChanceType"] = 2
	tTheGodOfGambling_Award[3304262][1][3]["ItemChance"] = 2000
	tTheGodOfGambling_Award[3304262][1][3]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304262][1][3]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304262][1][3]["RewardEffect"]["Effect"] = "touzi_3"
	tTheGodOfGambling_Award[3304262][1][3]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304262][1][3]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304262][1][3]["RewardItem"][1]["Id"] = 3008186
	tTheGodOfGambling_Award[3304262][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_Award[3304262][1][3]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304262][1][3]["LogStep"] = "2"	
	-- 60气力值礼包*1   16%
	tTheGodOfGambling_Award[3304262][1][4] = {}
	tTheGodOfGambling_Award[3304262][1][4]["RandomItemChanceType"] = 2
	tTheGodOfGambling_Award[3304262][1][4]["ItemChance"] = 1600
	tTheGodOfGambling_Award[3304262][1][4]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304262][1][4]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304262][1][4]["RewardEffect"]["Effect"] = "touzi_4"
	tTheGodOfGambling_Award[3304262][1][4]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304262][1][4]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304262][1][4]["RewardItem"][1]["Id"] = 3304322
	tTheGodOfGambling_Award[3304262][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_Award[3304262][1][4]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304262][1][4]["LogStep"] = "2"	
	-- 80气力值礼包*1   11%
	tTheGodOfGambling_Award[3304262][1][5] = {}
	tTheGodOfGambling_Award[3304262][1][5]["RandomItemChanceType"] = 2
	tTheGodOfGambling_Award[3304262][1][5]["ItemChance"] = 1100
	tTheGodOfGambling_Award[3304262][1][5]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304262][1][5]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304262][1][5]["RewardEffect"]["Effect"] = "touzi_5"
	tTheGodOfGambling_Award[3304262][1][5]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304262][1][5]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304262][1][5]["RewardItem"][1]["Id"] = 3304323
	tTheGodOfGambling_Award[3304262][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_Award[3304262][1][5]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304262][1][5]["LogStep"] = "2"	
	-- 1500气力值礼包*1   8.9%      -- 全服公告
	tTheGodOfGambling_Award[3304262][1][6] = {}
	tTheGodOfGambling_Award[3304262][1][6]["TellToAll"] = 1
	tTheGodOfGambling_Award[3304262][1][6]["RandomItemChanceType"] = 2
	tTheGodOfGambling_Award[3304262][1][6]["ItemChance"] = 890
	tTheGodOfGambling_Award[3304262][1][6]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304262][1][6]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304262][1][6]["RewardEffect"]["Effect"] = "touzi_6"
	tTheGodOfGambling_Award[3304262][1][6]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304262][1][6]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304262][1][6]["RewardItem"][1]["Id"] = 3008195
	tTheGodOfGambling_Award[3304262][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_Award[3304262][1][6]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304262][1][6]["LogStep"] = "2"		
	-- 4000气力值礼包*1   0.10%      -- 全服公告
	tTheGodOfGambling_Award[3304262][1][7] = {}
	tTheGodOfGambling_Award[3304262][1][7]["TellToAll"] = 1
	tTheGodOfGambling_Award[3304262][1][7]["RandomItemChanceType"] = 2
	tTheGodOfGambling_Award[3304262][1][7]["ItemChance"] = 10
	tTheGodOfGambling_Award[3304262][1][7]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304262][1][7]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304262][1][7]["RewardEffect"]["Effect"] = "bombarrow"
	tTheGodOfGambling_Award[3304262][1][7]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304262][1][7]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304262][1][7]["RewardItem"][1]["Id"] = 3008199
	tTheGodOfGambling_Award[3304262][1][7]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_Award[3304262][1][7]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304262][1][7]["LogStep"] = "2"		
	
-- 赠点骰子
	tTheGodOfGambling_Award[3304263] = {}
	tTheGodOfGambling_Award[3304263]["TimeLimit"] = 3
	tTheGodOfGambling_Award[3304263]["Touzi"] = 1
	tTheGodOfGambling_Award[3304263]["FromItem"] = 3304263
	tTheGodOfGambling_Award[3304263][1] = {}
	tTheGodOfGambling_Award[3304263][1]["ItemChanceSum"] = 10000
	-- 10赠点礼包*1   25%
	tTheGodOfGambling_Award[3304263][1][1] = {}
	tTheGodOfGambling_Award[3304263][1][1]["RandomItemChanceType"] = 2
	tTheGodOfGambling_Award[3304263][1][1]["ItemChance"] = 2500
	tTheGodOfGambling_Award[3304263][1][1]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304263][1][1]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304263][1][1]["RewardEffect"]["Effect"] = "touzi_1"
	tTheGodOfGambling_Award[3304263][1][1]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304263][1][1]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304263][1][1]["RewardItem"][1]["Id"] = 3304305
	tTheGodOfGambling_Award[3304263][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_Award[3304263][1][1]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304263][1][1]["LogStep"] = "2"	
	-- 20赠点礼包*1   23%
	tTheGodOfGambling_Award[3304263][1][2] = {}
	tTheGodOfGambling_Award[3304263][1][2]["RandomItemChanceType"] = 2
	tTheGodOfGambling_Award[3304263][1][2]["ItemChance"] = 2300
	tTheGodOfGambling_Award[3304263][1][2]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304263][1][2]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304263][1][2]["RewardEffect"]["Effect"] = "touzi_2"
	tTheGodOfGambling_Award[3304263][1][2]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304263][1][2]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304263][1][2]["RewardItem"][1]["Id"] = 3304306
	tTheGodOfGambling_Award[3304263][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_Award[3304263][1][2]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304263][1][2]["LogStep"] = "2"	
	-- 30赠点礼包*1   21%
	tTheGodOfGambling_Award[3304263][1][3] = {}
	tTheGodOfGambling_Award[3304263][1][3]["RandomItemChanceType"] = 2
	tTheGodOfGambling_Award[3304263][1][3]["ItemChance"] = 2100
	tTheGodOfGambling_Award[3304263][1][3]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304263][1][3]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304263][1][3]["RewardEffect"]["Effect"] = "touzi_3"
	tTheGodOfGambling_Award[3304263][1][3]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304263][1][3]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304263][1][3]["RewardItem"][1]["Id"] = 3304307
	tTheGodOfGambling_Award[3304263][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_Award[3304263][1][3]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304263][1][3]["LogStep"] = "2"	
	-- 40赠点礼包*1   16%
	tTheGodOfGambling_Award[3304263][1][4] = {}
	tTheGodOfGambling_Award[3304263][1][4]["RandomItemChanceType"] = 2
	tTheGodOfGambling_Award[3304263][1][4]["ItemChance"] = 1600
	tTheGodOfGambling_Award[3304263][1][4]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304263][1][4]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304263][1][4]["RewardEffect"]["Effect"] = "touzi_4"
	tTheGodOfGambling_Award[3304263][1][4]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304263][1][4]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304263][1][4]["RewardItem"][1]["Id"] = 3304308
	tTheGodOfGambling_Award[3304263][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_Award[3304263][1][4]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304263][1][4]["LogStep"] = "2"	
	-- 50赠点礼包*1   9.40%
	tTheGodOfGambling_Award[3304263][1][5] = {}
	tTheGodOfGambling_Award[3304263][1][5]["RandomItemChanceType"] = 2
	tTheGodOfGambling_Award[3304263][1][5]["ItemChance"] = 940
	tTheGodOfGambling_Award[3304263][1][5]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304263][1][5]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304263][1][5]["RewardEffect"]["Effect"] = "touzi_5"
	tTheGodOfGambling_Award[3304263][1][5]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304263][1][5]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304263][1][5]["RewardItem"][1]["Id"] = 3304309
	tTheGodOfGambling_Award[3304263][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_Award[3304263][1][5]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304263][1][5]["LogStep"] = "2"	
	-- 500赠点礼包*1   5.50%      -- 全服公告
	tTheGodOfGambling_Award[3304263][1][6] = {}
	tTheGodOfGambling_Award[3304263][1][6]["TellToAll"] = 1
	tTheGodOfGambling_Award[3304263][1][6]["RandomItemChanceType"] = 2
	tTheGodOfGambling_Award[3304263][1][6]["ItemChance"] = 550
	tTheGodOfGambling_Award[3304263][1][6]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304263][1][6]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304263][1][6]["RewardEffect"]["Effect"] = "touzi_6"
	tTheGodOfGambling_Award[3304263][1][6]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304263][1][6]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304263][1][6]["RewardItem"][1]["Id"] = 3304311
	tTheGodOfGambling_Award[3304263][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_Award[3304263][1][6]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304263][1][6]["LogStep"] = "2"		
	-- 2000赠点礼包*1   0.10%      -- 全服公告
	tTheGodOfGambling_Award[3304263][1][7] = {}
	tTheGodOfGambling_Award[3304263][1][7]["TellToAll"] = 1
	tTheGodOfGambling_Award[3304263][1][7]["RandomItemChanceType"] = 2
	tTheGodOfGambling_Award[3304263][1][7]["ItemChance"] = 10
	tTheGodOfGambling_Award[3304263][1][7]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304263][1][7]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304263][1][7]["RewardEffect"]["Effect"] = "bombarrow"
	tTheGodOfGambling_Award[3304263][1][7]["RewardEMoneyMono"] = {}
	tTheGodOfGambling_Award[3304263][1][7]["RewardEMoneyMono"]["Value"] = 2000
	tTheGodOfGambling_Award[3304263][1][7]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304263][1][7]["LogStep"] = "2"	
	
--  赤炼石+1包
	tTheGodOfGambling_Award[3304295] = {}
	tTheGodOfGambling_Award[3304295]["UpEmoney"] = 10
	tTheGodOfGambling_Award[3304295]["FiveTime"] = 1
	--  赤炼石+1（赠）
	tTheGodOfGambling_Award[3304295][1] = {}
	tTheGodOfGambling_Award[3304295][1]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304295][1]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304295][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tTheGodOfGambling_Award[3304295][1]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304295][1]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304295][1]["DeleteItem"][1]["Id"] = 3304295
	tTheGodOfGambling_Award[3304295][1]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304295][1]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304295][1]["RewardItem"][1]["Id"] = 730001
	tTheGodOfGambling_Award[3304295][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tTheGodOfGambling_Award[3304295][1]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304295][1]["LogStep"] = "2[1]"
	--  赤炼石+2
	tTheGodOfGambling_Award[3304295][2] = {}
	tTheGodOfGambling_Award[3304295][2]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304295][2]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304295][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tTheGodOfGambling_Award[3304295][2]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304295][2]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304295][2]["DeleteItem"][1]["Id"] = 3304295
	tTheGodOfGambling_Award[3304295][2]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304295][2]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304295][2]["RewardItem"][1]["Id"] = 730002
	tTheGodOfGambling_Award[3304295][2]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_Award[3304295][2]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304295][2]["LogStep"] = "2[2]"
	tTheGodOfGambling_Award[3304295][2]["EmoneyLog"] = "250	4011	10	10	1	"
	
--  赤炼石+2包
	tTheGodOfGambling_Award[3304296] = {}
	tTheGodOfGambling_Award[3304296]["UpEmoney"] = 32
	tTheGodOfGambling_Award[3304296]["FiveTime"] = 1
	--  赤炼石+2（赠）
	tTheGodOfGambling_Award[3304296][1] = {}
	tTheGodOfGambling_Award[3304296][1]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304296][1]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304296][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tTheGodOfGambling_Award[3304296][1]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304296][1]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304296][1]["DeleteItem"][1]["Id"] = 3304296
	tTheGodOfGambling_Award[3304296][1]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304296][1]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304296][1]["RewardItem"][1]["Id"] = 730002
	tTheGodOfGambling_Award[3304296][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tTheGodOfGambling_Award[3304296][1]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304296][1]["LogStep"] = "2[1]"
	--  赤炼石+3
	tTheGodOfGambling_Award[3304296][2] = {}
	tTheGodOfGambling_Award[3304296][2]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304296][2]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304296][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tTheGodOfGambling_Award[3304296][2]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304296][2]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304296][2]["DeleteItem"][1]["Id"] = 3304296
	tTheGodOfGambling_Award[3304296][2]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304296][2]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304296][2]["RewardItem"][1]["Id"] = 730003
	tTheGodOfGambling_Award[3304296][2]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_Award[3304296][2]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304296][2]["LogStep"] = "2[2]"
	tTheGodOfGambling_Award[3304296][2]["EmoneyLog"] = "250	4011	32	32	1	"
	
--  赤炼石+3包
	tTheGodOfGambling_Award[3304297] = {}
	tTheGodOfGambling_Award[3304297]["UpEmoney"] = 105
	tTheGodOfGambling_Award[3304297]["FiveTime"] = 1
	--  赤炼石+3（赠）
	tTheGodOfGambling_Award[3304297][1] = {}
	tTheGodOfGambling_Award[3304297][1]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304297][1]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304297][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tTheGodOfGambling_Award[3304297][1]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304297][1]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304297][1]["DeleteItem"][1]["Id"] = 3304297
	tTheGodOfGambling_Award[3304297][1]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304297][1]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304297][1]["RewardItem"][1]["Id"] = 730003
	tTheGodOfGambling_Award[3304297][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tTheGodOfGambling_Award[3304297][1]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304297][1]["LogStep"] = "2[1]"
	--  赤炼石+4
	tTheGodOfGambling_Award[3304297][2] = {}
	tTheGodOfGambling_Award[3304297][2]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304297][2]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304297][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tTheGodOfGambling_Award[3304297][2]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304297][2]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304297][2]["DeleteItem"][1]["Id"] = 3304297
	tTheGodOfGambling_Award[3304297][2]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304297][2]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304297][2]["RewardItem"][1]["Id"] = 730004
	tTheGodOfGambling_Award[3304297][2]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_Award[3304297][2]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304297][2]["LogStep"] = "2[2]"
	tTheGodOfGambling_Award[3304297][2]["EmoneyLog"] = "250	4011	105	105	1	"
	
--  赤炼石+4包
	tTheGodOfGambling_Award[3304298] = {}
	tTheGodOfGambling_Award[3304298]["UpEmoney"] = 335
	tTheGodOfGambling_Award[3304298]["FiveTime"] = 1
	--  赤炼石+4（赠）
	tTheGodOfGambling_Award[3304298][1] = {}
	tTheGodOfGambling_Award[3304298][1]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304298][1]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304298][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tTheGodOfGambling_Award[3304298][1]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304298][1]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304298][1]["DeleteItem"][1]["Id"] = 3304298
	tTheGodOfGambling_Award[3304298][1]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304298][1]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304298][1]["RewardItem"][1]["Id"] = 730004
	tTheGodOfGambling_Award[3304298][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tTheGodOfGambling_Award[3304298][1]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304298][1]["LogStep"] = "2[1]"
	--  赤炼石+5
	tTheGodOfGambling_Award[3304298][2] = {}
	tTheGodOfGambling_Award[3304298][2]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304298][2]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304298][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tTheGodOfGambling_Award[3304298][2]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304298][2]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304298][2]["DeleteItem"][1]["Id"] = 3304298
	tTheGodOfGambling_Award[3304298][2]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304298][2]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304298][2]["RewardItem"][1]["Id"] = 730005
	tTheGodOfGambling_Award[3304298][2]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_Award[3304298][2]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304298][2]["LogStep"] = "2[2]"
	tTheGodOfGambling_Award[3304298][2]["EmoneyLog"] = "250	4011	335	335	1	"
	
--  赤炼石+5包
	tTheGodOfGambling_Award[3304299] = {}
	tTheGodOfGambling_Award[3304299]["UpEmoney"] = 1050
	tTheGodOfGambling_Award[3304299]["FiveTime"] = 1
	--  赤炼石+5（赠）
	tTheGodOfGambling_Award[3304299][1] = {}
	tTheGodOfGambling_Award[3304299][1]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304299][1]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304299][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tTheGodOfGambling_Award[3304299][1]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304299][1]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304299][1]["DeleteItem"][1]["Id"] = 3304299
	tTheGodOfGambling_Award[3304299][1]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304299][1]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304299][1]["RewardItem"][1]["Id"] = 730005
	tTheGodOfGambling_Award[3304299][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tTheGodOfGambling_Award[3304299][1]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304299][1]["LogStep"] = "2[1]"
	--  赤炼石+6
	tTheGodOfGambling_Award[3304299][2] = {}
	tTheGodOfGambling_Award[3304299][2]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304299][2]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304299][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tTheGodOfGambling_Award[3304299][2]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304299][2]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304299][2]["DeleteItem"][1]["Id"] = 3304299
	tTheGodOfGambling_Award[3304299][2]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304299][2]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304299][2]["RewardItem"][1]["Id"] = 730006
	tTheGodOfGambling_Award[3304299][2]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_Award[3304299][2]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304299][2]["LogStep"] = "2[2]"
	tTheGodOfGambling_Award[3304299][2]["EmoneyLog"] = "250	4011	1050	1050	1	"
	
--  赤炼石+5包    -- 小包产出 全服公告
	tTheGodOfGambling_Award[3304300] = {}
	-- 赤炼石轮盘产出
	tTheGodOfGambling_Award[3304300]["TellToAll"] = 1
	tTheGodOfGambling_Award[3304300]["FromItem"] = 3304264
	tTheGodOfGambling_Award[3304300]["UpEmoney"] = 1050
	tTheGodOfGambling_Award[3304300]["FiveTime"] = 1
	--  赤炼石+5（赠）
	tTheGodOfGambling_Award[3304300][1] = {}
	tTheGodOfGambling_Award[3304300][1]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304300][1]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304300][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tTheGodOfGambling_Award[3304300][1]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304300][1]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304300][1]["DeleteItem"][1]["Id"] = 3304300
	tTheGodOfGambling_Award[3304300][1]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304300][1]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304300][1]["RewardItem"][1]["Id"] = 730005
	tTheGodOfGambling_Award[3304300][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tTheGodOfGambling_Award[3304300][1]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304300][1]["LogStep"] = "2[1]"
	--  赤炼石+6
	tTheGodOfGambling_Award[3304300][2] = {}
	tTheGodOfGambling_Award[3304300][2]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304300][2]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304300][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tTheGodOfGambling_Award[3304300][2]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304300][2]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304300][2]["DeleteItem"][1]["Id"] = 3304300
	tTheGodOfGambling_Award[3304300][2]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304300][2]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304300][2]["RewardItem"][1]["Id"] = 730006
	tTheGodOfGambling_Award[3304300][2]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_Award[3304300][2]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304300][2]["LogStep"] = "2[2]"
	tTheGodOfGambling_Award[3304300][2]["EmoneyLog"] = "250	4011	1050	1050	1	"
	
--  赤炼石+6包        
	-- tTheGodOfGambling_Award[3304259] = {}
	-- tTheGodOfGambling_Award[3304259]["UpEmoney"] = 3250
	-- tTheGodOfGambling_Award[3304259]["FiveTime"] = 1
	-- --  赤炼石+6（赠）
	-- tTheGodOfGambling_Award[3304259][1] = {}
	-- tTheGodOfGambling_Award[3304259][1]["RewardEffect"] = {}
	-- tTheGodOfGambling_Award[3304259][1]["RewardEffect"]["SzObj"] = "self"
	-- tTheGodOfGambling_Award[3304259][1]["RewardEffect"]["Effect"] = "zf2-e128"
	-- tTheGodOfGambling_Award[3304259][1]["DeleteItem"] = {}
	-- tTheGodOfGambling_Award[3304259][1]["DeleteItem"][1] = {}
	-- tTheGodOfGambling_Award[3304259][1]["DeleteItem"][1]["Id"] = 3304259
	-- tTheGodOfGambling_Award[3304259][1]["RewardItem"] = {}
	-- tTheGodOfGambling_Award[3304259][1]["RewardItem"][1] = {}
	-- tTheGodOfGambling_Award[3304259][1]["RewardItem"][1]["Id"] = 730006
	-- tTheGodOfGambling_Award[3304259][1]["RewardItem"][1]["Attr"] = "0 1 3"
	-- tTheGodOfGambling_Award[3304259][1]["LogId"] = 12000795
	-- tTheGodOfGambling_Award[3304259][1]["LogStep"] = "2[1]"
	-- --  赤炼石+7
	-- tTheGodOfGambling_Award[3304259][2] = {}
	-- tTheGodOfGambling_Award[3304259][2]["RewardEffect"] = {}
	-- tTheGodOfGambling_Award[3304259][2]["RewardEffect"]["SzObj"] = "self"
	-- tTheGodOfGambling_Award[3304259][2]["RewardEffect"]["Effect"] = "zf2-e128"
	-- tTheGodOfGambling_Award[3304259][2]["DeleteItem"] = {}
	-- tTheGodOfGambling_Award[3304259][2]["DeleteItem"][1] = {}
	-- tTheGodOfGambling_Award[3304259][2]["DeleteItem"][1]["Id"] = 3304259
	-- tTheGodOfGambling_Award[3304259][2]["RewardItem"] = {}
	-- tTheGodOfGambling_Award[3304259][2]["RewardItem"][1] = {}
	-- tTheGodOfGambling_Award[3304259][2]["RewardItem"][1]["Id"] = 730007
	-- tTheGodOfGambling_Award[3304259][2]["RewardItem"][1]["Attr"] = "0 1"
	-- tTheGodOfGambling_Award[3304259][2]["LogId"] = 12000795
	-- tTheGodOfGambling_Award[3304259][2]["LogStep"] = "2[2]"
	-- tTheGodOfGambling_Award[3304259][2]["EmoneyLog"] = "250	4011	3250	3250	1	"
	
--  赤炼石+6包			-- 全服公告
	tTheGodOfGambling_Award[3304301] = {}
	-- 赤炼石大包产出
	tTheGodOfGambling_Award[3304301]["TellToAll"] = 1
	tTheGodOfGambling_Award[3304301]["FromItem"] = 3304269
	tTheGodOfGambling_Award[3304301]["UpEmoney"] = 3250
	tTheGodOfGambling_Award[3304301]["FiveTime"] = 1
	--  赤炼石+6（赠）
	tTheGodOfGambling_Award[3304301][1] = {}
	tTheGodOfGambling_Award[3304301][1]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304301][1]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304301][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tTheGodOfGambling_Award[3304301][1]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304301][1]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304301][1]["DeleteItem"][1]["Id"] = 3304301
	tTheGodOfGambling_Award[3304301][1]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304301][1]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304301][1]["RewardItem"][1]["Id"] = 730006
	tTheGodOfGambling_Award[3304301][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tTheGodOfGambling_Award[3304301][1]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304301][1]["LogStep"] = "2[1]"
	--  赤炼石+7
	tTheGodOfGambling_Award[3304301][2] = {}
	tTheGodOfGambling_Award[3304301][2]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304301][2]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304301][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tTheGodOfGambling_Award[3304301][2]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304301][2]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304301][2]["DeleteItem"][1]["Id"] = 3304301
	tTheGodOfGambling_Award[3304301][2]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304301][2]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304301][2]["RewardItem"][1]["Id"] = 730007
	tTheGodOfGambling_Award[3304301][2]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_Award[3304301][2]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304301][2]["LogStep"] = "2[2]"
	tTheGodOfGambling_Award[3304301][2]["EmoneyLog"] = "250	4011	3250	3250	1	"
	
--  赤炼石+6包        -- 小包产出  全服公告
	tTheGodOfGambling_Award[3304302] = {}
	-- 赤炼石轮盘产出
	tTheGodOfGambling_Award[3304302]["TellToAll"] = 1
	tTheGodOfGambling_Award[3304302]["FromItem"] = 3304264
	tTheGodOfGambling_Award[3304302]["UpEmoney"] = 3250
	tTheGodOfGambling_Award[3304302]["FiveTime"] = 1
	--  赤炼石+6（赠）
	tTheGodOfGambling_Award[3304302][1] = {}
	tTheGodOfGambling_Award[3304302][1]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304302][1]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304302][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tTheGodOfGambling_Award[3304302][1]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304302][1]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304302][1]["DeleteItem"][1]["Id"] = 3304302
	tTheGodOfGambling_Award[3304302][1]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304302][1]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304302][1]["RewardItem"][1]["Id"] = 730006
	tTheGodOfGambling_Award[3304302][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tTheGodOfGambling_Award[3304302][1]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304302][1]["LogStep"] = "2[1]"
	--  赤炼石+7
	tTheGodOfGambling_Award[3304302][2] = {}
	tTheGodOfGambling_Award[3304302][2]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304302][2]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304302][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tTheGodOfGambling_Award[3304302][2]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304302][2]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304302][2]["DeleteItem"][1]["Id"] = 3304302
	tTheGodOfGambling_Award[3304302][2]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304302][2]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304302][2]["RewardItem"][1]["Id"] = 730007
	tTheGodOfGambling_Award[3304302][2]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_Award[3304302][2]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304302][2]["LogStep"] = "2[2]"
	tTheGodOfGambling_Award[3304302][2]["EmoneyLog"] = "250	4011	3250	3250	1	"

--  赤炼石+7包		-- 全服公告
	tTheGodOfGambling_Award[3304303] = {}
	-- 赤炼石大包产出
	tTheGodOfGambling_Award[3304303]["TellToAll"] = 1
	tTheGodOfGambling_Award[3304303]["FromItem"] = 3304269
	tTheGodOfGambling_Award[3304303]["UpEmoney"] = 9800
	tTheGodOfGambling_Award[3304303]["FiveTime"] = 1
	--  赤炼石+7（赠）
	tTheGodOfGambling_Award[3304303][1] = {}
	tTheGodOfGambling_Award[3304303][1]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304303][1]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304303][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tTheGodOfGambling_Award[3304303][1]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304303][1]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304303][1]["DeleteItem"][1]["Id"] = 3304303
	tTheGodOfGambling_Award[3304303][1]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304303][1]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304303][1]["RewardItem"][1]["Id"] = 730007
	tTheGodOfGambling_Award[3304303][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tTheGodOfGambling_Award[3304303][1]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304303][1]["LogStep"] = "2[1]"
	--  赤炼石+8
	tTheGodOfGambling_Award[3304303][2] = {}
	tTheGodOfGambling_Award[3304303][2]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304303][2]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304303][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tTheGodOfGambling_Award[3304303][2]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304303][2]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304303][2]["DeleteItem"][1]["Id"] = 3304303
	tTheGodOfGambling_Award[3304303][2]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304303][2]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304303][2]["RewardItem"][1]["Id"] = 730008
	tTheGodOfGambling_Award[3304303][2]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_Award[3304303][2]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304303][2]["LogStep"] = "2[2]"
	tTheGodOfGambling_Award[3304303][2]["EmoneyLog"] = "250	4011	9800	9800	1	"
	
--  赤炼石+8包		-- 全服公告
	tTheGodOfGambling_Award[3304304] = {}
	-- 赤炼石大包产出
	tTheGodOfGambling_Award[3304304]["TellToAll"] = 1
	tTheGodOfGambling_Award[3304304]["FromItem"] = 3304269
	tTheGodOfGambling_Award[3304304]["UpEmoney"] = 15800
	tTheGodOfGambling_Award[3304304]["FiveTime"] = 1
	--  赤炼石+8（赠）
	tTheGodOfGambling_Award[3304304][1] = {}
	tTheGodOfGambling_Award[3304304][1]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304304][1]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304304][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tTheGodOfGambling_Award[3304304][1]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304304][1]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304304][1]["DeleteItem"][1]["Id"] = 3304304
	tTheGodOfGambling_Award[3304304][1]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304304][1]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304304][1]["RewardItem"][1]["Id"] = 730008
	tTheGodOfGambling_Award[3304304][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tTheGodOfGambling_Award[3304304][1]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304304][1]["LogStep"] = "2[1]"
	--  赤炼石+8*2
	tTheGodOfGambling_Award[3304304][2] = {}
	tTheGodOfGambling_Award[3304304][2]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304304][2]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304304][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tTheGodOfGambling_Award[3304304][2]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304304][2]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304304][2]["DeleteItem"][1]["Id"] = 3304304
	tTheGodOfGambling_Award[3304304][2]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304304][2]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304304][2]["RewardItem"][1]["Id"] = 730008
	tTheGodOfGambling_Award[3304304][2]["RewardItem"][1]["Attr"] = "0 2"
	tTheGodOfGambling_Award[3304304][2]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304304][2]["LogStep"] = "2[2]"
	tTheGodOfGambling_Award[3304304][2]["EmoneyLog"] = "250	4011	15800	15800	1	"
	
--  微光星陨石包
	tTheGodOfGambling_Award[3304337] = {}
	tTheGodOfGambling_Award[3304337]["OverTimeDel"] = 1
	tTheGodOfGambling_Award[3304337]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304337]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304337]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304337]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304337]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304337]["DeleteItem"][1]["Id"] = 3304337
	tTheGodOfGambling_Award[3304337]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304337]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304337]["RewardItem"][1]["Id"] = 3009000
	tTheGodOfGambling_Award[3304337]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tTheGodOfGambling_Award[3304337]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304337]["LogStep"] = "2"
	
--  微光星陨石*2包
	tTheGodOfGambling_Award[3304338] = {}
	tTheGodOfGambling_Award[3304338]["OverTimeDel"] = 1
	tTheGodOfGambling_Award[3304338]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304338]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304338]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304338]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304338]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304338]["DeleteItem"][1]["Id"] = 3304338
	tTheGodOfGambling_Award[3304338]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304338]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304338]["RewardItem"][1]["Id"] = 3009000
	tTheGodOfGambling_Award[3304338]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	tTheGodOfGambling_Award[3304338]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304338]["LogStep"] = "2"
	
--  微光星陨石*3包
	tTheGodOfGambling_Award[3304339] = {}
	tTheGodOfGambling_Award[3304339]["OverTimeDel"] = 1
	tTheGodOfGambling_Award[3304339]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304339]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304339]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304339]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304339]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304339]["DeleteItem"][1]["Id"] = 3304339
	tTheGodOfGambling_Award[3304339]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304339]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304339]["RewardItem"][1]["Id"] = 3009000
	tTheGodOfGambling_Award[3304339]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tTheGodOfGambling_Award[3304339]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304339]["LogStep"] = "2"
	
--  微光星陨石*4包
	tTheGodOfGambling_Award[3304340] = {}
	tTheGodOfGambling_Award[3304340]["OverTimeDel"] = 1
	tTheGodOfGambling_Award[3304340]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304340]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304340]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304340]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304340]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304340]["DeleteItem"][1]["Id"] = 3304340
	tTheGodOfGambling_Award[3304340]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304340]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304340]["RewardItem"][1]["Id"] = 3009000
	tTheGodOfGambling_Award[3304340]["RewardItem"][1]["Attr"] = "0 4 0 2880 1"
	tTheGodOfGambling_Award[3304340]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304340]["LogStep"] = "2"
	
--  微光星陨石*5包
	tTheGodOfGambling_Award[3304341] = {}
	tTheGodOfGambling_Award[3304341]["OverTimeDel"] = 1
	tTheGodOfGambling_Award[3304341]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304341]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304341]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304341]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304341]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304341]["DeleteItem"][1]["Id"] = 3304341
	tTheGodOfGambling_Award[3304341]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304341]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304341]["RewardItem"][1]["Id"] = 3009000
	tTheGodOfGambling_Award[3304341]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	tTheGodOfGambling_Award[3304341]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304341]["LogStep"] = "2"
	
--  微光星陨石*6包
	tTheGodOfGambling_Award[3304342] = {}
	tTheGodOfGambling_Award[3304342]["OverTimeDel"] = 1
	tTheGodOfGambling_Award[3304342]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304342]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304342]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304342]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304342]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304342]["DeleteItem"][1]["Id"] = 3304342
	tTheGodOfGambling_Award[3304342]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304342]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304342]["RewardItem"][1]["Id"] = 3009000
	tTheGodOfGambling_Award[3304342]["RewardItem"][1]["Attr"] = "0 6 0 2880 1"
	tTheGodOfGambling_Award[3304342]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304342]["LogStep"] = "2"
	
--  明亮星陨石包
	tTheGodOfGambling_Award[3304343] = {}
	tTheGodOfGambling_Award[3304343]["OverTimeDel"] = 1
	tTheGodOfGambling_Award[3304343]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304343]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304343]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304343]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304343]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304343]["DeleteItem"][1]["Id"] = 3304343
	tTheGodOfGambling_Award[3304343]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304343]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304343]["RewardItem"][1]["Id"] = 3009001
	tTheGodOfGambling_Award[3304343]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tTheGodOfGambling_Award[3304343]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304343]["LogStep"] = "2"
	
--  明亮星陨石*2包
	tTheGodOfGambling_Award[3304344] = {}
	tTheGodOfGambling_Award[3304344]["OverTimeDel"] = 1
	tTheGodOfGambling_Award[3304344]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304344]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304344]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304344]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304344]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304344]["DeleteItem"][1]["Id"] = 3304344
	tTheGodOfGambling_Award[3304344]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304344]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304344]["RewardItem"][1]["Id"] = 3009001
	tTheGodOfGambling_Award[3304344]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	tTheGodOfGambling_Award[3304344]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304344]["LogStep"] = "2"
	
--  明亮星陨石*3包
	tTheGodOfGambling_Award[3304345] = {}
	tTheGodOfGambling_Award[3304345]["OverTimeDel"] = 1
	tTheGodOfGambling_Award[3304345]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304345]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304345]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304345]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304345]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304345]["DeleteItem"][1]["Id"] = 3304345
	tTheGodOfGambling_Award[3304345]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304345]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304345]["RewardItem"][1]["Id"] = 3009001
	tTheGodOfGambling_Award[3304345]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tTheGodOfGambling_Award[3304345]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304345]["LogStep"] = "2"
	
--  明亮星陨石*5包
	tTheGodOfGambling_Award[3304346] = {}
	tTheGodOfGambling_Award[3304346]["OverTimeDel"] = 1
	tTheGodOfGambling_Award[3304346]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304346]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304346]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304346]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304346]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304346]["DeleteItem"][1]["Id"] = 3304346
	tTheGodOfGambling_Award[3304346]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304346]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304346]["RewardItem"][1]["Id"] = 3009001
	tTheGodOfGambling_Award[3304346]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	tTheGodOfGambling_Award[3304346]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304346]["LogStep"] = "2"
	
--  晶莹星陨石*1包
	tTheGodOfGambling_Award[3304347] = {}
	tTheGodOfGambling_Award[3304347]["OverTimeDel"] = 1
	tTheGodOfGambling_Award[3304347]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304347]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304347]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304347]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304347]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304347]["DeleteItem"][1]["Id"] = 3304347
	tTheGodOfGambling_Award[3304347]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304347]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304347]["RewardItem"][1]["Id"] = 3009002
	tTheGodOfGambling_Award[3304347]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tTheGodOfGambling_Award[3304347]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304347]["LogStep"] = "2"
	
--  晶莹星陨石*1包     
	tTheGodOfGambling_Award[3304348] = {}
	-- 星陨石轮盘产出
	tTheGodOfGambling_Award[3304348]["TellToAll"] = 1
	tTheGodOfGambling_Award[3304348]["FromItem"] = 3304265
	tTheGodOfGambling_Award[3304348]["OverTimeDel"] = 1
	tTheGodOfGambling_Award[3304348]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304348]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304348]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304348]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304348]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304348]["DeleteItem"][1]["Id"] = 3304348
	tTheGodOfGambling_Award[3304348]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304348]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304348]["RewardItem"][1]["Id"] = 3009002
	tTheGodOfGambling_Award[3304348]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tTheGodOfGambling_Award[3304348]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304348]["LogStep"] = "2"
	
--  晶莹星陨石*2包
	tTheGodOfGambling_Award[3304349] = {}
	tTheGodOfGambling_Award[3304349]["OverTimeDel"] = 1
	tTheGodOfGambling_Award[3304349]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304349]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304349]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304349]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304349]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304349]["DeleteItem"][1]["Id"] = 3304349
	tTheGodOfGambling_Award[3304349]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304349]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304349]["RewardItem"][1]["Id"] = 3009002
	tTheGodOfGambling_Award[3304349]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	tTheGodOfGambling_Award[3304349]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304349]["LogStep"] = "2"
	
--  晶莹星陨石*5包    -- 全服公告
	tTheGodOfGambling_Award[3304350] = {}
	-- 星陨石大包产出
	tTheGodOfGambling_Award[3304350]["TellToAll"] = 1
	tTheGodOfGambling_Award[3304350]["FromItem"] = 3304270
	tTheGodOfGambling_Award[3304350]["OverTimeDel"] = 1
	tTheGodOfGambling_Award[3304350]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304350]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304350]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304350]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304350]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304350]["DeleteItem"][1]["Id"] = 3304350
	tTheGodOfGambling_Award[3304350]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304350]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304350]["RewardItem"][1]["Id"] = 3009002
	tTheGodOfGambling_Award[3304350]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	tTheGodOfGambling_Award[3304350]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304350]["LogStep"] = "2"
	
--  璀璨星陨石*1包		-- 全服公告
	tTheGodOfGambling_Award[3304351] = {}
	tTheGodOfGambling_Award[3304351]["OverTimeDel"] = 1
	tTheGodOfGambling_Award[3304351]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304351]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304351]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304351]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304351]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304351]["DeleteItem"][1]["Id"] = 3304351
	tTheGodOfGambling_Award[3304351]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304351]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304351]["RewardItem"][1]["Id"] = 3009003
	tTheGodOfGambling_Award[3304351]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tTheGodOfGambling_Award[3304351]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304351]["LogStep"] = "2"
	
--  璀璨星陨石*1包     
	tTheGodOfGambling_Award[3304352] = {}
	-- 星陨石轮盘产出
	tTheGodOfGambling_Award[3304352]["TellToAll"] = 1
	tTheGodOfGambling_Award[3304352]["FromItem"] = 3304265
	tTheGodOfGambling_Award[3304352]["OverTimeDel"] = 1
	tTheGodOfGambling_Award[3304352]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304352]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304352]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304352]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304352]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304352]["DeleteItem"][1]["Id"] = 3304352
	tTheGodOfGambling_Award[3304352]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304352]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304352]["RewardItem"][1]["Id"] = 3009003
	tTheGodOfGambling_Award[3304352]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tTheGodOfGambling_Award[3304352]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304352]["LogStep"] = "2"
	
--  10赠点包    
	tTheGodOfGambling_Award[3304305] = {}
	tTheGodOfGambling_Award[3304305]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304305]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304305]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304305]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304305]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304305]["DeleteItem"][1]["Id"] = 3304305
	tTheGodOfGambling_Award[3304305]["RewardEMoneyMono"] = {}
	tTheGodOfGambling_Award[3304305]["RewardEMoneyMono"]["Value"] = 10
	tTheGodOfGambling_Award[3304305]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304305]["LogStep"] = "2"
	
--  20赠点包    
	tTheGodOfGambling_Award[3304306] = {}
	tTheGodOfGambling_Award[3304306]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304306]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304306]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304306]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304306]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304306]["DeleteItem"][1]["Id"] = 3304306
	tTheGodOfGambling_Award[3304306]["RewardEMoneyMono"] = {}
	tTheGodOfGambling_Award[3304306]["RewardEMoneyMono"]["Value"] = 20
	tTheGodOfGambling_Award[3304306]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304306]["LogStep"] = "2"
	
--  30赠点包    
	tTheGodOfGambling_Award[3304307] = {}
	tTheGodOfGambling_Award[3304307]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304307]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304307]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304307]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304307]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304307]["DeleteItem"][1]["Id"] = 3304307
	tTheGodOfGambling_Award[3304307]["RewardEMoneyMono"] = {}
	tTheGodOfGambling_Award[3304307]["RewardEMoneyMono"]["Value"] = 30
	tTheGodOfGambling_Award[3304307]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304307]["LogStep"] = "2"
	
--  40赠点包    
	tTheGodOfGambling_Award[3304308] = {}
	tTheGodOfGambling_Award[3304308]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304308]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304308]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304308]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304308]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304308]["DeleteItem"][1]["Id"] = 3304308
	tTheGodOfGambling_Award[3304308]["RewardEMoneyMono"] = {}
	tTheGodOfGambling_Award[3304308]["RewardEMoneyMono"]["Value"] = 40
	tTheGodOfGambling_Award[3304308]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304308]["LogStep"] = "2"
	
--  50赠点包    
	tTheGodOfGambling_Award[3304309] = {}
	tTheGodOfGambling_Award[3304309]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304309]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304309]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304309]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304309]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304309]["DeleteItem"][1]["Id"] = 3304309
	tTheGodOfGambling_Award[3304309]["RewardEMoneyMono"] = {}
	tTheGodOfGambling_Award[3304309]["RewardEMoneyMono"]["Value"] = 50
	tTheGodOfGambling_Award[3304309]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304309]["LogStep"] = "2"
	
--  60赠点包    
	tTheGodOfGambling_Award[3304310] = {}
	tTheGodOfGambling_Award[3304310]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304310]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304310]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304310]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304310]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304310]["DeleteItem"][1]["Id"] = 3304310
	tTheGodOfGambling_Award[3304310]["RewardEMoneyMono"] = {}
	tTheGodOfGambling_Award[3304310]["RewardEMoneyMono"]["Value"] = 60
	tTheGodOfGambling_Award[3304310]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304310]["LogStep"] = "2"
	
--  500赠点包    
	tTheGodOfGambling_Award[3304311] = {}
	tTheGodOfGambling_Award[3304311]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304311]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304311]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304311]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304311]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304311]["DeleteItem"][1]["Id"] = 3304311
	tTheGodOfGambling_Award[3304311]["RewardEMoneyMono"] = {}
	tTheGodOfGambling_Award[3304311]["RewardEMoneyMono"]["Value"] = 500
	tTheGodOfGambling_Award[3304311]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304311]["LogStep"] = "2"
	
--  500赠点包      -- 小包产出   全服公告
	tTheGodOfGambling_Award[3304312] = {}
	-- 赠点转盘产出
	tTheGodOfGambling_Award[3304312]["TellToAll"] = 1
	tTheGodOfGambling_Award[3304312]["FromItem"] = 3304267
	tTheGodOfGambling_Award[3304312]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304312]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304312]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304312]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304312]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304312]["DeleteItem"][1]["Id"] = 3304312
	tTheGodOfGambling_Award[3304312]["RewardEMoneyMono"] = {}
	tTheGodOfGambling_Award[3304312]["RewardEMoneyMono"]["Value"] = 500
	tTheGodOfGambling_Award[3304312]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304312]["LogStep"] = "2"
	
--  1000赠点包    
	tTheGodOfGambling_Award[3304313] = {}
	tTheGodOfGambling_Award[3304313]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304313]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304313]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304313]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304313]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304313]["DeleteItem"][1]["Id"] = 3304313
	tTheGodOfGambling_Award[3304313]["RewardEMoneyMono"] = {}
	tTheGodOfGambling_Award[3304313]["RewardEMoneyMono"]["Value"] = 1000
	tTheGodOfGambling_Award[3304313]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304313]["LogStep"] = "2"
	
--  2000赠点包    
	tTheGodOfGambling_Award[3304314] = {}
	-- 赠点大包产出
	tTheGodOfGambling_Award[3304314]["TellToAll"] = 1
	tTheGodOfGambling_Award[3304314]["FromItem"] = 3304271
	tTheGodOfGambling_Award[3304314]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304314]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304314]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304314]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304314]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304314]["DeleteItem"][1]["Id"] = 3304314
	tTheGodOfGambling_Award[3304314]["RewardEMoneyMono"] = {}
	tTheGodOfGambling_Award[3304314]["RewardEMoneyMono"]["Value"] = 2000
	tTheGodOfGambling_Award[3304314]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304314]["LogStep"] = "2"
	
--  2000赠点包    -- 小包产出  全服公告
	tTheGodOfGambling_Award[3304315] = {}
	-- 赠点轮盘产出
	tTheGodOfGambling_Award[3304315]["TellToAll"] = 1
	tTheGodOfGambling_Award[3304315]["FromItem"] = 3304267
	tTheGodOfGambling_Award[3304315]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304315]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304315]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304315]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304315]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304315]["DeleteItem"][1]["Id"] = 3304315
	tTheGodOfGambling_Award[3304315]["RewardEMoneyMono"] = {}
	tTheGodOfGambling_Award[3304315]["RewardEMoneyMono"]["Value"] = 2000
	tTheGodOfGambling_Award[3304315]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304315]["LogStep"] = "2"
	
--  5000赠点包    -- 全服公告
	tTheGodOfGambling_Award[3304316] = {}
	-- 赠点大包产出
	tTheGodOfGambling_Award[3304316]["TellToAll"] = 1
	tTheGodOfGambling_Award[3304316]["FromItem"] = 3304271
	tTheGodOfGambling_Award[3304316]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304316]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304316]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304316]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304316]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304316]["DeleteItem"][1]["Id"] = 3304316
	tTheGodOfGambling_Award[3304316]["RewardEMoneyMono"] = {}
	tTheGodOfGambling_Award[3304316]["RewardEMoneyMono"]["Value"] = 5000
	tTheGodOfGambling_Award[3304316]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304316]["LogStep"] = "2"
	
--  10气力值包    
	tTheGodOfGambling_Award[3304317] = {}
	tTheGodOfGambling_Award[3304317]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304317]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304317]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304317]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304317]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304317]["DeleteItem"][1]["Id"] = 3304317
	tTheGodOfGambling_Award[3304317]["RewardStrengthValue"] = {}
	tTheGodOfGambling_Award[3304317]["RewardStrengthValue"]["Value"] = 10
	tTheGodOfGambling_Award[3304317]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304317]["LogStep"] = "2"
	
--  20气力值包    
	tTheGodOfGambling_Award[3304318] = {}
	tTheGodOfGambling_Award[3304318]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304318]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304318]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304318]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304318]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304318]["DeleteItem"][1]["Id"] = 3304318
	tTheGodOfGambling_Award[3304318]["RewardStrengthValue"] = {}
	tTheGodOfGambling_Award[3304318]["RewardStrengthValue"]["Value"] = 20
	tTheGodOfGambling_Award[3304318]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304318]["LogStep"] = "2"
	
--  30气力值包    
	tTheGodOfGambling_Award[3304319] = {}
	tTheGodOfGambling_Award[3304319]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304319]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304319]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304319]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304319]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304319]["DeleteItem"][1]["Id"] = 3304319
	tTheGodOfGambling_Award[3304319]["RewardStrengthValue"] = {}
	tTheGodOfGambling_Award[3304319]["RewardStrengthValue"]["Value"] = 30
	tTheGodOfGambling_Award[3304319]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304319]["LogStep"] = "2"
	
--  40气力值包    
	tTheGodOfGambling_Award[3304320] = {}
	tTheGodOfGambling_Award[3304320]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304320]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304320]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304320]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304320]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304320]["DeleteItem"][1]["Id"] = 3304320
	tTheGodOfGambling_Award[3304320]["RewardStrengthValue"] = {}
	tTheGodOfGambling_Award[3304320]["RewardStrengthValue"]["Value"] = 40
	tTheGodOfGambling_Award[3304320]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304320]["LogStep"] = "2"
	
--  50气力值包    
	tTheGodOfGambling_Award[3304321] = {}
	tTheGodOfGambling_Award[3304321]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304321]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304321]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304321]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304321]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304321]["DeleteItem"][1]["Id"] = 3304321
	tTheGodOfGambling_Award[3304321]["RewardStrengthValue"] = {}
	tTheGodOfGambling_Award[3304321]["RewardStrengthValue"]["Value"] = 50
	tTheGodOfGambling_Award[3304321]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304321]["LogStep"] = "2"
	
--  60气力值包    
	tTheGodOfGambling_Award[3304322] = {}
	tTheGodOfGambling_Award[3304322]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304322]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304322]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304322]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304322]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304322]["DeleteItem"][1]["Id"] = 3304322
	tTheGodOfGambling_Award[3304322]["RewardStrengthValue"] = {}
	tTheGodOfGambling_Award[3304322]["RewardStrengthValue"]["Value"] = 60
	tTheGodOfGambling_Award[3304322]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304322]["LogStep"] = "2"
	
--  80气力值包    
	tTheGodOfGambling_Award[3304323] = {}
	tTheGodOfGambling_Award[3304323]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304323]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304323]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304323]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304323]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304323]["DeleteItem"][1]["Id"] = 3304323
	tTheGodOfGambling_Award[3304323]["RewardStrengthValue"] = {}
	tTheGodOfGambling_Award[3304323]["RewardStrengthValue"]["Value"] = 80
	tTheGodOfGambling_Award[3304323]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304323]["LogStep"] = "2"
	
--  100气力值包    
	tTheGodOfGambling_Award[3304324] = {}
	tTheGodOfGambling_Award[3304324]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304324]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304324]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304324]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304324]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304324]["DeleteItem"][1]["Id"] = 3304324
	tTheGodOfGambling_Award[3304324]["RewardStrengthValue"] = {}
	tTheGodOfGambling_Award[3304324]["RewardStrengthValue"]["Value"] = 100
	tTheGodOfGambling_Award[3304324]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304324]["LogStep"] = "2"
	
--  100赠点天石包            
	tTheGodOfGambling_Award[3304415] = {}
	tTheGodOfGambling_Award[3304415]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304415]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304415]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304415]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304415]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304415]["DeleteItem"][1]["Id"] = 3304415
	tTheGodOfGambling_Award[3304415]["RewardEMoneyMono"] = {}
	tTheGodOfGambling_Award[3304415]["RewardEMoneyMono"]["Value"] = 100
	tTheGodOfGambling_Award[3304415]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304415]["LogStep"] = "2"
	                        
--  150赠点天石包            
	tTheGodOfGambling_Award[3304325] = {}
	tTheGodOfGambling_Award[3304325]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304325]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304325]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304325]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304325]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304325]["DeleteItem"][1]["Id"] = 3304325
	tTheGodOfGambling_Award[3304325]["RewardEMoneyMono"] = {}
	tTheGodOfGambling_Award[3304325]["RewardEMoneyMono"]["Value"] = 150
	tTheGodOfGambling_Award[3304325]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304325]["LogStep"] = "2"
	                        
--  300赠点天石包             
	tTheGodOfGambling_Award[3304326] = {}
	tTheGodOfGambling_Award[3304326]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304326]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304326]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304326]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304326]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304326]["DeleteItem"][1]["Id"] = 3304326
	tTheGodOfGambling_Award[3304326]["RewardEMoneyMono"] = {}
	tTheGodOfGambling_Award[3304326]["RewardEMoneyMono"]["Value"] = 300
	tTheGodOfGambling_Award[3304326]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304326]["LogStep"] = "2"
	
--  800赠点天石包            
	tTheGodOfGambling_Award[3304416] = {}
	tTheGodOfGambling_Award[3304416]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304416]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304416]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304416]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304416]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304416]["DeleteItem"][1]["Id"] = 3304416
	tTheGodOfGambling_Award[3304416]["RewardEMoneyMono"] = {}
	tTheGodOfGambling_Award[3304416]["RewardEMoneyMono"]["Value"] = 800
	tTheGodOfGambling_Award[3304416]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304416]["LogStep"] = "2"
	
--  300气力值包    
	tTheGodOfGambling_Award[3304327] = {}
	tTheGodOfGambling_Award[3304327]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304327]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304327]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304327]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304327]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304327]["DeleteItem"][1]["Id"] = 3304327
	tTheGodOfGambling_Award[3304327]["RewardStrengthValue"] = {}
	tTheGodOfGambling_Award[3304327]["RewardStrengthValue"]["Value"] = 300
	tTheGodOfGambling_Award[3304327]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304327]["LogStep"] = "2"
	
--  500气力值包    
	tTheGodOfGambling_Award[3304328] = {}
	tTheGodOfGambling_Award[3304328]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304328]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304328]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304328]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304328]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304328]["DeleteItem"][1]["Id"] = 3304328
	tTheGodOfGambling_Award[3304328]["RewardStrengthValue"] = {}
	tTheGodOfGambling_Award[3304328]["RewardStrengthValue"]["Value"] = 500
	tTheGodOfGambling_Award[3304328]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304328]["LogStep"] = "2"
	
--  800气力值包    
	tTheGodOfGambling_Award[3304329] = {}
	tTheGodOfGambling_Award[3304329]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304329]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304329]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304329]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304329]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304329]["DeleteItem"][1]["Id"] = 3304329
	tTheGodOfGambling_Award[3304329]["RewardStrengthValue"] = {}
	tTheGodOfGambling_Award[3304329]["RewardStrengthValue"]["Value"] = 800
	tTheGodOfGambling_Award[3304329]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304329]["LogStep"] = "2"
	
--  1000气力值包     
	tTheGodOfGambling_Award[3304330] = {}
	tTheGodOfGambling_Award[3304330]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304330]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304330]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304330]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304330]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304330]["DeleteItem"][1]["Id"] = 3304330
	tTheGodOfGambling_Award[3304330]["RewardStrengthValue"] = {}
	tTheGodOfGambling_Award[3304330]["RewardStrengthValue"]["Value"] = 1000
	tTheGodOfGambling_Award[3304330]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304330]["LogStep"] = "2"
	
--  1000气力值包     -- 小包产出   全服公告
	tTheGodOfGambling_Award[3304331] = {}
	-- 气力值轮盘产出
	tTheGodOfGambling_Award[3304331]["TellToAll"] = 1
	tTheGodOfGambling_Award[3304331]["FromItem"] = 3304266
	tTheGodOfGambling_Award[3304331]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304331]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304331]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304331]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304331]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304331]["DeleteItem"][1]["Id"] = 3304331
	tTheGodOfGambling_Award[3304331]["RewardStrengthValue"] = {}
	tTheGodOfGambling_Award[3304331]["RewardStrengthValue"]["Value"] = 1000
	tTheGodOfGambling_Award[3304331]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304331]["LogStep"] = "2"
	
--  2000气力值包    
	tTheGodOfGambling_Award[3304332] = {}
	tTheGodOfGambling_Award[3304332]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304332]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304332]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304332]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304332]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304332]["DeleteItem"][1]["Id"] = 3304332
	tTheGodOfGambling_Award[3304332]["RewardStrengthValue"] = {}
	tTheGodOfGambling_Award[3304332]["RewardStrengthValue"]["Value"] = 2000
	tTheGodOfGambling_Award[3304332]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304332]["LogStep"] = "2"
	
--  3000气力值包    -- 全服公告
	tTheGodOfGambling_Award[3304333] = {}
	tTheGodOfGambling_Award[3304333]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304333]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304333]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304333]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304333]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304333]["DeleteItem"][1]["Id"] = 3304333
	tTheGodOfGambling_Award[3304333]["RewardStrengthValue"] = {}
	tTheGodOfGambling_Award[3304333]["RewardStrengthValue"]["Value"] = 3000
	tTheGodOfGambling_Award[3304333]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304333]["LogStep"] = "2"
	
--  3000气力值包    -- 大包产出  全服公告
	tTheGodOfGambling_Award[3304334] = {}
	-- 气力值轮盘产出
	tTheGodOfGambling_Award[3304334]["TellToAll"] = 1
	tTheGodOfGambling_Award[3304334]["FromItem"] = 3304266
	tTheGodOfGambling_Award[3304334]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304334]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304334]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304334]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304334]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304334]["DeleteItem"][1]["Id"] = 3304334
	tTheGodOfGambling_Award[3304334]["RewardStrengthValue"] = {}
	tTheGodOfGambling_Award[3304334]["RewardStrengthValue"]["Value"] = 3000
	tTheGodOfGambling_Award[3304334]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304334]["LogStep"] = "2"
	
--  5000气力值包    -- 全服公告
	tTheGodOfGambling_Award[3304335] = {}
	-- 气力值大包产出
	tTheGodOfGambling_Award[3304335]["TellToAll"] = 1
	tTheGodOfGambling_Award[3304335]["FromItem"] = 3304268
	tTheGodOfGambling_Award[3304335]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304335]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304335]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304335]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304335]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304335]["DeleteItem"][1]["Id"] = 3304335
	tTheGodOfGambling_Award[3304335]["RewardStrengthValue"] = {}
	tTheGodOfGambling_Award[3304335]["RewardStrengthValue"]["Value"] = 5000
	tTheGodOfGambling_Award[3304335]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304335]["LogStep"] = "2"
	
--  10000气力值包    -- 全服公告
	tTheGodOfGambling_Award[3304336] = {}
	-- 气力值大包产出
	tTheGodOfGambling_Award[3304336]["TellToAll"] = 1
	tTheGodOfGambling_Award[3304336]["FromItem"] = 3304268
	tTheGodOfGambling_Award[3304336]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304336]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304336]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304336]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304336]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304336]["DeleteItem"][1]["Id"] = 3304336
	tTheGodOfGambling_Award[3304336]["RewardStrengthValue"] = {}
	tTheGodOfGambling_Award[3304336]["RewardStrengthValue"]["Value"] = 10000
	tTheGodOfGambling_Award[3304336]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304336]["LogStep"] = "2"
	
--  红桃10    微光星陨石*2
	tTheGodOfGambling_Award[3304273] = {}
	tTheGodOfGambling_Award[3304273]["OverTimeDel"] = 1
	tTheGodOfGambling_Award[3304273]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304273]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304273]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304273]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304273]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304273]["DeleteItem"][1]["Id"] = 3304273
	tTheGodOfGambling_Award[3304273]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304273]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304273]["RewardItem"][1]["Id"] = 3009000
	tTheGodOfGambling_Award[3304273]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	tTheGodOfGambling_Award[3304273]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304273]["LogStep"] = "2"
	
--  红桃J   微光星陨石*3
	tTheGodOfGambling_Award[3304274] = {}
	tTheGodOfGambling_Award[3304274]["OverTimeDel"] = 1
	tTheGodOfGambling_Award[3304274]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304274]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304274]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304274]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304274]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304274]["DeleteItem"][1]["Id"] = 3304274
	tTheGodOfGambling_Award[3304274]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304274]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304274]["RewardItem"][1]["Id"] = 3009000
	tTheGodOfGambling_Award[3304274]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tTheGodOfGambling_Award[3304274]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304274]["LogStep"] = "2"
	
--  红桃Q   微光星陨石*4
	tTheGodOfGambling_Award[3304275] = {}
	tTheGodOfGambling_Award[3304275]["OverTimeDel"] = 1
	tTheGodOfGambling_Award[3304275]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304275]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304275]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304275]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304275]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304275]["DeleteItem"][1]["Id"] = 3304275
	tTheGodOfGambling_Award[3304275]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304275]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304275]["RewardItem"][1]["Id"] = 3009000
	tTheGodOfGambling_Award[3304275]["RewardItem"][1]["Attr"] = "0 4 0 2880 1"
	tTheGodOfGambling_Award[3304275]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304275]["LogStep"] = "2"
	
--  红桃K   微光星陨石*5
	tTheGodOfGambling_Award[3304276] = {}
	tTheGodOfGambling_Award[3304276]["OverTimeDel"] = 1
	tTheGodOfGambling_Award[3304276]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304276]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304276]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304276]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304276]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304276]["DeleteItem"][1]["Id"] = 3304276
	tTheGodOfGambling_Award[3304276]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304276]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304276]["RewardItem"][1]["Id"] = 3009000
	tTheGodOfGambling_Award[3304276]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	tTheGodOfGambling_Award[3304276]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304276]["LogStep"] = "2"
	
--  红桃A   晶莹星陨石*1   全服公告
	tTheGodOfGambling_Award[3304277] = {}
	tTheGodOfGambling_Award[3304277]["OverTimeDel"] = 1
	tTheGodOfGambling_Award[3304277]["TellToAll"] = 1
	tTheGodOfGambling_Award[3304277]["FromItem"] = 3304272
	tTheGodOfGambling_Award[3304277]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304277]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304277]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304277]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304277]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304277]["DeleteItem"][1]["Id"] = 3304277
	tTheGodOfGambling_Award[3304277]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304277]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304277]["RewardItem"][1]["Id"] = 3009002
	tTheGodOfGambling_Award[3304277]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tTheGodOfGambling_Award[3304277]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304277]["LogStep"] = "2"
	
--  方块10    20赠点
	tTheGodOfGambling_Award[3304278] = {}
	tTheGodOfGambling_Award[3304278]["OverTimeDel"] = 1
	tTheGodOfGambling_Award[3304278]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304278]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304278]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304278]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304278]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304278]["DeleteItem"][1]["Id"] = 3304278
	tTheGodOfGambling_Award[3304278]["RewardEMoneyMono"] = {}
	tTheGodOfGambling_Award[3304278]["RewardEMoneyMono"]["Value"] = 20
	tTheGodOfGambling_Award[3304278]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304278]["LogStep"] = "2"
	
--  方块J   30赠点
	tTheGodOfGambling_Award[3304279] = {}
	tTheGodOfGambling_Award[3304279]["OverTimeDel"] = 1
	tTheGodOfGambling_Award[3304279]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304279]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304279]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304279]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304279]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304279]["DeleteItem"][1]["Id"] = 3304279
	tTheGodOfGambling_Award[3304279]["RewardEMoneyMono"] = {}
	tTheGodOfGambling_Award[3304279]["RewardEMoneyMono"]["Value"] = 30
	tTheGodOfGambling_Award[3304279]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304279]["LogStep"] = "2"
	
--  方块Q   40赠点
	tTheGodOfGambling_Award[3304280] = {}
	tTheGodOfGambling_Award[3304280]["OverTimeDel"] = 1
	tTheGodOfGambling_Award[3304280]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304280]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304280]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304280]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304280]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304280]["DeleteItem"][1]["Id"] = 3304280
	tTheGodOfGambling_Award[3304280]["RewardEMoneyMono"] = {}
	tTheGodOfGambling_Award[3304280]["RewardEMoneyMono"]["Value"] = 40
	tTheGodOfGambling_Award[3304280]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304280]["LogStep"] = "2"
	
--  方块K   50赠点
	tTheGodOfGambling_Award[3304281] = {}
	tTheGodOfGambling_Award[3304281]["OverTimeDel"] = 1
	tTheGodOfGambling_Award[3304281]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304281]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304281]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304281]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304281]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304281]["DeleteItem"][1]["Id"] = 3304281
	tTheGodOfGambling_Award[3304281]["RewardEMoneyMono"] = {}
	tTheGodOfGambling_Award[3304281]["RewardEMoneyMono"]["Value"] = 50
	tTheGodOfGambling_Award[3304281]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304281]["LogStep"] = "2"
	
--  方块A   500赠点
	tTheGodOfGambling_Award[3304282] = {}
	tTheGodOfGambling_Award[3304282]["OverTimeDel"] = 1
	tTheGodOfGambling_Award[3304282]["TellToAll"] = 1
	tTheGodOfGambling_Award[3304282]["FromItem"] = 3304272
	tTheGodOfGambling_Award[3304282]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304282]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304282]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304282]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304282]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304282]["DeleteItem"][1]["Id"] = 3304282
	tTheGodOfGambling_Award[3304282]["RewardEMoneyMono"] = {}
	tTheGodOfGambling_Award[3304282]["RewardEMoneyMono"]["Value"] = 500
	tTheGodOfGambling_Award[3304282]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304282]["LogStep"] = "2"

--  草花10    赤炼石+1*2
	tTheGodOfGambling_Award[3304283] = {}
	tTheGodOfGambling_Award[3304283]["OverTimeDel"] = 1
	tTheGodOfGambling_Award[3304283]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304283]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304283]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304283]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304283]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304283]["DeleteItem"][1]["Id"] = 3304283
	tTheGodOfGambling_Award[3304283]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304283]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304283]["RewardItem"][1]["Id"] = 730001
	tTheGodOfGambling_Award[3304283]["RewardItem"][1]["Attr"] = "0 2 3"
	tTheGodOfGambling_Award[3304283]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304283]["LogStep"] = "2"
	
--  草花J   赤炼石+1*3
	tTheGodOfGambling_Award[3304284] = {}
	tTheGodOfGambling_Award[3304284]["OverTimeDel"] = 1
	tTheGodOfGambling_Award[3304284]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304284]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304284]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304284]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304284]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304284]["DeleteItem"][1]["Id"] = 3304284
	tTheGodOfGambling_Award[3304284]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304284]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304284]["RewardItem"][1]["Id"] = 730001
	tTheGodOfGambling_Award[3304284]["RewardItem"][1]["Attr"] = "0 3 3"
	tTheGodOfGambling_Award[3304284]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304284]["LogStep"] = "2"
	
--  草花Q   赤炼石+1*4
	tTheGodOfGambling_Award[3304285] = {}
	tTheGodOfGambling_Award[3304285]["OverTimeDel"] = 1
	tTheGodOfGambling_Award[3304285]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304285]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304285]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304285]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304285]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304285]["DeleteItem"][1]["Id"] = 3304285
	tTheGodOfGambling_Award[3304285]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304285]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304285]["RewardItem"][1]["Id"] = 730001
	tTheGodOfGambling_Award[3304285]["RewardItem"][1]["Attr"] = "0 4 3"
	tTheGodOfGambling_Award[3304285]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304285]["LogStep"] = "2"
	
--  草花K   赤炼石+1*5
	tTheGodOfGambling_Award[3304286] = {}
	tTheGodOfGambling_Award[3304286]["OverTimeDel"] = 1
	tTheGodOfGambling_Award[3304286]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304286]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304286]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304286]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304286]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304286]["DeleteItem"][1]["Id"] = 3304286
	tTheGodOfGambling_Award[3304286]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304286]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304286]["RewardItem"][1]["Id"] = 730001
	tTheGodOfGambling_Award[3304286]["RewardItem"][1]["Attr"] = "0 5 3"
	tTheGodOfGambling_Award[3304286]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304286]["LogStep"] = "2"
	
--  草花A   赤炼石+5*1   全服公告
	tTheGodOfGambling_Award[3304287] = {}
	tTheGodOfGambling_Award[3304287]["OverTimeDel"] = 1
	tTheGodOfGambling_Award[3304287]["TellToAll"] = 1
	tTheGodOfGambling_Award[3304287]["FromItem"] = 3304272
	tTheGodOfGambling_Award[3304287]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304287]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304287]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304287]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304287]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304287]["DeleteItem"][1]["Id"] = 3304287
	tTheGodOfGambling_Award[3304287]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304287]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304287]["RewardItem"][1]["Id"] = 730005
	tTheGodOfGambling_Award[3304287]["RewardItem"][1]["Attr"] = "0 1 3"
	tTheGodOfGambling_Award[3304287]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304287]["LogStep"] = "2"
	
--  黑桃10    20气力值
	tTheGodOfGambling_Award[3304288] = {}
	tTheGodOfGambling_Award[3304288]["OverTimeDel"] = 1
	tTheGodOfGambling_Award[3304288]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304288]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304288]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304288]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304288]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304288]["DeleteItem"][1]["Id"] = 3304288
	tTheGodOfGambling_Award[3304288]["RewardStrengthValue"] = {}
	tTheGodOfGambling_Award[3304288]["RewardStrengthValue"]["Value"] = 20
	tTheGodOfGambling_Award[3304288]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304288]["LogStep"] = "2"
	
--  黑桃J   30气力值
	tTheGodOfGambling_Award[3304289] = {}
	tTheGodOfGambling_Award[3304289]["OverTimeDel"] = 1
	tTheGodOfGambling_Award[3304289]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304289]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304289]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304289]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304289]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304289]["DeleteItem"][1]["Id"] = 3304289
	tTheGodOfGambling_Award[3304289]["RewardStrengthValue"] = {}
	tTheGodOfGambling_Award[3304289]["RewardStrengthValue"]["Value"] = 30
	tTheGodOfGambling_Award[3304289]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304289]["LogStep"] = "2"
	
--  黑桃Q   40气力值
	tTheGodOfGambling_Award[3304290] = {}
	tTheGodOfGambling_Award[3304290]["OverTimeDel"] = 1
	tTheGodOfGambling_Award[3304290]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304290]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304290]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304290]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304290]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304290]["DeleteItem"][1]["Id"] = 3304290
	tTheGodOfGambling_Award[3304290]["RewardStrengthValue"] = {}
	tTheGodOfGambling_Award[3304290]["RewardStrengthValue"]["Value"] = 40
	tTheGodOfGambling_Award[3304290]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304290]["LogStep"] = "2"
	
--  黑桃K   50气力值
	tTheGodOfGambling_Award[3304291] = {}
	tTheGodOfGambling_Award[3304291]["OverTimeDel"] = 1
	tTheGodOfGambling_Award[3304291]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304291]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304291]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304291]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304291]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304291]["DeleteItem"][1]["Id"] = 3304291
	tTheGodOfGambling_Award[3304291]["RewardStrengthValue"] = {}
	tTheGodOfGambling_Award[3304291]["RewardStrengthValue"]["Value"] = 50
	tTheGodOfGambling_Award[3304291]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304291]["LogStep"] = "2"
	
--  黑桃A   1000气力值
	tTheGodOfGambling_Award[3304292] = {}
	tTheGodOfGambling_Award[3304292]["OverTimeDel"] = 1
	tTheGodOfGambling_Award[3304292]["TellToAll"] = 1
	tTheGodOfGambling_Award[3304292]["FromItem"] = 3304272
	tTheGodOfGambling_Award[3304292]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304292]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304292]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304292]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304292]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304292]["DeleteItem"][1]["Id"] = 3304292
	tTheGodOfGambling_Award[3304292]["RewardStrengthValue"] = {}
	tTheGodOfGambling_Award[3304292]["RewardStrengthValue"]["Value"] = 1000
	tTheGodOfGambling_Award[3304292]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304292]["LogStep"] = "2"
	
-- 大王		-- 全服公告
 tTheGodOfGambling_Award[3304293] = {}
	-- tTheGodOfGambling_Award[3304293]["TellToAll"] = 1
	-- tTheGodOfGambling_Award[3304293]["FromItem"] = 3304272
	--  璀璨星陨石
	tTheGodOfGambling_Award[3304293][1] = {}
	tTheGodOfGambling_Award[3304293][1]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304293][1]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304293][1]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304293][1]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304293][1]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304293][1]["DeleteItem"][1]["Id"] = 3304293
	tTheGodOfGambling_Award[3304293][1]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304293][1]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304293][1]["RewardItem"][1]["Id"] = 3009003
	tTheGodOfGambling_Award[3304293][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tTheGodOfGambling_Award[3304293][1]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304293][1]["LogStep"] = "2"
	--  2000赠点
	tTheGodOfGambling_Award[3304293][2] = {}
	tTheGodOfGambling_Award[3304293][2]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304293][2]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304293][2]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304293][2]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304293][2]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304293][2]["DeleteItem"][1]["Id"] = 3304293
	tTheGodOfGambling_Award[3304293][2]["RewardEMoneyMono"] = {}
	tTheGodOfGambling_Award[3304293][2]["RewardEMoneyMono"]["Value"] = 2000
	tTheGodOfGambling_Award[3304293][2]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304293][2]["LogStep"] = "2"
	
-- --  小王		-- 全服公告
	-- tTheGodOfGambling_Award[3304294] = {}
	-- tTheGodOfGambling_Award[3304294]["TellToAll"] = 1
	-- tTheGodOfGambling_Award[3304294]["FromItem"] = 3304272
	-- --  赤炼石+6（赠）
	-- tTheGodOfGambling_Award[3304294][1] = {}
	-- tTheGodOfGambling_Award[3304294][1]["RewardEffect"] = {}
	-- tTheGodOfGambling_Award[3304294][1]["RewardEffect"]["SzObj"] = "self"
	-- tTheGodOfGambling_Award[3304294][1]["RewardEffect"]["Effect"] = "angelwing"
	-- tTheGodOfGambling_Award[3304294][1]["DeleteItem"] = {}
	-- tTheGodOfGambling_Award[3304294][1]["DeleteItem"][1] = {}
	-- tTheGodOfGambling_Award[3304294][1]["DeleteItem"][1]["Id"] = 3304294
	-- tTheGodOfGambling_Award[3304294][1]["RewardItem"] = {}
	-- tTheGodOfGambling_Award[3304294][1]["RewardItem"][1] = {}
	-- tTheGodOfGambling_Award[3304294][1]["RewardItem"][1]["Id"] = 730006
	-- tTheGodOfGambling_Award[3304294][1]["RewardItem"][1]["Attr"] = "0 1 3"
	-- tTheGodOfGambling_Award[3304294][1]["LogId"] = 12000795
	-- tTheGodOfGambling_Award[3304294][1]["LogStep"] = "2"
	-- --  3000气力值
	-- tTheGodOfGambling_Award[3304294][2] = {}
	-- tTheGodOfGambling_Award[3304294][2]["RewardEffect"] = {}
	-- tTheGodOfGambling_Award[3304294][2]["RewardEffect"]["SzObj"] = "self"
	-- tTheGodOfGambling_Award[3304294][2]["RewardEffect"]["Effect"] = "angelwing"
	-- tTheGodOfGambling_Award[3304294][2]["DeleteItem"] = {}
	-- tTheGodOfGambling_Award[3304294][2]["DeleteItem"][1] = {}
	-- tTheGodOfGambling_Award[3304294][2]["DeleteItem"][1]["Id"] = 3304294
	-- tTheGodOfGambling_Award[3304294][2]["RewardStrengthValue"] = {}
	-- tTheGodOfGambling_Award[3304294][2]["RewardStrengthValue"]["Value"] = 3000
	-- tTheGodOfGambling_Award[3304294][2]["LogId"] = 12000795
	-- tTheGodOfGambling_Award[3304294][2]["LogStep"] = "2"
	
--  赤炼石+1包*2
	tTheGodOfGambling_Award[3304421] = {}
	tTheGodOfGambling_Award[3304421]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304421]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304421]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304421]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304421]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304421]["DeleteItem"][1]["Id"] = 3304421
	tTheGodOfGambling_Award[3304421]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304421]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304421]["RewardItem"][1]["Id"] = 3304295
	tTheGodOfGambling_Award[3304421]["RewardItem"][1]["Attr"] = "0 2"
	tTheGodOfGambling_Award[3304421]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304421]["LogStep"] = "2"

--  赤炼石+1包*3
	tTheGodOfGambling_Award[3304422] = {}
	tTheGodOfGambling_Award[3304422]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304422]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304422]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304422]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304422]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304422]["DeleteItem"][1]["Id"] = 3304422
	tTheGodOfGambling_Award[3304422]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304422]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304422]["RewardItem"][1]["Id"] = 3304295
	tTheGodOfGambling_Award[3304422]["RewardItem"][1]["Attr"] = "0 3"
	tTheGodOfGambling_Award[3304422]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304422]["LogStep"] = "2"
	
--  赤炼石+1包*4
	tTheGodOfGambling_Award[3304423] = {}
	tTheGodOfGambling_Award[3304423]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304423]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304423]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304423]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304423]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304423]["DeleteItem"][1]["Id"] = 3304423
	tTheGodOfGambling_Award[3304423]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304423]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304423]["RewardItem"][1]["Id"] = 3304295
	tTheGodOfGambling_Award[3304423]["RewardItem"][1]["Attr"] = "0 4"
	tTheGodOfGambling_Award[3304423]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304423]["LogStep"] = "2"
	
--  赤炼石+1包*5
	tTheGodOfGambling_Award[3304424] = {}
	tTheGodOfGambling_Award[3304424]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304424]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304424]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304424]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304424]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304424]["DeleteItem"][1]["Id"] = 3304424
	tTheGodOfGambling_Award[3304424]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304424]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304424]["RewardItem"][1]["Id"] = 3304295
	tTheGodOfGambling_Award[3304424]["RewardItem"][1]["Attr"] = "0 5"
	tTheGodOfGambling_Award[3304424]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304424]["LogStep"] = "2"
	
--  赤炼石+1包*6
	tTheGodOfGambling_Award[3304425] = {}
	tTheGodOfGambling_Award[3304425]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304425]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304425]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3304425]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304425]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304425]["DeleteItem"][1]["Id"] = 3304425
	tTheGodOfGambling_Award[3304425]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304425]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304425]["RewardItem"][1]["Id"] = 3304295
	tTheGodOfGambling_Award[3304425]["RewardItem"][1]["Attr"] = "0 6"
	tTheGodOfGambling_Award[3304425]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304425]["LogStep"] = "2"
	
--  10000赠点
	tTheGodOfGambling_Award[3306429] = {}
	tTheGodOfGambling_Award[3306429]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3306429]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3306429]["RewardEffect"]["Effect"] = "angelwing"
	tTheGodOfGambling_Award[3306429]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3306429]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3306429]["DeleteItem"][1]["Id"] = 3306429
	tTheGodOfGambling_Award[3306429]["RewardEMoneyMono"] = {}
	tTheGodOfGambling_Award[3306429]["RewardEMoneyMono"]["Value"] = 10000
	tTheGodOfGambling_Award[3306429]["LogId"] = 12000795
	tTheGodOfGambling_Award[3306429]["LogStep"] = "2"
	
-- -- 赤炼石骰子
	-- tTheGodOfGambling_Award[3304437] = {}
	-- tTheGodOfGambling_Award[3304437]["TimeLimit"] = 3
	-- tTheGodOfGambling_Award[3304437]["Touzi"] = 1
	-- tTheGodOfGambling_Award[3304437]["FromItem"] = 3304437
	-- tTheGodOfGambling_Award[3304437][1] = {}
	-- tTheGodOfGambling_Award[3304437][1]["DailyLimit"] = 1
	-- tTheGodOfGambling_Award[3304437][1]["ItemChanceSum"] = 10000
	-- -- 赤炼石+1（赠）礼包*1   24%
	-- tTheGodOfGambling_Award[3304437][1][1] = {}
	-- tTheGodOfGambling_Award[3304437][1][1]["RandomItemChanceType"] = 2
	-- tTheGodOfGambling_Award[3304437][1][1]["ItemChance"] = 2400
	-- tTheGodOfGambling_Award[3304437][1][1]["RewardEffect"] = {}
	-- tTheGodOfGambling_Award[3304437][1][1]["RewardEffect"]["SzObj"] = "self"
	-- tTheGodOfGambling_Award[3304437][1][1]["RewardEffect"]["Effect"] = "touzi_1"
	-- tTheGodOfGambling_Award[3304437][1][1]["RewardItem"] = {}
	-- tTheGodOfGambling_Award[3304437][1][1]["RewardItem"][1] = {}
	-- tTheGodOfGambling_Award[3304437][1][1]["RewardItem"][1]["Id"] = 3304295
	-- tTheGodOfGambling_Award[3304437][1][1]["RewardItem"][1]["Attr"] = "0 1"
	-- tTheGodOfGambling_Award[3304437][1][1]["LogId"] = 12000795
	-- tTheGodOfGambling_Award[3304437][1][1]["LogStep"] = "2"	
	-- -- 赤炼石+1（赠）礼包*2   23%
	-- tTheGodOfGambling_Award[3304437][1][2] = {}
	-- tTheGodOfGambling_Award[3304437][1][2]["RandomItemChanceType"] = 2
	-- tTheGodOfGambling_Award[3304437][1][2]["ItemChance"] = 2300
	-- tTheGodOfGambling_Award[3304437][1][2]["RewardEffect"] = {}
	-- tTheGodOfGambling_Award[3304437][1][2]["RewardEffect"]["SzObj"] = "self"
	-- tTheGodOfGambling_Award[3304437][1][2]["RewardEffect"]["Effect"] = "touzi_2"
	-- tTheGodOfGambling_Award[3304437][1][2]["RewardItem"] = {}
	-- tTheGodOfGambling_Award[3304437][1][2]["RewardItem"][1] = {}
	-- tTheGodOfGambling_Award[3304437][1][2]["RewardItem"][1]["Id"] = 3304295
	-- tTheGodOfGambling_Award[3304437][1][2]["RewardItem"][1]["Attr"] = "0 2"
	-- tTheGodOfGambling_Award[3304437][1][2]["LogId"] = 12000795
	-- tTheGodOfGambling_Award[3304437][1][2]["LogStep"] = "2"	
	-- -- 赤炼石+1（赠）礼包*3   20%
	-- tTheGodOfGambling_Award[3304437][1][3] = {}
	-- tTheGodOfGambling_Award[3304437][1][3]["RandomItemChanceType"] = 2
	-- tTheGodOfGambling_Award[3304437][1][3]["ItemChance"] = 2000
	-- tTheGodOfGambling_Award[3304437][1][3]["RewardEffect"] = {}
	-- tTheGodOfGambling_Award[3304437][1][3]["RewardEffect"]["SzObj"] = "self"
	-- tTheGodOfGambling_Award[3304437][1][3]["RewardEffect"]["Effect"] = "touzi_3"
	-- tTheGodOfGambling_Award[3304437][1][3]["RewardItem"] = {}
	-- tTheGodOfGambling_Award[3304437][1][3]["RewardItem"][1] = {}
	-- tTheGodOfGambling_Award[3304437][1][3]["RewardItem"][1]["Id"] = 3304295
	-- tTheGodOfGambling_Award[3304437][1][3]["RewardItem"][1]["Attr"] = "0 3"
	-- tTheGodOfGambling_Award[3304437][1][3]["LogId"] = 12000795
	-- tTheGodOfGambling_Award[3304437][1][3]["LogStep"] = "2"	
	-- -- 赤炼石+1（赠）礼包*4   17%
	-- tTheGodOfGambling_Award[3304437][1][4] = {}
	-- tTheGodOfGambling_Award[3304437][1][4]["RandomItemChanceType"] = 2
	-- tTheGodOfGambling_Award[3304437][1][4]["ItemChance"] = 1700
	-- tTheGodOfGambling_Award[3304437][1][4]["RewardEffect"] = {}
	-- tTheGodOfGambling_Award[3304437][1][4]["RewardEffect"]["SzObj"] = "self"
	-- tTheGodOfGambling_Award[3304437][1][4]["RewardEffect"]["Effect"] = "touzi_4"
	-- tTheGodOfGambling_Award[3304437][1][4]["RewardItem"] = {}
	-- tTheGodOfGambling_Award[3304437][1][4]["RewardItem"][1] = {}
	-- tTheGodOfGambling_Award[3304437][1][4]["RewardItem"][1]["Id"] = 3304295
	-- tTheGodOfGambling_Award[3304437][1][4]["RewardItem"][1]["Attr"] = "0 4"
	-- tTheGodOfGambling_Award[3304437][1][4]["LogId"] = 12000795
	-- tTheGodOfGambling_Award[3304437][1][4]["LogStep"] = "2"	
	-- -- 赤炼石+1（赠）礼包*5   10.30%
	-- tTheGodOfGambling_Award[3304437][1][5] = {}
	-- tTheGodOfGambling_Award[3304437][1][5]["RandomItemChanceType"] = 2
	-- tTheGodOfGambling_Award[3304437][1][5]["ItemChance"] = 1030
	-- tTheGodOfGambling_Award[3304437][1][5]["RewardEffect"] = {}
	-- tTheGodOfGambling_Award[3304437][1][5]["RewardEffect"]["SzObj"] = "self"
	-- tTheGodOfGambling_Award[3304437][1][5]["RewardEffect"]["Effect"] = "touzi_5"
	-- tTheGodOfGambling_Award[3304437][1][5]["RewardItem"] = {}
	-- tTheGodOfGambling_Award[3304437][1][5]["RewardItem"][1] = {}
	-- tTheGodOfGambling_Award[3304437][1][5]["RewardItem"][1]["Id"] = 3304295
	-- tTheGodOfGambling_Award[3304437][1][5]["RewardItem"][1]["Attr"] = "0 5"
	-- tTheGodOfGambling_Award[3304437][1][5]["LogId"] = 12000795
	-- tTheGodOfGambling_Award[3304437][1][5]["LogStep"] = "2"	
	-- -- 赤炼石+5（赠）礼包*1   5.60%      -- 全服公告
	-- tTheGodOfGambling_Award[3304437][1][6] = {}
	-- tTheGodOfGambling_Award[3304437][1][6]["TellToAll"] = 1
	-- tTheGodOfGambling_Award[3304437][1][6]["RandomItemChanceType"] = 2
	-- tTheGodOfGambling_Award[3304437][1][6]["ItemChance"] = 560
	-- tTheGodOfGambling_Award[3304437][1][6]["RewardEffect"] = {}
	-- tTheGodOfGambling_Award[3304437][1][6]["RewardEffect"]["SzObj"] = "self"
	-- tTheGodOfGambling_Award[3304437][1][6]["RewardEffect"]["Effect"] = "touzi_6"
	-- tTheGodOfGambling_Award[3304437][1][6]["RewardItem"] = {}
	-- tTheGodOfGambling_Award[3304437][1][6]["RewardItem"][1] = {}
	-- tTheGodOfGambling_Award[3304437][1][6]["RewardItem"][1]["Id"] = 3304299
	-- tTheGodOfGambling_Award[3304437][1][6]["RewardItem"][1]["Attr"] = "0 1"
	-- tTheGodOfGambling_Award[3304437][1][6]["LogId"] = 12000795
	-- tTheGodOfGambling_Award[3304437][1][6]["LogStep"] = "2"		
	-- -- 赤炼石+6（赠）礼包*1   0.10%      -- 全服公告
	-- tTheGodOfGambling_Award[3304437][1][7] = {}
	-- tTheGodOfGambling_Award[3304437][1][7]["TellToAll"] = 1
	-- tTheGodOfGambling_Award[3304437][1][7]["RandomItemChanceType"] = 2
	-- tTheGodOfGambling_Award[3304437][1][7]["ItemChance"] = 10
	-- tTheGodOfGambling_Award[3304437][1][7]["RewardEffect"] = {}
	-- tTheGodOfGambling_Award[3304437][1][7]["RewardEffect"]["SzObj"] = "self"
	-- tTheGodOfGambling_Award[3304437][1][7]["RewardEffect"]["Effect"] = "bombarrow"
	-- tTheGodOfGambling_Award[3304437][1][7]["RewardItem"] = {}
	-- tTheGodOfGambling_Award[3304437][1][7]["RewardItem"][1] = {}
	-- tTheGodOfGambling_Award[3304437][1][7]["RewardItem"][1]["Id"] = 3304259
	-- tTheGodOfGambling_Award[3304437][1][7]["RewardItem"][1]["Attr"] = "0 1"
	-- tTheGodOfGambling_Award[3304437][1][7]["LogId"] = 12000795
	-- tTheGodOfGambling_Award[3304437][1][7]["LogStep"] = "2"		
	-- -- 赤炼石+1（赠）礼包*1   100%
	-- tTheGodOfGambling_Award[3304437][2] = {}
	-- tTheGodOfGambling_Award[3304437][2]["RewardEffect"] = {}
	-- tTheGodOfGambling_Award[3304437][2]["RewardEffect"]["SzObj"] = "self"
	-- tTheGodOfGambling_Award[3304437][2]["RewardEffect"]["Effect"] = "touzi_1"
	-- tTheGodOfGambling_Award[3304437][2]["DeleteItem"] = {}
	-- tTheGodOfGambling_Award[3304437][2]["DeleteItem"][1] = {}
	-- tTheGodOfGambling_Award[3304437][2]["DeleteItem"][1]["Id"] = 3304437
	-- tTheGodOfGambling_Award[3304437][2]["RewardItem"] = {}
	-- tTheGodOfGambling_Award[3304437][2]["RewardItem"][1] = {}
	-- tTheGodOfGambling_Award[3304437][2]["RewardItem"][1]["Id"] = 3304295
	-- tTheGodOfGambling_Award[3304437][2]["RewardItem"][1]["Attr"] = "0 1"
	-- tTheGodOfGambling_Award[3304437][2]["LogId"] = 12000795
	-- tTheGodOfGambling_Award[3304437][2]["LogStep"] = "2"	
	
-- -- 星陨石骰子
	-- tTheGodOfGambling_Award[3304438] = {}
	-- tTheGodOfGambling_Award[3304438]["OverTimeDel"] = 1
	-- tTheGodOfGambling_Award[3304438]["TimeLimit"] = 3
	-- tTheGodOfGambling_Award[3304438]["Touzi"] = 1
	-- tTheGodOfGambling_Award[3304438]["FromItem"] = 3304438
	-- tTheGodOfGambling_Award[3304438][1] = {}
	-- tTheGodOfGambling_Award[3304438][1]["DailyLimit"] = 1
	-- tTheGodOfGambling_Award[3304438][1]["ItemChanceSum"] = 10000
	-- -- 微光星陨石礼包*1   24%
	-- tTheGodOfGambling_Award[3304438][1][1] = {}
	-- tTheGodOfGambling_Award[3304438][1][1]["RandomItemChanceType"] = 2
	-- tTheGodOfGambling_Award[3304438][1][1]["ItemChance"] = 2400
	-- tTheGodOfGambling_Award[3304438][1][1]["RewardEffect"] = {}
	-- tTheGodOfGambling_Award[3304438][1][1]["RewardEffect"]["SzObj"] = "self"
	-- tTheGodOfGambling_Award[3304438][1][1]["RewardEffect"]["Effect"] = "touzi_1"
	-- tTheGodOfGambling_Award[3304438][1][1]["RewardItem"] = {}
	-- tTheGodOfGambling_Award[3304438][1][1]["RewardItem"][1] = {}
	-- tTheGodOfGambling_Award[3304438][1][1]["RewardItem"][1]["Id"] = 3304337
	-- tTheGodOfGambling_Award[3304438][1][1]["RewardItem"][1]["Attr"] = "0 1"
	-- tTheGodOfGambling_Award[3304438][1][1]["LogId"] = 12000795
	-- tTheGodOfGambling_Award[3304438][1][1]["LogStep"] = "2"	
	-- -- 微光星陨石礼包*2   22%
	-- tTheGodOfGambling_Award[3304438][1][2] = {}
	-- tTheGodOfGambling_Award[3304438][1][2]["RandomItemChanceType"] = 2
	-- tTheGodOfGambling_Award[3304438][1][2]["ItemChance"] = 2200
	-- tTheGodOfGambling_Award[3304438][1][2]["RewardEffect"] = {}
	-- tTheGodOfGambling_Award[3304438][1][2]["RewardEffect"]["SzObj"] = "self"
	-- tTheGodOfGambling_Award[3304438][1][2]["RewardEffect"]["Effect"] = "touzi_2"
	-- tTheGodOfGambling_Award[3304438][1][2]["RewardItem"] = {}
	-- tTheGodOfGambling_Award[3304438][1][2]["RewardItem"][1] = {}
	-- tTheGodOfGambling_Award[3304438][1][2]["RewardItem"][1]["Id"] = 3304338
	-- tTheGodOfGambling_Award[3304438][1][2]["RewardItem"][1]["Attr"] = "0 1"
	-- tTheGodOfGambling_Award[3304438][1][2]["LogId"] = 12000795
	-- tTheGodOfGambling_Award[3304438][1][2]["LogStep"] = "2"	
	-- -- 微光星陨石礼包*3   20%
	-- tTheGodOfGambling_Award[3304438][1][3] = {}
	-- tTheGodOfGambling_Award[3304438][1][3]["RandomItemChanceType"] = 2
	-- tTheGodOfGambling_Award[3304438][1][3]["ItemChance"] = 2000
	-- tTheGodOfGambling_Award[3304438][1][3]["RewardEffect"] = {}
	-- tTheGodOfGambling_Award[3304438][1][3]["RewardEffect"]["SzObj"] = "self"
	-- tTheGodOfGambling_Award[3304438][1][3]["RewardEffect"]["Effect"] = "touzi_3"
	-- tTheGodOfGambling_Award[3304438][1][3]["RewardItem"] = {}
	-- tTheGodOfGambling_Award[3304438][1][3]["RewardItem"][1] = {}
	-- tTheGodOfGambling_Award[3304438][1][3]["RewardItem"][1]["Id"] = 3304339
	-- tTheGodOfGambling_Award[3304438][1][3]["RewardItem"][1]["Attr"] = "0 1"
	-- tTheGodOfGambling_Award[3304438][1][3]["LogId"] = 12000795
	-- tTheGodOfGambling_Award[3304438][1][3]["LogStep"] = "2"	
	-- -- 微光星陨石礼包*4   18%
	-- tTheGodOfGambling_Award[3304438][1][4] = {}
	-- tTheGodOfGambling_Award[3304438][1][4]["RandomItemChanceType"] = 2
	-- tTheGodOfGambling_Award[3304438][1][4]["ItemChance"] = 1800
	-- tTheGodOfGambling_Award[3304438][1][4]["RewardEffect"] = {}
	-- tTheGodOfGambling_Award[3304438][1][4]["RewardEffect"]["SzObj"] = "self"
	-- tTheGodOfGambling_Award[3304438][1][4]["RewardEffect"]["Effect"] = "touzi_4"
	-- tTheGodOfGambling_Award[3304438][1][4]["RewardItem"] = {}
	-- tTheGodOfGambling_Award[3304438][1][4]["RewardItem"][1] = {}
	-- tTheGodOfGambling_Award[3304438][1][4]["RewardItem"][1]["Id"] = 3304340
	-- tTheGodOfGambling_Award[3304438][1][4]["RewardItem"][1]["Attr"] = "0 1"
	-- tTheGodOfGambling_Award[3304438][1][4]["LogId"] = 12000795
	-- tTheGodOfGambling_Award[3304438][1][4]["LogStep"] = "2"	
	-- -- 微光星陨石礼包*5   9.70%
	-- tTheGodOfGambling_Award[3304438][1][5] = {}
	-- tTheGodOfGambling_Award[3304438][1][5]["RandomItemChanceType"] = 2
	-- tTheGodOfGambling_Award[3304438][1][5]["ItemChance"] = 970
	-- tTheGodOfGambling_Award[3304438][1][5]["RewardEffect"] = {}
	-- tTheGodOfGambling_Award[3304438][1][5]["RewardEffect"]["SzObj"] = "self"
	-- tTheGodOfGambling_Award[3304438][1][5]["RewardEffect"]["Effect"] = "touzi_5"
	-- tTheGodOfGambling_Award[3304438][1][5]["RewardItem"] = {}
	-- tTheGodOfGambling_Award[3304438][1][5]["RewardItem"][1] = {}
	-- tTheGodOfGambling_Award[3304438][1][5]["RewardItem"][1]["Id"] = 3304341
	-- tTheGodOfGambling_Award[3304438][1][5]["RewardItem"][1]["Attr"] = "0 1"
	-- tTheGodOfGambling_Award[3304438][1][5]["Talk"] = tTheGodOfGambling_Text["touzi"][3304261][5]
	-- tTheGodOfGambling_Award[3304438][1][5]["LogId"] = 12000795
	-- tTheGodOfGambling_Award[3304438][1][5]["LogStep"] = "2"	
	-- -- 晶莹星陨石礼包*1   5.60%      -- 全服公告
	-- tTheGodOfGambling_Award[3304438][1][6] = {}
	-- tTheGodOfGambling_Award[3304438][1][6]["TellToAll"] = 1
	-- tTheGodOfGambling_Award[3304438][1][6]["RandomItemChanceType"] = 2
	-- tTheGodOfGambling_Award[3304438][1][6]["ItemChance"] = 620
	-- tTheGodOfGambling_Award[3304438][1][6]["RewardEffect"] = {}
	-- tTheGodOfGambling_Award[3304438][1][6]["RewardEffect"]["SzObj"] = "self"
	-- tTheGodOfGambling_Award[3304438][1][6]["RewardEffect"]["Effect"] = "touzi_6"
	-- tTheGodOfGambling_Award[3304438][1][6]["RewardItem"] = {}
	-- tTheGodOfGambling_Award[3304438][1][6]["RewardItem"][1] = {}
	-- tTheGodOfGambling_Award[3304438][1][6]["RewardItem"][1]["Id"] = 3304347
	-- tTheGodOfGambling_Award[3304438][1][6]["RewardItem"][1]["Attr"] = "0 1"
	-- tTheGodOfGambling_Award[3304438][1][6]["Talk"] = tTheGodOfGambling_Text["touzi"][3304261][6]
	-- tTheGodOfGambling_Award[3304438][1][6]["LogId"] = 12000795
	-- tTheGodOfGambling_Award[3304438][1][6]["LogStep"] = "2"		
	-- -- 璀璨星陨石礼包*1   0.10%      -- 全服公告
	-- tTheGodOfGambling_Award[3304438][1][7] = {}
	-- tTheGodOfGambling_Award[3304438][1][7]["TellToAll"] = 1
	-- tTheGodOfGambling_Award[3304438][1][7]["RandomItemChanceType"] = 2
	-- tTheGodOfGambling_Award[3304438][1][7]["ItemChance"] = 10
	-- tTheGodOfGambling_Award[3304438][1][7]["RewardEffect"] = {}
	-- tTheGodOfGambling_Award[3304438][1][7]["RewardEffect"]["SzObj"] = "self"
	-- tTheGodOfGambling_Award[3304438][1][7]["RewardEffect"]["Effect"] = "bombarrow"
	-- tTheGodOfGambling_Award[3304438][1][7]["RewardItem"] = {}
	-- tTheGodOfGambling_Award[3304438][1][7]["RewardItem"][1] = {}
	-- tTheGodOfGambling_Award[3304438][1][7]["RewardItem"][1]["Id"] = 3009003
	-- tTheGodOfGambling_Award[3304438][1][7]["RewardItem"][1]["Attr"] = "0 1 2880 1"
	-- tTheGodOfGambling_Award[3304438][1][7]["Talk"] = tTheGodOfGambling_Text["touzi"][3304261][7]
	-- tTheGodOfGambling_Award[3304438][1][7]["LogId"] = 12000795
	-- tTheGodOfGambling_Award[3304438][1][7]["LogStep"] = "2"	
	-- -- 微光星陨石礼包*1   100%
	-- tTheGodOfGambling_Award[3304438][2] = {}
	-- tTheGodOfGambling_Award[3304438][2]["RewardEffect"] = {}
	-- tTheGodOfGambling_Award[3304438][2]["RewardEffect"]["SzObj"] = "self"
	-- tTheGodOfGambling_Award[3304438][2]["RewardEffect"]["Effect"] = "touzi_1"
	-- tTheGodOfGambling_Award[3304438][2]["DeleteItem"] = {}
	-- tTheGodOfGambling_Award[3304438][2]["DeleteItem"][1] = {}
	-- tTheGodOfGambling_Award[3304438][2]["DeleteItem"][1]["Id"] = 3304438
	-- tTheGodOfGambling_Award[3304438][2]["RewardItem"] = {}
	-- tTheGodOfGambling_Award[3304438][2]["RewardItem"][1] = {}
	-- tTheGodOfGambling_Award[3304438][2]["RewardItem"][1]["Id"] = 3304337
	-- tTheGodOfGambling_Award[3304438][2]["RewardItem"][1]["Attr"] = "0 1"
	-- tTheGodOfGambling_Award[3304438][2]["Talk"] = tTheGodOfGambling_Text["touzi"][3304261][1]
	-- tTheGodOfGambling_Award[3304438][2]["LogId"] = 12000795
	-- tTheGodOfGambling_Award[3304438][2]["LogStep"] = "2"	
	

-- 气力值骰子
	tTheGodOfGambling_Award[3304439] = {}
	tTheGodOfGambling_Award[3304439]["TimeLimit"] = 3
	tTheGodOfGambling_Award[3304439]["Touzi"] = 1
	tTheGodOfGambling_Award[3304439]["FromItem"] = 3304439
	tTheGodOfGambling_Award[3304439][1] = {}
	tTheGodOfGambling_Award[3304439][1]["DailyLimit"] = 1
	tTheGodOfGambling_Award[3304439][1]["ItemChanceSum"] = 10000
	-- 10气力值礼包*1   24%
	tTheGodOfGambling_Award[3304439][1][1] = {}
	tTheGodOfGambling_Award[3304439][1][1]["RandomItemChanceType"] = 2
	tTheGodOfGambling_Award[3304439][1][1]["ItemChance"] = 2400
	tTheGodOfGambling_Award[3304439][1][1]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304439][1][1]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304439][1][1]["RewardEffect"]["Effect"] = "touzi_1"
	tTheGodOfGambling_Award[3304439][1][1]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304439][1][1]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304439][1][1]["RewardItem"][1]["Id"] = 3304317
	tTheGodOfGambling_Award[3304439][1][1]["RewardItem"][1]["Attr"] = "0 1"
	-- tTheGodOfGambling_Award[3304439][1][1]["Talk"] = tTheGodOfGambling_Text["touzi"][3304262][1]
	tTheGodOfGambling_Award[3304439][1][1]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304439][1][1]["LogStep"] = "2"	
	-- 20气力值礼包*1   22%
	tTheGodOfGambling_Award[3304439][1][2] = {}
	tTheGodOfGambling_Award[3304439][1][2]["RandomItemChanceType"] = 2
	tTheGodOfGambling_Award[3304439][1][2]["ItemChance"] = 2200
	tTheGodOfGambling_Award[3304439][1][2]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304439][1][2]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304439][1][2]["RewardEffect"]["Effect"] = "touzi_2"
	tTheGodOfGambling_Award[3304439][1][2]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304439][1][2]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304439][1][2]["RewardItem"][1]["Id"] = 3304318
	tTheGodOfGambling_Award[3304439][1][2]["RewardItem"][1]["Attr"] = "0 1"
	-- tTheGodOfGambling_Award[3304439][1][2]["Talk"] = tTheGodOfGambling_Text["touzi"][3304262][2]
	tTheGodOfGambling_Award[3304439][1][2]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304439][1][2]["LogStep"] = "2"	
	-- 30气力值礼包*1   20%
	tTheGodOfGambling_Award[3304439][1][3] = {}
	tTheGodOfGambling_Award[3304439][1][3]["RandomItemChanceType"] = 2
	tTheGodOfGambling_Award[3304439][1][3]["ItemChance"] = 2000
	tTheGodOfGambling_Award[3304439][1][3]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304439][1][3]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304439][1][3]["RewardEffect"]["Effect"] = "touzi_3"
	tTheGodOfGambling_Award[3304439][1][3]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304439][1][3]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304439][1][3]["RewardItem"][1]["Id"] = 3304319
	tTheGodOfGambling_Award[3304439][1][3]["RewardItem"][1]["Attr"] = "0 1"
	-- tTheGodOfGambling_Award[3304439][1][3]["Talk"] = tTheGodOfGambling_Text["touzi"][3304262][3]
	tTheGodOfGambling_Award[3304439][1][3]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304439][1][3]["LogStep"] = "2"	
	-- 40气力值礼包*1   16%
	tTheGodOfGambling_Award[3304439][1][4] = {}
	tTheGodOfGambling_Award[3304439][1][4]["RandomItemChanceType"] = 2
	tTheGodOfGambling_Award[3304439][1][4]["ItemChance"] = 1600
	tTheGodOfGambling_Award[3304439][1][4]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304439][1][4]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304439][1][4]["RewardEffect"]["Effect"] = "touzi_4"
	tTheGodOfGambling_Award[3304439][1][4]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304439][1][4]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304439][1][4]["RewardItem"][1]["Id"] = 3304320
	tTheGodOfGambling_Award[3304439][1][4]["RewardItem"][1]["Attr"] = "0 1"
	-- tTheGodOfGambling_Award[3304439][1][4]["Talk"] = tTheGodOfGambling_Text["touzi"][3304262][4]
	tTheGodOfGambling_Award[3304439][1][4]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304439][1][4]["LogStep"] = "2"	
	-- 50气力值礼包*1   10%
	tTheGodOfGambling_Award[3304439][1][5] = {}
	tTheGodOfGambling_Award[3304439][1][5]["RandomItemChanceType"] = 2
	tTheGodOfGambling_Award[3304439][1][5]["ItemChance"] = 1000
	tTheGodOfGambling_Award[3304439][1][5]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304439][1][5]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304439][1][5]["RewardEffect"]["Effect"] = "touzi_5"
	tTheGodOfGambling_Award[3304439][1][5]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304439][1][5]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304439][1][5]["RewardItem"][1]["Id"] = 3304321
	tTheGodOfGambling_Award[3304439][1][5]["RewardItem"][1]["Attr"] = "0 1"
	-- tTheGodOfGambling_Award[3304439][1][5]["Talk"] = tTheGodOfGambling_Text["touzi"][3304262][5]
	tTheGodOfGambling_Award[3304439][1][5]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304439][1][5]["LogStep"] = "2"	
	-- 1000气力值礼包*1   7.90%      -- 全服公告
	tTheGodOfGambling_Award[3304439][1][6] = {}
	tTheGodOfGambling_Award[3304439][1][6]["TellToAll"] = 1
	tTheGodOfGambling_Award[3304439][1][6]["RandomItemChanceType"] = 2
	tTheGodOfGambling_Award[3304439][1][6]["ItemChance"] = 790
	tTheGodOfGambling_Award[3304439][1][6]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304439][1][6]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304439][1][6]["RewardEffect"]["Effect"] = "touzi_6"
	tTheGodOfGambling_Award[3304439][1][6]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304439][1][6]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304439][1][6]["RewardItem"][1]["Id"] = 3304330
	tTheGodOfGambling_Award[3304439][1][6]["RewardItem"][1]["Attr"] = "0 1"
	-- tTheGodOfGambling_Award[3304439][1][6]["Talk"] = tTheGodOfGambling_Text["touzi"][3304262][6]
	tTheGodOfGambling_Award[3304439][1][6]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304439][1][6]["LogStep"] = "2"		
	-- 3000气力值礼包*1   0.10%      -- 全服公告
	tTheGodOfGambling_Award[3304439][1][7] = {}
	tTheGodOfGambling_Award[3304439][1][7]["TellToAll"] = 1
	tTheGodOfGambling_Award[3304439][1][7]["RandomItemChanceType"] = 2
	tTheGodOfGambling_Award[3304439][1][7]["ItemChance"] = 10
	tTheGodOfGambling_Award[3304439][1][7]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304439][1][7]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304439][1][7]["RewardEffect"]["Effect"] = "bombarrow"
	tTheGodOfGambling_Award[3304439][1][7]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304439][1][7]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304439][1][7]["RewardItem"][1]["Id"] = 3304333
	tTheGodOfGambling_Award[3304439][1][7]["RewardItem"][1]["Attr"] = "0 1"
	-- tTheGodOfGambling_Award[3304439][1][7]["Talk"] = tTheGodOfGambling_Text["touzi"][3304262][7]
	tTheGodOfGambling_Award[3304439][1][7]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304439][1][7]["LogStep"] = "2"	
	-- 10气力值礼包*1   100%
	tTheGodOfGambling_Award[3304439][2] = {}
	tTheGodOfGambling_Award[3304439][2]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304439][2]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304439][2]["RewardEffect"]["Effect"] = "touzi_1"
	tTheGodOfGambling_Award[3304439][2]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304439][2]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304439][2]["DeleteItem"][1]["Id"] = 3304439
	tTheGodOfGambling_Award[3304439][2]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304439][2]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304439][2]["RewardItem"][1]["Id"] = 3304317
	tTheGodOfGambling_Award[3304439][2]["RewardItem"][1]["Attr"] = "0 1"
	-- tTheGodOfGambling_Award[3304439][2]["Talk"] = tTheGodOfGambling_Text["touzi"][3304262][1]
	tTheGodOfGambling_Award[3304439][2]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304439][2]["LogStep"] = "2"	
	
-- 赠点骰子
	tTheGodOfGambling_Award[3304440] = {}
	tTheGodOfGambling_Award[3304440]["TimeLimit"] = 3
	tTheGodOfGambling_Award[3304440]["Touzi"] = 1
	tTheGodOfGambling_Award[3304440]["FromItem"] = 3304440
	tTheGodOfGambling_Award[3304440][1] = {}
	tTheGodOfGambling_Award[3304440][1]["DailyLimit"] = 1
	tTheGodOfGambling_Award[3304440][1]["ItemChanceSum"] = 10000
	-- 10赠点礼包*1   25%
	tTheGodOfGambling_Award[3304440][1][1] = {}
	tTheGodOfGambling_Award[3304440][1][1]["RandomItemChanceType"] = 2
	tTheGodOfGambling_Award[3304440][1][1]["ItemChance"] = 2500
	tTheGodOfGambling_Award[3304440][1][1]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304440][1][1]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304440][1][1]["RewardEffect"]["Effect"] = "touzi_1"
	tTheGodOfGambling_Award[3304440][1][1]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304440][1][1]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304440][1][1]["RewardItem"][1]["Id"] = 3304305
	tTheGodOfGambling_Award[3304440][1][1]["RewardItem"][1]["Attr"] = "0 1"
	-- tTheGodOfGambling_Award[3304440][1][1]["Talk"] = tTheGodOfGambling_Text["touzi"][3304263][1]
	tTheGodOfGambling_Award[3304440][1][1]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304440][1][1]["LogStep"] = "2"	
	-- 20赠点礼包*1   23%
	tTheGodOfGambling_Award[3304440][1][2] = {}
	tTheGodOfGambling_Award[3304440][1][2]["RandomItemChanceType"] = 2
	tTheGodOfGambling_Award[3304440][1][2]["ItemChance"] = 2300
	tTheGodOfGambling_Award[3304440][1][2]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304440][1][2]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304440][1][2]["RewardEffect"]["Effect"] = "touzi_2"
	tTheGodOfGambling_Award[3304440][1][2]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304440][1][2]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304440][1][2]["RewardItem"][1]["Id"] = 3304306
	tTheGodOfGambling_Award[3304440][1][2]["RewardItem"][1]["Attr"] = "0 1"
	-- tTheGodOfGambling_Award[3304440][1][2]["Talk"] = tTheGodOfGambling_Text["touzi"][3304263][2]
	tTheGodOfGambling_Award[3304440][1][2]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304440][1][2]["LogStep"] = "2"	
	-- 30赠点礼包*1   21%
	tTheGodOfGambling_Award[3304440][1][3] = {}
	tTheGodOfGambling_Award[3304440][1][3]["RandomItemChanceType"] = 2
	tTheGodOfGambling_Award[3304440][1][3]["ItemChance"] = 2100
	tTheGodOfGambling_Award[3304440][1][3]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304440][1][3]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304440][1][3]["RewardEffect"]["Effect"] = "touzi_3"
	tTheGodOfGambling_Award[3304440][1][3]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304440][1][3]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304440][1][3]["RewardItem"][1]["Id"] = 3304307
	tTheGodOfGambling_Award[3304440][1][3]["RewardItem"][1]["Attr"] = "0 1"
	-- tTheGodOfGambling_Award[3304440][1][3]["Talk"] = tTheGodOfGambling_Text["touzi"][3304263][3]
	tTheGodOfGambling_Award[3304440][1][3]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304440][1][3]["LogStep"] = "2"	
	-- 40赠点礼包*1   16%
	tTheGodOfGambling_Award[3304440][1][4] = {}
	tTheGodOfGambling_Award[3304440][1][4]["RandomItemChanceType"] = 2
	tTheGodOfGambling_Award[3304440][1][4]["ItemChance"] = 1600
	tTheGodOfGambling_Award[3304440][1][4]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304440][1][4]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304440][1][4]["RewardEffect"]["Effect"] = "touzi_4"
	tTheGodOfGambling_Award[3304440][1][4]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304440][1][4]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304440][1][4]["RewardItem"][1]["Id"] = 3304308
	tTheGodOfGambling_Award[3304440][1][4]["RewardItem"][1]["Attr"] = "0 1"
	-- tTheGodOfGambling_Award[3304440][1][4]["Talk"] = tTheGodOfGambling_Text["touzi"][3304263][4]
	tTheGodOfGambling_Award[3304440][1][4]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304440][1][4]["LogStep"] = "2"	
	-- 50赠点礼包*1   9.40%
	tTheGodOfGambling_Award[3304440][1][5] = {}
	tTheGodOfGambling_Award[3304440][1][5]["RandomItemChanceType"] = 2
	tTheGodOfGambling_Award[3304440][1][5]["ItemChance"] = 940
	tTheGodOfGambling_Award[3304440][1][5]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304440][1][5]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304440][1][5]["RewardEffect"]["Effect"] = "touzi_5"
	tTheGodOfGambling_Award[3304440][1][5]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304440][1][5]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304440][1][5]["RewardItem"][1]["Id"] = 3304309
	tTheGodOfGambling_Award[3304440][1][5]["RewardItem"][1]["Attr"] = "0 1"
	-- tTheGodOfGambling_Award[3304440][1][5]["Talk"] = tTheGodOfGambling_Text["touzi"][3304263][5]
	tTheGodOfGambling_Award[3304440][1][5]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304440][1][5]["LogStep"] = "2"	
	-- 500赠点礼包*1   550%      -- 全服公告
	tTheGodOfGambling_Award[3304440][1][6] = {}
	tTheGodOfGambling_Award[3304440][1][6]["TellToAll"] = 1
	tTheGodOfGambling_Award[3304440][1][6]["RandomItemChanceType"] = 2
	tTheGodOfGambling_Award[3304440][1][6]["ItemChance"] = 550
	tTheGodOfGambling_Award[3304440][1][6]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304440][1][6]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304440][1][6]["RewardEffect"]["Effect"] = "touzi_6"
	tTheGodOfGambling_Award[3304440][1][6]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304440][1][6]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304440][1][6]["RewardItem"][1]["Id"] = 3304311
	tTheGodOfGambling_Award[3304440][1][6]["RewardItem"][1]["Attr"] = "0 1"
	-- tTheGodOfGambling_Award[3304440][1][6]["Talk"] = tTheGodOfGambling_Text["touzi"][3304263][6]
	tTheGodOfGambling_Award[3304440][1][6]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304440][1][6]["LogStep"] = "2"		
	-- 2000赠点礼包*1   0.10%    
	tTheGodOfGambling_Award[3304440][1][7] = {}
	tTheGodOfGambling_Award[3304440][1][7]["TellToAll"] = 1
	tTheGodOfGambling_Award[3304440][1][7]["RandomItemChanceType"] = 2
	tTheGodOfGambling_Award[3304440][1][7]["ItemChance"] = 10
	tTheGodOfGambling_Award[3304440][1][7]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304440][1][7]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304440][1][7]["RewardEffect"]["Effect"] = "bombarrow"
	tTheGodOfGambling_Award[3304440][1][7]["RewardEMoneyMono"] = {}
	tTheGodOfGambling_Award[3304440][1][7]["RewardEMoneyMono"]["Value"] = 2000
	-- tTheGodOfGambling_Award[3304440][1][7]["Talk"] = tTheGodOfGambling_Text["touzi"][3304263][7]
	tTheGodOfGambling_Award[3304440][1][7]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304440][1][7]["LogStep"] = "2"	
	-- 10赠点礼包*1   100%
	tTheGodOfGambling_Award[3304440][2] = {}
	tTheGodOfGambling_Award[3304440][2]["RewardEffect"] = {}
	tTheGodOfGambling_Award[3304440][2]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_Award[3304440][2]["RewardEffect"]["Effect"] = "touzi_1"
	tTheGodOfGambling_Award[3304440][2]["DeleteItem"] = {}
	tTheGodOfGambling_Award[3304440][2]["DeleteItem"][1] = {}
	tTheGodOfGambling_Award[3304440][2]["DeleteItem"][1]["Id"] = 3304440
	tTheGodOfGambling_Award[3304440][2]["RewardItem"] = {}
	tTheGodOfGambling_Award[3304440][2]["RewardItem"][1] = {}
	tTheGodOfGambling_Award[3304440][2]["RewardItem"][1]["Id"] = 3304305
	tTheGodOfGambling_Award[3304440][2]["RewardItem"][1]["Attr"] = "0 1"
	-- tTheGodOfGambling_Award[3304440][2]["Talk"] = tTheGodOfGambling_Text["touzi"][3304263][1]
	tTheGodOfGambling_Award[3304440][2]["LogId"] = 12000795
	tTheGodOfGambling_Award[3304440][2]["LogStep"] = "2"	
	
local tTheGodOfGambling_NewAward = {}
-- 赤炼石骰子
	tTheGodOfGambling_NewAward[3304260] = {}
	tTheGodOfGambling_NewAward[3304260]["TimeLimit"] = 3
	tTheGodOfGambling_NewAward[3304260]["Touzi"] = 1
	tTheGodOfGambling_NewAward[3304260]["FromItem"] = 3304260
	tTheGodOfGambling_NewAward[3304260][1] = {}
	tTheGodOfGambling_NewAward[3304260][1]["ItemChanceSum"] = 10000
	-- 赤炼石+1（赠）礼包*1   22%
	tTheGodOfGambling_NewAward[3304260][1][1] = {}
	tTheGodOfGambling_NewAward[3304260][1][1]["RandomItemChanceType"] = 2
	tTheGodOfGambling_NewAward[3304260][1][1]["ItemChance"] = 2200
	tTheGodOfGambling_NewAward[3304260][1][1]["RewardEffect"] = {}
	tTheGodOfGambling_NewAward[3304260][1][1]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_NewAward[3304260][1][1]["RewardEffect"]["Effect"] = "touzi_1"
	tTheGodOfGambling_NewAward[3304260][1][1]["RewardItem"] = {}
	tTheGodOfGambling_NewAward[3304260][1][1]["RewardItem"][1] = {}
	tTheGodOfGambling_NewAward[3304260][1][1]["RewardItem"][1]["Id"] = 3304295
	tTheGodOfGambling_NewAward[3304260][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_NewAward[3304260][1][1]["RewardItem"][2] = {}
	tTheGodOfGambling_NewAward[3304260][1][1]["RewardItem"][2]["Id"] = 3303926
	tTheGodOfGambling_NewAward[3304260][1][1]["RewardItem"][2]["Attr"] = "0 30"
	tTheGodOfGambling_NewAward[3304260][1][1]["LogId"] = 12000795
	tTheGodOfGambling_NewAward[3304260][1][1]["LogStep"] = "2"	
	-- 赤炼石+1（赠）礼包*2   23%
	tTheGodOfGambling_NewAward[3304260][1][2] = {}
	tTheGodOfGambling_NewAward[3304260][1][2]["RandomItemChanceType"] = 2
	tTheGodOfGambling_NewAward[3304260][1][2]["ItemChance"] = 2300
	tTheGodOfGambling_NewAward[3304260][1][2]["RewardEffect"] = {}
	tTheGodOfGambling_NewAward[3304260][1][2]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_NewAward[3304260][1][2]["RewardEffect"]["Effect"] = "touzi_2"
	tTheGodOfGambling_NewAward[3304260][1][2]["RewardItem"] = {}
	tTheGodOfGambling_NewAward[3304260][1][2]["RewardItem"][1] = {}
	tTheGodOfGambling_NewAward[3304260][1][2]["RewardItem"][1]["Id"] = 3304421
	tTheGodOfGambling_NewAward[3304260][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_NewAward[3304260][1][2]["RewardItem"][2] = {}
	tTheGodOfGambling_NewAward[3304260][1][2]["RewardItem"][2]["Id"] = 3303926
	tTheGodOfGambling_NewAward[3304260][1][2]["RewardItem"][2]["Attr"] = "0 30"
	tTheGodOfGambling_NewAward[3304260][1][2]["LogId"] = 12000795
	tTheGodOfGambling_NewAward[3304260][1][2]["LogStep"] = "2"	
	-- 赤炼石+1（赠）礼包*3   20%
	tTheGodOfGambling_NewAward[3304260][1][3] = {}
	tTheGodOfGambling_NewAward[3304260][1][3]["RandomItemChanceType"] = 2
	tTheGodOfGambling_NewAward[3304260][1][3]["ItemChance"] = 2000
	tTheGodOfGambling_NewAward[3304260][1][3]["RewardEffect"] = {}
	tTheGodOfGambling_NewAward[3304260][1][3]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_NewAward[3304260][1][3]["RewardEffect"]["Effect"] = "touzi_3"
	tTheGodOfGambling_NewAward[3304260][1][3]["RewardItem"] = {}
	tTheGodOfGambling_NewAward[3304260][1][3]["RewardItem"][1] = {}
	tTheGodOfGambling_NewAward[3304260][1][3]["RewardItem"][1]["Id"] = 3304422
	tTheGodOfGambling_NewAward[3304260][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_NewAward[3304260][1][3]["RewardItem"][2] = {}
	tTheGodOfGambling_NewAward[3304260][1][3]["RewardItem"][2]["Id"] = 3303926
	tTheGodOfGambling_NewAward[3304260][1][3]["RewardItem"][2]["Attr"] = "0 30"
	tTheGodOfGambling_NewAward[3304260][1][3]["LogId"] = 12000795
	tTheGodOfGambling_NewAward[3304260][1][3]["LogStep"] = "2"	
	-- 赤炼石+1（赠）礼包*4   17%
	tTheGodOfGambling_NewAward[3304260][1][4] = {}
	tTheGodOfGambling_NewAward[3304260][1][4]["RandomItemChanceType"] = 2
	tTheGodOfGambling_NewAward[3304260][1][4]["ItemChance"] = 1700
	tTheGodOfGambling_NewAward[3304260][1][4]["RewardEffect"] = {}
	tTheGodOfGambling_NewAward[3304260][1][4]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_NewAward[3304260][1][4]["RewardEffect"]["Effect"] = "touzi_4"
	tTheGodOfGambling_NewAward[3304260][1][4]["RewardItem"] = {}
	tTheGodOfGambling_NewAward[3304260][1][4]["RewardItem"][1] = {}
	tTheGodOfGambling_NewAward[3304260][1][4]["RewardItem"][1]["Id"] = 3304423
	tTheGodOfGambling_NewAward[3304260][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_NewAward[3304260][1][4]["RewardItem"][2] = {}
	tTheGodOfGambling_NewAward[3304260][1][4]["RewardItem"][2]["Id"] = 3303926
	tTheGodOfGambling_NewAward[3304260][1][4]["RewardItem"][2]["Attr"] = "0 30"
	tTheGodOfGambling_NewAward[3304260][1][4]["LogId"] = 12000795
	tTheGodOfGambling_NewAward[3304260][1][4]["LogStep"] = "2"	
	-- 赤炼石+1（赠）礼包*5   11.30%
	tTheGodOfGambling_NewAward[3304260][1][5] = {}
	tTheGodOfGambling_NewAward[3304260][1][5]["RandomItemChanceType"] = 2
	tTheGodOfGambling_NewAward[3304260][1][5]["ItemChance"] = 1130
	tTheGodOfGambling_NewAward[3304260][1][5]["RewardEffect"] = {}
	tTheGodOfGambling_NewAward[3304260][1][5]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_NewAward[3304260][1][5]["RewardEffect"]["Effect"] = "touzi_5"
	tTheGodOfGambling_NewAward[3304260][1][5]["RewardItem"] = {}
	tTheGodOfGambling_NewAward[3304260][1][5]["RewardItem"][1] = {}
	tTheGodOfGambling_NewAward[3304260][1][5]["RewardItem"][1]["Id"] = 3304424
	tTheGodOfGambling_NewAward[3304260][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_NewAward[3304260][1][5]["RewardItem"][2] = {}
	tTheGodOfGambling_NewAward[3304260][1][5]["RewardItem"][2]["Id"] = 3303926
	tTheGodOfGambling_NewAward[3304260][1][5]["RewardItem"][2]["Attr"] = "0 30"
	tTheGodOfGambling_NewAward[3304260][1][5]["LogId"] = 12000795
	tTheGodOfGambling_NewAward[3304260][1][5]["LogStep"] = "2"	
	-- 赤炼石+5（赠）礼包*1   6.60%      
	tTheGodOfGambling_NewAward[3304260][1][6] = {}
	tTheGodOfGambling_NewAward[3304260][1][6]["TellToAll"] = 1
	tTheGodOfGambling_NewAward[3304260][1][6]["RandomItemChanceType"] = 2
	tTheGodOfGambling_NewAward[3304260][1][6]["ItemChance"] = 660
	tTheGodOfGambling_NewAward[3304260][1][6]["RewardEffect"] = {}
	tTheGodOfGambling_NewAward[3304260][1][6]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_NewAward[3304260][1][6]["RewardEffect"]["Effect"] = "touzi_6"
	tTheGodOfGambling_NewAward[3304260][1][6]["RewardItem"] = {}
	tTheGodOfGambling_NewAward[3304260][1][6]["RewardItem"][1] = {}
	tTheGodOfGambling_NewAward[3304260][1][6]["RewardItem"][1]["Id"] = 3304299
	tTheGodOfGambling_NewAward[3304260][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_NewAward[3304260][1][6]["RewardItem"][2] = {}
	tTheGodOfGambling_NewAward[3304260][1][6]["RewardItem"][2]["Id"] = 3303926
	tTheGodOfGambling_NewAward[3304260][1][6]["RewardItem"][2]["Attr"] = "0 30"
	tTheGodOfGambling_NewAward[3304260][1][6]["LogId"] = 12000795
	tTheGodOfGambling_NewAward[3304260][1][6]["LogStep"] = "2"		
	-- 赤炼石+6（赠）礼包*1   0.10%      
	tTheGodOfGambling_NewAward[3304260][1][7] = {}
	tTheGodOfGambling_NewAward[3304260][1][7]["TellToAll"] = 1
	tTheGodOfGambling_NewAward[3304260][1][7]["RandomItemChanceType"] = 2
	tTheGodOfGambling_NewAward[3304260][1][7]["ItemChance"] = 10
	tTheGodOfGambling_NewAward[3304260][1][7]["RewardEffect"] = {}
	tTheGodOfGambling_NewAward[3304260][1][7]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_NewAward[3304260][1][7]["RewardEffect"]["Effect"] = "bombarrow"
	tTheGodOfGambling_NewAward[3304260][1][7]["RewardItem"] = {}
	tTheGodOfGambling_NewAward[3304260][1][7]["RewardItem"][1] = {}
	tTheGodOfGambling_NewAward[3304260][1][7]["RewardItem"][1]["Id"] = 3304301
	tTheGodOfGambling_NewAward[3304260][1][7]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_NewAward[3304260][1][7]["RewardItem"][2] = {}
	tTheGodOfGambling_NewAward[3304260][1][7]["RewardItem"][2]["Id"] = 3303926
	tTheGodOfGambling_NewAward[3304260][1][7]["RewardItem"][2]["Attr"] = "0 30"
	tTheGodOfGambling_NewAward[3304260][1][7]["LogId"] = 12000795
	tTheGodOfGambling_NewAward[3304260][1][7]["LogStep"] = "2"		
	
-- 星陨石骰子
	tTheGodOfGambling_NewAward[3304261] = {}
	tTheGodOfGambling_NewAward[3304261]["OverTimeDel"] = 1
	tTheGodOfGambling_NewAward[3304261]["TimeLimit"] = 3
	tTheGodOfGambling_NewAward[3304261]["Touzi"] = 1
	tTheGodOfGambling_NewAward[3304261]["FromItem"] = 3304261
	tTheGodOfGambling_NewAward[3304261][1] = {}
	tTheGodOfGambling_NewAward[3304261][1]["ItemChanceSum"] = 10000
	-- 微光星陨石礼包*1   22%
	tTheGodOfGambling_NewAward[3304261][1][1] = {}
	tTheGodOfGambling_NewAward[3304261][1][1]["RandomItemChanceType"] = 2
	tTheGodOfGambling_NewAward[3304261][1][1]["ItemChance"] = 2200
	tTheGodOfGambling_NewAward[3304261][1][1]["RewardEffect"] = {}
	tTheGodOfGambling_NewAward[3304261][1][1]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_NewAward[3304261][1][1]["RewardEffect"]["Effect"] = "touzi_1"
	tTheGodOfGambling_NewAward[3304261][1][1]["RewardItem"] = {}
	tTheGodOfGambling_NewAward[3304261][1][1]["RewardItem"][1] = {}
	tTheGodOfGambling_NewAward[3304261][1][1]["RewardItem"][1]["Id"] = 3304337
	tTheGodOfGambling_NewAward[3304261][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_NewAward[3304261][1][1]["RewardItem"][2] = {}
	tTheGodOfGambling_NewAward[3304261][1][1]["RewardItem"][2]["Id"] = 3303926
	tTheGodOfGambling_NewAward[3304261][1][1]["RewardItem"][2]["Attr"] = "0 30"
	tTheGodOfGambling_NewAward[3304261][1][1]["LogId"] = 12000795
	tTheGodOfGambling_NewAward[3304261][1][1]["LogStep"] = "2"	
	-- 微光星陨石礼包*2   22%
	tTheGodOfGambling_NewAward[3304261][1][2] = {}
	tTheGodOfGambling_NewAward[3304261][1][2]["RandomItemChanceType"] = 2
	tTheGodOfGambling_NewAward[3304261][1][2]["ItemChance"] = 2200
	tTheGodOfGambling_NewAward[3304261][1][2]["RewardEffect"] = {}
	tTheGodOfGambling_NewAward[3304261][1][2]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_NewAward[3304261][1][2]["RewardEffect"]["Effect"] = "touzi_2"
	tTheGodOfGambling_NewAward[3304261][1][2]["RewardItem"] = {}
	tTheGodOfGambling_NewAward[3304261][1][2]["RewardItem"][1] = {}
	tTheGodOfGambling_NewAward[3304261][1][2]["RewardItem"][1]["Id"] = 3304338
	tTheGodOfGambling_NewAward[3304261][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_NewAward[3304261][1][2]["RewardItem"][2] = {}
	tTheGodOfGambling_NewAward[3304261][1][2]["RewardItem"][2]["Id"] = 3303926
	tTheGodOfGambling_NewAward[3304261][1][2]["RewardItem"][2]["Attr"] = "0 30"
	tTheGodOfGambling_NewAward[3304261][1][2]["LogId"] = 12000795
	tTheGodOfGambling_NewAward[3304261][1][2]["LogStep"] = "2"	
	-- 微光星陨石礼包*3   20%
	tTheGodOfGambling_NewAward[3304261][1][3] = {}
	tTheGodOfGambling_NewAward[3304261][1][3]["RandomItemChanceType"] = 2
	tTheGodOfGambling_NewAward[3304261][1][3]["ItemChance"] = 2000
	tTheGodOfGambling_NewAward[3304261][1][3]["RewardEffect"] = {}
	tTheGodOfGambling_NewAward[3304261][1][3]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_NewAward[3304261][1][3]["RewardEffect"]["Effect"] = "touzi_3"
	tTheGodOfGambling_NewAward[3304261][1][3]["RewardItem"] = {}
	tTheGodOfGambling_NewAward[3304261][1][3]["RewardItem"][1] = {}
	tTheGodOfGambling_NewAward[3304261][1][3]["RewardItem"][1]["Id"] = 3304339
	tTheGodOfGambling_NewAward[3304261][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_NewAward[3304261][1][3]["RewardItem"][2] = {}
	tTheGodOfGambling_NewAward[3304261][1][3]["RewardItem"][2]["Id"] = 3303926
	tTheGodOfGambling_NewAward[3304261][1][3]["RewardItem"][2]["Attr"] = "0 30"
	tTheGodOfGambling_NewAward[3304261][1][3]["LogId"] = 12000795
	tTheGodOfGambling_NewAward[3304261][1][3]["LogStep"] = "2"	
	-- 微光星陨石礼包*4   18%
	tTheGodOfGambling_NewAward[3304261][1][4] = {}
	tTheGodOfGambling_NewAward[3304261][1][4]["RandomItemChanceType"] = 2
	tTheGodOfGambling_NewAward[3304261][1][4]["ItemChance"] = 1800
	tTheGodOfGambling_NewAward[3304261][1][4]["RewardEffect"] = {}
	tTheGodOfGambling_NewAward[3304261][1][4]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_NewAward[3304261][1][4]["RewardEffect"]["Effect"] = "touzi_4"
	tTheGodOfGambling_NewAward[3304261][1][4]["RewardItem"] = {}
	tTheGodOfGambling_NewAward[3304261][1][4]["RewardItem"][1] = {}
	tTheGodOfGambling_NewAward[3304261][1][4]["RewardItem"][1]["Id"] = 3304340
	tTheGodOfGambling_NewAward[3304261][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_NewAward[3304261][1][4]["RewardItem"][2] = {}
	tTheGodOfGambling_NewAward[3304261][1][4]["RewardItem"][2]["Id"] = 3303926
	tTheGodOfGambling_NewAward[3304261][1][4]["RewardItem"][2]["Attr"] = "0 30"
	tTheGodOfGambling_NewAward[3304261][1][4]["LogId"] = 12000795
	tTheGodOfGambling_NewAward[3304261][1][4]["LogStep"] = "2"	
	-- 微光星陨石礼包*5   11.30%
	tTheGodOfGambling_NewAward[3304261][1][5] = {}
	tTheGodOfGambling_NewAward[3304261][1][5]["RandomItemChanceType"] = 2
	tTheGodOfGambling_NewAward[3304261][1][5]["ItemChance"] = 1130
	tTheGodOfGambling_NewAward[3304261][1][5]["RewardEffect"] = {}
	tTheGodOfGambling_NewAward[3304261][1][5]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_NewAward[3304261][1][5]["RewardEffect"]["Effect"] = "touzi_5"
	tTheGodOfGambling_NewAward[3304261][1][5]["RewardItem"] = {}
	tTheGodOfGambling_NewAward[3304261][1][5]["RewardItem"][1] = {}
	tTheGodOfGambling_NewAward[3304261][1][5]["RewardItem"][1]["Id"] = 3304341
	tTheGodOfGambling_NewAward[3304261][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_NewAward[3304261][1][5]["RewardItem"][2] = {}
	tTheGodOfGambling_NewAward[3304261][1][5]["RewardItem"][2]["Id"] = 3303926
	tTheGodOfGambling_NewAward[3304261][1][5]["RewardItem"][2]["Attr"] = "0 30"
	tTheGodOfGambling_NewAward[3304261][1][5]["LogId"] = 12000795
	tTheGodOfGambling_NewAward[3304261][1][5]["LogStep"] = "2"	
	-- 晶莹星陨石礼包*1   6.60% 
	tTheGodOfGambling_NewAward[3304261][1][6] = {}
	tTheGodOfGambling_NewAward[3304261][1][6]["TellToAll"] = 1
	tTheGodOfGambling_NewAward[3304261][1][6]["RandomItemChanceType"] = 2
	tTheGodOfGambling_NewAward[3304261][1][6]["ItemChance"] = 660
	tTheGodOfGambling_NewAward[3304261][1][6]["RewardEffect"] = {}
	tTheGodOfGambling_NewAward[3304261][1][6]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_NewAward[3304261][1][6]["RewardEffect"]["Effect"] = "touzi_6"
	tTheGodOfGambling_NewAward[3304261][1][6]["RewardItem"] = {}
	tTheGodOfGambling_NewAward[3304261][1][6]["RewardItem"][1] = {}
	tTheGodOfGambling_NewAward[3304261][1][6]["RewardItem"][1]["Id"] = 3304347
	tTheGodOfGambling_NewAward[3304261][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_NewAward[3304261][1][6]["RewardItem"][2] = {}
	tTheGodOfGambling_NewAward[3304261][1][6]["RewardItem"][2]["Id"] = 3303926
	tTheGodOfGambling_NewAward[3304261][1][6]["RewardItem"][2]["Attr"] = "0 30"
	tTheGodOfGambling_NewAward[3304261][1][6]["LogId"] = 12000795
	tTheGodOfGambling_NewAward[3304261][1][6]["LogStep"] = "2"		
	-- 璀璨星陨石礼包*1   0.10%      -- 全服公告
	tTheGodOfGambling_NewAward[3304261][1][7] = {}
	tTheGodOfGambling_NewAward[3304261][1][7]["TellToAll"] = 1
	tTheGodOfGambling_NewAward[3304261][1][7]["RandomItemChanceType"] = 2
	tTheGodOfGambling_NewAward[3304261][1][7]["ItemChance"] = 10
	tTheGodOfGambling_NewAward[3304261][1][7]["RewardEffect"] = {}
	tTheGodOfGambling_NewAward[3304261][1][7]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_NewAward[3304261][1][7]["RewardEffect"]["Effect"] = "bombarrow"
	tTheGodOfGambling_NewAward[3304261][1][7]["RewardItem"] = {}
	tTheGodOfGambling_NewAward[3304261][1][7]["RewardItem"][1] = {}
	tTheGodOfGambling_NewAward[3304261][1][7]["RewardItem"][1]["Id"] = 3009003
	tTheGodOfGambling_NewAward[3304261][1][7]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tTheGodOfGambling_NewAward[3304261][1][7]["RewardItem"][2] = {}
	tTheGodOfGambling_NewAward[3304261][1][7]["RewardItem"][2]["Id"] = 3303926
	tTheGodOfGambling_NewAward[3304261][1][7]["RewardItem"][2]["Attr"] = "0 30"
	tTheGodOfGambling_NewAward[3304261][1][7]["LogId"] = 12000795
	tTheGodOfGambling_NewAward[3304261][1][7]["LogStep"] = "2"	
	

-- 气力值骰子
	tTheGodOfGambling_NewAward[3304262] = {}
	tTheGodOfGambling_NewAward[3304262]["TimeLimit"] = 3
	tTheGodOfGambling_NewAward[3304262]["Touzi"] = 1
	tTheGodOfGambling_NewAward[3304262]["FromItem"] = 3304262
	tTheGodOfGambling_NewAward[3304262][1] = {}
	tTheGodOfGambling_NewAward[3304262][1]["ItemChanceSum"] = 10000
	-- 20气力值礼包*1   22%
	tTheGodOfGambling_NewAward[3304262][1][1] = {}
	tTheGodOfGambling_NewAward[3304262][1][1]["RandomItemChanceType"] = 2
	tTheGodOfGambling_NewAward[3304262][1][1]["ItemChance"] = 2200
	tTheGodOfGambling_NewAward[3304262][1][1]["RewardEffect"] = {}
	tTheGodOfGambling_NewAward[3304262][1][1]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_NewAward[3304262][1][1]["RewardEffect"]["Effect"] = "touzi_1"
	tTheGodOfGambling_NewAward[3304262][1][1]["RewardItem"] = {}
	tTheGodOfGambling_NewAward[3304262][1][1]["RewardItem"][1] = {}
	tTheGodOfGambling_NewAward[3304262][1][1]["RewardItem"][1]["Id"] = 3008185
	tTheGodOfGambling_NewAward[3304262][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_NewAward[3304262][1][1]["RewardItem"][2] = {}
	tTheGodOfGambling_NewAward[3304262][1][1]["RewardItem"][2]["Id"] = 3303926
	tTheGodOfGambling_NewAward[3304262][1][1]["RewardItem"][2]["Attr"] = "0 30"
	tTheGodOfGambling_NewAward[3304262][1][1]["LogId"] = 12000795
	tTheGodOfGambling_NewAward[3304262][1][1]["LogStep"] = "2"	
	-- 30气力值礼包*1   22%
	tTheGodOfGambling_NewAward[3304262][1][2] = {}
	tTheGodOfGambling_NewAward[3304262][1][2]["RandomItemChanceType"] = 2
	tTheGodOfGambling_NewAward[3304262][1][2]["ItemChance"] = 2200
	tTheGodOfGambling_NewAward[3304262][1][2]["RewardEffect"] = {}
	tTheGodOfGambling_NewAward[3304262][1][2]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_NewAward[3304262][1][2]["RewardEffect"]["Effect"] = "touzi_2"
	tTheGodOfGambling_NewAward[3304262][1][2]["RewardItem"] = {}
	tTheGodOfGambling_NewAward[3304262][1][2]["RewardItem"][1] = {}
	tTheGodOfGambling_NewAward[3304262][1][2]["RewardItem"][1]["Id"] = 3304319
	tTheGodOfGambling_NewAward[3304262][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_NewAward[3304262][1][2]["RewardItem"][2] = {}
	tTheGodOfGambling_NewAward[3304262][1][2]["RewardItem"][2]["Id"] = 3303926
	tTheGodOfGambling_NewAward[3304262][1][2]["RewardItem"][2]["Attr"] = "0 30"
	tTheGodOfGambling_NewAward[3304262][1][2]["LogId"] = 12000795
	tTheGodOfGambling_NewAward[3304262][1][2]["LogStep"] = "2"	
	-- 50气力值礼包*1   20%
	tTheGodOfGambling_NewAward[3304262][1][3] = {}
	tTheGodOfGambling_NewAward[3304262][1][3]["RandomItemChanceType"] = 2
	tTheGodOfGambling_NewAward[3304262][1][3]["ItemChance"] = 2000
	tTheGodOfGambling_NewAward[3304262][1][3]["RewardEffect"] = {}
	tTheGodOfGambling_NewAward[3304262][1][3]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_NewAward[3304262][1][3]["RewardEffect"]["Effect"] = "touzi_3"
	tTheGodOfGambling_NewAward[3304262][1][3]["RewardItem"] = {}
	tTheGodOfGambling_NewAward[3304262][1][3]["RewardItem"][1] = {}
	tTheGodOfGambling_NewAward[3304262][1][3]["RewardItem"][1]["Id"] = 3008186
	tTheGodOfGambling_NewAward[3304262][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_NewAward[3304262][1][3]["RewardItem"][2] = {}
	tTheGodOfGambling_NewAward[3304262][1][3]["RewardItem"][2]["Id"] = 3303926
	tTheGodOfGambling_NewAward[3304262][1][3]["RewardItem"][2]["Attr"] = "0 30"
	tTheGodOfGambling_NewAward[3304262][1][3]["LogId"] = 12000795
	tTheGodOfGambling_NewAward[3304262][1][3]["LogStep"] = "2"	
	-- 60气力值礼包*1   16%
	tTheGodOfGambling_NewAward[3304262][1][4] = {}
	tTheGodOfGambling_NewAward[3304262][1][4]["RandomItemChanceType"] = 2
	tTheGodOfGambling_NewAward[3304262][1][4]["ItemChance"] = 1600
	tTheGodOfGambling_NewAward[3304262][1][4]["RewardEffect"] = {}
	tTheGodOfGambling_NewAward[3304262][1][4]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_NewAward[3304262][1][4]["RewardEffect"]["Effect"] = "touzi_4"
	tTheGodOfGambling_NewAward[3304262][1][4]["RewardItem"] = {}
	tTheGodOfGambling_NewAward[3304262][1][4]["RewardItem"][1] = {}
	tTheGodOfGambling_NewAward[3304262][1][4]["RewardItem"][1]["Id"] = 3304322
	tTheGodOfGambling_NewAward[3304262][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_NewAward[3304262][1][4]["RewardItem"][2] = {}
	tTheGodOfGambling_NewAward[3304262][1][4]["RewardItem"][2]["Id"] = 3303926
	tTheGodOfGambling_NewAward[3304262][1][4]["RewardItem"][2]["Attr"] = "0 30"
	tTheGodOfGambling_NewAward[3304262][1][4]["LogId"] = 12000795
	tTheGodOfGambling_NewAward[3304262][1][4]["LogStep"] = "2"	
	-- 80气力值礼包*1   11%
	tTheGodOfGambling_NewAward[3304262][1][5] = {}
	tTheGodOfGambling_NewAward[3304262][1][5]["RandomItemChanceType"] = 2
	tTheGodOfGambling_NewAward[3304262][1][5]["ItemChance"] = 1100
	tTheGodOfGambling_NewAward[3304262][1][5]["RewardEffect"] = {}
	tTheGodOfGambling_NewAward[3304262][1][5]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_NewAward[3304262][1][5]["RewardEffect"]["Effect"] = "touzi_5"
	tTheGodOfGambling_NewAward[3304262][1][5]["RewardItem"] = {}
	tTheGodOfGambling_NewAward[3304262][1][5]["RewardItem"][1] = {}
	tTheGodOfGambling_NewAward[3304262][1][5]["RewardItem"][1]["Id"] = 3304323
	tTheGodOfGambling_NewAward[3304262][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_NewAward[3304262][1][5]["RewardItem"][2] = {}
	tTheGodOfGambling_NewAward[3304262][1][5]["RewardItem"][2]["Id"] = 3303926
	tTheGodOfGambling_NewAward[3304262][1][5]["RewardItem"][2]["Attr"] = "0 30"
	tTheGodOfGambling_NewAward[3304262][1][5]["LogId"] = 12000795
	tTheGodOfGambling_NewAward[3304262][1][5]["LogStep"] = "2"	
	-- 1500气力值礼包*1   8.9%      -- 全服公告
	tTheGodOfGambling_NewAward[3304262][1][6] = {}
	tTheGodOfGambling_NewAward[3304262][1][6]["TellToAll"] = 1
	tTheGodOfGambling_NewAward[3304262][1][6]["RandomItemChanceType"] = 2
	tTheGodOfGambling_NewAward[3304262][1][6]["ItemChance"] = 890
	tTheGodOfGambling_NewAward[3304262][1][6]["RewardEffect"] = {}
	tTheGodOfGambling_NewAward[3304262][1][6]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_NewAward[3304262][1][6]["RewardEffect"]["Effect"] = "touzi_6"
	tTheGodOfGambling_NewAward[3304262][1][6]["RewardItem"] = {}
	tTheGodOfGambling_NewAward[3304262][1][6]["RewardItem"][1] = {}
	tTheGodOfGambling_NewAward[3304262][1][6]["RewardItem"][1]["Id"] = 3008195
	tTheGodOfGambling_NewAward[3304262][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_NewAward[3304262][1][6]["RewardItem"][2] = {}
	tTheGodOfGambling_NewAward[3304262][1][6]["RewardItem"][2]["Id"] = 3303926
	tTheGodOfGambling_NewAward[3304262][1][6]["RewardItem"][2]["Attr"] = "0 30"
	tTheGodOfGambling_NewAward[3304262][1][6]["LogId"] = 12000795
	tTheGodOfGambling_NewAward[3304262][1][6]["LogStep"] = "2"		
	-- 4000气力值礼包*1   0.10%      -- 全服公告
	tTheGodOfGambling_NewAward[3304262][1][7] = {}
	tTheGodOfGambling_NewAward[3304262][1][7]["TellToAll"] = 1
	tTheGodOfGambling_NewAward[3304262][1][7]["RandomItemChanceType"] = 2
	tTheGodOfGambling_NewAward[3304262][1][7]["ItemChance"] = 10
	tTheGodOfGambling_NewAward[3304262][1][7]["RewardEffect"] = {}
	tTheGodOfGambling_NewAward[3304262][1][7]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_NewAward[3304262][1][7]["RewardEffect"]["Effect"] = "bombarrow"
	tTheGodOfGambling_NewAward[3304262][1][7]["RewardItem"] = {}
	tTheGodOfGambling_NewAward[3304262][1][7]["RewardItem"][1] = {}
	tTheGodOfGambling_NewAward[3304262][1][7]["RewardItem"][1]["Id"] = 3008199
	tTheGodOfGambling_NewAward[3304262][1][7]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_NewAward[3304262][1][7]["RewardItem"][2] = {}
	tTheGodOfGambling_NewAward[3304262][1][7]["RewardItem"][2]["Id"] = 3303926
	tTheGodOfGambling_NewAward[3304262][1][7]["RewardItem"][2]["Attr"] = "0 30"
	tTheGodOfGambling_NewAward[3304262][1][7]["LogId"] = 12000795
	tTheGodOfGambling_NewAward[3304262][1][7]["LogStep"] = "2"		
	
-- 赠点骰子
	tTheGodOfGambling_NewAward[3304263] = {}
	tTheGodOfGambling_NewAward[3304263]["TimeLimit"] = 3
	tTheGodOfGambling_NewAward[3304263]["Touzi"] = 1
	tTheGodOfGambling_NewAward[3304263]["FromItem"] = 3304263
	tTheGodOfGambling_NewAward[3304263][1] = {}
	tTheGodOfGambling_NewAward[3304263][1]["ItemChanceSum"] = 10000
	-- 10赠点礼包*1   25%
	tTheGodOfGambling_NewAward[3304263][1][1] = {}
	tTheGodOfGambling_NewAward[3304263][1][1]["RandomItemChanceType"] = 2
	tTheGodOfGambling_NewAward[3304263][1][1]["ItemChance"] = 2500
	tTheGodOfGambling_NewAward[3304263][1][1]["RewardEffect"] = {}
	tTheGodOfGambling_NewAward[3304263][1][1]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_NewAward[3304263][1][1]["RewardEffect"]["Effect"] = "touzi_1"
	tTheGodOfGambling_NewAward[3304263][1][1]["RewardItem"] = {}
	tTheGodOfGambling_NewAward[3304263][1][1]["RewardItem"][1] = {}
	tTheGodOfGambling_NewAward[3304263][1][1]["RewardItem"][1]["Id"] = 3304305
	tTheGodOfGambling_NewAward[3304263][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_NewAward[3304263][1][1]["RewardItem"][2] = {}
	tTheGodOfGambling_NewAward[3304263][1][1]["RewardItem"][2]["Id"] = 3303926
	tTheGodOfGambling_NewAward[3304263][1][1]["RewardItem"][2]["Attr"] = "0 30"
	tTheGodOfGambling_NewAward[3304263][1][1]["LogId"] = 12000795
	tTheGodOfGambling_NewAward[3304263][1][1]["LogStep"] = "2"	
	-- 20赠点礼包*1   23%
	tTheGodOfGambling_NewAward[3304263][1][2] = {}
	tTheGodOfGambling_NewAward[3304263][1][2]["RandomItemChanceType"] = 2
	tTheGodOfGambling_NewAward[3304263][1][2]["ItemChance"] = 2300
	tTheGodOfGambling_NewAward[3304263][1][2]["RewardEffect"] = {}
	tTheGodOfGambling_NewAward[3304263][1][2]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_NewAward[3304263][1][2]["RewardEffect"]["Effect"] = "touzi_2"
	tTheGodOfGambling_NewAward[3304263][1][2]["RewardItem"] = {}
	tTheGodOfGambling_NewAward[3304263][1][2]["RewardItem"][1] = {}
	tTheGodOfGambling_NewAward[3304263][1][2]["RewardItem"][1]["Id"] = 3304306
	tTheGodOfGambling_NewAward[3304263][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_NewAward[3304263][1][2]["RewardItem"][2] = {}
	tTheGodOfGambling_NewAward[3304263][1][2]["RewardItem"][2]["Id"] = 3303926
	tTheGodOfGambling_NewAward[3304263][1][2]["RewardItem"][2]["Attr"] = "0 30"
	tTheGodOfGambling_NewAward[3304263][1][2]["LogId"] = 12000795
	tTheGodOfGambling_NewAward[3304263][1][2]["LogStep"] = "2"	
	-- 30赠点礼包*1   21%
	tTheGodOfGambling_NewAward[3304263][1][3] = {}
	tTheGodOfGambling_NewAward[3304263][1][3]["RandomItemChanceType"] = 2
	tTheGodOfGambling_NewAward[3304263][1][3]["ItemChance"] = 2100
	tTheGodOfGambling_NewAward[3304263][1][3]["RewardEffect"] = {}
	tTheGodOfGambling_NewAward[3304263][1][3]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_NewAward[3304263][1][3]["RewardEffect"]["Effect"] = "touzi_3"
	tTheGodOfGambling_NewAward[3304263][1][3]["RewardItem"] = {}
	tTheGodOfGambling_NewAward[3304263][1][3]["RewardItem"][1] = {}
	tTheGodOfGambling_NewAward[3304263][1][3]["RewardItem"][1]["Id"] = 3304307
	tTheGodOfGambling_NewAward[3304263][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_NewAward[3304263][1][3]["RewardItem"][2] = {}
	tTheGodOfGambling_NewAward[3304263][1][3]["RewardItem"][2]["Id"] = 3303926
	tTheGodOfGambling_NewAward[3304263][1][3]["RewardItem"][2]["Attr"] = "0 30"
	tTheGodOfGambling_NewAward[3304263][1][3]["LogId"] = 12000795
	tTheGodOfGambling_NewAward[3304263][1][3]["LogStep"] = "2"	
	-- 40赠点礼包*1   16%
	tTheGodOfGambling_NewAward[3304263][1][4] = {}
	tTheGodOfGambling_NewAward[3304263][1][4]["RandomItemChanceType"] = 2
	tTheGodOfGambling_NewAward[3304263][1][4]["ItemChance"] = 1600
	tTheGodOfGambling_NewAward[3304263][1][4]["RewardEffect"] = {}
	tTheGodOfGambling_NewAward[3304263][1][4]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_NewAward[3304263][1][4]["RewardEffect"]["Effect"] = "touzi_4"
	tTheGodOfGambling_NewAward[3304263][1][4]["RewardItem"] = {}
	tTheGodOfGambling_NewAward[3304263][1][4]["RewardItem"][1] = {}
	tTheGodOfGambling_NewAward[3304263][1][4]["RewardItem"][1]["Id"] = 3304308
	tTheGodOfGambling_NewAward[3304263][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_NewAward[3304263][1][4]["RewardItem"][2] = {}
	tTheGodOfGambling_NewAward[3304263][1][4]["RewardItem"][2]["Id"] = 3303926
	tTheGodOfGambling_NewAward[3304263][1][4]["RewardItem"][2]["Attr"] = "0 30"
	tTheGodOfGambling_NewAward[3304263][1][4]["LogId"] = 12000795
	tTheGodOfGambling_NewAward[3304263][1][4]["LogStep"] = "2"	
	-- 50赠点礼包*1   9.40%
	tTheGodOfGambling_NewAward[3304263][1][5] = {}
	tTheGodOfGambling_NewAward[3304263][1][5]["RandomItemChanceType"] = 2
	tTheGodOfGambling_NewAward[3304263][1][5]["ItemChance"] = 940
	tTheGodOfGambling_NewAward[3304263][1][5]["RewardEffect"] = {}
	tTheGodOfGambling_NewAward[3304263][1][5]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_NewAward[3304263][1][5]["RewardEffect"]["Effect"] = "touzi_5"
	tTheGodOfGambling_NewAward[3304263][1][5]["RewardItem"] = {}
	tTheGodOfGambling_NewAward[3304263][1][5]["RewardItem"][1] = {}
	tTheGodOfGambling_NewAward[3304263][1][5]["RewardItem"][1]["Id"] = 3304309
	tTheGodOfGambling_NewAward[3304263][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_NewAward[3304263][1][5]["RewardItem"][2] = {}
	tTheGodOfGambling_NewAward[3304263][1][5]["RewardItem"][2]["Id"] = 3303926
	tTheGodOfGambling_NewAward[3304263][1][5]["RewardItem"][2]["Attr"] = "0 30"
	tTheGodOfGambling_NewAward[3304263][1][5]["LogId"] = 12000795
	tTheGodOfGambling_NewAward[3304263][1][5]["LogStep"] = "2"	
	-- 500赠点礼包*1   5.50%      -- 全服公告
	tTheGodOfGambling_NewAward[3304263][1][6] = {}
	tTheGodOfGambling_NewAward[3304263][1][6]["TellToAll"] = 1
	tTheGodOfGambling_NewAward[3304263][1][6]["RandomItemChanceType"] = 2
	tTheGodOfGambling_NewAward[3304263][1][6]["ItemChance"] = 550
	tTheGodOfGambling_NewAward[3304263][1][6]["RewardEffect"] = {}
	tTheGodOfGambling_NewAward[3304263][1][6]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_NewAward[3304263][1][6]["RewardEffect"]["Effect"] = "touzi_6"
	tTheGodOfGambling_NewAward[3304263][1][6]["RewardItem"] = {}
	tTheGodOfGambling_NewAward[3304263][1][6]["RewardItem"][1] = {}
	tTheGodOfGambling_NewAward[3304263][1][6]["RewardItem"][1]["Id"] = 3304311
	tTheGodOfGambling_NewAward[3304263][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tTheGodOfGambling_NewAward[3304263][1][6]["RewardItem"][2] = {}
	tTheGodOfGambling_NewAward[3304263][1][6]["RewardItem"][2]["Id"] = 3303926
	tTheGodOfGambling_NewAward[3304263][1][6]["RewardItem"][2]["Attr"] = "0 30"
	tTheGodOfGambling_NewAward[3304263][1][6]["LogId"] = 12000795
	tTheGodOfGambling_NewAward[3304263][1][6]["LogStep"] = "2"		
	-- 2000赠点礼包*1   0.10%      -- 全服公告
	tTheGodOfGambling_NewAward[3304263][1][7] = {}
	tTheGodOfGambling_NewAward[3304263][1][7]["TellToAll"] = 1
	tTheGodOfGambling_NewAward[3304263][1][7]["RandomItemChanceType"] = 2
	tTheGodOfGambling_NewAward[3304263][1][7]["ItemChance"] = 10
	tTheGodOfGambling_NewAward[3304263][1][7]["RewardEffect"] = {}
	tTheGodOfGambling_NewAward[3304263][1][7]["RewardEffect"]["SzObj"] = "self"
	tTheGodOfGambling_NewAward[3304263][1][7]["RewardEffect"]["Effect"] = "bombarrow"
	tTheGodOfGambling_NewAward[3304263][1][7]["RewardEMoneyMono"] = {}
	tTheGodOfGambling_NewAward[3304263][1][7]["RewardEMoneyMono"]["Value"] = 2000
	tTheGodOfGambling_NewAward[3304263][1][7]["RewardItem"] = {}
	tTheGodOfGambling_NewAward[3304263][1][7]["RewardItem"][1] = {}
	tTheGodOfGambling_NewAward[3304263][1][7]["RewardItem"][1]["Id"] = 3303926
	tTheGodOfGambling_NewAward[3304263][1][7]["RewardItem"][1]["Attr"] = "0 30"
	tTheGodOfGambling_NewAward[3304263][1][7]["LogId"] = 12000795
	tTheGodOfGambling_NewAward[3304263][1][7]["LogStep"] = "2"	
	
-- local tTheGodOfGambling_DailyFree = {}
	-- -- 筹码券
	-- tTheGodOfGambling_DailyFree[1] = {}
	-- tTheGodOfGambling_DailyFree[1][1] = {}
	-- tTheGodOfGambling_DailyFree[1][1]["RewardItem"] = {}
	-- tTheGodOfGambling_DailyFree[1][1]["RewardItem"][1] = {}
	-- tTheGodOfGambling_DailyFree[1][1]["RewardItem"][1]["Id"] = 3304258
	-- tTheGodOfGambling_DailyFree[1][1]["RewardItem"][1]["Attr"] = "0 1"
	-- tTheGodOfGambling_DailyFree[1][1]["LogId"] = 12000795
	-- tTheGodOfGambling_DailyFree[1][1]["LogStep"] = "2"	
	-- -- 幸运骰子
	-- tTheGodOfGambling_DailyFree[2] = {}
	-- tTheGodOfGambling_DailyFree[2][1] = {}
	-- tTheGodOfGambling_DailyFree[2][1]["RewardItem"] = {}
	-- tTheGodOfGambling_DailyFree[2][1]["RewardItem"][1] = {}
	-- tTheGodOfGambling_DailyFree[2][1]["RewardItem"][1]["Id"] = 3304437
	-- tTheGodOfGambling_DailyFree[2][1]["RewardItem"][1]["Attr"] = "0 1"
	-- tTheGodOfGambling_DailyFree[2][1]["LogId"] = 12000795
	-- tTheGodOfGambling_DailyFree[2][1]["LogStep"] = "2"	
	-- tTheGodOfGambling_DailyFree[2][2] = {}
	-- tTheGodOfGambling_DailyFree[2][2]["RewardItem"] = {}
	-- tTheGodOfGambling_DailyFree[2][2]["RewardItem"][1] = {}
	-- tTheGodOfGambling_DailyFree[2][2]["RewardItem"][1]["Id"] = 3304438
	-- tTheGodOfGambling_DailyFree[2][2]["RewardItem"][1]["Attr"] = "0 1"
	-- tTheGodOfGambling_DailyFree[2][2]["LogId"] = 12000795
	-- tTheGodOfGambling_DailyFree[2][2]["LogStep"] = "2"	
	-- tTheGodOfGambling_DailyFree[2][3] = {}
	-- tTheGodOfGambling_DailyFree[2][3]["RewardItem"] = {}
	-- tTheGodOfGambling_DailyFree[2][3]["RewardItem"][1] = {}
	-- tTheGodOfGambling_DailyFree[2][3]["RewardItem"][1]["Id"] = 3304439
	-- tTheGodOfGambling_DailyFree[2][3]["RewardItem"][1]["Attr"] = "0 1"
	-- tTheGodOfGambling_DailyFree[2][3]["LogId"] = 12000795
	-- tTheGodOfGambling_DailyFree[2][3]["LogStep"] = "2"	
	-- tTheGodOfGambling_DailyFree[2][4] = {}
	-- tTheGodOfGambling_DailyFree[2][4]["RewardItem"] = {}
	-- tTheGodOfGambling_DailyFree[2][4]["RewardItem"][1] = {}
	-- tTheGodOfGambling_DailyFree[2][4]["RewardItem"][1]["Id"] = 3304440
	-- tTheGodOfGambling_DailyFree[2][4]["RewardItem"][1]["Attr"] = "0 1"
	-- tTheGodOfGambling_DailyFree[2][4]["LogId"] = 12000795
	-- tTheGodOfGambling_DailyFree[2][4]["LogStep"] = "2"	
	-- -- 幸运奖盘
	-- tTheGodOfGambling_DailyFree[3] = {}
	-- tTheGodOfGambling_DailyFree[3][1] = {}
	-- tTheGodOfGambling_DailyFree[3][1]["RewardItem"] = {}
	-- tTheGodOfGambling_DailyFree[3][1]["RewardItem"][1] = {}
	-- tTheGodOfGambling_DailyFree[3][1]["RewardItem"][1]["Id"] = 3304441
	-- tTheGodOfGambling_DailyFree[3][1]["RewardItem"][1]["Attr"] = "0 1"
	-- tTheGodOfGambling_DailyFree[3][1]["LogId"] = 12000795
	-- tTheGodOfGambling_DailyFree[3][1]["LogStep"] = "2"	
	-- tTheGodOfGambling_DailyFree[3][2] = {}
	-- tTheGodOfGambling_DailyFree[3][2]["RewardItem"] = {}
	-- tTheGodOfGambling_DailyFree[3][2]["RewardItem"][1] = {}
	-- tTheGodOfGambling_DailyFree[3][2]["RewardItem"][1]["Id"] = 3304442
	-- tTheGodOfGambling_DailyFree[3][2]["RewardItem"][1]["Attr"] = "0 1"
	-- tTheGodOfGambling_DailyFree[3][2]["LogId"] = 12000795
	-- tTheGodOfGambling_DailyFree[3][2]["LogStep"] = "2"	
	-- tTheGodOfGambling_DailyFree[3][3] = {}
	-- tTheGodOfGambling_DailyFree[3][3]["RewardItem"] = {}
	-- tTheGodOfGambling_DailyFree[3][3]["RewardItem"][1] = {}
	-- tTheGodOfGambling_DailyFree[3][3]["RewardItem"][1]["Id"] = 3304443
	-- tTheGodOfGambling_DailyFree[3][3]["RewardItem"][1]["Attr"] = "0 1"
	-- tTheGodOfGambling_DailyFree[3][3]["LogId"] = 12000795
	-- tTheGodOfGambling_DailyFree[3][3]["LogStep"] = "2"	
	-- tTheGodOfGambling_DailyFree[3][4] = {}
	-- tTheGodOfGambling_DailyFree[3][4]["RewardItem"] = {}
	-- tTheGodOfGambling_DailyFree[3][4]["RewardItem"][1] = {}
	-- tTheGodOfGambling_DailyFree[3][4]["RewardItem"][1]["Id"] = 3304444
	-- tTheGodOfGambling_DailyFree[3][4]["RewardItem"][1]["Attr"] = "0 1"
	-- tTheGodOfGambling_DailyFree[3][4]["LogId"] = 12000795
	-- tTheGodOfGambling_DailyFree[3][4]["LogStep"] = "2"	
	-- -- 幸运扑克
	-- tTheGodOfGambling_DailyFree[4] = {}
	-- tTheGodOfGambling_DailyFree[4][1] = {}
	-- tTheGodOfGambling_DailyFree[4][1]["RewardItem"] = {}
	-- tTheGodOfGambling_DailyFree[4][1]["RewardItem"][1] = {}
	-- tTheGodOfGambling_DailyFree[4][1]["RewardItem"][1]["Id"] = 3304445
	-- tTheGodOfGambling_DailyFree[4][1]["RewardItem"][1]["Attr"] = "0 1"
	-- tTheGodOfGambling_DailyFree[4][1]["LogId"] = 12000795
	-- tTheGodOfGambling_DailyFree[4][1]["LogStep"] = "2"	
	
-- local tTheGodOfGambling_NewDialog = {}
	-- -- 筹码券
	-- tTheGodOfGambling_NewDialog[1] = {}
	-- tTheGodOfGambling_NewDialog[1]["BagFullPoint"] = "4-1"
	-- tTheGodOfGambling_NewDialog[1]["Received"] = "4-2"
	-- tTheGodOfGambling_NewDialog[1]["Text"] = "4-3"
	-- tTheGodOfGambling_NewDialog[1]["TimeOver"] = "6-1"
	-- -- 幸运骰子
	-- tTheGodOfGambling_NewDialog[2] = {}
	-- tTheGodOfGambling_NewDialog[2]["BagFullPoint"] = "5-1"
	-- tTheGodOfGambling_NewDialog[2]["Received"] = "5-1"
	-- tTheGodOfGambling_NewDialog[2]["Text"] = "5-3"
	-- tTheGodOfGambling_NewDialog[2][1] = {531,532,533}
	-- tTheGodOfGambling_NewDialog[2][2] = {531,532,534}
	-- tTheGodOfGambling_NewDialog[2][3] = {531,532,535}
	-- tTheGodOfGambling_NewDialog[2][4] = {531,532,536}
	-- tTheGodOfGambling_NewDialog[2]["TimeOver"] = "6-1"
	-- -- 幸运奖盘
	-- tTheGodOfGambling_NewDialog[3] = {}
	-- tTheGodOfGambling_NewDialog[3]["BagFullPoint"] = "3-1"
	-- tTheGodOfGambling_NewDialog[3]["Received"] = "3-2"
	-- tTheGodOfGambling_NewDialog[3]["Text"] = "3-3"
	-- tTheGodOfGambling_NewDialog[3][1] = {331,332,333}
	-- tTheGodOfGambling_NewDialog[3][2] = {331,332,334}
	-- tTheGodOfGambling_NewDialog[3][3] = {331,332,335}
	-- tTheGodOfGambling_NewDialog[3][4] = {331,332,336}
	-- tTheGodOfGambling_NewDialog[3]["TimeOver"] = "4-1"
	-- -- 幸运扑克
	-- tTheGodOfGambling_NewDialog[4] = {}
	-- tTheGodOfGambling_NewDialog[4]["BagFullPoint"] = "4-1"
	-- tTheGodOfGambling_NewDialog[4]["Received"] = "4-2"
	-- tTheGodOfGambling_NewDialog[4]["Text"] = "4-3"
	-- tTheGodOfGambling_NewDialog[4]["TimeOver"] = "5-1"
	
-- local tTheGodOfGambling_Global = {}
	-- -- 骰子
	-- tTheGodOfGambling_Global[3304437] = {}
	-- tTheGodOfGambling_Global[3304437]["GlobalId"] = 51655
	-- tTheGodOfGambling_Global[3304437]["Pos"] = 1
	-- tTheGodOfGambling_Global[3304438] = {}
	-- tTheGodOfGambling_Global[3304438]["GlobalId"] = 51655
	-- tTheGodOfGambling_Global[3304438]["Pos"] = 2
	-- tTheGodOfGambling_Global[3304439] = {}
	-- tTheGodOfGambling_Global[3304439]["GlobalId"] = 51655
	-- tTheGodOfGambling_Global[3304439]["Pos"] = 3
	-- tTheGodOfGambling_Global[3304440] = {}
	-- tTheGodOfGambling_Global[3304440]["GlobalId"] = 51655
	-- tTheGodOfGambling_Global[3304440]["Pos"] = 4
	-- -- 奖盘
	-- tTheGodOfGambling_Global[3304441] = {}
	-- tTheGodOfGambling_Global[3304441]["GlobalId"] = 51656
	-- tTheGodOfGambling_Global[3304441]["Pos"] = 1
	-- tTheGodOfGambling_Global[3304442] = {}
	-- tTheGodOfGambling_Global[3304442]["GlobalId"] = 51656
	-- tTheGodOfGambling_Global[3304442]["Pos"] = 2
	-- tTheGodOfGambling_Global[3304443] = {}
	-- tTheGodOfGambling_Global[3304443]["GlobalId"] = 51656
	-- tTheGodOfGambling_Global[3304443]["Pos"] = 3
	-- tTheGodOfGambling_Global[3304444] = {}
	-- tTheGodOfGambling_Global[3304444]["GlobalId"] = 51656
	-- tTheGodOfGambling_Global[3304444]["Pos"] = 4
	-- -- 翻牌器
	-- tTheGodOfGambling_Global[3304445] = {}
	-- tTheGodOfGambling_Global[3304445]["GlobalId"] = 51657
	-- tTheGodOfGambling_Global[3304445]["Pos"] = 1

-- -- 如果达到上限，轮盘和翻牌器走另一套概率
-- local tTheGodOfGambling_TaskId = {}
	-- tTheGodOfGambling_TaskId[6825] = {}
	-- tTheGodOfGambling_TaskId[6825]["ItemtypeId"] = 3304441
	-- tTheGodOfGambling_TaskId[6825]["Fake"] = 6829
	-- tTheGodOfGambling_TaskId[6826] = {}
	-- tTheGodOfGambling_TaskId[6826]["ItemtypeId"] = 3304442
	-- tTheGodOfGambling_TaskId[6826]["Fake"] = 6830
	-- tTheGodOfGambling_TaskId[6827] = {}
	-- tTheGodOfGambling_TaskId[6827]["ItemtypeId"] = 3304443
	-- tTheGodOfGambling_TaskId[6827]["Fake"] = 6831
	-- tTheGodOfGambling_TaskId[6828] = {}
	-- tTheGodOfGambling_TaskId[6828]["ItemtypeId"] = 3304444
	-- tTheGodOfGambling_TaskId[6828]["Fake"] = 6832
-- local tTheGodOfGambling_Cards = {}
	-- tTheGodOfGambling_Cards[29] = {}
	-- tTheGodOfGambling_Cards[29]["ItemtypeId"] = 3304272
	-- tTheGodOfGambling_Cards[30] = {}
	-- tTheGodOfGambling_Cards[30]["ItemtypeId"] = 3304445
	-- tTheGodOfGambling_Cards[30]["Fake"] = 31
	-- tTheGodOfGambling_Cards[31] = {}
	-- tTheGodOfGambling_Cards[31]["ItemtypeId"] = 3304445

-- -- 一键打开
-- local tTheGodOfGambling_OneKeyOpen = {}
	-- tTheGodOfGambling_OneKeyOpen[3304421] = 2
	-- tTheGodOfGambling_OneKeyOpen[3304422] = 3
	-- tTheGodOfGambling_OneKeyOpen[3304423] = 4
	-- tTheGodOfGambling_OneKeyOpen[3304424] = 5
	-- tTheGodOfGambling_OneKeyOpen[3304425] = 6
	
-- local tTheGodOfGambling_DropItem = {}
	-- -- 掉落筹码
	-- tTheGodOfGambling_DropItem[1] = {}
	-- tTheGodOfGambling_DropItem[1]["RewardItem"] = {}
	-- tTheGodOfGambling_DropItem[1]["RewardItem"][1] = {}
	-- tTheGodOfGambling_DropItem[1]["RewardItem"][1]["Id"] = 3303926
	-- tTheGodOfGambling_DropItem[1]["RewardItem"][1]["Attr"] = "0 1"
	-- tTheGodOfGambling_DropItem[1]["LogId"] = 12000795
	-- tTheGodOfGambling_DropItem[1]["LogStep"] = "2"	
	
-- local tTheGodOfGambling_Random = {}
	-- tTheGodOfGambling_Random["StartNum"] = {}
	-- -- 神龙岛
	-- tTheGodOfGambling_Random["StartNum"][30] = {3967,3968,3969}
	-- -- 潜龙渊
	-- tTheGodOfGambling_Random["StartNum"][150] = {3973,3974,3975,3979,3980,3981,3982,3983,3984,3985,3986}
	-- tTheGodOfGambling_Random["EndNum"] = 10000
	
-- local tTheGodOfGambling_HangIn = {}
	-- tTheGodOfGambling_HangIn[1] = {}
	-- tTheGodOfGambling_HangIn[1]["RewardEffect"] = {}
	-- tTheGodOfGambling_HangIn[1]["RewardEffect"]["SzObj"] = "self"
	-- tTheGodOfGambling_HangIn[1]["RewardEffect"]["Effect"] = "angelwing"
	-- tTheGodOfGambling_HangIn[1]["DeleteItem"] = {}
	-- tTheGodOfGambling_HangIn[1]["DeleteItem"][1] = {}
	-- tTheGodOfGambling_HangIn[1]["DeleteItem"][1]["Id"] = 3303926
	-- tTheGodOfGambling_HangIn[1]["RewardCultivation"] = {}
	-- -- tTheGodOfGambling_HangIn[1]["RewardCultivation"]["Value"] = 5
	-- tTheGodOfGambling_HangIn[1]["LogId"] = 12000795
	-- tTheGodOfGambling_HangIn[1]["LogStep"] = "2"	

----------------------------------------------------------------------------------------------

-- -- 打开兑换商店
-- function TheGodOfGambling_ExchangeStore(nNpcId)
	-- local nUserId = Get_UserId()
	-- if Sys_ChkFullTime(tTheGodOfGambling_Cont["ExchangeTime"]) then
		-- User_OpenExchangeShop(nNpcId,nUserId)
	-- else
		-- Sys_MsgBox(tTheGodOfGambling_Text["ExchangeTimeOver"],nil,nil,nUserId)
	-- end
-- end

-- -- 打开轮盘
-- function TheGodOfGambling_Roulette(nTaskId)
	-- if tTheGodOfGambling_TaskId[nTaskId] ~= nil then
		-- if not TheGodOfGambling_GlobalChk(tTheGodOfGambling_TaskId[nTaskId]["ItemtypeId"]) then
			-- RouletteMould_Main(tTheGodOfGambling_TaskId[nTaskId]["Fake"])
			-- return
		-- end
	-- end
	-- RouletteMould_Main(nTaskId)
-- end

-- -- 打开翻牌器
-- function TheGodOfGambling_OpenCards(nType)
	-- local nUserId = Get_UserId()
	-- local nItemId = tTheGodOfGambling_Cards[nType]["ItemtypeId"]
	-- -- 过期删除
	-- if not Sys_ChkFullTime(tTheGodOfGambling_Cont["DelTime"]) then
		-- if not Item_ChkItem(nItemId,1,0,nUserId) then
			-- return
		-- end
		-- if not Item_DelAllItemByType(nItemId,nUserId) then
			-- return
		-- end
		-- Sys_MsgBox(tTheGodOfGambling_Text["OverTime"],nil,nil,nUserId)
		-- return
	-- end
	-- if tTheGodOfGambling_Cards[nType]["Fake"] ~= nil then
		-- if not TheGodOfGambling_GlobalChk(nItemId) then
			-- User_OpenRewardInterface(tTheGodOfGambling_Cards[nType]["Fake"],nUserId)
			-- return
		-- end
	-- end
	-- User_OpenRewardInterface(nType,nUserId)
-- end

-- -- 再抽一次 翻牌器
-- function TheGodOfGambling_ReOpenCards(nUserId,nType)
	-- local nItemId = tTheGodOfGambling_Cards[nType]["ItemtypeId"]
	-- -- 过期删除
	-- if not Sys_ChkFullTime(tTheGodOfGambling_Cont["DelTime"]) then
		-- if not Item_ChkItem(nItemId,1,0,nUserId) then
			-- return
		-- end
		-- if not Item_DelAllItemByType(nItemId,nUserId) then
			-- return
		-- end
		-- Sys_MsgBox(tTheGodOfGambling_Text["OverTime"],nil,nil,nUserId)
		-- return
	-- end
	-- if tTheGodOfGambling_Cards[nType]["Fake"] ~= nil then
		-- if not TheGodOfGambling_GlobalChk(tTheGodOfGambling_Cards[nType]["ItemtypeId"]) then
			-- User_OpenRewardInterface(tTheGodOfGambling_Cards[nType]["Fake"],nUserId)
			-- return
		-- end
	-- end
	-- User_OpenRewardInterface(nType,nUserId)
-- end

-- -- 统计动态码
-- function TheGodOfGambling_GlobalAdd(nItemId)
	-- if tTheGodOfGambling_Global[nItemId] ==  nil then
		-- return
	-- end
	-- local nGlobalId = tTheGodOfGambling_Global[nItemId]["GlobalId"]
	-- local nPos = tTheGodOfGambling_Global[nItemId]["Pos"]
	-- local nData = Get_SysDynaGlobalData(nGlobalId,nPos) + 1
	-- if nData > tTheGodOfGambling_Cont["AwardLimit"] then
		-- return
	-- end
	-- Sys_SetSynaGlobalData(nGlobalId,nPos,nData)
-- end

-- -- 查询动态码 
-- function TheGodOfGambling_GlobalChk(nItemId)
	-- local nGlobalId = tTheGodOfGambling_Global[nItemId]["GlobalId"]
	-- local nPos = tTheGodOfGambling_Global[nItemId]["Pos"]
	-- if Get_SysDynaGlobalData(nGlobalId,nPos) < tTheGodOfGambling_Cont["AwardLimit"] then
		-- return true
	-- else
		-- return false
	-- end
-- end
	
-- -- 清理动态码1
-- function TheGodOfGambling_GlobalClr1()
	-- local nMarkGlobalId = tTheGodOfGambling_Cont["GlobalId"][1]
	-- if Get_SysDynaGlobalData0(nMarkGlobalId) == 0 then
		-- for i,v in pairs(tTheGodOfGambling_Cont["GlobalId"]) do
			-- Sys_ResetAllSynaGlobalData(v)
		-- end
		-- Sys_SetSynaGlobalData0(nMarkGlobalId,1)
	-- end
-- end

-- -- 清理动态码1
-- function TheGodOfGambling_GlobalClr2()
	-- local nMarkGlobalId = tTheGodOfGambling_Cont["GlobalId"][1]
	-- Sys_SetSynaGlobalData0(nMarkGlobalId,0)
-- end

-- 物品使用
function TheGodOfGambling_UseItem(nItemId,nIndex)
	local nUserId = Get_UserId()
	local tReward = CommonFunc_Copy(tTheGodOfGambling_Award[nItemId])
	-- 过期删除
	if tReward["OverTimeDel"] ~= nil then
		if not Sys_ChkFullTime(tTheGodOfGambling_Cont["DelTime"]) then
			if not Item_ChkItem(nItemId) then
				return
			end
			if not Item_DelAllItemByType(nItemId) then
				return
			end
			User_TalkChannel2005(tLuaRes[10004])
			return
		end
	end
	if not Item_ChkItem(nItemId) then
		-- Sys_MsgBox(tTheGodOfGambling_Text["NoItemOne"])
		return
	end
	-- 判断时间限制 3秒打开1次
	if tReward["TimeLimit"] ~= nil then
		local nEvent = tTheGodOfGambling_Stc[5]["EventType"]
		local nType = tTheGodOfGambling_Stc[5]["DataType"]
		if Task_StcInterval(nEvent,nType,3,0,nUserId) then
			Task_SetStatistic(nEvent,nType,0,1,nUserId)
			Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		end
		if Task_ChkStcValue(nEvent,nType,">=",1,nUserId) then
			-- User_TalkChannel2005(tTheGodOfGambling_Text["LimitTime"])
			return
		end
		Task_SetStatistic(nEvent,nType,1,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
	-- 判断天石
	local bNeedEmoney = false
	if ((tReward["UpEmoney"] ~= nil) and (nIndex == nil)) or ((tReward["UpEmoney"] ~= nil) and (nIndex == 2)) then
		bNeedEmoney = true
	end
	local bTellToAll = false
	if tReward["TellToAll"] ~= nil then
		bTellToAll = true
	end
	-- 概率礼包
	if (tReward[1] ~= nil) and (tReward[1]["ItemChanceSum"] ~= nil) then
		-- 判断是否有上限要求
		if tReward[1]["DailyLimit"] ~= nil then
			-- 达到上限后走假概率
			if not TheGodOfGambling_GlobalChk(nItemId) then
				if not RewardTemplate_CheckSpace(tReward) then
					return
				end
				RewardTemplate_UseItemAndMsg(tReward[2])
				return
			end
		end
		local bNotFull,nSpace = RewardTemplate_ChkRandomSpace(tReward,1)
		if not bNotFull then
			-- Sys_MsgBox(string.format(tTheGodOfGambling_Text["FullBag"],nSpace))
			return
		end
		if not Item_ChkItem(nItemId) then
			return
		end
		if not Item_DelItem(nItemId) then
			return
		end
		local tFinalReward
		if tTheGodOfGambling_Award[nItemId]["Touzi"] == 1 then
			tFinalReward = RewardTemplate_NewRandomNoTip(tReward,1)
		else
			tFinalReward = RewardTemplate_NewRandom(tReward,1)
		end
		if tTheGodOfGambling_Award[nItemId]["Touzi"] == 1 then
			if tFinalReward[1]["tAward"][1]["TellToAll"] == 1 then
				local nFromItemName = tTheGodOfGambling_Award[nItemId]["FromItem"]
				local nFinalItemId
				local sFinalItemName
				if tFinalReward[1]["tAward"][1]["RewardItem"] ~= nil then
					nFinalItemId = tFinalReward[1]["tAward"][1]["RewardItem"][1]["Id"]
					sFinalItemName = Get_ItemtypeName(nFinalItemId)
				elseif tFinalReward[1]["tAward"][1]["RewardEMoneyMono"] ~= nil then
--					sFinalItemName = tFinalReward[1]["tAward"][1]["RewardEMoneyMono"]["Value"]..tTheGodOfGambling_Text["TellToAll"]["MonoEmoney"]
				end
				local sFromItemName = Get_ItemtypeName(nFromItemName)
				local sUserName = Get_UserName(nUserId)
				local nRondomTalk = math.random(1,2)
--				Sys_TalkBroadcast(string.format(tTheGodOfGambling_Text["TellToAll"][nRondomTalk],sUserName,sFromItemName,sFinalItemName))
			end
		end
		return
	end
	local sUserName = Get_UserName(nUserId)
	local sFromItemName
	local sItemName
	local nFromItemName
	local nItemName
	local nIndex1 = math.random(1,2)
	local sText
	-- 判断可选包
	if nIndex ~= nil then
		tReward = CommonFunc_Copy(tTheGodOfGambling_Award[nItemId][nIndex])
		-- 需要全服公告
	--		if bTellToAll then
	--			nFromItemName = tTheGodOfGambling_Award[nItemId]["FromItem"]
	--			sFromItemName = Get_ItemtypeName(nFromItemName)
	--			if tTheGodOfGambling_Award[nItemId][nIndex]["RewardItem"] ~= nil then
	--				sItemName = tTheGodOfGambling_Text["ItemName"][nItemId][nIndex]
	--			elseif tTheGodOfGambling_Award[nItemId][nIndex]["RewardEMoneyMono"] ~= nil then
	--				sItemName = tTheGodOfGambling_Award[nItemId][nIndex]["RewardEMoneyMono"]["Value"]..tTheGodOfGambling_Text["TellToAll"]["MonoEmoney"]
	--			elseif tTheGodOfGambling_Award[nItemId][nIndex]["RewardStrengthValue"] ~= nil then
	--				sItemName = tTheGodOfGambling_Award[nItemId][nIndex]["RewardStrengthValue"]["Value"]..tTheGodOfGambling_Text["TellToAll"]["Strength"]
	--			end
	--		end
	--	else
	--		-- 需要全服公告
	--		if bTellToAll then
	--			nFromItemName = tTheGodOfGambling_Award[nItemId]["FromItem"]
	--			sFromItemName = Get_ItemtypeName(nFromItemName)
	--			if tTheGodOfGambling_Award[nItemId]["RewardItem"] ~= nil then
	--				nItemName = tTheGodOfGambling_Award[nItemId]["RewardItem"][1]["Id"]
	--				if math.floor(nItemName/10) == 73000 then
	--					sItemName = string.format(tTheGodOfGambling_Text["TellToAll"]["CLS"],(nItemName%730000))
	--				else
	--					sItemName = Get_ItemtypeName(nItemName)
	--				end
	--			elseif tTheGodOfGambling_Award[nItemId]["RewardEMoneyMono"] ~= nil then
	--				sItemName = tTheGodOfGambling_Award[nItemId]["RewardEMoneyMono"]["Value"]..tTheGodOfGambling_Text["TellToAll"]["MonoEmoney"]
	--			elseif tTheGodOfGambling_Award[nItemId]["RewardStrengthValue"] ~= nil then
	--				sItemName = tTheGodOfGambling_Award[nItemId]["RewardStrengthValue"]["Value"]..tTheGodOfGambling_Text["TellToAll"]["Strength"]
	--			end
	--		end
	end
	if not RewardTemplate_CheckSpace(tReward) then
		return
	end
		-- 需要天石
	if bNeedEmoney then
		if Get_UserEMoney(nUserId) < tTheGodOfGambling_Award[nItemId]["UpEmoney"] then
			-- Sys_MsgBox(string.format(tTheGodOfGambling_Text["NoEMoney"],tTheGodOfGambling_Award[nItemId]["UpEmoney"]))
			return
		end
		if not User_AddEMoney(-1*tTheGodOfGambling_Award[nItemId]["UpEmoney"],nUserId) then
			return
		end
	end
	RewardTemplate_UseItemAndMsg(tReward)
	-- if bTellToAll then
		-- nFromItemName = tTheGodOfGambling_Award[nItemId]["FromItem"]
		-- sFromItemName = Get_ItemtypeName(nFromItemName)
		-- if tReward["RewardItem"] ~= nil then
			-- nItemName = tReward["RewardItem"][1]["Id"]
			-- if math.floor(nItemName/10) == 73000 then
				-- if nIndex ~= nil then
					-- sItemName = string.format(tTheGodOfGambling_Text["TellToAll"]["CLS"][nIndex],(nItemName%730000))
				-- else
					-- sItemName = string.format(tTheGodOfGambling_Text["TellToAll"]["CLS"][1],(nItemName%730000))
				-- end
			-- else
				-- sItemName = Get_ItemtypeName(nItemName)
			-- end
		-- elseif tReward["RewardEMoneyMono"] ~= nil then
			-- sItemName = tReward["RewardEMoneyMono"]["Value"]..tTheGodOfGambling_Text["TellToAll"]["MonoEmoney"]
		-- elseif tReward["RewardStrengthValue"] ~= nil then
			-- sItemName = tReward["RewardStrengthValue"]["Value"]..tTheGodOfGambling_Text["TellToAll"]["Strength"]
		-- end
		-- sText = string.format(tTheGodOfGambling_Text["TellToAll"][nIndex1],sUserName,sFromItemName,sItemName)
		-- Sys_TalkBroadcast(sText)
	-- end
end

-- 物品使用
function TheGodOfGambling_NewUseItem(nItemId,nIndex)
	local nUserId = Get_UserId()
	local tReward = CommonFunc_Copy(tTheGodOfGambling_NewAward[nItemId])
	-- 过期删除
	if tReward["OverTimeDel"] ~= nil then
		-- if not Sys_ChkFullTime(tTheGodOfGambling_Cont["DelTime"]) then
		if not Sys_ChkFullTime(tActivityTime["NewGodOfGamblers"]["Activity"]) then
			if not Item_ChkItem(nItemId) then
				return
			end
			if not Item_DelAllItemByType(nItemId) then
				return
			end
			-- User_TalkChannel2005(tTheGodOfGambling_Text["OverTime"])
			return
		end
	end
	if not Item_ChkItem(nItemId) then
		-- Sys_MsgBox(tTheGodOfGambling_Text["NoItemOne"])
		return
	end
	-- 判断时间限制 3秒打开1次
	if tReward["TimeLimit"] ~= nil then
		local nEvent = tTheGodOfGambling_Stc[5]["EventType"]
		local nType = tTheGodOfGambling_Stc[5]["DataType"]
		if Task_StcInterval(nEvent,nType,3,0,nUserId) then
			Task_SetStatistic(nEvent,nType,0,1,nUserId)
			Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		end
		if Task_ChkStcValue(nEvent,nType,">=",1,nUserId) then
			User_TalkChannel2005(string.format(tGamblersGaoJin_Text["Channel2005"]["LimitTime"], 3))
			return
		end
		Task_SetStatistic(nEvent,nType,1,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
	-- 判断天石
	local bNeedEmoney = false
	if ((tReward["UpEmoney"] ~= nil) and (nIndex == nil)) or ((tReward["UpEmoney"] ~= nil) and (nIndex == 2)) then
		bNeedEmoney = true
	end
	local bTellToAll = false
	if tReward["TellToAll"] ~= nil then
		bTellToAll = true
	end
	-- 概率礼包
	if (tReward[1] ~= nil) and (tReward[1]["ItemChanceSum"] ~= nil) then
		-- 判断是否有上限要求
		if tReward[1]["DailyLimit"] ~= nil then
			-- 达到上限后走假概率
			if not TheGodOfGambling_GlobalChk(nItemId) then
				if not RewardTemplate_CheckSpace(tReward) then
					return
				end
				RewardTemplate_UseItemAndMsg(tReward[2])
				return
			end
		end
		local bNotFull,nSpace = RewardTemplate_ChkRandomSpace(tReward,1)
		if not bNotFull then
			-- Sys_MsgBox(string.format(tTheGodOfGambling_Text["FullBag"],nSpace))
			return
		end
		if not Item_ChkItem(nItemId) then
			return
		end
		if not Item_DelItem(nItemId) then
			return
		end
		local tFinalReward
		if tTheGodOfGambling_Award[nItemId]["Touzi"] == 1 then
			tFinalReward = RewardTemplate_NewRandomNoTip(tReward,1)
		else
			tFinalReward = RewardTemplate_NewRandom(tReward,1)
		end
		if tTheGodOfGambling_Award[nItemId]["Touzi"] == 1 then
			if tFinalReward[1]["tAward"][1]["TellToAll"] == 1 then
				local nFromItemName = tTheGodOfGambling_Award[nItemId]["FromItem"]
				local nFinalItemId
				local sFinalItemName
				if tFinalReward[1]["tAward"][1]["RewardItem"] ~= nil then
					nFinalItemId = tFinalReward[1]["tAward"][1]["RewardItem"][1]["Id"]
					sFinalItemName = Get_ItemtypeName(nFinalItemId)
				elseif tFinalReward[1]["tAward"][1]["RewardEMoneyMono"] ~= nil then
					-- sFinalItemName = tFinalReward[1]["tAward"][1]["RewardEMoneyMono"]["Value"]..tTheGodOfGambling_Text["TellToAll"]["MonoEmoney"]
				end
				local sFromItemName = Get_ItemtypeName(nFromItemName)
				local sUserName = Get_UserName(nUserId)
				local nRondomTalk = math.random(1,2)
				-- Sys_TalkBroadcast(string.format(tTheGodOfGambling_Text["TellToAll"][nRondomTalk],sUserName,sFromItemName,sFinalItemName))
			end
		end
		return
	end
	local sUserName = Get_UserName(nUserId)
	local sFromItemName
	local sItemName
	local nFromItemName
	local nItemName
	local nIndex1 = math.random(1,2)
	local sText
	-- 判断可选包
	if nIndex ~= nil then
		tReward = CommonFunc_Copy(tTheGodOfGambling_Award[nItemId][nIndex])
		-- 需要全服公告
	--		if bTellToAll then
	--			nFromItemName = tTheGodOfGambling_Award[nItemId]["FromItem"]
	--			sFromItemName = Get_ItemtypeName(nFromItemName)
	--			if tTheGodOfGambling_Award[nItemId][nIndex]["RewardItem"] ~= nil then
	--				sItemName = tTheGodOfGambling_Text["ItemName"][nItemId][nIndex]
	--			elseif tTheGodOfGambling_Award[nItemId][nIndex]["RewardEMoneyMono"] ~= nil then
	--				sItemName = tTheGodOfGambling_Award[nItemId][nIndex]["RewardEMoneyMono"]["Value"]..tTheGodOfGambling_Text["TellToAll"]["MonoEmoney"]
	--			elseif tTheGodOfGambling_Award[nItemId][nIndex]["RewardStrengthValue"] ~= nil then
	--				sItemName = tTheGodOfGambling_Award[nItemId][nIndex]["RewardStrengthValue"]["Value"]..tTheGodOfGambling_Text["TellToAll"]["Strength"]
	--			end
	--		end
	--	else
	--		-- 需要全服公告
	--		if bTellToAll then
	--			nFromItemName = tTheGodOfGambling_Award[nItemId]["FromItem"]
	--			sFromItemName = Get_ItemtypeName(nFromItemName)
	--			if tTheGodOfGambling_Award[nItemId]["RewardItem"] ~= nil then
	--				nItemName = tTheGodOfGambling_Award[nItemId]["RewardItem"][1]["Id"]
	--				if math.floor(nItemName/10) == 73000 then
	--					sItemName = string.format(tTheGodOfGambling_Text["TellToAll"]["CLS"],(nItemName%730000))
	--				else
	--					sItemName = Get_ItemtypeName(nItemName)
	--				end
	--			elseif tTheGodOfGambling_Award[nItemId]["RewardEMoneyMono"] ~= nil then
	--				sItemName = tTheGodOfGambling_Award[nItemId]["RewardEMoneyMono"]["Value"]..tTheGodOfGambling_Text["TellToAll"]["MonoEmoney"]
	--			elseif tTheGodOfGambling_Award[nItemId]["RewardStrengthValue"] ~= nil then
	--				sItemName = tTheGodOfGambling_Award[nItemId]["RewardStrengthValue"]["Value"]..tTheGodOfGambling_Text["TellToAll"]["Strength"]
	--			end
	--		end
	end
	if not RewardTemplate_CheckSpace(tReward) then
		return
	end
		-- 需要天石
	if bNeedEmoney then
		if Get_UserEMoney(nUserId) < tTheGodOfGambling_Award[nItemId]["UpEmoney"] then
			-- Sys_MsgBox(string.format(tTheGodOfGambling_Text["NoEMoney"],tTheGodOfGambling_Award[nItemId]["UpEmoney"]))
			return
		end
		if not User_AddEMoney(-1*tTheGodOfGambling_Award[nItemId]["UpEmoney"],nUserId) then
			return
		end
	end
	RewardTemplate_UseItemAndMsg(tReward)
	-- if bTellToAll then
		-- nFromItemName = tTheGodOfGambling_Award[nItemId]["FromItem"]
		-- sFromItemName = Get_ItemtypeName(nFromItemName)
		-- if tReward["RewardItem"] ~= nil then
			-- nItemName = tReward["RewardItem"][1]["Id"]
			-- if math.floor(nItemName/10) == 73000 then
				-- if nIndex ~= nil then
					-- sItemName = string.format(tTheGodOfGambling_Text["TellToAll"]["CLS"][nIndex],(nItemName%730000))
				-- else
					-- sItemName = string.format(tTheGodOfGambling_Text["TellToAll"]["CLS"][1],(nItemName%730000))
				-- end
			-- else
				-- sItemName = Get_ItemtypeName(nItemName)
			-- end
		-- elseif tReward["RewardEMoneyMono"] ~= nil then
			-- sItemName = tReward["RewardEMoneyMono"]["Value"]..tTheGodOfGambling_Text["TellToAll"]["MonoEmoney"]
		-- elseif tReward["RewardStrengthValue"] ~= nil then
			-- sItemName = tReward["RewardStrengthValue"]["Value"]..tTheGodOfGambling_Text["TellToAll"]["Strength"]
		-- end
		-- sText = string.format(tTheGodOfGambling_Text["TellToAll"][nIndex1],sUserName,sFromItemName,sItemName)
		-- Sys_TalkBroadcast(sText)
	-- end
end


-- -- 二次确认
-- function TheGodOfGambling_Confirm(nItemId,nIndex)
	-- local nUserId = Get_UserId()
	-- -- 判断是否为可选
	-- if nIndex == nil then
		-- local sText = tTheGodOfGambling_Text["Confirm"][nItemId]
		-- local sFunc = string.format("TheGodOfGambling_UseItem</N>%d",nItemId)
		-- Sys_MsgBox(sText,sFunc,nil,nUserId)
		-- return
	-- end
	-- tItem[nItemId]["Text121"] = tTheGodOfGambling_Text[nItemId]["Text121"][nIndex]
	-- tItem[nItemId]["OptionFunc3"] = string.format("TheGodOfGambling_UseItem</N>%d</N>%d",nItemId,nIndex)
	-- LinkItemGossipFunc_New(nItemId,"1-2")
-- end
-- -- 一键打开
-- function TheGodOfGambling_OneKeyOpen(nItemId)
	-- -- 获取物品上限
	-- -- local nLimit = Get_ItemtypeAccumulateLimit(nItemId)
	-- local nOpenNum = tTheGodOfGambling_OneKeyOpen[nItemId]
	-- local nNum = Get_CountItemType(nItemId,0)
	
	-- if nNum > Get_ItemtypeAccumulateLimit(nItemId) then
		-- nNum = Get_ItemtypeAccumulateLimit(nItemId)
	-- end
	
	-- local nTotalNum = nNum * nOpenNum

	-- local tReward = CommonFunc_Copy(tTheGodOfGambling_Award[nItemId])
	-- tReward["DeleteItem"][1]["ItemNum"] = nNum
	-- tReward["RewardItem"][1]["Attr"] = "0 "..nTotalNum
	-- RewardTemplate_UseItemAndMsg(tReward)
-- end
			
	
-- -- -- 赤炼石可选包
-- function TheGodOfGambling_ChoosePackage(nItemId)
	-- local tReward = CommonFunc_Copy(tTheGodOfGambling_Award[nItemId])
	-- -- 过期删除
	-- if tReward["OverTimeDel"] ~= nil then
		-- if not Sys_ChkFullTime(tTheGodOfGambling_Cont["DelTime"]) then
			-- if not Item_ChkItem(nItemId) then
				-- return
			-- end
			-- if not Item_DelAllItemByType(nItemId) then
				-- return
			-- end
			-- User_TalkChannel2005(tTheGodOfGambling_Text["OverTime"])
			-- return
		-- end
	-- end
	-- tItem[nItemId]["tOption1-1"] = {}
	-- if ((tReward["FiveTime"] == 1) and Item_ChkMulItem(nItemId,nItemId,5)) then
		-- tItem[nItemId]["tOption1-1"] = {1,5,2,6}
	-- else
		-- tItem[nItemId]["tOption1-1"] = {1,2}
	-- end
	-- LinkItemGossipFunc_New(nItemId,"1-1")
-- end

-- -- 每次确认 5次
-- function TheGodOfGambling_ConfirmFive(nItemId,nIndex)
	-- local nUserId = Get_UserId()
	-- tItem[nItemId]["Text131"] = tTheGodOfGambling_Text[nItemId]["Text131"][nIndex]
	-- tItem[nItemId]["OptionFunc7"] = string.format("TheGodOfGambling_UseFive</N>%d</N>%d",nItemId,nIndex-4)
	-- LinkItemGossipFunc_New(nItemId,"1-3")
-- end

-- -- 使用5次
-- function TheGodOfGambling_UseFive(nItemId,nIndex)
	-- local nUserId = Get_UserId()
	-- local tReward = CommonFunc_Copy(tTheGodOfGambling_Award[nItemId])
	-- -- 过期删除
	-- if tReward["OverTimeDel"] ~= nil then
		-- if not Sys_ChkFullTime(tTheGodOfGambling_Cont["DelTime"]) then
			-- if not Item_ChkItem(nItemId) then
				-- return
			-- end
			-- if not Item_DelAllItemByType(nItemId) then
				-- return
			-- end
			-- User_TalkChannel2005(tTheGodOfGambling_Text["OverTime"])
			-- return
		-- end
	-- end
	-- if not Item_ChkMulItem(nItemId,nItemId,5) then
		-- Sys_MsgBox(tTheGodOfGambling_Text["NoItemFive"])
		-- return
	-- end
	-- -- 判断天石
	-- local bNeedEmoney = false
	-- if ((tReward["UpEmoney"] ~= nil) and (nIndex == nil)) or ((tReward["UpEmoney"] ~= nil) and (nIndex == 2)) then
		-- bNeedEmoney = true
	-- end
	-- local bTellToAll = false
	-- if tReward["TellToAll"] ~= nil then
		-- bTellToAll = true
	-- end
	-- local sUserName = Get_UserName(nUserId)
	-- local sFromItemName
	-- local sItemName
	-- local nFromItemName
	-- local nItemName
	-- local nIndex1 = math.random(1,2)
	-- local sText
	-- --tReward = CommonFunc_Copy(tTheGodOfGambling_Award[nItemId][nIndex])
	-- if bTellToAll then
		-- nFromItemName = tTheGodOfGambling_Award[nItemId]["FromItem"]
		-- sFromItemName = Get_ItemtypeName(nFromItemName)
		-- if tReward[nIndex]["RewardItem"] ~= nil then
			-- nItemName = tReward[nIndex]["RewardItem"][1]["Id"]
			-- if math.floor(nItemName/10) == 73000 then
				-- if nIndex ~= nil then
					-- sItemName = string.format(tTheGodOfGambling_Text["TellToAll"]["CLS"][nIndex],(nItemName%730000))
				-- else
					-- sItemName = string.format(tTheGodOfGambling_Text["TellToAll"]["CLS"][1],(nItemName%730000))
				-- end
			-- else
				-- sItemName = Get_ItemtypeName(nItemName)
			-- end
		-- end
	-- end
	-- tReward[nIndex]["DeleteItem"][1]["ItemNum"] = 5
	-- if nIndex == 1 then
		-- tReward[nIndex]["RewardItem"][1]["Attr"] = "0 5 3"
	-- elseif nIndex == 2 then
		-- if nItemId == 3304304 then
			-- tReward[nIndex]["RewardItem"][1]["Attr"] = "0 10"
		-- else
			-- tReward[nIndex]["RewardItem"][1]["Attr"] = "0 5"
		-- end
	-- end
	
	-- if not RewardTemplate_CheckSpace(tReward[nIndex]) then
		-- return
	-- end
	
	-- -- 需要天石
	-- if bNeedEmoney then
		-- if Get_UserEMoney(nUserId) < (tReward["UpEmoney"]*5) then
			-- Sys_MsgBox(string.format(tTheGodOfGambling_Text["NoEMoney"],tReward["UpEmoney"]*5))
			-- return
		-- end
		-- User_AddEMoney(-5*tTheGodOfGambling_Award[nItemId]["UpEmoney"],nUserId)
	-- end
	-- RewardTemplate_UseItemAndMsg(tReward[nIndex])
	-- if bTellToAll then
		-- sText = string.format(tTheGodOfGambling_Text["TellToAll"][nIndex1],sUserName,sFromItemName,sItemName)
		-- Sys_TalkBroadcast(sText)
	-- end
-- end


--	function TheGodOfGambling_UseDialogItem(nItemId)
--		local tReward = CommonFunc_Copy(tTheGodOfGambling_Award[nItemId])
--		-- 过期删除
--		if tReward["OverTimeDel"] ~= nil then
--			if not Sys_ChkFullTime(tTheGodOfGambling_Cont["DelTime"]) then
--				if not Item_ChkItem(nItemId) then
--					return
--				end
--				if not Item_DelAllItemByType(nItemId) then
--					return
--				end
--				User_TalkChannel2005(tTheGodOfGambling_Text["OverTime"])
--				return
--			end
--		end
--		LinkItemGossipFunc_New(nItemId,"1-1")
--	end

-- -- 4种每日免费领取的物品掩码检查
-- function TheGodOfGambling_ChkStc(nIndex)
	-- local nEvent = tTheGodOfGambling_Stc[nIndex]["EventType"]
	-- local nType = tTheGodOfGambling_Stc[nIndex]["DataType"]	
	-- local nLimit = tTheGodOfGambling_Stc[nIndex]["Limit"]	
	-- local nUserId = Get_UserId()
	-- -- 判断隔天
	-- if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		-- Task_SetStatistic(nEvent,nType,0,1,nUserId)
		-- Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	-- end
	-- -- 判断领取状态 nLimit为已领取
	-- if Task_ChkStcValue(nEvent,nType,"<",nLimit,nUserId) then
		-- return true
	-- else
		-- return false
	-- end
-- end

-- -- 4种每日免费领取的物品掩码+1
-- function TheGodOfGambling_AddStc(nIndex)
	-- local nEvent = tTheGodOfGambling_Stc[nIndex]["EventType"]
	-- local nType = tTheGodOfGambling_Stc[nIndex]["DataType"]	
	-- local nLimit = tTheGodOfGambling_Stc[nIndex]["Limit"]	
	-- local nUserId = Get_UserId()
	-- Task_SetStatistic(nEvent,nType,1,1,nUserId)
	-- Task_SetStcTimestamp(nEvent,nType,0,nUserId)
-- end

-- -- 等级判断
-- function TheGodOfGambling_LevelAndMetem()
	-- local nLevel = tTheGodOfGambling_Cont["Level"]
	-- local nMetem = tTheGodOfGambling_Cont["Metem"]
	-- local nUserId = Get_UserId()
	-- return User_JudgeLevelAndMetempsychosis(nLevel,nMetem,nUserId)
-- end

-- -- 每日免费道具领取
-- function TheGodOfGambling_DailyFree(nNpcId,nIndex)
	-- local nRandom = math.random(1,#tTheGodOfGambling_DailyFree[nIndex])
	-- local tReward = CommonFunc_Copy(tTheGodOfGambling_DailyFree[nIndex][nRandom])
	-- -- 活动时间已过
	-- if not Sys_ChkFullTime(tTheGodOfGambling_Cont["ActiveTime"]) then
		-- LinkNpcGossipFunc_New(nNpcId,tTheGodOfGambling_NewDialog[nIndex]["TimeOver"])
		-- return
	-- end
	-- -- 判断是否领取过
	-- if not TheGodOfGambling_ChkStc(nIndex) then
		-- LinkNpcGossipFunc_New(nNpcId,tTheGodOfGambling_NewDialog[nIndex]["Received"])
		-- return
	-- end
	-- -- 判断背包空间
	-- if not RewardTemplate_CheckSpace(tReward) then
		-- LinkNpcGossipFunc_New(nNpcId,tTheGodOfGambling_NewDialog[nIndex]["BagFullPoint"])
		-- return
	-- end
	-- TheGodOfGambling_AddStc(nIndex)
	-- TheGodOfGambling_GlobalAdd(tReward["RewardItem"][1]["Id"])
	-- RewardTemplate_UseItemAndMsg(tReward)
	-- local sText = "Text"..tTheGodOfGambling_NewDialog[nIndex]["Text"]
	-- if tTheGodOfGambling_NewDialog[nIndex][1] ~= nil then
		-- tNpcGossip[nNpcId][sText] = CommonFunc_Copy(tTheGodOfGambling_NewDialog[nIndex][nRandom])
	-- end
	-- LinkNpcGossipFunc_New(nNpcId,tTheGodOfGambling_NewDialog[nIndex]["Text"])
-- end

-- -- 完成日常任务或国境任务
-- function TheGodOfGambling_DailyTask(nIndex)
	-- if not Sys_ChkFullTime(tTheGodOfGambling_Cont["ActiveTime"]) then
		-- return
	-- end
	-- local tReward = CommonFunc_Copy(tTheGodOfGambling_DailyFree[nIndex][1])
	-- RewardTemplate_UseItemAndMsg(tReward)
-- end

-- -- 完成日常任务或国境任务
-- function TheGodOfGambling_GetSpace(nIndex)
	-- return RewardTemplate_GetRewardSpace(tTheGodOfGambling_DailyFree[nIndex][1])
-- end
	
-- -- 参加游戏
-- function TheGodOfGambling_JoinGame(nNpcId,ndwDialog)
	-- local nUserId = Get_UserId()
	-- User_OpenDialog(ndwDialog,nNpcId,nUserId)
-- end

-- -- 寻路
-- function TheGodOfGambling_FindNpc(nNpcId)
	-- local nMapId = tTheGodOfGambling_Npc[nNpcId]["MapId"]
	-- local nPosX = tTheGodOfGambling_Npc[nNpcId]["PosX"]
	-- local nPosY = tTheGodOfGambling_Npc[nNpcId]["PosY"]
	-- local nUserId = Get_UserId()
	-- Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId,nUserId)
-- end

-- -- 全服广播
-- function TheGodOfGambling_Broadcast()
	-- Sys_TalkBroadcast(tTheGodOfGambling_Text["Broadcast"])
-- end

-- 打开天石商店
function TheGodOfGambling_OpenEmoneyShop(nNpcId)
	if not Sys_ChkFullTime(tTheGodOfGambling_Cont["ActiveTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	User_OpenDialog()
end

-- -- 打怪掉落
-- function TheGodOfGambling_DropItem(nMonsterId)
	-- -- 判断活动时间
	-- if not Sys_ChkFullTime(tTheGodOfGambling_Cont["ActiveTime"]) then
		-- return
	-- end
	-- local nEvent = tTheGodOfGambling_Stc[6]["EventType"]
	-- local nType = tTheGodOfGambling_Stc[6]["DataType"]
	-- local nLimit = tTheGodOfGambling_Stc[6]["Limit"]
	-- local nUserId = Get_UserId()
	-- -- 判断是否隔天
	-- if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		-- Task_SetStatistic(nEvent,nType,0,1,nUserId)
		-- Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	-- end
	-- -- 判断获得数是否达到限制
	-- if Task_ChkStcValue(nEvent,nType,">=",nLimit,nUserId) then
		-- return
	-- end
	-- -- 判断走哪一种概率
	-- local nStartNum = 0
	-- local nEndNum = tTheGodOfGambling_Random["EndNum"]
	-- for i,v in pairs(tTheGodOfGambling_Random["StartNum"]) do
		-- for ii,vv in pairs(v) do
			-- if vv == nMonsterId then
				-- nStartNum = i
				-- break
			-- end
		-- end
	-- end
	-- -- 判断背包空间
	-- local nSpace = RewardTemplate_GetRewardSpace(tTheGodOfGambling_DropItem[1],nUserId)
	-- if not User_CheckLeftSpace(nSpace,nUserId) then
		-- return
	-- end
	-- -- 概率获得物品
	-- if Sys_Random(nStartNum,nEndNum) then
		-- local nData = Get_UserStatisticValue(nEvent,nType,nUserId) + 1
		-- Task_SetStatistic(nEvent,nType,nData,1,nUserId)
		-- Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		-- RewardTemplate_UseItemAndMsg(tTheGodOfGambling_DropItem[1],nUserId)
		-- if nData >= nLimit then
			-- Sys_MsgBox(tTheGodOfGambling_Text["GetFull"],nil,nil,nUserId)
		-- end
	-- end
-- end

-- -- 上交筹码 
-- function TheGodOfGambling_HangIn(nNpcId,nItemId,nIndex)
	-- -- 判断活动时间
	-- if not Sys_ChkFullTime(tTheGodOfGambling_Cont["RecoverTime"]) then
		-- LinkNpcGossipFunc_New(nNpcId,"2-1")
		-- return
	-- end
	-- if not Item_ChkItem(nItemId) then
		-- LinkNpcGossipFunc_New(nNpcId,"2-2")
		-- return
	-- end
	-- local nNum
	-- -- 上交一个
	-- if nIndex == 1 then
		-- nNum = 1
	-- end
	-- -- 上交全部
	-- if nIndex == 2 then
		-- nNum = Get_CountItemType(nItemId,0)
	-- end
	-- local nCul = nNum * 5
	-- tNpcGossip[nNpcId]["Text232"] = string.format(tTheGodOfGambling_Text[nNpcId]["Text232"],nNum,nCul)
	-- tNpcGossip[nNpcId]["Option231"] = string.format(tTheGodOfGambling_Text[nNpcId]["Option231"],nNum)
	-- tNpcGossip[nNpcId]["OptionFunc231"] = string.format("TheGodOfGambling_ConfirmHangIn</N>%d</N>%d</N>%d</N>%d",nNpcId,nItemId,nNum,nCul)
	-- LinkNpcGossipFunc_New(nNpcId,"2-3")
-- end

-- function TheGodOfGambling_ConfirmHangIn(nNpcId,nItemId,nNum,nCul)
	-- -- 判断活动时间
	-- if not Sys_ChkFullTime(tTheGodOfGambling_Cont["RecoverTime"]) then
		-- LinkNpcGossipFunc_New(nNpcId,"2-1")
		-- return
	-- end
	-- if not Item_ChkMulItem(nItemId,nItemId,nNum) then
		-- LinkNpcGossipFunc_New(nNpcId,"2-2")
		-- return
	-- end
	-- tTheGodOfGambling_HangIn[1]["DeleteItem"][1]["ItemNum"] = nNum
	-- tTheGodOfGambling_HangIn[1]["RewardCultivation"]["Value"] = nCul
	-- RewardTemplate_UseItemAndMsg(tTheGodOfGambling_HangIn[1])
-- end
	
--升级包使用逻辑
function TheGodOfGambling_Update(nItemId, nIndex)
	if nIndex == 1 then
		RewardTemplate_UseItemAndMsg(tTheGodOfGambling_Award[nItemId][nIndex])
		return
	end
	
	--判断天石
	local nEmoney = tTheGodOfGambling_Award[nItemId]["UpEmoney"]
	
	if Get_UserEMoney() < nEmoney then
		Sys_DialogText(tTheGodOfGambling_Text["Text121"])
		Sys_DialogOption(tTheGodOfGambling_Text["Option121"],"</F>NULL")
		Sys_DialogItemFace(nItemId)
		Sys_DialogEnd()
		return
	end
	
	--背包判断
	if not RewardTemplate_CheckSpace(tTheGodOfGambling_Award[nItemId][2]) then
		return
	end
	
	if nIndex == 2 then
		--二次确认
		local nFrontItem = tTheGodOfGambling_Award[nItemId][1]["RewardItem"][1]["Id"]
		local nAfterItem = tTheGodOfGambling_Award[nItemId][2]["RewardItem"][1]["Id"]
		local sFrontItem = tTheGodOfGambling_Text["Add"]..(nFrontItem%730000)..Get_ItemtypeName(nFrontItem)..tTheGodOfGambling_Text["Gift"]
		local sAfterItem = tTheGodOfGambling_Text["Add"]..(nAfterItem%730000)..Get_ItemtypeName(nAfterItem)
		if nFrontItem == 730008 then
			sAfterItem = sAfterItem.."*2"
		end
		Sys_DialogText(string.format(tTheGodOfGambling_Text["Text211"], nEmoney, sFrontItem, sAfterItem))
		Sys_DialogOption(tTheGodOfGambling_Text["Option211"],string.format("</F>TheGodOfGambling_Update</N>%d", nItemId))
		Sys_DialogOption(tTheGodOfGambling_Text["Option212"],"</F>NULL")
		Sys_DialogItemFace(nItemId)
		Sys_DialogEnd()
	else
		if User_AddEMoney(-nEmoney) then
			RewardTemplate_UseItemAndMsg(tTheGodOfGambling_Award[nItemId][2])
		end
	end
end

--------------------------------------------------------------------------------------------------------
-- -- 骰子王高进
-- tNpcFace[5704] = 50
-- tNpcGossip[20892]= tNpcGossip[20892] or DefaultNpc:new{}
-- tNpcGossip[20892]["OptionHidden"] = 1

-- -- tNpcGossip[20892]["DialogueText"] = tTheGodOfGambling_Text[20892]
-- -- 预热
-- tNpcGossip[20892]["Text1-1"] = {111,112,113,114,115,116,117,118}
-- tNpcGossip[20892]["Text111"] = tTheGodOfGambling_Text[20892]["Text111"]
-- tNpcGossip[20892]["Text112"] = tTheGodOfGambling_Text[20892]["Text112"]
-- tNpcGossip[20892]["Text113"] = tTheGodOfGambling_Text[20892]["Text113"]
-- tNpcGossip[20892]["Text114"] = tTheGodOfGambling_Text[20892]["Text114"]
-- tNpcGossip[20892]["Text115"] = tTheGodOfGambling_Text[20892]["Text115"]
-- tNpcGossip[20892]["Text116"] = tTheGodOfGambling_Text[20892]["Text116"]
-- tNpcGossip[20892]["Text117"] = tTheGodOfGambling_Text[20892]["Text117"]
-- tNpcGossip[20892]["Text118"] = tTheGodOfGambling_Text[20892]["Text118"]
-- tNpcGossip[20892]["Text119"] = tTheGodOfGambling_Text[20892]["Text119"]
-- tNpcGossip[20892]["ChkFunc1-1"] = function()
	-- if Sys_ChkFullTime(tTheGodOfGambling_Cont["PreHeating"]) then
		-- if Get_UserLevel() >= tTheGodOfGambling_Cont["Level"] then
			-- tNpcGossip[20892]["Text1-1"] = {111,112,113,114,115,116,117,119}
		-- end
		-- return true
	-- else
		-- return false
	-- end
-- end
-- tNpcGossip[20892]["tOption1-1"] = {111,112,113,114}
-- -- 等级不足
-- tNpcGossip[20892]["Option111"] = tTheGodOfGambling_Text[20892]["Option111"]
-- tNpcGossip[20892]["OptionChkFunc111"] = function()
	-- return (not TheGodOfGambling_LevelAndMetem())
-- end
-- -- 领取筹码券（未领取）
-- tNpcGossip[20892]["Option112"] = tTheGodOfGambling_Text[20892]["Option112"]
-- tNpcGossip[20892]["OptionChkFunc112"] = function()
	-- return (TheGodOfGambling_LevelAndMetem() and TheGodOfGambling_ChkStc(1))
-- end
-- tNpcGossip[20892]["OptionFunc112"] = "TheGodOfGambling_DailyFree</N>20892</N>1"
-- -- 领取筹码券（已领取）
-- tNpcGossip[20892]["Option113"] = tTheGodOfGambling_Text[20892]["Option113"]
-- tNpcGossip[20892]["OptionChkFunc113"] = function()
	-- return (TheGodOfGambling_LevelAndMetem() and (not TheGodOfGambling_ChkStc(1)))
-- end
-- tNpcGossip[20892]["OptionPoint113"] = "4-2"
-- -- 等级达到
-- tNpcGossip[20892]["Option114"] = tTheGodOfGambling_Text[20892]["Option114"]
-- tNpcGossip[20892]["OptionChkFunc114"] = function()
	-- return TheGodOfGambling_LevelAndMetem()
-- end

-- -- 活动中
-- tNpcGossip[20892]["Text1-2"] = {121,122,123,124,125,126}
-- tNpcGossip[20892]["Text121"] = tTheGodOfGambling_Text[20892]["Text121"]
-- tNpcGossip[20892]["Text122"] = tTheGodOfGambling_Text[20892]["Text122"]
-- tNpcGossip[20892]["Text123"] = tTheGodOfGambling_Text[20892]["Text123"]
-- tNpcGossip[20892]["Text124"] = tTheGodOfGambling_Text[20892]["Text124"]
-- tNpcGossip[20892]["Text125"] = tTheGodOfGambling_Text[20892]["Text125"]
-- tNpcGossip[20892]["Text126"] = tTheGodOfGambling_Text[20892]["Text126"]
-- tNpcGossip[20892]["Text127"] = tTheGodOfGambling_Text[20892]["Text127"]
-- tNpcGossip[20892]["ChkFunc1-2"] = function()
	-- if Sys_ChkFullTime(tTheGodOfGambling_Cont["ActiveTime"]) then
		-- if Get_UserLevel() >= tTheGodOfGambling_Cont["Level"] then
			-- tNpcGossip[20892]["Text1-2"] = {121,122,123,124,125,127}
		-- end
		-- return true
	-- else
		-- return false
	-- end
-- end
-- -- tNpcGossip[20892]["tOption1-2"] = {121,122,123,124,126,125}
-- tNpcGossip[20892]["tOption1-2"] = {121,122,124,126,125}
-- -- 等级不足
-- tNpcGossip[20892]["Option121"] = tTheGodOfGambling_Text[20892]["Option121"]
-- tNpcGossip[20892]["OptionChkFunc121"] = function()
	-- return (not TheGodOfGambling_LevelAndMetem())
-- end
-- -- 参加骰子游戏
-- tNpcGossip[20892]["Option122"] = tTheGodOfGambling_Text[20892]["Option122"]
-- tNpcGossip[20892]["OptionChkFunc122"] = function()
	-- return TheGodOfGambling_LevelAndMetem()
-- end
-- tNpcGossip[20892]["OptionFunc122"] = "TheGodOfGambling_JoinGame</N>20892</N>262"
-- -- 领取幸运骰子
-- tNpcGossip[20892]["Option123"] = tTheGodOfGambling_Text[20892]["Option123"]
-- tNpcGossip[20892]["OptionChkFunc123"] = function()
	-- return (TheGodOfGambling_LevelAndMetem() and TheGodOfGambling_ChkStc(2))
-- end
-- tNpcGossip[20892]["OptionFunc123"] = "TheGodOfGambling_DailyFree</N>20892</N>2"
-- -- 领取筹码券
-- tNpcGossip[20892]["Option124"] = tTheGodOfGambling_Text[20892]["Option124"]
-- tNpcGossip[20892]["OptionChkFunc124"] = function()
	-- return (TheGodOfGambling_LevelAndMetem() and TheGodOfGambling_ChkStc(1))
-- end
-- tNpcGossip[20892]["OptionFunc124"] = "TheGodOfGambling_DailyFree</N>20892</N>1"
-- -- 兑换商店
-- tNpcGossip[20892]["Option126"] = tTheGodOfGambling_Text[20892]["Option126"]
-- tNpcGossip[20892]["OptionFunc126"] = "TheGodOfGambling_OpenEmoneyShop</N>20892"
-- tNpcGossip[20892]["OptionChkFunc126"] = function()
	-- return TheGodOfGambling_LevelAndMetem()
-- end
-- -- 等级达到
-- tNpcGossip[20892]["Option125"] = tTheGodOfGambling_Text[20892]["Option125"]
-- tNpcGossip[20892]["OptionChkFunc125"] = function()
	-- return TheGodOfGambling_LevelAndMetem()
-- end

-- -- 活动后
-- tNpcGossip[20892]["Text1-3"] = {131,132,133,134}
-- tNpcGossip[20892]["Text131"] = tTheGodOfGambling_Text[20892]["Text131"]
-- tNpcGossip[20892]["Text132"] = tTheGodOfGambling_Text[20892]["Text132"]
-- tNpcGossip[20892]["Text133"] = tTheGodOfGambling_Text[20892]["Text133"]
-- tNpcGossip[20892]["Text134"] = tTheGodOfGambling_Text[20892]["Text134"]
-- tNpcGossip[20892]["ChkFunc1-3"] = function()
	-- if ((not Sys_ChkFullTime(tTheGodOfGambling_Cont["PreHeating"])) and (not Sys_ChkFullTime(tTheGodOfGambling_Cont["ActiveTime"]))) then
		-- return true
	-- else
		-- return false
	-- end
-- end
-- tNpcGossip[20892]["tOption1-3"] = {131}
-- tNpcGossip[20892]["Option131"] = tTheGodOfGambling_Text[20892]["Option131"]

-- -- 背包满
-- tNpcGossip[20892]["Text4-1"] = {412}
-- tNpcGossip[20892]["Text411"] = tTheGodOfGambling_Text[20892]["Text411"]
-- tNpcGossip[20892]["Text412"] = tTheGodOfGambling_Text[20892]["Text412"]
-- tNpcGossip[20892]["tOption4-1"] = {411}
-- tNpcGossip[20892]["Option411"] = tTheGodOfGambling_Text[20892]["Option411"]
-- -- 领过
-- tNpcGossip[20892]["Text4-2"] = {422}
-- tNpcGossip[20892]["Text421"] = tTheGodOfGambling_Text[20892]["Text421"]
-- tNpcGossip[20892]["Text422"] = tTheGodOfGambling_Text[20892]["Text422"]
-- tNpcGossip[20892]["tOption4-2"] = {421}
-- tNpcGossip[20892]["Option421"] = tTheGodOfGambling_Text[20892]["Option421"]
-- -- 领过
-- tNpcGossip[20892]["Text4-3"] = {432}
-- tNpcGossip[20892]["Text431"] = tTheGodOfGambling_Text[20892]["Text431"]
-- tNpcGossip[20892]["Text432"] = tTheGodOfGambling_Text[20892]["Text432"]
-- tNpcGossip[20892]["tOption4-3"] = {431}
-- tNpcGossip[20892]["Option431"] = tTheGodOfGambling_Text[20892]["Option431"]
-- -- 背包满
-- tNpcGossip[20892]["Text5-1"] = {512}
-- tNpcGossip[20892]["Text511"] = tTheGodOfGambling_Text[20892]["Text511"]
-- tNpcGossip[20892]["Text512"] = tTheGodOfGambling_Text[20892]["Text512"]
-- tNpcGossip[20892]["tOption5-1"] = {511}
-- tNpcGossip[20892]["Option511"] = tTheGodOfGambling_Text[20892]["Option511"]
-- -- 领过
-- tNpcGossip[20892]["Text5-2"] = {522}
-- tNpcGossip[20892]["Text521"] = tTheGodOfGambling_Text[20892]["Text521"]
-- tNpcGossip[20892]["Text522"] = tTheGodOfGambling_Text[20892]["Text522"]
-- tNpcGossip[20892]["tOption5-2"] = {521}
-- tNpcGossip[20892]["Option521"] = tTheGodOfGambling_Text[20892]["Option521"]
-- -- 领取成功
-- tNpcGossip[20892]["Text5-3"] = {531,532,533,534,535,536}
-- tNpcGossip[20892]["Text531"] = tTheGodOfGambling_Text[20892]["Text531"]
-- tNpcGossip[20892]["Text532"] = tTheGodOfGambling_Text[20892]["Text532"]
-- tNpcGossip[20892]["Text533"] = tTheGodOfGambling_Text[20892]["Text533"]
-- tNpcGossip[20892]["Text534"] = tTheGodOfGambling_Text[20892]["Text534"]
-- tNpcGossip[20892]["Text535"] = tTheGodOfGambling_Text[20892]["Text535"]
-- tNpcGossip[20892]["Text536"] = tTheGodOfGambling_Text[20892]["Text536"]
-- tNpcGossip[20892]["tOption5-3"] = {531}
-- tNpcGossip[20892]["Option531"] = tTheGodOfGambling_Text[20892]["Option531"]

-- -- 游戏王阿星
-- tNpcFace[5705] = 25
-- tNpcGossip[20893]= tNpcGossip[20893] or DefaultNpc:new{}
-- tNpcGossip[20893]["OptionHidden"] = 1

-- -- tNpcGossip[20893]["DialogueText"] = tTheGodOfGambling_Text[20893]
-- tNpcGossip[20893]["Text1-1"] = {111,112,113,114}
-- tNpcGossip[20893]["Text111"] = tTheGodOfGambling_Text[20893]["Text111"]
-- tNpcGossip[20893]["Text112"] = tTheGodOfGambling_Text[20893]["Text112"]
-- tNpcGossip[20893]["Text113"] = tTheGodOfGambling_Text[20893]["Text113"]
-- tNpcGossip[20893]["Text114"] = tTheGodOfGambling_Text[20893]["Text114"]
-- tNpcGossip[20893]["Text115"] = tTheGodOfGambling_Text[20893]["Text115"]
-- tNpcGossip[20893]["ChkFunc1-1"] = function()
	-- if Get_UserLevel() >= tTheGodOfGambling_Cont["Level"] then
		-- tNpcGossip[20893]["Text1-1"] = {111,112,113,115}
	-- end
	-- return (Sys_ChkFullTime(tTheGodOfGambling_Cont["PreHeating"]) or Sys_ChkFullTime(tTheGodOfGambling_Cont["ActiveTime"]))
-- end
-- tNpcGossip[20893]["tOption1-1"] = {111,112,113,114}
-- -- 活动前
-- tNpcGossip[20893]["Option111"] = tTheGodOfGambling_Text[20893]["Option111"]
-- tNpcGossip[20893]["OptionChkFunc111"] = function()
	-- return Sys_ChkFullTime(tTheGodOfGambling_Cont["PreHeating"])
-- end
-- -- 活动中 等级不足
-- tNpcGossip[20893]["Option112"] = tTheGodOfGambling_Text[20893]["Option112"]
-- tNpcGossip[20893]["OptionChkFunc112"] = function()
	-- return (Sys_ChkFullTime(tTheGodOfGambling_Cont["ActiveTime"]) and (not TheGodOfGambling_LevelAndMetem()))
-- end
-- -- 活动中 寻路
-- tNpcGossip[20893]["Option113"] = tTheGodOfGambling_Text[20893]["Option113"]
-- tNpcGossip[20893]["OptionChkFunc113"] = function()
	-- return (Sys_ChkFullTime(tTheGodOfGambling_Cont["ActiveTime"]) and TheGodOfGambling_LevelAndMetem())
-- end
-- tNpcGossip[20893]["OptionFunc113"] = "TheGodOfGambling_FindNpc</N>22004"
-- -- 领取幸运奖盘
-- tNpcGossip[20893]["Option114"] = tTheGodOfGambling_Text[20893]["Option114"]
-- tNpcGossip[20893]["OptionChkFunc114"] = function()
	-- return (Sys_ChkFullTime(tTheGodOfGambling_Cont["ActiveTime"]) and TheGodOfGambling_LevelAndMetem() and TheGodOfGambling_ChkStc(3))
-- end
-- tNpcGossip[20893]["OptionFunc114"] = "TheGodOfGambling_DailyFree</N>20893</N>3"


-- -- 活动后
-- tNpcGossip[20893]["Text1-2"] = {121,122}
-- tNpcGossip[20893]["Text121"] = tTheGodOfGambling_Text[20893]["Text121"]
-- tNpcGossip[20893]["Text122"] = tTheGodOfGambling_Text[20893]["Text122"]
-- tNpcGossip[20893]["ChkFunc1-2"] = function()
	-- return CommonFunc_GetAfterActivityTime(tTheGodOfGambling_Cont["ActiveTime"])
-- end
-- tNpcGossip[20893]["tOption1-2"] = {121}
-- tNpcGossip[20893]["Option121"] = tTheGodOfGambling_Text[20893]["Option121"]

-- -- 背包满
-- tNpcGossip[20893]["Text3-1"] = {312}
-- tNpcGossip[20893]["Text311"] = tTheGodOfGambling_Text[20893]["Text311"]
-- tNpcGossip[20893]["Text312"] = tTheGodOfGambling_Text[20893]["Text312"]
-- tNpcGossip[20893]["tOption3-1"] = {311}
-- tNpcGossip[20893]["Option311"] = tTheGodOfGambling_Text[20893]["Option311"]
-- -- 领过        
-- tNpcGossip[20893]["Text3-2"] = {322}
-- tNpcGossip[20893]["Text321"] = tTheGodOfGambling_Text[20893]["Text321"]
-- tNpcGossip[20893]["Text322"] = tTheGodOfGambling_Text[20893]["Text322"]
-- tNpcGossip[20893]["tOption3-2"] = {321}
-- tNpcGossip[20893]["Option321"] = tTheGodOfGambling_Text[20893]["Option321"]
-- -- 领取成功
-- tNpcGossip[20893]["Text3-3"] = {331,332,333,334,335,336}
-- tNpcGossip[20893]["Text331"] = tTheGodOfGambling_Text[20893]["Text331"]
-- tNpcGossip[20893]["Text332"] = tTheGodOfGambling_Text[20893]["Text332"]
-- tNpcGossip[20893]["Text333"] = tTheGodOfGambling_Text[20893]["Text333"]
-- tNpcGossip[20893]["Text334"] = tTheGodOfGambling_Text[20893]["Text334"]
-- tNpcGossip[20893]["Text335"] = tTheGodOfGambling_Text[20893]["Text335"]
-- tNpcGossip[20893]["Text336"] = tTheGodOfGambling_Text[20893]["Text336"]
-- tNpcGossip[20893]["tOption3-3"] = {331}
-- tNpcGossip[20893]["Option331"] = tTheGodOfGambling_Text[20893]["Option331"]

-- -- 扑克王刀仔
-- tNpcFace[5706] = 13
-- tNpcGossip[20894]= tNpcGossip[20894] or DefaultNpc:new{}
-- tNpcGossip[20894]["OptionHidden"] = 1
-- -- 预热
-- -- tNpcGossip[20894]["DialogueText"] = tTheGodOfGambling_Text[20894]
-- tNpcGossip[20894]["Text1-1"] = {111,112,113}
-- tNpcGossip[20894]["Text111"] = tTheGodOfGambling_Text[20894]["Text111"]
-- tNpcGossip[20894]["Text112"] = tTheGodOfGambling_Text[20894]["Text112"]
-- tNpcGossip[20894]["Text113"] = tTheGodOfGambling_Text[20894]["Text113"]
-- tNpcGossip[20894]["Text114"] = tTheGodOfGambling_Text[20894]["Text114"]
-- tNpcGossip[20894]["ChkFunc1-1"] = function()
	-- if Get_UserLevel() >= tTheGodOfGambling_Cont["Level"] then
		-- tNpcGossip[20894]["Text1-1"] = {111,112,114}
	-- end
	-- return Sys_ChkFullTime(tTheGodOfGambling_Cont["PreHeating"])
-- end
-- tNpcGossip[20894]["tOption1-1"] = {111}
-- tNpcGossip[20894]["Option111"] = tTheGodOfGambling_Text[20894]["Option111"]

-- -- 活动中
-- tNpcGossip[20894]["Text1-2"] = {121,122,123}
-- tNpcGossip[20894]["Text121"] = tTheGodOfGambling_Text[20894]["Text121"]
-- tNpcGossip[20894]["Text122"] = tTheGodOfGambling_Text[20894]["Text122"]
-- tNpcGossip[20894]["Text123"] = tTheGodOfGambling_Text[20894]["Text123"]
-- tNpcGossip[20894]["Text124"] = tTheGodOfGambling_Text[20894]["Text124"]
-- tNpcGossip[20894]["ChkFunc1-2"] = function()
	-- if Get_UserLevel() >= tTheGodOfGambling_Cont["Level"] then
		-- tNpcGossip[20894]["Text1-2"] = {121,122,124}
	-- end
	-- return Sys_ChkFullTime(tTheGodOfGambling_Cont["ActiveTime"])
-- end
-- tNpcGossip[20894]["tOption1-2"] = {121,123,122}
-- -- 等级不足
-- tNpcGossip[20894]["Option121"] = tTheGodOfGambling_Text[20894]["Option121"]
-- tNpcGossip[20894]["OptionChkFunc121"] = function()
	-- return (not TheGodOfGambling_LevelAndMetem())
-- end
-- -- 参加扑克游戏
-- tNpcGossip[20894]["Option122"] = tTheGodOfGambling_Text[20894]["Option122"]
-- tNpcGossip[20894]["OptionChkFunc122"] = function()
	-- return TheGodOfGambling_LevelAndMetem()
-- end
-- -- 领取幸运扑克
-- tNpcGossip[20894]["Option123"] = tTheGodOfGambling_Text[20894]["Option123"]
-- tNpcGossip[20894]["OptionChkFunc123"] = function()
	-- return (TheGodOfGambling_LevelAndMetem() and TheGodOfGambling_ChkStc(4))
-- end
-- tNpcGossip[20894]["OptionFunc123"] = "TheGodOfGambling_DailyFree</N>20894</N>4"
               
-- -- 活动后     
-- tNpcGossip[20894]["Text1-3"] = {131,132}
-- tNpcGossip[20894]["Text131"] = tTheGodOfGambling_Text[20894]["Text131"]
-- tNpcGossip[20894]["Text132"] = tTheGodOfGambling_Text[20894]["Text132"]
-- tNpcGossip[20894]["ChkFunc1-3"] = function()
	-- return CommonFunc_GetAfterActivityTime(tTheGodOfGambling_Cont["ActiveTime"])
-- end
-- tNpcGossip[20894]["tOption1-3"] = {131}
-- tNpcGossip[20894]["Option131"] = tTheGodOfGambling_Text[20894]["Option131"]

-- -- 背包满
-- tNpcGossip[20894]["Text4-1"] = {412}
-- tNpcGossip[20894]["Text411"] = tTheGodOfGambling_Text[20894]["Text411"]
-- tNpcGossip[20894]["Text412"] = tTheGodOfGambling_Text[20894]["Text412"]
-- tNpcGossip[20894]["tOption4-1"] = {411}
-- tNpcGossip[20894]["Option411"] = tTheGodOfGambling_Text[20894]["Option411"]
-- -- 领过        
-- tNpcGossip[20894]["Text4-2"] = {422}
-- tNpcGossip[20894]["Text421"] = tTheGodOfGambling_Text[20894]["Text421"]
-- tNpcGossip[20894]["Text422"] = tTheGodOfGambling_Text[20894]["Text422"]
-- tNpcGossip[20894]["tOption4-2"] = {421}
-- tNpcGossip[20894]["Option421"] = tTheGodOfGambling_Text[20894]["Option421"]
-- -- 领取成功   
-- tNpcGossip[20894]["Text4-3"] = {432}
-- tNpcGossip[20894]["Text431"] = tTheGodOfGambling_Text[20894]["Text431"]
-- tNpcGossip[20894]["Text432"] = tTheGodOfGambling_Text[20894]["Text432"]
-- tNpcGossip[20894]["tOption4-3"] = {431}
-- tNpcGossip[20894]["Option431"] = tTheGodOfGambling_Text[20894]["Option431"]

-- --新增回收npc
-- -- 游戏王阿星
-- tNpcFace[5764] = 25
-- tNpcGossip[21129]= tNpcGossip[21129] or DefaultNpc:new{}
-- tNpcGossip[21129]["OptionHidden"] = 1
-- -- 活动前
-- tNpcGossip[21129]["Text1-1"] = {111,112}
-- tNpcGossip[21129]["Text111"] = tTheGodOfGambling_Text[21129]["Text111"]
-- tNpcGossip[21129]["Text112"] = tTheGodOfGambling_Text[21129]["Text112"]
-- tNpcGossip[21129]["ChkFunc1-1"] = function()
	-- return Sys_ChkFullTime(tTheGodOfGambling_Cont["PreHeating"])
-- end
-- tNpcGossip[21129]["tOption1-1"] = {111}
-- tNpcGossip[21129]["Option111"] = tTheGodOfGambling_Text[21129]["Option111"]

-- -- 活动中
-- tNpcGossip[21129]["Text1-2"] = {121,122}
-- tNpcGossip[21129]["Text121"] = tTheGodOfGambling_Text[21129]["Text121"]
-- tNpcGossip[21129]["Text122"] = tTheGodOfGambling_Text[21129]["Text122"]
-- tNpcGossip[21129]["ChkFunc1-2"] = function()
	-- return Sys_ChkFullTime(tTheGodOfGambling_Cont["RecoverTime"])
-- end
-- tNpcGossip[21129]["tOption1-2"] = {121,122}
-- -- 上交1个
-- tNpcGossip[21129]["Option121"] = tTheGodOfGambling_Text[21129]["Option121"]
-- tNpcGossip[21129]["OptionFunc121"] = "TheGodOfGambling_HangIn</N>21129</N>3303926</N>1"
-- -- 上交全部
-- tNpcGossip[21129]["Option122"] = tTheGodOfGambling_Text[21129]["Option122"]
-- tNpcGossip[21129]["OptionFunc122"] = "TheGodOfGambling_HangIn</N>21129</N>3303926</N>2"
-- -- 离开
-- -- tNpcGossip[21129]["Option123"] = tTheGodOfGambling_Text[21129]["Option123"]

-- -- 活动后
-- tNpcGossip[21129]["Text1-3"] = {131,132}
-- tNpcGossip[21129]["Text131"] = tTheGodOfGambling_Text[21129]["Text131"]
-- tNpcGossip[21129]["Text132"] = tTheGodOfGambling_Text[21129]["Text132"]
-- tNpcGossip[21129]["ChkFunc1-3"] = function()
	-- return CommonFunc_GetAfterActivityTime(tTheGodOfGambling_Cont["RecoverTime"])
-- end
-- tNpcGossip[21129]["tOption1-3"] = {131}
-- -- 离开
-- tNpcGossip[21129]["Option131"] = tTheGodOfGambling_Text[21129]["Option131"]

-- -- 活动时间过了
-- tNpcGossip[21129]["Text2-1"] = {211}
-- tNpcGossip[21129]["Text211"] = tTheGodOfGambling_Text[21129]["Text211"]
-- tNpcGossip[21129]["tOption2-1"] = {211}
-- tNpcGossip[21129]["Option211"] = tTheGodOfGambling_Text[21129]["Option211"]

-- -- 没有物品
-- tNpcGossip[21129]["Text2-2"] = {221}
-- tNpcGossip[21129]["Text221"] = tTheGodOfGambling_Text[21129]["Text221"]
-- tNpcGossip[21129]["tOption2-2"] = {221}
-- tNpcGossip[21129]["Option221"] = tTheGodOfGambling_Text[21129]["Option221"]

-- -- 上交二次确认
-- tNpcGossip[21129]["Text2-3"] = {231,232}
-- tNpcGossip[21129]["Text231"] = tTheGodOfGambling_Text[21129]["Text231"]
-- tNpcGossip[21129]["tOption2-3"] = {231,232}
-- -- tNpcGossip[21129]["Option231"] = tTheGodOfGambling_Text[21129]["Option231"]
-- tNpcGossip[21129]["Option232"] = tTheGodOfGambling_Text[21129]["Option232"]

-- --------------------------------------------------------------------------------------------------------
-- -- 背包信头像
-- tItemFace[3304257] = 764
-- tItemFace[3304293] = 754
-- tItemFace[3304294] = 755
tItemFace[3304295] = 756
tItemFace[3304296] = 757
tItemFace[3304297] = 758
tItemFace[3304298] = 759
tItemFace[3304299] = 760
tItemFace[3304300] = 760
--tItemFace[3304259] = 761
tItemFace[3304301] = 761
tItemFace[3304302] = 761
tItemFace[3304303] = 762
tItemFace[3304304] = 763


-- -- 极运筹码，二次确认
-- tItem[3303926] = tItem[3303926] or {}
-- tItem[3303926]["Function"] = function(nItemId,sItemName)
	-- if Sys_ChkFullTime(tTheGodOfGambling_Cont["ActiveTime"]) then
		-- TheGodOfGambling_JoinGame(20892,262)
	-- elseif Sys_ChkFullTime(tTheGodOfGambling_Cont["RecoverTime"]) then
		-- local nMapId = tTheGodOfGambling_Npc[21129]["MapId"]
		-- local nPosX =tTheGodOfGambling_Npc[21129]["PosX"]
		-- local nPosY =tTheGodOfGambling_Npc[21129]["PosY"]
		-- local nUserId = Get_UserId()
		-- Sys_GotoSomeWhere(nPosX,nPosY,nMapId,21129,nUserId)
	-- end
-- end
-- -- 大小王，赤炼石升级包，二次确认 itemface 754-765
-- for nItemId = 3304293,3304304 do
	-- -- tItemFace[nItemId] = nItemId - 3303539
	-- tItem[nItemId] = tItem[nItemId] or {}
	-- tItem[nItemId]["Function"] = function(nItemId,sItemName)
		-- TheGodOfGambling_ChoosePackage(nItemId)
	-- end
	
	-- tItem[nItemId]["Text1-1"] = {111}
	-- tItem[nItemId]["Text111"] = tTheGodOfGambling_Text[nItemId]["Text111"]
	-- tItem[nItemId]["tOption1-1"] = {1,2}
	-- tItem[nItemId]["Option1"] = tTheGodOfGambling_Text[nItemId]["Option1"]
	-- tItem[nItemId]["OptionFunc1"] = string.format("TheGodOfGambling_Confirm</N>%d</N>1",nItemId)
	-- tItem[nItemId]["Option2"] = tTheGodOfGambling_Text[nItemId]["Option2"]
	-- tItem[nItemId]["OptionFunc2"] = string.format("TheGodOfGambling_Confirm</N>%d</N>2",nItemId)
	
	-- tItem[nItemId]["Text1-2"] = {121}
	-- tItem[nItemId]["tOption1-2"] = {3,4}
	-- tItem[nItemId]["Option3"] = tTheGodOfGambling_Text[nItemId]["Option3"]
	-- tItem[nItemId]["Option4"] = tTheGodOfGambling_Text[nItemId]["Option4"]
	
	-- tItem[nItemId]["Option5"] = tTheGodOfGambling_Text[nItemId]["Option5"]
	-- tItem[nItemId]["OptionFunc5"] = string.format("TheGodOfGambling_ConfirmFive</N>%d</N>5",nItemId)
	-- tItem[nItemId]["Option6"] = tTheGodOfGambling_Text[nItemId]["Option6"]
	-- tItem[nItemId]["OptionFunc6"] = string.format("TheGodOfGambling_ConfirmFive</N>%d</N>6",nItemId)
	-- tItem[nItemId]["Text1-3"] = {131}
	-- tItem[nItemId]["tOption1-3"] = {7,8}
	-- tItem[nItemId]["Option7"] = tTheGodOfGambling_Text[nItemId]["Option7"]
	-- tItem[nItemId]["Option8"] = tTheGodOfGambling_Text[nItemId]["Option8"]
-- end

-- tItem[3304259] = tItem[3304259] or {}
-- tItem[3304259]["Function"] = function(nItemId,sItemName)
	-- TheGodOfGambling_ChoosePackage(nItemId)
-- end
-- tItem[3304259]["Text1-1"] = {111}
-- tItem[3304259]["Text111"] = tTheGodOfGambling_Text[3304259]["Text111"]
-- tItem[3304259]["tOption1-1"] = {1,2}
-- tItem[3304259]["Option1"] = tTheGodOfGambling_Text[3304259]["Option1"]
-- tItem[3304259]["OptionFunc1"] = string.format("TheGodOfGambling_Confirm</N>%d</N>1",3304259)
-- tItem[3304259]["Option2"] = tTheGodOfGambling_Text[3304259]["Option2"]
-- tItem[3304259]["OptionFunc2"] = string.format("TheGodOfGambling_Confirm</N>%d</N>2",3304259)

-- tItem[3304259]["Text1-2"] = {121}
-- tItem[3304259]["tOption1-2"] = {3,4}
-- tItem[3304259]["Option3"] = tTheGodOfGambling_Text[3304259]["Option3"]
-- tItem[3304259]["Option4"] = tTheGodOfGambling_Text[3304259]["Option4"]

-- tItem[3304259]["Option5"] = tTheGodOfGambling_Text[3304259]["Option5"]
-- tItem[3304259]["OptionFunc5"] = string.format("TheGodOfGambling_ConfirmFive</N>%d</N>5",3304259)
-- tItem[3304259]["Option6"] = tTheGodOfGambling_Text[3304259]["Option6"]
-- tItem[3304259]["OptionFunc6"] = string.format("TheGodOfGambling_ConfirmFive</N>%d</N>6",3304259)
-- tItem[3304259]["Text1-3"] = {131}
-- tItem[3304259]["tOption1-3"] = {7,8}
-- tItem[3304259]["Option7"] = tTheGodOfGambling_Text[3304259]["Option7"]
-- tItem[3304259]["Option8"] = tTheGodOfGambling_Text[3304259]["Option8"]

-- 其它物品，直接使用
tItem[3304258] = tItem[3304258] or {}
tItem[3304258]["Function"] = function(nItemId,sItemName)
	TheGodOfGambling_UseItem(nItemId)
end
for nItemId = 3304260,3304263 do 
	tItem[nItemId] = tItem[nItemId] or {}
	tItem[nItemId]["Function"] = function(nItemId,sItemName)
		if nItemId == 3304261 then
			if Sys_ChkFullTime(tActivityTime["NewGodOfGamblers"]["Activity"]) then
				TheGodOfGambling_NewUseItem(nItemId)
			elseif Sys_ChkFullTime(tActivityTime["FirstWorldBudokai"]["ItemUse"]) then
				FirstWorldBudokai_UseItem(nItemId)
			else
				TheGodOfGambling_UseItem(nItemId)
			end
		else
			if Sys_ChkFullTime(tActivityTime["NewGodOfGamblers"]["Activity"]) then
				TheGodOfGambling_NewUseItem(nItemId)
			else
				TheGodOfGambling_UseItem(nItemId)
			end
		end
	end
end
for nItemId = 3304264,3304292 do 
	tItem[nItemId] = tItem[nItemId] or {}
	tItem[nItemId]["Function"] = function(nItemId,sItemName)
		TheGodOfGambling_UseItem(nItemId)
	end
end
for nItemId = 3304305,3304336 do 
	tItem[nItemId] = tItem[nItemId] or {}
	tItem[nItemId]["Function"] = function(nItemId,sItemName)
		TheGodOfGambling_UseItem(nItemId)
	end
end
for nItemId = 3304415,3304416 do 
	tItem[nItemId] = tItem[nItemId] or {}
	tItem[nItemId]["Function"] = function(nItemId,sItemName)
		TheGodOfGambling_UseItem(nItemId)
	end
end
for nItemId = 3304421,3304425 do
	tItem[nItemId] = tItem[nItemId] or {}
	tItem[nItemId]["Function"] = function(nItemId,sItemName)
		RewardTemplate_UseItemAndMsg(tTheGodOfGambling_Award[nItemId])
	end
end
tItem[3306429] = tItem[3306429] or {}
tItem[3306429]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tTheGodOfGambling_Award[nItemId])
end

for nItemId = 3304437,3304445 do
	tItem[nItemId] = tItem[nItemId] or {}
	tItem[nItemId]["Function"] = function(nItemId,sItemName)
		TheGodOfGambling_UseItem(nItemId)
	end
end

for nItemId = 3304337,3304352 do 
	tItem[nItemId] = tItem[nItemId] or {}
	tItem[nItemId]["Function"] = function(nItemId,sItemName)
		if not Sys_ChkFullTime(tActivityTime["NewGodOfGamblers"]["Activity"]) then
			local nNum = Get_CountItemType(nItemId, 0)
			if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
				Sys_SaveActionFestivalLog(string.format(tTheGodOfGambling_Log["DelItem"], nItemId, nNum))
				User_TalkChannel2005(tGamblersGaoJin_Text["Channel2005"]["OverTime"])
			end
			return
		end
		
		RewardTemplate_UseItemAndMsg(tTheGodOfGambling_Award[nItemId])
	end
end
-- 3304264	赤炼石奖盘	
tItem[3304264] = {}
tItem[3304264]["Function"] = function (nItemId,sItemName)
	if Sys_ChkFullTime(tActivityTime["NewGodOfGamblers"]["Activity"]) then
		RouletteMould_Main(3988)
	else
		RouletteMould_Main(6816)
	end
end
-- 3304265	星陨石奖盘	
tItem[3304265] = {}
tItem[3304265]["Function"] = function (nItemId,sItemName)
	local nUserId = Get_UserId()
	if not Sys_ChkFullTime(tActivityTime["NewGodOfGamblers"]["Activity"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_TalkChannel2005(tTheGodOfGambling_Text["OverTime"])
			Sys_SaveActionFestivalLog(string.format(tTheGodOfGambling_Cont["DelLog"],nItemId),nUserId)
		end
		return
	end
	if Sys_ChkFullTime(tActivityTime["NewGodOfGamblers"]["Activity"]) then
		RouletteMould_Main(3990)
	else
		RouletteMould_Main(6818)
	end
end
-- 3304266	气力值奖盘	
tItem[3304266] = {}
tItem[3304266]["Function"] = function (nItemId,sItemName)
	if Sys_ChkFullTime(tActivityTime["NewGodOfGamblers"]["Activity"]) then
		RouletteMould_Main(3992)
	else
		RouletteMould_Main(6820)
	end
end
-- 3304267	天石(赠)奖盘	
tItem[3304267] = {}
tItem[3304267]["Function"] = function (nItemId,sItemName)
	if Sys_ChkFullTime(tActivityTime["NewGodOfGamblers"]["Activity"]) then
		RouletteMould_Main(3994)
	else
		RouletteMould_Main(6822)
	end
end
-- 3304268	气力值极运礼盒	
tItem[3304268] = {}
tItem[3304268]["Function"] = function (nItemId,sItemName)
	if Sys_ChkFullTime(tActivityTime["NewGodOfGamblers"]["Activity"]) then
		RouletteMould_Main(3993)
	else
		RouletteMould_Main(6821)
	end
end
-- 3304269	赤炼石极运礼盒	
tItem[3304269] = {}
tItem[3304269]["Function"] = function (nItemId,sItemName)
	if Sys_ChkFullTime(tActivityTime["NewGodOfGamblers"]["Activity"]) then
		RouletteMould_Main(3989)
	else
		RouletteMould_Main(6817)
	end
end
-- 3304270	星陨石极运礼盒	
tItem[3304270] = {}
tItem[3304270]["Function"] = function (nItemId,sItemName)
	local nUserId = Get_UserId()
	if not Sys_ChkFullTime(tActivityTime["NewGodOfGamblers"]["Activity"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_TalkChannel2005(tTheGodOfGambling_Text["OverTime"])
			Sys_SaveActionFestivalLog(string.format(tTheGodOfGambling_Cont["DelLog"],nItemId),nUserId)
		end
		return
	end
	if Sys_ChkFullTime(tActivityTime["NewGodOfGamblers"]["Activity"]) then
		RouletteMould_Main(3991)
	else
		RouletteMould_Main(6819)
	end
end
-- 3304271	天石(赠)极运礼盒
tItem[3304271] = {}
tItem[3304271]["Function"] = function (nItemId,sItemName)
	if Sys_ChkFullTime(tActivityTime["NewGodOfGamblers"]["Activity"]) then
		RouletteMould_Main(3995)
	else
		RouletteMould_Main(6823)
	end
end

for i = 3304295, 3304304 do
	tItem[i] = tItem[i] or {}
	tItem[i]["Function"] = function(nItemId,sItemName)
		LinkItemGossipFunc_New(nItemId, "1-1")
	end
	tItem[i]["DialogueText"] = tTheGodOfGambling_Text[i]
	tItem[i]["Text1-1"] = {111}
	tItem[i]["tOption1-1"] = {111,112}
	tItem[i]["OptionFunc111"] = string.format("TheGodOfGambling_Update</N>%d</N>1", i)
	tItem[i]["OptionFunc112"] = string.format("TheGodOfGambling_Update</N>%d</N>2", i)
end
-- --------------------------------------翻牌器-------------------------------------------
-- tCardsLotteryAgainCost[29] = tCardsLotteryAgainCost[29] or {}
-- tCardsLotteryAgainCost[29]["tFunction"] = tCardsLotteryAgainCost[29]["tFunction"] or {}
-- table.insert(tCardsLotteryAgainCost[29]["tFunction"],TheGodOfGambling_ReOpenCards)
-- tCardsLotteryAgainCost[30] = tCardsLotteryAgainCost[30] or {}
-- tCardsLotteryAgainCost[30]["tFunction"] = tCardsLotteryAgainCost[30]["tFunction"] or {}
-- table.insert(tCardsLotteryAgainCost[30]["tFunction"],TheGodOfGambling_ReOpenCards)
-- tCardsLotteryAgainCost[31] = tCardsLotteryAgainCost[31] or {}
-- tCardsLotteryAgainCost[31]["tFunction"] = tCardsLotteryAgainCost[31]["tFunction"] or {}
-- table.insert(tCardsLotteryAgainCost[31]["tFunction"],TheGodOfGambling_ReOpenCards)

-- ------------------------------------- 怪物模板 ----------------------------------------------	
-- -- 神龙岛 3967,3968,3969
-- -- 潜龙渊 3973,3974,3975,3979,3980,3981,3982,3983,3984,3985,3986
-- -- local tTheGodOfGambling_KillMonster = {}
-- -- tTheGodOfGambling_KillMonster["ActivityTime"] = tTheGodOfGambling_Cont["ActiveTime"]
-- -- tTheGodOfGambling_KillMonster["Function"]= TheGodOfGambling_DropItem
-- -- tTheGodOfGambling_KillMonster["MonsterId"] = {3967,3968,3969,3973,3974,3975,3979,3980,3981,3982,3983,3984,3985,3986}
-- -- table.insert(tMonsterDrop_AreaLoad,tTheGodOfGambling_KillMonster)

-- ------------------------------------- 系统自检 ----------------------------------------------	
-- tOntimerMin_HM[0000] = tOntimerMin_HM[0000] or {}
-- table.insert(tOntimerMin_HM[0000],TheGodOfGambling_GlobalClr1)
-- tOntimerMin_HM[0001] = tOntimerMin_HM[0001] or {}
-- table.insert(tOntimerMin_HM[0001],TheGodOfGambling_GlobalClr1)
-- tOntimerMin_HM[0002] = tOntimerMin_HM[0002] or {}
-- table.insert(tOntimerMin_HM[0002],TheGodOfGambling_GlobalClr1)
-- tOntimerMin_HM[0003] = tOntimerMin_HM[0003] or {}
-- table.insert(tOntimerMin_HM[0003],TheGodOfGambling_GlobalClr2)
-- tOntimerMin_HM[0004] = tOntimerMin_HM[0004] or {}
-- table.insert(tOntimerMin_HM[0004],TheGodOfGambling_GlobalClr2)
-- tOntimerMin_HM[0005] = tOntimerMin_HM[0005] or {}
-- table.insert(tOntimerMin_HM[0005],TheGodOfGambling_GlobalClr2)

-- tOntimerMin_M[00] = tOntimerMin_M[00] or {}
-- table.insert(tOntimerMin_M[00],TheGodOfGambling_Broadcast)





















