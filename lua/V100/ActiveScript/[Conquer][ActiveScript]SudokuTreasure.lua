------------------------------------------------------------------------------------
--Name：            180802[简体征服][活动脚本]八月促销活动制作
--Creator:      林旭
--Created:     2018/08/02
------------------------------------------------------------------------------------
-- 命名前缀
-- SudokuTreasure_
-- LogId:12001131
-- Stc:
-- 18138背包信
-- 18139打开宝箱数
-- 18140是否第一次进入宝库
-- 18141是否2次屏蔽
-- 18142燕家兄弟见面情况 18143-18145弃用
-- 18154 记录打开宝箱对应index
-- 18155 记录打开宝箱所需要的天石
----------------------------------表配置部分--------------------------------------------
--常量
local tSudokuTreasure_Constant = {}
	-- 气力值宝库地图
	tSudokuTreasure_Constant["Strength"] = 10358
	
	-- 折扣对应阶数
	tSudokuTreasure_Constant["Phase"] = {}
	tSudokuTreasure_Constant["Phase"][0] = 5
	tSudokuTreasure_Constant["Phase"][1] = 4
	tSudokuTreasure_Constant["Phase"][2] = 3
	tSudokuTreasure_Constant["Phase"][2.5] = 2
	tSudokuTreasure_Constant["Phase"][3] = 1
	
	tSudokuTreasure_Constant["TaskId"] = {}
	tSudokuTreasure_Constant["TaskId"][1] = 762
	tSudokuTreasure_Constant["TaskId"][2] = 763
	
	tSudokuTreasure_Constant["Back"] = {}
	tSudokuTreasure_Constant["Back"]["Normal"] = {}
	tSudokuTreasure_Constant["Back"]["Normal"]["MapId"] = 1002
	tSudokuTreasure_Constant["Back"]["Normal"]["Cellx"] = 376
	tSudokuTreasure_Constant["Back"]["Normal"]["Celly"] = 445
	tSudokuTreasure_Constant["Back"]["NoGift"] = {}
	tSudokuTreasure_Constant["Back"]["NoGift"]["MapId"] = 1036
	tSudokuTreasure_Constant["Back"]["NoGift"]["Cellx"] = 248
	tSudokuTreasure_Constant["Back"]["NoGift"]["Celly"] = 207
	
	tSudokuTreasure_Constant["EMoneyLog"] = "250	4059	%d	%d	1	"
	
	tSudokuTreasure_Constant["RankList"] = 21527
	
	tSudokuTreasure_Constant["DelLog"] = "0,0,%d,%d,12001131,2,0,0"

	tSudokuTreasure_Constant["MinX"] = 54
	tSudokuTreasure_Constant["MaxX"] = 132
	tSudokuTreasure_Constant["MinY"] = 74
	tSudokuTreasure_Constant["MaxY"] = 152
	
	tSudokuTreasure_Constant[3310370] = {Cellx = 0,Celly = -9}
	tSudokuTreasure_Constant[3310371] = {Cellx = 0,Celly = 9}
	tSudokuTreasure_Constant[3310372] = {Cellx = -9,Celly = 0}
	tSudokuTreasure_Constant[3310373] = {Cellx = 9,Celly = 0}
	
	tSudokuTreasure_Constant["BeforeActivityTime"] = tActivityTime["SudokuTreasure"]["BeforeActivityTime"]
	tSudokuTreasure_Constant["ActivityTime"] = tActivityTime["SudokuTreasure"]["ActivityTime"]
	tSudokuTreasure_Constant["AfterActivityTime"] = tActivityTime["SudokuTreasure"]["AfterActivityTime"]
	tSudokuTreasure_Constant["RankActivityTime"] = tActivityTime["SudokuTreasure"]["RankActivityTime"]
	
	tSudokuTreasure_Constant["First"] = {}
	tSudokuTreasure_Constant["First"]["EventType"] = 181
	tSudokuTreasure_Constant["First"]["DataType"] = 40
	tSudokuTreasure_Constant["First"]["Reward"] = {}
	tSudokuTreasure_Constant["First"]["Reward"][1] = {}
	tSudokuTreasure_Constant["First"]["Reward"][1]["ItemId"] = 3310368
	tSudokuTreasure_Constant["First"]["Reward"][1]["ItemNum"] = 1
	tSudokuTreasure_Constant["First"]["Reward"][2] = {}
	tSudokuTreasure_Constant["First"]["Reward"][2]["ItemId"] = 3310369
	tSudokuTreasure_Constant["First"]["Reward"][2]["ItemNum"] = 2
	
	
	tSudokuTreasure_Constant["Award"] = {}
	tSudokuTreasure_Constant["Award"]["EventType"] = 181
	tSudokuTreasure_Constant["Award"]["DataType"] = 54
	tSudokuTreasure_Constant["Cost"] = {}
	tSudokuTreasure_Constant["Cost"]["EventType"] = 181
	tSudokuTreasure_Constant["Cost"]["DataType"] = 55
	tSudokuTreasure_Constant["Rank"] = {}
	tSudokuTreasure_Constant["Rank"]["EventType"] = 181
	tSudokuTreasure_Constant["Rank"]["DataType"] = 39
	tSudokuTreasure_Constant["Shield"] = {}
	tSudokuTreasure_Constant["Shield"]["EventType"] = 181
	tSudokuTreasure_Constant["Shield"]["DataType"] = 41
	tSudokuTreasure_Constant[10357] = {}
	tSudokuTreasure_Constant[10357]["EventType"] = 181
	tSudokuTreasure_Constant[10357]["DataType"] = 42
	tSudokuTreasure_Constant[10358] = {}
	tSudokuTreasure_Constant[10358]["EventType"] = 181
	tSudokuTreasure_Constant[10358]["DataType"] = 42
	tSudokuTreasure_Constant[10359] = {}
	tSudokuTreasure_Constant[10359]["EventType"] = 181
	tSudokuTreasure_Constant[10359]["DataType"] = 42
	tSudokuTreasure_Constant[10360] = {}
	tSudokuTreasure_Constant[10360]["EventType"] = 181
	tSudokuTreasure_Constant[10360]["DataType"] = 42
	
	-- 对应概率
	-- 星陨石宝库
	tSudokuTreasure_Constant[10357][0] = 1
	tSudokuTreasure_Constant[10357][1] = 2
	tSudokuTreasure_Constant[10357][2] = 2
	tSudokuTreasure_Constant[10357][2.5] = 2
	tSudokuTreasure_Constant[10357][3] = 2
	-- 气力值宝库
	tSudokuTreasure_Constant[10358][0] = 1
	tSudokuTreasure_Constant[10358][1] = 2
	tSudokuTreasure_Constant[10358][2] = 2
	tSudokuTreasure_Constant[10358][2.5] = 3
	tSudokuTreasure_Constant[10358][3] = 3
	-- 赤炼石宝库
	tSudokuTreasure_Constant[10359][0] = 1
	tSudokuTreasure_Constant[10359][1] = 3
	tSudokuTreasure_Constant[10359][2] = 3
	tSudokuTreasure_Constant[10359][2.5] = 2
	tSudokuTreasure_Constant[10359][3] = 2
	-- 珍品宝库
	tSudokuTreasure_Constant[10360][0] = 1
	tSudokuTreasure_Constant[10360][1] = 4
	tSudokuTreasure_Constant[10360][2] = 3
	tSudokuTreasure_Constant[10360][2.5] = 2
	tSudokuTreasure_Constant[10360][3] = 2
	
	-- 陷阱入口对应宝库
	tSudokuTreasure_Constant[2077] = 10357
	tSudokuTreasure_Constant[2078] = 10358
	tSudokuTreasure_Constant[2079] = 10359
	tSudokuTreasure_Constant[2080] = 10360
	
	tSudokuTreasure_Constant["Start"] = 500
	tSudokuTreasure_Constant["End"] = 10000
	tSudokuTreasure_Constant["Mete"] = 0
	tSudokuTreasure_Constant["Level"] = 80
	
	tSudokuTreasure_Constant["Step"] = {}
	tSudokuTreasure_Constant["Step"]["ExistDay"] = 30
	tSudokuTreasure_Constant["Step"]["Sender"] = tSudokuTreasure_Text["Mail"]["Sender"] 
	tSudokuTreasure_Constant["Step"]["StepTitle"] = tSudokuTreasure_Text["Mail"]["StepTitle"]
	tSudokuTreasure_Constant["Step"]["Content"] = tSudokuTreasure_Text["Mail"]["Step"]
	tSudokuTreasure_Constant["Step"][1] = {}
	tSudokuTreasure_Constant["Step"][1]["Num"] = 10
	tSudokuTreasure_Constant["Step"][1]["ActionId"] = 573805
	tSudokuTreasure_Constant["Step"][2] = {}
	tSudokuTreasure_Constant["Step"][2]["Num"] = 20
	tSudokuTreasure_Constant["Step"][2]["ActionId"] = 573807
	tSudokuTreasure_Constant["Step"][3] = {}
	tSudokuTreasure_Constant["Step"][3]["Num"] = 30
	tSudokuTreasure_Constant["Step"][3]["ActionId"] = 573809
	tSudokuTreasure_Constant["Step"][4] = {}
	tSudokuTreasure_Constant["Step"][4]["Num"] = 50
	tSudokuTreasure_Constant["Step"][4]["ActionId"] = 573810
	tSudokuTreasure_Constant["Step"][5] = {}
	tSudokuTreasure_Constant["Step"][5]["Num"] = 80
	tSudokuTreasure_Constant["Step"][5]["ActionId"] = 573811
	tSudokuTreasure_Constant["Step"][6] = {}
	tSudokuTreasure_Constant["Step"][6]["Num"] = 100
	tSudokuTreasure_Constant["Step"][6]["ActionId"] = 568677
	
	tSudokuTreasure_Constant["Pos"] = {}
	-- tSudokuTreasure_Constant["Pos"]["NpcId"] = {StartId=1,EndId=80}
	tSudokuTreasure_Constant["Pos"][1] = {Cellx = 57,Celly = 149}
	tSudokuTreasure_Constant["Pos"][2] = {Cellx = 57,Celly = 140}
	tSudokuTreasure_Constant["Pos"][3] = {Cellx = 57,Celly = 131}
	tSudokuTreasure_Constant["Pos"][4] = {Cellx = 57,Celly = 122}
	tSudokuTreasure_Constant["Pos"][5] = {Cellx = 57,Celly = 113}
	tSudokuTreasure_Constant["Pos"][6] = {Cellx = 57,Celly = 104}
	tSudokuTreasure_Constant["Pos"][7] = {Cellx = 57,Celly = 95}
	tSudokuTreasure_Constant["Pos"][8] = {Cellx = 57,Celly = 86}
	tSudokuTreasure_Constant["Pos"][9] = {Cellx = 57,Celly = 77}
	tSudokuTreasure_Constant["Pos"][10] = {Cellx = 66,Celly = 149}
	tSudokuTreasure_Constant["Pos"][11] = {Cellx = 66,Celly = 140}
	tSudokuTreasure_Constant["Pos"][12] = {Cellx = 66,Celly = 131}
	tSudokuTreasure_Constant["Pos"][13] = {Cellx = 66,Celly = 122}
	tSudokuTreasure_Constant["Pos"][14] = {Cellx = 66,Celly = 113}
	tSudokuTreasure_Constant["Pos"][15] = {Cellx = 66,Celly = 104}
	tSudokuTreasure_Constant["Pos"][16] = {Cellx = 66,Celly = 95}
	tSudokuTreasure_Constant["Pos"][17] = {Cellx = 66,Celly = 86}
	tSudokuTreasure_Constant["Pos"][18] = {Cellx = 66,Celly = 77}
	tSudokuTreasure_Constant["Pos"][19] = {Cellx = 75,Celly = 149}
	tSudokuTreasure_Constant["Pos"][20] = {Cellx = 75,Celly = 140}
	tSudokuTreasure_Constant["Pos"][21] = {Cellx = 75,Celly = 131}
	tSudokuTreasure_Constant["Pos"][22] = {Cellx = 75,Celly = 122}
	tSudokuTreasure_Constant["Pos"][23] = {Cellx = 75,Celly = 113}
	tSudokuTreasure_Constant["Pos"][24] = {Cellx = 75,Celly = 104}
	tSudokuTreasure_Constant["Pos"][25] = {Cellx = 75,Celly = 95}
	tSudokuTreasure_Constant["Pos"][26] = {Cellx = 75,Celly = 86}
	tSudokuTreasure_Constant["Pos"][27] = {Cellx = 75,Celly = 77}
	tSudokuTreasure_Constant["Pos"][28] = {Cellx = 84,Celly = 149}
	tSudokuTreasure_Constant["Pos"][29] = {Cellx = 84,Celly = 140}
	tSudokuTreasure_Constant["Pos"][30] = {Cellx = 84,Celly = 131}
	tSudokuTreasure_Constant["Pos"][31] = {Cellx = 84,Celly = 122}
	tSudokuTreasure_Constant["Pos"][32] = {Cellx = 84,Celly = 113}
	tSudokuTreasure_Constant["Pos"][33] = {Cellx = 84,Celly = 104}
	tSudokuTreasure_Constant["Pos"][34] = {Cellx = 84,Celly = 95}
	tSudokuTreasure_Constant["Pos"][35] = {Cellx = 84,Celly = 86}
	tSudokuTreasure_Constant["Pos"][36] = {Cellx = 84,Celly = 77}
	tSudokuTreasure_Constant["Pos"][37] = {Cellx = 93,Celly = 149}
	tSudokuTreasure_Constant["Pos"][38] = {Cellx = 93,Celly = 140}
	tSudokuTreasure_Constant["Pos"][39] = {Cellx = 93,Celly = 131}
	tSudokuTreasure_Constant["Pos"][40] = {Cellx = 93,Celly = 122}
	-- 看守员
	tSudokuTreasure_Constant["Pos"][81] = {Cellx = 93,Celly = 113}
	tSudokuTreasure_Constant["Pos"][41] = {Cellx = 93,Celly = 104}
	tSudokuTreasure_Constant["Pos"][42] = {Cellx = 93,Celly = 95}
	tSudokuTreasure_Constant["Pos"][43] = {Cellx = 93,Celly = 86}
	tSudokuTreasure_Constant["Pos"][44] = {Cellx = 93,Celly = 77}
	tSudokuTreasure_Constant["Pos"][45] = {Cellx = 102,Celly = 149}
	tSudokuTreasure_Constant["Pos"][46] = {Cellx = 102,Celly = 140}
	tSudokuTreasure_Constant["Pos"][47] = {Cellx = 102,Celly = 131}
	tSudokuTreasure_Constant["Pos"][48] = {Cellx = 102,Celly = 122}
	tSudokuTreasure_Constant["Pos"][49] = {Cellx = 102,Celly = 113}
	tSudokuTreasure_Constant["Pos"][50] = {Cellx = 102,Celly = 104}
	tSudokuTreasure_Constant["Pos"][51] = {Cellx = 102,Celly = 95}
	tSudokuTreasure_Constant["Pos"][52] = {Cellx = 102,Celly = 86}
	tSudokuTreasure_Constant["Pos"][53] = {Cellx = 102,Celly = 77}
	tSudokuTreasure_Constant["Pos"][54] = {Cellx = 111,Celly = 149}
	tSudokuTreasure_Constant["Pos"][55] = {Cellx = 111,Celly = 140}
	tSudokuTreasure_Constant["Pos"][56] = {Cellx = 111,Celly = 131}
	tSudokuTreasure_Constant["Pos"][57] = {Cellx = 111,Celly = 122}
	tSudokuTreasure_Constant["Pos"][58] = {Cellx = 111,Celly = 113}
	tSudokuTreasure_Constant["Pos"][59] = {Cellx = 111,Celly = 104}
	tSudokuTreasure_Constant["Pos"][60] = {Cellx = 111,Celly = 95}
	tSudokuTreasure_Constant["Pos"][61] = {Cellx = 111,Celly = 86}
	tSudokuTreasure_Constant["Pos"][62] = {Cellx = 111,Celly = 77}
	tSudokuTreasure_Constant["Pos"][63] = {Cellx = 120,Celly = 149}
	tSudokuTreasure_Constant["Pos"][64] = {Cellx = 120,Celly = 140}
	tSudokuTreasure_Constant["Pos"][65] = {Cellx = 120,Celly = 131}
	tSudokuTreasure_Constant["Pos"][66] = {Cellx = 120,Celly = 122}
	tSudokuTreasure_Constant["Pos"][67] = {Cellx = 120,Celly = 113}
	tSudokuTreasure_Constant["Pos"][68] = {Cellx = 120,Celly = 104}
	tSudokuTreasure_Constant["Pos"][69] = {Cellx = 120,Celly = 95}
	tSudokuTreasure_Constant["Pos"][70] = {Cellx = 120,Celly = 86}
	tSudokuTreasure_Constant["Pos"][71] = {Cellx = 120,Celly = 77}
	tSudokuTreasure_Constant["Pos"][72] = {Cellx = 129,Celly = 149}
	tSudokuTreasure_Constant["Pos"][73] = {Cellx = 129,Celly = 140}
	tSudokuTreasure_Constant["Pos"][74] = {Cellx = 129,Celly = 131}
	tSudokuTreasure_Constant["Pos"][75] = {Cellx = 129,Celly = 122}
	tSudokuTreasure_Constant["Pos"][76] = {Cellx = 129,Celly = 113}
	tSudokuTreasure_Constant["Pos"][77] = {Cellx = 129,Celly = 104}
	tSudokuTreasure_Constant["Pos"][78] = {Cellx = 129,Celly = 95}
	tSudokuTreasure_Constant["Pos"][79] = {Cellx = 129,Celly = 86}
	tSudokuTreasure_Constant["Pos"][80] = {Cellx = 129,Celly = 77}
	
	-- 8兄弟对应POS表
	tSudokuTreasure_Constant["Brother"] = {}
	tSudokuTreasure_Constant["Brother"][1] = 11
	tSudokuTreasure_Constant["Brother"][2] = 14
	tSudokuTreasure_Constant["Brother"][3] = 17
	tSudokuTreasure_Constant["Brother"][4] = 38
	tSudokuTreasure_Constant["Brother"][5] = 43
	tSudokuTreasure_Constant["Brother"][6] = 64
	tSudokuTreasure_Constant["Brother"][7] = 67
	tSudokuTreasure_Constant["Brother"][8] = 70
	tSudokuTreasure_Constant["Brother"]["ActionId"] = 568682
	tSudokuTreasure_Constant["Brother"]["Log"] = "0,0,0,0,12001131,2,3310374[3310369],1[1]"
	tSudokuTreasure_Constant["Brother"]["AllMeetActionId"] = 568683
	tSudokuTreasure_Constant["Brother"]["AllLog"] = "0,0,0,0,12001131,2,3310374[3310375][3310369],1[1][1]"
	
	-- 0折对应POS表
	tSudokuTreasure_Constant["Free"] = {}
	tSudokuTreasure_Constant["Free"][1] = 45
	-- 1折对应POS表
	tSudokuTreasure_Constant["Half"] = {}
	tSudokuTreasure_Constant["Half"][1] = 18
	tSudokuTreasure_Constant["Half"][2] = 24
	tSudokuTreasure_Constant["Half"][3] = 30
	
	-- 折扣
	tSudokuTreasure_Constant["Discount"] = {}
	tSudokuTreasure_Constant["Discount"][57] = {}
	tSudokuTreasure_Constant["Discount"][57][149] = 0.3
	tSudokuTreasure_Constant["Discount"][57][140] = 0.25
	tSudokuTreasure_Constant["Discount"][57][131] = 0.3
	tSudokuTreasure_Constant["Discount"][57][122] = 0.25
	tSudokuTreasure_Constant["Discount"][57][113] = 0.2
	tSudokuTreasure_Constant["Discount"][57][104] = 0.3
	tSudokuTreasure_Constant["Discount"][57][95] = 0.2
	tSudokuTreasure_Constant["Discount"][57][86] = 0.3
	tSudokuTreasure_Constant["Discount"][57][77] = 0.25
	tSudokuTreasure_Constant["Discount"][66] = {}  
	tSudokuTreasure_Constant["Discount"][66][149] = 0.25
	tSudokuTreasure_Constant["Discount"][66][140] = nil
	tSudokuTreasure_Constant["Discount"][66][131] = 0.3
	tSudokuTreasure_Constant["Discount"][66][122] = 0.3
	tSudokuTreasure_Constant["Discount"][66][113] = nil
	tSudokuTreasure_Constant["Discount"][66][104] = 0.25
	tSudokuTreasure_Constant["Discount"][66][95] = 0.3
	tSudokuTreasure_Constant["Discount"][66][86] = nil
	tSudokuTreasure_Constant["Discount"][66][77] = 0.1
	tSudokuTreasure_Constant["Discount"][75] = {}  
	tSudokuTreasure_Constant["Discount"][75][149] = 0.2
	tSudokuTreasure_Constant["Discount"][75][140] = 0.3
	tSudokuTreasure_Constant["Discount"][75][131] = 0.25
	tSudokuTreasure_Constant["Discount"][75][122] = 0.25
	tSudokuTreasure_Constant["Discount"][75][113] = 0.3
	tSudokuTreasure_Constant["Discount"][75][104] = 0.1
	tSudokuTreasure_Constant["Discount"][75][95] = nil
	tSudokuTreasure_Constant["Discount"][75][86] = 0.25
	tSudokuTreasure_Constant["Discount"][75][77] = 0.3
	tSudokuTreasure_Constant["Discount"][84] = {}  
	tSudokuTreasure_Constant["Discount"][84][149] = 0.3
	tSudokuTreasure_Constant["Discount"][84][140] = 0.25
	tSudokuTreasure_Constant["Discount"][84][131] = 0.1
	tSudokuTreasure_Constant["Discount"][84][122] = 0.3
	tSudokuTreasure_Constant["Discount"][84][113] = 0.25
	tSudokuTreasure_Constant["Discount"][84][104] = 0.3
	tSudokuTreasure_Constant["Discount"][84][95] = 0.25
	tSudokuTreasure_Constant["Discount"][84][86] = 0.3
	tSudokuTreasure_Constant["Discount"][84][77] = 0.25
	tSudokuTreasure_Constant["Discount"][93] = {}  
	tSudokuTreasure_Constant["Discount"][93][149] = 0.3
	tSudokuTreasure_Constant["Discount"][93][140] = nil
	tSudokuTreasure_Constant["Discount"][93][131] = 0.3
	tSudokuTreasure_Constant["Discount"][93][122] = 0.3
	tSudokuTreasure_Constant["Discount"][93][113] = nil
	tSudokuTreasure_Constant["Discount"][93][104] = 0.2
	tSudokuTreasure_Constant["Discount"][93][95] = 0.3
	tSudokuTreasure_Constant["Discount"][93][86] = nil
	tSudokuTreasure_Constant["Discount"][93][77] = 0.2
	tSudokuTreasure_Constant["Discount"][102] = {} 
	tSudokuTreasure_Constant["Discount"][102][149] = 0
	tSudokuTreasure_Constant["Discount"][102][140] = 0.3
	tSudokuTreasure_Constant["Discount"][102][131] = 0.25
	tSudokuTreasure_Constant["Discount"][102][122] = 0.3
	tSudokuTreasure_Constant["Discount"][102][113] = 0.3
	tSudokuTreasure_Constant["Discount"][102][104] = 0.3
	tSudokuTreasure_Constant["Discount"][102][95] = 0.2
	tSudokuTreasure_Constant["Discount"][102][86] = 0.25
	tSudokuTreasure_Constant["Discount"][102][77] = 0.3
	tSudokuTreasure_Constant["Discount"][111] = {} 
	tSudokuTreasure_Constant["Discount"][111][149] = 0.3
	tSudokuTreasure_Constant["Discount"][111][140] = 0.25
	tSudokuTreasure_Constant["Discount"][111][131] = 0.2
	tSudokuTreasure_Constant["Discount"][111][122] = 0.25
	tSudokuTreasure_Constant["Discount"][111][113] = 0.2
	tSudokuTreasure_Constant["Discount"][111][104] = 0.3
	tSudokuTreasure_Constant["Discount"][111][95] = 0.25
	tSudokuTreasure_Constant["Discount"][111][86] = 0.3
	tSudokuTreasure_Constant["Discount"][111][77] = 0.25
	tSudokuTreasure_Constant["Discount"][120] = {} 
	tSudokuTreasure_Constant["Discount"][120][149] = 0.2
	tSudokuTreasure_Constant["Discount"][120][140] = nil
	tSudokuTreasure_Constant["Discount"][120][131] = 0.3
	tSudokuTreasure_Constant["Discount"][120][122] = 0.2
	tSudokuTreasure_Constant["Discount"][120][113] = nil
	tSudokuTreasure_Constant["Discount"][120][104] = 0.25
	tSudokuTreasure_Constant["Discount"][120][95] = 0.3
	tSudokuTreasure_Constant["Discount"][120][86] = nil
	tSudokuTreasure_Constant["Discount"][120][77] = 0.2
	tSudokuTreasure_Constant["Discount"][129] = {} 
	tSudokuTreasure_Constant["Discount"][129][149] = 0.25
	tSudokuTreasure_Constant["Discount"][129][140] = 0.2
	tSudokuTreasure_Constant["Discount"][129][131] = 0.25
	tSudokuTreasure_Constant["Discount"][129][122] = 0.3
	tSudokuTreasure_Constant["Discount"][129][113] = 0.25
	tSudokuTreasure_Constant["Discount"][129][104] = 0.3
	tSudokuTreasure_Constant["Discount"][129][95] = 0.2
	tSudokuTreasure_Constant["Discount"][129][86] = 0.25
	tSudokuTreasure_Constant["Discount"][129][77] = 0.3
	
	
--宝库奖池配置
local tSudokuTreasure_Treasure = {}
	-- 购买必送传送卷 5%几率获得定向劵
	tSudokuTreasure_Treasure["Fixed"] = {}
	tSudokuTreasure_Treasure["Fixed"]["EventType"] = 181
	tSudokuTreasure_Treasure["Fixed"]["DataType"] = 39
	tSudokuTreasure_Treasure["Fixed"]["RewardData"] = 99999999
	tSudokuTreasure_Treasure["Fixed"]["RewardDelay"] = 1
	tSudokuTreasure_Treasure["Fixed"]["RewardTimeType"] = 4
	tSudokuTreasure_Treasure["Fixed"]["RewardItem"] = {}
	tSudokuTreasure_Treasure["Fixed"]["RewardItem"][1] = {}
	tSudokuTreasure_Treasure["Fixed"]["RewardItem"][1]["Id"] = 3310369
	tSudokuTreasure_Treasure["Fixed"]["RewardItem"][1]["Attr"] = "0 1"
	
	tSudokuTreasure_Treasure["Random"] = {}
	tSudokuTreasure_Treasure["Random"]["ItemChanceSum"] = 10000
	tSudokuTreasure_Treasure["Random"][1] = {}
	tSudokuTreasure_Treasure["Random"][1]["RandomItemChanceType"] = 2
	tSudokuTreasure_Treasure["Random"][1]["ItemChance"] = 2500
	tSudokuTreasure_Treasure["Random"][1]["RewardItem"] = {}
	tSudokuTreasure_Treasure["Random"][1]["RewardItem"][1] = {}
	tSudokuTreasure_Treasure["Random"][1]["RewardItem"][1]["Id"] = 3310370
	tSudokuTreasure_Treasure["Random"][1]["RewardItem"][1]["Attr"] = "0 1"
	tSudokuTreasure_Treasure["Random"][2] = {}
	tSudokuTreasure_Treasure["Random"][2]["RandomItemChanceType"] = 2
	tSudokuTreasure_Treasure["Random"][2]["ItemChance"] = 2500
	tSudokuTreasure_Treasure["Random"][2]["RewardItem"] = {}
	tSudokuTreasure_Treasure["Random"][2]["RewardItem"][1] = {}
	tSudokuTreasure_Treasure["Random"][2]["RewardItem"][1]["Id"] = 3310371
	tSudokuTreasure_Treasure["Random"][2]["RewardItem"][1]["Attr"] = "0 1"
	tSudokuTreasure_Treasure["Random"][3] = {}
	tSudokuTreasure_Treasure["Random"][3]["RandomItemChanceType"] = 2
	tSudokuTreasure_Treasure["Random"][3]["ItemChance"] = 2500
	tSudokuTreasure_Treasure["Random"][3]["RewardItem"] = {}
	tSudokuTreasure_Treasure["Random"][3]["RewardItem"][1] = {}
	tSudokuTreasure_Treasure["Random"][3]["RewardItem"][1]["Id"] = 3310372
	tSudokuTreasure_Treasure["Random"][3]["RewardItem"][1]["Attr"] = "0 1"
	tSudokuTreasure_Treasure["Random"][4] = {}
	tSudokuTreasure_Treasure["Random"][4]["RandomItemChanceType"] = 2
	tSudokuTreasure_Treasure["Random"][4]["ItemChance"] = 2500
	tSudokuTreasure_Treasure["Random"][4]["RewardItem"] = {}
	tSudokuTreasure_Treasure["Random"][4]["RewardItem"][1] = {}
	tSudokuTreasure_Treasure["Random"][4]["RewardItem"][1]["Id"] = 3310373
	tSudokuTreasure_Treasure["Random"][4]["RewardItem"][1]["Attr"] = "0 1"
	
	-- 星陨石宝库
	tSudokuTreasure_Treasure[10357] = {}
	tSudokuTreasure_Treasure[10357][1] = {}
	tSudokuTreasure_Treasure[10357][1]["Price"] = 8
	tSudokuTreasure_Treasure[10357][1]["RewardItem"]={}
	tSudokuTreasure_Treasure[10357][1]["RewardItem"][1] = {}
	tSudokuTreasure_Treasure[10357][1]["RewardItem"][1]["Id"] = 3009000 --微光星陨石
	tSudokuTreasure_Treasure[10357][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tSudokuTreasure_Treasure[10357][1]["RewardEffect"]={}
	tSudokuTreasure_Treasure[10357][1]["RewardEffect"]["Effect"]="zf2-e128"
	tSudokuTreasure_Treasure[10357][1]["NewLog"]="%d,0,0,0,12001131,2,3310369[3009000]%s,1[1]%s"
	tSudokuTreasure_Treasure[10357][2] = {}
	tSudokuTreasure_Treasure[10357][2]["Price"] = 80
	tSudokuTreasure_Treasure[10357][2]["RewardItem"]={}
	tSudokuTreasure_Treasure[10357][2]["RewardItem"][1] = {}
	tSudokuTreasure_Treasure[10357][2]["RewardItem"][1]["Id"] = 3009001 --明亮星陨石
	tSudokuTreasure_Treasure[10357][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tSudokuTreasure_Treasure[10357][2]["RewardEffect"]={}
	tSudokuTreasure_Treasure[10357][2]["RewardEffect"]["Effect"]="zf2-e128"
	tSudokuTreasure_Treasure[10357][2]["NewLog"]="%d,0,0,0,12001131,2,3310369[3009001]%s,1[1]%s"
	tSudokuTreasure_Treasure[10357][3] = {}
	tSudokuTreasure_Treasure[10357][3]["Price"] = 800
	tSudokuTreasure_Treasure[10357][3]["RewardItem"]={}
	tSudokuTreasure_Treasure[10357][3]["RewardItem"][1] = {}
	tSudokuTreasure_Treasure[10357][3]["RewardItem"][1]["Id"] = 3009002 --晶莹星陨石
	tSudokuTreasure_Treasure[10357][3]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tSudokuTreasure_Treasure[10357][3]["RewardEffect"]={}
	tSudokuTreasure_Treasure[10357][3]["RewardEffect"]["Effect"]="zf2-e128"
	tSudokuTreasure_Treasure[10357][3]["NewLog"]="%d,0,0,0,12001131,2,3310369[3009002]%s,1[1]%s"
	-- 气力值宝库
	tSudokuTreasure_Treasure[10358] = {}
	tSudokuTreasure_Treasure[10358][1] = {}
	tSudokuTreasure_Treasure[10358][1]["Price"] = 50
	tSudokuTreasure_Treasure[10358][1]["RewardStrengthValue"] = {}
	tSudokuTreasure_Treasure[10358][1]["RewardStrengthValue"]["Value"] = 200
	tSudokuTreasure_Treasure[10358][1]["RewardEffect"]={}
	tSudokuTreasure_Treasure[10358][1]["RewardEffect"]["Effect"]="zf2-e128"
	tSudokuTreasure_Treasure[10358][1]["NewLog"]="%d,0,0,0,12001131,2,3310369[12]%s,1[200]%s"
	tSudokuTreasure_Treasure[10358][2] = {}
	tSudokuTreasure_Treasure[10358][2]["Price"] = 250
	tSudokuTreasure_Treasure[10358][2]["RewardStrengthValue"] = {}
	tSudokuTreasure_Treasure[10358][2]["RewardStrengthValue"]["Value"] = 500
	tSudokuTreasure_Treasure[10358][2]["RewardEffect"]={}
	tSudokuTreasure_Treasure[10358][2]["RewardEffect"]["Effect"]="zf2-e128"
	tSudokuTreasure_Treasure[10358][2]["NewLog"]="%d,0,0,0,12001131,2,3310369[12]%s,1[500]%s"
	tSudokuTreasure_Treasure[10358][3] = {}
	tSudokuTreasure_Treasure[10358][3]["Price"] = 500
	tSudokuTreasure_Treasure[10358][3]["RewardStrengthValue"] = {}
	tSudokuTreasure_Treasure[10358][3]["RewardStrengthValue"]["Value"] = 1000
	tSudokuTreasure_Treasure[10358][3]["RewardEffect"]={}
	tSudokuTreasure_Treasure[10358][3]["RewardEffect"]["Effect"]="zf2-e128"
	tSudokuTreasure_Treasure[10358][3]["NewLog"]="%d,0,0,0,12001131,2,3310369[12]%s,1[1000]%s"
	tSudokuTreasure_Treasure[10358][4] = {}
	tSudokuTreasure_Treasure[10358][4]["Price"] = 5000
	tSudokuTreasure_Treasure[10358][4]["RewardStrengthValue"] = {}
	tSudokuTreasure_Treasure[10358][4]["RewardStrengthValue"]["Value"] = 10000
	tSudokuTreasure_Treasure[10358][4]["RewardEffect"]={}
	tSudokuTreasure_Treasure[10358][4]["RewardEffect"]["Effect"]="zf2-e128"
	tSudokuTreasure_Treasure[10358][4]["NewLog"]="%d,0,0,0,12001131,2,3310369[12]%s,1[10000]%s"
	-- 赤炼石宝库
	tSudokuTreasure_Treasure[10359] = {}
	tSudokuTreasure_Treasure[10359][1] = {}
	tSudokuTreasure_Treasure[10359][1]["Price"] = 8
	tSudokuTreasure_Treasure[10359][1]["RewardItem"]={}
	tSudokuTreasure_Treasure[10359][1]["RewardItem"][1] = {}
	tSudokuTreasure_Treasure[10359][1]["RewardItem"][1]["Id"] = 730001 --赤炼石+1
	tSudokuTreasure_Treasure[10359][1]["RewardItem"][1]["Attr"] = "0 1 0 10080 1"
	tSudokuTreasure_Treasure[10359][1]["RewardEffect"]={}
	tSudokuTreasure_Treasure[10359][1]["RewardEffect"]["Effect"]="zf2-e128"
	tSudokuTreasure_Treasure[10359][1]["NewLog"]="%d,0,0,0,12001131,2,3310369[730001]%s,1[1]%s"
	tSudokuTreasure_Treasure[10359][2] = {}
	tSudokuTreasure_Treasure[10359][2]["Price"] = 37
	tSudokuTreasure_Treasure[10359][2]["RewardItem"]={}
	tSudokuTreasure_Treasure[10359][2]["RewardItem"][1] = {}
	tSudokuTreasure_Treasure[10359][2]["RewardItem"][1]["Id"] = 730002 --赤炼石+2
	tSudokuTreasure_Treasure[10359][2]["RewardItem"][1]["Attr"] = "0 1 0 10080 1"
	tSudokuTreasure_Treasure[10359][2]["RewardEffect"]={}
	tSudokuTreasure_Treasure[10359][2]["RewardEffect"]["Effect"]="zf2-e128"
	tSudokuTreasure_Treasure[10359][2]["NewLog"]="%d,0,0,0,12001131,2,3310369[730002]%s,1[1]%s"
	tSudokuTreasure_Treasure[10359][3] = {}
	tSudokuTreasure_Treasure[10359][3]["Price"] = 108
	tSudokuTreasure_Treasure[10359][3]["RewardItem"]={}
	tSudokuTreasure_Treasure[10359][3]["RewardItem"][1] = {}
	tSudokuTreasure_Treasure[10359][3]["RewardItem"][1]["Id"] = 730003 --赤炼石+3
	tSudokuTreasure_Treasure[10359][3]["RewardItem"][1]["Attr"] = "0 1 0 10080 1"
	tSudokuTreasure_Treasure[10359][3]["RewardEffect"]={}
	tSudokuTreasure_Treasure[10359][3]["RewardEffect"]["Effect"]="zf2-e128"
	tSudokuTreasure_Treasure[10359][3]["NewLog"]="%d,0,0,0,12001131,2,3310369[730003]%s,1[1]%s"
	tSudokuTreasure_Treasure[10359][4] = {}
	tSudokuTreasure_Treasure[10359][4]["Price"] = 324
	tSudokuTreasure_Treasure[10359][4]["RewardItem"]={}
	tSudokuTreasure_Treasure[10359][4]["RewardItem"][1] = {}
	tSudokuTreasure_Treasure[10359][4]["RewardItem"][1]["Id"] = 730004 --赤炼石+4
	tSudokuTreasure_Treasure[10359][4]["RewardItem"][1]["Attr"] = "0 1 0 10080 1"
	tSudokuTreasure_Treasure[10359][4]["RewardEffect"]={}
	tSudokuTreasure_Treasure[10359][4]["RewardEffect"]["Effect"]="zf2-e128"
	tSudokuTreasure_Treasure[10359][4]["NewLog"]="%d,0,0,0,12001131,2,3310369[730004%s],1[1]%s"
	tSudokuTreasure_Treasure[10359][5] = {}
	tSudokuTreasure_Treasure[10359][5]["Price"] = 972
	tSudokuTreasure_Treasure[10359][5]["RewardItem"]={}
	tSudokuTreasure_Treasure[10359][5]["RewardItem"][1] = {}
	tSudokuTreasure_Treasure[10359][5]["RewardItem"][1]["Id"] = 730005 --赤炼石+5
	tSudokuTreasure_Treasure[10359][5]["RewardItem"][1]["Attr"] = "0 1 0 10080 1"
	tSudokuTreasure_Treasure[10359][5]["RewardEffect"]={}
	tSudokuTreasure_Treasure[10359][5]["RewardEffect"]["Effect"]="zf2-e128"
	tSudokuTreasure_Treasure[10359][5]["NewLog"]="%d,0,0,0,12001131,2,3310369[730005]%s,1[1]%s"
	-- 珍品宝库
	tSudokuTreasure_Treasure[10360] = {}
	tSudokuTreasure_Treasure[10360][1] = {}
	tSudokuTreasure_Treasure[10360][1]["Price"] = 100
	tSudokuTreasure_Treasure[10360][1]["RewardItem"]={}
	tSudokuTreasure_Treasure[10360][1]["RewardItem"][1] = {}
	tSudokuTreasure_Treasure[10360][1]["RewardItem"][1]["Id"] = 4050001 --黄色神纹精粹
	tSudokuTreasure_Treasure[10360][1]["RewardItem"][1]["Attr"] = "0 50 3"
	tSudokuTreasure_Treasure[10360][1]["RewardEffect"]={}
	tSudokuTreasure_Treasure[10360][1]["RewardEffect"]["Effect"]="zf2-e128"
	tSudokuTreasure_Treasure[10360][1]["NewLog"]="%d,0,0,0,12001131,2,3310369[4050001]%s,1[50]%s"
	tSudokuTreasure_Treasure[10360][2] = {}
	tSudokuTreasure_Treasure[10360][2]["Price"] = 150
	tSudokuTreasure_Treasure[10360][2]["RewardItem"]={}
	tSudokuTreasure_Treasure[10360][2]["RewardItem"][1] = {}
	tSudokuTreasure_Treasure[10360][2]["RewardItem"][1]["Id"] = 4040001 --蓝色神纹精粹
	tSudokuTreasure_Treasure[10360][2]["RewardItem"][1]["Attr"] = "0 50 3"
	tSudokuTreasure_Treasure[10360][2]["RewardEffect"]={}
	tSudokuTreasure_Treasure[10360][2]["RewardEffect"]["Effect"]="zf2-e128"
	tSudokuTreasure_Treasure[10360][2]["NewLog"]="%d,0,0,0,12001131,2,3310369[4040001]%s,1[50]%s"
	tSudokuTreasure_Treasure[10360][3] = {}
	tSudokuTreasure_Treasure[10360][3]["Price"] = 10
	tSudokuTreasure_Treasure[10360][3]["RewardItem"]={}
	tSudokuTreasure_Treasure[10360][3]["RewardItem"][1] = {}
	tSudokuTreasure_Treasure[10360][3]["RewardItem"][1]["Id"] = 3321098 --神兵灵魄
	tSudokuTreasure_Treasure[10360][3]["RewardItem"][1]["Attr"] = "0 1 3"
	tSudokuTreasure_Treasure[10360][3]["RewardEffect"]={}
	tSudokuTreasure_Treasure[10360][3]["RewardEffect"]["Effect"]="zf2-e128"
	tSudokuTreasure_Treasure[10360][3]["NewLog"]="%d,0,0,0,12001131,2,3310369[3321098]%s,1[1]%s"
	tSudokuTreasure_Treasure[10360][4] = {}
	tSudokuTreasure_Treasure[10360][4]["Price"] = 9
	tSudokuTreasure_Treasure[10360][4]["RewardItem"]={}
	tSudokuTreasure_Treasure[10360][4]["RewardItem"][1] = {}
	tSudokuTreasure_Treasure[10360][4]["RewardItem"][1]["Id"] = 3321107 --炼魂石
	tSudokuTreasure_Treasure[10360][4]["RewardItem"][1]["Attr"] = "0 1 3"
	tSudokuTreasure_Treasure[10360][4]["RewardEffect"]={}
	tSudokuTreasure_Treasure[10360][4]["RewardEffect"]["Effect"]="zf2-e128"
	tSudokuTreasure_Treasure[10360][4]["NewLog"]="%d,0,0,0,12001131,2,3310369[3321107]%s,1[1]%s"
	tSudokuTreasure_Treasure[10360][5] = {}
	tSudokuTreasure_Treasure[10360][5]["Price"] = 270
	tSudokuTreasure_Treasure[10360][5]["RewardItem"]={}
	tSudokuTreasure_Treasure[10360][5]["RewardItem"][1] = {}
	tSudokuTreasure_Treasure[10360][5]["RewardItem"][1]["Id"] = 3321108 --鸿蒙炼魂玉
	tSudokuTreasure_Treasure[10360][5]["RewardItem"][1]["Attr"] = "0 1 3"
	tSudokuTreasure_Treasure[10360][5]["RewardEffect"]={}
	tSudokuTreasure_Treasure[10360][5]["RewardEffect"]["Effect"]="zf2-e128"
	tSudokuTreasure_Treasure[10360][5]["NewLog"]="%d,0,0,0,12001131,2,3310369[3321108]%s,1[1]%s"
	tSudokuTreasure_Treasure[10360][6] = {}
	tSudokuTreasure_Treasure[10360][6]["Price"] = 100
	tSudokuTreasure_Treasure[10360][6]["RewardItem"]={}
	tSudokuTreasure_Treasure[10360][6]["RewardItem"][1] = {}
	tSudokuTreasure_Treasure[10360][6]["RewardItem"][1]["Id"] = 3311759 --神纹源晶
	tSudokuTreasure_Treasure[10360][6]["RewardItem"][1]["Attr"] = "0 1 3"
	tSudokuTreasure_Treasure[10360][6]["RewardEffect"]={}
	tSudokuTreasure_Treasure[10360][6]["RewardEffect"]["Effect"]="zf2-e128"
	tSudokuTreasure_Treasure[10360][6]["NewLog"]="%d,0,0,0,12001131,2,3310369[3311759]%s,1[1]%s"
	tSudokuTreasure_Treasure[10360][7] = {}
	tSudokuTreasure_Treasure[10360][7]["Price"] = 500
	tSudokuTreasure_Treasure[10360][7]["RewardItem"]={}
	tSudokuTreasure_Treasure[10360][7]["RewardItem"][1] = {}
	tSudokuTreasure_Treasure[10360][7]["RewardItem"][1]["Id"] = 3303373 --魔武通玄丹
	tSudokuTreasure_Treasure[10360][7]["RewardItem"][1]["Attr"] = "0 5 3"
	tSudokuTreasure_Treasure[10360][7]["RewardEffect"]={}
	tSudokuTreasure_Treasure[10360][7]["RewardEffect"]["Effect"]="zf2-e128"
	tSudokuTreasure_Treasure[10360][7]["NewLog"]="%d,0,0,0,12001131,2,3310369[3303373]%s,1[5]%s"
	
	-- 盗圣至宝箱普通服
	tSudokuTreasure_Treasure[21568] = {}
	tSudokuTreasure_Treasure[21568][1] = {}
	tSudokuTreasure_Treasure[21568][1]["EventType"] = 181
	tSudokuTreasure_Treasure[21568][1]["DataType"] = 39
	tSudokuTreasure_Treasure[21568][1]["RewardData"] = 99999999
	tSudokuTreasure_Treasure[21568][1]["RewardDelay"] = 1
	tSudokuTreasure_Treasure[21568][1]["RewardTimeType"] = 4
	tSudokuTreasure_Treasure[21568][1]["Money"] = 19000000
	tSudokuTreasure_Treasure[21568][1]["Space"] = 3
	tSudokuTreasure_Treasure[21568][1]["RewardItem"]={}
	tSudokuTreasure_Treasure[21568][1]["RewardItem"][1] = {}
	tSudokuTreasure_Treasure[21568][1]["RewardItem"][1]["Id"] = 723694 --固化石
	tSudokuTreasure_Treasure[21568][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tSudokuTreasure_Treasure[21568][1]["RewardItem"][2] = {}
	tSudokuTreasure_Treasure[21568][1]["RewardItem"][2]["Id"] = 3310369 --宝库传送卷
	tSudokuTreasure_Treasure[21568][1]["RewardItem"][2]["Attr"] = "0 1"
	tSudokuTreasure_Treasure[21568][1]["NewLog"]="0,0,1,19000000,12001131,2,723694[3310369]%s,1[1]%s"
	tSudokuTreasure_Treasure[21568][1]["RewardEffect"]={}
	tSudokuTreasure_Treasure[21568][1]["RewardEffect"]["Effect"]="zf2-e128"
	
	-- 盗圣至宝箱激情服
	tSudokuTreasure_Treasure[21568][2] = {}
	tSudokuTreasure_Treasure[21568][2]["EventType"] = 181
	tSudokuTreasure_Treasure[21568][2]["DataType"] = 39
	tSudokuTreasure_Treasure[21568][2]["RewardData"] = 99999999
	tSudokuTreasure_Treasure[21568][2]["RewardDelay"] = 1
	tSudokuTreasure_Treasure[21568][2]["RewardTimeType"] = 4
	tSudokuTreasure_Treasure[21568][2]["Money"] = 19000000
	tSudokuTreasure_Treasure[21568][2]["Space"] = 3
	tSudokuTreasure_Treasure[21568][2]["RewardItem"]={}
	tSudokuTreasure_Treasure[21568][2]["RewardItem"][1] = {}
	tSudokuTreasure_Treasure[21568][2]["RewardItem"][1]["Id"] = 3306510 --随机黄色神纹赠
	tSudokuTreasure_Treasure[21568][2]["RewardItem"][1]["Attr"] = "0 1 3"
	tSudokuTreasure_Treasure[21568][2]["RewardItem"][2] = {}
	tSudokuTreasure_Treasure[21568][2]["RewardItem"][2]["Id"] = 3310369 --宝库传送卷
	tSudokuTreasure_Treasure[21568][2]["RewardItem"][2]["Attr"] = "0 1"
	tSudokuTreasure_Treasure[21568][2]["NewLog"]="0,0,1,19000000,12001131,2,3306510[3310369]%s,1[1]%s"
	tSudokuTreasure_Treasure[21568][2]["RewardEffect"]={}
	tSudokuTreasure_Treasure[21568][2]["RewardEffect"]["Effect"]="zf2-e128"
	
--宝库概率配置
local tSudokuTreasure_Random = {}
	tSudokuTreasure_Random[10357] = {}
	-- 0折星陨石概率
	tSudokuTreasure_Random[10357][1] ={}
	tSudokuTreasure_Random[10357][1]["ItemChanceSum"] = 10000
	-- 微光星陨石        
	tSudokuTreasure_Random[10357][1][1] = {}
	tSudokuTreasure_Random[10357][1][1]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10357][1][1]["ItemChance"] = 5500
	tSudokuTreasure_Random[10357][1][1]["Index"] = 1
	-- 明亮星陨石        
	tSudokuTreasure_Random[10357][1][2] = {}
	tSudokuTreasure_Random[10357][1][2]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10357][1][2]["ItemChance"] = 4000
	tSudokuTreasure_Random[10357][1][2]["Index"] = 2
	-- 晶莹星陨石       
	tSudokuTreasure_Random[10357][1][3] = {}
	tSudokuTreasure_Random[10357][1][3]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10357][1][3]["ItemChance"] = 500
	tSudokuTreasure_Random[10357][1][3]["Index"] = 3
	
	-- 1,2,2.5,3折星陨石概率
	tSudokuTreasure_Random[10357][2] ={}
	tSudokuTreasure_Random[10357][2]["ItemChanceSum"] = 10000
	-- 明亮星陨石        
	tSudokuTreasure_Random[10357][2][1] = {}
	tSudokuTreasure_Random[10357][2][1]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10357][2][1]["ItemChance"] = 6000
	tSudokuTreasure_Random[10357][2][1]["Index"] = 2
	-- 晶莹星陨石       
	tSudokuTreasure_Random[10357][2][2] = {}
	tSudokuTreasure_Random[10357][2][2]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10357][2][2]["ItemChance"] = 4000
	tSudokuTreasure_Random[10357][2][2]["Index"] = 3
	
	-- -- 5折星陨石概率
	-- tSudokuTreasure_Random[10357][3] ={}
	-- tSudokuTreasure_Random[10357][3]["ItemChanceSum"] = 10000
	-- -- 微光星陨石        
	-- tSudokuTreasure_Random[10357][3][1] = {}
	-- tSudokuTreasure_Random[10357][3][1]["RandomItemChanceType"] = 2
	-- tSudokuTreasure_Random[10357][3][1]["ItemChance"] = 5000
	-- tSudokuTreasure_Random[10357][3][1]["Index"] = 1
	-- -- 明亮星陨石        
	-- tSudokuTreasure_Random[10357][3][2] = {}
	-- tSudokuTreasure_Random[10357][3][2]["RandomItemChanceType"] = 2
	-- tSudokuTreasure_Random[10357][3][2]["ItemChance"] = 3000
	-- tSudokuTreasure_Random[10357][3][2]["Index"] = 2
	-- -- 晶莹星陨石       
	-- tSudokuTreasure_Random[10357][3][3] = {}
	-- tSudokuTreasure_Random[10357][3][3]["RandomItemChanceType"] = 2
	-- tSudokuTreasure_Random[10357][3][3]["ItemChance"] = 2000
	-- tSudokuTreasure_Random[10357][3][3]["Index"] = 3
	
	tSudokuTreasure_Random[10358] = {}
	-- 0折气力值概率
	tSudokuTreasure_Random[10358][1] ={}
	tSudokuTreasure_Random[10358][1]["ItemChanceSum"] = 10000
	-- 100气力值        
	tSudokuTreasure_Random[10358][1][1] = {}
	tSudokuTreasure_Random[10358][1][1]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10358][1][1]["ItemChance"] = 4500
	tSudokuTreasure_Random[10358][1][1]["Index"] = 1
	-- 500气力值        
	tSudokuTreasure_Random[10358][1][2] = {}
	tSudokuTreasure_Random[10358][1][2]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10358][1][2]["ItemChance"] = 3000
	tSudokuTreasure_Random[10358][1][2]["Index"] = 2
	-- 1000气力值       
	tSudokuTreasure_Random[10358][1][3] = {}
	tSudokuTreasure_Random[10358][1][3]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10358][1][3]["ItemChance"] = 2000
	tSudokuTreasure_Random[10358][1][3]["Index"] = 3
	-- 10000气力值       
	tSudokuTreasure_Random[10358][1][4] = {}
	tSudokuTreasure_Random[10358][1][4]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10358][1][4]["ItemChance"] = 500
	tSudokuTreasure_Random[10358][1][4]["Index"] = 4
	
	-- 1,2折气力值概率
	tSudokuTreasure_Random[10358][2] ={}
	tSudokuTreasure_Random[10358][2]["ItemChanceSum"] = 10000
	-- 100气力值        
	tSudokuTreasure_Random[10358][2][1] = {}
	tSudokuTreasure_Random[10358][2][1]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10358][2][1]["ItemChance"] = 4000
	tSudokuTreasure_Random[10358][2][1]["Index"] = 1
	-- 500气力值        
	tSudokuTreasure_Random[10358][2][2] = {}
	tSudokuTreasure_Random[10358][2][2]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10358][2][2]["ItemChance"] = 3000
	tSudokuTreasure_Random[10358][2][2]["Index"] = 2
	-- 1000气力值       
	tSudokuTreasure_Random[10358][2][3] = {}
	tSudokuTreasure_Random[10358][2][3]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10358][2][3]["ItemChance"] = 2000
	tSudokuTreasure_Random[10358][2][3]["Index"] = 3
	-- 10000气力值       
	tSudokuTreasure_Random[10358][2][4] = {}
	tSudokuTreasure_Random[10358][2][4]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10358][2][4]["ItemChance"] = 1000
	tSudokuTreasure_Random[10358][2][4]["Index"] = 4
	
	-- 2.5,3折气力值概率
	tSudokuTreasure_Random[10358][3] ={}
	tSudokuTreasure_Random[10358][3]["ItemChanceSum"] = 10000
	-- 100气力值        
	tSudokuTreasure_Random[10358][3][1] = {}
	tSudokuTreasure_Random[10358][3][1]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10358][3][1]["ItemChance"] = 2500
	tSudokuTreasure_Random[10358][3][1]["Index"] = 1
	-- 500气力值        
	tSudokuTreasure_Random[10358][3][2] = {}
	tSudokuTreasure_Random[10358][3][2]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10358][3][2]["ItemChance"] = 2500
	tSudokuTreasure_Random[10358][3][2]["Index"] = 2
	-- 1000气力值       
	tSudokuTreasure_Random[10358][3][3] = {}
	tSudokuTreasure_Random[10358][3][3]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10358][3][3]["ItemChance"] = 2500
	tSudokuTreasure_Random[10358][3][3]["Index"] = 3
	-- 10000气力值       
	tSudokuTreasure_Random[10358][3][4] = {}
	tSudokuTreasure_Random[10358][3][4]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10358][3][4]["ItemChance"] = 2500
	tSudokuTreasure_Random[10358][3][4]["Index"] = 4

	
	tSudokuTreasure_Random[10359] = {}
	-- 0折赤炼石概率
	tSudokuTreasure_Random[10359][1] ={}
	tSudokuTreasure_Random[10359][1]["ItemChanceSum"] = 10000
	-- 赤炼石+1        
	tSudokuTreasure_Random[10359][1][1] = {}
	tSudokuTreasure_Random[10359][1][1]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10359][1][1]["ItemChance"] = 5500
	tSudokuTreasure_Random[10359][1][1]["Index"] = 1
	-- 赤炼石+2        
	tSudokuTreasure_Random[10359][1][2] = {}
	tSudokuTreasure_Random[10359][1][2]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10359][1][2]["ItemChance"] = 4000
	tSudokuTreasure_Random[10359][1][2]["Index"] = 2
	-- 赤炼石+3       
	tSudokuTreasure_Random[10359][1][3] = {}
	tSudokuTreasure_Random[10359][1][3]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10359][1][3]["ItemChance"] = 500
	tSudokuTreasure_Random[10359][1][3]["Index"] = 3
	-- 赤炼石+4       
	tSudokuTreasure_Random[10359][1][4] = {}
	tSudokuTreasure_Random[10359][1][4]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10359][1][4]["ItemChance"] = 0
	tSudokuTreasure_Random[10359][1][4]["Index"] = 4
	-- 赤炼石+5
	tSudokuTreasure_Random[10359][1][5] = {}
	tSudokuTreasure_Random[10359][1][5]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10359][1][5]["ItemChance"] = 0
	tSudokuTreasure_Random[10359][1][5]["Index"] = 5
	
	-- 3,2.5折赤炼石概率
	tSudokuTreasure_Random[10359][2] ={}
	tSudokuTreasure_Random[10359][2]["ItemChanceSum"] = 10000
	-- 赤炼石+1        
	tSudokuTreasure_Random[10359][2][1] = {}
	tSudokuTreasure_Random[10359][2][1]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10359][2][1]["ItemChance"] = 2000
	tSudokuTreasure_Random[10359][2][1]["Index"] = 1
	-- 赤炼石+2        
	tSudokuTreasure_Random[10359][2][2] = {}
	tSudokuTreasure_Random[10359][2][2]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10359][2][2]["ItemChance"] = 2000
	tSudokuTreasure_Random[10359][2][2]["Index"] = 2
	-- 赤炼石+3       
	tSudokuTreasure_Random[10359][2][3] = {}
	tSudokuTreasure_Random[10359][2][3]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10359][2][3]["ItemChance"] = 2000
	tSudokuTreasure_Random[10359][2][3]["Index"] = 3
	-- 赤炼石+4       
	tSudokuTreasure_Random[10359][2][4] = {}
	tSudokuTreasure_Random[10359][2][4]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10359][2][4]["ItemChance"] = 2000
	tSudokuTreasure_Random[10359][2][4]["Index"] = 4
	-- 赤炼石+5
	tSudokuTreasure_Random[10359][2][5] = {}
	tSudokuTreasure_Random[10359][2][5]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10359][2][5]["ItemChance"] = 2000
	tSudokuTreasure_Random[10359][2][5]["Index"] = 5
	
	-- 2,1折赤炼石概率
	tSudokuTreasure_Random[10359][3] ={}
	tSudokuTreasure_Random[10359][3]["ItemChanceSum"] = 10000
	-- 赤炼石+1        
	tSudokuTreasure_Random[10359][3][1] = {}
	tSudokuTreasure_Random[10359][3][1]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10359][3][1]["ItemChance"] = 3000
	tSudokuTreasure_Random[10359][3][1]["Index"] = 1
	-- 赤炼石+2        
	tSudokuTreasure_Random[10359][3][2] = {}
	tSudokuTreasure_Random[10359][3][2]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10359][3][2]["ItemChance"] = 2500
	tSudokuTreasure_Random[10359][3][2]["Index"] = 2
	-- 赤炼石+3       
	tSudokuTreasure_Random[10359][3][3] = {}
	tSudokuTreasure_Random[10359][3][3]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10359][3][3]["ItemChance"] = 2000
	tSudokuTreasure_Random[10359][3][3]["Index"] = 3
	-- 赤炼石+4       
	tSudokuTreasure_Random[10359][3][4] = {}
	tSudokuTreasure_Random[10359][3][4]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10359][3][4]["ItemChance"] = 1500
	tSudokuTreasure_Random[10359][3][4]["Index"] = 4
	-- 赤炼石+5
	tSudokuTreasure_Random[10359][3][5] = {}
	tSudokuTreasure_Random[10359][3][5]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10359][3][5]["ItemChance"] = 1000
	tSudokuTreasure_Random[10359][3][5]["Index"] = 5
	
	tSudokuTreasure_Random[10360] = {}
	-- 0折珍品概率
	tSudokuTreasure_Random[10360][1] ={}
	tSudokuTreasure_Random[10360][1]["ItemChanceSum"] = 10000
	-- 黄色神纹精粹        
	tSudokuTreasure_Random[10360][1][1] = {}
	tSudokuTreasure_Random[10360][1][1]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10360][1][1]["ItemChance"] = 2000
	tSudokuTreasure_Random[10360][1][1]["Index"] = 1
	-- 蓝色神纹精粹        
	tSudokuTreasure_Random[10360][1][2] = {}
	tSudokuTreasure_Random[10360][1][2]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10360][1][2]["ItemChance"] = 1000
	tSudokuTreasure_Random[10360][1][2]["Index"] = 2
	-- 神兵灵魄      
	tSudokuTreasure_Random[10360][1][3] = {}
	tSudokuTreasure_Random[10360][1][3]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10360][1][3]["ItemChance"] = 2700
	tSudokuTreasure_Random[10360][1][3]["Index"] = 3
	-- 炼魂石       
	tSudokuTreasure_Random[10360][1][4] = {}
	tSudokuTreasure_Random[10360][1][4]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10360][1][4]["ItemChance"] = 2700
	tSudokuTreasure_Random[10360][1][4]["Index"] = 4
	-- 鸿蒙炼魂玉
	tSudokuTreasure_Random[10360][1][5] = {}
	tSudokuTreasure_Random[10360][1][5]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10360][1][5]["ItemChance"] = 500
	tSudokuTreasure_Random[10360][1][5]["Index"] = 5
	-- 神纹源晶   
	tSudokuTreasure_Random[10360][1][6] = {}
	tSudokuTreasure_Random[10360][1][6]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10360][1][6]["ItemChance"] = 1000
	tSudokuTreasure_Random[10360][1][6]["Index"] = 6
	-- 魔武通玄丹
	tSudokuTreasure_Random[10360][1][7] = {}
	tSudokuTreasure_Random[10360][1][7]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10360][1][7]["ItemChance"] = 100
	tSudokuTreasure_Random[10360][1][7]["Index"] = 7
	
	-- 3,2.5折珍品概率
	tSudokuTreasure_Random[10360][2] ={}
	tSudokuTreasure_Random[10360][2]["ItemChanceSum"] = 10000
	-- 黄色神纹精粹        
	tSudokuTreasure_Random[10360][2][1] = {}
	tSudokuTreasure_Random[10360][2][1]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10360][2][1]["ItemChance"] = 2000
	tSudokuTreasure_Random[10360][2][1]["Index"] = 1
	-- 蓝色神纹精粹        
	tSudokuTreasure_Random[10360][2][2] = {}
	tSudokuTreasure_Random[10360][2][2]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10360][2][2]["ItemChance"] = 1500
	tSudokuTreasure_Random[10360][2][2]["Index"] = 2
	-- 神兵灵魄      
	tSudokuTreasure_Random[10360][2][3] = {}
	tSudokuTreasure_Random[10360][2][3]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10360][2][3]["ItemChance"] = 1000
	tSudokuTreasure_Random[10360][2][3]["Index"] = 3
	-- 炼魂石       
	tSudokuTreasure_Random[10360][2][4] = {}
	tSudokuTreasure_Random[10360][2][4]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10360][2][4]["ItemChance"] = 1000
	tSudokuTreasure_Random[10360][2][4]["Index"] = 4
	-- 鸿蒙炼魂玉
	tSudokuTreasure_Random[10360][2][5] = {}
	tSudokuTreasure_Random[10360][2][5]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10360][2][5]["ItemChance"] = 1500
	tSudokuTreasure_Random[10360][2][5]["Index"] = 5
	-- 神纹源晶   
	tSudokuTreasure_Random[10360][2][6] = {}
	tSudokuTreasure_Random[10360][2][6]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10360][2][6]["ItemChance"] = 2000
	tSudokuTreasure_Random[10360][2][6]["Index"] = 6
	-- 魔武通玄丹
	tSudokuTreasure_Random[10360][2][7] = {}
	tSudokuTreasure_Random[10360][2][7]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10360][2][7]["ItemChance"] = 1000
	tSudokuTreasure_Random[10360][2][7]["Index"] = 7
	
	-- 2折珍品概率
	tSudokuTreasure_Random[10360][3] ={}
	tSudokuTreasure_Random[10360][3]["ItemChanceSum"] = 10000
	-- 黄色神纹精粹        
	tSudokuTreasure_Random[10360][3][1] = {}
	tSudokuTreasure_Random[10360][3][1]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10360][3][1]["ItemChance"] = 1000
	tSudokuTreasure_Random[10360][3][1]["Index"] = 1
	-- 蓝色神纹精粹        
	tSudokuTreasure_Random[10360][3][2] = {}
	tSudokuTreasure_Random[10360][3][2]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10360][3][2]["ItemChance"] = 1000
	tSudokuTreasure_Random[10360][3][2]["Index"] = 2
	-- 神兵灵魄      
	tSudokuTreasure_Random[10360][3][3] = {}
	tSudokuTreasure_Random[10360][3][3]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10360][3][3]["ItemChance"] = 3000
	tSudokuTreasure_Random[10360][3][3]["Index"] = 3
	-- 炼魂石       
	tSudokuTreasure_Random[10360][3][4] = {}
	tSudokuTreasure_Random[10360][3][4]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10360][3][4]["ItemChance"] = 3000
	tSudokuTreasure_Random[10360][3][4]["Index"] = 4
	-- 鸿蒙炼魂玉
	tSudokuTreasure_Random[10360][3][5] = {}
	tSudokuTreasure_Random[10360][3][5]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10360][3][5]["ItemChance"] = 500
	tSudokuTreasure_Random[10360][3][5]["Index"] = 5
	-- 神纹源晶   
	tSudokuTreasure_Random[10360][3][6] = {}
	tSudokuTreasure_Random[10360][3][6]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10360][3][6]["ItemChance"] = 1000
	tSudokuTreasure_Random[10360][3][6]["Index"] = 6
	-- 魔武通玄丹
	tSudokuTreasure_Random[10360][3][7] = {}
	tSudokuTreasure_Random[10360][3][7]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10360][3][7]["ItemChance"] = 500
	tSudokuTreasure_Random[10360][3][7]["Index"] = 7
	
	-- 1折珍品概率
	tSudokuTreasure_Random[10360][4] ={}
	tSudokuTreasure_Random[10360][4]["ItemChanceSum"] = 10000
	-- 黄色神纹精粹        
	tSudokuTreasure_Random[10360][4][1] = {}
	tSudokuTreasure_Random[10360][4][1]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10360][4][1]["ItemChance"] = 1000
	tSudokuTreasure_Random[10360][4][1]["Index"] = 1
	-- 蓝色神纹精粹        
	tSudokuTreasure_Random[10360][4][2] = {}
	tSudokuTreasure_Random[10360][4][2]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10360][4][2]["ItemChance"] = 1000
	tSudokuTreasure_Random[10360][4][2]["Index"] = 2
	-- 神兵灵魄      
	tSudokuTreasure_Random[10360][4][3] = {}
	tSudokuTreasure_Random[10360][4][3]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10360][4][3]["ItemChance"] = 3000
	tSudokuTreasure_Random[10360][4][3]["Index"] = 3
	-- 炼魂石       
	tSudokuTreasure_Random[10360][4][4] = {}
	tSudokuTreasure_Random[10360][4][4]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10360][4][4]["ItemChance"] = 3000
	tSudokuTreasure_Random[10360][4][4]["Index"] = 4
	-- 鸿蒙炼魂玉
	tSudokuTreasure_Random[10360][4][5] = {}
	tSudokuTreasure_Random[10360][4][5]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10360][4][5]["ItemChance"] = 500
	tSudokuTreasure_Random[10360][4][5]["Index"] = 5
	-- 神纹源晶   
	tSudokuTreasure_Random[10360][4][6] = {}
	tSudokuTreasure_Random[10360][4][6]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10360][4][6]["ItemChance"] = 1000
	tSudokuTreasure_Random[10360][4][6]["Index"] = 6
	-- 魔武通玄丹
	tSudokuTreasure_Random[10360][4][7] = {}
	tSudokuTreasure_Random[10360][4][7]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[10360][4][7]["ItemChance"] = 500
	tSudokuTreasure_Random[10360][4][7]["Index"] = 7
	
	-- 燕家谢礼包
	tSudokuTreasure_Random[3310374] = {}
	tSudokuTreasure_Random[3310374]["ItemChanceSum"] = 10000
	tSudokuTreasure_Random[3310374][1] = {}
	tSudokuTreasure_Random[3310374][1]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[3310374][1]["ItemChance"] = 2500
	tSudokuTreasure_Random[3310374][1]["RewardItem"]={}
	tSudokuTreasure_Random[3310374][1]["RewardItem"][1] = {}
	tSudokuTreasure_Random[3310374][1]["RewardItem"][1]["Id"] = 3009001 --明亮星陨石
	tSudokuTreasure_Random[3310374][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tSudokuTreasure_Random[3310374][1]["RewardItem"][1]["RewardEffect"] = {}
	tSudokuTreasure_Random[3310374][1]["RewardItem"][1]["RewardEffect"]["Effect"] = "angelwing"
	tSudokuTreasure_Random[3310374][1]["Log"]="0,0,3310374,1,12001131,2,3009001,1"
	tSudokuTreasure_Random[3310374][2] = {}
	tSudokuTreasure_Random[3310374][2]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[3310374][2]["ItemChance"] = 5000
	tSudokuTreasure_Random[3310374][2]["RewardStrengthValue"] = {}
	tSudokuTreasure_Random[3310374][2]["RewardStrengthValue"]["Value"] = 100 --100气力值
	tSudokuTreasure_Random[3310374][2]["RewardEffect"]={}
	tSudokuTreasure_Random[3310374][2]["RewardEffect"]["Effect"]="angelwing"
	tSudokuTreasure_Random[3310374][2]["Log"]="0,0,3310374,1,12001131,2,12,100"
	tSudokuTreasure_Random[3310374][3] = {}
	tSudokuTreasure_Random[3310374][3]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[3310374][3]["ItemChance"] = 2500
	tSudokuTreasure_Random[3310374][3]["RewardItem"]={}
	tSudokuTreasure_Random[3310374][3]["RewardItem"][1] = {}
	tSudokuTreasure_Random[3310374][3]["RewardItem"][1]["Id"] = 730002 --赤炼石+2
	tSudokuTreasure_Random[3310374][3]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tSudokuTreasure_Random[3310374][3]["RewardEffect"]={}
	tSudokuTreasure_Random[3310374][3]["RewardEffect"]["Effect"]="angelwing"
	tSudokuTreasure_Random[3310374][3]["Log"]="0,0,3310374,1,12001131,2,730002,1"
	
	-- 燕家至宝箱
	tSudokuTreasure_Random[3310375] = {}
	tSudokuTreasure_Random[3310375]["ItemChanceSum"] = 10000
	tSudokuTreasure_Random[3310375][1] = {}
	tSudokuTreasure_Random[3310375][1]["RandomItemChanceType"] = 1
	tSudokuTreasure_Random[3310375][1]["RewardItem"]={}
	tSudokuTreasure_Random[3310375][1]["RewardItem"][1] = {}
	tSudokuTreasure_Random[3310375][1]["RewardItem"][1]["Id"] = 3309995 --1000气力值极运包
	tSudokuTreasure_Random[3310375][1]["RewardItem"][1]["Attr"] = "0 1"
	tSudokuTreasure_Random[3310375][1]["RewardItem"][1]["RewardEffect"] = {}
	tSudokuTreasure_Random[3310375][1]["RewardItem"][1]["RewardEffect"]["Effect"] = "angelwing"
	tSudokuTreasure_Random[3310375][2] = {}
	tSudokuTreasure_Random[3310375][2]["RandomItemChanceType"] = 1
	tSudokuTreasure_Random[3310375][2]["RewardItem"]={}
	tSudokuTreasure_Random[3310375][2]["RewardItem"][1] = {}
	tSudokuTreasure_Random[3310375][2]["RewardItem"][1]["Id"] = 720880 --3000骑宠积分礼包
	tSudokuTreasure_Random[3310375][2]["RewardItem"][1]["Attr"] = "0 1 3"
	tSudokuTreasure_Random[3310375][3] = {}
	tSudokuTreasure_Random[3310375][3]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[3310375][3]["ItemChance"] = 1500
	tSudokuTreasure_Random[3310375][3]["RewardItem"]={}
	tSudokuTreasure_Random[3310375][3]["RewardItem"][1] = {}
	tSudokuTreasure_Random[3310375][3]["RewardItem"][1]["Id"] = 4060001 --万能神纹精粹*3
	tSudokuTreasure_Random[3310375][3]["RewardItem"][1]["Attr"] = "0 3"
	tSudokuTreasure_Random[3310375][3]["Log"]="0,0,3310375,1,12001131,2,4060001[3309995][720880],3[1][1]"
	tSudokuTreasure_Random[3310375][4] = {}
	tSudokuTreasure_Random[3310375][4]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[3310375][4]["ItemChance"] = 1000
	tSudokuTreasure_Random[3310375][4]["RewardItem"]={}
	tSudokuTreasure_Random[3310375][4]["RewardItem"][1] = {}
	tSudokuTreasure_Random[3310375][4]["RewardItem"][1]["Id"] = 730003 --赤炼石+3
	tSudokuTreasure_Random[3310375][4]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tSudokuTreasure_Random[3310375][4]["Log"]="0,0,3310375,1,12001131,2,730003[3309995][720880],1[1][1]"
	tSudokuTreasure_Random[3310375][5] = {}
	tSudokuTreasure_Random[3310375][5]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[3310375][5]["ItemChance"] = 2500
	tSudokuTreasure_Random[3310375][5]["RewardItem"]={}
	tSudokuTreasure_Random[3310375][5]["RewardItem"][1] = {}
	tSudokuTreasure_Random[3310375][5]["RewardItem"][1]["Id"] = 730002 --赤炼石+2
	tSudokuTreasure_Random[3310375][5]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tSudokuTreasure_Random[3310375][5]["Log"]="0,0,3310375,1,12001131,2,730002[3309995][720880],1[1][1]"
	tSudokuTreasure_Random[3310375][6] = {}
	tSudokuTreasure_Random[3310375][6]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[3310375][6]["ItemChance"] = 2000
	tSudokuTreasure_Random[3310375][6]["RewardItem"]={}
	tSudokuTreasure_Random[3310375][6]["RewardItem"][1] = {}
	tSudokuTreasure_Random[3310375][6]["RewardItem"][1]["Id"] = 3303063 --200气力值精装包
	tSudokuTreasure_Random[3310375][6]["RewardItem"][1]["Attr"] = "0 1"
	tSudokuTreasure_Random[3310375][6]["Log"]="0,0,3310375,1,12001131,2,3303063[3309995][720880],1[1][1]"
	tSudokuTreasure_Random[3310375][7] = {}
	tSudokuTreasure_Random[3310375][7]["RandomItemChanceType"] = 2
	tSudokuTreasure_Random[3310375][7]["ItemChance"] = 3000
	tSudokuTreasure_Random[3310375][7]["RewardItem"]={}
	tSudokuTreasure_Random[3310375][7]["RewardItem"][1] = {}
	tSudokuTreasure_Random[3310375][7]["RewardItem"][1]["Id"] = 3009001 --明亮星陨石
	tSudokuTreasure_Random[3310375][7]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tSudokuTreasure_Random[3310375][7]["Log"]="0,0,3310375,1,12001131,2,3009001[3309995][720880],1[1][1]"
	
local tSudokuTreasure_Reward = {}
	tSudokuTreasure_Reward[21564] = {}
	tSudokuTreasure_Reward[21564][3310368] = {}
	tSudokuTreasure_Reward[21564][3310368]["RewardItem"] = {}
	tSudokuTreasure_Reward[21564][3310368]["RewardItem"][1] = {}
	tSudokuTreasure_Reward[21564][3310368]["RewardItem"][1]["Id"] = 3310368
	tSudokuTreasure_Reward[21564][3310368]["RewardItem"][1]["Attr"] = "0 1"
	tSudokuTreasure_Reward[21564][3310368]["LogId"] = 12001131
	tSudokuTreasure_Reward[21564][3310368]["Talk"] = tSudokuTreasure_Text[21564]["ReceiveBack"]
	tSudokuTreasure_Reward[21564][3310369] = {}
	tSudokuTreasure_Reward[21564][3310369]["EventType"] = 181
	tSudokuTreasure_Reward[21564][3310369]["DataType"] = 40
	tSudokuTreasure_Reward[21564][3310369]["RewardTotalData"] = 1
	tSudokuTreasure_Reward[21564][3310369]["RewardItem"] = {}
	tSudokuTreasure_Reward[21564][3310369]["RewardItem"][1] = {}
	tSudokuTreasure_Reward[21564][3310369]["RewardItem"][1]["Id"] = 3310369
	tSudokuTreasure_Reward[21564][3310369]["RewardItem"][1]["Attr"] = "0 2"
	tSudokuTreasure_Reward[21564][3310369]["LogId"] = 12001131
	
	tSudokuTreasure_Reward["Brother"] = {}
	tSudokuTreasure_Reward["Brother"]["RewardItem"]={}
	tSudokuTreasure_Reward["Brother"]["RewardItem"][1] = {}
	tSudokuTreasure_Reward["Brother"]["RewardItem"][1]["Id"] = 3310369 --宝库传送劵
	tSudokuTreasure_Reward["Brother"]["RewardItem"][1]["Attr"] = "0 1"
	tSudokuTreasure_Reward["Brother"]["Log"] = "0,0,0,0,12001131,2,3310374[3310369],1[1]"
	tSudokuTreasure_Reward["Brother"]["RewardEffect"]={}
	tSudokuTreasure_Reward["Brother"]["RewardEffect"]["Effect"]="zf2-e128"
	
	tSudokuTreasure_Reward["EightTask"] = {}
	tSudokuTreasure_Reward["EightTask"]["RewardItem"]={}
	tSudokuTreasure_Reward["EightTask"]["RewardItem"][1] = {}
	tSudokuTreasure_Reward["EightTask"]["RewardItem"][1]["Id"] = 3310375 --至宝
	tSudokuTreasure_Reward["EightTask"]["RewardItem"][1]["Attr"] = "0 1"
	tSudokuTreasure_Reward["EightTask"]["LogId"] = 12001131
	tSudokuTreasure_Reward["EightTask"]["RewardEffect"]={}
	tSudokuTreasure_Reward["EightTask"]["RewardEffect"]["Effect"]="zf2-e128"
	
	-- 气力值价格不按折扣算
local tSudokuTreasure_Strength = {}
-- 免费的只给100气力值
	tSudokuTreasure_Strength["MinFree"] = 100
	tSudokuTreasure_Strength["MinFreeLog"] = "%d,0,0,0,12001131,2,3310369[12]%s,1[100]%s"
	tSudokuTreasure_Strength[10358] = {}
	tSudokuTreasure_Strength[10358][1] = {}
	tSudokuTreasure_Strength[10358][1][1] = 10
	tSudokuTreasure_Strength[10358][1][2] = 12
	tSudokuTreasure_Strength[10358][1][2.5] = 13
	tSudokuTreasure_Strength[10358][1][3] = 14
	tSudokuTreasure_Strength[10358][2] = {}
	tSudokuTreasure_Strength[10358][2][1] = 25
	tSudokuTreasure_Strength[10358][2][2] = 28
	tSudokuTreasure_Strength[10358][2][2.5] = 32
	tSudokuTreasure_Strength[10358][2][3] = 35
	tSudokuTreasure_Strength[10358][3] = {}
	tSudokuTreasure_Strength[10358][3][1] = 48
	tSudokuTreasure_Strength[10358][3][2] = 56
	tSudokuTreasure_Strength[10358][3][2.5] = 64
	tSudokuTreasure_Strength[10358][3][30] = 70
	tSudokuTreasure_Strength[10358][4] = {}
	tSudokuTreasure_Strength[10358][4][1] = 480
	tSudokuTreasure_Strength[10358][4][2] = 560
	tSudokuTreasure_Strength[10358][4][2.5] = 640
	tSudokuTreasure_Strength[10358][4][3] = 700
	tSudokuTreasure_Strength[10360] = {}
	tSudokuTreasure_Strength[10360][1] = {}
	tSudokuTreasure_Strength[10360][1][1] = 60
	tSudokuTreasure_Strength[10360][1][2] = 70
	tSudokuTreasure_Strength[10360][1][2.5] = 80
	tSudokuTreasure_Strength[10360][1][3] = 90
	tSudokuTreasure_Strength[10360][2] = {}
	tSudokuTreasure_Strength[10360][2][1] = 90
	tSudokuTreasure_Strength[10360][2][2] = 105
	tSudokuTreasure_Strength[10360][2][2.5] = 120
	tSudokuTreasure_Strength[10360][2][3] = 135
	tSudokuTreasure_Strength[10360][3] = {}
	tSudokuTreasure_Strength[10360][3][1] = 8
	tSudokuTreasure_Strength[10360][3][2] = 8
	tSudokuTreasure_Strength[10360][3][2.5] = 9
	tSudokuTreasure_Strength[10360][3][3] = 9
	tSudokuTreasure_Strength[10360][4] = {}
	tSudokuTreasure_Strength[10360][4][1] = 7
	tSudokuTreasure_Strength[10360][4][2] = 7
	tSudokuTreasure_Strength[10360][4][2.5] = 8
	tSudokuTreasure_Strength[10360][4][3] = 8
	tSudokuTreasure_Strength[10360][5] = {}
	tSudokuTreasure_Strength[10360][5][1] = 230
	tSudokuTreasure_Strength[10360][5][2] = 238
	tSudokuTreasure_Strength[10360][5][2.5] = 248
	tSudokuTreasure_Strength[10360][5][3] = 256
	tSudokuTreasure_Strength[10360][6] = {}
	tSudokuTreasure_Strength[10360][6][1] = 70
	tSudokuTreasure_Strength[10360][6][2] = 80
	tSudokuTreasure_Strength[10360][6][2.5] = 90
	tSudokuTreasure_Strength[10360][6][3] = 95
	tSudokuTreasure_Strength[10360][7] = {}
	tSudokuTreasure_Strength[10360][7][1] = 248
	tSudokuTreasure_Strength[10360][7][2] = 350
	tSudokuTreasure_Strength[10360][7][2.5] = 400
	tSudokuTreasure_Strength[10360][7][3] = 450
	
-- local tSudokuTreasure_Task = {}
	-- -- 直接完成
	-- tSudokuTreasure_Task["EMoney"] = 5
	-- tSudokuTreasure_Task["Space"] = 3
	-- -- 提交任务所需
	-- tSudokuTreasure_Task[21532] = {}
	-- tSudokuTreasure_Task[21532]["Need"] = 3002030 --强效护心丹
	-- tSudokuTreasure_Task[21532]["Num"] = 2
	-- tSudokuTreasure_Task[21532]["Space"] = 3
	-- tSudokuTreasure_Task[21532]["StcRank"] = 1
	-- tSudokuTreasure_Task[21536] = {}
	-- tSudokuTreasure_Task[21536]["Need"] = 3306885 --神器源晶
	-- tSudokuTreasure_Task[21536]["Num"] = 3
	-- tSudokuTreasure_Task[21536]["Space"] = 3
	-- tSudokuTreasure_Task[21536]["StcRank"] = 2
	-- tSudokuTreasure_Task[21540] = {}
	-- tSudokuTreasure_Task[21540]["Need"] = 720027 --流星卷
	-- tSudokuTreasure_Task[21540]["Num"] = 1
	-- tSudokuTreasure_Task[21540]["Space"] = 2
	-- tSudokuTreasure_Task[21540]["StcRank"] = 3
	-- tSudokuTreasure_Task[21544] = {}
	-- tSudokuTreasure_Task[21544]["Need"] = 1100003 --乾坤袋（小）
	-- tSudokuTreasure_Task[21544]["Num"] = 1
	-- tSudokuTreasure_Task[21544]["Space"] = 2
	-- tSudokuTreasure_Task[21544]["StcRank"] = 4
	-- tSudokuTreasure_Task[21548] = {}
	-- tSudokuTreasure_Task[21548]["Need"] = 3303483 --灵境神草
	-- tSudokuTreasure_Task[21548]["Num"] = 3
	-- tSudokuTreasure_Task[21548]["Space"] = 3
	-- tSudokuTreasure_Task[21548]["StcRank"] = 5
	-- tSudokuTreasure_Task[21552] = {}
	-- tSudokuTreasure_Task[21552]["Need"] = 0 --1000银两
	-- tSudokuTreasure_Task[21552]["Num"] = 1000
	-- tSudokuTreasure_Task[21552]["Space"] = 3
	-- tSudokuTreasure_Task[21552]["StcRank"] = 6
	-- tSudokuTreasure_Task[21556] = {}
	-- tSudokuTreasure_Task[21556]["Need"] = 710834 --龙珠碎片
	-- tSudokuTreasure_Task[21556]["Num"] = 1
	-- tSudokuTreasure_Task[21556]["Space"] = 2
	-- tSudokuTreasure_Task[21556]["StcRank"] = 7
	-- tSudokuTreasure_Task[21560] = {}
	-- tSudokuTreasure_Task[21560]["Need"] = 753001 --兰花
	-- tSudokuTreasure_Task[21560]["Num"] = 1
	-- tSudokuTreasure_Task[21560]["Space"] = 2
	-- tSudokuTreasure_Task[21560]["StcRank"] = 8
	
--排行榜
	tRankingFunc_Info[21527] = {}
	tRankingFunc_Info[21527]["ActiveTime"] = tSudokuTreasure_Constant["RankActivityTime"]
	tRankingFunc_Info[21527]["DayTime"] = {}
	tRankingFunc_Info[21527]["DayTime"][1] = "00:00 23:59"
	tRankingFunc_Info[21527]["ResetTime"] = {}
	tRankingFunc_Info[21527]["ResetTime"][1] = "00:00 00:05"
	tRankingFunc_Info[21527]["Global"] = {52934,52935}
	tRankingFunc_Info[21527]["BeforeGlobal"] = {52936,52937}
	tRankingFunc_Info[21527]["RankNum"] = 5
	
	tRankingFunc_Info[21527]["Mail"] = {}
	tRankingFunc_Info[21527]["Mail"]["ActiveTime"] = tSudokuTreasure_Constant["RankActivityTime"]
	tRankingFunc_Info[21527]["Mail"]["RewardTime"] = {}
	tRankingFunc_Info[21527]["Mail"]["RewardTime"][1] = "00:00 00:05"
	tRankingFunc_Info[21527]["Mail"]["Reward"] = {}
	tRankingFunc_Info[21527]["Mail"]["Reward"][1] = {}
	tRankingFunc_Info[21527]["Mail"]["Reward"][1]["RewardRank"] = 1
	tRankingFunc_Info[21527]["Mail"]["Reward"][1]["ActionId"] = 573808
	tRankingFunc_Info[21527]["Mail"]["Reward"][1]["ExistDay"] = 30
	tRankingFunc_Info[21527]["Mail"]["Reward"][1]["Title"] = tSudokuTreasure_Text["Mail"]["Title"]
	tRankingFunc_Info[21527]["Mail"]["Reward"][1]["Sender"] = tSudokuTreasure_Text["Mail"]["Sender"]
	tRankingFunc_Info[21527]["Mail"]["Reward"][1]["Content"] = tSudokuTreasure_Text["Mail"]["Content"][1]
	tRankingFunc_Info[21527]["Mail"]["Reward"][2] = {}
	tRankingFunc_Info[21527]["Mail"]["Reward"][2]["RewardRank"] = 2
	tRankingFunc_Info[21527]["Mail"]["Reward"][2]["ActionId"] = 573807
	tRankingFunc_Info[21527]["Mail"]["Reward"][2]["ExistDay"] = 30
	tRankingFunc_Info[21527]["Mail"]["Reward"][2]["Title"] = tSudokuTreasure_Text["Mail"]["Title"]
	tRankingFunc_Info[21527]["Mail"]["Reward"][2]["Sender"] = tSudokuTreasure_Text["Mail"]["Sender"]
	tRankingFunc_Info[21527]["Mail"]["Reward"][2]["Content"] = tSudokuTreasure_Text["Mail"]["Content"][2]
	tRankingFunc_Info[21527]["Mail"]["Reward"][3] = {}
	tRankingFunc_Info[21527]["Mail"]["Reward"][3]["RewardRank"] = 3
	tRankingFunc_Info[21527]["Mail"]["Reward"][3]["ActionId"] = 573806
	tRankingFunc_Info[21527]["Mail"]["Reward"][3]["ExistDay"] = 30
	tRankingFunc_Info[21527]["Mail"]["Reward"][3]["Title"] = tSudokuTreasure_Text["Mail"]["Title"]
	tRankingFunc_Info[21527]["Mail"]["Reward"][3]["Sender"] = tSudokuTreasure_Text["Mail"]["Sender"]
	tRankingFunc_Info[21527]["Mail"]["Reward"][3]["Content"] = tSudokuTreasure_Text["Mail"]["Content"][3]
	tRankingFunc_Info[21527]["Mail"]["Reward"][4] = {}
	tRankingFunc_Info[21527]["Mail"]["Reward"][4]["RewardRank"] = 4
	tRankingFunc_Info[21527]["Mail"]["Reward"][4]["ActionId"] = 573805
	tRankingFunc_Info[21527]["Mail"]["Reward"][4]["ExistDay"] = 30
	tRankingFunc_Info[21527]["Mail"]["Reward"][4]["Title"] = tSudokuTreasure_Text["Mail"]["Title"]
	tRankingFunc_Info[21527]["Mail"]["Reward"][4]["Sender"] = tSudokuTreasure_Text["Mail"]["Sender"]
	tRankingFunc_Info[21527]["Mail"]["Reward"][4]["Content"] = tSudokuTreasure_Text["Mail"]["Content"][4]
	tRankingFunc_Info[21527]["Mail"]["Reward"][5] = {}
	tRankingFunc_Info[21527]["Mail"]["Reward"][5]["RewardRank"] = 5
	tRankingFunc_Info[21527]["Mail"]["Reward"][5]["ActionId"] = 573804
	tRankingFunc_Info[21527]["Mail"]["Reward"][5]["ExistDay"] = 30
	tRankingFunc_Info[21527]["Mail"]["Reward"][5]["Title"] = tSudokuTreasure_Text["Mail"]["Title"]
	tRankingFunc_Info[21527]["Mail"]["Reward"][5]["Sender"] = tSudokuTreasure_Text["Mail"]["Sender"]
	tRankingFunc_Info[21527]["Mail"]["Reward"][5]["Content"] = tSudokuTreasure_Text["Mail"]["Content"][5]
----------------------------------逻辑部分---------------------------------------------
function SudokuTreasure_Judge(nItemId)
	if not Sys_ChkFullTime(tSudokuTreasure_Constant["ActivityTime"]) then
		local nItemNum = Get_CountItemType(nItemId,0)
		local sLog = string.format(tSudokuTreasure_Constant["DelLog"],nItemId,nItemNum)
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			Sys_SaveActionFestivalLog(sLog)
			Sys_MsgBox(tSudokuTreasure_Text["TimeOut"])
		end
		return false
	end
	local nMapId = Get_UserMapId()
	if not(nMapId == 10357 or nMapId == 10358 or nMapId == 10359 or nMapId == 10360) then
		Sys_MsgBox(tSudokuTreasure_Text["FalseMap"])
		return false
	end
	return true
end

function SudokuTreasure_CheckBrother(nItemId)
	if not Sys_ChkFullTime(tSudokuTreasure_Constant["ActivityTime"]) then
		local sLog = string.format(tSudokuTreasure_Constant["DelLog"],nItemId,1)
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			Sys_SaveActionFestivalLog(sLog)
			Sys_MsgBox(tSudokuTreasure_Text["TimeOut"])
		end
		return false
	end
	tItem[nItemId]["DialogueText"] = tSudokuTreasure_Text[nItemId]
	tItem[nItemId]["Text1-1"] = {111}
	LinkItemGossipFunc_New(nItemId,"1-1")
	for i=1,#tSudokuTreasure_Constant["Brother"] do
		local nData = 0.1
		for j=1,i do
			nData = nData*10
		end
		local nEvent = tSudokuTreasure_Constant[10357]["EventType"]
		local nType = tSudokuTreasure_Constant[10357]["DataType"]
		local nComplete = (Get_UserStatisticValue(nEvent,nType)/nData)%10
		if nComplete >= 1 then
			table.insert(tItem[nItemId]["Text1-1"],111+i)
		end
	end
	table.insert(tItem[nItemId]["Text1-1"],110)
	LinkItemGossipFunc_New(nItemId,"1-1")
end

function SudokuTreasure_MoveJudge(nRandom)
	local nMapId = Get_UserMapId()
	-- 0折全服公告
	for j=1,#tSudokuTreasure_Constant["Free"] do
		if nRandom == tSudokuTreasure_Constant["Free"][j] then
			Sys_SystemBroadcast(string.format(tSudokuTreasure_Text["Free"],Get_UserName(),tSudokuTreasure_Text[nMapId]))
		end
	end
	-- 1折全服公告
	for k=1,#tSudokuTreasure_Constant["Half"] do
		if nRandom == tSudokuTreasure_Constant["Half"][k] then
			Sys_SystemBroadcast(string.format(tSudokuTreasure_Text["Half"],Get_UserName(),tSudokuTreasure_Text[nMapId]))
		end
	end
end

-- 使用定向卷轴
function SudokuTreasure_Move(nItemId)
	if not SudokuTreasure_Judge(nItemId) then
		return
	end
	local nMapId = Get_UserMapId()
	local nCellx = tSudokuTreasure_Constant[nItemId]["Cellx"] + Get_UserPositionX()
	local nCelly = tSudokuTreasure_Constant[nItemId]["Celly"] + Get_UserPositionY()
	if nCellx < tSudokuTreasure_Constant["MinX"] or nCellx > tSudokuTreasure_Constant["MaxX"] or nCelly < tSudokuTreasure_Constant["MinY"] or nCelly > tSudokuTreasure_Constant["MaxY"] then
		Sys_MsgBox(tSudokuTreasure_Text["Border"][nItemId])
		return
	end
	local nAwardEvent = tSudokuTreasure_Constant["Award"]["EventType"]
	local nAwardType = tSudokuTreasure_Constant["Award"]["DataType"]
	-- 燕氏兄弟
	for i=1,#tSudokuTreasure_Constant["Brother"] do
		local nPos = tSudokuTreasure_Constant["Brother"][i]
		if nCellx >= tSudokuTreasure_Constant["Pos"][nPos]["Cellx"]-3 and nCellx <= tSudokuTreasure_Constant["Pos"][nPos]["Cellx"]+3 and nCelly >= tSudokuTreasure_Constant["Pos"][nPos]["Celly"]-3 and nCelly <= tSudokuTreasure_Constant["Pos"][nPos]["Celly"]+3 then		
			local nData = 0.1
			for j=1,i do
				nData = nData*10
			end
			local nEvent = tSudokuTreasure_Constant[nMapId]["EventType"]
			local nType = tSudokuTreasure_Constant[nMapId]["DataType"]
			local nComplete = (Get_UserStatisticValue(nEvent,nType)/nData)%10
			-- 未见面过
			if nComplete < 1 then
				-- 背包已满
				if not User_CheckLeftSpace(RewardTemplate_GetRewardSpace(tSudokuTreasure_Reward["Brother"])) then
					User_TalkChannel2005(tSudokuTreasure_Text["BrotherNoSpace"])
					return
				end
				if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
					Task_SetStatistic(nAwardEvent,nAwardType,0,1,nUserId)
					Task_AddStatistic(nEvent,nType,nData,1)
					User_UserRandBoundTrans(nMapId,nCellx,nCelly,1,1,1)
					SudokuTreasure_MeetBrother(i)
					return
				end
			end
		end
	end
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		Task_SetStatistic(nAwardEvent,nAwardType,0,1,nUserId)
		User_UserRandBoundTrans(nMapId,nCellx,nCelly,1,1,1)
	end
	-- 0折
	for i=1,#tSudokuTreasure_Constant["Free"] do
		local nPos = tSudokuTreasure_Constant["Free"][i]
		if nCellx >= tSudokuTreasure_Constant["Pos"][nPos]["Cellx"]-3 and nCellx <= tSudokuTreasure_Constant["Pos"][nPos]["Cellx"]+3 and nCelly >= tSudokuTreasure_Constant["Pos"][nPos]["Celly"]-3 and nCelly <= tSudokuTreasure_Constant["Pos"][nPos]["Celly"]+3 then
			Sys_SystemBroadcast(string.format(tSudokuTreasure_Text["Free"],Get_UserName(),tSudokuTreasure_Text[nMapId]))
		end
	end
	-- 1折
	for i=1,#tSudokuTreasure_Constant["Half"] do
		local nPos = tSudokuTreasure_Constant["Half"][i]
		if nCellx >= tSudokuTreasure_Constant["Pos"][nPos]["Cellx"]-3 and nCellx <= tSudokuTreasure_Constant["Pos"][nPos]["Cellx"]+3 and nCelly >= tSudokuTreasure_Constant["Pos"][nPos]["Celly"]-3 and nCelly <= tSudokuTreasure_Constant["Pos"][nPos]["Celly"]+3 then
			Sys_SystemBroadcast(string.format(tSudokuTreasure_Text["Half"],Get_UserName(),tSudokuTreasure_Text[nMapId]))
		end
	end
end

-- 使用宝库传送卷
function SudokuTreasure_ChangeMap(nItemId)
	if not SudokuTreasure_Judge(nItemId) then
		return
	end
	local nRandom = math.random(1,80)
	local nMapId = Get_UserMapId()
	local nBroRank
	local nEvent
	local nType
	local nData
	-- 已完成过该燕小X的任务
	local nComplete = 1
	for i=1,#tSudokuTreasure_Constant["Brother"] do
		if nRandom == tSudokuTreasure_Constant["Brother"][i] then
			nEvent = tSudokuTreasure_Constant[nMapId]["EventType"]
			nType = tSudokuTreasure_Constant[nMapId]["DataType"]
			nData = 0.1
			for j=1,i do
				nData = nData*10
			end
			nComplete = (Get_UserStatisticValue(nEvent,nType)/nData)%10
			if nComplete >= 1 then
				SudokuTreasure_ChangeMap(nItemId)
				return
			else
				nBroRank = i
			end
		end
	end
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local nAwardEvent = tSudokuTreasure_Constant["Award"]["EventType"]
		local nAwardType = tSudokuTreasure_Constant["Award"]["DataType"]
		Task_SetStatistic(nAwardEvent,nAwardType,0,1,nUserId)
	-- 未见面过
		if nComplete < 1 then
			Task_AddStatistic(nEvent,nType,nData,1)
			SudokuTreasure_MeetBrother(nBroRank)
		end
		User_UserRandBoundTrans(nMapId,tSudokuTreasure_Constant["Pos"][nRandom]["Cellx"]+3,tSudokuTreasure_Constant["Pos"][nRandom]["Celly"]+3,1,1,1)
		SudokuTreasure_MoveJudge(nRandom)
	end
end

-- 燕氏兄弟见面礼
function SudokuTreasure_MeetBrother(nData)
	local nExistDay = tSudokuTreasure_Constant["Step"]["ExistDay"]
	local sSender = tSudokuTreasure_Text["Brother"][nData]
	local sTitle = tSudokuTreasure_Text["Brother"]["Title"]
	local sContent = tSudokuTreasure_Text["Brother"]["Content"]
	local nMapId = Get_UserMapId()
	local nEvent = tSudokuTreasure_Constant[nMapId]["EventType"]
	local nType = tSudokuTreasure_Constant[nMapId]["DataType"]
	local nAllComplete = Get_UserStatisticValue(nEvent,nType)
	-- 八个全见面过给至宝箱
	if nAllComplete == 11111111 then
		local nAllMeetActionId = tSudokuTreasure_Constant["Brother"]["AllMeetActionId"]
		tSudokuTreasure_Reward["Brother"]["Log"] = tSudokuTreasure_Constant["Brother"]["AllLog"]
		RewardTemplate_UseItemAndMsg(tSudokuTreasure_Reward["Brother"])
		Sys_SendMail(Get_UserId(),0,0,nAllMeetActionId,0,nExistDay,sSender,sTitle,sContent)
		return
	end
	-- 见面礼
	local nActionId = tSudokuTreasure_Constant["Brother"]["ActionId"]
	tSudokuTreasure_Reward["Brother"]["Log"] = tSudokuTreasure_Constant["Brother"]["Log"]
	RewardTemplate_UseItemAndMsg(tSudokuTreasure_Reward["Brother"])
	Sys_SendMail(Get_UserId(),0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
end

-- 前往下一格
function SudokuTreasure_GoToNext(nItemId)
	if not Item_ChkItem(nItemId) then
		Sys_MsgBox(tSudokuTreasure_Text["NoTrans"])
		return
	end
	SudokuTreasure_ChangeMap(nItemId)
end

function SudokuTreasure_Box(nNpcId)
	local nAwardEvent = tSudokuTreasure_Constant["Award"]["EventType"]
	local nAwardType = tSudokuTreasure_Constant["Award"]["DataType"]
	local nMapId = Get_UserMapId()
	local nCellx = Get_NpcPositionX(nNpcId)
	local nCelly = Get_NpcPositionY(nNpcId)
	local nDiscount = tSudokuTreasure_Constant["Discount"][nCellx][nCelly]
	local nCostEvent = tSudokuTreasure_Constant["Cost"]["EventType"] 
	local nCostType = tSudokuTreasure_Constant["Cost"]["DataType"]
	local nNumIndex
	local nPrice
	local nCost
	-- 判断是否已经点击过箱子
	if Get_UserStatisticValue(nAwardEvent,nAwardType) == 0 or not Task_ChkStatistic(nAwardEvent,nAwardType) then
		local nTabIndex = tSudokuTreasure_Constant[nMapId][nDiscount*10]
		local tTab = RewardTemplate_Random(tSudokuTreasure_Random[nMapId],nTabIndex)
		nNumIndex = tTab[1]["tAward"][1]["Index"]
		nPrice = tSudokuTreasure_Treasure[nMapId][nNumIndex]["Price"]
		nCost = math.floor(nPrice*nDiscount+0.5)
		-- 单独配价格的不按折扣计算
		if tSudokuTreasure_Strength[nMapId] ~= nil then
			if tSudokuTreasure_Strength[nMapId][nNumIndex] ~= nil then
				if tSudokuTreasure_Strength[nMapId][nNumIndex][nDiscount*10] ~= nil then
					nCost = tSudokuTreasure_Strength[nMapId][nNumIndex][nDiscount*10]
				end
			end
		end
		Task_SetStatistic(nAwardEvent,nAwardType,nNumIndex,1,nUserId)  
		Task_SetStatistic(nCostEvent,nCostType,nCost,1,nUserId)
	else
		nNumIndex = Get_UserStatisticValue(nAwardEvent,nAwardType)
		nPrice = tSudokuTreasure_Treasure[nMapId][nNumIndex]["Price"]
		nCost = Get_UserStatisticValue(nCostEvent,nCostType)
	end
	if nDiscount == 0 then
		tNpcGossip[21572]["Text141"] = tSudokuTreasure_Text[21572]["Text1410"]
	else
		tNpcGossip[21572]["Text141"] = string.format(tSudokuTreasure_Text[21572]["Text141"],tSudokuTreasure_Constant["Phase"][nDiscount*10])
	end
	tNpcGossip[21572]["Text144"] = string.format(tSudokuTreasure_Text[21572]["Text144"],nPrice)
	tNpcGossip[21572]["Text145"] = string.format(tSudokuTreasure_Text[21572]["Text145"],nCost)
	tNpcGossip[21572]["Option141"] = string.format(tSudokuTreasure_Text[21572]["Option141"],nCost)
	if nMapId == 10358 then
		local sStrengthValue = tSudokuTreasure_Treasure[nMapId][nNumIndex]["RewardStrengthValue"]["Value"]
		if nMapId == tSudokuTreasure_Constant["Strength"] and nNumIndex == 1 and nCost == 0 then
			sStrengthValue = tSudokuTreasure_Strength["MinFree"]
		end
		sAward = string.format(tSudokuTreasure_Text["RewardStrength"],sStrengthValue)
		tNpcGossip[21572]["Text1-4"] = {141,142,143,144,145,142,146,147}
	-- elseif nMapId == 10360 then
		-- local nItemId = tSudokuTreasure_Treasure[nMapId][nNumIndex]["RewardItem"][1]["Id"]
		-- sAward = Get_ItemtypeName(nItemId)
		-- tNpcGossip[21572]["Text1-4"] = {141,142,143,144,145,142,146,147}
	else
		local nItemId = tSudokuTreasure_Treasure[nMapId][nNumIndex]["RewardItem"][1]["Id"]
		sAward = Get_ItemtypeName(nItemId)
		-- 赤炼石
		if nItemId >= 730001 and nItemId <= 730009 then
			sAward = sAward.."+"..(nItemId-730000)
		end
		local nItemNum = tonumber(CommonFunc_GetItemNum(tSudokuTreasure_Treasure[nMapId][nNumIndex]["RewardItem"][1]["Attr"]))
		if nItemNum > 1 then
			sAward = sAward.."*"..nItemNum
		end
		tNpcGossip[21572]["Text1-4"] = {141,142,143,144,145,142,146,147}
	end
	tNpcGossip[21572]["Text143"] = string.format(tSudokuTreasure_Text[21572]["Text143"],sAward)
	-- SudokuTreasure_PassConfire(nNpcId)
	return true
end

-- 跳过二次确认
function SudokuTreasure_PassConfire(nNpcId)
	local nEvent = tSudokuTreasure_Constant["Shield"]["EventType"]
	local nType = tSudokuTreasure_Constant["Shield"]["DataType"]
	if Get_UserStatisticValue(nEvent,nType) ~= 1 or not Task_ChkStatistic(nEvent,nType) then
		tNpcGossip[nNpcId]["tOption1-4"] = {141,142}
	else 
		tNpcGossip[nNpcId]["tOption1-4"] = {141}
	end
end

-- 二次确认
function SudokuTreasure_Confire()
	local nNpcId = Get_NpcId()
	local nEvent = tSudokuTreasure_Constant["Shield"]["EventType"]
	local nType = tSudokuTreasure_Constant["Shield"]["DataType"]
	-- 屏蔽二次确认
	if Get_UserStatisticValue(nEvent,nType) >= 1 then
		SudokuTreasure_ConfireBuy(nNpcId)
		return
	end
	local nMapId = Get_UserMapId()
	local nAwardEvent = tSudokuTreasure_Constant["Award"]["EventType"]
	local nAwardType = tSudokuTreasure_Constant["Award"]["DataType"] 
	local nCostEvent = tSudokuTreasure_Constant["Cost"]["EventType"] 
	local nCostType = tSudokuTreasure_Constant["Cost"]["DataType"]
	local nNumIndex = Get_UserStatisticValue(nAwardEvent,nAwardType)
	local nCost = Get_UserStatisticValue(nCostEvent,nCostType)
	local sAward
	if nMapId == 10358 then
		local sStrengthValue = tSudokuTreasure_Treasure[nMapId][nNumIndex]["RewardStrengthValue"]["Value"]
		if nMapId == tSudokuTreasure_Constant["Strength"] and nNumIndex == 1 and nCost == 0 then
			sStrengthValue = tSudokuTreasure_Strength["MinFree"]
		end
		sAward = string.format(tSudokuTreasure_Text["RewardStrength"],sStrengthValue)
	else
		local nItemId = tSudokuTreasure_Treasure[nMapId][nNumIndex]["RewardItem"][1]["Id"]
		sAward = Get_ItemtypeName(nItemId)
		-- 赤炼石
		if nItemId >= 730001 and nItemId <= 730009 then
			sAward = sAward.."+"..(nItemId-730000)
		end
		local nItemNum = tonumber(CommonFunc_GetItemNum(tSudokuTreasure_Treasure[nMapId][nNumIndex]["RewardItem"][1]["Attr"]))
		if nItemNum > 1 then
			sAward = sAward.."*"..nItemNum
		end
	end
	tNpcGossip[nNpcId]["Text151"] = string.format(tSudokuTreasure_Text[21572]["Text151"],nCost,sAward)
	LinkNpcGossipFunc_New(nNpcId,"1-5")
end


-- 确认购买
function SudokuTreasure_ConfireBuy()
	local nNpcId = Get_NpcId()
	if not Sys_ChkFullTime(tSudokuTreasure_Constant["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	local nRankId = tSudokuTreasure_Constant["RankList"]
	local nMapId = Get_UserMapId()
	local nAwardEvent = tSudokuTreasure_Constant["Award"]["EventType"]
	local nAwardType = tSudokuTreasure_Constant["Award"]["DataType"] 
	local nCostEvent = tSudokuTreasure_Constant["Cost"]["EventType"] 
	local nCostType = tSudokuTreasure_Constant["Cost"]["DataType"]
	local nNumIndex = Get_UserStatisticValue(nAwardEvent,nAwardType)
	local nCost = Get_UserStatisticValue(nCostEvent,nCostType)
	local sLog
	-- 天石不足
	if Get_UserEMoney() < nCost then
		LinkNpcGossipFunc_New(nNpcId,"1-8")
		return
	end
	-- 加上传送劵和定向劵
	local nNeedSpace = RewardTemplate_GetRewardSpace(tSudokuTreasure_Treasure[nMapId][nNumIndex])+2
	-- 背包已满
	if not User_CheckLeftSpace(nNeedSpace) then
		tNpcGossip[nNpcId]["Text161"] = string.format(tSudokuTreasure_Text[21572]["Text161"],nNeedSpace)
		LinkNpcGossipFunc_New(nNpcId,"1-6")
		return
	end
	-- 获得原本名次
	local nBeforeRank = RankingFunc_GetUserInRank(nRankId,Get_UserId())
	if User_AddEMoney(-nCost) then
		if Sys_Random(tSudokuTreasure_Constant["Start"],tSudokuTreasure_Constant["End"]) then
			local tReward = RewardTemplate_NewRandom(tSudokuTreasure_Treasure,"Random")
			local nItemId = tReward[1]["tAward"][1]["RewardItem"][1]["Id"]
			if nMapId == tSudokuTreasure_Constant["Strength"] and nNumIndex == 1 and nCost == 0 then
				sLog = string.format(tSudokuTreasure_Strength["MinFreeLog"],nCost,"["..nItemId.."]","[".. 1 .."]")
			else
				sLog = string.format(tSudokuTreasure_Treasure[nMapId][nNumIndex]["NewLog"],nCost,"["..nItemId.."]","[".. 1 .."]")
			end
		else
			if nMapId == tSudokuTreasure_Constant["Strength"] and nNumIndex == 1 and nCost == 0 then
				sLog = string.format(tSudokuTreasure_Strength["MinFreeLog"],nCost,"","")
			else
				sLog = string.format(tSudokuTreasure_Treasure[nMapId][nNumIndex]["NewLog"],nCost,"","")
			end
		end
		Sys_SaveActionFestivalLog(sLog)
		Task_SetStatistic(nAwardEvent,nAwardType,100,1,nUserId)   
		Sys_SaveEmoneyBuy(string.format(tSudokuTreasure_Constant["EMoneyLog"],nCost,nCost))
		local tStrengthReward
		if nMapId == tSudokuTreasure_Constant["Strength"] and nNumIndex == 1 and nCost == 0 then
			tStrengthReward = CommonFunc_Copy(tSudokuTreasure_Treasure[nMapId][nNumIndex])
			tStrengthReward["RewardStrengthValue"]["Value"] = tSudokuTreasure_Strength["MinFree"]
			RewardTemplate_UseItemAndMsg(tStrengthReward)
		else
			RewardTemplate_UseItemAndMsg(tSudokuTreasure_Treasure[nMapId][nNumIndex])
		end
		RewardTemplate_UseItemAndMsg(tSudokuTreasure_Treasure["Fixed"])
		-- 设置排行榜
		local nEvent = tSudokuTreasure_Constant["Rank"]["EventType"]
		local nType = tSudokuTreasure_Constant["Rank"]["DataType"]
		local nTotalData = math.floor(Get_UserStatisticValue(nEvent,nType)/10000)
		SudokuTreasure_StepReward(nTotalData)
		local nTodayData = Get_UserStatisticValue(nEvent,nType)%10000
		RankingFunc_SetInfo(nRankId,nTodayData)
		-- 获得现在名次
		local nNowRank = RankingFunc_GetUserInRank(nRankId,Get_UserId())
		if nNowRank > nBeforeRank then
			Sys_SystemBroadcast(string.format(tSudokuTreasure_Text["BroadcastRank"],Get_UserName(),nNowRank))
		end
		-- 点击确认使用宝库传送卷
		Sys_MsgBox(tSudokuTreasure_Text[3310369]["Box"]..tSudokuTreasure_Text[3310369]["Tip"],"SudokuTreasure_ChangeMap</N>3310369")
	end
end


-- 盗圣至宝箱二次确认
function SudokuTreasure_SpecialConfire(nNpcId)
	local nEvent = tSudokuTreasure_Constant["Shield"]["EventType"]
	local nType = tSudokuTreasure_Constant["Shield"]["DataType"]
	-- 屏蔽二次确认
	if Get_UserStatisticValue(nEvent,nType) >= 1 then
		SudokuTreasure_SpecialConfireBuy(nNpcId)
		return
	end
	LinkNpcGossipFunc_New(nNpcId,"1-5")
end

-- 盗圣至宝箱确认购买
function SudokuTreasure_SpecialConfireBuy(nNpcId)
	if not Sys_ChkFullTime(tSudokuTreasure_Constant["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	local tSpecialReward
	--判断是否是激情服
	if SpecialServer_ChkNoGiftServer() then
		tSpecialReward = CommonFunc_Copy(tSudokuTreasure_Treasure[nNpcId][2])
	else
		tSpecialReward = CommonFunc_Copy(tSudokuTreasure_Treasure[nNpcId][1])
	end
	local nNeedMoney = tSpecialReward["Money"]
	-- 银两不足
	if not User_CanPutMoney2Bag(-nNeedMoney) then
		LinkNpcGossipFunc_New(nNpcId,"1-8")
		return
	end
	local nNeedSpace = tSpecialReward["Space"]
	-- 背包已满
	if not User_CheckLeftSpace(nNeedSpace) then
		LinkNpcGossipFunc_New(nNpcId,"1-6")
		return
	end
	local nRankId = tSudokuTreasure_Constant["RankList"]
	-- 获得原本名次
	local nBeforeRank = RankingFunc_GetUserInRank(nRankId,Get_UserId())
	if User_AddMoney(-nNeedMoney) then
		local sLog
		if Sys_Random(tSudokuTreasure_Constant["Start"],tSudokuTreasure_Constant["End"]) then
			local tReward = RewardTemplate_NewRandom(tSudokuTreasure_Treasure,"Random")
			local nItemId = tReward[1]["tAward"][1]["RewardItem"][1]["Id"]
			sLog = string.format(tSpecialReward["NewLog"],"["..nItemId.."]","[".. 1 .."]")
		else
			sLog = string.format(tSpecialReward["NewLog"],"","")
		end
		Sys_SaveActionFestivalLog(sLog)
		local nAwardEvent = tSudokuTreasure_Constant["Award"]["EventType"]
		local nAwardType = tSudokuTreasure_Constant["Award"]["DataType"] 
		Task_SetStatistic(nAwardEvent,nAwardType,100,1,nUserId)  
		RewardTemplate_UseItemAndMsg(tSpecialReward)
		-- 设置排行榜
		local nEvent = tSudokuTreasure_Constant["Rank"]["EventType"]
		local nType = tSudokuTreasure_Constant["Rank"]["DataType"]
		local nTotalData = math.floor(Get_UserStatisticValue(nEvent,nType)/10000)
		SudokuTreasure_StepReward(nTotalData)
		local nTodayData = Get_UserStatisticValue(nEvent,nType)%10000
		RankingFunc_SetInfo(nRankId,nTodayData)
		-- 获得现在名次
		local nNowRank = RankingFunc_GetUserInRank(nRankId,Get_UserId())
		if nNowRank > nBeforeRank then
			Sys_SystemBroadcast(string.format(tSudokuTreasure_Text["BroadcastRank"],Get_UserName(),nNowRank))
		end
		-- 点击确认使用宝库传送卷
		Sys_MsgBox(tSudokuTreasure_Text[3310369]["Box"]..tSudokuTreasure_Text[3310369]["Tip"],"SudokuTreasure_ChangeMap</N>3310369")
	end
end

-- 领取免费宝库传送卷
function SudokuTreasure_ReceiveRandom(nNpcId,nItemId)
	if not Sys_ChkFullTime(tSudokuTreasure_Constant["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	RewardTemplate_UseItemAndMsg(tSudokuTreasure_Reward[nNpcId][nItemId])
end

-- 领取回城石
-- function SudokuTreasure_ReceiveBack(nNpcId,nItemId)
	-- if not Item_ChkItem(nItemId) then
		-- RewardTemplate_UseItemAndMsg(tSudokuTreasure_Reward[nNpcId][nItemId])
	-- end
-- end

-- 打开天石商店
function SudokuTreasure_OpenEMoneyShop(nNpcId)
	if not Sys_ChkFullTime(tSudokuTreasure_Constant["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	User_OpenDialog()
end

-- 屏蔽二次确认
function SudokuTreasure_ShieldConfire()
	local nEvent = tSudokuTreasure_Constant["Shield"]["EventType"]
	local nType = tSudokuTreasure_Constant["Shield"]["DataType"]
	Task_AddStatistic(nEvent,nType,1,1)
	LinkNpcGossipFunc_New(Get_NpcId(),"1-4")
end

function SudokuTreasure_Login()
-- 打开屏蔽二次确认
	if not Sys_ChkFullTime(tSudokuTreasure_Constant["ActivityTime"]) then
		return
	end
	local nEvent = tSudokuTreasure_Constant["Shield"]["EventType"]
	local nType = tSudokuTreasure_Constant["Shield"]["DataType"]
	Task_SetStatistic(nEvent,nType,0,1,nUserId)
end

-- function SudokuTreasure_EightBrother(nNpcId,nIndex)
	-- local nItemId = tSudokuTreasure_Task[nNpcId]["Need"]
	-- local nItemNum = tSudokuTreasure_Task[nNpcId]["Num"]
	-- local nStc = tSudokuTreasure_Task[nNpcId]["StcRank"]
	-- local sLog = string.format(tSudokuTreasure_Reward["Brother"]["NewLog"],0,nItemId,nItemNum)
	-- local nSpace = tSudokuTreasure_Task[nNpcId]["Space"]
	-- local nData = 0.1
	-- for i=1,nStc do
		-- nData = nData*10
	-- end
	-- local nMapId = Get_UserMapId()
	-- local nEvent = tSudokuTreasure_Constant[nMapId]["EventType"]
	-- local nType = tSudokuTreasure_Constant[nMapId]["DataType"]
	-- if nIndex == 2 then
		-- nSpace = tSudokuTreasure_Task["Space"]
		-- nEMoney = tSudokuTreasure_Task["EMoney"]
		-- sLog = string.format(tSudokuTreasure_Reward["Brother"]["NewLog"],5,0,0)
		-- -- 背包已满
		-- if not User_CheckLeftSpace(nSpace) then
			-- User_TalkChannel2005(tSudokuTreasure_Text["BrotherNoSpace"])
			-- return
		-- end
		-- -- 天石不足
		-- if Get_UserEMoney() < nEMoney then
			-- LinkNpcGossipFunc_New(nNpcId,"1-8")
		-- end
	-- end
	-- if nIndex == 1 then
		-- -- 背包已满
		-- if not User_CheckLeftSpace(nSpace) then
			-- User_TalkChannel2005(tSudokuTreasure_Text["BrotherNoSpace"])
			-- return
		-- end
		-- -- 没有物品
		-- if nItemId ~= 0 then
			-- if not Item_ChkMulItem(nItemId,nItemId,nItemNum) then
				-- LinkNpcGossipFunc_New(nNpcId,"1-6")
				-- return
			-- else
				-- Item_DelMulItem(nItemId,nItemId,nItemNum)
			-- end
		-- elseif not User_CanPutMoney2Bag(-1*nItemNum) then
				-- LinkNpcGossipFunc_New(nNpcId,"1-6")
				-- return
			-- else
				-- User_AddMoney(-1*nItemNum)
		-- end
	-- end
	-- Task_AddStatistic(nEvent,nType,nData,1)
	-- Sys_SaveActionFestivalLog(sLog)
	-- RewardTemplate_UseItemAndMsg(tSudokuTreasure_Reward["Brother"])
	-- -- 点击确认使用宝库传送卷
	-- Sys_MsgBox(tSudokuTreasure_Text[3310369]["EightBrother"]..tSudokuTreasure_Text[3310369]["Tip"],"SudokuTreasure_ChangeMap</N>3310369")
	-- local nComplete = Get_UserStatisticValue(nEvent,nType)
	-- if nComplete == 11111111 then
		-- RewardTemplate_UseItemAndMsg(tSudokuTreasure_Reward["EightTask"])
	-- end
-- end

-- 阶段性奖励
function SudokuTreasure_StepReward(nData)
	for i=1,#tSudokuTreasure_Constant["Step"] do
		if nData == tSudokuTreasure_Constant["Step"][i]["Num"] then
			local nActionId = tSudokuTreasure_Constant["Step"][i]["ActionId"]
			local nExistDay = tSudokuTreasure_Constant["Step"]["ExistDay"]
			local sSender = tSudokuTreasure_Constant["Step"]["Sender"]
			local sTitle = tSudokuTreasure_Constant["Step"]["StepTitle"]
			local sContent = string.format(tSudokuTreasure_Constant["Step"]["Content"],nData)
			Sys_SendMail(Get_UserId(),0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
		end
	end
end

-- 陷阱入口
function SudokuTreasure_Entrance(nTrapType)
	if not Sys_ChkFullTime(tSudokuTreasure_Constant["ActivityTime"]) then
		return
	end
	local nMinMete = tSudokuTreasure_Constant["Mete"]
	local nMinLevel = tSudokuTreasure_Constant["Level"]
	if not User_JudgeLevelAndMetempsychosis(nMinLevel,nMinMete) then
		Sys_MsgBox(tSudokuTreasure_Text["NoLevel"])
		return
	end
	-- 强插背包满提示
	local nItemId = tSudokuTreasure_Constant["First"]["Reward"][1]["ItemId"]
	local nUserItemNum = Get_CountItemType(nItemId,0)
	if not User_CheckLeftSpace(2) or (not User_CheckLeftSpace(1) and nUserItemNum%9999 > 9997) then
		User_TalkChannel2005(tSudokuTreasure_Text["AddItemNoSpace"])
	end
	-- 掩码检测
	local nEvent = tSudokuTreasure_Constant["First"]["EventType"]
	local nType = tSudokuTreasure_Constant["First"]["DataType"]
	if not Task_ChkStatistic(nEvent,nType) then 
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		for i=1,#tSudokuTreasure_Constant["First"]["Reward"] do
			nItemId = tSudokuTreasure_Constant["First"]["Reward"][i]["ItemId"]
			local nItemNum = tSudokuTreasure_Constant["First"]["Reward"][i]["ItemNum"]
			Item_AddItem(nItemId,0,nItemNum)
			User_TalkChannel2005(tSudokuTreasure_Text["AddItem"])
		end
	end
	local nMapId = tSudokuTreasure_Constant[nTrapType]
	local nCellx = tSudokuTreasure_Constant["Pos"][81]["Cellx"]
	local nCelly = tSudokuTreasure_Constant["Pos"][81]["Celly"]
	User_UserRandBoundTrans(nMapId,nCellx+3,nCelly+3,1,1,1)
	User_TalkChannel2005(string.format(tSudokuTreasure_Text["EnterMap"],tSudokuTreasure_Text[nMapId]))
end

function SudokuTreasure_JudgeDistance(nNpcId)
	local nUserCellx = Get_UserPositionX()
	local nUserCelly = Get_UserPositionY()
	local nNpcCellx = Get_NpcPositionX(nNpcId)
	local nNpcCelly = Get_NpcPositionY(nNpcId)
	if math.abs(nUserCellx-nNpcCellx) > 3 then
		return false
	end
	if math.abs(nUserCelly-nNpcCelly) > 3 then
		return false
	end
	return true
end

-- function SudokuTreasure_JudgeBrother(nNpcId)
	-- local nMapId = Get_UserMapId()
	-- local nEvent = tSudokuTreasure_Constant[nMapId]["EventType"]
	-- local nType = tSudokuTreasure_Constant[nMapId]["DataType"]
	-- local nStc = tSudokuTreasure_Task[nNpcId]["StcRank"]
	-- local nData = 0.1
	-- for i=1,nStc do
		-- nData = nData*10
	-- end
	-- local nComplete = (Get_UserStatisticValue(nEvent,nType)/nData)%10
	-- if nComplete >= 1 then
		-- return true
	-- else
		-- return false
	-- end
-- end

function SudokuTreasure_KeeperShield(nNpcId)
	local nEvent = tSudokuTreasure_Reward[21564][3310369]["EventType"]
	local nType = tSudokuTreasure_Reward[21564][3310369]["DataType"]
	-- if Item_ChkItem(3310368) and Get_UserStatisticValue(nEvent,nType)%10000 >= 1 then
		-- tNpcGossip[nNpcId]["tOption1-1"] = {112,114}
		-- return
	-- end
	-- if Item_ChkItem(3310368) then
		-- tNpcGossip[nNpcId]["tOption1-1"] = {111,112,114}
		-- return
	-- end
	-- if Get_UserStatisticValue(nEvent,nType)%10000 >= 1 then
		-- tNpcGossip[nNpcId]["tOption1-1"] = {112,113}
		-- return
	-- end
end

function SudokuTreasure_ClickBroadCast(nMapId,nNpcId)
	local nUserMapId = Get_UserMapId()
	if nUserMapId == nMapId then
		NpcPosition_PathFind(nNpcId)
	else
		if SpecialServer_ChkNoGiftServer() then
			User_TalkChannel2005(tSudokuTreasure_Text["NpcPos"]["NoGift"])
		else
			User_TalkChannel2005(tSudokuTreasure_Text["NpcPos"]["Normal"])
		end
	end
end

-- 时间自检清场
function SudokuTreasure_Clean()
	for i=10357,10360 do
		-- Map_SendBroadcastMsg(i,tSudokuTreasure_Text["Back"])
		if SpecialServer_ChkNoGiftServer() then
			Map_SendBroadcastMsg(i,tSudokuTreasure_Text["Back"]["NoGift"])
		else
			Map_SendBroadcastMsg(i,tSudokuTreasure_Text["Back"]["Normal"])
		end
		Map_UserExeFunc(i,-1,"SudokuTreasure_CleanMap")
	end
end

function SudokuTreasure_CleanMap(nNowUserId)
	local nMapId = tSudokuTreasure_Constant["Back"]["Normal"]["MapId"]
	local nCellx = tSudokuTreasure_Constant["Back"]["Normal"]["Cellx"]
	local nCelly = tSudokuTreasure_Constant["Back"]["Normal"]["Celly"]
	if SpecialServer_ChkNoGiftServer() then
		nMapId = tSudokuTreasure_Constant["Back"]["NoGift"]["MapId"]
		nCellx = tSudokuTreasure_Constant["Back"]["NoGift"]["Cellx"]
		nCelly = tSudokuTreasure_Constant["Back"]["NoGift"]["Celly"]+5
	end
	for i=10357,10360 do
		if Get_UserMapId(nNowUserId) == i then
			User_UserRandBoundTrans(nMapId,nCellx,nCelly,2,2,1,nNowUserId)
		end
	end
end

-- 回到双龙城
function SudokuTreasure_CleanChgMap()
	local nMapId = tSudokuTreasure_Constant["Back"]["Normal"]["MapId"]
	local nCellx = tSudokuTreasure_Constant["Back"]["Normal"]["Cellx"]
	local nCelly = tSudokuTreasure_Constant["Back"]["Normal"]["Celly"]
	if SpecialServer_ChkNoGiftServer() then
		nMapId = tSudokuTreasure_Constant["Back"]["NoGift"]["MapId"]
		nCellx = tSudokuTreasure_Constant["Back"]["NoGift"]["Cellx"]
		nCelly = tSudokuTreasure_Constant["Back"]["NoGift"]["Celly"]+5
	end
	User_UserRandBoundTrans(nMapId,nCellx,nCelly,2,2,1)
	if SpecialServer_ChkNoGiftServer() then
		Sys_MsgBox(tSudokuTreasure_Text["Back"]["NoGift"])
	else
		Sys_MsgBox(tSudokuTreasure_Text["Back"]["Normal"])
	end
end
----------------------------------NPC部分---------------------------------------------
tNpcFace[6145] = 184
tNpcFace[1359] = 1683
tNpcFace[1363] = 1684
tNpcFace[1362] = 1685
tNpcFace[1361] = 1686
tNpcFace[1360] = 1687
tNpcFace[1364] = 1688
tNpcGossip[21527]= tNpcGossip[21527] or DefaultNpc:new{}
tNpcGossip[21527]["OptionHidden"] = 1
tNpcGossip[21527]["DialogueText"] = tSudokuTreasure_Text[21527]
-- 活动前对白
tNpcGossip[21527]["Text1-1"] = {115,111,112,113,114}
tNpcGossip[21527]["tOption1-1"] = {111}
tNpcGossip[21527]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tSudokuTreasure_Constant["BeforeActivityTime"])
end
-- 活动后对白
tNpcGossip[21527]["Text1-2"] = {115,121}
tNpcGossip[21527]["tOption1-2"] = {121}
tNpcGossip[21527]["ChkFunc1-2"] = function()
	return Sys_ChkFullTime(tSudokuTreasure_Constant["AfterActivityTime"])
end
-- 活动中对白
-- 等级达到
tNpcGossip[21527]["Text1-3"] = {115,131,132,133,112,114}
tNpcGossip[21527]["tOption1-3"] = {131,132}
tNpcGossip[21527]["OptionPoint131"] = "1-6"
tNpcGossip[21527]["OptionPoint132"] = "1-5"
tNpcGossip[21527]["ChkFunc1-3"] = function()
	local nMinMete = tSudokuTreasure_Constant["Mete"]
	local nMinLevel = tSudokuTreasure_Constant["Level"]
	if not User_JudgeLevelAndMetempsychosis(nMinLevel,nMinMete) then
		return false
	end
	return Sys_ChkFullTime(tSudokuTreasure_Constant["ActivityTime"])
end
-- 等级未到
tNpcGossip[21527]["Text1-4"] = {115,141,112,113,114}
tNpcGossip[21527]["tOption1-4"] = {141}

-- 规则
tNpcGossip[21527]["Text1-5"] = {151,152,153,154,155,156,157,158,159,152}
tNpcGossip[21527]["tOption1-5"] = {151}
tNpcGossip[21527]["OptionPoint151"] = "1-3"
-- 排行榜
tNpcGossip[21527]["Text1-6"] = {161,162,163,164,165,166,167,168,162,169,160}
tNpcGossip[21527]["tOption1-6"] = {161}
tNpcGossip[21527]["OptionPoint161"] = "1-3"
tNpcGossip[21527]["ChkFunc1-6"] = function()
	tRankList = RankingFunc_GetNowData(21527)
	for i=1,5 do
		
		local sMiddle = ""
		local sLast = ""
		
		if tRankList[i] ~= nil then
			sMiddle = tostring(tRankList[i]["Score"])
			sLast = tRankList[i]["UserName"]
		else
			sMiddle = "0"
			sLast = tSudokuTreasure_Text["Null"]
		end
		
		local sLeft = string.format(tSudokuTreasure_Text["Rank"], i)
		local sRight = tSudokuTreasure_Text["Award"][i]
		
		local sText = Sys_CenterAline(sLeft,5,sMiddle,28,sRight,56,sLast,74)
		
		tNpcGossip[21527]["Text16"..(i+3)] = string.format(tSudokuTreasure_Text[21527]["Text16"..(i+3)], sText)
	end
	local nEvent = tSudokuTreasure_Constant["Rank"]["EventType"]
	local nType = tSudokuTreasure_Constant["Rank"]["DataType"]
	if Task_StcInterval(nEvent,nType,1,4) then
		tNpcGossip[21527]["Text169"] = string.format(tSudokuTreasure_Text[21527]["Text169"],0)
	else
		tNpcGossip[21527]["Text169"] = string.format(tSudokuTreasure_Text[21527]["Text169"],Get_UserStatisticValue(nEvent,nType)%10000)
	end
	return true
end
-- 看守员
for i=1369,1372 do
	tNpcFace[i] = 84
end
tNpcGossip[21564]= tNpcGossip[21564] or DefaultNpc:new{}
tNpcGossip[21564]["OptionHidden"] = 1
tNpcGossip[21564]["DialogueText"] = tSudokuTreasure_Text[21564]
-- 对白
tNpcGossip[21564]["Text1-1"] = {110,111,112,113,114,115,122,116,117,118,119,112}
tNpcGossip[21564]["tOption1-1"] = {112,113}
-- tNpcGossip[21564]["OptionFunc111"] = "SudokuTreasure_ReceiveRandom</N>21564</N>3310369"
tNpcGossip[21564]["OptionFunc112"] = "SudokuTreasure_OpenEMoneyShop"
tNpcGossip[21564]["OptionFunc113"] = "SudokuTreasure_CleanChgMap"
tNpcGossip[21564]["ChkFunc1-1"] = function()
	if not SudokuTreasure_JudgeDistance(Get_NpcId()) then
		return false
	end
	if not Sys_ChkFullTime(tSudokuTreasure_Constant["ActivityTime"]) then
		return false
	end
	-- SudokuTreasure_KeeperShield(Get_NpcId())
	return true
end
-- 距离太远
tNpcGossip[21564]["Text1-2"] = {110,121}
tNpcGossip[21564]["tOption1-2"] = {121,122}
tNpcGossip[21564]["ChkFunc1-2"] = function()
	return Sys_ChkFullTime(tSudokuTreasure_Constant["ActivityTime"])
end
tNpcGossip[21564]["OptionFunc121"] = "SudokuTreasure_GoToNext</N>3310369"
tNpcGossip[21564]["OptionFunc122"] = "SudokuTreasure_CleanChgMap"
-- 活动时间已过
tNpcGossip[21564]["Text1-3"] = {110,131}
tNpcGossip[21564]["tOption1-3"] = {131}
tNpcGossip[21564]["OptionFunc131"] = "SudokuTreasure_CleanChgMap"
for i = 21564,21567 do 
	tNpcGossip[i]= tNpcGossip[21564]
end

-- 盗圣宝箱
tNpcGossip[21572]= tNpcGossip[21572] or DefaultNpc:new{}
tNpcGossip[21572]["OptionHidden"] = 1
tNpcGossip[21572]["DialogueText"] = tSudokuTreasure_Text[21572]
-- 距离太远
tNpcGossip[21572]["Text1-1"] = {111}
tNpcGossip[21572]["tOption1-1"] = {111,112}
tNpcGossip[21572]["ChkFunc1-1"] = function()
	return not SudokuTreasure_JudgeDistance(Get_NpcId())
end
tNpcGossip[21572]["OptionFunc111"] = "SudokuTreasure_GoToNext</N>3310369"
tNpcGossip[21572]["OptionFunc112"] = "SudokuTreasure_CleanChgMap"
-- 已完成
tNpcGossip[21572]["Text1-2"] = {121}
tNpcGossip[21572]["tOption1-2"] = {121,112}
tNpcGossip[21572]["OptionFunc121"] = "SudokuTreasure_GoToNext</N>3310369"
tNpcGossip[21572]["ChkFunc1-2"] = function()
	local nAwardEvent = tSudokuTreasure_Constant["Award"]["EventType"]
	local nAwardType = tSudokuTreasure_Constant["Award"]["DataType"]
	if Get_UserStatisticValue(nAwardEvent,nAwardType) == 100 then
		return true
	end
	return false
end
-- 活动时间已过
tNpcGossip[21572]["Text1-3"] = {131}
tNpcGossip[21572]["tOption1-3"] = {131}
tNpcGossip[21572]["OptionFunc131"] = "SudokuTreasure_CleanChgMap"
tNpcGossip[21572]["ChkFunc1-3"] = function()
	return not Sys_ChkFullTime(tSudokuTreasure_Constant["ActivityTime"])
end
-- 正常对白
tNpcGossip[21572]["Text1-4"] = {141,142,143,144,145,142,146,147}
tNpcGossip[21572]["tOption1-4"] = {141,111,112}
tNpcGossip[21572]["OptionFunc141"] = "SudokuTreasure_Confire"
tNpcGossip[21572]["ChkFunc1-4"] = function()
	return SudokuTreasure_Box(Get_NpcId())
end
-- 二次确认
tNpcGossip[21572]["Text1-5"] = {151}
tNpcGossip[21572]["tOption1-5"] = {151,152}
tNpcGossip[21572]["OptionFunc151"] = "SudokuTreasure_ConfireBuy"
tNpcGossip[21572]["OptionPoint152"] = "1-7"
-- 背包已满
tNpcGossip[21572]["Text1-6"] = {161}
tNpcGossip[21572]["tOption1-6"] = {161}
-- 屏蔽二次确认
tNpcGossip[21572]["Text1-7"] = {171}
tNpcGossip[21572]["tOption1-7"] = {171,172}
tNpcGossip[21572]["OptionFunc171"] = "SudokuTreasure_ShieldConfire"
-- 天石不足
tNpcGossip[21572]["Text1-8"] = {181}
tNpcGossip[21572]["tOption1-8"] = {161}
for i = 21572,21855 do 
	tNpcGossip[i]= tNpcGossip[21572]
end

-- 盗圣至宝箱
tNpcGossip[21568]= tNpcGossip[21568] or DefaultNpc:new{}
tNpcGossip[21568]["OptionHidden"] = 1
tNpcGossip[21568]["DialogueText"] = tSudokuTreasure_Text[21568]
-- 距离太远
tNpcGossip[21568]["Text1-1"] = {111}
tNpcGossip[21568]["tOption1-1"] = {111,112}
tNpcGossip[21568]["ChkFunc1-1"] = function()
	return not SudokuTreasure_JudgeDistance(Get_NpcId())
end
tNpcGossip[21568]["OptionFunc111"] = "SudokuTreasure_GoToNext</N>3310369"
tNpcGossip[21568]["OptionFunc112"] = "SudokuTreasure_CleanChgMap"
-- 已完成
tNpcGossip[21568]["Text1-2"] = {121}
tNpcGossip[21568]["tOption1-2"] = {121,112}
tNpcGossip[21568]["OptionFunc121"] = "SudokuTreasure_GoToNext</N>3310369"
tNpcGossip[21568]["ChkFunc1-2"] = function()
	local nAwardEvent = tSudokuTreasure_Constant["Award"]["EventType"]
	local nAwardType = tSudokuTreasure_Constant["Award"]["DataType"]
	if Get_UserStatisticValue(nAwardEvent,nAwardType) == 100 then
		return true
	end
	return false
end
-- 活动时间已过
tNpcGossip[21568]["Text1-3"] = {131}
tNpcGossip[21568]["tOption1-3"] = {131}
tNpcGossip[21568]["ChkFunc1-3"] = function()
	return not Sys_ChkFullTime(tSudokuTreasure_Constant["ActivityTime"])
end
-- 正常对白
tNpcGossip[21568]["Text1-4"] = {141,142,143,144,145,142,146,147}
tNpcGossip[21568]["tOption1-4"] = {141,111,112}
tNpcGossip[21568]["ChkFunc1-4"] = function()
	--判断是否是激情服
	if SpecialServer_ChkNoGiftServer() then
		tNpcGossip[21568]["Text143"] = tSudokuTreasure_Text[21568]["Text1430"]
		tNpcGossip[21568]["Text144"] = tSudokuTreasure_Text[21568]["Text1440"]
	else
		tNpcGossip[21568]["Text143"] = tSudokuTreasure_Text[21568]["Text143"]
		tNpcGossip[21568]["Text144"] = tSudokuTreasure_Text[21568]["Text144"]
	end
	return true
end
tNpcGossip[21568]["OptionFunc141"] = "SudokuTreasure_SpecialConfire</N>21568"
-- tNpcGossip[21568]["ChkFunc1-4"] = function()
	-- SudokuTreasure_PassConfire(Get_NpcId())
	-- return true
-- end
-- 二次确认
tNpcGossip[21568]["Text1-5"] = {151}
tNpcGossip[21568]["tOption1-5"] = {151,152}
tNpcGossip[21568]["ChkFunc1-5"] = function()
	--判断是否是激情服
	if SpecialServer_ChkNoGiftServer() then
		tNpcGossip[21568]["Text151"] = tSudokuTreasure_Text[21568]["Text1510"]
	else
		tNpcGossip[21568]["Text151"] = tSudokuTreasure_Text[21568]["Text151"]
	end
	return true
end
tNpcGossip[21568]["OptionFunc151"] = "SudokuTreasure_SpecialConfireBuy</N>21568"
tNpcGossip[21568]["OptionPoint152"] = "1-7"
-- 背包已满
tNpcGossip[21568]["Text1-6"] = {161}
tNpcGossip[21568]["tOption1-6"] = {161}
-- 屏蔽二次确认
tNpcGossip[21568]["Text1-7"] = {171}
tNpcGossip[21568]["tOption1-7"] = {171,172}
tNpcGossip[21568]["OptionFunc171"] = "SudokuTreasure_ShieldConfire"
-- 银两不足
tNpcGossip[21568]["Text1-8"] = {181}
tNpcGossip[21568]["tOption1-8"] = {181}
for i = 21568,21571 do 
	tNpcGossip[i]= tNpcGossip[21568]
end

-- 燕小一
tNpcFace[2058] = 47
tNpcGossip[21532]= tNpcGossip[21532] or DefaultNpc:new{}
tNpcGossip[21532]["OptionHidden"] = 1
tNpcGossip[21532]["DialogueText"] = tSudokuTreasure_Text[21532]
-- 距离太远
tNpcGossip[21532]["Text1-1"] = {191,111}
tNpcGossip[21532]["tOption1-1"] = {111,112}
tNpcGossip[21532]["ChkFunc1-1"] = function()
	return not SudokuTreasure_JudgeDistance(Get_NpcId())
end
tNpcGossip[21532]["OptionFunc111"] = "SudokuTreasure_GoToNext</N>3310369"
tNpcGossip[21532]["OptionFunc112"] = "SudokuTreasure_CleanChgMap"
-- 已完成
tNpcGossip[21532]["Text1-2"] = {191,121,122}
tNpcGossip[21532]["tOption1-2"] = {121,111,112}
for i = 21532,21535 do 
	tNpcGossip[i]= tNpcGossip[21532]
end
-- 燕小二
tNpcFace[2059] = 125
tNpcGossip[21536]= tNpcGossip[21536] or DefaultNpc:new{}
tNpcGossip[21536]["OptionHidden"] = 1
tNpcGossip[21536]["DialogueText"] = tSudokuTreasure_Text[21536]
-- 距离太远
tNpcGossip[21536]["Text1-1"] = {111}
tNpcGossip[21536]["tOption1-1"] = {111,112}
tNpcGossip[21536]["ChkFunc1-1"] = function()
	return not SudokuTreasure_JudgeDistance(Get_NpcId())
end
tNpcGossip[21536]["OptionFunc111"] = "SudokuTreasure_GoToNext</N>3310369"
tNpcGossip[21536]["OptionFunc112"] = "SudokuTreasure_CleanChgMap"
-- 已完成
tNpcGossip[21536]["Text1-2"] = {191,121,122}
tNpcGossip[21536]["tOption1-2"] = {121,111,112}
for i = 21536,21539 do 
	tNpcGossip[i]= tNpcGossip[21536]
end

-- 燕小三
tNpcFace[2060] = 17
tNpcGossip[21540]= tNpcGossip[21540] or DefaultNpc:new{}
tNpcGossip[21540]["OptionHidden"] = 1
tNpcGossip[21540]["DialogueText"] = tSudokuTreasure_Text[21540]
-- 距离太远
tNpcGossip[21540]["Text1-1"] = {191,111}
tNpcGossip[21540]["tOption1-1"] = {111,112}
tNpcGossip[21540]["ChkFunc1-1"] = function()
	return not SudokuTreasure_JudgeDistance(Get_NpcId())
end
tNpcGossip[21540]["OptionFunc111"] = "SudokuTreasure_GoToNext</N>3310369"
tNpcGossip[21540]["OptionFunc112"] = "SudokuTreasure_CleanChgMap"
-- 已完成
tNpcGossip[21540]["Text1-2"] = {191,121,122}
tNpcGossip[21540]["tOption1-2"] = {121,111,112}
for i = 21540,21543 do 
	tNpcGossip[i]= tNpcGossip[21540]
end

-- 燕小四
tNpcFace[2061] = 26
tNpcGossip[21544]= tNpcGossip[21544] or DefaultNpc:new{}
tNpcGossip[21544]["OptionHidden"] = 1
tNpcGossip[21544]["DialogueText"] = tSudokuTreasure_Text[21544]
-- 距离太远
tNpcGossip[21544]["Text1-1"] = {191,111}
tNpcGossip[21544]["tOption1-1"] = {111,112}
tNpcGossip[21544]["ChkFunc1-1"] = function()
	return not SudokuTreasure_JudgeDistance(Get_NpcId())
end
tNpcGossip[21544]["OptionFunc111"] = "SudokuTreasure_GoToNext</N>3310369"
tNpcGossip[21544]["OptionFunc112"] = "SudokuTreasure_CleanChgMap"
-- 已完成
tNpcGossip[21544]["Text1-2"] = {191,121,122}
tNpcGossip[21544]["tOption1-2"] = {121,111,112}
for i = 21544,21547 do 
	tNpcGossip[i]= tNpcGossip[21544]
end
-- 燕小五
tNpcFace[2062] = 160
tNpcGossip[21548]= tNpcGossip[21548] or DefaultNpc:new{}
tNpcGossip[21548]["OptionHidden"] = 1
tNpcGossip[21548]["DialogueText"] = tSudokuTreasure_Text[21548]
-- 距离太远
tNpcGossip[21548]["Text1-1"] = {191,111}
tNpcGossip[21548]["tOption1-1"] = {111,112}
tNpcGossip[21548]["ChkFunc1-1"] = function()
	return not SudokuTreasure_JudgeDistance(Get_NpcId())
end
tNpcGossip[21548]["OptionFunc111"] = "SudokuTreasure_GoToNext</N>3310369"
tNpcGossip[21548]["OptionFunc112"] = "SudokuTreasure_CleanChgMap"
-- 已完成
tNpcGossip[21548]["Text1-2"] = {191,121,122}
tNpcGossip[21548]["tOption1-2"] = {121,111,112}
for i = 21548,21551 do 
	tNpcGossip[i]= tNpcGossip[21548]
end
-- 燕小六
tNpcFace[2063] = 210
tNpcGossip[21552]= tNpcGossip[21552] or DefaultNpc:new{}
tNpcGossip[21552]["OptionHidden"] = 1
tNpcGossip[21552]["DialogueText"] = tSudokuTreasure_Text[21552]
-- 距离太远
tNpcGossip[21552]["Text1-1"] = {191,111}
tNpcGossip[21552]["tOption1-1"] = {111,112}
tNpcGossip[21552]["ChkFunc1-1"] = function()
	return not SudokuTreasure_JudgeDistance(Get_NpcId())
end
tNpcGossip[21552]["OptionFunc111"] = "SudokuTreasure_GoToNext</N>3310369"
tNpcGossip[21552]["OptionFunc112"] = "SudokuTreasure_CleanChgMap"
-- 已完成
tNpcGossip[21552]["Text1-2"] = {191,121,122}
tNpcGossip[21552]["tOption1-2"] = {121,111,112}
for i = 21552,21555 do 
	tNpcGossip[i]= tNpcGossip[21552]
end
-- 燕小七
tNpcFace[2064] = 52
tNpcGossip[21556]= tNpcGossip[21556] or DefaultNpc:new{}
tNpcGossip[21556]["OptionHidden"] = 1
tNpcGossip[21556]["DialogueText"] = tSudokuTreasure_Text[21556]
-- 距离太远
tNpcGossip[21556]["Text1-1"] = {191,111}
tNpcGossip[21556]["tOption1-1"] = {111,112}
tNpcGossip[21556]["ChkFunc1-1"] = function()
	return not SudokuTreasure_JudgeDistance(Get_NpcId())
end
tNpcGossip[21556]["OptionFunc111"] = "SudokuTreasure_GoToNext</N>3310369"
tNpcGossip[21556]["OptionFunc112"] = "SudokuTreasure_CleanChgMap"
-- 已完成
tNpcGossip[21556]["Text1-2"] = {191,121,122}
tNpcGossip[21556]["tOption1-2"] = {121,111,112}
for i = 21556,21559 do 
	tNpcGossip[i]= tNpcGossip[21556]
end
-- 燕小八
tNpcFace[2065] = 20
tNpcGossip[21560]= tNpcGossip[21560] or DefaultNpc:new{}
tNpcGossip[21560]["OptionHidden"] = 1
tNpcGossip[21560]["DialogueText"] = tSudokuTreasure_Text[21560]
-- 距离太远
tNpcGossip[21560]["Text1-1"] = {191,111}
tNpcGossip[21560]["tOption1-1"] = {111,112}
tNpcGossip[21560]["ChkFunc1-1"] = function()
	return not SudokuTreasure_JudgeDistance(Get_NpcId())
end
tNpcGossip[21560]["OptionFunc111"] = "SudokuTreasure_GoToNext</N>3310369"
tNpcGossip[21560]["OptionFunc112"] = "SudokuTreasure_CleanChgMap"
-- 已完成
tNpcGossip[21560]["Text1-2"] = {191,121,122}
tNpcGossip[21560]["tOption1-2"] = {121,111,112}
for i = 21560,21563 do 
	tNpcGossip[i]= tNpcGossip[21560]
end
---------------------------------物品部分---------------------------------------------
--------物品无对白模板
-- 任务卷轴
tItemFace[3310368] = 1689
tItem[3310368] = tItem[3310368] or {}
tItem[3310368]["Function"] = function(nItemId,sItemName)
	SudokuTreasure_CheckBrother(nItemId)
end
tItem[3310368]["DialogueText"] = tSudokuTreasure_Text[3310368]
tItem[3310368]["Text1-1"] = {111,112,113,114,115,116,117,118,119,110}

-- 宝库传送劵
tItem[3310369] = tItem[3310369] or {}
tItem[3310369]["Function"] = function(nItemId,sItemName)
	SudokuTreasure_ChangeMap(nItemId)
end

-- 右移一个卷轴
tItem[3310370] = tItem[3310370] or {}
tItem[3310370]["Function"] = function(nItemId,sItemName)
	SudokuTreasure_Move(nItemId)
end
tItem[3310371] = tItem[3310370]
tItem[3310372] = tItem[3310370]
tItem[3310373] = tItem[3310370]

-- 燕家谢礼包
tItem[3310374] = tItem[3310374] or {}
tItem[3310374]["Function"] = function(nItemId,sItemName)
	local nSpace = RewardTemplate_GetRandomSpace(tSudokuTreasure_Random,nItemId)-1
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(string.format(tSudokuTreasure_Text["NoSpace"],nSpace))
		return
	end
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		RewardTemplate_NewRandom(tSudokuTreasure_Random,nItemId)
	end
end

-- 燕家至宝箱
tItem[3310375] = tItem[3310374]
---------------------------------陷阱部分---------------------------------------------
tTrap[2077] = tTrap[2077] or {}
tTrap[2077]["Function"] = function(nTrapId,nTrapType)
	SudokuTreasure_Entrance(nTrapType)
end
tTrap[2078] = tTrap[2078] or {}
tTrap[2078]["Function"] = function(nTrapId,nTrapType)
	SudokuTreasure_Entrance(nTrapType)
end
tTrap[2079] = tTrap[2079] or {}
tTrap[2079]["Function"] = function(nTrapId,nTrapType)
	SudokuTreasure_Entrance(nTrapType)
end
tTrap[2080] = tTrap[2080] or {}
tTrap[2080]["Function"] = function(nTrapId,nTrapType)
	SudokuTreasure_Entrance(nTrapType)
end

------------------------------------------ 时间自检------------------------------------------
local tSudokuTreasure_OnTime = {}
	-- 清场
	tSudokuTreasure_OnTime[1] = {}
	tSudokuTreasure_OnTime[1]["Type"] = 4
	tSudokuTreasure_OnTime[1]["TimeType"] = 1
	tSudokuTreasure_OnTime[1]["Multiple"] = {}
	tSudokuTreasure_OnTime[1]["Multiple"][1] = tActivityTime["SudokuTreasure"]["ClearTime"]
	tSudokuTreasure_OnTime[1]["Func"] = SudokuTreasure_Clean
	table.insert(tSystemTime_InitialData,tSudokuTreasure_OnTime[1])

---------------------------------------------上线触发---------------------------------------------
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,SudokuTreasure_Login)