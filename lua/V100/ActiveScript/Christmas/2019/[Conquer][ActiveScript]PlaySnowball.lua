------------------------------------------------------------------------------------
--Name：       191118[简体征服][活动脚本]全球圣诞元旦活动-打雪仗(12.24-1.8)
--Creator:      陈莺
--Created:     2019-11-18
------------------------------------------------------------------------------------
--35062:
-- data1	记录玩家打雪仗积分
-- data2	记录玩家今日打雪仗积分次数  一天100次能加积分
-- data3	记录玩家获得奖励次数
-- data4	记录玩家本服Userid
-- data5	记录玩家是否领取过30积分奖励
--35065:
-- data5	记录任务面板
-- 排行榜
-- 575325 - 575329

-- PlaySnowball_
------------------------------------------------------------------------------------
local tPlaySnowball_Data = {}
	tPlaySnowball_Data["Metempsychosis"] = 0
	tPlaySnowball_Data["Level"] = 80
	tPlaySnowball_Data["Index"] = 25570
	tPlaySnowball_Data["Task"] = 35062
	tPlaySnowball_Data["QusetTask"] = 35065
	-- 30积分
	tPlaySnowball_Data["Data"] = 30
	--打雪仗胜利概率
	tPlaySnowball_Data["Random"] = 5000
	-- 积分次数
	tPlaySnowball_Data["DataNum"] = 100
	---加积分
	tPlaySnowball_Data["Score"] = {}
	tPlaySnowball_Data["Score"]["Success"] = 5
	tPlaySnowball_Data["Score"]["Fail"] = 3

	tPlaySnowball_Data["Itemtype"] = {}
	tPlaySnowball_Data["Itemtype"][1] = 3600198  --中文
	tPlaySnowball_Data["Itemtype"][2] = 3600199  --英文
	tPlaySnowball_Data["Itemtype"][3] = 3600201  --西语
	tPlaySnowball_Data["Itemtype"][4] = 3600200  --阿语
	
	tPlaySnowball_Data["NpcId"] = {}
	tPlaySnowball_Data["NpcId"][25570] = 25662  -- 主会场
	tPlaySnowball_Data["NpcId"][25733] = 25684 -- 分会场一
	tPlaySnowball_Data["NpcId"][25734] = 25685 -- 分会场二
	tPlaySnowball_Data["NpcId"][25735] = 25686 -- 本服
	
	tPlaySnowball_Data["ScoreNum"] = {}
	tPlaySnowball_Data["ScoreNum"][1] = {5,10}  --胜利分数
	tPlaySnowball_Data["ScoreNum"][2] = {1,3}   --失败分数
		
		
local tPlaySnowball_Map = {}
	tPlaySnowball_Map[1] = 1002
	tPlaySnowball_Map[2] = 10364
	tPlaySnowball_Map[3] = 10601 --跨国地图
	tPlaySnowball_Map[4] = 10735 --本服地图
	tPlaySnowball_Map[5] = 10736 --分会场一
	tPlaySnowball_Map[6] = 10737 --分会场二
	tPlaySnowball_Map[7] = 1036 --市场
	
local tPlaySnowball_Change = {}
-- 雪球
	tPlaySnowball_Change[1] = {}
	tPlaySnowball_Change[1]["Monster"] = 5742
	tPlaySnowball_Change[1]["Magic"] = 10641
	
local tPlaySnowball_Stc = {}
	tPlaySnowball_Stc[1] = {}
	tPlaySnowball_Stc[1]["EventType"] = 210
	tPlaySnowball_Stc[1]["DataType"] = 51
	
	
--眩晕状态数据
local tPlaySnowball_Status = {}
	tPlaySnowball_Status["Status"] = 55
	tPlaySnowball_Status["Power"] = 200
	tPlaySnowball_Status["Secs"] = 5
	tPlaySnowball_Status["Times"] = 1
	tPlaySnowball_Status["RemainTime"] = 3
	tPlaySnowball_Status["EndTime"] = 1
	tPlaySnowball_Status["Recordable"] = 0
	
local tPlaySnowball_Reward = {}
	-- ===打雪仗积分30分
	-- ===索引:tPlaySnowball_Reward[3600206]
	-- ===删除:3600206,1
	-- ===LogStep: 2
	tPlaySnowball_Reward[3600206] = {}
	tPlaySnowball_Reward[3600206]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tPlaySnowball_Reward[3600206]["DeleteItem"] = {}
	tPlaySnowball_Reward[3600206]["DeleteItem"][1] = {}
	tPlaySnowball_Reward[3600206]["DeleteItem"][1]["Id"] = 3600206 -- 【库】 3600206 【库里没有该物品】[属性:]
	tPlaySnowball_Reward[3600206]["LogId"] = 12001754
	tPlaySnowball_Reward[3600206]["LogStep"] = "3[2]"
	-- 赤炼石+4 - 30%
	tPlaySnowball_Reward[3600206][1] = {}
	tPlaySnowball_Reward[3600206][1]["RandomItemChanceType"] = 2
	tPlaySnowball_Reward[3600206][1]["ItemChance"] = 3000
	tPlaySnowball_Reward[3600206][1]["RewardItem"] = {}
	tPlaySnowball_Reward[3600206][1]["RewardItem"][1] = {}
	tPlaySnowball_Reward[3600206][1]["RewardItem"][1]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】赤炼石+4
	tPlaySnowball_Reward[3600206][1]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+4赤炼石（赠）*1
	tPlaySnowball_Reward[3600206][1]["RewardEffect"] = {}
	tPlaySnowball_Reward[3600206][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPlaySnowball_Reward[3600206][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 - 25%
	tPlaySnowball_Reward[3600206][2] = {}
	tPlaySnowball_Reward[3600206][2]["RandomItemChanceType"] = 2
	tPlaySnowball_Reward[3600206][2]["ItemChance"] = 2500
	tPlaySnowball_Reward[3600206][2]["RewardItem"] = {}
	tPlaySnowball_Reward[3600206][2]["RewardItem"][1] = {}
	tPlaySnowball_Reward[3600206][2]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tPlaySnowball_Reward[3600206][2]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的明亮星陨石*3
	tPlaySnowball_Reward[3600206][2]["RewardEffect"] = {}
	tPlaySnowball_Reward[3600206][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPlaySnowball_Reward[3600206][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 25%
	tPlaySnowball_Reward[3600206][3] = {}
	tPlaySnowball_Reward[3600206][3]["RandomItemChanceType"] = 2
	tPlaySnowball_Reward[3600206][3]["ItemChance"] = 2500
	tPlaySnowball_Reward[3600206][3]["RewardItem"] = {}
	tPlaySnowball_Reward[3600206][3]["RewardItem"][1] = {}
	tPlaySnowball_Reward[3600206][3]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tPlaySnowball_Reward[3600206][3]["RewardItem"][1]["Attr"] = "0 45 3" -- 万能神纹精粹*45
	tPlaySnowball_Reward[3600206][3]["RewardEffect"] = {}
	tPlaySnowball_Reward[3600206][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPlaySnowball_Reward[3600206][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 1500气力值 - 20%
	tPlaySnowball_Reward[3600206][4] = {}
	tPlaySnowball_Reward[3600206][4]["RandomItemChanceType"] = 2
	tPlaySnowball_Reward[3600206][4]["ItemChance"] = 2000
	tPlaySnowball_Reward[3600206][4]["RewardStrengthValue"] = {}
	tPlaySnowball_Reward[3600206][4]["RewardStrengthValue"]["Value"] = 1500 -- 气力值, 【需求】1500气力值
	tPlaySnowball_Reward[3600206][4]["RewardEffect"] = {}
	tPlaySnowball_Reward[3600206][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPlaySnowball_Reward[3600206][4]["RewardEffect"]["Effect"] = "angelwing"


	tPlaySnowball_Reward[3314607] = {}
	-- ===每一场排行第1奖励
	-- ===
	-- ===索引:tPlaySnowball_Reward[3314607]
	-- ===删除:3314607,1
	-- ===LogStep: 2
	tPlaySnowball_Reward[3314607]["LogId"] = 12001754
	tPlaySnowball_Reward[3314607]["LogStep"] = "3[2]"
	tPlaySnowball_Reward[3314607]["DeleteItem"] = {}
	tPlaySnowball_Reward[3314607]["DeleteItem"][1] = {}
	tPlaySnowball_Reward[3314607]["DeleteItem"][1]["Id"] = 3314607 -- 【库】 3314607 【库里没有该物品】[属性:]
	tPlaySnowball_Reward[3314607]["RewardItem"] = {}
	tPlaySnowball_Reward[3314607]["RewardItem"][1] = {}
	tPlaySnowball_Reward[3314607]["RewardItem"][1]["Id"] = 3319013 -- 黄色神纹随机包[3306919][属性:9][叠加:0][金币:0], 【表格】稀有黄色神纹随机包
	tPlaySnowball_Reward[3314607]["RewardItem"][1]["Attr"] = "0 1 3" -- 黄色神纹随机包*1
	tPlaySnowball_Reward[3314607]["RewardItem"][2] = {}
	tPlaySnowball_Reward[3314607]["RewardItem"][2]["Id"] = 195955 
	tPlaySnowball_Reward[3314607]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 1" 
	tPlaySnowball_Reward[3314607]["RewardItem"][3] = {}
	tPlaySnowball_Reward[3314607]["RewardItem"][3]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tPlaySnowball_Reward[3314607]["RewardItem"][3]["Attr"] = "0 1000 3" -- 万能神纹精粹*500（[错误]物品数量超100个）
	tPlaySnowball_Reward[3314607]["RewardEffect"] = {}
	tPlaySnowball_Reward[3314607]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPlaySnowball_Reward[3314607]["RewardEffect"]["Effect"] = "angelwing"


	tPlaySnowball_Reward[3314608] = {}
	-- ===每一场排行第2~3奖励
	-- ===
	-- ===索引:tPlaySnowball_Reward[3314608]
	-- ===删除:3314608,1
	-- ===LogStep: 2
	tPlaySnowball_Reward[3314608]["LogId"] = 12001754
	tPlaySnowball_Reward[3314608]["LogStep"] = "3[2]"
	tPlaySnowball_Reward[3314608]["DeleteItem"] = {}
	tPlaySnowball_Reward[3314608]["DeleteItem"][1] = {}
	tPlaySnowball_Reward[3314608]["DeleteItem"][1]["Id"] = 3314608 -- 【库】 3314608 【库里没有该物品】[属性:]
	tPlaySnowball_Reward[3314608]["RewardItem"] = {}
	tPlaySnowball_Reward[3314608]["RewardItem"][1] = {}
	tPlaySnowball_Reward[3314608]["RewardItem"][1]["Id"] = 3306919 -- 黄色神纹随机包[3306919][属性:9][叠加:0][金币:0], 【表格】黄色神纹随机包
	tPlaySnowball_Reward[3314608]["RewardItem"][1]["Attr"] = "0 2" -- 黄色神纹随机包*2
	tPlaySnowball_Reward[3314608]["RewardItem"][2] = {}
	tPlaySnowball_Reward[3314608]["RewardItem"][2]["Id"] = 195955 
	tPlaySnowball_Reward[3314608]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 1"
	tPlaySnowball_Reward[3314608]["RewardItem"][3] = {}
	tPlaySnowball_Reward[3314608]["RewardItem"][3]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tPlaySnowball_Reward[3314608]["RewardItem"][3]["Attr"] = "0 800 3" -- 万能神纹精粹*400（[错误]物品数量超100个）
	tPlaySnowball_Reward[3314608]["RewardEffect"] = {}
	tPlaySnowball_Reward[3314608]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPlaySnowball_Reward[3314608]["RewardEffect"]["Effect"] = "angelwing"


	tPlaySnowball_Reward[3314609] = {}
	-- ===每一场排行第4~6奖励
	-- ===
	-- ===索引:tPlaySnowball_Reward[3314609]
	-- ===删除:3314609,1
	-- ===LogStep: 2
	tPlaySnowball_Reward[3314609]["LogId"] = 12001754
	tPlaySnowball_Reward[3314609]["LogStep"] = "3[2]"
	tPlaySnowball_Reward[3314609]["DeleteItem"] = {}
	tPlaySnowball_Reward[3314609]["DeleteItem"][1] = {}
	tPlaySnowball_Reward[3314609]["DeleteItem"][1]["Id"] = 3314609 -- 【库】 3314609 【库里没有该物品】[属性:]
	tPlaySnowball_Reward[3314609]["RewardItem"] = {}
	tPlaySnowball_Reward[3314609]["RewardItem"][1] = {}
	tPlaySnowball_Reward[3314609]["RewardItem"][1]["Id"] = 3306919 -- 黄色神纹随机包[3306919][属性:9][叠加:0][金币:0], 【表格】黄色神纹随机包
	tPlaySnowball_Reward[3314609]["RewardItem"][1]["Attr"] = "0 1" -- 黄色神纹随机包*1
	tPlaySnowball_Reward[3314609]["RewardItem"][2] = {}
	tPlaySnowball_Reward[3314609]["RewardItem"][2]["Id"] = 3314611 --  3314611 【库里没有该物品】, 【表格】随机光效外套碎片包
	tPlaySnowball_Reward[3314609]["RewardItem"][2]["Attr"] = "0 15" --  3314611 【库里没有该物品】*2
	tPlaySnowball_Reward[3314609]["RewardItem"][3] = {}
	tPlaySnowball_Reward[3314609]["RewardItem"][3]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tPlaySnowball_Reward[3314609]["RewardItem"][3]["Attr"] = "0 600 3" -- 万能神纹精粹*300（[错误]物品数量超100个）
	tPlaySnowball_Reward[3314609]["RewardEffect"] = {}
	tPlaySnowball_Reward[3314609]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPlaySnowball_Reward[3314609]["RewardEffect"]["Effect"] = "angelwing"


	tPlaySnowball_Reward[3314610] = {}
	-- ===每一场排行第7~10奖励
	-- ===
	-- ===索引:tPlaySnowball_Reward[3314610]
	-- ===删除:3314610,1
	-- ===LogStep: 2
	tPlaySnowball_Reward[3314610]["LogId"] = 12001754
	tPlaySnowball_Reward[3314610]["LogStep"] = "3[2]"
	tPlaySnowball_Reward[3314610]["DeleteItem"] = {}
	tPlaySnowball_Reward[3314610]["DeleteItem"][1] = {}
	tPlaySnowball_Reward[3314610]["DeleteItem"][1]["Id"] = 3314610 -- 【库】 3314610 【库里没有该物品】[属性:]
	tPlaySnowball_Reward[3314610]["RewardItem"] = {}
	tPlaySnowball_Reward[3314610]["RewardItem"][1] = {}
	tPlaySnowball_Reward[3314610]["RewardItem"][1]["Id"] = 3314611 --  3314611 【库里没有该物品】, 【表格】随机光效外套碎片包
	tPlaySnowball_Reward[3314610]["RewardItem"][1]["Attr"] = "0 10" --  3314611 【库里没有该物品】*1
	tPlaySnowball_Reward[3314610]["RewardItem"][2] = {}
	tPlaySnowball_Reward[3314610]["RewardItem"][2]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tPlaySnowball_Reward[3314610]["RewardItem"][2]["Attr"] = "0 400 3" -- 万能神纹精粹*200（[错误]物品数量超100个）
	tPlaySnowball_Reward[3314610]["RewardEffect"] = {}
	tPlaySnowball_Reward[3314610]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPlaySnowball_Reward[3314610]["RewardEffect"]["Effect"] = "angelwing"


	tPlaySnowball_Reward[3314611] = {}
	-- ===随机光效外套碎片包
	-- ===
	-- ===索引:tPlaySnowball_Reward[3314611]
	-- ===删除:3314611,1
	-- ===LogStep: 2
	tPlaySnowball_Reward[3314611]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tPlaySnowball_Reward[3314611]["DeleteItem"] = {}
	tPlaySnowball_Reward[3314611]["DeleteItem"][1] = {}
	tPlaySnowball_Reward[3314611]["DeleteItem"][1]["Id"] = 3314611 -- 【库】 3314611 【库里没有该物品】[属性:]
	tPlaySnowball_Reward[3314611]["LogId"] = 12001754
	tPlaySnowball_Reward[3314611]["LogStep"] = "3[2]"
	-- 光效人物外套碎片 - 25%
	tPlaySnowball_Reward[3314611][1] = {}
	tPlaySnowball_Reward[3314611][1]["RandomItemChanceType"] = 2
	tPlaySnowball_Reward[3314611][1]["ItemChance"] = 5000
	tPlaySnowball_Reward[3314611][1]["RewardItem"] = {}
	tPlaySnowball_Reward[3314611][1]["RewardItem"][1] = {}
	tPlaySnowball_Reward[3314611][1]["RewardItem"][1]["Id"] = 3327004 --  3327004 【库里没有该物品】, 【表格】光效人物外套碎片
	tPlaySnowball_Reward[3314611][1]["RewardItem"][1]["Attr"] = "0 1" --  3327004 【库里没有该物品】*1
	tPlaySnowball_Reward[3314611][1]["RewardEffect"] = {}
	tPlaySnowball_Reward[3314611][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPlaySnowball_Reward[3314611][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 光效人物外套碎片 - 15%
	tPlaySnowball_Reward[3314611][2] = {}
	tPlaySnowball_Reward[3314611][2]["RandomItemChanceType"] = 2
	tPlaySnowball_Reward[3314611][2]["ItemChance"] = 3000
	tPlaySnowball_Reward[3314611][2]["RewardItem"] = {}
	tPlaySnowball_Reward[3314611][2]["RewardItem"][1] = {}
	tPlaySnowball_Reward[3314611][2]["RewardItem"][1]["Id"] = 3327004 --  3327004 【库里没有该物品】, 【表格】光效人物外套碎片
	tPlaySnowball_Reward[3314611][2]["RewardItem"][1]["Attr"] = "0 2" --  3327004 【库里没有该物品】*2
	tPlaySnowball_Reward[3314611][2]["RewardEffect"] = {}
	tPlaySnowball_Reward[3314611][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPlaySnowball_Reward[3314611][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 光效人物外套碎片 - 10%
	tPlaySnowball_Reward[3314611][3] = {}
	tPlaySnowball_Reward[3314611][3]["RandomItemChanceType"] = 2
	tPlaySnowball_Reward[3314611][3]["ItemChance"] = 2000
	tPlaySnowball_Reward[3314611][3]["RewardItem"] = {}
	tPlaySnowball_Reward[3314611][3]["RewardItem"][1] = {}
	tPlaySnowball_Reward[3314611][3]["RewardItem"][1]["Id"] = 3327004 --  3327004 【库里没有该物品】, 【表格】光效人物外套碎片
	tPlaySnowball_Reward[3314611][3]["RewardItem"][1]["Attr"] = "0 3" --  3327004 【库里没有该物品】*3
	tPlaySnowball_Reward[3314611][3]["RewardEffect"] = {}
	tPlaySnowball_Reward[3314611][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPlaySnowball_Reward[3314611][3]["RewardEffect"]["Effect"] = "angelwing"

	tPlaySnowball_Reward[1] = {}
	-- ===打雪仗胜利概率
	-- ===
	-- ===索引:tPlaySnowball_Reward[1]
	-- ===删除:3314611,1
	-- ===LogStep: 2
	tPlaySnowball_Reward[1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tPlaySnowball_Reward[1]["LogId"] = 12001754
	tPlaySnowball_Reward[1]["LogStep"] = "3[2]"
	-- 惊喜礼包 - 20%
	tPlaySnowball_Reward[1][1] = {}
	tPlaySnowball_Reward[1][1]["RandomItemChanceType"] = 2
	tPlaySnowball_Reward[1][1]["ItemChance"] = 2000
	tPlaySnowball_Reward[1][1]["RewardItem"] = {}
	tPlaySnowball_Reward[1][1]["RewardItem"][1] = {}
	tPlaySnowball_Reward[1][1]["RewardItem"][1]["Id"] = 3600197 --  3600197 【库里没有该物品】, 【表格】惊喜礼包
	tPlaySnowball_Reward[1][1]["RewardItem"][1]["Attr"] = "0 1" --  3600197 【库里没有该物品】*1
	tPlaySnowball_Reward[1][1]["RewardEffect"] = {}
	tPlaySnowball_Reward[1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPlaySnowball_Reward[1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 1 - 80%
	tPlaySnowball_Reward[1][2] = {}
	tPlaySnowball_Reward[1][2]["RandomItemChanceType"] = 2
	tPlaySnowball_Reward[1][2]["ItemChance"] = 8000
	tPlaySnowball_Reward[1][2]["RewardEffect"] = {}
	tPlaySnowball_Reward[1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPlaySnowball_Reward[1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 中文纪念品-- 【必给】
	tPlaySnowball_Reward[1][3] = {}
	tPlaySnowball_Reward[1][3]["RandomItemChanceType"] = 1
	tPlaySnowball_Reward[1][3]["RewardItem"] = {}
	tPlaySnowball_Reward[1][3]["RewardItem"][1] = {}
	tPlaySnowball_Reward[1][3]["RewardItem"][1]["Id"] = 3600198 --  3600198 【库里没有该物品】, 【表格】中文纪念品
	tPlaySnowball_Reward[1][3]["RewardItem"][1]["Attr"] = "0 1" --  3600198 【库里没有该物品】*1
	tPlaySnowball_Reward[1][3]["RewardEffect"] = {}
	tPlaySnowball_Reward[1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPlaySnowball_Reward[1][3]["RewardEffect"]["Effect"] = "angelwing"

-- 获得30积分礼包
	tPlaySnowball_Reward[2] = {}
	tPlaySnowball_Reward[2]["LogId"] = 12001754
	tPlaySnowball_Reward[2]["LogStep"] = " 3[1]"
	tPlaySnowball_Reward[2]["RewardItem"] = {}
	tPlaySnowball_Reward[2]["RewardItem"][1] = {}
	tPlaySnowball_Reward[2]["RewardItem"][1]["Id"] = 3600206 
	tPlaySnowball_Reward[2]["RewardItem"][1]["Attr"] = "0 1"
	tPlaySnowball_Reward[2]["RewardEffect"] = {}
	tPlaySnowball_Reward[2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPlaySnowball_Reward[2]["RewardEffect"]["Effect"] = "angelwing"

	
	
----------------------------------逻辑部分---------------------------------------------
---排行榜文字
function PlaySnowball_Text()
	local nPlaySnowball_Index = 313
	local tPlaySnowball_RankData = RankingFunc_CrossGetNowData(tPlaySnowball_Data["Index"])
	local sPlaySnowball_Name = ""
	local sPlaySnowball_Score = ""
	local sPlaySnowball_ServerName = ""
	local nPlaySnowball_UserId = Get_UserId()
	local nPlaySnowball_UserCountry = User_ChkLanguage(nPlaySnowball_UserId)
	for i = 1, 10 do
		if  tPlaySnowball_RankData[i] ~= nil and tonumber(tPlaySnowball_RankData[i]["UserId"]) > 0 and tPlaySnowball_RankData[i]["Score"] > 0 then
			sPlaySnowball_Score = tostring(tPlaySnowball_RankData[i]["Score"])
			sPlaySnowball_Name = tPlaySnowball_RankData[i]["UserName"]
			sPlaySnowball_ServerName = tPlaySnowball_RankData[i]["ServerName"]
		else
			sPlaySnowball_Score = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Msg"]["Flag"]
			sPlaySnowball_Name = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Msg"]["Flag"]
			sPlaySnowball_ServerName = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Msg"]["Flag"]
		end
		
		tNpcGossip[25570]["Text" .. nPlaySnowball_Index + i] = string.format(tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Text" .. nPlaySnowball_Index + i],(Sys_Alignment(tostring(sPlaySnowball_Score),9,Sys_StringGSubTip(tostring(sPlaySnowball_Name)),23,tostring(sPlaySnowball_ServerName),40))) .. "\n"
	end

	local nPlaySnowball_TaskId = tPlaySnowball_Data["Task"]
	local nPlaySnowball_Value = Get_TaskDetailData1(nPlaySnowball_TaskId,nPlaySnowball_UserId)
	local sPlaySnowball_Text = string.format(tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Text326"],nPlaySnowball_Value)
	for i = 1,10 do
		if tPlaySnowball_RankData[i] ~= nil and tonumber(tPlaySnowball_RankData[i]["UserId"]) == nPlaySnowball_UserId then
			sPlaySnowball_Text = string.format(tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Text324"],nPlaySnowball_Value,i)
		end
	end
	tNpcGossip[25570]["Text324"] = sPlaySnowball_Text
end


function PlaySnowball_JubMap(nPlaySnowball_UserId)
	local nPlaySnowball_UserMap = Get_UserMapId(nPlaySnowball_UserId)
	for a,b in pairs(tPlaySnowball_Map) do
		if nPlaySnowball_UserMap == b then
			return true
		end
	end
	return false
end
----接雪球or拒绝
function PlaySnowball_Choose(nPlaySnowball_UserId,nPlaySnowball_Target,nMainType,nSubType)
	--判断活动时间
	if not Sys_ChkFullTime(tActivityTime["GlobalChristmas"]["PlaySnowBallTime"])  then
		return
	end
	local nPlaySnowball_UserCountry = User_ChkLanguage(nPlaySnowball_UserId)
	if not User_JudgeLevelAndMetempsychosis(tPlaySnowball_Data["Level"],tPlaySnowball_Data["Metempsychosis"],nPlaySnowball_UserId) then
		Sys_MsgBox(tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["NoLevel"],nil,nil,nPlaySnowball_UserId)
		return
	end
	if not User_JudgeLevelAndMetempsychosis(tPlaySnowball_Data["Level"],tPlaySnowball_Data["Metempsychosis"],nPlaySnowball_Target) then
		Sys_MsgBox(tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["NoLevel"],nil,nil,nPlaySnowball_Target)
		return
	end
	--判断地图
	if not PlaySnowball_JubMap(nPlaySnowball_Target) then
		return
	end
	--判断地图
	if not PlaySnowball_JubMap(nPlaySnowball_UserId) then
		return
	end
	local nPlaySnowball_MapId = Get_UserMapId(nPlaySnowball_Target)
	if nPlaySnowball_MapId == tPlaySnowball_Map[1] or nPlaySnowball_MapId == tPlaySnowball_Map[2] or nPlaySnowball_MapId == tPlaySnowball_Map[7] then
		PlaySnowball_Goto(nPlaySnowball_UserId)
		PlaySnowball_Goto(nPlaySnowball_Target)
	end

	-- local sUserName = Get_UserName(nTarget)
	-- local sText = string.format(tPlaySnowball_Text[25570]["Msg"]["Invite"],sUserName)
	-- Sys_MsgBox(sText,nil,nil,nUserId)
	--接雪球
	-- if nSubType == 1 then
		-- PlaySnowball_SnowBall(nUserId,nTarget)
	-- end
	
	--拒绝
	-- if nSubType == 2 then
		-- PlaySnowball_Avoid(nUserId,nTarget)
	-- end
		--隔天判断
	-- local nPlaySnowball_TaskId = tPlaySnowball_Data["Task"]
	-- if PlaySnowball_JubTime(nPlaySnowball_UserId) then
		-- Task_SetTaskDetailData1(nPlaySnowball_TaskId,0,nPlaySnowball_UserId) 
		-- Task_SetTaskDetailData2(nPlaySnowball_TaskId,0,nPlaySnowball_UserId) 
		-- Task_SetTaskDetailData3(nPlaySnowball_TaskId,0,nPlaySnowball_UserId) 
		-- Task_SetTaskDetailData5(nPlaySnowball_TaskId,0,nPlaySnowball_UserId) 

		-- Task_SetTaskDetailData1(nPlaySnowball_TaskId,0,nPlaySnowball_Target) 
		-- Task_SetTaskDetailData2(nPlaySnowball_TaskId,0,nPlaySnowball_Target) 
		-- Task_SetTaskDetailData3(nPlaySnowball_TaskId,0,nPlaySnowball_Target) 
		-- Task_SetTaskDetailData5(nPlaySnowball_TaskId,0,nPlaySnowball_Target) 
	-- end

	PlaySnowball_SnowBall(nPlaySnowball_UserId,nPlaySnowball_Target)
end
-- 接雪球
function PlaySnowball_SnowBall(nPlaySnowball_UserId,nPlaySnowball_Target)
	local sPlaySnowball_UserName = Get_UserName(nPlaySnowball_UserId)
	local nPlaySnowball_UserCountry = User_ChkLanguage(nPlaySnowball_UserId)
	-- 胜利获得奖励
	if Sys_Random(tPlaySnowball_Data["Random"],10000) then
		----加积分
		PlaySnowball_AddSnowBall(nPlaySnowball_UserId,nPlaySnowball_Target)
		local bPlaySnowballIndex,sPlaySnowball_Str = PlaySnowball_RewardSnowBall(nPlaySnowball_UserId)
		if not bPlaySnowballIndex then
			return
		end

		local sPlaySnowball_Conet = string.format(tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Msg"]["GetSnowBall"],sPlaySnowball_UserName,sPlaySnowball_Str)
		Sys_MsgBox(sPlaySnowball_Conet,nil,nil,nPlaySnowball_UserId)
		return 
	end
	---没有接住
	--变身雪人
	local nPlaySnowball_MonId = tPlaySnowball_Change[1]["Monster"]
	local nPlaySnowball_Magic = tPlaySnowball_Change[1]["Magic"]
	if Get_UserTransformId(nPlaySnowball_UserId) >= 0 then
		User_SetTransform(nPlaySnowball_UserId)
	end
	User_TransForm(nPlaySnowball_Magic,0,nPlaySnowball_MonId,300,nPlaySnowball_UserId)
	
--眩晕
	local nPlaySnowball_Status = tPlaySnowball_Status["Status"]
	local nPlaySnowball_Power =  tPlaySnowball_Status["Power"]
	local nPlaySnowball_Secs = tPlaySnowball_Status["Secs"]
	local nPlaySnowball_Times = tPlaySnowball_Status["Times"]
	local nPlaySnowball_RemainTime = tPlaySnowball_Status["RemainTime"]
	local nPlaySnowball_EndTime = tPlaySnowball_Status["EndTime"]
	local nPlaySnowball_Recordable = tPlaySnowball_Status["Recordable"]
	User_AddRoleStatus(nPlaySnowball_Status,nPlaySnowball_Power,nPlaySnowball_Secs,nPlaySnowball_Times,nPlaySnowball_RemainTime,nPlaySnowball_EndTime,nPlaySnowball_Recordable,0,0,nPlaySnowball_UserId)

	local sPlaySnowball_Str = string.format(tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Msg"]["NotGetSnowBall"],sPlaySnowball_UserName)
	Sys_MsgBox(sPlaySnowball_Str,nil,nil,nPlaySnowball_UserId)
	----加积分
	PlaySnowball_AddSnowBall(nPlaySnowball_Target,nPlaySnowball_UserId)
	
	local bPlaySnowballIndex,sPlaySnowball_Text = PlaySnowball_RewardSnowBall(nPlaySnowball_Target)
end

---获得奖励
function PlaySnowball_RewardSnowBall(nPlaySnowball_UserId)
	--掩码加1
	local nPlaySnowball_TaskId = tPlaySnowball_Data["Task"]
	local nPlaySnowball_Data = Get_TaskDetailData3(nPlaySnowball_TaskId,nPlaySnowball_UserId)

	local nPlaySnowball_UserCountry = User_ChkLanguage(nPlaySnowball_UserId)
	if nPlaySnowball_Data >= 10 then
		Sys_MsgBox(tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Msg"]["GetToo"],nil,nil,nPlaySnowball_UserId)
		return false
	end
	--背包空间判断
	if not RewardTemplate_ChkRandomSpace(tPlaySnowball_Reward,1,nPlaySnowball_UserId) then
		return false
	end
	if Task_SetTaskDetailData3(nPlaySnowball_TaskId,nPlaySnowball_Data + 1,nPlaySnowball_UserId) then
		--判断玩家是那个国家
		-- local nPlaySnowball_UserCountry = User_ChkLanguage(nPlaySnowball_UserId)
		local tPlaySnowball_Tab = CommonFunc_Copy(tPlaySnowball_Reward)
		local nPlaySnowball_AddItem = tPlaySnowball_Data["Itemtype"][nPlaySnowball_UserCountry]
		tPlaySnowball_Tab[1][3]["RewardItem"][1]["Id"] = nPlaySnowball_AddItem
		local tReward,sRewardStr = RewardTemplate_RandomReward(tPlaySnowball_Tab,1,nPlaySnowball_UserId)
		local sPlaySnowball_Str = ""
		if tReward[1]["tAward"][1]["RewardItem"] ~= nil then
			local nPlaySnowball_Item = tReward[1]["tAward"][1]["RewardItem"][1]["Id"]
			sPlaySnowball_Str = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Msg"]["Index"] .. Get_ItemtypeName(nPlaySnowball_Item)
		end
		return true,sPlaySnowball_Str
	end
	return false
end
	-- nUserId1 + 5分  nUserId2 + 3分
function PlaySnowball_AddSnowBall(nUserId1,nUserId2)
--任务面板
	local nPlaySnowball_QusetTask = tPlaySnowball_Data["QusetTask"]
	Task_SetTaskDetailData5(nPlaySnowball_QusetTask,1,nUserId1) 
	Task_SetTaskDetailData5(nPlaySnowball_QusetTask,1,nUserId2) 
	local nPlaySnowball_UserMap = Get_UserMapId(nUserId1)
	if nPlaySnowball_UserMap ~= tPlaySnowball_Map[3] then
		return
	end
	local nPlaySnowball_TaskId = tPlaySnowball_Data["Task"]
	local nPlaySnowball_DataW = Get_TaskDetailData2(nPlaySnowball_TaskId,nUserId1)
	local nPlaySnowball_DataD = Get_TaskDetailData2(nPlaySnowball_TaskId,nUserId2)
	--给成功加5积分
	PlaySnowball_AddSnowBallSCore(nPlaySnowball_DataW,1,nUserId1)
	--给失败加3积分
	PlaySnowball_AddSnowBallSCore(nPlaySnowball_DataD,2,nUserId2)

	-- 更新排行榜
	local nPlaySnowball_OldUserId1 =  Get_TaskDetailData4(nPlaySnowball_TaskId,nUserId1)
	local nPlaySnowball_OldUserId2 =  Get_TaskDetailData4(nPlaySnowball_TaskId,nUserId2)
	local nPlaySnowball_ServerId1 =Get_UserServerId(nUserId1)
	local nPlaySnowball_ServerId2 = Get_UserServerId(nUserId2)
	local sPlaySnowball_ServerName1 = Get_SysServerName(nPlaySnowball_ServerId1)
	local sPlaySnowball_ServerName2 = Get_SysServerName(nPlaySnowball_ServerId2)
	local nPlaySnowball_TrueGrade1 = Get_TaskDetailData1(nPlaySnowball_TaskId,nUserId1)
	local nPlaySnowball_TrueGrade2 = Get_TaskDetailData1(nPlaySnowball_TaskId,nUserId2)
	
	local sPlaySnowball_UserName1 = Get_UserName(nUserId1)
	local sPlaySnowball_UserName2 = Get_UserName(nUserId2)
	RankingFunc_CrossSetInfo(tPlaySnowball_Data["Index"],nPlaySnowball_TrueGrade1,nPlaySnowball_OldUserId1,sPlaySnowball_UserName1,nPlaySnowball_ServerId1,sPlaySnowball_ServerName1,nUserId1)
	RankingFunc_CrossSetInfo(tPlaySnowball_Data["Index"],nPlaySnowball_TrueGrade2,nPlaySnowball_OldUserId2,sPlaySnowball_UserName2,nPlaySnowball_ServerId2,sPlaySnowball_ServerName2,nUserId2)
end

---加积分
function PlaySnowball_AddSnowBallSCore(nPlaySnowball_Data,PlaySnowballNum,nPlaySnowballUserId)
	-- 判断是否100次
	local nPlaySnowball_TaskId = tPlaySnowball_Data["Task"]
	local nPlaySnowball_Score = math.random(tPlaySnowball_Data["ScoreNum"][PlaySnowballNum][1],tPlaySnowball_Data["ScoreNum"][PlaySnowballNum][2])
	if nPlaySnowball_Data < tPlaySnowball_Data["DataNum"] then
		local nPlaySnowball_TargetData1 = Get_TaskDetailData1(nPlaySnowball_TaskId,nPlaySnowballUserId)
		Task_SetTaskDetailData1(nPlaySnowball_TaskId,nPlaySnowball_TargetData1 + nPlaySnowball_Score,nPlaySnowballUserId) 
		local nPlaySnowball_TargetData2 = Get_TaskDetailData5(nPlaySnowball_TaskId,nPlaySnowballUserId)
		Task_SetTaskDetailData5(nPlaySnowball_TaskId,nPlaySnowball_TargetData2 + nPlaySnowball_Score,nPlaySnowballUserId) 
		Task_SetTaskDetailData2(nPlaySnowball_TaskId,nPlaySnowball_Data+1,nPlaySnowballUserId) 
		PlaySnowball_JubGetItem(nPlaySnowballUserId)
		GuidePlayers_TaskComplete(nPlaySnowballUserId) --打完成标志 
	end
end

---积分到30分
function PlaySnowball_JubGetItem(nPlaySnowball_UserId)
	--判断活动时间
	if not Sys_ChkFullTime(tActivityTime["GlobalChristmas"]["PlaySnowBallTime"]) then
		return
	end
	local nPlaySnowball_TaskId = tPlaySnowball_Data["Task"]

	-- local nPlaySnowball_Score = Get_TaskDetailData1(nPlaySnowball_TaskId,nPlaySnowball_UserId)
	local nPlaySnowball_Data = Get_TaskDetailData5(nPlaySnowball_TaskId,nPlaySnowball_UserId)

	--判断是否领取过
	if nPlaySnowball_Data >= 100 then
		return
	end
	--是否30积分了
	if nPlaySnowball_Data < tPlaySnowball_Data["Data"] then
		return
	end
	--判断背包空间
	if not RewardTemplate_CheckSpace(tPlaySnowball_Reward[2],nPlaySnowball_UserId) then
		return
	end
	--满足条件 获得物品
	if Task_SetTaskDetailData5(nPlaySnowball_TaskId,100,nPlaySnowball_UserId) then
		RewardTemplate_UseItemAndMsg(tPlaySnowball_Reward[2],nPlaySnowball_UserId)
	end
end

---清掩码
function PlaySnowball_SetData(nUserId)
	local nPlaySnowball_NowUserId = nUserId or Get_UserId()
	local nPlaySnowball_TaskId = tPlaySnowball_Data["Task"]
	local nPlaySnowball_Event = tPlaySnowball_Stc[1]["EventType"]
	local nPlaySnowball_Type = tPlaySnowball_Stc[1]["DataType"]

	if Task_StcInterval(nPlaySnowball_Event,nPlaySnowball_Type,1,4,nPlaySnowball_NowUserId) then
		Task_SetStatistic(nPlaySnowball_Event,nPlaySnowball_Type,0,1,nPlaySnowball_NowUserId)
		Task_SetStcTimestamp(nPlaySnowball_Event,nPlaySnowball_Type,0,nPlaySnowball_NowUserId)
		-- Task_SetTaskDetailData1(nPlaySnowball_TaskId,0,nPlaySnowball_NowUserId) 
		Task_SetTaskDetailData2(nPlaySnowball_TaskId,0,nPlaySnowball_NowUserId) 
		Task_SetTaskDetailData3(nPlaySnowball_TaskId,0,nPlaySnowball_NowUserId) 
		Task_SetTaskDetailData5(nPlaySnowball_TaskId,0,nPlaySnowball_NowUserId) 
	end
end

--进跨服
function PlaySnowball_Goto(nNowUserId)
	local nPlaySnowball_UserId = nNowUserId or Get_UserId()
	local nPlaySnowball_TaskId = tPlaySnowball_Data["Task"]
	if not Task_ChkTaskDetail(nPlaySnowball_TaskId,nPlaySnowball_UserId) then
		if not Task_AddTaskDetail(nPlaySnowball_TaskId,0,nPlaySnowball_UserId) then
			return 
		end
	end
	--清零
	PlaySnowball_SetData(nPlaySnowball_UserId)
	--打时间戳
	local nPlaySnowball_Event = tPlaySnowball_Stc[1]["EventType"]
	local nPlaySnowball_Type = tPlaySnowball_Stc[1]["DataType"]
	Task_SetStatistic(nPlaySnowball_Event,nPlaySnowball_Type,1,1,nPlaySnowball_UserId)
	Task_SetStcTimestamp(nPlaySnowball_Event,nPlaySnowball_Type,0,nPlaySnowball_UserId)
	--记录玩家本服userid
	Task_SetTaskDetailData4(nPlaySnowball_TaskId,nPlaySnowball_UserId,nPlaySnowball_UserId)
end

----清动态码
function PlaySnowball_Clear()
	for i = 53925,53929 do
		Sys_ResetAllSynaGlobalData(i)
		Sys_ResetAllSynaGlobalDataStr(i)
	end
	--手动清跨服表
	RankingFunc_CrossClearingData(tPlaySnowball_Data["Index"])
end

---跨服判断隔天
function PlaySnowball_JubTime(nPlaySnowball_UserId)
	local nPlaySnowball_Time =  tonumber(os.time())
	local nPlaySnowball_NowM = tonumber(os.date("%m",nPlaySnowball_Time))
	local nPlaySnowball_NowD =  tonumber(os.date("%d",nPlaySnowball_Time))
	local nPlaySnowball_NowY =  tonumber(os.date("%Y",nPlaySnowball_Time))
	local nPlaySnowball_TaskId = tPlaySnowball_Data["Task"]
	local nPlaySnowball_TimeData = Get_TaskDetailData2(nPlaySnowball_TaskId,nPlaySnowball_UserId)
	local nPlaySnowball_OldM =  tonumber(os.date("%m",nPlaySnowball_TimeData))
	local nPlaySnowball_OldD =  tonumber(os.date("%d",nPlaySnowball_TimeData))
	local nPlaySnowball_OldY =  tonumber(os.date("%Y",nPlaySnowball_TimeData))
	if nPlaySnowball_NowY > nPlaySnowball_OldY then
		return true
	end
	if nPlaySnowball_NowM > nPlaySnowball_OldM then
		return true
	end
	if nPlaySnowball_NowD > nPlaySnowball_OldD then
		return true
	end
	return false
end

function PlaySnowball_LinkRank(nNpcId)
	local nPlaySnowball_UserId = Get_UserId()
	local nPlaySnowball_UserCountry = User_ChkLanguage(nPlaySnowball_UserId)
	if nNpcId == 25735 then
		Sys_MsgBox(tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Msg"]["No"],nil,nil,nPlaySnowball_UserId)
		return
	end
	LinkNpcGossipFunc_New(nNpcId,"3-1")
end

function PlaySnowball_LinkNpc(nNpcId)
	local nPlaySnowball_UserId = Get_UserId()
	local nPlaySnowball_UserCountry = User_ChkLanguage(nPlaySnowball_UserId)
	tNpcGossip[25570]["DialogueText"] = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]
	if CommonFunc_GetBeforeActivityTime(tActivityTime["GlobalChristmas"]["PlaySnowBallTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	if not Sys_ChkFullTime(tActivityTime["GlobalChristmas"]["PlaySnowBallTime"])  then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	if not User_JudgeLevelAndMetempsychosis(tPlaySnowball_Data["Level"],tPlaySnowball_Data["Metempsychosis"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	LinkNpcGossipFunc_New(nNpcId,"1-4")
	-- LinkNpcMain()
end
----------------------------------NPC部分---------------------------------------------
tNpcFace[5192] = 2677
tNpcGossip[25570]= tNpcGossip[25570] or DefaultNpc:new{}
tNpcGossip[25570]["OptionHidden"] = 1
tNpcGossip[25570]["DialogueText"] = tPlaySnowball_Text[25570]
-- 活动前
tNpcGossip[25570]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[25570]["tOption1-1"] = {111}
tNpcGossip[25570]["ChkFunc1-1"]= function()
	local nPlaySnowball_UserId = Get_UserId()
	local nPlaySnowball_UserCountry = User_ChkLanguage(nPlaySnowball_UserId)
	tNpcGossip[25570]["Text111"] = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Text111"]
	tNpcGossip[25570]["Text112"] = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Text112"]
	tNpcGossip[25570]["Text113"] = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Text113"]
	tNpcGossip[25570]["Text114"] = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Text114"]
	tNpcGossip[25570]["Text115"] = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Text115"]
	tNpcGossip[25570]["Option111"] = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Option111"]
	return CommonFunc_GetBeforeActivityTime(tActivityTime["GlobalChristmas"]["ActivityTime"])
end
-- 活动后
tNpcGossip[25570]["Text1-2"] = {121,122}
tNpcGossip[25570]["tOption1-2"] = {121}
tNpcGossip[25570]["ChkFunc1-2"]= function()
	local nPlaySnowball_UserId = Get_UserId()
	local nPlaySnowball_UserCountry = User_ChkLanguage(nPlaySnowball_UserId)
	tNpcGossip[25570]["Text121"] = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Text121"]
	tNpcGossip[25570]["Text122"] = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Text122"]

	tNpcGossip[25570]["Option121"] = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Option121"]
	return not Sys_ChkFullTime(tActivityTime["GlobalChristmas"]["ActivityTime"]) 
end

-- 等级不足
tNpcGossip[25570]["Text1-3"] = {131,132,133,134,135,136}
tNpcGossip[25570]["tOption1-3"] = {131}
tNpcGossip[25570]["ChkFunc1-3"]= function()
	local nPlaySnowball_UserId = Get_UserId()
	local nPlaySnowball_UserCountry = User_ChkLanguage(nPlaySnowball_UserId)
	tNpcGossip[25570]["Text131"] = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Text131"]
	tNpcGossip[25570]["Text132"] = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Text132"]
	tNpcGossip[25570]["Text133"] = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Text133"]
	tNpcGossip[25570]["Text134"] = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Text134"]
	tNpcGossip[25570]["Text135"] = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Text135"]
	tNpcGossip[25570]["Text136"] = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Text136"]
	tNpcGossip[25570]["Option131"] = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Option131"]
	return not User_JudgeLevelAndMetempsychosis(tPlaySnowball_Data["Level"],tPlaySnowball_Data["Metempsychosis"])
end
-- 等级达到、第一次对白
tNpcGossip[25570]["Text1-4"] = {141,142,143,145,146,147,148,149,150,144}
tNpcGossip[25570]["tOption1-4"] = {142,143}
tNpcGossip[25570]["OptionPoint142"] = "3-1"  
tNpcGossip[25570]["OptionFunc143"] = "NpcPosition_PathFind</N>25662"  
tNpcGossip[25570]["ChkFunc1-4"]= function()
	local nPlaySnowball_NpcId = Get_NpcId()
	
	local nPlaySnowball_GotoNpcId = tPlaySnowball_Data["NpcId"][nPlaySnowball_NpcId]
	tNpcGossip[25570]["OptionFunc143"] = "NpcPosition_PathFind</N>" .. nPlaySnowball_GotoNpcId
	local nPlaySnowball_UserId = Get_UserId()
	local nPlaySnowball_UserCountry = User_ChkLanguage(nPlaySnowball_UserId)
	tNpcGossip[25570]["Text141"] = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Text141"]
	tNpcGossip[25570]["Text142"] = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Text142"]
	tNpcGossip[25570]["Text143"] = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Text143"]
	tNpcGossip[25570]["Text145"] = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Text145"]
	tNpcGossip[25570]["Text146"] = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Text146"]
	tNpcGossip[25570]["Text147"] = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Text147"]
	tNpcGossip[25570]["Text148"] = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Text148"]
	tNpcGossip[25570]["Text149"] = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Text149"]
	tNpcGossip[25570]["Text150"] = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Text150"]
	tNpcGossip[25570]["Option142"] = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Option142"]
	tNpcGossip[25570]["Option143"] = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Option143"]

	local nPlaySnowball_TaskId = tPlaySnowball_Data["Task"]
	local nPlaySnowball_Value = Get_TaskDetailData1(nPlaySnowball_TaskId,nPlaySnowball_UserId)
	local sPlaySnowball_Str = string.format(tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Text144"],nPlaySnowball_Value)
	tNpcGossip[25570]["Text144"] = sPlaySnowball_Str
	tNpcGossip[25570]["OptionPoint142"] = "3-1"  
	if nPlaySnowball_NpcId == 25735 then
		tNpcGossip[25570]["OptionPoint142"] = "4-1"  
	end
	return Sys_ChkFullTime(tActivityTime["GlobalChristmas"]["ActivityTime"]) 
end
-- 接1、接受“冰雪狂欢”任务
tNpcGossip[25570]["Text2-1"] = {211}
tNpcGossip[25570]["tOption2-1"] = {211}
-- 接3、雪仗积分排行榜
tNpcGossip[25570]["Text3-1"] = {311,312,313,314,315,316,317,318,319,320,321,322,323,312,324,325}
tNpcGossip[25570]["tOption3-1"] = {311,312}
tNpcGossip[25570]["OptionPoint311"] = "3-3" 
tNpcGossip[25570]["ChkFunc3-1"]= function()
	local nPlaySnowball_UserId = Get_UserId()
	local nPlaySnowball_UserCountry = User_ChkLanguage(nPlaySnowball_UserId)
	tNpcGossip[25570]["Text311"] = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Text311"]
	tNpcGossip[25570]["Text312"] = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Text312"]
	tNpcGossip[25570]["Text313"] = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Text313"]
	tNpcGossip[25570]["Text314"] = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Text314"]
	tNpcGossip[25570]["Text315"] = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Text315"]
	tNpcGossip[25570]["Text316"] = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Text316"]
	tNpcGossip[25570]["Text317"] = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Text317"]
	tNpcGossip[25570]["Text318"] = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Text318"]
	tNpcGossip[25570]["Text319"] = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Text319"]
	tNpcGossip[25570]["Text320"] = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Text320"]
	tNpcGossip[25570]["Text321"] = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Text321"]
	tNpcGossip[25570]["Text322"] = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Text322"]
	tNpcGossip[25570]["Text323"] = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Text323"]
	tNpcGossip[25570]["Text324"] = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Text324"]
	tNpcGossip[25570]["Text325"] = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Text325"]
	tNpcGossip[25570]["Option311"] = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Option311"]
	tNpcGossip[25570]["Option312"] = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Option312"]

	PlaySnowball_Text()
	return true
end
-- 接上、排行榜奖励一览
tNpcGossip[25570]["Text3-3"] = {331,332,333,334,335,336,337,338}
tNpcGossip[25570]["tOption3-3"] = {331}
tNpcGossip[25570]["ChkFunc3-3"]= function()
	local nPlaySnowball_UserId = Get_UserId()
	local nPlaySnowball_UserCountry = User_ChkLanguage(nPlaySnowball_UserId)
	tNpcGossip[25570]["Text331"] = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Text331"]
	tNpcGossip[25570]["Text332"] = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Text332"]
	tNpcGossip[25570]["Text333"] = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Text333"]
	tNpcGossip[25570]["Text334"] = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Text334"]
	tNpcGossip[25570]["Text335"] = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Text335"]
	tNpcGossip[25570]["Text336"] = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Text336"]
	tNpcGossip[25570]["Text337"] = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Text337"]
	tNpcGossip[25570]["Text338"] = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Text338"]
	tNpcGossip[25570]["Option331"] = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Option331"]


	return true
end

tNpcGossip[25570]["Text4-1"] = {411}
tNpcGossip[25570]["tOption4-1"] = {411}
tNpcGossip[25570]["OptionFunc411"] = "GuidePlayers_EnterMap</N>1"
tNpcGossip[25570]["ChkFunc4-1"]= function()
	local nPlaySnowball_UserId = Get_UserId()
	local nPlaySnowball_UserCountry = User_ChkLanguage(nPlaySnowball_UserId)
	tNpcGossip[25570]["Text411"] = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Text411"]
	tNpcGossip[25570]["Option411"] = tPlaySnowball_Text[25570][nPlaySnowball_UserCountry]["Option411"]
	return true
end

tNpcGossip[25733]= tNpcGossip[25570] or DefaultNpc:new{}
tNpcGossip[25734]= tNpcGossip[25570] or DefaultNpc:new{}
tNpcGossip[25735]= tNpcGossip[25570] or DefaultNpc:new{}
----------------------------------------物品模板---------------------------------------------------
tItem[3600206] = tItem[3600206] or {}
tItem[3600206]["Function"] = function(nItemId,sItemName)
	if not Item_ChkItem(nItemId) then
		return
	end 
	-- 背包空间判断
	if not RewardTemplate_ChkRandomSpace(tPlaySnowball_Reward,3600206) then
		return
	end
	RewardTemplate_RandomReward(tPlaySnowball_Reward,3600206)
end

tItem[3314607] = tItem[3314607] or {}
tItem[3314607]["Function"] = function(nItemId,sItemName)
	if not Item_ChkItem(nItemId) then
		return
	end 
	-- 背包空间判断
	if not RewardTemplate_CheckSpace(tPlaySnowball_Reward[nItemId]) then
		return
	end
	RewardTemplate_UseItemAndMsg(tPlaySnowball_Reward[nItemId])
end
tItem[3314608] = tItem[3314607] or {}
tItem[3314609] = tItem[3314607] or {}
tItem[3314610] = tItem[3314607] or {}


tItem[3314611] = tItem[3314611] or {}
tItem[3314611]["Function"] = function(nItemId,sItemName)
	if not Item_ChkItem(nItemId) then
		return
	end 
	-- 背包空间判断
	if not RewardTemplate_ChkRandomSpace(tPlaySnowball_Reward,3314611) then
		return
	end
	RewardTemplate_RandomReward(tPlaySnowball_Reward,3314611)
end
----------------------------------------排行榜---------------------------------------------------
tRankingFunc_CrossInfo[25570] = {}
tRankingFunc_CrossInfo[25570]["Reset"] = 1
tRankingFunc_CrossInfo[25570]["ActiveTime"] = tActivityTime["GlobalChristmas"]["PlaySnowBallTime"]
tRankingFunc_CrossInfo[25570]["DayTime"] = {}
tRankingFunc_CrossInfo[25570]["DayTime"][1] = "00:00 23:59"
tRankingFunc_CrossInfo[25570]["Global"] = {53925,53926,53927,53928,53929}
tRankingFunc_CrossInfo[25570]["RankMode"] = 1
tRankingFunc_CrossInfo[25570]["RankNum"] = 10
tRankingFunc_CrossInfo[25570]["Mail"] = {}
tRankingFunc_CrossInfo[25570]["Mail"]["ActiveTime"] = tActivityTime["GlobalChristmas"]["RankTime"]
tRankingFunc_CrossInfo[25570]["Mail"]["RewardTime"] = {}
tRankingFunc_CrossInfo[25570]["Mail"]["RewardTime"][1] =  "00:00 00:01"
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"] = {}
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][1] = {}
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][1]["RewardRank"] = 1
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][1]["ActionId"] = 575325
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][1]["ExistDay"] = 7
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][1]["Title"] =tPlaySnowball_Text[25570][2]["Mail"][1]["Sender"]
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][1]["Sender"] = tPlaySnowball_Text[25570][2]["Mail"][1]["Title"]
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][1]["Content"] = tPlaySnowball_Text[25570][2]["Mail"][1]["Conent"]

tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][2] = {}
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][2]["RewardRank"] = 2
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][2]["ActionId"] = 575326
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][2]["ExistDay"] = 7
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][2]["Title"] =tPlaySnowball_Text[25570][2]["Mail"][1]["Sender"]
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][2]["Sender"] = tPlaySnowball_Text[25570][2]["Mail"][1]["Title"]
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][2]["Content"] = tPlaySnowball_Text[25570][2]["Mail"][1]["Conent"]

tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][3] = {}
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][3]["RewardRank"] = 3
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][3]["ActionId"] = 575326
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][3]["ExistDay"] = 7
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][3]["Title"] =tPlaySnowball_Text[25570][2]["Mail"][1]["Sender"]
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][3]["Sender"] = tPlaySnowball_Text[25570][2]["Mail"][1]["Title"]
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][3]["Content"] = tPlaySnowball_Text[25570][2]["Mail"][1]["Conent"]

tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][4] = {}
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][4]["RewardRank"] = 4
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][4]["ActionId"] = 575327
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][4]["ExistDay"] = 7
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][4]["Title"] =tPlaySnowball_Text[25570][2]["Mail"][1]["Sender"]
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][4]["Sender"] = tPlaySnowball_Text[25570][2]["Mail"][1]["Title"]
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][4]["Content"] = tPlaySnowball_Text[25570][2]["Mail"][1]["Conent"]

tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][5] = {}
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][5]["RewardRank"] = 5
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][5]["ActionId"] = 575327
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][5]["ExistDay"] = 7
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][5]["Title"] =tPlaySnowball_Text[25570][2]["Mail"][1]["Sender"]
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][5]["Sender"] = tPlaySnowball_Text[25570][2]["Mail"][1]["Title"]
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][5]["Content"] = tPlaySnowball_Text[25570][2]["Mail"][1]["Conent"]

tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][6] = {}
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][6]["RewardRank"] = 6
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][6]["ActionId"] = 575327
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][6]["ExistDay"] = 7
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][6]["Title"] =tPlaySnowball_Text[25570][2]["Mail"][1]["Sender"]
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][6]["Sender"] = tPlaySnowball_Text[25570][2]["Mail"][1]["Title"]
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][6]["Content"] = tPlaySnowball_Text[25570][2]["Mail"][1]["Conent"]

tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][7] = {}
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][7]["RewardRank"] = 7
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][7]["ActionId"] = 575328
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][7]["ExistDay"] = 7
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][7]["Title"] =tPlaySnowball_Text[25570][2]["Mail"][1]["Sender"]
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][7]["Sender"] = tPlaySnowball_Text[25570][2]["Mail"][1]["Title"]
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][7]["Content"] = tPlaySnowball_Text[25570][2]["Mail"][1]["Conent"]

tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][8] = {}
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][8]["RewardRank"] = 8
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][8]["ActionId"] = 575328
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][8]["ExistDay"] = 7
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][8]["Title"] =tPlaySnowball_Text[25570][2]["Mail"][1]["Sender"]
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][8]["Sender"] = tPlaySnowball_Text[25570][2]["Mail"][1]["Title"]
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][8]["Content"] = tPlaySnowball_Text[25570][2]["Mail"][1]["Conent"]

tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][9] = {}
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][9]["RewardRank"] = 9
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][9]["ActionId"] = 575328
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][9]["ExistDay"] = 7
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][9]["Title"] =tPlaySnowball_Text[25570][2]["Mail"][1]["Sender"]
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][9]["Sender"] = tPlaySnowball_Text[25570][2]["Mail"][1]["Title"]
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][9]["Content"] = tPlaySnowball_Text[25570][2]["Mail"][1]["Conent"]

tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][10] = {}
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][10]["RewardRank"] = 10
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][10]["ActionId"] = 575328
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][10]["ExistDay"] = 7
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][10]["Title"] =tPlaySnowball_Text[25570][2]["Mail"][1]["Sender"]
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][10]["Sender"] = tPlaySnowball_Text[25570][2]["Mail"][1]["Title"]
tRankingFunc_CrossInfo[25570]["Mail"]["Reward"][10]["Content"] = tPlaySnowball_Text[25570][2]["Mail"][1]["Conent"]

-- 互动接口
tProcessInteract["tFunction"] = tProcessInteract["tFunction"] or {}
table.insert(tProcessInteract["tFunction"],PlaySnowball_Choose)

--------------时间质检
-- local tPlaySnowball_OnTime = {}
	-- tPlaySnowball_OnTime[1] = {}
	-- tPlaySnowball_OnTime[1]["Type"] = 3  
	-- tPlaySnowball_OnTime[1]["TimeType"] = 4  -- 日时间
	-- tPlaySnowball_OnTime[1]["Multiple"] = {}
	-- tPlaySnowball_OnTime[1]["Multiple"][1] = "00:02 00:03"
	-- tPlaySnowball_OnTime[1]["Func"] = PlaySnowball_Clear
	-- table.insert(tSystemTime_InitialData,tPlaySnowball_OnTime[1])