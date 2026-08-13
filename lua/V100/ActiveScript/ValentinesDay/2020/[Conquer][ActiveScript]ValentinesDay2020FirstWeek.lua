------------------------------------------------------------------------------------
--Name：	191231[简体征服][活动脚本]全球情人节活动-部分玩法
--Creator:	林旭
--Created:	2019-12-31
------------------------------------------------------------------------------------
-- 任务需求：
-- 前缀：ValDayFW_
-- logid:12001834
-- stc:
-- (214,30):是否救出赛维娅
-- (214,31):是否完成第一周每日任务
-- (214,32):每日兑换巧克力豆的值
-- (214,60):是否第一周首次对白
-- (214,55):每日首次进入监狱寻找巧克力
------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
-- 常量
local tValDayFW_Const = {}
	tValDayFW_Const["Level"] = 80
	tValDayFW_Const["Mete"] = 0
	-- 每日巧克力豆兑换限制的值
	tValDayFW_Const["ChoLimit"] = 5000
	tValDayFW_Const["StoryBoss"] = {}
	tValDayFW_Const["StoryBoss"]["Id"] = 1287
	tValDayFW_Const["StoryBoss"]["GenId"] = 30508
	tValDayFW_Const["StoryBoss"]["PosX"] = 385
	tValDayFW_Const["StoryBoss"]["PosY"] = 285
	tValDayFW_Const["StoryMonster"] = {}
	tValDayFW_Const["StoryMonster"]["Id"] = 1285
	tValDayFW_Const["StoryMonster"]["GenId"] = 30508
	tValDayFW_Const["StoryMonster"]["PosX"] = 394
	tValDayFW_Const["StoryMonster"]["PosY"] = 286
-- 掩码
local tValDayFW_Stc = {}
	-- 是否救出赛维娅
	tValDayFW_Stc[1] = {}
	tValDayFW_Stc[1]["EventType"] = 214
	tValDayFW_Stc[1]["DataType"] = 30
	-- 是否完成第一周每日任务
	tValDayFW_Stc[2] = {}
	tValDayFW_Stc[2]["EventType"] = 214
	tValDayFW_Stc[2]["DataType"] = 31
	-- 每日兑换巧克力豆的值
	tValDayFW_Stc[3] = {}
	tValDayFW_Stc[3]["EventType"] = 214
	tValDayFW_Stc[3]["DataType"] = 32
	-- 是否第一周首次对白
	tValDayFW_Stc[4] = {}
	tValDayFW_Stc[4]["EventType"] = 214
	tValDayFW_Stc[4]["DataType"] = 60
	-- 每日首次进入监狱寻找巧克力
	tValDayFW_Stc[5] = {}
	tValDayFW_Stc[5]["EventType"] = 214
	tValDayFW_Stc[5]["DataType"] = 55
-- 时间
local tValDayFW_Time = {}
	tValDayFW_Time["FirstDay"] = tActivityTime["ValDayFW"]["FirstDay"]
	tValDayFW_Time["1Week1Stage"] = tActivityTime["ValDayFW"]["1Week1Stage"]
	tValDayFW_Time["1Week2Stage"] = tActivityTime["ValDayFW"]["1Week2Stage"]
	tValDayFW_Time["1Week3Stage"] = tActivityTime["ValDayFW"]["1Week3Stage"]
	tValDayFW_Time["1Week"] = tActivityTime["ValDayFW"]["1Week"]
	tValDayFW_Time["2Week"] = tActivityTime["ValDayFW"]["2Week"]
	tValDayFW_Time["ActivityTime"] = tActivityTime["ValDayFW"]["ActivityTime"]
	
local tValDayFW_Task = {}
	tValDayFW_Task[1] = {}
	tValDayFW_Task[1]["id"] = 4373
	tValDayFW_Task[2] = {}
	tValDayFW_Task[2]["id"] = 4374
	tValDayFW_Task[3] = {}
	tValDayFW_Task[3]["id"] = 4375
	
-- 解救灵魂NPC
local tValDayFW_Save = {}
	tValDayFW_Save["PosX"] = 393
	tValDayFW_Save["PosY"] = 287
	tValDayFW_Save["ActionId"] = 94492046
	tValDayFW_Save["LookFace"] = 62997
	
local tValDayFW_MonsterPos = {}
	tValDayFW_MonsterPos["MapId"] = 10757
	tValDayFW_MonsterPos["PosX"] = 240
	tValDayFW_MonsterPos["PosY"] = 240
	
-- 地图
local tValDayFW_Tran = {}
	tValDayFW_Tran["Prison"] = {}
	tValDayFW_Tran["Prison"]["MapId"] = 10757
	tValDayFW_Tran["Prison"]["PosX"] = 266
	tValDayFW_Tran["Prison"]["PosY"] = 267
	tValDayFW_Tran["Prison"]["Cell"] = 1
	tValDayFW_Tran["Dragon"] = {}
	tValDayFW_Tran["Dragon"]["Normal"] = {}
	tValDayFW_Tran["Dragon"]["Normal"]["MapId"] = 1002
	tValDayFW_Tran["Dragon"]["Normal"]["PosX"] = 375
	tValDayFW_Tran["Dragon"]["Normal"]["PosY"] = 444
	tValDayFW_Tran["Dragon"]["Normal"]["Cell"] = 3
	tValDayFW_Tran["Dragon"]["NoGift"] = {}
	tValDayFW_Tran["Dragon"]["NoGift"]["MapId"] = 1036
	tValDayFW_Tran["Dragon"]["NoGift"]["PosX"] = 253
	tValDayFW_Tran["Dragon"]["NoGift"]["PosY"] = 207
	tValDayFW_Tran["Dragon"]["NoGift"]["Cell"] = 3
	
-- 副本
local tValDayFW_Instance = {}
	tValDayFW_Instance[1] = {}
	tValDayFW_Instance[1]["Mete"] = 0
	tValDayFW_Instance[1]["Level"] = 80
	tValDayFW_Instance[1]["Pro"] = 1
	tValDayFW_Instance[1]["Type"] = 451
	tValDayFW_Instance[1]["Monster"] = {}
	tValDayFW_Instance[1]["Monster"][1] = {}
	tValDayFW_Instance[1]["Monster"][1]["PosX"] = 394
	tValDayFW_Instance[1]["Monster"][1]["PosY"] = 286
	tValDayFW_Instance[1]["Monster"][1]["GenId"] = 30508
	tValDayFW_Instance[1]["Monster"][1]["MonsterId"] = 1284
	tValDayFW_Instance[1]["Monster"][1]["ChkNum"] = 10
	tValDayFW_Instance[1]["Monster"][1]["MonsterNum"] = 10
	tValDayFW_Instance[1]["MsgBox"] = tValDayFW_Text["MsgBox"]["EnterInstance"]
	tValDayFW_Instance[1]["MsgBoxWay"] = {}
	tValDayFW_Instance[1]["MsgBoxWay"]["PosX"] = 395
	tValDayFW_Instance[1]["MsgBoxWay"]["PosY"] = 286
	tValDayFW_Instance[2] = {}
	tValDayFW_Instance[2]["Mete"] = 0
	tValDayFW_Instance[2]["Level"] = 80
	tValDayFW_Instance[2]["Pro"] = 1
	tValDayFW_Instance[2]["Type"] = 451
	tValDayFW_Instance[2]["Monster"] = {}
	tValDayFW_Instance[2]["Monster"][1] = {}
	tValDayFW_Instance[2]["Monster"][1]["PosX"] = 394
	tValDayFW_Instance[2]["Monster"][1]["PosY"] = 286
	tValDayFW_Instance[2]["Monster"][1]["GenId"] = 30508
	tValDayFW_Instance[2]["Monster"][1]["MonsterId"] = 1284
	tValDayFW_Instance[2]["Monster"][1]["ChkNum"] = 5
	tValDayFW_Instance[2]["Monster"][1]["MonsterNum"] = 5
	tValDayFW_Instance[2]["Monster"][2] = {}
	tValDayFW_Instance[2]["Monster"][2]["PosX"] = 394
	tValDayFW_Instance[2]["Monster"][2]["PosY"] = 286
	tValDayFW_Instance[2]["Monster"][2]["GenId"] = 30508
	tValDayFW_Instance[2]["Monster"][2]["MonsterId"] = 1285
	tValDayFW_Instance[2]["Monster"][2]["ChkNum"] = 10
	tValDayFW_Instance[2]["Monster"][2]["MonsterNum"] = 5
	tValDayFW_Instance[2]["Monster"][3] = {}
	tValDayFW_Instance[2]["Monster"][3]["PosX"] = 385
	tValDayFW_Instance[2]["Monster"][3]["PosY"] = 285
	tValDayFW_Instance[2]["Monster"][3]["GenId"] = 30508
	tValDayFW_Instance[2]["Monster"][3]["MonsterId"] = 1286
	tValDayFW_Instance[2]["Monster"][3]["ChkNum"] = 11
	tValDayFW_Instance[2]["Monster"][3]["MonsterNum"] = 1
	tValDayFW_Instance[2]["MsgBox"] = tValDayFW_Text["MsgBox"]["EverydayEnter"]
	tValDayFW_Instance[2]["MsgBoxWay"] = {}
	tValDayFW_Instance[2]["MsgBoxWay"]["PosX"] = 394
	tValDayFW_Instance[2]["MsgBoxWay"]["PosY"] = 286
	
	-- 兑换巧克力豆的数量
local tValDayFW_Chocolate = {}
	tValDayFW_Chocolate[754001] = 6
	tValDayFW_Chocolate[754003] = 20
	tValDayFW_Chocolate[754009] = 60
	tValDayFW_Chocolate[754099] = 630
	-- tValDayFW_Chocolate[753001] = 5
	tValDayFW_Chocolate[753003] = 2
	tValDayFW_Chocolate[753009] = 4
	tValDayFW_Chocolate[753099] = 48
	tValDayFW_Chocolate[753999] = 480
	-- tValDayFW_Chocolate[752003] = 5
	tValDayFW_Chocolate[752009] = 2
	tValDayFW_Chocolate[752099] = 16
	tValDayFW_Chocolate[752999] = 160
	-- tValDayFW_Chocolate[751001] = 5
	tValDayFW_Chocolate[751003] = 2
	tValDayFW_Chocolate[751009] = 4
	tValDayFW_Chocolate[751099] = 48
	tValDayFW_Chocolate[751999] = 480
	tValDayFW_Chocolate[758001] = 6
	tValDayFW_Chocolate[758003] = 20
	tValDayFW_Chocolate[758009] = 60
	tValDayFW_Chocolate[758099] = 630
	-- tValDayFW_Chocolate[757001] = 5
	tValDayFW_Chocolate[757003] = 2
	tValDayFW_Chocolate[757009] = 4
	tValDayFW_Chocolate[757099] = 48
	tValDayFW_Chocolate[757999] = 480
	-- tValDayFW_Chocolate[756003] = 5
	tValDayFW_Chocolate[756009] = 2
	tValDayFW_Chocolate[756099] = 16
	tValDayFW_Chocolate[756999] = 160
	-- tValDayFW_Chocolate[755001] = 5
	tValDayFW_Chocolate[755003] = 2
	tValDayFW_Chocolate[755009] = 4
	tValDayFW_Chocolate[755099] = 48
	tValDayFW_Chocolate[755999] = 480
	tValDayFW_Chocolate[3304137] = 8 
	tValDayFW_Chocolate[3304135] = 0.6 
	tValDayFW_Chocolate[3304136] = 0.2 
	tValDayFW_Chocolate[3304134] = 0.6 
	-- 部分多个物品兑换巧克力豆需要的数量
local tValDayFW_MulChocolate = {}
	tValDayFW_MulChocolate[3304135] = 5 
	tValDayFW_MulChocolate[3304136] = 5 
	tValDayFW_MulChocolate[3304134] = 5 
	
	-- 巧克力和豆价值真爱之心
local tValDayFW_Heart = {}
	tValDayFW_Heart[3315299] = 1
	tValDayFW_Heart[3600215] = 10
	tValDayFW_Heart[3600216] = 100
	tValDayFW_Heart[3600217] = 1000
	
local tValDayFW_FlowerGift = {}
	-- 鲜花礼物
	tValDayFW_FlowerGift[1] = {}
	-- 郁金香
	tValDayFW_FlowerGift[1][1] = 754001
	tValDayFW_FlowerGift[1][2] = 754003
	tValDayFW_FlowerGift[1][3] = 754009
	tValDayFW_FlowerGift[1][4] = 754099
	-- 兰花
	tValDayFW_FlowerGift[1][5] = 753003
	tValDayFW_FlowerGift[1][6] = 753009
	tValDayFW_FlowerGift[1][7] = 753099
	tValDayFW_FlowerGift[1][8] = 753999
	-- 百合花
	tValDayFW_FlowerGift[1][9] = 752009
	tValDayFW_FlowerGift[1][10] = 752099
	tValDayFW_FlowerGift[1][11] = 752999
	-- 红玫瑰
	tValDayFW_FlowerGift[1][12] = 751003
	tValDayFW_FlowerGift[1][13] = 751009
	tValDayFW_FlowerGift[1][14] = 751099
	tValDayFW_FlowerGift[1][15] = 751999
	-- 玉佩
	tValDayFW_FlowerGift[1][16] = 758001
	tValDayFW_FlowerGift[1][17] = 758003
	tValDayFW_FlowerGift[1][18] = 758009
	tValDayFW_FlowerGift[1][19] = 758099
	-- 啤酒
	tValDayFW_FlowerGift[1][20] = 757003
	tValDayFW_FlowerGift[1][21] = 757009
	tValDayFW_FlowerGift[1][22] = 757099
	tValDayFW_FlowerGift[1][23] = 757999
	-- 情书
	tValDayFW_FlowerGift[1][24] = 756009
	tValDayFW_FlowerGift[1][25] = 756099
	tValDayFW_FlowerGift[1][26] = 756999
	-- 飞吻
	tValDayFW_FlowerGift[1][27] = 755003
	tValDayFW_FlowerGift[1][28] = 755009
	tValDayFW_FlowerGift[1][29] = 755099
	tValDayFW_FlowerGift[1][30] = 755999
	-- 兑换券
	tValDayFW_FlowerGift[2] = {}
	tValDayFW_FlowerGift[2][1] = 3304137
	tValDayFW_FlowerGift[2][2] = 3304135
	tValDayFW_FlowerGift[2][3] = 3304136
	tValDayFW_FlowerGift[2][4] = 3304134
	
local tValDayFW_Exchange = {}
	-- ===一键兑换鲜花礼物
	-- ===索引: tValDayFW_Exchange[1]
	-- ===删除:754001,2
	-- ===删除:754003,2
	-- ===删除:754009,2
	-- ===删除:754099,2
	-- ===删除:753003,2
	-- ===删除:753009,2
	-- ===删除:753099,2
	-- ===删除:753999,2
	-- ===删除:752009,2
	-- ===删除:752099,2
	-- ===删除:752999,2
	-- ===删除:751003,2
	-- ===删除:751009,2
	-- ===删除:751099,2
	-- ===删除:751999,2
	-- ===删除:758001,2
	-- ===删除:758003,2
	-- ===删除:758009,2
	-- ===删除:758099,2
	-- ===删除:757003,2
	-- ===删除:757009,2
	-- ===删除:757099,2
	-- ===删除:757999,2
	-- ===删除:756009,2
	-- ===删除:756099,2
	-- ===删除:756999,2
	-- ===删除:755003,2
	-- ===删除:755009,2
	-- ===删除:755099,2
	-- ===删除:755999,2
	tValDayFW_Exchange[1] = {}
	tValDayFW_Exchange[1]["LogId"] = 12001834
	tValDayFW_Exchange[1]["DeleteItem"] = {}
	tValDayFW_Exchange[1]["DeleteItem"][1] = {}
	tValDayFW_Exchange[1]["DeleteItem"][1]["Id"] = 754001 -- 【库】1朵郁金香[属性:8]
	tValDayFW_Exchange[1]["DeleteItem"][1]["ItemNum"] = 2
	tValDayFW_Exchange[1]["DeleteItem"][2] = {}
	tValDayFW_Exchange[1]["DeleteItem"][2]["Id"] = 754003 -- 【库】3朵郁金香[属性:8]
	tValDayFW_Exchange[1]["DeleteItem"][2]["ItemNum"] = 2
	tValDayFW_Exchange[1]["DeleteItem"][3] = {}
	tValDayFW_Exchange[1]["DeleteItem"][3]["Id"] = 754009 -- 【库】9朵郁金香[属性:8]
	tValDayFW_Exchange[1]["DeleteItem"][3]["ItemNum"] = 2
	tValDayFW_Exchange[1]["DeleteItem"][4] = {}
	tValDayFW_Exchange[1]["DeleteItem"][4]["Id"] = 754099 -- 【库】99朵郁金香[属性:8]
	tValDayFW_Exchange[1]["DeleteItem"][4]["ItemNum"] = 2
	tValDayFW_Exchange[1]["DeleteItem"][5] = {}
	tValDayFW_Exchange[1]["DeleteItem"][5]["Id"] = 753003 -- 【库】3朵兰花[属性:8]
	tValDayFW_Exchange[1]["DeleteItem"][5]["ItemNum"] = 2
	tValDayFW_Exchange[1]["DeleteItem"][6] = {}
	tValDayFW_Exchange[1]["DeleteItem"][6]["Id"] = 753009 -- 【库】9朵兰花[属性:8]
	tValDayFW_Exchange[1]["DeleteItem"][6]["ItemNum"] = 2
	tValDayFW_Exchange[1]["DeleteItem"][7] = {}
	tValDayFW_Exchange[1]["DeleteItem"][7]["Id"] = 753099 -- 【库】99朵兰花[属性:8]
	tValDayFW_Exchange[1]["DeleteItem"][7]["ItemNum"] = 2
	tValDayFW_Exchange[1]["DeleteItem"][8] = {}
	tValDayFW_Exchange[1]["DeleteItem"][8]["Id"] = 753999 -- 【库】999朵兰花[属性:8]
	tValDayFW_Exchange[1]["DeleteItem"][8]["ItemNum"] = 2
	tValDayFW_Exchange[1]["DeleteItem"][9] = {}
	tValDayFW_Exchange[1]["DeleteItem"][9]["Id"] = 752009 -- 【库】9朵百合花[属性:8]
	tValDayFW_Exchange[1]["DeleteItem"][9]["ItemNum"] = 2
	tValDayFW_Exchange[1]["DeleteItem"][10] = {}
	tValDayFW_Exchange[1]["DeleteItem"][10]["Id"] = 752099 -- 【库】99朵百合花[属性:8]
	tValDayFW_Exchange[1]["DeleteItem"][10]["ItemNum"] = 2
	tValDayFW_Exchange[1]["DeleteItem"][11] = {}
	tValDayFW_Exchange[1]["DeleteItem"][11]["Id"] = 752999 -- 【库】999朵百合花[属性:8]
	tValDayFW_Exchange[1]["DeleteItem"][11]["ItemNum"] = 2
	tValDayFW_Exchange[1]["DeleteItem"][12] = {}
	tValDayFW_Exchange[1]["DeleteItem"][12]["Id"] = 751003 -- 【库】3朵红玫瑰[属性:8]
	tValDayFW_Exchange[1]["DeleteItem"][12]["ItemNum"] = 2
	tValDayFW_Exchange[1]["DeleteItem"][13] = {}
	tValDayFW_Exchange[1]["DeleteItem"][13]["Id"] = 751009 -- 【库】9朵红玫瑰[属性:8]
	tValDayFW_Exchange[1]["DeleteItem"][13]["ItemNum"] = 2
	tValDayFW_Exchange[1]["DeleteItem"][14] = {}
	tValDayFW_Exchange[1]["DeleteItem"][14]["Id"] = 751099 -- 【库】99朵红玫瑰[属性:8]
	tValDayFW_Exchange[1]["DeleteItem"][14]["ItemNum"] = 2
	tValDayFW_Exchange[1]["DeleteItem"][15] = {}
	tValDayFW_Exchange[1]["DeleteItem"][15]["Id"] = 751999 -- 【库】999朵红玫瑰[属性:8]
	tValDayFW_Exchange[1]["DeleteItem"][15]["ItemNum"] = 2
	tValDayFW_Exchange[1]["DeleteItem"][16] = {}
	tValDayFW_Exchange[1]["DeleteItem"][16]["Id"] = 758001 -- 【库】1块玉佩[属性:8]
	tValDayFW_Exchange[1]["DeleteItem"][16]["ItemNum"] = 2
	tValDayFW_Exchange[1]["DeleteItem"][17] = {}
	tValDayFW_Exchange[1]["DeleteItem"][17]["Id"] = 758003 -- 【库】3块玉佩[属性:8]
	tValDayFW_Exchange[1]["DeleteItem"][17]["ItemNum"] = 2
	tValDayFW_Exchange[1]["DeleteItem"][18] = {}
	tValDayFW_Exchange[1]["DeleteItem"][18]["Id"] = 758009 -- 【库】9块玉佩[属性:8]
	tValDayFW_Exchange[1]["DeleteItem"][18]["ItemNum"] = 2
	tValDayFW_Exchange[1]["DeleteItem"][19] = {}
	tValDayFW_Exchange[1]["DeleteItem"][19]["Id"] = 758099 -- 【库】99块玉佩[属性:8]
	tValDayFW_Exchange[1]["DeleteItem"][19]["ItemNum"] = 2
	tValDayFW_Exchange[1]["DeleteItem"][20] = {}
	tValDayFW_Exchange[1]["DeleteItem"][20]["Id"] = 757003 -- 【库】3瓶啤酒[属性:8]
	tValDayFW_Exchange[1]["DeleteItem"][20]["ItemNum"] = 2
	tValDayFW_Exchange[1]["DeleteItem"][21] = {}
	tValDayFW_Exchange[1]["DeleteItem"][21]["Id"] = 757009 -- 【库】9瓶啤酒[属性:8]
	tValDayFW_Exchange[1]["DeleteItem"][21]["ItemNum"] = 2
	tValDayFW_Exchange[1]["DeleteItem"][22] = {}
	tValDayFW_Exchange[1]["DeleteItem"][22]["Id"] = 757099 -- 【库】99瓶啤酒[属性:8]
	tValDayFW_Exchange[1]["DeleteItem"][22]["ItemNum"] = 2
	tValDayFW_Exchange[1]["DeleteItem"][23] = {}
	tValDayFW_Exchange[1]["DeleteItem"][23]["Id"] = 757999 -- 【库】999瓶啤酒[属性:8]
	tValDayFW_Exchange[1]["DeleteItem"][23]["ItemNum"] = 2
	tValDayFW_Exchange[1]["DeleteItem"][24] = {}
	tValDayFW_Exchange[1]["DeleteItem"][24]["Id"] = 756009 -- 【库】9封情书[属性:8]
	tValDayFW_Exchange[1]["DeleteItem"][24]["ItemNum"] = 2
	tValDayFW_Exchange[1]["DeleteItem"][25] = {}
	tValDayFW_Exchange[1]["DeleteItem"][25]["Id"] = 756099 -- 【库】99封情书[属性:8]
	tValDayFW_Exchange[1]["DeleteItem"][25]["ItemNum"] = 2
	tValDayFW_Exchange[1]["DeleteItem"][26] = {}
	tValDayFW_Exchange[1]["DeleteItem"][26]["Id"] = 756999 -- 【库】999封情书[属性:8]
	tValDayFW_Exchange[1]["DeleteItem"][26]["ItemNum"] = 2
	tValDayFW_Exchange[1]["DeleteItem"][27] = {}
	tValDayFW_Exchange[1]["DeleteItem"][27]["Id"] = 755003 -- 【库】3个飞吻[属性:8]
	tValDayFW_Exchange[1]["DeleteItem"][27]["ItemNum"] = 2
	tValDayFW_Exchange[1]["DeleteItem"][28] = {}
	tValDayFW_Exchange[1]["DeleteItem"][28]["Id"] = 755009 -- 【库】9个飞吻[属性:8]
	tValDayFW_Exchange[1]["DeleteItem"][28]["ItemNum"] = 2
	tValDayFW_Exchange[1]["DeleteItem"][29] = {}
	tValDayFW_Exchange[1]["DeleteItem"][29]["Id"] = 755099 -- 【库】99个飞吻[属性:8]
	tValDayFW_Exchange[1]["DeleteItem"][29]["ItemNum"] = 2
	tValDayFW_Exchange[1]["DeleteItem"][30] = {}
	tValDayFW_Exchange[1]["DeleteItem"][30]["Id"] = 755999 -- 【库】999个飞吻[属性:8]
	tValDayFW_Exchange[1]["DeleteItem"][30]["ItemNum"] = 2
	tValDayFW_Exchange[1]["RewardItem"] = {}
	tValDayFW_Exchange[1]["RewardItem"][1] = {}
	tValDayFW_Exchange[1]["RewardItem"][1]["Id"] = 3315299 -- 巧克力豆[3315299][属性:9][叠加:10000][金币:0], 【表格】巧克力豆
	tValDayFW_Exchange[1]["RewardItem"][1]["Attr"] = "0 %s" -- 巧克力豆*1
	tValDayFW_Exchange[1]["RewardEffect"] = {}
	tValDayFW_Exchange[1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValDayFW_Exchange[1]["RewardEffect"]["Effect"] = "angelwing"


	tValDayFW_Exchange[2] = {}
	-- ===一键兑换兑换券
	-- ===索引: tValDayFW_Exchange[2]
	-- ===删除:3304137,2
	-- ===删除:3304135,2
	-- ===删除:3304136,2
	-- ===删除:3304134,2
	tValDayFW_Exchange[2]["LogId"] = 12001834
	tValDayFW_Exchange[2]["DeleteItem"] = {}
	tValDayFW_Exchange[2]["DeleteItem"][1] = {}
	tValDayFW_Exchange[2]["DeleteItem"][1]["Id"] = 3304137 -- 【库】郁金香兑换券[属性:9]
	tValDayFW_Exchange[2]["DeleteItem"][1]["ItemNum"] = 2
	tValDayFW_Exchange[2]["DeleteItem"][2] = {}
	tValDayFW_Exchange[2]["DeleteItem"][2]["Id"] = 3304135 -- 【库】兰花兑换券[属性:9]
	tValDayFW_Exchange[2]["DeleteItem"][2]["ItemNum"] = 2
	tValDayFW_Exchange[2]["DeleteItem"][3] = {}
	tValDayFW_Exchange[2]["DeleteItem"][3]["Id"] = 3304136 -- 【库】百合兑换券[属性:9]
	tValDayFW_Exchange[2]["DeleteItem"][3]["ItemNum"] = 2
	tValDayFW_Exchange[2]["DeleteItem"][4] = {}
	tValDayFW_Exchange[2]["DeleteItem"][4]["Id"] = 3304134 -- 【库】玫瑰兑换券[属性:9]
	tValDayFW_Exchange[2]["DeleteItem"][4]["ItemNum"] = 2
	tValDayFW_Exchange[2]["RewardItem"] = {}
	tValDayFW_Exchange[2]["RewardItem"][1] = {}
	tValDayFW_Exchange[2]["RewardItem"][1]["Id"] = 3315299 -- 巧克力豆[3315299][属性:9][叠加:10000][金币:0], 【表格】巧克力豆
	tValDayFW_Exchange[2]["RewardItem"][1]["Attr"] = "0 %s" -- 巧克力豆*1
	tValDayFW_Exchange[2]["RewardEffect"] = {}
	tValDayFW_Exchange[2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValDayFW_Exchange[2]["RewardEffect"]["Effect"] = "angelwing"
	
local tValDayFW_Awake = {}
	-- ===甜心巧克力唤醒它
	-- ===索引: tValDayFW_Awake[3600215]
	-- ===删除:3600215,1
	tValDayFW_Awake[3600215] = {}
	tValDayFW_Awake[3600215]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tValDayFW_Awake[3600215]["DeleteItem"] = {}
	tValDayFW_Awake[3600215]["DeleteItem"][1] = {}
	tValDayFW_Awake[3600215]["DeleteItem"][1]["Id"] = 3600215 -- 【库】甜心巧克力[属性:137]
	tValDayFW_Awake[3600215]["LogId"] = 12001834
	-- 爱情之心-- 【必给】
	tValDayFW_Awake[3600215][1] = {}
	tValDayFW_Awake[3600215][1]["RandomItemChanceType"] = 1
	tValDayFW_Awake[3600215][1]["RewardItem"] = {}
	tValDayFW_Awake[3600215][1]["RewardItem"][1] = {}
	tValDayFW_Awake[3600215][1]["RewardItem"][1]["Id"] = 3327493 -- 真爱之心[3327493][属性:9][叠加:10000][金币:0], 【表格】爱情之心
	tValDayFW_Awake[3600215][1]["RewardItem"][1]["Attr"] = "0 50" -- 真爱之心*50（[错误]物品数量超10个）
	tValDayFW_Awake[3600215][1]["RewardItem"][1]["Num"] = 50
	tValDayFW_Awake[3600215][1]["RewardEffect"] = {}
	tValDayFW_Awake[3600215][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValDayFW_Awake[3600215][1]["RewardEffect"]["Effect"] = "angelwing"
			-- 不重置, 可获得99999999个
	tValDayFW_Awake[3600215][1]["EventType"] = 214
	tValDayFW_Awake[3600215][1]["DataType"] = 31
	tValDayFW_Awake[3600215][1]["RewardData"] = 99999999
	-- 赤炼石+5 - 1.5%
	tValDayFW_Awake[3600215][2] = {}
	tValDayFW_Awake[3600215][2]["RandomItemChanceType"] = 2
	tValDayFW_Awake[3600215][2]["ItemChance"] = 150
	tValDayFW_Awake[3600215][2]["RewardItem"] = {}
	tValDayFW_Awake[3600215][2]["RewardItem"][1] = {}
	tValDayFW_Awake[3600215][2]["RewardItem"][1]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5
	tValDayFW_Awake[3600215][2]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+5赤炼石（赠）*1
	tValDayFW_Awake[3600215][2]["RewardEffect"] = {}
	tValDayFW_Awake[3600215][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValDayFW_Awake[3600215][2]["RewardEffect"]["Effect"] = "angelwing"
	tValDayFW_Awake[3600215][2]["RewardBroadCast"] = tValDayFW_Text["RewardBroadCast"][2] -- 全服公告
	tValDayFW_Awake[3600215][2]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 晶莹星陨石 - 1%
	tValDayFW_Awake[3600215][3] = {}
	tValDayFW_Awake[3600215][3]["RandomItemChanceType"] = 2
	tValDayFW_Awake[3600215][3]["ItemChance"] = 100
	tValDayFW_Awake[3600215][3]["RewardItem"] = {}
	tValDayFW_Awake[3600215][3]["RewardItem"][1] = {}
	tValDayFW_Awake[3600215][3]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tValDayFW_Awake[3600215][3]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
	tValDayFW_Awake[3600215][3]["RewardEffect"] = {}
	tValDayFW_Awake[3600215][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValDayFW_Awake[3600215][3]["RewardEffect"]["Effect"] = "angelwing"
	tValDayFW_Awake[3600215][3]["RewardBroadCast"] = tValDayFW_Text["RewardBroadCast"][3] -- 全服公告
	tValDayFW_Awake[3600215][3]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 3000气力值 - 1%
	tValDayFW_Awake[3600215][4] = {}
	tValDayFW_Awake[3600215][4]["RandomItemChanceType"] = 2
	tValDayFW_Awake[3600215][4]["ItemChance"] = 100
	tValDayFW_Awake[3600215][4]["RewardItem"] = {}
	tValDayFW_Awake[3600215][4]["RewardItem"][1] = {}
	tValDayFW_Awake[3600215][4]["RewardItem"][1]["Id"] = 3304333 -- 3000气力值极运包[3304333][属性:9][叠加:10000][金币:0], 【表格】3000气力值
	tValDayFW_Awake[3600215][4]["RewardItem"][1]["Attr"] = "0 1" -- 3000气力值极运包*1
	tValDayFW_Awake[3600215][4]["RewardEffect"] = {}
	tValDayFW_Awake[3600215][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValDayFW_Awake[3600215][4]["RewardEffect"]["Effect"] = "angelwing"
	tValDayFW_Awake[3600215][4]["RewardBroadCast"] = tValDayFW_Text["RewardBroadCast"][4] -- 全服公告
	tValDayFW_Awake[3600215][4]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 天灵果 - 0.5%
	tValDayFW_Awake[3600215][5] = {}
	tValDayFW_Awake[3600215][5]["RandomItemChanceType"] = 2
	tValDayFW_Awake[3600215][5]["ItemChance"] = 50
	tValDayFW_Awake[3600215][5]["RewardItem"] = {}
	tValDayFW_Awake[3600215][5]["RewardItem"][1] = {}
	tValDayFW_Awake[3600215][5]["RewardItem"][1]["Id"] = 3009103 -- 天灵果[3009103][属性:9][叠加:10000][金币:0], 【表格】天灵果
	tValDayFW_Awake[3600215][5]["RewardItem"][1]["Attr"] = "0 1" -- 天灵果*1
	tValDayFW_Awake[3600215][5]["RewardEffect"] = {}
	tValDayFW_Awake[3600215][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValDayFW_Awake[3600215][5]["RewardEffect"]["Effect"] = "angelwing"
	tValDayFW_Awake[3600215][5]["RewardBroadCast"] = tValDayFW_Text["RewardBroadCast"][5] -- 全服公告
	tValDayFW_Awake[3600215][5]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 黄色神纹随机包 - 1%
	tValDayFW_Awake[3600215][6] = {}
	tValDayFW_Awake[3600215][6]["RandomItemChanceType"] = 2
	tValDayFW_Awake[3600215][6]["ItemChance"] = 100
	tValDayFW_Awake[3600215][6]["RewardItem"] = {}
	tValDayFW_Awake[3600215][6]["RewardItem"][1] = {}
	tValDayFW_Awake[3600215][6]["RewardItem"][1]["Id"] = 3306919 -- 黄色神纹随机包[3306919][属性:9][叠加:0][金币:0], 【表格】黄色神纹随机包
	tValDayFW_Awake[3600215][6]["RewardItem"][1]["Attr"] = "0 1" -- 黄色神纹随机包*1
	tValDayFW_Awake[3600215][6]["RewardEffect"] = {}
	tValDayFW_Awake[3600215][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValDayFW_Awake[3600215][6]["RewardEffect"]["Effect"] = "angelwing"
	tValDayFW_Awake[3600215][6]["RewardBroadCast"] = tValDayFW_Text["RewardBroadCast"][6] -- 全服公告
	tValDayFW_Awake[3600215][6]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 无
	tValDayFW_Awake[3600215][7] = {}
	tValDayFW_Awake[3600215][7]["RandomItemChanceType"] = 2
	tValDayFW_Awake[3600215][7]["ItemChance"] = 9500
	tValDayFW_Awake[3600215][7]["RewardItem"] = {}


	tValDayFW_Awake[3600216] = {}
	-- ===浓情巧克力唤醒它
	-- ===索引: tValDayFW_Awake[3600216]
	-- ===删除:3600216,1
	tValDayFW_Awake[3600216]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tValDayFW_Awake[3600216]["DeleteItem"] = {}
	tValDayFW_Awake[3600216]["DeleteItem"][1] = {}
	tValDayFW_Awake[3600216]["DeleteItem"][1]["Id"] = 3315299 -- 【库】浓情巧克力[属性:137]
	tValDayFW_Awake[3600216]["DeleteItem"][1]["ItemNum"] = 100 -- 【库】浓情巧克力[属性:137]
	tValDayFW_Awake[3600216]["LogId"] = 12001834
	-- 爱情之心-- 【必给】
	tValDayFW_Awake[3600216][1] = {}
	tValDayFW_Awake[3600216][1]["RandomItemChanceType"] = 1
	tValDayFW_Awake[3600216][1]["RewardItem"] = {}
	tValDayFW_Awake[3600216][1]["RewardItem"][1] = {}
	tValDayFW_Awake[3600216][1]["RewardItem"][1]["Id"] = 3327493 -- 真爱之心[3327493][属性:9][叠加:10000][金币:0], 【表格】爱情之心
	tValDayFW_Awake[3600216][1]["RewardItem"][1]["Attr"] = "0 300" -- 真爱之心*300（[错误]物品数量超10个）
	tValDayFW_Awake[3600216][1]["RewardItem"][1]["Num"] = 300
	tValDayFW_Awake[3600216][1]["RewardItem"][2] = {}
	tValDayFW_Awake[3600216][1]["RewardItem"][2]["Id"] = 3600241 -- 真爱之心[3327493][属性:9][叠加:10000][金币:0], 【表格】爱情之心
	tValDayFW_Awake[3600216][1]["RewardItem"][2]["Attr"] = "0 1" -- 真爱之心*300（[错误]物品数量超10个）
	tValDayFW_Awake[3600216][1]["RewardItem"][2]["Num"] = 1
	tValDayFW_Awake[3600216][1]["RewardEffect"] = {}
	tValDayFW_Awake[3600216][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValDayFW_Awake[3600216][1]["RewardEffect"]["Effect"] = "angelwing"
			-- 不重置, 可获得99999999个
	tValDayFW_Awake[3600216][1]["EventType"] = 214
	tValDayFW_Awake[3600216][1]["DataType"] = 31
	tValDayFW_Awake[3600216][1]["RewardData"] = 99999999
	-- 赤炼石+5 - 1.5%
	tValDayFW_Awake[3600216][2] = {}
	tValDayFW_Awake[3600216][2]["RandomItemChanceType"] = 2
	tValDayFW_Awake[3600216][2]["ItemChance"] = 150
	tValDayFW_Awake[3600216][2]["RewardItem"] = {}
	tValDayFW_Awake[3600216][2]["RewardItem"][1] = {}
	tValDayFW_Awake[3600216][2]["RewardItem"][1]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5
	tValDayFW_Awake[3600216][2]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+5赤炼石（赠）*1
	tValDayFW_Awake[3600216][2]["RewardEffect"] = {}
	tValDayFW_Awake[3600216][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValDayFW_Awake[3600216][2]["RewardEffect"]["Effect"] = "angelwing"
	tValDayFW_Awake[3600216][2]["RewardBroadCast"] = tValDayFW_Text["RewardBroadCast"][2] -- 全服公告
	tValDayFW_Awake[3600216][2]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 晶莹星陨石 - 1%
	tValDayFW_Awake[3600216][3] = {}
	tValDayFW_Awake[3600216][3]["RandomItemChanceType"] = 2
	tValDayFW_Awake[3600216][3]["ItemChance"] = 100
	tValDayFW_Awake[3600216][3]["RewardItem"] = {}
	tValDayFW_Awake[3600216][3]["RewardItem"][1] = {}
	tValDayFW_Awake[3600216][3]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tValDayFW_Awake[3600216][3]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
	tValDayFW_Awake[3600216][3]["RewardEffect"] = {}
	tValDayFW_Awake[3600216][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValDayFW_Awake[3600216][3]["RewardEffect"]["Effect"] = "angelwing"
	tValDayFW_Awake[3600216][3]["RewardBroadCast"] = tValDayFW_Text["RewardBroadCast"][3] -- 全服公告
	tValDayFW_Awake[3600216][3]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 3000气力值 - 1%
	tValDayFW_Awake[3600216][4] = {}
	tValDayFW_Awake[3600216][4]["RandomItemChanceType"] = 2
	tValDayFW_Awake[3600216][4]["ItemChance"] = 100
	tValDayFW_Awake[3600216][4]["RewardItem"] = {}
	tValDayFW_Awake[3600216][4]["RewardItem"][1] = {}
	tValDayFW_Awake[3600216][4]["RewardItem"][1]["Id"] = 3304333 -- 3000气力值极运包[3304333][属性:9][叠加:10000][金币:0], 【表格】3000气力值
	tValDayFW_Awake[3600216][4]["RewardItem"][1]["Attr"] = "0 1" -- 3000气力值极运包*1
	tValDayFW_Awake[3600216][4]["RewardEffect"] = {}
	tValDayFW_Awake[3600216][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValDayFW_Awake[3600216][4]["RewardEffect"]["Effect"] = "angelwing"
	tValDayFW_Awake[3600216][4]["RewardBroadCast"] = tValDayFW_Text["RewardBroadCast"][4] -- 全服公告
	tValDayFW_Awake[3600216][4]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 天灵果 - 0.5%
	tValDayFW_Awake[3600216][5] = {}
	tValDayFW_Awake[3600216][5]["RandomItemChanceType"] = 2
	tValDayFW_Awake[3600216][5]["ItemChance"] = 50
	tValDayFW_Awake[3600216][5]["RewardItem"] = {}
	tValDayFW_Awake[3600216][5]["RewardItem"][1] = {}
	tValDayFW_Awake[3600216][5]["RewardItem"][1]["Id"] = 3009103 -- 天灵果[3009103][属性:9][叠加:10000][金币:0], 【表格】天灵果
	tValDayFW_Awake[3600216][5]["RewardItem"][1]["Attr"] = "0 1" -- 天灵果*1
	tValDayFW_Awake[3600216][5]["RewardEffect"] = {}
	tValDayFW_Awake[3600216][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValDayFW_Awake[3600216][5]["RewardEffect"]["Effect"] = "angelwing"
	tValDayFW_Awake[3600216][5]["RewardBroadCast"] = tValDayFW_Text["RewardBroadCast"][5] -- 全服公告
	tValDayFW_Awake[3600216][5]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 黄色神纹随机包 - 1%
	tValDayFW_Awake[3600216][6] = {}
	tValDayFW_Awake[3600216][6]["RandomItemChanceType"] = 2
	tValDayFW_Awake[3600216][6]["ItemChance"] = 100
	tValDayFW_Awake[3600216][6]["RewardItem"] = {}
	tValDayFW_Awake[3600216][6]["RewardItem"][1] = {}
	tValDayFW_Awake[3600216][6]["RewardItem"][1]["Id"] = 3306919 -- 黄色神纹随机包[3306919][属性:9][叠加:0][金币:0], 【表格】黄色神纹随机包
	tValDayFW_Awake[3600216][6]["RewardItem"][1]["Attr"] = "0 1" -- 黄色神纹随机包*1
	tValDayFW_Awake[3600216][6]["RewardEffect"] = {}
	tValDayFW_Awake[3600216][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValDayFW_Awake[3600216][6]["RewardEffect"]["Effect"] = "angelwing"
	tValDayFW_Awake[3600216][6]["RewardBroadCast"] = tValDayFW_Text["RewardBroadCast"][6] -- 全服公告
	tValDayFW_Awake[3600216][6]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 无
	tValDayFW_Awake[3600216][7] = {}
	tValDayFW_Awake[3600216][7]["RandomItemChanceType"] = 2
	tValDayFW_Awake[3600216][7]["ItemChance"] = 9500
	tValDayFW_Awake[3600216][7]["RewardItem"] = {}


	tValDayFW_Awake[3600217] = {}
	-- ===真爱巧克力唤醒它
	-- ===索引: tValDayFW_Awake[3600217]
	-- ===删除:3600217,1
	tValDayFW_Awake[3600217]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tValDayFW_Awake[3600217]["DeleteItem"] = {}
	tValDayFW_Awake[3600217]["DeleteItem"][1] = {}
	tValDayFW_Awake[3600217]["DeleteItem"][1]["Id"] = 3600217 -- 【库】真爱巧克力[属性:137]
	tValDayFW_Awake[3600217]["LogId"] = 12001834
	-- 爱情之心-- 【必给】
	tValDayFW_Awake[3600217][1] = {}
	tValDayFW_Awake[3600217][1]["RandomItemChanceType"] = 1
	tValDayFW_Awake[3600217][1]["RewardItem"] = {}
	tValDayFW_Awake[3600217][1]["RewardItem"][1] = {}
	tValDayFW_Awake[3600217][1]["RewardItem"][1]["Id"] = 3327493 -- 真爱之心[3327493][属性:9][叠加:10000][金币:0], 【表格】爱情之心
	tValDayFW_Awake[3600217][1]["RewardItem"][1]["Attr"] = "0 1500" -- 真爱之心*1500（[错误]物品数量超10个）
	tValDayFW_Awake[3600217][1]["RewardItem"][1]["Num"] = 1500
	tValDayFW_Awake[3600217][1]["RewardEffect"] = {}
	tValDayFW_Awake[3600217][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValDayFW_Awake[3600217][1]["RewardEffect"]["Effect"] = "angelwing"
			-- 不重置, 可获得99999999个
	tValDayFW_Awake[3600217][1]["EventType"] = 214
	tValDayFW_Awake[3600217][1]["DataType"] = 31
	tValDayFW_Awake[3600217][1]["RewardData"] = 99999999
	-- 赤炼石+5 - 1.5%
	tValDayFW_Awake[3600217][2] = {}
	tValDayFW_Awake[3600217][2]["RandomItemChanceType"] = 2
	tValDayFW_Awake[3600217][2]["ItemChance"] = 150
	tValDayFW_Awake[3600217][2]["RewardItem"] = {}
	tValDayFW_Awake[3600217][2]["RewardItem"][1] = {}
	tValDayFW_Awake[3600217][2]["RewardItem"][1]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5
	tValDayFW_Awake[3600217][2]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+5赤炼石（赠）*1
	tValDayFW_Awake[3600217][2]["RewardEffect"] = {}
	tValDayFW_Awake[3600217][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValDayFW_Awake[3600217][2]["RewardEffect"]["Effect"] = "angelwing"
	tValDayFW_Awake[3600217][2]["RewardBroadCast"] = tValDayFW_Text["RewardBroadCast"][2] -- 全服公告
	tValDayFW_Awake[3600217][2]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 晶莹星陨石 - 1%
	tValDayFW_Awake[3600217][3] = {}
	tValDayFW_Awake[3600217][3]["RandomItemChanceType"] = 2
	tValDayFW_Awake[3600217][3]["ItemChance"] = 100
	tValDayFW_Awake[3600217][3]["RewardItem"] = {}
	tValDayFW_Awake[3600217][3]["RewardItem"][1] = {}
	tValDayFW_Awake[3600217][3]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tValDayFW_Awake[3600217][3]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
	tValDayFW_Awake[3600217][3]["RewardEffect"] = {}
	tValDayFW_Awake[3600217][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValDayFW_Awake[3600217][3]["RewardEffect"]["Effect"] = "angelwing"
	tValDayFW_Awake[3600217][3]["RewardBroadCast"] = tValDayFW_Text["RewardBroadCast"][3] -- 全服公告
	tValDayFW_Awake[3600217][3]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 3000气力值 - 1%
	tValDayFW_Awake[3600217][4] = {}
	tValDayFW_Awake[3600217][4]["RandomItemChanceType"] = 2
	tValDayFW_Awake[3600217][4]["ItemChance"] = 100
	tValDayFW_Awake[3600217][4]["RewardItem"] = {}
	tValDayFW_Awake[3600217][4]["RewardItem"][1] = {}
	tValDayFW_Awake[3600217][4]["RewardItem"][1]["Id"] = 3304333 -- 3000气力值极运包[3304333][属性:9][叠加:10000][金币:0], 【表格】3000气力值
	tValDayFW_Awake[3600217][4]["RewardItem"][1]["Attr"] = "0 1" -- 3000气力值极运包*1
	tValDayFW_Awake[3600217][4]["RewardEffect"] = {}
	tValDayFW_Awake[3600217][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValDayFW_Awake[3600217][4]["RewardEffect"]["Effect"] = "angelwing"
	tValDayFW_Awake[3600217][4]["RewardBroadCast"] = tValDayFW_Text["RewardBroadCast"][4] -- 全服公告
	tValDayFW_Awake[3600217][4]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 天灵果 - 0.5%
	tValDayFW_Awake[3600217][5] = {}
	tValDayFW_Awake[3600217][5]["RandomItemChanceType"] = 2
	tValDayFW_Awake[3600217][5]["ItemChance"] = 50
	tValDayFW_Awake[3600217][5]["RewardItem"] = {}
	tValDayFW_Awake[3600217][5]["RewardItem"][1] = {}
	tValDayFW_Awake[3600217][5]["RewardItem"][1]["Id"] = 3009103 -- 天灵果[3009103][属性:9][叠加:10000][金币:0], 【表格】天灵果
	tValDayFW_Awake[3600217][5]["RewardItem"][1]["Attr"] = "0 1" -- 天灵果*1
	tValDayFW_Awake[3600217][5]["RewardEffect"] = {}
	tValDayFW_Awake[3600217][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValDayFW_Awake[3600217][5]["RewardEffect"]["Effect"] = "angelwing"
	tValDayFW_Awake[3600217][5]["RewardBroadCast"] = tValDayFW_Text["RewardBroadCast"][5] -- 全服公告
	tValDayFW_Awake[3600217][5]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 黄色神纹随机包 - 1%
	tValDayFW_Awake[3600217][6] = {}
	tValDayFW_Awake[3600217][6]["RandomItemChanceType"] = 2
	tValDayFW_Awake[3600217][6]["ItemChance"] = 100
	tValDayFW_Awake[3600217][6]["RewardItem"] = {}
	tValDayFW_Awake[3600217][6]["RewardItem"][1] = {}
	tValDayFW_Awake[3600217][6]["RewardItem"][1]["Id"] = 3306919 -- 黄色神纹随机包[3306919][属性:9][叠加:0][金币:0], 【表格】黄色神纹随机包
	tValDayFW_Awake[3600217][6]["RewardItem"][1]["Attr"] = "0 1" -- 黄色神纹随机包*1
	tValDayFW_Awake[3600217][6]["RewardEffect"] = {}
	tValDayFW_Awake[3600217][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValDayFW_Awake[3600217][6]["RewardEffect"]["Effect"] = "angelwing"
	tValDayFW_Awake[3600217][6]["RewardBroadCast"] = tValDayFW_Text["RewardBroadCast"][6] -- 全服公告
	tValDayFW_Awake[3600217][6]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 无
	tValDayFW_Awake[3600217][7] = {}
	tValDayFW_Awake[3600217][7]["RandomItemChanceType"] = 2
	tValDayFW_Awake[3600217][7]["ItemChance"] = 9500
	tValDayFW_Awake[3600217][7]["RewardItem"] = {}
	
local tValDayFW_MakeAllCho = {}
	-- ===一键制作巧克力
	-- ===索引: tValDayFW_MakeAllCho
	-- ===删除:3315299,50
	tValDayFW_MakeAllCho["LogId"] = 12001834
	tValDayFW_MakeAllCho["DeleteItem"] = {}
	tValDayFW_MakeAllCho["DeleteItem"][1] = {}
	tValDayFW_MakeAllCho["DeleteItem"][1]["Id"] = 3315299 -- 【库】巧克力豆[属性:9]
	tValDayFW_MakeAllCho["DeleteItem"][1]["ItemNum"] = 50
	tValDayFW_MakeAllCho["RewardItem"] = {}
	tValDayFW_MakeAllCho["RewardItem"][1] = {}
	tValDayFW_MakeAllCho["RewardItem"][1]["Id"] = 3600215 -- 甜心巧克力[3600215][属性:137][叠加:10000][金币:0], 【表格】甜心巧克力
	tValDayFW_MakeAllCho["RewardItem"][1]["Attr"] = "0 %s" -- 甜心巧克力*1
	tValDayFW_MakeAllCho["RewardItem"][2] = {}
	tValDayFW_MakeAllCho["RewardItem"][2]["Id"] = 3600216 -- 浓情巧克力[3600216][属性:137][叠加:10000][金币:0], 【表格】浓情巧克力
	tValDayFW_MakeAllCho["RewardItem"][2]["Attr"] = "0 %s" -- 浓情巧克力*1
	-- tValDayFW_MakeAllCho["RewardItem"][3] = {}
	-- tValDayFW_MakeAllCho["RewardItem"][3]["Id"] = 3600217 -- 真爱巧克力[3600217][属性:137][叠加:10000][金币:0], 【表格】真爱巧克力
	-- tValDayFW_MakeAllCho["RewardItem"][3]["Attr"] = "0 %s" -- 真爱巧克力*1
	tValDayFW_MakeAllCho["RewardEffect"] = {}
	tValDayFW_MakeAllCho["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValDayFW_MakeAllCho["RewardEffect"]["Effect"] = "angelwing"
	
local tValDayFW_MakeCho = {}
	-- ===制作一个甜心巧克力
	-- ===索引: tValDayFW_MakeCho[3600215][1]
	-- ===删除:3315299,10
	tValDayFW_MakeCho[3600215] = {}
	tValDayFW_MakeCho[3600215][1] = {}
	tValDayFW_MakeCho[3600215][1]["NoItem"] = tValDayFW_Text["NoItem"]
	tValDayFW_MakeCho[3600215][1]["LogId"] = 12001834
	tValDayFW_MakeCho[3600215][1]["DeleteItem"] = {}
	tValDayFW_MakeCho[3600215][1]["DeleteItem"][1] = {}
	tValDayFW_MakeCho[3600215][1]["DeleteItem"][1]["Id"] = 3315299 -- 【库】巧克力碎片[属性:9]
	tValDayFW_MakeCho[3600215][1]["DeleteItem"][1]["ItemNum"] = 10
	tValDayFW_MakeCho[3600215][1]["RewardItem"] = {}
	tValDayFW_MakeCho[3600215][1]["RewardItem"][1] = {}
	tValDayFW_MakeCho[3600215][1]["RewardItem"][1]["Id"] = 3600215 -- 甜心巧克力[3600215][属性:137][叠加:10000][金币:0], 【表格】甜心巧克力
	tValDayFW_MakeCho[3600215][1]["RewardItem"][1]["Attr"] = "0 1" -- 甜心巧克力*1
	tValDayFW_MakeCho[3600215][1]["RewardEffect"] = {}
	tValDayFW_MakeCho[3600215][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValDayFW_MakeCho[3600215][1]["RewardEffect"]["Effect"] = "angelwing"


	tValDayFW_MakeCho[3600215][10] = {}
	-- ===制作十个甜心巧克力
	-- ===索引: tValDayFW_MakeCho[3600215][10]
	-- ===删除:3315299,100
	tValDayFW_MakeCho[3600215][10]["NoItem"] = tValDayFW_Text["NoItem"]
	tValDayFW_MakeCho[3600215][10]["LogId"] = 12001834
	tValDayFW_MakeCho[3600215][10]["DeleteItem"] = {}
	tValDayFW_MakeCho[3600215][10]["DeleteItem"][1] = {}
	tValDayFW_MakeCho[3600215][10]["DeleteItem"][1]["Id"] = 3315299 -- 【库】巧克力碎片[属性:9]
	tValDayFW_MakeCho[3600215][10]["DeleteItem"][1]["ItemNum"] = 100
	tValDayFW_MakeCho[3600215][10]["RewardItem"] = {}
	tValDayFW_MakeCho[3600215][10]["RewardItem"][1] = {}
	tValDayFW_MakeCho[3600215][10]["RewardItem"][1]["Id"] = 3600215 -- 甜心巧克力[3600215][属性:137][叠加:10000][金币:0], 【表格】甜心巧克力
	tValDayFW_MakeCho[3600215][10]["RewardItem"][1]["Attr"] = "0 10" -- 甜心巧克力*10
	tValDayFW_MakeCho[3600215][10]["RewardEffect"] = {}
	tValDayFW_MakeCho[3600215][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValDayFW_MakeCho[3600215][10]["RewardEffect"]["Effect"] = "angelwing"


	tValDayFW_MakeCho[3600216] = {}
	-- ===制作一个浓情巧克力
	-- ===索引: tValDayFW_MakeCho[3600216][1]
	-- ===删除:3315299,100
	tValDayFW_MakeCho[3600216][1] = {}
	tValDayFW_MakeCho[3600216][1]["NoItem"] = tValDayFW_Text["NoItem"]
	tValDayFW_MakeCho[3600216][1]["LogId"] = 12001834
	tValDayFW_MakeCho[3600216][1]["DeleteItem"] = {}
	tValDayFW_MakeCho[3600216][1]["DeleteItem"][1] = {}
	tValDayFW_MakeCho[3600216][1]["DeleteItem"][1]["Id"] = 3315299 -- 【库】巧克力碎片[属性:9]
	tValDayFW_MakeCho[3600216][1]["DeleteItem"][1]["ItemNum"] = 100
	tValDayFW_MakeCho[3600216][1]["RewardItem"] = {}
	tValDayFW_MakeCho[3600216][1]["RewardItem"][1] = {}
	tValDayFW_MakeCho[3600216][1]["RewardItem"][1]["Id"] = 3600216 -- 浓情巧克力[3600216][属性:137][叠加:10000][金币:0], 【表格】浓情巧克力
	tValDayFW_MakeCho[3600216][1]["RewardItem"][1]["Attr"] = "0 1" -- 浓情巧克力*1
	tValDayFW_MakeCho[3600216][1]["RewardEffect"] = {}
	tValDayFW_MakeCho[3600216][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValDayFW_MakeCho[3600216][1]["RewardEffect"]["Effect"] = "angelwing"


	tValDayFW_MakeCho[3600216][10] = {}
	-- ===制作十个浓情巧克力
	-- ===索引: tValDayFW_MakeCho[3600216][10]
	-- ===删除:3315299,1000
	tValDayFW_MakeCho[3600216][10]["NoItem"] = tValDayFW_Text["NoItem"]
	tValDayFW_MakeCho[3600216][10]["LogId"] = 12001834
	tValDayFW_MakeCho[3600216][10]["DeleteItem"] = {}
	tValDayFW_MakeCho[3600216][10]["DeleteItem"][1] = {}
	tValDayFW_MakeCho[3600216][10]["DeleteItem"][1]["Id"] = 3315299 -- 【库】巧克力碎片[属性:9]
	tValDayFW_MakeCho[3600216][10]["DeleteItem"][1]["ItemNum"] = 1000
	tValDayFW_MakeCho[3600216][10]["RewardItem"] = {}
	tValDayFW_MakeCho[3600216][10]["RewardItem"][1] = {}
	tValDayFW_MakeCho[3600216][10]["RewardItem"][1]["Id"] = 3600216 -- 浓情巧克力[3600216][属性:137][叠加:10000][金币:0], 【表格】浓情巧克力
	tValDayFW_MakeCho[3600216][10]["RewardItem"][1]["Attr"] = "0 10" -- 浓情巧克力*10
	tValDayFW_MakeCho[3600216][10]["RewardEffect"] = {}
	tValDayFW_MakeCho[3600216][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValDayFW_MakeCho[3600216][10]["RewardEffect"]["Effect"] = "angelwing"


	tValDayFW_MakeCho[3600217] = {}
	-- ===制作一个真爱巧克力
	-- ===索引: tValDayFW_MakeCho[3600217][1]
	-- ===删除:3315299,1000
	tValDayFW_MakeCho[3600217][1] = {}
	tValDayFW_MakeCho[3600217][1]["NoItem"] = tValDayFW_Text["NoItem"]
	tValDayFW_MakeCho[3600217][1]["LogId"] = 12001834
	tValDayFW_MakeCho[3600217][1]["DeleteItem"] = {}
	tValDayFW_MakeCho[3600217][1]["DeleteItem"][1] = {}
	tValDayFW_MakeCho[3600217][1]["DeleteItem"][1]["Id"] = 3315299 -- 【库】巧克力碎片[属性:9]
	tValDayFW_MakeCho[3600217][1]["DeleteItem"][1]["ItemNum"] = 1000
	tValDayFW_MakeCho[3600217][1]["RewardItem"] = {}
	tValDayFW_MakeCho[3600217][1]["RewardItem"][1] = {}
	tValDayFW_MakeCho[3600217][1]["RewardItem"][1]["Id"] = 3600217 -- 真爱巧克力[3600217][属性:137][叠加:10000][金币:0], 【表格】真爱巧克力
	tValDayFW_MakeCho[3600217][1]["RewardItem"][1]["Attr"] = "0 1" -- 真爱巧克力*1
	tValDayFW_MakeCho[3600217][1]["RewardEffect"] = {}
	tValDayFW_MakeCho[3600217][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValDayFW_MakeCho[3600217][1]["RewardEffect"]["Effect"] = "angelwing"


	tValDayFW_MakeCho[3600217][10] = {}
	-- ===制作十个真爱巧克力
	-- ===索引: tValDayFW_MakeCho[3600217][10]
	-- ===删除:3315299,10000
	tValDayFW_MakeCho[3600217][10]["NoItem"] = tValDayFW_Text["NoItem"]
	tValDayFW_MakeCho[3600217][10]["LogId"] = 12001834
	tValDayFW_MakeCho[3600217][10]["DeleteItem"] = {}
	tValDayFW_MakeCho[3600217][10]["DeleteItem"][1] = {}
	tValDayFW_MakeCho[3600217][10]["DeleteItem"][1]["Id"] = 3315299 -- 【库】巧克力碎片[属性:9]
	tValDayFW_MakeCho[3600217][10]["DeleteItem"][1]["ItemNum"] = 10000
	tValDayFW_MakeCho[3600217][10]["RewardItem"] = {}
	tValDayFW_MakeCho[3600217][10]["RewardItem"][1] = {}
	tValDayFW_MakeCho[3600217][10]["RewardItem"][1]["Id"] = 3600217 -- 真爱巧克力[3600217][属性:137][叠加:10000][金币:0], 【表格】真爱巧克力
	tValDayFW_MakeCho[3600217][10]["RewardItem"][1]["Attr"] = "0 10" -- 真爱巧克力*10
	tValDayFW_MakeCho[3600217][10]["RewardEffect"] = {}
	tValDayFW_MakeCho[3600217][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValDayFW_MakeCho[3600217][10]["RewardEffect"]["Effect"] = "angelwing"
	
local tValDayFW_EatCho = {}
	-- ===使用甜心巧克力1个
	-- ===索引: tValDayFW_EatCho[3600215]
	-- ===删除:3600215,1
	tValDayFW_EatCho[3600215] = {}
	tValDayFW_EatCho[3600215]["LogId"] = 12001834
	tValDayFW_EatCho[3600215]["DeleteItem"] = {}
	tValDayFW_EatCho[3600215]["DeleteItem"][1] = {}
	tValDayFW_EatCho[3600215]["DeleteItem"][1]["Id"] = 3600215 -- 【库】甜心巧克力[属性:137]
	-- tValDayFW_EatCho[3600215]["DeleteItem"][1]["ItemNum"] = 1
	tValDayFW_EatCho[3600215]["RewardItem"] = {}
	tValDayFW_EatCho[3600215]["RewardItem"][1] = {}
	tValDayFW_EatCho[3600215]["RewardItem"][1]["Id"] = 3327493 -- 真爱之心[3327493][属性:9][叠加:10000][金币:0], 【表格】爱情之心
	tValDayFW_EatCho[3600215]["RewardItem"][1]["Attr"] = "0 %s" -- 真爱之心*10
	tValDayFW_EatCho[3600215]["RewardItem"][1]["Num"] = 10
	tValDayFW_EatCho[3600215]["RewardEffect"] = {}
	tValDayFW_EatCho[3600215]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValDayFW_EatCho[3600215]["RewardEffect"]["Effect"] = "NEW-flower-g-1"


	tValDayFW_EatCho[3600216] = {}
	-- ===使用浓情巧克力1个
	-- ===索引: tValDayFW_EatCho[3600216]
	-- ===删除:3600216,1
	tValDayFW_EatCho[3600216]["LogId"] = 12001834
	tValDayFW_EatCho[3600216]["DeleteItem"] = {}
	tValDayFW_EatCho[3600216]["DeleteItem"][1] = {}
	tValDayFW_EatCho[3600216]["DeleteItem"][1]["Id"] = 3600216 -- 【库】浓情巧克力[属性:137]
	tValDayFW_EatCho[3600216]["RewardItem"] = {}
	tValDayFW_EatCho[3600216]["RewardItem"][1] = {}
	tValDayFW_EatCho[3600216]["RewardItem"][1]["Id"] = 3327493 -- 真爱之心[3327493][属性:9][叠加:10000][金币:0], 【表格】爱情之心
	tValDayFW_EatCho[3600216]["RewardItem"][1]["Attr"] = "0 %s" -- 真爱之心*100（[错误]物品数量超10个）
	tValDayFW_EatCho[3600216]["RewardItem"][1]["Num"] = 100
	tValDayFW_EatCho[3600216]["RewardEffect"] = {}
	tValDayFW_EatCho[3600216]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValDayFW_EatCho[3600216]["RewardEffect"]["Effect"] = "NEW-flower-g-1"


	tValDayFW_EatCho[3600217] = {}
	-- ===使用真爱巧克力1个
	-- ===索引: tValDayFW_EatCho[3600217]
	-- ===删除:3600217,1
	tValDayFW_EatCho[3600217]["LogId"] = 12001834
	tValDayFW_EatCho[3600217]["DeleteItem"] = {}
	tValDayFW_EatCho[3600217]["DeleteItem"][1] = {}
	tValDayFW_EatCho[3600217]["DeleteItem"][1]["Id"] = 3600217 -- 【库】真爱巧克力[属性:137]
	tValDayFW_EatCho[3600217]["RewardItem"] = {}
	tValDayFW_EatCho[3600217]["RewardItem"][1] = {}
	tValDayFW_EatCho[3600217]["RewardItem"][1]["Id"] = 3327493 -- 真爱之心[3327493][属性:9][叠加:10000][金币:0], 【表格】爱情之心
	tValDayFW_EatCho[3600217]["RewardItem"][1]["Attr"] = "0 %s" -- 真爱之心*1000（[错误]物品数量超10个）
	tValDayFW_EatCho[3600217]["RewardItem"][1]["Num"] = 1000
	tValDayFW_EatCho[3600217]["RewardEffect"] = {}
	tValDayFW_EatCho[3600217]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValDayFW_EatCho[3600217]["RewardEffect"]["Effect"] = "NEW-flower-g-1"


local tValDayFW_UpdateCho = {}
	-- ===甜心巧克力升级
	-- ===索引: tValDayFW_UpdateCho[3600215]
	-- ===删除:3600215,10
	tValDayFW_UpdateCho[3600215] = {}
	tValDayFW_UpdateCho[3600215]["LogId"] = 12001834
	tValDayFW_UpdateCho[3600215]["DeleteItem"] = {}
	tValDayFW_UpdateCho[3600215]["DeleteItem"][1] = {}
	tValDayFW_UpdateCho[3600215]["DeleteItem"][1]["Id"] = 3600215 -- 【库】甜心巧克力[属性:137]
	tValDayFW_UpdateCho[3600215]["DeleteItem"][1]["ItemNum"] = 10
	tValDayFW_UpdateCho[3600215]["RewardItem"] = {}
	tValDayFW_UpdateCho[3600215]["RewardItem"][1] = {}
	tValDayFW_UpdateCho[3600215]["RewardItem"][1]["Id"] = 3600216 -- 浓情巧克力[3600216][属性:137][叠加:10000][金币:0], 【表格】浓情巧克力
	tValDayFW_UpdateCho[3600215]["RewardItem"][1]["Attr"] = "0 %s" -- 浓情巧克力*1
	tValDayFW_UpdateCho[3600215]["RewardItem"][1]["Num"] = 1
	tValDayFW_UpdateCho[3600215]["RewardEffect"] = {}
	tValDayFW_UpdateCho[3600215]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValDayFW_UpdateCho[3600215]["RewardEffect"]["Effect"] = "angelwing"


	-- ===浓情巧克力升级
	-- ===索引: tValDayFW_UpdateCho[3600216]
	-- ===删除:3600216,10
	tValDayFW_UpdateCho[3600216] = {}
	tValDayFW_UpdateCho[3600216]["LogId"] = 12001834
	tValDayFW_UpdateCho[3600216]["DeleteItem"] = {}
	tValDayFW_UpdateCho[3600216]["DeleteItem"][1] = {}
	tValDayFW_UpdateCho[3600216]["DeleteItem"][1]["Id"] = 3600216 -- 【库】浓情巧克力[属性:137]
	tValDayFW_UpdateCho[3600216]["DeleteItem"][1]["ItemNum"] = 10
	tValDayFW_UpdateCho[3600216]["RewardItem"] = {}
	tValDayFW_UpdateCho[3600216]["RewardItem"][1] = {}
	tValDayFW_UpdateCho[3600216]["RewardItem"][1]["Id"] = 3600217 -- 真爱巧克力[3600217][属性:137][叠加:10000][金币:0], 【表格】真爱巧克力
	tValDayFW_UpdateCho[3600216]["RewardItem"][1]["Attr"] = "0 %s" -- 真爱巧克力*1
	tValDayFW_UpdateCho[3600216]["RewardItem"][1]["Num"] = 1
	tValDayFW_UpdateCho[3600216]["RewardEffect"] = {}
	tValDayFW_UpdateCho[3600216]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValDayFW_UpdateCho[3600216]["RewardEffect"]["Effect"] = "angelwing"

local tValDayFW_EatAllCho = {}
	-- ===一键消耗所有巧克力和巧克力豆
	-- ===索引: tValDayFW_EatAllCho
	-- ===删除:3600215,1
	-- ===删除:3600216,1
	-- ===删除:3600217,1
	-- ===删除:3315299,1
	tValDayFW_EatAllCho["LogId"] = 12001834
	tValDayFW_EatAllCho["DeleteItem"] = {}
	tValDayFW_EatAllCho["DeleteItem"][1] = {}
	tValDayFW_EatAllCho["DeleteItem"][1]["Id"] = 3600215 -- 【库】甜心巧克力[属性:137]
	-- tValDayFW_EatAllCho["DeleteItem"][1]["ItemNum"] = 1
	tValDayFW_EatAllCho["DeleteItem"][2] = {}
	tValDayFW_EatAllCho["DeleteItem"][2]["Id"] = 3600216 -- 【库】浓情巧克力[属性:137]
	tValDayFW_EatAllCho["DeleteItem"][3] = {}
	tValDayFW_EatAllCho["DeleteItem"][3]["Id"] = 3600217 -- 【库】真爱巧克力[属性:137]
	tValDayFW_EatAllCho["DeleteItem"][4] = {}
	tValDayFW_EatAllCho["DeleteItem"][4]["Id"] = 3315299 -- 【库】巧克力豆[属性:9]
	tValDayFW_EatAllCho["RewardItem"] = {}
	tValDayFW_EatAllCho["RewardItem"][1] = {}
	tValDayFW_EatAllCho["RewardItem"][1]["Id"] = 3327493 -- 真爱之心[3327493][属性:9][叠加:10000][金币:0], 【表格】爱情之心
	tValDayFW_EatAllCho["RewardItem"][1]["Attr"] = "0 %s"
	tValDayFW_EatAllCho["RewardEffect"] = {}
	tValDayFW_EatAllCho["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValDayFW_EatAllCho["RewardEffect"]["Effect"] = "angelwing"
	
local tValDayFW_FirstGetCho = {}
	-- ===首次对白获得
	-- ===索引: tValDayFW_FirstGetCho
	tValDayFW_FirstGetCho["LogId"] = 12001834
	tValDayFW_FirstGetCho["RewardItem"] = {}
	tValDayFW_FirstGetCho["RewardItem"][1] = {}
	tValDayFW_FirstGetCho["RewardItem"][1]["Id"] = 3315299 -- 巧克力[3315299][属性:137][叠加:10000][金币:0], 【表格】浓情巧克力
	tValDayFW_FirstGetCho["RewardItem"][1]["Attr"] = "0 100" -- 巧克力*100
			-- 不重置, 可获得1个
	tValDayFW_FirstGetCho["EventType"] = 214
	tValDayFW_FirstGetCho["DataType"] = 60
	tValDayFW_FirstGetCho["RewardData"] = 1
	tValDayFW_FirstGetCho["RewardEffect"] = {}
	tValDayFW_FirstGetCho["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValDayFW_FirstGetCho["RewardEffect"]["Effect"] = "angelwing"
	
local tValDayFW_EveryDayGetCho = {}
	-- ===每日首次寻找巧克力
	-- ===索引: tValDayFW_EveryDayGetCho
	tValDayFW_EveryDayGetCho["LogId"] = 12001834
	tValDayFW_EveryDayGetCho["RewardItem"] = {}
	tValDayFW_EveryDayGetCho["RewardItem"][1] = {}
	tValDayFW_EveryDayGetCho["RewardItem"][1]["Id"] = 3315299 -- 巧克力[3315299][属性:137][叠加:10000][金币:0], 【表格】浓情巧克力
	tValDayFW_EveryDayGetCho["RewardItem"][1]["Attr"] = "0 100" -- 巧克力*100
			-- 不重置, 可获得1个
	tValDayFW_EveryDayGetCho["EventType"] = 214
	tValDayFW_EveryDayGetCho["DataType"] = 55
	tValDayFW_EveryDayGetCho["RewardData"] = 1
	tValDayFW_EveryDayGetCho["RewardEffect"] = {}
	tValDayFW_EveryDayGetCho["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValDayFW_EveryDayGetCho["RewardEffect"]["Effect"] = "angelwing"
	
local tValDayFW_TimeOut = {}
	-- ===过期删除
	-- ===索引: tValDayFW_TimeOut[3600215]
	tValDayFW_TimeOut[3600215] = {}
	tValDayFW_TimeOut[3600215]["LogId"] = 12001834
	tValDayFW_TimeOut[3600215]["DeleteItem"] = {}
	tValDayFW_TimeOut[3600215]["DeleteItem"][1] = {}
	tValDayFW_TimeOut[3600215]["DeleteItem"][1]["Id"] = 3600215 -- 【库】甜心巧克力[属性:137]
	-- ===过期删除
	-- ===索引: tValDayFW_TimeOut[3600216]
	tValDayFW_TimeOut[3600216] = {}
	tValDayFW_TimeOut[3600216]["LogId"] = 12001834
	tValDayFW_TimeOut[3600216]["DeleteItem"] = {}
	tValDayFW_TimeOut[3600216]["DeleteItem"][1] = {}
	tValDayFW_TimeOut[3600216]["DeleteItem"][1]["Id"] = 3600216 -- 【库】甜心巧克力[属性:137]
	-- ===过期删除
	-- ===索引: tValDayFW_TimeOut[3600217]
	tValDayFW_TimeOut[3600217] = {}
	tValDayFW_TimeOut[3600217]["LogId"] = 12001834
	tValDayFW_TimeOut[3600217]["DeleteItem"] = {}
	tValDayFW_TimeOut[3600217]["DeleteItem"][1] = {}
	tValDayFW_TimeOut[3600217]["DeleteItem"][1]["Id"] = 3600217 -- 【库】甜心巧克力[属性:137]
	-- ===过期删除
	-- ===索引: tValDayFW_TimeOut[3315299]
	tValDayFW_TimeOut[3315299] = {}
	tValDayFW_TimeOut[3315299]["LogId"] = 12001834
	tValDayFW_TimeOut[3315299]["DeleteItem"] = {}
	tValDayFW_TimeOut[3315299]["DeleteItem"][1] = {}
	tValDayFW_TimeOut[3315299]["DeleteItem"][1]["Id"] = 3315299 -- 【库】甜心巧克力[属性:137]
	-- tValDayFW_TimeOut[3315299]["DeleteItem"][1]["ItemNum"] = 1
----------------------------------逻辑部分---------------------------------------------
-- 上线接任务
function ValDayFW_LogIn()
	local ValDayFW_nTaskId = tValDayFW_Task[1]["id"]
	if not Task_ChkTaskDetail(ValDayFW_nTaskId) then 
		if not Task_AddTaskDetail(ValDayFW_nTaskId) then
			return
		end
	-- elseif Task_ChkTaskDetailValue(ValDayFW_nTaskId,"CompleteFlag",">=",1) then
		-- -- 第一周
		-- if not Sys_ChkFullTime(tValDayFW_Time["1Week"]) then
			-- local ValDayFW_nTaskId2 = tValDayFW_Task[2]["id"]
			-- if not Task_AddTaskDetail(ValDayFW_nTaskId2) then
				-- return
			-- end
		-- end
		-- -- 第二周
		-- if not Sys_ChkFullTime(tValDayFW_Time["2Week"]) then
			-- local ValDayFW_nTaskId2 = tValDayFW_Task[2]["id"]
			-- if Task_ChkTaskDetail(ValDayFW_nTaskId2) and Task_ChkTaskDetailValue(ValDayFW_nTaskId2,"CompleteFlag","<",1) then
				-- Task_SetTaskDetailCompleteFlag(ValDayFW_nTaskId2,1)
			-- end
			-- local ValDayFW_nTaskId3 = tValDayFW_Task[3]["id"]
			-- if not Task_AddTaskDetail(ValDayFW_nTaskId3) then
				-- return
			-- end
		-- end
	end
end

function ValDayFW_CompleteTask(nIndex)
	local ValDayFW_nTaskId = tValDayFW_Task[nIndex]["id"]
	if Task_ChkTaskDetail(ValDayFW_nTaskId) and Task_ChkTaskDetailValue(ValDayFW_nTaskId,"CompleteFlag","<",1) then
		Task_SetTaskDetailCompleteFlag(ValDayFW_nTaskId,1)
	end
end

-- 拯救赛维娅的灵魂
function ValDayFW_SaveExplore()
	local ValDayFW_nMapDoc = Get_MapDoc()
	if ValDayFW_nMapDoc == 10587 then
		LinkNpcGossipFunc_New(25847,"3-1")
	end
end

-- 拯救赛维娅的灵魂
function ValDayFW_Save(ValDayFW_nUserId)
	local ValDayFW_nUserId = ValDayFW_nUserId or Get_UserId()
	ValDayFW_AddStcValue(1,1,ValDayFW_nUserId)
	ValDayFW_AddStcValue(5,1,ValDayFW_nUserId)
	ValDayFW_CompleteTask(1)
	ValDayFW_BackDragon(ValDayFW_nUserId)
	Sys_MsgBox(tValDayFW_Text["MsgBox"]["LeaveInstance"],"</F>NpcPosition_PathFind</N>25846")
end

-- 回到双龙城
function ValDayFW_BackDragon(ValDayFW_nUserId)
	local ValDayFW_nUserId = ValDayFW_nUserId or Get_UserId()
	local ValDayFW_tMap = tValDayFW_Tran["Dragon"]["Normal"]
	if SpecialServer_ChkNoGiftServer() then
		ValDayFW_tMap = tValDayFW_Tran["Dragon"]["NoGift"]
	end
	User_UserRandBoundTrans(ValDayFW_tMap["MapId"],ValDayFW_tMap["PosX"],ValDayFW_tMap["PosY"],ValDayFW_tMap["Cell"],ValDayFW_tMap["Cell"],1,ValDayFW_nUserId)
end

-- 进入瓦伦丁监狱
function ValDayFW_EnterPrisonInstance()
	local ValDayFW_nUserId = Get_UserId()
	if Get_UserCrimeTime(ValDayFW_nUserId) == 1 then
		User_TalkChannel2005(tValDayFW_Text["IntoBlue"])
		return
	end
	local ValDayFW_nTeamNum = Get_UserTeamNumbers(ValDayFW_nUserId)
	-- 组队不可进入副本
	if ValDayFW_nTeamNum > 1 then
		User_TalkChannel2005(tValDayFW_Text["MsgBox"]["TeamNotEnter"])
		return
	end
	-- 【未救出赛维娅】
	if ValDayFW_GetStcValue(1) <= 0 then
		Instance_Enter(tValDayFW_Instance[1],ValDayFW_nUserId)
		User_PlayPlot(14)
	end
end

-- 每日首次进入进入监狱寻找巧克力
function ValDayFW_EnterPrisonFindCho()
	if not Sys_ChkFullTime(tValDayFW_Time["ActivityTime"]) then
		return
	end
	local ValDayFW_nUserId = Get_UserId()
	if Get_UserCrimeTime(ValDayFW_nUserId) == 1 then
		User_TalkChannel2005(tValDayFW_Text["IntoBlue"])
		return
	end
	local ValDayFW_nTeamNum = Get_UserTeamNumbers(ValDayFW_nUserId)
	-- 组队不可进入副本
	if ValDayFW_nTeamNum > 1 then
		User_TalkChannel2005(tValDayFW_Text["MsgBox"]["TeamNotEnter"])
		return
	end
	Instance_Enter(tValDayFW_Instance[2],ValDayFW_nUserId)
end

-- 进入瓦伦丁监狱
function ValDayFW_EnterPrison()
	local ValDayFW_tMap = tValDayFW_Tran["Prison"]
	User_UserRandBoundTrans(ValDayFW_tMap["MapId"],ValDayFW_tMap["PosX"],ValDayFW_tMap["PosY"],ValDayFW_tMap["Cell"],ValDayFW_tMap["Cell"],1)
	local ValDayFW_nMapId = tValDayFW_MonsterPos["MapId"]
	local ValDayFW_nPosX = tValDayFW_MonsterPos["PosX"] 
	local ValDayFW_nPosY = tValDayFW_MonsterPos["PosY"] 
	Sys_MsgBox(tValDayFW_Text["MsgBox"]["EnterPrison"],"</F>Sys_GotoSomeWhere</N>"..ValDayFW_nPosX.."</N>"..ValDayFW_nPosY.."</N>"..ValDayFW_nMapId.."</N>0")
end

-- 获得消耗物品字符串（1为鲜花礼物，2为兑换券
function ValDayFW_GetDelItemStr(nIndex)
	local ValDayFW_sText = tValDayFW_Text["String"]
	local ValDayFW_bFlag = false
	for i=1,#tValDayFW_FlowerGift[nIndex] do
		local ValDayFW_nItemId = tValDayFW_FlowerGift[nIndex][i]
		local ValDayFW_nItemNum = Get_CountItemType(ValDayFW_nItemId,0)
		-- 多个物品才可兑换巧克力豆碎片
		if tValDayFW_MulChocolate[ValDayFW_nItemId] ~= nil then
			ValDayFW_nItemNum = math.floor(ValDayFW_nItemNum/tValDayFW_MulChocolate[ValDayFW_nItemId])*tValDayFW_MulChocolate[ValDayFW_nItemId]
		end
		if ValDayFW_nItemNum > 0 then
			local sItemName = Get_ItemtypeName(ValDayFW_nItemId)
			if ValDayFW_bFlag then
				ValDayFW_sText = string.format(ValDayFW_sText,tValDayFW_Text["Link"],tValDayFW_Text["String"])
			end
			ValDayFW_bFlag = true
			local ValDayFW_sItemStr = string.format(tValDayFW_Text["ItemStr"],ValDayFW_nItemNum,sItemName)
			ValDayFW_sText = string.format(ValDayFW_sText,ValDayFW_sItemStr,tValDayFW_Text["String"])
		end
	end
	ValDayFW_sText = string.format(ValDayFW_sText,'','')
	return ValDayFW_sText
end

-- 获得兑换巧克力豆数量（1为鲜花礼物，2为兑换券
function ValDayFW_GetChoNum(nIndex)
	local ValDayFW_nChoNum = 0
	for i=1,#tValDayFW_FlowerGift[nIndex] do
		local ValDayFW_nItemId = tValDayFW_FlowerGift[nIndex][i]
		local ValDayFW_nItemNum = Get_CountItemType(ValDayFW_nItemId,0)
		-- 多个物品才可兑换巧克力豆碎片
		if tValDayFW_MulChocolate[ValDayFW_nItemId] ~= nil then
			ValDayFW_nItemNum = math.floor(ValDayFW_nItemNum/tValDayFW_MulChocolate[ValDayFW_nItemId])*tValDayFW_MulChocolate[ValDayFW_nItemId]
		end
		if ValDayFW_nItemNum > 0 then
			ValDayFW_nChoNum = ValDayFW_nChoNum + ValDayFW_nItemNum*tValDayFW_Chocolate[ValDayFW_nItemId]
		end
	end
	if nIndex == 1 then
		local ValDayFW_nExchangeNum = ValDayFW_GetStcValue(3)
		if ValDayFW_nExchangeNum > tValDayFW_Const["ChoLimit"] then
			ValDayFW_nExchangeNum = tValDayFW_Const["ChoLimit"]
			ValDayFW_nChoNum = ValDayFW_nChoNum*0.5
		elseif ValDayFW_nChoNum + ValDayFW_nExchangeNum > tValDayFW_Const["ChoLimit"] then
			ValDayFW_nChoNum = ValDayFW_nChoNum*0.5 - ValDayFW_nExchangeNum*0.5 + tValDayFW_Const["ChoLimit"]*0.5
		end
	end
	return math.floor(ValDayFW_nChoNum)
end

-- 判断今日5万巧克力豆
function ValDayFW_JudgeChoNum()
	ValDayFW_StcReset(3)
	local ValDayFW_nChoNum = ValDayFW_GetStcValue(3)
	local ValDayFW_nNpcId = Get_NpcId()
	if ValDayFW_nChoNum < tValDayFW_Const["ChoLimit"] then
		return true
	else
		return false
	end
end

-- 【鲜花礼物兑换】
function ValDayFW_JudgeExchangeCho()
	local ValDayFW_nNpcId = Get_NpcId()
	if ValDayFW_JudgeChoNum() then
		LinkNpcGossipFunc_New(ValDayFW_nNpcId,"3-1")
	else
		LinkNpcGossipFunc_New(ValDayFW_nNpcId,"3-3")
	end
end

-- 【一键上交鲜花礼物】
function ValDayFW_GiftExchangeCho()
	local ValDayFW_nNpcId = Get_NpcId()
	if ValDayFW_GetChoNum(1) > 0 then
		if ValDayFW_JudgeChoNum() then
			LinkNpcGossipFunc_New(ValDayFW_nNpcId,"3-6")
		else
			LinkNpcGossipFunc_New(ValDayFW_nNpcId,"3-7")
		end
	else
		LinkNpcGossipFunc_New(ValDayFW_nNpcId,"3-5")
	end
end

function ValDayFW_VouExchangeCho()
	local ValDayFW_nNpcId = Get_NpcId()
	if ValDayFW_GetChoNum(2) > 0 then
		LinkNpcGossipFunc_New(ValDayFW_nNpcId,"3-9")
	else
		LinkNpcGossipFunc_New(ValDayFW_nNpcId,"4-0")
	end
end

-- 【确认一键上交鲜花礼物】
function ValDayFW_ConfirmExchangeCho(nIndex)
	local ValDayFW_tReward = CommonFunc_Copy(tValDayFW_Exchange[nIndex])
	local ValDayFW_nChoNum = 0
	for i,v in pairs(ValDayFW_tReward["DeleteItem"]) do
		local ValDayFW_nItemId = v["Id"]
		local ValDayFW_nNum = Get_CountItemType(ValDayFW_nItemId,0)
		-- 多个物品才可兑换巧克力豆碎片
		if tValDayFW_MulChocolate[ValDayFW_nItemId] ~= nil then
			ValDayFW_nNum = math.floor(ValDayFW_nNum/tValDayFW_MulChocolate[ValDayFW_nItemId])*tValDayFW_MulChocolate[ValDayFW_nItemId]
		end
		if ValDayFW_nNum <= 0 then
			ValDayFW_tReward["DeleteItem"][i] = nil
		else
			v["ItemNum"] = ValDayFW_nNum
			ValDayFW_nChoNum = ValDayFW_nChoNum + ValDayFW_nNum*tValDayFW_Chocolate[ValDayFW_nItemId]
		end
	end
	if ValDayFW_nChoNum == 0 then
		return
	end
	local ValDayFW_nRewardNum = ValDayFW_GetChoNum(nIndex)
	ValDayFW_tReward["RewardItem"][1]["Attr"] = string.format(ValDayFW_tReward["RewardItem"][1]["Attr"],ValDayFW_nRewardNum)
	if RewardTemplate_UseItemAndMsg(ValDayFW_tReward) then
		ValDayFW_AddStcValue(3,ValDayFW_nRewardNum)
		local ValDayFW_nNpcId = Get_NpcId()
		tNpcGossip[ValDayFW_nNpcId]["Text421"] = string.format(tValDayFW_Text[ValDayFW_nNpcId]["Text421"],ValDayFW_nRewardNum)
		LinkNpcGossipFunc_New(ValDayFW_nNpcId,"4-2")
	end
end

-- 【唤醒她】
function ValDayFW_Awake(ValDayFW_nItemId)
	local ValDayFW_nNpcId = Get_NpcId()
	if not RewardTemplate_RandomReward(tValDayFW_Awake,ValDayFW_nItemId) then
		if not Item_ChkMulItem(tValDayFW_Awake[ValDayFW_nItemId]["DeleteItem"][1]["Id"],tValDayFW_Awake[ValDayFW_nItemId]["DeleteItem"][1]["Id"],tValDayFW_Awake[ValDayFW_nItemId]["DeleteItem"][1]["ItemNum"]) then
			LinkNpcGossipFunc_New(ValDayFW_nNpcId,"2-2")
		end
	else
		local ValDayFW_nUserId = Get_UserId()
		ValentinePart2_SetRank(tValDayFW_Awake[ValDayFW_nItemId][1]["RewardItem"][1]["Num"],ValDayFW_nUserId)
		LinkNpcGossipFunc_New(ValDayFW_nNpcId,"3-2")
	end
end

-- 【继续唤醒她】
function ValDayFW_GoOnAwake(ValDayFW_nItemId)
	local ValDayFW_nNpcId = Get_NpcId()
	if Get_CountItemType(ValDayFW_nItemId,0) == 0 then
		LinkNpcGossipFunc_New(ValDayFW_nNpcId,"2-2")
	else
		ValDayFW_EatCho(ValDayFW_nItemId,2)
		LinkNpcMain()
	end
end

-- 【一键食用所有巧克力和巧克力豆】
function ValDayFW_EatAllCho()
	local ValDayFW_tReward = CommonFunc_Copy(tValDayFW_EatAllCho)
	local ValDayFW_nChoNum = 0
	for i,v in pairs(ValDayFW_tReward["DeleteItem"]) do
		local ValDayFW_nItemId = v["Id"]
		local ValDayFW_nNum = Get_CountItemType(ValDayFW_nItemId,0)
		if ValDayFW_nNum <= 0 then
			ValDayFW_tReward["DeleteItem"][i] = nil
		else
			v["ItemNum"] = ValDayFW_nNum
			ValDayFW_nChoNum = ValDayFW_nChoNum + ValDayFW_nNum*tValDayFW_Heart[ValDayFW_nItemId]
		end
	end
	if ValDayFW_nChoNum == 0 then
		local ValDayFW_nNpcId = Get_NpcId()
		LinkNpcGossipFunc_New(ValDayFW_nNpcId,"2-2")
		return
	end
	ValDayFW_tReward["RewardItem"][1]["Attr"] = string.format(ValDayFW_tReward["RewardItem"][1]["Attr"],ValDayFW_nChoNum)
	if RewardTemplate_UseItemAndMsg(ValDayFW_tReward) then
		-- ValDayFW_AddStcValue(3,ValDayFW_nChoNum)
		local ValDayFW_nUserId = ValDayFW_nUserId or Get_UserId()
		ValentinePart2_SetRank(ValDayFW_nChoNum,ValDayFW_nUserId)
		LinkNpcMain()
	end
end

-- 【击杀狱卒】
function ValDayFW_KillMonster(ValDayFW_nMonsterId)
	local ValDayFW_nMapId = Get_UserMapId()
	Monster_Death(ValDayFW_nMonsterId,ValDayFW_nMapId)
	if ValDayFW_GetStcValue(1) == 0 then
		local ValDayFW_nMonsterNum = Get_SysTempData(1,ValDayFW_nMapId,ValDayFW_nMonsterId)
		if ValDayFW_nMonsterNum == 0 then
			for i=1,5 do
				local nRange1 = math.random(-3,3)
				local nRange2 = math.random(-3,3)
				Monster_AddAndCount(ValDayFW_nMapId,tValDayFW_Const["StoryMonster"]["PosX"]+nRange1,tValDayFW_Const["StoryMonster"]["PosY"]+nRange2,tValDayFW_Const["StoryMonster"]["GenId"],tValDayFW_Const["StoryMonster"]["Id"])
			end
		end
	else
		local ValDayFW_nMonsterNum = 0
		for i,v in pairs(tValDayFW_Instance[2]["Monster"]) do 
			ValDayFW_nMonsterNum = ValDayFW_nMonsterNum+Get_SysTempData(1,ValDayFW_nMapId,tValDayFW_Instance[2]["Monster"][i]["MonsterId"])
		end
		if ValDayFW_nMonsterNum == 0 then
			RewardTemplate_UseItemAndMsg(tValDayFW_EveryDayGetCho)
			local ValDayFW_nUserId = ValDayFW_nUserId or Get_UserId()
			ValDayFW_BackDragon(ValDayFW_nUserId)
		end
	end
end

-- 【击杀铁血狱卒】
function ValDayFW_KillRareMonster(ValDayFW_nMonsterId)
	local ValDayFW_nMapId = Get_UserMapId()
	Monster_Death(ValDayFW_nMonsterId,ValDayFW_nMapId)
	if ValDayFW_GetStcValue(1) == 0 then
		local ValDayFW_nMonsterNum = Get_SysTempData(1,ValDayFW_nMapId,ValDayFW_nMonsterId)
		if ValDayFW_nMonsterNum == 0 then
			-- User_SetTimer(12,"ValDayFW_AddBoss</N>"..ValDayFW_nMapId,1)
			User_PlayPlot(15)
		end
	else
		local ValDayFW_nMonsterNum = 0
		for i,v in pairs(tValDayFW_Instance[2]["Monster"]) do 
			ValDayFW_nMonsterNum = ValDayFW_nMonsterNum+Get_SysTempData(1,ValDayFW_nMapId,tValDayFW_Instance[2]["Monster"][i]["MonsterId"])
		end
		if ValDayFW_nMonsterNum == 0 then
			RewardTemplate_UseItemAndMsg(tValDayFW_EveryDayGetCho)
			local ValDayFW_nUserId = ValDayFW_nUserId or Get_UserId()
			ValDayFW_BackDragon(ValDayFW_nUserId)
		end
	end
end

-- 【击杀BOSS】
function ValDayFW_AddBoss(ValDayFW_nMapId)
	Monster_AddAndCount(ValDayFW_nMapId,tValDayFW_Const["StoryBoss"]["PosX"],tValDayFW_Const["StoryBoss"]["PosY"],tValDayFW_Const["StoryBoss"]["GenId"],tValDayFW_Const["StoryBoss"]["Id"])
end

-- 【击杀BOSS】
function ValDayFW_KillBoss(ValDayFW_nMonsterId)
	local ValDayFW_nMapId = Get_UserMapId()
	Monster_Death(ValDayFW_nMonsterId,ValDayFW_nMapId)
	-- 是否是救出塞维亚副本
	if ValDayFW_GetStcValue(1) ~= 0 then
		local ValDayFW_nMonsterNum = 0
		for i,v in pairs(tValDayFW_Instance[2]["Monster"]) do 
			ValDayFW_nMonsterNum = ValDayFW_nMonsterNum+Get_SysTempData(1,ValDayFW_nMapId,tValDayFW_Instance[2]["Monster"][i]["MonsterId"])
		end
		if ValDayFW_nMonsterNum == 0 then
			RewardTemplate_UseItemAndMsg(tValDayFW_EveryDayGetCho)
			local ValDayFW_nUserId = ValDayFW_nUserId or Get_UserId()
			ValDayFW_BackDragon(ValDayFW_nUserId)
			Sys_MsgBox(tValDayFW_Text["MsgBox"]["CompleteEverydayTask"],"</F>ValDayFW_FindSWY")
		end
	end
end

-- 【击杀剧情BOSS】
function ValDayFW_KillStoryBoss(ValDayFW_nMonsterId)
	-- 是否是救出塞维亚副本
	if ValDayFW_GetStcValue(1) == 0 then
		local ValDayFW_nUserId = Get_UserId()
		local ValDayFW_nMapId = Get_UserMapId()
		local ValDayFW_nCellx = tValDayFW_Save["PosX"]
		local ValDayFW_nCelly = tValDayFW_Save["PosY"]
		local ValDayFW_nActionId = tValDayFW_Save["ActionId"]
		local ValDayFW_nNpcLookFace = tValDayFW_Save["LookFace"]
		local ValDayFW_sNpcName = tValDayFW_Text["SaveName"]
		Npc_CreateDynaNpc(ValDayFW_sNpcName,2,1,ValDayFW_nNpcLookFace,0,ValDayFW_nUserId,ValDayFW_nMapId,ValDayFW_nCellx,ValDayFW_nCelly,0,0,0,ValDayFW_nActionId)
		Sys_MsgBox(tValDayFW_Text["MsgBox"]["KillBoss"],"</F>ValDayFW_SaveExplore")
	end
end

-- 【获得巧克力豆总数及可制作各种巧克力数量】
function ValDayFW_GetMakeChoNum()
	local ValDayFW_nItemId = 3315299
	local ValDayFW_nNum = Get_CountItemType(ValDayFW_nItemId,0)
	-- local ValDayFW_nChoNum1 = math.floor(ValDayFW_nNum/1000)
	local ValDayFW_nChoNum2 = math.floor(ValDayFW_nNum/100)
	local ValDayFW_nChoNum3 = math.floor(ValDayFW_nNum%100/10)
	return ValDayFW_nChoNum2,ValDayFW_nChoNum3,ValDayFW_nNum
	-- return ValDayFW_nChoNum1,ValDayFW_nChoNum2,ValDayFW_nChoNum3,ValDayFW_nNum
end

-- 【一键制作巧克力】
function ValDayFW_MakeAllCho()
	local ValDayFW_nChoNum2,ValDayFW_nChoNum1,ValDayFW_nChoNum4 = ValDayFW_GetMakeChoNum()
	local ValDayFW_tReward = CommonFunc_Copy(tValDayFW_MakeAllCho)
	-- 【消耗巧克力豆数量】
	local ValDayFW_nItemNum = ValDayFW_nChoNum4-(ValDayFW_nChoNum4%10)
	if ValDayFW_nItemNum == 0 then
		User_TalkChannel2005(tValDayFW_Text["NoItem"])
		return false
	end
	ValDayFW_tReward["DeleteItem"][1]["ItemNum"] = ValDayFW_nItemNum
	if ValDayFW_nChoNum1 == 0 then
		ValDayFW_tReward["RewardItem"][1] = nil
	else
		ValDayFW_tReward["RewardItem"][1]["Attr"] = string.format(ValDayFW_tReward["RewardItem"][1]["Attr"],ValDayFW_nChoNum1)
	end
	if ValDayFW_nChoNum2 == 0 then
		ValDayFW_tReward["RewardItem"][2] = nil
	else
		ValDayFW_tReward["RewardItem"][2]["Attr"] = string.format(ValDayFW_tReward["RewardItem"][2]["Attr"],ValDayFW_nChoNum2)
	end
	-- if ValDayFW_nChoNum3 == 0 then
		-- ValDayFW_tReward["RewardItem"][3] = nil
	-- else
		-- ValDayFW_tReward["RewardItem"][3]["Attr"] = string.format(ValDayFW_tReward["RewardItem"][3]["Attr"],ValDayFW_nChoNum3)
	-- end
	RewardTemplate_UseItemAndMsg(ValDayFW_tReward)
end

-- 【制作巧克力】
function ValDayFW_MakeCho(ValDayFW_nItemId,ValDayFW_nIndex)
	local ValDayFW_nCostId = tValDayFW_MakeCho[ValDayFW_nItemId][ValDayFW_nIndex]["DeleteItem"][1]["Id"]
	local ValDayFW_nCostNum = tValDayFW_MakeCho[ValDayFW_nItemId][ValDayFW_nIndex]["DeleteItem"][1]["ItemNum"]
	if not Item_ChkMulItem(ValDayFW_nCostId,ValDayFW_nCostId,ValDayFW_nCostNum) then
		User_TalkChannel2005(tValDayFW_Text["NoItem"])
		return false
	end
	RewardTemplate_UseItemAndMsg(tValDayFW_MakeCho[ValDayFW_nItemId][ValDayFW_nIndex])
end

-- 食用巧克力
function ValDayFW_EatCho(ValDayFW_nItemId,ValDayFW_nIndex)
	local ValDayFW_tReward = CommonFunc_Copy(tValDayFW_EatCho[ValDayFW_nItemId])
	local ValDayFW_nRewardNum = ValDayFW_tReward["RewardItem"][1]["Num"]
	if ValDayFW_nIndex == 2 then
		local ValDayFW_nItemNum = Get_CountItemType(ValDayFW_nItemId,0)
		ValDayFW_tReward["DeleteItem"][1]["ItemNum"] = ValDayFW_nItemNum
		ValDayFW_nRewardNum = ValDayFW_nRewardNum*ValDayFW_tReward["DeleteItem"][1]["ItemNum"]
	end
	ValDayFW_tReward["RewardItem"][1]["Attr"] = string.format(ValDayFW_tReward["RewardItem"][1]["Attr"],ValDayFW_nRewardNum)
	local ValDayFW_nUserId = Get_UserId()
	ValentinePart2_SetRank(ValDayFW_nRewardNum,ValDayFW_nUserId)
	RewardTemplate_UseItemAndMsg(ValDayFW_tReward)
	-- if RewardTemplate_UseItemAndMsg(ValDayFW_tReward) then
		-- local ValDayFW_nMapId = Get_UserMapId()
		-- local ValDayFW_nPosX = Get_UserPositionX()
		-- local ValDayFW_nPosY = Get_UserPositionY()
		-- Map_Effect(ValDayFW_nMapId,ValDayFW_nPosX-18,ValDayFW_nPosY-2,"NEW-flower-charm1")
	-- end
end

-- 升级巧克力
function ValDayFW_UpdateCho(ValDayFW_nItemId,ValDayFW_nIndex)
	local ValDayFW_tReward = CommonFunc_Copy(tValDayFW_UpdateCho[ValDayFW_nItemId])
	local ValDayFW_nRewardNum = ValDayFW_tReward["RewardItem"][1]["Num"]
	local ValDayFW_nItemNum = Get_CountItemType(ValDayFW_nItemId,0)
	if ValDayFW_nItemNum < ValDayFW_tReward["DeleteItem"][1]["ItemNum"] then
		Sys_MsgBox(tValDayFW_Text["MsgBox"]["NoCho"])
		return
	end
	if ValDayFW_nIndex == 2 then
		ValDayFW_tReward["DeleteItem"][1]["ItemNum"] = math.floor(ValDayFW_nItemNum/10)*ValDayFW_tReward["DeleteItem"][1]["ItemNum"]
		ValDayFW_nRewardNum = math.floor(ValDayFW_tReward["DeleteItem"][1]["ItemNum"]/10)
	end
	ValDayFW_tReward["RewardItem"][1]["Attr"] = string.format(ValDayFW_tReward["RewardItem"][1]["Attr"],ValDayFW_nRewardNum)
	RewardTemplate_UseItemAndMsg(ValDayFW_tReward)
end

-- 取掩码值
function ValDayFW_GetStcValue(ValDayFW_nIndex,ValDayFW_nUserId)
	local ValDayFW_nEvent = tValDayFW_Stc[ValDayFW_nIndex]["EventType"]
	local ValDayFW_nType = tValDayFW_Stc[ValDayFW_nIndex]["DataType"]
	local ValDayFW_nUserId = ValDayFW_nUserId or Get_UserId()
	return Get_UserStatisticValue(ValDayFW_nEvent,ValDayFW_nType,ValDayFW_nUserId)
end

-- 修改掩码值
function ValDayFW_AddStcValue(ValDayFW_nIndex,ValDayFW_nValue,ValDayFW_nUserId)
	local ValDayFW_nEvent = tValDayFW_Stc[ValDayFW_nIndex]["EventType"]
	local ValDayFW_nType = tValDayFW_Stc[ValDayFW_nIndex]["DataType"]
	local ValDayFW_nUserId = ValDayFW_nUserId or Get_UserId()
	Task_AddStatistic(ValDayFW_nEvent,ValDayFW_nType,ValDayFW_nValue,1,ValDayFW_nUserId)
end

-- 隔日重置
function ValDayFW_StcReset(ValDayFW_nIndex,ValDayFW_nUserId)
	local ValDayFW_nEvent = tValDayFW_Stc[ValDayFW_nIndex]["EventType"]
	local ValDayFW_nType = tValDayFW_Stc[ValDayFW_nIndex]["DataType"]
	local ValDayFW_nUserId = ValDayFW_nUserId or Get_UserId()
	Task_StcReset(ValDayFW_nEvent,ValDayFW_nType,ValDayFW_nUserId)
end

-- 接到其他NPC
function ValDayFW_LinkOtherNpc()
	LinkNpcGossipFunc_New(25837,"2-1")
end

-- 接到瓦伦丁
function ValDayFW_Link25846()
	if ValDayFW_GetStcValue(4) == 0 and ValDayFW_GetStcValue(1) == 1 and Sys_ChkFullTime(tValDayFW_Time["ActivityTime"]) and User_JudgeLevelAndMetempsychosis(tValDayFW_Const["Level"],tValDayFW_Const["Mete"]) then
		LinkNpcGossipFunc_New(25846,"4-1")
	else
		LinkNpcMain()
	end
end

-- 接到赛维娅
function ValDayFW_Link25847()
	if Sys_ChkFullTime(tValDayFW_Time["1Week"]) then
		LinkNpcMain()
	else
		Sys_MsgBox(tValDayFW_Text["MsgBox"]["Awaking"])
	end
end

-- 【寻找赛维娅】
function ValDayFW_FirstGetCho()
	if RewardTemplate_UseItemAndMsg(tValDayFW_FirstGetCho) then
		ValDayFW_FindSWY()
	end
end

-- 【寻找赛维娅】
function ValDayFW_FindSWY()
	if Sys_ChkFullTime(tValDayFW_Time["1Week"]) then
		NpcPosition_PathFind(25847)
	else
		NpcPosition_PathFind(25837)
	end
end

-- 【塞维亚处提交巧克力】
function ValDayFW_SubmitCho()
	local ValDayFW_nNpcId = 25847
	-- 没有巧克力
	if Get_CountItemType(3600215,0) == 0 and Get_CountItemType(3600216,0) == 0 and Get_CountItemType(3600217,0) == 0 and Get_CountItemType(3315299,0) == 0 then
		LinkNpcGossipFunc_New(ValDayFW_nNpcId,"2-2")
	else
		LinkNpcGossipFunc_New(ValDayFW_nNpcId,"2-4")
	end
end

function ValDayFW_KillMonsterPlot(nUserId,nPlayId,nPlayStatus)
	if nPlayId ~= 15 then
		return
	end
	local ValDayFW_nMapId = Get_UserMapId(nUserId)
	ValDayFW_AddBoss(ValDayFW_nMapId)
end
----------------------------------NPC部分---------------------------------------------
tNpcFace[6298] = 71
-- 【瓦伦丁】
tNpcGossip[25846]= tNpcGossip[25846] or DefaultNpc:new{}
tNpcGossip[25846]["OptionHidden"] = 1
tNpcGossip[25846]["DialogueText"] = tValDayFW_Text[25846]
-- 【活动后】
tNpcGossip[25846]["Text1-1"] = {111,112}
tNpcGossip[25846]["tOption1-1"] = {111}
tNpcGossip[25846]["ChkFunc1-1"] = function()
	return not Sys_ChkFullTime(tValDayFW_Time["ActivityTime"])
end
-- 【活动中】【等级未达到】
tNpcGossip[25846]["Text1-2"] = {111,121,122,123,124,125}
tNpcGossip[25846]["tOption1-2"] = {121}
tNpcGossip[25846]["ChkFunc1-2"] = function()
	return not User_JudgeLevelAndMetempsychosis(tValDayFW_Const["Level"],tValDayFW_Const["Mete"])
end
-- 【活动中】【等级达到】【未救出赛维娅】
tNpcGossip[25846]["Text1-3"] = {111,131,132}
tNpcGossip[25846]["tOption1-3"] = {131}
tNpcGossip[25846]["OptionPoint131"] = "2-1"
tNpcGossip[25846]["ChkFunc1-3"] = function()
	return ValDayFW_GetStcValue(1) == 0
end
-- 【活动中】【等级达到】【救出赛维娅】【第一周】
tNpcGossip[25846]["Text1-4"] = {111,141,142,143,144,145}
tNpcGossip[25846]["tOption1-4"] = {143,144,141}
tNpcGossip[25846]["OptionPoint141"] = "3-8"
-- tNpcGossip[25846]["OptionFunc142"] = "ValDayFW_LinkOtherNpc"
tNpcGossip[25846]["OptionFunc143"] = "ValDayFW_EnterPrisonFindCho"
tNpcGossip[25846]["OptionFunc144"] = "NpcPosition_PathFind</N>25929"
tNpcGossip[25846]["OptionChkFunc143"] = function()
	return ValDayFW_GetStcValue(5) == 0
end
tNpcGossip[25846]["ChkFunc1-4"] = function()
	ValDayFW_StcReset(5)
	return Sys_ChkFullTime(tValDayFW_Time["1Week"])
end
-- 【活动中】【等级达到】【救出赛维娅】【第二周】【每日任务未完成】
tNpcGossip[25846]["Text1-5"] = {111,151,152}
tNpcGossip[25846]["tOption1-5"] = {151}
tNpcGossip[25846]["OptionFunc151"] = "NpcPosition_PathFind</N>25837"
tNpcGossip[25846]["ChkFunc1-5"] = function()
	return not ValentinePart2_CheckDailyTak()
	
end
-- 【活动中】【等级达到】【救出赛维娅】【第二周】【每日任务未完成】
tNpcGossip[25846]["Text1-6"] = {111,161,162,144,145}
tNpcGossip[25846]["tOption1-6"] = {143,144,141}
-- 【我要如何帮助你？】
tNpcGossip[25846]["Text2-1"] = {111,211}
tNpcGossip[25846]["tOption2-1"] = {211}
tNpcGossip[25846]["OptionFunc211"] = "ValDayFW_EnterPrisonInstance"
-- 【鲜花礼物换巧克力豆】
tNpcGossip[25846]["Text2-2"] = {111,221,222}
tNpcGossip[25846]["tOption2-2"] = {221,222}
tNpcGossip[25846]["OptionFunc221"] = "ValDayFW_JudgeExchangeCho"
tNpcGossip[25846]["OptionPoint222"] = "3-8"
-- 【兑换巧克力豆未超过5000对白】
tNpcGossip[25846]["Text3-1"] = {311,312,313,314,315,316,317,318,319,320,321,322,323,324,325,326,312,327}
tNpcGossip[25846]["tOption3-1"] = {311}
tNpcGossip[25846]["OptionFunc311"] = "ValDayFW_GiftExchangeCho"
tNpcGossip[25846]["ChkFunc3-1"] = function()
	tNpcGossip[25846]["Text327"] = string.format(tValDayFW_Text[25846]["Text327"],ValDayFW_GetStcValue(3))
	return true
end
-- 【兑换巧克力豆超过5000对白】
tNpcGossip[25846]["Text3-3"] = {331,332,333,334,335,336,337,338,339,340,341,342,343,344,345,346,332}
tNpcGossip[25846]["tOption3-3"] = {311}
-- 【背包中没有鲜花礼物】
tNpcGossip[25846]["Text3-5"] = {111,351}
tNpcGossip[25846]["tOption3-5"] = {351}
-- tNpcGossip[25846]["OptionFunc351"] = "ValDayFW_JudgeExchangeCho"
tNpcGossip[25846]["OptionPoint351"] = "3-8"
-- 【背包中有鲜花礼物，兑换的巧克力豆没有超过5000】
tNpcGossip[25846]["Text3-6"] = {111,361,362}
tNpcGossip[25846]["tOption3-6"] = {361,362}
tNpcGossip[25846]["OptionFunc361"] = "ValDayFW_ConfirmExchangeCho</N>1"
tNpcGossip[25846]["ChkFunc3-6"] = function()
	tNpcGossip[25846]["Text361"] = string.format(tValDayFW_Text[25846]["Text361"],ValDayFW_GetDelItemStr(1))
	tNpcGossip[25846]["Text362"] = string.format(tValDayFW_Text[25846]["Text362"],ValDayFW_GetChoNum(1))
	return true
end
-- 【背包中有鲜花礼物，兑换的巧克力豆超过5000】
tNpcGossip[25846]["Text3-7"] = {111,371,372}
tNpcGossip[25846]["tOption3-7"] = {361,362}
tNpcGossip[25846]["ChkFunc3-7"] = function()
	tNpcGossip[25846]["Text372"] = string.format(tValDayFW_Text[25846]["Text372"],ValDayFW_GetDelItemStr(1),ValDayFW_GetChoNum(1))
	return true
end
-- 【兑换券兑巧克力豆】
tNpcGossip[25846]["Text3-8"] = {381,382,383,384,385,386,387,382}
tNpcGossip[25846]["tOption3-8"] = {381,221}
tNpcGossip[25846]["OptionFunc381"] = "ValDayFW_VouExchangeCho"
-- 【背包中有兑换券】
tNpcGossip[25846]["Text3-9"] = {111,391,392}
tNpcGossip[25846]["tOption3-9"] = {391,392}
tNpcGossip[25846]["OptionFunc391"] = "ValDayFW_ConfirmExchangeCho</N>2"
tNpcGossip[25846]["ChkFunc3-9"] = function()
	tNpcGossip[25846]["Text391"] = string.format(tValDayFW_Text[25846]["Text391"],ValDayFW_GetDelItemStr(2))
	tNpcGossip[25846]["Text392"] = string.format(tValDayFW_Text[25846]["Text392"],ValDayFW_GetChoNum(2))
	return true
end
-- 【背包中没有兑换券】
tNpcGossip[25846]["Text4-0"] = {111,401}
tNpcGossip[25846]["tOption4-0"] = {401}
tNpcGossip[25846]["OptionPoint401"] = "3-8"
-- 【玩家救出典狱长女儿后，第一次对白】
tNpcGossip[25846]["Text4-1"] = {111,411}
tNpcGossip[25846]["tOption4-1"] = {411}
tNpcGossip[25846]["OptionFunc411"] = "ValDayFW_FirstGetCho"
-- 【提交完鲜花和兑换券后】
tNpcGossip[25846]["Text4-2"] = {111,421}
tNpcGossip[25846]["tOption4-2"] = {421,422}
tNpcGossip[25846]["OptionFunc421"] = "ValDayFW_FindSWY"
tNpcGossip[25846]["OptionPoint422"] = "3-8"

tNpcFace[6299] = 189
-- 【沉睡的赛维娅】
tNpcGossip[25847]= tNpcGossip[25847] or DefaultNpc:new{}
tNpcGossip[25847]["OptionHidden"] = 1
tNpcGossip[25847]["DialogueText"] = tValDayFW_Text[25847]
-- 【活动中】【等级未达到】
tNpcGossip[25847]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[25847]["tOption1-1"] = {111}
tNpcGossip[25847]["ChkFunc1-1"] = function()
	return not User_JudgeLevelAndMetempsychosis(tValDayFW_Const["Level"],tValDayFW_Const["Mete"])
end
-- 【活动中】【等级达到】【未救出赛维娅】
tNpcGossip[25847]["Text1-2"] = {111,112,114,116}
tNpcGossip[25847]["tOption1-2"] = {121}
tNpcGossip[25847]["ChkFunc1-2"] = function()
	return ValDayFW_GetStcValue(1) == 0
end
tNpcGossip[25847]["OptionFunc121"] = "NpcPosition_PathFind</N>25846"
-- 【活动中】【等级达到】【救出赛维娅】【前三天】
tNpcGossip[25847]["Text1-3"] = {111,131,132}
tNpcGossip[25847]["tOption1-3"] = {132}
tNpcGossip[25847]["ChkFunc1-3"] = function()
	ValDayFW_StcReset(2)
	return not Sys_ChkFullTime(tValDayFW_Time["1Week1Stage"]) and ValDayFW_GetStcValue(2) == 0
end
-- tNpcGossip[25847]["OptionPoint131"] = "2-1"
-- 进入监狱寻找巧克力
tNpcGossip[25847]["OptionFunc131"] = "ValDayFW_EnterPrisonFindCho"
tNpcGossip[25847]["OptionChkFunc131"] = function()
	if Sys_ChkFullTime(tValDayFW_Time["FirstDay"]) then
		return false
	end
	return ValDayFW_GetStcValue(5) == 0
end
-- tNpcGossip[25847]["OptionPoint132"] = "2-3"
-- 唤醒她
tNpcGossip[25847]["OptionFunc132"] = "ValDayFW_Awake</N>3600216"
tNpcGossip[25847]["OptionChkFunc132"] = function()
	return ValDayFW_GetStcValue(2) == 0
end
tNpcGossip[25847]["OptionFunc133"] = "LinkNpcGossipFunc_New</N>25837</S>2-1"
tNpcGossip[25847]["OptionFunc134"] = "LinkNpcGossipFunc_New</N>25837</S>3-1"
-- 【活动中】【等级达到】【救出赛维娅】【后三天】
tNpcGossip[25847]["Text1-4"] = {111,141,132}
tNpcGossip[25847]["tOption1-4"] = {132}
tNpcGossip[25847]["ChkFunc1-4"] = function()
	return not Sys_ChkFullTime(tValDayFW_Time["1Week2Stage"]) and ValDayFW_GetStcValue(2) == 0
end
-- 【活动中】【等级达到】【救出赛维娅】【最后一天】
tNpcGossip[25847]["Text1-5"] = {111,151,132}
tNpcGossip[25847]["tOption1-5"] = {132}
tNpcGossip[25847]["ChkFunc1-5"] = function()
	return not Sys_ChkFullTime(tValDayFW_Time["1Week3Stage"]) and ValDayFW_GetStcValue(2) == 0
end
-- 【活动中】【等级达到】【救出赛维娅】【最后一天】
tNpcGossip[25847]["Text1-6"] = {231,232,233,234,232,235,236,237}
tNpcGossip[25847]["tOption1-6"] = {235,134,133}
tNpcGossip[25847]["ChkFunc1-6"] = function()
	if Sys_ChkFullTime(tValDayFW_Time["1Week1Stage"]) then
		tNpcGossip[25847]["Text231"] = tNpcGossip[25847]["Text131"]
	elseif Sys_ChkFullTime(tValDayFW_Time["1Week2Stage"]) then
		tNpcGossip[25847]["Text231"] = tNpcGossip[25847]["Text141"]
	else
		tNpcGossip[25847]["Text231"] = tNpcGossip[25847]["Text151"]
	end
	return true
end
-- 【唤醒她】
tNpcGossip[25847]["Text2-1"] = {111,211,212,213,214,212,215,216,217}
tNpcGossip[25847]["tOption2-1"] = {211,212,213,214}
tNpcGossip[25847]["OptionFunc211"] = "ValDayFW_Awake</N>3600215"
tNpcGossip[25847]["OptionChkFunc211"] = function()
	return Get_CountItemType(3600215,0) > 0
end
tNpcGossip[25847]["OptionFunc212"] = "ValDayFW_Awake</N>3600216"
tNpcGossip[25847]["OptionChkFunc212"] = function()
	return Get_CountItemType(3600216,0) > 0
end
tNpcGossip[25847]["OptionFunc213"] = "ValDayFW_Awake</N>3600217"
tNpcGossip[25847]["OptionChkFunc213"] = function()
	return Get_CountItemType(3600217,0) > 0
end
tNpcGossip[25847]["OptionPoint214"] = "2-2"
tNpcGossip[25847]["OptionChkFunc214"] = function()
	if Get_CountItemType(3600215,0) == 0 and Get_CountItemType(3600216,0) == 0 and Get_CountItemType(3600217,0) == 0 then
		return true
	else
		return false
	end
end
-- 【背包中没有巧克力】
tNpcGossip[25847]["Text2-2"] = {111,221,222,223,224}
tNpcGossip[25847]["tOption2-2"] = {222}
tNpcGossip[25847]["OptionFunc221"] = "ValDayFW_EnterPrison"
tNpcGossip[25847]["OptionFunc222"] = "NpcPosition_PathFind</N>25846"
-- 【继续唤醒】
tNpcGossip[25847]["Text2-3"] = {231,232,233,234,232,235,236,237}
tNpcGossip[25847]["tOption2-3"] = {235,134,133}
tNpcGossip[25847]["ChkFunc2-3"] = function()
	if Sys_ChkFullTime(tValDayFW_Time["1Week1Stage"]) then
		tNpcGossip[25847]["Text231"] = tNpcGossip[25847]["Text131"]
	elseif Sys_ChkFullTime(tValDayFW_Time["1Week2Stage"]) then
		tNpcGossip[25847]["Text231"] = tNpcGossip[25847]["Text141"]
	else
		tNpcGossip[25847]["Text231"] = tNpcGossip[25847]["Text151"]
	end
	return true
end
tNpcGossip[25847]["OptionFunc231"] = "ValDayFW_GoOnAwake</N>3600215"
tNpcGossip[25847]["OptionChkFunc231"] = function()
	return Get_CountItemType(3600215,0) > 0
end
tNpcGossip[25847]["OptionFunc232"] = "ValDayFW_GoOnAwake</N>3600216"
tNpcGossip[25847]["OptionChkFunc232"] = function()
	return Get_CountItemType(3600216,0) > 0
end
tNpcGossip[25847]["OptionFunc233"] = "ValDayFW_GoOnAwake</N>3600217"
tNpcGossip[25847]["OptionChkFunc233"] = function()
	return Get_CountItemType(3600217,0) > 0
end
tNpcGossip[25847]["OptionFunc234"] = "ValDayFW_EatAllCho"
tNpcGossip[25847]["OptionChkFunc234"] = function()
	if Get_CountItemType(3600215,0) == 0 and Get_CountItemType(3600216,0) == 0 and Get_CountItemType(3600217,0) == 0 and Get_CountItemType(3315299,0) == 0 then
		return false
	else
		return true
	end
end
tNpcGossip[25847]["OptionFunc235"] = "ValDayFW_SubmitCho"
-- tNpcGossip[25847]["OptionChkFunc235"] = function()
	-- if Get_CountItemType(3600215,0) == 0 and Get_CountItemType(3600216,0) == 0 and Get_CountItemType(3600217,0) == 0 and Get_CountItemType(3315299,0) == 0 then
		-- return true
	-- else
		-- return false
	-- end
-- end
-- 【提交所有的巧克力】
tNpcGossip[25847]["Text2-4"] = {111,241}
tNpcGossip[25847]["tOption2-4"] = {241}
tNpcGossip[25847]["OptionFunc241"] = "ValDayFW_EatAllCho"
-- 【副本中救他出去】
tNpcGossip[25847]["Text3-1"] = {111,311}
tNpcGossip[25847]["tOption3-1"] = {311}
tNpcGossip[25847]["OptionFunc311"] = "ValDayFW_Save"
-- 【每日首次唤醒】
tNpcGossip[25847]["Text3-2"] = {111,321,322}
tNpcGossip[25847]["tOption3-2"] = {321}
tNpcGossip[25847]["OptionPoint321"] = "2-3"
---------------------------------物品部分---------------------------------------------
tItemFace[3315299] = 2828
tItemFace[3600215] = 2829
tItemFace[3600216] = 2830
tItemFace[3600217] = 2831
tItem[3315299] = tItem[3315299] or {}
tItem[3315299]["Function"] = function(nItemId,sItemName)
	if Sys_ChkFullTime(tValDayFW_Time["ActivityTime"]) then
		LinkItemGossipFunc_New(nItemId,"1-1")
	else
		local ValDayFW_tDel = CommonFunc_Copy(tValDayFW_TimeOut[nItemId])
		local ValDayFW_nDelNum = Get_CountItemType(nItemId,0)
		ValDayFW_tDel["DeleteItem"][1]["ItemNum"] = ValDayFW_nDelNum
		RewardTemplate_UseItemAndMsg(ValDayFW_tDel)
	end
end
tItem[3315299]["DialogueText"] = tValDayFW_Text[3315299]
tItem[3315299]["Text1-1"] = {111,112,113,114,112,116}
tItem[3315299]["tOption1-1"] = {111,113,114,112}
tItem[3315299]["OptionPoint111"] = "2-1"
tItem[3315299]["OptionPoint112"] = "2-2"
tItem[3315299]["OptionPoint113"] = "2-3"
tItem[3315299]["OptionPoint114"] = "2-4"
tItem[3315299]["OptionPoint115"] = "2-5"
-- 【制作巧克力】
tItem[3315299]["Text2-1"] = {211,212,214,215,212,216}
tItem[3315299]["tOption2-1"] = {211}
tItem[3315299]["OptionFunc211"] = "ValDayFW_MakeAllCho"
tItem[3315299]["ChkFunc2-1"] = function()
	local ValDayFW_nChoNum2,ValDayFW_nChoNum3,ValDayFW_nChoNum4 = ValDayFW_GetMakeChoNum()
	-- tItem[3315299]["Text213"] = string.format(tValDayFW_Text[3315299]["Text213"],ValDayFW_nChoNum1)
	tItem[3315299]["Text214"] = string.format(tValDayFW_Text[3315299]["Text214"],ValDayFW_nChoNum2)
	tItem[3315299]["Text215"] = string.format(tValDayFW_Text[3315299]["Text215"],ValDayFW_nChoNum3)
	tItem[3315299]["Text216"] = string.format(tValDayFW_Text[3315299]["Text216"],ValDayFW_nChoNum4)
	return true
end
-- 【巧克力的用途】
tItem[3315299]["Text2-2"] = {221,222,223,224,225,226,222}
tItem[3315299]["tOption2-2"] = {221}
-- 【制作甜心巧克力】
tItem[3315299]["Text2-3"] = {231}
tItem[3315299]["tOption2-3"] = {231,232}
tItem[3315299]["OptionFunc231"] = "ValDayFW_MakeCho</N>3600215</N>1"
tItem[3315299]["OptionFunc232"] = "ValDayFW_MakeCho</N>3600215</N>10"
-- 【制作浓情巧克力】
tItem[3315299]["Text2-4"] = {241}
tItem[3315299]["tOption2-4"] = {241,242}
tItem[3315299]["OptionFunc241"] = "ValDayFW_MakeCho</N>3600216</N>1"
tItem[3315299]["OptionFunc242"] = "ValDayFW_MakeCho</N>3600216</N>10"
-- 【制作真爱巧克力】
tItem[3315299]["Text2-5"] = {251}
tItem[3315299]["tOption2-5"] = {251,252}
tItem[3315299]["OptionFunc251"] = "ValDayFW_MakeCho</N>3600217</N>1"
tItem[3315299]["OptionFunc252"] = "ValDayFW_MakeCho</N>3600217</N>10"
-- 【甜心巧克力】
tItem[3600215] = tItem[3600215] or {}
tItem[3600215]["Function"] = function(nItemId,sItemName)
	if Sys_ChkFullTime(tValDayFW_Time["ActivityTime"]) then
		LinkItemGossipFunc_New(nItemId,"1-1")
	else
		local ValDayFW_tDel = CommonFunc_Copy(tValDayFW_TimeOut[nItemId])
		local ValDayFW_nDelNum = Get_CountItemType(nItemId,0)
		ValDayFW_tDel["DeleteItem"][1]["ItemNum"] = ValDayFW_nDelNum
		RewardTemplate_UseItemAndMsg(ValDayFW_tDel)
	end
end
tItem[3600215]["DialogueText"] = tValDayFW_Text[3600215]
tItem[3600215]["Text1-1"] = {111,112,117,113,114,115,112,116}
tItem[3600215]["tOption1-1"] = {111,112}
tItem[3600215]["OptionPoint111"] = "2-1"
tItem[3600215]["OptionPoint112"] = "3-1"
-- 【直接食用】
tItem[3600215]["Text2-1"] = {211}
tItem[3600215]["tOption2-1"] = {211,212}
tItem[3600215]["OptionFunc211"] = "ValDayFW_EatCho</N>3600215</N>1"
tItem[3600215]["OptionPoint212"] = "2-2"
tItem[3600215]["Text2-2"] = {221,222}
tItem[3600215]["tOption2-2"] = {221,222}
tItem[3600215]["OptionFunc221"] = "ValDayFW_EatCho</N>3600215</N>2"
tItem[3600215]["ChkFunc2-2"] = function()
	local ValDayFW_nItemNum = Get_CountItemType(3600215,0)
	tItem[3600215]["Text221"] = string.format(tValDayFW_Text[3600215]["Text221"],ValDayFW_nItemNum,ValDayFW_nItemNum*10)
	return true
end
-- 【升级浓情巧克力】
tItem[3600215]["Text3-1"] = {311}
tItem[3600215]["tOption3-1"] = {311,312}
tItem[3600215]["OptionFunc311"] = "ValDayFW_UpdateCho</N>3600215</N>1"
tItem[3600215]["OptionPoint312"] = "3-2"
tItem[3600215]["Text3-2"] = {321,322}
tItem[3600215]["tOption3-2"] = {321,322}
tItem[3600215]["OptionFunc321"] = "ValDayFW_UpdateCho</N>3600215</N>2"
tItem[3600215]["ChkFunc3-2"] = function()
	local ValDayFW_nItemNum = Get_CountItemType(3600215,0)
	tItem[3600215]["Text321"] = string.format(tValDayFW_Text[3600215]["Text321"],ValDayFW_nItemNum)
	return true
end
-- 【浓情巧克力】
tItem[3600216] = tItem[3600216] or {}
tItem[3600216]["Function"] = function(nItemId,sItemName)
	if Sys_ChkFullTime(tValDayFW_Time["ActivityTime"]) then
		LinkItemGossipFunc_New(nItemId,"1-1")
	else
		local ValDayFW_tDel = CommonFunc_Copy(tValDayFW_TimeOut[nItemId])
		local ValDayFW_nDelNum = Get_CountItemType(nItemId,0)
		ValDayFW_tDel["DeleteItem"][1]["ItemNum"] = ValDayFW_nDelNum
		RewardTemplate_UseItemAndMsg(ValDayFW_tDel)
	end
end
tItem[3600216]["DialogueText"] = tValDayFW_Text[3600216]
tItem[3600216]["Text1-1"] = {111,112,117,113,114,115,112,116}
tItem[3600216]["tOption1-1"] = {111,112}
tItem[3600216]["OptionPoint111"] = "2-1"
-- tItem[3600216]["OptionPoint112"] = "3-1"
-- 【直接食用】
tItem[3600216]["Text2-1"] = {211}
tItem[3600216]["tOption2-1"] = {211,212}
tItem[3600216]["OptionFunc211"] = "ValDayFW_EatCho</N>3600216</N>1"
tItem[3600216]["OptionPoint212"] = "2-2"
tItem[3600216]["Text2-2"] = {221,222}
tItem[3600216]["tOption2-2"] = {221,222}
tItem[3600216]["OptionFunc221"] = "ValDayFW_EatCho</N>3600216</N>2"
tItem[3600216]["ChkFunc2-2"] = function()
	local ValDayFW_nItemNum = Get_CountItemType(3600216,0)
	tItem[3600216]["Text221"] = string.format(tValDayFW_Text[3600216]["Text221"],ValDayFW_nItemNum,ValDayFW_nItemNum*100)
	return true
end
-- 【升级真爱巧克力】
tItem[3600216]["Text3-1"] = {311}
tItem[3600216]["tOption3-1"] = {311,312}
tItem[3600216]["OptionFunc311"] = "ValDayFW_UpdateCho</N>3600216</N>1"
tItem[3600216]["OptionPoint312"] = "3-2"
tItem[3600216]["Text3-2"] = {321,322}
tItem[3600216]["tOption3-2"] = {321,322}
tItem[3600216]["OptionFunc321"] = "ValDayFW_UpdateCho</N>3600216</N>2"
tItem[3600216]["ChkFunc3-2"] = function()
	local ValDayFW_nItemNum = Get_CountItemType(3600216,0)
	tItem[3600216]["Text321"] = string.format(tValDayFW_Text[3600216]["Text321"],ValDayFW_nItemNum)
	return true
end
-- 【真情巧克力】
tItem[3600217] = tItem[3600217] or {}
tItem[3600217]["Function"] = function(nItemId,sItemName)
	if Sys_ChkFullTime(tValDayFW_Time["ActivityTime"]) then
		LinkItemGossipFunc_New(nItemId,"1-1")
	else
		local ValDayFW_tDel = CommonFunc_Copy(tValDayFW_TimeOut[nItemId])
		local ValDayFW_nDelNum = Get_CountItemType(nItemId,0)
		ValDayFW_tDel["DeleteItem"][1]["ItemNum"] = ValDayFW_nDelNum
		RewardTemplate_UseItemAndMsg(ValDayFW_tDel)
	end
end
tItem[3600217]["DialogueText"] = tValDayFW_Text[3600217]
tItem[3600217]["Text1-1"] = {111,112,117,113,114,115,112,116}
tItem[3600217]["tOption1-1"] = {111,112}
tItem[3600217]["OptionPoint111"] = "2-1"
-- 【直接食用】
tItem[3600217]["Text2-1"] = {211}
tItem[3600217]["tOption2-1"] = {211,212}
tItem[3600217]["OptionFunc211"] = "ValDayFW_EatCho</N>3600217</N>1"
tItem[3600217]["OptionPoint212"] = "2-2"
tItem[3600217]["Text2-2"] = {221,222}
tItem[3600217]["tOption2-2"] = {221,222}
tItem[3600217]["OptionFunc221"] = "ValDayFW_EatCho</N>3600217</N>2"
tItem[3600217]["ChkFunc2-2"] = function()
	local ValDayFW_nItemNum = Get_CountItemType(3600217,0)
	tItem[3600217]["Text221"] = string.format(tValDayFW_Text[3600216]["Text221"],ValDayFW_nItemNum,ValDayFW_nItemNum*1000)
	return true
end

tTrap[2525] = tTrap[2525] or {}
tTrap[2525]["Function"] = function(nTrapId,nTrapType)
	local sFunc = "ValDayFW_BackDragon"
	Sys_MsgBox(tValDayFW_Text["BackDragon"],sFunc)
end
---------------------------------怪物部分---------------------------------------------
-- 副本清小怪
local tValDayFW_KillMonster = {}
tValDayFW_KillMonster["Function"]= ValDayFW_KillMonster
tValDayFW_KillMonster["MonsterId"] = {1284}
table.insert(tMonsterDrop_AreaLoad,tValDayFW_KillMonster)
local tValDayFW_KillRareMonster = {}
tValDayFW_KillRareMonster["Function"]= ValDayFW_KillRareMonster
tValDayFW_KillRareMonster["MonsterId"] = {1285}
table.insert(tMonsterDrop_AreaLoad,tValDayFW_KillRareMonster)
-- 典狱长
local tValDayFW_KillBoss = {}
tValDayFW_KillBoss["Function"]= ValDayFW_KillBoss
tValDayFW_KillBoss["MonsterId"] = {1286}
table.insert(tMonsterDrop_AreaLoad,tValDayFW_KillBoss)
-- 典狱长
local tValDayFW_KillStoryBoss = {}
tValDayFW_KillStoryBoss["Function"]= ValDayFW_KillStoryBoss
tValDayFW_KillStoryBoss["MonsterId"] = {1287}
table.insert(tMonsterDrop_AreaLoad,tValDayFW_KillStoryBoss)
--------------------------------------------上线触发---------------------------------------
-- 上线接任务
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,ValDayFW_LogIn)

tLuaEffectEnd["tFunction"] = tLuaEffectEnd["tFunction"] or {}
table.insert(tLuaEffectEnd["tFunction"],ValDayFW_KillMonsterPlot)