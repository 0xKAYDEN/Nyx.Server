	------------------------------------------------------------------------------------
--Name：            170920[简体征服][活动脚本]博饼活动制作
--Creator:      傅伟龙
--Created:     2017/09/20
------------------------------------------------------------------------------------
--临时表
local tMidAutumnDay_BoBing_TempTable = {}

local tMidAutumnDay_BoBing_Cont = {}
	--活动时间
	tMidAutumnDay_BoBing_Cont["BefTime"] = tActivityTime["MidAutumnDay_BoBing"]["BefTime"]
	tMidAutumnDay_BoBing_Cont["ActTime"] = tActivityTime["MidAutumnDay_BoBing"]["ActTime"]
	tMidAutumnDay_BoBing_Cont["KingActTime"] = tActivityTime["MidAutumnDay_BoBing"]["KingActTime"]
	
	tMidAutumnDay_BoBing_Cont["MinPro"] = 1000
	tMidAutumnDay_BoBing_Cont["MaxPro"] = 1099
	
	tMidAutumnDay_BoBing_Cont["nMinLevel"] = 80
	tMidAutumnDay_BoBing_Cont["nMinMeto"] = 0
	tMidAutumnDay_BoBing_Cont["The_web"] = "https://wtop.zf.99.com/zqbb/en01/"
	--需要的天石数
	tMidAutumnDay_BoBing_Cont["nCommonEmoney"] = 27
	
	--背包空间检测
	tMidAutumnDay_BoBing_Cont["nCommonSpace"] = 2
	tMidAutumnDay_BoBing_Cont["nChampionSpace"] = 1
	tMidAutumnDay_BoBing_Cont["MunCommonSpace"] = 13
	
	--递归循环次数，大等时终止递归
	tMidAutumnDay_BoBing_Cont["Recursion"] = 10
	tMidAutumnDay_BoBing_Cont["nStcIntervalTime"] = 3
	
	--色子保存模板
	tMidAutumnDay_BoBing_Cont["DiceSaveTemplate"] = "%d,%d,%d,%d,%d,%d"
	
	tMidAutumnDay_BoBing_Cont["ActRankIndex"] = 24868
	
	tMidAutumnDay_BoBing_Cont["IntegralSum"] = {}
	tMidAutumnDay_BoBing_Cont["IntegralSum"][1] = 400
	tMidAutumnDay_BoBing_Cont["IntegralSum"][2] = 800
	tMidAutumnDay_BoBing_Cont["IntegralSum"][3] = 1200
	tMidAutumnDay_BoBing_Cont["IntegralSum"][4] = 3000
	tMidAutumnDay_BoBing_Cont["IntegralSum"][5] = 6000
	tMidAutumnDay_BoBing_Cont["IntegralSum"][6] = 12000
	tMidAutumnDay_BoBing_Cont["IntegralSum"][7] = 25000
	tMidAutumnDay_BoBing_Cont["IntegralSum"][8] = 45000
	-- tMidAutumnDay_BoBing_Cont["IntegralSum"][9] = 88000
	
	tMidAutumnDay_BoBing_Cont["GlobalId"] = 53615
	tMidAutumnDay_BoBing_Cont["BefGlobalId"] = 53624
	tMidAutumnDay_BoBing_Cont["GlobalIdLim"] = 53642
		--动态NPC生成配置
	tMidAutumnDay_BoBing_Cont["DynaNpc"] = {}
	tMidAutumnDay_BoBing_Cont["DynaNpc"]["nNpcId"] = 24874
	tMidAutumnDay_BoBing_Cont["DynaNpc"]["nNpcType"] = 2
	tMidAutumnDay_BoBing_Cont["DynaNpc"]["nMapId"] = 1002
	tMidAutumnDay_BoBing_Cont["DynaNpc"]["nCellx"] = 374
	tMidAutumnDay_BoBing_Cont["DynaNpc"]["nCelly"] = 442
	tMidAutumnDay_BoBing_Cont["DynaNpc"]["sField"] = "name"
	tMidAutumnDay_BoBing_Cont["DynaNpc"]["nTask0"] = 97307551
	tMidAutumnDay_BoBing_Cont["DynaNpc"]["nSort"] = 0
	tMidAutumnDay_BoBing_Cont["DynaNpc"]["nLookface"] = 57836
	
--排行榜激励  邮件发奖
local tMidAutumnDay_BoBing_SendMail = {}

tMidAutumnDay_BoBing_SendMail["ExistDay"] = 30

tMidAutumnDay_BoBing_SendMail["Action"] = {}
tMidAutumnDay_BoBing_SendMail["Action"][1] = 574261
tMidAutumnDay_BoBing_SendMail["Action"][2] = 574262
tMidAutumnDay_BoBing_SendMail["Action"][3] = 574262
tMidAutumnDay_BoBing_SendMail["Action"][4] = 574263
tMidAutumnDay_BoBing_SendMail["Action"][5] = 574263
tMidAutumnDay_BoBing_SendMail["Action"][6] = 574263
tMidAutumnDay_BoBing_SendMail["Action"][7] = 574264
tMidAutumnDay_BoBing_SendMail["Action"][8] = 574264
tMidAutumnDay_BoBing_SendMail["Action"][9] = 574264
tMidAutumnDay_BoBing_SendMail["Action"][10] = 574264

tMidAutumnDay_BoBing_SendMail["DouAction"] = {}
tMidAutumnDay_BoBing_SendMail["DouAction"][1] = 574318
tMidAutumnDay_BoBing_SendMail["DouAction"][2] = 574319
tMidAutumnDay_BoBing_SendMail["DouAction"][3] = 574319
tMidAutumnDay_BoBing_SendMail["DouAction"][4] = 574320
tMidAutumnDay_BoBing_SendMail["DouAction"][5] = 574320
tMidAutumnDay_BoBing_SendMail["DouAction"][6] = 574320
tMidAutumnDay_BoBing_SendMail["DouAction"][7] = 574262
tMidAutumnDay_BoBing_SendMail["DouAction"][8] = 574262
tMidAutumnDay_BoBing_SendMail["DouAction"][9] = 574262
tMidAutumnDay_BoBing_SendMail["DouAction"][10] = 574262
	
--博饼计时掩码
local tMidAutumnDay_BoBing_Stc = {}
	--时间间隔
	tMidAutumnDay_BoBing_Stc["BoBingInv"] = {}
	tMidAutumnDay_BoBing_Stc["BoBingInv"]["nEvent"] = 202
    tMidAutumnDay_BoBing_Stc["BoBingInv"]["nData"] = 40
	tMidAutumnDay_BoBing_Stc["BoBingInv"]["nAdd"] = 1
	--记录积分
	tMidAutumnDay_BoBing_Stc[1] = {}
	tMidAutumnDay_BoBing_Stc[1]["nEvent"] = 202
    tMidAutumnDay_BoBing_Stc[1]["nData"] = 34
	--记录是否中状元
	tMidAutumnDay_BoBing_Stc[2] = {}
	tMidAutumnDay_BoBing_Stc[2]["nEvent"] = 202
    tMidAutumnDay_BoBing_Stc[2]["nData"] = 35
	--记录王中王积分
	tMidAutumnDay_BoBing_Stc[3] = {}
	tMidAutumnDay_BoBing_Stc[3]["nEvent"] = 202
    tMidAutumnDay_BoBing_Stc[3]["nData"] = 36
	--记录次数
	tMidAutumnDay_BoBing_Stc[4] = {}
	tMidAutumnDay_BoBing_Stc[4]["nEvent"] = 202
    tMidAutumnDay_BoBing_Stc[4]["nData"] = 37
	--记录是否中过状元插金花，满堂红，遍地锦
	tMidAutumnDay_BoBing_Stc[5] = {}
	tMidAutumnDay_BoBing_Stc[5]["nEvent"] = 202
    tMidAutumnDay_BoBing_Stc[5]["nData"] = 38
	
	--记录是玩家领取的阶段
	tMidAutumnDay_BoBing_Stc[6] = {}
	tMidAutumnDay_BoBing_Stc[6]["nEvent"] = 202
    tMidAutumnDay_BoBing_Stc[6]["nData"] = 39
	
	--记录玩家使用福袋次数
	tMidAutumnDay_BoBing_Stc[7] = {}
	tMidAutumnDay_BoBing_Stc[7]["nEvent"] = 203
    tMidAutumnDay_BoBing_Stc[7]["nData"] = 30
	-- 是否获得过坐骑
	tMidAutumnDay_BoBing_Stc[8] = {}
	tMidAutumnDay_BoBing_Stc[8]["nEvent"] = 203
    tMidAutumnDay_BoBing_Stc[8]["nData"] = 56
	--是否领取过坐骑
	tMidAutumnDay_BoBing_Stc[9] = {}
	tMidAutumnDay_BoBing_Stc[9]["nEvent"] = 203
    tMidAutumnDay_BoBing_Stc[9]["nData"] = 57
	
	--是否领取过骰子
	tMidAutumnDay_BoBing_Stc[10] = {}
	tMidAutumnDay_BoBing_Stc[10]["nEvent"] = 203
    tMidAutumnDay_BoBing_Stc[10]["nData"] = 90
	
	--是否观看过视频
	tMidAutumnDay_BoBing_Stc[11] = {}
	tMidAutumnDay_BoBing_Stc[11]["nEvent"] = 203
    tMidAutumnDay_BoBing_Stc[11]["nData"] = 91
	
--博饼中奖模板表配置
local tMidAutumnDay_BoBing_WinTemplate = {}
	--状元插金花
	tMidAutumnDay_BoBing_WinTemplate[1] = {4,4,4,4,1,1}
	
	tMidAutumnDay_BoBing_WinTemplate[2] = {4,4,4,4,4,4}
	
	tMidAutumnDay_BoBing_WinTemplate[3] = {1,1,1,1,1,1}
	--六子
	tMidAutumnDay_BoBing_WinTemplate[4] = {}
	tMidAutumnDay_BoBing_WinTemplate[4][1] = {2,2,2,2,2,2}
	tMidAutumnDay_BoBing_WinTemplate[4][2] = {3,3,3,3,3,3}
	tMidAutumnDay_BoBing_WinTemplate[4][3] = {5,5,5,5,5,5}
	tMidAutumnDay_BoBing_WinTemplate[4][4] = {6,6,6,6,6,6}
	--五王
	tMidAutumnDay_BoBing_WinTemplate[5] = {4,4,4,4,4}
	--五子
	tMidAutumnDay_BoBing_WinTemplate[6] = {}
	tMidAutumnDay_BoBing_WinTemplate[6][1] = {1,1,1,1,1}
	tMidAutumnDay_BoBing_WinTemplate[6][2] = {2,2,2,2,2}
	tMidAutumnDay_BoBing_WinTemplate[6][3] = {3,3,3,3,3}
	tMidAutumnDay_BoBing_WinTemplate[6][4] = {5,5,5,5,5}
	tMidAutumnDay_BoBing_WinTemplate[6][5] = {6,6,6,6,6}
	--状元
	tMidAutumnDay_BoBing_WinTemplate[7] = {4,4,4,4}
	--对堂
	tMidAutumnDay_BoBing_WinTemplate[8] = {1,2,3,4,5,6}
	--三红
	tMidAutumnDay_BoBing_WinTemplate[9] = {4,4,4}
	--四进
	tMidAutumnDay_BoBing_WinTemplate[10] = {}
	tMidAutumnDay_BoBing_WinTemplate[10][1] = {1,1,1,1}
	tMidAutumnDay_BoBing_WinTemplate[10][2] = {2,2,2,2}
	tMidAutumnDay_BoBing_WinTemplate[10][3] = {3,3,3,3}
	tMidAutumnDay_BoBing_WinTemplate[10][4] = {5,5,5,5}
	tMidAutumnDay_BoBing_WinTemplate[10][5] = {6,6,6,6}
	--二举
	tMidAutumnDay_BoBing_WinTemplate[11] = {4,4}
	--一秀
	tMidAutumnDay_BoBing_WinTemplate[12] = {4}
	--罚黑
	tMidAutumnDay_BoBing_WinTemplate[13] = {}
	
	
--骰子点数
local tMidAutumnDay_BoBing_DiceNum = {1,2,3,4,5,6}
--骰子特效
local tMidAutumnDay_BoBing_DiceEffect = {}
	tMidAutumnDay_BoBing_DiceEffect[1] = "hstouzi_1"
	tMidAutumnDay_BoBing_DiceEffect[2] = "hstouzi_2"
	tMidAutumnDay_BoBing_DiceEffect[3] = "hstouzi_3"
	tMidAutumnDay_BoBing_DiceEffect[4] = "hstouzi_4"
	tMidAutumnDay_BoBing_DiceEffect[5] = "hstouzi_5"
	tMidAutumnDay_BoBing_DiceEffect[6] = "hstouzi_6"
--中奖特效
local tMidAutumnDay_BoBing_BoBingEffect ={}
	tMidAutumnDay_BoBing_BoBingEffect[1] = "task081"
	tMidAutumnDay_BoBing_BoBingEffect[2] = "task080"
	tMidAutumnDay_BoBing_BoBingEffect[3] = "task079"
	tMidAutumnDay_BoBing_BoBingEffect[4] = "task078"
	tMidAutumnDay_BoBing_BoBingEffect[5] = "task077"
	tMidAutumnDay_BoBing_BoBingEffect[6] = "task076"
	tMidAutumnDay_BoBing_BoBingEffect[7] = "task075"
	tMidAutumnDay_BoBing_BoBingEffect[8] = "task074"
	tMidAutumnDay_BoBing_BoBingEffect[9] = "task073"
	tMidAutumnDay_BoBing_BoBingEffect[10] = "task072"
	tMidAutumnDay_BoBing_BoBingEffect[11] = "task053"
	tMidAutumnDay_BoBing_BoBingEffect[12] = "task052"
	tMidAutumnDay_BoBing_BoBingEffect[13] = "task051"

local tMidAutumnDay_BoBing_WinProProbabil = {}
	-- ===中秋博饼积分
	-- ===索引:tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1]
	-- ===
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"] = {}
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1] = {}
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1] = {}
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1]["ItemChanceSum"] = 1000000
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1]["LogId"] = 12001597
	-- Item_1 + MidIntegral - 0.0322%
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][1] = {}
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][1]["RandomItemChanceType"] = 2
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][1]["ItemChance"] = 322
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][1]["Item_1"] = 1
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][1]["MidIntegral"] = 50000 -- 穿云箭[50000][属性:0]
	-- Item_1 + MidIntegral - 0.0021%
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][2] = {}
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][2]["RandomItemChanceType"] = 2
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][2]["ItemChance"] = 21
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][2]["Item_1"] = 2
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][2]["MidIntegral"] = 45000
	-- Item_1 + MidIntegral - 0.0021%
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][3] = {}
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][3]["RandomItemChanceType"] = 2
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][3]["ItemChance"] = 21
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][3]["Item_1"] = 3
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][3]["MidIntegral"] = 45000
	-- Item_1 + MidIntegral - 0.0086%
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][4] = {}
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][4]["RandomItemChanceType"] = 2
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][4]["ItemChance"] = 86
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][4]["Item_1"] = 4
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][4]["MidIntegral"] = 10000
	-- Item_1 + MidIntegral - 0.0640%
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][5] = {}
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][5]["RandomItemChanceType"] = 2
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][5]["ItemChance"] = 640
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][5]["Item_1"] = 5
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][5]["MidIntegral"] = 1500
	-- Item_1 + MidIntegral - 0.3220%
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][6] = {}
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][6]["RandomItemChanceType"] = 2
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][6]["ItemChance"] = 3220
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][6]["Item_1"] = 6
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][6]["MidIntegral"] = 300
	-- Item_1 + MidIntegral - 0.7720%
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][7] = {}
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][7]["RandomItemChanceType"] = 2
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][7]["ItemChance"] = 7720
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][7]["Item_1"] = 7
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][7]["MidIntegral"] = 120
	-- Item_1 + MidIntegral - 1.5430%
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][8] = {}
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][8]["RandomItemChanceType"] = 2
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][8]["ItemChance"] = 15430
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][8]["Item_1"] = 8
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][8]["MidIntegral"] = 60
	-- Item_1 + MidIntegral - 5.3580%
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][9] = {}
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][9]["RandomItemChanceType"] = 2
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][9]["ItemChance"] = 53580
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][9]["Item_1"] = 9
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][9]["MidIntegral"] = 20
	-- Item_1 + MidIntegral - 4.0190%
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][10] = {}
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][10]["RandomItemChanceType"] = 2
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][10]["ItemChance"] = 40190
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][10]["Item_1"] = 10
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][10]["MidIntegral"] = 15
	-- Item_1 + MidIntegral - 19.9390%
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][11] = {}
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][11]["RandomItemChanceType"] = 2
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][11]["ItemChance"] = 199390
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][11]["Item_1"] = 11
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][11]["MidIntegral"] = 5
	-- Item_1 + MidIntegral - 37.2990%
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][12] = {}
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][12]["RandomItemChanceType"] = 2
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][12]["ItemChance"] = 372990
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][12]["Item_1"] = 12
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][12]["MidIntegral"] = 3
	-- Item_1 + MidIntegral - 30.6390%
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][13] = {}
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][13]["RandomItemChanceType"] = 2
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][13]["ItemChance"] = 306390
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][13]["Item_1"] = 13
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][13]["MidIntegral"] = 0


	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2] = {}
	-- ===中秋博饼积分
	-- ===索引:tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1]
	-- ===
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1] = {}
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1]["ItemChanceSum"] = 1000000
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1]["LogId"] = 12001597
	-- Item_1 + MidIntegral - 0.0000%
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][1] = {}
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][1]["RandomItemChanceType"] = 2
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][1]["ItemChance"] = 0
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][1]["Item_1"] = 1
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][1]["MidIntegral"] = 50000 -- 穿云箭[50000][属性:0]
	-- Item_1 + MidIntegral - 0.0000%
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][2] = {}
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][2]["RandomItemChanceType"] = 2
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][2]["ItemChance"] = 0
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][2]["Item_1"] = 2
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][2]["MidIntegral"] = 45000
	-- Item_1 + MidIntegral - 0.0000%
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][3] = {}
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][3]["RandomItemChanceType"] = 2
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][3]["ItemChance"] = 0
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][3]["Item_1"] = 3
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][3]["MidIntegral"] = 45000
	-- Item_1 + MidIntegral - 0.0086%
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][4] = {}
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][4]["RandomItemChanceType"] = 2
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][4]["ItemChance"] = 86
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][4]["Item_1"] = 4
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][4]["MidIntegral"] = 10000
	-- Item_1 + MidIntegral - 0.0640%
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][5] = {}
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][5]["RandomItemChanceType"] = 2
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][5]["ItemChance"] = 640
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][5]["Item_1"] = 5
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][5]["MidIntegral"] = 1500
	-- Item_1 + MidIntegral - 0.3220%
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][6] = {}
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][6]["RandomItemChanceType"] = 2
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][6]["ItemChance"] = 3220
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][6]["Item_1"] = 6
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][6]["MidIntegral"] = 300
	-- Item_1 + MidIntegral - 0.7720%
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][7] = {}
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][7]["RandomItemChanceType"] = 2
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][7]["ItemChance"] = 7720
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][7]["Item_1"] = 7
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][7]["MidIntegral"] = 120
	-- Item_1 + MidIntegral - 1.5430%
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][8] = {}
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][8]["RandomItemChanceType"] = 2
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][8]["ItemChance"] = 15430
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][8]["Item_1"] = 8
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][8]["MidIntegral"] = 60
	-- Item_1 + MidIntegral - 5.3580%
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][9] = {}
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][9]["RandomItemChanceType"] = 2
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][9]["ItemChance"] = 53580
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][9]["Item_1"] = 9
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][9]["MidIntegral"] = 20
	-- Item_1 + MidIntegral - 4.0190%
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][10] = {}
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][10]["RandomItemChanceType"] = 2
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][10]["ItemChance"] = 40190
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][10]["Item_1"] = 10
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][10]["MidIntegral"] = 15
	-- Item_1 + MidIntegral - 19.9390%
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][11] = {}
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][11]["RandomItemChanceType"] = 2
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][11]["ItemChance"] = 199390
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][11]["Item_1"] = 11
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][11]["MidIntegral"] = 5
	-- Item_1 + MidIntegral - 37.2990%
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][12] = {}
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][12]["RandomItemChanceType"] = 2
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][12]["ItemChance"] = 372990
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][12]["Item_1"] = 12
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][12]["MidIntegral"] = 3
	-- Item_1 + MidIntegral - 30.6754%
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][13] = {}
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][13]["RandomItemChanceType"] = 2
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][13]["ItemChance"] = 306754
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][13]["Item_1"] = 13
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2][1][13]["MidIntegral"] = 0


	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][3] = {}
	-- ===中秋博饼积分
	-- ===索引:tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][3][1]
	-- ===
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][3][1] = {}
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][3][1]["ItemChanceSum"] = 9000
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][3][1]["LogId"] = 12001597
	-- Item_1 + MidIntegral - 30.00%
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][3][1][1] = {}
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][3][1][1]["RandomItemChanceType"] = 2
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][3][1][1]["ItemChance"] = 3000
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][3][1][1]["Item_1"] = 1
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][3][1][1]["MidIntegral"] = 50000 -- 穿云箭[50000][属性:0]
	-- Item_1 + MidIntegral - 30.00%
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][3][1][2] = {}
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][3][1][2]["RandomItemChanceType"] = 2
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][3][1][2]["ItemChance"] = 3000
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][3][1][2]["Item_1"] = 2
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][3][1][2]["MidIntegral"] = 45000
	-- Item_1 + MidIntegral - 30.00%
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][3][1][3] = {}
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][3][1][3]["RandomItemChanceType"] = 2
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][3][1][3]["ItemChance"] = 3000
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][3][1][3]["Item_1"] = 3
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][3][1][3]["MidIntegral"] = 45000

	------6子。中奖模板概率
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][4] = {}
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][4][1] = {}
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][4][1]["ItemChanceSum"] = 6000

	--6个2
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][4][1][1] = {}
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][4][1][1]["RandomItemChanceType"] = 2
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][4][1][1]["ItemChance"] = 1000
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][4][1][1]["Item_1"] = 1
	--6个3
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][4][1][2] = {}
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][4][1][2]["RandomItemChanceType"] = 2
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][4][1][2]["ItemChance"] = 1000
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][4][1][2]["Item_1"] = 2
	--6个5
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][4][1][3] = {}
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][4][1][3]["RandomItemChanceType"] = 2
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][4][1][3]["ItemChance"] = 1000
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][4][1][3]["Item_1"] = 3
	--6个6
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][4][1][4] = {}
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][4][1][4]["RandomItemChanceType"] = 2
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][4][1][4]["ItemChance"] = 1000
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][4][1][4]["Item_1"] = 4
	
	-----五子
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][5] = {}
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][5][1] = {}
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][5][1]["ItemChanceSum"] = 10000
	--5个1
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][5][1][1] = {}
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][5][1][1]["RandomItemChanceType"] = 2
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][5][1][1]["ItemChance"] = 2000
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][5][1][1]["Item_1"] = 1
	--5个2
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][5][1][2] = {}
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][5][1][2]["RandomItemChanceType"] = 2
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][5][1][2]["ItemChance"] = 2000
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][5][1][2]["Item_1"] = 2
	--5个3
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][5][1][3] = {}
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][5][1][3]["RandomItemChanceType"] = 2
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][5][1][3]["ItemChance"] = 2000
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][5][1][3]["Item_1"] = 3
	--5个5
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][5][1][4] = {}
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][5][1][4]["RandomItemChanceType"] = 2
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][5][1][4]["ItemChance"] = 2000
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][5][1][4]["Item_1"] = 4
	--5个6
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][5][1][5] = {}
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][5][1][5]["RandomItemChanceType"] = 2
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][5][1][5]["ItemChance"] = 2000
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][5][1][5]["Item_1"] = 5
	
	--四进
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][6] = {}
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][6][1] = {}
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][6][1]["ItemChanceSum"] = 10000
	--4个1
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][6][1][1] = {}
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][6][1][1]["RandomItemChanceType"] = 2
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][6][1][1]["ItemChance"] = 2000
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][6][1][1]["Item_1"] = 1
	--4个2
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][6][1][2] = {}
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][6][1][2]["RandomItemChanceType"] = 2
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][6][1][2]["ItemChance"] = 2000
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][6][1][2]["Item_1"] = 2
	--4个3
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][6][1][3] = {}
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][6][1][3]["RandomItemChanceType"] = 2
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][6][1][3]["ItemChance"] = 2000
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][6][1][3]["Item_1"] = 3
	--4个5
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][6][1][4] = {}
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][6][1][4]["RandomItemChanceType"] = 2
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][6][1][4]["ItemChance"] = 2000
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][6][1][4]["Item_1"] = 4
	--4个6
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][6][1][5] = {}
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][6][1][5]["RandomItemChanceType"] = 2
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][6][1][5]["ItemChance"] = 2000
	tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][6][1][5]["Item_1"] = 5
	
	
local tMidAutumnDay_BoBing_RewardItem = {}
	-- ===状元插金花礼包
	-- ===索引: tMidAutumnDay_BoBing_RewardItem["CommonReward"][1]
	-- ===LogStep:2[1]
	-- ===
	-- ===
	tMidAutumnDay_BoBing_RewardItem["CommonReward"] = {}
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][1] = {}
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][1]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][1]["LogStep"] = "2[1]"
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][1]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][1]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][1]["RewardItem"][1]["Id"] = 3323108 -- 状元插金花礼盒[3323108][属性:9][叠加:999][金币:0], 【表格】状元插金花礼包
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][1]["RewardItem"][1]["Attr"] = "0 1" -- 状元插金花礼盒*1
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][1]["RewardNoNeedTip"] = 1
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][1]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][1]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem["CommonReward"][2] = {}
	-- ===六勃红礼包
	-- ===索引: tMidAutumnDay_BoBing_RewardItem["CommonReward"][2]
	-- ===LogStep:2[1]
	-- ===
	-- ===
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][2]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][2]["LogStep"] = "2[1]"
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][2]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][2]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][2]["RewardItem"][1]["Id"] = 3323109 -- 满堂红礼盒[3323109][属性:9][叠加:999][金币:0], 【表格】六勃红礼包
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][2]["RewardItem"][1]["Attr"] = "0 1" -- 满堂红礼盒*1
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][2]["RewardNoNeedTip"] = 1
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][2]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][2]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem["CommonReward"][3] = {}
	-- ===遍地锦礼包
	-- ===索引: tMidAutumnDay_BoBing_RewardItem["CommonReward"][3]
	-- ===LogStep:2[1]
	-- ===
	-- ===
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][3]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][3]["LogStep"] = "2[1]"
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][3]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][3]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][3]["RewardItem"][1]["Id"] = 3323110 -- 遍地锦礼盒[3323110][属性:9][叠加:999][金币:0], 【表格】遍地锦礼包
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][3]["RewardItem"][1]["Attr"] = "0 1" -- 遍地锦礼盒*1
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][3]["RewardNoNeedTip"] = 1
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][3]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][3]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem["CommonReward"][4] = {}
	-- ===六勃黑礼包
	-- ===索引: tMidAutumnDay_BoBing_RewardItem["CommonReward"][4]
	-- ===LogStep:2[1]
	-- ===
	-- ===
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][4]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][4]["LogStep"] = "2[1]"
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][4]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][4]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][4]["RewardItem"][1]["Id"] = 3323111 -- 六勃黑礼盒[3323111][属性:9][叠加:999][金币:0], 【表格】六勃黑礼包
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][4]["RewardItem"][1]["Attr"] = "0 1" -- 六勃黑礼盒*1
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][4]["RewardNoNeedTip"] = 1
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][4]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][4]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem["CommonReward"][5] = {}
	-- ===五红礼包
	-- ===索引: tMidAutumnDay_BoBing_RewardItem["CommonReward"][5]
	-- ===LogStep:2[1]
	-- ===
	-- ===
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][5]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][5]["LogStep"] = "2[1]"
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][5]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][5]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][5]["RewardItem"][1]["Id"] = 3323112 -- 五王礼盒[3323112][属性:9][叠加:999][金币:0], 【表格】五红礼包
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][5]["RewardItem"][1]["Attr"] = "0 1" -- 五王礼盒*1
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][5]["RewardNoNeedTip"] = 1
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][5]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][5]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem["CommonReward"][6] = {}
	-- ===五子登科礼包
	-- ===索引: tMidAutumnDay_BoBing_RewardItem["CommonReward"][6]
	-- ===LogStep:2[1]
	-- ===
	-- ===
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][6]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][6]["LogStep"] = "2[1]"
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][6]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][6]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][6]["RewardItem"][1]["Id"] = 3323113 -- 五子礼盒[3323113][属性:9][叠加:999][金币:0], 【表格】五子登科礼包
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][6]["RewardItem"][1]["Attr"] = "0 1" -- 五子礼盒*1
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][6]["RewardNoNeedTip"] = 1
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][6]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][6]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem["CommonReward"][7] = {}
	-- ===状元礼包
	-- ===索引: tMidAutumnDay_BoBing_RewardItem["CommonReward"][7]
	-- ===LogStep:2[1]
	-- ===
	-- ===
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][7]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][7]["LogStep"] = "2[1]"
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][7]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][7]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][7]["RewardItem"][1]["Id"] = 3323114 -- 状元礼盒[3323114][属性:9][叠加:999][金币:0], 【表格】状元礼包
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][7]["RewardItem"][1]["Attr"] = "0 1" -- 状元礼盒*1
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][7]["RewardNoNeedTip"] = 1
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][7]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][7]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem["CommonReward"][8] = {}
	-- ===对堂礼包
	-- ===索引: tMidAutumnDay_BoBing_RewardItem["CommonReward"][8]
	-- ===
	-- ===
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][8]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][8]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][8]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][8]["RewardItem"][1]["Id"] = 3323115 -- 对堂礼盒[3323115][属性:9][叠加:999][金币:0], 【表格】对堂礼包
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][8]["RewardItem"][1]["Attr"] = "0 1" -- 对堂礼盒*1
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][8]["RewardNoNeedTip"] = 1
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][8]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][8]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem["CommonReward"][9] = {}
	-- ===三红礼包
	-- ===索引: tMidAutumnDay_BoBing_RewardItem["CommonReward"][9]
	-- ===LogStep:2[1]
	-- ===
	-- ===
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][9]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][9]["LogStep"] = "2[1]"
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][9]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][9]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][9]["RewardItem"][1]["Id"] = 3323116 -- 三红礼盒[3323116][属性:9][叠加:999][金币:0], 【表格】三红礼包
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][9]["RewardItem"][1]["Attr"] = "0 1" -- 三红礼盒*1
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][9]["RewardNoNeedTip"] = 1
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][9]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][9]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem["CommonReward"][10] = {}
	-- ===四进礼包
	-- ===索引: tMidAutumnDay_BoBing_RewardItem["CommonReward"][10]
	-- ===LogStep:2[1]
	-- ===
	-- ===
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][10]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][10]["LogStep"] = "2[1]"
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][10]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][10]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][10]["RewardItem"][1]["Id"] = 3323117 -- 四进礼盒[3323117][属性:9][叠加:999][金币:0], 【表格】四进礼包
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][10]["RewardItem"][1]["Attr"] = "0 1" -- 四进礼盒*1
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][10]["RewardNoNeedTip"] = 1
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][10]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][10]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem["CommonReward"][11] = {}
	-- ===二举礼包
	-- ===索引: tMidAutumnDay_BoBing_RewardItem["CommonReward"][11]
	-- ===LogStep:2[1]
	-- ===
	-- ===
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][11]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][11]["LogStep"] = "2[1]"
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][11]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][11]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][11]["RewardItem"][1]["Id"] = 3323118 -- 二举礼盒[3323118][属性:9][叠加:999][金币:0], 【表格】二举礼包
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][11]["RewardItem"][1]["Attr"] = "0 1" -- 二举礼盒*1
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][11]["RewardNoNeedTip"] = 1
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][11]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][11]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem["CommonReward"][12] = {}
	-- ===一秀礼包
	-- ===索引: tMidAutumnDay_BoBing_RewardItem["CommonReward"][12]
	-- ===LogStep:2[1]
	-- ===
	-- ===
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][12]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][12]["LogStep"] = "2[1]"
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][12]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][12]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][12]["RewardItem"][1]["Id"] = 3323119 -- 一秀礼盒[3323119][属性:9][叠加:999][金币:0], 【表格】二举礼包
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][12]["RewardItem"][1]["Attr"] = "0 1" -- 一秀礼盒*1
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][12]["RewardNoNeedTip"] = 1
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][12]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][12]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem["CommonReward"][13] = {}
	-- ===?诶癜?
	-- ===索引: tMidAutumnDay_BoBing_RewardItem["CommonReward"][13]
	-- ===LogStep:2[1]
	-- ===
	-- ===
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][13]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][13]["LogStep"] = "2[1]"
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][13]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][13]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][13]["RewardItem"][1]["Id"] = 3323120 -- 罚黑礼盒[3323120][属性:9][叠加:999][金币:0], 【表格】?诶癜?
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][13]["RewardItem"][1]["Attr"] = "0 1" -- 罚黑礼盒*1
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][13]["RewardNoNeedTip"] = 1
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][13]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem["CommonReward"][13]["RewardEffect"]["Effect"] = "angelwing"


	-- ===400积分奖励
	-- ===索引: tMidAutumnDay_BoBing_RewardItem["StageReward"][1]
	-- ===
	-- ===
	tMidAutumnDay_BoBing_RewardItem["StageReward"] = {}
	tMidAutumnDay_BoBing_RewardItem["StageReward"][1] = {}
	tMidAutumnDay_BoBing_RewardItem["StageReward"][1]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem["StageReward"][1]["LogStep"] = "2[2]"
	tMidAutumnDay_BoBing_RewardItem["StageReward"][1]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem["StageReward"][1]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem["StageReward"][1]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤炼石+3
	tMidAutumnDay_BoBing_RewardItem["StageReward"][1]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+3赤炼石（赠）*1
	tMidAutumnDay_BoBing_RewardItem["StageReward"][1]["RewardStrengthValue"] = {}
	tMidAutumnDay_BoBing_RewardItem["StageReward"][1]["RewardStrengthValue"]["Value"] = 500 -- 气力值, 【需求】500气力值
	tMidAutumnDay_BoBing_RewardItem["StageReward"][1]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem["StageReward"][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem["StageReward"][1]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem["StageReward"][2] = {}
	-- ===800积分奖励
	-- ===索引: tMidAutumnDay_BoBing_RewardItem["StageReward"][2]
	-- ===LogStep:2[2]
	-- ===
	-- ===
	tMidAutumnDay_BoBing_RewardItem["StageReward"][2]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem["StageReward"][2]["LogStep"] = "2[2]"
	tMidAutumnDay_BoBing_RewardItem["StageReward"][2]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem["StageReward"][2]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem["StageReward"][2]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】人参果
	tMidAutumnDay_BoBing_RewardItem["StageReward"][2]["RewardItem"][1]["Attr"] = "0 10" -- 人参果*10
	tMidAutumnDay_BoBing_RewardItem["StageReward"][2]["RewardStrengthValue"] = {}
	tMidAutumnDay_BoBing_RewardItem["StageReward"][2]["RewardStrengthValue"]["Value"] = 1000 -- 气力值, 【需求】1000气力值
	tMidAutumnDay_BoBing_RewardItem["StageReward"][2]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem["StageReward"][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem["StageReward"][2]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem["StageReward"][3] = {}
	-- ===1200积分奖励
	-- ===索引: tMidAutumnDay_BoBing_RewardItem["StageReward"][3]
	-- ===LogStep:2[2]
	-- ===
	-- ===
	tMidAutumnDay_BoBing_RewardItem["StageReward"][3]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem["StageReward"][3]["LogStep"] = "2[2]"
	tMidAutumnDay_BoBing_RewardItem["StageReward"][3]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem["StageReward"][3]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem["StageReward"][3]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tMidAutumnDay_BoBing_RewardItem["StageReward"][3]["RewardItem"][1]["Attr"] = "0 50 3" -- 万能神纹精粹（赠）*50
	tMidAutumnDay_BoBing_RewardItem["StageReward"][3]["RewardStrengthValue"] = {}
	tMidAutumnDay_BoBing_RewardItem["StageReward"][3]["RewardStrengthValue"]["Value"] = 1500 -- 气力值, 【需求】1500气力值
	tMidAutumnDay_BoBing_RewardItem["StageReward"][3]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem["StageReward"][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem["StageReward"][3]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem["StageReward"][4] = {}
	-- ===3000积分奖励
	-- ===索引: tMidAutumnDay_BoBing_RewardItem["StageReward"][4]
	-- ===LogStep:2[2]
	-- ===
	-- ===
	tMidAutumnDay_BoBing_RewardItem["StageReward"][4]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem["StageReward"][4]["LogStep"] = "2[2]"
	tMidAutumnDay_BoBing_RewardItem["StageReward"][4]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem["StageReward"][4]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem["StageReward"][4]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tMidAutumnDay_BoBing_RewardItem["StageReward"][4]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
	tMidAutumnDay_BoBing_RewardItem["StageReward"][4]["RewardStrengthValue"] = {}
	tMidAutumnDay_BoBing_RewardItem["StageReward"][4]["RewardStrengthValue"]["Value"] = 2000 -- 气力值, 【需求】2000气力值
	tMidAutumnDay_BoBing_RewardItem["StageReward"][4]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem["StageReward"][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem["StageReward"][4]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem["StageReward"][5] = {}
	-- ===6000积分奖励
	-- ===索引: tMidAutumnDay_BoBing_RewardItem["StageReward"][5]
	-- ===LogStep:2[2]
	-- ===
	-- ===
	tMidAutumnDay_BoBing_RewardItem["StageReward"][5]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem["StageReward"][5]["LogStep"] = "2[2]"
	tMidAutumnDay_BoBing_RewardItem["StageReward"][5]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem["StageReward"][5]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem["StageReward"][5]["RewardItem"][1]["Id"] = 3311820 -- 良品神纹源晶[3311820][属性:9][叠加:10000][金币:0], 【表格】良品神纹源晶
	tMidAutumnDay_BoBing_RewardItem["StageReward"][5]["RewardItem"][1]["Attr"] = "0 1" -- 良品神纹源晶*1
	tMidAutumnDay_BoBing_RewardItem["StageReward"][5]["RewardStrengthValue"] = {}
	tMidAutumnDay_BoBing_RewardItem["StageReward"][5]["RewardStrengthValue"]["Value"] = 5000 -- 气力值, 【需求】5000气力值
	tMidAutumnDay_BoBing_RewardItem["StageReward"][5]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem["StageReward"][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem["StageReward"][5]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem["StageReward"][6] = {}
	-- ===12000积分奖励
	-- ===索引: tMidAutumnDay_BoBing_RewardItem["StageReward"][6]
	-- ===LogStep:2[2]
	-- ===
	-- ===
	tMidAutumnDay_BoBing_RewardItem["StageReward"][6]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem["StageReward"][6]["LogStep"] = "2[2]"
	tMidAutumnDay_BoBing_RewardItem["StageReward"][6]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem["StageReward"][6]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem["StageReward"][6]["RewardItem"][1]["Id"] = 730006 -- +6赤炼石[730006][属性:0][叠加:0][金币:0], 【表格】赤炼石+6
	tMidAutumnDay_BoBing_RewardItem["StageReward"][6]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+6赤炼石（赠）*1
	tMidAutumnDay_BoBing_RewardItem["StageReward"][6]["RewardStrengthValue"] = {}
	tMidAutumnDay_BoBing_RewardItem["StageReward"][6]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】10000气力值
	tMidAutumnDay_BoBing_RewardItem["StageReward"][6]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem["StageReward"][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem["StageReward"][6]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem["StageReward"][7] = {}
	-- ===25000积分奖励
	-- ===索引: tMidAutumnDay_BoBing_RewardItem["StageReward"][7]
	-- ===LogStep:2[2]
	-- ===
	-- ===
	tMidAutumnDay_BoBing_RewardItem["StageReward"][7]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem["StageReward"][7]["LogStep"] = "2[2]"
	tMidAutumnDay_BoBing_RewardItem["StageReward"][7]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem["StageReward"][7]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem["StageReward"][7]["RewardItem"][1]["Id"] = 3311820 -- 良品神纹源晶[3311820][属性:9][叠加:10000][金币:0], 【表格】良品神纹源晶
	tMidAutumnDay_BoBing_RewardItem["StageReward"][7]["RewardItem"][1]["Attr"] = "0 5" -- 良品神纹源晶*5
	tMidAutumnDay_BoBing_RewardItem["StageReward"][7]["RewardStrengthValue"] = {}
	tMidAutumnDay_BoBing_RewardItem["StageReward"][7]["RewardStrengthValue"]["Value"] = 12000 -- 气力值, 【需求】12000气力值
	tMidAutumnDay_BoBing_RewardItem["StageReward"][7]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem["StageReward"][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem["StageReward"][7]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem["StageReward"][8] = {}
	-- ===45000积分奖励
	-- ===索引: tMidAutumnDay_BoBing_RewardItem["StageReward"][8]
	-- ===LogStep:2[2]
	-- ===
	-- ===
	tMidAutumnDay_BoBing_RewardItem["StageReward"][8]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem["StageReward"][8]["LogStep"] = "2[2]"
	tMidAutumnDay_BoBing_RewardItem["StageReward"][8]["RewardStrengthValue"] = {}
	tMidAutumnDay_BoBing_RewardItem["StageReward"][8]["RewardStrengthValue"]["Value"] = 15000 -- 气力值, 【需求】15000气力值
	tMidAutumnDay_BoBing_RewardItem["StageReward"][8]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem["StageReward"][8]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem["StageReward"][8]["RewardItem"][1]["Id"] = 3319013 -- (+1)稀有黄色神纹随机包(赠)[4035009][属性:8][叠加:0][金币:0], 【表格】稀有黄色神纹（赠）
	tMidAutumnDay_BoBing_RewardItem["StageReward"][8]["RewardItem"][1]["Attr"] = "0 1" -- (+1)稀有黄色神纹随机包(赠)*1
	tMidAutumnDay_BoBing_RewardItem["StageReward"][8]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem["StageReward"][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem["StageReward"][8]["RewardEffect"]["Effect"] = "angelwing"


	-- tMidAutumnDay_BoBing_RewardItem["StageReward"][9] = {}
	-- -- ===88000积分奖励
	-- -- ===索引: tMidAutumnDay_BoBing_RewardItem["StageReward"][9]
	-- -- ===
	-- -- ===
	-- tMidAutumnDay_BoBing_RewardItem["StageReward"][9]["LogId"] = 12001597
	-- tMidAutumnDay_BoBing_RewardItem["StageReward"][9]["RewardItem"] = {}
	-- tMidAutumnDay_BoBing_RewardItem["StageReward"][9]["RewardItem"][1] = {}
	-- tMidAutumnDay_BoBing_RewardItem["StageReward"][9]["RewardItem"][1]["Id"] = 202000 --  202000 【库里没有该物品】, 【表格】中秋专属坐骑（紫色月亮）
	-- tMidAutumnDay_BoBing_RewardItem["StageReward"][9]["RewardItem"][1]["Attr"] = "0 1" --  202000 【库里没有该物品】*1
	-- tMidAutumnDay_BoBing_RewardItem["StageReward"][9]["RewardItem"][2] = {}
	-- tMidAutumnDay_BoBing_RewardItem["StageReward"][9]["RewardItem"][2]["Id"] = 4035009 -- 绝命破(+9)[4035009][属性:8][叠加:0][金币:0], 【表格】7天暴击加成伤害神纹
	-- tMidAutumnDay_BoBing_RewardItem["StageReward"][9]["RewardItem"][2]["Attr"] = "0 1 0 32400 1" -- 7天时效(激活)的绝命破(+9)*1
	-- tMidAutumnDay_BoBing_RewardItem["StageReward"][9]["RewardEffect"] = {}
	-- tMidAutumnDay_BoBing_RewardItem["StageReward"][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	-- tMidAutumnDay_BoBing_RewardItem["StageReward"][9]["RewardEffect"]["Effect"] = "angelwing"

	tMidAutumnDay_BoBing_RewardItem[3323108] = {}
	-- ===状元插金花
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323108][1]
	-- ===删除: 3323108,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323108][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323108][1]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323108][1]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323108][1]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323108][1]["DeleteItem"][1]["Id"] = 3323108 -- 【库】状元插金花礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323108][1]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323108][1]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323108][1]["RewardItem"][1]["Id"] = 730006 -- +6赤炼石[730006][属性:0][叠加:0][金币:0], 【表格】赤炼石+6
	tMidAutumnDay_BoBing_RewardItem[3323108][1]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+6赤炼石（赠）*1
	tMidAutumnDay_BoBing_RewardItem[3323108][1]["RewardItem"][2] = {}
	tMidAutumnDay_BoBing_RewardItem[3323108][1]["RewardItem"][2]["Id"] = 3323123 -- 状元金饼[3323123][属性:9][叠加:999][金币:0], 【表格】金饼
	tMidAutumnDay_BoBing_RewardItem[3323108][1]["RewardItem"][2]["Attr"] = "0 1" -- 状元金饼*1
	tMidAutumnDay_BoBing_RewardItem[3323108][1]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323108][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323108][1]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323108][2] = {}
	-- ===状元插金花
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323108][2]
	-- ===删除: 3323108,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323108][2]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323108][2]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323108][2]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323108][2]["DeleteItem"][1]["Id"] = 3323108 -- 【库】状元插金花礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323108][2]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323108][2]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323108][2]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tMidAutumnDay_BoBing_RewardItem[3323108][2]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的晶莹星陨石*5
	tMidAutumnDay_BoBing_RewardItem[3323108][2]["RewardItem"][2] = {}
	tMidAutumnDay_BoBing_RewardItem[3323108][2]["RewardItem"][2]["Id"] = 3323123 -- 状元金饼[3323123][属性:9][叠加:999][金币:0], 【表格】金饼
	tMidAutumnDay_BoBing_RewardItem[3323108][2]["RewardItem"][2]["Attr"] = "0 1" -- 状元金饼*1
	tMidAutumnDay_BoBing_RewardItem[3323108][2]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323108][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323108][2]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323108][3] = {}
	-- ===状元插金花
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323108][3]
	-- ===删除: 3323108,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323108][3]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323108][3]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323108][3]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323108][3]["DeleteItem"][1]["Id"] = 3323108 -- 【库】状元插金花礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323108][3]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323108][3]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323108][3]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tMidAutumnDay_BoBing_RewardItem[3323108][3]["RewardItem"][1]["Attr"] = "0 300 3" -- 万能神纹精粹（赠）*300
	tMidAutumnDay_BoBing_RewardItem[3323108][3]["RewardItem"][2] = {}
	tMidAutumnDay_BoBing_RewardItem[3323108][3]["RewardItem"][2]["Id"] = 3323123 -- 状元金饼[3323123][属性:9][叠加:999][金币:0], 【表格】金饼
	tMidAutumnDay_BoBing_RewardItem[3323108][3]["RewardItem"][2]["Attr"] = "0 1" -- 状元金饼*1
	tMidAutumnDay_BoBing_RewardItem[3323108][3]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323108][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323108][3]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323108][4] = {}
	-- ===状元插金花
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323108][4]
	-- ===删除: 3323108,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323108][4]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323108][4]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323108][4]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323108][4]["DeleteItem"][1]["Id"] = 3323108 -- 【库】状元插金花礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323108][4]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323108][4]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323108][4]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】人参果
	tMidAutumnDay_BoBing_RewardItem[3323108][4]["RewardItem"][1]["Attr"] = "0 100" -- 人参果*100
	tMidAutumnDay_BoBing_RewardItem[3323108][4]["RewardItem"][2] = {}
	tMidAutumnDay_BoBing_RewardItem[3323108][4]["RewardItem"][2]["Id"] = 3323123 -- 状元金饼[3323123][属性:9][叠加:999][金币:0], 【表格】金饼
	tMidAutumnDay_BoBing_RewardItem[3323108][4]["RewardItem"][2]["Attr"] = "0 1" -- 状元金饼*1
	tMidAutumnDay_BoBing_RewardItem[3323108][4]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323108][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323108][4]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323108][5] = {}
	-- ===满堂红礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323108][5]
	-- ===删除: 3323108,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323108][5]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323108][5]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323108][5]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323108][5]["DeleteItem"][1]["Id"] = 3323108 -- 【库】状元插金花礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323108][5]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323108][5]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323108][5]["RewardItem"][1]["Id"] = 3321098 -- 神兵灵魄[3321098][属性:9][叠加:10000][金币:0], 【表格】神兵灵魄
	tMidAutumnDay_BoBing_RewardItem[3323108][5]["RewardItem"][1]["Attr"] = "0 100" -- 神兵灵魄*100
	tMidAutumnDay_BoBing_RewardItem[3323108][5]["RewardItem"][2] = {}
	tMidAutumnDay_BoBing_RewardItem[3323108][5]["RewardItem"][2]["Id"] = 3323123 -- 状元金饼[3323123][属性:9][叠加:999][金币:0], 【表格】金饼
	tMidAutumnDay_BoBing_RewardItem[3323108][5]["RewardItem"][2]["Attr"] = "0 1" -- 状元金饼*1
	tMidAutumnDay_BoBing_RewardItem[3323108][5]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323108][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323108][5]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323108][6] = {}
	-- ===状元插金花
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323108][6]
	-- ===删除: 3323108,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323108][6]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323108][6]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323108][6]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323108][6]["DeleteItem"][1]["Id"] = 3323108 -- 【库】状元插金花礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323108][6]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323108][6]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323108][6]["RewardItem"][1]["Id"] = 3321107 -- 炼魂石[3321107][属性:9][叠加:10000][金币:0], 【表格】炼魂玉
	tMidAutumnDay_BoBing_RewardItem[3323108][6]["RewardItem"][1]["Attr"] = "0 110" -- 炼魂石*110
	tMidAutumnDay_BoBing_RewardItem[3323108][6]["RewardItem"][2] = {}
	tMidAutumnDay_BoBing_RewardItem[3323108][6]["RewardItem"][2]["Id"] = 3323123 -- 状元金饼[3323123][属性:9][叠加:999][金币:0], 【表格】金饼
	tMidAutumnDay_BoBing_RewardItem[3323108][6]["RewardItem"][2]["Attr"] = "0 1" -- 状元金饼*1
	tMidAutumnDay_BoBing_RewardItem[3323108][6]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323108][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323108][6]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323109] = {}
	-- ===满堂红礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323109][1]
	-- ===删除: 3323109,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323109][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323109][1]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323109][1]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323109][1]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323109][1]["DeleteItem"][1]["Id"] = 3323109 -- 【库】满堂红礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323109][1]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323109][1]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323109][1]["RewardItem"][1]["Id"] = 730006 -- +6赤炼石[730006][属性:0][叠加:0][金币:0], 【表格】赤炼石+6
	tMidAutumnDay_BoBing_RewardItem[3323109][1]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+6赤炼石（赠）*1
	tMidAutumnDay_BoBing_RewardItem[3323109][1]["RewardItem"][2] = {}
	tMidAutumnDay_BoBing_RewardItem[3323109][1]["RewardItem"][2]["Id"] = 3323124 -- 状元银饼[3323124][属性:9][叠加:999][金币:0], 【表格】银饼
	tMidAutumnDay_BoBing_RewardItem[3323109][1]["RewardItem"][2]["Attr"] = "0 3" -- 状元银饼*3
	tMidAutumnDay_BoBing_RewardItem[3323109][1]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323109][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323109][1]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323109][2] = {}
	-- ===满堂红礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323109][2]
	-- ===删除: 3323109,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323109][2]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323109][2]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323109][2]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323109][2]["DeleteItem"][1]["Id"] = 3323109 -- 【库】满堂红礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323109][2]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323109][2]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323109][2]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tMidAutumnDay_BoBing_RewardItem[3323109][2]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的晶莹星陨石*5
	tMidAutumnDay_BoBing_RewardItem[3323109][2]["RewardItem"][2] = {}
	tMidAutumnDay_BoBing_RewardItem[3323109][2]["RewardItem"][2]["Id"] = 3323124 -- 状元银饼[3323124][属性:9][叠加:999][金币:0], 【表格】银饼
	tMidAutumnDay_BoBing_RewardItem[3323109][2]["RewardItem"][2]["Attr"] = "0 3" -- 状元银饼*3
	tMidAutumnDay_BoBing_RewardItem[3323109][2]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323109][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323109][2]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323109][3] = {}
	-- ===满堂红礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323109][3]
	-- ===删除: 3323109,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323109][3]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323109][3]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323109][3]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323109][3]["DeleteItem"][1]["Id"] = 3323109 -- 【库】满堂红礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323109][3]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323109][3]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323109][3]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tMidAutumnDay_BoBing_RewardItem[3323109][3]["RewardItem"][1]["Attr"] = "0 300 3" -- 万能神纹精粹（赠）*300
	tMidAutumnDay_BoBing_RewardItem[3323109][3]["RewardItem"][2] = {}
	tMidAutumnDay_BoBing_RewardItem[3323109][3]["RewardItem"][2]["Id"] = 3323124 -- 状元银饼[3323124][属性:9][叠加:999][金币:0], 【表格】银饼
	tMidAutumnDay_BoBing_RewardItem[3323109][3]["RewardItem"][2]["Attr"] = "0 3" -- 状元银饼*3
	tMidAutumnDay_BoBing_RewardItem[3323109][3]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323109][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323109][3]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323109][4] = {}
	-- ===满堂红礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323109][4]
	-- ===删除: 3323109,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323109][4]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323109][4]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323109][4]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323109][4]["DeleteItem"][1]["Id"] = 3323109 -- 【库】满堂红礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323109][4]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323109][4]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323109][4]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】人参果
	tMidAutumnDay_BoBing_RewardItem[3323109][4]["RewardItem"][1]["Attr"] = "0 100" -- 人参果*100
	tMidAutumnDay_BoBing_RewardItem[3323109][4]["RewardItem"][2] = {}
	tMidAutumnDay_BoBing_RewardItem[3323109][4]["RewardItem"][2]["Id"] = 3323124 -- 状元银饼[3323124][属性:9][叠加:999][金币:0], 【表格】银饼
	tMidAutumnDay_BoBing_RewardItem[3323109][4]["RewardItem"][2]["Attr"] = "0 3" -- 状元银饼*3
	tMidAutumnDay_BoBing_RewardItem[3323109][4]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323109][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323109][4]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323109][5] = {}
	-- ===满堂红礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323109][5]
	-- ===删除: 3323109,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323109][5]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323109][5]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323109][5]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323109][5]["DeleteItem"][1]["Id"] = 3323109 -- 【库】满堂红礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323109][5]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323109][5]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323109][5]["RewardItem"][1]["Id"] = 3321098 -- 神兵灵魄[3321098][属性:9][叠加:10000][金币:0], 【表格】神兵灵魄
	tMidAutumnDay_BoBing_RewardItem[3323109][5]["RewardItem"][1]["Attr"] = "0 100" -- 神兵灵魄*100
	tMidAutumnDay_BoBing_RewardItem[3323109][5]["RewardItem"][2] = {}
	tMidAutumnDay_BoBing_RewardItem[3323109][5]["RewardItem"][2]["Id"] = 3323124 -- 状元银饼[3323124][属性:9][叠加:999][金币:0], 【表格】银饼
	tMidAutumnDay_BoBing_RewardItem[3323109][5]["RewardItem"][2]["Attr"] = "0 3" -- 状元银饼*3
	tMidAutumnDay_BoBing_RewardItem[3323109][5]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323109][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323109][5]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323109][6] = {}
	-- ===满堂红礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323109][6]
	-- ===删除: 3323109,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323109][6]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323109][6]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323109][6]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323109][6]["DeleteItem"][1]["Id"] = 3323109 -- 【库】满堂红礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323109][6]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323109][6]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323109][6]["RewardItem"][1]["Id"] = 3321107 -- 炼魂石[3321107][属性:9][叠加:10000][金币:0], 【表格】炼魂玉
	tMidAutumnDay_BoBing_RewardItem[3323109][6]["RewardItem"][1]["Attr"] = "0 110" -- 炼魂石*110
	tMidAutumnDay_BoBing_RewardItem[3323109][6]["RewardItem"][2] = {}
	tMidAutumnDay_BoBing_RewardItem[3323109][6]["RewardItem"][2]["Id"] = 3323124 -- 状元银饼[3323124][属性:9][叠加:999][金币:0], 【表格】银饼
	tMidAutumnDay_BoBing_RewardItem[3323109][6]["RewardItem"][2]["Attr"] = "0 3" -- 状元银饼*3
	tMidAutumnDay_BoBing_RewardItem[3323109][6]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323109][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323109][6]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323110] = {}
	-- ===遍地锦礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323110][1]
	-- ===删除: 3323110,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323110][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323110][1]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323110][1]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323110][1]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323110][1]["DeleteItem"][1]["Id"] = 3323110 -- 【库】遍地锦礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323110][1]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323110][1]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323110][1]["RewardItem"][1]["Id"] = 730006 -- +6赤炼石[730006][属性:0][叠加:0][金币:0], 【表格】赤炼石+6
	tMidAutumnDay_BoBing_RewardItem[3323110][1]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+6赤炼石（赠）*1
	tMidAutumnDay_BoBing_RewardItem[3323110][1]["RewardItem"][2] = {}
	tMidAutumnDay_BoBing_RewardItem[3323110][1]["RewardItem"][2]["Id"] = 3323124 -- 状元银饼[3323124][属性:9][叠加:999][金币:0], 【表格】银饼
	tMidAutumnDay_BoBing_RewardItem[3323110][1]["RewardItem"][2]["Attr"] = "0 2" -- 状元银饼*2
	tMidAutumnDay_BoBing_RewardItem[3323110][1]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323110][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323110][1]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323110][2] = {}
	-- ===遍地锦礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323110][2]
	-- ===删除: 3323110,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323110][2]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323110][2]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323110][2]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323110][2]["DeleteItem"][1]["Id"] = 3323110 -- 【库】遍地锦礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323110][2]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323110][2]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323110][2]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tMidAutumnDay_BoBing_RewardItem[3323110][2]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的晶莹星陨石*5
	tMidAutumnDay_BoBing_RewardItem[3323110][2]["RewardItem"][2] = {}
	tMidAutumnDay_BoBing_RewardItem[3323110][2]["RewardItem"][2]["Id"] = 3323124 -- 状元银饼[3323124][属性:9][叠加:999][金币:0], 【表格】银饼
	tMidAutumnDay_BoBing_RewardItem[3323110][2]["RewardItem"][2]["Attr"] = "0 2" -- 状元银饼*2
	tMidAutumnDay_BoBing_RewardItem[3323110][2]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323110][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323110][2]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323110][3] = {}
	-- ===遍地锦礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323110][3]
	-- ===删除: 3323110,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323110][3]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323110][3]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323110][3]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323110][3]["DeleteItem"][1]["Id"] = 3323110 -- 【库】遍地锦礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323110][3]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323110][3]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323110][3]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tMidAutumnDay_BoBing_RewardItem[3323110][3]["RewardItem"][1]["Attr"] = "0 300 3" -- 万能神纹精粹（赠）*300
	tMidAutumnDay_BoBing_RewardItem[3323110][3]["RewardItem"][2] = {}
	tMidAutumnDay_BoBing_RewardItem[3323110][3]["RewardItem"][2]["Id"] = 3323124 -- 状元银饼[3323124][属性:9][叠加:999][金币:0], 【表格】银饼
	tMidAutumnDay_BoBing_RewardItem[3323110][3]["RewardItem"][2]["Attr"] = "0 2" -- 状元银饼*2
	tMidAutumnDay_BoBing_RewardItem[3323110][3]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323110][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323110][3]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323110][4] = {}
	-- ===遍地锦礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323110][4]
	-- ===删除: 3323110,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323110][4]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323110][4]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323110][4]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323110][4]["DeleteItem"][1]["Id"] = 3323110 -- 【库】遍地锦礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323110][4]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323110][4]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323110][4]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】人参果
	tMidAutumnDay_BoBing_RewardItem[3323110][4]["RewardItem"][1]["Attr"] = "0 100" -- 人参果*100
	tMidAutumnDay_BoBing_RewardItem[3323110][4]["RewardItem"][2] = {}
	tMidAutumnDay_BoBing_RewardItem[3323110][4]["RewardItem"][2]["Id"] = 3323124 -- 状元银饼[3323124][属性:9][叠加:999][金币:0], 【表格】银饼
	tMidAutumnDay_BoBing_RewardItem[3323110][4]["RewardItem"][2]["Attr"] = "0 2" -- 状元银饼*2
	tMidAutumnDay_BoBing_RewardItem[3323110][4]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323110][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323110][4]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323110][5] = {}
	-- ===遍地锦礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323110][5]
	-- ===删除: 3323110,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323110][5]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323110][5]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323110][5]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323110][5]["DeleteItem"][1]["Id"] = 3323110 -- 【库】遍地锦礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323110][5]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323110][5]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323110][5]["RewardItem"][1]["Id"] = 3321098 -- 神兵灵魄[3321098][属性:9][叠加:10000][金币:0], 【表格】神兵灵魄
	tMidAutumnDay_BoBing_RewardItem[3323110][5]["RewardItem"][1]["Attr"] = "0 100" -- 神兵灵魄*100
	tMidAutumnDay_BoBing_RewardItem[3323110][5]["RewardItem"][2] = {}
	tMidAutumnDay_BoBing_RewardItem[3323110][5]["RewardItem"][2]["Id"] = 3323124 -- 状元银饼[3323124][属性:9][叠加:999][金币:0], 【表格】银饼
	tMidAutumnDay_BoBing_RewardItem[3323110][5]["RewardItem"][2]["Attr"] = "0 2" -- 状元银饼*2
	tMidAutumnDay_BoBing_RewardItem[3323110][5]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323110][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323110][5]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323110][6] = {}
	-- ===遍地锦礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323110][6]
	-- ===删除: 3323110,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323110][6]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323110][6]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323110][6]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323110][6]["DeleteItem"][1]["Id"] = 3323110 -- 【库】遍地锦礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323110][6]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323110][6]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323110][6]["RewardItem"][1]["Id"] = 3321107 -- 炼魂石[3321107][属性:9][叠加:10000][金币:0], 【表格】炼魂玉
	tMidAutumnDay_BoBing_RewardItem[3323110][6]["RewardItem"][1]["Attr"] = "0 110" -- 炼魂石*110
	tMidAutumnDay_BoBing_RewardItem[3323110][6]["RewardItem"][2] = {}
	tMidAutumnDay_BoBing_RewardItem[3323110][6]["RewardItem"][2]["Id"] = 3323124 -- 状元银饼[3323124][属性:9][叠加:999][金币:0], 【表格】银饼
	tMidAutumnDay_BoBing_RewardItem[3323110][6]["RewardItem"][2]["Attr"] = "0 2" -- 状元银饼*2
	tMidAutumnDay_BoBing_RewardItem[3323110][6]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323110][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323110][6]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323111] = {}
	-- ===六勃黑礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323111][1]
	-- ===删除: 3323111,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323111][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323111][1]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323111][1]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323111][1]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323111][1]["DeleteItem"][1]["Id"] = 3323111 -- 【库】六勃黑礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323111][1]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323111][1]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323111][1]["RewardItem"][1]["Id"] = 730006 -- +6赤炼石[730006][属性:0][叠加:0][金币:0], 【表格】赤炼石+6
	tMidAutumnDay_BoBing_RewardItem[3323111][1]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+6赤炼石（赠）*1
	tMidAutumnDay_BoBing_RewardItem[3323111][1]["RewardItem"][2] = {}
	tMidAutumnDay_BoBing_RewardItem[3323111][1]["RewardItem"][2]["Id"] = 3323124 -- 状元银饼[3323124][属性:9][叠加:999][金币:0], 【表格】银饼
	tMidAutumnDay_BoBing_RewardItem[3323111][1]["RewardItem"][2]["Attr"] = "0 1" -- 状元银饼*1
	tMidAutumnDay_BoBing_RewardItem[3323111][1]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323111][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323111][1]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323111][2] = {}
	-- ===六勃黑礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323111][2]
	-- ===删除: 3323111,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323111][2]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323111][2]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323111][2]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323111][2]["DeleteItem"][1]["Id"] = 3323111 -- 【库】六勃黑礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323111][2]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323111][2]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323111][2]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tMidAutumnDay_BoBing_RewardItem[3323111][2]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的晶莹星陨石*5
	tMidAutumnDay_BoBing_RewardItem[3323111][2]["RewardItem"][2] = {}
	tMidAutumnDay_BoBing_RewardItem[3323111][2]["RewardItem"][2]["Id"] = 3323124 -- 状元银饼[3323124][属性:9][叠加:999][金币:0], 【表格】银饼
	tMidAutumnDay_BoBing_RewardItem[3323111][2]["RewardItem"][2]["Attr"] = "0 1" -- 状元银饼*1
	tMidAutumnDay_BoBing_RewardItem[3323111][2]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323111][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323111][2]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323111][3] = {}
	-- ===六勃黑礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323111][3]
	-- ===删除: 3323111,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323111][3]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323111][3]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323111][3]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323111][3]["DeleteItem"][1]["Id"] = 3323111 -- 【库】六勃黑礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323111][3]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323111][3]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323111][3]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tMidAutumnDay_BoBing_RewardItem[3323111][3]["RewardItem"][1]["Attr"] = "0 300 3" -- 万能神纹精粹（赠）*300
	tMidAutumnDay_BoBing_RewardItem[3323111][3]["RewardItem"][2] = {}
	tMidAutumnDay_BoBing_RewardItem[3323111][3]["RewardItem"][2]["Id"] = 3323124 -- 状元银饼[3323124][属性:9][叠加:999][金币:0], 【表格】银饼
	tMidAutumnDay_BoBing_RewardItem[3323111][3]["RewardItem"][2]["Attr"] = "0 1" -- 状元银饼*1
	tMidAutumnDay_BoBing_RewardItem[3323111][3]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323111][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323111][3]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323111][4] = {}
	-- ===六勃黑礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323111][4]
	-- ===删除: 3323111,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323111][4]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323111][4]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323111][4]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323111][4]["DeleteItem"][1]["Id"] = 3323111 -- 【库】六勃黑礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323111][4]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323111][4]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323111][4]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】人参果
	tMidAutumnDay_BoBing_RewardItem[3323111][4]["RewardItem"][1]["Attr"] = "0 100" -- 人参果*100
	tMidAutumnDay_BoBing_RewardItem[3323111][4]["RewardItem"][2] = {}
	tMidAutumnDay_BoBing_RewardItem[3323111][4]["RewardItem"][2]["Id"] = 3323124 -- 状元银饼[3323124][属性:9][叠加:999][金币:0], 【表格】银饼
	tMidAutumnDay_BoBing_RewardItem[3323111][4]["RewardItem"][2]["Attr"] = "0 1" -- 状元银饼*1
	tMidAutumnDay_BoBing_RewardItem[3323111][4]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323111][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323111][4]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323111][5] = {}
	-- ===六勃黑礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323111][5]
	-- ===删除: 3323111,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323111][5]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323111][5]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323111][5]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323111][5]["DeleteItem"][1]["Id"] = 3323111 -- 【库】六勃黑礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323111][5]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323111][5]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323111][5]["RewardItem"][1]["Id"] = 3321098 -- 神兵灵魄[3321098][属性:9][叠加:10000][金币:0], 【表格】神兵灵魄
	tMidAutumnDay_BoBing_RewardItem[3323111][5]["RewardItem"][1]["Attr"] = "0 100" -- 神兵灵魄*100
	tMidAutumnDay_BoBing_RewardItem[3323111][5]["RewardItem"][2] = {}
	tMidAutumnDay_BoBing_RewardItem[3323111][5]["RewardItem"][2]["Id"] = 3323124 -- 状元银饼[3323124][属性:9][叠加:999][金币:0], 【表格】银饼
	tMidAutumnDay_BoBing_RewardItem[3323111][5]["RewardItem"][2]["Attr"] = "0 1" -- 状元银饼*1
	tMidAutumnDay_BoBing_RewardItem[3323111][5]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323111][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323111][5]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323111][6] = {}
	-- ===六勃黑礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323111][6]
	-- ===删除: 3323111,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323111][6]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323111][6]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323111][6]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323111][6]["DeleteItem"][1]["Id"] = 3323111 -- 【库】六勃黑礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323111][6]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323111][6]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323111][6]["RewardItem"][1]["Id"] = 3321107 -- 炼魂石[3321107][属性:9][叠加:10000][金币:0], 【表格】炼魂玉
	tMidAutumnDay_BoBing_RewardItem[3323111][6]["RewardItem"][1]["Attr"] = "0 110" -- 炼魂石*110
	tMidAutumnDay_BoBing_RewardItem[3323111][6]["RewardItem"][2] = {}
	tMidAutumnDay_BoBing_RewardItem[3323111][6]["RewardItem"][2]["Id"] = 3323124 -- 状元银饼[3323124][属性:9][叠加:999][金币:0], 【表格】银饼
	tMidAutumnDay_BoBing_RewardItem[3323111][6]["RewardItem"][2]["Attr"] = "0 1" -- 状元银饼*1
	tMidAutumnDay_BoBing_RewardItem[3323111][6]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323111][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323111][6]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323112] = {}
	-- ===五红
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323112][1]
	-- ===删除: 3323112,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323112][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323112][1]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323112][1]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323112][1]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323112][1]["DeleteItem"][1]["Id"] = 3323112 -- 【库】五王礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323112][1]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323112][1]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323112][1]["RewardItem"][1]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5
	tMidAutumnDay_BoBing_RewardItem[3323112][1]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+5赤炼石（赠）*1
	tMidAutumnDay_BoBing_RewardItem[3323112][1]["RewardItem"][2] = {}
	tMidAutumnDay_BoBing_RewardItem[3323112][1]["RewardItem"][2]["Id"] = 3323125 -- 状元铜饼[3323125][属性:9][叠加:999][金币:0], 【表格】铜饼
	tMidAutumnDay_BoBing_RewardItem[3323112][1]["RewardItem"][2]["Attr"] = "0 3" -- 状元铜饼*3
	tMidAutumnDay_BoBing_RewardItem[3323112][1]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323112][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323112][1]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323112][2] = {}
	-- ===五红
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323112][2]
	-- ===删除: 3323112,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323112][2]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323112][2]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323112][2]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323112][2]["DeleteItem"][1]["Id"] = 3323112 -- 【库】五王礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323112][2]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323112][2]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323112][2]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tMidAutumnDay_BoBing_RewardItem[3323112][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
	tMidAutumnDay_BoBing_RewardItem[3323112][2]["RewardItem"][2] = {}
	tMidAutumnDay_BoBing_RewardItem[3323112][2]["RewardItem"][2]["Id"] = 3323125 -- 状元铜饼[3323125][属性:9][叠加:999][金币:0], 【表格】铜饼
	tMidAutumnDay_BoBing_RewardItem[3323112][2]["RewardItem"][2]["Attr"] = "0 3" -- 状元铜饼*3
	tMidAutumnDay_BoBing_RewardItem[3323112][2]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323112][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323112][2]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323112][3] = {}
	-- ===五红
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323112][3]
	-- ===删除: 3323112,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323112][3]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323112][3]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323112][3]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323112][3]["DeleteItem"][1]["Id"] = 3323112 -- 【库】五王礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323112][3]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323112][3]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323112][3]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tMidAutumnDay_BoBing_RewardItem[3323112][3]["RewardItem"][1]["Attr"] = "0 100 3" -- 万能神纹精粹（赠）*100
	tMidAutumnDay_BoBing_RewardItem[3323112][3]["RewardItem"][2] = {}
	tMidAutumnDay_BoBing_RewardItem[3323112][3]["RewardItem"][2]["Id"] = 3323125 -- 状元铜饼[3323125][属性:9][叠加:999][金币:0], 【表格】铜饼
	tMidAutumnDay_BoBing_RewardItem[3323112][3]["RewardItem"][2]["Attr"] = "0 3" -- 状元铜饼*3
	tMidAutumnDay_BoBing_RewardItem[3323112][3]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323112][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323112][3]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323112][4] = {}
	-- ===五红
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323112][4]
	-- ===删除: 3323112,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323112][4]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323112][4]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323112][4]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323112][4]["DeleteItem"][1]["Id"] = 3323112 -- 【库】五王礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323112][4]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323112][4]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323112][4]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】人参果
	tMidAutumnDay_BoBing_RewardItem[3323112][4]["RewardItem"][1]["Attr"] = "0 30" -- 人参果*30
	tMidAutumnDay_BoBing_RewardItem[3323112][4]["RewardItem"][2] = {}
	tMidAutumnDay_BoBing_RewardItem[3323112][4]["RewardItem"][2]["Id"] = 3323125 -- 状元铜饼[3323125][属性:9][叠加:999][金币:0], 【表格】铜饼
	tMidAutumnDay_BoBing_RewardItem[3323112][4]["RewardItem"][2]["Attr"] = "0 3" -- 状元铜饼*3
	tMidAutumnDay_BoBing_RewardItem[3323112][4]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323112][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323112][4]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323112][5] = {}
	-- ===五红
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323112][5]
	-- ===删除: 3323112,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323112][5]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323112][5]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323112][5]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323112][5]["DeleteItem"][1]["Id"] = 3323112 -- 【库】五王礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323112][5]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323112][5]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323112][5]["RewardItem"][1]["Id"] = 3321098 -- 神兵灵魄[3321098][属性:9][叠加:10000][金币:0], 【表格】神兵灵魄
	tMidAutumnDay_BoBing_RewardItem[3323112][5]["RewardItem"][1]["Attr"] = "0 30" -- 神兵灵魄*30
	tMidAutumnDay_BoBing_RewardItem[3323112][5]["RewardItem"][2] = {}
	tMidAutumnDay_BoBing_RewardItem[3323112][5]["RewardItem"][2]["Id"] = 3323125 -- 状元铜饼[3323125][属性:9][叠加:999][金币:0], 【表格】铜饼
	tMidAutumnDay_BoBing_RewardItem[3323112][5]["RewardItem"][2]["Attr"] = "0 3" -- 状元铜饼*3
	tMidAutumnDay_BoBing_RewardItem[3323112][5]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323112][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323112][5]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323112][6] = {}
	-- ===五红
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323112][6]
	-- ===删除: 3323112,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323112][6]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323112][6]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323112][6]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323112][6]["DeleteItem"][1]["Id"] = 3323112 -- 【库】五王礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323112][6]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323112][6]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323112][6]["RewardItem"][1]["Id"] = 3321107 -- 炼魂石[3321107][属性:9][叠加:10000][金币:0], 【表格】炼魂玉
	tMidAutumnDay_BoBing_RewardItem[3323112][6]["RewardItem"][1]["Attr"] = "0 33" -- 炼魂石*33
	tMidAutumnDay_BoBing_RewardItem[3323112][6]["RewardItem"][2] = {}
	tMidAutumnDay_BoBing_RewardItem[3323112][6]["RewardItem"][2]["Id"] = 3323125 -- 状元铜饼[3323125][属性:9][叠加:999][金币:0], 【表格】铜饼
	tMidAutumnDay_BoBing_RewardItem[3323112][6]["RewardItem"][2]["Attr"] = "0 3" -- 状元铜饼*3
	tMidAutumnDay_BoBing_RewardItem[3323112][6]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323112][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323112][6]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323113] = {}
	-- ===五子登科
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323113][1]
	-- ===删除: 3323113,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323113][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323113][1]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323113][1]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323113][1]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323113][1]["DeleteItem"][1]["Id"] = 3323113 -- 【库】五子礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323113][1]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323113][1]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323113][1]["RewardItem"][1]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5
	tMidAutumnDay_BoBing_RewardItem[3323113][1]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+5赤炼石（赠）*1
	tMidAutumnDay_BoBing_RewardItem[3323113][1]["RewardItem"][2] = {}
	tMidAutumnDay_BoBing_RewardItem[3323113][1]["RewardItem"][2]["Id"] = 3323125 -- 状元铜饼[3323125][属性:9][叠加:999][金币:0], 【表格】铜饼
	tMidAutumnDay_BoBing_RewardItem[3323113][1]["RewardItem"][2]["Attr"] = "0 1" -- 状元铜饼*1
	tMidAutumnDay_BoBing_RewardItem[3323113][1]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323113][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323113][1]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323113][2] = {}
	-- ===五子登科
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323113][2]
	-- ===删除: 3323113,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323113][2]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323113][2]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323113][2]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323113][2]["DeleteItem"][1]["Id"] = 3323113 -- 【库】五子礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323113][2]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323113][2]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323113][2]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tMidAutumnDay_BoBing_RewardItem[3323113][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
	tMidAutumnDay_BoBing_RewardItem[3323113][2]["RewardItem"][2] = {}
	tMidAutumnDay_BoBing_RewardItem[3323113][2]["RewardItem"][2]["Id"] = 3323125 -- 状元铜饼[3323125][属性:9][叠加:999][金币:0], 【表格】铜饼
	tMidAutumnDay_BoBing_RewardItem[3323113][2]["RewardItem"][2]["Attr"] = "0 1" -- 状元铜饼*1
	tMidAutumnDay_BoBing_RewardItem[3323113][2]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323113][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323113][2]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323113][3] = {}
	-- ===五子登科
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323113][3]
	-- ===删除: 3323113,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323113][3]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323113][3]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323113][3]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323113][3]["DeleteItem"][1]["Id"] = 3323113 -- 【库】五子礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323113][3]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323113][3]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323113][3]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tMidAutumnDay_BoBing_RewardItem[3323113][3]["RewardItem"][1]["Attr"] = "0 100 3" -- 万能神纹精粹（赠）*100
	tMidAutumnDay_BoBing_RewardItem[3323113][3]["RewardItem"][2] = {}
	tMidAutumnDay_BoBing_RewardItem[3323113][3]["RewardItem"][2]["Id"] = 3323125 -- 状元铜饼[3323125][属性:9][叠加:999][金币:0], 【表格】铜饼
	tMidAutumnDay_BoBing_RewardItem[3323113][3]["RewardItem"][2]["Attr"] = "0 1" -- 状元铜饼*1
	tMidAutumnDay_BoBing_RewardItem[3323113][3]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323113][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323113][3]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323113][4] = {}
	-- ===五子登科
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323113][4]
	-- ===删除: 3323113,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323113][4]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323113][4]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323113][4]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323113][4]["DeleteItem"][1]["Id"] = 3323113 -- 【库】五子礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323113][4]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323113][4]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323113][4]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】人参果
	tMidAutumnDay_BoBing_RewardItem[3323113][4]["RewardItem"][1]["Attr"] = "0 30" -- 人参果*30
	tMidAutumnDay_BoBing_RewardItem[3323113][4]["RewardItem"][2] = {}
	tMidAutumnDay_BoBing_RewardItem[3323113][4]["RewardItem"][2]["Id"] = 3323125 -- 状元铜饼[3323125][属性:9][叠加:999][金币:0], 【表格】铜饼
	tMidAutumnDay_BoBing_RewardItem[3323113][4]["RewardItem"][2]["Attr"] = "0 1" -- 状元铜饼*1
	tMidAutumnDay_BoBing_RewardItem[3323113][4]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323113][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323113][4]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323113][5] = {}
	-- ===五子登科
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323113][5]
	-- ===删除: 3323113,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323113][5]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323113][5]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323113][5]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323113][5]["DeleteItem"][1]["Id"] = 3323113 -- 【库】五子礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323113][5]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323113][5]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323113][5]["RewardItem"][1]["Id"] = 3321098 -- 神兵灵魄[3321098][属性:9][叠加:10000][金币:0], 【表格】神兵灵魄
	tMidAutumnDay_BoBing_RewardItem[3323113][5]["RewardItem"][1]["Attr"] = "0 30" -- 神兵灵魄*30
	tMidAutumnDay_BoBing_RewardItem[3323113][5]["RewardItem"][2] = {}
	tMidAutumnDay_BoBing_RewardItem[3323113][5]["RewardItem"][2]["Id"] = 3323125 -- 状元铜饼[3323125][属性:9][叠加:999][金币:0], 【表格】铜饼
	tMidAutumnDay_BoBing_RewardItem[3323113][5]["RewardItem"][2]["Attr"] = "0 1" -- 状元铜饼*1
	tMidAutumnDay_BoBing_RewardItem[3323113][5]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323113][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323113][5]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323113][6] = {}
	-- ===五子登科
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323113][6]
	-- ===删除: 3323113,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323113][6]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323113][6]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323113][6]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323113][6]["DeleteItem"][1]["Id"] = 3323113 -- 【库】五子礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323113][6]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323113][6]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323113][6]["RewardItem"][1]["Id"] = 3321107 -- 炼魂石[3321107][属性:9][叠加:10000][金币:0], 【表格】炼魂玉
	tMidAutumnDay_BoBing_RewardItem[3323113][6]["RewardItem"][1]["Attr"] = "0 33" -- 炼魂石*33
	tMidAutumnDay_BoBing_RewardItem[3323113][6]["RewardItem"][2] = {}
	tMidAutumnDay_BoBing_RewardItem[3323113][6]["RewardItem"][2]["Id"] = 3323125 -- 状元铜饼[3323125][属性:9][叠加:999][金币:0], 【表格】铜饼
	tMidAutumnDay_BoBing_RewardItem[3323113][6]["RewardItem"][2]["Attr"] = "0 1" -- 状元铜饼*1
	tMidAutumnDay_BoBing_RewardItem[3323113][6]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323113][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323113][6]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323114] = {}
	-- ===状元礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323114][1]
	-- ===删除: 3323114,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323114][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323114][1]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323114][1]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323114][1]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323114][1]["DeleteItem"][1]["Id"] = 3323114 -- 【库】状元礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323114][1]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323114][1]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323114][1]["RewardItem"][1]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】赤炼石+4
	tMidAutumnDay_BoBing_RewardItem[3323114][1]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+4赤炼石（赠）*1
	tMidAutumnDay_BoBing_RewardItem[3323114][1]["RewardItem"][2] = {}
	tMidAutumnDay_BoBing_RewardItem[3323114][1]["RewardItem"][2]["Id"] = 3323125 -- 状元铜饼[3323125][属性:9][叠加:999][金币:0], 【表格】铜饼
	tMidAutumnDay_BoBing_RewardItem[3323114][1]["RewardItem"][2]["Attr"] = "0 1" -- 状元铜饼*1
	tMidAutumnDay_BoBing_RewardItem[3323114][1]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323114][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323114][1]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323114][2] = {}
	-- ===状元礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323114][2]
	-- ===删除: 3323114,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323114][2]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323114][2]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323114][2]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323114][2]["DeleteItem"][1]["Id"] = 3323114 -- 【库】状元礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323114][2]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323114][2]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323114][2]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tMidAutumnDay_BoBing_RewardItem[3323114][2]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的明亮星陨石*5
	tMidAutumnDay_BoBing_RewardItem[3323114][2]["RewardItem"][2] = {}
	tMidAutumnDay_BoBing_RewardItem[3323114][2]["RewardItem"][2]["Id"] = 3323125 -- 状元铜饼[3323125][属性:9][叠加:999][金币:0], 【表格】铜饼
	tMidAutumnDay_BoBing_RewardItem[3323114][2]["RewardItem"][2]["Attr"] = "0 1" -- 状元铜饼*1
	tMidAutumnDay_BoBing_RewardItem[3323114][2]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323114][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323114][2]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323114][3] = {}
	-- ===状元礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323114][3]
	-- ===删除: 3323114,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323114][3]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323114][3]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323114][3]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323114][3]["DeleteItem"][1]["Id"] = 3323114 -- 【库】状元礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323114][3]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323114][3]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323114][3]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tMidAutumnDay_BoBing_RewardItem[3323114][3]["RewardItem"][1]["Attr"] = "0 35 3" -- 万能神纹精粹（赠）*35
	tMidAutumnDay_BoBing_RewardItem[3323114][3]["RewardItem"][2] = {}
	tMidAutumnDay_BoBing_RewardItem[3323114][3]["RewardItem"][2]["Id"] = 3323125 -- 状元铜饼[3323125][属性:9][叠加:999][金币:0], 【表格】铜饼
	tMidAutumnDay_BoBing_RewardItem[3323114][3]["RewardItem"][2]["Attr"] = "0 1" -- 状元铜饼*1
	tMidAutumnDay_BoBing_RewardItem[3323114][3]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323114][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323114][3]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323114][4] = {}
	-- ===状元礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323114][4]
	-- ===删除: 3323114,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323114][4]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323114][4]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323114][4]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323114][4]["DeleteItem"][1]["Id"] = 3323114 -- 【库】状元礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323114][4]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323114][4]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323114][4]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】人参果
	tMidAutumnDay_BoBing_RewardItem[3323114][4]["RewardItem"][1]["Attr"] = "0 10" -- 人参果*10
	tMidAutumnDay_BoBing_RewardItem[3323114][4]["RewardItem"][2] = {}
	tMidAutumnDay_BoBing_RewardItem[3323114][4]["RewardItem"][2]["Id"] = 3323125 -- 状元铜饼[3323125][属性:9][叠加:999][金币:0], 【表格】铜饼
	tMidAutumnDay_BoBing_RewardItem[3323114][4]["RewardItem"][2]["Attr"] = "0 1" -- 状元铜饼*1
	tMidAutumnDay_BoBing_RewardItem[3323114][4]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323114][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323114][4]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323114][5] = {}
	-- ===状元礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323114][5]
	-- ===删除: 3323114,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323114][5]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323114][5]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323114][5]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323114][5]["DeleteItem"][1]["Id"] = 3323114 -- 【库】状元礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323114][5]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323114][5]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323114][5]["RewardItem"][1]["Id"] = 3321098 -- 神兵灵魄[3321098][属性:9][叠加:10000][金币:0], 【表格】神兵灵魄
	tMidAutumnDay_BoBing_RewardItem[3323114][5]["RewardItem"][1]["Attr"] = "0 10" -- 神兵灵魄*10
	tMidAutumnDay_BoBing_RewardItem[3323114][5]["RewardItem"][2] = {}
	tMidAutumnDay_BoBing_RewardItem[3323114][5]["RewardItem"][2]["Id"] = 3323125 -- 状元铜饼[3323125][属性:9][叠加:999][金币:0], 【表格】铜饼
	tMidAutumnDay_BoBing_RewardItem[3323114][5]["RewardItem"][2]["Attr"] = "0 1" -- 状元铜饼*1
	tMidAutumnDay_BoBing_RewardItem[3323114][5]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323114][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323114][5]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323114][6] = {}
	-- ===状元礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323114][6]
	-- ===删除: 3323114,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323114][6]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323114][6]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323114][6]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323114][6]["DeleteItem"][1]["Id"] = 3323114 -- 【库】状元礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323114][6]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323114][6]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323114][6]["RewardItem"][1]["Id"] = 3321107 -- 炼魂石[3321107][属性:9][叠加:10000][金币:0], 【表格】炼魂玉
	tMidAutumnDay_BoBing_RewardItem[3323114][6]["RewardItem"][1]["Attr"] = "0 11" -- 炼魂石*11
	tMidAutumnDay_BoBing_RewardItem[3323114][6]["RewardItem"][2] = {}
	tMidAutumnDay_BoBing_RewardItem[3323114][6]["RewardItem"][2]["Id"] = 3323125 -- 状元铜饼[3323125][属性:9][叠加:999][金币:0], 【表格】铜饼
	tMidAutumnDay_BoBing_RewardItem[3323114][6]["RewardItem"][2]["Attr"] = "0 1" -- 状元铜饼*1
	tMidAutumnDay_BoBing_RewardItem[3323114][6]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323114][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323114][6]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323115] = {}
	-- ===对堂礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323115][1]
	-- ===删除: 3323115,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323115][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323115][1]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323115][1]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323115][1]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323115][1]["DeleteItem"][1]["Id"] = 3323115 -- 【库】对堂礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323115][1]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323115][1]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323115][1]["RewardItem"][1]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】赤炼石+4
	tMidAutumnDay_BoBing_RewardItem[3323115][1]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+4赤炼石（赠）*1
	tMidAutumnDay_BoBing_RewardItem[3323115][1]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323115][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323115][1]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323115][2] = {}
	-- ===对堂礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323115][2]
	-- ===删除: 3323115,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323115][2]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323115][2]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323115][2]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323115][2]["DeleteItem"][1]["Id"] = 3323115 -- 【库】对堂礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323115][2]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323115][2]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323115][2]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tMidAutumnDay_BoBing_RewardItem[3323115][2]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的明亮星陨石*5
	tMidAutumnDay_BoBing_RewardItem[3323115][2]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323115][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323115][2]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323115][3] = {}
	-- ===对堂礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323115][3]
	-- ===删除: 3323115,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323115][3]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323115][3]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323115][3]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323115][3]["DeleteItem"][1]["Id"] = 3323115 -- 【库】对堂礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323115][3]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323115][3]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323115][3]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tMidAutumnDay_BoBing_RewardItem[3323115][3]["RewardItem"][1]["Attr"] = "0 35 3" -- 万能神纹精粹（赠）*35
	tMidAutumnDay_BoBing_RewardItem[3323115][3]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323115][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323115][3]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323115][4] = {}
	-- ===对堂礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323115][4]
	-- ===删除: 3323115,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323115][4]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323115][4]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323115][4]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323115][4]["DeleteItem"][1]["Id"] = 3323115 -- 【库】对堂礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323115][4]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323115][4]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323115][4]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】人参果
	tMidAutumnDay_BoBing_RewardItem[3323115][4]["RewardItem"][1]["Attr"] = "0 10" -- 人参果*10
	tMidAutumnDay_BoBing_RewardItem[3323115][4]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323115][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323115][4]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323115][5] = {}
	-- ===对堂礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323115][5]
	-- ===删除: 3323115,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323115][5]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323115][5]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323115][5]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323115][5]["DeleteItem"][1]["Id"] = 3323115 -- 【库】对堂礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323115][5]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323115][5]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323115][5]["RewardItem"][1]["Id"] = 3321098 -- 神兵灵魄[3321098][属性:9][叠加:10000][金币:0], 【表格】神兵灵魄
	tMidAutumnDay_BoBing_RewardItem[3323115][5]["RewardItem"][1]["Attr"] = "0 10" -- 神兵灵魄*10
	tMidAutumnDay_BoBing_RewardItem[3323115][5]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323115][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323115][5]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323115][6] = {}
	-- ===对堂礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323115][6]
	-- ===删除: 3323115,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323115][6]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323115][6]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323115][6]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323115][6]["DeleteItem"][1]["Id"] = 3323115 -- 【库】对堂礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323115][6]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323115][6]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323115][6]["RewardItem"][1]["Id"] = 3321107 -- 炼魂石[3321107][属性:9][叠加:10000][金币:0], 【表格】炼魂玉
	tMidAutumnDay_BoBing_RewardItem[3323115][6]["RewardItem"][1]["Attr"] = "0 11" -- 炼魂石*11
	tMidAutumnDay_BoBing_RewardItem[3323115][6]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323115][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323115][6]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323116] = {}
	-- ===三红礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323116][1]
	-- ===删除: 3323116,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323116][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323116][1]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323116][1]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323116][1]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323116][1]["DeleteItem"][1]["Id"] = 3323116 -- 【库】三红礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323116][1]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323116][1]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323116][1]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤炼石+3
	tMidAutumnDay_BoBing_RewardItem[3323116][1]["RewardItem"][1]["Attr"] = "0 2 3 7200 1" -- 5天时效(激活)的+3赤炼石（赠）*2
	tMidAutumnDay_BoBing_RewardItem[3323116][1]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323116][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323116][1]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323116][2] = {}
	-- ===三红礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323116][2]
	-- ===删除: 3323116,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323116][2]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323116][2]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323116][2]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323116][2]["DeleteItem"][1]["Id"] = 3323116 -- 【库】三红礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323116][2]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323116][2]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323116][2]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tMidAutumnDay_BoBing_RewardItem[3323116][2]["RewardItem"][1]["Attr"] = "0 4 0 2880 1" -- 2天时效(激活)的明亮星陨石*4
	tMidAutumnDay_BoBing_RewardItem[3323116][2]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323116][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323116][2]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323116][3] = {}
	-- ===三红礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323116][3]
	-- ===删除: 3323116,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323116][3]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323116][3]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323116][3]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323116][3]["DeleteItem"][1]["Id"] = 3323116 -- 【库】三红礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323116][3]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323116][3]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323116][3]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tMidAutumnDay_BoBing_RewardItem[3323116][3]["RewardItem"][1]["Attr"] = "0 25 3" -- 万能神纹精粹（赠）*25
	tMidAutumnDay_BoBing_RewardItem[3323116][3]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323116][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323116][3]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323116][4] = {}
	-- ===三红礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323116][4]
	-- ===删除: 3323116,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323116][4]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323116][4]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323116][4]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323116][4]["DeleteItem"][1]["Id"] = 3323116 -- 【库】三红礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323116][4]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323116][4]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323116][4]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】人参果
	tMidAutumnDay_BoBing_RewardItem[3323116][4]["RewardItem"][1]["Attr"] = "0 8" -- 人参果*8
	tMidAutumnDay_BoBing_RewardItem[3323116][4]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323116][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323116][4]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323116][5] = {}
	-- ===三红礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323116][5]
	-- ===删除: 3323116,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323116][5]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323116][5]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323116][5]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323116][5]["DeleteItem"][1]["Id"] = 3323116 -- 【库】三红礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323116][5]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323116][5]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323116][5]["RewardItem"][1]["Id"] = 3321098 -- 神兵灵魄[3321098][属性:9][叠加:10000][金币:0], 【表格】神兵灵魄
	tMidAutumnDay_BoBing_RewardItem[3323116][5]["RewardItem"][1]["Attr"] = "0 8" -- 神兵灵魄*8
	tMidAutumnDay_BoBing_RewardItem[3323116][5]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323116][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323116][5]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323116][6] = {}
	-- ===三红礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323116][6]
	-- ===删除: 3323116,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323116][6]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323116][6]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323116][6]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323116][6]["DeleteItem"][1]["Id"] = 3323116 -- 【库】三红礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323116][6]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323116][6]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323116][6]["RewardItem"][1]["Id"] = 3321107 -- 炼魂石[3321107][属性:9][叠加:10000][金币:0], 【表格】炼魂玉
	tMidAutumnDay_BoBing_RewardItem[3323116][6]["RewardItem"][1]["Attr"] = "0 9" -- 炼魂石*9
	tMidAutumnDay_BoBing_RewardItem[3323116][6]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323116][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323116][6]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323117] = {}
	-- ===四进礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323117][1]
	-- ===删除: 3323117,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323117][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323117][1]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323117][1]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323117][1]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323117][1]["DeleteItem"][1]["Id"] = 3323117 -- 【库】四进礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323117][1]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323117][1]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323117][1]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤炼石+3
	tMidAutumnDay_BoBing_RewardItem[3323117][1]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+3赤炼石（赠）*1
	tMidAutumnDay_BoBing_RewardItem[3323117][1]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323117][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323117][1]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323117][2] = {}
	-- ===四进礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323117][2]
	-- ===删除: 3323117,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323117][2]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323117][2]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323117][2]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323117][2]["DeleteItem"][1]["Id"] = 3323117 -- 【库】四进礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323117][2]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323117][2]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323117][2]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tMidAutumnDay_BoBing_RewardItem[3323117][2]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的明亮星陨石*2
	tMidAutumnDay_BoBing_RewardItem[3323117][2]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323117][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323117][2]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323117][3] = {}
	-- ===四进礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323117][3]
	-- ===删除: 3323117,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323117][3]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323117][3]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323117][3]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323117][3]["DeleteItem"][1]["Id"] = 3323117 -- 【库】四进礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323117][3]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323117][3]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323117][3]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tMidAutumnDay_BoBing_RewardItem[3323117][3]["RewardItem"][1]["Attr"] = "0 12 3" -- 万能神纹精粹（赠）*12
	tMidAutumnDay_BoBing_RewardItem[3323117][3]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323117][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323117][3]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323117][4] = {}
	-- ===四进礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323117][4]
	-- ===删除: 3323117,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323117][4]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323117][4]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323117][4]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323117][4]["DeleteItem"][1]["Id"] = 3323117 -- 【库】四进礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323117][4]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323117][4]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323117][4]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】人参果
	tMidAutumnDay_BoBing_RewardItem[3323117][4]["RewardItem"][1]["Attr"] = "0 4" -- 人参果*4
	tMidAutumnDay_BoBing_RewardItem[3323117][4]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323117][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323117][4]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323117][5] = {}
	-- ===四进礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323117][5]
	-- ===删除: 3323117,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323117][5]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323117][5]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323117][5]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323117][5]["DeleteItem"][1]["Id"] = 3323117 -- 【库】四进礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323117][5]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323117][5]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323117][5]["RewardItem"][1]["Id"] = 3321098 -- 神兵灵魄[3321098][属性:9][叠加:10000][金币:0], 【表格】神兵灵魄
	tMidAutumnDay_BoBing_RewardItem[3323117][5]["RewardItem"][1]["Attr"] = "0 4" -- 神兵灵魄*4
	tMidAutumnDay_BoBing_RewardItem[3323117][5]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323117][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323117][5]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323117][6] = {}
	-- ===四进礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323117][6]
	-- ===删除: 3323117,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323117][6]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323117][6]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323117][6]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323117][6]["DeleteItem"][1]["Id"] = 3323117 -- 【库】四进礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323117][6]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323117][6]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323117][6]["RewardItem"][1]["Id"] = 3321107 -- 炼魂石[3321107][属性:9][叠加:10000][金币:0], 【表格】炼魂玉
	tMidAutumnDay_BoBing_RewardItem[3323117][6]["RewardItem"][1]["Attr"] = "0 4" -- 炼魂石*4
	tMidAutumnDay_BoBing_RewardItem[3323117][6]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323117][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323117][6]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323118] = {}
	-- ===二举礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323118][1]
	-- ===删除: 3323118,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323118][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323118][1]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323118][1]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323118][1]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323118][1]["DeleteItem"][1]["Id"] = 3323118 -- 【库】二举礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323118][1]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323118][1]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323118][1]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石[730002][属性:0][叠加:0][金币:0], 【表格】赤炼石+2
	tMidAutumnDay_BoBing_RewardItem[3323118][1]["RewardItem"][1]["Attr"] = "0 2 3 7200 1" -- 5天时效(激活)的+2赤炼石（赠）*2
	tMidAutumnDay_BoBing_RewardItem[3323118][1]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323118][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323118][1]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323118][2] = {}
	-- ===二举礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323118][2]
	-- ===删除: 3323118,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323118][2]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323118][2]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323118][2]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323118][2]["DeleteItem"][1]["Id"] = 3323118 -- 【库】二举礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323118][2]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323118][2]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323118][2]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tMidAutumnDay_BoBing_RewardItem[3323118][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	tMidAutumnDay_BoBing_RewardItem[3323118][2]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323118][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323118][2]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323118][3] = {}
	-- ===二举礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323118][3]
	-- ===删除: 3323118,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323118][3]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323118][3]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323118][3]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323118][3]["DeleteItem"][1]["Id"] = 3323118 -- 【库】二举礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323118][3]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323118][3]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323118][3]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tMidAutumnDay_BoBing_RewardItem[3323118][3]["RewardItem"][1]["Attr"] = "0 6 3" -- 万能神纹精粹（赠）*6
	tMidAutumnDay_BoBing_RewardItem[3323118][3]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323118][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323118][3]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323118][4] = {}
	-- ===二举礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323118][4]
	-- ===删除: 3323118,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323118][4]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323118][4]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323118][4]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323118][4]["DeleteItem"][1]["Id"] = 3323118 -- 【库】二举礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323118][4]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323118][4]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323118][4]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】人参果
	tMidAutumnDay_BoBing_RewardItem[3323118][4]["RewardItem"][1]["Attr"] = "0 2" -- 人参果*2
	tMidAutumnDay_BoBing_RewardItem[3323118][4]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323118][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323118][4]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323118][5] = {}
	-- ===二举礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323118][5]
	-- ===删除: 3323118,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323118][5]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323118][5]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323118][5]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323118][5]["DeleteItem"][1]["Id"] = 3323118 -- 【库】二举礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323118][5]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323118][5]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323118][5]["RewardItem"][1]["Id"] = 3321098 -- 神兵灵魄[3321098][属性:9][叠加:10000][金币:0], 【表格】神兵灵魄
	tMidAutumnDay_BoBing_RewardItem[3323118][5]["RewardItem"][1]["Attr"] = "0 2" -- 神兵灵魄*2
	tMidAutumnDay_BoBing_RewardItem[3323118][5]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323118][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323118][5]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323118][6] = {}
	-- ===二举礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323118][6]
	-- ===删除: 3323118,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323118][6]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323118][6]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323118][6]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323118][6]["DeleteItem"][1]["Id"] = 3323118 -- 【库】二举礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323118][6]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323118][6]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323118][6]["RewardItem"][1]["Id"] = 3321107 -- 炼魂石[3321107][属性:9][叠加:10000][金币:0], 【表格】炼魂玉
	tMidAutumnDay_BoBing_RewardItem[3323118][6]["RewardItem"][1]["Attr"] = "0 2" -- 炼魂石*2
	tMidAutumnDay_BoBing_RewardItem[3323118][6]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323118][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323118][6]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323119] = {}
	-- ===一秀礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323119][1]
	-- ===删除: 3323119,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323119][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323119][1]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323119][1]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323119][1]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323119][1]["DeleteItem"][1]["Id"] = 3323119 -- 【库】一秀礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323119][1]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323119][1]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323119][1]["RewardItem"][1]["Id"] = 730001 -- +1赤炼石[730001][属性:0][叠加:0][金币:0], 【表格】赤炼石+1
	tMidAutumnDay_BoBing_RewardItem[3323119][1]["RewardItem"][1]["Attr"] = "0 3 3 7200 1" -- 5天时效(激活)的+1赤炼石（赠）*3
	tMidAutumnDay_BoBing_RewardItem[3323119][1]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323119][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323119][1]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323119][2] = {}
	-- ===一秀礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323119][2]
	-- ===删除: 3323119,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323119][2]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323119][2]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323119][2]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323119][2]["DeleteItem"][1]["Id"] = 3323119 -- 【库】一秀礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323119][2]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323119][2]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323119][2]["RewardItem"][1]["Id"] = 3009000 -- 微光星陨石[3009000][属性:9][叠加:0][金币:0], 【表格】微光星陨石
	tMidAutumnDay_BoBing_RewardItem[3323119][2]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的微光星陨石*5
	tMidAutumnDay_BoBing_RewardItem[3323119][2]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323119][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323119][2]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323119][3] = {}
	-- ===一秀礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323119][3]
	-- ===删除: 3323119,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323119][3]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323119][3]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323119][3]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323119][3]["DeleteItem"][1]["Id"] = 3323119 -- 【库】一秀礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323119][3]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323119][3]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323119][3]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tMidAutumnDay_BoBing_RewardItem[3323119][3]["RewardItem"][1]["Attr"] = "0 3 3" -- 万能神纹精粹（赠）*3
	tMidAutumnDay_BoBing_RewardItem[3323119][3]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323119][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323119][3]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323119][4] = {}
	-- ===一秀礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323119][4]
	-- ===删除: 3323119,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323119][4]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323119][4]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323119][4]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323119][4]["DeleteItem"][1]["Id"] = 3323119 -- 【库】一秀礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323119][4]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323119][4]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323119][4]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】人参果
	tMidAutumnDay_BoBing_RewardItem[3323119][4]["RewardItem"][1]["Attr"] = "0 1" -- 人参果*1
	tMidAutumnDay_BoBing_RewardItem[3323119][4]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323119][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323119][4]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323119][5] = {}
	-- ===一秀礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323119][5]
	-- ===删除: 3323119,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323119][5]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323119][5]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323119][5]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323119][5]["DeleteItem"][1]["Id"] = 3323119 -- 【库】一秀礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323119][5]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323119][5]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323119][5]["RewardItem"][1]["Id"] = 3321098 -- 神兵灵魄[3321098][属性:9][叠加:10000][金币:0], 【表格】神兵灵魄
	tMidAutumnDay_BoBing_RewardItem[3323119][5]["RewardItem"][1]["Attr"] = "0 1" -- 神兵灵魄*1
	tMidAutumnDay_BoBing_RewardItem[3323119][5]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323119][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323119][5]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323119][6] = {}
	-- ===一秀礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323119][6]
	-- ===删除: 3323119,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323119][6]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323119][6]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323119][6]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323119][6]["DeleteItem"][1]["Id"] = 3323119 -- 【库】一秀礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323119][6]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323119][6]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323119][6]["RewardItem"][1]["Id"] = 3321107 -- 炼魂石[3321107][属性:9][叠加:10000][金币:0], 【表格】炼魂玉
	tMidAutumnDay_BoBing_RewardItem[3323119][6]["RewardItem"][1]["Attr"] = "0 1" -- 炼魂石*1
	tMidAutumnDay_BoBing_RewardItem[3323119][6]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323119][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323119][6]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323120] = {}
	-- ===?诶窈?
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323120]
	-- ===删除: 3323120,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323120]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323120]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323120]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323120]["DeleteItem"][1]["Id"] = 3323120 -- 【库】罚黑礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323120]["RewardStrengthValue"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323120]["RewardStrengthValue"]["Value"] = 100 -- 气力值, 【需求】100气力值
	tMidAutumnDay_BoBing_RewardItem[3323120]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323120]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323120]["RewardEffect"]["Effect"] = "angelwing"

	tMidAutumnDay_BoBing_RewardItem[3323240] = {}
	-- ===中秋百宝大福袋
	-- ===索引:tMidAutumnDay_BoBing_RewardItem[3323240][1]
	-- ===删除: 3323240,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323240][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tMidAutumnDay_BoBing_RewardItem[3323240][1]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1]["DeleteItem"][1]["Id"] = 3323240 -- 【库】中秋百宝大福袋[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323240][1]["LogId"] = 12001597
	-- 博饼骰子-- 【必给】
	tMidAutumnDay_BoBing_RewardItem[3323240][1][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][1]["RandomItemChanceType"] = 1
	tMidAutumnDay_BoBing_RewardItem[3323240][1][1]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][1]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][1]["RewardItem"][1]["Id"] = 3323106 -- 博饼骰子[3323106][属性:9][叠加:999][金币:0], 【表格】博饼骰子
	tMidAutumnDay_BoBing_RewardItem[3323240][1][1]["RewardItem"][1]["Attr"] = "0 30" -- 博饼骰子*30
	tMidAutumnDay_BoBing_RewardItem[3323240][1][1]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323240][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 中秋家具兑换券-- 【必给】
	tMidAutumnDay_BoBing_RewardItem[3323240][1][2] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][2]["RandomItemChanceType"] = 1
	tMidAutumnDay_BoBing_RewardItem[3323240][1][2]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][2]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][2]["RewardItem"][1]["Id"] = 3323516 -- 中秋家具兑换券[3323516][属性:9][叠加:10000][金币:0], 【表格】中秋家具兑换券
	tMidAutumnDay_BoBing_RewardItem[3323240][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 中秋家具兑换券*1
	tMidAutumnDay_BoBing_RewardItem[3323240][1][2]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323240][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 九天揽月坐骑 - 0.15%
	tMidAutumnDay_BoBing_RewardItem[3323240][1][3] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][3]["RandomItemChanceType"] = 2
	tMidAutumnDay_BoBing_RewardItem[3323240][1][3]["ItemChance"] = 15
	tMidAutumnDay_BoBing_RewardItem[3323240][1][3]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][3]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][3]["RewardItem"][1]["Id"] = 205901 --  205901 【库里没有该物品】, 【表格】九天揽月坐骑
	tMidAutumnDay_BoBing_RewardItem[3323240][1][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑 205901 【库里没有该物品】*1
	tMidAutumnDay_BoBing_RewardItem[3323240][1][3]["BroadcastIndex"] = 1
	tMidAutumnDay_BoBing_RewardItem[3323240][1][3]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323240][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 超大固化石 - 0.15%
	tMidAutumnDay_BoBing_RewardItem[3323240][1][4] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][4]["RandomItemChanceType"] = 2
	tMidAutumnDay_BoBing_RewardItem[3323240][1][4]["ItemChance"] = 15
	tMidAutumnDay_BoBing_RewardItem[3323240][1][4]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][4]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][4]["RewardItem"][1]["Id"] = 723695 -- 超大固化石[723695][属性:0][叠加:0][金币:0], 【表格】超大固化石
	tMidAutumnDay_BoBing_RewardItem[3323240][1][4]["RewardItem"][1]["Attr"] = "0 1 3" -- 超大固化石（赠）*1
	tMidAutumnDay_BoBing_RewardItem[3323240][1][4]["BroadcastIndex"] = 1
	tMidAutumnDay_BoBing_RewardItem[3323240][1][4]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323240][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 固化石 - 2.00%
	tMidAutumnDay_BoBing_RewardItem[3323240][1][5] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][5]["RandomItemChanceType"] = 2
	tMidAutumnDay_BoBing_RewardItem[3323240][1][5]["ItemChance"] = 200
	tMidAutumnDay_BoBing_RewardItem[3323240][1][5]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][5]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][5]["RewardItem"][1]["Id"] = 723694 -- 固化石[723694][属性:0][叠加:0][金币:0], 【表格】固化石
	tMidAutumnDay_BoBing_RewardItem[3323240][1][5]["RewardItem"][1]["Attr"] = "0 1 3" -- 固化石（赠）*1
	tMidAutumnDay_BoBing_RewardItem[3323240][1][5]["BroadcastIndex"] = 1
	tMidAutumnDay_BoBing_RewardItem[3323240][1][5]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323240][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 天灵果 - 5.00%
	tMidAutumnDay_BoBing_RewardItem[3323240][1][6] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][6]["RandomItemChanceType"] = 2
	tMidAutumnDay_BoBing_RewardItem[3323240][1][6]["ItemChance"] = 500
	tMidAutumnDay_BoBing_RewardItem[3323240][1][6]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][6]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][6]["RewardItem"][1]["Id"] = 3009103 -- 天灵果[3009103][属性:9][叠加:99][金币:0], 【表格】天灵果
	tMidAutumnDay_BoBing_RewardItem[3323240][1][6]["RewardItem"][1]["Attr"] = "0 1" -- 天灵果*1
	tMidAutumnDay_BoBing_RewardItem[3323240][1][5]["BroadcastIndex"] = 1
	tMidAutumnDay_BoBing_RewardItem[3323240][1][6]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323240][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 12.10%
	tMidAutumnDay_BoBing_RewardItem[3323240][1][7] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][7]["RandomItemChanceType"] = 2
	tMidAutumnDay_BoBing_RewardItem[3323240][1][7]["ItemChance"] = 1210
	tMidAutumnDay_BoBing_RewardItem[3323240][1][7]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][7]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][7]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】人参果
	tMidAutumnDay_BoBing_RewardItem[3323240][1][7]["RewardItem"][1]["Attr"] = "0 10" -- 人参果*10
	tMidAutumnDay_BoBing_RewardItem[3323240][1][7]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323240][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 豪华神器宝箱 - 17.00%
	tMidAutumnDay_BoBing_RewardItem[3323240][1][8] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][8]["RandomItemChanceType"] = 2
	tMidAutumnDay_BoBing_RewardItem[3323240][1][8]["ItemChance"] = 1700
	tMidAutumnDay_BoBing_RewardItem[3323240][1][8]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][8]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][8]["RewardItem"][1]["Id"] = 3322219 -- 豪华神器宝箱[3322219][属性:9][叠加:1][金币:0], 【表格】豪华神器宝箱
	tMidAutumnDay_BoBing_RewardItem[3323240][1][8]["RewardItem"][1]["Attr"] = "0 1" -- 豪华神器宝箱*1
	tMidAutumnDay_BoBing_RewardItem[3323240][1][8]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323240][1][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+5 - 5.00%
	tMidAutumnDay_BoBing_RewardItem[3323240][1][9] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][9]["RandomItemChanceType"] = 2
	tMidAutumnDay_BoBing_RewardItem[3323240][1][9]["ItemChance"] = 500
	tMidAutumnDay_BoBing_RewardItem[3323240][1][9]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][9]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][9]["RewardItem"][1]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5
	tMidAutumnDay_BoBing_RewardItem[3323240][1][9]["RewardItem"][1]["Attr"] = "0 1 0 7200 1" -- 5天时效(激活)的+5赤炼石*1
	tMidAutumnDay_BoBing_RewardItem[3323240][1][5]["BroadcastIndex"] = 1
	tMidAutumnDay_BoBing_RewardItem[3323240][1][9]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323240][1][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+4 - 12.00%
	tMidAutumnDay_BoBing_RewardItem[3323240][1][10] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][10]["RandomItemChanceType"] = 2
	tMidAutumnDay_BoBing_RewardItem[3323240][1][10]["ItemChance"] = 1200
	tMidAutumnDay_BoBing_RewardItem[3323240][1][10]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][10]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][10]["RewardItem"][1]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】赤炼石+4
	tMidAutumnDay_BoBing_RewardItem[3323240][1][10]["RewardItem"][1]["Attr"] = "0 1 0 7200 1" -- 5天时效(激活)的+4赤炼石*1
	tMidAutumnDay_BoBing_RewardItem[3323240][1][10]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323240][1][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 晶莹星陨石 - 8.00%
	tMidAutumnDay_BoBing_RewardItem[3323240][1][11] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][11]["RandomItemChanceType"] = 2
	tMidAutumnDay_BoBing_RewardItem[3323240][1][11]["ItemChance"] = 800
	tMidAutumnDay_BoBing_RewardItem[3323240][1][11]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][11]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][11]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tMidAutumnDay_BoBing_RewardItem[3323240][1][11]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
	tMidAutumnDay_BoBing_RewardItem[3323240][1][11]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323240][1][11]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 - 15.00%
	tMidAutumnDay_BoBing_RewardItem[3323240][1][12] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][12]["RandomItemChanceType"] = 2
	tMidAutumnDay_BoBing_RewardItem[3323240][1][12]["ItemChance"] = 1500
	tMidAutumnDay_BoBing_RewardItem[3323240][1][12]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][12]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][12]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tMidAutumnDay_BoBing_RewardItem[3323240][1][12]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的明亮星陨石*5
	tMidAutumnDay_BoBing_RewardItem[3323240][1][12]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323240][1][12]["RewardEffect"]["Effect"] = "angelwing"
	-- 稀有黄色神纹随机包 - 0.10%
	tMidAutumnDay_BoBing_RewardItem[3323240][1][13] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][13]["RandomItemChanceType"] = 2
	tMidAutumnDay_BoBing_RewardItem[3323240][1][13]["ItemChance"] = 10
	tMidAutumnDay_BoBing_RewardItem[3323240][1][13]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][13]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][13]["RewardItem"][1]["Id"] = 3319013 -- (+1)稀有黄色神纹随机包(赠)[3319013][属性:9][叠加:0][金币:0], 【表格】稀有黄色神纹随机包
	tMidAutumnDay_BoBing_RewardItem[3323240][1][13]["RewardItem"][1]["Attr"] = "0 1" -- (+1)稀有黄色神纹随机包(赠)*1
	tMidAutumnDay_BoBing_RewardItem[3323240][1][13]["BroadcastIndex"] = 1
	tMidAutumnDay_BoBing_RewardItem[3323240][1][13]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323240][1][13]["RewardEffect"]["Effect"] = "angelwing"
	-- 黄色神纹随机包 - 3.00%
	tMidAutumnDay_BoBing_RewardItem[3323240][1][14] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][14]["RandomItemChanceType"] = 2
	tMidAutumnDay_BoBing_RewardItem[3323240][1][14]["ItemChance"] = 300
	tMidAutumnDay_BoBing_RewardItem[3323240][1][14]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][14]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][14]["RewardItem"][1]["Id"] = 3306507 -- 黄色神纹随机包[3306507][属性:0][叠加:10000][金币:0], 【表格】黄色神纹随机包
	tMidAutumnDay_BoBing_RewardItem[3323240][1][14]["RewardItem"][1]["Attr"] = "0 1" -- 黄色神纹随机包*1
	tMidAutumnDay_BoBing_RewardItem[3323240][1][14]["BroadcastIndex"] = 1
	tMidAutumnDay_BoBing_RewardItem[3323240][1][14]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323240][1][14]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 20.50%
	tMidAutumnDay_BoBing_RewardItem[3323240][1][15] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][15]["RandomItemChanceType"] = 2
	tMidAutumnDay_BoBing_RewardItem[3323240][1][15]["ItemChance"] = 2050
	tMidAutumnDay_BoBing_RewardItem[3323240][1][15]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][15]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][15]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tMidAutumnDay_BoBing_RewardItem[3323240][1][15]["RewardItem"][1]["Attr"] = "0 30" -- 万能神纹精粹*30
	tMidAutumnDay_BoBing_RewardItem[3323240][1][15]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323240][1][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323240][1][15]["RewardEffect"]["Effect"] = "angelwing"

	
	tMidAutumnDay_BoBing_RewardItem[3323325] = {}
	-- ===神兵灵魄豪华包
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323325]
	-- ===删除: 3323325,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323325]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323325]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323325]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323325]["DeleteItem"][1]["Id"] = 3323325 -- 【库】神兵灵魄豪华包[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323325]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323325]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323325]["RewardItem"][1]["Id"] = 3321098 -- 神兵灵魄[3321098][属性:9][叠加:10000][金币:0], 【表格】神兵灵魄
	tMidAutumnDay_BoBing_RewardItem[3323325]["RewardItem"][1]["Attr"] = "0 100" -- 神兵灵魄*100
	tMidAutumnDay_BoBing_RewardItem[3323325]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323325]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323325]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323326] = {}
	-- ===神兵灵魄精华包
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323326]
	-- ===删除: 3323326,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323326]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323326]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323326]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323326]["DeleteItem"][1]["Id"] = 3323326 -- 【库】神兵灵魄精致包[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323326]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323326]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323326]["RewardItem"][1]["Id"] = 3321098 -- 神兵灵魄[3321098][属性:9][叠加:10000][金币:0], 【表格】神兵灵魄
	tMidAutumnDay_BoBing_RewardItem[3323326]["RewardItem"][1]["Attr"] = "0 30" -- 神兵灵魄*30
	tMidAutumnDay_BoBing_RewardItem[3323326]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323326]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323326]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323327] = {}
	-- ===300个万能神纹精粹（赠）礼包
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323327]
	-- ===删除: 3323327,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323327]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323327]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323327]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323327]["DeleteItem"][1]["Id"] = 3323327 -- 【库】300个万能神纹精粹（赠）礼包[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323327]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323327]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323327]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tMidAutumnDay_BoBing_RewardItem[3323327]["RewardItem"][1]["Attr"] = "0 300 3" -- 万能神纹精粹（赠）*300
	tMidAutumnDay_BoBing_RewardItem[3323327]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323327]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323327]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323328] = {}
	-- ===100个万能神纹精粹（赠）礼包
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323328]
	-- ===删除: 3323328,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323328]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323328]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323328]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323328]["DeleteItem"][1]["Id"] = 3323328 -- 【库】100个万能神纹精粹（赠）礼包[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323328]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323328]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323328]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tMidAutumnDay_BoBing_RewardItem[3323328]["RewardItem"][1]["Attr"] = "0 100 3" -- 万能神纹精粹（赠）*100
	tMidAutumnDay_BoBing_RewardItem[3323328]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323328]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323328]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323329] = {}
	-- ===赤炼石+5包
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323329]
	-- ===删除: 3323329,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323329]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323329]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323329]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323329]["DeleteItem"][1]["Id"] = 3323329 -- 【库】赤炼石+5包[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323329]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323329]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323329]["RewardItem"][1]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5
	tMidAutumnDay_BoBing_RewardItem[3323329]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+5赤炼石（赠）*1
	tMidAutumnDay_BoBing_RewardItem[3323329]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323329]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323329]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323330] = {}
	-- ===赤炼石+6包
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323330]
	-- ===删除: 3323330,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323330]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323330]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323330]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323330]["DeleteItem"][1]["Id"] = 3323330 -- 【库】赤炼石+6包[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323330]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323330]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323330]["RewardItem"][1]["Id"] = 730006 -- +6赤炼石[730006][属性:0][叠加:0][金币:0], 【表格】赤炼石+6
	tMidAutumnDay_BoBing_RewardItem[3323330]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+6赤炼石（赠）*1
	tMidAutumnDay_BoBing_RewardItem[3323330]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323330]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323330]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323331] = {}
	-- ===晶莹星陨石包
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323331]
	-- ===删除: 3323331,1
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323331]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323331]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323331]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323331]["DeleteItem"][1]["Id"] = 3323331 -- 【库】晶莹星陨石包[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323331]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323331]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323331]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tMidAutumnDay_BoBing_RewardItem[3323331]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
	tMidAutumnDay_BoBing_RewardItem[3323331]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323331]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323331]["RewardEffect"]["Effect"] = "angelwing"
	
	tMidAutumnDay_BoBing_RewardItem[3323347] = {}
	-- ===全球博饼参与奖
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323347]
	-- ===删除: 3323347,1
	-- ===
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323347]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323347]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323347]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323347]["DeleteItem"][1]["Id"] = 3323347 -- 【库】全球博饼参与奖[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323347]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323347]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323347]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tMidAutumnDay_BoBing_RewardItem[3323347]["RewardItem"][1]["Attr"] = "0 50 3" -- 万能神纹精粹（赠）*50
	tMidAutumnDay_BoBing_RewardItem[3323347]["RewardItem"][2] = {}
	tMidAutumnDay_BoBing_RewardItem[3323347]["RewardItem"][2]["Id"] = 3300580 -- 1000气力值精装包[3300580][属性:11][叠加:0][金币:0], 【表格】1000气力值
	tMidAutumnDay_BoBing_RewardItem[3323347]["RewardItem"][2]["Attr"] = "0 1" -- 1000气力值精装包*1
	tMidAutumnDay_BoBing_RewardItem[3323347]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323347]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323347]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323348] = {}
	-- ===区域王中王精英礼包
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323348]
	-- ===删除: 3323348,1
	-- ===
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323348]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323348]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323348]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323348]["DeleteItem"][1]["Id"] = 3323348 -- 【库】区域王中王精英礼包[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323348]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323348]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323348]["RewardItem"][1]["Id"] = 4200006 -- 6阶灵珠[4200006][属性:72][叠加:99][金币:0], 【表格】6阶灵珠
	tMidAutumnDay_BoBing_RewardItem[3323348]["RewardItem"][1]["Attr"] = "0 1" -- 6阶灵珠*1
	tMidAutumnDay_BoBing_RewardItem[3323348]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tMidAutumnDay_BoBing_RewardItem[3323348]["RewardItem"][2] = {}
	tMidAutumnDay_BoBing_RewardItem[3323348]["RewardItem"][2]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tMidAutumnDay_BoBing_RewardItem[3323348]["RewardItem"][2]["Attr"] = "0 100 3" -- 万能神纹精粹（赠）*100
	tMidAutumnDay_BoBing_RewardItem[3323348]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323348]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323348]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323349] = {}
	-- ===区域王中王豪杰礼包
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323349]
	-- ===删除: 3323349,1
	-- ===
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323349]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323349]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323349]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323349]["DeleteItem"][1]["Id"] = 3323349 -- 【库】区域王中王豪杰礼包[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323349]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323349]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323349]["RewardItem"][1]["Id"] = 4200007 -- 7阶灵珠[4200007][属性:72][叠加:99][金币:0], 【表格】7阶灵珠
	tMidAutumnDay_BoBing_RewardItem[3323349]["RewardItem"][1]["Attr"] = "0 1" -- 7阶灵珠*1
	tMidAutumnDay_BoBing_RewardItem[3323349]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tMidAutumnDay_BoBing_RewardItem[3323349]["RewardItem"][2] = {}
	tMidAutumnDay_BoBing_RewardItem[3323349]["RewardItem"][2]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tMidAutumnDay_BoBing_RewardItem[3323349]["RewardItem"][2]["Attr"] = "0 300 3" -- 万能神纹精粹（赠）*300
	tMidAutumnDay_BoBing_RewardItem[3323349]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323349]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323349]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323350] = {}
	-- ===区域王中王宗师礼包
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323350]
	-- ===删除: 3323350,1
	-- ===
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323350]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323350]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323350]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323350]["DeleteItem"][1]["Id"] = 3323350 -- 【库】区域王中王宗师礼包[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323350]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323350]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323350]["RewardItem"][1]["Id"] = 4200008 -- 8阶灵珠[4200008][属性:72][叠加:99][金币:0], 【表格】8阶灵珠
	tMidAutumnDay_BoBing_RewardItem[3323350]["RewardItem"][1]["Attr"] = "0 1" -- 8阶灵珠*1
	tMidAutumnDay_BoBing_RewardItem[3323350]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tMidAutumnDay_BoBing_RewardItem[3323350]["RewardItem"][2] = {}
	tMidAutumnDay_BoBing_RewardItem[3323350]["RewardItem"][2]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tMidAutumnDay_BoBing_RewardItem[3323350]["RewardItem"][2]["Attr"] = "0 500 3" -- 万能神纹精粹（赠）*500
	tMidAutumnDay_BoBing_RewardItem[3323350]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323350]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323350]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323351] = {}
	-- ===区域状元王中王礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323351]
	-- ===删除: 3323351,1
	-- ===
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323351]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323351]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323351]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323351]["DeleteItem"][1]["Id"] = 3323351 -- 【库】区域状元王中王礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323351]["RewardTitle"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323351]["RewardTitle"]["TitleType"] = 2149 -- 【库】华语区博饼王中王, 【表格】区域状元王中王称号
	tMidAutumnDay_BoBing_RewardItem[3323351]["RewardTitle"]["TitleId"] = 2149
	tMidAutumnDay_BoBing_RewardItem[3323351]["RewardTitle"]["SaveTime"] = 525600 -- 365天时效的[称号]:华语区博饼王中王, 【需求】区域状元王中王称号
	tMidAutumnDay_BoBing_RewardItem[3323351]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323351]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323351]["RewardItem"][1]["Id"] = 3319013 -- (+1)稀有黄色神纹随机包(赠)[3319013][属性:9][叠加:0][金币:0], 【表格】稀有黄色神纹随机包
	tMidAutumnDay_BoBing_RewardItem[3323351]["RewardItem"][1]["Attr"] = "0 1" -- (+1)稀有黄色神纹随机包(赠)*1
	tMidAutumnDay_BoBing_RewardItem[3323351]["RewardItem"][2] = {}
	tMidAutumnDay_BoBing_RewardItem[3323351]["RewardItem"][2]["Id"] = 4200010 -- 10阶灵珠[4200010][属性:72][叠加:99][金币:0], 【表格】10阶灵珠
	tMidAutumnDay_BoBing_RewardItem[3323351]["RewardItem"][2]["Attr"] = "0 1" -- 10阶灵珠*1
	tMidAutumnDay_BoBing_RewardItem[3323351]["RewardItem"][2]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tMidAutumnDay_BoBing_RewardItem[3323351]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323351]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323351]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323354] = {}
	-- ===区域状元王中王礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323354]
	-- ===删除: 3323354,1
	-- ===
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323354]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323354]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323354]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323354]["DeleteItem"][1]["Id"] = 3323354 -- 【库】区域状元王中王礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323354]["RewardTitle"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323354]["RewardTitle"]["TitleType"] = 2150 -- 【库】Dice Champion (English), 【表格】区域状元王中王称号
	tMidAutumnDay_BoBing_RewardItem[3323354]["RewardTitle"]["TitleId"] = 2150
	tMidAutumnDay_BoBing_RewardItem[3323354]["RewardTitle"]["SaveTime"] = 525600 -- 365天时效的[称号]:Dice Champion (English), 【需求】区域状元王中王称号
	tMidAutumnDay_BoBing_RewardItem[3323354]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323354]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323354]["RewardItem"][1]["Id"] = 3319013 -- (+1)稀有黄色神纹随机包(赠)[3319013][属性:9][叠加:0][金币:0], 【表格】稀有黄色神纹随机包
	tMidAutumnDay_BoBing_RewardItem[3323354]["RewardItem"][1]["Attr"] = "0 1" -- (+1)稀有黄色神纹随机包(赠)*1
	tMidAutumnDay_BoBing_RewardItem[3323354]["RewardItem"][2] = {}
	tMidAutumnDay_BoBing_RewardItem[3323354]["RewardItem"][2]["Id"] = 4200010 -- 10阶灵珠[4200010][属性:72][叠加:99][金币:0], 【表格】10阶灵珠
	tMidAutumnDay_BoBing_RewardItem[3323354]["RewardItem"][2]["Attr"] = "0 1" -- 10阶灵珠*1
	tMidAutumnDay_BoBing_RewardItem[3323354]["RewardItem"][2]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tMidAutumnDay_BoBing_RewardItem[3323354]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323354]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323354]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323355] = {}
	-- ===区域状元王中王礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323355]
	-- ===删除: 3323355,1
	-- ===
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323355]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323355]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323355]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323355]["DeleteItem"][1]["Id"] = 3323355 -- 【库】区域状元王中王礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323355]["RewardTitle"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323355]["RewardTitle"]["TitleType"] = 2151 -- 【库】Rey Espa?ol de Dados, 【表格】区域状元王中王称号
	tMidAutumnDay_BoBing_RewardItem[3323355]["RewardTitle"]["TitleId"] = 2151
	tMidAutumnDay_BoBing_RewardItem[3323355]["RewardTitle"]["SaveTime"] = 525600 -- 365天时效的[称号]:Rey Espa?ol de Dados, 【需求】区域状元王中王称号
	tMidAutumnDay_BoBing_RewardItem[3323355]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323355]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323355]["RewardItem"][1]["Id"] = 3319013 -- (+1)稀有黄色神纹随机包(赠)[3319013][属性:9][叠加:0][金币:0], 【表格】稀有黄色神纹随机包
	tMidAutumnDay_BoBing_RewardItem[3323355]["RewardItem"][1]["Attr"] = "0 1" -- (+1)稀有黄色神纹随机包(赠)*1
	tMidAutumnDay_BoBing_RewardItem[3323355]["RewardItem"][2] = {}
	tMidAutumnDay_BoBing_RewardItem[3323355]["RewardItem"][2]["Id"] = 4200010 -- 10阶灵珠[4200010][属性:72][叠加:99][金币:0], 【表格】10阶灵珠
	tMidAutumnDay_BoBing_RewardItem[3323355]["RewardItem"][2]["Attr"] = "0 1" -- 10阶灵珠*1
	tMidAutumnDay_BoBing_RewardItem[3323355]["RewardItem"][2]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tMidAutumnDay_BoBing_RewardItem[3323355]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323355]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323355]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323356] = {}
	-- ===区域状元王中王礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323356]
	-- ===删除: 3323356,1
	-- ===
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323356]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323356]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323356]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323356]["DeleteItem"][1]["Id"] = 3323356 -- 【库】区域状元王中王礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323356]["RewardTitle"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323356]["RewardTitle"]["TitleType"] = 2152 -- 【库】??? ?????(???????), 【表格】区域状元王中王称号
	tMidAutumnDay_BoBing_RewardItem[3323356]["RewardTitle"]["TitleId"] = 2152
	tMidAutumnDay_BoBing_RewardItem[3323356]["RewardTitle"]["SaveTime"] = 525600 -- 365天时效的[称号]:??? ?????(???????), 【需求】区域状元王中王称号
	tMidAutumnDay_BoBing_RewardItem[3323356]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323356]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323356]["RewardItem"][1]["Id"] = 3319013 -- (+1)稀有黄色神纹随机包(赠)[3319013][属性:9][叠加:0][金币:0], 【表格】稀有黄色神纹随机包
	tMidAutumnDay_BoBing_RewardItem[3323356]["RewardItem"][1]["Attr"] = "0 1" -- (+1)稀有黄色神纹随机包(赠)*1
	tMidAutumnDay_BoBing_RewardItem[3323356]["RewardItem"][2] = {}
	tMidAutumnDay_BoBing_RewardItem[3323356]["RewardItem"][2]["Id"] = 4200010 -- 10阶灵珠[4200010][属性:72][叠加:99][金币:0], 【表格】10阶灵珠
	tMidAutumnDay_BoBing_RewardItem[3323356]["RewardItem"][2]["Attr"] = "0 1" -- 10阶灵珠*1
	tMidAutumnDay_BoBing_RewardItem[3323356]["RewardItem"][2]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tMidAutumnDay_BoBing_RewardItem[3323356]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323356]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323356]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem[3323352] = {}
	-- ===全球状元王中王礼盒
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323352]
	-- ===删除: 3323352,1
	-- ===
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323352]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323352]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323352]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323352]["DeleteItem"][1]["Id"] = 3323352 -- 【库】全球状元王中王礼盒[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323352]["RewardTitle"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323352]["RewardTitle"]["TitleType"] = 2148 -- 【库】全球状元王中王, 【表格】全球状元王中王称号
	tMidAutumnDay_BoBing_RewardItem[3323352]["RewardTitle"]["TitleId"] = 2148
	tMidAutumnDay_BoBing_RewardItem[3323352]["RewardTitle"]["SaveTime"] = 525600 -- 365天时效的[称号]:全球状元王中王, 【需求】全球状元王中王称号
	tMidAutumnDay_BoBing_RewardItem[3323352]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323352]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323352]["RewardItem"][1]["Id"] = 4200010 -- 10阶灵珠[4200010][属性:72][叠加:99][金币:0], 【表格】10阶灵珠
	tMidAutumnDay_BoBing_RewardItem[3323352]["RewardItem"][1]["Attr"] = "0 1" -- 10阶灵珠*1
	tMidAutumnDay_BoBing_RewardItem[3323352]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tMidAutumnDay_BoBing_RewardItem[3323352]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323352]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323352]["RewardEffect"]["Effect"] = "angelwing"

	tMidAutumnDay_BoBing_RewardItem[205901] = {}
	-- ===领取坐骑
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323352]
	-- ===
	-- ===
	tMidAutumnDay_BoBing_RewardItem[205901]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[205901]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[205901]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[205901]["RewardItem"][1]["Id"] = 205901 --  九天揽月·比翼[205901][属性:0][叠加:0][金币:0], 【表格】九天揽月坐骑
	tMidAutumnDay_BoBing_RewardItem[205901]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑九天揽月·比翼*1
	tMidAutumnDay_BoBing_RewardItem[205901]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[205901]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[205901]["RewardEffect"]["Effect"] = "angelwing"

	tMidAutumnDay_BoBing_RewardItem[3323478] = {}
	-- ===领取坐骑
	-- ===索引: tMidAutumnDay_BoBing_RewardItem[3323478]
	-- ===
	-- ===
	tMidAutumnDay_BoBing_RewardItem[3323478]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem[3323478]["DeleteItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323478]["DeleteItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323478]["DeleteItem"][1]["Id"] = 3323478 -- 【库】九天揽月·比翼礼包[属性:9]
	tMidAutumnDay_BoBing_RewardItem[3323478]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323478]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem[3323478]["RewardItem"][1]["Id"] = 205901 --  九天揽月·比翼[205901][属性:0][叠加:0][金币:0], 【表格】九天揽月坐骑
	tMidAutumnDay_BoBing_RewardItem[3323478]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑九天揽月·比翼(赠)*1
	tMidAutumnDay_BoBing_RewardItem[3323478]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem[3323478]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem[3323478]["RewardEffect"]["Effect"] = "angelwing"

	tMidAutumnDay_BoBing_RewardItem["RewardDice"] = {}
	-- ===线下活动开启奖励
	-- ===索引: tMidAutumnDay_BoBing_RewardItem["RewardDice"][1]
	-- ===LogStep:2[3]
	-- ===
	-- ===
	tMidAutumnDay_BoBing_RewardItem["RewardDice"][1] = {}
	tMidAutumnDay_BoBing_RewardItem["RewardDice"][1]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem["RewardDice"][1]["LogStep"] = "2[3]"
	tMidAutumnDay_BoBing_RewardItem["RewardDice"][1]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem["RewardDice"][1]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem["RewardDice"][1]["RewardItem"][1]["Id"] = 3323106 -- 博饼骰子[3323106][属性:9][叠加:999][金币:0], 【表格】博饼骰子
	tMidAutumnDay_BoBing_RewardItem["RewardDice"][1]["RewardItem"][1]["Attr"] = "0 30" -- 博饼骰子*30
	tMidAutumnDay_BoBing_RewardItem["RewardDice"][1]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem["RewardDice"][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem["RewardDice"][1]["RewardEffect"]["Effect"] = "angelwing"


	tMidAutumnDay_BoBing_RewardItem["RewardDice"][2] = {}
	-- ===线下活动开启奖励
	-- ===索引: tMidAutumnDay_BoBing_RewardItem["RewardDice"][2]
	-- ===LogStep:2[3]
	-- ===
	-- ===
	tMidAutumnDay_BoBing_RewardItem["RewardDice"][2]["LogId"] = 12001597
	tMidAutumnDay_BoBing_RewardItem["RewardDice"][2]["LogStep"] = "2[3]"
	tMidAutumnDay_BoBing_RewardItem["RewardDice"][2]["RewardItem"] = {}
	tMidAutumnDay_BoBing_RewardItem["RewardDice"][2]["RewardItem"][1] = {}
	tMidAutumnDay_BoBing_RewardItem["RewardDice"][2]["RewardItem"][1]["Id"] = 3323107 -- 王中王博饼骰[3323107][属性:9][叠加:999][金币:0], 【表格】王中王博饼骰子
	tMidAutumnDay_BoBing_RewardItem["RewardDice"][2]["RewardItem"][1]["Attr"] = "0 30" -- 王中王博饼骰*30
	tMidAutumnDay_BoBing_RewardItem["RewardDice"][2]["RewardEffect"] = {}
	tMidAutumnDay_BoBing_RewardItem["RewardDice"][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMidAutumnDay_BoBing_RewardItem["RewardDice"][2]["RewardEffect"]["Effect"] = "angelwing"
	
	tRankingFunc_Info[24868] = {}
	tRankingFunc_Info[24868]["ActiveTime"] = tMidAutumnDay_BoBing_Cont["ActTime"]
	tRankingFunc_Info[24868]["DayTime"] = {}
	tRankingFunc_Info[24868]["DayTime"][1] = "00:00 23:59"
	tRankingFunc_Info[24868]["Reset"] = 1
	tRankingFunc_Info[24868]["Global"] = {53615,53616,53617,53618}
	tRankingFunc_Info[24868]["BeforeGlobal"] = {53619,53620,53621,53622}
	tRankingFunc_Info[24868]["RankNum"] = 10
	tRankingFunc_Info[24868]["RankMode"] = 1
	
	-- LOG表配置
local tMidAutumnDay_BoBing_Log = {}
	tMidAutumnDay_BoBing_Log["nLogId"] = 12001597
	tMidAutumnDay_BoBing_Log["JoinDailyBoBing"] = "0,0,0,0,12001597,1[1],0,0"
	tMidAutumnDay_BoBing_Log["JoinCouponBoBing"] = "0,0,%d,1,12001597,1[2],0,0"
	tMidAutumnDay_BoBing_Log["JoinCPBoBing"] = "%d,0,0,0,12001597,1[3],0,0"
	tMidAutumnDay_BoBing_Log["WinCommonBoBing"] = "0,0,0,0,12001597,2[%d],0,0"
	tMidAutumnDay_BoBing_Log["WinChampionBoBing"] = "0,0,0,0,12001597,2[%d],0,0"
	tMidAutumnDay_BoBing_Log["UseItem"] = "0,0,%d,1,12001597,1[3],0,0"  --使用骰子博饼
	tMidAutumnDay_BoBing_Log[1] = "0,0,%d,%d,12001597,3,0,0"  --过期删除物品
	tMidAutumnDay_BoBing_Log["OverTime"] = "0,0,%d,%d,12001597,3,0,0"
	
	tMidAutumnDay_BoBing_Log["EmoneyLog"] = {}
	tMidAutumnDay_BoBing_Log["EmoneyLog"][1] = "10000	0821"


--------------------------------------npc逻辑----------------------------------
--博饼
function MidAutumnDay_BoBing_NpcUseColorson(nNpcId,nItemId)
	--条件检测
	if not MidAutumnDay_BoBing_BoBingConditionJudge(nNpcId) then
		return
	end
	
	
	if not Item_ChkMulItem(nItemId,nItemId,6) then
		-- LinkNpcGossipFunc_New(nNpcId,"2-2")
		User_TalkChannel2005(tMidAutumnDay_BoBing_Text["System"]["NoCommonTicket"])
		return
	end
	
	-- 背包空间
	if not User_CheckLeftSpace(tMidAutumnDay_BoBing_Cont["nChampionSpace"]) then
		local sStr = string.format(tMidAutumnDay_BoBing_Text["System"]["MsgBoxBagFull"],tMidAutumnDay_BoBing_Cont["nChampionSpace"])
		Sys_MsgBox(sStr)
		return
	end
	
	if not Item_DelMulItem(nItemId,nItemId,6) then
		return
	end
	
	local nBoBingInvEvent = tMidAutumnDay_BoBing_Stc["BoBingInv"]["nEvent"]
	local nBoBingInvData = tMidAutumnDay_BoBing_Stc["BoBingInv"]["nData"]
	-- 博饼间隔掩码赋值
	if Task_AddStatistic(nBoBingInvEvent,nBoBingInvData,tMidAutumnDay_BoBing_Stc["BoBingInv"]["nAdd"],1) then
		Task_SetStcTimestamp(nBoBingInvEvent,nBoBingInvData,0)
	
		MidAutumnDay_BoBing_StartCommonBoBing(nNpcId,nItemId)
		Sys_SaveActionFestivalLog(tMidAutumnDay_BoBing_Log["JoinDailyBoBing"])
	end
	
end
--领取阶段奖励
function MidAutumnDay_BoBing_ConvertReward(nNpcId)
	if not Sys_ChkFullTime(tMidAutumnDay_BoBing_Cont["ActTime"]) then
		 return 
	end
	
	local nEvent = tMidAutumnDay_BoBing_Stc[6]["nEvent"]
	local nType = tMidAutumnDay_BoBing_Stc[6]["nData"]
	--获取当前阶段
	local nStageData1 = Get_UserStatisticValue(nEvent,nType)
	
	if nStageData1 == nil or nStageData1 == 0 then
		nStageData1 = 0
	end
	
	if Task_ChkStcValue(nEvent,nType,">=",8) then
		LinkNpcGossipFunc_New(nNpcId,"3-4")
		return
	end
	
	
	local nMidIntEvent = tMidAutumnDay_BoBing_Stc[1]["nEvent"]
	local nMidIntData = tMidAutumnDay_BoBing_Stc[1]["nData"]
	local nNextStageData1 = nStageData1 + 1
	
	
	local nNum = tMidAutumnDay_BoBing_Cont["IntegralSum"][nNextStageData1] 
	if not Task_ChkStcValue(nMidIntEvent,nMidIntData,">=",nNum) then
		LinkNpcGossipFunc_New(nNpcId,"3-3")
		return
	end
	
	for i = nNextStageData1,8 do
		local nNum = tMidAutumnDay_BoBing_Cont["IntegralSum"][i] 
		if Task_ChkStcValue(nMidIntEvent,nMidIntData,">=",nNum) then
			local nSpace = RewardTemplate_GetRewardSpace(tMidAutumnDay_BoBing_RewardItem["StageReward"][nNextStageData1])
			if not(User_CheckLeftSpace(nSpace)) then
			--提示
				tNpcGossip[nNpcId]["Text321"] = string.format(tMidAutumnDay_BoBing_Text[nNpcId]["Text321"],nSpace)
				LinkNpcGossipFunc_New(nNpcId,"3-2")
				return 
			end
			
			Task_AddStatistic(nEvent,nType,1,1)
			Task_SetStcTimestamp(nEvent,nType,0)
			RewardTemplate_UseItemAndMsg(tMidAutumnDay_BoBing_RewardItem["StageReward"][i])
			
		else
			-- LinkNpcGossipFunc_New(nNpcId,"2-2")
			return
		end
	end
end


--使用天石博饼
function MidAutumnDay_BoBing_CPBoBing(nNpcId,nItemId)
	
	local nUserId = Get_UserId()
	--条件检测
	if not MidAutumnDay_BoBing_BoBingConditionJudge(nNpcId) then
		return
	end
	
	-- 背包空间
	if not User_CheckLeftSpace(tMidAutumnDay_BoBing_Cont["nChampionSpace"]) then
		local sStr = string.format(tMidAutumnDay_BoBing_Text["System"]["MsgBoxBagFull"],tMidAutumnDay_BoBing_Cont["nChampionSpace"])
		Sys_MsgBox(sStr)
		return
	end
	
	local nEmoney = tMidAutumnDay_BoBing_Cont["nCommonEmoney"]
	--判断玩家是否有足够的天石 下同
	if Get_UserEMoney() < nEmoney then
		LinkNpcGossipFunc_New(nNpcId,"2-5")
		return
	end
	
	local sEmoneyBuyLog = tMidAutumnDay_BoBing_Log["EmoneyLog"][1]
	--消耗天石
	if User_AddEMoneyAndLog(-nEmoney,sEmoneyBuyLog,nUserId) then
	
		local nBoBingInvEvent = tMidAutumnDay_BoBing_Stc["BoBingInv"]["nEvent"]
		local nBoBingInvData = tMidAutumnDay_BoBing_Stc["BoBingInv"]["nData"]
		-- 博饼间隔掩码赋值
		if Task_AddStatistic(nBoBingInvEvent,nBoBingInvData,tMidAutumnDay_BoBing_Stc["BoBingInv"]["nAdd"],1) then
			Task_SetStcTimestamp(nBoBingInvEvent,nBoBingInvData,0)
		
			MidAutumnDay_BoBing_StartCommonBoBing(nNpcId,nItemId)
			
			
			-- Sys_SaveActionFestivalLog(tMidAutumnDay_BoBing_Log["JoinDailyBoBing"])
		end
	end
end

--添加积分
function MidAutumnDay_BoBing_AddMidIntegral(nLevel,nItemId)
	
	-- 记录中过状元插金花，满堂红，遍地锦
	-- if nLevel <= 3 then
		-- local nAwardEvent = tMidAutumnDay_BoBing_Stc[5]["nEvent"]
		-- local nAwardData = tMidAutumnDay_BoBing_Stc[5]["nData"]
		
		-- if Task_AddStatistic(nAwardEvent,nAwardData,1,1) then
			-- Task_SetStcTimestamp(nAwardEvent,nAwardData,0)
		-- end
	-- end
	
	
	
	-- 记录中状元
	if nLevel <= 7 then
		local nTopEvent = tMidAutumnDay_BoBing_Stc[2]["nEvent"]
		local nTopData = tMidAutumnDay_BoBing_Stc[2]["nData"]
		
		if Task_AddStatistic(nTopEvent,nTopData,1,1) then
			Task_SetStcTimestamp(nTopEvent,nTopData,0)
		end
	end
	
	--记录积分
	local nMidIntegral = tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][nLevel]["MidIntegral"]
	local nMidIntEvent = tMidAutumnDay_BoBing_Stc[1]["nEvent"]
	local nMidIntData = tMidAutumnDay_BoBing_Stc[1]["nData"]
	-- if Task_AddStatistic(nMidIntEvent,nMidIntData,nMidIntegral,1) then
		-- Task_SetStcTimestamp(nMidIntEvent,nMidIntData,0)
		-- 排行榜
		MidAutumnDay_BoBing_Ranking(nMidIntegral)
	User_TalkChannel2005(string.format(tMidAutumnDay_BoBing_Text["System"]["RewardInt"],1,nMidIntegral))
	-- end
	
	--记王中王积分
	if nItemId == 3323107 then
		local nMidKingIntEvent = tMidAutumnDay_BoBing_Stc[3]["nEvent"]
		local nMidKingIntData = tMidAutumnDay_BoBing_Stc[3]["nData"]
		if Task_AddStatistic(nMidKingIntEvent,nMidKingIntData,nMidIntegral,1) then
			Task_SetStcTimestamp(nMidKingIntEvent,nMidKingIntData,0)
		end
	end
end
--排行榜
function MidAutumnDay_BoBing_Ranking(nMidIntegral)
	local nUserId = Get_UserId()
	local nMidIntEvent = tMidAutumnDay_BoBing_Stc[1]["nEvent"]
	local nMidIntData = tMidAutumnDay_BoBing_Stc[1]["nData"]
	
	local nRankId = tMidAutumnDay_BoBing_Cont["ActRankIndex"]
	local nBeforeRank = RankingFunc_GetUserInRank(nRankId,nUserId)
	--写入排行榜
	Task_AddStatistic(nMidIntEvent,nMidIntData,nMidIntegral,1)
	Task_SetStcTimestamp(nMidIntEvent,nMidIntData,0)
	
	local nMidIntRanking = Get_UserStatisticValue(nMidIntEvent,nMidIntData)
	RankingFunc_SetInfo(nRankId,nMidIntRanking)
	local nNowRank = RankingFunc_GetUserInRank(nRankId,nUserId) 
	
	
	if ((nNowRank <= 3) and (nBeforeRank > 3))  then
		Sys_SystemBroadcast(string.format(tMidAutumnDay_BoBing_Text["System"]["BroadcastRank"],Get_UserName(nUserId),nMidIntRanking,nNowRank))
	end
	
end

function MidAutumnDay_BoBing_OpenWeb(nNpcId)
	if not Sys_ChkFullTime(tMidAutumnDay_BoBing_Cont["ActTime"]) then
		 return 
	end
	
	local nUserId = Get_UserId()
	User_SendWebDialog(tMidAutumnDay_BoBing_Cont["The_web"],nUserId)
end

--和状元郎对话 接action 94485346
function MidAutumnDay_BoBing_LinkNpcDailog(nNpcId)
	--获取之前的状元郎名字
	local sWinnerName = Get_SysDynaGlobalDataStr(tMidAutumnDay_BoBing_Cont["GlobalId"],0)
	if sWinnerName ~= nil and sWinnerName ~= "null" and sWinnerName ~= "" then
		tNpcGossip[24874]["Text111"] = string.format(tMidAutumnDay_BoBing_Text[24874]["Text111"],sWinnerName)
	end

	LinkNpcGossipFunc_New(nNpcId,"1-1")
end

--打开天石商店
function MidAutumnDay_BoBing_OpenEmoneyShop(nNpcId)
	if not Sys_ChkFullTime(tMidAutumnDay_BoBing_Cont["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end

	User_OpenDialog()
end

function MidAutumnDay_BoBing_RewardMount(nNpcId)
	if not Sys_ChkFullTime(tMidAutumnDay_BoBing_Cont["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	local nEvent = tMidAutumnDay_BoBing_Stc[7]["nEvent"]
	local nType = tMidAutumnDay_BoBing_Stc[7]["nData"]
	local nEventLim = tMidAutumnDay_BoBing_Stc[8]["nEvent"]
	local nDataLim = tMidAutumnDay_BoBing_Stc[8]["nData"]
	local nEventRec = tMidAutumnDay_BoBing_Stc[9]["nEvent"]
	local nDataRec = tMidAutumnDay_BoBing_Stc[9]["nData"]
	--未达到666次
	if not Task_ChkStcValue(nEvent,nType,">=",666) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	--在礼包随机是获得奖励
	if Task_ChkStcValue(nEventLim,nDataLim,">=",1) then
		return
	end
	
	if Task_ChkStcValue(nEventRec,nDataRec,">=",1) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	-- 背包空间
	if not User_CheckLeftSpace(tMidAutumnDay_BoBing_Cont["nChampionSpace"]) then
		local sStr = string.format(tMidAutumnDay_BoBing_Text["System"]["MsgBoxBagFull"],tMidAutumnDay_BoBing_Cont["nChampionSpace"])
		Sys_MsgBox(sStr)
		return
	end
	
	if Task_AddStatistic(nEventRec,nDataRec,1,1) then
		Task_SetStcTimestamp(nEventRec,nDataRec,0)
		
		RewardTemplate_UseItem(tMidAutumnDay_BoBing_RewardItem[205901])
		
	end
	
end

function MidAutumnDay_BoBing_RewardDice(nNpcId)
	local nUserId = Get_UserId()
	if not Sys_ChkFullTime(tMidAutumnDay_BoBing_Cont["KingActTime"]) then
		Sys_MsgBox(tMidAutumnDay_BoBing_Text["System"]["TimeAfReward"])
		return
	end
	
	local nLevel = tMidAutumnDay_BoBing_Cont["nMinLevel"]
	local nMete = tMidAutumnDay_BoBing_Cont["nMinMeto"]
	
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	
	local nEvent = tMidAutumnDay_BoBing_Stc[10]["nEvent"]
	local nData = tMidAutumnDay_BoBing_Stc[10]["nData"]
	
	--隔天重置掩码
	if Task_StcInterval(nEvent,nData,1,4) then
		Task_SetStatistic(nEvent,nData,0,1)
		Task_SetStcTimestamp(nEvent,nData,0)
	end
	
	
	if Task_ChkStcValue(nEvent,nData,">=",1) then
		return
	end
	
	local nMidIntEvent = tMidAutumnDay_BoBing_Stc[1]["nEvent"]
	local nMidIntData = tMidAutumnDay_BoBing_Stc[1]["nData"]
	local nTopEvent = tMidAutumnDay_BoBing_Stc[2]["nEvent"]
	local nTopData = tMidAutumnDay_BoBing_Stc[2]["nData"]
	local nIndex = 1
	if Task_ChkStcValue(nMidIntEvent,nMidIntData,">=",2000)  and Task_ChkStcValue(nTopEvent,nTopData,">=",1) then
		nIndex = 2
	end
	
	if Task_AddStatistic(nEvent,nData,1,1) then
		Task_SetStcTimestamp(nEvent,nData,0)
		RewardTemplate_UseItem(tMidAutumnDay_BoBing_RewardItem["RewardDice"][nIndex])
		
		local nRandom = math.random(1,3)
		local sUserName = Get_UserName(nUserId)
		
		Sys_SystemBroadcast(string.format(tMidAutumnDay_BoBing_Text["UserWish"][nRandom],sUserName))
	end
	
end

function MidAutumnDay_BoBing_NpcMain(nNpcId)
	if Sys_ChkFullTime(tMidAutumnDay_BoBing_Cont["BefTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	
	if not Sys_ChkFullTime(tMidAutumnDay_BoBing_Cont["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	local nLevel = tMidAutumnDay_BoBing_Cont["nMinLevel"]
	local nMete = tMidAutumnDay_BoBing_Cont["nMinMeto"]
	if Sys_ChkFullTime(tMidAutumnDay_BoBing_Cont["ActTime"]) and (not User_JudgeLevelAndMetempsychosis(nLevel,nMete)) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	
	if Sys_ChkFullTime(tMidAutumnDay_BoBing_Cont["ActTime"]) and User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		local nEvent = tMidAutumnDay_BoBing_Stc[11]["nEvent"]
		local nData = tMidAutumnDay_BoBing_Stc[11]["nData"]
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		if not Task_ChkStcValue(nEvent,nData,">=",1) then
			if Task_AddStatistic(nEvent,nData,1,1) then
				User_OpenVideo(960,6)
				Task_SetStcTimestamp(nEvent,nData,0)
			end
		end
	end
	
end

--------------------------------------物品逻辑----------------------------------------
function MidAutumnDay_BoBing_ChkPro()
	local nPro=Get_NewUserProfession()
	
	if nPro>=tMidAutumnDay_BoBing_Cont["MinPro"] and nPro <= tMidAutumnDay_BoBing_Cont["MaxPro"] then
		return true
	end
	
	return false
end


---使用骰子
function MidAutumnDay_BoBing_UseColorson(nItemId)
	
	local sTime = tMidAutumnDay_BoBing_Cont["ActTime"]
	
	--过期删除
	if not Sys_ChkFullTime(sTime) then
		local nNum = Get_CountItemType(nItemId,0)
		local sItemName = Get_ItemtypeName(nItemId)
		if not Item_DelAllItemByType(nItemId) then
			return
		end
		User_TalkChannel2005(string.format(tMidAutumnDay_BoBing_Text["OverTime"],sItemName))
		local sLog = string.format(tMidAutumnDay_BoBing_Log["OverTime"],nItemId,nNum)
		Sys_SaveActionFestivalLog(sLog)
		return
	end
	
	if not Item_ChkMulItem(nItemId,nItemId,6) then
		local sText =  tMidAutumnDay_BoBing_Text["System"]["NoCommonTicket"]
		if nItemId == 3323107 then
			sText =  tMidAutumnDay_BoBing_Text["System"]["NoChampionTicket"]
		end
		User_TalkChannel2005(sText)
		return
	end
	
	
	local nBoBingInvEvent = tMidAutumnDay_BoBing_Stc["BoBingInv"]["nEvent"]
	local nBoBingInvData = tMidAutumnDay_BoBing_Stc["BoBingInv"]["nData"]
	-- 条件检测
	if not MidAutumnDay_BoBing_BoBingConditionJudge(1) then
		return
	end
	-- 背包空间
	if not User_CheckLeftSpace(tMidAutumnDay_BoBing_Cont["nChampionSpace"]) then
		local sStr = string.format(tMidAutumnDay_BoBing_Text["System"]["MsgBoxBagFull"],tMidAutumnDay_BoBing_Cont["nChampionSpace"])
		Sys_MsgBox(sStr)
		return
	end
	
	if not Item_DelMulItem(nItemId,nItemId,6) then
		return
	end
	-- 博饼间隔掩码赋值
	if Task_AddStatistic(nBoBingInvEvent,nBoBingInvData,tMidAutumnDay_BoBing_Stc["BoBingInv"]["nAdd"],1) then
		Task_SetStcTimestamp(nBoBingInvEvent,nBoBingInvData,0)
		
		
		MidAutumnDay_BoBing_StartCommonBoBing(1,nItemId)
		
		local sLog = string.format(tMidAutumnDay_BoBing_Log["UseItem"],nItemId)
		Sys_SaveActionFestivalLog(sLog)
		return
	end
	
	
end

function MidAutumnDay_BoBing_UseColorsonNum(nItemId,nStartNum)
	
	local sTime = tMidAutumnDay_BoBing_Cont["ActTime"]
	
	--过期删除
	if not Sys_ChkFullTime(sTime) then
		local nNum = Get_CountItemType(nItemId,0)
		local sItemName = Get_ItemtypeName(nItemId)
		if not Item_DelAllItemByType(nItemId) then
			return
		end
		User_TalkChannel2005(string.format(tMidAutumnDay_BoBing_Text["OverTime"],sItemName))
		local sLog = string.format(tMidAutumnDay_BoBing_Log["OverTime"],nItemId,nNum)
		Sys_SaveActionFestivalLog(sLog)
		return
	end
	
	if not Item_ChkItem(nItemId) then
		return
	end
	
	-- 不满足等级条件
	if not User_JudgeLevelAndMetempsychosis(tMidAutumnDay_BoBing_Cont["nMinLevel"],tMidAutumnDay_BoBing_Cont["nMinMeto"]) then
		return false
	end
	
	-- 背包空间
	if not User_CheckLeftSpace(13) then
		local sStr = string.format(tMidAutumnDay_BoBing_Text["System"]["MsgBoxBagFull"],tMidAutumnDay_BoBing_Cont["MunCommonSpace"])
		Sys_MsgBox(sStr)
		return
	end
	
	if not Item_DelItem(nItemId) then
		return
	end
	
	local nSum = 0
	for i=1,nStartNum do
		local tWinProProbabil = tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1]
		local nBoBingNumEvent = tMidAutumnDay_BoBing_Stc[4]["nEvent"]
		local nBoBingNumData = tMidAutumnDay_BoBing_Stc[4]["nData"]
		local nAwardEvent = tMidAutumnDay_BoBing_Stc[5]["nEvent"]
		local nAwardData = tMidAutumnDay_BoBing_Stc[5]["nData"]
		--根据次数决定随机表，1000不会插金花，满堂红，遍地锦
		-- if nItemId ~= 3323107 then
			-- if not Task_ChkStcValue(nBoBingNumEvent,nBoBingNumData,">=",1000) then
				-- tWinProProbabil = tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2]
			-- elseif Task_ChkStcValue(nBoBingNumEvent,nBoBingNumData,">=",3500) then
				-- --3500没有出过插金花，满堂红，遍地锦必出其中一个
				
				-- if not Task_ChkStcValue(nAwardEvent,nAwardData,">=",1) then
					-- tWinProProbabil = tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][3]
				-- end
			-- end
		-- end
		--添加次数
		Task_AddStatistic(nBoBingNumEvent,nBoBingNumData,1,1)
		Task_SetStcTimestamp(nBoBingNumEvent,nBoBingNumData,0)
		
		--随机中奖级别
		local flat,tNum = Probabil_RandomAward(tWinProProbabil,1)
		local nLevel = tNum[1]["tAward"][1]["Item_1"]
		local nGlobalIdLim = tMidAutumnDay_BoBing_Cont["GlobalIdLim"]
		--全服每日只会出一个博饼前三
		if nLevel <= 3 then
			if Get_SysDynaGlobalData(tMidAutumnDay_BoBing_Cont["GlobalIdLim"],0) >= 1 then
				nLevel =7
			else
				Sys_SetSynaGlobalData(tMidAutumnDay_BoBing_Cont["GlobalIdLim"],0,1)
			end
		end
		
		-- MidAutumnDay_BoBing_AddMidIntegral(nLevel,nItemId)
		--记录中状元
		if nLevel <= 7 then
			local nTopEvent = tMidAutumnDay_BoBing_Stc[2]["nEvent"]
			local nTopData = tMidAutumnDay_BoBing_Stc[2]["nData"]
			
			if Task_AddStatistic(nTopEvent,nTopData,1,1) then
				Task_SetStcTimestamp(nTopEvent,nTopData,0)
			end
		end
		
		RewardTemplate_UseItem(tMidAutumnDay_BoBing_RewardItem["CommonReward"][nLevel],nUserId)
		
		local nMidIntegral = tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][nLevel]["MidIntegral"]
		nSum = nSum + nMidIntegral
	end
	--积分记录到排行榜
	MidAutumnDay_BoBing_Ranking(nSum)
	
	Sys_MsgBox(string.format(tMidAutumnDay_BoBing_Text["System"]["RewardInt"],nStartNum,nSum))
	
end
--开始普通博饼
function MidAutumnDay_BoBing_StartCommonBoBing(nNpcId,nItemId)
	--获取玩家位置
	local nMapId = Get_UserMapId()
	local nPosX = Get_UserPositionX()-3
	local nPosY = Get_UserPositionY()-1
	
	--获取玩家信息
	local nUserId = Get_UserId()
	--中奖总和
	local nDiceTotal = 0
	
	local tWinProProbabil = tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1]
	local nBoBingNumEvent = tMidAutumnDay_BoBing_Stc[4]["nEvent"]
	local nBoBingNumData = tMidAutumnDay_BoBing_Stc[4]["nData"]
	local nAwardEvent = tMidAutumnDay_BoBing_Stc[5]["nEvent"]
	local nAwardData = tMidAutumnDay_BoBing_Stc[5]["nData"]
	--根据次数决定随机表，1000不会插金花，满堂红，遍地锦
	-- if nItemId ~= 3323107 then
		-- if not Task_ChkStcValue(nBoBingNumEvent,nBoBingNumData,">=",1000) then
			-- tWinProProbabil = tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][2]
		-- elseif Task_ChkStcValue(nBoBingNumEvent,nBoBingNumData,">=",3500) then
			-- --3500没有出过插金花，满堂红，遍地锦必出其中一个
			
			-- if not Task_ChkStcValue(nAwardEvent,nAwardData,">=",1) then
				-- tWinProProbabil = tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][3]
			-- end
		-- end
	-- end
	--添加次数
	Task_AddStatistic(nBoBingNumEvent,nBoBingNumData,1,1)
	Task_SetStcTimestamp(nBoBingNumEvent,nBoBingNumData,0)
	
	--普通博饼不需要改概率
	local nLevel,tWinTemplate,sWinStr = MidAutumnDay_BoBing_StartBoBing(tWinProProbabil,1)
	-- local nMidIntegral = tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][1][1][nLevel]["MidIntegral"]
	--全服每日只会出一个博饼前三
	if nLevel <= 3 then
		if Get_SysDynaGlobalData(tMidAutumnDay_BoBing_Cont["GlobalIdLim"],0) >= 1 then
			nLevel =7
		else
			Sys_SetSynaGlobalData(tMidAutumnDay_BoBing_Cont["GlobalIdLim"],0,1)
		end
	end
	
	--添加积分
	MidAutumnDay_BoBing_AddMidIntegral(nLevel,nItemId)
	
	--获得奖励
	RewardTemplate_UseItem(tMidAutumnDay_BoBing_RewardItem["CommonReward"][nLevel],nUserId)
	
	for i=#tWinTemplate-1,1,-1 do
		for j=1,i do
			if tWinTemplate[j+1] < tWinTemplate[j] then
				tWinTemplate[j],tWinTemplate[j+1] = tWinTemplate[j+1],tWinTemplate[j]
			end
		end
	end	
	--遍历数组播放骰子特效
	for v,p in pairs(tWinTemplate) do
		nDiceTotal = nDiceTotal+p
		if v == 4 then
			nPosX = nPosX-5
			nPosY = nPosY+2+v
		end
		Map_Effect(nMapId,nPosX+2*(v-1),nPosY+(1-v),tMidAutumnDay_BoBing_DiceEffect[p])
	end
	-- User_TalkChannel2005("aa..".. tostring(nLevel))
	
	local nRanking = 0
	
	--定时器
	local nTimeDelay = 3
	local nType = 0
	local sFunc = string.format("MidAutumnDay_BoBing_AfterCommonBoBing</N>%d</N>%d</S>%s</N>%d</N>%d",nLevel,nDiceTotal,sWinStr,nNpcId,nRanking)
	User_SetTimer(nTimeDelay,sFunc,nType,nUserId)
end

function MidAutumnDay_BoBing_AfterCommonBoBing(nLevel,nDiceTotal,sWinStr,nNpcId,nRanking,nUserId)
	--分割六个色子点数
	local tResult = MidAutumnDay_BoBing_Split(sWinStr,",")
	local sResult = ""
	for index,Tab in pairs(tResult) do
		sResult = sResult..tMidAutumnDay_BoBing_Text["DiceName"][Tab].." "
	end
	local sUserName = Get_UserName(nUserId)
	local sLog = string.format(tMidAutumnDay_BoBing_Log["WinCommonBoBing"],nLevel)
	User_EffectAdd("self",tMidAutumnDay_BoBing_BoBingEffect[nLevel],nUserId)

	Sys_SaveActionFestivalLog(sLog,nUserId)
	-- 如果中奖的级别是状元以上(nLevel<=5)
	if nLevel <= 3 then
		---------中了状元播放光效+刷动态NPC+全服公告----------
		local sLevelName = tMidAutumnDay_BoBing_Text["LevelName"][nLevel]
		local sBroadcast = string.format(tMidAutumnDay_BoBing_Text["System"]["BroadcastWinCommon"],sUserName)
		Sys_SystemBroadcast(sBroadcast)
		User_TalkChannel2005(sBroadcast,nUserId)

	elseif nLevel <= 7 then
		local sBroadcast1 = string.format(tMidAutumnDay_BoBing_Text["System"]["BroadcastWinChampion"],sUserName)
		Sys_SystemBroadcast(sBroadcast1)
		User_TalkChannel2005(sBroadcast1,nUserId)
	else 
		local sLevelName = tMidAutumnDay_BoBing_Text["LevelName"][nLevel]
		local sRewardName = tMidAutumnDay_BoBing_Text["ItemName"]["Common"][nLevel]
		local sDailogText = string.format(tMidAutumnDay_BoBing_Text["System"]["MsgBoxCommon"],sLevelName,sRewardName)
		User_TalkChannel2005(sDailogText,nUserId)
	end
end

function MidAutumnDay_BoBing_StartBoBing(tProbTepmlate)
	--随机中奖级别
	local flat,tNum = Probabil_RandomAward(tProbTepmlate,1)
	local nLevel = tNum[1]["tAward"][1]["Item_1"]
	
	
	
	--初始化中奖数组
	local tWinTemplate = {}
	local nImpossibleNum = 0  --需要排除掉的数字

	---------------------根据中奖等级，制作中奖模板-------------------------
	if nLevel == 4 and nLevel ~= nil and nLevel ~= 0 then
		--如果是六子
		local flat6Zi,tNum6Zi = Probabil_RandomAward(tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][4],1)
		local nLevel6Zi =  tNum6Zi[1]["tAward"][1]["Item_1"]
		tWinTemplate = CommonFunc_Copy(tMidAutumnDay_BoBing_WinTemplate[nLevel][nLevel6Zi])
	elseif nLevel == 6 and nLevel ~= nil and nLevel ~= 0 then
		--如果是五子
		local flat5Zi,tNum5Zi = Probabil_RandomAward(tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][5],1)
		local nLevel5Zi =  tNum5Zi[1]["tAward"][1]["Item_1"]
		--排除掉
		nImpossibleNum = tMidAutumnDay_BoBing_WinTemplate[nLevel][nLevel5Zi][1]
		tWinTemplate = CommonFunc_Copy(tMidAutumnDay_BoBing_WinTemplate[nLevel][nLevel5Zi])
	elseif nLevel == 10 and nLevel ~= nil and nLevel ~= 0 then
		--四进
		local flat4Jin,tNum4Jin = Probabil_RandomAward(tMidAutumnDay_BoBing_WinProProbabil["BoBingProb"][6],1)
		local nLevel4Jin =  tNum4Jin[1]["tAward"][1]["Item_1"]
		nImpossibleNum = tMidAutumnDay_BoBing_WinTemplate[nLevel][nLevel4Jin][1]
		tWinTemplate = CommonFunc_Copy(tMidAutumnDay_BoBing_WinTemplate[nLevel][nLevel4Jin])
	else
		--剩下的死模板有：状元插金花、五王、状元、对堂、三红、二举、一秀、罚黑
		tWinTemplate = CommonFunc_Copy(tMidAutumnDay_BoBing_WinTemplate[nLevel])
	end
	---------------------根据中奖等级，筛选决不能出现的点数-----------------
	--五王，状元，三红，二举，一秀，罚黑不能有四
	if nLevel == 5 or nLevel == 7 or nLevel == 9 or nLevel == 11 or nLevel == 12 or nLevel == 13 then
		nImpossibleNum = 4
	end
	--不足六位数的模板，根据规则填充到六位 状元插金花、六子、对堂，不用
	tWinTemplate = MidAutumnDay_BoBing_InsertShowTemplate(tWinTemplate,nLevel,nImpossibleNum)
	--将还没有打乱的色子顺序保存起来
	local sWinStr = string.format(tMidAutumnDay_BoBing_Cont["DiceSaveTemplate"],tWinTemplate[1],tWinTemplate[2],tWinTemplate[3],tWinTemplate[4],tWinTemplate[5],tWinTemplate[6])
	--打乱数组排序
	tWinTemplate = MidAutumnDay_BoBing_UpsetOrder(tWinTemplate)
	
	return nLevel,tWinTemplate,sWinStr
end

--自动填充数组到6个   状元不能再有两个1  二举，一秀，发黑不能再有其他数 是4个重复的
function MidAutumnDay_BoBing_InsertShowTemplate(tWinTemplate,nLevel,nImpossibleNum)
	--初始化除4以外，其他数字被摇到的次数
	local tRepeatNumCount = {}
	tRepeatNumCount[1] = 0
	tRepeatNumCount[2] = 0
	tRepeatNumCount[3] = 0
	tRepeatNumCount[4] = 0
	tRepeatNumCount[5] = 0
	tRepeatNumCount[6] = 0
	
	local tWinTemplateTable = tWinTemplate
	--根据中奖模板长度，自动填充到 6 个元素
	local nNeedAddNum = 6-#tWinTemplateTable
	if nNeedAddNum <= 0 then
		return tWinTemplate
	end
	--获取色子点数表
	local tDiceNum = CommonFunc_Copy(tMidAutumnDay_BoBing_DiceNum)
	--排除掉不可能摇出来的数
	table.remove(tDiceNum,nImpossibleNum)
	for i=1,nNeedAddNum do
		local nRecursionNum = 0
		--获取随机数，插入数组
		local nProbNum = MidAutumnDay_BoBing_RandomDiceNum(tDiceNum,nLevel,tRepeatNumCount,nRecursionNum)
		--摇到啥，则对应的摇到次数增加1
		tRepeatNumCount[nProbNum] = tRepeatNumCount[nProbNum]+1
		table.insert(tWinTemplateTable,nProbNum)
	end
	--如果摇出一秀，则判断6个数是否都不同
	if nLevel == 10 then
		for i=1,#tWinTemplateTable do
			if tRepeatNumCount[1] == 1 and tRepeatNumCount[2] == 1 and tRepeatNumCount[3] == 1 and tRepeatNumCount[5] == 1 and tRepeatNumCount[6] == 1 then
				tWinTemplateTable[6] = tWinTemplateTable[2]
			end
		end
	end
	return tWinTemplateTable
end
--摇骰子(随机数)，将排除掉不可能的数
function MidAutumnDay_BoBing_RandomDiceNum(tDiceNum,nLevel,tRepeatNumCount,nRecursionNum)
	local nProbNum = math.random(#tDiceNum)
	--摇到啥，则判断那个数的次数是否达到4，达到4则重新摇
	--如果摇到1 且次数为2.则判断是否是状元，不是没事，是的话重摇
	if tDiceNum[nProbNum] == 1 and tRepeatNumCount[tDiceNum[nProbNum]] == 1 and tRepeatNumCount[tDiceNum[nProbNum]] ~= nil then
		if nLevel == 5 then
			-- 并且达到递归上限的话，否则指定返回
			if nRecursionNum >= tMidAutumnDay_BoBing_Cont["Recursion"] then
				return 3
			end
			--就重摇色子
			nRecursionNum = nRecursionNum+1
			return MidAutumnDay_BoBing_RandomDiceNum(tDiceNum,nLevel,tRepeatNumCount,nRecursionNum)
		end
	end
	--剩下的，只要判断有没有重复为3的
	if tRepeatNumCount[tDiceNum[nProbNum]] >= 3 and tRepeatNumCount[tDiceNum[nProbNum]] ~= nil then
		-- 并且达到递归上限的话，否则指定返回
		if nRecursionNum >= tMidAutumnDay_BoBing_Cont["Recursion"] then
			return 3
		end
		--就重摇色子
		nRecursionNum = nRecursionNum+1
		return MidAutumnDay_BoBing_RandomDiceNum(tDiceNum,nLevel,tRepeatNumCount,nRecursionNum)
	end
	return tDiceNum[nProbNum]
end
--根据传进来的table进行乱序排列  借鉴EmoneymonoDice.lua中的方法
function MidAutumnDay_BoBing_UpsetOrder(tWinTemplate)
	local tAward = {}
	for i=1,#tWinTemplate do
		tAward[i] = tWinTemplate[i]
	end
	local tTemp = {}
	for i=1,#tAward do
		local nRandom = math.random(#tAward)
		--插入随机出来的数,排除已经被选出来的数
		table.insert(tTemp,tAward[nRandom])
		table.remove(tAward,nRandom)
	end
	return tTemp
end

--Split函数实现
function MidAutumnDay_BoBing_Split(inputstr, sep)
	if sep == nil then
			sep = "%s"
	end
	local t={} 
	local i=1
	for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
			t[i] = str
			i = i + 1
	end
	return t
end

--条件检测封装
function MidAutumnDay_BoBing_BoBingConditionJudge(nNpcId)
	--博饼间隔掩码
	local nBoBingInvEvent = tMidAutumnDay_BoBing_Stc["BoBingInv"]["nEvent"]
	local nBoBingInvData = tMidAutumnDay_BoBing_Stc["BoBingInv"]["nData"]
	--间隔时间
	local nInvTime = tMidAutumnDay_BoBing_Cont["nStcIntervalTime"]
	
	--活动期之外
	if not Sys_ChkFullTime(tMidAutumnDay_BoBing_Cont["ActTime"]) then
		if nNpcId ~= 1 then
			LinkNpcGossipFunc_New(nNpcId,"1-1")
		end
		return false
	end
	-- 不满足等级条件
	if not User_JudgeLevelAndMetempsychosis(tMidAutumnDay_BoBing_Cont["nMinLevel"],tMidAutumnDay_BoBing_Cont["nMinMeto"]) then
		if nNpcId ~= 1 then
			LinkNpcGossipFunc_New(nNpcId,"1-3")
		end
		return false
	end

	--博饼间隔不足3s
	if not Task_StcInterval(nBoBingInvEvent,nBoBingInvData,nInvTime,0) then
		if nNpcId ~= 1 then
			LinkNpcGossipFunc_New(nNpcId,"2-7")
		else
			Sys_MsgBox(tMidAutumnDay_BoBing_Text[24868]["Text272"])
		end
		return false
	end
	
	return true
end

--打开礼包
function MidAutumnDay_BoBing_UseBagItem(nItemId,nIndex)
	RewardTemplate_UseItem(tMidAutumnDay_BoBing_RewardItem[nItemId][nIndex])
end

--------------------------------时间质检--------------------------------------
--邮件发奖
function MidAutumnDay_BoBing_SendMailReward()
	MidAutumnDay_BoBing_CreateDynamicNpc()
	
	if not Sys_ChkFullTime(tMidAutumnDay_BoBing_Cont["ActTime"]) then
		return 
	end
		
	 
	local nRankId = tMidAutumnDay_BoBing_Cont["ActRankIndex"]
	local tRankList = RankingFunc_GetNowData(nRankId)
	for i = 1,10 do
		if tRankList[i] == nil or tRankList[i]["UserId"] == nil then
			return
		end
		local nUserId = tRankList[i]["UserId"]
		
		local nActionId = tMidAutumnDay_BoBing_SendMail["Action"][i]
		
		if Sys_ChkFullTime(tMidAutumnDay_BoBing_Cont["KingActTime"]) then
			nActionId = tMidAutumnDay_BoBing_SendMail["DouAction"][i]
		end
		
		local nExistDay = tMidAutumnDay_BoBing_SendMail["ExistDay"]
		local sSender = tMidAutumnDay_BoBing_Text["ActivityMail"]["Sender"]
		local sTitle = tMidAutumnDay_BoBing_Text["ActivityMail"]["Title"]
		local sContent = tMidAutumnDay_BoBing_Text["ActivityMail"]["Content"][i]
		Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent,nServerId)
	end
	
	
end

--创建动态NPC 状元郎
function MidAutumnDay_BoBing_CreateDynamicNpc()
	
	--修改npc名字
	local sBefName =  Get_SysDynaGlobalDataStr(tMidAutumnDay_BoBing_Cont["BefGlobalId"],0)
	local sName =  Get_SysDynaGlobalDataStr(tMidAutumnDay_BoBing_Cont["GlobalId"],0)
	Sys_SetSynaGlobalDataStr(tMidAutumnDay_BoBing_Cont["BefGlobalId"],0,sName)
	
	local nNpcId = tMidAutumnDay_BoBing_Cont["DynaNpc"]["nNpcId"]
	Npc_ChgName(sName,nNpcId)
	
end


-----------------------------------------时间质检----------------------
function MidAutumnDay_BoBing_ClrGlobal()
	local nGlobalId = tMidAutumnDay_BoBing_Cont["GlobalIdLim"]
	
	if not (tMidAutumnDay_BoBing_TempTable[1] == 1) then
		tMidAutumnDay_BoBing_TempTable[1] = 1
		Sys_SetSynaGlobalData(nGlobalId,0,0)
	end
end

function MidAutumnDay_BoBing_ClrData()
	tMidAutumnDay_BoBing_TempTable = {}
end
--------------------------------Npc模板--------------------------------------
tNpcFace[2110] = 98
tNpcGossip[24868] = tNpcGossip[24868] or DefaultNpc:new{}
tNpcGossip[24868]["OptionHidden"] = 1
tNpcGossip[24868]["DialogueText"] = tMidAutumnDay_BoBing_Text[24868]

tNpcGossip[24868]["Text1-1"] = {111,112,113,114,115,116,117}
tNpcGossip[24868]["tOption1-1"] = {111}
tNpcGossip[24868]["ChkFunc1-1"] = function ()
	
	return Sys_ChkFullTime(tMidAutumnDay_BoBing_Cont["BefTime"])
end

--活动后
tNpcGossip[24868]["Text1-2"] = {121,122,123}
tNpcGossip[24868]["tOption1-2"] = {121}
tNpcGossip[24868]["ChkFunc1-2"] = function ()
	
	return not Sys_ChkFullTime(tMidAutumnDay_BoBing_Cont["ActTime"])
end


-- 活动中(等级不足)
tNpcGossip[24868]["Text1-3"] = {131,132,133,134,135,136,137,138}
tNpcGossip[24868]["tOption1-3"] = {131}
tNpcGossip[24868]["ChkFunc1-3"] = function ()
	local nLevel = tMidAutumnDay_BoBing_Cont["nMinLevel"]
	local nMete = tMidAutumnDay_BoBing_Cont["nMinMeto"]
	
	
	return  Sys_ChkFullTime(tMidAutumnDay_BoBing_Cont["ActTime"]) and (not User_JudgeLevelAndMetempsychosis(nLevel,nMete))
end

tNpcGossip[24868]["Text1-4"] = {141,142,143,144,145,146,147,148,149,1410}
tNpcGossip[24868]["tOption1-4"] = {141,143,145,147}
-- tNpcGossip[24868]["OptionFunc142"] = "MidAutumnDay_BoBing_OpenWeb</N>24868"
tNpcGossip[24868]["OptionPoint141"] = "2-1"
tNpcGossip[24868]["OptionPoint143"] = "3-1"
-- tNpcGossip[24868]["OptionPoint144"] = "4-1"
tNpcGossip[24868]["OptionPoint145"] = "5-1"
-- tNpcGossip[24868]["OptionPoint146"] = "6-1"
tNpcGossip[24868]["OptionFunc147"] = "User_OpenVideo</N>960</N>6"
tNpcGossip[24868]["ChkFunc1-4"] = function ()
	local nLevel = tMidAutumnDay_BoBing_Cont["nMinLevel"]
	local nMete = tMidAutumnDay_BoBing_Cont["nMinMeto"]
	if Sys_ChkFullTime(tMidAutumnDay_BoBing_Cont["ActTime"]) and User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		-- local nEvent = tMidAutumnDay_BoBing_Stc[11]["nEvent"]
		-- local nData = tMidAutumnDay_BoBing_Stc[11]["nData"]
		
		-- if not Task_ChkStcValue(nEvent,nData,">=",1) then
			-- if Task_AddStatistic(nEvent,nData,1,1) then
				-- User_OpenVideo(960,6)
				-- Task_SetStcTimestamp(nEvent,nData,0)
				-- return false
			-- end
		-- end
		
		return true
	else
		return false
	end
end

tNpcGossip[24868]["Text2-1"] = {211,212,213,214,215,216,217,218,219,2110,2111,2112,2113,2114,2115,2116,2117,2118,2119,2120,2121,2122,2123,2124,2125,2126,2127,2128,2129,2130,2131,2132,2133,2134,2135,2136,2137,2138,2139,2140}
tNpcGossip[24868]["tOption2-1"] = {211,212}
tNpcGossip[24868]["OptionFunc211"] = "MidAutumnDay_BoBing_NpcUseColorson</N>24868</N>3323106"

tNpcGossip[24868]["Text2-2"] = {221,222}
tNpcGossip[24868]["tOption2-2"] = {221}
tNpcGossip[24868]["OptionPoint221"] = "2-4"

tNpcGossip[24868]["Text2-31"] = {231}
tNpcGossip[24868]["tOption2-31"] = {231}

tNpcGossip[24868]["Text2-32"] = {232}
tNpcGossip[24868]["tOption2-32"] = {231}

tNpcGossip[24868]["Text2-4"] = {241}
tNpcGossip[24868]["tOption2-4"] = {241,242}
tNpcGossip[24868]["OptionFunc241"] = "MidAutumnDay_BoBing_CPBoBing</N>24868</N>3323106"

tNpcGossip[24868]["Text2-5"] = {251}
tNpcGossip[24868]["tOption2-5"] = {251}

tNpcGossip[24868]["Text2-6"] = {261}
tNpcGossip[24868]["tOption2-6"] = {261}

tNpcGossip[24868]["Text2-7"] = {271}
tNpcGossip[24868]["tOption2-7"] = {271}

tNpcGossip[24868]["Text3-1"] = {311,312,313,314,315,316,317,318,319,3110,3111,3112,3113}
tNpcGossip[24868]["tOption3-1"] = {311,312,313,314}
tNpcGossip[24868]["OptionFunc311"] = "MidAutumnDay_BoBing_ConvertReward</N>24868"
tNpcGossip[24868]["ChkFunc3-1"] = function ()
	
	local nMidIntEvent = tMidAutumnDay_BoBing_Stc[1]["nEvent"]
	local nMidIntData = tMidAutumnDay_BoBing_Stc[1]["nData"]
	local nMidIntRanking = Get_UserStatisticValue(nMidIntEvent,nMidIntData)
	
	tNpcGossip[24868]["Text3113"] = string.format(tMidAutumnDay_BoBing_Text[24868]["Text3113"],nMidIntRanking)
	
	local nEvent = tMidAutumnDay_BoBing_Stc[6]["nEvent"]
	local nType = tMidAutumnDay_BoBing_Stc[6]["nData"]
	--获取当前阶段
	local nStageData1 = Get_UserStatisticValue(nEvent,nType)
	
	local nNextStageData1 = nStageData1 + 1
	
	local nTextNum = 12
	
	for i = 1,nStageData1 do
		tNpcGossip[24868]["Text31"..(nTextNum-i)] = tMidAutumnDay_BoBing_Text[24868]["Text131"..(nTextNum-i)]
	end
	
	local nNum = tMidAutumnDay_BoBing_Cont["IntegralSum"][nNextStageData1] 
	
	if Task_ChkStcValue(nEvent,nType,">=",8) then
		tNpcGossip[24868]["tOption3-1"] = {312,313}
	elseif Task_ChkStcValue(nMidIntEvent,nMidIntData,">=",nNum) then
		tNpcGossip[24868]["tOption3-1"] = {311,313}
	else
		tNpcGossip[24868]["tOption3-1"] = {314,313}
	end
	
	
	
	return true
end

tNpcGossip[24868]["Text3-2"] = {321}
tNpcGossip[24868]["tOption3-2"] = {321}

tNpcGossip[24868]["Text3-3"] = {331,332}
tNpcGossip[24868]["tOption3-3"] = {331}

tNpcGossip[24868]["Text3-3"] = {341}
tNpcGossip[24868]["tOption3-3"] = {341}

tNpcGossip[24868]["Text4-1"] = {411,412,413,414,415,416,417,418,419,4110,4111,4112,4113,4114,4115}
tNpcGossip[24868]["tOption4-1"] = {411}
tNpcGossip[24868]["ChkFunc4-1"] = function ()
	
	local nRankId = tMidAutumnDay_BoBing_Cont["ActRankIndex"]
	local tRankList = RankingFunc_GetNowData(nRankId)
	for i=1,10 do
		
		local sRight = ""
		local sLast = ""
		local sMiddle = ""
		
		if tRankList[i] ~= nil then
			sRight = tostring(tRankList[i]["Score"])
			sMiddle = tRankList[i]["UserName"]
		else
			sRight = "0"
			sMiddle = tMidAutumnDay_BoBing_Text["Null"]
		end
		
		-- local sLeft = string.format(tMidAutumnDay_BoBing_Text["Rank"],i)
		local sLast = tMidAutumnDay_BoBing_Text["ActRankReward"][i]

		
		local sText = Sys_CenterAline(i,4,sRight,12,sLast,30,sMiddle,54)
		
		tNpcGossip[24868]["Text41"..(i+3)] = string.format(tMidAutumnDay_BoBing_Text[24868]["Text41"..(i+3)], sText)
	end
	return true
end

tNpcGossip[24868]["Text5-1"] = {511,512,513,514,515,516,517}
tNpcGossip[24868]["tOption5-1"] = {511}

tNpcGossip[24868]["Text6-1"] = {611,612,613,614,615,616,617,618,619,6110,6111,6112}
tNpcGossip[24868]["tOption6-1"] = {611}

tNpcFace[5783] = 46
tNpcGossip[24874]= tNpcGossip[24874] or DefaultNpc:new{}
tNpcGossip[24874]["DialogueText"] = tMidAutumnDay_BoBing_Text[24874]
tNpcGossip[24874]["OptionHidden"] = 1
--1-1
tNpcGossip[24874]["Text1-1"] = {111,112,113,114,115,116,117,118,119}
tNpcGossip[24874]["tOption1-1"] = {111,112}
tNpcGossip[24874]["OptionPoint111"] = "2-1"
tNpcGossip[24874]["ChkFunc1-1"] = function ()
	local sWinnerName = Get_SysDynaGlobalDataStr(tMidAutumnDay_BoBing_Cont["BefGlobalId"],0)
	if sWinnerName ~= nil and sWinnerName ~= "null" and sWinnerName ~= "" then
		tNpcGossip[24874]["Text111"] = string.format(tMidAutumnDay_BoBing_Text[24874]["Text111"],sWinnerName)
	else
		sWinnerName = tMidAutumnDay_BoBing_Text["NpcName"]
		tNpcGossip[24874]["Text111"] = string.format(tMidAutumnDay_BoBing_Text[24874]["Text111"],sWinnerName)
	end
	
	return true
end

tNpcGossip[24874]["Text2-1"] = {211,212,213,2116,214,215,216,217,218,219,2110,2111,2112,2113,2114,2115}
tNpcGossip[24874]["tOption2-1"] = {211}
tNpcGossip[24874]["ChkFunc2-1"] = function ()
	
	local nRankId = tMidAutumnDay_BoBing_Cont["ActRankIndex"]
	local tRankList = RankingFunc_GetNowData(nRankId)
	for i=1,10 do
		
		local sRight = ""
		local sLast = ""
		local sMiddle = ""
		
		if tRankList[i] ~= nil then
			sRight = tostring(tRankList[i]["Score"])
			sMiddle = tRankList[i]["UserName"]
		else
			sRight = "0"
			sMiddle = tMidAutumnDay_BoBing_Text["Null"]
		end
		
		-- local sLeft = string.format(tMidAutumnDay_BoBing_Text["Rank"],i)
		local sLast = tMidAutumnDay_BoBing_Text["ActRankReward"][i]

		sMiddle = string.gsub(sMiddle, "<", " ")
		sMiddle = string.gsub(sMiddle, ">", " ")
		local sText = Sys_CenterAline(i,4,sRight,17,sLast,32,sMiddle,53)
		
		tNpcGossip[24874]["Text21"..(i+3)] = string.format(tMidAutumnDay_BoBing_Text[24874]["Text21"..(i+3)], sText)
	end
	return true
end

tNpcFace[5301] = 1
tNpcGossip[24881] = tNpcGossip[24881] or DefaultNpc:new{}
tNpcGossip[24881]["OptionHidden"] = 1
tNpcGossip[24881]["DialogueText"] = tMidAutumnDay_BoBing_Text[24881]

tNpcGossip[24881]["Text1-1"] = {111,112,113,114,115,116,117}
tNpcGossip[24881]["tOption1-1"] = {111}
tNpcGossip[24881]["ChkFunc1-1"] = function ()
	
	return Sys_ChkFullTime(tMidAutumnDay_BoBing_Cont["BefTime"])
end

--活动后
tNpcGossip[24881]["Text1-2"] = {121,122,123}
tNpcGossip[24881]["tOption1-2"] = {121}
tNpcGossip[24881]["ChkFunc1-2"] = function ()
	
	return not Sys_ChkFullTime(tMidAutumnDay_BoBing_Cont["ActTime"])
end


-- 活动中(等级不足)
tNpcGossip[24881]["Text1-3"] = {131,132,133,134,135,136,137,138}
tNpcGossip[24881]["tOption1-3"] = {131}
tNpcGossip[24881]["ChkFunc1-3"] = function ()
	local nLevel = tMidAutumnDay_BoBing_Cont["nMinLevel"]
	local nMete = tMidAutumnDay_BoBing_Cont["nMinMeto"]
	return  Sys_ChkFullTime(tMidAutumnDay_BoBing_Cont["ActTime"]) and (not User_JudgeLevelAndMetempsychosis(nLevel,nMete))
end

tNpcGossip[24881]["Text1-4"] = {141,142,143,144,145,146,147,148,149,1410}
tNpcGossip[24881]["tOption1-4"] = {141,142,143,144}
tNpcGossip[24881]["OptionFunc141"] = "MidAutumnDay_BoBing_OpenWeb</N>24881"
tNpcGossip[24881]["OptionPoint142"] = "2-1"
tNpcGossip[24881]["OptionFunc143"] = "MidAutumnDay_BoBing_RewardDice</N>24881"
tNpcGossip[24881]["ChkFunc1-4"] = function ()
	local nLevel = tMidAutumnDay_BoBing_Cont["nMinLevel"]
	local nMete = tMidAutumnDay_BoBing_Cont["nMinMeto"]
	if Sys_ChkFullTime(tMidAutumnDay_BoBing_Cont["ActTime"]) and User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		
		local nEvent = tMidAutumnDay_BoBing_Stc[10]["nEvent"]
		local nData = tMidAutumnDay_BoBing_Stc[10]["nData"]
		
		--隔天重置掩码
		if Task_StcInterval(nEvent,nData,1,4) then
			Task_SetStatistic(nEvent,nData,0,1)
			Task_SetStcTimestamp(nEvent,nData,0)
		end
		
		if Task_ChkStcValue(nEvent,nData,">=",1) then
			tNpcGossip[24881]["tOption1-4"] = {141,142,144}
		else
			tNpcGossip[24881]["tOption1-4"] = {141,142,143}
		end
		
		return true
	else
		return false
	end
end

tNpcGossip[24881]["Text2-1"] = {211,212,213,214,215,216,217,218,219,2110,2111}
tNpcGossip[24881]["tOption2-1"] = {211}

tNpcFace[2111] = 2475
tNpcGossip[24872] = tNpcGossip[24872] or DefaultNpc:new{}
tNpcGossip[24872]["OptionHidden"] = 1
tNpcGossip[24872]["DialogueText"] = tMidAutumnDay_BoBing_Text[24872]

tNpcGossip[24872]["Text1-1"] = {111,112,113,114,115,116,117}
tNpcGossip[24872]["tOption1-1"] = {111}
tNpcGossip[24872]["ChkFunc1-1"] = function ()
	
	return Sys_ChkFullTime(tMidAutumnDay_BoBing_Cont["BefTime"])
end

--活动后
tNpcGossip[24872]["Text1-2"] = {121,122,123}
tNpcGossip[24872]["tOption1-2"] = {121}
tNpcGossip[24872]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tMidAutumnDay_BoBing_Cont["ActTime"])
end

tNpcGossip[24872]["Text1-3"] = {131,132,133,134,135,136,137,138,139,1310,1311}
tNpcGossip[24872]["tOption1-3"] = {131,132,133}
tNpcGossip[24872]["OptionFunc131"] = "MidAutumnDay_BoBing_OpenEmoneyShop</N>24872"
tNpcGossip[24872]["OptionFunc132"] = "MidAutumnDay_BoBing_RewardMount</N>24872"
tNpcGossip[24872]["ChkFunc1-3"] = function ()
	local nEvent = tMidAutumnDay_BoBing_Stc[9]["nEvent"]
	local nType = tMidAutumnDay_BoBing_Stc[9]["nData"]
	
	if Task_ChkStcValue(nEvent,nType,">=",1) then
		tNpcGossip[24872]["tOption1-3"] = {131,133}
	else
		tNpcGossip[24872]["tOption1-3"] = {131,132}
	end
	
	return true
end

tNpcGossip[24872]["Text2-1"] = {211,212}
tNpcGossip[24872]["tOption2-1"] = {211}
tNpcGossip[24872]["ChkFunc2-1"] = function ()
	local nEvent = tMidAutumnDay_BoBing_Stc[7]["nEvent"]
	local nType = tMidAutumnDay_BoBing_Stc[7]["nData"]
	
	local nData = Get_UserStatisticValue(nEvent,nType)
	tNpcGossip[24872]["Text212"] = string.format(tMidAutumnDay_BoBing_Text[24872]["Text212"],nData)
	
	return true
end

tNpcGossip[24872]["Text2-2"] = {221}
tNpcGossip[24872]["tOption2-2"] = {221}
------------------------------------物品模板--------------------------------------------
tItem[3323106] = tItem[3323106] or {}
tItem[3323106]["Function"] = function(nItemId,sItemName)
	local nUserMapId = Get_UserMapId()
	local nUserPosX = Get_UserPositionX()
	local nUserPosY = Get_UserPositionY()
	
	--判断是否是激情服
	if SpecialServer_ChkNoGiftServer() then
		
		if nUserMapId == 1036 and
		nUserPosX <= 248 and nUserPosX >= 213 and 
		nUserPosY <= 170 and nUserPosY >= 148 then 
		
			MidAutumnDay_BoBing_UseColorson(nItemId)
		else
			Sys_MsgBox(tMidAutumnDay_BoBing_Text["System"]["PathFind"],"NpcPosition_PathFind</N>24868")
			-- NpcPosition_PathFind(24868)
			
		end
		return
	end
	
	if nUserMapId == 1002 and
	   nUserPosX <= 331 and nUserPosX >= 313 and 
	   nUserPosY <= 451 and nUserPosY >= 436 then
	
		MidAutumnDay_BoBing_UseColorson(nItemId)
	else
		Sys_MsgBox(tMidAutumnDay_BoBing_Text["System"]["PathFind"],"NpcPosition_PathFind</N>24868")
		-- NpcPosition_PathFind(24868)
	end
	
end

tItem[3323107] = tItem[3323107] or {}
tItem[3323107]["Function"] = function(nItemId,sItemName)
	
	if not Sys_ChkFullTime(tMidAutumnDay_BoBing_Cont["KingActTime"]) then
		User_TalkChannel2005(tMidAutumnDay_BoBing_Text["System"]["TimeAf"])
		 return 
	end
	local nUserMapId = Get_UserMapId()
	local nUserPosX = Get_UserPositionX()
	local nUserPosY = Get_UserPositionY()
	
	--判断是否是激情服
	if SpecialServer_ChkNoGiftServer() then
		
		if nUserMapId == 1036 and
		nUserPosX <= 248 and nUserPosX >= 213 and 
		nUserPosY <= 170 and nUserPosY >= 148 then 
		
			MidAutumnDay_BoBing_UseColorson(nItemId)
		else
			Sys_MsgBox(tMidAutumnDay_BoBing_Text["System"]["PathFind"],"NpcPosition_PathFind</N>24868")
			-- NpcPosition_PathFind(24868)
			
		end
		return
	end
	if nUserMapId == 1002 and
	   nUserPosX <= 331 and nUserPosX >= 313 and 
	   nUserPosY <= 451 and nUserPosY >= 436 then 
	
		MidAutumnDay_BoBing_UseColorson(nItemId)
	else
		Sys_MsgBox(tMidAutumnDay_BoBing_Text["System"]["PathFind"],"NpcPosition_PathFind</N>24868")
		-- NpcPosition_PathFind(24868)
	end
	
	-- MidAutumnDay_BoBing_UseColorson(nItemId)
end

tItem[3323120] = tItem[3323120] or {}
tItem[3323120]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItem(tMidAutumnDay_BoBing_RewardItem[nItemId])
end
tItem[3323325] = tItem[3323120] or {}
tItem[3323326] = tItem[3323120] or {}
tItem[3323327] = tItem[3323120] or {}
tItem[3323328] = tItem[3323120] or {}
tItem[3323329] = tItem[3323120] or {}
tItem[3323330] = tItem[3323120] or {}
tItem[3323331] = tItem[3323120] or {}

tItem[3323347] = tItem[3323120] or {}
tItem[3323348] = tItem[3323120] or {}
tItem[3323349] = tItem[3323120] or {}
tItem[3323350] = tItem[3323120] or {}
tItem[3323351] = tItem[3323120] or {}
tItem[3323354] = tItem[3323120] or {}
tItem[3323355] = tItem[3323120] or {}
tItem[3323356] = tItem[3323120] or {}
tItem[3323352] = tItem[3323120] or {}
tItem[3323478] = tItem[3323120] or {}

tItem[3323121] = tItem[3323121] or {}
tItem[3323121]["Function"] = function(nItemId,sItemName)
	MidAutumnDay_BoBing_UseColorsonNum(nItemId,10)
end

tItem[3323122] = tItem[3323122] or {}
tItem[3323122]["Function"] = function(nItemId,sItemName)
	MidAutumnDay_BoBing_UseColorsonNum(nItemId,100)
end

tItem[3323123] = tItem[3323123] or {}
tItem[3323123]["Function"] = function(nItemId,sItemName)
	NpcPosition_PathFind(24873)
end
tItem[3323124] = tItem[3323123] or {}
tItem[3323125] = tItem[3323123] or {}

tItemFace[3323108] = 536
tItemFace[3323109] = 808
tItemFace[3323110] = 610
tItemFace[3323111] = 609
tItemFace[3323112] = 608
tItemFace[3323113] = 611
tItemFace[3323114] = 612
tItemFace[3323115] = 613
tItemFace[3323116] = 614
tItemFace[3323117] = 615
tItemFace[3323118] = 910
tItemFace[3323119] = 425

for nItemId = 3323108,3323119 do 
	tItem[nItemId] = tItem[nItemId] or {}
	tItem[nItemId]["DialogueText"] =tMidAutumnDay_BoBing_Text[nItemId]
	tItem[nItemId]["Text1-1"] = {111,112}
	tItem[nItemId]["tOption1-1"] = {111,112,113,114,115,116}
	tItem[nItemId]["OptionFunc111"]="MidAutumnDay_BoBing_UseBagItem</N>" .. nItemId .."</N>1"
	tItem[nItemId]["OptionFunc112"]="MidAutumnDay_BoBing_UseBagItem</N>" .. nItemId .."</N>2"
	tItem[nItemId]["OptionFunc113"]="MidAutumnDay_BoBing_UseBagItem</N>" .. nItemId .."</N>3"
	tItem[nItemId]["OptionFunc114"]="MidAutumnDay_BoBing_UseBagItem</N>" .. nItemId .."</N>4"
	tItem[nItemId]["OptionFunc115"]="MidAutumnDay_BoBing_UseBagItem</N>" .. nItemId .."</N>5"
	tItem[nItemId]["OptionFunc116"]="MidAutumnDay_BoBing_UseBagItem</N>" .. nItemId .."</N>6"
	tItem[nItemId]["OptionChkFunc115"] = function()
		return MidAutumnDay_BoBing_ChkPro()
	end
	
	tItem[nItemId]["OptionChkFunc116"] = function()
		return MidAutumnDay_BoBing_ChkPro()
	end
end



tItem[3323240] = tItem[3323240] or {}
tItem[3323240]["Function"] = function(nItemId,sItemName)
	--判断物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	
	local nEvent = tMidAutumnDay_BoBing_Stc[7]["nEvent"]
	local nData = tMidAutumnDay_BoBing_Stc[7]["nData"]
	local nEventLim = tMidAutumnDay_BoBing_Stc[8]["nEvent"]
	local nDataLim = tMidAutumnDay_BoBing_Stc[8]["nData"]
	
	if not Task_StcInterval(nEvent,nData,1,0) then
		return
	end
	
	-- 背包空间
	
	local nSpece = 7
	if not User_CheckLeftSpace(nSpece) then
		local sStr = string.format(tMidAutumnDay_BoBing_Text["System"]["NoSpace"],nSpece)
		Sys_MsgBox(sStr)
		
		return
	end
	
	if Task_AddStatistic(nEvent,nData,1,1) then
		Task_SetStcTimestamp(nEvent,nData,0)
		local tNewReward,sRewardStr = RewardTemplate_RandomReward(tMidAutumnDay_BoBing_RewardItem[nItemId],1)
		
		if tNewReward ~= nil and tNewReward[1]["tAward"][1] ~=nil then
			if tNewReward[1]["tAward"][1]["RewardItem"] ~= nil and tNewReward[1]["tAward"][1]["RewardItem"][1]["Id"] == 205901 then
				Task_AddStatistic(nEventLim,nDataLim,1,1)
				Task_SetStcTimestamp(nEventLim,nDataLim,0)
			end
			
			if tNewReward[1]["tAward"][1]["BroadcastIndex"] ~= nil then
				local nRewItemId = tNewReward[1]["tAward"][1]["RewardItem"][1]["Id"]
				local sText = tMidAutumnDay_BoBing_Text["ItemName"][nRewItemId] 
				Sys_SystemBroadcast(string.format(tMidAutumnDay_BoBing_Text["System"]["BroadcastReward"],Get_UserName(),sText))
			end
		end
		
	end
	
	
	
end

--------------------------------时间自检------------------------------------
-- local tMidAutumnDay_BoBing_ClrGlobal = {}
-- tMidAutumnDay_BoBing_ClrGlobal["Type"] = 6  -- 其他
-- tMidAutumnDay_BoBing_ClrGlobal["TimeType"] = 4  -- 日时间
-- tMidAutumnDay_BoBing_ClrGlobal["Multiple"] = {}
-- tMidAutumnDay_BoBing_ClrGlobal["Time"] = "00:00 00:02"
-- tMidAutumnDay_BoBing_ClrGlobal["Func"] = MidAutumnDay_BoBing_ClrGlobal
-- table.insert(tSystemTime_InitialData,tMidAutumnDay_BoBing_ClrGlobal)

-- local tMidAutumnDay_BoBing_ClrData = {}
-- tMidAutumnDay_BoBing_ClrData["Type"] = 6  -- 其他
-- tMidAutumnDay_BoBing_ClrData["TimeType"] = 4  -- 日时间
-- tMidAutumnDay_BoBing_ClrData["Multiple"] = {}
-- tMidAutumnDay_BoBing_ClrData["Time"] = "00:03 00:05"
-- tMidAutumnDay_BoBing_ClrData["Func"] = MidAutumnDay_BoBing_ClrData
-- table.insert(tSystemTime_InitialData,tMidAutumnDay_BoBing_ClrData)

tGlobalData_Info[53642] = {}
tGlobalData_Info[53642]["Time"] = {}
tGlobalData_Info[53642]["Time"]["ActivityTime"] = tActivityTime["MidAutumnDay_BoBing"]["ActTime"]
tGlobalData_Info[53642]["Time"]["ClearTime"] = "00:00 00:00"
tGlobalData_Info[53642]["Rest"] = {}
tGlobalData_Info[53642]["Rest"]["GlobalId"] = {53642}
tGlobalData_Info[53642]["Rest"]["Pos"] = {0}

local tMidAutumnDay_BoBing_MailTime = {}
tMidAutumnDay_BoBing_MailTime["Type"] = 6  -- 其他
tMidAutumnDay_BoBing_MailTime["TimeType"] = 4
tMidAutumnDay_BoBing_MailTime["Multiple"] = {}
tMidAutumnDay_BoBing_MailTime["Multiple"][1]  = "12:00 12:00"
tMidAutumnDay_BoBing_MailTime["Multiple"][2]  = "00:00 00:00"
tMidAutumnDay_BoBing_MailTime["Func"] = MidAutumnDay_BoBing_SendMailReward
table.insert(tSystemTime_InitialData,tMidAutumnDay_BoBing_MailTime)