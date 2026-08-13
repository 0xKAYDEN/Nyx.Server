------------------------------------------------------------------------------------
--Name：            190417[英文征服][活动脚本]英文征服5月驯龙高手(5月16日-6月12日)
--Creator:      蔡颖静
--Created:     2019/04/17
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
--前缀:tDragonMaster_
--logid:12001376
----------------------------------表配置部分--------------------------------------------
local tDragonMaster_Data={}

	--stc（193,61）是否为首次对话
	tDragonMaster_Data["Stc"]={}
	tDragonMaster_Data["Stc"]["TalkEvent"]=193
	tDragonMaster_Data["Stc"]["TalkType"]=61

	-- ===300天石（赠）包
	-- ===索引: 3321119
	tDragonMaster_Data[3321119] = {}
	tDragonMaster_Data[3321119]["LogId"] = 12001376
	tDragonMaster_Data[3321119]["DeleteItem"] = {}
	tDragonMaster_Data[3321119]["DeleteItem"][1]={}
	tDragonMaster_Data[3321119]["DeleteItem"][1]["Id"]=3321119
	tDragonMaster_Data[3321119]["RewardEMoneyMono"] = {}
	tDragonMaster_Data[3321119]["RewardEMoneyMono"]["Value"] = 300 -- 天石（赠）
	tDragonMaster_Data[3321119]["EmoneyLog"] = "10000	0359	0	0	-300	"
	tDragonMaster_Data[3321119]["RewardEffect"] = {}
	tDragonMaster_Data[3321119]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonMaster_Data[3321119]["RewardEffect"]["Effect"] = "angelwing"


	-- ===对话奖励
	-- ===索引: "FirstTalkReward",1
	tDragonMaster_Data["FirstTalkReward"] = {}
	tDragonMaster_Data["FirstTalkReward"][1] = {}
	tDragonMaster_Data["FirstTalkReward"][1]["ItemChanceSum"] = 10000
	tDragonMaster_Data["FirstTalkReward"][1]["LogId"] = 12001376
	-- 龙鳞*1 - 30.00%
	tDragonMaster_Data["FirstTalkReward"][1][1] = {}
	tDragonMaster_Data["FirstTalkReward"][1][1]["RandomItemChanceType"] = 2
	tDragonMaster_Data["FirstTalkReward"][1][1]["ItemChance"] = 3000
	tDragonMaster_Data["FirstTalkReward"][1][1]["RewardItem"] = {}
	tDragonMaster_Data["FirstTalkReward"][1][1]["RewardItem"][1] = {}
	tDragonMaster_Data["FirstTalkReward"][1][1]["RewardItem"][1]["Id"] = 3321117 -- 【库】 3321117 【cnzf库里没有该物品】[属性:]【表格】龙鳞*1
	tDragonMaster_Data["FirstTalkReward"][1][1]["RewardItem"][1]["Attr"] = "0 1" --  3321117 【cnzf库里没有该物品】*1
	tDragonMaster_Data["FirstTalkReward"][1][1]["RewardEffect"] = {}
	tDragonMaster_Data["FirstTalkReward"][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonMaster_Data["FirstTalkReward"][1][1]["RewardEffect"]["Effect"] = "angelwing"
	tDragonMaster_Data["FirstTalkReward"][1][1]["Num"] = 1
	-- 龙鳞*2 - 40.00%
	tDragonMaster_Data["FirstTalkReward"][1][2] = {}
	tDragonMaster_Data["FirstTalkReward"][1][2]["RandomItemChanceType"] = 2
	tDragonMaster_Data["FirstTalkReward"][1][2]["ItemChance"] = 4000
	tDragonMaster_Data["FirstTalkReward"][1][2]["RewardItem"] = {}
	tDragonMaster_Data["FirstTalkReward"][1][2]["RewardItem"][1] = {}
	tDragonMaster_Data["FirstTalkReward"][1][2]["RewardItem"][1]["Id"] = 3321117 -- 【库】 3321117 【cnzf库里没有该物品】[属性:]【表格】龙鳞*2
	tDragonMaster_Data["FirstTalkReward"][1][2]["RewardItem"][1]["Attr"] = "0 2" --  3321117 【cnzf库里没有该物品】*2
	tDragonMaster_Data["FirstTalkReward"][1][2]["RewardEffect"] = {}
	tDragonMaster_Data["FirstTalkReward"][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonMaster_Data["FirstTalkReward"][1][2]["RewardEffect"]["Effect"] = "angelwing"
	tDragonMaster_Data["FirstTalkReward"][1][2]["Num"] = 2
	-- 龙鳞*3 - 30.00%
	tDragonMaster_Data["FirstTalkReward"][1][3] = {}
	tDragonMaster_Data["FirstTalkReward"][1][3]["RandomItemChanceType"] = 2
	tDragonMaster_Data["FirstTalkReward"][1][3]["ItemChance"] = 3000
	tDragonMaster_Data["FirstTalkReward"][1][3]["RewardItem"] = {}
	tDragonMaster_Data["FirstTalkReward"][1][3]["RewardItem"][1] = {}
	tDragonMaster_Data["FirstTalkReward"][1][3]["RewardItem"][1]["Id"] = 3321117 -- 【库】 3321117 【cnzf库里没有该物品】[属性:]【表格】龙鳞*3
	tDragonMaster_Data["FirstTalkReward"][1][3]["RewardItem"][1]["Attr"] = "0 3" --  3321117 【cnzf库里没有该物品】*3
	tDragonMaster_Data["FirstTalkReward"][1][3]["RewardEffect"] = {}
	tDragonMaster_Data["FirstTalkReward"][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonMaster_Data["FirstTalkReward"][1][3]["RewardEffect"]["Effect"] = "angelwing"
	tDragonMaster_Data["FirstTalkReward"][1][3]["Num"] = 3


	-- ===驯龙秘宝
	-- ===索引: 3321116,1
	tDragonMaster_Data[3321116] = {}
	tDragonMaster_Data[3321116][1] = {}
	tDragonMaster_Data[3321116][1]["ItemChanceSum"] = 100000
	tDragonMaster_Data[3321116][1]["LogId"] = 12001376
	-- 龙鳞*1 - 25%
	tDragonMaster_Data[3321116][1][1] = {}
	tDragonMaster_Data[3321116][1][1]["RandomItemChanceType"] = 2
	tDragonMaster_Data[3321116][1][1]["ItemChance"] = 25000
	tDragonMaster_Data[3321116][1][1]["RewardItem"] = {}
	tDragonMaster_Data[3321116][1][1]["RewardItem"][1] = {}
	tDragonMaster_Data[3321116][1][1]["RewardItem"][1]["Id"] = 3321117 -- 【库】 3321117 【cnzf库里没有该物品】[属性:]【表格】龙鳞*1
	tDragonMaster_Data[3321116][1][1]["RewardItem"][1]["Attr"] = "0 1" --  3321117 【cnzf库里没有该物品】*1
	tDragonMaster_Data[3321116][1][1]["RewardEffect"] = {}
	tDragonMaster_Data[3321116][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonMaster_Data[3321116][1][1]["RewardEffect"]["Effect"] = "angelwing"
	tDragonMaster_Data[3321116][1][1]["Broadcast"] = 0
	-- 龙鳞*2 - 30%
	tDragonMaster_Data[3321116][1][2] = {}
	tDragonMaster_Data[3321116][1][2]["RandomItemChanceType"] = 2
	tDragonMaster_Data[3321116][1][2]["ItemChance"] = 30000
	tDragonMaster_Data[3321116][1][2]["RewardItem"] = {}
	tDragonMaster_Data[3321116][1][2]["RewardItem"][1] = {}
	tDragonMaster_Data[3321116][1][2]["RewardItem"][1]["Id"] = 3321117 -- 【库】 3321117 【cnzf库里没有该物品】[属性:]【表格】龙鳞*2
	tDragonMaster_Data[3321116][1][2]["RewardItem"][1]["Attr"] = "0 2" --  3321117 【cnzf库里没有该物品】*2
	tDragonMaster_Data[3321116][1][2]["RewardEffect"] = {}
	tDragonMaster_Data[3321116][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonMaster_Data[3321116][1][2]["RewardEffect"]["Effect"] = "angelwing"
	tDragonMaster_Data[3321116][1][2]["Broadcast"] = 0
	-- 龙鳞*3 - 31%
	tDragonMaster_Data[3321116][1][3] = {}
	tDragonMaster_Data[3321116][1][3]["RandomItemChanceType"] = 2
	tDragonMaster_Data[3321116][1][3]["ItemChance"] = 31000
	tDragonMaster_Data[3321116][1][3]["RewardItem"] = {}
	tDragonMaster_Data[3321116][1][3]["RewardItem"][1] = {}
	tDragonMaster_Data[3321116][1][3]["RewardItem"][1]["Id"] = 3321117 -- 【库】 3321117 【cnzf库里没有该物品】[属性:]【表格】龙鳞*3
	tDragonMaster_Data[3321116][1][3]["RewardItem"][1]["Attr"] = "0 3" --  3321117 【cnzf库里没有该物品】*3
	tDragonMaster_Data[3321116][1][3]["RewardEffect"] = {}
	tDragonMaster_Data[3321116][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonMaster_Data[3321116][1][3]["RewardEffect"]["Effect"] = "angelwing"
	tDragonMaster_Data[3321116][1][3]["Broadcast"] = 0
	-- 龙鳞*5 - 5%
	tDragonMaster_Data[3321116][1][4] = {}
	tDragonMaster_Data[3321116][1][4]["RandomItemChanceType"] = 2
	tDragonMaster_Data[3321116][1][4]["ItemChance"] = 5000
	tDragonMaster_Data[3321116][1][4]["RewardItem"] = {}
	tDragonMaster_Data[3321116][1][4]["RewardItem"][1] = {}
	tDragonMaster_Data[3321116][1][4]["RewardItem"][1]["Id"] = 3321117 -- 【库】 3321117 【cnzf库里没有该物品】[属性:]【表格】龙鳞*5
	tDragonMaster_Data[3321116][1][4]["RewardItem"][1]["Attr"] = "0 5" --  3321117 【cnzf库里没有该物品】*5
	tDragonMaster_Data[3321116][1][4]["RewardEffect"] = {}
	tDragonMaster_Data[3321116][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonMaster_Data[3321116][1][4]["RewardEffect"]["Effect"] = "angelwing"
	tDragonMaster_Data[3321116][1][4]["Broadcast"] = 0
	-- 龙牙*1 - 8.499%
	tDragonMaster_Data[3321116][1][5] = {}
	tDragonMaster_Data[3321116][1][5]["RandomItemChanceType"] = 2
	tDragonMaster_Data[3321116][1][5]["ItemChance"] = 8499
	tDragonMaster_Data[3321116][1][5]["RewardItem"] = {}
	tDragonMaster_Data[3321116][1][5]["RewardItem"][1] = {}
	tDragonMaster_Data[3321116][1][5]["RewardItem"][1]["Id"] = 3321118 -- 【库】 3321118 【cnzf库里没有该物品】[属性:]【表格】龙牙*1
	tDragonMaster_Data[3321116][1][5]["RewardItem"][1]["Attr"] = "0 1" --  3321118 【cnzf库里没有该物品】*1
	tDragonMaster_Data[3321116][1][5]["RewardEffect"] = {}
	tDragonMaster_Data[3321116][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonMaster_Data[3321116][1][5]["RewardEffect"]["Effect"] = "angelwing"
	tDragonMaster_Data[3321116][1][5]["Broadcast"] = 0
	-- 龙牙*3 - 0.500%
	tDragonMaster_Data[3321116][1][6] = {}
	tDragonMaster_Data[3321116][1][6]["RandomItemChanceType"] = 2
	tDragonMaster_Data[3321116][1][6]["ItemChance"] = 500
	tDragonMaster_Data[3321116][1][6]["RewardItem"] = {}
	tDragonMaster_Data[3321116][1][6]["RewardItem"][1] = {}
	tDragonMaster_Data[3321116][1][6]["RewardItem"][1]["Id"] = 3321118 -- 【库】 3321118 【cnzf库里没有该物品】[属性:]【表格】龙牙*3
	tDragonMaster_Data[3321116][1][6]["RewardItem"][1]["Attr"] = "0 3" --  3321118 【cnzf库里没有该物品】*3
	tDragonMaster_Data[3321116][1][6]["RewardEffect"] = {}
	tDragonMaster_Data[3321116][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonMaster_Data[3321116][1][6]["RewardEffect"]["Effect"] = "angelwing"
	tDragonMaster_Data[3321116][1][6]["Broadcast"] = 1
	-- 非赠练气+1券 - 0.001%
	tDragonMaster_Data[3321116][1][7] = {}
	tDragonMaster_Data[3321116][1][7]["RandomItemChanceType"] = 2
	tDragonMaster_Data[3321116][1][7]["ItemChance"] = 1
	tDragonMaster_Data[3321116][1][7]["RewardItem"] = {}
	tDragonMaster_Data[3321116][1][7]["RewardItem"][1] = {}
	tDragonMaster_Data[3321116][1][7]["RewardItem"][1]["Id"] = 711903 -- 【库】 711903 【cnzf库里没有该物品】[属性:]【表格】非赠练气+1券
	tDragonMaster_Data[3321116][1][7]["RewardItem"][1]["Attr"] = "0 1" --  711903 【cnzf库里没有该物品】*1
	tDragonMaster_Data[3321116][1][7]["RewardEffect"] = {}
	tDragonMaster_Data[3321116][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonMaster_Data[3321116][1][7]["RewardEffect"]["Effect"] = "angelwing"
	tDragonMaster_Data[3321116][1][7]["Broadcast"] = 1

	--随机对白
	tDragonMaster_Data["RandomDialog"]={}
	tDragonMaster_Data["RandomDialog"][1]={}
	tDragonMaster_Data["RandomDialog"][1]["ItemChanceSum"] = 9000
	--2-1
	tDragonMaster_Data["RandomDialog"][1][1] = {}
	tDragonMaster_Data["RandomDialog"][1][1]["RandomItemChanceType"] = 2
	tDragonMaster_Data["RandomDialog"][1][1]["ItemChance"] = 3000
	tDragonMaster_Data["RandomDialog"][1][1]["DialogIndex"] = "2-1"
	
	--2-2
	tDragonMaster_Data["RandomDialog"][1][2] = {}
	tDragonMaster_Data["RandomDialog"][1][2]["RandomItemChanceType"] = 2
	tDragonMaster_Data["RandomDialog"][1][2]["ItemChance"] = 3000
	tDragonMaster_Data["RandomDialog"][1][2]["DialogIndex"] = "2-2"
	
	--2-3
	tDragonMaster_Data["RandomDialog"][1][3] = {}
	tDragonMaster_Data["RandomDialog"][1][3]["RandomItemChanceType"] = 2
	tDragonMaster_Data["RandomDialog"][1][3]["ItemChance"] = 3000
	tDragonMaster_Data["RandomDialog"][1][3]["DialogIndex"] = "2-3"
	
--商店npcid
	tDragonMaster_Data["ShopID"]={}
	--天石商店
	tDragonMaster_Data["ShopID"]["EmoneyShop"]=432
	--兑换商店
	tDragonMaster_Data["ShopID"]["ExchangeShop"]=24126
	
	
	-- ===驯龙秘宝*100
	-- ===索引: 3321129
	tDragonMaster_Data[3321129] = {}
	tDragonMaster_Data[3321129]["LogId"] = 12001376
	tDragonMaster_Data[3321129]["DeleteItem"] = {}
	tDragonMaster_Data[3321129]["DeleteItem"][1]={}
	tDragonMaster_Data[3321129]["DeleteItem"][1]["Id"]=3321129
	tDragonMaster_Data[3321129]["RewardItem"] = {}
	tDragonMaster_Data[3321129]["RewardItem"][1] = {}
	tDragonMaster_Data[3321129]["RewardItem"][1]["Id"] = 3321116 -- 【库】 3321116 【ipadzf库里没有该物品】[属性:]【表格】驯龙秘宝*100
	tDragonMaster_Data[3321129]["RewardItem"][1]["Attr"] = "0 100" --  3321116 【ipadzf库里没有该物品】*100
	tDragonMaster_Data[3321129]["RewardEffect"] = {}
	tDragonMaster_Data[3321129]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonMaster_Data[3321129]["RewardEffect"]["Effect"] = "angelwing"


	-- ===驯龙秘宝*200
	-- ===索引: 3321130
	tDragonMaster_Data[3321130] = {}
	tDragonMaster_Data[3321130]["LogId"] = 12001376
	tDragonMaster_Data[3321130]["DeleteItem"] = {}
	tDragonMaster_Data[3321130]["DeleteItem"][1]={}
	tDragonMaster_Data[3321130]["DeleteItem"][1]["Id"]=3321130
	tDragonMaster_Data[3321130]["RewardItem"] = {}
	tDragonMaster_Data[3321130]["RewardItem"][1] = {}
	tDragonMaster_Data[3321130]["RewardItem"][1]["Id"] = 3321116 -- 【库】 3321116 【ipadzf库里没有该物品】[属性:]【表格】驯龙秘宝*200
	tDragonMaster_Data[3321130]["RewardItem"][1]["Attr"] = "0 200" --  3321116 【ipadzf库里没有该物品】*200
	tDragonMaster_Data[3321130]["RewardEffect"] = {}
	tDragonMaster_Data[3321130]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonMaster_Data[3321130]["RewardEffect"]["Effect"] = "angelwing"


	-- ===驯龙秘宝*500
	-- ===索引: 3321131
	tDragonMaster_Data[3321131] = {}
	tDragonMaster_Data[3321131]["LogId"] = 12001376
	tDragonMaster_Data[3321131]["DeleteItem"] = {}
	tDragonMaster_Data[3321131]["DeleteItem"][1]={}
	tDragonMaster_Data[3321131]["DeleteItem"][1]["Id"]=3321131
	tDragonMaster_Data[3321131]["RewardItem"] = {}
	tDragonMaster_Data[3321131]["RewardItem"][1] = {}
	tDragonMaster_Data[3321131]["RewardItem"][1]["Id"] = 3321116 -- 【库】 3321116 【ipadzf库里没有该物品】[属性:]【表格】驯龙秘宝*500
	tDragonMaster_Data[3321131]["RewardItem"][1]["Attr"] = "0 500" --  3321116 【ipadzf库里没有该物品】*500
	tDragonMaster_Data[3321131]["RewardEffect"] = {}
	tDragonMaster_Data[3321131]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonMaster_Data[3321131]["RewardEffect"]["Effect"] = "angelwing"


	
	-- ===龙鳞,3321117
	-- ===索引: 3321117
	-- ===删除:3321117,0
	-- ===
	tDragonMaster_Data[3321117] = {}
	tDragonMaster_Data[3321117]["LogId"] = 12001376
	tDragonMaster_Data[3321117]["DeleteItem"] = {}
	tDragonMaster_Data[3321117]["DeleteItem"][1] = {}
	tDragonMaster_Data[3321117]["DeleteItem"][1]["Id"] = 3321117 -- 【库】 3321117 【enzf库里没有该物品】[属性:]
	tDragonMaster_Data[3321117]["DeleteItem"][1] ["ItemNum"]=0
	tDragonMaster_Data[3321117]["RewardStrengthValue"] = {}
	tDragonMaster_Data[3321117]["RewardStrengthValue"]["Value"] = 100 -- 气力值
	tDragonMaster_Data[3321117]["RewardEffect"] = {}
	tDragonMaster_Data[3321117]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonMaster_Data[3321117]["RewardEffect"]["Effect"] = "angelwing"


	-- ===龙牙,3321118
	-- ===索引: 3321118
	-- ===删除:3321118,0
	-- ===
	tDragonMaster_Data[3321118] = {}
	tDragonMaster_Data[3321118]["LogId"] = 12001376
	tDragonMaster_Data[3321118]["DeleteItem"] = {}
	tDragonMaster_Data[3321118]["DeleteItem"][1] = {}
	tDragonMaster_Data[3321118]["DeleteItem"][1]["Id"] = 3321118 -- 【库】 3321118 【enzf库里没有该物品】[属性:]
	tDragonMaster_Data[3321118]["DeleteItem"][1] ["ItemNum"]=0
	tDragonMaster_Data[3321118]["RewardStrengthValue"] = {}
	tDragonMaster_Data[3321118]["RewardStrengthValue"]["Value"] = 1000 -- 气力值
	tDragonMaster_Data[3321118]["RewardEffect"] = {}
	tDragonMaster_Data[3321118]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonMaster_Data[3321118]["RewardEffect"]["Effect"] = "angelwing"
	
	--过期删除log
	tDragonMaster_Data["Log"]={}
	tDragonMaster_Data["Log"]["Overtime"]="0,0,%d,%d,12001376,1,0,0"
	tDragonMaster_Data["Log"]["EmoneyLog"]="10000	0368	0	0	%d	"
	
	
	-- ===PurpleRomancePack
	tDragonMaster_Data[3321570] = {}
	tDragonMaster_Data[3321570]["LogId"] = 12001376
	tDragonMaster_Data[3321570]["DeleteItem"] = {}
	tDragonMaster_Data[3321570]["DeleteItem"][1]={}
	tDragonMaster_Data[3321570]["DeleteItem"][1]["Id"]=3321570
	tDragonMaster_Data[3321570]["RewardItem"] = {}
	tDragonMaster_Data[3321570]["RewardItem"][1] = {}
	tDragonMaster_Data[3321570]["RewardItem"][1]["Id"] = 194865
	tDragonMaster_Data[3321570]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDragonMaster_Data[3321570]["RewardEffect"] = {}
	tDragonMaster_Data[3321570]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonMaster_Data[3321570]["RewardEffect"]["Effect"] = "angelwing"
	
	-- ===ImmortalRobePack
	tDragonMaster_Data[3321571] = {}
	tDragonMaster_Data[3321571]["LogId"] = 12001376
	tDragonMaster_Data[3321571]["DeleteItem"] = {}
	tDragonMaster_Data[3321571]["DeleteItem"][1]={}
	tDragonMaster_Data[3321571]["DeleteItem"][1]["Id"]=3321571
	tDragonMaster_Data[3321571]["RewardItem"] = {}
	tDragonMaster_Data[3321571]["RewardItem"][1] = {}
	tDragonMaster_Data[3321571]["RewardItem"][1]["Id"] = 193725
	tDragonMaster_Data[3321571]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDragonMaster_Data[3321571]["RewardEffect"] = {}
	tDragonMaster_Data[3321571]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonMaster_Data[3321571]["RewardEffect"]["Effect"] = "angelwing"
	
	-- ===FlushofHeartsPack
	tDragonMaster_Data[3321572] = {}
	tDragonMaster_Data[3321572]["LogId"] = 12001376
	tDragonMaster_Data[3321572]["DeleteItem"] = {}
	tDragonMaster_Data[3321572]["DeleteItem"][1]={}
	tDragonMaster_Data[3321572]["DeleteItem"][1]["Id"]=3321572
	tDragonMaster_Data[3321572]["RewardItem"] = {}
	tDragonMaster_Data[3321572]["RewardItem"][1] = {}
	tDragonMaster_Data[3321572]["RewardItem"][1]["Id"] = 193715
	tDragonMaster_Data[3321572]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDragonMaster_Data[3321572]["RewardEffect"] = {}
	tDragonMaster_Data[3321572]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonMaster_Data[3321572]["RewardEffect"]["Effect"] = "angelwing"
	
	-- ===AngelicRobePack
	tDragonMaster_Data[3321573] = {}
	tDragonMaster_Data[3321573]["LogId"] = 12001376
	tDragonMaster_Data[3321573]["DeleteItem"] = {}
	tDragonMaster_Data[3321573]["DeleteItem"][1]={}
	tDragonMaster_Data[3321573]["DeleteItem"][1]["Id"]=3321573
	tDragonMaster_Data[3321573]["RewardItem"] = {}
	tDragonMaster_Data[3321573]["RewardItem"][1] = {}
	tDragonMaster_Data[3321573]["RewardItem"][1]["Id"] = 194375
	tDragonMaster_Data[3321573]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDragonMaster_Data[3321573]["RewardEffect"] = {}
	tDragonMaster_Data[3321573]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonMaster_Data[3321573]["RewardEffect"]["Effect"] = "angelwing"
	
	-- ===ChristmasHarmonyPack
	tDragonMaster_Data[3321574] = {}
	tDragonMaster_Data[3321574]["LogId"] = 12001376
	tDragonMaster_Data[3321574]["DeleteItem"] = {}
	tDragonMaster_Data[3321574]["DeleteItem"][1]={}
	tDragonMaster_Data[3321574]["DeleteItem"][1]["Id"]=3321574
	tDragonMaster_Data[3321574]["RewardItem"] = {}
	tDragonMaster_Data[3321574]["RewardItem"][1] = {}
	tDragonMaster_Data[3321574]["RewardItem"][1]["Id"] = 195015
	tDragonMaster_Data[3321574]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tDragonMaster_Data[3321574]["RewardEffect"] = {}
	tDragonMaster_Data[3321574]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonMaster_Data[3321574]["RewardEffect"]["Effect"] = "angelwing"
	
	-- ===RockingRomance(Fantasy)Pack
	tDragonMaster_Data[3321575] = {}
	tDragonMaster_Data[3321575]["LogId"] = 12001376
	tDragonMaster_Data[3321575]["DeleteItem"] = {}
	tDragonMaster_Data[3321575]["DeleteItem"][1]={}
	tDragonMaster_Data[3321575]["DeleteItem"][1]["Id"]=3321575
	tDragonMaster_Data[3321575]["RewardItem"] = {}
	tDragonMaster_Data[3321575]["RewardItem"][1] = {}
	tDragonMaster_Data[3321575]["RewardItem"][1]["Id"] = 195605
	tDragonMaster_Data[3321575]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tDragonMaster_Data[3321575]["RewardEffect"] = {}
	tDragonMaster_Data[3321575]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonMaster_Data[3321575]["RewardEffect"]["Effect"] = "angelwing"
	
	-- ===ButterflyRosePack
	tDragonMaster_Data[3321576] = {}
	tDragonMaster_Data[3321576]["LogId"] = 12001376
	tDragonMaster_Data[3321576]["DeleteItem"] = {}
	tDragonMaster_Data[3321576]["DeleteItem"][1]={}
	tDragonMaster_Data[3321576]["DeleteItem"][1]["Id"]=3321576
	tDragonMaster_Data[3321576]["RewardItem"] = {}
	tDragonMaster_Data[3321576]["RewardItem"][1] = {}
	tDragonMaster_Data[3321576]["RewardItem"][1]["Id"] = 193625
	tDragonMaster_Data[3321576]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tDragonMaster_Data[3321576]["RewardEffect"] = {}
	tDragonMaster_Data[3321576]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonMaster_Data[3321576]["RewardEffect"]["Effect"] = "angelwing"
	
	-- ===AuspiciousCloudPack
	tDragonMaster_Data[3321577] = {}
	tDragonMaster_Data[3321577]["LogId"] = 12001376
	tDragonMaster_Data[3321577]["DeleteItem"] = {}
	tDragonMaster_Data[3321577]["DeleteItem"][1]={}
	tDragonMaster_Data[3321577]["DeleteItem"][1]["Id"]=3321577
	tDragonMaster_Data[3321577]["RewardItem"] = {}
	tDragonMaster_Data[3321577]["RewardItem"][1] = {}
	tDragonMaster_Data[3321577]["RewardItem"][1]["Id"] = 200629
	tDragonMaster_Data[3321577]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tDragonMaster_Data[3321577]["RewardEffect"] = {}
	tDragonMaster_Data[3321577]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonMaster_Data[3321577]["RewardEffect"]["Effect"] = "angelwing"
	
	-- ===CelestialDragon(Freedom)Pack
	tDragonMaster_Data[3321578] = {}
	tDragonMaster_Data[3321578]["LogId"] = 12001376
	tDragonMaster_Data[3321578]["DeleteItem"] = {}
	tDragonMaster_Data[3321578]["DeleteItem"][1]={}
	tDragonMaster_Data[3321578]["DeleteItem"][1]["Id"]=3321578
	tDragonMaster_Data[3321578]["RewardItem"] = {}
	tDragonMaster_Data[3321578]["RewardItem"][1] = {}
	tDragonMaster_Data[3321578]["RewardItem"][1]["Id"] = 205000
	tDragonMaster_Data[3321578]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tDragonMaster_Data[3321578]["RewardEffect"] = {}
	tDragonMaster_Data[3321578]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonMaster_Data[3321578]["RewardEffect"]["Effect"] = "angelwing"
----------------------------------逻辑部分---------------------------------------------
--随机对白
function DragonMaster_RandomDialog()
--活动时间判断
	if not Sys_ChkFullTime(tActivityTime["DragonMaster"]["ActTime"])  then
		return 
	end
	
	
	--首次对话 给奖励
	local nTalkEvent=tDragonMaster_Data["Stc"]["TalkEvent"]
	local nTalkType=tDragonMaster_Data["Stc"]["TalkType"]
	
	--隔天清掩码
	Task_StcReset(nTalkEvent,nTalkType)
	
	--随机一个对白
	local tReward = RewardTemplate_NewRandom(tDragonMaster_Data["RandomDialog"], 1)
	local sDialogIndex = tReward[1]["tAward"][1]["DialogIndex"]
	
	LinkNpcGossipFunc_New(24125,sDialogIndex)
	
	
	if Task_ChkStcValue(nTalkEvent,nTalkType,"==",0) then
	
		--背包空间判断
		if not RewardTemplate_ChkRandomSpace(tDragonMaster_Data["FirstTalkReward"], 1) then
			return 
		end
		--加掩码
		Task_AddStatistic(nTalkEvent,nTalkType,1,1)
		Task_SetStcTimestamp(nTalkEvent,nTalkType,0)
		
		--给奖励
		local tTempReward =RewardTemplate_NewRandom(tDragonMaster_Data["FirstTalkReward"], 1) 
		local nRewardNum = tTempReward[1]["tAward"][1]["Num"]
		local sEmoneyLog=string.format(tDragonMaster_Data["Log"]["EmoneyLog"],nRewardNum)
		Sys_SaveEmoneyBuy(sEmoneyLog)
	end
end



--打开天石商店
function DragonMaster_OpenEmoneyShop(nShopId)
--活动时间判断
	if not Sys_ChkFullTime(tActivityTime["DragonMaster"]["ActTime"])  then
		return 
	end
	local nUserId = Get_UserId()
--打开天石商店
	User_OpenDialog(0,nShopId,nUserId)
end



--打开兑换商店
function DragonMaster_OpenExchangeShop()
--活动时间判断
	if CommonFunc_GetBeforeActivityTime(tActivityTime["DragonMaster"]["ActTime"])  then
		return 
	end 
	
	if CommonFunc_GetAfterActivityTime(tActivityTime["DragonMaster"]["ActTime"]) then 
		tNpcGossip[24126]["Text1-1"] = {111}
		tNpcGossip[24126]["tOption1-1"] = {1}
		return LinkNpcGossipFunc_New(24126,"1-1")
	end 
	
	User_OpenExchangeShop(tDragonMaster_Data["ShopID"]["ExchangeShop"])
end 


--使用驯龙秘宝
function DragonMaster_UseRandomPack(nItemId)
	--背包空间判断
	local nSpace = RewardTemplate_GetRandomSpace(tDragonMaster_Data[nItemId],1)
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(string.format(tDragonMaster_Text["SystemTips"]["NoSpace"],nSpace))
		return 
	end
	
	if Item_ChkMulItem(nItemId,nItemId,1) and Item_DelItem(nItemId) then
		local tReward = RewardTemplate_NewRandom(tDragonMaster_Data[nItemId],1)
		local nBroadcast=tReward[1]["tAward"][1]["Broadcast"]
		--全服公告
		if nBroadcast==0 then
			return
		else
			local nUserId = Get_UserId()
			local sUserName = Get_UserName(nUserId)
			local nRewardItemID=tReward[1]["tAward"][1]["RewardItem"][1]["Id"]
			local sBroadcast=string.format(tDragonMaster_Text["Broadcast"]["GetRareReward"][nRewardItemID],sUserName)
			Sys_SystemBroadcast(sBroadcast)
		end
	end 
end 

--任务道具寻路
function DragonMaster_UseTaskItem(nItemId)
	--检测物品
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return
	end
	--活动前
	if CommonFunc_GetBeforeActivityTime(tActivityTime["DragonMaster"]["ActTime"])  then
		return 
	end 
	
	--活动后，过期删除
	if CommonFunc_GetAfterActivityTime(tActivityTime["DragonMaster"]["ActTime"]) then
		local nNum = Get_CountItemType(nItemId,0)
		local tReward = CommonFunc_Copy(tDragonMaster_Data[nItemId])
		tReward["DeleteItem"][1] ["ItemNum"]=nNum
		tReward["RewardStrengthValue"]["Value"]=nNum*tReward["RewardStrengthValue"]["Value"]
		if RewardTemplate_UseItem(tReward) then 
			return User_TalkChannel2005(tDragonMaster_Text["SystemTips"]["OutOfTime"])
		end
		-- if Item_ChkMulItem(nItemId,nItemId,1) and Item_DelAllItemByType(nItemId) then
			-- local sLog =string.format(tDragonMaster_Data["Log"]["Overtime"],nItemId,nNum)
			-- Sys_SaveActionFestivalLog(sLog)
			-- User_TalkChannel2005(tDragonMaster_Text["SystemTips"]["OutOfTime"])
		-- end 
		-- return 
	end 
	
	NpcPosition_PathFind(tDragonMaster_Data["ShopID"]["ExchangeShop"])
end
----------------------------------物品部分---------------------------------------------
--驯龙秘宝
tItem[3321116] = tItem[3321116] or {}
tItem[3321116]["Function"] = function(nItemId,sItemName)
	DragonMaster_UseRandomPack(nItemId)
end

tItem[3321129] = tItem[3321129] or {}
tItem[3321129]["Function"] = function(nItemId,sItemName)
	local nUserId = Get_UserId()
	local bJudge = TermsOfUse_Main(nItemId,tDragonMaster_Data[nItemId])
	
	if not bJudge then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tDragonMaster_Data[nItemId],nUserId,bJudge)
end
tItem[3321130] = tItem[3321129]
tItem[3321131] = tItem[3321129]

--赠点包
tItem[3321119] = tItem[3321129]

--外套包
tItem[3321570] = tItem[3321129]
tItem[3321571] = tItem[3321129]
tItem[3321572] = tItem[3321129]
tItem[3321573] = tItem[3321129]
tItem[3321574] = tItem[3321129]
tItem[3321575] = tItem[3321129]
tItem[3321576] = tItem[3321129]
tItem[3321577] = tItem[3321129]
tItem[3321578] = tItem[3321129]

--使用任务物品寻路
--龙鳞、龙牙
tItem[3321117] = tItem[3321117] or {}
tItem[3321117]["Function"] = function(nItemId,sItemName)
	DragonMaster_UseTaskItem(nItemId)
end
tItem[3321118] = tItem[3321117]
----------------------------------NPC部分---------------------------------------------
tNpcFace[6481] = 95
tNpcGossip[24125]= tNpcGossip[24125] or DefaultNpc:new{}
tNpcGossip[24125]["OptionHidden"] = 1
tNpcGossip[24125]["DialogueText"] = tDragonMaster_Text[24125]

--【驯龙高手】小嗝嗝
--活动前
tNpcGossip[24125]["Text1-1"] = {111,112,113,114}
tNpcGossip[24125]["tOption1-1"] = {111}
tNpcGossip[24125]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["DragonMaster"]["ActTime"])
end

--活动后
tNpcGossip[24125]["Text1-2"] = {121,122}
tNpcGossip[24125]["tOption1-2"] = {121}
tNpcGossip[24125]["ChkFunc1-2"] = function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["DragonMaster"]["ActTime"])
end

--活动中
tNpcGossip[24125]["Text1-3"] = {131,132,133,134}
tNpcGossip[24125]["tOption1-3"] = {131,132}
tNpcGossip[24125]["ChkFunc1-3"]= function()
--判断活动时间
	if not Sys_ChkFullTime(tActivityTime["DragonMaster"]["ActTime"])  then
		return false
	else
		local nTalkEvent=tDragonMaster_Data["Stc"]["TalkEvent"]
		local nTalkType=tDragonMaster_Data["Stc"]["TalkType"]
	
		--隔天清掩码
		Task_StcReset(nTalkEvent,nTalkType)
		return true
	end 
end

tNpcGossip[24125]["OptionFunc131"] = "DragonMaster_RandomDialog"
tNpcGossip[24125]["OptionFunc132"] = "DragonMaster_OpenEmoneyShop</N>432"


tNpcGossip[24125]["Text2-1"] = {211,212}
tNpcGossip[24125]["tOption2-1"] = {211}

tNpcGossip[24125]["Text2-2"] = {221,222}
tNpcGossip[24125]["tOption2-2"] = {221}

tNpcGossip[24125]["Text2-3"] = {231,232}
tNpcGossip[24125]["tOption2-3"] = {231}

--无牙仔
--活动后
tNpcFace[4506] = 1975
tNpcGossip[24126]= tNpcGossip[24126] or DefaultNpc:new{}
tNpcGossip[24126]["OptionHidden"] = 1
tNpcGossip[24126]["DialogueText"] = tDragonMaster_Text[24126]

tNpcGossip[24126]["Text1-1"] = {111}
tNpcGossip[24126]["tOption1-1"] = {111}





