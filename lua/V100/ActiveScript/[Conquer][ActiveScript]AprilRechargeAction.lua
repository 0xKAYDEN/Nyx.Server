------------------------------------------------------------------------------------
--Name：            190306[英文征服][活动脚本]4月充值发奖礼包和action制作（4.2）
--Creator:      杨艳
--Created:     2019/03/06
------------------------------------------------------------------------------------

--前缀 AprilRechargeAction_
-- logid: 12001339
------------------------------------------------------------------------------------
local tAprilRechargeAction_Award = {}
	-- ===充值排行第1名
	-- ===索引: 3320456
	-- ===删除: 3320456,1
	-- ===
	tAprilRechargeAction_Award[3320456] = {}
	tAprilRechargeAction_Award[3320456]["LogId"] = 12001339
	tAprilRechargeAction_Award[3320456]["DeleteItem"] = {}
	tAprilRechargeAction_Award[3320456]["DeleteItem"][1] = {}
	tAprilRechargeAction_Award[3320456]["DeleteItem"][1]["Id"] = 3320456 -- 【库】LegendaryCreditPack[属性:9]
	tAprilRechargeAction_Award[3320456]["RewardItem"] = {}
	tAprilRechargeAction_Award[3320456]["RewardItem"][1] = {}
	tAprilRechargeAction_Award[3320456]["RewardItem"][1]["Id"] = 3009102 -- 【库】MoonFruit[属性:9]【表格】辉月果*120
	tAprilRechargeAction_Award[3320456]["RewardItem"][1]["Attr"] = "0 120" -- MoonFruit*120
	tAprilRechargeAction_Award[3320456]["RewardStrengthValue"] = {}
	tAprilRechargeAction_Award[3320456]["RewardStrengthValue"]["Value"] = 200000 -- 气力值
	tAprilRechargeAction_Award[3320456]["RewardEffect"] = {}
	tAprilRechargeAction_Award[3320456]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilRechargeAction_Award[3320456]["RewardEffect"]["Effect"] = "angelwing"


	-- ===充值排行第2名
	-- ===索引: 3320457
	-- ===删除: 3320457,1
	tAprilRechargeAction_Award[3320457] = {}
	tAprilRechargeAction_Award[3320457]["LogId"] = 12001339
	tAprilRechargeAction_Award[3320457]["DeleteItem"] = {}
	tAprilRechargeAction_Award[3320457]["DeleteItem"][1] = {}
	tAprilRechargeAction_Award[3320457]["DeleteItem"][1]["Id"] = 3320457 -- 【库】GrandCreditPack[属性:9]
	tAprilRechargeAction_Award[3320457]["RewardItem"] = {}
	tAprilRechargeAction_Award[3320457]["RewardItem"][1] = {}
	tAprilRechargeAction_Award[3320457]["RewardItem"][1]["Id"] = 3009102 -- 【库】MoonFruit[属性:9]【表格】辉月果*120
	tAprilRechargeAction_Award[3320457]["RewardItem"][1]["Attr"] = "0 80" -- MoonFruit*80
	tAprilRechargeAction_Award[3320457]["RewardStrengthValue"] = {}
	tAprilRechargeAction_Award[3320457]["RewardStrengthValue"]["Value"] = 150000 -- 气力值
	tAprilRechargeAction_Award[3320457]["RewardEffect"] = {}
	tAprilRechargeAction_Award[3320457]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilRechargeAction_Award[3320457]["RewardEffect"]["Effect"] = "angelwing"


	-- ===充值排行第3名
	-- ===索引: 3320458
	-- ===删除: 3320458,1
	tAprilRechargeAction_Award[3320458] = {}
	tAprilRechargeAction_Award[3320458]["LogId"] = 12001339
	tAprilRechargeAction_Award[3320458]["DeleteItem"] = {}
	tAprilRechargeAction_Award[3320458]["DeleteItem"][1] = {}
	tAprilRechargeAction_Award[3320458]["DeleteItem"][1]["Id"] = 3320458 -- 【库】LuxuryCreditPack[属性:9]
	tAprilRechargeAction_Award[3320458]["RewardItem"] = {}
	tAprilRechargeAction_Award[3320458]["RewardItem"][1] = {}
	tAprilRechargeAction_Award[3320458]["RewardItem"][1]["Id"] = 3009102 -- 【库】MoonFruit[属性:9]【表格】辉月果*60
	tAprilRechargeAction_Award[3320458]["RewardItem"][1]["Attr"] = "0 60" -- MoonFruit*60
	tAprilRechargeAction_Award[3320458]["RewardStrengthValue"] = {}
	tAprilRechargeAction_Award[3320458]["RewardStrengthValue"]["Value"] = 100000 -- 气力值
	tAprilRechargeAction_Award[3320458]["RewardEffect"] = {}
	tAprilRechargeAction_Award[3320458]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilRechargeAction_Award[3320458]["RewardEffect"]["Effect"] = "angelwing"


	-- ===充值排行第4-10名
	-- ===索引: 3320459
	-- ===删除: 3320459,1
	tAprilRechargeAction_Award[3320459] = {}
	tAprilRechargeAction_Award[3320459]["LogId"] = 12001339
	tAprilRechargeAction_Award[3320459]["DeleteItem"] = {}
	tAprilRechargeAction_Award[3320459]["DeleteItem"][1] = {}
	tAprilRechargeAction_Award[3320459]["DeleteItem"][1]["Id"] = 3320459 -- 【库】ValuableCreditPack[属性:9]
	tAprilRechargeAction_Award[3320459]["RewardItem"] = {}
	tAprilRechargeAction_Award[3320459]["RewardItem"][1] = {}
	tAprilRechargeAction_Award[3320459]["RewardItem"][1]["Id"] = 3009101 -- 【库】DragonFruit[属性:9]【表格】龙鳞果*100
	tAprilRechargeAction_Award[3320459]["RewardItem"][1]["Attr"] = "0 100" -- DragonFruit*100
	tAprilRechargeAction_Award[3320459]["RewardStrengthValue"] = {}
	tAprilRechargeAction_Award[3320459]["RewardStrengthValue"]["Value"] = 60000 -- 气力值
	tAprilRechargeAction_Award[3320459]["RewardEffect"] = {}
	tAprilRechargeAction_Award[3320459]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilRechargeAction_Award[3320459]["RewardEffect"]["Effect"] = "angelwing"


	-- ===充值排行第11-20名
	-- ===索引: 3320460
	-- ===删除: 3320460,1
	tAprilRechargeAction_Award[3320460] = {}
	tAprilRechargeAction_Award[3320460]["LogId"] = 12001339
	tAprilRechargeAction_Award[3320460]["DeleteItem"] = {}
	tAprilRechargeAction_Award[3320460]["DeleteItem"][1] = {}
	tAprilRechargeAction_Award[3320460]["DeleteItem"][1]["Id"] = 3320460 -- 【库】FancyCreditPack[属性:9]
	tAprilRechargeAction_Award[3320460]["RewardItem"] = {}
	tAprilRechargeAction_Award[3320460]["RewardItem"][1] = {}
	tAprilRechargeAction_Award[3320460]["RewardItem"][1]["Id"] = 3009101 -- 【库】DragonFruit[属性:9]【表格】龙鳞果*60
	tAprilRechargeAction_Award[3320460]["RewardItem"][1]["Attr"] = "0 60" -- DragonFruit*60
	tAprilRechargeAction_Award[3320460]["RewardStrengthValue"] = {}
	tAprilRechargeAction_Award[3320460]["RewardStrengthValue"]["Value"] = 40000 -- 气力值
	tAprilRechargeAction_Award[3320460]["RewardEffect"] = {}
	tAprilRechargeAction_Award[3320460]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilRechargeAction_Award[3320460]["RewardEffect"]["Effect"] = "angelwing"


	-- ===天石-200赠	10000	0226
	-- ===索引: 3320676
	-- ===删除: 3320676,1
	tAprilRechargeAction_Award[3320676] = {}
	tAprilRechargeAction_Award[3320676]["LogId"] = 12001339
	tAprilRechargeAction_Award[3320676]["DeleteItem"] = {}
	tAprilRechargeAction_Award[3320676]["DeleteItem"][1] = {}
	tAprilRechargeAction_Award[3320676]["DeleteItem"][1]["Id"] = 3320676 -- 【库】200CPs(B)Pack[属性:9]
	tAprilRechargeAction_Award[3320676]["RewardEMoneyMono"] = {}
	tAprilRechargeAction_Award[3320676]["RewardEMoneyMono"]["Value"] = 200 -- 天石（赠）
	tAprilRechargeAction_Award[3320676]["EmoneyLog"] = "10000	0226	0	0	-200	"
	tAprilRechargeAction_Award[3320676]["RewardEffect"] = {}
	tAprilRechargeAction_Award[3320676]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilRechargeAction_Award[3320676]["RewardEffect"]["Effect"] = "angelwing"


	-- ===天石-400赠
	-- ===索引: 3320677
	-- ===删除: 3320677,1
	tAprilRechargeAction_Award[3320677] = {}
	tAprilRechargeAction_Award[3320677]["LogId"] = 12001339
	tAprilRechargeAction_Award[3320677]["DeleteItem"] = {}
	tAprilRechargeAction_Award[3320677]["DeleteItem"][1] = {}
	tAprilRechargeAction_Award[3320677]["DeleteItem"][1]["Id"] = 3320677 -- 【库】400CPs(B)Pack[属性:9]
	tAprilRechargeAction_Award[3320677]["RewardEMoneyMono"] = {}
	tAprilRechargeAction_Award[3320677]["RewardEMoneyMono"]["Value"] = 400 -- 天石（赠）
	tAprilRechargeAction_Award[3320677]["EmoneyLog"] = "350	22235	0	0	-400	"
	tAprilRechargeAction_Award[3320677]["RewardEffect"] = {}
	tAprilRechargeAction_Award[3320677]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilRechargeAction_Award[3320677]["RewardEffect"]["Effect"] = "angelwing"

	-- ===天石-2700赠
	tAprilRechargeAction_Award[3313011] = {}
	tAprilRechargeAction_Award[3313011]["LogId"] = 12001339
	tAprilRechargeAction_Award[3313011]["DeleteItem"] = {}
	tAprilRechargeAction_Award[3313011]["DeleteItem"][1] = {}
	tAprilRechargeAction_Award[3313011]["DeleteItem"][1]["Id"] = 3313011 -- 【库】2700CPs(B)Pack[属性:9]
	tAprilRechargeAction_Award[3313011]["RewardEMoneyMono"] = {}
	tAprilRechargeAction_Award[3313011]["RewardEMoneyMono"]["Value"] = 2700 -- 天石（赠）
	tAprilRechargeAction_Award[3313011]["EmoneyLog"] = "350	22237	0	0	-2700	"
	tAprilRechargeAction_Award[3313011]["RewardEffect"] = {}
	tAprilRechargeAction_Award[3313011]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilRechargeAction_Award[3313011]["RewardEffect"]["Effect"] = "angelwing"

	-- ===天石-11150赠
	tAprilRechargeAction_Award[3313012] = {}
	tAprilRechargeAction_Award[3313012]["LogId"] = 12001339
	tAprilRechargeAction_Award[3313012]["DeleteItem"] = {}
	tAprilRechargeAction_Award[3313012]["DeleteItem"][1] = {}
	tAprilRechargeAction_Award[3313012]["DeleteItem"][1]["Id"] = 3313012 -- 【库】11150CPs(B)Pack[属性:9]
	tAprilRechargeAction_Award[3313012]["RewardEMoneyMono"] = {}
	tAprilRechargeAction_Award[3313012]["RewardEMoneyMono"]["Value"] = 11150 -- 天石（赠）
	tAprilRechargeAction_Award[3313012]["EmoneyLog"] = "350	22238	0	0	-11150	"
	tAprilRechargeAction_Award[3313012]["RewardEffect"] = {}
	tAprilRechargeAction_Award[3313012]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilRechargeAction_Award[3313012]["RewardEffect"]["Effect"] = "angelwing"

	-- ===天石-17000赠
	tAprilRechargeAction_Award[3313013] = {}
	tAprilRechargeAction_Award[3313013]["LogId"] = 12001339
	tAprilRechargeAction_Award[3313013]["DeleteItem"] = {}
	tAprilRechargeAction_Award[3313013]["DeleteItem"][1] = {}
	tAprilRechargeAction_Award[3313013]["DeleteItem"][1]["Id"] = 3313013 -- 【库】17000CPs(B)Pack[属性:9]
	tAprilRechargeAction_Award[3313013]["RewardEMoneyMono"] = {}
	tAprilRechargeAction_Award[3313013]["RewardEMoneyMono"]["Value"] = 17000 -- 天石（赠）
	tAprilRechargeAction_Award[3313013]["EmoneyLog"] = "350	22239	0	0	-17000	"
	tAprilRechargeAction_Award[3313013]["RewardEffect"] = {}
	tAprilRechargeAction_Award[3313013]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilRechargeAction_Award[3313013]["RewardEffect"]["Effect"] = "angelwing"

	-- ===天石-35000赠
	tAprilRechargeAction_Award[3313014] = {}
	tAprilRechargeAction_Award[3313014]["LogId"] = 12001339
	tAprilRechargeAction_Award[3313014]["DeleteItem"] = {}
	tAprilRechargeAction_Award[3313014]["DeleteItem"][1] = {}
	tAprilRechargeAction_Award[3313014]["DeleteItem"][1]["Id"] = 3313014 -- 【库】35000CPs(B)Pack[属性:9]
	tAprilRechargeAction_Award[3313014]["RewardEMoneyMono"] = {}
	tAprilRechargeAction_Award[3313014]["RewardEMoneyMono"]["Value"] = 35000 -- 天石（赠）
	tAprilRechargeAction_Award[3313014]["EmoneyLog"] = "350	22240	0	0	-35000	"
	tAprilRechargeAction_Award[3313014]["RewardEffect"] = {}
	tAprilRechargeAction_Award[3313014]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilRechargeAction_Award[3313014]["RewardEffect"]["Effect"] = "angelwing"

	-- ===天石-78000赠
	tAprilRechargeAction_Award[3313015] = {}
	tAprilRechargeAction_Award[3313015]["LogId"] = 12001339
	tAprilRechargeAction_Award[3313015]["DeleteItem"] = {}
	tAprilRechargeAction_Award[3313015]["DeleteItem"][1] = {}
	tAprilRechargeAction_Award[3313015]["DeleteItem"][1]["Id"] = 3313015 -- 【库】78000CPs(B)Pack[属性:9]
	tAprilRechargeAction_Award[3313015]["RewardEMoneyMono"] = {}
	tAprilRechargeAction_Award[3313015]["RewardEMoneyMono"]["Value"] = 78000 -- 天石（赠）
	tAprilRechargeAction_Award[3313015]["EmoneyLog"] = "350	22241	0	0	-78000	"
	tAprilRechargeAction_Award[3313015]["RewardEffect"] = {}
	tAprilRechargeAction_Award[3313015]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilRechargeAction_Award[3313015]["RewardEffect"]["Effect"] = "angelwing"

	-- ===天石-130000赠
	tAprilRechargeAction_Award[3313016] = {}
	tAprilRechargeAction_Award[3313016]["LogId"] = 12001339
	tAprilRechargeAction_Award[3313016]["DeleteItem"] = {}
	tAprilRechargeAction_Award[3313016]["DeleteItem"][1] = {}
	tAprilRechargeAction_Award[3313016]["DeleteItem"][1]["Id"] = 3313016 -- 【库】130000CPs(B)Pack[属性:9]
	tAprilRechargeAction_Award[3313016]["RewardEMoneyMono"] = {}
	tAprilRechargeAction_Award[3313016]["RewardEMoneyMono"]["Value"] = 130000 -- 天石（赠）
	tAprilRechargeAction_Award[3313016]["EmoneyLog"] = "350	22242	0	0	-130000	"
	tAprilRechargeAction_Award[3313016]["RewardEffect"] = {}
	tAprilRechargeAction_Award[3313016]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilRechargeAction_Award[3313016]["RewardEffect"]["Effect"] = "angelwing"

	-- ===天石-170000赠
	tAprilRechargeAction_Award[3313017] = {}
	tAprilRechargeAction_Award[3313017]["LogId"] = 12001339
	tAprilRechargeAction_Award[3313017]["DeleteItem"] = {}
	tAprilRechargeAction_Award[3313017]["DeleteItem"][1] = {}
	tAprilRechargeAction_Award[3313017]["DeleteItem"][1]["Id"] = 3313017 -- 【库】170000CPs(B)Pack[属性:9]
	tAprilRechargeAction_Award[3313017]["RewardEMoneyMono"] = {}
	tAprilRechargeAction_Award[3313017]["RewardEMoneyMono"]["Value"] = 170000 -- 天石（赠）
	tAprilRechargeAction_Award[3313017]["EmoneyLog"] = "350	22243	0	0	-170000	"
	tAprilRechargeAction_Award[3313017]["RewardEffect"] = {}
	tAprilRechargeAction_Award[3313017]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilRechargeAction_Award[3313017]["RewardEffect"]["Effect"] = "angelwing"

	-- ===天石-220000赠
	tAprilRechargeAction_Award[3313018] = {}
	tAprilRechargeAction_Award[3313018]["LogId"] = 12001339
	tAprilRechargeAction_Award[3313018]["DeleteItem"] = {}
	tAprilRechargeAction_Award[3313018]["DeleteItem"][1] = {}
	tAprilRechargeAction_Award[3313018]["DeleteItem"][1]["Id"] = 3313018 -- 【库】220000CPs(B)Pack[属性:9]
	tAprilRechargeAction_Award[3313018]["RewardEMoneyMono"] = {}
	tAprilRechargeAction_Award[3313018]["RewardEMoneyMono"]["Value"] = 220000 -- 天石（赠）
	tAprilRechargeAction_Award[3313018]["EmoneyLog"] = "350	22244	0	0	-220000	"
	tAprilRechargeAction_Award[3313018]["RewardEffect"] = {}
	tAprilRechargeAction_Award[3313018]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilRechargeAction_Award[3313018]["RewardEffect"]["Effect"] = "angelwing"

	-- ===天石-300000赠
	tAprilRechargeAction_Award[3313019] = {}
	tAprilRechargeAction_Award[3313019]["LogId"] = 12001339
	tAprilRechargeAction_Award[3313019]["DeleteItem"] = {}
	tAprilRechargeAction_Award[3313019]["DeleteItem"][1] = {}
	tAprilRechargeAction_Award[3313019]["DeleteItem"][1]["Id"] = 3313019 -- 【库】300000CPs(B)Pack[属性:9]
	tAprilRechargeAction_Award[3313019]["RewardEMoneyMono"] = {}
	tAprilRechargeAction_Award[3313019]["RewardEMoneyMono"]["Value"] = 300000 -- 天石（赠）
	tAprilRechargeAction_Award[3313019]["EmoneyLog"] = "350	22245	0	0	-300000	"
	tAprilRechargeAction_Award[3313019]["RewardEffect"] = {}
	tAprilRechargeAction_Award[3313019]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilRechargeAction_Award[3313019]["RewardEffect"]["Effect"] = "angelwing"

	-- ===天石-400000赠
	tAprilRechargeAction_Award[3313020] = {}
	tAprilRechargeAction_Award[3313020]["LogId"] = 12001339
	tAprilRechargeAction_Award[3313020]["DeleteItem"] = {}
	tAprilRechargeAction_Award[3313020]["DeleteItem"][1] = {}
	tAprilRechargeAction_Award[3313020]["DeleteItem"][1]["Id"] = 3313020 -- 【库】400000CPs(B)Pack[属性:9]
	tAprilRechargeAction_Award[3313020]["RewardEMoneyMono"] = {}
	tAprilRechargeAction_Award[3313020]["RewardEMoneyMono"]["Value"] = 400000 -- 天石（赠）
	tAprilRechargeAction_Award[3313020]["EmoneyLog"] = "350	22246	0	0	-400000	"
	tAprilRechargeAction_Award[3313020]["RewardEffect"] = {}
	tAprilRechargeAction_Award[3313020]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilRechargeAction_Award[3313020]["RewardEffect"]["Effect"] = "angelwing"

	-- ===天石-530000赠
	tAprilRechargeAction_Award[3313021] = {}
	tAprilRechargeAction_Award[3313021]["LogId"] = 12001339
	tAprilRechargeAction_Award[3313021]["DeleteItem"] = {}
	tAprilRechargeAction_Award[3313021]["DeleteItem"][1] = {}
	tAprilRechargeAction_Award[3313021]["DeleteItem"][1]["Id"] = 3313021 -- 【库】530000CPs(B)Pack[属性:9]
	tAprilRechargeAction_Award[3313021]["RewardEMoneyMono"] = {}
	tAprilRechargeAction_Award[3313021]["RewardEMoneyMono"]["Value"] = 530000 -- 天石（赠）
	tAprilRechargeAction_Award[3313021]["EmoneyLog"] = "350	22247	0	0	-530000	"
	tAprilRechargeAction_Award[3313021]["RewardEffect"] = {}
	tAprilRechargeAction_Award[3313021]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilRechargeAction_Award[3313021]["RewardEffect"]["Effect"] = "angelwing"

----------------------------------物品模板--------------------------------------
-- 3320456,'LegendaryCreditPac
-- 3320457,'GrandCreditPack',9
-- 3320458,'LuxuryCreditPack',
-- 3320459,'ValuableCreditPack
-- 3320460,'FancyCreditPack',9                         
-- 3320676,'200CPs(B)Pack',9,9
-- 3320677,'400CPs(B)Pack',9,9
tItem[3320456] = tItem[3320456] or {}
tItem[3320456]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tAprilRechargeAction_Award[nItemId])
end
tItem[3320457] = tItem[3320456] or {}
tItem[3320458] = tItem[3320456] or {}
tItem[3320459] = tItem[3320456] or {}
tItem[3320460] = tItem[3320456] or {}
tItem[3320676] = tItem[3320456] or {}
tItem[3320677] = tItem[3320456] or {}
tItem[3313011] = tItem[3320456] or {}
tItem[3313012] = tItem[3320456] or {}
tItem[3313013] = tItem[3320456] or {}
tItem[3313014] = tItem[3320456] or {}
tItem[3313015] = tItem[3320456] or {}
tItem[3313016] = tItem[3320456] or {}
tItem[3313017] = tItem[3320456] or {}
tItem[3313018] = tItem[3320456] or {}
tItem[3313019] = tItem[3320456] or {}
tItem[3313020] = tItem[3320456] or {}
tItem[3313021] = tItem[3320456] or {}

