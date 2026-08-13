------------------------------------------------------------------------------------
--Name：            200228[简体征服][活动脚本]全球愚人节活动气氛和藏宝图发放部分
--Creator:      冯子鑫
--Created:     2020-02-28
------------------------------------------------------------------------------------
--任务需求：
-- 完成全球愚人节活动中背包信，氛围，藏宝图获得途径部分




--前缀 AprilFoolsDayAtmosphere_
-- logid:12001894

-- 41737 = V100\ActiveScript\AprilFoolsDay\2020\[Conquer][ActiveScript]AprilFoolsDayAtmosphere.lua
-- 41737 = V100\活动脚本\愚人节\2020\[征服][活动脚本]全球愚人节活动气氛和藏宝图发放部分.lua


-- stc 掩码说明 
-- stc 216,59		记录背包信
-- stc 216,60		记录每日签到礼包获得藏宝图
-- stc 216,61		记录使用正气令获得藏宝图碎片
-- stc 216,62		记录使用显著功勋礼包获得藏宝图碎片


-- 全局动态表说明：
-- GlobalId：【54277】
-- 54277 data0：标记全服愚人节地图精英掉落限量，每日限量掉落100个非赠，之后的给赠
-- 54277 data1：标记全服物品限制的清理状态，0表示未清理，1表示已清理





----------------------------------表配置部分--------------------------------------------
local tAprilFoolsDayAtmosphere_Stc = {}	
	-- 记录每日签到礼包
	tAprilFoolsDayAtmosphere_Stc[1] = {}
	tAprilFoolsDayAtmosphere_Stc[1]["EventType"] = 216
	tAprilFoolsDayAtmosphere_Stc[1]["TypeData"] = 60
	
	-- 记录使用显著功勋礼包
	tAprilFoolsDayAtmosphere_Stc[2] = {}
	tAprilFoolsDayAtmosphere_Stc[2]["EventType"] = 216
	tAprilFoolsDayAtmosphere_Stc[2]["TypeData"] = 62
	
	-- 补偿邮件
	tAprilFoolsDayAtmosphere_Stc[3] = {}
	tAprilFoolsDayAtmosphere_Stc[3]["EventType"] = 218
	tAprilFoolsDayAtmosphere_Stc[3]["TypeData"] = 48

	
local tAprilFoolsDayAtmosphere_Cont = {}	
	-- 等级限制
	tAprilFoolsDayAtmosphere_Cont["Level"] = 80
	tAprilFoolsDayAtmosphere_Cont["Metempsychosis"] = 0
	
	-- 刷怪获得可交易碎片等级限制
	tAprilFoolsDayAtmosphere_Cont["MonsterLevel"] = 0
	tAprilFoolsDayAtmosphere_Cont["MonsterMetempsychosis"] = 2
	
	--合成所需碎片数量
	tAprilFoolsDayAtmosphere_Cont["SynthesisDebris"] = 10
	
	--藏宝图id
	tAprilFoolsDayAtmosphere_Cont["TreasureMapId"] = 3329965
	
	-- 记录跨服物品掉落数量数据
	tAprilFoolsDayAtmosphere_Cont["TaskId"] = 35072
	-- 愚人节引导任务
	tAprilFoolsDayAtmosphere_Cont["ActivityTaskId"] = 4394
	-- 非赠碎片掉落控制
	tAprilFoolsDayAtmosphere_Cont["Global"] = {}
	tAprilFoolsDayAtmosphere_Cont["Global"]["Id"] = 54277
	tAprilFoolsDayAtmosphere_Cont["Global"]["Limit"] = 100
	
	-- 记录怪物掉落物品
	tAprilFoolsDayAtmosphere_Cont["Monster"] = {}
	tAprilFoolsDayAtmosphere_Cont["Monster"][1] = 3600243
	tAprilFoolsDayAtmosphere_Cont["Monster"][2] = 3330026
	tAprilFoolsDayAtmosphere_Cont["Elite"] = {}
	tAprilFoolsDayAtmosphere_Cont["Elite"][1] = 3600242
	tAprilFoolsDayAtmosphere_Cont["Elite"][2] = 3600243
	tAprilFoolsDayAtmosphere_Cont["Boss"] = {}
	tAprilFoolsDayAtmosphere_Cont["Boss"][1] = 3600243
	tAprilFoolsDayAtmosphere_Cont["Boss"][2] = 3600244
	
	--完成任务光效
	tAprilFoolsDayAtmosphere_Cont["TaskEffect"] = "zf2-e128"
	
local tAprilFoolsDayAtmosphere_Log = {}
	tAprilFoolsDayAtmosphere_Log[3600242] = "0,0,3600242,%d,12001894,5[4],0,0"
	tAprilFoolsDayAtmosphere_Log[3600243] = "0,0,3600243,%d,12001894,5[4],0,0"
	tAprilFoolsDayAtmosphere_Log[3600244] = "0,0,3600244,%d,12001894,5[4],0,0"
	tAprilFoolsDayAtmosphere_Log[3330026] = "0,0,3330026,%d,12001894,5[4],0,0"
	
	
local tAprilFoolsDayAtmosphere_Data = {}


	-- ===每日签到礼包
	-- ===索引: tAprilFoolsDayAtmosphere_Data["Reward"]["Sign"][1]
	tAprilFoolsDayAtmosphere_Data["Reward"] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Sign"] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Sign"][1] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Sign"][1]["LogId"] = 12001894
	tAprilFoolsDayAtmosphere_Data["Reward"]["Sign"][1]["LogStep"] = " 5[1]"
	tAprilFoolsDayAtmosphere_Data["Reward"]["Sign"][1]["RewardItem"] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Sign"][1]["RewardItem"][1] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Sign"][1]["RewardItem"][1]["Id"] = 3600244 -- 藏宝图[3600244][属性:520][叠加:0][金币:0], 【表格】签到礼包获得藏宝图（赠）
	tAprilFoolsDayAtmosphere_Data["Reward"]["Sign"][1]["RewardItem"][1]["Attr"] = "0 1 3" -- 藏宝图（赠）*1
	tAprilFoolsDayAtmosphere_Data["Reward"]["Sign"][1]["RewardEffect"] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Sign"][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilFoolsDayAtmosphere_Data["Reward"]["Sign"][1]["RewardEffect"]["Effect"] = "angelwing"


	tAprilFoolsDayAtmosphere_Data["Reward"]["Sign"][2] = {}
	-- ===显著功勋礼包
	-- ===索引: tAprilFoolsDayAtmosphere_Data["Reward"]["Sign"][2]
	tAprilFoolsDayAtmosphere_Data["Reward"]["Sign"][2]["LogId"] = 12001894
	tAprilFoolsDayAtmosphere_Data["Reward"]["Sign"][2]["LogStep"] = " 5[1]"
	tAprilFoolsDayAtmosphere_Data["Reward"]["Sign"][2]["RewardItem"] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Sign"][2]["RewardItem"][1] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Sign"][2]["RewardItem"][1]["Id"] = 3600243 -- 藏宝图碎片（赠）[3600243][属性:521][叠加:10000][金币:0], 【表格】签到礼包获得藏宝图碎片（赠）*5
	tAprilFoolsDayAtmosphere_Data["Reward"]["Sign"][2]["RewardItem"][1]["Attr"] = "0 5" -- 藏宝图碎片（赠）*5
	tAprilFoolsDayAtmosphere_Data["Reward"]["Sign"][2]["RewardEffect"] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Sign"][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilFoolsDayAtmosphere_Data["Reward"]["Sign"][2]["RewardEffect"]["Effect"] = "angelwing"


	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"] = {}
	-- ===神龙岛、古神灵境、boss之家、愚人节地图小怪掉落藏宝图碎片--非跨服
	-- ===索引: tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Monster"][1]
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Monster"] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Monster"][1] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Monster"][1]["ItemChanceSum"] = 10000
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Monster"][1]["LogId"] = 12001894
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Monster"][1]["LogStep"] = " 5[2]"
	-- 捣蛋鬼藏宝图碎片（赠） - 5%
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Monster"][1][1] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Monster"][1][1]["RandomItemChanceType"] = 2
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Monster"][1][1]["ItemChance"] = 500
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Monster"][1][1]["RewardItem"] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Monster"][1][1]["RewardItem"][1] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Monster"][1][1]["RewardItem"][1]["Id"] = 3600243 -- 藏宝图碎片（赠）[3600243][属性:521][叠加:10000][金币:0], 【表格】捣蛋鬼藏宝图碎片（赠）
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Monster"][1][1]["RewardItem"][1]["Attr"] = "0 1" -- 藏宝图碎片（赠）*1
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Monster"][1][1]["RewardEffect"] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Monster"][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Monster"][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 漂流瓶 - 5%
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Monster"][1][2] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Monster"][1][2]["RandomItemChanceType"] = 2
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Monster"][1][2]["ItemChance"] = 500
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Monster"][1][2]["RewardItem"] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Monster"][1][2]["RewardItem"][1] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Monster"][1][2]["RewardItem"][1]["Id"] = 3330026 -- 漂流瓶[3330026][属性:9][叠加:10000][金币:0], 【表格】漂流瓶
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Monster"][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 漂流瓶*1
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Monster"][1][2]["RewardEffect"] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Monster"][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Monster"][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 无 - 90%
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Monster"][1][3] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Monster"][1][3]["RandomItemChanceType"] = 2
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Monster"][1][3]["ItemChance"] = 9000




	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Monster"][2] = {}
	-- ===神龙岛、古神灵境、boss之家、愚人节地图小怪掉落藏宝图碎片--跨服
	-- ===索引: tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Monster"][2]
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Monster"][2]["ItemChanceSum"] = 10000
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Monster"][2]["LogId"] = 12001894
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Monster"][2]["LogStep"] = " 5[2]"
	-- 捣蛋鬼藏宝图碎片（赠） - 5%
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Monster"][2][1] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Monster"][2][1]["RandomItemChanceType"] = 2
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Monster"][2][1]["ItemChance"] = 500
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Monster"][2][1]["RewardItem"] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Monster"][2][1]["RewardItem"][1] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Monster"][2][1]["RewardItem"][1]["Id"] = 3600243 -- 藏宝图碎片（赠）[3600243][属性:521][叠加:10000][金币:0], 【表格】捣蛋鬼藏宝图碎片（赠）
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Monster"][2][1]["RewardItem"][1]["Attr"] = "0 1" -- 藏宝图碎片（赠）*1
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Monster"][2][1]["RewardEffect"] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Monster"][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Monster"][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 无 - 95%
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Monster"][2][2] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Monster"][2][2]["RandomItemChanceType"] = 2
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Monster"][2][2]["ItemChance"] = 9500



	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Elite"] = {}
	-- ===愚人节地图精英掉落（非赠）
	-- ===索引: tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Elite"][1]
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Elite"][1] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Elite"][1]["LogId"] = 12001894
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Elite"][1]["LogStep"] = " 5[2]"
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Elite"][1]["RewardItem"] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Elite"][1]["RewardItem"][1] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Elite"][1]["RewardItem"][1]["Id"] = 3600242 -- 藏宝图碎片[3600242][属性:520][叠加:10000][金币:0], 【表格】捣蛋鬼藏宝图碎片
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Elite"][1]["RewardItem"][1]["Attr"] = "0 1" -- 藏宝图碎片*1
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Elite"][1]["RewardEffect"] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Elite"][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Elite"][1]["RewardEffect"]["Effect"] = "angelwing"


	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Elite"][2] = {}
	-- ===愚人节地图精英掉落（赠）
	-- ===索引: tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Elite"][2]
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Elite"][2]["LogId"] = 12001894
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Elite"][2]["RewardItem"] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Elite"][2]["RewardItem"][1] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Elite"][2]["RewardItem"][1]["Id"] = 3600243 -- 藏宝图碎片（赠）[3600243][属性:521][叠加:10000][金币:0], 【表格】捣蛋鬼藏宝图碎片（赠）
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Elite"][2]["RewardItem"][1]["Attr"] = "0 1" -- 藏宝图碎片（赠）*1
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Elite"][2]["RewardEffect"] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Elite"][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Elite"][2]["RewardEffect"]["Effect"] = "angelwing"




	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Boss"] = {}
	-- ===捣蛋鬼BOSS掉落
	-- ===（击杀后,循环3次掉落）
	-- ===索引: tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Boss"][1]
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Boss"][1] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Boss"][1]["ItemChanceSum"] = 10000
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Boss"][1]["LogId"] = 12001894
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Boss"][1]["LogStep"] = " 5[2]"
	-- 捣蛋鬼藏宝图碎片 - 45%
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Boss"][1][1] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Boss"][1][1]["RandomItemChanceType"] = 2
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Boss"][1][1]["ItemChance"] = 4500
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Boss"][1][1]["ItemNum"] = 1
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Boss"][1][1]["RewardItem"] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Boss"][1][1]["RewardItem"][1] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Boss"][1][1]["RewardItem"][1]["Id"] = 3600243 -- 藏宝图碎片（赠）[3600243][属性:521][叠加:10000][金币:0], 【表格】捣蛋鬼藏宝图碎片
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Boss"][1][1]["RewardItem"][1]["Attr"] = "0 1" -- 藏宝图碎片（赠）*1
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Boss"][1][1]["RewardEffect"] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Boss"][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Boss"][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 捣蛋鬼藏宝图碎片 - 35%
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Boss"][1][2] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Boss"][1][2]["RandomItemChanceType"] = 2
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Boss"][1][2]["ItemChance"] = 3500
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Boss"][1][2]["ItemNum"] = 2
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Boss"][1][2]["RewardItem"] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Boss"][1][2]["RewardItem"][1] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Boss"][1][2]["RewardItem"][1]["Id"] = 3600243 -- 藏宝图碎片（赠）[3600243][属性:521][叠加:10000][金币:0], 【表格】捣蛋鬼藏宝图碎片
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Boss"][1][2]["RewardItem"][1]["Attr"] = "0 2" -- 藏宝图碎片（赠）*2
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Boss"][1][2]["RewardEffect"] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Boss"][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Boss"][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 捣蛋鬼藏宝图碎片 - 15%
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Boss"][1][3] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Boss"][1][3]["RandomItemChanceType"] = 2
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Boss"][1][3]["ItemChance"] = 1500
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Boss"][1][3]["ItemNum"] = 3
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Boss"][1][3]["RewardItem"] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Boss"][1][3]["RewardItem"][1] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Boss"][1][3]["RewardItem"][1]["Id"] = 3600243 -- 藏宝图碎片（赠）[3600243][属性:521][叠加:10000][金币:0], 【表格】捣蛋鬼藏宝图碎片
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Boss"][1][3]["RewardItem"][1]["Attr"] = "0 3" -- 藏宝图碎片（赠）*3
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Boss"][1][3]["RewardEffect"] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Boss"][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Boss"][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 捣蛋鬼藏宝图（赠） - 5%
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Boss"][1][4] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Boss"][1][4]["RandomItemChanceType"] = 2
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Boss"][1][4]["ItemChance"] = 500
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Boss"][1][4]["ItemNum"] = 1
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Boss"][1][4]["RewardItem"] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Boss"][1][4]["RewardItem"][1] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Boss"][1][4]["RewardItem"][1]["Id"] = 3600244 -- 藏宝图[3600244][属性:520][叠加:0][金币:0], 【表格】捣蛋鬼藏宝图（赠）
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Boss"][1][4]["RewardItem"][1]["Attr"] = "0 1 3" -- 藏宝图（赠）*1
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Boss"][1][4]["RewardEffect"] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Boss"][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Boss"][1][4]["RewardEffect"]["Effect"] = "angelwing"


	tAprilFoolsDayAtmosphere_Data["Reward"]["Synthetic"] = {}
	-- ===捣蛋鬼藏宝图碎片（赠）合成
	-- ===索引: tAprilFoolsDayAtmosphere_Data["Reward"]["Synthetic"][2]
	-- ===删除: 3600243,10
	tAprilFoolsDayAtmosphere_Data["Reward"]["Synthetic"][2] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Synthetic"][2]["LogId"] = 12001894
	tAprilFoolsDayAtmosphere_Data["Reward"]["Synthetic"][2]["LogStep"] = " 5[3]"
	tAprilFoolsDayAtmosphere_Data["Reward"]["Synthetic"][2]["DeleteItem"] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Synthetic"][2]["DeleteItem"][1] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Synthetic"][2]["DeleteItem"][1]["Id"] = 3600243 -- 【库】藏宝图碎片（赠）[属性:521]
	tAprilFoolsDayAtmosphere_Data["Reward"]["Synthetic"][2]["DeleteItem"][1]["ItemNum"] = 10
	tAprilFoolsDayAtmosphere_Data["Reward"]["Synthetic"][2]["RewardItem"] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Synthetic"][2]["RewardItem"][1] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Synthetic"][2]["RewardItem"][1]["Id"] = 3600244 -- 藏宝图[3600244][属性:520][叠加:0][金币:0], 【表格】10个藏宝图碎片（赠）合成为1个藏宝图（赠）
	tAprilFoolsDayAtmosphere_Data["Reward"]["Synthetic"][2]["RewardItem"][1]["Attr"] = "0 1 3" -- 藏宝图（赠）*1
	tAprilFoolsDayAtmosphere_Data["Reward"]["Synthetic"][2]["RewardEffect"] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Synthetic"][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilFoolsDayAtmosphere_Data["Reward"]["Synthetic"][2]["RewardEffect"]["Effect"] = "angelwing"


	tAprilFoolsDayAtmosphere_Data["Reward"]["Synthetic"][1] = {}
	-- ===捣蛋鬼藏宝图碎片合成
	-- ===索引: tAprilFoolsDayAtmosphere_Data["Reward"]["Synthetic"][1]
	-- ===删除: 3600242,10
	tAprilFoolsDayAtmosphere_Data["Reward"]["Synthetic"][1]["LogId"] = 12001894
	tAprilFoolsDayAtmosphere_Data["Reward"]["Synthetic"][1]["LogStep"] = " 5[3]"
	tAprilFoolsDayAtmosphere_Data["Reward"]["Synthetic"][1]["DeleteItem"] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Synthetic"][1]["DeleteItem"][1] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Synthetic"][1]["DeleteItem"][1]["Id"] = 3600242 -- 【库】藏宝图碎片[属性:520]
	tAprilFoolsDayAtmosphere_Data["Reward"]["Synthetic"][1]["DeleteItem"][1]["ItemNum"] = 10
	tAprilFoolsDayAtmosphere_Data["Reward"]["Synthetic"][1]["RewardItem"] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Synthetic"][1]["RewardItem"][1] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Synthetic"][1]["RewardItem"][1]["Id"] = 3600244 -- 藏宝图[3600244][属性:520][叠加:0][金币:0], 【表格】10个藏宝图碎片合成为1个藏宝图
	tAprilFoolsDayAtmosphere_Data["Reward"]["Synthetic"][1]["RewardItem"][1]["Attr"] = "0 1" -- 藏宝图*1
	tAprilFoolsDayAtmosphere_Data["Reward"]["Synthetic"][1]["RewardEffect"] = {}
	tAprilFoolsDayAtmosphere_Data["Reward"]["Synthetic"][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilFoolsDayAtmosphere_Data["Reward"]["Synthetic"][1]["RewardEffect"]["Effect"] = "angelwing"
	
	
	
----------------------------------逻辑部分---------------------------------------------

--每日签到礼包和显著功勋礼包 nAprilFoolsDayAtmosphere_Index为1为每日签到礼包 2为显著功勋礼包
function AprilFoolsDayAtmosphere_DailyPack(nAprilFoolsDayAtmosphere_Index)
	local nAprilFoolsDayAtmosphere_UserId = Get_UserId()
	local nAprilFoolsDayAtmosphere_Level = tAprilFoolsDayAtmosphere_Cont["Level"]
	local nAprilFoolsDayAtmosphere_Metempsychosis = tAprilFoolsDayAtmosphere_Cont["Metempsychosis"]
	
	--时间判断
	if not Sys_ChkFullTime(tActivityTime["AprilFoolsDay"]["ActivityTime"]) then
		return
	end
	
	--等级判断
	if not User_JudgeLevelAndMetempsychosis(nAprilFoolsDayAtmosphere_Level,nAprilFoolsDayAtmosphere_Metempsychosis,nAprilFoolsDayAtmosphere_UserId) then
		return
	end
	
	
	local nAprilFoolsDayAtmosphere_Event = tAprilFoolsDayAtmosphere_Stc[nAprilFoolsDayAtmosphere_Index]["EventType"]
	local nAprilFoolsDayAtmosphere_Type = tAprilFoolsDayAtmosphere_Stc[nAprilFoolsDayAtmosphere_Index]["TypeData"]
	--隔天
	if Task_StcInterval(nAprilFoolsDayAtmosphere_Event,nAprilFoolsDayAtmosphere_Type,1,4,nAprilFoolsDayAtmosphere_UserId) then
		Task_SetStatistic(nAprilFoolsDayAtmosphere_Event,nAprilFoolsDayAtmosphere_Type,0,1,nAprilFoolsDayAtmosphere_UserId)
		Task_SetStcTimestamp(nAprilFoolsDayAtmosphere_Event,nAprilFoolsDayAtmosphere_Type,0,nAprilFoolsDayAtmosphere_UserId)
	end
	
	-- 已领取
	if Task_ChkStcValue(nAprilFoolsDayAtmosphere_Event, nAprilFoolsDayAtmosphere_Type, ">", 0) then
		return
	end
	
	-- 判断背包空间
	local nAprilFoolsDayAtmosphere_Space = RewardTemplate_GetRewardSpace(tAprilFoolsDayAtmosphere_Data["Reward"]["Sign"][nAprilFoolsDayAtmosphere_Index])
	if not User_CheckLeftSpace(nAprilFoolsDayAtmosphere_Space) then
		return
	end
	
	if Task_SetStatistic(nAprilFoolsDayAtmosphere_Event, nAprilFoolsDayAtmosphere_Type, 1, 1) then
		Task_SetStcTimestamp(nAprilFoolsDayAtmosphere_Event, nAprilFoolsDayAtmosphere_Type, 0)
		RewardTemplate_UseItemAndMsg(tAprilFoolsDayAtmosphere_Data["Reward"]["Sign"][nAprilFoolsDayAtmosphere_Index])
	end	
end


-- 合成藏宝图碎片 优先判断Itemtype1的数量进行合成，数量不够时判断Itemtype2,Index用于判断优先合成的是否为赠，1为非赠，2为赠
function AprilFoolsDayAtmosphere_SynthesisDebris(nAprilFoolsDayAtmosphere_Itemtype1,nAprilFoolsDayAtmosphere_Itemtype2,nAprilFoolsDayAtmosphere_Index)
	local nAprilFoolsDayAtmosphere_UserId = Get_UserId()
	local nAprilFoolsDayAtmosphere_Num1 = Get_CountItemType(nAprilFoolsDayAtmosphere_Itemtype1,0) or 0
	local nAprilFoolsDayAtmosphere_Num2 = Get_CountItemType(nAprilFoolsDayAtmosphere_Itemtype2,0) or 0
	local nAprilFoolsDayAtmosphere_NeedNum = tAprilFoolsDayAtmosphere_Cont["SynthesisDebris"]
	
	
	-- 判断是否处于活动期内，过期删除
	if CommonFunc_GetAfterActivityTime(tActivityTime["AprilFoolsDay"]["ActivityTime"]) then
		if Item_ChkItem(nAprilFoolsDayAtmosphere_Itemtype1) and Item_DelAllItemByType(nAprilFoolsDayAtmosphere_Itemtype1) then
		--过期删除log
		local sAprilFoolsDayAtmosphere_str = string.format(tAprilFoolsDayAtmosphere_Log[nAprilFoolsDayAtmosphere_Itemtype1],nAprilFoolsDayAtmosphere_Num1)
		Sys_SaveActionFestivalLog(sAprilFoolsDayAtmosphere_str)
		User_TalkChannel2005(tAprilFoolsDayAtmosphere_Text["SystemTips"]["TimeOut"])
		end 
		return
	end
	
	--判断背包空间
	if not User_CheckLeftSpace(1,nAprilFoolsDayAtmosphere_UserId) then
		Sys_MsgBox(tAprilFoolsDayAtmosphere_Text["SystemTips"]["NoSpace"])
		return
	end
		
	if nAprilFoolsDayAtmosphere_Num1 >= nAprilFoolsDayAtmosphere_NeedNum then 
		-- 一键合成 合成次数
		local nAprilFoolsDayAtmosphere_UseNum,nAprilFoolsDayAtmosphere_Point = math.modf(nAprilFoolsDayAtmosphere_Num1/nAprilFoolsDayAtmosphere_NeedNum)
		local tAprilFoolsDayAtmosphere_Table = CommonFunc_Copy(tAprilFoolsDayAtmosphere_Data["Reward"]["Synthetic"][nAprilFoolsDayAtmosphere_Index])
		local nAprilFoolsDayAtmosphere_DeleteNum = nAprilFoolsDayAtmosphere_UseNum * nAprilFoolsDayAtmosphere_NeedNum
		tAprilFoolsDayAtmosphere_Table["DeleteItem"][1]["ItemNum"] = nAprilFoolsDayAtmosphere_DeleteNum
		
		if nAprilFoolsDayAtmosphere_Index == 1 then
			tAprilFoolsDayAtmosphere_Table["RewardItem"][1]["Attr"] = string.format("0 %d",nAprilFoolsDayAtmosphere_UseNum)
		else
			tAprilFoolsDayAtmosphere_Table["RewardItem"][1]["Attr"] = string.format("0 %d 3",nAprilFoolsDayAtmosphere_UseNum)
		end
		--如果Itemtype1数量足够则直接合成
		RewardTemplate_UseItemAndMsg(tAprilFoolsDayAtmosphere_Table)
		local sAprilFoolsDayAtmosphere_MsgBox = string.format(tAprilFoolsDayAtmosphere_Text["SystemTips"]["SynthesisDebris"][nAprilFoolsDayAtmosphere_Index],nAprilFoolsDayAtmosphere_UseNum)
		Sys_MsgBox(sAprilFoolsDayAtmosphere_MsgBox)
		return
	elseif (nAprilFoolsDayAtmosphere_Num1 + nAprilFoolsDayAtmosphere_Num2) >= nAprilFoolsDayAtmosphere_NeedNum then
		nAprilFoolsDayAtmosphere_Num2 = nAprilFoolsDayAtmosphere_NeedNum - nAprilFoolsDayAtmosphere_Num1 --获取所需要的Itemtype2数量
		--如果Itemtype1+Itemtype2数量足够则合成赠品藏宝图
		-- local tAprilFoolsDayAtmosphere_Table = CommonFunc_Copy(tAprilFoolsDayAtmosphere_Data["Reward"]["Synthetic"][2])
		-- tAprilFoolsDayAtmosphere_Table["DeleteItem"][1]["Id"] = nAprilFoolsDayAtmosphere_Itemtype1
		-- tAprilFoolsDayAtmosphere_Table["DeleteItem"][1]["ItemNum"] = nAprilFoolsDayAtmosphere_Num1
		-- tAprilFoolsDayAtmosphere_Table["DeleteItem"][2] = {}
		-- tAprilFoolsDayAtmosphere_Table["DeleteItem"][2]["Id"] = nAprilFoolsDayAtmosphere_Itemtype2
		-- tAprilFoolsDayAtmosphere_Table["DeleteItem"][2]["ItemNum"] = nAprilFoolsDayAtmosphere_Num2
		-- RewardTemplate_UseItemAndMsg(tAprilFoolsDayAtmosphere_Table)
		
		-- local sAprilFoolsDayAtmosphere_MsgBox = tAprilFoolsDayAtmosphere_Text["SystemTips"]["SynthesisDebris"][2]
		-- Sys_MsgBox(sAprilFoolsDayAtmosphere_MsgBox)
		
		Sys_MsgBox(tAprilFoolsDayAtmosphere_Text["SystemTips"]["SynthesisDebrisMsgBox"],string.format("AprilFoolsDayAtmosphere_SynthesisDebrisMsgBox</N>%d</N>%d</N>%d</N>%d",nAprilFoolsDayAtmosphere_Itemtype1,nAprilFoolsDayAtmosphere_Num1,nAprilFoolsDayAtmosphere_Itemtype2,nAprilFoolsDayAtmosphere_Num2))
		return
	end
	
	local sAprilFoolsDayAtmosphere_MsgBox = tAprilFoolsDayAtmosphere_Text["SystemTips"]["SynthesisDebris"][3]
	Sys_MsgBox(sAprilFoolsDayAtmosphere_MsgBox)
	
end
--使用赠和非赠碎片合成时105逻辑
function AprilFoolsDayAtmosphere_SynthesisDebrisMsgBox(nAprilFoolsDayAtmosphere_Itemtype1,nAprilFoolsDayAtmosphere_Num1,nAprilFoolsDayAtmosphere_Itemtype2,nAprilFoolsDayAtmosphere_Num2)
	local tAprilFoolsDayAtmosphere_Table = CommonFunc_Copy(tAprilFoolsDayAtmosphere_Data["Reward"]["Synthetic"][2])
	tAprilFoolsDayAtmosphere_Table["DeleteItem"][1]["Id"] = nAprilFoolsDayAtmosphere_Itemtype1
	tAprilFoolsDayAtmosphere_Table["DeleteItem"][1]["ItemNum"] = nAprilFoolsDayAtmosphere_Num1
	tAprilFoolsDayAtmosphere_Table["DeleteItem"][2] = {}
	tAprilFoolsDayAtmosphere_Table["DeleteItem"][2]["Id"] = nAprilFoolsDayAtmosphere_Itemtype2
	tAprilFoolsDayAtmosphere_Table["DeleteItem"][2]["ItemNum"] = nAprilFoolsDayAtmosphere_Num2
	RewardTemplate_UseItemAndMsg(tAprilFoolsDayAtmosphere_Table)
	
	local sAprilFoolsDayAtmosphere_MsgBox = string.format(tAprilFoolsDayAtmosphere_Text["SystemTips"]["SynthesisDebris"][2],1)
	Sys_MsgBox(sAprilFoolsDayAtmosphere_MsgBox)
end
--进入跨服时记录玩家id
function AprilFoolsDayAtmosphere_SetUserId()
	local nAprilFoolsDayAtmosphere_UserId = Get_UserId()
	local nAprilFoolsDayAtmosphere_TaskId = tAprilFoolsDayAtmosphere_Cont["TaskId"]
	-- 如果在本服没有存值就赋值
	if not User_IsCross(nAprilFoolsDayAtmosphere_UserId) then
		local nAprilFoolsDayAtmosphere_UserOldId = Get_TaskDetailData2(nAprilFoolsDayAtmosphere_TaskId, nAprilFoolsDayAtmosphere_UserId)
		if nAprilFoolsDayAtmosphere_UserOldId <= 0 then
			if not Task_SetTaskDetailData2(nAprilFoolsDayAtmosphere_TaskId, nAprilFoolsDayAtmosphere_UserId, nAprilFoolsDayAtmosphere_UserId) then
				return
			end
		end
	end
end
-- 击杀神龙岛跟古神灵境小怪掉落逻辑
function AprilFoolsDayAtmosphere_KillMonster()
	local nAprilFoolsDayAtmosphere_UserId = Get_UserId()
	local nAprilFoolsDayAtmosphere_Level = tAprilFoolsDayAtmosphere_Cont["Level"]
	local nAprilFoolsDayAtmosphere_Metempsychosis = tAprilFoolsDayAtmosphere_Cont["Metempsychosis"]
	local nAprilFoolsDayAtmosphere_TaskId = tAprilFoolsDayAtmosphere_Cont["TaskId"]
	--时间判断
	if not Sys_ChkFullTime(tActivityTime["AprilFoolsDay"]["ActivityTime"]) then
		return
	end

	--等级判断
	if not User_JudgeLevelAndMetempsychosis(nAprilFoolsDayAtmosphere_Level,nAprilFoolsDayAtmosphere_Metempsychosis,nAprilFoolsDayAtmosphere_UserId) then
		return
	end
	--进入跨服时记录玩家id
	AprilFoolsDayAtmosphere_SetUserId()
	
	-- 判断有没有taskid
	if not Task_ChkTaskDetail(nAprilFoolsDayAtmosphere_TaskId, nAprilFoolsDayAtmosphere_UserId) then
		Task_AddTaskDetail(nAprilFoolsDayAtmosphere_TaskId,0,nAprilFoolsDayAtmosphere_UserId)
	else
		-- 判断是否隔天
		local nAprilFoolsDayAtmosphere_DropNumChk = Get_TaskDetailData6(nAprilFoolsDayAtmosphere_TaskId, nAprilFoolsDayAtmosphere_UserId)
		-- 使用data6判断隔天，如果为0则修改为1  为0表示隔天，并把之前的掉落限量改掉
		if nAprilFoolsDayAtmosphere_DropNumChk == 0 then
			Task_SetTaskDetailData3(nAprilFoolsDayAtmosphere_TaskId, 0, nAprilFoolsDayAtmosphere_UserId)
			Task_SetTaskDetailData4(nAprilFoolsDayAtmosphere_TaskId, 0, nAprilFoolsDayAtmosphere_UserId)
			Task_SetTaskDetailData5(nAprilFoolsDayAtmosphere_TaskId, 0, nAprilFoolsDayAtmosphere_UserId)
			Task_SetTaskDetailData6(nAprilFoolsDayAtmosphere_TaskId, 1, nAprilFoolsDayAtmosphere_UserId)
		end	
	end
	
	-- 判断是否在跨服
	local nAprilFoolsDayAtmosphere_ServerId = Get_UserServerId(nAprilFoolsDayAtmosphere_UserId)
	
	
	-- 不在跨服
	if not User_IsCross(nAprilFoolsDayAtmosphere_UserId) then
		-- 判断背包空间
		if not User_CheckLeftSpace(1, nAprilFoolsDayAtmosphere_UserId) then
			return
		end
		local fAprilFoolsDayAtmosphere_Chk,tAprilFoolsDayAtmosphere_Award = Probabil_RandomAward(tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Monster"], 1)
		if tAprilFoolsDayAtmosphere_Award[1]["tAward"][1]["RewardItem"] == nil then
			return
		end
		local nAprilFoolsDayAtmosphere_ItemId = tAprilFoolsDayAtmosphere_Award[1]["tAward"][1]["RewardItem"][1]["Id"]
		
		local nAprilFoolsDayAtmosphere_DropNum1 = Get_TaskDetailData4(nAprilFoolsDayAtmosphere_TaskId, nAprilFoolsDayAtmosphere_UserId)
		local nAprilFoolsDayAtmosphere_DropNum2 = Get_TaskDetailData5(nAprilFoolsDayAtmosphere_TaskId, nAprilFoolsDayAtmosphere_UserId)
		-- 判断是否达到限量
		if nAprilFoolsDayAtmosphere_ItemId == tAprilFoolsDayAtmosphere_Cont["Monster"][1] then
			if nAprilFoolsDayAtmosphere_DropNum1 ==  15 then
				Task_SetTaskDetailData4(nAprilFoolsDayAtmosphere_TaskId, nAprilFoolsDayAtmosphere_DropNum1 + 1, nAprilFoolsDayAtmosphere_UserId)
				Sys_MsgBox(tAprilFoolsDayAtmosphere_Text["SystemTips"]["DropLimit"][1], nil, nil, nAprilFoolsDayAtmosphere_UserId)
				return
			elseif nAprilFoolsDayAtmosphere_DropNum1 > 15 then
				return
			end
		elseif nAprilFoolsDayAtmosphere_ItemId == tAprilFoolsDayAtmosphere_Cont["Monster"][2] then
			if nAprilFoolsDayAtmosphere_DropNum2 ==  3 then
				Task_SetTaskDetailData5(nAprilFoolsDayAtmosphere_TaskId, nAprilFoolsDayAtmosphere_DropNum2 + 1, nAprilFoolsDayAtmosphere_UserId)
				Sys_MsgBox(tAprilFoolsDayAtmosphere_Text["SystemTips"]["DropLimit"][2], nil, nil, nAprilFoolsDayAtmosphere_UserId)
				return
			elseif nAprilFoolsDayAtmosphere_DropNum2 > 3 then
				return
			end
		else
			return
		end
		--发奖
		if nAprilFoolsDayAtmosphere_ItemId == tAprilFoolsDayAtmosphere_Cont["Monster"][1] then
			if Item_AddItem(nAprilFoolsDayAtmosphere_ItemId) then
				Task_SetTaskDetailData4(nAprilFoolsDayAtmosphere_TaskId, nAprilFoolsDayAtmosphere_DropNum1 + 1, nAprilFoolsDayAtmosphere_UserId)
				local sAprilFoolsDayAtmosphere_Log = string.format(tAprilFoolsDayAtmosphere_Log[nAprilFoolsDayAtmosphere_ItemId], nAprilFoolsDayAtmosphere_ItemId)
				Sys_SaveActionFestivalLog(sAprilFoolsDayAtmosphere_Log)
			end
		else
			if Item_AddItem(nAprilFoolsDayAtmosphere_ItemId) then
				Task_SetTaskDetailData5(nAprilFoolsDayAtmosphere_TaskId, nAprilFoolsDayAtmosphere_DropNum2 + 1, nAprilFoolsDayAtmosphere_UserId)
				local sAprilFoolsDayAtmosphere_Log = string.format(tAprilFoolsDayAtmosphere_Log[nAprilFoolsDayAtmosphere_ItemId], nAprilFoolsDayAtmosphere_ItemId)
				Sys_SaveActionFestivalLog(sAprilFoolsDayAtmosphere_Log)
			end
		end
	else
		-- 在跨服
		
		-- 判断背包空间
		if not User_CheckLeftSpace(1, nAprilFoolsDayAtmosphere_UserId) then
			return
		end
		local fAprilFoolsDayAtmosphere_Chk,tAprilFoolsDayAtmosphere_Award = Probabil_RandomAward(tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Monster"], 2)
		if tAprilFoolsDayAtmosphere_Award[1]["tAward"][1]["RewardItem"] == nil then
			return
		end
		local nAprilFoolsDayAtmosphere_ItemId = tAprilFoolsDayAtmosphere_Award[1]["tAward"][1]["RewardItem"][1]["Id"]
		
		local nAprilFoolsDayAtmosphere_DropNum1 = Get_TaskDetailData4(nAprilFoolsDayAtmosphere_TaskId, nAprilFoolsDayAtmosphere_UserId)
		-- 判断是否达到限量
		if nAprilFoolsDayAtmosphere_ItemId == tAprilFoolsDayAtmosphere_Cont["Monster"][1] then
			if nAprilFoolsDayAtmosphere_DropNum1 ==  15 then
				Task_SetTaskDetailData4(nAprilFoolsDayAtmosphere_TaskId, nAprilFoolsDayAtmosphere_DropNum1 + 1, nAprilFoolsDayAtmosphere_UserId)
				Sys_MsgBox(tAprilFoolsDayAtmosphere_Text["SystemTips"]["DropLimit"][1], nil, nil, nAprilFoolsDayAtmosphere_UserId)
				return
			elseif nAprilFoolsDayAtmosphere_DropNum1 > 15 then
				return
			end
		else
			return
		end
		--发奖
		local nAprilFoolsDayAtmosphere_UserOldId = Get_TaskDetailData2(nAprilFoolsDayAtmosphere_TaskId, nAprilFoolsDayAtmosphere_UserId)
		if nAprilFoolsDayAtmosphere_ItemId == tAprilFoolsDayAtmosphere_Cont["Monster"][1] then
			Task_SetTaskDetailData4(nAprilFoolsDayAtmosphere_TaskId, nAprilFoolsDayAtmosphere_DropNum1 + 1, nAprilFoolsDayAtmosphere_UserId)
		end
		if Item_AddAsynOSItem(nAprilFoolsDayAtmosphere_ItemId, 0, 1, 10000, 0, nAprilFoolsDayAtmosphere_UserOldId, nAprilFoolsDayAtmosphere_ServerId) then
			local sAprilFoolsDayAtmosphere_Log = string.format(tAprilFoolsDayAtmosphere_Log[nAprilFoolsDayAtmosphere_ItemId], nAprilFoolsDayAtmosphere_ItemId)
			Sys_SaveActionFestivalLog(sAprilFoolsDayAtmosphere_Log)
		end
		
	end
	
	
end

-- 愚人节地图精英掉落逻辑
function AprilFoolsDayAtmosphere_KillEliteMonster()
	local nAprilFoolsDayAtmosphere_UserId = Get_UserId()
	local nAprilFoolsDayAtmosphere_Level = tAprilFoolsDayAtmosphere_Cont["Level"]
	local nAprilFoolsDayAtmosphere_Metempsychosis = tAprilFoolsDayAtmosphere_Cont["MonsterMetempsychosis"]
	local nAprilFoolsDayAtmosphere_TaskId = tAprilFoolsDayAtmosphere_Cont["TaskId"]
	--时间判断
	if not Sys_ChkFullTime(tActivityTime["AprilFoolsDay"]["ActivityTime"]) then
		return
	end
	
	--等级判断
	if not User_JudgeLevelAndMetempsychosis(nAprilFoolsDayAtmosphere_Level,nAprilFoolsDayAtmosphere_Metempsychosis,nAprilFoolsDayAtmosphere_UserId) then
		return
	end
	--进入跨服时记录玩家id
	AprilFoolsDayAtmosphere_SetUserId()
	local nAprilFoolsDayAtmosphere_UserOldId = Get_TaskDetailData2(nAprilFoolsDayAtmosphere_TaskId, nAprilFoolsDayAtmosphere_UserId)
	
	-- 判断有没有taskid
	if not Task_ChkTaskDetail(nAprilFoolsDayAtmosphere_TaskId, nAprilFoolsDayAtmosphere_UserId) then
		Task_AddTaskDetail(nAprilFoolsDayAtmosphere_TaskId,0,nAprilFoolsDayAtmosphere_UserId)
	else
		-- 判断是否隔天
		local nAprilFoolsDayAtmosphere_DropNumChk = Get_TaskDetailData6(nAprilFoolsDayAtmosphere_TaskId, nAprilFoolsDayAtmosphere_UserId)
		-- 使用data6判断隔天，如果为0则修改为1  为0表示隔天，并把之前的掉落限量改掉
		if nAprilFoolsDayAtmosphere_DropNumChk == 0 then
			Task_SetTaskDetailData3(nAprilFoolsDayAtmosphere_TaskId, 0, nAprilFoolsDayAtmosphere_UserId)
			Task_SetTaskDetailData4(nAprilFoolsDayAtmosphere_TaskId, 0, nAprilFoolsDayAtmosphere_UserId)
			Task_SetTaskDetailData5(nAprilFoolsDayAtmosphere_TaskId, 0, nAprilFoolsDayAtmosphere_UserId)
			Task_SetTaskDetailData6(nAprilFoolsDayAtmosphere_TaskId, 1, nAprilFoolsDayAtmosphere_UserId)
		end	
	end
	
	-- 判断是否在跨服
	local nAprilFoolsDayAtmosphere_ServerId = Get_UserServerId(nAprilFoolsDayAtmosphere_UserId)
	
	-- 不在跨服
	if not User_IsCross(nAprilFoolsDayAtmosphere_UserId) then
		-- 判断背包空间
		if not User_CheckLeftSpace(1, nAprilFoolsDayAtmosphere_UserId) then
			return
		end
		--判断是否到达每日上限
		local nAprilFoolsDayAtmosphere_GlobalId = tAprilFoolsDayAtmosphere_Cont["Global"]["Id"] or 0
		local nAprilFoolsDayAtmosphere_Data = Get_SysDynaGlobalData(nAprilFoolsDayAtmosphere_GlobalId,0) or 0
		local nAprilFoolsDayAtmosphere_DropNum = Get_TaskDetailData3(nAprilFoolsDayAtmosphere_TaskId, nAprilFoolsDayAtmosphere_UserId)
		if nAprilFoolsDayAtmosphere_DropNum <  20 then
			Task_SetTaskDetailData3(nAprilFoolsDayAtmosphere_TaskId, nAprilFoolsDayAtmosphere_DropNum + 1, nAprilFoolsDayAtmosphere_UserId)
				
			if nAprilFoolsDayAtmosphere_Data < tAprilFoolsDayAtmosphere_Cont["Global"]["Limit"] then
				--全局表加
				nAprilFoolsDayAtmosphere_Data = nAprilFoolsDayAtmosphere_Data +1 
				Sys_SetSynaGlobalData(nAprilFoolsDayAtmosphere_GlobalId,0,nAprilFoolsDayAtmosphere_Data)
				-- 获得奖励
				RewardTemplate_UseItemAndMsg(tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Elite"][1])
				return
			else 
				-- 获得奖励
				RewardTemplate_UseItemAndMsg(tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Elite"][2])
				return 
			end
		end
		
	else
	-- 在跨服	
		-- 判断背包空间
		if not User_CheckLeftSpace(1, nAprilFoolsDayAtmosphere_UserId) then
			return
		end
		
		local nAprilFoolsDayAtmosphere_ItemId = tAprilFoolsDayAtmosphere_Cont["Elite"][2]
		local nAprilFoolsDayAtmosphere_DropNum = Get_TaskDetailData3(nAprilFoolsDayAtmosphere_TaskId, nAprilFoolsDayAtmosphere_UserId)
		if nAprilFoolsDayAtmosphere_DropNum <  20 then
			Task_SetTaskDetailData3(nAprilFoolsDayAtmosphere_TaskId, nAprilFoolsDayAtmosphere_DropNum + 1, nAprilFoolsDayAtmosphere_UserId)
			--发奖
			if Item_AddAsynOSItem(nAprilFoolsDayAtmosphere_ItemId, 0, 1, 10000, 0, nAprilFoolsDayAtmosphere_UserOldId, nAprilFoolsDayAtmosphere_ServerId) then
				local sAprilFoolsDayAtmosphere_Log = string.format(tAprilFoolsDayAtmosphere_Log[nAprilFoolsDayAtmosphere_ItemId], nAprilFoolsDayAtmosphere_ItemId)
				Sys_SaveActionFestivalLog(sAprilFoolsDayAtmosphere_Log)
			end
		end
	end
	
	
end

-- 愚人节地图boss掉落逻辑
function AprilFoolsDayAtmosphere_KillBoss()
	local nAprilFoolsDayAtmosphere_UserId = Get_UserId()
	local nAprilFoolsDayAtmosphere_Level = tAprilFoolsDayAtmosphere_Cont["Level"]
	local nAprilFoolsDayAtmosphere_Metempsychosis = tAprilFoolsDayAtmosphere_Cont["Metempsychosis"]
	local nAprilFoolsDayAtmosphere_TaskId = tAprilFoolsDayAtmosphere_Cont["TaskId"]
	local nAprilFoolsDayAtmosphere_UserOldId = Get_TaskDetailData2(nAprilFoolsDayAtmosphere_TaskId, nAprilFoolsDayAtmosphere_UserId)
	--时间判断
	if not Sys_ChkFullTime(tActivityTime["AprilFoolsDay"]["ActivityTime"]) then
		return
	end

	--等级判断
	if not User_JudgeLevelAndMetempsychosis(nAprilFoolsDayAtmosphere_Level,nAprilFoolsDayAtmosphere_Metempsychosis,nAprilFoolsDayAtmosphere_UserId) then
		return
	end
	--进入跨服时记录玩家id
	AprilFoolsDayAtmosphere_SetUserId()
	
	
	-- 判断有没有taskid
	if not Task_ChkTaskDetail(nAprilFoolsDayAtmosphere_TaskId, nAprilFoolsDayAtmosphere_UserId) then
		Task_AddTaskDetail(nAprilFoolsDayAtmosphere_TaskId,0,nAprilFoolsDayAtmosphere_UserId)
	else
		-- 判断是否隔天
		local nAprilFoolsDayAtmosphere_DropNumChk = Get_TaskDetailData6(nAprilFoolsDayAtmosphere_TaskId, nAprilFoolsDayAtmosphere_UserId)
		-- 使用data6判断隔天，如果为0则修改为1  为0表示隔天，并把之前的掉落限量改掉
		if nAprilFoolsDayAtmosphere_DropNumChk == 0 then
			Task_SetTaskDetailData3(nAprilFoolsDayAtmosphere_TaskId, 0, nAprilFoolsDayAtmosphere_UserId)
			Task_SetTaskDetailData4(nAprilFoolsDayAtmosphere_TaskId, 0, nAprilFoolsDayAtmosphere_UserId)
			Task_SetTaskDetailData5(nAprilFoolsDayAtmosphere_TaskId, 0, nAprilFoolsDayAtmosphere_UserId)
			Task_SetTaskDetailData6(nAprilFoolsDayAtmosphere_TaskId, 1, nAprilFoolsDayAtmosphere_UserId)
		end	
	end
	
	-- 判断是否在跨服
	local nAprilFoolsDayAtmosphere_ServerId = Get_UserServerId(nAprilFoolsDayAtmosphere_UserId)
	
	-- 不在跨服
	if not User_IsCross(nAprilFoolsDayAtmosphere_UserId) then
		-- 循环三次发奖
		for i = 1 ,3 do
			-- 判断背包空间
			if not User_CheckLeftSpace(1, nAprilFoolsDayAtmosphere_UserId) then
				return
			end
			--发奖
			RewardTemplate_NewRandom(tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Boss"],1,nAprilFoolsDayAtmosphere_UserId)
		end
	else
	-- 在跨服	
		-- 循环三次发奖
		for i = 1 ,3 do
			-- 判断背包空间
			if not User_CheckLeftSpace(1, nAprilFoolsDayAtmosphere_UserId) then
				return
			end
			local fAprilFoolsDayAtmosphere_Chk,tAprilFoolsDayAtmosphere_Award = Probabil_RandomAward(tAprilFoolsDayAtmosphere_Data["Reward"]["Drop"]["Boss"], 1)
			if tAprilFoolsDayAtmosphere_Award[1]["tAward"][1]["RewardItem"] == nil then
				return
			end
			local nAprilFoolsDayAtmosphere_ItemId = tAprilFoolsDayAtmosphere_Award[1]["tAward"][1]["RewardItem"][1]["Id"]
			local nAprilFoolsDayAtmosphere_ItemNum = tAprilFoolsDayAtmosphere_Award[1]["tAward"][1]["ItemNum"]
			local nAprilFoolsDayAtmosphere_Monopoly = 0
			if nAprilFoolsDayAtmosphere_ItemId == tAprilFoolsDayAtmosphere_Cont["Boss"][2] then
				nAprilFoolsDayAtmosphere_Monopoly = 3
			end
			--发奖
			if Item_AddAsynOSItem(nAprilFoolsDayAtmosphere_ItemId, nAprilFoolsDayAtmosphere_Monopoly, nAprilFoolsDayAtmosphere_ItemNum, 10000, 0, nAprilFoolsDayAtmosphere_UserOldId, nAprilFoolsDayAtmosphere_ServerId) then
				local sAprilFoolsDayAtmosphere_Log = string.format(tAprilFoolsDayAtmosphere_Log[nAprilFoolsDayAtmosphere_ItemId], nAprilFoolsDayAtmosphere_ItemId)
				Sys_SaveActionFestivalLog(sAprilFoolsDayAtmosphere_Log)
			end
		end
	end
end
-- 打开商店
function AprilFoolsDayAtmosphere_Shop(nAprilFoolsDayAtmosphere_NpcId)
	-- 活动过期
	if not Sys_ChkFullTime(tActivityTime["AprilFoolsDay"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nAprilFoolsDayAtmosphere_NpcId,"1-2")
		return false
	end
	
	-- 打开天石商店
	User_OpenDialog(0,nAprilFoolsDayAtmosphere_NpcId)
	return true
end
--上线自动接任务 1为愚人节引导任务 2为记录跨服物品掉落数量数据
function AprilFoolsDayAtmosphere_Login()
	local nAprilFoolsDayAtmosphere_UserId = Get_UserId()
	local nAprilFoolsDayAtmosphere_TaskId1 = tAprilFoolsDayAtmosphere_Cont["ActivityTaskId"]
	local nAprilFoolsDayAtmosphere_TaskId2 = tAprilFoolsDayAtmosphere_Cont["TaskId"]
	local nAprilFoolsDayAtmosphere_Level = tAprilFoolsDayAtmosphere_Cont["Level"]
	local nAprilFoolsDayAtmosphere_Metempsychosis = tAprilFoolsDayAtmosphere_Cont["Metempsychosis"]

	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["AprilFoolsDay"]["ActivityTime"]) then
		if Task_ChkTaskDetail(nAprilFoolsDayAtmosphere_TaskId1,0) then
			Task_DelTaskDetail(nAprilFoolsDayAtmosphere_TaskId1)
		end
		if Task_ChkTaskDetail(nAprilFoolsDayAtmosphere_TaskId2,0) then
			Task_DelTaskDetail(nAprilFoolsDayAtmosphere_TaskId2)
		end
		return
	end

	--等级判断
	if not User_JudgeLevelAndMetempsychosis(nAprilFoolsDayAtmosphere_Level,nAprilFoolsDayAtmosphere_Metempsychosis,nAprilFoolsDayAtmosphere_UserId) then
		return
	end

	--未接受任务则自动接任务
	if not Task_ChkTaskDetail(nAprilFoolsDayAtmosphere_TaskId1,0) then
		Task_AddTaskDetail(nAprilFoolsDayAtmosphere_TaskId1,0)
	end
	if not Task_ChkTaskDetail(nAprilFoolsDayAtmosphere_TaskId2,0) then
		Task_AddTaskDetail(nAprilFoolsDayAtmosphere_TaskId2,0)
	end
end
--任务完成接口
function AprilFoolsDayAtmosphere_TaskComplete()
	local nAprilFoolsDayAtmosphere_UserId = Get_UserId()
	local nAprilFoolsDayAtmosphere_TaskId = tAprilFoolsDayAtmosphere_Cont["ActivityTaskId"]


	--判断是否接受任务
	if not Task_ChkTaskDetail(nAprilFoolsDayAtmosphere_TaskId,nAprilFoolsDayAtmosphere_UserId) then
		return
	end

	--判断任务完成
	if Task_ChkTaskDetailValue(nAprilFoolsDayAtmosphere_TaskId,"CompleteFlag",">=",1,nAprilFoolsDayAtmosphere_UserId) then
		return
	end
	-- 完成任务
	Task_SetTaskDetailCompleteFlag(nAprilFoolsDayAtmosphere_TaskId,1, nAprilFoolsDayAtmosphere_UserId)
	--播放光效
	User_EffectAdd("self",tAprilFoolsDayAtmosphere_Cont["TaskEffect"])
end
-- 上线补发碎片
function AprilFoolsDayAtmosphere_LoginReward()
	local nAprilFoolsDayAtmosphere_UserId = Get_UserId()
	local nAprilFoolsDayAtmosphere_Level = tAprilFoolsDayAtmosphere_Cont["MonsterLevel"]
	local nAprilFoolsDayAtmosphere_Metempsychosis = tAprilFoolsDayAtmosphere_Cont["MonsterMetempsychosis"]
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["AprilFoolsDay"]["CompensationTime"]) then
		return
	end
	--等级判断
	if not User_JudgeLevelAndMetempsychosis(nAprilFoolsDayAtmosphere_Level,nAprilFoolsDayAtmosphere_Metempsychosis,nAprilFoolsDayAtmosphere_UserId) then
		return
	end
	local nAprilFoolsDayAtmosphere_Event = tAprilFoolsDayAtmosphere_Stc[3]["EventType"]
	local nAprilFoolsDayAtmosphere_Type = tAprilFoolsDayAtmosphere_Stc[3]["TypeData"]
	--隔天
	if Task_StcInterval(nAprilFoolsDayAtmosphere_Event,nAprilFoolsDayAtmosphere_Type,1,4,nAprilFoolsDayAtmosphere_UserId) then
		Task_SetStatistic(nAprilFoolsDayAtmosphere_Event,nAprilFoolsDayAtmosphere_Type,0,1,nAprilFoolsDayAtmosphere_UserId)
		Task_SetStcTimestamp(nAprilFoolsDayAtmosphere_Event,nAprilFoolsDayAtmosphere_Type,0,nAprilFoolsDayAtmosphere_UserId)
	end
	
	-- 已领取
	if Task_ChkStcValue(nAprilFoolsDayAtmosphere_Event, nAprilFoolsDayAtmosphere_Type, ">", 0) then
		return
	end
	local sAprilFoolsDayAtmosphere_LetterSender = tAprilFoolsDayAtmosphere_Text["Compensation"]["LetterSender"]
	local sAprilFoolsDayAtmosphere_LetterTitle = tAprilFoolsDayAtmosphere_Text["Compensation"]["LetterTitle"]
	local sAprilFoolsDayAtmosphere_Content = tAprilFoolsDayAtmosphere_Text["Compensation"]["Content"]
	if Task_SetStatistic(nAprilFoolsDayAtmosphere_Event, nAprilFoolsDayAtmosphere_Type, 1, 1) then
	Task_SetStcTimestamp(nAprilFoolsDayAtmosphere_Event, nAprilFoolsDayAtmosphere_Type, 0)
	--邮件补发奖励
		Sys_SendMail(nAprilFoolsDayAtmosphere_UserId,0,0,577060,0,7,sAprilFoolsDayAtmosphere_LetterSender,sAprilFoolsDayAtmosphere_LetterTitle,sAprilFoolsDayAtmosphere_Content)
	end
end

----------------------------------NPC部分---------------------------------------------
-- 26037,'财迷鬼',0032,23770,
tNpcFace[2377] = 831
tNpcGossip[26037] = tNpcGossip[26037] or DefaultNpc:new{}
tNpcGossip[26037]["OptionHidden"] = 1
tNpcGossip[26037]["DialogueText"] = tAprilFoolsDayAtmosphere_Text[26037]

--活动时间前
tNpcGossip[26037]["Text1-1"] = {111,112,113,114}
tNpcGossip[26037]["tOption1-1"] = {111}
tNpcGossip[26037]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["AprilFoolsDay"]["ActivityTime"])
end

--活动时间后
tNpcGossip[26037]["Text1-2"] = {121,122}
tNpcGossip[26037]["tOption1-2"] = {121}
tNpcGossip[26037]["ChkFunc1-2"] = function()
	return not Sys_ChkFullTime(tActivityTime["AprilFoolsDay"]["ActivityTime"])
end

--活动时间中
tNpcGossip[26037]["Text1-3"] = {131,132,133,134,135}
tNpcGossip[26037]["tOption1-3"] = {131,132}

tNpcGossip[26037]["OptionFunc131"] = "AprilFoolsDayAtmosphere_Shop</N>26037"
---------------------------------物品部分---------------------------------------------
--3600242  藏宝图碎片
-- tItemFace[3600242] = 2836
tItem[3600242] = tItem[3600242] or {}
tItem[3600242]["Function"] = function(nItemId,sItemName)
	AprilFoolsDayAtmosphere_SynthesisDebris(3600242,3600243,1)
end
-- tItem[3600242]["DialogueText"] = tAprilFoolsDayAtmosphere_Text[3600242]
--提示打开获得
-- tItem[3600242]["Text1-1"] = {111}
-- tItem[3600242]["tOption1-1"] = {111,112}
-- tItem[3600242]["OptionFunc111"] = "AprilFoolsDayAtmosphere_SynthesisDebris</N>3600242</N>3600243</N>1"

--3600243  藏宝图碎片（赠）
-- tItemFace[3600243] = 2836
tItem[3600243] = tItem[3600243] or {}
tItem[3600243]["Function"] = function(nItemId,sItemName)
	AprilFoolsDayAtmosphere_SynthesisDebris(3600243,3600242,2)
end
-- tItem[3600243]["DialogueText"] = tAprilFoolsDayAtmosphere_Text[3600242]
--提示打开获得
-- tItem[3600243]["Text1-1"] = {111}
-- tItem[3600243]["tOption1-1"] = {111,112}
-- tItem[3600243]["OptionFunc111"] = "AprilFoolsDayAtmosphere_SynthesisDebris</N>3600243</N>3600242</N>2"

---------------------------------------------怪物模块---------------------------------------------
-- 击杀神龙岛跟古神灵境 小怪掉落（普通服）
local tAprilFoolsDayAtmosphere_Monster = {}
	tAprilFoolsDayAtmosphere_Monster["ActivityTime"] = tActivityTime["AprilFoolsDay"]["ActivityTime"]
	tAprilFoolsDayAtmosphere_Monster["Function"] = AprilFoolsDayAtmosphere_KillMonster
	tAprilFoolsDayAtmosphere_Monster["MonsterId"] = {6299,3973,3974,3975,3979,3980,3981,3982,3983,3984,3985,3986,3992,4709,4710,4711,4712,4713,4720,4912,4935,5747,8415,8420,3967,3968,3969,4151}
table.insert(tMonsterDrop_AreaLoad,tAprilFoolsDayAtmosphere_Monster)
-- 击杀噩梦回廊怪物掉落（激情服）
local tAprilFoolsDayAtmosphere_Monster_NoGift = {}
	tAprilFoolsDayAtmosphere_Monster_NoGift["ActivityTime"] = tActivityTime["AprilFoolsDay"]["ActivityTime"]
	tAprilFoolsDayAtmosphere_Monster_NoGift["Function"] = AprilFoolsDayAtmosphere_KillMonster
	tAprilFoolsDayAtmosphere_Monster_NoGift["MonsterId"] = {5018,5019,5020,5021,5022,5023,5024,5025,5026,5027,5028,5029,5030,5031,5032,5033,5034,5035,5036,5278,5279,5280,5281,5282,5283,5284,5285,5286,5287,5288,5289,5290,5291,5292,5293,5294,5295,5296,5309,5310,5311,5312,5313,5314,5315,5316,5317,5318,5319,5320,5321,5322,5323,5324,5325,5326,5327,5339,5340,5341,5342,5343,5344,5345,5346,5347,5348,5349,5350,5351,5352,5353,5354,5747}
table.insert(tMonsterDrop_AreaLoad_NoGift,tAprilFoolsDayAtmosphere_Monster_NoGift)


-- 愚人节地图精英掉落
local tAprilFoolsDayAtmosphere_EliteMonster = {}
	tAprilFoolsDayAtmosphere_EliteMonster["ActivityTime"] = tActivityTime["AprilFoolsDay"]["ActivityTime"]
	tAprilFoolsDayAtmosphere_EliteMonster["Function"] = AprilFoolsDayAtmosphere_KillEliteMonster
	tAprilFoolsDayAtmosphere_EliteMonster["MonsterId"] = {6300}
table.insert(tMonsterDrop_AreaLoad,tAprilFoolsDayAtmosphere_EliteMonster)

-- 愚人节地图boss掉落
local tAprilFoolsDayAtmosphere_Boss = {}
	tAprilFoolsDayAtmosphere_Boss["ActivityTime"] = tActivityTime["AprilFoolsDay"]["ActivityTime"]
	tAprilFoolsDayAtmosphere_Boss["Function"] = AprilFoolsDayAtmosphere_KillBoss
	tAprilFoolsDayAtmosphere_Boss["MonsterId"] = {6301}
table.insert(tMonsterDrop_AreaLoad,tAprilFoolsDayAtmosphere_Boss)
---------------------------------------------上线触发---------------------------------------------
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,AprilFoolsDayAtmosphere_Login)

tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,AprilFoolsDayAtmosphere_LoginReward)
---------------------------------------------时间自检---------------------------------------------


tGlobalData_Info[54277] = {}
tGlobalData_Info[54277]["Time"] = {}
tGlobalData_Info[54277]["Time"]["ActivityTime"] = tActivityTime["AprilFoolsDay"]["ActivityTime"]
tGlobalData_Info[54277]["Time"]["ClearTime"] = "00:00 00:05"
tGlobalData_Info[54277]["Rest"] = {}
tGlobalData_Info[54277]["Rest"]["GlobalId"] = {54277}
tGlobalData_Info[54277]["Rest"]["Pos"] = {0}