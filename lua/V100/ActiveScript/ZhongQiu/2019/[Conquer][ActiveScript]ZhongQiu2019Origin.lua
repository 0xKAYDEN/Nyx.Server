------------------------------------------------------------------------------------
--Name：            190817[简体征服][活动脚本]全球中秋博饼活动-3由来（9.10~9.30）
--Creator:      郑洵
--Created:     2019/08/17
------------------------------------------------------------------------------------
--任务需求：
-- 1、进入地图之后，在地图内击杀浪人、倭寇累计达到50个后，可以去找郑成功提交任务，获得6个博饼骰子
-- 2、救助地图内倒地卫兵，（需要读条传功）
-- 鼓舞思乡的士兵（需要消耗对应5个片区地图的特产，特产可在npc云游商人处花金币购买，商人每隔30分钟换个位置）
-- 亦可获得博饼骰子，每日上限6个。"

--前缀 ZhongQiu2019Origin_
-- logid: 12001563
-- 普通骰子 3323106
-- 41446 = V100\ActiveScript\ZhongQiu\2019\[Conquer][ActiveScript]ZhongQiu2019Origin.lua
-- 41446 = V100\活动脚本\中秋\2019\[征服][活动脚本]全球中秋博饼活动由来.lua

------------------------------------------------------------------------------------
local tZhongQiu2019Origin_Stc = {}
	--杀怪百分一几率掉落
	tZhongQiu2019Origin_Stc["Drop"] = {}
	tZhongQiu2019Origin_Stc["Drop"]["Event"] = 202
	tZhongQiu2019Origin_Stc["Drop"]["Type"] = 81
	tZhongQiu2019Origin_Stc["Drop"]["LimitData"] = 12
	--杀怪50只领奖
	tZhongQiu2019Origin_Stc["Reward"] = {}
	tZhongQiu2019Origin_Stc["Reward"]["Event"] = 202
	tZhongQiu2019Origin_Stc["Reward"]["Type"] = 82
	--杀怪次数
	tZhongQiu2019Origin_Stc["Kill"] = {}
	tZhongQiu2019Origin_Stc["Kill"]["Event"] = 202
	tZhongQiu2019Origin_Stc["Kill"]["Type"] = 83
	tZhongQiu2019Origin_Stc["Kill"]["LimitData"] = 50
	--帮助士兵
	tZhongQiu2019Origin_Stc["Help"] = {}
	tZhongQiu2019Origin_Stc["Help"]["Event"] = 202
	tZhongQiu2019Origin_Stc["Help"]["Type"] = 84
	tZhongQiu2019Origin_Stc["Help"]["LimitData"] = 6
	--士兵阿雄
	tZhongQiu2019Origin_Stc[24818] = {}
	tZhongQiu2019Origin_Stc[24818]["Event"] = 202
	tZhongQiu2019Origin_Stc[24818]["Type"] = 94
	--士兵阿月
	tZhongQiu2019Origin_Stc[24819] = {}
	tZhongQiu2019Origin_Stc[24819]["Event"] = 202
	tZhongQiu2019Origin_Stc[24819]["Type"] = 95
	--士兵阿浩
	tZhongQiu2019Origin_Stc[24820] = {}
	tZhongQiu2019Origin_Stc[24820]["Event"] = 202
	tZhongQiu2019Origin_Stc[24820]["Type"] = 96
	--士兵阿皮
	tZhongQiu2019Origin_Stc[24821] = {}
	tZhongQiu2019Origin_Stc[24821]["Event"] = 202
	tZhongQiu2019Origin_Stc[24821]["Type"] = 97
	--士兵阿昌
	tZhongQiu2019Origin_Stc[24822] = {}
	tZhongQiu2019Origin_Stc[24822]["Event"] = 202
	tZhongQiu2019Origin_Stc[24822]["Type"] = 98

local tZhongQiu2019Origin_Log= {}
	tZhongQiu2019Origin_Log["DelItem"] = "0,0,%d,%d,12001563,2,0,0"

	local tZhongQiu2019Origin_Map= {}
	tZhongQiu2019Origin_Map["MapId"]= 10594
	tZhongQiu2019Origin_Map["PosX"]= 240
	tZhongQiu2019Origin_Map["PosY"]= 239

	tZhongQiu2019Origin_Map["City"]= {}
	tZhongQiu2019Origin_Map["City"]["MapId"]= 1002
	tZhongQiu2019Origin_Map["City"]["PosX"] = 317
	tZhongQiu2019Origin_Map["City"]["PosY"] = 444

	tZhongQiu2019Origin_Map["NoGifCity"]= {}
	tZhongQiu2019Origin_Map["NoGifCity"]["MapId"] = 1036
	tZhongQiu2019Origin_Map["NoGifCity"]["PosX"] = 222
	tZhongQiu2019Origin_Map["NoGifCity"]["PosY"] = 160

local tZhongQiu2019Origin_Cont = {}
	--骰子ID
	tZhongQiu2019Origin_Cont["TouZi"] = 3323106
	--记录动态码
	tZhongQiu2019Origin_Cont["Global"] = 53637
	--等级判断
	tZhongQiu2019Origin_Cont["Level"] = 80
	tZhongQiu2019Origin_Cont["Mete"] = 0
	--读条救助
	tZhongQiu2019Origin_Cont["Secs"] = 2
	tZhongQiu2019Origin_Cont["ActionId"] = 220
	--概率掉落
	tZhongQiu2019Origin_Cont["Drop"] = {}
	tZhongQiu2019Origin_Cont["Drop"]["StartNum"] = 2
	tZhongQiu2019Origin_Cont["Drop"]["EndNum"] = 100
	--乡愁特产
	tZhongQiu2019Origin_Cont["Specialty"] = {}
	tZhongQiu2019Origin_Cont["Specialty"][24818] = 3313519
	tZhongQiu2019Origin_Cont["Specialty"][24819] = 3313520
	tZhongQiu2019Origin_Cont["Specialty"][24820] = 3313521
	tZhongQiu2019Origin_Cont["Specialty"][24821] = 3313522
	tZhongQiu2019Origin_Cont["Specialty"][24822] = 3313523
	--特产小贩位置
	tZhongQiu2019Origin_Cont["Specialty"]["NpcId"] = 24814
	tZhongQiu2019Origin_Cont["Specialty"]["MapId"] = 10594
	tZhongQiu2019Origin_Cont["Specialty"]["Pos"] = {}
	tZhongQiu2019Origin_Cont["Specialty"]["Pos"][1] = {}
	tZhongQiu2019Origin_Cont["Specialty"]["Pos"][1]["X"] = 278
	tZhongQiu2019Origin_Cont["Specialty"]["Pos"][1]["Y"] = 289
	tZhongQiu2019Origin_Cont["Specialty"]["Pos"][2] = {}
	tZhongQiu2019Origin_Cont["Specialty"]["Pos"][2]["X"] = 274
	tZhongQiu2019Origin_Cont["Specialty"]["Pos"][2]["Y"] = 233
	tZhongQiu2019Origin_Cont["Specialty"]["Pos"][3] = {}
	tZhongQiu2019Origin_Cont["Specialty"]["Pos"][3]["X"] = 219
	tZhongQiu2019Origin_Cont["Specialty"]["Pos"][3]["Y"] = 237
	tZhongQiu2019Origin_Cont["Specialty"]["Pos"][4] = {}
	tZhongQiu2019Origin_Cont["Specialty"]["Pos"][4]["X"] = 236
	tZhongQiu2019Origin_Cont["Specialty"]["Pos"][4]["Y"] = 210
	tZhongQiu2019Origin_Cont["Specialty"]["Pos"][5] = {}
	tZhongQiu2019Origin_Cont["Specialty"]["Pos"][5]["X"] = 306
	tZhongQiu2019Origin_Cont["Specialty"]["Pos"][5]["Y"] = 275
	--BOSS位置
	tZhongQiu2019Origin_Cont["BOSS"] = {}
	tZhongQiu2019Origin_Cont["BOSS"]["MonsterId"] = 1152
	tZhongQiu2019Origin_Cont["BOSS"]["GenId"] = 29215
	tZhongQiu2019Origin_Cont["BOSS"]["MapId"] = 10594
	tZhongQiu2019Origin_Cont["BOSS"]["Pos"] = {}
	tZhongQiu2019Origin_Cont["BOSS"]["Pos"][1] = {}
	tZhongQiu2019Origin_Cont["BOSS"]["Pos"][1]["X"] = 266
	tZhongQiu2019Origin_Cont["BOSS"]["Pos"][1]["Y"] = 266
	-- tZhongQiu2019Origin_Cont["BOSS"]["Pos"][2] = {}
	-- tZhongQiu2019Origin_Cont["BOSS"]["Pos"][2]["X"] = 134
	-- tZhongQiu2019Origin_Cont["BOSS"]["Pos"][2]["Y"] = 173
	-- tZhongQiu2019Origin_Cont["BOSS"]["Pos"][3] = {}
	-- tZhongQiu2019Origin_Cont["BOSS"]["Pos"][3]["X"] = 170
	-- tZhongQiu2019Origin_Cont["BOSS"]["Pos"][3]["Y"] = 300
	-- tZhongQiu2019Origin_Cont["BOSS"]["Pos"][4] = {}
	-- tZhongQiu2019Origin_Cont["BOSS"]["Pos"][4]["X"] = 214
	-- tZhongQiu2019Origin_Cont["BOSS"]["Pos"][4]["Y"] = 338
	-- tZhongQiu2019Origin_Cont["BOSS"]["Pos"][5] = {}
	-- tZhongQiu2019Origin_Cont["BOSS"]["Pos"][5]["X"] = 306
	-- tZhongQiu2019Origin_Cont["BOSS"]["Pos"][5]["Y"] = 382
	-- tZhongQiu2019Origin_Cont["BOSS"]["Pos"][6] = {}
	-- tZhongQiu2019Origin_Cont["BOSS"]["Pos"][6]["X"] = 336
	-- tZhongQiu2019Origin_Cont["BOSS"]["Pos"][6]["Y"] = 365
	-- tZhongQiu2019Origin_Cont["BOSS"]["Pos"][7] = {}
	-- tZhongQiu2019Origin_Cont["BOSS"]["Pos"][7]["X"] = 383
	-- tZhongQiu2019Origin_Cont["BOSS"]["Pos"][7]["Y"] = 297
	-- tZhongQiu2019Origin_Cont["BOSS"]["Pos"][8] = {}
	-- tZhongQiu2019Origin_Cont["BOSS"]["Pos"][8]["X"] = 363
	-- tZhongQiu2019Origin_Cont["BOSS"]["Pos"][8]["Y"] = 238
	-- tZhongQiu2019Origin_Cont["BOSS"]["Pos"][9] = {}
	-- tZhongQiu2019Origin_Cont["BOSS"]["Pos"][9]["X"] = 293
	-- tZhongQiu2019Origin_Cont["BOSS"]["Pos"][9]["Y"] = 171
	-- tZhongQiu2019Origin_Cont["BOSS"]["Pos"][10] = {}
	-- tZhongQiu2019Origin_Cont["BOSS"]["Pos"][10]["X"] = 254
	-- tZhongQiu2019Origin_Cont["BOSS"]["Pos"][10]["Y"] = 126
	--受伤的士兵位置
	tZhongQiu2019Origin_Cont["Soldier"] = {}
	tZhongQiu2019Origin_Cont["Soldier"][24815] = 1
	tZhongQiu2019Origin_Cont["Soldier"][24816] = 2
	tZhongQiu2019Origin_Cont["Soldier"][24817] = 3
	tZhongQiu2019Origin_Cont["Soldier"][1] = {}
	tZhongQiu2019Origin_Cont["Soldier"][1]["NpcId"] = 24815
	tZhongQiu2019Origin_Cont["Soldier"][1]["Pos"] = {}
	tZhongQiu2019Origin_Cont["Soldier"][1]["Pos"][1] = {}
	tZhongQiu2019Origin_Cont["Soldier"][1]["Pos"][1]["X"] = 110
	tZhongQiu2019Origin_Cont["Soldier"][1]["Pos"][1]["Y"] = 170
	tZhongQiu2019Origin_Cont["Soldier"][1]["Pos"][2] = {}
	tZhongQiu2019Origin_Cont["Soldier"][1]["Pos"][2]["X"] = 186
	tZhongQiu2019Origin_Cont["Soldier"][1]["Pos"][2]["Y"] = 308
	-- tZhongQiu2019Origin_Cont["Soldier"][1]["Pos"][3] = {}
	-- tZhongQiu2019Origin_Cont["Soldier"][1]["Pos"][3]["X"] = 197
	-- tZhongQiu2019Origin_Cont["Soldier"][1]["Pos"][3]["Y"] = 229
	tZhongQiu2019Origin_Cont["Soldier"][2] = {}
	tZhongQiu2019Origin_Cont["Soldier"][2]["NpcId"] = 24816
	tZhongQiu2019Origin_Cont["Soldier"][2]["Pos"] = {}
	tZhongQiu2019Origin_Cont["Soldier"][2]["Pos"][1] = {}
	tZhongQiu2019Origin_Cont["Soldier"][2]["Pos"][1]["X"] = 192
	tZhongQiu2019Origin_Cont["Soldier"][2]["Pos"][1]["Y"] = 338
	tZhongQiu2019Origin_Cont["Soldier"][2]["Pos"][2] = {}
	tZhongQiu2019Origin_Cont["Soldier"][2]["Pos"][2]["X"] = 340
	tZhongQiu2019Origin_Cont["Soldier"][2]["Pos"][2]["Y"] = 394
	-- tZhongQiu2019Origin_Cont["Soldier"][2]["Pos"][3] = {}
	-- tZhongQiu2019Origin_Cont["Soldier"][2]["Pos"][3]["X"] = 295
	-- tZhongQiu2019Origin_Cont["Soldier"][2]["Pos"][3]["Y"] = 234
	tZhongQiu2019Origin_Cont["Soldier"][3] = {}
	tZhongQiu2019Origin_Cont["Soldier"][3]["NpcId"] = 24817
	tZhongQiu2019Origin_Cont["Soldier"][3]["Pos"] = {}
	tZhongQiu2019Origin_Cont["Soldier"][3]["Pos"][1] = {}
	tZhongQiu2019Origin_Cont["Soldier"][3]["Pos"][1]["X"] = 379
	tZhongQiu2019Origin_Cont["Soldier"][3]["Pos"][1]["Y"] = 275
	tZhongQiu2019Origin_Cont["Soldier"][3]["Pos"][2] = {}
	tZhongQiu2019Origin_Cont["Soldier"][3]["Pos"][2]["X"] = 284
	tZhongQiu2019Origin_Cont["Soldier"][3]["Pos"][2]["Y"] = 151
	-- tZhongQiu2019Origin_Cont["Soldier"][3]["Pos"][3] = {}
	-- tZhongQiu2019Origin_Cont["Soldier"][3]["Pos"][3]["X"] = 192
	-- tZhongQiu2019Origin_Cont["Soldier"][3]["Pos"][3]["Y"] = 210

local tZhongQiu2019Origin_Reward = {}
	-- ===救助奖励
	-- ===索引:tZhongQiu2019Origin_Reward["Help"]
	tZhongQiu2019Origin_Reward["Help"] = {}
	tZhongQiu2019Origin_Reward["Help"]["LogId"] = 12001563
	tZhongQiu2019Origin_Reward["Help"]["RewardItem"] = {}
	tZhongQiu2019Origin_Reward["Help"]["RewardItem"][1] = {}
	tZhongQiu2019Origin_Reward["Help"]["RewardItem"][1]["Id"] = 3323106 --  3323106 【库里没有该物品】, 【表格】博饼骰子
	tZhongQiu2019Origin_Reward["Help"]["RewardItem"][1]["Attr"] = "0 1" --  3323106 【库里没有该物品】*1
	tZhongQiu2019Origin_Reward["Help"]["RewardEffect"] = {}
	tZhongQiu2019Origin_Reward["Help"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tZhongQiu2019Origin_Reward["Help"]["RewardEffect"]["Effect"] = "angelwing"


	tZhongQiu2019Origin_Reward["Monster"] = {}
	-- ===杀怪奖励
	-- ===索引:tZhongQiu2019Origin_Reward["Monster"]
	tZhongQiu2019Origin_Reward["Monster"]["ItemChanceSum"] = 10000
	tZhongQiu2019Origin_Reward["Monster"]["LogId"] = 12001563
	-- 月饼品尝券 - 50.00%
	tZhongQiu2019Origin_Reward["Monster"][1] = {}
	tZhongQiu2019Origin_Reward["Monster"][1]["RandomItemChanceType"] = 2
	tZhongQiu2019Origin_Reward["Monster"][1]["ItemChance"] = 5000
	tZhongQiu2019Origin_Reward["Monster"][1]["RewardItem"] = {}
	tZhongQiu2019Origin_Reward["Monster"][1]["RewardItem"][1] = {}
	tZhongQiu2019Origin_Reward["Monster"][1]["RewardItem"][1]["Id"] = 3304527 -- 月饼品尝券[3304527][属性:11][叠加:999][金币:0], 【表格】月饼品尝券
	tZhongQiu2019Origin_Reward["Monster"][1]["RewardItem"][1]["Attr"] = "0 1" -- 月饼品尝券*1
	tZhongQiu2019Origin_Reward["Monster"][1]["RewardEffect"] = {}
	tZhongQiu2019Origin_Reward["Monster"][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tZhongQiu2019Origin_Reward["Monster"][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 博饼骰子 - 50.00%
	tZhongQiu2019Origin_Reward["Monster"][2] = {}
	tZhongQiu2019Origin_Reward["Monster"][2]["RandomItemChanceType"] = 2
	tZhongQiu2019Origin_Reward["Monster"][2]["ItemChance"] = 5000
	tZhongQiu2019Origin_Reward["Monster"][2]["RewardItem"] = {}
	tZhongQiu2019Origin_Reward["Monster"][2]["RewardItem"][1] = {}
	tZhongQiu2019Origin_Reward["Monster"][2]["RewardItem"][1]["Id"] = 3323106 --  3323106 【库里没有该物品】, 【表格】博饼骰子
	tZhongQiu2019Origin_Reward["Monster"][2]["RewardItem"][1]["Attr"] = "0 1" --  3323106 【库里没有该物品】*1
	tZhongQiu2019Origin_Reward["Monster"][2]["RewardEffect"] = {}
	tZhongQiu2019Origin_Reward["Monster"][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tZhongQiu2019Origin_Reward["Monster"][2]["RewardEffect"]["Effect"] = "angelwing"


	tZhongQiu2019Origin_Reward["Kill"] = {}
	-- ===杀倭寇礼包
	-- ===索引:tZhongQiu2019Origin_Reward["Kill"]
	tZhongQiu2019Origin_Reward["Kill"]["ItemChanceSum"] = 1000000
	tZhongQiu2019Origin_Reward["Kill"]["LogId"] = 12001563
	-- 微光星陨石 - 28.0000%
	tZhongQiu2019Origin_Reward["Kill"][1] = {}
	tZhongQiu2019Origin_Reward["Kill"][1]["RandomItemChanceType"] = 2
	tZhongQiu2019Origin_Reward["Kill"][1]["ItemChance"] = 280000
	tZhongQiu2019Origin_Reward["Kill"][1]["RewardItem"] = {}
	tZhongQiu2019Origin_Reward["Kill"][1]["RewardItem"][1] = {}
	tZhongQiu2019Origin_Reward["Kill"][1]["RewardItem"][1]["Id"] = 3009000 -- 微光星陨石[3009000][属性:9][叠加:0][金币:0], 【表格】微光星陨石
	tZhongQiu2019Origin_Reward["Kill"][1]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的微光星陨石*2
	tZhongQiu2019Origin_Reward["Kill"][1]["RewardEffect"] = {}
	tZhongQiu2019Origin_Reward["Kill"][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tZhongQiu2019Origin_Reward["Kill"][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+1 - 25.0000%
	tZhongQiu2019Origin_Reward["Kill"][2] = {}
	tZhongQiu2019Origin_Reward["Kill"][2]["RandomItemChanceType"] = 2
	tZhongQiu2019Origin_Reward["Kill"][2]["ItemChance"] = 250000
	tZhongQiu2019Origin_Reward["Kill"][2]["RewardItem"] = {}
	tZhongQiu2019Origin_Reward["Kill"][2]["RewardItem"][1] = {}
	tZhongQiu2019Origin_Reward["Kill"][2]["RewardItem"][1]["Id"] = 730001 -- +1赤炼石[730001][属性:0][叠加:0][金币:0], 【表格】赤炼石+1
	tZhongQiu2019Origin_Reward["Kill"][2]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+1赤炼石（赠）*1
	tZhongQiu2019Origin_Reward["Kill"][2]["RewardEffect"] = {}
	tZhongQiu2019Origin_Reward["Kill"][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tZhongQiu2019Origin_Reward["Kill"][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 20.0000%
	tZhongQiu2019Origin_Reward["Kill"][3] = {}
	tZhongQiu2019Origin_Reward["Kill"][3]["RandomItemChanceType"] = 2
	tZhongQiu2019Origin_Reward["Kill"][3]["ItemChance"] = 200000
	tZhongQiu2019Origin_Reward["Kill"][3]["RewardItem"] = {}
	tZhongQiu2019Origin_Reward["Kill"][3]["RewardItem"][1] = {}
	tZhongQiu2019Origin_Reward["Kill"][3]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】人参果
	tZhongQiu2019Origin_Reward["Kill"][3]["RewardItem"][1]["Attr"] = "0 1" -- 人参果*1
	tZhongQiu2019Origin_Reward["Kill"][3]["RewardEffect"] = {}
	tZhongQiu2019Origin_Reward["Kill"][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tZhongQiu2019Origin_Reward["Kill"][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 25.0000%
	tZhongQiu2019Origin_Reward["Kill"][4] = {}
	tZhongQiu2019Origin_Reward["Kill"][4]["RandomItemChanceType"] = 2
	tZhongQiu2019Origin_Reward["Kill"][4]["ItemChance"] = 250000
	tZhongQiu2019Origin_Reward["Kill"][4]["RewardItem"] = {}
	tZhongQiu2019Origin_Reward["Kill"][4]["RewardItem"][1] = {}
	tZhongQiu2019Origin_Reward["Kill"][4]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tZhongQiu2019Origin_Reward["Kill"][4]["RewardItem"][1]["Attr"] = "0 1 3" -- 万能神纹精粹（赠）*1
	tZhongQiu2019Origin_Reward["Kill"][4]["RewardEffect"] = {}
	tZhongQiu2019Origin_Reward["Kill"][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tZhongQiu2019Origin_Reward["Kill"][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 晶莹星陨石 - 0.5000%
	tZhongQiu2019Origin_Reward["Kill"][5] = {}
	tZhongQiu2019Origin_Reward["Kill"][5]["RandomItemChanceType"] = 2
	tZhongQiu2019Origin_Reward["Kill"][5]["ItemChance"] = 5000
	tZhongQiu2019Origin_Reward["Kill"][5]["RewardItem"] = {}
	tZhongQiu2019Origin_Reward["Kill"][5]["RewardItem"][1] = {}
	tZhongQiu2019Origin_Reward["Kill"][5]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tZhongQiu2019Origin_Reward["Kill"][5]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
	tZhongQiu2019Origin_Reward["Kill"][5]["RewardEffect"] = {}
	tZhongQiu2019Origin_Reward["Kill"][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tZhongQiu2019Origin_Reward["Kill"][5]["RewardEffect"]["Effect"] = "angelwing"
	tZhongQiu2019Origin_Reward["Kill"][5]["RewardBroadCast"] = "sBroadCastText" -- 全服公告
	tZhongQiu2019Origin_Reward["Kill"][5]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 赤炼石+4 - 1.0000%
	tZhongQiu2019Origin_Reward["Kill"][6] = {}
	tZhongQiu2019Origin_Reward["Kill"][6]["RandomItemChanceType"] = 2
	tZhongQiu2019Origin_Reward["Kill"][6]["ItemChance"] = 10000
	tZhongQiu2019Origin_Reward["Kill"][6]["RewardItem"] = {}
	tZhongQiu2019Origin_Reward["Kill"][6]["RewardItem"][1] = {}
	tZhongQiu2019Origin_Reward["Kill"][6]["RewardItem"][1]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】赤炼石+4
	tZhongQiu2019Origin_Reward["Kill"][6]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+4赤炼石（赠）*1
	tZhongQiu2019Origin_Reward["Kill"][6]["RewardEffect"] = {}
	tZhongQiu2019Origin_Reward["Kill"][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tZhongQiu2019Origin_Reward["Kill"][6]["RewardEffect"]["Effect"] = "angelwing"
	tZhongQiu2019Origin_Reward["Kill"][6]["RewardBroadCast"] = "sBroadCastText" -- 全服公告
	tZhongQiu2019Origin_Reward["Kill"][6]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
			-- 【动态掩码（53637, data1）】全服限量:（105）, 超限给编号（2）-
	tZhongQiu2019Origin_Reward["Kill"][6]["GlobalId"] = 53637
	tZhongQiu2019Origin_Reward["Kill"][6]["Pos"] = 1
	tZhongQiu2019Origin_Reward["Kill"][6]["MaxData"] = 105
	tZhongQiu2019Origin_Reward["Kill"][6]["FullIndex"] = 2
			-- 【动态掩码（53637, data2）】单日限量:（5）, 超限给编号（2）-
	tZhongQiu2019Origin_Reward["Kill"][6]["OtherPos"] = 2
	tZhongQiu2019Origin_Reward["Kill"][6]["OtherMaxData"] = 5
	tZhongQiu2019Origin_Reward["Kill"][6]["OtherFullIndex"] = 2
	-- 天灵果 - 0.5000%
	tZhongQiu2019Origin_Reward["Kill"][7] = {}
	tZhongQiu2019Origin_Reward["Kill"][7]["RandomItemChanceType"] = 2
	tZhongQiu2019Origin_Reward["Kill"][7]["ItemChance"] = 5000
	tZhongQiu2019Origin_Reward["Kill"][7]["RewardItem"] = {}
	tZhongQiu2019Origin_Reward["Kill"][7]["RewardItem"][1] = {}
	tZhongQiu2019Origin_Reward["Kill"][7]["RewardItem"][1]["Id"] = 3009103 -- 天灵果[3009103][属性:9][叠加:99][金币:0], 【表格】天灵果
	tZhongQiu2019Origin_Reward["Kill"][7]["RewardItem"][1]["Attr"] = "0 1" -- 天灵果*1
	tZhongQiu2019Origin_Reward["Kill"][7]["RewardEffect"] = {}
	tZhongQiu2019Origin_Reward["Kill"][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tZhongQiu2019Origin_Reward["Kill"][7]["RewardEffect"]["Effect"] = "angelwing"
	tZhongQiu2019Origin_Reward["Kill"][7]["RewardBroadCast"] = "sBroadCastText" -- 全服公告
	tZhongQiu2019Origin_Reward["Kill"][7]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 博饼骰子-- 【必给】
	tZhongQiu2019Origin_Reward["Kill"][8] = {}
	tZhongQiu2019Origin_Reward["Kill"][8]["RandomItemChanceType"] = 1
	tZhongQiu2019Origin_Reward["Kill"][8]["RewardItem"] = {}
	tZhongQiu2019Origin_Reward["Kill"][8]["RewardItem"][1] = {}
	tZhongQiu2019Origin_Reward["Kill"][8]["RewardItem"][1]["Id"] = 3323106 --  3323106 【库里没有该物品】, 【表格】博饼骰子
	tZhongQiu2019Origin_Reward["Kill"][8]["RewardItem"][1]["Attr"] = "0 6" --  3323106 【库里没有该物品】*6
	tZhongQiu2019Origin_Reward["Kill"][8]["RewardEffect"] = {}
	tZhongQiu2019Origin_Reward["Kill"][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tZhongQiu2019Origin_Reward["Kill"][8]["RewardEffect"]["Effect"] = "angelwing"


	tZhongQiu2019Origin_Reward["KillBOSS"] = {}
	-- ===杀BOSS
	-- ===索引:tZhongQiu2019Origin_Reward["KillBOSS"]
	tZhongQiu2019Origin_Reward["KillBOSS"]["ItemChanceSum"] = 10000
	tZhongQiu2019Origin_Reward["KillBOSS"]["LogId"] = 12001563
	-- 博饼骰子 - 20.0000%
	tZhongQiu2019Origin_Reward["KillBOSS"][1] = {}
	tZhongQiu2019Origin_Reward["KillBOSS"][1]["RandomItemChanceType"] = 2
	tZhongQiu2019Origin_Reward["KillBOSS"][1]["ItemChance"] = 2000
	tZhongQiu2019Origin_Reward["KillBOSS"][1]["RewardItem"] = {}
	tZhongQiu2019Origin_Reward["KillBOSS"][1]["RewardItem"][1] = {}
	tZhongQiu2019Origin_Reward["KillBOSS"][1]["RewardItem"][1]["Id"] = 3323106 --  3323106 【库里没有该物品】, 【表格】博饼骰子
	tZhongQiu2019Origin_Reward["KillBOSS"][1]["RewardItem"][1]["Attr"] = "0 12" --  3323106 【库里没有该物品】*12（[错误]物品数量超10个）
	tZhongQiu2019Origin_Reward["KillBOSS"][1]["RewardEffect"] = {}
	tZhongQiu2019Origin_Reward["KillBOSS"][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tZhongQiu2019Origin_Reward["KillBOSS"][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 博饼骰子 - 40.0000%
	tZhongQiu2019Origin_Reward["KillBOSS"][2] = {}
	tZhongQiu2019Origin_Reward["KillBOSS"][2]["RandomItemChanceType"] = 2
	tZhongQiu2019Origin_Reward["KillBOSS"][2]["ItemChance"] = 4000
	tZhongQiu2019Origin_Reward["KillBOSS"][2]["RewardItem"] = {}
	tZhongQiu2019Origin_Reward["KillBOSS"][2]["RewardItem"][1] = {}
	tZhongQiu2019Origin_Reward["KillBOSS"][2]["RewardItem"][1]["Id"] = 3323106 --  3323106 【库里没有该物品】, 【表格】博饼骰子
	tZhongQiu2019Origin_Reward["KillBOSS"][2]["RewardItem"][1]["Attr"] = "0 18" --  3323106 【库里没有该物品】*18（[错误]物品数量超10个）
	tZhongQiu2019Origin_Reward["KillBOSS"][2]["RewardEffect"] = {}
	tZhongQiu2019Origin_Reward["KillBOSS"][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tZhongQiu2019Origin_Reward["KillBOSS"][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 博饼骰子 - 30.0000%
	tZhongQiu2019Origin_Reward["KillBOSS"][3] = {}
	tZhongQiu2019Origin_Reward["KillBOSS"][3]["RandomItemChanceType"] = 2
	tZhongQiu2019Origin_Reward["KillBOSS"][3]["ItemChance"] = 3000
	tZhongQiu2019Origin_Reward["KillBOSS"][3]["RewardItem"] = {}
	tZhongQiu2019Origin_Reward["KillBOSS"][3]["RewardItem"][1] = {}
	tZhongQiu2019Origin_Reward["KillBOSS"][3]["RewardItem"][1]["Id"] = 3323106 --  3323106 【库里没有该物品】, 【表格】博饼骰子
	tZhongQiu2019Origin_Reward["KillBOSS"][3]["RewardItem"][1]["Attr"] = "0 24" --  3323106 【库里没有该物品】*24（[错误]物品数量超10个）
	tZhongQiu2019Origin_Reward["KillBOSS"][3]["RewardEffect"] = {}
	tZhongQiu2019Origin_Reward["KillBOSS"][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tZhongQiu2019Origin_Reward["KillBOSS"][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 博饼骰子 - 10.0000%
	tZhongQiu2019Origin_Reward["KillBOSS"][4] = {}
	tZhongQiu2019Origin_Reward["KillBOSS"][4]["RandomItemChanceType"] = 2
	tZhongQiu2019Origin_Reward["KillBOSS"][4]["ItemChance"] = 1000
	tZhongQiu2019Origin_Reward["KillBOSS"][4]["RewardItem"] = {}
	tZhongQiu2019Origin_Reward["KillBOSS"][4]["RewardItem"][1] = {}
	tZhongQiu2019Origin_Reward["KillBOSS"][4]["RewardItem"][1]["Id"] = 3323106 --  3323106 【库里没有该物品】, 【表格】博饼骰子
	tZhongQiu2019Origin_Reward["KillBOSS"][4]["RewardItem"][1]["Attr"] = "0 30" --  3323106 【库里没有该物品】*30（[错误]物品数量超10个）
	tZhongQiu2019Origin_Reward["KillBOSS"][4]["RewardEffect"] = {}
	tZhongQiu2019Origin_Reward["KillBOSS"][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tZhongQiu2019Origin_Reward["KillBOSS"][4]["RewardEffect"]["Effect"] = "angelwing"


----------------------------------逻辑配置--------------------------------------
--进入鼓浪屿
function ZhongQiu2019Origin_GoKillMonster()
	local nUserId = Get_UserId()
	local nMapId = tZhongQiu2019Origin_Map["MapId"]
	local nCellx = tZhongQiu2019Origin_Map["PosX"]
	local nCelly = tZhongQiu2019Origin_Map["PosY"]

	User_ChgMap(nMapId,nCellx,nCelly,0,nUserId)
	Sys_MsgBox(tZhongQiu2019Origin_Text["GoMap"])
end

--副本内陷阱离开
function ZhongQiu2019Origin_ChgMap()
	local nUserId = Get_UserId()
	local nMapId = 0 
	local nCellx = 0
	local nCelly = 0

	if SpecialServer_ChkNoGiftServer() then 
		nMapId = tZhongQiu2019Origin_Map["NoGifCity"]["MapId"]
		nCellx = tZhongQiu2019Origin_Map["NoGifCity"]["PosX"] 
		nCelly = tZhongQiu2019Origin_Map["NoGifCity"]["PosY"] 
	else
		nMapId = tZhongQiu2019Origin_Map["City"]["MapId"]
		nCellx = tZhongQiu2019Origin_Map["City"]["PosX"] 
		nCelly = tZhongQiu2019Origin_Map["City"]["PosY"] 
	end

	User_ChgMap(nMapId,nCellx,nCelly,0,nUserId)
end

--救助受伤的士兵
function ZhongQiu2019Origin_HelpSoldier(nNpcId)
	--时间判断
	if not Sys_ChkFullTime(tActivityTime["ZhongQiu2019Origin"]["ActivityTime"]) then
		return
	end

	-- 读条救助
	local nUserId = Get_UserId()
	local nSecs = tZhongQiu2019Origin_Cont["Secs"]
	local sContent = tZhongQiu2019Origin_Text["Help"]
	local nActionId = tZhongQiu2019Origin_Cont["ActionId"]
	local sFunc = "ZhongQiu2019Origin_Help</N>"..nNpcId
	User_SetExplore(nSecs,sContent,nActionId,sFunc,nil,nUserId)
end

--救助成功
function ZhongQiu2019Origin_Help(nNpcId,nUserId)
	local nEvent = tZhongQiu2019Origin_Stc["Help"]["Event"]
	local nType = tZhongQiu2019Origin_Stc["Help"]["Type"]
	local nHelp = Get_UserStatisticValue(nEvent, nType, nUserId)
	local nMaxHelp = tZhongQiu2019Origin_Stc["Help"]["LimitData"]

	local nMapId = tZhongQiu2019Origin_Map["MapId"]
	local nNpcPosX = Get_NpcPositionX(nNpcId)
	local nNpcPosY = Get_NpcPositionY(nNpcId)
	local nIndex = tZhongQiu2019Origin_Cont["Soldier"][nNpcId]

	if nNpcPosX == tZhongQiu2019Origin_Cont["Soldier"][nIndex]["Pos"][1]["X"] then 
		nNpcPosX = tZhongQiu2019Origin_Cont["Soldier"][nIndex]["Pos"][2]["X"]
		nNpcPosY = tZhongQiu2019Origin_Cont["Soldier"][nIndex]["Pos"][2]["Y"]
	else 
		nNpcPosX = tZhongQiu2019Origin_Cont["Soldier"][nIndex]["Pos"][1]["X"]
		nNpcPosY = tZhongQiu2019Origin_Cont["Soldier"][nIndex]["Pos"][1]["Y"]
	end 

	Npc_MoveNpcPos(nNpcId,nMapId,nNpcPosX,nNpcPosY)

	--判断领奖次数
	if nHelp >= nMaxHelp then 
		User_TalkChannel2005(tZhongQiu2019Origin_Text["AlearyGet"],nUserId)
		Sys_MsgBox(tZhongQiu2019Origin_Text["AlearyGet"],nil,nil,nUserId)
		return
	end

	-- 判断背包
	if not User_CheckLeftSpace(1,nUserId) then
		User_TalkChannel2005(tZhongQiu2019Origin_Text["NoSpace"],nUserId)
		Sys_MsgBox(tZhongQiu2019Origin_Text["NoSpace"],nil,nil,nUserId)
		return
	end

--给奖励
	if Task_AddStatistic(nEvent, nType, 1, 1, nUserId) then 
		Task_SetStcTimestamp(nEvent, nType, 0, nUserId)

		RewardTemplate_UseItemAndMsg(tZhongQiu2019Origin_Reward["Help"],nUserId)
		User_TalkChannel2005(tZhongQiu2019Origin_Text["HelpReward"],nUserId)
		Sys_MsgBox(tZhongQiu2019Origin_Text["HelpReward"],nil,nil,nUserId)
	end
end

--杀怪
function ZhongQiu2019Origin_KillMonster()
	--时间判断
	if not Sys_ChkFullTime(tActivityTime["ZhongQiu2019Origin"]["ActivityTime"]) then
		return
	end

	local nUserId = Get_UserId()
	--杀怪次数
	local nEvent1 = tZhongQiu2019Origin_Stc["Kill"]["Event"]
	local nType1 = tZhongQiu2019Origin_Stc["Kill"]["Type"]
	--杀怪50只领奖
	local nEvent2 = tZhongQiu2019Origin_Stc["Reward"]["Event"]
	local nType2 = tZhongQiu2019Origin_Stc["Reward"]["Type"]
	--杀怪百分一几率掉落
	local nEvent3 = tZhongQiu2019Origin_Stc["Drop"]["Event"]
	local nType3 = tZhongQiu2019Origin_Stc["Drop"]["Type"]

	--隔天重置杀怪数量
	if Task_StcInterval(nEvent1, nType1, 1, 4, nUserId) then
		Task_SetStatistic(nEvent1,nType1,0,1,nUserId)
		Task_SetStcTimestamp(nEvent1, nType1, 0, nUserId)
	end

	--隔天重置杀怪掉落奖励
	if Task_StcInterval(nEvent3, nType3, 1, 4, nUserId) then
		Task_SetStatistic(nEvent3,nType3,0,1,nUserId)
		Task_SetStcTimestamp(nEvent3, nType3, 0, nUserId)
	end

	local nDrop = Get_UserStatisticValue(nEvent3, nType3, nUserId)
	local nMaxDrop = tZhongQiu2019Origin_Stc["Drop"]["LimitData"]
	--概率掉落
	local nStartNum = tZhongQiu2019Origin_Cont["Drop"]["StartNum"]
	local nEndNum = tZhongQiu2019Origin_Cont["Drop"]["EndNum"]

	--掉落奖励限制12个
	if nDrop == nMaxDrop then 
		if Task_AddStatistic(nEvent3, nType3, 1, 1, nUserId) then
			Task_SetStcTimestamp(nEvent3, nType3, 0, nUserId)

			User_TalkChannel2005(tZhongQiu2019Origin_Text["MaxDrop"])
			Sys_MsgBox(tZhongQiu2019Origin_Text["MaxDrop"])
		end
	end
	--未达到掉落上限
	if nDrop < nMaxDrop then 
		--百分一几率掉落
		if Sys_Random(nStartNum,nEndNum) then 
		-- 判断背包
			if not User_CheckLeftSpace(1) then
				User_TalkChannel2005(tZhongQiu2019Origin_Text["NoSpace"])
				Sys_MsgBox(tZhongQiu2019Origin_Text["NoSpace"])
				return
			end

			--给奖励
			if Task_AddStatistic(nEvent3, nType3, 1, 1, nUserId) then
				Task_SetStcTimestamp(nEvent3, nType3, 0, nUserId)
				RewardTemplate_NewRandom(tZhongQiu2019Origin_Reward,"Monster", nUserId)
			end
		end
	end

	local nKill = Get_UserStatisticValue(nEvent1, nType1, nUserId) + 1
	local nMaxKill = tZhongQiu2019Origin_Stc["Kill"]["LimitData"]

	--杀怪超出50只不记录
	if nKill < nMaxKill then 
		Task_AddStatistic(nEvent1, nType1, 1, 1, nUserId)
		Task_SetStcTimestamp(nEvent1, nType1, 0, nUserId)

		local nResidue = nMaxKill - nKill

		if nKill % 5 == 0 then 
			User_TalkChannel2005(string.format(tZhongQiu2019Origin_Text["KillFive"],nKill,nResidue))
			-- Sys_MsgBox(string.format(tZhongQiu2019Origin_Text["KillFive"],nKill,nResidue))
		end 
	end

	if nKill == nMaxKill then 
		--判断今日是否已领取杀怪50只的奖励
		if not Task_StcInterval(nEvent2, nType2, 1, 4, nUserId)then 
			return
		end

		-- 判断背包
		local nSpace = RewardTemplate_GetRandomSpace(tZhongQiu2019Origin_Reward,"Kill")
		if not User_CheckLeftSpace(nSpace) then
			User_TalkChannel2005(tZhongQiu2019Origin_Text["NoSpace"])
			Sys_MsgBox(tZhongQiu2019Origin_Text["NoSpace"])
			return
		end

		if Task_AddStatistic(nEvent2, nType2, 1, 1, nUserId) then
			Task_SetStcTimestamp(nEvent2, nType2, 0, nUserId)

			RewardTemplate_NewRandom(tZhongQiu2019Origin_Reward,"Kill")
			User_TalkChannel2005(tZhongQiu2019Origin_Text["KillReward"])
			Sys_MsgBox(tZhongQiu2019Origin_Text["KillReward"])
		end
	end
end

--BOSS掉落
function ZhongQiu2019Origin_KillBOSS()
	--判断活动时间
	if not Sys_ChkFullTime(tActivityTime["ZhongQiu2019Origin"]["ActivityTime"]) then
		return
	end

	local nUserId = Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	local nMonsterId = tZhongQiu2019Origin_Cont["BOSS"]["MonsterId"]

	Monster_Death(nMonsterId,nMapId)

	--local nSysDyGlobId = tZhongQiu2019Origin_Cont["Global"]
	local nPosX = tZhongQiu2019Origin_Cont["BOSS"]["Pos"][1]["X"]
	local nPosY = tZhongQiu2019Origin_Cont["BOSS"]["Pos"][1]["Y"]

	local nItemId = tZhongQiu2019Origin_Cont["TouZi"]
	local nRandom = math.random(1,100)
	local nNum = 0

	if nRandom >=1 and nRandom <= 20 then 
		nNum = 12
	elseif nRandom >=21 and nRandom <= 60 then 
		nNum = 18
	elseif nRandom >=61 and nRandom <= 90 then 
		nNum = 24
	else
		nNum = 30
	end

	--BOSS掉落
	Map_DropMultiItems(nMapId,nItemId,nPosX,nPosY,6,6,nNum,60)
	User_TalkChannel2005(tZhongQiu2019Origin_Text["KillBoss"])
	Sys_MsgBox(tZhongQiu2019Origin_Text["KillBoss"])
end

--给士兵特产
function ZhongQiu2019Origin_XiangChou(nNpcId)
	local nUserId = Get_UserId()
	local nEvent1 = tZhongQiu2019Origin_Stc["Help"]["Event"]
	local nType1 = tZhongQiu2019Origin_Stc["Help"]["Type"]
	local nEvent2 = tZhongQiu2019Origin_Stc[nNpcId]["Event"]
	local nType2 = tZhongQiu2019Origin_Stc[nNpcId]["Type"]

	--隔天重置领奖掩码
	if Task_StcInterval(nEvent1, nType1, 1, 4, nUserId) then
		Task_SetStatistic(nEvent1,nType1,0,1,nUserId)
		Task_SetStcTimestamp(nEvent1, nType1, 0, nUserId)
	end

	local nHelp = Get_UserStatisticValue(nEvent1, nType1, nUserId)
	local nMaxHelp = tZhongQiu2019Origin_Stc["Help"]["LimitData"]
	--判断领奖次数
	if nHelp >= nMaxHelp then 
		User_TalkChannel2005(tZhongQiu2019Origin_Text["AlearyGet"])
		Sys_MsgBox(tZhongQiu2019Origin_Text["AlearyGet"])
		return
	end

	--当天已领取
	if not Task_StcInterval(nEvent2, nType2, 1, 4, nUserId) then
		User_TalkChannel2005(tZhongQiu2019Origin_Text["AlearyReward"])
		Sys_MsgBox(tZhongQiu2019Origin_Text["AlearyReward"])
		return
	end

	-- 判断背包
	if not User_CheckLeftSpace(1) then
		User_TalkChannel2005(tZhongQiu2019Origin_Text["NoSpace"])
		Sys_MsgBox(tZhongQiu2019Origin_Text["NoSpace"])
		return
	end

	--上交特产
	local nItemId = tZhongQiu2019Origin_Cont["Specialty"][nNpcId]
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then 
		Sys_SaveActionRewardLog(string.format(tZhongQiu2019Origin_Log["DelItem"],nItemId,1))

		LinkNpcGossipFunc_New(nNpcId,"2-1")

		Task_AddStatistic(nEvent1, nType1, 1, 1, nUserId)
		Task_SetStcTimestamp(nEvent1, nType1, 0, nUserId)
		Task_AddStatistic(nEvent2, nType2, 1, 1, nUserId)
		Task_SetStcTimestamp(nEvent2, nType2, 0, nUserId)

		RewardTemplate_UseItemAndMsg(tZhongQiu2019Origin_Reward["Help"])
		User_TalkChannel2005(tZhongQiu2019Origin_Text["XiangChou"])
		Sys_MsgBox(tZhongQiu2019Origin_Text["XiangChou"])
		return
	end

	User_TalkChannel2005(tZhongQiu2019Origin_Text["NoSpecialty"])
	Sys_MsgBox(tZhongQiu2019Origin_Text["NoSpecialty"])
end

--商人每隔30分钟换个位置；BOSS每半小时刷新
function ZhongQiu2019Origin_MoveSpecialty()
	local nNpcId = tZhongQiu2019Origin_Cont["Specialty"]["NpcId"]
	local nMapId = tZhongQiu2019Origin_Cont["Specialty"]["MapId"]
	--商人随机取一个点刷新
	local nPosNum = #tZhongQiu2019Origin_Cont["Specialty"]["Pos"]
	local nIndex = math.random(1,nPosNum)
	local nNpcPosX = tZhongQiu2019Origin_Cont["Specialty"]["Pos"][nIndex]["X"]
	local nNpcPosY = tZhongQiu2019Origin_Cont["Specialty"]["Pos"][nIndex]["Y"]

	--商人移动
	Npc_MoveNpcPos(nNpcId,nMapId,nNpcPosX,nNpcPosY)

	local nMonsterId = tZhongQiu2019Origin_Cont["BOSS"]["MonsterId"] 
	local nGenId = tZhongQiu2019Origin_Cont["BOSS"]["GenId"]

	--判断是不是有存在BOSS
	if Get_SysTempData(1,nMapId,nMonsterId) > 0 then
		return
	end

	--随机取一个点刷新
	-- local nPosNum2 = #tZhongQiu2019Origin_Cont["BOSS"]["Pos"]
	-- local nIndex2 = math.random(1,nPosNum2)
	-- local nPosX = tZhongQiu2019Origin_Cont["BOSS"]["Pos"][nIndex2]["X"]
	-- local nPosY = tZhongQiu2019Origin_Cont["BOSS"]["Pos"][nIndex2]["Y"]
	-- local nSysDyGlobId = tZhongQiu2019Origin_Cont["Global"]

	local nPosX = tZhongQiu2019Origin_Cont["BOSS"]["Pos"][1]["X"]
	local nPosY = tZhongQiu2019Origin_Cont["BOSS"]["Pos"][1]["Y"]
	if Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,nMonsterId) then
		--记录怪物坐标
		-- Sys_SetSynaGlobalData3(nSysDyGlobId,nPosX)
		-- Sys_SetSynaGlobalData4(nSysDyGlobId,nPosY)
		--全服公告
		Sys_SystemBroadcast(string.format(tZhongQiu2019Origin_Text["Broadcast1"], nPosX, nPosY))
	end
end

-- 清理全局表
-- function ZhongQiu2019Origin_GlobalClear()
	-- local nGlobal = tZhongQiu2019Origin_Cont["Global"]
	-- Sys_SetSynaGlobalData2(nGlobal,0)
-- end


---------------------------------------------NPC模板---------------------------------------------
--NPC 李定国
tNpcFace[5607] = 30
tNpcGossip[24813] = tNpcGossip[24813] or DefaultNpc:new{}
tNpcGossip[24813]["DialogueText"] = tZhongQiu2019Origin_Text[24813]
tNpcGossip[24813]["OptionHidden"] = 1

--活动时间前
tNpcGossip[24813]["Text1-1"] = {111,112,113,114,115,116,117,118,119}
tNpcGossip[24813]["tOption1-1"] = {111}
tNpcGossip[24813]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["ZhongQiu2019Origin"]["ActivityTime"])
end

--活动时间后
tNpcGossip[24813]["Text1-2"] = {111,112,131}
tNpcGossip[24813]["tOption1-2"] = {131}
tNpcGossip[24813]["ChkFunc1-2"] = function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["ZhongQiu2019Origin"]["ActivityTime"])
end

--等级不足
tNpcGossip[24813]["Text1-3"]={111,112,121,122,123,124,125,126,127,117,118,119}
tNpcGossip[24813]["tOption1-3"]={123}
tNpcGossip[24813]["ChkFunc1-3"] = function()
	-- 判断等级
	local nLevel = tZhongQiu2019Origin_Cont["Level"]
	local nMete = tZhongQiu2019Origin_Cont["Mete"]

	return not User_JudgeLevelAndMetempsychosis(nLevel,nMete)
end

--活动时间内
tNpcGossip[24813]["Text1-4"] = {111,112,121,122,123,124,125,126,127,117,119}
tNpcGossip[24813]["tOption1-4"] = {121,122}
tNpcGossip[24813]["OptionFunc121"] = "ZhongQiu2019Origin_GoKillMonster"



--NPC 受伤的士兵
tNpcGossip[24815] = tNpcGossip[24815] or DefaultNpc:new{}
tNpcGossip[24815]["DialogueText"] = tZhongQiu2019Origin_Text[24815]
tNpcGossip[24815]["OptionHidden"] = 1
tNpcGossip[24815]["Text1-1"] = {111}
tNpcGossip[24815]["tOption1-1"] = {111}
tNpcGossip[24815]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tActivityTime["ZhongQiu2019Origin"]["ActivityTime"])
end
tNpcGossip[24815]["OptionFunc111"] = "ZhongQiu2019Origin_HelpSoldier</N>24815"

tNpcGossip[24816] = tNpcGossip[24816] or DefaultNpc:new{}
tNpcGossip[24816]["DialogueText"] = tZhongQiu2019Origin_Text[24816]
tNpcGossip[24816]["OptionHidden"] = 1
tNpcGossip[24816]["Text1-1"] = {111}
tNpcGossip[24816]["tOption1-1"] = {111}
tNpcGossip[24816]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tActivityTime["ZhongQiu2019Origin"]["ActivityTime"])
end
tNpcGossip[24816]["OptionFunc111"] = "ZhongQiu2019Origin_HelpSoldier</N>24816"

tNpcGossip[24817] = tNpcGossip[24817] or DefaultNpc:new{}
tNpcGossip[24817]["DialogueText"] = tZhongQiu2019Origin_Text[24817]
tNpcGossip[24817]["OptionHidden"] = 1
tNpcGossip[24817]["Text1-1"] = {111}
tNpcGossip[24817]["tOption1-1"] = {111}
tNpcGossip[24817]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tActivityTime["ZhongQiu2019Origin"]["ActivityTime"])
end
tNpcGossip[24817]["OptionFunc111"] = "ZhongQiu2019Origin_HelpSoldier</N>24817"



--NPC 士兵阿雄
tNpcFace[5602] = 37
tNpcGossip[24818] = tNpcGossip[24818] or DefaultNpc:new{}
tNpcGossip[24818]["DialogueText"] = tZhongQiu2019Origin_Text[24818]
tNpcGossip[24818]["OptionHidden"] = 1
tNpcGossip[24818]["Text1-1"] = {111,112}
tNpcGossip[24818]["tOption1-1"] = {111,112}
tNpcGossip[24818]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tActivityTime["ZhongQiu2019Origin"]["ActivityTime"])
end
tNpcGossip[24818]["OptionFunc111"] = "ZhongQiu2019Origin_XiangChou</N>24818"

tNpcGossip[24818]["Text2-1"] = {211}
tNpcGossip[24818]["tOption2-1"] = {211}

--士兵阿月
tNpcFace[5603] = 107
tNpcGossip[24819] = tNpcGossip[24819] or DefaultNpc:new{}
tNpcGossip[24819]["DialogueText"] = tZhongQiu2019Origin_Text[24819]
tNpcGossip[24819]["OptionHidden"] = 1
tNpcGossip[24819]["Text1-1"] = {111,112}
tNpcGossip[24819]["tOption1-1"] = {111,112}
tNpcGossip[24819]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tActivityTime["ZhongQiu2019Origin"]["ActivityTime"])
end
tNpcGossip[24819]["OptionFunc111"] = "ZhongQiu2019Origin_XiangChou</N>24819"

tNpcGossip[24819]["Text2-1"] = {211}
tNpcGossip[24819]["tOption2-1"] = {211}

--士兵阿浩
tNpcFace[5604] = 31
tNpcGossip[24820] = tNpcGossip[24820] or DefaultNpc:new{}
tNpcGossip[24820]["DialogueText"] = tZhongQiu2019Origin_Text[24820]
tNpcGossip[24820]["OptionHidden"] = 1
tNpcGossip[24820]["Text1-1"] = {111,112}
tNpcGossip[24820]["tOption1-1"] = {111,112}
tNpcGossip[24820]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tActivityTime["ZhongQiu2019Origin"]["ActivityTime"])
end
tNpcGossip[24820]["OptionFunc111"] = "ZhongQiu2019Origin_XiangChou</N>24820"

tNpcGossip[24820]["Text2-1"] = {211}
tNpcGossip[24820]["tOption2-1"] = {211}

--士兵阿皮
tNpcFace[5605] = 59
tNpcGossip[24821] = tNpcGossip[24821] or DefaultNpc:new{}
tNpcGossip[24821]["DialogueText"] = tZhongQiu2019Origin_Text[24821]
tNpcGossip[24821]["OptionHidden"] = 1
tNpcGossip[24821]["Text1-1"] = {111,112}
tNpcGossip[24821]["tOption1-1"] = {111,112}
tNpcGossip[24821]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tActivityTime["ZhongQiu2019Origin"]["ActivityTime"])
end
tNpcGossip[24821]["OptionFunc111"] = "ZhongQiu2019Origin_XiangChou</N>24821"

tNpcGossip[24821]["Text2-1"] = {211}
tNpcGossip[24821]["tOption2-1"] = {211}

--士兵阿昌
tNpcFace[5606] = 84
tNpcGossip[24822] = tNpcGossip[24822] or DefaultNpc:new{}
tNpcGossip[24822]["DialogueText"] = tZhongQiu2019Origin_Text[24822]
tNpcGossip[24822]["OptionHidden"] = 1
tNpcGossip[24822]["Text1-1"] = {111,112}
tNpcGossip[24822]["tOption1-1"] = {111,112}
tNpcGossip[24822]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tActivityTime["ZhongQiu2019Origin"]["ActivityTime"])
end
tNpcGossip[24822]["OptionFunc111"] = "ZhongQiu2019Origin_XiangChou</N>24822"

tNpcGossip[24822]["Text2-1"] = {211}
tNpcGossip[24822]["tOption2-1"] = {211}


---------------------------------------------物品模板---------------------------------------------
--黄金叫天鸡腿
tItem[3313519] = tItem[3313519] or {}
tItem[3313519]["Function"]=function(nItemId,sItemName)
	--过期删除
	if not Sys_ChkFullTime(tActivityTime["ZhongQiu2019Origin"]["ActivityTime"]) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			Sys_SaveActionRewardLog(string.format(tZhongQiu2019Origin_Log["DelItem"],nItemId,1))
			User_TalkChannel2005(tZhongQiu2019Origin_Text["ItemOverTime"])
			Sys_MsgBox(tZhongQiu2019Origin_Text["ItemOverTime"])
		end
	end
end

--火鼠精肉
tItem[3313520] = tItem[3313519]
--狂沙利刃
tItem[3313521] = tItem[3313519]
--血怒蛇胆
tItem[3313522] = tItem[3313519]
--芦花酒
tItem[3313523] = tItem[3313519]


---------------------------------------------怪物模块---------------------------------------------
--侵略者
local tZhongQiu2019Origin_Monster = {}
	tZhongQiu2019Origin_Monster["ActivityTime"] = tActivityTime["ZhongQiu2019Origin"]["ActivityTime"]
	tZhongQiu2019Origin_Monster["Function"] = ZhongQiu2019Origin_KillMonster
	tZhongQiu2019Origin_Monster["MonsterId"] = {5699}
table.insert(tMonsterDrop_AreaLoad,tZhongQiu2019Origin_Monster)

--BOSS 鞑虏王
local tZhongQiu2019Origin_BOSS = {}
	tZhongQiu2019Origin_BOSS["ActivityTime"] = tActivityTime["ZhongQiu2019Origin"]["ActivityTime"]
	tZhongQiu2019Origin_BOSS["Function"] = ZhongQiu2019Origin_KillBOSS
	tZhongQiu2019Origin_BOSS["MonsterId"] = {1152}
table.insert(tMonsterDrop_AreaLoad,tZhongQiu2019Origin_BOSS)

--激情服
-- local tZhongQiu2019Origin_Monster_NoGift = {}
	-- tZhongQiu2019Origin_Monster_NoGift["ActivityTime"] = tActivityTime["ZhongQiu2019Origin"]["ActivityTime"]
	-- tZhongQiu2019Origin_Monster_NoGift["Function"] = ZhongQiu2019Origin_KillMonster
	-- tZhongQiu2019Origin_Monster_NoGift["MonsterId"] = {5699,5700}
-- table.insert(tMonsterDrop_AreaLoad_NoGift,tZhongQiu2019Origin_Monster_NoGift)


---------------------------------------------陷阱部分---------------------------------------------
tTrap[182] = tTrap[182] or {}
tTrap[182]["Function"] = function(nTrapId,nTrapType)
	local nUserId = Get_UserId()
	Sys_MsgBox(tZhongQiu2019Origin_Text["ChgMap"],"ZhongQiu2019Origin_ChgMap",nil,nUserId)
end


---------------------------------------------时间自检---------------------------------------------
local tZhongQiu2019Origin_Time = {}
	-- 每30分钟 刷新商人和BOSS
	tZhongQiu2019Origin_Time[1] = {}
	tZhongQiu2019Origin_Time[1]["ActivityTime"] = tActivityTime["ZhongQiu2019Origin"]["ActivityTime"]
	tZhongQiu2019Origin_Time[1]["Type"] = 2
	tZhongQiu2019Origin_Time[1]["TimeType"] = 5
	tZhongQiu2019Origin_Time[1]["Multiple"] = {}
	tZhongQiu2019Origin_Time[1]["Multiple"][1]  = "59 59"
	tZhongQiu2019Origin_Time[1]["Multiple"][2]  = "29 29"
	tZhongQiu2019Origin_Time[1]["Func"] = ZhongQiu2019Origin_MoveSpecialty
	table.insert(tSystemTime_InitialData,tZhongQiu2019Origin_Time[1])

	-- 每天清除限量
	-- tZhongQiu2019Origin_Time[2] = {}
	-- tZhongQiu2019Origin_Time[2]["ActivityTime"] = tActivityTime["ZhongQiu2019Origin"]["ActivityTime"]
	-- tZhongQiu2019Origin_Time[2]["Type"] = 2
	-- tZhongQiu2019Origin_Time[2]["TimeType"] = 4
	-- tZhongQiu2019Origin_Time[2]["Time"] = "00:02 00:03"
	-- tZhongQiu2019Origin_Time[2]["Func"] = ZhongQiu2019Origin_GlobalClear
	-- table.insert(tSystemTime_InitialData,tZhongQiu2019Origin_Time[2])

-- 每天清除动态码
tGlobalData_Info[53637] = {}
tGlobalData_Info[53637]["Time"] = {}
tGlobalData_Info[53637]["Time"]["ActivityTime"] = tActivityTime["ZhongQiu2019Origin"]["ActivityTime"]
tGlobalData_Info[53637]["Time"]["ClearTime"] = "00:00 00:03"
tGlobalData_Info[53637]["Rest"] = {}
tGlobalData_Info[53637]["Rest"]["GlobalId"] = {53637}
tGlobalData_Info[53637]["Rest"]["Pos"] = {2}

