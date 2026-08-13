------------------------------------------------------------------------------------
--Name：            190214[英文征服][活动脚本]玩雷神有好礼（3.12-3.18）
--Creator:      杨艳
--Created:     2019/02/14
------------------------------------------------------------------------------------


--命名前缀
--RaytheonGoodPack_

--logid： 12001307


-- 物品

-------------------------------------------数据部分-----------------------------------------

--基本数据
local tRaytheonGoodPack_Data = {}
	
	tRaytheonGoodPack_Data["Level"] = 1
	tRaytheonGoodPack_Data["Metempsychosis"] = 0
	
	tRaytheonGoodPack_Data[1] = {}
	tRaytheonGoodPack_Data[1]["Level"] = 100
	tRaytheonGoodPack_Data[1]["Metempsychosis"] = 1
	
	tRaytheonGoodPack_Data[2] = {}
	tRaytheonGoodPack_Data[2]["Level"] = 100
	tRaytheonGoodPack_Data[2]["Metempsychosis"] = 2
	
--stc掩码表
local tRaytheonGoodPack_Stc = {}
	tRaytheonGoodPack_Stc["EventType"] = {}
	tRaytheonGoodPack_Stc["DataType"] = {}
	
	--记录是否领取转职、创建斗神礼包   两个公用一个掩码
	tRaytheonGoodPack_Stc["EventType"][1] = 190
	tRaytheonGoodPack_Stc["DataType"][1] = 92
	
local tRaytheonGoodPack_Reward = {}

	-- 创建斗神好礼
	tRaytheonGoodPack_Reward["Login"] = {}
	tRaytheonGoodPack_Reward["Login"]["RewardItem"] = {}
	tRaytheonGoodPack_Reward["Login"]["RewardItem"][1] = {}
	tRaytheonGoodPack_Reward["Login"]["RewardItem"][1]["Id"] = 3320225
	tRaytheonGoodPack_Reward["Login"]["RewardItem"][1]["Attr"] = "0 1"
	tRaytheonGoodPack_Reward["Login"]["RewardItem"][2] = {}
	tRaytheonGoodPack_Reward["Login"]["RewardItem"][2]["Id"] = 3320226
	tRaytheonGoodPack_Reward["Login"]["RewardItem"][2]["Attr"] = "0 1"
	tRaytheonGoodPack_Reward["Login"]["RewardItem"][3] = {}
	tRaytheonGoodPack_Reward["Login"]["RewardItem"][3]["Id"] = 3320227
	tRaytheonGoodPack_Reward["Login"]["RewardItem"][3]["Attr"] = "0 1"
	tRaytheonGoodPack_Reward["Login"]["RewardItem"][4] = {}
	tRaytheonGoodPack_Reward["Login"]["RewardItem"][4]["Id"] = 3320228
	tRaytheonGoodPack_Reward["Login"]["RewardItem"][4]["Attr"] = "0 1"
	tRaytheonGoodPack_Reward["Login"]["RewardItem"][5] = {}
	tRaytheonGoodPack_Reward["Login"]["RewardItem"][5]["Id"] = 3320229
	tRaytheonGoodPack_Reward["Login"]["RewardItem"][5]["Attr"] = "0 1"
	tRaytheonGoodPack_Reward["Login"]["RewardItem"][6] = {}
	tRaytheonGoodPack_Reward["Login"]["RewardItem"][6]["Id"] = 3320230
	tRaytheonGoodPack_Reward["Login"]["RewardItem"][6]["Attr"] = "0 1"
	tRaytheonGoodPack_Reward["Login"]["RewardItem"][7] = {}
	tRaytheonGoodPack_Reward["Login"]["RewardItem"][7]["Id"] = 3320231
	tRaytheonGoodPack_Reward["Login"]["RewardItem"][7]["Attr"] = "0 1"
	tRaytheonGoodPack_Reward["Login"]["LogId"] = 12001307
	tRaytheonGoodPack_Reward["Login"]["RewardEffect"] = {}
	tRaytheonGoodPack_Reward["Login"]["RewardEffect"]["SzObj"] = "self"
	tRaytheonGoodPack_Reward["Login"]["RewardEffect"]["Effect"] = "angelwing"	
	
	--转职好礼
	tRaytheonGoodPack_Reward["TurnOccupation"] = {}
	tRaytheonGoodPack_Reward["TurnOccupation"]["RewardItem"] = {}
	tRaytheonGoodPack_Reward["TurnOccupation"]["RewardItem"][1] = {}
	tRaytheonGoodPack_Reward["TurnOccupation"]["RewardItem"][1]["Id"] = 3320232
	tRaytheonGoodPack_Reward["TurnOccupation"]["RewardItem"][1]["Attr"] = "0 1"
	tRaytheonGoodPack_Reward["TurnOccupation"]["RewardItem"][2] = {}
	tRaytheonGoodPack_Reward["TurnOccupation"]["RewardItem"][2]["Id"] = 3320233
	tRaytheonGoodPack_Reward["TurnOccupation"]["RewardItem"][2]["Attr"] = "0 1"
	tRaytheonGoodPack_Reward["TurnOccupation"]["LogId"] = 12001307
	tRaytheonGoodPack_Reward["TurnOccupation"]["RewardEffect"] = {}
	tRaytheonGoodPack_Reward["TurnOccupation"]["RewardEffect"]["SzObj"] = "self"
	tRaytheonGoodPack_Reward["TurnOccupation"]["RewardEffect"]["Effect"] = "angelwing"	
	
	-- 3320225,'斗士极品装备包',9
	tRaytheonGoodPack_Reward[3320225] = {}
	tRaytheonGoodPack_Reward[3320225]["EmoneyLog"] = "350	22005	0	0	1	"
	tRaytheonGoodPack_Reward[3320225]["Level"] = 97
	tRaytheonGoodPack_Reward[3320225]["Mete"] = 0
	tRaytheonGoodPack_Reward[3320225]["RewardItem"] = {}
	tRaytheonGoodPack_Reward[3320225]["RewardItem"][1] = {}
	tRaytheonGoodPack_Reward[3320225]["RewardItem"][1]["Id"] = 681199
	tRaytheonGoodPack_Reward[3320225]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4"
	tRaytheonGoodPack_Reward[3320225]["RewardItem"][2] = {}
	tRaytheonGoodPack_Reward[3320225]["RewardItem"][2]["Id"] = 680199
	tRaytheonGoodPack_Reward[3320225]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4"
	tRaytheonGoodPack_Reward[3320225]["RewardItem"][3] = {}
	tRaytheonGoodPack_Reward[3320225]["RewardItem"][3]["Id"] = 102089
	tRaytheonGoodPack_Reward[3320225]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4"
	tRaytheonGoodPack_Reward[3320225]["RewardItem"][4] = {}
	tRaytheonGoodPack_Reward[3320225]["RewardItem"][4]["Id"] = 147089
	tRaytheonGoodPack_Reward[3320225]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4"
	tRaytheonGoodPack_Reward[3320225]["LogId"] = 12001307
	tRaytheonGoodPack_Reward[3320225]["RewardEffect"] = {}
	tRaytheonGoodPack_Reward[3320225]["RewardEffect"]["SzObj"] = "self"
	tRaytheonGoodPack_Reward[3320225]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 3320226,'装备福利包',9,984
	tRaytheonGoodPack_Reward[3320226] = {}
	tRaytheonGoodPack_Reward[3320226]["EmoneyLog"] = "350	22006	0	0	1	"
	tRaytheonGoodPack_Reward[3320226]["Level"] = 30
	tRaytheonGoodPack_Reward[3320226]["Mete"] = 0
	tRaytheonGoodPack_Reward[3320226]["RewardItem"] = {}
	tRaytheonGoodPack_Reward[3320226]["RewardItem"][1] = {}
	tRaytheonGoodPack_Reward[3320226]["RewardItem"][1]["Id"] = 120089
	tRaytheonGoodPack_Reward[3320226]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3"
	tRaytheonGoodPack_Reward[3320226]["RewardItem"][2] = {}
	tRaytheonGoodPack_Reward[3320226]["RewardItem"][2]["Id"] = 150099
	tRaytheonGoodPack_Reward[3320226]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3"
	tRaytheonGoodPack_Reward[3320226]["RewardItem"][3] = {}
	tRaytheonGoodPack_Reward[3320226]["RewardItem"][3]["Id"] = 160099
	tRaytheonGoodPack_Reward[3320226]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3"
	tRaytheonGoodPack_Reward[3320226]["RewardItem"][4] = {}
	tRaytheonGoodPack_Reward[3320226]["RewardItem"][4]["Id"] = 3007032 
	tRaytheonGoodPack_Reward[3320226]["RewardItem"][4]["Attr"] = "0 1 3"
	tRaytheonGoodPack_Reward[3320226]["RewardItem"][5] = {}
	tRaytheonGoodPack_Reward[3320226]["RewardItem"][5]["Id"] = 203008
	tRaytheonGoodPack_Reward[3320226]["RewardItem"][5]["Attr"] = "0 1 3"
	tRaytheonGoodPack_Reward[3320226]["RewardItem"][6] = {}
	tRaytheonGoodPack_Reward[3320226]["RewardItem"][6]["Id"] = 201008
	tRaytheonGoodPack_Reward[3320226]["RewardItem"][6]["Attr"] = "0 1 3"
	tRaytheonGoodPack_Reward[3320226]["RewardItem"][7] = {}
	tRaytheonGoodPack_Reward[3320226]["RewardItem"][7]["Id"] = 202008
	tRaytheonGoodPack_Reward[3320226]["RewardItem"][7]["Attr"] = "0 1 3"
	tRaytheonGoodPack_Reward[3320226]["RewardItem"][8] = {}
	tRaytheonGoodPack_Reward[3320226]["RewardItem"][8]["Id"] = 204008
	tRaytheonGoodPack_Reward[3320226]["RewardItem"][8]["Attr"] = "0 1 3"
	tRaytheonGoodPack_Reward[3320226]["LogId"] = 12001307
	tRaytheonGoodPack_Reward[3320226]["RewardEffect"] = {}
	tRaytheonGoodPack_Reward[3320226]["RewardEffect"]["SzObj"] = "self"
	tRaytheonGoodPack_Reward[3320226]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 3320227,'斗士85冲级包',9,9
	tRaytheonGoodPack_Reward[3320227] = {}
	tRaytheonGoodPack_Reward[3320227]["LimitData"] = 10
	tRaytheonGoodPack_Reward[3320227]["nEventType"] = 190
	tRaytheonGoodPack_Reward[3320227]["nDataType"] = 93
	tRaytheonGoodPack_Reward[3320227]["Level"] = 85
	tRaytheonGoodPack_Reward[3320227]["Mete"] = 0
	tRaytheonGoodPack_Reward[3320227]["EmoneyLog"] = "350	22007	0	0	1	"
	tRaytheonGoodPack_Reward[3320227]["RewardItem"] = {}
	tRaytheonGoodPack_Reward[3320227]["RewardItem"][1] = {}
	tRaytheonGoodPack_Reward[3320227]["RewardItem"][1]["Id"] = 721261
	tRaytheonGoodPack_Reward[3320227]["RewardItem"][1]["Attr"] = "0 1 3"
	tRaytheonGoodPack_Reward[3320227]["RewardItem"][2] = {}
	tRaytheonGoodPack_Reward[3320227]["RewardItem"][2]["Id"] = 3311174
	tRaytheonGoodPack_Reward[3320227]["RewardItem"][2]["Attr"] = "0 1 3"
	tRaytheonGoodPack_Reward[3320227]["RewardItem"][3] = {}
	tRaytheonGoodPack_Reward[3320227]["RewardItem"][3]["Id"] = 723087
	tRaytheonGoodPack_Reward[3320227]["RewardItem"][3]["Attr"] = "0 2 3"
	tRaytheonGoodPack_Reward[3320227]["RewardItem"][4] = {}
	tRaytheonGoodPack_Reward[3320227]["RewardItem"][4]["Id"] = 723700
	tRaytheonGoodPack_Reward[3320227]["RewardItem"][4]["Attr"] = "0 5 3"
	tRaytheonGoodPack_Reward[3320227]["RewardItem"][5] = {}
	tRaytheonGoodPack_Reward[3320227]["RewardItem"][5]["Id"] = 1088000
	tRaytheonGoodPack_Reward[3320227]["RewardItem"][5]["Attr"] = "0 2 3"
	tRaytheonGoodPack_Reward[3320227]["RewardCultivation"] = {}
	tRaytheonGoodPack_Reward[3320227]["RewardCultivation"]["Value"] = 2000
	tRaytheonGoodPack_Reward[3320227]["LogId"] = 12001307
	tRaytheonGoodPack_Reward[3320227]["RewardEffect"] = {}
	tRaytheonGoodPack_Reward[3320227]["RewardEffect"]["SzObj"] = "self"
	tRaytheonGoodPack_Reward[3320227]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 3320228,'斗士110冲级包',9,
	tRaytheonGoodPack_Reward[3320228] = {}
	tRaytheonGoodPack_Reward[3320228]["LimitData"] = 10
	tRaytheonGoodPack_Reward[3320228]["nEventType"] = 190
	tRaytheonGoodPack_Reward[3320228]["nDataType"] = 94
	tRaytheonGoodPack_Reward[3320228]["Level"] = 110
	tRaytheonGoodPack_Reward[3320228]["Mete"] = 0
	tRaytheonGoodPack_Reward[3320228]["EmoneyLog"] = "350	22008	0	0	1	"
	tRaytheonGoodPack_Reward[3320228]["RewardItem"] = {}
	tRaytheonGoodPack_Reward[3320228]["RewardItem"][1] = {}
	tRaytheonGoodPack_Reward[3320228]["RewardItem"][1]["Id"] = 3003124
	tRaytheonGoodPack_Reward[3320228]["RewardItem"][1]["Attr"] = "0 30 3"
	tRaytheonGoodPack_Reward[3320228]["RewardItem"][2] = {}
	tRaytheonGoodPack_Reward[3320228]["RewardItem"][2]["Id"] = 3003125
	tRaytheonGoodPack_Reward[3320228]["RewardItem"][2]["Attr"] = "0 30 3"
	tRaytheonGoodPack_Reward[3320228]["RewardItem"][3] = {}
	tRaytheonGoodPack_Reward[3320228]["RewardItem"][3]["Id"] = 721259
	tRaytheonGoodPack_Reward[3320228]["RewardItem"][3]["Attr"] = "0 1 3"
	tRaytheonGoodPack_Reward[3320228]["RewardItem"][4] = {}
	tRaytheonGoodPack_Reward[3320228]["RewardItem"][4]["Id"] = 3009001
	tRaytheonGoodPack_Reward[3320228]["RewardItem"][4]["Attr"] = "0 3 0 2880 1"
	tRaytheonGoodPack_Reward[3320228]["RewardStrengthValue"] = {}
	tRaytheonGoodPack_Reward[3320228]["RewardStrengthValue"]["Value"] = 2000
	tRaytheonGoodPack_Reward[3320228]["RewardRepairValue"] = {}
	tRaytheonGoodPack_Reward[3320228]["RewardRepairValue"]["Value"] = 1000
	tRaytheonGoodPack_Reward[3320228]["LogId"] = 12001307
	tRaytheonGoodPack_Reward[3320228]["RewardEffect"] = {}
	tRaytheonGoodPack_Reward[3320228]["RewardEffect"]["SzObj"] = "self"
	tRaytheonGoodPack_Reward[3320228]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 3320229,'炼气提升礼盒',9,9
	tRaytheonGoodPack_Reward[3320229] = {}
	tRaytheonGoodPack_Reward[3320229]["LimitData"] = 10
	tRaytheonGoodPack_Reward[3320229]["nEventType"] = 190
	tRaytheonGoodPack_Reward[3320229]["nDataType"] = 95
	tRaytheonGoodPack_Reward[3320229]["Level"] = 110
	tRaytheonGoodPack_Reward[3320229]["Mete"] = 0
	tRaytheonGoodPack_Reward[3320229]["NeedEmoney"] = 499
	tRaytheonGoodPack_Reward[3320229]["EmoneyLog"] = "350	22009	499	499	1	"
	tRaytheonGoodPack_Reward[3320229]["RewardItem"] = {}
	tRaytheonGoodPack_Reward[3320229]["RewardItem"][1] = {}
	tRaytheonGoodPack_Reward[3320229]["RewardItem"][1]["Id"] = 3005360
	tRaytheonGoodPack_Reward[3320229]["RewardItem"][1]["Attr"] = "0 1 3"
	tRaytheonGoodPack_Reward[3320229]["RewardStrengthValue"] = {}
	tRaytheonGoodPack_Reward[3320229]["RewardStrengthValue"]["Value"] = 100000
	tRaytheonGoodPack_Reward[3320229]["LogId"] = 12001307
	tRaytheonGoodPack_Reward[3320229]["RewardEffect"] = {}
	tRaytheonGoodPack_Reward[3320229]["RewardEffect"]["SzObj"] = "self"
	tRaytheonGoodPack_Reward[3320229]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 3320230,'自创武功提升礼盒'
	tRaytheonGoodPack_Reward[3320230] = {}
	tRaytheonGoodPack_Reward[3320230]["LimitData"] = 10
	tRaytheonGoodPack_Reward[3320230]["nEventType"] = 190
	tRaytheonGoodPack_Reward[3320230]["nDataType"] = 96
	tRaytheonGoodPack_Reward[3320230]["Level"] = 110
	tRaytheonGoodPack_Reward[3320230]["Mete"] = 0
	tRaytheonGoodPack_Reward[3320230]["NeedEmoney"] = 399
	tRaytheonGoodPack_Reward[3320230]["EmoneyLog"] = "350	22010	399	399	1	"
	tRaytheonGoodPack_Reward[3320230]["RewardItem"] = {}
	tRaytheonGoodPack_Reward[3320230]["RewardItem"][1] = {}
	tRaytheonGoodPack_Reward[3320230]["RewardItem"][1]["Id"] = 3002926
	tRaytheonGoodPack_Reward[3320230]["RewardItem"][1]["Attr"] = "0 100 3"
	tRaytheonGoodPack_Reward[3320230]["RewardItem"][2] = {}
	tRaytheonGoodPack_Reward[3320230]["RewardItem"][2]["Id"] = 3003126
	tRaytheonGoodPack_Reward[3320230]["RewardItem"][2]["Attr"] = "0 100 3"
	tRaytheonGoodPack_Reward[3320230]["RewardItem"][3] = {}
	tRaytheonGoodPack_Reward[3320230]["RewardItem"][3]["Id"] = 3002030
	tRaytheonGoodPack_Reward[3320230]["RewardItem"][3]["Attr"] = "0 100 3"
	tRaytheonGoodPack_Reward[3320230]["LogId"] = 12001307
	tRaytheonGoodPack_Reward[3320230]["RewardEffect"] = {}
	tRaytheonGoodPack_Reward[3320230]["RewardEffect"]["SzObj"] = "self"
	tRaytheonGoodPack_Reward[3320230]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 3320231,'装备追加提升礼盒'
	tRaytheonGoodPack_Reward[3320231] = {}
	tRaytheonGoodPack_Reward[3320231]["LimitData"] = 10
	tRaytheonGoodPack_Reward[3320231]["nEventType"] = 190
	tRaytheonGoodPack_Reward[3320231]["nDataType"] = 97
	tRaytheonGoodPack_Reward[3320231]["Level"] = 110
	tRaytheonGoodPack_Reward[3320231]["Mete"] = 0
	tRaytheonGoodPack_Reward[3320231]["NeedEmoney"] = 299
	tRaytheonGoodPack_Reward[3320231]["EmoneyLog"] = "350	22011	299	299	1	"
	tRaytheonGoodPack_Reward[3320231]["RewardItem"] = {}
	tRaytheonGoodPack_Reward[3320231]["RewardItem"][1] = {}
	tRaytheonGoodPack_Reward[3320231]["RewardItem"][1]["Id"] = 730006
	tRaytheonGoodPack_Reward[3320231]["RewardItem"][1]["Attr"] = "0 1 3"
	tRaytheonGoodPack_Reward[3320231]["LogId"] = 12001307
	tRaytheonGoodPack_Reward[3320231]["RewardEffect"] = {}
	tRaytheonGoodPack_Reward[3320231]["RewardEffect"]["SzObj"] = "self"
	tRaytheonGoodPack_Reward[3320231]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 3320232,'乾坤九转神露包',9
	tRaytheonGoodPack_Reward[3320232] = {}
	tRaytheonGoodPack_Reward[3320232]["NeedEmoney"] = 10
	tRaytheonGoodPack_Reward[3320232]["EmoneyLog"] = "350	22012	10	10	1	"
	tRaytheonGoodPack_Reward[3320232]["RewardItem"] = {}
	tRaytheonGoodPack_Reward[3320232]["RewardItem"][1] = {}
	tRaytheonGoodPack_Reward[3320232]["RewardItem"][1]["Id"] = 711083
	tRaytheonGoodPack_Reward[3320232]["RewardItem"][1]["Attr"] = "0 10 3"
	tRaytheonGoodPack_Reward[3320232]["LogId"] = 12001307
	tRaytheonGoodPack_Reward[3320232]["RewardEffect"] = {}
	tRaytheonGoodPack_Reward[3320232]["RewardEffect"]["SzObj"] = "self"
	tRaytheonGoodPack_Reward[3320232]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 3320233,'斗士成长礼盒',9,9
	tRaytheonGoodPack_Reward[3320233] = {}
	tRaytheonGoodPack_Reward[3320233][1] = {}
	tRaytheonGoodPack_Reward[3320233][1]["nEventType"] = 191
	tRaytheonGoodPack_Reward[3320233][1]["nDataType"] = 01
	tRaytheonGoodPack_Reward[3320233][1]["EmoneyLog"] = "350	22015	0	0	1	"
	tRaytheonGoodPack_Reward[3320233][1]["RewardItem"] = {}
	tRaytheonGoodPack_Reward[3320233][1]["RewardItem"][1] = {}
	tRaytheonGoodPack_Reward[3320233][1]["RewardItem"][1]["Id"] = 3320225
	tRaytheonGoodPack_Reward[3320233][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tRaytheonGoodPack_Reward[3320233][1]["LogId"] = 12001307
	tRaytheonGoodPack_Reward[3320233][1]["RewardEffect"] = {}
	tRaytheonGoodPack_Reward[3320233][1]["RewardEffect"]["SzObj"] = "self"
	tRaytheonGoodPack_Reward[3320233][1]["RewardEffect"]["Effect"] = "angelwing"
	
	tRaytheonGoodPack_Reward[3320233][2] = {}
	tRaytheonGoodPack_Reward[3320233][2]["nEventType"] = 191
	tRaytheonGoodPack_Reward[3320233][2]["nDataType"] = 02	
	tRaytheonGoodPack_Reward[3320233][2]["EmoneyLog"] = "350	22013	0	0	1	"
	tRaytheonGoodPack_Reward[3320233][2]["RewardEMoneyMono"] = {}
	tRaytheonGoodPack_Reward[3320233][2]["RewardEMoneyMono"]["Value"] = 500
	tRaytheonGoodPack_Reward[3320233][2]["LogId"] = 12001307
	tRaytheonGoodPack_Reward[3320233][2]["RewardEffect"] = {}
	tRaytheonGoodPack_Reward[3320233][2]["RewardEffect"]["SzObj"] = "self"
	tRaytheonGoodPack_Reward[3320233][2]["RewardEffect"]["Effect"] = "angelwing"
	
	tRaytheonGoodPack_Reward[3320233][3] = {}
	tRaytheonGoodPack_Reward[3320233][3]["nEventType"] = 191
	tRaytheonGoodPack_Reward[3320233][3]["nDataType"] = 03
	tRaytheonGoodPack_Reward[3320233][3]["EmoneyLog"] = "350	22014	0	0	1	"
	tRaytheonGoodPack_Reward[3320233][3]["RewardEMoneyMono"] = {}
	tRaytheonGoodPack_Reward[3320233][3]["RewardEMoneyMono"]["Value"] = 1000
	tRaytheonGoodPack_Reward[3320233][3]["LogId"] = 12001307
	tRaytheonGoodPack_Reward[3320233][3]["RewardEffect"] = {}
	tRaytheonGoodPack_Reward[3320233][3]["RewardEffect"]["SzObj"] = "self"
	tRaytheonGoodPack_Reward[3320233][3]["RewardEffect"]["Effect"] = "angelwing"
	
local tRaytheonGoodPack_Log = {}	
	tRaytheonGoodPack_Log["DelItem"] = "0,0,%d,1,12001307,2,0,0"	
	

---------------------------------逻辑部分--------------------------------------------- 
function RaytheonGoodPack_OpenBag1(nItemId,nFlag)
	local nUserId = Get_UserId()
	--判断时间
	if CommonFunc_GetBeforeActivityTime(tActivityTime["RaytheonGoodPack"]["ItemUseTime"]) then
		return
	end
	if not Sys_ChkFullTime(tActivityTime["RaytheonGoodPack"]["ItemUseTime"]) then
		if Item_ChkItem(nItemId) then 
			if Item_DelItem(nItemId) then
				local sDelItemLog = string.format(tRaytheonGoodPack_Log["DelItem"],nItemId)
				Sys_SaveActionFestivalLog(sDelItemLog)
				User_TalkChannel2005(tRaytheonGoodPack_Text["Sys"]["TimeOut"])
			end
		end 
		return
	end
	if not Item_ChkItem(nItemId) then
		return
	end
	
	--判断等级
	if nFlag == 2 then 
		if not User_JudgeLevelAndMetempsychosis(tRaytheonGoodPack_Data[1]["Level"],tRaytheonGoodPack_Data[1]["Metempsychosis"]) then
			Sys_MsgBox(tRaytheonGoodPack_Text["Msg"]["LevelLess1"])
			return
		end
	end 
	if nFlag == 3 then 
		if not User_JudgeLevelAndMetempsychosis(tRaytheonGoodPack_Data[2]["Level"],tRaytheonGoodPack_Data[2]["Metempsychosis"])  then 
			Sys_MsgBox(tRaytheonGoodPack_Text["Msg"]["LevelLess2"])
			return
		end 
	end 
	
	if tRaytheonGoodPack_Reward[nItemId][nFlag]["nEventType"] ~= nil and tRaytheonGoodPack_Reward[nItemId][nFlag]["nDataType"] ~= nil then
		local nEvent = tRaytheonGoodPack_Reward[nItemId][nFlag]["nEventType"]
		local nType = tRaytheonGoodPack_Reward[nItemId][nFlag]["nDataType"]
		local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
		
		if nData > 0 then 
			User_TalkChannel2005(tRaytheonGoodPack_Text["Sys"]["GotReward"])
			return
		end 	
	end 

	local nSpaceNum = RewardTemplate_GetRewardSpace(tRaytheonGoodPack_Reward[nItemId][nFlag])

	if nSpaceNum > 0 and not User_CheckLeftSpace(nSpaceNum) then
		local sText = tRaytheonGoodPack_Text["Sys"]["NoSpace"]
		User_TalkChannel2005(string.format(sText,nSpaceNum))
		return
	end
	
	--赠点上限判断
	if tRaytheonGoodPack_Reward[nItemId][nFlag]["RewardEMoneyMono"] ~= nil then
		if tRaytheonGoodPack_Reward[nItemId][nFlag]["RewardEMoneyMono"]["Value"] ~= nil then 
			if Get_UserMonoEMoney() + tRaytheonGoodPack_Reward[nItemId][nFlag]["RewardEMoneyMono"]["Value"] > G_User_MaxEmoneyMono then
				User_TalkChannel2005(tRaytheonGoodPack_Text["Sys"]["EmoneyMoMoLimit"])
				return
			end
		end
	end 
	if tRaytheonGoodPack_Reward[nItemId][nFlag]["nEventType"] ~= nil and tRaytheonGoodPack_Reward[nItemId][nFlag]["nDataType"] ~= nil then
		local nEvent = tRaytheonGoodPack_Reward[nItemId][nFlag]["nEventType"]
		local nType = tRaytheonGoodPack_Reward[nItemId][nFlag]["nDataType"]
		Task_AddStatistic(nEvent,nType,1,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end 
	
	RewardTemplate_UseItemAndMsg(tRaytheonGoodPack_Reward[nItemId][nFlag])	

end 


function RaytheonGoodPack_OpenPack(nItemId)

	local nUserId = Get_UserId()
	--判断时间
	if CommonFunc_GetBeforeActivityTime(tActivityTime["RaytheonGoodPack"]["ItemUseTime"]) then
		return
	end
	if not Sys_ChkFullTime(tActivityTime["RaytheonGoodPack"]["ItemUseTime"]) then
		if Item_ChkItem(nItemId) then 
			if Item_DelItem(nItemId) then
				local sDelItemLog = string.format(tRaytheonGoodPack_Log["DelItem"],nItemId)
				Sys_SaveActionFestivalLog(sDelItemLog)
				User_TalkChannel2005(tRaytheonGoodPack_Text["Sys"]["TimeOut"])
			end
		end 
		return
	end

	if tRaytheonGoodPack_Reward[nItemId]["Level"] ~= nil and tRaytheonGoodPack_Reward[nItemId]["Mete"] ~= nil then 
		if not User_JudgeLevelAndMetempsychosis(tRaytheonGoodPack_Reward[nItemId]["Level"],tRaytheonGoodPack_Reward[nItemId]["Mete"]) then
			if tRaytheonGoodPack_Text["Msg"]["NotLevel"][nItemId] ~= nil then 
				Sys_MsgBox(tRaytheonGoodPack_Text["Msg"]["NotLevel"][nItemId])
			end 
			return
		end
	end 
	
	if tRaytheonGoodPack_Reward[nItemId]["NeedEmoney"] ~= nil then 
		local nNeedEmoney = tRaytheonGoodPack_Reward[nItemId]["NeedEmoney"]
		local nUserEmoney = Get_UserEMoney()
		if nUserEmoney < nNeedEmoney then
			--天石不足
			Sys_MsgBox(tRaytheonGoodPack_Text["Msg"]["NoMoney"])
			return		
		end 
	end 
	
	if tRaytheonGoodPack_Reward[nItemId]["nEventType"] ~= nil and tRaytheonGoodPack_Reward[nItemId]["nDataType"] ~= nil then 
		local nEvent = tRaytheonGoodPack_Reward[nItemId]["nEventType"]
		local nType = tRaytheonGoodPack_Reward[nItemId]["nDataType"]
		if not Task_StcInterval(nEvent,nType,1,4,nUserId) then
			Sys_MsgBox(tRaytheonGoodPack_Text["Msg"]["HaveGot"])
			return
		end
		local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
		if tRaytheonGoodPack_Reward[nItemId]["LimitData"] ~= nil and nData >= tRaytheonGoodPack_Reward[nItemId]["LimitData"] then 
			if Item_ChkItem(nItemId) then 
				if Item_DelItem(nItemId) then
					local sDelItemLog = string.format(tRaytheonGoodPack_Log["DelItem"],nItemId)
					Sys_SaveActionFestivalLog(sDelItemLog)
					User_TalkChannel2005(tRaytheonGoodPack_Text["Sys"]["NoTimes"])
				end
			end 
			return
		end 
	end 
	if not Item_ChkItem(nItemId) then
		return
	end 
	-- 背包空间
	local nSpaceNum = RewardTemplate_GetRewardSpace(tRaytheonGoodPack_Reward[nItemId])
	if nSpaceNum > 0 and not User_CheckLeftSpace(nSpaceNum) then
		local sText = tRaytheonGoodPack_Text["Sys"]["NoSpace"]
		User_TalkChannel2005(string.format(sText,nSpaceNum))
		return
	end

	if tRaytheonGoodPack_Reward[nItemId]["NeedEmoney"] ~= nil then 

		if User_AddEMoney(-1*tRaytheonGoodPack_Reward[nItemId]["NeedEmoney"]) then
	
			if tRaytheonGoodPack_Reward[nItemId]["nEventType"] ~= nil and tRaytheonGoodPack_Reward[nItemId]["nDataType"] ~= nil then 	
				local nEvent = tRaytheonGoodPack_Reward[nItemId]["nEventType"]
				local nType = tRaytheonGoodPack_Reward[nItemId]["nDataType"]
				local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
			
				if tRaytheonGoodPack_Reward[nItemId]["LimitData"] ~= nil and nData == tRaytheonGoodPack_Reward[nItemId]["LimitData"]-1 then 
				
					if Item_DelItem(nItemId) then
				
						local sDelItemLog = string.format(tRaytheonGoodPack_Log["DelItem"],nItemId)
						Sys_SaveActionFestivalLog(sDelItemLog)
						Task_AddStatistic(nEvent,nType,1,1,nUserId)
						Task_SetStcTimestamp(nEvent,nType,0,nUserId)
						RewardTemplate_UseItemAndMsg(tRaytheonGoodPack_Reward[nItemId])	
						return
					end
				end 
	
				Task_AddStatistic(nEvent,nType,1,1,nUserId)
				Task_SetStcTimestamp(nEvent,nType,0,nUserId)
				RewardTemplate_UseItemAndMsg(tRaytheonGoodPack_Reward[nItemId])	
		
			else
		
				if Item_DelItem(nItemId) then
					local sDelItemLog = string.format(tRaytheonGoodPack_Log["DelItem"],nItemId)
					Sys_SaveActionFestivalLog(sDelItemLog)
					RewardTemplate_UseItemAndMsg(tRaytheonGoodPack_Reward[nItemId])	
				end
				
			end 
	
		end 
	else

		if tRaytheonGoodPack_Reward[nItemId]["nEventType"] ~= nil and tRaytheonGoodPack_Reward[nItemId]["nDataType"] ~= nil then 	
			local nEvent = tRaytheonGoodPack_Reward[nItemId]["nEventType"]
			local nType = tRaytheonGoodPack_Reward[nItemId]["nDataType"]
			local nData = Get_UserStatisticValue(nEvent,nType,nUserId)

			if tRaytheonGoodPack_Reward[nItemId]["LimitData"] ~= nil and nData == tRaytheonGoodPack_Reward[nItemId]["LimitData"]-1 then 
	
				if Item_DelItem(nItemId) then
					local sDelItemLog = string.format(tRaytheonGoodPack_Log["DelItem"],nItemId)
					Sys_SaveActionFestivalLog(sDelItemLog)
					Task_AddStatistic(nEvent,nType,1,1,nUserId)
					Task_SetStcTimestamp(nEvent,nType,0,nUserId)
					RewardTemplate_UseItemAndMsg(tRaytheonGoodPack_Reward[nItemId])	
					return
				end
			end 
			Task_AddStatistic(nEvent,nType,1,1,nUserId)
			Task_SetStcTimestamp(nEvent,nType,0,nUserId)
			RewardTemplate_UseItemAndMsg(tRaytheonGoodPack_Reward[nItemId])	
	
		else

			if Item_DelItem(nItemId) then
				local sDelItemLog = string.format(tRaytheonGoodPack_Log["DelItem"],nItemId)
				Sys_SaveActionFestivalLog(sDelItemLog)
				RewardTemplate_UseItemAndMsg(tRaytheonGoodPack_Reward[nItemId])	
			end
		end 
	end 


end 


--判断是否是斗神职业
function RaytheonGoodPack_CheckOccupation()
	local nPro = Get_UserProfession()
	if nPro >= 90 and nPro <= 95 then
		return true
	else
		return false
	end
end 

--领取转职好礼
function RaytheonGoodPack_GetReturnPack(nNpcId)

	local nUserId = Get_UserId()
	--判断时间
	if CommonFunc_GetBeforeActivityTime(tActivityTime["RaytheonGoodPack"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end

	if not Sys_ChkFullTime(tActivityTime["RaytheonGoodPack"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	--判断职业
    if not RaytheonGoodPack_CheckOccupation() then 
		Sys_MsgBox(tRaytheonGoodPack_Text["Sys"]["NotOccupation"])
		return
	end 
	
	--判断等级
	-- if not User_JudgeLevelAndMetempsychosis(tRaytheonGoodPack_Data["Level"],tRaytheonGoodPack_Data["Metempsychosis"]) then
		-- Sys_MsgBox(tRaytheonGoodPack_Text["Sys"]["HaveGot"])
		-- return
	-- end
	-- local nUserLev = Get_UserLevel(nUserId)
	local nUserMet = Get_UserMetempsychosis(nUserId)
	if nUserMet >0 then 
		local nEvent = tRaytheonGoodPack_Stc["EventType"][1]
		local nType = tRaytheonGoodPack_Stc["DataType"][1] 

		local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
		if nData > 0 then 
			Sys_MsgBox(tRaytheonGoodPack_Text["Sys"]["HaveGot"])
			return
		end 

		-- 背包空间
		local nSpaceNum = RewardTemplate_GetRewardSpace(tRaytheonGoodPack_Reward["TurnOccupation"])
		if nSpaceNum > 0 and not User_CheckLeftSpace(nSpaceNum) then
			local sText = tRaytheonGoodPack_Text["Sys"]["TurnNoSpace"]
			User_TalkChannel2005(string.format(sText,nSpaceNum))
			return
		end

		Task_SetStatistic(nEvent,nType,1,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		
		RewardTemplate_UseItemAndMsg(tRaytheonGoodPack_Reward["TurnOccupation"])
	else
		Sys_MsgBox(tRaytheonGoodPack_Text["Sys"]["NoTurns"])
	end 
end 

--上线触发 给礼包
function RaytheonGoodPack_Login()
	local nUserId = Get_UserId()
	--判断时间
	if CommonFunc_GetBeforeActivityTime(tActivityTime["RaytheonGoodPack"]["ActivityTime"]) then
		return
	end
	if not Sys_ChkFullTime(tActivityTime["RaytheonGoodPack"]["ActivityTime"]) then
		return
	end
	
	--判断职业
    if not RaytheonGoodPack_CheckOccupation() then 
		return
	end 
	
	local nUserLev = Get_UserLevel(nUserId)
	local nUserMet = Get_UserMetempsychosis(nUserId)
	if nUserLev == 1 and nUserMet == 0 then 
		local nEvent = tRaytheonGoodPack_Stc["EventType"][1]
		local nType = tRaytheonGoodPack_Stc["DataType"][1] 
		
		local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
		
		if nData > 0 then 
			return
		end 
		
		-- 背包空间
		local nSpaceNum = RewardTemplate_GetRewardSpace(tRaytheonGoodPack_Reward["Login"])
		if nSpaceNum > 0 and not User_CheckLeftSpace(nSpaceNum) then
			local sText = tRaytheonGoodPack_Text["Sys"]["LoginNoSpace"]
			User_TalkChannel2005(string.format(sText,nSpaceNum))
			return
		end

		Task_SetStatistic(nEvent,nType,1,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		
		RewardTemplate_UseItemAndMsg(tRaytheonGoodPack_Reward["Login"])
			
	end 
	
end 


------------------------- npc部分------------------------
-- 23791,'转职福利大使',0002,64950
tNpcFace[6495] = 35

tNpcGossip[23791] = tNpcGossip[23791] or DefaultNpc:new{}
tNpcGossip[23791]["OptionHidden"] = 1
tNpcGossip[23791]["DialogueText"] = tRaytheonGoodPack_Text[23791]

--活动时间前
tNpcGossip[23791]["Text1-1"] = {111,112,113}
tNpcGossip[23791]["Text111"] = tRaytheonGoodPack_Text[23791]["Text111"]
tNpcGossip[23791]["Text112"] = tRaytheonGoodPack_Text[23791]["Text112"]
tNpcGossip[23791]["Text113"] = tRaytheonGoodPack_Text[23791]["Text113"]
        
tNpcGossip[23791]["tOption1-1"] = {111}
tNpcGossip[23791]["ChkFunc1-1"] = function()

	return CommonFunc_GetBeforeActivityTime(tActivityTime["RaytheonGoodPack"]["ActivityTime"])

end
tNpcGossip[23791]["Option111"] = tRaytheonGoodPack_Text[23791]["Option111"]

--活动时间后
tNpcGossip[23791]["Text1-2"] = {121,122}
tNpcGossip[23791]["Text121"] = tRaytheonGoodPack_Text[23791]["Text121"]

tNpcGossip[23791]["tOption1-2"] = {121}
tNpcGossip[23791]["ChkFunc1-2"] = function()

	return not Sys_ChkFullTime(tActivityTime["RaytheonGoodPack"]["ActivityTime"])
end
tNpcGossip[23791]["Option121"] = tRaytheonGoodPack_Text[23791]["Option121"]

--未转职成斗士
tNpcGossip[23791]["Text1-3"] = {131,132,133}
tNpcGossip[23791]["Text131"] = tRaytheonGoodPack_Text[23791]["Text131"]
tNpcGossip[23791]["Text132"] = tRaytheonGoodPack_Text[23791]["Text132"]
tNpcGossip[23791]["Text133"] = tRaytheonGoodPack_Text[23791]["Text133"]
      
tNpcGossip[23791]["tOption1-3"] = {131}

tNpcGossip[23791]["ChkFunc1-3"] = function()

	return Sys_ChkFullTime(tActivityTime["RaytheonGoodPack"]["ActivityTime"]) and not RaytheonGoodPack_CheckOccupation()
end
tNpcGossip[23791]["Option131"] = tRaytheonGoodPack_Text[23791]["Option131"]

--已转职成斗士
tNpcGossip[23791]["Text1-4"] = {141,142,143}
tNpcGossip[23791]["Text141"] = tRaytheonGoodPack_Text[23791]["Text141"]
tNpcGossip[23791]["Text142"] = tRaytheonGoodPack_Text[23791]["Text142"]
tNpcGossip[23791]["Text143"] = tRaytheonGoodPack_Text[23791]["Text143"]

tNpcGossip[23791]["tOption1-4"] = {141}

tNpcGossip[23791]["Option141"] = tRaytheonGoodPack_Text[23791]["Option141"]
tNpcGossip[23791]["OptionFunc141"] = "RaytheonGoodPack_GetReturnPack</N>23791"

tNpcGossip[23791]["ChkFunc1-4"] = function()

	return Sys_ChkFullTime(tActivityTime["RaytheonGoodPack"]["ActivityTime"]) and RaytheonGoodPack_CheckOccupation()
end


---------------------------------物品部分---------------------------------------------
-- 3320225,'斗士极品装备包',9,
-- 3320226,'装备福利包',9,9847

-- 3320227,'斗士85冲级包',9,98
-- 3320228,'斗士110冲级包',9,9
-- 3320229,'炼气提升礼盒',9,98
-- 3320230,'自创武功提升礼盒',
-- 3320231,'装备追加提升礼盒',
-- 3320232,'乾坤九转神露包',9,
-- 3320233,'斗士成长礼盒',9,98

tItem[3320225] = tItem[3320225] or {}
tItem[3320225]["Function"] = function(nItemId,sItemName)
	RaytheonGoodPack_OpenPack(nItemId)
end
tItem[3320226] = tItem[3320225] or {}
tItem[3320227] = tItem[3320225] or {}
tItem[3320228] = tItem[3320225] or {}


-- 3320229,'炼气提升礼盒',9,98
tItemFace[3320229] = 490
tItem[3320229] = tItem[3320229] or {}
tItem[3320229]["DialogueText"] = tRaytheonGoodPack_Text[3320229]
tItem[3320229]["Function"] = function(nItemId,sItemName)
	-- 判断物品
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 判断时间后
	if not Sys_ChkFullTime(tActivityTime["RaytheonGoodPack"]["ItemUseTime"]) then
		if Item_DelItem(nItemId) then
			local sDelItemLog = string.format(tRaytheonGoodPack_Log["DelItem"],nItemId)
			Sys_SaveActionFestivalLog(sDelItemLog)
			User_TalkChannel2005(tRaytheonGoodPack_Text["Sys"]["TimeOut"])
		end
		return
	end
	
	LinkItemGossipFunc_New(nItemId,"1-1")
end

tItem[3320229]["Text1-1"] = {110}
tItem[3320229]["Text110"] = tRaytheonGoodPack_Text[3320229]["Text110"]

tItem[3320229]["tOption1-1"] = {111,112}
tItem[3320229]["Option111"] = tRaytheonGoodPack_Text[3320229]["Option111"]
tItem[3320229]["OptionFunc111"] = "RaytheonGoodPack_OpenPack</N>3320229"
tItem[3320229]["Option112"] = tRaytheonGoodPack_Text[3320229]["Option112"]


-- 3320230,'自创武功提升礼盒',9,98
tItemFace[3320230] = 524
tItem[3320230] = tItem[3320230] or {}
tItem[3320230]["DialogueText"] = tRaytheonGoodPack_Text[3320230]
tItem[3320230]["Function"] = function(nItemId,sItemName)
	-- 判断物品
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 判断时间后
	if not Sys_ChkFullTime(tActivityTime["RaytheonGoodPack"]["ItemUseTime"]) then
		if Item_DelItem(nItemId) then
			local sDelItemLog = string.format(tRaytheonGoodPack_Log["DelItem"],nItemId)
			Sys_SaveActionFestivalLog(sDelItemLog)
			User_TalkChannel2005(tRaytheonGoodPack_Text["Sys"]["TimeOut"])
		end
		return
	end
	
	LinkItemGossipFunc_New(nItemId,"1-1")
end

tItem[3320230]["Text1-1"] = {110}
tItem[3320230]["Text110"] = tRaytheonGoodPack_Text[3320230]["Text110"]

tItem[3320230]["tOption1-1"] = {111,112}
tItem[3320230]["Option111"] = tRaytheonGoodPack_Text[3320230]["Option111"]
tItem[3320230]["OptionFunc111"] = "RaytheonGoodPack_OpenPack</N>3320230"
tItem[3320230]["Option112"] = tRaytheonGoodPack_Text[3320230]["Option112"]


-- 3320231,'装备追加提升礼盒
tItemFace[3320231] = 1011
tItem[3320231] = tItem[3320231] or {}
tItem[3320231]["DialogueText"] = tRaytheonGoodPack_Text[3320231]
tItem[3320231]["Function"] = function(nItemId,sItemName)
	-- 判断物品
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 判断时间后
	if not Sys_ChkFullTime(tActivityTime["RaytheonGoodPack"]["ItemUseTime"]) then
		if Item_DelItem(nItemId) then
			local sDelItemLog = string.format(tRaytheonGoodPack_Log["DelItem"],nItemId)
			Sys_SaveActionFestivalLog(sDelItemLog)
			User_TalkChannel2005(tRaytheonGoodPack_Text["Sys"]["TimeOut"])
		end
		return
	end
	
	LinkItemGossipFunc_New(nItemId,"1-1")
end

tItem[3320231]["Text1-1"] = {110}
tItem[3320231]["Text110"] = tRaytheonGoodPack_Text[3320231]["Text110"]

tItem[3320231]["tOption1-1"] = {111,112}
tItem[3320231]["Option111"] = tRaytheonGoodPack_Text[3320231]["Option111"]
tItem[3320231]["OptionFunc111"] = "RaytheonGoodPack_OpenPack</N>3320231"
tItem[3320231]["Option112"] = tRaytheonGoodPack_Text[3320231]["Option112"]

-- 3320232,'乾坤九转神露包
tItemFace[3320232] = 2115
tItem[3320232] = tItem[3320232] or {}
tItem[3320232]["DialogueText"] = tRaytheonGoodPack_Text[3320232]
tItem[3320232]["Function"] = function(nItemId,sItemName)
	-- 判断物品
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 判断时间后
	if not Sys_ChkFullTime(tActivityTime["RaytheonGoodPack"]["ItemUseTime"]) then
		if Item_DelItem(nItemId) then
			local sDelItemLog = string.format(tRaytheonGoodPack_Log["DelItem"],nItemId)
			Sys_SaveActionFestivalLog(sDelItemLog)
			User_TalkChannel2005(tRaytheonGoodPack_Text["Sys"]["TimeOut"])
		end
		return
	end
	
	LinkItemGossipFunc_New(nItemId,"1-1")
end

tItem[3320232]["Text1-1"] = {110}
tItem[3320232]["Text110"] = tRaytheonGoodPack_Text[3320232]["Text110"]

tItem[3320232]["tOption1-1"] = {111,112}
tItem[3320232]["Option111"] = tRaytheonGoodPack_Text[3320232]["Option111"]
tItem[3320232]["OptionFunc111"] = "RaytheonGoodPack_OpenPack</N>3320232"
tItem[3320232]["Option112"] = tRaytheonGoodPack_Text[3320232]["Option112"]

-- 3320233,'斗士成长礼盒',9,98
tItemFace[3320233] = 944
tItem[3320233] = tItem[3320233] or {}
tItem[3320233]["DialogueText"] = tRaytheonGoodPack_Text[3320233]
tItem[3320233]["Function"] = function(nItemId,sItemName)
	local nUserId = Get_UserId()
	-- 判断物品
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 判断时间后
	if not Sys_ChkFullTime(tActivityTime["RaytheonGoodPack"]["ItemUseTime"]) then
		if Item_DelItem(nItemId) then
			local sDelItemLog = string.format(tRaytheonGoodPack_Log["DelItem"],nItemId)
			Sys_SaveActionFestivalLog(sDelItemLog)
			User_TalkChannel2005(tRaytheonGoodPack_Text["Sys"]["TimeOut"])
		end
		return
	end
	local nEvent_1 = tRaytheonGoodPack_Reward[nItemId][1]["nEventType"]
	local nType_1 = tRaytheonGoodPack_Reward[nItemId][1]["nDataType"]
	local nEvent_2 = tRaytheonGoodPack_Reward[nItemId][2]["nEventType"]
	local nType_2 = tRaytheonGoodPack_Reward[nItemId][2]["nDataType"]
	local nEvent_3 = tRaytheonGoodPack_Reward[nItemId][3]["nEventType"]
	local nType_3 = tRaytheonGoodPack_Reward[nItemId][3]["nDataType"]
	local nData_1 = Get_UserStatisticValue(nEvent_1,nType_1,nUserId)
	local nData_2 = Get_UserStatisticValue(nEvent_2,nType_2,nUserId)
	local nData_3 = Get_UserStatisticValue(nEvent_3,nType_3,nUserId)
	if nData_1 > 0 and nData_2 > 0 and nData_3 > 0 then 
		if Item_DelItem(nItemId) then
			local sDelItemLog = string.format(tRaytheonGoodPack_Log["DelItem"],nItemId)
			Sys_SaveActionFestivalLog(sDelItemLog)
			User_TalkChannel2005(tRaytheonGoodPack_Text["Sys"]["TimesUsed"])
		end
		return
	end 
	
	LinkItemGossipFunc_New(nItemId,"1-1")
end

tItem[3320233]["Text1-1"] = {110}
tItem[3320233]["Text110"] = tRaytheonGoodPack_Text[3320233]["Text110"]
tItem[3320233]["ChkFunc1-1"] = function()
	tItem[3320233]["Option111"] = tRaytheonGoodPack_Text[3320233]["Option111"]
	tItem[3320233]["Option112"] = tRaytheonGoodPack_Text[3320233]["Option112"]
	tItem[3320233]["Option113"] = tRaytheonGoodPack_Text[3320233]["Option113"]
	local nEvent_1 = tRaytheonGoodPack_Reward[3320233][1]["nEventType"]
	local nType_1 = tRaytheonGoodPack_Reward[3320233][1]["nDataType"]
	local nEvent_2 = tRaytheonGoodPack_Reward[3320233][2]["nEventType"]
	local nType_2 = tRaytheonGoodPack_Reward[3320233][2]["nDataType"]
	local nEvent_3 = tRaytheonGoodPack_Reward[3320233][3]["nEventType"]
	local nType_3 = tRaytheonGoodPack_Reward[3320233][3]["nDataType"]
	local nData_1 = Get_UserStatisticValue(nEvent_1,nType_1,nUserId)
	local nData_2 = Get_UserStatisticValue(nEvent_2,nType_2,nUserId)
	local nData_3 = Get_UserStatisticValue(nEvent_3,nType_3,nUserId)
	
	-- if User_JudgeLevelAndMetempsychosis(tRaytheonGoodPack_Data[1]["Level"],tRaytheonGoodPack_Data[1]["Metempsychosis"]) then
		-- tItem[3320233]["Option112"] = tRaytheonGoodPack_Text[3320233]["Option1122"]
	-- end
	
	-- if  User_JudgeLevelAndMetempsychosis(tRaytheonGoodPack_Data[2]["Level"],tRaytheonGoodPack_Data[2]["Metempsychosis"])  then 
		-- tItem[3320233]["Option113"] = tRaytheonGoodPack_Text[3320233]["Option1133"]
	-- end 
	if nData_1 > 0 then 
		tItem[3320233]["Option111"] = tRaytheonGoodPack_Text[3320233]["Option1111"]
	end 
	if nData_2 > 0 then 
		tItem[3320233]["Option112"] = tRaytheonGoodPack_Text[3320233]["Option1122"]
	end 
	if nData_3 > 0 then 
		tItem[3320233]["Option113"] = tRaytheonGoodPack_Text[3320233]["Option1133"]
	end 
	return true
end 

tItem[3320233]["tOption1-1"] = {112,113,111}
tItem[3320233]["Option111"] = tRaytheonGoodPack_Text[3320233]["Option111"]
tItem[3320233]["OptionFunc111"] = "RaytheonGoodPack_OpenBag1</N>3320233</N>1"
tItem[3320233]["Option112"] = tRaytheonGoodPack_Text[3320233]["Option112"]
tItem[3320233]["OptionFunc112"] = "RaytheonGoodPack_OpenBag1</N>3320233</N>2"
tItem[3320233]["Option113"] = tRaytheonGoodPack_Text[3320233]["Option113"]
tItem[3320233]["OptionFunc113"] = "RaytheonGoodPack_OpenBag1</N>3320233</N>3"


--------------------------------------------时间自检---------------------------------------

--上线触发 
table.insert(tSystem_PlayLogin_Func,RaytheonGoodPack_Login)



