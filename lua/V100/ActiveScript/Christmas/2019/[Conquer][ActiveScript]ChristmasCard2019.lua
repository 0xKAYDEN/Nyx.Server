------------------------------------------------------------------------------------
--Name：        191118[简体征服][活动脚本]全球圣诞元旦活动-互送贺卡
--Creator:      茅志伟
--Created:      2019/11/18
------------------------------------------------------------------------------------

-- 命名前缀 tChristmasCard2019_

-- lua.ini = 41629
-- 41629 = V100\ActiveScript\Christmas\2019\[Conquer][ActiveScript]ChristmasCard2019.lua
-- 41629 = V100\活动脚本\圣诞元旦活动\2019\[征服][活动脚本]全球圣诞元旦活动-互送贺卡.lua
-- LogId = 12001744

-- GlobalId  53930
-- 记录当前圣诞树上的贺卡信息
-- data1: 记录玩家国籍，
-- data2：记录玩家祝福内容序号
-- datastro1：记录玩家名字

-- taskId 35064
-- data1 记录玩家当天是否领取了贺卡 0未领取  1已领取  
-- data2记录玩家当天是否寄出贺卡  0未寄出  1已寄出


local tChristmasCard2019_Stc = {}
--记录玩家当天是否领取了贺卡
tChristmasCard2019_Stc["RewardCard"] = {}
tChristmasCard2019_Stc["RewardCard"]["EventType"] = 210
tChristmasCard2019_Stc["RewardCard"]["DataType"] = 48
--记录玩家当天是否寄出了贺卡
tChristmasCard2019_Stc["SendCard"] = {}
tChristmasCard2019_Stc["SendCard"]["EventType"] = 210
tChristmasCard2019_Stc["SendCard"]["DataType"] = 49

local tChristmasCard2019_TaskId = {}
-- data1 记录玩家当天是否领取了贺卡 0未领取  1已领取  
-- data2记录玩家当天是否寄出贺卡  0未寄出  1已寄出
-- tChristmasCard2019_TaskId["RewardCard"] = 35063
tChristmasCard2019_TaskId["RewardCard"] = 35064
tChristmasCard2019_TaskId["TaskId"] = 35065 
--记录玩家当天是否寄出了贺卡
-- tChristmasCard2019_TaskId["SendCard"] = 

local tChristmasCard2019_Log = {}
tChristmasCard2019_Log["DeleteLog"] = "0,0,%d,%d,0,12001739,5[2],0,0"

local tChristmasCard2019_Data = {}

tChristmasCard2019_Data["GlobalId"] = {}
tChristmasCard2019_Data["GlobalId"][1] = 53930

-- 不同语种的贺卡id
tChristmasCard2019_Data["CardId"] = {}
tChristmasCard2019_Data["CardId"][1] = 3600202        -- 中文
tChristmasCard2019_Data["CardId"][2] = 3600203        -- 英文
tChristmasCard2019_Data["CardId"][3] = 3600204        -- 西语
tChristmasCard2019_Data["CardId"][4] = 3600205        -- 阿语

tChristmasCard2019_Data["CardNation"] = {}
tChristmasCard2019_Data["CardNation"][3600202] = 1        -- 中文
tChristmasCard2019_Data["CardNation"][3600203] = 2        -- 英文
tChristmasCard2019_Data["CardNation"][3600204] = 3        -- 西语
tChristmasCard2019_Data["CardNation"][3600205] = 4        -- 阿语

tChristmasCard2019_Data["MapId"] = {}
tChristmasCard2019_Data["MapId"][1] = 10731

--读条相关
tChristmasCard2019_Data["ExploreTime"] = 3
tChristmasCard2019_Data["ExploreAction"] = 220

tChristmasCard2019_Data["EffectObj"] = "self"
tChristmasCard2019_Data["Effect"] = {}
tChristmasCard2019_Data["Effect"]["GetReward"] = "angelwing"
	
-- 不同语种的贺卡数据
local tChristmasCard2019_CardInfo = {}
tChristmasCard2019_CardInfo[1] = {}
tChristmasCard2019_CardInfo[1]["nUserId"] = {}
tChristmasCard2019_CardInfo[1]["sName"] = {}
tChristmasCard2019_CardInfo[1]["nBlessingNum"] = {}
tChristmasCard2019_CardInfo[1]["nUserNation"] = {}

tChristmasCard2019_CardInfo[2] = {}
tChristmasCard2019_CardInfo[2]["nUserId"] = {}
tChristmasCard2019_CardInfo[2]["sName"] = {}
tChristmasCard2019_CardInfo[2]["nBlessingNum"] = {}
tChristmasCard2019_CardInfo[2]["nUserNation"] = {}

tChristmasCard2019_CardInfo[3] = {}
tChristmasCard2019_CardInfo[3]["nUserId"] = {}
tChristmasCard2019_CardInfo[3]["sName"] = {}
tChristmasCard2019_CardInfo[3]["nBlessingNum"] = {}
tChristmasCard2019_CardInfo[3]["nUserNation"] = {}

tChristmasCard2019_CardInfo[4] = {}
tChristmasCard2019_CardInfo[4]["nUserId"] = {}
tChristmasCard2019_CardInfo[4]["sName"] = {}
tChristmasCard2019_CardInfo[4]["nBlessingNum"] = {}
tChristmasCard2019_CardInfo[4]["nUserNation"] = {}



local tChristmasCard2019_Pack = {}
	-- ===中文贺卡
	-- ===索引:tChristmasCard2019_Pack[1]
	tChristmasCard2019_Pack[1] = {}
	tChristmasCard2019_Pack[1]["LogId"] = 12001739
	tChristmasCard2019_Pack[1]["LogStep"] = "5[2]"
	tChristmasCard2019_Pack[1]["RewardItem"] = {}
	tChristmasCard2019_Pack[1]["RewardItem"][1] = {}
	tChristmasCard2019_Pack[1]["RewardItem"][1]["Id"] = 3600202 -- 【中文】圣诞贺卡[3600202][属性:137][叠加:0][金币:0], 【表格】【中文】圣诞贺卡*1（赠）
	tChristmasCard2019_Pack[1]["RewardItem"][1]["Attr"] = "0 1" -- 【中文】圣诞贺卡*1
	tChristmasCard2019_Pack[1]["RewardEffect"] = {}
	tChristmasCard2019_Pack[1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmasCard2019_Pack[1]["RewardEffect"]["Effect"] = "angelwing"


	tChristmasCard2019_Pack[2] = {}
	-- ===英文贺卡
	-- ===索引:tChristmasCard2019_Pack[2]
	-- ===LogStep: 5[2]
	tChristmasCard2019_Pack[2]["LogId"] = 12001739
	tChristmasCard2019_Pack[2]["LogStep"] = "5[2]"
	tChristmasCard2019_Pack[2]["RewardItem"] = {}
	tChristmasCard2019_Pack[2]["RewardItem"][1] = {}
	tChristmasCard2019_Pack[2]["RewardItem"][1]["Id"] = 3600203 -- 【英文】圣诞贺卡[3600203][属性:137][叠加:0][金币:0], 【表格】【英文】圣诞贺卡*1（赠）
	tChristmasCard2019_Pack[2]["RewardItem"][1]["Attr"] = "0 1" -- 【英文】圣诞贺卡*1
	tChristmasCard2019_Pack[2]["RewardEffect"] = {}
	tChristmasCard2019_Pack[2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmasCard2019_Pack[2]["RewardEffect"]["Effect"] = "angelwing"


	tChristmasCard2019_Pack[3] = {}
	-- ===西语贺卡
	-- ===索引:tChristmasCard2019_Pack[3]
	-- ===LogStep: 5[2]
	tChristmasCard2019_Pack[3]["LogId"] = 12001739
	tChristmasCard2019_Pack[3]["LogStep"] = "5[2]"
	tChristmasCard2019_Pack[3]["RewardItem"] = {}
	tChristmasCard2019_Pack[3]["RewardItem"][1] = {}
	tChristmasCard2019_Pack[3]["RewardItem"][1]["Id"] = 3600204 -- 【西语】圣诞贺卡[3600204][属性:137][叠加:0][金币:0], 【表格】【西语】圣诞贺卡*1（赠）
	tChristmasCard2019_Pack[3]["RewardItem"][1]["Attr"] = "0 1" -- 【西语】圣诞贺卡*1
	tChristmasCard2019_Pack[3]["RewardEffect"] = {}
	tChristmasCard2019_Pack[3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmasCard2019_Pack[3]["RewardEffect"]["Effect"] = "angelwing"


	tChristmasCard2019_Pack[4] = {}
	-- ===阿语贺卡
	-- ===索引:tChristmasCard2019_Pack[4]
	-- ===LogStep: 5[2]
	tChristmasCard2019_Pack[4]["LogId"] = 12001739
	tChristmasCard2019_Pack[4]["LogStep"] = "5[2]"
	tChristmasCard2019_Pack[4]["RewardItem"] = {}
	tChristmasCard2019_Pack[4]["RewardItem"][1] = {}
	tChristmasCard2019_Pack[4]["RewardItem"][1]["Id"] = 3600205 -- 【阿语】圣诞贺卡[3600205][属性:137][叠加:0][金币:0], 【表格】【阿语】圣诞贺卡*1（赠）
	tChristmasCard2019_Pack[4]["RewardItem"][1]["Attr"] = "0 1" -- 【阿语】圣诞贺卡*1
	tChristmasCard2019_Pack[4]["RewardEffect"] = {}
	tChristmasCard2019_Pack[4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmasCard2019_Pack[4]["RewardEffect"]["Effect"] = "angelwing"


	tChristmasCard2019_Pack[3600202] = {}
	-- ===【中文】圣诞贺卡
	-- ===索引:tChristmasCard2019_Pack[3600202]
	-- ===LogStep: 5[2]
	-- ===删除:3600202,1
	tChristmasCard2019_Pack[3600202]["LogId"] = 12001739
	tChristmasCard2019_Pack[3600202]["LogStep"] = "5[2]"
	tChristmasCard2019_Pack[3600202]["DeleteItem"] = {}
	tChristmasCard2019_Pack[3600202]["DeleteItem"][1] = {}
	tChristmasCard2019_Pack[3600202]["DeleteItem"][1]["Id"] = 3600202 -- 【库】【中文】圣诞贺卡[属性:137]
	tChristmasCard2019_Pack[3600202]["RewardItem"] = {}
	tChristmasCard2019_Pack[3600202]["RewardItem"][1] = {}
	tChristmasCard2019_Pack[3600202]["RewardItem"][1]["Id"] = 3600207 -- 【中文】圣诞礼包[3600207][属性:137][叠加:0][金币:0], 【表格】【中文】圣诞礼包*1（赠）
	tChristmasCard2019_Pack[3600202]["RewardItem"][1]["Attr"] = "0 1" -- 【中文】圣诞礼包*1
	-- tChristmasCard2019_Pack[3600202]["RewardEffect"] = {}
	-- tChristmasCard2019_Pack[3600202]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	-- tChristmasCard2019_Pack[3600202]["RewardEffect"]["Effect"] = "angelwing"


	tChristmasCard2019_Pack[3600203] = {}
	-- ===【英文】圣诞贺卡
	-- ===索引:tChristmasCard2019_Pack[3600203]
	-- ===LogStep: 5[2]
	-- ===删除:3600203,1
	tChristmasCard2019_Pack[3600203]["LogId"] = 12001739
	tChristmasCard2019_Pack[3600203]["LogStep"] = "5[2]"
	tChristmasCard2019_Pack[3600203]["DeleteItem"] = {}
	tChristmasCard2019_Pack[3600203]["DeleteItem"][1] = {}
	tChristmasCard2019_Pack[3600203]["DeleteItem"][1]["Id"] = 3600203 -- 【库】【英文】圣诞贺卡[属性:137]
	tChristmasCard2019_Pack[3600203]["RewardItem"] = {}
	tChristmasCard2019_Pack[3600203]["RewardItem"][1] = {}
	tChristmasCard2019_Pack[3600203]["RewardItem"][1]["Id"] = 3600208 -- 【英文】圣诞礼包[3600208][属性:137][叠加:0][金币:0], 【表格】【英文】圣诞礼包*1（赠）
	tChristmasCard2019_Pack[3600203]["RewardItem"][1]["Attr"] = "0 1" -- 【英文】圣诞礼包*1
	-- tChristmasCard2019_Pack[3600203]["RewardEffect"] = {}
	-- tChristmasCard2019_Pack[3600203]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	-- tChristmasCard2019_Pack[3600203]["RewardEffect"]["Effect"] = "angelwing"


	tChristmasCard2019_Pack[3600204] = {}
	-- ===【西语】圣诞贺卡
	-- ===索引:tChristmasCard2019_Pack[3600204]
	-- ===LogStep: 5[2]
	-- ===删除:3600204,1
	tChristmasCard2019_Pack[3600204]["LogId"] = 12001739
	tChristmasCard2019_Pack[3600204]["LogStep"] = "5[2]"
	tChristmasCard2019_Pack[3600204]["DeleteItem"] = {}
	tChristmasCard2019_Pack[3600204]["DeleteItem"][1] = {}
	tChristmasCard2019_Pack[3600204]["DeleteItem"][1]["Id"] = 3600204 -- 【库】【西语】圣诞贺卡[属性:137]
	tChristmasCard2019_Pack[3600204]["RewardItem"] = {}
	tChristmasCard2019_Pack[3600204]["RewardItem"][1] = {}
	tChristmasCard2019_Pack[3600204]["RewardItem"][1]["Id"] = 3600209 -- 【西语】圣诞礼包[3600209][属性:137][叠加:0][金币:0], 【表格】【西语】圣诞礼包*1（赠）
	tChristmasCard2019_Pack[3600204]["RewardItem"][1]["Attr"] = "0 1" -- 【西语】圣诞礼包*1
	-- tChristmasCard2019_Pack[3600204]["RewardEffect"] = {}
	-- tChristmasCard2019_Pack[3600204]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	-- tChristmasCard2019_Pack[3600204]["RewardEffect"]["Effect"] = "angelwing"


	tChristmasCard2019_Pack[3600205] = {}
	-- ===【阿语】圣诞贺卡
	-- ===索引:tChristmasCard2019_Pack[3600205]
	-- ===LogStep: 5[2]
	-- ===删除:3600205,1
	tChristmasCard2019_Pack[3600205]["LogId"] = 12001739
	tChristmasCard2019_Pack[3600205]["LogStep"] = "5[2]"
	tChristmasCard2019_Pack[3600205]["DeleteItem"] = {}
	tChristmasCard2019_Pack[3600205]["DeleteItem"][1] = {}
	tChristmasCard2019_Pack[3600205]["DeleteItem"][1]["Id"] = 3600205 -- 【库】【阿语】圣诞贺卡[属性:137]
	tChristmasCard2019_Pack[3600205]["RewardItem"] = {}
	tChristmasCard2019_Pack[3600205]["RewardItem"][1] = {}
	tChristmasCard2019_Pack[3600205]["RewardItem"][1]["Id"] = 3600210 -- 【阿语】圣诞礼包[3600210][属性:137][叠加:0][金币:0], 【表格】【阿语】圣诞礼包*1（赠）
	tChristmasCard2019_Pack[3600205]["RewardItem"][1]["Attr"] = "0 1" -- 【阿语】圣诞礼包*1
	-- tChristmasCard2019_Pack[3600205]["RewardEffect"] = {}
	-- tChristmasCard2019_Pack[3600205]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	-- tChristmasCard2019_Pack[3600205]["RewardEffect"]["Effect"] = "angelwing"


	tChristmasCard2019_Pack[3600207] = {}
	-- ===【中文】圣诞礼包
	-- ===索引: tChristmasCard2019_Pack[3600207]
	-- ===LogStep: 5[2]
	-- ===删除:3600207,1
	-- ===
	tChristmasCard2019_Pack[3600207]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tChristmasCard2019_Pack[3600207]["DeleteItem"] = {}
	tChristmasCard2019_Pack[3600207]["DeleteItem"][1] = {}
	tChristmasCard2019_Pack[3600207]["DeleteItem"][1]["Id"] = 3600207 -- 【库】【中文】圣诞礼包[属性:137]
	tChristmasCard2019_Pack[3600207]["LogId"] = 12001739
	tChristmasCard2019_Pack[3600207]["LogStep"] = " 5[2]"
	-- 【中文】圣诞帽（赠） + 指定的布尔类型-- 【必给】
	tChristmasCard2019_Pack[3600207][1] = {}
	tChristmasCard2019_Pack[3600207][1]["RandomItemChanceType"] = 1
	tChristmasCard2019_Pack[3600207][1]["RewardItem"] = {}
	tChristmasCard2019_Pack[3600207][1]["RewardItem"][1] = {}
	tChristmasCard2019_Pack[3600207][1]["RewardItem"][1]["Id"] = 3600198 -- 【中文】圣诞帽[3600198][属性:9][叠加:0][金币:0], 【表格】【中文】圣诞帽（赠）
	tChristmasCard2019_Pack[3600207][1]["RewardItem"][1]["Attr"] = "0 10" -- 【中文】圣诞帽*10
	tChristmasCard2019_Pack[3600207][1]["Item_1"] = 1
	tChristmasCard2019_Pack[3600207][1]["RewardEffect"] = {}
	tChristmasCard2019_Pack[3600207][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmasCard2019_Pack[3600207][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 + 指定的布尔类型 - 20%
	tChristmasCard2019_Pack[3600207][2] = {}
	tChristmasCard2019_Pack[3600207][2]["RandomItemChanceType"] = 2
	tChristmasCard2019_Pack[3600207][2]["ItemChance"] = 2000
	tChristmasCard2019_Pack[3600207][2]["RewardItem"] = {}
	tChristmasCard2019_Pack[3600207][2]["RewardItem"][1] = {}
	tChristmasCard2019_Pack[3600207][2]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tChristmasCard2019_Pack[3600207][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	tChristmasCard2019_Pack[3600207][2]["Item_1"] = 1
	tChristmasCard2019_Pack[3600207][2]["RewardEffect"] = {}
	tChristmasCard2019_Pack[3600207][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmasCard2019_Pack[3600207][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+2（赠） + 指定的布尔类型 - 30%
	tChristmasCard2019_Pack[3600207][3] = {}
	tChristmasCard2019_Pack[3600207][3]["RandomItemChanceType"] = 2
	tChristmasCard2019_Pack[3600207][3]["ItemChance"] = 3000
	tChristmasCard2019_Pack[3600207][3]["RewardItem"] = {}
	tChristmasCard2019_Pack[3600207][3]["RewardItem"][1] = {}
	tChristmasCard2019_Pack[3600207][3]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石[730002][属性:0][叠加:0][金币:0], 【表格】赤炼石+2（赠）
	tChristmasCard2019_Pack[3600207][3]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+2赤炼石（赠）*1
	tChristmasCard2019_Pack[3600207][3]["Item_1"] = 1
	tChristmasCard2019_Pack[3600207][3]["RewardEffect"] = {}
	tChristmasCard2019_Pack[3600207][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmasCard2019_Pack[3600207][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 + 指定的布尔类型 - 25%
	tChristmasCard2019_Pack[3600207][4] = {}
	tChristmasCard2019_Pack[3600207][4]["RandomItemChanceType"] = 2
	tChristmasCard2019_Pack[3600207][4]["ItemChance"] = 2500
	tChristmasCard2019_Pack[3600207][4]["RewardItem"] = {}
	tChristmasCard2019_Pack[3600207][4]["RewardItem"][1] = {}
	tChristmasCard2019_Pack[3600207][4]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果
	tChristmasCard2019_Pack[3600207][4]["RewardItem"][1]["Attr"] = "0 2" -- 人参果*2
	tChristmasCard2019_Pack[3600207][4]["Item_1"] = 1
	tChristmasCard2019_Pack[3600207][4]["RewardEffect"] = {}
	tChristmasCard2019_Pack[3600207][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmasCard2019_Pack[3600207][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹（赠） + 指定的布尔类型 - 15%
	tChristmasCard2019_Pack[3600207][5] = {}
	tChristmasCard2019_Pack[3600207][5]["RandomItemChanceType"] = 2
	tChristmasCard2019_Pack[3600207][5]["ItemChance"] = 1500
	tChristmasCard2019_Pack[3600207][5]["RewardItem"] = {}
	tChristmasCard2019_Pack[3600207][5]["RewardItem"][1] = {}
	tChristmasCard2019_Pack[3600207][5]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹（赠）
	tChristmasCard2019_Pack[3600207][5]["RewardItem"][1]["Attr"] = "0 10 3" -- 万能神纹精粹（赠）*10
	tChristmasCard2019_Pack[3600207][5]["Item_1"] = 1
	tChristmasCard2019_Pack[3600207][5]["RewardEffect"] = {}
	tChristmasCard2019_Pack[3600207][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmasCard2019_Pack[3600207][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 晶莹星陨石 + 指定的布尔类型 - 4%
	tChristmasCard2019_Pack[3600207][6] = {}
	tChristmasCard2019_Pack[3600207][6]["RandomItemChanceType"] = 2
	tChristmasCard2019_Pack[3600207][6]["ItemChance"] = 400
	tChristmasCard2019_Pack[3600207][6]["RewardItem"] = {}
	tChristmasCard2019_Pack[3600207][6]["RewardItem"][1] = {}
	tChristmasCard2019_Pack[3600207][6]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tChristmasCard2019_Pack[3600207][6]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
	tChristmasCard2019_Pack[3600207][6]["Item_1"] = 2
	tChristmasCard2019_Pack[3600207][6]["RewardEffect"] = {}
	tChristmasCard2019_Pack[3600207][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmasCard2019_Pack[3600207][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+5（赠） + 指定的布尔类型 - 3%
	tChristmasCard2019_Pack[3600207][7] = {}
	tChristmasCard2019_Pack[3600207][7]["RandomItemChanceType"] = 2
	tChristmasCard2019_Pack[3600207][7]["ItemChance"] = 300
	tChristmasCard2019_Pack[3600207][7]["RewardItem"] = {}
	tChristmasCard2019_Pack[3600207][7]["RewardItem"][1] = {}
	tChristmasCard2019_Pack[3600207][7]["RewardItem"][1]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5（赠）
	tChristmasCard2019_Pack[3600207][7]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+5赤炼石（赠）*1
	tChristmasCard2019_Pack[3600207][7]["Item_1"] = 2
	tChristmasCard2019_Pack[3600207][7]["RewardEffect"] = {}
	tChristmasCard2019_Pack[3600207][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmasCard2019_Pack[3600207][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 天灵果 + 指定的布尔类型 - 3%
	tChristmasCard2019_Pack[3600207][8] = {}
	tChristmasCard2019_Pack[3600207][8]["RandomItemChanceType"] = 2
	tChristmasCard2019_Pack[3600207][8]["ItemChance"] = 300
	tChristmasCard2019_Pack[3600207][8]["RewardItem"] = {}
	tChristmasCard2019_Pack[3600207][8]["RewardItem"][1] = {}
	tChristmasCard2019_Pack[3600207][8]["RewardItem"][1]["Id"] = 3009103 -- 天灵果[3009103][属性:9][叠加:99][金币:0], 【表格】天灵果
	tChristmasCard2019_Pack[3600207][8]["RewardItem"][1]["Attr"] = "0 1" -- 天灵果*1
	tChristmasCard2019_Pack[3600207][8]["Item_1"] = 2
	tChristmasCard2019_Pack[3600207][8]["RewardEffect"] = {}
	tChristmasCard2019_Pack[3600207][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmasCard2019_Pack[3600207][8]["RewardEffect"]["Effect"] = "angelwing"


	tChristmasCard2019_Pack[3600208] = {}
	-- ===【英文】圣诞礼包
	-- ===索引: tChristmasCard2019_Pack[3600208]
	-- ===LogStep: 5[2]
	-- ===删除:3600208,1
	-- ===
	tChristmasCard2019_Pack[3600208]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tChristmasCard2019_Pack[3600208]["DeleteItem"] = {}
	tChristmasCard2019_Pack[3600208]["DeleteItem"][1] = {}
	tChristmasCard2019_Pack[3600208]["DeleteItem"][1]["Id"] = 3600208 -- 【库】【英文】圣诞礼包[属性:137]
	tChristmasCard2019_Pack[3600208]["LogId"] = 12001739
	tChristmasCard2019_Pack[3600208]["LogStep"] = " 5[2]"
	-- 【英文】圣诞帽（赠） + 指定的布尔类型-- 【必给】
	tChristmasCard2019_Pack[3600208][1] = {}
	tChristmasCard2019_Pack[3600208][1]["RandomItemChanceType"] = 1
	tChristmasCard2019_Pack[3600208][1]["RewardItem"] = {}
	tChristmasCard2019_Pack[3600208][1]["RewardItem"][1] = {}
	tChristmasCard2019_Pack[3600208][1]["RewardItem"][1]["Id"] = 3600199 -- 【英文】圣诞帽[3600199][属性:9][叠加:0][金币:0], 【表格】【英文】圣诞帽（赠）
	tChristmasCard2019_Pack[3600208][1]["RewardItem"][1]["Attr"] = "0 10" -- 【英文】圣诞帽*10
	tChristmasCard2019_Pack[3600208][1]["Item_1"] = 1
	tChristmasCard2019_Pack[3600208][1]["RewardEffect"] = {}
	tChristmasCard2019_Pack[3600208][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmasCard2019_Pack[3600208][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 + 指定的布尔类型 - 20%
	tChristmasCard2019_Pack[3600208][2] = {}
	tChristmasCard2019_Pack[3600208][2]["RandomItemChanceType"] = 2
	tChristmasCard2019_Pack[3600208][2]["ItemChance"] = 2000
	tChristmasCard2019_Pack[3600208][2]["RewardItem"] = {}
	tChristmasCard2019_Pack[3600208][2]["RewardItem"][1] = {}
	tChristmasCard2019_Pack[3600208][2]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tChristmasCard2019_Pack[3600208][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	tChristmasCard2019_Pack[3600208][2]["Item_1"] = 1
	tChristmasCard2019_Pack[3600208][2]["RewardEffect"] = {}
	tChristmasCard2019_Pack[3600208][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmasCard2019_Pack[3600208][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+2（赠） + 指定的布尔类型 - 30%
	tChristmasCard2019_Pack[3600208][3] = {}
	tChristmasCard2019_Pack[3600208][3]["RandomItemChanceType"] = 2
	tChristmasCard2019_Pack[3600208][3]["ItemChance"] = 3000
	tChristmasCard2019_Pack[3600208][3]["RewardItem"] = {}
	tChristmasCard2019_Pack[3600208][3]["RewardItem"][1] = {}
	tChristmasCard2019_Pack[3600208][3]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石[730002][属性:0][叠加:0][金币:0], 【表格】赤炼石+2（赠）
	tChristmasCard2019_Pack[3600208][3]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+2赤炼石（赠）*1
	tChristmasCard2019_Pack[3600208][3]["Item_1"] = 1
	tChristmasCard2019_Pack[3600208][3]["RewardEffect"] = {}
	tChristmasCard2019_Pack[3600208][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmasCard2019_Pack[3600208][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 + 指定的布尔类型 - 25%
	tChristmasCard2019_Pack[3600208][4] = {}
	tChristmasCard2019_Pack[3600208][4]["RandomItemChanceType"] = 2
	tChristmasCard2019_Pack[3600208][4]["ItemChance"] = 2500
	tChristmasCard2019_Pack[3600208][4]["RewardItem"] = {}
	tChristmasCard2019_Pack[3600208][4]["RewardItem"][1] = {}
	tChristmasCard2019_Pack[3600208][4]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果
	tChristmasCard2019_Pack[3600208][4]["RewardItem"][1]["Attr"] = "0 2" -- 人参果*2
	tChristmasCard2019_Pack[3600208][4]["Item_1"] = 1
	tChristmasCard2019_Pack[3600208][4]["RewardEffect"] = {}
	tChristmasCard2019_Pack[3600208][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmasCard2019_Pack[3600208][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹（赠） + 指定的布尔类型 - 15%
	tChristmasCard2019_Pack[3600208][5] = {}
	tChristmasCard2019_Pack[3600208][5]["RandomItemChanceType"] = 2
	tChristmasCard2019_Pack[3600208][5]["ItemChance"] = 1500
	tChristmasCard2019_Pack[3600208][5]["RewardItem"] = {}
	tChristmasCard2019_Pack[3600208][5]["RewardItem"][1] = {}
	tChristmasCard2019_Pack[3600208][5]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹（赠）
	tChristmasCard2019_Pack[3600208][5]["RewardItem"][1]["Attr"] = "0 10 3" -- 万能神纹精粹（赠）*10
	tChristmasCard2019_Pack[3600208][5]["Item_1"] = 1
	tChristmasCard2019_Pack[3600208][5]["RewardEffect"] = {}
	tChristmasCard2019_Pack[3600208][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmasCard2019_Pack[3600208][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 晶莹星陨石 + 指定的布尔类型 - 4%
	tChristmasCard2019_Pack[3600208][6] = {}
	tChristmasCard2019_Pack[3600208][6]["RandomItemChanceType"] = 2
	tChristmasCard2019_Pack[3600208][6]["ItemChance"] = 400
	tChristmasCard2019_Pack[3600208][6]["RewardItem"] = {}
	tChristmasCard2019_Pack[3600208][6]["RewardItem"][1] = {}
	tChristmasCard2019_Pack[3600208][6]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tChristmasCard2019_Pack[3600208][6]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
	tChristmasCard2019_Pack[3600208][6]["Item_1"] = 2
	tChristmasCard2019_Pack[3600208][6]["RewardEffect"] = {}
	tChristmasCard2019_Pack[3600208][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmasCard2019_Pack[3600208][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+5（赠） + 指定的布尔类型 - 3%
	tChristmasCard2019_Pack[3600208][7] = {}
	tChristmasCard2019_Pack[3600208][7]["RandomItemChanceType"] = 2
	tChristmasCard2019_Pack[3600208][7]["ItemChance"] = 300
	tChristmasCard2019_Pack[3600208][7]["RewardItem"] = {}
	tChristmasCard2019_Pack[3600208][7]["RewardItem"][1] = {}
	tChristmasCard2019_Pack[3600208][7]["RewardItem"][1]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5（赠）
	tChristmasCard2019_Pack[3600208][7]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+5赤炼石（赠）*1
	tChristmasCard2019_Pack[3600208][7]["Item_1"] = 2
	tChristmasCard2019_Pack[3600208][7]["RewardEffect"] = {}
	tChristmasCard2019_Pack[3600208][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmasCard2019_Pack[3600208][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 天灵果 + 指定的布尔类型 - 3%
	tChristmasCard2019_Pack[3600208][8] = {}
	tChristmasCard2019_Pack[3600208][8]["RandomItemChanceType"] = 2
	tChristmasCard2019_Pack[3600208][8]["ItemChance"] = 300
	tChristmasCard2019_Pack[3600208][8]["RewardItem"] = {}
	tChristmasCard2019_Pack[3600208][8]["RewardItem"][1] = {}
	tChristmasCard2019_Pack[3600208][8]["RewardItem"][1]["Id"] = 3009103 -- 天灵果[3009103][属性:9][叠加:99][金币:0], 【表格】天灵果
	tChristmasCard2019_Pack[3600208][8]["RewardItem"][1]["Attr"] = "0 1" -- 天灵果*1
	tChristmasCard2019_Pack[3600208][8]["Item_1"] = 2
	tChristmasCard2019_Pack[3600208][8]["RewardEffect"] = {}
	tChristmasCard2019_Pack[3600208][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmasCard2019_Pack[3600208][8]["RewardEffect"]["Effect"] = "angelwing"


	tChristmasCard2019_Pack[3600209] = {}
	-- ===【西语】圣诞礼包
	-- ===索引: tChristmasCard2019_Pack[3600209]
	-- ===LogStep: 5[2]
	-- ===删除:3600209,1
	-- ===
	tChristmasCard2019_Pack[3600209]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tChristmasCard2019_Pack[3600209]["DeleteItem"] = {}
	tChristmasCard2019_Pack[3600209]["DeleteItem"][1] = {}
	tChristmasCard2019_Pack[3600209]["DeleteItem"][1]["Id"] = 3600209 -- 【库】【西语】圣诞礼包[属性:137]
	tChristmasCard2019_Pack[3600209]["LogId"] = 12001739
	tChristmasCard2019_Pack[3600209]["LogStep"] = " 5[2]"
	-- 【西语】圣诞帽（赠） + 指定的布尔类型-- 【必给】
	tChristmasCard2019_Pack[3600209][1] = {}
	tChristmasCard2019_Pack[3600209][1]["RandomItemChanceType"] = 1
	tChristmasCard2019_Pack[3600209][1]["RewardItem"] = {}
	tChristmasCard2019_Pack[3600209][1]["RewardItem"][1] = {}
	tChristmasCard2019_Pack[3600209][1]["RewardItem"][1]["Id"] = 3600201 -- 【西语】圣诞帽[3600201][属性:9][叠加:0][金币:0], 【表格】【西语】圣诞帽（赠）
	tChristmasCard2019_Pack[3600209][1]["RewardItem"][1]["Attr"] = "0 10" -- 【西语】圣诞帽*10
	tChristmasCard2019_Pack[3600209][1]["Item_1"] = 1
	tChristmasCard2019_Pack[3600209][1]["RewardEffect"] = {}
	tChristmasCard2019_Pack[3600209][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmasCard2019_Pack[3600209][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 + 指定的布尔类型 - 20%
	tChristmasCard2019_Pack[3600209][2] = {}
	tChristmasCard2019_Pack[3600209][2]["RandomItemChanceType"] = 2
	tChristmasCard2019_Pack[3600209][2]["ItemChance"] = 2000
	tChristmasCard2019_Pack[3600209][2]["RewardItem"] = {}
	tChristmasCard2019_Pack[3600209][2]["RewardItem"][1] = {}
	tChristmasCard2019_Pack[3600209][2]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tChristmasCard2019_Pack[3600209][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	tChristmasCard2019_Pack[3600209][2]["Item_1"] = 1
	tChristmasCard2019_Pack[3600209][2]["RewardEffect"] = {}
	tChristmasCard2019_Pack[3600209][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmasCard2019_Pack[3600209][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+2（赠） + 指定的布尔类型 - 30%
	tChristmasCard2019_Pack[3600209][3] = {}
	tChristmasCard2019_Pack[3600209][3]["RandomItemChanceType"] = 2
	tChristmasCard2019_Pack[3600209][3]["ItemChance"] = 3000
	tChristmasCard2019_Pack[3600209][3]["RewardItem"] = {}
	tChristmasCard2019_Pack[3600209][3]["RewardItem"][1] = {}
	tChristmasCard2019_Pack[3600209][3]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石[730002][属性:0][叠加:0][金币:0], 【表格】赤炼石+2（赠）
	tChristmasCard2019_Pack[3600209][3]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+2赤炼石（赠）*1
	tChristmasCard2019_Pack[3600209][3]["Item_1"] = 1
	tChristmasCard2019_Pack[3600209][3]["RewardEffect"] = {}
	tChristmasCard2019_Pack[3600209][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmasCard2019_Pack[3600209][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 + 指定的布尔类型 - 25%
	tChristmasCard2019_Pack[3600209][4] = {}
	tChristmasCard2019_Pack[3600209][4]["RandomItemChanceType"] = 2
	tChristmasCard2019_Pack[3600209][4]["ItemChance"] = 2500
	tChristmasCard2019_Pack[3600209][4]["RewardItem"] = {}
	tChristmasCard2019_Pack[3600209][4]["RewardItem"][1] = {}
	tChristmasCard2019_Pack[3600209][4]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果
	tChristmasCard2019_Pack[3600209][4]["RewardItem"][1]["Attr"] = "0 2" -- 人参果*2
	tChristmasCard2019_Pack[3600209][4]["Item_1"] = 1
	tChristmasCard2019_Pack[3600209][4]["RewardEffect"] = {}
	tChristmasCard2019_Pack[3600209][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmasCard2019_Pack[3600209][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹（赠） + 指定的布尔类型 - 15%
	tChristmasCard2019_Pack[3600209][5] = {}
	tChristmasCard2019_Pack[3600209][5]["RandomItemChanceType"] = 2
	tChristmasCard2019_Pack[3600209][5]["ItemChance"] = 1500
	tChristmasCard2019_Pack[3600209][5]["RewardItem"] = {}
	tChristmasCard2019_Pack[3600209][5]["RewardItem"][1] = {}
	tChristmasCard2019_Pack[3600209][5]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹（赠）
	tChristmasCard2019_Pack[3600209][5]["RewardItem"][1]["Attr"] = "0 10 3" -- 万能神纹精粹（赠）*10
	tChristmasCard2019_Pack[3600209][5]["Item_1"] = 1
	tChristmasCard2019_Pack[3600209][5]["RewardEffect"] = {}
	tChristmasCard2019_Pack[3600209][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmasCard2019_Pack[3600209][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 晶莹星陨石 + 指定的布尔类型 - 4%
	tChristmasCard2019_Pack[3600209][6] = {}
	tChristmasCard2019_Pack[3600209][6]["RandomItemChanceType"] = 2
	tChristmasCard2019_Pack[3600209][6]["ItemChance"] = 400
	tChristmasCard2019_Pack[3600209][6]["RewardItem"] = {}
	tChristmasCard2019_Pack[3600209][6]["RewardItem"][1] = {}
	tChristmasCard2019_Pack[3600209][6]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tChristmasCard2019_Pack[3600209][6]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
	tChristmasCard2019_Pack[3600209][6]["Item_1"] = 2
	tChristmasCard2019_Pack[3600209][6]["RewardEffect"] = {}
	tChristmasCard2019_Pack[3600209][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmasCard2019_Pack[3600209][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+5（赠） + 指定的布尔类型 - 3%
	tChristmasCard2019_Pack[3600209][7] = {}
	tChristmasCard2019_Pack[3600209][7]["RandomItemChanceType"] = 2
	tChristmasCard2019_Pack[3600209][7]["ItemChance"] = 300
	tChristmasCard2019_Pack[3600209][7]["RewardItem"] = {}
	tChristmasCard2019_Pack[3600209][7]["RewardItem"][1] = {}
	tChristmasCard2019_Pack[3600209][7]["RewardItem"][1]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5（赠）
	tChristmasCard2019_Pack[3600209][7]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+5赤炼石（赠）*1
	tChristmasCard2019_Pack[3600209][7]["Item_1"] = 2
	tChristmasCard2019_Pack[3600209][7]["RewardEffect"] = {}
	tChristmasCard2019_Pack[3600209][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmasCard2019_Pack[3600209][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 天灵果 + 指定的布尔类型 - 3%
	tChristmasCard2019_Pack[3600209][8] = {}
	tChristmasCard2019_Pack[3600209][8]["RandomItemChanceType"] = 2
	tChristmasCard2019_Pack[3600209][8]["ItemChance"] = 300
	tChristmasCard2019_Pack[3600209][8]["RewardItem"] = {}
	tChristmasCard2019_Pack[3600209][8]["RewardItem"][1] = {}
	tChristmasCard2019_Pack[3600209][8]["RewardItem"][1]["Id"] = 3009103 -- 天灵果[3009103][属性:9][叠加:99][金币:0], 【表格】天灵果
	tChristmasCard2019_Pack[3600209][8]["RewardItem"][1]["Attr"] = "0 1" -- 天灵果*1
	tChristmasCard2019_Pack[3600209][8]["Item_1"] = 2
	tChristmasCard2019_Pack[3600209][8]["RewardEffect"] = {}
	tChristmasCard2019_Pack[3600209][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmasCard2019_Pack[3600209][8]["RewardEffect"]["Effect"] = "angelwing"


	tChristmasCard2019_Pack[3600210] = {}
	-- ===【阿语】圣诞礼包
	-- ===索引: tChristmasCard2019_Pack[3600210]
	-- ===LogStep: 5[2]
	-- ===删除:3600210,1
	-- ===
	tChristmasCard2019_Pack[3600210]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tChristmasCard2019_Pack[3600210]["DeleteItem"] = {}
	tChristmasCard2019_Pack[3600210]["DeleteItem"][1] = {}
	tChristmasCard2019_Pack[3600210]["DeleteItem"][1]["Id"] = 3600210 -- 【库】【阿语】圣诞礼包[属性:137]
	tChristmasCard2019_Pack[3600210]["LogId"] = 12001739
	tChristmasCard2019_Pack[3600210]["LogStep"] = " 5[2]"
	-- 【阿语】圣诞帽（赠） + 指定的布尔类型-- 【必给】
	tChristmasCard2019_Pack[3600210][1] = {}
	tChristmasCard2019_Pack[3600210][1]["RandomItemChanceType"] = 1
	tChristmasCard2019_Pack[3600210][1]["RewardItem"] = {}
	tChristmasCard2019_Pack[3600210][1]["RewardItem"][1] = {}
	tChristmasCard2019_Pack[3600210][1]["RewardItem"][1]["Id"] = 3600200 -- 【阿语】圣诞帽[3600200][属性:9][叠加:0][金币:0], 【表格】【阿语】圣诞帽（赠）
	tChristmasCard2019_Pack[3600210][1]["RewardItem"][1]["Attr"] = "0 10" -- 【阿语】圣诞帽*10
	tChristmasCard2019_Pack[3600210][1]["Item_1"] = 1
	tChristmasCard2019_Pack[3600210][1]["RewardEffect"] = {}
	tChristmasCard2019_Pack[3600210][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmasCard2019_Pack[3600210][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 + 指定的布尔类型 - 20%
	tChristmasCard2019_Pack[3600210][2] = {}
	tChristmasCard2019_Pack[3600210][2]["RandomItemChanceType"] = 2
	tChristmasCard2019_Pack[3600210][2]["ItemChance"] = 2000
	tChristmasCard2019_Pack[3600210][2]["RewardItem"] = {}
	tChristmasCard2019_Pack[3600210][2]["RewardItem"][1] = {}
	tChristmasCard2019_Pack[3600210][2]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tChristmasCard2019_Pack[3600210][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	tChristmasCard2019_Pack[3600210][2]["Item_1"] = 1
	tChristmasCard2019_Pack[3600210][2]["RewardEffect"] = {}
	tChristmasCard2019_Pack[3600210][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmasCard2019_Pack[3600210][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+2（赠） + 指定的布尔类型 - 30%
	tChristmasCard2019_Pack[3600210][3] = {}
	tChristmasCard2019_Pack[3600210][3]["RandomItemChanceType"] = 2
	tChristmasCard2019_Pack[3600210][3]["ItemChance"] = 3000
	tChristmasCard2019_Pack[3600210][3]["RewardItem"] = {}
	tChristmasCard2019_Pack[3600210][3]["RewardItem"][1] = {}
	tChristmasCard2019_Pack[3600210][3]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石[730002][属性:0][叠加:0][金币:0], 【表格】赤炼石+2（赠）
	tChristmasCard2019_Pack[3600210][3]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+2赤炼石（赠）*1
	tChristmasCard2019_Pack[3600210][3]["Item_1"] = 1
	tChristmasCard2019_Pack[3600210][3]["RewardEffect"] = {}
	tChristmasCard2019_Pack[3600210][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmasCard2019_Pack[3600210][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 + 指定的布尔类型 - 25%
	tChristmasCard2019_Pack[3600210][4] = {}
	tChristmasCard2019_Pack[3600210][4]["RandomItemChanceType"] = 2
	tChristmasCard2019_Pack[3600210][4]["ItemChance"] = 2500
	tChristmasCard2019_Pack[3600210][4]["RewardItem"] = {}
	tChristmasCard2019_Pack[3600210][4]["RewardItem"][1] = {}
	tChristmasCard2019_Pack[3600210][4]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果
	tChristmasCard2019_Pack[3600210][4]["RewardItem"][1]["Attr"] = "0 2" -- 人参果*2
	tChristmasCard2019_Pack[3600210][4]["Item_1"] = 1
	tChristmasCard2019_Pack[3600210][4]["RewardEffect"] = {}
	tChristmasCard2019_Pack[3600210][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmasCard2019_Pack[3600210][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹（赠） + 指定的布尔类型 - 15%
	tChristmasCard2019_Pack[3600210][5] = {}
	tChristmasCard2019_Pack[3600210][5]["RandomItemChanceType"] = 2
	tChristmasCard2019_Pack[3600210][5]["ItemChance"] = 1500
	tChristmasCard2019_Pack[3600210][5]["RewardItem"] = {}
	tChristmasCard2019_Pack[3600210][5]["RewardItem"][1] = {}
	tChristmasCard2019_Pack[3600210][5]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹（赠）
	tChristmasCard2019_Pack[3600210][5]["RewardItem"][1]["Attr"] = "0 10 3" -- 万能神纹精粹（赠）*10
	tChristmasCard2019_Pack[3600210][5]["Item_1"] = 1
	tChristmasCard2019_Pack[3600210][5]["RewardEffect"] = {}
	tChristmasCard2019_Pack[3600210][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmasCard2019_Pack[3600210][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 晶莹星陨石 + 指定的布尔类型 - 4%
	tChristmasCard2019_Pack[3600210][6] = {}
	tChristmasCard2019_Pack[3600210][6]["RandomItemChanceType"] = 2
	tChristmasCard2019_Pack[3600210][6]["ItemChance"] = 400
	tChristmasCard2019_Pack[3600210][6]["RewardItem"] = {}
	tChristmasCard2019_Pack[3600210][6]["RewardItem"][1] = {}
	tChristmasCard2019_Pack[3600210][6]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tChristmasCard2019_Pack[3600210][6]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
	tChristmasCard2019_Pack[3600210][6]["Item_1"] = 2
	tChristmasCard2019_Pack[3600210][6]["RewardEffect"] = {}
	tChristmasCard2019_Pack[3600210][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmasCard2019_Pack[3600210][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+5（赠） + 指定的布尔类型 - 3%
	tChristmasCard2019_Pack[3600210][7] = {}
	tChristmasCard2019_Pack[3600210][7]["RandomItemChanceType"] = 2
	tChristmasCard2019_Pack[3600210][7]["ItemChance"] = 300
	tChristmasCard2019_Pack[3600210][7]["RewardItem"] = {}
	tChristmasCard2019_Pack[3600210][7]["RewardItem"][1] = {}
	tChristmasCard2019_Pack[3600210][7]["RewardItem"][1]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5（赠）
	tChristmasCard2019_Pack[3600210][7]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+5赤炼石（赠）*1
	tChristmasCard2019_Pack[3600210][7]["Item_1"] = 2
	tChristmasCard2019_Pack[3600210][7]["RewardEffect"] = {}
	tChristmasCard2019_Pack[3600210][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmasCard2019_Pack[3600210][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 天灵果 + 指定的布尔类型 - 3%
	tChristmasCard2019_Pack[3600210][8] = {}
	tChristmasCard2019_Pack[3600210][8]["RandomItemChanceType"] = 2
	tChristmasCard2019_Pack[3600210][8]["ItemChance"] = 300
	tChristmasCard2019_Pack[3600210][8]["RewardItem"] = {}
	tChristmasCard2019_Pack[3600210][8]["RewardItem"][1] = {}
	tChristmasCard2019_Pack[3600210][8]["RewardItem"][1]["Id"] = 3009103 -- 天灵果[3009103][属性:9][叠加:99][金币:0], 【表格】天灵果
	tChristmasCard2019_Pack[3600210][8]["RewardItem"][1]["Attr"] = "0 1" -- 天灵果*1
	tChristmasCard2019_Pack[3600210][8]["Item_1"] = 2
	tChristmasCard2019_Pack[3600210][8]["RewardEffect"] = {}
	tChristmasCard2019_Pack[3600210][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChristmasCard2019_Pack[3600210][8]["RewardEffect"]["Effect"] = "angelwing"



------------------------------------------------------------逻辑部分
function ChristmasCard2019_ResetInfo()
	if not Sys_ChkFullTime(tActivityTime["GlobalChristmas"]["ActivityTime"]) then 
		return
	end 
	local nEventTypeRewardCard = tChristmasCard2019_Stc["RewardCard"]["EventType"] 
	local nDataTypeRewardCard = tChristmasCard2019_Stc["RewardCard"]["DataType"]
	local nTaskRewCardId = tChristmasCard2019_TaskId["RewardCard"]
	-- local nRewCardData1 = Get_TaskDetailData1(nTaskRewCardId)
	-- local nRewCardData2 = Get_TaskDetailData1(nTaskRewCardId)
	if not Task_ChkTaskDetail(nTaskRewCardId) then  
		-- if Task_AddTaskDetail(nTaskRewCardId) then 
			-- return true
		-- else
			-- return false
		-- end
		Task_AddTaskDetail(nTaskRewCardId)
		if Task_StcInterval(nEventTypeRewardCard,nDataTypeRewardCard,1,4) then 
			Task_SetTaskDetailData1(nTaskRewCardId,0)
			Task_SetTaskDetailData2(nTaskRewCardId,0)
			Task_SetStatistic(nEventTypeRewardCard,nDataTypeRewardCard,0,1)
			Task_SetStcTimestamp(nEventTypeRewardCard,nDataTypeRewardCard,0)
		end 
	else
		if Task_StcInterval(nEventTypeRewardCard,nDataTypeRewardCard,1,4) then 
			Task_SetTaskDetailData1(nTaskRewCardId,0)
			Task_SetTaskDetailData2(nTaskRewCardId,0)
			Task_SetStatistic(nEventTypeRewardCard,nDataTypeRewardCard,0,1)
			Task_SetStcTimestamp(nEventTypeRewardCard,nDataTypeRewardCard,0)
		end 
	end
end 
	


-- 判断当天是否领取了贺卡
function ChristmasCard2019_RewardCardSituation()
	--记录玩家当天是否领取了贺卡
	local nTaskRewCardId = tChristmasCard2019_TaskId["RewardCard"]
	if not Task_ChkTaskDetail(nTaskRewCardId) then   --检测是否有领取贺卡的掩码
		return true
	end 
	-- if Task_DetailInterval(nTaskRewCardId,1,4) then 
		-- Task_SetTaskDetailData1(nTaskRewCardId,1)
	-- end 
	
	local nRewCardData1 = Get_TaskDetailData1(nTaskRewCardId)
	if nRewCardData1 >= 1 then 
		return false
	else
		return true
	end 
	
end 

--主对白
function ChristmasCard2019_NpcText()
	-- local nEventTypeRewardCard = tChristmasCard2019_Stc["RewardCard"]["EventType"] 
	-- local nDataTypeRewardCard = tChristmasCard2019_Stc["RewardCard"]["DataType"]
	-- if Task_StcInterval(nEventTypeRewardCard,nDataTypeRewardCard,1,4) then 
		-- Task_SetStatistic(nEventTypeRewardCard,nDataTypeRewardCard,0,1)     --隔天重置领取情况
		-- Task_SetStcTimestamp(nEventTypeRewardCard,nDataTypeRewardCard,0)
	-- end 
	-- local nDataRewardCard = Get_UserStatisticValue(nEventTypeRewardCard,nDataTypeRewardCard)
	-- --记录玩家当天是否寄出了贺卡
	-- local nEventTypeSendCard = tChristmasCard2019_Stc["SendCard"]["EventType"] 
	-- local nDataTypeSendCard = tChristmasCard2019_Stc["SendCard"]["DataType"]
	-- if Task_StcInterval(nEventTypeSendCard,nDataTypeSendCard,1,4) then 
		-- Task_SetStatistic(nEventTypeSendCard,nDataTypeSendCard,0,1)     --隔天重置寄出情况
		-- Task_SetStcTimestamp(nEventTypeSendCard,nDataTypeSendCard,0)
	-- end 
	-- local nDataSendCard = Get_UserStatisticValue(nEventTypeSendCard,nDataTypeSendCard)
	
	-- if nDataRewardCard == 0 then     -- 判断当天是否领取了贺卡
		-- LinkNpcGossipFunc_New(nNpcId,"1-1")
	-- else
		-- if nDataSendCard == 0 then -- 判断当天是否寄出了贺卡
			-- LinkNpcGossipFunc_New(nNpcId,"2-1")
		-- else
			-- LinkNpcGossipFunc_New(nNpcId,"1-1")
		-- end 
	-- end 
	-- User_TalkChannel2005(type(tActivityTime["AllServerChallenge"]["ActivityTime"]))
	local nNpcId = Get_NpcId()
	if not Sys_ChkFullTime(tActivityTime["GlobalChristmas"]["ActivityTime"]) then 
		return
	end 
	-- 本服NPC隔天清理掩码（跨服部分在进场时候清）
	if nNpcId == 25738 then 
		local nGuidePlayers_UserId = Get_UserId()
		ChristmasCard2019_ResetInfo()
		GuidePlayers_TaskClear(nGuidePlayers_UserId)
	end 
	-- 获取玩家国籍跳转不同对白
	local nUserNation = User_ChkLanguage()
	-- local nUserNation = 1
	local nTaskRewCardId = tChristmasCard2019_TaskId["RewardCard"]
	if not Task_ChkTaskDetail(nTaskRewCardId) then   --检测是否有领取贺卡的掩码
		LinkNpcGossipFunc_New(nNpcId,"1-" ..nUserNation)
		-- LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end 
	local nRewCardData1 = Get_TaskDetailData1(nTaskRewCardId)
	local nRewCardData2 = Get_TaskDetailData2(nTaskRewCardId)
	if nRewCardData1 == 0 then
		LinkNpcGossipFunc_New(nNpcId,"1-" ..nUserNation)
		return
	else
		if nRewCardData2 == 0 then
			LinkNpcGossipFunc_New(nNpcId,"2-" ..nUserNation)
			return 
		else
			LinkNpcGossipFunc_New(nNpcId,"1-" ..nUserNation)
		end
	end 
end 

-- 领取贺卡
function ChristmasCard2019_RewardCard(nNpcId)
	if not Sys_ChkFullTime(tActivityTime["GlobalChristmas"]["ActivityTime"]) then 
		return
	end 
	local nUserNation = User_ChkLanguage()
	local nTaskRewCardId = tChristmasCard2019_TaskId["RewardCard"]
	local nTaskId = tChristmasCard2019_TaskId["TaskId"]
	if not Task_ChkTaskDetail(nTaskRewCardId) then   --检测是否有领取贺卡的掩码
		Sys_MsgBox(tChristmasCard2019_Text["Sys_MsgBox"][nUserNation]["TaskFull"])
		return
	end 
	local nRewCardData1 = Get_TaskDetailData1(nTaskRewCardId)
	if nRewCardData1 == 0 then 
		local nNationality = math.random(1,4)  --随机一个国籍 获取对应的贺卡
		local nItemId = tChristmasCard2019_Data["CardId"][nNationality]
		local sItemName = Get_ItemtypeName(nItemId)
		local bJudge = TermsOfUse_Main(nItemId,tChristmasCard2019_Pack[nNationality])
		if not bJudge then
			return 
		end
		if Task_SetTaskDetailData1(nTaskRewCardId,1) then    -- 已领取贺卡标记
			local nNowUserId = Get_UserId()
			GuidePlayers_TaskComplete(nNowUserId)
			if Task_ChkTaskDetail(nTaskId) then
				Task_SetTaskDetailData2(nTaskId,1)
			end 
			RewardTemplate_UseItemAndMsg(tChristmasCard2019_Pack[nNationality])   --给随机国籍的贺卡
			
			-- 获取玩家国籍跳转不同对白
			-- local nUserNation = 1
			LinkNpcGossipFunc_New(nNpcId,"2-" ..nUserNation)
			
			--获取各个临时表长度(寄卡玩家信息)
			local nNameTabLen = #tChristmasCard2019_CardInfo[nNationality]["sName"]
			local nBlessingNumTabLen = #tChristmasCard2019_CardInfo[nNationality]["nBlessingNum"]
			local sName
			local nBlessingNum
			if nNameTabLen ~= 0 and nBlessingNumTabLen ~= 0 then 
				local nNum = math.random(1,nNameTabLen)
				sName = tChristmasCard2019_CardInfo[nNationality]["sName"][nNum]
				nBlessingNum = tChristmasCard2019_CardInfo[nNationality]["nBlessingNum"][nNum]
			else
				nBlessingNum = math.random(1,3)
				local nRandom = math.random(1,10)
				sName = tChristmasCard2019_Text["Name"][nNationality][nRandom]
			end 
			if sName ~= nil then 
				local sText = string.format(tChristmasCard2019_Text["Sys_MsgBox"][nUserNation]["RewardCard"],sName,sItemName)
				User_TalkChannel2005(sText)
			end 
			return 
		end 
	else
		Sys_MsgBox(tChristmasCard2019_Text["Sys_MsgBox"][nUserNation]["Again"])
		return
	end 
	
end 

-- 寄贺卡
function ChristmasCard2019_SendCard(nBlessingNum)
	if not Sys_ChkFullTime(tActivityTime["GlobalChristmas"]["ActivityTime"]) then 
		return
	end 
	local nCardUserId = Get_UserId()
	local sName = Get_UserName(nCardUserId)
	local nUserNation = User_ChkLanguage()            --获取玩家国籍
	-- local nUserNation = 1
	-- table.insert(tChristmasCard2019_CardInfo[nUserNation],{nUserId,sName,nBlessingNum,nUserNation})   -- {玩家id，玩家姓名，玩家选择的祝福序号，玩家国籍}
	table.insert(tChristmasCard2019_CardInfo[nUserNation]["nUserId"],nCardUserId)   -- {玩家id}
	table.insert(tChristmasCard2019_CardInfo[nUserNation]["sName"],sName)   -- {玩家姓名}
	table.insert(tChristmasCard2019_CardInfo[nUserNation]["nBlessingNum"],nBlessingNum)   -- {玩家选择的祝福序号}
	table.insert(tChristmasCard2019_CardInfo[nUserNation]["nUserNation"],nUserNation)   -- {玩家国籍}
	local nTaskRewCardId = tChristmasCard2019_TaskId["RewardCard"]
	if Task_ChkTaskDetail(nTaskRewCardId) then
		Task_SetTaskDetailData2(nTaskRewCardId,1)
		Sys_MsgBox(tChristmasCard2019_Text["Sys_MsgBox"][nUserNation]["WriteCard"])
		User_EffectAdd(tChristmasCard2019_Data["EffectObj"],tChristmasCard2019_Data["Effect"]["GetReward"])
	end 
end 



-- 打开贺卡
function ChristmasCard2019_OpenCard(nItemId)
	if CommonFunc_GetAfterActivityTime(tActivityTime["GlobalChristmas"]["ActivityTime"]) then 
		local nItemNum = Get_CountItemType(nItemId,0)
		local tTextLog = string.format(tChristmasCard2019_Log["DeleteLog"],nItemId,nItemNum)
		Item_DelMulItem(nItemId,nItemId,nItemNum)
		Sys_SaveActionFestivalLog(tTextLog)
		return
	end 
	-- -- 返回true表示是跨服玩家，false表示本服玩家
	-- if not User_IsCross() then 
		-- Sys_MsgBox(tChristmasCard2019_Text["Sys_MsgBox"]["UnMap"])
		-- return
	-- end 
	-- local nMapId = tChristmasCard2019_Data["MapId"][1]
	-- local nUserMapId = Get_UserMapId()
	-- if nMapId ~= nUserMapId then 
		-- Sys_MsgBox(tChristmasCard2019_Text["Sys_MsgBox"]["UnMap"])
		-- return
	-- end 
	local bJudge = TermsOfUse_Main(nItemId,tChristmasCard2019_Pack[nItemId])
	if not bJudge then
		return
	end
	
	local nUserNation = tChristmasCard2019_Data["CardNation"][nItemId]            --获取贺卡的国籍
	--获取各个临时表长度(寄卡玩家信息)
	-- local nUserIdTabLen = #tChristmasCard2019_CardInfo[nUserNation]["nUserId"]
	local nNameTabLen = #tChristmasCard2019_CardInfo[nUserNation]["sName"]
	local nBlessingNumTabLen = #tChristmasCard2019_CardInfo[nUserNation]["nBlessingNum"]
	-- local nUserNationLen = #tChristmasCard2019_CardInfo[nUserNation]["nUserNation"]
	local sName
	local nBlessingNum
	if nNameTabLen ~= 0 and nBlessingNumTabLen ~= 0 then 
		local nNum = math.random(1,nNameTabLen)
		sName = tChristmasCard2019_CardInfo[nUserNation]["sName"][nNum]
		nBlessingNum = tChristmasCard2019_CardInfo[nUserNation]["nBlessingNum"][nNum]
	else
		nBlessingNum = math.random(1,3)
		local nRandom = math.random(1,10)
		sName = tChristmasCard2019_Text["Name"][nUserNation][nRandom]
	end 
	local nUserNationUser = User_ChkLanguage()
	if sName ~= nil and nBlessingNum ~= nil then 
		-- tItem[nItemId]["DialogueText"] = tChristmasCard2019_Text["Blessing"][nUserNationUser]
		if nBlessingNum == 1 then 
			-- tItem[nItemId]["Text111"] = string.format(tChristmasCard2019_Text["Blessing"][nUserNationUser]["Text111"],sName)
			tItem[nItemId]["Text112"] = tChristmasCard2019_Text["Blessing"][nUserNationUser]["Text112"]
			tItem[nItemId]["Text113"] = tChristmasCard2019_Text["Blessing"][nUserNationUser]["Text113"]
			tItem[nItemId]["Option111"] = tChristmasCard2019_Text["Blessing"][nUserNationUser]["Option111"]
			LinkItemGossipFunc_New(nItemId,"1-1")
		elseif nBlessingNum == 2 then 
			-- tItem[nItemId]["Text121"] = string.format(tChristmasCard2019_Text["Blessing"][nUserNationUser]["Text121"],sName)
			tItem[nItemId]["Text122"] = tChristmasCard2019_Text["Blessing"][nUserNationUser]["Text122"]
			tItem[nItemId]["Text123"] = tChristmasCard2019_Text["Blessing"][nUserNationUser]["Text123"]
			tItem[nItemId]["Option121"] = tChristmasCard2019_Text["Blessing"][nUserNationUser]["Option121"]
			LinkItemGossipFunc_New(nItemId,"1-2")
		else
			-- tItem[nItemId]["Text131"] = string.format(tChristmasCard2019_Text["Blessing"][nUserNationUser]["Text131"],sName)
			tItem[nItemId]["Text132"] = tChristmasCard2019_Text["Blessing"][nUserNationUser]["Text132"]
			tItem[nItemId]["Text133"] = tChristmasCard2019_Text["Blessing"][nUserNationUser]["Text133"]
			tItem[nItemId]["Option131"] = tChristmasCard2019_Text["Blessing"][nUserNationUser]["Option131"]
			LinkItemGossipFunc_New(nItemId,"1-3")
		end 
	end 
	RewardTemplate_UseItemAndMsg(tChristmasCard2019_Pack[nItemId])
end 

-- 打开礼包
function ChristmasCard2019_OpenPack(nItemId)
	if CommonFunc_GetAfterActivityTime(tActivityTime["GlobalChristmas"]["ActivityTime"]) then 
		local nItemNum = Get_CountItemType(nItemId,0)
		local tTextLog = string.format(tChristmasCard2019_Log["DeleteLog"],nItemId,nItemNum)
		Item_DelMulItem(nItemId,nItemId,nItemNum)
		Sys_SaveActionFestivalLog(tTextLog)
		return
	end
	local bJudge = TermsOfUse_Main(nItemId,tChristmasCard2019_Pack[nItemId])
	if not bJudge then
		return
	end
	
	local nUserNation = User_ChkLanguage()
	-- local tReward,sRewardStr = RewardTemplate_RandomReward(tChristmasCard2019_Pack,nItemId)
	local tReward = RewardTemplate_RandomReward(tChristmasCard2019_Pack,nItemId)
	if type(tReward) == "table" then
		local nItemNum = tReward[1]["tAward"][1]["Item_1"]
		if nItemNum == 2 then 
			local nItemId = tReward[1]["tAward"][1]["RewardItem"][1]["Id"]
			local nItemName = Get_ItemtypeName(nItemId)
			local nUserName= Get_UserName()
			local sText = string.format(tChristmasCard2019_Text["Sys_MsgBox"][nUserNation]["PreciousReward"],nUserName,nItemName)
			Sys_SystemBroadcast(sText)
			Sys_TalkBroadcast(sText)
		end 
	end 
end 
	
	

function ChristmasCard2019_DuTiao(nNpcId,nNum)
	local nExploreTime = tChristmasCard2019_Data["ExploreTime"]
	local nExploreAction = tChristmasCard2019_Data["ExploreAction"]
	local nCardUserId = Get_UserId()
	local nUserNation = User_ChkLanguage()            --获取玩家国籍
	-- User_SetExplore(nExploreTime,tChristmasCard2019_Text["Sys_MsgBox"][nUserNation]["DuTiaoCard"],nExploreAction,"LinkNpcGossipFunc_New</N>" ..nNpcId.. "</N>" ..nNum.. "-1</N>0</N>8</N>" ..nCardUserId)
	-- User_SetExplore(nExploreTime,tChristmasCard2019_Text["Sys_MsgBox"][nUserNation]["DuTiaoCard"],nExploreAction,"LinkNpcGossipFunc_New</N>" ..nNpcId.. "</N>" ..nNum.. "-" ..nNum2.. "</N>0</N>8</N>" ..nCardUserId)
	User_SetExplore(nExploreTime,tChristmasCard2019_Text["Sys_MsgBox"][nUserNation]["DuTiaoCard"],nExploreAction,"LinkNpcGossipFunc_New</N>" ..nNpcId.. "</S>" ..nNum.. "</N>0</N>8</N>" ..nCardUserId)
end 




-- 播放光效
function ChristmasCard2019_Effect()
	User_EffectAdd(tChristmasCard2019_Data["EffectObj"],tChristmasCard2019_Data["Effect"]["GetReward"])
end 
	
	

	
-----------------------------------------------------------------------Npc对白
--缤纷圣诞树(主会场)
tNpcFace[2189] = 201
tNpcGossip[25619] = tNpcGossip[25619] or DefaultNpc:new{}
tNpcGossip[25619]["OptionHidden"] = 1
tNpcGossip[25619]["DialogueText"] = tChristmasCard2019_Text[25619]
-- 中文
--活动中
tNpcGossip[25619]["Text1-1"] = {111,112,113,114,115,116,117,118}
tNpcGossip[25619]["tOption1-1"] = {111,112,113}
tNpcGossip[25619]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tActivityTime["GlobalChristmas"]["ActivityTime"])
end
tNpcGossip[25619]["OptionFunc111"] = "ChristmasCard2019_RewardCard</N>25619"
tNpcGossip[25619]["OptionChkFunc111"] = function ()
	return ChristmasCard2019_RewardCardSituation()
end 
tNpcGossip[25619]["OptionFunc112"] = "NpcPosition_PathFind</N>25662"
tNpcGossip[25619]["OptionChkFunc112"] = function ()
	return not ChristmasCard2019_RewardCardSituation()
end 

-- 接1、领取贺卡
tNpcGossip[25619]["Text2-1"] = {211,212}
tNpcGossip[25619]["tOption2-1"] = {211,212}
tNpcGossip[25619]["OptionPoint211"] = "3-1"

-- 接1-1、写一封吧
tNpcGossip[25619]["Text3-1"] = {311,312,313,314,315,316,317}
tNpcGossip[25619]["tOption3-1"] = {311,312,313}
-- tNpcGossip[25619]["OptionPoint311"] = "4-1"
-- tNpcGossip[25619]["OptionPoint312"] = "5-1"
-- tNpcGossip[25619]["OptionPoint313"] = "6-1"
tNpcGossip[25619]["OptionFunc311"] = "ChristmasCard2019_DuTiao</N>25619</S>4-1"
tNpcGossip[25619]["OptionFunc312"] = "ChristmasCard2019_DuTiao</N>25619</S>5-1"
tNpcGossip[25619]["OptionFunc313"] = "ChristmasCard2019_DuTiao</N>25619</S>6-1"
-- 接1、挑选圣诞贺卡·壹
tNpcGossip[25619]["Text4-1"] = {411,412,413}
tNpcGossip[25619]["tOption4-1"] = {411,412}
tNpcGossip[25619]["OptionFunc411"] = "ChristmasCard2019_SendCard</N>1"
tNpcGossip[25619]["OptionPoint412"] = "3-1"
-- 接2、挑选圣诞贺卡·贰
tNpcGossip[25619]["Text5-1"] = {511,512,513}
tNpcGossip[25619]["tOption5-1"] = {511,512}
tNpcGossip[25619]["OptionFunc511"] = "ChristmasCard2019_SendCard</N>2"
tNpcGossip[25619]["OptionPoint512"] = "3-1"
-- 接3、挑选圣诞贺卡·叁
tNpcGossip[25619]["Text6-1"] = {611,612,613}
tNpcGossip[25619]["tOption6-1"] = {611,612}
tNpcGossip[25619]["OptionFunc611"] = "ChristmasCard2019_SendCard</N>3"
tNpcGossip[25619]["OptionPoint612"] = "3-1"

-- 英文
--活动中
tNpcGossip[25619]["Text1-2"] = {121,122,123,124,125,126,127,128}
tNpcGossip[25619]["tOption1-2"] = {121,122,123}
tNpcGossip[25619]["ChkFunc1-2"] = function ()
	return Sys_ChkFullTime(tActivityTime["GlobalChristmas"]["ActivityTime"])
end
tNpcGossip[25619]["OptionFunc121"] = "ChristmasCard2019_RewardCard</N>25619"
tNpcGossip[25619]["OptionChkFunc121"] = function ()
	return ChristmasCard2019_RewardCardSituation()
end 
tNpcGossip[25619]["OptionFunc122"] = "NpcPosition_PathFind</N>25662"
tNpcGossip[25619]["OptionChkFunc122"] = function ()
	return not ChristmasCard2019_RewardCardSituation()
end 

-- 接1、领取贺卡
tNpcGossip[25619]["Text2-2"] = {221,222}
tNpcGossip[25619]["tOption2-2"] = {221,222}
tNpcGossip[25619]["OptionPoint221"] = "3-2"

-- 接1-1、写一封吧
tNpcGossip[25619]["Text3-2"] = {321,322,323,324,325,326,327}
tNpcGossip[25619]["tOption3-2"] = {321,322,323}
tNpcGossip[25619]["OptionFunc321"] = "ChristmasCard2019_DuTiao</N>25619</S>4-2"
tNpcGossip[25619]["OptionFunc322"] = "ChristmasCard2019_DuTiao</N>25619</S>5-2"
tNpcGossip[25619]["OptionFunc323"] = "ChristmasCard2019_DuTiao</N>25619</S>6-2"
-- 接1、挑选圣诞贺卡·壹
tNpcGossip[25619]["Text4-2"] = {421,422,423}
tNpcGossip[25619]["tOption4-2"] = {421,422}
tNpcGossip[25619]["OptionFunc421"] = "ChristmasCard2019_SendCard</N>1"
tNpcGossip[25619]["OptionPoint422"] = "3-2"
-- 接2、挑选圣诞贺卡·贰
tNpcGossip[25619]["Text5-2"] = {521,522,523}
tNpcGossip[25619]["tOption5-2"] = {521,522}
tNpcGossip[25619]["OptionFunc521"] = "ChristmasCard2019_SendCard</N>2"
tNpcGossip[25619]["OptionPoint522"] = "3-2"
-- 接3、挑选圣诞贺卡·叁
tNpcGossip[25619]["Text6-2"] = {621,622,623}
tNpcGossip[25619]["tOption6-2"] = {621,622}
tNpcGossip[25619]["OptionFunc621"] = "ChristmasCard2019_SendCard</N>3"
tNpcGossip[25619]["OptionPoint622"] = "3-2"

-- 西语
--活动中
tNpcGossip[25619]["Text1-3"] = {131,132,133,134,135,136,137,138}
tNpcGossip[25619]["tOption1-3"] = {131,132,133}
tNpcGossip[25619]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tActivityTime["GlobalChristmas"]["ActivityTime"])
end
tNpcGossip[25619]["OptionFunc131"] = "ChristmasCard2019_RewardCard</N>25619"
tNpcGossip[25619]["OptionChkFunc131"] = function ()
	return ChristmasCard2019_RewardCardSituation()
end 
tNpcGossip[25619]["OptionFunc132"] = "NpcPosition_PathFind</N>25662"
tNpcGossip[25619]["OptionChkFunc132"] = function ()
	return not ChristmasCard2019_RewardCardSituation()
end 

-- 接1、领取贺卡
tNpcGossip[25619]["Text2-3"] = {231,232}
tNpcGossip[25619]["tOption2-3"] = {231,232}
tNpcGossip[25619]["OptionPoint231"] = "3-3"

-- 接1-1、写一封吧
tNpcGossip[25619]["Text3-3"] = {331,332,333,334,335,336,337}
tNpcGossip[25619]["tOption3-3"] = {331,332,333}
tNpcGossip[25619]["OptionFunc331"] = "ChristmasCard2019_DuTiao</N>25619</S>4-3"
tNpcGossip[25619]["OptionFunc332"] = "ChristmasCard2019_DuTiao</N>25619</S>5-3"
tNpcGossip[25619]["OptionFunc333"] = "ChristmasCard2019_DuTiao</N>25619</S>6-3"
-- 接1、挑选圣诞贺卡·壹
tNpcGossip[25619]["Text4-3"] = {431,432,433}
tNpcGossip[25619]["tOption4-3"] = {431,432}
tNpcGossip[25619]["OptionFunc431"] = "ChristmasCard2019_SendCard</N>1"
tNpcGossip[25619]["OptionPoint432"] = "3-3"
-- 接2、挑选圣诞贺卡·贰
tNpcGossip[25619]["Text5-3"] = {531,532,533}
tNpcGossip[25619]["tOption5-3"] = {531,532}
tNpcGossip[25619]["OptionFunc531"] = "ChristmasCard2019_SendCard</N>2"
tNpcGossip[25619]["OptionPoint532"] = "3-3"
-- 接3、挑选圣诞贺卡·叁
tNpcGossip[25619]["Text6-3"] = {631,632,633}
tNpcGossip[25619]["tOption6-3"] = {631,632}
tNpcGossip[25619]["OptionFunc631"] = "ChristmasCard2019_SendCard</N>3"
tNpcGossip[25619]["OptionPoint632"] = "3-3"


-- 阿语
--活动中
tNpcGossip[25619]["Text1-4"] = {141,142,143,144,145,146,147,148}
tNpcGossip[25619]["tOption1-4"] = {141,142,143}
tNpcGossip[25619]["ChkFunc1-4"] = function ()
	return Sys_ChkFullTime(tActivityTime["GlobalChristmas"]["ActivityTime"])
end
tNpcGossip[25619]["OptionFunc141"] = "ChristmasCard2019_RewardCard</N>25619"
tNpcGossip[25619]["OptionChkFunc141"] = function ()
	return ChristmasCard2019_RewardCardSituation()
end 
tNpcGossip[25619]["OptionFunc142"] = "NpcPosition_PathFind</N>25662"
tNpcGossip[25619]["OptionChkFunc142"] = function ()
	return not ChristmasCard2019_RewardCardSituation()
end 

-- 接1、领取贺卡
tNpcGossip[25619]["Text2-4"] = {241,242}
tNpcGossip[25619]["tOption2-4"] = {241,242}
tNpcGossip[25619]["OptionPoint241"] = "3-4"

-- 接1-1、写一封吧
tNpcGossip[25619]["Text3-4"] = {341,342,343,344,345,346,347}
tNpcGossip[25619]["tOption3-4"] = {341,342,343}
tNpcGossip[25619]["OptionFunc341"] = "ChristmasCard2019_DuTiao</N>25619</S>4-4"
tNpcGossip[25619]["OptionFunc342"] = "ChristmasCard2019_DuTiao</N>25619</S>5-4"
tNpcGossip[25619]["OptionFunc343"] = "ChristmasCard2019_DuTiao</N>25619</S>6-4"
-- 接1、挑选圣诞贺卡·壹
tNpcGossip[25619]["Text4-4"] = {441,442,443}
tNpcGossip[25619]["tOption4-4"] = {441,442}
tNpcGossip[25619]["OptionFunc441"] = "ChristmasCard2019_SendCard</N>1"
tNpcGossip[25619]["OptionPoint442"] = "3-4"
-- 接2、挑选圣诞贺卡·贰
tNpcGossip[25619]["Text5-4"] = {541,542,543}
tNpcGossip[25619]["tOption5-4"] = {541,542}
tNpcGossip[25619]["OptionFunc541"] = "ChristmasCard2019_SendCard</N>2"
tNpcGossip[25619]["OptionPoint542"] = "3-4"
-- 接3、挑选圣诞贺卡·叁
tNpcGossip[25619]["Text6-4"] = {641,642,643}
tNpcGossip[25619]["tOption6-4"] = {641,642}
tNpcGossip[25619]["OptionFunc641"] = "ChristmasCard2019_SendCard</N>3"
tNpcGossip[25619]["OptionPoint642"] = "3-4"

----------------------------------------------------------(分会场一)
--缤纷圣诞树(分会场一)
tNpcFace[2189] = 201
tNpcGossip[25736] = tNpcGossip[25736] or DefaultNpc:new{}
tNpcGossip[25736]["OptionHidden"] = 1
tNpcGossip[25736]["DialogueText"] = tChristmasCard2019_Text[25619]
-- 中文
--活动中
tNpcGossip[25736]["Text1-1"] = {111,112,113,114,115,116,117,118}
tNpcGossip[25736]["tOption1-1"] = {111,112,113}
tNpcGossip[25736]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tActivityTime["GlobalChristmas"]["ActivityTime"])
end
tNpcGossip[25736]["OptionFunc111"] = "ChristmasCard2019_RewardCard</N>25736"
tNpcGossip[25736]["OptionChkFunc111"] = function ()
	return ChristmasCard2019_RewardCardSituation()
end 
tNpcGossip[25736]["OptionFunc112"] = "NpcPosition_PathFind</N>25684"
tNpcGossip[25736]["OptionChkFunc112"] = function ()
	return not ChristmasCard2019_RewardCardSituation()
end 

-- 接1、领取贺卡
tNpcGossip[25736]["Text2-1"] = {211,212}
tNpcGossip[25736]["tOption2-1"] = {211,212}
tNpcGossip[25736]["OptionPoint211"] = "3-1"

-- 接1-1、写一封吧
tNpcGossip[25736]["Text3-1"] = {311,312,313,314,315,316,317}
tNpcGossip[25736]["tOption3-1"] = {311,312,313}
-- tNpcGossip[25736]["OptionPoint311"] = "4-1"
-- tNpcGossip[25736]["OptionPoint312"] = "5-1"
-- tNpcGossip[25736]["OptionPoint313"] = "6-1"
tNpcGossip[25736]["OptionFunc311"] = "ChristmasCard2019_DuTiao</N>25736</S>4-1"
tNpcGossip[25736]["OptionFunc312"] = "ChristmasCard2019_DuTiao</N>25736</S>5-1"
tNpcGossip[25736]["OptionFunc313"] = "ChristmasCard2019_DuTiao</N>25736</S>6-1"
-- 接1、挑选圣诞贺卡·壹
tNpcGossip[25736]["Text4-1"] = {411,412,413}
tNpcGossip[25736]["tOption4-1"] = {411,412}
tNpcGossip[25736]["OptionFunc411"] = "ChristmasCard2019_SendCard</N>1"
tNpcGossip[25736]["OptionPoint412"] = "3-1"
-- 接2、挑选圣诞贺卡·贰
tNpcGossip[25736]["Text5-1"] = {511,512,513}
tNpcGossip[25736]["tOption5-1"] = {511,512}
tNpcGossip[25736]["OptionFunc511"] = "ChristmasCard2019_SendCard</N>2"
tNpcGossip[25736]["OptionPoint512"] = "3-1"
-- 接3、挑选圣诞贺卡·叁
tNpcGossip[25736]["Text6-1"] = {611,612,613}
tNpcGossip[25736]["tOption6-1"] = {611,612}
tNpcGossip[25736]["OptionFunc611"] = "ChristmasCard2019_SendCard</N>3"
tNpcGossip[25736]["OptionPoint612"] = "3-1"

-- 英文
--活动中
tNpcGossip[25736]["Text1-2"] = {121,122,123,124,125,126,127,128}
tNpcGossip[25736]["tOption1-2"] = {121,122,123}
tNpcGossip[25736]["ChkFunc1-2"] = function ()
	return Sys_ChkFullTime(tActivityTime["GlobalChristmas"]["ActivityTime"])
end
tNpcGossip[25736]["OptionFunc121"] = "ChristmasCard2019_RewardCard</N>25736"
tNpcGossip[25736]["OptionChkFunc121"] = function ()
	return ChristmasCard2019_RewardCardSituation()
end 
tNpcGossip[25736]["OptionFunc122"] = "NpcPosition_PathFind</N>25684"
tNpcGossip[25736]["OptionChkFunc122"] = function ()
	return not ChristmasCard2019_RewardCardSituation()
end 

-- 接1、领取贺卡
tNpcGossip[25736]["Text2-2"] = {221,222}
tNpcGossip[25736]["tOption2-2"] = {221,222}
tNpcGossip[25736]["OptionPoint221"] = "3-2"

-- 接1-1、写一封吧
tNpcGossip[25736]["Text3-2"] = {321,322,323,324,325,326,327}
tNpcGossip[25736]["tOption3-2"] = {321,322,323}
tNpcGossip[25736]["OptionFunc321"] = "ChristmasCard2019_DuTiao</N>25736</S>4-2"
tNpcGossip[25736]["OptionFunc322"] = "ChristmasCard2019_DuTiao</N>25736</S>5-2"
tNpcGossip[25736]["OptionFunc323"] = "ChristmasCard2019_DuTiao</N>25736</S>6-2"
-- 接1、挑选圣诞贺卡·壹
tNpcGossip[25736]["Text4-2"] = {421,422,423}
tNpcGossip[25736]["tOption4-2"] = {421,422}
tNpcGossip[25736]["OptionFunc421"] = "ChristmasCard2019_SendCard</N>1"
tNpcGossip[25736]["OptionPoint422"] = "3-2"
-- 接2、挑选圣诞贺卡·贰
tNpcGossip[25736]["Text5-2"] = {521,522,523}
tNpcGossip[25736]["tOption5-2"] = {521,522}
tNpcGossip[25736]["OptionFunc521"] = "ChristmasCard2019_SendCard</N>2"
tNpcGossip[25736]["OptionPoint522"] = "3-2"
-- 接3、挑选圣诞贺卡·叁
tNpcGossip[25736]["Text6-2"] = {621,622,623}
tNpcGossip[25736]["tOption6-2"] = {621,622}
tNpcGossip[25736]["OptionFunc621"] = "ChristmasCard2019_SendCard</N>3"
tNpcGossip[25736]["OptionPoint622"] = "3-2"

-- 西语
--活动中
tNpcGossip[25736]["Text1-3"] = {131,132,133,134,135,136,137,138}
tNpcGossip[25736]["tOption1-3"] = {131,132,133}
tNpcGossip[25736]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tActivityTime["GlobalChristmas"]["ActivityTime"])
end
tNpcGossip[25736]["OptionFunc131"] = "ChristmasCard2019_RewardCard</N>25736"
tNpcGossip[25736]["OptionChkFunc131"] = function ()
	return ChristmasCard2019_RewardCardSituation()
end 
tNpcGossip[25736]["OptionFunc132"] = "NpcPosition_PathFind</N>25684"
tNpcGossip[25736]["OptionChkFunc132"] = function ()
	return not ChristmasCard2019_RewardCardSituation()
end 

-- 接1、领取贺卡
tNpcGossip[25736]["Text2-3"] = {231,232}
tNpcGossip[25736]["tOption2-3"] = {231,232}
tNpcGossip[25736]["OptionPoint231"] = "3-3"

-- 接1-1、写一封吧
tNpcGossip[25736]["Text3-3"] = {331,332,333,334,335,336,337}
tNpcGossip[25736]["tOption3-3"] = {331,332,333}
tNpcGossip[25736]["OptionFunc331"] = "ChristmasCard2019_DuTiao</N>25736</S>4-3"
tNpcGossip[25736]["OptionFunc332"] = "ChristmasCard2019_DuTiao</N>25736</S>5-3"
tNpcGossip[25736]["OptionFunc333"] = "ChristmasCard2019_DuTiao</N>25736</S>6-3"
-- 接1、挑选圣诞贺卡·壹
tNpcGossip[25736]["Text4-3"] = {431,432,433}
tNpcGossip[25736]["tOption4-3"] = {431,432}
tNpcGossip[25736]["OptionFunc431"] = "ChristmasCard2019_SendCard</N>1"
tNpcGossip[25736]["OptionPoint432"] = "3-3"
-- 接2、挑选圣诞贺卡·贰
tNpcGossip[25736]["Text5-3"] = {531,532,533}
tNpcGossip[25736]["tOption5-3"] = {531,532}
tNpcGossip[25736]["OptionFunc531"] = "ChristmasCard2019_SendCard</N>2"
tNpcGossip[25736]["OptionPoint532"] = "3-3"
-- 接3、挑选圣诞贺卡·叁
tNpcGossip[25736]["Text6-3"] = {631,632,633}
tNpcGossip[25736]["tOption6-3"] = {631,632}
tNpcGossip[25736]["OptionFunc631"] = "ChristmasCard2019_SendCard</N>3"
tNpcGossip[25736]["OptionPoint632"] = "3-3"


-- 阿语
--活动中
tNpcGossip[25736]["Text1-4"] = {141,142,143,144,145,146,147,148}
tNpcGossip[25736]["tOption1-4"] = {141,142,143}
tNpcGossip[25736]["ChkFunc1-4"] = function ()
	return Sys_ChkFullTime(tActivityTime["GlobalChristmas"]["ActivityTime"])
end
tNpcGossip[25736]["OptionFunc141"] = "ChristmasCard2019_RewardCard</N>25736"
tNpcGossip[25736]["OptionChkFunc141"] = function ()
	return ChristmasCard2019_RewardCardSituation()
end 
tNpcGossip[25736]["OptionFunc142"] = "NpcPosition_PathFind</N>25684"
tNpcGossip[25736]["OptionChkFunc142"] = function ()
	return not ChristmasCard2019_RewardCardSituation()
end 

-- 接1、领取贺卡
tNpcGossip[25736]["Text2-4"] = {241,242}
tNpcGossip[25736]["tOption2-4"] = {241,242}
tNpcGossip[25736]["OptionPoint241"] = "3-4"

-- 接1-1、写一封吧
tNpcGossip[25736]["Text3-4"] = {341,342,343,344,345,346,347}
tNpcGossip[25736]["tOption3-4"] = {341,342,343}
tNpcGossip[25736]["OptionFunc341"] = "ChristmasCard2019_DuTiao</N>25736</S>4-4"
tNpcGossip[25736]["OptionFunc342"] = "ChristmasCard2019_DuTiao</N>25736</S>5-4"
tNpcGossip[25736]["OptionFunc343"] = "ChristmasCard2019_DuTiao</N>25736</S>6-4"
-- 接1、挑选圣诞贺卡·壹
tNpcGossip[25736]["Text4-4"] = {441,442,443}
tNpcGossip[25736]["tOption4-4"] = {441,442}
tNpcGossip[25736]["OptionFunc441"] = "ChristmasCard2019_SendCard</N>1"
tNpcGossip[25736]["OptionPoint442"] = "3-4"
-- 接2、挑选圣诞贺卡·贰
tNpcGossip[25736]["Text5-4"] = {541,542,543}
tNpcGossip[25736]["tOption5-4"] = {541,542}
tNpcGossip[25736]["OptionFunc541"] = "ChristmasCard2019_SendCard</N>2"
tNpcGossip[25736]["OptionPoint542"] = "3-4"
-- 接3、挑选圣诞贺卡·叁
tNpcGossip[25736]["Text6-4"] = {641,642,643}
tNpcGossip[25736]["tOption6-4"] = {641,642}
tNpcGossip[25736]["OptionFunc641"] = "ChristmasCard2019_SendCard</N>3"
tNpcGossip[25736]["OptionPoint642"] = "3-4"

----------------------------------------------------------(分会场二)
--缤纷圣诞树(分会场二)
tNpcFace[2189] = 201
tNpcGossip[25737] = tNpcGossip[25737] or DefaultNpc:new{}
tNpcGossip[25737]["OptionHidden"] = 1
tNpcGossip[25737]["DialogueText"] = tChristmasCard2019_Text[25619]
-- 中文
--活动中
tNpcGossip[25737]["Text1-1"] = {111,112,113,114,115,116,117,118}
tNpcGossip[25737]["tOption1-1"] = {111,112,113}
tNpcGossip[25737]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tActivityTime["GlobalChristmas"]["ActivityTime"])
end
tNpcGossip[25737]["OptionFunc111"] = "ChristmasCard2019_RewardCard</N>25737"
tNpcGossip[25737]["OptionChkFunc111"] = function ()
	return ChristmasCard2019_RewardCardSituation()
end 
tNpcGossip[25737]["OptionFunc112"] = "NpcPosition_PathFind</N>25685"
tNpcGossip[25737]["OptionChkFunc112"] = function ()
	return not ChristmasCard2019_RewardCardSituation()
end 

-- 接1、领取贺卡
tNpcGossip[25737]["Text2-1"] = {211,212}
tNpcGossip[25737]["tOption2-1"] = {211,212}
tNpcGossip[25737]["OptionPoint211"] = "3-1"

-- 接1-1、写一封吧
tNpcGossip[25737]["Text3-1"] = {311,312,313,314,315,316,317}
tNpcGossip[25737]["tOption3-1"] = {311,312,313}
-- tNpcGossip[25737]["OptionPoint311"] = "4-1"
-- tNpcGossip[25737]["OptionPoint312"] = "5-1"
-- tNpcGossip[25737]["OptionPoint313"] = "6-1"
tNpcGossip[25737]["OptionFunc311"] = "ChristmasCard2019_DuTiao</N>25737</S>4-1"
tNpcGossip[25737]["OptionFunc312"] = "ChristmasCard2019_DuTiao</N>25737</S>5-1"
tNpcGossip[25737]["OptionFunc313"] = "ChristmasCard2019_DuTiao</N>25737</S>6-1"
-- 接1、挑选圣诞贺卡·壹
tNpcGossip[25737]["Text4-1"] = {411,412,413}
tNpcGossip[25737]["tOption4-1"] = {411,412}
tNpcGossip[25737]["OptionFunc411"] = "ChristmasCard2019_SendCard</N>1"
tNpcGossip[25737]["OptionPoint412"] = "3-1"
-- 接2、挑选圣诞贺卡·贰
tNpcGossip[25737]["Text5-1"] = {511,512,513}
tNpcGossip[25737]["tOption5-1"] = {511,512}
tNpcGossip[25737]["OptionFunc511"] = "ChristmasCard2019_SendCard</N>2"
tNpcGossip[25737]["OptionPoint512"] = "3-1"
-- 接3、挑选圣诞贺卡·叁
tNpcGossip[25737]["Text6-1"] = {611,612,613}
tNpcGossip[25737]["tOption6-1"] = {611,612}
tNpcGossip[25737]["OptionFunc611"] = "ChristmasCard2019_SendCard</N>3"
tNpcGossip[25737]["OptionPoint612"] = "3-1"

-- 英文
--活动中
tNpcGossip[25737]["Text1-2"] = {121,122,123,124,125,126,127,128}
tNpcGossip[25737]["tOption1-2"] = {121,122,123}
tNpcGossip[25737]["ChkFunc1-2"] = function ()
	return Sys_ChkFullTime(tActivityTime["GlobalChristmas"]["ActivityTime"])
end
tNpcGossip[25737]["OptionFunc121"] = "ChristmasCard2019_RewardCard</N>25737"
tNpcGossip[25737]["OptionChkFunc121"] = function ()
	return ChristmasCard2019_RewardCardSituation()
end 
tNpcGossip[25737]["OptionFunc122"] = "NpcPosition_PathFind</N>25685"
tNpcGossip[25737]["OptionChkFunc122"] = function ()
	return not ChristmasCard2019_RewardCardSituation()
end 

-- 接1、领取贺卡
tNpcGossip[25737]["Text2-2"] = {221,222}
tNpcGossip[25737]["tOption2-2"] = {221,222}
tNpcGossip[25737]["OptionPoint221"] = "3-2"

-- 接1-1、写一封吧
tNpcGossip[25737]["Text3-2"] = {321,322,323,324,325,326,327}
tNpcGossip[25737]["tOption3-2"] = {321,322,323}
tNpcGossip[25737]["OptionFunc321"] = "ChristmasCard2019_DuTiao</N>25737</S>4-2"
tNpcGossip[25737]["OptionFunc322"] = "ChristmasCard2019_DuTiao</N>25737</S>5-2"
tNpcGossip[25737]["OptionFunc323"] = "ChristmasCard2019_DuTiao</N>25737</S>6-2"
-- 接1、挑选圣诞贺卡·壹
tNpcGossip[25737]["Text4-2"] = {421,422,423}
tNpcGossip[25737]["tOption4-2"] = {421,422}
tNpcGossip[25737]["OptionFunc421"] = "ChristmasCard2019_SendCard</N>1"
tNpcGossip[25737]["OptionPoint422"] = "3-2"
-- 接2、挑选圣诞贺卡·贰
tNpcGossip[25737]["Text5-2"] = {521,522,523}
tNpcGossip[25737]["tOption5-2"] = {521,522}
tNpcGossip[25737]["OptionFunc521"] = "ChristmasCard2019_SendCard</N>2"
tNpcGossip[25737]["OptionPoint522"] = "3-2"
-- 接3、挑选圣诞贺卡·叁
tNpcGossip[25737]["Text6-2"] = {621,622,623}
tNpcGossip[25737]["tOption6-2"] = {621,622}
tNpcGossip[25737]["OptionFunc621"] = "ChristmasCard2019_SendCard</N>3"
tNpcGossip[25737]["OptionPoint622"] = "3-2"

-- 西语
--活动中
tNpcGossip[25737]["Text1-3"] = {131,132,133,134,135,136,137,138}
tNpcGossip[25737]["tOption1-3"] = {131,132,133}
tNpcGossip[25737]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tActivityTime["GlobalChristmas"]["ActivityTime"])
end
tNpcGossip[25737]["OptionFunc131"] = "ChristmasCard2019_RewardCard</N>25737"
tNpcGossip[25737]["OptionChkFunc131"] = function ()
	return ChristmasCard2019_RewardCardSituation()
end 
tNpcGossip[25737]["OptionFunc132"] = "NpcPosition_PathFind</N>25685"
tNpcGossip[25737]["OptionChkFunc132"] = function ()
	return not ChristmasCard2019_RewardCardSituation()
end 

-- 接1、领取贺卡
tNpcGossip[25737]["Text2-3"] = {231,232}
tNpcGossip[25737]["tOption2-3"] = {231,232}
tNpcGossip[25737]["OptionPoint231"] = "3-3"

-- 接1-1、写一封吧
tNpcGossip[25737]["Text3-3"] = {331,332,333,334,335,336,337}
tNpcGossip[25737]["tOption3-3"] = {331,332,333}
tNpcGossip[25737]["OptionFunc331"] = "ChristmasCard2019_DuTiao</N>25737</S>4-3"
tNpcGossip[25737]["OptionFunc332"] = "ChristmasCard2019_DuTiao</N>25737</S>5-3"
tNpcGossip[25737]["OptionFunc333"] = "ChristmasCard2019_DuTiao</N>25737</S>6-3"
-- 接1、挑选圣诞贺卡·壹
tNpcGossip[25737]["Text4-3"] = {431,432,433}
tNpcGossip[25737]["tOption4-3"] = {431,432}
tNpcGossip[25737]["OptionFunc431"] = "ChristmasCard2019_SendCard</N>1"
tNpcGossip[25737]["OptionPoint432"] = "3-3"
-- 接2、挑选圣诞贺卡·贰
tNpcGossip[25737]["Text5-3"] = {531,532,533}
tNpcGossip[25737]["tOption5-3"] = {531,532}
tNpcGossip[25737]["OptionFunc531"] = "ChristmasCard2019_SendCard</N>2"
tNpcGossip[25737]["OptionPoint532"] = "3-3"
-- 接3、挑选圣诞贺卡·叁
tNpcGossip[25737]["Text6-3"] = {631,632,633}
tNpcGossip[25737]["tOption6-3"] = {631,632}
tNpcGossip[25737]["OptionFunc631"] = "ChristmasCard2019_SendCard</N>3"
tNpcGossip[25737]["OptionPoint632"] = "3-3"


-- 阿语
--活动中
tNpcGossip[25737]["Text1-4"] = {141,142,143,144,145,146,147,148}
tNpcGossip[25737]["tOption1-4"] = {141,142,143}
tNpcGossip[25737]["ChkFunc1-4"] = function ()
	return Sys_ChkFullTime(tActivityTime["GlobalChristmas"]["ActivityTime"])
end
tNpcGossip[25737]["OptionFunc141"] = "ChristmasCard2019_RewardCard</N>25737"
tNpcGossip[25737]["OptionChkFunc141"] = function ()
	return ChristmasCard2019_RewardCardSituation()
end 
tNpcGossip[25737]["OptionFunc142"] = "NpcPosition_PathFind</N>25685"
tNpcGossip[25737]["OptionChkFunc142"] = function ()
	return not ChristmasCard2019_RewardCardSituation()
end 

-- 接1、领取贺卡
tNpcGossip[25737]["Text2-4"] = {241,242}
tNpcGossip[25737]["tOption2-4"] = {241,242}
tNpcGossip[25737]["OptionPoint241"] = "3-4"

-- 接1-1、写一封吧
tNpcGossip[25737]["Text3-4"] = {341,342,343,344,345,346,347}
tNpcGossip[25737]["tOption3-4"] = {341,342,343}
tNpcGossip[25737]["OptionFunc341"] = "ChristmasCard2019_DuTiao</N>25737</S>4-4"
tNpcGossip[25737]["OptionFunc342"] = "ChristmasCard2019_DuTiao</N>25737</S>5-4"
tNpcGossip[25737]["OptionFunc343"] = "ChristmasCard2019_DuTiao</N>25737</S>6-4"
-- 接1、挑选圣诞贺卡·壹
tNpcGossip[25737]["Text4-4"] = {441,442,443}
tNpcGossip[25737]["tOption4-4"] = {441,442}
tNpcGossip[25737]["OptionFunc441"] = "ChristmasCard2019_SendCard</N>1"
tNpcGossip[25737]["OptionPoint442"] = "3-4"
-- 接2、挑选圣诞贺卡·贰
tNpcGossip[25737]["Text5-4"] = {541,542,543}
tNpcGossip[25737]["tOption5-4"] = {541,542}
tNpcGossip[25737]["OptionFunc541"] = "ChristmasCard2019_SendCard</N>2"
tNpcGossip[25737]["OptionPoint542"] = "3-4"
-- 接3、挑选圣诞贺卡·叁
tNpcGossip[25737]["Text6-4"] = {641,642,643}
tNpcGossip[25737]["tOption6-4"] = {641,642}
tNpcGossip[25737]["OptionFunc641"] = "ChristmasCard2019_SendCard</N>3"
tNpcGossip[25737]["OptionPoint642"] = "3-4"

----------------------------------------------------------(本服)
--缤纷圣诞树(本服)
tNpcFace[2189] = 201
tNpcGossip[25738] = tNpcGossip[25738] or DefaultNpc:new{}
tNpcGossip[25738]["OptionHidden"] = 1
tNpcGossip[25738]["DialogueText"] = tChristmasCard2019_Text[25619]
-- 中文
--活动中
tNpcGossip[25738]["Text1-1"] = {111,112,113,114,115,116,117,118}
tNpcGossip[25738]["tOption1-1"] = {111,112,113}
tNpcGossip[25738]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tActivityTime["GlobalChristmas"]["ActivityTime"])
end
tNpcGossip[25738]["OptionFunc111"] = "ChristmasCard2019_RewardCard</N>25738"
tNpcGossip[25738]["OptionChkFunc111"] = function ()
	return ChristmasCard2019_RewardCardSituation()
end 
tNpcGossip[25738]["OptionFunc112"] = "NpcPosition_PathFind</N>25686"
tNpcGossip[25738]["OptionChkFunc112"] = function ()
	return not ChristmasCard2019_RewardCardSituation()
end 

-- 接1、领取贺卡
tNpcGossip[25738]["Text2-1"] = {211,212}
tNpcGossip[25738]["tOption2-1"] = {211,212}
tNpcGossip[25738]["OptionPoint211"] = "3-1"

-- 接1-1、写一封吧
tNpcGossip[25738]["Text3-1"] = {311,312,313,314,315,316,317}
tNpcGossip[25738]["tOption3-1"] = {311,312,313}
-- tNpcGossip[25738]["OptionPoint311"] = "4-1"
-- tNpcGossip[25738]["OptionPoint312"] = "5-1"
-- tNpcGossip[25738]["OptionPoint313"] = "6-1"
tNpcGossip[25738]["OptionFunc311"] = "ChristmasCard2019_DuTiao</N>25738</S>4-1"
tNpcGossip[25738]["OptionFunc312"] = "ChristmasCard2019_DuTiao</N>25738</S>5-1"
tNpcGossip[25738]["OptionFunc313"] = "ChristmasCard2019_DuTiao</N>25738</S>6-1"
-- 接1、挑选圣诞贺卡·壹
tNpcGossip[25738]["Text4-1"] = {411,412,413}
tNpcGossip[25738]["tOption4-1"] = {411,412}
tNpcGossip[25738]["OptionFunc411"] = "ChristmasCard2019_SendCard</N>1"
tNpcGossip[25738]["OptionPoint412"] = "3-1"
-- 接2、挑选圣诞贺卡·贰
tNpcGossip[25738]["Text5-1"] = {511,512,513}
tNpcGossip[25738]["tOption5-1"] = {511,512}
tNpcGossip[25738]["OptionFunc511"] = "ChristmasCard2019_SendCard</N>2"
tNpcGossip[25738]["OptionPoint512"] = "3-1"
-- 接3、挑选圣诞贺卡·叁
tNpcGossip[25738]["Text6-1"] = {611,612,613}
tNpcGossip[25738]["tOption6-1"] = {611,612}
tNpcGossip[25738]["OptionFunc611"] = "ChristmasCard2019_SendCard</N>3"
tNpcGossip[25738]["OptionPoint612"] = "3-1"

-- 英文
--活动中
tNpcGossip[25738]["Text1-2"] = {121,122,123,124,125,126,127,128}
tNpcGossip[25738]["tOption1-2"] = {121,122,123}
tNpcGossip[25738]["ChkFunc1-2"] = function ()
	return Sys_ChkFullTime(tActivityTime["GlobalChristmas"]["ActivityTime"])
end
tNpcGossip[25738]["OptionFunc121"] = "ChristmasCard2019_RewardCard</N>25738"
tNpcGossip[25738]["OptionChkFunc121"] = function ()
	return ChristmasCard2019_RewardCardSituation()
end 
tNpcGossip[25738]["OptionFunc122"] = "NpcPosition_PathFind</N>25686"
tNpcGossip[25738]["OptionChkFunc122"] = function ()
	return not ChristmasCard2019_RewardCardSituation()
end 

-- 接1、领取贺卡
tNpcGossip[25738]["Text2-2"] = {221,222}
tNpcGossip[25738]["tOption2-2"] = {221,222}
tNpcGossip[25738]["OptionPoint221"] = "3-2"

-- 接1-1、写一封吧
tNpcGossip[25738]["Text3-2"] = {321,322,323,324,325,326,327}
tNpcGossip[25738]["tOption3-2"] = {321,322,323}
tNpcGossip[25738]["OptionFunc321"] = "ChristmasCard2019_DuTiao</N>25738</S>4-2"
tNpcGossip[25738]["OptionFunc322"] = "ChristmasCard2019_DuTiao</N>25738</S>5-2"
tNpcGossip[25738]["OptionFunc323"] = "ChristmasCard2019_DuTiao</N>25738</S>6-2"
-- 接1、挑选圣诞贺卡·壹
tNpcGossip[25738]["Text4-2"] = {421,422,423}
tNpcGossip[25738]["tOption4-2"] = {421,422}
tNpcGossip[25738]["OptionFunc421"] = "ChristmasCard2019_SendCard</N>1"
tNpcGossip[25738]["OptionPoint422"] = "3-2"
-- 接2、挑选圣诞贺卡·贰
tNpcGossip[25738]["Text5-2"] = {521,522,523}
tNpcGossip[25738]["tOption5-2"] = {521,522}
tNpcGossip[25738]["OptionFunc521"] = "ChristmasCard2019_SendCard</N>2"
tNpcGossip[25738]["OptionPoint522"] = "3-2"
-- 接3、挑选圣诞贺卡·叁
tNpcGossip[25738]["Text6-2"] = {621,622,623}
tNpcGossip[25738]["tOption6-2"] = {621,622}
tNpcGossip[25738]["OptionFunc621"] = "ChristmasCard2019_SendCard</N>3"
tNpcGossip[25738]["OptionPoint622"] = "3-2"

-- 西语
--活动中
tNpcGossip[25738]["Text1-3"] = {131,132,133,134,135,136,137,138}
tNpcGossip[25738]["tOption1-3"] = {131,132,133}
tNpcGossip[25738]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tActivityTime["GlobalChristmas"]["ActivityTime"])
end
tNpcGossip[25738]["OptionFunc131"] = "ChristmasCard2019_RewardCard</N>25738"
tNpcGossip[25738]["OptionChkFunc131"] = function ()
	return ChristmasCard2019_RewardCardSituation()
end 
tNpcGossip[25738]["OptionFunc132"] = "NpcPosition_PathFind</N>25686"
tNpcGossip[25738]["OptionChkFunc132"] = function ()
	return not ChristmasCard2019_RewardCardSituation()
end 

-- 接1、领取贺卡
tNpcGossip[25738]["Text2-3"] = {231,232}
tNpcGossip[25738]["tOption2-3"] = {231,232}
tNpcGossip[25738]["OptionPoint231"] = "3-3"

-- 接1-1、写一封吧
tNpcGossip[25738]["Text3-3"] = {331,332,333,334,335,336,337}
tNpcGossip[25738]["tOption3-3"] = {331,332,333}
tNpcGossip[25738]["OptionFunc331"] = "ChristmasCard2019_DuTiao</N>25738</S>4-3"
tNpcGossip[25738]["OptionFunc332"] = "ChristmasCard2019_DuTiao</N>25738</S>5-3"
tNpcGossip[25738]["OptionFunc333"] = "ChristmasCard2019_DuTiao</N>25738</S>6-3"
-- 接1、挑选圣诞贺卡·壹
tNpcGossip[25738]["Text4-3"] = {431,432,433}
tNpcGossip[25738]["tOption4-3"] = {431,432}
tNpcGossip[25738]["OptionFunc431"] = "ChristmasCard2019_SendCard</N>1"
tNpcGossip[25738]["OptionPoint432"] = "3-3"
-- 接2、挑选圣诞贺卡·贰
tNpcGossip[25738]["Text5-3"] = {531,532,533}
tNpcGossip[25738]["tOption5-3"] = {531,532}
tNpcGossip[25738]["OptionFunc531"] = "ChristmasCard2019_SendCard</N>2"
tNpcGossip[25738]["OptionPoint532"] = "3-3"
-- 接3、挑选圣诞贺卡·叁
tNpcGossip[25738]["Text6-3"] = {631,632,633}
tNpcGossip[25738]["tOption6-3"] = {631,632}
tNpcGossip[25738]["OptionFunc631"] = "ChristmasCard2019_SendCard</N>3"
tNpcGossip[25738]["OptionPoint632"] = "3-3"


-- 阿语
--活动中
tNpcGossip[25738]["Text1-4"] = {141,142,143,144,145,146,147,148}
tNpcGossip[25738]["tOption1-4"] = {141,142,143}
tNpcGossip[25738]["ChkFunc1-4"] = function ()
	return Sys_ChkFullTime(tActivityTime["GlobalChristmas"]["ActivityTime"])
end
tNpcGossip[25738]["OptionFunc141"] = "ChristmasCard2019_RewardCard</N>25738"
tNpcGossip[25738]["OptionChkFunc141"] = function ()
	return ChristmasCard2019_RewardCardSituation()
end 
tNpcGossip[25738]["OptionFunc142"] = "NpcPosition_PathFind</N>25686"
tNpcGossip[25738]["OptionChkFunc142"] = function ()
	return not ChristmasCard2019_RewardCardSituation()
end 

-- 接1、领取贺卡
tNpcGossip[25738]["Text2-4"] = {241,242}
tNpcGossip[25738]["tOption2-4"] = {241,242}
tNpcGossip[25738]["OptionPoint241"] = "3-4"

-- 接1-1、写一封吧
tNpcGossip[25738]["Text3-4"] = {341,342,343,344,345,346,347}
tNpcGossip[25738]["tOption3-4"] = {341,342,343}
tNpcGossip[25738]["OptionFunc341"] = "ChristmasCard2019_DuTiao</N>25738</S>4-4"
tNpcGossip[25738]["OptionFunc342"] = "ChristmasCard2019_DuTiao</N>25738</S>5-4"
tNpcGossip[25738]["OptionFunc343"] = "ChristmasCard2019_DuTiao</N>25738</S>6-4"
-- 接1、挑选圣诞贺卡·壹
tNpcGossip[25738]["Text4-4"] = {441,442,443}
tNpcGossip[25738]["tOption4-4"] = {441,442}
tNpcGossip[25738]["OptionFunc441"] = "ChristmasCard2019_SendCard</N>1"
tNpcGossip[25738]["OptionPoint442"] = "3-4"
-- 接2、挑选圣诞贺卡·贰
tNpcGossip[25738]["Text5-4"] = {541,542,543}
tNpcGossip[25738]["tOption5-4"] = {541,542}
tNpcGossip[25738]["OptionFunc541"] = "ChristmasCard2019_SendCard</N>2"
tNpcGossip[25738]["OptionPoint542"] = "3-4"
-- 接3、挑选圣诞贺卡·叁
tNpcGossip[25738]["Text6-4"] = {641,642,643}
tNpcGossip[25738]["tOption6-4"] = {641,642}
tNpcGossip[25738]["OptionFunc641"] = "ChristmasCard2019_SendCard</N>3"
tNpcGossip[25738]["OptionPoint642"] = "3-4"



--------------------------------------------------------------物品


tItem[3600202] = tItem[3600202] or {}
tItem[3600202]["Function"] = function(nItemId,sItemName)
	local bJudge = TermsOfUse_Main(nItemId,tChristmasCard2019_Pack[nItemId])
	if not bJudge then
		return
	end
	ChristmasCard2019_OpenCard(nItemId)
end
tItem[3600203] = tItem[3600202] or {}
tItem[3600204] = tItem[3600202] or {}
tItem[3600205] = tItem[3600202] or {}



-- 【中文】圣诞贺卡
tItemFace[3600202] = 2668
tItem[3600202]["DialogueText"] = tChristmasCard2019_Text["Blessing"]
tItem[3600202]["Text1-1"] = {112,113}
tItem[3600202]["tOption1-1"] = {111}
tItem[3600202]["OptionFunc111"] = "ChristmasCard2019_Effect"

-- 【中文】圣诞贺卡
tItem[3600202]["Text1-2"] = {122,123}
tItem[3600202]["tOption1-2"] = {121}
tItem[3600202]["OptionFunc121"] = "ChristmasCard2019_Effect"

-- 【中文】圣诞贺卡
tItem[3600202]["Text1-3"] = {132,133}
tItem[3600202]["tOption1-3"] = {131}
tItem[3600202]["OptionFunc131"] = "ChristmasCard2019_Effect"


-- 【英文】圣诞贺卡
tItemFace[3600203] = 2669
tItem[3600203]["DialogueText"] = tChristmasCard2019_Text["Blessing"]
tItem[3600203]["Text1-1"] = {112,113}
tItem[3600203]["tOption1-1"] = {111}
tItem[3600203]["OptionFunc111"] = "ChristmasCard2019_Effect"

-- 【英文】圣诞贺卡]
tItem[3600203]["Text1-2"] = {122,123}
tItem[3600203]["tOption1-2"] = {121}
tItem[3600203]["OptionFunc121"] = "ChristmasCard2019_Effect"

-- 【英文】圣诞贺卡
tItem[3600203]["Text1-3"] = {132,133}
tItem[3600203]["tOption1-3"] = {131}
tItem[3600203]["OptionFunc131"] = "ChristmasCard2019_Effect"


-- 【西语】圣诞贺卡
tItemFace[3600204] = 2670
tItem[3600204]["DialogueText"] = tChristmasCard2019_Text["Blessing"]
tItem[3600204]["Text1-1"] = {112,113}
tItem[3600204]["tOption1-1"] = {111}
tItem[3600204]["OptionFunc111"] = "ChristmasCard2019_Effect"

-- 【西语】圣诞贺卡
tItem[3600204]["Text1-2"] = {122,123}
tItem[3600204]["tOption1-2"] = {121}
tItem[3600204]["OptionFunc121"] = "ChristmasCard2019_Effect"

-- 【西语】圣诞贺卡
tItem[3600204]["Text1-3"] = {132,133}
tItem[3600204]["tOption1-3"] = {131}
tItem[3600204]["OptionFunc131"] = "ChristmasCard2019_Effect"


-- 【阿语】圣诞贺卡
tItemFace[3600205] = 2671
tItem[3600205]["DialogueText"] = tChristmasCard2019_Text["Blessing"]
tItem[3600205]["Text1-1"] = {112,113}
tItem[3600205]["tOption1-1"] = {111}
tItem[3600205]["OptionFunc111"] = "ChristmasCard2019_Effect"

-- 【阿语】圣诞贺卡
tItem[3600205]["Text1-2"] = {122,123}
tItem[3600205]["tOption1-2"] = {121}
tItem[3600205]["OptionFunc121"] = "ChristmasCard2019_Effect"

-- 【阿语】圣诞贺卡
tItem[3600205]["Text1-3"] = {132,133}
tItem[3600205]["tOption1-3"] = {131}
tItem[3600205]["OptionFunc121"] = "ChristmasCard2019_Effect"


tItem[3600207] = tItem[3600207] or {}
tItem[3600207]["Function"] = function(nItemId,sItemName)
	local bJudge = TermsOfUse_Main(nItemId,tChristmasCard2019_Pack[nItemId])
	if not bJudge then
		return
	end
	ChristmasCard2019_OpenPack(nItemId)
end
tItem[3600208] = tItem[3600207] or {}
tItem[3600209] = tItem[3600207] or {}
tItem[3600210] = tItem[3600207] or {}