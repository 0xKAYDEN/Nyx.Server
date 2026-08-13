------------------------------------------------------------------------------------
--Name:		[征服][活动脚本]2016欧洲杯活动
--Purpose:	欧洲杯活动
--Creator: 	吴文鑫
--Created:	2016/05/18
------------------------------------------------------------------------------------

-- 命名前缀
--EuropeanCupActivityNpc_
--12000392


-- 常量表
local tEuropeanCupActivityNpc_Constant = {}
	--时间
	tEuropeanCupActivityNpc_Constant["BeforeTime"] = "2016-01-01 00:00 2016-06-15 23:59"
	tEuropeanCupActivityNpc_Constant["ActivetyTime"] = "2016-06-16 00:00 2016-07-16 23:59"
	--等级
	tEuropeanCupActivityNpc_Constant["Level"] = 80
	tEuropeanCupActivityNpc_Constant["Metempsychosis"] = 0
	--输入框长度
	tEuropeanCupActivityNpc_Constant["OptEditLen"] = 5
	--喇叭ID
	tEuropeanCupActivityNpc_Constant["ItemID"] = 3200358
	--奖励ID
	tEuropeanCupActivityNpc_Constant["AwardItemID"] = 3200378 
	tEuropeanCupActivityNpc_Constant["AwardItemAttr"] = "0 1 0 1440 1"
	--空间
	tEuropeanCupActivityNpc_Constant["Space"] = 1
	
	tEuropeanCupActivityNpc_Constant["Npc"] = 19270
	tEuropeanCupActivityNpc_Constant["MapId"] = 1002
	tEuropeanCupActivityNpc_Constant["Cellx"] = 259
	tEuropeanCupActivityNpc_Constant["Celly"] = 230
	
	tEuropeanCupActivityNpc_Constant["Money"] = 1700000
	
	tEuropeanCupActivityNpc_Constant["EMoneyLog"] = "350	20233	0	0	1	"
	
	tEuropeanCupActivityNpc_Constant["ExcNeedItem"] = 2100175
	tEuropeanCupActivityNpc_Constant["ExcItem"] = 3200576
	
	local tEuropeanCupActivityNpc_Effect= {}
	tEuropeanCupActivityNpc_Effect["Sucess"] = "angelwing"
	tEuropeanCupActivityNpc_Effect["fail"] = "Disapear1"
--掩码
--145,21 玩家积分
--145,22 玩家当天上交的数量
--145,23 玩家当日银两赌的次数
--145,25 

local tEuropeanCupActivityNpc_Stc = {}
	tEuropeanCupActivityNpc_Stc["EventType"] = 145
	tEuropeanCupActivityNpc_Stc["DataType"] = {}
	tEuropeanCupActivityNpc_Stc["DataType"][1] = 21
	tEuropeanCupActivityNpc_Stc["DataType"][2] = 22
	tEuropeanCupActivityNpc_Stc["DataType"][3] = 23
	tEuropeanCupActivityNpc_Stc["DataType"][4] = 97
local tEuropeanCupActivityNpc_Stc1 = {}
	tEuropeanCupActivityNpc_Stc1["EventType"] = 146
	tEuropeanCupActivityNpc_Stc1["DataType"] = 28
	
	
local tEuropeanCupActivityNpc_ExcStc = {}
	tEuropeanCupActivityNpc_ExcStc["DataType"] = {}
	tEuropeanCupActivityNpc_ExcStc["DataType"][1] = 25
	tEuropeanCupActivityNpc_ExcStc["DataType"][2] = 31
	tEuropeanCupActivityNpc_ExcStc["DataType"][3] = 32
	tEuropeanCupActivityNpc_ExcStc["DataType"][4] = 33
	tEuropeanCupActivityNpc_ExcStc["DataType"][5] = 34
	tEuropeanCupActivityNpc_ExcStc["DataType"][6] = 35
	tEuropeanCupActivityNpc_ExcStc["DataType"][7] = 36
	tEuropeanCupActivityNpc_ExcStc["DataType"][8] = 70
	tEuropeanCupActivityNpc_ExcStc["DataType"][9] = 83
	
	
local tEuropeanCupActivityNpc_ExItem = {}
	tEuropeanCupActivityNpc_ExItem[1] = {}
	tEuropeanCupActivityNpc_ExItem[1]["Point"] = 1 
	tEuropeanCupActivityNpc_ExItem[1]["Item"] = 3200381
	tEuropeanCupActivityNpc_ExItem[1]["Attr"] = ""
	
	
	tEuropeanCupActivityNpc_ExItem[2] = {}
	tEuropeanCupActivityNpc_ExItem[2]["Point"] = 269 
	tEuropeanCupActivityNpc_ExItem[2]["Item"] = 3200379
	tEuropeanCupActivityNpc_ExItem[2]["Attr"] = ""
	
	tEuropeanCupActivityNpc_ExItem[3] = {}
	tEuropeanCupActivityNpc_ExItem[3]["Point"] = 439 
	tEuropeanCupActivityNpc_ExItem[3]["Item"] = 200563
	tEuropeanCupActivityNpc_ExItem[3]["Attr"] = "0 1 0 0 0 0 0 1"
	
	tEuropeanCupActivityNpc_ExItem[4] = {}
	tEuropeanCupActivityNpc_ExItem[4]["Point"] = 9
	tEuropeanCupActivityNpc_ExItem[4]["Item"] = 2100135
	tEuropeanCupActivityNpc_ExItem[4]["Space"] = 1
	tEuropeanCupActivityNpc_ExItem[4]["Attr"] = "0 1 0 0 1"
	
	tEuropeanCupActivityNpc_ExItem[5] = {}
	tEuropeanCupActivityNpc_ExItem[5]["Point"] = 29
	tEuropeanCupActivityNpc_ExItem[5]["NeedItem"] = 2100135
	tEuropeanCupActivityNpc_ExItem[5]["Item"] = 2100145
	tEuropeanCupActivityNpc_ExItem[5]["Attr"] = "0 1 0 0 1"
	
	tEuropeanCupActivityNpc_ExItem[6] = {}
	tEuropeanCupActivityNpc_ExItem[6]["Point"] = 59
	tEuropeanCupActivityNpc_ExItem[6]["NeedItem"] = 2100145
	tEuropeanCupActivityNpc_ExItem[6]["Item"] = 2100155
	tEuropeanCupActivityNpc_ExItem[6]["Attr"] = "0 1 0 0 1"
	
	tEuropeanCupActivityNpc_ExItem[7] = {}
	tEuropeanCupActivityNpc_ExItem[7]["Point"] = 99
	tEuropeanCupActivityNpc_ExItem[7]["NeedItem"] = 2100155
	tEuropeanCupActivityNpc_ExItem[7]["Item"] = 2100165
	tEuropeanCupActivityNpc_ExItem[7]["Attr"] = "0 1 0 0 1 0 0 1"
	
	tEuropeanCupActivityNpc_ExItem[8] = {}
	tEuropeanCupActivityNpc_ExItem[8]["Point"] = 189
	tEuropeanCupActivityNpc_ExItem[8]["NeedItem"] = 2100165
	tEuropeanCupActivityNpc_ExItem[8]["Item"] = 2100175
	tEuropeanCupActivityNpc_ExItem[8]["Attr"] = "0 1 0 0 1 0 0 1"
	
local tEuropeanCupActivityNpc_ApplyItemChance = {}
	tEuropeanCupActivityNpc_ApplyItemChance[1] = 3333
	tEuropeanCupActivityNpc_ApplyItemChance[2] = 107
	tEuropeanCupActivityNpc_ApplyItemChance[3] = 67
	tEuropeanCupActivityNpc_ApplyItemChance[4] = 1034
	tEuropeanCupActivityNpc_ApplyItemChance[5] = 508
	tEuropeanCupActivityNpc_ApplyItemChance[6] = 303
	tEuropeanCupActivityNpc_ApplyItemChance[7] = 159
	tEuropeanCupActivityNpc_ApplyItemChance[8] = 5000
	tEuropeanCupActivityNpc_ApplyItemChance[9] = 88
	
local tEuropeanCupActivityNpc_Global = {}
	tEuropeanCupActivityNpc_Global[1] = 51172
	tEuropeanCupActivityNpc_Global[2] = 51173
	tEuropeanCupActivityNpc_Global[3] = 51174
	tEuropeanCupActivityNpc_Global[4] = 51175
	tEuropeanCupActivityNpc_Global[5] = 51176
	tEuropeanCupActivityNpc_Global[6] = 51177
	
local tEuropeanCupActivityNpc_ApplyItem = {}
	tEuropeanCupActivityNpc_ApplyItem[1] = {}
	tEuropeanCupActivityNpc_ApplyItem[1][1] = {}
	tEuropeanCupActivityNpc_ApplyItem[1][1]["ApplyPoint"] = 9 
	tEuropeanCupActivityNpc_ApplyItem[1][1]["Item"] = 2100135
	tEuropeanCupActivityNpc_ApplyItem[1][1]["Space"] = 1
	tEuropeanCupActivityNpc_ApplyItem[1][1]["RandomItemChanceType"] = 3
	tEuropeanCupActivityNpc_ApplyItem[1][1]["ItemSelfChanceSum"] = 10000
	tEuropeanCupActivityNpc_ApplyItem[1][1]["ItemChance"] = 3333
	-- tEuropeanCupActivityNpc_ApplyItem[1][1]["Increase"] = 1111
	tEuropeanCupActivityNpc_ApplyItem[1][1]["Attr"] = "0 1"
	
	tEuropeanCupActivityNpc_ApplyItem[2] = {}
	tEuropeanCupActivityNpc_ApplyItem[2][1] = {}
	tEuropeanCupActivityNpc_ApplyItem[2][1]["ApplyPoint"] = 280 
	tEuropeanCupActivityNpc_ApplyItem[2][1]["Item"] = 3200379
	tEuropeanCupActivityNpc_ApplyItem[2][1]["Space"] = 1
	tEuropeanCupActivityNpc_ApplyItem[2][1]["RandomItemChanceType"] = 3
	tEuropeanCupActivityNpc_ApplyItem[2][1]["ItemSelfChanceSum"] = 10000
	tEuropeanCupActivityNpc_ApplyItem[2][1]["ItemChance"] = 107
	-- tEuropeanCupActivityNpc_ApplyItem[2][1]["Increase"] = 36
	tEuropeanCupActivityNpc_ApplyItem[2][1]["Attr"] = ""
	
	tEuropeanCupActivityNpc_ApplyItem[3] = {}
	tEuropeanCupActivityNpc_ApplyItem[3][1] = {}
	tEuropeanCupActivityNpc_ApplyItem[3][1]["ApplyPoint"] = 500 
	tEuropeanCupActivityNpc_ApplyItem[3][1]["Item"] = 200563
	tEuropeanCupActivityNpc_ApplyItem[3][1]["Space"] = 1
	tEuropeanCupActivityNpc_ApplyItem[3][1]["RandomItemChanceType"] = 3
	tEuropeanCupActivityNpc_ApplyItem[3][1]["ItemSelfChanceSum"] = 10000
	tEuropeanCupActivityNpc_ApplyItem[3][1]["ItemChance"] = 67
	-- tEuropeanCupActivityNpc_ApplyItem[3][1]["Increase"] = 22
	tEuropeanCupActivityNpc_ApplyItem[3][1]["Attr"] = "0 1 3 0 0 0 0 1"
	
	tEuropeanCupActivityNpc_ApplyItem[4] = {}
	tEuropeanCupActivityNpc_ApplyItem[4][1] = {}
	tEuropeanCupActivityNpc_ApplyItem[4][1]["ApplyPoint"] = 29
	tEuropeanCupActivityNpc_ApplyItem[4][1]["NeedItem"] = 2100135
	tEuropeanCupActivityNpc_ApplyItem[4][1]["Item"] = 2100145
	tEuropeanCupActivityNpc_ApplyItem[4][1]["RandomItemChanceType"] = 3
	tEuropeanCupActivityNpc_ApplyItem[4][1]["ItemSelfChanceSum"] = 10000
	tEuropeanCupActivityNpc_ApplyItem[4][1]["ItemChance"] = 1034
	-- tEuropeanCupActivityNpc_ApplyItem[4][1]["Increase"] = 345
	tEuropeanCupActivityNpc_ApplyItem[4][1]["Attr"] = "0 1"
	
	tEuropeanCupActivityNpc_ApplyItem[5] = {}
	tEuropeanCupActivityNpc_ApplyItem[5][1] = {}
	tEuropeanCupActivityNpc_ApplyItem[5][1]["ApplyPoint"] = 59
	tEuropeanCupActivityNpc_ApplyItem[5][1]["NeedItem"] = 2100145
	tEuropeanCupActivityNpc_ApplyItem[5][1]["Item"] = 2100155
	tEuropeanCupActivityNpc_ApplyItem[5][1]["RandomItemChanceType"] = 3
	tEuropeanCupActivityNpc_ApplyItem[5][1]["ItemSelfChanceSum"] = 10000
	tEuropeanCupActivityNpc_ApplyItem[5][1]["ItemChance"] = 508
	-- tEuropeanCupActivityNpc_ApplyItem[5][1]["Increase"] = 169
	tEuropeanCupActivityNpc_ApplyItem[5][1]["Attr"] = "0 1"
	
	tEuropeanCupActivityNpc_ApplyItem[6] = {}
	tEuropeanCupActivityNpc_ApplyItem[6][1] = {}
	tEuropeanCupActivityNpc_ApplyItem[6][1]["ApplyPoint"] = 99
	tEuropeanCupActivityNpc_ApplyItem[6][1]["NeedItem"] = 2100155
	tEuropeanCupActivityNpc_ApplyItem[6][1]["Item"] = 2100165
	tEuropeanCupActivityNpc_ApplyItem[6][1]["RandomItemChanceType"] = 3
	tEuropeanCupActivityNpc_ApplyItem[6][1]["ItemSelfChanceSum"] = 10000
	tEuropeanCupActivityNpc_ApplyItem[6][1]["ItemChance"] = 303
	-- tEuropeanCupActivityNpc_ApplyItem[6][1]["Increase"] = 101
	tEuropeanCupActivityNpc_ApplyItem[6][1]["Attr"] = "0 1 0 0 0 0 0 1"
	
	tEuropeanCupActivityNpc_ApplyItem[7] = {}
	tEuropeanCupActivityNpc_ApplyItem[7][1] = {}
	tEuropeanCupActivityNpc_ApplyItem[7][1]["ApplyPoint"] = 189
	tEuropeanCupActivityNpc_ApplyItem[7][1]["NeedItem"] = 2100165
	tEuropeanCupActivityNpc_ApplyItem[7][1]["Item"] = 2100175
	tEuropeanCupActivityNpc_ApplyItem[7][1]["RandomItemChanceType"] = 3
	tEuropeanCupActivityNpc_ApplyItem[7][1]["ItemSelfChanceSum"] = 10000
	tEuropeanCupActivityNpc_ApplyItem[7][1]["ItemChance"] = 159
	-- tEuropeanCupActivityNpc_ApplyItem[7][1]["Increase"] = 53
	tEuropeanCupActivityNpc_ApplyItem[7][1]["Attr"] = "0 1 0 0 0 0 0 1"
	
	tEuropeanCupActivityNpc_ApplyItem[8] = {}
	tEuropeanCupActivityNpc_ApplyItem[8][1] = {}
	tEuropeanCupActivityNpc_ApplyItem[8][1]["ApplyPoint"] = 6
	tEuropeanCupActivityNpc_ApplyItem[8][1]["Item"] = 3200381
	tEuropeanCupActivityNpc_ApplyItem[8][1]["RandomItemChanceType"] = 3
	tEuropeanCupActivityNpc_ApplyItem[8][1]["ItemSelfChanceSum"] = 10000
	tEuropeanCupActivityNpc_ApplyItem[8][1]["ItemChance"] = 5000
	-- tEuropeanCupActivityNpc_ApplyItem[8][1]["Increase"] = 0
	tEuropeanCupActivityNpc_ApplyItem[8][1]["Attr"] = ""
	
	tEuropeanCupActivityNpc_ApplyItem[9] = {}
	tEuropeanCupActivityNpc_ApplyItem[9][1] = {}
	tEuropeanCupActivityNpc_ApplyItem[9][1]["ApplyPoint"] = 290
	tEuropeanCupActivityNpc_ApplyItem[9][1]["Item"] = 3200479
	tEuropeanCupActivityNpc_ApplyItem[9][1]["RandomItemChanceType"] = 3
	tEuropeanCupActivityNpc_ApplyItem[9][1]["ItemSelfChanceSum"] = 10000
	tEuropeanCupActivityNpc_ApplyItem[9][1]["ItemChance"] = 88
	-- tEuropeanCupActivityNpc_ApplyItem[9][1]["Increase"] = 0
	tEuropeanCupActivityNpc_ApplyItem[9][1]["Attr"] = ""
	
	
	
	
	
	
-- 3200378 绿茵荣耀礼包
--3008959	120分钟经验礼包
--3002030	强效护心丹
--3009000	微光星陨石

	tEuropeanCupActivityNpc_Item = {}
	tEuropeanCupActivityNpc_Item[3200378] = {}
	tEuropeanCupActivityNpc_Item[3200378]["space"] = 6
	tEuropeanCupActivityNpc_Item[3200378]["Item"] = {}
	tEuropeanCupActivityNpc_Item[3200378]["Item"][1] = 3008959
	tEuropeanCupActivityNpc_Item[3200378]["Item"][2] = 3002030
	tEuropeanCupActivityNpc_Item[3200378]["Item"][3] = 3009000
	tEuropeanCupActivityNpc_Item[3200378]["Log"] = {}
	tEuropeanCupActivityNpc_Item[3200378]["Log"][1] = "0,0,3200378,1,12000392,2,3008959[3002030][3009000],1[3][2]"
	tEuropeanCupActivityNpc_Item[3200378]["Log"][2] = "0,0,3200378,1,12000392,2,3008959[3002030][3009000],1[3][3]"
	tEuropeanCupActivityNpc_Item[3200378]["Log"][3] = "0,0,3200378,1,12000392,2,3008959[3002030][3009000],1[3][5]"
	
	tEuropeanCupActivityNpc_Item[3200378]["attr"] = {}
	tEuropeanCupActivityNpc_Item[3200378]["attr"][1] = "0 1 0 1440 1"
	tEuropeanCupActivityNpc_Item[3200378]["attr"][2] = "0 3"
	
	tEuropeanCupActivityNpc_Item[3200378]["attr"][3] = {}
	tEuropeanCupActivityNpc_Item[3200378]["attr"][3]["ItemChanceSum"] = 10000

	tEuropeanCupActivityNpc_Item[3200378]["attr"][3][1] = {}
	tEuropeanCupActivityNpc_Item[3200378]["attr"][3][1]["RandomItemChanceType"] = 2
	tEuropeanCupActivityNpc_Item[3200378]["attr"][3][1]["ItemChance"] = 5000
	tEuropeanCupActivityNpc_Item[3200378]["attr"][3][1]["attr"] = "0 2 0 2880 1"
	tEuropeanCupActivityNpc_Item[3200378]["attr"][3][1]["Index"] = 1
	
	tEuropeanCupActivityNpc_Item[3200378]["attr"][3][2] = {}
	tEuropeanCupActivityNpc_Item[3200378]["attr"][3][2]["RandomItemChanceType"] = 2
	tEuropeanCupActivityNpc_Item[3200378]["attr"][3][2]["ItemChance"] = 3000
	tEuropeanCupActivityNpc_Item[3200378]["attr"][3][2]["attr"] = "0 3 0 2880 1"
	tEuropeanCupActivityNpc_Item[3200378]["attr"][3][2]["Index"] = 2
	
	tEuropeanCupActivityNpc_Item[3200378]["attr"][3][3] = {}
	tEuropeanCupActivityNpc_Item[3200378]["attr"][3][3]["RandomItemChanceType"] = 2
	tEuropeanCupActivityNpc_Item[3200378]["attr"][3][3]["ItemChance"] = 2000
	tEuropeanCupActivityNpc_Item[3200378]["attr"][3][3]["attr"] = "0 5 0 2880 1"
	tEuropeanCupActivityNpc_Item[3200378]["attr"][3][3]["Index"] = 3
	
	--3200379 欧洲杯纪念球衣礼包
	tEuropeanCupActivityNpc_CoatItem = {}
	tEuropeanCupActivityNpc_CoatItem[3200379] = {}
	tEuropeanCupActivityNpc_CoatItem[3200379]["Attr"] = "0 1 3 0 0 0 0 1"
	tEuropeanCupActivityNpc_CoatItem[3200379]["ItemChanceSum"] = 10000
	
	tEuropeanCupActivityNpc_CoatItem[3200379][1] = {}
	tEuropeanCupActivityNpc_CoatItem[3200379][1]["RandomItemChanceType"] = 2
	tEuropeanCupActivityNpc_CoatItem[3200379][1]["ItemChance"] = 2000
	tEuropeanCupActivityNpc_CoatItem[3200379][1]["Item_1"] = 193735
	tEuropeanCupActivityNpc_CoatItem[3200379][1]["Index"] = 1
	
	tEuropeanCupActivityNpc_CoatItem[3200379][2] = {}
	tEuropeanCupActivityNpc_CoatItem[3200379][2]["RandomItemChanceType"] = 2
	tEuropeanCupActivityNpc_CoatItem[3200379][2]["ItemChance"] = 2000
	tEuropeanCupActivityNpc_CoatItem[3200379][2]["Item_1"] = 193745
	tEuropeanCupActivityNpc_CoatItem[3200379][2]["Index"] = 2
	
	tEuropeanCupActivityNpc_CoatItem[3200379][3] = {}
	tEuropeanCupActivityNpc_CoatItem[3200379][3]["RandomItemChanceType"] = 2
	tEuropeanCupActivityNpc_CoatItem[3200379][3]["ItemChance"] = 2000
	tEuropeanCupActivityNpc_CoatItem[3200379][3]["Item_1"] = 193755
	tEuropeanCupActivityNpc_CoatItem[3200379][3]["Index"] = 3
	
	tEuropeanCupActivityNpc_CoatItem[3200379][4] = {}
	tEuropeanCupActivityNpc_CoatItem[3200379][4]["RandomItemChanceType"] = 2
	tEuropeanCupActivityNpc_CoatItem[3200379][4]["ItemChance"] = 2000
	tEuropeanCupActivityNpc_CoatItem[3200379][4]["Item_1"] = 193765
	tEuropeanCupActivityNpc_CoatItem[3200379][4]["Index"] = 4
	
	tEuropeanCupActivityNpc_CoatItem[3200379][5] = {}
	tEuropeanCupActivityNpc_CoatItem[3200379][5]["RandomItemChanceType"] = 2
	tEuropeanCupActivityNpc_CoatItem[3200379][5]["ItemChance"] = 1000
	tEuropeanCupActivityNpc_CoatItem[3200379][5]["Item_1"] = 192655
	tEuropeanCupActivityNpc_CoatItem[3200379][5]["Index"] = 5
	
	tEuropeanCupActivityNpc_CoatItem[3200379][6] = {}
	tEuropeanCupActivityNpc_CoatItem[3200379][6]["RandomItemChanceType"] = 2
	tEuropeanCupActivityNpc_CoatItem[3200379][6]["ItemChance"] = 1000
	tEuropeanCupActivityNpc_CoatItem[3200379][6]["Item_1"] = 192665
	tEuropeanCupActivityNpc_CoatItem[3200379][6]["Index"] = 6
	
	
	--3200380 欧洲杯吉祥物礼包
	tEuropeanCupActivityNpc_CoatItem[3200380] = {}
	tEuropeanCupActivityNpc_CoatItem[3200380]["Attr"] = "0 1 0 0 0 0 0 1"
	tEuropeanCupActivityNpc_CoatItem[3200380]["ItemChanceSum"] = 10000
	
	tEuropeanCupActivityNpc_CoatItem[3200380][1] = {}
	tEuropeanCupActivityNpc_CoatItem[3200380][1]["RandomItemChanceType"] = 2
	tEuropeanCupActivityNpc_CoatItem[3200380][1]["ItemChance"] = 10000
	tEuropeanCupActivityNpc_CoatItem[3200380][1]["Item_1"] = 200563
	tEuropeanCupActivityNpc_CoatItem[3200380][1]["Index"] = 1
	
	tEuropeanCupActivityNpc_CoatItem[3200503] = {}
	tEuropeanCupActivityNpc_CoatItem[3200503]["Attr"] = "0 1 0 0 0 0 0 1"
	tEuropeanCupActivityNpc_CoatItem[3200503]["ItemChanceSum"] = 10000
	
	tEuropeanCupActivityNpc_CoatItem[3200503][1] = {}
	tEuropeanCupActivityNpc_CoatItem[3200503][1]["RandomItemChanceType"] = 2
	tEuropeanCupActivityNpc_CoatItem[3200503][1]["ItemChance"] = 10000
	tEuropeanCupActivityNpc_CoatItem[3200503][1]["Item_1"] = 200564
	tEuropeanCupActivityNpc_CoatItem[3200503][1]["Index"] = 1
	
	
	
	
	tEuropeanCupActivityNpc_CoatItem[3200381] = {}
	tEuropeanCupActivityNpc_CoatItem[3200381]["Attr"] = "0 0 3 21600 1"
	
	tEuropeanCupActivityNpc_CoatItem[3200499] = {}
	tEuropeanCupActivityNpc_CoatItem[3200499]["Attr"] = "0 1 0 0 0 0 0 1"
	
	tEuropeanCupActivityNpc_CoatItem[3200576] = {}
	tEuropeanCupActivityNpc_CoatItem[3200576]["Attr"] = "0 1 3 0 0 0 0 1"
	
	
	
	
local tEuropeanCupActivityNpc_Log = {}
	tEuropeanCupActivityNpc_Log[1] = "0,0,0,0,12000392,2,3008889,1"
	tEuropeanCupActivityNpc_Log[2] = "0,0,%d,1,12000392,2,%d,1"
	tEuropeanCupActivityNpc_Log[3] = "0,0,%d,1,12000392,3,%d,1"
	tEuropeanCupActivityNpc_Log[4] = "0,0,1,1700000,12000392,3,0,0"
	
	
	
	
local tEuropeanCupActivityNpc_TLog = {}
	tEuropeanCupActivityNpc_TLog[1] = "0,0,3200358,%d,12000422,1[1],14521,%d"

local tEuropeanCupActivityNpc_ALog = {}
	tEuropeanCupActivityNpc_ALog[1] = "0,0,14521,%d,12000422,1[2],%d,1"
	tEuropeanCupActivityNpc_ALog[2] = "0,0,14521,%d,12000422,1[10],%d,1"
	tEuropeanCupActivityNpc_ALog[3] = "0,0,14521,%d,12000422,1[11],%d,1"
	tEuropeanCupActivityNpc_ALog[4] = "0,0,14521,%d,12000422,1[3],%d,1"
	tEuropeanCupActivityNpc_ALog[5] = "0,0,14521,%d,12000422,1[4],%d,1"
	tEuropeanCupActivityNpc_ALog[6] = "0,0,14521,%d,12000422,1[5],%d,1"
	tEuropeanCupActivityNpc_ALog[7] = "0,0,14521,%d,12000422,1[6],%d,1"
	tEuropeanCupActivityNpc_ALog[8] = "0,0,14521,%d,12000422,1[13],%d,1"
	tEuropeanCupActivityNpc_ALog[9] = "0,0,14521,%d,12000422,1[14],%d,1"
	
	
-- actionlog	
	-- 1[1]	玩家上交加油喇叭	统计上交数量
	-- 1[2]	玩家兑换铜佩饰	统计上交数量
	-- 1[3]	玩家兑换银佩饰	统计上交数量
	-- 1[4]	玩家兑换金佩饰	统计上交数量
	-- 1[5]	玩家兑换光效佩饰	统计上交数量
	-- 1[6]	玩家兑换高级光效佩饰	统计上交数量
	-- 1[10]	玩家兑换球衣外套	统计上交数量
	-- 1[11]	玩家兑换坐骑外套	统计上交数量
	-- 1[13]	玩家兑换武器外套	统计上交数量
	-- 1[14]	玩家获得气球翅膀	统计上交数量
	
-- 1 铜配饰
-- 2 球衣
-- 3 骑宠
-- 4 银
-- 5 金
-- 6 光效
-- 7 高级光效
-- 8 武器外套礼包
-- 9 气球翅膀



	
	
	
	
	
	
	
	
	
	
-----------------------------------------NPC逻辑
function EuropeanCupActivityNpc_ConfirmTeam(nNpcId,nGlobalId)
	local sDialogText1 = string.format(tEuropeanCupActivityNpc_Text[nNpcId]["Text211"],tEuropeanCupActivityNpc_Text["Team"][nGlobalId])
	Sys_DialogText(sDialogText1)
	
	for i = 1,#tEuropeanCupActivityNpc_Text[nGlobalId] do
		local sOptText = string.format(tEuropeanCupActivityNpc_Text[nNpcId]["Option10"],tEuropeanCupActivityNpc_Text[nGlobalId][i])
		Sys_DialogOption(sOptText,"</F>EuropeanCupActivityNpc_SelectTeam</N>" .. nNpcId .. "</N>" .. nGlobalId .. "</N>" .. i)
	end
	
	Sys_DialogOption(tEuropeanCupActivityNpc_Text[nNpcId]["Option11"],"</F>LinkNpcGossipFunc_New</N>" .. nNpcId .. "</S>1-3")
	Sys_DialogOption(tEuropeanCupActivityNpc_Text[nNpcId]["Option12"],"</F>NULL")
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()

end

function EuropeanCupActivityNpc_SelectTeam(nNpcId,nGlobalId,nTeamId)

	local nZhiChi = Get_SysDynaGlobalData(nGlobalId,nTeamId)

	local sDialogText1 = string.format(tEuropeanCupActivityNpc_Text[nNpcId]["Text221"],tEuropeanCupActivityNpc_Text[nGlobalId][nTeamId],tEuropeanCupActivityNpc_Text[nGlobalId][nTeamId],nZhiChi)
	
	if nNpcId == 19270 then
		local nOptEditLen = tEuropeanCupActivityNpc_Constant["OptEditLen"]
		local sOptEditText = tEuropeanCupActivityNpc_Text[nNpcId]["Option13"]
		local sOptEditFunc = string.format("EuropeanCupActivityNpc_HandIn</N>%d</N>%d</N>%d",nNpcId,nGlobalId,nTeamId)
		Sys_DialogText(sDialogText1)
		Sys_DialogOptEdit(sOptEditText,nOptEditLen,sOptEditFunc)
	else
		if not EuropeanCupActivityNpc_IsSatisfy(nNpcId) then 
			return
		else
			Sys_DialogText(sDialogText1)
			
			local nEvent = tEuropeanCupActivityNpc_Stc["EventType"]
			local nType = tEuropeanCupActivityNpc_Stc["DataType"][3]
		
			if not Task_ChkStcValue(nEvent,nType,"==",0) then
				if Task_StcInterval(nEvent,nType,1,4) then
					Task_SetStatistic(nEvent,nType,0,1,0)
					Task_SetStcTimestamp(nEvent,nType,0,0)
				end
			end
			local nTimes = 10 - Get_UserStatisticValue(nEvent,nType)
			Sys_DialogText(string.format(tEuropeanCupActivityNpc_Text[nNpcId]["Text222"],nTimes))
			
			local sOptText = tEuropeanCupActivityNpc_Text[nNpcId]["Option13"]
			Sys_DialogOption(sOptText,"</F>EuropeanCupActivityNpc_CheerTeam</N>" .. nNpcId .. "</N>" .. nGlobalId .. "</N>" .. nTeamId)
			
			Sys_DialogOption(tEuropeanCupActivityNpc_Text[nNpcId]["Option16"],"</F>EuropeanCupActivityNpc_ConfirmTeam</N>" .. nNpcId .. "</N>" .. nGlobalId)
			Sys_DialogOption(tEuropeanCupActivityNpc_Text[nNpcId]["Option12"],"</F>NULL")
		end
	end
	
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end

function EuropeanCupActivityNpc_HandIn(nNpcId,nGlobalId,nTeamId)
	-- 输入字符判断
	local nItemNum = tonumber(Get_SysAcceptStr())
	local nItemId = tEuropeanCupActivityNpc_Constant["ItemID"]
	
	if type(nItemNum) ~= "number" or nItemNum <= 0 then
		EuropeanCupActivityNpc_ReWrite(nNpcId,nGlobalId,nTeamId)
		return
	end
	
	local nJEvent = tEuropeanCupActivityNpc_Stc["EventType"]
	local nJType = tEuropeanCupActivityNpc_Stc["DataType"][2]

	if not Task_ChkStcValue(nJEvent,nJType,"==",0) then
		if Task_StcInterval(nJEvent,nJType,1,4) then
			Task_SetStatistic(nJEvent,nJType,0,1,0)
			Task_SetStcTimestamp(nJEvent,nJType,0,0)
			-- 判断背包空间
			if not User_CheckLeftSpace(tEuropeanCupActivityNpc_Constant["Space"]) then
				LinkNpcGossipFunc_New(nNpcId,"2-4")
				return
			end
		end
	else
		-- 判断背包空间
		if not User_CheckLeftSpace(tEuropeanCupActivityNpc_Constant["Space"]) then
			LinkNpcGossipFunc_New(nNpcId,"2-4")
			return
		end
	end

	
	--判断物品是否存在
	if Item_ChkMulItem(nItemId,nItemId,nItemNum,0) and Item_DelMulItem(nItemId,nItemId,nItemNum,0) then
		local nEvent = tEuropeanCupActivityNpc_Stc["EventType"]
		local nType = tEuropeanCupActivityNpc_Stc["DataType"][1]
		local nNCType = tEuropeanCupActivityNpc_Stc["DataType"][4]
		
		
		Task_AddStatistic(nEvent,nType,nItemNum,1)
		Task_AddStatistic(nEvent,nNCType,nItemNum,1)
		
		EuropeanCupActivityNpc_GiveGift(nItemNum)
		
		local nNowPoint = Get_UserStatisticValue(nEvent,nType)
		User_TalkChannel2005(string.format(tEuropeanCupActivityNpc_Text["HandIn"],nItemNum,tEuropeanCupActivityNpc_Text[nGlobalId][nTeamId],nNowPoint))
		
		local nPoint1 = Get_SysDynaGlobalData(nGlobalId,nTeamId)
		local nPoint2 = nPoint1+nItemNum
		Sys_SetSynaGlobalData(nGlobalId,nTeamId,nPoint2)
		
		Sys_SaveActionFestivalLog(string.format(tEuropeanCupActivityNpc_TLog[1],nItemNum,nItemNum))

		LinkNpcGossipFunc_New(nNpcId,"1-3")
		
		
	else
		EuropeanCupActivityNpc_NotEnough(nNpcId,nGlobalId,nTeamId)
	end
end

--每日上交物品超3个给奖品
function EuropeanCupActivityNpc_GiveGift(nItemNum)
	local nEvent = tEuropeanCupActivityNpc_Stc["EventType"]
	local nType = tEuropeanCupActivityNpc_Stc["DataType"][2]
	
	if not Task_ChkStcValue(nEvent,nType,"==",0) then
		if Task_StcInterval(nEvent,nType,1,4) then
			Task_SetStatistic(nEvent,nType,0,1,0)
			Task_SetStcTimestamp(nEvent,nType,0,0)
		end
	end
	
	if not (Get_UserStatisticValue(nEvent,nType) >= 3) then
		Task_AddStatistic(nEvent,nType,nItemNum,1)
		if Get_UserStatisticValue(nEvent,nType) >= 3 then
			Item_AddNewItem(tEuropeanCupActivityNpc_Constant["AwardItemID"],tEuropeanCupActivityNpc_Constant["AwardItemAttr"]) 
			Task_SetStcTimestamp(nEvent,nType,0,0)
			Sys_SaveActionFestivalLog(tEuropeanCupActivityNpc_Log[1])
			User_TalkChannel2005(tEuropeanCupActivityNpc_Text["GiveGift"])
		end
	end
end

--重新输入对白逻辑
function EuropeanCupActivityNpc_ReWrite(nNpcId,nGlobalId,nTeamId)
	Sys_DialogText(tEuropeanCupActivityNpc_Text[nNpcId]["Text231"])
	Sys_DialogOption(tEuropeanCupActivityNpc_Text[nNpcId]["Option14"],"</F>EuropeanCupActivityNpc_SelectTeam</N>" .. nNpcId .. "</N>" .. nGlobalId .. "</N>" .. nTeamId)
	Sys_DialogOption(tEuropeanCupActivityNpc_Text[nNpcId]["Option15"],"</F>NULL")
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()

end

--物品不足重新输入
function EuropeanCupActivityNpc_NotEnough(nNpcId,nGlobalId,nTeamId)
	Sys_DialogText(tEuropeanCupActivityNpc_Text[nNpcId]["Text251"])
	Sys_DialogOption(tEuropeanCupActivityNpc_Text[nNpcId]["Option17"],"</F>EuropeanCupActivityNpc_SelectTeam</N>" .. nNpcId .. "</N>" .. nGlobalId .. "</N>" .. nTeamId)
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end

function EuropeanCupActivityNpc_IsSatisfy(nNpcId)
	--判断是否已经10次
	local nEvent = tEuropeanCupActivityNpc_Stc["EventType"]
	local nType = tEuropeanCupActivityNpc_Stc["DataType"][3]

	if not Task_ChkStcValue(nEvent,nType,"==",0) then
		if Task_StcInterval(nEvent,nType,1,4) then
			Task_SetStatistic(nEvent,nType,0,1,0)
			Task_SetStcTimestamp(nEvent,nType,0,0)
		end
	end
	
	if Get_UserStatisticValue(nEvent,nType) >= 10 then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return false
	end

	if not User_CanPutMoney2Bag(-tEuropeanCupActivityNpc_Constant["Money"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return false
	end

	return true
end


--上交金币助威
function EuropeanCupActivityNpc_CheerTeam(nNpcId,nGlobalId,nTeamId)
	if not EuropeanCupActivityNpc_IsSatisfy(nNpcId) then 
		return
	else
		--扣除金币
		User_AddMoney(-tEuropeanCupActivityNpc_Constant["Money"])
		local nEvent = tEuropeanCupActivityNpc_Stc["EventType"]
		local nType = tEuropeanCupActivityNpc_Stc["DataType"][1]
		local nType1 = tEuropeanCupActivityNpc_Stc["DataType"][3]
		
		local nNCType = tEuropeanCupActivityNpc_Stc["DataType"][4]
		
		Task_AddStatistic(nEvent,nType,1,1)
		
		Task_AddStatistic(nEvent,nType1,1,1)
		Task_AddStatistic(nEvent,nNCType,1,1)
		
		
		local nNowPoint = Get_UserStatisticValue(nEvent,nType)
		
		--打log
		Sys_SaveActionFestivalLog(tEuropeanCupActivityNpc_Log[4])
		Sys_SaveEmoneyBuy(tEuropeanCupActivityNpc_Constant["EMoneyLog"])
		
		
		User_TalkChannel2005(string.format(tEuropeanCupActivityNpc_Text["Cheer"],tEuropeanCupActivityNpc_Text[nGlobalId][nTeamId],nNowPoint))
		
		local nPoint1 = Get_SysDynaGlobalData(nGlobalId,nTeamId)
		local nPoint2 = nPoint1+1
		Sys_SetSynaGlobalData(nGlobalId,nTeamId,nPoint2)
		EuropeanCupActivityNpc_SelectTeam(nNpcId,nGlobalId,nTeamId)
		
	end

end



--兑换物品
-- function EuropeanCupActivityNpc_ExchangeItem(nNpcId,nSelectId)

	-- local nNeedPoint = tEuropeanCupActivityNpc_ExItem[nSelectId]["Point"]
	-- local sItemName = Get_ItemtypeName(tEuropeanCupActivityNpc_ExItem[nSelectId]["Item"])

	-- if EuropeanCupActivityNpc_PointFull(nNpcId,nNeedPoint,sItemName) then
		-- return
	-- end
	
	-- if tEuropeanCupActivityNpc_ExItem[nSelectId]["NeedItem"] then
		-- local sNeedName = Get_ItemtypeName(tEuropeanCupActivityNpc_ExItem[nSelectId]["NeedItem"])
		-- if not Item_ChkItem(tEuropeanCupActivityNpc_ExItem[nSelectId]["NeedItem"]) then
			-- Sys_DialogText(string.format(tEuropeanCupActivityNpc_Text[nNpcId]["Text241"],sNeedName))
			-- Sys_DialogOption(tEuropeanCupActivityNpc_Text[nNpcId]["Option15"])
			-- Sys_DialogFace(nNpcId)
			-- Sys_DialogEnd()
			-- return
		-- end
	
		-- Sys_DialogText(string.format(tEuropeanCupActivityNpc_Text[nNpcId]["Text221"],nNeedPoint,sNeedName,sItemName))
		-- Sys_DialogOption(string.format(tEuropeanCupActivityNpc_Text[nNpcId]["Option12"],nNeedPoint),"</F>EuropeanCupActivityNpc_GetItem</N>" .. nNpcId .. "</N>" .. nSelectId .. "</N>" .. nNeedPoint .. "</S>" .. sItemName)
		-- Sys_DialogOption(tEuropeanCupActivityNpc_Text[nNpcId]["Option13"])
	-- else
		-- Sys_DialogText(string.format(tEuropeanCupActivityNpc_Text[nNpcId]["Text231"],nNeedPoint,sItemName))
		-- Sys_DialogOption(string.format(tEuropeanCupActivityNpc_Text[nNpcId]["Option14"],nNeedPoint),"</F>EuropeanCupActivityNpc_GetItem</N>" .. nNpcId .. "</N>" .. nSelectId .. "</N>" .. nNeedPoint .. "</S>" .. sItemName)
	-- end
	
	-- Sys_DialogOption(tEuropeanCupActivityNpc_Text[nNpcId]["Option13"])
	-- Sys_DialogFace(nNpcId)
	-- Sys_DialogEnd()
-- end

--判断玩家积分是否足够，不够给提示
function EuropeanCupActivityNpc_PointFull(nNpcId,nNeedPoint,sItemName)
	local nEvent = tEuropeanCupActivityNpc_Stc["EventType"]
	local nType = tEuropeanCupActivityNpc_Stc["DataType"][1]
	local nUserPoint = Get_UserStatisticValue(nEvent,nType)
	if nUserPoint < nNeedPoint then
		Sys_DialogText(string.format(tEuropeanCupActivityNpc_Text[nNpcId]["Text211"],sItemName))
		Sys_DialogOption(tEuropeanCupActivityNpc_Text[nNpcId]["Option11"],"</F>EuropeanCupActivityNpc_FindNpc")
		Sys_DialogOption(tEuropeanCupActivityNpc_Text[nNpcId]["Option20"])
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
		return true
	end
	return false
end

function EuropeanCupActivityNpc_FindNpc()
	Sys_GotoSomeWhere(tEuropeanCupActivityNpc_Constant["Cellx"],tEuropeanCupActivityNpc_Constant["Celly"],tEuropeanCupActivityNpc_Constant["MapId"],tEuropeanCupActivityNpc_Constant["Npc"])
end

--点击兑换选项给物品
-- function EuropeanCupActivityNpc_GetItem(nNpcId,nSelectId,nNeedPoint,sItemName)
	--判断点数是否足够
	-- if EuropeanCupActivityNpc_PointFull(nNpcId,nNeedPoint,sItemName) then
		-- return
	-- end
	
	-- if tEuropeanCupActivityNpc_ExItem[nSelectId]["NeedItem"] then
		-- local nItemId = tEuropeanCupActivityNpc_ExItem[nSelectId]["NeedItem"]
		--升级物品所需道具是否存在
		-- if not (Item_ChkItem(nItemId) and Item_DelItem(nItemId)) then
			-- local sNeedName = Get_ItemtypeName(tEuropeanCupActivityNpc_ExItem[nSelectId]["NeedItem"])
			-- Sys_DialogText(string.format(tEuropeanCupActivityNpc_Text[nNpcId]["Text241"],sNeedName))
			-- Sys_DialogOption(tEuropeanCupActivityNpc_Text[nNpcId]["Option15"])
			-- Sys_DialogFace(nNpcId)
			-- Sys_DialogEnd()
			-- return
		-- end
	-- else
		-- 判断背包空间
		-- if not User_CheckLeftSpace(tEuropeanCupActivityNpc_Constant["Space"]) then
			-- Sys_DialogText(string.format(tEuropeanCupActivityNpc_Text[nNpcId]["Text251"],sItemName))
			-- Sys_DialogOption(tEuropeanCupActivityNpc_Text[nNpcId]["Option16"])
			-- Sys_DialogFace(nNpcId)
			-- Sys_DialogEnd()
			-- return
		-- end
	-- end

	-- local nEvent = tEuropeanCupActivityNpc_Stc["EventType"]
	-- local nType = tEuropeanCupActivityNpc_Stc["DataType"][1]
	-- Task_AddStatistic(nEvent,nType,-nNeedPoint,1)
	-- Item_AddNewItem(tEuropeanCupActivityNpc_ExItem[nSelectId]["Item"],tEuropeanCupActivityNpc_ExItem[nSelectId]["Attr"]) 
	-- Sys_SaveActionFestivalLog(string.format(tEuropeanCupActivityNpc_Log[2],nNeedPoint,tEuropeanCupActivityNpc_ExItem[nSelectId]["Item"]))
	
	-- User_TalkChannel2005(string.format(tEuropeanCupActivityNpc_Text["DuiHuan"],nNeedPoint,sItemName))
	-- LinkNpcGossipFunc_New(nNpcId,"1-3")
-- end

--申请物品
function EuropeanCupActivityNpc_ApplyItem(nNpcId,nSelectId)

	--判断升级物品是否存在
	if tEuropeanCupActivityNpc_ApplyItem[nSelectId][1]["NeedItem"] then
		--升级物品所需道具是否存在
		if not Item_ChkItem(tEuropeanCupActivityNpc_ApplyItem[nSelectId][1]["NeedItem"]) then
			local sNeedName = Get_ItemtypeName(tEuropeanCupActivityNpc_ApplyItem[nSelectId][1]["NeedItem"])
			
			local sUplevName = Get_ItemtypeName(tEuropeanCupActivityNpc_ApplyItem[nSelectId][1]["Item"])
			Sys_DialogText(string.format(tEuropeanCupActivityNpc_Text[nNpcId]["Text241"],tEuropeanCupActivityNpc_Text["ItemDesc"][nSelectId],sUplevName,sNeedName))
			Sys_DialogOption(tEuropeanCupActivityNpc_Text[nNpcId]["Option14"])
			Sys_DialogFace(nNpcId)
			Sys_DialogEnd()
			return
		end
	end

	local sItemName = Get_ItemtypeName(tEuropeanCupActivityNpc_ApplyItem[nSelectId][1]["Item"])
	local nNeedPoint = tEuropeanCupActivityNpc_ApplyItem[nSelectId][1]["ApplyPoint"]
	local nEvent = tEuropeanCupActivityNpc_Stc["EventType"]
	local nType = tEuropeanCupActivityNpc_ExcStc["DataType"][nSelectId]
	
	local nType1 = tEuropeanCupActivityNpc_Stc["DataType"][1]
	local nIntegral = Get_UserStatisticValue(nEvent,nType1)
	
	local nUsedPoint = Get_UserStatisticValue(nEvent,nType)
	
	local sDialogText1 = string.format(tEuropeanCupActivityNpc_Text[nNpcId]["Text221"],tEuropeanCupActivityNpc_Text["ItemDesc"][nSelectId],sItemName)
	local sDialogText2 = string.format(tEuropeanCupActivityNpc_Text[nNpcId]["Text222"],nNeedPoint,nUsedPoint,nNeedPoint,nIntegral)
	-- local sDialogText3 = string.format(tEuropeanCupActivityNpc_Text[nNpcId]["Text223"],sItemName,nUsedPoint)
	
	
	local nOptEditLen = tEuropeanCupActivityNpc_Constant["OptEditLen"]
	local sOptEditText = ""
	local sOptEditFunc = string.format("EuropeanCupActivityNpc_Applying</N>%d</N>%d</S>%s",nNpcId,nSelectId,sItemName)
	
	Sys_DialogText(sDialogText1)
	Sys_DialogText(sDialogText2)
	-- Sys_DialogText(sDialogText3)
	Sys_DialogOptEdit(sOptEditText,nOptEditLen,sOptEditFunc)
	Sys_DialogOption(tEuropeanCupActivityNpc_Text[nNpcId]["Option21"],"</F>LinkNpcGossipFunc_New</N>" .. nNpcId .. "</S>1-3")
	
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
	
end

function EuropeanCupActivityNpc_Applying(nNpcId,nSelectId,sItemName)
	-- 输入字符判断
	local nInputPoint = tonumber(Get_SysAcceptStr())
	local nItemId
	local nRandom = 0
	local nEvent = tEuropeanCupActivityNpc_Stc["EventType"]
	local nType = tEuropeanCupActivityNpc_ExcStc["DataType"][nSelectId]
	local nType1 = tEuropeanCupActivityNpc_Stc["DataType"][1]
	local nUsedPoint = Get_UserStatisticValue(nEvent,nType)
	
	
	if type(nInputPoint) ~= "number" or (nUsedPoint + nInputPoint > tEuropeanCupActivityNpc_ApplyItem[nSelectId][1]["ApplyPoint"]) or nInputPoint <= 0 then
		EuropeanCupActivityNpc_ReWrite2(nNpcId,nSelectId)
		return
	end
	
	
	--判断玩家点数与申请点数是否足够
	if EuropeanCupActivityNpc_PointFull(nNpcId,nInputPoint,sItemName) then
		return
	end
	
	--判断背包空间
	if tEuropeanCupActivityNpc_ApplyItem[nSelectId][1]["Space"] then
		-- 判断背包空间
		if not User_CheckLeftSpace(tEuropeanCupActivityNpc_ApplyItem[nSelectId][1]["Space"]) then
			Sys_DialogText(string.format(tEuropeanCupActivityNpc_Text[nNpcId]["Text231"],sItemName))
			Sys_DialogOption(tEuropeanCupActivityNpc_Text[nNpcId]["Option13"])
			Sys_DialogFace(nNpcId)
			Sys_DialogEnd()
			return
		end
	end
	
	--判断升级物品是否存在
	if tEuropeanCupActivityNpc_ApplyItem[nSelectId][1]["NeedItem"] then
		--升级物品所需道具是否存在
		if not Item_ChkItem(tEuropeanCupActivityNpc_ApplyItem[nSelectId][1]["NeedItem"]) then
			local sNeedName = Get_ItemtypeName(tEuropeanCupActivityNpc_ApplyItem[nSelectId][1]["NeedItem"])
			
			local sUplevName = Get_ItemtypeName(tEuropeanCupActivityNpc_ApplyItem[nSelectId][1]["Item"])
			Sys_DialogText(string.format(tEuropeanCupActivityNpc_Text[nNpcId]["Text241"],tEuropeanCupActivityNpc_Text["ItemDesc"][nSelectId],sUplevName,sNeedName))
			Sys_DialogOption(tEuropeanCupActivityNpc_Text[nNpcId]["Option14"])
			Sys_DialogFace(nNpcId)
			Sys_DialogEnd()
			return
		end
	end


	--扣积分
	Task_AddStatistic(nEvent,nType1,-nInputPoint,1)
	local nApplyPoint = nUsedPoint + nInputPoint
	--判断上交完后的点数是否超过需求的点数，未超过随机，超过直接给
	if nUsedPoint + nInputPoint >= tEuropeanCupActivityNpc_ApplyItem[nSelectId][1]["ApplyPoint"] then
		nItemId = tEuropeanCupActivityNpc_ApplyItem[nSelectId][1]["Item"]
	else
		Task_AddStatistic(nEvent,nType,nInputPoint,1)
		
		if nInputPoint < 3 then 
			nRandom = 0
		elseif nInputPoint < (tEuropeanCupActivityNpc_ApplyItem[nSelectId][1]["ApplyPoint"]/2) then 
			nRandom = math.floor(0.7*10000*nInputPoint * (1/tEuropeanCupActivityNpc_ApplyItem[nSelectId][1]["ApplyPoint"]))
		else
			nRandom = math.floor(10000*nInputPoint * (1/tEuropeanCupActivityNpc_ApplyItem[nSelectId][1]["ApplyPoint"]))
		end
		--随机
		

		-- User_TalkChannel2005(tostring(nRandom))
		if nRandom >= 10000 then
			nRandom = 10000
		end
		tEuropeanCupActivityNpc_ApplyItem[nSelectId][1]["ItemChance"] = nRandom

		local nFlat,tSelfItemChanceAward = Probabil_RandomAward(tEuropeanCupActivityNpc_ApplyItem,nSelectId)
		local nSize = #tSelfItemChanceAward[1]["tSelfItemChanceAward"]
		
		local nRandom1 = tEuropeanCupActivityNpc_ApplyItemChance[nSelectId]
		tEuropeanCupActivityNpc_ApplyItem[nSelectId][1]["ItemChance"] = nRandom1
		
		if nSize ~= 0 then
			nItemId = tSelfItemChanceAward[1]["tSelfItemChanceAward"][nSize]["Item"]
		end
		
	end

	if nItemId then
		if tEuropeanCupActivityNpc_ApplyItem[nSelectId][1]["NeedItem"] then
			if Item_ChkItem(tEuropeanCupActivityNpc_ApplyItem[nSelectId][1]["NeedItem"]) and Item_DelItem(tEuropeanCupActivityNpc_ApplyItem[nSelectId][1]["NeedItem"]) then
			end
		end
		
		Task_SetStatistic(nEvent,nType,0,1)
		Item_AddNewItem(tEuropeanCupActivityNpc_ApplyItem[nSelectId][1]["Item"],tEuropeanCupActivityNpc_ApplyItem[nSelectId][1]["Attr"]) 
		Sys_SaveActionFestivalLog(string.format(tEuropeanCupActivityNpc_Log[3],nInputPoint,tEuropeanCupActivityNpc_ApplyItem[nSelectId][1]["Item"]))
		
		Sys_SaveActionFestivalLog(string.format(tEuropeanCupActivityNpc_ALog[nSelectId],nApplyPoint,tEuropeanCupActivityNpc_ApplyItem[nSelectId][1]["Item"]))
		
		User_TalkChannel2005(string.format(tEuropeanCupActivityNpc_Text["ShenQing"],nInputPoint,sItemName))
		User_EffectAdd("self",tEuropeanCupActivityNpc_Effect["Sucess"])
	else
		Sys_SaveActionFestivalLog(string.format(tEuropeanCupActivityNpc_Log[3],nInputPoint,0))
		User_TalkChannel2005(string.format(tEuropeanCupActivityNpc_Text["ShenQingFail"],nInputPoint,sItemName))
		EuropeanCupActivityNpc_ApplyItem(nNpcId,nSelectId)
		User_EffectAdd("self",tEuropeanCupActivityNpc_Effect["fail"])
	end
	
end

--重新输入对白逻辑
function EuropeanCupActivityNpc_ReWrite2(nNpcId,nSelectId)
	Sys_DialogText(tEuropeanCupActivityNpc_Text[nNpcId]["Text251"])
	Sys_DialogOption(tEuropeanCupActivityNpc_Text[nNpcId]["Option15"],"</F>EuropeanCupActivityNpc_ApplyItem</N>" .. nNpcId .. "</N>" .. nSelectId)
	Sys_DialogOption(tEuropeanCupActivityNpc_Text[nNpcId]["Option16"],"</F>NULL")
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end

--纪念礼包逻辑
function EuropeanCupActivityNpc_OpenAnniverPack(nItemId)
	local sAttr = ""
	local sLog = ""
	local sMessage = ""
	-- 判断背包空间
	if not User_CheckLeftSpace(tEuropeanCupActivityNpc_Item[nItemId]["space"]) then
		User_TalkChannel2005(tEuropeanCupActivityNpc_Text[nItemId]["NoSpace"])
		return
	end
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		for i = 1,#tEuropeanCupActivityNpc_Item[nItemId]["Item"] do 
			if type(tEuropeanCupActivityNpc_Item[nItemId]["attr"][i]) == "table" then
				local flat,tAward = Probabil_RandomAward(tEuropeanCupActivityNpc_Item[nItemId]["attr"],i)
				sAttr = tAward[1]["tAward"][1]["attr"]
				local nIndex = tAward[1]["tAward"][1]["Index"]
				sLog = tEuropeanCupActivityNpc_Item[nItemId]["Log"][nIndex]
				sMessage = tEuropeanCupActivityNpc_Text[nItemId][nIndex]
			else
				sAttr = tEuropeanCupActivityNpc_Item[nItemId]["attr"][i]
			end

			Item_AddNewItem(tEuropeanCupActivityNpc_Item[nItemId]["Item"][i],sAttr) 
		end
		
		Sys_SaveActionFestivalLog(sLog)
		User_TalkChannel2005(sMessage)
		
	end


end

--外套礼包逻辑
function EuropeanCupActivityNpc_OpenCoatPack(nItemId)
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local flat,tAward = Probabil_RandomAward(tEuropeanCupActivityNpc_CoatItem,nItemId)
		local nItem = tAward[1]["tAward"][1]["Item_1"]
		local sName = Get_ItemtypeName(nItem)
		Item_AddNewItem(nItem,tEuropeanCupActivityNpc_CoatItem[nItemId]["Attr"]) 
		Sys_SaveActionFestivalLog(string.format(tEuropeanCupActivityNpc_Log[2],nItemId,nItem))
		if nItemId == 3200379 then
			sName = string.format(tEuropeanCupActivityNpc_Text["Gift"],sName)
		end
		User_TalkChannel2005(string.format(tEuropeanCupActivityNpc_Text["GetCoat"],sName))
	end
end

--武器外套礼包逻辑
function EuropeanCupActivityNpc_SuitPack(nPackId,nSuitId)
	--对话后,检测背包
	-- if not User_CheckLeftSpace(tEuropeanCupActivityNpc_Constant["Space"]) then
		-- User_TalkChannel2005(tEuropeanCupActivityNpc_Text["SuitPack"]["NoSpace"])
		-- return
	-- end
	--删除礼包
	if Item_ChkItem(nPackId) and Item_DelItem(nPackId) then
		Item_AddNewItem(nSuitId,tEuropeanCupActivityNpc_CoatItem[nPackId]["Attr"])
		Sys_SaveActionFestivalLog(string.format(tEuropeanCupActivityNpc_Log[2],nPackId,nSuitId))
		User_TalkChannel2005(tEuropeanCupActivityNpc_Text[nSuitId])
	end
end


--计算支持度最高的球队
function EuropeanCupActivityNpc_Best()
	local nBestPoint = 0
	local nBestGlobalId = 0
	local nBestTeam = 0
	for i = 1,#tEuropeanCupActivityNpc_Global do
		local nGlobalId = tEuropeanCupActivityNpc_Global[i]
		for j = 1,4 do
			local nPoint = Get_SysDynaGlobalData(nGlobalId,j)
			if nPoint > nBestPoint then
				nBestPoint = nPoint
				nBestGlobalId = nGlobalId
				nBestTeam = j
			end
		end
	end
	
	return nBestPoint,nBestGlobalId,nBestTeam
end

--24号后，在NPC齐大内处添加纪念金杯大回馈选项。
--所有拥有纪念金杯的玩家，都可以来NPC齐大内处领取1个可选的【球衣礼包】。
--【球衣礼包】打开可自行选择1件球衣外套获得，获得的球衣是赠品。


function EuropeanCupActivityNpc_GiveCoatGift(nNpcId)
	local nEvent = tEuropeanCupActivityNpc_Stc1["EventType"]
	local nType = tEuropeanCupActivityNpc_Stc1["DataType"]
	
	local nExcNeedItem = tEuropeanCupActivityNpc_Constant["ExcNeedItem"]
	local nExcItem = tEuropeanCupActivityNpc_Constant["ExcItem"]
	
	if Get_UserStatisticValue(nEvent,nType) == 0 then
		if not Item_ChkItem(nExcNeedItem) then
			--没有纪念金杯的提示
			LinkNpcGossipFunc_New(nNpcId,"50-1")
			return
		else
			if not User_CheckLeftSpace(tEuropeanCupActivityNpc_Constant["Space"]) then
				--背包不足的提示
				LinkNpcGossipFunc_New(nNpcId,"51-1")
				return
			end
		
			Task_SetStatistic(nEvent,nType,1,1)
			Item_AddNewItem(nExcItem,"") 
			Sys_SaveActionFestivalLog(string.format(tEuropeanCupActivityNpc_Log[2],nExcNeedItem,nExcItem))
			--兑换获得礼包的提示
			User_TalkChannel2005(tEuropeanCupActivityNpc_Text["ExcCoatGift"])
		end
	else
		LinkNpcGossipFunc_New(nNpcId,"52-1")
		return
	end
end



--------------------------------------------------NPC配置
--齐大内
tNpcFace[5116] = 51
tNpcGossip[19270] = tNpcGossip[19270] or DefaultNpc:new{}
tNpcGossip[19270]["OptionHidden"] = 1

--活动时间前
tNpcGossip[19270]["Text1-1"] = {111}
tNpcGossip[19270]["Text111"] = tEuropeanCupActivityNpc_Text[19270]["Text111"]
tNpcGossip[19270]["tOption1-1"] = {1}
tNpcGossip[19270]["Option1"] = tEuropeanCupActivityNpc_Text[19270]["Option1"]
tNpcGossip[19270]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tEuropeanCupActivityNpc_Constant["BeforeTime"])
end


--活动中不满足条件
tNpcGossip[19270]["Text1-2"] = {121,122,123,124,125,126,127,128,129}
tNpcGossip[19270]["Text121"] = tEuropeanCupActivityNpc_Text[19270]["Text121"]
tNpcGossip[19270]["Text122"] = tEuropeanCupActivityNpc_Text[19270]["Text122"]
tNpcGossip[19270]["Text123"] = tEuropeanCupActivityNpc_Text[19270]["Text123"]
tNpcGossip[19270]["Text124"] = tEuropeanCupActivityNpc_Text[19270]["Text124"]
tNpcGossip[19270]["Text125"] = tEuropeanCupActivityNpc_Text[19270]["Text125"]
tNpcGossip[19270]["Text126"] = tEuropeanCupActivityNpc_Text[19270]["Text126"]
tNpcGossip[19270]["Text127"] = tEuropeanCupActivityNpc_Text[19270]["Text127"]
tNpcGossip[19270]["Text128"] = tEuropeanCupActivityNpc_Text[19270]["Text128"]
tNpcGossip[19270]["Text129"] = tEuropeanCupActivityNpc_Text[19270]["Text129"]

tNpcGossip[19270]["tOption1-2"] = {2}
tNpcGossip[19270]["Option2"] = tEuropeanCupActivityNpc_Text[19270]["Option2"]
tNpcGossip[19270]["ChkFunc1-2"] = function ()
	return Sys_ChkFullTime(tEuropeanCupActivityNpc_Constant["ActivetyTime"]) and (not User_JudgeLevelAndMetempsychosis(tEuropeanCupActivityNpc_Constant["Level"],tEuropeanCupActivityNpc_Constant["Metempsychosis"]))
end

--活动中满足条件
tNpcGossip[19270]["Text1-3"] = {131,132,133,134,135,139,136,137,138}
tNpcGossip[19270]["Text131"] = tEuropeanCupActivityNpc_Text[19270]["Text131"]
tNpcGossip[19270]["Text132"] = tEuropeanCupActivityNpc_Text[19270]["Text122"]
tNpcGossip[19270]["Text133"] = tEuropeanCupActivityNpc_Text[19270]["Text123"]
tNpcGossip[19270]["Text134"] = tEuropeanCupActivityNpc_Text[19270]["Text124"]
tNpcGossip[19270]["Text135"] = tEuropeanCupActivityNpc_Text[19270]["Text125"]
tNpcGossip[19270]["Text136"] = tEuropeanCupActivityNpc_Text[19270]["Text126"]
tNpcGossip[19270]["Text137"] = tEuropeanCupActivityNpc_Text[19270]["Text127"]
tNpcGossip[19270]["Text138"] = tEuropeanCupActivityNpc_Text[19270]["Text129"]
tNpcGossip[19270]["Text139"] = tEuropeanCupActivityNpc_Text[19270]["Text139"]

tNpcGossip[19270]["tOption1-3"] = {3,4,5,6,7,8,20,9}
tNpcGossip[19270]["Option3"] = tEuropeanCupActivityNpc_Text[19270]["Option3"]
tNpcGossip[19270]["Option4"] = tEuropeanCupActivityNpc_Text[19270]["Option4"]
tNpcGossip[19270]["Option5"] = tEuropeanCupActivityNpc_Text[19270]["Option5"]
tNpcGossip[19270]["Option6"] = tEuropeanCupActivityNpc_Text[19270]["Option6"]
tNpcGossip[19270]["Option7"] = tEuropeanCupActivityNpc_Text[19270]["Option7"]
tNpcGossip[19270]["Option8"] = tEuropeanCupActivityNpc_Text[19270]["Option8"]
tNpcGossip[19270]["Option9"] = tEuropeanCupActivityNpc_Text[19270]["Option9"]
tNpcGossip[19270]["Option20"] = tEuropeanCupActivityNpc_Text[19270]["Option20"]

tNpcGossip[19270]["ChkFunc1-3"] = function ()
	local nEvent = tEuropeanCupActivityNpc_Stc["EventType"]
	local nType = tEuropeanCupActivityNpc_Stc["DataType"][1]
	local nIntegral = Get_UserStatisticValue(nEvent,nType)
	local sBestName = ""
	
	local nBestPoint,nBestGlobalId,nBestTeam = EuropeanCupActivityNpc_Best()
	
	if nBestPoint == 0 then
		sBestName = tEuropeanCupActivityNpc_Text["NullTeam"]
	else
		sBestName = tEuropeanCupActivityNpc_Text[nBestGlobalId][nBestTeam]
	end
	
	tNpcGossip[19270]["Text139"] = string.format(tEuropeanCupActivityNpc_Text[19270]["Text139"],nBestPoint,sBestName)
	
	return Sys_ChkFullTime(tEuropeanCupActivityNpc_Constant["ActivetyTime"]) and  User_JudgeLevelAndMetempsychosis(tEuropeanCupActivityNpc_Constant["Level"],tEuropeanCupActivityNpc_Constant["Metempsychosis"])
end

tNpcGossip[19270]["OptionFunc3"] = "EuropeanCupActivityNpc_ConfirmTeam</N>19270</N>51172"
tNpcGossip[19270]["OptionFunc4"] = "EuropeanCupActivityNpc_ConfirmTeam</N>19270</N>51173"
tNpcGossip[19270]["OptionFunc5"] = "EuropeanCupActivityNpc_ConfirmTeam</N>19270</N>51174"
tNpcGossip[19270]["OptionFunc6"] = "EuropeanCupActivityNpc_ConfirmTeam</N>19270</N>51175"
tNpcGossip[19270]["OptionFunc7"] = "EuropeanCupActivityNpc_ConfirmTeam</N>19270</N>51176"
tNpcGossip[19270]["OptionFunc8"] = "EuropeanCupActivityNpc_ConfirmTeam</N>19270</N>51177"
tNpcGossip[19270]["OptionPoint20"]="3-1"
--活动时间后
tNpcGossip[19270]["Text1-4"] = {141}
tNpcGossip[19270]["Text141"] = tEuropeanCupActivityNpc_Text[19270]["Text141"]
tNpcGossip[19270]["tOption1-4"] = {18}
tNpcGossip[19270]["Option18"] = tEuropeanCupActivityNpc_Text[19270]["Option18"]


--背包空间不足
tNpcGossip[19270]["Text2-4"] = {241}
tNpcGossip[19270]["Text241"] = tEuropeanCupActivityNpc_Text[19270]["Text241"]
tNpcGossip[19270]["tOption2-4"] = {16}
tNpcGossip[19270]["Option16"] = tEuropeanCupActivityNpc_Text[19270]["Option16"]

tNpcGossip[19270]["Text3-1"] = {311,312}
tNpcGossip[19270]["Text311"] = tEuropeanCupActivityNpc_Text[19270]["Text311"]
tNpcGossip[19270]["Text312"] = tEuropeanCupActivityNpc_Text[19270]["Text312"]
tNpcGossip[19270]["tOption3-1"] = {21}
tNpcGossip[19270]["Option21"] = tEuropeanCupActivityNpc_Text[19270]["Option21"]
tNpcGossip[19270]["OptionPoint21"]="1-3"



--亨利
tNpcFace[5119] = 69
tNpcGossip[19273] = tNpcGossip[19273] or DefaultNpc:new{}
tNpcGossip[19273]["OptionHidden"] = 1

--活动时间前
tNpcGossip[19273]["Text1-1"] = {111}
tNpcGossip[19273]["Text111"] = tEuropeanCupActivityNpc_Text[19270]["Text111"]
tNpcGossip[19273]["tOption1-1"] = {1}
tNpcGossip[19273]["Option1"] = tEuropeanCupActivityNpc_Text[19270]["Option1"]
tNpcGossip[19273]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tEuropeanCupActivityNpc_Constant["BeforeTime"])
end


--活动中不满足条件
tNpcGossip[19273]["Text1-2"] = {121,122,123,124,125,126,127,128,129}
tNpcGossip[19273]["Text121"] = tEuropeanCupActivityNpc_Text[19273]["Text121"]
tNpcGossip[19273]["Text122"] = tEuropeanCupActivityNpc_Text[19270]["Text122"]
tNpcGossip[19273]["Text123"] = tEuropeanCupActivityNpc_Text[19270]["Text123"]
tNpcGossip[19273]["Text124"] = tEuropeanCupActivityNpc_Text[19270]["Text124"]
tNpcGossip[19273]["Text125"] = tEuropeanCupActivityNpc_Text[19270]["Text125"]
tNpcGossip[19273]["Text126"] = tEuropeanCupActivityNpc_Text[19270]["Text126"]
tNpcGossip[19273]["Text127"] = tEuropeanCupActivityNpc_Text[19270]["Text127"]
tNpcGossip[19273]["Text128"] = tEuropeanCupActivityNpc_Text[19270]["Text128"]
tNpcGossip[19273]["Text129"] = tEuropeanCupActivityNpc_Text[19273]["Text129"]

tNpcGossip[19273]["tOption1-2"] = {2}
tNpcGossip[19273]["Option2"] = tEuropeanCupActivityNpc_Text[19270]["Option2"]
tNpcGossip[19273]["ChkFunc1-2"] = function ()
	return Sys_ChkFullTime(tEuropeanCupActivityNpc_Constant["ActivetyTime"]) and (not User_JudgeLevelAndMetempsychosis(tEuropeanCupActivityNpc_Constant["Level"],tEuropeanCupActivityNpc_Constant["Metempsychosis"]))
end

--活动中满足条件
tNpcGossip[19273]["Text1-3"] = {131,132,133,134,135,139,136,137}
tNpcGossip[19273]["Text131"] = tEuropeanCupActivityNpc_Text[19273]["Text121"]
tNpcGossip[19273]["Text132"] = tEuropeanCupActivityNpc_Text[19270]["Text122"]
tNpcGossip[19273]["Text133"] = tEuropeanCupActivityNpc_Text[19270]["Text123"]
tNpcGossip[19273]["Text134"] = tEuropeanCupActivityNpc_Text[19270]["Text124"]
tNpcGossip[19273]["Text135"] = tEuropeanCupActivityNpc_Text[19270]["Text125"]
tNpcGossip[19273]["Text136"] = tEuropeanCupActivityNpc_Text[19270]["Text126"]
tNpcGossip[19273]["Text137"] = tEuropeanCupActivityNpc_Text[19270]["Text127"]
tNpcGossip[19273]["Text138"] = tEuropeanCupActivityNpc_Text[19270]["Text129"]
tNpcGossip[19273]["Text139"] = tEuropeanCupActivityNpc_Text[19270]["Text139"]



tNpcGossip[19273]["tOption1-3"] = {3,4,5,6,7,8,9}
tNpcGossip[19273]["Option3"] = tEuropeanCupActivityNpc_Text[19273]["Option3"]
tNpcGossip[19273]["Option4"] = tEuropeanCupActivityNpc_Text[19273]["Option4"]
tNpcGossip[19273]["Option5"] = tEuropeanCupActivityNpc_Text[19273]["Option5"]
tNpcGossip[19273]["Option6"] = tEuropeanCupActivityNpc_Text[19273]["Option6"]
tNpcGossip[19273]["Option7"] = tEuropeanCupActivityNpc_Text[19273]["Option7"]
tNpcGossip[19273]["Option8"] = tEuropeanCupActivityNpc_Text[19273]["Option8"]
tNpcGossip[19273]["Option9"] = tEuropeanCupActivityNpc_Text[19273]["Option9"]


tNpcGossip[19273]["ChkFunc1-3"] = function ()
	local nEvent = tEuropeanCupActivityNpc_Stc["EventType"]
	local nType = tEuropeanCupActivityNpc_Stc["DataType"][1]
	local nIntegral = Get_UserStatisticValue(nEvent,nType)
	local sBestName = ""
	
	local nBestPoint,nBestGlobalId,nBestTeam = EuropeanCupActivityNpc_Best()
	
	if nBestPoint == 0 then
		sBestName = tEuropeanCupActivityNpc_Text["NullTeam"]
	else
		sBestName = tEuropeanCupActivityNpc_Text[nBestGlobalId][nBestTeam]
	end
	
	tNpcGossip[19273]["Text139"] = string.format(tEuropeanCupActivityNpc_Text[19270]["Text139"],nBestPoint,sBestName)
	
	return Sys_ChkFullTime(tEuropeanCupActivityNpc_Constant["ActivetyTime"]) and  User_JudgeLevelAndMetempsychosis(tEuropeanCupActivityNpc_Constant["Level"],tEuropeanCupActivityNpc_Constant["Metempsychosis"])
end

tNpcGossip[19273]["OptionFunc3"] = "EuropeanCupActivityNpc_ConfirmTeam</N>19273</N>51172"
tNpcGossip[19273]["OptionFunc4"] = "EuropeanCupActivityNpc_ConfirmTeam</N>19273</N>51173"
tNpcGossip[19273]["OptionFunc5"] = "EuropeanCupActivityNpc_ConfirmTeam</N>19273</N>51174"
tNpcGossip[19273]["OptionFunc6"] = "EuropeanCupActivityNpc_ConfirmTeam</N>19273</N>51175"
tNpcGossip[19273]["OptionFunc7"] = "EuropeanCupActivityNpc_ConfirmTeam</N>19273</N>51176"
tNpcGossip[19273]["OptionFunc8"] = "EuropeanCupActivityNpc_ConfirmTeam</N>19273</N>51177"

--活动时间后
tNpcGossip[19273]["Text1-4"] = {141}
tNpcGossip[19273]["Text141"] = tEuropeanCupActivityNpc_Text[19270]["Text141"]
tNpcGossip[19273]["tOption1-4"] = {18}
tNpcGossip[19273]["Option18"] = tEuropeanCupActivityNpc_Text[19270]["Option18"]


--次数上限
tNpcGossip[19273]["Text3-1"] = {311}
tNpcGossip[19273]["Text311"] = tEuropeanCupActivityNpc_Text[19273]["Text311"]
tNpcGossip[19273]["tOption3-1"] = {14}
tNpcGossip[19273]["Option14"] = tEuropeanCupActivityNpc_Text[19273]["Option14"]

--金币不足
tNpcGossip[19273]["Text3-2"] = {321}
tNpcGossip[19273]["Text321"] = tEuropeanCupActivityNpc_Text[19273]["Text321"]
tNpcGossip[19273]["tOption3-2"] = {15}
tNpcGossip[19273]["Option15"] = tEuropeanCupActivityNpc_Text[19273]["Option15"]




--西罗
-- tNpcFace[5117] = 95
-- tNpcGossip[19271] = tNpcGossip[19271] or DefaultNpc:new{}
-- tNpcGossip[19271]["OptionHidden"] = 1

--活动时间前
-- tNpcGossip[19271]["Text1-1"] = {111}
-- tNpcGossip[19271]["Text111"] = tEuropeanCupActivityNpc_Text[19271]["Text111"]
-- tNpcGossip[19271]["tOption1-1"] = {1}
-- tNpcGossip[19271]["Option1"] = tEuropeanCupActivityNpc_Text[19271]["Option1"]
-- tNpcGossip[19271]["ChkFunc1-1"] = function ()
	-- return Sys_ChkFullTime(tEuropeanCupActivityNpc_Constant["BeforeTime"])
-- end

-- tNpcGossip[19271]["Text1-2"] = {121,122,123,124}
-- tNpcGossip[19271]["Text121"] = tEuropeanCupActivityNpc_Text[19271]["Text121"]
-- tNpcGossip[19271]["Text122"] = tEuropeanCupActivityNpc_Text[19271]["Text122"]
-- tNpcGossip[19271]["Text123"] = tEuropeanCupActivityNpc_Text[19271]["Text123"]
-- tNpcGossip[19271]["Text124"] = tEuropeanCupActivityNpc_Text[19271]["Text124"]

-- tNpcGossip[19271]["tOption1-2"] = {2}
-- tNpcGossip[19271]["Option2"] = tEuropeanCupActivityNpc_Text[19271]["Option2"]
-- tNpcGossip[19271]["ChkFunc1-2"] = function ()
	-- return Sys_ChkFullTime(tEuropeanCupActivityNpc_Constant["ActivetyTime"]) and (not User_JudgeLevelAndMetempsychosis(tEuropeanCupActivityNpc_Constant["Level"],tEuropeanCupActivityNpc_Constant["Metempsychosis"]))
-- end

-- tNpcGossip[19271]["Text1-3"] = {131,132,133}
-- tNpcGossip[19271]["Text131"] = tEuropeanCupActivityNpc_Text[19271]["Text131"]
-- tNpcGossip[19271]["Text132"] = tEuropeanCupActivityNpc_Text[19271]["Text132"]
-- tNpcGossip[19271]["Text133"] = tEuropeanCupActivityNpc_Text[19271]["Text133"]

-- tNpcGossip[19271]["tOption1-3"] = {3,4,5,6,7,8,9,10}
-- tNpcGossip[19271]["Option3"] = tEuropeanCupActivityNpc_Text[19271]["Option3"]
-- tNpcGossip[19271]["Option4"] = tEuropeanCupActivityNpc_Text[19271]["Option4"]
-- tNpcGossip[19271]["Option5"] = tEuropeanCupActivityNpc_Text[19271]["Option5"]
-- tNpcGossip[19271]["Option6"] = tEuropeanCupActivityNpc_Text[19271]["Option6"]
-- tNpcGossip[19271]["Option7"] = tEuropeanCupActivityNpc_Text[19271]["Option7"]
-- tNpcGossip[19271]["Option8"] = tEuropeanCupActivityNpc_Text[19271]["Option8"]
-- tNpcGossip[19271]["Option9"] = tEuropeanCupActivityNpc_Text[19271]["Option9"]
-- tNpcGossip[19271]["Option10"] = tEuropeanCupActivityNpc_Text[19271]["Option10"]

-- tNpcGossip[19271]["ChkFunc1-3"] = function ()
	-- local nEvent = tEuropeanCupActivityNpc_Stc["EventType"]
	-- local nType = tEuropeanCupActivityNpc_Stc["DataType"][1]
	-- local nIntegral = Get_UserStatisticValue(nEvent,nType)
	-- tNpcGossip[19271]["Text133"] = string.format(tEuropeanCupActivityNpc_Text[19271]["Text133"],nIntegral)
	-- return Sys_ChkFullTime(tEuropeanCupActivityNpc_Constant["ActivetyTime"]) and  User_JudgeLevelAndMetempsychosis(tEuropeanCupActivityNpc_Constant["Level"],tEuropeanCupActivityNpc_Constant["Metempsychosis"])
-- end

-- tNpcGossip[19271]["OptionFunc3"] = "EuropeanCupActivityNpc_ExchangeItem</N>19271</N>1"
-- tNpcGossip[19271]["OptionFunc4"] = "EuropeanCupActivityNpc_ExchangeItem</N>19271</N>2"
-- tNpcGossip[19271]["OptionFunc5"] = "EuropeanCupActivityNpc_ExchangeItem</N>19271</N>3"
-- tNpcGossip[19271]["OptionFunc6"] = "EuropeanCupActivityNpc_ExchangeItem</N>19271</N>4"
-- tNpcGossip[19271]["OptionFunc7"] = "EuropeanCupActivityNpc_ExchangeItem</N>19271</N>5"
-- tNpcGossip[19271]["OptionFunc8"] = "EuropeanCupActivityNpc_ExchangeItem</N>19271</N>6"
-- tNpcGossip[19271]["OptionFunc9"] = "EuropeanCupActivityNpc_ExchangeItem</N>19271</N>7"
-- tNpcGossip[19271]["OptionFunc10"] = "EuropeanCupActivityNpc_ExchangeItem</N>19271</N>8"

--活动时间后
-- tNpcGossip[19271]["Text1-4"] = {141}
-- tNpcGossip[19271]["Text141"] = tEuropeanCupActivityNpc_Text[19271]["Text141"]
-- tNpcGossip[19271]["tOption1-4"] = {17}
-- tNpcGossip[19271]["Option17"] = tEuropeanCupActivityNpc_Text[19271]["Option17"]

--皮二罗
tNpcFace[5118] = 26
tNpcGossip[19272] = tNpcGossip[19272] or DefaultNpc:new{}
tNpcGossip[19272]["OptionHidden"] = 1

--活动时间前
tNpcGossip[19272]["Text1-1"] = {111}
tNpcGossip[19272]["Text111"] = tEuropeanCupActivityNpc_Text[19272]["Text111"]
tNpcGossip[19272]["tOption1-1"] = {1}
tNpcGossip[19272]["Option1"] = tEuropeanCupActivityNpc_Text[19272]["Option1"]
tNpcGossip[19272]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tEuropeanCupActivityNpc_Constant["BeforeTime"])
end

--活动时间中
tNpcGossip[19272]["Text1-2"] = {121,122,123,124}
tNpcGossip[19272]["Text121"] = tEuropeanCupActivityNpc_Text[19272]["Text121"]
tNpcGossip[19272]["Text122"] = tEuropeanCupActivityNpc_Text[19272]["Text122"]
tNpcGossip[19272]["Text123"] = tEuropeanCupActivityNpc_Text[19272]["Text123"]
tNpcGossip[19272]["Text124"] = tEuropeanCupActivityNpc_Text[19272]["Text124"]
tNpcGossip[19272]["tOption1-2"] = {2}
tNpcGossip[19272]["Option2"] = tEuropeanCupActivityNpc_Text[19272]["Option2"]
tNpcGossip[19272]["ChkFunc1-2"] = function ()
	return Sys_ChkFullTime(tEuropeanCupActivityNpc_Constant["ActivetyTime"]) and (not User_JudgeLevelAndMetempsychosis(tEuropeanCupActivityNpc_Constant["Level"],tEuropeanCupActivityNpc_Constant["Metempsychosis"]))
end

tNpcGossip[19272]["Text1-3"] = {131,132,133}
tNpcGossip[19272]["Text131"] = tEuropeanCupActivityNpc_Text[19272]["Text131"]
tNpcGossip[19272]["Text132"] = tEuropeanCupActivityNpc_Text[19272]["Text132"]
tNpcGossip[19272]["Text133"] = tEuropeanCupActivityNpc_Text[19272]["Text133"]
tNpcGossip[19272]["tOption1-3"] = {4,5,10,3,6,7,8,9}
tNpcGossip[19272]["Option3"] = tEuropeanCupActivityNpc_Text[19272]["Option3"]
tNpcGossip[19272]["Option4"] = tEuropeanCupActivityNpc_Text[19272]["Option4"]
tNpcGossip[19272]["Option5"] = tEuropeanCupActivityNpc_Text[19272]["Option5"]
tNpcGossip[19272]["Option6"] = tEuropeanCupActivityNpc_Text[19272]["Option6"]
tNpcGossip[19272]["Option7"] = tEuropeanCupActivityNpc_Text[19272]["Option7"]
tNpcGossip[19272]["Option8"] = tEuropeanCupActivityNpc_Text[19272]["Option8"]
tNpcGossip[19272]["Option9"] = tEuropeanCupActivityNpc_Text[19272]["Option9"]
tNpcGossip[19272]["Option10"] = tEuropeanCupActivityNpc_Text[19272]["Option10"]
tNpcGossip[19272]["Option17"] = tEuropeanCupActivityNpc_Text[19272]["Option17"]


tNpcGossip[19272]["ChkFunc1-3"] = function ()
	local nEvent = tEuropeanCupActivityNpc_Stc["EventType"]
	local nType = tEuropeanCupActivityNpc_Stc["DataType"][1]
	local nIntegral = Get_UserStatisticValue(nEvent,nType)
	tNpcGossip[19272]["Text133"] = string.format(tEuropeanCupActivityNpc_Text[19272]["Text133"],nIntegral)
	return Sys_ChkFullTime(tEuropeanCupActivityNpc_Constant["ActivetyTime"]) and  User_JudgeLevelAndMetempsychosis(tEuropeanCupActivityNpc_Constant["Level"],tEuropeanCupActivityNpc_Constant["Metempsychosis"])
end

tNpcGossip[19272]["OptionFunc3"] = "EuropeanCupActivityNpc_ApplyItem</N>19272</N>1"
tNpcGossip[19272]["OptionFunc4"] = "EuropeanCupActivityNpc_ApplyItem</N>19272</N>2"
tNpcGossip[19272]["OptionFunc5"] = "EuropeanCupActivityNpc_ApplyItem</N>19272</N>3"
tNpcGossip[19272]["OptionFunc6"] = "EuropeanCupActivityNpc_ApplyItem</N>19272</N>4"
tNpcGossip[19272]["OptionFunc7"] = "EuropeanCupActivityNpc_ApplyItem</N>19272</N>5"
tNpcGossip[19272]["OptionFunc8"] = "EuropeanCupActivityNpc_ApplyItem</N>19272</N>6"
tNpcGossip[19272]["OptionFunc9"] = "EuropeanCupActivityNpc_ApplyItem</N>19272</N>7"
tNpcGossip[19272]["OptionFunc17"] = "EuropeanCupActivityNpc_ApplyItem</N>19272</N>8"
tNpcGossip[19272]["OptionFunc10"] = "EuropeanCupActivityNpc_ApplyItem</N>19272</N>9"


--活动时间后
tNpcGossip[19272]["Text1-4"] = {141}
tNpcGossip[19272]["Text141"] = tEuropeanCupActivityNpc_Text[19272]["Text141"]
tNpcGossip[19272]["tOption1-4"] = {12}
tNpcGossip[19272]["Option12"] = tEuropeanCupActivityNpc_Text[19272]["Option12"]






--------------------------------------------------物品配置
-- 3200378 绿茵荣耀礼包
tItem[3200378] = tItem[3200378] or {}
tItem[3200378]["Function"] = function(nItemId,sItemName)
	EuropeanCupActivityNpc_OpenAnniverPack(nItemId)
end

-- 3200379 欧洲杯纪念球衣礼包
tItem[3200379] = tItem[3200379] or {}
tItem[3200379]["Function"] = function(nItemId,sItemName)
	EuropeanCupActivityNpc_OpenCoatPack(nItemId)
end

-- 3200380 欧洲杯吉祥物礼包
tItem[3200380] = tItem[3200380] or {}
tItem[3200380]["Function"] = function(nItemId,sItemName)
	EuropeanCupActivityNpc_OpenCoatPack(nItemId)
end

-- tItem[3200503] = tItem[3200503] or {}
-- tItem[3200503]["Function"] = function(nItemId,sItemName)
	-- EuropeanCupActivityNpc_OpenCoatPack(nItemId)
-- end






-- 3200381 欧洲杯武器外套礼包
-- tItem[3200381] = tItem[3200381] or {}
-- tItem[3200381]["Text1-1"] = {111}
-- tItem[3200381]["Text111"] = tEuropeanCupActivityNpc_Text["SuitPack"]["Text111"]
-- tItem[3200381]["tOption1-1"] = {111,112}
-- tItem[3200381]["Option111"] = tEuropeanCupActivityNpc_Text["SuitPack"]["Option111"]
-- tItem[3200381]["OptionPoint111"] = "2-1"
-- tItem[3200381]["Option112"] = tEuropeanCupActivityNpc_Text["SuitPack"]["Option112"]
-- tItem[3200381]["OptionPoint112"] = "2-2"

-- tItem[3200381]["Text2-1"] = {211}
-- tItem[3200381]["Text211"] = tEuropeanCupActivityNpc_Text["SuitPack"]["Text211"]
-- tItem[3200381]["tOption2-1"] = {211,212}
-- tItem[3200381]["Option211"] = tEuropeanCupActivityNpc_Text["SuitPack"]["Option211"]
-- tItem[3200381]["OptionFunc211"] = "</F>EuropeanCupActivityNpc_SuitPack</N>3200381</N>360200"
-- tItem[3200381]["Option212"] = tEuropeanCupActivityNpc_Text["SuitPack"]["Option212"]

-- tItem[3200381]["Text2-2"] = {221}
-- tItem[3200381]["Text221"] = tEuropeanCupActivityNpc_Text["SuitPack"]["Text221"]
-- tItem[3200381]["tOption2-2"] = {221,222}
-- tItem[3200381]["Option221"] = tEuropeanCupActivityNpc_Text["SuitPack"]["Option221"]
-- tItem[3200381]["OptionFunc221"] = "</F>EuropeanCupActivityNpc_SuitPack</N>3200381</N>350102"
-- tItem[3200381]["Option222"] = tEuropeanCupActivityNpc_Text["SuitPack"]["Option222"]


tItem[3200499] = tItem[3200499] or {}
tItem[3200499]["Text1-1"] = {111}
tItem[3200499]["Text111"] = tEuropeanCupActivityNpc_Text["CoatPack"]["Text111"]
tItem[3200499]["tOption1-1"] = {111,112,113,114,115,116,117}
tItem[3200499]["Option111"] = tEuropeanCupActivityNpc_Text["CoatPack"]["Option111"]
tItem[3200499]["OptionPoint111"] = "2-1"
tItem[3200499]["Option112"] = tEuropeanCupActivityNpc_Text["CoatPack"]["Option112"]
tItem[3200499]["OptionPoint112"] = "2-2"
tItem[3200499]["Option113"] = tEuropeanCupActivityNpc_Text["CoatPack"]["Option113"]
tItem[3200499]["OptionPoint113"] = "2-3"
tItem[3200499]["Option114"] = tEuropeanCupActivityNpc_Text["CoatPack"]["Option114"]
tItem[3200499]["OptionPoint114"] = "2-4"
tItem[3200499]["Option115"] = tEuropeanCupActivityNpc_Text["CoatPack"]["Option115"]
tItem[3200499]["OptionPoint115"] = "2-5"
tItem[3200499]["Option116"] = tEuropeanCupActivityNpc_Text["CoatPack"]["Option116"]
tItem[3200499]["OptionPoint116"] = "2-6"
tItem[3200499]["Option117"] = tEuropeanCupActivityNpc_Text["CoatPack"]["Option117"]


tItem[3200499]["Text2-1"] = {211}
tItem[3200499]["Text211"] = tEuropeanCupActivityNpc_Text["CoatPack"]["Text211"]
tItem[3200499]["tOption2-1"] = {211,212}
tItem[3200499]["Option211"] = tEuropeanCupActivityNpc_Text["CoatPack"]["Option211"]
tItem[3200499]["OptionFunc211"] = "</F>EuropeanCupActivityNpc_SuitPack</N>3200499</N>193735"
tItem[3200499]["Option212"] = tEuropeanCupActivityNpc_Text["CoatPack"]["Option212"]

tItem[3200499]["Text2-2"] = {221}
tItem[3200499]["Text221"] = tEuropeanCupActivityNpc_Text["CoatPack"]["Text221"]
tItem[3200499]["tOption2-2"] = {221,212}
tItem[3200499]["Option221"] = tEuropeanCupActivityNpc_Text["CoatPack"]["Option211"]
tItem[3200499]["OptionFunc221"] = "</F>EuropeanCupActivityNpc_SuitPack</N>3200499</N>193745"

tItem[3200499]["Text2-3"] = {231}
tItem[3200499]["Text231"] = tEuropeanCupActivityNpc_Text["CoatPack"]["Text231"]
tItem[3200499]["tOption2-3"] = {231,212}
tItem[3200499]["Option231"] = tEuropeanCupActivityNpc_Text["CoatPack"]["Option211"]
tItem[3200499]["OptionFunc231"] = "</F>EuropeanCupActivityNpc_SuitPack</N>3200499</N>193755"

tItem[3200499]["Text2-4"] = {241}
tItem[3200499]["Text241"] = tEuropeanCupActivityNpc_Text["CoatPack"]["Text241"]
tItem[3200499]["tOption2-4"] = {241,212}
tItem[3200499]["Option241"] = tEuropeanCupActivityNpc_Text["CoatPack"]["Option211"]
tItem[3200499]["OptionFunc241"] = "</F>EuropeanCupActivityNpc_SuitPack</N>3200499</N>193765"

tItem[3200499]["Text2-5"] = {251}
tItem[3200499]["Text251"] = tEuropeanCupActivityNpc_Text["CoatPack"]["Text251"]
tItem[3200499]["tOption2-5"] = {251,212}
tItem[3200499]["Option251"] = tEuropeanCupActivityNpc_Text["CoatPack"]["Option211"]
tItem[3200499]["OptionFunc251"] = "</F>EuropeanCupActivityNpc_SuitPack</N>3200499</N>192655"

tItem[3200499]["Text2-6"] = {261}
tItem[3200499]["Text261"] = tEuropeanCupActivityNpc_Text["CoatPack"]["Text261"]
tItem[3200499]["tOption2-6"] = {261,212}
tItem[3200499]["Option261"] = tEuropeanCupActivityNpc_Text["CoatPack"]["Option211"]
tItem[3200499]["OptionFunc261"] = "</F>EuropeanCupActivityNpc_SuitPack</N>3200499</N>192665"


tItem[3200576] = tItem[3200576] or {}
tItem[3200576]["Text1-1"] = {111}
tItem[3200576]["Text111"] = tEuropeanCupActivityNpc_Text["CoatPack"]["Text111"]
tItem[3200576]["tOption1-1"] = {111,112,113,114,115,116,117}
tItem[3200576]["Option111"] = tEuropeanCupActivityNpc_Text["CoatPack"]["Option111"]
tItem[3200576]["OptionPoint111"] = "2-1"
tItem[3200576]["Option112"] = tEuropeanCupActivityNpc_Text["CoatPack"]["Option112"]
tItem[3200576]["OptionPoint112"] = "2-2"
tItem[3200576]["Option113"] = tEuropeanCupActivityNpc_Text["CoatPack"]["Option113"]
tItem[3200576]["OptionPoint113"] = "2-3"
tItem[3200576]["Option114"] = tEuropeanCupActivityNpc_Text["CoatPack"]["Option114"]
tItem[3200576]["OptionPoint114"] = "2-4"
tItem[3200576]["Option115"] = tEuropeanCupActivityNpc_Text["CoatPack"]["Option115"]
tItem[3200576]["OptionPoint115"] = "2-5"
tItem[3200576]["Option116"] = tEuropeanCupActivityNpc_Text["CoatPack"]["Option116"]
tItem[3200576]["OptionPoint116"] = "2-6"
tItem[3200576]["Option117"] = tEuropeanCupActivityNpc_Text["CoatPack"]["Option117"]


tItem[3200576]["Text2-1"] = {211}
tItem[3200576]["Text211"] = tEuropeanCupActivityNpc_Text["CoatPack"]["Text211"]
tItem[3200576]["tOption2-1"] = {211,212}
tItem[3200576]["Option211"] = tEuropeanCupActivityNpc_Text["CoatPack"]["Option211"]
tItem[3200576]["OptionFunc211"] = "</F>EuropeanCupActivityNpc_SuitPack</N>3200576</N>193735"
tItem[3200576]["Option212"] = tEuropeanCupActivityNpc_Text["CoatPack"]["Option212"]

tItem[3200576]["Text2-2"] = {221}
tItem[3200576]["Text221"] = tEuropeanCupActivityNpc_Text["CoatPack"]["Text221"]
tItem[3200576]["tOption2-2"] = {221,212}
tItem[3200576]["Option221"] = tEuropeanCupActivityNpc_Text["CoatPack"]["Option211"]
tItem[3200576]["OptionFunc221"] = "</F>EuropeanCupActivityNpc_SuitPack</N>3200576</N>193745"

tItem[3200576]["Text2-3"] = {231}
tItem[3200576]["Text231"] = tEuropeanCupActivityNpc_Text["CoatPack"]["Text231"]
tItem[3200576]["tOption2-3"] = {231,212}
tItem[3200576]["Option231"] = tEuropeanCupActivityNpc_Text["CoatPack"]["Option211"]
tItem[3200576]["OptionFunc231"] = "</F>EuropeanCupActivityNpc_SuitPack</N>3200576</N>193755"

tItem[3200576]["Text2-4"] = {241}
tItem[3200576]["Text241"] = tEuropeanCupActivityNpc_Text["CoatPack"]["Text241"]
tItem[3200576]["tOption2-4"] = {241,212}
tItem[3200576]["Option241"] = tEuropeanCupActivityNpc_Text["CoatPack"]["Option211"]
tItem[3200576]["OptionFunc241"] = "</F>EuropeanCupActivityNpc_SuitPack</N>3200576</N>193765"

tItem[3200576]["Text2-5"] = {251}
tItem[3200576]["Text251"] = tEuropeanCupActivityNpc_Text["CoatPack"]["Text251"]
tItem[3200576]["tOption2-5"] = {251,212}
tItem[3200576]["Option251"] = tEuropeanCupActivityNpc_Text["CoatPack"]["Option211"]
tItem[3200576]["OptionFunc251"] = "</F>EuropeanCupActivityNpc_SuitPack</N>3200576</N>192655"

tItem[3200576]["Text2-6"] = {261}
tItem[3200576]["Text261"] = tEuropeanCupActivityNpc_Text["CoatPack"]["Text261"]
tItem[3200576]["tOption2-6"] = {261,212}
tItem[3200576]["Option261"] = tEuropeanCupActivityNpc_Text["CoatPack"]["Option211"]
tItem[3200576]["OptionFunc261"] = "</F>EuropeanCupActivityNpc_SuitPack</N>3200576</N>192665"



