-----------------------------------------------------------------------------------------------------
--Name:		151014[简体征服][活动脚本]天下第一活动制作物品制作
--Purpose:		跨服天下第一活动物品制作
--Creator: 	黄啸
--Created:		2019/04/28
------------------------------------------------------------------------------------------------------
-- 命名前缀
--CrossServerBestHeroPackage_

--logId:12001395
------------------------------------------------------------------------------------------------------
-- #任务需求 
-- #【简体征服】跨服天下第一活动物品制作


-----------------------------------------常量表配置-----------------------------------------------
--活动时间
local tCrossServerBestHeroPackage_Cont = {}
tCrossServerBestHeroPackage_Cont["BeforeActivity"] = tActivityTime["CrossServerBestHeroPackage"]["BeActivityTime"]
tCrossServerBestHeroPackage_Cont["NowActivity"] = tActivityTime["CrossServerBestHeroPackage"]["ActivityTime"]

local tCrossServerBestHeroPackage_Stc = {}
	tCrossServerBestHeroPackage_Stc["EventType"] = 196
	tCrossServerBestHeroPackage_Stc["DataType"] = 00
	tCrossServerBestHeroPackage_Stc["Data"] = {}
	tCrossServerBestHeroPackage_Stc["Data"][3600092] = 100
	tCrossServerBestHeroPackage_Stc["Data"][3600093] = 85
	tCrossServerBestHeroPackage_Stc["Data"][3600094] = 70
	tCrossServerBestHeroPackage_Stc["Data"][3600095] = 50
	tCrossServerBestHeroPackage_Stc["Data"][3600090] = 10


--增益符状态配置
local tCrossServerBestHeroPackage_Item = {}
	tCrossServerBestHeroPackage_Item["MapId"] = {}
	tCrossServerBestHeroPackage_Item["MapId"][1] = 10611
	tCrossServerBestHeroPackage_Item["MapId"][2] = 10612
	tCrossServerBestHeroPackage_Item["MapId"][3] = 10613
	tCrossServerBestHeroPackage_Item["MapId"][4] = 10614
	tCrossServerBestHeroPackage_Item["MapId"][5] = 10615
	tCrossServerBestHeroPackage_Item["MapId"][6] = 10616
	tCrossServerBestHeroPackage_Item["MapId"][7] = 10617
	tCrossServerBestHeroPackage_Item["MapId"][8] = 10618
	tCrossServerBestHeroPackage_Item["MapId"][9] = 10619
	tCrossServerBestHeroPackage_Item["MapId"][10] = 10620
	tCrossServerBestHeroPackage_Item["MiniBuff"] = {}
	tCrossServerBestHeroPackage_Item["MiniBuff"][1] = 143	-- 最终物理伤害加成 +20000
	tCrossServerBestHeroPackage_Item["MiniBuff"][2] = 144	-- 最终法术伤害加成 +30000
	tCrossServerBestHeroPackage_Item["MiniBuff"][3] = 141	-- 最终物理伤害减免 +10000
	tCrossServerBestHeroPackage_Item["MiniBuff"][4] = 142	-- 最终法术伤害减免 +10000
	tCrossServerBestHeroPackage_Item["MiniBuff"][5] = 133	-- 物理暴击 +50%
	tCrossServerBestHeroPackage_Item["MiniBuff"][6] = 134	-- 法术暴击 +80%
	tCrossServerBestHeroPackage_Item["MiniBuff"][7] = 138	-- 增加生命值上限
	tCrossServerBestHeroPackage_Item["MiniBuff"][143] = 20000
	tCrossServerBestHeroPackage_Item["MiniBuff"][144] = 30000
	tCrossServerBestHeroPackage_Item["MiniBuff"][141] = 10000
	tCrossServerBestHeroPackage_Item["MiniBuff"][142] = 10000
	tCrossServerBestHeroPackage_Item["MiniBuff"][133] = 50
	tCrossServerBestHeroPackage_Item["MiniBuff"][134] = 80
	tCrossServerBestHeroPackage_Item["MiniBuff"][138] = 20000
	tCrossServerBestHeroPackage_Item["Secs"] = 300
	tCrossServerBestHeroPackage_Item["Times"] = 1
	tCrossServerBestHeroPackage_Item["RemainTime"] = 300
	tCrossServerBestHeroPackage_Item["EndTime"] = 1
	tCrossServerBestHeroPackage_Item["Recordable"] = 1
	tCrossServerBestHeroPackage_Item["Self"] = "self"
	tCrossServerBestHeroPackage_Item["Effect"] = "zf2-e127"	
	tCrossServerBestHeroPackage_Item["Log"] = "0,0,3600079,1,12001395,2,143[144][141][142][133][134][138],20000[30000][10000][10000][50][80][20000]"
	tCrossServerBestHeroPackage_Item["TransLog"] = "0,0,%d,%d,12001395,0,0"
	

local tCrossServerBestHeroPackage_Award = {}
tCrossServerBestHeroPackage_Award[3600090] = {}
-- ===豪侠宝石
tCrossServerBestHeroPackage_Award[3600090]["ItemChanceSum"] = 10000
tCrossServerBestHeroPackage_Award[3600090]["LogId"] = 12001395

-- 气力值 - 17.00%
tCrossServerBestHeroPackage_Award[3600090][1] = {}
tCrossServerBestHeroPackage_Award[3600090][1]["RandomItemChanceType"] = 2
tCrossServerBestHeroPackage_Award[3600090][1]["ItemChance"] = 1700
tCrossServerBestHeroPackage_Award[3600090][1]["RewardStrengthValue"] = {}
tCrossServerBestHeroPackage_Award[3600090][1]["RewardStrengthValue"]["Value"] = 100 -- 气力值
tCrossServerBestHeroPackage_Award[3600090][1]["RewardEffect"] = {}
tCrossServerBestHeroPackage_Award[3600090][1]["RewardEffect"]["SzObj"] = "self"
tCrossServerBestHeroPackage_Award[3600090][1]["RewardEffect"]["Effect"] = "angelwing"
-- 气力值 - 5.00%
tCrossServerBestHeroPackage_Award[3600090][2] = {}
tCrossServerBestHeroPackage_Award[3600090][2]["RandomItemChanceType"] = 2
tCrossServerBestHeroPackage_Award[3600090][2]["ItemChance"] = 500
tCrossServerBestHeroPackage_Award[3600090][2]["RewardStrengthValue"] = {}
tCrossServerBestHeroPackage_Award[3600090][2]["RewardStrengthValue"]["Value"] = 300 -- 气力值
tCrossServerBestHeroPackage_Award[3600090][2]["RewardEffect"] = {}
tCrossServerBestHeroPackage_Award[3600090][2]["RewardEffect"]["SzObj"] = "self"
tCrossServerBestHeroPackage_Award[3600090][2]["RewardEffect"]["Effect"] = "angelwing"
-- 赤炼石+2 - 17.00%
tCrossServerBestHeroPackage_Award[3600090][3] = {}
tCrossServerBestHeroPackage_Award[3600090][3]["RandomItemChanceType"] = 2
tCrossServerBestHeroPackage_Award[3600090][3]["ItemChance"] = 1700
tCrossServerBestHeroPackage_Award[3600090][3]["RewardItem"] = {}
tCrossServerBestHeroPackage_Award[3600090][3]["RewardItem"][1] = {}
tCrossServerBestHeroPackage_Award[3600090][3]["RewardItem"][1]["Id"] = 730002 -- 【库】+2赤炼石[属性:0]【表格】赤炼石+2
tCrossServerBestHeroPackage_Award[3600090][3]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的+2赤炼石(赠)*1
tCrossServerBestHeroPackage_Award[3600090][3]["RewardEffect"] = {}
tCrossServerBestHeroPackage_Award[3600090][3]["RewardEffect"]["SzObj"] = "self"
tCrossServerBestHeroPackage_Award[3600090][3]["RewardEffect"]["Effect"] = "angelwing"

-- 赤炼石+3 - 5.00%
tCrossServerBestHeroPackage_Award[3600090][4] = {}
tCrossServerBestHeroPackage_Award[3600090][4]["RandomItemChanceType"] = 2
tCrossServerBestHeroPackage_Award[3600090][4]["ItemChance"] = 500
tCrossServerBestHeroPackage_Award[3600090][4]["RewardItem"] = {}
tCrossServerBestHeroPackage_Award[3600090][4]["RewardItem"][1] = {}
tCrossServerBestHeroPackage_Award[3600090][4]["RewardItem"][1]["Id"] = 730003 -- 【库】+3赤炼石[属性:0]【表格】赤炼石+3
tCrossServerBestHeroPackage_Award[3600090][4]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的+3赤炼石(赠)*1
tCrossServerBestHeroPackage_Award[3600090][4]["RewardEffect"] = {}
tCrossServerBestHeroPackage_Award[3600090][4]["RewardEffect"]["SzObj"] = "self"
tCrossServerBestHeroPackage_Award[3600090][4]["RewardEffect"]["Effect"] = "angelwing"

-- 微光星陨石 - 17.00%
tCrossServerBestHeroPackage_Award[3600090][5] = {}
tCrossServerBestHeroPackage_Award[3600090][5]["RandomItemChanceType"] = 2
tCrossServerBestHeroPackage_Award[3600090][5]["ItemChance"] = 1700
tCrossServerBestHeroPackage_Award[3600090][5]["RewardItem"] = {}
tCrossServerBestHeroPackage_Award[3600090][5]["RewardItem"][1] = {}
tCrossServerBestHeroPackage_Award[3600090][5]["RewardItem"][1]["Id"] = 3009000 -- 【库】微光星陨石[属性:9]【表格】微光星陨石
tCrossServerBestHeroPackage_Award[3600090][5]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的微光星陨石*5
tCrossServerBestHeroPackage_Award[3600090][5]["RewardEffect"] = {}
tCrossServerBestHeroPackage_Award[3600090][5]["RewardEffect"]["SzObj"] = "self"
tCrossServerBestHeroPackage_Award[3600090][5]["RewardEffect"]["Effect"] = "angelwing"

-- 明亮星陨石 - 5.00%
tCrossServerBestHeroPackage_Award[3600090][6] = {}
tCrossServerBestHeroPackage_Award[3600090][6]["RandomItemChanceType"] = 2
tCrossServerBestHeroPackage_Award[3600090][6]["ItemChance"] = 500
tCrossServerBestHeroPackage_Award[3600090][6]["RewardItem"] = {}
tCrossServerBestHeroPackage_Award[3600090][6]["RewardItem"][1] = {}
tCrossServerBestHeroPackage_Award[3600090][6]["RewardItem"][1]["Id"] = 3009001 -- 【库】明亮星陨石[属性:9]【表格】明亮星陨石
tCrossServerBestHeroPackage_Award[3600090][6]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
tCrossServerBestHeroPackage_Award[3600090][6]["RewardEffect"] = {}
tCrossServerBestHeroPackage_Award[3600090][6]["RewardEffect"]["SzObj"] = "self"
tCrossServerBestHeroPackage_Award[3600090][6]["RewardEffect"]["Effect"] = "angelwing"

-- 万能神纹精粹 - 17.00%
tCrossServerBestHeroPackage_Award[3600090][7] = {}
tCrossServerBestHeroPackage_Award[3600090][7]["RandomItemChanceType"] = 2
tCrossServerBestHeroPackage_Award[3600090][7]["ItemChance"] = 1700
tCrossServerBestHeroPackage_Award[3600090][7]["RewardItem"] = {}
tCrossServerBestHeroPackage_Award[3600090][7]["RewardItem"][1] = {}
tCrossServerBestHeroPackage_Award[3600090][7]["RewardItem"][1]["Id"] = 4060001 -- 【库】万能神纹精粹[属性:9]【表格】万能神纹精粹
tCrossServerBestHeroPackage_Award[3600090][7]["RewardItem"][1]["Attr"] = "0 5" -- 万能神纹精粹*5
tCrossServerBestHeroPackage_Award[3600090][7]["RewardEffect"] = {}
tCrossServerBestHeroPackage_Award[3600090][7]["RewardEffect"]["SzObj"] = "self"
tCrossServerBestHeroPackage_Award[3600090][7]["RewardEffect"]["Effect"] = "angelwing"

-- 万能神纹精粹 - 5.00%
tCrossServerBestHeroPackage_Award[3600090][8] = {}
tCrossServerBestHeroPackage_Award[3600090][8]["RandomItemChanceType"] = 2
tCrossServerBestHeroPackage_Award[3600090][8]["ItemChance"] = 500
tCrossServerBestHeroPackage_Award[3600090][8]["RewardItem"] = {}
tCrossServerBestHeroPackage_Award[3600090][8]["RewardItem"][1] = {}
tCrossServerBestHeroPackage_Award[3600090][8]["RewardItem"][1]["Id"] = 4060001 -- 【库】万能神纹精粹[属性:9]【表格】万能神纹精粹
tCrossServerBestHeroPackage_Award[3600090][8]["RewardItem"][1]["Attr"] = "0 10" -- 万能神纹精粹*10
tCrossServerBestHeroPackage_Award[3600090][8]["RewardEffect"] = {}
tCrossServerBestHeroPackage_Award[3600090][8]["RewardEffect"]["SzObj"] = "self"
tCrossServerBestHeroPackage_Award[3600090][8]["RewardEffect"]["Effect"] = "angelwing"

-- 人参果 - 11.00%
tCrossServerBestHeroPackage_Award[3600090][9] = {}
tCrossServerBestHeroPackage_Award[3600090][9]["RandomItemChanceType"] = 2
tCrossServerBestHeroPackage_Award[3600090][9]["ItemChance"] = 1100
tCrossServerBestHeroPackage_Award[3600090][9]["RewardItem"] = {}
tCrossServerBestHeroPackage_Award[3600090][9]["RewardItem"][1] = {}
tCrossServerBestHeroPackage_Award[3600090][9]["RewardItem"][1]["Id"] = 3009100 -- 【库】人参果[属性:9]【表格】人参果
tCrossServerBestHeroPackage_Award[3600090][9]["RewardItem"][1]["Attr"] = "0 5" -- 人参果*5
tCrossServerBestHeroPackage_Award[3600090][9]["RewardEffect"] = {}
tCrossServerBestHeroPackage_Award[3600090][9]["RewardEffect"]["SzObj"] = "self"
tCrossServerBestHeroPackage_Award[3600090][9]["RewardEffect"]["Effect"] = "angelwing"

-- 人参果 - 1.00%
tCrossServerBestHeroPackage_Award[3600090][10] = {}
tCrossServerBestHeroPackage_Award[3600090][10]["RandomItemChanceType"] = 2
tCrossServerBestHeroPackage_Award[3600090][10]["ItemChance"] = 100
tCrossServerBestHeroPackage_Award[3600090][10]["RewardItem"] = {}
tCrossServerBestHeroPackage_Award[3600090][10]["RewardItem"][1] = {}
tCrossServerBestHeroPackage_Award[3600090][10]["RewardItem"][1]["Id"] = 3009100 -- 【库】人参果[属性:9]【表格】人参果
tCrossServerBestHeroPackage_Award[3600090][10]["RewardItem"][1]["Attr"] = "0 10" -- 人参果*10
tCrossServerBestHeroPackage_Award[3600090][10]["RewardEffect"] = {}
tCrossServerBestHeroPackage_Award[3600090][10]["RewardEffect"]["SzObj"] = "self"
tCrossServerBestHeroPackage_Award[3600090][10]["RewardEffect"]["Effect"] = "angelwing"

-- ===神速冠军包
tCrossServerBestHeroPackage_Award[3600092] = {}
tCrossServerBestHeroPackage_Award[3600092]["LogId"] = 12001395
tCrossServerBestHeroPackage_Award[3600092]["DeleteItem"] = {}
tCrossServerBestHeroPackage_Award[3600092]["DeleteItem"][1] = {}
tCrossServerBestHeroPackage_Award[3600092]["DeleteItem"][1]["Id"] = 3600092 -- 神速冠军包
tCrossServerBestHeroPackage_Award[3600092]["RewardEffect"] = {}
tCrossServerBestHeroPackage_Award[3600092]["RewardEffect"]["SzObj"] = "self"
tCrossServerBestHeroPackage_Award[3600092]["RewardEffect"]["Effect"] = "angelwing"
tCrossServerBestHeroPackage_Award[3600092]["RewardTitle"] = {}
tCrossServerBestHeroPackage_Award[3600092]["RewardTitle"]["TitleType"] = 2125   --3天时效天下第一称号
tCrossServerBestHeroPackage_Award[3600092]["RewardTitle"]["TitleId"] = 2125
tCrossServerBestHeroPackage_Award[3600092]["RewardTitle"]["SaveTime"] = 4320
tCrossServerBestHeroPackage_Award[3600092]["RewardItem"] = {}
tCrossServerBestHeroPackage_Award[3600092]["RewardItem"][1] = {}
tCrossServerBestHeroPackage_Award[3600092]["RewardItem"][1]["Id"] = 3009100 -- 【库】人参果[属性:9]【表格】人参果
tCrossServerBestHeroPackage_Award[3600092]["RewardItem"][1]["Attr"] = "0 30" -- 人参果*30
tCrossServerBestHeroPackage_Award[3600092]["RewardItem"][2] = {}
tCrossServerBestHeroPackage_Award[3600092]["RewardItem"][2]["Id"] = 3305403 -- 【库】2000气力值精装包[属性:0]【表格】2000气力值
tCrossServerBestHeroPackage_Award[3600092]["RewardItem"][2]["Attr"] = "0 1 3" -- 2000气力值精装包*1
tCrossServerBestHeroPackage_Award[3600092]["RewardItem"][3] = {}
tCrossServerBestHeroPackage_Award[3600092]["RewardItem"][3]["Id"] = 4200005 -- 【库】5阶灵珠[属性:72]【表格】5阶灵珠
tCrossServerBestHeroPackage_Award[3600092]["RewardItem"][3]["Attr"] = "0 1" -- 5阶灵珠*1
tCrossServerBestHeroPackage_Award[3600092]["RewardItem"][3]["PreciousType"] = 307
tCrossServerBestHeroPackage_Award[3600092]["LogFile"] = "Pearl"


-- ===神速豪杰包
tCrossServerBestHeroPackage_Award[3600093] = {}
tCrossServerBestHeroPackage_Award[3600093]["LogId"] = 12001395
tCrossServerBestHeroPackage_Award[3600093]["DeleteItem"] = {}
tCrossServerBestHeroPackage_Award[3600093]["DeleteItem"][1] = {}
tCrossServerBestHeroPackage_Award[3600093]["DeleteItem"][1]["Id"] = 3600093 -- 神速豪杰包
tCrossServerBestHeroPackage_Award[3600093]["RewardEffect"] = {}
tCrossServerBestHeroPackage_Award[3600093]["RewardEffect"]["SzObj"] = "self"
tCrossServerBestHeroPackage_Award[3600093]["RewardEffect"]["Effect"] = "angelwing"
tCrossServerBestHeroPackage_Award[3600093]["RewardItem"] = {}
tCrossServerBestHeroPackage_Award[3600093]["RewardItem"][1] = {}
tCrossServerBestHeroPackage_Award[3600093]["RewardItem"][1]["Id"] = 3009100 -- 【库】人参果[属性:9]【表格】人参果
tCrossServerBestHeroPackage_Award[3600093]["RewardItem"][1]["Attr"] = "0 25" -- 人参果*25
tCrossServerBestHeroPackage_Award[3600093]["RewardItem"][2] = {}
tCrossServerBestHeroPackage_Award[3600093]["RewardItem"][2]["Id"] = 3008195 -- 【库】1500气力值包[属性:9]【表格】1500气力值
tCrossServerBestHeroPackage_Award[3600093]["RewardItem"][2]["Attr"] = "0 1" -- 1500气力值包*1
tCrossServerBestHeroPackage_Award[3600093]["RewardItem"][3] = {}
tCrossServerBestHeroPackage_Award[3600093]["RewardItem"][3]["Id"] = 4200004 -- 【库】4阶灵珠[属性:72]【表格】4阶灵珠
tCrossServerBestHeroPackage_Award[3600093]["RewardItem"][3]["Attr"] = "0 1" -- 4阶灵珠*1
tCrossServerBestHeroPackage_Award[3600093]["RewardItem"][3]["PreciousType"] = 307
tCrossServerBestHeroPackage_Award[3600093]["LogFile"] = "Pearl"


-- ===神速精英包
tCrossServerBestHeroPackage_Award[3600094] = {}
tCrossServerBestHeroPackage_Award[3600094]["LogId"] = 12001395
tCrossServerBestHeroPackage_Award[3600094]["DeleteItem"] = {}
tCrossServerBestHeroPackage_Award[3600094]["DeleteItem"][1] = {}
tCrossServerBestHeroPackage_Award[3600094]["DeleteItem"][1]["Id"] = 3600094 -- 神速冠军包
tCrossServerBestHeroPackage_Award[3600094]["RewardEffect"] = {}
tCrossServerBestHeroPackage_Award[3600094]["RewardEffect"]["SzObj"] = "self"
tCrossServerBestHeroPackage_Award[3600094]["RewardEffect"]["Effect"] = "angelwing"
tCrossServerBestHeroPackage_Award[3600094]["RewardItem"] = {}
tCrossServerBestHeroPackage_Award[3600094]["RewardItem"][1] = {}
tCrossServerBestHeroPackage_Award[3600094]["RewardItem"][1]["Id"] = 3009100 -- 【库】人参果[属性:9]【表格】人参果
tCrossServerBestHeroPackage_Award[3600094]["RewardItem"][1]["Attr"] = "0 20" -- 人参果*20
tCrossServerBestHeroPackage_Award[3600094]["RewardItem"][2] = {}
tCrossServerBestHeroPackage_Award[3600094]["RewardItem"][2]["Id"] = 3320466 -- 【库】1000气力值精装包[属性:11]【表格】1000气力值
tCrossServerBestHeroPackage_Award[3600094]["RewardItem"][2]["Attr"] = "0 1" -- 1000气力值精装包*1
tCrossServerBestHeroPackage_Award[3600094]["RewardItem"][3] = {}
tCrossServerBestHeroPackage_Award[3600094]["RewardItem"][3]["Id"] = 4200003 -- 【库】3阶灵珠[属性:72]【表格】3阶灵珠
tCrossServerBestHeroPackage_Award[3600094]["RewardItem"][3]["Attr"] = "0 1" -- 3阶灵珠*1
tCrossServerBestHeroPackage_Award[3600094]["RewardItem"][3]["PreciousType"] = 307
tCrossServerBestHeroPackage_Award[3600094]["LogFile"] = "Pearl"



-- ===神速十强包
tCrossServerBestHeroPackage_Award[3600095] = {}
tCrossServerBestHeroPackage_Award[3600095]["LogId"] = 12001395
tCrossServerBestHeroPackage_Award[3600095]["DeleteItem"] = {}
tCrossServerBestHeroPackage_Award[3600095]["DeleteItem"][1] = {}
tCrossServerBestHeroPackage_Award[3600095]["DeleteItem"][1]["Id"] = 3600095 -- 神速十强包
tCrossServerBestHeroPackage_Award[3600095]["RewardEffect"] = {}
tCrossServerBestHeroPackage_Award[3600095]["RewardEffect"]["SzObj"] = "self"
tCrossServerBestHeroPackage_Award[3600095]["RewardEffect"]["Effect"] = "angelwing"
tCrossServerBestHeroPackage_Award[3600095]["RewardItem"] = {}
tCrossServerBestHeroPackage_Award[3600095]["RewardItem"][1] = {}
tCrossServerBestHeroPackage_Award[3600095]["RewardItem"][1]["Id"] = 3009100 -- 【库】人参果[属性:9]【表格】人参果
tCrossServerBestHeroPackage_Award[3600095]["RewardItem"][1]["Attr"] = "0 15" -- 人参果*15
tCrossServerBestHeroPackage_Award[3600095]["RewardItem"][2] = {}
tCrossServerBestHeroPackage_Award[3600095]["RewardItem"][2]["Id"] = 3320466 -- 【库】1000气力值精装包[属性:11]【表格】1000气力值
tCrossServerBestHeroPackage_Award[3600095]["RewardItem"][2]["Attr"] = "0 1" -- 1000气力值精装包*1
tCrossServerBestHeroPackage_Award[3600095]["RewardItem"][3] = {}
tCrossServerBestHeroPackage_Award[3600095]["RewardItem"][3]["Id"] = 4200002 -- 【库】2阶灵珠[属性:72]【表格】2阶灵珠
tCrossServerBestHeroPackage_Award[3600095]["RewardItem"][3]["Attr"] = "0 1" -- 2阶灵珠*1
tCrossServerBestHeroPackage_Award[3600095]["RewardItem"][3]["PreciousType"] = 307
tCrossServerBestHeroPackage_Award[3600095]["LogFile"] = "Pearl"


--豪侠宝石碎片合成
tCrossServerBestHeroPackage_Award[3600091] = {}
tCrossServerBestHeroPackage_Award[3600091]["LogId"] = 12001395
tCrossServerBestHeroPackage_Award[3600091]["RewardEffect"] = {}
tCrossServerBestHeroPackage_Award[3600091]["RewardEffect"]["SzObj"] = "self"
tCrossServerBestHeroPackage_Award[3600091]["RewardEffect"]["Effect"] = "angelwing"
tCrossServerBestHeroPackage_Award[3600091]["RewardItem"] = {}
tCrossServerBestHeroPackage_Award[3600091]["RewardItem"][1] = {}
tCrossServerBestHeroPackage_Award[3600091]["RewardItem"][1]["Id"] = 3600090 -- 豪侠宝石
tCrossServerBestHeroPackage_Award[3600091]["RewardItem"][1]["Attr"] = "0 1" -- 豪侠宝石*1
tCrossServerBestHeroPackage_Award[3600091]["DeleteItem"] = {}
tCrossServerBestHeroPackage_Award[3600091]["DeleteItem"][1] = {}
tCrossServerBestHeroPackage_Award[3600091]["DeleteItem"][1]["Id"] = 3600091 -- 豪侠宝石碎片
tCrossServerBestHeroPackage_Award[3600091]["DeleteItem"][1]["ItemNum"] = 5 -- 豪侠宝石碎片*5

--怪物新增5个掉落物品
tCrossServerBestHeroPackage_Award[3600096] = {}
tCrossServerBestHeroPackage_Award[3600096]["LogId"] = 12001395
tCrossServerBestHeroPackage_Award[3600096]["LogFile"] = "Pearl"
tCrossServerBestHeroPackage_Award[3600096]["RewardEffect"] = {}
tCrossServerBestHeroPackage_Award[3600096]["RewardEffect"]["SzObj"] = "self"
tCrossServerBestHeroPackage_Award[3600096]["RewardEffect"]["Effect"] = "angelwing"
tCrossServerBestHeroPackage_Award[3600096]["RewardItem"] = {}
tCrossServerBestHeroPackage_Award[3600096]["RewardItem"][1] = {}
tCrossServerBestHeroPackage_Award[3600096]["RewardItem"][1]["Id"] = 4200002 -- 2阶灵珠
tCrossServerBestHeroPackage_Award[3600096]["RewardItem"][1]["Attr"] = "0 1" -- 2阶灵珠*1
tCrossServerBestHeroPackage_Award[3600096]["RewardItem"][1]["PreciousType"] = 307
tCrossServerBestHeroPackage_Award[3600096]["DeleteItem"] = {}
tCrossServerBestHeroPackage_Award[3600096]["DeleteItem"][1] = {}
tCrossServerBestHeroPackage_Award[3600096]["DeleteItem"][1]["Id"] = 3600096 -- 2阶灵珠礼包
tCrossServerBestHeroPackage_Award[3600096]["DeleteItem"][1]["ItemNum"] = 1 -- 2阶灵珠礼包*1

tCrossServerBestHeroPackage_Award[3600097] = {}
tCrossServerBestHeroPackage_Award[3600097]["LogId"] = 12001395
tCrossServerBestHeroPackage_Award[3600097]["LogFile"] = "Pearl"
tCrossServerBestHeroPackage_Award[3600097]["RewardEffect"] = {}
tCrossServerBestHeroPackage_Award[3600097]["RewardEffect"]["SzObj"] = "self"
tCrossServerBestHeroPackage_Award[3600097]["RewardEffect"]["Effect"] = "angelwing"
tCrossServerBestHeroPackage_Award[3600097]["RewardItem"] = {}
tCrossServerBestHeroPackage_Award[3600097]["RewardItem"][1] = {}
tCrossServerBestHeroPackage_Award[3600097]["RewardItem"][1]["Id"] = 4200003 -- 3阶灵珠
tCrossServerBestHeroPackage_Award[3600097]["RewardItem"][1]["Attr"] = "0 1" -- 3阶灵珠*1
tCrossServerBestHeroPackage_Award[3600097]["RewardItem"][1]["PreciousType"] = 307
tCrossServerBestHeroPackage_Award[3600097]["DeleteItem"] = {}
tCrossServerBestHeroPackage_Award[3600097]["DeleteItem"][1] = {}
tCrossServerBestHeroPackage_Award[3600097]["DeleteItem"][1]["Id"] = 3600097 -- 3阶灵珠礼包
tCrossServerBestHeroPackage_Award[3600097]["DeleteItem"][1]["ItemNum"] = 1 -- 3阶灵珠礼包*1

tCrossServerBestHeroPackage_Award[3600098] = {}
tCrossServerBestHeroPackage_Award[3600098]["LogId"] = 12001395
tCrossServerBestHeroPackage_Award[3600098]["LogFile"] = "Pearl"
tCrossServerBestHeroPackage_Award[3600098]["RewardEffect"] = {}
tCrossServerBestHeroPackage_Award[3600098]["RewardEffect"]["SzObj"] = "self"
tCrossServerBestHeroPackage_Award[3600098]["RewardEffect"]["Effect"] = "angelwing"
tCrossServerBestHeroPackage_Award[3600098]["RewardItem"] = {}
tCrossServerBestHeroPackage_Award[3600098]["RewardItem"][1] = {}
tCrossServerBestHeroPackage_Award[3600098]["RewardItem"][1]["Id"] = 4200004 -- 4阶灵珠
tCrossServerBestHeroPackage_Award[3600098]["RewardItem"][1]["Attr"] = "0 1" -- 4阶灵珠*1
tCrossServerBestHeroPackage_Award[3600098]["RewardItem"][1]["PreciousType"] = 307
tCrossServerBestHeroPackage_Award[3600098]["DeleteItem"] = {}
tCrossServerBestHeroPackage_Award[3600098]["DeleteItem"][1] = {}
tCrossServerBestHeroPackage_Award[3600098]["DeleteItem"][1]["Id"] = 3600098 -- 4阶灵珠礼包
tCrossServerBestHeroPackage_Award[3600098]["DeleteItem"][1]["ItemNum"] = 1 -- 4阶灵珠礼包*1

tCrossServerBestHeroPackage_Award[3600099] = {}
tCrossServerBestHeroPackage_Award[3600099]["LogId"] = 12001395
tCrossServerBestHeroPackage_Award[3600099]["LogFile"] = "Pearl"
tCrossServerBestHeroPackage_Award[3600099]["RewardEffect"] = {}
tCrossServerBestHeroPackage_Award[3600099]["RewardEffect"]["SzObj"] = "self"
tCrossServerBestHeroPackage_Award[3600099]["RewardEffect"]["Effect"] = "angelwing"
tCrossServerBestHeroPackage_Award[3600099]["RewardItem"] = {}
tCrossServerBestHeroPackage_Award[3600099]["RewardItem"][1] = {}
tCrossServerBestHeroPackage_Award[3600099]["RewardItem"][1]["Id"] = 4200001 -- 1阶灵珠
tCrossServerBestHeroPackage_Award[3600099]["RewardItem"][1]["Attr"] = "0 1" -- 1阶灵珠*1
tCrossServerBestHeroPackage_Award[3600099]["RewardItem"][1]["PreciousType"] = 307
tCrossServerBestHeroPackage_Award[3600099]["DeleteItem"] = {}
tCrossServerBestHeroPackage_Award[3600099]["DeleteItem"][1] = {}
tCrossServerBestHeroPackage_Award[3600099]["DeleteItem"][1]["Id"] = 3600099 -- 1阶灵珠礼包
tCrossServerBestHeroPackage_Award[3600099]["DeleteItem"][1]["ItemNum"] = 1 -- 1阶灵珠礼包*1

tCrossServerBestHeroPackage_Award[3600100] = {}
tCrossServerBestHeroPackage_Award[3600100]["LogId"] = 12001395
tCrossServerBestHeroPackage_Award[3600100]["RewardEffect"] = {}
tCrossServerBestHeroPackage_Award[3600100]["RewardEffect"]["SzObj"] = "self"
tCrossServerBestHeroPackage_Award[3600100]["RewardEffect"]["Effect"] = "angelwing"
tCrossServerBestHeroPackage_Award[3600100]["RewardItem"] = {}
tCrossServerBestHeroPackage_Award[3600100]["RewardItem"][1] = {}
tCrossServerBestHeroPackage_Award[3600100]["RewardItem"][1]["Id"] = 3009100 -- 人参果
tCrossServerBestHeroPackage_Award[3600100]["RewardItem"][1]["Attr"] = "0 1" -- 人参果*1
tCrossServerBestHeroPackage_Award[3600100]["DeleteItem"] = {}
tCrossServerBestHeroPackage_Award[3600100]["DeleteItem"][1] = {}
tCrossServerBestHeroPackage_Award[3600100]["DeleteItem"][1]["Id"] = 3600100 -- 人参果礼包
tCrossServerBestHeroPackage_Award[3600100]["DeleteItem"][1]["ItemNum"] = 1 -- 人参果礼包*1


-- 总排行奖励
-- 天下第一礼盒 3321623
tCrossServerBestHeroPackage_Award[3321623] = {}
tCrossServerBestHeroPackage_Award[3321623]["LogId"] = 12001395
tCrossServerBestHeroPackage_Award[3321623]["DeleteItem"] = {}
tCrossServerBestHeroPackage_Award[3321623]["DeleteItem"][1] = {}
tCrossServerBestHeroPackage_Award[3321623]["DeleteItem"][1]["Id"] = 3321623 -- 天下第一礼盒
tCrossServerBestHeroPackage_Award[3321623]["RewardEffect"] = {}
tCrossServerBestHeroPackage_Award[3321623]["RewardEffect"]["SzObj"] = "self"
tCrossServerBestHeroPackage_Award[3321623]["RewardEffect"]["Effect"] = "angelwing"
tCrossServerBestHeroPackage_Award[3321623]["RewardTitle"] = {}
tCrossServerBestHeroPackage_Award[3321623]["RewardTitle"]["TitleType"] = 2125   --30天时效天下第一称号
tCrossServerBestHeroPackage_Award[3321623]["RewardTitle"]["TitleId"] = 2125
tCrossServerBestHeroPackage_Award[3321623]["RewardTitle"]["SaveTime"] = 43200
tCrossServerBestHeroPackage_Award[3321623]["RewardStrengthValue"] = {}
tCrossServerBestHeroPackage_Award[3321623]["RewardStrengthValue"]["Value"] = 10000	-- 10000气力值
tCrossServerBestHeroPackage_Award[3321623]["RewardItem"] = {}
tCrossServerBestHeroPackage_Award[3321623]["RewardItem"][1] = {}
tCrossServerBestHeroPackage_Award[3321623]["RewardItem"][1]["Id"] = 3009100 -- 【库】人参果[属性:9]【表格】人参果
tCrossServerBestHeroPackage_Award[3321623]["RewardItem"][1]["Attr"] = "0 100" -- 人参果*100
tCrossServerBestHeroPackage_Award[3321623]["RewardItem"][2] = {}
tCrossServerBestHeroPackage_Award[3321623]["RewardItem"][2]["Id"] = 4200005 -- 【库】5阶灵珠[属性:72]【表格】5阶灵珠
tCrossServerBestHeroPackage_Award[3321623]["RewardItem"][2]["Attr"] = "0 5" -- 5阶灵珠*5
tCrossServerBestHeroPackage_Award[3321623]["RewardItem"][2]["PreciousType"] = 307
tCrossServerBestHeroPackage_Award[3321623]["LogFile"] = "Pearl"

-- 举世无双礼盒 3321624
tCrossServerBestHeroPackage_Award[3321624] = {}
tCrossServerBestHeroPackage_Award[3321624]["LogId"] = 12001395
tCrossServerBestHeroPackage_Award[3321624]["DeleteItem"] = {}
tCrossServerBestHeroPackage_Award[3321624]["DeleteItem"][1] = {}
tCrossServerBestHeroPackage_Award[3321624]["DeleteItem"][1]["Id"] = 3321624 -- 举世无双礼盒
tCrossServerBestHeroPackage_Award[3321624]["RewardEffect"] = {}
tCrossServerBestHeroPackage_Award[3321624]["RewardEffect"]["SzObj"] = "self"
tCrossServerBestHeroPackage_Award[3321624]["RewardEffect"]["Effect"] = "angelwing"
tCrossServerBestHeroPackage_Award[3321624]["RewardStrengthValue"] = {}
tCrossServerBestHeroPackage_Award[3321624]["RewardStrengthValue"]["Value"] = 9000	-- 9000气力值
tCrossServerBestHeroPackage_Award[3321624]["RewardItem"] = {}
tCrossServerBestHeroPackage_Award[3321624]["RewardItem"][1] = {}
tCrossServerBestHeroPackage_Award[3321624]["RewardItem"][1]["Id"] = 3009100 -- 【库】人参果[属性:9]【表格】人参果
tCrossServerBestHeroPackage_Award[3321624]["RewardItem"][1]["Attr"] = "0 90" -- 人参果*90
tCrossServerBestHeroPackage_Award[3321624]["RewardItem"][2] = {}
tCrossServerBestHeroPackage_Award[3321624]["RewardItem"][2]["Id"] = 4200005 -- 【库】5阶灵珠[属性:72]【表格】5阶灵珠
tCrossServerBestHeroPackage_Award[3321624]["RewardItem"][2]["Attr"] = "0 4" -- 5阶灵珠*4
tCrossServerBestHeroPackage_Award[3321624]["RewardItem"][2]["PreciousType"] = 307
tCrossServerBestHeroPackage_Award[3321624]["LogFile"] = "Pearl"

-- 十方无敌礼盒 3321625
tCrossServerBestHeroPackage_Award[3321625] = {}
tCrossServerBestHeroPackage_Award[3321625]["LogId"] = 12001395
tCrossServerBestHeroPackage_Award[3321625]["DeleteItem"] = {}
tCrossServerBestHeroPackage_Award[3321625]["DeleteItem"][1] = {}
tCrossServerBestHeroPackage_Award[3321625]["DeleteItem"][1]["Id"] = 3321625 -- 十方无敌礼盒
tCrossServerBestHeroPackage_Award[3321625]["RewardEffect"] = {}
tCrossServerBestHeroPackage_Award[3321625]["RewardEffect"]["SzObj"] = "self"
tCrossServerBestHeroPackage_Award[3321625]["RewardEffect"]["Effect"] = "angelwing"
tCrossServerBestHeroPackage_Award[3321625]["RewardStrengthValue"] = {}
tCrossServerBestHeroPackage_Award[3321625]["RewardStrengthValue"]["Value"] = 8500	-- 8500气力值
tCrossServerBestHeroPackage_Award[3321625]["RewardItem"] = {}
tCrossServerBestHeroPackage_Award[3321625]["RewardItem"][1] = {}
tCrossServerBestHeroPackage_Award[3321625]["RewardItem"][1]["Id"] = 3009100 -- 【库】人参果[属性:9]【表格】人参果
tCrossServerBestHeroPackage_Award[3321625]["RewardItem"][1]["Attr"] = "0 85" -- 人参果*85
tCrossServerBestHeroPackage_Award[3321625]["RewardItem"][2] = {}
tCrossServerBestHeroPackage_Award[3321625]["RewardItem"][2]["Id"] = 4200005 -- 【库】5阶灵珠[属性:72]【表格】5阶灵珠
tCrossServerBestHeroPackage_Award[3321625]["RewardItem"][2]["Attr"] = "0 3" -- 5阶灵珠*3
tCrossServerBestHeroPackage_Award[3321625]["RewardItem"][2]["PreciousType"] = 307
tCrossServerBestHeroPackage_Award[3321625]["LogFile"] = "Pearl"


-- 威震四方礼盒	3321626
tCrossServerBestHeroPackage_Award[3321626] = {}
tCrossServerBestHeroPackage_Award[3321626]["LogId"] = 12001395
tCrossServerBestHeroPackage_Award[3321626]["DeleteItem"] = {}
tCrossServerBestHeroPackage_Award[3321626]["DeleteItem"][1] = {}
tCrossServerBestHeroPackage_Award[3321626]["DeleteItem"][1]["Id"] = 3321626 -- 威震四方礼盒
tCrossServerBestHeroPackage_Award[3321626]["RewardEffect"] = {}
tCrossServerBestHeroPackage_Award[3321626]["RewardEffect"]["SzObj"] = "self"
tCrossServerBestHeroPackage_Award[3321626]["RewardEffect"]["Effect"] = "angelwing"
tCrossServerBestHeroPackage_Award[3321626]["RewardStrengthValue"] = {}
tCrossServerBestHeroPackage_Award[3321626]["RewardStrengthValue"]["Value"] = 8000	-- 8000气力值
tCrossServerBestHeroPackage_Award[3321626]["RewardItem"] = {}
tCrossServerBestHeroPackage_Award[3321626]["RewardItem"][1] = {}
tCrossServerBestHeroPackage_Award[3321626]["RewardItem"][1]["Id"] = 3009100 -- 【库】人参果[属性:9]【表格】人参果
tCrossServerBestHeroPackage_Award[3321626]["RewardItem"][1]["Attr"] = "0 80" -- 人参果*80
tCrossServerBestHeroPackage_Award[3321626]["RewardItem"][2] = {}
tCrossServerBestHeroPackage_Award[3321626]["RewardItem"][2]["Id"] = 4200005 -- 【库】5阶灵珠[属性:72]【表格】5阶灵珠
tCrossServerBestHeroPackage_Award[3321626]["RewardItem"][2]["Attr"] = "0 3" -- 5阶灵珠*3
tCrossServerBestHeroPackage_Award[3321626]["RewardItem"][2]["PreciousType"] = 307
tCrossServerBestHeroPackage_Award[3321626]["LogFile"] = "Pearl"

-- 横扫千军礼盒	3321627
tCrossServerBestHeroPackage_Award[3321627] = {}
tCrossServerBestHeroPackage_Award[3321627]["LogId"] = 12001395
tCrossServerBestHeroPackage_Award[3321627]["DeleteItem"] = {}
tCrossServerBestHeroPackage_Award[3321627]["DeleteItem"][1] = {}
tCrossServerBestHeroPackage_Award[3321627]["DeleteItem"][1]["Id"] = 3321627 -- 横扫千军礼盒
tCrossServerBestHeroPackage_Award[3321627]["RewardEffect"] = {}
tCrossServerBestHeroPackage_Award[3321627]["RewardEffect"]["SzObj"] = "self"
tCrossServerBestHeroPackage_Award[3321627]["RewardEffect"]["Effect"] = "angelwing"
tCrossServerBestHeroPackage_Award[3321627]["RewardStrengthValue"] = {}
tCrossServerBestHeroPackage_Award[3321627]["RewardStrengthValue"]["Value"] = 7500	-- 7500气力值
tCrossServerBestHeroPackage_Award[3321627]["RewardItem"] = {}
tCrossServerBestHeroPackage_Award[3321627]["RewardItem"][1] = {}
tCrossServerBestHeroPackage_Award[3321627]["RewardItem"][1]["Id"] = 3009100 -- 【库】人参果[属性:9]【表格】人参果
tCrossServerBestHeroPackage_Award[3321627]["RewardItem"][1]["Attr"] = "0 75" -- 人参果*75
tCrossServerBestHeroPackage_Award[3321627]["RewardItem"][2] = {}
tCrossServerBestHeroPackage_Award[3321627]["RewardItem"][2]["Id"] = 4200005 -- 【库】5阶灵珠[属性:72]【表格】5阶灵珠
tCrossServerBestHeroPackage_Award[3321627]["RewardItem"][2]["Attr"] = "0 2" -- 5阶灵珠*2
tCrossServerBestHeroPackage_Award[3321627]["RewardItem"][2]["PreciousType"] = 307
tCrossServerBestHeroPackage_Award[3321627]["LogFile"] = "Pearl"

-- 所向披靡礼盒	3321628
tCrossServerBestHeroPackage_Award[3321628] = {}
tCrossServerBestHeroPackage_Award[3321628]["LogId"] = 12001395
tCrossServerBestHeroPackage_Award[3321628]["DeleteItem"] = {}
tCrossServerBestHeroPackage_Award[3321628]["DeleteItem"][1] = {}
tCrossServerBestHeroPackage_Award[3321628]["DeleteItem"][1]["Id"] = 3321628 -- 所向披靡礼盒
tCrossServerBestHeroPackage_Award[3321628]["RewardEffect"] = {}
tCrossServerBestHeroPackage_Award[3321628]["RewardEffect"]["SzObj"] = "self"
tCrossServerBestHeroPackage_Award[3321628]["RewardEffect"]["Effect"] = "angelwing"
tCrossServerBestHeroPackage_Award[3321628]["RewardStrengthValue"] = {}
tCrossServerBestHeroPackage_Award[3321628]["RewardStrengthValue"]["Value"] = 7000	-- 7000气力值
tCrossServerBestHeroPackage_Award[3321628]["RewardItem"] = {}
tCrossServerBestHeroPackage_Award[3321628]["RewardItem"][1] = {}
tCrossServerBestHeroPackage_Award[3321628]["RewardItem"][1]["Id"] = 3009100 -- 【库】人参果[属性:9]【表格】人参果
tCrossServerBestHeroPackage_Award[3321628]["RewardItem"][1]["Attr"] = "0 70" -- 人参果*70
tCrossServerBestHeroPackage_Award[3321628]["RewardItem"][2] = {}
tCrossServerBestHeroPackage_Award[3321628]["RewardItem"][2]["Id"] = 4200005 -- 【库】5阶灵珠[属性:72]【表格】5阶灵珠
tCrossServerBestHeroPackage_Award[3321628]["RewardItem"][2]["Attr"] = "0 2" -- 5阶灵珠*2
tCrossServerBestHeroPackage_Award[3321628]["RewardItem"][2]["PreciousType"] = 307
tCrossServerBestHeroPackage_Award[3321628]["LogFile"] = "Pearl"

-- 万夫莫当礼盒	3321629
tCrossServerBestHeroPackage_Award[3321629] = {}
tCrossServerBestHeroPackage_Award[3321629]["LogId"] = 12001395
tCrossServerBestHeroPackage_Award[3321629]["DeleteItem"] = {}
tCrossServerBestHeroPackage_Award[3321629]["DeleteItem"][1] = {}
tCrossServerBestHeroPackage_Award[3321629]["DeleteItem"][1]["Id"] = 3321629 -- 万夫莫当礼盒
tCrossServerBestHeroPackage_Award[3321629]["RewardEffect"] = {}
tCrossServerBestHeroPackage_Award[3321629]["RewardEffect"]["SzObj"] = "self"
tCrossServerBestHeroPackage_Award[3321629]["RewardEffect"]["Effect"] = "angelwing"
tCrossServerBestHeroPackage_Award[3321629]["RewardStrengthValue"] = {}
tCrossServerBestHeroPackage_Award[3321629]["RewardStrengthValue"]["Value"] = 6500	-- 6500气力值
tCrossServerBestHeroPackage_Award[3321629]["RewardItem"] = {}
tCrossServerBestHeroPackage_Award[3321629]["RewardItem"][1] = {}
tCrossServerBestHeroPackage_Award[3321629]["RewardItem"][1]["Id"] = 3009100 -- 【库】人参果[属性:9]【表格】人参果
tCrossServerBestHeroPackage_Award[3321629]["RewardItem"][1]["Attr"] = "0 65" -- 人参果*65
tCrossServerBestHeroPackage_Award[3321629]["RewardItem"][2] = {}
tCrossServerBestHeroPackage_Award[3321629]["RewardItem"][2]["Id"] = 4200005 -- 【库】5阶灵珠[属性:72]【表格】5阶灵珠
tCrossServerBestHeroPackage_Award[3321629]["RewardItem"][2]["Attr"] = "0 2" -- 5阶灵珠*2
tCrossServerBestHeroPackage_Award[3321629]["RewardItem"][2]["PreciousType"] = 307
tCrossServerBestHeroPackage_Award[3321629]["LogFile"] = "Pearl"

-- 一骑当千礼盒	3321630
tCrossServerBestHeroPackage_Award[3321630] = {}
tCrossServerBestHeroPackage_Award[3321630]["LogId"] = 12001395
tCrossServerBestHeroPackage_Award[3321630]["DeleteItem"] = {}
tCrossServerBestHeroPackage_Award[3321630]["DeleteItem"][1] = {}
tCrossServerBestHeroPackage_Award[3321630]["DeleteItem"][1]["Id"] = 3321630 -- 一骑当千礼盒
tCrossServerBestHeroPackage_Award[3321630]["RewardEffect"] = {}
tCrossServerBestHeroPackage_Award[3321630]["RewardEffect"]["SzObj"] = "self"
tCrossServerBestHeroPackage_Award[3321630]["RewardEffect"]["Effect"] = "angelwing"
tCrossServerBestHeroPackage_Award[3321630]["RewardStrengthValue"] = {}
tCrossServerBestHeroPackage_Award[3321630]["RewardStrengthValue"]["Value"] = 6000	-- 6000气力值
tCrossServerBestHeroPackage_Award[3321630]["RewardItem"] = {}
tCrossServerBestHeroPackage_Award[3321630]["RewardItem"][1] = {}
tCrossServerBestHeroPackage_Award[3321630]["RewardItem"][1]["Id"] = 3009100 -- 【库】人参果[属性:9]【表格】人参果
tCrossServerBestHeroPackage_Award[3321630]["RewardItem"][1]["Attr"] = "0 60" -- 人参果*60
tCrossServerBestHeroPackage_Award[3321630]["RewardItem"][2] = {}
tCrossServerBestHeroPackage_Award[3321630]["RewardItem"][2]["Id"] = 4200005 -- 【库】5阶灵珠[属性:72]【表格】5阶灵珠
tCrossServerBestHeroPackage_Award[3321630]["RewardItem"][2]["Attr"] = "0 1" -- 5阶灵珠*1
tCrossServerBestHeroPackage_Award[3321630]["RewardItem"][2]["PreciousType"] = 307
tCrossServerBestHeroPackage_Award[3321630]["LogFile"] = "Pearl"

-- 绝顶高手礼盒	3321631
tCrossServerBestHeroPackage_Award[3321631] = {}
tCrossServerBestHeroPackage_Award[3321631]["LogId"] = 12001395
tCrossServerBestHeroPackage_Award[3321631]["DeleteItem"] = {}
tCrossServerBestHeroPackage_Award[3321631]["DeleteItem"][1] = {}
tCrossServerBestHeroPackage_Award[3321631]["DeleteItem"][1]["Id"] = 3321631 -- 绝顶高手礼盒
tCrossServerBestHeroPackage_Award[3321631]["RewardEffect"] = {}
tCrossServerBestHeroPackage_Award[3321631]["RewardEffect"]["SzObj"] = "self"
tCrossServerBestHeroPackage_Award[3321631]["RewardEffect"]["Effect"] = "angelwing"
tCrossServerBestHeroPackage_Award[3321631]["RewardStrengthValue"] = {}
tCrossServerBestHeroPackage_Award[3321631]["RewardStrengthValue"]["Value"] = 5500	-- 5500气力值
tCrossServerBestHeroPackage_Award[3321631]["RewardItem"] = {}
tCrossServerBestHeroPackage_Award[3321631]["RewardItem"][1] = {}
tCrossServerBestHeroPackage_Award[3321631]["RewardItem"][1]["Id"] = 3009100 -- 【库】人参果[属性:9]【表格】人参果
tCrossServerBestHeroPackage_Award[3321631]["RewardItem"][1]["Attr"] = "0 55" -- 人参果*55
tCrossServerBestHeroPackage_Award[3321631]["RewardItem"][2] = {}
tCrossServerBestHeroPackage_Award[3321631]["RewardItem"][2]["Id"] = 4200005 -- 【库】5阶灵珠[属性:72]【表格】5阶灵珠
tCrossServerBestHeroPackage_Award[3321631]["RewardItem"][2]["Attr"] = "0 1" -- 5阶灵珠*1
tCrossServerBestHeroPackage_Award[3321631]["RewardItem"][2]["PreciousType"] = 307
tCrossServerBestHeroPackage_Award[3321631]["LogFile"] = "Pearl"

-- 盖世豪侠礼盒	3321632
tCrossServerBestHeroPackage_Award[3321632] = {}
tCrossServerBestHeroPackage_Award[3321632]["LogId"] = 12001395
tCrossServerBestHeroPackage_Award[3321632]["DeleteItem"] = {}
tCrossServerBestHeroPackage_Award[3321632]["DeleteItem"][1] = {}
tCrossServerBestHeroPackage_Award[3321632]["DeleteItem"][1]["Id"] = 3321632 -- 盖世豪侠礼盒
tCrossServerBestHeroPackage_Award[3321632]["RewardEffect"] = {}
tCrossServerBestHeroPackage_Award[3321632]["RewardEffect"]["SzObj"] = "self"
tCrossServerBestHeroPackage_Award[3321632]["RewardEffect"]["Effect"] = "angelwing"
tCrossServerBestHeroPackage_Award[3321632]["RewardStrengthValue"] = {}
tCrossServerBestHeroPackage_Award[3321632]["RewardStrengthValue"]["Value"] = 5000	-- 5000气力值
tCrossServerBestHeroPackage_Award[3321632]["RewardItem"] = {}
tCrossServerBestHeroPackage_Award[3321632]["RewardItem"][1] = {}
tCrossServerBestHeroPackage_Award[3321632]["RewardItem"][1]["Id"] = 3009100 -- 【库】人参果[属性:9]【表格】人参果
tCrossServerBestHeroPackage_Award[3321632]["RewardItem"][1]["Attr"] = "0 50" -- 人参果*50
tCrossServerBestHeroPackage_Award[3321632]["RewardItem"][2] = {}
tCrossServerBestHeroPackage_Award[3321632]["RewardItem"][2]["Id"] = 4200005 -- 【库】5阶灵珠[属性:72]【表格】5阶灵珠
tCrossServerBestHeroPackage_Award[3321632]["RewardItem"][2]["Attr"] = "0 1" -- 5阶灵珠*1
tCrossServerBestHeroPackage_Award[3321632]["RewardItem"][2]["PreciousType"] = 307
tCrossServerBestHeroPackage_Award[3321632]["LogFile"] = "Pearl"


-- 3600101	100PointsChiPack
tCrossServerBestHeroPackage_Award[3600101] = {}
tCrossServerBestHeroPackage_Award[3600101]["LogId"] = 12001395
tCrossServerBestHeroPackage_Award[3600101]["DeleteItem"] = {}
tCrossServerBestHeroPackage_Award[3600101]["DeleteItem"][1] = {}
tCrossServerBestHeroPackage_Award[3600101]["DeleteItem"][1]["Id"] = 3600101 -- 100PointsChiPack
tCrossServerBestHeroPackage_Award[3600101]["RewardEffect"] = {}
tCrossServerBestHeroPackage_Award[3600101]["RewardEffect"]["SzObj"] = "self"
tCrossServerBestHeroPackage_Award[3600101]["RewardEffect"]["Effect"] = "angelwing"
tCrossServerBestHeroPackage_Award[3600101]["RewardStrengthValue"] = {}
tCrossServerBestHeroPackage_Award[3600101]["RewardStrengthValue"]["Value"] = 100	-- 100气力值

-- 3600102	200PointsChiPack
tCrossServerBestHeroPackage_Award[3600102] = {}
tCrossServerBestHeroPackage_Award[3600102]["LogId"] = 12001395
tCrossServerBestHeroPackage_Award[3600102]["DeleteItem"] = {}
tCrossServerBestHeroPackage_Award[3600102]["DeleteItem"][1] = {}
tCrossServerBestHeroPackage_Award[3600102]["DeleteItem"][1]["Id"] = 3600102 -- 200PointsChiPack
tCrossServerBestHeroPackage_Award[3600102]["RewardEffect"] = {}
tCrossServerBestHeroPackage_Award[3600102]["RewardEffect"]["SzObj"] = "self"
tCrossServerBestHeroPackage_Award[3600102]["RewardEffect"]["Effect"] = "angelwing"
tCrossServerBestHeroPackage_Award[3600102]["RewardStrengthValue"] = {}
tCrossServerBestHeroPackage_Award[3600102]["RewardStrengthValue"]["Value"] = 200	-- 200气力值

-- 3600103	300PointsChiPack
tCrossServerBestHeroPackage_Award[3600103] = {}
tCrossServerBestHeroPackage_Award[3600103]["LogId"] = 12001395
tCrossServerBestHeroPackage_Award[3600103]["DeleteItem"] = {}
tCrossServerBestHeroPackage_Award[3600103]["DeleteItem"][1] = {}
tCrossServerBestHeroPackage_Award[3600103]["DeleteItem"][1]["Id"] = 3600103 -- 300PointsChiPack
tCrossServerBestHeroPackage_Award[3600103]["RewardEffect"] = {}
tCrossServerBestHeroPackage_Award[3600103]["RewardEffect"]["SzObj"] = "self"
tCrossServerBestHeroPackage_Award[3600103]["RewardEffect"]["Effect"] = "angelwing"
tCrossServerBestHeroPackage_Award[3600103]["RewardStrengthValue"] = {}
tCrossServerBestHeroPackage_Award[3600103]["RewardStrengthValue"]["Value"] = 300	-- 300气力值

-- 3600104	400PointsChiPack
tCrossServerBestHeroPackage_Award[3600104] = {}
tCrossServerBestHeroPackage_Award[3600104]["LogId"] = 12001395
tCrossServerBestHeroPackage_Award[3600104]["DeleteItem"] = {}
tCrossServerBestHeroPackage_Award[3600104]["DeleteItem"][1] = {}
tCrossServerBestHeroPackage_Award[3600104]["DeleteItem"][1]["Id"] = 3600104 -- 400PointsChiPack
tCrossServerBestHeroPackage_Award[3600104]["RewardEffect"] = {}
tCrossServerBestHeroPackage_Award[3600104]["RewardEffect"]["SzObj"] = "self"
tCrossServerBestHeroPackage_Award[3600104]["RewardEffect"]["Effect"] = "angelwing"
tCrossServerBestHeroPackage_Award[3600104]["RewardStrengthValue"] = {}
tCrossServerBestHeroPackage_Award[3600104]["RewardStrengthValue"]["Value"] = 400	-- 400气力值

-- 3600105	500PointsChiPack
tCrossServerBestHeroPackage_Award[3600105] = {}
tCrossServerBestHeroPackage_Award[3600105]["LogId"] = 12001395
tCrossServerBestHeroPackage_Award[3600105]["DeleteItem"] = {}
tCrossServerBestHeroPackage_Award[3600105]["DeleteItem"][1] = {}
tCrossServerBestHeroPackage_Award[3600105]["DeleteItem"][1]["Id"] = 3600105 -- 500PointsChiPack
tCrossServerBestHeroPackage_Award[3600105]["RewardEffect"] = {}
tCrossServerBestHeroPackage_Award[3600105]["RewardEffect"]["SzObj"] = "self"
tCrossServerBestHeroPackage_Award[3600105]["RewardEffect"]["Effect"] = "angelwing"
tCrossServerBestHeroPackage_Award[3600105]["RewardStrengthValue"] = {}
tCrossServerBestHeroPackage_Award[3600105]["RewardStrengthValue"]["Value"] = 500	-- 500气力值

-- 3600106	600PointsChiPack
tCrossServerBestHeroPackage_Award[3600106] = {}
tCrossServerBestHeroPackage_Award[3600106]["LogId"] = 12001395
tCrossServerBestHeroPackage_Award[3600106]["DeleteItem"] = {}
tCrossServerBestHeroPackage_Award[3600106]["DeleteItem"][1] = {}
tCrossServerBestHeroPackage_Award[3600106]["DeleteItem"][1]["Id"] = 3600106 -- 600PointsChiPack
tCrossServerBestHeroPackage_Award[3600106]["RewardEffect"] = {}
tCrossServerBestHeroPackage_Award[3600106]["RewardEffect"]["SzObj"] = "self"
tCrossServerBestHeroPackage_Award[3600106]["RewardEffect"]["Effect"] = "angelwing"
tCrossServerBestHeroPackage_Award[3600106]["RewardStrengthValue"] = {}
tCrossServerBestHeroPackage_Award[3600106]["RewardStrengthValue"]["Value"] = 600	-- 600气力值

-- 3600107	700PointsChiPack
tCrossServerBestHeroPackage_Award[3600107] = {}
tCrossServerBestHeroPackage_Award[3600107]["LogId"] = 12001395
tCrossServerBestHeroPackage_Award[3600107]["DeleteItem"] = {}
tCrossServerBestHeroPackage_Award[3600107]["DeleteItem"][1] = {}
tCrossServerBestHeroPackage_Award[3600107]["DeleteItem"][1]["Id"] = 3600107 -- 700PointsChiPack
tCrossServerBestHeroPackage_Award[3600107]["RewardEffect"] = {}
tCrossServerBestHeroPackage_Award[3600107]["RewardEffect"]["SzObj"] = "self"
tCrossServerBestHeroPackage_Award[3600107]["RewardEffect"]["Effect"] = "angelwing"
tCrossServerBestHeroPackage_Award[3600107]["RewardStrengthValue"] = {}
tCrossServerBestHeroPackage_Award[3600107]["RewardStrengthValue"]["Value"] = 700	-- 700气力值

-- 3600108	800PointsChiPack
tCrossServerBestHeroPackage_Award[3600108] = {}
tCrossServerBestHeroPackage_Award[3600108]["LogId"] = 12001395
tCrossServerBestHeroPackage_Award[3600108]["DeleteItem"] = {}
tCrossServerBestHeroPackage_Award[3600108]["DeleteItem"][1] = {}
tCrossServerBestHeroPackage_Award[3600108]["DeleteItem"][1]["Id"] = 3600108 -- 800PointsChiPack
tCrossServerBestHeroPackage_Award[3600108]["RewardEffect"] = {}
tCrossServerBestHeroPackage_Award[3600108]["RewardEffect"]["SzObj"] = "self"
tCrossServerBestHeroPackage_Award[3600108]["RewardEffect"]["Effect"] = "angelwing"
tCrossServerBestHeroPackage_Award[3600108]["RewardStrengthValue"] = {}
tCrossServerBestHeroPackage_Award[3600108]["RewardStrengthValue"]["Value"] = 800	-- 800气力值

-- 3600109	900PointsChiPack
tCrossServerBestHeroPackage_Award[3600109] = {}
tCrossServerBestHeroPackage_Award[3600109]["LogId"] = 12001395
tCrossServerBestHeroPackage_Award[3600109]["DeleteItem"] = {}
tCrossServerBestHeroPackage_Award[3600109]["DeleteItem"][1] = {}
tCrossServerBestHeroPackage_Award[3600109]["DeleteItem"][1]["Id"] = 3600109 -- 900PointsChiPack
tCrossServerBestHeroPackage_Award[3600109]["RewardEffect"] = {}
tCrossServerBestHeroPackage_Award[3600109]["RewardEffect"]["SzObj"] = "self"
tCrossServerBestHeroPackage_Award[3600109]["RewardEffect"]["Effect"] = "angelwing"
tCrossServerBestHeroPackage_Award[3600109]["RewardStrengthValue"] = {}
tCrossServerBestHeroPackage_Award[3600109]["RewardStrengthValue"]["Value"] = 900	-- 900气力值

-- 3600110	1000PointsChiPack
tCrossServerBestHeroPackage_Award[3600110] = {}
tCrossServerBestHeroPackage_Award[3600110]["LogId"] = 12001395
tCrossServerBestHeroPackage_Award[3600110]["DeleteItem"] = {}
tCrossServerBestHeroPackage_Award[3600110]["DeleteItem"][1] = {}
tCrossServerBestHeroPackage_Award[3600110]["DeleteItem"][1]["Id"] = 3600110 -- 1000PointsChiPack
tCrossServerBestHeroPackage_Award[3600110]["RewardEffect"] = {}
tCrossServerBestHeroPackage_Award[3600110]["RewardEffect"]["SzObj"] = "self"
tCrossServerBestHeroPackage_Award[3600110]["RewardEffect"]["Effect"] = "angelwing"
tCrossServerBestHeroPackage_Award[3600110]["RewardStrengthValue"] = {}
tCrossServerBestHeroPackage_Award[3600110]["RewardStrengthValue"]["Value"] = 1000	-- 1000气力值


------------------------------------------------逻辑部分-------------------------------------------------


--物品已过期删除
function CrossServerBestHeroPackage_DeleteOvertime(nItemId)
	if not Sys_ChkFullTime(tCrossServerBestHeroPackage_Cont["NowActivity"]) then
		--删除所有物品
		if Item_ChkMulItem(nItemId,nItemId,1) then
			Item_DelAllItemByType(nItemId)
		end
		User_TalkChannel2005(tCrossServerBestHeroPackage_Text[3600079]["Text117"])
		return false
	end
	
	return true
end

--判断玩家是否在擂台地图
function CrossServerBestHeroPackage_IsInMap()
	local nMapId = Get_UserMapId()
	if nMapId >= tCrossServerBestHeroPackage_Item["MapId"][1] and nMapId <= tCrossServerBestHeroPackage_Item["MapId"][10] then
		return true
	else
		return false
	end
end


--身上有状态加成则删除
function CrossServerBestHeroPackage_ChkToolStatus(nNowUserId)
	local i = 0
	local nUserId = nNowUserId or Get_UserId()
	
	for i = 1,7 do
		local nStatus = tCrossServerBestHeroPackage_Item["MiniBuff"][i] 
		if User_ChkRoleStatus(nStatus,nUserId) then
			User_DelRoleStatus(nStatus,nUserId)
		end
	end
	
end

--增益属性符
function CrossServerBestHeroPackage_UseTools(nItemId)
	--判断是否在时间内
	if not CrossServerBestHeroPackage_DeleteOvertime(nItemId) then
		return
	end
	
	--判断是否在活动地图中
	if not CrossServerBestHeroPackage_IsInMap() then
		User_TalkChannel2005(tCrossServerBestHeroPackage_Text["CannotUse"])
		return
	end

	local nSecs = tCrossServerBestHeroPackage_Item["Secs"]
	local nTimes = tCrossServerBestHeroPackage_Item["Times"]
	local nRemainTime = tCrossServerBestHeroPackage_Item["RemainTime"]
	local nEndTime = tCrossServerBestHeroPackage_Item["EndTime"]
	local nRecordable = tCrossServerBestHeroPackage_Item["Recordable"]
	local nUserId = Get_UserId()
	--增益符，使用不删除，5分钟期限到自动删除
	if Item_ChkMulItem(nItemId,nItemId,1) and Item_DelMulItem(nItemId,nItemId,1) then
		
		CrossServerBestHeroPackage_ChkToolStatus()
		
		for i = 1,7 do
			local nStatus = tCrossServerBestHeroPackage_Item["MiniBuff"][i] 
			local nPower = tCrossServerBestHeroPackage_Item["MiniBuff"][nStatus]
			User_AddRoleStatus(nStatus,nPower,nSecs,nTimes,nRemainTime,nEndTime,nRecordable,0,0,nUserId)
		end
		
		User_EffectAdd(tCrossServerBestHeroPackage_Item["Self"],tCrossServerBestHeroPackage_Item["Effect"])
		Sys_SaveActionFestivalLog(tCrossServerBestHeroPackage_Item["Log"])
		User_TalkChannel2005(tCrossServerBestHeroPackage_Text["User"])
	end
end


--宝石打开获得物品
function CrossServerBestHeroPackage_BabyOpen(nItemId)
	-- 判断是否跨服
	local nUserId = Get_UserId()
	if User_IsCross(nUserId) then
		Sys_MsgBox(tCrossServerBestHeroPackage_Text["FuUse"])
		return
	end
	
	local nSpace = RewardTemplate_GetRandomSpace(tCrossServerBestHeroPackage_Award,nItemId)
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tCrossServerBestHero_Text[24162]["Space"],nSpace))
		return
	elseif Item_ChkMulItem(nItemId,nItemId,1) and Item_DelMulItem(nItemId,nItemId,1) then
		if RewardTemplate_NewRandom(tCrossServerBestHeroPackage_Award,nItemId) then
			local nEvent = tCrossServerBestHeroPackage_Stc["EventType"]
			local nType = tCrossServerBestHeroPackage_Stc["DataType"]
			local nData = tCrossServerBestHeroPackage_Stc["Data"][nItemId]
			Task_AddStatistic(nEvent,nType,nData,1)
			Task_SetStcTimestamp(nEvent,nType,0)
			
			local nUserData = Get_UserStatisticValue(nEvent,nType)
			RankingFunc_SetInfo(24151,nUserData)
		end
	end
	
end


--豪侠宝石碎片合成豪侠宝石
function CrossServerBestHeroPackage_ConnectAll(nItemId)
	--判断是否在时间内
	-- 判断是否跨服
	local nUserId = Get_UserId()
	if User_IsCross(nUserId) then
		Sys_MsgBox(tCrossServerBestHeroPackage_Text["FuUse"])
		return
	end
	
	
	if not CrossServerBestHeroPackage_DeleteOvertime(nItemId) then
		return
	end

	if Item_ChkMulItem(nItemId,nItemId,5) then
		RewardTemplate_UseItemAndMsg(tCrossServerBestHeroPackage_Award[nItemId])
	else
		local sText = tCrossServerBestHeroPackage_Text[nItemId]["Notenough"]
		Sys_MsgBox(sText)
		User_TalkChannel2005(sText)
	end

end

function CrossServerBestHeroPackage_MonsterDrop(nItemId)
	--判断是否在时间内
	-- 判断是否跨服
	local nUserId = Get_UserId()
	if User_IsCross(nUserId) then
		Sys_MsgBox(tCrossServerBestHeroPackage_Text["FuUse"])
		return
	end
	
	if Item_ChkMulItem(nItemId,nItemId,1) then
		RewardTemplate_UseItemAndMsg(tCrossServerBestHeroPackage_Award[nItemId])
	end
end
------------------------------------------------itemtype模块--------------------------------------------------
--增益紫翎
tItemFace[3600079] = 2217
tItem[3600079] = tItem[3600079] or {}
tItem[3600079]["DialogueText"] = tCrossServerBestHeroPackage_Text[3600079]
tItem[3600079]["Text1-1"] = {111,112,113,114,115,116}
tItem[3600079]["tOption1-1"] = {1,2}
tItem[3600079]["OptionFunc1"]="CrossServerBestHeroPackage_UseTools</N>3600079"


--豪侠宝石
tItem[3600090] = tItem[3600090] or {}
tItem[3600090]["Function"] = function(nItemId,sItemName)
	CrossServerBestHeroPackage_BabyOpen(nItemId)
end

--豪侠宝石碎片
tItem[3600091] = tItem[3600091] or {}
tItem[3600091]["Function"] = function(nItemId,sItemName)
	CrossServerBestHeroPackage_ConnectAll(nItemId)
end
--神速冠军包
--神速豪杰包
--神速精英包
--神速十强包
tItem[3600092] = tItem[3600092] or {}
tItem[3600092]["Function"] = function(nItemId,sItemName)
	local nUserId = Get_UserId()
	if User_IsCross(nUserId) then
		Sys_MsgBox(tCrossServerBestHeroPackage_Text["FuUse"])
		return
	end
	
	if RewardTemplate_UseItemAndMsg(tCrossServerBestHeroPackage_Award[nItemId]) then
		local nEvent = tCrossServerBestHeroPackage_Stc["EventType"]
		local nType = tCrossServerBestHeroPackage_Stc["DataType"]
		local nData = tCrossServerBestHeroPackage_Stc["Data"][nItemId]
		Task_AddStatistic(nEvent,nType,nData,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		
		local nUserData = Get_UserStatisticValue(nEvent,nType)
		RankingFunc_SetInfo(24151,nUserData)
	end
end
tItem[3600093] = tItem[3600092] or {}
tItem[3600094] = tItem[3600092] or {}
tItem[3600095] = tItem[3600092] or {}

--新做5个物品用于跨服怪掉落使用
tItem[3600096] = tItem[3600096] or {}
tItem[3600096]["Function"] = function(nItemId,sItemName)
	CrossServerBestHeroPackage_MonsterDrop(nItemId)
end
tItem[3600097] = tItem[3600096] or {}
tItem[3600098] = tItem[3600096] or {}
tItem[3600099] = tItem[3600096] or {}
tItem[3600100] = tItem[3600096] or {}

-- 总排行奖励礼包
tItem[3321623] = tItem[3321623] or {}
tItem[3321623]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tCrossServerBestHeroPackage_Award[nItemId])
end
tItem[3321624] = tItem[3321623] or {}
tItem[3321625] = tItem[3321623] or {}
tItem[3321626] = tItem[3321623] or {}
tItem[3321627] = tItem[3321623] or {}
tItem[3321628] = tItem[3321623] or {}
tItem[3321629] = tItem[3321623] or {}
tItem[3321630] = tItem[3321623] or {}
tItem[3321631] = tItem[3321623] or {}
tItem[3321632] = tItem[3321623] or {}


-- 100PointsChiPack
tItem[3600101] = tItem[3600101] or {}
tItem[3600101]["Function"] = function(nItemId,sItemName)
	local nUserId = Get_UserId()
	if User_IsCross(nUserId) then
		Sys_MsgBox(tCrossServerBestHeroPackage_Text["FuUse"])
		return
	end
	RewardTemplate_UseItemAndMsg(tCrossServerBestHeroPackage_Award[nItemId])
end	
tItem[3600102] = tItem[3600101] or {}    -- 200PointsChiPack
tItem[3600103] = tItem[3600101] or {}    -- 300PointsChiPack
tItem[3600104] = tItem[3600101] or {}    -- 400PointsChiPack
tItem[3600105] = tItem[3600101] or {}    -- 500PointsChiPack
tItem[3600106] = tItem[3600101] or {}    -- 600PointsChiPack
tItem[3600107] = tItem[3600101] or {}    -- 700PointsChiPack
tItem[3600108] = tItem[3600101] or {}    -- 800PointsChiPack
tItem[3600109] = tItem[3600101] or {}    -- 900PointsChiPack
tItem[3600110] = tItem[3600101] or {}    -- 1000PointsChiPac

