 ------------------------------------------------------------------------------------
--Name:			200327[简体征服][任务脚本]LUA限时促销商店
--Purpose:		LUA限时促销商店
--Creator:		陈莺
--Created:		2020/03/27
------------------------------------------------------------------------------------
-- stc(218,12) 记录玩家选择过的勾玉类型
-- ==1选择豪火球之印 火
-- ==2选择镰鼬之印   风
-- ==3选择雷切之印   雷
-- ==4选择水龙之印   水
-- ==5选择尘遁之印   土

-- NinjaPromotion_
------------------------------------------------------------------------------------
--临时表记录时间 5分钟后才让弹下一个促销界面
local tNinjaPromotion_Time = {}

local tNinjaPromotion_Data = {}
	tNinjaPromotion_Data["MapId"] = 10764
	tNinjaPromotion_Data["Time"] = 7200  --倒计时
	---商店NPC
	tNinjaPromotion_Data["NpcId"] = {}
	-- 1
	tNinjaPromotion_Data["NpcId"][1] = 26206
	tNinjaPromotion_Data["NpcId"][2] = 26208
	tNinjaPromotion_Data["NpcId"][3] = 26209
	tNinjaPromotion_Data["NpcId"][4] = 26207
	tNinjaPromotion_Data["NpcId"][5] = 26210
	-- 2
	tNinjaPromotion_Data["NpcId"][6] = 26211
	-- 3
	tNinjaPromotion_Data["NpcId"][7] = 26212
	tNinjaPromotion_Data["NpcId"][8] = 26213
	tNinjaPromotion_Data["NpcId"][9] = 26214
	tNinjaPromotion_Data["NpcId"][10] = 26215
	tNinjaPromotion_Data["NpcId"][11] = 26216
	-- 4
	tNinjaPromotion_Data["NpcId"][12] = 26217
	tNinjaPromotion_Data["NpcId"][13] = 26218
	tNinjaPromotion_Data["NpcId"][14] = 26219
	tNinjaPromotion_Data["NpcId"][15] = 26220
	-- 5
	tNinjaPromotion_Data["NpcId"][16] = 26221

	tNinjaPromotion_Data["NpcId"][22] = 26232
	
local tNinjaPromotion_TalNum = {}
	tNinjaPromotion_TalNum[1] = 300
	tNinjaPromotion_TalNum[2] = 350
	tNinjaPromotion_TalNum[3] = 400
	tNinjaPromotion_TalNum[4] = 450
	
local tNinjaPromotion_NewStc = {}
	tNinjaPromotion_NewStc[1] = {}
	tNinjaPromotion_NewStc[1]["EventType"] = 218
	tNinjaPromotion_NewStc[1]["DataType"] = 12
-- 记录进入百慕山是否弹过促销界面
	tNinjaPromotion_NewStc[2] = {}
	tNinjaPromotion_NewStc[2]["EventType"] = 218
	tNinjaPromotion_NewStc[2]["DataType"] = 20

-- 记录进入百慕山是否弹过勾玉槽
	tNinjaPromotion_NewStc[3] = {}
	tNinjaPromotion_NewStc[3]["EventType"] = 218
	tNinjaPromotion_NewStc[3]["DataType"] = 21
	
-- 记录洗练 二进制
	tNinjaPromotion_NewStc[4] = {}
	tNinjaPromotion_NewStc[4]["EventType"] = 218
	tNinjaPromotion_NewStc[4]["DataType"] = 22
	
-- 记录洗练总分领奖
	tNinjaPromotion_NewStc[5] = {}
	tNinjaPromotion_NewStc[5]["EventType"] = 218
	tNinjaPromotion_NewStc[5]["DataType"] = 23
-- 记录本周是否出过分解促销界面
	tNinjaPromotion_NewStc[6] = {}
	tNinjaPromotion_NewStc[6]["EventType"] = 218
	tNinjaPromotion_NewStc[6]["DataType"] = 24
	-- 英文新增 开启5个时候
	tNinjaPromotion_NewStc[7] = {}
	tNinjaPromotion_NewStc[7]["EventType"] = 218
	tNinjaPromotion_NewStc[7]["DataType"] = 35
	
local tNinjaPromotion_NewStcData = {}
	tNinjaPromotion_NewStcData[1] = 1   --火
	tNinjaPromotion_NewStcData[2] = 2   --风
	tNinjaPromotion_NewStcData[3] = 4   --雷
	tNinjaPromotion_NewStcData[4] = 8  -- 水
	tNinjaPromotion_NewStcData[5] = 16  --土
	
local tNinjaPromotion_Get = {}
-- 进入新的【百慕山】地图
	tNinjaPromotion_Get[1] = 3315868
	tNinjaPromotion_Get[2] = 3315870
	tNinjaPromotion_Get[3] = 3315871
	tNinjaPromotion_Get[4] = 3315869
	tNinjaPromotion_Get[5] = 3315872
	tNinjaPromotion_Get["NewItem"] = 3316120
	tNinjaPromotion_Get["NewItem5"] = 3316119
	
-- 洗练
	tNinjaPromotion_Get["XiLian"] = {}
	tNinjaPromotion_Get["XiLian"][1] = 3315874
	tNinjaPromotion_Get["XiLian"][2] = 3315875
	tNinjaPromotion_Get["XiLian"][3] = 3315876
	tNinjaPromotion_Get["XiLian"][4] = 3315877
	tNinjaPromotion_Get["XiLian"][5] = 3315878
---洗练总分数
	tNinjaPromotion_Get["XiLianTal"] = {}
	tNinjaPromotion_Get["XiLianTal"][1] = 3315879
	tNinjaPromotion_Get["XiLianTal"][2] = 3315880
	tNinjaPromotion_Get["XiLianTal"][3] = 3315881
	tNinjaPromotion_Get["XiLianTal"][4] = 3315882

-- 分解骨玉id
	tNinjaPromotion_Get["GouyuId"] = {}
	tNinjaPromotion_Get["GouyuId"][1] = 600 --3330058
	tNinjaPromotion_Get["GouyuId"][2] = 601 --3330059
	tNinjaPromotion_Get["GouyuId"][3] = 602 --3330060
	tNinjaPromotion_Get["GouyuId"][4] = 603 --3330061
	tNinjaPromotion_Get["GouyuId"][5] = 604 --3330062
---分解后出界面的物品id
	tNinjaPromotion_Get["FengJie"] = 3315883
	
	
local tNinjaPromotion_NewLog = {}
	tNinjaPromotion_NewLog[1] = "0,0,0,0,18000224,3[1],%d,1"


local tNinjaPromotion_Reward = {}
	-- ===火系勾玉增强礼盒
	-- ===索引:tNinjaPromotion_Reward[3315868]
	-- ===删除:3315868
	-- ===LogStep: 2[1]
	-- ===
	-- ===
	tNinjaPromotion_Reward[3315868] = {}
	tNinjaPromotion_Reward[3315868]["LogId"] = 18000224
	tNinjaPromotion_Reward[3315868]["LogStep"] = "2[1]"
	tNinjaPromotion_Reward[3315868]["DeleteItem"] = {}
	tNinjaPromotion_Reward[3315868]["DeleteItem"][1] = {}
	tNinjaPromotion_Reward[3315868]["DeleteItem"][1]["Id"] = 3315868 -- 【库】 3315868 【库里没有该物品】[属性:]
	tNinjaPromotion_Reward[3315868]["RewardItem"] = {}
	tNinjaPromotion_Reward[3315868]["RewardItem"][1] = {}
	tNinjaPromotion_Reward[3315868]["RewardItem"][1]["Id"] = 3330029 --  3330029 【库里没有该物品】, 【表格】豪火勾玉·焚天
	tNinjaPromotion_Reward[3315868]["RewardItem"][1]["Attr"] = "0 1" --  3330029 【库里没有该物品】*1
	tNinjaPromotion_Reward[3315868]["RewardItem"][2] = {}
	tNinjaPromotion_Reward[3315868]["RewardItem"][2]["Id"] = 3329979 --  3329979 【库里没有该物品】, 【表格】勾玉精华
	tNinjaPromotion_Reward[3315868]["RewardItem"][2]["Attr"] = "0 50" --  3329979 【库里没有该物品】*100（[错误]物品数量超10个）
	tNinjaPromotion_Reward[3315868]["RewardItem"][3] = {}
	tNinjaPromotion_Reward[3315868]["RewardItem"][3]["Id"] = 3327202 --  3327202 【库里没有该物品】, 【表格】资质洗练道具
	tNinjaPromotion_Reward[3315868]["RewardItem"][3]["Attr"] = "0 10" --  3327202 【库里没有该物品】*30（[错误]物品数量超10个）
	tNinjaPromotion_Reward[3315868]["RewardItem"][4] = {}
	tNinjaPromotion_Reward[3315868]["RewardItem"][4]["Id"] = 3316125 --  3316125 【库里没有该物品】, 【表格】资质洗练道具
	tNinjaPromotion_Reward[3315868]["RewardItem"][4]["Attr"] = "0 1" --  3316125 【库里没有该物品】*1
	tNinjaPromotion_Reward[3315868]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3315868]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaPromotion_Reward[3315868]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaPromotion_Reward[3315869] = {}
	-- ===水系勾玉增强礼盒
	-- ===索引:tNinjaPromotion_Reward[3315869]
	-- ===删除:3315869
	-- ===LogStep: 2[1]
	-- ===
	-- ===
	tNinjaPromotion_Reward[3315869]["LogId"] = 18000224
	tNinjaPromotion_Reward[3315869]["LogStep"] = "2[1]"
	tNinjaPromotion_Reward[3315869]["DeleteItem"] = {}
	tNinjaPromotion_Reward[3315869]["DeleteItem"][1] = {}
	tNinjaPromotion_Reward[3315869]["DeleteItem"][1]["Id"] = 3315869 -- 【库】 3315869 【库里没有该物品】[属性:]
	tNinjaPromotion_Reward[3315869]["RewardItem"] = {}
	tNinjaPromotion_Reward[3315869]["RewardItem"][1] = {}
	tNinjaPromotion_Reward[3315869]["RewardItem"][1]["Id"] = 3330038 --  3330038 【库里没有该物品】, 【表格】水龙勾玉·澎湃
	tNinjaPromotion_Reward[3315869]["RewardItem"][1]["Attr"] = "0 1" --  3330038 【库里没有该物品】*1
	tNinjaPromotion_Reward[3315869]["RewardItem"][2] = {}
	tNinjaPromotion_Reward[3315869]["RewardItem"][2]["Id"] = 3329979 --  3329979 【库里没有该物品】, 【表格】勾玉精华
	tNinjaPromotion_Reward[3315869]["RewardItem"][2]["Attr"] = "0 50" --  3329979 【库里没有该物品】*100（[错误]物品数量超10个）
	tNinjaPromotion_Reward[3315869]["RewardItem"][3] = {}
	tNinjaPromotion_Reward[3315869]["RewardItem"][3]["Id"] = 3327202 --  3327202 【库里没有该物品】, 【表格】资质洗练道具
	tNinjaPromotion_Reward[3315869]["RewardItem"][3]["Attr"] = "0 10" --  3327202 【库里没有该物品】*30（[错误]物品数量超10个）
	tNinjaPromotion_Reward[3315869]["RewardItem"][4] = {}
	tNinjaPromotion_Reward[3315869]["RewardItem"][4]["Id"] = 3316125 --  3316125 【库里没有该物品】, 【表格】资质洗练道具
	tNinjaPromotion_Reward[3315869]["RewardItem"][4]["Attr"] = "0 1" --  3316125 【库里没有该物品】*1
	tNinjaPromotion_Reward[3315869]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3315869]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaPromotion_Reward[3315869]["RewardEffect"]["Effect"] = "angelwing"

	tNinjaPromotion_Reward[3315870] = {}
	-- ===风系勾玉增强礼盒
	-- ===索引:tNinjaPromotion_Reward[3315870]
	-- ===删除:3315870
	-- ===LogStep: 2[1]
	-- ===
	-- ===
	tNinjaPromotion_Reward[3315870]["LogId"] = 18000224
	tNinjaPromotion_Reward[3315870]["LogStep"] = "2[1]"
	tNinjaPromotion_Reward[3315870]["DeleteItem"] = {}
	tNinjaPromotion_Reward[3315870]["DeleteItem"][1] = {}
	tNinjaPromotion_Reward[3315870]["DeleteItem"][1]["Id"] = 3315870 -- 【库】 3315870 【库里没有该物品】[属性:]
	tNinjaPromotion_Reward[3315870]["RewardItem"] = {}
	tNinjaPromotion_Reward[3315870]["RewardItem"][1] = {}
	tNinjaPromotion_Reward[3315870]["RewardItem"][1]["Id"] = 3330041 --  3330041 【库里没有该物品】, 【表格】镰鼬勾玉·乱舞
	tNinjaPromotion_Reward[3315870]["RewardItem"][1]["Attr"] = "0 1" --  3330041 【库里没有该物品】*1
	tNinjaPromotion_Reward[3315870]["RewardItem"][2] = {}
	tNinjaPromotion_Reward[3315870]["RewardItem"][2]["Id"] = 3329979 --  3329979 【库里没有该物品】, 【表格】勾玉精华
	tNinjaPromotion_Reward[3315870]["RewardItem"][2]["Attr"] = "0 50" --  3329979 【库里没有该物品】*100（[错误]物品数量超10个）
	tNinjaPromotion_Reward[3315870]["RewardItem"][3] = {}
	tNinjaPromotion_Reward[3315870]["RewardItem"][3]["Id"] = 3327202 --  3327202 【库里没有该物品】, 【表格】资质洗练道具
	tNinjaPromotion_Reward[3315870]["RewardItem"][3]["Attr"] = "0 10" --  3327202 【库里没有该物品】*30（[错误]物品数量超10个）
	tNinjaPromotion_Reward[3315870]["RewardItem"][4] = {}
	tNinjaPromotion_Reward[3315870]["RewardItem"][4]["Id"] = 3316125 --  3316125 【库里没有该物品】, 【表格】资质洗练道具
	tNinjaPromotion_Reward[3315870]["RewardItem"][4]["Attr"] = "0 1" --  3316125 【库里没有该物品】*1
	tNinjaPromotion_Reward[3315870]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3315870]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaPromotion_Reward[3315870]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaPromotion_Reward[3315871] = {}
	-- ===雷系勾玉增强礼盒
	-- ===索引:tNinjaPromotion_Reward[3315871]
	-- ===删除:3315871
	-- ===LogStep: 2[1]
	-- ===
	-- ===
	tNinjaPromotion_Reward[3315871]["LogId"] = 18000224
	tNinjaPromotion_Reward[3315871]["LogStep"] = "2[1]"
	tNinjaPromotion_Reward[3315871]["DeleteItem"] = {}
	tNinjaPromotion_Reward[3315871]["DeleteItem"][1] = {}
	tNinjaPromotion_Reward[3315871]["DeleteItem"][1]["Id"] = 3315871 -- 【库】 3315871 【库里没有该物品】[属性:]
	tNinjaPromotion_Reward[3315871]["RewardItem"] = {}
	tNinjaPromotion_Reward[3315871]["RewardItem"][1] = {}
	tNinjaPromotion_Reward[3315871]["RewardItem"][1]["Id"] = 3330051 --  3330051 【库里没有该物品】, 【表格】雷切勾玉·神威
	tNinjaPromotion_Reward[3315871]["RewardItem"][1]["Attr"] = "0 1" --  3330051 【库里没有该物品】*1
	tNinjaPromotion_Reward[3315871]["RewardItem"][2] = {}
	tNinjaPromotion_Reward[3315871]["RewardItem"][2]["Id"] = 3329979 --  3329979 【库里没有该物品】, 【表格】勾玉精华
	tNinjaPromotion_Reward[3315871]["RewardItem"][2]["Attr"] = "0 50" --  3329979 【库里没有该物品】*100（[错误]物品数量超10个）
	tNinjaPromotion_Reward[3315871]["RewardItem"][3] = {}
	tNinjaPromotion_Reward[3315871]["RewardItem"][3]["Id"] = 3327202 --  3327202 【库里没有该物品】, 【表格】资质洗练道具
	tNinjaPromotion_Reward[3315871]["RewardItem"][3]["Attr"] = "0 10" --  3327202 【库里没有该物品】*30（[错误]物品数量超10个）
	tNinjaPromotion_Reward[3315871]["RewardItem"][4] = {}
	tNinjaPromotion_Reward[3315871]["RewardItem"][4]["Id"] = 3316125 --  3316125 【库里没有该物品】, 【表格】资质洗练道具
	tNinjaPromotion_Reward[3315871]["RewardItem"][4]["Attr"] = "0 1" --  3316125 【库里没有该物品】*1
	tNinjaPromotion_Reward[3315871]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3315871]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaPromotion_Reward[3315871]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaPromotion_Reward[3315872] = {}
	-- ===土系勾玉增强礼盒
	-- ===索引:tNinjaPromotion_Reward[3315872]
	-- ===删除:3315872
	-- ===LogStep: 2[1]
	-- ===
	-- ===
	tNinjaPromotion_Reward[3315872]["LogId"] = 18000224
	tNinjaPromotion_Reward[3315872]["LogStep"] = "2[1]"
	tNinjaPromotion_Reward[3315872]["DeleteItem"] = {}
	tNinjaPromotion_Reward[3315872]["DeleteItem"][1] = {}
	tNinjaPromotion_Reward[3315872]["DeleteItem"][1]["Id"] = 3315872 -- 【库】 3315872 【库里没有该物品】[属性:]
	tNinjaPromotion_Reward[3315872]["RewardItem"] = {}
	tNinjaPromotion_Reward[3315872]["RewardItem"][1] = {}
	tNinjaPromotion_Reward[3315872]["RewardItem"][1]["Id"] = 3330056 --  3330056 【库里没有该物品】, 【表格】尘遁勾玉·天绝
	tNinjaPromotion_Reward[3315872]["RewardItem"][1]["Attr"] = "0 1" --  3330056 【库里没有该物品】*1
	tNinjaPromotion_Reward[3315872]["RewardItem"][2] = {}
	tNinjaPromotion_Reward[3315872]["RewardItem"][2]["Id"] = 3329979 --  3329979 【库里没有该物品】, 【表格】勾玉精华
	tNinjaPromotion_Reward[3315872]["RewardItem"][2]["Attr"] = "0 50" --  3329979 【库里没有该物品】*100（[错误]物品数量超10个）
	tNinjaPromotion_Reward[3315872]["RewardItem"][3] = {}
	tNinjaPromotion_Reward[3315872]["RewardItem"][3]["Id"] = 3327202 --  3327202 【库里没有该物品】, 【表格】资质洗练道具
	tNinjaPromotion_Reward[3315872]["RewardItem"][3]["Attr"] = "0 10" --  3327202 【库里没有该物品】*30（[错误]物品数量超10个）
	tNinjaPromotion_Reward[3315872]["RewardItem"][4] = {}
	tNinjaPromotion_Reward[3315872]["RewardItem"][4]["Id"] = 3316125 --  3316125 【库里没有该物品】, 【表格】资质洗练道具
	tNinjaPromotion_Reward[3315872]["RewardItem"][4]["Attr"] = "0 1" --  3316125 【库里没有该物品】*1
	tNinjaPromotion_Reward[3315872]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3315872]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaPromotion_Reward[3315872]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaPromotion_Reward[3315873] = {}
	-- ===高级勾玉豪华礼盒
	-- ===索引:tNinjaPromotion_Reward[3315873]
	-- ===删除:3315873
	-- ===LogStep: 2[1]
	-- ===
	-- ===
	tNinjaPromotion_Reward[3315873]["LogId"] = 18000224
	tNinjaPromotion_Reward[3315873]["LogStep"] = "2[1]"
	tNinjaPromotion_Reward[3315873]["DeleteItem"] = {}
	tNinjaPromotion_Reward[3315873]["DeleteItem"][1] = {}
	tNinjaPromotion_Reward[3315873]["DeleteItem"][1]["Id"] = 3315873 -- 【库】 3315873 【库里没有该物品】[属性:]
	tNinjaPromotion_Reward[3315873]["RewardItem"] = {}
	tNinjaPromotion_Reward[3315873]["RewardItem"][1] = {}
	tNinjaPromotion_Reward[3315873]["RewardItem"][1]["Id"] = 3330064 --  3330064 【库里没有该物品】, 【表格】高级勾玉宝盒
	tNinjaPromotion_Reward[3315873]["RewardItem"][1]["Attr"] = "0 1" --  3330064 【库里没有该物品】*2
	tNinjaPromotion_Reward[3315873]["RewardItem"][2] = {}
	tNinjaPromotion_Reward[3315873]["RewardItem"][2]["Id"] = 3329979 --  3329979 【库里没有该物品】, 【表格】勾玉精华
	tNinjaPromotion_Reward[3315873]["RewardItem"][2]["Attr"] = "0 325" --  3329979 【库里没有该物品】*300（[错误]物品数量超10个）
	-- tNinjaPromotion_Reward[3315873]["RewardItem"][3] = {}
	-- tNinjaPromotion_Reward[3315873]["RewardItem"][3]["Id"] = 3327202 --  3327202 【库里没有该物品】, 【表格】资质洗练道具
	-- tNinjaPromotion_Reward[3315873]["RewardItem"][3]["Attr"] = "0 30" --  3327202 【库里没有该物品】*30（[错误]物品数量超10个）
	tNinjaPromotion_Reward[3315873]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3315873]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaPromotion_Reward[3315873]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaPromotion_Reward[3315874] = {}
	-- ===火系专属勾玉宝盒
	-- ===索引:tNinjaPromotion_Reward[3315874]
	-- ===删除:3315874
	-- ===LogStep: 2[1]
	-- ===
	-- ===
	tNinjaPromotion_Reward[3315874]["LogId"] = 18000224
	tNinjaPromotion_Reward[3315874]["LogStep"] = "2[1]"
	tNinjaPromotion_Reward[3315874]["DeleteItem"] = {}
	tNinjaPromotion_Reward[3315874]["DeleteItem"][1] = {}
	tNinjaPromotion_Reward[3315874]["DeleteItem"][1]["Id"] = 3315874 -- 【库】 3315874 【库里没有该物品】[属性:]
	tNinjaPromotion_Reward[3315874]["RewardItem"] = {}
	tNinjaPromotion_Reward[3315874]["RewardItem"][1] = {}
	tNinjaPromotion_Reward[3315874]["RewardItem"][1]["Id"] = 3330031 --  3330031 【库里没有该物品】, 【表格】赤炎勾玉
	tNinjaPromotion_Reward[3315874]["RewardItem"][1]["Attr"] = "0 1" --  3330031 【库里没有该物品】*1
	tNinjaPromotion_Reward[3315874]["RewardItem"][2] = {}
	tNinjaPromotion_Reward[3315874]["RewardItem"][2]["Id"] = 3330033 --  3330033 【库里没有该物品】, 【表格】赤炎勾玉·灼
	tNinjaPromotion_Reward[3315874]["RewardItem"][2]["Attr"] = "0 1" --  3330033 【库里没有该物品】*1
	tNinjaPromotion_Reward[3315874]["RewardItem"][3] = {}
	tNinjaPromotion_Reward[3315874]["RewardItem"][3]["Id"] = 3329979 --  3329979 【库里没有该物品】, 【表格】勾玉精华
	tNinjaPromotion_Reward[3315874]["RewardItem"][3]["Attr"] = "0 300" --  3329979 【库里没有该物品】*300（[错误]物品数量超10个）
	tNinjaPromotion_Reward[3315874]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3315874]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaPromotion_Reward[3315874]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaPromotion_Reward[3315875] = {}
	-- ===水系专属勾玉宝盒
	-- ===索引:tNinjaPromotion_Reward[3315875]
	-- ===删除:3315875
	-- ===LogStep: 2[1]
	-- ===
	-- ===
	tNinjaPromotion_Reward[3315875]["LogId"] = 18000224
	tNinjaPromotion_Reward[3315875]["LogStep"] = "2[1]"
	tNinjaPromotion_Reward[3315875]["DeleteItem"] = {}
	tNinjaPromotion_Reward[3315875]["DeleteItem"][1] = {}
	tNinjaPromotion_Reward[3315875]["DeleteItem"][1]["Id"] = 3315875 -- 【库】 3315875 【库里没有该物品】[属性:]
	tNinjaPromotion_Reward[3315875]["RewardItem"] = {}
	tNinjaPromotion_Reward[3315875]["RewardItem"][1] = {}
	tNinjaPromotion_Reward[3315875]["RewardItem"][1]["Id"] = 3330034 --  3330034 【库里没有该物品】, 【表格】水牢勾玉
	tNinjaPromotion_Reward[3315875]["RewardItem"][1]["Attr"] = "0 1" --  3330034 【库里没有该物品】*1
	tNinjaPromotion_Reward[3315875]["RewardItem"][2] = {}
	tNinjaPromotion_Reward[3315875]["RewardItem"][2]["Id"] = 3330036 --  3330036 【库里没有该物品】, 【表格】水牢勾玉·无功
	tNinjaPromotion_Reward[3315875]["RewardItem"][2]["Attr"] = "0 1" --  3330036 【库里没有该物品】*1
	tNinjaPromotion_Reward[3315875]["RewardItem"][3] = {}
	tNinjaPromotion_Reward[3315875]["RewardItem"][3]["Id"] = 3329979 --  3329979 【库里没有该物品】, 【表格】勾玉精华
	tNinjaPromotion_Reward[3315875]["RewardItem"][3]["Attr"] = "0 300" --  3329979 【库里没有该物品】*300（[错误]物品数量超10个）
	tNinjaPromotion_Reward[3315875]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3315875]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaPromotion_Reward[3315875]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaPromotion_Reward[3315876] = {}
	-- ===风系专属勾玉宝盒
	-- ===索引:tNinjaPromotion_Reward[3315876]
	-- ===删除:3315876
	-- ===LogStep: 2[1]
	-- ===
	-- ===
	tNinjaPromotion_Reward[3315876]["LogId"] = 18000224
	tNinjaPromotion_Reward[3315876]["LogStep"] = "2[1]"
	tNinjaPromotion_Reward[3315876]["DeleteItem"] = {}
	tNinjaPromotion_Reward[3315876]["DeleteItem"][1] = {}
	tNinjaPromotion_Reward[3315876]["DeleteItem"][1]["Id"] = 3315876 -- 【库】 3315876 【库里没有该物品】[属性:]
	tNinjaPromotion_Reward[3315876]["RewardItem"] = {}
	tNinjaPromotion_Reward[3315876]["RewardItem"][1] = {}
	tNinjaPromotion_Reward[3315876]["RewardItem"][1]["Id"] = 3330043 --  3330043 【库里没有该物品】, 【表格】螺旋勾玉
	tNinjaPromotion_Reward[3315876]["RewardItem"][1]["Attr"] = "0 1" --  3330043 【库里没有该物品】*1
	tNinjaPromotion_Reward[3315876]["RewardItem"][2] = {}
	tNinjaPromotion_Reward[3315876]["RewardItem"][2]["Id"] = 3330045 --  3330045 【库里没有该物品】, 【表格】螺旋勾玉·光轮
	tNinjaPromotion_Reward[3315876]["RewardItem"][2]["Attr"] = "0 1" --  3330045 【库里没有该物品】*1
	tNinjaPromotion_Reward[3315876]["RewardItem"][3] = {}
	tNinjaPromotion_Reward[3315876]["RewardItem"][3]["Id"] = 3329979 --  3329979 【库里没有该物品】, 【表格】勾玉精华
	tNinjaPromotion_Reward[3315876]["RewardItem"][3]["Attr"] = "0 300" --  3329979 【库里没有该物品】*300（[错误]物品数量超10个）
	tNinjaPromotion_Reward[3315876]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3315876]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaPromotion_Reward[3315876]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaPromotion_Reward[3315877] = {}
	-- ===雷系专属勾玉宝盒
	-- ===索引:tNinjaPromotion_Reward[3315877]
	-- ===删除:3315877
	-- ===LogStep: 2[1]
	-- ===
	-- ===
	tNinjaPromotion_Reward[3315877]["LogId"] = 18000224
	tNinjaPromotion_Reward[3315877]["LogStep"] = "2[1]"
	tNinjaPromotion_Reward[3315877]["DeleteItem"] = {}
	tNinjaPromotion_Reward[3315877]["DeleteItem"][1] = {}
	tNinjaPromotion_Reward[3315877]["DeleteItem"][1]["Id"] = 3315877 -- 【库】 3315877 【库里没有该物品】[属性:]
	tNinjaPromotion_Reward[3315877]["RewardItem"] = {}
	tNinjaPromotion_Reward[3315877]["RewardItem"][1] = {}
	tNinjaPromotion_Reward[3315877]["RewardItem"][1]["Id"] = 3330046 --  3330046 【库里没有该物品】, 【表格】麒麟勾玉
	tNinjaPromotion_Reward[3315877]["RewardItem"][1]["Attr"] = "0 1" --  3330046 【库里没有该物品】*1
	tNinjaPromotion_Reward[3315877]["RewardItem"][2] = {}
	tNinjaPromotion_Reward[3315877]["RewardItem"][2]["Id"] = 3330048 --  3330048 【库里没有该物品】, 【表格】麒麟勾玉·封界
	tNinjaPromotion_Reward[3315877]["RewardItem"][2]["Attr"] = "0 1" --  3330048 【库里没有该物品】*1
	tNinjaPromotion_Reward[3315877]["RewardItem"][3] = {}
	tNinjaPromotion_Reward[3315877]["RewardItem"][3]["Id"] = 3329979 --  3329979 【库里没有该物品】, 【表格】勾玉精华
	tNinjaPromotion_Reward[3315877]["RewardItem"][3]["Attr"] = "0 300" --  3329979 【库里没有该物品】*300（[错误]物品数量超10个）
	tNinjaPromotion_Reward[3315877]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3315877]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaPromotion_Reward[3315877]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaPromotion_Reward[3315878] = {}
	-- ===土系专属勾玉宝盒
	-- ===索引:tNinjaPromotion_Reward[3315878]
	-- ===删除:3315878
	-- ===LogStep: 2[1]
	-- ===
	-- ===
	tNinjaPromotion_Reward[3315878]["LogId"] = 18000224
	tNinjaPromotion_Reward[3315878]["LogStep"] = "2[1]"
	tNinjaPromotion_Reward[3315878]["DeleteItem"] = {}
	tNinjaPromotion_Reward[3315878]["DeleteItem"][1] = {}
	tNinjaPromotion_Reward[3315878]["DeleteItem"][1]["Id"] = 3315878 -- 【库】 3315878 【库里没有该物品】[属性:]
	tNinjaPromotion_Reward[3315878]["RewardItem"] = {}
	tNinjaPromotion_Reward[3315878]["RewardItem"][1] = {}
	tNinjaPromotion_Reward[3315878]["RewardItem"][1]["Id"] = 3330052 --  3330052 【库里没有该物品】, 【表格】土遁勾玉
	tNinjaPromotion_Reward[3315878]["RewardItem"][1]["Attr"] = "0 1" --  3330052 【库里没有该物品】*1
	tNinjaPromotion_Reward[3315878]["RewardItem"][2] = {}
	tNinjaPromotion_Reward[3315878]["RewardItem"][2]["Id"] = 3330054 --  3330054 【库里没有该物品】, 【表格】土遁勾玉·固法
	tNinjaPromotion_Reward[3315878]["RewardItem"][2]["Attr"] = "0 1" --  3330054 【库里没有该物品】*1
	tNinjaPromotion_Reward[3315878]["RewardItem"][3] = {}
	tNinjaPromotion_Reward[3315878]["RewardItem"][3]["Id"] = 3329979 --  3329979 【库里没有该物品】, 【表格】勾玉精华
	tNinjaPromotion_Reward[3315878]["RewardItem"][3]["Attr"] = "0 300" --  3329979 【库里没有该物品】*300（[错误]物品数量超10个）
	tNinjaPromotion_Reward[3315878]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3315878]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaPromotion_Reward[3315878]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaPromotion_Reward[3315879] = {}
	-- ===资质总分精装礼盒
	-- ===索引:tNinjaPromotion_Reward[3315879]
	-- ===删除:3315879
	-- ===LogStep: 2[1]
	-- ===
	tNinjaPromotion_Reward[3315879][1] = {}
	tNinjaPromotion_Reward[3315879][1]["NeedMoney"] = 99
	tNinjaPromotion_Reward[3315879][1]["LogId"] = 18000224
	tNinjaPromotion_Reward[3315879][1]["LogStep"] = "2[1]"
	tNinjaPromotion_Reward[3315879][1]["DeleteItem"] = {}
	tNinjaPromotion_Reward[3315879][1]["DeleteItem"][1] = {}
	tNinjaPromotion_Reward[3315879][1]["DeleteItem"][1]["Id"] = 3315879 -- 【库】 3315879 【库里没有该物品】[属性:]
	tNinjaPromotion_Reward[3315879][1]["RewardItem"] = {}
	tNinjaPromotion_Reward[3315879][1]["RewardItem"][1] = {}
	tNinjaPromotion_Reward[3315879][1]["RewardItem"][1]["Id"] = 3329979 --  3329979 【库里没有该物品】, 【表格】勾玉精华
	tNinjaPromotion_Reward[3315879][1]["RewardItem"][1]["Attr"] = "0 100" --  3329979 【库里没有该物品】*100（[错误]物品数量超10个）
	tNinjaPromotion_Reward[3315879][1]["RewardItem"][2] = {}
	tNinjaPromotion_Reward[3315879][1]["RewardItem"][2]["Id"] = 3330063 --  3330063 【库里没有该物品】, 【表格】勾玉宝盒
	tNinjaPromotion_Reward[3315879][1]["RewardItem"][2]["Attr"] = "0 2" --  3330063 【库里没有该物品】*2
	tNinjaPromotion_Reward[3315879][1]["RewardItem"][3] = {}
	tNinjaPromotion_Reward[3315879][1]["RewardItem"][3]["Id"] = 3327202 --  3327202 【库里没有该物品】, 【表格】资质洗练道具
	tNinjaPromotion_Reward[3315879][1]["RewardItem"][3]["Attr"] = "0 30" --  3327202 【库里没有该物品】*30（[错误]物品数量超10个）
	tNinjaPromotion_Reward[3315879][1]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3315879][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaPromotion_Reward[3315879][1]["RewardEffect"]["Effect"] = "angelwing"

	tNinjaPromotion_Reward[3315879][2] = {}
	tNinjaPromotion_Reward[3315879][2]["LogId"] = 18000224
	tNinjaPromotion_Reward[3315879][2]["LogStep"] = "2[1]"
	tNinjaPromotion_Reward[3315879][2]["DeleteItem"] = {}
	tNinjaPromotion_Reward[3315879][2]["DeleteItem"][1] = {}
	tNinjaPromotion_Reward[3315879][2]["DeleteItem"][1]["Id"] = 3315879 -- 【库】 3315879 【库里没有该物品】[属性:]
	tNinjaPromotion_Reward[3315879][2]["RewardItem"] = {}
	tNinjaPromotion_Reward[3315879][2]["RewardItem"][1] = {}
	tNinjaPromotion_Reward[3315879][2]["RewardItem"][1]["Id"] = 3329979 --  3329979 【库里没有该物品】, 【表格】勾玉精华
	tNinjaPromotion_Reward[3315879][2]["RewardItem"][1]["Attr"] = "0 100" --  3329979 【库里没有该物品】*100（[错误]物品数量超10个）
	tNinjaPromotion_Reward[3315879][2]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3315879][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaPromotion_Reward[3315879][2]["RewardEffect"]["Effect"] = "angelwing"
	
	
	tNinjaPromotion_Reward[3315880] = {}
	-- ===资质总分豪华礼盒
	-- ===索引:tNinjaPromotion_Reward[3315880]
	-- ===删除:3315880
	-- ===LogStep: 2[1]
	-- ===
	tNinjaPromotion_Reward[3315880][1] = {}
	tNinjaPromotion_Reward[3315880][1]["NeedMoney"] = 99
	tNinjaPromotion_Reward[3315880][1]["LogId"] = 18000224
	tNinjaPromotion_Reward[3315880][1]["LogStep"] = "2[1]"
	tNinjaPromotion_Reward[3315880][1]["DeleteItem"] = {}
	tNinjaPromotion_Reward[3315880][1]["DeleteItem"][1] = {}
	tNinjaPromotion_Reward[3315880][1]["DeleteItem"][1]["Id"] = 3315880 -- 【库】 3315880 【库里没有该物品】[属性:]
	tNinjaPromotion_Reward[3315880][1]["RewardItem"] = {}
	tNinjaPromotion_Reward[3315880][1]["RewardItem"][1] = {}
	tNinjaPromotion_Reward[3315880][1]["RewardItem"][1]["Id"] = 3329979 --  3329979 【库里没有该物品】, 【表格】勾玉精华
	tNinjaPromotion_Reward[3315880][1]["RewardItem"][1]["Attr"] = "0 150" --  3329979 【库里没有该物品】*150（[错误]物品数量超10个）
	tNinjaPromotion_Reward[3315880][1]["RewardItem"][2] = {}
	tNinjaPromotion_Reward[3315880][1]["RewardItem"][2]["Id"] = 3330063 --  3330063 【库里没有该物品】, 【表格】勾玉宝盒
	tNinjaPromotion_Reward[3315880][1]["RewardItem"][2]["Attr"] = "0 3" --  3330063 【库里没有该物品】*3
	tNinjaPromotion_Reward[3315880][1]["RewardItem"][3] = {}
	tNinjaPromotion_Reward[3315880][1]["RewardItem"][3]["Id"] = 3327202 --  3327202 【库里没有该物品】, 【表格】资质洗练道具
	tNinjaPromotion_Reward[3315880][1]["RewardItem"][3]["Attr"] = "0 60" --  3327202 【库里没有该物品】*60（[错误]物品数量超10个）
	tNinjaPromotion_Reward[3315880][1]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3315880][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaPromotion_Reward[3315880][1]["RewardEffect"]["Effect"] = "angelwing"

	tNinjaPromotion_Reward[3315880][2] = {}
	tNinjaPromotion_Reward[3315880][2]["LogId"] = 18000224
	tNinjaPromotion_Reward[3315880][2]["LogStep"] = "2[1]"
	tNinjaPromotion_Reward[3315880][2]["DeleteItem"] = {}
	tNinjaPromotion_Reward[3315880][2]["DeleteItem"][1] = {}
	tNinjaPromotion_Reward[3315880][2]["DeleteItem"][1]["Id"] = 3315880 -- 【库】 3315880 【库里没有该物品】[属性:]
	tNinjaPromotion_Reward[3315880][2]["RewardItem"] = {}
	tNinjaPromotion_Reward[3315880][2]["RewardItem"][1] = {}
	tNinjaPromotion_Reward[3315880][2]["RewardItem"][1]["Id"] = 3329979 --  3329979 【库里没有该物品】, 【表格】勾玉精华
	tNinjaPromotion_Reward[3315880][2]["RewardItem"][1]["Attr"] = "0 150" --  3329979 【库里没有该物品】*150（[错误]物品数量超10个）
	tNinjaPromotion_Reward[3315880][2]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3315880][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaPromotion_Reward[3315880][2]["RewardEffect"]["Effect"] = "angelwing"

	tNinjaPromotion_Reward[3315881] = {}
	-- ===资质总分尊享礼盒
	-- ===索引:tNinjaPromotion_Reward[3315881]
	-- ===删除:3315881
	-- ===LogStep: 2[1]
	-- ===
	tNinjaPromotion_Reward[3315881][1] = {}
	tNinjaPromotion_Reward[3315881][1]["NeedMoney"] = 99
	tNinjaPromotion_Reward[3315881][1]["LogId"] = 18000224
	tNinjaPromotion_Reward[3315881][1]["LogStep"] = "2[1]"
	tNinjaPromotion_Reward[3315881][1]["DeleteItem"] = {}
	tNinjaPromotion_Reward[3315881][1]["DeleteItem"][1] = {}
	tNinjaPromotion_Reward[3315881][1]["DeleteItem"][1]["Id"] = 3315881 -- 【库】 3315881 【库里没有该物品】[属性:]
	tNinjaPromotion_Reward[3315881][1]["RewardItem"] = {}
	tNinjaPromotion_Reward[3315881][1]["RewardItem"][1] = {}
	tNinjaPromotion_Reward[3315881][1]["RewardItem"][1]["Id"] = 3329979 --  3329979 【库里没有该物品】, 【表格】勾玉精华
	tNinjaPromotion_Reward[3315881][1]["RewardItem"][1]["Attr"] = "0 200" --  3329979 【库里没有该物品】*200（[错误]物品数量超10个）
	tNinjaPromotion_Reward[3315881][1]["RewardItem"][2] = {}
	tNinjaPromotion_Reward[3315881][1]["RewardItem"][2]["Id"] = 3330063 --  3330063 【库里没有该物品】, 【表格】勾玉宝盒
	tNinjaPromotion_Reward[3315881][1]["RewardItem"][2]["Attr"] = "0 5" --  3330063 【库里没有该物品】*5
	tNinjaPromotion_Reward[3315881][1]["RewardItem"][3] = {}
	tNinjaPromotion_Reward[3315881][1]["RewardItem"][3]["Id"] = 3327202 --  3327202 【库里没有该物品】, 【表格】资质洗练道具
	tNinjaPromotion_Reward[3315881][1]["RewardItem"][3]["Attr"] = "0 100" --  3327202 【库里没有该物品】*100（[错误]物品数量超10个）
	tNinjaPromotion_Reward[3315881][1]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3315881][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaPromotion_Reward[3315881][1]["RewardEffect"]["Effect"] = "angelwing"

	tNinjaPromotion_Reward[3315881][2] = {}
	tNinjaPromotion_Reward[3315881][2]["LogId"] = 18000224
	tNinjaPromotion_Reward[3315881][2]["LogStep"] = "2[1]"
	tNinjaPromotion_Reward[3315881][2]["DeleteItem"] = {}
	tNinjaPromotion_Reward[3315881][2]["DeleteItem"][1] = {}
	tNinjaPromotion_Reward[3315881][2]["DeleteItem"][1]["Id"] = 3315881 -- 【库】 3315881 【库里没有该物品】[属性:]
	tNinjaPromotion_Reward[3315881][2]["RewardItem"] = {}
	tNinjaPromotion_Reward[3315881][2]["RewardItem"][1] = {}
	tNinjaPromotion_Reward[3315881][2]["RewardItem"][1]["Id"] = 3329979 --  3329979 【库里没有该物品】, 【表格】勾玉精华
	tNinjaPromotion_Reward[3315881][2]["RewardItem"][1]["Attr"] = "0 200" --  3329979 【库里没有该物品】*200（[错误]物品数量超10个）
	tNinjaPromotion_Reward[3315881][2]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3315881][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaPromotion_Reward[3315881][2]["RewardEffect"]["Effect"] = "angelwing"

	tNinjaPromotion_Reward[3315882] = {}
	-- ===资质总分至尊礼盒
	-- ===索引:tNinjaPromotion_Reward[3315882]
	-- ===删除:3315882
	-- ===LogStep: 2[1]
	-- ===
	tNinjaPromotion_Reward[3315882][1] = {}
	tNinjaPromotion_Reward[3315882][1]["NeedMoney"] = 99
	tNinjaPromotion_Reward[3315882][1]["LogId"] = 18000224
	tNinjaPromotion_Reward[3315882][1]["LogStep"] = "2[1]"
	tNinjaPromotion_Reward[3315882][1]["DeleteItem"] = {}
	tNinjaPromotion_Reward[3315882][1]["DeleteItem"][1] = {}
	tNinjaPromotion_Reward[3315882][1]["DeleteItem"][1]["Id"] = 3315882 -- 【库】 3315882 【库里没有该物品】[属性:]
	tNinjaPromotion_Reward[3315882][1]["RewardItem"] = {}
	tNinjaPromotion_Reward[3315882][1]["RewardItem"][1] = {}
	tNinjaPromotion_Reward[3315882][1]["RewardItem"][1]["Id"] = 3329979 --  3329979 【库里没有该物品】, 【表格】勾玉精华
	tNinjaPromotion_Reward[3315882][1]["RewardItem"][1]["Attr"] = "0 300" --  3329979 【库里没有该物品】*300（[错误]物品数量超10个）
	tNinjaPromotion_Reward[3315882][1]["RewardItem"][2] = {}
	tNinjaPromotion_Reward[3315882][1]["RewardItem"][2]["Id"] = 3330063 --  3330063 【库里没有该物品】, 【表格】勾玉宝盒
	tNinjaPromotion_Reward[3315882][1]["RewardItem"][2]["Attr"] = "0 6" --  3330063 【库里没有该物品】*6
	tNinjaPromotion_Reward[3315882][1]["RewardItem"][3] = {}
	tNinjaPromotion_Reward[3315882][1]["RewardItem"][3]["Id"] = 3330064 --  3330064 【库里没有该物品】, 【表格】高级勾玉宝盒
	tNinjaPromotion_Reward[3315882][1]["RewardItem"][3]["Attr"] = "0 1" --  3330064 【库里没有该物品】*1
	tNinjaPromotion_Reward[3315882][1]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3315882][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaPromotion_Reward[3315882][1]["RewardEffect"]["Effect"] = "angelwing"

	tNinjaPromotion_Reward[3315882][2] = {}
	tNinjaPromotion_Reward[3315882][2]["LogId"] = 18000224
	tNinjaPromotion_Reward[3315882][2]["LogStep"] = "2[1]"
	tNinjaPromotion_Reward[3315882][2]["DeleteItem"] = {}
	tNinjaPromotion_Reward[3315882][2]["DeleteItem"][1] = {}
	tNinjaPromotion_Reward[3315882][2]["DeleteItem"][1]["Id"] = 3315882 -- 【库】 3315882 【库里没有该物品】[属性:]
	tNinjaPromotion_Reward[3315882][2]["RewardItem"] = {}
	tNinjaPromotion_Reward[3315882][2]["RewardItem"][1] = {}
	tNinjaPromotion_Reward[3315882][2]["RewardItem"][1]["Id"] = 3329979 --  3329979 【库里没有该物品】, 【表格】勾玉精华
	tNinjaPromotion_Reward[3315882][2]["RewardItem"][1]["Attr"] = "0 300" --  3329979 【库里没有该物品】*300（[错误]物品数量超10个）
	tNinjaPromotion_Reward[3315882][2]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3315882][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaPromotion_Reward[3315882][2]["RewardEffect"]["Effect"] = "angelwing"
	
	tNinjaPromotion_Reward[3315883] = {}
	-- ===血祭界限特惠宝盒
	-- ===索引:tNinjaPromotion_Reward[3315883]
	-- ===删除:3315883
	-- ===LogStep: 2[1]
	-- ===
	-- ===
	tNinjaPromotion_Reward[3315883]["ItemChanceSum"] = 9999
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tNinjaPromotion_Reward[3315883]["DeleteItem"] = {}
	tNinjaPromotion_Reward[3315883]["DeleteItem"][1] = {}
	tNinjaPromotion_Reward[3315883]["DeleteItem"][1]["Id"] = 3315883 -- 【库】 3315883 【库里没有该物品】[属性:]
	tNinjaPromotion_Reward[3315883]["LogId"] = 18000224
	tNinjaPromotion_Reward[3315883]["LogStep"] = " 2[1]"
	-- 血继勾玉·式纸之舞 - 45%
	tNinjaPromotion_Reward[3315883][1] = {}
	tNinjaPromotion_Reward[3315883][1]["RandomItemChanceType"] = 2
	tNinjaPromotion_Reward[3315883][1]["ItemChance"] = 4500
	tNinjaPromotion_Reward[3315883][1]["RewardItem"] = {}
	tNinjaPromotion_Reward[3315883][1]["RewardItem"][1] = {}
	tNinjaPromotion_Reward[3315883][1]["RewardItem"][1]["Id"] = 3330058 --  3330058 【库里没有该物品】, 【表格】血继勾玉·式纸之舞
	tNinjaPromotion_Reward[3315883][1]["RewardItem"][1]["Attr"] = "0 1" --  3330058 【库里没有该物品】*1
	tNinjaPromotion_Reward[3315883][1]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3315883][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaPromotion_Reward[3315883][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 血继勾玉·神罗天征 - 45%
	tNinjaPromotion_Reward[3315883][2] = {}
	tNinjaPromotion_Reward[3315883][2]["RandomItemChanceType"] = 2
	tNinjaPromotion_Reward[3315883][2]["ItemChance"] = 4500
	tNinjaPromotion_Reward[3315883][2]["RewardItem"] = {}
	tNinjaPromotion_Reward[3315883][2]["RewardItem"][1] = {}
	tNinjaPromotion_Reward[3315883][2]["RewardItem"][1]["Id"] = 3330059 --  3330059 【库里没有该物品】, 【表格】血继勾玉·神罗天征
	tNinjaPromotion_Reward[3315883][2]["RewardItem"][1]["Attr"] = "0 1" --  3330059 【库里没有该物品】*1
	tNinjaPromotion_Reward[3315883][2]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3315883][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaPromotion_Reward[3315883][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 血继勾玉·无限月读 - 3.33%
	tNinjaPromotion_Reward[3315883][3] = {}
	tNinjaPromotion_Reward[3315883][3]["RandomItemChanceType"] = 2
	tNinjaPromotion_Reward[3315883][3]["ItemChance"] = 333
	tNinjaPromotion_Reward[3315883][3]["RewardItem"] = {}
	tNinjaPromotion_Reward[3315883][3]["RewardItem"][1] = {}
	tNinjaPromotion_Reward[3315883][3]["RewardItem"][1]["Id"] = 3330060 --  3330060 【库里没有该物品】, 【表格】血继勾玉·无限月读
	tNinjaPromotion_Reward[3315883][3]["RewardItem"][1]["Attr"] = "0 1" --  3330060 【库里没有该物品】*1
	tNinjaPromotion_Reward[3315883][3]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3315883][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaPromotion_Reward[3315883][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 血继勾玉·八卦回天 - 3.33%
	tNinjaPromotion_Reward[3315883][4] = {}
	tNinjaPromotion_Reward[3315883][4]["RandomItemChanceType"] = 2
	tNinjaPromotion_Reward[3315883][4]["ItemChance"] = 333
	tNinjaPromotion_Reward[3315883][4]["RewardItem"] = {}
	tNinjaPromotion_Reward[3315883][4]["RewardItem"][1] = {}
	tNinjaPromotion_Reward[3315883][4]["RewardItem"][1]["Id"] = 3330061 --  3330061 【库里没有该物品】, 【表格】血继勾玉·八卦回天
	tNinjaPromotion_Reward[3315883][4]["RewardItem"][1]["Attr"] = "0 1" --  3330061 【库里没有该物品】*1
	tNinjaPromotion_Reward[3315883][4]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3315883][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaPromotion_Reward[3315883][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 血继勾玉·尸骨脉 - 3.33%
	tNinjaPromotion_Reward[3315883][5] = {}
	tNinjaPromotion_Reward[3315883][5]["RandomItemChanceType"] = 2
	tNinjaPromotion_Reward[3315883][5]["ItemChance"] = 333
	tNinjaPromotion_Reward[3315883][5]["RewardItem"] = {}
	tNinjaPromotion_Reward[3315883][5]["RewardItem"][1] = {}
	tNinjaPromotion_Reward[3315883][5]["RewardItem"][1]["Id"] = 3330062 --  3330062 【库里没有该物品】, 【表格】血继勾玉·尸骨脉
	tNinjaPromotion_Reward[3315883][5]["RewardItem"][1]["Attr"] = "0 1" --  3330062 【库里没有该物品】*1
	tNinjaPromotion_Reward[3315883][5]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3315883][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaPromotion_Reward[3315883][5]["RewardEffect"]["Effect"] = "angelwing"

	-- ===勾玉限定宝盒
	-- ===索引:tNinjaPromotion_Reward[3315888]
	-- ===删除:3315888
	-- ===LogStep: 2[1]
	-- ===
	-- ===
	tNinjaPromotion_Reward[3315888] = {}
	tNinjaPromotion_Reward[3315888]["LogId"] = 18000224
	tNinjaPromotion_Reward[3315888]["LogStep"] = "2[1]"
	tNinjaPromotion_Reward[3315888]["DeleteItem"] = {}
	tNinjaPromotion_Reward[3315888]["DeleteItem"][1] = {}
	tNinjaPromotion_Reward[3315888]["DeleteItem"][1]["Id"] = 3315888 -- 【库】 3315888 【库里没有该物品】[属性:]
	tNinjaPromotion_Reward[3315888]["RewardItem"] = {}
	tNinjaPromotion_Reward[3315888]["RewardItem"][1] = {}
	tNinjaPromotion_Reward[3315888]["RewardItem"][1]["Id"] = 3330063 -- 法印宝盒[4300035][属性:9][叠加:10000][金币:0], 【表格】勾玉宝盒
	tNinjaPromotion_Reward[3315888]["RewardItem"][1]["Attr"] = "0 1" -- 法印宝盒*1
	tNinjaPromotion_Reward[3315888]["RewardItem"][2] = {}
	tNinjaPromotion_Reward[3315888]["RewardItem"][2]["Id"] = 3329979 -- 秘术精华[3329979][属性:9][叠加:10000][金币:0], 【表格】勾玉精华
	tNinjaPromotion_Reward[3315888]["RewardItem"][2]["Attr"] = "0 370" -- 秘术精华*200（[错误]物品数量超10个）
	-- tNinjaPromotion_Reward[3315888]["RewardItem"][3] = {}
	-- tNinjaPromotion_Reward[3315888]["RewardItem"][3]["Id"] = 3327202 -- 血狱花[3327202][属性:9][叠加:10000][金币:0], 【表格】资质洗练道具
	-- tNinjaPromotion_Reward[3315888]["RewardItem"][3]["Attr"] = "0 135" -- 血狱花*135（[错误]物品数量超10个）
	tNinjaPromotion_Reward[3315888]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3315888]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaPromotion_Reward[3315888]["RewardEffect"]["Effect"] = "angelwing"



local tNinjaPromotion_EmoneyLog = {}
	tNinjaPromotion_EmoneyLog[3315879] = "10000	1728	99	99	1	"
	tNinjaPromotion_EmoneyLog[3315880] = "10000	1729	99	99	1	"
	tNinjaPromotion_EmoneyLog[3315881] = "10000	1730	99	99	1	"
	tNinjaPromotion_EmoneyLog[3315882] = "10000	1731	99	99	1	"


------------------------------------------------------------------------------------
-- 1.进入新的【百慕山】地图时，检测玩家是否开启了忍法帖，若开启根据掩码记录的玩家选择的属性，推送对应的属性礼包
function NinjaPromotion_GotoNewMap()
---判断地图
	local nNinjaPromotionUserId = Get_UserId()
	local nNinjaPromotion_MapId = Get_UserMapId(nNinjaPromotionUserId)
	if nNinjaPromotion_MapId ~= tNinjaPromotion_Data["MapId"] then
		return
	end
	--判断是否是忍者职业
	if not NinjaPromotion_JubUserPro(nNinjaPromotionUserId) then
		return
	end
	--已弹过
	local nNinjaPromotion_Event = tNinjaPromotion_NewStc[2]["EventType"]
	local nNinjaPromotion_Type = tNinjaPromotion_NewStc[2]["DataType"]
	if Task_ChkStcValue(nNinjaPromotion_Event,nNinjaPromotion_Type,">=",1)  then
		-- NinjaPromotion_GetNewInterface(nNinjaPromotionUserId)
		return
	end
	--判断身上是否有挂促销界面
	-- if not NinjaPromotion_JubTime(nNinjaPromotionUserId) then
		-- return
	-- end
	-- 获取玩家属性
	local nNinjaPromotion_Num = NinjaPromotion_GetData()
	if nNinjaPromotion_Num <= 0 then
		return
	end
	local nNinjaPromotion_Item = tNinjaPromotion_Get[nNinjaPromotion_Num]
	-- 打掩码出界面
	Task_SetStatistic(nNinjaPromotion_Event,nNinjaPromotion_Type,1,1)
	Task_SetStcTimestamp(nNinjaPromotion_Event,nNinjaPromotion_Type,0)
	---给洗练属性打掩码
	NinjaPromotion_SetData(nNinjaPromotion_Num,nNinjaPromotionUserId)
-- 出界面
	
	-- Sys_SendShopItem(tNinjaPromotion_Data["NpcId"][nNinjaPromotion_Num],nNinjaPromotion_Item,1,1,tNinjaPromotion_Data["Time"],nNinjaPromotionUserId)
	-- 记录时间
	-- NinjaPromotion_SetTime(nNinjaPromotionUserId)
	local sNinjaPromotion_Log = string.format(tNinjaPromotion_NewLog[1],nNinjaPromotion_Item)
	Sys_SaveActionFestivalLog(sNinjaPromotion_Log)
end

-- 2.进入新的【百慕山】地图时，检测玩家开启了几个勾玉槽，若开启8个，则推送礼包
function NinjaPromotion_GetNewInterface(nNinjaPromotion_UserId)
	local nNinjaPromotionUserId = nNinjaPromotion_UserId or Get_UserId()
	--判断是否是忍者职业
	if not NinjaPromotion_JubUserPro(nNinjaPromotionUserId) then
		return
	end
	---判断是否开启5个
	-- NinjaPromotion_GetNewInterface5(nNinjaPromotionUserId)

	--判断身上是否有挂促销界面
	-- if not NinjaPromotion_JubTime(nNinjaPromotionUserId) then
		-- return
	-- end

	--检测是否有开启8个
	if not NinjaPromotion_JubTrough() then
		return
	end
	--已弹过
	local nNinjaPromotion_Event = tNinjaPromotion_NewStc[3]["EventType"]
	local nNinjaPromotion_Type = tNinjaPromotion_NewStc[3]["DataType"]
	if Task_ChkStcValue(nNinjaPromotion_Event,nNinjaPromotion_Type,">=",1)  then
		return
	end

	local nNinjaPromotion_Item = tNinjaPromotion_Get["NewItem"]
	
	Task_SetStatistic(nNinjaPromotion_Event,nNinjaPromotion_Type,1,1)
	Task_SetStcTimestamp(nNinjaPromotion_Event,nNinjaPromotion_Type,0)

	-- Sys_SendShopItem(tNinjaPromotion_Data["NpcId"][6],nNinjaPromotion_Item,1,1,tNinjaPromotion_Data["Time"],nNinjaPromotionUserId)
	-- 记录时间
	-- NinjaPromotion_SetTime(nNinjaPromotionUserId)
	local sNinjaPromotion_Log = string.format(tNinjaPromotion_NewLog[1],nNinjaPromotion_Item)
	Sys_SaveActionFestivalLog(sNinjaPromotion_Log)
end

---检测职业
function NinjaPromotion_JubUserPro(nNinjaPromotionUserId)
	local nNinjaPromotion_Pro = Get_NewUserProfession(nNinjaPromotionUserId)
	if nNinjaPromotion_Pro >= G_PRO_Ninja0_New and nNinjaPromotion_Pro <= G_PRO_Ninja49_New then
		return true
	else
		return false
	end
end
-- 检测勾玉槽
function NinjaPromotion_JubTrough()
	local nNinjaPromotionUserId = Get_UserId()
	for nPos = 1,8 do
		if not User_IsOpenGouYuPos(nPos,nNinjaPromotionUserId) then
			
			return false
		end
	end
	return true
end

function NinjaPromotion_JubTrough5()
	local nNinjaPromotionUserId = Get_UserId()
	local nNinjaPromotionNum = 0
	for nPos = 1,8 do
		if User_IsOpenGouYuPos(nPos,nNinjaPromotionUserId) then
			nNinjaPromotionNum = nNinjaPromotionNum + 1
		end
	end
	return nNinjaPromotionNum
end
--新增
function NinjaPromotion_GetNewInterface5(nNinjaPromotion_UserId)
	local nNinjaPromotionUserId = nNinjaPromotion_UserId or Get_UserId()
	--判断身上是否有挂促销界面
	-- if not NinjaPromotion_JubTime(nNinjaPromotionUserId) then
		-- return
	-- end
	local nNinjaPromotion_Data = NinjaPromotion_JubTrough5()

	if nNinjaPromotion_Data < 5 then
		return
	end 
	--已弹过
	local nNinjaPromotion_Event = tNinjaPromotion_NewStc[7]["EventType"]
	local nNinjaPromotion_Type = tNinjaPromotion_NewStc[7]["DataType"]
	if Task_ChkStcValue(nNinjaPromotion_Event,nNinjaPromotion_Type,">=",1)  then
		return
	end
	local nNinjaPromotion_Item = tNinjaPromotion_Get["NewItem5"]
	
	Task_SetStatistic(nNinjaPromotion_Event,nNinjaPromotion_Type,1,1)
	Task_SetStcTimestamp(nNinjaPromotion_Event,nNinjaPromotion_Type,0)

	-- Sys_SendShopItem(tNinjaPromotion_Data["NpcId"][22],nNinjaPromotion_Item,1,1,tNinjaPromotion_Data["Time"],nNinjaPromotionUserId)
	-- 记录时间
	-- NinjaPromotion_SetTime(nNinjaPromotionUserId)
	local sNinjaPromotion_Log = string.format(tNinjaPromotion_NewLog[1],nNinjaPromotion_Item)
	Sys_SaveActionFestivalLog(sNinjaPromotion_Log)

end
---玩家选了什么属性
function NinjaPromotion_GetData()
	local nNinjaPromotion_Event = tNinjaPromotion_NewStc[1]["EventType"]
	local nNinjaPromotion_Type = tNinjaPromotion_NewStc[1]["DataType"]
	local nNinjaPromotion_Data = Get_UserStatisticValue(nNinjaPromotion_Event,nNinjaPromotion_Type)
	return nNinjaPromotion_Data
end

--3. 玩家进行洗练，单任意属性>=90%时触发该促销，一种属性只有一次，玩家初始选择的主属性不会触发这个
function NinjaPromotion_SetData(nNinjaPromotion_Num,nNinjaPromotionUserId)
	local nNinjaPromotion_Event = tNinjaPromotion_NewStc[4]["EventType"]
	local nNinjaPromotion_Type = tNinjaPromotion_NewStc[4]["DataType"]
	local nNinjaPromotion_Data = tNinjaPromotion_NewStcData[nNinjaPromotion_Num]
	Task_AddStatistic(nNinjaPromotion_Event,nNinjaPromotion_Type,nNinjaPromotion_Data,1,nNinjaPromotionUserId)
	Task_SetStcTimestamp(nNinjaPromotion_Event,nNinjaPromotion_Type,0,nNinjaPromotionUserId)
end
--检测是否有出过界面
function NinjaPromotion_JubData(nNinjaPromotion_Num,nNinjaPromotionUserId)
	local nNinjaPromotion_Event = tNinjaPromotion_NewStc[4]["EventType"]
	local nNinjaPromotion_Type = tNinjaPromotion_NewStc[4]["DataType"]
	local nNinjaPromotion_Data = tNinjaPromotion_NewStcData[nNinjaPromotion_Num]
	local nNinjaPromotion_Value = Get_UserStatisticValue(nNinjaPromotion_Event,nNinjaPromotion_Type,nNinjaPromotionUserId)
	if Sys_ParseNumbersContain(nNinjaPromotion_Data,nNinjaPromotion_Value) then
		return false
	end
	return true
end
--参2：火资质，参3：水资质，参4：土资质，参5：风资质，参6：雷资质，参7：火精修，参8：水精修，参9：土精修，参10：风精修，参11：雷精修
function NinjaPromotion_SendGouyuAptitude(nNinjaPromotionUserId,nFire,nWater,nSoil,nWind,nThunder,nFireJingxiu,nWaterJingxiu,nSoilJingxiu,nWindJingxiu,nThunderJingxiu)
	--判断身上是否有挂促销界面
	-- if not NinjaPromotion_JubTime(nNinjaPromotionUserId) then
		-- return
	-- end
	--判断是否是忍者职业
	if not NinjaPromotion_JubUserPro(nNinjaPromotionUserId) then
		return
	end
	--火
	if nFire >= 90 and NinjaPromotion_JubData(1,nNinjaPromotionUserId) then
		--打掩码出界面
		NinjaPromotion_SetData(1,nNinjaPromotionUserId)
		-- Sys_SendShopItem(tNinjaPromotion_Data["NpcId"][7],tNinjaPromotion_Get["XiLian"][1],1,1,tNinjaPromotion_Data["Time"],nNinjaPromotionUserId)
		-- 记录时间
		-- NinjaPromotion_SetTime(nNinjaPromotionUserId)
		local sNinjaPromotion_Log = string.format(tNinjaPromotion_NewLog[1],tNinjaPromotion_Get["XiLian"][1])
		Sys_SaveActionFestivalLog(sNinjaPromotion_Log,nNinjaPromotionUserId)
		return
	end
	--水
	if nWater >= 90 and NinjaPromotion_JubData(4,nNinjaPromotionUserId) then
		--打掩码出界面
		NinjaPromotion_SetData(4,nNinjaPromotionUserId)
		-- Sys_SendShopItem(tNinjaPromotion_Data["NpcId"][8],tNinjaPromotion_Get["XiLian"][2],1,1,tNinjaPromotion_Data["Time"],nNinjaPromotionUserId)
		-- 记录时间
		-- NinjaPromotion_SetTime(nNinjaPromotionUserId)
		local sNinjaPromotion_Log = string.format(tNinjaPromotion_NewLog[1],tNinjaPromotion_Get["XiLian"][2])
		Sys_SaveActionFestivalLog(sNinjaPromotion_Log,nNinjaPromotionUserId)
		return
	end
	--风
	if nWind >= 90 and NinjaPromotion_JubData(2,nNinjaPromotionUserId) then
		--打掩码出界面
		NinjaPromotion_SetData(2,nNinjaPromotionUserId)
		-- Sys_SendShopItem(tNinjaPromotion_Data["NpcId"][9],tNinjaPromotion_Get["XiLian"][3],1,1,tNinjaPromotion_Data["Time"],nNinjaPromotionUserId)
		-- 记录时间
		-- NinjaPromotion_SetTime(nNinjaPromotionUserId)
		local sNinjaPromotion_Log = string.format(tNinjaPromotion_NewLog[1],tNinjaPromotion_Get["XiLian"][3])
		Sys_SaveActionFestivalLog(sNinjaPromotion_Log,nNinjaPromotionUserId)
		return
	end
	--雷
	if nThunder >= 90 and NinjaPromotion_JubData(3,nNinjaPromotionUserId) then
		-- 打掩码出界面
		NinjaPromotion_SetData(3,nNinjaPromotionUserId)
		-- Sys_SendShopItem(tNinjaPromotion_Data["NpcId"][10],tNinjaPromotion_Get["XiLian"][4],1,1,tNinjaPromotion_Data["Time"],nNinjaPromotionUserId)
		-- 记录时间
		-- NinjaPromotion_SetTime(nNinjaPromotionUserId)
		local sNinjaPromotion_Log = string.format(tNinjaPromotion_NewLog[1],tNinjaPromotion_Get["XiLian"][4])
		Sys_SaveActionFestivalLog(sNinjaPromotion_Log,nNinjaPromotionUserId)
		return
	end
	-- 土
	if nSoil >= 90 and NinjaPromotion_JubData(5,nNinjaPromotionUserId) then
		--打掩码出界面
		NinjaPromotion_SetData(5,nNinjaPromotionUserId)
		-- Sys_SendShopItem(tNinjaPromotion_Data["NpcId"][11],tNinjaPromotion_Get["XiLian"][5],1,1,tNinjaPromotion_Data["Time"],nNinjaPromotionUserId)
		-- 记录时间
		-- NinjaPromotion_SetTime(nNinjaPromotionUserId)
		local sNinjaPromotion_Log = string.format(tNinjaPromotion_NewLog[1],tNinjaPromotion_Get["XiLian"][5])
		Sys_SaveActionFestivalLog(sNinjaPromotion_Log,nNinjaPromotionUserId)
		return
	end
	-- User_TalkChannel2005("1",nNinjaPromotionUserId)
	--资质总分
	NinjaPromotion_TaltolNum(nNinjaPromotionUserId,nFire,nWater,nSoil,nWind,nThunder,nFireJingxiu,nWaterJingxiu,nSoilJingxiu,nWindJingxiu,nThunderJingxiu)
end

--4.玩家进行洗练，当资质总分超过一定值时，触发该推送。送给玩家一个阶段性福利礼包
function NinjaPromotion_TaltolNum(nNinjaPromotionUserId,nFire,nWater,nSoil,nWind,nThunder,nFireJingxiu,nWaterJingxiu,nSoilJingxiu,nWindJingxiu,nThunderJingxiu)
	local nNinjaPromotion_Taltol = nFire + nWater + nSoil + nWind + nThunder
	local nNinjaPromotion_Event = tNinjaPromotion_NewStc[5]["EventType"]
	local nNinjaPromotion_Type = tNinjaPromotion_NewStc[5]["DataType"]
	local nNinjaPromotion_Value = Get_UserStatisticValue(nNinjaPromotion_Event,nNinjaPromotion_Type,nNinjaPromotionUserId) + 1
	--判断是否是忍者职业
	if not NinjaPromotion_JubUserPro(nNinjaPromotionUserId) then
		return
	end
	if nNinjaPromotion_Taltol >= tNinjaPromotion_TalNum[nNinjaPromotion_Value]  then
		--打掩码出界面
		Task_AddStatistic(nNinjaPromotion_Event,nNinjaPromotion_Type,1,1,nNinjaPromotionUserId)
		Task_SetStcTimestamp(nNinjaPromotion_Event,nNinjaPromotion_Type,0,nNinjaPromotionUserId)
		-- Sys_SendShopItem(tNinjaPromotion_Data["NpcId"][11 + nNinjaPromotion_Value],tNinjaPromotion_Get["XiLianTal"][nNinjaPromotion_Value],1,2,tNinjaPromotion_Data["Time"],nNinjaPromotionUserId)
		-- 记录时间
		-- NinjaPromotion_SetTime(nNinjaPromotionUserId)
		local sNinjaPromotion_Log = string.format(tNinjaPromotion_NewLog[1],tNinjaPromotion_Get["XiLianTal"][nNinjaPromotion_Value])
		Sys_SaveActionFestivalLog(sNinjaPromotion_Log,nNinjaPromotionUserId)
	end
end

-- 5.当玩家抽到相同的血祭界限勾玉，导致自动分解时，调用这个处理促销，打折贩卖一个血祭界限礼包。
function NinjaPromotion_GouYuResolve(nNinjaPromotionUserId,nNinjaPromotionType)
	--判断身上是否有挂促销界面
	-- if not NinjaPromotion_JubTime(nNinjaPromotionUserId) then
		-- return
	-- end
	--判断是否是忍者职业
	if not NinjaPromotion_JubUserPro(nNinjaPromotionUserId) then
		return
	end
	for a,b in pairs(tNinjaPromotion_Get["GouyuId"]) do
		if nNinjaPromotionType == b then
			---判断本周是否已出过界面
			if not NinjaPromotion_GouYuStcJub(nNinjaPromotionUserId) then
				return
			end
			-- User_TalkChannel2005("2",nNinjaPromotionUserId)
			local nNinjaPromotion_Event = tNinjaPromotion_NewStc[6]["EventType"]
			local nNinjaPromotion_Type = tNinjaPromotion_NewStc[6]["DataType"]
			Task_SetStatistic(nNinjaPromotion_Event,nNinjaPromotion_Type,1,1,nNinjaPromotionUserId)
			Task_SetStcTimestamp(nNinjaPromotion_Event,nNinjaPromotion_Type,0,nNinjaPromotionUserId)
			-- Sys_SendShopItem(tNinjaPromotion_Data["NpcId"][16],tNinjaPromotion_Get["FengJie"],1,1,tNinjaPromotion_Data["Time"],nNinjaPromotionUserId)
			-- 记录时间
			-- NinjaPromotion_SetTime(nNinjaPromotionUserId)
			local sNinjaPromotion_Log = string.format(tNinjaPromotion_NewLog[1],tNinjaPromotion_Get["FengJie"])
			Sys_SaveActionFestivalLog(sNinjaPromotion_Log,nNinjaPromotionUserId)
		end
	end 
end


function NinjaPromotion_GouYuStcJub(nNinjaPromotionUserId)
	local nNinjaPromotion_Event = tNinjaPromotion_NewStc[6]["EventType"]
	local nNinjaPromotion_Type = tNinjaPromotion_NewStc[6]["DataType"]
	if Task_StcInterval(nNinjaPromotion_Event,nNinjaPromotion_Type,1,5,nNinjaPromotionUserId) then  --隔天清零
		Task_SetStatistic(nNinjaPromotion_Event,nNinjaPromotion_Type,0,1,nNinjaPromotionUserId)
		Task_SetStcTimestamp(nNinjaPromotion_Event,nNinjaPromotion_Type,0,nNinjaPromotionUserId)
	end
	if Task_ChkStcValue(nNinjaPromotion_Event,nNinjaPromotion_Type,">=",1,nNinjaPromotionUserId)  then
		return false
	end
	return true
end

----时间判断
function NinjaPromotion_JubTime(nNinjaPromotionUserId)
	if tNinjaPromotion_Time[nNinjaPromotionUserId] == nil then
		tNinjaPromotion_Time[nNinjaPromotionUserId] = 0
	end
	if tNinjaPromotion_Time[nNinjaPromotionUserId] == 0 then
		return true
	end
	local nNinjaPromotion_NowTime = os.time()
	if nNinjaPromotion_NowTime - tNinjaPromotion_Time[nNinjaPromotionUserId] > tNinjaPromotion_Data["Time"] then
		return true
	else
		return false
	end
end

function NinjaPromotion_SetTime(nNinjaPromotionUserId)
	if tNinjaPromotion_Time[nNinjaPromotionUserId] == nil then
		tNinjaPromotion_Time[nNinjaPromotionUserId] = 0
	end
	local nNinjaPromotion_NowTime = os.time()
	tNinjaPromotion_Time[nNinjaPromotionUserId] = nNinjaPromotion_NowTime
end
------------------------------------------物品逻辑-----------------------------------------
function NinjaPromotion_OpenItemLink(nItemId)
---判断物品
	if not Item_ChkItem(nItemId) then
		return false
	end
	--天石不足
	local nNinjaPromotionEmoney = Get_UserEMoney()
	local nNinjaPromotion_NeedEmoney = tNinjaPromotion_Reward[nItemId][1]["NeedMoney"]
	
	if nNinjaPromotionEmoney < nNinjaPromotion_NeedEmoney then
		Sys_MsgBox(tNinjaPromotion_Text[nItemId]["Msg"]["NoMoney"])
		return
	end
	-- 背包空间
	local nNinjaPromotion_Space = RewardTemplate_GetRewardSpace(tNinjaPromotion_Reward[nItemId][2])
	if not RewardTemplate_CheckSpace(tNinjaPromotion_Reward[nItemId][2]) then
		local sNinjaPromotion_Space = string.format(tNinjaPromotion_Text[nItemId]["Msg"]["NoSpace"],nNinjaPromotion_Space)
		Sys_MsgBox(sNinjaPromotion_Space)
		return
	end
	LinkItemGossipFunc_New(nItemId,"2-1")
end 
---花天石购买
function NinjaPromotion_CostOpenItem(nItemId)
---判断物品
	if not Item_ChkItem(nItemId) then
		return false
	end
	--天石不足
	local nNinjaPromotionEmoney = Get_UserEMoney()
	local nNinjaPromotion_NeedEmoney = tNinjaPromotion_Reward[nItemId][1]["NeedMoney"]
	
	if nNinjaPromotionEmoney < nNinjaPromotion_NeedEmoney then
		Sys_MsgBox(tNinjaPromotion_Text[nItemId]["Msg"]["NoMoney"])
		return
	end
	-- 背包空间
	local nNinjaPromotion_Space = RewardTemplate_GetRewardSpace(tNinjaPromotion_Reward[nItemId][1])
	if not RewardTemplate_CheckSpace(tNinjaPromotion_Reward[nItemId][1]) then
		local sNinjaPromotion_Space = string.format(tNinjaPromotion_Text[nItemId]["Msg"]["NoSpace"],nNinjaPromotion_Space)
		Sys_MsgBox(sNinjaPromotion_Space)
		return
	end
	--扣天石给物品
	if not User_AddEMoney(-nNinjaPromotion_NeedEmoney) then
		return
	end
	RewardTemplate_UseItemAndMsg(tNinjaPromotion_Reward[nItemId][1])
	--emoneylog
	Sys_SaveEmoneyBuy(tNinjaPromotion_EmoneyLog[nItemId])
end


function NinjaPromotion_OpenItem(nItemId)
---判断物品
	if not Item_ChkItem(nItemId) then
		return false
	end
	-- 背包空间
	local nNinjaPromotion_Space = RewardTemplate_GetRewardSpace(tNinjaPromotion_Reward[nItemId][2])
	if not RewardTemplate_CheckSpace(tNinjaPromotion_Reward[nItemId][2]) then
		local sNinjaPromotion_Space = string.format(tNinjaPromotion_Text[nItemId]["Msg"]["NoSpace"],nNinjaPromotion_Space)
		Sys_MsgBox(sNinjaPromotion_Space)
		return
	end
	LinkItemGossipFunc_New(nItemId,"3-1")
end 
-- 直接打开
function NinjaPromotion_GoOpenItem(nItemId)
---判断物品
	if not Item_ChkItem(nItemId) then
		return false
	end
	-- 背包空间
	local nNinjaPromotion_Space = RewardTemplate_GetRewardSpace(tNinjaPromotion_Reward[nItemId][2])
	if not RewardTemplate_CheckSpace(tNinjaPromotion_Reward[nItemId][2]) then
		local sNinjaPromotion_Space = string.format(tNinjaPromotion_Text[nItemId]["Msg"]["NoSpace"],nNinjaPromotion_Space)
		Sys_MsgBox(sNinjaPromotion_Space)
		return
	end
	RewardTemplate_UseItemAndMsg(tNinjaPromotion_Reward[nItemId][2])
end



----------------------------------物品模板------------------------------------------------
tItem[3315868] = tItem[3315868] or {}
tItem[3315868]["Function"] = function(nItemId,sItemName)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return false
	end
	if not RewardTemplate_CheckSpace(tNinjaPromotion_Reward[nItemId]) then
		return
	end
	RewardTemplate_UseItemAndMsg(tNinjaPromotion_Reward[nItemId])
end
tItem[3315868] = tItem[3315868] or {}
tItem[3315869] = tItem[3315868] or {}
tItem[3315870] = tItem[3315868] or {}
tItem[3315871] = tItem[3315868] or {}
tItem[3315872] = tItem[3315868] or {}
tItem[3315873] = tItem[3315868] or {}
tItem[3315874] = tItem[3315868] or {}
tItem[3315875] = tItem[3315868] or {}
tItem[3315876] = tItem[3315868] or {}
tItem[3315877] = tItem[3315868] or {}
tItem[3315878] = tItem[3315868] or {}
------资质总分精装礼盒
tItemFace[3315879] = 2881
tItem[3315879] = tItem[3315879] or {}
tItem[3315879]["DialogueText"] = tNinjaPromotion_Text[3315879]
tItem[3315879]["Text1-1"] = {111,112,113,114,115,116}
tItem[3315879]["tOption1-1"] = {111,112}
tItem[3315879]["OptionFunc111"] = "NinjaPromotion_OpenItemLink</N>3315879"
tItem[3315879]["OptionFunc112"] = "NinjaPromotion_OpenItem</N>3315879"
--花天石确认
tItem[3315879]["Text2-1"] = {211,212}
tItem[3315879]["tOption2-1"] = {211,212}
tItem[3315879]["OptionFunc211"] = "NinjaPromotion_CostOpenItem</N>3315879"
---直接打开确认
tItem[3315879]["Text3-1"] = {311,312}
tItem[3315879]["tOption3-1"] = {311,312}
tItem[3315879]["OptionFunc311"] = "NinjaPromotion_GoOpenItem</N>3315879"

------资质总分豪华礼盒
tItemFace[3315880] = 2882
tItem[3315880] = tItem[3315880] or {}
tItem[3315880]["DialogueText"] = tNinjaPromotion_Text[3315880]
tItem[3315880]["Text1-1"] = {111,112,113,114,115,116}
tItem[3315880]["tOption1-1"] = {111,112}
tItem[3315880]["OptionFunc111"] = "NinjaPromotion_OpenItemLink</N>3315880"
tItem[3315880]["OptionFunc112"] = "NinjaPromotion_OpenItem</N>3315880"
--花天石确认
tItem[3315880]["Text2-1"] = {211,212}
tItem[3315880]["tOption2-1"] = {211,212}
tItem[3315880]["OptionFunc211"] = "NinjaPromotion_CostOpenItem</N>3315880"
---直接打开确认
tItem[3315880]["Text3-1"] = {311,312}
tItem[3315880]["tOption3-1"] = {311,312}
tItem[3315880]["OptionFunc311"] = "NinjaPromotion_GoOpenItem</N>3315880"

------资质总分尊享礼盒
tItemFace[3315881] = 2883
tItem[3315881] = tItem[3315881] or {}
tItem[3315881]["DialogueText"] = tNinjaPromotion_Text[3315881]
tItem[3315881]["Text1-1"] = {111,112,113,114,115,116}
tItem[3315881]["tOption1-1"] = {111,112}
tItem[3315881]["OptionFunc111"] = "NinjaPromotion_OpenItemLink</N>3315881"
tItem[3315881]["OptionFunc112"] = "NinjaPromotion_OpenItem</N>3315881"
--花天石确认
tItem[3315881]["Text2-1"] = {211,212}
tItem[3315881]["tOption2-1"] = {211,212}
tItem[3315881]["OptionFunc211"] = "NinjaPromotion_CostOpenItem</N>3315881"
---直接打开确认
tItem[3315881]["Text3-1"] = {311,312}
tItem[3315881]["tOption3-1"] = {311,312}
tItem[3315881]["OptionFunc311"] = "NinjaPromotion_GoOpenItem</N>3315881"

------资质总分至尊礼盒
tItemFace[3315882] = 2884
tItem[3315882] = tItem[3315882] or {}
tItem[3315882]["DialogueText"] = tNinjaPromotion_Text[3315882]
tItem[3315882]["Text1-1"] = {111,112,113,114,115,116}
tItem[3315882]["tOption1-1"] = {111,112}
tItem[3315882]["OptionFunc111"] = "NinjaPromotion_OpenItemLink</N>3315882"
tItem[3315882]["OptionFunc112"] = "NinjaPromotion_OpenItem</N>3315882"
--花天石确认
tItem[3315882]["Text2-1"] = {211,212}
tItem[3315882]["tOption2-1"] = {211,212}
tItem[3315882]["OptionFunc211"] = "NinjaPromotion_CostOpenItem</N>3315882"
---直接打开确认
tItem[3315882]["Text3-1"] = {311}
tItem[3315882]["tOption3-1"] = {311,312}
tItem[3315882]["OptionFunc311"] = "NinjaPromotion_GoOpenItem</N>3315882"


tItem[3315883] = tItem[3315883] or {}
tItem[3315883]["Function"] = function(nItemId,sItemName)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return false
	end
	if not RewardTemplate_ChkRandomSpace(tNinjaPromotion_Reward,3315883) then
		return
	end
	RewardTemplate_RandomReward(tNinjaPromotion_Reward,3315883)
end

---海外新增
tItem[3315888] = tItem[3315868] or {}



--玩家洗练完，保存洗练出的属性的时候调用
-- tSendGouyuAptitude["tFunction"] = tSendGouyuAptitude["tFunction"] or {}
-- table.insert(tSendGouyuAptitude["tFunction"],NinjaPromotion_SendGouyuAptitude)


--勾玉分解时调用该接口通知任务分解的勾玉类型：(下架)
-- table.insert(tGouYuResolve["tFunction"],NinjaPromotion_GouYuResolve)


-- 【至高天】鬼岛刺客 下架
-- tMonster[5914] = tMonster[5914] or {}
-- tMonster[5914]["tFunction"] = tMonster[5914]["tFunction"] or {}
-- table.insert(tMonster[5914]["tFunction"],NinjaPromotion_GotoNewMap)


-- function Test()
	-- local nNinjaPromotion_Event = tNinjaPromotion_NewStc[1]["EventType"]
	-- local nNinjaPromotion_Type = tNinjaPromotion_NewStc[1]["DataType"]
	-- Task_AddStatistic(nNinjaPromotion_Event,nNinjaPromotion_Type,3,1)
	-- Task_SetStcTimestamp(nNinjaPromotion_Event,nNinjaPromotion_Type,0)
-- end

