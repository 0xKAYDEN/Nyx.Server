------------------------------------------------------------------------------------
--Name:		170607[英文征服][活动脚本]制作开斋金币周活动(6.26-7.10)
--Creator: 	兰瑞妹
--Created:	2017/06/07
------------------------------------------------------------------------------------

-- 命名前缀
-- SuchGoldWeek_Activities_

-- logid 12000751 12000763

-- #stc 掩码说明 
-- #stc(161,86) 背包信
-- #stc(161,87) 记录散财童子预约时间 ==1表示预约
-- #stc(161,88) 记录赌场老板预约时间  ==1表示预约
-- #stc(161,89) 记录下注金额
-- #赌场地图
-- #stc(162,21) 记录散财童子预约时间 ==1表示预约
-- #stc(162,22) 记录赌场老板预约时间  ==1表示预约
-- #stc(162,23) 记录下注金额

-- GlobalId 51595
--动态存储表说明
----------	存储位	--存储说明--
---[51595]	--1--	散财童子领取数量限制50
			--2--	赌场老板领取数量限制50
-- 赌场地图
			--3--	散财童子领取数量限制50
			--4--	赌场老板领取数量限制50
-- datastr5 隔天清理标志

-- 常量表
local tSuchGoldWeek_Activities_Count = {}
	-- 活动时间
	tSuchGoldWeek_Activities_Count["ActivityTime"] = "2017-06-29 00:00 2017-07-13 23:59"
	-- 清理动态码时间
	tSuchGoldWeek_Activities_Count["ClearTime"] = "00:00 00:02"
	
	-- 金币随机
	tSuchGoldWeek_Activities_Count["MinMoney"] = 1000
	tSuchGoldWeek_Activities_Count["MaxMoney"] = 10000
	
	-- 领金币上限数量
	tSuchGoldWeek_Activities_Count["Limit"] = 50
	-- 动态码id
	tSuchGoldWeek_Activities_Count["GlobalId"] = 51595
	
	-- 筛子间隔时间
	tSuchGoldWeek_Activities_Count["IntervalTime"] = 3
	
	tSuchGoldWeek_Activities_Count["UserMoney"] = 2100000000
	-- 默认显示下注金额
	tSuchGoldWeek_Activities_Count["BetMoney"] = 20000
	-- 下注金额豹子玩法上限
	tSuchGoldWeek_Activities_Count["LimitBetMoney"] = 4500000
	-- 输入框长度
	tSuchGoldWeek_Activities_Count["Length"] = 15
	-- 赌成功概率表
	tSuchGoldWeek_Activities_Count["Num"] = 3
	tSuchGoldWeek_Activities_Count["MinNum"] = 4800
	tSuchGoldWeek_Activities_Count["MaxNum"] = 10000
	-- 投注提示INdex 
	tSuchGoldWeek_Activities_Count["Index"] = {"SingleDouble","SingleDouble","SmallBig","SmallBig","Leopard","Leopard"}
	
	-- 翻牌器
	tSuchGoldWeek_Activities_Count["Card"] = {}
	-- 双龙城物品
	tSuchGoldWeek_Activities_Count["Card"][16] = 3303539
	tSuchGoldWeek_Activities_Count["Card"][17] = 3303540
	tSuchGoldWeek_Activities_Count["Card"][3303539] = 16
	tSuchGoldWeek_Activities_Count["Card"][3303540] = 17
	-- 赌场地图物品
	tSuchGoldWeek_Activities_Count["Card"][27] =3303811
	tSuchGoldWeek_Activities_Count["Card"][28] =3303812
	tSuchGoldWeek_Activities_Count["Card"][3303811] = 27
	tSuchGoldWeek_Activities_Count["Card"][3303812] = 28
	
-- Log表
local tSuchGoldWeek_Activities_Log = {}
	-- 过期删除
	tSuchGoldWeek_Activities_Log["OverDue"] = "0,0,%d,1,12000751,2,0,0"
	tSuchGoldWeek_Activities_Log[20834] = "0,0,1,%d,12000751,2,0,0"
	tSuchGoldWeek_Activities_Log[21892] = "0,0,1,%d,12000763,2,0,0"

-- stc掩码
local tSuchGoldWeek_Activities_Stc = {}
	-- 记录散财童子预约时间
	tSuchGoldWeek_Activities_Stc[20835] = {}
	tSuchGoldWeek_Activities_Stc[20835]["EventType"] = 161
	tSuchGoldWeek_Activities_Stc[20835]["DataType"] = 87
	-- 记录赌场老板预约时间
	tSuchGoldWeek_Activities_Stc[20836] = {}
	tSuchGoldWeek_Activities_Stc[20836]["EventType"] = 161
	tSuchGoldWeek_Activities_Stc[20836]["DataType"] = 88
	-- 记录下注金额
	tSuchGoldWeek_Activities_Stc[20834] = {}
	tSuchGoldWeek_Activities_Stc[20834]["EventType"] = 161
	tSuchGoldWeek_Activities_Stc[20834]["DataType"] = 89
	
	-- 赌场地图
	-- 记录散财童子预约时间
	tSuchGoldWeek_Activities_Stc[21893] = {}
	tSuchGoldWeek_Activities_Stc[21893]["EventType"] = 162
	tSuchGoldWeek_Activities_Stc[21893]["DataType"] = 21
	-- 记录赌场老板预约时间
	tSuchGoldWeek_Activities_Stc[21894] = {}
	tSuchGoldWeek_Activities_Stc[21894]["EventType"] = 162
	tSuchGoldWeek_Activities_Stc[21894]["DataType"] = 22
	-- 记录下注金额
	tSuchGoldWeek_Activities_Stc[21892] = {}
	tSuchGoldWeek_Activities_Stc[21892]["EventType"] = 162
	tSuchGoldWeek_Activities_Stc[21892]["DataType"] = 23
	
-- 动态码Pos
local tSuchGoldWeek_Activities_GlobalPos = {}
	tSuchGoldWeek_Activities_GlobalPos[20835] = 1
	tSuchGoldWeek_Activities_GlobalPos[20836] = 2
	tSuchGoldWeek_Activities_GlobalPos[21893] = 3
	tSuchGoldWeek_Activities_GlobalPos[21894] = 4

---光效
local tSuchGoldWeek_Activities_Effect = {}
	-- 骰子光效
	tSuchGoldWeek_Activities_Effect[1] = {}
	tSuchGoldWeek_Activities_Effect[1]["Name"] = "touzi_1"
	tSuchGoldWeek_Activities_Effect[2] = {}
	tSuchGoldWeek_Activities_Effect[2]["Name"] = "touzi_2"
	tSuchGoldWeek_Activities_Effect[3] = {}
	tSuchGoldWeek_Activities_Effect[3]["Name"] = "touzi_3"
	tSuchGoldWeek_Activities_Effect[4] = {}
	tSuchGoldWeek_Activities_Effect[4]["Name"] = "touzi_4"
	tSuchGoldWeek_Activities_Effect[5] = {}
	tSuchGoldWeek_Activities_Effect[5]["Name"] = "touzi_5"
	tSuchGoldWeek_Activities_Effect[6] = {}
	tSuchGoldWeek_Activities_Effect[6]["Name"] = "touzi_6"
	
-- 提示返回对白
local tSuchGoldWeek_Activities_DialogIndex = {}
	tSuchGoldWeek_Activities_DialogIndex[1] = "3-1"
	tSuchGoldWeek_Activities_DialogIndex[2] = "3-1"
	tSuchGoldWeek_Activities_DialogIndex[3] = "4-1"
	tSuchGoldWeek_Activities_DialogIndex[4] = "4-1"
	tSuchGoldWeek_Activities_DialogIndex[5] = "5-1"
	tSuchGoldWeek_Activities_DialogIndex[6] = "5-1"
	
-- 各种玩法出给的金币倍数
local tSuchGoldWeek_Activities_MoneyMultiple = {}
	-- 单双玩法
	tSuchGoldWeek_Activities_MoneyMultiple[1] = 2
	tSuchGoldWeek_Activities_MoneyMultiple[2] = 2
	-- 大小玩法
	tSuchGoldWeek_Activities_MoneyMultiple[3] = 2
	tSuchGoldWeek_Activities_MoneyMultiple[4] = 2
	-- 豹子玩法
	tSuchGoldWeek_Activities_MoneyMultiple[5] = 36
	tSuchGoldWeek_Activities_MoneyMultiple[6] = 216
	
-- 各种玩法出的点数
local tSuchGoldWeek_Activities_PlayData = {}
	-- 单双玩法
	tSuchGoldWeek_Activities_PlayData[1] = {3,5,7,9,11,13,15,17}
	tSuchGoldWeek_Activities_PlayData[2] = {4,6,8,10,12,14,16,18}
	-- 大小玩法
	tSuchGoldWeek_Activities_PlayData[3] = {3,4,5,6,7,8,9,10}
	tSuchGoldWeek_Activities_PlayData[4] = {11,12,13,14,15,16,17,18}
	
-- 失败后筛子的类型
local tSuchGoldWeek_Activities_FailData = {}
	tSuchGoldWeek_Activities_FailData[1]=2
	tSuchGoldWeek_Activities_FailData[2]=1
	tSuchGoldWeek_Activities_FailData[3]=4
	tSuchGoldWeek_Activities_FailData[4]=3
	
--三个数和的点数
local tSuchGoldWeek_Activities_Number = {}
	tSuchGoldWeek_Activities_Number[3] = {} --点数和为3
	tSuchGoldWeek_Activities_Number[3][1] = {1,1,1}
	tSuchGoldWeek_Activities_Number[4] = {} --点数和为4
	tSuchGoldWeek_Activities_Number[4][1] = {1,1,2}
	tSuchGoldWeek_Activities_Number[4][2] = {1,2,1}
	tSuchGoldWeek_Activities_Number[4][3] = {2,1,1}
	tSuchGoldWeek_Activities_Number[5] = {} --点数和为5
	tSuchGoldWeek_Activities_Number[5][1] = {1,1,3}
	tSuchGoldWeek_Activities_Number[5][2] = {1,2,2}
	tSuchGoldWeek_Activities_Number[5][3] = {1,3,1}
	tSuchGoldWeek_Activities_Number[5][4] = {2,1,2}
	tSuchGoldWeek_Activities_Number[5][5] = {2,2,1}
	tSuchGoldWeek_Activities_Number[5][6] = {3,1,1}
	tSuchGoldWeek_Activities_Number[6] = {} --点数和为6
	tSuchGoldWeek_Activities_Number[6][1] = {1,1,4}
	tSuchGoldWeek_Activities_Number[6][2] = {1,2,3}
	tSuchGoldWeek_Activities_Number[6][3] = {1,3,2}
	tSuchGoldWeek_Activities_Number[6][4] = {1,4,1}
	tSuchGoldWeek_Activities_Number[6][5] = {2,1,3}
	tSuchGoldWeek_Activities_Number[6][6] = {2,2,2}
	tSuchGoldWeek_Activities_Number[6][7] = {2,3,1}
	tSuchGoldWeek_Activities_Number[6][8] = {3,1,2}
	tSuchGoldWeek_Activities_Number[6][9] = {3,2,1}
	tSuchGoldWeek_Activities_Number[6][10] = {4,1,1}
	tSuchGoldWeek_Activities_Number[7] = {} -- 点数和为7
	tSuchGoldWeek_Activities_Number[7][01] = {1,1,5}
	tSuchGoldWeek_Activities_Number[7][02] = {1,2,4}
	tSuchGoldWeek_Activities_Number[7][03] = {1,3,3}
	tSuchGoldWeek_Activities_Number[7][04] = {1,4,2}
	tSuchGoldWeek_Activities_Number[7][05] = {1,5,1}
	tSuchGoldWeek_Activities_Number[7][06] = {2,1,4}
	tSuchGoldWeek_Activities_Number[7][07] = {2,2,3}
	tSuchGoldWeek_Activities_Number[7][08] = {2,3,2}
	tSuchGoldWeek_Activities_Number[7][09] = {2,4,1}
	tSuchGoldWeek_Activities_Number[7][10] = {3,1,3}
	tSuchGoldWeek_Activities_Number[7][11] = {3,2,2}
	tSuchGoldWeek_Activities_Number[7][12] = {3,3,1}
	tSuchGoldWeek_Activities_Number[7][13] = {4,1,2}
	tSuchGoldWeek_Activities_Number[7][14] = {4,2,1}
	tSuchGoldWeek_Activities_Number[7][15] = {5,1,1}
	tSuchGoldWeek_Activities_Number[8] = {} -- 点数和为8
	tSuchGoldWeek_Activities_Number[8][01] = {1,1,6}
	tSuchGoldWeek_Activities_Number[8][02] = {1,2,5}
	tSuchGoldWeek_Activities_Number[8][03] = {1,3,4}
	tSuchGoldWeek_Activities_Number[8][04] = {1,4,3}
	tSuchGoldWeek_Activities_Number[8][05] = {1,5,2}
	tSuchGoldWeek_Activities_Number[8][06] = {1,6,1}
	tSuchGoldWeek_Activities_Number[8][07] = {2,1,5}
	tSuchGoldWeek_Activities_Number[8][08] = {2,2,4}
	tSuchGoldWeek_Activities_Number[8][09] = {2,3,3}
	tSuchGoldWeek_Activities_Number[8][10] = {2,4,2}
	tSuchGoldWeek_Activities_Number[8][11] = {2,5,1}
	tSuchGoldWeek_Activities_Number[8][12] = {3,1,4}
	tSuchGoldWeek_Activities_Number[8][13] = {3,2,3}
	tSuchGoldWeek_Activities_Number[8][14] = {3,3,2}
	tSuchGoldWeek_Activities_Number[8][15] = {3,4,1}
	tSuchGoldWeek_Activities_Number[8][16] = {4,1,3}
	tSuchGoldWeek_Activities_Number[8][17] = {4,2,2}
	tSuchGoldWeek_Activities_Number[8][18] = {4,3,1}
	tSuchGoldWeek_Activities_Number[8][19] = {5,1,2}
	tSuchGoldWeek_Activities_Number[8][20] = {5,2,1}
	tSuchGoldWeek_Activities_Number[8][21] = {6,1,1} 
	tSuchGoldWeek_Activities_Number[9] = {} --  点数和为9
	tSuchGoldWeek_Activities_Number[9][01] = {1,2,6}
	tSuchGoldWeek_Activities_Number[9][02] = {1,3,5}
	tSuchGoldWeek_Activities_Number[9][03] = {1,4,4}
	tSuchGoldWeek_Activities_Number[9][04] = {1,5,3}
	tSuchGoldWeek_Activities_Number[9][05] = {1,6,2}
	tSuchGoldWeek_Activities_Number[9][06] = {2,1,6}
	tSuchGoldWeek_Activities_Number[9][07] = {2,2,5}
	tSuchGoldWeek_Activities_Number[9][08] = {2,3,4}
	tSuchGoldWeek_Activities_Number[9][09] = {2,4,3}
	tSuchGoldWeek_Activities_Number[9][10] = {2,5,2}
	tSuchGoldWeek_Activities_Number[9][11] = {2,6,1}
	tSuchGoldWeek_Activities_Number[9][12] = {3,1,5}
	tSuchGoldWeek_Activities_Number[9][13] = {3,2,4}
	tSuchGoldWeek_Activities_Number[9][14] = {3,3,3}
	tSuchGoldWeek_Activities_Number[9][15] = {3,4,2}
	tSuchGoldWeek_Activities_Number[9][16] = {3,5,1}
	tSuchGoldWeek_Activities_Number[9][17] = {4,1,4}
	tSuchGoldWeek_Activities_Number[9][18] = {4,2,3}
	tSuchGoldWeek_Activities_Number[9][19] = {4,3,2}
	tSuchGoldWeek_Activities_Number[9][20] = {4,4,1}
	tSuchGoldWeek_Activities_Number[9][21] = {5,1,3}
	tSuchGoldWeek_Activities_Number[9][22] = {5,2,2}
	tSuchGoldWeek_Activities_Number[9][23] = {5,3,1}
	tSuchGoldWeek_Activities_Number[9][24] = {6,1,2}
	tSuchGoldWeek_Activities_Number[9][25] = {6,2,1}
	tSuchGoldWeek_Activities_Number[10] = {} -- 点数和为10
	tSuchGoldWeek_Activities_Number[10][01] = {1,3,6}
	tSuchGoldWeek_Activities_Number[10][02] = {1,4,5}
	tSuchGoldWeek_Activities_Number[10][03] = {1,5,4}
	tSuchGoldWeek_Activities_Number[10][04] = {1,6,3}
	tSuchGoldWeek_Activities_Number[10][05] = {2,2,6}
	tSuchGoldWeek_Activities_Number[10][06] = {2,3,5}
	tSuchGoldWeek_Activities_Number[10][07] = {2,4,4}
	tSuchGoldWeek_Activities_Number[10][08] = {2,5,3}
	tSuchGoldWeek_Activities_Number[10][09] = {2,6,2}
	tSuchGoldWeek_Activities_Number[10][10] = {3,1,6}
	tSuchGoldWeek_Activities_Number[10][11] = {3,2,5}
	tSuchGoldWeek_Activities_Number[10][12] = {3,3,4}
	tSuchGoldWeek_Activities_Number[10][13] = {3,4,3}
	tSuchGoldWeek_Activities_Number[10][14] = {3,5,2}
	tSuchGoldWeek_Activities_Number[10][15] = {3,6,1}
	tSuchGoldWeek_Activities_Number[10][16] = {4,1,5}
	tSuchGoldWeek_Activities_Number[10][17] = {4,2,4}
	tSuchGoldWeek_Activities_Number[10][18] = {4,3,3}
	tSuchGoldWeek_Activities_Number[10][19] = {4,4,2}
	tSuchGoldWeek_Activities_Number[10][20] = {4,5,1}
	tSuchGoldWeek_Activities_Number[10][21] = {5,1,4}
	tSuchGoldWeek_Activities_Number[10][22] = {5,2,3}
	tSuchGoldWeek_Activities_Number[10][23] = {5,3,2}
	tSuchGoldWeek_Activities_Number[10][24] = {5,4,1}
	tSuchGoldWeek_Activities_Number[10][25] = {6,1,3}
	tSuchGoldWeek_Activities_Number[10][26] = {6,2,2}
	tSuchGoldWeek_Activities_Number[10][27] = {6,3,1}
	tSuchGoldWeek_Activities_Number[11] = {} -- 点数和为11
	tSuchGoldWeek_Activities_Number[11][01] = {1,4,6}
	tSuchGoldWeek_Activities_Number[11][02] = {1,5,5}
	tSuchGoldWeek_Activities_Number[11][03] = {1,6,4}
	tSuchGoldWeek_Activities_Number[11][04] = {2,3,6}
	tSuchGoldWeek_Activities_Number[11][05] = {2,4,5}
	tSuchGoldWeek_Activities_Number[11][06] = {2,5,4}
	tSuchGoldWeek_Activities_Number[11][07] = {2,6,3}
	tSuchGoldWeek_Activities_Number[11][08] = {3,2,6}
	tSuchGoldWeek_Activities_Number[11][09] = {3,3,5}
	tSuchGoldWeek_Activities_Number[11][10] = {3,4,4}
	tSuchGoldWeek_Activities_Number[11][11] = {3,5,3}
	tSuchGoldWeek_Activities_Number[11][12] = {3,6,2}
	tSuchGoldWeek_Activities_Number[11][13] = {4,1,6}
	tSuchGoldWeek_Activities_Number[11][14] = {4,2,5}
	tSuchGoldWeek_Activities_Number[11][15] = {4,3,4}
	tSuchGoldWeek_Activities_Number[11][16] = {4,4,3}
	tSuchGoldWeek_Activities_Number[11][17] = {4,5,2}
	tSuchGoldWeek_Activities_Number[11][18] = {4,6,1}
	tSuchGoldWeek_Activities_Number[11][19] = {5,1,5}
	tSuchGoldWeek_Activities_Number[11][20] = {5,2,4}
	tSuchGoldWeek_Activities_Number[11][21] = {5,3,3}
	tSuchGoldWeek_Activities_Number[11][22] = {5,4,2}
	tSuchGoldWeek_Activities_Number[11][23] = {5,5,1}
	tSuchGoldWeek_Activities_Number[11][24] = {6,1,4}
	tSuchGoldWeek_Activities_Number[11][25] = {6,2,3}
	tSuchGoldWeek_Activities_Number[11][26] = {6,3,2}
	tSuchGoldWeek_Activities_Number[11][27] = {6,4,1}
	tSuchGoldWeek_Activities_Number[12] = {} -- 点数和为12
	tSuchGoldWeek_Activities_Number[12][01] = {1,5,6}
	tSuchGoldWeek_Activities_Number[12][02] = {1,6,5}
	tSuchGoldWeek_Activities_Number[12][03] = {2,4,6}
	tSuchGoldWeek_Activities_Number[12][04] = {2,5,5}
	tSuchGoldWeek_Activities_Number[12][05] = {2,6,4}
	tSuchGoldWeek_Activities_Number[12][06] = {3,3,6}
	tSuchGoldWeek_Activities_Number[12][07] = {3,4,5}
	tSuchGoldWeek_Activities_Number[12][08] = {3,5,4}
	tSuchGoldWeek_Activities_Number[12][09] = {3,6,3}
	tSuchGoldWeek_Activities_Number[12][10] = {4,2,6}
	tSuchGoldWeek_Activities_Number[12][11] = {4,3,5}
	tSuchGoldWeek_Activities_Number[12][12] = {4,4,4}
	tSuchGoldWeek_Activities_Number[12][13] = {4,5,3}
	tSuchGoldWeek_Activities_Number[12][14] = {4,6,2}
	tSuchGoldWeek_Activities_Number[12][15] = {5,1,6}
	tSuchGoldWeek_Activities_Number[12][16] = {5,2,5}
	tSuchGoldWeek_Activities_Number[12][17] = {5,3,4}
	tSuchGoldWeek_Activities_Number[12][18] = {5,4,3}
	tSuchGoldWeek_Activities_Number[12][19] = {5,5,2}
	tSuchGoldWeek_Activities_Number[12][20] = {5,6,1}
	tSuchGoldWeek_Activities_Number[12][21] = {6,1,5}
	tSuchGoldWeek_Activities_Number[12][22] = {6,2,4}
	tSuchGoldWeek_Activities_Number[12][23] = {6,3,3}
	tSuchGoldWeek_Activities_Number[12][24] = {6,4,2}
	tSuchGoldWeek_Activities_Number[12][25] = {6,5,1}
	tSuchGoldWeek_Activities_Number[13] = {} -- 点数和为13
	tSuchGoldWeek_Activities_Number[13][01] = {1,6,6}
	tSuchGoldWeek_Activities_Number[13][02] = {2,5,6}
	tSuchGoldWeek_Activities_Number[13][03] = {2,6,5}
	tSuchGoldWeek_Activities_Number[13][04] = {3,4,6}
	tSuchGoldWeek_Activities_Number[13][05] = {3,5,5}
	tSuchGoldWeek_Activities_Number[13][06] = {3,6,4}
	tSuchGoldWeek_Activities_Number[13][07] = {4,3,6}
	tSuchGoldWeek_Activities_Number[13][08] = {4,4,5}
	tSuchGoldWeek_Activities_Number[13][09] = {4,5,4}
	tSuchGoldWeek_Activities_Number[13][10] = {4,6,3}
	tSuchGoldWeek_Activities_Number[13][11] = {5,2,6}
	tSuchGoldWeek_Activities_Number[13][12] = {5,3,5}
	tSuchGoldWeek_Activities_Number[13][13] = {5,4,4}
	tSuchGoldWeek_Activities_Number[13][14] = {5,5,3}
	tSuchGoldWeek_Activities_Number[13][15] = {5,6,2}
	tSuchGoldWeek_Activities_Number[13][16] = {6,1,6}
	tSuchGoldWeek_Activities_Number[13][17] = {6,2,5}
	tSuchGoldWeek_Activities_Number[13][18] = {6,3,4}
	tSuchGoldWeek_Activities_Number[13][19] = {6,4,3}
	tSuchGoldWeek_Activities_Number[13][20] = {6,5,2}
	tSuchGoldWeek_Activities_Number[13][21] = {6,6,1}
	tSuchGoldWeek_Activities_Number[14] = {} -- 点数和为14
	tSuchGoldWeek_Activities_Number[14][01] = {2,6,6}
	tSuchGoldWeek_Activities_Number[14][02] = {3,5,6}
	tSuchGoldWeek_Activities_Number[14][03] = {3,6,5}
	tSuchGoldWeek_Activities_Number[14][04] = {4,4,6}
	tSuchGoldWeek_Activities_Number[14][05] = {4,5,5}
	tSuchGoldWeek_Activities_Number[14][06] = {4,6,4}
	tSuchGoldWeek_Activities_Number[14][07] = {5,3,6}
	tSuchGoldWeek_Activities_Number[14][08] = {5,4,5}
	tSuchGoldWeek_Activities_Number[14][09] = {5,5,4}
	tSuchGoldWeek_Activities_Number[14][10] = {5,6,3}
	tSuchGoldWeek_Activities_Number[14][11] = {6,2,6}
	tSuchGoldWeek_Activities_Number[14][12] = {6,3,5}
	tSuchGoldWeek_Activities_Number[14][13] = {6,4,4}
	tSuchGoldWeek_Activities_Number[14][14] = {6,5,3}
	tSuchGoldWeek_Activities_Number[14][15] = {6,6,2}
	tSuchGoldWeek_Activities_Number[15] = {} -- 点数和为15
	tSuchGoldWeek_Activities_Number[15][01] = {3,6,6}
	tSuchGoldWeek_Activities_Number[15][02] = {4,5,6}
	tSuchGoldWeek_Activities_Number[15][03] = {4,6,5}
	tSuchGoldWeek_Activities_Number[15][04] = {5,4,6}
	tSuchGoldWeek_Activities_Number[15][05] = {5,5,5}
	tSuchGoldWeek_Activities_Number[15][06] = {5,6,4}
	tSuchGoldWeek_Activities_Number[15][07] = {6,3,6}
	tSuchGoldWeek_Activities_Number[15][08] = {6,4,5}
	tSuchGoldWeek_Activities_Number[15][09] = {6,5,4}
	tSuchGoldWeek_Activities_Number[15][10] = {6,6,3}
	tSuchGoldWeek_Activities_Number[16] = {} -- 点数和为16
	tSuchGoldWeek_Activities_Number[16][01] ={4,6,6}
	tSuchGoldWeek_Activities_Number[16][02] ={5,5,6}
	tSuchGoldWeek_Activities_Number[16][03] ={5,6,5}
	tSuchGoldWeek_Activities_Number[16][04] ={6,4,6}
	tSuchGoldWeek_Activities_Number[16][05] ={6,5,5}
	tSuchGoldWeek_Activities_Number[16][06] ={6,6,4}
	tSuchGoldWeek_Activities_Number[17] = {} -- 点数和为17
	tSuchGoldWeek_Activities_Number[17][01] ={5,6,6}
	tSuchGoldWeek_Activities_Number[17][02] ={6,5,6}
	tSuchGoldWeek_Activities_Number[17][03] ={6,6,5}
	tSuchGoldWeek_Activities_Number[18] = {} -- 点数和为18
	tSuchGoldWeek_Activities_Number[18][1] = {6,6,6}
	
--- 玩家数据存表
local tSuchGoldWeek_Activities_Data = {}
	-- 使用物品时间间隔
	tSuchGoldWeek_Activities_Data["Time"] = {}
	-- 红包次数
	tSuchGoldWeek_Activities_Data["RedPacket"] = {}
	-- 打赌时间限制
	tSuchGoldWeek_Activities_Data["LimitTime"] = {}
	
-- 奖励表
local tSuchGoldWeek_Activities_Reward = {}
	-- 鸿运红包 3303529
	tSuchGoldWeek_Activities_Reward[3303529] = {}
	tSuchGoldWeek_Activities_Reward[3303529]["LogId"] = 12000751
	tSuchGoldWeek_Activities_Reward[3303529]["EmoneyLog"] = "350	20622	0	0	1	"
	tSuchGoldWeek_Activities_Reward[3303529]["DeleteItem"] = {}
	tSuchGoldWeek_Activities_Reward[3303529]["DeleteItem"][1] = {}
	tSuchGoldWeek_Activities_Reward[3303529]["DeleteItem"][1]["Id"] = 3303529
	tSuchGoldWeek_Activities_Reward[3303529]["RewardMoney"] = {}
	tSuchGoldWeek_Activities_Reward[3303529]["RewardMoney"]["Value"] = 0
	tSuchGoldWeek_Activities_Reward[3303529]["RewardEffect"] = {}
	tSuchGoldWeek_Activities_Reward[3303529]["RewardEffect"]["Effect"] = "angelwing"
	tSuchGoldWeek_Activities_Reward[3303529]["Talk"] = tSuchGoldWeek_Activities_Text[3303529]["Reward"]
	tSuchGoldWeek_Activities_Reward[3303529]["Money"] = tSuchGoldWeek_Activities_Text[3303529]["Money"]
	
	-- 金币大礼袋 3303530
	tSuchGoldWeek_Activities_Reward[3303530] = {}
	tSuchGoldWeek_Activities_Reward[3303530]["LogId"] = 12000751
	tSuchGoldWeek_Activities_Reward[3303530]["EmoneyLog"] = "350	20623	0	0	1	"
	tSuchGoldWeek_Activities_Reward[3303530]["DeleteItem"] = {}
	tSuchGoldWeek_Activities_Reward[3303530]["DeleteItem"][1] = {}
	tSuchGoldWeek_Activities_Reward[3303530]["DeleteItem"][1]["Id"] = 3303530
	tSuchGoldWeek_Activities_Reward[3303530]["RewardMoney"] = {}
	tSuchGoldWeek_Activities_Reward[3303530]["RewardMoney"]["Value"] = 0
	tSuchGoldWeek_Activities_Reward[3303530]["RewardEffect"] = {}
	tSuchGoldWeek_Activities_Reward[3303530]["RewardEffect"]["Effect"] = "angelwing"
	tSuchGoldWeek_Activities_Reward[3303530]["Talk"] = tSuchGoldWeek_Activities_Text[3303530]["Reward"]
	tSuchGoldWeek_Activities_Reward[3303530]["Money"] = tSuchGoldWeek_Activities_Text[3303530]["Money"]
	
	-- 赌场地图
	-- 鸿运红包 3303626
	tSuchGoldWeek_Activities_Reward[3303626] = {}
	tSuchGoldWeek_Activities_Reward[3303626]["LogId"] = 12000763
	tSuchGoldWeek_Activities_Reward[3303626]["EmoneyLog"] = "350	20634	0	0	1	"
	tSuchGoldWeek_Activities_Reward[3303626]["DeleteItem"] = {}
	tSuchGoldWeek_Activities_Reward[3303626]["DeleteItem"][1] = {}
	tSuchGoldWeek_Activities_Reward[3303626]["DeleteItem"][1]["Id"] = 3303626
	tSuchGoldWeek_Activities_Reward[3303626]["RewardMoney"] = {}
	tSuchGoldWeek_Activities_Reward[3303626]["RewardMoney"]["Value"] = 0
	tSuchGoldWeek_Activities_Reward[3303626]["RewardEffect"] = {}
	tSuchGoldWeek_Activities_Reward[3303626]["RewardEffect"]["Effect"] = "angelwing"
	tSuchGoldWeek_Activities_Reward[3303626]["Talk"] = tSuchGoldWeek_Activities_Text[3303626]["Reward"]
	tSuchGoldWeek_Activities_Reward[3303626]["Money"] = tSuchGoldWeek_Activities_Text[3303626]["Money"]
	-- 金币大礼袋 3303627
	tSuchGoldWeek_Activities_Reward[3303627] = {}
	tSuchGoldWeek_Activities_Reward[3303627]["LogId"] = 12000763
	tSuchGoldWeek_Activities_Reward[3303627]["EmoneyLog"] = "350	20635	0	0	1	"
	tSuchGoldWeek_Activities_Reward[3303627]["DeleteItem"] = {}
	tSuchGoldWeek_Activities_Reward[3303627]["DeleteItem"][1] = {}
	tSuchGoldWeek_Activities_Reward[3303627]["DeleteItem"][1]["Id"] = 3303627
	tSuchGoldWeek_Activities_Reward[3303627]["RewardMoney"] = {}
	tSuchGoldWeek_Activities_Reward[3303627]["RewardMoney"]["Value"] = 0
	tSuchGoldWeek_Activities_Reward[3303627]["RewardEffect"] = {}
	tSuchGoldWeek_Activities_Reward[3303627]["RewardEffect"]["Effect"] = "angelwing"
	tSuchGoldWeek_Activities_Reward[3303627]["Talk"] = tSuchGoldWeek_Activities_Text[3303627]["Reward"]
	tSuchGoldWeek_Activities_Reward[3303627]["Money"] = tSuchGoldWeek_Activities_Text[3303627]["Money"]
	
	-- 押注成功
	tSuchGoldWeek_Activities_Reward[20834] = {}
	tSuchGoldWeek_Activities_Reward[20834]["LogId"] = 12000751
	tSuchGoldWeek_Activities_Reward[20834]["LogStep"] = "1[4]"
	tSuchGoldWeek_Activities_Reward[20834]["EmoneyLog"] = "350	20624	0	0	1	"
	tSuchGoldWeek_Activities_Reward[20834]["RewardNoNeedTip"] = 1
	tSuchGoldWeek_Activities_Reward[20834]["RewardMoney"] = {}
	tSuchGoldWeek_Activities_Reward[20834]["RewardMoney"]["Value"] = 0
	tSuchGoldWeek_Activities_Reward[20834]["RewardEffect"] = {}
	tSuchGoldWeek_Activities_Reward[20834]["RewardEffect"]["Effect"] = "angelwing"
	-- 赌场地图
	-- 押注成功
	tSuchGoldWeek_Activities_Reward[21892] = {}
	tSuchGoldWeek_Activities_Reward[21892]["LogId"] = 12000763
	tSuchGoldWeek_Activities_Reward[21892]["LogStep"] = "1[4]"
	tSuchGoldWeek_Activities_Reward[21892]["EmoneyLog"] = "350	20636	0	0	1	"
	tSuchGoldWeek_Activities_Reward[21892]["RewardNoNeedTip"] = 1
	tSuchGoldWeek_Activities_Reward[21892]["RewardMoney"] = {}
	tSuchGoldWeek_Activities_Reward[21892]["RewardMoney"]["Value"] = 0
	tSuchGoldWeek_Activities_Reward[21892]["RewardEffect"] = {}
	tSuchGoldWeek_Activities_Reward[21892]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 鸿运红包
	tSuchGoldWeek_Activities_Reward[20835] = {}
	tSuchGoldWeek_Activities_Reward[20835]["LogId"] = 12000751
	tSuchGoldWeek_Activities_Reward[20835]["LogStep"] = "1[6]"
	tSuchGoldWeek_Activities_Reward[20835]["RewardItem"] = {}
	tSuchGoldWeek_Activities_Reward[20835]["RewardItem"][1] = {}
	tSuchGoldWeek_Activities_Reward[20835]["RewardItem"][1]["Id"] = 3303529
	tSuchGoldWeek_Activities_Reward[20835]["RewardItem"][1]["Attr"] = "0 1"
	tSuchGoldWeek_Activities_Reward[20835]["RewardEffect"] = {}
	tSuchGoldWeek_Activities_Reward[20835]["RewardEffect"]["Effect"] = "angelwing"
	tSuchGoldWeek_Activities_Reward[20835]["Talk"] = tSuchGoldWeek_Activities_Text[20835]["Reward"]
	-- 金币大礼袋
	tSuchGoldWeek_Activities_Reward[20836] = {}
	tSuchGoldWeek_Activities_Reward[20836]["LogId"] = 12000751
	tSuchGoldWeek_Activities_Reward[20836]["LogStep"] = "1[6]"
	tSuchGoldWeek_Activities_Reward[20836]["RewardItem"] = {}
	tSuchGoldWeek_Activities_Reward[20836]["RewardItem"][1] = {}
	tSuchGoldWeek_Activities_Reward[20836]["RewardItem"][1]["Id"] = 3303530
	tSuchGoldWeek_Activities_Reward[20836]["RewardItem"][1]["Attr"] = "0 1"
	tSuchGoldWeek_Activities_Reward[20836]["RewardEffect"] = {}
	tSuchGoldWeek_Activities_Reward[20836]["RewardEffect"]["Effect"] = "angelwing"
	tSuchGoldWeek_Activities_Reward[20836]["Talk"] = tSuchGoldWeek_Activities_Text[20836]["Reward"]
	
	-- 赌场地图
	-- 鸿运红包
	tSuchGoldWeek_Activities_Reward[21893] = {}
	tSuchGoldWeek_Activities_Reward[21893]["LogId"] = 12000763
	tSuchGoldWeek_Activities_Reward[21893]["LogStep"] = "1[6]"
	tSuchGoldWeek_Activities_Reward[21893]["RewardItem"] = {}
	tSuchGoldWeek_Activities_Reward[21893]["RewardItem"][1] = {}
	tSuchGoldWeek_Activities_Reward[21893]["RewardItem"][1]["Id"] = 3303626
	tSuchGoldWeek_Activities_Reward[21893]["RewardItem"][1]["Attr"] = "0 1"
	tSuchGoldWeek_Activities_Reward[21893]["RewardEffect"] = {}
	tSuchGoldWeek_Activities_Reward[21893]["RewardEffect"]["Effect"] = "angelwing"
	tSuchGoldWeek_Activities_Reward[21893]["Talk"] = tSuchGoldWeek_Activities_Text[20835]["Reward"]
	-- 金币大礼袋
	tSuchGoldWeek_Activities_Reward[21894] = {}
	tSuchGoldWeek_Activities_Reward[21894]["LogId"] = 12000763
	tSuchGoldWeek_Activities_Reward[21894]["LogStep"] = "1[6]"
	tSuchGoldWeek_Activities_Reward[21894]["RewardItem"] = {}
	tSuchGoldWeek_Activities_Reward[21894]["RewardItem"][1] = {}
	tSuchGoldWeek_Activities_Reward[21894]["RewardItem"][1]["Id"] = 3303627
	tSuchGoldWeek_Activities_Reward[21894]["RewardItem"][1]["Attr"] = "0 1"
	tSuchGoldWeek_Activities_Reward[21894]["RewardEffect"] = {}
	tSuchGoldWeek_Activities_Reward[21894]["RewardEffect"]["Effect"] = "angelwing"
	tSuchGoldWeek_Activities_Reward[21894]["Talk"] = tSuchGoldWeek_Activities_Text[20836]["Reward"]
	
-- 骰子
local tSuchGoldWeek_Activities_DiceRandom = {}
	-- 3303536,'1级金币骰子'
	tSuchGoldWeek_Activities_DiceRandom[3303536] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303536]["ItemChanceSum"] = 10000
	tSuchGoldWeek_Activities_DiceRandom[3303536]["Limit"] = 600000
	tSuchGoldWeek_Activities_DiceRandom[3303536]["EmoneyLog"] = "350	20625	0	0	1	"
	-- 1	16.60%
	tSuchGoldWeek_Activities_DiceRandom[3303536][1] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303536][1]["RandomItemChanceType"] = 2
	tSuchGoldWeek_Activities_DiceRandom[3303536][1]["ItemChance"] = 1660
	tSuchGoldWeek_Activities_DiceRandom[3303536][1]["RewardMoney"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303536][1]["RewardMoney"]["Value"] = 100000
	tSuchGoldWeek_Activities_DiceRandom[3303536][1]["EffectIndex"] = 1
	tSuchGoldWeek_Activities_DiceRandom[3303536][1]["Log"] = "0,0,3303536,1,12000751,1[3],1,100000"
	tSuchGoldWeek_Activities_DiceRandom[3303536][1]["RewardEffect"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303536][1]["RewardEffect"]["Effect"] = "angelwing"
	-- tSuchGoldWeek_Activities_DiceRandom[3303536][1]["Talk"] = tSuchGoldWeek_Activities_Text[3303536][1]
	-- 2	17.60%
	tSuchGoldWeek_Activities_DiceRandom[3303536][2] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303536][2]["RandomItemChanceType"] = 2
	tSuchGoldWeek_Activities_DiceRandom[3303536][2]["ItemChance"] = 1760
	tSuchGoldWeek_Activities_DiceRandom[3303536][2]["RewardMoney"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303536][2]["RewardMoney"]["Value"] = 200000
	tSuchGoldWeek_Activities_DiceRandom[3303536][2]["EffectIndex"] = 2
	tSuchGoldWeek_Activities_DiceRandom[3303536][2]["Log"] = "0,0,3303536,1,12000751,1[3],1,200000"
	tSuchGoldWeek_Activities_DiceRandom[3303536][2]["RewardEffect"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303536][2]["RewardEffect"]["Effect"] = "angelwing"
	-- tSuchGoldWeek_Activities_DiceRandom[3303536][2]["Talk"] = tSuchGoldWeek_Activities_Text[3303536][2]
	-- 3	18.00%
	tSuchGoldWeek_Activities_DiceRandom[3303536][3] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303536][3]["RandomItemChanceType"] = 2
	tSuchGoldWeek_Activities_DiceRandom[3303536][3]["ItemChance"] = 1800
	tSuchGoldWeek_Activities_DiceRandom[3303536][3]["RewardMoney"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303536][3]["RewardMoney"]["Value"] = 300000
	tSuchGoldWeek_Activities_DiceRandom[3303536][3]["EffectIndex"] = 3
	tSuchGoldWeek_Activities_DiceRandom[3303536][3]["Log"] = "0,0,3303536,1,12000751,1[3],1,300000"
	tSuchGoldWeek_Activities_DiceRandom[3303536][3]["RewardEffect"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303536][3]["RewardEffect"]["Effect"] = "angelwing"
	-- tSuchGoldWeek_Activities_DiceRandom[3303536][3]["Talk"] = tSuchGoldWeek_Activities_Text[3303536][3]
	-- 4	17.60%
	tSuchGoldWeek_Activities_DiceRandom[3303536][4] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303536][4]["RandomItemChanceType"] = 2
	tSuchGoldWeek_Activities_DiceRandom[3303536][4]["ItemChance"] = 1760
	tSuchGoldWeek_Activities_DiceRandom[3303536][4]["RewardMoney"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303536][4]["RewardMoney"]["Value"] = 400000
	tSuchGoldWeek_Activities_DiceRandom[3303536][4]["EffectIndex"] = 4
	tSuchGoldWeek_Activities_DiceRandom[3303536][4]["Log"] = "0,0,3303536,1,12000751,1[3],1,400000"
	tSuchGoldWeek_Activities_DiceRandom[3303536][4]["RewardEffect"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303536][4]["RewardEffect"]["Effect"] = "angelwing"
	-- tSuchGoldWeek_Activities_DiceRandom[3303536][4]["Talk"] = tSuchGoldWeek_Activities_Text[3303536][4]
	-- 5	15.60%
	tSuchGoldWeek_Activities_DiceRandom[3303536][5] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303536][5]["RandomItemChanceType"] = 2
	tSuchGoldWeek_Activities_DiceRandom[3303536][5]["ItemChance"] = 1560
	tSuchGoldWeek_Activities_DiceRandom[3303536][5]["RewardMoney"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303536][5]["RewardMoney"]["Value"] = 500000
	tSuchGoldWeek_Activities_DiceRandom[3303536][5]["EffectIndex"] = 5
	tSuchGoldWeek_Activities_DiceRandom[3303536][5]["Log"] = "0,0,3303536,1,12000751,1[3],1,500000"
	tSuchGoldWeek_Activities_DiceRandom[3303536][5]["RewardEffect"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303536][5]["RewardEffect"]["Effect"] = "angelwing"
	-- tSuchGoldWeek_Activities_DiceRandom[3303536][5]["Talk"] = tSuchGoldWeek_Activities_Text[3303536][5]
	-- 6	14.60%
	tSuchGoldWeek_Activities_DiceRandom[3303536][6] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303536][6]["RandomItemChanceType"] = 2
	tSuchGoldWeek_Activities_DiceRandom[3303536][6]["ItemChance"] = 1460
	tSuchGoldWeek_Activities_DiceRandom[3303536][6]["RewardMoney"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303536][6]["RewardMoney"]["Value"] = 600000
	tSuchGoldWeek_Activities_DiceRandom[3303536][6]["EffectIndex"] = 6
	tSuchGoldWeek_Activities_DiceRandom[3303536][6]["Log"] = "0,0,3303536,1,12000751,1[3],1,600000"
	tSuchGoldWeek_Activities_DiceRandom[3303536][6]["RewardEffect"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303536][6]["RewardEffect"]["Effect"] = "angelwing"
	-- tSuchGoldWeek_Activities_DiceRandom[3303536][6]["Talk"] = tSuchGoldWeek_Activities_Text[3303536][6]
	-- 3303537,'2级金币骰子'
	tSuchGoldWeek_Activities_DiceRandom[3303537] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303537]["ItemChanceSum"] = 10000
	tSuchGoldWeek_Activities_DiceRandom[3303537]["Limit"] = 6000000
	tSuchGoldWeek_Activities_DiceRandom[3303537]["EmoneyLog"] = "350	20626	0	0	1	"
	-- 1	16.60%
	tSuchGoldWeek_Activities_DiceRandom[3303537][1] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303537][1]["RandomItemChanceType"] = 2
	tSuchGoldWeek_Activities_DiceRandom[3303537][1]["ItemChance"] = 1660
	tSuchGoldWeek_Activities_DiceRandom[3303537][1]["RewardMoney"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303537][1]["RewardMoney"]["Value"] = 1000000
	tSuchGoldWeek_Activities_DiceRandom[3303537][1]["EffectIndex"] = 1
	tSuchGoldWeek_Activities_DiceRandom[3303537][1]["Log"] = "0,0,3303537,1,12000751,1[3],1,1000000"
	tSuchGoldWeek_Activities_DiceRandom[3303537][1]["RewardEffect"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303537][1]["RewardEffect"]["Effect"] = "angelwing"
	-- tSuchGoldWeek_Activities_DiceRandom[3303537][1]["Talk"] = tSuchGoldWeek_Activities_Text[3303537][1]
	-- 2	17.60%
	tSuchGoldWeek_Activities_DiceRandom[3303537][2] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303537][2]["RandomItemChanceType"] = 2
	tSuchGoldWeek_Activities_DiceRandom[3303537][2]["ItemChance"] = 1760
	tSuchGoldWeek_Activities_DiceRandom[3303537][2]["RewardMoney"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303537][2]["RewardMoney"]["Value"] = 2000000
	tSuchGoldWeek_Activities_DiceRandom[3303537][2]["EffectIndex"] = 2
	tSuchGoldWeek_Activities_DiceRandom[3303537][2]["Log"] = "0,0,3303537,1,12000751,1[3],1,2000000"
	tSuchGoldWeek_Activities_DiceRandom[3303537][2]["RewardEffect"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303537][2]["RewardEffect"]["Effect"] = "angelwing"
	-- tSuchGoldWeek_Activities_DiceRandom[3303537][2]["Talk"] = tSuchGoldWeek_Activities_Text[3303537][2]
	-- 3	18.00%
	tSuchGoldWeek_Activities_DiceRandom[3303537][3] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303537][3]["RandomItemChanceType"] = 2
	tSuchGoldWeek_Activities_DiceRandom[3303537][3]["ItemChance"] = 1800
	tSuchGoldWeek_Activities_DiceRandom[3303537][3]["RewardMoney"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303537][3]["RewardMoney"]["Value"] = 3000000
	tSuchGoldWeek_Activities_DiceRandom[3303537][3]["EffectIndex"] = 3
	tSuchGoldWeek_Activities_DiceRandom[3303537][3]["Log"] = "0,0,3303537,1,12000751,1[3],1,3000000"
	tSuchGoldWeek_Activities_DiceRandom[3303537][3]["RewardEffect"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303537][3]["RewardEffect"]["Effect"] = "angelwing"
	-- tSuchGoldWeek_Activities_DiceRandom[3303537][3]["Talk"] = tSuchGoldWeek_Activities_Text[3303537][3]
	-- 4	17.60%
	tSuchGoldWeek_Activities_DiceRandom[3303537][4] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303537][4]["RandomItemChanceType"] = 2
	tSuchGoldWeek_Activities_DiceRandom[3303537][4]["ItemChance"] = 1760
	tSuchGoldWeek_Activities_DiceRandom[3303537][4]["RewardMoney"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303537][4]["RewardMoney"]["Value"] = 4000000
	tSuchGoldWeek_Activities_DiceRandom[3303537][4]["EffectIndex"] = 4
	tSuchGoldWeek_Activities_DiceRandom[3303537][4]["Log"] = "0,0,3303537,1,12000751,1[3],1,4000000"
	tSuchGoldWeek_Activities_DiceRandom[3303537][4]["RewardEffect"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303537][4]["RewardEffect"]["Effect"] = "angelwing"
	-- tSuchGoldWeek_Activities_DiceRandom[3303537][4]["Talk"] = tSuchGoldWeek_Activities_Text[3303537][4]
	-- 5	15.60%
	tSuchGoldWeek_Activities_DiceRandom[3303537][5] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303537][5]["RandomItemChanceType"] = 2
	tSuchGoldWeek_Activities_DiceRandom[3303537][5]["ItemChance"] = 1560
	tSuchGoldWeek_Activities_DiceRandom[3303537][5]["RewardMoney"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303537][5]["RewardMoney"]["Value"] = 5000000
	tSuchGoldWeek_Activities_DiceRandom[3303537][5]["EffectIndex"] = 5
	tSuchGoldWeek_Activities_DiceRandom[3303537][5]["Log"] = "0,0,3303537,1,12000751,1[3],1,5000000"
	tSuchGoldWeek_Activities_DiceRandom[3303537][5]["RewardEffect"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303537][5]["RewardEffect"]["Effect"] = "angelwing"
	-- tSuchGoldWeek_Activities_DiceRandom[3303537][5]["Talk"] = tSuchGoldWeek_Activities_Text[3303537][5]
	-- 6	14.60%
	tSuchGoldWeek_Activities_DiceRandom[3303537][6] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303537][6]["RandomItemChanceType"] = 2
	tSuchGoldWeek_Activities_DiceRandom[3303537][6]["ItemChance"] = 1460
	tSuchGoldWeek_Activities_DiceRandom[3303537][6]["RewardMoney"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303537][6]["RewardMoney"]["Value"] = 6000000
	tSuchGoldWeek_Activities_DiceRandom[3303537][6]["EffectIndex"] = 6
	tSuchGoldWeek_Activities_DiceRandom[3303537][6]["Log"] = "0,0,3303537,1,12000751,1[3],1,6000000"
	tSuchGoldWeek_Activities_DiceRandom[3303537][6]["RewardEffect"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303537][6]["RewardEffect"]["Effect"] = "angelwing"
	-- tSuchGoldWeek_Activities_DiceRandom[3303537][6]["Talk"] = tSuchGoldWeek_Activities_Text[3303537][6]
	-- 3303538,'3级金币骰子'
	tSuchGoldWeek_Activities_DiceRandom[3303538] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303538]["ItemChanceSum"] = 10000
	tSuchGoldWeek_Activities_DiceRandom[3303538]["Limit"] = 60000000
	tSuchGoldWeek_Activities_DiceRandom[3303538]["EmoneyLog"] = "350	20627	0	0	1	"
	-- 1	16.60%
	tSuchGoldWeek_Activities_DiceRandom[3303538][1] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303538][1]["RandomItemChanceType"] = 2
	tSuchGoldWeek_Activities_DiceRandom[3303538][1]["ItemChance"] = 1660
	tSuchGoldWeek_Activities_DiceRandom[3303538][1]["RewardMoney"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303538][1]["RewardMoney"]["Value"] = 10000000
	tSuchGoldWeek_Activities_DiceRandom[3303538][1]["EffectIndex"] = 1
	tSuchGoldWeek_Activities_DiceRandom[3303538][1]["Log"] = "0,0,3303538,1,12000751,1[3],1,10000000"
	tSuchGoldWeek_Activities_DiceRandom[3303538][1]["RewardEffect"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303538][1]["RewardEffect"]["Effect"] = "angelwing"
	-- tSuchGoldWeek_Activities_DiceRandom[3303538][1]["Talk"] = tSuchGoldWeek_Activities_Text[3303538][1]
	-- 2	17.60%
	tSuchGoldWeek_Activities_DiceRandom[3303538][2] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303538][2]["RandomItemChanceType"] = 2
	tSuchGoldWeek_Activities_DiceRandom[3303538][2]["ItemChance"] = 1760
	tSuchGoldWeek_Activities_DiceRandom[3303538][2]["RewardMoney"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303538][2]["RewardMoney"]["Value"] = 20000000
	tSuchGoldWeek_Activities_DiceRandom[3303538][2]["EffectIndex"] = 2
	tSuchGoldWeek_Activities_DiceRandom[3303538][2]["Log"] = "0,0,3303538,1,12000751,1[3],1,20000000"
	tSuchGoldWeek_Activities_DiceRandom[3303538][2]["RewardEffect"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303538][2]["RewardEffect"]["Effect"] = "angelwing"
	-- tSuchGoldWeek_Activities_DiceRandom[3303538][2]["Talk"] = tSuchGoldWeek_Activities_Text[3303538][2]
	-- 3	18.00%
	tSuchGoldWeek_Activities_DiceRandom[3303538][3] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303538][3]["RandomItemChanceType"] = 2
	tSuchGoldWeek_Activities_DiceRandom[3303538][3]["ItemChance"] = 1800
	tSuchGoldWeek_Activities_DiceRandom[3303538][3]["RewardMoney"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303538][3]["RewardMoney"]["Value"] = 30000000
	tSuchGoldWeek_Activities_DiceRandom[3303538][3]["EffectIndex"] = 3
	tSuchGoldWeek_Activities_DiceRandom[3303538][3]["Log"] = "0,0,3303538,1,12000751,1[3],1,30000000"
	tSuchGoldWeek_Activities_DiceRandom[3303538][3]["RewardEffect"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303538][3]["RewardEffect"]["Effect"] = "angelwing"
	-- tSuchGoldWeek_Activities_DiceRandom[3303538][3]["Talk"] = tSuchGoldWeek_Activities_Text[3303538][3]
	-- 4	17.60%
	tSuchGoldWeek_Activities_DiceRandom[3303538][4] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303538][4]["RandomItemChanceType"] = 2
	tSuchGoldWeek_Activities_DiceRandom[3303538][4]["ItemChance"] = 1760
	tSuchGoldWeek_Activities_DiceRandom[3303538][4]["RewardMoney"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303538][4]["RewardMoney"]["Value"] = 40000000
	tSuchGoldWeek_Activities_DiceRandom[3303538][4]["EffectIndex"] = 4
	tSuchGoldWeek_Activities_DiceRandom[3303538][4]["Log"] = "0,0,3303538,1,12000751,1[3],1,40000000"
	tSuchGoldWeek_Activities_DiceRandom[3303538][4]["RewardEffect"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303538][4]["RewardEffect"]["Effect"] = "angelwing"
	-- tSuchGoldWeek_Activities_DiceRandom[3303538][4]["Talk"] = tSuchGoldWeek_Activities_Text[3303538][4]
	-- 5	15.60%
	tSuchGoldWeek_Activities_DiceRandom[3303538][5] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303538][5]["RandomItemChanceType"] = 2
	tSuchGoldWeek_Activities_DiceRandom[3303538][5]["ItemChance"] = 1560
	tSuchGoldWeek_Activities_DiceRandom[3303538][5]["RewardMoney"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303538][5]["RewardMoney"]["Value"] = 50000000
	tSuchGoldWeek_Activities_DiceRandom[3303538][5]["EffectIndex"] = 5
	tSuchGoldWeek_Activities_DiceRandom[3303538][5]["Log"] = "0,0,3303538,1,12000751,1[3],1,50000000"
	tSuchGoldWeek_Activities_DiceRandom[3303538][5]["RewardEffect"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303538][5]["RewardEffect"]["Effect"] = "angelwing"
	-- tSuchGoldWeek_Activities_DiceRandom[3303538][5]["Talk"] = tSuchGoldWeek_Activities_Text[3303538][5]
	-- 6	14.60%
	tSuchGoldWeek_Activities_DiceRandom[3303538][6] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303538][6]["RandomItemChanceType"] = 2
	tSuchGoldWeek_Activities_DiceRandom[3303538][6]["ItemChance"] = 1460
	tSuchGoldWeek_Activities_DiceRandom[3303538][6]["RewardMoney"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303538][6]["RewardMoney"]["Value"] = 60000000
	tSuchGoldWeek_Activities_DiceRandom[3303538][6]["EffectIndex"] = 6
	tSuchGoldWeek_Activities_DiceRandom[3303538][6]["Log"] = "0,0,3303538,1,12000751,1[3],1,60000000"
	tSuchGoldWeek_Activities_DiceRandom[3303538][6]["RewardEffect"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303538][6]["RewardEffect"]["Effect"] = "angelwing"
	-- tSuchGoldWeek_Activities_DiceRandom[3303538][6]["Talk"] = tSuchGoldWeek_Activities_Text[3303538][6]
	
	-- 赌场地图
	-- 3303808,'1级金币骰子'
	tSuchGoldWeek_Activities_DiceRandom[3303808] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303808]["ItemChanceSum"] = 10000
	tSuchGoldWeek_Activities_DiceRandom[3303808]["Limit"] = 600000
	tSuchGoldWeek_Activities_DiceRandom[3303808]["EmoneyLog"] = "350	20637	0	0	1	"
	-- 1	16.60%
	tSuchGoldWeek_Activities_DiceRandom[3303808][1] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303808][1]["RandomItemChanceType"] = 2
	tSuchGoldWeek_Activities_DiceRandom[3303808][1]["ItemChance"] = 1660
	tSuchGoldWeek_Activities_DiceRandom[3303808][1]["RewardMoney"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303808][1]["RewardMoney"]["Value"] = 100000
	tSuchGoldWeek_Activities_DiceRandom[3303808][1]["EffectIndex"] = 1
	tSuchGoldWeek_Activities_DiceRandom[3303808][1]["Log"] = "0,0,3303808,1,12000763,1[3],1,100000"
	tSuchGoldWeek_Activities_DiceRandom[3303808][1]["RewardEffect"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303808][1]["RewardEffect"]["Effect"] = "angelwing"
	-- tSuchGoldWeek_Activities_DiceRandom[3303808][1]["Talk"] = tSuchGoldWeek_Activities_Text[3303808][1]
	-- 2	17.60%
	tSuchGoldWeek_Activities_DiceRandom[3303808][2] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303808][2]["RandomItemChanceType"] = 2
	tSuchGoldWeek_Activities_DiceRandom[3303808][2]["ItemChance"] = 1760
	tSuchGoldWeek_Activities_DiceRandom[3303808][2]["RewardMoney"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303808][2]["RewardMoney"]["Value"] = 200000
	tSuchGoldWeek_Activities_DiceRandom[3303808][2]["EffectIndex"] = 2
	tSuchGoldWeek_Activities_DiceRandom[3303808][2]["Log"] = "0,0,3303808,1,12000763,1[3],1,200000"
	tSuchGoldWeek_Activities_DiceRandom[3303808][2]["RewardEffect"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303808][2]["RewardEffect"]["Effect"] = "angelwing"
	-- tSuchGoldWeek_Activities_DiceRandom[3303808][2]["Talk"] = tSuchGoldWeek_Activities_Text[3303808][2]
	-- 3	18.00%
	tSuchGoldWeek_Activities_DiceRandom[3303808][3] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303808][3]["RandomItemChanceType"] = 2
	tSuchGoldWeek_Activities_DiceRandom[3303808][3]["ItemChance"] = 1800
	tSuchGoldWeek_Activities_DiceRandom[3303808][3]["RewardMoney"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303808][3]["RewardMoney"]["Value"] = 300000
	tSuchGoldWeek_Activities_DiceRandom[3303808][3]["EffectIndex"] = 3
	tSuchGoldWeek_Activities_DiceRandom[3303808][3]["Log"] = "0,0,3303808,1,12000763,1[3],1,300000"
	tSuchGoldWeek_Activities_DiceRandom[3303808][3]["RewardEffect"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303808][3]["RewardEffect"]["Effect"] = "angelwing"
	-- tSuchGoldWeek_Activities_DiceRandom[3303808][3]["Talk"] = tSuchGoldWeek_Activities_Text[3303808][3]
	-- 4	17.60%
	tSuchGoldWeek_Activities_DiceRandom[3303808][4] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303808][4]["RandomItemChanceType"] = 2
	tSuchGoldWeek_Activities_DiceRandom[3303808][4]["ItemChance"] = 1760
	tSuchGoldWeek_Activities_DiceRandom[3303808][4]["RewardMoney"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303808][4]["RewardMoney"]["Value"] = 400000
	tSuchGoldWeek_Activities_DiceRandom[3303808][4]["EffectIndex"] = 4
	tSuchGoldWeek_Activities_DiceRandom[3303808][4]["Log"] = "0,0,3303808,1,12000763,1[3],1,400000"
	tSuchGoldWeek_Activities_DiceRandom[3303808][4]["RewardEffect"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303808][4]["RewardEffect"]["Effect"] = "angelwing"
	-- tSuchGoldWeek_Activities_DiceRandom[3303808][4]["Talk"] = tSuchGoldWeek_Activities_Text[3303808][4]
	-- 5	15.60%
	tSuchGoldWeek_Activities_DiceRandom[3303808][5] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303808][5]["RandomItemChanceType"] = 2
	tSuchGoldWeek_Activities_DiceRandom[3303808][5]["ItemChance"] = 1560
	tSuchGoldWeek_Activities_DiceRandom[3303808][5]["RewardMoney"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303808][5]["RewardMoney"]["Value"] = 500000
	tSuchGoldWeek_Activities_DiceRandom[3303808][5]["EffectIndex"] = 5
	tSuchGoldWeek_Activities_DiceRandom[3303808][5]["Log"] = "0,0,3303808,1,12000763,1[3],1,500000"
	tSuchGoldWeek_Activities_DiceRandom[3303808][5]["RewardEffect"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303808][5]["RewardEffect"]["Effect"] = "angelwing"
	-- tSuchGoldWeek_Activities_DiceRandom[3303808][5]["Talk"] = tSuchGoldWeek_Activities_Text[3303808][5]
	-- 6	14.60%
	tSuchGoldWeek_Activities_DiceRandom[3303808][6] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303808][6]["RandomItemChanceType"] = 2
	tSuchGoldWeek_Activities_DiceRandom[3303808][6]["ItemChance"] = 1460
	tSuchGoldWeek_Activities_DiceRandom[3303808][6]["RewardMoney"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303808][6]["RewardMoney"]["Value"] = 600000
	tSuchGoldWeek_Activities_DiceRandom[3303808][6]["EffectIndex"] = 6
	tSuchGoldWeek_Activities_DiceRandom[3303808][6]["Log"] = "0,0,3303808,1,12000763,1[3],1,600000"
	tSuchGoldWeek_Activities_DiceRandom[3303808][6]["RewardEffect"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303808][6]["RewardEffect"]["Effect"] = "angelwing"
	-- tSuchGoldWeek_Activities_DiceRandom[3303808][6]["Talk"] = tSuchGoldWeek_Activities_Text[3303808][6]
	-- 3303809,'2级金币骰子'
	tSuchGoldWeek_Activities_DiceRandom[3303809] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303809]["ItemChanceSum"] = 10000
	tSuchGoldWeek_Activities_DiceRandom[3303809]["Limit"] = 6000000
	tSuchGoldWeek_Activities_DiceRandom[3303809]["EmoneyLog"] = "350	20638	0	0	1	"
	-- 1	16.60%
	tSuchGoldWeek_Activities_DiceRandom[3303809][1] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303809][1]["RandomItemChanceType"] = 2
	tSuchGoldWeek_Activities_DiceRandom[3303809][1]["ItemChance"] = 1660
	tSuchGoldWeek_Activities_DiceRandom[3303809][1]["RewardMoney"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303809][1]["RewardMoney"]["Value"] = 1000000
	tSuchGoldWeek_Activities_DiceRandom[3303809][1]["EffectIndex"] = 1
	tSuchGoldWeek_Activities_DiceRandom[3303809][1]["Log"] = "0,0,3303809,1,12000763,1[3],1,1000000"
	tSuchGoldWeek_Activities_DiceRandom[3303809][1]["RewardEffect"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303809][1]["RewardEffect"]["Effect"] = "angelwing"
	-- tSuchGoldWeek_Activities_DiceRandom[3303809][1]["Talk"] = tSuchGoldWeek_Activities_Text[3303809][1]
	-- 2	17.60%
	tSuchGoldWeek_Activities_DiceRandom[3303809][2] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303809][2]["RandomItemChanceType"] = 2
	tSuchGoldWeek_Activities_DiceRandom[3303809][2]["ItemChance"] = 1760
	tSuchGoldWeek_Activities_DiceRandom[3303809][2]["RewardMoney"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303809][2]["RewardMoney"]["Value"] = 2000000
	tSuchGoldWeek_Activities_DiceRandom[3303809][2]["EffectIndex"] = 2
	tSuchGoldWeek_Activities_DiceRandom[3303809][2]["Log"] = "0,0,3303809,1,12000763,1[3],1,2000000"
	tSuchGoldWeek_Activities_DiceRandom[3303809][2]["RewardEffect"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303809][2]["RewardEffect"]["Effect"] = "angelwing"
	-- tSuchGoldWeek_Activities_DiceRandom[3303809][2]["Talk"] = tSuchGoldWeek_Activities_Text[3303809][2]
	-- 3	18.00%
	tSuchGoldWeek_Activities_DiceRandom[3303809][3] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303809][3]["RandomItemChanceType"] = 2
	tSuchGoldWeek_Activities_DiceRandom[3303809][3]["ItemChance"] = 1800
	tSuchGoldWeek_Activities_DiceRandom[3303809][3]["RewardMoney"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303809][3]["RewardMoney"]["Value"] = 3000000
	tSuchGoldWeek_Activities_DiceRandom[3303809][3]["EffectIndex"] = 3
	tSuchGoldWeek_Activities_DiceRandom[3303809][3]["Log"] = "0,0,3303809,1,12000763,1[3],1,3000000"
	tSuchGoldWeek_Activities_DiceRandom[3303809][3]["RewardEffect"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303809][3]["RewardEffect"]["Effect"] = "angelwing"
	-- tSuchGoldWeek_Activities_DiceRandom[3303809][3]["Talk"] = tSuchGoldWeek_Activities_Text[3303809][3]
	-- 4	17.60%
	tSuchGoldWeek_Activities_DiceRandom[3303809][4] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303809][4]["RandomItemChanceType"] = 2
	tSuchGoldWeek_Activities_DiceRandom[3303809][4]["ItemChance"] = 1760
	tSuchGoldWeek_Activities_DiceRandom[3303809][4]["RewardMoney"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303809][4]["RewardMoney"]["Value"] = 4000000
	tSuchGoldWeek_Activities_DiceRandom[3303809][4]["EffectIndex"] = 4
	tSuchGoldWeek_Activities_DiceRandom[3303809][4]["Log"] = "0,0,3303809,1,12000763,1[3],1,4000000"
	tSuchGoldWeek_Activities_DiceRandom[3303809][4]["RewardEffect"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303809][4]["RewardEffect"]["Effect"] = "angelwing"
	-- tSuchGoldWeek_Activities_DiceRandom[3303809][4]["Talk"] = tSuchGoldWeek_Activities_Text[3303809][4]
	-- 5	15.60%
	tSuchGoldWeek_Activities_DiceRandom[3303809][5] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303809][5]["RandomItemChanceType"] = 2
	tSuchGoldWeek_Activities_DiceRandom[3303809][5]["ItemChance"] = 1560
	tSuchGoldWeek_Activities_DiceRandom[3303809][5]["RewardMoney"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303809][5]["RewardMoney"]["Value"] = 5000000
	tSuchGoldWeek_Activities_DiceRandom[3303809][5]["EffectIndex"] = 5
	tSuchGoldWeek_Activities_DiceRandom[3303809][5]["Log"] = "0,0,3303809,1,12000763,1[3],1,5000000"
	tSuchGoldWeek_Activities_DiceRandom[3303809][5]["RewardEffect"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303809][5]["RewardEffect"]["Effect"] = "angelwing"
	-- tSuchGoldWeek_Activities_DiceRandom[3303809][5]["Talk"] = tSuchGoldWeek_Activities_Text[3303809][5]
	-- 6	14.60%
	tSuchGoldWeek_Activities_DiceRandom[3303809][6] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303809][6]["RandomItemChanceType"] = 2
	tSuchGoldWeek_Activities_DiceRandom[3303809][6]["ItemChance"] = 1460
	tSuchGoldWeek_Activities_DiceRandom[3303809][6]["RewardMoney"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303809][6]["RewardMoney"]["Value"] = 6000000
	tSuchGoldWeek_Activities_DiceRandom[3303809][6]["EffectIndex"] = 6
	tSuchGoldWeek_Activities_DiceRandom[3303809][6]["Log"] = "0,0,3303809,1,12000763,1[3],1,6000000"
	tSuchGoldWeek_Activities_DiceRandom[3303809][6]["RewardEffect"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303809][6]["RewardEffect"]["Effect"] = "angelwing"
	-- tSuchGoldWeek_Activities_DiceRandom[3303809][6]["Talk"] = tSuchGoldWeek_Activities_Text[3303809][6]
	-- 3303810,'3级金币骰子'
	tSuchGoldWeek_Activities_DiceRandom[3303810] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303810]["ItemChanceSum"] = 10000
	tSuchGoldWeek_Activities_DiceRandom[3303810]["Limit"] = 60000000
	tSuchGoldWeek_Activities_DiceRandom[3303810]["EmoneyLog"] = "350	20639	0	0	1	"
	-- 1	16.60%
	tSuchGoldWeek_Activities_DiceRandom[3303810][1] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303810][1]["RandomItemChanceType"] = 2
	tSuchGoldWeek_Activities_DiceRandom[3303810][1]["ItemChance"] = 1660
	tSuchGoldWeek_Activities_DiceRandom[3303810][1]["RewardMoney"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303810][1]["RewardMoney"]["Value"] = 10000000
	tSuchGoldWeek_Activities_DiceRandom[3303810][1]["EffectIndex"] = 1
	tSuchGoldWeek_Activities_DiceRandom[3303810][1]["Log"] = "0,0,3303810,1,12000763,1[3],1,10000000"
	tSuchGoldWeek_Activities_DiceRandom[3303810][1]["RewardEffect"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303810][1]["RewardEffect"]["Effect"] = "angelwing"
	-- tSuchGoldWeek_Activities_DiceRandom[3303810][1]["Talk"] = tSuchGoldWeek_Activities_Text[3303810][1]
	-- 2	17.60%
	tSuchGoldWeek_Activities_DiceRandom[3303810][2] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303810][2]["RandomItemChanceType"] = 2
	tSuchGoldWeek_Activities_DiceRandom[3303810][2]["ItemChance"] = 1760
	tSuchGoldWeek_Activities_DiceRandom[3303810][2]["RewardMoney"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303810][2]["RewardMoney"]["Value"] = 20000000
	tSuchGoldWeek_Activities_DiceRandom[3303810][2]["EffectIndex"] = 2
	tSuchGoldWeek_Activities_DiceRandom[3303810][2]["Log"] = "0,0,3303810,1,12000763,1[3],1,20000000"
	tSuchGoldWeek_Activities_DiceRandom[3303810][2]["RewardEffect"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303810][2]["RewardEffect"]["Effect"] = "angelwing"
	-- tSuchGoldWeek_Activities_DiceRandom[3303810][2]["Talk"] = tSuchGoldWeek_Activities_Text[3303810][2]
	-- 3	18.00%
	tSuchGoldWeek_Activities_DiceRandom[3303810][3] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303810][3]["RandomItemChanceType"] = 2
	tSuchGoldWeek_Activities_DiceRandom[3303810][3]["ItemChance"] = 1800
	tSuchGoldWeek_Activities_DiceRandom[3303810][3]["RewardMoney"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303810][3]["RewardMoney"]["Value"] = 30000000
	tSuchGoldWeek_Activities_DiceRandom[3303810][3]["EffectIndex"] = 3
	tSuchGoldWeek_Activities_DiceRandom[3303810][3]["Log"] = "0,0,3303810,1,12000763,1[3],1,30000000"
	tSuchGoldWeek_Activities_DiceRandom[3303810][3]["RewardEffect"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303810][3]["RewardEffect"]["Effect"] = "angelwing"
	-- tSuchGoldWeek_Activities_DiceRandom[3303810][3]["Talk"] = tSuchGoldWeek_Activities_Text[3303810][3]
	-- 4	17.60%
	tSuchGoldWeek_Activities_DiceRandom[3303810][4] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303810][4]["RandomItemChanceType"] = 2
	tSuchGoldWeek_Activities_DiceRandom[3303810][4]["ItemChance"] = 1760
	tSuchGoldWeek_Activities_DiceRandom[3303810][4]["RewardMoney"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303810][4]["RewardMoney"]["Value"] = 40000000
	tSuchGoldWeek_Activities_DiceRandom[3303810][4]["EffectIndex"] = 4
	tSuchGoldWeek_Activities_DiceRandom[3303810][4]["Log"] = "0,0,3303810,1,12000763,1[3],1,40000000"
	tSuchGoldWeek_Activities_DiceRandom[3303810][4]["RewardEffect"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303810][4]["RewardEffect"]["Effect"] = "angelwing"
	-- tSuchGoldWeek_Activities_DiceRandom[3303810][4]["Talk"] = tSuchGoldWeek_Activities_Text[3303810][4]
	-- 5	15.60%
	tSuchGoldWeek_Activities_DiceRandom[3303810][5] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303810][5]["RandomItemChanceType"] = 2
	tSuchGoldWeek_Activities_DiceRandom[3303810][5]["ItemChance"] = 1560
	tSuchGoldWeek_Activities_DiceRandom[3303810][5]["RewardMoney"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303810][5]["RewardMoney"]["Value"] = 50000000
	tSuchGoldWeek_Activities_DiceRandom[3303810][5]["EffectIndex"] = 5
	tSuchGoldWeek_Activities_DiceRandom[3303810][5]["Log"] = "0,0,3303810,1,12000763,1[3],1,50000000"
	tSuchGoldWeek_Activities_DiceRandom[3303810][5]["RewardEffect"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303810][5]["RewardEffect"]["Effect"] = "angelwing"
	-- tSuchGoldWeek_Activities_DiceRandom[3303810][5]["Talk"] = tSuchGoldWeek_Activities_Text[3303810][5]
	-- 6	14.60%
	tSuchGoldWeek_Activities_DiceRandom[3303810][6] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303810][6]["RandomItemChanceType"] = 2
	tSuchGoldWeek_Activities_DiceRandom[3303810][6]["ItemChance"] = 1460
	tSuchGoldWeek_Activities_DiceRandom[3303810][6]["RewardMoney"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303810][6]["RewardMoney"]["Value"] = 60000000
	tSuchGoldWeek_Activities_DiceRandom[3303810][6]["EffectIndex"] = 6
	tSuchGoldWeek_Activities_DiceRandom[3303810][6]["Log"] = "0,0,3303810,1,12000763,1[3],1,60000000"
	tSuchGoldWeek_Activities_DiceRandom[3303810][6]["RewardEffect"] = {}
	tSuchGoldWeek_Activities_DiceRandom[3303810][6]["RewardEffect"]["Effect"] = "angelwing"
	-- tSuchGoldWeek_Activities_DiceRandom[3303810][6]["Talk"] = tSuchGoldWeek_Activities_Text[3303810][6]
	
	--sql接入寻路
local tSuchGoldWeek_Activities_FindWay = {}
	tSuchGoldWeek_Activities_FindWay[1] = {}
	tSuchGoldWeek_Activities_FindWay[1]["PosX"] = 201
	tSuchGoldWeek_Activities_FindWay[1]["PosY"] = 177
	tSuchGoldWeek_Activities_FindWay[1]["MapId"] = 3053
	tSuchGoldWeek_Activities_FindWay[1]["NpcId"] = 21889
	
--------------------------------------逻辑部分-------------------------------------------
-- 获取掩码值
function SuchGoldWeek_Activities_GetStcValue(nIndex)
	local nEvent = tSuchGoldWeek_Activities_Stc[nIndex]["EventType"]
	local nType = tSuchGoldWeek_Activities_Stc[nIndex]["DataType"]
	
	local nData = Get_UserStatisticValue(nEvent,nType)
	return nData
end

--设置掩码值
function SuchGoldWeek_Activities_SetStcValue(nIndex,nAddType,nData)
	local nEvent = tSuchGoldWeek_Activities_Stc[nIndex]["EventType"]
	local nType = tSuchGoldWeek_Activities_Stc[nIndex]["DataType"]
	
	if nAddType == 1 then
		Task_SetStatistic(nEvent,nType,nData,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	else
		Task_AddStatistic(nEvent,nType,nData,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
end

-- 隔天清理掩码
function SuchGoldWeek_Activities_ClearStcValue(nIndex)
	local nEvent = tSuchGoldWeek_Activities_Stc[nIndex]["EventType"]
	local nType = tSuchGoldWeek_Activities_Stc[nIndex]["DataType"]
	
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
end

---------------------------------------------------赌场道具商 20833
-- 打开对白
function SuchGoldWeek_Activities_OpenDialog()
	local nNpcId = Get_NpcId()
	-- 活动前
	if CommonFunc_GetBeforeActivityTime(tSuchGoldWeek_Activities_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	
	-- 活动后
	if not Sys_ChkFullTime(tSuchGoldWeek_Activities_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 点击打开天石商店
	User_OpenDialog(0,nNpcId)
end

---------------------------------------------------骰子赌荷官 20834
-- 1、调整每注金额。
function SuchGoldWeek_Activities_AdjustBetMoney(nNpcId)
	local nNpcId = Get_NpcId()
	-- 活动后
	if not Sys_ChkFullTime(tSuchGoldWeek_Activities_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	Sys_DialogText(tSuchGoldWeek_Activities_Text[nNpcId]["Text211"])
	Sys_DialogText(tSuchGoldWeek_Activities_Text[nNpcId]["Text212"])
	Sys_DialogOptEdit(tSuchGoldWeek_Activities_Text[nNpcId]["Input"],tSuchGoldWeek_Activities_Count["Length"],"SuchGoldWeek_Activities_SureMoney</N>"..nNpcId)
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end

-- 输入框
function SuchGoldWeek_Activities_SureMoney(nNpcId)
	local nNpcId = Get_NpcId()
	-- 活动后
	if not Sys_ChkFullTime(tSuchGoldWeek_Activities_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	local nNumber = tonumber(Get_SysAcceptStr())
	-- 【失败，输入非法字符】
	if nNumber == nil or type(nNumber) ~= "number" or nNumber%1 ~= 0 then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
	
	-- 【失败，输入金额超过金额】
	local nLimitMoney = tSuchGoldWeek_Activities_Count["UserMoney"]
	if nNumber > (nLimitMoney/2) then
		LinkNpcGossipFunc_New(nNpcId,"2-5")
		return
	end
	
	-- 【失败，输入金额低于2万金币】
	if nNumber < tSuchGoldWeek_Activities_Count["BetMoney"] then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	-- 置掩码
	SuchGoldWeek_Activities_SetStcValue(nNpcId,1,nNumber)
	local sText = tSuchGoldWeek_Activities_Text[nNpcId]["Text221"]
	tNpcGossip[nNpcId]["Text221"] = string.format(sText,nNumber)
	LinkNpcGossipFunc_New(nNpcId,"2-2")
end

-- 各种玩法
function SuchGoldWeek_Activities_Bet(nNpcId,nType,nOtherType)
	local nNpcId = Get_NpcId()
	-- 活动后
	if not Sys_ChkFullTime(tSuchGoldWeek_Activities_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	
	local nUserId = Get_UserId()
	-- 判断使用间隔时间
	if tSuchGoldWeek_Activities_Data["LimitTime"][nUserId] ~= nil and os.time() - tSuchGoldWeek_Activities_Data["LimitTime"][nUserId] < tSuchGoldWeek_Activities_Count["IntervalTime"] then
		User_TalkChannel2005(tSuchGoldWeek_Activities_Text["IntervalTime"])
		return
	end
	
	local nData = SuchGoldWeek_Activities_GetStcValue(nNpcId)
	if nData == 0 then
		nData = tSuchGoldWeek_Activities_Count["BetMoney"]
	end
	-- 大于一定数量不能参加
	local nUserAwardMoney = tSuchGoldWeek_Activities_Count["UserMoney"]
	local nGiveMultiple = tSuchGoldWeek_Activities_MoneyMultiple[nType]
	local nCalculateMoney = math.floor(nUserAwardMoney/nGiveMultiple)
	if nData >= nCalculateMoney then
		local sText = tSuchGoldWeek_Activities_Text[nNpcId]["Text331"]
		local sName = tSuchGoldWeek_Activities_Text["Name"][nType]
		tNpcGossip[nNpcId]["Text331"] = string.format(sText,sName,nCalculateMoney)
		LinkNpcGossipFunc_New(nNpcId,"3-3")
		return
	end
	
	-- 金币不足
	if not User_CanPutMoney2Bag(-nData) then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	local nLimitMoney = nData*nGiveMultiple-nData
	-- 金币上限
	if not User_CanPutMoney2Bag(nLimitMoney) then
		LinkNpcGossipFunc_New(nNpcId,"3-4")
		return
	end
	
	if not User_AddMoney(-1*nData) then
		return
	end
	
	local sLog = tSuchGoldWeek_Activities_Log[nNpcId]
	Sys_SaveActionFestivalLog(string.format(sLog,nData))
	
	tSuchGoldWeek_Activities_Data["LimitTime"][nUserId] = os.time()
	local nUserId = Get_UserId()
	-- 大小玩法和单数双数玩法
	if nType <= 4 then
		local nStartNum = tSuchGoldWeek_Activities_Count["MinNum"]
		local nEndNum = tSuchGoldWeek_Activities_Count["MaxNum"]
		if Sys_Random(nStartNum,nEndNum) then
			-- 成功，押对了
			local tReward = CommonFunc_Copy(tSuchGoldWeek_Activities_Reward[nNpcId])
			tReward["RewardMoney"]["Value"] = nData*nGiveMultiple
			RewardTemplate_UseItem(tReward)
			
			-- 随机筛子数
			local nRandom = math.random(1,6)
			local nNum = tSuchGoldWeek_Activities_PlayData[nType][nRandom]
			-- 成功提示
			local sIndex = tSuchGoldWeek_Activities_Count["Index"][nType]
			local sTip = tSuchGoldWeek_Activities_Text[nNpcId][sIndex]["BetSuccess"]
			local sType = tSuchGoldWeek_Activities_Text["Type"][nType]
			local sDialogIndex = tSuchGoldWeek_Activities_DialogIndex[nType]
			Sys_MsgBox(string.format(sTip,nNum,sType,nData*nGiveMultiple),"LinkNpcGossipFunc_New</N>"..nNpcId.."</S>"..sDialogIndex)
			
			SuchGoldWeek_Activities_RandomNumber(nNpcId,nNum,nUserId)
		else
			-- 失败提示
			local nNewType = tSuchGoldWeek_Activities_FailData[nType]
			-- 获得随机筛子数
			local nRandom = math.random(1,6)
			local nNum = tSuchGoldWeek_Activities_PlayData[nNewType][nRandom]
			
			local sIndex = tSuchGoldWeek_Activities_Count["Index"][nType]
			local sTip = tSuchGoldWeek_Activities_Text[nNpcId][sIndex]["BetFail"]
			local sType = tSuchGoldWeek_Activities_Text["Type"][nNewType]
			local sDialogIndex = tSuchGoldWeek_Activities_DialogIndex[nType]
			Sys_MsgBox(string.format(sTip,nNum,sType,nData),"LinkNpcGossipFunc_New</N>"..nNpcId.."</S>"..sDialogIndex)
			
			SuchGoldWeek_Activities_RandomNumber(nNpcId,nNum,nUserId)
		end
		return
	elseif nType == 5 then
		-- 豹子玩法
		local nStartNum = tSuchGoldWeek_Activities_Count["Num"]
		local nEndNum = tSuchGoldWeek_Activities_Count["MaxNum"]
		if Sys_Random(nStartNum,nEndNum) then
			-- 成功，押对了
			local tReward = CommonFunc_Copy(tSuchGoldWeek_Activities_Reward[nNpcId])
			tReward["RewardMoney"]["Value"] = nData*nGiveMultiple
			RewardTemplate_UseItem(tReward)
			-- 提示
			-- 获得随机筛子数
			local nRandom = math.random(1,6)
			local sIndex = tSuchGoldWeek_Activities_Count["Index"][nType]
			local sTip = tSuchGoldWeek_Activities_Text[nNpcId][sIndex]["BetSuccess"]
			local sType = tSuchGoldWeek_Activities_Text["Type"][nType]
			local sText = string.format(sType,nRandom)
			local sDialogIndex = tSuchGoldWeek_Activities_DialogIndex[nType]
			Sys_MsgBox(string.format(sTip,sText,nData*nGiveMultiple),"LinkNpcGossipFunc_New</N>"..nNpcId.."</S>"..sDialogIndex)
			
			SuchGoldWeek_Activities_RandomNewNum(nNpcId,nRandom,nUserId)
		else
			-- 提示
			local sIndex = tSuchGoldWeek_Activities_Count["Index"][nType]
			local sTip = tSuchGoldWeek_Activities_Text[nNpcId][sIndex]["BetFail"]
			local sType = tSuchGoldWeek_Activities_Text["Type"][nType]
			local sDialogIndex = tSuchGoldWeek_Activities_DialogIndex[nType]
			Sys_MsgBox(string.format(sTip,nData),"LinkNpcGossipFunc_New</N>"..nNpcId.."</S>"..sDialogIndex)
			
			SuchGoldWeek_Activities_RandomNewNum(nNpcId,0,nUserId)
		end
		return
	else
		-- 豹子玩法之赌对应豹子
		local nStartNum = tSuchGoldWeek_Activities_Count["Num"]
		local nEndNum = tSuchGoldWeek_Activities_Count["MaxNum"]
		
		if Sys_Random(nStartNum,nEndNum) then
			-- 获得随机筛子数
			local nRandom = math.random(1,6)
			if nRandom == nOtherType then
				-- 成功，押对了
				local tReward = CommonFunc_Copy(tSuchGoldWeek_Activities_Reward[nNpcId])
				tReward["RewardMoney"]["Value"] = nData*nGiveMultiple
				RewardTemplate_UseItem(tReward)
				
				local sIndex = tSuchGoldWeek_Activities_Count["Index"][nType]
				local sTip = tSuchGoldWeek_Activities_Text[nNpcId][sIndex]["BetSuccess"]
				local sType = tSuchGoldWeek_Activities_Text["Type"][nType]
				local sText = string.format(sType,nRandom)
				local sDialogIndex = tSuchGoldWeek_Activities_DialogIndex[nType]
				Sys_MsgBox(string.format(sTip,sText,nData*nGiveMultiple),"LinkNpcGossipFunc_New</N>"..nNpcId.."</S>"..sDialogIndex)
				SuchGoldWeek_Activities_RandomNewNum(nNpcId,nRandom,nUserId)
				return
			end
		end
		-- 提示
		local sIndex = tSuchGoldWeek_Activities_Count["Index"][nType]
		local sTip = tSuchGoldWeek_Activities_Text[nNpcId][sIndex]["BetFail"]
		local sType = tSuchGoldWeek_Activities_Text["Type"][nType]
		local sDialogIndex = tSuchGoldWeek_Activities_DialogIndex[nType]
		Sys_MsgBox(string.format(sTip,nData),"LinkNpcGossipFunc_New</N>"..nNpcId.."</S>"..sDialogIndex)
		SuchGoldWeek_Activities_RandomNewNum(nNpcId,0,nUserId)
	end
end

-- 随机筛子数
function SuchGoldWeek_Activities_RandomNumber(nNpcId,nNum,nUserId)
	local nNowUserId = Get_UserId() or nUserId
	-- 获得需要播放筛子数
	local nCombination = math.random(1,#tSuchGoldWeek_Activities_Number[nNum])
	SuchGoldWeek_Activities_PlayEffect(tSuchGoldWeek_Activities_Number[nNum][nCombination],nUserId)
end

-- 随机豹子数
function SuchGoldWeek_Activities_RandomNewNum(nNpcId,nRandom,nUserId)
	local nNowUserId = Get_UserId() or nUserId
	local tNum = {}
	if nRandom > 0 then
		tNum = {nRandom,nRandom,nRandom}
	else
		-- 获得需要播放筛子数
		local nNum = math.random(4,17)
		for m=1,6 do
			for n=1,6 do
				for a=1,6 do
					 if m+n+a ==  nNum and (m ~= n or n ~= a or m ~= a) then
						tNum = {m,n,a}
						break
					end
				end
			end
		end
	end
	SuchGoldWeek_Activities_PlayEffect(tNum,nUserId)
end

-- 播放光效
function SuchGoldWeek_Activities_PlayEffect(tNum,nUserId)
	local nNowUserId = Get_UserId() or nUserId
	local nMapId = Get_UserMapId(nNowUserId)
	local nPosX = Get_UserPositionX(nNowUserId)
	local nPosY = Get_UserPositionY(nNowUserId)
	for i,v in pairs(tNum) do
		local sEffect = tSuchGoldWeek_Activities_Effect[v]["Name"]
		Map_Effect(nMapId,nPosX-2*i,nPosY-2,sEffect)
	end
end

---------------------------------------------------散财童子 20835
-- 1、抢鸿运红包。
function SuchGoldWeek_Activities_RedPacket(nNpcId,nType)
	local nNpcId = Get_NpcId()
	-- 活动后
	if not Sys_ChkFullTime(tSuchGoldWeek_Activities_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 红包剩余数量
	local nNum = tSuchGoldWeek_Activities_Data["RedPacket"][nNpcId]
	local nLimit = tSuchGoldWeek_Activities_Count["Limit"]
	if nNum >= nLimit then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	-- 【时间间隔提示】
	SuchGoldWeek_Activities_ClearStcValue(nNpcId)
	local nEvent = tSuchGoldWeek_Activities_Stc[nNpcId]["EventType"]
	local nType = tSuchGoldWeek_Activities_Stc[nNpcId]["DataType"]
	local nData = SuchGoldWeek_Activities_GetStcValue(nNpcId)
	if nData >= 1 and not Task_StcInterval(nEvent,nType,1,2) then
		local nTime = os.time()
		local nOldTime = Get_UserStcTimestampValue(nEvent,nType)
		local nLasTime = math.ceil(60-(nTime-nOldTime)/60)
		local sText = tSuchGoldWeek_Activities_Text[nNpcId]["Text251"]
		tNpcGossip[nNpcId]["Text251"] = string.format(sText,nLasTime)
		LinkNpcGossipFunc_New(nNpcId,"2-5")
		return
	end
	
	-- 置掩码
	SuchGoldWeek_Activities_SetStcValue(nNpcId,1,1)
		
	-- 【成功】
	local sText = tSuchGoldWeek_Activities_Text[nNpcId]["Text251"]
	tNpcGossip[nNpcId]["Text251"] = string.format(sText,60)
	LinkNpcGossipFunc_New(nNpcId,"2-5")
end

-- 1、领取鸿运红包。
function SuchGoldWeek_Activities_ReceiveItem(nNpcId)
	local nNpcId = Get_NpcId()
	-- 活动后
	if not Sys_ChkFullTime(tSuchGoldWeek_Activities_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 红包剩余数量
	local nNum = tSuchGoldWeek_Activities_Data["RedPacket"][nNpcId]
	local nLimit = tSuchGoldWeek_Activities_Count["Limit"]
	if nNum >= nLimit then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	-- 【时间间隔提示1小时】
	SuchGoldWeek_Activities_ClearStcValue(nNpcId)
	local nEvent = tSuchGoldWeek_Activities_Stc[nNpcId]["EventType"]
	local nType = tSuchGoldWeek_Activities_Stc[nNpcId]["DataType"]
	local nData = SuchGoldWeek_Activities_GetStcValue(nNpcId)
	if nData >= 1 and not Task_StcInterval(nEvent,nType,1,2) then
		local nTime = os.time()
		local nOldTime = Get_UserStcTimestampValue(nEvent,nType)
		local nLasTime = math.ceil(60-(nTime-nOldTime)/60)
		local sText = tSuchGoldWeek_Activities_Text[nNpcId]["Text251"]
		tNpcGossip[nNpcId]["Text251"] = string.format(sText,nLasTime)
		LinkNpcGossipFunc_New(nNpcId,"2-5")
		return
	end
	
	-- 背包不足
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
	
	-- 置掩码
	SuchGoldWeek_Activities_SetStcValue(nNpcId,1,0)
	
	-- 置动态码
	local nGlobalId = tSuchGoldWeek_Activities_Count["GlobalId"]
	tSuchGoldWeek_Activities_Data["RedPacket"][nNpcId] = nNum + 1
	Sys_SetSynaGlobalData(nGlobalId,tSuchGoldWeek_Activities_GlobalPos[nNpcId],nNum + 1)

	-- 给奖励
	RewardTemplate_UseItem(tSuchGoldWeek_Activities_Reward[nNpcId])
end

---------------------------------------------------物品模块
-- 物品通用过期删除
function SuchGoldWeek_Activities_OverDel(nItemId)
	if not Sys_ChkFullTime(tSuchGoldWeek_Activities_Count["ActivityTime"]) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tSuchGoldWeek_Activities_Text["OverDue"])
			local sLog = tSuchGoldWeek_Activities_Log["OverDue"]
			Sys_SaveActionFestivalLog(string.format(sLog,nItemId))
 		end
		return false
	end
	
	return true
end

-- 鸿运红包 金币大礼袋
function SuchGoldWeek_Activities_OpenItem(nItemId)
	-- 过期删除
	if not SuchGoldWeek_Activities_OverDel(nItemId) then
		return
	end
	
	
	local nMinMoney = tSuchGoldWeek_Activities_Count["MinMoney"]
	local nMaxMoney = tSuchGoldWeek_Activities_Count["MaxMoney"]
	
	-- 判断银两上限
	if not User_CanPutMoney2Bag(nMaxMoney) then
		User_TalkChannel2005(tSuchGoldWeek_Activities_Text["Limit"])
		return
	end
	
	local nMoney = math.random(nMinMoney,nMaxMoney)
	local tReward = CommonFunc_Copy(tSuchGoldWeek_Activities_Reward[nItemId])
	-- 赋值获得金币
	tReward["RewardMoney"]["Value"] = nMoney
	-- 赋值获得提示
	local sRewardTip =tSuchGoldWeek_Activities_Text[nItemId]["Reward"]
	tReward["Talk"] = string.format(sRewardTip,nMoney)
	-- 使用礼包
	RewardTemplate_UseItem(tReward)
end

-- 金币骰子
function SuchGoldWeek_Activities_DrawItem(nItemId)
	-- 过期删除
	if not SuchGoldWeek_Activities_OverDel(nItemId) then
		return
	end
	
	local nUserId = Get_UserId()
	-- 判断使用间隔时间
	if tSuchGoldWeek_Activities_Data["Time"][nUserId] ~= nil and os.time() - tSuchGoldWeek_Activities_Data["Time"][nUserId] < tSuchGoldWeek_Activities_Count["IntervalTime"] then
		User_TalkChannel2005(tSuchGoldWeek_Activities_Text["IntervalTime"])
		return
	end
	
	-- 判断银两上限
	local nNum = tSuchGoldWeek_Activities_DiceRandom[nItemId]["Limit"]
	if not User_CanPutMoney2Bag(nNum) then
		User_TalkChannel2005(tSuchGoldWeek_Activities_Text["Limit"])
		return
	end
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		tSuchGoldWeek_Activities_Data["Time"][nUserId] = os.time()
		local tAward = RewardTemplate_NewRandom(tSuchGoldWeek_Activities_DiceRandom,nItemId)
		local nIndex = tAward[1]["tAward"][1]["EffectIndex"]
		local sEffect = tSuchGoldWeek_Activities_Effect[nIndex]["Name"]
		
		-- emoneylog
		Sys_SaveEmoneyBuy(tSuchGoldWeek_Activities_DiceRandom[nItemId]["EmoneyLog"])
		
		-- 播光效
		if sEffect ~= nil then
			local nMapId = Get_UserMapId()
			local nPosX = Get_UserPositionX()
			local nPosY = Get_UserPositionY()
			Map_Effect(nMapId,nPosX-2,nPosY-2,sEffect)
		end
	end
end
--------------------------------------时间自检
-- 清理动态码
function SuchGoldWeek_Activities_ClearGlobalData()	
	local nGlobalId = tSuchGoldWeek_Activities_Count["GlobalId"]
	local sDataStr5 = Get_SysDynaGlobalDataStr5(nGlobalId)
	
	if Sys_ChkFullTime(tSuchGoldWeek_Activities_Count["ActivityTime"]) then
		if Sys_ChkDayTime(tSuchGoldWeek_Activities_Count["ClearTime"]) then
			if not (sDataStr5 == "1") then
				tSuchGoldWeek_Activities_Data["RedPacket"][20835] = 0
				tSuchGoldWeek_Activities_Data["RedPacket"][20836] = 0
				tSuchGoldWeek_Activities_Data["RedPacket"][21893] = 0
				tSuchGoldWeek_Activities_Data["RedPacket"][21894] = 0
				Sys_SetSynaGlobalDataStr5(nGlobalId,"1")
				Sys_SetSynaGlobalData1(nGlobalId,0)
				Sys_SetSynaGlobalData2(nGlobalId,0)
				Sys_SetSynaGlobalData3(nGlobalId,0)
				Sys_SetSynaGlobalData4(nGlobalId,0)
			end
		else
			if sDataStr5 == "1" then
				Sys_SetSynaGlobalDataStr5(nGlobalId,"0")
			end
		end
	end
end

-- 初始化动态吗数据
function SuchGoldWeek_Activities_SetDynaData()
	local nGlobalId = tSuchGoldWeek_Activities_Count["GlobalId"]
	tSuchGoldWeek_Activities_Data["RedPacket"][20835] = Get_SysDynaGlobalData1(nGlobalId)
	tSuchGoldWeek_Activities_Data["RedPacket"][20836] = Get_SysDynaGlobalData2(nGlobalId)
	tSuchGoldWeek_Activities_Data["RedPacket"][21893] = Get_SysDynaGlobalData3(nGlobalId)
	tSuchGoldWeek_Activities_Data["RedPacket"][21894] = Get_SysDynaGlobalData4(nGlobalId)
end

--------------------------------------翻牌器
-- 打开
function SuchGoldWeek_Activities_OpenRewardInterface(nItemId)
		-- 过期删除
	if not SuchGoldWeek_Activities_OverDel(nItemId) then
		return
	end
	
	User_OpenRewardInterface(tSuchGoldWeek_Activities_Count["Card"][nItemId])
end

-- 重新打开
function SuchGoldWeek_Activities_Repeat(nUserId,nType)
	local nItemId = tSuchGoldWeek_Activities_Count["Card"][nType]
		-- 过期删除
	if not Sys_ChkFullTime(tSuchGoldWeek_Activities_Count["ActivityTime"]) then
		if Item_ChkItem(nItemId,1,0,nUserId) and Item_DelAllItemByType(nItemId,nUserId) then
			User_TalkChannel2005(tSuchGoldWeek_Activities_Text["OverDue"],nUserId)
			local sLog = tSuchGoldWeek_Activities_Log["OverDue"]
			Sys_SaveActionFestivalLog(string.format(sLog,nItemId))
 		end
		return false
	end
	
	if not Item_ChkItem(tSuchGoldWeek_Activities_Count["Card"][nType],1,0,nUserId) then
		return
	end
	
	User_OpenRewardInterface(nType,nUserId)
end

--------------------------------------SQL接入
function SuchGoldWeek_Activities_MsgBox()
	if not Sys_ChkFullTime(tSuchGoldWeek_Activities_Count["ActivityTime"]) then
		return
	end
	local sText = tSuchGoldWeek_Activities_Text["MsgBox"]
	local sFunc = "</F>SuchGoldWeek_Activities_FindWay"
	Sys_MsgBox(sText,sFunc)
end

-- 寻路
function SuchGoldWeek_Activities_FindWay()
	local nPosX = tSuchGoldWeek_Activities_FindWay[1]["PosX"]
	local nPosY = tSuchGoldWeek_Activities_FindWay[1]["PosY"]
	local nMapId = tSuchGoldWeek_Activities_FindWay[1]["MapId"]
	local nNpcId = tSuchGoldWeek_Activities_FindWay[1]["NpcId"]
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
end
--------------------------------------NPC模块-------------------------------------------
-- 赌场道具商
tNpcFace[4874] = 4
tNpcGossip[20833] = tNpcGossip[20833] or DefaultNpc:new{}
tNpcGossip[20833]["OptionHidden"] = 1
tNpcGossip[20833]["DialogueText"] = tSuchGoldWeek_Activities_Text[20833] 
-- 活动前
tNpcGossip[20833]["Text1-1"] = {111,112}
tNpcGossip[20833]["tOption1-1"] = {111}
tNpcGossip[20833]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tSuchGoldWeek_Activities_Count["ActivityTime"])
end

-- 活动后
tNpcGossip[20833]["Text1-2"] = {121}
tNpcGossip[20833]["tOption1-2"] = {121}
tNpcGossip[20833]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tSuchGoldWeek_Activities_Count["ActivityTime"])
end

-- 活动中
-- 点击打开天石商店

-- 赌场地图
tNpcFace[4906] = 4
tNpcGossip[21889] = tNpcGossip[20833]
tNpcFace[4907] = 2
tNpcGossip[21890] = tNpcGossip[20833]
tNpcFace[4908] = 3
tNpcGossip[21891] = tNpcGossip[20833]

-- 骰子赌荷官 20834
tNpcFace[4875] = 1
tNpcGossip[20834] = tNpcGossip[20834] or DefaultNpc:new{}
tNpcGossip[20834]["OptionHidden"] = 1
tNpcGossip[20834]["DialogueText"] = tSuchGoldWeek_Activities_Text[20834]
-- 活动前
tNpcGossip[20834]["Text1-1"] = {111,112,113}
tNpcGossip[20834]["tOption1-1"] = {111}
tNpcGossip[20834]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tSuchGoldWeek_Activities_Count["ActivityTime"])
end

-- 活动后
tNpcGossip[20834]["Text1-2"] = {121}
tNpcGossip[20834]["tOption1-2"] = {121}
tNpcGossip[20834]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tSuchGoldWeek_Activities_Count["ActivityTime"])
end

-- 活动中
tNpcGossip[20834]["Text1-3"] = {131,132,133,134,135,136,137}
tNpcGossip[20834]["tOption1-3"] = {131,132,133,134}
tNpcGossip[20834]["ChkFunc1-3"] = function ()
	local nNpcId = Get_NpcId()
	local nData = SuchGoldWeek_Activities_GetStcValue(nNpcId)
	if nData == 0 then
		nData = tSuchGoldWeek_Activities_Count["BetMoney"]
	end
	local sText = tSuchGoldWeek_Activities_Text[nNpcId]["Text137"]
	tNpcGossip[nNpcId]["Text137"] = string.format(sText,nData)
	return true
end
-- 1、调整每注金额。
tNpcGossip[20834]["OptionFunc131"] = "SuchGoldWeek_Activities_AdjustBetMoney</N>20834"
-- 2、单双玩法。
tNpcGossip[20834]["OptionFunc132"] = "LinkNpcGossipFunc_New</N>20834</S>3-1"
-- 3、大小玩法。
tNpcGossip[20834]["OptionFunc133"] = "LinkNpcGossipFunc_New</N>20834</S>4-1"
-- 4、豹子玩法。
tNpcGossip[20834]["OptionFunc134"] = "LinkNpcGossipFunc_New</N>20834</S>5-1"

-- 1、调整每注金额。
tNpcGossip[20834]["Text2-1"] = {211,212}
-- 接、输入金额
-- 【成功】
tNpcGossip[20834]["Text2-2"] = {221}
tNpcGossip[20834]["tOption2-2"] = {221}
tNpcGossip[20834]["OptionPoint221"] = 1
-- 【失败，输入金额低于2万金币】
tNpcGossip[20834]["Text2-3"] = {231}
tNpcGossip[20834]["tOption2-3"] = {231}
tNpcGossip[20834]["OptionFunc231"] = "SuchGoldWeek_Activities_AdjustBetMoney</N>20834"
-- 【失败，输入非法字符】
tNpcGossip[20834]["Text2-4"] = {241}
tNpcGossip[20834]["tOption2-4"] = {241}
tNpcGossip[20834]["OptionFunc241"] ="SuchGoldWeek_Activities_AdjustBetMoney</N>20834"
-- 【失败，输入金额超过金额】
tNpcGossip[20834]["Text2-5"] = {251}
tNpcGossip[20834]["tOption2-5"] = {251}
tNpcGossip[20834]["OptionFunc251"] ="SuchGoldWeek_Activities_AdjustBetMoney</N>20834"

-- 接2、单双玩法
tNpcGossip[20834]["Text3-1"] = {311,312,313,314,315,316}
tNpcGossip[20834]["tOption3-1"] = {311,312,313}
tNpcGossip[20834]["ChkFunc3-1"] = function ()
	local nNpcId = Get_NpcId()
	local nData = SuchGoldWeek_Activities_GetStcValue(nNpcId)
	if nData == 0 then
		nData = tSuchGoldWeek_Activities_Count["BetMoney"]
	end
	local sText = tSuchGoldWeek_Activities_Text[nNpcId]["Text316"]
	tNpcGossip[nNpcId]["Text316"] = string.format(sText,nData)
	return true
end
-- 2-1、买单（1赔1）。
tNpcGossip[20834]["OptionFunc311"] = "SuchGoldWeek_Activities_Bet</N>20834</N>1"
-- 2-2、买双（1赔1）。
tNpcGossip[20834]["OptionFunc312"] = "SuchGoldWeek_Activities_Bet</N>20834</N>2"
-- 2-3、其它玩法。
tNpcGossip[20834]["OptionPoint313"] = 1
  -- 接2~2、买单、买双
-- 【押注成功，105提示】 点击确定则接NPC主对白
-- 【成功，押对了】 系统提示
-- 【成功，押错了】 系统提示
-- 【失败，金币不足】
tNpcGossip[20834]["Text3-2"] = {321}
tNpcGossip[20834]["tOption3-2"] = {321}
tNpcGossip[20834]["OptionPoint321"] = 1
-- 【失败，输入金额超过金额】
tNpcGossip[20834]["Text3-3"] = {331}
tNpcGossip[20834]["tOption3-3"] = {331}
tNpcGossip[20834]["OptionPoint331"] = 1
-- 【失败，金币上限】
tNpcGossip[20834]["Text3-4"] = {341}
tNpcGossip[20834]["tOption3-4"] = {341}
tNpcGossip[20834]["OptionPoint341"] = 1

-- 接3、大小玩法
tNpcGossip[20834]["Text4-1"] = {411,412,413,414,415,416}
tNpcGossip[20834]["tOption4-1"] = {411,412,313}
tNpcGossip[20834]["ChkFunc4-1"] = function ()
	local nNpcId = Get_NpcId()
	local nData = SuchGoldWeek_Activities_GetStcValue(nNpcId)
	if nData == 0 then
		nData = tSuchGoldWeek_Activities_Count["BetMoney"]
	end
	local sText = tSuchGoldWeek_Activities_Text[nNpcId]["Text416"]
	tNpcGossip[nNpcId]["Text416"] = string.format(sText,nData)
	return true
end
-- 3-1、买小（1赔1）。
tNpcGossip[20834]["OptionFunc411"] = "SuchGoldWeek_Activities_Bet</N>20834</N>3"
-- 3-2、买大（1赔1）。
tNpcGossip[20834]["OptionFunc412"] = "SuchGoldWeek_Activities_Bet</N>20834</N>4"
-- 3-3、其它玩法。    ===（返回上一层）
-- 接3-1~3-2、买小、买大
-- 【押注成功，105提示】  点击确定则接NPC主对白
-- 【成功，押对了】系统提示
-- 【成功，押错了】系统提示
-- 【失败，金币不足】 3-2

-- 接4、豹子玩法
tNpcGossip[20834]["Text5-1"] = {511,512,513,514,515}
tNpcGossip[20834]["tOption5-1"] = {511,512,513,514,515,516,517,313}
tNpcGossip[20834]["ChkFunc5-1"] = function ()
	local nNpcId = Get_NpcId()
	local nData = SuchGoldWeek_Activities_GetStcValue(nNpcId)
	if nData == 0 then
		nData = tSuchGoldWeek_Activities_Count["BetMoney"]
	end
	local sText = tSuchGoldWeek_Activities_Text[nNpcId]["Text515"]
	tNpcGossip[nNpcId]["Text515"] = string.format(sText,nData)
	return true
end
-- 4-1、买豹子（1赔36）。
tNpcGossip[20834]["OptionFunc511"] = "SuchGoldWeek_Activities_Bet</N>20834</N>5"
-- 4-2、单买豹子1（1赔216）。
tNpcGossip[20834]["OptionFunc512"] = "SuchGoldWeek_Activities_Bet</N>20834</N>6</N>1"
-- 4-3、单买豹子2（1赔216）。
tNpcGossip[20834]["OptionFunc513"] = "SuchGoldWeek_Activities_Bet</N>20834</N>6</N>2"
-- 4-4、单买豹子3（1赔216）。
tNpcGossip[20834]["OptionFunc514"] = "SuchGoldWeek_Activities_Bet</N>20834</N>6</N>3"
-- 4-5、单买豹子4（1赔216）。
tNpcGossip[20834]["OptionFunc515"] = "SuchGoldWeek_Activities_Bet</N>20834</N>6</N>4"
-- 4-6、单买豹子5（1赔216）。
tNpcGossip[20834]["OptionFunc516"] = "SuchGoldWeek_Activities_Bet</N>20834</N>6</N>5"
-- 4-7、单买豹子6（1赔216）。
tNpcGossip[20834]["OptionFunc517"] = "SuchGoldWeek_Activities_Bet</N>20834</N>6</N>6"
-- 4-8、其它玩法。    ===（返回上一层）
-- 接4-1~4-7、买豹子
--  【下注成功，买豹子】  点击确定则接NPC主对白
-- 【下注成功，单买豹子1~6】 点击确定则接NPC主对白
-- 【成功，押对了】系统提示
-- 【成功，押错了】系统提示
-- 【失败，金币不足】 3-2

-- 赌场地图
tNpcGossip[21892] = tNpcGossip[20834]

-- -散财童子
tNpcFace[4876] = 20
tNpcGossip[20835] = tNpcGossip[20835] or DefaultNpc:new{}
tNpcGossip[20835]["OptionHidden"] = 1
tNpcGossip[20835]["DialogueText"] = tSuchGoldWeek_Activities_Text[20835] 
-- 活动前
tNpcGossip[20835]["Text1-1"] = {111,112,113}
tNpcGossip[20835]["tOption1-1"] = {111}
tNpcGossip[20835]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tSuchGoldWeek_Activities_Count["ActivityTime"])
end

-- 活动后
tNpcGossip[20835]["Text1-2"] = {121}
tNpcGossip[20835]["tOption1-2"] = {121}
tNpcGossip[20835]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tSuchGoldWeek_Activities_Count["ActivityTime"])
end

-- 活动中
-- 【今日还有剩余数量，玩家未预约成功】
tNpcGossip[20835]["Text1-3"] = {131,132,133,134}
tNpcGossip[20835]["tOption1-3"] = {131,132}
tNpcGossip[20835]["ChkFunc1-3"] = function ()
	local nNpcId = Get_NpcId()
	-- 红包剩余数量
	local nNum = tSuchGoldWeek_Activities_Data["RedPacket"][nNpcId]
	local sOptionText = tSuchGoldWeek_Activities_Text[nNpcId]["Option131"]
	tNpcGossip[nNpcId]["Option131"] = string.format(sOptionText,nNum)
	if nNum >= tSuchGoldWeek_Activities_Count["Limit"] then
		return true
	end
	
	SuchGoldWeek_Activities_ClearStcValue(nNpcId)
	-- 判断是否预约
	local nData = SuchGoldWeek_Activities_GetStcValue(nNpcId)
	local nEvent = tSuchGoldWeek_Activities_Stc[nNpcId]["EventType"]
	local nType = tSuchGoldWeek_Activities_Stc[nNpcId]["DataType"]
	if nData < 1 then
		return true
	-- elseif nData >= 1 and not Task_StcInterval(nEvent,nType,1,2) then
		-- return true
	end
	return false
end
-- 1、抢鸿运红包。
tNpcGossip[20835]["OptionFunc131"] = "SuchGoldWeek_Activities_RedPacket</N>20835"

-- 【玩家预约成功，未满5分钟】
tNpcGossip[20835]["Text1-4"] = {251}
tNpcGossip[20835]["tOption1-4"] = {251}
tNpcGossip[20835]["ChkFunc1-4"] = function ()
	local nNpcId = Get_NpcId()
	SuchGoldWeek_Activities_ClearStcValue(nNpcId)
	-- 【时间间隔提示】
	local nEvent = tSuchGoldWeek_Activities_Stc[nNpcId]["EventType"]
	local nType = tSuchGoldWeek_Activities_Stc[nNpcId]["DataType"]
	local nData = SuchGoldWeek_Activities_GetStcValue(nNpcId)
	if nData >= 1 and not Task_StcInterval(nEvent,nType,1,2) then
		local nTime = os.time()
		local nOldTime = Get_UserStcTimestampValue(nEvent,nType)
		local nLasTime = math.ceil(60-(nTime-nOldTime)/60)
		local sText = tSuchGoldWeek_Activities_Text[nNpcId]["Text251"]
		tNpcGossip[nNpcId]["Text251"] = string.format(sText,nLasTime)
		return true
	end
	return false
end

-- 【玩家预约成功，已满5分钟】
tNpcGossip[20835]["Text1-5"] = {151}
tNpcGossip[20835]["tOption1-5"] = {151,152}
tNpcGossip[20835]["ChkFunc1-5"] = function ()
	local nNpcId = Get_NpcId()
	SuchGoldWeek_Activities_ClearStcValue(nNpcId)
	-- 判断预约时间
	local nData = SuchGoldWeek_Activities_GetStcValue(nNpcId)
	local nEvent = tSuchGoldWeek_Activities_Stc[nNpcId]["EventType"]
	local nType = tSuchGoldWeek_Activities_Stc[nNpcId]["DataType"]
	if nData >= 1 and Task_StcInterval(nEvent,nType,1,2) then
		return true
	end
	return false
end
-- 1、领取鸿运红包。
tNpcGossip[20835]["OptionFunc151"] = "SuchGoldWeek_Activities_ReceiveItem</N>20835"
-- 2、告辞。

-- 接1、我要鸿运红包
-- 【成功】
tNpcGossip[20835]["Text2-1"] = {211,212}
tNpcGossip[20835]["tOption2-1"] = {211}
-- 【失败，每小时只能领取1个】
tNpcGossip[20835]["Text2-2"] = {221}
tNpcGossip[20835]["tOption2-2"] = {221}
-- 【失败，已被领取完】
tNpcGossip[20835]["Text2-3"] = {231}
tNpcGossip[20835]["tOption2-3"] = {231}

-- 接1、领取鸿运红包
-- 【成功】 提示
-- 【失败，背包空间不足】
tNpcGossip[20835]["Text2-4"] = {241}
tNpcGossip[20835]["tOption2-4"] = {241}
-- 【时间间隔提示】
tNpcGossip[20835]["Text2-5"] = {251}
tNpcGossip[20835]["tOption2-5"] = {251}

-- 赌场老板 20836
tNpcFace[4877] = 15
tNpcGossip[20836] = tNpcGossip[20836] or DefaultNpc:new{}
tNpcGossip[20836]["OptionHidden"] = 1
tNpcGossip[20836]["DialogueText"] = tSuchGoldWeek_Activities_Text[20836] 
-- 活动前
tNpcGossip[20836]["Text1-1"] = {111,112,113}
tNpcGossip[20836]["tOption1-1"] = {111}
tNpcGossip[20836]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tSuchGoldWeek_Activities_Count["ActivityTime"])
end

-- 活动后
tNpcGossip[20836]["Text1-2"] = {121}
tNpcGossip[20836]["tOption1-2"] = {121}
tNpcGossip[20836]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tSuchGoldWeek_Activities_Count["ActivityTime"])
end

-- 活动中
-- 【今日还有剩余数量，玩家未预约成功】
tNpcGossip[20836]["Text1-3"] = {131,132,133,134}
tNpcGossip[20836]["tOption1-3"] = {131,132}
tNpcGossip[20836]["ChkFunc1-3"] = function ()
	local nNpcId = Get_NpcId()
	-- 红包剩余数量
	SuchGoldWeek_Activities_ClearStcValue(nNpcId)
	local nNum = tSuchGoldWeek_Activities_Data["RedPacket"][nNpcId]
	local sOptionText = tSuchGoldWeek_Activities_Text[nNpcId]["Option131"]
	tNpcGossip[nNpcId]["Option131"] = string.format(sOptionText,nNum)
	if nNum >= tSuchGoldWeek_Activities_Count["Limit"] then
		return true
	end
	
	-- 判断是否预约
	local nData = SuchGoldWeek_Activities_GetStcValue(nNpcId)
	local nEvent = tSuchGoldWeek_Activities_Stc[nNpcId]["EventType"]
	local nType = tSuchGoldWeek_Activities_Stc[nNpcId]["DataType"]
	if nData < 1 then
		return true
	-- elseif nData >= 1 and not Task_StcInterval(nEvent,nType,1,2) then
		-- return true
	end
	return false
end
-- 1、抢鸿运红包。
tNpcGossip[20836]["OptionFunc131"] = "SuchGoldWeek_Activities_RedPacket</N>20836"
-- 【玩家预约成功，未满5分钟】
tNpcGossip[20836]["Text1-4"] = {251}
tNpcGossip[20836]["tOption1-4"] = {251}
tNpcGossip[20836]["ChkFunc1-4"] = function ()
	local nNpcId = Get_NpcId()
	SuchGoldWeek_Activities_ClearStcValue(nNpcId)
	-- 【时间间隔提示】
	local nEvent = tSuchGoldWeek_Activities_Stc[nNpcId]["EventType"]
	local nType = tSuchGoldWeek_Activities_Stc[nNpcId]["DataType"]
	local nData = SuchGoldWeek_Activities_GetStcValue(nNpcId)
	if nData >= 1 and not Task_StcInterval(nEvent,nType,1,2) then
		local nTime = os.time()
		local nOldTime = Get_UserStcTimestampValue(nEvent,nType)
		local nLasTime = math.ceil(60-(nTime-nOldTime)/60)
		local sText = tSuchGoldWeek_Activities_Text[nNpcId]["Text251"]
		tNpcGossip[nNpcId]["Text251"] = string.format(sText,nLasTime)
		return true
	end
	return false
end
-- 【玩家预约成功，已满5分钟】
tNpcGossip[20836]["Text1-5"] = {151}
tNpcGossip[20836]["tOption1-5"] = {151,152}
tNpcGossip[20836]["ChkFunc1-5"] = function ()
	local nNpcId = Get_NpcId()
	SuchGoldWeek_Activities_ClearStcValue(nNpcId)
	-- 判断预约时间
	local nData = SuchGoldWeek_Activities_GetStcValue(nNpcId)
	local nEvent = tSuchGoldWeek_Activities_Stc[nNpcId]["EventType"]
	local nType = tSuchGoldWeek_Activities_Stc[nNpcId]["DataType"]
	if nData >= 1 and Task_StcInterval(nEvent,nType,1,2) then
		return true
	end
	return false
end
-- 1、领取鸿运红包。
tNpcGossip[20836]["OptionFunc151"] = "SuchGoldWeek_Activities_ReceiveItem</N>20836"

-- 接1、我要鸿运红包
-- 【成功】
tNpcGossip[20836]["Text2-1"] = {211,212}
tNpcGossip[20836]["tOption2-1"] = {211}
-- 【失败，每小时只能领取1个】
tNpcGossip[20836]["Text2-2"] = {221}
tNpcGossip[20836]["tOption2-2"] = {221}
-- 【失败，已被领取完】
tNpcGossip[20836]["Text2-3"] = {231}
tNpcGossip[20836]["tOption2-3"] = {231}
-- 接1、领取鸿运红包
-- 【成功】 提示
-- 【失败，背包空间不足】
tNpcGossip[20836]["Text2-4"] = {241}
tNpcGossip[20836]["tOption2-4"] = {241}
-- 【时间间隔提示】
tNpcGossip[20836]["Text2-5"] = {251}
tNpcGossip[20836]["tOption2-5"] = {251}

-- 赌场地图
tNpcGossip[21893] = tNpcGossip[20835]
tNpcGossip[21894] = tNpcGossip[20836]

--------------------------------------物品模块-------------------------------------------
-- 3303528,'金币狂欢邀请函'
tItemFace[3303528] = 674

-- 3303529 鸿运红包
tItem[3303529] = tItem[3303529] or {}
tItem[3303529]["Function"] = function(nItemId,sItemName)
	SuchGoldWeek_Activities_OpenItem(nItemId)
end
-- 3303530 金币大礼袋
tItem[3303530] = tItem[3303529]
-- 赌场地图
tItem[3303626] = tItem[3303529]
tItem[3303627] = tItem[3303529]

-- 3303536,'1级金币骰子'
tItem[3303536] = tItem[3303536] or {}
tItem[3303536]["Function"] = function(nItemId,sItemName)
	SuchGoldWeek_Activities_DrawItem(nItemId)
end
-- 3303537,'2级金币骰子'
tItem[3303537] = tItem[3303536]
-- 3303538,'3级金币骰子'
tItem[3303538] = tItem[3303536]

-- 赌场地图
-- 3303808,'1级金币骰子'
tItem[3303808] = tItem[3303536]
-- 3303809,'2级金币骰子'
tItem[3303809] = tItem[3303536]
-- 3303810,'3级金币骰子'
tItem[3303810] = tItem[3303536]

-- 3303539,'金币翻牌器'
tItem[3303539] = tItem[3303539] or {}
tItem[3303539]["Function"] = function(nItemId,sItemName)
	SuchGoldWeek_Activities_OpenRewardInterface(nItemId)
end
-- 3303540,'高级金币翻牌器'
tItem[3303540] = tItem[3303539]
-- 赌场地图
tItem[3303811] = tItem[3303539]
tItem[3303812] = tItem[3303539]



--------------------------------------时间自检-------------------------------------------
--tOntimerMin_HM	小时/分钟（每天的00点00分到00点05分执行）
--'00:00-00:05'
-- tOntimerMin_HM[0000] = tOntimerMin_HM[0000] or {}
-- table.insert(tOntimerMin_HM[0000],SuchGoldWeek_Activities_ClearGlobalData)
-- tOntimerMin_HM[0001] = tOntimerMin_HM[0001] or {}
-- table.insert(tOntimerMin_HM[0001],SuchGoldWeek_Activities_ClearGlobalData)
-- tOntimerMin_HM[0002] = tOntimerMin_HM[0002] or {}
-- table.insert(tOntimerMin_HM[0002],SuchGoldWeek_Activities_ClearGlobalData)
-- tOntimerMin_HM[0003] = tOntimerMin_HM[0003] or {}
-- table.insert(tOntimerMin_HM[0003],SuchGoldWeek_Activities_ClearGlobalData)
-- tOntimerMin_HM[0004] = tOntimerMin_HM[0004] or {}
-- table.insert(tOntimerMin_HM[0004],SuchGoldWeek_Activities_ClearGlobalData)

-- 服务器启动
-- tServerStart["tFunction"] = tServerStart["tFunction"] or {}
-- table.insert(tServerStart["tFunction"],SuchGoldWeek_Activities_SetDynaData)

--再抽一次配置
--------------------------------------翻牌器-------------------------------------------
tCardsLotteryAgainCost[16] = tCardsLotteryAgainCost[16] or {}
tCardsLotteryAgainCost[16]["tFunction"] = tCardsLotteryAgainCost[16]["tFunction"] or {}
table.insert(tCardsLotteryAgainCost[16]["tFunction"],SuchGoldWeek_Activities_Repeat)

tCardsLotteryAgainCost[17] = tCardsLotteryAgainCost[17] or {}
tCardsLotteryAgainCost[17]["tFunction"] = tCardsLotteryAgainCost[17]["tFunction"] or {}
table.insert(tCardsLotteryAgainCost[17]["tFunction"],SuchGoldWeek_Activities_Repeat)
tCardsLotteryAgainCost[27] = tCardsLotteryAgainCost[16]
tCardsLotteryAgainCost[28] = tCardsLotteryAgainCost[16]