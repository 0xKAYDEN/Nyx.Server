------------------------------------------------------------------------------------
--Name：            190124[英文征服][活动脚本]3月SVIP特权月制作-发奖action部分
--Creator:      杨艳
--Created:     2019/01/24
------------------------------------------------------------------------------------
--任务需求：



--命名规范： SVIPawardAction_

--物品
-- 3320101,'白金卡精致礼盒
-- 3320102,'黄金卡奢华礼盒
-- 3320103,'黑金卡至尊礼盒

-- logid: 12001288

------------------------------------------------------------------------------------
local tSVIPawardAction_Cont = {}
tSVIPawardAction_Cont["Log"] = {}
tSVIPawardAction_Cont["Log"][3331549] = "0,0,3331549,1,12002035,2,200500,1"
tSVIPawardAction_Cont["Log"][3331550] = "0,0,3331550,1,12002035,2,193195,1"
tSVIPawardAction_Cont["EmoneyMono"] = {
	[3331532] = 150,
	[3331533] = 330,
	[3331534] = 400,
	[3331535] = 500,
	[3331536] = 900,
	[3331537] = 1000,
	[3331538] = 1000,
}
tSVIPawardAction_Cont["Money"] = {
	[3331532] = 1800000,
	[3331533] = 3900000,
	[3331534] = 4800000,
	[3331535] = 6000000,
	[3331536] = 9000000,
	[3331537] = 12000000,
	[3331538] = 12000000,
}
tSVIPawardAction_Cont["EMoney"] = {
	[3331539] = 2999,
	[3331540] = 9999,
	[3331541] = 14999,
	[3331542] = 14999,
	[3331543] = 14999,
	[3331544] = 2999,
	[3331545] = 3999,
	[3331546] = 4999,
	[3331547] = 14999,
	[3331548] = 29999,
	[3331549] = 4999,
	[3331550] = 4999,
	[3331551] = 25999,
	[3331552] = 9999,
	[3331553] = 25999,
	[3331554] = 9999,
	[3331555] = 499,
	[3331556] = 15999,
	[3331557] = 7999,
	[3331558] = 15999,
	[3331559] = 6079,
	[3331560] = 19199,
	[3331561] = 19199,
	[3331562] = 2799,
	[3331564] = 31999,
	[3331565] = 3199,
	[3331566] = 9599,
	[3331567] = 12710,
	[3331568] = 12710,
	[3331569] = 15999,
	[3331570] = 20799,
	[3331571] = 20799,
	[3331572] = 20799,
	[3331573] = 7999,
}
--奖励	
local tSVIPawardAction_Reward = {}

-- 3320101,'白金卡精致礼盒
-- 3320102,'黄金卡奢华礼盒	
-- 3320103,'黑金卡至尊礼盒	
	tSVIPawardAction_Reward[3320101] = {}
	tSVIPawardAction_Reward[3320101]["DeleteItem"] = {}
	tSVIPawardAction_Reward[3320101]["DeleteItem"][1] = {}
	tSVIPawardAction_Reward[3320101]["DeleteItem"][1]["Id"] = 3320101
	tSVIPawardAction_Reward[3320101]["RewardItem"] = {}
	tSVIPawardAction_Reward[3320101]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3320101]["RewardItem"][1]["Id"] = 3009001
	tSVIPawardAction_Reward[3320101]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	tSVIPawardAction_Reward[3320101]["RewardItem"][2] = {}
	tSVIPawardAction_Reward[3320101]["RewardItem"][2]["Id"] = 4060001
	tSVIPawardAction_Reward[3320101]["RewardItem"][2]["Attr"] = "0 100 3"
	tSVIPawardAction_Reward[3320101]["RewardItem"][3] = {}
	tSVIPawardAction_Reward[3320101]["RewardItem"][3]["Id"] = 723695
	tSVIPawardAction_Reward[3320101]["RewardItem"][3]["Attr"] = "0 1 3"
	tSVIPawardAction_Reward[3320101]["RewardItem"][4] = {}
	tSVIPawardAction_Reward[3320101]["RewardItem"][4]["Id"] = 3304200
	tSVIPawardAction_Reward[3320101]["RewardItem"][4]["Attr"] = "0 1 3"
	tSVIPawardAction_Reward[3320101]["RewardItem"][5] = {}
	tSVIPawardAction_Reward[3320101]["RewardItem"][5]["Id"] = 3311820
	tSVIPawardAction_Reward[3320101]["RewardItem"][5]["Attr"] = "0 5 3"
	tSVIPawardAction_Reward[3320101]["RewardItem"][6] = {}
	tSVIPawardAction_Reward[3320101]["RewardItem"][6]["Id"] = 1200005
	tSVIPawardAction_Reward[3320101]["RewardItem"][6]["Attr"] = "0 1 3"
	tSVIPawardAction_Reward[3320101]["LogId"] = 12001288
	tSVIPawardAction_Reward[3320101]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3320101]["RewardEffect"]["SzObj"] = "self"
	tSVIPawardAction_Reward[3320101]["RewardEffect"]["Effect"] = "NEW-flower-r-1"
	
	tSVIPawardAction_Reward[3320102] = {}
	tSVIPawardAction_Reward[3320102]["DeleteItem"] = {}
	tSVIPawardAction_Reward[3320102]["DeleteItem"][1] = {}
	tSVIPawardAction_Reward[3320102]["DeleteItem"][1]["Id"] = 3320102
	tSVIPawardAction_Reward[3320102]["RewardItem"] = {}
	tSVIPawardAction_Reward[3320102]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3320102]["RewardItem"][1]["Id"] = 3009002
	tSVIPawardAction_Reward[3320102]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	tSVIPawardAction_Reward[3320102]["RewardItem"][2] = {}
	tSVIPawardAction_Reward[3320102]["RewardItem"][2]["Id"] = 4060001
	tSVIPawardAction_Reward[3320102]["RewardItem"][2]["Attr"] = "0 500 3"
	tSVIPawardAction_Reward[3320102]["RewardItem"][3] = {}
	tSVIPawardAction_Reward[3320102]["RewardItem"][3]["Id"] = 723695
	tSVIPawardAction_Reward[3320102]["RewardItem"][3]["Attr"] = "0 1 3"
	tSVIPawardAction_Reward[3320102]["RewardItem"][4] = {}
	tSVIPawardAction_Reward[3320102]["RewardItem"][4]["Id"] = 3303245
	tSVIPawardAction_Reward[3320102]["RewardItem"][4]["Attr"] = "0 1 3"
	tSVIPawardAction_Reward[3320102]["RewardItem"][5] = {}
	tSVIPawardAction_Reward[3320102]["RewardItem"][5]["Id"] = 3311820
	tSVIPawardAction_Reward[3320102]["RewardItem"][5]["Attr"] = "0 15 3"
	tSVIPawardAction_Reward[3320102]["RewardItem"][6] = {}
	tSVIPawardAction_Reward[3320102]["RewardItem"][6]["Id"] = 1200005
	tSVIPawardAction_Reward[3320102]["RewardItem"][6]["Attr"] = "0 1 3"
	tSVIPawardAction_Reward[3320102]["LogId"] = 12001288
	tSVIPawardAction_Reward[3320102]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3320102]["RewardEffect"]["SzObj"] = "self"
	tSVIPawardAction_Reward[3320102]["RewardEffect"]["Effect"] = "NEW-flower-r-1"
	
	tSVIPawardAction_Reward[3320103] = {}
	tSVIPawardAction_Reward[3320103]["DeleteItem"] = {}
	tSVIPawardAction_Reward[3320103]["DeleteItem"][1] = {}
	tSVIPawardAction_Reward[3320103]["DeleteItem"][1]["Id"] = 3320103
	tSVIPawardAction_Reward[3320103]["RewardItem"] = {}
	tSVIPawardAction_Reward[3320103]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3320103]["RewardItem"][1]["Id"] = 3303244
	tSVIPawardAction_Reward[3320103]["RewardItem"][1]["Attr"] = "0 1 3"
	tSVIPawardAction_Reward[3320103]["RewardItem"][2] = {}
	tSVIPawardAction_Reward[3320103]["RewardItem"][2]["Id"] = 3311821
	tSVIPawardAction_Reward[3320103]["RewardItem"][2]["Attr"] = "0 3 3"
	tSVIPawardAction_Reward[3320103]["RewardItem"][3] = {}
	tSVIPawardAction_Reward[3320103]["RewardItem"][3]["Id"] = 3009002
	tSVIPawardAction_Reward[3320103]["RewardItem"][3]["Attr"] = "0 10 0 2880 1"
	tSVIPawardAction_Reward[3320103]["RewardItem"][4] = {}
	tSVIPawardAction_Reward[3320103]["RewardItem"][4]["Id"] = 3311247
	tSVIPawardAction_Reward[3320103]["RewardItem"][4]["Attr"] = "0 1 3"
	tSVIPawardAction_Reward[3320103]["RewardItem"][5] = {}
	tSVIPawardAction_Reward[3320103]["RewardItem"][5]["Id"] = 4060001
	tSVIPawardAction_Reward[3320103]["RewardItem"][5]["Attr"] = "0 1000 3"
	tSVIPawardAction_Reward[3320103]["RewardItem"][6] = {}
	tSVIPawardAction_Reward[3320103]["RewardItem"][6]["Id"] = 3003124
	tSVIPawardAction_Reward[3320103]["RewardItem"][6]["Attr"] = "0 200 3"
	tSVIPawardAction_Reward[3320103]["RewardItem"][7] = {}
	tSVIPawardAction_Reward[3320103]["RewardItem"][7]["Id"] = 3311759
	tSVIPawardAction_Reward[3320103]["RewardItem"][7]["Attr"] = "0 40 3"
	tSVIPawardAction_Reward[3320103]["LogId"] = 12001288
	tSVIPawardAction_Reward[3320103]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3320103]["RewardEffect"]["SzObj"] = "self"
	tSVIPawardAction_Reward[3320103]["RewardEffect"]["Effect"] = "NEW-flower-r-1"
	

	-- ===资料完善礼盒
	-- ===索引:tSVIPawardAction_Reward[3331529]
	-- ===删除:3331529,1
	-- ===NewEMoneyLog:1000,01907
	-- ===
	tSVIPawardAction_Reward[3331529] = {}
	tSVIPawardAction_Reward[3331529]["LogId"] = 12002035
	tSVIPawardAction_Reward[3331529]["DeleteItem"] = {}
	tSVIPawardAction_Reward[3331529]["DeleteItem"][1] = {}
	tSVIPawardAction_Reward[3331529]["DeleteItem"][1]["Id"] = 3331529 -- 【库】InfoCompletionBox[属性:9]
	tSVIPawardAction_Reward[3331529]["RewardEMoneyMono"] = {}
	tSVIPawardAction_Reward[3331529]["RewardEMoneyMono"]["Value"] = 1000 -- 天石（赠）, 【需求】1000赠点
	tSVIPawardAction_Reward[3331529]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1907"
	tSVIPawardAction_Reward[3331529]["RewardItem"] = {}
	tSVIPawardAction_Reward[3331529]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3331529]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tSVIPawardAction_Reward[3331529]["RewardItem"][1]["Attr"] = "0 50 3" -- UniversalRuneEssence（赠）*50
	tSVIPawardAction_Reward[3331529]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331529]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331529]["RewardEffect"]["Effect"] = "angelwing"


	-- ===8k赠点
	-- ===索引:tSVIPawardAction_Reward[3331530]
	-- ===删除:3331530,1
	-- ===NewEMoneyLog:1000,01907
	-- ===
	tSVIPawardAction_Reward[3331530] = {}
	tSVIPawardAction_Reward[3331530]["LogId"] = 12002035
	tSVIPawardAction_Reward[3331530]["DeleteItem"] = {}
	tSVIPawardAction_Reward[3331530]["DeleteItem"][1] = {}
	tSVIPawardAction_Reward[3331530]["DeleteItem"][1]["Id"] = 3331530 -- 【库】8000CPs(B)Box[属性:9]
	tSVIPawardAction_Reward[3331530]["RewardEMoneyMono"] = {}
	tSVIPawardAction_Reward[3331530]["RewardEMoneyMono"]["Value"] = 8000 -- 天石（赠）, 【需求】8000赠点
	tSVIPawardAction_Reward[3331530]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1907"
	tSVIPawardAction_Reward[3331530]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331530]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331530]["RewardEffect"]["Effect"] = "angelwing"


	-- ===随机普通宝石袋（赠）
	-- ===索引:tSVIPawardAction_Reward[3331531]
	-- ===删除:3331531,1
	-- ===
	-- RewardTemplate_RandomReward(tSVIPawardAction_Reward,3331531)
	tSVIPawardAction_Reward[3331531] = {}
	tSVIPawardAction_Reward[3331531]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tSVIPawardAction_Reward[3331531]["DeleteItem"] = {}
	tSVIPawardAction_Reward[3331531]["DeleteItem"][1] = {}
	tSVIPawardAction_Reward[3331531]["DeleteItem"][1]["Id"] = 3331531 -- 【库】RandomGemBag(B)[属性:9]
	tSVIPawardAction_Reward[3331531]["LogId"] = 12002035
	-- 普通凤吟宝石 - 10%
	tSVIPawardAction_Reward[3331531][1] = {}
	tSVIPawardAction_Reward[3331531][1]["RandomItemChanceType"] = 2
	tSVIPawardAction_Reward[3331531][1]["ItemChance"] = 1000
	tSVIPawardAction_Reward[3331531][1]["RewardItem"] = {}
	tSVIPawardAction_Reward[3331531][1]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3331531][1]["RewardItem"][1]["Id"] = 700001 -- PhoenixGem[700001][属性:0][叠加:0][金币:0], 【表格】普通凤吟宝石
	tSVIPawardAction_Reward[3331531][1]["RewardItem"][1]["Attr"] = "0 1 3" -- PhoenixGem（赠）*1
	tSVIPawardAction_Reward[3331531][1]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331531][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331531][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 普通龙恨宝石 - 10%
	tSVIPawardAction_Reward[3331531][2] = {}
	tSVIPawardAction_Reward[3331531][2]["RandomItemChanceType"] = 2
	tSVIPawardAction_Reward[3331531][2]["ItemChance"] = 1000
	tSVIPawardAction_Reward[3331531][2]["RewardItem"] = {}
	tSVIPawardAction_Reward[3331531][2]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3331531][2]["RewardItem"][1]["Id"] = 700011 -- DragonGem[700011][属性:0][叠加:0][金币:0], 【表格】普通龙恨宝石
	tSVIPawardAction_Reward[3331531][2]["RewardItem"][1]["Attr"] = "0 1 3" -- DragonGem（赠）*1
	tSVIPawardAction_Reward[3331531][2]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331531][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331531][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 普通惊鸿宝石 - 16%
	tSVIPawardAction_Reward[3331531][3] = {}
	tSVIPawardAction_Reward[3331531][3]["RandomItemChanceType"] = 2
	tSVIPawardAction_Reward[3331531][3]["ItemChance"] = 1600
	tSVIPawardAction_Reward[3331531][3]["RewardItem"] = {}
	tSVIPawardAction_Reward[3331531][3]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3331531][3]["RewardItem"][1]["Id"] = 700021 -- FuryGem[700021][属性:0][叠加:0][金币:0], 【表格】普通惊鸿宝石
	tSVIPawardAction_Reward[3331531][3]["RewardItem"][1]["Attr"] = "0 1 3" -- FuryGem（赠）*1
	tSVIPawardAction_Reward[3331531][3]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331531][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331531][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 普通青虹宝石 - 16%
	tSVIPawardAction_Reward[3331531][4] = {}
	tSVIPawardAction_Reward[3331531][4]["RandomItemChanceType"] = 2
	tSVIPawardAction_Reward[3331531][4]["ItemChance"] = 1600
	tSVIPawardAction_Reward[3331531][4]["RewardItem"] = {}
	tSVIPawardAction_Reward[3331531][4]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3331531][4]["RewardItem"][1]["Id"] = 700031 -- RainbowGem[700031][属性:0][叠加:0][金币:0], 【表格】普通青虹宝石
	tSVIPawardAction_Reward[3331531][4]["RewardItem"][1]["Attr"] = "0 1 3" -- RainbowGem（赠）*1
	tSVIPawardAction_Reward[3331531][4]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331531][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331531][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 普通金麟宝石 - 16%
	tSVIPawardAction_Reward[3331531][5] = {}
	tSVIPawardAction_Reward[3331531][5]["RandomItemChanceType"] = 2
	tSVIPawardAction_Reward[3331531][5]["ItemChance"] = 1600
	tSVIPawardAction_Reward[3331531][5]["RewardItem"] = {}
	tSVIPawardAction_Reward[3331531][5]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3331531][5]["RewardItem"][1]["Id"] = 700041 -- KylinGem[700041][属性:0][叠加:0][金币:0], 【表格】普通金麟宝石
	tSVIPawardAction_Reward[3331531][5]["RewardItem"][1]["Attr"] = "0 1 3" -- KylinGem（赠）*1
	tSVIPawardAction_Reward[3331531][5]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331531][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331531][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 普通紫霞宝石 - 16%
	tSVIPawardAction_Reward[3331531][6] = {}
	tSVIPawardAction_Reward[3331531][6]["RandomItemChanceType"] = 2
	tSVIPawardAction_Reward[3331531][6]["ItemChance"] = 1600
	tSVIPawardAction_Reward[3331531][6]["RewardItem"] = {}
	tSVIPawardAction_Reward[3331531][6]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3331531][6]["RewardItem"][1]["Id"] = 700051 -- VioletGem[700051][属性:0][叠加:0][金币:0], 【表格】普通紫霞宝石
	tSVIPawardAction_Reward[3331531][6]["RewardItem"][1]["Attr"] = "0 1 3" -- VioletGem（赠）*1
	tSVIPawardAction_Reward[3331531][6]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331531][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331531][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 普通明月宝石 - 16%
	tSVIPawardAction_Reward[3331531][7] = {}
	tSVIPawardAction_Reward[3331531][7]["RandomItemChanceType"] = 2
	tSVIPawardAction_Reward[3331531][7]["ItemChance"] = 1600
	tSVIPawardAction_Reward[3331531][7]["RewardItem"] = {}
	tSVIPawardAction_Reward[3331531][7]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3331531][7]["RewardItem"][1]["Id"] = 700061 -- MoonGem[700061][属性:0][叠加:0][金币:0], 【表格】普通明月宝石
	tSVIPawardAction_Reward[3331531][7]["RewardItem"][1]["Attr"] = "0 1 3" -- MoonGem（赠）*1
	tSVIPawardAction_Reward[3331531][7]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331531][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331531][7]["RewardEffect"]["Effect"] = "angelwing"


	tSVIPawardAction_Reward[3331532] = {}
	-- ===升级VIP1礼盒
	-- ===索引:tSVIPawardAction_Reward[3331532][1]
	-- ===删除:3331532,1
	-- ===消耗天石（赠）:150
	-- ===NewEMoneyLog:1000,01907
	tSVIPawardAction_Reward[3331532][1] = {}
	tSVIPawardAction_Reward[3331532][1]["LogId"] = 12002035
	tSVIPawardAction_Reward[3331532][1]["DeleteItem"] = {}
	tSVIPawardAction_Reward[3331532][1]["DeleteItem"][1] = {}
	tSVIPawardAction_Reward[3331532][1]["DeleteItem"][1]["Id"] = 3331532 -- 【库】UpgradeVIP1Box[属性:9]
	tSVIPawardAction_Reward[3331532][1]["CostEMoneyMono"] = {}
	tSVIPawardAction_Reward[3331532][1]["CostEMoneyMono"]["Value"] = 150 -- 消耗天石（赠）
	tSVIPawardAction_Reward[3331532][1]["CostEMoneyMono"]["EmoneyLog"] = "1000	1907"
	tSVIPawardAction_Reward[3331532][1]["RewardItem"] = {}
	tSVIPawardAction_Reward[3331532][1]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3331532][1]["RewardItem"][1]["Id"] = 1088000 -- DragonBall[1088000][属性:0][叠加:0][金币:10000], 【表格】龙珠赠
	tSVIPawardAction_Reward[3331532][1]["RewardItem"][1]["Attr"] = "0 1 3" -- DragonBall（赠）*1
	tSVIPawardAction_Reward[3331532][1]["RewardItem"][2] = {}
	tSVIPawardAction_Reward[3331532][1]["RewardItem"][2]["Id"] = 730001 -- +1Stone[730001][属性:0][叠加:0][金币:0], 【表格】+1石
	tSVIPawardAction_Reward[3331532][1]["RewardItem"][2]["Attr"] = "0 3 3" -- +1Stone（赠）*3
	tSVIPawardAction_Reward[3331532][1]["RewardItem"][3] = {}
	tSVIPawardAction_Reward[3331532][1]["RewardItem"][3]["Id"] = 720027 -- MeteorScroll[720027][属性:0][叠加:0][金币:0], 【表格】流星券
	tSVIPawardAction_Reward[3331532][1]["RewardItem"][3]["Attr"] = "0 2 3" -- MeteorScroll（赠）*2
	tSVIPawardAction_Reward[3331532][1]["RewardItem"][4] = {}
	tSVIPawardAction_Reward[3331532][1]["RewardItem"][4]["Id"] = 3331531 -- RandomGemBag(B)[3331531][属性:9][叠加:0][金币:0], 【表格】随机普通宝石袋
	tSVIPawardAction_Reward[3331532][1]["RewardItem"][4]["Attr"] = "0 3" -- RandomGemBag(B)*3
	tSVIPawardAction_Reward[3331532][1]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331532][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331532][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===升级VIP1礼盒
	-- ===索引:tSVIPawardAction_Reward[3331532][2]
	-- ===删除:3331532,1
	-- ===消耗金币:1800000
	tSVIPawardAction_Reward[3331532][2] = {}
	tSVIPawardAction_Reward[3331532][2]["LogId"] = 12002035
	tSVIPawardAction_Reward[3331532][2]["DeleteItem"] = {}
	tSVIPawardAction_Reward[3331532][2]["DeleteItem"][1] = {}
	tSVIPawardAction_Reward[3331532][2]["DeleteItem"][1]["Id"] = 3331532 -- 【库】UpgradeVIP1Box[属性:9]
	tSVIPawardAction_Reward[3331532][2]["CostMoney"] = {}
	tSVIPawardAction_Reward[3331532][2]["CostMoney"]["Value"] = 1800000 -- 消耗金币
	tSVIPawardAction_Reward[3331532][2]["RewardItem"] = {}
	tSVIPawardAction_Reward[3331532][2]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3331532][2]["RewardItem"][1]["Id"] = 1088000 -- DragonBall[1088000][属性:0][叠加:0][金币:10000], 【表格】龙珠赠
	tSVIPawardAction_Reward[3331532][2]["RewardItem"][1]["Attr"] = "0 1 3" -- DragonBall（赠）*1
	tSVIPawardAction_Reward[3331532][2]["RewardItem"][2] = {}
	tSVIPawardAction_Reward[3331532][2]["RewardItem"][2]["Id"] = 730001 -- +1Stone[730001][属性:0][叠加:0][金币:0], 【表格】+1石
	tSVIPawardAction_Reward[3331532][2]["RewardItem"][2]["Attr"] = "0 3 3" -- +1Stone（赠）*3
	tSVIPawardAction_Reward[3331532][2]["RewardItem"][3] = {}
	tSVIPawardAction_Reward[3331532][2]["RewardItem"][3]["Id"] = 720027 -- MeteorScroll[720027][属性:0][叠加:0][金币:0], 【表格】流星券
	tSVIPawardAction_Reward[3331532][2]["RewardItem"][3]["Attr"] = "0 2 3" -- MeteorScroll（赠）*2
	tSVIPawardAction_Reward[3331532][2]["RewardItem"][4] = {}
	tSVIPawardAction_Reward[3331532][2]["RewardItem"][4]["Id"] = 3331531 -- RandomGemBag(B)[3331531][属性:9][叠加:0][金币:0], 【表格】随机普通宝石袋
	tSVIPawardAction_Reward[3331532][2]["RewardItem"][4]["Attr"] = "0 3" -- RandomGemBag(B)*3
	tSVIPawardAction_Reward[3331532][2]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331532][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331532][2]["RewardEffect"]["Effect"] = "angelwing"


	tSVIPawardAction_Reward[3331533] = {}
	-- ===升级VIP2礼盒
	-- ===索引:tSVIPawardAction_Reward[3331533][1]
	-- ===删除:3331533,1
	-- ===消耗天石（赠）:330
	-- ===NewEMoneyLog:1000,01907
	tSVIPawardAction_Reward[3331533][1] = {}
	tSVIPawardAction_Reward[3331533][1]["LogId"] = 12002035
	tSVIPawardAction_Reward[3331533][1]["DeleteItem"] = {}
	tSVIPawardAction_Reward[3331533][1]["DeleteItem"][1] = {}
	tSVIPawardAction_Reward[3331533][1]["DeleteItem"][1]["Id"] = 3331533 -- 【库】UpgradeVIP2Box[属性:9]
	tSVIPawardAction_Reward[3331533][1]["CostEMoneyMono"] = {}
	tSVIPawardAction_Reward[3331533][1]["CostEMoneyMono"]["Value"] = 330 -- 消耗天石（赠）
	tSVIPawardAction_Reward[3331533][1]["CostEMoneyMono"]["EmoneyLog"] = "1000	1907"
	tSVIPawardAction_Reward[3331533][1]["RewardItem"] = {}
	tSVIPawardAction_Reward[3331533][1]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3331533][1]["RewardItem"][1]["Id"] = 1088000 -- DragonBall[1088000][属性:0][叠加:0][金币:10000], 【表格】龙珠赠
	tSVIPawardAction_Reward[3331533][1]["RewardItem"][1]["Attr"] = "0 1 3" -- DragonBall（赠）*1
	tSVIPawardAction_Reward[3331533][1]["RewardItem"][2] = {}
	tSVIPawardAction_Reward[3331533][1]["RewardItem"][2]["Id"] = 730002 -- +2Stone[730002][属性:0][叠加:0][金币:0], 【表格】+2石
	tSVIPawardAction_Reward[3331533][1]["RewardItem"][2]["Attr"] = "0 5 3" -- +2Stone（赠）*5
	tSVIPawardAction_Reward[3331533][1]["RewardCultivation"] = {}
	tSVIPawardAction_Reward[3331533][1]["RewardCultivation"]["Value"] = 1000 -- 修行值, 【需求】1000修行值
	tSVIPawardAction_Reward[3331533][1]["RewardItem"][3] = {}
	tSVIPawardAction_Reward[3331533][1]["RewardItem"][3]["Id"] = 3003124 -- FavoredTrainingPill[3003124][属性:0][叠加:10000][金币:0], 【表格】免费强炼丹
	tSVIPawardAction_Reward[3331533][1]["RewardItem"][3]["Attr"] = "0 5 3" -- FavoredTrainingPill（赠）*5
	tSVIPawardAction_Reward[3331533][1]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331533][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331533][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===升级VIP2礼盒
	-- ===索引:tSVIPawardAction_Reward[3331533][2]
	-- ===删除:3331533,1
	-- ===消耗金币:3900000
	tSVIPawardAction_Reward[3331533][2] = {}
	tSVIPawardAction_Reward[3331533][2]["LogId"] = 12002035
	tSVIPawardAction_Reward[3331533][2]["DeleteItem"] = {}
	tSVIPawardAction_Reward[3331533][2]["DeleteItem"][1] = {}
	tSVIPawardAction_Reward[3331533][2]["DeleteItem"][1]["Id"] = 3331533 -- 【库】UpgradeVIP2Box[属性:9]
	tSVIPawardAction_Reward[3331533][2]["CostMoney"] = {}
	tSVIPawardAction_Reward[3331533][2]["CostMoney"]["Value"] = 3900000 -- 消耗金币
	tSVIPawardAction_Reward[3331533][2]["RewardItem"] = {}
	tSVIPawardAction_Reward[3331533][2]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3331533][2]["RewardItem"][1]["Id"] = 1088000 -- DragonBall[1088000][属性:0][叠加:0][金币:10000], 【表格】龙珠赠
	tSVIPawardAction_Reward[3331533][2]["RewardItem"][1]["Attr"] = "0 1 3" -- DragonBall（赠）*1
	tSVIPawardAction_Reward[3331533][2]["RewardItem"][2] = {}
	tSVIPawardAction_Reward[3331533][2]["RewardItem"][2]["Id"] = 730002 -- +2Stone[730002][属性:0][叠加:0][金币:0], 【表格】+2石
	tSVIPawardAction_Reward[3331533][2]["RewardItem"][2]["Attr"] = "0 5 3" -- +2Stone（赠）*5
	tSVIPawardAction_Reward[3331533][2]["RewardCultivation"] = {}
	tSVIPawardAction_Reward[3331533][2]["RewardCultivation"]["Value"] = 1000 -- 修行值, 【需求】1000修行值
	tSVIPawardAction_Reward[3331533][2]["RewardItem"][3] = {}
	tSVIPawardAction_Reward[3331533][2]["RewardItem"][3]["Id"] = 3003124 -- FavoredTrainingPill[3003124][属性:0][叠加:10000][金币:0], 【表格】免费强炼丹
	tSVIPawardAction_Reward[3331533][2]["RewardItem"][3]["Attr"] = "0 5 3" -- FavoredTrainingPill（赠）*5
	tSVIPawardAction_Reward[3331533][2]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331533][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331533][2]["RewardEffect"]["Effect"] = "angelwing"


	tSVIPawardAction_Reward[3331534] = {}
	-- ===升级VIP3礼盒
	-- ===索引:tSVIPawardAction_Reward[3331534][1]
	-- ===删除:3331534,1
	-- ===消耗天石（赠）:400
	-- ===NewEMoneyLog:1000,01907
	tSVIPawardAction_Reward[3331534][1] = {}
	tSVIPawardAction_Reward[3331534][1]["LogId"] = 12002035
	tSVIPawardAction_Reward[3331534][1]["DeleteItem"] = {}
	tSVIPawardAction_Reward[3331534][1]["DeleteItem"][1] = {}
	tSVIPawardAction_Reward[3331534][1]["DeleteItem"][1]["Id"] = 3331534 -- 【库】UpgradeVIP3Box[属性:9]
	tSVIPawardAction_Reward[3331534][1]["CostEMoneyMono"] = {}
	tSVIPawardAction_Reward[3331534][1]["CostEMoneyMono"]["Value"] = 400 -- 消耗天石（赠）
	tSVIPawardAction_Reward[3331534][1]["CostEMoneyMono"]["EmoneyLog"] = "1000	1907"
	tSVIPawardAction_Reward[3331534][1]["RewardItem"] = {}
	tSVIPawardAction_Reward[3331534][1]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3331534][1]["RewardItem"][1]["Id"] = 1088000 -- DragonBall[1088000][属性:0][叠加:0][金币:10000], 【表格】龙珠赠
	tSVIPawardAction_Reward[3331534][1]["RewardItem"][1]["Attr"] = "0 2 3" -- DragonBall（赠）*2
	tSVIPawardAction_Reward[3331534][1]["RewardItem"][2] = {}
	tSVIPawardAction_Reward[3331534][1]["RewardItem"][2]["Id"] = 730003 -- +3Stone[730003][属性:0][叠加:0][金币:0], 【表格】+3石
	tSVIPawardAction_Reward[3331534][1]["RewardItem"][2]["Attr"] = "0 1 3" -- +3Stone（赠）*1
	tSVIPawardAction_Reward[3331534][1]["RewardCultivation"] = {}
	tSVIPawardAction_Reward[3331534][1]["RewardCultivation"]["Value"] = 1500 -- 修行值, 【需求】1500修行值
	tSVIPawardAction_Reward[3331534][1]["RewardItem"][3] = {}
	tSVIPawardAction_Reward[3331534][1]["RewardItem"][3]["Id"] = 3003124 -- FavoredTrainingPill[3003124][属性:0][叠加:10000][金币:0], 【表格】免费强炼丹
	tSVIPawardAction_Reward[3331534][1]["RewardItem"][3]["Attr"] = "0 5 3" -- FavoredTrainingPill（赠）*5
	tSVIPawardAction_Reward[3331534][1]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331534][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331534][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===升级VIP3礼盒
	-- ===索引:tSVIPawardAction_Reward[3331534][2]
	-- ===删除:3331534,1
	-- ===消耗金币:4800000
	tSVIPawardAction_Reward[3331534][2] = {}
	tSVIPawardAction_Reward[3331534][2]["LogId"] = 12002035
	tSVIPawardAction_Reward[3331534][2]["DeleteItem"] = {}
	tSVIPawardAction_Reward[3331534][2]["DeleteItem"][1] = {}
	tSVIPawardAction_Reward[3331534][2]["DeleteItem"][1]["Id"] = 3331534 -- 【库】UpgradeVIP3Box[属性:9]
	tSVIPawardAction_Reward[3331534][2]["CostMoney"] = {}
	tSVIPawardAction_Reward[3331534][2]["CostMoney"]["Value"] = 4800000 -- 消耗金币
	tSVIPawardAction_Reward[3331534][2]["RewardItem"] = {}
	tSVIPawardAction_Reward[3331534][2]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3331534][2]["RewardItem"][1]["Id"] = 1088000 -- DragonBall[1088000][属性:0][叠加:0][金币:10000], 【表格】龙珠赠
	tSVIPawardAction_Reward[3331534][2]["RewardItem"][1]["Attr"] = "0 2 3" -- DragonBall（赠）*2
	tSVIPawardAction_Reward[3331534][2]["RewardItem"][2] = {}
	tSVIPawardAction_Reward[3331534][2]["RewardItem"][2]["Id"] = 730003 -- +3Stone[730003][属性:0][叠加:0][金币:0], 【表格】+3石
	tSVIPawardAction_Reward[3331534][2]["RewardItem"][2]["Attr"] = "0 1 3" -- +3Stone（赠）*1
	tSVIPawardAction_Reward[3331534][2]["RewardCultivation"] = {}
	tSVIPawardAction_Reward[3331534][2]["RewardCultivation"]["Value"] = 1500 -- 修行值, 【需求】1500修行值
	tSVIPawardAction_Reward[3331534][2]["RewardItem"][3] = {}
	tSVIPawardAction_Reward[3331534][2]["RewardItem"][3]["Id"] = 3003124 -- FavoredTrainingPill[3003124][属性:0][叠加:10000][金币:0], 【表格】免费强炼丹
	tSVIPawardAction_Reward[3331534][2]["RewardItem"][3]["Attr"] = "0 5 3" -- FavoredTrainingPill（赠）*5
	tSVIPawardAction_Reward[3331534][2]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331534][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331534][2]["RewardEffect"]["Effect"] = "angelwing"


	tSVIPawardAction_Reward[3331535] = {}
	-- ===升级VIP4礼盒
	-- ===索引:tSVIPawardAction_Reward[3331535][1]
	-- ===删除:3331535,1
	-- ===消耗天石（赠）:500
	-- ===NewEMoneyLog:1000,01907
	tSVIPawardAction_Reward[3331535][1] = {}
	tSVIPawardAction_Reward[3331535][1]["LogId"] = 12002035
	tSVIPawardAction_Reward[3331535][1]["DeleteItem"] = {}
	tSVIPawardAction_Reward[3331535][1]["DeleteItem"][1] = {}
	tSVIPawardAction_Reward[3331535][1]["DeleteItem"][1]["Id"] = 3331535 -- 【库】UpgradeVIP4Box[属性:9]
	tSVIPawardAction_Reward[3331535][1]["CostEMoneyMono"] = {}
	tSVIPawardAction_Reward[3331535][1]["CostEMoneyMono"]["Value"] = 500 -- 消耗天石（赠）
	tSVIPawardAction_Reward[3331535][1]["CostEMoneyMono"]["EmoneyLog"] = "1000	1907"
	tSVIPawardAction_Reward[3331535][1]["RewardItem"] = {}
	tSVIPawardAction_Reward[3331535][1]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3331535][1]["RewardItem"][1]["Id"] = 1088000 -- DragonBall[1088000][属性:0][叠加:0][金币:10000], 【表格】龙珠赠
	tSVIPawardAction_Reward[3331535][1]["RewardItem"][1]["Attr"] = "0 2 3" -- DragonBall（赠）*2
	tSVIPawardAction_Reward[3331535][1]["RewardItem"][2] = {}
	tSVIPawardAction_Reward[3331535][1]["RewardItem"][2]["Id"] = 730003 -- +3Stone[730003][属性:0][叠加:0][金币:0], 【表格】+3石
	tSVIPawardAction_Reward[3331535][1]["RewardItem"][2]["Attr"] = "0 2 3" -- +3Stone（赠）*2
	tSVIPawardAction_Reward[3331535][1]["RewardCultivation"] = {}
	tSVIPawardAction_Reward[3331535][1]["RewardCultivation"]["Value"] = 2000 -- 修行值, 【需求】1500修行值
	tSVIPawardAction_Reward[3331535][1]["RewardItem"][3] = {}
	tSVIPawardAction_Reward[3331535][1]["RewardItem"][3]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】黄色神纹精粹
	tSVIPawardAction_Reward[3331535][1]["RewardItem"][3]["Attr"] = "0 15 3" -- YellowRuneEssence*15
	tSVIPawardAction_Reward[3331535][1]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331535][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331535][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===升级VIP4礼盒
	-- ===索引:tSVIPawardAction_Reward[3331535][2]
	-- ===删除:3331535,1
	-- ===消耗金币:6000000
	tSVIPawardAction_Reward[3331535][2] = {}
	tSVIPawardAction_Reward[3331535][2]["LogId"] = 12002035
	tSVIPawardAction_Reward[3331535][2]["DeleteItem"] = {}
	tSVIPawardAction_Reward[3331535][2]["DeleteItem"][1] = {}
	tSVIPawardAction_Reward[3331535][2]["DeleteItem"][1]["Id"] = 3331535 -- 【库】UpgradeVIP4Box[属性:9]
	tSVIPawardAction_Reward[3331535][2]["CostMoney"] = {}
	tSVIPawardAction_Reward[3331535][2]["CostMoney"]["Value"] = 6000000 -- 消耗金币
	tSVIPawardAction_Reward[3331535][2]["RewardItem"] = {}
	tSVIPawardAction_Reward[3331535][2]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3331535][2]["RewardItem"][1]["Id"] = 1088000 -- DragonBall[1088000][属性:0][叠加:0][金币:10000], 【表格】龙珠赠
	tSVIPawardAction_Reward[3331535][2]["RewardItem"][1]["Attr"] = "0 2 3" -- DragonBall（赠）*2
	tSVIPawardAction_Reward[3331535][2]["RewardItem"][2] = {}
	tSVIPawardAction_Reward[3331535][2]["RewardItem"][2]["Id"] = 730003 -- +3Stone[730003][属性:0][叠加:0][金币:0], 【表格】+3石
	tSVIPawardAction_Reward[3331535][2]["RewardItem"][2]["Attr"] = "0 2 3" -- +3Stone（赠）*2
	tSVIPawardAction_Reward[3331535][2]["RewardCultivation"] = {}
	tSVIPawardAction_Reward[3331535][2]["RewardCultivation"]["Value"] = 2000 -- 修行值, 【需求】1500修行值
	tSVIPawardAction_Reward[3331535][2]["RewardItem"][3] = {}
	tSVIPawardAction_Reward[3331535][2]["RewardItem"][3]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】黄色神纹精粹
	tSVIPawardAction_Reward[3331535][2]["RewardItem"][3]["Attr"] = "0 15 3" -- YellowRuneEssence*15
	tSVIPawardAction_Reward[3331535][2]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331535][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331535][2]["RewardEffect"]["Effect"] = "angelwing"


	tSVIPawardAction_Reward[3331536] = {}
	-- ===升级VIP5礼盒
	-- ===索引:tSVIPawardAction_Reward[3331536][1]
	-- ===删除:3331536,1
	-- ===消耗天石（赠）:900
	-- ===NewEMoneyLog:1000,01907
	tSVIPawardAction_Reward[3331536][1] = {}
	tSVIPawardAction_Reward[3331536][1]["LogId"] = 12002035
	tSVIPawardAction_Reward[3331536][1]["DeleteItem"] = {}
	tSVIPawardAction_Reward[3331536][1]["DeleteItem"][1] = {}
	tSVIPawardAction_Reward[3331536][1]["DeleteItem"][1]["Id"] = 3331536 -- 【库】UpgradeVIP5Box[属性:9]
	tSVIPawardAction_Reward[3331536][1]["CostEMoneyMono"] = {}
	tSVIPawardAction_Reward[3331536][1]["CostEMoneyMono"]["Value"] = 900 -- 消耗天石（赠）
	tSVIPawardAction_Reward[3331536][1]["CostEMoneyMono"]["EmoneyLog"] = "1000	1907"
	tSVIPawardAction_Reward[3331536][1]["RewardItem"] = {}
	tSVIPawardAction_Reward[3331536][1]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3331536][1]["RewardItem"][1]["Id"] = 3311759 -- RuneCrystal[3311759][属性:8][叠加:10000][金币:0], 【表格】神纹源晶
	tSVIPawardAction_Reward[3331536][1]["RewardItem"][1]["Attr"] = "0 2 3" -- RuneCrystal（赠）*2
	tSVIPawardAction_Reward[3331536][1]["RewardItem"][2] = {}
	tSVIPawardAction_Reward[3331536][1]["RewardItem"][2]["Id"] = 730004 -- +4Stone[730004][属性:0][叠加:0][金币:0], 【表格】+4石
	tSVIPawardAction_Reward[3331536][1]["RewardItem"][2]["Attr"] = "0 1 3" -- +4Stone（赠）*1
	tSVIPawardAction_Reward[3331536][1]["RewardStrengthValue"] = {}
	tSVIPawardAction_Reward[3331536][1]["RewardStrengthValue"]["Value"] = 3000 -- 气力值, 【需求】3k气力
	tSVIPawardAction_Reward[3331536][1]["RewardItem"][3] = {}
	tSVIPawardAction_Reward[3331536][1]["RewardItem"][3]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】黄色神纹精粹
	tSVIPawardAction_Reward[3331536][1]["RewardItem"][3]["Attr"] = "0 30 3" -- YellowRuneEssence*30
	tSVIPawardAction_Reward[3331536][1]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331536][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331536][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===升级VIP5礼盒
	-- ===索引:tSVIPawardAction_Reward[3331536][2]
	-- ===删除:3331536,1
	-- ===消耗金币:9000000
	tSVIPawardAction_Reward[3331536][2] = {}
	tSVIPawardAction_Reward[3331536][2]["LogId"] = 12002035
	tSVIPawardAction_Reward[3331536][2]["DeleteItem"] = {}
	tSVIPawardAction_Reward[3331536][2]["DeleteItem"][1] = {}
	tSVIPawardAction_Reward[3331536][2]["DeleteItem"][1]["Id"] = 3331536 -- 【库】UpgradeVIP5Box[属性:9]
	tSVIPawardAction_Reward[3331536][2]["CostMoney"] = {}
	tSVIPawardAction_Reward[3331536][2]["CostMoney"]["Value"] = 9000000 -- 消耗金币
	tSVIPawardAction_Reward[3331536][2]["RewardItem"] = {}
	tSVIPawardAction_Reward[3331536][2]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3331536][2]["RewardItem"][1]["Id"] = 3311759 -- RuneCrystal[3311759][属性:8][叠加:10000][金币:0], 【表格】神纹源晶
	tSVIPawardAction_Reward[3331536][2]["RewardItem"][1]["Attr"] = "0 2 3" -- RuneCrystal（赠）*2
	tSVIPawardAction_Reward[3331536][2]["RewardItem"][2] = {}
	tSVIPawardAction_Reward[3331536][2]["RewardItem"][2]["Id"] = 730004 -- +4Stone[730004][属性:0][叠加:0][金币:0], 【表格】+4石
	tSVIPawardAction_Reward[3331536][2]["RewardItem"][2]["Attr"] = "0 1 3" -- +4Stone（赠）*1
	tSVIPawardAction_Reward[3331536][2]["RewardStrengthValue"] = {}
	tSVIPawardAction_Reward[3331536][2]["RewardStrengthValue"]["Value"] = 3000 -- 气力值, 【需求】3k气力
	tSVIPawardAction_Reward[3331536][2]["RewardItem"][3] = {}
	tSVIPawardAction_Reward[3331536][2]["RewardItem"][3]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】黄色神纹精粹
	tSVIPawardAction_Reward[3331536][2]["RewardItem"][3]["Attr"] = "0 30 3" -- YellowRuneEssence*30
	tSVIPawardAction_Reward[3331536][2]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331536][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331536][2]["RewardEffect"]["Effect"] = "angelwing"


	tSVIPawardAction_Reward[3331537] = {}
	-- ===升级VIP6礼盒
	-- ===索引:tSVIPawardAction_Reward[3331537][1]
	-- ===删除:3331537,1
	-- ===消耗天石（赠）:1000
	-- ===NewEMoneyLog:1000,01907
	tSVIPawardAction_Reward[3331537][1] = {}
	tSVIPawardAction_Reward[3331537][1]["LogId"] = 12002035
	tSVIPawardAction_Reward[3331537][1]["DeleteItem"] = {}
	tSVIPawardAction_Reward[3331537][1]["DeleteItem"][1] = {}
	tSVIPawardAction_Reward[3331537][1]["DeleteItem"][1]["Id"] = 3331537 -- 【库】UpgradeVIP6Box[属性:9]
	tSVIPawardAction_Reward[3331537][1]["CostEMoneyMono"] = {}
	tSVIPawardAction_Reward[3331537][1]["CostEMoneyMono"]["Value"] = 1000 -- 消耗天石（赠）
	tSVIPawardAction_Reward[3331537][1]["CostEMoneyMono"]["EmoneyLog"] = "1000	1907"
	tSVIPawardAction_Reward[3331537][1]["RewardItem"] = {}
	tSVIPawardAction_Reward[3331537][1]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3331537][1]["RewardItem"][1]["Id"] = 3311759 -- RuneCrystal[3311759][属性:8][叠加:10000][金币:0], 【表格】神纹源晶
	tSVIPawardAction_Reward[3331537][1]["RewardItem"][1]["Attr"] = "0 3 3" -- RuneCrystal（赠）*3
	tSVIPawardAction_Reward[3331537][1]["RewardItem"][2] = {}
	tSVIPawardAction_Reward[3331537][1]["RewardItem"][2]["Id"] = 730004 -- +4Stone[730004][属性:0][叠加:0][金币:0], 【表格】+4石
	tSVIPawardAction_Reward[3331537][1]["RewardItem"][2]["Attr"] = "0 2 3" -- 2天时效(激活)的+4Stone（赠）*2
	tSVIPawardAction_Reward[3331537][1]["RewardItem"][3] = {}
	tSVIPawardAction_Reward[3331537][1]["RewardItem"][3]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮*2
	tSVIPawardAction_Reward[3331537][1]["RewardItem"][3]["Attr"] = "0 2 3 2880 1" -- 2天时效(激活)的BrightStarStone（赠）*2
	tSVIPawardAction_Reward[3331537][1]["RewardItem"][4] = {}
	tSVIPawardAction_Reward[3331537][1]["RewardItem"][4]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】黄色神纹精粹
	tSVIPawardAction_Reward[3331537][1]["RewardItem"][4]["Attr"] = "0 50 3" -- YellowRuneEssence*50
	tSVIPawardAction_Reward[3331537][1]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331537][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331537][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===升级VIP6礼盒
	-- ===索引:tSVIPawardAction_Reward[3331537][2]
	-- ===删除:3331537,1
	-- ===消耗金币:12000000
	tSVIPawardAction_Reward[3331537][2] = {}
	tSVIPawardAction_Reward[3331537][2]["LogId"] = 12002035
	tSVIPawardAction_Reward[3331537][2]["DeleteItem"] = {}
	tSVIPawardAction_Reward[3331537][2]["DeleteItem"][1] = {}
	tSVIPawardAction_Reward[3331537][2]["DeleteItem"][1]["Id"] = 3331537 -- 【库】UpgradeVIP6Box[属性:9]
	tSVIPawardAction_Reward[3331537][2]["CostMoney"] = {}
	tSVIPawardAction_Reward[3331537][2]["CostMoney"]["Value"] = 12000000 -- 消耗金币
	tSVIPawardAction_Reward[3331537][2]["RewardItem"] = {}
	tSVIPawardAction_Reward[3331537][2]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3331537][2]["RewardItem"][1]["Id"] = 3311759 -- RuneCrystal[3311759][属性:8][叠加:10000][金币:0], 【表格】神纹源晶
	tSVIPawardAction_Reward[3331537][2]["RewardItem"][1]["Attr"] = "0 3 3" -- RuneCrystal（赠）*3
	tSVIPawardAction_Reward[3331537][2]["RewardItem"][2] = {}
	tSVIPawardAction_Reward[3331537][2]["RewardItem"][2]["Id"] = 730004 -- +4Stone[730004][属性:0][叠加:0][金币:0], 【表格】+4石
	tSVIPawardAction_Reward[3331537][2]["RewardItem"][2]["Attr"] = "0 2 3" -- 2天时效(激活)的+4Stone（赠）*2
	tSVIPawardAction_Reward[3331537][2]["RewardItem"][3] = {}
	tSVIPawardAction_Reward[3331537][2]["RewardItem"][3]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮*2
	tSVIPawardAction_Reward[3331537][2]["RewardItem"][3]["Attr"] = "0 2 3 2880 1" -- 2天时效(激活)的BrightStarStone（赠）*2
	tSVIPawardAction_Reward[3331537][2]["RewardItem"][4] = {}
	tSVIPawardAction_Reward[3331537][2]["RewardItem"][4]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】黄色神纹精粹
	tSVIPawardAction_Reward[3331537][2]["RewardItem"][4]["Attr"] = "0 50 3" -- YellowRuneEssence*50
	tSVIPawardAction_Reward[3331537][2]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331537][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331537][2]["RewardEffect"]["Effect"] = "angelwing"


	tSVIPawardAction_Reward[3331538] = {}
	-- ===升级VIP7礼盒
	-- ===索引:tSVIPawardAction_Reward[3331538][1]
	-- ===删除:3331538,1
	-- ===消耗天石（赠）:1000
	-- ===NewEMoneyLog:1000,01907
	tSVIPawardAction_Reward[3331538][1] = {}
	tSVIPawardAction_Reward[3331538][1]["LogId"] = 12002035
	tSVIPawardAction_Reward[3331538][1]["DeleteItem"] = {}
	tSVIPawardAction_Reward[3331538][1]["DeleteItem"][1] = {}
	tSVIPawardAction_Reward[3331538][1]["DeleteItem"][1]["Id"] = 3331538 -- 【库】UpgradeVIP7Box[属性:9]
	tSVIPawardAction_Reward[3331538][1]["CostEMoneyMono"] = {}
	tSVIPawardAction_Reward[3331538][1]["CostEMoneyMono"]["Value"] = 1000 -- 消耗天石（赠）
	tSVIPawardAction_Reward[3331538][1]["CostEMoneyMono"]["EmoneyLog"] = "1000	1907"
	tSVIPawardAction_Reward[3331538][1]["RewardItem"] = {}
	tSVIPawardAction_Reward[3331538][1]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3331538][1]["RewardItem"][1]["Id"] = 3311759 -- RuneCrystal[3311759][属性:8][叠加:10000][金币:0], 【表格】神纹源晶
	tSVIPawardAction_Reward[3331538][1]["RewardItem"][1]["Attr"] = "0 5 3" -- RuneCrystal（赠）*5
	tSVIPawardAction_Reward[3331538][1]["RewardItem"][2] = {}
	tSVIPawardAction_Reward[3331538][1]["RewardItem"][2]["Id"] = 3001044 -- MysteryFruit[3001044][属性:9][叠加:99][金币:0], 【表格】天机果
	tSVIPawardAction_Reward[3331538][1]["RewardItem"][2]["Attr"] = "0 20" -- MysteryFruit*20（[错误]物品数量超10个）
	tSVIPawardAction_Reward[3331538][1]["RewardItem"][3] = {}
	tSVIPawardAction_Reward[3331538][1]["RewardItem"][3]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮*2
	tSVIPawardAction_Reward[3331538][1]["RewardItem"][3]["Attr"] = "0 3 3 2880 1" -- 2天时效(激活)的BrightStarStone（赠）*3
	tSVIPawardAction_Reward[3331538][1]["RewardItem"][4] = {}
	tSVIPawardAction_Reward[3331538][1]["RewardItem"][4]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】黄色神纹精粹
	tSVIPawardAction_Reward[3331538][1]["RewardItem"][4]["Attr"] = "0 50 3" -- YellowRuneEssence*50
	tSVIPawardAction_Reward[3331538][1]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331538][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331538][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===升级VIP7礼盒
	-- ===索引:tSVIPawardAction_Reward[3331538][2]
	-- ===删除:3331538,1
	-- ===消耗金币:12000000
	tSVIPawardAction_Reward[3331538][2] = {}
	tSVIPawardAction_Reward[3331538][2]["LogId"] = 12002035
	tSVIPawardAction_Reward[3331538][2]["DeleteItem"] = {}
	tSVIPawardAction_Reward[3331538][2]["DeleteItem"][1] = {}
	tSVIPawardAction_Reward[3331538][2]["DeleteItem"][1]["Id"] = 3331538 -- 【库】UpgradeVIP7Box[属性:9]
	tSVIPawardAction_Reward[3331538][2]["CostMoney"] = {}
	tSVIPawardAction_Reward[3331538][2]["CostMoney"]["Value"] = 12000000 -- 消耗金币
	tSVIPawardAction_Reward[3331538][2]["RewardItem"] = {}
	tSVIPawardAction_Reward[3331538][2]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3331538][2]["RewardItem"][1]["Id"] = 3311759 -- RuneCrystal[3311759][属性:8][叠加:10000][金币:0], 【表格】神纹源晶
	tSVIPawardAction_Reward[3331538][2]["RewardItem"][1]["Attr"] = "0 5 3" -- RuneCrystal（赠）*5
	tSVIPawardAction_Reward[3331538][2]["RewardItem"][2] = {}
	tSVIPawardAction_Reward[3331538][2]["RewardItem"][2]["Id"] = 3001044 -- MysteryFruit[3001044][属性:9][叠加:99][金币:0], 【表格】天机果
	tSVIPawardAction_Reward[3331538][2]["RewardItem"][2]["Attr"] = "0 20" -- MysteryFruit*20（[错误]物品数量超10个）
	tSVIPawardAction_Reward[3331538][2]["RewardItem"][3] = {}
	tSVIPawardAction_Reward[3331538][2]["RewardItem"][3]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮*2
	tSVIPawardAction_Reward[3331538][2]["RewardItem"][3]["Attr"] = "0 3 3 2880 1" -- 2天时效(激活)的BrightStarStone（赠）*3
	tSVIPawardAction_Reward[3331538][2]["RewardItem"][4] = {}
	tSVIPawardAction_Reward[3331538][2]["RewardItem"][4]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】黄色神纹精粹
	tSVIPawardAction_Reward[3331538][2]["RewardItem"][4]["Attr"] = "0 50 3" -- YellowRuneEssence*50
	tSVIPawardAction_Reward[3331538][2]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331538][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331538][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===DreamGarment礼盒
	-- ===索引:tSVIPawardAction_Reward[3331539]
	-- ===删除:3331539,1
	-- ===消耗天石:2999
	-- ===NewEMoneyLog:1000,01907
	tSVIPawardAction_Reward[3331539] = {}
	tSVIPawardAction_Reward[3331539]["LogId"] = 12002035
	tSVIPawardAction_Reward[3331539]["DeleteItem"] = {}
	tSVIPawardAction_Reward[3331539]["DeleteItem"][1] = {}
	tSVIPawardAction_Reward[3331539]["DeleteItem"][1]["Id"] = 3331539 -- 【库】DreamGarmentBox[属性:8]
	tSVIPawardAction_Reward[3331539]["CostEMoney"] = {}
	tSVIPawardAction_Reward[3331539]["CostEMoney"]["Value"] = 2999 -- 消耗天石
	tSVIPawardAction_Reward[3331539]["CostEMoney"]["EmoneyLog"] = "1000	1907"
	tSVIPawardAction_Reward[3331539]["RewardItem"] = {}
	tSVIPawardAction_Reward[3331539]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3331539]["RewardItem"][1]["Id"] = 188265 -- DreamGarment[188265][属性:0][叠加:0][金币:100], 【表格】188265
	tSVIPawardAction_Reward[3331539]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑DreamGarment*1
	tSVIPawardAction_Reward[3331539]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331539]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331539]["RewardEffect"]["Effect"] = "angelwing"


	-- ===GoldCloth（Saint）礼盒
	-- ===索引:tSVIPawardAction_Reward[3331540]
	-- ===删除:3331540,1
	-- ===消耗天石:9999
	-- ===NewEMoneyLog:1000,01907
	tSVIPawardAction_Reward[3331540] = {}
	tSVIPawardAction_Reward[3331540]["LogId"] = 12002035
	tSVIPawardAction_Reward[3331540]["DeleteItem"] = {}
	tSVIPawardAction_Reward[3331540]["DeleteItem"][1] = {}
	tSVIPawardAction_Reward[3331540]["DeleteItem"][1]["Id"] = 3331540 -- 【库】GoldCloth(Saint)Box[属性:8]
	tSVIPawardAction_Reward[3331540]["CostEMoney"] = {}
	tSVIPawardAction_Reward[3331540]["CostEMoney"]["Value"] = 9999 -- 消耗天石
	tSVIPawardAction_Reward[3331540]["CostEMoney"]["EmoneyLog"] = "1000	1907"
	tSVIPawardAction_Reward[3331540]["RewardItem"] = {}
	tSVIPawardAction_Reward[3331540]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3331540]["RewardItem"][1]["Id"] = 188915 -- GoldCloth(Saint)[188915][属性:8][叠加:0][金币:0], 【表格】188915
	tSVIPawardAction_Reward[3331540]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑GoldCloth(Saint)*1
	tSVIPawardAction_Reward[3331540]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331540]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331540]["RewardEffect"]["Effect"] = "angelwing"


	-- ===SpringShirt礼盒
	-- ===索引:tSVIPawardAction_Reward[3331541]
	-- ===删除:3331541,1
	-- ===消耗天石:14999
	-- ===NewEMoneyLog:1000,01907
	tSVIPawardAction_Reward[3331541] = {}
	tSVIPawardAction_Reward[3331541]["LogId"] = 12002035
	tSVIPawardAction_Reward[3331541]["DeleteItem"] = {}
	tSVIPawardAction_Reward[3331541]["DeleteItem"][1] = {}
	tSVIPawardAction_Reward[3331541]["DeleteItem"][1]["Id"] = 3331541 -- 【库】SpringShirtBox[属性:8]
	tSVIPawardAction_Reward[3331541]["CostEMoney"] = {}
	tSVIPawardAction_Reward[3331541]["CostEMoney"]["Value"] = 14999 -- 消耗天石
	tSVIPawardAction_Reward[3331541]["CostEMoney"]["EmoneyLog"] = "1000	1907"
	tSVIPawardAction_Reward[3331541]["RewardItem"] = {}
	tSVIPawardAction_Reward[3331541]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3331541]["RewardItem"][1]["Id"] = 192435 -- SpringShirt[192435][属性:0][叠加:0][金币:100], 【表格】192435
	tSVIPawardAction_Reward[3331541]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑SpringShirt*1
	tSVIPawardAction_Reward[3331541]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331541]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331541]["RewardEffect"]["Effect"] = "angelwing"


	-- ===AspirationJacket礼盒
	-- ===索引:tSVIPawardAction_Reward[3331542]
	-- ===删除:3331542,1
	-- ===消耗天石:14999
	-- ===NewEMoneyLog:1000,01907
	tSVIPawardAction_Reward[3331542] = {}
	tSVIPawardAction_Reward[3331542]["LogId"] = 12002035
	tSVIPawardAction_Reward[3331542]["DeleteItem"] = {}
	tSVIPawardAction_Reward[3331542]["DeleteItem"][1] = {}
	tSVIPawardAction_Reward[3331542]["DeleteItem"][1]["Id"] = 3331542 -- 【库】AspirationJacketBox[属性:8]
	tSVIPawardAction_Reward[3331542]["CostEMoney"] = {}
	tSVIPawardAction_Reward[3331542]["CostEMoney"]["Value"] = 14999 -- 消耗天石
	tSVIPawardAction_Reward[3331542]["CostEMoney"]["EmoneyLog"] = "1000	1907"
	tSVIPawardAction_Reward[3331542]["RewardItem"] = {}
	tSVIPawardAction_Reward[3331542]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3331542]["RewardItem"][1]["Id"] = 193325 -- AspirationJacket[193325][属性:0][叠加:0][金币:100], 【表格】193325
	tSVIPawardAction_Reward[3331542]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑AspirationJacket*1
	tSVIPawardAction_Reward[3331542]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331542]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331542]["RewardEffect"]["Effect"] = "angelwing"


	-- ===StarRoosterUltimateChallenge礼盒
	-- ===索引:tSVIPawardAction_Reward[3331543]
	-- ===删除:3331543,1
	-- ===消耗天石:14999
	-- ===NewEMoneyLog:1000,01907
	tSVIPawardAction_Reward[3331543] = {}
	tSVIPawardAction_Reward[3331543]["LogId"] = 12002035
	tSVIPawardAction_Reward[3331543]["DeleteItem"] = {}
	tSVIPawardAction_Reward[3331543]["DeleteItem"][1] = {}
	tSVIPawardAction_Reward[3331543]["DeleteItem"][1]["Id"] = 3331543 -- 【库】UltimateChallengeBox[属性:8]
	tSVIPawardAction_Reward[3331543]["CostEMoney"] = {}
	tSVIPawardAction_Reward[3331543]["CostEMoney"]["Value"] = 14999 -- 消耗天石
	tSVIPawardAction_Reward[3331543]["CostEMoney"]["EmoneyLog"] = "1000	1907"
	tSVIPawardAction_Reward[3331543]["RewardItem"] = {}
	tSVIPawardAction_Reward[3331543]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3331543]["RewardItem"][1]["Id"] = 200592 -- StarRoosterUltimateChallenge[200592][属性:8][叠加:0][金币:0], 【表格】200592
	tSVIPawardAction_Reward[3331543]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑StarRoosterUltimateChallenge*1
	tSVIPawardAction_Reward[3331543]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331543]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331543]["RewardEffect"]["Effect"] = "angelwing"


	-- ===SwordShadow礼盒
	-- ===索引:tSVIPawardAction_Reward[3331544]
	-- ===删除:3331544,1
	-- ===消耗天石:2999
	-- ===NewEMoneyLog:1000,01907
	tSVIPawardAction_Reward[3331544] = {}
	tSVIPawardAction_Reward[3331544]["LogId"] = 12002035
	tSVIPawardAction_Reward[3331544]["DeleteItem"] = {}
	tSVIPawardAction_Reward[3331544]["DeleteItem"][1] = {}
	tSVIPawardAction_Reward[3331544]["DeleteItem"][1]["Id"] = 3331544 -- 【库】SwordShadowBox[属性:8]
	tSVIPawardAction_Reward[3331544]["CostEMoney"] = {}
	tSVIPawardAction_Reward[3331544]["CostEMoney"]["Value"] = 2999 -- 消耗天石
	tSVIPawardAction_Reward[3331544]["CostEMoney"]["EmoneyLog"] = "1000	1907"
	tSVIPawardAction_Reward[3331544]["RewardItem"] = {}
	tSVIPawardAction_Reward[3331544]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3331544]["RewardItem"][1]["Id"] = 187505 -- SwordShadow[187505][属性:8][叠加:0][金币:0], 【表格】187505
	tSVIPawardAction_Reward[3331544]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑SwordShadow*1
	tSVIPawardAction_Reward[3331544]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331544]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331544]["RewardEffect"]["Effect"] = "angelwing"


	-- ===AnniversarySuit礼盒
	-- ===索引:tSVIPawardAction_Reward[3331545]
	-- ===删除:3331545,1
	-- ===消耗天石:3999
	-- ===NewEMoneyLog:1000,01907
	tSVIPawardAction_Reward[3331545] = {}
	tSVIPawardAction_Reward[3331545][1] = {}
	tSVIPawardAction_Reward[3331545][1]["LogId"] = 12002035
	tSVIPawardAction_Reward[3331545][1]["DeleteItem"] = {}
	tSVIPawardAction_Reward[3331545][1]["DeleteItem"][1] = {}
	tSVIPawardAction_Reward[3331545][1]["DeleteItem"][1]["Id"] = 3331545 -- 【库】AnniversarySuitBox[属性:8]
	tSVIPawardAction_Reward[3331545][1]["CostEMoney"] = {}
	tSVIPawardAction_Reward[3331545][1]["CostEMoney"]["Value"] = 3999 -- 消耗天石
	tSVIPawardAction_Reward[3331545][1]["CostEMoney"]["EmoneyLog"] = "1000	1907"
	tSVIPawardAction_Reward[3331545][1]["RewardItem"] = {}
	tSVIPawardAction_Reward[3331545][1]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3331545][1]["RewardItem"][1]["Id"] = 192165 -- AnniversarySuitPack[729302][属性:0][叠加:1][金币:0], 【表格】729302
	tSVIPawardAction_Reward[3331545][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- AnniversarySuitPack*1
	tSVIPawardAction_Reward[3331545][1]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331545][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331545][1]["RewardEffect"]["Effect"] = "angelwing"

	tSVIPawardAction_Reward[3331545][2] = {}
	tSVIPawardAction_Reward[3331545][2]["LogId"] = 12002035
	tSVIPawardAction_Reward[3331545][2]["DeleteItem"] = {}
	tSVIPawardAction_Reward[3331545][2]["DeleteItem"][1] = {}
	tSVIPawardAction_Reward[3331545][2]["DeleteItem"][1]["Id"] = 3331545 -- 【库】AnniversarySuitBox[属性:8]
	tSVIPawardAction_Reward[3331545][2]["CostEMoney"] = {}
	tSVIPawardAction_Reward[3331545][2]["CostEMoney"]["Value"] = 3999 -- 消耗天石
	tSVIPawardAction_Reward[3331545][2]["CostEMoney"]["EmoneyLog"] = "1000	1907"
	tSVIPawardAction_Reward[3331545][2]["RewardItem"] = {}
	tSVIPawardAction_Reward[3331545][2]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3331545][2]["RewardItem"][1]["Id"] = 187575 -- AnniversarySuitPack[729302][属性:0][叠加:1][金币:0], 【表格】729302
	tSVIPawardAction_Reward[3331545][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- AnniversarySuitPack*1
	tSVIPawardAction_Reward[3331545][2]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331545][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331545][2]["RewardEffect"]["Effect"] = "angelwing"
	-- ===ColourofWind礼盒
	-- ===索引:tSVIPawardAction_Reward[3331546]
	-- ===删除:3331546,1
	-- ===消耗天石:4999
	-- ===NewEMoneyLog:1000,01907
	tSVIPawardAction_Reward[3331546] = {}
	tSVIPawardAction_Reward[3331546]["LogId"] = 12002035
	tSVIPawardAction_Reward[3331546]["DeleteItem"] = {}
	tSVIPawardAction_Reward[3331546]["DeleteItem"][1] = {}
	tSVIPawardAction_Reward[3331546]["DeleteItem"][1]["Id"] = 3331546 -- 【库】ColourofWindBox[属性:8]
	tSVIPawardAction_Reward[3331546]["CostEMoney"] = {}
	tSVIPawardAction_Reward[3331546]["CostEMoney"]["Value"] = 4999 -- 消耗天石
	tSVIPawardAction_Reward[3331546]["CostEMoney"]["EmoneyLog"] = "1000	1907"
	tSVIPawardAction_Reward[3331546]["RewardItem"] = {}
	tSVIPawardAction_Reward[3331546]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3331546]["RewardItem"][1]["Id"] = 192425 -- ColorOfWind[192425][属性:0][叠加:0][金币:100], 【表格】192425
	tSVIPawardAction_Reward[3331546]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑ColorOfWind*1
	tSVIPawardAction_Reward[3331546]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331546]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331546]["RewardEffect"]["Effect"] = "angelwing"


	-- ===BrightPurpleRomance礼盒
	-- ===索引:tSVIPawardAction_Reward[3331547]
	-- ===删除:3331547,1
	-- ===消耗天石:14999
	-- ===NewEMoneyLog:1000,01907
	tSVIPawardAction_Reward[3331547] = {}
	tSVIPawardAction_Reward[3331547]["LogId"] = 12002035
	tSVIPawardAction_Reward[3331547]["DeleteItem"] = {}
	tSVIPawardAction_Reward[3331547]["DeleteItem"][1] = {}
	tSVIPawardAction_Reward[3331547]["DeleteItem"][1]["Id"] = 3331547 -- 【库】BrightPurpleRomanceBox[属性:8]
	tSVIPawardAction_Reward[3331547]["CostEMoney"] = {}
	tSVIPawardAction_Reward[3331547]["CostEMoney"]["Value"] = 14999 -- 消耗天石
	tSVIPawardAction_Reward[3331547]["CostEMoney"]["EmoneyLog"] = "1000	1907"
	tSVIPawardAction_Reward[3331547]["RewardItem"] = {}
	tSVIPawardAction_Reward[3331547]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3331547]["RewardItem"][1]["Id"] = 194875 -- BrightPurpleRomance[194875][属性:8][叠加:0][金币:0], 【表格】194875
	tSVIPawardAction_Reward[3331547]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑BrightPurpleRomance*1
	tSVIPawardAction_Reward[3331547]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331547]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331547]["RewardEffect"]["Effect"] = "angelwing"


	-- ===BubbleSwimsuit礼盒
	-- ===索引:tSVIPawardAction_Reward[3331548]
	-- ===删除:3331548,1
	-- ===消耗天石:29999
	-- ===NewEMoneyLog:1000,01907
	tSVIPawardAction_Reward[3331548] = {}
	tSVIPawardAction_Reward[3331548]["LogId"] = 12002035
	tSVIPawardAction_Reward[3331548]["DeleteItem"] = {}
	tSVIPawardAction_Reward[3331548]["DeleteItem"][1] = {}
	tSVIPawardAction_Reward[3331548]["DeleteItem"][1]["Id"] = 3331548 -- 【库】BubbleSwimsuitBox[属性:8]
	tSVIPawardAction_Reward[3331548]["CostEMoney"] = {}
	tSVIPawardAction_Reward[3331548]["CostEMoney"]["Value"] = 29999 -- 消耗天石
	tSVIPawardAction_Reward[3331548]["CostEMoney"]["EmoneyLog"] = "1000	1907"
	tSVIPawardAction_Reward[3331548]["RewardItem"] = {}
	tSVIPawardAction_Reward[3331548]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3331548]["RewardItem"][1]["Id"] = 189675 -- BubbleSwimsuit[189675][属性:0][叠加:0][金币:0], 【表格】189675
	tSVIPawardAction_Reward[3331548]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑BubbleSwimsuit*1
	tSVIPawardAction_Reward[3331548]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331548]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331548]["RewardEffect"]["Effect"] = "angelwing"


	-- ===Fuleco礼盒
	-- ===索引:tSVIPawardAction_Reward[3331549]
	-- ===删除:3331549,1
	-- ===消耗天石:4999
	-- ===NewEMoneyLog:1000,01907
	tSVIPawardAction_Reward[3331549] = {}
	tSVIPawardAction_Reward[3331549]["LogId"] = 12002035
	tSVIPawardAction_Reward[3331549]["DeleteItem"] = {}
	tSVIPawardAction_Reward[3331549]["DeleteItem"][1] = {}
	tSVIPawardAction_Reward[3331549]["DeleteItem"][1]["Id"] = 3331549 -- 【库】FulecoBox[属性:8]
	tSVIPawardAction_Reward[3331549]["CostEMoney"] = {}
	tSVIPawardAction_Reward[3331549]["CostEMoney"]["Value"] = 4999 -- 消耗天石
	tSVIPawardAction_Reward[3331549]["CostEMoney"]["EmoneyLog"] = "1000	1907"
	tSVIPawardAction_Reward[3331549]["RewardItem"] = {}
	tSVIPawardAction_Reward[3331549]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3331549]["RewardItem"][1]["Id"] = 200500 -- Fuleco[200500][属性:0][叠加:0][金币:0], 【表格】200500
	tSVIPawardAction_Reward[3331549]["RewardItem"][1]["Attr"] = "0 1" -- Fuleco*1
	tSVIPawardAction_Reward[3331549]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331549]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331549]["RewardEffect"]["Effect"] = "angelwing"


	-- ===FreedomSuit礼盒
	-- ===索引:tSVIPawardAction_Reward[3331550]
	-- ===删除:3331550,1
	-- ===消耗天石:4999
	-- ===NewEMoneyLog:1000,01907
	tSVIPawardAction_Reward[3331550] = {}
	tSVIPawardAction_Reward[3331550]["LogId"] = 12002035
	tSVIPawardAction_Reward[3331550]["DeleteItem"] = {}
	tSVIPawardAction_Reward[3331550]["DeleteItem"][1] = {}
	tSVIPawardAction_Reward[3331550]["DeleteItem"][1]["Id"] = 3331550 -- 【库】FreedomSuitBox[属性:8]
	tSVIPawardAction_Reward[3331550]["CostEMoney"] = {}
	tSVIPawardAction_Reward[3331550]["CostEMoney"]["Value"] = 4999 -- 消耗天石
	tSVIPawardAction_Reward[3331550]["CostEMoney"]["EmoneyLog"] = "1000	1907"
	tSVIPawardAction_Reward[3331550]["RewardItem"] = {}
	tSVIPawardAction_Reward[3331550]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3331550]["RewardItem"][1]["Id"] = 193195 -- FreedomSuit[193195][属性:0][叠加:0][金币:100], 【表格】193195
	tSVIPawardAction_Reward[3331550]["RewardItem"][1]["Attr"] = "0 1" -- FreedomSuit*1
	tSVIPawardAction_Reward[3331550]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331550]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331550]["RewardEffect"]["Effect"] = "angelwing"


	-- ===FrozenFantasy（Glory）礼盒
	-- ===索引:tSVIPawardAction_Reward[3331551]
	-- ===删除:3331551,1
	-- ===消耗天石:25999
	-- ===NewEMoneyLog:1000,01907
	tSVIPawardAction_Reward[3331551] = {}
	tSVIPawardAction_Reward[3331551]["LogId"] = 12002035
	tSVIPawardAction_Reward[3331551]["DeleteItem"] = {}
	tSVIPawardAction_Reward[3331551]["DeleteItem"][1] = {}
	tSVIPawardAction_Reward[3331551]["DeleteItem"][1]["Id"] = 3331551 -- 【库】FrozenFantasy(Glory)Box[属性:8]
	tSVIPawardAction_Reward[3331551]["CostEMoney"] = {}
	tSVIPawardAction_Reward[3331551]["CostEMoney"]["Value"] = 25999 -- 消耗天石
	tSVIPawardAction_Reward[3331551]["CostEMoney"]["EmoneyLog"] = "1000	1907"
	tSVIPawardAction_Reward[3331551]["RewardItem"] = {}
	tSVIPawardAction_Reward[3331551]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3331551]["RewardItem"][1]["Id"] = 193525 -- FrozenFantasy(Glory)[193525][属性:8][叠加:0][金币:0], 【表格】193525
	tSVIPawardAction_Reward[3331551]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑FrozenFantasy(Glory)*1
	tSVIPawardAction_Reward[3331551]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331551]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331551]["RewardEffect"]["Effect"] = "angelwing"


	-- ===FrozenFantasy（Glaze）礼盒
	-- ===索引:tSVIPawardAction_Reward[3331552]
	-- ===删除:3331552,1
	-- ===消耗天石:9999
	-- ===NewEMoneyLog:1000,01907
	tSVIPawardAction_Reward[3331552] = {}
	tSVIPawardAction_Reward[3331552]["LogId"] = 12002035
	tSVIPawardAction_Reward[3331552]["DeleteItem"] = {}
	tSVIPawardAction_Reward[3331552]["DeleteItem"][1] = {}
	tSVIPawardAction_Reward[3331552]["DeleteItem"][1]["Id"] = 3331552 -- 【库】FrozenFantasy(Glaze)Box[属性:8]
	tSVIPawardAction_Reward[3331552]["CostEMoney"] = {}
	tSVIPawardAction_Reward[3331552]["CostEMoney"]["Value"] = 9999 -- 消耗天石
	tSVIPawardAction_Reward[3331552]["CostEMoney"]["EmoneyLog"] = "1000	1907"
	tSVIPawardAction_Reward[3331552]["RewardItem"] = {}
	tSVIPawardAction_Reward[3331552]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3331552]["RewardItem"][1]["Id"] = 193445 -- FrozenFantasy(Glaze)[193445][属性:8][叠加:0][金币:0], 【表格】193445
	tSVIPawardAction_Reward[3331552]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑FrozenFantasy(Glaze)*1
	tSVIPawardAction_Reward[3331552]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331552]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331552]["RewardEffect"]["Effect"] = "angelwing"


	-- ===LavaCatRobe（Star）礼盒
	-- ===索引:tSVIPawardAction_Reward[3331553]
	-- ===删除:3331553,1
	-- ===消耗天石:25999
	-- ===NewEMoneyLog:1000,01907
	tSVIPawardAction_Reward[3331553] = {}
	tSVIPawardAction_Reward[3331553]["LogId"] = 12002035
	tSVIPawardAction_Reward[3331553]["DeleteItem"] = {}
	tSVIPawardAction_Reward[3331553]["DeleteItem"][1] = {}
	tSVIPawardAction_Reward[3331553]["DeleteItem"][1]["Id"] = 3331553 -- 【库】LavaCatRobe(Star)Box[属性:8]
	tSVIPawardAction_Reward[3331553]["CostEMoney"] = {}
	tSVIPawardAction_Reward[3331553]["CostEMoney"]["Value"] = 25999 -- 消耗天石
	tSVIPawardAction_Reward[3331553]["CostEMoney"]["EmoneyLog"] = "1000	1907"
	tSVIPawardAction_Reward[3331553]["RewardItem"] = {}
	tSVIPawardAction_Reward[3331553]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3331553]["RewardItem"][1]["Id"] = 193565 -- LavaCatRobe(Star)[193565][属性:0][叠加:0][金币:0], 【表格】193565
	tSVIPawardAction_Reward[3331553]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑LavaCatRobe(Star)*1
	tSVIPawardAction_Reward[3331553]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331553]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331553]["RewardEffect"]["Effect"] = "angelwing"


	-- ===RobeofDarkness（Hades） without helmet礼盒
	-- ===索引:tSVIPawardAction_Reward[3331554]
	-- ===删除:3331554,1
	-- ===消耗天石:25999
	-- ===NewEMoneyLog:1000,01907
	tSVIPawardAction_Reward[3331554] = {}
	tSVIPawardAction_Reward[3331554]["LogId"] = 12002035
	tSVIPawardAction_Reward[3331554]["DeleteItem"] = {}
	tSVIPawardAction_Reward[3331554]["DeleteItem"][1] = {}
	tSVIPawardAction_Reward[3331554]["DeleteItem"][1]["Id"] = 3331554 -- 【库】RobeofDarkness(Hades)Box[属性:8]
	tSVIPawardAction_Reward[3331554]["CostEMoney"] = {}
	tSVIPawardAction_Reward[3331554]["CostEMoney"]["Value"] = 9999 -- 消耗天石
	tSVIPawardAction_Reward[3331554]["CostEMoney"]["EmoneyLog"] = "1000	1907"
	tSVIPawardAction_Reward[3331554]["RewardItem"] = {}
	tSVIPawardAction_Reward[3331554]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3331554]["RewardItem"][1]["Id"] = 193275 -- RobeofDarkness(Hades)(NoHelmet)[193275][属性:8][叠加:0][金币:0], 【表格】193275
	tSVIPawardAction_Reward[3331554]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑RobeofDarkness(Hades)(NoHelmet)*1
	tSVIPawardAction_Reward[3331554]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331554]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331554]["RewardEffect"]["Effect"] = "angelwing"


	-- ===FelicityDance礼盒
	-- ===索引:tSVIPawardAction_Reward[3331555]
	-- ===删除:3331555,1
	-- ===消耗天石:499
	-- ===NewEMoneyLog:1000,01907
	tSVIPawardAction_Reward[3331555] = {}
	tSVIPawardAction_Reward[3331555]["LogId"] = 12002035
	tSVIPawardAction_Reward[3331555]["DeleteItem"] = {}
	tSVIPawardAction_Reward[3331555]["DeleteItem"][1] = {}
	tSVIPawardAction_Reward[3331555]["DeleteItem"][1]["Id"] = 3331555 -- 【库】FelicityDanceBox[属性:8]
	tSVIPawardAction_Reward[3331555]["CostEMoney"] = {}
	tSVIPawardAction_Reward[3331555]["CostEMoney"]["Value"] = 499 -- 消耗天石
	tSVIPawardAction_Reward[3331555]["CostEMoney"]["EmoneyLog"] = "1000	1907"
	tSVIPawardAction_Reward[3331555]["RewardItem"] = {}
	tSVIPawardAction_Reward[3331555]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3331555]["RewardItem"][1]["Id"] = 720359 -- FelicityBook[720359][属性:0][叠加:0][金币:0], 【表格】720359
	tSVIPawardAction_Reward[3331555]["RewardItem"][1]["Attr"] = "0 1" -- FelicityBook*1
	tSVIPawardAction_Reward[3331555]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331555]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331555]["RewardEffect"]["Effect"] = "angelwing"


	-- ===RockingRomance（Fantasy）礼盒
	-- ===索引:tSVIPawardAction_Reward[3331556]
	-- ===删除:3331556,1
	-- ===消耗天石:15999
	-- ===NewEMoneyLog:1000,01907
	tSVIPawardAction_Reward[3331556] = {}
	tSVIPawardAction_Reward[3331556]["LogId"] = 12002035
	tSVIPawardAction_Reward[3331556]["DeleteItem"] = {}
	tSVIPawardAction_Reward[3331556]["DeleteItem"][1] = {}
	tSVIPawardAction_Reward[3331556]["DeleteItem"][1]["Id"] = 3331556 -- 【库】RockingRomance(Fantasy)Box[属性:8]
	tSVIPawardAction_Reward[3331556]["CostEMoney"] = {}
	tSVIPawardAction_Reward[3331556]["CostEMoney"]["Value"] = 15999 -- 消耗天石
	tSVIPawardAction_Reward[3331556]["CostEMoney"]["EmoneyLog"] = "1000	1907"
	tSVIPawardAction_Reward[3331556]["RewardItem"] = {}
	tSVIPawardAction_Reward[3331556]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3331556]["RewardItem"][1]["Id"] = 195605 -- RockingRomance(Fantasy)[195605][属性:0][叠加:0][金币:0], 【表格】195605
	tSVIPawardAction_Reward[3331556]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑RockingRomance(Fantasy)*1
	tSVIPawardAction_Reward[3331556]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331556]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331556]["RewardEffect"]["Effect"] = "angelwing"


	-- ===RockingRomance礼盒
	-- ===索引:tSVIPawardAction_Reward[3331557]
	-- ===删除:3331557,1
	-- ===消耗天石:7999
	-- ===NewEMoneyLog:1000,01907
	tSVIPawardAction_Reward[3331557] = {}
	tSVIPawardAction_Reward[3331557]["LogId"] = 12002035
	tSVIPawardAction_Reward[3331557]["DeleteItem"] = {}
	tSVIPawardAction_Reward[3331557]["DeleteItem"][1] = {}
	tSVIPawardAction_Reward[3331557]["DeleteItem"][1]["Id"] = 3331557 -- 【库】RockingRomanceBox[属性:8]
	tSVIPawardAction_Reward[3331557]["CostEMoney"] = {}
	tSVIPawardAction_Reward[3331557]["CostEMoney"]["Value"] = 7999 -- 消耗天石
	tSVIPawardAction_Reward[3331557]["CostEMoney"]["EmoneyLog"] = "1000	1907"
	tSVIPawardAction_Reward[3331557]["RewardItem"] = {}
	tSVIPawardAction_Reward[3331557]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3331557]["RewardItem"][1]["Id"] = 195595 -- RockingRomance[195595][属性:0][叠加:0][金币:0], 【表格】195595
	tSVIPawardAction_Reward[3331557]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑RockingRomance*1
	tSVIPawardAction_Reward[3331557]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331557]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331557]["RewardEffect"]["Effect"] = "angelwing"


	-- ===BlossomRomance（Charm）礼盒
	-- ===索引:tSVIPawardAction_Reward[3331558]
	-- ===删除:3331558,1
	-- ===消耗天石:15999
	-- ===NewEMoneyLog:1000,01907
	tSVIPawardAction_Reward[3331558] = {}
	tSVIPawardAction_Reward[3331558]["LogId"] = 12002035
	tSVIPawardAction_Reward[3331558]["DeleteItem"] = {}
	tSVIPawardAction_Reward[3331558]["DeleteItem"][1] = {}
	tSVIPawardAction_Reward[3331558]["DeleteItem"][1]["Id"] = 3331558 -- 【库】BlossomRomance(Charm)Box[属性:8]
	tSVIPawardAction_Reward[3331558]["CostEMoney"] = {}
	tSVIPawardAction_Reward[3331558]["CostEMoney"]["Value"] = 15999 -- 消耗天石
	tSVIPawardAction_Reward[3331558]["CostEMoney"]["EmoneyLog"] = "1000	1907"
	tSVIPawardAction_Reward[3331558]["RewardItem"] = {}
	tSVIPawardAction_Reward[3331558]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3331558]["RewardItem"][1]["Id"] = 195405 -- BlossomRomance(Charm)[195405][属性:0][叠加:0][金币:0], 【表格】195405
	tSVIPawardAction_Reward[3331558]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑BlossomRomance(Charm)*1
	tSVIPawardAction_Reward[3331558]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331558]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331558]["RewardEffect"]["Effect"] = "angelwing"


	-- ===RockingRomance礼盒
	-- ===索引:tSVIPawardAction_Reward[3331559]
	-- ===删除:3331559,1
	-- ===消耗天石:6079
	-- ===NewEMoneyLog:1000,01907
	tSVIPawardAction_Reward[3331559] = {}
	tSVIPawardAction_Reward[3331559]["LogId"] = 12002035
	tSVIPawardAction_Reward[3331559]["DeleteItem"] = {}
	tSVIPawardAction_Reward[3331559]["DeleteItem"][1] = {}
	tSVIPawardAction_Reward[3331559]["DeleteItem"][1]["Id"] = 3331559 -- 【库】BlossomRomanceBox[属性:8]
	tSVIPawardAction_Reward[3331559]["CostEMoney"] = {}
	tSVIPawardAction_Reward[3331559]["CostEMoney"]["Value"] = 6079 -- 消耗天石
	tSVIPawardAction_Reward[3331559]["CostEMoney"]["EmoneyLog"] = "1000	1907"
	tSVIPawardAction_Reward[3331559]["RewardItem"] = {}
	tSVIPawardAction_Reward[3331559]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3331559]["RewardItem"][1]["Id"] = 195415 -- BlossomRomance[195415][属性:0][叠加:0][金币:0], 【表格】195415
	tSVIPawardAction_Reward[3331559]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑BlossomRomance*1
	tSVIPawardAction_Reward[3331559]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331559]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331559]["RewardEffect"]["Effect"] = "angelwing"


	-- ===AuspiciousCloud礼盒
	-- ===索引:tSVIPawardAction_Reward[3331560]
	-- ===删除:3331560,1
	-- ===消耗天石:19199
	-- ===NewEMoneyLog:1000,01907
	tSVIPawardAction_Reward[3331560] = {}
	tSVIPawardAction_Reward[3331560]["LogId"] = 12002035
	tSVIPawardAction_Reward[3331560]["DeleteItem"] = {}
	tSVIPawardAction_Reward[3331560]["DeleteItem"][1] = {}
	tSVIPawardAction_Reward[3331560]["DeleteItem"][1]["Id"] = 3331560 -- 【库】AuspiciousCloudBox[属性:8]
	tSVIPawardAction_Reward[3331560]["CostEMoney"] = {}
	tSVIPawardAction_Reward[3331560]["CostEMoney"]["Value"] = 19199 -- 消耗天石
	tSVIPawardAction_Reward[3331560]["CostEMoney"]["EmoneyLog"] = "1000	1907"
	tSVIPawardAction_Reward[3331560]["RewardItem"] = {}
	tSVIPawardAction_Reward[3331560]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3331560]["RewardItem"][1]["Id"] = 200629 -- AuspiciousCloud[200629][属性:0][叠加:0][金币:0], 【表格】200629
	tSVIPawardAction_Reward[3331560]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑AuspiciousCloud*1
	tSVIPawardAction_Reward[3331560]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331560]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331560]["RewardEffect"]["Effect"] = "angelwing"


	-- ===BlissfulForeverHeart礼盒
	-- ===索引:tSVIPawardAction_Reward[3331561]
	-- ===删除:3331561,1
	-- ===消耗天石:19199
	-- ===NewEMoneyLog:1000,01907
	tSVIPawardAction_Reward[3331561] = {}
	tSVIPawardAction_Reward[3331561]["LogId"] = 12002035
	tSVIPawardAction_Reward[3331561]["DeleteItem"] = {}
	tSVIPawardAction_Reward[3331561]["DeleteItem"][1] = {}
	tSVIPawardAction_Reward[3331561]["DeleteItem"][1]["Id"] = 3331561 -- 【库】BlissfulForeverHeartBox[属性:8]
	tSVIPawardAction_Reward[3331561]["CostEMoney"] = {}
	tSVIPawardAction_Reward[3331561]["CostEMoney"]["Value"] = 19199 -- 消耗天石
	tSVIPawardAction_Reward[3331561]["CostEMoney"]["EmoneyLog"] = "1000	1907"
	tSVIPawardAction_Reward[3331561]["RewardItem"] = {}
	tSVIPawardAction_Reward[3331561]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3331561]["RewardItem"][1]["Id"] = 195045 -- BlissfulForeverHeart[195045][属性:8][叠加:0][金币:0], 【表格】195045
	tSVIPawardAction_Reward[3331561]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑BlissfulForeverHeart*1
	tSVIPawardAction_Reward[3331561]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331561]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331561]["RewardEffect"]["Effect"] = "angelwing"


	-- ===ForeverHeart礼盒
	-- ===索引:tSVIPawardAction_Reward[3331562]
	-- ===删除:3331562,1
	-- ===消耗天石:19199
	-- ===NewEMoneyLog:1000,01907
	tSVIPawardAction_Reward[3331562] = {}
	tSVIPawardAction_Reward[3331562]["LogId"] = 12002035
	tSVIPawardAction_Reward[3331562]["DeleteItem"] = {}
	tSVIPawardAction_Reward[3331562]["DeleteItem"][1] = {}
	tSVIPawardAction_Reward[3331562]["DeleteItem"][1]["Id"] = 3331562 -- 【库】ForeverHeartBox[属性:8]
	tSVIPawardAction_Reward[3331562]["CostEMoney"] = {}
	tSVIPawardAction_Reward[3331562]["CostEMoney"]["Value"] = 2799 -- 消耗天石
	tSVIPawardAction_Reward[3331562]["CostEMoney"]["EmoneyLog"] = "1000	1907"
	tSVIPawardAction_Reward[3331562]["RewardItem"] = {}
	tSVIPawardAction_Reward[3331562]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3331562]["RewardItem"][1]["Id"] = 195055 -- BlissfulForeverHeart[195045][属性:8][叠加:0][金币:0], 【表格】195045
	tSVIPawardAction_Reward[3331562]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑BlissfulForeverHeart*1
	tSVIPawardAction_Reward[3331562]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331562]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331562]["RewardEffect"]["Effect"] = "angelwing"


	-- ===WingsofHeart
	-- ===索引:tSVIPawardAction_Reward[3331563]
	-- ===删除:3331563,1
	-- ===
	tSVIPawardAction_Reward[3331563] = {}
	tSVIPawardAction_Reward[3331563]["LogId"] = 12002035
	tSVIPawardAction_Reward[3331563]["DeleteItem"] = {}
	tSVIPawardAction_Reward[3331563]["DeleteItem"][1] = {}
	tSVIPawardAction_Reward[3331563]["DeleteItem"][1]["Id"] = 3331563 -- 【库】WingsofHeart[属性:8]
	tSVIPawardAction_Reward[3331563]["RewardWing"] = {}
	tSVIPawardAction_Reward[3331563]["RewardWing"]["TitleType"] = 6020 -- 【库】WingsofHeart, 【表格】WingsofHeart
	tSVIPawardAction_Reward[3331563]["RewardWing"]["TitleId"] = 6020
	tSVIPawardAction_Reward[3331563]["RewardWing"]["SaveTime"] = 0 -- 永久时效的[翅膀]:WingsofHeart, 【需求】WingsofHeart
	tSVIPawardAction_Reward[3331563]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331563]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331563]["RewardEffect"]["Effect"] = "angelwing"


	-- ===ForeverHeart礼盒
	-- ===索引:tSVIPawardAction_Reward[3331564]
	-- ===删除:3331564,1
	-- ===消耗天石:31999
	-- ===NewEMoneyLog:1000,01907
	tSVIPawardAction_Reward[3331564] = {}
	tSVIPawardAction_Reward[3331564]["LogId"] = 12002035
	tSVIPawardAction_Reward[3331564]["DeleteItem"] = {}
	tSVIPawardAction_Reward[3331564]["DeleteItem"][1] = {}
	tSVIPawardAction_Reward[3331564]["DeleteItem"][1]["Id"] = 3331564 -- 【库】WingsofHeartBox[属性:8]
	tSVIPawardAction_Reward[3331564]["CostEMoney"] = {}
	tSVIPawardAction_Reward[3331564]["CostEMoney"]["Value"] = 31999 -- 消耗天石
	tSVIPawardAction_Reward[3331564]["CostEMoney"]["EmoneyLog"] = "1000	1907"
	tSVIPawardAction_Reward[3331564]["RewardItem"] = {}
	tSVIPawardAction_Reward[3331564]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3331564]["RewardItem"][1]["Id"] = 3331563 -- WingsofHeart[3331563][属性:8][叠加:0][金币:0], 【表格】3331563
	tSVIPawardAction_Reward[3331564]["RewardItem"][1]["Attr"] = "0 1" -- WingsofHeart*1
	tSVIPawardAction_Reward[3331564]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331564]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331564]["RewardEffect"]["Effect"] = "angelwing"


	-- ===FlameDance礼盒
	-- ===索引:tSVIPawardAction_Reward[3331565]
	-- ===删除:3331565,1
	-- ===消耗天石:3199
	-- ===NewEMoneyLog:1000,01907
	tSVIPawardAction_Reward[3331565] = {}
	tSVIPawardAction_Reward[3331565]["LogId"] = 12002035
	tSVIPawardAction_Reward[3331565]["DeleteItem"] = {}
	tSVIPawardAction_Reward[3331565]["DeleteItem"][1] = {}
	tSVIPawardAction_Reward[3331565]["DeleteItem"][1]["Id"] = 3331565 -- 【库】FlameDanceBox[属性:8]
	tSVIPawardAction_Reward[3331565]["CostEMoney"] = {}
	tSVIPawardAction_Reward[3331565]["CostEMoney"]["Value"] = 3199 -- 消耗天石
	tSVIPawardAction_Reward[3331565]["CostEMoney"]["EmoneyLog"] = "1000	1907"
	tSVIPawardAction_Reward[3331565]["RewardItem"] = {}
	tSVIPawardAction_Reward[3331565]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3331565]["RewardItem"][1]["Id"] = 192785 -- FlameDance[192785][属性:0][叠加:0][金币:0], 【表格】192785
	tSVIPawardAction_Reward[3331565]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑FlameDance*1
	tSVIPawardAction_Reward[3331565]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331565]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331565]["RewardEffect"]["Effect"] = "angelwing"


	-- ===WindWalk礼盒
	-- ===索引:tSVIPawardAction_Reward[3331566]
	-- ===删除:3331566,1
	-- ===消耗天石:9599
	-- ===NewEMoneyLog:1000,01907
	tSVIPawardAction_Reward[3331566] = {}
	tSVIPawardAction_Reward[3331566]["LogId"] = 12002035
	tSVIPawardAction_Reward[3331566]["DeleteItem"] = {}
	tSVIPawardAction_Reward[3331566]["DeleteItem"][1] = {}
	tSVIPawardAction_Reward[3331566]["DeleteItem"][1]["Id"] = 3331566 -- 【库】WindWalkBox[属性:8]
	tSVIPawardAction_Reward[3331566]["CostEMoney"] = {}
	tSVIPawardAction_Reward[3331566]["CostEMoney"]["Value"] = 9599 -- 消耗天石
	tSVIPawardAction_Reward[3331566]["CostEMoney"]["EmoneyLog"] = "1000	1907"
	tSVIPawardAction_Reward[3331566]["RewardItem"] = {}
	tSVIPawardAction_Reward[3331566]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3331566]["RewardItem"][1]["Id"] = 192605 -- WindWalk[192605][属性:0][叠加:0][金币:100], 【表格】192605
	tSVIPawardAction_Reward[3331566]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑WindWalk*1
	tSVIPawardAction_Reward[3331566]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331566]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331566]["RewardEffect"]["Effect"] = "angelwing"


	-- ===FoxSpirit（Charm）礼盒
	-- ===索引:tSVIPawardAction_Reward[3331567]
	-- ===删除:3331567,1
	-- ===消耗天石:12710
	-- ===NewEMoneyLog:1000,01907
	tSVIPawardAction_Reward[3331567] = {}
	tSVIPawardAction_Reward[3331567]["LogId"] = 12002035
	tSVIPawardAction_Reward[3331567]["DeleteItem"] = {}
	tSVIPawardAction_Reward[3331567]["DeleteItem"][1] = {}
	tSVIPawardAction_Reward[3331567]["DeleteItem"][1]["Id"] = 3331567 -- 【库】FoxSpirit(Charm)Box[属性:8]
	tSVIPawardAction_Reward[3331567]["CostEMoney"] = {}
	tSVIPawardAction_Reward[3331567]["CostEMoney"]["Value"] = 12710 -- 消耗天石
	tSVIPawardAction_Reward[3331567]["CostEMoney"]["EmoneyLog"] = "1000	1907"
	tSVIPawardAction_Reward[3331567]["RewardItem"] = {}
	tSVIPawardAction_Reward[3331567]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3331567]["RewardItem"][1]["Id"] = 194405 -- FoxSpirit(Charm)[194405][属性:8][叠加:0][金币:0], 【表格】194405
	tSVIPawardAction_Reward[3331567]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑FoxSpirit(Charm)*1
	tSVIPawardAction_Reward[3331567]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331567]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331567]["RewardEffect"]["Effect"] = "angelwing"


	-- ===RadiantGoldenRetriever礼盒
	-- ===索引:tSVIPawardAction_Reward[3331568]
	-- ===删除:3331568,1
	-- ===消耗天石:12710
	-- ===NewEMoneyLog:1000,01907
	tSVIPawardAction_Reward[3331568] = {}
	tSVIPawardAction_Reward[3331568]["LogId"] = 12002035
	tSVIPawardAction_Reward[3331568]["DeleteItem"] = {}
	tSVIPawardAction_Reward[3331568]["DeleteItem"][1] = {}
	tSVIPawardAction_Reward[3331568]["DeleteItem"][1]["Id"] = 3331568 -- 【库】RadiantGoldenRetrieverBox[属性:8]
	tSVIPawardAction_Reward[3331568]["CostEMoney"] = {}
	tSVIPawardAction_Reward[3331568]["CostEMoney"]["Value"] = 12710 -- 消耗天石
	tSVIPawardAction_Reward[3331568]["CostEMoney"]["EmoneyLog"] = "1000	1907"
	tSVIPawardAction_Reward[3331568]["RewardItem"] = {}
	tSVIPawardAction_Reward[3331568]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3331568]["RewardItem"][1]["Id"] = 200623 -- RadiantGoldenRetriever[200623][属性:0][叠加:0][金币:0], 【表格】200623
	tSVIPawardAction_Reward[3331568]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑RadiantGoldenRetriever*1
	tSVIPawardAction_Reward[3331568]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331568]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331568]["RewardEffect"]["Effect"] = "angelwing"


	-- ===Superdog礼盒
	-- ===索引:tSVIPawardAction_Reward[3331569]
	-- ===删除:3331569,1
	-- ===消耗天石:15999
	-- ===NewEMoneyLog:1000,01907
	tSVIPawardAction_Reward[3331569] = {}
	tSVIPawardAction_Reward[3331569]["LogId"] = 12002035
	tSVIPawardAction_Reward[3331569]["DeleteItem"] = {}
	tSVIPawardAction_Reward[3331569]["DeleteItem"][1] = {}
	tSVIPawardAction_Reward[3331569]["DeleteItem"][1]["Id"] = 3331569 -- 【库】SuperdogBox[属性:8]
	tSVIPawardAction_Reward[3331569]["CostEMoney"] = {}
	tSVIPawardAction_Reward[3331569]["CostEMoney"]["Value"] = 15999 -- 消耗天石
	tSVIPawardAction_Reward[3331569]["CostEMoney"]["EmoneyLog"] = "1000	1907"
	tSVIPawardAction_Reward[3331569]["RewardItem"] = {}
	tSVIPawardAction_Reward[3331569]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3331569]["RewardItem"][1]["Id"] = 200624 -- Superdog[200624][属性:0][叠加:0][金币:0], 【表格】200624
	tSVIPawardAction_Reward[3331569]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑Superdog*1
	tSVIPawardAction_Reward[3331569]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331569]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331569]["RewardEffect"]["Effect"] = "angelwing"


	-- ===FierceCloud礼盒
	-- ===索引:tSVIPawardAction_Reward[3331570]
	-- ===删除:3331570,1
	-- ===消耗天石:20799
	-- ===NewEMoneyLog:1000,01907
	tSVIPawardAction_Reward[3331570] = {}
	tSVIPawardAction_Reward[3331570]["LogId"] = 12002035
	tSVIPawardAction_Reward[3331570]["DeleteItem"] = {}
	tSVIPawardAction_Reward[3331570]["DeleteItem"][1] = {}
	tSVIPawardAction_Reward[3331570]["DeleteItem"][1]["Id"] = 3331570 -- 【库】FierceCloudBox[属性:8]
	tSVIPawardAction_Reward[3331570]["CostEMoney"] = {}
	tSVIPawardAction_Reward[3331570]["CostEMoney"]["Value"] = 20799 -- 消耗天石
	tSVIPawardAction_Reward[3331570]["CostEMoney"]["EmoneyLog"] = "1000	1907"
	tSVIPawardAction_Reward[3331570]["RewardItem"] = {}
	tSVIPawardAction_Reward[3331570]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3331570]["RewardItem"][1]["Id"] = 200613 -- FierceCloud[200613][属性:0][叠加:0][金币:0], 【表格】200613
	tSVIPawardAction_Reward[3331570]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑FierceCloud*1
	tSVIPawardAction_Reward[3331570]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331570]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331570]["RewardEffect"]["Effect"] = "angelwing"


	-- ===FierceCloud礼盒
	-- ===索引:tSVIPawardAction_Reward[3331571]
	-- ===删除:3331571,1
	-- ===消耗天石:20799
	-- ===NewEMoneyLog:1000,01907
	tSVIPawardAction_Reward[3331571] = {}
	tSVIPawardAction_Reward[3331571]["LogId"] = 12002035
	tSVIPawardAction_Reward[3331571]["DeleteItem"] = {}
	tSVIPawardAction_Reward[3331571]["DeleteItem"][1] = {}
	tSVIPawardAction_Reward[3331571]["DeleteItem"][1]["Id"] = 3331571 -- 【库】PacificCloudBox[属性:8]
	tSVIPawardAction_Reward[3331571]["CostEMoney"] = {}
	tSVIPawardAction_Reward[3331571]["CostEMoney"]["Value"] = 20799 -- 消耗天石
	tSVIPawardAction_Reward[3331571]["CostEMoney"]["EmoneyLog"] = "1000	1907"
	tSVIPawardAction_Reward[3331571]["RewardItem"] = {}
	tSVIPawardAction_Reward[3331571]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3331571]["RewardItem"][1]["Id"] = 200614 -- PacificCloud[200614][属性:0][叠加:0][金币:0], 【表格】200614
	tSVIPawardAction_Reward[3331571]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑PacificCloud*1
	tSVIPawardAction_Reward[3331571]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331571]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331571]["RewardEffect"]["Effect"] = "angelwing"


	-- ===璀璨金莲礼盒
	-- ===索引:tSVIPawardAction_Reward[3331572]
	-- ===删除:3331572,1
	-- ===消耗天石:20799
	-- ===NewEMoneyLog:1000,01907
	tSVIPawardAction_Reward[3331572] = {}
	tSVIPawardAction_Reward[3331572]["LogId"] = 12002035
	tSVIPawardAction_Reward[3331572]["DeleteItem"] = {}
	tSVIPawardAction_Reward[3331572]["DeleteItem"][1] = {}
	tSVIPawardAction_Reward[3331572]["DeleteItem"][1]["Id"] = 3331572 -- 【库】RadiantLotusBox[属性:8]
	tSVIPawardAction_Reward[3331572]["CostEMoney"] = {}
	tSVIPawardAction_Reward[3331572]["CostEMoney"]["Value"] = 20799 -- 消耗天石
	tSVIPawardAction_Reward[3331572]["CostEMoney"]["EmoneyLog"] = "1000	1907"
	tSVIPawardAction_Reward[3331572]["RewardItem"] = {}
	tSVIPawardAction_Reward[3331572]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3331572]["RewardItem"][1]["Id"] = 200573 -- RadiantLotus[200573][属性:0][叠加:0][金币:0], 【表格】200573
	tSVIPawardAction_Reward[3331572]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑RadiantLotus*1
	tSVIPawardAction_Reward[3331572]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331572]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331572]["RewardEffect"]["Effect"] = "angelwing"


	-- ===璀璨金莲礼盒
	-- ===索引:tSVIPawardAction_Reward[3331573]
	-- ===删除:3331573,1
	-- ===消耗天石:20799
	-- ===NewEMoneyLog:1000,01907
	tSVIPawardAction_Reward[3331573] = {}
	tSVIPawardAction_Reward[3331573]["LogId"] = 12002035
	tSVIPawardAction_Reward[3331573]["DeleteItem"] = {}
	tSVIPawardAction_Reward[3331573]["DeleteItem"][1] = {}
	tSVIPawardAction_Reward[3331573]["DeleteItem"][1]["Id"] = 3331573 -- 【库】StarRoosterBox[属性:8]
	tSVIPawardAction_Reward[3331573]["CostEMoney"] = {}
	tSVIPawardAction_Reward[3331573]["CostEMoney"]["Value"] = 7999 -- 消耗天石
	tSVIPawardAction_Reward[3331573]["CostEMoney"]["EmoneyLog"] = "1000	1907"
	tSVIPawardAction_Reward[3331573]["RewardItem"] = {}
	tSVIPawardAction_Reward[3331573]["RewardItem"][1] = {}
	tSVIPawardAction_Reward[3331573]["RewardItem"][1]["Id"] = 200592 -- StarRoosterUltimateChallenge[200592][属性:8][叠加:0][金币:0], 【表格】200592
	tSVIPawardAction_Reward[3331573]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑StarRoosterUltimateChallenge*1
	tSVIPawardAction_Reward[3331573]["RewardEffect"] = {}
	tSVIPawardAction_Reward[3331573]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSVIPawardAction_Reward[3331573]["RewardEffect"]["Effect"] = "angelwing"



----------------------------------逻辑部分-------------------------------------------

--礼包使用
function SVIPawardAction_UsePackge(nItemId)

	local nUserId = Get_UserId()
	--判断物品
	if not Item_ChkItem(nItemId) then
		return	
	end	

	--背包空间判断
	-- local nSpaceSum = RewardTemplate_GetRewardSpace(tSVIPawardAction_Reward[nItemId],nUserId) 
	
	-- if not User_CheckLeftSpace(nSpaceSum,nUserId) then
		-- local sSay = string.format(tSVIPawardAction_Text["Sys"]["NoSpace"],nSpaceSum)
		-- User_TalkChannel2005(sSay)
		-- return
	-- end
	RewardTemplate_UseItemAndMsg(tSVIPawardAction_Reward[nItemId])
	
end
function SVIPawardAction_Use(nItemId,nIndex)
	local nUserId = Get_UserId()
	--判断物品
	if not Item_ChkItem(nItemId) then
		return	
	end	
	RewardTemplate_UseItemAndMsg(tSVIPawardAction_Reward[nItemId][nIndex])
end

function SVIPawardAction_Price(nIndex,nItemId)
	if not Item_ChkItem(nItemId) then
		return	
	end	
	local nUserId = Get_UserId()
	local nRewardTable 
	--赠点
	if nIndex == 1 then 
		local nEmoneyMono = Get_UserMonoEMoney(nUserId)
		--数量不足
		if nEmoneyMono < tSVIPawardAction_Cont["EmoneyMono"][nItemId] then 
			Sys_MsgBox(tSVIPawardAction_Text["NoEmoneyMono"])
			return
		end
		nRewardTable = tSVIPawardAction_Reward[nItemId][1]
	elseif nIndex == 2 then
		if not User_CanPutMoney2Bag(-tSVIPawardAction_Cont["Money"][nItemId],nUserId) then
			Sys_MsgBox(tSVIPawardAction_Text["NoMoney"])
			return
		end
		nRewardTable = tSVIPawardAction_Reward[nItemId][2]
	elseif nIndex == 3 then
		local nEmoney = Get_UserEMoney(nUserId)
		if nEmoney < tSVIPawardAction_Cont["EMoney"][nItemId] then 
			Sys_MsgBox(tSVIPawardAction_Text["NoEmoney"])
			return
		end
		nRewardTable = tSVIPawardAction_Reward[nItemId]
	end 
	if not RewardTemplate_CheckSpace(nRewardTable) then
		local nSpace = RewardTemplate_GetRewardSpace(nRewardTable)
		Sys_MsgBox(string.format(tSVIPawardAction_Text["Space"],nSpace))
		return
	end
	if nItemId == 3331550 or nItemId == 3331549 then
		if Item_DelItem(nItemId) and User_AddEMoneyAndLog(-nRewardTable["CostEMoney"]["Value"],nRewardTable["CostEMoney"]["EmoneyLog"],nUserId) then 
			if AddNewItem(nUserId,nRewardTable["RewardItem"][1]["Id"],0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0) then
				Sys_SaveActionRewardLog(tSVIPawardAction_Cont["Log"],nUserId)
			end
		end
	else
		RewardTemplate_UseItemAndMsg(nRewardTable) 
	end
	
end

----------------------------------物品部分---------------------------------------------



tItem[3320101] = tItem[3320101] or {}
tItem[3320101]["Function"] = function(nItemId,sItemName)
	SVIPawardAction_UsePackge(nItemId)
end
tItem[3320102] = tItem[3320101] or {}  
tItem[3320103] = tItem[3320101] or {} 



tItem[3331529] = tItem[3320101]
tItem[3331530] = tItem[3320101]

tItem[3331531] = tItem[3331531] or {}
tItem[3331531]["Function"] = function(nItemId,sItemName)
	if not Item_ChkItem(nItemId) then
		return	
	end	
	RewardTemplate_RandomReward(tSVIPawardAction_Reward,nItemId)	
end

tItem[3331532] = tItem[3331532] or {}
tItem[3331532]["Function"] = function(nItemId,sItemName)
	if not Item_ChkItem(nItemId) then
		return	
	end	
	tItem[nItemId]["Text111"] = string.format(tSVIPawardAction_Text[3331532]["Text111"],tSVIPawardAction_Cont["EmoneyMono"][nItemId],tSVIPawardAction_Cont["Money"][nItemId])
	tItem[nItemId]["Text211"] = string.format(tSVIPawardAction_Text[3331532]["Text211"],tSVIPawardAction_Cont["EmoneyMono"][nItemId])
	tItem[nItemId]["OptionFunc211"]  = "SVIPawardAction_Price</N>1</N>"..nItemId
	tItem[nItemId]["Text311"] = string.format(tSVIPawardAction_Text[3331532]["Text311"],tSVIPawardAction_Cont["Money"][nItemId])
	tItem[nItemId]["OptionFunc311"]  = "SVIPawardAction_Price</N>2</N>"..nItemId
	LinkItemGossipFunc_New(nItemId, "1-1")
end
tItem[3331532]["DialogueText"] = tSVIPawardAction_Text[3331532]

tItem[3331532]["Text1-1"] = {111}
tItem[3331532]["ChkFunc1-1"] = function(nItemId)

	return true
end
tItem[3331532]["tOption1-1"] = {111,112}
tItem[3331532]["OptionPoint111"] = "2-1"
tItem[3331532]["OptionPoint112"] = "3-1"
tItem[3331532]["Text2-1"] = {211}
tItem[3331532]["tOption2-1"] = {211,212}

tItem[3331532]["Text3-1"] = {311}
tItem[3331532]["tOption3-1"] = {311,312}

tItem[3331533] = tItem[3331532]
tItem[3331534] = tItem[3331532]
tItem[3331535] = tItem[3331532]
tItem[3331536] = tItem[3331532]
tItem[3331537] = tItem[3331532]
tItem[3331538] = tItem[3331532]

tItem[3331539] = tItem[3331539] or {}
tItem[3331539]["DialogueText"] = tSVIPawardAction_Text[3331539]

tItem[3331539]["Text1-1"] = {111}
tItem[3331539]["tOption1-1"] = {111,112}
tItem[3331539]["Function"] = function(nItemId)
	if not Item_ChkItem(nItemId) then
		return false
	end
	tItem[nItemId]["Text111"] = string.format(tSVIPawardAction_Text[3331539]["Text111"],tSVIPawardAction_Cont["EMoney"][nItemId],tSVIPawardAction_Text["Reward"][nItemId])
	tItem[nItemId]["Text211"] = string.format(tSVIPawardAction_Text[3331539]["Text211"],tSVIPawardAction_Cont["EMoney"][nItemId])
	tItem[nItemId]["OptionFunc211"] = "SVIPawardAction_Price</N>3</N>"..nItemId
	LinkItemGossipFunc_New(nItemId, "1-1")
end
tItem[3331539]["OptionPoint111"] = "2-1"

tItem[3331539]["Text2-1"] = {211}
tItem[3331539]["tOption2-1"] = {211,212}
tItem[3331539]["OptionFunc211"] = ""


tItem[3331540] = tItem[3331539]
tItem[3331541] = tItem[3331539]
tItem[3331542] = tItem[3331539]
tItem[3331543] = tItem[3331539]
tItem[3331544] = tItem[3331539]
tItem[3331545] = tItem[3331545] or {}
tItem[3331545]["DialogueText"] = tSVIPawardAction_Text[3331545]
tItem[3331545]["Text1-1"] = {111}
tItem[3331545]["tOption1-1"] = {111,112}
tItem[3331545]["Function"] = function(nItemId)
	if not Item_ChkItem(nItemId) then
		return false
	end
	LinkItemGossipFunc_New(nItemId, "1-1")
end
tItem[3331545]["OptionPoint111"] = "2-1"

tItem[3331545]["Text2-1"] = {211}
tItem[3331545]["tOption2-1"] = {211,212}
tItem[3331545]["OptionFunc211"] = "SVIPawardAction_Use</N>3331545</N>1"
tItem[3331545]["OptionFunc212"] = "SVIPawardAction_Use</N>3331545</N>2"

tItem[3331546] = tItem[3331539]
tItem[3331547] = tItem[3331539]
tItem[3331548] = tItem[3331539]
tItem[3331549] = tItem[3331539]
tItem[3331550] = tItem[3331539]
tItem[3331551] = tItem[3331539]
tItem[3331552] = tItem[3331539]
tItem[3331553] = tItem[3331539]
tItem[3331554] = tItem[3331539]
tItem[3331555] = tItem[3331539]
tItem[3331556] = tItem[3331539]
tItem[3331557] = tItem[3331539]
tItem[3331558] = tItem[3331539]
tItem[3331559] = tItem[3331539]
tItem[3331560] = tItem[3331539]
tItem[3331561] = tItem[3331539]
tItem[3331562] = tItem[3331539]

tItem[3331563] = tItem[3320101]

tItem[3331564] = tItem[3331539]
tItem[3331565] = tItem[3331539]
tItem[3331566] = tItem[3331539]
tItem[3331567] = tItem[3331539]
tItem[3331568] = tItem[3331539]
tItem[3331569] = tItem[3331539]
tItem[3331570] = tItem[3331539]
tItem[3331571] = tItem[3331539]
tItem[3331572] = tItem[3331539]
tItem[3331573] = tItem[3331539]


tItemFace[3331532] =  2981

tItemFace[3331533] = 2941
tItemFace[3331534] = 671
tItemFace[3331535] = 1011
tItemFace[3331536] = 490
tItemFace[3331537] = 1023
tItemFace[3331538] = 2409
tItemFace[3331539] = 1153
tItemFace[3331540] = 1039
tItemFace[3331541] = 2949
tItemFace[3331542] = 612
tItemFace[3331543] = 1441

tItemFace[3331544] = 932

tItemFace[3331545] = 1265
tItemFace[3331546] = 2272
tItemFace[3331547] = 2601
tItemFace[3331548] = 2911
tItemFace[3331549] = 1028
tItemFace[3331550] = 1024
tItemFace[3331551] = 2202
tItemFace[3331552] = 2314
tItemFace[3331553] = 2910
tItemFace[3331554] = 2307
tItemFace[3331555] = 425
tItemFace[3331556] = 428
tItemFace[3331557] = 429
tItemFace[3331558] = 1002
tItemFace[3331559] = 2313
tItemFace[3331560] = 430
tItemFace[3331561] = 2948
tItemFace[3331562] = 2275

tItemFace[3331563] =  2982

tItemFace[3331564] = 951
tItemFace[3331565] = 2703
tItemFace[3331566] = 424
tItemFace[3331567] = 1031
tItemFace[3331568] = 1032

tItemFace[3331569] = 2983

tItemFace[3331570] = 611
tItemFace[3331571] = 660
tItemFace[3331572] = 436
tItemFace[3331573] = 2852