------------------------------------------------------------------------------------
--Name:		[征服][活动脚本]战士翻身特权月制作
--Purpose:	签到礼包
--Creator: 	吴文鑫
--Created:	2016/04/27
------------------------------------------------------------------------------------

-- 命名前缀
--PrivilegeMonthActivity_
--12000392

-- 雷神特权月
-- #####stcstart
-- #掩码说明
-- #stc(187,93) 背包信
-- #stc(187,94) 发雷神惊世礼盒 ==1 标志已发
-- #stc(187,95)  1个100气力值的礼包 每日上限1次
-- #stc(187,96)  正气令使用，每日一次（去掉，不限制）
-- #stc(187,98) 雷神惊世礼盒使用记录
-- ####stcend

-- EMoneyLog
local tPrivilegeMonthActivity_ELog = {}
	tPrivilegeMonthActivity_ELog["OpenBag"] = "350	22060	0	0	1	"
	tPrivilegeMonthActivity_ELog["OpenBag2"] = "350	22061	0	0	1	"
	tPrivilegeMonthActivity_ELog["Into"] = "350	22062	0	0	1	"
-- 常量表
local tPrivilegeMonthActivity_Constant = {}
	-- 经验保护状态
	tPrivilegeMonthActivity_Constant["Status"] = 149
	tPrivilegeMonthActivity_Constant["Power"] = 200
	tPrivilegeMonthActivity_Constant["Secs"] = 3600
	tPrivilegeMonthActivity_Constant["Times"] = 0
	tPrivilegeMonthActivity_Constant["RemainTime"] = 0
	tPrivilegeMonthActivity_Constant["EndTime"] = 3600
	tPrivilegeMonthActivity_Constant["Recordable"] = 1

	-- log
	tPrivilegeMonthActivity_Constant["CreatLog"] = "0,0,0,0,12000392,1,0,0"
	tPrivilegeMonthActivity_Constant["0MeteLog"] = "0,0,%d,1,12000392,2,3001407[7][13],1[2][149]"
	tPrivilegeMonthActivity_Constant["2MeteLog"] = "0,0,%d,1,12000392,2,3001407[7][13][12],1[2][149][500]"
	-- 过期删除log
	tPrivilegeMonthActivity_Constant["OverLog"] = "0,0,%d,%d,12001230,2,0,0"
	
	--时间
	tPrivilegeMonthActivity_Constant["ActivetyTime"] = tActivityTime["ThorPrivilegeMonth"]["ActivityTime"]
	
	--道具时间
	tPrivilegeMonthActivity_Constant["UseTime"] = {}
	tPrivilegeMonthActivity_Constant["UseTime"][3200232] = "2016-07-14 00:00 2016-08-14 23:59"
	tPrivilegeMonthActivity_Constant["UseTime"][3301521] = "2017-01-05 00:00 2017-02-05 23:59"
	tPrivilegeMonthActivity_Constant["UseTime"][3307636] = tActivityTime["PrivilegeMonth"]["ActivityTime"]
	tPrivilegeMonthActivity_Constant["UseTime"][3311725] = tActivityTime["ThorPrivilegeMonth"]["ActivityTime"]
	tPrivilegeMonthActivity_Constant["UseTime"][3312754] = tActivityTime["WarriorPrivilege"]["ActivityTime"]
	
	--等级
	tPrivilegeMonthActivity_Constant["Level"] = 80
	tPrivilegeMonthActivity_Constant["Metempsychosis"] = 0
	
	--npc坐标
	tPrivilegeMonthActivity_Constant["NpcId"] = 19262
	tPrivilegeMonthActivity_Constant["MapId"] = 1002
	tPrivilegeMonthActivity_Constant["PosX"] = 340
	tPrivilegeMonthActivity_Constant["PosY"] = 478
	tPrivilegeMonthActivity_Constant["Market"] = 1036
	
	--副本
	tPrivilegeMonthActivity_Constant["Instance"] = 53
	tPrivilegeMonthActivity_Constant["EffectObj"] = "self"
	tPrivilegeMonthActivity_Constant["Effect_1"] = "movego"
	-- 打开物品
	tPrivilegeMonthActivity_Constant["Effect_2"] = "angelwing"
	
	
	tPrivilegeMonthActivity_Constant["Countdown"] = 10
	
	tPrivilegeMonthActivity_Constant["ItemType"] = 3007120
	
	tPrivilegeMonthActivity_Constant["GreenServerGlobal"] = 54209
	
local tPrivilegeMonthActivity_EnterStc = {}
	tPrivilegeMonthActivity_EnterStc["EventType"] = 144
	tPrivilegeMonthActivity_EnterStc["DataType"] = 98


local tPrivilegeMonthActivity_GetStc = {}
	tPrivilegeMonthActivity_GetStc["EventType"] = 144
	tPrivilegeMonthActivity_GetStc["DataType"] = 99
	
-- 1个100气力值的礼包 每日上限1次
local tPrivilegeMonthActivity_AwardStc = {}
	tPrivilegeMonthActivity_AwardStc["EventType"] = 187
	tPrivilegeMonthActivity_AwardStc["DataType"] = 95
	
-- 存放已经移走的陷阱
local tPrivilegeMonthActivity_HaveMoveTrap = {}
local tPrivilegeMonthActivity_HaveMoveTrapNoGift = {}
	
local tPrivilegeMonthActivity_Pack = {}
	tPrivilegeMonthActivity_Pack[3200227] = {}
	tPrivilegeMonthActivity_Pack[3200227]["Pro1"] = 20
	tPrivilegeMonthActivity_Pack[3200227]["Pro2"] = 25
	tPrivilegeMonthActivity_Pack[3200227]["EventType"] = 144
	tPrivilegeMonthActivity_Pack[3200227]["DataType"] = 24
	tPrivilegeMonthActivity_Pack[3200227]["Metempsychosis"] = 2
	--给天道酬勤
	tPrivilegeMonthActivity_Pack[3200227]["Item"] = 3001407
	tPrivilegeMonthActivity_Pack[3200227]["ItemAttr"] = "0 0 3 1440 1"
	-- 两小时双倍经验
	tPrivilegeMonthActivity_Pack[3200227]["ExpPercent"] = 200
	tPrivilegeMonthActivity_Pack[3200227]["ExpTime"] = 7200
	--经验保护
	tPrivilegeMonthActivity_Pack[3200227]["ExpProtect"] = 60 		-- 经验保护时间
	--气力
	tPrivilegeMonthActivity_Pack[3200227]["Strengthvalue"] = 500
	--次数
	tPrivilegeMonthActivity_Pack[3200227]["Times"] = 29
	tPrivilegeMonthActivity_Pack[3200227]["Space"] = 1

	
	tPrivilegeMonthActivity_Pack[3301520] = {}
	tPrivilegeMonthActivity_Pack[3301520]["Pro1"] = 160
	tPrivilegeMonthActivity_Pack[3301520]["Pro2"] = 165
	tPrivilegeMonthActivity_Pack[3301520]["EventType"] = 152
	tPrivilegeMonthActivity_Pack[3301520]["DataType"] = 77
	tPrivilegeMonthActivity_Pack[3301520]["Metempsychosis"] = 2
	--给天道酬勤
	tPrivilegeMonthActivity_Pack[3301520]["Item"] = 3001407
	tPrivilegeMonthActivity_Pack[3301520]["ItemAttr"] = "0 0 3 1440 1"
	-- 两小时双倍经验
	tPrivilegeMonthActivity_Pack[3301520]["ExpPercent"] = 200
	tPrivilegeMonthActivity_Pack[3301520]["ExpTime"] = 7200
	--经验保护
	tPrivilegeMonthActivity_Pack[3301520]["ExpProtect"] = 60 		-- 经验保护时间
	--气力
	tPrivilegeMonthActivity_Pack[3301520]["Strengthvalue"] = 500
	--次数
	tPrivilegeMonthActivity_Pack[3301520]["Times"] = 29
	tPrivilegeMonthActivity_Pack[3301520]["Space"] = 1
	--海盗崛起礼包
	tPrivilegeMonthActivity_Pack[3307639] = {}
	tPrivilegeMonthActivity_Pack[3307639]["Pro1"] = G_PRO_Pirate0
	tPrivilegeMonthActivity_Pack[3307639]["Pro2"] = G_PRO_Pirate5
	tPrivilegeMonthActivity_Pack[3307639]["EventType"] = 174
	tPrivilegeMonthActivity_Pack[3307639]["DataType"] = 25
	tPrivilegeMonthActivity_Pack[3307639]["Metempsychosis"] = 2
	--给天道酬勤
	tPrivilegeMonthActivity_Pack[3307639]["Item"] = 3001407
	tPrivilegeMonthActivity_Pack[3307639]["ItemAttr"] = "0 0 3 1440 1"
	-- 两小时双倍经验
	tPrivilegeMonthActivity_Pack[3307639]["ExpPercent"] = 200
	tPrivilegeMonthActivity_Pack[3307639]["ExpTime"] = 7200
	--经验保护
	tPrivilegeMonthActivity_Pack[3307639]["ExpProtect"] = 60 		-- 经验保护时间
	--气力
	tPrivilegeMonthActivity_Pack[3307639]["Strengthvalue"] = 500
	--次数
	tPrivilegeMonthActivity_Pack[3307639]["Times"] = 29
	tPrivilegeMonthActivity_Pack[3307639]["Space"] = 1
	
	-- 3311728,'雷神惊世礼盒'
	tPrivilegeMonthActivity_Pack[3311728] = {}
	tPrivilegeMonthActivity_Pack[3311728]["Pro1"] = G_PRO_Thor0
	tPrivilegeMonthActivity_Pack[3311728]["Pro2"] = G_PRO_Thor5
	tPrivilegeMonthActivity_Pack[3311728]["EventType"] = 187
	tPrivilegeMonthActivity_Pack[3311728]["DataType"] = 98
	tPrivilegeMonthActivity_Pack[3311728]["Metempsychosis"] = 2
	--给天道酬勤
	tPrivilegeMonthActivity_Pack[3311728]["Item"] = 3001407
	tPrivilegeMonthActivity_Pack[3311728]["ItemAttr"] = "0 0 3 1440 1"
	-- 两小时双倍经验
	tPrivilegeMonthActivity_Pack[3311728]["ExpPercent"] = 200
	tPrivilegeMonthActivity_Pack[3311728]["ExpTime"] = 7200
	--经验保护
	tPrivilegeMonthActivity_Pack[3311728]["ExpProtect"] = 60 		-- 经验保护时间
	--气力
	tPrivilegeMonthActivity_Pack[3311728]["Strengthvalue"] = 500
	--次数
	tPrivilegeMonthActivity_Pack[3311728]["Times"] = 29
	tPrivilegeMonthActivity_Pack[3311728]["Space"] = 1
	
	
	-- 3319301,'雷神惊世礼盒'--激情服
	tPrivilegeMonthActivity_Pack[3319301] = {}
	tPrivilegeMonthActivity_Pack[3319301]["Pro1"] = G_PRO_Thor0
	tPrivilegeMonthActivity_Pack[3319301]["Pro2"] = G_PRO_Thor5
	tPrivilegeMonthActivity_Pack[3319301]["Times"] = 29
	tPrivilegeMonthActivity_Pack[3319301]["EventType"] = 187
	tPrivilegeMonthActivity_Pack[3319301]["DataType"] = 98
	tPrivilegeMonthActivity_Pack[3319301]["Metempsychosis"] = 2
	-- 未2转的雷神玩家	当前等级的1%经验	2小时双倍经验时间	1小时经验保护时间--150级以下
	tPrivilegeMonthActivity_Pack[3319301][1] = {}
	tPrivilegeMonthActivity_Pack[3319301][1]["Log"] = "0,0,3319301,1,12000392,2,4[7][13],1[2][149]"
	tPrivilegeMonthActivity_Pack[3319301][1]["RewardExpPercent"] = {}
	tPrivilegeMonthActivity_Pack[3319301][1]["RewardExpPercent"]["Value"] = 1
	tPrivilegeMonthActivity_Pack[3319301][1]["RewardMulExpTime"] ={}
	tPrivilegeMonthActivity_Pack[3319301][1]["RewardMulExpTime"]["Percent"] = 200
	tPrivilegeMonthActivity_Pack[3319301][1]["RewardMulExpTime"]["Time"] = 2
	tPrivilegeMonthActivity_Pack[3319301][1]["RewardEffect"] = {}
	tPrivilegeMonthActivity_Pack[3319301][1]["RewardEffect"]["SzObj"] = "self"
	tPrivilegeMonthActivity_Pack[3319301][1]["RewardEffect"]["Effect"] = "angelwing"
	tPrivilegeMonthActivity_Pack[3319301][1]["Talk"] = tPrivilegeMonthActivity_Text[3319301]["0MeteAward0"]
	-- 未2转的雷神玩家	当前等级的1%经验	2小时双倍经验时间	1小时经验保护时间--150级--100气
	tPrivilegeMonthActivity_Pack[3319301][2] = {}
	tPrivilegeMonthActivity_Pack[3319301][2]["Log"] = "0,0,3319301,1,12000392,2,12[7][13],100[2][149]"
	tPrivilegeMonthActivity_Pack[3319301][2]["RewardStrengthValue"] = {}
	tPrivilegeMonthActivity_Pack[3319301][2]["RewardStrengthValue"]["Value"] = 100
	tPrivilegeMonthActivity_Pack[3319301][2]["RewardMulExpTime"] ={}
	tPrivilegeMonthActivity_Pack[3319301][2]["RewardMulExpTime"]["Percent"] = 200
	tPrivilegeMonthActivity_Pack[3319301][2]["RewardMulExpTime"]["Time"] = 2
	tPrivilegeMonthActivity_Pack[3319301][2]["RewardEffect"] = {}
	tPrivilegeMonthActivity_Pack[3319301][2]["RewardEffect"]["SzObj"] = "self"
	tPrivilegeMonthActivity_Pack[3319301][2]["RewardEffect"]["Effect"] = "angelwing"
	tPrivilegeMonthActivity_Pack[3319301][2]["Talk"] = tPrivilegeMonthActivity_Text[3319301]["0MeteAward1"]
	-- 已2转的雷神玩家	300点修为值--2小时双倍经验时间--1小时经验保护时间--500点气力值
	tPrivilegeMonthActivity_Pack[3319301][3] = {}
	tPrivilegeMonthActivity_Pack[3319301][3]["Log"] = "0,0,3319301,1,12000392,2,12[19][13],500[300][149]"
	tPrivilegeMonthActivity_Pack[3319301][3]["RewardRepairValue"] = {}
	tPrivilegeMonthActivity_Pack[3319301][3]["RewardRepairValue"]["Value"] = 300
	tPrivilegeMonthActivity_Pack[3319301][3]["RewardStrengthValue"] = {}
	tPrivilegeMonthActivity_Pack[3319301][3]["RewardStrengthValue"]["Value"] = 500
	tPrivilegeMonthActivity_Pack[3319301][3]["RewardMulExpTime"] ={}
	tPrivilegeMonthActivity_Pack[3319301][3]["RewardMulExpTime"]["Percent"] = 200
	tPrivilegeMonthActivity_Pack[3319301][3]["RewardMulExpTime"]["Time"] = 2
	tPrivilegeMonthActivity_Pack[3319301][3]["RewardEffect"] = {}
	tPrivilegeMonthActivity_Pack[3319301][3]["RewardEffect"]["SzObj"] = "self"
	tPrivilegeMonthActivity_Pack[3319301][3]["RewardEffect"]["Effect"] = "angelwing"
	tPrivilegeMonthActivity_Pack[3319301][3]["Talk"] = tPrivilegeMonthActivity_Text[3319301]["2MeteAward"]
	
	
	
local tPrivilegeMonthActivity_WarTip = {}
	tPrivilegeMonthActivity_WarTip["Pro1"] = G_PRO_Ninja0_New
	tPrivilegeMonthActivity_WarTip["Pro2"] = G_PRO_Ninja49_New
	tPrivilegeMonthActivity_WarTip["Item"] = 3312754--3311725
	tPrivilegeMonthActivity_WarTip["ItemAttr"] = "0 0 0 1440 1"
	tPrivilegeMonthActivity_WarTip["Log"] = "0,0,0,0,12000392,2,3307636,1"
	
local tPrivilegeMonthActivity_Leave = {}
	-- 普通服。奋斗服
	tPrivilegeMonthActivity_Leave[1] = {}
	tPrivilegeMonthActivity_Leave[1]["MapId"] = 1002
	tPrivilegeMonthActivity_Leave[1]["CellX"] = 316
	tPrivilegeMonthActivity_Leave[1]["CellY"] = 438
	-- 激情服
	tPrivilegeMonthActivity_Leave[2] = {}
	tPrivilegeMonthActivity_Leave[2]["MapId"] = 1036
	tPrivilegeMonthActivity_Leave[2]["CellX"] = 240
	tPrivilegeMonthActivity_Leave[2]["CellY"] = 237
	
--副本内刷物品的坐标范围
local tPrivilegeMonthActivity_Refresh = {}
	tPrivilegeMonthActivity_Refresh["PosX"] = 99
	tPrivilegeMonthActivity_Refresh["PosY"] = 99
	tPrivilegeMonthActivity_Refresh["Cellx"] = 18
	tPrivilegeMonthActivity_Refresh["Celly"] = 18
	tPrivilegeMonthActivity_Refresh["ItemNum"] = 1
	tPrivilegeMonthActivity_Refresh["ExistTime"] = 10
	
local tPrivilegeMonthActivity_ItemGlobal = {}
	-- 天石礼包 单服每天限刷50个
	tPrivilegeMonthActivity_ItemGlobal[1] = {}
	tPrivilegeMonthActivity_ItemGlobal[1]["GlobalId"] = 51165
	tPrivilegeMonthActivity_ItemGlobal[1]["GlobalData"] = 0
	tPrivilegeMonthActivity_ItemGlobal[1]["MaxData"] = 50
	-- 明亮星陨石（3009001）单服每天限刷10个 
	tPrivilegeMonthActivity_ItemGlobal[2] = {}
	tPrivilegeMonthActivity_ItemGlobal[2]["GlobalId"] = 51165
	tPrivilegeMonthActivity_ItemGlobal[2]["GlobalData"] = 1
	tPrivilegeMonthActivity_ItemGlobal[2]["MaxData"] = 10
	-- 龙珠 单服每天限刷5个
	tPrivilegeMonthActivity_ItemGlobal[3] = {}
	tPrivilegeMonthActivity_ItemGlobal[3]["GlobalId"] = 51165
	tPrivilegeMonthActivity_ItemGlobal[3]["GlobalData"] = 2
	tPrivilegeMonthActivity_ItemGlobal[3]["MaxData"] = 5
	
local tPrivilegeMonthActivity_RefreshItemTimes = {}
	tPrivilegeMonthActivity_RefreshItemTimes[1] = 25
	tPrivilegeMonthActivity_RefreshItemTimes[2] = 5
--刷新物品配置
local tPrivilegeMonthActivity_RefreshItem = {}
	tPrivilegeMonthActivity_RefreshItem[1] = {}
	tPrivilegeMonthActivity_RefreshItem[1]["ItemChanceSum"] = 10000
--普通宝石（不含天地玄）	25.00%
	tPrivilegeMonthActivity_RefreshItem[1][1] = {}
	tPrivilegeMonthActivity_RefreshItem[1][1]["RandomItemChanceType"] = 2
	tPrivilegeMonthActivity_RefreshItem[1][1]["ItemChance"] = 1500
	tPrivilegeMonthActivity_RefreshItem[1][1]["Other"] = 1
	tPrivilegeMonthActivity_RefreshItem[1][1]["Index"] = 1
--流星	12.50%	1088001	流星
	tPrivilegeMonthActivity_RefreshItem[1][2] = {}
	tPrivilegeMonthActivity_RefreshItem[1][2]["RandomItemChanceType"] = 2
	tPrivilegeMonthActivity_RefreshItem[1][2]["ItemChance"] = 1250
	tPrivilegeMonthActivity_RefreshItem[1][2]["Item_1"] = 1088001
	tPrivilegeMonthActivity_RefreshItem[1][2]["Index"] = 2
--龙虎回力丸	12.50%	729252	龙虎回力丸
	tPrivilegeMonthActivity_RefreshItem[1][3] = {}
	tPrivilegeMonthActivity_RefreshItem[1][3]["RandomItemChanceType"] = 2
	tPrivilegeMonthActivity_RefreshItem[1][3]["ItemChance"] = 1250
	tPrivilegeMonthActivity_RefreshItem[1][3]["Item_1"] = 729252
	tPrivilegeMonthActivity_RefreshItem[1][3]["Index"] = 3
	
--奇门秘籍	12.50%	723340	奇门秘籍
	tPrivilegeMonthActivity_RefreshItem[1][4] = {}
	tPrivilegeMonthActivity_RefreshItem[1][4]["RandomItemChanceType"] = 2
	tPrivilegeMonthActivity_RefreshItem[1][4]["ItemChance"] = 1250
	tPrivilegeMonthActivity_RefreshItem[1][4]["Item_1"] = 723340
	tPrivilegeMonthActivity_RefreshItem[1][4]["Index"] = 4
	
--10分钟经验包	12.50%	3006531	10分钟经验礼包
	tPrivilegeMonthActivity_RefreshItem[1][5] = {}
	tPrivilegeMonthActivity_RefreshItem[1][5]["RandomItemChanceType"] = 2
	tPrivilegeMonthActivity_RefreshItem[1][5]["ItemChance"] = 1250
	tPrivilegeMonthActivity_RefreshItem[1][5]["Item_1"] = 3006531
	tPrivilegeMonthActivity_RefreshItem[1][5]["Index"] = 5
	
--真气礼包	12.50%	3006542	真气礼包
	tPrivilegeMonthActivity_RefreshItem[1][6] = {}
	tPrivilegeMonthActivity_RefreshItem[1][6]["RandomItemChanceType"] = 2
	tPrivilegeMonthActivity_RefreshItem[1][6]["ItemChance"] = 1250
	tPrivilegeMonthActivity_RefreshItem[1][6]["Item_1"] = 3006542
	tPrivilegeMonthActivity_RefreshItem[1][6]["Index"] = 6

--修炼礼包	12.50%	3314912	修炼礼包
	tPrivilegeMonthActivity_RefreshItem[1][7] = {}
	tPrivilegeMonthActivity_RefreshItem[1][7]["RandomItemChanceType"] = 2
	tPrivilegeMonthActivity_RefreshItem[1][7]["ItemChance"] = 1250
	tPrivilegeMonthActivity_RefreshItem[1][7]["Item_1"] = 3314912
	tPrivilegeMonthActivity_RefreshItem[1][7]["Index"] = 7
	
--微光星陨石（3009000）	10.00%
	tPrivilegeMonthActivity_RefreshItem[1][8] = {}
	tPrivilegeMonthActivity_RefreshItem[1][8]["RandomItemChanceType"] = 2
	tPrivilegeMonthActivity_RefreshItem[1][8]["ItemChance"] = 1000
	tPrivilegeMonthActivity_RefreshItem[1][8]["Item_1"] = 3200747
	tPrivilegeMonthActivity_RefreshItem[1][8]["Index"] = 8
	

	
	tPrivilegeMonthActivity_RefreshItem[2] = {}
	tPrivilegeMonthActivity_RefreshItem[2]["ItemChanceSum"] = 10000
-- 60分钟经验包	20.00%	宝物id=3007120
	tPrivilegeMonthActivity_RefreshItem[2][1] = {}
	tPrivilegeMonthActivity_RefreshItem[2][1]["RandomItemChanceType"] = 2
	tPrivilegeMonthActivity_RefreshItem[2][1]["ItemChance"] = 1500
	tPrivilegeMonthActivity_RefreshItem[2][1]["Item_1"] = 3007120
	tPrivilegeMonthActivity_RefreshItem[2][1]["Index"] = 1

-- 良品宝石（不含天地玄）	15.00%
	tPrivilegeMonthActivity_RefreshItem[2][2] = {}
	tPrivilegeMonthActivity_RefreshItem[2][2]["RandomItemChanceType"] = 2
	tPrivilegeMonthActivity_RefreshItem[2][2]["ItemChance"] = 1500
	tPrivilegeMonthActivity_RefreshItem[2][2]["Other"] = 2
	tPrivilegeMonthActivity_RefreshItem[2][2]["Index"] = 2

-- 100点修行值包	15.00%	宝物id=3002553
	tPrivilegeMonthActivity_RefreshItem[2][3] = {}
	tPrivilegeMonthActivity_RefreshItem[2][3]["RandomItemChanceType"] = 2
	tPrivilegeMonthActivity_RefreshItem[2][3]["ItemChance"] = 1500
	tPrivilegeMonthActivity_RefreshItem[2][3]["Item_1"] = 3002553
	tPrivilegeMonthActivity_RefreshItem[2][3]["Index"] = 3

-- 秘制免费修炼丹	10.00%	宝物id=3002926
	tPrivilegeMonthActivity_RefreshItem[2][4] = {}
	tPrivilegeMonthActivity_RefreshItem[2][4]["RandomItemChanceType"] = 2
	tPrivilegeMonthActivity_RefreshItem[2][4]["ItemChance"] = 1000
	tPrivilegeMonthActivity_RefreshItem[2][4]["Item_1"] = 3002926
	tPrivilegeMonthActivity_RefreshItem[2][4]["Index"] = 4

-- 100点气力值包	10.00%	宝物id=3002027
	tPrivilegeMonthActivity_RefreshItem[2][5] = {}
	tPrivilegeMonthActivity_RefreshItem[2][5]["RandomItemChanceType"] = 2
	tPrivilegeMonthActivity_RefreshItem[2][5]["ItemChance"] = 1000
	tPrivilegeMonthActivity_RefreshItem[2][5]["Item_1"] = 3002027
	tPrivilegeMonthActivity_RefreshItem[2][5]["Index"] = 5

-- 小乾坤袋碎片	10.00%	宝物id=3008174
	tPrivilegeMonthActivity_RefreshItem[2][6] = {}
	tPrivilegeMonthActivity_RefreshItem[2][6]["RandomItemChanceType"] = 2
	tPrivilegeMonthActivity_RefreshItem[2][6]["ItemChance"] = 1000
	tPrivilegeMonthActivity_RefreshItem[2][6]["Item_1"] = 3008174
	tPrivilegeMonthActivity_RefreshItem[2][6]["Index"] = 6

-- 300点气力值包	4.00%	宝物id=3008305
	tPrivilegeMonthActivity_RefreshItem[2][7] = {}
	tPrivilegeMonthActivity_RefreshItem[2][7]["RandomItemChanceType"] = 2
	tPrivilegeMonthActivity_RefreshItem[2][7]["ItemChance"] = 600
	tPrivilegeMonthActivity_RefreshItem[2][7]["Item_1"] = 3008305
	tPrivilegeMonthActivity_RefreshItem[2][7]["Index"] = 7

-- 天石礼包（95%获得赠点天石。）	4.00%	宝物id=3008903	单服每天限刷50个
	tPrivilegeMonthActivity_RefreshItem[2][8] = {}
	tPrivilegeMonthActivity_RefreshItem[2][8]["RandomItemChanceType"] = 2
	tPrivilegeMonthActivity_RefreshItem[2][8]["ItemChance"] = 400
	tPrivilegeMonthActivity_RefreshItem[2][8]["Item_1"] = 3008903
	tPrivilegeMonthActivity_RefreshItem[2][8]["Index"] = 8
	tPrivilegeMonthActivity_RefreshItem[2][8]["Global"] = 1

-- 明亮星陨石（3009001）	6.00%	单服每天限刷10个
	tPrivilegeMonthActivity_RefreshItem[2][9] = {}
	tPrivilegeMonthActivity_RefreshItem[2][9]["RandomItemChanceType"] = 2
	tPrivilegeMonthActivity_RefreshItem[2][9]["ItemChance"] = 600
	tPrivilegeMonthActivity_RefreshItem[2][9]["Item_1"] = 3200748
	tPrivilegeMonthActivity_RefreshItem[2][9]["Index"] = 9
	tPrivilegeMonthActivity_RefreshItem[2][9]["Global"] = 2

-- 龙珠	4.00%	单服每天限刷10个	1088000	龙珠
	tPrivilegeMonthActivity_RefreshItem[2][10] = {}
	tPrivilegeMonthActivity_RefreshItem[2][10]["RandomItemChanceType"] = 2
	tPrivilegeMonthActivity_RefreshItem[2][10]["ItemChance"] = 400
	tPrivilegeMonthActivity_RefreshItem[2][10]["Item_1"] = 1088000
	tPrivilegeMonthActivity_RefreshItem[2][10]["Index"] = 10
	tPrivilegeMonthActivity_RefreshItem[2][10]["Global"] = 3

-- 500点修行值包	4.00%	3008315	
	tPrivilegeMonthActivity_RefreshItem[2][11] = {}
	tPrivilegeMonthActivity_RefreshItem[2][11]["RandomItemChanceType"] = 2
	tPrivilegeMonthActivity_RefreshItem[2][11]["ItemChance"] = 500
	tPrivilegeMonthActivity_RefreshItem[2][11]["Item_1"] = 3008315
	tPrivilegeMonthActivity_RefreshItem[2][11]["Index"] = 11

	
	
-- 700041	普通金麟宝石
-- 700031	普通青虹宝石
-- 700021	普通惊鸿宝石
-- 700011	普通龙恨宝石
-- 700001	普通凤吟宝石
-- 700051	普通紫霞宝石
-- 700061	普通明月宝石
local	tPrivilegeMonthActivity_RandomItem = {}
	tPrivilegeMonthActivity_RandomItem[1] = {}
	tPrivilegeMonthActivity_RandomItem[1][1] = 700041
	tPrivilegeMonthActivity_RandomItem[1][2] = 700031
	tPrivilegeMonthActivity_RandomItem[1][3] = 700021
	tPrivilegeMonthActivity_RandomItem[1][4] = 700011
	tPrivilegeMonthActivity_RandomItem[1][5] = 700001
	tPrivilegeMonthActivity_RandomItem[1][6] = 700051
	tPrivilegeMonthActivity_RandomItem[1][7] = 700061

-- 700042	良品金麟宝石
-- 700032	良品青虹宝石
-- 700022	良品惊鸿宝石
-- 700012	良品龙恨宝石
-- 700002	良品凤吟宝石
-- 700052	良品紫霞宝石
-- 700062	良品明月宝石
	tPrivilegeMonthActivity_RandomItem[2] = {}
	tPrivilegeMonthActivity_RandomItem[2][1] = 700042
	tPrivilegeMonthActivity_RandomItem[2][2] = 700032
	tPrivilegeMonthActivity_RandomItem[2][3] = 700022
	tPrivilegeMonthActivity_RandomItem[2][4] = 700012
	tPrivilegeMonthActivity_RandomItem[2][5] = 700002
	tPrivilegeMonthActivity_RandomItem[2][6] = 700052
	tPrivilegeMonthActivity_RandomItem[2][7] = 700062
	

local tPrivilegeMonthActivity_GiveStone = {}
	tPrivilegeMonthActivity_GiveStone[3200747] = {}
	tPrivilegeMonthActivity_GiveStone[3200747]["DeleteItem"] = {}
	tPrivilegeMonthActivity_GiveStone[3200747]["DeleteItem"][1] = {}
	tPrivilegeMonthActivity_GiveStone[3200747]["DeleteItem"][1]["Id"] = 3200747
	tPrivilegeMonthActivity_GiveStone[3200747]["RewardItem"] = {}
	tPrivilegeMonthActivity_GiveStone[3200747]["RewardItem"][1] = {}
	tPrivilegeMonthActivity_GiveStone[3200747]["RewardItem"][1]["Id"] = 3009000
	tPrivilegeMonthActivity_GiveStone[3200747]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tPrivilegeMonthActivity_GiveStone[3200747]["Log"] = "0,0,3200747,1,12000392,2,3009000,1"
	tPrivilegeMonthActivity_GiveStone[3200747]["Talk"] = tPrivilegeMonthActivity_Text[3200747]

	tPrivilegeMonthActivity_GiveStone[3200748] = {}
	tPrivilegeMonthActivity_GiveStone[3200748]["DeleteItem"] = {}
	tPrivilegeMonthActivity_GiveStone[3200748]["DeleteItem"][1] = {}
	tPrivilegeMonthActivity_GiveStone[3200748]["DeleteItem"][1]["Id"] = 3200748
	tPrivilegeMonthActivity_GiveStone[3200748]["RewardItem"] = {}
	tPrivilegeMonthActivity_GiveStone[3200748]["RewardItem"][1] = {}
	tPrivilegeMonthActivity_GiveStone[3200748]["RewardItem"][1]["Id"] = 3009001
	tPrivilegeMonthActivity_GiveStone[3200748]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tPrivilegeMonthActivity_GiveStone[3200748]["Log"] = "0,0,3200748,1,12000392,2,3009001,1"
	tPrivilegeMonthActivity_GiveStone[3200748]["Talk"] = tPrivilegeMonthActivity_Text[3200748]
	
	tPrivilegeMonthActivity_GiveStone[3307637] = {}
	tPrivilegeMonthActivity_GiveStone[3307637]["DeleteItem"] = {}
	tPrivilegeMonthActivity_GiveStone[3307637]["DeleteItem"][1] = {}
	tPrivilegeMonthActivity_GiveStone[3307637]["DeleteItem"][1]["Id"] = 3307637
	tPrivilegeMonthActivity_GiveStone[3307637]["RewardCultivation"] = {}
	tPrivilegeMonthActivity_GiveStone[3307637]["RewardCultivation"]["Value"] = 5000
	tPrivilegeMonthActivity_GiveStone[3307637]["LogId"] = 12000392
	
	tPrivilegeMonthActivity_GiveStone[3307638] = {}
	tPrivilegeMonthActivity_GiveStone[3307638]["DeleteItem"] = {}
	tPrivilegeMonthActivity_GiveStone[3307638]["DeleteItem"][1] = {}
	tPrivilegeMonthActivity_GiveStone[3307638]["DeleteItem"][1]["Id"] = 3307638
	tPrivilegeMonthActivity_GiveStone[3307638]["RewardStrengthValue"] = {}
	tPrivilegeMonthActivity_GiveStone[3307638]["RewardStrengthValue"]["Value"] = 3000
	tPrivilegeMonthActivity_GiveStone[3307638]["LogId"] = 12000392
	
	tPrivilegeMonthActivity_GiveStone[3307662] = {}
	tPrivilegeMonthActivity_GiveStone[3307662]["DeleteItem"] = {}
	tPrivilegeMonthActivity_GiveStone[3307662]["DeleteItem"][1] = {}
	tPrivilegeMonthActivity_GiveStone[3307662]["DeleteItem"][1]["Id"] = 3307662
	tPrivilegeMonthActivity_GiveStone[3307662]["RewardItem"] = {}
	tPrivilegeMonthActivity_GiveStone[3307662]["RewardItem"][1] = {}
	tPrivilegeMonthActivity_GiveStone[3307662]["RewardItem"][1]["Id"] = 720884
	tPrivilegeMonthActivity_GiveStone[3307662]["RewardItem"][1]["Attr"] = "0 1"
	tPrivilegeMonthActivity_GiveStone[3307662]["RewardItem"][2] = {}
	tPrivilegeMonthActivity_GiveStone[3307662]["RewardItem"][2]["Id"] = 3307988
	tPrivilegeMonthActivity_GiveStone[3307662]["RewardItem"][2]["Attr"] = "0 5"
	tPrivilegeMonthActivity_GiveStone[3307662]["RewardItem"][3] = {}
	tPrivilegeMonthActivity_GiveStone[3307662]["RewardItem"][3]["Id"] = 3003827
	tPrivilegeMonthActivity_GiveStone[3307662]["RewardItem"][3]["Attr"] = "0 5"
	tPrivilegeMonthActivity_GiveStone[3307662]["LogId"] = 12000392
	
	tPrivilegeMonthActivity_GiveStone[3307988] = {}
	tPrivilegeMonthActivity_GiveStone[3307988]["DeleteItem"] = {}
	tPrivilegeMonthActivity_GiveStone[3307988]["DeleteItem"][1] = {}
	tPrivilegeMonthActivity_GiveStone[3307988]["DeleteItem"][1]["Id"] = 3307988
	tPrivilegeMonthActivity_GiveStone[3307988]["RewardItem"] = {}
	tPrivilegeMonthActivity_GiveStone[3307988]["RewardItem"][1] = {}
	tPrivilegeMonthActivity_GiveStone[3307988]["RewardItem"][1]["Id"] = 3307019
	tPrivilegeMonthActivity_GiveStone[3307988]["RewardItem"][1]["Attr"] = "0 1 3"
	tPrivilegeMonthActivity_GiveStone[3307988]["RewardItem"][2] = {}
	tPrivilegeMonthActivity_GiveStone[3307988]["RewardItem"][2]["Id"] = 3009002
	tPrivilegeMonthActivity_GiveStone[3307988]["RewardItem"][2]["Attr"] = "0 2 0 2880 1"
	tPrivilegeMonthActivity_GiveStone[3307988]["RewardItem"][3] = {}
	tPrivilegeMonthActivity_GiveStone[3307988]["RewardItem"][3]["Id"] = 4050001
	tPrivilegeMonthActivity_GiveStone[3307988]["RewardItem"][3]["Attr"] = "0 200 3"
	tPrivilegeMonthActivity_GiveStone[3307988]["LogId"] = 12000392
	
	--史诗武器
	tPrivilegeMonthActivity_GiveStone[3307656] = {}
	tPrivilegeMonthActivity_GiveStone[3307656]["LogId"] = 12000392
	tPrivilegeMonthActivity_GiveStone[3307656]["DeleteItem"] = {}
	tPrivilegeMonthActivity_GiveStone[3307656]["DeleteItem"][1] = {}
	tPrivilegeMonthActivity_GiveStone[3307656]["DeleteItem"][1]["Id"] = 3307656
	tPrivilegeMonthActivity_GiveStone[3307656]["RewardItem"] = {}
	tPrivilegeMonthActivity_GiveStone[3307656]["RewardItem"][1] = {}
	tPrivilegeMonthActivity_GiveStone[3307656]["RewardItem"][1]["Id"] = 671139
	tPrivilegeMonthActivity_GiveStone[3307656]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013"
	tPrivilegeMonthActivity_GiveStone[3307656]["RewardItem"][2] = {}
	tPrivilegeMonthActivity_GiveStone[3307656]["RewardItem"][2]["Id"] = 800809
	tPrivilegeMonthActivity_GiveStone[3307656]["RewardItem"][2]["Attr"] = "0 1 3"
	
	tPrivilegeMonthActivity_GiveStone[3307657] = {}
	tPrivilegeMonthActivity_GiveStone[3307657]["LogId"] = 12000392
	tPrivilegeMonthActivity_GiveStone[3307657]["DeleteItem"] = {}
	tPrivilegeMonthActivity_GiveStone[3307657]["DeleteItem"][1] = {}
	tPrivilegeMonthActivity_GiveStone[3307657]["DeleteItem"][1]["Id"] = 3307657
	tPrivilegeMonthActivity_GiveStone[3307657]["RewardItem"] = {}
	tPrivilegeMonthActivity_GiveStone[3307657]["RewardItem"][1] = {}
	tPrivilegeMonthActivity_GiveStone[3307657]["RewardItem"][1]["Id"] = 670139
	tPrivilegeMonthActivity_GiveStone[3307657]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013"
	tPrivilegeMonthActivity_GiveStone[3307657]["RewardItem"][2] = {}
	tPrivilegeMonthActivity_GiveStone[3307657]["RewardItem"][2]["Id"] = 800804
	tPrivilegeMonthActivity_GiveStone[3307657]["RewardItem"][2]["Attr"] = "0 1 3"
	
	tPrivilegeMonthActivity_GiveStone[3307658] = {}
	tPrivilegeMonthActivity_GiveStone[3307658]["LogId"] = 12000392
	tPrivilegeMonthActivity_GiveStone[3307658]["DeleteItem"] = {}
	tPrivilegeMonthActivity_GiveStone[3307658]["DeleteItem"][1] = {}
	tPrivilegeMonthActivity_GiveStone[3307658]["DeleteItem"][1]["Id"] = 3307658
	tPrivilegeMonthActivity_GiveStone[3307658]["RewardItem"] = {}
	tPrivilegeMonthActivity_GiveStone[3307658]["RewardItem"][1] = {}
	tPrivilegeMonthActivity_GiveStone[3307658]["RewardItem"][1]["Id"] = 670139
	tPrivilegeMonthActivity_GiveStone[3307658]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013"
	tPrivilegeMonthActivity_GiveStone[3307658]["RewardItem"][2] = {}
	tPrivilegeMonthActivity_GiveStone[3307658]["RewardItem"][2]["Id"] = 671139
	tPrivilegeMonthActivity_GiveStone[3307658]["RewardItem"][2]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013"
	tPrivilegeMonthActivity_GiveStone[3307658]["RewardItem"][3] = {}
	tPrivilegeMonthActivity_GiveStone[3307658]["RewardItem"][3]["Id"] = 800809
	tPrivilegeMonthActivity_GiveStone[3307658]["RewardItem"][3]["Attr"] = "0 1 3"
	tPrivilegeMonthActivity_GiveStone[3307658]["RewardItem"][4] = {}
	tPrivilegeMonthActivity_GiveStone[3307658]["RewardItem"][4]["Id"] = 800804
	tPrivilegeMonthActivity_GiveStone[3307658]["RewardItem"][4]["Attr"] = "0 1 3"
	
	
	tPrivilegeMonthActivity_GiveStone[3307659] = {}
	tPrivilegeMonthActivity_GiveStone[3307659]["LogId"] = 12000392
	tPrivilegeMonthActivity_GiveStone[3307659]["DeleteItem"] = {}
	tPrivilegeMonthActivity_GiveStone[3307659]["DeleteItem"][1] = {}
	tPrivilegeMonthActivity_GiveStone[3307659]["DeleteItem"][1]["Id"] = 3307659
	tPrivilegeMonthActivity_GiveStone[3307659]["RewardItem"] = {}
	tPrivilegeMonthActivity_GiveStone[3307659]["RewardItem"][1] = {}
	tPrivilegeMonthActivity_GiveStone[3307659]["RewardItem"][1]["Id"] = 3307449
	tPrivilegeMonthActivity_GiveStone[3307659]["RewardItem"][1]["Attr"] = "0 1"
	
	tPrivilegeMonthActivity_GiveStone[3307660] = {}
	tPrivilegeMonthActivity_GiveStone[3307660]["LogId"] = 12000392
	tPrivilegeMonthActivity_GiveStone[3307660]["DeleteItem"] = {}
	tPrivilegeMonthActivity_GiveStone[3307660]["DeleteItem"][1] = {}
	tPrivilegeMonthActivity_GiveStone[3307660]["DeleteItem"][1]["Id"] = 3307660
	tPrivilegeMonthActivity_GiveStone[3307660]["RewardItem"] = {}
	tPrivilegeMonthActivity_GiveStone[3307660]["RewardItem"][1] = {}
	tPrivilegeMonthActivity_GiveStone[3307660]["RewardItem"][1]["Id"] = 3307449
	tPrivilegeMonthActivity_GiveStone[3307660]["RewardItem"][1]["Attr"] = "0 2"
	-------------------雷神
	-- 3311726,'风驰电掣修为值包'
	tPrivilegeMonthActivity_GiveStone[3311726] = {}
	tPrivilegeMonthActivity_GiveStone[3311726]["DeleteItem"] = {}
	tPrivilegeMonthActivity_GiveStone[3311726]["DeleteItem"][1] = {}
	tPrivilegeMonthActivity_GiveStone[3311726]["DeleteItem"][1]["Id"] = 3311726
	tPrivilegeMonthActivity_GiveStone[3311726]["RewardRepairValue"] = {}
	tPrivilegeMonthActivity_GiveStone[3311726]["RewardRepairValue"]["Value"] = 30000
	tPrivilegeMonthActivity_GiveStone[3311726]["RewardEffect"] = {}
	tPrivilegeMonthActivity_GiveStone[3311726]["RewardEffect"]["SzObj"] = "self"
	tPrivilegeMonthActivity_GiveStone[3311726]["RewardEffect"]["Effect"] = "angelwing"
	tPrivilegeMonthActivity_GiveStone[3311726]["LogId"] = 12001230
	-- 3311727,'雷厉风行气力包'
	tPrivilegeMonthActivity_GiveStone[3311727] = {}
	tPrivilegeMonthActivity_GiveStone[3311727]["DeleteItem"] = {}
	tPrivilegeMonthActivity_GiveStone[3311727]["DeleteItem"][1] = {}
	tPrivilegeMonthActivity_GiveStone[3311727]["DeleteItem"][1]["Id"] = 3311727
	tPrivilegeMonthActivity_GiveStone[3311727]["RewardStrengthValue"] = {}
	tPrivilegeMonthActivity_GiveStone[3311727]["RewardStrengthValue"]["Value"] = 30000
	tPrivilegeMonthActivity_GiveStone[3311727]["RewardEffect"] = {}
	tPrivilegeMonthActivity_GiveStone[3311727]["RewardEffect"]["SzObj"] = "self"
	tPrivilegeMonthActivity_GiveStone[3311727]["RewardEffect"]["Effect"] = "angelwing"
	tPrivilegeMonthActivity_GiveStone[3311727]["LogId"] = 12001230
	-- 3311729,'组队PK雷神特权礼盒'
	tPrivilegeMonthActivity_GiveStone[3311729] = {}
	tPrivilegeMonthActivity_GiveStone[3311729][1] = {}
	tPrivilegeMonthActivity_GiveStone[3311729][1]["DeleteItem"] = {}
	tPrivilegeMonthActivity_GiveStone[3311729][1]["DeleteItem"][1] = {}
	tPrivilegeMonthActivity_GiveStone[3311729][1]["DeleteItem"][1]["Id"] = 3311729
	tPrivilegeMonthActivity_GiveStone[3311729][1]["RewardItem"] = {}
	tPrivilegeMonthActivity_GiveStone[3311729][1]["RewardItem"][1] = {}
	tPrivilegeMonthActivity_GiveStone[3311729][1]["RewardItem"][1]["Id"] = 3320455
	tPrivilegeMonthActivity_GiveStone[3311729][1]["RewardItem"][1]["Attr"] = "0 1"
	tPrivilegeMonthActivity_GiveStone[3311729][1]["RewardItem"][2] = {}
	tPrivilegeMonthActivity_GiveStone[3311729][1]["RewardItem"][2]["Id"] = 3200822
	tPrivilegeMonthActivity_GiveStone[3311729][1]["RewardItem"][2]["Attr"] = "0 1"
	tPrivilegeMonthActivity_GiveStone[3311729][1]["RewardRepairValue"] = {}
	tPrivilegeMonthActivity_GiveStone[3311729][1]["RewardRepairValue"]["Value"] = 6000
	tPrivilegeMonthActivity_GiveStone[3311729][1]["RewardEffect"] = {}
	tPrivilegeMonthActivity_GiveStone[3311729][1]["RewardEffect"]["SzObj"] = "self"
	tPrivilegeMonthActivity_GiveStone[3311729][1]["RewardEffect"]["Effect"] = "angelwing"
	tPrivilegeMonthActivity_GiveStone[3311729][1]["LogId"] = 12001230
	-- 激情服
	tPrivilegeMonthActivity_GiveStone[3311729][2] = {}
	tPrivilegeMonthActivity_GiveStone[3311729][2]["DeleteItem"] = {}
	tPrivilegeMonthActivity_GiveStone[3311729][2]["DeleteItem"][1] = {}
	tPrivilegeMonthActivity_GiveStone[3311729][2]["DeleteItem"][1]["Id"] = 3311729
	tPrivilegeMonthActivity_GiveStone[3311729][2]["RewardItem"] = {}
	tPrivilegeMonthActivity_GiveStone[3311729][2]["RewardItem"][1] = {}
	tPrivilegeMonthActivity_GiveStone[3311729][2]["RewardItem"][1]["Id"] = 3320455 -- 10000ChiPointsPack
	tPrivilegeMonthActivity_GiveStone[3311729][2]["RewardItem"][1]["Attr"] = "0 1"
	tPrivilegeMonthActivity_GiveStone[3311729][2]["RewardEMoneyMono"] = {}
	tPrivilegeMonthActivity_GiveStone[3311729][2]["RewardEMoneyMono"]["Value"] = 300 -- 和运营沟通 激情服的龙珠卷换成300赠点
	tPrivilegeMonthActivity_GiveStone[3311729][2]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	0466"
	tPrivilegeMonthActivity_GiveStone[3311729][2]["RewardRepairValue"] = {}
	tPrivilegeMonthActivity_GiveStone[3311729][2]["RewardRepairValue"]["Value"] = 6000  -- 6000点修为值
	tPrivilegeMonthActivity_GiveStone[3311729][2]["RewardEffect"] = {}
	tPrivilegeMonthActivity_GiveStone[3311729][2]["RewardEffect"]["SzObj"] = "self"
	tPrivilegeMonthActivity_GiveStone[3311729][2]["RewardEffect"]["Effect"] = "angelwing"
	tPrivilegeMonthActivity_GiveStone[3311729][2]["LogId"] = 12001230
	-- 3319465,'5颗+5赤炼石包'
	tPrivilegeMonthActivity_GiveStone[3319465] = {}
	tPrivilegeMonthActivity_GiveStone[3319465]["DeleteItem"] = {}
	tPrivilegeMonthActivity_GiveStone[3319465]["DeleteItem"][1] = {}
	tPrivilegeMonthActivity_GiveStone[3319465]["DeleteItem"][1]["Id"] = 3319465
	tPrivilegeMonthActivity_GiveStone[3319465]["RewardItem"] = {}
	tPrivilegeMonthActivity_GiveStone[3319465]["RewardItem"][1] = {}
	tPrivilegeMonthActivity_GiveStone[3319465]["RewardItem"][1]["Id"] = 730005
	tPrivilegeMonthActivity_GiveStone[3319465]["RewardItem"][1]["Attr"] = "0 5 0 10080 1"
	tPrivilegeMonthActivity_GiveStone[3319465]["RewardEffect"] = {}
	tPrivilegeMonthActivity_GiveStone[3319465]["RewardEffect"]["SzObj"] = "self"
	tPrivilegeMonthActivity_GiveStone[3319465]["RewardEffect"]["Effect"] = "angelwing"
	tPrivilegeMonthActivity_GiveStone[3319465]["LogId"] = 12001230
	-- 3320455,'10000气力'
	tPrivilegeMonthActivity_GiveStone[3320455] = {}
	tPrivilegeMonthActivity_GiveStone[3320455]["DeleteItem"] = {}
	tPrivilegeMonthActivity_GiveStone[3320455]["DeleteItem"][1] = {}
	tPrivilegeMonthActivity_GiveStone[3320455]["DeleteItem"][1]["Id"] = 3320455
	tPrivilegeMonthActivity_GiveStone[3320455]["RewardStrengthValue"] = {}
	tPrivilegeMonthActivity_GiveStone[3320455]["RewardStrengthValue"]["Value"] = 10000
	
	------------------勇士
	-- 3312711,'勇气可嘉修为值包'
	tPrivilegeMonthActivity_GiveStone[3312711] = {}
	tPrivilegeMonthActivity_GiveStone[3312711]["DeleteItem"] = {}
	tPrivilegeMonthActivity_GiveStone[3312711]["DeleteItem"][1] = {}
	tPrivilegeMonthActivity_GiveStone[3312711]["DeleteItem"][1]["Id"] = 3312711
	tPrivilegeMonthActivity_GiveStone[3312711]["RewardRepairValue"] = {}
	tPrivilegeMonthActivity_GiveStone[3312711]["RewardRepairValue"]["Value"] = 30000
	tPrivilegeMonthActivity_GiveStone[3312711]["RewardEffect"] = {}
	tPrivilegeMonthActivity_GiveStone[3312711]["RewardEffect"]["SzObj"] = "self"
	tPrivilegeMonthActivity_GiveStone[3312711]["RewardEffect"]["Effect"] = "angelwing"
	tPrivilegeMonthActivity_GiveStone[3312711]["LogId"] = 12001426
	-- 3312712,'勇不可挡气力包'
	tPrivilegeMonthActivity_GiveStone[3312712] = {}
	tPrivilegeMonthActivity_GiveStone[3312712]["DeleteItem"] = {}
	tPrivilegeMonthActivity_GiveStone[3312712]["DeleteItem"][1] = {}
	tPrivilegeMonthActivity_GiveStone[3312712]["DeleteItem"][1]["Id"] = 3312712
	tPrivilegeMonthActivity_GiveStone[3312712]["RewardStrengthValue"] = {}
	tPrivilegeMonthActivity_GiveStone[3312712]["RewardStrengthValue"]["Value"] = 30000
	tPrivilegeMonthActivity_GiveStone[3312712]["RewardEffect"] = {}
	tPrivilegeMonthActivity_GiveStone[3312712]["RewardEffect"]["SzObj"] = "self"
	tPrivilegeMonthActivity_GiveStone[3312712]["RewardEffect"]["Effect"] = "angelwing"
	tPrivilegeMonthActivity_GiveStone[3312712]["LogId"] = 12001426
	-- 3312713,'组队PK勇士特权礼盒'
	tPrivilegeMonthActivity_GiveStone[3312713] = {}
	tPrivilegeMonthActivity_GiveStone[3312713][1] = {}
	tPrivilegeMonthActivity_GiveStone[3312713][1]["DeleteItem"] = {}
	tPrivilegeMonthActivity_GiveStone[3312713][1]["DeleteItem"][1] = {}
	tPrivilegeMonthActivity_GiveStone[3312713][1]["DeleteItem"][1]["Id"] = 3312713
	tPrivilegeMonthActivity_GiveStone[3312713][1]["RewardItem"] = {}
	tPrivilegeMonthActivity_GiveStone[3312713][1]["RewardItem"][1] = {}
	tPrivilegeMonthActivity_GiveStone[3312713][1]["RewardItem"][1]["Id"] = 3320455 -- 10000ChiPointsPack
	tPrivilegeMonthActivity_GiveStone[3312713][1]["RewardItem"][1]["Attr"] = "0 1"
	tPrivilegeMonthActivity_GiveStone[3312713][1]["RewardItem"][2] = {}
	tPrivilegeMonthActivity_GiveStone[3312713][1]["RewardItem"][2]["Id"] = 3200822 -- DBScroll
	tPrivilegeMonthActivity_GiveStone[3312713][1]["RewardItem"][2]["Attr"] = "0 1"
	tPrivilegeMonthActivity_GiveStone[3312713][1]["RewardRepairValue"] = {}
	tPrivilegeMonthActivity_GiveStone[3312713][1]["RewardRepairValue"]["Value"] = 6000 -- 6000点修为值
	tPrivilegeMonthActivity_GiveStone[3312713][1]["RewardEffect"] = {}
	tPrivilegeMonthActivity_GiveStone[3312713][1]["RewardEffect"]["SzObj"] = "self"
	tPrivilegeMonthActivity_GiveStone[3312713][1]["RewardEffect"]["Effect"] = "angelwing"
	tPrivilegeMonthActivity_GiveStone[3312713][1]["LogId"] = 12001426
	-- 激情服
	tPrivilegeMonthActivity_GiveStone[3312713][2] = {}
	tPrivilegeMonthActivity_GiveStone[3312713][2]["DeleteItem"] = {}
	tPrivilegeMonthActivity_GiveStone[3312713][2]["DeleteItem"][1] = {}
	tPrivilegeMonthActivity_GiveStone[3312713][2]["DeleteItem"][1]["Id"] = 3312713
	tPrivilegeMonthActivity_GiveStone[3312713][2]["RewardItem"] = {}
	tPrivilegeMonthActivity_GiveStone[3312713][2]["RewardItem"][1] = {}
	tPrivilegeMonthActivity_GiveStone[3312713][2]["RewardItem"][1]["Id"] = 3320455 -- 10000ChiPointsPack
	tPrivilegeMonthActivity_GiveStone[3312713][2]["RewardItem"][1]["Attr"] = "0 1"
	tPrivilegeMonthActivity_GiveStone[3312713][2]["RewardEMoneyMono"] = {}
	tPrivilegeMonthActivity_GiveStone[3312713][2]["RewardEMoneyMono"]["Value"] = 300 -- 和运营沟通 激情服的龙珠卷换成300赠点
	tPrivilegeMonthActivity_GiveStone[3312713][2]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	0466"
	tPrivilegeMonthActivity_GiveStone[3312713][2]["RewardRepairValue"] = {}
	tPrivilegeMonthActivity_GiveStone[3312713][2]["RewardRepairValue"]["Value"] = 6000  -- 6000点修为值
	tPrivilegeMonthActivity_GiveStone[3312713][2]["RewardEffect"] = {}
	tPrivilegeMonthActivity_GiveStone[3312713][2]["RewardEffect"]["SzObj"] = "self"
	tPrivilegeMonthActivity_GiveStone[3312713][2]["RewardEffect"]["Effect"] = "angelwing"
	tPrivilegeMonthActivity_GiveStone[3312713][2]["LogId"] = 12001426
	
	------------------忍者
	-- 3315482,'暗影猎手修为值包'
	tPrivilegeMonthActivity_GiveStone[3315482] = {}
	tPrivilegeMonthActivity_GiveStone[3315482]["DeleteItem"] = {}
	tPrivilegeMonthActivity_GiveStone[3315482]["DeleteItem"][1] = {}
	tPrivilegeMonthActivity_GiveStone[3315482]["DeleteItem"][1]["Id"] = 3315482
	tPrivilegeMonthActivity_GiveStone[3315482]["RewardRepairValue"] = {}
	tPrivilegeMonthActivity_GiveStone[3315482]["RewardRepairValue"]["Value"] = 30000
	tPrivilegeMonthActivity_GiveStone[3315482]["RewardEffect"] = {}
	tPrivilegeMonthActivity_GiveStone[3315482]["RewardEffect"]["SzObj"] = "self"
	tPrivilegeMonthActivity_GiveStone[3315482]["RewardEffect"]["Effect"] = "angelwing"
	tPrivilegeMonthActivity_GiveStone[3315482]["LogId"] = 12001849
	-- 3315483,'夜幕之王气力包'
	tPrivilegeMonthActivity_GiveStone[3315483] = {}
	tPrivilegeMonthActivity_GiveStone[3315483]["DeleteItem"] = {}
	tPrivilegeMonthActivity_GiveStone[3315483]["DeleteItem"][1] = {}
	tPrivilegeMonthActivity_GiveStone[3315483]["DeleteItem"][1]["Id"] = 3315483
	tPrivilegeMonthActivity_GiveStone[3315483]["RewardStrengthValue"] = {}
	tPrivilegeMonthActivity_GiveStone[3315483]["RewardStrengthValue"]["Value"] = 30000
	tPrivilegeMonthActivity_GiveStone[3315483]["RewardEffect"] = {}
	tPrivilegeMonthActivity_GiveStone[3315483]["RewardEffect"]["SzObj"] = "self"
	tPrivilegeMonthActivity_GiveStone[3315483]["RewardEffect"]["Effect"] = "angelwing"
	tPrivilegeMonthActivity_GiveStone[3315483]["LogId"] = 12001849
	-- 3315484,'组队PK忍者特权礼盒'
	tPrivilegeMonthActivity_GiveStone[3315484] = {}
	tPrivilegeMonthActivity_GiveStone[3315484][1] = {}
	tPrivilegeMonthActivity_GiveStone[3315484][1]["DeleteItem"] = {}
	tPrivilegeMonthActivity_GiveStone[3315484][1]["DeleteItem"][1] = {}
	tPrivilegeMonthActivity_GiveStone[3315484][1]["DeleteItem"][1]["Id"] = 3315484
	tPrivilegeMonthActivity_GiveStone[3315484][1]["RewardItem"] = {}
	tPrivilegeMonthActivity_GiveStone[3315484][1]["RewardItem"][1] = {}
	tPrivilegeMonthActivity_GiveStone[3315484][1]["RewardItem"][1]["Id"] = 3320455 -- 10000ChiPointsPack
	tPrivilegeMonthActivity_GiveStone[3315484][1]["RewardItem"][1]["Attr"] = "0 1"
	tPrivilegeMonthActivity_GiveStone[3315484][1]["RewardItem"][2] = {}
	tPrivilegeMonthActivity_GiveStone[3315484][1]["RewardItem"][2]["Id"] = 3200822 -- DBScroll
	tPrivilegeMonthActivity_GiveStone[3315484][1]["RewardItem"][2]["Attr"] = "0 1"
	tPrivilegeMonthActivity_GiveStone[3315484][1]["RewardRepairValue"] = {}
	tPrivilegeMonthActivity_GiveStone[3315484][1]["RewardRepairValue"]["Value"] = 6000 -- 6000点修为值
	tPrivilegeMonthActivity_GiveStone[3315484][1]["RewardEffect"] = {}
	tPrivilegeMonthActivity_GiveStone[3315484][1]["RewardEffect"]["SzObj"] = "self"
	tPrivilegeMonthActivity_GiveStone[3315484][1]["RewardEffect"]["Effect"] = "angelwing"
	tPrivilegeMonthActivity_GiveStone[3315484][1]["LogId"] = 12001849
	-- 激情服
	tPrivilegeMonthActivity_GiveStone[3315484][2] = {}
	tPrivilegeMonthActivity_GiveStone[3315484][2]["DeleteItem"] = {}
	tPrivilegeMonthActivity_GiveStone[3315484][2]["DeleteItem"][1] = {}
	tPrivilegeMonthActivity_GiveStone[3315484][2]["DeleteItem"][1]["Id"] = 3315484
	tPrivilegeMonthActivity_GiveStone[3315484][2]["RewardItem"] = {}
	tPrivilegeMonthActivity_GiveStone[3315484][2]["RewardItem"][1] = {}
	tPrivilegeMonthActivity_GiveStone[3315484][2]["RewardItem"][1]["Id"] = 3320455 -- 10000ChiPointsPack
	tPrivilegeMonthActivity_GiveStone[3315484][2]["RewardItem"][1]["Attr"] = "0 1"
	tPrivilegeMonthActivity_GiveStone[3315484][2]["RewardEMoneyMono"] = {}
	tPrivilegeMonthActivity_GiveStone[3315484][2]["RewardEMoneyMono"]["Value"] = 300 -- 和运营沟通 激情服的龙珠卷换成300赠点
	tPrivilegeMonthActivity_GiveStone[3315484][2]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	01440"
	tPrivilegeMonthActivity_GiveStone[3315484][2]["RewardRepairValue"] = {}
	tPrivilegeMonthActivity_GiveStone[3315484][2]["RewardRepairValue"]["Value"] = 6000  -- 6000点修为值
	tPrivilegeMonthActivity_GiveStone[3315484][2]["RewardEffect"] = {}
	tPrivilegeMonthActivity_GiveStone[3315484][2]["RewardEffect"]["SzObj"] = "self"
	tPrivilegeMonthActivity_GiveStone[3315484][2]["RewardEffect"]["Effect"] = "angelwing"
	tPrivilegeMonthActivity_GiveStone[3315484][2]["LogId"] = 12001849
	
local tPrivilegeMonthActivity_TrapReward = {}
	-- 3319181,'雷神灵珠'
	tPrivilegeMonthActivity_TrapReward[1] = {}
	tPrivilegeMonthActivity_TrapReward[1]["LogId"] = 12001230
	tPrivilegeMonthActivity_TrapReward[1]["RewardItem"] = {}
	tPrivilegeMonthActivity_TrapReward[1]["RewardItem"][1] = {}
	tPrivilegeMonthActivity_TrapReward[1]["RewardItem"][1]["Id"] = 3319181
	tPrivilegeMonthActivity_TrapReward[1]["RewardItem"][1]["Attr"] = "0 1"
	tPrivilegeMonthActivity_TrapReward[1]["RewardEffect"] = {}
	tPrivilegeMonthActivity_TrapReward[1]["RewardEffect"]["Effect"] = "angelwing"
	tPrivilegeMonthActivity_TrapReward[1]["Talk"] = tPrivilegeMonthActivity_Text[3319181]["RewardItem"]
	-- 3304324,'100气力值极运包'
	tPrivilegeMonthActivity_TrapReward[2] = {}
	tPrivilegeMonthActivity_TrapReward[2]["LogId"] = 12001230
	tPrivilegeMonthActivity_TrapReward[2]["RewardItem"] = {}
	tPrivilegeMonthActivity_TrapReward[2]["RewardItem"][1] = {}
	tPrivilegeMonthActivity_TrapReward[2]["RewardItem"][1]["Id"] = 3304324
	tPrivilegeMonthActivity_TrapReward[2]["RewardItem"][1]["Attr"] = "0 1"
	tPrivilegeMonthActivity_TrapReward[2]["RewardEffect"] = {}
	tPrivilegeMonthActivity_TrapReward[2]["RewardEffect"]["Effect"] = "angelwing"
	-- 3311725,'雷神谕令'--激情服
	tPrivilegeMonthActivity_TrapReward[3] = {}
	tPrivilegeMonthActivity_TrapReward[3]["LogId"] = 12001230
	tPrivilegeMonthActivity_TrapReward[3]["RewardItem"] = {}
	tPrivilegeMonthActivity_TrapReward[3]["RewardItem"][1] = {}
	tPrivilegeMonthActivity_TrapReward[3]["RewardItem"][1]["Id"] = 3311725
	tPrivilegeMonthActivity_TrapReward[3]["RewardItem"][1]["Attr"] = "0 2"
	tPrivilegeMonthActivity_TrapReward[3]["RewardEffect"] = {}
	tPrivilegeMonthActivity_TrapReward[3]["RewardEffect"]["Effect"] = "angelwing"
	
local tPrivilegeMonthActivity_TrapInfo = {}
	tPrivilegeMonthActivity_TrapInfo[1] = {}
	tPrivilegeMonthActivity_TrapInfo[1]["TrapType"] = 2190
	tPrivilegeMonthActivity_TrapInfo[1]["Look"] = 2190
	tPrivilegeMonthActivity_TrapInfo[2] = {}
	tPrivilegeMonthActivity_TrapInfo[2]["TrapType"] = 2191
	tPrivilegeMonthActivity_TrapInfo[2]["Look"] = 2191
	
local tPrivilegeMonthActivity_TrapPosition = {}
	tPrivilegeMonthActivity_TrapPosition[1] = {}
	-- 激情服地效刷新坐标	
	tPrivilegeMonthActivity_TrapPosition[1][01] = {10364,300,291}
	tPrivilegeMonthActivity_TrapPosition[1][02] = {10364,300,265}
	tPrivilegeMonthActivity_TrapPosition[1][03] = {10364,300,266}
	tPrivilegeMonthActivity_TrapPosition[1][04] = {10364,326,292}
	tPrivilegeMonthActivity_TrapPosition[1][05] = {1036,263,224}
	tPrivilegeMonthActivity_TrapPosition[1][06] = {1036,249,205}
	tPrivilegeMonthActivity_TrapPosition[1][07] = {1036,249,229}
	tPrivilegeMonthActivity_TrapPosition[1][08] = {1036,249,254}
	tPrivilegeMonthActivity_TrapPosition[1][09] = {1036,268,264}
	tPrivilegeMonthActivity_TrapPosition[1][10] = {1036,288,263}
	tPrivilegeMonthActivity_TrapPosition[1][11] = {1036,313,240}
	tPrivilegeMonthActivity_TrapPosition[1][12] = {1036,307,207}
-- 普通服地效刷新坐标
	tPrivilegeMonthActivity_TrapPosition[2] = {}
	tPrivilegeMonthActivity_TrapPosition[2][01] = {1002,335,449}
	tPrivilegeMonthActivity_TrapPosition[2][02] = {1002,336,431}
	tPrivilegeMonthActivity_TrapPosition[2][03] = {1002,352,431}
	tPrivilegeMonthActivity_TrapPosition[2][04] = {1002,353,449}
	tPrivilegeMonthActivity_TrapPosition[2][05] = {1002,302,472}
	tPrivilegeMonthActivity_TrapPosition[2][06] = {1002,302,492}
	tPrivilegeMonthActivity_TrapPosition[2][07] = {1002,270,468}
	tPrivilegeMonthActivity_TrapPosition[2][08] = {1002,269,483}
	tPrivilegeMonthActivity_TrapPosition[2][09] = {1002,345,502}
	tPrivilegeMonthActivity_TrapPosition[2][10] = {1002,352,502}
	tPrivilegeMonthActivity_TrapPosition[2][11] = {1002,337,379}
	tPrivilegeMonthActivity_TrapPosition[2][12] = {1002,353,379}
	tPrivilegeMonthActivity_TrapPosition[2][13] = {1002,368,384}
	tPrivilegeMonthActivity_TrapPosition[2][14] = {1002,391,384}
	tPrivilegeMonthActivity_TrapPosition[2][15] = {1002,392,394}

-- f副本地图内
	tPrivilegeMonthActivity_TrapPosition[3] = {}
	tPrivilegeMonthActivity_TrapPosition[3][01] = {103,109}
	tPrivilegeMonthActivity_TrapPosition[3][02] = {109,109}
	tPrivilegeMonthActivity_TrapPosition[3][03] = {105,118}
	tPrivilegeMonthActivity_TrapPosition[3][04] = {93,112}
	tPrivilegeMonthActivity_TrapPosition[3][05] = {92,98}
	tPrivilegeMonthActivity_TrapPosition[3][06] = {110,96}
	
-------------------------------------------------NPC逻辑

--活动时间内给战神令牌
-- 正气令获得 忍者特权月不给令牌
function PrivilegeMonthActivity_GiveWarTip()
	--活动时间外返回
	if not Sys_ChkFullTime(tPrivilegeMonthActivity_Constant["ActivetyTime"]) then
		return
	end
	
	local nUserId = Get_UserId()
	local nProfession = Get_UserProfession(nUserId)
	
	--职业不符合返回
	if nProfession < tPrivilegeMonthActivity_WarTip["Pro1"] or nProfession > tPrivilegeMonthActivity_WarTip["Pro2"] then
		return
	end

	--等级不符合返回
	if not User_JudgeLevelAndMetempsychosis(tPrivilegeMonthActivity_Constant["Level"],tPrivilegeMonthActivity_Constant["Metempsychosis"]) then
		return
	end
	
	local nEvent = tPrivilegeMonthActivity_GetStc["EventType"]
	local nType = tPrivilegeMonthActivity_GetStc["DataType"]

	if Task_ChkStcValue(nEvent,nType,">=",1) then
		if not Task_StcInterval(nEvent,nType,1,4) then
			if Task_ChkStcValue(nEvent,nType,">=",2) then
				return
			end
		else
			Task_SetStatistic(nEvent,nType,0,1)
			Task_SetStcTimestamp(nEvent,nType,0,0)
		end
	end
	
	
	Task_AddStatistic(nEvent,nType,1,1,0)
	Task_SetStcTimestamp(nEvent,nType,0,0)
	
	Item_AddNewItem(tPrivilegeMonthActivity_WarTip["Item"],tPrivilegeMonthActivity_WarTip["ItemAttr"])
	
end

--二次确认
function PrivilegeMonthActivity_SecondConfirm(nNpcId)

	if not PrivilegeMonthActivity_ConditionSatisfied(nNpcId) then
		return
	end
	
	local nItemId = tPrivilegeMonthActivity_WarTip["Item"]
	--判断玩家是否有物品
	if not Item_ChkItem(nItemId) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	LinkNpcGossipFunc_New(nNpcId,"2-4")
end


--进入宝库
function PrivilegeMonthActivity_GotoMap(nNpcId)

	if not PrivilegeMonthActivity_ConditionSatisfied(nNpcId) then
		return
	end
	
	local nItemId = tPrivilegeMonthActivity_WarTip["Item"]
	--判断玩家身上是否有战神令牌
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		--创建副本
		User_EnterInstance(tPrivilegeMonthActivity_Constant["Instance"])
		User_EffectAdd(tPrivilegeMonthActivity_Constant["EffectObj"],tPrivilegeMonthActivity_Constant["Effect_1"])
		User_TalkChannel2005(tPrivilegeMonthActivity_Text["EnterMap"])
		Sys_SaveActionFestivalLog(tPrivilegeMonthActivity_Constant["CreatLog"])
		
		local nEvent = tPrivilegeMonthActivity_EnterStc["EventType"]
		local nType = tPrivilegeMonthActivity_EnterStc["DataType"]
		Task_AddStatistic(nEvent,nType,1,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)
		
		--刷物品
		PrivilegeMonthActivity_RefreshItem()
		-- 刷陷阱
		PrivilegeMonthActivity_RefreshTrap()
		
		--倒计时
		User_SetTimer(tPrivilegeMonthActivity_Constant["Countdown"],"PrivilegeMonthActivity_KickOut",1)
		
		Sys_SaveEmoneyBuy(tPrivilegeMonthActivity_ELog["Into"])
	else
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
end


--判断玩家条件是否满足
function PrivilegeMonthActivity_ConditionSatisfied(nNpcId)
	--活动时间外返回
	if not Sys_ChkFullTime(tActivityTime["WarriorPrivilege"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return false
	end
	
	local nUserId = Get_UserId()
	local nProfession = Get_NewUserProfession(nUserId)
	--职业不符合返回
	if nProfession < tPrivilegeMonthActivity_WarTip["Pro1"] or nProfession > tPrivilegeMonthActivity_WarTip["Pro2"] then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return false
	end

	--等级不符合返回
	if not User_JudgeLevelAndMetempsychosis(tPrivilegeMonthActivity_Constant["Level"],tPrivilegeMonthActivity_Constant["Metempsychosis"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return false
	end
	
	local nEvent = tPrivilegeMonthActivity_EnterStc["EventType"]
	local nType = tPrivilegeMonthActivity_EnterStc["DataType"]

	--判断当天是否五次
	if Task_ChkStcValue(nEvent,nType,">=",1) then
		--每次进入需间隔10s再次进入
		if not Task_StcInterval(nEvent,nType,10,0) then
			LinkNpcGossipFunc_New(nNpcId,"2-6")
			return false
		end
		
		if not Task_StcInterval(nEvent,nType,1,4) then
			if Task_ChkStcValue(nEvent,nType,">=",5) then
				LinkNpcGossipFunc_New(nNpcId,"2-5")
				return false
			end
		else
			Task_SetStatistic(nEvent,nType,0,1)
			Task_SetStcTimestamp(nEvent,nType,0,0)
		end
	end
	
	return true
end






--将玩家踢出地图
function PrivilegeMonthActivity_KickOut(nUserId)
	local nNowUserId = nUserId or Get_UserId()
	local nIndex = 1
	-- 激情服
	if SpecialServer_ChkNoGiftServer() then
		nIndex = 2
	end
	local nMapId = tPrivilegeMonthActivity_Leave[nIndex]["MapId"]
	local nCellx = tPrivilegeMonthActivity_Leave[nIndex]["CellX"]
	local nCelly = tPrivilegeMonthActivity_Leave[nIndex]["CellY"]
	
	if not (Get_UserMapId(nNowUserId) == nMapId) then
		User_ChgMap(nMapId,nCellx,nCelly,1,nNowUserId)
		User_TalkChannel2005(tPrivilegeMonthActivity_Text["GetOut"],nNowUserId)
	end
	
end

--副本内刷物品
function PrivilegeMonthActivity_RefreshItem()
	local nMapId = Get_UserMapId()
	local nPosX = tPrivilegeMonthActivity_Refresh["PosX"] 
	local nPosY = tPrivilegeMonthActivity_Refresh["PosY"] 
	local nCellx = tPrivilegeMonthActivity_Refresh["Cellx"]
	local nCelly = tPrivilegeMonthActivity_Refresh["Celly"]
	local nItemNum = tPrivilegeMonthActivity_Refresh["ItemNum"]
	local nExistTime = tPrivilegeMonthActivity_Refresh["ExistTime"]
	local nItemId
	
	for i = 1,#tPrivilegeMonthActivity_RefreshItem do
		for j = 1,tPrivilegeMonthActivity_RefreshItemTimes[i] do
			local flat,tAward = Probabil_RandomAward(tPrivilegeMonthActivity_RefreshItem,i)
			nItemId = tAward[1]["tAward"][1]["Item_1"]
			--随机宝石
			if tAward[1]["tAward"][1]["Other"] then
				local nOther = tAward[1]["tAward"][1]["Other"]
				local nRandom = math.random(1,#tPrivilegeMonthActivity_RandomItem[nOther])
				nItemId = tPrivilegeMonthActivity_RandomItem[nOther][nRandom]
			end

			if tAward[1]["tAward"][1]["Global"] ~= nil then
				local nGlobal = tAward[1]["tAward"][1]["Global"]
				local nGlobalId = tPrivilegeMonthActivity_ItemGlobal[nGlobal]["GlobalId"]
				local nGlobalData = tPrivilegeMonthActivity_ItemGlobal[nGlobal]["GlobalData"]
				local nData = Get_SysDynaGlobalData(nGlobalId,nGlobalData)
				
				if nData < tPrivilegeMonthActivity_ItemGlobal[nGlobal]["MaxData"] then
					Sys_SetSynaGlobalData(nGlobalId,nGlobalData,nData + 1)
				else 
					nItemId = tPrivilegeMonthActivity_Constant["ItemType"]
				end
			end

			Map_DropMultiItems(nMapId,nItemId,nPosX,nPosY,nCellx,nCelly,nItemNum,nExistTime)
		end
	end
end

--副本内刷陷阱
function PrivilegeMonthActivity_RefreshTrap(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	for i,v in pairs(tPrivilegeMonthActivity_TrapPosition[3]) do
		local nIndex = math.random(1,2)
		local nTrapType = tPrivilegeMonthActivity_TrapInfo[nIndex]["TrapType"]
		local nLook = tPrivilegeMonthActivity_TrapInfo[nIndex]["Look"]
		-- 创建陷阱
		Trap_CreateMapTrap(nTrapType,nLook,0,nMapId,v[1],v[2],0,0)
	end
end

-- 服务器启动定时刷新
function PrivilegeMonthActivity_InitTrapData()
	--活动时间外返回
	if not Sys_ChkFullTime(tPrivilegeMonthActivity_Constant["ActivetyTime"]) then
		return false
	end
	
	local nIndex = 2
	if SpecialServer_ChkNoGiftServer() then
		nIndex = 1
	end
	for i,v in pairs(tPrivilegeMonthActivity_TrapPosition[nIndex]) do
		local nIndex = math.random(1,2)
		local nTrapType = tPrivilegeMonthActivity_TrapInfo[nIndex]["TrapType"]
		local nLook = tPrivilegeMonthActivity_TrapInfo[nIndex]["Look"]
		-- 创建陷阱
		Trap_CreateMapTrap(nTrapType,nLook,0,v[1],v[2],v[3],0,0)
	end
end

-- 时间自检移动陷阱
function PrivilegeMonthActivity_MoveTrap()
		--活动时间外返回
	if not Sys_ChkFullTime(tPrivilegeMonthActivity_Constant["ActivetyTime"]) then
		return false
	end
	
	local nIndex = 2
	local tHaveMove = tPrivilegeMonthActivity_HaveMoveTrap
	if SpecialServer_ChkNoGiftServer() then
		tHaveMove = tPrivilegeMonthActivity_HaveMoveTrapNoGift
		nIndex = 1
	end
	
	for i,v in pairs(tHaveMove) do
		local nIndex = math.random(1,2)
		local nTrapType = tPrivilegeMonthActivity_TrapInfo[nIndex]["TrapType"]
		local nLook = tPrivilegeMonthActivity_TrapInfo[nIndex]["Look"]
		local tPos = tPrivilegeMonthActivity_TrapPosition[nIndex][v]
		-- 创建陷阱
		Trap_CreateMapTrap(nTrapType,nLook,0,tPos[1],tPos[2],tPos[3],0,0)
	end
	tHaveMove = {}
end
---------------------------------------------------物品逻辑
--使用战神崛起礼包
function PrivilegeMonthActivity_OpenPack(nItemId)
	local nUserId = Get_UserId()
	local nProfession = Get_UserProfession(nUserId)
	local nUserMetempsychosis = Get_UserMetempsychosis(nUserId)
	local nTimes = tPrivilegeMonthActivity_Pack[nItemId]["Times"]
	--次数掩码
	local nEvent = tPrivilegeMonthActivity_Pack[nItemId]["EventType"]
	local nType = tPrivilegeMonthActivity_Pack[nItemId]["DataType"]
	
	--职业不符合给提示
	if nProfession < tPrivilegeMonthActivity_Pack[nItemId]["Pro1"] or nProfession > tPrivilegeMonthActivity_Pack[nItemId]["Pro2"] then
		User_TalkChannel2005(tPrivilegeMonthActivity_Text[nItemId]["NoPro"])
		return
	end
	
	--判断打开的次数及是否隔天
	--未隔天给提示
	if Task_ChkStcValue(nEvent,nType,">=",1) then
		if not Task_StcInterval(nEvent,nType,1,4) then
			Sys_MsgBox(tPrivilegeMonthActivity_Text[nItemId]["OnlyTime"])
			return
		end
	end
	

	if Item_ChkItem(nItemId) then
		if Task_ChkStcValue(nEvent,nType,">=",nTimes) then
			--删除礼包
			Item_DelItem(nItemId)
			User_TalkChannel2005(tPrivilegeMonthActivity_Text[nItemId]["LastTime"])
		else
			-- 判断背包空间
			if not User_CheckLeftSpace(tPrivilegeMonthActivity_Pack[nItemId]["Space"]) then
				User_TalkChannel2005(tPrivilegeMonthActivity_Text[nItemId]["NoSpace"])
				return
			end
		end
		
		Task_AddStatistic(nEvent,nType,1,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)
		
		--给物品
		Item_AddNewItem(tPrivilegeMonthActivity_Pack[nItemId]["Item"],tPrivilegeMonthActivity_Pack[nItemId]["ItemAttr"])
		--给双倍经验
		User_SetExpControl(tPrivilegeMonthActivity_Pack[nItemId]["ExpPercent"],tPrivilegeMonthActivity_Pack[nItemId]["ExpTime"])
		
		--给经验保护时间
		local nLevel = Get_UserLevel()
		if nLevel < G_User_MaxLev then
			local nStatus = tPrivilegeMonthActivity_Constant["Status"]
			local nPower = tPrivilegeMonthActivity_Constant["Power"]
			local nSecs  = tPrivilegeMonthActivity_Constant["Secs"]
			local nTime = tPrivilegeMonthActivity_Constant["Times"]
			local nEndTime = tPrivilegeMonthActivity_Constant["EndTime"]
			local nRecordable = tPrivilegeMonthActivity_Constant["Recordable"]
			local nRemainTime = tPrivilegeMonthActivity_Constant["RemainTime"]
			local nUserId = Get_UserId()
			User_AddRoleStatus(nStatus,nPower,nSecs,nTime,nRemainTime,nEndTime,nRecordable,1,0,nUserId)
		end
		
		local sEmoneyLog = tPrivilegeMonthActivity_ELog["OpenBag"]
		
		--2转以上给气力
		if nUserMetempsychosis >= 2 then
			User_AddStrengthValue(tPrivilegeMonthActivity_Pack[nItemId]["Strengthvalue"])
			User_TalkChannel2005(tPrivilegeMonthActivity_Text[nItemId]["2MeteAward"])
			Sys_SaveActionFestivalLog(string.format(tPrivilegeMonthActivity_Constant["2MeteLog"],nItemId))
			
			sEmoneyLog = tPrivilegeMonthActivity_ELog["OpenBag2"]
		else
			User_TalkChannel2005(tPrivilegeMonthActivity_Text[nItemId]["0MeteAward"])
			Sys_SaveActionFestivalLog(string.format(tPrivilegeMonthActivity_Constant["0MeteLog"],nItemId))
		end
		
		--添加EMoneyLog
		if nItemId == 3311728 then
			Sys_SaveEmoneyBuy(sEmoneyLog)
		end
		
		User_EffectAdd(tPrivilegeMonthActivity_Constant["EffectObj"],tPrivilegeMonthActivity_Constant["Effect_2"])
	end

end

-- '雷神惊世礼盒'--激情服
function PrivilegeMonthActivity_OpenNoGiftPack(nItemId)
	local nUserId = Get_UserId()
	local nProfession = Get_UserProfession(nUserId)
	local nUserMetempsychosis = Get_UserMetempsychosis(nUserId)
	local nTimes = tPrivilegeMonthActivity_Pack[nItemId]["Times"]
	--次数掩码
	local nEvent = tPrivilegeMonthActivity_Pack[nItemId]["EventType"]
	local nType = tPrivilegeMonthActivity_Pack[nItemId]["DataType"]
	
	--职业不符合给提示
	if nProfession < tPrivilegeMonthActivity_Pack[nItemId]["Pro1"] or nProfession > tPrivilegeMonthActivity_Pack[nItemId]["Pro2"] then
		User_TalkChannel2005(tPrivilegeMonthActivity_Text[nItemId]["NoPro"])
		return
	end
	
	--判断打开的次数及是否隔天
	--未隔天给提示
	if Task_ChkStcValue(nEvent,nType,">=",1) then
		if not Task_StcInterval(nEvent,nType,1,4) then
			Sys_MsgBox(tPrivilegeMonthActivity_Text[nItemId]["OnlyTime"])
			return
		end
	end
	
	-- 给修为值上限判断
	if nUserMetempsychosis >= 2 then
		if not RewardTemplate_UpperLimit(tPrivilegeMonthActivity_Pack[nItemId][3],nUserId) then
			return false
		end
	end

	if Item_ChkItem(nItemId) then
		if Task_ChkStcValue(nEvent,nType,">=",nTimes) then
			--删除礼包
			Item_DelItem(nItemId)
			User_TalkChannel2005(tPrivilegeMonthActivity_Text[nItemId]["LastTime"])
		end
		
		Task_AddStatistic(nEvent,nType,1,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)
		
		--给经验保护时间
		local nLevel = Get_UserLevel()
		if nLevel < G_User_MaxLev then
			local nStatus = tPrivilegeMonthActivity_Constant["Status"]
			local nPower = tPrivilegeMonthActivity_Constant["Power"]
			local nSecs  = tPrivilegeMonthActivity_Constant["Secs"]
			local nTime = tPrivilegeMonthActivity_Constant["Times"]
			local nEndTime = tPrivilegeMonthActivity_Constant["EndTime"]
			local nRecordable = tPrivilegeMonthActivity_Constant["Recordable"]
			local nRemainTime = tPrivilegeMonthActivity_Constant["RemainTime"]
			local nUserId = Get_UserId()
			User_AddRoleStatus(nStatus,nPower,nSecs,nTime,nRemainTime,nEndTime,nRecordable,1,0,nUserId)
		end
		
		--2转以上给气力
		local nRewardIndex = 0
		if nUserMetempsychosis >= 2 then
			nRewardIndex = 3
		else
			if Get_UserLevel(nUserId) < G_User_MaxLev then
				nRewardIndex = 1
			else
				nRewardIndex = 2
			end
		end
		RewardTemplate_UseItemAndMsg(tPrivilegeMonthActivity_Pack[nItemId][nRewardIndex])
	end
end

--使用战神令牌
function PrivilegeMonthActivity_OpenTips(nItemId)
	--过期删除
	
	if not Sys_ChkFullTime(tPrivilegeMonthActivity_Constant["UseTime"][nItemId]) then
		local nItemNum = Get_CountItemType(nItemId,0)
		local sLog = tPrivilegeMonthActivity_Constant["OverLog"]
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tPrivilegeMonthActivity_Text["OverTime"])
			Sys_SaveActionFestivalLog(string.format(sLog,nItemId,nItemNum))
		end
		return
	end

	local nNpcId = tPrivilegeMonthActivity_Constant["NpcId"]
	local nMapId = tPrivilegeMonthActivity_Constant["MapId"]
	local nPosX = tPrivilegeMonthActivity_Constant["PosX"]
	local nPosY = tPrivilegeMonthActivity_Constant["PosY"]
	
	--未过期自动寻路
	-- Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
	NpcPosition_PathFind(nNpcId)
end

function PrivilegeMonthActivity_OpenStonePack(nItemId)
	RewardTemplate_UseItem(tPrivilegeMonthActivity_GiveStone[nItemId])
end




--陷阱逻辑
function PrivilegeMonthActivity_LeaveMap()
	Sys_MsgBox(tPrivilegeMonthActivity_Text["Leave"],"PrivilegeMonthActivity_KickOut")
end

-- 雷电光效
function PrivilegeMonthActivity_TrapAward(nTrapId,nTrapType)
	-- 活动后
	local nMapId = Get_UserMapId()
	if not Sys_ChkFullTime(tPrivilegeMonthActivity_Constant["ActivetyTime"]) then
		Trap_DelMapTrap(nMapId,nTrapType)
		return
	end
	
	local nProfession = Get_UserProfession(nUserId)
	--职业不符合
	if nProfession < tPrivilegeMonthActivity_Pack[3311728]["Pro1"] or nProfession > tPrivilegeMonthActivity_Pack[3311728]["Pro2"] then
		User_TalkChannel2005(tPrivilegeMonthActivity_Text["NoMeetPro"])
		return
	end
	
	--等级不符合返回
	if not User_JudgeLevelAndMetempsychosis(tPrivilegeMonthActivity_Constant["Level"],tPrivilegeMonthActivity_Constant["Metempsychosis"]) then
		User_TalkChannel2005(tPrivilegeMonthActivity_Text["NoMeetLevel"])
		return
	end
	
	local tHaveMove = tPrivilegeMonthActivity_HaveMoveTrap
	local nIndex = 2
	if SpecialServer_ChkNoGiftServer() then
		tHaveMove = tPrivilegeMonthActivity_HaveMoveTrapNoGift
		nIndex = 1
	end
	local tTrapPos = tPrivilegeMonthActivity_TrapPosition[nIndex]
	local nTwincity = tPrivilegeMonthActivity_Constant["MapId"]
	local nMarket = tPrivilegeMonthActivity_Constant["Market"]
	-- 双龙城市场区 1个100气力值的礼包 每日上限1次
	if nMapId == nTwincity or nMapId == nMarket then
		-- (双龙城和市场区。陷阱已经去掉，这边逻辑不会走到)
		local nEvent = tPrivilegeMonthActivity_AwardStc["EventType"]
		local nType = tPrivilegeMonthActivity_AwardStc["DataType"]
		if Task_ChkStcValue(nEvent,nType,">=",1) then
			if not Task_StcInterval(nEvent,nType,1,4) then
				-- User_TalkChannel2005(tPrivilegeMonthActivity_Text["HaveAward"])
				return
			else
				Task_SetStatistic(nEvent,nType,0,1)
				Task_SetStcTimestamp(nEvent,nType,0,0)
			end
		end
		
		if not RewardTemplate_CheckSpace(tPrivilegeMonthActivity_TrapReward[2]) then
			return
		end
		
		local nTrapPosX = Get_TrapPosX(nTrapId)
		local nTrapPosY = Get_TrapPosY(nTrapId)
		for a,b in pairs(tTrapPos) do
			if nMapId == b[1] and nTrapPosX == b[2] and nTrapPosY == b[3] then
				table.insert(tHaveMove,a)
				break
			end
		end
		
		Trap_EraseMapTrap(nTrapId)
		
		Task_SetStatistic(nEvent,nType,1,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		
		RewardTemplate_UseItemAndMsg(tPrivilegeMonthActivity_TrapReward[2])
		Sys_MsgBox(tPrivilegeMonthActivity_Text["AwardItem"])
		return
	end
	-- 场景内 可以获得1颗雷神灵珠
	if not RewardTemplate_CheckSpace(tPrivilegeMonthActivity_TrapReward[1]) then
		return
	end
	Trap_EraseMapTrap(nTrapId)
	RewardTemplate_UseItemAndMsg(tPrivilegeMonthActivity_TrapReward[1])
end

-- 魂球给雷神雷神谕令
function PrivilegeMonthActivity_SoulAward()
	-- 活动后
	if not Sys_ChkFullTime(tPrivilegeMonthActivity_Constant["ActivetyTime"]) then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tPrivilegeMonthActivity_TrapReward[3])
end


-- 闲聊NPC逻辑
function PrivilegeMonthActivity_TalkNpc()
	-- 活动后
	if not Sys_ChkFullTime(tPrivilegeMonthActivity_Constant["ActivetyTime"]) then
		return
	end

	-- 等级不符（80级）
	if not User_JudgeLevelAndMetempsychosis(tPrivilegeMonthActivity_Constant["Level"],tPrivilegeMonthActivity_Constant["Metempsychosis"]) then
		return
	end

	-- 所有职业玩家每天都能活动1次
	local nEvent = tPrivilegeMonthActivity_AwardStc["EventType"]
	local nType = tPrivilegeMonthActivity_AwardStc["DataType"]
		
	-- 是否领取过
	if Task_ChkStcValue(nEvent,nType,">=",1) then
		if not Task_StcInterval(nEvent,nType,1,4) then
			return
			
		-- 隔天重置
		else
			Task_SetStatistic(nEvent,nType,0,1)
			Task_SetStcTimestamp(nEvent,nType,0,0)
		end
	end
	
	-- 背包满
	if not RewardTemplate_CheckSpace(tPrivilegeMonthActivity_TrapReward[2]) then
		return
	end

	-- 置掩码
	Task_SetStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	
	-- 给奖励
	RewardTemplate_UseItemAndMsg(tPrivilegeMonthActivity_TrapReward[2])
	
	-- 出提示
	Sys_MsgBox(tPrivilegeMonthActivity_Text["TalkNpc"])
end

--------------------------------------------------NPC配置
--宝库守卫
tNpcFace[5179] = 76
tNpcGossip[19262] = tNpcGossip[19262] or DefaultNpc:new{}
tNpcGossip[19262]["OptionHidden"] = 1

--活动时间内
-- tNpcGossip[19262]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[19262]["Text1-1"] = {111,112,113,114}
tNpcGossip[19262]["Text111"] = tPrivilegeMonthActivity_Text[19262]["Text111"]
tNpcGossip[19262]["Text112"] = tPrivilegeMonthActivity_Text[19262]["Text112"]

tNpcGossip[19262]["Text113"] = tPrivilegeMonthActivity_Text[19262]["Text113"]
tNpcGossip[19262]["Text114"] = tPrivilegeMonthActivity_Text[19262]["Text114"]
-- tNpcGossip[19262]["Text115"] = tPrivilegeMonthActivity_Text[19262]["Text115"]

-- tNpcGossip[19262]["tOption1-1"] = {1,100,101,2}
-- tNpcGossip[19262]["Option1"] = tPrivilegeMonthActivity_Text[19262]["Option1"]
-- 忍者特权月 取消副本部分
tNpcGossip[19262]["tOption1-1"] = {500,501,2}
tNpcGossip[19262]["Option2"] = tPrivilegeMonthActivity_Text[19262]["Option2"]
tNpcGossip[19262]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tActivityTime["NanjaPrivilege"]["ActivityTime"])
end

tNpcGossip[19262]["OptionFunc1"] = "PrivilegeMonthActivity_SecondConfirm</N>19262"
tNpcGossip[19262]["OptionChkFunc90"] = function ()
	-- 奋斗服 激情服不上
	-- local nGlobalId = tPrivilegeMonthActivity_Constant["GlobalId"]
	-- if Get_SysDynaGlobalData0(nGlobalId) >= 1 then
	-- 	return false
	-- end
	
	if SpecialServer_ChkNoGiftServer() then
		return false
	end
	return true
end
tNpcGossip[19262]["OptionChkFunc91"] = function ()
		-- 奋斗服 激情服不上
	-- local nGlobalId = tPrivilegeMonthActivity_Constant["GlobalId"]
	-- if Get_SysDynaGlobalData0(nGlobalId) >= 1 then
	-- 	return false
	-- end
	
	if SpecialServer_ChkNoGiftServer() then
		return false
	end
	return true
end
tNpcGossip[19262]["OptionChkFunc100"] = function ()
	-- 奋斗服 激情服不上
--	local nGlobalId = tPrivilegeMonthActivity_Constant["GlobalId"]
--	if Get_SysDynaGlobalData0(nGlobalId) >= 1 then
--		return false
--	end
	
	if SpecialServer_ChkNoGiftServer() then
		return false
	end
	return true
end
tNpcGossip[19262]["OptionChkFunc101"] = function ()
		-- 奋斗服 激情服不上
--	local nGlobalId = tPrivilegeMonthActivity_Constant["GlobalId"]
--	if Get_SysDynaGlobalData0(nGlobalId) >= 1 then
--		return false
--	end
	
	if SpecialServer_ChkNoGiftServer() then
		return false
	end
	return true
end

-- 忍者特权月
tNpcGossip[19262]["OptionChkFunc500"] = function ()
	-- 奋斗服 激情服不上
--	local nGlobalId = tPrivilegeMonthActivity_Constant["GlobalId"]
--	if Get_SysDynaGlobalData0(nGlobalId) >= 1 then
--		return false
--	end
	
	-- 绿色新服 激情服不上
	local nGlobalId = tPrivilegeMonthActivity_Constant["GreenServerGlobal"]
	if Get_SysDynaGlobalData0(nGlobalId) >= 1 then
		return false
	end
	
	if SpecialServer_ChkNoGiftServer() then
		return false
	end
	return true
end
tNpcGossip[19262]["OptionChkFunc501"] = function ()
		-- 奋斗服 激情服不上
--	local nGlobalId = tPrivilegeMonthActivity_Constant["GlobalId"]
--	if Get_SysDynaGlobalData0(nGlobalId) >= 1 then
--		return false
--	end

	-- 绿色新服 激情服不上
	local nGlobalId = tPrivilegeMonthActivity_Constant["GreenServerGlobal"]
	if Get_SysDynaGlobalData0(nGlobalId) >= 1 then
		return false
	end
	
	if SpecialServer_ChkNoGiftServer() then
		return false
	end
	return true
end

--活动时间外的对白
tNpcGossip[19262]["Text1-2"] = {121,122}
tNpcGossip[19262]["Text121"] = tPrivilegeMonthActivity_Text[19262]["Text121"]
tNpcGossip[19262]["Text122"] = tPrivilegeMonthActivity_Text[19262]["Text122"]
tNpcGossip[19262]["tOption1-2"] = {3}
tNpcGossip[19262]["Option3"] = tPrivilegeMonthActivity_Text[19262]["Option3"]

--玩家身上没有战神令牌
tNpcGossip[19262]["Text2-1"] = {211}
tNpcGossip[19262]["Text211"] = tPrivilegeMonthActivity_Text[19262]["Text211"]
tNpcGossip[19262]["tOption2-1"] = {4}
tNpcGossip[19262]["Option4"] = tPrivilegeMonthActivity_Text[19262]["Option4"]

--阁下非战士职业
tNpcGossip[19262]["Text2-2"] = {221}
tNpcGossip[19262]["Text221"] = tPrivilegeMonthActivity_Text[19262]["Text221"]
tNpcGossip[19262]["tOption2-2"] = {221}
tNpcGossip[19262]["Option221"] = tPrivilegeMonthActivity_Text[19262]["Option221"]

--阁下等级不足
tNpcGossip[19262]["Text2-3"] = {231}
tNpcGossip[19262]["Text231"] = tPrivilegeMonthActivity_Text[19262]["Text231"]
tNpcGossip[19262]["tOption2-3"] = {221}


--二次确认对白
tNpcGossip[19262]["Text2-4"] = {241}
tNpcGossip[19262]["Text241"] = tPrivilegeMonthActivity_Text[19262]["Text241"]
tNpcGossip[19262]["tOption2-4"] = {5,6}
tNpcGossip[19262]["Option5"] = tPrivilegeMonthActivity_Text[19262]["Option5"]
tNpcGossip[19262]["Option6"] = tPrivilegeMonthActivity_Text[19262]["Option6"]
tNpcGossip[19262]["OptionFunc5"] = "PrivilegeMonthActivity_GotoMap</N>19262"

tNpcGossip[19262]["Text2-5"] = {251}
tNpcGossip[19262]["Text251"] = tPrivilegeMonthActivity_Text[19262]["Text251"]
tNpcGossip[19262]["tOption2-5"] = {221}

tNpcGossip[19262]["Text2-6"] = {261}
tNpcGossip[19262]["Text261"] = tPrivilegeMonthActivity_Text[19262]["Text261"]
tNpcGossip[19262]["tOption2-6"] = {221}


---------------------------
-- 闲聊NPC（弗雷）
tNpcFace[6496] = 235
tNpcGossip[23793] = tNpcGossip[23793] or DefaultNpc:new{}
tNpcGossip[23793]["OptionHidden"] = 1
tNpcGossip[23793]["DialogueText"] = tPrivilegeMonthActivity_Text[23793]
-- 闲聊对白
tNpcGossip[23793]["Text1-1"] = {111,112}
tNpcGossip[23793]["tOption1-1"] = {111}
tNpcGossip[23793]["OptionFunc111"] = "PrivilegeMonthActivity_TalkNpc"

-- 闲聊NPC（瓦利）
tNpcFace[6497] = 21
tNpcGossip[23794] = tNpcGossip[23794] or DefaultNpc:new{}
tNpcGossip[23794]["OptionHidden"] = 1
tNpcGossip[23794]["DialogueText"] = tPrivilegeMonthActivity_Text[23794]
-- 闲聊对白
tNpcGossip[23794]["Text1-1"] = {111,112}
tNpcGossip[23794]["tOption1-1"] = {111}
tNpcGossip[23794]["OptionFunc111"] = "PrivilegeMonthActivity_TalkNpc"

-- 闲聊NPC（布拉吉）
tNpcFace[6498] = 32
tNpcGossip[23795] = tNpcGossip[23795] or DefaultNpc:new{}
tNpcGossip[23795]["OptionHidden"] = 1
tNpcGossip[23795]["DialogueText"] = tPrivilegeMonthActivity_Text[23795]
-- 闲聊对白
tNpcGossip[23795]["Text1-1"] = {111,112}
tNpcGossip[23795]["tOption1-1"] = {111}
tNpcGossip[23795]["OptionFunc111"] = "PrivilegeMonthActivity_TalkNpc"



--------------------------------------------------物品配置
	-- 3200227 战神崛起礼包
tItem[3200227] = tItem[3200227] or {}
tItem[3200227]["Function"] = function(nItemId,sItemName)
	PrivilegeMonthActivity_OpenPack(nItemId)
end

tItem[3301520] = tItem[3301520] or {}
tItem[3301520]["Function"] = function(nItemId,sItemName)
	PrivilegeMonthActivity_OpenPack(nItemId)
end

--海盗崛起礼包
tItem[3307639] = tItem[3307639] or {}
tItem[3307639]["Function"] = function(nItemId,sItemName)
	PrivilegeMonthActivity_OpenPack(nItemId)
end

	-- 3200232 战神令牌
tItem[3200232] = tItem[3200232] or {}
tItem[3200232]["Function"] = function(nItemId,sItemName)
	PrivilegeMonthActivity_OpenTips(nItemId)
end
 
	--3301521 铁扇门令牌
tItem[3301521] = tItem[3301521] or {}
tItem[3301521]["Function"] = function(nItemId,sItemName)
	PrivilegeMonthActivity_OpenTips(nItemId)
end

	--海魂令
tItem[3307636] = tItem[3307636] or {}
tItem[3307636]["Function"] = function(nItemId,sItemName)
	PrivilegeMonthActivity_OpenTips(nItemId)
end

	-- 3200747 星陨石小福袋
tItem[3200747] = tItem[3200747] or {}
tItem[3200747]["Function"] = function(nItemId,sItemName)
	PrivilegeMonthActivity_OpenStonePack(nItemId)
end

	-- 3200748 星陨石大福袋
tItem[3200748] = tItem[3200748] or {}
tItem[3200748]["Function"] = function(nItemId,sItemName)
	PrivilegeMonthActivity_OpenStonePack(nItemId)
end

	-- 3307637 骁勇善战修行包
tItem[3307637] = tItem[3307637] or {}
tItem[3307637]["Function"] = function(nItemId,sItemName)
	PrivilegeMonthActivity_OpenStonePack(nItemId)
end

--英勇无双气力包
tItem[3307638] = tItem[3307637]

--组队PK海盗特权礼包
tItem[3307662] = tItem[3307637]
--海盗宝藏
tItem[3307988] = tItem[3307637]
--史诗武器
tItem[3307656] = tItem[3307637]
tItem[3307657] = tItem[3307637]
tItem[3307658] = tItem[3307637]
tItem[3307659] = tItem[3307637]
tItem[3307660] = tItem[3307637]

-- 3311725,'雷神谕令'
tItem[3311725] = tItem[3307636]
-- 3311726,'风驰电掣修为值包'
tItem[3311726] = tItem[3307637]
-- 3311727,'雷厉风行气力包'
tItem[3311727] = tItem[3307637]
-- 3311728,'雷神惊世礼盒'
tItem[3311728] = tItem[3307639]
-- 3311729,'组队PK雷神特权礼盒',
tItem[3311729] = tItem[3311729] or {}
tItem[3311729]["Function"] = function(nItemId,sItemName)
	if SpecialServer_ChkNoGiftServer() then
		RewardTemplate_UseItem(tPrivilegeMonthActivity_GiveStone[nItemId][2])
	else
		RewardTemplate_UseItem(tPrivilegeMonthActivity_GiveStone[nItemId][1])
	end
end
-- 3319301,'雷神惊世礼盒'--激情服
tItem[3319301] = tItem[3319301] or {}
tItem[3319301]["Function"] = function(nItemId,sItemName)
	PrivilegeMonthActivity_OpenNoGiftPack(nItemId)
end
-- 3319465,'5颗+5赤炼石包'
tItem[3319465] = tItem[3307637]

-- 3319181,'雷神灵珠'
tItem[3319181] = tItem[3319181] or {}
tItem[3319181]["Function"] = function(nItemId,sItemName)
	User_OpenDialog(924)
end

-- 3320455,'10000ChiPointsPack'
tItem[3320455] = tItem[3320455] or {}
tItem[3320455]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItem(tPrivilegeMonthActivity_GiveStone[nItemId])
end
-- 3312754,'神勇门金令'
tItem[3312754] = tItem[3307636]

-- 3312711,'勇气可嘉修为值包'
tItem[3312711] = tItem[3307637]
-- 3312712,'勇不可挡气力包'
tItem[3312712] = tItem[3307637]
-- 3312713,'组队PK勇士特权礼盒'
tItem[3312713] = tItem[3312713] or {}
tItem[3312713]["Function"] = function(nItemId,sItemName)
	if SpecialServer_ChkNoGiftServer() then
		RewardTemplate_UseItem(tPrivilegeMonthActivity_GiveStone[nItemId][2])
	else
		RewardTemplate_UseItem(tPrivilegeMonthActivity_GiveStone[nItemId][1])
	end
end

--- 忍者特权月
-- 3315482,'暗影猎手修行包'
tItem[3315482] = tItem[3307637]
-- 3315483,'夜幕之王气力包'
tItem[3315483] = tItem[3307637]
-- 3315484,'组队PK忍者特权礼盒'
tItem[3315484] = tItem[3315484] or {}
tItem[3315484]["Function"] = function(nItemId,sItemName)
	-- 绿色新服 激情服 给另外奖励
	local nGlobalId = tPrivilegeMonthActivity_Constant["GreenServerGlobal"]
	if Get_SysDynaGlobalData0(nGlobalId) >= 1 then
		RewardTemplate_UseItem(tPrivilegeMonthActivity_GiveStone[nItemId][2])
		return
	end
	
	if SpecialServer_ChkNoGiftServer() then
		RewardTemplate_UseItem(tPrivilegeMonthActivity_GiveStone[nItemId][2])
	else
		RewardTemplate_UseItem(tPrivilegeMonthActivity_GiveStone[nItemId][1])
	end
end
----------------------------------------------------陷阱--------------------------------------------------------

tTrap[1420] = tTrap[1420] or {}
tTrap[1420]["Function"] = function (nTrapId,nTrapType)
	PrivilegeMonthActivity_LeaveMap()
end

-- ##雷电光效
tTrap[2190] = tTrap[2190] or {}
tTrap[2190]["Function"] = function (nTrapId,nTrapType)
	PrivilegeMonthActivity_TrapAward(nTrapId,nTrapType)
end
tTrap[2191] = tTrap[2190]

-- 服务器启动刷新陷阱（QA建议去掉）
-- tServerStart["tFunction"] = tServerStart["tFunction"] or {}
-- table.insert(tServerStart["tFunction"],PrivilegeMonthActivity_InitTrapData)

-- 时间自检
local tPrivilegeMonthActivity_OnTime = {}
	tPrivilegeMonthActivity_OnTime["Activity"] = tActivityTime["NanjaPrivilege"]["ActivityTime"]
	tPrivilegeMonthActivity_OnTime["Type"] = 1
	tPrivilegeMonthActivity_OnTime["Func"] = PrivilegeMonthActivity_MoveTrap
table.insert(tSystemTime_InitialData,tPrivilegeMonthActivity_OnTime)
table.insert(tSystemTime_InitialData_NoGift,tPrivilegeMonthActivity_OnTime)
