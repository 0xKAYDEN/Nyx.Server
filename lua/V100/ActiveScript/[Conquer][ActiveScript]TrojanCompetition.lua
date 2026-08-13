------------------------------------------------------------------------------------
--Name：            190507[简体征服][活动脚本]最强勇士职业PK赛
--Creator:      江宇君
--Created:     2019-05-07
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
-- stc掩码
-- 195,25 背包信掩码
-- 195,26 3312778 礼包的使用掩码

-- taskdetail	30017
	-- data1	玩家进入跨服比赛地图
	-- data2	玩家已领奖

-- 邮件发奖 572528-572535
----------------------------------表配置部分--------------------------------------------
-- 数据表
local tTrojanCompetition_Data = {}
	tTrojanCompetition_Data["Level"] = 100
	tTrojanCompetition_Data["Mete"] = 0
	-- tTrojanCompetition_Data["NeedItemId"] = 3321473 -- 勇士参赛令牌
	-- tTrojanCompetition_Data["NeedItemId"] = 3313540 --海盗参赛令牌
	-- tTrojanCompetition_Data["NeedItemId"] = 3313862 --铁扇门参赛令牌
	-- tTrojanCompetition_Data["NeedItemId"] = 3314270 --忍者参赛令牌
	tTrojanCompetition_Data["NeedItemId"] = 3314612 --斗神参赛令牌
	tTrojanCompetition_Data["NeedItemNum"] = 1
	tTrojanCompetition_Data["NeedEmoney"] = 99
	tTrojanCompetition_Data["ServerGlobalID"] = 51131
	tTrojanCompetition_Data["ActivityGlobalID"] = 53801
	
	-- 跨服数据
	tTrojanCompetition_Data["CrossServer"] = {}
	tTrojanCompetition_Data["CrossServer"][1] = 50
	tTrojanCompetition_Data["CrossServer"][2] = 51
	tTrojanCompetition_Data["CrossServer"][3] = 52
	tTrojanCompetition_Data["CrossServer"][4] = 53
	
	tTrojanCompetition_Data["SurvivalNum"] = {}
	tTrojanCompetition_Data["SurvivalNum"][1] = 20
	tTrojanCompetition_Data["SurvivalNum"][2] = 10
	tTrojanCompetition_Data["SurvivalNum"][3] = 5
	
local tTrojanCompetition_TaskDetal = {}
	tTrojanCompetition_TaskDetal[1] = {}
	tTrojanCompetition_TaskDetal[1]["TaskId"] = 30017
	tTrojanCompetition_TaskDetal[1]["Data1"] = 1
	tTrojanCompetition_TaskDetal[1]["Data2"] = 1
	tTrojanCompetition_TaskDetal[1]["Data3"] = 1
	
-- 根据等级进行分组
local tTrojanCompetition_Level = {}
	tTrojanCompetition_Level[1] = 100
	tTrojanCompetition_Level[2] = 120
	tTrojanCompetition_Level[3] = 130
	tTrojanCompetition_Level[4] = G_User_MaxLev
	
-- 邮件发奖数据
local tTrojanCompetition_Email = {}
	tTrojanCompetition_Email[1] = {}
	tTrojanCompetition_Email[1][1] = {}
	-- tTrojanCompetition_Email[1][1]["ActionId"] = 572531 -- 给的礼包是新服有三倍奖励的，这轮去掉
	-- tTrojanCompetition_Email[1][1]["ActionId"] = 574184 -- 带外套的冠军礼包发奖 玄武
	-- tTrojanCompetition_Email[1][1]["ActionId"] = 574786 -- 带配饰的冠军礼包发奖 玄武
	-- tTrojanCompetition_Email[1][1]["ActionId"] = 575031 -- 带配饰的冠军礼包发奖 玄武
	tTrojanCompetition_Email[1][1]["ActionId"] = 575394 -- 带外套的冠军礼包发奖 玄武
	tTrojanCompetition_Email[1][1]["Group"] = tTrojanCompetition_Text["Sys"]["Group"][1]
	
	tTrojanCompetition_Email[1][2] = {}
	-- tTrojanCompetition_Email[1][2]["ActionId"] = 572530 -- 给的礼包是新服有三倍奖励的，这轮去掉
	-- tTrojanCompetition_Email[1][2]["ActionId"] = 574183 -- 带外套的冠军礼包发奖 朱雀
	-- tTrojanCompetition_Email[1][2]["ActionId"] = 574785 -- 带配饰的冠军礼包发奖 朱雀
	-- tTrojanCompetition_Email[1][2]["ActionId"] = 575030 -- 带配饰的冠军礼包发奖 朱雀
	tTrojanCompetition_Email[1][2]["ActionId"] = 575393 -- 带外套的冠军礼包发奖 朱雀
	tTrojanCompetition_Email[1][2]["Group"] = tTrojanCompetition_Text["Sys"]["Group"][2]
	
	tTrojanCompetition_Email[1][3] = {}
	-- tTrojanCompetition_Email[1][3]["ActionId"] = 572529 -- 给的礼包是新服有三倍奖励的，这轮去掉
	-- tTrojanCompetition_Email[1][3]["ActionId"] = 574182 -- 带外套的冠军礼包发奖 白虎
	-- tTrojanCompetition_Email[1][3]["ActionId"] = 574784 -- 带配饰的冠军礼包发奖 白虎
	-- tTrojanCompetition_Email[1][3]["ActionId"] = 575029 -- 带配饰的冠军礼包发奖 白虎
	tTrojanCompetition_Email[1][3]["ActionId"] = 575392 -- 带外套的冠军礼包发奖 白虎
	tTrojanCompetition_Email[1][3]["Group"] = tTrojanCompetition_Text["Sys"]["Group"][3]
	
	tTrojanCompetition_Email[1][4] = {}
	-- tTrojanCompetition_Email[1][4]["ActionId"] = 572528 -- 给的礼包是新服有三倍奖励的，这轮去掉
	-- tTrojanCompetition_Email[1][4]["ActionId"] = 574181 -- 带外套的冠军礼包发奖 青龙
	-- tTrojanCompetition_Email[1][4]["ActionId"] = 574783 -- 带配饰的冠军礼包发奖 青龙
	-- tTrojanCompetition_Email[1][4]["ActionId"] = 575028 -- 带配饰的冠军礼包发奖 青龙
	tTrojanCompetition_Email[1][4]["ActionId"] = 575391 -- 带外套的冠军礼包发奖 青龙
	tTrojanCompetition_Email[1][4]["Group"] = tTrojanCompetition_Text["Sys"]["Group"][4]
	
	tTrojanCompetition_Email[2] = {}
	tTrojanCompetition_Email[2][1] = {}
	-- tTrojanCompetition_Email[2][1]["ActionId"] = 572535
	-- tTrojanCompetition_Email[2][1]["ActionId"] = 574188 -- 带外套的参赛礼包发奖 玄武
	-- tTrojanCompetition_Email[2][1]["ActionId"] = 574790 -- 带配饰的参赛礼包发奖 玄武
	-- tTrojanCompetition_Email[2][1]["ActionId"] = 575035 -- 带配饰的参赛礼包发奖 玄武
	tTrojanCompetition_Email[2][1]["ActionId"] = 575398 -- 带外套的参赛礼包发奖 玄武
	
	tTrojanCompetition_Email[2][2] = {}
	-- tTrojanCompetition_Email[2][2]["ActionId"] = 572534
	-- tTrojanCompetition_Email[2][2]["ActionId"] = 574187 -- 带外套的参赛礼包发奖 朱雀
	-- tTrojanCompetition_Email[2][2]["ActionId"] = 574789 -- 带配饰的参赛礼包发奖 朱雀
	-- tTrojanCompetition_Email[2][2]["ActionId"] = 575034 -- 带配饰的参赛礼包发奖 朱雀
	tTrojanCompetition_Email[2][2]["ActionId"] = 575397 -- 带外套的参赛礼包发奖 朱雀
	
	tTrojanCompetition_Email[2][3] = {}
	-- tTrojanCompetition_Email[2][3]["ActionId"] = 572533
	-- tTrojanCompetition_Email[2][3]["ActionId"] = 574186 -- 带外套的参赛礼包发奖 白虎
	-- tTrojanCompetition_Email[2][3]["ActionId"] = 574788 -- 带配饰的参赛礼包发奖 白虎
	-- tTrojanCompetition_Email[2][3]["ActionId"] = 575033 -- 带配饰的参赛礼包发奖 白虎
	tTrojanCompetition_Email[2][3]["ActionId"] = 575396 -- 带外套的参赛礼包发奖 白虎
	
	tTrojanCompetition_Email[2][4] = {}
	-- tTrojanCompetition_Email[2][4]["ActionId"] = 572532
	-- tTrojanCompetition_Email[2][4]["ActionId"] = 574185 -- 带外套的参赛礼包发奖 青龙
	-- tTrojanCompetition_Email[2][4]["ActionId"] = 574787 -- 带配饰的参赛礼包发奖 青龙
	-- tTrojanCompetition_Email[2][4]["ActionId"] = 575032 -- 带配饰的参赛礼包发奖 青龙
	tTrojanCompetition_Email[2][4]["ActionId"] = 575395 -- 带外套的参赛礼包发奖 青龙
	
-- 比赛地图统一传送点
local tTrojanCompetition_TransferPoint = {}

	tTrojanCompetition_TransferPoint["MapId"] = {}
	tTrojanCompetition_TransferPoint["MapId"][1] = 10521 -- 100级以下
	tTrojanCompetition_TransferPoint["MapId"][2] = 10522 -- 100-119级
	tTrojanCompetition_TransferPoint["MapId"][3] = 10523 -- 120-129级
	tTrojanCompetition_TransferPoint["MapId"][4] = 10524 -- 130级以上

	tTrojanCompetition_TransferPoint["PosX"] = 78
	tTrojanCompetition_TransferPoint["PosY"] = 59
	tTrojanCompetition_TransferPoint["BoundX"] = 5
	tTrojanCompetition_TransferPoint["BoundY"] = 5
	
	--回到双龙城
	tTrojanCompetition_TransferPoint["MapChange"]= {}
	tTrojanCompetition_TransferPoint["MapChange"]["MapId"] = 1002
	tTrojanCompetition_TransferPoint["MapChange"]["PosX"] = 410
	tTrojanCompetition_TransferPoint["MapChange"]["PosY"] = 354
	-- 无赠品服务器传送
	tTrojanCompetition_TransferPoint["MapChangeNoGift"]= {}
	tTrojanCompetition_TransferPoint["MapChangeNoGift"]["MapId"] = 10364
	tTrojanCompetition_TransferPoint["MapChangeNoGift"]["PosX"] = 313
	tTrojanCompetition_TransferPoint["MapChangeNoGift"]["PosY"] = 304
	
local tTrojanCompetition_UniversalRunesPackStc = {}
	tTrojanCompetition_UniversalRunesPackStc["EventType"] = 195
	tTrojanCompetition_UniversalRunesPackStc["DataType"] = 26

local tTrojanCompetition_Reward = {}
	-- ===购买入场令牌
	-- ===索引: tTrojanCompetition_Reward["BuyToken"]
	-- ===EMoneyLog: 10000,0451
	tTrojanCompetition_Reward["BuyToken"] = {}
	tTrojanCompetition_Reward["BuyToken"]["LogId"] = 12001432
	tTrojanCompetition_Reward["BuyToken"]["RewardNoNeedTip"] = 1
	tTrojanCompetition_Reward["BuyToken"]["RewardItem"] = {}
	tTrojanCompetition_Reward["BuyToken"]["RewardItem"][1] = {}
	-- tTrojanCompetition_Reward["BuyToken"]["RewardItem"][1]["Id"] = 3321473 -- 【库】 3321473 【库里没有该物品】[属性:], 【表格】勇冠天下参赛令
	-- tTrojanCompetition_Reward["BuyToken"]["RewardItem"][1]["Id"] = 3313540 -- 【库】 3313540 【库里没有该物品】[属性:], 【表格】海盗参赛令
	-- tTrojanCompetition_Reward["BuyToken"]["RewardItem"][1]["Id"] = 3313862 -- 【库】 3313862 【库里没有该物品】[属性:], 【表格】铁扇门参赛令
	-- tTrojanCompetition_Reward["BuyToken"]["RewardItem"][1]["Id"] = 3314270 -- 【库】 3314270 【库里没有该物品】[属性:], 【表格】忍者参赛令
	tTrojanCompetition_Reward["BuyToken"]["RewardItem"][1]["Id"] = 3314612 -- 【库】 3314612 【库里没有该物品】[属性:], 【表格】斗神参赛令
	tTrojanCompetition_Reward["BuyToken"]["RewardItem"][1]["Attr"] = "0 1" --  3321473 【库里没有该物品】*1
	tTrojanCompetition_Reward["BuyToken"]["RewardEMoney"] = {}
	tTrojanCompetition_Reward["BuyToken"]["RewardEMoney"]["Value"] = -99 -- 天石, 【需求】花费99天石
	tTrojanCompetition_Reward["BuyToken"]["RewardEMoney"]["NewEmoneyLog"] = "10000	451"
	tTrojanCompetition_Reward["BuyToken"]["RewardEffect"] = {}
	tTrojanCompetition_Reward["BuyToken"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward["BuyToken"]["RewardEffect"]["Effect"] = "angelwing"


		tTrojanCompetition_Reward[3321474] = {}
	-- ===3321474,'青龙组冠军礼盒'
	-- ===索引: tTrojanCompetition_Reward[3321474]["Old"]
	-- ===删除:3321474,1
	tTrojanCompetition_Reward[3321474]["LogId"] = 12001432
	tTrojanCompetition_Reward[3321474]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3321474]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3321474]["DeleteItem"][1]["Id"] = 3321474 -- 【库】青龙组冠军礼盒[属性:9]
	tTrojanCompetition_Reward[3321474]["RewardItem"] = {}
	tTrojanCompetition_Reward[3321474]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3321474]["RewardItem"][1]["Id"] = 4200011 -- 【库】11阶灵珠[属性:72], 【表格】11阶灵珠
	tTrojanCompetition_Reward[3321474]["RewardItem"][1]["Attr"] = "0 3" -- 11阶灵珠*3
	tTrojanCompetition_Reward[3321474]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tTrojanCompetition_Reward[3321474]["RewardItem"][2] = {}
	tTrojanCompetition_Reward[3321474]["RewardItem"][2]["Id"] = 3312774 -- 【库】（+6）稀有黄色神纹可选包（赠）[属性:9], 【表格】（+6）稀有黄色神纹可选包（赠）
	tTrojanCompetition_Reward[3321474]["RewardItem"][2]["Attr"] = "0 1" -- （+6）稀有黄色神纹可选包（赠）*1
	tTrojanCompetition_Reward[3321474]["RewardStrengthValue"] = {}
	tTrojanCompetition_Reward[3321474]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】10000气力值
	tTrojanCompetition_Reward[3321474]["RewardItem"][3] = {}
	tTrojanCompetition_Reward[3321474]["RewardItem"][3]["Id"] = 3306697 -- 【库】通用神纹精粹包[属性:9], 【表格】通用神纹精粹包
	tTrojanCompetition_Reward[3321474]["RewardItem"][3]["Attr"] = "0 5" -- 通用神纹精粹包*5
	tTrojanCompetition_Reward[3321474]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3321474]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3321474]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3321475] = {}
	-- ===3321475,'白虎组冠军礼盒'
	-- ===索引: tTrojanCompetition_Reward[3321475]
	-- ===删除:3321475,1
	tTrojanCompetition_Reward[3321475]["LogId"] = 12001432
	tTrojanCompetition_Reward[3321475]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3321475]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3321475]["DeleteItem"][1]["Id"] = 3321475 -- 【库】白虎组冠军礼盒[属性:9]
	tTrojanCompetition_Reward[3321475]["RewardItem"] = {}
	tTrojanCompetition_Reward[3321475]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3321475]["RewardItem"][1]["Id"] = 4200011 -- 【库】11阶灵珠[属性:72], 【表格】11阶灵珠
	tTrojanCompetition_Reward[3321475]["RewardItem"][1]["Attr"] = "0 2" -- 11阶灵珠*2
	tTrojanCompetition_Reward[3321475]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tTrojanCompetition_Reward[3321475]["RewardItem"][2] = {}
	tTrojanCompetition_Reward[3321475]["RewardItem"][2]["Id"] = 3312775 -- 【库】（+5）稀有黄色神纹可选包（赠）[属性:9], 【表格】（+5）稀有黄色神纹可选包（赠）
	tTrojanCompetition_Reward[3321475]["RewardItem"][2]["Attr"] = "0 1" -- （+5）稀有黄色神纹可选包（赠）*1
	tTrojanCompetition_Reward[3321475]["RewardStrengthValue"] = {}
	tTrojanCompetition_Reward[3321475]["RewardStrengthValue"]["Value"] = 8000 -- 气力值, 【需求】8000气力值
	tTrojanCompetition_Reward[3321475]["RewardItem"][3] = {}
	tTrojanCompetition_Reward[3321475]["RewardItem"][3]["Id"] = 3306697 -- 【库】通用神纹精粹包[属性:9], 【表格】通用神纹精粹包
	tTrojanCompetition_Reward[3321475]["RewardItem"][3]["Attr"] = "0 3" -- 通用神纹精粹包*3
	tTrojanCompetition_Reward[3321475]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3321475]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3321475]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3321476] = {}
	-- ===3321476,'朱雀组冠军礼盒'
	-- ===索引: tTrojanCompetition_Reward[3321476]
	-- ===删除:3321476,1
	tTrojanCompetition_Reward[3321476]["LogId"] = 12001432
	tTrojanCompetition_Reward[3321476]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3321476]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3321476]["DeleteItem"][1]["Id"] = 3321476 -- 【库】朱雀组冠军礼盒[属性:9]
	tTrojanCompetition_Reward[3321476]["RewardItem"] = {}
	tTrojanCompetition_Reward[3321476]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3321476]["RewardItem"][1]["Id"] = 4200011 -- 【库】11阶灵珠[属性:72], 【表格】11阶灵珠
	tTrojanCompetition_Reward[3321476]["RewardItem"][1]["Attr"] = "0 1" -- 11阶灵珠*1
	tTrojanCompetition_Reward[3321476]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tTrojanCompetition_Reward[3321476]["RewardItem"][2] = {}
	tTrojanCompetition_Reward[3321476]["RewardItem"][2]["Id"] = 3312776 -- 【库】（+3）稀有黄色神纹可选包（赠）[属性:9], 【表格】（+3）稀有黄色神纹可选包（赠）
	tTrojanCompetition_Reward[3321476]["RewardItem"][2]["Attr"] = "0 1" -- （+3）稀有黄色神纹可选包（赠）*1
	tTrojanCompetition_Reward[3321476]["RewardStrengthValue"] = {}
	tTrojanCompetition_Reward[3321476]["RewardStrengthValue"]["Value"] = 5000 -- 气力值, 【需求】5000气力值
	tTrojanCompetition_Reward[3321476]["RewardItem"][3] = {}
	tTrojanCompetition_Reward[3321476]["RewardItem"][3]["Id"] = 3306697 -- 【库】通用神纹精粹包[属性:9], 【表格】通用神纹精粹包
	tTrojanCompetition_Reward[3321476]["RewardItem"][3]["Attr"] = "0 2" -- 通用神纹精粹包*2
	tTrojanCompetition_Reward[3321476]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3321476]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3321476]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3321477] = {}
	-- ===3321477,'玄武组冠军礼盒'
	-- ===索引: tTrojanCompetition_Reward[3321477]
	-- ===删除:3321477,1
	tTrojanCompetition_Reward[3321477]["LogId"] = 12001432
	tTrojanCompetition_Reward[3321477]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3321477]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3321477]["DeleteItem"][1]["Id"] = 3321477 -- 【库】玄武组冠军礼盒[属性:9]
	tTrojanCompetition_Reward[3321477]["RewardItem"] = {}
	tTrojanCompetition_Reward[3321477]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3321477]["RewardItem"][1]["Id"] = 3312777 -- 【库】（+1）稀有黄色神纹可选包（赠）[属性:9], 【表格】（+1）稀有黄色神纹可选包（赠）
	tTrojanCompetition_Reward[3321477]["RewardItem"][1]["Attr"] = "0 1" -- （+1）稀有黄色神纹可选包（赠）*1
	tTrojanCompetition_Reward[3321477]["RewardStrengthValue"] = {}
	tTrojanCompetition_Reward[3321477]["RewardStrengthValue"]["Value"] = 3000 -- 气力值, 【需求】3000气力值
	tTrojanCompetition_Reward[3321477]["RewardItem"][2] = {}
	tTrojanCompetition_Reward[3321477]["RewardItem"][2]["Id"] = 3306697 -- 【库】通用神纹精粹包[属性:9], 【表格】通用神纹精粹包
	tTrojanCompetition_Reward[3321477]["RewardItem"][2]["Attr"] = "0 1" -- 通用神纹精粹包*1
	tTrojanCompetition_Reward[3321477]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3321477]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3321477]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3321478] = {}
	-- ===3321478,'青龙组参赛包'
	-- ===索引: tTrojanCompetition_Reward[3321478]
	-- ===删除:3321478,1
	tTrojanCompetition_Reward[3321478]["LogId"] = 12001432
	tTrojanCompetition_Reward[3321478]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3321478]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3321478]["DeleteItem"][1]["Id"] = 3321478 -- 【库】青龙组参赛包[属性:9]
	tTrojanCompetition_Reward[3321478]["RewardStrengthValue"] = {}
	tTrojanCompetition_Reward[3321478]["RewardStrengthValue"]["Value"] = 5000 -- 气力值, 【需求】5000气力值
	tTrojanCompetition_Reward[3321478]["RewardItem"] = {}
	tTrojanCompetition_Reward[3321478]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3321478]["RewardItem"][1]["Id"] = 3306697 -- 【库】通用神纹精粹包[属性:9], 【表格】通用神纹精粹包
	tTrojanCompetition_Reward[3321478]["RewardItem"][1]["Attr"] = "0 3" -- 通用神纹精粹包*3
	tTrojanCompetition_Reward[3321478]["RewardItem"][2] = {}
	tTrojanCompetition_Reward[3321478]["RewardItem"][2]["Id"] = 3306510 -- 【库】黄色神纹(赠)随机包[属性:9], 【表格】黄色神纹随机包
	tTrojanCompetition_Reward[3321478]["RewardItem"][2]["Attr"] = "0 1" -- 黄色神纹(赠)随机包*1
	tTrojanCompetition_Reward[3321478]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3321478]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3321478]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3321479] = {}
	-- ===3321479,'白虎组参赛包'
	-- ===索引: tTrojanCompetition_Reward[3321479]
	-- ===删除:3321479,1
	tTrojanCompetition_Reward[3321479]["LogId"] = 12001432
	tTrojanCompetition_Reward[3321479]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3321479]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3321479]["DeleteItem"][1]["Id"] = 3321479 -- 【库】白虎组参赛包[属性:9]
	tTrojanCompetition_Reward[3321479]["RewardStrengthValue"] = {}
	tTrojanCompetition_Reward[3321479]["RewardStrengthValue"]["Value"] = 3000 -- 气力值, 【需求】3000气力值
	tTrojanCompetition_Reward[3321479]["RewardItem"] = {}
	tTrojanCompetition_Reward[3321479]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3321479]["RewardItem"][1]["Id"] = 3306697 -- 【库】通用神纹精粹包[属性:9], 【表格】通用神纹精粹包
	tTrojanCompetition_Reward[3321479]["RewardItem"][1]["Attr"] = "0 2" -- 通用神纹精粹包*2
	tTrojanCompetition_Reward[3321479]["RewardItem"][2] = {}
	tTrojanCompetition_Reward[3321479]["RewardItem"][2]["Id"] = 3306510 -- 【库】黄色神纹(赠)随机包[属性:9], 【表格】黄色神纹随机包
	tTrojanCompetition_Reward[3321479]["RewardItem"][2]["Attr"] = "0 1" -- 黄色神纹(赠)随机包*1
	tTrojanCompetition_Reward[3321479]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3321479]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3321479]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3321480] = {}
	-- ===3321480,'朱雀组参赛包'
	-- ===索引: tTrojanCompetition_Reward[3321480]
	-- ===删除:3321480,1
	tTrojanCompetition_Reward[3321480]["LogId"] = 12001432
	tTrojanCompetition_Reward[3321480]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3321480]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3321480]["DeleteItem"][1]["Id"] = 3321480 -- 【库】朱雀组参赛包[属性:9]
	tTrojanCompetition_Reward[3321480]["RewardStrengthValue"] = {}
	tTrojanCompetition_Reward[3321480]["RewardStrengthValue"]["Value"] = 2000 -- 气力值, 【需求】2000气力值
	tTrojanCompetition_Reward[3321480]["RewardItem"] = {}
	tTrojanCompetition_Reward[3321480]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3321480]["RewardItem"][1]["Id"] = 3306697 -- 【库】通用神纹精粹包[属性:9], 【表格】通用神纹精粹包
	tTrojanCompetition_Reward[3321480]["RewardItem"][1]["Attr"] = "0 2" -- 通用神纹精粹包*2
	tTrojanCompetition_Reward[3321480]["RewardItem"][2] = {}
	tTrojanCompetition_Reward[3321480]["RewardItem"][2]["Id"] = 3306510 -- 【库】黄色神纹(赠)随机包[属性:9], 【表格】黄色神纹随机包
	tTrojanCompetition_Reward[3321480]["RewardItem"][2]["Attr"] = "0 1" -- 黄色神纹(赠)随机包*1
	tTrojanCompetition_Reward[3321480]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3321480]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3321480]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3321481] = {}
	-- ===3321481,'玄武组参赛包'
	-- ===索引: tTrojanCompetition_Reward[3321481]
	-- ===删除:3321481,1
	tTrojanCompetition_Reward[3321481]["LogId"] = 12001432
	tTrojanCompetition_Reward[3321481]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3321481]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3321481]["DeleteItem"][1]["Id"] = 3321481 -- 【库】玄武组参赛包[属性:9]
	tTrojanCompetition_Reward[3321481]["RewardStrengthValue"] = {}
	tTrojanCompetition_Reward[3321481]["RewardStrengthValue"]["Value"] = 1000 -- 气力值, 【需求】1000气力值
	tTrojanCompetition_Reward[3321481]["RewardItem"] = {}
	tTrojanCompetition_Reward[3321481]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3321481]["RewardItem"][1]["Id"] = 3306697 -- 【库】通用神纹精粹包[属性:9], 【表格】通用神纹精粹包
	tTrojanCompetition_Reward[3321481]["RewardItem"][1]["Attr"] = "0 1" -- 通用神纹精粹包*1
	tTrojanCompetition_Reward[3321481]["RewardItem"][2] = {}
	tTrojanCompetition_Reward[3321481]["RewardItem"][2]["Id"] = 3306510 -- 【库】黄色神纹(赠)随机包[属性:9], 【表格】黄色神纹随机包
	tTrojanCompetition_Reward[3321481]["RewardItem"][2]["Attr"] = "0 1" -- 黄色神纹(赠)随机包*1
	tTrojanCompetition_Reward[3321481]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3321481]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3321481]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312774] = {}
	-- ===3312774,'（+6）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312774][1]
	-- ===删除:3312774,1
	tTrojanCompetition_Reward[3312774][1] = {}
	tTrojanCompetition_Reward[3312774][1]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312774][1]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312774][1]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312774][1]["DeleteItem"][1]["Id"] = 3312774 -- 【库】（+6）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312774][1]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312774][1]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312774][1]["RewardItem"][1]["Id"] = 4031406 -- 【库】策马扬鞭(+6)[属性:8], 【表格】策马扬鞭（+6）（赠）
	tTrojanCompetition_Reward[3312774][1]["RewardItem"][1]["Attr"] = "0 1 3" -- 策马扬鞭(+6)（赠）*1
	tTrojanCompetition_Reward[3312774][1]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312774][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312774][1]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312774][2] = {}
	-- ===3312774,'（+6）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312774][2]
	-- ===删除:3312774,1
	tTrojanCompetition_Reward[3312774][2]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312774][2]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312774][2]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312774][2]["DeleteItem"][1]["Id"] = 3312774 -- 【库】（+6）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312774][2]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312774][2]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312774][2]["RewardItem"][1]["Id"] = 4031506 -- 【库】攻城掠地(+6)[属性:8], 【表格】攻城掠地（+6）（赠）
	tTrojanCompetition_Reward[3312774][2]["RewardItem"][1]["Attr"] = "0 1 3" -- 攻城掠地(+6)（赠）*1
	tTrojanCompetition_Reward[3312774][2]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312774][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312774][2]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312774][3] = {}
	-- ===3312774,'（+6）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312774][3]
	-- ===删除:3312774,1
	tTrojanCompetition_Reward[3312774][3]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312774][3]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312774][3]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312774][3]["DeleteItem"][1]["Id"] = 3312774 -- 【库】（+6）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312774][3]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312774][3]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312774][3]["RewardItem"][1]["Id"] = 4031606 -- 【库】玄武护体(+6)[属性:8], 【表格】玄武护体（+6）（赠）
	tTrojanCompetition_Reward[3312774][3]["RewardItem"][1]["Attr"] = "0 1 3" -- 玄武护体(+6)（赠）*1
	tTrojanCompetition_Reward[3312774][3]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312774][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312774][3]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312774][4] = {}
	-- ===3312774,'（+6）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312774][4]
	-- ===删除:3312774,1
	tTrojanCompetition_Reward[3312774][4]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312774][4]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312774][4]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312774][4]["DeleteItem"][1]["Id"] = 3312774 -- 【库】（+6）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312774][4]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312774][4]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312774][4]["RewardItem"][1]["Id"] = 4032006 -- 【库】神罗天尊(+6)[属性:8], 【表格】神罗天尊（+6）（赠）
	tTrojanCompetition_Reward[3312774][4]["RewardItem"][1]["Attr"] = "0 1 3" -- 神罗天尊(+6)（赠）*1
	tTrojanCompetition_Reward[3312774][4]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312774][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312774][4]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312774][5] = {}
	-- ===3312774,'（+6）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312774][5]
	-- ===删除:3312774,1
	tTrojanCompetition_Reward[3312774][5]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312774][5]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312774][5]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312774][5]["DeleteItem"][1]["Id"] = 3312774 -- 【库】（+6）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312774][5]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312774][5]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312774][5]["RewardItem"][1]["Id"] = 4032106 -- 【库】爆炎诀(+6)[属性:8], 【表格】爆炎诀（+6）（赠）
	tTrojanCompetition_Reward[3312774][5]["RewardItem"][1]["Attr"] = "0 1 3" -- 爆炎诀(+6)（赠）*1
	tTrojanCompetition_Reward[3312774][5]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312774][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312774][5]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312774][6] = {}
	-- ===3312774,'（+6）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312774][6]
	-- ===删除:3312774,1
	tTrojanCompetition_Reward[3312774][6]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312774][6]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312774][6]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312774][6]["DeleteItem"][1]["Id"] = 3312774 -- 【库】（+6）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312774][6]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312774][6]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312774][6]["RewardItem"][1]["Id"] = 4032206 -- 【库】清心诀(+6)[属性:8], 【表格】清心诀（+6）（赠）
	tTrojanCompetition_Reward[3312774][6]["RewardItem"][1]["Attr"] = "0 1 3" -- 清心诀(+6)（赠）*1
	tTrojanCompetition_Reward[3312774][6]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312774][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312774][6]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312774][7] = {}
	-- ===3312774,'（+6）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312774][7]
	-- ===删除:3312774,1
	tTrojanCompetition_Reward[3312774][7]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312774][7]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312774][7]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312774][7]["DeleteItem"][1]["Id"] = 3312774 -- 【库】（+6）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312774][7]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312774][7]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312774][7]["RewardItem"][1]["Id"] = 4032306 -- 【库】天衣无缝(+6)[属性:8], 【表格】天衣无缝（+6）（赠）
	tTrojanCompetition_Reward[3312774][7]["RewardItem"][1]["Attr"] = "0 1 3" -- 天衣无缝(+6)（赠）*1
	tTrojanCompetition_Reward[3312774][7]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312774][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312774][7]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312774][8] = {}
	-- ===3312774,'（+6）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312774][8]
	-- ===删除:3312774,1
	tTrojanCompetition_Reward[3312774][8]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312774][8]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312774][8]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312774][8]["DeleteItem"][1]["Id"] = 3312774 -- 【库】（+6）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312774][8]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312774][8]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312774][8]["RewardItem"][1]["Id"] = 4032406 -- 【库】祭灵诀(+6)[属性:8], 【表格】祭灵诀（+6）（赠）
	tTrojanCompetition_Reward[3312774][8]["RewardItem"][1]["Attr"] = "0 1 3" -- 祭灵诀(+6)（赠）*1
	tTrojanCompetition_Reward[3312774][8]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312774][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312774][8]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312774][9] = {}
	-- ===3312774,'（+6）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312774][9]
	-- ===删除:3312774,1
	tTrojanCompetition_Reward[3312774][9]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312774][9]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312774][9]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312774][9]["DeleteItem"][1]["Id"] = 3312774 -- 【库】（+6）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312774][9]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312774][9]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312774][9]["RewardItem"][1]["Id"] = 4032506 -- 【库】横扫千军(+6)[属性:8], 【表格】横扫千军（+6）（赠）
	tTrojanCompetition_Reward[3312774][9]["RewardItem"][1]["Attr"] = "0 1 3" -- 横扫千军(+6)（赠）*1
	tTrojanCompetition_Reward[3312774][9]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312774][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312774][9]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312774][10] = {}
	-- ===3312774,'（+6）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312774][10]
	-- ===删除:3312774,1
	tTrojanCompetition_Reward[3312774][10]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312774][10]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312774][10]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312774][10]["DeleteItem"][1]["Id"] = 3312774 -- 【库】（+6）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312774][10]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312774][10]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312774][10]["RewardItem"][1]["Id"] = 4032606 -- 【库】涅槃重生(+6)[属性:8], 【表格】涅槃重生（+6）（赠）
	tTrojanCompetition_Reward[3312774][10]["RewardItem"][1]["Attr"] = "0 1 3" -- 涅槃重生(+6)（赠）*1
	tTrojanCompetition_Reward[3312774][10]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312774][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312774][10]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312774][11] = {}
	-- ===3312774,'（+6）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312774][11]
	-- ===删除:3312774,1
	tTrojanCompetition_Reward[3312774][11]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312774][11]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312774][11]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312774][11]["DeleteItem"][1]["Id"] = 3312774 -- 【库】（+6）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312774][11]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312774][11]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312774][11]["RewardItem"][1]["Id"] = 4032706 -- 【库】锋芒毕露(+6)[属性:8], 【表格】锋芒毕露（+6）（赠）
	tTrojanCompetition_Reward[3312774][11]["RewardItem"][1]["Attr"] = "0 1 3" -- 锋芒毕露(+6)（赠）*1
	tTrojanCompetition_Reward[3312774][11]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312774][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312774][11]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312774][12] = {}
	-- ===3312774,'（+6）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312774][12]
	-- ===删除:3312774,1
	tTrojanCompetition_Reward[3312774][12]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312774][12]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312774][12]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312774][12]["DeleteItem"][1]["Id"] = 3312774 -- 【库】（+6）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312774][12]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312774][12]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312774][12]["RewardItem"][1]["Id"] = 4032806 -- 【库】魂兮归来(+6)[属性:8], 【表格】魂兮归来（+6）（赠）
	tTrojanCompetition_Reward[3312774][12]["RewardItem"][1]["Attr"] = "0 1 3" -- 魂兮归来(+6)（赠）*1
	tTrojanCompetition_Reward[3312774][12]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312774][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312774][12]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312774][13] = {}
	-- ===3312774,'（+6）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312774][13]
	-- ===删除:3312774,1
	tTrojanCompetition_Reward[3312774][13]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312774][13]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312774][13]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312774][13]["DeleteItem"][1]["Id"] = 3312774 -- 【库】（+6）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312774][13]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312774][13]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312774][13]["RewardItem"][1]["Id"] = 4032906 -- 【库】例无虚发(+6)[属性:8], 【表格】例无虚发（+6）（赠）
	tTrojanCompetition_Reward[3312774][13]["RewardItem"][1]["Attr"] = "0 1 3" -- 例无虚发(+6)（赠）*1
	tTrojanCompetition_Reward[3312774][13]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312774][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312774][13]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312774][14] = {}
	-- ===3312774,'（+6）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312774][14]
	-- ===删除:3312774,1
	tTrojanCompetition_Reward[3312774][14]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312774][14]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312774][14]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312774][14]["DeleteItem"][1]["Id"] = 3312774 -- 【库】（+6）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312774][14]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312774][14]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312774][14]["RewardItem"][1]["Id"] = 4033006 -- 【库】审判(+6)[属性:8], 【表格】审判（+6）（赠）
	tTrojanCompetition_Reward[3312774][14]["RewardItem"][1]["Attr"] = "0 1 3" -- 审判(+6)（赠）*1
	tTrojanCompetition_Reward[3312774][14]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312774][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312774][14]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312774][15] = {}
	-- ===3312774,'（+6）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312774][15]
	-- ===删除:3312774,1
	tTrojanCompetition_Reward[3312774][15]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312774][15]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312774][15]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312774][15]["DeleteItem"][1]["Id"] = 3312774 -- 【库】（+6）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312774][15]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312774][15]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312774][15]["RewardItem"][1]["Id"] = 4033306 -- 【库】致命准星(+6)[属性:8], 【表格】致命准星（+6）（赠）
	tTrojanCompetition_Reward[3312774][15]["RewardItem"][1]["Attr"] = "0 1 3" -- 致命准星(+6)（赠）*1
	tTrojanCompetition_Reward[3312774][15]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312774][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312774][15]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312774][16] = {}
	-- ===3312774,'（+6）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312774][16]
	-- ===删除:3312774,1
	tTrojanCompetition_Reward[3312774][16]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312774][16]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312774][16]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312774][16]["DeleteItem"][1]["Id"] = 3312774 -- 【库】（+6）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312774][16]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312774][16]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312774][16]["RewardItem"][1]["Id"] = 4033406 -- 【库】会心一击(+6)[属性:8], 【表格】会心一击（+6）（赠）
	tTrojanCompetition_Reward[3312774][16]["RewardItem"][1]["Attr"] = "0 1 3" -- 会心一击(+6)（赠）*1
	tTrojanCompetition_Reward[3312774][16]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312774][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312774][16]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312774][17] = {}
	-- ===3312774,'（+6）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312774][17]
	-- ===删除:3312774,1
	tTrojanCompetition_Reward[3312774][17]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312774][17]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312774][17]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312774][17]["DeleteItem"][1]["Id"] = 3312774 -- 【库】（+6）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312774][17]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312774][17]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312774][17]["RewardItem"][1]["Id"] = 4033906 -- 【库】斗转星移(+6)[属性:8], 【表格】斗转星移（+6）（赠）
	tTrojanCompetition_Reward[3312774][17]["RewardItem"][1]["Attr"] = "0 1 3" -- 斗转星移(+6)（赠）*1
	tTrojanCompetition_Reward[3312774][17]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312774][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312774][17]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312774][18] = {}
	-- ===3312774,'（+6）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312774][18]
	-- ===删除:3312774,1
	tTrojanCompetition_Reward[3312774][18]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312774][18]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312774][18]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312774][18]["DeleteItem"][1]["Id"] = 3312774 -- 【库】（+6）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312774][18]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312774][18]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312774][18]["RewardItem"][1]["Id"] = 4034006 -- 【库】乾坤护法(+6)[属性:8], 【表格】乾坤护法（+6）（赠）
	tTrojanCompetition_Reward[3312774][18]["RewardItem"][1]["Attr"] = "0 1 3" -- 乾坤护法(+6)（赠）*1
	tTrojanCompetition_Reward[3312774][18]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312774][18]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312774][18]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312774][19] = {}
	-- ===3312774,'（+6）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312774][19]
	-- ===删除:3312774,1
	tTrojanCompetition_Reward[3312774][19]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312774][19]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312774][19]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312774][19]["DeleteItem"][1]["Id"] = 3312774 -- 【库】（+6）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312774][19]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312774][19]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312774][19]["RewardItem"][1]["Id"] = 4034106 -- 【库】威慑(+6)[属性:8], 【表格】威慑（+6）（赠）
	tTrojanCompetition_Reward[3312774][19]["RewardItem"][1]["Attr"] = "0 1 3" -- 威慑(+6)（赠）*1
	tTrojanCompetition_Reward[3312774][19]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312774][19]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312774][19]["RewardEffect"]["Effect"] = "angelwing"
	
	-- ===3312774,'（+6）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312774][20]
	-- ===删除: 3312774,1
	-- ===
	tTrojanCompetition_Reward[3312774][20] = {}
	tTrojanCompetition_Reward[3312774][20]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312774][20]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312774][20]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312774][20]["DeleteItem"][1]["Id"] = 3312774 -- 【库】（+6）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312774][20]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312774][20]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312774][20]["RewardItem"][1]["Id"] = 4034206 -- 乾坤妙法(+6)[4034206][属性:8][叠加:0][金币:0], 【表格】乾坤妙法（+6）
	tTrojanCompetition_Reward[3312774][20]["RewardItem"][1]["Attr"] = "0 1 3" -- 乾坤妙法(+6)（赠）*1
	tTrojanCompetition_Reward[3312774][20]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312774][20]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312774][20]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312774][21] = {}
	-- ===3312774,'（+6）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312774][21]
	-- ===删除: 3312774,1
	-- ===
	tTrojanCompetition_Reward[3312774][21]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312774][21]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312774][21]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312774][21]["DeleteItem"][1]["Id"] = 3312774 -- 【库】（+6）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312774][21]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312774][21]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312774][21]["RewardItem"][1]["Id"] = 4034306 -- 罡气护体(+6)[4034306][属性:8][叠加:0][金币:0], 【表格】罡气护体（+6）
	tTrojanCompetition_Reward[3312774][21]["RewardItem"][1]["Attr"] = "0 1 3" -- 罡气护体(+6)（赠）*1
	tTrojanCompetition_Reward[3312774][21]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312774][21]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312774][21]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312774][22] = {}
	-- ===3312774,'（+6）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312774][22]
	-- ===删除: 3312774,1
	-- ===
	tTrojanCompetition_Reward[3312774][22]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312774][22]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312774][22]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312774][22]["DeleteItem"][1]["Id"] = 3312774 -- 【库】（+6）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312774][22]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312774][22]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312774][22]["RewardItem"][1]["Id"] = 4034406 -- 沧澜破(+6)[4034406][属性:8][叠加:0][金币:0], 【表格】沧澜破（+6）
	tTrojanCompetition_Reward[3312774][22]["RewardItem"][1]["Attr"] = "0 1 3" -- 沧澜破(+6)（赠）*1
	tTrojanCompetition_Reward[3312774][22]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312774][22]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312774][22]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312774][23] = {}
	-- ===3312774,'（+6）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312774][23]
	-- ===删除: 3312774,1
	-- ===
	tTrojanCompetition_Reward[3312774][23]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312774][23]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312774][23]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312774][23]["DeleteItem"][1]["Id"] = 3312774 -- 【库】（+6）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312774][23]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312774][23]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312774][23]["RewardItem"][1]["Id"] = 4034506 -- 妙手回春(+6)[4034506][属性:8][叠加:0][金币:0], 【表格】妙手回春（+6）
	tTrojanCompetition_Reward[3312774][23]["RewardItem"][1]["Attr"] = "0 1 3" -- 妙手回春(+6)（赠）*1
	tTrojanCompetition_Reward[3312774][23]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312774][23]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312774][23]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312774][24] = {}
	-- ===3312774,'（+6）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312774][24]
	-- ===删除: 3312774,1
	-- ===
	tTrojanCompetition_Reward[3312774][24]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312774][24]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312774][24]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312774][24]["DeleteItem"][1]["Id"] = 3312774 -- 【库】（+6）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312774][24]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312774][24]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312774][24]["RewardItem"][1]["Id"] = 4034606 -- 碎魔屏障(+6)[4034606][属性:8][叠加:0][金币:0], 【表格】最终法伤免疫（+6）
	tTrojanCompetition_Reward[3312774][24]["RewardItem"][1]["Attr"] = "0 1 3" -- 碎魔屏障(+6)（赠）*1
	tTrojanCompetition_Reward[3312774][24]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312774][24]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312774][24]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312774][25] = {}
	-- ===3312774,'（+6）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312774][25]
	-- ===删除: 3312774,1
	-- ===
	tTrojanCompetition_Reward[3312774][25]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312774][25]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312774][25]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312774][25]["DeleteItem"][1]["Id"] = 3312774 -- 【库】（+6）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312774][25]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312774][25]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312774][25]["RewardItem"][1]["Id"] = 4034706 -- 天地化盾(+6)[4034706][属性:8][叠加:0][金币:0], 【表格】最终物伤免疫（+6）
	tTrojanCompetition_Reward[3312774][25]["RewardItem"][1]["Attr"] = "0 1 3" -- 天地化盾(+6)（赠）*1
	tTrojanCompetition_Reward[3312774][25]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312774][25]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312774][25]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312774][26] = {}
	-- ===3312774,'（+6）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312774][26]
	-- ===删除: 3312774,1
	-- ===
	tTrojanCompetition_Reward[3312774][26]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312774][26]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312774][26]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312774][26]["DeleteItem"][1]["Id"] = 3312774 -- 【库】（+6）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312774][26]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312774][26]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312774][26]["RewardItem"][1]["Id"] = 4034806 -- 碎玄元(+6)[4034806][属性:8][叠加:0][金币:0], 【表格】碎玄元（+6）
	tTrojanCompetition_Reward[3312774][26]["RewardItem"][1]["Attr"] = "0 1 3" -- 碎玄元(+6)（赠）*1
	tTrojanCompetition_Reward[3312774][26]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312774][26]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312774][26]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312774][27] = {}
	-- ===3312774,'（+6）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312774][27]
	-- ===删除: 3312774,1
	-- ===
	tTrojanCompetition_Reward[3312774][27]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312774][27]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312774][27]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312774][27]["DeleteItem"][1]["Id"] = 3312774 -- 【库】（+6）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312774][27]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312774][27]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312774][27]["RewardItem"][1]["Id"] = 4034906 -- 不死之身(+6)[4034906][属性:8][叠加:0][金币:0], 【表格】不死之身（+6）
	tTrojanCompetition_Reward[3312774][27]["RewardItem"][1]["Attr"] = "0 1 3" -- 不死之身(+6)（赠）*1
	tTrojanCompetition_Reward[3312774][27]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312774][27]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312774][27]["RewardEffect"]["Effect"] = "angelwing"



	tTrojanCompetition_Reward[3312775] = {}
	-- ===3312775,'（+5）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312775][1]
	-- ===删除:3312775,1
	tTrojanCompetition_Reward[3312775][1] = {}
	tTrojanCompetition_Reward[3312775][1]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312775][1]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312775][1]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312775][1]["DeleteItem"][1]["Id"] = 3312775 -- 【库】（+5）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312775][1]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312775][1]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312775][1]["RewardItem"][1]["Id"] = 4031405 -- 【库】策马扬鞭(+5)[属性:8], 【表格】策马扬鞭（+5）（赠）
	tTrojanCompetition_Reward[3312775][1]["RewardItem"][1]["Attr"] = "0 1 3" -- 策马扬鞭(+5)（赠）*1
	tTrojanCompetition_Reward[3312775][1]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312775][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312775][1]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312775][2] = {}
	-- ===3312775,'（+5）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312775][2]
	-- ===删除:3312775,1
	tTrojanCompetition_Reward[3312775][2]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312775][2]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312775][2]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312775][2]["DeleteItem"][1]["Id"] = 3312775 -- 【库】（+5）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312775][2]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312775][2]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312775][2]["RewardItem"][1]["Id"] = 4031505 -- 【库】攻城掠地(+5)[属性:8], 【表格】攻城掠地（+5）（赠）
	tTrojanCompetition_Reward[3312775][2]["RewardItem"][1]["Attr"] = "0 1 3" -- 攻城掠地(+5)（赠）*1
	tTrojanCompetition_Reward[3312775][2]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312775][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312775][2]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312775][3] = {}
	-- ===3312775,'（+5）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312775][3]
	-- ===删除:3312775,1
	tTrojanCompetition_Reward[3312775][3]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312775][3]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312775][3]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312775][3]["DeleteItem"][1]["Id"] = 3312775 -- 【库】（+5）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312775][3]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312775][3]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312775][3]["RewardItem"][1]["Id"] = 4031605 -- 【库】玄武护体(+5)[属性:8], 【表格】玄武护体（+5）（赠）
	tTrojanCompetition_Reward[3312775][3]["RewardItem"][1]["Attr"] = "0 1 3" -- 玄武护体(+5)（赠）*1
	tTrojanCompetition_Reward[3312775][3]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312775][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312775][3]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312775][4] = {}
	-- ===3312775,'（+5）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312775][4]
	-- ===删除:3312775,1
	tTrojanCompetition_Reward[3312775][4]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312775][4]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312775][4]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312775][4]["DeleteItem"][1]["Id"] = 3312775 -- 【库】（+5）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312775][4]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312775][4]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312775][4]["RewardItem"][1]["Id"] = 4032005 -- 【库】神罗天尊(+5)[属性:8], 【表格】神罗天尊（+5）（赠）
	tTrojanCompetition_Reward[3312775][4]["RewardItem"][1]["Attr"] = "0 1 3" -- 神罗天尊(+5)（赠）*1
	tTrojanCompetition_Reward[3312775][4]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312775][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312775][4]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312775][5] = {}
	-- ===3312775,'（+5）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312775][5]
	-- ===删除:3312775,1
	tTrojanCompetition_Reward[3312775][5]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312775][5]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312775][5]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312775][5]["DeleteItem"][1]["Id"] = 3312775 -- 【库】（+5）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312775][5]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312775][5]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312775][5]["RewardItem"][1]["Id"] = 4032105 -- 【库】爆炎诀(+5)[属性:8], 【表格】爆炎诀（+5）（赠）
	tTrojanCompetition_Reward[3312775][5]["RewardItem"][1]["Attr"] = "0 1 3" -- 爆炎诀(+5)（赠）*1
	tTrojanCompetition_Reward[3312775][5]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312775][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312775][5]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312775][6] = {}
	-- ===3312775,'（+5）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312775][6]
	-- ===删除:3312775,1
	tTrojanCompetition_Reward[3312775][6]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312775][6]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312775][6]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312775][6]["DeleteItem"][1]["Id"] = 3312775 -- 【库】（+5）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312775][6]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312775][6]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312775][6]["RewardItem"][1]["Id"] = 4032205 -- 【库】清心诀(+5)[属性:8], 【表格】清心诀（+5）（赠）
	tTrojanCompetition_Reward[3312775][6]["RewardItem"][1]["Attr"] = "0 1 3" -- 清心诀(+5)（赠）*1
	tTrojanCompetition_Reward[3312775][6]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312775][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312775][6]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312775][7] = {}
	-- ===3312775,'（+5）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312775][7]
	-- ===删除:3312775,1
	tTrojanCompetition_Reward[3312775][7]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312775][7]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312775][7]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312775][7]["DeleteItem"][1]["Id"] = 3312775 -- 【库】（+5）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312775][7]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312775][7]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312775][7]["RewardItem"][1]["Id"] = 4032305 -- 【库】天衣无缝(+5)[属性:8], 【表格】天衣无缝（+5）（赠）
	tTrojanCompetition_Reward[3312775][7]["RewardItem"][1]["Attr"] = "0 1 3" -- 天衣无缝(+5)（赠）*1
	tTrojanCompetition_Reward[3312775][7]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312775][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312775][7]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312775][8] = {}
	-- ===3312775,'（+5）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312775][8]
	-- ===删除:3312775,1
	tTrojanCompetition_Reward[3312775][8]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312775][8]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312775][8]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312775][8]["DeleteItem"][1]["Id"] = 3312775 -- 【库】（+5）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312775][8]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312775][8]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312775][8]["RewardItem"][1]["Id"] = 4032405 -- 【库】祭灵诀(+5)[属性:8], 【表格】祭灵诀（+5）（赠）
	tTrojanCompetition_Reward[3312775][8]["RewardItem"][1]["Attr"] = "0 1 3" -- 祭灵诀(+5)（赠）*1
	tTrojanCompetition_Reward[3312775][8]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312775][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312775][8]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312775][9] = {}
	-- ===3312775,'（+5）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312775][9]
	-- ===删除:3312775,1
	tTrojanCompetition_Reward[3312775][9]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312775][9]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312775][9]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312775][9]["DeleteItem"][1]["Id"] = 3312775 -- 【库】（+5）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312775][9]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312775][9]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312775][9]["RewardItem"][1]["Id"] = 4032505 -- 【库】横扫千军(+5)[属性:8], 【表格】横扫千军（+5）（赠）
	tTrojanCompetition_Reward[3312775][9]["RewardItem"][1]["Attr"] = "0 1 3" -- 横扫千军(+5)（赠）*1
	tTrojanCompetition_Reward[3312775][9]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312775][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312775][9]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312775][10] = {}
	-- ===3312775,'（+5）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312775][10]
	-- ===删除:3312775,1
	tTrojanCompetition_Reward[3312775][10]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312775][10]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312775][10]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312775][10]["DeleteItem"][1]["Id"] = 3312775 -- 【库】（+5）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312775][10]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312775][10]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312775][10]["RewardItem"][1]["Id"] = 4032605 -- 【库】涅槃重生(+5)[属性:8], 【表格】涅槃重生（+5）（赠）
	tTrojanCompetition_Reward[3312775][10]["RewardItem"][1]["Attr"] = "0 1 3" -- 涅槃重生(+5)（赠）*1
	tTrojanCompetition_Reward[3312775][10]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312775][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312775][10]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312775][11] = {}
	-- ===3312775,'（+5）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312775][11]
	-- ===删除:3312775,1
	tTrojanCompetition_Reward[3312775][11]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312775][11]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312775][11]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312775][11]["DeleteItem"][1]["Id"] = 3312775 -- 【库】（+5）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312775][11]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312775][11]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312775][11]["RewardItem"][1]["Id"] = 4032705 -- 【库】锋芒毕露(+5)[属性:8], 【表格】锋芒毕露（+5）（赠）
	tTrojanCompetition_Reward[3312775][11]["RewardItem"][1]["Attr"] = "0 1 3" -- 锋芒毕露(+5)（赠）*1
	tTrojanCompetition_Reward[3312775][11]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312775][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312775][11]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312775][12] = {}
	-- ===3312775,'（+5）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312775][12]
	-- ===删除:3312775,1
	tTrojanCompetition_Reward[3312775][12]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312775][12]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312775][12]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312775][12]["DeleteItem"][1]["Id"] = 3312775 -- 【库】（+5）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312775][12]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312775][12]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312775][12]["RewardItem"][1]["Id"] = 4032805 -- 【库】魂兮归来(+5)[属性:8], 【表格】魂兮归来（+5）（赠）
	tTrojanCompetition_Reward[3312775][12]["RewardItem"][1]["Attr"] = "0 1 3" -- 魂兮归来(+5)（赠）*1
	tTrojanCompetition_Reward[3312775][12]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312775][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312775][12]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312775][13] = {}
	-- ===3312775,'（+5）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312775][13]
	-- ===删除:3312775,1
	tTrojanCompetition_Reward[3312775][13]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312775][13]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312775][13]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312775][13]["DeleteItem"][1]["Id"] = 3312775 -- 【库】（+5）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312775][13]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312775][13]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312775][13]["RewardItem"][1]["Id"] = 4032905 -- 【库】例无虚发(+5)[属性:8], 【表格】例无虚发（+5）（赠）
	tTrojanCompetition_Reward[3312775][13]["RewardItem"][1]["Attr"] = "0 1 3" -- 例无虚发(+5)（赠）*1
	tTrojanCompetition_Reward[3312775][13]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312775][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312775][13]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312775][14] = {}
	-- ===3312775,'（+5）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312775][14]
	-- ===删除:3312775,1
	tTrojanCompetition_Reward[3312775][14]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312775][14]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312775][14]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312775][14]["DeleteItem"][1]["Id"] = 3312775 -- 【库】（+5）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312775][14]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312775][14]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312775][14]["RewardItem"][1]["Id"] = 4033005 -- 【库】审判(+5)[属性:8], 【表格】审判（+5）（赠）
	tTrojanCompetition_Reward[3312775][14]["RewardItem"][1]["Attr"] = "0 1 3" -- 审判(+5)（赠）*1
	tTrojanCompetition_Reward[3312775][14]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312775][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312775][14]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312775][15] = {}
	-- ===3312775,'（+5）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312775][15]
	-- ===删除:3312775,1
	tTrojanCompetition_Reward[3312775][15]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312775][15]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312775][15]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312775][15]["DeleteItem"][1]["Id"] = 3312775 -- 【库】（+5）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312775][15]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312775][15]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312775][15]["RewardItem"][1]["Id"] = 4033305 -- 【库】致命准星(+5)[属性:8], 【表格】致命准星（+5）（赠）
	tTrojanCompetition_Reward[3312775][15]["RewardItem"][1]["Attr"] = "0 1 3" -- 致命准星(+5)（赠）*1
	tTrojanCompetition_Reward[3312775][15]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312775][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312775][15]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312775][16] = {}
	-- ===3312775,'（+5）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312775][16]
	-- ===删除:3312775,1
	tTrojanCompetition_Reward[3312775][16]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312775][16]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312775][16]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312775][16]["DeleteItem"][1]["Id"] = 3312775 -- 【库】（+5）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312775][16]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312775][16]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312775][16]["RewardItem"][1]["Id"] = 4033405 -- 【库】会心一击(+5)[属性:8], 【表格】会心一击（+5）（赠）
	tTrojanCompetition_Reward[3312775][16]["RewardItem"][1]["Attr"] = "0 1 3" -- 会心一击(+5)（赠）*1
	tTrojanCompetition_Reward[3312775][16]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312775][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312775][16]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312775][17] = {}
	-- ===3312775,'（+5）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312775][17]
	-- ===删除:3312775,1
	tTrojanCompetition_Reward[3312775][17]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312775][17]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312775][17]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312775][17]["DeleteItem"][1]["Id"] = 3312775 -- 【库】（+5）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312775][17]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312775][17]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312775][17]["RewardItem"][1]["Id"] = 4033905 -- 【库】斗转星移(+5)[属性:8], 【表格】斗转星移（+5）（赠）
	tTrojanCompetition_Reward[3312775][17]["RewardItem"][1]["Attr"] = "0 1 3" -- 斗转星移(+5)（赠）*1
	tTrojanCompetition_Reward[3312775][17]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312775][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312775][17]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312775][18] = {}
	-- ===3312775,'（+5）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312775][18]
	-- ===删除:3312775,1
	tTrojanCompetition_Reward[3312775][18]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312775][18]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312775][18]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312775][18]["DeleteItem"][1]["Id"] = 3312775 -- 【库】（+5）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312775][18]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312775][18]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312775][18]["RewardItem"][1]["Id"] = 4034005 -- 【库】乾坤护法(+5)[属性:8], 【表格】乾坤护法（+5）（赠）
	tTrojanCompetition_Reward[3312775][18]["RewardItem"][1]["Attr"] = "0 1 3" -- 乾坤护法(+5)（赠）*1
	tTrojanCompetition_Reward[3312775][18]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312775][18]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312775][18]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312775][19] = {}
	-- ===3312775,'（+5）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312775][19]
	-- ===删除:3312775,1
	tTrojanCompetition_Reward[3312775][19]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312775][19]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312775][19]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312775][19]["DeleteItem"][1]["Id"] = 3312775 -- 【库】（+5）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312775][19]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312775][19]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312775][19]["RewardItem"][1]["Id"] = 4034105 -- 【库】威慑(+5)[属性:8], 【表格】威慑（+5）（赠）
	tTrojanCompetition_Reward[3312775][19]["RewardItem"][1]["Attr"] = "0 1 3" -- 威慑(+5)（赠）*1
	tTrojanCompetition_Reward[3312775][19]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312775][19]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312775][19]["RewardEffect"]["Effect"] = "angelwing"
	
	-- ===3312775,'（+5）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312775][20]
	-- ===删除: 3312775,1
	-- ===
	tTrojanCompetition_Reward[3312775][20] = {}
	tTrojanCompetition_Reward[3312775][20]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312775][20]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312775][20]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312775][20]["DeleteItem"][1]["Id"] = 3312775 -- 【库】（+5）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312775][20]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312775][20]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312775][20]["RewardItem"][1]["Id"] = 4034205 -- 乾坤妙法(+5)[4034205][属性:8][叠加:0][金币:0], 【表格】乾坤妙法（+5）
	tTrojanCompetition_Reward[3312775][20]["RewardItem"][1]["Attr"] = "0 1 3" -- 乾坤妙法(+5)（赠）*1
	tTrojanCompetition_Reward[3312775][20]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312775][20]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312775][20]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312775][21] = {}
	-- ===3312775,'（+5）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312775][21]
	-- ===删除: 3312775,1
	-- ===
	tTrojanCompetition_Reward[3312775][21]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312775][21]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312775][21]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312775][21]["DeleteItem"][1]["Id"] = 3312775 -- 【库】（+5）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312775][21]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312775][21]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312775][21]["RewardItem"][1]["Id"] = 4034305 -- 罡气护体(+5)[4034305][属性:8][叠加:0][金币:0], 【表格】罡气护体（+5）
	tTrojanCompetition_Reward[3312775][21]["RewardItem"][1]["Attr"] = "0 1 3" -- 罡气护体(+5)（赠）*1
	tTrojanCompetition_Reward[3312775][21]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312775][21]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312775][21]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312775][22] = {}
	-- ===3312775,'（+5）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312775][22]
	-- ===删除: 3312775,1
	-- ===
	tTrojanCompetition_Reward[3312775][22]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312775][22]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312775][22]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312775][22]["DeleteItem"][1]["Id"] = 3312775 -- 【库】（+5）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312775][22]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312775][22]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312775][22]["RewardItem"][1]["Id"] = 4034405 -- 沧澜破(+5)[4034405][属性:8][叠加:0][金币:0], 【表格】沧澜破（+5）
	tTrojanCompetition_Reward[3312775][22]["RewardItem"][1]["Attr"] = "0 1 3" -- 沧澜破(+5)（赠）*1
	tTrojanCompetition_Reward[3312775][22]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312775][22]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312775][22]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312775][23] = {}
	-- ===3312775,'（+5）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312775][23]
	-- ===删除: 3312775,1
	-- ===
	tTrojanCompetition_Reward[3312775][23]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312775][23]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312775][23]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312775][23]["DeleteItem"][1]["Id"] = 3312775 -- 【库】（+5）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312775][23]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312775][23]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312775][23]["RewardItem"][1]["Id"] = 4034505 -- 妙手回春(+5)[4034505][属性:8][叠加:0][金币:0], 【表格】妙手回春（+5）
	tTrojanCompetition_Reward[3312775][23]["RewardItem"][1]["Attr"] = "0 1 3" -- 妙手回春(+5)（赠）*1
	tTrojanCompetition_Reward[3312775][23]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312775][23]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312775][23]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312775][24] = {}
	-- ===3312775,'（+5）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312775][24]
	-- ===删除: 3312775,1
	-- ===
	tTrojanCompetition_Reward[3312775][24]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312775][24]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312775][24]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312775][24]["DeleteItem"][1]["Id"] = 3312775 -- 【库】（+5）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312775][24]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312775][24]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312775][24]["RewardItem"][1]["Id"] = 4034605 -- 碎魔屏障(+5)[4034605][属性:8][叠加:0][金币:0], 【表格】最终法伤免疫（+5）
	tTrojanCompetition_Reward[3312775][24]["RewardItem"][1]["Attr"] = "0 1 3" -- 碎魔屏障(+5)（赠）*1
	tTrojanCompetition_Reward[3312775][24]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312775][24]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312775][24]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312775][25] = {}
	-- ===3312775,'（+5）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312775][25]
	-- ===删除: 3312775,1
	-- ===
	tTrojanCompetition_Reward[3312775][25]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312775][25]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312775][25]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312775][25]["DeleteItem"][1]["Id"] = 3312775 -- 【库】（+5）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312775][25]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312775][25]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312775][25]["RewardItem"][1]["Id"] = 4034705 -- 天地化盾(+5)[4034705][属性:8][叠加:0][金币:0], 【表格】最终物伤免疫（+5）
	tTrojanCompetition_Reward[3312775][25]["RewardItem"][1]["Attr"] = "0 1 3" -- 天地化盾(+5)（赠）*1
	tTrojanCompetition_Reward[3312775][25]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312775][25]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312775][25]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312775][26] = {}
	-- ===3312775,'（+5）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312775][26]
	-- ===删除: 3312775,1
	-- ===
	tTrojanCompetition_Reward[3312775][26]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312775][26]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312775][26]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312775][26]["DeleteItem"][1]["Id"] = 3312775 -- 【库】（+5）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312775][26]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312775][26]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312775][26]["RewardItem"][1]["Id"] = 4034805 -- 碎玄元(+5)[4034805][属性:8][叠加:0][金币:0], 【表格】碎玄元（+5）
	tTrojanCompetition_Reward[3312775][26]["RewardItem"][1]["Attr"] = "0 1 3" -- 碎玄元(+5)（赠）*1
	tTrojanCompetition_Reward[3312775][26]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312775][26]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312775][26]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312775][27] = {}
	-- ===3312775,'（+5）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312775][27]
	-- ===删除: 3312775,1
	-- ===
	tTrojanCompetition_Reward[3312775][27]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312775][27]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312775][27]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312775][27]["DeleteItem"][1]["Id"] = 3312775 -- 【库】（+5）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312775][27]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312775][27]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312775][27]["RewardItem"][1]["Id"] = 4034905 -- 不死之身(+5)[4034905][属性:8][叠加:0][金币:0], 【表格】不死之身（+5）
	tTrojanCompetition_Reward[3312775][27]["RewardItem"][1]["Attr"] = "0 1 3" -- 不死之身(+5)（赠）*1
	tTrojanCompetition_Reward[3312775][27]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312775][27]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312775][27]["RewardEffect"]["Effect"] = "angelwing"


	

	tTrojanCompetition_Reward[3312776] = {}
	-- ===3312776,'（+3）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312776][1]
	-- ===删除:3312776,1
	tTrojanCompetition_Reward[3312776][1] = {}
	tTrojanCompetition_Reward[3312776][1]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312776][1]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312776][1]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312776][1]["DeleteItem"][1]["Id"] = 3312776 -- 【库】（+3）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312776][1]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312776][1]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312776][1]["RewardItem"][1]["Id"] = 4031403 -- 【库】策马扬鞭(+3)[属性:8], 【表格】策马扬鞭（+3）（赠）
	tTrojanCompetition_Reward[3312776][1]["RewardItem"][1]["Attr"] = "0 1 3" -- 策马扬鞭(+3)（赠）*1
	tTrojanCompetition_Reward[3312776][1]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312776][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312776][1]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312776][2] = {}
	-- ===3312776,'（+3）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312776][2]
	-- ===删除:3312776,1
	tTrojanCompetition_Reward[3312776][2]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312776][2]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312776][2]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312776][2]["DeleteItem"][1]["Id"] = 3312776 -- 【库】（+3）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312776][2]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312776][2]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312776][2]["RewardItem"][1]["Id"] = 4031503 -- 【库】攻城掠地(+3)[属性:8], 【表格】攻城掠地（+3）（赠）
	tTrojanCompetition_Reward[3312776][2]["RewardItem"][1]["Attr"] = "0 1 3" -- 攻城掠地(+3)（赠）*1
	tTrojanCompetition_Reward[3312776][2]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312776][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312776][2]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312776][3] = {}
	-- ===3312776,'（+3）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312776][3]
	-- ===删除:3312776,1
	tTrojanCompetition_Reward[3312776][3]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312776][3]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312776][3]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312776][3]["DeleteItem"][1]["Id"] = 3312776 -- 【库】（+3）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312776][3]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312776][3]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312776][3]["RewardItem"][1]["Id"] = 4031603 -- 【库】玄武护体(+3)[属性:8], 【表格】玄武护体（+3）（赠）
	tTrojanCompetition_Reward[3312776][3]["RewardItem"][1]["Attr"] = "0 1 3" -- 玄武护体(+3)（赠）*1
	tTrojanCompetition_Reward[3312776][3]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312776][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312776][3]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312776][4] = {}
	-- ===3312776,'（+3）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312776][4]
	-- ===删除:3312776,1
	tTrojanCompetition_Reward[3312776][4]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312776][4]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312776][4]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312776][4]["DeleteItem"][1]["Id"] = 3312776 -- 【库】（+3）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312776][4]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312776][4]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312776][4]["RewardItem"][1]["Id"] = 4032003 -- 【库】神罗天尊(+3)[属性:8], 【表格】神罗天尊（+3）（赠）
	tTrojanCompetition_Reward[3312776][4]["RewardItem"][1]["Attr"] = "0 1 3" -- 神罗天尊(+3)（赠）*1
	tTrojanCompetition_Reward[3312776][4]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312776][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312776][4]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312776][5] = {}
	-- ===3312776,'（+3）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312776][5]
	-- ===删除:3312776,1
	tTrojanCompetition_Reward[3312776][5]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312776][5]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312776][5]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312776][5]["DeleteItem"][1]["Id"] = 3312776 -- 【库】（+3）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312776][5]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312776][5]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312776][5]["RewardItem"][1]["Id"] = 4032103 -- 【库】爆炎诀(+3)[属性:8], 【表格】爆炎诀（+3）（赠）
	tTrojanCompetition_Reward[3312776][5]["RewardItem"][1]["Attr"] = "0 1 3" -- 爆炎诀(+3)（赠）*1
	tTrojanCompetition_Reward[3312776][5]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312776][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312776][5]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312776][6] = {}
	-- ===3312776,'（+3）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312776][6]
	-- ===删除:3312776,1
	tTrojanCompetition_Reward[3312776][6]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312776][6]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312776][6]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312776][6]["DeleteItem"][1]["Id"] = 3312776 -- 【库】（+3）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312776][6]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312776][6]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312776][6]["RewardItem"][1]["Id"] = 4032203 -- 【库】清心诀(+3)[属性:8], 【表格】清心诀（+3）（赠）
	tTrojanCompetition_Reward[3312776][6]["RewardItem"][1]["Attr"] = "0 1 3" -- 清心诀(+3)（赠）*1
	tTrojanCompetition_Reward[3312776][6]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312776][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312776][6]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312776][7] = {}
	-- ===3312776,'（+3）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312776][7]
	-- ===删除:3312776,1
	tTrojanCompetition_Reward[3312776][7]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312776][7]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312776][7]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312776][7]["DeleteItem"][1]["Id"] = 3312776 -- 【库】（+3）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312776][7]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312776][7]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312776][7]["RewardItem"][1]["Id"] = 4032303 -- 【库】天衣无缝(+3)[属性:8], 【表格】天衣无缝（+3）（赠）
	tTrojanCompetition_Reward[3312776][7]["RewardItem"][1]["Attr"] = "0 1 3" -- 天衣无缝(+3)（赠）*1
	tTrojanCompetition_Reward[3312776][7]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312776][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312776][7]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312776][8] = {}
	-- ===3312776,'（+3）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312776][8]
	-- ===删除:3312776,1
	tTrojanCompetition_Reward[3312776][8]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312776][8]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312776][8]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312776][8]["DeleteItem"][1]["Id"] = 3312776 -- 【库】（+3）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312776][8]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312776][8]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312776][8]["RewardItem"][1]["Id"] = 4032403 -- 【库】祭灵诀(+3)[属性:8], 【表格】祭灵诀（+3）（赠）
	tTrojanCompetition_Reward[3312776][8]["RewardItem"][1]["Attr"] = "0 1 3" -- 祭灵诀(+3)（赠）*1
	tTrojanCompetition_Reward[3312776][8]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312776][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312776][8]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312776][9] = {}
	-- ===3312776,'（+3）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312776][9]
	-- ===删除:3312776,1
	tTrojanCompetition_Reward[3312776][9]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312776][9]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312776][9]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312776][9]["DeleteItem"][1]["Id"] = 3312776 -- 【库】（+3）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312776][9]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312776][9]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312776][9]["RewardItem"][1]["Id"] = 4032503 -- 【库】横扫千军(+3)[属性:8], 【表格】横扫千军（+3）（赠）
	tTrojanCompetition_Reward[3312776][9]["RewardItem"][1]["Attr"] = "0 1 3" -- 横扫千军(+3)（赠）*1
	tTrojanCompetition_Reward[3312776][9]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312776][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312776][9]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312776][10] = {}
	-- ===3312776,'（+3）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312776][10]
	-- ===删除:3312776,1
	tTrojanCompetition_Reward[3312776][10]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312776][10]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312776][10]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312776][10]["DeleteItem"][1]["Id"] = 3312776 -- 【库】（+3）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312776][10]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312776][10]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312776][10]["RewardItem"][1]["Id"] = 4032603 -- 【库】涅槃重生(+3)[属性:8], 【表格】涅槃重生（+3）（赠）
	tTrojanCompetition_Reward[3312776][10]["RewardItem"][1]["Attr"] = "0 1 3" -- 涅槃重生(+3)（赠）*1
	tTrojanCompetition_Reward[3312776][10]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312776][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312776][10]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312776][11] = {}
	-- ===3312776,'（+3）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312776][11]
	-- ===删除:3312776,1
	tTrojanCompetition_Reward[3312776][11]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312776][11]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312776][11]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312776][11]["DeleteItem"][1]["Id"] = 3312776 -- 【库】（+3）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312776][11]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312776][11]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312776][11]["RewardItem"][1]["Id"] = 4032703 -- 【库】锋芒毕露(+3)[属性:8], 【表格】锋芒毕露（+3）（赠）
	tTrojanCompetition_Reward[3312776][11]["RewardItem"][1]["Attr"] = "0 1 3" -- 锋芒毕露(+3)（赠）*1
	tTrojanCompetition_Reward[3312776][11]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312776][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312776][11]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312776][12] = {}
	-- ===3312776,'（+3）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312776][12]
	-- ===删除:3312776,1
	tTrojanCompetition_Reward[3312776][12]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312776][12]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312776][12]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312776][12]["DeleteItem"][1]["Id"] = 3312776 -- 【库】（+3）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312776][12]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312776][12]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312776][12]["RewardItem"][1]["Id"] = 4032803 -- 【库】魂兮归来(+3)[属性:8], 【表格】魂兮归来（+3）（赠）
	tTrojanCompetition_Reward[3312776][12]["RewardItem"][1]["Attr"] = "0 1 3" -- 魂兮归来(+3)（赠）*1
	tTrojanCompetition_Reward[3312776][12]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312776][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312776][12]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312776][13] = {}
	-- ===3312776,'（+3）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312776][13]
	-- ===删除:3312776,1
	tTrojanCompetition_Reward[3312776][13]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312776][13]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312776][13]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312776][13]["DeleteItem"][1]["Id"] = 3312776 -- 【库】（+3）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312776][13]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312776][13]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312776][13]["RewardItem"][1]["Id"] = 4032903 -- 【库】例无虚发(+3)[属性:8], 【表格】例无虚发（+3）（赠）
	tTrojanCompetition_Reward[3312776][13]["RewardItem"][1]["Attr"] = "0 1 3" -- 例无虚发(+3)（赠）*1
	tTrojanCompetition_Reward[3312776][13]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312776][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312776][13]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312776][14] = {}
	-- ===3312776,'（+3）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312776][14]
	-- ===删除:3312776,1
	tTrojanCompetition_Reward[3312776][14]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312776][14]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312776][14]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312776][14]["DeleteItem"][1]["Id"] = 3312776 -- 【库】（+3）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312776][14]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312776][14]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312776][14]["RewardItem"][1]["Id"] = 4033003 -- 【库】审判(+3)[属性:8], 【表格】审判（+3）（赠）
	tTrojanCompetition_Reward[3312776][14]["RewardItem"][1]["Attr"] = "0 1 3" -- 审判(+3)（赠）*1
	tTrojanCompetition_Reward[3312776][14]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312776][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312776][14]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312776][15] = {}
	-- ===3312776,'（+3）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312776][15]
	-- ===删除:3312776,1
	tTrojanCompetition_Reward[3312776][15]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312776][15]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312776][15]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312776][15]["DeleteItem"][1]["Id"] = 3312776 -- 【库】（+3）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312776][15]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312776][15]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312776][15]["RewardItem"][1]["Id"] = 4033303 -- 【库】致命准星(+3)[属性:8], 【表格】致命准星（+3）（赠）
	tTrojanCompetition_Reward[3312776][15]["RewardItem"][1]["Attr"] = "0 1 3" -- 致命准星(+3)（赠）*1
	tTrojanCompetition_Reward[3312776][15]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312776][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312776][15]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312776][16] = {}
	-- ===3312776,'（+3）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312776][16]
	-- ===删除:3312776,1
	tTrojanCompetition_Reward[3312776][16]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312776][16]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312776][16]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312776][16]["DeleteItem"][1]["Id"] = 3312776 -- 【库】（+3）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312776][16]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312776][16]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312776][16]["RewardItem"][1]["Id"] = 4033403 -- 【库】会心一击(+3)[属性:8], 【表格】会心一击（+3）（赠）
	tTrojanCompetition_Reward[3312776][16]["RewardItem"][1]["Attr"] = "0 1 3" -- 会心一击(+3)（赠）*1
	tTrojanCompetition_Reward[3312776][16]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312776][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312776][16]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312776][17] = {}
	-- ===3312776,'（+3）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312776][17]
	-- ===删除:3312776,1
	tTrojanCompetition_Reward[3312776][17]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312776][17]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312776][17]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312776][17]["DeleteItem"][1]["Id"] = 3312776 -- 【库】（+3）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312776][17]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312776][17]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312776][17]["RewardItem"][1]["Id"] = 4033903 -- 【库】斗转星移(+3)[属性:8], 【表格】斗转星移（+3）（赠）
	tTrojanCompetition_Reward[3312776][17]["RewardItem"][1]["Attr"] = "0 1 3" -- 斗转星移(+3)（赠）*1
	tTrojanCompetition_Reward[3312776][17]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312776][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312776][17]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312776][18] = {}
	-- ===3312776,'（+3）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312776][18]
	-- ===删除:3312776,1
	tTrojanCompetition_Reward[3312776][18]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312776][18]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312776][18]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312776][18]["DeleteItem"][1]["Id"] = 3312776 -- 【库】（+3）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312776][18]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312776][18]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312776][18]["RewardItem"][1]["Id"] = 4034003 -- 【库】乾坤护法(+3)[属性:8], 【表格】乾坤护法（+3）（赠）
	tTrojanCompetition_Reward[3312776][18]["RewardItem"][1]["Attr"] = "0 1 3" -- 乾坤护法(+3)（赠）*1
	tTrojanCompetition_Reward[3312776][18]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312776][18]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312776][18]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312776][19] = {}
	-- ===3312776,'（+3）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312776][19]
	-- ===删除:3312776,1
	tTrojanCompetition_Reward[3312776][19]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312776][19]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312776][19]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312776][19]["DeleteItem"][1]["Id"] = 3312776 -- 【库】（+3）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312776][19]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312776][19]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312776][19]["RewardItem"][1]["Id"] = 4034103 -- 【库】威慑(+3)[属性:8], 【表格】威慑（+3）（赠）
	tTrojanCompetition_Reward[3312776][19]["RewardItem"][1]["Attr"] = "0 1 3" -- 威慑(+3)（赠）*1
	tTrojanCompetition_Reward[3312776][19]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312776][19]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312776][19]["RewardEffect"]["Effect"] = "angelwing"
	
	-- ===3312776,'（+3）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312776][20]
	-- ===删除: 3312776,1
	-- ===
	tTrojanCompetition_Reward[3312776][20] = {}
	tTrojanCompetition_Reward[3312776][20]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312776][20]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312776][20]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312776][20]["DeleteItem"][1]["Id"] = 3312776 -- 【库】（+3）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312776][20]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312776][20]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312776][20]["RewardItem"][1]["Id"] = 4034203 -- 乾坤妙法(+3)[4034203][属性:8][叠加:0][金币:0], 【表格】乾坤妙法（+3）
	tTrojanCompetition_Reward[3312776][20]["RewardItem"][1]["Attr"] = "0 1 3" -- 乾坤妙法(+3)（赠）*1
	tTrojanCompetition_Reward[3312776][20]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312776][20]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312776][20]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312776][21] = {}
	-- ===3312776,'（+3）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312776][21]
	-- ===删除: 3312776,1
	-- ===
	tTrojanCompetition_Reward[3312776][21]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312776][21]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312776][21]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312776][21]["DeleteItem"][1]["Id"] = 3312776 -- 【库】（+3）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312776][21]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312776][21]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312776][21]["RewardItem"][1]["Id"] = 4034303 -- 罡气护体(+3)[4034303][属性:8][叠加:0][金币:0], 【表格】罡气护体（+3）
	tTrojanCompetition_Reward[3312776][21]["RewardItem"][1]["Attr"] = "0 1 3" -- 罡气护体(+3)（赠）*1
	tTrojanCompetition_Reward[3312776][21]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312776][21]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312776][21]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312776][22] = {}
	-- ===3312776,'（+3）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312776][22]
	-- ===删除: 3312776,1
	-- ===
	tTrojanCompetition_Reward[3312776][22]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312776][22]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312776][22]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312776][22]["DeleteItem"][1]["Id"] = 3312776 -- 【库】（+3）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312776][22]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312776][22]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312776][22]["RewardItem"][1]["Id"] = 4034403 -- 沧澜破(+3)[4034403][属性:8][叠加:0][金币:0], 【表格】沧澜破（+3）
	tTrojanCompetition_Reward[3312776][22]["RewardItem"][1]["Attr"] = "0 1 3" -- 沧澜破(+3)（赠）*1
	tTrojanCompetition_Reward[3312776][22]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312776][22]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312776][22]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312776][23] = {}
	-- ===3312776,'（+3）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312776][23]
	-- ===删除: 3312776,1
	-- ===
	tTrojanCompetition_Reward[3312776][23]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312776][23]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312776][23]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312776][23]["DeleteItem"][1]["Id"] = 3312776 -- 【库】（+3）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312776][23]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312776][23]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312776][23]["RewardItem"][1]["Id"] = 4034503 -- 妙手回春(+3)[4034503][属性:8][叠加:0][金币:0], 【表格】妙手回春（+3）
	tTrojanCompetition_Reward[3312776][23]["RewardItem"][1]["Attr"] = "0 1 3" -- 妙手回春(+3)（赠）*1
	tTrojanCompetition_Reward[3312776][23]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312776][23]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312776][23]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312776][24] = {}
	-- ===3312776,'（+3）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312776][24]
	-- ===删除: 3312776,1
	-- ===
	tTrojanCompetition_Reward[3312776][24]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312776][24]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312776][24]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312776][24]["DeleteItem"][1]["Id"] = 3312776 -- 【库】（+3）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312776][24]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312776][24]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312776][24]["RewardItem"][1]["Id"] = 4034603 -- 碎魔屏障(+3)[4034603][属性:8][叠加:0][金币:0], 【表格】最终法伤免疫（+3）
	tTrojanCompetition_Reward[3312776][24]["RewardItem"][1]["Attr"] = "0 1 3" -- 碎魔屏障(+3)（赠）*1
	tTrojanCompetition_Reward[3312776][24]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312776][24]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312776][24]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312776][25] = {}
	-- ===3312776,'（+3）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312776][25]
	-- ===删除: 3312776,1
	-- ===
	tTrojanCompetition_Reward[3312776][25]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312776][25]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312776][25]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312776][25]["DeleteItem"][1]["Id"] = 3312776 -- 【库】（+3）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312776][25]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312776][25]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312776][25]["RewardItem"][1]["Id"] = 4034703 -- 天地化盾(+3)[4034703][属性:8][叠加:0][金币:0], 【表格】最终物伤免疫（+3）
	tTrojanCompetition_Reward[3312776][25]["RewardItem"][1]["Attr"] = "0 1 3" -- 天地化盾(+3)（赠）*1
	tTrojanCompetition_Reward[3312776][25]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312776][25]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312776][25]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312776][26] = {}
	-- ===3312776,'（+3）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312776][26]
	-- ===删除: 3312776,1
	-- ===
	tTrojanCompetition_Reward[3312776][26]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312776][26]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312776][26]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312776][26]["DeleteItem"][1]["Id"] = 3312776 -- 【库】（+3）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312776][26]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312776][26]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312776][26]["RewardItem"][1]["Id"] = 4034803 -- 碎玄元(+3)[4034803][属性:8][叠加:0][金币:0], 【表格】碎玄元（+3）
	tTrojanCompetition_Reward[3312776][26]["RewardItem"][1]["Attr"] = "0 1 3" -- 碎玄元(+3)（赠）*1
	tTrojanCompetition_Reward[3312776][26]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312776][26]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312776][26]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312776][27] = {}
	-- ===3312776,'（+3）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312776][27]
	-- ===删除: 3312776,1
	-- ===
	tTrojanCompetition_Reward[3312776][27]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312776][27]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312776][27]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312776][27]["DeleteItem"][1]["Id"] = 3312776 -- 【库】（+3）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312776][27]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312776][27]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312776][27]["RewardItem"][1]["Id"] = 4034903 -- 不死之身(+3)[4034903][属性:8][叠加:0][金币:0], 【表格】不死之身（+3）
	tTrojanCompetition_Reward[3312776][27]["RewardItem"][1]["Attr"] = "0 1 3" -- 不死之身(+3)（赠）*1
	tTrojanCompetition_Reward[3312776][27]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312776][27]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312776][27]["RewardEffect"]["Effect"] = "angelwing"

-- 新增+3神纹包	加上天行有常和紫气东来
		tTrojanCompetition_Reward[3331156] = {}
	-- ===3331156,'（+3）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3331156][1]
	-- ===删除:3331156,1
	tTrojanCompetition_Reward[3331156][1] = {}
	tTrojanCompetition_Reward[3331156][1]["LogId"] = 12001432
	tTrojanCompetition_Reward[3331156][1]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3331156][1]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3331156][1]["DeleteItem"][1]["Id"] = 3331156 -- 【库】（+3）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3331156][1]["RewardItem"] = {}
	tTrojanCompetition_Reward[3331156][1]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3331156][1]["RewardItem"][1]["Id"] = 4031403 -- 【库】策马扬鞭(+3)[属性:8], 【表格】策马扬鞭（+3）（赠）
	tTrojanCompetition_Reward[3331156][1]["RewardItem"][1]["Attr"] = "0 1 3" -- 策马扬鞭(+3)（赠）*1
	tTrojanCompetition_Reward[3331156][1]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3331156][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3331156][1]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3331156][2] = {}
	-- ===3331156,'（+3）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3331156][2]
	-- ===删除:3331156,1
	tTrojanCompetition_Reward[3331156][2]["LogId"] = 12001432
	tTrojanCompetition_Reward[3331156][2]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3331156][2]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3331156][2]["DeleteItem"][1]["Id"] = 3331156 -- 【库】（+3）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3331156][2]["RewardItem"] = {}
	tTrojanCompetition_Reward[3331156][2]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3331156][2]["RewardItem"][1]["Id"] = 4031503 -- 【库】攻城掠地(+3)[属性:8], 【表格】攻城掠地（+3）（赠）
	tTrojanCompetition_Reward[3331156][2]["RewardItem"][1]["Attr"] = "0 1 3" -- 攻城掠地(+3)（赠）*1
	tTrojanCompetition_Reward[3331156][2]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3331156][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3331156][2]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3331156][3] = {}
	-- ===3331156,'（+3）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3331156][3]
	-- ===删除:3331156,1
	tTrojanCompetition_Reward[3331156][3]["LogId"] = 12001432
	tTrojanCompetition_Reward[3331156][3]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3331156][3]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3331156][3]["DeleteItem"][1]["Id"] = 3331156 -- 【库】（+3）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3331156][3]["RewardItem"] = {}
	tTrojanCompetition_Reward[3331156][3]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3331156][3]["RewardItem"][1]["Id"] = 4031603 -- 【库】玄武护体(+3)[属性:8], 【表格】玄武护体（+3）（赠）
	tTrojanCompetition_Reward[3331156][3]["RewardItem"][1]["Attr"] = "0 1 3" -- 玄武护体(+3)（赠）*1
	tTrojanCompetition_Reward[3331156][3]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3331156][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3331156][3]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3331156][4] = {}
	-- ===3331156,'（+3）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3331156][4]
	-- ===删除:3331156,1
	tTrojanCompetition_Reward[3331156][4]["LogId"] = 12001432
	tTrojanCompetition_Reward[3331156][4]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3331156][4]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3331156][4]["DeleteItem"][1]["Id"] = 3331156 -- 【库】（+3）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3331156][4]["RewardItem"] = {}
	tTrojanCompetition_Reward[3331156][4]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3331156][4]["RewardItem"][1]["Id"] = 4032003 -- 【库】神罗天尊(+3)[属性:8], 【表格】神罗天尊（+3）（赠）
	tTrojanCompetition_Reward[3331156][4]["RewardItem"][1]["Attr"] = "0 1 3" -- 神罗天尊(+3)（赠）*1
	tTrojanCompetition_Reward[3331156][4]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3331156][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3331156][4]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3331156][5] = {}
	-- ===3331156,'（+3）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3331156][5]
	-- ===删除:3331156,1
	tTrojanCompetition_Reward[3331156][5]["LogId"] = 12001432
	tTrojanCompetition_Reward[3331156][5]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3331156][5]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3331156][5]["DeleteItem"][1]["Id"] = 3331156 -- 【库】（+3）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3331156][5]["RewardItem"] = {}
	tTrojanCompetition_Reward[3331156][5]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3331156][5]["RewardItem"][1]["Id"] = 4032103 -- 【库】爆炎诀(+3)[属性:8], 【表格】爆炎诀（+3）（赠）
	tTrojanCompetition_Reward[3331156][5]["RewardItem"][1]["Attr"] = "0 1 3" -- 爆炎诀(+3)（赠）*1
	tTrojanCompetition_Reward[3331156][5]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3331156][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3331156][5]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3331156][6] = {}
	-- ===3331156,'（+3）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3331156][6]
	-- ===删除:3331156,1
	tTrojanCompetition_Reward[3331156][6]["LogId"] = 12001432
	tTrojanCompetition_Reward[3331156][6]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3331156][6]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3331156][6]["DeleteItem"][1]["Id"] = 3331156 -- 【库】（+3）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3331156][6]["RewardItem"] = {}
	tTrojanCompetition_Reward[3331156][6]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3331156][6]["RewardItem"][1]["Id"] = 4032203 -- 【库】清心诀(+3)[属性:8], 【表格】清心诀（+3）（赠）
	tTrojanCompetition_Reward[3331156][6]["RewardItem"][1]["Attr"] = "0 1 3" -- 清心诀(+3)（赠）*1
	tTrojanCompetition_Reward[3331156][6]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3331156][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3331156][6]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3331156][7] = {}
	-- ===3331156,'（+3）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3331156][7]
	-- ===删除:3331156,1
	tTrojanCompetition_Reward[3331156][7]["LogId"] = 12001432
	tTrojanCompetition_Reward[3331156][7]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3331156][7]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3331156][7]["DeleteItem"][1]["Id"] = 3331156 -- 【库】（+3）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3331156][7]["RewardItem"] = {}
	tTrojanCompetition_Reward[3331156][7]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3331156][7]["RewardItem"][1]["Id"] = 4032303 -- 【库】天衣无缝(+3)[属性:8], 【表格】天衣无缝（+3）（赠）
	tTrojanCompetition_Reward[3331156][7]["RewardItem"][1]["Attr"] = "0 1 3" -- 天衣无缝(+3)（赠）*1
	tTrojanCompetition_Reward[3331156][7]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3331156][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3331156][7]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3331156][8] = {}
	-- ===3331156,'（+3）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3331156][8]
	-- ===删除:3331156,1
	tTrojanCompetition_Reward[3331156][8]["LogId"] = 12001432
	tTrojanCompetition_Reward[3331156][8]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3331156][8]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3331156][8]["DeleteItem"][1]["Id"] = 3331156 -- 【库】（+3）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3331156][8]["RewardItem"] = {}
	tTrojanCompetition_Reward[3331156][8]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3331156][8]["RewardItem"][1]["Id"] = 4032403 -- 【库】祭灵诀(+3)[属性:8], 【表格】祭灵诀（+3）（赠）
	tTrojanCompetition_Reward[3331156][8]["RewardItem"][1]["Attr"] = "0 1 3" -- 祭灵诀(+3)（赠）*1
	tTrojanCompetition_Reward[3331156][8]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3331156][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3331156][8]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3331156][9] = {}
	-- ===3331156,'（+3）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3331156][9]
	-- ===删除:3331156,1
	tTrojanCompetition_Reward[3331156][9]["LogId"] = 12001432
	tTrojanCompetition_Reward[3331156][9]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3331156][9]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3331156][9]["DeleteItem"][1]["Id"] = 3331156 -- 【库】（+3）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3331156][9]["RewardItem"] = {}
	tTrojanCompetition_Reward[3331156][9]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3331156][9]["RewardItem"][1]["Id"] = 4032503 -- 【库】横扫千军(+3)[属性:8], 【表格】横扫千军（+3）（赠）
	tTrojanCompetition_Reward[3331156][9]["RewardItem"][1]["Attr"] = "0 1 3" -- 横扫千军(+3)（赠）*1
	tTrojanCompetition_Reward[3331156][9]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3331156][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3331156][9]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3331156][10] = {}
	-- ===3331156,'（+3）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3331156][10]
	-- ===删除:3331156,1
	tTrojanCompetition_Reward[3331156][10]["LogId"] = 12001432
	tTrojanCompetition_Reward[3331156][10]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3331156][10]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3331156][10]["DeleteItem"][1]["Id"] = 3331156 -- 【库】（+3）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3331156][10]["RewardItem"] = {}
	tTrojanCompetition_Reward[3331156][10]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3331156][10]["RewardItem"][1]["Id"] = 4032603 -- 【库】涅槃重生(+3)[属性:8], 【表格】涅槃重生（+3）（赠）
	tTrojanCompetition_Reward[3331156][10]["RewardItem"][1]["Attr"] = "0 1 3" -- 涅槃重生(+3)（赠）*1
	tTrojanCompetition_Reward[3331156][10]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3331156][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3331156][10]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3331156][11] = {}
	-- ===3331156,'（+3）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3331156][11]
	-- ===删除:3331156,1
	tTrojanCompetition_Reward[3331156][11]["LogId"] = 12001432
	tTrojanCompetition_Reward[3331156][11]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3331156][11]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3331156][11]["DeleteItem"][1]["Id"] = 3331156 -- 【库】（+3）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3331156][11]["RewardItem"] = {}
	tTrojanCompetition_Reward[3331156][11]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3331156][11]["RewardItem"][1]["Id"] = 4032703 -- 【库】锋芒毕露(+3)[属性:8], 【表格】锋芒毕露（+3）（赠）
	tTrojanCompetition_Reward[3331156][11]["RewardItem"][1]["Attr"] = "0 1 3" -- 锋芒毕露(+3)（赠）*1
	tTrojanCompetition_Reward[3331156][11]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3331156][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3331156][11]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3331156][12] = {}
	-- ===3331156,'（+3）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3331156][12]
	-- ===删除:3331156,1
	tTrojanCompetition_Reward[3331156][12]["LogId"] = 12001432
	tTrojanCompetition_Reward[3331156][12]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3331156][12]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3331156][12]["DeleteItem"][1]["Id"] = 3331156 -- 【库】（+3）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3331156][12]["RewardItem"] = {}
	tTrojanCompetition_Reward[3331156][12]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3331156][12]["RewardItem"][1]["Id"] = 4032803 -- 【库】魂兮归来(+3)[属性:8], 【表格】魂兮归来（+3）（赠）
	tTrojanCompetition_Reward[3331156][12]["RewardItem"][1]["Attr"] = "0 1 3" -- 魂兮归来(+3)（赠）*1
	tTrojanCompetition_Reward[3331156][12]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3331156][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3331156][12]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3331156][13] = {}
	-- ===3331156,'（+3）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3331156][13]
	-- ===删除:3331156,1
	tTrojanCompetition_Reward[3331156][13]["LogId"] = 12001432
	tTrojanCompetition_Reward[3331156][13]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3331156][13]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3331156][13]["DeleteItem"][1]["Id"] = 3331156 -- 【库】（+3）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3331156][13]["RewardItem"] = {}
	tTrojanCompetition_Reward[3331156][13]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3331156][13]["RewardItem"][1]["Id"] = 4032903 -- 【库】例无虚发(+3)[属性:8], 【表格】例无虚发（+3）（赠）
	tTrojanCompetition_Reward[3331156][13]["RewardItem"][1]["Attr"] = "0 1 3" -- 例无虚发(+3)（赠）*1
	tTrojanCompetition_Reward[3331156][13]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3331156][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3331156][13]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3331156][14] = {}
	-- ===3331156,'（+3）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3331156][14]
	-- ===删除:3331156,1
	tTrojanCompetition_Reward[3331156][14]["LogId"] = 12001432
	tTrojanCompetition_Reward[3331156][14]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3331156][14]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3331156][14]["DeleteItem"][1]["Id"] = 3331156 -- 【库】（+3）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3331156][14]["RewardItem"] = {}
	tTrojanCompetition_Reward[3331156][14]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3331156][14]["RewardItem"][1]["Id"] = 4033003 -- 【库】审判(+3)[属性:8], 【表格】审判（+3）（赠）
	tTrojanCompetition_Reward[3331156][14]["RewardItem"][1]["Attr"] = "0 1 3" -- 审判(+3)（赠）*1
	tTrojanCompetition_Reward[3331156][14]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3331156][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3331156][14]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3331156][15] = {}
	-- ===3331156,'（+3）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3331156][15]
	-- ===删除:3331156,1
	tTrojanCompetition_Reward[3331156][15]["LogId"] = 12001432
	tTrojanCompetition_Reward[3331156][15]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3331156][15]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3331156][15]["DeleteItem"][1]["Id"] = 3331156 -- 【库】（+3）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3331156][15]["RewardItem"] = {}
	tTrojanCompetition_Reward[3331156][15]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3331156][15]["RewardItem"][1]["Id"] = 4033303 -- 【库】致命准星(+3)[属性:8], 【表格】致命准星（+3）（赠）
	tTrojanCompetition_Reward[3331156][15]["RewardItem"][1]["Attr"] = "0 1 3" -- 致命准星(+3)（赠）*1
	tTrojanCompetition_Reward[3331156][15]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3331156][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3331156][15]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3331156][16] = {}
	-- ===3331156,'（+3）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3331156][16]
	-- ===删除:3331156,1
	tTrojanCompetition_Reward[3331156][16]["LogId"] = 12001432
	tTrojanCompetition_Reward[3331156][16]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3331156][16]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3331156][16]["DeleteItem"][1]["Id"] = 3331156 -- 【库】（+3）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3331156][16]["RewardItem"] = {}
	tTrojanCompetition_Reward[3331156][16]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3331156][16]["RewardItem"][1]["Id"] = 4033403 -- 【库】会心一击(+3)[属性:8], 【表格】会心一击（+3）（赠）
	tTrojanCompetition_Reward[3331156][16]["RewardItem"][1]["Attr"] = "0 1 3" -- 会心一击(+3)（赠）*1
	tTrojanCompetition_Reward[3331156][16]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3331156][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3331156][16]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3331156][17] = {}
	-- ===3331156,'（+3）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3331156][17]
	-- ===删除:3331156,1
	tTrojanCompetition_Reward[3331156][17]["LogId"] = 12001432
	tTrojanCompetition_Reward[3331156][17]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3331156][17]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3331156][17]["DeleteItem"][1]["Id"] = 3331156 -- 【库】（+3）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3331156][17]["RewardItem"] = {}
	tTrojanCompetition_Reward[3331156][17]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3331156][17]["RewardItem"][1]["Id"] = 4033903 -- 【库】斗转星移(+3)[属性:8], 【表格】斗转星移（+3）（赠）
	tTrojanCompetition_Reward[3331156][17]["RewardItem"][1]["Attr"] = "0 1 3" -- 斗转星移(+3)（赠）*1
	tTrojanCompetition_Reward[3331156][17]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3331156][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3331156][17]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3331156][18] = {}
	-- ===3331156,'（+3）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3331156][18]
	-- ===删除:3331156,1
	tTrojanCompetition_Reward[3331156][18]["LogId"] = 12001432
	tTrojanCompetition_Reward[3331156][18]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3331156][18]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3331156][18]["DeleteItem"][1]["Id"] = 3331156 -- 【库】（+3）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3331156][18]["RewardItem"] = {}
	tTrojanCompetition_Reward[3331156][18]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3331156][18]["RewardItem"][1]["Id"] = 4034003 -- 【库】乾坤护法(+3)[属性:8], 【表格】乾坤护法（+3）（赠）
	tTrojanCompetition_Reward[3331156][18]["RewardItem"][1]["Attr"] = "0 1 3" -- 乾坤护法(+3)（赠）*1
	tTrojanCompetition_Reward[3331156][18]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3331156][18]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3331156][18]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3331156][19] = {}
	-- ===3331156,'（+3）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3331156][19]
	-- ===删除:3331156,1
	tTrojanCompetition_Reward[3331156][19]["LogId"] = 12001432
	tTrojanCompetition_Reward[3331156][19]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3331156][19]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3331156][19]["DeleteItem"][1]["Id"] = 3331156 -- 【库】（+3）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3331156][19]["RewardItem"] = {}
	tTrojanCompetition_Reward[3331156][19]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3331156][19]["RewardItem"][1]["Id"] = 4034103 -- 【库】威慑(+3)[属性:8], 【表格】威慑（+3）（赠）
	tTrojanCompetition_Reward[3331156][19]["RewardItem"][1]["Attr"] = "0 1 3" -- 威慑(+3)（赠）*1
	tTrojanCompetition_Reward[3331156][19]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3331156][19]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3331156][19]["RewardEffect"]["Effect"] = "angelwing"
	
	-- ===3331156,'（+3）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3331156][20]
	-- ===删除: 3331156,1
	-- ===
	tTrojanCompetition_Reward[3331156][20] = {}
	tTrojanCompetition_Reward[3331156][20]["LogId"] = 12001432
	tTrojanCompetition_Reward[3331156][20]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3331156][20]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3331156][20]["DeleteItem"][1]["Id"] = 3331156 -- 【库】（+3）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3331156][20]["RewardItem"] = {}
	tTrojanCompetition_Reward[3331156][20]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3331156][20]["RewardItem"][1]["Id"] = 4034203 -- 乾坤妙法(+3)[4034203][属性:8][叠加:0][金币:0], 【表格】乾坤妙法（+3）
	tTrojanCompetition_Reward[3331156][20]["RewardItem"][1]["Attr"] = "0 1 3" -- 乾坤妙法(+3)（赠）*1
	tTrojanCompetition_Reward[3331156][20]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3331156][20]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3331156][20]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3331156][21] = {}
	-- ===3331156,'（+3）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3331156][21]
	-- ===删除: 3331156,1
	-- ===
	tTrojanCompetition_Reward[3331156][21]["LogId"] = 12001432
	tTrojanCompetition_Reward[3331156][21]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3331156][21]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3331156][21]["DeleteItem"][1]["Id"] = 3331156 -- 【库】（+3）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3331156][21]["RewardItem"] = {}
	tTrojanCompetition_Reward[3331156][21]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3331156][21]["RewardItem"][1]["Id"] = 4034303 -- 罡气护体(+3)[4034303][属性:8][叠加:0][金币:0], 【表格】罡气护体（+3）
	tTrojanCompetition_Reward[3331156][21]["RewardItem"][1]["Attr"] = "0 1 3" -- 罡气护体(+3)（赠）*1
	tTrojanCompetition_Reward[3331156][21]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3331156][21]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3331156][21]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3331156][22] = {}
	-- ===3331156,'（+3）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3331156][22]
	-- ===删除: 3331156,1
	-- ===
	tTrojanCompetition_Reward[3331156][22]["LogId"] = 12001432
	tTrojanCompetition_Reward[3331156][22]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3331156][22]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3331156][22]["DeleteItem"][1]["Id"] = 3331156 -- 【库】（+3）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3331156][22]["RewardItem"] = {}
	tTrojanCompetition_Reward[3331156][22]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3331156][22]["RewardItem"][1]["Id"] = 4034403 -- 沧澜破(+3)[4034403][属性:8][叠加:0][金币:0], 【表格】沧澜破（+3）
	tTrojanCompetition_Reward[3331156][22]["RewardItem"][1]["Attr"] = "0 1 3" -- 沧澜破(+3)（赠）*1
	tTrojanCompetition_Reward[3331156][22]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3331156][22]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3331156][22]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3331156][23] = {}
	-- ===3331156,'（+3）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3331156][23]
	-- ===删除: 3331156,1
	-- ===
	tTrojanCompetition_Reward[3331156][23]["LogId"] = 12001432
	tTrojanCompetition_Reward[3331156][23]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3331156][23]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3331156][23]["DeleteItem"][1]["Id"] = 3331156 -- 【库】（+3）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3331156][23]["RewardItem"] = {}
	tTrojanCompetition_Reward[3331156][23]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3331156][23]["RewardItem"][1]["Id"] = 4034503 -- 妙手回春(+3)[4034503][属性:8][叠加:0][金币:0], 【表格】妙手回春（+3）
	tTrojanCompetition_Reward[3331156][23]["RewardItem"][1]["Attr"] = "0 1 3" -- 妙手回春(+3)（赠）*1
	tTrojanCompetition_Reward[3331156][23]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3331156][23]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3331156][23]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3331156][24] = {}
	-- ===3331156,'（+3）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3331156][24]
	-- ===删除: 3331156,1
	-- ===
	tTrojanCompetition_Reward[3331156][24]["LogId"] = 12001432
	tTrojanCompetition_Reward[3331156][24]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3331156][24]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3331156][24]["DeleteItem"][1]["Id"] = 3331156 -- 【库】（+3）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3331156][24]["RewardItem"] = {}
	tTrojanCompetition_Reward[3331156][24]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3331156][24]["RewardItem"][1]["Id"] = 4034603 -- 碎魔屏障(+3)[4034603][属性:8][叠加:0][金币:0], 【表格】最终法伤免疫（+3）
	tTrojanCompetition_Reward[3331156][24]["RewardItem"][1]["Attr"] = "0 1 3" -- 碎魔屏障(+3)（赠）*1
	tTrojanCompetition_Reward[3331156][24]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3331156][24]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3331156][24]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3331156][25] = {}
	-- ===3331156,'（+3）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3331156][25]
	-- ===删除: 3331156,1
	-- ===
	tTrojanCompetition_Reward[3331156][25]["LogId"] = 12001432
	tTrojanCompetition_Reward[3331156][25]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3331156][25]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3331156][25]["DeleteItem"][1]["Id"] = 3331156 -- 【库】（+3）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3331156][25]["RewardItem"] = {}
	tTrojanCompetition_Reward[3331156][25]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3331156][25]["RewardItem"][1]["Id"] = 4034703 -- 天地化盾(+3)[4034703][属性:8][叠加:0][金币:0], 【表格】最终物伤免疫（+3）
	tTrojanCompetition_Reward[3331156][25]["RewardItem"][1]["Attr"] = "0 1 3" -- 天地化盾(+3)（赠）*1
	tTrojanCompetition_Reward[3331156][25]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3331156][25]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3331156][25]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3331156][26] = {}
	-- ===3331156,'（+3）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3331156][26]
	-- ===删除: 3331156,1
	-- ===
	tTrojanCompetition_Reward[3331156][26]["LogId"] = 12001432
	tTrojanCompetition_Reward[3331156][26]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3331156][26]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3331156][26]["DeleteItem"][1]["Id"] = 3331156 -- 【库】（+3）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3331156][26]["RewardItem"] = {}
	tTrojanCompetition_Reward[3331156][26]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3331156][26]["RewardItem"][1]["Id"] = 4034803 -- 碎玄元(+3)[4034803][属性:8][叠加:0][金币:0], 【表格】碎玄元（+3）
	tTrojanCompetition_Reward[3331156][26]["RewardItem"][1]["Attr"] = "0 1 3" -- 碎玄元(+3)（赠）*1
	tTrojanCompetition_Reward[3331156][26]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3331156][26]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3331156][26]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3331156][27] = {}
	-- ===3331156,'（+3）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3331156][27]
	-- ===删除: 3331156,1
	-- ===
	tTrojanCompetition_Reward[3331156][27]["LogId"] = 12001432
	tTrojanCompetition_Reward[3331156][27]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3331156][27]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3331156][27]["DeleteItem"][1]["Id"] = 3331156 -- 【库】（+3）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3331156][27]["RewardItem"] = {}
	tTrojanCompetition_Reward[3331156][27]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3331156][27]["RewardItem"][1]["Id"] = 4035203 -- VioletShield(+3)[4035203][属性:8][叠加:0][金币:0], 【表格】VioletShield(+3)
	tTrojanCompetition_Reward[3331156][27]["RewardItem"][1]["Attr"] = "0 1 3" -- VioletShield(+3)（赠）*1
	tTrojanCompetition_Reward[3331156][27]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3331156][27]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3331156][27]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3331156][28] = {}
	-- ===3331156,'（+3）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3331156][28]
	-- ===删除: 3331156,1
	-- ===
	tTrojanCompetition_Reward[3331156][28]["LogId"] = 12001432
	tTrojanCompetition_Reward[3331156][28]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3331156][28]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3331156][28]["DeleteItem"][1]["Id"] = 3331156 -- 【库】（+3）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3331156][28]["RewardItem"] = {}
	tTrojanCompetition_Reward[3331156][28]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3331156][28]["RewardItem"][1]["Id"] = 4035103 -- NatureShield(+3)[4035103][属性:8][叠加:0][金币:0], 【表格】NatureShield(+3)
	tTrojanCompetition_Reward[3331156][28]["RewardItem"][1]["Attr"] = "0 1 3" -- NatureShield(+3)（赠）*1
	tTrojanCompetition_Reward[3331156][28]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3331156][28]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3331156][28]["RewardEffect"]["Effect"] = "angelwing"
	

	
	tTrojanCompetition_Reward[3312777] = {}
	-- ===3312777,'（+1）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312777][1]
	-- ===删除:3312777,1
	tTrojanCompetition_Reward[3312777][1] = {}
	tTrojanCompetition_Reward[3312777][1]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312777][1]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312777][1]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312777][1]["DeleteItem"][1]["Id"] = 3312777 -- 【库】（+1）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312777][1]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312777][1]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312777][1]["RewardItem"][1]["Id"] = 4031401 -- 【库】策马扬鞭(+1)[属性:8], 【表格】策马扬鞭（+1）（赠）
	tTrojanCompetition_Reward[3312777][1]["RewardItem"][1]["Attr"] = "0 1 3" -- 策马扬鞭(+1)（赠）*1
	tTrojanCompetition_Reward[3312777][1]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312777][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312777][1]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312777][2] = {}
	-- ===3312777,'（+1）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312777][2]
	-- ===删除:3312777,1
	tTrojanCompetition_Reward[3312777][2]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312777][2]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312777][2]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312777][2]["DeleteItem"][1]["Id"] = 3312777 -- 【库】（+1）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312777][2]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312777][2]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312777][2]["RewardItem"][1]["Id"] = 4031501 -- 【库】攻城掠地(+1)[属性:8], 【表格】攻城掠地（+1）（赠）
	tTrojanCompetition_Reward[3312777][2]["RewardItem"][1]["Attr"] = "0 1 3" -- 攻城掠地(+1)（赠）*1
	tTrojanCompetition_Reward[3312777][2]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312777][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312777][2]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312777][3] = {}
	-- ===3312777,'（+1）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312777][3]
	-- ===删除:3312777,1
	tTrojanCompetition_Reward[3312777][3]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312777][3]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312777][3]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312777][3]["DeleteItem"][1]["Id"] = 3312777 -- 【库】（+1）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312777][3]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312777][3]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312777][3]["RewardItem"][1]["Id"] = 4031601 -- 【库】玄武护体(+1)[属性:8], 【表格】玄武护体（+1）（赠）
	tTrojanCompetition_Reward[3312777][3]["RewardItem"][1]["Attr"] = "0 1 3" -- 玄武护体(+1)（赠）*1
	tTrojanCompetition_Reward[3312777][3]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312777][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312777][3]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312777][4] = {}
	-- ===3312777,'（+1）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312777][4]
	-- ===删除:3312777,1
	tTrojanCompetition_Reward[3312777][4]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312777][4]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312777][4]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312777][4]["DeleteItem"][1]["Id"] = 3312777 -- 【库】（+1）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312777][4]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312777][4]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312777][4]["RewardItem"][1]["Id"] = 4032001 -- 【库】神罗天尊(+1)[属性:8], 【表格】神罗天尊（+1）（赠）
	tTrojanCompetition_Reward[3312777][4]["RewardItem"][1]["Attr"] = "0 1 3" -- 神罗天尊(+1)（赠）*1
	tTrojanCompetition_Reward[3312777][4]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312777][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312777][4]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312777][5] = {}
	-- ===3312777,'（+1）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312777][5]
	-- ===删除:3312777,1
	tTrojanCompetition_Reward[3312777][5]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312777][5]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312777][5]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312777][5]["DeleteItem"][1]["Id"] = 3312777 -- 【库】（+1）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312777][5]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312777][5]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312777][5]["RewardItem"][1]["Id"] = 4032101 -- 【库】爆炎诀(+1)[属性:8], 【表格】爆炎诀（+1）（赠）
	tTrojanCompetition_Reward[3312777][5]["RewardItem"][1]["Attr"] = "0 1 3" -- 爆炎诀(+1)（赠）*1
	tTrojanCompetition_Reward[3312777][5]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312777][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312777][5]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312777][6] = {}
	-- ===3312777,'（+1）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312777][6]
	-- ===删除:3312777,1
	tTrojanCompetition_Reward[3312777][6]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312777][6]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312777][6]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312777][6]["DeleteItem"][1]["Id"] = 3312777 -- 【库】（+1）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312777][6]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312777][6]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312777][6]["RewardItem"][1]["Id"] = 4032201 -- 【库】清心诀(+1)[属性:8], 【表格】清心诀（+1）（赠）
	tTrojanCompetition_Reward[3312777][6]["RewardItem"][1]["Attr"] = "0 1 3" -- 清心诀(+1)（赠）*1
	tTrojanCompetition_Reward[3312777][6]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312777][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312777][6]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312777][7] = {}
	-- ===3312777,'（+1）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312777][7]
	-- ===删除:3312777,1
	tTrojanCompetition_Reward[3312777][7]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312777][7]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312777][7]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312777][7]["DeleteItem"][1]["Id"] = 3312777 -- 【库】（+1）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312777][7]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312777][7]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312777][7]["RewardItem"][1]["Id"] = 4032301 -- 【库】天衣无缝(+1)[属性:8], 【表格】天衣无缝（+1）（赠）
	tTrojanCompetition_Reward[3312777][7]["RewardItem"][1]["Attr"] = "0 1 3" -- 天衣无缝(+1)（赠）*1
	tTrojanCompetition_Reward[3312777][7]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312777][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312777][7]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312777][8] = {}
	-- ===3312777,'（+1）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312777][8]
	-- ===删除:3312777,1
	tTrojanCompetition_Reward[3312777][8]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312777][8]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312777][8]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312777][8]["DeleteItem"][1]["Id"] = 3312777 -- 【库】（+1）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312777][8]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312777][8]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312777][8]["RewardItem"][1]["Id"] = 4032401 -- 【库】祭灵诀(+1)[属性:8], 【表格】祭灵诀（+1）（赠）
	tTrojanCompetition_Reward[3312777][8]["RewardItem"][1]["Attr"] = "0 1 3" -- 祭灵诀(+1)（赠）*1
	tTrojanCompetition_Reward[3312777][8]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312777][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312777][8]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312777][9] = {}
	-- ===3312777,'（+1）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312777][9]
	-- ===删除:3312777,1
	tTrojanCompetition_Reward[3312777][9]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312777][9]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312777][9]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312777][9]["DeleteItem"][1]["Id"] = 3312777 -- 【库】（+1）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312777][9]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312777][9]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312777][9]["RewardItem"][1]["Id"] = 4032501 -- 【库】横扫千军(+1)[属性:8], 【表格】横扫千军（+1）（赠）
	tTrojanCompetition_Reward[3312777][9]["RewardItem"][1]["Attr"] = "0 1 3" -- 横扫千军(+1)（赠）*1
	tTrojanCompetition_Reward[3312777][9]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312777][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312777][9]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312777][10] = {}
	-- ===3312777,'（+1）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312777][10]
	-- ===删除:3312777,1
	tTrojanCompetition_Reward[3312777][10]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312777][10]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312777][10]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312777][10]["DeleteItem"][1]["Id"] = 3312777 -- 【库】（+1）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312777][10]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312777][10]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312777][10]["RewardItem"][1]["Id"] = 4032601 -- 【库】涅槃重生(+1)[属性:8], 【表格】涅槃重生（+1）（赠）
	tTrojanCompetition_Reward[3312777][10]["RewardItem"][1]["Attr"] = "0 1 3" -- 涅槃重生(+1)（赠）*1
	tTrojanCompetition_Reward[3312777][10]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312777][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312777][10]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312777][11] = {}
	-- ===3312777,'（+1）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312777][11]
	-- ===删除:3312777,1
	tTrojanCompetition_Reward[3312777][11]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312777][11]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312777][11]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312777][11]["DeleteItem"][1]["Id"] = 3312777 -- 【库】（+1）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312777][11]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312777][11]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312777][11]["RewardItem"][1]["Id"] = 4032701 -- 【库】锋芒毕露(+1)[属性:8], 【表格】锋芒毕露（+1）（赠）
	tTrojanCompetition_Reward[3312777][11]["RewardItem"][1]["Attr"] = "0 1 3" -- 锋芒毕露(+1)（赠）*1
	tTrojanCompetition_Reward[3312777][11]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312777][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312777][11]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312777][12] = {}
	-- ===3312777,'（+1）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312777][12]
	-- ===删除:3312777,1
	tTrojanCompetition_Reward[3312777][12]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312777][12]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312777][12]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312777][12]["DeleteItem"][1]["Id"] = 3312777 -- 【库】（+1）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312777][12]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312777][12]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312777][12]["RewardItem"][1]["Id"] = 4032801 -- 【库】魂兮归来(+1)[属性:8], 【表格】魂兮归来（+1）（赠）
	tTrojanCompetition_Reward[3312777][12]["RewardItem"][1]["Attr"] = "0 1 3" -- 魂兮归来(+1)（赠）*1
	tTrojanCompetition_Reward[3312777][12]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312777][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312777][12]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312777][13] = {}
	-- ===3312777,'（+1）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312777][13]
	-- ===删除:3312777,1
	tTrojanCompetition_Reward[3312777][13]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312777][13]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312777][13]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312777][13]["DeleteItem"][1]["Id"] = 3312777 -- 【库】（+1）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312777][13]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312777][13]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312777][13]["RewardItem"][1]["Id"] = 4032901 -- 【库】例无虚发(+1)[属性:8], 【表格】例无虚发（+1）（赠）
	tTrojanCompetition_Reward[3312777][13]["RewardItem"][1]["Attr"] = "0 1 3" -- 例无虚发(+1)（赠）*1
	tTrojanCompetition_Reward[3312777][13]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312777][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312777][13]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312777][14] = {}
	-- ===3312777,'（+1）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312777][14]
	-- ===删除:3312777,1
	tTrojanCompetition_Reward[3312777][14]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312777][14]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312777][14]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312777][14]["DeleteItem"][1]["Id"] = 3312777 -- 【库】（+1）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312777][14]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312777][14]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312777][14]["RewardItem"][1]["Id"] = 4033001 -- 【库】审判(+1)[属性:8], 【表格】审判（+1）（赠）
	tTrojanCompetition_Reward[3312777][14]["RewardItem"][1]["Attr"] = "0 1 3" -- 审判(+1)（赠）*1
	tTrojanCompetition_Reward[3312777][14]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312777][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312777][14]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312777][15] = {}
	-- ===3312777,'（+1）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312777][15]
	-- ===删除:3312777,1
	tTrojanCompetition_Reward[3312777][15]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312777][15]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312777][15]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312777][15]["DeleteItem"][1]["Id"] = 3312777 -- 【库】（+1）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312777][15]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312777][15]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312777][15]["RewardItem"][1]["Id"] = 4033301 -- 【库】致命准星(+1)[属性:8], 【表格】致命准星（+1）（赠）
	tTrojanCompetition_Reward[3312777][15]["RewardItem"][1]["Attr"] = "0 1 3" -- 致命准星(+1)（赠）*1
	tTrojanCompetition_Reward[3312777][15]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312777][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312777][15]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312777][16] = {}
	-- ===3312777,'（+1）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312777][16]
	-- ===删除:3312777,1
	tTrojanCompetition_Reward[3312777][16]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312777][16]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312777][16]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312777][16]["DeleteItem"][1]["Id"] = 3312777 -- 【库】（+1）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312777][16]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312777][16]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312777][16]["RewardItem"][1]["Id"] = 4033401 -- 【库】会心一击(+1)[属性:8], 【表格】会心一击（+1）（赠）
	tTrojanCompetition_Reward[3312777][16]["RewardItem"][1]["Attr"] = "0 1 3" -- 会心一击(+1)（赠）*1
	tTrojanCompetition_Reward[3312777][16]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312777][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312777][16]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312777][17] = {}
	-- ===3312777,'（+1）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312777][17]
	-- ===删除:3312777,1
	tTrojanCompetition_Reward[3312777][17]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312777][17]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312777][17]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312777][17]["DeleteItem"][1]["Id"] = 3312777 -- 【库】（+1）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312777][17]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312777][17]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312777][17]["RewardItem"][1]["Id"] = 4033901 -- 【库】斗转星移(+1)[属性:8], 【表格】斗转星移（+1）（赠）
	tTrojanCompetition_Reward[3312777][17]["RewardItem"][1]["Attr"] = "0 1 3" -- 斗转星移(+1)（赠）*1
	tTrojanCompetition_Reward[3312777][17]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312777][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312777][17]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312777][18] = {}
	-- ===3312777,'（+1）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312777][18]
	-- ===删除:3312777,1
	tTrojanCompetition_Reward[3312777][18]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312777][18]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312777][18]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312777][18]["DeleteItem"][1]["Id"] = 3312777 -- 【库】（+1）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312777][18]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312777][18]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312777][18]["RewardItem"][1]["Id"] = 4034001 -- 【库】乾坤护法(+1)[属性:8], 【表格】乾坤护法（+1）（赠）
	tTrojanCompetition_Reward[3312777][18]["RewardItem"][1]["Attr"] = "0 1 3" -- 乾坤护法(+1)（赠）*1
	tTrojanCompetition_Reward[3312777][18]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312777][18]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312777][18]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312777][19] = {}
	-- ===3312777,'（+1）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312777][19]
	-- ===删除:3312777,1
	tTrojanCompetition_Reward[3312777][19]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312777][19]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312777][19]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312777][19]["DeleteItem"][1]["Id"] = 3312777 -- 【库】（+1）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312777][19]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312777][19]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312777][19]["RewardItem"][1]["Id"] = 4034101 -- 【库】威慑(+1)[属性:8], 【表格】威慑（+1）（赠）
	tTrojanCompetition_Reward[3312777][19]["RewardItem"][1]["Attr"] = "0 1 3" -- 威慑(+1)（赠）*1
	tTrojanCompetition_Reward[3312777][19]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312777][19]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312777][19]["RewardEffect"]["Effect"] = "angelwing"
	
	-- ===3312777,'（+1）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312777][20]
	-- ===删除: 3312777,1
	-- ===
	tTrojanCompetition_Reward[3312777][20] = {}
	tTrojanCompetition_Reward[3312777][20]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312777][20]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312777][20]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312777][20]["DeleteItem"][1]["Id"] = 3312777 -- 【库】（+1）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312777][20]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312777][20]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312777][20]["RewardItem"][1]["Id"] = 4034201 -- 乾坤妙法(+1)[4034201][属性:8][叠加:0][金币:0], 【表格】乾坤妙法（+1）
	tTrojanCompetition_Reward[3312777][20]["RewardItem"][1]["Attr"] = "0 1 3" -- 乾坤妙法(+1)（赠）*1
	tTrojanCompetition_Reward[3312777][20]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312777][20]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312777][20]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312777][21] = {}
	-- ===3312777,'（+1）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312777][21]
	-- ===删除: 3312777,1
	-- ===
	tTrojanCompetition_Reward[3312777][21]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312777][21]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312777][21]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312777][21]["DeleteItem"][1]["Id"] = 3312777 -- 【库】（+1）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312777][21]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312777][21]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312777][21]["RewardItem"][1]["Id"] = 4034301 -- 罡气护体(+1)[4034301][属性:8][叠加:0][金币:0], 【表格】罡气护体（+1）
	tTrojanCompetition_Reward[3312777][21]["RewardItem"][1]["Attr"] = "0 1 3" -- 罡气护体(+1)（赠）*1
	tTrojanCompetition_Reward[3312777][21]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312777][21]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312777][21]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312777][22] = {}
	-- ===3312777,'（+1）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312777][22]
	-- ===删除: 3312777,1
	-- ===
	tTrojanCompetition_Reward[3312777][22]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312777][22]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312777][22]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312777][22]["DeleteItem"][1]["Id"] = 3312777 -- 【库】（+1）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312777][22]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312777][22]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312777][22]["RewardItem"][1]["Id"] = 4034401 -- 沧澜破(+1)[4034401][属性:8][叠加:0][金币:0], 【表格】沧澜破（+1）
	tTrojanCompetition_Reward[3312777][22]["RewardItem"][1]["Attr"] = "0 1 3" -- 沧澜破(+1)（赠）*1
	tTrojanCompetition_Reward[3312777][22]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312777][22]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312777][22]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312777][23] = {}
	-- ===3312777,'（+1）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312777][23]
	-- ===删除: 3312777,1
	-- ===
	tTrojanCompetition_Reward[3312777][23]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312777][23]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312777][23]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312777][23]["DeleteItem"][1]["Id"] = 3312777 -- 【库】（+1）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312777][23]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312777][23]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312777][23]["RewardItem"][1]["Id"] = 4034501 -- 妙手回春(+1)[4034501][属性:8][叠加:0][金币:0], 【表格】妙手回春（+1）
	tTrojanCompetition_Reward[3312777][23]["RewardItem"][1]["Attr"] = "0 1 3" -- 妙手回春(+1)（赠）*1
	tTrojanCompetition_Reward[3312777][23]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312777][23]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312777][23]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312777][24] = {}
	-- ===3312777,'（+1）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312777][24]
	-- ===删除: 3312777,1
	-- ===
	tTrojanCompetition_Reward[3312777][24]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312777][24]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312777][24]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312777][24]["DeleteItem"][1]["Id"] = 3312777 -- 【库】（+1）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312777][24]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312777][24]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312777][24]["RewardItem"][1]["Id"] = 4034601 -- 碎魔屏障(+1)[4034601][属性:8][叠加:0][金币:0], 【表格】最终法伤免疫（+1）
	tTrojanCompetition_Reward[3312777][24]["RewardItem"][1]["Attr"] = "0 1 3" -- 碎魔屏障(+1)（赠）*1
	tTrojanCompetition_Reward[3312777][24]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312777][24]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312777][24]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312777][25] = {}
	-- ===3312777,'（+1）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312777][25]
	-- ===删除: 3312777,1
	-- ===
	tTrojanCompetition_Reward[3312777][25]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312777][25]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312777][25]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312777][25]["DeleteItem"][1]["Id"] = 3312777 -- 【库】（+1）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312777][25]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312777][25]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312777][25]["RewardItem"][1]["Id"] = 4034701 -- 天地化盾(+1)[4034701][属性:8][叠加:0][金币:0], 【表格】最终物伤免疫（+1）
	tTrojanCompetition_Reward[3312777][25]["RewardItem"][1]["Attr"] = "0 1 3" -- 天地化盾(+1)（赠）*1
	tTrojanCompetition_Reward[3312777][25]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312777][25]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312777][25]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312777][26] = {}
	-- ===3312777,'（+1）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312777][26]
	-- ===删除: 3312777,1
	-- ===
	tTrojanCompetition_Reward[3312777][26]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312777][26]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312777][26]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312777][26]["DeleteItem"][1]["Id"] = 3312777 -- 【库】（+1）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312777][26]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312777][26]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312777][26]["RewardItem"][1]["Id"] = 4034801 -- 碎玄元(+1)[4034801][属性:8][叠加:0][金币:0], 【表格】碎玄元（+1）
	tTrojanCompetition_Reward[3312777][26]["RewardItem"][1]["Attr"] = "0 1 3" -- 碎玄元(+1)（赠）*1
	tTrojanCompetition_Reward[3312777][26]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312777][26]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312777][26]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312777][27] = {}
	-- ===3312777,'（+1）稀有黄色神纹可选包（赠）'
	-- ===索引: tTrojanCompetition_Reward[3312777][27]
	-- ===删除: 3312777,1
	-- ===
	tTrojanCompetition_Reward[3312777][27]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312777][27]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312777][27]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312777][27]["DeleteItem"][1]["Id"] = 3312777 -- 【库】（+1）稀有黄色神纹可选包（赠）[属性:9]
	tTrojanCompetition_Reward[3312777][27]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312777][27]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312777][27]["RewardItem"][1]["Id"] = 4034901 -- 不死之身(+1)[4034901][属性:8][叠加:0][金币:0], 【表格】不死之身（+1）
	tTrojanCompetition_Reward[3312777][27]["RewardItem"][1]["Attr"] = "0 1 3" -- 不死之身(+1)（赠）*1
	tTrojanCompetition_Reward[3312777][27]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312777][27]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312777][27]["RewardEffect"]["Effect"] = "angelwing"




	tTrojanCompetition_Reward[3312778] = {}
	-- ===3312778,'青龙组冠军大礼盒'
	-- ===索引: tTrojanCompetition_Reward[3312778]
	-- ===删除:3312778,1
	tTrojanCompetition_Reward[3312778]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312778]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312778]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312778]["DeleteItem"][1]["Id"] = 3312778 -- 【库】青龙组冠军大礼盒[属性:9]
	tTrojanCompetition_Reward[3312778]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312778]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312778]["RewardItem"][1]["Id"] = 3321474 -- 【库】青龙组冠军礼盒[属性:9], 【表格】青龙组冠军大礼盒
	tTrojanCompetition_Reward[3312778]["RewardItem"][1]["Attr"] = "0 1" -- 青龙组冠军礼盒*1
	tTrojanCompetition_Reward[3312778]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312778]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312778]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312779] = {}
	-- ===3312779,'白虎组冠军大礼盒'
	-- ===索引: tTrojanCompetition_Reward[3312779]
	-- ===删除:3312779,1
	tTrojanCompetition_Reward[3312779]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312779]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312779]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312779]["DeleteItem"][1]["Id"] = 3312779 -- 【库】白虎组冠军大礼盒[属性:9]
	tTrojanCompetition_Reward[3312779]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312779]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312779]["RewardItem"][1]["Id"] = 3321475 -- 【库】白虎组冠军礼盒[属性:9], 【表格】白虎组冠军大礼盒
	tTrojanCompetition_Reward[3312779]["RewardItem"][1]["Attr"] = "0 1" -- 白虎组冠军礼盒*1
	tTrojanCompetition_Reward[3312779]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312779]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312779]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312780] = {}
	-- ===3312780,'朱雀组冠军大礼盒'
	-- ===索引: tTrojanCompetition_Reward[3312780]
	-- ===删除:3312780,1
	tTrojanCompetition_Reward[3312780]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312780]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312780]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312780]["DeleteItem"][1]["Id"] = 3312780 -- 【库】朱雀组冠军大礼盒[属性:9]
	tTrojanCompetition_Reward[3312780]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312780]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312780]["RewardItem"][1]["Id"] = 3321476 -- 【库】朱雀组冠军礼盒[属性:9], 【表格】朱雀组冠军礼盒
	tTrojanCompetition_Reward[3312780]["RewardItem"][1]["Attr"] = "0 1" -- 朱雀组冠军礼盒*1
	tTrojanCompetition_Reward[3312780]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312780]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312780]["RewardEffect"]["Effect"] = "angelwing"


	tTrojanCompetition_Reward[3312781] = {}
	-- ===3312781,'玄武组冠军大礼盒'
	-- ===索引: tTrojanCompetition_Reward[3312781]
	-- ===删除:3312781,1
	tTrojanCompetition_Reward[3312781]["LogId"] = 12001432
	tTrojanCompetition_Reward[3312781]["DeleteItem"] = {}
	tTrojanCompetition_Reward[3312781]["DeleteItem"][1] = {}
	tTrojanCompetition_Reward[3312781]["DeleteItem"][1]["Id"] = 3312781 -- 【库】玄武组冠军大礼盒[属性:9]
	tTrojanCompetition_Reward[3312781]["RewardItem"] = {}
	tTrojanCompetition_Reward[3312781]["RewardItem"][1] = {}
	tTrojanCompetition_Reward[3312781]["RewardItem"][1]["Id"] = 3321477 -- 【库】玄武组冠军礼盒[属性:9], 【表格】玄武组冠军礼盒
	tTrojanCompetition_Reward[3312781]["RewardItem"][1]["Attr"] = "0 1" -- 玄武组冠军礼盒*1
	tTrojanCompetition_Reward[3312781]["RewardEffect"] = {}
	tTrojanCompetition_Reward[3312781]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanCompetition_Reward[3312781]["RewardEffect"]["Effect"] = "angelwing"

local tTrojanCompetition_Pro = {}
	tTrojanCompetition_Pro["MinPro"] = 9001
	tTrojanCompetition_Pro["MapPro"] = 9999

local tTrojanCompetition_Log = "350	22434	0	0	1	"
local sTrojanCompetition_LevelLog = "0,0,0,0,12001432,1[%d],0,0" -- 记录玩家入场等级的log
local sTrojanCompetition_DelItemLog = "0,0,%d,1,12001432,2,0,0" -- 删除物品的log
local sTrojanCompetition_EmailLog = "0,0,0,0,12001432,2[%d][%d][%d][%d],0,0" -- 发邮件的log

----------------------------------逻辑部分---------------------------------------------
-- 职业及等级判断
function TrojanCompetition_JudgeProAndLevel(nUserId)
	local nNowUserId = nUserId or Get_UserId()
	local nPro = Get_NewUserProfession(nNowUserId)
	local nMinPro = tTrojanCompetition_Pro["MinPro"]
	local nMaxPro = tTrojanCompetition_Pro["MapPro"]
	
	-- 勇士职业
	if nPro >= nMinPro and nPro <= nMaxPro then
		return true
	end
	
	return false
end

-- 是否参加过争霸赛
function TrojanCompetition_IsJoinCompetition(nNpcId,nIndex)
	local nUserId = Get_UserId()
	local nTaskId = tTrojanCompetition_TaskDetal[1]["TaskId"]
	local nData1 = tTrojanCompetition_TaskDetal[1]["Data1"]
	local nData2 = tTrojanCompetition_TaskDetal[1]["Data2"]
	local nItemId = tTrojanCompetition_Data["NeedItemId"]
	local nItemNum = tTrojanCompetition_Data["NeedItemNum"]
	
	if User_IsInLeague(nUserId) then
		LinkNpcGossipFunc_New(nNpcId, "5-1")
		return
	end
	
	
	-- 有任务掩码
	if Task_ChkTaskDetail(nTaskId, nUserId) then
		-- 领过奖
		if Task_ChkTaskDetailValue(nTaskId, "2", ">=", nData2, nUserId) then
			LinkNpcGossipFunc_New(nNpcId, "3-1")
			return
		end
		
		if Task_ChkTaskDetailValue(nTaskId, "1", ">=", nData1, nUserId) then
			LinkNpcGossipFunc_New(nNpcId, "3-2")
			return
		end
	end
	
	-- 有令牌
	if Item_ChkMulItem(nItemId, nItemId, nItemNum) then
		LinkNpcGossipFunc_New(nNpcId, "3-2")
		return
	end
	
	LinkNpcGossipFunc_New(nNpcId, "3-3")
end

-- 跳转进入决赛场内（进入跨服地图）
function TrojanCompetition_EnterCourt(nNpcId)
	local nUserId = Get_UserId()
	local nLevel = Get_UserLevel(nUserId)
	local nMapId = 0
	local nPosX = 0
	local nPosY = 0
	local nConfigData2 = 0
	local nTaskId = tTrojanCompetition_TaskDetal[1]["TaskId"]
	local nData1 = tTrojanCompetition_TaskDetal[1]["Data1"]
	local nItemId = tTrojanCompetition_Data["NeedItemId"]
	local nItemNum = tTrojanCompetition_Data["NeedItemNum"]
	
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["TrojanCompetition"]["AdmissionTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "4-1")
		return
	end
	
	-- 判断玩家是否为勇士
	if not TrojanCompetition_JudgeProAndLevel(nUserId) then
		return
	end
	
	-- 判断玩家分组
	for k, v in pairs(tTrojanCompetition_Level) do
		if nLevel < v or v == tTrojanCompetition_Level[4] then
			nConfigData2 = tTrojanCompetition_Data["CrossServer"][k]
			nMapId = tTrojanCompetition_TransferPoint["MapId"][k]
			nPosX = tTrojanCompetition_TransferPoint["PosX"]
			nPosY = tTrojanCompetition_TransferPoint["PosY"]
			break
		end
	end
	
	-- 检测是否有任务掩码
	if not (Task_ChkTaskDetail(nTaskId, nUserId) and Task_ChkTaskDetailValue(nTaskId, "1", ">=", nData1)) then
		-- 无任务掩码 检测是否有物品
		if not Item_ChkMulItem(nItemId, nItemId, nItemNum) then
			-- 没有物品 弹出对白
			LinkNpcGossipFunc_New(nNpcId, "3-3")
			return
		else
			-- 有物品  加上任务掩码 删除物品
			if not Task_ChkTaskDetail(nTaskId, nUserId) then
				if not Task_AddTaskDetail(nTaskId,0,nUserId) then
					return
				end
			end
			if Task_SetTaskDetailData1(nTaskId,nUserId) then
				if not Item_DelMulItem(nItemId, nItemId, nItemNum) then
					return
				end
				Sys_SaveActionFestivalLog(tTrojanCompetition_Log, nUserId)
				Sys_SaveActionFestivalLog(string.format(sTrojanCompetition_LevelLog,nLevel)) -- 记录玩家入场等级的log
			else
				return
			end
		end
	end
	
	-- 传送到指定跨服地图
	-- 获取国境服id
	local nServerId = Get_FrontierServerID()
	-- 根据玩家传送到国境服
	Sys_EnterServer(nServerId,12,nUserId,nConfigData2)
	
end

-- 花费天石购买入场令
function TrojanCompetition_BuyToken(nNpcId)
	local nUserId = Get_UserId()
	local sUserName = Get_UserName(nUserId)
	if not TrojanCompetition_JudgeProAndLevel(nUserId) then
		return
	end
	
	-- 比赛开始后不允许购买令牌
	if Sys_ChkFullTime(tActivityTime["TrojanCompetition"]["NoBuyTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "4-1")
		return
	end
	
	if Get_UserEMoney(nUserId) < tTrojanCompetition_Data["NeedEmoney"] then
		LinkNpcGossipFunc_New(nNpcId, "3-4")
		return
	end
	
	if not RewardTemplate_CheckSpace(tTrojanCompetition_Reward["BuyToken"],nUserId) then
		Sys_MsgBox(tTrojanCompetition_Text["Sys"]["NoSpace"])
		return
	end
	
	if RewardTemplate_UseItem(tTrojanCompetition_Reward["BuyToken"],nUserId) then
		Sys_MsgBox(tTrojanCompetition_Text["Sys"]["GetToken"])
		Sys_TalkBroadcast(string.format(tTrojanCompetition_Text["Sys"]["BugToken"],sUserName))
	end
end

-- 时间自检	全服公告
function TrojanCompetition_SystemBroadcast1()
	--左上角广播提示
	Sys_SystemBroadcast(tTrojanCompetition_Text["Sys"]["BeginMinutePreliminary"])
end

function TrojanCompetition_SystemBroadcast2()
	Sys_SystemBroadcast(tTrojanCompetition_Text["Sys"]["BeginMinuteCompetition"])
	Sys_SystemBroadcast(tTrojanCompetition_Text["Sys"]["BeginMinuteCompetition"])
	Sys_SystemBroadcast(tTrojanCompetition_Text["Sys"]["BeginMinuteCompetition"])
	Sys_TalkBroadcast(tTrojanCompetition_Text["Sys"]["BeginMinuteCompetition"])
	Sys_TalkBroadcast(tTrojanCompetition_Text["Sys"]["BeginMinuteCompetition"])
	Sys_TalkBroadcast(tTrojanCompetition_Text["Sys"]["BeginMinuteCompetition"])
end

function TrojanCompetition_SystemBroadcast3()
	for i, j in pairs(tTrojanCompetition_Data["SurvivalNum"]) do
		for k, v in pairs(tTrojanCompetition_TransferPoint["MapId"]) do
			if Map_GetUserNum(v, 1) == j then
				Map_SendBroadcastMsg(v,tTrojanCompetition_Text["Sys"]["PeopleLeft"][i])
			end
		end
	end
end

function TrojanCompetition_SurvivalNum(nNowUserId)
	local nMapId = Get_UserMapId(nNowUserId)
	-- 判断地图内存活人数
	for i, j in pairs(tTrojanCompetition_TransferPoint["MapId"])do
		if nMapId == j then
			--获取地图存活人数
			if Map_GetUserNum(j, 1) == 1 then
				return 1
			else
				return 2
			end
		end
	end
	return 0
end

-- 冠军领奖
function TrojanCompetition_GetReward(nNpcId, nUserId, nSurvivalNum)
	local nNowUserId = nUserId or Get_UserId()
	
	-- 本服玩家
	if not User_IsCross(nNowUserId) then
		return
	end
	
	if not Sys_ChkFullTime(tActivityTime["TrojanCompetition"]["CompetitionTime"]) then
		return
	end
	
	local nLevel = Get_UserLevel(nNowUserId)
	local nActionId = 0
	
	-- 玩家死亡拿参与奖 否则根据场上人数进行判断
	if nSurvivalNum == nil then
		nSurvivalNum = TrojanCompetition_SurvivalNum(nNowUserId)
	end
	
	if nSurvivalNum == 0 then
		return
	end
	
	if nSurvivalNum == 3 then
		nSurvivalNum = 2
	end
	
	local sSender = tTrojanCompetition_Text["Email"][nSurvivalNum]["Sender"]
	local sTitle = tTrojanCompetition_Text["Email"][nSurvivalNum]["Title"]
	local sContent = tTrojanCompetition_Text["Email"][nSurvivalNum]["Content"]
	local nTaskId = tTrojanCompetition_TaskDetal[1]["TaskId"]
	local nData1 = tTrojanCompetition_TaskDetal[1]["Data1"]
	local nData2 = tTrojanCompetition_TaskDetal[1]["Data2"]
	local sGroup = tTrojanCompetition_Text["Sys"]["Group"][1]
	
	-- 不符合参赛条件的玩家
	if not TrojanCompetition_JudgeProAndLevel(nNowUserId) then
		Sys_ExitOS(nNowUserId)
		return
	end
	
	if not (Task_ChkTaskDetail(nTaskId, nNowUserId) and Task_ChkTaskDetailValue(nTaskId, "1", ">=", nData1, nNowUserId)) then
		Sys_ExitOS(nNowUserId)
		return
	end
	
	if Task_ChkTaskDetailValue(nTaskId, "2", ">=", nData2, nNowUserId) then
		Sys_ExitOS(nNowUserId)
		return
	end
	
	-- 邮件发奖
	-- 判断玩家分组
	for k, v in pairs(tTrojanCompetition_Level) do
		if nLevel < v or v == tTrojanCompetition_Level[4] then
			nActionId = tTrojanCompetition_Email[nSurvivalNum][k]["ActionId"]
			sContent = string.format(sContent, tTrojanCompetition_Email[nSurvivalNum][k]["Group"])
			sGroup = tTrojanCompetition_Text["Sys"]["Group"][k]
			break
		end
	end
	
	local nDataUserId = Get_TaskDetailData1(nTaskId,nNowUserId)
	local nServerId = Get_UserServerId(nNowUserId)
	Task_SetTaskDetailData2(nTaskId, nSurvivalNum, nNowUserId) --- 区分冠军奖励和参与奖励 1 冠军 2 参与
	if Sys_SendMail(nDataUserId,0,0,nActionId,0,7,sSender,sTitle,sContent,nServerId) then
		Sys_SaveActionRewardLog(string.format(sTrojanCompetition_EmailLog, nSurvivalNum, nServerId, nDataUserId, nLevel)) -- 记录玩家冠军/参与、服务器ID、本服UserId、当前等级
	end
	local sServerName = Get_SysServerName(nServerId)
	local sUserName = Get_UserName(nNowUserId)
	if nSurvivalNum == 1 then
		Sys_SystemBroadcastToOS(string.format(tTrojanCompetition_Text["Sys"]["BroadcastOS"], sServerName, sUserName, sGroup))
	end
	Sys_ExitOS(nNowUserId)
end

-- 比赛结束踢出所有人
function TrojanCompetition_KickAllPlayer()
	for k, v in pairs(tTrojanCompetition_TransferPoint["MapId"]) do
		Map_UserExeFunc(v, -1, "TrojanCompetition_GetReward</N>24290")
	end
end

function TrojanCompetition_UserDie(nMurdererId, nDeadId)
	local nTaskId = tTrojanCompetition_TaskDetal[1]["TaskId"]
	-- 本服玩家
	if not (User_IsCross(nMurdererId) or User_IsCross(nDeadId)) then
		return
	end
	-- 不在活动时间
	if not Sys_ChkFullTime(tActivityTime["TrojanCompetition"]["CompetitionTime"]) then
		return
	end
	-- 不在比赛时间
	if not Sys_ChkDayTime(tActivityTime["TrojanCompetition"]["MatchTime"]) then
		local nMapId = Get_UserMapId(nDeadId)
		for k, v in pairs(tTrojanCompetition_TransferPoint["MapId"]) do
			if nMapId == v then
				-- User_TalkChannel2005("???")
				Sys_ExitOS(nDeadId)
				return
			end
			-- User_TalkChannel2005(",,,,,")
		end
		return
	end
	-- 没有任务id
	if not (Task_ChkTaskDetail(nTaskId, nMurdererId) or Task_ChkTaskDetail(nTaskId, nDeadId)) then
		return
	end
	
	TrojanCompetition_GetReward(24290, nDeadId, 3)
end

function TrojanCompetition_OpenChoosePack(nItemId, nIndex)
	if not Item_ChkMulItem(nItemId, nItemId, 1) then
		return
	end
	RewardTemplate_UseItem(tTrojanCompetition_Reward[nItemId][nIndex])
end
----------------------------------NPC部分---------------------------------------------
tNpcFace[5113] = 49
tNpcGossip[24232]= tNpcGossip[24232] or DefaultNpc:new{}
tNpcGossip[24232]["DialogueText"] = tTrojanCompetition_Text[24232]
tNpcGossip[24232]["OptionHidden"] = 1

-- 活动前对白
tNpcGossip[24232]["Text1-1"] = {111,112,113,114,115,116,117,118,119}
tNpcGossip[24232]["ChkFunc1-1"]= function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["TrojanCompetition"]["ActivityTime"])
end
tNpcGossip[24232]["tOption1-1"] = {111}

-- 活动后对白
tNpcGossip[24232]["Text1-2"] = {121,122}
tNpcGossip[24232]["ChkFunc1-2"]= function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["TrojanCompetition"]["ActivityTime"])
end
tNpcGossip[24232]["tOption1-2"] = {121}

-- 活动中	不满足条件
tNpcGossip[24232]["Text1-3"] = {131,132,133,134,135,136,137,138,139}
tNpcGossip[24232]["ChkFunc1-3"]= function()
	local nUserId = Get_UserId()
	-- 不在活动时间内
	if not Sys_ChkFullTime(tActivityTime["TrojanCompetition"]["ActivityTime"]) then
		return false
	end
	
	-- 职业判断 非勇士 不足100级
	return not TrojanCompetition_JudgeProAndLevel(nUserId)
end
tNpcGossip[24232]["tOption1-3"] = {131}

-- 活动中	满足条件	预选期间
tNpcGossip[24232]["Text1-4"] = {141,142,143,144,145,146,147,148}
tNpcGossip[24232]["ChkFunc1-4"]= function()
	local nUserId = Get_UserId()
	-- 不在活动时间内
	if not Sys_ChkFullTime(tActivityTime["TrojanCompetition"]["ActivityTime"]) then
		return false
	end
	
	-- 非决赛时间显示预选期对白
	if Sys_ChkFullTime(tActivityTime["TrojanCompetition"]["CompetitionTime"]) then
		return false
	end
	
	-- 职业判断 勇士 达到100级
	return TrojanCompetition_JudgeProAndLevel(nUserId)
end
tNpcGossip[24232]["tOption1-4"] = {141,142,143}
tNpcGossip[24232]["OptionFunc141"] = "NpcPosition_PathFind</N>662"
tNpcGossip[24232]["OptionPoint142"] = "2-1"


-- 活动中	满足条件	决赛期间
tNpcGossip[24232]["Text1-5"] = {151,152,153,154,155,156,157}
tNpcGossip[24232]["ChkFunc1-5"]= function()
	local nUserId = Get_UserId()
	-- 不在活动时间内
	if not Sys_ChkFullTime(tActivityTime["TrojanCompetition"]["ActivityTime"]) then
		return false
	end
	
	-- 非决赛时间不显示该对白
	if not Sys_ChkFullTime(tActivityTime["TrojanCompetition"]["CompetitionTime"]) then
		return false
	end
	
	-- 职业判断 勇士 达到100级
	return TrojanCompetition_JudgeProAndLevel(nUserId)
end
tNpcGossip[24232]["tOption1-5"] = {151,152,153}
tNpcGossip[24232]["OptionChkFunc151"] = function ()
	return not Sys_ChkFullTime(tActivityTime["TrojanCompetition"]["NoBuyTime"])
end
tNpcGossip[24232]["OptionFunc151"] = "TrojanCompetition_IsJoinCompetition</N>24232</N>1"
tNpcGossip[24232]["OptionPoint152"] = "2-1"


-- 接	查看争霸赛奖励
-- 青龙
tNpcGossip[24232]["Text2-1"] = {211,212,213,214,215,216,217,218,219,2110,2111}
tNpcGossip[24232]["tOption2-1"] = {211,212,213}
tNpcGossip[24232]["OptionPoint211"] = "2-2"
tNpcGossip[24232]["OptionPoint212"] = "2-3"
tNpcGossip[24232]["OptionPoint213"] = "2-4"

-- 白虎
tNpcGossip[24232]["Text2-2"] = {221,222,223,224,225,226,227,228,229,2210,2211}
tNpcGossip[24232]["tOption2-2"] = {221,222,223}
tNpcGossip[24232]["OptionPoint221"] = "2-3"
tNpcGossip[24232]["OptionPoint222"] = "2-4"
tNpcGossip[24232]["OptionPoint223"] = "2-1"

-- 朱雀
tNpcGossip[24232]["Text2-3"] = {231,232,233,234,235,236,237,238,239,2310,2311}
tNpcGossip[24232]["tOption2-3"] = {231,232,233}
tNpcGossip[24232]["OptionPoint231"] = "2-4"
tNpcGossip[24232]["OptionPoint232"] = "2-1"
tNpcGossip[24232]["OptionPoint233"] = "2-2"

-- 玄武
tNpcGossip[24232]["Text2-4"] = {241,242,243,244,245,246,247,248,249,2410,2411}
tNpcGossip[24232]["tOption2-4"] = {241,242,243}
tNpcGossip[24232]["OptionPoint241"] = "2-1"
tNpcGossip[24232]["OptionPoint242"] = "2-2"
tNpcGossip[24232]["OptionPoint243"] = "2-3"

-- 接	参与勇冠天下争霸赛
-- 【已经参加过了】
tNpcGossip[24232]["Text3-1"] = {311,312}
tNpcGossip[24232]["tOption3-1"] = {311}

-- 【身上有勇冠天下参赛令】
tNpcGossip[24232]["Text3-2"] = {321,322}
tNpcGossip[24232]["tOption3-2"] = {321,322}
tNpcGossip[24232]["OptionFunc321"] = "TrojanCompetition_EnterCourt</N>24232" -- 跳转入决赛场内

-- 【身上没有勇冠天下参赛令】
tNpcGossip[24232]["Text3-3"] = {331,332}
tNpcGossip[24232]["tOption3-3"] = {331,332}
tNpcGossip[24232]["OptionPoint331"] = "3-5"
tNpcGossip[24232]["OptionChkFunc331"] = function ()
	local nUserId = Get_UserId()
	-- 非勇士职业且等级不足100级不显示该对白
	return TrojanCompetition_JudgeProAndLevel(nUserId)
end

-- 接	立即购买勇冠天下参赛令
-- 【天石不足】
tNpcGossip[24232]["Text3-4"] = {341,342}
tNpcGossip[24232]["tOption3-4"] = {341}

-- 二次确认
tNpcGossip[24232]["Text3-5"] = {351,352}
tNpcGossip[24232]["tOption3-5"] = {351}
tNpcGossip[24232]["OptionFunc351"] = "TrojanCompetition_BuyToken</N>24232"

-- 未到入场时间
tNpcGossip[24232]["Text4-1"] = {411,412}
tNpcGossip[24232]["tOption4-1"] = {411}

-- 联盟玩家
tNpcGossip[24232]["Text5-1"] = {511,512}
tNpcGossip[24232]["tOption5-1"] = {511}


-- 领奖npc
tNpcGossip[24290]= tNpcGossip[24290] or DefaultNpc:new{}
tNpcGossip[24290]["DialogueText"] = tTrojanCompetition_Text[24290]
tNpcGossip[24290]["OptionHidden"] = 1

tNpcGossip[24290]["Text1-1"] = {111,112}
tNpcGossip[24290]["ChkFunc1-1"] = function ()
	if not Sys_ChkFullTime(tActivityTime["TrojanCompetition"]["CompetitionTime"]) then
		return false
	end
	
	if Sys_ChkDayTime(tActivityTime["TrojanCompetition"]["MatchTime"]) then
		local nMapId = Get_UserMapId()
		--检测所在地图
		for k,v in pairs(tTrojanCompetition_TransferPoint["MapId"])do
			if nMapId == v then
				--获取地图存活人数
				if Map_GetUserNum(v,1) == 1 then
					return true
				else
					return false
				end
			end
		end
	end
	return false
end
tNpcGossip[24290]["tOption1-1"] = {111,112}
tNpcGossip[24290]["OptionFunc111"] = "TrojanCompetition_GetReward</N>24290" -- 当然要现在领取了

tNpcGossip[24290]["Text1-2"] = {121}
tNpcGossip[24290]["ChkFunc1-2"] = function ()
	if not Sys_ChkFullTime(tActivityTime["TrojanCompetition"]["CompetitionTime"]) then
		return false
	end
	
	if Sys_ChkDayTime(tActivityTime["TrojanCompetition"]["MatchTime"]) then
		local nMapId = Get_UserMapId()
		--检测所在地图
		for k,v in pairs(tTrojanCompetition_TransferPoint["MapId"])do
			if nMapId == v then
				--获取地图存活人数
				if Map_GetUserNum(v,1) ~= 1 then
					return true
				end
			end
		end
	end
	return false
end
tNpcGossip[24290]["tOption1-2"] = {121,122}
tNpcGossip[24290]["OptionFunc121"] = "TrojanCompetition_GetReward</N>24290" -- 玩累了，还是回去吧（获得参与奖奖励）

tNpcGossip[24290]["Text1-3"] = {131}
tNpcGossip[24290]["ChkFunc1-3"] = function ()
	if Sys_ChkFullTime(tActivityTime["TrojanCompetition"]["CompetitionTime"]) then
		if Sys_ChkDayTime(tActivityTime["TrojanCompetition"]["MatchTime"]) then
			return false
		end
		return true
	end
	return true
end
tNpcGossip[24290]["tOption1-3"] = {131,132}
tNpcGossip[24290]["OptionFunc131"] = "Sys_ExitOS" -- 送我回去吧，我还有事（比赛开始前离开地图，不获得任何奖励）
-- 其它地图npc
tNpcGossip[24291] = tNpcGossip[24290]
tNpcGossip[24292] = tNpcGossip[24290]
tNpcGossip[24293] = tNpcGossip[24290]

-- 双龙城传送npc
tNpcGossip[24169]= tNpcGossip[24169] or DefaultNpc:new{}
tNpcGossip[24169]["DialogueText"] = tTrojanCompetition_Text[24169]
tNpcGossip[24169]["OptionHidden"] = 1

tNpcGossip[24169]["Text1-1"] = {111}
tNpcGossip[24169]["tOption1-1"] = {111}
tNpcGossip[24169]["OptionFunc111"] = "Sys_ExitOS"


---------------------------------物品部分---------------------------------------------
tItemFace[3321472] = 2305
tItemFace[3312774] = 826
tItemFace[3312775] = 947
tItemFace[3312776] = 948
tItemFace[3312777] = 2307

--------物品无对白模板
-- 勇士参赛令牌
tItem[3321473] = tItem[3321473] or {}
tItem[3321473]["Function"] = function(nItemId,sItemName)
	if not Sys_ChkFullTime(tActivityTime["TrojanCompetition"]["ActivityTime"]) then
		if not Item_DelMulItem(nItemId, nItemId, 1) then
			return
		end
		User_TalkChannel2005(tTrojanCompetition_Text["Sys"]["TimeOut"])
		Sys_SaveActionFestivalLog(string.format(sTrojanCompetition_DelItemLog, nItemId))
		return
	end
	NpcPosition_PathFind(24232)
end
-- 海盗参赛令牌
tItem[3313540] = tItem[3321473] or {}
tItem[3314270] = tItem[3321473] or {}
-- 铁扇门参赛令牌 -- 屏蔽新服使用
tItem[3313862] = tItem[3313862] or {}
tItem[3313862]["Function"] = function(nItemId,sItemName)
	local nGlobalID = tTrojanCompetition_Data["ActivityGlobalID"]
	local nData = Get_SysDynaGlobalData(nGlobalID,0)
	-- nData=1表示不上该活动 删除物品
	if nData >= 1 then
		if not Item_DelMulItem(nItemId, nItemId, 1) then
			return
		end
		Sys_SaveActionFestivalLog(string.format(sTrojanCompetition_DelItemLog, nItemId))
		User_TalkChannel2005(tTrojanCompetition_Text["Sys"]["NoActivity"])
		return
	end
	
	if not Sys_ChkFullTime(tActivityTime["TrojanCompetition"]["ActivityTime"]) then
		if not Item_DelMulItem(nItemId, nItemId, 1) then
			return
		end
		User_TalkChannel2005(tTrojanCompetition_Text["Sys"]["TimeOut"])
		Sys_SaveActionFestivalLog(string.format(sTrojanCompetition_DelItemLog, nItemId))
		return
	end
	NpcPosition_PathFind(24232)
end
-- 斗神参赛令
tItem[3314612] = tItem[3313862] or {}

tItem[3321474] = tItem[3321474] or {}
tItem[3321474]["Function"] = function(nItemId,sItemName)
	local nUserId = Get_UserId()
	local sUserName = Get_UserName(nUserId)
	if not Item_ChkMulItem(nItemId, nItemId, 1) then
		return
	end
	
	local tReward = CommonFunc_Copy(tTrojanCompetition_Reward[nItemId])
	
	RewardTemplate_UseItemAndMsg(tReward)
	Sys_SystemBroadcast(string.format(tTrojanCompetition_Text["Sys"]["OpenChampionBox"], sUserName, sItemName, tTrojanCompetition_Text[nItemId]))
end
tItem[3321475] = tItem[3321474]
tItem[3321476] = tItem[3321474]
tItem[3321477] = tItem[3321474]
tItem[3321478] = tItem[3321474]
tItem[3321479] = tItem[3321474]
tItem[3321480] = tItem[3321474]
tItem[3321481] = tItem[3321474]

tItem[3312778] = tItem[3312778] or {}
tItem[3312778]["Function"] = function(nItemId,sItemName)
	if not Item_ChkMulItem(nItemId, nItemId, 1) then
		return
	end

	local tReward = CommonFunc_Copy(tTrojanCompetition_Reward[nItemId])
	local nGlobalID = tTrojanCompetition_Data["ServerGlobalID"]
	local nData = Get_SysDynaGlobalData(nGlobalID,0)
	if nData >= 1 then
		tReward["RewardItem"][1]["Attr"] = "0 3"
	end
	
	local nSpace = RewardTemplate_GetRewardSpace(tReward)
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(string.format(tTrojanCompetition_Text["Sys"]["NeedSpace"],nSpace))
		return
	end
	
	RewardTemplate_UseItemAndMsg(tReward)
	if nData >= 1 then
		Sys_MsgBox(tTrojanCompetition_Text["Sys"]["NewServer"])
	end
	
end
tItem[3312779] = tItem[3312778]
tItem[3312780] = tItem[3312778]
tItem[3312781] = tItem[3312778]

--------物品有对白模板
tItem[3312774] = tItem[3312774] or {}
tItem[3312774]["DialogueText"] = tTrojanCompetition_Text["ChoosePack"]
tItem[3312774]["OptionHidden"] = 1

tItem[3312774]["Text1-1"] = {111}
tItem[3312774]["tOption1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111,1112,1113,1114,1115,1116,1117,1118,1119,1120,1121,1122,1123,1124,1125,1126}
for i = 1, 26 do
	tItem[3312774]["OptionChkFunc11"..i] = function ()
		tItem[3312774]["Option11"..i] = string.format(tTrojanCompetition_Text["ChoosePack"]["Option11"..i],tTrojanCompetition_Text[3312774])
		tItem[3312774]["OptionFunc11"..i] = "TrojanCompetition_OpenChoosePack</N>3312774</N>"..i
		return true
	end
end

tItem[3312775] = tItem[3312775] or {}
tItem[3312775]["DialogueText"] = tTrojanCompetition_Text["ChoosePack"]
tItem[3312775]["OptionHidden"] = 1

tItem[3312775]["Text1-1"] = {111}
tItem[3312775]["tOption1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111,1112,1113,1114,1115,1116,1117,1118,1119,1120,1121,1122,1123,1124,1125,1126}
for i = 1, 26 do
	tItem[3312775]["OptionChkFunc11"..i] = function ()
		tItem[3312775]["Option11"..i] = string.format(tTrojanCompetition_Text["ChoosePack"]["Option11"..i],tTrojanCompetition_Text[3312775])
		tItem[3312775]["OptionFunc11"..i] = "TrojanCompetition_OpenChoosePack</N>3312775</N>"..i
		return true
	end
end

tItem[3312776] = tItem[3312776] or {}
tItem[3312776]["DialogueText"] = tTrojanCompetition_Text["ChoosePack"]
tItem[3312776]["OptionHidden"] = 1

tItem[3312776]["Text1-1"] = {111}
tItem[3312776]["tOption1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111,1112,1113,1114,1115,1116,1117,1118,1119,1120,1121,1122,1123,1124,1125,1126}
for i = 1, 26 do
	tItem[3312776]["OptionChkFunc11"..i] = function ()
		tItem[3312776]["Option11"..i] = string.format(tTrojanCompetition_Text["ChoosePack"]["Option11"..i],tTrojanCompetition_Text[3312776])
		tItem[3312776]["OptionFunc11"..i] = "TrojanCompetition_OpenChoosePack</N>3312776</N>"..i
		return true
	end
end

tItem[3312777] = tItem[3312777] or {}
tItem[3312777]["DialogueText"] = tTrojanCompetition_Text["ChoosePack"]
tItem[3312777]["OptionHidden"] = 1

tItem[3312777]["Text1-1"] = {111}
tItem[3312777]["tOption1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111,1112,1113,1114,1115,1116,1117,1118,1119,1120,1121,1122,1123,1124,1125,1126}
for i = 1, 26 do
	tItem[3312777]["OptionChkFunc11"..i] = function ()
		tItem[3312777]["Option11"..i] = string.format(tTrojanCompetition_Text["ChoosePack"]["Option11"..i], tTrojanCompetition_Text[3312777])
		tItem[3312777]["OptionFunc11"..i] = "TrojanCompetition_OpenChoosePack</N>3312777</N>"..i
		return true
	end
end

--新增+3神纹包	加上天行有常和紫气东来
tItemFace[3331156] = 948
tItem[3331156] = tItem[3331156] or {}
tItem[3331156]["DialogueText"] = tTrojanCompetition_Text[3331156]
tItem[3331156]["OptionHidden"] = 1

tItem[3331156]["Text1-1"] = {111}
tItem[3331156]["tOption1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111,1112,1113,1114,1115,1116,1117,1118,1119,1120,1121,1122,1123,1124,1125,1126,1127,1128}
for i = 1, 28 do
	tItem[3331156]["OptionChkFunc11"..i] = function ()
		tItem[3331156]["Option11"..i] = string.format(tTrojanCompetition_Text[3331156]["Option11"..i],tTrojanCompetition_Text[3312776])
		tItem[3331156]["OptionFunc11"..i] = "TrojanCompetition_OpenChoosePack</N>3331156</N>"..i
		return true
	end
end

---------------------------------时间自检--------------------------------------------- 
local tTrojanCompetition_OnTime = {}
	-- 预选赛期间，职业PK赛快开始的提示，全服公告
	tTrojanCompetition_OnTime[1] = {}
	tTrojanCompetition_OnTime[1]["ActivityTime"] = tActivityTime["TrojanCompetition"]["PreliminariesTime"]
	tTrojanCompetition_OnTime[1]["Type"] = 6
	tTrojanCompetition_OnTime[1]["TimeType"] = 3
	tTrojanCompetition_OnTime[1]["Time"] = "1 19:25 1 19:25"
	tTrojanCompetition_OnTime[1]["Func"] = TrojanCompetition_SystemBroadcast1
	
	-- 争霸赛开始前提示，全服公告
	tTrojanCompetition_OnTime[2] = {}
	tTrojanCompetition_OnTime[2]["ActivityTime"] = tActivityTime["TrojanCompetition"]["CompetitionTime"]
	tTrojanCompetition_OnTime[2]["Type"] = 6
	tTrojanCompetition_OnTime[2]["TimeType"] = 4
	tTrojanCompetition_OnTime[2]["Time"] = "19:25 19:25"
	tTrojanCompetition_OnTime[2]["Func"] = TrojanCompetition_SystemBroadcast2
	
	-- 地图公告
	tTrojanCompetition_OnTime[3] = {}
	tTrojanCompetition_OnTime[3]["ActivityTime"] = tActivityTime["TrojanCompetition"]["CompetitionTime"]
	tTrojanCompetition_OnTime[3]["Type"] = 6
	tTrojanCompetition_OnTime[3]["TimeType"] = 4
	tTrojanCompetition_OnTime[3]["Time"] = tActivityTime["TrojanCompetition"]["MatchTime"]
	tTrojanCompetition_OnTime[3]["Func"] = TrojanCompetition_SystemBroadcast3
	
	-- 比赛结束踢出所有玩家
	tTrojanCompetition_OnTime[4] = {}
	tTrojanCompetition_OnTime[4]["ActivityTime"] = tActivityTime["TrojanCompetition"]["CompetitionTime"]
	tTrojanCompetition_OnTime[4]["Type"] = 6
	tTrojanCompetition_OnTime[4]["TimeType"] = 4
	tTrojanCompetition_OnTime[4]["Time"] = "20:30 20:35"
	tTrojanCompetition_OnTime[4]["Func"] = TrojanCompetition_KickAllPlayer
	
table.insert(tSystemTime_InitialData,tTrojanCompetition_OnTime[1])
table.insert(tSystemTime_InitialData,tTrojanCompetition_OnTime[2])
table.insert(tSystemTime_InitialData,tTrojanCompetition_OnTime[3])
table.insert(tSystemTime_InitialData,tTrojanCompetition_OnTime[4])

-- 玩家死亡触发
tUserKilled["tFunction"] = tUserKilled["tFunction"] or {}
table.insert(tUserKilled["tFunction"],TrojanCompetition_UserDie)