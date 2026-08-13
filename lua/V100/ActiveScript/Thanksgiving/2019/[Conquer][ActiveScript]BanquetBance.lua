------------------------------------------------------------------------------------
--Name：        191028[简体征服][活动脚本]全球感恩节活动-宴会舞蹈(11.26-12.11)
--Creator:      陈莺
--Created:     2019-10-28
------------------------------------------------------------------------------------
--任务需求：

-- taskid：35059 data1	记录今日捡了多少只火鸡
		-- data2	记录国家 1 中文	2英文	3西语	4阿语
		-- data3	1记录领取跳舞奖励
		-- data4	记录玩家userid
		-- data5	记录玩家当日给各自国家加美味值 二进制记录
		
-- 53859
		-- data0	记录国家 	1 中文	2英文美服	3英文欧服	4西语美服	5西语欧服	6阿语
		-- data1 记录舞会排名第1名 国家分数
		-- data2 记录舞会排名第2名
		-- data3 记录舞会排名第3名
		-- data4 记录舞会排名第4名

		-- DataStr1 第1名国家 标志
		-- DataStr2 第2名国家
		-- DataStr3 第3名国家
		-- DataStr4 第4名国家
-- 53896	记录昨日舞会排名
		-- data1 记录舞会排名第1名 国家分数
		-- data2 记录舞会排名第2名
		-- data3 记录舞会排名第3名
		-- data4 记录舞会排名第4名

		-- DataStr1 第1名国家 标志
		-- DataStr2 第2名国家
		-- DataStr3 第3名国家
		-- DataStr4 第4名国家


-- tBanquetBance_
----------------------------------表配置部分--------------------------------------------
local tBanquetBance_Data = {}
	tBanquetBance_Data["Score"] = 1 --跳舞分数
	tBanquetBance_Data["Random"] = 1000 --下火鸡雨概率
	tBanquetBance_Data["GetTime"] = 5 --捡火鸡次数
	tBanquetBance_Data["Level"] = 80
	tBanquetBance_Data["Metempsychosis"] = 0 
	-- 读条的配置
	tBanquetBance_Data["Dance"] = {}
	tBanquetBance_Data["Dance"][1] = {}
	tBanquetBance_Data["Dance"][1]["Secs"] = 5
	tBanquetBance_Data["Dance"][1]["ActionId"] = 1
	tBanquetBance_Data["Dance"][1]["Effect"] = "changefig-1"

	tBanquetBance_Data["Dance"][2] = {}
	tBanquetBance_Data["Dance"][2]["Secs"] = 5
	tBanquetBance_Data["Dance"][2]["ActionId"] = 2
	tBanquetBance_Data["Dance"][2]["Effect"] = "changefig-1"
	 
	tBanquetBance_Data["Dance"][3] = {}
	tBanquetBance_Data["Dance"][3]["Secs"] = 5
	tBanquetBance_Data["Dance"][3]["ActionId"] = 3
	tBanquetBance_Data["Dance"][3]["Effect"] = "changefig-1"
	
	tBanquetBance_Data["Dance"][4] = {}
	tBanquetBance_Data["Dance"][4]["Secs"] = 5
	tBanquetBance_Data["Dance"][4]["ActionId"] = 4
	tBanquetBance_Data["Dance"][4]["Effect"] = "changefig-1"
local tBanquetBance_Func = {}
	tBanquetBance_Func[1] = Sys_SetSynaGlobalDataStr1
	tBanquetBance_Func[2] = Sys_SetSynaGlobalDataStr2
	tBanquetBance_Func[3] = Sys_SetSynaGlobalDataStr3
	tBanquetBance_Func[4] = Sys_SetSynaGlobalDataStr4
	
local tBanquetBance_Stc = {}
	tBanquetBance_Stc[1] = {}
	tBanquetBance_Stc[1]["EventType"] = 209
	tBanquetBance_Stc[1]["DataType"] = 24

local tBanquetBance_Position = {}
	tBanquetBance_Position["Dance"] = {}  --标记玩家是否在跳舞
	tBanquetBance_Position["IndexTime"] = {} 
-- 传送进舞池人数标志
	tBanquetBance_Position["Flag"] = 0
	tBanquetBance_Position["Time"] = 0
	tBanquetBance_Position["Max"] = 48
	tBanquetBance_Position["TimeMax"] = 5
	
	tBanquetBance_Position[1] = {}
	tBanquetBance_Position[1]["MapId"] = 10702
	tBanquetBance_Position[1]["PosX"] = 111
	tBanquetBance_Position[1]["PosY"] = 109
	
	tBanquetBance_Position[2] = {}
	tBanquetBance_Position[2]["MapId"] = 10702
	tBanquetBance_Position[2]["PosX"] = 115
	tBanquetBance_Position[2]["PosY"] = 109
	
	tBanquetBance_Position[3] = {}
	tBanquetBance_Position[3]["MapId"] = 10702
	tBanquetBance_Position[3]["PosX"] = 119
	tBanquetBance_Position[3]["PosY"] = 109
	
	tBanquetBance_Position[4] = {}
	tBanquetBance_Position[4]["MapId"] = 10702
	tBanquetBance_Position[4]["PosX"] = 123
	tBanquetBance_Position[4]["PosY"] = 109
	
	tBanquetBance_Position[5] = {}
	tBanquetBance_Position[5]["MapId"] = 10702
	tBanquetBance_Position[5]["PosX"] = 127
	tBanquetBance_Position[5]["PosY"] = 109
	
	tBanquetBance_Position[6] = {}
	tBanquetBance_Position[6]["MapId"] = 10702
	tBanquetBance_Position[6]["PosX"] = 131
	tBanquetBance_Position[6]["PosY"] = 109
	
	tBanquetBance_Position[7] = {}
	tBanquetBance_Position[7]["MapId"] = 10702
	tBanquetBance_Position[7]["PosX"] = 109
	tBanquetBance_Position[7]["PosY"] = 113
	
	tBanquetBance_Position[8] = {}
	tBanquetBance_Position[8]["MapId"] = 10702
	tBanquetBance_Position[8]["PosX"] = 113
	tBanquetBance_Position[8]["PosY"] = 113

	tBanquetBance_Position[9] = {}
	tBanquetBance_Position[9]["MapId"] = 10702
	tBanquetBance_Position[9]["PosX"] = 117
	tBanquetBance_Position[9]["PosY"] = 113
	
	tBanquetBance_Position[10] = {}
	tBanquetBance_Position[10]["MapId"] = 10702
	tBanquetBance_Position[10]["PosX"] = 121
	tBanquetBance_Position[10]["PosY"] = 113
	
	tBanquetBance_Position[11] = {}
	tBanquetBance_Position[11]["MapId"] = 10702
	tBanquetBance_Position[11]["PosX"] = 125
	tBanquetBance_Position[11]["PosY"] = 113
	
	tBanquetBance_Position[12] = {}
	tBanquetBance_Position[12]["MapId"] = 10702
	tBanquetBance_Position[12]["PosX"] = 129
	tBanquetBance_Position[12]["PosY"] = 113
	
	
	tBanquetBance_Position[13] = {}
	tBanquetBance_Position[13]["MapId"] = 10702
	tBanquetBance_Position[13]["PosX"] = 133
	tBanquetBance_Position[13]["PosY"] = 113
	
	tBanquetBance_Position[14] = {}
	tBanquetBance_Position[14]["MapId"] = 10702
	tBanquetBance_Position[14]["PosX"] = 109
	tBanquetBance_Position[14]["PosY"] = 117
	
	tBanquetBance_Position[15] = {}
	tBanquetBance_Position[15]["MapId"] = 10702
	tBanquetBance_Position[15]["PosX"] = 113
	tBanquetBance_Position[15]["PosY"] = 117
	
	tBanquetBance_Position[16] = {}
	tBanquetBance_Position[16]["MapId"] = 10702
	tBanquetBance_Position[16]["PosX"] = 117
	tBanquetBance_Position[16]["PosY"] = 117
	
	tBanquetBance_Position[17] = {}
	tBanquetBance_Position[17]["MapId"] = 10702
	tBanquetBance_Position[17]["PosX"] = 121
	tBanquetBance_Position[17]["PosY"] = 117
	
	tBanquetBance_Position[18] = {}
	tBanquetBance_Position[18]["MapId"] = 10702
	tBanquetBance_Position[18]["PosX"] = 125
	tBanquetBance_Position[18]["PosY"] = 117
	
	tBanquetBance_Position[19] = {}
	tBanquetBance_Position[19]["MapId"] = 10702
	tBanquetBance_Position[19]["PosX"] = 129
	tBanquetBance_Position[19]["PosY"] = 117
	
	tBanquetBance_Position[20] = {}
	tBanquetBance_Position[20]["MapId"] = 10702
	tBanquetBance_Position[20]["PosX"] = 133
	tBanquetBance_Position[20]["PosY"] = 117
	
	tBanquetBance_Position[21] = {}
	tBanquetBance_Position[21]["MapId"] = 10702
	tBanquetBance_Position[21]["PosX"] = 109
	tBanquetBance_Position[21]["PosY"] = 121
	
	tBanquetBance_Position[22] = {}
	tBanquetBance_Position[22]["MapId"] = 10702
	tBanquetBance_Position[22]["PosX"] = 113
	tBanquetBance_Position[22]["PosY"] = 121
	
	tBanquetBance_Position[23] = {}
	tBanquetBance_Position[23]["MapId"] = 10702
	tBanquetBance_Position[23]["PosX"] = 117
	tBanquetBance_Position[23]["PosY"] = 121
	
	tBanquetBance_Position[24] = {}
	tBanquetBance_Position[24]["MapId"] = 10702
	tBanquetBance_Position[24]["PosX"] = 121
	tBanquetBance_Position[24]["PosY"] = 121
	
	tBanquetBance_Position[25] = {}
	tBanquetBance_Position[25]["MapId"] = 10702
	tBanquetBance_Position[25]["PosX"] = 125
	tBanquetBance_Position[25]["PosY"] = 121
	
	tBanquetBance_Position[26] = {}
	tBanquetBance_Position[26]["MapId"] = 10702
	tBanquetBance_Position[26]["PosX"] = 129
	tBanquetBance_Position[26]["PosY"] = 121
	
	tBanquetBance_Position[27] = {}
	tBanquetBance_Position[27]["MapId"] = 10702
	tBanquetBance_Position[27]["PosX"] = 133
	tBanquetBance_Position[27]["PosY"] = 121
	
	tBanquetBance_Position[28] = {}
	tBanquetBance_Position[28]["MapId"] = 10702
	tBanquetBance_Position[28]["PosX"] = 109
	tBanquetBance_Position[28]["PosY"] = 125
	
	tBanquetBance_Position[29] = {}
	tBanquetBance_Position[29]["MapId"] = 10702
	tBanquetBance_Position[29]["PosX"] = 113
	tBanquetBance_Position[29]["PosY"] = 125
	
	tBanquetBance_Position[30] = {}
	tBanquetBance_Position[30]["MapId"] = 10702
	tBanquetBance_Position[30]["PosX"] = 117
	tBanquetBance_Position[30]["PosY"] = 125
	
	tBanquetBance_Position[31] = {}
	tBanquetBance_Position[31]["MapId"] = 10702
	tBanquetBance_Position[31]["PosX"] = 121
	tBanquetBance_Position[31]["PosY"] = 125
	
	tBanquetBance_Position[32] = {}
	tBanquetBance_Position[32]["MapId"] = 10702
	tBanquetBance_Position[32]["PosX"] = 125
	tBanquetBance_Position[32]["PosY"] = 125
	
	tBanquetBance_Position[33] = {}
	tBanquetBance_Position[33]["MapId"] = 10702
	tBanquetBance_Position[33]["PosX"] = 129
	tBanquetBance_Position[33]["PosY"] = 125
	
	tBanquetBance_Position[34] = {}
	tBanquetBance_Position[34]["MapId"] = 10702
	tBanquetBance_Position[34]["PosX"] = 133
	tBanquetBance_Position[34]["PosY"] = 125
	
	tBanquetBance_Position[35] = {}
	tBanquetBance_Position[35]["MapId"] = 10702
	tBanquetBance_Position[35]["PosX"] = 109
	tBanquetBance_Position[35]["PosY"] = 129
	
	tBanquetBance_Position[36] = {}
	tBanquetBance_Position[36]["MapId"] = 10702
	tBanquetBance_Position[36]["PosX"] = 113
	tBanquetBance_Position[36]["PosY"] = 129
	
	tBanquetBance_Position[37] = {}
	tBanquetBance_Position[37]["MapId"] = 10702
	tBanquetBance_Position[37]["PosX"] = 117
	tBanquetBance_Position[37]["PosY"] = 129
	
	tBanquetBance_Position[38] = {}
	tBanquetBance_Position[38]["MapId"] = 10702
	tBanquetBance_Position[38]["PosX"] = 121
	tBanquetBance_Position[38]["PosY"] = 129
	
	tBanquetBance_Position[39] = {}
	tBanquetBance_Position[39]["MapId"] = 10702
	tBanquetBance_Position[39]["PosX"] = 125
	tBanquetBance_Position[39]["PosY"] = 129
	
	tBanquetBance_Position[40] = {}
	tBanquetBance_Position[40]["MapId"] = 10702
	tBanquetBance_Position[40]["PosX"] = 129
	tBanquetBance_Position[40]["PosY"] = 129
	
	tBanquetBance_Position[41] = {}
	tBanquetBance_Position[41]["MapId"] = 10702
	tBanquetBance_Position[41]["PosX"] = 133
	tBanquetBance_Position[41]["PosY"] = 129
	
	tBanquetBance_Position[42] = {}
	tBanquetBance_Position[42]["MapId"] = 10702
	tBanquetBance_Position[42]["PosX"] = 109
	tBanquetBance_Position[42]["PosY"] = 133
	
	tBanquetBance_Position[43] = {}
	tBanquetBance_Position[43]["MapId"] = 10702
	tBanquetBance_Position[43]["PosX"] = 113
	tBanquetBance_Position[43]["PosY"] = 133
	
	tBanquetBance_Position[44] = {}
	tBanquetBance_Position[44]["MapId"] = 10702
	tBanquetBance_Position[44]["PosX"] = 117
	tBanquetBance_Position[44]["PosY"] = 133
	
	tBanquetBance_Position[45] = {}
	tBanquetBance_Position[45]["MapId"] = 10702
	tBanquetBance_Position[45]["PosX"] = 121
	tBanquetBance_Position[45]["PosY"] = 133
	
	tBanquetBance_Position[46] = {}
	tBanquetBance_Position[46]["MapId"] = 10702
	tBanquetBance_Position[46]["PosX"] = 125
	tBanquetBance_Position[46]["PosY"] = 133
	
	tBanquetBance_Position[47] = {}
	tBanquetBance_Position[47]["MapId"] = 10702
	tBanquetBance_Position[47]["PosX"] = 129
	tBanquetBance_Position[47]["PosY"] = 133
	
	tBanquetBance_Position[48] = {}
	tBanquetBance_Position[48]["MapId"] = 10702
	tBanquetBance_Position[48]["PosX"] = 133
	tBanquetBance_Position[48]["PosY"] = 133
	
	
local tBanquetBance_TaskId = {}
	tBanquetBance_TaskId["Rward"] = 35059
	
local tBanquetBance_TaskData = {}
	tBanquetBance_TaskData[1] = 1
	tBanquetBance_TaskData[2] = 2
	tBanquetBance_TaskData[3] = 4
	tBanquetBance_TaskData[4] = 8
	tBanquetBance_TaskData["Total"] = 15
	
local tBanquetBance_Global = {}
	tBanquetBance_Global["Id"] = 53859
	tBanquetBance_Global["RewardId"] = 53896
	
local tBanquetBance_Action = {}
--排行榜奖励
	tBanquetBance_Action[1] = 575070
	tBanquetBance_Action[2] = 575071
	tBanquetBance_Action[3] = 575072
	tBanquetBance_Action[4] = 575073
	-- 参与奖
	tBanquetBance_Action[11] = 575074
	-- 幸运火鸡雨
	tBanquetBance_Action[12] = 575075
	
local tBanquetBance_Log = {}
	tBanquetBance_Log[1] = "0,0,0,0,12001711,3[1],0,0"
-- 跳完舞后传送的位置
local tBanquetBance_UserMove = {}
	tBanquetBance_UserMove[1] = {}
	tBanquetBance_UserMove[1]["MapId"] = 10702
	tBanquetBance_UserMove[1]["PosX"] = 119
	tBanquetBance_UserMove[1]["PosY"] = 99
	
	tBanquetBance_UserMove[2] = {}
	tBanquetBance_UserMove[2]["MapId"] = 10702
	tBanquetBance_UserMove[2]["PosX"] = 140
	tBanquetBance_UserMove[2]["PosY"] = 121
	
	tBanquetBance_UserMove[3] = {}
	tBanquetBance_UserMove[3]["MapId"] = 10702
	tBanquetBance_UserMove[3]["PosX"] = 121
	tBanquetBance_UserMove[3]["PosY"] = 140
	
	tBanquetBance_UserMove[4] = {}
	tBanquetBance_UserMove[4]["MapId"] = 10702
	tBanquetBance_UserMove[4]["PosX"] = 100
	tBanquetBance_UserMove[4]["PosY"] = 118
	--双龙城
	tBanquetBance_UserMove[5] = {}
	tBanquetBance_UserMove[5]["MapId"] = 1002
	tBanquetBance_UserMove[5]["PosX"] = 383
	tBanquetBance_UserMove[5]["PosY"] = 446

	--双龙城
	tBanquetBance_UserMove[6] = {}
	tBanquetBance_UserMove[6]["MapId"] = 1036
	tBanquetBance_UserMove[6]["PosX"] = 250
	tBanquetBance_UserMove[6]["PosY"] = 246

local tBanquetBance_Move = {}
	tBanquetBance_Move[1] = {}
	tBanquetBance_Move[1][1] = {}
	tBanquetBance_Move[1][1]["MapId"] = 10702
	tBanquetBance_Move[1][1]["PosX"] = 91
	tBanquetBance_Move[1][1]["PosY"] = 108
	tBanquetBance_Move[1][1]["Action"] = 94491480
	tBanquetBance_Move[1][1]["NpcFace"] = 21580
	
	tBanquetBance_Move[1][2] = {}
	tBanquetBance_Move[1][2]["MapId"] = 10702
	tBanquetBance_Move[1][2]["PosX"] = 91
	tBanquetBance_Move[1][2]["PosY"] = 112
	tBanquetBance_Move[1][2]["Action"] = 94491481
	tBanquetBance_Move[1][2]["NpcFace"] = 21580

	tBanquetBance_Move[1][3] = {}
	tBanquetBance_Move[1][3]["MapId"] = 10702
	tBanquetBance_Move[1][3]["PosX"] = 91
	tBanquetBance_Move[1][3]["PosY"] = 116
	tBanquetBance_Move[1][3]["Action"] = 94491482
	tBanquetBance_Move[1][3]["NpcFace"] = 21580

	tBanquetBance_Move[1][4] = {}
	tBanquetBance_Move[1][4]["MapId"] = 10702
	tBanquetBance_Move[1][4]["PosX"] = 91
	tBanquetBance_Move[1][4]["PosY"] = 120
	tBanquetBance_Move[1][4]["Action"] = 94491483
	tBanquetBance_Move[1][4]["NpcFace"] = 21580

	tBanquetBance_Move[1][5] = {}
	tBanquetBance_Move[1][5]["MapId"] = 10702
	tBanquetBance_Move[1][5]["PosX"] = 91
	tBanquetBance_Move[1][5]["PosY"] = 124
	tBanquetBance_Move[1][5]["Action"] = 94491484
	tBanquetBance_Move[1][5]["NpcFace"] = 21580

	tBanquetBance_Move[1][6] = {}
	tBanquetBance_Move[1][6]["MapId"] = 10702
	tBanquetBance_Move[1][6]["PosX"] = 91
	tBanquetBance_Move[1][6]["PosY"] = 128
	tBanquetBance_Move[1][6]["Action"] = 94491485
	tBanquetBance_Move[1][6]["NpcFace"] = 21580

	tBanquetBance_Move[1][7] = {}
	tBanquetBance_Move[1][7]["MapId"] = 10702
	tBanquetBance_Move[1][7]["PosX"] = 91
	tBanquetBance_Move[1][7]["PosY"] = 132
	tBanquetBance_Move[1][7]["Action"] = 94491486
	tBanquetBance_Move[1][7]["NpcFace"] = 21580

	tBanquetBance_Move[1][8] = {}
	tBanquetBance_Move[1][8]["MapId"] = 10702
	tBanquetBance_Move[1][8]["PosX"] = 91
	tBanquetBance_Move[1][8]["PosY"] = 136
	tBanquetBance_Move[1][8]["Action"] = 94491487
	tBanquetBance_Move[1][8]["NpcFace"] = 21580

	tBanquetBance_Move[1][9] = {}
	tBanquetBance_Move[1][9]["MapId"] = 10702
	tBanquetBance_Move[1][9]["PosX"] = 105
	tBanquetBance_Move[1][9]["PosY"] = 92
	tBanquetBance_Move[1][9]["Action"] = 94491488
	tBanquetBance_Move[1][9]["NpcFace"] = 21580

	tBanquetBance_Move[1][10] = {}
	tBanquetBance_Move[1][10]["MapId"] = 10702
	tBanquetBance_Move[1][10]["PosX"] = 109
	tBanquetBance_Move[1][10]["PosY"] = 92
	tBanquetBance_Move[1][10]["Action"] = 94491489
	tBanquetBance_Move[1][10]["NpcFace"] = 21580

	tBanquetBance_Move[1][11] = {}
	tBanquetBance_Move[1][11]["MapId"] = 10702
	tBanquetBance_Move[1][11]["PosX"] = 113
	tBanquetBance_Move[1][11]["PosY"] = 92
	tBanquetBance_Move[1][11]["Action"] = 94491490
	tBanquetBance_Move[1][11]["NpcFace"] = 21580

	tBanquetBance_Move[1][12] = {}
	tBanquetBance_Move[1][12]["MapId"] = 10702
	tBanquetBance_Move[1][12]["PosX"] = 121
	tBanquetBance_Move[1][12]["PosY"] = 92
	tBanquetBance_Move[1][12]["Action"] = 94491491
	tBanquetBance_Move[1][12]["NpcFace"] = 21580

	tBanquetBance_Move[1][13] = {}
	tBanquetBance_Move[1][13]["MapId"] = 10702
	tBanquetBance_Move[1][13]["PosX"] = 125
	tBanquetBance_Move[1][13]["PosY"] = 92
	tBanquetBance_Move[1][13]["Action"] = 94491492
	tBanquetBance_Move[1][13]["NpcFace"] = 21580

	tBanquetBance_Move[1][14] = {}
	tBanquetBance_Move[1][14]["MapId"] = 10702
	tBanquetBance_Move[1][14]["PosX"] = 129
	tBanquetBance_Move[1][14]["PosY"] = 92
	tBanquetBance_Move[1][14]["Action"] = 94491493
	tBanquetBance_Move[1][14]["NpcFace"] = 21580

	tBanquetBance_Move[1][15] = {}
	tBanquetBance_Move[1][15]["MapId"] = 10702
	tBanquetBance_Move[1][15]["PosX"] = 133
	tBanquetBance_Move[1][15]["PosY"] = 92
	tBanquetBance_Move[1][15]["Action"] = 94491494
	tBanquetBance_Move[1][15]["NpcFace"] = 21580

	tBanquetBance_Move[1][16] = {}
	tBanquetBance_Move[1][16]["MapId"] = 10702
	tBanquetBance_Move[1][16]["PosX"] = 146
	tBanquetBance_Move[1][16]["PosY"] = 109
	tBanquetBance_Move[1][16]["Action"] = 94491495
	tBanquetBance_Move[1][16]["NpcFace"] = 21580

	tBanquetBance_Move[1][17] = {}
	tBanquetBance_Move[1][17]["MapId"] = 10702
	tBanquetBance_Move[1][17]["PosX"] = 146
	tBanquetBance_Move[1][17]["PosY"] = 113
	tBanquetBance_Move[1][17]["Action"] = 94491496
	tBanquetBance_Move[1][17]["NpcFace"] = 21580

	tBanquetBance_Move[1][18] = {}
	tBanquetBance_Move[1][18]["MapId"] = 10702
	tBanquetBance_Move[1][18]["PosX"] = 146
	tBanquetBance_Move[1][18]["PosY"] = 117
	tBanquetBance_Move[1][18]["Action"] = 94491497
	tBanquetBance_Move[1][18]["NpcFace"] = 21580

	tBanquetBance_Move[1][19] = {}
	tBanquetBance_Move[1][19]["MapId"] = 10702
	tBanquetBance_Move[1][19]["PosX"] = 146
	tBanquetBance_Move[1][19]["PosY"] = 125
	tBanquetBance_Move[1][19]["Action"] = 94491498
	tBanquetBance_Move[1][19]["NpcFace"] = 21580

	tBanquetBance_Move[1][20] = {}
	tBanquetBance_Move[1][20]["MapId"] = 10702
	tBanquetBance_Move[1][20]["PosX"] = 146
	tBanquetBance_Move[1][20]["PosY"] = 129
	tBanquetBance_Move[1][20]["Action"] = 94491499
	tBanquetBance_Move[1][20]["NpcFace"] = 21580

	tBanquetBance_Move[1][21] = {}
	tBanquetBance_Move[1][21]["MapId"] = 10702
	tBanquetBance_Move[1][21]["PosX"] = 146
	tBanquetBance_Move[1][21]["PosY"] = 133
	tBanquetBance_Move[1][21]["Action"] = 94491500
	tBanquetBance_Move[1][21]["NpcFace"] = 21580

	tBanquetBance_Move[1][22] = {}
	tBanquetBance_Move[1][22]["MapId"] = 10702
	tBanquetBance_Move[1][22]["PosX"] = 146
	tBanquetBance_Move[1][22]["PosY"] = 137
	tBanquetBance_Move[1][22]["Action"] = 94491501
	tBanquetBance_Move[1][22]["NpcFace"] = 21580

	tBanquetBance_Move[1][23] = {}
	tBanquetBance_Move[1][23]["MapId"] = 10702
	tBanquetBance_Move[1][23]["PosX"] = 109
	tBanquetBance_Move[1][23]["PosY"] = 146
	tBanquetBance_Move[1][23]["Action"] = 94491502
	tBanquetBance_Move[1][23]["NpcFace"] = 21580

	tBanquetBance_Move[1][24] = {}
	tBanquetBance_Move[1][24]["MapId"] = 10702
	tBanquetBance_Move[1][24]["PosX"] = 113
	tBanquetBance_Move[1][24]["PosY"] = 146
	tBanquetBance_Move[1][24]["Action"] = 94491503
	tBanquetBance_Move[1][24]["NpcFace"] = 21580

	tBanquetBance_Move[1][25] = {}
	tBanquetBance_Move[1][25]["MapId"] = 10702
	tBanquetBance_Move[1][25]["PosX"] = 117
	tBanquetBance_Move[1][25]["PosY"] = 146
	tBanquetBance_Move[1][25]["Action"] = 94491504
	tBanquetBance_Move[1][25]["NpcFace"] = 21580

	tBanquetBance_Move[1][26] = {}
	tBanquetBance_Move[1][26]["MapId"] = 10702
	tBanquetBance_Move[1][26]["PosX"] = 121
	tBanquetBance_Move[1][26]["PosY"] = 146
	tBanquetBance_Move[1][26]["Action"] = 94491505
	tBanquetBance_Move[1][26]["NpcFace"] = 21580

	tBanquetBance_Move[1][27] = {}
	tBanquetBance_Move[1][27]["MapId"] = 10702
	tBanquetBance_Move[1][27]["PosX"] = 125
	tBanquetBance_Move[1][27]["PosY"] = 146
	tBanquetBance_Move[1][27]["Action"] = 94491506
	tBanquetBance_Move[1][27]["NpcFace"] = 21580

	tBanquetBance_Move[1][28] = {}
	tBanquetBance_Move[1][28]["MapId"] = 10702
	tBanquetBance_Move[1][28]["PosX"] = 129
	tBanquetBance_Move[1][28]["PosY"] = 146
	tBanquetBance_Move[1][28]["Action"] = 94491507
	tBanquetBance_Move[1][28]["NpcFace"] = 21580

	tBanquetBance_Move[1][29] = {}
	tBanquetBance_Move[1][29]["MapId"] = 10702
	tBanquetBance_Move[1][29]["PosX"] = 133
	tBanquetBance_Move[1][29]["PosY"] = 146
	tBanquetBance_Move[1][29]["Action"] = 94491508
	tBanquetBance_Move[1][29]["NpcFace"] = 21580

	tBanquetBance_Move[1][30] = {}
	tBanquetBance_Move[1][30]["MapId"] = 10702
	tBanquetBance_Move[1][30]["PosX"] = 137
	tBanquetBance_Move[1][30]["PosY"] = 146
	tBanquetBance_Move[1][30]["Action"] = 94491509
	tBanquetBance_Move[1][30]["NpcFace"] = 21580

	tBanquetBance_Move[2] = {}
	tBanquetBance_Move[2][1] = {}
	tBanquetBance_Move[2][1]["MapId"] = 10702
	tBanquetBance_Move[2][1]["PosX"] = 95
	tBanquetBance_Move[2][1]["PosY"] = 108
	tBanquetBance_Move[2][1]["Action"] = 94491514
	tBanquetBance_Move[2][1]["NpcFace"] = 21580
	
	tBanquetBance_Move[2][2] = {}
	tBanquetBance_Move[2][2]["MapId"] = 10702
	tBanquetBance_Move[2][2]["PosX"] = 95
	tBanquetBance_Move[2][2]["PosY"] = 112
	tBanquetBance_Move[2][2]["Action"] = 94491515
	tBanquetBance_Move[2][2]["NpcFace"] = 21580

	tBanquetBance_Move[2][3] = {}
	tBanquetBance_Move[2][3]["MapId"] = 10702
	tBanquetBance_Move[2][3]["PosX"] = 95
	tBanquetBance_Move[2][3]["PosY"] = 116
	tBanquetBance_Move[2][3]["Action"] = 94491516
	tBanquetBance_Move[2][3]["NpcFace"] = 21580

	tBanquetBance_Move[2][4] = {}
	tBanquetBance_Move[2][4]["MapId"] = 10702
	tBanquetBance_Move[2][4]["PosX"] = 95
	tBanquetBance_Move[2][4]["PosY"] = 120
	tBanquetBance_Move[2][4]["Action"] = 94491517
	tBanquetBance_Move[2][4]["NpcFace"] = 21580

	tBanquetBance_Move[2][5] = {}
	tBanquetBance_Move[2][5]["MapId"] = 10702
	tBanquetBance_Move[2][5]["PosX"] = 95
	tBanquetBance_Move[2][5]["PosY"] = 124
	tBanquetBance_Move[2][5]["Action"] = 94491518
	tBanquetBance_Move[2][5]["NpcFace"] = 21580

	tBanquetBance_Move[2][6] = {}
	tBanquetBance_Move[2][6]["MapId"] = 10702
	tBanquetBance_Move[2][6]["PosX"] = 95
	tBanquetBance_Move[2][6]["PosY"] = 128
	tBanquetBance_Move[2][6]["Action"] = 94491519
	tBanquetBance_Move[2][6]["NpcFace"] = 21580

	tBanquetBance_Move[2][7] = {}
	tBanquetBance_Move[2][7]["MapId"] = 10702
	tBanquetBance_Move[2][7]["PosX"] = 95
	tBanquetBance_Move[2][7]["PosY"] = 132
	tBanquetBance_Move[2][7]["Action"] = 94491520
	tBanquetBance_Move[2][7]["NpcFace"] = 21580

	tBanquetBance_Move[2][8] = {}
	tBanquetBance_Move[2][8]["MapId"] = 10702
	tBanquetBance_Move[2][8]["PosX"] = 95
	tBanquetBance_Move[2][8]["PosY"] = 136
	tBanquetBance_Move[2][8]["Action"] = 94491521
	tBanquetBance_Move[2][8]["NpcFace"] = 21580

	tBanquetBance_Move[2][9] = {}
	tBanquetBance_Move[2][9]["MapId"] = 10702
	tBanquetBance_Move[2][9]["PosX"] = 105
	tBanquetBance_Move[2][9]["PosY"] = 96
	tBanquetBance_Move[2][9]["Action"] = 94491522
	tBanquetBance_Move[2][9]["NpcFace"] = 21580

	tBanquetBance_Move[2][10] = {}
	tBanquetBance_Move[2][10]["MapId"] = 10702
	tBanquetBance_Move[2][10]["PosX"] = 109
	tBanquetBance_Move[2][10]["PosY"] = 96
	tBanquetBance_Move[2][10]["Action"] = 94491523
	tBanquetBance_Move[2][10]["NpcFace"] = 21580

	tBanquetBance_Move[2][11] = {}
	tBanquetBance_Move[2][11]["MapId"] = 10702
	tBanquetBance_Move[2][11]["PosX"] = 113
	tBanquetBance_Move[2][11]["PosY"] = 96
	tBanquetBance_Move[2][11]["Action"] = 94491524
	tBanquetBance_Move[2][11]["NpcFace"] = 21580

	tBanquetBance_Move[2][12] = {}
	tBanquetBance_Move[2][12]["MapId"] = 10702
	tBanquetBance_Move[2][12]["PosX"] = 121
	tBanquetBance_Move[2][12]["PosY"] = 96
	tBanquetBance_Move[2][12]["Action"] = 94491525
	tBanquetBance_Move[2][12]["NpcFace"] = 21580

	tBanquetBance_Move[2][13] = {}
	tBanquetBance_Move[2][13]["MapId"] = 10702
	tBanquetBance_Move[2][13]["PosX"] = 125
	tBanquetBance_Move[2][13]["PosY"] = 96
	tBanquetBance_Move[2][13]["Action"] = 94491526
	tBanquetBance_Move[2][13]["NpcFace"] = 21580

	tBanquetBance_Move[2][14] = {}
	tBanquetBance_Move[2][14]["MapId"] = 10702
	tBanquetBance_Move[2][14]["PosX"] = 129
	tBanquetBance_Move[2][14]["PosY"] = 96
	tBanquetBance_Move[2][14]["Action"] = 94491527
	tBanquetBance_Move[2][14]["NpcFace"] = 21580

	tBanquetBance_Move[2][15] = {}
	tBanquetBance_Move[2][15]["MapId"] = 10702
	tBanquetBance_Move[2][15]["PosX"] = 133
	tBanquetBance_Move[2][15]["PosY"] = 96
	tBanquetBance_Move[2][15]["Action"] = 94491528
	tBanquetBance_Move[2][15]["NpcFace"] = 21580

	tBanquetBance_Move[2][16] = {}
	tBanquetBance_Move[2][16]["MapId"] = 10702
	tBanquetBance_Move[2][16]["PosX"] = 150
	tBanquetBance_Move[2][16]["PosY"] = 109
	tBanquetBance_Move[2][16]["Action"] = 94491529
	tBanquetBance_Move[2][16]["NpcFace"] = 21580

	tBanquetBance_Move[2][17] = {}
	tBanquetBance_Move[2][17]["MapId"] = 10702
	tBanquetBance_Move[2][17]["PosX"] = 150
	tBanquetBance_Move[2][17]["PosY"] = 113
	tBanquetBance_Move[2][17]["Action"] = 94491530
	tBanquetBance_Move[2][17]["NpcFace"] = 21580

	tBanquetBance_Move[2][18] = {}
	tBanquetBance_Move[2][18]["MapId"] = 10702
	tBanquetBance_Move[2][18]["PosX"] = 150
	tBanquetBance_Move[2][18]["PosY"] = 117
	tBanquetBance_Move[2][18]["Action"] = 94491531
	tBanquetBance_Move[2][18]["NpcFace"] = 21580

	tBanquetBance_Move[2][19] = {}
	tBanquetBance_Move[2][19]["MapId"] = 10702
	tBanquetBance_Move[2][19]["PosX"] = 150
	tBanquetBance_Move[2][19]["PosY"] = 125
	tBanquetBance_Move[2][19]["Action"] = 94491532
	tBanquetBance_Move[2][19]["NpcFace"] = 21580

	tBanquetBance_Move[2][20] = {}
	tBanquetBance_Move[2][20]["MapId"] = 10702
	tBanquetBance_Move[2][20]["PosX"] = 150
	tBanquetBance_Move[2][20]["PosY"] = 129
	tBanquetBance_Move[2][20]["Action"] = 94491533
	tBanquetBance_Move[2][20]["NpcFace"] = 21580

	tBanquetBance_Move[2][21] = {}
	tBanquetBance_Move[2][21]["MapId"] = 10702
	tBanquetBance_Move[2][21]["PosX"] = 150
	tBanquetBance_Move[2][21]["PosY"] = 133
	tBanquetBance_Move[2][21]["Action"] = 94491534
	tBanquetBance_Move[2][21]["NpcFace"] = 21580

	tBanquetBance_Move[2][22] = {}
	tBanquetBance_Move[2][22]["MapId"] = 10702
	tBanquetBance_Move[2][22]["PosX"] = 150
	tBanquetBance_Move[2][22]["PosY"] = 137
	tBanquetBance_Move[2][22]["Action"] = 94491535
	tBanquetBance_Move[2][22]["NpcFace"] = 21580

	tBanquetBance_Move[2][23] = {}
	tBanquetBance_Move[2][23]["MapId"] = 10702
	tBanquetBance_Move[2][23]["PosX"] = 109
	tBanquetBance_Move[2][23]["PosY"] = 150
	tBanquetBance_Move[2][23]["Action"] = 94491536
	tBanquetBance_Move[2][23]["NpcFace"] = 21580

	tBanquetBance_Move[2][24] = {}
	tBanquetBance_Move[2][24]["MapId"] = 10702
	tBanquetBance_Move[2][24]["PosX"] = 113
	tBanquetBance_Move[2][24]["PosY"] = 150
	tBanquetBance_Move[2][24]["Action"] = 94491537
	tBanquetBance_Move[2][24]["NpcFace"] = 21580

	tBanquetBance_Move[2][25] = {}
	tBanquetBance_Move[2][25]["MapId"] = 10702
	tBanquetBance_Move[2][25]["PosX"] = 117
	tBanquetBance_Move[2][25]["PosY"] = 150
	tBanquetBance_Move[2][25]["Action"] = 94491538
	tBanquetBance_Move[2][25]["NpcFace"] = 21580

	tBanquetBance_Move[2][26] = {}
	tBanquetBance_Move[2][26]["MapId"] = 10702
	tBanquetBance_Move[2][26]["PosX"] = 121
	tBanquetBance_Move[2][26]["PosY"] = 150
	tBanquetBance_Move[2][26]["Action"] = 94491539
	tBanquetBance_Move[2][26]["NpcFace"] = 21580

	tBanquetBance_Move[2][27] = {}
	tBanquetBance_Move[2][27]["MapId"] = 10702
	tBanquetBance_Move[2][27]["PosX"] = 125
	tBanquetBance_Move[2][27]["PosY"] = 150
	tBanquetBance_Move[2][27]["Action"] = 94491540
	tBanquetBance_Move[2][27]["NpcFace"] = 21580

	tBanquetBance_Move[2][28] = {}
	tBanquetBance_Move[2][28]["MapId"] = 10702
	tBanquetBance_Move[2][28]["PosX"] = 129
	tBanquetBance_Move[2][28]["PosY"] = 150
	tBanquetBance_Move[2][28]["Action"] = 94491541
	tBanquetBance_Move[2][28]["NpcFace"] = 21580

	tBanquetBance_Move[2][29] = {}
	tBanquetBance_Move[2][29]["MapId"] = 10702
	tBanquetBance_Move[2][29]["PosX"] = 133
	tBanquetBance_Move[2][29]["PosY"] = 150
	tBanquetBance_Move[2][29]["Action"] = 94491542
	tBanquetBance_Move[2][29]["NpcFace"] = 21580

	tBanquetBance_Move[2][30] = {}
	tBanquetBance_Move[2][30]["MapId"] = 10702
	tBanquetBance_Move[2][30]["PosX"] = 137
	tBanquetBance_Move[2][30]["PosY"] = 150
	tBanquetBance_Move[2][30]["Action"] = 94491543
	tBanquetBance_Move[2][30]["NpcFace"] = 21580
	

	
local tBanquetBance_Reward = {}
	-- ===动感舞会礼包
	-- ===索引:tBanquetBance_Reward[3600196][1]
	-- ===删除:3600196,1
	-- ===LogStep: 2[1]
	tBanquetBance_Reward[3600196] = {}
	tBanquetBance_Reward[3600196][1] = {}
	tBanquetBance_Reward[3600196][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tBanquetBance_Reward[3600196][1]["DeleteItem"] = {}
	tBanquetBance_Reward[3600196][1]["DeleteItem"][1] = {}
	tBanquetBance_Reward[3600196][1]["DeleteItem"][1]["Id"] = 3600196 -- 【库】 3600196 【库里没有该物品】[属性:]
	tBanquetBance_Reward[3600196][1]["LogId"] = 12001711
	tBanquetBance_Reward[3600196][1]["LogStep"] = " 2[1]"
	-- 赤炼石+3 - 30%
	tBanquetBance_Reward[3600196][1][1] = {}
	tBanquetBance_Reward[3600196][1][1]["RandomItemChanceType"] = 2
	tBanquetBance_Reward[3600196][1][1]["ItemChance"] = 3000
	tBanquetBance_Reward[3600196][1][1]["RewardItem"] = {}
	tBanquetBance_Reward[3600196][1][1]["RewardItem"][1] = {}
	tBanquetBance_Reward[3600196][1][1]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤炼石+3
	tBanquetBance_Reward[3600196][1][1]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+3赤炼石（赠）*1
	tBanquetBance_Reward[3600196][1][1]["RewardEffect"] = {}
	tBanquetBance_Reward[3600196][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBanquetBance_Reward[3600196][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 - 25%
	tBanquetBance_Reward[3600196][1][2] = {}
	tBanquetBance_Reward[3600196][1][2]["RandomItemChanceType"] = 2
	tBanquetBance_Reward[3600196][1][2]["ItemChance"] = 2500
	tBanquetBance_Reward[3600196][1][2]["RewardItem"] = {}
	tBanquetBance_Reward[3600196][1][2]["RewardItem"][1] = {}
	tBanquetBance_Reward[3600196][1][2]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tBanquetBance_Reward[3600196][1][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	tBanquetBance_Reward[3600196][1][2]["RewardEffect"] = {}
	tBanquetBance_Reward[3600196][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBanquetBance_Reward[3600196][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 25%
	tBanquetBance_Reward[3600196][1][3] = {}
	tBanquetBance_Reward[3600196][1][3]["RandomItemChanceType"] = 2
	tBanquetBance_Reward[3600196][1][3]["ItemChance"] = 2500
	tBanquetBance_Reward[3600196][1][3]["RewardItem"] = {}
	tBanquetBance_Reward[3600196][1][3]["RewardItem"][1] = {}
	tBanquetBance_Reward[3600196][1][3]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tBanquetBance_Reward[3600196][1][3]["RewardItem"][1]["Attr"] = "0 15 3" -- 万能神纹精粹*15
	tBanquetBance_Reward[3600196][1][3]["RewardEffect"] = {}
	tBanquetBance_Reward[3600196][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBanquetBance_Reward[3600196][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 20%
	tBanquetBance_Reward[3600196][1][4] = {}
	tBanquetBance_Reward[3600196][1][4]["RandomItemChanceType"] = 2
	tBanquetBance_Reward[3600196][1][4]["ItemChance"] = 2000
	tBanquetBance_Reward[3600196][1][4]["RewardItem"] = {}
	tBanquetBance_Reward[3600196][1][4]["RewardItem"][1] = {}
	tBanquetBance_Reward[3600196][1][4]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果
	tBanquetBance_Reward[3600196][1][4]["RewardItem"][1]["Attr"] = "0 5" -- 人参果*5
	tBanquetBance_Reward[3600196][1][4]["RewardEffect"] = {}
	tBanquetBance_Reward[3600196][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBanquetBance_Reward[3600196][1][4]["RewardEffect"]["Effect"] = "angelwing"


	tBanquetBance_Reward[3600196][2] = {}
	-- ===
	-- ===动感舞会礼包
	-- ===索引:tBanquetBance_Reward[3600196][2]
	-- ===LogStep: 2[1]
	tBanquetBance_Reward[3600196][2]["ItemChanceSum"] = 10000
	tBanquetBance_Reward[3600196][2]["LogId"] = 12001711
	tBanquetBance_Reward[3600196][2]["LogStep"] = " 2[1]"
	-- 赤炼石+5 - 0.5%
	tBanquetBance_Reward[3600196][2][1] = {}
	tBanquetBance_Reward[3600196][2][1]["RandomItemChanceType"] = 2
	tBanquetBance_Reward[3600196][2][1]["ItemChance"] = 50
	tBanquetBance_Reward[3600196][2][1]["RewardItem"] = {}
	tBanquetBance_Reward[3600196][2][1]["RewardItem"][1] = {}
	tBanquetBance_Reward[3600196][2][1]["RewardItem"][1]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5
	tBanquetBance_Reward[3600196][2][1]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- +5赤炼石（赠）*1
	tBanquetBance_Reward[3600196][2][1]["RewardEffect"] = {}
	tBanquetBance_Reward[3600196][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBanquetBance_Reward[3600196][2][1]["RewardEffect"]["Effect"] = "angelwing"
	tBanquetBance_Reward[3600196][2][1]["RewardBroadCast"] = tBanquetBance_Text[25465]["Msg"]["Broad3"] -- 全服公告
	tBanquetBance_Reward[3600196][2][1]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 晶莹星陨石 - 0.5%
	tBanquetBance_Reward[3600196][2][2] = {}
	tBanquetBance_Reward[3600196][2][2]["RandomItemChanceType"] = 2
	tBanquetBance_Reward[3600196][2][2]["ItemChance"] = 50
	tBanquetBance_Reward[3600196][2][2]["RewardItem"] = {}
	tBanquetBance_Reward[3600196][2][2]["RewardItem"][1] = {}
	tBanquetBance_Reward[3600196][2][2]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tBanquetBance_Reward[3600196][2][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
	tBanquetBance_Reward[3600196][2][2]["RewardEffect"] = {}
	tBanquetBance_Reward[3600196][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBanquetBance_Reward[3600196][2][2]["RewardEffect"]["Effect"] = "angelwing"
	tBanquetBance_Reward[3600196][2][2]["RewardBroadCast"] = tBanquetBance_Text[25465]["Msg"]["Broad4"] -- 全服公告
	tBanquetBance_Reward[3600196][2][2]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 3000气力值 - 1%
	tBanquetBance_Reward[3600196][2][3] = {}
	tBanquetBance_Reward[3600196][2][3]["RandomItemChanceType"] = 2
	tBanquetBance_Reward[3600196][2][3]["ItemChance"] = 100
	tBanquetBance_Reward[3600196][2][3]["RewardStrengthValue"] = {}
	tBanquetBance_Reward[3600196][2][3]["RewardStrengthValue"]["Value"] = 3000 -- 气力值, 【需求】3000气力值
	tBanquetBance_Reward[3600196][2][3]["RewardEffect"] = {}
	tBanquetBance_Reward[3600196][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBanquetBance_Reward[3600196][2][3]["RewardEffect"]["Effect"] = "angelwing"
	tBanquetBance_Reward[3600196][2][3]["RewardBroadCast"] = tBanquetBance_Text[25465]["Msg"]["Broad5"] -- 全服公告
	tBanquetBance_Reward[3600196][2][3]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 没获得 - 98%
	tBanquetBance_Reward[3600196][2][4] = {}
	tBanquetBance_Reward[3600196][2][4]["RandomItemChanceType"] = 2
	tBanquetBance_Reward[3600196][2][4]["ItemChance"] = 9800
	tBanquetBance_Reward[3600196][2][4]["RewardEffect"] = {}
	tBanquetBance_Reward[3600196][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBanquetBance_Reward[3600196][2][4]["RewardEffect"]["Effect"] = "angelwing"


	tBanquetBance_Reward[3314355] = {}
	-- ===全球舞者礼包
	-- ===索引:tBanquetBance_Reward[3314355][1]
	-- ===删除: 3314355,1
	-- ===LogStep: 2[1]
	tBanquetBance_Reward[3314355][1] = {}
	tBanquetBance_Reward[3314355][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tBanquetBance_Reward[3314355][1]["DeleteItem"] = {}
	tBanquetBance_Reward[3314355][1]["DeleteItem"][1] = {}
	tBanquetBance_Reward[3314355][1]["DeleteItem"][1]["Id"] = 3314355 -- 【库】 3314355 【库里没有该物品】[属性:]
	tBanquetBance_Reward[3314355][1]["LogId"] = 12001711
	tBanquetBance_Reward[3314355][1]["LogStep"] = " 2[1]"
	-- 赤炼石+4 - 30%
	tBanquetBance_Reward[3314355][1][1] = {}
	tBanquetBance_Reward[3314355][1][1]["RandomItemChanceType"] = 2
	tBanquetBance_Reward[3314355][1][1]["ItemChance"] = 3000
	tBanquetBance_Reward[3314355][1][1]["RewardItem"] = {}
	tBanquetBance_Reward[3314355][1][1]["RewardItem"][1] = {}
	tBanquetBance_Reward[3314355][1][1]["RewardItem"][1]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】赤炼石+4
	tBanquetBance_Reward[3314355][1][1]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+4赤炼石（赠）*1
	tBanquetBance_Reward[3314355][1][1]["RewardEffect"] = {}
	tBanquetBance_Reward[3314355][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBanquetBance_Reward[3314355][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 - 25%
	tBanquetBance_Reward[3314355][1][2] = {}
	tBanquetBance_Reward[3314355][1][2]["RandomItemChanceType"] = 2
	tBanquetBance_Reward[3314355][1][2]["ItemChance"] = 2500
	tBanquetBance_Reward[3314355][1][2]["RewardItem"] = {}
	tBanquetBance_Reward[3314355][1][2]["RewardItem"][1] = {}
	tBanquetBance_Reward[3314355][1][2]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tBanquetBance_Reward[3314355][1][2]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的明亮星陨石*5
	tBanquetBance_Reward[3314355][1][2]["RewardEffect"] = {}
	tBanquetBance_Reward[3314355][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBanquetBance_Reward[3314355][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 25%
	tBanquetBance_Reward[3314355][1][3] = {}
	tBanquetBance_Reward[3314355][1][3]["RandomItemChanceType"] = 2
	tBanquetBance_Reward[3314355][1][3]["ItemChance"] = 2500
	tBanquetBance_Reward[3314355][1][3]["RewardItem"] = {}
	tBanquetBance_Reward[3314355][1][3]["RewardItem"][1] = {}
	tBanquetBance_Reward[3314355][1][3]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tBanquetBance_Reward[3314355][1][3]["RewardItem"][1]["Attr"] = "0 100 3" -- 万能神纹精粹*100
	tBanquetBance_Reward[3314355][1][3]["RewardEffect"] = {}
	tBanquetBance_Reward[3314355][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBanquetBance_Reward[3314355][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 3000气力值 - 20%
	tBanquetBance_Reward[3314355][1][4] = {}
	tBanquetBance_Reward[3314355][1][4]["RandomItemChanceType"] = 2
	tBanquetBance_Reward[3314355][1][4]["ItemChance"] = 2000
	tBanquetBance_Reward[3314355][1][4]["RewardStrengthValue"] = {}
	tBanquetBance_Reward[3314355][1][4]["RewardStrengthValue"]["Value"] = 3000 -- 气力值, 【需求】3000气力值
	tBanquetBance_Reward[3314355][1][4]["RewardEffect"] = {}
	tBanquetBance_Reward[3314355][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBanquetBance_Reward[3314355][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 4星外套碎片-- 【必给】
	tBanquetBance_Reward[3314355][1][5] = {}
	tBanquetBance_Reward[3314355][1][5]["RandomItemChanceType"] = 1
	tBanquetBance_Reward[3314355][1][5]["RewardItem"] = {}
	tBanquetBance_Reward[3314355][1][5]["RewardItem"][1] = {}
	tBanquetBance_Reward[3314355][1][5]["RewardItem"][1]["Id"] = 3314360 --  3314360 【库里没有该物品】, 【表格】4星外套碎片
	tBanquetBance_Reward[3314355][1][5]["RewardItem"][1]["Attr"] = "0 1" --  3314360 【库里没有该物品】*1
	tBanquetBance_Reward[3314355][1][5]["RewardEffect"] = {}
	tBanquetBance_Reward[3314355][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBanquetBance_Reward[3314355][1][5]["RewardEffect"]["Effect"] = "angelwing"


	tBanquetBance_Reward[3314356] = {}
	-- ===全球舞者精装礼包
	-- ===索引:tBanquetBance_Reward[3314356][1]
	-- ===删除: 3314356,1
	-- ===LogStep: 2[1]
	tBanquetBance_Reward[3314356][1] = {}
	tBanquetBance_Reward[3314356][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tBanquetBance_Reward[3314356][1]["DeleteItem"] = {}
	tBanquetBance_Reward[3314356][1]["DeleteItem"][1] = {}
	tBanquetBance_Reward[3314356][1]["DeleteItem"][1]["Id"] = 3314356 -- 【库】 3314356 【库里没有该物品】[属性:]
	tBanquetBance_Reward[3314356][1]["LogId"] = 12001711
	tBanquetBance_Reward[3314356][1]["LogStep"] = " 2[1]"
	-- 赤炼石+4 - 30%
	tBanquetBance_Reward[3314356][1][1] = {}
	tBanquetBance_Reward[3314356][1][1]["RandomItemChanceType"] = 2
	tBanquetBance_Reward[3314356][1][1]["ItemChance"] = 3000
	tBanquetBance_Reward[3314356][1][1]["RewardItem"] = {}
	tBanquetBance_Reward[3314356][1][1]["RewardItem"][1] = {}
	tBanquetBance_Reward[3314356][1][1]["RewardItem"][1]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】赤炼石+4
	tBanquetBance_Reward[3314356][1][1]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+4赤炼石（赠）*1
	tBanquetBance_Reward[3314356][1][1]["RewardEffect"] = {}
	tBanquetBance_Reward[3314356][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBanquetBance_Reward[3314356][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 - 25%
	tBanquetBance_Reward[3314356][1][2] = {}
	tBanquetBance_Reward[3314356][1][2]["RandomItemChanceType"] = 2
	tBanquetBance_Reward[3314356][1][2]["ItemChance"] = 2500
	tBanquetBance_Reward[3314356][1][2]["RewardItem"] = {}
	tBanquetBance_Reward[3314356][1][2]["RewardItem"][1] = {}
	tBanquetBance_Reward[3314356][1][2]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tBanquetBance_Reward[3314356][1][2]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的明亮星陨石*5
	tBanquetBance_Reward[3314356][1][2]["RewardEffect"] = {}
	tBanquetBance_Reward[3314356][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBanquetBance_Reward[3314356][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 25%
	tBanquetBance_Reward[3314356][1][3] = {}
	tBanquetBance_Reward[3314356][1][3]["RandomItemChanceType"] = 2
	tBanquetBance_Reward[3314356][1][3]["ItemChance"] = 2500
	tBanquetBance_Reward[3314356][1][3]["RewardItem"] = {}
	tBanquetBance_Reward[3314356][1][3]["RewardItem"][1] = {}
	tBanquetBance_Reward[3314356][1][3]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tBanquetBance_Reward[3314356][1][3]["RewardItem"][1]["Attr"] = "0 100 3" -- 万能神纹精粹*100
	tBanquetBance_Reward[3314356][1][3]["RewardEffect"] = {}
	tBanquetBance_Reward[3314356][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBanquetBance_Reward[3314356][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 3000气力值 - 20%
	tBanquetBance_Reward[3314356][1][4] = {}
	tBanquetBance_Reward[3314356][1][4]["RandomItemChanceType"] = 2
	tBanquetBance_Reward[3314356][1][4]["ItemChance"] = 2000
	tBanquetBance_Reward[3314356][1][4]["RewardStrengthValue"] = {}
	tBanquetBance_Reward[3314356][1][4]["RewardStrengthValue"]["Value"] = 3000 -- 气力值, 【需求】3000气力值
	tBanquetBance_Reward[3314356][1][4]["RewardEffect"] = {}
	tBanquetBance_Reward[3314356][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBanquetBance_Reward[3314356][1][4]["RewardEffect"]["Effect"] = "angelwing"


	tBanquetBance_Reward[3314356][2] = {}
	-- ===全球舞者精装礼包
	-- ===索引:tBanquetBance_Reward[3314356][2]
	-- ===LogStep: 2[1]
	tBanquetBance_Reward[3314356][2]["ItemChanceSum"] = 10000
	tBanquetBance_Reward[3314356][2]["LogId"] = 12001711
	tBanquetBance_Reward[3314356][2]["LogStep"] = " 2[1]"
	-- 4星外套碎片 - 50%
	tBanquetBance_Reward[3314356][2][1] = {}
	tBanquetBance_Reward[3314356][2][1]["RandomItemChanceType"] = 2
	tBanquetBance_Reward[3314356][2][1]["ItemChance"] = 5000
	tBanquetBance_Reward[3314356][2][1]["RewardItem"] = {}
	tBanquetBance_Reward[3314356][2][1]["RewardItem"][1] = {}
	tBanquetBance_Reward[3314356][2][1]["RewardItem"][1]["Id"] = 3314360 --  3314360 【库里没有该物品】, 【表格】4星外套碎片
	tBanquetBance_Reward[3314356][2][1]["RewardItem"][1]["Attr"] = "0 1" --  3314360 【库里没有该物品】*1
	tBanquetBance_Reward[3314356][2][1]["RewardEffect"] = {}
	tBanquetBance_Reward[3314356][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBanquetBance_Reward[3314356][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 4星外套碎片 - 50%
	tBanquetBance_Reward[3314356][2][2] = {}
	tBanquetBance_Reward[3314356][2][2]["RandomItemChanceType"] = 2
	tBanquetBance_Reward[3314356][2][2]["ItemChance"] = 5000
	tBanquetBance_Reward[3314356][2][2]["RewardItem"] = {}
	tBanquetBance_Reward[3314356][2][2]["RewardItem"][1] = {}
	tBanquetBance_Reward[3314356][2][2]["RewardItem"][1]["Id"] = 3314360 --  3314360 【库里没有该物品】, 【表格】4星外套碎片
	tBanquetBance_Reward[3314356][2][2]["RewardItem"][1]["Attr"] = "0 2" --  3314360 【库里没有该物品】*2
	tBanquetBance_Reward[3314356][2][2]["RewardEffect"] = {}
	tBanquetBance_Reward[3314356][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBanquetBance_Reward[3314356][2][2]["RewardEffect"]["Effect"] = "angelwing"


	tBanquetBance_Reward[3314357] = {}
	-- ===全球舞者豪华礼包
	-- ===索引:tBanquetBance_Reward[3314357][1]
	-- ===删除: 3314357,1
	-- ===LogStep: 2[1]
	tBanquetBance_Reward[3314357][1] = {}
	tBanquetBance_Reward[3314357][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tBanquetBance_Reward[3314357][1]["DeleteItem"] = {}
	tBanquetBance_Reward[3314357][1]["DeleteItem"][1] = {}
	tBanquetBance_Reward[3314357][1]["DeleteItem"][1]["Id"] = 3314357 -- 【库】 3314357 【库里没有该物品】[属性:]
	tBanquetBance_Reward[3314357][1]["LogId"] = 12001711
	tBanquetBance_Reward[3314357][1]["LogStep"] = " 2[1]"
	-- 赤炼石+4 - 30%
	tBanquetBance_Reward[3314357][1][1] = {}
	tBanquetBance_Reward[3314357][1][1]["RandomItemChanceType"] = 2
	tBanquetBance_Reward[3314357][1][1]["ItemChance"] = 3000
	tBanquetBance_Reward[3314357][1][1]["RewardItem"] = {}
	tBanquetBance_Reward[3314357][1][1]["RewardItem"][1] = {}
	tBanquetBance_Reward[3314357][1][1]["RewardItem"][1]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】赤炼石+4
	tBanquetBance_Reward[3314357][1][1]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+4赤炼石（赠）*1
	tBanquetBance_Reward[3314357][1][1]["RewardEffect"] = {}
	tBanquetBance_Reward[3314357][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBanquetBance_Reward[3314357][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 - 25%
	tBanquetBance_Reward[3314357][1][2] = {}
	tBanquetBance_Reward[3314357][1][2]["RandomItemChanceType"] = 2
	tBanquetBance_Reward[3314357][1][2]["ItemChance"] = 2500
	tBanquetBance_Reward[3314357][1][2]["RewardItem"] = {}
	tBanquetBance_Reward[3314357][1][2]["RewardItem"][1] = {}
	tBanquetBance_Reward[3314357][1][2]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tBanquetBance_Reward[3314357][1][2]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的明亮星陨石*5
	tBanquetBance_Reward[3314357][1][2]["RewardEffect"] = {}
	tBanquetBance_Reward[3314357][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBanquetBance_Reward[3314357][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 25%
	tBanquetBance_Reward[3314357][1][3] = {}
	tBanquetBance_Reward[3314357][1][3]["RandomItemChanceType"] = 2
	tBanquetBance_Reward[3314357][1][3]["ItemChance"] = 2500
	tBanquetBance_Reward[3314357][1][3]["RewardItem"] = {}
	tBanquetBance_Reward[3314357][1][3]["RewardItem"][1] = {}
	tBanquetBance_Reward[3314357][1][3]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tBanquetBance_Reward[3314357][1][3]["RewardItem"][1]["Attr"] = "0 100 3" -- 万能神纹精粹*100
	tBanquetBance_Reward[3314357][1][3]["RewardEffect"] = {}
	tBanquetBance_Reward[3314357][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBanquetBance_Reward[3314357][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 3000气力值 - 20%
	tBanquetBance_Reward[3314357][1][4] = {}
	tBanquetBance_Reward[3314357][1][4]["RandomItemChanceType"] = 2
	tBanquetBance_Reward[3314357][1][4]["ItemChance"] = 2000
	tBanquetBance_Reward[3314357][1][4]["RewardStrengthValue"] = {}
	tBanquetBance_Reward[3314357][1][4]["RewardStrengthValue"]["Value"] = 3000 -- 气力值, 【需求】3000气力值
	tBanquetBance_Reward[3314357][1][4]["RewardEffect"] = {}
	tBanquetBance_Reward[3314357][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBanquetBance_Reward[3314357][1][4]["RewardEffect"]["Effect"] = "angelwing"


	tBanquetBance_Reward[3314357][2] = {}
	-- ===全球舞者豪华礼包
	-- ===索引:tBanquetBance_Reward[3314357][2]
	-- ===LogStep: 2[1]
	tBanquetBance_Reward[3314357][2]["ItemChanceSum"] = 10000
	tBanquetBance_Reward[3314357][2]["LogId"] = 12001711
	tBanquetBance_Reward[3314357][2]["LogStep"] = " 2[1]"
	-- 4星外套碎片 - 50%
	tBanquetBance_Reward[3314357][2][1] = {}
	tBanquetBance_Reward[3314357][2][1]["RandomItemChanceType"] = 2
	tBanquetBance_Reward[3314357][2][1]["ItemChance"] = 5000
	tBanquetBance_Reward[3314357][2][1]["RewardItem"] = {}
	tBanquetBance_Reward[3314357][2][1]["RewardItem"][1] = {}
	tBanquetBance_Reward[3314357][2][1]["RewardItem"][1]["Id"] = 3314360 --  3314360 【库里没有该物品】, 【表格】4星外套碎片
	tBanquetBance_Reward[3314357][2][1]["RewardItem"][1]["Attr"] = "0 2" --  3314360 【库里没有该物品】*2
	tBanquetBance_Reward[3314357][2][1]["RewardEffect"] = {}
	tBanquetBance_Reward[3314357][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBanquetBance_Reward[3314357][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 4星外套碎片 - 50%
	tBanquetBance_Reward[3314357][2][2] = {}
	tBanquetBance_Reward[3314357][2][2]["RandomItemChanceType"] = 2
	tBanquetBance_Reward[3314357][2][2]["ItemChance"] = 5000
	tBanquetBance_Reward[3314357][2][2]["RewardItem"] = {}
	tBanquetBance_Reward[3314357][2][2]["RewardItem"][1] = {}
	tBanquetBance_Reward[3314357][2][2]["RewardItem"][1]["Id"] = 3314360 --  3314360 【库里没有该物品】, 【表格】4星外套碎片
	tBanquetBance_Reward[3314357][2][2]["RewardItem"][1]["Attr"] = "0 3" --  3314360 【库里没有该物品】*3
	tBanquetBance_Reward[3314357][2][2]["RewardEffect"] = {}
	tBanquetBance_Reward[3314357][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBanquetBance_Reward[3314357][2][2]["RewardEffect"]["Effect"] = "angelwing"


	tBanquetBance_Reward[3314358] = {}
	-- ===全球舞王至尊礼包
	-- ===索引:tBanquetBance_Reward[3314358][1]
	-- ===删除: 3314358,1
	-- ===LogStep: 2[1]
	tBanquetBance_Reward[3314358][1] = {}
	tBanquetBance_Reward[3314358][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tBanquetBance_Reward[3314358][1]["DeleteItem"] = {}
	tBanquetBance_Reward[3314358][1]["DeleteItem"][1] = {}
	tBanquetBance_Reward[3314358][1]["DeleteItem"][1]["Id"] = 3314358 -- 【库】 3314358 【库里没有该物品】[属性:]
	tBanquetBance_Reward[3314358][1]["LogId"] = 12001711
	tBanquetBance_Reward[3314358][1]["LogStep"] = " 2[1]"
	-- 赤炼石+4 - 30%
	tBanquetBance_Reward[3314358][1][1] = {}
	tBanquetBance_Reward[3314358][1][1]["RandomItemChanceType"] = 2
	tBanquetBance_Reward[3314358][1][1]["ItemChance"] = 3000
	tBanquetBance_Reward[3314358][1][1]["RewardItem"] = {}
	tBanquetBance_Reward[3314358][1][1]["RewardItem"][1] = {}
	tBanquetBance_Reward[3314358][1][1]["RewardItem"][1]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】赤炼石+4
	tBanquetBance_Reward[3314358][1][1]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+4赤炼石（赠）*1
	tBanquetBance_Reward[3314358][1][1]["RewardEffect"] = {}
	tBanquetBance_Reward[3314358][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBanquetBance_Reward[3314358][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 - 25%
	tBanquetBance_Reward[3314358][1][2] = {}
	tBanquetBance_Reward[3314358][1][2]["RandomItemChanceType"] = 2
	tBanquetBance_Reward[3314358][1][2]["ItemChance"] = 2500
	tBanquetBance_Reward[3314358][1][2]["RewardItem"] = {}
	tBanquetBance_Reward[3314358][1][2]["RewardItem"][1] = {}
	tBanquetBance_Reward[3314358][1][2]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tBanquetBance_Reward[3314358][1][2]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的明亮星陨石*5
	tBanquetBance_Reward[3314358][1][2]["RewardEffect"] = {}
	tBanquetBance_Reward[3314358][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBanquetBance_Reward[3314358][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 25%
	tBanquetBance_Reward[3314358][1][3] = {}
	tBanquetBance_Reward[3314358][1][3]["RandomItemChanceType"] = 2
	tBanquetBance_Reward[3314358][1][3]["ItemChance"] = 2500
	tBanquetBance_Reward[3314358][1][3]["RewardItem"] = {}
	tBanquetBance_Reward[3314358][1][3]["RewardItem"][1] = {}
	tBanquetBance_Reward[3314358][1][3]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tBanquetBance_Reward[3314358][1][3]["RewardItem"][1]["Attr"] = "0 100 3" -- 万能神纹精粹*100
	tBanquetBance_Reward[3314358][1][3]["RewardEffect"] = {}
	tBanquetBance_Reward[3314358][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBanquetBance_Reward[3314358][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 3000气力值 - 20%
	tBanquetBance_Reward[3314358][1][4] = {}
	tBanquetBance_Reward[3314358][1][4]["RandomItemChanceType"] = 2
	tBanquetBance_Reward[3314358][1][4]["ItemChance"] = 2000
	tBanquetBance_Reward[3314358][1][4]["RewardStrengthValue"] = {}
	tBanquetBance_Reward[3314358][1][4]["RewardStrengthValue"]["Value"] = 3000 -- 气力值, 【需求】3000气力值
	tBanquetBance_Reward[3314358][1][4]["RewardEffect"] = {}
	tBanquetBance_Reward[3314358][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBanquetBance_Reward[3314358][1][4]["RewardEffect"]["Effect"] = "angelwing"


	tBanquetBance_Reward[3314358][2] = {}
	-- ===全球舞王至尊礼包
	-- ===索引:tBanquetBance_Reward[3314358][2]
	-- ===LogStep: 2[1]
	tBanquetBance_Reward[3314358][2]["ItemChanceSum"] = 10000
	tBanquetBance_Reward[3314358][2]["LogId"] = 12001711
	tBanquetBance_Reward[3314358][2]["LogStep"] = " 2[1]"
	-- 4星外套碎片 - 50%
	tBanquetBance_Reward[3314358][2][1] = {}
	tBanquetBance_Reward[3314358][2][1]["RandomItemChanceType"] = 2
	tBanquetBance_Reward[3314358][2][1]["ItemChance"] = 5000
	tBanquetBance_Reward[3314358][2][1]["RewardItem"] = {}
	tBanquetBance_Reward[3314358][2][1]["RewardItem"][1] = {}
	tBanquetBance_Reward[3314358][2][1]["RewardItem"][1]["Id"] = 3314360 --  3314360 【库里没有该物品】, 【表格】4星外套碎片
	tBanquetBance_Reward[3314358][2][1]["RewardItem"][1]["Attr"] = "0 3" --  3314360 【库里没有该物品】*3
	tBanquetBance_Reward[3314358][2][1]["RewardEffect"] = {}
	tBanquetBance_Reward[3314358][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBanquetBance_Reward[3314358][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 4星外套碎片 - 50%
	tBanquetBance_Reward[3314358][2][2] = {}
	tBanquetBance_Reward[3314358][2][2]["RandomItemChanceType"] = 2
	tBanquetBance_Reward[3314358][2][2]["ItemChance"] = 5000
	tBanquetBance_Reward[3314358][2][2]["RewardItem"] = {}
	tBanquetBance_Reward[3314358][2][2]["RewardItem"][1] = {}
	tBanquetBance_Reward[3314358][2][2]["RewardItem"][1]["Id"] = 3314360 --  3314360 【库里没有该物品】, 【表格】4星外套碎片
	tBanquetBance_Reward[3314358][2][2]["RewardItem"][1]["Attr"] = "0 4" --  3314360 【库里没有该物品】*4
	tBanquetBance_Reward[3314358][2][2]["RewardEffect"] = {}
	tBanquetBance_Reward[3314358][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBanquetBance_Reward[3314358][2][2]["RewardEffect"]["Effect"] = "angelwing"


	tBanquetBance_Reward[3600195] = {}
	-- ===幸运火鸡雨
	-- ===索引:tBanquetBance_Reward[1]
	-- ===LogStep: 2[1]
	tBanquetBance_Reward[3600195]["ItemChanceSum"] = 10000
	tBanquetBance_Reward[3600195]["DeleteItem"] = {}
	tBanquetBance_Reward[3600195]["DeleteItem"][1] = {}
	tBanquetBance_Reward[3600195]["DeleteItem"][1]["Id"] = 3600195 
	tBanquetBance_Reward[3600195]["DeleteItem"][1]["ItemNum"] = 1

	tBanquetBance_Reward[3600195]["LogId"] = 12001711
	tBanquetBance_Reward[3600195]["LogStep"] = " 2[1]"
	-- 赤炼石+1 - 30%
	tBanquetBance_Reward[3600195][1] = {}
	tBanquetBance_Reward[3600195][1]["RandomItemChanceType"] = 2
	tBanquetBance_Reward[3600195][1]["ItemChance"] = 2500
	tBanquetBance_Reward[3600195][1]["RewardItem"] = {}
	tBanquetBance_Reward[3600195][1]["RewardItem"][1] = {}
	tBanquetBance_Reward[3600195][1]["RewardItem"][1]["Id"] = 730001 -- +1赤炼石[730001][属性:0][叠加:0][金币:0], 【表格】赤炼石+4
	tBanquetBance_Reward[3600195][1]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+4赤炼石（赠）*1
	tBanquetBance_Reward[3600195][1]["RewardEffect"] = {}
	tBanquetBance_Reward[3600195][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBanquetBance_Reward[3600195][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 微光星陨石 - 25%
	tBanquetBance_Reward[3600195][2] = {}
	tBanquetBance_Reward[3600195][2]["RandomItemChanceType"] = 2
	tBanquetBance_Reward[3600195][2]["ItemChance"] = 2500
	tBanquetBance_Reward[3600195][2]["RewardItem"] = {}
	tBanquetBance_Reward[3600195][2]["RewardItem"][1] = {}
	tBanquetBance_Reward[3600195][2]["RewardItem"][1]["Id"] = 3009000 -- 微光星陨石[3009000][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tBanquetBance_Reward[3600195][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*5
	tBanquetBance_Reward[3600195][2]["RewardEffect"] = {}
	tBanquetBance_Reward[3600195][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBanquetBance_Reward[3600195][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 25%
	tBanquetBance_Reward[3600195][3] = {}
	tBanquetBance_Reward[3600195][3]["RandomItemChanceType"] = 2
	tBanquetBance_Reward[3600195][3]["ItemChance"] = 2500
	tBanquetBance_Reward[3600195][3]["RewardItem"] = {}
	tBanquetBance_Reward[3600195][3]["RewardItem"][1] = {}
	tBanquetBance_Reward[3600195][3]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tBanquetBance_Reward[3600195][3]["RewardItem"][1]["Attr"] = "0 1 3" -- 万能神纹精粹*1
	tBanquetBance_Reward[3600195][3]["RewardEffect"] = {}
	tBanquetBance_Reward[3600195][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBanquetBance_Reward[3600195][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 20%
	tBanquetBance_Reward[3600195][4] = {}
	tBanquetBance_Reward[3600195][4]["RandomItemChanceType"] = 2
	tBanquetBance_Reward[3600195][4]["ItemChance"] = 2500
	tBanquetBance_Reward[3600195][4]["RewardItem"] = {}
	tBanquetBance_Reward[3600195][4]["RewardItem"][1] = {}
	tBanquetBance_Reward[3600195][4]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tBanquetBance_Reward[3600195][4]["RewardItem"][1]["Attr"] = "0 1" -- 人参果*1
	tBanquetBance_Reward[3600195][4]["RewardEffect"] = {}
	tBanquetBance_Reward[3600195][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBanquetBance_Reward[3600195][4]["RewardEffect"]["Effect"] = "angelwing"


	tBanquetBance_Reward[3314360] = {}
	-- ===4星外套碎片
	-- ===索引:tBanquetBance_Reward[3314360][1]
	-- ===删除: 3314360,30
	-- ===LogStep: 2[1]
	tBanquetBance_Reward[3314360][1] = {}
	tBanquetBance_Reward[3314360][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tBanquetBance_Reward[3314360][1]["DeleteItem"] = {}
	tBanquetBance_Reward[3314360][1]["DeleteItem"][1] = {}
	tBanquetBance_Reward[3314360][1]["DeleteItem"][1]["Id"] = 3314360 -- 【库】 3314360 【库里没有该物品】[属性:]
	tBanquetBance_Reward[3314360][1]["DeleteItem"][1]["ItemNum"] = 30
	tBanquetBance_Reward[3314360][1]["LogId"] = 12001711
	tBanquetBance_Reward[3314360][1]["LogStep"] = " 2[1]"
	-- 喵基尼【魅力版】
	tBanquetBance_Reward[3314360][1][1] = {}
	tBanquetBance_Reward[3314360][1][1]["RandomItemChanceType"] = 2
	tBanquetBance_Reward[3314360][1][1]["ItemChance"] = 2000
	tBanquetBance_Reward[3314360][1][1]["RewardItem"] = {}
	tBanquetBance_Reward[3314360][1][1]["RewardItem"][1] = {}
	tBanquetBance_Reward[3314360][1][1]["RewardItem"][1]["Id"] = 193555 --喵基尼【魅力版】
	tBanquetBance_Reward[3314360][1][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tBanquetBance_Reward[3314360][1][1]["RewardEffect"] = {}
	tBanquetBance_Reward[3314360][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBanquetBance_Reward[3314360][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 蝶恋花 - 25%
	tBanquetBance_Reward[3314360][1][2] = {}
	tBanquetBance_Reward[3314360][1][2]["RandomItemChanceType"] = 2
	tBanquetBance_Reward[3314360][1][2]["ItemChance"] = 2000
	tBanquetBance_Reward[3314360][1][2]["RewardItem"] = {}
	tBanquetBance_Reward[3314360][1][2]["RewardItem"][1] = {}
	tBanquetBance_Reward[3314360][1][2]["RewardItem"][1]["Id"] = 193695 -- 蝶恋花
	tBanquetBance_Reward[3314360][1][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tBanquetBance_Reward[3314360][1][2]["RewardEffect"] = {}
	tBanquetBance_Reward[3314360][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBanquetBance_Reward[3314360][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 天仙子·星灵 - 25%
	tBanquetBance_Reward[3314360][1][3] = {}
	tBanquetBance_Reward[3314360][1][3]["RandomItemChanceType"] = 2
	tBanquetBance_Reward[3314360][1][3]["ItemChance"] = 2000
	tBanquetBance_Reward[3314360][1][3]["RewardItem"] = {}
	tBanquetBance_Reward[3314360][1][3]["RewardItem"][1] = {}
	tBanquetBance_Reward[3314360][1][3]["RewardItem"][1]["Id"] = 194385 -- 天仙子·星灵
	tBanquetBance_Reward[3314360][1][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tBanquetBance_Reward[3314360][1][3]["RewardEffect"] = {}
	tBanquetBance_Reward[3314360][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBanquetBance_Reward[3314360][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 狐妖装【魅力版】 - 20%
	tBanquetBance_Reward[3314360][1][4] = {}
	tBanquetBance_Reward[3314360][1][4]["RandomItemChanceType"] = 2
	tBanquetBance_Reward[3314360][1][4]["ItemChance"] = 2000
	tBanquetBance_Reward[3314360][1][4]["RewardItem"] = {}
	tBanquetBance_Reward[3314360][1][4]["RewardItem"][1] = {}
	tBanquetBance_Reward[3314360][1][4]["RewardItem"][1]["Id"] = 194405 -- 狐妖装【魅力版】 
	tBanquetBance_Reward[3314360][1][4]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tBanquetBance_Reward[3314360][1][4]["RewardEffect"] = {}
	tBanquetBance_Reward[3314360][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBanquetBance_Reward[3314360][1][4]["RewardEffect"]["Effect"] = "angelwing"
-- 御龙九天
	tBanquetBance_Reward[3314360][1][5] = {}
	tBanquetBance_Reward[3314360][1][5]["RandomItemChanceType"] = 2
	tBanquetBance_Reward[3314360][1][5]["ItemChance"] = 2000
	tBanquetBance_Reward[3314360][1][5]["RewardItem"] = {}
	tBanquetBance_Reward[3314360][1][5]["RewardItem"][1] = {}
	tBanquetBance_Reward[3314360][1][5]["RewardItem"][1]["Id"] = 192615 -- 御龙九天
	tBanquetBance_Reward[3314360][1][5]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tBanquetBance_Reward[3314360][1][5]["RewardEffect"] = {}
	tBanquetBance_Reward[3314360][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBanquetBance_Reward[3314360][1][5]["RewardEffect"]["Effect"] = "angelwing"


	tBanquetBance_Reward[3314360][2] = {}
	-- ===4星外套碎片
	-- ===索引:tBanquetBance_Reward[3314360][2]
	-- ===删除: 3314360,1
	-- ===LogStep: 2[2]
	tBanquetBance_Reward[3314360][2]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tBanquetBance_Reward[3314360][2]["DeleteItem"] = {}
	tBanquetBance_Reward[3314360][2]["DeleteItem"][1] = {}
	tBanquetBance_Reward[3314360][2]["DeleteItem"][1]["Id"] = 3314360 -- 【库】 3314360 【库里没有该物品】[属性:]
	tBanquetBance_Reward[3314360][2]["DeleteItem"][1]["ItemNum"] = 1
	tBanquetBance_Reward[3314360][2]["LogId"] = 12001711
	tBanquetBance_Reward[3314360][2]["LogStep"] = " 2[2]"
	-- 4星外套碎片 - 48%
	tBanquetBance_Reward[3314360][2][1] = {}
	tBanquetBance_Reward[3314360][2][1]["RandomItemChanceType"] = 2
	tBanquetBance_Reward[3314360][2][1]["ItemChance"] = 4800
	tBanquetBance_Reward[3314360][2][1]["RewardItem"] = {}
	tBanquetBance_Reward[3314360][2][1]["RewardItem"][1] = {}
	tBanquetBance_Reward[3314360][2][1]["RewardItem"][1]["Id"] = 3314360 --  3314360 【库里没有该物品】, 【表格】4星外套碎片
	tBanquetBance_Reward[3314360][2][1]["RewardItem"][1]["Attr"] = "0 2" --  3314360 【库里没有该物品】*2
	tBanquetBance_Reward[3314360][2][1]["RewardEffect"] = {}
	tBanquetBance_Reward[3314360][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBanquetBance_Reward[3314360][2][1]["RewardEffect"]["Effect"] = "angelwing"
	tBanquetBance_Reward[3314360][2][1]["Flag"] = 1
	-- 失败 - 52%
	tBanquetBance_Reward[3314360][2][2] = {}
	tBanquetBance_Reward[3314360][2][2]["RandomItemChanceType"] = 2
	tBanquetBance_Reward[3314360][2][2]["ItemChance"] = 5200
	tBanquetBance_Reward[3314360][2][2]["Flag"] = 2
	tBanquetBance_Reward[3314360][2][2]["RewardEffect"] = {}
	tBanquetBance_Reward[3314360][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBanquetBance_Reward[3314360][2][2]["RewardEffect"]["Effect"] = "angelwing"
--火鸡礼包
	tBanquetBance_Reward[1] = {}
	tBanquetBance_Reward[1]["LogId"] = 12001711
	tBanquetBance_Reward[1]["LogStep"] = " 2[1]"
	tBanquetBance_Reward[1]["RewardItem"] = {}
	tBanquetBance_Reward[1]["RewardItem"][1] = {}
	tBanquetBance_Reward[1]["RewardItem"][1]["Id"] = 3600195 
	tBanquetBance_Reward[1]["RewardItem"][1]["Attr"] = "0 1"
	tBanquetBance_Reward[1]["RewardEffect"] = {}
	tBanquetBance_Reward[1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBanquetBance_Reward[1]["RewardEffect"]["Effect"] = "angelwing"
--参与奖
	tBanquetBance_Reward[2] = {}
	tBanquetBance_Reward[2]["LogId"] = 12001711
	tBanquetBance_Reward[2]["LogStep"] = " 3[1]"
	tBanquetBance_Reward[2]["RewardItem"] = {}
	tBanquetBance_Reward[2]["RewardItem"][1] = {}
	tBanquetBance_Reward[2]["RewardItem"][1]["Id"] = 3600196 
	tBanquetBance_Reward[2]["RewardItem"][1]["Attr"] = "0 1"
	tBanquetBance_Reward[2]["RewardEffect"] = {}
	tBanquetBance_Reward[2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBanquetBance_Reward[2]["RewardEffect"]["Effect"] = "angelwing"

	
	tBanquetBance_Reward[11] = {}
	tBanquetBance_Reward[11]["ItemChanceSum"] = 10000
	
	tBanquetBance_Reward[11][1] = {}
	tBanquetBance_Reward[11][1]["RandomItemChanceType"] = 2
	tBanquetBance_Reward[11][1]["ItemChance"] = 2500
	tBanquetBance_Reward[11][1]["Item_1"] = 1
	
	tBanquetBance_Reward[11][2] = {}
	tBanquetBance_Reward[11][2]["RandomItemChanceType"] = 2
	tBanquetBance_Reward[11][2]["ItemChance"] = 2500
	tBanquetBance_Reward[11][2]["Item_1"] = 2
	
	tBanquetBance_Reward[11][3] = {}
	tBanquetBance_Reward[11][3]["RandomItemChanceType"] = 2
	tBanquetBance_Reward[11][3]["ItemChance"] = 2500
	tBanquetBance_Reward[11][3]["Item_1"] = 3

	tBanquetBance_Reward[11][4] = {}
	tBanquetBance_Reward[11][4]["RandomItemChanceType"] = 2
	tBanquetBance_Reward[11][4]["ItemChance"] = 2500
	tBanquetBance_Reward[11][4]["Item_1"] = 4

	
----------------------------------逻辑部分---------------------------------------------
-- 进入舞池
function BanquetBance_GotoMap(nNpcId,nNum)
	if not Sys_ChkFullTime(tActivityTime["BanquetBance"]["ActivityTime"])  then
		return
	end
	local nUserId = Get_UserId()
-- 判断玩家等级
	if not User_JudgeLevelAndMetempsychosis(tBanquetBance_Data["Level"],tBanquetBance_Data["Metempsychosis"],nUserId)then
		return 
	end

	if tBanquetBance_Position["Dance"][nUserId] == nil then
		tBanquetBance_Position["Dance"][nUserId] = 0
		tBanquetBance_Position["IndexTime"][nUserId] = 0
	end
	local nNowTime = os.time() - tBanquetBance_Position["IndexTime"][nUserId]
	-- 空表或则时间超过30秒
	if  (nNowTime >= tBanquetBance_Position["TimeMax"]) then
		tBanquetBance_Position["Dance"][nUserId] = 0
		tBanquetBance_Position["IndexTime"][nUserId] = 0
	end
	---在跳舞中
	if tBanquetBance_Position["Dance"][nUserId] >= 1 then
		return
	end
--判断背包空间
	if not RewardTemplate_CheckSpace(tBanquetBance_Reward[2],nUserId) then
		return
	end
	local nTaskId = tBanquetBance_TaskId["Rward"]
	local nValue = Get_TaskDetailData5(nTaskId,nUserId)
	local nData = nValue + tBanquetBance_TaskData[nNum]
	-- 判断是否领过奖励
	if Sys_ParseNumbersContain(tBanquetBance_TaskData[nNum],nValue) then
		tNpcGossip[nNpcId]["OptionFunc211"] = "BanquetBance_GotoDance</N>" .. nNum .. "</N>" .. nNpcId
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	--今日第一次
	Sys_MsgBox(tBanquetBance_Text[nNpcId]["Msg"]["Success"],nil,nil,nUserId)
	User_TalkChannel2005(tBanquetBance_Text[nNpcId]["Msg"]["Success"],nUserId)
	BanquetBance_GotoDance(nNum,nNpcId)
end

function BanquetBance_GotoDance(nNum,nNpcId)
	local nUserId = Get_UserId()
	local nFlag = tBanquetBance_Position["Flag"]
	if nFlag >= tBanquetBance_Position["Max"] then
		Sys_MsgBox(tBanquetBance_Text[25444]["Msg"]["TooPeople"],nil,nil,nUserId)
		return
	end
	--加次数
	local nIndex = tBanquetBance_Position["Flag"] + 1
	if nIndex == tBanquetBance_Position["Max"] then
		tBanquetBance_Position["Time"] = os.time()
	end
	tBanquetBance_Position["Flag"] = nIndex
	local nMapId = tBanquetBance_Position[nIndex]["MapId"]
	local nPosX = tBanquetBance_Position[nIndex]["PosX"]
	local nPosY = tBanquetBance_Position[nIndex]["PosY"]
	-- 传送进舞池
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,1,1,1,nUserId)
	local nSecs = tBanquetBance_Data["Dance"][nNum]["Secs"]
	local nActionId = tBanquetBance_Data["Dance"][nNum]["ActionId"]
	local sContent = tBanquetBance_Text[nNum]
	-- 开始跳舞 标记在跳舞中
	tBanquetBance_Position["Dance"][nUserId] = 1
	tBanquetBance_Position["IndexTime"][nUserId] = os.time()
	----播放光效
	User_EffectAdd("self",tBanquetBance_Data["Dance"][nNum]["Effect"],nUserId)

	--读条 跳舞
	User_SetExplore(nSecs,sContent,nActionId,"BanquetBance_DanceReward</N>".. nNpcId .. "</N>" .. nNum,"NULL",nUserId)

end
function BanquetBance_DelEffect(nUserId)
	local nNowUserId = nUserId or Get_UserId()
	User_EffectDel("self",tBanquetBance_Data["Dance"][1]["Effect"],nNowUserId)

end

--每种舞蹈首次完成均可获得1份奖励。
function BanquetBance_DanceReward(nNpcId,nNum,nUserId)
	local nNowUserId = nUserId or Get_UserId()
	if not Sys_ChkFullTime(tActivityTime["BanquetBance"]["ActivityTime"]) then
		return
	end
--判断背包空间
	if not RewardTemplate_CheckSpace(tBanquetBance_Reward[2],nNowUserId) then
		return
	end
	--增加美味值
	BanquetBance_AddDanceReward(nNpcId,nNum,nNowUserId)
	
	if tBanquetBance_Position["Flag"] == tBanquetBance_Position["Max"] then
		tBanquetBance_Position["Flag"] = 0
		tBanquetBance_Position["Time"] = 0
	end
	tBanquetBance_Position["Dance"][nNowUserId] = 0
	tBanquetBance_Position["IndexTime"][nNowUserId] = 0
	BanquetBance_DelEffect(nUserId)
end
function BanquetBance_ChkReward(nNum,nUserId)
	local nNowUserId = nUserId or Get_UserId() 
	local nTaskId = tBanquetBance_TaskId["Rward"]
	local nValue = Get_TaskDetailData5(nTaskId,nNowUserId)
	local nData = nValue + tBanquetBance_TaskData[nNum]
	--判断今日是否已加美味值
	if Sys_ParseNumbersContain(tBanquetBance_TaskData[nNum],nValue) then
		return true
	else
		return false
	end
end


-- 增加美味值
function BanquetBance_AddDanceReward(nNpcId,nNum,nNowUserId)
	if not Sys_ChkFullTime(tActivityTime["BanquetBance"]["ActivityTime"])  then
		return
	end
	--传送出舞池
	local nTaskId = tBanquetBance_TaskId["Rward"]
	local nCountryFlag = Get_TaskDetailData2(nTaskId,nNowUserId)

	BanquetBance_GotoPlace(nCountryFlag,nNowUserId)
	--判断今日是否已加美味值
	if BanquetBance_ChkReward(nNum,nNowUserId) then
		return
	end
	local nValue = Get_TaskDetailData5(nTaskId,nNowUserId)
	local nData = nValue + tBanquetBance_TaskData[nNum]
	
	--打掩码
	Task_SetTaskDetailData5(nTaskId,nData,nNowUserId) 
	-- Task_SetTaskDetailData1(nTaskId,nData,nNowUserId) 
	-- local nValueNum = Get_TaskDetailData3(nTaskId,nNowUserId)
	-- if not Sys_ParseNumbersContain(tBanquetBance_TaskData[1],nValueNum) then
		-- local nAddData = nValueNum + tBanquetBance_TaskData[1]
		-- Task_SetTaskDetailData3(nTaskId,nAddData,nNowUserId) 
	-- end
	-- 给奖励
	-- BanquetBance_RewardMail(11,nNowUserId)
	RewardTemplate_UseItemAndMsg(tBanquetBance_Reward[2],nNowUserId)
	Sys_MsgBox(tBanquetBance_Text[nNpcId]["Msg"][11],nil,nil,nNowUserId)
	-- if nValue <= 0 then
	---给自己国家加值
		-- local nGlobal = tBanquetBance_Global["Id"]
		-- local nPos = BanquetBance_GetRank(nNum,nNowUserId)
		-- if nPos == 0 then
			-- for i = 1,4 do
				-- local nData = Get_SysDynaGlobalData(nGlobal,i)
				-- if nData == 0 then
					-- nPos = i
					-- break
				-- end
			-- end
		-- end 
		-- local nScore = Get_SysDynaGlobalData(nGlobal,nPos)
		-- local nAddScore = tBanquetBance_Data["Score"]
		-- Sys_SetSynaGlobalData(nGlobal,nPos,nScore+nAddScore)
		-- local sFunc = tBanquetBance_Func[nPos]
		-- local sCountry = tostring(BanquetBance_JubCountry())
		-- sFunc(nGlobal,sCountry)
		--更新排行榜
		-- BanquetBance_UpdateRank(nNowUserId)
	-- end
	--移出NPC(下火鸡雨) 10%概率
	if Sys_Random(tBanquetBance_Data["Random"],10000) then
		local nFlag = math.random(1,2)
		
		for a,b in pairs(tBanquetBance_Move[nFlag]) do
			local nMapId = b["MapId"]
			local nPosX = b["PosX"]
			local nPosY = b["PosY"]
			local nAction = b["Action"]
			local nNpcFace = b["NpcFace"]
			local sName = tBanquetBance_Text["NpcName"][nFlag][a]
			local nNpcNum = Get_NpcCountByName(sName,nNowUserId)
			if nNpcNum == 0 then
				Npc_CreateDynaNpc(sName,2,128,nNpcFace,0,nNowUserId,nMapId,nPosX,nPosY,0,0,0,nAction)
			end
		end
		--全服公告
		Sys_SystemBroadcast(tBanquetBance_Text["Broad"])
	end
end

function BanquetBance_GotoPlace(nNum,nNowUserId)
	local nMapId = tBanquetBance_UserMove[nNum]["MapId"]
	local nPosX = tBanquetBance_UserMove[nNum]["PosX"]
	local nPosY = tBanquetBance_UserMove[nNum]["PosY"]
	-- 传送出舞池
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,5,5,1,nNowUserId)
end


function BanquetBance_ComeBacke()
	-- local nNowUserId = Get_UserId()
	ThanksgivingPray_ChgMap()
	-- BanquetBance_DelEffect(nNowUserId)

end

-- 更新排行榜
function BanquetBance_UpdateRank(nNowUserId)
	if not Sys_ChkFullTime(tActivityTime["BanquetBance"]["ActivityTime"])  then
		return
	end
	local nGlobal = tBanquetBance_Global["Id"]
	local nTaskId = tBanquetBance_TaskId["Rward"]
	local tRank = {}
	for i = 1,4 do
		local nData = Get_SysDynaGlobalData(nGlobal,i,nNowUserId)
		local sCountry = Get_SysDynaGlobalDataStr(nGlobal,i,nNowUserId)
		if sCountry == "" or sCountry == "null" then
			sCountry = tostring(Get_TaskDetailData2(nTaskId,nNowUserId))
		end
		tRank[i] = {}
		tRank[i]["Score"] = nData == "" and 0 or tonumber(nData)
		tRank[i]["Country"] = sCountry == "" and "null" or sCountry
	end
	-- 排序
	table.sort(tRank,function(a,b)return (a.Score > b.Score) end)
	for i = 1,4 do
		local nScore = tRank[i]["Score"]
		local sCountry = tRank[i]["Country"]
		local sFunc = tBanquetBance_Func[i]
		sFunc(nGlobal,sCountry)
		Sys_SetSynaGlobalData(nGlobal,i,nScore)
	end
end
-- 判断进入跨国时间
function BanquetBance_JubTime()
	if not Sys_ChkFullTime(tActivityTime["BanquetBance"]["ActivityTime"]) then
		return
	end
	local nGlobal = tBanquetBance_Global["Id"]
	local nData = Get_SysDynaGlobalData(nGlobal,0)
	for a,b in pairs(tActivityTime["BanquetBance"][nData]) do
		if Sys_ChkDayTime(b) then
			return true
		end
	end
	return false
end
--判断那个国家  1中文	2英文	3西语	4阿语
function BanquetBance_JubCountry()
	local nGlobal = tBanquetBance_Global["Id"]
	local nData = Get_SysDynaGlobalData(nGlobal,0)
	if nData == 3 then
		nData = 2
	end
	if nData == 5 then
		nData = 4
	end
	return nData
end

--文字排名
function BanquetBance_RankText(nNpcId)
	for nPos = 1,4 do
		local nIndex = 123
		local nSysDyGlobId = tBanquetBance_Global["Id"]
		local nData = Get_SysDynaGlobalData(nSysDyGlobId,nPos)
		local sStr = tBanquetBance_Text["Flag"]
		if nData > 0 then
			local nFlag = tonumber(Get_SysDynaGlobalDataStr(nSysDyGlobId,nPos))
			sStr = tBanquetBance_Text[nNpcId]["Msg"]["Country"][nFlag]
		end
		local sIndex = tBanquetBance_Text[nNpcId]["Text" .. nIndex + nPos]
		local sText =Sys_Alignment(sIndex,2,nData,24,sStr,47) .. "\n"
		tNpcGossip[nNpcId]["Text" .. nIndex+nPos] = sText
	end
	return true
end

function BanquetBance_RankText311(nNpcId)
	for nPos = 1,4 do
		local nIndex = 313
		local nSysDyGlobId = tBanquetBance_Global["RewardId"]
		local nData = Get_SysDynaGlobalData(nSysDyGlobId,nPos)
		local sStr = tBanquetBance_Text["Flag"]
		if nData > 0 then
			local nFlag = tonumber(Get_SysDynaGlobalDataStr(nSysDyGlobId,nPos))
			sStr = tBanquetBance_Text[nNpcId]["Msg"]["Country"][nFlag]
		end
		local sIndex = tBanquetBance_Text[nNpcId]["Text" .. nIndex + nPos]
		local sText =Sys_Alignment(sIndex,2,nData,24,sStr,47) .. "\n"
		tNpcGossip[nNpcId]["Text" .. nIndex+nPos] = sText
	end
	return true
end

function BanquetBance_JubRewardRank(nNpcId)
	if not Sys_ChkFullTime(tActivityTime["BanquetBance"]["AfTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return false
	end
	-- if Sys_ChkDayTime(tActivityTime["BanquetBance"][1]) then
		-- LinkNpcGossipFunc_New(nNpcId,"3-2")
		-- return false
	-- end
	-- local nSysDyGlobId = tBanquetBance_Global["RewardId"]
	-- local nData = Get_SysDynaGlobalData(nSysDyGlobId,1)
	-- if nData <= 0 then
		-- LinkNpcGossipFunc_New(nNpcId,"3-2")
		-- return false
	-- end
	LinkNpcGossipFunc_New(nNpcId,"3-1")
	return true
end

---领取排行榜奖励
function BanquetBance_RewardRank(nNpcId)
	-- if not Sys_ChkFullTime(tActivityTime["BanquetBance"]["ActivityTime"]) then
		-- return
	-- end
	local nUserId = Get_UserId()
	local nTaskId = tBanquetBance_TaskId["Rward"]
	local nNum = Get_TaskDetailData2(nTaskId,nUserId)  --国家
	local nData = Get_TaskDetailData3(nTaskId,nUserId)
	local nValue = Get_TaskDetailData5(nTaskId,nUserId)
	if nData >= 1 then
		Sys_MsgBox(tBanquetBance_Text[nNpcId]["Msg"]["Getted"],nil,nil,nUserId)
		return
	end
	--判断是否跳完4支舞
	if nValue ~= tBanquetBance_TaskData["Total"] then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	--打掩码
	Task_SetTaskDetailData3(nTaskId,1,nUserId) 
	--邮件发奖
	local flat,tNum = Probabil_RandomAward(tBanquetBance_Reward,11)  
	local nFlag = tNum[1]["tAward"][1]["Item_1"]
	User_EffectAdd("self",tBanquetBance_Reward[3314357][1][2]["RewardEffect"]["Effect"],nUserId)
	BanquetBance_RewardMail(nFlag,nUserId)
end
--邮件发奖
function BanquetBance_RewardMail(nFlag,nUserId)
	local nTaskId = tBanquetBance_TaskId["Rward"]
	local nServerId = Get_UserServerId(nUserId)
	local nOldUserId = Get_TaskDetailData4(nTaskId,nUserId)
	if nOldUserId ~= 0 then
		local nActionId = tBanquetBance_Action[nFlag]
		local sSender = tBanquetBance_Text["Mail"][nFlag]["Sender"]
		local sTitle = tBanquetBance_Text["Mail"][nFlag]["Title"]
		local sContent = tBanquetBance_Text["Mail"][nFlag]["Content"]
		Sys_SendMail(nOldUserId,0,0,nActionId,0,30,sSender,sTitle,sContent,nServerId)
	end
end
--获取国家名次
function BanquetBance_GetRank(nNum,nUserId)
	local nTaskId = tBanquetBance_TaskId["Rward"]
	local nCountry = Get_TaskDetailData2(nTaskId,nUserId)
	for nPos = 1,4 do
		local nNum = tonumber(Get_SysDynaGlobalDataStr(tBanquetBance_Global["Id"],nPos))
		if nCountry == nNum then
			return nPos
		end
	end
	return 0
end
--获取国家名次
function BanquetBance_GetYesterdayRank(nNum,nUserId)
	local nTaskId = tBanquetBance_TaskId["Rward"]
	local nCountry = Get_TaskDetailData2(nTaskId,nUserId)
	for nPos = 1,4 do
		local nNum = tonumber(Get_SysDynaGlobalDataStr(tBanquetBance_Global["RewardId"],nPos))
		if nCountry == nNum then
			return nPos
		end
	end
	return 0
end
----进入跨国
function BanquetBance_GotMulMap()
-- 判断玩家等级
	if not User_JudgeLevelAndMetempsychosis(tBanquetBance_Data["Level"],tBanquetBance_Data["Metempsychosis"])then
		return false
	end
	
	local nUserId = Get_UserId()
	local nTaskId = tBanquetBance_TaskId["Rward"]
	if not Task_ChkTaskDetail(nTaskId,nUserId) then
		if not Task_AddTaskDetail(nTaskId,0,nUserId) then
			return false
		end
	end
	-- 清taskid
	BanquetBance_SetTask()
	--打时间戳
	local nEvent = tBanquetBance_Stc[1]["EventType"]
	local nType = tBanquetBance_Stc[1]["DataType"]
	Task_SetStatistic(nEvent,nType,1,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)

	--获取国家存入taskid中
	local nFlag = BanquetBance_JubCountry()
	Task_SetTaskDetailData2(nTaskId,nFlag) 
	--记录玩家本服userid
	Task_SetTaskDetailData4(nTaskId,nUserId)
	--进入跨国
	-- Sys_SaveActionFestivalLog(tBanquetBance_Log[1])
	if Sys_EnterServer(998,12,nUserId,118) then
	-- if Sys_EnterServer(102,12,nUserId,118) then
		-- 提示
		return true
	end
end
--隔天掩码清零
function BanquetBance_SetTask()
	local nTaskId = tBanquetBance_TaskId["Rward"]
	local nUserId = Get_UserId()
	local nEvent = tBanquetBance_Stc[1]["EventType"]
	local nType = tBanquetBance_Stc[1]["DataType"]

	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		Task_SetTaskDetailData1(nTaskId,0,nUserId) 
		Task_SetTaskDetailData5(nTaskId,0,nUserId) 
		Task_SetTaskDetailData3(nTaskId,0,nUserId) 
	end
end

----点击NPC
function BanquetBance_LinkNpc(nFlag,nIndex)
	local nUserId = Get_UserId()
	--判断是否领过5次奖励
	local nTaskId = tBanquetBance_TaskId["Rward"]
	local nValue = Get_TaskDetailData1(nTaskId,nUserId)
	local nData = nValue + 1
	if nValue >= tBanquetBance_Data["GetTime"] then
		-- 提示
		Sys_MsgBox(tBanquetBance_Text[25444]["Msg"]["Not"],nil,nil,nUserId)
		return
	end
	--判断背包空间
	if not RewardTemplate_CheckSpace(tBanquetBance_Reward[1],nUserId) then
		return
	end
	--删除NPC
	local nNpcFace = tBanquetBance_Move[nFlag][nIndex]["NpcFace"]
	local sNpcName = tBanquetBance_Text["NpcName"][nFlag][nIndex]
	local nMapId = tBanquetBance_Move[nFlag][nIndex]["MapId"]
	Npc_DelDynaNpc(nMapId,"name",sNpcName)

	-- 打掩码
	Task_SetTaskDetailData1(nTaskId,nData,nUserId) 
	--获得物品
	RewardTemplate_UseItemAndMsg(tBanquetBance_Reward[1],nUserId)

	-- BanquetBance_RewardMail(12,nUserId)
	-- User_EffectAdd("self",tBanquetBance_Data["Dance"][1]["Effect"],nUserId)
end
-- 4星外套碎片
function BanquetBance_GetItem(nItemId,nNum)
	local nUserId = Get_UserId()
	local nItemNum = tBanquetBance_Reward[3314360][nNum]["DeleteItem"][1]["ItemNum"]
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum) then
		if nNum == 1 then
			Sys_MsgBox(tBanquetBance_Text[3314360]["Msg"]["NoGet"],nil,nil,nUserId)
		end
		return
	end
	--背包空间不足
	if not  RewardTemplate_ChkRandomSpace(tBanquetBance_Reward[3314360],nNum,nUserId) then
		return
	end
	if nNum == 1 then
		local tReward = RewardTemplate_RandomReward(tBanquetBance_Reward[3314360],nNum,nUserId)
		local nItem = tReward[1]["tAward"][1]["RewardItem"][1]["Id"]
		local sAddItemName = Get_ItemtypeName(nItem)
		local sStr = string.format(tBanquetBance_Text[3314360]["Msg"]["Get"],sAddItemName)
		Sys_MsgBox(sStr,nil,nil,nUserId)
		return
	end
	local tReward = RewardTemplate_RandomReward(tBanquetBance_Reward[3314360],nNum,nUserId)
	local nFlag = tReward[1]["tAward"][1]["Flag"]
	if nFlag == 1 then
		Sys_MsgBox(tBanquetBance_Text[3314360]["Msg"]["Success"],"LinkItemGossipFunc_New</N>3314360</S>" .. "1-1",nil,nUserId)
		return
	end
	if Item_ChkItem(nItemId) then
		Sys_MsgBox(tBanquetBance_Text[3314360]["Msg"]["Fail"],"LinkItemGossipFunc_New</N>3314360</S>" .. "1-1",nil,nUserId)
		return
	end
	Sys_MsgBox(tBanquetBance_Text[3314360]["Msg"]["Fail"],nil,nil,nUserId)
end

---超过时间清表
function BanquetBance_Brush()
	if not Sys_ChkFullTime(tActivityTime["BanquetBance"]["ActivityTime"]) then
		return
	end
	local nNowTime = os.time()
	if tBanquetBance_Position["Time"] <= 0 then
		return
	end
	if nNowTime - tBanquetBance_Position["Time"] >= tBanquetBance_Position["TimeMax"] then
		tBanquetBance_Position["Flag"] = 0 
		tBanquetBance_Position["Time"] = 0
	end
end

---
function BanquetBance_Global()
	local nNewGlobal = tBanquetBance_Global["RewardId"]
	local nGlobal = tBanquetBance_Global["Id"]
	local sFlag = Get_SysDynaGlobalDataStr(nNewGlobal,5)

	if sFlag == "1" then
		return
	end
	for i = 1,4 do
		local nData = Get_SysDynaGlobalData(nGlobal,i)
		local sStr = Get_SysDynaGlobalDataStr(nGlobal,i)
		Sys_SetSynaGlobalData(nNewGlobal,i,nData)
		Sys_SetSynaGlobalDataStr(nNewGlobal,i,sStr)
	end
	for i = 1,4 do
		local nData = Get_SysDynaGlobalData(nGlobal,i)
		local sStr = Get_SysDynaGlobalDataStr(nGlobal,i)
		Sys_SetSynaGlobalData(nGlobal,i,0)
		Sys_SetSynaGlobalDataStr(nGlobal,i,"")
	end
	Sys_SetSynaGlobalDataStr(nNewGlobal,5,"1")
end
function BanquetBance_DelGlobal()
	local nNewGlobal = tBanquetBance_Global["RewardId"]
	Sys_SetSynaGlobalDataStr(nNewGlobal,5,"0")
end



----------------------------------NPC部分---------------------------------------------
-- 舞娘
tNpcFace[6405] = 187
tNpcGossip[25444]= tNpcGossip[25444] or DefaultNpc:new{}
tNpcGossip[25444]["OptionHidden"] = 1
tNpcGossip[25444]["DialogueText"] = tBanquetBance_Text[25444]

tNpcGossip[25444]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[25444]["tOption1-1"] = {121,122,123}
tNpcGossip[25444]["OptionPoint121"] = "3-1"
tNpcGossip[25444]["OptionFunc122"] = "NpcPosition_PathFind</N>25578"  
tNpcGossip[25444]["OptionFunc123"] = "BanquetBance_ComeBacke"  
tNpcGossip[25444]["ChkFunc1-1"]= function()
	BanquetBance_DelEffect(nUserId)
	return true
end
tNpcGossip[25444]["Text3-1"] = {311}
tNpcGossip[25444]["tOption3-1"] = {111,112,113,114,115,116,117,118}
tNpcGossip[25444]["OptionFunc111"] = "BanquetBance_GotoMap</N>25444</N>1"  
tNpcGossip[25444]["OptionFunc112"] = "BanquetBance_GotoMap</N>25444</N>2"  
tNpcGossip[25444]["OptionFunc113"] = "BanquetBance_GotoMap</N>25444</N>3"  
tNpcGossip[25444]["OptionFunc114"] = "BanquetBance_GotoMap</N>25444</N>4" 

tNpcGossip[25444]["OptionFunc115"] = "BanquetBance_GotoMap</N>25444</N>1"  
tNpcGossip[25444]["OptionFunc116"] = "BanquetBance_GotoMap</N>25444</N>2"  
tNpcGossip[25444]["OptionFunc117"] = "BanquetBance_GotoMap</N>25444</N>3"  
tNpcGossip[25444]["OptionFunc118"] = "BanquetBance_GotoMap</N>25444</N>4" 

tNpcGossip[25444]["OptionChkFunc111"]= function()
	return not BanquetBance_ChkReward(1)
end

tNpcGossip[25444]["OptionChkFunc112"]= function()
	return not BanquetBance_ChkReward(2)
end

tNpcGossip[25444]["OptionChkFunc113"]= function()
	return not BanquetBance_ChkReward(3)
end

tNpcGossip[25444]["OptionChkFunc114"]= function()
	return not BanquetBance_ChkReward(4)
end
tNpcGossip[25444]["OptionChkFunc115"]= function()
	return BanquetBance_ChkReward(1)
end

tNpcGossip[25444]["OptionChkFunc116"]= function()
	return BanquetBance_ChkReward(2)
end

tNpcGossip[25444]["OptionChkFunc117"]= function()
	return BanquetBance_ChkReward(3)
end

tNpcGossip[25444]["OptionChkFunc118"]= function()
	return BanquetBance_ChkReward(4)
end
tNpcGossip[25444]["Text2-1"] = {211}
tNpcGossip[25444]["tOption2-1"] = {211,212}
tNpcGossip[25444]["OptionFunc211"] = "BanquetBance_GotoDance</N>1"  


-- 英文
tNpcGossip[25465]= tNpcGossip[25465] or DefaultNpc:new{}
tNpcGossip[25465]["OptionHidden"] = 1
tNpcGossip[25465]["DialogueText"] = tBanquetBance_Text[25465]

tNpcGossip[25465]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[25465]["tOption1-1"] = {121,122,123}
tNpcGossip[25465]["OptionPoint121"] = "3-1"
tNpcGossip[25465]["OptionFunc122"] = "NpcPosition_PathFind</N>25579" 
tNpcGossip[25465]["OptionFunc123"] = "BanquetBance_ComeBacke"   
tNpcGossip[25465]["ChkFunc1-1"]= function()
	BanquetBance_DelEffect(nUserId)
	return true
end

tNpcGossip[25465]["Text3-1"] = {311}
tNpcGossip[25465]["tOption3-1"] = {111,112,113,114,115,116,117,118}
tNpcGossip[25465]["OptionFunc111"] = "BanquetBance_GotoMap</N>25465</N>1"  
tNpcGossip[25465]["OptionFunc112"] = "BanquetBance_GotoMap</N>25465</N>2"  
tNpcGossip[25465]["OptionFunc113"] = "BanquetBance_GotoMap</N>25465</N>3"  
tNpcGossip[25465]["OptionFunc114"] = "BanquetBance_GotoMap</N>25465</N>4" 

tNpcGossip[25465]["OptionFunc115"] = "BanquetBance_GotoMap</N>25465</N>1"  
tNpcGossip[25465]["OptionFunc116"] = "BanquetBance_GotoMap</N>25465</N>2"  
tNpcGossip[25465]["OptionFunc117"] = "BanquetBance_GotoMap</N>25465</N>3"  
tNpcGossip[25465]["OptionFunc118"] = "BanquetBance_GotoMap</N>25465</N>4" 

tNpcGossip[25465]["OptionChkFunc111"]= function()
	return not BanquetBance_ChkReward(1)
end

tNpcGossip[25465]["OptionChkFunc112"]= function()
	return not BanquetBance_ChkReward(2)
end

tNpcGossip[25465]["OptionChkFunc113"]= function()
	return not BanquetBance_ChkReward(3)
end

tNpcGossip[25465]["OptionChkFunc114"]= function()
	return not BanquetBance_ChkReward(4)
end
tNpcGossip[25465]["OptionChkFunc115"]= function()
	return BanquetBance_ChkReward(1)
end

tNpcGossip[25465]["OptionChkFunc116"]= function()
	return BanquetBance_ChkReward(2)
end

tNpcGossip[25465]["OptionChkFunc117"]= function()
	return BanquetBance_ChkReward(3)
end

tNpcGossip[25465]["OptionChkFunc118"]= function()
	return BanquetBance_ChkReward(4)
end

tNpcGossip[25465]["Text2-1"] = {211}
tNpcGossip[25465]["tOption2-1"] = {211,212}

-- 西语
tNpcGossip[25466]= tNpcGossip[25466] or DefaultNpc:new{}
tNpcGossip[25466]["OptionHidden"] = 1
tNpcGossip[25466]["DialogueText"] = tBanquetBance_Text[25466]
tNpcGossip[25466]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[25466]["tOption1-1"] = {121,122,123}
tNpcGossip[25466]["OptionPoint121"] = "3-1"
tNpcGossip[25466]["OptionFunc122"] = "NpcPosition_PathFind</N>25580" 
tNpcGossip[25466]["OptionFunc123"] = "BanquetBance_ComeBacke"    
tNpcGossip[25466]["ChkFunc1-1"]= function()
	BanquetBance_DelEffect(nUserId)
	return true
end
tNpcGossip[25466]["Text3-1"] = {311}
tNpcGossip[25466]["tOption3-1"] = {111,112,113,114,115,116,117,118}
tNpcGossip[25466]["OptionFunc111"] = "BanquetBance_GotoMap</N>25466</N>1"  
tNpcGossip[25466]["OptionFunc112"] = "BanquetBance_GotoMap</N>25466</N>2"  
tNpcGossip[25466]["OptionFunc113"] = "BanquetBance_GotoMap</N>25466</N>3"  
tNpcGossip[25466]["OptionFunc114"] = "BanquetBance_GotoMap</N>25466</N>4" 

tNpcGossip[25466]["OptionFunc115"] = "BanquetBance_GotoMap</N>25466</N>1"  
tNpcGossip[25466]["OptionFunc116"] = "BanquetBance_GotoMap</N>25466</N>2"  
tNpcGossip[25466]["OptionFunc117"] = "BanquetBance_GotoMap</N>25466</N>3"  
tNpcGossip[25466]["OptionFunc118"] = "BanquetBance_GotoMap</N>25466</N>4" 

tNpcGossip[25466]["OptionChkFunc111"]= function()
	return not BanquetBance_ChkReward(1)
end

tNpcGossip[25466]["OptionChkFunc112"]= function()
	return not BanquetBance_ChkReward(2)
end

tNpcGossip[25466]["OptionChkFunc113"]= function()
	return not BanquetBance_ChkReward(3)
end

tNpcGossip[25466]["OptionChkFunc114"]= function()
	return not BanquetBance_ChkReward(4)
end
tNpcGossip[25466]["OptionChkFunc115"]= function()
	return BanquetBance_ChkReward(1)
end

tNpcGossip[25466]["OptionChkFunc116"]= function()
	return BanquetBance_ChkReward(2)
end

tNpcGossip[25466]["OptionChkFunc117"]= function()
	return BanquetBance_ChkReward(3)
end

tNpcGossip[25466]["OptionChkFunc118"]= function()
	return BanquetBance_ChkReward(4)
end
tNpcGossip[25466]["Text2-1"] = {211}
tNpcGossip[25466]["tOption2-1"] = {211,212}
tNpcGossip[25466]["OptionFunc211"] = "BanquetBance_GotoDance</N>1"  


--阿语
tNpcGossip[25467]= tNpcGossip[25467] or DefaultNpc:new{}
tNpcGossip[25467]["OptionHidden"] = 1
tNpcGossip[25467]["DialogueText"] = tBanquetBance_Text[25467]

tNpcGossip[25467]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[25467]["tOption1-1"] = {121,122,123}
tNpcGossip[25467]["OptionPoint121"] = "3-1"
tNpcGossip[25467]["OptionFunc122"] = "NpcPosition_PathFind</N>25581"  
tNpcGossip[25467]["OptionFunc123"] = "BanquetBance_ComeBacke"    

tNpcGossip[25467]["ChkFunc1-1"]= function()
	BanquetBance_DelEffect(nUserId)
	return true
end
tNpcGossip[25467]["Text3-1"] = {311}
tNpcGossip[25467]["tOption3-1"] = {111,112,113,114,115,116,117,118}
tNpcGossip[25467]["OptionFunc111"] = "BanquetBance_GotoMap</N>25467</N>1"  
tNpcGossip[25467]["OptionFunc112"] = "BanquetBance_GotoMap</N>25467</N>2"  
tNpcGossip[25467]["OptionFunc113"] = "BanquetBance_GotoMap</N>25467</N>3"  
tNpcGossip[25467]["OptionFunc114"] = "BanquetBance_GotoMap</N>25467</N>4" 

tNpcGossip[25467]["OptionFunc115"] = "BanquetBance_GotoMap</N>25467</N>1"  
tNpcGossip[25467]["OptionFunc116"] = "BanquetBance_GotoMap</N>25467</N>2"  
tNpcGossip[25467]["OptionFunc117"] = "BanquetBance_GotoMap</N>25467</N>3"  
tNpcGossip[25467]["OptionFunc118"] = "BanquetBance_GotoMap</N>25467</N>4" 

tNpcGossip[25467]["OptionChkFunc111"]= function()
	return not BanquetBance_ChkReward(1)
end

tNpcGossip[25467]["OptionChkFunc112"]= function()
	return not BanquetBance_ChkReward(2)
end

tNpcGossip[25467]["OptionChkFunc113"]= function()
	return not BanquetBance_ChkReward(3)
end

tNpcGossip[25467]["OptionChkFunc114"]= function()
	return not BanquetBance_ChkReward(4)
end
tNpcGossip[25467]["OptionChkFunc115"]= function()
	return BanquetBance_ChkReward(1)
end

tNpcGossip[25467]["OptionChkFunc116"]= function()
	return BanquetBance_ChkReward(2)
end

tNpcGossip[25467]["OptionChkFunc117"]= function()
	return BanquetBance_ChkReward(3)
end

tNpcGossip[25467]["OptionChkFunc118"]= function()
	return BanquetBance_ChkReward(4)
end

tNpcGossip[25467]["Text2-1"] = {211}
tNpcGossip[25467]["tOption2-1"] = {211,212}
tNpcGossip[25467]["OptionFunc211"] = "BanquetBance_GotoDance</N>1"  





-- 中文舞会火鸡
tNpcFace[6406] = 187
tNpcFace[6407] = 187
tNpcFace[6408] = 187
tNpcFace[6409] = 187
tNpcGossip[25445]= tNpcGossip[25445] or DefaultNpc:new{}
tNpcGossip[25445]["OptionHidden"] = 1
tNpcGossip[25445]["DialogueText"] = tBanquetBance_Text[25445]
-- 非活动期间
tNpcGossip[25445]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[25445]["tOption1-1"] = {111}
tNpcGossip[25445]["ChkFunc1-1"]= function()

	return false--Sys_ChkFullTime(tActivityTime["BanquetBance"]["Bef_Time"])
end
--  活动
tNpcGossip[25445]["Text1-2"] = {121,122}
tNpcGossip[25445]["tOption1-2"] = {121}
--领取奖励
tNpcGossip[25445]["OptionFunc121"] = "BanquetBance_RewardRank</N>25445"  

tNpcGossip[25445]["ChkFunc1-2"]= function()
	--文字排名
	-- BanquetBance_RankText(25445)
	BanquetBance_DelEffect(nUserId)

	return Sys_ChkFullTime(tActivityTime["BanquetBance"]["ActivityTime"])
end

-- end
-- 【没有奖励可领取，尚未跳完4支舞蹈】
tNpcGossip[25445]["Text2-1"] = {211,212}
tNpcGossip[25445]["tOption2-1"] = {211}
tNpcGossip[25445]["OptionFunc211"] = "NpcPosition_PathFind</N>25444"  


tNpcGossip[25446]= tNpcGossip[25446] or DefaultNpc:new{}
tNpcGossip[25446]["OptionHidden"] = 1
tNpcGossip[25446]["DialogueText"] = tBanquetBance_Text[25446]
-- 非活动期间
tNpcGossip[25446]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[25446]["tOption1-1"] = {111}
tNpcGossip[25446]["ChkFunc1-1"]= function()

	return false--Sys_ChkFullTime(tActivityTime["BanquetBance"]["Bef_Time"])
end
--  活动
tNpcGossip[25446]["Text1-2"] = {121,122}
tNpcGossip[25446]["tOption1-2"] = {121}
--领取奖励
tNpcGossip[25446]["OptionFunc121"] = "BanquetBance_RewardRank</N>25446"  

tNpcGossip[25446]["ChkFunc1-2"]= function()
	--文字排名
	-- BanquetBance_RankText(25446)
	BanquetBance_DelEffect(nUserId)

	return Sys_ChkFullTime(tActivityTime["BanquetBance"]["ActivityTime"])
end

-- end
-- 【没有奖励可领取，尚未跳完4支舞蹈】
tNpcGossip[25446]["Text2-1"] = {211,212}
tNpcGossip[25446]["tOption2-1"] = {211}
tNpcGossip[25446]["OptionFunc211"] = "NpcPosition_PathFind</N>25465"  

tNpcGossip[25447]= tNpcGossip[25447] or DefaultNpc:new{}
tNpcGossip[25447]["OptionHidden"] = 1
tNpcGossip[25447]["DialogueText"] = tBanquetBance_Text[25447]
-- 非活动期间
tNpcGossip[25447]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[25447]["tOption1-1"] = {111}
tNpcGossip[25447]["ChkFunc1-1"]= function()

	return false--Sys_ChkFullTime(tActivityTime["BanquetBance"]["Bef_Time"])
end
--  活动
tNpcGossip[25447]["Text1-2"] = {121,122}
tNpcGossip[25447]["tOption1-2"] = {121}
--领取奖励
tNpcGossip[25447]["OptionFunc121"] = "BanquetBance_RewardRank</N>25447"  

tNpcGossip[25447]["ChkFunc1-2"]= function()
	--文字排名
	-- BanquetBance_RankText(25447)
	BanquetBance_DelEffect(nUserId)

	return Sys_ChkFullTime(tActivityTime["BanquetBance"]["ActivityTime"])
end

-- end
-- 【没有奖励可领取，尚未跳完4支舞蹈】
tNpcGossip[25447]["Text2-1"] = {211,212}
tNpcGossip[25447]["tOption2-1"] = {211}
tNpcGossip[25447]["OptionFunc211"] = "NpcPosition_PathFind</N>25466"  

tNpcGossip[25448]= tNpcGossip[25448] or DefaultNpc:new{}
tNpcGossip[25448]["OptionHidden"] = 1
tNpcGossip[25448]["DialogueText"] = tBanquetBance_Text[25448]
-- 非活动期间
tNpcGossip[25448]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[25448]["tOption1-1"] = {111}
tNpcGossip[25448]["ChkFunc1-1"]= function()

	return false--Sys_ChkFullTime(tActivityTime["BanquetBance"]["Bef_Time"])
end
--  活动
tNpcGossip[25448]["Text1-2"] = {121,122}
tNpcGossip[25448]["tOption1-2"] = {121}
--领取奖励
tNpcGossip[25448]["OptionFunc121"] = "BanquetBance_RewardRank</N>25448"  

tNpcGossip[25448]["ChkFunc1-2"]= function()
	--文字排名
	-- BanquetBance_RankText(25448)
	BanquetBance_DelEffect(nUserId)

	return Sys_ChkFullTime(tActivityTime["BanquetBance"]["ActivityTime"])
end

-- end
-- 【没有奖励可领取，尚未跳完4支舞蹈】
tNpcGossip[25448]["Text2-1"] = {211,212}
tNpcGossip[25448]["tOption2-1"] = {211}
tNpcGossip[25448]["OptionFunc211"] = "NpcPosition_PathFind</N>25467"  

---------------------------------物品部分---------------------------------------------
--------动感舞会礼包
tItem[3600196] = tItem[3600196] or {}
tItem[3600196]["Function"] = function(nItemId,sItemName)
	if not Item_ChkItem(nItemId) then
		return
	end 
	-- 背包空间判断
	local nSpace1 =  RewardTemplate_GetRandomSpace(tBanquetBance_Reward[3600196],1)
	local nSpace2 =  RewardTemplate_GetRandomSpace(tBanquetBance_Reward[3600196],2)
	local nSpace = nSpace1+ nSpace2
	if not User_CheckLeftSpace(nSpace) then
		local sStr = string.format(tBanquetBance_Text[25445]["Msg"]["NoSpace"],nSpace)
		Sys_MsgBox(sStr)
		return
	end 
	RewardTemplate_RandomReward(tBanquetBance_Reward[3600196],1)
	RewardTemplate_RandomReward(tBanquetBance_Reward[3600196],2)
end

tItem[3314355] = tItem[3314355] or {}
tItem[3314355]["Function"] = function(nItemId,sItemName)
	if not Item_ChkItem(nItemId) then
		return
	end 
	-- 背包空间判断
	local nSpace =  RewardTemplate_GetRandomSpace(tBanquetBance_Reward[3314355],1)
	if not User_CheckLeftSpace(nSpace) then
		local sStr = string.format(tBanquetBance_Text[25445]["Msg"]["NoSpace"],nSpace)
		Sys_MsgBox(sStr)
		return
	end 
	RewardTemplate_RandomReward(tBanquetBance_Reward[3314355],1)
end

tItem[3314356] = tItem[3314356] or {}
tItem[3314356]["Function"] = function(nItemId,sItemName)
	if not Item_ChkItem(nItemId) then
		return
	end 
	-- 背包空间判断
	local nSpace1 =  RewardTemplate_GetRandomSpace(tBanquetBance_Reward[3314356],1)
	local nSpace2 =  RewardTemplate_GetRandomSpace(tBanquetBance_Reward[3314356],2)
	local nSpace = nSpace1+ nSpace2
	if not User_CheckLeftSpace(nSpace) then
		local sStr = string.format(tBanquetBance_Text[25445]["Msg"]["NoSpace"],nSpace)
		Sys_MsgBox(sStr)
		return
	end 
	RewardTemplate_RandomReward(tBanquetBance_Reward[3314356],1)
	RewardTemplate_RandomReward(tBanquetBance_Reward[3314356],2)
end

tItem[3314357] = tItem[3314357] or {}
tItem[3314357]["Function"] = function(nItemId,sItemName)
	if not Item_ChkItem(nItemId) then
		return
	end 
	-- 背包空间判断
	local nSpace1 =  RewardTemplate_GetRandomSpace(tBanquetBance_Reward[3314357],1)
	local nSpace2 =  RewardTemplate_GetRandomSpace(tBanquetBance_Reward[3314357],2)
	local nSpace = nSpace1+ nSpace2
	if not User_CheckLeftSpace(nSpace) then
		local sStr = string.format(tBanquetBance_Text[25445]["Msg"]["NoSpace"],nSpace)
		Sys_MsgBox(sStr)
		return
	end 
	RewardTemplate_RandomReward(tBanquetBance_Reward[3314357],1)
	RewardTemplate_RandomReward(tBanquetBance_Reward[3314357],2)
end

tItem[3314358] = tItem[3314358] or {}
tItem[3314358]["Function"] = function(nItemId,sItemName)
	if not Item_ChkItem(nItemId) then
		return
	end 
	-- 背包空间判断
	local nSpace1 =  RewardTemplate_GetRandomSpace(tBanquetBance_Reward[3314358],1)
	local nSpace2 =  RewardTemplate_GetRandomSpace(tBanquetBance_Reward[3314358],2)
	local nSpace = nSpace1+ nSpace2
	if not User_CheckLeftSpace(nSpace) then
		local sStr = string.format(tBanquetBance_Text[25445]["Msg"]["NoSpace"],nSpace)
		Sys_MsgBox(sStr)
		return
	end 
	RewardTemplate_RandomReward(tBanquetBance_Reward[3314358],1)
	RewardTemplate_RandomReward(tBanquetBance_Reward[3314358],2)
end

tItem[3600195] = tItem[3600195] or {}
tItem[3600195]["Function"] = function(nItemId,sItemName)
	if not Item_ChkItem(nItemId) then
		return
	end 
	-- 背包空间判断
	local nSpace =  RewardTemplate_GetRandomSpace(tBanquetBance_Reward,3600195)
	if not User_CheckLeftSpace(nSpace) then
		local sStr = string.format(tBanquetBance_Text[25445]["Msg"]["NoSpace"],nSpace)
		Sys_MsgBox(sStr)
		return
	end 
	RewardTemplate_RandomReward(tBanquetBance_Reward,3600195)
end

tItemFace[3314360] = 2625
tItem[3314360] = tItem[3314360] or {}
tItem[3314360]["DialogueText"] = tBanquetBance_Text[3314360]
tItem[3314360]["Text1-1"] = {111,112,113,114,115}
tItem[3314360]["tOption1-1"] = {111,112}
tItem[3314360]["OptionFunc111"] = "BanquetBance_GetItem</N>3314360</N>1"
tItem[3314360]["OptionFunc112"] = "BanquetBance_GetItem</N>3314360</N>2"
tItem[3314360]["Time"] = tActivityTime["BanquetBance"]["ActivityTime"]
tItem[3314360]["OverdueReward"] = {}
tItem[3314360]["OverdueReward"]["RewardIndex"] = "RewardStrengthValue"
tItem[3314360]["OverdueReward"]["RewardValue"] = 100
--------------------------------------------时间自检--------------------------------------------
-- local tBanquetBance_OnTime = {}
	-- tBanquetBance_OnTime[1] = {}
	-- tBanquetBance_OnTime[1]["Type"] = 3  
	-- tBanquetBance_OnTime[1]["TimeType"] = 4  -- 日时间
	-- tBanquetBance_OnTime[1]["Multiple"] = {}
	-- tBanquetBance_OnTime[1]["Multiple"][1] = "00:00 23:59"
	-- tBanquetBance_OnTime[1]["Func"] = BanquetBance_Brush
	-- table.insert(tSystemTime_InitialData,tBanquetBance_OnTime[1])
	
	-- tBanquetBance_OnTime[2] = {}
	-- tBanquetBance_OnTime[2]["Type"] = 2
	-- tBanquetBance_OnTime[2]["TimeType"] = 5  
	-- tBanquetBance_OnTime[2]["Multiple"] = {}
	-- tBanquetBance_OnTime[2]["Multiple"][1] = "00:10 00:10"
	-- tBanquetBance_OnTime[2]["Multiple"][2] = "00:20 00:20"
	-- tBanquetBance_OnTime[2]["Multiple"][3] = "00:30 00:30"
	-- tBanquetBance_OnTime[2]["Multiple"][4] = "00:40 00:40"
	-- tBanquetBance_OnTime[2]["Multiple"][5] = "00:50 00:50"
	-- tBanquetBance_OnTime[2]["Multiple"][6] = "00:00 00:00"
	-- tBanquetBance_OnTime[2]["Func"] = BanquetBance_DelNpc
	-- table.insert(tSystemTime_InitialData,tBanquetBance_OnTime[2])
	
	-- tBanquetBance_OnTime[3] = {}
	-- tBanquetBance_OnTime[3]["Type"] = 3  
	-- tBanquetBance_OnTime[3]["TimeType"] = 4  -- 日时间
	-- tBanquetBance_OnTime[3]["Multiple"] = {}
	-- tBanquetBance_OnTime[3]["Multiple"][1] = "00:02 00:03"
	-- tBanquetBance_OnTime[3]["Func"] = BanquetBance_DelGlobal
	-- table.insert(tSystemTime_InitialData,tBanquetBance_OnTime[3])
	
