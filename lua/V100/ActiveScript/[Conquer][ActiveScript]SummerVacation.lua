------------------------------------------------------------------------------------
--Name:		190703[英文征服][活动脚本]暑期新服(7.11)
--Purpose:	暑期
--Creator: 	黄啸
--Created:	2019/07/06
------------------------------------------------------------------------------------
--前缀SummerVacationActivity_
--logid:12001497

----------------------------------数据部分配置----------------------------------


local tSummerVacationActivity_Global = {}
tSummerVacationActivity_Global["GlobalId"] = 53653
tSummerVacationActivity_Global["Pos"] = 0
tSummerVacationActivity_Global["Pro"] = {}
tSummerVacationActivity_Global["Pro"][1] = {1000,1999,3313213}
tSummerVacationActivity_Global["Pro"][2] = {2000,2999,3313214}
tSummerVacationActivity_Global["Pro"][3] = {4000,4999,3313215}
tSummerVacationActivity_Global["Pro"][4] = {5000,5999,3313216}
tSummerVacationActivity_Global["Pro"][5] = {6000,6999,3313217}
tSummerVacationActivity_Global["Pro"][6] = {7000,7999,3313218}
tSummerVacationActivity_Global["Pro"][7] = {8000,8999,3313219}
tSummerVacationActivity_Global["Pro"][8] = {10000,10002,3313220}
tSummerVacationActivity_Global["Pro"][9] = {13000,13999,3313220}
tSummerVacationActivity_Global["Pro"][10] = {14000,14999,3313220}
tSummerVacationActivity_Global["Pro"][11] = {16000,16999,3313221}
tSummerVacationActivity_Global["Pro"][12] = {9000,9999,3313222}
tSummerVacationActivity_Global["stc"] = {}
--领取礼包的掩码
tSummerVacationActivity_Global["stc"][1] = {200,16}
tSummerVacationActivity_Global["stc"][2] = {203,81}

tSummerVacationActivity_Global["nEmoneyGlobalId"] = {}
tSummerVacationActivity_Global["nEmoneyGlobalId"]["GlobalId"] = {}
tSummerVacationActivity_Global["nEmoneyGlobalId"]["GlobalId"][1] = {200,37}
tSummerVacationActivity_Global["nEmoneyGlobalId"]["GlobalId"][2] = {200,38}
tSummerVacationActivity_Global["nEmoneyGlobalId"][1] = {0,6000000}
tSummerVacationActivity_Global["nEmoneyGlobalId"][2] = {1,90000000}
tSummerVacationActivity_Global["nWaste"] = {}
tSummerVacationActivity_Global["nWaste"][1] = 500
tSummerVacationActivity_Global["nWaste"][2] = 5000
tSummerVacationActivity_Global["nWaste"][3] = 4000
tSummerVacationActivity_Global["nWaste"][4] = 40000
tSummerVacationActivity_Global["nWaste"]["Emoneylog"] = "10000	594	%d	%d	1	"


--9月爆爽服新增
local tSummerVacationActivity_BaoGlobal = {}
tSummerVacationActivity_BaoGlobal["nEmoneyGlobalId"] = {}
tSummerVacationActivity_BaoGlobal["nEmoneyGlobalId"]["GlobalId"] = {}
tSummerVacationActivity_BaoGlobal["nEmoneyGlobalId"]["GlobalId"][1] = {203,77}
tSummerVacationActivity_BaoGlobal["nEmoneyGlobalId"]["GlobalId"][2] = {203,78}
tSummerVacationActivity_BaoGlobal["nEmoneyGlobalId"][1] = {0,30000000}
tSummerVacationActivity_BaoGlobal["nEmoneyGlobalId"][2] = {1,90000000}
tSummerVacationActivity_BaoGlobal["nWaste"] = {}
tSummerVacationActivity_BaoGlobal["nWaste"][1] = 500
tSummerVacationActivity_BaoGlobal["nWaste"][2] = 5000
tSummerVacationActivity_BaoGlobal["nWaste"][3] = 4000
tSummerVacationActivity_BaoGlobal["nWaste"][4] = 40000
tSummerVacationActivity_BaoGlobal["nWaste"]["Emoneylog"] = "10000	857	%d	%d	1	"


--爽肤礼包
local tSummerVacationActivity_RewardItem = {}
	-- ===勇士爽服礼包
	-- ===索引: tSummerVacationActivity_RewardItem[3313213][1]
	-- ===删除: 3313213,1
	tSummerVacationActivity_RewardItem[3313213] = {}
	tSummerVacationActivity_RewardItem[3313213][1] = {}
	tSummerVacationActivity_RewardItem[3313213][1]["LogId"] = 12001497
	tSummerVacationActivity_RewardItem[3313213][1]["DeleteItem"] = {}
	tSummerVacationActivity_RewardItem[3313213][1]["DeleteItem"][1] = {}
	tSummerVacationActivity_RewardItem[3313213][1]["DeleteItem"][1]["Id"] = 3313213 -- 【库】 3313213 【库里没有该物品】[属性:]
	tSummerVacationActivity_RewardItem[3313213][1]["RewardItem"] = {}
	tSummerVacationActivity_RewardItem[3313213][1]["RewardItem"][1] = {}
	tSummerVacationActivity_RewardItem[3313213][1]["RewardItem"][1]["Id"] = 723700 -- 【库】聚神丹[属性:0], 【表格】经验球*5
	tSummerVacationActivity_RewardItem[3313213][1]["RewardItem"][1]["Attr"] = "0 5 3" -- 聚神丹*5
	tSummerVacationActivity_RewardItem[3313213][1]["RewardItem"][2] = {}
	tSummerVacationActivity_RewardItem[3313213][1]["RewardItem"][2]["Id"] = 420086 -- 【库】太康剑[属性:0], 【表格】太康剑
	tSummerVacationActivity_RewardItem[3313213][1]["RewardItem"][2]["Attr"] = "0 2 3 0 0 0 0 0 0 0 3" -- 太康剑*2
	tSummerVacationActivity_RewardItem[3313213][1]["RewardItem"][3] = {}
	tSummerVacationActivity_RewardItem[3313213][1]["RewardItem"][3]["Id"] = 118046 -- 【库】红玉头箍[属性:0], 【表格】红玉头箍
	tSummerVacationActivity_RewardItem[3313213][1]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 红玉头箍*1
	tSummerVacationActivity_RewardItem[3313213][1]["RewardItem"][4] = {}
	tSummerVacationActivity_RewardItem[3313213][1]["RewardItem"][4]["Id"] = 130046 -- 【库】天罡甲[属性:0], 【表格】天罡甲
	tSummerVacationActivity_RewardItem[3313213][1]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 天罡甲*1
	tSummerVacationActivity_RewardItem[3313213][1]["RewardItem"][5] = {}
	tSummerVacationActivity_RewardItem[3313213][1]["RewardItem"][5]["Id"] = 160096 -- 【库】云锦靴[属性:0], 【表格】云锦靴
	tSummerVacationActivity_RewardItem[3313213][1]["RewardItem"][5]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 云锦靴*1
	tSummerVacationActivity_RewardItem[3313213][1]["RewardItem"][6] = {}
	tSummerVacationActivity_RewardItem[3313213][1]["RewardItem"][6]["Id"] = 120086 -- 【库】水晶项链[属性:0], 【表格】水晶项链
	tSummerVacationActivity_RewardItem[3313213][1]["RewardItem"][6]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 水晶项链*1
	tSummerVacationActivity_RewardItem[3313213][1]["RewardItem"][7] = {}
	tSummerVacationActivity_RewardItem[3313213][1]["RewardItem"][7]["Id"] = 150096 -- 【库】白玉戒指[属性:0], 【表格】白玉戒指
	tSummerVacationActivity_RewardItem[3313213][1]["RewardItem"][7]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 白玉戒指*1
	tSummerVacationActivity_RewardItem[3313213][1]["RewardEffect"] = {}
	tSummerVacationActivity_RewardItem[3313213][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerVacationActivity_RewardItem[3313213][1]["RewardEffect"]["Effect"] = "angelwing"


	tSummerVacationActivity_RewardItem[3313213][2] = {}
	-- ===勇士爽服礼包
	-- ===索引: tSummerVacationActivity_RewardItem[3313213][2]
	-- ===删除: 3313213,1
	tSummerVacationActivity_RewardItem[3313213][2]["EmoneyNum"] = 59
	tSummerVacationActivity_RewardItem[3313213][2]["EmoneyNumLog"] = "%s	59	59	1	"
	tSummerVacationActivity_RewardItem[3313213][2]["LogId"] = 12001497
	tSummerVacationActivity_RewardItem[3313213][2]["DeleteItem"] = {}
	tSummerVacationActivity_RewardItem[3313213][2]["DeleteItem"][1] = {}
	tSummerVacationActivity_RewardItem[3313213][2]["DeleteItem"][1]["Id"] = 3313213 -- 【库】 3313213 【库里没有该物品】[属性:]
	tSummerVacationActivity_RewardItem[3313213][2]["RewardItem"] = {}
	tSummerVacationActivity_RewardItem[3313213][2]["RewardItem"][1] = {}
	tSummerVacationActivity_RewardItem[3313213][2]["RewardItem"][1]["Id"] = 723700 -- 【库】聚神丹[属性:0], 【表格】经验球*10
	tSummerVacationActivity_RewardItem[3313213][2]["RewardItem"][1]["Attr"] = "0 10 3" -- 聚神丹*10
	tSummerVacationActivity_RewardItem[3313213][2]["RewardItem"][2] = {}
	tSummerVacationActivity_RewardItem[3313213][2]["RewardItem"][2]["Id"] = 420199 -- 【库】赤霄剑[属性:0], 【表格】赤霄剑
	tSummerVacationActivity_RewardItem[3313213][2]["RewardItem"][2]["Attr"] = "0 2 3 0 0 0 0 0 0 0 4" -- 赤霄剑*2
	tSummerVacationActivity_RewardItem[3313213][2]["RewardItem"][3] = {}
	tSummerVacationActivity_RewardItem[3313213][2]["RewardItem"][3]["Id"] = 118089 -- 【库】罗汉箍[属性:0], 【表格】罗汉箍
	tSummerVacationActivity_RewardItem[3313213][2]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- 罗汉箍*1
	tSummerVacationActivity_RewardItem[3313213][2]["RewardItem"][4] = {}
	tSummerVacationActivity_RewardItem[3313213][2]["RewardItem"][4]["Id"] = 130089 -- 【库】乾坤战甲[属性:0], 【表格】乾坤战甲
	tSummerVacationActivity_RewardItem[3313213][2]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- 乾坤战甲*1
	tSummerVacationActivity_RewardItem[3313213][2]["RewardItem"][5] = {}
	tSummerVacationActivity_RewardItem[3313213][2]["RewardItem"][5]["Id"] = 160199 -- 【库】麒麟靴[属性:0], 【表格】麒麟靴
	tSummerVacationActivity_RewardItem[3313213][2]["RewardItem"][5]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- 麒麟靴*1
	tSummerVacationActivity_RewardItem[3313213][2]["RewardItem"][6] = {}
	tSummerVacationActivity_RewardItem[3313213][2]["RewardItem"][6]["Id"] = 120189 -- 【库】龙睛宝链[属性:0], 【表格】龙睛宝链
	tSummerVacationActivity_RewardItem[3313213][2]["RewardItem"][6]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- 龙睛宝链*1
	tSummerVacationActivity_RewardItem[3313213][2]["RewardItem"][7] = {}
	tSummerVacationActivity_RewardItem[3313213][2]["RewardItem"][7]["Id"] = 150199 -- 【库】白金钻戒[属性:0], 【表格】白金钻戒
	tSummerVacationActivity_RewardItem[3313213][2]["RewardItem"][7]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- 白金钻戒*1
	tSummerVacationActivity_RewardItem[3313213][2]["RewardEffect"] = {}
	tSummerVacationActivity_RewardItem[3313213][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerVacationActivity_RewardItem[3313213][2]["RewardEffect"]["Effect"] = "angelwing"


	tSummerVacationActivity_RewardItem[3313214] = {}
	-- ===战士爽服礼包
	-- ===索引: tSummerVacationActivity_RewardItem[3313214][1]
	-- ===删除: 3313214,1
	tSummerVacationActivity_RewardItem[3313214][1] = {}
	tSummerVacationActivity_RewardItem[3313214][1]["LogId"] = 12001497
	tSummerVacationActivity_RewardItem[3313214][1]["DeleteItem"] = {}
	tSummerVacationActivity_RewardItem[3313214][1]["DeleteItem"][1] = {}
	tSummerVacationActivity_RewardItem[3313214][1]["DeleteItem"][1]["Id"] = 3313214 -- 【库】 3313214 【库里没有该物品】[属性:]
	tSummerVacationActivity_RewardItem[3313214][1]["RewardItem"] = {}
	tSummerVacationActivity_RewardItem[3313214][1]["RewardItem"][1] = {}
	tSummerVacationActivity_RewardItem[3313214][1]["RewardItem"][1]["Id"] = 723700 -- 【库】聚神丹[属性:0], 【表格】经验球*5
	tSummerVacationActivity_RewardItem[3313214][1]["RewardItem"][1]["Attr"] = "0 5 3" -- 聚神丹*5
	tSummerVacationActivity_RewardItem[3313214][1]["RewardItem"][2] = {}
	tSummerVacationActivity_RewardItem[3313214][1]["RewardItem"][2]["Id"] = 580086 -- 【库】长钺戟[属性:0], 【表格】长钺戟
	tSummerVacationActivity_RewardItem[3313214][1]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 长钺戟*1
	tSummerVacationActivity_RewardItem[3313214][1]["RewardItem"][3] = {}
	tSummerVacationActivity_RewardItem[3313214][1]["RewardItem"][3]["Id"] = 900016 -- 【库】藤木盾[属性:0], 【表格】藤木盾
	tSummerVacationActivity_RewardItem[3313214][1]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 藤木盾*1
	tSummerVacationActivity_RewardItem[3313214][1]["RewardItem"][4] = {}
	tSummerVacationActivity_RewardItem[3313214][1]["RewardItem"][4]["Id"] = 111046 -- 【库】乌金盔[属性:0], 【表格】乌金盔
	tSummerVacationActivity_RewardItem[3313214][1]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 乌金盔*1
	tSummerVacationActivity_RewardItem[3313214][1]["RewardItem"][5] = {}
	tSummerVacationActivity_RewardItem[3313214][1]["RewardItem"][5]["Id"] = 131046 -- 【库】明光铠[属性:0], 【表格】明光铠
	tSummerVacationActivity_RewardItem[3313214][1]["RewardItem"][5]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 明光铠*1
	tSummerVacationActivity_RewardItem[3313214][1]["RewardItem"][6] = {}
	tSummerVacationActivity_RewardItem[3313214][1]["RewardItem"][6]["Id"] = 160096 -- 【库】云锦靴[属性:0], 【表格】云锦靴
	tSummerVacationActivity_RewardItem[3313214][1]["RewardItem"][6]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 云锦靴*1
	tSummerVacationActivity_RewardItem[3313214][1]["RewardItem"][7] = {}
	tSummerVacationActivity_RewardItem[3313214][1]["RewardItem"][7]["Id"] = 120086 -- 【库】水晶项链[属性:0], 【表格】水晶项链
	tSummerVacationActivity_RewardItem[3313214][1]["RewardItem"][7]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 水晶项链*1
	tSummerVacationActivity_RewardItem[3313214][1]["RewardItem"][8] = {}
	tSummerVacationActivity_RewardItem[3313214][1]["RewardItem"][8]["Id"] = 150096 -- 【库】白玉戒指[属性:0], 【表格】白玉戒指
	tSummerVacationActivity_RewardItem[3313214][1]["RewardItem"][8]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 白玉戒指*1
	tSummerVacationActivity_RewardItem[3313214][1]["RewardEffect"] = {}
	tSummerVacationActivity_RewardItem[3313214][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerVacationActivity_RewardItem[3313214][1]["RewardEffect"]["Effect"] = "angelwing"


	tSummerVacationActivity_RewardItem[3313214][2] = {}
	-- ===战士爽服礼包
	-- ===索引: tSummerVacationActivity_RewardItem[3313214][2]
	-- ===删除: 3313214,1
	tSummerVacationActivity_RewardItem[3313214][2]["EmoneyNum"] = 59
	tSummerVacationActivity_RewardItem[3313214][2]["EmoneyNumLog"] = "%s	59	59	1	"
	tSummerVacationActivity_RewardItem[3313214][2]["LogId"] = 12001497
	tSummerVacationActivity_RewardItem[3313214][2]["DeleteItem"] = {}
	tSummerVacationActivity_RewardItem[3313214][2]["DeleteItem"][1] = {}
	tSummerVacationActivity_RewardItem[3313214][2]["DeleteItem"][1]["Id"] = 3313214 -- 【库】 3313214 【库里没有该物品】[属性:]
	tSummerVacationActivity_RewardItem[3313214][2]["RewardItem"] = {}
	tSummerVacationActivity_RewardItem[3313214][2]["RewardItem"][1] = {}
	tSummerVacationActivity_RewardItem[3313214][2]["RewardItem"][1]["Id"] = 723700 -- 【库】聚神丹[属性:0], 【表格】经验球*10
	tSummerVacationActivity_RewardItem[3313214][2]["RewardItem"][1]["Attr"] = "0 10 3" -- 聚神丹*10
	tSummerVacationActivity_RewardItem[3313214][2]["RewardItem"][2] = {}
	tSummerVacationActivity_RewardItem[3313214][2]["RewardItem"][2]["Id"] = 580199 -- 【库】银剪戟[属性:0], 【表格】银剪戟+4（找100级左右的）
	tSummerVacationActivity_RewardItem[3313214][2]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- （追加+4）银剪戟*1
	tSummerVacationActivity_RewardItem[3313214][2]["RewardItem"][3] = {}
	tSummerVacationActivity_RewardItem[3313214][2]["RewardItem"][3]["Id"] = 900089 -- 【库】虎刺坚盾[属性:0], 【表格】虎刺坚盾+4（找100级左右的）
	tSummerVacationActivity_RewardItem[3313214][2]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- 虎刺坚盾*1
	tSummerVacationActivity_RewardItem[3313214][2]["RewardItem"][4] = {}
	tSummerVacationActivity_RewardItem[3313214][2]["RewardItem"][4]["Id"] = 141089 -- 【库】凝霜之带[属性:0], 【表格】凝霜之带+4（找100级左右的）
	tSummerVacationActivity_RewardItem[3313214][2]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- （追加+4）凝霜之带*1
	tSummerVacationActivity_RewardItem[3313214][2]["RewardItem"][5] = {}
	tSummerVacationActivity_RewardItem[3313214][2]["RewardItem"][5]["Id"] = 131089 -- 【库】玄铁铠[属性:0], 【表格】玄铁铠+4（找100级左右的）
	tSummerVacationActivity_RewardItem[3313214][2]["RewardItem"][5]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- （追加+4）玄铁铠*1
	tSummerVacationActivity_RewardItem[3313214][2]["RewardItem"][6] = {}
	tSummerVacationActivity_RewardItem[3313214][2]["RewardItem"][6]["Id"] = 160199 -- 【库】麒麟靴[属性:0], 【表格】麒麟靴
	tSummerVacationActivity_RewardItem[3313214][2]["RewardItem"][6]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- 麒麟靴*1
	tSummerVacationActivity_RewardItem[3313214][2]["RewardItem"][7] = {}
	tSummerVacationActivity_RewardItem[3313214][2]["RewardItem"][7]["Id"] = 120189 -- 【库】龙睛宝链[属性:0], 【表格】龙睛宝链
	tSummerVacationActivity_RewardItem[3313214][2]["RewardItem"][7]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- 龙睛宝链*1
	tSummerVacationActivity_RewardItem[3313214][2]["RewardItem"][8] = {}
	tSummerVacationActivity_RewardItem[3313214][2]["RewardItem"][8]["Id"] = 150199 -- 【库】白金钻戒[属性:0], 【表格】白金钻戒
	tSummerVacationActivity_RewardItem[3313214][2]["RewardItem"][8]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- 白金钻戒*1
	tSummerVacationActivity_RewardItem[3313214][2]["RewardEffect"] = {}
	tSummerVacationActivity_RewardItem[3313214][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerVacationActivity_RewardItem[3313214][2]["RewardEffect"]["Effect"] = "angelwing"


	tSummerVacationActivity_RewardItem[3313215] = {}
	-- ===弓手爽服礼包
	-- ===索引: tSummerVacationActivity_RewardItem[3313215][1]
	-- ===删除: 3313215,1
	tSummerVacationActivity_RewardItem[3313215][1] = {}
	tSummerVacationActivity_RewardItem[3313215][1]["LogId"] = 12001497
	tSummerVacationActivity_RewardItem[3313215][1]["DeleteItem"] = {}
	tSummerVacationActivity_RewardItem[3313215][1]["DeleteItem"][1] = {}
	tSummerVacationActivity_RewardItem[3313215][1]["DeleteItem"][1]["Id"] = 3313215 -- 【库】 3313215 【库里没有该物品】[属性:]
	tSummerVacationActivity_RewardItem[3313215][1]["RewardItem"] = {}
	tSummerVacationActivity_RewardItem[3313215][1]["RewardItem"][1] = {}
	tSummerVacationActivity_RewardItem[3313215][1]["RewardItem"][1]["Id"] = 723700 -- 【库】聚神丹[属性:0], 【表格】经验球*5
	tSummerVacationActivity_RewardItem[3313215][1]["RewardItem"][1]["Attr"] = "0 5 3" -- 聚神丹*5
	tSummerVacationActivity_RewardItem[3313215][1]["RewardItem"][2] = {}
	tSummerVacationActivity_RewardItem[3313215][1]["RewardItem"][2]["Id"] = 500076 -- 【库】角弓[属性:0], 【表格】角弓
	tSummerVacationActivity_RewardItem[3313215][1]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 角弓*1
	tSummerVacationActivity_RewardItem[3313215][1]["RewardItem"][3] = {}
	tSummerVacationActivity_RewardItem[3313215][1]["RewardItem"][3]["Id"] = 613076 -- 【库】潜影飞刀[属性:0], 【表格】潜影飞刀
	tSummerVacationActivity_RewardItem[3313215][1]["RewardItem"][3]["Attr"] = "0 2 3 0 0 0 0 0 0 0 3" -- 潜影飞刀*1
	tSummerVacationActivity_RewardItem[3313215][1]["RewardItem"][4] = {}
	tSummerVacationActivity_RewardItem[3313215][1]["RewardItem"][4]["Id"] = 113026 -- 【库】豺狼帽[属性:0], 【表格】豺狼帽
	tSummerVacationActivity_RewardItem[3313215][1]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 豺狼帽*1
	tSummerVacationActivity_RewardItem[3313215][1]["RewardItem"][5] = {}
	tSummerVacationActivity_RewardItem[3313215][1]["RewardItem"][5]["Id"] = 133026 -- 【库】狼皮猎褂[属性:0], 【表格】狼皮猎褂
	tSummerVacationActivity_RewardItem[3313215][1]["RewardItem"][5]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 狼皮猎褂*1
	tSummerVacationActivity_RewardItem[3313215][1]["RewardItem"][6] = {}
	tSummerVacationActivity_RewardItem[3313215][1]["RewardItem"][6]["Id"] = 160096 -- 【库】云锦靴[属性:0], 【表格】云锦靴
	tSummerVacationActivity_RewardItem[3313215][1]["RewardItem"][6]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 云锦靴*1
	tSummerVacationActivity_RewardItem[3313215][1]["RewardItem"][7] = {}
	tSummerVacationActivity_RewardItem[3313215][1]["RewardItem"][7]["Id"] = 120086 -- 【库】水晶项链[属性:0], 【表格】水晶项链
	tSummerVacationActivity_RewardItem[3313215][1]["RewardItem"][7]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 水晶项链*1
	tSummerVacationActivity_RewardItem[3313215][1]["RewardItem"][8] = {}
	tSummerVacationActivity_RewardItem[3313215][1]["RewardItem"][8]["Id"] = 150096 -- 【库】白玉戒指[属性:0], 【表格】白玉戒指
	tSummerVacationActivity_RewardItem[3313215][1]["RewardItem"][8]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 白玉戒指*1
	tSummerVacationActivity_RewardItem[3313215][1]["RewardEffect"] = {}
	tSummerVacationActivity_RewardItem[3313215][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerVacationActivity_RewardItem[3313215][1]["RewardEffect"]["Effect"] = "angelwing"


	tSummerVacationActivity_RewardItem[3313215][2] = {}
	-- ===弓手爽服礼包
	-- ===索引: tSummerVacationActivity_RewardItem[3313215][2]
	-- ===删除: 3313215,1
	tSummerVacationActivity_RewardItem[3313215][2]["EmoneyNum"] = 59
	tSummerVacationActivity_RewardItem[3313215][2]["EmoneyNumLog"] = "%s	59	59	1	"
	tSummerVacationActivity_RewardItem[3313215][2]["LogId"] = 12001497
	tSummerVacationActivity_RewardItem[3313215][2]["DeleteItem"] = {}
	tSummerVacationActivity_RewardItem[3313215][2]["DeleteItem"][1] = {}
	tSummerVacationActivity_RewardItem[3313215][2]["DeleteItem"][1]["Id"] = 3313215 -- 【库】 3313215 【库里没有该物品】[属性:]
	tSummerVacationActivity_RewardItem[3313215][2]["RewardItem"] = {}
	tSummerVacationActivity_RewardItem[3313215][2]["RewardItem"][1] = {}
	tSummerVacationActivity_RewardItem[3313215][2]["RewardItem"][1]["Id"] = 723700 -- 【库】聚神丹[属性:0], 【表格】经验球*10
	tSummerVacationActivity_RewardItem[3313215][2]["RewardItem"][1]["Attr"] = "0 10 3" -- 聚神丹*10
	tSummerVacationActivity_RewardItem[3313215][2]["RewardItem"][2] = {}
	tSummerVacationActivity_RewardItem[3313215][2]["RewardItem"][2]["Id"] = 500189 -- 【库】乐浪檀弓[属性:0], 【表格】乐浪檀弓
	tSummerVacationActivity_RewardItem[3313215][2]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- 乐浪檀弓*1
	tSummerVacationActivity_RewardItem[3313215][2]["RewardItem"][3] = {}
	tSummerVacationActivity_RewardItem[3313215][2]["RewardItem"][3]["Id"] = 613189 -- 【库】幽冥飞刀[属性:0], 【表格】幽冥飞刀+4（找100级左右的）
	tSummerVacationActivity_RewardItem[3313215][2]["RewardItem"][3]["Attr"] = "0 2 3 0 0 0 0 0 0 0 4" -- （追加+4）幽冥飞刀*1
	tSummerVacationActivity_RewardItem[3313215][2]["RewardItem"][4] = {}
	tSummerVacationActivity_RewardItem[3313215][2]["RewardItem"][4]["Id"] = 113069 -- 【库】鹿角帽[属性:0], 【表格】鹿角帽+4（找100级左右的）
	tSummerVacationActivity_RewardItem[3313215][2]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- （追加+4）鹿角帽*1
	tSummerVacationActivity_RewardItem[3313215][2]["RewardItem"][5] = {}
	tSummerVacationActivity_RewardItem[3313215][2]["RewardItem"][5]["Id"] = 133079 -- 【库】犀甲猎褂[属性:0], 【表格】犀甲猎褂+4（找100级左右的）
	tSummerVacationActivity_RewardItem[3313215][2]["RewardItem"][5]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- （追加+4）犀甲猎褂*1
	tSummerVacationActivity_RewardItem[3313215][2]["RewardItem"][6] = {}
	tSummerVacationActivity_RewardItem[3313215][2]["RewardItem"][6]["Id"] = 160199 -- 【库】麒麟靴[属性:0], 【表格】麒麟靴
	tSummerVacationActivity_RewardItem[3313215][2]["RewardItem"][6]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- 麒麟靴*1
	tSummerVacationActivity_RewardItem[3313215][2]["RewardItem"][7] = {}
	tSummerVacationActivity_RewardItem[3313215][2]["RewardItem"][7]["Id"] = 120189 -- 【库】龙睛宝链[属性:0], 【表格】龙睛宝链
	tSummerVacationActivity_RewardItem[3313215][2]["RewardItem"][7]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- 龙睛宝链*1
	tSummerVacationActivity_RewardItem[3313215][2]["RewardItem"][8] = {}
	tSummerVacationActivity_RewardItem[3313215][2]["RewardItem"][8]["Id"] = 150199 -- 【库】白金钻戒[属性:0], 【表格】白金钻戒
	tSummerVacationActivity_RewardItem[3313215][2]["RewardItem"][8]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- 白金钻戒*1
	tSummerVacationActivity_RewardItem[3313215][2]["RewardEffect"] = {}
	tSummerVacationActivity_RewardItem[3313215][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerVacationActivity_RewardItem[3313215][2]["RewardEffect"]["Effect"] = "angelwing"


	tSummerVacationActivity_RewardItem[3313216] = {}
	-- ===忍者爽服礼包
	-- ===索引: tSummerVacationActivity_RewardItem[3313216][1]
	-- ===删除: 3313216,1
	tSummerVacationActivity_RewardItem[3313216][1] = {}
	tSummerVacationActivity_RewardItem[3313216][1]["LogId"] = 12001497
	tSummerVacationActivity_RewardItem[3313216][1]["DeleteItem"] = {}
	tSummerVacationActivity_RewardItem[3313216][1]["DeleteItem"][1] = {}
	tSummerVacationActivity_RewardItem[3313216][1]["DeleteItem"][1]["Id"] = 3313216 -- 【库】 3313216 【库里没有该物品】[属性:]
	tSummerVacationActivity_RewardItem[3313216][1]["RewardItem"] = {}
	tSummerVacationActivity_RewardItem[3313216][1]["RewardItem"][1] = {}
	tSummerVacationActivity_RewardItem[3313216][1]["RewardItem"][1]["Id"] = 723700 -- 【库】聚神丹[属性:0], 【表格】经验球*5
	tSummerVacationActivity_RewardItem[3313216][1]["RewardItem"][1]["Attr"] = "0 5 3" -- 聚神丹*5
	tSummerVacationActivity_RewardItem[3313216][1]["RewardItem"][2] = {}
	tSummerVacationActivity_RewardItem[3313216][1]["RewardItem"][2]["Id"] = 511086 -- 【库】猎魔钩镰[属性:0], 【表格】猎魔钩镰
	tSummerVacationActivity_RewardItem[3313216][1]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 猎魔钩镰*2
	tSummerVacationActivity_RewardItem[3313216][1]["RewardItem"][3] = {}
	tSummerVacationActivity_RewardItem[3313216][1]["RewardItem"][3]["Id"] = 601086 -- 【库】惊雷丸[属性:0], 【表格】惊雷丸
	tSummerVacationActivity_RewardItem[3313216][1]["RewardItem"][3]["Attr"] = "0 2 3 0 0 0 0 0 0 0 3" -- 惊雷丸*1
	tSummerVacationActivity_RewardItem[3313216][1]["RewardItem"][4] = {}
	tSummerVacationActivity_RewardItem[3313216][1]["RewardItem"][4]["Id"] = 123046 -- 【库】冰狼护额[属性:0], 【表格】冰狼护额
	tSummerVacationActivity_RewardItem[3313216][1]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 冰狼护额*1
	tSummerVacationActivity_RewardItem[3313216][1]["RewardItem"][5] = {}
	tSummerVacationActivity_RewardItem[3313216][1]["RewardItem"][5]["Id"] = 135046 -- 【库】暗隐装[属性:0], 【表格】暗隐装
	tSummerVacationActivity_RewardItem[3313216][1]["RewardItem"][5]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 暗隐装*1
	tSummerVacationActivity_RewardItem[3313216][1]["RewardItem"][6] = {}
	tSummerVacationActivity_RewardItem[3313216][1]["RewardItem"][6]["Id"] = 160096 -- 【库】云锦靴[属性:0], 【表格】云锦靴
	tSummerVacationActivity_RewardItem[3313216][1]["RewardItem"][6]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 云锦靴*1
	tSummerVacationActivity_RewardItem[3313216][1]["RewardItem"][7] = {}
	tSummerVacationActivity_RewardItem[3313216][1]["RewardItem"][7]["Id"] = 120086 -- 【库】水晶项链[属性:0], 【表格】水晶项链
	tSummerVacationActivity_RewardItem[3313216][1]["RewardItem"][7]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 水晶项链*1
	tSummerVacationActivity_RewardItem[3313216][1]["RewardItem"][8] = {}
	tSummerVacationActivity_RewardItem[3313216][1]["RewardItem"][8]["Id"] = 150096 -- 【库】白玉戒指[属性:0], 【表格】白玉戒指
	tSummerVacationActivity_RewardItem[3313216][1]["RewardItem"][8]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 白玉戒指*1
	tSummerVacationActivity_RewardItem[3313216][1]["RewardEffect"] = {}
	tSummerVacationActivity_RewardItem[3313216][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerVacationActivity_RewardItem[3313216][1]["RewardEffect"]["Effect"] = "angelwing"


	tSummerVacationActivity_RewardItem[3313216][2] = {}
	-- ===忍者爽服礼包
	-- ===索引: tSummerVacationActivity_RewardItem[3313216][2]
	-- ===删除: 3313216,1
	tSummerVacationActivity_RewardItem[3313216][2]["EmoneyNum"] = 59
	tSummerVacationActivity_RewardItem[3313216][2]["EmoneyNumLog"] = "%s	59	59	1	"
	tSummerVacationActivity_RewardItem[3313216][2]["LogId"] = 12001497
	tSummerVacationActivity_RewardItem[3313216][2]["DeleteItem"] = {}
	tSummerVacationActivity_RewardItem[3313216][2]["DeleteItem"][1] = {}
	tSummerVacationActivity_RewardItem[3313216][2]["DeleteItem"][1]["Id"] = 3313216 -- 【库】 3313216 【库里没有该物品】[属性:]
	tSummerVacationActivity_RewardItem[3313216][2]["RewardItem"] = {}
	tSummerVacationActivity_RewardItem[3313216][2]["RewardItem"][1] = {}
	tSummerVacationActivity_RewardItem[3313216][2]["RewardItem"][1]["Id"] = 723700 -- 【库】聚神丹[属性:0], 【表格】经验球*10
	tSummerVacationActivity_RewardItem[3313216][2]["RewardItem"][1]["Attr"] = "0 10 3" -- 聚神丹*10
	tSummerVacationActivity_RewardItem[3313216][2]["RewardItem"][2] = {}
	tSummerVacationActivity_RewardItem[3313216][2]["RewardItem"][2]["Id"] = 601199 -- 【库】太岁宗道[属性:0], 【表格】太岁宗道+4（找100级左右的）
	tSummerVacationActivity_RewardItem[3313216][2]["RewardItem"][2]["Attr"] = "0 2 3 0 0 0 0 0 0 0 4" -- （追加+4）太岁宗道*2
	tSummerVacationActivity_RewardItem[3313216][2]["RewardItem"][3] = {}
	tSummerVacationActivity_RewardItem[3313216][2]["RewardItem"][3]["Id"] = 511189 -- 【库】天怒战镰[属性:0], 【表格】天怒战镰
	tSummerVacationActivity_RewardItem[3313216][2]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- 天怒战镰*1
	tSummerVacationActivity_RewardItem[3313216][2]["RewardItem"][4] = {}
	tSummerVacationActivity_RewardItem[3313216][2]["RewardItem"][4]["Id"] = 112089 -- 【库】嚎枭·血刺[属性:0], 【表格】嚎枭·血刺+4（找100级左右的）
	tSummerVacationActivity_RewardItem[3313216][2]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- （追加+4）嚎枭·血刺*1
	tSummerVacationActivity_RewardItem[3313216][2]["RewardItem"][5] = {}
	tSummerVacationActivity_RewardItem[3313216][2]["RewardItem"][5]["Id"] = 135089 -- 【库】赤月影[属性:0], 【表格】赤月影+4（找100级左右的）
	tSummerVacationActivity_RewardItem[3313216][2]["RewardItem"][5]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- （追加+4）赤月影*1
	tSummerVacationActivity_RewardItem[3313216][2]["RewardItem"][6] = {}
	tSummerVacationActivity_RewardItem[3313216][2]["RewardItem"][6]["Id"] = 160199 -- 【库】麒麟靴[属性:0], 【表格】麒麟靴
	tSummerVacationActivity_RewardItem[3313216][2]["RewardItem"][6]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- 麒麟靴*1
	tSummerVacationActivity_RewardItem[3313216][2]["RewardItem"][7] = {}
	tSummerVacationActivity_RewardItem[3313216][2]["RewardItem"][7]["Id"] = 120189 -- 【库】龙睛宝链[属性:0], 【表格】龙睛宝链
	tSummerVacationActivity_RewardItem[3313216][2]["RewardItem"][7]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- 龙睛宝链*1
	tSummerVacationActivity_RewardItem[3313216][2]["RewardItem"][8] = {}
	tSummerVacationActivity_RewardItem[3313216][2]["RewardItem"][8]["Id"] = 150199 -- 【库】白金钻戒[属性:0], 【表格】白金钻戒
	tSummerVacationActivity_RewardItem[3313216][2]["RewardItem"][8]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- 白金钻戒*1
	tSummerVacationActivity_RewardItem[3313216][2]["RewardEffect"] = {}
	tSummerVacationActivity_RewardItem[3313216][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerVacationActivity_RewardItem[3313216][2]["RewardEffect"]["Effect"] = "angelwing"


	tSummerVacationActivity_RewardItem[3313217] = {}
	-- ===武僧爽服礼包
	-- ===索引: tSummerVacationActivity_RewardItem[3313217][1]
	-- ===删除: 3313217,1
	tSummerVacationActivity_RewardItem[3313217][1] = {}
	tSummerVacationActivity_RewardItem[3313217][1]["LogId"] = 12001497
	tSummerVacationActivity_RewardItem[3313217][1]["DeleteItem"] = {}
	tSummerVacationActivity_RewardItem[3313217][1]["DeleteItem"][1] = {}
	tSummerVacationActivity_RewardItem[3313217][1]["DeleteItem"][1]["Id"] = 3313217 -- 【库】 3313217 【库里没有该物品】[属性:]
	tSummerVacationActivity_RewardItem[3313217][1]["RewardItem"] = {}
	tSummerVacationActivity_RewardItem[3313217][1]["RewardItem"][1] = {}
	tSummerVacationActivity_RewardItem[3313217][1]["RewardItem"][1]["Id"] = 723700 -- 【库】聚神丹[属性:0], 【表格】经验球*5
	tSummerVacationActivity_RewardItem[3313217][1]["RewardItem"][1]["Attr"] = "0 5 3" -- 聚神丹*5
	tSummerVacationActivity_RewardItem[3313217][1]["RewardItem"][2] = {}
	tSummerVacationActivity_RewardItem[3313217][1]["RewardItem"][2]["Id"] = 610086 -- 【库】禅机念珠[属性:0], 【表格】禅机念珠
	tSummerVacationActivity_RewardItem[3313217][1]["RewardItem"][2]["Attr"] = "0 2 3 0 0 0 0 0 0 0 3" -- 禅机念珠*2
	tSummerVacationActivity_RewardItem[3313217][1]["RewardItem"][3] = {}
	tSummerVacationActivity_RewardItem[3313217][1]["RewardItem"][3]["Id"] = 143046 -- 【库】五蕴法箍[属性:0], 【表格】五蕴法箍
	tSummerVacationActivity_RewardItem[3313217][1]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 五蕴法箍*1
	tSummerVacationActivity_RewardItem[3313217][1]["RewardItem"][4] = {}
	tSummerVacationActivity_RewardItem[3313217][1]["RewardItem"][4]["Id"] = 136046 -- 【库】护法柔甲[属性:0], 【表格】护法柔甲
	tSummerVacationActivity_RewardItem[3313217][1]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 护法柔甲*1
	tSummerVacationActivity_RewardItem[3313217][1]["RewardItem"][5] = {}
	tSummerVacationActivity_RewardItem[3313217][1]["RewardItem"][5]["Id"] = 160096 -- 【库】云锦靴[属性:0], 【表格】云锦靴
	tSummerVacationActivity_RewardItem[3313217][1]["RewardItem"][5]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 云锦靴*1
	tSummerVacationActivity_RewardItem[3313217][1]["RewardItem"][6] = {}
	tSummerVacationActivity_RewardItem[3313217][1]["RewardItem"][6]["Id"] = 120086 -- 【库】水晶项链[属性:0], 【表格】水晶项链
	tSummerVacationActivity_RewardItem[3313217][1]["RewardItem"][6]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 水晶项链*1
	tSummerVacationActivity_RewardItem[3313217][1]["RewardItem"][7] = {}
	tSummerVacationActivity_RewardItem[3313217][1]["RewardItem"][7]["Id"] = 150096 -- 【库】白玉戒指[属性:0], 【表格】白玉戒指
	tSummerVacationActivity_RewardItem[3313217][1]["RewardItem"][7]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 白玉戒指*1
	tSummerVacationActivity_RewardItem[3313217][1]["RewardEffect"] = {}
	tSummerVacationActivity_RewardItem[3313217][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerVacationActivity_RewardItem[3313217][1]["RewardEffect"]["Effect"] = "angelwing"


	tSummerVacationActivity_RewardItem[3313217][2] = {}
	-- ===武僧爽服礼包
	-- ===索引: tSummerVacationActivity_RewardItem[3313217][2]
	-- ===删除: 3313217,1
	tSummerVacationActivity_RewardItem[3313217][2]["EmoneyNum"] = 59
	tSummerVacationActivity_RewardItem[3313217][2]["EmoneyNumLog"] = "%s	59	59	1	"
	tSummerVacationActivity_RewardItem[3313217][2]["LogId"] = 12001497
	tSummerVacationActivity_RewardItem[3313217][2]["DeleteItem"] = {}
	tSummerVacationActivity_RewardItem[3313217][2]["DeleteItem"][1] = {}
	tSummerVacationActivity_RewardItem[3313217][2]["DeleteItem"][1]["Id"] = 3313217 -- 【库】 3313217 【库里没有该物品】[属性:]
	tSummerVacationActivity_RewardItem[3313217][2]["RewardItem"] = {}
	tSummerVacationActivity_RewardItem[3313217][2]["RewardItem"][1] = {}
	tSummerVacationActivity_RewardItem[3313217][2]["RewardItem"][1]["Id"] = 723700 -- 【库】聚神丹[属性:0], 【表格】经验球*10
	tSummerVacationActivity_RewardItem[3313217][2]["RewardItem"][1]["Attr"] = "0 10 3" -- 聚神丹*10
	tSummerVacationActivity_RewardItem[3313217][2]["RewardItem"][2] = {}
	tSummerVacationActivity_RewardItem[3313217][2]["RewardItem"][2]["Id"] = 610199 -- 【库】镇狱念珠[属性:0], 【表格】镇狱念珠+4（找100级左右的）
	tSummerVacationActivity_RewardItem[3313217][2]["RewardItem"][2]["Attr"] = "0 2 3 0 0 0 0 0 0 0 4" -- （追加+4）镇狱念珠*2
	tSummerVacationActivity_RewardItem[3313217][2]["RewardItem"][3] = {}
	tSummerVacationActivity_RewardItem[3313217][2]["RewardItem"][3]["Id"] = 143089 -- 【库】龙象法箍[属性:0], 【表格】龙象法箍+4（找100级左右的）
	tSummerVacationActivity_RewardItem[3313217][2]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- （追加+4）龙象法箍*1
	tSummerVacationActivity_RewardItem[3313217][2]["RewardItem"][4] = {}
	tSummerVacationActivity_RewardItem[3313217][2]["RewardItem"][4]["Id"] = 136089 -- 【库】苦寒柔甲[属性:0], 【表格】苦寒柔甲+4（找100级左右的）
	tSummerVacationActivity_RewardItem[3313217][2]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- （追加+4）苦寒柔甲*1
	tSummerVacationActivity_RewardItem[3313217][2]["RewardItem"][5] = {}
	tSummerVacationActivity_RewardItem[3313217][2]["RewardItem"][5]["Id"] = 160199 -- 【库】麒麟靴[属性:0], 【表格】麒麟靴
	tSummerVacationActivity_RewardItem[3313217][2]["RewardItem"][5]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- 麒麟靴*1
	tSummerVacationActivity_RewardItem[3313217][2]["RewardItem"][6] = {}
	tSummerVacationActivity_RewardItem[3313217][2]["RewardItem"][6]["Id"] = 120189 -- 【库】龙睛宝链[属性:0], 【表格】龙睛宝链
	tSummerVacationActivity_RewardItem[3313217][2]["RewardItem"][6]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- 龙睛宝链*1
	tSummerVacationActivity_RewardItem[3313217][2]["RewardItem"][7] = {}
	tSummerVacationActivity_RewardItem[3313217][2]["RewardItem"][7]["Id"] = 150199 -- 【库】白金钻戒[属性:0], 【表格】白金钻戒
	tSummerVacationActivity_RewardItem[3313217][2]["RewardItem"][7]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- 白金钻戒*1
	tSummerVacationActivity_RewardItem[3313217][2]["RewardEffect"] = {}
	tSummerVacationActivity_RewardItem[3313217][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerVacationActivity_RewardItem[3313217][2]["RewardEffect"]["Effect"] = "angelwing"


	tSummerVacationActivity_RewardItem[3313218] = {}
	-- ===海盗爽服礼包
	-- ===索引: tSummerVacationActivity_RewardItem[3313218][1]
	-- ===删除: 3313218,1
	tSummerVacationActivity_RewardItem[3313218][1] = {}
	tSummerVacationActivity_RewardItem[3313218][1]["LogId"] = 12001497
	tSummerVacationActivity_RewardItem[3313218][1]["DeleteItem"] = {}
	tSummerVacationActivity_RewardItem[3313218][1]["DeleteItem"][1] = {}
	tSummerVacationActivity_RewardItem[3313218][1]["DeleteItem"][1]["Id"] = 3313218 -- 【库】 3313218 【库里没有该物品】[属性:]
	tSummerVacationActivity_RewardItem[3313218][1]["RewardItem"] = {}
	tSummerVacationActivity_RewardItem[3313218][1]["RewardItem"][1] = {}
	tSummerVacationActivity_RewardItem[3313218][1]["RewardItem"][1]["Id"] = 723700 -- 【库】聚神丹[属性:0], 【表格】经验球*5
	tSummerVacationActivity_RewardItem[3313218][1]["RewardItem"][1]["Attr"] = "0 5 3" -- 聚神丹*5
	tSummerVacationActivity_RewardItem[3313218][1]["RewardItem"][2] = {}
	tSummerVacationActivity_RewardItem[3313218][1]["RewardItem"][2]["Id"] = 611086 -- 【库】波峰刺剑[属性:0], 【表格】波峰刺剑
	tSummerVacationActivity_RewardItem[3313218][1]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 波峰刺剑*1
	tSummerVacationActivity_RewardItem[3313218][1]["RewardItem"][3] = {}
	tSummerVacationActivity_RewardItem[3313218][1]["RewardItem"][3]["Id"] = 612086 -- 【库】秘银火枪[属性:0], 【表格】秘银火枪
	tSummerVacationActivity_RewardItem[3313218][1]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 秘银火枪*1
	tSummerVacationActivity_RewardItem[3313218][1]["RewardItem"][4] = {}
	tSummerVacationActivity_RewardItem[3313218][1]["RewardItem"][4]["Id"] = 145046 -- 【库】蟒皮头巾[属性:0], 【表格】蟒皮头巾
	tSummerVacationActivity_RewardItem[3313218][1]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 蟒皮头巾*1
	tSummerVacationActivity_RewardItem[3313218][1]["RewardItem"][5] = {}
	tSummerVacationActivity_RewardItem[3313218][1]["RewardItem"][5]["Id"] = 139046 -- 【库】龙渊裳[属性:0], 【表格】龙渊裳
	tSummerVacationActivity_RewardItem[3313218][1]["RewardItem"][5]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 龙渊裳*1
	tSummerVacationActivity_RewardItem[3313218][1]["RewardItem"][6] = {}
	tSummerVacationActivity_RewardItem[3313218][1]["RewardItem"][6]["Id"] = 160096 -- 【库】云锦靴[属性:0], 【表格】云锦靴
	tSummerVacationActivity_RewardItem[3313218][1]["RewardItem"][6]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 云锦靴*1
	tSummerVacationActivity_RewardItem[3313218][1]["RewardItem"][7] = {}
	tSummerVacationActivity_RewardItem[3313218][1]["RewardItem"][7]["Id"] = 120086 -- 【库】水晶项链[属性:0], 【表格】水晶项链
	tSummerVacationActivity_RewardItem[3313218][1]["RewardItem"][7]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 水晶项链*1
	tSummerVacationActivity_RewardItem[3313218][1]["RewardItem"][8] = {}
	tSummerVacationActivity_RewardItem[3313218][1]["RewardItem"][8]["Id"] = 150096 -- 【库】白玉戒指[属性:0], 【表格】白玉戒指
	tSummerVacationActivity_RewardItem[3313218][1]["RewardItem"][8]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 白玉戒指*1
	tSummerVacationActivity_RewardItem[3313218][1]["RewardEffect"] = {}
	tSummerVacationActivity_RewardItem[3313218][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerVacationActivity_RewardItem[3313218][1]["RewardEffect"]["Effect"] = "angelwing"


	tSummerVacationActivity_RewardItem[3313218][2] = {}
	-- ===海盗爽服礼包
	-- ===索引: tSummerVacationActivity_RewardItem[3313218][2]
	-- ===删除: 3313218,1
	tSummerVacationActivity_RewardItem[3313218][2]["EmoneyNum"] = 59
	tSummerVacationActivity_RewardItem[3313218][2]["EmoneyNumLog"] = "%s	59	59	1	"
	tSummerVacationActivity_RewardItem[3313218][2]["LogId"] = 12001497
	tSummerVacationActivity_RewardItem[3313218][2]["DeleteItem"] = {}
	tSummerVacationActivity_RewardItem[3313218][2]["DeleteItem"][1] = {}
	tSummerVacationActivity_RewardItem[3313218][2]["DeleteItem"][1]["Id"] = 3313218 -- 【库】 3313218 【库里没有该物品】[属性:]
	tSummerVacationActivity_RewardItem[3313218][2]["RewardItem"] = {}
	tSummerVacationActivity_RewardItem[3313218][2]["RewardItem"][1] = {}
	tSummerVacationActivity_RewardItem[3313218][2]["RewardItem"][1]["Id"] = 723700 -- 【库】聚神丹[属性:0], 【表格】经验球*10
	tSummerVacationActivity_RewardItem[3313218][2]["RewardItem"][1]["Attr"] = "0 10 3" -- 聚神丹*10
	tSummerVacationActivity_RewardItem[3313218][2]["RewardItem"][2] = {}
	tSummerVacationActivity_RewardItem[3313218][2]["RewardItem"][2]["Id"] = 611199 -- 【库】血狱之剑[属性:0], 【表格】血狱之剑+4（找100级左右的）
	tSummerVacationActivity_RewardItem[3313218][2]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- （追加+4）血狱之剑*1
	tSummerVacationActivity_RewardItem[3313218][2]["RewardItem"][3] = {}
	tSummerVacationActivity_RewardItem[3313218][2]["RewardItem"][3]["Id"] = 612199 -- 【库】恸哭火枪[属性:0], 【表格】恸哭火枪+4（找100级左右的）
	tSummerVacationActivity_RewardItem[3313218][2]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- （追加+4）恸哭火枪*1
	tSummerVacationActivity_RewardItem[3313218][2]["RewardItem"][4] = {}
	tSummerVacationActivity_RewardItem[3313218][2]["RewardItem"][4]["Id"] = 144089 -- 【库】海清河晏帽[属性:0], 【表格】海清河晏帽+4（找100级左右的）
	tSummerVacationActivity_RewardItem[3313218][2]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- （追加+4）海清河晏帽*1
	tSummerVacationActivity_RewardItem[3313218][2]["RewardItem"][5] = {}
	tSummerVacationActivity_RewardItem[3313218][2]["RewardItem"][5]["Id"] = 139089 -- 【库】蟠龙出渊裳[属性:0], 【表格】蟠龙出渊裳+4（找100级左右的）
	tSummerVacationActivity_RewardItem[3313218][2]["RewardItem"][5]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- （追加+4）蟠龙出渊裳*1
	tSummerVacationActivity_RewardItem[3313218][2]["RewardItem"][6] = {}
	tSummerVacationActivity_RewardItem[3313218][2]["RewardItem"][6]["Id"] = 160199 -- 【库】麒麟靴[属性:0], 【表格】麒麟靴
	tSummerVacationActivity_RewardItem[3313218][2]["RewardItem"][6]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- 麒麟靴*1
	tSummerVacationActivity_RewardItem[3313218][2]["RewardItem"][7] = {}
	tSummerVacationActivity_RewardItem[3313218][2]["RewardItem"][7]["Id"] = 120189 -- 【库】龙睛宝链[属性:0], 【表格】龙睛宝链
	tSummerVacationActivity_RewardItem[3313218][2]["RewardItem"][7]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- 龙睛宝链*1
	tSummerVacationActivity_RewardItem[3313218][2]["RewardItem"][8] = {}
	tSummerVacationActivity_RewardItem[3313218][2]["RewardItem"][8]["Id"] = 150199 -- 【库】白金钻戒[属性:0], 【表格】白金钻戒
	tSummerVacationActivity_RewardItem[3313218][2]["RewardItem"][8]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- 白金钻戒*1
	tSummerVacationActivity_RewardItem[3313218][2]["RewardEffect"] = {}
	tSummerVacationActivity_RewardItem[3313218][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerVacationActivity_RewardItem[3313218][2]["RewardEffect"]["Effect"] = "angelwing"


	tSummerVacationActivity_RewardItem[3313219] = {}
	-- ===李小龙爽服礼包
	-- ===索引: tSummerVacationActivity_RewardItem[3313219][1]
	-- ===删除: 3313219,1
	tSummerVacationActivity_RewardItem[3313219][1] = {}
	tSummerVacationActivity_RewardItem[3313219][1]["LogId"] = 12001497
	tSummerVacationActivity_RewardItem[3313219][1]["DeleteItem"] = {}
	tSummerVacationActivity_RewardItem[3313219][1]["DeleteItem"][1] = {}
	tSummerVacationActivity_RewardItem[3313219][1]["DeleteItem"][1]["Id"] = 3313219 -- 【库】 3313219 【库里没有该物品】[属性:]
	tSummerVacationActivity_RewardItem[3313219][1]["RewardItem"] = {}
	tSummerVacationActivity_RewardItem[3313219][1]["RewardItem"][1] = {}
	tSummerVacationActivity_RewardItem[3313219][1]["RewardItem"][1]["Id"] = 723700 -- 【库】聚神丹[属性:0], 【表格】经验球*5
	tSummerVacationActivity_RewardItem[3313219][1]["RewardItem"][1]["Attr"] = "0 5 3" -- 聚神丹*5
	tSummerVacationActivity_RewardItem[3313219][1]["RewardItem"][2] = {}
	tSummerVacationActivity_RewardItem[3313219][1]["RewardItem"][2]["Id"] = 617086 -- 【库】猛虎双截棍[属性:0], 【表格】猛虎双截棍
	tSummerVacationActivity_RewardItem[3313219][1]["RewardItem"][2]["Attr"] = "0 2 3 0 0 0 0 0 0 0 3" -- 猛虎双截棍*2
	tSummerVacationActivity_RewardItem[3313219][1]["RewardItem"][3] = {}
	tSummerVacationActivity_RewardItem[3313219][1]["RewardItem"][3]["Id"] = 148046 -- 【库】烈焰头巾[属性:0], 【表格】烈焰头巾
	tSummerVacationActivity_RewardItem[3313219][1]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 烈焰头巾*1
	tSummerVacationActivity_RewardItem[3313219][1]["RewardItem"][4] = {}
	tSummerVacationActivity_RewardItem[3313219][1]["RewardItem"][4]["Id"] = 138046 -- 【库】连身战衣【47级】[属性:0], 【表格】连身战衣【47级】
	tSummerVacationActivity_RewardItem[3313219][1]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 连身战衣【47级】*1
	tSummerVacationActivity_RewardItem[3313219][1]["RewardItem"][5] = {}
	tSummerVacationActivity_RewardItem[3313219][1]["RewardItem"][5]["Id"] = 160096 -- 【库】云锦靴[属性:0], 【表格】云锦靴
	tSummerVacationActivity_RewardItem[3313219][1]["RewardItem"][5]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 云锦靴*1
	tSummerVacationActivity_RewardItem[3313219][1]["RewardItem"][6] = {}
	tSummerVacationActivity_RewardItem[3313219][1]["RewardItem"][6]["Id"] = 120086 -- 【库】水晶项链[属性:0], 【表格】水晶项链
	tSummerVacationActivity_RewardItem[3313219][1]["RewardItem"][6]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 水晶项链*1
	tSummerVacationActivity_RewardItem[3313219][1]["RewardItem"][7] = {}
	tSummerVacationActivity_RewardItem[3313219][1]["RewardItem"][7]["Id"] = 150096 -- 【库】白玉戒指[属性:0], 【表格】白玉戒指
	tSummerVacationActivity_RewardItem[3313219][1]["RewardItem"][7]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 白玉戒指*1
	tSummerVacationActivity_RewardItem[3313219][1]["RewardEffect"] = {}
	tSummerVacationActivity_RewardItem[3313219][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerVacationActivity_RewardItem[3313219][1]["RewardEffect"]["Effect"] = "angelwing"


	tSummerVacationActivity_RewardItem[3313219][2] = {}
	-- ===李小龙爽服礼包
	-- ===索引: tSummerVacationActivity_RewardItem[3313219][2]
	-- ===删除: 3313219,1
	tSummerVacationActivity_RewardItem[3313219][2]["EmoneyNum"] = 59
	tSummerVacationActivity_RewardItem[3313219][2]["EmoneyNumLog"] = "%s	59	59	1	"
	tSummerVacationActivity_RewardItem[3313219][2]["LogId"] = 12001497
	tSummerVacationActivity_RewardItem[3313219][2]["DeleteItem"] = {}
	tSummerVacationActivity_RewardItem[3313219][2]["DeleteItem"][1] = {}
	tSummerVacationActivity_RewardItem[3313219][2]["DeleteItem"][1]["Id"] = 3313219 -- 【库】 3313219 【库里没有该物品】[属性:]
	tSummerVacationActivity_RewardItem[3313219][2]["RewardItem"] = {}
	tSummerVacationActivity_RewardItem[3313219][2]["RewardItem"][1] = {}
	tSummerVacationActivity_RewardItem[3313219][2]["RewardItem"][1]["Id"] = 723700 -- 【库】聚神丹[属性:0], 【表格】经验球*10
	tSummerVacationActivity_RewardItem[3313219][2]["RewardItem"][1]["Attr"] = "0 10 3" -- 聚神丹*10
	tSummerVacationActivity_RewardItem[3313219][2]["RewardItem"][2] = {}
	tSummerVacationActivity_RewardItem[3313219][2]["RewardItem"][2]["Id"] = 617199 -- 【库】聚灵双龙棍[属性:0], 【表格】聚灵双龙棍+4（找100级左右的）
	tSummerVacationActivity_RewardItem[3313219][2]["RewardItem"][2]["Attr"] = "0 2 3 0 0 0 0 0 0 0 4" -- （追加+4）聚灵双龙棍*2
	tSummerVacationActivity_RewardItem[3313219][2]["RewardItem"][3] = {}
	tSummerVacationActivity_RewardItem[3313219][2]["RewardItem"][3]["Id"] = 148089 -- 【库】魅影头巾[属性:0], 【表格】魅影头巾+4（找100级左右的）
	tSummerVacationActivity_RewardItem[3313219][2]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- （追加+4）魅影头巾*1
	tSummerVacationActivity_RewardItem[3313219][2]["RewardItem"][4] = {}
	tSummerVacationActivity_RewardItem[3313219][2]["RewardItem"][4]["Id"] = 138089 -- 【库】连身战衣【100级】[属性:0], 【表格】连身战衣+4（找100级左右的）
	tSummerVacationActivity_RewardItem[3313219][2]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- （追加+4）连身战衣【100级】*1
	tSummerVacationActivity_RewardItem[3313219][2]["RewardItem"][5] = {}
	tSummerVacationActivity_RewardItem[3313219][2]["RewardItem"][5]["Id"] = 160199 -- 【库】麒麟靴[属性:0], 【表格】麒麟靴
	tSummerVacationActivity_RewardItem[3313219][2]["RewardItem"][5]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- 麒麟靴*1
	tSummerVacationActivity_RewardItem[3313219][2]["RewardItem"][6] = {}
	tSummerVacationActivity_RewardItem[3313219][2]["RewardItem"][6]["Id"] = 120189 -- 【库】龙睛宝链[属性:0], 【表格】龙睛宝链
	tSummerVacationActivity_RewardItem[3313219][2]["RewardItem"][6]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- 龙睛宝链*1
	tSummerVacationActivity_RewardItem[3313219][2]["RewardItem"][7] = {}
	tSummerVacationActivity_RewardItem[3313219][2]["RewardItem"][7]["Id"] = 150199 -- 【库】白金钻戒[属性:0], 【表格】白金钻戒
	tSummerVacationActivity_RewardItem[3313219][2]["RewardItem"][7]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- 白金钻戒*1
	tSummerVacationActivity_RewardItem[3313219][2]["RewardEffect"] = {}
	tSummerVacationActivity_RewardItem[3313219][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerVacationActivity_RewardItem[3313219][2]["RewardEffect"]["Effect"] = "angelwing"


	tSummerVacationActivity_RewardItem[3313220] = {}
	-- ===道士爽服礼包
	-- ===索引: tSummerVacationActivity_RewardItem[3313220][1]
	-- ===删除: 3313220,1
	tSummerVacationActivity_RewardItem[3313220][1] = {}
	tSummerVacationActivity_RewardItem[3313220][1]["LogId"] = 12001497
	tSummerVacationActivity_RewardItem[3313220][1]["DeleteItem"] = {}
	tSummerVacationActivity_RewardItem[3313220][1]["DeleteItem"][1] = {}
	tSummerVacationActivity_RewardItem[3313220][1]["DeleteItem"][1]["Id"] = 3313220 -- 【库】 3313220 【库里没有该物品】[属性:]
	tSummerVacationActivity_RewardItem[3313220][1]["RewardItem"] = {}
	tSummerVacationActivity_RewardItem[3313220][1]["RewardItem"][1] = {}
	tSummerVacationActivity_RewardItem[3313220][1]["RewardItem"][1]["Id"] = 723700 -- 【库】聚神丹[属性:0], 【表格】经验球*5
	tSummerVacationActivity_RewardItem[3313220][1]["RewardItem"][1]["Attr"] = "0 5 3" -- 聚神丹*5
	tSummerVacationActivity_RewardItem[3313220][1]["RewardItem"][2] = {}
	tSummerVacationActivity_RewardItem[3313220][1]["RewardItem"][2]["Id"] = 421086 -- 【库】天铁剑[属性:0], 【表格】天铁剑
	tSummerVacationActivity_RewardItem[3313220][1]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 天铁剑*1
	tSummerVacationActivity_RewardItem[3313220][1]["RewardItem"][3] = {}
	tSummerVacationActivity_RewardItem[3313220][1]["RewardItem"][3]["Id"] = 619086 -- 【库】御龙[属性:0], 【表格】御龙
	tSummerVacationActivity_RewardItem[3313220][1]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 御龙*1
	tSummerVacationActivity_RewardItem[3313220][1]["RewardItem"][4] = {}
	tSummerVacationActivity_RewardItem[3313220][1]["RewardItem"][4]["Id"] = 114046 -- 【库】红云冠[属性:0], 【表格】红云冠
	tSummerVacationActivity_RewardItem[3313220][1]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 红云冠*1
	tSummerVacationActivity_RewardItem[3313220][1]["RewardItem"][5] = {}
	tSummerVacationActivity_RewardItem[3313220][1]["RewardItem"][5]["Id"] = 134046 -- 【库】三清法衣[属性:0], 【表格】三清法衣
	tSummerVacationActivity_RewardItem[3313220][1]["RewardItem"][5]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 三清法衣*1
	tSummerVacationActivity_RewardItem[3313220][1]["RewardItem"][6] = {}
	tSummerVacationActivity_RewardItem[3313220][1]["RewardItem"][6]["Id"] = 160096 -- 【库】云锦靴[属性:0], 【表格】云锦靴
	tSummerVacationActivity_RewardItem[3313220][1]["RewardItem"][6]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 云锦靴*1
	tSummerVacationActivity_RewardItem[3313220][1]["RewardItem"][7] = {}
	tSummerVacationActivity_RewardItem[3313220][1]["RewardItem"][7]["Id"] = 121086 -- 【库】蓝晶香囊[属性:0], 【表格】蓝晶香囊
	tSummerVacationActivity_RewardItem[3313220][1]["RewardItem"][7]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 蓝晶香囊*1
	tSummerVacationActivity_RewardItem[3313220][1]["RewardItem"][8] = {}
	tSummerVacationActivity_RewardItem[3313220][1]["RewardItem"][8]["Id"] = 152086 -- 【库】金珠镯[属性:0], 【表格】金珠镯
	tSummerVacationActivity_RewardItem[3313220][1]["RewardItem"][8]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 金珠镯*1
	tSummerVacationActivity_RewardItem[3313220][1]["RewardEffect"] = {}
	tSummerVacationActivity_RewardItem[3313220][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerVacationActivity_RewardItem[3313220][1]["RewardEffect"]["Effect"] = "angelwing"


	tSummerVacationActivity_RewardItem[3313220][2] = {}
	-- ===道士爽服礼包
	-- ===索引: tSummerVacationActivity_RewardItem[3313220][2]
	-- ===删除: 3313220,1
	tSummerVacationActivity_RewardItem[3313220][2]["EmoneyNum"] = 59
	tSummerVacationActivity_RewardItem[3313220][2]["EmoneyNumLog"] = "%s	59	59	1	"
	tSummerVacationActivity_RewardItem[3313220][2]["LogId"] = 12001497
	tSummerVacationActivity_RewardItem[3313220][2]["DeleteItem"] = {}
	tSummerVacationActivity_RewardItem[3313220][2]["DeleteItem"][1] = {}
	tSummerVacationActivity_RewardItem[3313220][2]["DeleteItem"][1]["Id"] = 3313220 -- 【库】 3313220 【库里没有该物品】[属性:]
	tSummerVacationActivity_RewardItem[3313220][2]["RewardItem"] = {}
	tSummerVacationActivity_RewardItem[3313220][2]["RewardItem"][1] = {}
	tSummerVacationActivity_RewardItem[3313220][2]["RewardItem"][1]["Id"] = 723700 -- 【库】聚神丹[属性:0], 【表格】经验球*10
	tSummerVacationActivity_RewardItem[3313220][2]["RewardItem"][1]["Attr"] = "0 10 3" -- 聚神丹*10
	tSummerVacationActivity_RewardItem[3313220][2]["RewardItem"][2] = {}
	tSummerVacationActivity_RewardItem[3313220][2]["RewardItem"][2]["Id"] = 421199 -- 【库】赤霞剑[属性:0], 【表格】赤霞剑+4（找100级左右的）
	tSummerVacationActivity_RewardItem[3313220][2]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- （追加+4）赤霞剑*1
	tSummerVacationActivity_RewardItem[3313220][2]["RewardItem"][3] = {}
	tSummerVacationActivity_RewardItem[3313220][2]["RewardItem"][3]["Id"] = 619199 -- 【库】御龙[属性:0], 【表格】无为如意拂尘+4（找100级左右的）
	tSummerVacationActivity_RewardItem[3313220][2]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- （追加+4）御龙*1
	tSummerVacationActivity_RewardItem[3313220][2]["RewardItem"][4] = {}
	tSummerVacationActivity_RewardItem[3313220][2]["RewardItem"][4]["Id"] = 114089 -- 【库】黄鹤冠[属性:0], 【表格】黄鹤冠+4（找100级左右的）
	tSummerVacationActivity_RewardItem[3313220][2]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- （追加+4）黄鹤冠*1
	tSummerVacationActivity_RewardItem[3313220][2]["RewardItem"][5] = {}
	tSummerVacationActivity_RewardItem[3313220][2]["RewardItem"][5]["Id"] = 134089 -- 【库】太上羽衣[属性:0], 【表格】太上羽衣+4（找100级左右的）
	tSummerVacationActivity_RewardItem[3313220][2]["RewardItem"][5]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- （追加+4）太上羽衣*1
	tSummerVacationActivity_RewardItem[3313220][2]["RewardItem"][6] = {}
	tSummerVacationActivity_RewardItem[3313220][2]["RewardItem"][6]["Id"] = 160199 -- 【库】麒麟靴[属性:0], 【表格】麒麟靴无洞无神佑+4（找100级左右的）
	tSummerVacationActivity_RewardItem[3313220][2]["RewardItem"][6]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- （追加+4）麒麟靴*1
	tSummerVacationActivity_RewardItem[3313220][2]["RewardItem"][7] = {}
	tSummerVacationActivity_RewardItem[3313220][2]["RewardItem"][7]["Id"] = 121189 -- 【库】金丝香囊[属性:0], 【表格】金丝香囊无洞无神佑+4（找100级左右的）
	tSummerVacationActivity_RewardItem[3313220][2]["RewardItem"][7]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- （追加+4）金丝香囊*1
	tSummerVacationActivity_RewardItem[3313220][2]["RewardItem"][8] = {}
	tSummerVacationActivity_RewardItem[3313220][2]["RewardItem"][8]["Id"] = 152189 -- 【库】宝蓝镯[属性:0], 【表格】宝蓝镯无洞无神佑+4（找100级左右的）
	tSummerVacationActivity_RewardItem[3313220][2]["RewardItem"][8]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- （追加+4）宝蓝镯*1
	tSummerVacationActivity_RewardItem[3313220][2]["RewardEffect"] = {}
	tSummerVacationActivity_RewardItem[3313220][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerVacationActivity_RewardItem[3313220][2]["RewardEffect"]["Effect"] = "angelwing"


	tSummerVacationActivity_RewardItem[3313221] = {}
	-- ===铁扇门爽服礼包
	-- ===索引: tSummerVacationActivity_RewardItem[3313221][1]
	-- ===删除: 3313221,1
	tSummerVacationActivity_RewardItem[3313221][1] = {}
	tSummerVacationActivity_RewardItem[3313221][1]["LogId"] = 12001497
	tSummerVacationActivity_RewardItem[3313221][1]["DeleteItem"] = {}
	tSummerVacationActivity_RewardItem[3313221][1]["DeleteItem"][1] = {}
	tSummerVacationActivity_RewardItem[3313221][1]["DeleteItem"][1]["Id"] = 3313221 -- 【库】 3313221 【库里没有该物品】[属性:]
	tSummerVacationActivity_RewardItem[3313221][1]["RewardItem"] = {}
	tSummerVacationActivity_RewardItem[3313221][1]["RewardItem"][1] = {}
	tSummerVacationActivity_RewardItem[3313221][1]["RewardItem"][1]["Id"] = 723700 -- 【库】聚神丹[属性:0], 【表格】经验球*5
	tSummerVacationActivity_RewardItem[3313221][1]["RewardItem"][1]["Attr"] = "0 5 3" -- 聚神丹*5
	tSummerVacationActivity_RewardItem[3313221][1]["RewardItem"][2] = {}
	tSummerVacationActivity_RewardItem[3313221][1]["RewardItem"][2]["Id"] = 170046 -- 【库】墨云冠[属性:0], 【表格】墨云冠
	tSummerVacationActivity_RewardItem[3313221][1]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 墨云冠*1
	tSummerVacationActivity_RewardItem[3313221][1]["RewardItem"][3] = {}
	tSummerVacationActivity_RewardItem[3313221][1]["RewardItem"][3]["Id"] = 101046 -- 【库】玄素袍[属性:0], 【表格】玄素袍
	tSummerVacationActivity_RewardItem[3313221][1]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 玄素袍*1
	tSummerVacationActivity_RewardItem[3313221][1]["RewardItem"][4] = {}
	tSummerVacationActivity_RewardItem[3313221][1]["RewardItem"][4]["Id"] = 626086 -- 【库】傲雪凌霜扇[属性:0], 【表格】傲雪凌霜扇
	tSummerVacationActivity_RewardItem[3313221][1]["RewardItem"][4]["Attr"] = "0 2 3 0 0 0 0 0 0 0 3" -- 傲雪凌霜扇*2
	tSummerVacationActivity_RewardItem[3313221][1]["RewardItem"][5] = {}
	tSummerVacationActivity_RewardItem[3313221][1]["RewardItem"][5]["Id"] = 160096 -- 【库】云锦靴[属性:0], 【表格】云锦靴
	tSummerVacationActivity_RewardItem[3313221][1]["RewardItem"][5]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 云锦靴*1
	tSummerVacationActivity_RewardItem[3313221][1]["RewardItem"][6] = {}
	tSummerVacationActivity_RewardItem[3313221][1]["RewardItem"][6]["Id"] = 120086 -- 【库】水晶项链[属性:0], 【表格】水晶项链
	tSummerVacationActivity_RewardItem[3313221][1]["RewardItem"][6]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 水晶项链*1
	tSummerVacationActivity_RewardItem[3313221][1]["RewardItem"][7] = {}
	tSummerVacationActivity_RewardItem[3313221][1]["RewardItem"][7]["Id"] = 150096 -- 【库】白玉戒指[属性:0], 【表格】白玉戒指
	tSummerVacationActivity_RewardItem[3313221][1]["RewardItem"][7]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 白玉戒指*1
	tSummerVacationActivity_RewardItem[3313221][1]["RewardEffect"] = {}
	tSummerVacationActivity_RewardItem[3313221][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerVacationActivity_RewardItem[3313221][1]["RewardEffect"]["Effect"] = "angelwing"


	tSummerVacationActivity_RewardItem[3313221][2] = {}
	-- ===铁扇门爽服礼包
	-- ===索引: tSummerVacationActivity_RewardItem[3313221][2]
	-- ===删除: 3313221,1
	tSummerVacationActivity_RewardItem[3313221][2]["EmoneyNum"] = 59
	tSummerVacationActivity_RewardItem[3313221][2]["EmoneyNumLog"] = "%s	59	59	1	"
	tSummerVacationActivity_RewardItem[3313221][2]["LogId"] = 12001497
	tSummerVacationActivity_RewardItem[3313221][2]["DeleteItem"] = {}
	tSummerVacationActivity_RewardItem[3313221][2]["DeleteItem"][1] = {}
	tSummerVacationActivity_RewardItem[3313221][2]["DeleteItem"][1]["Id"] = 3313221 -- 【库】 3313221 【库里没有该物品】[属性:]
	tSummerVacationActivity_RewardItem[3313221][2]["RewardItem"] = {}
	tSummerVacationActivity_RewardItem[3313221][2]["RewardItem"][1] = {}
	tSummerVacationActivity_RewardItem[3313221][2]["RewardItem"][1]["Id"] = 723700 -- 【库】聚神丹[属性:0], 【表格】经验球*10
	tSummerVacationActivity_RewardItem[3313221][2]["RewardItem"][1]["Attr"] = "0 10 3" -- 聚神丹*10
	tSummerVacationActivity_RewardItem[3313221][2]["RewardItem"][2] = {}
	tSummerVacationActivity_RewardItem[3313221][2]["RewardItem"][2]["Id"] = 170089 -- 【库】墨云冠[属性:0], 【表格】铁扇头（找100级左右的）+4
	tSummerVacationActivity_RewardItem[3313221][2]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- （追加+4）墨云冠*1
	tSummerVacationActivity_RewardItem[3313221][2]["RewardItem"][3] = {}
	tSummerVacationActivity_RewardItem[3313221][2]["RewardItem"][3]["Id"] = 101089 -- 【库】玄素袍[属性:0], 【表格】铁扇衣（找100级左右的）+4
	tSummerVacationActivity_RewardItem[3313221][2]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- （追加+4）玄素袍*1
	tSummerVacationActivity_RewardItem[3313221][2]["RewardItem"][4] = {}
	tSummerVacationActivity_RewardItem[3313221][2]["RewardItem"][4]["Id"] = 626199 -- 【库】傲雪凌霜扇[属性:0], 【表格】铁扇武器（找100级左右的）+4
	tSummerVacationActivity_RewardItem[3313221][2]["RewardItem"][4]["Attr"] = "0 2 3 0 0 0 0 0 0 0 4" -- （追加+4）傲雪凌霜扇*2
	tSummerVacationActivity_RewardItem[3313221][2]["RewardItem"][5] = {}
	tSummerVacationActivity_RewardItem[3313221][2]["RewardItem"][5]["Id"] = 160199 -- 【库】麒麟靴[属性:0], 【表格】麒麟靴
	tSummerVacationActivity_RewardItem[3313221][2]["RewardItem"][5]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- 麒麟靴*1
	tSummerVacationActivity_RewardItem[3313221][2]["RewardItem"][6] = {}
	tSummerVacationActivity_RewardItem[3313221][2]["RewardItem"][6]["Id"] = 120189 -- 【库】龙睛宝链[属性:0], 【表格】龙睛宝链
	tSummerVacationActivity_RewardItem[3313221][2]["RewardItem"][6]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- 龙睛宝链*1
	tSummerVacationActivity_RewardItem[3313221][2]["RewardItem"][7] = {}
	tSummerVacationActivity_RewardItem[3313221][2]["RewardItem"][7]["Id"] = 150199 -- 【库】白金钻戒[属性:0], 【表格】白金钻戒
	tSummerVacationActivity_RewardItem[3313221][2]["RewardItem"][7]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- 白金钻戒*1
	tSummerVacationActivity_RewardItem[3313221][2]["RewardEffect"] = {}
	tSummerVacationActivity_RewardItem[3313221][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerVacationActivity_RewardItem[3313221][2]["RewardEffect"]["Effect"] = "angelwing"


	tSummerVacationActivity_RewardItem[3313222] = {}
	-- ===斗神爽服礼包
	-- ===索引: tSummerVacationActivity_RewardItem[3313222][1]
	-- ===删除: 3313222,1
	tSummerVacationActivity_RewardItem[3313222][1] = {}
	tSummerVacationActivity_RewardItem[3313222][1]["LogId"] = 12001497
	tSummerVacationActivity_RewardItem[3313222][1]["DeleteItem"] = {}
	tSummerVacationActivity_RewardItem[3313222][1]["DeleteItem"][1] = {}
	tSummerVacationActivity_RewardItem[3313222][1]["DeleteItem"][1]["Id"] = 3313222 -- 【库】 3313222 【库里没有该物品】[属性:]
	tSummerVacationActivity_RewardItem[3313222][1]["RewardItem"] = {}
	tSummerVacationActivity_RewardItem[3313222][1]["RewardItem"][1] = {}
	tSummerVacationActivity_RewardItem[3313222][1]["RewardItem"][1]["Id"] = 723700 -- 【库】聚神丹[属性:0], 【表格】经验球*5
	tSummerVacationActivity_RewardItem[3313222][1]["RewardItem"][1]["Attr"] = "0 5 3" -- 聚神丹*5
	tSummerVacationActivity_RewardItem[3313222][1]["RewardItem"][2] = {}
	tSummerVacationActivity_RewardItem[3313222][1]["RewardItem"][2]["Id"] = 681086 -- 【库】雷光战锤[属性:0], 【表格】雷光战锤
	tSummerVacationActivity_RewardItem[3313222][1]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 雷光战锤*1
	tSummerVacationActivity_RewardItem[3313222][1]["RewardItem"][3] = {}
	tSummerVacationActivity_RewardItem[3313222][1]["RewardItem"][3]["Id"] = 680086 -- 【库】凛风战斧[属性:0], 【表格】凛风战斧
	tSummerVacationActivity_RewardItem[3313222][1]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 凛风战斧*1
	tSummerVacationActivity_RewardItem[3313222][1]["RewardItem"][4] = {}
	tSummerVacationActivity_RewardItem[3313222][1]["RewardItem"][4]["Id"] = 146046 -- 【库】雷鸣战盔[属性:0], 【表格】雷鸣战盔
	tSummerVacationActivity_RewardItem[3313222][1]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 雷鸣战盔*1
	tSummerVacationActivity_RewardItem[3313222][1]["RewardItem"][5] = {}
	tSummerVacationActivity_RewardItem[3313222][1]["RewardItem"][5]["Id"] = 102046 -- 【库】蛮雷战甲[属性:0], 【表格】蛮雷战甲
	tSummerVacationActivity_RewardItem[3313222][1]["RewardItem"][5]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 蛮雷战甲*1
	tSummerVacationActivity_RewardItem[3313222][1]["RewardItem"][6] = {}
	tSummerVacationActivity_RewardItem[3313222][1]["RewardItem"][6]["Id"] = 160096 -- 【库】云锦靴[属性:0], 【表格】云锦靴
	tSummerVacationActivity_RewardItem[3313222][1]["RewardItem"][6]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 云锦靴*1
	tSummerVacationActivity_RewardItem[3313222][1]["RewardItem"][7] = {}
	tSummerVacationActivity_RewardItem[3313222][1]["RewardItem"][7]["Id"] = 120086 -- 【库】水晶项链[属性:0], 【表格】水晶项链
	tSummerVacationActivity_RewardItem[3313222][1]["RewardItem"][7]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 水晶项链*1
	tSummerVacationActivity_RewardItem[3313222][1]["RewardItem"][8] = {}
	tSummerVacationActivity_RewardItem[3313222][1]["RewardItem"][8]["Id"] = 150096 -- 【库】白玉戒指[属性:0], 【表格】白玉戒指
	tSummerVacationActivity_RewardItem[3313222][1]["RewardItem"][8]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- 白玉戒指*1
	tSummerVacationActivity_RewardItem[3313222][1]["RewardEffect"] = {}
	tSummerVacationActivity_RewardItem[3313222][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerVacationActivity_RewardItem[3313222][1]["RewardEffect"]["Effect"] = "angelwing"


	tSummerVacationActivity_RewardItem[3313222][2] = {}
	-- ===斗神爽服礼包
	-- ===索引: tSummerVacationActivity_RewardItem[3313222][2]
	-- ===删除: 3313222,1
	tSummerVacationActivity_RewardItem[3313222][2]["EmoneyNum"] = 59
	tSummerVacationActivity_RewardItem[3313222][2]["EmoneyNumLog"] = "%s	59	59	1	"
	tSummerVacationActivity_RewardItem[3313222][2]["LogId"] = 12001497
	tSummerVacationActivity_RewardItem[3313222][2]["DeleteItem"] = {}
	tSummerVacationActivity_RewardItem[3313222][2]["DeleteItem"][1] = {}
	tSummerVacationActivity_RewardItem[3313222][2]["DeleteItem"][1]["Id"] = 3313222 -- 【库】 3313222 【库里没有该物品】[属性:]
	tSummerVacationActivity_RewardItem[3313222][2]["RewardItem"] = {}
	tSummerVacationActivity_RewardItem[3313222][2]["RewardItem"][1] = {}
	tSummerVacationActivity_RewardItem[3313222][2]["RewardItem"][1]["Id"] = 723700 -- 【库】聚神丹[属性:0], 【表格】经验球*10
	tSummerVacationActivity_RewardItem[3313222][2]["RewardItem"][1]["Attr"] = "0 10 3" -- 聚神丹*10
	tSummerVacationActivity_RewardItem[3313222][2]["RewardItem"][2] = {}
	tSummerVacationActivity_RewardItem[3313222][2]["RewardItem"][2]["Id"] = 681199 -- 【库】雷光战锤[属性:0], 【表格】雷光战锤
	tSummerVacationActivity_RewardItem[3313222][2]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- 雷光战锤*1
	tSummerVacationActivity_RewardItem[3313222][2]["RewardItem"][3] = {}
	tSummerVacationActivity_RewardItem[3313222][2]["RewardItem"][3]["Id"] = 680199 -- 【库】凛风战斧[属性:0], 【表格】凛风战斧
	tSummerVacationActivity_RewardItem[3313222][2]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- 凛风战斧*1
	tSummerVacationActivity_RewardItem[3313222][2]["RewardItem"][4] = {}
	tSummerVacationActivity_RewardItem[3313222][2]["RewardItem"][4]["Id"] = 146089 -- 【库】雷鸣战盔[属性:0], 【表格】斗神头+4（找100级左右的）
	tSummerVacationActivity_RewardItem[3313222][2]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- （追加+4）雷鸣战盔*1
	tSummerVacationActivity_RewardItem[3313222][2]["RewardItem"][5] = {}
	tSummerVacationActivity_RewardItem[3313222][2]["RewardItem"][5]["Id"] = 102089 -- 【库】蛮雷战甲[属性:0], 【表格】斗神衣+4（找100级左右的）
	tSummerVacationActivity_RewardItem[3313222][2]["RewardItem"][5]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- （追加+4）蛮雷战甲*1
	tSummerVacationActivity_RewardItem[3313222][2]["RewardItem"][6] = {}
	tSummerVacationActivity_RewardItem[3313222][2]["RewardItem"][6]["Id"] = 160199 -- 【库】麒麟靴[属性:0], 【表格】麒麟靴
	tSummerVacationActivity_RewardItem[3313222][2]["RewardItem"][6]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- 麒麟靴*1
	tSummerVacationActivity_RewardItem[3313222][2]["RewardItem"][7] = {}
	tSummerVacationActivity_RewardItem[3313222][2]["RewardItem"][7]["Id"] = 120189 -- 【库】龙睛宝链[属性:0], 【表格】龙睛宝链
	tSummerVacationActivity_RewardItem[3313222][2]["RewardItem"][7]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- 龙睛宝链*1
	tSummerVacationActivity_RewardItem[3313222][2]["RewardItem"][8] = {}
	tSummerVacationActivity_RewardItem[3313222][2]["RewardItem"][8]["Id"] = 150199 -- 【库】白金钻戒[属性:0], 【表格】白金钻戒
	tSummerVacationActivity_RewardItem[3313222][2]["RewardItem"][8]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4" -- 白金钻戒*1
	tSummerVacationActivity_RewardItem[3313222][2]["RewardEffect"] = {}
	tSummerVacationActivity_RewardItem[3313222][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerVacationActivity_RewardItem[3313222][2]["RewardEffect"]["Effect"] = "angelwing"

--给爽肤礼包
	tSummerVacationActivity_RewardItem["Give"] = {}
	tSummerVacationActivity_RewardItem["Give"][3313213] = {}
	tSummerVacationActivity_RewardItem["Give"][3313213]["RewardItem"] = {}
	tSummerVacationActivity_RewardItem["Give"][3313213]["RewardItem"][1] = {}
	tSummerVacationActivity_RewardItem["Give"][3313213]["RewardItem"][1]["Id"] = 3313213 -- 【库】TrojanGearBox
	tSummerVacationActivity_RewardItem["Give"][3313213]["RewardItem"][1]["Attr"] = "0 1" -- 【库】TrojanGearBox*1
	tSummerVacationActivity_RewardItem["Give"][3313213]["LogId"] = 12001497
	
	tSummerVacationActivity_RewardItem["Give"][3313214] = {}
	tSummerVacationActivity_RewardItem["Give"][3313214]["RewardItem"] = {}
	tSummerVacationActivity_RewardItem["Give"][3313214]["RewardItem"][1] = {}
	tSummerVacationActivity_RewardItem["Give"][3313214]["RewardItem"][1]["Id"] = 3313214 -- 【库】WarriorGearBox
	tSummerVacationActivity_RewardItem["Give"][3313214]["RewardItem"][1]["Attr"] = "0 1" -- 【库】WarriorGearBox*1
	tSummerVacationActivity_RewardItem["Give"][3313214]["LogId"] = 12001497
	
	tSummerVacationActivity_RewardItem["Give"][3313215] = {}
	tSummerVacationActivity_RewardItem["Give"][3313215]["RewardItem"] = {}
	tSummerVacationActivity_RewardItem["Give"][3313215]["RewardItem"][1] = {}
	tSummerVacationActivity_RewardItem["Give"][3313215]["RewardItem"][1]["Id"] = 3313215 -- 【库】ArcherGearBox
	tSummerVacationActivity_RewardItem["Give"][3313215]["RewardItem"][1]["Attr"] = "0 1" -- 【库】ArcherGearBox*1
	tSummerVacationActivity_RewardItem["Give"][3313215]["LogId"] = 12001497
	
	tSummerVacationActivity_RewardItem["Give"][3313216] = {}
	tSummerVacationActivity_RewardItem["Give"][3313216]["RewardItem"] = {}
	tSummerVacationActivity_RewardItem["Give"][3313216]["RewardItem"][1] = {}
	tSummerVacationActivity_RewardItem["Give"][3313216]["RewardItem"][1]["Id"] = 3313216 -- 【库】NinjaGearBox
	tSummerVacationActivity_RewardItem["Give"][3313216]["RewardItem"][1]["Attr"] = "0 1" -- 【库】NinjaGearBox*1
	tSummerVacationActivity_RewardItem["Give"][3313216]["LogId"] = 12001497
	
	tSummerVacationActivity_RewardItem["Give"][3313217] = {}
	tSummerVacationActivity_RewardItem["Give"][3313217]["RewardItem"] = {}
	tSummerVacationActivity_RewardItem["Give"][3313217]["RewardItem"][1] = {}
	tSummerVacationActivity_RewardItem["Give"][3313217]["RewardItem"][1]["Id"] = 3313217 -- 【库】Monk/SaintGearBox
	tSummerVacationActivity_RewardItem["Give"][3313217]["RewardItem"][1]["Attr"] = "0 1" -- 【库】Monk/SaintGearBox*1
	tSummerVacationActivity_RewardItem["Give"][3313217]["LogId"] = 12001497
	
	tSummerVacationActivity_RewardItem["Give"][3313218] = {}
	tSummerVacationActivity_RewardItem["Give"][3313218]["RewardItem"] = {}
	tSummerVacationActivity_RewardItem["Give"][3313218]["RewardItem"][1] = {}
	tSummerVacationActivity_RewardItem["Give"][3313218]["RewardItem"][1]["Id"] = 3313218 -- 【库】PirateGearBox
	tSummerVacationActivity_RewardItem["Give"][3313218]["RewardItem"][1]["Attr"] = "0 1" -- 【库】PirateGearBox*1
	tSummerVacationActivity_RewardItem["Give"][3313218]["LogId"] = 12001497
	
	tSummerVacationActivity_RewardItem["Give"][3313219] = {}
	tSummerVacationActivity_RewardItem["Give"][3313219]["RewardItem"] = {}
	tSummerVacationActivity_RewardItem["Give"][3313219]["RewardItem"][1] = {}
	tSummerVacationActivity_RewardItem["Give"][3313219]["RewardItem"][1]["Id"] = 3313219 -- 【库】DragonWarriorGearBox
	tSummerVacationActivity_RewardItem["Give"][3313219]["RewardItem"][1]["Attr"] = "0 1" -- 【库】DragonWarriorGearBox*1
	tSummerVacationActivity_RewardItem["Give"][3313219]["LogId"] = 12001497
	
	tSummerVacationActivity_RewardItem["Give"][3313220] = {}
	tSummerVacationActivity_RewardItem["Give"][3313220]["RewardItem"] = {}
	tSummerVacationActivity_RewardItem["Give"][3313220]["RewardItem"][1] = {}
	tSummerVacationActivity_RewardItem["Give"][3313220]["RewardItem"][1]["Id"] = 3313220 -- 【库】TaoistGearBox
	tSummerVacationActivity_RewardItem["Give"][3313220]["RewardItem"][1]["Attr"] = "0 1" -- 【库】TaoistGearBox*1
	tSummerVacationActivity_RewardItem["Give"][3313220]["LogId"] = 12001497
	
	tSummerVacationActivity_RewardItem["Give"][3313221] = {}
	tSummerVacationActivity_RewardItem["Give"][3313221]["RewardItem"] = {}
	tSummerVacationActivity_RewardItem["Give"][3313221]["RewardItem"][1] = {}
	tSummerVacationActivity_RewardItem["Give"][3313221]["RewardItem"][1]["Id"] = 3313221 -- 【库】WinkwalkerGearBox
	tSummerVacationActivity_RewardItem["Give"][3313221]["RewardItem"][1]["Attr"] = "0 1" -- 【库】WinkwalkerGearBox*1
	tSummerVacationActivity_RewardItem["Give"][3313221]["LogId"] = 12001497
	
	tSummerVacationActivity_RewardItem["Give"][3313222] = {}
	tSummerVacationActivity_RewardItem["Give"][3313222]["RewardItem"] = {}
	tSummerVacationActivity_RewardItem["Give"][3313222]["RewardItem"][1] = {}
	tSummerVacationActivity_RewardItem["Give"][3313222]["RewardItem"][1]["Id"] = 3313222 -- 【库】ThunderstrikerGearBox
	tSummerVacationActivity_RewardItem["Give"][3313222]["RewardItem"][1]["Attr"] = "0 1" -- 【库】ThunderstrikerGearBox*1
	tSummerVacationActivity_RewardItem["Give"][3313222]["LogId"] = 12001497
	
--赠点礼包打开
	-- ===1000CPs（B）Pack
	-- ===索引: tSummerVacationActivity_RewardItem[3313206]
	-- ===删除: 3313206,1
	-- ===EMoneyLog: 10000,0586
	tSummerVacationActivity_RewardItem[3313206] = {}
	tSummerVacationActivity_RewardItem[3313206]["LogId"] = 12001497
	tSummerVacationActivity_RewardItem[3313206]["DeleteItem"] = {}
	tSummerVacationActivity_RewardItem[3313206]["DeleteItem"][1] = {}
	tSummerVacationActivity_RewardItem[3313206]["DeleteItem"][1]["Id"] = 3313206 -- 【库】 3313206 【库里没有该物品】[属性:]
	tSummerVacationActivity_RewardItem[3313206]["RewardEMoneyMono"] = {}
	tSummerVacationActivity_RewardItem[3313206]["RewardEMoneyMono"]["Value"] = 1000 -- 天石（赠）, 【需求】1000CPs（B）
	tSummerVacationActivity_RewardItem[3313206]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	586"
	tSummerVacationActivity_RewardItem[3313206]["RewardEffect"] = {}
	tSummerVacationActivity_RewardItem[3313206]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerVacationActivity_RewardItem[3313206]["RewardEffect"]["Effect"] = "angelwing"


	tSummerVacationActivity_RewardItem[3313207] = {}
	-- ===2000CPs（B）Pack
	-- ===索引: tSummerVacationActivity_RewardItem[3313207]
	-- ===删除: 3313207,1
	-- ===EMoneyLog: 10000,0587
	tSummerVacationActivity_RewardItem[3313207]["LogId"] = 12001497
	tSummerVacationActivity_RewardItem[3313207]["DeleteItem"] = {}
	tSummerVacationActivity_RewardItem[3313207]["DeleteItem"][1] = {}
	tSummerVacationActivity_RewardItem[3313207]["DeleteItem"][1]["Id"] = 3313207 -- 【库】 3313207 【库里没有该物品】[属性:]
	tSummerVacationActivity_RewardItem[3313207]["RewardEMoneyMono"] = {}
	tSummerVacationActivity_RewardItem[3313207]["RewardEMoneyMono"]["Value"] = 2000 -- 天石（赠）, 【需求】2000CPs（B）
	tSummerVacationActivity_RewardItem[3313207]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	587"
	tSummerVacationActivity_RewardItem[3313207]["RewardEffect"] = {}
	tSummerVacationActivity_RewardItem[3313207]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerVacationActivity_RewardItem[3313207]["RewardEffect"]["Effect"] = "angelwing"


	tSummerVacationActivity_RewardItem[3313208] = {}
	-- ===4800CPs（B）Pack
	-- ===索引: tSummerVacationActivity_RewardItem[3313208]
	-- ===删除: 3313208,1
	-- ===EMoneyLog: 10000,0588
	tSummerVacationActivity_RewardItem[3313208]["LogId"] = 12001497
	tSummerVacationActivity_RewardItem[3313208]["DeleteItem"] = {}
	tSummerVacationActivity_RewardItem[3313208]["DeleteItem"][1] = {}
	tSummerVacationActivity_RewardItem[3313208]["DeleteItem"][1]["Id"] = 3313208 -- 【库】 3313208 【库里没有该物品】[属性:]
	tSummerVacationActivity_RewardItem[3313208]["RewardEMoneyMono"] = {}
	tSummerVacationActivity_RewardItem[3313208]["RewardEMoneyMono"]["Value"] = 4800 -- 天石（赠）, 【需求】4800CPs（B）
	tSummerVacationActivity_RewardItem[3313208]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	588"
	tSummerVacationActivity_RewardItem[3313208]["RewardEffect"] = {}
	tSummerVacationActivity_RewardItem[3313208]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerVacationActivity_RewardItem[3313208]["RewardEffect"]["Effect"] = "angelwing"


	tSummerVacationActivity_RewardItem[3313209] = {}
	-- ===8000CPs（B）Pack
	-- ===索引: tSummerVacationActivity_RewardItem[3313209]
	-- ===删除: 3313209,1
	-- ===EMoneyLog: 10000,0589
	tSummerVacationActivity_RewardItem[3313209]["LogId"] = 12001497
	tSummerVacationActivity_RewardItem[3313209]["DeleteItem"] = {}
	tSummerVacationActivity_RewardItem[3313209]["DeleteItem"][1] = {}
	tSummerVacationActivity_RewardItem[3313209]["DeleteItem"][1]["Id"] = 3313209 -- 【库】 3313209 【库里没有该物品】[属性:]
	tSummerVacationActivity_RewardItem[3313209]["RewardEMoneyMono"] = {}
	tSummerVacationActivity_RewardItem[3313209]["RewardEMoneyMono"]["Value"] = 8000 -- 天石（赠）, 【需求】8000CPs（B）
	tSummerVacationActivity_RewardItem[3313209]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	589"
	tSummerVacationActivity_RewardItem[3313209]["RewardEffect"] = {}
	tSummerVacationActivity_RewardItem[3313209]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerVacationActivity_RewardItem[3313209]["RewardEffect"]["Effect"] = "angelwing"


	tSummerVacationActivity_RewardItem[3313210] = {}
	-- ===24000CPs（B）Pack
	-- ===索引: tSummerVacationActivity_RewardItem[3313210]
	-- ===删除: 3313210,1
	-- ===EMoneyLog: 10000,0590
	tSummerVacationActivity_RewardItem[3313210]["LogId"] = 12001497
	tSummerVacationActivity_RewardItem[3313210]["DeleteItem"] = {}
	tSummerVacationActivity_RewardItem[3313210]["DeleteItem"][1] = {}
	tSummerVacationActivity_RewardItem[3313210]["DeleteItem"][1]["Id"] = 3313210 -- 【库】 3313210 【库里没有该物品】[属性:]
	tSummerVacationActivity_RewardItem[3313210]["RewardEMoneyMono"] = {}
	tSummerVacationActivity_RewardItem[3313210]["RewardEMoneyMono"]["Value"] = 24000 -- 天石（赠）, 【需求】24000CPs（B）
	tSummerVacationActivity_RewardItem[3313210]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	590"
	tSummerVacationActivity_RewardItem[3313210]["RewardEffect"] = {}
	tSummerVacationActivity_RewardItem[3313210]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerVacationActivity_RewardItem[3313210]["RewardEffect"]["Effect"] = "angelwing"


	tSummerVacationActivity_RewardItem[3313211] = {}
	-- ===40000CPs（B）Pack
	-- ===索引: tSummerVacationActivity_RewardItem[3313211]
	-- ===删除: 3313211,1
	-- ===EMoneyLog: 10000,0591
	tSummerVacationActivity_RewardItem[3313211]["LogId"] = 12001497
	tSummerVacationActivity_RewardItem[3313211]["DeleteItem"] = {}
	tSummerVacationActivity_RewardItem[3313211]["DeleteItem"][1] = {}
	tSummerVacationActivity_RewardItem[3313211]["DeleteItem"][1]["Id"] = 3313211 -- 【库】 3313211 【库里没有该物品】[属性:]
	tSummerVacationActivity_RewardItem[3313211]["RewardEMoneyMono"] = {}
	tSummerVacationActivity_RewardItem[3313211]["RewardEMoneyMono"]["Value"] = 40000 -- 天石（赠）, 【需求】40000CPs（B）
	tSummerVacationActivity_RewardItem[3313211]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	591"
	tSummerVacationActivity_RewardItem[3313211]["RewardEffect"] = {}
	tSummerVacationActivity_RewardItem[3313211]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerVacationActivity_RewardItem[3313211]["RewardEffect"]["Effect"] = "angelwing"


	tSummerVacationActivity_RewardItem[3313212] = {}
	-- ===50000CPs（B）Pack
	-- ===索引: tSummerVacationActivity_RewardItem[3313212]
	-- ===删除: 3313212,1
	-- ===EMoneyLog: 10000,0592
	tSummerVacationActivity_RewardItem[3313212]["LogId"] = 12001497
	tSummerVacationActivity_RewardItem[3313212]["DeleteItem"] = {}
	tSummerVacationActivity_RewardItem[3313212]["DeleteItem"][1] = {}
	tSummerVacationActivity_RewardItem[3313212]["DeleteItem"][1]["Id"] = 3313212 -- 【库】 3313212 【库里没有该物品】[属性:]
	tSummerVacationActivity_RewardItem[3313212]["RewardEMoneyMono"] = {}
	tSummerVacationActivity_RewardItem[3313212]["RewardEMoneyMono"]["Value"] = 50000 -- 天石（赠）, 【需求】50000CPs（B）
	tSummerVacationActivity_RewardItem[3313212]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	592"
	tSummerVacationActivity_RewardItem[3313212]["RewardEffect"] = {}
	tSummerVacationActivity_RewardItem[3313212]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerVacationActivity_RewardItem[3313212]["RewardEffect"]["Effect"] = "angelwing"
	
	--9月爆爽服
	-- ===FreeTrainingPillsPack
	-- ===索引: tSummerVacationActivity_RewardItem[3313666]
	-- ===删除: 3313666,1
	tSummerVacationActivity_RewardItem[3313666] = {}
	tSummerVacationActivity_RewardItem[3313666]["LogId"] = 12001497
	tSummerVacationActivity_RewardItem[3313666]["DeleteItem"] = {}
	tSummerVacationActivity_RewardItem[3313666]["DeleteItem"][1] = {}
	tSummerVacationActivity_RewardItem[3313666]["DeleteItem"][1]["Id"] = 3313666 -- 【库】 3313666 【库里没有该物品】[属性:]
	tSummerVacationActivity_RewardItem[3313666]["RewardItem"] = {}
	tSummerVacationActivity_RewardItem[3313666]["RewardItem"][1] = {}
	tSummerVacationActivity_RewardItem[3313666]["RewardItem"][1]["Id"] = 3002926 -- 【库】FreeTrainingPill[属性:11], 【表格】FreeTrainingPills
	tSummerVacationActivity_RewardItem[3313666]["RewardItem"][1]["Attr"] = "0 3999" -- FreeTrainingPill*3999
	tSummerVacationActivity_RewardItem[3313666]["RewardEffect"] = {}
	tSummerVacationActivity_RewardItem[3313666]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerVacationActivity_RewardItem[3313666]["RewardEffect"]["Effect"] = "angelwing"


	tSummerVacationActivity_RewardItem[3313667] = {}
	-- ===SeniorTrainingPills（B）Pack
	-- ===索引: tSummerVacationActivity_RewardItem[3313667]
	-- ===删除: 3313667,1
	tSummerVacationActivity_RewardItem[3313667]["LogId"] = 12001497
	tSummerVacationActivity_RewardItem[3313667]["DeleteItem"] = {}
	tSummerVacationActivity_RewardItem[3313667]["DeleteItem"][1] = {}
	tSummerVacationActivity_RewardItem[3313667]["DeleteItem"][1]["Id"] = 3313667 -- 【库】 3313667 【库里没有该物品】[属性:]
	tSummerVacationActivity_RewardItem[3313667]["RewardItem"] = {}
	tSummerVacationActivity_RewardItem[3313667]["RewardItem"][1] = {}
	tSummerVacationActivity_RewardItem[3313667]["RewardItem"][1]["Id"] = 3003126 -- 【库】SeniorTrainingPill[属性:0], 【表格】SeniorTrainingPills
	tSummerVacationActivity_RewardItem[3313667]["RewardItem"][1]["Attr"] = "0 3999 3" -- SeniorTrainingPill*3999
	tSummerVacationActivity_RewardItem[3313667]["RewardEffect"] = {}
	tSummerVacationActivity_RewardItem[3313667]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerVacationActivity_RewardItem[3313667]["RewardEffect"]["Effect"] = "angelwing"


	tSummerVacationActivity_RewardItem[3313668] = {}
	-- ===SuperProtectionPillsPack
	-- ===索引: tSummerVacationActivity_RewardItem[3313668]
	-- ===删除: 3313668,1
	tSummerVacationActivity_RewardItem[3313668]["LogId"] = 12001497
	tSummerVacationActivity_RewardItem[3313668]["DeleteItem"] = {}
	tSummerVacationActivity_RewardItem[3313668]["DeleteItem"][1] = {}
	tSummerVacationActivity_RewardItem[3313668]["DeleteItem"][1]["Id"] = 3313668 -- 【库】 3313668 【库里没有该物品】[属性:]
	tSummerVacationActivity_RewardItem[3313668]["RewardItem"] = {}
	tSummerVacationActivity_RewardItem[3313668]["RewardItem"][1] = {}
	tSummerVacationActivity_RewardItem[3313668]["RewardItem"][1]["Id"] = 3002030 -- 【库】SuperProtectionPill[属性:9], 【表格】SuperProtectionPills
	tSummerVacationActivity_RewardItem[3313668]["RewardItem"][1]["Attr"] = "0 3999" -- SuperProtectionPill*3999
	tSummerVacationActivity_RewardItem[3313668]["RewardEffect"] = {}
	tSummerVacationActivity_RewardItem[3313668]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerVacationActivity_RewardItem[3313668]["RewardEffect"]["Effect"] = "angelwing"
	
	--上线给奖励
	tSummerVacationActivity_RewardItem["Baosum"] = {}
	tSummerVacationActivity_RewardItem["Baosum"]["LogId"] = 12001497
	tSummerVacationActivity_RewardItem["Baosum"]["RewardItem"] = {}
	tSummerVacationActivity_RewardItem["Baosum"]["RewardItem"][1] = {}
	tSummerVacationActivity_RewardItem["Baosum"]["RewardItem"][1]["Id"] = 3313666 -- 【库】FreeTrainingPillsPack[属性:9], 【表格】FreeTrainingPillsPack
	tSummerVacationActivity_RewardItem["Baosum"]["RewardItem"][1]["Attr"] = "0 1" -- FreeTrainingPillsPack*1
	tSummerVacationActivity_RewardItem["Baosum"]["RewardItem"][2] = {}
	tSummerVacationActivity_RewardItem["Baosum"]["RewardItem"][2]["Id"] = 3313667 -- 【库】SeniorTrainingPills(B)Pack[属性:9], 【表格】SeniorTrainingPills(B)Pack
	tSummerVacationActivity_RewardItem["Baosum"]["RewardItem"][2]["Attr"] = "0 1" -- SeniorTrainingPills(B)Pack*1
	tSummerVacationActivity_RewardItem["Baosum"]["RewardItem"][3] = {}
	tSummerVacationActivity_RewardItem["Baosum"]["RewardItem"][3]["Id"] = 3313668 -- 【库】SuperProtectionPillsPack[属性:9], 【表格】SuperProtectionPillsPack
	tSummerVacationActivity_RewardItem["Baosum"]["RewardItem"][3]["Attr"] = "0 1" -- SuperProtectionPillsPack*1
	tSummerVacationActivity_RewardItem["Baosum"]["RewardEffect"] = {}
	tSummerVacationActivity_RewardItem["Baosum"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerVacationActivity_RewardItem["Baosum"]["RewardEffect"]["Effect"] = "angelwing"
	
	
	--花费天石或者金币换赠点
	tSummerVacationActivity_RewardItem[1] = {}
	tSummerVacationActivity_RewardItem[1]["LogId"] = 12001497
	tSummerVacationActivity_RewardItem[1]["RewardEMoneyMono"] = {}
	tSummerVacationActivity_RewardItem[1]["RewardEMoneyMono"]["Value"] = 1500 -- 天石（赠）, 【需求】50000CPs（B）
	tSummerVacationActivity_RewardItem[1]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	593"
	tSummerVacationActivity_RewardItem[1]["RewardEffect"] = {}
	tSummerVacationActivity_RewardItem[1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerVacationActivity_RewardItem[1]["RewardEffect"]["Effect"] = "angelwing"
	
	tSummerVacationActivity_RewardItem[2] = {}
	tSummerVacationActivity_RewardItem[2]["LogId"] = 12001497
	tSummerVacationActivity_RewardItem[2]["RewardEMoneyMono"] = {}
	tSummerVacationActivity_RewardItem[2]["RewardEMoneyMono"]["Value"] = 15000 -- 天石（赠）, 【需求】50000CPs（B）
	tSummerVacationActivity_RewardItem[2]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	593"
	tSummerVacationActivity_RewardItem[2]["RewardEffect"] = {}
	tSummerVacationActivity_RewardItem[2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerVacationActivity_RewardItem[2]["RewardEffect"]["Effect"] = "angelwing"
	
	tSummerVacationActivity_RewardItem[3] = tSummerVacationActivity_RewardItem[1]
	tSummerVacationActivity_RewardItem[4] = tSummerVacationActivity_RewardItem[2]
	
--9月爆爽服
local tSummerVacationActivity_BaoRewardItem = {}
	tSummerVacationActivity_BaoRewardItem[1] = {}
	tSummerVacationActivity_BaoRewardItem[1]["LogId"] = 12001497
	tSummerVacationActivity_BaoRewardItem[1]["RewardEMoneyMono"] = {}
	tSummerVacationActivity_BaoRewardItem[1]["RewardEMoneyMono"]["Value"] = 5000 -- 天石（赠）, 【需求】50000CPs（B）
	tSummerVacationActivity_BaoRewardItem[1]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	856"
	tSummerVacationActivity_BaoRewardItem[1]["RewardEffect"] = {}
	tSummerVacationActivity_BaoRewardItem[1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerVacationActivity_BaoRewardItem[1]["RewardEffect"]["Effect"] = "angelwing"
	
	tSummerVacationActivity_BaoRewardItem[2] = {}
	tSummerVacationActivity_BaoRewardItem[2]["LogId"] = 12001497
	tSummerVacationActivity_BaoRewardItem[2]["RewardEMoneyMono"] = {}
	tSummerVacationActivity_BaoRewardItem[2]["RewardEMoneyMono"]["Value"] = 50000 -- 天石（赠）, 【需求】50000CPs（B）
	tSummerVacationActivity_BaoRewardItem[2]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	856"
	tSummerVacationActivity_BaoRewardItem[2]["RewardEffect"] = {}
	tSummerVacationActivity_BaoRewardItem[2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerVacationActivity_BaoRewardItem[2]["RewardEffect"]["Effect"] = "angelwing"
	
	tSummerVacationActivity_BaoRewardItem[3] = {}
	tSummerVacationActivity_BaoRewardItem[3]["LogId"] = 12001497
	tSummerVacationActivity_BaoRewardItem[3]["RewardEMoneyMono"] = {}
	tSummerVacationActivity_BaoRewardItem[3]["RewardEMoneyMono"]["Value"] = 5000 -- 天石（赠）, 【需求】50000CPs（B）修改比例为1:18
	tSummerVacationActivity_BaoRewardItem[3]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	936"
	tSummerVacationActivity_BaoRewardItem[3]["RewardEffect"] = {}
	tSummerVacationActivity_BaoRewardItem[3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerVacationActivity_BaoRewardItem[3]["RewardEffect"]["Effect"] = "angelwing"
	
	tSummerVacationActivity_BaoRewardItem[4] = {}
	tSummerVacationActivity_BaoRewardItem[4]["LogId"] = 12001497
	tSummerVacationActivity_BaoRewardItem[4]["RewardEMoneyMono"] = {}
	tSummerVacationActivity_BaoRewardItem[4]["RewardEMoneyMono"]["Value"] = 50000 -- 天石（赠）, 【需求】50000CPs（B）修改比例为1:18
	tSummerVacationActivity_BaoRewardItem[4]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	936"
	tSummerVacationActivity_BaoRewardItem[4]["RewardEffect"] = {}
	tSummerVacationActivity_BaoRewardItem[4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerVacationActivity_BaoRewardItem[4]["RewardEffect"]["Effect"] = "angelwing"

	
local tSummerVacationActivity_EmoneyLog = {}
tSummerVacationActivity_EmoneyLog[3313213] = "10000	576"
tSummerVacationActivity_EmoneyLog[3313214] = "10000	577"
tSummerVacationActivity_EmoneyLog[3313215] = "10000	578"
tSummerVacationActivity_EmoneyLog[3313216] = "10000	579"
tSummerVacationActivity_EmoneyLog[3313217] = "10000	580"
tSummerVacationActivity_EmoneyLog[3313218] = "10000	581"
tSummerVacationActivity_EmoneyLog[3313219] = "10000	582"
tSummerVacationActivity_EmoneyLog[3313220] = "10000	583"
tSummerVacationActivity_EmoneyLog[3313221] = "10000	584"
tSummerVacationActivity_EmoneyLog[3313222] = "10000	585"


----------------------------------逻辑部分配置----------------------------------
--9月爆爽服用天石或者金币兑换赠点
function SummerVacationActivity_BaoChargeMono(nNpcId,nType,nTip)
	local nUserId = Get_UserId()
	local nGlobalIdEvent = tSummerVacationActivity_BaoGlobal["nEmoneyGlobalId"]["GlobalId"][nType][1]
	local nGlobalIdData = tSummerVacationActivity_BaoGlobal["nEmoneyGlobalId"]["GlobalId"][nType][2]
	local nPos = tSummerVacationActivity_BaoGlobal["nEmoneyGlobalId"][nType][1]
	local nSumnum = Get_UserStatisticValue(nGlobalIdEvent,nGlobalIdData,nUserId)
	local nNeedMoney = tSummerVacationActivity_BaoGlobal["nWaste"][nTip]
	
	--库中记录的数值比实际的少10000倍
	--玩家背包赠点上限
	if not RewardTemplate_EMoneyMonoLimit(tSummerVacationActivity_BaoRewardItem[nTip]["RewardEMoneyMono"],nUserId) then
		User_TalkChannel2005(tRewardTemplate_Text["EMoneyMono"])
		return false
	end
	
	--兑换上限
	if (nSumnum + nNeedMoney) > tSummerVacationActivity_BaoGlobal["nEmoneyGlobalId"][nType][2] then
		if nType == 2 then
			LinkNpcGossipFunc_New(nNpcId,"9-1")
		end
		LinkNpcGossipFunc_New(nNpcId,"8-1")
		return
	end
	
	--用天石兑换
	if nType == 1 then
			
		--判断天石数量是否充足
		if Get_UserEMoney(nUserId) < nNeedMoney then
			LinkNpcGossipFunc_New(nNpcId,"6-1")
			return
		end
		
		--消耗天石购买赠点
		if User_AddEMoney(-nNeedMoney) then
			Sys_SaveEmoneyBuy(string.format(tSummerVacationActivity_BaoGlobal["nWaste"]["Emoneylog"],nNeedMoney,nNeedMoney))
			

			Task_AddStatistic(nGlobalIdEvent,nGlobalIdData,nNeedMoney,1,nUserId)
			RewardTemplate_UseItemAndMsg(tSummerVacationActivity_BaoRewardItem[nTip])
		end
	--用金币兑换
	else
		--是否金币充足
		nNeedMoney = nNeedMoney * 10000
		if not User_CanPutMoney2Bag(-nNeedMoney) then
			LinkNpcGossipFunc_New(nNpcId,"7-1")
			return
		end
		
		--消耗金币购买赠点
		if User_AddMoney(-nNeedMoney) then
			--记录到库中
			nNeedMoney = nNeedMoney/10000
			-- local nMoney = Get_SysDynaGlobalData(nGlobalId,nPos)
			-- Sys_SetSynaGlobalData(nGlobalId,nPos,nMoney+nNeedMoney)
			Task_AddStatistic(nGlobalIdEvent,nGlobalIdData,nNeedMoney,1,nUserId)
			RewardTemplate_UseItemAndMsg(tSummerVacationActivity_BaoRewardItem[nTip])
		end
	end
end

--用天石或者金币兑换赠点
function SummerVacationActivity_ChargeMono(nNpcId,nType,nTip)
	local nUserId = Get_UserId()
	local nGlobalIdEvent = tSummerVacationActivity_Global["nEmoneyGlobalId"]["GlobalId"][nType][1]
	local nGlobalIdData = tSummerVacationActivity_Global["nEmoneyGlobalId"]["GlobalId"][nType][2]
	local nPos = tSummerVacationActivity_Global["nEmoneyGlobalId"][nType][1]
	local nSumnum = Get_UserStatisticValue(nGlobalIdEvent,nGlobalIdData,nUserId)
	local nNeedMoney = tSummerVacationActivity_Global["nWaste"][nTip]
	
	--库中记录的数值比实际的少10000倍
	--玩家背包赠点上限
	if not RewardTemplate_EMoneyMonoLimit(tSummerVacationActivity_RewardItem[nTip]["RewardEMoneyMono"],nUserId) then
		User_TalkChannel2005(tRewardTemplate_Text["EMoneyMono"])
		return false
	end
	
	--兑换上限
	if (nSumnum + nNeedMoney) > tSummerVacationActivity_Global["nEmoneyGlobalId"][nType][2] then
		if nType == 2 then
			LinkNpcGossipFunc_New(nNpcId,"9-1")
		end
		LinkNpcGossipFunc_New(nNpcId,"8-1")
		return
	end
	
	--用天石兑换
	if nType == 1 then
			
		--判断天石数量是否充足
		if Get_UserEMoney(nUserId) < nNeedMoney then
			LinkNpcGossipFunc_New(nNpcId,"6-1")
			return
		end
		
		--消耗天石购买赠点
		if User_AddEMoney(-nNeedMoney) then
			Sys_SaveEmoneyBuy(string.format(tSummerVacationActivity_Global["nWaste"]["Emoneylog"],nNeedMoney,nNeedMoney))
			
			--记录到库中
			-- local nMoney = Get_SysDynaGlobalData(nGlobalId,nPos)
			-- Sys_SetSynaGlobalData(nGlobalId,nPos,nMoney+nNeedMoney)
			Task_AddStatistic(nGlobalIdEvent,nGlobalIdData,nNeedMoney,1,nUserId)
			RewardTemplate_UseItemAndMsg(tSummerVacationActivity_RewardItem[nTip])
		end
	--用金币兑换
	else
		--是否金币充足
		nNeedMoney = nNeedMoney * 10000
		if not User_CanPutMoney2Bag(-nNeedMoney) then
			LinkNpcGossipFunc_New(nNpcId,"7-1")
			return
		end
		
		--消耗金币购买赠点
		if User_AddMoney(-nNeedMoney) then
			--记录到库中
			nNeedMoney = nNeedMoney/10000
			-- local nMoney = Get_SysDynaGlobalData(nGlobalId,nPos)
			-- Sys_SetSynaGlobalData(nGlobalId,nPos,nMoney+nNeedMoney)
			Task_AddStatistic(nGlobalIdEvent,nGlobalIdData,nNeedMoney,1,nUserId)
			RewardTemplate_UseItemAndMsg(tSummerVacationActivity_RewardItem[nTip])
		end
	end
end

--打开天石礼包
function SummerVacationActivity_StoneBag(nItemId)
	--天石赠上限
	local nUserId = Get_UserId()
	local tEMoneyMono = tSummerVacationActivity_RewardItem[nItemId]["RewardEMoneyMono"]
	if not RewardTemplate_EMoneyMonoLimit(tEMoneyMono,nUserId) then
		User_TalkChannel2005(tRewardTemplate_Text["EMoneyMono"])
		return false
	end
	
	RewardTemplate_UseItemAndMsg(tSummerVacationActivity_RewardItem[nItemId])
end

--直接打开
function SummerVacationActivity_OpenBag(nItemId,nTip)
	--时间过期直接删除
	if not Sys_ChkFullTime(tActivityTime["SummerVacationActivity"]["NewShuang"]["ActivityTime"]) then
		Item_DelAllItemByType(nItemId)
		return
	end
	
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tSummerVacationActivity_RewardItem[nItemId][nTip])
end

--直接花费天石打开
function SummerVacationActivity_OpenBagMoney(nItemId,nTip)
	--时间过期直接删除
	if not Sys_ChkFullTime(tActivityTime["SummerVacationActivity"]["NewShuang"]["ActivityTime"]) then
		Item_DelAllItemByType(nItemId)
		return
	end

	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return
	end
	
	local nSpace = RewardTemplate_GetRewardSpace(tSummerVacationActivity_RewardItem[nItemId][nTip])
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
		return
	end
	
	-- 扣天石给奖励
	local nNeedEMoney = tSummerVacationActivity_RewardItem[nItemId][nTip]["EmoneyNum"]
	--天石不足
	local nUserEmoney = Get_UserEMoney()
	if nUserEmoney < nNeedEMoney then
		-- 天石数量不足提示
		User_TalkChannel2005(tRewardTemplate_Text["CostEMoney"])
		return
	end
	

	if User_AddEMoney(-nNeedEMoney) then
		RewardTemplate_UseItemAndMsg(tSummerVacationActivity_RewardItem[nItemId][nTip])
		local sEmoneyStc = tSummerVacationActivity_EmoneyLog[nItemId]
		Sys_SaveEmoneyBuy(string.format(tSummerVacationActivity_RewardItem[nItemId][nTip]["EmoneyNumLog"],sEmoneyStc))
		
	end
	
end

--上线根据职业给礼包
function SummerVacationActivity_Online()
	
	--活动时间判断
	if not Sys_ChkFullTime(tActivityTime["SummerVacationActivity"]["NewShuang"]["ActivityTime"]) then
		return
	end
	
	local nUserId = Get_UserId()
	local nGlobalId = tSummerVacationActivity_Global["GlobalId"]
	local nPos = tSummerVacationActivity_Global["Pos"]
	
	if Get_SysDynaGlobalData(nGlobalId,nPos) >= 1 then
	
		local nProfess = Get_NewUserProfession()
		
		--职业判断
		for i,v in pairs(tSummerVacationActivity_Global["Pro"]) do
			if (nProfess >= v[1]) and (nProfess <= v[2]) then
				local nEventype = tSummerVacationActivity_Global["stc"][1][1]
				local nDatatype = tSummerVacationActivity_Global["stc"][1][2]
				if Task_ChkStcValue(nEventype,nDatatype,"==",0,nUserId) then
					
					--背包空间判断
					local nSpace  = RewardTemplate_GetRewardSpace(tSummerVacationActivity_RewardItem["Give"][v[3]])
					if not User_CheckLeftSpace(nSpace) then
						return
					end
					
					Task_SetStatistic(nEventype,nDatatype,1,1,nUserId)
					Task_SetStcTimestamp(nEventype,nDatatype,0,nUserId)
					
					--给职业礼包
					RewardTemplate_UseItemAndMsg(tSummerVacationActivity_RewardItem["Give"][v[3]])
					break
				end
			end
		end
		
		--9月爆爽服上线获得3个礼包
		local nBaoEvent = tSummerVacationActivity_Global["stc"][2][1]
		local nBaoData = tSummerVacationActivity_Global["stc"][2][2]
		if Task_ChkStcValue(nBaoEvent,nBaoData,"==",0,nUserId) then
			--背包空间不足
			if not User_CheckLeftSpace(3) then
				return
			end
			
			Task_SetStatistic(nBaoEvent,nBaoData,1,1,nUserId)
			Task_SetStcTimestamp(nBaoEvent,nBaoData,0,nUserId)
			
			--给职业礼包
			RewardTemplate_UseItemAndMsg(tSummerVacationActivity_RewardItem["Baosum"])
		end
	end
	
end

--2020.8月新服自创武功直升（8.13-9.9）
function SummerVacationActivity_OnlinePack()
	--活动时间判断
	if not Sys_ChkFullTime(tActivityTime["SummerVacationActivity"]["AugustActivity"]) then
		return
	end
	
	local nUserId = Get_UserId()
	local nGlobalId = tSummerVacationActivity_Global["GlobalId"]
	local nPos = tSummerVacationActivity_Global["Pos"]
	
	if Get_SysDynaGlobalData(nGlobalId,nPos) >= 1 then
		--8月新服上线获得3个礼包
			local nBaoEvent = tSummerVacationActivity_Global["stc"][2][1]
			local nBaoData = tSummerVacationActivity_Global["stc"][2][2]
			if Task_ChkStcValue(nBaoEvent,nBaoData,"==",0,nUserId) then
				--背包空间不足
				if not User_CheckLeftSpace(3) then
					return
				end
				
				Task_SetStatistic(nBaoEvent,nBaoData,1,1,nUserId)
				Task_SetStcTimestamp(nBaoEvent,nBaoData,0,nUserId)
				
				--给职业礼包
				RewardTemplate_UseItemAndMsg(tSummerVacationActivity_RewardItem["Baosum"])
			end
	end
end
 
----------------------------------模块部分配置----------------------------------
--非赠天石/金币换赠点（永久）
tNpcFace[5421] = 231
tNpcGossip[24470] = tNpcGossip[24470] or DefaultNpc:new{}
tNpcGossip[24470]["OptionHidden"] = 1
tNpcGossip[24470]["DialogueText"] = tSummerVacationActivity_Text[24470]

tNpcGossip[24470]["Text1-1"] = {111,112}
tNpcGossip[24470]["tOption1-1"] = {1}
tNpcGossip[24470]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tActivityTime["SummerVacationActivity"]["Shuang"]["BeforeActivityTime"])
end


tNpcGossip[24470]["Text1-2"] = {113,114,115,116}
tNpcGossip[24470]["tOption1-2"] = {2,3,4,5}
tNpcGossip[24470]["OptionPoint2"] = "2-1"
tNpcGossip[24470]["OptionPoint3"] = "3-1"
tNpcGossip[24470]["OptionPoint4"] = "4-1"
tNpcGossip[24470]["OptionPoint5"] = "5-1"


tNpcGossip[24470]["Text2-1"] = {117}
tNpcGossip[24470]["tOption2-1"] = {6,10}
tNpcGossip[24470]["OptionFunc6"] = "SummerVacationActivity_ChargeMono</N>24470</N>1</N>1"
tNpcGossip[24470]["OptionPoint10"] = "1"

tNpcGossip[24470]["Text3-1"] = {118}
tNpcGossip[24470]["tOption3-1"] = {7,10}
tNpcGossip[24470]["OptionFunc7"] = "SummerVacationActivity_ChargeMono</N>24470</N>1</N>2"

tNpcGossip[24470]["Text4-1"] = {119}
tNpcGossip[24470]["tOption4-1"] = {8,10}
tNpcGossip[24470]["OptionFunc8"] = "SummerVacationActivity_ChargeMono</N>24470</N>2</N>3"

tNpcGossip[24470]["Text5-1"] = {120}
tNpcGossip[24470]["tOption5-1"] = {9,10}
tNpcGossip[24470]["OptionFunc9"] = "SummerVacationActivity_ChargeMono</N>24470</N>2</N>4"

tNpcGossip[24470]["Text6-1"] = {121}
tNpcGossip[24470]["tOption6-1"] = {11}

tNpcGossip[24470]["Text7-1"] = {122}
tNpcGossip[24470]["tOption7-1"] = {11}

tNpcGossip[24470]["Text8-1"] = {123}
tNpcGossip[24470]["tOption8-1"] = {12}

tNpcGossip[24470]["Text9-1"] = {124}
tNpcGossip[24470]["tOption9-1"] = {12}

--非赠天石/金币换赠点（9.11-10.19）
tNpcGossip[24908] = tNpcGossip[24908] or DefaultNpc:new{}
tNpcGossip[24908]["OptionHidden"] = 1
tNpcGossip[24908]["DialogueText"] = tSummerVacationActivity_Text[24908]

tNpcGossip[24908]["Text1-1"] = {111,112}
tNpcGossip[24908]["tOption1-1"] = {1}
tNpcGossip[24908]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tActivityTime["SummerVacationActivity"]["NewShuang"]["BeforeActivityTime"])
end


tNpcGossip[24908]["Text1-2"] = {113,114,115,116}
tNpcGossip[24908]["tOption1-2"] = {2,3,4,5}
tNpcGossip[24908]["OptionPoint2"] = "2-1"
tNpcGossip[24908]["OptionPoint3"] = "3-1"
tNpcGossip[24908]["OptionPoint4"] = "4-1"
tNpcGossip[24908]["OptionPoint5"] = "5-1"


tNpcGossip[24908]["Text2-1"] = {117}
tNpcGossip[24908]["tOption2-1"] = {6,10}
tNpcGossip[24908]["OptionFunc6"] = "SummerVacationActivity_BaoChargeMono</N>24908</N>1</N>1"
tNpcGossip[24908]["OptionPoint10"] = "1"

tNpcGossip[24908]["Text3-1"] = {118}
tNpcGossip[24908]["tOption3-1"] = {7,10}
tNpcGossip[24908]["OptionFunc7"] = "SummerVacationActivity_BaoChargeMono</N>24908</N>1</N>2"

tNpcGossip[24908]["Text4-1"] = {119}
tNpcGossip[24908]["tOption4-1"] = {8,10}
tNpcGossip[24908]["OptionFunc8"] = "SummerVacationActivity_BaoChargeMono</N>24908</N>2</N>3"

tNpcGossip[24908]["Text5-1"] = {120}
tNpcGossip[24908]["tOption5-1"] = {9,10}
tNpcGossip[24908]["OptionFunc9"] = "SummerVacationActivity_BaoChargeMono</N>24908</N>2</N>4"

tNpcGossip[24908]["Text6-1"] = {121}
tNpcGossip[24908]["tOption6-1"] = {11}

tNpcGossip[24908]["Text7-1"] = {122}
tNpcGossip[24908]["tOption7-1"] = {11}

tNpcGossip[24908]["Text8-1"] = {123}
tNpcGossip[24908]["tOption8-1"] = {12}

tNpcGossip[24908]["Text9-1"] = {124}
tNpcGossip[24908]["tOption9-1"] = {12}



--爽肤礼包
tItemFace[3313213] = 2386
tItemFace[3313214] = 2387
tItemFace[3313215] = 2388
tItemFace[3313216] = 2389
tItemFace[3313217] = 2390
tItemFace[3313218] = 2391
tItemFace[3313219] = 2392
tItemFace[3313220] = 2393
tItemFace[3313221] = 2394
tItemFace[3313222] = 2395

tItem[3313213] = tItem[3313213] or {}
tItem[3313213]["DialogueText"] = tSummerVacationActivity_Text[3313213]
tItem[3313213]["Text1-1"] = {111}
tItem[3313213]["tOption1-1"] = {1,2}
tItem[3313213]["OptionFunc1"] = "SummerVacationActivity_OpenBag</N>3313213</N>1"
tItem[3313213]["OptionPoint2"] = "2-1"
tItem[3313213]["Text2-1"] = {112}
tItem[3313213]["tOption2-1"] = {3,4}
tItem[3313213]["OptionFunc3"] = "SummerVacationActivity_OpenBagMoney</N>3313213</N>2"

tItem[3313214] = tItem[3313214] or {}
tItem[3313214]["DialogueText"] = tSummerVacationActivity_Text[3313214]
tItem[3313214]["Text1-1"] = {111}
tItem[3313214]["tOption1-1"] = {1,2}
tItem[3313214]["OptionFunc1"] = "SummerVacationActivity_OpenBag</N>3313214</N>1"
tItem[3313214]["OptionPoint2"] = "2-1"
tItem[3313214]["Text2-1"] = {112}
tItem[3313214]["tOption2-1"] = {3,4}
tItem[3313214]["OptionFunc3"] = "SummerVacationActivity_OpenBagMoney</N>3313214</N>2"

tItem[3313215] = tItem[3313215] or {}
tItem[3313215]["DialogueText"] = tSummerVacationActivity_Text[3313215]
tItem[3313215]["Text1-1"] = {111}
tItem[3313215]["tOption1-1"] = {1,2}
tItem[3313215]["OptionFunc1"] = "SummerVacationActivity_OpenBag</N>3313215</N>1"
tItem[3313215]["OptionPoint2"] = "2-1"
tItem[3313215]["Text2-1"] = {112}
tItem[3313215]["tOption2-1"] = {3,4}
tItem[3313215]["OptionFunc3"] = "SummerVacationActivity_OpenBagMoney</N>3313215</N>2"

tItem[3313216] = tItem[3313216] or {}
tItem[3313216]["DialogueText"] = tSummerVacationActivity_Text[3313216]
tItem[3313216]["Text1-1"] = {111}
tItem[3313216]["tOption1-1"] = {1,2}
tItem[3313216]["OptionFunc1"] = "SummerVacationActivity_OpenBag</N>3313216</N>1"
tItem[3313216]["OptionPoint2"] = "2-1"
tItem[3313216]["Text2-1"] = {112}
tItem[3313216]["tOption2-1"] = {3,4}
tItem[3313216]["OptionFunc3"] = "SummerVacationActivity_OpenBagMoney</N>3313216</N>2"

tItem[3313217] = tItem[3313217] or {}
tItem[3313217]["DialogueText"] = tSummerVacationActivity_Text[3313217]
tItem[3313217]["Text1-1"] = {111}
tItem[3313217]["tOption1-1"] = {1,2}
tItem[3313217]["OptionFunc1"] = "SummerVacationActivity_OpenBag</N>3313217</N>1"
tItem[3313217]["OptionPoint2"] = "2-1"
tItem[3313217]["Text2-1"] = {112}
tItem[3313217]["tOption2-1"] = {3,4}
tItem[3313217]["OptionFunc3"] = "SummerVacationActivity_OpenBagMoney</N>3313217</N>2"

tItem[3313218] = tItem[3313218] or {}
tItem[3313218]["DialogueText"] = tSummerVacationActivity_Text[3313218]
tItem[3313218]["Text1-1"] = {111}
tItem[3313218]["tOption1-1"] = {1,2}
tItem[3313218]["OptionFunc1"] = "SummerVacationActivity_OpenBag</N>3313218</N>1"
tItem[3313218]["OptionPoint2"] = "2-1"
tItem[3313218]["Text2-1"] = {112}
tItem[3313218]["tOption2-1"] = {3,4}
tItem[3313218]["OptionFunc3"] = "SummerVacationActivity_OpenBagMoney</N>3313218</N>2"

tItem[3313219] = tItem[3313219] or {}
tItem[3313219]["DialogueText"] = tSummerVacationActivity_Text[3313219]
tItem[3313219]["Text1-1"] = {111}
tItem[3313219]["tOption1-1"] = {1,2}
tItem[3313219]["OptionFunc1"] = "SummerVacationActivity_OpenBag</N>3313219</N>1"
tItem[3313219]["OptionPoint2"] = "2-1"
tItem[3313219]["Text2-1"] = {112}
tItem[3313219]["tOption2-1"] = {3,4}
tItem[3313219]["OptionFunc3"] = "SummerVacationActivity_OpenBagMoney</N>3313219</N>2"

tItem[3313220] = tItem[3313220] or {}
tItem[3313220]["DialogueText"] = tSummerVacationActivity_Text[3313220]
tItem[3313220]["Text1-1"] = {111}
tItem[3313220]["tOption1-1"] = {1,2}
tItem[3313220]["OptionFunc1"] = "SummerVacationActivity_OpenBag</N>3313220</N>1"
tItem[3313220]["OptionPoint2"] = "2-1"
tItem[3313220]["Text2-1"] = {112}
tItem[3313220]["tOption2-1"] = {3,4}
tItem[3313220]["OptionFunc3"] = "SummerVacationActivity_OpenBagMoney</N>3313220</N>2"

tItem[3313221] = tItem[3313221] or {}
tItem[3313221]["DialogueText"] = tSummerVacationActivity_Text[3313221]
tItem[3313221]["Text1-1"] = {111}
tItem[3313221]["tOption1-1"] = {1,2}
tItem[3313221]["OptionFunc1"] = "SummerVacationActivity_OpenBag</N>3313221</N>1"
tItem[3313221]["OptionPoint2"] = "2-1"
tItem[3313221]["Text2-1"] = {112}
tItem[3313221]["tOption2-1"] = {3,4}
tItem[3313221]["OptionFunc3"] = "SummerVacationActivity_OpenBagMoney</N>3313221</N>2"

tItem[3313222] = tItem[3313222] or {}
tItem[3313222]["DialogueText"] = tSummerVacationActivity_Text[3313222]
tItem[3313222]["Text1-1"] = {111}
tItem[3313222]["tOption1-1"] = {1,2}
tItem[3313222]["OptionFunc1"] = "SummerVacationActivity_OpenBag</N>3313222</N>1"
tItem[3313222]["OptionPoint2"] = "2-1"
tItem[3313222]["Text2-1"] = {112}
tItem[3313222]["tOption2-1"] = {3,4}
tItem[3313222]["OptionFunc3"] = "SummerVacationActivity_OpenBagMoney</N>3313222</N>2"

--天石赠礼包
tItem[3313206] = tItem[3313206] or {}
tItem[3313206]["Function"] = function(nItemId,sItemName)
	SummerVacationActivity_StoneBag(nItemId)
end

tItem[3313207] = tItem[3313206] or {}
tItem[3313208] = tItem[3313206] or {}
tItem[3313209] = tItem[3313206] or {}
tItem[3313210] = tItem[3313206] or {}
tItem[3313211] = tItem[3313206] or {}
tItem[3313212] = tItem[3313206] or {}

--9月爆爽服礼包打开
tItem[3313666] = tItem[3313666] or {}
tItem[3313666]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tSummerVacationActivity_RewardItem[nItemId])
end
tItem[3313667] = tItem[3313666] or {}
tItem[3313668] = tItem[3313666] or {}

----------------------------------时间自检----------------------------------
-- table.insert(tSystem_PlayLogin_Func,SummerVacationActivity_Online)
table.insert(tSystem_PlayLogin_Func,SummerVacationActivity_OnlinePack)


