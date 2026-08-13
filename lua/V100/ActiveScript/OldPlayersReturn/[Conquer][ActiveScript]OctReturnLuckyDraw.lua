------------------------------------------------------------------------------------
--Name:		160901[简体征服][活动脚本]10月回归活动制作之抽奖
--Creator: 	兰瑞妹
--Created:	2016/09/05
------------------------------------------------------------------------------------

-- 命名前缀
-- OctReturn_LuckyDraw_

-- #stc 掩码说明 
-- #stc(148,83) 背包信
-- #stc(148,84) 首次开启国战显赫功勋礼包 个位 ==1
-- #stc(148,84) 首次开启黄金联赛活跃包 十位 ==1


-- 常量表
local tOctReturn_LuckyDraw_Count = {}
	-- 9月部分领卷
	tOctReturn_LuckyDraw_Count["ReceiveActivityTime"] = "2016-09-15 00:00 2016-09-30 23:59"
	-- 10月部分抽奖
	tOctReturn_LuckyDraw_Count["DrawActivityTime"] = "2016-10-08 00:00 2016-10-31 23:59"
	-- 物品时间
	tOctReturn_LuckyDraw_Count["ItemActivityTime"] = "2016-09-15 00:00 2016-10-31 23:59"
	
	-- 玩家等级要求
	tOctReturn_LuckyDraw_Count["Metempsychosis"] = 0
	tOctReturn_LuckyDraw_Count["Level"] = 50
	
	-- 属性轮盘
	tOctReturn_LuckyDraw_Count["TaskId"] = 3742
	
	-- 抽奖卷
	tOctReturn_LuckyDraw_Count["DrawId"] = 3300568
	-- 最大数量
	tOctReturn_LuckyDraw_Count["DrawMaxNum"] = 100
	tOctReturn_LuckyDraw_Count["GiveAttr"] = "0 %d"
	
-- Log表
local tOctReturn_LuckyDraw_Log = {}
	-- 过期删除物品
	tOctReturn_LuckyDraw_Log["DeleteItem"] = "0,0,%d,1,12000512,2,0,0"
	
	-- 获得抽奖卷
	tOctReturn_LuckyDraw_Log["GetDraw"] = {}
	-- 玩家签到获得抽奖券
	tOctReturn_LuckyDraw_Log["GetDraw"][1] = "0,0,0,0,12000512,1[1],3300568,1"
	-- 玩家使用正气令获得抽奖券
	tOctReturn_LuckyDraw_Log["GetDraw"][2] = "0,0,0,0,12000512,1[2],3300568,1"
	-- 玩家使用国战礼包获得抽奖券
	tOctReturn_LuckyDraw_Log["GetDraw"][3] = "0,0,0,0,12000512,1[3],3300568,1"
	-- 玩家通过战场杀敌获得抽奖券
	tOctReturn_LuckyDraw_Log["GetDraw"][4] = "0,0,0,0,12000512,1[4],3300568,5"
	-- 玩家通过矿洞冒险获得抽奖券
	tOctReturn_LuckyDraw_Log["GetDraw"][5] = "0,0,0,0,12000512,1[5],3300568,5"
	-- 玩家通过决战冥城获得抽奖券
	tOctReturn_LuckyDraw_Log["GetDraw"][6] = "0,0,0,0,12000512,1[6],3300568,5"
	-- 玩家通过天魔降服获得抽奖券
	tOctReturn_LuckyDraw_Log["GetDraw"][7] = "0,0,0,0,12000512,1[7],3300568,5"
	-- 玩家通过造化重生获得抽奖券
	tOctReturn_LuckyDraw_Log["GetDraw"][8] = "0,0,0,0,12000512,1[8],3300568,5"
	-- 玩家通过活跃礼包获得抽奖券
	tOctReturn_LuckyDraw_Log["GetDraw"][9] = "0,0,0,0,12000512,1[9],3300568,2"
	
local tOctReturn_LuckyDraw_RewardNum = {1,1,1,5,5,5,5,5,2}

-- 条件判断
local tOctReturn_LuckyDraw_RewardCondition = {}
	-- 首次开启国战显赫功勋礼包
	tOctReturn_LuckyDraw_RewardCondition[3] = {}
	tOctReturn_LuckyDraw_RewardCondition[3]["StcIndex"] = 1
	tOctReturn_LuckyDraw_RewardCondition[3]["StcMin"] = -1
	tOctReturn_LuckyDraw_RewardCondition[3]["StcMax"] = -1
	tOctReturn_LuckyDraw_RewardCondition[3]["StcSave"] = 1
	-- 首次开启黄金联赛活跃包
	tOctReturn_LuckyDraw_RewardCondition[9] = {}
	tOctReturn_LuckyDraw_RewardCondition[9]["StcIndex"] = 1
	tOctReturn_LuckyDraw_RewardCondition[9]["StcMin"] = -2
	tOctReturn_LuckyDraw_RewardCondition[9]["StcMax"] = -2
	tOctReturn_LuckyDraw_RewardCondition[9]["StcSave"] = 10
	
-- stc掩码
local tOctReturn_LuckyDraw_Stc = {}
	-- 首次开启限制
	tOctReturn_LuckyDraw_Stc[1] = {}
	tOctReturn_LuckyDraw_Stc[1]["EventType"] = 148
	tOctReturn_LuckyDraw_Stc[1]["DataType"] = 84
	
-- 宝箱对应的消耗奖券
local tOctReturn_LuckyDraw_DrawItemNum = {}
	tOctReturn_LuckyDraw_DrawItemNum[3300569] = 1
	tOctReturn_LuckyDraw_DrawItemNum[3300570] = 2
	tOctReturn_LuckyDraw_DrawItemNum[3300571] = 3
	tOctReturn_LuckyDraw_DrawItemNum[3300572] = 5
	tOctReturn_LuckyDraw_DrawItemNum[3300573] = 6
	tOctReturn_LuckyDraw_DrawItemNum[3300574] = 7
	
local tOctReturn_LuckyDraw_ItemPathFind = {}
	tOctReturn_LuckyDraw_ItemPathFind["PosX"] = 260
	tOctReturn_LuckyDraw_ItemPathFind["PosY"] = 202
	tOctReturn_LuckyDraw_ItemPathFind["MapId"] = 1036
	tOctReturn_LuckyDraw_ItemPathFind["NpcId"] = 19476
	
-- 奖励表
local tOctReturn_LuckyDraw_Reward = {}
	-- 获得金秋狂欢秘钥
	tOctReturn_LuckyDraw_Reward[1] = {}
	tOctReturn_LuckyDraw_Reward[1]["RewardItem"] = {}
	tOctReturn_LuckyDraw_Reward[1]["RewardItem"][1] = {}
	tOctReturn_LuckyDraw_Reward[1]["RewardItem"][1]["Id"] = 3300568
	tOctReturn_LuckyDraw_Reward[1]["RewardItem"][1]["Attr"] = ""
	tOctReturn_LuckyDraw_Reward[1]["Log"] = ""
	tOctReturn_LuckyDraw_Reward[1]["RewardEffect"] = {}
	tOctReturn_LuckyDraw_Reward[1]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 经验狂欢宝箱
	tOctReturn_LuckyDraw_Reward[3300569] = {}
	tOctReturn_LuckyDraw_Reward[3300569]["RewardNoNeedTip"] = 1
	tOctReturn_LuckyDraw_Reward[3300569]["RewardItem"] = {}
	tOctReturn_LuckyDraw_Reward[3300569]["RewardItem"][1] = {}
	tOctReturn_LuckyDraw_Reward[3300569]["RewardItem"][1]["Id"] = 3300569
	tOctReturn_LuckyDraw_Reward[3300569]["RewardItem"][1]["Attr"] = "0 1"
	tOctReturn_LuckyDraw_Reward[3300569]["Log"] = "0,0,0,0,12000512,2,3300569,1"
	tOctReturn_LuckyDraw_Reward[3300569]["RewardEffect"] = {}
	tOctReturn_LuckyDraw_Reward[3300569]["RewardEffect"]["Effect"] = "angelwing"
	-- 属性狂欢宝箱
	tOctReturn_LuckyDraw_Reward[3300570] = {}
	tOctReturn_LuckyDraw_Reward[3300570]["RewardNoNeedTip"] = 1
	tOctReturn_LuckyDraw_Reward[3300570]["RewardItem"] = {}
	tOctReturn_LuckyDraw_Reward[3300570]["RewardItem"][1] = {}
	tOctReturn_LuckyDraw_Reward[3300570]["RewardItem"][1]["Id"] = 3300570
	tOctReturn_LuckyDraw_Reward[3300570]["RewardItem"][1]["Attr"] = "0 1"
	tOctReturn_LuckyDraw_Reward[3300570]["Log"] = "0,0,0,0,12000512,2,3300570,1"
	tOctReturn_LuckyDraw_Reward[3300570]["RewardEffect"] = {}
	tOctReturn_LuckyDraw_Reward[3300570]["RewardEffect"]["Effect"] = "angelwing"
	-- 练功狂欢宝箱
	tOctReturn_LuckyDraw_Reward[3300571] = {}
	tOctReturn_LuckyDraw_Reward[3300571]["RewardNoNeedTip"] = 1
	tOctReturn_LuckyDraw_Reward[3300571]["RewardItem"] = {}
	tOctReturn_LuckyDraw_Reward[3300571]["RewardItem"][1] = {}
	tOctReturn_LuckyDraw_Reward[3300571]["RewardItem"][1]["Id"] = 3300571
	tOctReturn_LuckyDraw_Reward[3300571]["RewardItem"][1]["Attr"] = "0 1"
	tOctReturn_LuckyDraw_Reward[3300571]["Log"] = "0,0,0,0,12000512,2,3300571,1"
	tOctReturn_LuckyDraw_Reward[3300571]["RewardEffect"] = {}
	tOctReturn_LuckyDraw_Reward[3300571]["RewardEffect"]["Effect"] = "angelwing"
	-- 星陨石狂欢宝箱
	tOctReturn_LuckyDraw_Reward[3300572] = {}
	tOctReturn_LuckyDraw_Reward[3300572]["RewardNoNeedTip"] = 1
	tOctReturn_LuckyDraw_Reward[3300572]["RewardItem"] = {}
	tOctReturn_LuckyDraw_Reward[3300572]["RewardItem"][1] = {}
	tOctReturn_LuckyDraw_Reward[3300572]["RewardItem"][1]["Id"] = 3300572
	tOctReturn_LuckyDraw_Reward[3300572]["RewardItem"][1]["Attr"] = "0 1"
	tOctReturn_LuckyDraw_Reward[3300572]["Log"] = "0,0,0,0,12000512,2,3300572,1"
	tOctReturn_LuckyDraw_Reward[3300572]["RewardEffect"] = {}
	tOctReturn_LuckyDraw_Reward[3300572]["RewardEffect"]["Effect"] = "angelwing"
	-- 炼气狂欢宝箱
	tOctReturn_LuckyDraw_Reward[3300573] = {}
	tOctReturn_LuckyDraw_Reward[3300573]["RewardNoNeedTip"] = 1
	tOctReturn_LuckyDraw_Reward[3300573]["RewardItem"] = {}
	tOctReturn_LuckyDraw_Reward[3300573]["RewardItem"][1] = {}
	tOctReturn_LuckyDraw_Reward[3300573]["RewardItem"][1]["Id"] = 3300573
	tOctReturn_LuckyDraw_Reward[3300573]["RewardItem"][1]["Attr"] = "0 1"
	tOctReturn_LuckyDraw_Reward[3300573]["Log"] = "0,0,0,0,12000512,2,3300573,1"
	tOctReturn_LuckyDraw_Reward[3300573]["RewardEffect"] = {}
	tOctReturn_LuckyDraw_Reward[3300573]["RewardEffect"]["Effect"] = "angelwing"
	-- 天石狂欢宝箱
	tOctReturn_LuckyDraw_Reward[3300574] = {}
	tOctReturn_LuckyDraw_Reward[3300574]["RewardNoNeedTip"] = 1
	tOctReturn_LuckyDraw_Reward[3300574]["RewardItem"] = {}
	tOctReturn_LuckyDraw_Reward[3300574]["RewardItem"][1] = {}
	tOctReturn_LuckyDraw_Reward[3300574]["RewardItem"][1]["Id"] = 3300574
	tOctReturn_LuckyDraw_Reward[3300574]["RewardItem"][1]["Attr"] = "0 1"
	tOctReturn_LuckyDraw_Reward[3300574]["Log"] = "0,0,0,0,12000512,2,3300574,1"
	tOctReturn_LuckyDraw_Reward[3300574]["RewardEffect"] = {}
	tOctReturn_LuckyDraw_Reward[3300574]["RewardEffect"]["Effect"] = "angelwing"
	
	-- +6赤炼石（赠）
	tOctReturn_LuckyDraw_Reward[3303298] = {}
	tOctReturn_LuckyDraw_Reward[3303298][1] = {}  
	tOctReturn_LuckyDraw_Reward[3303298][1]["LogId"] = 12000719
	tOctReturn_LuckyDraw_Reward[3303298][1]["DeleteItem"] = {}
	tOctReturn_LuckyDraw_Reward[3303298][1]["DeleteItem"][1] = {}
	tOctReturn_LuckyDraw_Reward[3303298][1]["DeleteItem"][1]["Id"] = 3303298
	tOctReturn_LuckyDraw_Reward[3303298][1]["RewardItem"] = {}
	tOctReturn_LuckyDraw_Reward[3303298][1]["RewardItem"][1] = {}
	tOctReturn_LuckyDraw_Reward[3303298][1]["RewardItem"][1]["Id"] = 730006  --+6赤炼石（赠）
	tOctReturn_LuckyDraw_Reward[3303298][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tOctReturn_LuckyDraw_Reward[3303298][1]["RewardEffect"] = {}
	tOctReturn_LuckyDraw_Reward[3303298][1]["RewardEffect"]["SzObj"] = "self"
	tOctReturn_LuckyDraw_Reward[3303298][1]["RewardEffect"]["Effect"] = "angelwing"
	
	--8000气力值礼包
	tOctReturn_LuckyDraw_Reward[3305452]={}
	tOctReturn_LuckyDraw_Reward[3305452]["DeleteItem"] = {}
	tOctReturn_LuckyDraw_Reward[3305452]["DeleteItem"][1] = {}
	tOctReturn_LuckyDraw_Reward[3305452]["DeleteItem"][1]["Id"] = 3305452
	--气力值*8000
	tOctReturn_LuckyDraw_Reward[3305452]["RewardEffect"] = {}
	tOctReturn_LuckyDraw_Reward[3305452]["RewardEffect"]["SzObj"] = "self"
	tOctReturn_LuckyDraw_Reward[3305452]["RewardEffect"]["Effect"] = "zf2-e128"
	tOctReturn_LuckyDraw_Reward[3305452]["RewardStrengthValue"] = {}
	tOctReturn_LuckyDraw_Reward[3305452]["RewardStrengthValue"]["Value"] = 8000
	tOctReturn_LuckyDraw_Reward[3305452]["LogId"] =12000874
	
	
	
	--偶像武器外套（30天）礼包
	tOctReturn_LuckyDraw_Reward[3307482] = {}
	--春庭月·流光
	tOctReturn_LuckyDraw_Reward[3307482][1] = {}
	tOctReturn_LuckyDraw_Reward[3307482][1]["DeleteItem"] = {}
	tOctReturn_LuckyDraw_Reward[3307482][1]["DeleteItem"][1] = {}
	tOctReturn_LuckyDraw_Reward[3307482][1]["DeleteItem"][1]["Id"] = 3307482
	tOctReturn_LuckyDraw_Reward[3307482][1]["RewardItem"] = {}
	tOctReturn_LuckyDraw_Reward[3307482][1]["RewardItem"][1] = {}
	tOctReturn_LuckyDraw_Reward[3307482][1]["RewardItem"][1]["Id"] = 350108
	tOctReturn_LuckyDraw_Reward[3307482][1]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tOctReturn_LuckyDraw_Reward[3307482][1]["LogId"] = 12001003
	--凤求凰·流光
	tOctReturn_LuckyDraw_Reward[3307482][2] = {}
	tOctReturn_LuckyDraw_Reward[3307482][2]["DeleteItem"] = {}
	tOctReturn_LuckyDraw_Reward[3307482][2]["DeleteItem"][1] = {}
	tOctReturn_LuckyDraw_Reward[3307482][2]["DeleteItem"][1]["Id"] = 3307482
	tOctReturn_LuckyDraw_Reward[3307482][2]["RewardItem"] = {}
	tOctReturn_LuckyDraw_Reward[3307482][2]["RewardItem"][1] = {}
	tOctReturn_LuckyDraw_Reward[3307482][2]["RewardItem"][1]["Id"] = 360208
	tOctReturn_LuckyDraw_Reward[3307482][2]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tOctReturn_LuckyDraw_Reward[3307482][2]["LogId"] = 12001003
	--长相守·流光
	tOctReturn_LuckyDraw_Reward[3307482][3] = {}
	tOctReturn_LuckyDraw_Reward[3307482][3]["DeleteItem"] = {}
	tOctReturn_LuckyDraw_Reward[3307482][3]["DeleteItem"][1] = {}
	tOctReturn_LuckyDraw_Reward[3307482][3]["DeleteItem"][1]["Id"] = 3307482
	tOctReturn_LuckyDraw_Reward[3307482][3]["RewardItem"] = {}
	tOctReturn_LuckyDraw_Reward[3307482][3]["RewardItem"][1] = {}
	tOctReturn_LuckyDraw_Reward[3307482][3]["RewardItem"][1]["Id"] = 380054
	tOctReturn_LuckyDraw_Reward[3307482][3]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tOctReturn_LuckyDraw_Reward[3307482][3]["LogId"] = 12001003
	--长相思·流光
	tOctReturn_LuckyDraw_Reward[3307482][4] = {}
	tOctReturn_LuckyDraw_Reward[3307482][4]["DeleteItem"] = {}
	tOctReturn_LuckyDraw_Reward[3307482][4]["DeleteItem"][1] = {}
	tOctReturn_LuckyDraw_Reward[3307482][4]["DeleteItem"][1]["Id"] = 3307482
	tOctReturn_LuckyDraw_Reward[3307482][4]["RewardItem"] = {}
	tOctReturn_LuckyDraw_Reward[3307482][4]["RewardItem"][1] = {}
	tOctReturn_LuckyDraw_Reward[3307482][4]["RewardItem"][1]["Id"] = 370048
	tOctReturn_LuckyDraw_Reward[3307482][4]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tOctReturn_LuckyDraw_Reward[3307482][4]["LogId"] = 12001003
	
	-- 3308508 万能神纹精粹*150
	tOctReturn_LuckyDraw_Reward[3308508] = {}
	tOctReturn_LuckyDraw_Reward[3308508]["RewardItem"] = {}
	tOctReturn_LuckyDraw_Reward[3308508]["RewardItem"][1] = {}
	tOctReturn_LuckyDraw_Reward[3308508]["RewardItem"][1]["Id"] = 4060001
	tOctReturn_LuckyDraw_Reward[3308508]["RewardItem"][1]["Attr"] = "0 150 3"
	tOctReturn_LuckyDraw_Reward[3308508]["DeleteItem"] = {}
	tOctReturn_LuckyDraw_Reward[3308508]["DeleteItem"][1] = {}
	tOctReturn_LuckyDraw_Reward[3308508]["DeleteItem"][1]["Id"] = 3308508
	tOctReturn_LuckyDraw_Reward[3308508]["RewardEffect"] = {}
	tOctReturn_LuckyDraw_Reward[3308508]["RewardEffect"]["Effect"] = "angelwing"
	tOctReturn_LuckyDraw_Reward[3308508]["LogId"] = 12001052
	
	-- 3311028 5颗明亮星陨石包 里面有5颗明亮星陨石 玩家点击礼包后获得
	tOctReturn_LuckyDraw_Reward[3311028] = {}
	tOctReturn_LuckyDraw_Reward[3311028]["LogId"] = 18000187
	tOctReturn_LuckyDraw_Reward[3311028]["DeleteItem"] = {}
	tOctReturn_LuckyDraw_Reward[3311028]["DeleteItem"][1] = {}
	tOctReturn_LuckyDraw_Reward[3311028]["DeleteItem"][1]["Id"] = 3311028
	tOctReturn_LuckyDraw_Reward[3311028]["RewardItem"] = {}
	tOctReturn_LuckyDraw_Reward[3311028]["RewardItem"][1] = {}
	tOctReturn_LuckyDraw_Reward[3311028]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石
	tOctReturn_LuckyDraw_Reward[3311028]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 数量5个
	
	
	-- 抽奖获得物品打开奖励
local tOctReturn_LuckyDraw_DrawReward = {}
	-- 气力值
	tOctReturn_LuckyDraw_DrawReward[1] = {}
	tOctReturn_LuckyDraw_DrawReward[1]["DeleteItem"] = {}
	tOctReturn_LuckyDraw_DrawReward[1]["DeleteItem"][1] = {}
	tOctReturn_LuckyDraw_DrawReward[1]["DeleteItem"][1]["Id"] = 0
	tOctReturn_LuckyDraw_DrawReward[1]["DeleteItem"][1]["Attr"] = "0 1"
	tOctReturn_LuckyDraw_DrawReward[1]["RewardStrengthValue"] = {}
	tOctReturn_LuckyDraw_DrawReward[1]["RewardStrengthValue"]["Value"] = 0
	tOctReturn_LuckyDraw_DrawReward[1]["Log"] = "0,0,%d,1,12000512,2,12,%d"
	tOctReturn_LuckyDraw_DrawReward[1]["RewardEffect"] = {}
	tOctReturn_LuckyDraw_DrawReward[1]["RewardEffect"]["Effect"] = "zf2-e128"
	-- 练功道具
	tOctReturn_LuckyDraw_DrawReward[2] = {}
	tOctReturn_LuckyDraw_DrawReward[2]["DeleteItem"] = {}
	tOctReturn_LuckyDraw_DrawReward[2]["DeleteItem"][1] = {}
	tOctReturn_LuckyDraw_DrawReward[2]["DeleteItem"][1]["Id"] = 0
	tOctReturn_LuckyDraw_DrawReward[2]["DeleteItem"][1]["Attr"] = "0 1"
	tOctReturn_LuckyDraw_DrawReward[2]["RewardItem"] = {}
	tOctReturn_LuckyDraw_DrawReward[2]["RewardItem"][1] = {}
	tOctReturn_LuckyDraw_DrawReward[2]["RewardItem"][1]["Id"] = 0
	tOctReturn_LuckyDraw_DrawReward[2]["RewardItem"][1]["Attr"] = ""
	tOctReturn_LuckyDraw_DrawReward[2]["Log"] = "0,0,%d,1,12000512,2,%d,%d"
	tOctReturn_LuckyDraw_DrawReward[2]["RewardEffect"] = {}
	tOctReturn_LuckyDraw_DrawReward[2]["RewardEffect"]["Effect"] = "zf2-e128"
	-- 星陨石
	-- 赠点骰子礼包
	
local tOctReturn_LuckyDraw_DrawBasic = {}
	-- 气力值
	tOctReturn_LuckyDraw_DrawBasic[3300575] = {}
	tOctReturn_LuckyDraw_DrawBasic[3300575]["Value"] = 50
	tOctReturn_LuckyDraw_DrawBasic[3300576] = {}
	tOctReturn_LuckyDraw_DrawBasic[3300576]["Value"] = 100
	tOctReturn_LuckyDraw_DrawBasic[3300577] = {}
	tOctReturn_LuckyDraw_DrawBasic[3300577]["Value"] = 200
	tOctReturn_LuckyDraw_DrawBasic[3300578] = {}
	tOctReturn_LuckyDraw_DrawBasic[3300578]["Value"] = 300
	tOctReturn_LuckyDraw_DrawBasic[3300579] = {}
	tOctReturn_LuckyDraw_DrawBasic[3300579]["Value"] = 500
	tOctReturn_LuckyDraw_DrawBasic[3300580] = {}
	tOctReturn_LuckyDraw_DrawBasic[3300580]["Value"] = 1000
	tOctReturn_LuckyDraw_DrawBasic[3300581] = {}
	tOctReturn_LuckyDraw_DrawBasic[3300581]["Value"] = 2000
	tOctReturn_LuckyDraw_DrawBasic[3300582] = {}
	tOctReturn_LuckyDraw_DrawBasic[3300582]["Value"] = 3000
	-- 练功道具
	tOctReturn_LuckyDraw_DrawBasic[3300601] = {}
	tOctReturn_LuckyDraw_DrawBasic[3300601]["Id"] = 3002030
	tOctReturn_LuckyDraw_DrawBasic[3300601]["Attr"] = "0 5"
	tOctReturn_LuckyDraw_DrawBasic[3300602] = {}
	tOctReturn_LuckyDraw_DrawBasic[3300602]["Id"] = 3002030
	tOctReturn_LuckyDraw_DrawBasic[3300602]["Attr"] = "0 10"
	tOctReturn_LuckyDraw_DrawBasic[3300603] = {}
	tOctReturn_LuckyDraw_DrawBasic[3300603]["Id"] = 3003124
	tOctReturn_LuckyDraw_DrawBasic[3300603]["Attr"] = "0 5 3"
	tOctReturn_LuckyDraw_DrawBasic[3300604] = {}
	tOctReturn_LuckyDraw_DrawBasic[3300604]["Id"] = 3003124
	tOctReturn_LuckyDraw_DrawBasic[3300604]["Attr"] = "0 10 3"
	tOctReturn_LuckyDraw_DrawBasic[3300605] = {}
	tOctReturn_LuckyDraw_DrawBasic[3300605]["Id"] = 3003124
	tOctReturn_LuckyDraw_DrawBasic[3300605]["Attr"] = "0 15 3"
	tOctReturn_LuckyDraw_DrawBasic[3300606] = {}
	tOctReturn_LuckyDraw_DrawBasic[3300606]["Id"] = 3002926
	tOctReturn_LuckyDraw_DrawBasic[3300606]["Attr"] = "0 3"
	tOctReturn_LuckyDraw_DrawBasic[3300607] = {}
	tOctReturn_LuckyDraw_DrawBasic[3300607]["Id"] = 3003125
	tOctReturn_LuckyDraw_DrawBasic[3300607]["Attr"] = "0 3 3"
	tOctReturn_LuckyDraw_DrawBasic[3300608] = {}
	tOctReturn_LuckyDraw_DrawBasic[3300608]["Id"] = 3003126
	tOctReturn_LuckyDraw_DrawBasic[3300608]["Attr"] = "0 1 3"
	-- 星陨石
	tOctReturn_LuckyDraw_DrawBasic[3300609] = {}
	tOctReturn_LuckyDraw_DrawBasic[3300609]["Id"] = 3009000
	tOctReturn_LuckyDraw_DrawBasic[3300609]["Attr"] = "0 3 0 2880 1"
	tOctReturn_LuckyDraw_DrawBasic[3300610] = {}
	tOctReturn_LuckyDraw_DrawBasic[3300610]["Id"] = 3009000
	tOctReturn_LuckyDraw_DrawBasic[3300610]["Attr"] = "0 5 0 2880 1"
	tOctReturn_LuckyDraw_DrawBasic[3300611] = {}
	tOctReturn_LuckyDraw_DrawBasic[3300611]["Id"] = 3009001
	tOctReturn_LuckyDraw_DrawBasic[3300611]["Attr"] = "0 1 0 2880 1"
	tOctReturn_LuckyDraw_DrawBasic[3300612] = {}
	tOctReturn_LuckyDraw_DrawBasic[3300612]["Id"] = 3009001
	tOctReturn_LuckyDraw_DrawBasic[3300612]["Attr"] = "0 2 0 2880 1"
	tOctReturn_LuckyDraw_DrawBasic[3300613] = {}
	tOctReturn_LuckyDraw_DrawBasic[3300613]["Id"] = 3009001
	tOctReturn_LuckyDraw_DrawBasic[3300613]["Attr"] = "0 3 0 2880 1"
	tOctReturn_LuckyDraw_DrawBasic[3300614] = {}
	tOctReturn_LuckyDraw_DrawBasic[3300614]["Id"] = 3009002
	tOctReturn_LuckyDraw_DrawBasic[3300614]["Attr"] = "0 1 0 2880 1"
	tOctReturn_LuckyDraw_DrawBasic[3300615] = {}
	tOctReturn_LuckyDraw_DrawBasic[3300615]["Id"] = 3009002
	tOctReturn_LuckyDraw_DrawBasic[3300615]["Attr"] = "0 2 0 2880 1"
	tOctReturn_LuckyDraw_DrawBasic[3300616] = {}
	tOctReturn_LuckyDraw_DrawBasic[3300616]["Id"] = 3009003
	tOctReturn_LuckyDraw_DrawBasic[3300616]["Attr"] = "0 1 0 2880 1"
	-- 赠点骰子礼包
	tOctReturn_LuckyDraw_DrawBasic[3300617] = {}
	tOctReturn_LuckyDraw_DrawBasic[3300617]["Id"] = 3200530
	tOctReturn_LuckyDraw_DrawBasic[3300617]["Attr"] = "0 2"
	tOctReturn_LuckyDraw_DrawBasic[3300618] = {}
	tOctReturn_LuckyDraw_DrawBasic[3300618]["Id"] = 3200530
	tOctReturn_LuckyDraw_DrawBasic[3300618]["Attr"] = "0 3"
	tOctReturn_LuckyDraw_DrawBasic[3300619] = {}
	tOctReturn_LuckyDraw_DrawBasic[3300619]["Id"] = 3200530
	tOctReturn_LuckyDraw_DrawBasic[3300619]["Attr"] = "0 5"
	tOctReturn_LuckyDraw_DrawBasic[3300620] = {}
	tOctReturn_LuckyDraw_DrawBasic[3300620]["Id"] = 3200530
	tOctReturn_LuckyDraw_DrawBasic[3300620]["Attr"] = "0 7"
	tOctReturn_LuckyDraw_DrawBasic[3300621] = {}
	tOctReturn_LuckyDraw_DrawBasic[3300621]["Id"] = 3200530
	tOctReturn_LuckyDraw_DrawBasic[3300621]["Attr"] = "0 10"
	tOctReturn_LuckyDraw_DrawBasic[3300622] = {}
	tOctReturn_LuckyDraw_DrawBasic[3300622]["Id"] = 3200530
	tOctReturn_LuckyDraw_DrawBasic[3300622]["Attr"] = "0 15"
	tOctReturn_LuckyDraw_DrawBasic[3300623] = {}
	tOctReturn_LuckyDraw_DrawBasic[3300623]["Id"] = 3200530
	tOctReturn_LuckyDraw_DrawBasic[3300623]["Attr"] = "0 20"
	tOctReturn_LuckyDraw_DrawBasic[3300624] = {}
	tOctReturn_LuckyDraw_DrawBasic[3300624]["Id"] = 3200530
	tOctReturn_LuckyDraw_DrawBasic[3300624]["Attr"] = "0 25"
	
--------------------------------------逻辑部分-------------------------------------------
-- 获得金秋狂欢秘钥
-- function OctReturn_LuckyDraw_RewardDraw(nIndex)
	-- -- 活动时间结束
	-- if not Sys_ChkFullTime(tOctReturn_LuckyDraw_Count["ReceiveActivityTime"]) then
		-- return
	-- end
	
	-- -- 等级不足
	-- if not User_JudgeLevelAndMetempsychosis(tOctReturn_LuckyDraw_Count["Level"],tOctReturn_LuckyDraw_Count["Metempsychosis"]) then
		-- return
	-- end
	
	-- local nGiveItemId = tOctReturn_LuckyDraw_Count["DrawId"]
	-- local nMaxGive = tOctReturn_LuckyDraw_Count["DrawMaxNum"]
	
	-- -- 获取现在背包个数
	-- local nSpaceItemNum = Get_CountItemType(nGiveItemId,0)
	-- -- 已经获得100个
	-- if nSpaceItemNum >= nMaxGive then
		-- return
	-- end
	
	-- -- 部分掩码判断
	-- if tOctReturn_LuckyDraw_RewardCondition[nIndex] ~= nil then
		-- if not OctReturn_LuckyDraw_RewardFirstStc(nIndex) then
			-- return
		-- end
	-- end
	
	-- -- 给奖励
	-- local nNowGive = tOctReturn_LuckyDraw_RewardNum[nIndex]
	-- if nNowGive+nSpaceItemNum > nMaxGive then
		-- nNowGive = nMaxGive - nSpaceItemNum
	-- end
	
	-- if tOctReturn_LuckyDraw_RewardCondition[nIndex] ~= nil then
		-- local nStcIndex = tOctReturn_LuckyDraw_RewardCondition[nIndex]["StcIndex"]
		-- local nEvent = tOctReturn_LuckyDraw_Stc[nStcIndex]["EventType"]
		-- local nType = tOctReturn_LuckyDraw_Stc[nStcIndex]["DataType"]
		
		-- local nStcBasic = tOctReturn_LuckyDraw_RewardCondition[nIndex]["StcSave"]
		
		-- Task_AddStatistic(nEvent,nType,nStcBasic,1)
		-- Task_SetStcTimestamp(nEvent,nType,0)
	-- end
	
	-- -- tOctReturn_LuckyDraw_Reward[1]["Log"] = tOctReturn_LuckyDraw_Log["GetDraw"][Index]
	-- -- local sAttr = tOctReturn_LuckyDraw_Count["GiveAttr"]
	-- -- tOctReturn_LuckyDraw_Reward[1]["RewardItem"][1]["Attr"] = string.format(sAttr,nNowGive)
	-- -- RewardTemplate_UseItemAndMsg(tOctReturn_LuckyDraw_Reward[1])
	-- local sLog = tOctReturn_LuckyDraw_Log["GetDraw"][nIndex]
	-- local sAttr =  tOctReturn_LuckyDraw_Count["GiveAttr"]
	-- local sGiveAttr = string.format(sAttr,nNowGive)
	-- Item_AddNewItem(nGiveItemId,sGiveAttr)
	
	-- local sTip = tOctReturn_LuckyDraw_Text["RewardDraw"]
	-- User_TalkChannel2005(string.format(sTip,nNowGive))
	-- Sys_SaveActionFestivalLog(sLog)
-- end

-- 首次开启礼包的判断奖励
-- function OctReturn_LuckyDraw_RewardFirstStc(nIndex)
	-- -- 取掩码
	-- local nStcIndex = tOctReturn_LuckyDraw_RewardCondition[nIndex]["StcIndex"]
	-- local nEvent = tOctReturn_LuckyDraw_Stc[nStcIndex]["EventType"]
	-- local nType = tOctReturn_LuckyDraw_Stc[nStcIndex]["DataType"]
	
	-- local nStcMin = tOctReturn_LuckyDraw_RewardCondition[nIndex]["StcMin"]
	-- local nStcMax = tOctReturn_LuckyDraw_RewardCondition[nIndex]["StcMax"]
	
	
	-- if Task_StcInterval(nEvent,nType,1,4) then
		-- Task_SetStatistic(nEvent,nType,0,1)
		-- Task_SetStcTimestamp(nEvent,nType,0)
	-- end
	
	-- local nData = Get_UserStatisticValue(nEvent,nType,nNowUserId)
	-- local nNeedData = tonumber(string.sub(nData,nStcMin,nStcMax)) or 0
	
	-- if nNeedData <= 0 then
		-- return true
	-- end
	
	-- return false
-- end

-- 获取宝箱
-- 现在只有活动时间功能，获取宝箱功能后续开启
-- function OctReturn_LuckyDraw_GetDrawBox(nNpcId,nItemId)
	-- if not Sys_ChkFullTime(tOctReturn_LuckyDraw_Count["DrawActivityTime"]) then
		
		-- return
	-- end
	
	-- if not User_CheckLeftSpace(1) then
		-- User_TalkChannel2005(tOctReturn_LuckyDraw_Text[nNpcId]["NoSpace"])
		-- return
	-- end
	
	-- if Item_ChkItem(nItemId) then
		-- local sShowText = tOctReturn_LuckyDraw_Text["HaveItem"]
		-- local sItemName = Get_ItemtypeName(nItemId)
		-- User_TalkChannel2005(string.format(sShowText,sItemName))
		-- return
	-- end
	
	-- -- 获得宝箱
	-- RewardTemplate_UseItem(tOctReturn_LuckyDraw_Reward[nItemId])
	-- local sTip = tOctReturn_LuckyDraw_Text["RewardBox"]
	-- local nNeedItemNum = tOctReturn_LuckyDraw_DrawItemNum[nItemId]
	-- local sItemName = Get_ItemtypeName(nItemId)
	-- User_TalkChannel2005(string.format(sTip,sItemName,nNeedItemNum))
-- end

-- 物品使用
-- function OctReturn_LuckyDraw_UseKeyItem(nItemId)
	-- -- 时间判断
	-- if not OctReturn_LuckyDraw_UseItem(nItemId) then
		-- return
	-- end
	
	-- local nPosX = tOctReturn_LuckyDraw_ItemPathFind["PosX"]
	-- local nPosY = tOctReturn_LuckyDraw_ItemPathFind["PosY"]
	-- local nMapId = tOctReturn_LuckyDraw_ItemPathFind["MapId"]
	-- local nNpcId = tOctReturn_LuckyDraw_ItemPathFind["NpcId"]
	-- Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
-- end

-- function OctReturn_LuckyDraw_UseItem(nItemId)
	-- if not Sys_ChkFullTime(tOctReturn_LuckyDraw_Count["ItemActivityTime"]) then
		-- if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			-- User_TalkChannel2005(tOctReturn_LuckyDraw_Text["TimeOut"])
			-- local sLog = tOctReturn_LuckyDraw_Log["DeleteItem"]
			-- Sys_SaveActionFestivalLog(string.format(sLog,nItemId))
			-- return false
		-- end
	-- end
	-- return true
-- end

-- 
function OctReturn_LuckyDraw_UseStrengthItem(nItemId)
	-- 时间判断
	-- if not OctReturn_LuckyDraw_UseItem(nItemId) then
		-- return
	-- end
	
	-- 打开礼包
	local tReward = CommonFunc_Copy(tOctReturn_LuckyDraw_DrawReward[1])
	local nStengthValue = tOctReturn_LuckyDraw_DrawBasic[nItemId]["Value"]
	tReward["DeleteItem"][1]["Id"] = nItemId
	tReward["RewardStrengthValue"]["Value"] = nStengthValue
	local sLog = tOctReturn_LuckyDraw_DrawReward[1]["Log"]
	tReward["Log"] = string.format(sLog,nItemId,nStengthValue)
	
	RewardTemplate_UseItemAndMsg(tReward)
end

function OctReturn_LuckyDraw_UseGetItem(nItemId)
	-- 时间判断
	-- if not OctReturn_LuckyDraw_UseItem(nItemId) then
		-- return
	-- end
	
	if not Item_ChkItem(nItemId) then
		return
	end
	
	-- 打开礼包
	local nRewardId = tOctReturn_LuckyDraw_DrawBasic[nItemId]["Id"]
	local sItemAttr = tOctReturn_LuckyDraw_DrawBasic[nItemId]["Attr"]
	local tRewardItem = Sys_Split(sItemAttr," ")
	local tReward = CommonFunc_Copy(tOctReturn_LuckyDraw_DrawReward[2])
	tReward["DeleteItem"][1]["Id"] = nItemId
	tReward["RewardItem"][1]["Id"] = nRewardId
	tReward["RewardItem"][1]["Attr"] = sItemAttr
	local sLog = tOctReturn_LuckyDraw_DrawReward[2]["Log"]
	tReward["Log"] = string.format(sLog,nItemId,nRewardId,tRewardItem[2])
	
	if not RewardTemplate_CheckSpace(tReward) then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tReward)
end


-- 同步礼包逻辑
function OctReturn_LuckyDraw_Get(nItemId,nNum)
	if not Item_ChkItem(nItemId) then
		return
	end
	RewardTemplate_UseItemAndMsg(tOctReturn_LuckyDraw_Reward[nItemId][nNum])
end

-- 偶像武器外套礼包
function OctReturn_LuckyDraw_WeaponsCoat(nItemId, nIndex)
	if not Item_ChkItem(nItemId) then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tOctReturn_LuckyDraw_Reward[nItemId][nIndex])
end

function OctReturn_LuckyDraw_GetReward(nItemId)
	-- 奖励所需要的背包空间
	if not RewardTemplate_CheckSpace(tOctReturn_LuckyDraw_Reward[nItemId]) then
		return
	end
	
	-- 给玩家奖励
	RewardTemplate_UseItem(tOctReturn_LuckyDraw_Reward[nItemId])
end

--------------------------------------NPC模块-------------------------------------------
-- -- 金秋狂欢大使
-- tNpcFace[4342] = 247
-- tNpcGossip[19476] = tNpcGossip[19476] or DefaultNpc:new{}
-- tNpcGossip[19476]["OptionHidden"] = 1
-- tNpcGossip[19476]["DialogueText"] = tOctReturn_LuckyDraw_Text[19476] 
-- -- 活动前（9月15日至9月30日）
-- tNpcGossip[19476]["Text1-1"] = {111,112,113}
-- tNpcGossip[19476]["tOption1-1"] = {1}
-- tNpcGossip[19476]["ChkFunc1-1"] = function ()
	-- return Sys_ChkFullTime(tOctReturn_LuckyDraw_Count["ReceiveActivityTime"]) or CommonFunc_GetBeforeActivityTime(tOctReturn_LuckyDraw_Count["ReceiveActivityTime"])
-- end
-- tNpcGossip[19476]["OptionPoint1"] = "2-1" 

-- -- 活动前（10月1日至10月7日）
-- tNpcGossip[19476]["Text1-2"] = {121,122}
-- tNpcGossip[19476]["tOption1-2"] = {2}
-- tNpcGossip[19476]["ChkFunc1-2"] = function ()
	-- return CommonFunc_GetBeforeActivityTime(tOctReturn_LuckyDraw_Count["DrawActivityTime"])
-- end

-- -- 活动中（10月8日至10月31日）(等级不足)
-- tNpcGossip[19476]["Text1-3"] = {131,132,133,134,135}
-- tNpcGossip[19476]["tOption1-3"] = {3}
-- tNpcGossip[19476]["ChkFunc1-3"] = function ()
	-- return Sys_ChkFullTime(tOctReturn_LuckyDraw_Count["DrawActivityTime"]) and not User_JudgeLevelAndMetempsychosis(tOctReturn_LuckyDraw_Count["Level"],tOctReturn_LuckyDraw_Count["Metempsychosis"])
-- end

-- -- 活动中
-- tNpcGossip[19476]["Text1-4"] = {131,132,133,135}
-- tNpcGossip[19476]["tOption1-4"] = {4,5,6,7,8,9,10}
-- tNpcGossip[19476]["ChkFunc1-4"] = function ()
	-- return true
-- end
-- -- 领取经验狂欢宝箱
-- tNpcGossip[19476]["OptionFunc4"] = "OctReturn_LuckyDraw_GetDrawBox</N>19476</N>3300569"
-- -- 领取属性狂欢宝箱
-- tNpcGossip[19476]["OptionFunc5"] = "OctReturn_LuckyDraw_GetDrawBox</N>19476</N>3300570"
-- -- 领取练功狂欢宝箱
-- tNpcGossip[19476]["OptionFunc6"] = "OctReturn_LuckyDraw_GetDrawBox</N>19476</N>3300571"
-- -- 领取炼气狂欢宝箱
-- tNpcGossip[19476]["OptionFunc7"] = "OctReturn_LuckyDraw_GetDrawBox</N>19476</N>3300573"
-- -- 领取天石狂欢宝箱
-- tNpcGossip[19476]["OptionFunc8"] = "OctReturn_LuckyDraw_GetDrawBox</N>19476</N>3300574"
-- -- 领取星陨石狂欢宝箱
-- tNpcGossip[19476]["OptionFunc9"] = "OctReturn_LuckyDraw_GetDrawBox</N>19476</N>3300572"

-- -- 介绍金秋狂欢秘钥获得方式
-- tNpcGossip[19476]["Text2-1"] = {211,212,213,214,215,216,217,218,219}
-- tNpcGossip[19476]["tOption2-1"] = {11}

--------------------------------------物品模块-------------------------------------------
-- 金秋狂欢物品
-- tItem[3300568] = tItem[3300568] or {}
-- tItem[3300568]["Function"] = function(nItemId,sItemName)
	-- OctReturn_LuckyDraw_UseKeyItem(nItemId)
-- end

-- 气力礼包
-- tItem[3300575] = tItem[3300575] or {}
-- tItem[3300575]["Function"] = function(nItemId,sItemName)
	-- OctReturn_LuckyDraw_UseStrengthItem(nItemId)
-- end
-- for i=3300576,3300582 do
	-- tItem[i] = tItem[3300575] or {}
-- end
tItem[3300576] = tItem[3300576] or {}
tItem[3300576]["Function"] = function(nItemId,sItemName)
	OctReturn_LuckyDraw_UseStrengthItem(nItemId)
end
for i=3300577,3300580 do
	tItem[i] = tItem[3300576] or {}
end

-- 打开物品获得物品
tItem[3300601] = tItem[3300601] or {}
tItem[3300601]["Function"] = function(nItemId,sItemName)
	OctReturn_LuckyDraw_UseGetItem(nItemId)
end
for i=3300602,3300624 do
	tItem[i] = tItem[3300601] or {}
end

-- +6赤炼石(赠)
tItem[3303298] = tItem[3303298] or {}
tItem[3303298]["Function"] = function(nItemId,sItemName)
	OctReturn_LuckyDraw_Get(nItemId,1)
end
-- 8000气力值礼包
tItem[3305452] = tItem[3305452] or {}
tItem[3305452]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItem(tOctReturn_LuckyDraw_Reward[nItemId])
end



-- 偶像武器外套（30天）礼包
tItemFace[3307482] = 1375
tItem[3307482] = tItem[3307482] or {}
tItem[3307482]["Text1-1"] = {111}
tItem[3307482]["Text111"] = tOctReturn_LuckyDraw_Text[3307482]["Text111"]
tItem[3307482]["tOption1-1"] = {111, 112, 113, 114, 115}
tItem[3307482]["Option111"] = tOctReturn_LuckyDraw_Text[3307482]["Option111"]
tItem[3307482]["OptionFunc111"]="OctReturn_LuckyDraw_WeaponsCoat</N>3307482</N>1"
tItem[3307482]["Option112"] = tOctReturn_LuckyDraw_Text[3307482]["Option112"]
tItem[3307482]["OptionFunc112"]="OctReturn_LuckyDraw_WeaponsCoat</N>3307482</N>2"
tItem[3307482]["Option113"] = tOctReturn_LuckyDraw_Text[3307482]["Option113"]
tItem[3307482]["OptionFunc113"]="OctReturn_LuckyDraw_WeaponsCoat</N>3307482</N>3"
tItem[3307482]["Option114"] = tOctReturn_LuckyDraw_Text[3307482]["Option114"]
tItem[3307482]["OptionFunc114"]="OctReturn_LuckyDraw_WeaponsCoat</N>3307482</N>4"
tItem[3307482]["Option115"] = tOctReturn_LuckyDraw_Text[3307482]["Option115"]


-- 3308508 万能神纹精粹*150
tItem[3308508] = tItem[3308508] or {}
tItem[3308508]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tOctReturn_LuckyDraw_Reward[nItemId])
end

-- 3311028 5颗明亮星陨石包
tItem[3311028] = tItem[3311028] or {}
tItem[3311028]["Function"] = function(nItemId, sItemName)
	OctReturn_LuckyDraw_GetReward(nItemId)
end
