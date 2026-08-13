------------------------------------------------------------------------------------
--Name:		190630[简体征服][活动脚本]生存大作战
--Purpose:	吃鸡
--Creator: 	黄啸
--Created:	2019/06/30
------------------------------------------------------------------------------------
--前缀JulyEatchicken_
--logid:12001486
--每天12:40-13:00,17:40-18:00,21:40-22:00各开放一场，根据获得的最高名次领取奖励


----------------------------------数据部分配置----------------------------------

local tJulyEatchicken_Time = {}
tJulyEatchicken_Time["Before"] = tActivityTime["JulyEatchicken"]["BeforeActivity"]
tJulyEatchicken_Time["Active"] = tActivityTime["JulyEatchicken"]["ActiveTime"]
tJulyEatchicken_Time["ActiveNpc"] = tActivityTime["JulyEatchicken"]["ActiveNpc"]
tJulyEatchicken_Time["ActiveAwardGet"] = tActivityTime["JulyEatchicken"]["ActivActiveAwardGeteNpc"]
tJulyEatchicken_Time["DailyTime"] = {}
tJulyEatchicken_Time["DailyTime"][1] = "12:40 13:00"
tJulyEatchicken_Time["DailyTime"][2] = "17:40 18:00"
tJulyEatchicken_Time["DailyTime"][3] = "21:40 22:00"
tJulyEatchicken_Time["CircleTime"] = {}
tJulyEatchicken_Time["CircleTime"][1] = "12:45 12:45"
tJulyEatchicken_Time["CircleTime"][2] = "12:50 12:50"
tJulyEatchicken_Time["CircleTime"][3] = "12:55 12:55"
tJulyEatchicken_Time["CircleTime"][4] = "17:45 17:45"
tJulyEatchicken_Time["CircleTime"][5] = "17:50 17:50"
tJulyEatchicken_Time["CircleTime"][6] = "17:55 17:55"
tJulyEatchicken_Time["CircleTime"][7] = "21:45 21:45"
tJulyEatchicken_Time["CircleTime"][8] = "21:50 21:50"
tJulyEatchicken_Time["CircleTime"][9] = "21:55 21:55"
tJulyEatchicken_Time["CircleTimeTip"] = {}
tJulyEatchicken_Time["CircleTimeTip"][1] = "12:44 12:44"
tJulyEatchicken_Time["CircleTimeTip"][2] = "12:49 12:49"
tJulyEatchicken_Time["CircleTimeTip"][3] = "12:54 12:54"
tJulyEatchicken_Time["CircleTimeTip"][4] = "17:44 17:44"
tJulyEatchicken_Time["CircleTimeTip"][5] = "17:49 17:49"
tJulyEatchicken_Time["CircleTimeTip"][6] = "17:54 17:54"
tJulyEatchicken_Time["CircleTimeTip"][7] = "21:44 21:44"
tJulyEatchicken_Time["CircleTimeTip"][8] = "21:49 21:49"
tJulyEatchicken_Time["CircleTimeTip"][9] = "21:54 21:54"
tJulyEatchicken_Time["CircleTimeBegin"] = {}
tJulyEatchicken_Time["CircleTimeBegin"][1] = "12:39 12:39"
tJulyEatchicken_Time["CircleTimeBegin"][2] = "17:39 17:39"
tJulyEatchicken_Time["CircleTimeBegin"][3] = "21:39 21:39"
tJulyEatchicken_Time["CleanCircleTime"] = {}
tJulyEatchicken_Time["CleanCircleTime"][1] = "17:30 17:33"
tJulyEatchicken_Time["CleanCircleTime"][2] = "21:30 21:33"
tJulyEatchicken_Time["CleanCircleTime"][3] = "12:30 12:33"
tJulyEatchicken_Time["DayAward"] = {}
tJulyEatchicken_Time["DayAward"][1] = "13:01 13:03"
tJulyEatchicken_Time["DayAward"][2] = "18:01 18:03"
tJulyEatchicken_Time["DayAward"][3] = "22:01 22:03"
tJulyEatchicken_Time["CircleEnd"] = {}
tJulyEatchicken_Time["CircleEnd"][1] = "13:00 13:00"
tJulyEatchicken_Time["CircleEnd"][2] = "18:00 18:00"
tJulyEatchicken_Time["CircleEnd"][3] = "22:00 22:00"


local tJulyEatchicken_Level = {}
tJulyEatchicken_Level["Level"] = 80
tJulyEatchicken_Level["Meto"] = 0

local tJulyEatchicken_Stc = {}
--三场比赛记录是否进入过
tJulyEatchicken_Stc[1] = {199,69}
tJulyEatchicken_Stc[2] = {199,70}
tJulyEatchicken_Stc[3] = {199,71}
--玩家累计的积分
tJulyEatchicken_Stc[4] = {199,72}
--累计积分换奖励
tJulyEatchicken_Stc[5] = {}
tJulyEatchicken_Stc[5][1] = {199,97,500}
tJulyEatchicken_Stc[5][2] = {199,98,1000}
tJulyEatchicken_Stc[5][3] = {199,99,2000}
tJulyEatchicken_Stc[5][4] = {200,00,3000}
tJulyEatchicken_Stc[5][5] = {200,01,5000}
tJulyEatchicken_Stc[5][6] = {200,02,8000}
tJulyEatchicken_Stc[5][7] = {200,03,10000}
tJulyEatchicken_Stc[5][8] = {200,04,15000}
tJulyEatchicken_Stc[5][9] = {200,05,20000}

--一天三场玩家次游戏积分
tJulyEatchicken_Stc[6] = {200,11}
tJulyEatchicken_Stc[7] = {200,12}
tJulyEatchicken_Stc[8] = {200,13}

--传送cd30秒
tJulyEatchicken_Stc[9] = {}
tJulyEatchicken_Stc[9][1] = {200,14}
tJulyEatchicken_Stc[9][2] = 0
tJulyEatchicken_Stc[9][3] = 30

--重要logid
local tJulyEatchicken_Log = {}
--参与活动
tJulyEatchicken_Log[1] = "0,0,0,0,12001486,1[1],0,0"
--传送房间
tJulyEatchicken_Log[2] = "0,0,0,0,12001486,1[2],0,0"
--获得积分相关log
tJulyEatchicken_Log[3] = "0,0,0,0,12001486,1[3],%d,%d"


--总排行榜模板
tRankingFunc_Info[24407] = {}
tRankingFunc_Info[24407]["Reset"] = 1
tRankingFunc_Info[24407]["DayTime"] = {}
tRankingFunc_Info[24407]["DayTime"][1] = "00:00 23:59"
-- tRankingFunc_Info[24407]["ResetTime"] = {}
-- tRankingFunc_Info[24407]["ResetTime"][1] = "00:00 00:05"
tRankingFunc_Info[24407]["Global"] = {53440,53441,53442,53443}
tRankingFunc_Info[24407]["RankNum"] = 10

--单次排行榜
tRankingFunc_Info[24408] = {}
tRankingFunc_Info[24408]["Reset"] = 1
tRankingFunc_Info[24408]["DayTime"] = {}
tRankingFunc_Info[24408]["DayTime"][1] = "00:00 23:59"
tRankingFunc_Info[24408]["Global"] = {53444,53445,53446,53447}
tRankingFunc_Info[24408]["RankNum"] = 10
tRankingFunc_Info[24408]["MapId"] = {10918,10918}
tRankingFunc_Info[24408]["RoomGlobalId"] = {53459}
tRankingFunc_Info[24408]["People"] = {49,25,9,1}
tRankingFunc_Info[24408]["Generator"] = 31369
tRankingFunc_Info[24408]["Monster"] = 1372
tRankingFunc_Info[24408]["NowCircle"] = {}
tRankingFunc_Info[24408]["NowCircle"][1] = 1
tRankingFunc_Info[24408]["NowCircle"][2] = 3
tRankingFunc_Info[24408]["NowCircle"][3] = 7

local tJulyEatchicken_Map = {}
tJulyEatchicken_Map["DragonCity"] = {}
tJulyEatchicken_Map["DragonCity"]["Normal"] = {}
tJulyEatchicken_Map["DragonCity"]["Normal"]["PosX"] = 319
tJulyEatchicken_Map["DragonCity"]["Normal"]["PosY"] = 440
tJulyEatchicken_Map["DragonCity"]["Normal"]["MapId"] = 1002
tJulyEatchicken_Map["DragonCity"]["Special"] = {}
tJulyEatchicken_Map["DragonCity"]["Special"]["PosX"] = 266
tJulyEatchicken_Map["DragonCity"]["Special"]["PosY"] = 160
tJulyEatchicken_Map["DragonCity"]["Special"]["MapId"] = 1036
tJulyEatchicken_Map["PosX"] = 686
tJulyEatchicken_Map["PosY"] = 417
tJulyEatchicken_Map["nBound"] = 5
tJulyEatchicken_Map["nEffect"] = {}
tJulyEatchicken_Map["nEffect"][1] = "self"
tJulyEatchicken_Map["nEffect"][2] = "firemagic"


tJulyEatchicken_Map["Bound"] = {}
tJulyEatchicken_Map["Bound"][1] = {231,283,567,618,240,578}
tJulyEatchicken_Map["Bound"][2] = {231,283,511,563,240,528}
tJulyEatchicken_Map["Bound"][3] = {231,283,455,507,240,472}
tJulyEatchicken_Map["Bound"][4] = {231,283,399,451,240,412}
tJulyEatchicken_Map["Bound"][5] = {231,283,342,395,240,358}
tJulyEatchicken_Map["Bound"][6] = {231,283,287,339,240,302}
tJulyEatchicken_Map["Bound"][7] = {231,283,231,283,240,247}

tJulyEatchicken_Map["Bound"][8] = {288,339, 567,618,296,578}
tJulyEatchicken_Map["Bound"][9] = {288,339, 511,563,296,528}
tJulyEatchicken_Map["Bound"][10] = {288,339,455,507,296,472}
tJulyEatchicken_Map["Bound"][11] = {288,339,399,451,296,412}
tJulyEatchicken_Map["Bound"][12] = {288,339,342,395,296,358}
tJulyEatchicken_Map["Bound"][13] = {288,339,287,339,296,302}
tJulyEatchicken_Map["Bound"][14] = {288,339,231,283,296,247}

tJulyEatchicken_Map["Bound"][15] = {344,395,567,618,354,578}
tJulyEatchicken_Map["Bound"][16] = {344,395,511,563,354,528}
tJulyEatchicken_Map["Bound"][17] = {344,395,455,507,354,472}
tJulyEatchicken_Map["Bound"][18] = {344,395,399,451,354,412}
tJulyEatchicken_Map["Bound"][19] = {344,395,342,395,354,358}
tJulyEatchicken_Map["Bound"][20] = {344,395,287,339,354,302}
tJulyEatchicken_Map["Bound"][21] = {344,395,231,283,354,247}

tJulyEatchicken_Map["Bound"][22] = {400,451,567,618,409,578}
tJulyEatchicken_Map["Bound"][23] = {400,451,511,563,409,528}
tJulyEatchicken_Map["Bound"][24] = {400,451,455,507,409,472}
tJulyEatchicken_Map["Bound"][25] = {400,451,399,451,409,412}
tJulyEatchicken_Map["Bound"][26] = {400,451,342,395,409,358}
tJulyEatchicken_Map["Bound"][27] = {400,451,287,339,409,302}
tJulyEatchicken_Map["Bound"][28] = {400,451,231,283,409,247}

tJulyEatchicken_Map["Bound"][29] = {456,507,567,618,467,578}
tJulyEatchicken_Map["Bound"][30] = {456,507,511,563,467,528}
tJulyEatchicken_Map["Bound"][31] = {456,507,455,507,467,472}
tJulyEatchicken_Map["Bound"][32] = {456,507,399,451,467,412}
tJulyEatchicken_Map["Bound"][33] = {456,507,342,395,467,358}
tJulyEatchicken_Map["Bound"][34] = {456,507,287,339,467,302}
tJulyEatchicken_Map["Bound"][35] = {456,507,231,283,467,247}

tJulyEatchicken_Map["Bound"][36] = {512,563,567,618,523,578}
tJulyEatchicken_Map["Bound"][37] = {512,563,511,563,523,528}
tJulyEatchicken_Map["Bound"][38] = {512,563,455,507,523,472}
tJulyEatchicken_Map["Bound"][39] = {512,563,399,451,523,412}
tJulyEatchicken_Map["Bound"][40] = {512,563,342,395,523,358}
tJulyEatchicken_Map["Bound"][41] = {512,563,287,339,523,302}
tJulyEatchicken_Map["Bound"][42] = {512,563,231,283,523,247}

tJulyEatchicken_Map["Bound"][43] = {568,618,567,618,572,578}
tJulyEatchicken_Map["Bound"][44] = {568,618,511,563,572,528}
tJulyEatchicken_Map["Bound"][45] = {568,618,455,507,572,472}
tJulyEatchicken_Map["Bound"][46] = {568,618,399,451,572,412}
tJulyEatchicken_Map["Bound"][47] = {568,618,342,395,572,358}
tJulyEatchicken_Map["Bound"][48] = {568,618,287,339,572,302}
tJulyEatchicken_Map["Bound"][49] = {568,618,231,283,572,247}


tJulyEatchicken_Map["nBuff"] = {}
tJulyEatchicken_Map["nBuff"][1] = 1
tJulyEatchicken_Map["nBuff"][2] = 2
tJulyEatchicken_Map["nBuff"][3] = 3

tJulyEatchicken_Map["MapId"] = {}
tJulyEatchicken_Map["MapId"][1] = {10918,0,0,2,8,240,578,54}
tJulyEatchicken_Map["MapId"][2] = {10918,1,0,3,9,240,528,55}
tJulyEatchicken_Map["MapId"][3] = {10918,2,0,4,10,240,472,56}
tJulyEatchicken_Map["MapId"][4] = {10918,3,0,5,11,240,412,57}
tJulyEatchicken_Map["MapId"][5] = {10918,4,0,6,12,240,358,58}
tJulyEatchicken_Map["MapId"][6] = {10918,5,0,7,13,240,302,59}
tJulyEatchicken_Map["MapId"][7] = {10918,6,0,0,14,240,247,60}

tJulyEatchicken_Map["MapId"][8] = {10918,0,1,9,15,296,578,61}
tJulyEatchicken_Map["MapId"][9] = {10918,8,2,10,16,296,528,62}
tJulyEatchicken_Map["MapId"][10] = {10918,9,3,11,17,296,472,63}
tJulyEatchicken_Map["MapId"][11] = {10918,10,4,12,18,296,412,64}
tJulyEatchicken_Map["MapId"][12] = {10918,11,5,13,19,296,358,65}
tJulyEatchicken_Map["MapId"][13] = {10918,12,6,14,20,296,302,66}
tJulyEatchicken_Map["MapId"][14] = {10918,13,7,0,21,296,247,67}

tJulyEatchicken_Map["MapId"][15] = {10918,0,8,16,22,354,578,68}
tJulyEatchicken_Map["MapId"][16] = {10918,15,9,17,23,354,528,69}
tJulyEatchicken_Map["MapId"][17] = {10918,16,10,18,24,354,472,70}
tJulyEatchicken_Map["MapId"][18] = {10918,17,11,19,25,354,412,71}
tJulyEatchicken_Map["MapId"][19] = {10918,18,12,20,26,354,358,72}
tJulyEatchicken_Map["MapId"][20] = {10918,19,13,21,27,354,302,73}
tJulyEatchicken_Map["MapId"][21] = {10918,20,14,0,28,354,247,74}

tJulyEatchicken_Map["MapId"][22] = {10918,0,15,23,29,409,578,75}
tJulyEatchicken_Map["MapId"][23] = {10918,22,16,24,30,409,528,76}
tJulyEatchicken_Map["MapId"][24] = {10918,23,17,25,31,409,472,77}
tJulyEatchicken_Map["MapId"][25] = {10918,24,18,26,32,409,412,78}
tJulyEatchicken_Map["MapId"][26] = {10918,25,19,27,33,409,358,79}
tJulyEatchicken_Map["MapId"][27] = {10918,26,20,28,34,409,302,80}
tJulyEatchicken_Map["MapId"][28] = {10918,27,21,0,35,409,247,81}

tJulyEatchicken_Map["MapId"][29] = {10918,0,22,30,36,467,578,82}
tJulyEatchicken_Map["MapId"][30] = {10918,29,23,31,37,467,528,83}
tJulyEatchicken_Map["MapId"][31] = {10918,30,24,32,38,467,472,84}
tJulyEatchicken_Map["MapId"][32] = {10918,31,25,33,39,467,412,85}
tJulyEatchicken_Map["MapId"][33] = {10918,32,26,34,40,467,358,86}
tJulyEatchicken_Map["MapId"][34] = {10918,33,27,35,41,467,302,87}
tJulyEatchicken_Map["MapId"][35] = {10918,34,28,0,42,467,247,88}

tJulyEatchicken_Map["MapId"][36] = {10918,0,29,37,43,523,578,89}
tJulyEatchicken_Map["MapId"][37] = {10918,36,30,38,44,523,528,90}
tJulyEatchicken_Map["MapId"][38] = {10918,37,31,39,45,523,472,91}
tJulyEatchicken_Map["MapId"][39] = {10918,38,32,40,46,523,412,92}
tJulyEatchicken_Map["MapId"][40] = {10918,39,33,41,47,523,358,93}
tJulyEatchicken_Map["MapId"][41] = {10918,40,34,42,48,523,302,94}
tJulyEatchicken_Map["MapId"][42] = {10918,41,35,0,49,523,247,95}

tJulyEatchicken_Map["MapId"][43] = {10918,0,36,44,0,572,578,96}
tJulyEatchicken_Map["MapId"][44] = {10918,43,37,45,0,572,528,97}
tJulyEatchicken_Map["MapId"][45] = {10918,44,38,46,0,572,472,98}
tJulyEatchicken_Map["MapId"][46] = {10918,45,39,47,0,572,412,99}
tJulyEatchicken_Map["MapId"][47] = {10918,46,40,48,0,572,358,100}
tJulyEatchicken_Map["MapId"][48] = {10918,47,41,49,0,572,302,101}
tJulyEatchicken_Map["MapId"][49] = {10918,48,42,0,0,572,247,102}

tJulyEatchicken_Map["MapId"][50] = {10918,51,50,0,0,684,418,103}

-- 次奖励邮寄领取奖励
tRankingFunc_Info[24408]["Mail"] = {}
tRankingFunc_Info[24408]["Mail"]["ActiveTime"] = tJulyEatchicken_Time["Active"]
tRankingFunc_Info[24408]["Mail"]["RewardTime"] = {}
tRankingFunc_Info[24408]["Mail"]["RewardTime"][1] = tJulyEatchicken_Time["DayAward"][1]
tRankingFunc_Info[24408]["Mail"]["RewardTime"][2] = tJulyEatchicken_Time["DayAward"][2]
tRankingFunc_Info[24408]["Mail"]["RewardTime"][3] = tJulyEatchicken_Time["DayAward"][3]
tRankingFunc_Info[24408]["Mail"]["Reward"] = {}
tRankingFunc_Info[24408]["Mail"]["Reward"][1] = {}
tRankingFunc_Info[24408]["Mail"]["Reward"][1]["RewardRank"] = 1
tRankingFunc_Info[24408]["Mail"]["Reward"][1]["ActionId"] = 573183
tRankingFunc_Info[24408]["Mail"]["Reward"][1]["ExistDay"] = 7
tRankingFunc_Info[24408]["Mail"]["Reward"][1]["Title"] = tJulyEatchicken_Text[24407]["CiAward"]["Title"]
tRankingFunc_Info[24408]["Mail"]["Reward"][1]["Sender"] = tJulyEatchicken_Text[24407]["CiAward"]["Sender"]
tRankingFunc_Info[24408]["Mail"]["Reward"][1]["Content"] = string.format(tJulyEatchicken_Text[24407]["CiAward"]["Content"][1],1)
tRankingFunc_Info[24408]["Mail"]["Reward"][2] = {}
tRankingFunc_Info[24408]["Mail"]["Reward"][2]["RewardRank"] = 2
tRankingFunc_Info[24408]["Mail"]["Reward"][2]["ActionId"] = 573184
tRankingFunc_Info[24408]["Mail"]["Reward"][2]["ExistDay"] = 7
tRankingFunc_Info[24408]["Mail"]["Reward"][2]["Title"] = tJulyEatchicken_Text[24407]["CiAward"]["Title"]
tRankingFunc_Info[24408]["Mail"]["Reward"][2]["Sender"] = tJulyEatchicken_Text[24407]["CiAward"]["Sender"]
tRankingFunc_Info[24408]["Mail"]["Reward"][2]["Content"] = string.format(tJulyEatchicken_Text[24407]["CiAward"]["Content"][2],2)
tRankingFunc_Info[24408]["Mail"]["Reward"][3] = {}
tRankingFunc_Info[24408]["Mail"]["Reward"][3]["RewardRank"] = 3
tRankingFunc_Info[24408]["Mail"]["Reward"][3]["ActionId"] = 573184
tRankingFunc_Info[24408]["Mail"]["Reward"][3]["ExistDay"] = 7
tRankingFunc_Info[24408]["Mail"]["Reward"][3]["Title"] = tJulyEatchicken_Text[24407]["CiAward"]["Title"]
tRankingFunc_Info[24408]["Mail"]["Reward"][3]["Sender"] = tJulyEatchicken_Text[24407]["CiAward"]["Sender"]
tRankingFunc_Info[24408]["Mail"]["Reward"][3]["Content"] = string.format(tJulyEatchicken_Text[24407]["CiAward"]["Content"][2],3)
tRankingFunc_Info[24408]["Mail"]["Reward"][4] = {}
tRankingFunc_Info[24408]["Mail"]["Reward"][4]["RewardRank"] = 4
tRankingFunc_Info[24408]["Mail"]["Reward"][4]["ActionId"] = 573185
tRankingFunc_Info[24408]["Mail"]["Reward"][4]["ExistDay"] = 7
tRankingFunc_Info[24408]["Mail"]["Reward"][4]["Title"] = tJulyEatchicken_Text[24407]["CiAward"]["Title"]
tRankingFunc_Info[24408]["Mail"]["Reward"][4]["Sender"] = tJulyEatchicken_Text[24407]["CiAward"]["Sender"]
tRankingFunc_Info[24408]["Mail"]["Reward"][4]["Content"] = string.format(tJulyEatchicken_Text[24407]["CiAward"]["Content"][3],4)
tRankingFunc_Info[24408]["Mail"]["Reward"][5] = {}
tRankingFunc_Info[24408]["Mail"]["Reward"][5]["RewardRank"] = 5
tRankingFunc_Info[24408]["Mail"]["Reward"][5]["ActionId"] = 573185
tRankingFunc_Info[24408]["Mail"]["Reward"][5]["ExistDay"] = 7
tRankingFunc_Info[24408]["Mail"]["Reward"][5]["Title"] = tJulyEatchicken_Text[24407]["CiAward"]["Title"]
tRankingFunc_Info[24408]["Mail"]["Reward"][5]["Sender"] = tJulyEatchicken_Text[24407]["CiAward"]["Sender"]
tRankingFunc_Info[24408]["Mail"]["Reward"][5]["Content"] = string.format(tJulyEatchicken_Text[24407]["CiAward"]["Content"][3],5)
tRankingFunc_Info[24408]["Mail"]["Reward"][6] = {}
tRankingFunc_Info[24408]["Mail"]["Reward"][6]["RewardRank"] = 6
tRankingFunc_Info[24408]["Mail"]["Reward"][6]["ActionId"] = 573185
tRankingFunc_Info[24408]["Mail"]["Reward"][6]["ExistDay"] = 7
tRankingFunc_Info[24408]["Mail"]["Reward"][6]["Title"] = tJulyEatchicken_Text[24407]["CiAward"]["Title"]
tRankingFunc_Info[24408]["Mail"]["Reward"][6]["Sender"] = tJulyEatchicken_Text[24407]["CiAward"]["Sender"]
tRankingFunc_Info[24408]["Mail"]["Reward"][6]["Content"] = string.format(tJulyEatchicken_Text[24407]["CiAward"]["Content"][3],6)
tRankingFunc_Info[24408]["Mail"]["Reward"][7] = {}
tRankingFunc_Info[24408]["Mail"]["Reward"][7]["RewardRank"] = 7
tRankingFunc_Info[24408]["Mail"]["Reward"][7]["ActionId"] = 573186
tRankingFunc_Info[24408]["Mail"]["Reward"][7]["ExistDay"] = 7
tRankingFunc_Info[24408]["Mail"]["Reward"][7]["Title"] = tJulyEatchicken_Text[24407]["CiAward"]["Title"]
tRankingFunc_Info[24408]["Mail"]["Reward"][7]["Sender"] = tJulyEatchicken_Text[24407]["CiAward"]["Sender"]
tRankingFunc_Info[24408]["Mail"]["Reward"][7]["Content"] = string.format(tJulyEatchicken_Text[24407]["CiAward"]["Content"][4],7)
tRankingFunc_Info[24408]["Mail"]["Reward"][8] = {}
tRankingFunc_Info[24408]["Mail"]["Reward"][8]["RewardRank"] = 8
tRankingFunc_Info[24408]["Mail"]["Reward"][8]["ActionId"] = 573186
tRankingFunc_Info[24408]["Mail"]["Reward"][8]["ExistDay"] = 7
tRankingFunc_Info[24408]["Mail"]["Reward"][8]["Title"] = tJulyEatchicken_Text[24407]["CiAward"]["Title"]
tRankingFunc_Info[24408]["Mail"]["Reward"][8]["Sender"] = tJulyEatchicken_Text[24407]["CiAward"]["Sender"]
tRankingFunc_Info[24408]["Mail"]["Reward"][8]["Content"] =string.format(tJulyEatchicken_Text[24407]["CiAward"]["Content"][4],8)
tRankingFunc_Info[24408]["Mail"]["Reward"][9] = {}
tRankingFunc_Info[24408]["Mail"]["Reward"][9]["RewardRank"] = 9
tRankingFunc_Info[24408]["Mail"]["Reward"][9]["ActionId"] = 573186
tRankingFunc_Info[24408]["Mail"]["Reward"][9]["ExistDay"] = 7
tRankingFunc_Info[24408]["Mail"]["Reward"][9]["Title"] = tJulyEatchicken_Text[24407]["CiAward"]["Title"]
tRankingFunc_Info[24408]["Mail"]["Reward"][9]["Sender"] = tJulyEatchicken_Text[24407]["CiAward"]["Sender"]
tRankingFunc_Info[24408]["Mail"]["Reward"][9]["Content"] = string.format(tJulyEatchicken_Text[24407]["CiAward"]["Content"][4],9)
tRankingFunc_Info[24408]["Mail"]["Reward"][10] = {}
tRankingFunc_Info[24408]["Mail"]["Reward"][10]["RewardRank"] = 10
tRankingFunc_Info[24408]["Mail"]["Reward"][10]["ActionId"] = 573186
tRankingFunc_Info[24408]["Mail"]["Reward"][10]["ExistDay"] = 7
tRankingFunc_Info[24408]["Mail"]["Reward"][10]["Title"] = tJulyEatchicken_Text[24407]["CiAward"]["Title"]
tRankingFunc_Info[24408]["Mail"]["Reward"][10]["Sender"] = tJulyEatchicken_Text[24407]["CiAward"]["Sender"]
tRankingFunc_Info[24408]["Mail"]["Reward"][10]["Content"] = string.format(tJulyEatchicken_Text[24407]["CiAward"]["Content"][4],10)

-- 总奖励邮寄领取奖励
tRankingFunc_Info[24407]["Mail"] = {}
tRankingFunc_Info[24407]["Mail"]["ActiveTime"] = tJulyEatchicken_Time["ActiveAwardGet"]
tRankingFunc_Info[24407]["Mail"]["RewardTime"] = {}
tRankingFunc_Info[24407]["Mail"]["RewardTime"][1] = "00:00 00:05"
tRankingFunc_Info[24407]["Mail"]["Reward"] = {}
tRankingFunc_Info[24407]["Mail"]["Reward"][1] = {}
tRankingFunc_Info[24407]["Mail"]["Reward"][1]["RewardRank"] = 1
tRankingFunc_Info[24407]["Mail"]["Reward"][1]["ActionId"] = 573273
tRankingFunc_Info[24407]["Mail"]["Reward"][1]["ExistDay"] = 7
tRankingFunc_Info[24407]["Mail"]["Reward"][1]["Title"] = tJulyEatchicken_Text[24407]["ZongAward"]["Title"]
tRankingFunc_Info[24407]["Mail"]["Reward"][1]["Sender"] = tJulyEatchicken_Text[24407]["ZongAward"]["Sender"]
tRankingFunc_Info[24407]["Mail"]["Reward"][1]["Content"] = string.format(tJulyEatchicken_Text[24407]["ZongAward"]["Content"],1)..tJulyEatchicken_Text[24407]["AwardGift"][1]
tRankingFunc_Info[24407]["Mail"]["Reward"][2] = {}
tRankingFunc_Info[24407]["Mail"]["Reward"][2]["RewardRank"] = 2
tRankingFunc_Info[24407]["Mail"]["Reward"][2]["ActionId"] = 573274
tRankingFunc_Info[24407]["Mail"]["Reward"][2]["ExistDay"] = 7
tRankingFunc_Info[24407]["Mail"]["Reward"][2]["Title"] = tJulyEatchicken_Text[24407]["ZongAward"]["Title"]
tRankingFunc_Info[24407]["Mail"]["Reward"][2]["Sender"] = tJulyEatchicken_Text[24407]["ZongAward"]["Sender"]
tRankingFunc_Info[24407]["Mail"]["Reward"][2]["Content"] = string.format(tJulyEatchicken_Text[24407]["ZongAward"]["Content"],2)..tJulyEatchicken_Text[24407]["AwardGift"][2]
tRankingFunc_Info[24407]["Mail"]["Reward"][3] = {}
tRankingFunc_Info[24407]["Mail"]["Reward"][3]["RewardRank"] = 3
tRankingFunc_Info[24407]["Mail"]["Reward"][3]["ActionId"] = 573275
tRankingFunc_Info[24407]["Mail"]["Reward"][3]["ExistDay"] = 7
tRankingFunc_Info[24407]["Mail"]["Reward"][3]["Title"] = tJulyEatchicken_Text[24407]["ZongAward"]["Title"]
tRankingFunc_Info[24407]["Mail"]["Reward"][3]["Sender"] = tJulyEatchicken_Text[24407]["ZongAward"]["Sender"]
tRankingFunc_Info[24407]["Mail"]["Reward"][3]["Content"] = string.format(tJulyEatchicken_Text[24407]["ZongAward"]["Content"],3)..tJulyEatchicken_Text[24407]["AwardGift"][3]
tRankingFunc_Info[24407]["Mail"]["Reward"][4] = {}
tRankingFunc_Info[24407]["Mail"]["Reward"][4]["RewardRank"] = 4
tRankingFunc_Info[24407]["Mail"]["Reward"][4]["ActionId"] = 573276
tRankingFunc_Info[24407]["Mail"]["Reward"][4]["ExistDay"] = 7
tRankingFunc_Info[24407]["Mail"]["Reward"][4]["Title"] = tJulyEatchicken_Text[24407]["ZongAward"]["Title"]
tRankingFunc_Info[24407]["Mail"]["Reward"][4]["Sender"] = tJulyEatchicken_Text[24407]["ZongAward"]["Sender"]
tRankingFunc_Info[24407]["Mail"]["Reward"][4]["Content"] = string.format(tJulyEatchicken_Text[24407]["ZongAward"]["Content"],4)..tJulyEatchicken_Text[24407]["AwardGift"][4]
tRankingFunc_Info[24407]["Mail"]["Reward"][5] = {}
tRankingFunc_Info[24407]["Mail"]["Reward"][5]["RewardRank"] = 5
tRankingFunc_Info[24407]["Mail"]["Reward"][5]["ActionId"] = 573277
tRankingFunc_Info[24407]["Mail"]["Reward"][5]["ExistDay"] = 7
tRankingFunc_Info[24407]["Mail"]["Reward"][5]["Title"] = tJulyEatchicken_Text[24407]["ZongAward"]["Title"]
tRankingFunc_Info[24407]["Mail"]["Reward"][5]["Sender"] = tJulyEatchicken_Text[24407]["ZongAward"]["Sender"]
tRankingFunc_Info[24407]["Mail"]["Reward"][5]["Content"] = string.format(tJulyEatchicken_Text[24407]["ZongAward"]["Content"],5)..tJulyEatchicken_Text[24407]["AwardGift"][5]
tRankingFunc_Info[24407]["Mail"]["Reward"][6] = {}
tRankingFunc_Info[24407]["Mail"]["Reward"][6]["RewardRank"] = 6
tRankingFunc_Info[24407]["Mail"]["Reward"][6]["ActionId"] = 573278
tRankingFunc_Info[24407]["Mail"]["Reward"][6]["ExistDay"] = 7
tRankingFunc_Info[24407]["Mail"]["Reward"][6]["Title"] = tJulyEatchicken_Text[24407]["ZongAward"]["Title"]
tRankingFunc_Info[24407]["Mail"]["Reward"][6]["Sender"] = tJulyEatchicken_Text[24407]["ZongAward"]["Sender"]
tRankingFunc_Info[24407]["Mail"]["Reward"][6]["Content"] = string.format(tJulyEatchicken_Text[24407]["ZongAward"]["Content"],6)..tJulyEatchicken_Text[24407]["AwardGift"][6]
tRankingFunc_Info[24407]["Mail"]["Reward"][7] = {}
tRankingFunc_Info[24407]["Mail"]["Reward"][7]["RewardRank"] = 7
tRankingFunc_Info[24407]["Mail"]["Reward"][7]["ActionId"] = 573279
tRankingFunc_Info[24407]["Mail"]["Reward"][7]["ExistDay"] = 7
tRankingFunc_Info[24407]["Mail"]["Reward"][7]["Title"] = tJulyEatchicken_Text[24407]["ZongAward"]["Title"]
tRankingFunc_Info[24407]["Mail"]["Reward"][7]["Sender"] = tJulyEatchicken_Text[24407]["ZongAward"]["Sender"]
tRankingFunc_Info[24407]["Mail"]["Reward"][7]["Content"] = string.format(tJulyEatchicken_Text[24407]["ZongAward"]["Content"],7)..tJulyEatchicken_Text[24407]["AwardGift"][7]
tRankingFunc_Info[24407]["Mail"]["Reward"][8] = {}
tRankingFunc_Info[24407]["Mail"]["Reward"][8]["RewardRank"] = 8
tRankingFunc_Info[24407]["Mail"]["Reward"][8]["ActionId"] = 573280
tRankingFunc_Info[24407]["Mail"]["Reward"][8]["ExistDay"] = 7
tRankingFunc_Info[24407]["Mail"]["Reward"][8]["Title"] = tJulyEatchicken_Text[24407]["ZongAward"]["Title"]
tRankingFunc_Info[24407]["Mail"]["Reward"][8]["Sender"] = tJulyEatchicken_Text[24407]["ZongAward"]["Sender"]
tRankingFunc_Info[24407]["Mail"]["Reward"][8]["Content"] = string.format(tJulyEatchicken_Text[24407]["ZongAward"]["Content"],8)..tJulyEatchicken_Text[24407]["AwardGift"][8]
tRankingFunc_Info[24407]["Mail"]["Reward"][9] = {}
tRankingFunc_Info[24407]["Mail"]["Reward"][9]["RewardRank"] = 9
tRankingFunc_Info[24407]["Mail"]["Reward"][9]["ActionId"] = 573281
tRankingFunc_Info[24407]["Mail"]["Reward"][9]["ExistDay"] = 7
tRankingFunc_Info[24407]["Mail"]["Reward"][9]["Title"] = tJulyEatchicken_Text[24407]["ZongAward"]["Title"]
tRankingFunc_Info[24407]["Mail"]["Reward"][9]["Sender"] = tJulyEatchicken_Text[24407]["ZongAward"]["Sender"]
tRankingFunc_Info[24407]["Mail"]["Reward"][9]["Content"] = string.format(tJulyEatchicken_Text[24407]["ZongAward"]["Content"],9)..tJulyEatchicken_Text[24407]["AwardGift"][9]
tRankingFunc_Info[24407]["Mail"]["Reward"][10] = {}
tRankingFunc_Info[24407]["Mail"]["Reward"][10]["RewardRank"] = 10
tRankingFunc_Info[24407]["Mail"]["Reward"][10]["ActionId"] = 573282
tRankingFunc_Info[24407]["Mail"]["Reward"][10]["ExistDay"] = 7
tRankingFunc_Info[24407]["Mail"]["Reward"][10]["Title"] = tJulyEatchicken_Text[24407]["ZongAward"]["Title"]
tRankingFunc_Info[24407]["Mail"]["Reward"][10]["Sender"] = tJulyEatchicken_Text[24407]["ZongAward"]["Sender"]
tRankingFunc_Info[24407]["Mail"]["Reward"][10]["Content"] = string.format(tJulyEatchicken_Text[24407]["ZongAward"]["Content"],10)..tJulyEatchicken_Text[24407]["AwardGift"][10]

--临时表记录玩家id
local tJulyEatchicken_Save = {}

--临时表记录玩家杀人id
local tJulyEatchicken_KillSave = {}
-- tJulyEatchicken_KillSave[nUserId] = {KillId,nTime}

--颜色变化
local tJulyEatchicken_ColorChange = {}
tJulyEatchicken_ColorChange[0] = "0xffffff00"
tJulyEatchicken_ColorChange[1] = "0xff7B7B7B" 
tJulyEatchicken_ColorChange[2] = "0xfff05050"

--一共4轮，每轮关闭24,16,8
--关闭最外层的
local tJulyEatchicken_TimeCloseRoom = {}
tJulyEatchicken_TimeCloseRoom[1] = {1,2,3,4,5,6,7,8,14,15,21,22,28,29,35,36,42,43,44,45,46,47,48,49}
tJulyEatchicken_TimeCloseRoom[2] = {9,10,11,12,13,16,20,23,27,30,34,37,38,39,40,41}
tJulyEatchicken_TimeCloseRoom[3] = {17,18,19,24,26,31,32,33}

--可传送的房间
local tJulyEatchicken_TimeCanRoom = {}
tJulyEatchicken_TimeCanRoom[1] = {9,10,11,12,13,16,17,18,19,20,23,24,25,26,27,30,31,32,33,34,37,38,39,40,41}
tJulyEatchicken_TimeCanRoom[2] = {17,18,19,24,25,26,31,32,33}

--杀怪是否有效
local tJulyEatchicken_MonsterId = {}
tJulyEatchicken_MonsterId[0] = {1323,1324,1325,1326,1327,1328,1329,
1330,1331,1332,1333,1334,1335,1336,
1337,1338,1339,1340,1341,1342,1343,
1344,1345,1346,1347,1348,1349,1350,
1351,1352,1353,1354,1355,1356,1357,
1358,1359,1360,1361,1362,1363,1364,
1365,1366,1367,1368,1369,1370,1371}
tJulyEatchicken_MonsterId[1] = {1331,1332,1333,1334,1335,1338,1339,1340,1341,1342,1345,1346,1347,1348,1349,1352,1353,1354,1355,1356,1359,1360,1361,1362,1363}
tJulyEatchicken_MonsterId[2] = {1339,1340,1341,1346,1347,1348,1353,1354,1355}
tJulyEatchicken_MonsterId[3] = {1347}

--传送房间的坐标
local tJulyEatchicken_TimeLocation = {}
tJulyEatchicken_TimeLocation[9] = {296,528}
tJulyEatchicken_TimeLocation[10] = {296,472}
tJulyEatchicken_TimeLocation[11] = {296,412}
tJulyEatchicken_TimeLocation[12] = {296,358}
tJulyEatchicken_TimeLocation[13] = {296,302}
tJulyEatchicken_TimeLocation[16] = {354,528}
tJulyEatchicken_TimeLocation[17] = {354,472}
tJulyEatchicken_TimeLocation[18] = {354,412}
tJulyEatchicken_TimeLocation[19] = {354,358}
tJulyEatchicken_TimeLocation[20] = {354,302}
tJulyEatchicken_TimeLocation[23] = {409,528}
tJulyEatchicken_TimeLocation[24] = {409,472}
tJulyEatchicken_TimeLocation[25] = {409,412}
tJulyEatchicken_TimeLocation[26] = {409,358}
tJulyEatchicken_TimeLocation[27] = {409,302}
tJulyEatchicken_TimeLocation[30] = {467,528}
tJulyEatchicken_TimeLocation[31] = {467,472}
tJulyEatchicken_TimeLocation[32] = {467,412}
tJulyEatchicken_TimeLocation[33] = {467,358}
tJulyEatchicken_TimeLocation[34] = {467,302}
tJulyEatchicken_TimeLocation[37] = {523,528}
tJulyEatchicken_TimeLocation[38] = {523,472}
tJulyEatchicken_TimeLocation[39] = {523,412}
tJulyEatchicken_TimeLocation[40] = {523,358}
tJulyEatchicken_TimeLocation[41] = {523,302}
--阶段礼包发放
local tJulyEatchicken_RankGiftbag = {}
tJulyEatchicken_RankGiftbag[1] = {}
tJulyEatchicken_RankGiftbag[1]["RewardItem"] = {}
tJulyEatchicken_RankGiftbag[1]["RewardItem"][1] = {}
tJulyEatchicken_RankGiftbag[1]["RewardItem"][1]["Id"] = 3313117 
tJulyEatchicken_RankGiftbag[1]["RewardItem"][1]["Attr"] = "0 1"
tJulyEatchicken_RankGiftbag[1]["LogId"] = 12001486
tJulyEatchicken_RankGiftbag[1]["RewardEffect"] = {}
tJulyEatchicken_RankGiftbag[1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tJulyEatchicken_RankGiftbag[1]["RewardEffect"]["Effect"] = "angelwing"
tJulyEatchicken_RankGiftbag[1]["ActionId"] = 573188

tJulyEatchicken_RankGiftbag[2] = {}
tJulyEatchicken_RankGiftbag[2]["RewardItem"] = {}
tJulyEatchicken_RankGiftbag[2]["RewardItem"][1] = {}
tJulyEatchicken_RankGiftbag[2]["RewardItem"][1]["Id"] = 3313118 
tJulyEatchicken_RankGiftbag[2]["RewardItem"][1]["Attr"] = "0 1"
tJulyEatchicken_RankGiftbag[2]["LogId"] = 12001486
tJulyEatchicken_RankGiftbag[2]["RewardEffect"] = {}
tJulyEatchicken_RankGiftbag[2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tJulyEatchicken_RankGiftbag[2]["RewardEffect"]["Effect"] = "angelwing"
tJulyEatchicken_RankGiftbag[2]["ActionId"] = 573189

tJulyEatchicken_RankGiftbag[3] = {}
tJulyEatchicken_RankGiftbag[3]["RewardItem"] = {}
tJulyEatchicken_RankGiftbag[3]["RewardItem"][1] = {}
tJulyEatchicken_RankGiftbag[3]["RewardItem"][1]["Id"] = 3313119 
tJulyEatchicken_RankGiftbag[3]["RewardItem"][1]["Attr"] = "0 1"
tJulyEatchicken_RankGiftbag[3]["LogId"] = 12001486
tJulyEatchicken_RankGiftbag[3]["RewardEffect"] = {}
tJulyEatchicken_RankGiftbag[3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tJulyEatchicken_RankGiftbag[3]["RewardEffect"]["Effect"] = "angelwing"
tJulyEatchicken_RankGiftbag[3]["ActionId"] = 573190

tJulyEatchicken_RankGiftbag[4] = {}
tJulyEatchicken_RankGiftbag[4]["RewardItem"] = {}
tJulyEatchicken_RankGiftbag[4]["RewardItem"][1] = {}
tJulyEatchicken_RankGiftbag[4]["RewardItem"][1]["Id"] = 3313116 
tJulyEatchicken_RankGiftbag[4]["RewardItem"][1]["Attr"] = "0 1"
tJulyEatchicken_RankGiftbag[4]["LogId"] = 12001486
tJulyEatchicken_RankGiftbag[4]["RewardEffect"] = {}
tJulyEatchicken_RankGiftbag[4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tJulyEatchicken_RankGiftbag[4]["RewardEffect"]["Effect"] = "angelwing"
tJulyEatchicken_RankGiftbag[4]["ActionId"] = 573187

--buff礼包打开
tJulyEatchicken_RankGiftbag[5] = {}
tJulyEatchicken_RankGiftbag[5]["RewardItem"] = {}
tJulyEatchicken_RankGiftbag[5]["RewardItem"][1] = {}
tJulyEatchicken_RankGiftbag[5]["RewardItem"][1]["Id"] = 3322624 
tJulyEatchicken_RankGiftbag[5]["RewardItem"][1]["Attr"] = "0 1"
tJulyEatchicken_RankGiftbag[5]["LogId"] = 12001486
tJulyEatchicken_RankGiftbag[5]["RewardEffect"] = {}
tJulyEatchicken_RankGiftbag[5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tJulyEatchicken_RankGiftbag[5]["RewardEffect"]["Effect"] = "angelwing"
tJulyEatchicken_RankGiftbag[5]["ActionId"] = 573501

--房间的globalid
--当前位置globalid,pos 左globalid,pos 上globalid,pos 右globalid,pos 下globalid,pos
local tJulyEatchicken_GlobalSave = {}
tJulyEatchicken_GlobalSave[1] = {53448,0,nil,nil,nil,nil,53448,1,53450,0}
tJulyEatchicken_GlobalSave[2] = {53448,1,53448,0,nil,nil,53448,2,53450,1}
tJulyEatchicken_GlobalSave[3] = {53448,2,53448,1,nil,nil,53448,3,53450,2}
tJulyEatchicken_GlobalSave[4] = {53448,3,53448,2,nil,nil,53448,4,53450,3}
tJulyEatchicken_GlobalSave[5] = {53448,4,53448,3,nil,nil,53448,5,53450,4}
tJulyEatchicken_GlobalSave[6] = {53448,5,53448,4,nil,nil,53449,0,53450,5}
tJulyEatchicken_GlobalSave[7] = {53449,0,53448,5,nil,nil,nil,nil,53451,0}

tJulyEatchicken_GlobalSave[8] = {53450,0,nil,nil,53448,0,53450,1,53452,0}
tJulyEatchicken_GlobalSave[9] = {53450,1,53450,0,53448,1,53450,2,53452,1}
tJulyEatchicken_GlobalSave[10] = {53450,2,53450,1,53448,2,53450,3,53452,2}
tJulyEatchicken_GlobalSave[11] = {53450,3,53450,2,53448,3,53450,4,53452,3}
tJulyEatchicken_GlobalSave[12] = {53450,4,53450,3,53448,4,53450,5,53452,4}
tJulyEatchicken_GlobalSave[13] = {53450,5,53450,4,53448,5,53451,0,53452,5}
tJulyEatchicken_GlobalSave[14] = {53451,0,53450,5,53449,0,nil,nil,53453,0}

tJulyEatchicken_GlobalSave[15] = {53452,0,nil,nil,53450,0,53452,1,53454,0}
tJulyEatchicken_GlobalSave[16] = {53452,1,53452,0,53450,1,53452,2,53454,1}
tJulyEatchicken_GlobalSave[17] = {53452,2,53452,1,53450,2,53452,3,53454,2}
tJulyEatchicken_GlobalSave[18] = {53452,3,53452,2,53450,3,53452,4,53454,3}
tJulyEatchicken_GlobalSave[19] = {53452,4,53452,3,53450,4,53452,5,53454,4}
tJulyEatchicken_GlobalSave[20] = {53452,5,53452,4,53450,5,53453,0,53454,5}
tJulyEatchicken_GlobalSave[21] = {53453,0,53452,5,53451,0,nil,nil,53455,0}

tJulyEatchicken_GlobalSave[22] = {53454,0,nil,nil,53452,0,53454,1,53456,0}
tJulyEatchicken_GlobalSave[23] = {53454,1,53454,0,53452,1,53454,2,53456,1}
tJulyEatchicken_GlobalSave[24] = {53454,2,53454,1,53452,2,53454,3,53456,2}
tJulyEatchicken_GlobalSave[25] = {53454,3,53454,2,53452,3,53454,4,53456,3}
tJulyEatchicken_GlobalSave[26] = {53454,4,53454,3,53452,4,53454,5,53456,4}
tJulyEatchicken_GlobalSave[27] = {53454,5,53454,4,53452,5,53455,0,53456,5}
tJulyEatchicken_GlobalSave[28] = {53455,0,53454,5,53453,0,nil,nil,53461,0}

tJulyEatchicken_GlobalSave[29] = {53456,0,nil,nil,53454,0,53456,1,53462,0}
tJulyEatchicken_GlobalSave[30] = {53456,1,53456,0,53454,1,53456,2,53462,1}
tJulyEatchicken_GlobalSave[31] = {53456,2,53456,1,53454,2,53456,3,53462,2}
tJulyEatchicken_GlobalSave[32] = {53456,3,53456,2,53454,3,53456,4,53462,3}
tJulyEatchicken_GlobalSave[33] = {53456,4,53456,3,53454,4,53456,5,53462,4}
tJulyEatchicken_GlobalSave[34] = {53456,5,53456,4,53454,5,53461,0,53462,5}
tJulyEatchicken_GlobalSave[35] = {53461,0,53456,5,53455,0,nil,nil,53463,0}

tJulyEatchicken_GlobalSave[36] = {53462,0,nil,nil,53456,0,53462,1,53464,0}
tJulyEatchicken_GlobalSave[37] = {53462,1,53462,0,53456,1,53462,2,53464,1}
tJulyEatchicken_GlobalSave[38] = {53462,2,53462,1,53456,2,53462,3,53464,2}
tJulyEatchicken_GlobalSave[39] = {53462,3,53462,2,53456,3,53462,4,53464,3}
tJulyEatchicken_GlobalSave[40] = {53462,4,53462,3,53456,4,53462,5,53464,4}
tJulyEatchicken_GlobalSave[41] = {53462,5,53462,4,53456,5,53463,0,53464,5}
tJulyEatchicken_GlobalSave[42] = {53463,0,53462,5,53461,0,nil,nil,53465,0}

tJulyEatchicken_GlobalSave[43] = {53464,0,nil,nil,53462,0,53464,1,nil,nil}
tJulyEatchicken_GlobalSave[44] = {53464,1,53464,0,53462,1,53464,2,nil,nil}
tJulyEatchicken_GlobalSave[45] = {53464,2,53464,1,53462,2,53464,3,nil,nil}
tJulyEatchicken_GlobalSave[46] = {53464,3,53464,2,53462,3,53464,4,nil,nil}
tJulyEatchicken_GlobalSave[47] = {53464,4,53464,3,53462,4,53464,5,nil,nil}
tJulyEatchicken_GlobalSave[48] = {53464,5,53464,4,53462,5,53465,0,nil,nil}
tJulyEatchicken_GlobalSave[49] = {53465,0,53464,5,53463,0,nil,nil,nil,nil}

--房子的globalid
local tJulyEatchicken_RoomGlobalId = {}
tJulyEatchicken_RoomGlobalId[1] = 53448
tJulyEatchicken_RoomGlobalId[2] = 53449
tJulyEatchicken_RoomGlobalId[3] = 53450
tJulyEatchicken_RoomGlobalId[4] = 53451
tJulyEatchicken_RoomGlobalId[5] = 53452
tJulyEatchicken_RoomGlobalId[6] = 53453
tJulyEatchicken_RoomGlobalId[7] = 53454
tJulyEatchicken_RoomGlobalId[8] = 53455
tJulyEatchicken_RoomGlobalId[9] = 53456
tJulyEatchicken_RoomGlobalId[10] = 53461
tJulyEatchicken_RoomGlobalId[11] = 53462
tJulyEatchicken_RoomGlobalId[12] = 53463
tJulyEatchicken_RoomGlobalId[13] = 53464
tJulyEatchicken_RoomGlobalId[14] = 53465



--增益符状态配置
local tJulyEatchicken_Item = {}
	tJulyEatchicken_Item["MiniBuff"] = {}
	tJulyEatchicken_Item["MiniBuff"][1] = 143	-- 最终物理伤害加成 +3000
	tJulyEatchicken_Item["MiniBuff"][2] = 144	-- 最终法术伤害加成 +3000
	tJulyEatchicken_Item["MiniBuff"][3] = 141	-- 最终物理伤害减免 +3000
	tJulyEatchicken_Item["MiniBuff"][4] = 142	-- 最终法术伤害减免 +3000
	tJulyEatchicken_Item["MiniBuff"][5] = 133	-- 物理暴击 +150%
	tJulyEatchicken_Item["MiniBuff"][6] = 134	-- 法术暴击 +150%
	tJulyEatchicken_Item["MiniBuff"][7] = 136	-- 增加粉碎攻击率 +150%
	tJulyEatchicken_Item["MiniBuff"][8] = 137	-- 增加坚固防御率 +150%
	tJulyEatchicken_Item["MiniBuff"][9] = 135	-- 增加抵暴击率 +150%
	tJulyEatchicken_Item["MiniBuff"][143] = 3000
	tJulyEatchicken_Item["MiniBuff"][144] = 3000
	tJulyEatchicken_Item["MiniBuff"][141] = 3000
	tJulyEatchicken_Item["MiniBuff"][142] = 3000
	tJulyEatchicken_Item["MiniBuff"][133] = 150
	tJulyEatchicken_Item["MiniBuff"][134] = 150
	tJulyEatchicken_Item["MiniBuff"][136] = 150
	tJulyEatchicken_Item["MiniBuff"][137] = 150
	tJulyEatchicken_Item["MiniBuff"][135] = 150
	tJulyEatchicken_Item["Secs"] = 86400
	tJulyEatchicken_Item["Times"] = 1
	tJulyEatchicken_Item["RemainTime"] = 86400
	tJulyEatchicken_Item["EndTime"] = 1
	tJulyEatchicken_Item["Recordable"] = 0
	tJulyEatchicken_Item["Self"] = "self"
	tJulyEatchicken_Item["Effect"] = "zf2-e127"	
	tJulyEatchicken_Item["TransLog"] = "0,0,%d,1,12001486,0,0"
	


local tJulyEatchicken_RewardItem = {}
--阶段礼包奖励
	tJulyEatchicken_RewardItem[24407] = {}
	tJulyEatchicken_RewardItem[24407][1] = {}
	tJulyEatchicken_RewardItem[24407][1]["LogId"] = 12001486
	tJulyEatchicken_RewardItem[24407][1]["RewardStrengthValue"] = {}
	tJulyEatchicken_RewardItem[24407][1]["RewardStrengthValue"]["Value"] = 500 -- 气力值, 【需求】500气力值
	tJulyEatchicken_RewardItem[24407][1]["RewardEffect"] = {}
	tJulyEatchicken_RewardItem[24407][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyEatchicken_RewardItem[24407][1]["RewardEffect"]["Effect"] = "angelwing"
	
	tJulyEatchicken_RewardItem[24407][2] = {}
	tJulyEatchicken_RewardItem[24407][2]["LogId"] = 12001486
	tJulyEatchicken_RewardItem[24407][2]["RewardCultivation"] = {}
	tJulyEatchicken_RewardItem[24407][2]["RewardCultivation"]["Value"] = 1000 -- 修行值, 【需求】1000修行值
	tJulyEatchicken_RewardItem[24407][2]["RewardEffect"] = {}
	tJulyEatchicken_RewardItem[24407][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyEatchicken_RewardItem[24407][2]["RewardEffect"]["Effect"] = "angelwing"
	
	tJulyEatchicken_RewardItem[24407][3] = {}
	tJulyEatchicken_RewardItem[24407][3]["LogId"] = 12001486
	tJulyEatchicken_RewardItem[24407][3]["RewardRepairValue"] = {}
	tJulyEatchicken_RewardItem[24407][3]["RewardRepairValue"]["Value"] = 2000 -- 修为值, 【需求】2000修为值
	tJulyEatchicken_RewardItem[24407][3]["RewardEffect"] = {}
	tJulyEatchicken_RewardItem[24407][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyEatchicken_RewardItem[24407][3]["RewardEffect"]["Effect"] = "angelwing"
	
	tJulyEatchicken_RewardItem[24407][4] = {}
	tJulyEatchicken_RewardItem[24407][4]["LogId"] = 12001486
	tJulyEatchicken_RewardItem[24407][4]["RewardStrengthValue"] = {}
	tJulyEatchicken_RewardItem[24407][4]["RewardStrengthValue"]["Value"] = 3000 -- 气力值, 【需求】3000气力值
	tJulyEatchicken_RewardItem[24407][4]["RewardEffect"] = {}
	tJulyEatchicken_RewardItem[24407][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyEatchicken_RewardItem[24407][4]["RewardEffect"]["Effect"] = "angelwing"
	
	tJulyEatchicken_RewardItem[24407][5] = {}
	tJulyEatchicken_RewardItem[24407][5]["LogId"] = 12001486
	tJulyEatchicken_RewardItem[24407][5]["RewardCultivation"] = {}
	tJulyEatchicken_RewardItem[24407][5]["RewardCultivation"]["Value"] = 5000 -- 修行值, 【需求】5000修行值
	tJulyEatchicken_RewardItem[24407][5]["RewardEffect"] = {}
	tJulyEatchicken_RewardItem[24407][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyEatchicken_RewardItem[24407][5]["RewardEffect"]["Effect"] = "angelwing"
	
	tJulyEatchicken_RewardItem[24407][6] = {}
	tJulyEatchicken_RewardItem[24407][6]["LogId"] = 12001486
	tJulyEatchicken_RewardItem[24407][6]["RewardRepairValue"] = {}
	tJulyEatchicken_RewardItem[24407][6]["RewardRepairValue"]["Value"] = 8000 -- 修为值, 【需求】8000修为值
	tJulyEatchicken_RewardItem[24407][6]["RewardEffect"] = {}
	tJulyEatchicken_RewardItem[24407][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyEatchicken_RewardItem[24407][6]["RewardEffect"]["Effect"] = "angelwing"
	
	tJulyEatchicken_RewardItem[24407][7] = {}
	tJulyEatchicken_RewardItem[24407][7]["LogId"] = 12001486
	tJulyEatchicken_RewardItem[24407][7]["RewardStrengthValue"] = {}
	tJulyEatchicken_RewardItem[24407][7]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】10000气力值
	tJulyEatchicken_RewardItem[24407][7]["RewardEffect"] = {}
	tJulyEatchicken_RewardItem[24407][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyEatchicken_RewardItem[24407][7]["RewardEffect"]["Effect"] = "angelwing"
	
	tJulyEatchicken_RewardItem[24407][8] = {}
	tJulyEatchicken_RewardItem[24407][8]["LogId"] = 12001486
	tJulyEatchicken_RewardItem[24407][8]["RewardCultivation"] = {}
	tJulyEatchicken_RewardItem[24407][8]["RewardCultivation"]["Value"] = 15000 -- 修行值, 【需求】15000修行值
	tJulyEatchicken_RewardItem[24407][8]["RewardEffect"] = {}
	tJulyEatchicken_RewardItem[24407][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyEatchicken_RewardItem[24407][8]["RewardEffect"]["Effect"] = "angelwing"
	
	tJulyEatchicken_RewardItem[24407][9] = {}
	tJulyEatchicken_RewardItem[24407][9]["LogId"] = 12001486
	tJulyEatchicken_RewardItem[24407][9]["RewardRepairValue"] = {}
	tJulyEatchicken_RewardItem[24407][9]["RewardRepairValue"]["Value"] = 20000 -- 修为值, 【需求】20000修为值
	tJulyEatchicken_RewardItem[24407][9]["RewardEffect"] = {}
	tJulyEatchicken_RewardItem[24407][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyEatchicken_RewardItem[24407][9]["RewardEffect"]["Effect"] = "angelwing"


--礼包奖励

	-- ===生存之王礼包
	-- ===索引: tJulyEatchicken_RewardItem[3313112]
	-- ===删除: 3313112,1
	tJulyEatchicken_RewardItem[3313112] = {}
	tJulyEatchicken_RewardItem[3313112]["LogId"] = 12001486
	tJulyEatchicken_RewardItem[3313112]["DeleteItem"] = {}
	tJulyEatchicken_RewardItem[3313112]["DeleteItem"][1] = {}
	tJulyEatchicken_RewardItem[3313112]["DeleteItem"][1]["Id"] = 3313112 -- 【库】 3313112 【库里没有该物品】[属性:]
	tJulyEatchicken_RewardItem[3313112]["RewardItem"] = {}
	tJulyEatchicken_RewardItem[3313112]["RewardItem"][1] = {}
	tJulyEatchicken_RewardItem[3313112]["RewardItem"][1]["Id"] = 3009100 -- 【库】人参果[属性:9], 【表格】人参果
	tJulyEatchicken_RewardItem[3313112]["RewardItem"][1]["Attr"] = "0 30" -- 人参果*30
	tJulyEatchicken_RewardItem[3313112]["RewardStrengthValue"] = {}
	tJulyEatchicken_RewardItem[3313112]["RewardStrengthValue"]["Value"] = 3000 -- 气力值, 【需求】3000气力值
	tJulyEatchicken_RewardItem[3313112]["RewardItem"][2] = {}
	tJulyEatchicken_RewardItem[3313112]["RewardItem"][2]["Id"] = 4200005 -- 【库】5阶灵珠[属性:72], 【表格】5阶灵珠
	tJulyEatchicken_RewardItem[3313112]["RewardItem"][2]["Attr"] = "0 1" -- 5阶灵珠*1
	tJulyEatchicken_RewardItem[3313112]["RewardItem"][2]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tJulyEatchicken_RewardItem[3313112]["RewardEffect"] = {}
	tJulyEatchicken_RewardItem[3313112]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyEatchicken_RewardItem[3313112]["RewardEffect"]["Effect"] = "angelwing"
	tJulyEatchicken_RewardItem[3313112][1] = {}
	tJulyEatchicken_RewardItem[3313112][1]["RewardItem"] = {}
	tJulyEatchicken_RewardItem[3313112][1]["RewardItem"][1] = {}
	tJulyEatchicken_RewardItem[3313112][1]["RewardItem"][1]["Id"] = 3321107 -- 【库】炼魂石
	tJulyEatchicken_RewardItem[3313112][1]["RewardItem"][1]["Attr"] = "0 10" -- 炼魂石*10
	tJulyEatchicken_RewardItem[3313112][1]["LogId"] = 12001486

	tJulyEatchicken_RewardItem[3313113] = {}
	-- ===生存翘楚礼包
	-- ===索引: tJulyEatchicken_RewardItem[3313113]
	-- ===删除: 3313113,1
	tJulyEatchicken_RewardItem[3313113]["LogId"] = 12001486
	tJulyEatchicken_RewardItem[3313113]["DeleteItem"] = {}
	tJulyEatchicken_RewardItem[3313113]["DeleteItem"][1] = {}
	tJulyEatchicken_RewardItem[3313113]["DeleteItem"][1]["Id"] = 3313113 -- 【库】 3313113 【库里没有该物品】[属性:]
	tJulyEatchicken_RewardItem[3313113]["RewardItem"] = {}
	tJulyEatchicken_RewardItem[3313113]["RewardItem"][1] = {}
	tJulyEatchicken_RewardItem[3313113]["RewardItem"][1]["Id"] = 3009100 -- 【库】人参果[属性:9], 【表格】人参果
	tJulyEatchicken_RewardItem[3313113]["RewardItem"][1]["Attr"] = "0 25" -- 人参果*25
	tJulyEatchicken_RewardItem[3313113]["RewardStrengthValue"] = {}
	tJulyEatchicken_RewardItem[3313113]["RewardStrengthValue"]["Value"] = 2500 -- 气力值, 【需求】2500气力值
	tJulyEatchicken_RewardItem[3313113]["RewardItem"][2] = {}
	tJulyEatchicken_RewardItem[3313113]["RewardItem"][2]["Id"] = 4200004 -- 【库】4阶灵珠[属性:72], 【表格】4阶灵珠
	tJulyEatchicken_RewardItem[3313113]["RewardItem"][2]["Attr"] = "0 1" -- 4阶灵珠*1
	tJulyEatchicken_RewardItem[3313113]["RewardItem"][2]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tJulyEatchicken_RewardItem[3313113]["RewardEffect"] = {}
	tJulyEatchicken_RewardItem[3313113]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyEatchicken_RewardItem[3313113]["RewardEffect"]["Effect"] = "angelwing"
	tJulyEatchicken_RewardItem[3313113][1] = {}
	tJulyEatchicken_RewardItem[3313113][1]["RewardItem"] = {}
	tJulyEatchicken_RewardItem[3313113][1]["RewardItem"][1] = {}
	tJulyEatchicken_RewardItem[3313113][1]["RewardItem"][1]["Id"] = 3321107 -- 【库】炼魂石
	tJulyEatchicken_RewardItem[3313113][1]["RewardItem"][1]["Attr"] = "0 5" -- 炼魂石*5
	tJulyEatchicken_RewardItem[3313113][1]["LogId"] = 12001486


	tJulyEatchicken_RewardItem[3313114] = {}
	-- ===生存精英礼包
	-- ===索引: tJulyEatchicken_RewardItem[3313114]
	-- ===删除: 3313114,1
	tJulyEatchicken_RewardItem[3313114]["LogId"] = 12001486
	tJulyEatchicken_RewardItem[3313114]["DeleteItem"] = {}
	tJulyEatchicken_RewardItem[3313114]["DeleteItem"][1] = {}
	tJulyEatchicken_RewardItem[3313114]["DeleteItem"][1]["Id"] = 3313114 -- 【库】 3313114 【库里没有该物品】[属性:]
	tJulyEatchicken_RewardItem[3313114]["RewardItem"] = {}
	tJulyEatchicken_RewardItem[3313114]["RewardItem"][1] = {}
	tJulyEatchicken_RewardItem[3313114]["RewardItem"][1]["Id"] = 3009100 -- 【库】人参果[属性:9], 【表格】人参果
	tJulyEatchicken_RewardItem[3313114]["RewardItem"][1]["Attr"] = "0 20" -- 人参果*20
	tJulyEatchicken_RewardItem[3313114]["RewardStrengthValue"] = {}
	tJulyEatchicken_RewardItem[3313114]["RewardStrengthValue"]["Value"] = 2000 -- 气力值, 【需求】2000气力值
	tJulyEatchicken_RewardItem[3313114]["RewardItem"][2] = {}
	tJulyEatchicken_RewardItem[3313114]["RewardItem"][2]["Id"] = 4200003 -- 【库】3阶灵珠[属性:72], 【表格】3阶灵珠
	tJulyEatchicken_RewardItem[3313114]["RewardItem"][2]["Attr"] = "0 1" -- 3阶灵珠*1
	tJulyEatchicken_RewardItem[3313114]["RewardItem"][2]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tJulyEatchicken_RewardItem[3313114]["RewardEffect"] = {}
	tJulyEatchicken_RewardItem[3313114]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyEatchicken_RewardItem[3313114]["RewardEffect"]["Effect"] = "angelwing"
	tJulyEatchicken_RewardItem[3313114][1] = {}
	tJulyEatchicken_RewardItem[3313114][1]["RewardItem"] = {}
	tJulyEatchicken_RewardItem[3313114][1]["RewardItem"][1] = {}
	tJulyEatchicken_RewardItem[3313114][1]["RewardItem"][1]["Id"] = 3321107 -- 【库】炼魂石
	tJulyEatchicken_RewardItem[3313114][1]["RewardItem"][1]["Attr"] = "0 2" -- 炼魂石*2
	tJulyEatchicken_RewardItem[3313114][1]["LogId"] = 12001486


	tJulyEatchicken_RewardItem[3313115] = {}
	-- ===幸存者礼包
	-- ===索引: tJulyEatchicken_RewardItem[3313115]
	-- ===删除: 3313115,1
	tJulyEatchicken_RewardItem[3313115]["LogId"] = 12001486
	tJulyEatchicken_RewardItem[3313115]["DeleteItem"] = {}
	tJulyEatchicken_RewardItem[3313115]["DeleteItem"][1] = {}
	tJulyEatchicken_RewardItem[3313115]["DeleteItem"][1]["Id"] = 3313115 -- 【库】 3313115 【库里没有该物品】[属性:]
	tJulyEatchicken_RewardItem[3313115]["RewardItem"] = {}
	tJulyEatchicken_RewardItem[3313115]["RewardItem"][1] = {}
	tJulyEatchicken_RewardItem[3313115]["RewardItem"][1]["Id"] = 3009100 -- 【库】人参果[属性:9], 【表格】人参果
	tJulyEatchicken_RewardItem[3313115]["RewardItem"][1]["Attr"] = "0 15" -- 人参果*15
	tJulyEatchicken_RewardItem[3313115]["RewardStrengthValue"] = {}
	tJulyEatchicken_RewardItem[3313115]["RewardStrengthValue"]["Value"] = 1500 -- 气力值, 【需求】1500气力值
	tJulyEatchicken_RewardItem[3313115]["RewardItem"][2] = {}
	tJulyEatchicken_RewardItem[3313115]["RewardItem"][2]["Id"] = 4200002 -- 【库】2阶灵珠[属性:72], 【表格】2阶灵珠
	tJulyEatchicken_RewardItem[3313115]["RewardItem"][2]["Attr"] = "0 1" -- 2阶灵珠*1
	tJulyEatchicken_RewardItem[3313115]["RewardItem"][2]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tJulyEatchicken_RewardItem[3313115]["RewardEffect"] = {}
	tJulyEatchicken_RewardItem[3313115]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyEatchicken_RewardItem[3313115]["RewardEffect"]["Effect"] = "angelwing"
	tJulyEatchicken_RewardItem[3313115][1] = {}
	tJulyEatchicken_RewardItem[3313115][1]["RewardItem"] = {}
	tJulyEatchicken_RewardItem[3313115][1]["RewardItem"][1] = {}
	tJulyEatchicken_RewardItem[3313115][1]["RewardItem"][1]["Id"] = 3321107 -- 【库】炼魂石
	tJulyEatchicken_RewardItem[3313115][1]["RewardItem"][1]["Attr"] = "0 1" -- 炼魂石*1
	tJulyEatchicken_RewardItem[3313115][1]["LogId"] = 12001486


	tJulyEatchicken_RewardItem[3313116] = {}
	-- ===一阶生存礼包
	-- ===索引: tJulyEatchicken_RewardItem[3313116]
	-- ===删除: 3313116,1
	tJulyEatchicken_RewardItem[3313116]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tJulyEatchicken_RewardItem[3313116]["DeleteItem"] = {}
	tJulyEatchicken_RewardItem[3313116]["DeleteItem"][1] = {}
	tJulyEatchicken_RewardItem[3313116]["DeleteItem"][1]["Id"] = 3313116 -- 【库】 3313116 【库里没有该物品】[属性:]
	tJulyEatchicken_RewardItem[3313116]["LogId"] = 12001486
	tJulyEatchicken_RewardItem[3313116]["Grade"] = 10
	-- 人参果 - 45.00%
	tJulyEatchicken_RewardItem[3313116][1] = {}
	tJulyEatchicken_RewardItem[3313116][1]["RandomItemChanceType"] = 2
	tJulyEatchicken_RewardItem[3313116][1]["ItemChance"] = 4500
	tJulyEatchicken_RewardItem[3313116][1]["RewardItem"] = {}
	tJulyEatchicken_RewardItem[3313116][1]["RewardItem"][1] = {}
	tJulyEatchicken_RewardItem[3313116][1]["RewardItem"][1]["Id"] = 3009100 -- 【库】人参果[属性:9], 【表格】人参果
	tJulyEatchicken_RewardItem[3313116][1]["RewardItem"][1]["Attr"] = "0 1" -- 人参果*1
	tJulyEatchicken_RewardItem[3313116][1]["RewardEffect"] = {}
	tJulyEatchicken_RewardItem[3313116][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyEatchicken_RewardItem[3313116][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 修行值 - 10.00%
	tJulyEatchicken_RewardItem[3313116][2] = {}
	tJulyEatchicken_RewardItem[3313116][2]["RandomItemChanceType"] = 2
	tJulyEatchicken_RewardItem[3313116][2]["ItemChance"] = 1000
	tJulyEatchicken_RewardItem[3313116][2]["RewardCultivation"] = {}
	tJulyEatchicken_RewardItem[3313116][2]["RewardCultivation"]["Value"] = 300 -- 修行值, 【需求】修行值
	tJulyEatchicken_RewardItem[3313116][2]["RewardEffect"] = {}
	tJulyEatchicken_RewardItem[3313116][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyEatchicken_RewardItem[3313116][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 修为值 - 45.00%
	tJulyEatchicken_RewardItem[3313116][3] = {}
	tJulyEatchicken_RewardItem[3313116][3]["RandomItemChanceType"] = 2
	tJulyEatchicken_RewardItem[3313116][3]["ItemChance"] = 4500
	tJulyEatchicken_RewardItem[3313116][3]["RewardRepairValue"] = {}
	tJulyEatchicken_RewardItem[3313116][3]["RewardRepairValue"]["Value"] = 100 -- 修为值, 【需求】修为值
	tJulyEatchicken_RewardItem[3313116][3]["RewardEffect"] = {}
	tJulyEatchicken_RewardItem[3313116][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyEatchicken_RewardItem[3313116][3]["RewardEffect"]["Effect"] = "angelwing"


	tJulyEatchicken_RewardItem[3313117] = {}
	-- ===二阶生存礼包
	-- ===索引: tJulyEatchicken_RewardItem[3313117]
	-- ===删除: 3313117,1
	tJulyEatchicken_RewardItem[3313117]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tJulyEatchicken_RewardItem[3313117]["DeleteItem"] = {}
	tJulyEatchicken_RewardItem[3313117]["DeleteItem"][1] = {}
	tJulyEatchicken_RewardItem[3313117]["DeleteItem"][1]["Id"] = 3313117 -- 【库】 3313117 【库里没有该物品】[属性:]
	tJulyEatchicken_RewardItem[3313117]["LogId"] = 12001486
	tJulyEatchicken_RewardItem[3313117]["Grade"] = 30
	-- 人参果 - 45.00%
	tJulyEatchicken_RewardItem[3313117][1] = {}
	tJulyEatchicken_RewardItem[3313117][1]["RandomItemChanceType"] = 2
	tJulyEatchicken_RewardItem[3313117][1]["ItemChance"] = 4500
	tJulyEatchicken_RewardItem[3313117][1]["RewardItem"] = {}
	tJulyEatchicken_RewardItem[3313117][1]["RewardItem"][1] = {}
	tJulyEatchicken_RewardItem[3313117][1]["RewardItem"][1]["Id"] = 3009100 -- 【库】人参果[属性:9], 【表格】人参果
	tJulyEatchicken_RewardItem[3313117][1]["RewardItem"][1]["Attr"] = "0 2" -- 人参果*2
	tJulyEatchicken_RewardItem[3313117][1]["RewardEffect"] = {}
	tJulyEatchicken_RewardItem[3313117][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyEatchicken_RewardItem[3313117][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 修行值 - 10.00%
	tJulyEatchicken_RewardItem[3313117][2] = {}
	tJulyEatchicken_RewardItem[3313117][2]["RandomItemChanceType"] = 2
	tJulyEatchicken_RewardItem[3313117][2]["ItemChance"] = 1000
	tJulyEatchicken_RewardItem[3313117][2]["RewardCultivation"] = {}
	tJulyEatchicken_RewardItem[3313117][2]["RewardCultivation"]["Value"] = 500 -- 修行值, 【需求】修行值
	tJulyEatchicken_RewardItem[3313117][2]["RewardEffect"] = {}
	tJulyEatchicken_RewardItem[3313117][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyEatchicken_RewardItem[3313117][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 修为值 - 45.00%
	tJulyEatchicken_RewardItem[3313117][3] = {}
	tJulyEatchicken_RewardItem[3313117][3]["RandomItemChanceType"] = 2
	tJulyEatchicken_RewardItem[3313117][3]["ItemChance"] = 4500
	tJulyEatchicken_RewardItem[3313117][3]["RewardRepairValue"] = {}
	tJulyEatchicken_RewardItem[3313117][3]["RewardRepairValue"]["Value"] = 300 -- 修为值, 【需求】修为值
	tJulyEatchicken_RewardItem[3313117][3]["RewardEffect"] = {}
	tJulyEatchicken_RewardItem[3313117][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyEatchicken_RewardItem[3313117][3]["RewardEffect"]["Effect"] = "angelwing"


	tJulyEatchicken_RewardItem[3313118] = {}
	-- ===三阶生存礼包
	-- ===索引: tJulyEatchicken_RewardItem[3313118]
	-- ===删除: 3313118,1
	tJulyEatchicken_RewardItem[3313118]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tJulyEatchicken_RewardItem[3313118]["DeleteItem"] = {}
	tJulyEatchicken_RewardItem[3313118]["DeleteItem"][1] = {}
	tJulyEatchicken_RewardItem[3313118]["DeleteItem"][1]["Id"] = 3313118 -- 【库】 3313118 【库里没有该物品】[属性:]
	tJulyEatchicken_RewardItem[3313118]["LogId"] = 12001486
	tJulyEatchicken_RewardItem[3313118]["Grade"] = 50
	-- 人参果 - 45.00%
	tJulyEatchicken_RewardItem[3313118][1] = {}
	tJulyEatchicken_RewardItem[3313118][1]["RandomItemChanceType"] = 2
	tJulyEatchicken_RewardItem[3313118][1]["ItemChance"] = 4500
	tJulyEatchicken_RewardItem[3313118][1]["RewardItem"] = {}
	tJulyEatchicken_RewardItem[3313118][1]["RewardItem"][1] = {}
	tJulyEatchicken_RewardItem[3313118][1]["RewardItem"][1]["Id"] = 3009100 -- 【库】人参果[属性:9], 【表格】人参果
	tJulyEatchicken_RewardItem[3313118][1]["RewardItem"][1]["Attr"] = "0 3" -- 人参果*3
	tJulyEatchicken_RewardItem[3313118][1]["RewardEffect"] = {}
	tJulyEatchicken_RewardItem[3313118][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyEatchicken_RewardItem[3313118][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 修行值 - 10.00%
	tJulyEatchicken_RewardItem[3313118][2] = {}
	tJulyEatchicken_RewardItem[3313118][2]["RandomItemChanceType"] = 2
	tJulyEatchicken_RewardItem[3313118][2]["ItemChance"] = 1000
	tJulyEatchicken_RewardItem[3313118][2]["RewardCultivation"] = {}
	tJulyEatchicken_RewardItem[3313118][2]["RewardCultivation"]["Value"] = 800 -- 修行值, 【需求】修行值
	tJulyEatchicken_RewardItem[3313118][2]["RewardEffect"] = {}
	tJulyEatchicken_RewardItem[3313118][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyEatchicken_RewardItem[3313118][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 修为值 - 45.00%
	tJulyEatchicken_RewardItem[3313118][3] = {}
	tJulyEatchicken_RewardItem[3313118][3]["RandomItemChanceType"] = 2
	tJulyEatchicken_RewardItem[3313118][3]["ItemChance"] = 4500
	tJulyEatchicken_RewardItem[3313118][3]["RewardRepairValue"] = {}
	tJulyEatchicken_RewardItem[3313118][3]["RewardRepairValue"]["Value"] = 500 -- 修为值, 【需求】修为值
	tJulyEatchicken_RewardItem[3313118][3]["RewardEffect"] = {}
	tJulyEatchicken_RewardItem[3313118][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyEatchicken_RewardItem[3313118][3]["RewardEffect"]["Effect"] = "angelwing"


	tJulyEatchicken_RewardItem[3313119] = {}
	-- ===四阶生存礼包
	-- ===索引: tJulyEatchicken_RewardItem[3313119]
	-- ===删除: 3313119,1
	tJulyEatchicken_RewardItem[3313119]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tJulyEatchicken_RewardItem[3313119]["DeleteItem"] = {}
	tJulyEatchicken_RewardItem[3313119]["DeleteItem"][1] = {}
	tJulyEatchicken_RewardItem[3313119]["DeleteItem"][1]["Id"] = 3313119 -- 【库】 3313119 【库里没有该物品】[属性:]
	tJulyEatchicken_RewardItem[3313119]["LogId"] = 12001486
	tJulyEatchicken_RewardItem[3313119]["Grade"] = 100
	-- 人参果 - 30.00%
	tJulyEatchicken_RewardItem[3313119][1] = {}
	tJulyEatchicken_RewardItem[3313119][1]["RandomItemChanceType"] = 2
	tJulyEatchicken_RewardItem[3313119][1]["ItemChance"] = 4000
	tJulyEatchicken_RewardItem[3313119][1]["RewardItem"] = {}
	tJulyEatchicken_RewardItem[3313119][1]["RewardItem"][1] = {}
	tJulyEatchicken_RewardItem[3313119][1]["RewardItem"][1]["Id"] = 3009100 -- 【库】人参果[属性:9], 【表格】人参果
	tJulyEatchicken_RewardItem[3313119][1]["RewardItem"][1]["Attr"] = "0 5" -- 人参果*5
	tJulyEatchicken_RewardItem[3313119][1]["RewardEffect"] = {}
	tJulyEatchicken_RewardItem[3313119][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyEatchicken_RewardItem[3313119][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 修行值 - 10.00%
	tJulyEatchicken_RewardItem[3313119][2] = {}
	tJulyEatchicken_RewardItem[3313119][2]["RandomItemChanceType"] = 2
	tJulyEatchicken_RewardItem[3313119][2]["ItemChance"] = 2000
	tJulyEatchicken_RewardItem[3313119][2]["RewardCultivation"] = {}
	tJulyEatchicken_RewardItem[3313119][2]["RewardCultivation"]["Value"] = 1000 -- 修行值, 【需求】修行值
	tJulyEatchicken_RewardItem[3313119][2]["RewardEffect"] = {}
	tJulyEatchicken_RewardItem[3313119][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyEatchicken_RewardItem[3313119][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 气力值 - 30.00%
	tJulyEatchicken_RewardItem[3313119][3] = {}
	tJulyEatchicken_RewardItem[3313119][3]["RandomItemChanceType"] = 2
	tJulyEatchicken_RewardItem[3313119][3]["ItemChance"] = 0
	tJulyEatchicken_RewardItem[3313119][3]["RewardStrengthValue"] = {}
	tJulyEatchicken_RewardItem[3313119][3]["RewardStrengthValue"]["Value"] = 100 -- 气力值, 【需求】气力值
	tJulyEatchicken_RewardItem[3313119][3]["RewardEffect"] = {}
	tJulyEatchicken_RewardItem[3313119][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyEatchicken_RewardItem[3313119][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 修为值 - 30.00%
	tJulyEatchicken_RewardItem[3313119][4] = {}
	tJulyEatchicken_RewardItem[3313119][4]["RandomItemChanceType"] = 2
	tJulyEatchicken_RewardItem[3313119][4]["ItemChance"] = 4000
	tJulyEatchicken_RewardItem[3313119][4]["RewardRepairValue"] = {}
	tJulyEatchicken_RewardItem[3313119][4]["RewardRepairValue"]["Value"] = 800 -- 修为值, 【需求】修为值
	tJulyEatchicken_RewardItem[3313119][4]["RewardEffect"] = {}
	tJulyEatchicken_RewardItem[3313119][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyEatchicken_RewardItem[3313119][4]["RewardEffect"]["Effect"] = "angelwing"


	tJulyEatchicken_RewardItem[3313120] = {}
	-- ===生存排行霸主礼盒
	-- ===索引: tJulyEatchicken_RewardItem[3313120]
	-- ===删除: 3313120,1
	tJulyEatchicken_RewardItem[3313120]["LogId"] = 12001486
	tJulyEatchicken_RewardItem[3313120]["DeleteItem"] = {}
	tJulyEatchicken_RewardItem[3313120]["DeleteItem"][1] = {}
	tJulyEatchicken_RewardItem[3313120]["DeleteItem"][1]["Id"] = 3313120 -- 【库】 3313120 【库里没有该物品】[属性:]
	tJulyEatchicken_RewardItem[3313120]["RewardItem"] = {}
	tJulyEatchicken_RewardItem[3313120]["RewardItem"][1] = {}
	tJulyEatchicken_RewardItem[3313120]["RewardItem"][1]["Id"] = 3009101 -- 【库】龙鳞果[属性:9], 【表格】龙鳞果
	tJulyEatchicken_RewardItem[3313120]["RewardItem"][1]["Attr"] = "0 50" -- 龙鳞果*50
	tJulyEatchicken_RewardItem[3313120]["RewardItem"][2] = {}
	tJulyEatchicken_RewardItem[3313120]["RewardItem"][2]["Id"] = 4060001 -- 【库】万能神纹精粹[属性:9], 【表格】万能神纹精粹
	tJulyEatchicken_RewardItem[3313120]["RewardItem"][2]["Attr"] = "0 150" -- 万能神纹精粹*150
	tJulyEatchicken_RewardItem[3313120]["RewardItem"][3] = {}
	tJulyEatchicken_RewardItem[3313120]["RewardItem"][3]["Id"] = 4200005 -- 【库】5阶灵珠[属性:72], 【表格】5阶灵珠
	tJulyEatchicken_RewardItem[3313120]["RewardItem"][3]["Attr"] = "0 5" -- 5阶灵珠*5
	tJulyEatchicken_RewardItem[3313120]["RewardItem"][3]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tJulyEatchicken_RewardItem[3313120]["RewardEffect"] = {}
	tJulyEatchicken_RewardItem[3313120]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyEatchicken_RewardItem[3313120]["RewardEffect"]["Effect"] = "angelwing"
	tJulyEatchicken_RewardItem[3313120][1] = {}
	tJulyEatchicken_RewardItem[3313120][1]["RewardItem"] = {}
	tJulyEatchicken_RewardItem[3313120][1]["RewardItem"][1] = {}
	tJulyEatchicken_RewardItem[3313120][1]["RewardItem"][1]["Id"] = 3321098 -- 【库】神兵灵魄
	tJulyEatchicken_RewardItem[3313120][1]["RewardItem"][1]["Attr"] = "0 30" -- 神兵灵魄*30
	tJulyEatchicken_RewardItem[3313120][1]["LogId"] = 12001486


	tJulyEatchicken_RewardItem[3313121] = {}
	-- ===生存排行第二名礼盒
	-- ===索引: tJulyEatchicken_RewardItem[3313121]
	-- ===删除: 3313121,1
	tJulyEatchicken_RewardItem[3313121]["LogId"] = 12001486
	tJulyEatchicken_RewardItem[3313121]["DeleteItem"] = {}
	tJulyEatchicken_RewardItem[3313121]["DeleteItem"][1] = {}
	tJulyEatchicken_RewardItem[3313121]["DeleteItem"][1]["Id"] = 3313121 -- 【库】 3313121 【库里没有该物品】[属性:]
	tJulyEatchicken_RewardItem[3313121]["RewardItem"] = {}
	tJulyEatchicken_RewardItem[3313121]["RewardItem"][1] = {}
	tJulyEatchicken_RewardItem[3313121]["RewardItem"][1]["Id"] = 3009100 -- 【库】人参果[属性:9], 【表格】人参果
	tJulyEatchicken_RewardItem[3313121]["RewardItem"][1]["Attr"] = "0 90" -- 人参果*90
	tJulyEatchicken_RewardItem[3313121]["RewardItem"][2] = {}
	tJulyEatchicken_RewardItem[3313121]["RewardItem"][2]["Id"] = 4060001 -- 【库】万能神纹精粹[属性:9], 【表格】万能神纹精粹
	tJulyEatchicken_RewardItem[3313121]["RewardItem"][2]["Attr"] = "0 100" -- 万能神纹精粹*100
	tJulyEatchicken_RewardItem[3313121]["RewardItem"][3] = {}
	tJulyEatchicken_RewardItem[3313121]["RewardItem"][3]["Id"] = 4200005 -- 【库】5阶灵珠[属性:72], 【表格】5阶灵珠
	tJulyEatchicken_RewardItem[3313121]["RewardItem"][3]["Attr"] = "0 4" -- 5阶灵珠*4
	tJulyEatchicken_RewardItem[3313121]["RewardItem"][3]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tJulyEatchicken_RewardItem[3313121]["RewardEffect"] = {}
	tJulyEatchicken_RewardItem[3313121]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyEatchicken_RewardItem[3313121]["RewardEffect"]["Effect"] = "angelwing"
	tJulyEatchicken_RewardItem[3313121][1] = {}
	tJulyEatchicken_RewardItem[3313121][1]["RewardItem"] = {}
	tJulyEatchicken_RewardItem[3313121][1]["RewardItem"][1] = {}
	tJulyEatchicken_RewardItem[3313121][1]["RewardItem"][1]["Id"] = 3321098 -- 【库】神兵灵魄
	tJulyEatchicken_RewardItem[3313121][1]["RewardItem"][1]["Attr"] = "0 25" -- 神兵灵魄*25
	tJulyEatchicken_RewardItem[3313121][1]["LogId"] = 12001486


	tJulyEatchicken_RewardItem[3313122] = {}
	-- ===生存排行第三名礼盒
	-- ===索引: tJulyEatchicken_RewardItem[3313122]
	-- ===删除: 3313122,1
	tJulyEatchicken_RewardItem[3313122]["LogId"] = 12001486
	tJulyEatchicken_RewardItem[3313122]["DeleteItem"] = {}
	tJulyEatchicken_RewardItem[3313122]["DeleteItem"][1] = {}
	tJulyEatchicken_RewardItem[3313122]["DeleteItem"][1]["Id"] = 3313122 -- 【库】 3313122 【库里没有该物品】[属性:]
	tJulyEatchicken_RewardItem[3313122]["RewardItem"] = {}
	tJulyEatchicken_RewardItem[3313122]["RewardItem"][1] = {}
	tJulyEatchicken_RewardItem[3313122]["RewardItem"][1]["Id"] = 3009100 -- 【库】人参果[属性:9], 【表格】人参果
	tJulyEatchicken_RewardItem[3313122]["RewardItem"][1]["Attr"] = "0 85" -- 人参果*85
	tJulyEatchicken_RewardItem[3313122]["RewardItem"][2] = {}
	tJulyEatchicken_RewardItem[3313122]["RewardItem"][2]["Id"] = 4060001 -- 【库】万能神纹精粹[属性:9], 【表格】万能神纹精粹
	tJulyEatchicken_RewardItem[3313122]["RewardItem"][2]["Attr"] = "0 90" -- 万能神纹精粹*90
	tJulyEatchicken_RewardItem[3313122]["RewardItem"][3] = {}
	tJulyEatchicken_RewardItem[3313122]["RewardItem"][3]["Id"] = 4200005 -- 【库】5阶灵珠[属性:72], 【表格】5阶灵珠
	tJulyEatchicken_RewardItem[3313122]["RewardItem"][3]["Attr"] = "0 3" -- 5阶灵珠*3
	tJulyEatchicken_RewardItem[3313122]["RewardItem"][3]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tJulyEatchicken_RewardItem[3313122]["RewardEffect"] = {}
	tJulyEatchicken_RewardItem[3313122]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyEatchicken_RewardItem[3313122]["RewardEffect"]["Effect"] = "angelwing"
	tJulyEatchicken_RewardItem[3313122][1] = {}
	tJulyEatchicken_RewardItem[3313122][1]["RewardItem"] = {}
	tJulyEatchicken_RewardItem[3313122][1]["RewardItem"][1] = {}
	tJulyEatchicken_RewardItem[3313122][1]["RewardItem"][1]["Id"] = 3321098 -- 【库】神兵灵魄
	tJulyEatchicken_RewardItem[3313122][1]["RewardItem"][1]["Attr"] = "0 20" -- 神兵灵魄*20
	tJulyEatchicken_RewardItem[3313122][1]["LogId"] = 12001486


	tJulyEatchicken_RewardItem[3313123] = {}
	-- ===生存排行第四名礼盒
	-- ===索引: tJulyEatchicken_RewardItem[3313123]
	-- ===删除: 3313123,1
	tJulyEatchicken_RewardItem[3313123]["LogId"] = 12001486
	tJulyEatchicken_RewardItem[3313123]["DeleteItem"] = {}
	tJulyEatchicken_RewardItem[3313123]["DeleteItem"][1] = {}
	tJulyEatchicken_RewardItem[3313123]["DeleteItem"][1]["Id"] = 3313123 -- 【库】 3313123 【库里没有该物品】[属性:]
	tJulyEatchicken_RewardItem[3313123]["RewardItem"] = {}
	tJulyEatchicken_RewardItem[3313123]["RewardItem"][1] = {}
	tJulyEatchicken_RewardItem[3313123]["RewardItem"][1]["Id"] = 3009100 -- 【库】人参果[属性:9], 【表格】人参果
	tJulyEatchicken_RewardItem[3313123]["RewardItem"][1]["Attr"] = "0 80" -- 人参果*80
	tJulyEatchicken_RewardItem[3313123]["RewardItem"][2] = {}
	tJulyEatchicken_RewardItem[3313123]["RewardItem"][2]["Id"] = 4060001 -- 【库】万能神纹精粹[属性:9], 【表格】万能神纹精粹
	tJulyEatchicken_RewardItem[3313123]["RewardItem"][2]["Attr"] = "0 70" -- 万能神纹精粹*70
	tJulyEatchicken_RewardItem[3313123]["RewardItem"][3] = {}
	tJulyEatchicken_RewardItem[3313123]["RewardItem"][3]["Id"] = 4200005 -- 【库】5阶灵珠[属性:72], 【表格】5阶灵珠
	tJulyEatchicken_RewardItem[3313123]["RewardItem"][3]["Attr"] = "0 3" -- 5阶灵珠*3
	tJulyEatchicken_RewardItem[3313123]["RewardItem"][3]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tJulyEatchicken_RewardItem[3313123]["RewardEffect"] = {}
	tJulyEatchicken_RewardItem[3313123]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyEatchicken_RewardItem[3313123]["RewardEffect"]["Effect"] = "angelwing"
	tJulyEatchicken_RewardItem[3313123][1] = {}
	tJulyEatchicken_RewardItem[3313123][1]["RewardItem"] = {}
	tJulyEatchicken_RewardItem[3313123][1]["RewardItem"][1] = {}
	tJulyEatchicken_RewardItem[3313123][1]["RewardItem"][1]["Id"] = 3321098 -- 【库】神兵灵魄
	tJulyEatchicken_RewardItem[3313123][1]["RewardItem"][1]["Attr"] = "0 15" -- 神兵灵魄*15
	tJulyEatchicken_RewardItem[3313123][1]["LogId"] = 12001486


	tJulyEatchicken_RewardItem[3313124] = {}
	-- ===生存排行第五名礼盒
	-- ===索引: tJulyEatchicken_RewardItem[3313124]
	-- ===删除: 3313124,1
	tJulyEatchicken_RewardItem[3313124]["LogId"] = 12001486
	tJulyEatchicken_RewardItem[3313124]["DeleteItem"] = {}
	tJulyEatchicken_RewardItem[3313124]["DeleteItem"][1] = {}
	tJulyEatchicken_RewardItem[3313124]["DeleteItem"][1]["Id"] = 3313124 -- 【库】 3313124 【库里没有该物品】[属性:]
	tJulyEatchicken_RewardItem[3313124]["RewardItem"] = {}
	tJulyEatchicken_RewardItem[3313124]["RewardItem"][1] = {}
	tJulyEatchicken_RewardItem[3313124]["RewardItem"][1]["Id"] = 3009100 -- 【库】人参果[属性:9], 【表格】人参果
	tJulyEatchicken_RewardItem[3313124]["RewardItem"][1]["Attr"] = "0 75" -- 人参果*75
	tJulyEatchicken_RewardItem[3313124]["RewardItem"][2] = {}
	tJulyEatchicken_RewardItem[3313124]["RewardItem"][2]["Id"] = 4060001 -- 【库】万能神纹精粹[属性:9], 【表格】万能神纹精粹
	tJulyEatchicken_RewardItem[3313124]["RewardItem"][2]["Attr"] = "0 70" -- 万能神纹精粹*70
	tJulyEatchicken_RewardItem[3313124]["RewardItem"][3] = {}
	tJulyEatchicken_RewardItem[3313124]["RewardItem"][3]["Id"] = 4200005 -- 【库】5阶灵珠[属性:72], 【表格】5阶灵珠
	tJulyEatchicken_RewardItem[3313124]["RewardItem"][3]["Attr"] = "0 2" -- 5阶灵珠*2
	tJulyEatchicken_RewardItem[3313124]["RewardItem"][3]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tJulyEatchicken_RewardItem[3313124]["RewardEffect"] = {}
	tJulyEatchicken_RewardItem[3313124]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyEatchicken_RewardItem[3313124]["RewardEffect"]["Effect"] = "angelwing"
	tJulyEatchicken_RewardItem[3313124][1] = {}
	tJulyEatchicken_RewardItem[3313124][1]["RewardItem"] = {}
	tJulyEatchicken_RewardItem[3313124][1]["RewardItem"][1] = {}
	tJulyEatchicken_RewardItem[3313124][1]["RewardItem"][1]["Id"] = 3321098 -- 【库】神兵灵魄
	tJulyEatchicken_RewardItem[3313124][1]["RewardItem"][1]["Attr"] = "0 15" -- 神兵灵魄*15
	tJulyEatchicken_RewardItem[3313124][1]["LogId"] = 12001486


	tJulyEatchicken_RewardItem[3313125] = {}
	-- ===生存排行第六名礼盒
	-- ===索引: tJulyEatchicken_RewardItem[3313125]
	-- ===删除: 3313125,1
	tJulyEatchicken_RewardItem[3313125]["LogId"] = 12001486
	tJulyEatchicken_RewardItem[3313125]["DeleteItem"] = {}
	tJulyEatchicken_RewardItem[3313125]["DeleteItem"][1] = {}
	tJulyEatchicken_RewardItem[3313125]["DeleteItem"][1]["Id"] = 3313125 -- 【库】 3313125 【库里没有该物品】[属性:]
	tJulyEatchicken_RewardItem[3313125]["RewardItem"] = {}
	tJulyEatchicken_RewardItem[3313125]["RewardItem"][1] = {}
	tJulyEatchicken_RewardItem[3313125]["RewardItem"][1]["Id"] = 3009100 -- 【库】人参果[属性:9], 【表格】人参果
	tJulyEatchicken_RewardItem[3313125]["RewardItem"][1]["Attr"] = "0 70" -- 人参果*70
	tJulyEatchicken_RewardItem[3313125]["RewardItem"][2] = {}
	tJulyEatchicken_RewardItem[3313125]["RewardItem"][2]["Id"] = 4060001 -- 【库】万能神纹精粹[属性:9], 【表格】万能神纹精粹
	tJulyEatchicken_RewardItem[3313125]["RewardItem"][2]["Attr"] = "0 70" -- 万能神纹精粹*70
	tJulyEatchicken_RewardItem[3313125]["RewardItem"][3] = {}
	tJulyEatchicken_RewardItem[3313125]["RewardItem"][3]["Id"] = 4200005 -- 【库】5阶灵珠[属性:72], 【表格】5阶灵珠
	tJulyEatchicken_RewardItem[3313125]["RewardItem"][3]["Attr"] = "0 2" -- 5阶灵珠*2
	tJulyEatchicken_RewardItem[3313125]["RewardItem"][3]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tJulyEatchicken_RewardItem[3313125]["RewardEffect"] = {}
	tJulyEatchicken_RewardItem[3313125]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyEatchicken_RewardItem[3313125]["RewardEffect"]["Effect"] = "angelwing"
	tJulyEatchicken_RewardItem[3313125][1] = {}
	tJulyEatchicken_RewardItem[3313125][1]["RewardItem"] = {}
	tJulyEatchicken_RewardItem[3313125][1]["RewardItem"][1] = {}
	tJulyEatchicken_RewardItem[3313125][1]["RewardItem"][1]["Id"] = 3321098 -- 【库】神兵灵魄
	tJulyEatchicken_RewardItem[3313125][1]["RewardItem"][1]["Attr"] = "0 15" -- 神兵灵魄*15
	tJulyEatchicken_RewardItem[3313125][1]["LogId"] = 12001486


	tJulyEatchicken_RewardItem[3313126] = {}
	-- ===生存排行第七名礼盒
	-- ===索引: tJulyEatchicken_RewardItem[3313126]
	-- ===删除: 3313126,1
	tJulyEatchicken_RewardItem[3313126]["LogId"] = 12001486
	tJulyEatchicken_RewardItem[3313126]["DeleteItem"] = {}
	tJulyEatchicken_RewardItem[3313126]["DeleteItem"][1] = {}
	tJulyEatchicken_RewardItem[3313126]["DeleteItem"][1]["Id"] = 3313126 -- 【库】 3313126 【库里没有该物品】[属性:]
	tJulyEatchicken_RewardItem[3313126]["RewardItem"] = {}
	tJulyEatchicken_RewardItem[3313126]["RewardItem"][1] = {}
	tJulyEatchicken_RewardItem[3313126]["RewardItem"][1]["Id"] = 3009100 -- 【库】人参果[属性:9], 【表格】人参果
	tJulyEatchicken_RewardItem[3313126]["RewardItem"][1]["Attr"] = "0 65" -- 人参果*65
	tJulyEatchicken_RewardItem[3313126]["RewardItem"][2] = {}
	tJulyEatchicken_RewardItem[3313126]["RewardItem"][2]["Id"] = 4060001 -- 【库】万能神纹精粹[属性:9], 【表格】万能神纹精粹
	tJulyEatchicken_RewardItem[3313126]["RewardItem"][2]["Attr"] = "0 50" -- 万能神纹精粹*50
	tJulyEatchicken_RewardItem[3313126]["RewardItem"][3] = {}
	tJulyEatchicken_RewardItem[3313126]["RewardItem"][3]["Id"] = 4200005 -- 【库】5阶灵珠[属性:72], 【表格】5阶灵珠
	tJulyEatchicken_RewardItem[3313126]["RewardItem"][3]["Attr"] = "0 2" -- 5阶灵珠*2
	tJulyEatchicken_RewardItem[3313126]["RewardItem"][3]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tJulyEatchicken_RewardItem[3313126]["RewardEffect"] = {}
	tJulyEatchicken_RewardItem[3313126]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyEatchicken_RewardItem[3313126]["RewardEffect"]["Effect"] = "angelwing"
	tJulyEatchicken_RewardItem[3313126][1] = {}
	tJulyEatchicken_RewardItem[3313126][1]["RewardItem"] = {}
	tJulyEatchicken_RewardItem[3313126][1]["RewardItem"][1] = {}
	tJulyEatchicken_RewardItem[3313126][1]["RewardItem"][1]["Id"] = 3321098 -- 【库】神兵灵魄
	tJulyEatchicken_RewardItem[3313126][1]["RewardItem"][1]["Attr"] = "0 10" -- 神兵灵魄*10
	tJulyEatchicken_RewardItem[3313126][1]["LogId"] = 12001486


	tJulyEatchicken_RewardItem[3313127] = {}
	-- ===生存排行第八名礼盒
	-- ===索引: tJulyEatchicken_RewardItem[3313127]
	-- ===删除: 3313127,1
	tJulyEatchicken_RewardItem[3313127]["LogId"] = 12001486
	tJulyEatchicken_RewardItem[3313127]["DeleteItem"] = {}
	tJulyEatchicken_RewardItem[3313127]["DeleteItem"][1] = {}
	tJulyEatchicken_RewardItem[3313127]["DeleteItem"][1]["Id"] = 3313127 -- 【库】 3313127 【库里没有该物品】[属性:]
	tJulyEatchicken_RewardItem[3313127]["RewardItem"] = {}
	tJulyEatchicken_RewardItem[3313127]["RewardItem"][1] = {}
	tJulyEatchicken_RewardItem[3313127]["RewardItem"][1]["Id"] = 3009100 -- 【库】人参果[属性:9], 【表格】人参果
	tJulyEatchicken_RewardItem[3313127]["RewardItem"][1]["Attr"] = "0 60" -- 人参果*60
	tJulyEatchicken_RewardItem[3313127]["RewardItem"][2] = {}
	tJulyEatchicken_RewardItem[3313127]["RewardItem"][2]["Id"] = 4060001 -- 【库】万能神纹精粹[属性:9], 【表格】万能神纹精粹
	tJulyEatchicken_RewardItem[3313127]["RewardItem"][2]["Attr"] = "0 50" -- 万能神纹精粹*50
	tJulyEatchicken_RewardItem[3313127]["RewardItem"][3] = {}
	tJulyEatchicken_RewardItem[3313127]["RewardItem"][3]["Id"] = 4200005 -- 【库】5阶灵珠[属性:72], 【表格】5阶灵珠
	tJulyEatchicken_RewardItem[3313127]["RewardItem"][3]["Attr"] = "0 1" -- 5阶灵珠*1
	tJulyEatchicken_RewardItem[3313127]["RewardItem"][3]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tJulyEatchicken_RewardItem[3313127]["RewardEffect"] = {}
	tJulyEatchicken_RewardItem[3313127]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyEatchicken_RewardItem[3313127]["RewardEffect"]["Effect"] = "angelwing"
	tJulyEatchicken_RewardItem[3313127][1] = {}
	tJulyEatchicken_RewardItem[3313127][1]["RewardItem"] = {}
	tJulyEatchicken_RewardItem[3313127][1]["RewardItem"][1] = {}
	tJulyEatchicken_RewardItem[3313127][1]["RewardItem"][1]["Id"] = 3321098 -- 【库】神兵灵魄
	tJulyEatchicken_RewardItem[3313127][1]["RewardItem"][1]["Attr"] = "0 10" -- 神兵灵魄*10
	tJulyEatchicken_RewardItem[3313127][1]["LogId"] = 12001486


	tJulyEatchicken_RewardItem[3313128] = {}
	-- ===生存排行第九名礼盒
	-- ===索引: tJulyEatchicken_RewardItem[3313128]
	-- ===删除: 3313128,1
	tJulyEatchicken_RewardItem[3313128]["LogId"] = 12001486
	tJulyEatchicken_RewardItem[3313128]["DeleteItem"] = {}
	tJulyEatchicken_RewardItem[3313128]["DeleteItem"][1] = {}
	tJulyEatchicken_RewardItem[3313128]["DeleteItem"][1]["Id"] = 3313128 -- 【库】 3313128 【库里没有该物品】[属性:]
	tJulyEatchicken_RewardItem[3313128]["RewardItem"] = {}
	tJulyEatchicken_RewardItem[3313128]["RewardItem"][1] = {}
	tJulyEatchicken_RewardItem[3313128]["RewardItem"][1]["Id"] = 3009100 -- 【库】人参果[属性:9], 【表格】人参果
	tJulyEatchicken_RewardItem[3313128]["RewardItem"][1]["Attr"] = "0 55" -- 人参果*55
	tJulyEatchicken_RewardItem[3313128]["RewardItem"][2] = {}
	tJulyEatchicken_RewardItem[3313128]["RewardItem"][2]["Id"] = 4060001 -- 【库】万能神纹精粹[属性:9], 【表格】万能神纹精粹
	tJulyEatchicken_RewardItem[3313128]["RewardItem"][2]["Attr"] = "0 50" -- 万能神纹精粹*50
	tJulyEatchicken_RewardItem[3313128]["RewardItem"][3] = {}
	tJulyEatchicken_RewardItem[3313128]["RewardItem"][3]["Id"] = 4200005 -- 【库】5阶灵珠[属性:72], 【表格】5阶灵珠
	tJulyEatchicken_RewardItem[3313128]["RewardItem"][3]["Attr"] = "0 1" -- 5阶灵珠*1
	tJulyEatchicken_RewardItem[3313128]["RewardItem"][3]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tJulyEatchicken_RewardItem[3313128]["RewardEffect"] = {}
	tJulyEatchicken_RewardItem[3313128]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyEatchicken_RewardItem[3313128]["RewardEffect"]["Effect"] = "angelwing"
	tJulyEatchicken_RewardItem[3313128][1] = {}
	tJulyEatchicken_RewardItem[3313128][1]["RewardItem"] = {}
	tJulyEatchicken_RewardItem[3313128][1]["RewardItem"][1] = {}
	tJulyEatchicken_RewardItem[3313128][1]["RewardItem"][1]["Id"] = 3321098 -- 【库】神兵灵魄
	tJulyEatchicken_RewardItem[3313128][1]["RewardItem"][1]["Attr"] = "0 10" -- 神兵灵魄*10
	tJulyEatchicken_RewardItem[3313128][1]["LogId"] = 12001486


	tJulyEatchicken_RewardItem[3313129] = {}
	-- ===生存排行第十名礼盒
	-- ===索引: tJulyEatchicken_RewardItem[3313129]
	-- ===删除: 3313129,1
	tJulyEatchicken_RewardItem[3313129]["LogId"] = 12001486
	tJulyEatchicken_RewardItem[3313129]["DeleteItem"] = {}
	tJulyEatchicken_RewardItem[3313129]["DeleteItem"][1] = {}
	tJulyEatchicken_RewardItem[3313129]["DeleteItem"][1]["Id"] = 3313129 -- 【库】 3313129 【库里没有该物品】[属性:]
	tJulyEatchicken_RewardItem[3313129]["RewardItem"] = {}
	tJulyEatchicken_RewardItem[3313129]["RewardItem"][1] = {}
	tJulyEatchicken_RewardItem[3313129]["RewardItem"][1]["Id"] = 3009100 -- 【库】人参果[属性:9], 【表格】人参果
	tJulyEatchicken_RewardItem[3313129]["RewardItem"][1]["Attr"] = "0 50" -- 人参果*50
	tJulyEatchicken_RewardItem[3313129]["RewardItem"][2] = {}
	tJulyEatchicken_RewardItem[3313129]["RewardItem"][2]["Id"] = 4060001 -- 【库】万能神纹精粹[属性:9], 【表格】万能神纹精粹
	tJulyEatchicken_RewardItem[3313129]["RewardItem"][2]["Attr"] = "0 50" -- 万能神纹精粹*50
	tJulyEatchicken_RewardItem[3313129]["RewardItem"][3] = {}
	tJulyEatchicken_RewardItem[3313129]["RewardItem"][3]["Id"] = 4200005 -- 【库】5阶灵珠[属性:72], 【表格】5阶灵珠
	tJulyEatchicken_RewardItem[3313129]["RewardItem"][3]["Attr"] = "0 1" -- 5阶灵珠*1
	tJulyEatchicken_RewardItem[3313129]["RewardItem"][3]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tJulyEatchicken_RewardItem[3313129]["RewardEffect"] = {}
	tJulyEatchicken_RewardItem[3313129]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyEatchicken_RewardItem[3313129]["RewardEffect"]["Effect"] = "angelwing"
	tJulyEatchicken_RewardItem[3313129][1] = {}
	tJulyEatchicken_RewardItem[3313129][1]["RewardItem"] = {}
	tJulyEatchicken_RewardItem[3313129][1]["RewardItem"][1] = {}
	tJulyEatchicken_RewardItem[3313129][1]["RewardItem"][1]["Id"] = 3321098 -- 【库】神兵灵魄
	tJulyEatchicken_RewardItem[3313129][1]["RewardItem"][1]["Attr"] = "0 10" -- 神兵灵魄*10
	tJulyEatchicken_RewardItem[3313129][1]["LogId"] = 12001486


----------------------------------逻辑部分配置----------------------------------

--传送到joker处
function JulyEatchicken_Trans(nNpcId)
	local nMapId = tJulyEatchicken_Map["DragonCity"]["Normal"]["MapId"]
	local nPosX = tJulyEatchicken_Map["DragonCity"]["Normal"]["PosX"]
	local nPosY = tJulyEatchicken_Map["DragonCity"]["Normal"]["PosY"]

	if SpecialServer_ChkNoGiftServer() then
		nMapId = tJulyEatchicken_Map["DragonCity"]["Special"]["MapId"]
		nPosX = tJulyEatchicken_Map["DragonCity"]["Special"]["PosX"]
		nPosY = tJulyEatchicken_Map["DragonCity"]["Special"]["PosY"]
	end

	
	local nBoundX = tJulyEatchicken_Map["nBound"]
	local nBoundY = tJulyEatchicken_Map["nBound"]
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,nBoundX,nBoundY,0)
end

--安全区Npc传送
function JulyEatchicken_SaveRoomTranlate()
	local nTip = 0
	for i,v in pairs(tJulyEatchicken_Time["DailyTime"]) do
		if Sys_ChkDayTime(v) then
			nTip = 1
			break
		end
	end
	
	local nGlobalId = tRankingFunc_Info[24408]["RoomGlobalId"][1]
	local nResultTranlate = Get_SysDynaGlobalData0(nGlobalId)
	local nMapId = tJulyEatchicken_Map["MapId"][50][1]
	local nPosX = tJulyEatchicken_Map["PosX"]
	local nPosY = tJulyEatchicken_Map["PosY"]
	local nBoundX = tJulyEatchicken_Map["nBound"]
	local nBoundY = tJulyEatchicken_Map["nBound"]
	
	if nResultTranlate >= 2 or (not Sys_ChkFullTime(tJulyEatchicken_Time["Active"])) or (nTip == 0) then
		nMapId = tJulyEatchicken_Map["DragonCity"]["Normal"]["MapId"]
		nPosX = tJulyEatchicken_Map["DragonCity"]["Normal"]["PosX"]
		nPosY = tJulyEatchicken_Map["DragonCity"]["Normal"]["PosY"]
		if SpecialServer_ChkNoGiftServer() then
			nMapId = tJulyEatchicken_Map["DragonCity"]["Special"]["MapId"]
			nPosX = tJulyEatchicken_Map["DragonCity"]["Special"]["PosX"]
			nPosY = tJulyEatchicken_Map["DragonCity"]["Special"]["PosY"]
		end
		local nBegin = 1
		local nUserId = Get_UserId()
		local nCalLoop = 0
		while nBegin <= #tJulyEatchicken_Save do
			if nCalLoop > G_CalculateLoop*3 then
				Sys_SaveAbnormalLog("函数 JulyEatchicken_SaveRoomTranlate 中 [while]循环超过1000次！")
				break
			end
			nCalLoop = nCalLoop + 1
			if (tJulyEatchicken_Save[nBegin] ~= nil) and (nUserId == tJulyEatchicken_Save[nBegin]) then
				table.remove(tJulyEatchicken_Save,nBegin)
			else
				nBegin = nBegin + 1
			end
		end
		Sys_MsgBox(tJulyEatchicken_Text[24407]["Broadcast"][8])
		User_TalkChannel2005(tJulyEatchicken_Text[24407]["Broadcast"][8])
		
		--清除状态
		JulyEatchicken_ChkToolStatus()
		-- User_SetBattleBuff(0)
		User_UserRandBoundTrans(nMapId,nPosX,nPosY,nBoundX,nBoundY,0)
	else
		math.randomseed(tostring(os.time()):reverse():sub(1, 6))
		local nRoom
		if nResultTranlate == 0 then
			nRoom = math.random(1,49)
		end
		
		local nFirstRandom
		if nResultTranlate == 1 then
			nFirstRandom = math.random(1,25)
			nRoom = tJulyEatchicken_TimeCanRoom[1][nFirstRandom]
		end
		
		if nResultTranlate == 2 then
			nFirstRandom = math.random(1,9)
			nRoom = tJulyEatchicken_TimeCanRoom[2][nFirstRandom]
		end
		
		nMapId = tJulyEatchicken_Map["MapId"][nRoom][1]
		nPosX = tJulyEatchicken_Map["MapId"][nRoom][6]
		nPosY = tJulyEatchicken_Map["MapId"][nRoom][7]
		
		User_UserRandBoundTrans(nMapId,nPosX,nPosY,nBoundX,nBoundY,0)
		-- local sRoomName = tJulyEatchicken_Text["MapName"][nMapId]
		-- local sNewTranlate = string.format(tJulyEatchicken_Text[24409]["Broadcast"][1],sRoomName)
		-- User_TalkChannel2005(sNewTranlate)
		-- Sys_MsgBox(sNewTranlate)
	end
end

--杀死怪物触发
function JulyEatchicken_FirstRecastLoad(nMonsterTypeId)
	
	--掩码隔天清理
	JulyEatchicken_CleanStc()
	
	--若是在死亡房间内杀怪则不获得积分
	local nGlobalId = tRankingFunc_Info[24408]["RoomGlobalId"][1]
	local nGlobalIdEarly = Get_SysDynaGlobalData0(nGlobalId)
	local nTip = 0
	for i,v in pairs(tJulyEatchicken_MonsterId[nGlobalIdEarly]) do
		if nMonsterTypeId == v then
			nTip = 1
		end
	end
	
	if nTip == 0 then
		return
	end
	
	--次镑
	--判断玩家是在哪一场比赛
	--在活动时间内写入总榜
	for i,v in pairs(tJulyEatchicken_Time["DailyTime"]) do
		if Sys_ChkDayTime(v) then
			nEventCi = tJulyEatchicken_Stc[5+i][1]
			nDataCi = tJulyEatchicken_Stc[5+i][2]
			Task_AddStatistic(nEventCi,nDataCi,1,1) 
			Task_SetStcTimestamp(nEventCi,nDataCi,0)
			local nGrade = Get_UserStatisticValue(nEventCi,nDataCi)
			RankingFunc_SetInfo(24408,nGrade)
			break
		end
	end


	local nEventype = tJulyEatchicken_Stc[4][1]
	local nDatatype = tJulyEatchicken_Stc[4][2]
	local nAddNum = 1
	if nAddNum ~= nil then
		Task_AddStatistic(nEventype,nDatatype,nAddNum,1) 
		--写入排行榜
		local nGrade = Get_UserStatisticValue(nEventype,nDatatype)
		RankingFunc_SetInfo(24407,nGrade)
		Sys_SaveActionFestivalLog(string.format(tJulyEatchicken_Log[3],nAddNum,nGrade))
	end
	
	User_TalkChannel2005(string.format(tJulyEatchicken_Text[24407]["Broadcast"][16],1))
end

--死亡触发
function JulyEatchicken_KillPlayer(nMurderId,nDeadId)
	
	--在活动时间内且在活动地图内
	--活动时间判断
	if not Sys_ChkFullTime(tJulyEatchicken_Time["Active"]) then
		return
	end
	
	--在活动时间外
	local nSureExit = 0
	for i,v in pairs(tJulyEatchicken_Time["DailyTime"]) do
		if Sys_ChkDayTime(v) then
			nSureExit = 1
			break
		end
	end
	if nSureExit == 0 then
		return
	end
	
	local nLessMap = tRankingFunc_Info[24408]["MapId"][1]
	local nLargeMap = tRankingFunc_Info[24408]["MapId"][2]
	local nMurderMap = Get_UserMapId(nMurderId)
	local nKillMap = Get_UserMapId(nDeadId)
	if (nMurderMap < nLessMap) or (nMurderMap > nLargeMap) then
		return
	end
	
	if (nKillMap < nLessMap) or (nKillMap > nLargeMap) then
		return
	end
	--清理掩码
	JulyEatchicken_CleanStc(nMurderId)
	JulyEatchicken_CleanStc(nDeadId)
	
	--被杀的人
	local nGlobalId = tRankingFunc_Info[24408]["RoomGlobalId"][1]
	local nResultTranlate = Get_SysDynaGlobalData0(nGlobalId)
	local nMapId = tJulyEatchicken_Map["MapId"][50][1]
	local nPosX = tJulyEatchicken_Map["PosX"]
	local nPosY = tJulyEatchicken_Map["PosY"]
	local nBoundX = tJulyEatchicken_Map["nBound"]
	local nBoundY = tJulyEatchicken_Map["nBound"]
	
	if nResultTranlate >= 2 then
		nMapId = tJulyEatchicken_Map["DragonCity"]["Normal"]["MapId"]
		nPosX = tJulyEatchicken_Map["DragonCity"]["Normal"]["PosX"]
		nPosY = tJulyEatchicken_Map["DragonCity"]["Normal"]["PosY"]
		if SpecialServer_ChkNoGiftServer() then
			nMapId = tJulyEatchicken_Map["DragonCity"]["Special"]["MapId"]
			nPosX = tJulyEatchicken_Map["DragonCity"]["Special"]["PosX"]
			nPosY = tJulyEatchicken_Map["DragonCity"]["Special"]["PosY"]
		end
		Sys_MsgBox(tJulyEatchicken_Text[24407]["Broadcast"][8],nil,nil,nDeadId)
		User_TalkChannel2005(tJulyEatchicken_Text[24407]["Broadcast"][8],nDeadId)
	else
		User_UserRandBoundTrans(nMapId,nPosX,nPosY,nBoundX,nBoundY,0,nDeadId)
	end
	--删除死的玩家状态
	JulyEatchicken_ChkToolStatus(nDeadId)
	
	--杀人的人
	local nEvent = tJulyEatchicken_Stc[4][1]
	local nData = tJulyEatchicken_Stc[4][2]
	local nInsertMy = tJulyEatchicken_KillSave[nMurderId]
	if (nInsertMy) ~= nil then
		local tKilltable = tJulyEatchicken_KillSave
		-- local nTip = 0
		for i,v in pairs(tKilltable) do
			for w,o in pairs(tKilltable[i]) do
				if (i == nMurderId) and (o[1] == nDeadId) then
					o[2] = o[2] + 1
					local nGrade = 10*(5 - o[2])
				local nInsertGrade = 0
				if nGrade >= 0 then
					nInsertGrade = nGrade
				end
				
				--总榜
				Task_AddStatistic(nEvent,nData,nInsertGrade,1,nMurderId)
				--写入排行榜
				local nGrade = Get_UserStatisticValue(nEvent,nData,nMurderId)
				RankingFunc_SetInfo(24407,nGrade,nMurderId)
				User_TalkChannel2005(string.format(tJulyEatchicken_Text[24407]["Broadcast"][16],nInsertGrade),nMurderId)
				Sys_SaveActionFestivalLog(string.format(tJulyEatchicken_Log[3],nInsertGrade,nGrade),nMurderId)
				
				--次排行
				for k,j in pairs(tJulyEatchicken_Time["DailyTime"]) do
					if Sys_ChkDayTime(j) then
						nEventCi = tJulyEatchicken_Stc[5+k][1]
						nDataCi = tJulyEatchicken_Stc[5+k][2]
						Task_AddStatistic(nEventCi,nDataCi,nInsertGrade,1,nMurderId) 
						Task_SetStcTimestamp(nEventCi,nDataCi,0,nMurderId)
						local nRankGrade = Get_UserStatisticValue(nEventCi,nDataCi,nMurderId)
						RankingFunc_SetInfo(24408,nRankGrade,nMurderId)
						break
					end
				end
				
				end
			end
		end
		
	end
	
	local nNewlast = 0
	if (tJulyEatchicken_KillSave[nMurderId] ~= nil) then
		for i,v in pairs(tJulyEatchicken_KillSave[nMurderId]) do
			if v[1] == nDeadId then
				nNewlast = 1
				break
			end
		end
	end
	
	--这个是玩家第一次杀此玩家
	if (nInsertMy == nil) or (nNewlast == 0) then
		if nInsertMy == nil then
			tJulyEatchicken_KillSave[nMurderId] = {}
		end
		local tSaveble = {nDeadId,1}
		table.insert(tJulyEatchicken_KillSave[nMurderId],tSaveble)
		-- tJulyEatchicken_KillSave[nMurderId] = {nDeadId,1}
		
		local nFirstGrade = 40
		--总榜
		Task_AddStatistic(nEvent,nData,nFirstGrade,1,nMurderId)
		--写入排行榜
		local nFirstInsert = Get_UserStatisticValue(nEvent,nData,nMurderId)
		RankingFunc_SetInfo(24407,nFirstInsert,nMurderId)
		
		--次排行
		for k,j in pairs(tJulyEatchicken_Time["DailyTime"]) do
			if Sys_ChkDayTime(j) then
				nEventCi = tJulyEatchicken_Stc[5+k][1]
				nDataCi = tJulyEatchicken_Stc[5+k][2]
				Task_AddStatistic(nEventCi,nDataCi,nFirstGrade,1,nMurderId) 
				Task_SetStcTimestamp(nEventCi,nDataCi,0,nMurderId)
				local nRankGrade = Get_UserStatisticValue(nEventCi,nDataCi,nMurderId)
				RankingFunc_SetInfo(24408,nRankGrade,nMurderId)
				break
			end
		end
		User_TalkChannel2005(string.format(tJulyEatchicken_Text[24407]["Broadcast"][16],nFirstGrade),nMurderId)
	end
	
	
end

--玩家上线触发
function JulyEatchicken_OnlineDeal()
	if Sys_ChkFullTime(tJulyEatchicken_Time["Active"]) then
		--清除玩家身上的状态
		JulyEatchicken_ChkToolStatus()
		--清除玩家身上的战斗buff
		-- User_SetBattleBuff(0)
	end
end

--发送邮件
-- 发邮件一般物品函数
function JulyEatchicken_Mail(nSoulId,nUserId)
	local nNewUserId = nUserId or Get_UserId()
	local nActionId= tJulyEatchicken_RankGiftbag[nSoulId]["ActionId"]
	
	-- 发邮件
	if nActionId ~= nil then
		local sSoulName = Get_ItemtypeName(tJulyEatchicken_RankGiftbag[nSoulId]["RewardItem"][1]["Id"])
		local nExistDay = tRankingFunc_Info[24408]["Mail"]["Reward"][1]["ExistDay"]
		local sSender = tJulyEatchicken_Text[24407]["RankAward"]["Title"]
		local sTitle = tJulyEatchicken_Text[24407]["RankAward"]["Sender"]
		local sContent = string.format(tJulyEatchicken_Text[24407]["RankAward"]["Content"][1],sSoulName)
		Sys_SendMail(nNewUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
	end
end

function JulyEatchicken_TimeWalk()
	--活动时间判断
	if not Sys_ChkFullTime(tJulyEatchicken_Time["Active"]) then
		return
	end
	
	
	--记录是第几次刷圈
	local nGlobalId = tRankingFunc_Info[24408]["RoomGlobalId"][1]
	
	--判断此场比赛是否提前结束
	local nGlobalIdEarly = Get_SysDynaGlobalData1(nGlobalId)
	--每场比赛清理数据"13:15 13:18","18:15 18:18","22:15 22:18"
	for i,v in pairs(tJulyEatchicken_Time["CleanCircleTime"]) do
		if Sys_ChkDayTime(v) then
			for j,k in pairs(tRankingFunc_Info[24408]["Global"]) do
				Sys_ResetAllSynaGlobalData(k)
				Sys_ResetAllSynaGlobalDataStr(k)
			end
			
			for z,r in pairs(tJulyEatchicken_RoomGlobalId) do
				Sys_ResetAllSynaGlobalData(r)
				Sys_ResetAllSynaGlobalDataStr(r)
			end
			
			--清理临时表
			RankingFunc_ClearingData(24408)
			
			Sys_ResetAllSynaGlobalData(nGlobalId)
			Sys_ResetAllSynaGlobalDataStr(nGlobalId)
			tJulyEatchicken_Save = {}
			tJulyEatchicken_KillSave = {}
			--清理强力怪
			local nMonsterId = tRankingFunc_Info[24408]["Monster"]
			local nMapId = tRankingFunc_Info[24408]["MapId"][1]
			Sys_SetTempData(1,nMapId,nMonsterId,0)
			return
		end
	end
	
	-- "12:39 12:39"
	-- "17:39 17:39"	
	-- "21:39 21:39"	
	--活动开始前的提示
	for i,v in pairs(tJulyEatchicken_Time["CircleTimeBegin"]) do
		if Sys_ChkDayTime(v) then
			-- Sys_SystemBroadcast(tJulyEatchicken_Text[24409]["Broadcast"][2])
			Sys_GmBroadcast(tJulyEatchicken_Text[24409]["Broadcast"][2])
			return
		end
	end
	
	--比赛提前结束,在只有9个房间的时候
	for i,v in pairs(tJulyEatchicken_Time["DailyTime"]) do
		if Sys_ChkDayTime(v) then
			local nRoomNum = Get_SysDynaGlobalData0(nGlobalId)
			if nRoomNum >= 2 then
				--若房间中只有一个人，则给这个玩家1000积分，结束比赛
				local nLastResult = 0
				for k,j in pairs(tJulyEatchicken_Save) do
					local nMyUserId = j
					if User_IsUserOnline(nMyUserId) then
						local nNewMapId = Get_UserMapId(nMyUserId)
						local nLife = Get_UserLife(nMyUserId) 
						if (nNewMapId >= tJulyEatchicken_Map["MapId"][1][1]) and (nNewMapId <= tJulyEatchicken_Map["MapId"][49][1]) and (nLife >= 1) then
							nLastResult = nLastResult + 1
						end
					end
				end
				
				local nImportantUserId = 0
				if nLastResult == 1 then
					for k,j in pairs(tJulyEatchicken_Save) do
						if User_IsUserOnline(j) then
							local nNewMapId = Get_UserMapId(j)
							local nLife = Get_UserLife(j) 
							if (nNewMapId >= tJulyEatchicken_Map["MapId"][1][1]) and (nNewMapId <= tJulyEatchicken_Map["MapId"][49][1]) and (nLife >= 1) then
								nImportantUserId = j
							end
						end
					end
				end
				
				if (tJulyEatchicken_Save ~= nil) and (nLastResult == 1) then
					--给积分,只记录进单次排行榜
					local nEventEarly = tJulyEatchicken_Stc[i+5][1]
					local nDataEarly = tJulyEatchicken_Stc[i+5][2]
					local nEarlyUserId = nImportantUserId
					--要玩家在地图内且玩家在线才给玩家+1000积分
					if User_IsUserOnline(nEarlyUserId) and (nEarlyUserId ~= 0) then
						local nMapNeed = Get_UserMapId(nEarlyUserId)
						if nMapNeed >= tJulyEatchicken_Map["MapId"][1][1] and nMapNeed <= tJulyEatchicken_Map["MapId"][49][1] then
							Task_AddStatistic(nEventEarly,nDataEarly,1000,1,nEarlyUserId)
							Task_SetStcTimestamp(nEventEarly,nDataEarly,0,nEarlyUserId)
							local nInsertGrade = Get_UserStatisticValue(nEventEarly,nDataEarly,nEarlyUserId)
							RankingFunc_SetInfo(24408,nInsertGrade,nEarlyUserId)
							
							--更改globalid标识标识这场比赛提前结束
							Sys_SetSynaGlobalData1(nGlobalId,1)
							--清除玩家身上的战斗buff
							-- User_SetBattleBuff(0,nEarlyUserId)
							JulyEatchicken_ChkToolStatus(nEarlyUserId)
							--传送出地图
							JulyEatchicken_TranlateOrginal(nEarlyUserId)
							tJulyEatchicken_Save = {}
							tJulyEatchicken_KillSave = {}
							return
						end
					end
				end
			end
		end
	end
	
	-- "12:44 12:44"
	-- "12:49 12:49"
	-- "12:54 12:54"
	-- "17:44 17:44"
	-- "17:49 17:49"
	-- "17:54 17:54"
	-- "21:44 21:44"
	-- "21:49 21:49"
	-- "21:54 21:54"
	
	--若是提前则
	if nGlobalIdEarly ~= 1 then
		--缩圈前的提示
		for i,v in pairs(tJulyEatchicken_Time["CircleTimeTip"]) do
			if Sys_ChkDayTime(v) then
				-- Sys_SystemBroadcast(tJulyEatchicken_Text[24407]["Broadcast"][11])
				Sys_GmBroadcast(tJulyEatchicken_Text[24407]["Broadcast"][11])
				return
			end
		end
		
		--这轮结束地图内玩家被传送出地图外
		for i,v in pairs(tJulyEatchicken_Time["CircleEnd"]) do
			if Sys_ChkDayTime(v) then
				for j,k in pairs(tJulyEatchicken_Save) do
				--清除状态
					JulyEatchicken_ChkToolStatus(k)
					-- User_SetBattleBuff(0,k)
					--回到原地图
				JulyEatchicken_TranlateOrginal(k)
				tJulyEatchicken_Save = {}
			end
		end
	end

	
	--开始缩圈
	for i,v in pairs(tJulyEatchicken_Time["CircleTime"]) do
		if Sys_ChkDayTime(v) then
			
			--判断该玩家是否在活动地图内，没有就重新整理临时表
			-- local nBegin = 1
			-- while nBegin <= #tJulyEatchicken_Save do
				-- local nUserMap = Get_UserMapId(v)
				-- if (nUserMap <=  tJulyEatchicken_Map["MapId"][1]) or (nUserMap >= tJulyEatchicken_Map["MapId"][50]) then
					-- table.remove(tJulyEatchicken_Save,nBegin)
				-- else
					-- nBegin = nBegin + 1
				-- end
			-- end
				
			local nRoomNum = Get_SysDynaGlobalData0(nGlobalId)
			for y,z in pairs(tJulyEatchicken_TimeCloseRoom[nRoomNum+1]) do
				
				--更改哪个几个房间关闭
				local nCloseGlobalId = tJulyEatchicken_GlobalSave[z][1]
				local nClossPos = tJulyEatchicken_GlobalSave[z][2]
				Sys_SetSynaGlobalData(nCloseGlobalId,nClossPos,1)
				
				--在关闭的地图内新增强力怪,最多49只
				local nMapId = tRankingFunc_Info[24408]["MapId"][1]
				local nMonsterId = tRankingFunc_Info[24408]["Monster"]
				local nMonsterSumNum =  Get_SysTempData(1,nMapId,nMonsterId)
				
				if nMonsterSumNum < 49 then
				
					local nPosX = tJulyEatchicken_Map["Bound"][z][5]
					local nPosY = tJulyEatchicken_Map["Bound"][z][6]
					local nGenId = tRankingFunc_Info[24408]["Generator"]
					local sMonsterName = tJulyEatchicken_Text["MonsterName"]
					-- Monster_AddMonster(nMapId,nPosX,nPosY,nGenId,nMonsterId)
					Monster_CreateMonsterRange(0,0,nMapId,nPosX,nPosY,nGenId,nMonsterId,0,sMonsterName,0,5,5,1,10800)
					
					Sys_SetTempData(1,nMapId,nMonsterId,nMonsterSumNum+1)
				end
			end
			
			--更改第几轮
			Sys_SetSynaGlobalData0(nGlobalId,nRoomNum+1)
				
			--控制此房间的玩家去死
			for c,l in pairs(tJulyEatchicken_Save) do
				--清理掩码
				JulyEatchicken_CleanStc(l)
				
					if User_IsUserOnline(l) then
						local nUserMap = Get_UserMapId(l)
						local nUserPosX = Get_UserPositionX(l)
						local nUserPosY = Get_UserPositionY(l)
						if (nUserMap ~= 0) then
					for j,k in pairs(tJulyEatchicken_Map["MapId"]) do
						
						if j ~= 50 then
							local nPosNewBeginX = tJulyEatchicken_Map["Bound"][j][1] 
							local nPosNewEndX = tJulyEatchicken_Map["Bound"][j][2] 
							local nPosNewBeginY = tJulyEatchicken_Map["Bound"][j][3]
							local nPosNewEndY = tJulyEatchicken_Map["Bound"][j][4]
							
							if (nUserPosX >= nPosNewBeginX) and (nUserPosX <= nPosNewEndX) and (nUserPosY >= nPosNewBeginY) and (nUserPosY <= nPosNewEndY) then
								local nNeiGlobalId = tJulyEatchicken_GlobalSave[j][1]
								local nPos = tJulyEatchicken_GlobalSave[j][2]
								local nRoomGet = Get_SysDynaGlobalData(nNeiGlobalId,nPos)
								local nResultTranslateGlobal = tRankingFunc_Info[24408]["RoomGlobalId"][1]
								local nResultTranlate = Get_SysDynaGlobalData0(nResultTranslateGlobal)
								if nRoomGet == 1 then
									--传送玩家到安全屋，并让他去死，若是第三轮了就直接把玩家传送回双龙城
									local nMapId = tJulyEatchicken_Map["MapId"][50][1]
									local nPosX = tJulyEatchicken_Map["PosX"]
									local nPosY = tJulyEatchicken_Map["PosY"]
		
									if nResultTranlate >= 3 then
										nMapId = tJulyEatchicken_Map["DragonCity"]["Normal"]["MapId"]
										nPosX = tJulyEatchicken_Map["DragonCity"]["Normal"]["PosX"]
										nPosY = tJulyEatchicken_Map["DragonCity"]["Normal"]["PosY"]
										if SpecialServer_ChkNoGiftServer() then
											nMapId = tJulyEatchicken_Map["DragonCity"]["Special"]["MapId"]
											nPosX = tJulyEatchicken_Map["DragonCity"]["Special"]["PosX"]
											nPosY = tJulyEatchicken_Map["DragonCity"]["Special"]["PosY"]
										end
										Sys_MsgBox(tJulyEatchicken_Text[24407]["Broadcast"][8],nil,nil,l)
										User_TalkChannel2005(tJulyEatchicken_Text[24407]["Broadcast"][8],l)
									else
										Sys_MsgBox(tJulyEatchicken_Text[24407]["Broadcast"][7],nil,nil,l)
										User_TalkChannel2005(tJulyEatchicken_Text[24407]["Broadcast"][7],l)
									end
									
											--玩家身上播放光效
											local sSzObj = tJulyEatchicken_Map["nEffect"][1]
											local sEffect = tJulyEatchicken_Map["nEffect"][2]
											User_EffectAdd(sSzObj,sEffect,l)
											JulyEatchicken_ChkToolStatus(l)
											-- local nBoundX = tJulyEatchicken_Map["nBound"]
											-- local nBoundY = tJulyEatchicken_Map["nBound"]
											-- User_UserRandBoundTrans(nMapId,nPosX,nPosY,nBoundX,nBoundY,0,v)
									
									User_DecLifePercent(100,1,l)
								else
									--没死就发阶段礼包
									if User_CheckLeftSpace(1,l) then
										RewardTemplate_UseItemAndMsg(tJulyEatchicken_RankGiftbag[nResultTranlate],l)
									else
										JulyEatchicken_Mail(nResultTranlate,l)
									end
								end
								break
							end
						end
					end
				end
					end
			end
			
			--整理临时表中的数据
			local nBegin = 1
				if tJulyEatchicken_Save ~= nil then
					local nCalLoop = 0
					while nBegin <= #tJulyEatchicken_Save do
						if nCalLoop > G_CalculateLoop*3 then
							Sys_SaveAbnormalLog("函数 JulyEatchicken_TimeWalk 中 [while]循环超过1000次！")
							break
						end
						nCalLoop = nCalLoop + 1
						local nSaveId = tJulyEatchicken_Save[nBegin]
						if User_IsUserOnline(nSaveId) then
							local nUserMap = Get_UserMapId(nSaveId)
							if (nUserMap <  tJulyEatchicken_Map["MapId"][1][1]) or (nUserMap > tJulyEatchicken_Map["MapId"][50][1]) then
								table.remove(tJulyEatchicken_Save,nBegin)
							else
								nBegin = nBegin + 1
							end
						else
							table.remove(tJulyEatchicken_Save,nBegin)
						end
					end
				end
				
				break
			end
		end
	end
end

--传送回双龙城并且临时表中清理玩家数据
function JulyEatchicken_TranlateOrginalandClean()
	
	--清除状态
	JulyEatchicken_ChkToolStatus()
	-- User_SetBattleBuff(0)
	--回到原地图
	JulyEatchicken_TranlateOrginal()
	
	local nBegin = 1
	local nUserId = Get_UserId()
	local nCalLoop = 0
	while nBegin <= #tJulyEatchicken_Save do
		if nCalLoop > G_CalculateLoop*3 then
			Sys_SaveAbnormalLog("函数 JulyEatchicken_TranlateOrginalandClean 中 [while]循环超过1000次！")
			break
		end
		nCalLoop = nCalLoop + 1
		if (tJulyEatchicken_Save[nBegin] ~= nil) and (nUserId == tJulyEatchicken_Save[nBegin]) then
			table.remove(tJulyEatchicken_Save,nBegin)
		else
			nBegin = nBegin + 1
		end
	end

end

--传送回双龙城
function JulyEatchicken_TranlateOrginal(nNewUserId)
	
	local nUserId = nNewUserId or Get_UserId()
	local nMapId = tJulyEatchicken_Map["DragonCity"]["Normal"]["MapId"]
	local nPosX = tJulyEatchicken_Map["DragonCity"]["Normal"]["PosX"]
	local nPosY = tJulyEatchicken_Map["DragonCity"]["Normal"]["PosY"]

	if SpecialServer_ChkNoGiftServer() then
		nMapId = tJulyEatchicken_Map["DragonCity"]["Special"]["MapId"]
		nPosX = tJulyEatchicken_Map["DragonCity"]["Special"]["PosX"]
		nPosY = tJulyEatchicken_Map["DragonCity"]["Special"]["PosY"]
	end

	
	local nBoundX = tJulyEatchicken_Map["nBound"]
	local nBoundY = tJulyEatchicken_Map["nBound"]
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,nBoundX,nBoundY,0,nUserId)
	
	User_TalkChannel2005(tJulyEatchicken_Text[24407]["Broadcast"][9],nUserId)
	
end

--隔天清理掩码
function JulyEatchicken_CleanStc(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	for i = 6,8,1 do
		local nEvent = tJulyEatchicken_Stc[i][1]
		local nData = tJulyEatchicken_Stc[i][2]
		if Task_StcInterval(nEvent,nData,1,4,nUserId) then
			Task_SetStatistic(nEvent,nData,0,1,nUserId)
			Task_SetStcTimestamp(nEvent,nData,0,nUserId)
		end
	end
	
end


--缩圈礼包
function JulyEatchicken_SmallOpenBag(nItemId)
	
	--掩码隔天清理
	JulyEatchicken_CleanStc()
	
	local nSpace = RewardTemplate_GetRandomSpace(tJulyEatchicken_RewardItem,nItemId)
	if User_CheckLeftSpace(nSpace) then
		RewardTemplate_RandomReward(tJulyEatchicken_RewardItem,nItemId)
		local nEventype = tJulyEatchicken_Stc[4][1]
		local nDatatype = tJulyEatchicken_Stc[4][2]
		local nEventCi
		local nDataCi
		local nAddNum = tJulyEatchicken_RewardItem[nItemId]["Grade"]
		
		if nAddNum ~= nil then
			--判断玩家是在哪一场比赛
			--在活动时间内写入总榜
			for i,v in pairs(tJulyEatchicken_Time["DailyTime"]) do
				if Sys_ChkDayTime(v) then
					nEventCi = tJulyEatchicken_Stc[5+i][1]
					nDataCi = tJulyEatchicken_Stc[5+i][2]
					Task_AddStatistic(nEventCi,nDataCi,nAddNum,1) 
					Task_SetStcTimestamp(nEventCi,nDataCi,0)
					local nGrade = Get_UserStatisticValue(nEventCi,nDataCi)
					RankingFunc_SetInfo(24408,nGrade)
					
					break
				end
			end
			
			Task_AddStatistic(nEventype,nDatatype,nAddNum,1) 
			User_TalkChannel2005(string.format(tJulyEatchicken_Text[24407]["Broadcast"][14],nAddNum))
			--写入排行榜
			local nGrade = Get_UserStatisticValue(nEventype,nDatatype)
			RankingFunc_SetInfo(24407,nGrade)
			
			
		end
	end
end


--奖励礼包打开
function JulyEatchicken_DayOpenBag(nItemId)
	local nPro = Get_NewUserProfession()
	if nPro >= 1000 and nPro <= 1999 then
		local nSpace = RewardTemplate_GetRewardSpace(tJulyEatchicken_RewardItem[nItemId][1])
		local nSpaceTwice = RewardTemplate_GetRewardSpace(tJulyEatchicken_RewardItem[nItemId])
		if User_CheckLeftSpace(nSpace+nSpaceTwice) then
			RewardTemplate_UseItemAndMsg(tJulyEatchicken_RewardItem[nItemId][1])
			RewardTemplate_UseItemAndMsg(tJulyEatchicken_RewardItem[nItemId])
		else
			Sys_MsgBox(string.format(tJulyEatchicken_Text[3313104]["Broadcast"][2],nSpace+nSpaceTwice))
			User_TalkChannel2005(string.format(tJulyEatchicken_Text[3313104]["Broadcast"][2],nSpace+nSpaceTwice))
		end
		return
	end
	
	local nSpaceT = RewardTemplate_GetRewardSpace(tJulyEatchicken_RewardItem[nItemId])
	if User_CheckLeftSpace(nSpaceT) then
		RewardTemplate_UseItemAndMsg(tJulyEatchicken_RewardItem[nItemId])
	else
		Sys_MsgBox(string.format(tJulyEatchicken_Text[3313104]["Broadcast"][2],nSpaceT))
		User_TalkChannel2005(string.format(tJulyEatchicken_Text[3313104]["Broadcast"][2],nSpaceT))
	end
end

--身上有状态加成则删除
function JulyEatchicken_ChkToolStatus(nNewUserId)
	local i = 0
	local nNowUserId = nNewUserId or Get_UserId()
	
	for i = 1,9 do
		local nStatus = tJulyEatchicken_Item["MiniBuff"][i] 
		if User_ChkRoleStatus(nStatus,nNowUserId) then
			User_DelRoleStatus(nStatus,nNowUserId)
		end
	end
	
end

--身上有药水相同不可叠加
function JulyEatchicken_ChkSameToolStatus(nTip)
	local nNowUserId = Get_UserId()
	local nStatus = tJulyEatchicken_Item["MiniBuff"][nTip] 
	if User_ChkRoleStatus(nStatus,nNowUserId) then
		User_DelRoleStatus(nStatus,nNowUserId)
	end
end

--使用药水增益符
function JulyEatchicken_UseTools(nItemId,nTip)
	--判断是否在时间内
	if not Sys_ChkFullTime(tJulyEatchicken_Time["Active"]) then
		Sys_MsgBox(tJulyEatchicken_Text[24407]["Broadcast"][5])
		return
	end
	
	--判断是否在活动地图中
	local nMapId = Get_UserMapId()
	if (nMapId >= tJulyEatchicken_Map["MapId"][1][1]) and (nMapId <= tJulyEatchicken_Map["MapId"][49][1]) then
		local nSecs = tJulyEatchicken_Item["Secs"]
		local nTimes = tJulyEatchicken_Item["Times"]
		local nRemainTime = tJulyEatchicken_Item["RemainTime"]
		local nEndTime = tJulyEatchicken_Item["EndTime"]
		local nRecordable = tJulyEatchicken_Item["Recordable"]
		local nUserId = Get_UserId()
		local sBroadcast
		--增益符，使用不删除，5分钟期限到自动删除
		if Item_ChkMulItem(nItemId,nItemId,1) and Item_DelMulItem(nItemId,nItemId,1) then
			
			JulyEatchicken_ChkSameToolStatus(nTip)
			
			local nStatus = tJulyEatchicken_Item["MiniBuff"][nTip] 
			local nPower = tJulyEatchicken_Item["MiniBuff"][nStatus]
			
			--同时增加150％物理暴击和150％法术暴击
			if nTip == 5 then
				User_AddRoleStatus(nStatus,nPower,nSecs,nTimes,nRemainTime,nEndTime,nRecordable,0,0,nUserId)
				nStatus = tJulyEatchicken_Item["MiniBuff"][nTip+1] 
				nPower = tJulyEatchicken_Item["MiniBuff"][nStatus]
				User_AddRoleStatus(nStatus,nPower,nSecs,nTimes,nRemainTime,nEndTime,nRecordable,0,0,nUserId)
				User_EffectAdd(tJulyEatchicken_Item["Self"],tJulyEatchicken_Item["Effect"])
				Sys_SaveActionFestivalLog(string.format(tJulyEatchicken_Item["TransLog"],nItemId))
				sBroadcast = string.format(tJulyEatchicken_Text[3313104]["Broadcast"][1],Get_ItemtypeName(nItemId),tJulyEatchicken_Text["Increase"][nItemId])
				User_TalkChannel2005(sBroadcast)
				return 
			end
			
			User_AddRoleStatus(nStatus,nPower,nSecs,nTimes,nRemainTime,nEndTime,nRecordable,0,0,nUserId)
			User_EffectAdd(tJulyEatchicken_Item["Self"],tJulyEatchicken_Item["Effect"])
			Sys_SaveActionFestivalLog(string.format(tJulyEatchicken_Item["TransLog"],nItemId))
			sBroadcast = string.format(tJulyEatchicken_Text[3313104]["Broadcast"][1],Get_ItemtypeName(nItemId),tJulyEatchicken_Text["Increase"][nItemId])
			User_TalkChannel2005(sBroadcast)
		end
	else
		User_TalkChannel2005(tJulyEatchicken_Text[24407]["Broadcast"][13])
	end
end


--判断哪个房间可以传送
function JulyEatchicken_WhichShow(nTip)
	local nMapId = Get_UserMapId()
	local nNum = 0
	local nGlobalResult  = 0
	for i,v in pairs(tJulyEatchicken_Map["MapId"]) do
		if nMapId == v[1] then
			nNum = i
		end
	end
	
	if nNum == 0 then
		return
	end
	
	local nGlobalId = tJulyEatchicken_GlobalSave[nNum][nTip]
	local nPos = tJulyEatchicken_GlobalSave[nNum][nTip+1]
	
	if nGlobalId ~= nil then
		nGlobalResult = Get_SysDynaGlobalData(nGlobalId,nPos)
	end
	
	if (nGlobalId ~= nil) and (nGlobalResult ~= 1) then
		return true
	end
	return false
end

--活动中传送到其他房间内
function JulyEatchicken_TranlateRoom(nNpcId,nRound,nTrueRound)
	local nUserId = Get_UserId()
	--若不在活动时间内则传送回双龙城
	local nTip = 0
	if not Sys_ChkFullTime(tJulyEatchicken_Time["Active"]) then
		nTip = 1
	end
	
	for i,v in pairs(tJulyEatchicken_Time["DailyTime"]) do
		if Sys_ChkDayTime(v) then
			nTip = 0
			break
		end
	end
	
	--在活动时间外传送回双龙城
	if nTip == 1 then
		JulyEatchicken_TranlateOrginal()
		return
	end
	
	--设置30秒传送cd
	local nTimeEvent = tJulyEatchicken_Stc[9][1][1]
	local nTimeData = tJulyEatchicken_Stc[9][1][2]
	local nTimeType = tJulyEatchicken_Stc[9][2]
	local nDelay = tJulyEatchicken_Stc[9][3]
	
	
	-- 清cd
	Task_StcReset(nTimeEvent,nTimeData,nUserId,nTimeType,nDelay)
	if Get_UserStatisticValue(nTimeEvent,nTimeData,nUserId) > 0 then
		local nTimestamp = Get_UserStcTimestampValue(nTimeEvent,nTimeData,nUserId)
		local nChaEnough = (os.time() - nTimestamp)
		-- if nChaEnough < 0 then
			-- nChaEnough = 0
		-- end
		
		local nSec = nDelay - nChaEnough
		Sys_MsgBox(string.format(tJulyEatchicken_Text[24407]["Broadcast"][10], nSec),nil,nil,nUserId)
		return
	end
	--记cd掩码
	Task_SetStatistic(nTimeEvent,nTimeData,1,1,nUserId)
	
	
	
	local nMapId = Get_UserMapId()
	if nMapId == tJulyEatchicken_Map["MapId"][50][1] then
		return
	end
	
	local nNum = 0
	for i,v in pairs(tJulyEatchicken_Map["MapId"]) do
		if nMapId == v[1] then
			nNum = i
		end
	end
	
	if nNum ~= 0 then
		local nGlobalId = tJulyEatchicken_GlobalSave[nNum][nRound]
		local nPos = tJulyEatchicken_GlobalSave[nNum][nRound+1]
		local nGlobalResult = 0
		if nGlobalId ~= nil then
			nGlobalResult = Get_SysDynaGlobalData(nGlobalId,nPos)
		end
		
		if (nGlobalId ~= nil) and (nPos ~= nil) and (nGlobalResult ~= 1)then
			
			local nTrueChange = tJulyEatchicken_Map["MapId"][nNum][nTrueRound]
			if nTrueChange ~= 0 then
				local nTrueMapId = tJulyEatchicken_Map["MapId"][nTrueChange][1]
				local nPosX = tJulyEatchicken_Map["PosX"]
				local nPosY = tJulyEatchicken_Map["PosY"]
				local nBoundX = tJulyEatchicken_Map["nBound"]
				local nBoundY = tJulyEatchicken_Map["nBound"]
				
				--根据相应房间给玩家相应积分
				local nGlobalIdNum = tRankingFunc_Info[24408]["RoomGlobalId"][1]
				local nGlobalIdNumitem = Get_SysDynaGlobalData0(nGlobalIdNum)
				local nNewinsertNum = tRankingFunc_Info[24408]["NowCircle"][nGlobalIdNumitem+1]
				local nGrade = 0
				if nNewinsertNum ~= nil then
					--插入单次排行版
					for i,v in pairs(tJulyEatchicken_Time["DailyTime"]) do
						if Sys_ChkDayTime(v) then
							nEventCi = tJulyEatchicken_Stc[5+i][1]
							nDataCi = tJulyEatchicken_Stc[5+i][2]
							Task_AddStatistic(nEventCi,nDataCi,nNewinsertNum,1) 
							Task_SetStcTimestamp(nEventCi,nDataCi,0)
							nGrade = Get_UserStatisticValue(nEventCi,nDataCi)
							RankingFunc_SetInfo(24408,nGrade)
							break
						end
					end
					
					--插入总排行版
					local nEventype = tJulyEatchicken_Stc[4][1]
					local nDatatype = tJulyEatchicken_Stc[4][2]
					
					Task_AddStatistic(nEventype,nDatatype,nNewinsertNum,1) 
					--写入排行榜
					local nGrade = Get_UserStatisticValue(nEventype,nDatatype)
					RankingFunc_SetInfo(24407,nGrade)
					
					User_TalkChannel2005(string.format(tJulyEatchicken_Text[24407]["Broadcast"][18],nNewinsertNum))
					
				end
				
				--将玩家传送到地图的指定区域
				User_UserRandBoundTrans(nTrueMapId,nPosX,nPosY,nBoundX,nBoundY,0)
				local sBroadcast = string.format(tJulyEatchicken_Text[nNpcId]["Broadcast"][1],tJulyEatchicken_Text[nNpcId]["Text1122"][nTrueChange])
				Sys_MsgBox(sBroadcast)
				User_TalkChannel2005(sBroadcast)
				
				--倒计时
				User_SetTimer(nDelay,nil,1,nUserId)
			end
		else
			User_TalkChannel2005(tJulyEatchicken_Text[24407]["Broadcast"][12])
		end
	end
end

--二次确认传送具体对白
function JulyEatchicken_TranlatChatSure(nTip)
	local nNpcId = Get_NpcId()
	local sUserRoom = ""
	local nRoomId = 0
	local nHumanNum = 0
	for i,v in pairs(tJulyEatchicken_GlobalSave) do

		if Get_UserMapId() == tJulyEatchicken_Map["MapId"][i][1] then
			local nArround = tJulyEatchicken_Map["MapId"][i][nTip]
			if nArround ~= 0 then 
				sUserRoom = tJulyEatchicken_Text[24409]["Text1122"][nArround]
				nRoomId = tJulyEatchicken_Map["MapId"][nArround][1]
			end
			break
		end
		
	end
	
	for i,v in pairs(tJulyEatchicken_Save) do
		if Get_UserMapId(v) == nRoomId then
			nHumanNum = nHumanNum + 1
		end
	end

	tNpcGossip[nNpcId]["Text116"] = string.format(tJulyEatchicken_Text[24409]["Text116"],sUserRoom,nHumanNum)
	return true
end

--传送具体对白
function JulyEatchicken_TranlateChat()
	local nNpcId = Get_NpcId()
	tNpcGossip[nNpcId]["Text1-1"] = {111,112}
	local nNum = 0
	local nNumRoom = 1131
	local sLength = tJulyEatchicken_Text["Space"]
	local sRoomName = ""
	local sUserRoom = ""
	for i,v in pairs(tJulyEatchicken_Save) do
		if User_IsUserOnline(v) then
			local nUserMap = Get_UserMapId(v)
			if (nUserMap ~= nil) and (nUserMap >= tJulyEatchicken_Map["MapId"][1][1]) and (nUserMap <= tJulyEatchicken_Map["MapId"][50][1]) then
				nNum = nNum + 1
			end
		end
	end
	tNpcGossip[nNpcId]["Text111"] = string.format(tJulyEatchicken_Text[24409]["Text111"],nNum)
	for i,v in pairs(tJulyEatchicken_GlobalSave) do
		local nGlobalId = v[1]
		local nPos = v[2]
		
		local nResult = Get_SysDynaGlobalData(nGlobalId,nPos)
		local sColor = tJulyEatchicken_ColorChange[nResult]
		local nUsePosX = Get_UserPositionX()
		local nUsePosY = Get_UserPositionY()

		local nPosNewBeginX = tJulyEatchicken_Map["Bound"][i][1]
		local nPosNewEndX = tJulyEatchicken_Map["Bound"][i][2] 
		local nPosNewBeginY = tJulyEatchicken_Map["Bound"][i][3]
		local nPosNewEndY = tJulyEatchicken_Map["Bound"][i][4]
		
		if (nUsePosX >= nPosNewBeginX) and (nUsePosX <= nPosNewEndX) and (nUsePosY >= nPosNewBeginY) and (nUsePosY <= nPosNewEndY) then
		
			sColor = tJulyEatchicken_ColorChange[2]
			sUserRoom = tJulyEatchicken_Text[24409]["Text1122"][i]
			
		end
		
		sRoomName = tJulyEatchicken_Text[24409]["Text1122"][i]
		-- if Get_UserMapId() == tJulyEatchicken_Map["MapId"][i][1] then
			-- sColor = tJulyEatchicken_ColorChange[2]
			-- sUserRoom = tJulyEatchicken_Text[24409]["Text1122"][i]
		--end
		local sColorName = string.format(tJulyEatchicken_Text[24409]["Text1121"],sColor,sRoomName)
		sLength = string.format(tJulyEatchicken_Text["Link"],sLength,sColorName)
		if i%7 == 0 then
			sLength = string.format(tJulyEatchicken_Text["Link"],sLength,tJulyEatchicken_Text["End"])
			tNpcGossip[nNpcId]["Text"..nNumRoom] = sLength
			table.insert(tNpcGossip[nNpcId]["Text1-1"],nNumRoom)
			sLength = tJulyEatchicken_Text["Space"]
			nNumRoom = nNumRoom + 1
		end
		
	end
	
	tNpcGossip[nNpcId]["Text114"] = tJulyEatchicken_Text[24409]["Text114"]
	tNpcGossip[nNpcId]["Text113"] = tJulyEatchicken_Text[24409]["Text115"]
	if sRoomName ~= nil then
		tNpcGossip[nNpcId]["Text113"] = string.format(tJulyEatchicken_Text[24409]["Text113"],sUserRoom)
	end
	table.insert(tNpcGossip[nNpcId]["Text1-1"],114)
	table.insert(tNpcGossip[nNpcId]["Text1-1"],113)
	return true
end

--查看生存排行榜条件判断
function JulyEatchicken_RankQing(nNpcId)
	-- local nTimetip = 0
	-- for i,v in pairs(tJulyEatchicken_Time["DailyTime"]) do
		-- if Sys_ChkDayTime(v) then
			-- nTimetip = i
			-- break
		-- end
	-- end
	
	-- if nTimetip == 0 then
		-- Sys_MsgBox(tJulyEatchicken_Text[24407]["Broadcast"][4])
		-- return
	-- end
	
	LinkNpcGossipFunc_New(nNpcId,"3-1")
end


--领取总奖励奖励
function JulyEatchicken_GetWeekAward(nNpcId)

	local nUserId = Get_UserId()
	local nTip = 0
	
	if Sys_ChkFullTime(tJulyEatchicken_Time["ActiveNpc"]) then
		
		local nGradeEvent = tJulyEatchicken_Stc[4][1]
		local nGradeData = tJulyEatchicken_Stc[4][2]
		for i,v in pairs(tJulyEatchicken_Stc[5]) do
			if Task_ChkStcValue(nGradeEvent,nGradeData,">=",v[3],nUserId) and Task_ChkStcValue(v[1],v[2],"==",0,nUserId) then
				Task_SetStatistic(v[1],v[2],1,1,nUserId)
				Task_SetStcTimestamp(v[1],v[2],0,nUserId)
				RewardTemplate_UseItemAndMsg(tJulyEatchicken_RewardItem[nNpcId][i])
				nTip = 1
			end
		end
		if nTip == 0 then
			Sys_MsgBox(tJulyEatchicken_Text[nNpcId]["Broadcast"][15])
			User_TalkChannel2005(tJulyEatchicken_Text[nNpcId]["Broadcast"][15])
			return
		end
	else
		Sys_MsgBox(tJulyEatchicken_Text[24407]["Broadcast"][3])
	end
end

--进入活动地图
function JulyEatchicken_Enter(nNpcId)
	
	local nTimetip = 0
	local nUserId = Get_UserId()
	for i,v in pairs(tJulyEatchicken_Time["DailyTime"]) do
		if Sys_ChkDayTime(v) then
			nTimetip = i
			break
		end
	end
	
	--不在活动时间
	if nTimetip == 0 then
		LinkNpcGossipFunc_New(nNpcId,"5-1")
		return
	end
	
	local nTeamNum = Get_UserTeamNumbers()
	if nTeamNum >= 2 then
		Sys_MsgBox(tJulyEatchicken_Text[24407]["Broadcast"][17])
		return
	end
	local nEventype = tJulyEatchicken_Stc[nTimetip][1]
	local nDatatype = tJulyEatchicken_Stc[nTimetip][2]
	if Task_StcInterval(nEventype,nDatatype,1,4,nUserId) then
		Task_SetStatistic(nEventype,nDatatype,0,1,nUserId)
		Task_SetStcTimestamp(nEventype,nDatatype,0,nUserId)
		-- tJulyEatchicken_Save = {}
	end
	
	--这局玩家退出
	if Task_ChkStcValue(nEventype,nDatatype,"==",1,nUserId) then
		LinkNpcGossipFunc_New(nNpcId,"6-1")
		return false
	end
	
	--小于等于9个也不能再进入地图
	local nSureGlobalId = tRankingFunc_Info[24408]["RoomGlobalId"][1]
	local nResultTranlate = Get_SysDynaGlobalData0(nSureGlobalId)
	local nGlobalIdResult = Get_SysDynaGlobalData1(nSureGlobalId)
	if (nResultTranlate >= 2) or (nGlobalIdResult == 1) then
		Sys_MsgBox(tJulyEatchicken_Text[24407]["Broadcast"][22])
		User_TalkChannel2005(tJulyEatchicken_Text[24407]["Broadcast"][22])
		return
	end
	
	--清除状态
	--清除玩家身上的状态
	JulyEatchicken_ChkToolStatus()
	--清除玩家身上的战斗buff
	-- User_SetBattleBuff(0)
	
	--userid记录临时表
	table.insert(tJulyEatchicken_Save,nUserId)
	
	--参与活动Log
	Sys_SaveActionFestivalLog(tJulyEatchicken_Log[1])
	
	--传送入地图
	Task_SetStatistic(nEventype,nDatatype,1,1,nUserId)
	Task_SetStcTimestamp(nEventype,nDatatype,0,nUserId)
	
	math.randomseed(tostring(os.time()):reverse():sub(1, 6))
	-- math.randomseed(tostring(os.time()))
	local nRoom = math.random(1,49)
	
	
	--若玩家本身传送到死亡的房间则自动死亡
	local nGlobalId = tJulyEatchicken_GlobalSave[nRoom][1]
	local nPos = tJulyEatchicken_GlobalSave[nRoom][2]
	local nResult = Get_SysDynaGlobalData(nGlobalId,nPos)
	
	--把玩家直接传送入隔离屋
	local nMapId = tJulyEatchicken_Map["MapId"][nRoom][1]
	local nPosX = tJulyEatchicken_Map["MapId"][nRoom][6]
	local nPosY = tJulyEatchicken_Map["MapId"][nRoom][7]
	local nBoundX = tJulyEatchicken_Map["nBound"]
	local nBoundY = tJulyEatchicken_Map["nBound"]
	if nResult == 1 then
		nMapId = tJulyEatchicken_Map["MapId"][50][1]
		User_UserRandBoundTrans(nMapId,nPosX,nPosY,nBoundX,nBoundY,0)
		User_TalkChannel2005(tJulyEatchicken_Text[24407]["Broadcast"][6])
		Sys_MsgBox(tJulyEatchicken_Text[24407]["Broadcast"][6])
		User_DecLifePercent(100,1,nUserId)
		return
	end
	
	
	--将玩家传送到地图的指定区域
	--发阶段礼包
	if User_CheckLeftSpace(1) then
		RewardTemplate_UseItemAndMsg(tJulyEatchicken_RankGiftbag[4])
	else
		JulyEatchicken_Mail(4)
	end
	--发战斗buff礼包
	-- if User_CheckLeftSpace(1) then
		-- RewardTemplate_UseItemAndMsg(tJulyEatchicken_RankGiftbag[5])
	-- else
		-- JulyEatchicken_Mail(5)
	-- end
	
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,nBoundX,nBoundY,0)
	User_TalkChannel2005(tJulyEatchicken_Text[24407]["Broadcast"][2])
	-- local sMapName = tJulyEatchicken_Text["MapName"][nMapId]
	-- Sys_MsgBox(string.format(tJulyEatchicken_Text[24409]["Broadcast"][1],sMapName))
	
end

--查看单榜奖励
function JulyEatchicken_TranlateOwnChat()
	local nNpcId = Get_NpcId()
	tNpcGossip[nNpcId]["Text7-1"] = {127,123,128}
	local tRanktable = RankingFunc_GetNowData(24408)
	local nNum = 1301
	for i,v in pairs(tRanktable) do
		if (v["UserId"] ~= nil) or (v["UserId"] ~= 0) then
			local nGrade = v["Score"]
			local nUserName = v["UserName"]--Get_UserName(v["UserId"])
			local sExits = tJulyEatchicken_Text[24407]["Text1292"]
			
			if User_IsUserOnline(v["UserId"]) then
				local nNowMapId = Get_UserMapId(v["UserId"]) 
				if (nNowMapId >= tRankingFunc_Info[24408]["MapId"][1]) and (nNowMapId <= tRankingFunc_Info[24408]["MapId"][2]) then
					sExits = tJulyEatchicken_Text[24407]["Text1291"]
				end
			end
			
			local nExitNow = 0
			for k,j in pairs(tJulyEatchicken_Time["DailyTime"]) do
				if Sys_ChkDayTime(j) then
					nExitNow = 1
				end
			end
			
			local nGlobalIdEarly = tRankingFunc_Info[24408]["RoomGlobalId"][1]
			local nGlobalIdEarlyGet = Get_SysDynaGlobalData1(nGlobalIdEarly)
			
			if (nExitNow == 1) and (nGlobalIdEarlyGet ~= 1) then
				tNpcGossip[nNpcId]["Text"..nNum] = string.format(tJulyEatchicken_Text[24407]["Text129"],i,nGrade,Sys_StringGSubTip(nUserName),sExits)
			else
				tNpcGossip[nNpcId]["Text"..nNum] = string.format(tJulyEatchicken_Text[24407]["Text1294"],i,nGrade,Sys_StringGSubTip(nUserName))
			end
		else
			tNpcGossip[nNpcId]["Text"..nNum] = tJulyEatchicken_Text[24407]["Text1293"]
		end
		table.insert(tNpcGossip[nNpcId]["Text7-1"],nNum)
		nNum = nNum + 1 
	end
	
	tNpcGossip[nNpcId]["Text1281"] = tJulyEatchicken_Text[24407]["Text123"]
	local nGlobalId = tRankingFunc_Info[24408]["RoomGlobalId"][1]
	local nGlobalIdOne = Get_SysDynaGlobalData(nGlobalId,0)
	local nGlobalIdTip = tRankingFunc_Info[24408]["People"][nGlobalIdOne+1]
	
	local nRoomNumPeople = 0
	if tJulyEatchicken_Save ~= nil then
		for i,v in pairs(tJulyEatchicken_Save) do
			if User_IsUserOnline(v) then
				local nUserMap = Get_UserMapId(v)
				if (nUserMap >= tJulyEatchicken_Map["MapId"][1][1]) and (nUserMap <= tJulyEatchicken_Map["MapId"][50][1]) then
					nRoomNumPeople = nRoomNumPeople + 1
				end
			end
		end
	else
		nRoomNumPeople = 0
	end
	
	tNpcGossip[nNpcId]["Text130"] = string.format(tJulyEatchicken_Text[24407]["Text130"],nGlobalIdTip,nRoomNumPeople)
	table.insert(tNpcGossip[nNpcId]["Text7-1"],1281)
	table.insert(tNpcGossip[nNpcId]["Text7-1"],130)
	return true
end

--查看玩家总榜奖励
function JulyEatchicken_TranlateSumChat()
	local nNpcId = Get_NpcId()
	tNpcGossip[nNpcId]["Text8-1"] = {141,123,142}
	local tRanktable = RankingFunc_GetNowData(24407)
	local nNum = 1431
	for i,v in pairs(tRanktable) do
		if (v["UserId"] ~= nil) or (v["UserId"] ~= 0) then
			local nGrade = v["Score"]
			local nUserName = v["UserName"]--Get_UserName(v["UserId"])
			tNpcGossip[nNpcId]["Text"..nNum] = string.format(tJulyEatchicken_Text[24407]["Text143"],i,nGrade,Sys_StringGSubTip(nUserName))
		else
			tNpcGossip[nNpcId]["Text"..nNum] = tJulyEatchicken_Text[24407]["Text1293"]
		end
		table.insert(tNpcGossip[nNpcId]["Text8-1"],nNum)
		nNum = nNum + 1 
	end
	
	tNpcGossip[nNpcId]["Text150"] = tJulyEatchicken_Text[24407]["Text123"]
	local nEvent = tJulyEatchicken_Stc[4][1]
	local nData = tJulyEatchicken_Stc[4][2]
	local nUserGrade = Get_UserStatisticValue(nEvent,nData)
	tNpcGossip[nNpcId]["Text151"] = string.format(tJulyEatchicken_Text[24407]["Text151"],nUserGrade)
	table.insert(tNpcGossip[nNpcId]["Text8-1"],150)
	table.insert(tNpcGossip[nNpcId]["Text8-1"],151)
	return true
end

--buff道具使用
function JulyEatchicken_BuffUsemy(nItemId,nTip)
	--判断是否在时间内
	if not Sys_ChkFullTime(tJulyEatchicken_Time["Active"]) then
		Item_DelAllItemByType(nItemId)
		User_TalkChannel2005(tJulyEatchicken_Text[24407]["Broadcast"][19])
		return
	end
	
	
	local nUserId = Get_UserId()
	--在地图内才能使用
	local nMapIdSelf = Get_UserMapId()
	if (nMapIdSelf >= tRankingFunc_Info[24408]["MapId"][1]) and (nMapIdSelf <= tRankingFunc_Info[24408]["MapId"][2]) then
		if Item_ChkMulItem(nItemId,nItemId,1) and Item_DelMulItem(nItemId,nItemId,1) then
			local nBuff = tJulyEatchicken_Map["nBuff"][nTip]
			User_SetBattleBuff(0,nUserId)
			if User_SetBattleBuff(nBuff,nUserId) then
				local stcAward = string.format(tJulyEatchicken_Text[24407]["Broadcast"][20],tJulyEatchicken_Text[24407]["FightBuff"][nTip])
				User_TalkChannel2005(stcAward,nUserId)
				Sys_SaveActionFestivalLog(string.format(tJulyEatchicken_Item["TransLog"],nItemId))
			end
		end
	else
		User_TalkChannel2005(tJulyEatchicken_Text[24407]["Broadcast"][21],nUserId)
	end
end
----------------------------------模块部分配置----------------------------------

--【生存大作战】Joker
tNpcFace[5299] = 245
tNpcGossip[24407] = tNpcGossip[24407] or DefaultNpc:new{}
tNpcGossip[24407]["OptionHidden"] = 1
tNpcGossip[24407]["DialogueText"] = tJulyEatchicken_Text[24407]

tNpcGossip[24407]["Text1-1"] = {1111,111,112,113,114}
tNpcGossip[24407]["tOption1-1"] = {1}
tNpcGossip[24407]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tJulyEatchicken_Time["Before"])
end


tNpcGossip[24407]["Text1-2"] = {1111,115}
tNpcGossip[24407]["tOption1-2"] = {2}
tNpcGossip[24407]["ChkFunc1-2"] = function()
	return not Sys_ChkFullTime(tJulyEatchicken_Time["Active"])
end

tNpcGossip[24407]["Text1-3"] = {1111,116,117,118,119}
tNpcGossip[24407]["tOption1-3"] = {3}
tNpcGossip[24407]["ChkFunc1-3"] = function()
		-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tJulyEatchicken_Level["Level"],tJulyEatchicken_Level["Meto"]) then
		return true
	else
		return false 
	end
end

tNpcGossip[24407]["Text1-4"] = {1111,116,117,118,119}
tNpcGossip[24407]["tOption1-4"] = {4,7,6,61,5}
tNpcGossip[24407]["OptionFunc4"] = "JulyEatchicken_Enter</N>24407"
tNpcGossip[24407]["OptionPoint5"] = "2-1"
tNpcGossip[24407]["OptionChkFunc5"] = function()
	-- local nUserId = Get_UserId()
	-- local nRankNum = RankingFunc_GetUserInRank(24407,nUserId)
	-- if (nRankNum ~= 0) and (nRankNum <= 10) then 
		-- return true
	-- else
		-- return false
	-- end
	return true
end
tNpcGossip[24407]["OptionFunc6"] = "JulyEatchicken_RankQing</N>24407"
tNpcGossip[24407]["OptionPoint61"] = "7-1"
tNpcGossip[24407]["OptionPoint7"] = "4-1"

--领取阶段奖励
tNpcGossip[24407]["Text2-1"] = {122,123,124,1251,1252,1253,1254,1255,1256,1257,1258,1259,123,126}
tNpcGossip[24407]["tOption2-1"] = {10,11}
tNpcGossip[24407]["OptionFunc10"] = "JulyEatchicken_GetWeekAward</N>24407"
tNpcGossip[24407]["OptionPoint11"] = "1"
tNpcGossip[24407]["ChkFunc2-1"] = function()
	
	local nUserId = Get_UserId()
	local nTextNum = 1251
	
	for i,v in pairs(tJulyEatchicken_Stc[5]) do
		local sTest = tJulyEatchicken_Text[24407]["Text1262"]
		if Task_ChkStcValue(v[1],v[2],"==",1,nUserId) then
			sTest = tJulyEatchicken_Text[24407]["Text1261"]
		end
		tNpcGossip[24407]["Text"..nTextNum] = string.format(tJulyEatchicken_Text[24407]["Text"..nTextNum],sTest)
		nTextNum = nTextNum + 1
	end
	
	local nDataEvent = tJulyEatchicken_Stc[4][1]
	local nDataType = tJulyEatchicken_Stc[4][2]
	local nDataNum = Get_UserStatisticValue(nDataEvent,nDataType,nUserId)
	
	tNpcGossip[24407]["Text126"] = string.format(tJulyEatchicken_Text[24407]["Text126"],nDataNum)

	return true
end

--查看生存排行榜
tNpcGossip[24407]["Text3-1"] = {127,123,128}
tNpcGossip[24407]["tOption3-1"] = {12,18}
tNpcGossip[24407]["OptionPoint12"] = "1"
tNpcGossip[24407]["OptionPoint18"] = "9-1"
tNpcGossip[24407]["ChkFunc3-1"] = function()
	tNpcGossip[24407]["Text3-1"] = {127,123,128}
	local tRanktable = RankingFunc_GetNowData(24408)
	local nNum = 1301
	for i,v in pairs(tRanktable) do
		if (v["UserId"] ~= nil) or (v["UserId"] ~= 0) then
			local nGrade = v["Score"]
			local nUserName = v["UserName"]--Get_UserName(v["UserId"])
			local sExits = tJulyEatchicken_Text[24407]["Text1292"]
			
			if User_IsUserOnline(v["UserId"]) then
				local nNowMapId = Get_UserMapId(v["UserId"]) 
				if (nNowMapId >= tRankingFunc_Info[24408]["MapId"][1]) and (nNowMapId <= tRankingFunc_Info[24408]["MapId"][2]) then
					sExits = tJulyEatchicken_Text[24407]["Text1291"]
				end
			end
			
			local nExitNow = 0
			for k,j in pairs(tJulyEatchicken_Time["DailyTime"]) do
				if Sys_ChkDayTime(j) then
					nExitNow = 1
				end
			end
			
			local nGlobalIdEarly = tRankingFunc_Info[24408]["RoomGlobalId"][1]
			local nGlobalIdEarlyGet = Get_SysDynaGlobalData1(nGlobalIdEarly)
			
			--在活动时间外不显示存活
			if (nExitNow == 1) and (nGlobalIdEarlyGet ~= 1) then
				tNpcGossip[24407]["Text"..nNum] = string.format(tJulyEatchicken_Text[24407]["Text129"],i,nGrade,Sys_StringGSubTip(nUserName),sExits)
			else
				tNpcGossip[24407]["Text"..nNum] = string.format(tJulyEatchicken_Text[24407]["Text1294"],i,nGrade,Sys_StringGSubTip(nUserName))
			end
			
		else
			tNpcGossip[24407]["Text"..nNum] = tJulyEatchicken_Text[24407]["Text1293"]
		end
		table.insert(tNpcGossip[24407]["Text3-1"],nNum)
		nNum = nNum + 1 
	end
	
	tNpcGossip[24407]["Text1281"] = tJulyEatchicken_Text[24407]["Text123"]
	local nGlobalId = tRankingFunc_Info[24408]["RoomGlobalId"][1]
	local nGlobalIdOne = Get_SysDynaGlobalData(nGlobalId,0)
	local nGlobalIdTip = tRankingFunc_Info[24408]["People"][nGlobalIdOne+1]
	
	local nRoomNumPeople = 0
	if tJulyEatchicken_Save ~= nil then
		for i,v in pairs(tJulyEatchicken_Save) do
			if User_IsUserOnline(v) then
				local nUserMap = Get_UserMapId(v)
				if (nUserMap >= tJulyEatchicken_Map["MapId"][1][1]) and (nUserMap <= tJulyEatchicken_Map["MapId"][50][1]) then
					nRoomNumPeople = nRoomNumPeople + 1
				end
			end
		end
	else
		nRoomNumPeople = 0
	end
	
	tNpcGossip[24407]["Text130"] = string.format(tJulyEatchicken_Text[24407]["Text130"],nGlobalIdTip,nRoomNumPeople)
	table.insert(tNpcGossip[24407]["Text3-1"],1281)
	table.insert(tNpcGossip[24407]["Text3-1"],130)
	return true
end

--生存大作战规则
tNpcGossip[24407]["Text4-1"] = {131,123,132,133,134,135,136,137,138,123}
tNpcGossip[24407]["tOption4-1"] = {13}
tNpcGossip[24407]["OptionPoint13"] = "1"

--不在活动时间内
tNpcGossip[24407]["Text5-1"] = {1111,139}
tNpcGossip[24407]["tOption5-1"] = {14}
tNpcGossip[24407]["OptionPoint14"] = "1"

--退出后再进入
tNpcGossip[24407]["Text6-1"] = {1111,140}
tNpcGossip[24407]["tOption6-1"] = {15}
tNpcGossip[24407]["OptionPoint15"] = "1"

--查看生存排行总榜
tNpcGossip[24407]["Text7-1"] = {141,142}
tNpcGossip[24407]["tOption7-1"] = {16,17}
tNpcGossip[24407]["OptionPoint16"] = "1"
tNpcGossip[24407]["OptionPoint17"] = "8-1"
tNpcGossip[24407]["ChkFunc7-1"] = function()
	tNpcGossip[24407]["Text7-1"] = {141,123,142}
	local tRanktable = RankingFunc_GetNowData(24407)
	local nNum = 1431
	for i,v in pairs(tRanktable) do
		if (v["UserId"] ~= nil) or (v["UserId"] ~= 0) then
			local nGrade = v["Score"]
			local nUserName = v["UserName"]--Get_UserName(v["UserId"])
			tNpcGossip[24407]["Text"..nNum] = string.format(tJulyEatchicken_Text[24407]["Text143"],i,nGrade,Sys_StringGSubTip(nUserName))
		else
			tNpcGossip[24407]["Text"..nNum] = tJulyEatchicken_Text[24407]["Text1293"]
		end
		table.insert(tNpcGossip[24407]["Text7-1"],nNum)
		nNum = nNum + 1 
	end
	
	tNpcGossip[24407]["Text150"] = tJulyEatchicken_Text[24407]["Text123"]
	local nEvent = tJulyEatchicken_Stc[4][1]
	local nData = tJulyEatchicken_Stc[4][2]
	local nUserGrade = Get_UserStatisticValue(nEvent,nData)
	tNpcGossip[24407]["Text151"] = string.format(tJulyEatchicken_Text[24407]["Text151"],nUserGrade)
	table.insert(tNpcGossip[24407]["Text7-1"],150)
	table.insert(tNpcGossip[24407]["Text7-1"],151)
	return true
end

tNpcGossip[24407]["Text8-1"] = {200,201,202,203,204,205,206,207,208,209,210,211,212,201}
tNpcGossip[24407]["tOption8-1"] = {16}

--单次排行榜奖励
tNpcGossip[24407]["Text9-1"] = {300,301,302,303,304,305,306,301}
tNpcGossip[24407]["tOption9-1"] = {19}
tNpcGossip[24407]["OptionPoint19"] = "1"


--【生存大作战】传送使者
tNpcFace[1871] = 21
tNpcGossip[24409] = tNpcGossip[24409] or DefaultNpc:new{}
tNpcGossip[24409]["OptionHidden"] = 1
tNpcGossip[24409]["DialogueText"] = tJulyEatchicken_Text[24409]

tNpcGossip[24409]["Text1-1"] = {111,112}
tNpcGossip[24409]["tOption1-1"] = {91,12,13,9}
tNpcGossip[24409]["OptionPoint1"] = "2-1"
tNpcGossip[24409]["OptionPoint2"] = "3-1"
tNpcGossip[24409]["OptionPoint3"] = "4-1"
tNpcGossip[24409]["OptionPoint4"] = "5-1"
tNpcGossip[24409]["OptionFunc91"] = "User_OpenDialog"
tNpcGossip[24409]["OptionPoint9"] = "6-1"
tNpcGossip[24409]["OptionPoint12"] = "7-1"
tNpcGossip[24409]["OptionPoint13"] = "8-1"
tNpcGossip[24409]["OptionChkFunc1"] = function()
	return JulyEatchicken_WhichShow(3)
end
tNpcGossip[24409]["OptionChkFunc2"] = function()
	return JulyEatchicken_WhichShow(5)
end
tNpcGossip[24409]["OptionChkFunc3"] = function()
	return JulyEatchicken_WhichShow(7)
end
tNpcGossip[24409]["OptionChkFunc4"] = function()
	return JulyEatchicken_WhichShow(9)
end
tNpcGossip[24409]["ChkFunc1-1"] = function()
	return JulyEatchicken_TranlateChat()
end

--传送至XX房间
tNpcGossip[24409]["Text2-1"] = {116}
tNpcGossip[24409]["tOption2-1"] = {5}
tNpcGossip[24409]["OptionFunc5"] = "JulyEatchicken_TranlateRoom</N>24409</N>3</N>2"
tNpcGossip[24409]["ChkFunc2-1"] = function()
	return JulyEatchicken_TranlatChatSure(2)
end

tNpcGossip[24409]["Text3-1"] = {116}
tNpcGossip[24409]["tOption3-1"] = {6}
tNpcGossip[24409]["OptionFunc6"] = "JulyEatchicken_TranlateRoom</N>24409</N>5</N>3"
tNpcGossip[24409]["ChkFunc3-1"] = function()
	return JulyEatchicken_TranlatChatSure(3)
end

tNpcGossip[24409]["Text4-1"] = {116}
tNpcGossip[24409]["tOption4-1"] = {7}
tNpcGossip[24409]["OptionFunc7"] = "JulyEatchicken_TranlateRoom</N>24409</N>7</N>4"
tNpcGossip[24409]["ChkFunc4-1"] = function()
	return JulyEatchicken_TranlatChatSure(4)
end

tNpcGossip[24409]["Text5-1"] = {116}
tNpcGossip[24409]["tOption5-1"] = {8}
tNpcGossip[24409]["OptionFunc8"] = "JulyEatchicken_TranlateRoom</N>24409</N>9</N>5"
tNpcGossip[24409]["ChkFunc5-1"] = function()
	return JulyEatchicken_TranlatChatSure(5)
end

tNpcGossip[24409]["Text6-1"] = {117}
tNpcGossip[24409]["tOption6-1"] = {10,11}
tNpcGossip[24409]["OptionFunc10"] = "JulyEatchicken_TranlateOrginalandClean"
tNpcGossip[24409]["OptionPoint11"] = "1"

--查看玩家的排行榜奖励
tNpcGossip[24409]["Text7-1"] = {127,123,128}
tNpcGossip[24409]["tOption7-1"] = {14,18}
tNpcGossip[24409]["OptionPoint14"] = "1"
tNpcGossip[24409]["OptionPoint18"] = "10-1"
tNpcGossip[24409]["ChkFunc7-1"] = function()
	return JulyEatchicken_TranlateOwnChat()
end

--查看玩家总排行榜奖励
tNpcGossip[24409]["Text8-1"] = {141,123,142}
tNpcGossip[24409]["tOption8-1"] = {14,17}
tNpcGossip[24409]["OptionPoint17"] = "9-1"
tNpcGossip[24409]["ChkFunc8-1"] = function()
	return JulyEatchicken_TranlateSumChat()
end

tNpcGossip[24409]["Text9-1"] = {200,201,202,203,204,205,206,207,208,209,210,211,212,201}
tNpcGossip[24409]["tOption9-1"] = {14}

--单次排行榜奖励
tNpcGossip[24409]["Text10-1"] = {300,301,302,303,304,305,306,301}
tNpcGossip[24409]["tOption10-1"] = {19}
tNpcGossip[24409]["OptionPoint19"] = "1"

tNpcGossip[24410] = tNpcGossip[24409] or {}
tNpcGossip[24411] = tNpcGossip[24409] or {} 
tNpcGossip[24412] = tNpcGossip[24409] or {} 
tNpcGossip[24413] = tNpcGossip[24409] or {} 
tNpcGossip[24414] = tNpcGossip[24409] or {} 
tNpcGossip[24415] = tNpcGossip[24409] or {} 
tNpcGossip[24416] = tNpcGossip[24409] or {} 
tNpcGossip[24417] = tNpcGossip[24409] or {} 
tNpcGossip[24418] = tNpcGossip[24409] or {} 
tNpcGossip[24419] = tNpcGossip[24409] or {} 
tNpcGossip[24420] = tNpcGossip[24409] or {} 
tNpcGossip[24421] = tNpcGossip[24409] or {} 
tNpcGossip[24422] = tNpcGossip[24409] or {} 
tNpcGossip[24423] = tNpcGossip[24409] or {} 
tNpcGossip[24424] = tNpcGossip[24409] or {} 
tNpcGossip[24425] = tNpcGossip[24409] or {} 
tNpcGossip[24426] = tNpcGossip[24409] or {} 
tNpcGossip[24427] = tNpcGossip[24409] or {} 
tNpcGossip[24428] = tNpcGossip[24409] or {} 
tNpcGossip[24429] = tNpcGossip[24409] or {} 
tNpcGossip[24430] = tNpcGossip[24409] or {} 
tNpcGossip[24431] = tNpcGossip[24409] or {} 
tNpcGossip[24432] = tNpcGossip[24409] or {} 
tNpcGossip[24433] = tNpcGossip[24409] or {} 
tNpcGossip[24434] = tNpcGossip[24409] or {} 
tNpcGossip[24435] = tNpcGossip[24409] or {} 
tNpcGossip[24436] = tNpcGossip[24409] or {} 
tNpcGossip[24437] = tNpcGossip[24409] or {} 
tNpcGossip[24438] = tNpcGossip[24409] or {} 
tNpcGossip[24439] = tNpcGossip[24409] or {} 
tNpcGossip[24440] = tNpcGossip[24409] or {} 
tNpcGossip[24441] = tNpcGossip[24409] or {} 
tNpcGossip[24442] = tNpcGossip[24409] or {} 
tNpcGossip[24443] = tNpcGossip[24409] or {} 
tNpcGossip[24444] = tNpcGossip[24409] or {} 
tNpcGossip[24445] = tNpcGossip[24409] or {} 
tNpcGossip[24446] = tNpcGossip[24409] or {} 
tNpcGossip[24447] = tNpcGossip[24409] or {} 
tNpcGossip[24448] = tNpcGossip[24409] or {} 
tNpcGossip[24449] = tNpcGossip[24409] or {} 
tNpcGossip[24450] = tNpcGossip[24409] or {} 
tNpcGossip[24451] = tNpcGossip[24409] or {} 
tNpcGossip[24452] = tNpcGossip[24409] or {} 
tNpcGossip[24453] = tNpcGossip[24409] or {} 
tNpcGossip[24454] = tNpcGossip[24409] or {} 
tNpcGossip[24455] = tNpcGossip[24409] or {} 
tNpcGossip[24456] = tNpcGossip[24409] or {} 
tNpcGossip[24457] = tNpcGossip[24409] or {} 

--安全区Npc
tNpcGossip[24474] = tNpcGossip[24474] or DefaultNpc:new{}
tNpcGossip[24474]["OptionHidden"] = 1
tNpcGossip[24474]["DialogueText"] = tJulyEatchicken_Text[24474]
tNpcGossip[24474]["Text1-1"] = {111}
tNpcGossip[24474]["tOption1-1"] = {1,2,3}
tNpcGossip[24474]["OptionFunc1"] = "JulyEatchicken_SaveRoomTranlate"
tNpcGossip[24474]["OptionFunc3"] = "JulyEatchicken_TranlateOrginalandClean"

tItemFace[3313104] = 2376
tItemFace[3313105] = 2377
tItemFace[3313106] = 2378
tItemFace[3313107] = 2379
tItemFace[3313108] = 2380
tItemFace[3313109] = 2381
tItemFace[3313110] = 2382
tItemFace[3313111] = 2383
tItem[3313104] = tItem[3313104] or {}
tItem[3313104]["DialogueText"] =tJulyEatchicken_Text[3313104]
tItem[3313104]["Text1-1"] = {111,112}
tItem[3313104]["tOption1-1"] = {1,2}
tItem[3313104]["OptionFunc1"] = "JulyEatchicken_UseTools</N>3313104</N>7"
tItem[3313104]["ChkFunc1-1"] = function()
	local nItemName = Get_ItemtypeName(3313104)
	local sStc = tJulyEatchicken_Text["Increase"][3313104]
	tItem[3313104]["Text111"] = string.format(tJulyEatchicken_Text[3313104]["Text111"],nItemName,sStc)
	return true
end

tItem[3313105] = tItem[3313105] or {}
tItem[3313105]["DialogueText"] =tJulyEatchicken_Text[3313105]
tItem[3313105]["Text1-1"] = {111,112}
tItem[3313105]["tOption1-1"] = {1,2}
tItem[3313105]["OptionFunc1"] = "JulyEatchicken_UseTools</N>3313105</N>5"
tItem[3313105]["ChkFunc1-1"] = function()
	local nItemName = Get_ItemtypeName(3313105)
	local sStc = tJulyEatchicken_Text["Increase"][3313105]
	tItem[3313105]["Text111"] = string.format(tJulyEatchicken_Text[3313105]["Text111"],nItemName,sStc)
	return true
end

tItem[3313106] = tItem[3313106] or {}
tItem[3313106]["DialogueText"] =tJulyEatchicken_Text[3313106]
tItem[3313106]["Text1-1"] = {111,112}
tItem[3313106]["tOption1-1"] = {1,2}
tItem[3313106]["OptionFunc1"] = "JulyEatchicken_UseTools</N>3313106</N>8"
tItem[3313106]["ChkFunc1-1"] = function()
	local nItemName = Get_ItemtypeName(3313106)
	local sStc = tJulyEatchicken_Text["Increase"][3313106]
	tItem[3313106]["Text111"] = string.format(tJulyEatchicken_Text[3313106]["Text111"],nItemName,sStc)
	return true
end

tItem[3313107] = tItem[3313107] or {}
tItem[3313107]["DialogueText"] =tJulyEatchicken_Text[3313107]
tItem[3313107]["Text1-1"] = {111,112}
tItem[3313107]["tOption1-1"] = {1,2}
tItem[3313107]["OptionFunc1"] = "JulyEatchicken_UseTools</N>3313107</N>9"
tItem[3313107]["ChkFunc1-1"] = function()
	local nItemName = Get_ItemtypeName(3313107)
	local sStc = tJulyEatchicken_Text["Increase"][3313107]
	tItem[3313107]["Text111"] = string.format(tJulyEatchicken_Text[3313107]["Text111"],nItemName,sStc)
	return true
end

tItem[3313108] = tItem[3313108] or {}
tItem[3313108]["DialogueText"] =tJulyEatchicken_Text[3313108]
tItem[3313108]["Text1-1"] = {111,112}
tItem[3313108]["tOption1-1"] = {1,2}
tItem[3313108]["OptionFunc1"] = "JulyEatchicken_UseTools</N>3313108</N>1"
tItem[3313108]["ChkFunc1-1"] = function()
	local nItemName = Get_ItemtypeName(3313108)
	local sStc = tJulyEatchicken_Text["Increase"][3313108]
	tItem[3313108]["Text111"] = string.format(tJulyEatchicken_Text[3313108]["Text111"],nItemName,sStc)
	return true
end

tItem[3313109] = tItem[3313109] or {}
tItem[3313109]["DialogueText"] =tJulyEatchicken_Text[3313109]
tItem[3313109]["Text1-1"] = {111,112}
tItem[3313109]["tOption1-1"] = {1,2}
tItem[3313109]["OptionFunc1"] = "JulyEatchicken_UseTools</N>3313109</N>2"
tItem[3313109]["ChkFunc1-1"] = function()
	local nItemName = Get_ItemtypeName(3313109)
	local sStc = tJulyEatchicken_Text["Increase"][3313109]
	tItem[3313109]["Text111"] = string.format(tJulyEatchicken_Text[3313109]["Text111"],nItemName,sStc)
	return true
end

tItem[3313110] = tItem[3313110] or {}
tItem[3313110]["DialogueText"] =tJulyEatchicken_Text[3313110]
tItem[3313110]["Text1-1"] = {111,112}
tItem[3313110]["tOption1-1"] = {1,2}
tItem[3313110]["OptionFunc1"] = "JulyEatchicken_UseTools</N>3313110</N>3"
tItem[3313110]["ChkFunc1-1"] = function()
	local nItemName = Get_ItemtypeName(3313110)
	local sStc = tJulyEatchicken_Text["Increase"][3313110]
	tItem[3313110]["Text111"] = string.format(tJulyEatchicken_Text[3313110]["Text111"],nItemName,sStc)
	return true
end

tItem[3313111] = tItem[3313111] or {}
tItem[3313111]["DialogueText"] =tJulyEatchicken_Text[3313111]
tItem[3313111]["Text1-1"] = {111,112}
tItem[3313111]["tOption1-1"] = {1,2}
tItem[3313111]["OptionFunc1"] = "JulyEatchicken_UseTools</N>3313111</N>4"
tItem[3313111]["ChkFunc1-1"] = function()
	local nItemName = Get_ItemtypeName(3313111)
	local sStc = tJulyEatchicken_Text["Increase"][3313111]
	tItem[3313111]["Text111"] = string.format(tJulyEatchicken_Text[3313111]["Text111"],nItemName,sStc)
	return true
end

--排行榜礼包
tItem[3313112] = tItem[3313112] or {}
tItem[3313112]["Function"] = function(nItemId,sItemName)
	JulyEatchicken_DayOpenBag(nItemId)
end

tItem[3313113] = tItem[3313112] or {}
tItem[3313114] = tItem[3313112] or {}
tItem[3313115] = tItem[3313112] or {}
--总榜奖励
tItem[3313120] = tItem[3313112] or {}
tItem[3313121] = tItem[3313112] or {}
tItem[3313122] = tItem[3313112] or {}
tItem[3313123] = tItem[3313112] or {}
tItem[3313124] = tItem[3313112] or {}
tItem[3313125] = tItem[3313112] or {}
tItem[3313126] = tItem[3313112] or {}
tItem[3313127] = tItem[3313112] or {}
tItem[3313128] = tItem[3313112] or {}
tItem[3313129] = tItem[3313112] or {}

--缩圈礼包
tItem[3313116] = tItem[3313116] or {}
tItem[3313116]["Function"] = function(nItemId,sItemName)
	JulyEatchicken_SmallOpenBag(nItemId)
end
tItem[3313117] = tItem[3313116] or {}
tItem[3313118] = tItem[3313116] or {}
tItem[3313119] = tItem[3313116] or {}


--战斗buff道具
tItemFace[3322624] = 2410
tItem[3322624] = tItem[3322624] or {}
tItem[3322624]["DialogueText"] =tJulyEatchicken_Text[3322624]
tItem[3322624]["Text1-1"] = {111,112,113,114}
tItem[3322624]["tOption1-1"] = {1,2,3}
tItem[3322624]["OptionFunc1"] = "JulyEatchicken_BuffUsemy</N>3322624</N>1"
tItem[3322624]["OptionFunc2"] = "JulyEatchicken_BuffUsemy</N>3322624</N>2"
tItem[3322624]["OptionFunc3"] = "JulyEatchicken_BuffUsemy</N>3322624</N>3"
----------------------------------怪物部分----------------------------------
-- tMonster[1092] = tMonster[1092] or {}
-- tMonster[1092]["tFunction"] = tMonster[1092]["tFunction"] or {}
-- table.insert(tMonster[1092]["tFunction"],JulyEatchicken_FirstRecastLoad)

local tJulyEatchicken_Boss = {}
	tJulyEatchicken_Boss["ActivityTime"] = tActivityTime["JulyEatchicken"]["ActiveTime"]
	tJulyEatchicken_Boss["Function"] = JulyEatchicken_FirstRecastLoad
	tJulyEatchicken_Boss["MonsterId"] = {1323,1324,1325,1326,1327,1328,1329,
	                                     1330,1331,1332,1333,1334,1335,1336,
										 1337,1338,1339,1340,1341,1342,1343,
										 1344,1345,1346,1347,1348,1349,1350,
										 1351,1352,1353,1354,1355,1356,1357,
										 1358,1359,1360,1361,1362,1363,1364,
										 1365,1366,1367,1368,1369,1370,1371}
table.insert(tMonsterDrop_AreaLoad,tJulyEatchicken_Boss)

----------------------------------陷阱部分----------------------------------
-- tTrap[2278] = tTrap[2278] or {}
-- tTrap[2278]["Function"] = function(nTrapId,nTrapType)
	-- DragonSoulConnectNpc_OpenWel_GoBackToCity(nTrapId,nTrapType)
-- end

----------------------------------时间自检----------------------------------
tSystem_Prompet_Func = tSystem_Prompet_Func or {}
table.insert(tSystem_Prompet_Func,JulyEatchicken_TimeWalk)

table.insert(tSystem_PlayLogin_Func,JulyEatchicken_OnlineDeal)

-------------------------------杀人触发模板---------------------------------------
-- 杀人触发，获得打宝状态逻辑
tUserKilled["tFunction"] = tUserKilled["tFunction"] or {}
table.insert(tUserKilled["tFunction"],JulyEatchicken_KillPlayer)

