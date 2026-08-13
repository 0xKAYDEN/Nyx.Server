------------------------------------------------------------------------------------
--Name:		[征服][活动脚本]运营活动-排行榜奖励功能设计
--Creator: 	江宇君
--Created:	2019/18/09
------------------------------------------------------------------------------------

-- 命名前缀
-- NewServerWarcraft_


-- 开服争霸榜 global记录
local tNewServerWarcraft_SetRank1NameTest = {}
	tNewServerWarcraft_SetRank1NameTest[1] = {53572,0} -- 自创武功
	tNewServerWarcraft_SetRank1NameTest[30001000] = {53572,1} -- 等级
	tNewServerWarcraft_SetRank1NameTest[70000000] = {53572,2} -- 内功
	tNewServerWarcraft_SetRank1NameTest[80000000] = {53572,3} -- 江湖实力评分
	
	tNewServerWarcraft_SetRank1NameTest[60000001] = {53576,0} -- 青龙
	tNewServerWarcraft_SetRank1NameTest[60000002] = {53576,1} -- 朱雀
	tNewServerWarcraft_SetRank1NameTest[60000003] = {53576,2} -- 白虎
	tNewServerWarcraft_SetRank1NameTest[60000004] = {53576,3} -- 玄武
	
local tNewServerWarcraft_Reward = {}
	-- ===3313906,'宇内无敌礼盒' 江湖实力评分第一名
	-- ===索引: tNewServerWarcraft_Reward[3313906]
	-- ===删除: 3313906,1
	tNewServerWarcraft_Reward[3313906] = {}
	tNewServerWarcraft_Reward[3313906]["LogId"] = 12001665
	tNewServerWarcraft_Reward[3313906]["DeleteItem"] = {}
	tNewServerWarcraft_Reward[3313906]["DeleteItem"][1] = {}
	tNewServerWarcraft_Reward[3313906]["DeleteItem"][1]["Id"] = 3313906 -- 【库】宇内无敌礼盒[属性:9]
	tNewServerWarcraft_Reward[3313906]["RewardTitle"] = {}
	tNewServerWarcraft_Reward[3313906]["RewardTitle"]["TitleType"] = 2163 -- 【库】宇内无敌, 【表格】宇内无敌称号
	tNewServerWarcraft_Reward[3313906]["RewardTitle"]["TitleId"] = 2163
	tNewServerWarcraft_Reward[3313906]["RewardTitle"]["SaveTime"] = 43200 -- 永久时效的[称号]:宇内无敌, 【需求】宇内无敌称号
	tNewServerWarcraft_Reward[3313906]["RewardItem"] = {}
	tNewServerWarcraft_Reward[3313906]["RewardItem"][1] = {}
	tNewServerWarcraft_Reward[3313906]["RewardItem"][1]["Id"] = 4200014 -- 14阶灵珠[4200014][属性:72][叠加:99][金币:0], 【表格】14阶灵珠
	tNewServerWarcraft_Reward[3313906]["RewardItem"][1]["Attr"] = "0 1" -- 14阶灵珠*1
	tNewServerWarcraft_Reward[3313906]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tNewServerWarcraft_Reward[3313906]["RewardItem"][2] = {}
	tNewServerWarcraft_Reward[3313906]["RewardItem"][2]["Id"] = 3314467 -- 实力评分至尊礼盒[3314467][属性:9][叠加:0][金币:0], 【表格】实力评分至尊礼盒
	tNewServerWarcraft_Reward[3313906]["RewardItem"][2]["Attr"] = "0 1" -- 实力评分至尊礼盒*1
	tNewServerWarcraft_Reward[3313906]["RewardEffect"] = {}
	tNewServerWarcraft_Reward[3313906]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewServerWarcraft_Reward[3313906]["RewardEffect"]["Effect"] = "angelwing"


	tNewServerWarcraft_Reward[3313907] = {}
	-- ===3313907,'威震寰宇礼盒' 江湖实力评分第2-5名
	-- ===索引: tNewServerWarcraft_Reward[3313907]
	-- ===删除: 3313907,1
	tNewServerWarcraft_Reward[3313907]["LogId"] = 12001665
	tNewServerWarcraft_Reward[3313907]["DeleteItem"] = {}
	tNewServerWarcraft_Reward[3313907]["DeleteItem"][1] = {}
	tNewServerWarcraft_Reward[3313907]["DeleteItem"][1]["Id"] = 3313907 -- 【库】威震寰宇礼盒[属性:9]
	tNewServerWarcraft_Reward[3313907]["RewardItem"] = {}
	tNewServerWarcraft_Reward[3313907]["RewardItem"][1] = {}
	tNewServerWarcraft_Reward[3313907]["RewardItem"][1]["Id"] = 3319013 -- (+1)稀有黄色神纹随机包(赠)[3319013][属性:9][叠加:0][金币:0], 【表格】稀有黄色神纹随机包（赠）
	tNewServerWarcraft_Reward[3313907]["RewardItem"][1]["Attr"] = "0 1" -- (+1)稀有黄色神纹随机包(赠)*1
	tNewServerWarcraft_Reward[3313907]["RewardItem"][2] = {}
	tNewServerWarcraft_Reward[3313907]["RewardItem"][2]["Id"] = 3314468 -- 实力评分豪华礼盒[3314468][属性:9][叠加:0][金币:0], 【表格】实力评分豪华礼盒
	tNewServerWarcraft_Reward[3313907]["RewardItem"][2]["Attr"] = "0 1" -- 实力评分豪华礼盒*1
	tNewServerWarcraft_Reward[3313907]["RewardEffect"] = {}
	tNewServerWarcraft_Reward[3313907]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewServerWarcraft_Reward[3313907]["RewardEffect"]["Effect"] = "angelwing"


	tNewServerWarcraft_Reward[3313908] = {}
	-- ===3313908,'冠绝武林礼盒' 江湖实力评分第6-20名
	-- ===索引: tNewServerWarcraft_Reward[3313908]
	-- ===删除: 3313908,1
	tNewServerWarcraft_Reward[3313908]["LogId"] = 12001665
	tNewServerWarcraft_Reward[3313908]["DeleteItem"] = {}
	tNewServerWarcraft_Reward[3313908]["DeleteItem"][1] = {}
	tNewServerWarcraft_Reward[3313908]["DeleteItem"][1]["Id"] = 3313908 -- 【库】冠绝武林礼盒[属性:9]
	tNewServerWarcraft_Reward[3313908]["RewardItem"] = {}
	tNewServerWarcraft_Reward[3313908]["RewardItem"][1] = {}
	tNewServerWarcraft_Reward[3313908]["RewardItem"][1]["Id"] = 3319013 -- (+1)稀有黄色神纹随机包(赠)[3319013][属性:9][叠加:0][金币:0], 【表格】稀有黄色神纹随机包（赠）
	tNewServerWarcraft_Reward[3313908]["RewardItem"][1]["Attr"] = "0 1" -- (+1)稀有黄色神纹随机包(赠)*1
	tNewServerWarcraft_Reward[3313908]["RewardItem"][2] = {}
	tNewServerWarcraft_Reward[3313908]["RewardItem"][2]["Id"] = 3314469 -- 实力评分精致礼盒[3314469][属性:9][叠加:0][金币:0], 【表格】实力评分精致礼盒
	tNewServerWarcraft_Reward[3313908]["RewardItem"][2]["Attr"] = "0 1" -- 实力评分精致礼盒*1
	tNewServerWarcraft_Reward[3313908]["RewardEffect"] = {}
	tNewServerWarcraft_Reward[3313908]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewServerWarcraft_Reward[3313908]["RewardEffect"]["Effect"] = "angelwing"


	tNewServerWarcraft_Reward[3313909] = {}
	-- ===3313909,'等级排行至尊礼盒' 等级评分第一名
	-- ===索引: tNewServerWarcraft_Reward[3313909]
	-- ===删除: 3313909,1
	tNewServerWarcraft_Reward[3313909]["LogId"] = 12001665
	tNewServerWarcraft_Reward[3313909]["DeleteItem"] = {}
	tNewServerWarcraft_Reward[3313909]["DeleteItem"][1] = {}
	tNewServerWarcraft_Reward[3313909]["DeleteItem"][1]["Id"] = 3313909 -- 【库】等级排行至尊礼盒[属性:9]
	tNewServerWarcraft_Reward[3313909]["RewardTitle"] = {}
	tNewServerWarcraft_Reward[3313909]["RewardTitle"]["TitleType"] = 2164 -- 【库】天下谁人不识君, 【表格】天下谁人不识君
	tNewServerWarcraft_Reward[3313909]["RewardTitle"]["TitleId"] = 2164
	tNewServerWarcraft_Reward[3313909]["RewardTitle"]["SaveTime"] = 43200 -- 永久时效的[称号]:天下谁人不识君, 【需求】天下谁人不识君
	tNewServerWarcraft_Reward[3313909]["RewardItem"] = {}
	tNewServerWarcraft_Reward[3313909]["RewardItem"][1] = {}
	tNewServerWarcraft_Reward[3313909]["RewardItem"][1]["Id"] = 730007 -- +7赤炼石[730007][属性:0][叠加:0][金币:0], 【表格】赤炼石+7赠
	tNewServerWarcraft_Reward[3313909]["RewardItem"][1]["Attr"] = "0 1 3" -- +7赤炼石（赠）*1
	tNewServerWarcraft_Reward[3313909]["RewardItem"][2] = {}
	tNewServerWarcraft_Reward[3313909]["RewardItem"][2]["Id"] = 3314480 -- 六阳聚神丹大礼包[3314480][属性:9][叠加:99][金币:0], 【表格】六阳聚神丹赠*30
	tNewServerWarcraft_Reward[3313909]["RewardItem"][2]["Attr"] = "0 6" -- 六阳聚神丹大礼包*6
	tNewServerWarcraft_Reward[3313909]["RewardEffect"] = {}
	tNewServerWarcraft_Reward[3313909]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewServerWarcraft_Reward[3313909]["RewardEffect"]["Effect"] = "angelwing"


	tNewServerWarcraft_Reward[3313910] = {}
	-- ===3313910,'等级排行豪华礼盒' 等级评分第2-5名
	-- ===索引: tNewServerWarcraft_Reward[3313910]
	-- ===删除: 3313910,1
	tNewServerWarcraft_Reward[3313910]["LogId"] = 12001665
	tNewServerWarcraft_Reward[3313910]["DeleteItem"] = {}
	tNewServerWarcraft_Reward[3313910]["DeleteItem"][1] = {}
	tNewServerWarcraft_Reward[3313910]["DeleteItem"][1]["Id"] = 3313910 -- 【库】等级排行豪华礼盒[属性:9]
	tNewServerWarcraft_Reward[3313910]["RewardItem"] = {}
	tNewServerWarcraft_Reward[3313910]["RewardItem"][1] = {}
	tNewServerWarcraft_Reward[3313910]["RewardItem"][1]["Id"] = 3314470 -- 赤炼石（赠）豪华礼盒[3314470][属性:9][叠加:0][金币:0], 【表格】赤炼石（赠）豪华礼盒
	tNewServerWarcraft_Reward[3313910]["RewardItem"][1]["Attr"] = "0 1" -- 赤炼石（赠）豪华礼盒*1
	tNewServerWarcraft_Reward[3313910]["RewardItem"][2] = {}
	tNewServerWarcraft_Reward[3313910]["RewardItem"][2]["Id"] = 3314480 -- 六阳聚神丹大礼包[3314480][属性:9][叠加:99][金币:0], 【表格】六阳聚神丹赠*20
	tNewServerWarcraft_Reward[3313910]["RewardItem"][2]["Attr"] = "0 4" -- 六阳聚神丹大礼包*4
	tNewServerWarcraft_Reward[3313910]["RewardEffect"] = {}
	tNewServerWarcraft_Reward[3313910]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewServerWarcraft_Reward[3313910]["RewardEffect"]["Effect"] = "angelwing"


	tNewServerWarcraft_Reward[3313911] = {}
	-- ===3313911,'等级排行精致礼盒' 等级评分第6-20名
	-- ===索引: tNewServerWarcraft_Reward[3313911]
	-- ===删除: 3313911,1
	tNewServerWarcraft_Reward[3313911]["LogId"] = 12001665
	tNewServerWarcraft_Reward[3313911]["DeleteItem"] = {}
	tNewServerWarcraft_Reward[3313911]["DeleteItem"][1] = {}
	tNewServerWarcraft_Reward[3313911]["DeleteItem"][1]["Id"] = 3313911 -- 【库】等级排行精致礼盒[属性:9]
	tNewServerWarcraft_Reward[3313911]["RewardItem"] = {}
	tNewServerWarcraft_Reward[3313911]["RewardItem"][1] = {}
	tNewServerWarcraft_Reward[3313911]["RewardItem"][1]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5赠*2
	tNewServerWarcraft_Reward[3313911]["RewardItem"][1]["Attr"] = "0 2 3" -- +5赤炼石（赠）*2
	tNewServerWarcraft_Reward[3313911]["RewardItem"][2] = {}
	tNewServerWarcraft_Reward[3313911]["RewardItem"][2]["Id"] = 3314480 -- 六阳聚神丹大礼包[3314480][属性:9][叠加:99][金币:0], 【表格】六阳聚神丹赠*10
	tNewServerWarcraft_Reward[3313911]["RewardItem"][2]["Attr"] = "0 2" -- 六阳聚神丹大礼包*2
	tNewServerWarcraft_Reward[3313911]["RewardEffect"] = {}
	tNewServerWarcraft_Reward[3313911]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewServerWarcraft_Reward[3313911]["RewardEffect"]["Effect"] = "angelwing"

	tNewServerWarcraft_Reward[3313912] = {}
	-- ===3313912,'青龙门排行至尊礼盒' 青龙门评分第一名
	-- ===索引: tNewServerWarcraft_Reward[3313912]
	-- ===删除: 3313912,1
	tNewServerWarcraft_Reward[3313912]["LogId"] = 12001665
	tNewServerWarcraft_Reward[3313912]["DeleteItem"] = {}
	tNewServerWarcraft_Reward[3313912]["DeleteItem"][1] = {}
	tNewServerWarcraft_Reward[3313912]["DeleteItem"][1]["Id"] = 3313912 -- 【库】青龙门排行至尊礼盒[属性:9]
	tNewServerWarcraft_Reward[3313912]["RewardTitle"] = {}
	tNewServerWarcraft_Reward[3313912]["RewardTitle"]["TitleType"] = 2165 -- 【库】苍魂青龙, 【表格】苍魂青龙
	tNewServerWarcraft_Reward[3313912]["RewardTitle"]["TitleId"] = 2165
	tNewServerWarcraft_Reward[3313912]["RewardTitle"]["SaveTime"] = 43200 -- 永久时效的[称号]:苍魂青龙, 【需求】苍魂青龙
	tNewServerWarcraft_Reward[3313912]["RewardItem"] = {}
	tNewServerWarcraft_Reward[3313912]["RewardItem"][1] = {}
	tNewServerWarcraft_Reward[3313912]["RewardItem"][1]["Id"] = 3003614 -- 超级气力值礼包[3003614][属性:9][叠加:0][金币:0], 【表格】 气力值15000
	tNewServerWarcraft_Reward[3313912]["RewardItem"][1]["Attr"] = "0 1" -- 超级气力值礼包*1
	tNewServerWarcraft_Reward[3313912]["RewardItem"][2] = {}
	tNewServerWarcraft_Reward[3313912]["RewardItem"][2]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹（赠）*150
	tNewServerWarcraft_Reward[3313912]["RewardItem"][2]["Attr"] = "0 150 3" -- 万能神纹精粹（赠）*150（[错误]物品数量超100个）
	tNewServerWarcraft_Reward[3313912]["RewardEffect"] = {}
	tNewServerWarcraft_Reward[3313912]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewServerWarcraft_Reward[3313912]["RewardEffect"]["Effect"] = "angelwing"


	tNewServerWarcraft_Reward[3313913] = {}
	-- ===3313913,'青龙门排行豪华礼盒'青龙门评分第2-5名
	-- ===索引: tNewServerWarcraft_Reward[3313913]
	-- ===删除: 3313913,1
	tNewServerWarcraft_Reward[3313913]["LogId"] = 12001665
	tNewServerWarcraft_Reward[3313913]["DeleteItem"] = {}
	tNewServerWarcraft_Reward[3313913]["DeleteItem"][1] = {}
	tNewServerWarcraft_Reward[3313913]["DeleteItem"][1]["Id"] = 3313913 -- 【库】青龙门排行豪华礼盒[属性:9]
	tNewServerWarcraft_Reward[3313913]["RewardItem"] = {}
	tNewServerWarcraft_Reward[3313913]["RewardItem"][1] = {}
	tNewServerWarcraft_Reward[3313913]["RewardItem"][1]["Id"] = 3008201 -- 10000气力值包[3008201][属性:9][叠加:100][金币:0], 【表格】气力值10000
	tNewServerWarcraft_Reward[3313913]["RewardItem"][1]["Attr"] = "0 1" -- 10000气力值包*1
	tNewServerWarcraft_Reward[3313913]["RewardItem"][2] = {}
	tNewServerWarcraft_Reward[3313913]["RewardItem"][2]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹（赠）*100
	tNewServerWarcraft_Reward[3313913]["RewardItem"][2]["Attr"] = "0 100 3" -- 万能神纹精粹（赠）*100
	tNewServerWarcraft_Reward[3313913]["RewardEffect"] = {}
	tNewServerWarcraft_Reward[3313913]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewServerWarcraft_Reward[3313913]["RewardEffect"]["Effect"] = "angelwing"


	tNewServerWarcraft_Reward[3313914] = {}
	-- ===3313914,'青龙门排行精致礼盒' 青龙门评分第6-20名
	-- ===索引: tNewServerWarcraft_Reward[3313914]
	-- ===删除: 3313914,1
	tNewServerWarcraft_Reward[3313914]["LogId"] = 12001665
	tNewServerWarcraft_Reward[3313914]["DeleteItem"] = {}
	tNewServerWarcraft_Reward[3313914]["DeleteItem"][1] = {}
	tNewServerWarcraft_Reward[3313914]["DeleteItem"][1]["Id"] = 3313914 -- 【库】青龙门排行精致礼盒[属性:9]
	tNewServerWarcraft_Reward[3313914]["RewardItem"] = {}
	tNewServerWarcraft_Reward[3313914]["RewardItem"][1] = {}
	tNewServerWarcraft_Reward[3313914]["RewardItem"][1]["Id"] = 3008200 -- 5000气力值包[3008200][属性:9][叠加:100][金币:0], 【表格】气力值5000
	tNewServerWarcraft_Reward[3313914]["RewardItem"][1]["Attr"] = "0 1" -- 5000气力值包*1
	tNewServerWarcraft_Reward[3313914]["RewardItem"][2] = {}
	tNewServerWarcraft_Reward[3313914]["RewardItem"][2]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹（赠）*50
	tNewServerWarcraft_Reward[3313914]["RewardItem"][2]["Attr"] = "0 50 3" -- 万能神纹精粹（赠）*50
	tNewServerWarcraft_Reward[3313914]["RewardEffect"] = {}
	tNewServerWarcraft_Reward[3313914]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewServerWarcraft_Reward[3313914]["RewardEffect"]["Effect"] = "angelwing"


	tNewServerWarcraft_Reward[3313915] = {}
	-- ===3313915,'朱雀门排行至尊礼盒' 朱雀门评分第一名
	-- ===索引: tNewServerWarcraft_Reward[3313915]
	-- ===删除: 3313915,1
	tNewServerWarcraft_Reward[3313915]["LogId"] = 12001665
	tNewServerWarcraft_Reward[3313915]["DeleteItem"] = {}
	tNewServerWarcraft_Reward[3313915]["DeleteItem"][1] = {}
	tNewServerWarcraft_Reward[3313915]["DeleteItem"][1]["Id"] = 3313915 -- 【库】朱雀门排行至尊礼盒[属性:9]
	tNewServerWarcraft_Reward[3313915]["RewardTitle"] = {}
	tNewServerWarcraft_Reward[3313915]["RewardTitle"]["TitleType"] = 2166 -- 【库】赤焰朱雀, 【表格】赤焰朱雀
	tNewServerWarcraft_Reward[3313915]["RewardTitle"]["TitleId"] = 2166
	tNewServerWarcraft_Reward[3313915]["RewardTitle"]["SaveTime"] = 43200 -- 永久时效的[称号]:赤焰朱雀, 【需求】赤焰朱雀
	tNewServerWarcraft_Reward[3313915]["RewardItem"] = {}
	tNewServerWarcraft_Reward[3313915]["RewardItem"][1] = {}
	tNewServerWarcraft_Reward[3313915]["RewardItem"][1]["Id"] = 3003614 -- 超级气力值礼包[3003614][属性:9][叠加:0][金币:0], 【表格】 气力值15000
	tNewServerWarcraft_Reward[3313915]["RewardItem"][1]["Attr"] = "0 1" -- 超级气力值礼包*1
	tNewServerWarcraft_Reward[3313915]["RewardItem"][2] = {}
	tNewServerWarcraft_Reward[3313915]["RewardItem"][2]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹（赠）*150
	tNewServerWarcraft_Reward[3313915]["RewardItem"][2]["Attr"] = "0 150 3" -- 万能神纹精粹（赠）*150（[错误]物品数量超100个）
	tNewServerWarcraft_Reward[3313915]["RewardEffect"] = {}
	tNewServerWarcraft_Reward[3313915]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewServerWarcraft_Reward[3313915]["RewardEffect"]["Effect"] = "angelwing"


	tNewServerWarcraft_Reward[3313916] = {}
	-- ===3313916,'朱雀门排行豪华礼盒' 朱雀门评分第2-5名
	-- ===索引: tNewServerWarcraft_Reward[3313916]
	-- ===删除: 3313916,1
	tNewServerWarcraft_Reward[3313916]["LogId"] = 12001665
	tNewServerWarcraft_Reward[3313916]["DeleteItem"] = {}
	tNewServerWarcraft_Reward[3313916]["DeleteItem"][1] = {}
	tNewServerWarcraft_Reward[3313916]["DeleteItem"][1]["Id"] = 3313916 -- 【库】朱雀门排行豪华礼盒[属性:9]
	tNewServerWarcraft_Reward[3313916]["RewardItem"] = {}
	tNewServerWarcraft_Reward[3313916]["RewardItem"][1] = {}
	tNewServerWarcraft_Reward[3313916]["RewardItem"][1]["Id"] = 3008201 -- 10000气力值包[3008201][属性:9][叠加:100][金币:0], 【表格】气力值10000
	tNewServerWarcraft_Reward[3313916]["RewardItem"][1]["Attr"] = "0 1" -- 10000气力值包*1
	tNewServerWarcraft_Reward[3313916]["RewardItem"][2] = {}
	tNewServerWarcraft_Reward[3313916]["RewardItem"][2]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹（赠）*100
	tNewServerWarcraft_Reward[3313916]["RewardItem"][2]["Attr"] = "0 100 3" -- 万能神纹精粹（赠）*100
	tNewServerWarcraft_Reward[3313916]["RewardEffect"] = {}
	tNewServerWarcraft_Reward[3313916]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewServerWarcraft_Reward[3313916]["RewardEffect"]["Effect"] = "angelwing"


	tNewServerWarcraft_Reward[3313917] = {}
	-- ===3313917,'朱雀门排行精致礼盒' 朱雀门评分第6-20名
	-- ===索引: tNewServerWarcraft_Reward[3313917]
	-- ===删除: 3313917,1
	tNewServerWarcraft_Reward[3313917]["LogId"] = 12001665
	tNewServerWarcraft_Reward[3313917]["DeleteItem"] = {}
	tNewServerWarcraft_Reward[3313917]["DeleteItem"][1] = {}
	tNewServerWarcraft_Reward[3313917]["DeleteItem"][1]["Id"] = 3313917 -- 【库】朱雀门排行精致礼盒[属性:9]
	tNewServerWarcraft_Reward[3313917]["RewardItem"] = {}
	tNewServerWarcraft_Reward[3313917]["RewardItem"][1] = {}
	tNewServerWarcraft_Reward[3313917]["RewardItem"][1]["Id"] = 3008200 -- 5000气力值包[3008200][属性:9][叠加:100][金币:0], 【表格】气力值5000
	tNewServerWarcraft_Reward[3313917]["RewardItem"][1]["Attr"] = "0 1" -- 5000气力值包*1
	tNewServerWarcraft_Reward[3313917]["RewardItem"][2] = {}
	tNewServerWarcraft_Reward[3313917]["RewardItem"][2]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹（赠）*50
	tNewServerWarcraft_Reward[3313917]["RewardItem"][2]["Attr"] = "0 50 3" -- 万能神纹精粹（赠）*50
	tNewServerWarcraft_Reward[3313917]["RewardEffect"] = {}
	tNewServerWarcraft_Reward[3313917]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewServerWarcraft_Reward[3313917]["RewardEffect"]["Effect"] = "angelwing"


	tNewServerWarcraft_Reward[3313918] = {}
	-- ===3313918,'白虎门排行至尊礼盒' 白虎门评分第一名
	-- ===索引: tNewServerWarcraft_Reward[3313918]
	-- ===删除: 3313918,1
	tNewServerWarcraft_Reward[3313918]["LogId"] = 12001665
	tNewServerWarcraft_Reward[3313918]["DeleteItem"] = {}
	tNewServerWarcraft_Reward[3313918]["DeleteItem"][1] = {}
	tNewServerWarcraft_Reward[3313918]["DeleteItem"][1]["Id"] = 3313918 -- 【库】白虎门排行至尊礼盒[属性:9]
	tNewServerWarcraft_Reward[3313918]["RewardTitle"] = {}
	tNewServerWarcraft_Reward[3313918]["RewardTitle"]["TitleType"] = 2167 -- 【库】啸宇白虎, 【表格】啸宇白虎
	tNewServerWarcraft_Reward[3313918]["RewardTitle"]["TitleId"] = 2167
	tNewServerWarcraft_Reward[3313918]["RewardTitle"]["SaveTime"] = 43200 -- 永久时效的[称号]:啸宇白虎, 【需求】啸宇白虎
	tNewServerWarcraft_Reward[3313918]["RewardItem"] = {}
	tNewServerWarcraft_Reward[3313918]["RewardItem"][1] = {}
	tNewServerWarcraft_Reward[3313918]["RewardItem"][1]["Id"] = 3003614 -- 超级气力值礼包[3003614][属性:9][叠加:0][金币:0], 【表格】 气力值15000
	tNewServerWarcraft_Reward[3313918]["RewardItem"][1]["Attr"] = "0 1" -- 超级气力值礼包*1
	tNewServerWarcraft_Reward[3313918]["RewardItem"][2] = {}
	tNewServerWarcraft_Reward[3313918]["RewardItem"][2]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹（赠）*150
	tNewServerWarcraft_Reward[3313918]["RewardItem"][2]["Attr"] = "0 150 3" -- 万能神纹精粹（赠）*150（[错误]物品数量超100个）
	tNewServerWarcraft_Reward[3313918]["RewardEffect"] = {}
	tNewServerWarcraft_Reward[3313918]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewServerWarcraft_Reward[3313918]["RewardEffect"]["Effect"] = "angelwing"


	tNewServerWarcraft_Reward[3313919] = {}
	-- ===3313919,'白虎门排行豪华礼盒' 白虎门评分第2-5名
	-- ===索引: tNewServerWarcraft_Reward[3313919]
	-- ===删除: 3313919,1
	tNewServerWarcraft_Reward[3313919]["LogId"] = 12001665
	tNewServerWarcraft_Reward[3313919]["DeleteItem"] = {}
	tNewServerWarcraft_Reward[3313919]["DeleteItem"][1] = {}
	tNewServerWarcraft_Reward[3313919]["DeleteItem"][1]["Id"] = 3313919 -- 【库】白虎门排行豪华礼盒[属性:9]
	tNewServerWarcraft_Reward[3313919]["RewardItem"] = {}
	tNewServerWarcraft_Reward[3313919]["RewardItem"][1] = {}
	tNewServerWarcraft_Reward[3313919]["RewardItem"][1]["Id"] = 3008201 -- 10000气力值包[3008201][属性:9][叠加:100][金币:0], 【表格】气力值10000
	tNewServerWarcraft_Reward[3313919]["RewardItem"][1]["Attr"] = "0 1" -- 10000气力值包*1
	tNewServerWarcraft_Reward[3313919]["RewardItem"][2] = {}
	tNewServerWarcraft_Reward[3313919]["RewardItem"][2]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹（赠）*100
	tNewServerWarcraft_Reward[3313919]["RewardItem"][2]["Attr"] = "0 100 3" -- 万能神纹精粹（赠）*100
	tNewServerWarcraft_Reward[3313919]["RewardEffect"] = {}
	tNewServerWarcraft_Reward[3313919]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewServerWarcraft_Reward[3313919]["RewardEffect"]["Effect"] = "angelwing"


	tNewServerWarcraft_Reward[3313920] = {}
	-- ===3313920,'白虎门排行精致礼盒' 白虎门评分第6-20名
	-- ===索引: tNewServerWarcraft_Reward[3313920]
	-- ===删除: 3313920,1
	tNewServerWarcraft_Reward[3313920]["LogId"] = 12001665
	tNewServerWarcraft_Reward[3313920]["DeleteItem"] = {}
	tNewServerWarcraft_Reward[3313920]["DeleteItem"][1] = {}
	tNewServerWarcraft_Reward[3313920]["DeleteItem"][1]["Id"] = 3313920 -- 【库】白虎门排行精致礼盒[属性:9]
	tNewServerWarcraft_Reward[3313920]["RewardItem"] = {}
	tNewServerWarcraft_Reward[3313920]["RewardItem"][1] = {}
	tNewServerWarcraft_Reward[3313920]["RewardItem"][1]["Id"] = 3008200 -- 5000气力值包[3008200][属性:9][叠加:100][金币:0], 【表格】气力值5000
	tNewServerWarcraft_Reward[3313920]["RewardItem"][1]["Attr"] = "0 1" -- 5000气力值包*1
	tNewServerWarcraft_Reward[3313920]["RewardItem"][2] = {}
	tNewServerWarcraft_Reward[3313920]["RewardItem"][2]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹（赠）*50
	tNewServerWarcraft_Reward[3313920]["RewardItem"][2]["Attr"] = "0 50 3" -- 万能神纹精粹（赠）*50
	tNewServerWarcraft_Reward[3313920]["RewardEffect"] = {}
	tNewServerWarcraft_Reward[3313920]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewServerWarcraft_Reward[3313920]["RewardEffect"]["Effect"] = "angelwing"


	tNewServerWarcraft_Reward[3313921] = {}
	-- ===3313921,'玄武门排行至尊礼盒' 玄武门评分第一名
	-- ===索引: tNewServerWarcraft_Reward[3313921]
	-- ===删除: 3313921,1
	tNewServerWarcraft_Reward[3313921]["LogId"] = 12001665
	tNewServerWarcraft_Reward[3313921]["DeleteItem"] = {}
	tNewServerWarcraft_Reward[3313921]["DeleteItem"][1] = {}
	tNewServerWarcraft_Reward[3313921]["DeleteItem"][1]["Id"] = 3313921 -- 【库】玄武门排行至尊礼盒[属性:9]
	tNewServerWarcraft_Reward[3313921]["RewardTitle"] = {}
	tNewServerWarcraft_Reward[3313921]["RewardTitle"]["TitleType"] = 2168 -- 【库】北冥玄武, 【表格】北冥玄武
	tNewServerWarcraft_Reward[3313921]["RewardTitle"]["TitleId"] = 2168
	tNewServerWarcraft_Reward[3313921]["RewardTitle"]["SaveTime"] = 43200 -- 永久时效的[称号]:北冥玄武, 【需求】北冥玄武
	tNewServerWarcraft_Reward[3313921]["RewardItem"] = {}
	tNewServerWarcraft_Reward[3313921]["RewardItem"][1] = {}
	tNewServerWarcraft_Reward[3313921]["RewardItem"][1]["Id"] = 3003614 -- 超级气力值礼包[3003614][属性:9][叠加:0][金币:0], 【表格】 气力值15000
	tNewServerWarcraft_Reward[3313921]["RewardItem"][1]["Attr"] = "0 1" -- 超级气力值礼包*1
	tNewServerWarcraft_Reward[3313921]["RewardItem"][2] = {}
	tNewServerWarcraft_Reward[3313921]["RewardItem"][2]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹（赠）*150
	tNewServerWarcraft_Reward[3313921]["RewardItem"][2]["Attr"] = "0 150 3" -- 万能神纹精粹（赠）*150（[错误]物品数量超100个）
	tNewServerWarcraft_Reward[3313921]["RewardEffect"] = {}
	tNewServerWarcraft_Reward[3313921]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewServerWarcraft_Reward[3313921]["RewardEffect"]["Effect"] = "angelwing"


	tNewServerWarcraft_Reward[3313922] = {}
	-- ===3313922,'玄武门排行豪华礼盒' 玄武门评分第2-5名
	-- ===索引: tNewServerWarcraft_Reward[3313922]
	-- ===删除: 3313922,1
	tNewServerWarcraft_Reward[3313922]["LogId"] = 12001665
	tNewServerWarcraft_Reward[3313922]["DeleteItem"] = {}
	tNewServerWarcraft_Reward[3313922]["DeleteItem"][1] = {}
	tNewServerWarcraft_Reward[3313922]["DeleteItem"][1]["Id"] = 3313922 -- 【库】玄武门排行豪华礼盒[属性:9]
	tNewServerWarcraft_Reward[3313922]["RewardItem"] = {}
	tNewServerWarcraft_Reward[3313922]["RewardItem"][1] = {}
	tNewServerWarcraft_Reward[3313922]["RewardItem"][1]["Id"] = 3008201 -- 10000气力值包[3008201][属性:9][叠加:100][金币:0], 【表格】气力值10000
	tNewServerWarcraft_Reward[3313922]["RewardItem"][1]["Attr"] = "0 1" -- 10000气力值包*1
	tNewServerWarcraft_Reward[3313922]["RewardItem"][2] = {}
	tNewServerWarcraft_Reward[3313922]["RewardItem"][2]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹（赠）*100
	tNewServerWarcraft_Reward[3313922]["RewardItem"][2]["Attr"] = "0 100 3" -- 万能神纹精粹（赠）*100
	tNewServerWarcraft_Reward[3313922]["RewardEffect"] = {}
	tNewServerWarcraft_Reward[3313922]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewServerWarcraft_Reward[3313922]["RewardEffect"]["Effect"] = "angelwing"


	tNewServerWarcraft_Reward[3313923] = {}
	-- ===3313923,'玄武门排行精致礼盒' 玄武门评分第6-20名
	-- ===索引: tNewServerWarcraft_Reward[3313923]
	-- ===删除: 3313923,1
	tNewServerWarcraft_Reward[3313923]["LogId"] = 12001665
	tNewServerWarcraft_Reward[3313923]["DeleteItem"] = {}
	tNewServerWarcraft_Reward[3313923]["DeleteItem"][1] = {}
	tNewServerWarcraft_Reward[3313923]["DeleteItem"][1]["Id"] = 3313923 -- 【库】玄武门排行精致礼盒[属性:9]
	tNewServerWarcraft_Reward[3313923]["RewardItem"] = {}
	tNewServerWarcraft_Reward[3313923]["RewardItem"][1] = {}
	tNewServerWarcraft_Reward[3313923]["RewardItem"][1]["Id"] = 3008200 -- 5000气力值包[3008200][属性:9][叠加:100][金币:0], 【表格】气力值5000
	tNewServerWarcraft_Reward[3313923]["RewardItem"][1]["Attr"] = "0 1" -- 5000气力值包*1
	tNewServerWarcraft_Reward[3313923]["RewardItem"][2] = {}
	tNewServerWarcraft_Reward[3313923]["RewardItem"][2]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹（赠）*50
	tNewServerWarcraft_Reward[3313923]["RewardItem"][2]["Attr"] = "0 50 3" -- 万能神纹精粹（赠）*50
	tNewServerWarcraft_Reward[3313923]["RewardEffect"] = {}
	tNewServerWarcraft_Reward[3313923]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewServerWarcraft_Reward[3313923]["RewardEffect"]["Effect"] = "angelwing"


	tNewServerWarcraft_Reward[3313924] = {}
	-- ===3313924,'内功评分至尊礼盒' 内功评分第一名
	-- ===索引: tNewServerWarcraft_Reward[3313924]
	-- ===删除: 3313924,1
	tNewServerWarcraft_Reward[3313924]["LogId"] = 12001665
	tNewServerWarcraft_Reward[3313924]["DeleteItem"] = {}
	tNewServerWarcraft_Reward[3313924]["DeleteItem"][1] = {}
	tNewServerWarcraft_Reward[3313924]["DeleteItem"][1]["Id"] = 3313924 -- 【库】内功评分至尊礼盒[属性:9]
	tNewServerWarcraft_Reward[3313924]["RewardTitle"] = {}
	tNewServerWarcraft_Reward[3313924]["RewardTitle"]["TitleType"] = 2169 -- 【库】神功盖世, 【表格】神功盖世
	tNewServerWarcraft_Reward[3313924]["RewardTitle"]["TitleId"] = 2169
	tNewServerWarcraft_Reward[3313924]["RewardTitle"]["SaveTime"] = 43200 -- 永久时效的[称号]:神功盖世, 【需求】神功盖世
	tNewServerWarcraft_Reward[3313924]["RewardItem"] = {}
	tNewServerWarcraft_Reward[3313924]["RewardItem"][1] = {}
	tNewServerWarcraft_Reward[3313924]["RewardItem"][1]["Id"] = 3311820 -- 良品神纹源晶[3311820][属性:9][叠加:10000][金币:0], 【表格】良品神纹源晶*5
	tNewServerWarcraft_Reward[3313924]["RewardItem"][1]["Attr"] = "0 5" -- 良品神纹源晶*5
	tNewServerWarcraft_Reward[3313924]["RewardItem"][2] = {}
	tNewServerWarcraft_Reward[3313924]["RewardItem"][2]["Id"] = 3303373 -- 魔武通玄丹[3303373][属性:9][叠加:10000][金币:0], 【表格】魔武通玄丹（赠）*20
	tNewServerWarcraft_Reward[3313924]["RewardItem"][2]["Attr"] = "0 20" -- 魔武通玄丹*20（[错误]物品数量超10个）
	tNewServerWarcraft_Reward[3313924]["RewardEffect"] = {}
	tNewServerWarcraft_Reward[3313924]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewServerWarcraft_Reward[3313924]["RewardEffect"]["Effect"] = "angelwing"


	tNewServerWarcraft_Reward[3313925] = {}
	-- ===3313925,'内功评分豪华礼盒' 内功评分第2-5名
	-- ===索引: tNewServerWarcraft_Reward[3313925]
	-- ===删除: 3313925,1
	tNewServerWarcraft_Reward[3313925]["LogId"] = 12001665
	tNewServerWarcraft_Reward[3313925]["DeleteItem"] = {}
	tNewServerWarcraft_Reward[3313925]["DeleteItem"][1] = {}
	tNewServerWarcraft_Reward[3313925]["DeleteItem"][1]["Id"] = 3313925 -- 【库】内功评分豪华礼盒[属性:9]
	tNewServerWarcraft_Reward[3313925]["RewardItem"] = {}
	tNewServerWarcraft_Reward[3313925]["RewardItem"][1] = {}
	tNewServerWarcraft_Reward[3313925]["RewardItem"][1]["Id"] = 3311820 -- 良品神纹源晶[3311820][属性:9][叠加:10000][金币:0], 【表格】良品神纹源晶*3
	tNewServerWarcraft_Reward[3313925]["RewardItem"][1]["Attr"] = "0 3" -- 良品神纹源晶*3
	tNewServerWarcraft_Reward[3313925]["RewardItem"][2] = {}
	tNewServerWarcraft_Reward[3313925]["RewardItem"][2]["Id"] = 3303373 -- 魔武通玄丹[3303373][属性:9][叠加:10000][金币:0], 【表格】魔武通玄丹（赠）*10
	tNewServerWarcraft_Reward[3313925]["RewardItem"][2]["Attr"] = "0 10" -- 魔武通玄丹*10
	tNewServerWarcraft_Reward[3313925]["RewardEffect"] = {}
	tNewServerWarcraft_Reward[3313925]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewServerWarcraft_Reward[3313925]["RewardEffect"]["Effect"] = "angelwing"


	tNewServerWarcraft_Reward[3313926] = {}
	-- ===3313926,'内功评分精致礼盒' 内功评分第6-20名
	-- ===索引: tNewServerWarcraft_Reward[3313926]
	-- ===删除: 3313926,1
	tNewServerWarcraft_Reward[3313926]["LogId"] = 12001665
	tNewServerWarcraft_Reward[3313926]["DeleteItem"] = {}
	tNewServerWarcraft_Reward[3313926]["DeleteItem"][1] = {}
	tNewServerWarcraft_Reward[3313926]["DeleteItem"][1]["Id"] = 3313926 -- 【库】内功评分精致礼盒[属性:9]
	tNewServerWarcraft_Reward[3313926]["RewardItem"] = {}
	tNewServerWarcraft_Reward[3313926]["RewardItem"][1] = {}
	tNewServerWarcraft_Reward[3313926]["RewardItem"][1]["Id"] = 3311820 -- 良品神纹源晶[3311820][属性:9][叠加:10000][金币:0], 【表格】良品神纹源晶*1
	tNewServerWarcraft_Reward[3313926]["RewardItem"][1]["Attr"] = "0 1" -- 良品神纹源晶*1
	tNewServerWarcraft_Reward[3313926]["RewardItem"][2] = {}
	tNewServerWarcraft_Reward[3313926]["RewardItem"][2]["Id"] = 3303373 -- 魔武通玄丹[3303373][属性:9][叠加:10000][金币:0], 【表格】魔武通玄丹（赠）*5
	tNewServerWarcraft_Reward[3313926]["RewardItem"][2]["Attr"] = "0 5" -- 魔武通玄丹*5
	tNewServerWarcraft_Reward[3313926]["RewardEffect"] = {}
	tNewServerWarcraft_Reward[3313926]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewServerWarcraft_Reward[3313926]["RewardEffect"]["Effect"] = "angelwing"


	tNewServerWarcraft_Reward[3313927] = {}
	-- ===3313927,'武功评分至尊礼盒' 武功评分第一名
	-- ===索引: tNewServerWarcraft_Reward[3313927]
	-- ===删除: 3313927,1
	tNewServerWarcraft_Reward[3313927]["LogId"] = 12001665
	tNewServerWarcraft_Reward[3313927]["DeleteItem"] = {}
	tNewServerWarcraft_Reward[3313927]["DeleteItem"][1] = {}
	tNewServerWarcraft_Reward[3313927]["DeleteItem"][1]["Id"] = 3313927 -- 【库】武功评分至尊礼盒[属性:9]
	tNewServerWarcraft_Reward[3313927]["RewardTitle"] = {}
	tNewServerWarcraft_Reward[3313927]["RewardTitle"]["TitleType"] = 2170 -- 【库】超凡入圣, 【表格】超凡入圣
	tNewServerWarcraft_Reward[3313927]["RewardTitle"]["TitleId"] = 2170
	tNewServerWarcraft_Reward[3313927]["RewardTitle"]["SaveTime"] = 43200 -- 永久时效的[称号]:超凡入圣, 【需求】超凡入圣
	tNewServerWarcraft_Reward[3313927]["RewardItem"] = {}
	tNewServerWarcraft_Reward[3313927]["RewardItem"][1] = {}
	tNewServerWarcraft_Reward[3313927]["RewardItem"][1]["Id"] = 3311306 -- 1000修为值包[3311306][属性:9][叠加:10000][金币:0], 【表格】修为值50000点
	tNewServerWarcraft_Reward[3313927]["RewardItem"][1]["Attr"] = "0 50" -- 1000修为值包*50（[错误]物品数量超10个）
	tNewServerWarcraft_Reward[3313927]["RewardItem"][2] = {}
	tNewServerWarcraft_Reward[3313927]["RewardItem"][2]["Id"] = 3310804 -- 江湖豪侠令[3310804][属性:0][叠加:10000][金币:0], 【表格】江湖豪侠令赠*100
	tNewServerWarcraft_Reward[3313927]["RewardItem"][2]["Attr"] = "0 100 3" -- 江湖豪侠令（赠）*100（[错误]物品数量超10个）
	tNewServerWarcraft_Reward[3313927]["RewardEffect"] = {}
	tNewServerWarcraft_Reward[3313927]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewServerWarcraft_Reward[3313927]["RewardEffect"]["Effect"] = "angelwing"


	tNewServerWarcraft_Reward[3313928] = {}
	-- ===3313928,'武功评分豪华礼盒' 武功评分第2-5名
	-- ===索引: tNewServerWarcraft_Reward[3313928]
	-- ===删除: 3313928,1
	tNewServerWarcraft_Reward[3313928]["LogId"] = 12001665
	tNewServerWarcraft_Reward[3313928]["DeleteItem"] = {}
	tNewServerWarcraft_Reward[3313928]["DeleteItem"][1] = {}
	tNewServerWarcraft_Reward[3313928]["DeleteItem"][1]["Id"] = 3313928 -- 【库】武功评分豪华礼盒[属性:9]
	tNewServerWarcraft_Reward[3313928]["RewardItem"] = {}
	tNewServerWarcraft_Reward[3313928]["RewardItem"][1] = {}
	tNewServerWarcraft_Reward[3313928]["RewardItem"][1]["Id"] = 3311306 -- 1000修为值包[3311306][属性:9][叠加:10000][金币:0], 【表格】修为值30000点
	tNewServerWarcraft_Reward[3313928]["RewardItem"][1]["Attr"] = "0 30" -- 1000修为值包*30（[错误]物品数量超10个）
	tNewServerWarcraft_Reward[3313928]["RewardItem"][2] = {}
	tNewServerWarcraft_Reward[3313928]["RewardItem"][2]["Id"] = 3310804 -- 江湖豪侠令[3310804][属性:0][叠加:10000][金币:0], 【表格】江湖豪侠令赠*60
	tNewServerWarcraft_Reward[3313928]["RewardItem"][2]["Attr"] = "0 60 3" -- 江湖豪侠令（赠）*60（[错误]物品数量超10个）
	tNewServerWarcraft_Reward[3313928]["RewardEffect"] = {}
	tNewServerWarcraft_Reward[3313928]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewServerWarcraft_Reward[3313928]["RewardEffect"]["Effect"] = "angelwing"


	tNewServerWarcraft_Reward[3313929] = {}
	-- ===3313929,'武功评分精致礼盒' 武功评分第6-20名
	-- ===索引: tNewServerWarcraft_Reward[3313929]
	-- ===删除: 3313929,1
	tNewServerWarcraft_Reward[3313929]["LogId"] = 12001665
	tNewServerWarcraft_Reward[3313929]["DeleteItem"] = {}
	tNewServerWarcraft_Reward[3313929]["DeleteItem"][1] = {}
	tNewServerWarcraft_Reward[3313929]["DeleteItem"][1]["Id"] = 3313929 -- 【库】武功评分精致礼盒[属性:9]
	tNewServerWarcraft_Reward[3313929]["RewardItem"] = {}
	tNewServerWarcraft_Reward[3313929]["RewardItem"][1] = {}
	tNewServerWarcraft_Reward[3313929]["RewardItem"][1]["Id"] = 3311306 -- 1000修为值包[3311306][属性:9][叠加:10000][金币:0], 【表格】修为值10000点
	tNewServerWarcraft_Reward[3313929]["RewardItem"][1]["Attr"] = "0 10" -- 1000修为值包*10
	tNewServerWarcraft_Reward[3313929]["RewardItem"][2] = {}
	tNewServerWarcraft_Reward[3313929]["RewardItem"][2]["Id"] = 3310804 -- 江湖豪侠令[3310804][属性:0][叠加:10000][金币:0], 【表格】江湖豪侠令赠*30
	tNewServerWarcraft_Reward[3313929]["RewardItem"][2]["Attr"] = "0 30 3" -- 江湖豪侠令（赠）*30（[错误]物品数量超10个）
	tNewServerWarcraft_Reward[3313929]["RewardEffect"] = {}
	tNewServerWarcraft_Reward[3313929]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewServerWarcraft_Reward[3313929]["RewardEffect"]["Effect"] = "angelwing"


	tNewServerWarcraft_Reward[3314467] = {}
	-- ===3314467,'实力评分至尊礼盒'
	-- ===索引: tNewServerWarcraft_Reward[3314467]
	-- ===删除: 3314467,1
	tNewServerWarcraft_Reward[3314467]["LogId"] = 12001665
	tNewServerWarcraft_Reward[3314467]["DeleteItem"] = {}
	tNewServerWarcraft_Reward[3314467]["DeleteItem"][1] = {}
	tNewServerWarcraft_Reward[3314467]["DeleteItem"][1]["Id"] = 3314467 -- 【库】实力评分至尊礼盒[属性:9]
	tNewServerWarcraft_Reward[3314467]["RewardItem"] = {}
	tNewServerWarcraft_Reward[3314467]["RewardItem"][1] = {}
	tNewServerWarcraft_Reward[3314467]["RewardItem"][1]["Id"] = 3319013 -- (+1)稀有黄色神纹随机包(赠)[3319013][属性:9][叠加:0][金币:0], 【表格】稀有黄色神纹随机包（赠）
	tNewServerWarcraft_Reward[3314467]["RewardItem"][1]["Attr"] = "0 1" -- (+1)稀有黄色神纹随机包(赠)*1
	tNewServerWarcraft_Reward[3314467]["RewardItem"][2] = {}
	tNewServerWarcraft_Reward[3314467]["RewardItem"][2]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹*300赠
	tNewServerWarcraft_Reward[3314467]["RewardItem"][2]["Attr"] = "0 300 3" -- 万能神纹精粹（赠）*300（[错误]物品数量超100个）
	tNewServerWarcraft_Reward[3314467]["RewardItem"][3] = {}
	tNewServerWarcraft_Reward[3314467]["RewardItem"][3]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果*99
	tNewServerWarcraft_Reward[3314467]["RewardItem"][3]["Attr"] = "0 99" -- 人参果*99（[错误]物品数量超10个）
	tNewServerWarcraft_Reward[3314467]["RewardItem"][4] = {}
	tNewServerWarcraft_Reward[3314467]["RewardItem"][4]["Id"] = 730007 -- +7赤炼石[730007][属性:0][叠加:0][金币:0], 【表格】赤炼石+7赠
	tNewServerWarcraft_Reward[3314467]["RewardItem"][4]["Attr"] = "0 1 3" -- +7赤炼石（赠）*1
	tNewServerWarcraft_Reward[3314467]["RewardEffect"] = {}
	tNewServerWarcraft_Reward[3314467]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewServerWarcraft_Reward[3314467]["RewardEffect"]["Effect"] = "angelwing"


	tNewServerWarcraft_Reward[3314468] = {}
	-- ===3314468,'实力评分豪华礼盒'
	-- ===索引: tNewServerWarcraft_Reward[3314468]
	-- ===删除: 3314468,1
	tNewServerWarcraft_Reward[3314468]["LogId"] = 12001665
	tNewServerWarcraft_Reward[3314468]["DeleteItem"] = {}
	tNewServerWarcraft_Reward[3314468]["DeleteItem"][1] = {}
	tNewServerWarcraft_Reward[3314468]["DeleteItem"][1]["Id"] = 3314468 -- 【库】实力评分豪华礼盒[属性:9]
	tNewServerWarcraft_Reward[3314468]["RewardItem"] = {}
	tNewServerWarcraft_Reward[3314468]["RewardItem"][1] = {}
	tNewServerWarcraft_Reward[3314468]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹*200赠
	tNewServerWarcraft_Reward[3314468]["RewardItem"][1]["Attr"] = "0 200 3" -- 万能神纹精粹（赠）*200（[错误]物品数量超100个）
	tNewServerWarcraft_Reward[3314468]["RewardItem"][2] = {}
	tNewServerWarcraft_Reward[3314468]["RewardItem"][2]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果*66
	tNewServerWarcraft_Reward[3314468]["RewardItem"][2]["Attr"] = "0 66" -- 人参果*66（[错误]物品数量超10个）
	tNewServerWarcraft_Reward[3314468]["RewardItem"][3] = {}
	tNewServerWarcraft_Reward[3314468]["RewardItem"][3]["Id"] = 730006 -- +6赤炼石[730006][属性:0][叠加:0][金币:0], 【表格】赤炼石+6赠
	tNewServerWarcraft_Reward[3314468]["RewardItem"][3]["Attr"] = "0 1 3" -- +6赤炼石（赠）*1
	tNewServerWarcraft_Reward[3314468]["RewardEffect"] = {}
	tNewServerWarcraft_Reward[3314468]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewServerWarcraft_Reward[3314468]["RewardEffect"]["Effect"] = "angelwing"


	tNewServerWarcraft_Reward[3314469] = {}
	-- ===3314469,'实力评分精致礼盒'
	-- ===索引: tNewServerWarcraft_Reward[3314469]
	-- ===删除: 3314469,1
	tNewServerWarcraft_Reward[3314469]["LogId"] = 12001665
	tNewServerWarcraft_Reward[3314469]["DeleteItem"] = {}
	tNewServerWarcraft_Reward[3314469]["DeleteItem"][1] = {}
	tNewServerWarcraft_Reward[3314469]["DeleteItem"][1]["Id"] = 3314469 -- 【库】实力评分精致礼盒[属性:9]
	tNewServerWarcraft_Reward[3314469]["RewardItem"] = {}
	tNewServerWarcraft_Reward[3314469]["RewardItem"][1] = {}
	tNewServerWarcraft_Reward[3314469]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹*100赠
	tNewServerWarcraft_Reward[3314469]["RewardItem"][1]["Attr"] = "0 100 3" -- 万能神纹精粹（赠）*100
	tNewServerWarcraft_Reward[3314469]["RewardItem"][2] = {}
	tNewServerWarcraft_Reward[3314469]["RewardItem"][2]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果*33
	tNewServerWarcraft_Reward[3314469]["RewardItem"][2]["Attr"] = "0 33" -- 人参果*33（[错误]物品数量超10个）
	tNewServerWarcraft_Reward[3314469]["RewardItem"][3] = {}
	tNewServerWarcraft_Reward[3314469]["RewardItem"][3]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5赠
	tNewServerWarcraft_Reward[3314469]["RewardItem"][3]["Attr"] = "0 1 3" -- +5赤炼石（赠）*1
	tNewServerWarcraft_Reward[3314469]["RewardEffect"] = {}
	tNewServerWarcraft_Reward[3314469]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewServerWarcraft_Reward[3314469]["RewardEffect"]["Effect"] = "angelwing"


	tNewServerWarcraft_Reward[3314470] = {}
	-- ===3314470,'赤炼石（赠）豪华礼盒'
	-- ===索引: tNewServerWarcraft_Reward[3314470]
	-- ===删除: 3314470,1
	tNewServerWarcraft_Reward[3314470]["LogId"] = 12001665
	tNewServerWarcraft_Reward[3314470]["DeleteItem"] = {}
	tNewServerWarcraft_Reward[3314470]["DeleteItem"][1] = {}
	tNewServerWarcraft_Reward[3314470]["DeleteItem"][1]["Id"] = 3314470 -- 【库】赤炼石（赠）豪华礼盒[属性:9]
	tNewServerWarcraft_Reward[3314470]["RewardItem"] = {}
	tNewServerWarcraft_Reward[3314470]["RewardItem"][1] = {}
	tNewServerWarcraft_Reward[3314470]["RewardItem"][1]["Id"] = 730006 -- +6赤炼石[730006][属性:0][叠加:0][金币:0], 【表格】赤炼石+6赠
	tNewServerWarcraft_Reward[3314470]["RewardItem"][1]["Attr"] = "0 1 3" -- +6赤炼石（赠）*1
	tNewServerWarcraft_Reward[3314470]["RewardItem"][2] = {}
	tNewServerWarcraft_Reward[3314470]["RewardItem"][2]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5赠
	tNewServerWarcraft_Reward[3314470]["RewardItem"][2]["Attr"] = "0 1 3" -- +5赤炼石（赠）*1
	tNewServerWarcraft_Reward[3314470]["RewardEffect"] = {}
	tNewServerWarcraft_Reward[3314470]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewServerWarcraft_Reward[3314470]["RewardEffect"]["Effect"] = "angelwing"


	tNewServerWarcraft_Reward[3314269] = {}
	-- ===3314269,'灵丹礼盒'
	-- ===索引: tNewServerWarcraft_Reward[3314269]
	-- ===删除: 3314269,1
	tNewServerWarcraft_Reward[3314269]["LogId"] = 12001665
	tNewServerWarcraft_Reward[3314269]["DeleteItem"] = {}
	tNewServerWarcraft_Reward[3314269]["DeleteItem"][1] = {}
	tNewServerWarcraft_Reward[3314269]["DeleteItem"][1]["Id"] = 3314269 -- 【库】灵丹礼盒[属性:9]
	tNewServerWarcraft_Reward[3314269]["RewardItem"] = {}
	tNewServerWarcraft_Reward[3314269]["RewardItem"][1] = {}
	tNewServerWarcraft_Reward[3314269]["RewardItem"][1]["Id"] = 3006543 -- 修炼礼包[3006543][属性:9][叠加:10000][金币:0], 【表格】修炼礼包*10
	tNewServerWarcraft_Reward[3314269]["RewardItem"][1]["Attr"] = "0 10" -- 修炼礼包*10
	tNewServerWarcraft_Reward[3314269]["RewardItem"][2] = {}
	tNewServerWarcraft_Reward[3314269]["RewardItem"][2]["Id"] = 3006542 -- 真气礼包[3006542][属性:9][叠加:10000][金币:0], 【表格】真气礼包*10
	tNewServerWarcraft_Reward[3314269]["RewardItem"][2]["Attr"] = "0 10" -- 真气礼包*10
	tNewServerWarcraft_Reward[3314269]["RewardEffect"] = {}
	tNewServerWarcraft_Reward[3314269]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewServerWarcraft_Reward[3314269]["RewardEffect"]["Effect"] = "angelwing"
	
	
	tNewServerWarcraft_Reward[3314480] = {}
	-- ===3314480,'六阳聚神丹大礼包'
	-- ===索引: tNewServerWarcraft_Reward[3314480]
	-- ===删除: 3314480,1
	tNewServerWarcraft_Reward[3314480]["LogId"] = 12001665
	tNewServerWarcraft_Reward[3314480]["DeleteItem"] = {}
	tNewServerWarcraft_Reward[3314480]["DeleteItem"][1] = {}
	tNewServerWarcraft_Reward[3314480]["DeleteItem"][1]["Id"] = 3314480 -- 【库】六阳聚神丹大礼包[属性:9]
	tNewServerWarcraft_Reward[3314480]["RewardItem"] = {}
	tNewServerWarcraft_Reward[3314480]["RewardItem"][1] = {}
	tNewServerWarcraft_Reward[3314480]["RewardItem"][1]["Id"] = 3303100 -- 六阳聚神丹[3303100][属性:0][叠加:0][金币:0], 【表格】六阳聚神丹（赠）
	tNewServerWarcraft_Reward[3314480]["RewardItem"][1]["Attr"] = "0 5 3" -- 六阳聚神丹（赠）*5
	tNewServerWarcraft_Reward[3314480]["RewardEffect"] = {}
	tNewServerWarcraft_Reward[3314480]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewServerWarcraft_Reward[3314480]["RewardEffect"]["Effect"] = "angelwing"
	
-------------------------------------逻辑部分-----------------------------------------------

-- 记录排行第一名名字 ---测试接口
function NewServerWarcraft_SetRank1NameTest(nRankType, sUserName)
	local nGlobalId = tNewServerWarcraft_SetRank1NameTest[nRankType][1]
	local nPos = tNewServerWarcraft_SetRank1NameTest[nRankType][2]
	
	local nData = Get_SysDynaGlobalData(nGlobalId, nPos)
	
	if nData == 0 then
		Sys_SetSynaGlobalData(nGlobalId, nPos, nRankType)
		Sys_SetSynaGlobalDataStr(nGlobalId, nPos, sUserName)
	end
end


-------------------------------------物品逻辑-----------------------------------------------

-- 排行榜礼包
tItem[3313906] = tItem[3313906] or {}
tItem[3313906]["Function"] = function(nItemId,sItemName)
	-- 判断物品是否存在
	if not Item_ChkMulItem(nItemId, nItemId, 1) then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tNewServerWarcraft_Reward[nItemId])
end

tItem[3313907] = tItem[3313906] or {}
tItem[3313908] = tItem[3313906] or {}
tItem[3313909] = tItem[3313906] or {}
tItem[3313910] = tItem[3313906] or {}
tItem[3313911] = tItem[3313906] or {}
tItem[3313912] = tItem[3313906] or {}
tItem[3313913] = tItem[3313906] or {}
tItem[3313914] = tItem[3313906] or {}
tItem[3313915] = tItem[3313906] or {}
tItem[3313916] = tItem[3313906] or {}
tItem[3313917] = tItem[3313906] or {}
tItem[3313918] = tItem[3313906] or {}
tItem[3313919] = tItem[3313906] or {}
tItem[3313920] = tItem[3313906] or {}
tItem[3313921] = tItem[3313906] or {}
tItem[3313922] = tItem[3313906] or {}
tItem[3313923] = tItem[3313906] or {}
tItem[3313924] = tItem[3313906] or {}
tItem[3313925] = tItem[3313906] or {}
tItem[3313926] = tItem[3313906] or {}
tItem[3313927] = tItem[3313906] or {}
tItem[3313928] = tItem[3313906] or {}
tItem[3313929] = tItem[3313906] or {}
tItem[3314467] = tItem[3313906] or {}
tItem[3314468] = tItem[3313906] or {}
tItem[3314469] = tItem[3313906] or {}
tItem[3314470] = tItem[3313906] or {}
tItem[3314269] = tItem[3313906] or {}
tItem[3314480] = tItem[3313906] or {}



-- 自动触发
table.insert(tSetRank1Name["tFunction"], NewServerWarcraft_SetRank1NameTest)

-- 【活动时间结束 情空global数据】【具体时间未定 暂不做清零操作】
tGlobalData_Info[53572] = {}
tGlobalData_Info[53572]["Time"] = {}
tGlobalData_Info[53572]["Time"]["ActivityTime"] = "2020-05-06 00:00 2020-05-06 23:59"
tGlobalData_Info[53572]["Time"]["ClearTime"] = "00:00 00:05"
tGlobalData_Info[53572]["Rest"] = {}
tGlobalData_Info[53572]["Rest"]["GlobalId"] = {53572}
tGlobalData_Info[53572]["Rest"]["Pos"] = {0,1,2,3}

tGlobalData_Info[53576] = {}
tGlobalData_Info[53576]["Time"] = {}
tGlobalData_Info[53576]["Time"]["ActivityTime"] = "2020-05-06 00:00 2020-05-06 23:59"
tGlobalData_Info[53576]["Time"]["ClearTime"] = "00:00 00:05"
tGlobalData_Info[53576]["Rest"] = {}
tGlobalData_Info[53576]["Rest"]["GlobalId"] = {53576}
tGlobalData_Info[53576]["Rest"]["Pos"] = {0,1,2,3}
