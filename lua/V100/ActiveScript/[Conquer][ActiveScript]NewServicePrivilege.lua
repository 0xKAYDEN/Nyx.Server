------------------------------------------------------------------------------------
--Name:		161117[英文征服][活动脚本]12月新服福利活动(12.15-1.11)
--Purpose:	新服福利活动
--Creator: 	许乐
--Created:	2016/11/17
------------------------------------------------------------------------------------
-- 命名前缀
-- NewServicePrivilege_
-- 12000581
-- 40389 = V100\ActiveScript\[Conquer][ActiveScript]NewServicePrivilege.lua

------------------------------------------------------------------------------------
-- 掩码说明
-- stc(152,82)：每天使用正气令获得1块【宝库密令】
-- stc(152,83)：记录是否进入过宝库以及进入的时间
-- stc(152,84)：上交美金券的总数额
-- stc(152,85)：活动背包信

-- 记录是否获得各PK赛中参与奖励（一个5美元机会包）
-- stc(152,86)		-- 精英PK赛（周五）
-- stc(152,87)		-- 组队PK赛（周六）
-- stc(152,88)		-- 帮战（周六）
-- stc(152,89)		-- 战旗（周六）

-- 动态码说明：
-- 51417：Data0-Data3  宝箱随机奖励的单服每天限刷数量
-- data0:天石礼包 3008903  单服每天限刷50个
-- data1:赤炼石+2	730002	单服每天限刷10个
-- data2:1美元美金券 3301543 	单服每天限刷20个
-- data3:龙珠	1088000 单服每天限刷10个

-- 51418：Data0==1 新股标志
------------------------------------------------------------------------------------
-- 161219[英文征服][活动脚本]2017年1月新服福利活动(1.12-2.11)
-- 修改内容：
-- 新服活动
-- 去掉美金券相关内容和PK赛额外奖励，只复用进入宝库的内容
-------------------------------------------------变量配置-------------------------------------------------
-- 常量表
local tNewServicePrivilege_Constant = {}
	-- 时间
	tNewServicePrivilege_Constant["BeforeTime"] = "2016-11-15 00:00 2017-01-11 23:59"
	tNewServicePrivilege_Constant["ActivetyTime"] = "2017-01-12 00:00 2017-02-11 23:59"
	
	-- PK赛额外奖励获得时间（美金券相关）
	tNewServicePrivilege_Constant["PKActivetyTime"] = "2016-12-15 00:00 2017-01-11 23:59"
	
	-- 新服标志
	tNewServicePrivilege_Constant["NewServiceGlobal"] = 51418
	
	-- 等级
	tNewServicePrivilege_Constant["Level"] = 80
	tNewServicePrivilege_Constant["Metempsychosis"] = 0

	-- 活动期间，玩家使用【正气令】后，可以额外获得1块【宝库密令】。
	tNewServicePrivilege_Constant["Passcard"] = 3301542
	tNewServicePrivilege_Constant["ItemAttr"] = "0 0 0 1440 1"
	
	-- 5美元机会包
	tNewServicePrivilege_Constant["ChanceItem"] = 3301545
	tNewServicePrivilege_Constant["ChanceAttr"] = "0 1"

	-- 链接
	tNewServicePrivilege_Constant["WebAddress"] = "http://event.co.99.com/cash1612/client/"

	-- log
	tNewServicePrivilege_Constant["CreateLog"] = "0,0,0,0,12000581,1,0,0"								-- 成功进入宝库
	tNewServicePrivilege_Constant["PasscardLog"] = "0,0,0,0,12000581,2,3301542,1"					-- 获得宝库密令
	tNewServicePrivilege_Constant["DollarLog"] = "0,0,%d,%d,12000581,2,0,0"							-- 上交美金券（一种）
	tNewServicePrivilege_Constant["DollarLog_1"] = "0,0,%d[%d],%d[%d],12000581,2,0,0"			-- 上交美金券（两种）
	tNewServicePrivilege_Constant["DelItem"] = "0,0,%d,1,12000581,3,0,0"					-- 过期时间使用物品后删除
	tNewServicePrivilege_Constant["GetChanceLog"] = "0,0,0,0,12000581,2[%d],%d,1"		-- 从各PK赛中获得5美元机会包
	
	--npc坐标
	tNewServicePrivilege_Constant["NpcId"] = 19991
	tNewServicePrivilege_Constant["MapId"] = 1002
	tNewServicePrivilege_Constant["PosX"] = 306
	tNewServicePrivilege_Constant["PosY"] = 248
	
	--副本
	tNewServicePrivilege_Constant["Instance"] = 53
	tNewServicePrivilege_Constant["EffectObj"] = "self"
	tNewServicePrivilege_Constant["Effect_1"] = "movego"
	
	-- 10s
	tNewServicePrivilege_Constant["Countdown"] = 10
	
	-- 奖励超过上限 替换物品 60分钟经验包
	tNewServicePrivilege_Constant["ItemType"] = 3007120
	
local sNewServicePrivilege_Effect="angelwing"

local tNewServicePrivilege_Stc = {}
	-- 活动期间，玩家使用【正气令】后，可以额外获得1块【宝库密令】。
	tNewServicePrivilege_Stc[1] = {}
	tNewServicePrivilege_Stc[1]["EventType"] = 152
	tNewServicePrivilege_Stc[1]["DataType"] = 82
	-- 记录是否进入过宝库以及进入的时间
	tNewServicePrivilege_Stc[2] = {}
	tNewServicePrivilege_Stc[2]["EventType"] = 152
	tNewServicePrivilege_Stc[2]["DataType"] = 83
	-- 上交美金券的总数额
	tNewServicePrivilege_Stc[3] = {}
	tNewServicePrivilege_Stc[3]["EventType"] = 152
	tNewServicePrivilege_Stc[3]["DataType"] = 84
	
-- 记录是否获得各PK赛中参与奖励（一个5美元机会包）
local tNewServicePrivilege_PKActiveStc = {}
	-- 精英PK赛（周五）
	tNewServicePrivilege_PKActiveStc[1] = {}
	tNewServicePrivilege_PKActiveStc[1]["EventType"] = 152
	tNewServicePrivilege_PKActiveStc[1]["DataType"] = 86
	-- 组队PK赛（周六）
	tNewServicePrivilege_PKActiveStc[2] = {}
	tNewServicePrivilege_PKActiveStc[2]["EventType"] = 152
	tNewServicePrivilege_PKActiveStc[2]["DataType"] = 87
	-- 帮战（周六）
	tNewServicePrivilege_PKActiveStc[3] = {}
	tNewServicePrivilege_PKActiveStc[3]["EventType"] = 152
	tNewServicePrivilege_PKActiveStc[3]["DataType"] = 88
	-- 战旗（周六）
	tNewServicePrivilege_PKActiveStc[4] = {}
	tNewServicePrivilege_PKActiveStc[4]["EventType"] = 152
	tNewServicePrivilege_PKActiveStc[4]["DataType"] = 89

local tNewServicePrivilege_Leave = {}
	tNewServicePrivilege_Leave["MapId"] = 1002
	tNewServicePrivilege_Leave["CellX"] = 310
	tNewServicePrivilege_Leave["CellY"] = 250
	
--副本内刷物品的坐标范围
local tNewServicePrivilege_Refresh = {}
	tNewServicePrivilege_Refresh["PosX"] = 48
	tNewServicePrivilege_Refresh["PosY"] = 48
	tNewServicePrivilege_Refresh["Cellx"] = 15
	tNewServicePrivilege_Refresh["Celly"] = 15
	tNewServicePrivilege_Refresh["ItemNum"] = 1
	tNewServicePrivilege_Refresh["ExistTime"] = 10
	
local tNewServicePrivilege_ItemGlobal = {}
	tNewServicePrivilege_ItemGlobal[1] = {}
	tNewServicePrivilege_ItemGlobal[1]["GlobalId"] = 51417
	tNewServicePrivilege_ItemGlobal[1]["GlobalData"] = 0
	tNewServicePrivilege_ItemGlobal[1]["MaxData"] = 50

	tNewServicePrivilege_ItemGlobal[2] = {}
	tNewServicePrivilege_ItemGlobal[2]["GlobalId"] = 51417
	tNewServicePrivilege_ItemGlobal[2]["GlobalData"] = 1
	tNewServicePrivilege_ItemGlobal[2]["MaxData"] = 10

	tNewServicePrivilege_ItemGlobal[3] = {}
	tNewServicePrivilege_ItemGlobal[3]["GlobalId"] = 51417
	tNewServicePrivilege_ItemGlobal[3]["GlobalData"] = 2
	tNewServicePrivilege_ItemGlobal[3]["MaxData"] = 20
	
	tNewServicePrivilege_ItemGlobal[4] = {}
	tNewServicePrivilege_ItemGlobal[4]["GlobalId"] = 51417
	tNewServicePrivilege_ItemGlobal[4]["GlobalData"] = 3
	tNewServicePrivilege_ItemGlobal[4]["MaxData"] = 10
	
local tNewServicePrivilege_RefreshItemTimes = {}
	tNewServicePrivilege_RefreshItemTimes[1] = 25
	tNewServicePrivilege_RefreshItemTimes[2] = 5
	
-- 刷新物品配置
local tNewServicePrivilege_RefreshItem = {}
	tNewServicePrivilege_RefreshItem[1] = {}
	tNewServicePrivilege_RefreshItem[1]["ItemChanceSum"] = 10000
	-- 普通宝石（不含天地玄）	25.00%
	tNewServicePrivilege_RefreshItem[1][1] = {}
	tNewServicePrivilege_RefreshItem[1][1]["RandomItemChanceType"] = 2
	tNewServicePrivilege_RefreshItem[1][1]["ItemChance"] = 2500
	tNewServicePrivilege_RefreshItem[1][1]["Other"] = 1
	tNewServicePrivilege_RefreshItem[1][1]["Index"] = 1
	--流星	12.50%	1088001	流星
	tNewServicePrivilege_RefreshItem[1][2] = {}
	tNewServicePrivilege_RefreshItem[1][2]["RandomItemChanceType"] = 2
	tNewServicePrivilege_RefreshItem[1][2]["ItemChance"] = 1250
	tNewServicePrivilege_RefreshItem[1][2]["Item_1"] = 1088001
	tNewServicePrivilege_RefreshItem[1][2]["Index"] = 2
	--龙虎回力丸	12.50%	729252	龙虎回力丸
	tNewServicePrivilege_RefreshItem[1][3] = {}
	tNewServicePrivilege_RefreshItem[1][3]["RandomItemChanceType"] = 2
	tNewServicePrivilege_RefreshItem[1][3]["ItemChance"] = 1250
	tNewServicePrivilege_RefreshItem[1][3]["Item_1"] = 729252
	tNewServicePrivilege_RefreshItem[1][3]["Index"] = 3
	--奇门秘籍	12.50%	723340	奇门秘籍
	tNewServicePrivilege_RefreshItem[1][4] = {}
	tNewServicePrivilege_RefreshItem[1][4]["RandomItemChanceType"] = 2
	tNewServicePrivilege_RefreshItem[1][4]["ItemChance"] = 1250
	tNewServicePrivilege_RefreshItem[1][4]["Item_1"] = 723340
	tNewServicePrivilege_RefreshItem[1][4]["Index"] = 4
	--10分钟经验包	12.50%	3006531	10分钟经验礼包
	tNewServicePrivilege_RefreshItem[1][5] = {}
	tNewServicePrivilege_RefreshItem[1][5]["RandomItemChanceType"] = 2
	tNewServicePrivilege_RefreshItem[1][5]["ItemChance"] = 1250
	tNewServicePrivilege_RefreshItem[1][5]["Item_1"] = 3006531
	tNewServicePrivilege_RefreshItem[1][5]["Index"] = 5
	--真气礼包	12.50%	3006542	真气礼包
	tNewServicePrivilege_RefreshItem[1][6] = {}
	tNewServicePrivilege_RefreshItem[1][6]["RandomItemChanceType"] = 2
	tNewServicePrivilege_RefreshItem[1][6]["ItemChance"] = 1250
	tNewServicePrivilege_RefreshItem[1][6]["Item_1"] = 3006542
	tNewServicePrivilege_RefreshItem[1][6]["Index"] = 6
	--修炼礼包	12.50%	3006543	修炼礼包
	tNewServicePrivilege_RefreshItem[1][7] = {}
	tNewServicePrivilege_RefreshItem[1][7]["RandomItemChanceType"] = 2
	tNewServicePrivilege_RefreshItem[1][7]["ItemChance"] = 1250
	tNewServicePrivilege_RefreshItem[1][7]["Item_1"] = 3006543
	tNewServicePrivilege_RefreshItem[1][7]["Index"] = 7

	tNewServicePrivilege_RefreshItem[2] = {}
	tNewServicePrivilege_RefreshItem[2]["ItemChanceSum"] = 10000
	-- 60分钟经验包	20.00%	宝物id=3007120
	tNewServicePrivilege_RefreshItem[2][1] = {}
	tNewServicePrivilege_RefreshItem[2][1]["RandomItemChanceType"] = 2
	tNewServicePrivilege_RefreshItem[2][1]["ItemChance"] = 2000
	tNewServicePrivilege_RefreshItem[2][1]["Item_1"] = 3007120
	tNewServicePrivilege_RefreshItem[2][1]["Index"] = 1
	-- 良品宝石（不含天地玄）	15.00%
	tNewServicePrivilege_RefreshItem[2][2] = {}
	tNewServicePrivilege_RefreshItem[2][2]["RandomItemChanceType"] = 2
	tNewServicePrivilege_RefreshItem[2][2]["ItemChance"] = 1500
	tNewServicePrivilege_RefreshItem[2][2]["Other"] = 2
	tNewServicePrivilege_RefreshItem[2][2]["Index"] = 2
	-- 100点修行值包	15.00%	宝物id=3002553
	tNewServicePrivilege_RefreshItem[2][3] = {}
	tNewServicePrivilege_RefreshItem[2][3]["RandomItemChanceType"] = 2
	tNewServicePrivilege_RefreshItem[2][3]["ItemChance"] = 1500
	tNewServicePrivilege_RefreshItem[2][3]["Item_1"] = 3002553
	tNewServicePrivilege_RefreshItem[2][3]["Index"] = 3
	-- 秘制免费修炼丹	10.00%	宝物id=3002926
	tNewServicePrivilege_RefreshItem[2][4] = {}
	tNewServicePrivilege_RefreshItem[2][4]["RandomItemChanceType"] = 2
	tNewServicePrivilege_RefreshItem[2][4]["ItemChance"] = 1000
	tNewServicePrivilege_RefreshItem[2][4]["Item_1"] = 3002926
	tNewServicePrivilege_RefreshItem[2][4]["Index"] = 4
	-- 100点气力值包	10.00%	宝物id=3002027
	tNewServicePrivilege_RefreshItem[2][5] = {}
	tNewServicePrivilege_RefreshItem[2][5]["RandomItemChanceType"] = 2
	tNewServicePrivilege_RefreshItem[2][5]["ItemChance"] = 1000
	tNewServicePrivilege_RefreshItem[2][5]["Item_1"] = 3002027
	tNewServicePrivilege_RefreshItem[2][5]["Index"] = 5
	-- 小乾坤袋碎片	10.00%	宝物id=3008174
	tNewServicePrivilege_RefreshItem[2][6] = {}
	tNewServicePrivilege_RefreshItem[2][6]["RandomItemChanceType"] = 2
	tNewServicePrivilege_RefreshItem[2][6]["ItemChance"] = 1000
	tNewServicePrivilege_RefreshItem[2][6]["Item_1"] = 3008174
	tNewServicePrivilege_RefreshItem[2][6]["Index"] = 6
	-- 天石礼包（95%获得赠点天石。）	4.00%	宝物id=3008903	单服每天限刷50个
	tNewServicePrivilege_RefreshItem[2][7] = {}
	tNewServicePrivilege_RefreshItem[2][7]["RandomItemChanceType"] = 2
	tNewServicePrivilege_RefreshItem[2][7]["ItemChance"] = 400
	tNewServicePrivilege_RefreshItem[2][7]["Item_1"] = 3008903
	tNewServicePrivilege_RefreshItem[2][7]["Index"] = 7
	tNewServicePrivilege_RefreshItem[2][7]["Global"] = 1
	-- 赤炼石+2  4% 单服每天限刷10个
	tNewServicePrivilege_RefreshItem[2][8] = {}
	tNewServicePrivilege_RefreshItem[2][8]["RandomItemChanceType"] = 2
	tNewServicePrivilege_RefreshItem[2][8]["ItemChance"] = 400
	tNewServicePrivilege_RefreshItem[2][8]["Item_1"] = 730002
	tNewServicePrivilege_RefreshItem[2][8]["Index"] = 8
	tNewServicePrivilege_RefreshItem[2][8]["Global"] = 2
	-- 1美元美金券  4%  单服每天限刷20个
	-- 改为 300点气力值包 4%  宝物id=3008305
	tNewServicePrivilege_RefreshItem[2][9] = {}
	tNewServicePrivilege_RefreshItem[2][9]["RandomItemChanceType"] = 2
	tNewServicePrivilege_RefreshItem[2][9]["ItemChance"] = 400
	tNewServicePrivilege_RefreshItem[2][9]["Item_1"] = 3008305 ---3301543
	tNewServicePrivilege_RefreshItem[2][9]["Index"] = 9
	-- tNewServicePrivilege_RefreshItem[2][9]["Global"] = 3
	-- 龙珠	4.00%	单服每天限刷10个	1088000	龙珠
	tNewServicePrivilege_RefreshItem[2][10] = {}
	tNewServicePrivilege_RefreshItem[2][10]["RandomItemChanceType"] = 2
	tNewServicePrivilege_RefreshItem[2][10]["ItemChance"] = 400
	tNewServicePrivilege_RefreshItem[2][10]["Item_1"] = 1088000
	tNewServicePrivilege_RefreshItem[2][10]["Index"] = 10
	tNewServicePrivilege_RefreshItem[2][10]["Global"] = 4
	-- 500点修行值包	4.00%	3008315	
	tNewServicePrivilege_RefreshItem[2][11] = {}
	tNewServicePrivilege_RefreshItem[2][11]["RandomItemChanceType"] = 2
	tNewServicePrivilege_RefreshItem[2][11]["ItemChance"] = 400
	tNewServicePrivilege_RefreshItem[2][11]["Item_1"] = 3008315
	tNewServicePrivilege_RefreshItem[2][11]["Index"] = 11

-- 宝石随机
local	tNewServicePrivilege_RandomItem = {}
	tNewServicePrivilege_RandomItem[1] = {}
	tNewServicePrivilege_RandomItem[1][1] = 700041			-- 700041		普通金麟宝石
	tNewServicePrivilege_RandomItem[1][2] = 700031           -- 700031	普通青虹宝石
	tNewServicePrivilege_RandomItem[1][3] = 700021           -- 700021	普通惊鸿宝石
	tNewServicePrivilege_RandomItem[1][4] = 700011            -- 700011	普通龙恨宝石 
	tNewServicePrivilege_RandomItem[1][5] = 700001           -- 700001	普通凤吟宝石
	tNewServicePrivilege_RandomItem[1][6] = 700051           -- 700051	普通紫霞宝石
	tNewServicePrivilege_RandomItem[1][7] = 700061           -- 700061	普通明月宝石

	tNewServicePrivilege_RandomItem[2] = {}
	tNewServicePrivilege_RandomItem[2][1] = 700042		-- 700042	良品金麟宝石
	tNewServicePrivilege_RandomItem[2][2] = 700032		-- 700032	良品青虹宝石
	tNewServicePrivilege_RandomItem[2][3] = 700022		-- 700022	良品惊鸿宝石
	tNewServicePrivilege_RandomItem[2][4] = 700012		-- 700012		良品龙恨宝石
	tNewServicePrivilege_RandomItem[2][5] = 700002		-- 700002	良品凤吟宝石
	tNewServicePrivilege_RandomItem[2][6] = 700052		-- 700052	良品紫霞宝石
	tNewServicePrivilege_RandomItem[2][7] = 700062		-- 700062	良品明月宝石
	
local tNewServicePrivilege_Random = {}
	tNewServicePrivilege_Random[3301545] = {}
	tNewServicePrivilege_Random[3301545][1] = {}
	tNewServicePrivilege_Random[3301545][1]["ItemChanceSum"] = 10000
	tNewServicePrivilege_Random[3301545][1][1] = {}
	-- 5元美金券	3301544	30.00%  每天限制50个，超过给 赤炼石+3（赠）
	tNewServicePrivilege_Random[3301545][1][1]["RandomItemChanceType"] = 2
	tNewServicePrivilege_Random[3301545][1][1]["ItemChance"] = 3000
	tNewServicePrivilege_Random[3301545][1][1]["RewardItem"] = {}
	tNewServicePrivilege_Random[3301545][1][1]["RewardItem"][1] = {}
	tNewServicePrivilege_Random[3301545][1][1]["RewardItem"][1]["Id"] = 3301544
	tNewServicePrivilege_Random[3301545][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tNewServicePrivilege_Random[3301545][1][1]["LogId"] = 12000581
	tNewServicePrivilege_Random[3301545][1][1]["GlobalId"] = 51417
	tNewServicePrivilege_Random[3301545][1][1]["Pos"] = 4
	tNewServicePrivilege_Random[3301545][1][1]["MaxData"] = 50
	tNewServicePrivilege_Random[3301545][1][1]["FullIndex"] = 4
	-- 龙珠（赠）	1088000	8.00%
	tNewServicePrivilege_Random[3301545][1][2] = {}
	tNewServicePrivilege_Random[3301545][1][2]["RandomItemChanceType"] = 2
	tNewServicePrivilege_Random[3301545][1][2]["ItemChance"] = 800
	tNewServicePrivilege_Random[3301545][1][2]["RewardItem"] = {}
	tNewServicePrivilege_Random[3301545][1][2]["RewardItem"][1] = {}
	tNewServicePrivilege_Random[3301545][1][2]["RewardItem"][1]["Id"] = 1088000
	tNewServicePrivilege_Random[3301545][1][2]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewServicePrivilege_Random[3301545][1][2]["LogId"] = 12000581
	-- +3骏马可选包	3007283	12.00%
	tNewServicePrivilege_Random[3301545][1][3] = {}
	tNewServicePrivilege_Random[3301545][1][3]["RandomItemChanceType"] = 2
	tNewServicePrivilege_Random[3301545][1][3]["ItemChance"] = 1200
	tNewServicePrivilege_Random[3301545][1][3]["RewardItem"] = {}
	tNewServicePrivilege_Random[3301545][1][3]["RewardItem"][1] = {}
	tNewServicePrivilege_Random[3301545][1][3]["RewardItem"][1]["Id"] = 3007283
	tNewServicePrivilege_Random[3301545][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tNewServicePrivilege_Random[3301545][1][3]["LogId"] = 12000581
	-- 赤炼石+3（赠）	730003	15.00%
	tNewServicePrivilege_Random[3301545][1][4] = {}
	tNewServicePrivilege_Random[3301545][1][4]["RandomItemChanceType"] = 2
	tNewServicePrivilege_Random[3301545][1][4]["ItemChance"] = 1500
	tNewServicePrivilege_Random[3301545][1][4]["RewardItem"] = {}
	tNewServicePrivilege_Random[3301545][1][4]["RewardItem"][1] = {}
	tNewServicePrivilege_Random[3301545][1][4]["RewardItem"][1]["Id"] = 730003
	tNewServicePrivilege_Random[3301545][1][4]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewServicePrivilege_Random[3301545][1][4]["LogId"] = 12000581
	-- 赤炼石+4（赠）	730004	15.00%
	tNewServicePrivilege_Random[3301545][1][5] = {}
	tNewServicePrivilege_Random[3301545][1][5]["RandomItemChanceType"] = 2
	tNewServicePrivilege_Random[3301545][1][5]["ItemChance"] = 1500
	tNewServicePrivilege_Random[3301545][1][5]["RewardItem"] = {}
	tNewServicePrivilege_Random[3301545][1][5]["RewardItem"][1] = {}
	tNewServicePrivilege_Random[3301545][1][5]["RewardItem"][1]["Id"] = 730004
	tNewServicePrivilege_Random[3301545][1][5]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewServicePrivilege_Random[3301545][1][5]["LogId"] = 12000581
	-- 2000点修行值	直接给	10.00%
	tNewServicePrivilege_Random[3301545][1][6] = {}
	tNewServicePrivilege_Random[3301545][1][6]["RandomItemChanceType"] = 2
	tNewServicePrivilege_Random[3301545][1][6]["ItemChance"] = 1000
	tNewServicePrivilege_Random[3301545][1][6]["RewardCultivation"] = {}
	tNewServicePrivilege_Random[3301545][1][6]["RewardCultivation"]["Value"] = 2000
	tNewServicePrivilege_Random[3301545][1][6]["LogId"] = 12000581
	-- 2000点气力值	直接给	10.00%
	tNewServicePrivilege_Random[3301545][1][7] = {}
	tNewServicePrivilege_Random[3301545][1][7]["RandomItemChanceType"] = 2
	tNewServicePrivilege_Random[3301545][1][7]["ItemChance"] = 1000
	tNewServicePrivilege_Random[3301545][1][7]["RewardStrengthValue"] = {}
	tNewServicePrivilege_Random[3301545][1][7]["RewardStrengthValue"]["Value"] = 2000
	tNewServicePrivilege_Random[3301545][1][7]["LogId"] = 12000581
	tNewServicePrivilege_Random[3301545]["RewardEffect"] = {}
	tNewServicePrivilege_Random[3301545]["RewardEffect"]["Effect"] = sNewServicePrivilege_Effect	
	
local tNewServicePrivilege_Dollar = {}
	tNewServicePrivilege_Dollar["Item"] = {}
	tNewServicePrivilege_Dollar["Item"][1] = 3301543
	tNewServicePrivilege_Dollar["Item"][2] = 3301544	
	
-------------------------------------------------逻辑-------------------------------------------------
-- 活动时间判断
function NewServicePrivilege_TimeJudgement()
	if Sys_ChkFullTime(tNewServicePrivilege_Constant["ActivetyTime"]) then
		return true
	else
		return false
	end
end

-- 玩家等级判断
function NewServicePrivilege_LevelJudgement()
	local nLevel = tNewServicePrivilege_Constant["Level"]
	local nMete = tNewServicePrivilege_Constant["Metempsychosis"]
	if User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		return true
	else
		return false
	end
end

-- 清动态存储表
function NewServicePrivilege_TimeChk()
	-- 活动前不处理
	if Sys_ChkFullTime(tNewServicePrivilege_Constant["BeforeTime"]) then
		return
	end

	-- 活动后清新服开关
	local nGlobalId = tNewServicePrivilege_Constant["NewServiceGlobal"]
	if not NewServicePrivilege_TimeJudgement() and Get_SysDynaGlobalData0(nGlobalId) >= 1 then
		Sys_SetSynaGlobalData0(nGlobalId,0)
	end

	-- 活动中清数量限制
	if NewServicePrivilege_TimeJudgement() and Get_SysDynaGlobalData0(nGlobalId) >= 1 then
		local nItemGlobal = tNewServicePrivilege_ItemGlobal[1]["GlobalId"]
		Sys_ResetAllSynaGlobalData(nItemGlobal)
	end
end

-- 打开链接
function NewServicePrivilege_OpenWeb(nNpcId)
	local sWebAddress = tNewServicePrivilege_Constant["WebAddress"]
	User_SendWebPage(sWebAddress)
end

-- 活动期间，玩家使用【正气令】后，可以额外获得1块【宝库密令】。
function NewServicePrivilege_GivePasscard()
	--判断活动时间和新服
	local nGlobalId = tNewServicePrivilege_Constant["NewServiceGlobal"]
	if not NewServicePrivilege_TimeJudgement() or Get_SysDynaGlobalData0(nGlobalId) <= 0 then
		return
	end
	
	--等级不符合返回
	if not NewServicePrivilege_LevelJudgement() then
		return
	end
	
	local nEvent = tNewServicePrivilege_Stc[1]["EventType"]
	local nType = tNewServicePrivilege_Stc[1]["DataType"]

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
	
	-- 判断背包空间
	local bSpace = true
	if not User_CheckLeftSpace(1) then
		User_TalkChannel2005(tNewServicePrivilege_Text["BagFull"])
		bSpace = false
	end

	Task_AddStatistic(nEvent,nType,1,1,0)
	Task_SetStcTimestamp(nEvent,nType,0,0)
	
	if not Item_AddNewItem(tNewServicePrivilege_Constant["Passcard"],tNewServicePrivilege_Constant["ItemAttr"]) then
		return false
	end
	
	if bSpace == true then
		User_TalkChannel2005(tNewServicePrivilege_Text["GetPasscard"])
		Sys_SaveActionFestivalLog(tNewServicePrivilege_Constant["PasscardLog"])
	end
end

-- 组队PK赛 战旗争霸赛  帮派争霸战 的参与奖励
function NewServicePrivilege_Participant(nActiveType)
	-- 新服标志
	local nGlobalId = tNewServicePrivilege_Constant["NewServiceGlobal"]
	if Sys_ChkFullTime(tNewServicePrivilege_Constant["PKActivetyTime"]) and Get_SysDynaGlobalData0(nGlobalId) >= 1 then
		if not User_CheckLeftSpace(1) then
			return
		end
		
		-- 等级判断
		if nActiveType == 1 or nActiveType == 2 then
			-- 精英 组队PK赛  130+
			if not User_JudgeLevelAndMetempsychosis(130,0) then
				return
			end
		elseif nActiveType == 3 or nActiveType == 4 then
			-- 战旗 帮战  2转以上
			if not User_JudgeLevelAndMetempsychosis(1,2) then
				return
			end
		end
		
		-- 活动中 记录当天是否获得了5美元机会包
		local nEvent = tNewServicePrivilege_PKActiveStc[nActiveType]["EventType"]
		local nType = tNewServicePrivilege_PKActiveStc[nActiveType]["DataType"]
		
		if Task_ChkStcValue(nEvent,nType,">",0) then
			if Task_StcInterval(nEvent,nType,1,4) then
				Task_SetStatistic(nEvent,nType,0,1,0)
				Task_SetStcTimestamp(nEvent,nType,0,0)
			else
				return
			end
		end

		local nItemId = tNewServicePrivilege_Constant["ChanceItem"]
		local sAttr = tNewServicePrivilege_Constant["ChanceAttr"]
		
		Task_SetStatistic(nEvent,nType,1,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)
		
		Item_AddNewItem(nItemId,sAttr)
		User_TalkChannel2005(tNewServicePrivilege_Text["GetDollarChance"])
		Sys_SaveActionFestivalLog(string.format(tNewServicePrivilege_Constant["GetChanceLog"],nActiveType,nItemId))
	end
end	

-- 判断玩家条件是否满足
function NewServicePrivilege_ConditionSatisfied(nNpcId)
	-- 判断活动时间和新服
	local nGlobalId = tNewServicePrivilege_Constant["NewServiceGlobal"]
	if not NewServicePrivilege_TimeJudgement() or Get_SysDynaGlobalData0(nGlobalId) <= 0 then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return false
	end
	
	local nEvent = tNewServicePrivilege_Stc[2]["EventType"]
	local nType = tNewServicePrivilege_Stc[2]["DataType"]

	-- 判断当天是否五次
	if Task_ChkStcValue(nEvent,nType,">=",1) then
		-- 每次进入需间隔10s再次进入
		if not Task_StcInterval(nEvent,nType,10,0) then
			Sys_MsgBox(tNewServicePrivilege_Text["WaitSec"])
			return false
		end
		
		if not Task_StcInterval(nEvent,nType,1,4) then
			if Task_ChkStcValue(nEvent,nType,">=",5) then
				Sys_MsgBox(tNewServicePrivilege_Text["NoMoreTimes"])
				return false
			end
		else
			Task_SetStatistic(nEvent,nType,0,1)
			Task_SetStcTimestamp(nEvent,nType,0,0)
		end
	end
	return true
end

-- 进入宝库
function NewServicePrivilege_GotoMap(nNpcId)
	if not NewServicePrivilege_ConditionSatisfied(nNpcId) then
		return
	end
	
	-- 判断玩家身上是否有宝库通行证
	local nItemId = tNewServicePrivilege_Constant["Passcard"]
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		-- 创建副本
		User_EnterInstance(tNewServicePrivilege_Constant["Instance"])
		User_EffectAdd(tNewServicePrivilege_Constant["EffectObj"],tNewServicePrivilege_Constant["Effect_1"])
		User_TalkChannel2005(tNewServicePrivilege_Text["EnterMap"])
		Sys_SaveActionFestivalLog(tNewServicePrivilege_Constant["CreateLog"])
		
		local nEvent = tNewServicePrivilege_Stc[2]["EventType"]
		local nType = tNewServicePrivilege_Stc[2]["DataType"]
		Task_AddStatistic(nEvent,nType,1,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)
		
		--刷物品
		NewServicePrivilege_RefreshItem()
		--倒计时10秒
		User_SetTimer(tNewServicePrivilege_Constant["Countdown"],"NewServicePrivilege_KickOut",1)
	else
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
end

-- 将玩家踢出地图
function NewServicePrivilege_KickOut(nUserId)
	local nNowUserId = nUserId or Get_UserId()
	local nMapId = tNewServicePrivilege_Leave["MapId"]
	local nCellx = tNewServicePrivilege_Leave["CellX"]
	local nCelly = tNewServicePrivilege_Leave["CellY"]
	
	if not (Get_UserMapId(nNowUserId) == nMapId) then
		User_ChgMap(nMapId,nCellx,nCelly,1,nNowUserId)
		User_TalkChannel2005(tNewServicePrivilege_Text["GetOut"],nNowUserId)
	end
end

-- 副本内刷物品
function NewServicePrivilege_RefreshItem()
	local nMapId = Get_UserMapId()
	local nPosX = tNewServicePrivilege_Refresh["PosX"] 
	local nPosY = tNewServicePrivilege_Refresh["PosY"] 
	local nCellx = tNewServicePrivilege_Refresh["Cellx"]
	local nCelly = tNewServicePrivilege_Refresh["Celly"]
	local nItemNum = tNewServicePrivilege_Refresh["ItemNum"]
	local nExistTime = tNewServicePrivilege_Refresh["ExistTime"]
	local nItemId = 0
	
	for i = 1,#tNewServicePrivilege_RefreshItem do
		for j = 1,tNewServicePrivilege_RefreshItemTimes[i] do
			local flat,tAward = Probabil_RandomAward(tNewServicePrivilege_RefreshItem,i)
			nItemId = tAward[1]["tAward"][1]["Item_1"]
			--随机宝石
			if tAward[1]["tAward"][1]["Other"] then
				local nOther = tAward[1]["tAward"][1]["Other"]
				local nRandom = math.random(1,#tNewServicePrivilege_RandomItem[nOther])
				nItemId = tNewServicePrivilege_RandomItem[nOther][nRandom]
			end

			if tAward[1]["tAward"][1]["Global"] ~= nil then
				local nGlobal = tAward[1]["tAward"][1]["Global"]
				local nGlobalId = tNewServicePrivilege_ItemGlobal[nGlobal]["GlobalId"]
				local nGlobalData = tNewServicePrivilege_ItemGlobal[nGlobal]["GlobalData"]
				local nData = Get_SysDynaGlobalData(nGlobalId,nGlobalData)
				
				if nData < tNewServicePrivilege_ItemGlobal[nGlobal]["MaxData"] then
					Sys_SetSynaGlobalData(nGlobalId,nGlobalData,nData + 1)
				else 
					nItemId = tNewServicePrivilege_Constant["ItemType"]
				end
			end

			Map_DropMultiItems(nMapId,nItemId,nPosX,nPosY,nCellx,nCelly,nItemNum,nExistTime)
		end
	end
end

-- 上交所有美金券
function NewServicePrivilege_HandDollar(nNpcId)
	local nItemIdA = tNewServicePrivilege_Dollar["Item"][1]
	local nItemIdB = tNewServicePrivilege_Dollar["Item"][2]
	
	local nCountA = Get_CountItemType(nItemIdA,0)
	local nCountB = Get_CountItemType(nItemIdB,0)
	
	local nSum = nCountA + nCountB * 5

	if nCountA <= 0 and nCountB <= 0 then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end

	local nEvent = tNewServicePrivilege_Stc[3]["EventType"]
	local nType = tNewServicePrivilege_Stc[3]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType)
	local nStcData = nData + nSum
	
	local sLog = ""
	local bFlag = false
	if nCountA > 0 and nCountB <= 0 then
		if Item_ChkMulItem(nItemIdA,nItemIdA,nCountA) and Item_DelMulItem(nItemIdA,nItemIdA,nCountA) then			
			sLog = string.format(tNewServicePrivilege_Constant["DollarLog"],nItemIdA,nCountA)
			bFlag = true
		end
	elseif nCountB > 0 and nCountA <= 0 then
		if Item_ChkMulItem(nItemIdB,nItemIdB,nCountB) and Item_DelMulItem(nItemIdB,nItemIdB,nCountB) then
			sLog = string.format(tNewServicePrivilege_Constant["DollarLog"],nItemIdB,nCountB)
			bFlag = true
		end
	else
		if Item_ChkMulItem(nItemIdA,nItemIdA,nCountA) and Item_DelMulItem(nItemIdA,nItemIdA,nCountA) then
			if Item_ChkMulItem(nItemIdB,nItemIdB,nCountB) and Item_DelMulItem(nItemIdB,nItemIdB,nCountB) then
				sLog = string.format(tNewServicePrivilege_Constant["DollarLog_1"],nItemIdA,nItemIdB,nCountA,nCountB)
			bFlag = true
			end
		end
	end
	
	if bFlag then
		Task_SetStatistic(nEvent,nType,nStcData,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)

		Sys_SaveActionFestivalLog(sLog)

		tNpcGossip[19991]["Text322"] = string.format(tNewServicePrivilege_Text[19991]["Text322"],nSum)
		tNpcGossip[19991]["Text323"] = string.format(tNewServicePrivilege_Text[19991]["Text323"],nStcData)
		if nStcData < 100 then
			tNpcGossip[19991]["Text3-2"] = {321,322,323,324,327,328}
			tNpcGossip[19991]["Text324"] = string.format(tNewServicePrivilege_Text[19991]["Text324"],nStcData)
		elseif nStcData >= 100 and nStcData < 649 then
			tNpcGossip[19991]["Text3-2"] = {321,322,323,325,327,328}
			tNpcGossip[19991]["Text325"] = string.format(tNewServicePrivilege_Text[19991]["Text325"],nStcData)
		else
			tNpcGossip[19991]["Text3-2"] = {321,322,323,326,327,328}
			tNpcGossip[19991]["Text326"] = string.format(tNewServicePrivilege_Text[19991]["Text326"],nStcData,nStcData)
		end
		
		LinkNpcGossipFunc_New(nNpcId,"3-2")
	else
		LinkNpcGossipFunc_New(nNpcId,"3-1")
	end
end

-- 查看美金券情况
function NewServicePrivilege_CheckOut(nNpcId)
	local nEvent = tNewServicePrivilege_Stc[3]["EventType"]
	local nType = tNewServicePrivilege_Stc[3]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType)
	tNpcGossip[19991]["Text1412"] = string.format(tNewServicePrivilege_Text[19991]["Text323"],nData)
	LinkNpcGossipFunc_New(nNpcId,"14-1")
end

---------------------------------------------------物品逻辑--------------------------------------------------------
-- 使用宝库通行证
function NewServicePrivilege_OpenTips(nItemId)
	-- 过期删除
	if not NewServicePrivilege_TimeJudgement() then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_TalkChannel2005(tNewServicePrivilege_Text["OverTime"])
			Sys_SaveActionFestivalLog(string.format(tNewServicePrivilege_Constant["DelItem"],nItemId))
		end
		return
	end

	local nNpcId = tNewServicePrivilege_Constant["NpcId"]
	local nMapId = tNewServicePrivilege_Constant["MapId"]
	local nPosX = tNewServicePrivilege_Constant["PosX"]
	local nPosY = tNewServicePrivilege_Constant["PosY"]
	
	-- 未过期自动寻路
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
end

-- 陷阱逻辑
function NewServicePrivilege_LeaveMap()
	Sys_MsgBox(tNewServicePrivilege_Text["Leave"],"NewServicePrivilege_KickOut")
end

-- 使用5美元机会包
function NewServicePrivilege_UseChanceItem(nItemId)
	-- 过期删除
	-- if not NewServicePrivilege_TimeJudgement() then
		-- if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			-- User_TalkChannel2005(tNewServicePrivilege_Text["OverTime"])
			-- Sys_SaveActionFestivalLog(string.format(tNewServicePrivilege_Constant["DelItem"],nItemId))
		-- end
		-- return
	-- end
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		RewardTemplate_NewRandom(tNewServicePrivilege_Random[nItemId],1)
	end
end

--------------------------------------------------NPC配置--------------------------------------------------------
-- 宝库守卫
tNpcFace[4505] = 205
tNpcGossip[19991] = tNpcGossip[19991] or DefaultNpc:new{}
tNpcGossip[19991]["OptionHidden"] = 1
-- 活动前对白
tNpcGossip[19991]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[19991]["Text111"] = tNewServicePrivilege_Text[19991]["Text111"]
tNpcGossip[19991]["Text112"] = tNewServicePrivilege_Text[19991]["Text112"]
tNpcGossip[19991]["Text113"] = tNewServicePrivilege_Text[19991]["Text113"]
tNpcGossip[19991]["Text114"] = tNewServicePrivilege_Text[19991]["Text114"]
tNpcGossip[19991]["Text115"] = tNewServicePrivilege_Text[19991]["Text115"]
tNpcGossip[19991]["Text116"] = tNewServicePrivilege_Text[19991]["Text116"]
tNpcGossip[19991]["tOption1-1"] = {1}
tNpcGossip[19991]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tNewServicePrivilege_Constant["BeforeTime"])
end
tNpcGossip[19991]["Option1"] = tNewServicePrivilege_Text[19991]["Option1"]

-- 活动中对白（未满足条件）
tNpcGossip[19991]["Text1-2"] = {121,122,123,124,125,126}
tNpcGossip[19991]["Text121"] = tNewServicePrivilege_Text[19991]["Text121"]
tNpcGossip[19991]["Text122"] = tNewServicePrivilege_Text[19991]["Text122"]
tNpcGossip[19991]["Text123"] = tNewServicePrivilege_Text[19991]["Text123"]
tNpcGossip[19991]["Text124"] = tNewServicePrivilege_Text[19991]["Text124"]
tNpcGossip[19991]["Text125"] = tNewServicePrivilege_Text[19991]["Text125"]
tNpcGossip[19991]["Text126"] = tNewServicePrivilege_Text[19991]["Text126"]
tNpcGossip[19991]["tOption1-2"] = {2}
tNpcGossip[19991]["ChkFunc1-2"] = function ()
	return NewServicePrivilege_TimeJudgement() and (not NewServicePrivilege_LevelJudgement())
end
tNpcGossip[19991]["Option2"] = tNewServicePrivilege_Text[19991]["Option2"]

-- 活动中对白（满足条件）
tNpcGossip[19991]["Text1-3"] = {131,132,133,134,135}
tNpcGossip[19991]["Text131"] = tNewServicePrivilege_Text[19991]["Text131"]
tNpcGossip[19991]["Text132"] = tNewServicePrivilege_Text[19991]["Text132"]
tNpcGossip[19991]["Text133"] = tNewServicePrivilege_Text[19991]["Text133"]
tNpcGossip[19991]["Text134"] = tNewServicePrivilege_Text[19991]["Text134"]
tNpcGossip[19991]["Text135"] = tNewServicePrivilege_Text[19991]["Text135"]
tNpcGossip[19991]["tOption1-3"] = {3,6,7}
tNpcGossip[19991]["ChkFunc1-3"] = function ()
	return NewServicePrivilege_TimeJudgement() and NewServicePrivilege_LevelJudgement()
end
tNpcGossip[19991]["Option3"] = tNewServicePrivilege_Text[19991]["Option3"]
tNpcGossip[19991]["OptionFunc3"] = "NewServicePrivilege_GotoMap</N>19991"
-- tNpcGossip[19991]["Option4"] = tNewServicePrivilege_Text[19991]["Option4"]
-- tNpcGossip[19991]["OptionFunc4"] = "NewServicePrivilege_HandDollar</N>19991"
-- tNpcGossip[19991]["Option14"] = tNewServicePrivilege_Text[19991]["Option14"]
-- tNpcGossip[19991]["OptionFunc14"] = "NewServicePrivilege_CheckOut</N>19991"
-- tNpcGossip[19991]["Option5"] = tNewServicePrivilege_Text[19991]["Option5"]
-- tNpcGossip[19991]["OptionFunc5"] = "NewServicePrivilege_OpenWeb</N>19991"
tNpcGossip[19991]["Option6"] = tNewServicePrivilege_Text[19991]["Option6"]
tNpcGossip[19991]["OptionPoint6"] = "4-1"
tNpcGossip[19991]["Option7"] = tNewServicePrivilege_Text[19991]["Option7"]

--活动时间外的对白
tNpcGossip[19991]["Text1-4"] = {141}
tNpcGossip[19991]["Text141"] = tNewServicePrivilege_Text[19991]["Text141"]
tNpcGossip[19991]["tOption1-4"] = {9}
tNpcGossip[19991]["ChkFunc1-4"] = function ()
	return not NewServicePrivilege_TimeJudgement()
end
-- tNpcGossip[19991]["Option8"] = tNewServicePrivilege_Text[19991]["Option8"]
-- tNpcGossip[19991]["OptionFunc8"] = "NewServicePrivilege_OpenWeb</N>19991"
tNpcGossip[19991]["Option9"] = tNewServicePrivilege_Text[19991]["Option9"]

-- 进入宝库·失败（无宝库通行证）
tNpcGossip[19991]["Text2-1"] = {211}
tNpcGossip[19991]["Text211"] = tNewServicePrivilege_Text[19991]["Text211"]
tNpcGossip[19991]["tOption2-1"] = {10}
tNpcGossip[19991]["Option10"] = tNewServicePrivilege_Text[19991]["Option10"]

-- -- 上交所有美金券·失败（美金券不足）
-- tNpcGossip[19991]["Text3-1"] = {311}
-- tNpcGossip[19991]["Text311"] = tNewServicePrivilege_Text[19991]["Text311"]
-- tNpcGossip[19991]["tOption3-1"] = {11}
-- tNpcGossip[19991]["Option11"] = tNewServicePrivilege_Text[19991]["Option11"]
-- -- 上交所有美金券·成功
-- tNpcGossip[19991]["Text3-2"] = {321,322,323,324,327,328}
-- tNpcGossip[19991]["Text321"] = tNewServicePrivilege_Text[19991]["Text321"]
-- tNpcGossip[19991]["Text322"] = tNewServicePrivilege_Text[19991]["Text322"]
-- tNpcGossip[19991]["Text323"] = tNewServicePrivilege_Text[19991]["Text323"]
-- tNpcGossip[19991]["Text324"] = tNewServicePrivilege_Text[19991]["Text324"]
-- tNpcGossip[19991]["Text325"] = tNewServicePrivilege_Text[19991]["Text325"]
-- tNpcGossip[19991]["Text326"] = tNewServicePrivilege_Text[19991]["Text326"]
-- tNpcGossip[19991]["Text327"] = tNewServicePrivilege_Text[19991]["Text327"]
-- tNpcGossip[19991]["Text328"] = tNewServicePrivilege_Text[19991]["Text328"]
-- tNpcGossip[19991]["tOption3-2"] = {12}
-- tNpcGossip[19991]["Option12"] = tNewServicePrivilege_Text[19991]["Option12"]
-- -- 查看美金券情况
-- tNpcGossip[19991]["Text14-1"] = {1411,1412,1413,1414}
-- tNpcGossip[19991]["Text1411"] = tNewServicePrivilege_Text[19991]["Text321"]
-- tNpcGossip[19991]["Text1412"] = tNewServicePrivilege_Text[19991]["Text323"]
-- tNpcGossip[19991]["Text1413"] = tNewServicePrivilege_Text[19991]["Text327"]
-- tNpcGossip[19991]["Text1414"] = tNewServicePrivilege_Text[19991]["Text328"]
-- tNpcGossip[19991]["tOption14-1"] = {12}
-- -- tNpcGossip[19991]["Option12"] = tNewServicePrivilege_Text[19991]["Option12"]

-- 了解活动详情
tNpcGossip[19991]["Text4-1"] = {411,412,413,414,415,416,417}
tNpcGossip[19991]["Text411"] = tNewServicePrivilege_Text[19991]["Text411"]
tNpcGossip[19991]["Text412"] = tNewServicePrivilege_Text[19991]["Text412"]
tNpcGossip[19991]["Text413"] = tNewServicePrivilege_Text[19991]["Text413"]
tNpcGossip[19991]["Text414"] = tNewServicePrivilege_Text[19991]["Text414"]
tNpcGossip[19991]["Text415"] = tNewServicePrivilege_Text[19991]["Text415"]
tNpcGossip[19991]["Text416"] = tNewServicePrivilege_Text[19991]["Text416"]
tNpcGossip[19991]["Text417"] = tNewServicePrivilege_Text[19991]["Text417"]
-- tNpcGossip[19991]["Text418"] = tNewServicePrivilege_Text[19991]["Text418"]
tNpcGossip[19991]["tOption4-1"] = {13}
tNpcGossip[19991]["Option13"] = tNewServicePrivilege_Text[19991]["Option13"]

--------------------------------------------------物品配置--------------------------------------------------------
-- 3200232 宝库通行证
tItem[3301542] = tItem[3301542] or {}
tItem[3301542]["Function"] = function(nItemId,sItemName)
	NewServicePrivilege_OpenTips(nItemId)
end
tItem[3301543] = tItem[3301542]
tItem[3301544] = tItem[3301542]

-- 3301545 5美元机会包
tItem[3301545] = tItem[3301545] or {}
tItem[3301545]["Function"] = function(nItemId,sItemName)
	NewServicePrivilege_UseChanceItem(nItemId)
end

----------------------------------------------------时间自检--------------------------------------------------------
-- tOntimerMin_HM[0000] = tOntimerMin_HM[0000] or {}
-- table.insert(tOntimerMin_HM[0000],NewServicePrivilege_TimeChk)

----------------------------------------------------陷阱--------------------------------------------------------
tTrap[1420] = tTrap[1420] or {}
tTrap[1420]["Function"] = function (nTrapId,nTrapType)
	NewServicePrivilege_LeaveMap()
end
