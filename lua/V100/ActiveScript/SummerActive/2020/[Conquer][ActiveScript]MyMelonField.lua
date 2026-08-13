------------------------------------------------------------------------------------
--Name:			200514[简体征服][活动脚本]全球暑期活动
--Creator:		郑飞
--Created:		2020-05-14
------------------------------------------------------------------------------------
-- 任务需求：
	-- 我的瓜田
		-- 个人副本，不可记录。
		-- 在瓜地，消耗西瓜籽可以种瓜，每棵西瓜需要消耗10分钟才可成熟。
		-- 可以进行催熟，催熟会获得“催熟的西瓜”
		-- 亦可等待自然成熟，自然成熟后采摘会获得“成熟的西瓜”
		-- 两种西瓜都可以自己吃，会获得奖励， 亦可在领取订单后提交，也快获得不同的奖励。
		-- 瓜田中，每10分钟会刷出1只猹，击败猹后，可以获得西瓜籽，最多出现3只猹。
		-- 偷瓜
			-- 从瓜田地图内，有个透明npc，点击后，可进入后随机传送到其他瓜田副本（做成假的）。
			-- 每日有3次的进入机会，每次相隔30分钟。
			-- 在其他的瓜田副本中，会种满9个西瓜， 随机3~6个西瓜是成熟的，其他的不成熟。
			-- 在其他的瓜田副本中， 概率刷出1~3只异国的猹，击败后，可以获得1个精装神器礼包。
			-- 文字包装上，把这个瓜田包装成其他国家的玩家所属。

-- logid:	12001988,5[]
-- tActivityTime["SummerActive"] = {}
-- tActivityTime["SummerActive"]["ActivityTime"] = "2020-07-07 00:00 2020-07-20 23:59"
-- tActivityTime["SummerActive"]["EnterActivityTime"] = "2020-07-07 17:00 2020-07-20 23:59"

-- 活动地图坐标
-- 10869 55 55

-- stc(222,22)-(222,33),stc(222,96)
-- stc(222,22)-(222,30)		记录1-9块田地的种植情况	0为未种植	1为已种植		2为自然成熟		3为催熟
-- stc(222,31)				记录前往异国瓜田的次数	上限3
-- stc(222,32)				记录异国偷瓜的个数	上限10
-- stc(222,33)				记录瓜田刷猹的次数	上限3
-- stc(222,96)				记录获得精装神器礼包的个数	上限3
-- stc(300,02)				记录仲夏积分

-- 命名规范：
-- MyMelonField_

-- 41846 = V100\ActiveScript\SummerActive\2020\[Conquer][ActiveScript]MyMelonField.lua
-- 41846 = V100\活动脚本\暑期活动\2020\[征服][活动脚本]全球暑期活动.lua

----------------------------------表数据配置部分-------------------------------------
local tMyMelonField_Data = {}
	--活动时间
	tMyMelonField_Data["ActivityTime"] = tActivityTime["SummerActive"]["ActivityTime"]
	tMyMelonField_Data["EnterActivityTime"] = tActivityTime["SummerActive"]["EnterActivityTime"]
	
	--等级限制
	tMyMelonField_Data["nLevel"] = 0
	tMyMelonField_Data["nMetempsychosis"] = 2
	
	-- 成熟时间
	tMyMelonField_Data["Times"] = 10
	-- 进入异国瓜田副本时间间隔
	tMyMelonField_Data["EnterTimes"] = 30
	
	--随机数
	tMyMelonField_Data["nStartNum"] = 3
	tMyMelonField_Data["nEndNum"] = 6
	
	--读条
	tMyMelonField_Data["Secs"] = 1
	tMyMelonField_Data["ActionId"] = 280
	
	-- 扣除修为值
	tMyMelonField_Data["Culture"] = 100
	
	-- 随机玩家名字数量
	tMyMelonField_Data["nUserNum"] = 10
	tMyMelonField_Data["nLanguages"] = {}
	tMyMelonField_Data["nLanguages"][1] = {1,3}
	tMyMelonField_Data["nLanguages"][2] = {1,3}
	tMyMelonField_Data["nLanguages"][3] = {2,3}
	tMyMelonField_Data["nLanguages"][4] = {2,4}
	
	-- 偷瓜成功的概率
	tMyMelonField_Data["nSteal"] = 30
	tMyMelonField_Data["nTotal"] = 100
	
-- 记录异国瓜田的成熟情况
local tMyMelonField_Record = {}
	
-- 记录异国瓜田的偷瓜次数
local tMyMelonField_Steal = {}

--NPCid
local tMyMelonField_NpcId = {}
	tMyMelonField_NpcId["Main"] = 26579
	tMyMelonField_NpcId["Filed"] = 26580
	tMyMelonField_NpcId["Melon"] = 26581
	tMyMelonField_NpcId["Path"] = 26582
	tMyMelonField_NpcId["Enter"] = 26583

local tMyMelonField_ItemId = {}
	tMyMelonField_ItemId["Seed"] = 3316274
	tMyMelonField_ItemId["Pack"] = 3322773

-- 副本配置
local tMyMelonField_Instance = {}
	tMyMelonField_Instance[1] = {}
	tMyMelonField_Instance[1]["Id"] = 424
	tMyMelonField_Instance[1]["MapDoc"] = 10282
	
	tMyMelonField_Instance[2] = {}
	tMyMelonField_Instance[2]["Id"] = 425
	tMyMelonField_Instance[2]["MapDoc"] = 10282

-- 位置
local tMyMelonField_Pos = {}
	--返回地图坐标
	tMyMelonField_Pos["Return"] = {}
	tMyMelonField_Pos["Return"]["MapId"] = 10869
	tMyMelonField_Pos["Return"]["PosX"] = 56
	tMyMelonField_Pos["Return"]["PosY"] = 63
	
	-- 瓜田位置
	tMyMelonField_Pos["Plant"] = {}
	tMyMelonField_Pos["Plant"][1] = {}
	tMyMelonField_Pos["Plant"][1]["nPosX"] = 26
	tMyMelonField_Pos["Plant"][1]["nPosY"] = 31
	tMyMelonField_Pos["Plant"][2] = {}
	tMyMelonField_Pos["Plant"][2]["nPosX"] = 26
	tMyMelonField_Pos["Plant"][2]["nPosY"] = 28
	tMyMelonField_Pos["Plant"][3] = {}
	tMyMelonField_Pos["Plant"][3]["nPosX"] = 26
	tMyMelonField_Pos["Plant"][3]["nPosY"] = 25
	tMyMelonField_Pos["Plant"][4] = {}
	tMyMelonField_Pos["Plant"][4]["nPosX"] = 29
	tMyMelonField_Pos["Plant"][4]["nPosY"] = 31
	tMyMelonField_Pos["Plant"][5] = {}
	tMyMelonField_Pos["Plant"][5]["nPosX"] = 29
	tMyMelonField_Pos["Plant"][5]["nPosY"] = 28
	tMyMelonField_Pos["Plant"][6] = {}
	tMyMelonField_Pos["Plant"][6]["nPosX"] = 29
	tMyMelonField_Pos["Plant"][6]["nPosY"] = 25
	tMyMelonField_Pos["Plant"][7] = {}
	tMyMelonField_Pos["Plant"][7]["nPosX"] = 32
	tMyMelonField_Pos["Plant"][7]["nPosY"] = 31
	tMyMelonField_Pos["Plant"][8] = {}
	tMyMelonField_Pos["Plant"][8]["nPosX"] = 32
	tMyMelonField_Pos["Plant"][8]["nPosY"] = 28
	tMyMelonField_Pos["Plant"][9] = {}
	tMyMelonField_Pos["Plant"][9]["nPosX"] = 32
	tMyMelonField_Pos["Plant"][9]["nPosY"] = 25
	
	-- 猹
	tMyMelonField_Pos["Monster"] = {}
	tMyMelonField_Pos["Monster"][1] = {}
	tMyMelonField_Pos["Monster"][1]["nPosX"] = 37
	tMyMelonField_Pos["Monster"][1]["nPosY"] = 21
	tMyMelonField_Pos["Monster"][2] = {}
	tMyMelonField_Pos["Monster"][2]["nPosX"] = 33
	tMyMelonField_Pos["Monster"][2]["nPosY"] = 20
	tMyMelonField_Pos["Monster"][3] = {}
	tMyMelonField_Pos["Monster"][3]["nPosX"] = 37
	tMyMelonField_Pos["Monster"][3]["nPosY"] = 24
	
	-- 林间小道
	tMyMelonField_Pos["Path"] = {}
	tMyMelonField_Pos["Path"][1] = {}
	tMyMelonField_Pos["Path"][1]["nPosX"] = 32
	tMyMelonField_Pos["Path"][1]["nPosY"] = 13
	tMyMelonField_Pos["Path"][2] = {}
	tMyMelonField_Pos["Path"][2]["nPosX"] = 10
	tMyMelonField_Pos["Path"][2]["nPosY"] = 28
	
	
	tMyMelonField_Pos["GoTo"] = {}
	-- 寻路到田埂
	tMyMelonField_Pos["GoTo"][1] = {}
	tMyMelonField_Pos["GoTo"][1]["nPosX"] = 23
	tMyMelonField_Pos["GoTo"][1]["nPosY"] = 27
	-- 寻路到猹
	tMyMelonField_Pos["GoTo"][2] = {}
	tMyMelonField_Pos["GoTo"][2]["nPosX"] = 34
	tMyMelonField_Pos["GoTo"][2]["nPosY"] = 21
	
--动态npc
local tMyMelonField_DynaNpc = {}
	tMyMelonField_DynaNpc["Sort"] = 1
	tMyMelonField_DynaNpc["Type"] = 2
	
	--闰土
	tMyMelonField_DynaNpc[26579] = {}
	tMyMelonField_DynaNpc[26579]["Name"] = tMyMelonField_Text["NpcName"][26579]
	tMyMelonField_DynaNpc[26579]["Lookface"] = 25530
	tMyMelonField_DynaNpc[26579]["nPosX"] = 18
	tMyMelonField_DynaNpc[26579]["nPosY"] = 29
	tMyMelonField_DynaNpc[26579]["Taskid"] = {}
	tMyMelonField_DynaNpc[26579]["Taskid"][1] = 94492454
	tMyMelonField_DynaNpc[26579]["Taskid"][2] = 94492455
	
	--田埂
	tMyMelonField_DynaNpc[26580] = {}
	tMyMelonField_DynaNpc[26580]["Name"] = tMyMelonField_Text["NpcName"][26580]
	tMyMelonField_DynaNpc[26580]["Lookface"] = 25540
	tMyMelonField_DynaNpc[26580]["Taskid"] = {}
	tMyMelonField_DynaNpc[26580]["Taskid"][1] = 94492456
	
	-- 西瓜
	tMyMelonField_DynaNpc[26581] = {}
	tMyMelonField_DynaNpc[26581]["Name"] = tMyMelonField_Text["NpcName"][26580]
	tMyMelonField_DynaNpc[26581]["Lookface"] = 25550
	tMyMelonField_DynaNpc[26581]["Taskid"] = {}
	tMyMelonField_DynaNpc[26581]["Taskid"][1] = 94492457
	tMyMelonField_DynaNpc[26581]["Taskid"][2] = 94492458
	-- 异国西瓜新增外形
	tMyMelonField_DynaNpc[26581][1] = {}
	tMyMelonField_DynaNpc[26581][1]["Lookface"] = 25750
	tMyMelonField_DynaNpc[26581][2] = {}
	tMyMelonField_DynaNpc[26581][2]["Lookface"] = 25760
	
	-- 林间小道
	tMyMelonField_DynaNpc[26582] = {}
	tMyMelonField_DynaNpc[26582]["Name"] = tMyMelonField_Text["NpcName"][26582]
	tMyMelonField_DynaNpc[26582]["Lookface"] = 25560
	tMyMelonField_DynaNpc[26582]["nPosX"] = 32
	tMyMelonField_DynaNpc[26582]["nPosY"] = 13
	tMyMelonField_DynaNpc[26582]["Taskid"] = {}
	tMyMelonField_DynaNpc[26582]["Taskid"][1] = 94492459
	tMyMelonField_DynaNpc[26582]["Taskid"][2] = 94492460

-- 怪物配置
local tMyMelonField_Monster={}
	tMyMelonField_Monster[1] = {}
	tMyMelonField_Monster[1]["Id"] = 4066
	tMyMelonField_Monster[1]["GenId"] = 31057
	
	tMyMelonField_Monster[2] = {}
	tMyMelonField_Monster[2]["Id"] = 4089
	tMyMelonField_Monster[2]["GenId"] = 31058

local tMyMelonField_Trap = {}
	tMyMelonField_Trap[1]={}
	tMyMelonField_Trap[1]["TrapType"]=238
	tMyMelonField_Trap[1]["Look"]=811
	tMyMelonField_Trap[1][1]={}
	tMyMelonField_Trap[1][1]["PosX"]=9
	tMyMelonField_Trap[1][1]["PosY"]=28

--Log
local tMyMelonField_Log = {}
	tMyMelonField_Log["Log"] = {}
	tMyMelonField_Log["Log"][1] = "0,0,%d,1,12001988,5[1],0,0"
	tMyMelonField_Log["Log"][2] = "0,0,10,1,12001988,5[1],0,0"

--掩码
local tMyMelonField_Stc = {}
	--记录1-9块田地的种植情况	0为未种植	1为已种植		2为自然成熟		3为催熟
	tMyMelonField_Stc[1] = {}
	tMyMelonField_Stc[1]["EventType"] = 222
	tMyMelonField_Stc[1]["DataType"] = 22
	tMyMelonField_Stc[2] = {}
	tMyMelonField_Stc[2]["EventType"] = 222
	tMyMelonField_Stc[2]["DataType"] = 23
	tMyMelonField_Stc[3] = {}
	tMyMelonField_Stc[3]["EventType"] = 222
	tMyMelonField_Stc[3]["DataType"] = 24
	tMyMelonField_Stc[4] = {}
	tMyMelonField_Stc[4]["EventType"] = 222
	tMyMelonField_Stc[4]["DataType"] = 25
	tMyMelonField_Stc[5] = {}
	tMyMelonField_Stc[5]["EventType"] = 222
	tMyMelonField_Stc[5]["DataType"] = 26
	tMyMelonField_Stc[6] = {}
	tMyMelonField_Stc[6]["EventType"] = 222
	tMyMelonField_Stc[6]["DataType"] = 27
	tMyMelonField_Stc[7] = {}
	tMyMelonField_Stc[7]["EventType"] = 222
	tMyMelonField_Stc[7]["DataType"] = 28
	tMyMelonField_Stc[8] = {}
	tMyMelonField_Stc[8]["EventType"] = 222
	tMyMelonField_Stc[8]["DataType"] = 29
	tMyMelonField_Stc[9] = {}
	tMyMelonField_Stc[9]["EventType"] = 222
	tMyMelonField_Stc[9]["DataType"] = 30
	
	-- 记录前往异国瓜田的次数	上限3
	tMyMelonField_Stc[10] = {}
	tMyMelonField_Stc[10]["EventType"] = 222
	tMyMelonField_Stc[10]["DataType"] = 31
	tMyMelonField_Stc[10]["Limit"] = 3
	
	--记录异国偷瓜的个数	上限10
	tMyMelonField_Stc[11] = {}
	tMyMelonField_Stc[11]["EventType"] = 222
	tMyMelonField_Stc[11]["DataType"] = 32
	tMyMelonField_Stc[11]["Limit"] = 10
	
	--记录瓜田刷猹的次数	上限3
	tMyMelonField_Stc[12] = {}
	tMyMelonField_Stc[12]["EventType"] = 222
	tMyMelonField_Stc[12]["DataType"] = 33
	tMyMelonField_Stc[12]["Limit"] = 3
	
	-- 记录仲夏积分
	tMyMelonField_Stc[13] = {}
	tMyMelonField_Stc[13]["EventType"] = 300
	tMyMelonField_Stc[13]["DataType"] = 2
	tMyMelonField_Stc[13][3331103] = 3
	tMyMelonField_Stc[13][3331104] = 5
	
----------------------------------奖励配置---------------------------------------------
local tMyMelonField_Reward = {}
	tMyMelonField_Reward[3331103] = {}
	-- ===催熟的西瓜
	-- ===（品尝奖励）
	-- ===索引:tMyMelonField_Reward[3331103][1]
	-- ===删除:3331103,1
	-- RewardTemplate_RandomReward(tMyMelonField_Reward[3331103],1)
	tMyMelonField_Reward[3331103][1] = {}
	tMyMelonField_Reward[3331103][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tMyMelonField_Reward[3331103][1]["DeleteItem"] = {}
	tMyMelonField_Reward[3331103][1]["DeleteItem"][1] = {}
	tMyMelonField_Reward[3331103][1]["DeleteItem"][1]["Id"] = 3331103 -- 【库】催熟的西瓜[属性:9]
	tMyMelonField_Reward[3331103][1]["LogId"] = 12001988
	-- 坐骑外套碎片 - 5%
	tMyMelonField_Reward[3331103][1][1] = {}
	tMyMelonField_Reward[3331103][1][1]["RandomItemChanceType"] = 2
	tMyMelonField_Reward[3331103][1][1]["ItemChance"] = 500
	tMyMelonField_Reward[3331103][1][1]["RewardItem"] = {}
	tMyMelonField_Reward[3331103][1][1]["RewardItem"][1] = {}
	tMyMelonField_Reward[3331103][1][1]["RewardItem"][1]["Id"] = 3331121 --  3331121 【cnzf1库里没有该物品】, 【表格】坐骑外套碎片
	tMyMelonField_Reward[3331103][1][1]["RewardItem"][1]["Attr"] = "0 1" --  3331121 【cnzf1库里没有该物品】*1
	tMyMelonField_Reward[3331103][1][1]["RewardEffect"] = {}
	tMyMelonField_Reward[3331103][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMyMelonField_Reward[3331103][1][1]["RewardEffect"]["Effect"] = "angelwing"
			-- 【动态掩码（54473, data0）】全服限量:（112）, 超限给编号（10）-
	tMyMelonField_Reward[3331103][1][1]["GlobalId"] = 54473
	tMyMelonField_Reward[3331103][1][1]["Pos"] = 0
	tMyMelonField_Reward[3331103][1][1]["MaxData"] = 112
	tMyMelonField_Reward[3331103][1][1]["FullIndex"] = 10
			-- 【动态掩码（54473, data1）】单日限量:（8）, 超限给编号（10）-
	tMyMelonField_Reward[3331103][1][1]["OtherPos"] = 1
	tMyMelonField_Reward[3331103][1][1]["OtherMaxData"] = 8
	tMyMelonField_Reward[3331103][1][1]["OtherFullIndex"] = 10
	-- 300万爵位勋章 - 8%
	tMyMelonField_Reward[3331103][1][2] = {}
	tMyMelonField_Reward[3331103][1][2]["RandomItemChanceType"] = 2
	tMyMelonField_Reward[3331103][1][2]["ItemChance"] = 800
	tMyMelonField_Reward[3331103][1][2]["RewardItem"] = {}
	tMyMelonField_Reward[3331103][1][2]["RewardItem"][1] = {}
	tMyMelonField_Reward[3331103][1][2]["RewardItem"][1]["Id"] = 3322760 -- 300万爵位勋章[3322760][属性:8][叠加:1][金币:0], 【表格】300万爵位勋章
	tMyMelonField_Reward[3331103][1][2]["RewardItem"][1]["Attr"] = "0 1 3" -- 300万爵位勋章（赠）*1
	tMyMelonField_Reward[3331103][1][2]["RewardEffect"] = {}
	tMyMelonField_Reward[3331103][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMyMelonField_Reward[3331103][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 乾坤神器宝盒 - 5%
	tMyMelonField_Reward[3331103][1][3] = {}
	tMyMelonField_Reward[3331103][1][3]["RandomItemChanceType"] = 2
	tMyMelonField_Reward[3331103][1][3]["ItemChance"] = 500
	tMyMelonField_Reward[3331103][1][3]["RewardItem"] = {}
	tMyMelonField_Reward[3331103][1][3]["RewardItem"][1] = {}
	tMyMelonField_Reward[3331103][1][3]["RewardItem"][1]["Id"] = 3314913 -- 乾坤神器宝盒[3314913][属性:9][叠加:10000][金币:0], 【表格】乾坤神器宝盒
	tMyMelonField_Reward[3331103][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 乾坤神器宝盒*1
	tMyMelonField_Reward[3331103][1][3]["RewardEffect"] = {}
	tMyMelonField_Reward[3331103][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMyMelonField_Reward[3331103][1][3]["RewardEffect"]["Effect"] = "angelwing"
			-- 【动态掩码（54473, data4）】全服限量:（700）, 超限给编号（10）-
	tMyMelonField_Reward[3331103][1][3]["GlobalId"] = 54473
	tMyMelonField_Reward[3331103][1][3]["Pos"] = 4
	tMyMelonField_Reward[3331103][1][3]["MaxData"] = 700
	tMyMelonField_Reward[3331103][1][3]["FullIndex"] = 10
			-- 【动态掩码（54473, data5）】单日限量:（50）, 超限给编号（10）-
	tMyMelonField_Reward[3331103][1][3]["OtherPos"] = 5
	tMyMelonField_Reward[3331103][1][3]["OtherMaxData"] = 50
	tMyMelonField_Reward[3331103][1][3]["OtherFullIndex"] = 10
	-- 赤炼石+2 - 18%
	tMyMelonField_Reward[3331103][1][4] = {}
	tMyMelonField_Reward[3331103][1][4]["RandomItemChanceType"] = 2
	tMyMelonField_Reward[3331103][1][4]["ItemChance"] = 1800
	tMyMelonField_Reward[3331103][1][4]["RewardItem"] = {}
	tMyMelonField_Reward[3331103][1][4]["RewardItem"][1] = {}
	tMyMelonField_Reward[3331103][1][4]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石[730002][属性:0][叠加:0][金币:0], 【表格】赤炼石+2
	tMyMelonField_Reward[3331103][1][4]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+2赤炼石（赠）*1
	tMyMelonField_Reward[3331103][1][4]["RewardEffect"] = {}
	tMyMelonField_Reward[3331103][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMyMelonField_Reward[3331103][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 微光星陨石 - 18%
	tMyMelonField_Reward[3331103][1][5] = {}
	tMyMelonField_Reward[3331103][1][5]["RandomItemChanceType"] = 2
	tMyMelonField_Reward[3331103][1][5]["ItemChance"] = 1800
	tMyMelonField_Reward[3331103][1][5]["RewardItem"] = {}
	tMyMelonField_Reward[3331103][1][5]["RewardItem"][1] = {}
	tMyMelonField_Reward[3331103][1][5]["RewardItem"][1]["Id"] = 3009000 -- 微光星陨石[3009000][属性:9][叠加:0][金币:0], 【表格】微光星陨石
	tMyMelonField_Reward[3331103][1][5]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的微光星陨石*5
	tMyMelonField_Reward[3331103][1][5]["RewardEffect"] = {}
	tMyMelonField_Reward[3331103][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMyMelonField_Reward[3331103][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 修为值 - 14%
	tMyMelonField_Reward[3331103][1][6] = {}
	tMyMelonField_Reward[3331103][1][6]["RandomItemChanceType"] = 2
	tMyMelonField_Reward[3331103][1][6]["ItemChance"] = 1400
	tMyMelonField_Reward[3331103][1][6]["RewardRepairValue"] = {}
	tMyMelonField_Reward[3331103][1][6]["RewardRepairValue"]["Value"] = 300 -- 修为值, 【需求】修为值
	tMyMelonField_Reward[3331103][1][6]["RewardEffect"] = {}
	tMyMelonField_Reward[3331103][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMyMelonField_Reward[3331103][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 12%
	tMyMelonField_Reward[3331103][1][7] = {}
	tMyMelonField_Reward[3331103][1][7]["RandomItemChanceType"] = 2
	tMyMelonField_Reward[3331103][1][7]["ItemChance"] = 1200
	tMyMelonField_Reward[3331103][1][7]["RewardItem"] = {}
	tMyMelonField_Reward[3331103][1][7]["RewardItem"][1] = {}
	tMyMelonField_Reward[3331103][1][7]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tMyMelonField_Reward[3331103][1][7]["RewardItem"][1]["Attr"] = "0 5 3" -- 万能神纹精粹*5
	tMyMelonField_Reward[3331103][1][7]["RewardEffect"] = {}
	tMyMelonField_Reward[3331103][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMyMelonField_Reward[3331103][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 究极通神丹 - 6%
	tMyMelonField_Reward[3331103][1][8] = {}
	tMyMelonField_Reward[3331103][1][8]["RandomItemChanceType"] = 2
	tMyMelonField_Reward[3331103][1][8]["ItemChance"] = 600
	tMyMelonField_Reward[3331103][1][8]["RewardItem"] = {}
	tMyMelonField_Reward[3331103][1][8]["RewardItem"][1] = {}
	tMyMelonField_Reward[3331103][1][8]["RewardItem"][1]["Id"] = 3003126 -- 究极通神丹[3003126][属性:0][叠加:10000][金币:0], 【表格】究极通神丹
	tMyMelonField_Reward[3331103][1][8]["RewardItem"][1]["Attr"] = "0 3 3" -- 究极通神丹*3
	tMyMelonField_Reward[3331103][1][8]["RewardEffect"] = {}
	tMyMelonField_Reward[3331103][1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMyMelonField_Reward[3331103][1][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 5%
	tMyMelonField_Reward[3331103][1][9] = {}
	tMyMelonField_Reward[3331103][1][9]["RandomItemChanceType"] = 2
	tMyMelonField_Reward[3331103][1][9]["ItemChance"] = 500
	tMyMelonField_Reward[3331103][1][9]["RewardItem"] = {}
	tMyMelonField_Reward[3331103][1][9]["RewardItem"][1] = {}
	tMyMelonField_Reward[3331103][1][9]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果
	tMyMelonField_Reward[3331103][1][9]["RewardItem"][1]["Attr"] = "0 2" -- 人参果*2
	tMyMelonField_Reward[3331103][1][9]["RewardEffect"] = {}
	tMyMelonField_Reward[3331103][1][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMyMelonField_Reward[3331103][1][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 气力值 - 9%
	tMyMelonField_Reward[3331103][1][10] = {}
	tMyMelonField_Reward[3331103][1][10]["RandomItemChanceType"] = 2
	tMyMelonField_Reward[3331103][1][10]["ItemChance"] = 900
	tMyMelonField_Reward[3331103][1][10]["RewardStrengthValue"] = {}
	tMyMelonField_Reward[3331103][1][10]["RewardStrengthValue"]["Value"] = 200 -- 气力值, 【需求】气力值
	tMyMelonField_Reward[3331103][1][10]["RewardEffect"] = {}
	tMyMelonField_Reward[3331103][1][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMyMelonField_Reward[3331103][1][10]["RewardEffect"]["Effect"] = "angelwing"


	-- ===催熟的西瓜
	-- ===（品尝奖励）
	-- ===索引:tMyMelonField_Reward[3331103][2]
	-- ===删除:3331103,1
	-- RewardTemplate_RandomReward(tMyMelonField_Reward[3331103],2)
	tMyMelonField_Reward[3331103][2] = {}
	tMyMelonField_Reward[3331103][2]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tMyMelonField_Reward[3331103][2]["DeleteItem"] = {}
	tMyMelonField_Reward[3331103][2]["DeleteItem"][1] = {}
	tMyMelonField_Reward[3331103][2]["DeleteItem"][1]["Id"] = 3331103 -- 【库】催熟的西瓜[属性:9]
	tMyMelonField_Reward[3331103][2]["LogId"] = 12001988
	-- 坐骑外套碎片 - 5%
	tMyMelonField_Reward[3331103][2][1] = {}
	tMyMelonField_Reward[3331103][2][1]["RandomItemChanceType"] = 2
	tMyMelonField_Reward[3331103][2][1]["ItemChance"] = 500
	tMyMelonField_Reward[3331103][2][1]["RewardItem"] = {}
	tMyMelonField_Reward[3331103][2][1]["RewardItem"][1] = {}
	tMyMelonField_Reward[3331103][2][1]["RewardItem"][1]["Id"] = 3331121 --  3331121 【cnzf1库里没有该物品】, 【表格】坐骑外套碎片
	tMyMelonField_Reward[3331103][2][1]["RewardItem"][1]["Attr"] = "0 1" --  3331121 【cnzf1库里没有该物品】*1
	tMyMelonField_Reward[3331103][2][1]["RewardEffect"] = {}
	tMyMelonField_Reward[3331103][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMyMelonField_Reward[3331103][2][1]["RewardEffect"]["Effect"] = "angelwing"
			-- 【动态掩码（54473, data0）】全服限量:（112）, 超限给编号（10）-
	tMyMelonField_Reward[3331103][2][1]["GlobalId"] = 54473
	tMyMelonField_Reward[3331103][2][1]["Pos"] = 0
	tMyMelonField_Reward[3331103][2][1]["MaxData"] = 112
	tMyMelonField_Reward[3331103][2][1]["FullIndex"] = 10
			-- 【动态掩码（54473, data1）】单日限量:（8）, 超限给编号（10）-
	tMyMelonField_Reward[3331103][2][1]["OtherPos"] = 1
	tMyMelonField_Reward[3331103][2][1]["OtherMaxData"] = 8
	tMyMelonField_Reward[3331103][2][1]["OtherFullIndex"] = 10
	-- 300万爵位勋章 - 8%
	tMyMelonField_Reward[3331103][2][2] = {}
	tMyMelonField_Reward[3331103][2][2]["RandomItemChanceType"] = 2
	tMyMelonField_Reward[3331103][2][2]["ItemChance"] = 800
	tMyMelonField_Reward[3331103][2][2]["RewardItem"] = {}
	tMyMelonField_Reward[3331103][2][2]["RewardItem"][1] = {}
	tMyMelonField_Reward[3331103][2][2]["RewardItem"][1]["Id"] = 3322760 -- 300万爵位勋章[3322760][属性:8][叠加:1][金币:0], 【表格】300万爵位勋章
	tMyMelonField_Reward[3331103][2][2]["RewardItem"][1]["Attr"] = "0 1 3" -- 300万爵位勋章（赠）*1
	tMyMelonField_Reward[3331103][2][2]["RewardEffect"] = {}
	tMyMelonField_Reward[3331103][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMyMelonField_Reward[3331103][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 气力值 - 5%
	tMyMelonField_Reward[3331103][2][3] = {}
	tMyMelonField_Reward[3331103][2][3]["RandomItemChanceType"] = 2
	tMyMelonField_Reward[3331103][2][3]["ItemChance"] = 500
	tMyMelonField_Reward[3331103][2][3]["RewardStrengthValue"] = {}
	tMyMelonField_Reward[3331103][2][3]["RewardStrengthValue"]["Value"] = 200 -- 气力值, 【需求】气力值
	tMyMelonField_Reward[3331103][2][3]["RewardEffect"] = {}
	tMyMelonField_Reward[3331103][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMyMelonField_Reward[3331103][2][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+2 - 18%
	tMyMelonField_Reward[3331103][2][4] = {}
	tMyMelonField_Reward[3331103][2][4]["RandomItemChanceType"] = 2
	tMyMelonField_Reward[3331103][2][4]["ItemChance"] = 1800
	tMyMelonField_Reward[3331103][2][4]["RewardItem"] = {}
	tMyMelonField_Reward[3331103][2][4]["RewardItem"][1] = {}
	tMyMelonField_Reward[3331103][2][4]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石[730002][属性:0][叠加:0][金币:0], 【表格】赤炼石+2
	tMyMelonField_Reward[3331103][2][4]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+2赤炼石（赠）*1
	tMyMelonField_Reward[3331103][2][4]["RewardEffect"] = {}
	tMyMelonField_Reward[3331103][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMyMelonField_Reward[3331103][2][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 微光星陨石 - 18%
	tMyMelonField_Reward[3331103][2][5] = {}
	tMyMelonField_Reward[3331103][2][5]["RandomItemChanceType"] = 2
	tMyMelonField_Reward[3331103][2][5]["ItemChance"] = 1800
	tMyMelonField_Reward[3331103][2][5]["RewardItem"] = {}
	tMyMelonField_Reward[3331103][2][5]["RewardItem"][1] = {}
	tMyMelonField_Reward[3331103][2][5]["RewardItem"][1]["Id"] = 3009000 -- 微光星陨石[3009000][属性:9][叠加:0][金币:0], 【表格】微光星陨石
	tMyMelonField_Reward[3331103][2][5]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的微光星陨石*5
	tMyMelonField_Reward[3331103][2][5]["RewardEffect"] = {}
	tMyMelonField_Reward[3331103][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMyMelonField_Reward[3331103][2][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 修为值 - 14%
	tMyMelonField_Reward[3331103][2][6] = {}
	tMyMelonField_Reward[3331103][2][6]["RandomItemChanceType"] = 2
	tMyMelonField_Reward[3331103][2][6]["ItemChance"] = 1400
	tMyMelonField_Reward[3331103][2][6]["RewardRepairValue"] = {}
	tMyMelonField_Reward[3331103][2][6]["RewardRepairValue"]["Value"] = 300 -- 修为值, 【需求】修为值
	tMyMelonField_Reward[3331103][2][6]["RewardEffect"] = {}
	tMyMelonField_Reward[3331103][2][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMyMelonField_Reward[3331103][2][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 12%
	tMyMelonField_Reward[3331103][2][7] = {}
	tMyMelonField_Reward[3331103][2][7]["RandomItemChanceType"] = 2
	tMyMelonField_Reward[3331103][2][7]["ItemChance"] = 1200
	tMyMelonField_Reward[3331103][2][7]["RewardItem"] = {}
	tMyMelonField_Reward[3331103][2][7]["RewardItem"][1] = {}
	tMyMelonField_Reward[3331103][2][7]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tMyMelonField_Reward[3331103][2][7]["RewardItem"][1]["Attr"] = "0 5 3" -- 万能神纹精粹*5
	tMyMelonField_Reward[3331103][2][7]["RewardEffect"] = {}
	tMyMelonField_Reward[3331103][2][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMyMelonField_Reward[3331103][2][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 究极通神丹 - 6%
	tMyMelonField_Reward[3331103][2][8] = {}
	tMyMelonField_Reward[3331103][2][8]["RandomItemChanceType"] = 2
	tMyMelonField_Reward[3331103][2][8]["ItemChance"] = 600
	tMyMelonField_Reward[3331103][2][8]["RewardItem"] = {}
	tMyMelonField_Reward[3331103][2][8]["RewardItem"][1] = {}
	tMyMelonField_Reward[3331103][2][8]["RewardItem"][1]["Id"] = 3003126 -- 究极通神丹[3003126][属性:0][叠加:10000][金币:0], 【表格】究极通神丹
	tMyMelonField_Reward[3331103][2][8]["RewardItem"][1]["Attr"] = "0 3 3" -- 究极通神丹*3
	tMyMelonField_Reward[3331103][2][8]["RewardEffect"] = {}
	tMyMelonField_Reward[3331103][2][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMyMelonField_Reward[3331103][2][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 5%
	tMyMelonField_Reward[3331103][2][9] = {}
	tMyMelonField_Reward[3331103][2][9]["RandomItemChanceType"] = 2
	tMyMelonField_Reward[3331103][2][9]["ItemChance"] = 500
	tMyMelonField_Reward[3331103][2][9]["RewardItem"] = {}
	tMyMelonField_Reward[3331103][2][9]["RewardItem"][1] = {}
	tMyMelonField_Reward[3331103][2][9]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果
	tMyMelonField_Reward[3331103][2][9]["RewardItem"][1]["Attr"] = "0 2" -- 人参果*2
	tMyMelonField_Reward[3331103][2][9]["RewardEffect"] = {}
	tMyMelonField_Reward[3331103][2][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMyMelonField_Reward[3331103][2][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 气力值 - 9%
	tMyMelonField_Reward[3331103][2][10] = {}
	tMyMelonField_Reward[3331103][2][10]["RandomItemChanceType"] = 2
	tMyMelonField_Reward[3331103][2][10]["ItemChance"] = 900
	tMyMelonField_Reward[3331103][2][10]["RewardStrengthValue"] = {}
	tMyMelonField_Reward[3331103][2][10]["RewardStrengthValue"]["Value"] = 200 -- 气力值, 【需求】气力值
	tMyMelonField_Reward[3331103][2][10]["RewardEffect"] = {}
	tMyMelonField_Reward[3331103][2][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMyMelonField_Reward[3331103][2][10]["RewardEffect"]["Effect"] = "angelwing"


	tMyMelonField_Reward[3331104] = {}
	-- ===成熟的西瓜
	-- ===（品尝奖励）
	-- ===索引:tMyMelonField_Reward[3331104][1]
	-- ===删除:3331104,1
	-- RewardTemplate_RandomReward(tMyMelonField_Reward[3331104],1)
	tMyMelonField_Reward[3331104][1] = {}
	tMyMelonField_Reward[3331104][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tMyMelonField_Reward[3331104][1]["DeleteItem"] = {}
	tMyMelonField_Reward[3331104][1]["DeleteItem"][1] = {}
	tMyMelonField_Reward[3331104][1]["DeleteItem"][1]["Id"] = 3331104 -- 【库】成熟的西瓜[属性:9]
	tMyMelonField_Reward[3331104][1]["LogId"] = 12001988
	-- 坐骑外套碎片 - 10%
	tMyMelonField_Reward[3331104][1][1] = {}
	tMyMelonField_Reward[3331104][1][1]["RandomItemChanceType"] = 2
	tMyMelonField_Reward[3331104][1][1]["ItemChance"] = 1000
	tMyMelonField_Reward[3331104][1][1]["RewardItem"] = {}
	tMyMelonField_Reward[3331104][1][1]["RewardItem"][1] = {}
	tMyMelonField_Reward[3331104][1][1]["RewardItem"][1]["Id"] = 3331121 --  3331121 【cnzf1库里没有该物品】, 【表格】坐骑外套碎片
	tMyMelonField_Reward[3331104][1][1]["RewardItem"][1]["Attr"] = "0 1" --  3331121 【cnzf1库里没有该物品】*1
	tMyMelonField_Reward[3331104][1][1]["RewardEffect"] = {}
	tMyMelonField_Reward[3331104][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMyMelonField_Reward[3331104][1][1]["RewardEffect"]["Effect"] = "angelwing"
			-- 【动态掩码（54473, data0）】全服限量:（112）, 超限给编号（10）-
	tMyMelonField_Reward[3331104][1][1]["GlobalId"] = 54473
	tMyMelonField_Reward[3331104][1][1]["Pos"] = 0
	tMyMelonField_Reward[3331104][1][1]["MaxData"] = 112
	tMyMelonField_Reward[3331104][1][1]["FullIndex"] = 10
			-- 【动态掩码（54473, data1）】单日限量:（8）, 超限给编号（10）-
	tMyMelonField_Reward[3331104][1][1]["OtherPos"] = 1
	tMyMelonField_Reward[3331104][1][1]["OtherMaxData"] = 8
	tMyMelonField_Reward[3331104][1][1]["OtherFullIndex"] = 10
	-- 600万爵位勋章 - 5%
	tMyMelonField_Reward[3331104][1][2] = {}
	tMyMelonField_Reward[3331104][1][2]["RandomItemChanceType"] = 2
	tMyMelonField_Reward[3331104][1][2]["ItemChance"] = 500
	tMyMelonField_Reward[3331104][1][2]["RewardItem"] = {}
	tMyMelonField_Reward[3331104][1][2]["RewardItem"][1] = {}
	tMyMelonField_Reward[3331104][1][2]["RewardItem"][1]["Id"] = 3322761 -- 600万爵位勋章[3322761][属性:8][叠加:1][金币:0], 【表格】600万爵位勋章
	tMyMelonField_Reward[3331104][1][2]["RewardItem"][1]["Attr"] = "0 2 3" -- 600万爵位勋章（赠）*2
	tMyMelonField_Reward[3331104][1][2]["RewardEffect"] = {}
	tMyMelonField_Reward[3331104][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMyMelonField_Reward[3331104][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 乾坤神器宝盒 - 5%
	tMyMelonField_Reward[3331104][1][3] = {}
	tMyMelonField_Reward[3331104][1][3]["RandomItemChanceType"] = 2
	tMyMelonField_Reward[3331104][1][3]["ItemChance"] = 500
	tMyMelonField_Reward[3331104][1][3]["RewardItem"] = {}
	tMyMelonField_Reward[3331104][1][3]["RewardItem"][1] = {}
	tMyMelonField_Reward[3331104][1][3]["RewardItem"][1]["Id"] = 3314913 -- 乾坤神器宝盒[3314913][属性:9][叠加:10000][金币:0], 【表格】乾坤神器宝盒
	tMyMelonField_Reward[3331104][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 乾坤神器宝盒*1
	tMyMelonField_Reward[3331104][1][3]["RewardEffect"] = {}
	tMyMelonField_Reward[3331104][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMyMelonField_Reward[3331104][1][3]["RewardEffect"]["Effect"] = "angelwing"
			-- 【动态掩码（54473, data4）】全服限量:（700）, 超限给编号（10）-
	tMyMelonField_Reward[3331104][1][3]["GlobalId"] = 54473
	tMyMelonField_Reward[3331104][1][3]["Pos"] = 4
	tMyMelonField_Reward[3331104][1][3]["MaxData"] = 700
	tMyMelonField_Reward[3331104][1][3]["FullIndex"] = 10
			-- 【动态掩码（54473, data5）】单日限量:（50）, 超限给编号（10）-
	tMyMelonField_Reward[3331104][1][3]["OtherPos"] = 5
	tMyMelonField_Reward[3331104][1][3]["OtherMaxData"] = 50
	tMyMelonField_Reward[3331104][1][3]["OtherFullIndex"] = 10
	-- 赤炼石+3 - 15%
	tMyMelonField_Reward[3331104][1][4] = {}
	tMyMelonField_Reward[3331104][1][4]["RandomItemChanceType"] = 2
	tMyMelonField_Reward[3331104][1][4]["ItemChance"] = 1500
	tMyMelonField_Reward[3331104][1][4]["RewardItem"] = {}
	tMyMelonField_Reward[3331104][1][4]["RewardItem"][1] = {}
	tMyMelonField_Reward[3331104][1][4]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤炼石+3
	tMyMelonField_Reward[3331104][1][4]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+3赤炼石（赠）*1
	tMyMelonField_Reward[3331104][1][4]["RewardEffect"] = {}
	tMyMelonField_Reward[3331104][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMyMelonField_Reward[3331104][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 - 18%
	tMyMelonField_Reward[3331104][1][5] = {}
	tMyMelonField_Reward[3331104][1][5]["RandomItemChanceType"] = 2
	tMyMelonField_Reward[3331104][1][5]["ItemChance"] = 1800
	tMyMelonField_Reward[3331104][1][5]["RewardItem"] = {}
	tMyMelonField_Reward[3331104][1][5]["RewardItem"][1] = {}
	tMyMelonField_Reward[3331104][1][5]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tMyMelonField_Reward[3331104][1][5]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	tMyMelonField_Reward[3331104][1][5]["RewardEffect"] = {}
	tMyMelonField_Reward[3331104][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMyMelonField_Reward[3331104][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 修为值 - 15%
	tMyMelonField_Reward[3331104][1][6] = {}
	tMyMelonField_Reward[3331104][1][6]["RandomItemChanceType"] = 2
	tMyMelonField_Reward[3331104][1][6]["ItemChance"] = 1500
	tMyMelonField_Reward[3331104][1][6]["RewardRepairValue"] = {}
	tMyMelonField_Reward[3331104][1][6]["RewardRepairValue"]["Value"] = 400 -- 修为值, 【需求】修为值
	tMyMelonField_Reward[3331104][1][6]["RewardEffect"] = {}
	tMyMelonField_Reward[3331104][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMyMelonField_Reward[3331104][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 15%
	tMyMelonField_Reward[3331104][1][7] = {}
	tMyMelonField_Reward[3331104][1][7]["RandomItemChanceType"] = 2
	tMyMelonField_Reward[3331104][1][7]["ItemChance"] = 1500
	tMyMelonField_Reward[3331104][1][7]["RewardItem"] = {}
	tMyMelonField_Reward[3331104][1][7]["RewardItem"][1] = {}
	tMyMelonField_Reward[3331104][1][7]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tMyMelonField_Reward[3331104][1][7]["RewardItem"][1]["Attr"] = "0 8 3" -- 万能神纹精粹*8
	tMyMelonField_Reward[3331104][1][7]["RewardEffect"] = {}
	tMyMelonField_Reward[3331104][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMyMelonField_Reward[3331104][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 究极通神丹 - 8%
	tMyMelonField_Reward[3331104][1][8] = {}
	tMyMelonField_Reward[3331104][1][8]["RandomItemChanceType"] = 2
	tMyMelonField_Reward[3331104][1][8]["ItemChance"] = 800
	tMyMelonField_Reward[3331104][1][8]["RewardItem"] = {}
	tMyMelonField_Reward[3331104][1][8]["RewardItem"][1] = {}
	tMyMelonField_Reward[3331104][1][8]["RewardItem"][1]["Id"] = 3003126 -- 究极通神丹[3003126][属性:0][叠加:10000][金币:0], 【表格】究极通神丹
	tMyMelonField_Reward[3331104][1][8]["RewardItem"][1]["Attr"] = "0 4 3" -- 究极通神丹*4
	tMyMelonField_Reward[3331104][1][8]["RewardEffect"] = {}
	tMyMelonField_Reward[3331104][1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMyMelonField_Reward[3331104][1][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 5%
	tMyMelonField_Reward[3331104][1][9] = {}
	tMyMelonField_Reward[3331104][1][9]["RandomItemChanceType"] = 2
	tMyMelonField_Reward[3331104][1][9]["ItemChance"] = 500
	tMyMelonField_Reward[3331104][1][9]["RewardItem"] = {}
	tMyMelonField_Reward[3331104][1][9]["RewardItem"][1] = {}
	tMyMelonField_Reward[3331104][1][9]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果
	tMyMelonField_Reward[3331104][1][9]["RewardItem"][1]["Attr"] = "0 3" -- 人参果*3
	tMyMelonField_Reward[3331104][1][9]["RewardEffect"] = {}
	tMyMelonField_Reward[3331104][1][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMyMelonField_Reward[3331104][1][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 气力值 - 4%
	tMyMelonField_Reward[3331104][1][10] = {}
	tMyMelonField_Reward[3331104][1][10]["RandomItemChanceType"] = 2
	tMyMelonField_Reward[3331104][1][10]["ItemChance"] = 400
	tMyMelonField_Reward[3331104][1][10]["RewardStrengthValue"] = {}
	tMyMelonField_Reward[3331104][1][10]["RewardStrengthValue"]["Value"] = 300 -- 气力值, 【需求】气力值
	tMyMelonField_Reward[3331104][1][10]["RewardEffect"] = {}
	tMyMelonField_Reward[3331104][1][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMyMelonField_Reward[3331104][1][10]["RewardEffect"]["Effect"] = "angelwing"


	-- ===成熟的西瓜
	-- ===（品尝奖励）
	-- ===索引:tMyMelonField_Reward[3331104][2]
	-- ===删除:3331104,1
	-- RewardTemplate_RandomReward(tMyMelonField_Reward[3331104],2)
	tMyMelonField_Reward[3331104][2] = {}
	tMyMelonField_Reward[3331104][2]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tMyMelonField_Reward[3331104][2]["DeleteItem"] = {}
	tMyMelonField_Reward[3331104][2]["DeleteItem"][1] = {}
	tMyMelonField_Reward[3331104][2]["DeleteItem"][1]["Id"] = 3331104 -- 【库】成熟的西瓜[属性:9]
	tMyMelonField_Reward[3331104][2]["LogId"] = 12001988
	-- 坐骑外套碎片 - 10%
	tMyMelonField_Reward[3331104][2][1] = {}
	tMyMelonField_Reward[3331104][2][1]["RandomItemChanceType"] = 2
	tMyMelonField_Reward[3331104][2][1]["ItemChance"] = 1000
	tMyMelonField_Reward[3331104][2][1]["RewardItem"] = {}
	tMyMelonField_Reward[3331104][2][1]["RewardItem"][1] = {}
	tMyMelonField_Reward[3331104][2][1]["RewardItem"][1]["Id"] = 3331121 --  3331121 【cnzf1库里没有该物品】, 【表格】坐骑外套碎片
	tMyMelonField_Reward[3331104][2][1]["RewardItem"][1]["Attr"] = "0 1" --  3331121 【cnzf1库里没有该物品】*1
	tMyMelonField_Reward[3331104][2][1]["RewardEffect"] = {}
	tMyMelonField_Reward[3331104][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMyMelonField_Reward[3331104][2][1]["RewardEffect"]["Effect"] = "angelwing"
			-- 【动态掩码（54473, data0）】全服限量:（112）, 超限给编号（10）-
	tMyMelonField_Reward[3331104][2][1]["GlobalId"] = 54473
	tMyMelonField_Reward[3331104][2][1]["Pos"] = 0
	tMyMelonField_Reward[3331104][2][1]["MaxData"] = 112
	tMyMelonField_Reward[3331104][2][1]["FullIndex"] = 10
			-- 【动态掩码（54473, data1）】单日限量:（8）, 超限给编号（10）-
	tMyMelonField_Reward[3331104][2][1]["OtherPos"] = 1
	tMyMelonField_Reward[3331104][2][1]["OtherMaxData"] = 8
	tMyMelonField_Reward[3331104][2][1]["OtherFullIndex"] = 10
	-- 600万爵位勋章 - 5%
	tMyMelonField_Reward[3331104][2][2] = {}
	tMyMelonField_Reward[3331104][2][2]["RandomItemChanceType"] = 2
	tMyMelonField_Reward[3331104][2][2]["ItemChance"] = 500
	tMyMelonField_Reward[3331104][2][2]["RewardItem"] = {}
	tMyMelonField_Reward[3331104][2][2]["RewardItem"][1] = {}
	tMyMelonField_Reward[3331104][2][2]["RewardItem"][1]["Id"] = 3322761 -- 600万爵位勋章[3322761][属性:8][叠加:1][金币:0], 【表格】600万爵位勋章
	tMyMelonField_Reward[3331104][2][2]["RewardItem"][1]["Attr"] = "0 2 3" -- 600万爵位勋章（赠）*2
	tMyMelonField_Reward[3331104][2][2]["RewardEffect"] = {}
	tMyMelonField_Reward[3331104][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMyMelonField_Reward[3331104][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 气力值 - 5%
	tMyMelonField_Reward[3331104][2][3] = {}
	tMyMelonField_Reward[3331104][2][3]["RandomItemChanceType"] = 2
	tMyMelonField_Reward[3331104][2][3]["ItemChance"] = 500
	tMyMelonField_Reward[3331104][2][3]["RewardStrengthValue"] = {}
	tMyMelonField_Reward[3331104][2][3]["RewardStrengthValue"]["Value"] = 300 -- 气力值, 【需求】气力值
	tMyMelonField_Reward[3331104][2][3]["RewardEffect"] = {}
	tMyMelonField_Reward[3331104][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMyMelonField_Reward[3331104][2][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+3 - 15%
	tMyMelonField_Reward[3331104][2][4] = {}
	tMyMelonField_Reward[3331104][2][4]["RandomItemChanceType"] = 2
	tMyMelonField_Reward[3331104][2][4]["ItemChance"] = 1500
	tMyMelonField_Reward[3331104][2][4]["RewardItem"] = {}
	tMyMelonField_Reward[3331104][2][4]["RewardItem"][1] = {}
	tMyMelonField_Reward[3331104][2][4]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤炼石+3
	tMyMelonField_Reward[3331104][2][4]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+3赤炼石（赠）*1
	tMyMelonField_Reward[3331104][2][4]["RewardEffect"] = {}
	tMyMelonField_Reward[3331104][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMyMelonField_Reward[3331104][2][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 - 18%
	tMyMelonField_Reward[3331104][2][5] = {}
	tMyMelonField_Reward[3331104][2][5]["RandomItemChanceType"] = 2
	tMyMelonField_Reward[3331104][2][5]["ItemChance"] = 1800
	tMyMelonField_Reward[3331104][2][5]["RewardItem"] = {}
	tMyMelonField_Reward[3331104][2][5]["RewardItem"][1] = {}
	tMyMelonField_Reward[3331104][2][5]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tMyMelonField_Reward[3331104][2][5]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	tMyMelonField_Reward[3331104][2][5]["RewardEffect"] = {}
	tMyMelonField_Reward[3331104][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMyMelonField_Reward[3331104][2][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 修为值 - 15%
	tMyMelonField_Reward[3331104][2][6] = {}
	tMyMelonField_Reward[3331104][2][6]["RandomItemChanceType"] = 2
	tMyMelonField_Reward[3331104][2][6]["ItemChance"] = 1500
	tMyMelonField_Reward[3331104][2][6]["RewardRepairValue"] = {}
	tMyMelonField_Reward[3331104][2][6]["RewardRepairValue"]["Value"] = 400 -- 修为值, 【需求】修为值
	tMyMelonField_Reward[3331104][2][6]["RewardEffect"] = {}
	tMyMelonField_Reward[3331104][2][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMyMelonField_Reward[3331104][2][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 15%
	tMyMelonField_Reward[3331104][2][7] = {}
	tMyMelonField_Reward[3331104][2][7]["RandomItemChanceType"] = 2
	tMyMelonField_Reward[3331104][2][7]["ItemChance"] = 1500
	tMyMelonField_Reward[3331104][2][7]["RewardItem"] = {}
	tMyMelonField_Reward[3331104][2][7]["RewardItem"][1] = {}
	tMyMelonField_Reward[3331104][2][7]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tMyMelonField_Reward[3331104][2][7]["RewardItem"][1]["Attr"] = "0 8 3" -- 万能神纹精粹*8
	tMyMelonField_Reward[3331104][2][7]["RewardEffect"] = {}
	tMyMelonField_Reward[3331104][2][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMyMelonField_Reward[3331104][2][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 究极通神丹 - 8%
	tMyMelonField_Reward[3331104][2][8] = {}
	tMyMelonField_Reward[3331104][2][8]["RandomItemChanceType"] = 2
	tMyMelonField_Reward[3331104][2][8]["ItemChance"] = 800
	tMyMelonField_Reward[3331104][2][8]["RewardItem"] = {}
	tMyMelonField_Reward[3331104][2][8]["RewardItem"][1] = {}
	tMyMelonField_Reward[3331104][2][8]["RewardItem"][1]["Id"] = 3003126 -- 究极通神丹[3003126][属性:0][叠加:10000][金币:0], 【表格】究极通神丹
	tMyMelonField_Reward[3331104][2][8]["RewardItem"][1]["Attr"] = "0 4 3" -- 究极通神丹*4
	tMyMelonField_Reward[3331104][2][8]["RewardEffect"] = {}
	tMyMelonField_Reward[3331104][2][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMyMelonField_Reward[3331104][2][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 5%
	tMyMelonField_Reward[3331104][2][9] = {}
	tMyMelonField_Reward[3331104][2][9]["RandomItemChanceType"] = 2
	tMyMelonField_Reward[3331104][2][9]["ItemChance"] = 500
	tMyMelonField_Reward[3331104][2][9]["RewardItem"] = {}
	tMyMelonField_Reward[3331104][2][9]["RewardItem"][1] = {}
	tMyMelonField_Reward[3331104][2][9]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果
	tMyMelonField_Reward[3331104][2][9]["RewardItem"][1]["Attr"] = "0 3" -- 人参果*3
	tMyMelonField_Reward[3331104][2][9]["RewardEffect"] = {}
	tMyMelonField_Reward[3331104][2][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMyMelonField_Reward[3331104][2][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 气力值 - 4%
	tMyMelonField_Reward[3331104][2][10] = {}
	tMyMelonField_Reward[3331104][2][10]["RandomItemChanceType"] = 2
	tMyMelonField_Reward[3331104][2][10]["ItemChance"] = 400
	tMyMelonField_Reward[3331104][2][10]["RewardStrengthValue"] = {}
	tMyMelonField_Reward[3331104][2][10]["RewardStrengthValue"]["Value"] = 300 -- 气力值, 【需求】气力值
	tMyMelonField_Reward[3331104][2][10]["RewardEffect"] = {}
	tMyMelonField_Reward[3331104][2][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMyMelonField_Reward[3331104][2][10]["RewardEffect"]["Effect"] = "angelwing"


	-- ===催熟的西瓜
	-- ===索引:tMyMelonField_Reward[3331103][3]
	tMyMelonField_Reward[3331103][3] = {}
	tMyMelonField_Reward[3331103][3]["LogId"] = 12001988
	tMyMelonField_Reward[3331103][3]["RewardItem"] = {}
	tMyMelonField_Reward[3331103][3]["RewardItem"][1] = {}
	tMyMelonField_Reward[3331103][3]["RewardItem"][1]["Id"] = 3331103 -- 催熟的西瓜[3331103][属性:9][叠加:10000][金币:0], 【表格】催熟的西瓜
	tMyMelonField_Reward[3331103][3]["RewardItem"][1]["Attr"] = "0 1" -- 催熟的西瓜*1
	tMyMelonField_Reward[3331103][3]["RewardEffect"] = {}
	tMyMelonField_Reward[3331103][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMyMelonField_Reward[3331103][3]["RewardEffect"]["Effect"] = "zf2-e128"


	-- ===成熟的西瓜
	-- ===索引:tMyMelonField_Reward[3331104][3]
	tMyMelonField_Reward[3331104][3] = {}
	tMyMelonField_Reward[3331104][3]["LogId"] = 12001988
	tMyMelonField_Reward[3331104][3]["RewardItem"] = {}
	tMyMelonField_Reward[3331104][3]["RewardItem"][1] = {}
	tMyMelonField_Reward[3331104][3]["RewardItem"][1]["Id"] = 3331104 -- 成熟的西瓜[3331104][属性:9][叠加:10000][金币:0], 【表格】成熟的西瓜
	tMyMelonField_Reward[3331104][3]["RewardItem"][1]["Attr"] = "0 1" -- 成熟的西瓜*1
	tMyMelonField_Reward[3331104][3]["RewardEffect"] = {}
	tMyMelonField_Reward[3331104][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMyMelonField_Reward[3331104][3]["RewardEffect"]["Effect"] = "zf2-e128"


	-- ===西瓜籽
	-- ===索引:tMyMelonField_Reward[4066]
	tMyMelonField_Reward[4066] = {}
	tMyMelonField_Reward[4066]["LogId"] = 12001988
	tMyMelonField_Reward[4066]["RewardItem"] = {}
	tMyMelonField_Reward[4066]["RewardItem"][1] = {}
	tMyMelonField_Reward[4066]["RewardItem"][1]["Id"] = 3316274 -- 西瓜种子[3316274][属性:9][叠加:10000][金币:0], 【表格】西瓜籽
	tMyMelonField_Reward[4066]["RewardItem"][1]["Attr"] = "0 1" -- 西瓜种子*1
	tMyMelonField_Reward[4066]["RewardEffect"] = {}
	tMyMelonField_Reward[4066]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMyMelonField_Reward[4066]["RewardEffect"]["Effect"] = "angelwing"


	-- ===神器礼包
	-- ===索引:tMyMelonField_Reward[4089]
	-- RewardTemplate_RandomReward(tMyMelonField_Reward,4089)
	tMyMelonField_Reward[4089] = {}
	tMyMelonField_Reward[4089]["ItemChanceSum"] = 10000
	tMyMelonField_Reward[4089]["LogId"] = 12001988
	-- 精装神器礼包 - 30%
	tMyMelonField_Reward[4089][1] = {}
	tMyMelonField_Reward[4089][1]["RandomItemChanceType"] = 2
	tMyMelonField_Reward[4089][1]["ItemChance"] = 3000
	tMyMelonField_Reward[4089][1]["RewardItem"] = {}
	tMyMelonField_Reward[4089][1]["RewardItem"][1] = {}
	tMyMelonField_Reward[4089][1]["RewardItem"][1]["Id"] = 3322773 -- 精装神器礼包[3322773][属性:8][叠加:1][金币:0], 【表格】精装神器礼包
	tMyMelonField_Reward[4089][1]["RewardItem"][1]["Attr"] = "0 1" -- 精装神器礼包*1
	tMyMelonField_Reward[4089][1]["RewardEffect"] = {}
	tMyMelonField_Reward[4089][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMyMelonField_Reward[4089][1]["RewardEffect"]["Effect"] = "angelwing"
	tMyMelonField_Reward[4089][1]["RewardNoNeedTip"] = 1 -- 不出对白
	-- tMyMelonField_Reward[4089][1]["NoTip"] = 1 -- 不出对白
			-- 1天（零点重置）, 可获得3个, 最多可获得:（3）, 超限给编号（2）-
	tMyMelonField_Reward[4089][1]["EventType"] = 222
	tMyMelonField_Reward[4089][1]["DataType"] = 96
	tMyMelonField_Reward[4089][1]["RewardDelay"] = 1
	tMyMelonField_Reward[4089][1]["RewardTimeType"] = 4
	tMyMelonField_Reward[4089][1]["RewardData"] = 3
	tMyMelonField_Reward[4089][1]["RewardTotalData"] = 3
	tMyMelonField_Reward[4089][1]["FullIndex"] = 2
	-- 西瓜籽 - 70%
	tMyMelonField_Reward[4089][2] = {}
	tMyMelonField_Reward[4089][2]["RandomItemChanceType"] = 2
	tMyMelonField_Reward[4089][2]["ItemChance"] = 7000
	tMyMelonField_Reward[4089][2]["RewardItem"] = {}
	tMyMelonField_Reward[4089][2]["RewardItem"][1] = {}
	tMyMelonField_Reward[4089][2]["RewardItem"][1]["Id"] = 3316274 -- 西瓜种子[3316274][属性:9][叠加:10000][金币:0], 【表格】西瓜籽
	tMyMelonField_Reward[4089][2]["RewardItem"][1]["Attr"] = "0 1" -- 西瓜种子*1
	tMyMelonField_Reward[4089][2]["RewardEffect"] = {}
	tMyMelonField_Reward[4089][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMyMelonField_Reward[4089][2]["RewardEffect"]["Effect"] = "angelwing"
	tMyMelonField_Reward[4089][2]["RewardNoNeedTip"] = 1 -- 不出对白
	-- tMyMelonField_Reward[4089][2]["NoTip"] = 1 -- 不出对白

	-- ===扣除西瓜种子
	-- ===索引:tMyMelonField_Reward[1]
	-- ===删除:3316274,1
	tMyMelonField_Reward[1] = {}
	tMyMelonField_Reward[1]["LogId"] = 12001988
	tMyMelonField_Reward[1]["DeleteItem"] = {}
	tMyMelonField_Reward[1]["DeleteItem"][1] = {}
	tMyMelonField_Reward[1]["DeleteItem"][1]["Id"] = 3316274 -- 【库】西瓜种子[属性:9]
	tMyMelonField_Reward[1]["RewardEffect"] = {}
	tMyMelonField_Reward[1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMyMelonField_Reward[1]["RewardEffect"]["Effect"] = "angelwing"

----------------------------------逻辑部分---------------------------------------------
-- 获取掩码值
function MyMelonField_GetStcValue(nMyMelonField_Index,nMyMelonField_UserId)
	local nMyMelonField_NowUserId = nMyMelonField_UserId or Get_UserId()
	local nMyMelonField_Event = tMyMelonField_Stc[nMyMelonField_Index]["EventType"]
	local nMyMelonField_Type = tMyMelonField_Stc[nMyMelonField_Index]["DataType"]
	local nMyMelonField_Data = Get_UserStatisticValue(nMyMelonField_Event,nMyMelonField_Type,nMyMelonField_NowUserId)
	return nMyMelonField_Data
end

--设置掩码值
function MyMelonField_SetStcValue(nMyMelonField_Index,nMyMelonField_Data,nMyMelonField_UserId)
	local nMyMelonField_NowUserId = nMyMelonField_UserId or Get_UserId()
	local nMyMelonField_Event = tMyMelonField_Stc[nMyMelonField_Index]["EventType"]
	local nMyMelonField_Type = tMyMelonField_Stc[nMyMelonField_Index]["DataType"]
	
	Task_SetStatistic(nMyMelonField_Event,nMyMelonField_Type,nMyMelonField_Data,1,nMyMelonField_NowUserId)
	Task_SetStcTimestamp(nMyMelonField_Event,nMyMelonField_Type,0,nMyMelonField_NowUserId)
end

-- 隔天重置
function MyMelonField_ClearStcInterval(nMyMelonField_Index,nMyMelonField_Data,nMyMelonField_UserId)
	local nMyMelonField_NowUserId = nMyMelonField_UserId or Get_UserId()
	local nMyMelonField_Event = tMyMelonField_Stc[nMyMelonField_Index]["EventType"]
	local nMyMelonField_Type = tMyMelonField_Stc[nMyMelonField_Index]["DataType"]
	
	if nMyMelonField_Data == nil then
		nMyMelonField_Data = 0
	end
	
	if Task_StcInterval(nMyMelonField_Event,nMyMelonField_Type,1,4,nMyMelonField_NowUserId) then
		Task_SetStatistic(nMyMelonField_Event,nMyMelonField_Type,nMyMelonField_Data,1,nMyMelonField_NowUserId)
		Task_SetStcTimestamp(nMyMelonField_Event,nMyMelonField_Type,0,nMyMelonField_NowUserId)
	end
end


-- 掩码时间判断
function MyMelonField_CheckStcInterval(nMyMelonField_Index,nMyMelonField_Time,nMyMelonField_UserId)
	
	local nMyMelonField_NowUserId = nMyMelonField_UserId or Get_UserId()
	local nMyMelonField_Event = tMyMelonField_Stc[nMyMelonField_Index]["EventType"]
	local nMyMelonField_Type = tMyMelonField_Stc[nMyMelonField_Index]["DataType"]
	
	if nMyMelonField_Time == nil or type(nMyMelonField_Time) ~= "number" then
		nMyMelonField_Time = 0
	end
	
	if Task_StcInterval(nMyMelonField_Event,nMyMelonField_Type,nMyMelonField_Time,1,nMyMelonField_NowUserId) then
		return true
	end
	
	return false
end

-- 获取掩码时间戳
function MyMelonField_GetStcTimes(nMyMelonField_Index,nMyMelonField_UserId)
	local nMyMelonField_NowUserId = nMyMelonField_UserId or Get_UserId()
	local nMyMelonField_Event = tMyMelonField_Stc[nMyMelonField_Index]["EventType"]
	local nMyMelonField_Type = tMyMelonField_Stc[nMyMelonField_Index]["DataType"]
	local nMyMelonField_Times = Get_UserStcTimestampValue(nMyMelonField_Event,nMyMelonField_Type,nMyMelonField_NowUserId)
	return nMyMelonField_Times
end

--链接副本npc
--nMyMelonField_Index	1为我的瓜田	2为异国瓜田
function MyMelonField_LinkNpc(nMyMelonField_NpcId,nMyMelonField_Index)
	
	-- 瓜田入口
	if nMyMelonField_NpcId == tMyMelonField_NpcId["Enter"] then
		Sys_MsgBox(tMyMelonField_Text[nMyMelonField_NpcId]["Tips"],"MyMelonField_EnterMap</N>1")
		return
	end
	
	if nMyMelonField_Index == 1 then
		-- 闰土
		if nMyMelonField_NpcId == tMyMelonField_NpcId["Main"] then
			LinkNpcGossipFunc_New(nMyMelonField_NpcId,"2-1")
		
		-- 西瓜
		elseif nMyMelonField_NpcId == tMyMelonField_NpcId["Melon"] then
			if MyMelonField_MelonDialog(nMyMelonField_Index) then
				LinkNpcGossipFunc_New(nMyMelonField_NpcId,"1-1")
			else
				LinkNpcGossipFunc_New(nMyMelonField_NpcId,"2-1")
			end
			
		else
			LinkNpcGossipFunc_New(nMyMelonField_NpcId,"1-1")
		end
		
	end
	
	if nMyMelonField_Index == 2 then
		
		-- 西瓜
		if nMyMelonField_NpcId == tMyMelonField_NpcId["Melon"] then
			if MyMelonField_MelonDialog(nMyMelonField_Index) then
				LinkNpcGossipFunc_New(nMyMelonField_NpcId,"3-1")
			else
				LinkNpcGossipFunc_New(nMyMelonField_NpcId,"4-1")
			end
			
		else
			LinkNpcGossipFunc_New(nMyMelonField_NpcId,"2-1")
		end
		
	end
	
	return
end

--进入副本地图	1为我的瓜田	2为异国瓜田
function MyMelonField_EnterMap(nMyMelonField_Index,nMyMelonField_ReturnMap)
	
	-- 组队状态不能进入
	local nMyMelonField_TeamNum = Get_UserTeamNumbers()
	if nMyMelonField_TeamNum ~= 0 then
		User_TalkChannel2005(tMyMelonField_Text["MsgBox"]["Team"])
		return
	end
	
	local nMyMelonField_InstanceType = tMyMelonField_Instance[nMyMelonField_Index]["Id"]
	-- 进入副本地图
	if User_EnterInstance(nMyMelonField_InstanceType) then
		
		if nMyMelonField_Index == 1 then
			if nMyMelonField_ReturnMap == nil then
				Sys_MsgBox(tMyMelonField_Text["MsgBox"]["EnterMap"],"MyMelonField_Goto</N>" .. nMyMelonField_Index)
			else
				Sys_MsgBox(tMyMelonField_Text["MsgBox"]["StealFailed"])
			end
			
			-- 创建闰土
			MyMelonField_CreateNpc(tMyMelonField_NpcId["Main"],nMyMelonField_Index)
			
			--创建陷阱
			MyMelonField_CreateTrap(1,1)
		end
		
		if nMyMelonField_Index == 2 then
			local nMyMelonField_Languages = User_ChkLanguage()
			local nMyMelonField_Random = math.random(tMyMelonField_Data["nLanguages"][nMyMelonField_Languages][1],tMyMelonField_Data["nLanguages"][nMyMelonField_Languages][2])
			local sMyMelonField_Languages = tMyMelonField_Text["Languages"][nMyMelonField_Random]
			local nMyMelonField_RandomName = math.random(1,tMyMelonField_Data["nUserNum"])
			local sMyMelonField_UserName = tMyMelonField_Text["UserName"][nMyMelonField_Random][nMyMelonField_RandomName]
			
			Sys_MsgBox(string.format(tMyMelonField_Text["MsgBox"]["Enter"],sMyMelonField_Languages,sMyMelonField_UserName))
		end
		
		MyMelonField_CreateMelon(nMyMelonField_Index)
		
		-- 创建林间小道
		MyMelonField_CreateNpc(tMyMelonField_NpcId["Path"],nMyMelonField_Index)
		
		-- 创建猹
		MyMelonField_MelonMonster(nMyMelonField_Index)
	end
	
end

--创建动态NPC
function MyMelonField_CreateNpc(nMyMelonField_NpcId,nMyMelonField_Index,nMyMelonField_Plant,nMyMelonField_NowMapId,nMyMelonField_Num)
	
	local sMyMelonField_Name = tMyMelonField_DynaNpc[nMyMelonField_NpcId]["Name"]
	local nMyMelonField_Lookface = tMyMelonField_DynaNpc[nMyMelonField_NpcId]["Lookface"]
	local nMyMelonField_MapId = nMyMelonField_NowMapId or Get_UserMapId()
	local nMyMelonField_PosX = tMyMelonField_DynaNpc[nMyMelonField_NpcId]["nPosX"]
	local nMyMelonField_PosY = tMyMelonField_DynaNpc[nMyMelonField_NpcId]["nPosY"]
	local nMyMelonField_TaskId = tMyMelonField_DynaNpc[nMyMelonField_NpcId]["Taskid"][nMyMelonField_Index]

	-- 林间小道在异国瓜田位置不一样
	if nMyMelonField_NpcId == tMyMelonField_NpcId["Path"] then
		nMyMelonField_PosX = tMyMelonField_Pos["Path"][nMyMelonField_Index]["nPosX"]
		nMyMelonField_PosY = tMyMelonField_Pos["Path"][nMyMelonField_Index]["nPosY"]
	end
	
	-- 西瓜种植的位置
	if nMyMelonField_Plant ~= nil then
		nMyMelonField_PosX = tMyMelonField_Pos["Plant"][nMyMelonField_Plant]["nPosX"]
		nMyMelonField_PosY = tMyMelonField_Pos["Plant"][nMyMelonField_Plant]["nPosY"]
	end
	
	-- 异国西瓜的外形不一样
	if nMyMelonField_Num ~= nil then
		nMyMelonField_Lookface = tMyMelonField_DynaNpc[nMyMelonField_NpcId][nMyMelonField_Num]["Lookface"]
	end
	
	Npc_CreateDynaNpc(sMyMelonField_Name,tMyMelonField_DynaNpc["Type"],tMyMelonField_DynaNpc["Sort"],nMyMelonField_Lookface,0,0,nMyMelonField_MapId,nMyMelonField_PosX,nMyMelonField_PosY,0,0,0,nMyMelonField_TaskId)
	
end

-- 创建田埂跟西瓜
function MyMelonField_CreateMelon(nMyMelonField_Index)
	
	local nMyMelonField_NowMapId = Get_UserMapId()
	if nMyMelonField_Index == 1 then
		
		for i = 1,9 do
			local nMyMelonField_Data = MyMelonField_GetStcValue(i)
			if nMyMelonField_Data == 0 then
				MyMelonField_CreateNpc(tMyMelonField_NpcId["Filed"],nMyMelonField_Index,i)
			end
			
			if nMyMelonField_Data > 0 then
				-- 未成熟
				if (not MyMelonField_CheckStcInterval(i,tMyMelonField_Data["Times"])) and (nMyMelonField_Data < 2) then
					MyMelonField_CreateNpc(tMyMelonField_NpcId["Melon"],nMyMelonField_Index,i,nMyMelonField_NowMapId,1)
					
				else
					MyMelonField_CreateNpc(tMyMelonField_NpcId["Melon"],nMyMelonField_Index,i,nMyMelonField_NowMapId,2)
					
				end
			end
					
			
		end
	end
	
	-- 异国瓜田
	if nMyMelonField_Index == 2 then
		--种满9个西瓜， 随机3~6个西瓜是成熟
		local nMyMelonField_UserId = Get_UserId()
		MyMelonField_Random(nMyMelonField_UserId)
		
		if (tMyMelonField_Record[nMyMelonField_UserId] == nil) or (type(tMyMelonField_Record[nMyMelonField_UserId]) ~= "table") then
			tMyMelonField_Record[nMyMelonField_UserId] = {1,1,1,1,1,1,1,1,1}
		end
		
		for i = 1,#tMyMelonField_Record[nMyMelonField_UserId] do
			local nMyMelonField_Num = tMyMelonField_Record[nMyMelonField_UserId][i]
			MyMelonField_CreateNpc(tMyMelonField_NpcId["Melon"],nMyMelonField_Index,i,nMyMelonField_NowMapId,nMyMelonField_Num)
		end
		
	end
	
end

-- 随机3~6个西瓜是成熟
function MyMelonField_Random(nMyMelonField_UserId)
	
	tMyMelonField_Record[nMyMelonField_UserId] = {1,1,1,1,1,1,1,1,1}
	local nMyMelonField_Num = math.random(tMyMelonField_Data["nStartNum"],tMyMelonField_Data["nEndNum"])
	
	for i = 1,nMyMelonField_Num do
		local nMyMelonField_Random = math.random(1,#tMyMelonField_Record[nMyMelonField_UserId])
		if tMyMelonField_Record[nMyMelonField_UserId][nMyMelonField_Random] == 2 then
			nMyMelonField_Random = math.random(1,#tMyMelonField_Record[nMyMelonField_UserId])
		end
		
		tMyMelonField_Record[nMyMelonField_UserId][nMyMelonField_Random] = 2
	end
	
end

-- 瓜田刷怪
function MyMelonField_MelonMonster(nMyMelonField_Index)
	
	if nMyMelonField_Index == 1 then
		
		MyMelonField_ClearStcInterval(12)
		local nMyMelonField_Data = MyMelonField_GetStcValue(12)
		
		-- 每天上限刷三只
		if nMyMelonField_Data >= tMyMelonField_Stc[12]["Limit"] then
			return
		end
		
		if (nMyMelonField_Data == 0) or MyMelonField_CheckStcInterval(12,tMyMelonField_Data["Times"]) then
			MyMelonField_CreatMonster(nMyMelonField_Index,nMyMelonField_Data + 1)
		end
		
	end
	
	if nMyMelonField_Index == 2 then
		
		local nMyMelonField_Num = math.random(1,tMyMelonField_Data["nStartNum"])
		for i = 1,nMyMelonField_Num do
			MyMelonField_CreatMonster(nMyMelonField_Index,i)
		end
		
	end
end

--创建怪物
function MyMelonField_CreatMonster(nMyMelonField_Index,nMyMelonField_PosIndex,nMyMelonField_MapId)
	
	local nMyMelonField_UserMapId = Get_UserMapId()
	local nMyMelonField_MonsterId = tMyMelonField_Monster[nMyMelonField_Index]["Id"]
	local nMyMelonField_PosX = tMyMelonField_Pos["Monster"][nMyMelonField_PosIndex]["nPosX"]
	local nMyMelonField_PosY = tMyMelonField_Pos["Monster"][nMyMelonField_PosIndex]["nPosY"]
	local nMyMelonField_GenId = tMyMelonField_Monster[nMyMelonField_Index]["GenId"]
	Monster_AddAndCount(nMyMelonField_UserMapId,nMyMelonField_PosX,nMyMelonField_PosY,nMyMelonField_GenId,nMyMelonField_MonsterId)
	
end

-- 播种
function MyMelonField_Seeding()
	
	local nMyMelonField_SeedId = tMyMelonField_ItemId["Seed"]
	
	--没有种子
	if not Item_ChkItem(nMyMelonField_SeedId) then
		Sys_MsgBox(tMyMelonField_Text["MsgBox"]["Falied"],"MyMelonField_Goto</N>2")
		return
	end
	
	local nMyMelonField_StcIndex = MyMelonField_GetStcIndex()
	if nMyMelonField_StcIndex == 0 then
		return
	end
	
	local nMyMelonField_UserId = Get_UserId()
	local nMyMelonField_NpcId = Get_NpcId()
	
	local nMyMelonField_MapId = Get_UserMapId()
	
	-- 删除田埂 创建西瓜
	if Npc_DelDynaByID(nMyMelonField_NpcId) then
			-- 读条播种
		local nMyMelonField_Secs = tMyMelonField_Data["Secs"]
		local sMyMelonField_Content = tMyMelonField_Text["Tips"]["Seed"]
		local nMyMelonField_ActionId = tMyMelonField_Data["ActionId"]
		local sMyMelonField_Func = "MyMelonField_Explore</N>" .. nMyMelonField_StcIndex .."</N>".. nMyMelonField_MapId
		local sMyMelonField_FuncFailed = "MyMelonField_ExploreFailed</N>" .. nMyMelonField_StcIndex .."</N>".. nMyMelonField_MapId
		User_SetExplore(nMyMelonField_Secs,sMyMelonField_Content,nMyMelonField_ActionId,sMyMelonField_Func,sMyMelonField_FuncFailed,nMyMelonField_UserId)
		
	end
	
end

-- 播种读条成功
function MyMelonField_Explore(nMyMelonField_StcIndex,nMyMelonField_MapId,nMyMelonField_UserId)
	
	local nMyMelonField_SeedId = tMyMelonField_ItemId["Seed"]
	
	if nMyMelonField_StcIndex == 0 then
		return
	end
	
	--没有种子
	if not Item_ChkItem(nMyMelonField_SeedId,nil,nil,nMyMelonField_UserId) then
		MyMelonField_ExploreFailed(nMyMelonField_StcIndex,nMyMelonField_MapId,nMyMelonField_UserId)
		return
	end
	
	MyMelonField_SetStcValue(nMyMelonField_StcIndex,1,nMyMelonField_UserId)
	RewardTemplate_UseItemAndMsg(tMyMelonField_Reward[1],nMyMelonField_UserId,true)
	MyMelonField_CreateNpc(tMyMelonField_NpcId["Melon"],1,nMyMelonField_StcIndex,nMyMelonField_MapId,1)
	
end

-- 读条失败
function MyMelonField_ExploreFailed(nMyMelonField_StcIndex,nMyMelonField_MapId,nMyMelonField_UserId)
	
	MyMelonField_CreateNpc(tMyMelonField_NpcId["Filed"],1,nMyMelonField_StcIndex,nMyMelonField_MapId)
end

-- 获取Npc对应掩码索引
function MyMelonField_GetStcIndex()
	
	--获取Npc位置
	local nMyMelonField_NpcId = Get_NpcId()
	local nMyMelonField_NpcPosX = Get_NpcPositionX(nMyMelonField_NpcId)
	local nMyMelonField_NpcPosY = Get_NpcPositionY(nMyMelonField_NpcId)
	
	for i,v in ipairs(tMyMelonField_Pos["Plant"]) do
		
		if v["nPosX"] == nMyMelonField_NpcPosX and v["nPosY"] == nMyMelonField_NpcPosY then
			return i
		end
		
	end
	
	return 0
end

-- 获取成熟剩余时间
function MyMelonField_GetTime(nMyMelonField_NowIndex)
	
	-- 获取掩码下标索引
	local nMyMelonField_Index = nMyMelonField_NowIndex or MyMelonField_GetStcIndex()
	local nMyMelonField_LimitTime = tMyMelonField_Data["Times"]
	
	if nMyMelonField_NowIndex == nil then
		-- 超过十分钟
		if MyMelonField_CheckStcInterval(nMyMelonField_Index,nMyMelonField_LimitTime) then
			--设置掩码	2	已成熟
			MyMelonField_SetStcValue(nMyMelonField_Index,2)
			return -1
		end
	else
		nMyMelonField_LimitTime = tMyMelonField_Data["EnterTimes"]
	end
	
	local nMyMelonField_BeginTimes = MyMelonField_GetStcTimes(nMyMelonField_Index)
	local nMyMelonField_NowTimes = os.time()
	
	if nMyMelonField_BeginTimes == nil or nMyMelonField_NowTimes == nil then
		return nMyMelonField_LimitTime
	end
	
	local nMyMelonField_Times = nMyMelonField_NowTimes - nMyMelonField_BeginTimes
	if nMyMelonField_Times < 0 then
		return nMyMelonField_LimitTime
	end
	
	-- 转换成分钟数
	local nMyMelonField_Minutes = tonumber(os.date("%M",nMyMelonField_Times))
	
	return nMyMelonField_LimitTime - nMyMelonField_Minutes
	
end

-- 催熟
function MyMelonField_Forced()
	
	local nMyMelonField_UserId = Get_UserId()
	local nMyMelonField_Index = MyMelonField_GetStcIndex()
	
	local nMyMelonField_CultureValue = Get_UserCultureValue(nMyMelonField_UserId)
	if nMyMelonField_CultureValue < tMyMelonField_Data["Culture"] then
		--修为值不足
		Sys_MsgBox(tMyMelonField_Text["MsgBox"]["Culture"])
		return
	end
	
	local nMyMelonField_NpcId = Get_NpcId()
	if Npc_DelDynaByID(nMyMelonField_NpcId) then
		-- 读条催熟
		local nMyMelonField_Secs = tMyMelonField_Data["Secs"]
		local sMyMelonField_Content = tMyMelonField_Text["Tips"]["Up"]
		local nMyMelonField_ActionId = tMyMelonField_Data["ActionId"]
		local sMyMelonField_Func = "MyMelonField_ForcedSuccess</N>" .. nMyMelonField_Index
		local sMyMelonField_FuncFailed = "MyMelonField_ForcedFailed</N>" .. nMyMelonField_Index
		User_SetExplore(nMyMelonField_Secs,sMyMelonField_Content,nMyMelonField_ActionId,sMyMelonField_Func,sMyMelonField_FuncFailed,nMyMelonField_UserId)
	end
	
end

-- 播种催熟成功
function MyMelonField_ForcedSuccess(nMyMelonField_Index,nMyMelonField_UserId)
	
	-- 扣除修为值
	if User_AddCultureValue((-1)*tMyMelonField_Data["Culture"],nMyMelonField_UserId) then
		Sys_SaveActionFestivalLog(tMyMelonField_Log["Log"][2],nMyMelonField_UserId)
		
		local nMyMelonField_NpcId = tMyMelonField_NpcId["Melon"]
		local nMyMelonField_NowMapId = Get_UserMapId(nMyMelonField_UserId)
		MyMelonField_CreateNpc(nMyMelonField_NpcId,1,nMyMelonField_Index,nMyMelonField_NowMapId,2)
		MyMelonField_SetStcValue(nMyMelonField_Index,3,nMyMelonField_UserId)
		-- LinkNpcGossipFunc_New(nMyMelonField_NpcId,"2-1",nil,nil,nMyMelonField_UserId)
		
	else
		--修为值不足
		Sys_MsgBox(tMyMelonField_Text["MsgBox"]["Culture"],nil,nil,nMyMelonField_UserId)
		MyMelonField_ForcedFailed(nMyMelonField_Index,nMyMelonField_UserId)
	end
	
end

function MyMelonField_ForcedFailed(nMyMelonField_Index,nMyMelonField_UserId)
	local nMyMelonField_NpcId = tMyMelonField_NpcId["Melon"]
	local nMyMelonField_NowMapId = Get_UserMapId(nMyMelonField_UserId)
	MyMelonField_CreateNpc(nMyMelonField_NpcId,1,nMyMelonField_Index,nMyMelonField_NowMapId,1)
end

-- 摘下西瓜
function MyMelonField_PickMelon(nMyMelonField_Num)
	
	-- 背包空间判断
	local nMyMelonField_Space = RewardTemplate_GetRewardSpace(tMyMelonField_Reward[3331103][3],nMyMelonField_UserId)
	if not User_CheckLeftSpace(nMyMelonField_Space) then
		Sys_MsgBox(tMyMelonField_Text["MsgBox"]["NoSpace"])
		return
	end
	
	local nMyMelonField_UserId = Get_UserId()
	local nMyMelonField_Index = MyMelonField_GetStcIndex()
	local nMyMelonField_NpcId = Get_NpcId()
	local nMyMelonField_Data = MyMelonField_GetStcValue(nMyMelonField_Index)
	
	-- 异国偷西瓜
	if nMyMelonField_Num == 2 then
		MyMelonField_ClearStcInterval(11)
		nMyMelonField_Data = MyMelonField_GetStcValue(11)
		
		if nMyMelonField_Data >= tMyMelonField_Stc[11]["Limit"] then
			Sys_MsgBox(tMyMelonField_Text["MsgBox"]["Limit"])
		else
			
			if tMyMelonField_Steal[nMyMelonField_UserId] == nil then
				tMyMelonField_Steal[nMyMelonField_UserId] = 0
			end
			local bMyMelonField_Flag = true
			
			tMyMelonField_Steal[nMyMelonField_UserId] = tMyMelonField_Steal[nMyMelonField_UserId] + 1
			if tMyMelonField_Steal[nMyMelonField_UserId] > 2 then
				bMyMelonField_Flag = Sys_Random(tMyMelonField_Data["nSteal"],tMyMelonField_Data["nTotal"])
			end
			
			--偷瓜成功
			if bMyMelonField_Flag then
				
				if Npc_DelDynaByID(nMyMelonField_NpcId) then
					tMyMelonField_Record[nMyMelonField_UserId][nMyMelonField_Index] = 1
					MyMelonField_SetStcValue(11,nMyMelonField_Data+1)
					RewardTemplate_UseItemAndMsg(tMyMelonField_Reward[3331104][3])
					Sys_MsgBox(tMyMelonField_Text["MsgBox"]["Steal"])
					local nMyMelonField_StcIndex = MyMelonField_GetStcIndex()
					MyMelonField_CreateNpc(tMyMelonField_NpcId["Melon"],2,nMyMelonField_StcIndex,nil,1)
				end
				
			else
				-- 失败 回到自己的瓜田
				MyMelonField_EnterMap(1,1)
			end
			
		end
		
		return
	end
	
	-- 删除西瓜 创建田埂
	if Npc_DelDynaByID(nMyMelonField_NpcId) then
		MyMelonField_SetStcValue(nMyMelonField_Index,0)
		
		-- 自然成熟
		if nMyMelonField_Data == 2 then
			RewardTemplate_UseItemAndMsg(tMyMelonField_Reward[3331104][3])
		end
		
		-- 催熟
		if nMyMelonField_Data == 3 then
			RewardTemplate_UseItemAndMsg(tMyMelonField_Reward[3331103][3])
		end
		
		Sys_MsgBox(tMyMelonField_Text["MsgBox"]["Get"])
		MyMelonField_CreateNpc(tMyMelonField_NpcId["Filed"],1,nMyMelonField_Index)
	end
	
end

--返回地图
function MyMelonField_Trans(nMyMelonField_UserId)
	local nMyMelonField_NowUserId = nMyMelonField_UserId or Get_UserId()
	local nMyMelonField_MapId = tMyMelonField_Pos["Return"]["MapId"]
	local nMyMelonField_PosX = tMyMelonField_Pos["Return"]["PosX"]
	local nMyMelonField_PosY = tMyMelonField_Pos["Return"]["PosY"]
	
	User_UserRandBoundTrans(nMyMelonField_MapId,nMyMelonField_PosX,nMyMelonField_PosY,5,5,1,nMyMelonField_NowUserId)
end

-- 林间小道使用	每日有3次的进入异国瓜田
function MyMelonField_ForestPath(nMyMelonField_Index)
	
	-- 回到我的瓜田
	if nMyMelonField_Index == 2 then
		MyMelonField_EnterMap(1)
		return
	end
	
	MyMelonField_ClearStcInterval(10)
	local nMyMelonField_Data = MyMelonField_GetStcValue(10)
	
	if nMyMelonField_Data >= tMyMelonField_Stc[10]["Limit"] then
		Sys_MsgBox(tMyMelonField_Text["MsgBox"]["EnterLimit"])
		return
	end
	
	-- 每次进入间隔30分钟
	if (not MyMelonField_CheckStcInterval(10,tMyMelonField_Data["EnterTimes"])) and (nMyMelonField_Data > 0) then
		local nMyMelonField_Times = MyMelonField_GetTime(10)
		Sys_MsgBox(string.format(tMyMelonField_Text["MsgBox"]["EnterFailed"],nMyMelonField_Times))
		return
	end
	
	-- 进入异国瓜田
	MyMelonField_SetStcValue(10,nMyMelonField_Data+1)
	MyMelonField_EnterMap(2)
	-- 偷瓜次数清零
	local nMyMelonField_UserId = Get_UserId()
	tMyMelonField_Steal[nMyMelonField_UserId] = 0
	User_TalkChannel2005(tMyMelonField_Text["MsgBox"]["EnterOther"])
end

--怪物掉落
function MyMelonField_KillReward(nMyMelonField_MonsterId)
	--判断活动时间
	if not Sys_ChkFullTime(tMyMelonField_Data["ActivityTime"]) then
		return 
	end
	
	-- 背包空间判断
	local nMyMelonField_Space = RewardTemplate_GetRewardSpace(tMyMelonField_Reward[tMyMelonField_Monster[1]["Id"]])
	if nMyMelonField_MonsterId == tMyMelonField_Monster[2]["Id"] then
		nMyMelonField_Space = RewardTemplate_GetRandomSpace(tMyMelonField_Reward,nMyMelonField_MonsterId)
	end
	
	if not User_CheckLeftSpace(nMyMelonField_Space) then
		User_TalkChannel2005(string.format(tAtivityForPray_Text["Sys_Msg"]["FullSpace"],nMyMelonField_Space))
		return
	end
	
	if nMyMelonField_MonsterId == tMyMelonField_Monster[1]["Id"] then
		local nMyMelonField_Data = MyMelonField_GetStcValue(12)
		MyMelonField_SetStcValue(12,nMyMelonField_Data + 1)
		RewardTemplate_UseItemAndMsg(tMyMelonField_Reward[nMyMelonField_MonsterId])
		User_TalkChannel2005(tMyMelonField_Text["MsgBox"]["Monster"])
	end
	
	if nMyMelonField_MonsterId == tMyMelonField_Monster[2]["Id"] then
		local tMyMelonField_NewReward,sMyMelonField_RewardStr = RewardTemplate_RandomReward(tMyMelonField_Reward,nMyMelonField_MonsterId)
		
		if tMyMelonField_NewReward[1]["tAward"][1]["RewardItem"] ~= nil then
			-- 获得精装神器礼包
			if tMyMelonField_NewReward[1]["tAward"][1]["RewardItem"][1]["Id"] == tMyMelonField_ItemId["Pack"] then
				User_TalkChannel2005(tMyMelonField_Text["MsgBox"]["Monster2"])
			end
			
		end
		
		
	end
	
end

--创建陷阱
function MyMelonField_CreateTrap(nMyMelonField_Type,nMyMelonField_Index,nMyMelonField_MapId)
	local nMyMelonField_UserMapId = nMyMelonField_MapId or Get_UserMapId()
	
	local nMyMelonField_TrapType = tMyMelonField_Trap[nMyMelonField_Type]["TrapType"]
	local nMyMelonField_Look = tMyMelonField_Trap[nMyMelonField_Type]["Look"]
	local nMyMelonField_PosX = tMyMelonField_Trap[nMyMelonField_Type][nMyMelonField_Index]["PosX"]
	local nMyMelonField_PosY = tMyMelonField_Trap[nMyMelonField_Type][nMyMelonField_Index]["PosY"]
	Trap_CreateMapTrap(nMyMelonField_TrapType,nMyMelonField_Look,0,nMyMelonField_UserMapId,nMyMelonField_PosX,nMyMelonField_PosY,3,3)
end

-- 品尝西瓜
function MyMelonField_MelonUse(nMyMelonField_ItemId)
	local nMyMelonField_UserId = Get_UserId()
	
	-- 背包空间判断
	-- local nMyMelonField_Space = RewardTemplate_GetRandomSpace(tMyMelonField_Reward[nMyMelonField_ItemId],3,nMyMelonField_UserId)
	-- if not User_CheckLeftSpace(nMyMelonField_Space) then
		-- User_TalkChannel2005(string.format(tRewardTemplate_Text["NoSpace"],tostring(nMyMelonField_Space)))
		-- return
	-- end

	-- 仲夏积分 增加
	-- local nMyMelonField_Data = MyMelonField_GetStcValue(13)
	-- local nMyMelonField_Add = tMyMelonField_Stc[13][nMyMelonField_ItemId]
	
	--等级不足
	if not User_JudgeLevelAndMetempsychosis(tMyMelonField_Data["nLevel"],tMyMelonField_Data["nMetempsychosis"],nMyMelonField_UserId) then 
		local tMyMelonField_Get,sMyMelonField_RewardStr = RewardTemplate_RandomReward(tMyMelonField_Reward[nMyMelonField_ItemId],2)
		if tMyMelonField_Get then
			-- MyMelonField_SetStcValue(13,nMyMelonField_Data + nMyMelonField_Add)
			Sys_MsgBox(string.format(tMyMelonField_Text["MsgBox"]["Rward"],sMyMelonField_RewardStr))
		end
		return
	end
	
	local tMyMelonField_Get,sMyMelonField_Str = RewardTemplate_RandomReward(tMyMelonField_Reward[nMyMelonField_ItemId],1)
	if tMyMelonField_Get then
		-- MyMelonField_SetStcValue(13,nMyMelonField_Data + nMyMelonField_Add)
		Sys_MsgBox(string.format(tMyMelonField_Text["MsgBox"]["Rward"],sMyMelonField_Str))
	end
end

-- 判断西瓜成熟 出对应对白
function MyMelonField_MelonDialog(nMyMelonField_Languages,nMyMelonField_StcIndex)
	
	local nMyMelonField_Index = nMyMelonField_StcIndex or MyMelonField_GetStcIndex()
	local nMyMelonField_Data = MyMelonField_GetStcValue(nMyMelonField_Index)
	local nMyMelonField_NpcId = tMyMelonField_NpcId["Melon"]
	
	if nMyMelonField_Languages == 2 then
		local nMyMelonField_UserId = Get_UserId()
		nMyMelonField_Data = tMyMelonField_Record[nMyMelonField_UserId][nMyMelonField_Index] or 1
		
		if nMyMelonField_Data == 1 then
			return true
		end
		
	end
	
	if nMyMelonField_Data > 1 then
		return false
	end
	
	local nMyMelonField_Times = MyMelonField_GetTime()
	if nMyMelonField_Times == -1 then
		MyMelonField_SetStcValue(nMyMelonField_Index,2)
		return false
	end
	
	tNpcGossip[nMyMelonField_NpcId]["Text111"] = string.format(tMyMelonField_Text[nMyMelonField_NpcId]["Text111"],nMyMelonField_Times)
	return true
	
end

--寻路
function MyMelonField_Goto(nMyMelonField_Index,nMyMelonField_MapId)
	local nMyMelonField_NowMapId = nMyMelonField_MapId or Get_UserMapId()
	local nMyMelonField_MapDoc = Get_MapDoc(nMyMelonField_NowMapId)
	
	if nMyMelonField_MapDoc ~= tMyMelonField_Instance[1]["MapDoc"] then
		return
	end
	
	Sys_GotoSomeWhere(tMyMelonField_Pos["GoTo"][nMyMelonField_Index]["nPosX"],tMyMelonField_Pos["GoTo"][nMyMelonField_Index]["nPosY"],nMyMelonField_NowMapId,0)
end
----------------------------------NPC部分---------------------------------------------
-- 闰土
tNpcFace[2553] = 82
tNpcGossip[26579]= tNpcGossip[26579] or DefaultNpc:new{}
tNpcGossip[26579]["OptionHidden"] = 1
tNpcGossip[26579]["DialogueText"] = tMyMelonField_Text[26579]

tNpcGossip[26579]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[26579]["ChkFunc1-1"]= function()
	return Sys_ChkFullTime(tMyMelonField_Data["ActivityTime"])
end
tNpcGossip[26579]["tOption1-1"] = {111}
tNpcGossip[26579]["OptionFunc111"] = "MyMelonField_EnterMap</N>1"

tNpcGossip[26579]["Text2-1"] = {111,211,212,213,214}
tNpcGossip[26579]["tOption2-1"] = {211}
tNpcGossip[26579]["OptionFunc211"] = "MyMelonField_Trans"

-- 田埂
tNpcGossip[26580]= tNpcGossip[26580] or DefaultNpc:new{}
tNpcGossip[26580]["OptionHidden"] = 1
tNpcGossip[26580]["DialogueText"] = tMyMelonField_Text[26580]
tNpcGossip[26580]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[26580]["tOption1-1"] = {111,112}
tNpcGossip[26580]["OptionFunc111"] = "MyMelonField_Seeding"

-- 西瓜
tNpcGossip[26581]= tNpcGossip[26581] or DefaultNpc:new{}
tNpcGossip[26581]["OptionHidden"] = 1
tNpcGossip[26581]["DialogueText"] = tMyMelonField_Text[26581]
tNpcGossip[26581]["Text1-1"] = {111}
tNpcGossip[26581]["tOption1-1"] = {111,112}
tNpcGossip[26581]["OptionFunc111"] = "MyMelonField_Forced"

-- 成熟
tNpcGossip[26581]["Text2-1"] = {211}
tNpcGossip[26581]["tOption2-1"] = {211,212}
tNpcGossip[26581]["OptionFunc211"] = "MyMelonField_PickMelon"

-- 异国瓜田西瓜对白
tNpcGossip[26581]["Text3-1"] = {311}
tNpcGossip[26581]["tOption3-1"] = {311}

--偷瓜
tNpcGossip[26581]["Text4-1"] = {411}
tNpcGossip[26581]["tOption4-1"] = {411,412}
tNpcGossip[26581]["OptionFunc411"] = "MyMelonField_PickMelon</N>2"

--林间小道
tNpcGossip[26582]= tNpcGossip[26582] or DefaultNpc:new{}
tNpcGossip[26582]["OptionHidden"] = 1
tNpcGossip[26582]["DialogueText"] = tMyMelonField_Text[26582]
tNpcGossip[26582]["Text1-1"] = {111}
tNpcGossip[26582]["tOption1-1"] = {111,112}
tNpcGossip[26582]["OptionFunc111"] = "MyMelonField_ForestPath</N>1"

tNpcGossip[26582]["Text2-1"] = {211}
tNpcGossip[26582]["tOption2-1"] = {211,212}
tNpcGossip[26582]["OptionFunc211"] = "MyMelonField_ForestPath</N>2"

--催熟的西瓜
tItemFace[3331103] = 2970
tItem[3331103] = tItem[3331103] or {}
tItem[3331103]["DialogueText"] = tMyMelonField_Text[3331103]
tItem[3331103]["Text1-1"] = {111}
tItem[3331103]["tOption1-1"] = {111,112}
tItem[3331103]["OptionFunc111"]="MyMelonField_MelonUse</N>3331103"

-- 成熟的西瓜
tItemFace[3331104] = 2971
tItem[3331104] = tItem[3331104]  or {}
tItem[3331104]["DialogueText"] = tMyMelonField_Text[3331103]
tItem[3331104]["Text1-1"] = {111}
tItem[3331104]["tOption1-1"] = {111,112}
tItem[3331104]["OptionFunc111"]="MyMelonField_MelonUse</N>3331104"

-- 瓜田陷阱
tTrap[238] = tTrap[238] or {}
tTrap[238]["Function"] = function (nMyMelonField_TrapId,nMyMelonField_TrapType)
	MyMelonField_Trans()
end
---------------------------------怪物部分---------------------------------------------
local tMyMelonField_KillReward = {}
	tMyMelonField_KillReward["ActivityTime"] = tMyMelonField_Data["ActivityTime"]
	tMyMelonField_KillReward["Function"] = MyMelonField_KillReward
	tMyMelonField_KillReward["MonsterId"]= {4066,4089}
	table.insert(tMonsterDrop_AreaLoad,tMyMelonField_KillReward)
