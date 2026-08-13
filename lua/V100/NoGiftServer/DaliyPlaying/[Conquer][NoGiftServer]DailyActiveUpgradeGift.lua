------------------------------------------------------------------------------------
--Name:		180926[简体征服][任务脚本]无赠品服务器制作日常玩法
--Creator: 	兰瑞妹
--Created:	2018/09/27
------------------------------------------------------------------------------------
-- 需求
-- 3.1、签到礼包奖励修改：根据等级和战斗力给随机奖励（经验、双倍、装备、流星），累积签到给更好的礼包
-- 3.2、在线奖励修改：就是活跃度奖励改一下即可（普通服非2转的也要改一下了），日常完成令直接给玩家7个正气令
-- 3.3、新升级礼包：每级都有奖励，每隔10级变一次奖励

-- 命名前缀
-- DailyActive_UpgradeGift_

-- logid 12001176

-- 常量表
local tDailyActive_UpgradeGift_Count = {}
	-- 删除日常礼包的空间
	tDailyActive_UpgradeGift_Count["DelSpace"] = 1
	
	-- 每日签到礼包--等级判断
	tDailyActive_UpgradeGift_Count["DaliyLevel"] = 0
	tDailyActive_UpgradeGift_Count["DaliyMete"] = 2
	
	-- 高级签到礼包--等级判断
	tDailyActive_UpgradeGift_Count["HighLevel"] = 120
	tDailyActive_UpgradeGift_Count["HighMete"] = 2
	
-- Log表
local tDailyActive_UpgradeGift_Log = {}
	-- 过期删除
	tDailyActive_UpgradeGift_Log["OverDue"] = "0,0,%d,1,12001176,2,0,0"

-- 签到礼包
local tDailyActive_UpgradeGift_DailyReward = {}
	-- 3100011	每日签到礼包
	tDailyActive_UpgradeGift_DailyReward[3100011] = {}
	-- 每日签到礼包（2转以下）
	tDailyActive_UpgradeGift_DailyReward[3100011][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100011][1]["ItemChanceSum"] = 10000
	-- 100点修行值包	3303062	1				33.00%
	tDailyActive_UpgradeGift_DailyReward[3100011][1][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100011][1][1]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100011][1][1]["ItemChance"] = 3300
	tDailyActive_UpgradeGift_DailyReward[3100011][1][1]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100011][1][1]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100011][1][1]["RewardItem"][1]["Id"] = 3303062
	tDailyActive_UpgradeGift_DailyReward[3100011][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tDailyActive_UpgradeGift_DailyReward[3100011][1][1]["Log"] = "0,0,3100011,1,12001176,2,3303062,1"
	tDailyActive_UpgradeGift_DailyReward[3100011][1][1]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100011][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 昆仑雪水	3003677	1	赠			33.00%
	tDailyActive_UpgradeGift_DailyReward[3100011][1][2] = {}
	tDailyActive_UpgradeGift_DailyReward[3100011][1][2]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100011][1][2]["ItemChance"] = 3300
	tDailyActive_UpgradeGift_DailyReward[3100011][1][2]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100011][1][2]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100011][1][2]["RewardItem"][1]["Id"] = 3003677
	tDailyActive_UpgradeGift_DailyReward[3100011][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tDailyActive_UpgradeGift_DailyReward[3100011][1][2]["Log"] = "0,0,3100011,1,12001176,2,3003677,1"
	tDailyActive_UpgradeGift_DailyReward[3100011][1][2]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100011][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 1天祝福时间	直接给	1				34.00%
	tDailyActive_UpgradeGift_DailyReward[3100011][1][3] = {}
	tDailyActive_UpgradeGift_DailyReward[3100011][1][3]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100011][1][3]["ItemChance"] = 3400
	tDailyActive_UpgradeGift_DailyReward[3100011][1][3]["RewardBless"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100011][1][3]["RewardBless"]["Value"] = 24
	tDailyActive_UpgradeGift_DailyReward[3100011][1][3]["Log"] = "0,0,3100011,1,12001176,2,5,24"
	tDailyActive_UpgradeGift_DailyReward[3100011][1][3]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100011][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 每日签到礼包（2转）
	tDailyActive_UpgradeGift_DailyReward[3100011][2] = {}
	tDailyActive_UpgradeGift_DailyReward[3100011][2]["ItemChanceSum"] = 10000
	-- 150点修行值	直接给	1				14.00%
	tDailyActive_UpgradeGift_DailyReward[3100011][2][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100011][2][1]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100011][2][1]["ItemChance"] = 1400
	tDailyActive_UpgradeGift_DailyReward[3100011][2][1]["RewardCultivation"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100011][2][1]["RewardCultivation"]["Value"] = 150
	tDailyActive_UpgradeGift_DailyReward[3100011][2][1]["Log"] = "0,0,3100011,1,12001176,2,6,150"
	tDailyActive_UpgradeGift_DailyReward[3100011][2][1]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100011][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 100修为值	直接给	1				13.00%
	tDailyActive_UpgradeGift_DailyReward[3100011][2][2] = {}
	tDailyActive_UpgradeGift_DailyReward[3100011][2][2]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100011][2][2]["ItemChance"] = 1300
	tDailyActive_UpgradeGift_DailyReward[3100011][2][2]["RewardRepairValue"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100011][2][2]["RewardRepairValue"]["Value"] = 100
	tDailyActive_UpgradeGift_DailyReward[3100011][2][2]["Log"] = "0,0,3100011,1,12001176,2,19,100"
	tDailyActive_UpgradeGift_DailyReward[3100011][2][2]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100011][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 强效护心丹	3002030	1				8.00%
	tDailyActive_UpgradeGift_DailyReward[3100011][2][3] = {}
	tDailyActive_UpgradeGift_DailyReward[3100011][2][3]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100011][2][3]["ItemChance"] = 800
	tDailyActive_UpgradeGift_DailyReward[3100011][2][3]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100011][2][3]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100011][2][3]["RewardItem"][1]["Id"] = 3002030
	tDailyActive_UpgradeGift_DailyReward[3100011][2][3]["RewardItem"][1]["Attr"] = "0 1"
	tDailyActive_UpgradeGift_DailyReward[3100011][2][3]["Log"] = "0,0,3100011,1,12001176,2,3002030,1"
	tDailyActive_UpgradeGift_DailyReward[3100011][2][3]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100011][2][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 100点气力值包	3002027	1				13.00%
	tDailyActive_UpgradeGift_DailyReward[3100011][2][4] = {}
	tDailyActive_UpgradeGift_DailyReward[3100011][2][4]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100011][2][4]["ItemChance"] = 1300
	tDailyActive_UpgradeGift_DailyReward[3100011][2][4]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100011][2][4]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100011][2][4]["RewardItem"][1]["Id"] = 3002027
	tDailyActive_UpgradeGift_DailyReward[3100011][2][4]["RewardItem"][1]["Attr"] = "0 1"
	tDailyActive_UpgradeGift_DailyReward[3100011][2][4]["Log"] = "0,0,3100011,1,12001176,2,3002027,1"
	tDailyActive_UpgradeGift_DailyReward[3100011][2][4]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100011][2][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 通神丹	3003125	1	赠			8.00%
	tDailyActive_UpgradeGift_DailyReward[3100011][2][5] = {}
	tDailyActive_UpgradeGift_DailyReward[3100011][2][5]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100011][2][5]["ItemChance"] = 800
	tDailyActive_UpgradeGift_DailyReward[3100011][2][5]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100011][2][5]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100011][2][5]["RewardItem"][1]["Id"] = 3003125
	tDailyActive_UpgradeGift_DailyReward[3100011][2][5]["RewardItem"][1]["Attr"] = "0 1 3"
	tDailyActive_UpgradeGift_DailyReward[3100011][2][5]["Log"] = "0,0,3100011,1,12001176,2,3003125,1"
	tDailyActive_UpgradeGift_DailyReward[3100011][2][5]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100011][2][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 江湖豪侠令	3310804	2				12.00%
	tDailyActive_UpgradeGift_DailyReward[3100011][2][6] = {}
	tDailyActive_UpgradeGift_DailyReward[3100011][2][6]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100011][2][6]["ItemChance"] = 1200
	tDailyActive_UpgradeGift_DailyReward[3100011][2][6]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100011][2][6]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100011][2][6]["RewardItem"][1]["Id"] = 3310804
	tDailyActive_UpgradeGift_DailyReward[3100011][2][6]["RewardItem"][1]["Attr"] = "0 2"
	tDailyActive_UpgradeGift_DailyReward[3100011][2][6]["Log"] = "0,0,3100011,1,12001176,2,3310804,2"
	tDailyActive_UpgradeGift_DailyReward[3100011][2][6]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100011][2][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹	4060001	1	赠			12.00%
	tDailyActive_UpgradeGift_DailyReward[3100011][2][7] = {}
	tDailyActive_UpgradeGift_DailyReward[3100011][2][7]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100011][2][7]["ItemChance"] = 1200
	tDailyActive_UpgradeGift_DailyReward[3100011][2][7]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100011][2][7]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100011][2][7]["RewardItem"][1]["Id"] = 4060001
	tDailyActive_UpgradeGift_DailyReward[3100011][2][7]["RewardItem"][1]["Attr"] = "0 1 3"
	tDailyActive_UpgradeGift_DailyReward[3100011][2][7]["Log"] = "0,0,3100011,1,12001176,2,4060001,1"
	tDailyActive_UpgradeGift_DailyReward[3100011][2][7]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100011][2][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 免费强炼丹	3003124	1	赠			12.00%
	tDailyActive_UpgradeGift_DailyReward[3100011][2][8] = {}
	tDailyActive_UpgradeGift_DailyReward[3100011][2][8]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100011][2][8]["ItemChance"] = 1200
	tDailyActive_UpgradeGift_DailyReward[3100011][2][8]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100011][2][8]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100011][2][8]["RewardItem"][1]["Id"] = 3003124
	tDailyActive_UpgradeGift_DailyReward[3100011][2][8]["RewardItem"][1]["Attr"] = "0 1 3"
	tDailyActive_UpgradeGift_DailyReward[3100011][2][8]["Log"] = "0,0,3100011,1,12001176,2,3003124,1"
	tDailyActive_UpgradeGift_DailyReward[3100011][2][8]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100011][2][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 八宝护气丹（碎片）	3007269	1				8.00%
	tDailyActive_UpgradeGift_DailyReward[3100011][2][9] = {}
	tDailyActive_UpgradeGift_DailyReward[3100011][2][9]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100011][2][9]["ItemChance"] = 800
	tDailyActive_UpgradeGift_DailyReward[3100011][2][9]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100011][2][9]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100011][2][9]["RewardItem"][1]["Id"] = 3007269
	tDailyActive_UpgradeGift_DailyReward[3100011][2][9]["RewardItem"][1]["Attr"] = "0 1"
	tDailyActive_UpgradeGift_DailyReward[3100011][2][9]["Log"] = "0,0,3100011,1,12001176,2,3007269,1"
	tDailyActive_UpgradeGift_DailyReward[3100011][2][9]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100011][2][9]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 3100012	高级签到礼盒
	tDailyActive_UpgradeGift_DailyReward[3100012] = {}
	-- 高级签到礼盒（2转120以下）
	tDailyActive_UpgradeGift_DailyReward[3100012][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][1]["ItemChanceSum"] = 10000
	-- 九转神丹碎片	720730	1				2.00%				
	tDailyActive_UpgradeGift_DailyReward[3100012][1][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][1][1]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100012][1][1]["ItemChance"] = 200
	tDailyActive_UpgradeGift_DailyReward[3100012][1][1]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][1][1]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][1][1]["RewardItem"][1]["Id"] = 720730
	tDailyActive_UpgradeGift_DailyReward[3100012][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tDailyActive_UpgradeGift_DailyReward[3100012][1][1]["Log"] = "0,0,3100012,1,12001176,2,720730,1"
	tDailyActive_UpgradeGift_DailyReward[3100012][1][1]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- Blissful20ChiBag	3304318				10.00%				
	tDailyActive_UpgradeGift_DailyReward[3100012][1][2] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][1][2]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100012][1][2]["ItemChance"] = 1000
	tDailyActive_UpgradeGift_DailyReward[3100012][1][2]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][1][2]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][1][2]["RewardItem"][1]["Id"] = 3304318
	tDailyActive_UpgradeGift_DailyReward[3100012][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tDailyActive_UpgradeGift_DailyReward[3100012][1][2]["Log"] = "0,0,3100012,1,12001176,2,3304318,1"
	tDailyActive_UpgradeGift_DailyReward[3100012][1][2]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 洗髓神露	3001045	1				4.00%				
	tDailyActive_UpgradeGift_DailyReward[3100012][1][3] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][1][3]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100012][1][3]["ItemChance"] = 400
	tDailyActive_UpgradeGift_DailyReward[3100012][1][3]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][1][3]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][1][3]["RewardItem"][1]["Id"] = 3001045
	tDailyActive_UpgradeGift_DailyReward[3100012][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tDailyActive_UpgradeGift_DailyReward[3100012][1][3]["Log"] = "0,0,3100012,1,12001176,2,3001045,1"
	tDailyActive_UpgradeGift_DailyReward[3100012][1][3]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 属性密令可选包	3008175	1				5.00%				
	tDailyActive_UpgradeGift_DailyReward[3100012][1][4] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][1][4]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100012][1][4]["ItemChance"] = 500
	tDailyActive_UpgradeGift_DailyReward[3100012][1][4]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][1][4]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][1][4]["RewardItem"][1]["Id"] = 3008175
	tDailyActive_UpgradeGift_DailyReward[3100012][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tDailyActive_UpgradeGift_DailyReward[3100012][1][4]["Log"] = "0,0,3100012,1,12001176,2,3008175,1"
	tDailyActive_UpgradeGift_DailyReward[3100012][1][4]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 百炼天机果	3001044	1				1.00%				
	tDailyActive_UpgradeGift_DailyReward[3100012][1][5] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][1][5]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100012][1][5]["ItemChance"] = 100
	tDailyActive_UpgradeGift_DailyReward[3100012][1][5]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][1][5]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][1][5]["RewardItem"][1]["Id"] = 3001044
	tDailyActive_UpgradeGift_DailyReward[3100012][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tDailyActive_UpgradeGift_DailyReward[3100012][1][5]["Log"] = "0,0,3100012,1,12001176,2,3001044,1"
	tDailyActive_UpgradeGift_DailyReward[3100012][1][5]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 炽热天石碎片	3008727	3				12.00%				
	tDailyActive_UpgradeGift_DailyReward[3100012][1][6] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][1][6]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100012][1][6]["ItemChance"] = 1200
	tDailyActive_UpgradeGift_DailyReward[3100012][1][6]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][1][6]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][1][6]["RewardItem"][1]["Id"] = 3008727
	tDailyActive_UpgradeGift_DailyReward[3100012][1][6]["RewardItem"][1]["Attr"] = "0 3"
	tDailyActive_UpgradeGift_DailyReward[3100012][1][6]["Log"] = "0,0,3100012,1,12001176,2,3008727,3"
	tDailyActive_UpgradeGift_DailyReward[3100012][1][6]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 秘制免费修炼丹	3002926	1				15.00%				
	tDailyActive_UpgradeGift_DailyReward[3100012][1][7] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][1][7]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100012][1][7]["ItemChance"] = 1500
	tDailyActive_UpgradeGift_DailyReward[3100012][1][7]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][1][7]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][1][7]["RewardItem"][1]["Id"] = 3002926
	tDailyActive_UpgradeGift_DailyReward[3100012][1][7]["RewardItem"][1]["Attr"] = "0 1"
	tDailyActive_UpgradeGift_DailyReward[3100012][1][7]["Log"] = "0,0,3100012,1,12001176,2,3002926,1"
	tDailyActive_UpgradeGift_DailyReward[3100012][1][7]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石	3200864	1				15.00%				
	tDailyActive_UpgradeGift_DailyReward[3100012][1][8] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][1][8]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100012][1][8]["ItemChance"] = 1500
	tDailyActive_UpgradeGift_DailyReward[3100012][1][8]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][1][8]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][1][8]["RewardItem"][1]["Id"] = 3200864
	tDailyActive_UpgradeGift_DailyReward[3100012][1][8]["RewardItem"][1]["Attr"] = "0 1"
	tDailyActive_UpgradeGift_DailyReward[3100012][1][8]["Log"] = "0,0,3100012,1,12001176,2,3200864,1"
	tDailyActive_UpgradeGift_DailyReward[3100012][1][8]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][1][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 200点气力值包	3200660	1				16.00%				
	tDailyActive_UpgradeGift_DailyReward[3100012][1][9] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][1][9]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100012][1][9]["ItemChance"] = 1600
	tDailyActive_UpgradeGift_DailyReward[3100012][1][9]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][1][9]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][1][9]["RewardItem"][1]["Id"] = 3200660
	tDailyActive_UpgradeGift_DailyReward[3100012][1][9]["RewardItem"][1]["Attr"] = "0 1"
	tDailyActive_UpgradeGift_DailyReward[3100012][1][9]["Log"] = "0,0,3100012,1,12001176,2,3200660,1"
	tDailyActive_UpgradeGift_DailyReward[3100012][1][9]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][1][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 房屋设计图	3100046	3				10.00%				
	tDailyActive_UpgradeGift_DailyReward[3100012][1][10] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][1][10]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100012][1][10]["ItemChance"] = 1000
	tDailyActive_UpgradeGift_DailyReward[3100012][1][10]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][1][10]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][1][10]["RewardItem"][1]["Id"] = 3100046
	tDailyActive_UpgradeGift_DailyReward[3100012][1][10]["RewardItem"][1]["Attr"] = "0 3"
	tDailyActive_UpgradeGift_DailyReward[3100012][1][10]["Log"] = "0,0,3100012,1,12001176,2,3100046,3"
	tDailyActive_UpgradeGift_DailyReward[3100012][1][10]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][1][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 1200分钟经验	3303076	1				10.00%				2转120以上才概率出，否则给300修为
	tDailyActive_UpgradeGift_DailyReward[3100012][1][11] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][1][11]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100012][1][11]["ItemChance"] = 1000
	tDailyActive_UpgradeGift_DailyReward[3100012][1][11]["RewardRepairValue"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][1][11]["RewardRepairValue"]["Value"] = 300
	tDailyActive_UpgradeGift_DailyReward[3100012][1][11]["Log"] = "0,0,3100012,1,12001176,2,19,300"
	tDailyActive_UpgradeGift_DailyReward[3100012][1][11]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][1][11]["RewardEffect"]["Effect"] = "angelwing"
	-- 高级签到礼盒（2转120以上）
	tDailyActive_UpgradeGift_DailyReward[3100012][2] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][2]["ItemChanceSum"] = 10000
	-- 九转神丹碎片	720730	1				2.00%				
	tDailyActive_UpgradeGift_DailyReward[3100012][2][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][2][1]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100012][2][1]["ItemChance"] = 200
	tDailyActive_UpgradeGift_DailyReward[3100012][2][1]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][2][1]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][2][1]["RewardItem"][1]["Id"] = 720730
	tDailyActive_UpgradeGift_DailyReward[3100012][2][1]["RewardItem"][1]["Attr"] = "0 1"
	tDailyActive_UpgradeGift_DailyReward[3100012][2][1]["Log"] = "0,0,3100012,1,12001176,2,720730,1"
	tDailyActive_UpgradeGift_DailyReward[3100012][2][1]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- Blissful20ChiBag	3304318	1				10.00%				
	tDailyActive_UpgradeGift_DailyReward[3100012][2][2] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][2][2]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100012][2][2]["ItemChance"] = 1000
	tDailyActive_UpgradeGift_DailyReward[3100012][2][2]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][2][2]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][2][2]["RewardItem"][1]["Id"] = 3304318
	tDailyActive_UpgradeGift_DailyReward[3100012][2][2]["RewardItem"][1]["Attr"] = "0 1"
	tDailyActive_UpgradeGift_DailyReward[3100012][2][2]["Log"] = "0,0,3100012,1,12001176,2,3304318,1"
	tDailyActive_UpgradeGift_DailyReward[3100012][2][2]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 洗髓神露	3001045	1				4.00%				
	tDailyActive_UpgradeGift_DailyReward[3100012][2][3] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][2][3]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100012][2][3]["ItemChance"] = 400
	tDailyActive_UpgradeGift_DailyReward[3100012][2][3]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][2][3]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][2][3]["RewardItem"][1]["Id"] = 3001045
	tDailyActive_UpgradeGift_DailyReward[3100012][2][3]["RewardItem"][1]["Attr"] = "0 1"
	tDailyActive_UpgradeGift_DailyReward[3100012][2][3]["Log"] = "0,0,3100012,1,12001176,2,3001045,1"
	tDailyActive_UpgradeGift_DailyReward[3100012][2][3]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][2][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 属性密令可选包	3008175	1				5.00%				
	tDailyActive_UpgradeGift_DailyReward[3100012][2][4] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][2][4]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100012][2][4]["ItemChance"] = 500
	tDailyActive_UpgradeGift_DailyReward[3100012][2][4]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][2][4]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][2][4]["RewardItem"][1]["Id"] = 3008175
	tDailyActive_UpgradeGift_DailyReward[3100012][2][4]["RewardItem"][1]["Attr"] = "0 1"
	tDailyActive_UpgradeGift_DailyReward[3100012][2][4]["Log"] = "0,0,3100012,1,12001176,2,3008175,1"
	tDailyActive_UpgradeGift_DailyReward[3100012][2][4]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][2][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 百炼天机果	3001044	1				1.00%				
	tDailyActive_UpgradeGift_DailyReward[3100012][2][5] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][2][5]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100012][2][5]["ItemChance"] = 100
	tDailyActive_UpgradeGift_DailyReward[3100012][2][5]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][2][5]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][2][5]["RewardItem"][1]["Id"] = 3001044
	tDailyActive_UpgradeGift_DailyReward[3100012][2][5]["RewardItem"][1]["Attr"] = "0 1"
	tDailyActive_UpgradeGift_DailyReward[3100012][2][5]["Log"] = "0,0,3100012,1,12001176,2,3001044,1"
	tDailyActive_UpgradeGift_DailyReward[3100012][2][5]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][2][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 炽热天石碎片	3008727	3				12.00%				
	tDailyActive_UpgradeGift_DailyReward[3100012][2][6] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][2][6]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100012][2][6]["ItemChance"] = 1200
	tDailyActive_UpgradeGift_DailyReward[3100012][2][6]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][2][6]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][2][6]["RewardItem"][1]["Id"] = 3008727
	tDailyActive_UpgradeGift_DailyReward[3100012][2][6]["RewardItem"][1]["Attr"] = "0 3"
	tDailyActive_UpgradeGift_DailyReward[3100012][2][6]["Log"] = "0,0,3100012,1,12001176,2,3008727,3"
	tDailyActive_UpgradeGift_DailyReward[3100012][2][6]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][2][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 秘制免费修炼丹	3002926	1				15.00%				
	tDailyActive_UpgradeGift_DailyReward[3100012][2][7] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][2][7]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100012][2][7]["ItemChance"] = 1500
	tDailyActive_UpgradeGift_DailyReward[3100012][2][7]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][2][7]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][2][7]["RewardItem"][1]["Id"] = 3002926
	tDailyActive_UpgradeGift_DailyReward[3100012][2][7]["RewardItem"][1]["Attr"] = "0 1"
	tDailyActive_UpgradeGift_DailyReward[3100012][2][7]["Log"] = "0,0,3100012,1,12001176,2,3002926,1"
	tDailyActive_UpgradeGift_DailyReward[3100012][2][7]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][2][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石	3200864	1				15.00%				
	tDailyActive_UpgradeGift_DailyReward[3100012][2][8] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][2][8]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100012][2][8]["ItemChance"] = 1500
	tDailyActive_UpgradeGift_DailyReward[3100012][2][8]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][2][8]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][2][8]["RewardItem"][1]["Id"] = 3200864
	tDailyActive_UpgradeGift_DailyReward[3100012][2][8]["RewardItem"][1]["Attr"] = "0 1"
	tDailyActive_UpgradeGift_DailyReward[3100012][2][8]["Log"] = "0,0,3100012,1,12001176,2,3200864,1"
	tDailyActive_UpgradeGift_DailyReward[3100012][2][8]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][2][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 200点气力值包	3200660	1				16.00%				
	tDailyActive_UpgradeGift_DailyReward[3100012][2][9] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][2][9]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100012][2][9]["ItemChance"] = 1600
	tDailyActive_UpgradeGift_DailyReward[3100012][2][9]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][2][9]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][2][9]["RewardItem"][1]["Id"] = 3200660
	tDailyActive_UpgradeGift_DailyReward[3100012][2][9]["RewardItem"][1]["Attr"] = "0 1"
	tDailyActive_UpgradeGift_DailyReward[3100012][2][9]["Log"] = "0,0,3100012,1,12001176,2,3200660,1"
	tDailyActive_UpgradeGift_DailyReward[3100012][2][9]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][2][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 房屋设计图	3100046	3				10.00%				
	tDailyActive_UpgradeGift_DailyReward[3100012][2][10] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][2][10]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100012][2][10]["ItemChance"] = 1000
	tDailyActive_UpgradeGift_DailyReward[3100012][2][10]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][2][10]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][2][10]["RewardItem"][1]["Id"] = 3100046
	tDailyActive_UpgradeGift_DailyReward[3100012][2][10]["RewardItem"][1]["Attr"] = "0 3"
	tDailyActive_UpgradeGift_DailyReward[3100012][2][10]["Log"] = "0,0,3100012,1,12001176,2,3100046,3"
	tDailyActive_UpgradeGift_DailyReward[3100012][2][10]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][2][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 1200分钟经验	3303076	1				10.00%				2转120以上才概率出，否则给300修为
	tDailyActive_UpgradeGift_DailyReward[3100012][2][11] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][2][11]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100012][2][11]["ItemChance"] = 1000
	tDailyActive_UpgradeGift_DailyReward[3100012][2][11]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][2][11]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][2][11]["RewardItem"][1]["Id"] = 3303076
	tDailyActive_UpgradeGift_DailyReward[3100012][2][11]["RewardItem"][1]["Attr"] = "0 1"
	tDailyActive_UpgradeGift_DailyReward[3100012][2][11]["Log"] = "0,0,3100012,1,12001176,2,3303076,1"
	tDailyActive_UpgradeGift_DailyReward[3100012][2][11]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100012][2][11]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 3100013	2天满勤大礼包
	tDailyActive_UpgradeGift_DailyReward[3100013] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1]["ItemChanceSum"] = 10000
	-- 春风得意	193225	1	赠	5天		6.25%
	tDailyActive_UpgradeGift_DailyReward[3100013][1][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][1]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100013][1][1]["ItemChance"] = 625
	tDailyActive_UpgradeGift_DailyReward[3100013][1][1]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][1]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][1]["RewardItem"][1]["Id"] = 193225
	tDailyActive_UpgradeGift_DailyReward[3100013][1][1]["RewardItem"][1]["Attr"] = "0 1 3 7200 1 0 0 1"
	tDailyActive_UpgradeGift_DailyReward[3100013][1][1]["Log"] = "0,0,3100013,1,12001176,2,193225,1"
	tDailyActive_UpgradeGift_DailyReward[3100013][1][1]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 洋洋得意	193205	1	赠	5天		6.25%
	tDailyActive_UpgradeGift_DailyReward[3100013][1][2] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][2]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100013][1][2]["ItemChance"] = 625
	tDailyActive_UpgradeGift_DailyReward[3100013][1][2]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][2]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][2]["RewardItem"][1]["Id"] = 193205
	tDailyActive_UpgradeGift_DailyReward[3100013][1][2]["RewardItem"][1]["Attr"] = "0 1 3 7200 1 0 0 1"
	tDailyActive_UpgradeGift_DailyReward[3100013][1][2]["Log"] = "0,0,3100013,1,12001176,2,193205,1"
	tDailyActive_UpgradeGift_DailyReward[3100013][1][2]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 龙凤呈祥	192575	1	赠	5天		6.25%
	tDailyActive_UpgradeGift_DailyReward[3100013][1][3] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][3]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100013][1][3]["ItemChance"] = 625
	tDailyActive_UpgradeGift_DailyReward[3100013][1][3]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][3]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][3]["RewardItem"][1]["Id"] = 192575
	tDailyActive_UpgradeGift_DailyReward[3100013][1][3]["RewardItem"][1]["Attr"] = "0 1 3 7200 1 0 0 1"
	tDailyActive_UpgradeGift_DailyReward[3100013][1][3]["Log"] = "0,0,3100013,1,12001176,2,192575,1"
	tDailyActive_UpgradeGift_DailyReward[3100013][1][3]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 情人之类	192565	1	赠	5天		6.25%
	tDailyActive_UpgradeGift_DailyReward[3100013][1][4] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][4]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100013][1][4]["ItemChance"] = 625
	tDailyActive_UpgradeGift_DailyReward[3100013][1][4]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][4]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][4]["RewardItem"][1]["Id"] = 192565
	tDailyActive_UpgradeGift_DailyReward[3100013][1][4]["RewardItem"][1]["Attr"] = "0 1 3 7200 1 0 0 1"
	tDailyActive_UpgradeGift_DailyReward[3100013][1][4]["Log"] = "0,0,3100013,1,12001176,2,192565,1"
	tDailyActive_UpgradeGift_DailyReward[3100013][1][4]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 烈火柔情	188495	1	赠	5天		6.25%
	tDailyActive_UpgradeGift_DailyReward[3100013][1][5] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][5]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100013][1][5]["ItemChance"] = 625
	tDailyActive_UpgradeGift_DailyReward[3100013][1][5]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][5]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][5]["RewardItem"][1]["Id"] = 188495
	tDailyActive_UpgradeGift_DailyReward[3100013][1][5]["RewardItem"][1]["Attr"] = "0 1 3 7200 1 0 0 1"
	tDailyActive_UpgradeGift_DailyReward[3100013][1][5]["Log"] = "0,0,3100013,1,12001176,2,188495,1"
	tDailyActive_UpgradeGift_DailyReward[3100013][1][5]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 蝶恋花	193695	1	赠	5天		6.25%
	tDailyActive_UpgradeGift_DailyReward[3100013][1][6] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][6]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100013][1][6]["ItemChance"] = 625
	tDailyActive_UpgradeGift_DailyReward[3100013][1][6]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][6]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][6]["RewardItem"][1]["Id"] = 193695
	tDailyActive_UpgradeGift_DailyReward[3100013][1][6]["RewardItem"][1]["Attr"] = "0 1 3 7200 1 0 0 1"
	tDailyActive_UpgradeGift_DailyReward[3100013][1][6]["Log"] = "0,0,3100013,1,12001176,2,193695,1"
	tDailyActive_UpgradeGift_DailyReward[3100013][1][6]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 喵基尼【魅力版】	193555	1	赠	5天		6.25%
	tDailyActive_UpgradeGift_DailyReward[3100013][1][7] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][7]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100013][1][7]["ItemChance"] = 625
	tDailyActive_UpgradeGift_DailyReward[3100013][1][7]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][7]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][7]["RewardItem"][1]["Id"] = 193555
	tDailyActive_UpgradeGift_DailyReward[3100013][1][7]["RewardItem"][1]["Attr"] = "0 1 3 7200 1 0 0 1"
	tDailyActive_UpgradeGift_DailyReward[3100013][1][7]["Log"] = "0,0,3100013,1,12001176,2,193555,1"
	tDailyActive_UpgradeGift_DailyReward[3100013][1][7]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 梦幻仙缘	192145	1	赠	5天		6.25%
	tDailyActive_UpgradeGift_DailyReward[3100013][1][8] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][8]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100013][1][8]["ItemChance"] = 625
	tDailyActive_UpgradeGift_DailyReward[3100013][1][8]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][8]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][8]["RewardItem"][1]["Id"] = 192145
	tDailyActive_UpgradeGift_DailyReward[3100013][1][8]["RewardItem"][1]["Attr"] = "0 1 3 7200 1 0 0 1"
	tDailyActive_UpgradeGift_DailyReward[3100013][1][8]["Log"] = "0,0,3100013,1,12001176,2,192145,1"
	tDailyActive_UpgradeGift_DailyReward[3100013][1][8]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 灵犀玉麒麟	200453	1	赠	5天		6.00%
	tDailyActive_UpgradeGift_DailyReward[3100013][1][9] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][9]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100013][1][9]["ItemChance"] = 600
	tDailyActive_UpgradeGift_DailyReward[3100013][1][9]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][9]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][9]["RewardItem"][1]["Id"] = 200453
	tDailyActive_UpgradeGift_DailyReward[3100013][1][9]["RewardItem"][1]["Attr"] = "0 1 3 7200 1 0 0 1"
	tDailyActive_UpgradeGift_DailyReward[3100013][1][9]["Log"] = "0,0,3100013,1,12001176,2,200453,1"
	tDailyActive_UpgradeGift_DailyReward[3100013][1][9]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 冰魄灵狮	200481	1	赠	5天		6.00%
	tDailyActive_UpgradeGift_DailyReward[3100013][1][10] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][10]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100013][1][10]["ItemChance"] = 600
	tDailyActive_UpgradeGift_DailyReward[3100013][1][10]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][10]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][10]["RewardItem"][1]["Id"] = 200481
	tDailyActive_UpgradeGift_DailyReward[3100013][1][10]["RewardItem"][1]["Attr"] = "0 1 3 7200 1 0 0 1"
	tDailyActive_UpgradeGift_DailyReward[3100013][1][10]["Log"] = "0,0,3100013,1,12001176,2,200481,1"
	tDailyActive_UpgradeGift_DailyReward[3100013][1][10]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 傲世龙神外套	200421	1	赠	5天		6.00%
	tDailyActive_UpgradeGift_DailyReward[3100013][1][11] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][11]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100013][1][11]["ItemChance"] = 600
	tDailyActive_UpgradeGift_DailyReward[3100013][1][11]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][11]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][11]["RewardItem"][1]["Id"] = 200421
	tDailyActive_UpgradeGift_DailyReward[3100013][1][11]["RewardItem"][1]["Attr"] = "0 1 3 7200 1 0 0 1"
	tDailyActive_UpgradeGift_DailyReward[3100013][1][11]["Log"] = "0,0,3100013,1,12001176,2,200421,1"
	tDailyActive_UpgradeGift_DailyReward[3100013][1][11]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][11]["RewardEffect"]["Effect"] = "angelwing"
	-- 蟠蛇战辕	200471	1	赠	5天		6.00%
	tDailyActive_UpgradeGift_DailyReward[3100013][1][12] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][12]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100013][1][12]["ItemChance"] = 600
	tDailyActive_UpgradeGift_DailyReward[3100013][1][12]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][12]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][12]["RewardItem"][1]["Id"] = 200471
	tDailyActive_UpgradeGift_DailyReward[3100013][1][12]["RewardItem"][1]["Attr"] = "0 1 3 7200 1 0 0 1"
	tDailyActive_UpgradeGift_DailyReward[3100013][1][12]["Log"] = "0,0,3100013,1,12001176,2,200471,1"
	tDailyActive_UpgradeGift_DailyReward[3100013][1][12]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][12]["RewardEffect"]["Effect"] = "angelwing"
	-- 马上有对象	200495	1	赠	5天		5.00%
	tDailyActive_UpgradeGift_DailyReward[3100013][1][13] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][13]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100013][1][13]["ItemChance"] = 500
	tDailyActive_UpgradeGift_DailyReward[3100013][1][13]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][13]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][13]["RewardItem"][1]["Id"] = 200495
	tDailyActive_UpgradeGift_DailyReward[3100013][1][13]["RewardItem"][1]["Attr"] = "0 1 3 7200 1 0 0 1"
	tDailyActive_UpgradeGift_DailyReward[3100013][1][13]["Log"] = "0,0,3100013,1,12001176,2,200495,1"
	tDailyActive_UpgradeGift_DailyReward[3100013][1][13]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][13]["RewardEffect"]["Effect"] = "angelwing"
	-- 开泰宝羚	200525	1	赠	5天		6.00%
	tDailyActive_UpgradeGift_DailyReward[3100013][1][14] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][14]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100013][1][14]["ItemChance"] = 600
	tDailyActive_UpgradeGift_DailyReward[3100013][1][14]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][14]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][14]["RewardItem"][1]["Id"] = 200525
	tDailyActive_UpgradeGift_DailyReward[3100013][1][14]["RewardItem"][1]["Attr"] = "0 1 3 7200 1 0 0 1"
	tDailyActive_UpgradeGift_DailyReward[3100013][1][14]["Log"] = "0,0,3100013,1,12001176,2,200525,1"
	tDailyActive_UpgradeGift_DailyReward[3100013][1][14]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][14]["RewardEffect"]["Effect"] = "angelwing"
	-- 福来哥	200500	1	赠	5天		15.00%
	tDailyActive_UpgradeGift_DailyReward[3100013][1][15] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][15]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100013][1][15]["ItemChance"] = 1500
	tDailyActive_UpgradeGift_DailyReward[3100013][1][15]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][15]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][15]["RewardItem"][1]["Id"] = 200500
	tDailyActive_UpgradeGift_DailyReward[3100013][1][15]["RewardItem"][1]["Attr"] = "0 1 3 7200 1 0 0 1"
	tDailyActive_UpgradeGift_DailyReward[3100013][1][15]["Log"] = "0,0,3100013,1,12001176,2,200500,1"
	tDailyActive_UpgradeGift_DailyReward[3100013][1][15]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100013][1][15]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 3100014	7天满勤大礼包
	tDailyActive_UpgradeGift_DailyReward[3100014] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1]["ItemChanceSum"] = 10000
	-- 春风得意	193225	1	赠	5天		6.66%
	tDailyActive_UpgradeGift_DailyReward[3100014][1][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][1]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100014][1][1]["ItemChance"] = 666
	tDailyActive_UpgradeGift_DailyReward[3100014][1][1]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][1]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][1]["RewardItem"][1]["Id"] = 193225
	tDailyActive_UpgradeGift_DailyReward[3100014][1][1]["RewardItem"][1]["Attr"] = "0 1 3 7200 1 0 0 1"
	tDailyActive_UpgradeGift_DailyReward[3100014][1][1]["Log"] = "0,0,3100014,1,12001176,2,193225,1"
	tDailyActive_UpgradeGift_DailyReward[3100014][1][1]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 洋洋得意	193205	1	赠	5天		6.66%
	tDailyActive_UpgradeGift_DailyReward[3100014][1][2] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][2]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100014][1][2]["ItemChance"] = 666
	tDailyActive_UpgradeGift_DailyReward[3100014][1][2]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][2]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][2]["RewardItem"][1]["Id"] = 193205
	tDailyActive_UpgradeGift_DailyReward[3100014][1][2]["RewardItem"][1]["Attr"] = "0 1 3 7200 1 0 0 1"
	tDailyActive_UpgradeGift_DailyReward[3100014][1][2]["Log"] = "0,0,3100014,1,12001176,2,193205,1"
	tDailyActive_UpgradeGift_DailyReward[3100014][1][2]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 龙凤呈祥	192575	1	赠	5天		6.66%
	tDailyActive_UpgradeGift_DailyReward[3100014][1][3] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][3]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100014][1][3]["ItemChance"] = 666
	tDailyActive_UpgradeGift_DailyReward[3100014][1][3]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][3]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][3]["RewardItem"][1]["Id"] = 192575
	tDailyActive_UpgradeGift_DailyReward[3100014][1][3]["RewardItem"][1]["Attr"] = "0 1 3 7200 1 0 0 1"
	tDailyActive_UpgradeGift_DailyReward[3100014][1][3]["Log"] = "0,0,3100014,1,12001176,2,192575,1"
	tDailyActive_UpgradeGift_DailyReward[3100014][1][3]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 情人之类	192565	1	赠	5天		6.66%
	tDailyActive_UpgradeGift_DailyReward[3100014][1][4] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][4]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100014][1][4]["ItemChance"] = 666
	tDailyActive_UpgradeGift_DailyReward[3100014][1][4]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][4]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][4]["RewardItem"][1]["Id"] = 192565
	tDailyActive_UpgradeGift_DailyReward[3100014][1][4]["RewardItem"][1]["Attr"] = "0 1 3 7200 1 0 0 1"
	tDailyActive_UpgradeGift_DailyReward[3100014][1][4]["Log"] = "0,0,3100014,1,12001176,2,192565,1"
	tDailyActive_UpgradeGift_DailyReward[3100014][1][4]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 烈火柔情	188495	1	赠	5天		6.66%
	tDailyActive_UpgradeGift_DailyReward[3100014][1][5] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][5]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100014][1][5]["ItemChance"] = 666
	tDailyActive_UpgradeGift_DailyReward[3100014][1][5]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][5]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][5]["RewardItem"][1]["Id"] = 188495
	tDailyActive_UpgradeGift_DailyReward[3100014][1][5]["RewardItem"][1]["Attr"] = "0 1 3 7200 1 0 0 1"
	tDailyActive_UpgradeGift_DailyReward[3100014][1][5]["Log"] = "0,0,3100014,1,12001176,2,188495,1"
	tDailyActive_UpgradeGift_DailyReward[3100014][1][5]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 蝶恋花	193695	1	赠	5天		6.66%
	tDailyActive_UpgradeGift_DailyReward[3100014][1][6] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][6]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100014][1][6]["ItemChance"] = 666
	tDailyActive_UpgradeGift_DailyReward[3100014][1][6]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][6]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][6]["RewardItem"][1]["Id"] = 193695
	tDailyActive_UpgradeGift_DailyReward[3100014][1][6]["RewardItem"][1]["Attr"] = "0 1 3 7200 1 0 0 1"
	tDailyActive_UpgradeGift_DailyReward[3100014][1][6]["Log"] = "0,0,3100014,1,12001176,2,193695,1"
	tDailyActive_UpgradeGift_DailyReward[3100014][1][6]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 喵基尼【魅力版】	193555	1	赠	5天		6.66%
	tDailyActive_UpgradeGift_DailyReward[3100014][1][7] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][7]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100014][1][7]["ItemChance"] = 666
	tDailyActive_UpgradeGift_DailyReward[3100014][1][7]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][7]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][7]["RewardItem"][1]["Id"] = 193555
	tDailyActive_UpgradeGift_DailyReward[3100014][1][7]["RewardItem"][1]["Attr"] = "0 1 3 7200 1 0 0 1"
	tDailyActive_UpgradeGift_DailyReward[3100014][1][7]["Log"] = "0,0,3100014,1,12001176,2,193555,1"
	tDailyActive_UpgradeGift_DailyReward[3100014][1][7]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 梦幻仙缘	192145	1	赠	5天		6.66%
	tDailyActive_UpgradeGift_DailyReward[3100014][1][8] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][8]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100014][1][8]["ItemChance"] = 666
	tDailyActive_UpgradeGift_DailyReward[3100014][1][8]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][8]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][8]["RewardItem"][1]["Id"] = 192145
	tDailyActive_UpgradeGift_DailyReward[3100014][1][8]["RewardItem"][1]["Attr"] = "0 1 3 7200 1 0 0 1"
	tDailyActive_UpgradeGift_DailyReward[3100014][1][8]["Log"] = "0,0,3100014,1,12001176,2,192145,1"
	tDailyActive_UpgradeGift_DailyReward[3100014][1][8]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 灵犀玉麒麟	200453	1	赠	5天		6.66%
	tDailyActive_UpgradeGift_DailyReward[3100014][1][9] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][9]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100014][1][9]["ItemChance"] = 666
	tDailyActive_UpgradeGift_DailyReward[3100014][1][9]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][9]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][9]["RewardItem"][1]["Id"] = 200453
	tDailyActive_UpgradeGift_DailyReward[3100014][1][9]["RewardItem"][1]["Attr"] = "0 1 3 7200 1 0 0 1"
	tDailyActive_UpgradeGift_DailyReward[3100014][1][9]["Log"] = "0,0,3100014,1,12001176,2,200453,1"
	tDailyActive_UpgradeGift_DailyReward[3100014][1][9]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 冰魄灵狮	200481	1	赠	5天		6.66%
	tDailyActive_UpgradeGift_DailyReward[3100014][1][10] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][10]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100014][1][10]["ItemChance"] = 666
	tDailyActive_UpgradeGift_DailyReward[3100014][1][10]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][10]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][10]["RewardItem"][1]["Id"] = 200481
	tDailyActive_UpgradeGift_DailyReward[3100014][1][10]["RewardItem"][1]["Attr"] = "0 1 3 7200 1 0 0 1"
	tDailyActive_UpgradeGift_DailyReward[3100014][1][10]["Log"] = "0,0,3100014,1,12001176,2,200481,1"
	tDailyActive_UpgradeGift_DailyReward[3100014][1][10]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 傲世龙神外套	200421	1	赠	5天		6.66%
	tDailyActive_UpgradeGift_DailyReward[3100014][1][11] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][11]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100014][1][11]["ItemChance"] = 666
	tDailyActive_UpgradeGift_DailyReward[3100014][1][11]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][11]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][11]["RewardItem"][1]["Id"] = 200421
	tDailyActive_UpgradeGift_DailyReward[3100014][1][11]["RewardItem"][1]["Attr"] = "0 1 3 7200 1 0 0 1"
	tDailyActive_UpgradeGift_DailyReward[3100014][1][11]["Log"] = "0,0,3100014,1,12001176,2,200421,1"
	tDailyActive_UpgradeGift_DailyReward[3100014][1][11]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][11]["RewardEffect"]["Effect"] = "angelwing"
	-- 蟠蛇战辕	200471	1	赠	5天		6.66%
	tDailyActive_UpgradeGift_DailyReward[3100014][1][12] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][12]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100014][1][12]["ItemChance"] = 666
	tDailyActive_UpgradeGift_DailyReward[3100014][1][12]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][12]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][12]["RewardItem"][1]["Id"] = 200471
	tDailyActive_UpgradeGift_DailyReward[3100014][1][12]["RewardItem"][1]["Attr"] = "0 1 3 7200 1 0 0 1"
	tDailyActive_UpgradeGift_DailyReward[3100014][1][12]["Log"] = "0,0,3100014,1,12001176,2,200471,1"
	tDailyActive_UpgradeGift_DailyReward[3100014][1][12]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][12]["RewardEffect"]["Effect"] = "angelwing"
	-- 马上有对象	200495	1	赠	5天		6.66%
	tDailyActive_UpgradeGift_DailyReward[3100014][1][13] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][13]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100014][1][13]["ItemChance"] = 666
	tDailyActive_UpgradeGift_DailyReward[3100014][1][13]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][13]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][13]["RewardItem"][1]["Id"] = 200495
	tDailyActive_UpgradeGift_DailyReward[3100014][1][13]["RewardItem"][1]["Attr"] = "0 1 3 7200 1 0 0 1"
	tDailyActive_UpgradeGift_DailyReward[3100014][1][13]["Log"] = "0,0,3100014,1,12001176,2,200495,1"
	tDailyActive_UpgradeGift_DailyReward[3100014][1][13]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][13]["RewardEffect"]["Effect"] = "angelwing"
	-- 开泰宝羚	200525	1	赠	5天		6.66%
	tDailyActive_UpgradeGift_DailyReward[3100014][1][14] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][14]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100014][1][14]["ItemChance"] = 666
	tDailyActive_UpgradeGift_DailyReward[3100014][1][14]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][14]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][14]["RewardItem"][1]["Id"] = 200525
	tDailyActive_UpgradeGift_DailyReward[3100014][1][14]["RewardItem"][1]["Attr"] = "0 1 3 7200 1 0 0 1"
	tDailyActive_UpgradeGift_DailyReward[3100014][1][14]["Log"] = "0,0,3100014,1,12001176,2,200525,1"
	tDailyActive_UpgradeGift_DailyReward[3100014][1][14]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][14]["RewardEffect"]["Effect"] = "angelwing"
	-- 福来哥	200500	1	赠	5天		6.76%
	tDailyActive_UpgradeGift_DailyReward[3100014][1][15] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][15]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100014][1][15]["ItemChance"] = 676
	tDailyActive_UpgradeGift_DailyReward[3100014][1][15]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][15]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][15]["RewardItem"][1]["Id"] = 200500
	tDailyActive_UpgradeGift_DailyReward[3100014][1][15]["RewardItem"][1]["Attr"] = "0 1 3 7200 1 0 0 1"
	tDailyActive_UpgradeGift_DailyReward[3100014][1][15]["Log"] = "0,0,3100014,1,12001176,2,200500,1"
	tDailyActive_UpgradeGift_DailyReward[3100014][1][15]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][15]["RewardEffect"]["Effect"] = "angelwing"
	-- 高级签到礼包	3100012	1				100.00%
	-- 炽热天石碎片	3008727	7				100.00%
	tDailyActive_UpgradeGift_DailyReward[3100014][1][16] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][16]["RandomItemChanceType"] = 1
	tDailyActive_UpgradeGift_DailyReward[3100014][1][16]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][16]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][16]["RewardItem"][1]["Id"] = 3100012
	tDailyActive_UpgradeGift_DailyReward[3100014][1][16]["RewardItem"][1]["Attr"] = "0 1"
	tDailyActive_UpgradeGift_DailyReward[3100014][1][16]["RewardItem"][2] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][16]["RewardItem"][2]["Id"] = 3008727
	tDailyActive_UpgradeGift_DailyReward[3100014][1][16]["RewardItem"][2]["Attr"] = "0 7"
	tDailyActive_UpgradeGift_DailyReward[3100014][1][16]["Log"] = "0,0,3100014,1,12001176,2,3100012[3008727],1[7]"
	tDailyActive_UpgradeGift_DailyReward[3100014][1][16]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100014][1][16]["RewardEffect"]["Effect"] = "angelwing"

	-- 3100015	14天满勤大礼包
	tDailyActive_UpgradeGift_DailyReward[3100015] = {}
	tDailyActive_UpgradeGift_DailyReward[3100015][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100015][1]["ItemChanceSum"] = 10000
	-- 高级签到礼包	3100012	1				100.00%
	-- 炽热天石碎片	3008727	7				100.00%
	-- 房屋设计图	3100046	7				100.00%
	tDailyActive_UpgradeGift_DailyReward[3100015][1][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100015][1][1]["RandomItemChanceType"] = 1
	tDailyActive_UpgradeGift_DailyReward[3100015][1][1]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100015][1][1]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100015][1][1]["RewardItem"][1]["Id"] = 3100012
	tDailyActive_UpgradeGift_DailyReward[3100015][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tDailyActive_UpgradeGift_DailyReward[3100015][1][1]["RewardItem"][2] = {}
	tDailyActive_UpgradeGift_DailyReward[3100015][1][1]["RewardItem"][2]["Id"] = 3008727
	tDailyActive_UpgradeGift_DailyReward[3100015][1][1]["RewardItem"][2]["Attr"] = "0 7"
	tDailyActive_UpgradeGift_DailyReward[3100015][1][1]["RewardItem"][3] = {}
	tDailyActive_UpgradeGift_DailyReward[3100015][1][1]["RewardItem"][3]["Id"] = 3100046
	tDailyActive_UpgradeGift_DailyReward[3100015][1][1]["RewardItem"][3]["Attr"] = "0 7"
	tDailyActive_UpgradeGift_DailyReward[3100015][1][1]["Log"] = "0,0,3100015,1,12001176,2,3100012[3008727][3100046],1[7][7]"
	tDailyActive_UpgradeGift_DailyReward[3100015][1][1]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100015][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 属性密令可选包	3008175	1				10.00%
	tDailyActive_UpgradeGift_DailyReward[3100015][1][2] = {}
	tDailyActive_UpgradeGift_DailyReward[3100015][1][2]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100015][1][2]["ItemChance"] = 1000
	tDailyActive_UpgradeGift_DailyReward[3100015][1][2]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100015][1][2]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100015][1][2]["RewardItem"][1]["Id"] = 3008175
	tDailyActive_UpgradeGift_DailyReward[3100015][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tDailyActive_UpgradeGift_DailyReward[3100015][1][2]["Log"] = "0,0,3100015,1,12001176,2,3008175,1"
	tDailyActive_UpgradeGift_DailyReward[3100015][1][2]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100015][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石精装包	3200864	1				20.00%
	tDailyActive_UpgradeGift_DailyReward[3100015][1][3] = {}
	tDailyActive_UpgradeGift_DailyReward[3100015][1][3]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100015][1][3]["ItemChance"] = 2000
	tDailyActive_UpgradeGift_DailyReward[3100015][1][3]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100015][1][3]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100015][1][3]["RewardItem"][1]["Id"] = 3200864
	tDailyActive_UpgradeGift_DailyReward[3100015][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tDailyActive_UpgradeGift_DailyReward[3100015][1][3]["Log"] = "0,0,3100015,1,12001176,2,3200864,1"
	tDailyActive_UpgradeGift_DailyReward[3100015][1][3]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100015][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 200点气力值包	3200660	1				10.00%
	tDailyActive_UpgradeGift_DailyReward[3100015][1][4] = {}
	tDailyActive_UpgradeGift_DailyReward[3100015][1][4]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100015][1][4]["ItemChance"] = 1000
	tDailyActive_UpgradeGift_DailyReward[3100015][1][4]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100015][1][4]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100015][1][4]["RewardItem"][1]["Id"] = 3200660
	tDailyActive_UpgradeGift_DailyReward[3100015][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tDailyActive_UpgradeGift_DailyReward[3100015][1][4]["Log"] = "0,0,3100015,1,12001176,2,3200660,1"
	tDailyActive_UpgradeGift_DailyReward[3100015][1][4]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100015][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 八宝护气丹碎片	3007269	1				20.00%
	tDailyActive_UpgradeGift_DailyReward[3100015][1][5] = {}
	tDailyActive_UpgradeGift_DailyReward[3100015][1][5]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100015][1][5]["ItemChance"] = 2000
	tDailyActive_UpgradeGift_DailyReward[3100015][1][5]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100015][1][5]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100015][1][5]["RewardItem"][1]["Id"] = 3007269
	tDailyActive_UpgradeGift_DailyReward[3100015][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tDailyActive_UpgradeGift_DailyReward[3100015][1][5]["Log"] = "0,0,3100015,1,12001176,2,3007269,1"
	tDailyActive_UpgradeGift_DailyReward[3100015][1][5]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100015][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 秘制免费修炼丹	3002926	1				20.00%
	tDailyActive_UpgradeGift_DailyReward[3100015][1][6] = {}
	tDailyActive_UpgradeGift_DailyReward[3100015][1][6]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100015][1][6]["ItemChance"] = 2000
	tDailyActive_UpgradeGift_DailyReward[3100015][1][6]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100015][1][6]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100015][1][6]["RewardItem"][1]["Id"] = 3002926
	tDailyActive_UpgradeGift_DailyReward[3100015][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tDailyActive_UpgradeGift_DailyReward[3100015][1][6]["Log"] = "0,0,3100015,1,12001176,2,3002926,1"
	tDailyActive_UpgradeGift_DailyReward[3100015][1][6]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100015][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹	4060001	10				20.00%
	tDailyActive_UpgradeGift_DailyReward[3100015][1][7] = {}
	tDailyActive_UpgradeGift_DailyReward[3100015][1][7]["RandomItemChanceType"] = 2
	tDailyActive_UpgradeGift_DailyReward[3100015][1][7]["ItemChance"] = 2000
	tDailyActive_UpgradeGift_DailyReward[3100015][1][7]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100015][1][7]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100015][1][7]["RewardItem"][1]["Id"] = 4060001
	tDailyActive_UpgradeGift_DailyReward[3100015][1][7]["RewardItem"][1]["Attr"] = "0 10 3"
	tDailyActive_UpgradeGift_DailyReward[3100015][1][7]["Log"] = "0,0,3100015,1,12001176,2,4060001,10"
	tDailyActive_UpgradeGift_DailyReward[3100015][1][7]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100015][1][7]["RewardEffect"]["Effect"] = "angelwing"

	-- 3100016	21天满勤大礼包
	-- 高级签到礼包	3100012	1				100.00%
	-- 200点气力值包	3200660	1				100.00%
	-- 明亮星陨石	3200864	1				100.00%
	-- 洗髓神露	3001045	1				100.00%
	tDailyActive_UpgradeGift_DailyReward[3100016] = {}
	tDailyActive_UpgradeGift_DailyReward[3100016]["LogId"] = 12001176
	tDailyActive_UpgradeGift_DailyReward[3100016]["DeleteItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100016]["DeleteItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100016]["DeleteItem"][1]["Id"] = 3100016
	tDailyActive_UpgradeGift_DailyReward[3100016]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100016]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100016]["RewardItem"][1]["Id"] = 3100012
	tDailyActive_UpgradeGift_DailyReward[3100016]["RewardItem"][1]["Attr"] = "0 1"
	tDailyActive_UpgradeGift_DailyReward[3100016]["RewardItem"][2] = {}
	tDailyActive_UpgradeGift_DailyReward[3100016]["RewardItem"][2]["Id"] = 3200660
	tDailyActive_UpgradeGift_DailyReward[3100016]["RewardItem"][2]["Attr"] = "0 1"
	tDailyActive_UpgradeGift_DailyReward[3100016]["RewardItem"][3] = {}
	tDailyActive_UpgradeGift_DailyReward[3100016]["RewardItem"][3]["Id"] = 3200864
	tDailyActive_UpgradeGift_DailyReward[3100016]["RewardItem"][3]["Attr"] = "0 1"
	tDailyActive_UpgradeGift_DailyReward[3100016]["RewardItem"][4] = {}
	tDailyActive_UpgradeGift_DailyReward[3100016]["RewardItem"][4]["Id"] = 3001045
	tDailyActive_UpgradeGift_DailyReward[3100016]["RewardItem"][4]["Attr"] = "0 1"
	tDailyActive_UpgradeGift_DailyReward[3100016]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100016]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 3100017	28天满勤大礼包
	-- 高级签到礼包	3100012	1				100.00%
	-- 九转神丹碎片	720730	2				100.00%
	-- 明亮星陨石	3200864	3				100.00%
	tDailyActive_UpgradeGift_DailyReward[3100017] = {}
	tDailyActive_UpgradeGift_DailyReward[3100017]["LogId"] = 12001176
	tDailyActive_UpgradeGift_DailyReward[3100017]["DeleteItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100017]["DeleteItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100017]["DeleteItem"][1]["Id"] = 3100017
	tDailyActive_UpgradeGift_DailyReward[3100017]["RewardItem"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100017]["RewardItem"][1] = {}
	tDailyActive_UpgradeGift_DailyReward[3100017]["RewardItem"][1]["Id"] = 3100012
	tDailyActive_UpgradeGift_DailyReward[3100017]["RewardItem"][1]["Attr"] = "0 1"
	tDailyActive_UpgradeGift_DailyReward[3100017]["RewardItem"][2] = {}
	tDailyActive_UpgradeGift_DailyReward[3100017]["RewardItem"][2]["Id"] = 720730
	tDailyActive_UpgradeGift_DailyReward[3100017]["RewardItem"][2]["Attr"] = "0 2"
	tDailyActive_UpgradeGift_DailyReward[3100017]["RewardItem"][3] = {}
	tDailyActive_UpgradeGift_DailyReward[3100017]["RewardItem"][3]["Id"] = 3200864
	tDailyActive_UpgradeGift_DailyReward[3100017]["RewardItem"][3]["Attr"] = "0 3"
	tDailyActive_UpgradeGift_DailyReward[3100017]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_DailyReward[3100017]["RewardEffect"]["Effect"] = "angelwing"

-- 日常任务完成金令改为获得7个日常完成令
local tDailyActive_UpgradeGift_UpgradeReward = {}
	-- 3309841	日常任务完成金
	tDailyActive_UpgradeGift_UpgradeReward[3309841] = {}
	tDailyActive_UpgradeGift_UpgradeReward[3309841]["LogId"] = 12001176
	tDailyActive_UpgradeGift_UpgradeReward[3309841]["DeleteItem"] = {}
	tDailyActive_UpgradeGift_UpgradeReward[3309841]["DeleteItem"][1] = {}
	tDailyActive_UpgradeGift_UpgradeReward[3309841]["DeleteItem"][1]["Id"] = 3309841
	tDailyActive_UpgradeGift_UpgradeReward[3309841]["RewardExpTime"] = {}
	tDailyActive_UpgradeGift_UpgradeReward[3309841]["RewardExpTime"]["Value"] = 420
	tDailyActive_UpgradeGift_UpgradeReward[3309841]["RewardExpTime"]["FullIndex"] = "RewardStrengthValue"	
	tDailyActive_UpgradeGift_UpgradeReward[3309841]["RewardExpTime"]["FullValue"] = 200
	tDailyActive_UpgradeGift_UpgradeReward[3309841]["RewardExpTime"]["FullLog"] = "0,0,3309841,1,10002354,2,12,200"
	tDailyActive_UpgradeGift_UpgradeReward[3309841]["RewardCultivation"] = {}
	tDailyActive_UpgradeGift_UpgradeReward[3309841]["RewardCultivation"]["Value"] = 300
	tDailyActive_UpgradeGift_UpgradeReward[3309841]["RewardEffect"] = {}
	tDailyActive_UpgradeGift_UpgradeReward[3309841]["RewardEffect"]["Effect"] = "angelwing"
	

-------------------------------逻辑部分配置
-- 新的签到礼包奖励配置
function DailyActive_UpgradeGift_Daily(nItemId)
	local tNewReward = tDailyActive_UpgradeGift_DailyReward[nItemId]
	-- 3100011	每日签到礼包
	-- 3100012	高级签到礼盒
	local nDelSpace = tDailyActive_UpgradeGift_Count["DelSpace"]
	if nItemId >= 3100011 and nItemId <= 3100012 then
		local nIndex = 1
		local nLevel = 0
		local nMete = 0
		if nItemId == 3100011 then
			nLevel = tDailyActive_UpgradeGift_Count["DaliyLevel"]
			nMete = tDailyActive_UpgradeGift_Count["DaliyMete"]
		end
		if nItemId == 3100012 then
			nLevel = tDailyActive_UpgradeGift_Count["HighLevel"]
			nMete = tDailyActive_UpgradeGift_Count["HighMete"]
		end
		if User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
			nIndex = 2
		end
		local nReSpace = RewardTemplate_GetRandomSpace(tNewReward,nIndex,nNowUserId)
		local nNewSpace = nReSpace - nDelSpace
		-- 190704[简体征服][活动脚本]2019七夕花魁赛
		if nItemId == 3100011 then
			if Sys_ChkFullTime(tActivityTime["ValentinesDay2018"]["ActivityTime"]) then
				nNewSpace = nNewSpace + 1
			end
		end
		-- 20190930[简体征服][活动脚本]万圣节活动
		if nItemId == 3100011 then
			if Sys_ChkFullTime(tActivityTime["HalloweenReward"]["ActivityTime"]) then
				nNewSpace = nNewSpace + 1
			end
		end

		-- 191112[简体征服][活动脚本]全球圣诞元旦活动-放烟花（12.24-1.8）
		if nItemId == 3100011 then
			if Sys_ChkFullTime(tActivityTime["GlobalChristmas"]["ActivityTime"]) then
				nNewSpace = nNewSpace + 1
				if User_JudgeLevelAndMetempsychosis(0,2,nUserId) then
					nNewSpace = nNewSpace + 1
				end
			end
		end
		-- 191202[英文征服][活动脚本]新年活跃福利活动（1.2-1.31）
		if nItemId == 3100011 then
			if Sys_ChkFullTime(tActivityTime["SpringActiveWelfare"]["ActivityTime"]) then
				nNewSpace = nNewSpace + 1
			end
		end
		
		-- 200103[简体征服][活动脚本]全球情人节活动--跨服互动活动
		if nItemId == 3100011 then
			if Sys_ChkFullTime(tActivityTime["ValentineDayAct_2019"]["ActTime"]) then
				if User_JudgeLevelAndMetempsychosis(80,0,nUserId) then
					nNewSpace = nNewSpace + 1
				end
			end
		end
		-- [简体征服][活动脚本]武汉加油2
		if nItemId == 3100011 then
			if Sys_ChkFullTime(tActivityTime["AtivityForPray"]["ActivityTime2"]) then
				if User_JudgeLevelAndMetempsychosis(80,0) then
					nNewSpace = nNewSpace + 1
				end
			end
		end
				
		-- 200228[简体征服][活动脚本]全球愚人节活动气氛和藏宝图发放部分
		if nItemId == 3100011 then
			if Sys_ChkFullTime(tActivityTime["AprilFoolsDay"]["ActivityTime"]) then
				if User_JudgeLevelAndMetempsychosis(80,0) then
					nNewSpace = nNewSpace + 1
				end
			end
		end
		-- 200316[简体征服][活动脚本]全球周年庆征服品牌月活动
		if nItemId == 3100011 then
			if Sys_ChkFullTime(tActivityTime["Anniversary2020"]["ActivityTime"]) then
				if User_JudgeLevelAndMetempsychosis(80,0) then
					nNewSpace = nNewSpace + 1
				end
			end
		end
		
		-- 200416[英文征服][活动脚本]5月熔炼炉回收（5.26-6.08）
		if nItemId == 3100011 then
			if Sys_ChkFullTime(tActivityTime["SmeltingRecovery"]["ActivityTime"]) then
				if User_JudgeLevelAndMetempsychosis(15,2) then
					nNewSpace = nNewSpace + 1
				end
			end
		end

		-- 200506[英文征服][活动脚本]6月夏日祭-花火大会
		if nItemId == 3100011 then
			if Sys_ChkFullTime(tActivityTime["HanabiTaiKai"]["ActivityTime"]) then
				nNewSpace = nNewSpace + 1
			end
		end

		if nNewSpace > 0 and (not User_CheckLeftSpace(nNewSpace)) then
			User_TalkChannel2005(string.format(tGodRefinedRewardSign_Text["NoSpace"],nNewSpace))
			return
		end
		
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			RewardTemplate_NewRandom(tNewReward,nIndex,nNowUserId)
		end
			-- 190704[简体征服][活动脚本]2019七夕花魁赛
		if nItemId == 3100011 then
			 ValentinesDay2018_DayPackageUse()
		end

		-- 万圣节活动
		if nItemId == 3100011 then
			HalloweenReward_DailyPack()
		end
	
		-- 191015[简体征服][活动脚本]感恩节---活动三小鸡快跑部分
		-- if nItemId == 3100011 then
			-- ThanksChickenTantivy_DayPackageUse(1)
		-- end
		-- 全球圣诞元旦活动-放烟花
		if nItemId == 3100011 then
			ShootOff_Fireworks_DailyPack(nItemId)
		end
		-- 新年活跃福利活动
		if nItemId == 3100011 then
			SpringActiveWelfare_DailyPack()
		end
		if nItemId == 3100011 then
			ValentineDayAct_2019_DayPackageUse()
		end
		-- [简体征服][活动脚本]武汉加油2
		if nItemId == 3100011 then
			AtivityForPray_DailySignPack()
		end

		-- 200228[简体征服][活动脚本]全球愚人节活动气氛和藏宝图发放部分
		if nItemId == 3100011 then
			AprilFoolsDayAtmosphere_DailyPack(1)
		end
		-- 200316[简体征服][活动脚本]全球周年庆征服品牌月活动
		if nItemId == 3100011 then
			Anni17Map_DailyPack(1)
		end
		
		-- 200416[英文征服][活动脚本]5月熔炼炉回收（5.26-6.08）
		if nItemId == 3100011 then
			SmeltingRecovery_Sign()
		end
		-- 200506[英文征服][活动脚本]6月夏日祭-花火大会
		if nItemId == 3100011 then
			Hanabi_Sign()
		end
	end
	-- 3100013	2天满勤大礼包	
	-- 3100014	7天满勤大礼包	
	-- 3100015	14天满勤大礼包
	if nItemId >= 3100013 and nItemId <= 3100015 then
		-- 判断背包空间
		local nRewardSpace = RewardTemplate_GetRandomSpace(tNewReward,1,nNowUserId)
		local nSpace = nRewardSpace - nDelSpace
		if nSpace > 0 and (not User_CheckLeftSpace(nSpace)) then
			User_TalkChannel2005(string.format(tGodRefinedRewardSign_Text["NoSpace"],nSpace))
			return
		end
		
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			RewardTemplate_NewRandom(tNewReward,1,nNowUserId)
		end
	end
	
	-- 3100016	21天满勤大礼包
	-- 3100017	28天满勤大礼包
	if nItemId >= 3100016 and nItemId <= 3100017 then
		RewardTemplate_UseItemAndMsg(tNewReward)
	end
end

-- 3309841	日常任务完成金
function DailyActive_UpgradeGift_Upgrade(nItemId)
	RewardTemplate_UseItemAndMsg(tDailyActive_UpgradeGift_UpgradeReward[nItemId])
end

