------------------------------------------------------------------------------------
--Name:		180420[简体征服][活动脚本]新赌神活动制作
--Creator: 	姚曦宇
--Created:	2018/04/20
------------------------------------------------------------------------------------

-- 动态表
-- 52641 0百万红包时间标志 1千万红包时间标志

-- Stc
-- 17641 轮盘赌 赠点天石
-- 17642 轮盘赌 银两
-- 17643 轮盘赌 气力值
-- 17644 轮盘赌 神纹精粹
-- 17645 轮盘赌 神纹精粹
-- 17646 轮盘赌 神纹精粹
-- 17647 轮盘赌 神纹精粹
-- 17648 轮盘赌 神纹精粹
-- 17649 轮盘赌 神纹精粹
-- 17650 轮盘赌 赤炼石
-- 17651 轮盘赌 赤炼石
-- 17652 轮盘赌 星陨石
-- 17653 轮盘赌 转cd

-- logid：12001066
-- 同一前缀：NewGodOfGamblers_
------------------------------------------------------------------------------------
-- 常量
local tNewGodOfGamblers_Cont = {}
	tNewGodOfGamblers_Cont["ActivityTime"] = tActivityTime["NewGodOfGamblers"]["Activity"]
	tNewGodOfGamblers_Cont["GrabRedEnvelopesDayTime"] = {}
	tNewGodOfGamblers_Cont["GrabRedEnvelopesDayTime"][1] = "23:00 23:59"
	tNewGodOfGamblers_Cont["GrabRedEnvelopesDayTime"][2] = "00:00 00:59"
	tNewGodOfGamblers_Cont["Level"] = 80
	tNewGodOfGamblers_Cont["Metem"] = 0
	tNewGodOfGamblers_Cont["InGamblingTime"] = 60  -- 单位：秒
	tNewGodOfGamblers_Cont["FightStatus"] = {}
	tNewGodOfGamblers_Cont["FightStatus"]["NotBegin"] = 0
	tNewGodOfGamblers_Cont["FightStatus"]["InGambling"] = 1
	tNewGodOfGamblers_Cont["FightStatus"]["FightBegin"] = 2
	tNewGodOfGamblers_Cont["FightStatus"]["FightEnd"] = 3
	tNewGodOfGamblers_Cont["LogId"] = 12001066
	tNewGodOfGamblers_Cont["Rate"] = {}
	tNewGodOfGamblers_Cont["Rate"][1] = 0
	tNewGodOfGamblers_Cont["Rate"][2] = 0
	tNewGodOfGamblers_Cont["Rate"][3] = 1
	tNewGodOfGamblers_Cont["Rate"][4] = 1
	tNewGodOfGamblers_Cont["Rate"][5] = 1.1
	tNewGodOfGamblers_Cont["Rate"][6] = 1.1
	tNewGodOfGamblers_Cont["Rate"][7] = 1.2
	tNewGodOfGamblers_Cont["Rate"][8] = 1.2
	tNewGodOfGamblers_Cont["Rate"][9] = 1.5
	tNewGodOfGamblers_Cont["Rate"][10] = 1.5
	tNewGodOfGamblers_Cont["Rate"][11] = 2
	tNewGodOfGamblers_Cont["Rate"][12] = 2
	tNewGodOfGamblers_Cont["Rate"]["Max"] = 2
	tNewGodOfGamblers_Cont["Alignment"] = {}
	tNewGodOfGamblers_Cont["Alignment"][1] = {}
	tNewGodOfGamblers_Cont["Alignment"][1]["Left"] = 2
	tNewGodOfGamblers_Cont["Alignment"][1]["Middle"] = 21
	tNewGodOfGamblers_Cont["Alignment"][1]["Right"] = 40
	tNewGodOfGamblers_Cont["Alignment"][2] = {}
	tNewGodOfGamblers_Cont["Alignment"][2]["Left"] = 10
	tNewGodOfGamblers_Cont["Alignment"][2]["Middle"] = 33
	tNewGodOfGamblers_Cont["TotalBlank"] = {}
	tNewGodOfGamblers_Cont["TotalBlank"][1] = 36
	tNewGodOfGamblers_Cont["TotalBlank"][2] = 36
	tNewGodOfGamblers_Cont["TotalBlank"][3] = 36
	tNewGodOfGamblers_Cont["TotalBlank"][4] = 36
	tNewGodOfGamblers_Cont["TotalBlank"][5] = 36
	tNewGodOfGamblers_Cont["TotalBlank"][6] = 36
	tNewGodOfGamblers_Cont["TotalBlank"][7] = 36
	tNewGodOfGamblers_Cont["TotalBlank"][100] = 12
	tNewGodOfGamblers_Cont["TotalBlank"][1000] = 12
	tNewGodOfGamblers_Cont["TotalBlank"][1000000] = 12
	tNewGodOfGamblers_Cont["TotalBlank"][10000000] = 12
	tNewGodOfGamblers_Cont["EffectPos"] = {}
	-- tNewGodOfGamblers_Cont["EffectPos"]["MapId"] = 10340
	tNewGodOfGamblers_Cont["EffectPos"]["PosX"] = 45
	tNewGodOfGamblers_Cont["EffectPos"]["PosY"] = 45
	tNewGodOfGamblers_Cont["GrabRed"] = {}
	tNewGodOfGamblers_Cont["GrabRed"][21493] = {}
	tNewGodOfGamblers_Cont["GrabRed"][21493]["Level"] = 100
	tNewGodOfGamblers_Cont["GrabRed"][21493]["Stc"] = 14
	tNewGodOfGamblers_Cont["GrabRed"][21494] = {}
	tNewGodOfGamblers_Cont["GrabRed"][21494]["Level"] = 1000
	tNewGodOfGamblers_Cont["GrabRed"][21494]["Stc"] = 15
	tNewGodOfGamblers_Cont["GrabRed"][23100] = {}
	tNewGodOfGamblers_Cont["GrabRed"][23100]["Level"] = 1000000
	tNewGodOfGamblers_Cont["GrabRed"][23100]["Stc"] = 14
	tNewGodOfGamblers_Cont["GrabRed"][23101] = {}
	tNewGodOfGamblers_Cont["GrabRed"][23101]["Level"] = 10000000
	tNewGodOfGamblers_Cont["GrabRed"][23101]["Stc"] = 15
	tNewGodOfGamblers_Cont["InstanceId"] = 184
	tNewGodOfGamblers_Cont["ZhuanpanMapId"] = 10340
	tNewGodOfGamblers_Cont["RedEnvelopesMapId"] = 1002
	tNewGodOfGamblers_Cont["RedEnvelopesMapIdNew"] = 10339
	tNewGodOfGamblers_Cont["MailBlankNum"] = 16
	tNewGodOfGamblers_Cont["MsgBlankNum"] = 38
	tNewGodOfGamblers_Cont["ZhuanPanNpcId"] = 21482
	
	-- 灵珠全服限量
	tNewGodOfGamblers_Cont["Global"] = {}
	tNewGodOfGamblers_Cont["Global"]["Id"] = 53813
	tNewGodOfGamblers_Cont["Global"]["UpperLimit"] = 500000
	
local tNewGodOfGamblers_Chgmap = {}
	tNewGodOfGamblers_Chgmap["Out"] = {}
	tNewGodOfGamblers_Chgmap["Out"]["MapId"] = 1002
	tNewGodOfGamblers_Chgmap["Out"]["PosX"] = 365
	tNewGodOfGamblers_Chgmap["Out"]["PosY"] = 390

	
local tNewGodOfGamblers_ELog = {}
	tNewGodOfGamblers_ELog["RedBagConsume"] = {}
	tNewGodOfGamblers_ELog["RedBagConsume"][21493] = "350	21554"
	tNewGodOfGamblers_ELog["RedBagConsume"][21494] = "350	21557"
	tNewGodOfGamblers_ELog["RedBagConsume"][23100] = "350	21554"
	tNewGodOfGamblers_ELog["RedBagConsume"][23101] = "350	21557"
	tNewGodOfGamblers_ELog["RedBagGet"] = {}
	tNewGodOfGamblers_ELog["RedBagGet"][21493] = "350	21555"
	tNewGodOfGamblers_ELog["RedBagGet"][21494] = "350	21558"
	tNewGodOfGamblers_ELog["RedBagGet"][23100] = "350	21555"
	tNewGodOfGamblers_ELog["RedBagGet"][23101] = "350	21558"
	tNewGodOfGamblers_ELog["RedBagReturn"] = {}
	tNewGodOfGamblers_ELog["RedBagReturn"][100] = "350	21556"
	tNewGodOfGamblers_ELog["RedBagReturn"][1000] = "350	21559"
	tNewGodOfGamblers_ELog["RedBagReturn"][1000000] = "350	21556"
	tNewGodOfGamblers_ELog["RedBagReturn"][10000000] = "350	21559"
	
local tNewGodOfGamblers_Log = {}
	tNewGodOfGamblers_Log["GrabRed"] = "0,0,0,0,12001066,1[5],1,%d"
	tNewGodOfGamblers_Log["DoubleBet"] = {}
	tNewGodOfGamblers_Log["DoubleBet"][1] = "0,0,0,0,12001066,1[4],0,%d"
	tNewGodOfGamblers_Log["DoubleBet"][2] = "0,0,0,0,12001066,1[4],%d,%d"
	tNewGodOfGamblers_Log["DoubleBet"][3] = "0,0,%d,%d,12001066,1[4],0,0"

	
-- stc
local tNewGodOfGamblers_Stc = {}
	-- example
	-- tNewGodOfGamblers_Stc[nIndex] = {}
	-- tNewGodOfGamblers_Stc[nIndex]["EventType"] = 
	-- tNewGodOfGamblers_Stc[nIndex]["DataType"] = 
	-- tNewGodOfGamblers_Stc[nIndex]["Limit"] = 
	-- tNewGodOfGamblers_Stc[nIndex]["Set"] = 
	-- tNewGodOfGamblers_Stc[nIndex]["Clear"] = {}
	-- tNewGodOfGamblers_Stc[nIndex]["Clear"]["Delay"] = 1
	-- tNewGodOfGamblers_Stc[nIndex]["Clear"]["TimeType"] = 4
	-- 轮盘赌 赠点天石
	tNewGodOfGamblers_Stc[1] = {}
	tNewGodOfGamblers_Stc[1]["EventType"] = 176
	tNewGodOfGamblers_Stc[1]["DataType"] = 41
	-- 轮盘赌 银两
	tNewGodOfGamblers_Stc[2] = {}
	tNewGodOfGamblers_Stc[2]["EventType"] = 176
	tNewGodOfGamblers_Stc[2]["DataType"] = 42
	-- 轮盘赌 气力值
	tNewGodOfGamblers_Stc[3] = {}
	tNewGodOfGamblers_Stc[3]["EventType"] = 176
	tNewGodOfGamblers_Stc[3]["DataType"] = 43
	-- 轮盘赌 神纹精粹
	tNewGodOfGamblers_Stc[4] = {}
	tNewGodOfGamblers_Stc[4]["EventType"] = 176
	tNewGodOfGamblers_Stc[4]["DataType"] = 44
	tNewGodOfGamblers_Stc[5] = {}
	tNewGodOfGamblers_Stc[5]["EventType"] = 176
	tNewGodOfGamblers_Stc[5]["DataType"] = 45
	tNewGodOfGamblers_Stc[6] = {}
	tNewGodOfGamblers_Stc[6]["EventType"] = 176
	tNewGodOfGamblers_Stc[6]["DataType"] = 46
	tNewGodOfGamblers_Stc[7] = {}
	tNewGodOfGamblers_Stc[7]["EventType"] = 176
	tNewGodOfGamblers_Stc[7]["DataType"] = 47
	tNewGodOfGamblers_Stc[8] = {}
	tNewGodOfGamblers_Stc[8]["EventType"] = 176
	tNewGodOfGamblers_Stc[8]["DataType"] = 48
	tNewGodOfGamblers_Stc[9] = {}
	tNewGodOfGamblers_Stc[9]["EventType"] = 176
	tNewGodOfGamblers_Stc[9]["DataType"] = 49
	-- 轮盘赌 赤炼石
	tNewGodOfGamblers_Stc[10] = {}
	tNewGodOfGamblers_Stc[10]["EventType"] = 176
	tNewGodOfGamblers_Stc[10]["DataType"] = 50
	tNewGodOfGamblers_Stc[11] = {}
	tNewGodOfGamblers_Stc[11]["EventType"] = 176
	tNewGodOfGamblers_Stc[11]["DataType"] = 51
	-- 轮盘赌 星陨石
	tNewGodOfGamblers_Stc[12] = {}
	tNewGodOfGamblers_Stc[12]["EventType"] = 176
	tNewGodOfGamblers_Stc[12]["DataType"] = 52
	-- 轮盘赌 cd
	tNewGodOfGamblers_Stc[13] = {}
	tNewGodOfGamblers_Stc[13]["EventType"] = 176
	tNewGodOfGamblers_Stc[13]["DataType"] = 53
	tNewGodOfGamblers_Stc[13]["Clear"] = {}
	tNewGodOfGamblers_Stc[13]["Clear"]["Delay"] = 4
	tNewGodOfGamblers_Stc[13]["Clear"]["TimeType"] = 0
	-- 豪抢百万红包 屏蔽二次确认
	tNewGodOfGamblers_Stc[14] = {}
	tNewGodOfGamblers_Stc[14]["EventType"] = 176
	tNewGodOfGamblers_Stc[14]["DataType"] = 71
	tNewGodOfGamblers_Stc[14]["Set"] = 1
	-- 豪抢千万红包 屏蔽二次确认
	tNewGodOfGamblers_Stc[15] = {}
	tNewGodOfGamblers_Stc[15]["EventType"] = 176
	tNewGodOfGamblers_Stc[15]["DataType"] = 72
	tNewGodOfGamblers_Stc[15]["Set"] = 1
	-- 轮盘赌 灵珠
	tNewGodOfGamblers_Stc[16] = {}
	tNewGodOfGamblers_Stc[16]["EventType"] = 207
	tNewGodOfGamblers_Stc[16]["DataType"] = 27
	
-- local tNewGodOfGamblers_Npc = {}
	-- tNewGodOfGamblers_Npc[22004] = {}
	-- tNewGodOfGamblers_Npc[22004]["MapId"] = tNpcPos["NewGodOfGamblers"][22004][1]
	-- tNewGodOfGamblers_Npc[22004]["PosX"] =  tNpcPos["NewGodOfGamblers"][22004][2]
	-- tNewGodOfGamblers_Npc[22004]["PosY"] =  tNpcPos["NewGodOfGamblers"][22004][3]
	-- tNewGodOfGamblers_Npc[22005] = {}
	-- tNewGodOfGamblers_Npc[22005]["MapId"] = tNpcPos["NewGodOfGamblers"][22005][1]
	-- tNewGodOfGamblers_Npc[22005]["PosX"] =  tNpcPos["NewGodOfGamblers"][22005][2]
	-- tNewGodOfGamblers_Npc[22005]["PosY"] =  tNpcPos["NewGodOfGamblers"][22005][3]
	-- tNewGodOfGamblers_Npc[21481] = {}
	-- tNewGodOfGamblers_Npc[21481]["MapId"] = tNpcPos["NewGodOfGamblers"][21481][1]
	-- tNewGodOfGamblers_Npc[21481]["PosX"] =  tNpcPos["NewGodOfGamblers"][21481][2]
	-- tNewGodOfGamblers_Npc[21481]["PosY"] =  tNpcPos["NewGodOfGamblers"][21481][3]
	-- tNewGodOfGamblers_Npc[21482] = {}
	-- tNewGodOfGamblers_Npc[21482]["MapId"] = tNpcPos["NewGodOfGamblers"][21482][1]
	-- tNewGodOfGamblers_Npc[21482]["PosX"] =  tNpcPos["NewGodOfGamblers"][21482][2]
	-- tNewGodOfGamblers_Npc[21482]["PosY"] =  tNpcPos["NewGodOfGamblers"][21482][3]
	-- tNewGodOfGamblers_Npc[21483] = {}
	-- tNewGodOfGamblers_Npc[21483]["MapId"] = tNpcPos["NewGodOfGamblers"][21483][1]
	-- tNewGodOfGamblers_Npc[21483]["PosX"] =  tNpcPos["NewGodOfGamblers"][21483][2]
	-- tNewGodOfGamblers_Npc[21483]["PosY"] =  tNpcPos["NewGodOfGamblers"][21483][3]
	-- tNewGodOfGamblers_Npc[21484] = {}
	-- tNewGodOfGamblers_Npc[21484]["MapId"] = tNpcPos["NewGodOfGamblers"][21484][1]
	-- tNewGodOfGamblers_Npc[21484]["PosX"] =  tNpcPos["NewGodOfGamblers"][21484][2]
	-- tNewGodOfGamblers_Npc[21484]["PosY"] =  tNpcPos["NewGodOfGamblers"][21484][3]
	-- tNewGodOfGamblers_Npc[21485] = {}
	-- tNewGodOfGamblers_Npc[21485]["MapId"] = tNpcPos["NewGodOfGamblers"][21485][1]
	-- tNewGodOfGamblers_Npc[21485]["PosX"] =  tNpcPos["NewGodOfGamblers"][21485][2]
	-- tNewGodOfGamblers_Npc[21485]["PosY"] =  tNpcPos["NewGodOfGamblers"][21485][3]
	-- tNewGodOfGamblers_Npc[21486] = {}
	-- tNewGodOfGamblers_Npc[21486]["MapId"] = tNpcPos["NewGodOfGamblers"][21486][1]
	-- tNewGodOfGamblers_Npc[21486]["PosX"] =  tNpcPos["NewGodOfGamblers"][21486][2]
	-- tNewGodOfGamblers_Npc[21486]["PosY"] =  tNpcPos["NewGodOfGamblers"][21486][3]
	-- tNewGodOfGamblers_Npc[21487] = {}
	-- tNewGodOfGamblers_Npc[21487]["MapId"] = tNpcPos["NewGodOfGamblers"][21487][1]
	-- tNewGodOfGamblers_Npc[21487]["PosX"] =  tNpcPos["NewGodOfGamblers"][21487][2]
	-- tNewGodOfGamblers_Npc[21487]["PosY"] =  tNpcPos["NewGodOfGamblers"][21487][3]
	-- tNewGodOfGamblers_Npc[21488] = {}
	-- tNewGodOfGamblers_Npc[21488]["MapId"] = tNpcPos["NewGodOfGamblers"][21488][1]
	-- tNewGodOfGamblers_Npc[21488]["PosX"] =  tNpcPos["NewGodOfGamblers"][21488][2]
	-- tNewGodOfGamblers_Npc[21488]["PosY"] =  tNpcPos["NewGodOfGamblers"][21488][3]
	-- tNewGodOfGamblers_Npc[21489] = {}
	-- tNewGodOfGamblers_Npc[21489]["MapId"] = tNpcPos["NewGodOfGamblers"][21489][1]
	-- tNewGodOfGamblers_Npc[21489]["PosX"] =  tNpcPos["NewGodOfGamblers"][21489][2]
	-- tNewGodOfGamblers_Npc[21489]["PosY"] =  tNpcPos["NewGodOfGamblers"][21489][3]
	-- tNewGodOfGamblers_Npc[21490] = {}
	-- tNewGodOfGamblers_Npc[21490]["MapId"] = tNpcPos["NewGodOfGamblers"][21490][1]
	-- tNewGodOfGamblers_Npc[21490]["PosX"] =  tNpcPos["NewGodOfGamblers"][21490][2]
	-- tNewGodOfGamblers_Npc[21490]["PosY"] =  tNpcPos["NewGodOfGamblers"][21490][3]
	-- tNewGodOfGamblers_Npc[21491] = {}
	-- tNewGodOfGamblers_Npc[21491]["MapId"] = tNpcPos["NewGodOfGamblers"][21491][1]
	-- tNewGodOfGamblers_Npc[21491]["PosX"] =  tNpcPos["NewGodOfGamblers"][21491][2]
	-- tNewGodOfGamblers_Npc[21491]["PosY"] =  tNpcPos["NewGodOfGamblers"][21491][3]
	
local tNewGodOfGamblers_SuperLink = {}
	tNewGodOfGamblers_SuperLink[1] = {}
	tNewGodOfGamblers_SuperLink[1]["MapId"] = tNpcPos["NewGodOfGamblers"][1973][1]
	tNewGodOfGamblers_SuperLink[1]["PosX"] = tNpcPos["NewGodOfGamblers"][1973][2]
	tNewGodOfGamblers_SuperLink[1]["PosY"] = tNpcPos["NewGodOfGamblers"][1973][3]
	tNewGodOfGamblers_SuperLink[2] = {}
	tNewGodOfGamblers_SuperLink[2]["MapId"] = tNpcPos["NewGodOfGamblers"][1972][1]
	tNewGodOfGamblers_SuperLink[2]["PosX"] = tNpcPos["NewGodOfGamblers"][1972][2]
	tNewGodOfGamblers_SuperLink[2]["PosY"] = tNpcPos["NewGodOfGamblers"][1972][3]
	
-- 邮件
local tNewGodOfGamblers_Mail = {}
	tNewGodOfGamblers_Mail["ExistDay"] = 7
	tNewGodOfGamblers_Mail["ReturnDeposit"] = {}
	tNewGodOfGamblers_Mail["ReturnDeposit"][1000000] = 1000000
	tNewGodOfGamblers_Mail["ReturnDeposit"][10000000] = 10000000
	tNewGodOfGamblers_Mail["LoseDeposit"] = {}
	tNewGodOfGamblers_Mail["LoseDeposit"][1000000] = 0
	tNewGodOfGamblers_Mail["LoseDeposit"][10000000] = 0
	
-- 翻倍赌几率
local tNewGodOfGamblers_DoubleBetRate = {}
	tNewGodOfGamblers_DoubleBetRate["Stc"] = 13
	tNewGodOfGamblers_DoubleBetRate["TimeDelay"] = 3
	tNewGodOfGamblers_DoubleBetRate["Type"] = 0
	tNewGodOfGamblers_DoubleBetRate[1] = {}
	tNewGodOfGamblers_DoubleBetRate[1]["ItemChanceSum"] = 10000						
	-- 0倍   22%
	tNewGodOfGamblers_DoubleBetRate[1][1] = {}
	tNewGodOfGamblers_DoubleBetRate[1][1]["RandomItemChanceType"] = 2				
	tNewGodOfGamblers_DoubleBetRate[1][1]["ItemChance"] = 1100						
	tNewGodOfGamblers_DoubleBetRate[1][1]["Rate"] = 1
	tNewGodOfGamblers_DoubleBetRate[1][1]["Effect"] = "zhuanpan3"
	tNewGodOfGamblers_DoubleBetRate[1][2] = {}
	tNewGodOfGamblers_DoubleBetRate[1][2]["RandomItemChanceType"] = 2				
	tNewGodOfGamblers_DoubleBetRate[1][2]["ItemChance"] = 1100						
	tNewGodOfGamblers_DoubleBetRate[1][2]["Rate"] = 2
	tNewGodOfGamblers_DoubleBetRate[1][2]["Effect"] = "zhuanpan9"
	-- 1倍   18%
	tNewGodOfGamblers_DoubleBetRate[1][3] = {}
	tNewGodOfGamblers_DoubleBetRate[1][3]["RandomItemChanceType"] = 2				
	tNewGodOfGamblers_DoubleBetRate[1][3]["ItemChance"] = 900						
	tNewGodOfGamblers_DoubleBetRate[1][3]["Rate"] = 3
	tNewGodOfGamblers_DoubleBetRate[1][3]["Effect"] = "zhuanpan5"
	tNewGodOfGamblers_DoubleBetRate[1][4] = {}
	tNewGodOfGamblers_DoubleBetRate[1][4]["RandomItemChanceType"] = 2				
	tNewGodOfGamblers_DoubleBetRate[1][4]["ItemChance"] = 900						
	tNewGodOfGamblers_DoubleBetRate[1][4]["Rate"] = 4
	tNewGodOfGamblers_DoubleBetRate[1][4]["Effect"] = "zhuanpan11"
	-- 1.1倍   24%
	tNewGodOfGamblers_DoubleBetRate[1][5] = {}
	tNewGodOfGamblers_DoubleBetRate[1][5]["RandomItemChanceType"] = 2				
	tNewGodOfGamblers_DoubleBetRate[1][5]["ItemChance"] = 1200						
	tNewGodOfGamblers_DoubleBetRate[1][5]["Rate"] = 5
	tNewGodOfGamblers_DoubleBetRate[1][5]["Effect"] = "zhuanpan1"
	tNewGodOfGamblers_DoubleBetRate[1][6] = {}
	tNewGodOfGamblers_DoubleBetRate[1][6]["RandomItemChanceType"] = 2				
	tNewGodOfGamblers_DoubleBetRate[1][6]["ItemChance"] = 1200						
	tNewGodOfGamblers_DoubleBetRate[1][6]["Rate"] = 6
	tNewGodOfGamblers_DoubleBetRate[1][6]["Effect"] = "zhuanpan7"
	-- 1.2倍   18%
	tNewGodOfGamblers_DoubleBetRate[1][7] = {}
	tNewGodOfGamblers_DoubleBetRate[1][7]["RandomItemChanceType"] = 2				
	tNewGodOfGamblers_DoubleBetRate[1][7]["ItemChance"] = 900						
	tNewGodOfGamblers_DoubleBetRate[1][7]["Rate"] = 7
	tNewGodOfGamblers_DoubleBetRate[1][7]["Effect"] = "zhuanpan6"
	tNewGodOfGamblers_DoubleBetRate[1][8] = {}
	tNewGodOfGamblers_DoubleBetRate[1][8]["RandomItemChanceType"] = 2				
	tNewGodOfGamblers_DoubleBetRate[1][8]["ItemChance"] = 900						
	tNewGodOfGamblers_DoubleBetRate[1][8]["Rate"] = 8
	tNewGodOfGamblers_DoubleBetRate[1][8]["Effect"] = "zhuanpan12"
	-- 1.5倍   10%
	tNewGodOfGamblers_DoubleBetRate[1][9] = {}
	tNewGodOfGamblers_DoubleBetRate[1][9]["RandomItemChanceType"] = 2				
	tNewGodOfGamblers_DoubleBetRate[1][9]["ItemChance"] = 500						
	tNewGodOfGamblers_DoubleBetRate[1][9]["Rate"] = 9
	tNewGodOfGamblers_DoubleBetRate[1][9]["Effect"] = "zhuanpan2"
	tNewGodOfGamblers_DoubleBetRate[1][10] = {}
	tNewGodOfGamblers_DoubleBetRate[1][10]["RandomItemChanceType"] = 2				
	tNewGodOfGamblers_DoubleBetRate[1][10]["ItemChance"] = 500						
	tNewGodOfGamblers_DoubleBetRate[1][10]["Rate"] = 10
	tNewGodOfGamblers_DoubleBetRate[1][10]["Effect"] = "zhuanpan8"
	-- 2倍   8%
	tNewGodOfGamblers_DoubleBetRate[1][11] = {}
	tNewGodOfGamblers_DoubleBetRate[1][11]["RandomItemChanceType"] = 2				
	tNewGodOfGamblers_DoubleBetRate[1][11]["ItemChance"] = 400						
	tNewGodOfGamblers_DoubleBetRate[1][11]["Rate"] = 11
	tNewGodOfGamblers_DoubleBetRate[1][11]["Effect"] = "zhuanpan4"
	tNewGodOfGamblers_DoubleBetRate[1][12] = {}
	tNewGodOfGamblers_DoubleBetRate[1][12]["RandomItemChanceType"] = 2				
	tNewGodOfGamblers_DoubleBetRate[1][12]["ItemChance"] = 400						
	tNewGodOfGamblers_DoubleBetRate[1][12]["Rate"] = 12
	tNewGodOfGamblers_DoubleBetRate[1][12]["Effect"] = "zhuanpan10"
	
	tNewGodOfGamblers_DoubleBetRate[2] = {}
	tNewGodOfGamblers_DoubleBetRate[2]["ItemChanceSum"] = 10000						
	-- 0倍   22%
	tNewGodOfGamblers_DoubleBetRate[2][1] = {}
	tNewGodOfGamblers_DoubleBetRate[2][1]["RandomItemChanceType"] = 2				
	tNewGodOfGamblers_DoubleBetRate[2][1]["ItemChance"] = 1100						
	tNewGodOfGamblers_DoubleBetRate[2][1]["Rate"] = 1
	tNewGodOfGamblers_DoubleBetRate[2][1]["Effect"] = "zhuanpan3"
	tNewGodOfGamblers_DoubleBetRate[2][2] = {}
	tNewGodOfGamblers_DoubleBetRate[2][2]["RandomItemChanceType"] = 2				
	tNewGodOfGamblers_DoubleBetRate[2][2]["ItemChance"] = 1100						
	tNewGodOfGamblers_DoubleBetRate[2][2]["Rate"] = 2
	tNewGodOfGamblers_DoubleBetRate[2][2]["Effect"] = "zhuanpan9"
	-- 1倍   18%
	tNewGodOfGamblers_DoubleBetRate[2][3] = {}
	tNewGodOfGamblers_DoubleBetRate[2][3]["RandomItemChanceType"] = 2				
	tNewGodOfGamblers_DoubleBetRate[2][3]["ItemChance"] = 900						
	tNewGodOfGamblers_DoubleBetRate[2][3]["Rate"] = 3
	tNewGodOfGamblers_DoubleBetRate[2][3]["Effect"] = "zhuanpan5"
	tNewGodOfGamblers_DoubleBetRate[2][4] = {}
	tNewGodOfGamblers_DoubleBetRate[2][4]["RandomItemChanceType"] = 2				
	tNewGodOfGamblers_DoubleBetRate[2][4]["ItemChance"] = 900						
	tNewGodOfGamblers_DoubleBetRate[2][4]["Rate"] = 4
	tNewGodOfGamblers_DoubleBetRate[2][4]["Effect"] = "zhuanpan11"
	-- 1.1倍   24%
	tNewGodOfGamblers_DoubleBetRate[2][5] = {}
	tNewGodOfGamblers_DoubleBetRate[2][5]["RandomItemChanceType"] = 2				
	tNewGodOfGamblers_DoubleBetRate[2][5]["ItemChance"] = 1200						
	tNewGodOfGamblers_DoubleBetRate[2][5]["Rate"] = 5
	tNewGodOfGamblers_DoubleBetRate[2][5]["Effect"] = "zhuanpan1"
	tNewGodOfGamblers_DoubleBetRate[2][6] = {}
	tNewGodOfGamblers_DoubleBetRate[2][6]["RandomItemChanceType"] = 2				
	tNewGodOfGamblers_DoubleBetRate[2][6]["ItemChance"] = 1200						
	tNewGodOfGamblers_DoubleBetRate[2][6]["Rate"] = 6
	tNewGodOfGamblers_DoubleBetRate[2][6]["Effect"] = "zhuanpan7"
	-- 1.2倍   18%
	tNewGodOfGamblers_DoubleBetRate[2][7] = {}
	tNewGodOfGamblers_DoubleBetRate[2][7]["RandomItemChanceType"] = 2				
	tNewGodOfGamblers_DoubleBetRate[2][7]["ItemChance"] = 900						
	tNewGodOfGamblers_DoubleBetRate[2][7]["Rate"] = 7
	tNewGodOfGamblers_DoubleBetRate[2][7]["Effect"] = "zhuanpan6"
	tNewGodOfGamblers_DoubleBetRate[2][8] = {}
	tNewGodOfGamblers_DoubleBetRate[2][8]["RandomItemChanceType"] = 2				
	tNewGodOfGamblers_DoubleBetRate[2][8]["ItemChance"] = 900						
	tNewGodOfGamblers_DoubleBetRate[2][8]["Rate"] = 8
	tNewGodOfGamblers_DoubleBetRate[2][8]["Effect"] = "zhuanpan12"
	-- 1.5倍   10%
	tNewGodOfGamblers_DoubleBetRate[2][9] = {}
	tNewGodOfGamblers_DoubleBetRate[2][9]["RandomItemChanceType"] = 2				
	tNewGodOfGamblers_DoubleBetRate[2][9]["ItemChance"] = 500						
	tNewGodOfGamblers_DoubleBetRate[2][9]["Rate"] = 9
	tNewGodOfGamblers_DoubleBetRate[2][9]["Effect"] = "zhuanpan2"
	tNewGodOfGamblers_DoubleBetRate[2][10] = {}
	tNewGodOfGamblers_DoubleBetRate[2][10]["RandomItemChanceType"] = 2				
	tNewGodOfGamblers_DoubleBetRate[2][10]["ItemChance"] = 500						
	tNewGodOfGamblers_DoubleBetRate[2][10]["Rate"] = 10
	tNewGodOfGamblers_DoubleBetRate[2][10]["Effect"] = "zhuanpan8"
	-- 2倍   8%
	tNewGodOfGamblers_DoubleBetRate[2][11] = {}
	tNewGodOfGamblers_DoubleBetRate[2][11]["RandomItemChanceType"] = 2				
	tNewGodOfGamblers_DoubleBetRate[2][11]["ItemChance"] = 400						
	tNewGodOfGamblers_DoubleBetRate[2][11]["Rate"] = 11
	tNewGodOfGamblers_DoubleBetRate[2][11]["Effect"] = "zhuanpan4"
	tNewGodOfGamblers_DoubleBetRate[2][12] = {}
	tNewGodOfGamblers_DoubleBetRate[2][12]["RandomItemChanceType"] = 2				
	tNewGodOfGamblers_DoubleBetRate[2][12]["ItemChance"] = 400						
	tNewGodOfGamblers_DoubleBetRate[2][12]["Rate"] = 12
	tNewGodOfGamblers_DoubleBetRate[2][12]["Effect"] = "zhuanpan10"
	
-- 翻倍赌几率 
local tNewGodOfGamblers_DoubleBet = {}
	-- 天石赠 1 1 1
	tNewGodOfGamblers_DoubleBet[1] = {}
	tNewGodOfGamblers_DoubleBet[1][1] = {}
	tNewGodOfGamblers_DoubleBet[1][1]["Min"] = 10
	tNewGodOfGamblers_DoubleBet[1][1]["Max"] = 10000
	tNewGodOfGamblers_DoubleBet[1][1]["ReturnMin"] = 0
	tNewGodOfGamblers_DoubleBet[1][1]["Stc"] = 1
	tNewGodOfGamblers_DoubleBet[1][1]["Type"] = 1
	-- 银两 2 1 1
	tNewGodOfGamblers_DoubleBet[2] = {}
	tNewGodOfGamblers_DoubleBet[2][1] = {}
	tNewGodOfGamblers_DoubleBet[2][1]["Min"] = 500000
	tNewGodOfGamblers_DoubleBet[2][1]["Max"] = 100000000
	tNewGodOfGamblers_DoubleBet[2][1]["ReturnMin"] = 0
	tNewGodOfGamblers_DoubleBet[2][1]["Stc"] = 2
	tNewGodOfGamblers_DoubleBet[2][1]["Type"] = 2
	-- 气力值 3 1 1
	tNewGodOfGamblers_DoubleBet[3] = {}
	tNewGodOfGamblers_DoubleBet[3][1] = {}
	tNewGodOfGamblers_DoubleBet[3][1]["Min"] = 100
	tNewGodOfGamblers_DoubleBet[3][1]["Max"] = 100000
	tNewGodOfGamblers_DoubleBet[3][1]["ReturnMin"] = 0
	tNewGodOfGamblers_DoubleBet[3][1]["Stc"] = 3
	tNewGodOfGamblers_DoubleBet[3][1]["Type"] = 3
	-- 神纹精粹
	tNewGodOfGamblers_DoubleBet[4] = {}
	-- 蓝色神纹精粹 非赠 4 1 1
	tNewGodOfGamblers_DoubleBet[4][1] = {}
	tNewGodOfGamblers_DoubleBet[4][1]["Min"] = 0
	tNewGodOfGamblers_DoubleBet[4][1]["Max"] = 100000
	tNewGodOfGamblers_DoubleBet[4][1]["ReturnMin"] = 10
	tNewGodOfGamblers_DoubleBet[4][1]["Stc"] = 4
	tNewGodOfGamblers_DoubleBet[4][1]["Type"] = 4
	tNewGodOfGamblers_DoubleBet[4][1]["ChkGift"] = 0
	tNewGodOfGamblers_DoubleBet[4][1]["Stake"] = {}
	tNewGodOfGamblers_DoubleBet[4][1]["Stake"][4040001] = 10
	tNewGodOfGamblers_DoubleBet[4][1]["Reuturn"] = {}
	tNewGodOfGamblers_DoubleBet[4][1]["Reuturn"][10] = 4040001

	-- 蓝色神纹精粹 赠 4 2 1
	tNewGodOfGamblers_DoubleBet[4][2] = {}
	tNewGodOfGamblers_DoubleBet[4][2]["Min"] = 0
	tNewGodOfGamblers_DoubleBet[4][2]["Max"] = 100000
	tNewGodOfGamblers_DoubleBet[4][2]["ReturnMin"] = 10
	tNewGodOfGamblers_DoubleBet[4][2]["Stc"] = 5
	tNewGodOfGamblers_DoubleBet[4][2]["Type"] = 4
	tNewGodOfGamblers_DoubleBet[4][2]["ChkGift"] = 2
	tNewGodOfGamblers_DoubleBet[4][2]["Stake"] = {}
	tNewGodOfGamblers_DoubleBet[4][2]["Stake"][4040001] = 10
	tNewGodOfGamblers_DoubleBet[4][2]["Reuturn"] = {}
	tNewGodOfGamblers_DoubleBet[4][2]["Reuturn"][10] = 4040001
	-- 黄色神纹精粹 非赠 4 3 1
	tNewGodOfGamblers_DoubleBet[4][3] = {}
	tNewGodOfGamblers_DoubleBet[4][3]["Min"] = 0
	tNewGodOfGamblers_DoubleBet[4][3]["Max"] = 100000
	tNewGodOfGamblers_DoubleBet[4][3]["ReturnMin"] = 10
	tNewGodOfGamblers_DoubleBet[4][3]["Stc"] = 6
	tNewGodOfGamblers_DoubleBet[4][3]["Type"] = 4
	tNewGodOfGamblers_DoubleBet[4][3]["ChkGift"] = 0
	tNewGodOfGamblers_DoubleBet[4][3]["Stake"] = {}
	tNewGodOfGamblers_DoubleBet[4][3]["Stake"][4050001] = 10
	tNewGodOfGamblers_DoubleBet[4][3]["Reuturn"] = {}
	tNewGodOfGamblers_DoubleBet[4][3]["Reuturn"][10] = 4050001
	-- 黄色神纹精粹 赠 4 4 1
	tNewGodOfGamblers_DoubleBet[4][4] = {}
	tNewGodOfGamblers_DoubleBet[4][4]["Min"] = 0
	tNewGodOfGamblers_DoubleBet[4][4]["Max"] = 100000
	tNewGodOfGamblers_DoubleBet[4][4]["ReturnMin"] = 10
	tNewGodOfGamblers_DoubleBet[4][4]["Stc"] = 7
	tNewGodOfGamblers_DoubleBet[4][4]["Type"] = 4
	tNewGodOfGamblers_DoubleBet[4][4]["ChkGift"] = 2
	tNewGodOfGamblers_DoubleBet[4][4]["Stake"] = {}
	tNewGodOfGamblers_DoubleBet[4][4]["Stake"][4050001] = 10
	tNewGodOfGamblers_DoubleBet[4][4]["Reuturn"] = {}
	tNewGodOfGamblers_DoubleBet[4][4]["Reuturn"][10] = 4050001
	-- 万能神纹精粹 非赠 4 5 1
	tNewGodOfGamblers_DoubleBet[4][5] = {}
	tNewGodOfGamblers_DoubleBet[4][5]["Min"] = 0
	tNewGodOfGamblers_DoubleBet[4][5]["Max"] = 100000
	tNewGodOfGamblers_DoubleBet[4][5]["ReturnMin"] = 10
	tNewGodOfGamblers_DoubleBet[4][5]["Stc"] = 8
	tNewGodOfGamblers_DoubleBet[4][5]["Type"] = 4
	tNewGodOfGamblers_DoubleBet[4][5]["ChkGift"] = 0
	tNewGodOfGamblers_DoubleBet[4][5]["Stake"] = {}
	tNewGodOfGamblers_DoubleBet[4][5]["Stake"][4060001] = 10
	tNewGodOfGamblers_DoubleBet[4][5]["Reuturn"] = {}
	tNewGodOfGamblers_DoubleBet[4][5]["Reuturn"][10] = 4060001
	-- 万能神纹精粹 赠 4 6 1
	tNewGodOfGamblers_DoubleBet[4][6] = {}
	tNewGodOfGamblers_DoubleBet[4][6]["Min"] = 0
	tNewGodOfGamblers_DoubleBet[4][6]["Max"] = 100000
	tNewGodOfGamblers_DoubleBet[4][6]["ReturnMin"] = 10
	tNewGodOfGamblers_DoubleBet[4][6]["Stc"] = 9
	tNewGodOfGamblers_DoubleBet[4][6]["Type"] = 4
	tNewGodOfGamblers_DoubleBet[4][6]["ChkGift"] = 2
	tNewGodOfGamblers_DoubleBet[4][6]["Stake"] = {}
	tNewGodOfGamblers_DoubleBet[4][6]["Stake"][4060001] = 10
	tNewGodOfGamblers_DoubleBet[4][6]["Reuturn"] = {}
	tNewGodOfGamblers_DoubleBet[4][6]["Reuturn"][10] = 4060001
	-- 赤炼石
	tNewGodOfGamblers_DoubleBet[5] = {}
	-- 赤炼石 非赠
	tNewGodOfGamblers_DoubleBet[5][1] = {}
	tNewGodOfGamblers_DoubleBet[5][1]["Min"] = 0
	tNewGodOfGamblers_DoubleBet[5][1]["Max"] = 100000
	tNewGodOfGamblers_DoubleBet[5][1]["ReturnMin"] = 40
	tNewGodOfGamblers_DoubleBet[5][1]["Stc"] = 10
	tNewGodOfGamblers_DoubleBet[5][1]["Type"] = 4
	tNewGodOfGamblers_DoubleBet[5][1]["ChkGift"] = 0
	tNewGodOfGamblers_DoubleBet[5][1]["ReturnSaveTime"] = 10080 -- 7天
	tNewGodOfGamblers_DoubleBet[5][1]["Stake"] = {}
	tNewGodOfGamblers_DoubleBet[5][1]["Stake"][730001] = 10
	tNewGodOfGamblers_DoubleBet[5][1]["Stake"][730002] = 40
	tNewGodOfGamblers_DoubleBet[5][1]["Stake"][730003] = 120
	tNewGodOfGamblers_DoubleBet[5][1]["Stake"][730004] = 360
	tNewGodOfGamblers_DoubleBet[5][1]["Stake"][730005] = 1080
	tNewGodOfGamblers_DoubleBet[5][1]["Stake"][730006] = 3240
	tNewGodOfGamblers_DoubleBet[5][1]["Reuturn"] = {}
	tNewGodOfGamblers_DoubleBet[5][1]["Reuturn"][1] = 730006
	tNewGodOfGamblers_DoubleBet[5][1]["Reuturn"][2] = 730005
	tNewGodOfGamblers_DoubleBet[5][1]["Reuturn"][3] = 730004
	tNewGodOfGamblers_DoubleBet[5][1]["Reuturn"][4] = 730003
	tNewGodOfGamblers_DoubleBet[5][1]["Reuturn"][5] = 730002
	-- 赤炼石 赠
	tNewGodOfGamblers_DoubleBet[5][2] = {}
	tNewGodOfGamblers_DoubleBet[5][2]["Min"] = 0
	tNewGodOfGamblers_DoubleBet[5][2]["Max"] = 100000
	tNewGodOfGamblers_DoubleBet[5][2]["ReturnMin"] = 40
	tNewGodOfGamblers_DoubleBet[5][2]["Stc"] = 11
	tNewGodOfGamblers_DoubleBet[5][2]["Type"] = 4
	tNewGodOfGamblers_DoubleBet[5][2]["ChkGift"] = 2
	tNewGodOfGamblers_DoubleBet[5][2]["ReturnSaveTime"] = 10080 -- 7天
	tNewGodOfGamblers_DoubleBet[5][2]["Stake"] = {}
	tNewGodOfGamblers_DoubleBet[5][2]["Stake"][730001] = 10
	tNewGodOfGamblers_DoubleBet[5][2]["Stake"][730002] = 40
	tNewGodOfGamblers_DoubleBet[5][2]["Stake"][730003] = 120
	tNewGodOfGamblers_DoubleBet[5][2]["Stake"][730004] = 360
	tNewGodOfGamblers_DoubleBet[5][2]["Stake"][730005] = 1080
	tNewGodOfGamblers_DoubleBet[5][2]["Stake"][730006] = 3240
	tNewGodOfGamblers_DoubleBet[5][2]["Reuturn"] = {}
	tNewGodOfGamblers_DoubleBet[5][2]["Reuturn"][1] = 730006
	tNewGodOfGamblers_DoubleBet[5][2]["Reuturn"][2] = 730005
	tNewGodOfGamblers_DoubleBet[5][2]["Reuturn"][3] = 730004
	tNewGodOfGamblers_DoubleBet[5][2]["Reuturn"][4] = 730003
	tNewGodOfGamblers_DoubleBet[5][2]["Reuturn"][5] = 730002
	-- 星陨石
	tNewGodOfGamblers_DoubleBet[6] = {}
	tNewGodOfGamblers_DoubleBet[6][1] = {}
	tNewGodOfGamblers_DoubleBet[6][1]["Min"] = 0
	tNewGodOfGamblers_DoubleBet[6][1]["Max"] = 100000
	tNewGodOfGamblers_DoubleBet[6][1]["ReturnMin"] = 10
	tNewGodOfGamblers_DoubleBet[6][1]["Stc"] = 12
	tNewGodOfGamblers_DoubleBet[6][1]["Type"] = 4
	tNewGodOfGamblers_DoubleBet[6][1]["ReturnSaveTime"] = 2880 -- 2天
	tNewGodOfGamblers_DoubleBet[6][1]["Stake"] = {}
	tNewGodOfGamblers_DoubleBet[6][1]["Stake"][3009000] = 10
	tNewGodOfGamblers_DoubleBet[6][1]["Stake"][3009001] = 100
	tNewGodOfGamblers_DoubleBet[6][1]["Stake"][3009002] = 1000
	tNewGodOfGamblers_DoubleBet[6][1]["Stake"][3009003] = 10000
	tNewGodOfGamblers_DoubleBet[6][1]["Reuturn"] = {}
	tNewGodOfGamblers_DoubleBet[6][1]["Reuturn"][1] = 3009003
	tNewGodOfGamblers_DoubleBet[6][1]["Reuturn"][2] = 3009002
	tNewGodOfGamblers_DoubleBet[6][1]["Reuturn"][3] = 3009001
	tNewGodOfGamblers_DoubleBet[6][1]["Reuturn"][4] = 3009000
	
	-- 灵珠
	tNewGodOfGamblers_DoubleBet[7] = {}
	tNewGodOfGamblers_DoubleBet[7][1] = {}
	tNewGodOfGamblers_DoubleBet[7][1]["Min"] = 0
	tNewGodOfGamblers_DoubleBet[7][1]["Max"] = 50000
	tNewGodOfGamblers_DoubleBet[7][1]["ReturnMin"] = 10
	tNewGodOfGamblers_DoubleBet[7][1]["Stc"] = 16
	tNewGodOfGamblers_DoubleBet[7][1]["Type"] = 4
	tNewGodOfGamblers_DoubleBet[7][1]["Stake"] = {}
	tNewGodOfGamblers_DoubleBet[7][1]["Stake"][4200002] = 10
	tNewGodOfGamblers_DoubleBet[7][1]["Stake"][4200003] = 20
	tNewGodOfGamblers_DoubleBet[7][1]["Stake"][4200004] = 40
	tNewGodOfGamblers_DoubleBet[7][1]["Stake"][4200005] = 80
	tNewGodOfGamblers_DoubleBet[7][1]["Stake"][4200006] = 160
	tNewGodOfGamblers_DoubleBet[7][1]["Stake"][4200007] = 320
	tNewGodOfGamblers_DoubleBet[7][1]["Stake"][4200008] = 640
	tNewGodOfGamblers_DoubleBet[7][1]["Stake"][4200009] = 1280
	tNewGodOfGamblers_DoubleBet[7][1]["Stake"][4200010] = 2560
	tNewGodOfGamblers_DoubleBet[7][1]["Stake"][4200011] = 5120
	tNewGodOfGamblers_DoubleBet[7][1]["Reuturn"] = {}
	tNewGodOfGamblers_DoubleBet[7][1]["Reuturn"][1] = 4200011
	tNewGodOfGamblers_DoubleBet[7][1]["Reuturn"][2] = 4200010
	tNewGodOfGamblers_DoubleBet[7][1]["Reuturn"][3] = 4200009
	tNewGodOfGamblers_DoubleBet[7][1]["Reuturn"][4] = 4200008
	tNewGodOfGamblers_DoubleBet[7][1]["Reuturn"][5] = 4200007
	tNewGodOfGamblers_DoubleBet[7][1]["Reuturn"][6] = 4200006
	tNewGodOfGamblers_DoubleBet[7][1]["Reuturn"][7] = 4200005
	tNewGodOfGamblers_DoubleBet[7][1]["Reuturn"][8] = 4200004
	tNewGodOfGamblers_DoubleBet[7][1]["Reuturn"][9] = 4200003
	tNewGodOfGamblers_DoubleBet[7][1]["Reuturn"][10] = 4200002
	
local tNewGodOfGamblers_DoubleBetReturn = {}
	tNewGodOfGamblers_DoubleBetReturn[3009000] = {}
	tNewGodOfGamblers_DoubleBetReturn[3009000]["RewardItem"] = {}				
	tNewGodOfGamblers_DoubleBetReturn[3009000]["RewardItem"][1] = {}			
	tNewGodOfGamblers_DoubleBetReturn[3009000]["RewardItem"][1]["Id"] = 3009000	
    -- tNewGodOfGamblers_DoubleBetReturn[3009000]["RewardItem"][1]["Attr"] = "0 %d %d 2880 1"
	tNewGodOfGamblers_DoubleBetReturn[3009000]["RewardEffect"] = {}
	tNewGodOfGamblers_DoubleBetReturn[3009000]["RewardEffect"]["SzObj"] = "self" 
	tNewGodOfGamblers_DoubleBetReturn[3009000]["RewardEffect"]["Effect"] = "angelwing"
	tNewGodOfGamblers_DoubleBetReturn[3009000]["LogId"] = 12001066
	tNewGodOfGamblers_DoubleBetReturn[3009000]["LogStep"] = "1[4]"
	tNewGodOfGamblers_DoubleBetReturn[3009000]["CommonAttr"] = "0 %d %d 2880 1"
	
	tNewGodOfGamblers_DoubleBetReturn[3009001] = {}
	tNewGodOfGamblers_DoubleBetReturn[3009001]["RewardItem"] = {}				
	tNewGodOfGamblers_DoubleBetReturn[3009001]["RewardItem"][1] = {}			
	tNewGodOfGamblers_DoubleBetReturn[3009001]["RewardItem"][1]["Id"] = 3009001
    -- tNewGodOfGamblers_DoubleBetReturn[3009001]["RewardItem"][1]["Attr"] = "0 %d %d 2880 1"
	tNewGodOfGamblers_DoubleBetReturn[3009001]["RewardEffect"] = {}
	tNewGodOfGamblers_DoubleBetReturn[3009001]["RewardEffect"]["SzObj"] = "self" 
	tNewGodOfGamblers_DoubleBetReturn[3009001]["RewardEffect"]["Effect"] = "angelwing"
	tNewGodOfGamblers_DoubleBetReturn[3009001]["LogId"] = 12001066
	tNewGodOfGamblers_DoubleBetReturn[3009001]["LogStep"] = "1[4]"
	tNewGodOfGamblers_DoubleBetReturn[3009001]["CommonAttr"] = "0 %d %d 2880 1"
	
	tNewGodOfGamblers_DoubleBetReturn[3009002] = {}
	tNewGodOfGamblers_DoubleBetReturn[3009002]["RewardItem"] = {}				
	tNewGodOfGamblers_DoubleBetReturn[3009002]["RewardItem"][1] = {}			
	tNewGodOfGamblers_DoubleBetReturn[3009002]["RewardItem"][1]["Id"] = 3009002	
    -- tNewGodOfGamblers_DoubleBetReturn[3009002]["RewardItem"][1]["Attr"] = "0 %d %d 2880 1"
	tNewGodOfGamblers_DoubleBetReturn[3009002]["RewardEffect"] = {}
	tNewGodOfGamblers_DoubleBetReturn[3009002]["RewardEffect"]["SzObj"] = "self" 
	tNewGodOfGamblers_DoubleBetReturn[3009002]["RewardEffect"]["Effect"] = "angelwing"
	tNewGodOfGamblers_DoubleBetReturn[3009002]["LogId"] = 12001066
	tNewGodOfGamblers_DoubleBetReturn[3009002]["LogStep"] = "1[4]"
	tNewGodOfGamblers_DoubleBetReturn[3009002]["CommonAttr"] = "0 %d %d 2880 1"
	
	tNewGodOfGamblers_DoubleBetReturn[3009003] = {}
	tNewGodOfGamblers_DoubleBetReturn[3009003]["RewardItem"] = {}				
	tNewGodOfGamblers_DoubleBetReturn[3009003]["RewardItem"][1] = {}			
	tNewGodOfGamblers_DoubleBetReturn[3009003]["RewardItem"][1]["Id"] = 3009003	
    -- tNewGodOfGamblers_DoubleBetReturn[3009003]["RewardItem"][1]["Attr"] = "0 %d %d 2880 1"
	tNewGodOfGamblers_DoubleBetReturn[3009003]["RewardEffect"] = {}
	tNewGodOfGamblers_DoubleBetReturn[3009003]["RewardEffect"]["SzObj"] = "self" 
	tNewGodOfGamblers_DoubleBetReturn[3009003]["RewardEffect"]["Effect"] = "angelwing"
	tNewGodOfGamblers_DoubleBetReturn[3009003]["LogId"] = 12001066
	tNewGodOfGamblers_DoubleBetReturn[3009003]["LogStep"] = "1[4]"
	tNewGodOfGamblers_DoubleBetReturn[3009003]["CommonAttr"] = "0 %d %d 2880 1"
	
	tNewGodOfGamblers_DoubleBetReturn[730002] = {}
	tNewGodOfGamblers_DoubleBetReturn[730002]["RewardItem"] = {}				
	tNewGodOfGamblers_DoubleBetReturn[730002]["RewardItem"][1] = {}			
	tNewGodOfGamblers_DoubleBetReturn[730002]["RewardItem"][1]["Id"] = 730002	
    -- tNewGodOfGamblers_DoubleBetReturn[730002]["RewardItem"][1]["Attr"] = "0 %d %d 10080 1"
	tNewGodOfGamblers_DoubleBetReturn[730002]["RewardEffect"] = {}
	tNewGodOfGamblers_DoubleBetReturn[730002]["RewardEffect"]["SzObj"] = "self" 
	tNewGodOfGamblers_DoubleBetReturn[730002]["RewardEffect"]["Effect"] = "angelwing"
	tNewGodOfGamblers_DoubleBetReturn[730002]["LogId"] = 12001066
	tNewGodOfGamblers_DoubleBetReturn[730002]["LogStep"] = "1[4]"
	tNewGodOfGamblers_DoubleBetReturn[730002]["CommonAttr"] = "0 %d %d 10080 1"
	
	tNewGodOfGamblers_DoubleBetReturn[730003] = {}
	tNewGodOfGamblers_DoubleBetReturn[730003]["RewardItem"] = {}				
	tNewGodOfGamblers_DoubleBetReturn[730003]["RewardItem"][1] = {}			
	tNewGodOfGamblers_DoubleBetReturn[730003]["RewardItem"][1]["Id"] = 730003	
    -- tNewGodOfGamblers_DoubleBetReturn[730003]["RewardItem"][1]["Attr"] = "0 %d %d 10080 1"
	tNewGodOfGamblers_DoubleBetReturn[730003]["RewardEffect"] = {}
	tNewGodOfGamblers_DoubleBetReturn[730003]["RewardEffect"]["SzObj"] = "self" 
	tNewGodOfGamblers_DoubleBetReturn[730003]["RewardEffect"]["Effect"] = "angelwing"
	tNewGodOfGamblers_DoubleBetReturn[730003]["LogId"] = 12001066
	tNewGodOfGamblers_DoubleBetReturn[730003]["LogStep"] = "1[4]"
	tNewGodOfGamblers_DoubleBetReturn[730003]["CommonAttr"] = "0 %d %d 10080 1"
	
	tNewGodOfGamblers_DoubleBetReturn[730004] = {}
	tNewGodOfGamblers_DoubleBetReturn[730004]["RewardItem"] = {}				
	tNewGodOfGamblers_DoubleBetReturn[730004]["RewardItem"][1] = {}			
	tNewGodOfGamblers_DoubleBetReturn[730004]["RewardItem"][1]["Id"] = 730004	
    -- tNewGodOfGamblers_DoubleBetReturn[730004]["RewardItem"][1]["Attr"] = "0 %d %d 10080 1"
	tNewGodOfGamblers_DoubleBetReturn[730004]["RewardEffect"] = {}
	tNewGodOfGamblers_DoubleBetReturn[730004]["RewardEffect"]["SzObj"] = "self" 
	tNewGodOfGamblers_DoubleBetReturn[730004]["RewardEffect"]["Effect"] = "angelwing"
	tNewGodOfGamblers_DoubleBetReturn[730004]["LogId"] = 12001066
	tNewGodOfGamblers_DoubleBetReturn[730004]["LogStep"] = "1[4]"
	tNewGodOfGamblers_DoubleBetReturn[730004]["CommonAttr"] = "0 %d %d 10080 1"
	
	tNewGodOfGamblers_DoubleBetReturn[730005] = {}
	tNewGodOfGamblers_DoubleBetReturn[730005]["RewardItem"] = {}				
	tNewGodOfGamblers_DoubleBetReturn[730005]["RewardItem"][1] = {}			
	tNewGodOfGamblers_DoubleBetReturn[730005]["RewardItem"][1]["Id"] = 730005	
    -- tNewGodOfGamblers_DoubleBetReturn[730005]["RewardItem"][1]["Attr"] = "0 %d %d 10080 1"
	tNewGodOfGamblers_DoubleBetReturn[730005]["RewardEffect"] = {}
	tNewGodOfGamblers_DoubleBetReturn[730005]["RewardEffect"]["SzObj"] = "self" 
	tNewGodOfGamblers_DoubleBetReturn[730005]["RewardEffect"]["Effect"] = "angelwing"
	tNewGodOfGamblers_DoubleBetReturn[730005]["LogId"] = 12001066
	tNewGodOfGamblers_DoubleBetReturn[730005]["LogStep"] = "1[4]"
	tNewGodOfGamblers_DoubleBetReturn[730005]["CommonAttr"] = "0 %d %d 10080 1"
	
	tNewGodOfGamblers_DoubleBetReturn[730006] = {}
	tNewGodOfGamblers_DoubleBetReturn[730006]["RewardItem"] = {}				
	tNewGodOfGamblers_DoubleBetReturn[730006]["RewardItem"][1] = {}			
	tNewGodOfGamblers_DoubleBetReturn[730006]["RewardItem"][1]["Id"] = 730006	
    -- tNewGodOfGamblers_DoubleBetReturn[730006]["RewardItem"][1]["Attr"] = "0 %d %d 10080 1"
	tNewGodOfGamblers_DoubleBetReturn[730006]["RewardEffect"] = {}
	tNewGodOfGamblers_DoubleBetReturn[730006]["RewardEffect"]["SzObj"] = "self" 
	tNewGodOfGamblers_DoubleBetReturn[730006]["RewardEffect"]["Effect"] = "angelwing"
	tNewGodOfGamblers_DoubleBetReturn[730006]["LogId"] = 12001066
	tNewGodOfGamblers_DoubleBetReturn[730006]["LogStep"] = "1[4]"
	tNewGodOfGamblers_DoubleBetReturn[730006]["CommonAttr"] = "0 %d %d 10080 1"
	
	tNewGodOfGamblers_DoubleBetReturn[4040001] = {}
	tNewGodOfGamblers_DoubleBetReturn[4040001]["RewardItem"] = {}				
	tNewGodOfGamblers_DoubleBetReturn[4040001]["RewardItem"][1] = {}			
	tNewGodOfGamblers_DoubleBetReturn[4040001]["RewardItem"][1]["Id"] = 4040001	
    -- tNewGodOfGamblers_DoubleBetReturn[4040001]["RewardItem"][1]["Attr"] = "0 %d %d"
	tNewGodOfGamblers_DoubleBetReturn[4040001]["RewardEffect"] = {}
	tNewGodOfGamblers_DoubleBetReturn[4040001]["RewardEffect"]["SzObj"] = "self" 
	tNewGodOfGamblers_DoubleBetReturn[4040001]["RewardEffect"]["Effect"] = "angelwing"
	tNewGodOfGamblers_DoubleBetReturn[4040001]["LogId"] = 12001066
	tNewGodOfGamblers_DoubleBetReturn[4040001]["LogStep"] = "1[4]"
	tNewGodOfGamblers_DoubleBetReturn[4040001]["CommonAttr"] = "0 %d %d"
	
	tNewGodOfGamblers_DoubleBetReturn[4050001] = {}
	tNewGodOfGamblers_DoubleBetReturn[4050001]["RewardItem"] = {}				
	tNewGodOfGamblers_DoubleBetReturn[4050001]["RewardItem"][1] = {}			
	tNewGodOfGamblers_DoubleBetReturn[4050001]["RewardItem"][1]["Id"] = 4050001	
    -- tNewGodOfGamblers_DoubleBetReturn[4050001]["RewardItem"][1]["Attr"] = "0 %d %d"
	tNewGodOfGamblers_DoubleBetReturn[4050001]["RewardEffect"] = {}
	tNewGodOfGamblers_DoubleBetReturn[4050001]["RewardEffect"]["SzObj"] = "self" 
	tNewGodOfGamblers_DoubleBetReturn[4050001]["RewardEffect"]["Effect"] = "angelwing"
	tNewGodOfGamblers_DoubleBetReturn[4050001]["LogId"] = 12001066
	tNewGodOfGamblers_DoubleBetReturn[4050001]["LogStep"] = "1[4]"
	tNewGodOfGamblers_DoubleBetReturn[4050001]["CommonAttr"] = "0 %d %d"
	
	tNewGodOfGamblers_DoubleBetReturn[4060001] = {}
	tNewGodOfGamblers_DoubleBetReturn[4060001]["RewardItem"] = {}				
	tNewGodOfGamblers_DoubleBetReturn[4060001]["RewardItem"][1] = {}			
	tNewGodOfGamblers_DoubleBetReturn[4060001]["RewardItem"][1]["Id"] = 4060001	
    -- tNewGodOfGamblers_DoubleBetReturn[4060001]["RewardItem"][1]["Attr"] = "0 %d %d"
	tNewGodOfGamblers_DoubleBetReturn[4060001]["RewardEffect"] = {}
	tNewGodOfGamblers_DoubleBetReturn[4060001]["RewardEffect"]["SzObj"] = "self" 
	tNewGodOfGamblers_DoubleBetReturn[4060001]["RewardEffect"]["Effect"] = "angelwing"
	tNewGodOfGamblers_DoubleBetReturn[4060001]["LogId"] = 12001066
	tNewGodOfGamblers_DoubleBetReturn[4060001]["LogStep"] = "1[4]"
	tNewGodOfGamblers_DoubleBetReturn[4060001]["CommonAttr"] = "0 %d %d"
	
	tNewGodOfGamblers_DoubleBetReturn[4200002] = {}
	tNewGodOfGamblers_DoubleBetReturn[4200002]["RewardItem"] = {}				
	tNewGodOfGamblers_DoubleBetReturn[4200002]["RewardItem"][1] = {}			
	tNewGodOfGamblers_DoubleBetReturn[4200002]["RewardItem"][1]["Id"] = 4200002	
    -- tNewGodOfGamblers_DoubleBetReturn[4200002]["RewardItem"][1]["Attr"] = "0 %d %d"
	tNewGodOfGamblers_DoubleBetReturn[4200002]["RewardEffect"] = {}
	tNewGodOfGamblers_DoubleBetReturn[4200002]["RewardEffect"]["SzObj"] = "self" 
	tNewGodOfGamblers_DoubleBetReturn[4200002]["RewardEffect"]["Effect"] = "angelwing"
	tNewGodOfGamblers_DoubleBetReturn[4200002]["LogId"] = 12001066
	tNewGodOfGamblers_DoubleBetReturn[4200002]["LogStep"] = "1[4]"
	tNewGodOfGamblers_DoubleBetReturn[4200002]["CommonAttr"] = "0 %d %d"
	
	tNewGodOfGamblers_DoubleBetReturn[4200003] = {}
	tNewGodOfGamblers_DoubleBetReturn[4200003]["RewardItem"] = {}				
	tNewGodOfGamblers_DoubleBetReturn[4200003]["RewardItem"][1] = {}			
	tNewGodOfGamblers_DoubleBetReturn[4200003]["RewardItem"][1]["Id"] = 4200003	
    -- tNewGodOfGamblers_DoubleBetReturn[4200003]["RewardItem"][1]["Attr"] = "0 %d %d"
	tNewGodOfGamblers_DoubleBetReturn[4200003]["RewardEffect"] = {}
	tNewGodOfGamblers_DoubleBetReturn[4200003]["RewardEffect"]["SzObj"] = "self" 
	tNewGodOfGamblers_DoubleBetReturn[4200003]["RewardEffect"]["Effect"] = "angelwing"
	tNewGodOfGamblers_DoubleBetReturn[4200003]["LogId"] = 12001066
	tNewGodOfGamblers_DoubleBetReturn[4200003]["LogStep"] = "1[4]"
	tNewGodOfGamblers_DoubleBetReturn[4200003]["CommonAttr"] = "0 %d %d"
	
	tNewGodOfGamblers_DoubleBetReturn[4200004] = {}
	tNewGodOfGamblers_DoubleBetReturn[4200004]["RewardItem"] = {}				
	tNewGodOfGamblers_DoubleBetReturn[4200004]["RewardItem"][1] = {}			
	tNewGodOfGamblers_DoubleBetReturn[4200004]["RewardItem"][1]["Id"] = 4200004	
    -- tNewGodOfGamblers_DoubleBetReturn[4200004]["RewardItem"][1]["Attr"] = "0 %d %d"
	tNewGodOfGamblers_DoubleBetReturn[4200004]["RewardEffect"] = {}
	tNewGodOfGamblers_DoubleBetReturn[4200004]["RewardEffect"]["SzObj"] = "self" 
	tNewGodOfGamblers_DoubleBetReturn[4200004]["RewardEffect"]["Effect"] = "angelwing"
	tNewGodOfGamblers_DoubleBetReturn[4200004]["LogId"] = 12001066
	tNewGodOfGamblers_DoubleBetReturn[4200004]["LogStep"] = "1[4]"
	tNewGodOfGamblers_DoubleBetReturn[4200004]["CommonAttr"] = "0 %d %d"
	
	tNewGodOfGamblers_DoubleBetReturn[4200005] = {}
	tNewGodOfGamblers_DoubleBetReturn[4200005]["RewardItem"] = {}				
	tNewGodOfGamblers_DoubleBetReturn[4200005]["RewardItem"][1] = {}			
	tNewGodOfGamblers_DoubleBetReturn[4200005]["RewardItem"][1]["Id"] = 4200005	
    -- tNewGodOfGamblers_DoubleBetReturn[4200005]["RewardItem"][1]["Attr"] = "0 %d %d"
	tNewGodOfGamblers_DoubleBetReturn[4200005]["RewardEffect"] = {}
	tNewGodOfGamblers_DoubleBetReturn[4200005]["RewardEffect"]["SzObj"] = "self" 
	tNewGodOfGamblers_DoubleBetReturn[4200005]["RewardEffect"]["Effect"] = "angelwing"
	tNewGodOfGamblers_DoubleBetReturn[4200005]["LogId"] = 12001066
	tNewGodOfGamblers_DoubleBetReturn[4200005]["LogStep"] = "1[4]"
	tNewGodOfGamblers_DoubleBetReturn[4200005]["CommonAttr"] = "0 %d %d"
	
	tNewGodOfGamblers_DoubleBetReturn[4200006] = {}
	tNewGodOfGamblers_DoubleBetReturn[4200006]["RewardItem"] = {}				
	tNewGodOfGamblers_DoubleBetReturn[4200006]["RewardItem"][1] = {}			
	tNewGodOfGamblers_DoubleBetReturn[4200006]["RewardItem"][1]["Id"] = 4200006	
    -- tNewGodOfGamblers_DoubleBetReturn[4200006]["RewardItem"][1]["Attr"] = "0 %d %d"
	tNewGodOfGamblers_DoubleBetReturn[4200006]["RewardEffect"] = {}
	tNewGodOfGamblers_DoubleBetReturn[4200006]["RewardEffect"]["SzObj"] = "self" 
	tNewGodOfGamblers_DoubleBetReturn[4200006]["RewardEffect"]["Effect"] = "angelwing"
	tNewGodOfGamblers_DoubleBetReturn[4200006]["LogId"] = 12001066
	tNewGodOfGamblers_DoubleBetReturn[4200006]["LogStep"] = "1[4]"
	tNewGodOfGamblers_DoubleBetReturn[4200006]["CommonAttr"] = "0 %d %d"
	
	tNewGodOfGamblers_DoubleBetReturn[4200007] = {}
	tNewGodOfGamblers_DoubleBetReturn[4200007]["RewardItem"] = {}				
	tNewGodOfGamblers_DoubleBetReturn[4200007]["RewardItem"][1] = {}			
	tNewGodOfGamblers_DoubleBetReturn[4200007]["RewardItem"][1]["Id"] = 4200007	
    -- tNewGodOfGamblers_DoubleBetReturn[4200007]["RewardItem"][1]["Attr"] = "0 %d %d"
	tNewGodOfGamblers_DoubleBetReturn[4200007]["RewardEffect"] = {}
	tNewGodOfGamblers_DoubleBetReturn[4200007]["RewardEffect"]["SzObj"] = "self" 
	tNewGodOfGamblers_DoubleBetReturn[4200007]["RewardEffect"]["Effect"] = "angelwing"
	tNewGodOfGamblers_DoubleBetReturn[4200007]["LogId"] = 12001066
	tNewGodOfGamblers_DoubleBetReturn[4200007]["LogStep"] = "1[4]"
	tNewGodOfGamblers_DoubleBetReturn[4200007]["CommonAttr"] = "0 %d %d"
	
	tNewGodOfGamblers_DoubleBetReturn[4200008] = {}
	tNewGodOfGamblers_DoubleBetReturn[4200008]["RewardItem"] = {}				
	tNewGodOfGamblers_DoubleBetReturn[4200008]["RewardItem"][1] = {}			
	tNewGodOfGamblers_DoubleBetReturn[4200008]["RewardItem"][1]["Id"] = 4200008	
    -- tNewGodOfGamblers_DoubleBetReturn[4200008]["RewardItem"][1]["Attr"] = "0 %d %d"
	tNewGodOfGamblers_DoubleBetReturn[4200008]["RewardEffect"] = {}
	tNewGodOfGamblers_DoubleBetReturn[4200008]["RewardEffect"]["SzObj"] = "self" 
	tNewGodOfGamblers_DoubleBetReturn[4200008]["RewardEffect"]["Effect"] = "angelwing"
	tNewGodOfGamblers_DoubleBetReturn[4200008]["LogId"] = 12001066
	tNewGodOfGamblers_DoubleBetReturn[4200008]["LogStep"] = "1[4]"
	tNewGodOfGamblers_DoubleBetReturn[4200008]["CommonAttr"] = "0 %d %d"
	
	tNewGodOfGamblers_DoubleBetReturn[4200009] = {}
	tNewGodOfGamblers_DoubleBetReturn[4200009]["RewardItem"] = {}				
	tNewGodOfGamblers_DoubleBetReturn[4200009]["RewardItem"][1] = {}			
	tNewGodOfGamblers_DoubleBetReturn[4200009]["RewardItem"][1]["Id"] = 4200009	
    -- tNewGodOfGamblers_DoubleBetReturn[4200009]["RewardItem"][1]["Attr"] = "0 %d %d"
	tNewGodOfGamblers_DoubleBetReturn[4200009]["RewardEffect"] = {}
	tNewGodOfGamblers_DoubleBetReturn[4200009]["RewardEffect"]["SzObj"] = "self" 
	tNewGodOfGamblers_DoubleBetReturn[4200009]["RewardEffect"]["Effect"] = "angelwing"
	tNewGodOfGamblers_DoubleBetReturn[4200009]["LogId"] = 12001066
	tNewGodOfGamblers_DoubleBetReturn[4200009]["LogStep"] = "1[4]"
	tNewGodOfGamblers_DoubleBetReturn[4200009]["CommonAttr"] = "0 %d %d"
	
	tNewGodOfGamblers_DoubleBetReturn[4200010] = {}
	tNewGodOfGamblers_DoubleBetReturn[4200010]["RewardItem"] = {}				
	tNewGodOfGamblers_DoubleBetReturn[4200010]["RewardItem"][1] = {}			
	tNewGodOfGamblers_DoubleBetReturn[4200010]["RewardItem"][1]["Id"] = 4200010	
    -- tNewGodOfGamblers_DoubleBetReturn[4200010]["RewardItem"][1]["Attr"] = "0 %d %d"
	tNewGodOfGamblers_DoubleBetReturn[4200010]["RewardEffect"] = {}
	tNewGodOfGamblers_DoubleBetReturn[4200010]["RewardEffect"]["SzObj"] = "self" 
	tNewGodOfGamblers_DoubleBetReturn[4200010]["RewardEffect"]["Effect"] = "angelwing"
	tNewGodOfGamblers_DoubleBetReturn[4200010]["LogId"] = 12001066
	tNewGodOfGamblers_DoubleBetReturn[4200010]["LogStep"] = "1[4]"
	tNewGodOfGamblers_DoubleBetReturn[4200010]["CommonAttr"] = "0 %d %d"
	
	tNewGodOfGamblers_DoubleBetReturn[4200011] = {}
	tNewGodOfGamblers_DoubleBetReturn[4200011]["RewardItem"] = {}				
	tNewGodOfGamblers_DoubleBetReturn[4200011]["RewardItem"][1] = {}			
	tNewGodOfGamblers_DoubleBetReturn[4200011]["RewardItem"][1]["Id"] = 4200011	
    -- tNewGodOfGamblers_DoubleBetReturn[4200011]["RewardItem"][1]["Attr"] = "0 %d %d"
	tNewGodOfGamblers_DoubleBetReturn[4200011]["RewardEffect"] = {}
	tNewGodOfGamblers_DoubleBetReturn[4200011]["RewardEffect"]["SzObj"] = "self" 
	tNewGodOfGamblers_DoubleBetReturn[4200011]["RewardEffect"]["Effect"] = "angelwing"
	tNewGodOfGamblers_DoubleBetReturn[4200011]["LogId"] = 12001066
	tNewGodOfGamblers_DoubleBetReturn[4200011]["LogStep"] = "1[4]"
	tNewGodOfGamblers_DoubleBetReturn[4200011]["CommonAttr"] = "0 %d %d"
	
	tNewGodOfGamblers_DoubleBetReturn["Mul"] = {}
	tNewGodOfGamblers_DoubleBetReturn["Mul"]["RewardItem"] = {}				
	tNewGodOfGamblers_DoubleBetReturn["Mul"]["RewardEffect"] = {}
	tNewGodOfGamblers_DoubleBetReturn["Mul"]["RewardEffect"]["SzObj"] = "self" 
	tNewGodOfGamblers_DoubleBetReturn["Mul"]["RewardEffect"]["Effect"] = "angelwing"
	tNewGodOfGamblers_DoubleBetReturn["Mul"]["LogId"] = 12001066
	tNewGodOfGamblers_DoubleBetReturn["Mul"]["LogStep"] = "1[4]"
	tNewGodOfGamblers_DoubleBetReturn["Mul"]["CommonAttr"] = "0 %d %d"
	
	tNewGodOfGamblers_DoubleBetReturn["MulMul"] = {}
	tNewGodOfGamblers_DoubleBetReturn["MulMul"]["RewardItem"] = {}				
	tNewGodOfGamblers_DoubleBetReturn["MulMul"]["RewardEffect"] = {}
	tNewGodOfGamblers_DoubleBetReturn["MulMul"]["RewardEffect"]["SzObj"] = "self" 
	tNewGodOfGamblers_DoubleBetReturn["MulMul"]["RewardEffect"]["Effect"] = "angelwing"
	tNewGodOfGamblers_DoubleBetReturn["MulMul"]["LogId"] = 12001066
	tNewGodOfGamblers_DoubleBetReturn["MulMul"]["LogStep"] = "1[4]"
	tNewGodOfGamblers_DoubleBetReturn["MulMul"]["CommonAttr"] = "0 %d %d"

	
-- 取回选项
local tNewGodOfGamblers_ChipInOption = {}
	tNewGodOfGamblers_ChipInOption[1] = {}
	tNewGodOfGamblers_ChipInOption[1][1] = 50
	tNewGodOfGamblers_ChipInOption[1][2] = 500
	tNewGodOfGamblers_ChipInOption[2] = {}
	tNewGodOfGamblers_ChipInOption[2][1] = 1000000
	tNewGodOfGamblers_ChipInOption[2][2] = 10000000
	tNewGodOfGamblers_ChipInOption[3] = {}
	tNewGodOfGamblers_ChipInOption[3][1] = 1000
	tNewGodOfGamblers_ChipInOption[3][2] = 10000

	
-- 抢红包
local tNewGodOfGamblers_GrabRedEnvelopes = {}
	tNewGodOfGamblers_GrabRedEnvelopes[100] = {}
	tNewGodOfGamblers_GrabRedEnvelopes[100]["NpcId"] = 21493
	tNewGodOfGamblers_GrabRedEnvelopes[100]["PersonNum"] = 5
	tNewGodOfGamblers_GrabRedEnvelopes[100]["JackPot"] = 100
	tNewGodOfGamblers_GrabRedEnvelopes[100]["GlobalId"] = 52641
	tNewGodOfGamblers_GrabRedEnvelopes[100]["Pos"] = 0
	tNewGodOfGamblers_GrabRedEnvelopes[100]["MaxTime"] = 300 -- 单位：秒
	tNewGodOfGamblers_GrabRedEnvelopes[100]["RedEnvelopes"] = {}
	tNewGodOfGamblers_GrabRedEnvelopes[100]["BeginTime"] = 0
	tNewGodOfGamblers_GrabRedEnvelopes[100]["ConfirmDialog"] = "1-1"
	tNewGodOfGamblers_GrabRedEnvelopes[100]["MainDialog"] = "2-1"
	tNewGodOfGamblers_GrabRedEnvelopes[100]["NoMoneyDialog"] = "3-1"
	tNewGodOfGamblers_GrabRedEnvelopes[1000] = {}
	tNewGodOfGamblers_GrabRedEnvelopes[1000]["PersonNum"] = 10
	tNewGodOfGamblers_GrabRedEnvelopes[1000]["NpcId"] = 21494
	tNewGodOfGamblers_GrabRedEnvelopes[1000]["JackPot"] = 1000
	tNewGodOfGamblers_GrabRedEnvelopes[1000]["GlobalId"] = 52641
	tNewGodOfGamblers_GrabRedEnvelopes[1000]["Pos"] = 1
	tNewGodOfGamblers_GrabRedEnvelopes[1000]["MaxTime"] = 300 -- 单位：秒
	tNewGodOfGamblers_GrabRedEnvelopes[1000]["RedEnvelopes"] = {}
	tNewGodOfGamblers_GrabRedEnvelopes[1000]["BeginTime"] = 0
	tNewGodOfGamblers_GrabRedEnvelopes[1000]["ConfirmDialog"] = "1-1"
	tNewGodOfGamblers_GrabRedEnvelopes[1000]["MainDialog"] = "2-1"
	tNewGodOfGamblers_GrabRedEnvelopes[1000]["NoMoneyDialog"] = "3-1"
	tNewGodOfGamblers_GrabRedEnvelopes[1000000] = {}
	tNewGodOfGamblers_GrabRedEnvelopes[1000000]["NpcId"] = 23100
	tNewGodOfGamblers_GrabRedEnvelopes[1000000]["PersonNum"] = 5
	tNewGodOfGamblers_GrabRedEnvelopes[1000000]["JackPot"] = 1000000
	tNewGodOfGamblers_GrabRedEnvelopes[1000000]["GlobalId"] = 52641
	tNewGodOfGamblers_GrabRedEnvelopes[1000000]["Pos"] = 0
	tNewGodOfGamblers_GrabRedEnvelopes[1000000]["MaxTime"] = 300 -- 单位：秒
	tNewGodOfGamblers_GrabRedEnvelopes[1000000]["RedEnvelopes"] = {}
	tNewGodOfGamblers_GrabRedEnvelopes[1000000]["BeginTime"] = 0
	tNewGodOfGamblers_GrabRedEnvelopes[1000000]["ConfirmDialog"] = "1-1"
	tNewGodOfGamblers_GrabRedEnvelopes[1000000]["MainDialog"] = "2-1"
	tNewGodOfGamblers_GrabRedEnvelopes[1000000]["NoMoneyDialog"] = "3-1"
	tNewGodOfGamblers_GrabRedEnvelopes[10000000] = {}
	tNewGodOfGamblers_GrabRedEnvelopes[10000000]["PersonNum"] = 10
	tNewGodOfGamblers_GrabRedEnvelopes[10000000]["NpcId"] = 23101
	tNewGodOfGamblers_GrabRedEnvelopes[10000000]["JackPot"] = 10000000
	tNewGodOfGamblers_GrabRedEnvelopes[10000000]["GlobalId"] = 52641
	tNewGodOfGamblers_GrabRedEnvelopes[10000000]["Pos"] = 1
	tNewGodOfGamblers_GrabRedEnvelopes[10000000]["MaxTime"] = 300 -- 单位：秒
	tNewGodOfGamblers_GrabRedEnvelopes[10000000]["RedEnvelopes"] = {}
	tNewGodOfGamblers_GrabRedEnvelopes[10000000]["BeginTime"] = 0
	tNewGodOfGamblers_GrabRedEnvelopes[10000000]["ConfirmDialog"] = "1-1"
	tNewGodOfGamblers_GrabRedEnvelopes[10000000]["MainDialog"] = "2-1"
	tNewGodOfGamblers_GrabRedEnvelopes[10000000]["NoMoneyDialog"] = "3-1"
	
local tNewGodOfGamblers_AwardItem = {}
	tNewGodOfGamblers_AwardItem["DoubleLose"] = {}
	tNewGodOfGamblers_AwardItem["DoubleLose"]["RewardItem"] = {}
	tNewGodOfGamblers_AwardItem["DoubleLose"]["RewardItem"][1] = {}			
	tNewGodOfGamblers_AwardItem["DoubleLose"]["RewardItem"][1]["Id"] = 3303926	
	tNewGodOfGamblers_AwardItem["DoubleLose"]["RewardItem"][1]["Attr"] = "0 1"
	tNewGodOfGamblers_AwardItem["DoubleLose"]["RewardEffect"] = {}
	tNewGodOfGamblers_AwardItem["DoubleLose"]["RewardEffect"]["SzObj"] = "self" 
	tNewGodOfGamblers_AwardItem["DoubleLose"]["RewardEffect"]["Effect"] = "angelwing"
	tNewGodOfGamblers_AwardItem["DoubleLose"]["LogId"] = 12001066
	tNewGodOfGamblers_AwardItem["DoubleLose"]["LogStep"] = "2"

--	-- 怪物对战
--	local tNewGodOfGamblers_MonsterFight = {}
--		tNewGodOfGamblers_MonsterFight["Monster"] = {}
--		tNewGodOfGamblers_MonsterFight["Monster"][1] = {}
--		tNewGodOfGamblers_MonsterFight["Monster"][1]["GlobalId"] = X21493
--		tNewGodOfGamblers_MonsterFight["Monster"][1]["MonsterId"] = {}
--		tNewGodOfGamblers_MonsterFight["Monster"][1]["MonsterId"][1] = 
--		tNewGodOfGamblers_MonsterFight["Monster"][1]["MonsterId"][2] = 
--		tNewGodOfGamblers_MonsterFight["Monster"][1]["VictoryPos"] = 0
--		tNewGodOfGamblers_MonsterFight["Monster"][1]["DefeatPos"] = 1
--		tNewGodOfGamblers_MonsterFight["Monster"][1]["TotalPos"] = 2
--		tNewGodOfGamblers_MonsterFight["Monster"][1]["ODDPos"] = 3
--		tNewGodOfGamblers_MonsterFight["Monster"][2] = {}
--		tNewGodOfGamblers_MonsterFight["Monster"][2]["GlobalId"] = X21494
--		tNewGodOfGamblers_MonsterFight["Monster"][2]["MonsterId"] = {}
--		tNewGodOfGamblers_MonsterFight["Monster"][2]["MonsterId"][1] = 
--		tNewGodOfGamblers_MonsterFight["Monster"][2]["MonsterId"][2] = 
--		tNewGodOfGamblers_MonsterFight["Monster"][2]["VictoryPos"] = 0
--		tNewGodOfGamblers_MonsterFight["Monster"][2]["DefeatPos"] = 1
--		tNewGodOfGamblers_MonsterFight["Monster"][2]["TotalPos"] = 2
--		tNewGodOfGamblers_MonsterFight["Monster"][2]["ODDPos"] = 3
--		tNewGodOfGamblers_MonsterFight["Monster"][3] = {}
--		tNewGodOfGamblers_MonsterFight["Monster"][3]["GlobalId"] = XXXXX3
--		tNewGodOfGamblers_MonsterFight["Monster"][3]["MonsterId"] = {}
--		tNewGodOfGamblers_MonsterFight["Monster"][3]["MonsterId"][1] = 
--		tNewGodOfGamblers_MonsterFight["Monster"][3]["MonsterId"][2] = 
--		tNewGodOfGamblers_MonsterFight["Monster"][3]["VictoryPos"] = 0
--		tNewGodOfGamblers_MonsterFight["Monster"][3]["DefeatPos"] = 1
--		tNewGodOfGamblers_MonsterFight["Monster"][3]["TotalPos"] = 2
--		tNewGodOfGamblers_MonsterFight["Monster"][3]["ODDPos"] = 3
--		tNewGodOfGamblers_MonsterFight["Monster"][4] = {}
--		tNewGodOfGamblers_MonsterFight["Monster"][4]["GlobalId"] = XXXXX4
--		tNewGodOfGamblers_MonsterFight["Monster"][4]["MonsterId"] = {}
--		tNewGodOfGamblers_MonsterFight["Monster"][4]["MonsterId"][1] = 
--		tNewGodOfGamblers_MonsterFight["Monster"][4]["MonsterId"][2] = 
--		tNewGodOfGamblers_MonsterFight["Monster"][4]["VictoryPos"] = 0
--		tNewGodOfGamblers_MonsterFight["Monster"][4]["DefeatPos"] = 1
--		tNewGodOfGamblers_MonsterFight["Monster"][4]["TotalPos"] = 2
--		tNewGodOfGamblers_MonsterFight["Monster"][4]["ODDPos"] = 3
--		tNewGodOfGamblers_MonsterFight["Monster"][5] = {}
--		tNewGodOfGamblers_MonsterFight["Monster"][5]["GlobalId"] = XXXXX5
--		tNewGodOfGamblers_MonsterFight["Monster"][5]["MonsterId"] = {}
--		tNewGodOfGamblers_MonsterFight["Monster"][5]["MonsterId"][1] = 
--		tNewGodOfGamblers_MonsterFight["Monster"][5]["MonsterId"][2] = 
--		tNewGodOfGamblers_MonsterFight["Monster"][5]["VictoryPos"] = 0
--		tNewGodOfGamblers_MonsterFight["Monster"][5]["DefeatPos"] = 1
--		tNewGodOfGamblers_MonsterFight["Monster"][5]["TotalPos"] = 2
--		tNewGodOfGamblers_MonsterFight["Monster"][5]["ODDPos"] = 3
--		tNewGodOfGamblers_MonsterFight["Monster"][6] = {}
--		tNewGodOfGamblers_MonsterFight["Monster"][6]["GlobalId"] = XXXXX6
--		tNewGodOfGamblers_MonsterFight["Monster"][6]["MonsterId"] = {}
--		tNewGodOfGamblers_MonsterFight["Monster"][6]["MonsterId"][1] = 
--		tNewGodOfGamblers_MonsterFight["Monster"][6]["MonsterId"][2] = 
--		tNewGodOfGamblers_MonsterFight["Monster"][6]["VictoryPos"] = 0
--		tNewGodOfGamblers_MonsterFight["Monster"][6]["DefeatPos"] = 1
--		tNewGodOfGamblers_MonsterFight["Monster"][6]["TotalPos"] = 2
--		tNewGodOfGamblers_MonsterFight["Monster"][6]["ODDPos"] = 3
--		tNewGodOfGamblers_MonsterFight["Fight"] = {}
--		tNewGodOfGamblers_MonsterFight["Fight"][1] = {}
--		tNewGodOfGamblers_MonsterFight["Fight"][1]["GlobalId"] = XXXXX7
--		tNewGodOfGamblers_MonsterFight["Fight"][1]["StatusPos"] = 0 -- 0未开赛 1押注 2开赛（停止押注） 3结束
--		tNewGodOfGamblers_MonsterFight["Fight"][1]["MonsterAPos"] = 1
--		tNewGodOfGamblers_MonsterFight["Fight"][1]["MonsterBPos"] = 2
--		tNewGodOfGamblers_MonsterFight["Fight"][1]["MonsterWinPos"] = 3
--		tNewGodOfGamblers_MonsterFight["Fight"][1]["InGamblingTimePos"] = 4
--		tNewGodOfGamblers_MonsterFight["Fight"][1]["FightNumPos"] = 5
--		tNewGodOfGamblers_MonsterFight["Fight"][1]["ODDAStrPos"] = 0
--		tNewGodOfGamblers_MonsterFight["Fight"][1]["ODDBStrPos"] = 1
--		tNewGodOfGamblers_MonsterFight["GameMap"] = {}
--		tNewGodOfGamblers_MonsterFight["GameMap"][1] = {}
--		tNewGodOfGamblers_MonsterFight["GameMap"][1]["MapId"] = 21493
--		tNewGodOfGamblers_MonsterFight["GameMap"][1]["PosX"] = XX -- 0未开赛 1押注 2开赛（停止押注） 3结束
--		tNewGodOfGamblers_MonsterFight["GameMap"][1]["PosY"] = XX
--		tNewGodOfGamblers_MonsterFight["GameMap"][1]["PosCX"] = 3
--		tNewGodOfGamblers_MonsterFight["GameMap"][1]["PosCY"] = 3
	
------------------------------------------------------------------------------------------------------
-- 取出进度的判断-- 灵珠
-- 参数1	NPCID
-- 参数2	玩家要取出的总进度
function NewGodOfGamblers_UpperLimit(nNpcId, nChgProgress)
	local nUserId = Get_UserId()
	
	local nGlobalId = tNewGodOfGamblers_Cont["Global"]["Id"]
	local nGlobalNowProgress = Get_SysDynaGlobalData0(nGlobalId)
	
	if nChgProgress < 0 then
		if nGlobalNowProgress < math.abs(nChgProgress) then
			Sys_MsgBox(tNewGodOfGamblers_Text["Talk"]["EmptyBet"])
			return false
		end
	end
	
	-- 计算玩家取出进度后的剩余进度，存入global
	local nChgGlobalProgress = nGlobalNowProgress + nChgProgress
	Sys_SetSynaGlobalData0(nGlobalId, nChgGlobalProgress)
	return true
end

--判断时间
function NewGodOfGamblers_JudgeTime()
	for k,v in pairs(tNewGodOfGamblers_Cont["GrabRedEnvelopesDayTime"]) do
		if Sys_ChkDayTime(v) then
			return true
		end
	end
	
	return false
end

-- 判断等级
function NewGodOfGamblers_JudgeLevelAndMetem()
	local nUserId = Get_UserId()
	local nLevel = tNewGodOfGamblers_Cont["Level"]
	local nMetem = tNewGodOfGamblers_Cont["Metem"]
	if User_JudgeLevelAndMetempsychosis(nLevel,nMetem,nUserId) then
		return true
	else
		return false
	end
end

-- 判断地图
function NewGodOfGamblers_JudgeMap(sIndex)
	local nUserId = Get_UserId()
	local nUserMapId = Get_UserMapId(nUserId)
	if Get_MapName(nUserMapId) == Get_MapName(tNewGodOfGamblers_Cont[sIndex]) then
		return true
	else
		return false
	end
end

-- 寻路
function NewGodOfGamblers_FindNpc(nNpcId)
	local nUserId = Get_UserId()
	local nMapId = Get_NpcMapID(nNpcId)
	local nNowMapId = Get_UserMapId(nUserId)
	if (nMapId == nNowMapId) or (Get_MapName(nMapId) == Get_MapName(nNowMapId)) then
		local nPosX = Get_NpcPositionX(nNpcId)
		local nPosY = Get_NpcPositionY(nNpcId)
		
		Sys_GotoSomeWhere(nPosX,nPosY,nNowMapId,nNpcId,nUserId)
	end
end

-- 超链接
function NewGodOfGamblers_SuperLink(nIndex)
	local nUserId = Get_UserId()
	local nMapId = 0
	local nPosX = 0
	local nPosY = 0
	local nNpcId = 0
	
	if tNewGodOfGamblers_SuperLink[nIndex] ~= nil then
		nMapId = tNewGodOfGamblers_SuperLink[nIndex]["MapId"]
		nPosX = tNewGodOfGamblers_SuperLink[nIndex]["PosX"]
		nPosY = tNewGodOfGamblers_SuperLink[nIndex]["PosY"]
	else
		nMapId = Get_NpcMapID(nIndex)
		nPosX = Get_NpcPositionX(nIndex)
		nPosY = Get_NpcPositionY(nIndex)
		nNpcId = nIndex
	end
	
	if Get_UserMapId(nUserId) == nMapId then
		local sFunc = string.format("Sys_GotoSomeWhere</N>%d</N>%d</N>%d</N>%d</N>%d",nPosX,nPosY,nMapId,nNpcId,nUserId)
		local sFailFunc = string.format("NewGodOfGamblers_SuperLinkNotInDragon</N>%d",nIndex)
		local sText = tNewGodOfGamblers_Text["MsgBox"]["SuperLinkInDragon"][nIndex] or tNewGodOfGamblers_Text["MsgBox"]["SuperLinkInDragon"][1]
		Sys_MsgBox(sText,sFunc,sFailFunc,nUserId)
	else
		Sys_MsgBox(string.format(tNewGodOfGamblers_Text["MsgBox"]["SuperLinkNotInDragon"],nPosX,nPosY),nil,nil,nUserId)
	end
end

function NewGodOfGamblers_SuperLinkNotInDragon(nIndex)
	local nUserId = Get_UserId()
	local nPosX = Get_NpcPositionX(nIndex)
		local nPosY = Get_NpcPositionY(nIndex)
	Sys_MsgBox(string.format(tNewGodOfGamblers_Text["MsgBox"]["SuperLinkNotInDragon"],nPosX,nPosY),nil,nil,nUserId)
end

-- stc操作
function NewGodOfGamblers_Stc(nUserId,nIndex,nFunc,nData)
	local nEvent  = tNewGodOfGamblers_Stc[nIndex]["EventType"] 
	local nType = tNewGodOfGamblers_Stc[nIndex]["DataType"] 
	local nLimit = tNewGodOfGamblers_Stc[nIndex]["Limit"] 
	local nSet = tNewGodOfGamblers_Stc[nIndex]["Set"] 
	local tClear = tNewGodOfGamblers_Stc[nIndex]["Clear"] 
	-- 隔（天）处理
	if tClear ~= nil then
		local nDelay = tClear["Delay"] or 1
		local nTimeType = tClear["TimeType"] or 4
		if Task_StcInterval(nEvent,nType,nDelay,nTimeType,nUserId) then
			Task_SetStatistic(nEvent,nType,0,1,nUserId)
			Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		end
	end
	local nNowData = Get_UserStatisticValue(nEvent,nType,nUserId)
	if nFunc == 1 then
		return true,nNowData
	end
	-- 上限处理
	if nLimit ~= nil then
		if nNowData >= nLimit then
			return false
		end
	end
	if nFunc == 2 then
		local nNewData = nNowData + nData
		if nSet ~= nil then
			nNewData = nData
		end
		if nNewData < 0 then
			nNewData = 0 
		end
		Task_SetStatistic(nEvent,nType,nNewData,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		return true
	end
end

-- 发邮件操作
function NewGodOfGamblers_SendMail(nLevel,nReturnMoney,nUserId,nServerId)
	local nExistDay = tNewGodOfGamblers_Mail["ExistDay"]
	local sSender = tNewGodOfGamblers_Text["Mail"]["Sender"]
	local sTitle = tNewGodOfGamblers_Text["Mail"]["Title"][nLevel]
	-- local sContent = tNewGodOfGamblers_Text["Mail"]["Content"][nLevel]["Top"]
	local sContent = ""
	local nMinMoney = nLevel
	
	local sMinUserName = ""
	local nMinUserId = 0

	-- for i,v in pairs(tNewGodOfGamblers_GrabRedEnvelopes[nLevel]["RedEnvelopes"]) do
		-- if v["Money"] > nMaxMoney then
			-- nMaxMoney = v["Money"]
			-- sMaxUserName = v["UserName"]
			-- nMaxUserId = v["UserId"]
		-- end
		-- if v["Money"] <= nMinMoney then
			-- nMinMoney = v["Money"]
			-- sMinUserName = v["UserName"]
			-- nMinUserId = v["UserId"]
		-- end
	-- end
	local tRed = CommonFunc_Copy(tNewGodOfGamblers_GrabRedEnvelopes[nLevel]["RedEnvelopes"])
	local nTotalNum = #tRed
	for i = nTotalNum,1,-1 do
		for j = nTotalNum,1,-1 do
			if tRed[j]["Money"] > tRed[i]["Money"] then
				tRed[i],tRed[j] = tRed[j],tRed[i]
			end
		end
	end
	for i,v in pairs(tRed) do
		local sBlank = ""
		for j = 1,tNewGodOfGamblers_Cont["MailBlankNum"] - #v["UserName"] do
			sBlank = sBlank .. " "
		end
		sContent = sContent .. v["UserName"] .. sBlank .. v["Money"]
		if i == #tRed then
			sContent = sContent .. tNewGodOfGamblers_Text["Mail"]["Content"][nLevel]["Lose"]
		end
		sContent = sContent .. "\n"
	end
	local sMaxUserName = tRed[1]["UserName"]
	local nMaxUserId = tRed[1]["UserId"]
	local nMaxMoney = tRed[1]["Money"]
	if nMaxUserId ~= 0 then
		Sys_SystemBroadcast(string.format(tNewGodOfGamblers_Text["BroadCast"]["GrabMax"][nLevel],sMaxUserName,nMaxMoney))
	end
	-- sContent = sContent .. string.format(tNewGodOfGamblers_Text["Mail"]["Content"][nLevel]["Bottom"],sMinUserName)
	
	if nLevel == 1000000 or nLevel == 10000000 then
		Sys_SendMail(nUserId,nReturnMoney,0,0,0,nExistDay,sSender,sTitle,sContent,nServerId)
		
		if nReturnMoney > 0 then
			Sys_SaveRwbRecordLog(string.format(tNewGodOfGamblers_Log["GrabRed"],nReturnMoney),nUserId)
		end
	else
		Sys_SendMail(nUserId,0,nReturnMoney,0,0,nExistDay,sSender,sTitle,sContent,nServerId)
		
		if nReturnMoney > 0 then
			Sys_GetEMoneyBuyLog("EMoney",nReturnMoney,tNewGodOfGamblers_ELog["RedBagReturn"][nLevel],nUserId)
		end
	end
end

-- 时间转文字
function NewGodOfGamblers_TimeToText(sText,sTime)
	local sBeginYear,sBeginMonth,sBeginDay,_1,_2,sEndYear,sEndMonth,sEndDay,_3,_4 = CommonFunc_AnalysisActivityTime(sTime)
	-- local sBeginHour,sBeginMinute,sEndHour,sEndMinute = CommonFunc_AnalysisDayTime(sDayTime)

	-- local sNewText = string.format(sText,sBeginMonth,sBeginDay,sEndMonth,sEndDay,sBeginHour,sBeginMinute,sEndHour,sEndMinute)
	local sNewText = string.format(sText,sBeginYear,sBeginMonth,sBeginDay,sEndYear,sEndMonth,sEndDay)
	return sNewText
end

-- 参加游戏
function NewGodOfGamblers_JoinGame(nNpcId,ndwDialog)
	local nUserId = Get_UserId()
	if Sys_ChkFullTime(tNewGodOfGamblers_Cont["ActivityTime"]) then
		User_OpenDialog(ndwDialog,nNpcId,nUserId)
	else
		Sys_MsgBox(tNewGodOfGamblers_Text["MsgBox"]["TimeOver"],nil,nil,nUserId)
	end
end

-- 打开兑换商店
function NewGodOfGamblers_OpenExchangeShop(nNpcId)
	local nUserId = Get_UserId()
	if Sys_ChkFullTime(tNewGodOfGamblers_Cont["ActivityTime"]) then
		User_OpenExchangeShop(nNpcId)
	else
		Sys_MsgBox(tNewGodOfGamblers_Text["MsgBox"]["TimeOver"],nil,nil,nUserId)
	end	
end

--打开天石商店
function NewGodOfGamblers_OpenEMoneyShop()
	local nUserId = Get_UserId()
	if Sys_ChkFullTime(tNewGodOfGamblers_Cont["ActivityTime"]) then
		User_OpenDialog()
	else
		Sys_MsgBox(tNewGodOfGamblers_Text["MsgBox"]["TimeOver"],nil,nil,nUserId)
	end	
end

-- 不在活动时间时传送出地图
function NewGodOfGamblers_TimeOverOut()
	if not Sys_ChkFullTime(tNewGodOfGamblers_Cont["ActivityTime"]) then
		NewGodOfGamblers_Chgmap("Out")
		return false
	else
		return true
	end
end

-- 地图传送
function NewGodOfGamblers_Chgmap(sIndex)
	local nUserId = Get_UserId()
	-- local nChkMapId = tNewGodOfGamblers_Chgmap["Out"]["ChkMapId"]
	local nMapId = tNewGodOfGamblers_Chgmap["Out"]["MapId"]
	local nPosX = tNewGodOfGamblers_Chgmap["Out"]["PosX"] 
	local nPosY = tNewGodOfGamblers_Chgmap["Out"]["PosY"] 
	-- if Get_UserMapId(nUserId) ~= nChkMapId then
		-- return false
	-- end
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,5,5,1,nUserId)
end

-- 进入副本
function NewGodOfGamblers_EnterInstance()
	local nInstanceId = tNewGodOfGamblers_Cont["InstanceId"]
	local nUserId = Get_UserId()
	User_EnterInstance(nInstanceId, 0, 0, 0, nUserId)
end

-- 押注对白指向
function NewGodOfGamblers_PointChipIn(nNpcId,sText,sOptionFunc,sLink,nBetType,nStakeType,nItemtypeId)
	local sItemtypeName = Get_ItemtypeName(nItemtypeId)
	local sOptionFunc1 = sOptionFunc .. 1
	local sOptionFunc2 = sOptionFunc .. 2
	local sOptionFunc3 = sOptionFunc .. 3
	tNpcGossip[nNpcId][sText] = string.format(tNewGodOfGamblers_Text[nNpcId][sText],sItemtypeName)
	tNpcGossip[nNpcId][sOptionFunc1] = string.format("NewGodOfGamblers_DoubleBet_ChipInByChoose</N>%d</N>%d</N>%d</N>%d</N>%d",nNpcId,nBetType,nStakeType,nItemtypeId,1)
	tNpcGossip[nNpcId][sOptionFunc2] = string.format("NewGodOfGamblers_DoubleBet_ChipInByChoose</N>%d</N>%d</N>%d</N>%d</N>%d",nNpcId,nBetType,nStakeType,nItemtypeId,5)
	tNpcGossip[nNpcId][sOptionFunc3] = string.format("NewGodOfGamblers_DoubleBet_ChipInByChoose</N>%d</N>%d</N>%d</N>%d",nNpcId,nBetType,nStakeType,nItemtypeId)
	LinkNpcGossipFunc_New(nNpcId,sLink)
end

-- 取回对白指向
function NewGodOfGamblers_PointReturn(nNpcId,sText,sOptionFunc,sLink,nBetType,nStakeType,nItemtypeId)
	local sItemtypeName = Get_ItemtypeName(nItemtypeId)
	local sOptionFunc1 = sOptionFunc .. 1
	local sOptionFunc2 = sOptionFunc .. 2
	local sOptionFunc3 = sOptionFunc .. 3
	tNpcGossip[nNpcId][sText] = string.format(tNewGodOfGamblers_Text[nNpcId][sText],sItemtypeName)
	tNpcGossip[nNpcId][sOptionFunc1] = string.format("NewGodOfGamblers_DoubleBet_ReturnByChoose</N>%d</N>%d</N>%d</N>%d</N>%d",nNpcId,nBetType,nStakeType,nItemtypeId,1)
	tNpcGossip[nNpcId][sOptionFunc2] = string.format("NewGodOfGamblers_DoubleBet_ReturnByChoose</N>%d</N>%d</N>%d</N>%d</N>%d",nNpcId,nBetType,nStakeType,nItemtypeId,5)
	tNpcGossip[nNpcId][sOptionFunc3] = string.format("NewGodOfGamblers_DoubleBet_ReturnByChoose</N>%d</N>%d</N>%d</N>%d",nNpcId,nBetType,nStakeType,nItemtypeId)
	LinkNpcGossipFunc_New(nNpcId,sLink)
end

-- 押注对白
function NewGodOfGamblers_DoubleBet_ChipInDialog(nNpcId,nBetType,nStakeType)
	if not NewGodOfGamblers_TimeOverOut() then
		return
	end
	if not NewGodOfGamblers_JudgeMap("ZhuanpanMapId") then
		return
	end
	local nUserId = Get_UserId()
	local nTimerStc = tNewGodOfGamblers_DoubleBetRate["Stc"]
	local bFlag,nData = NewGodOfGamblers_Stc(nUserId,nTimerStc,1)
	if nData >= 1 then
		return false
	end
	local nStc = tNewGodOfGamblers_DoubleBet[nBetType][nStakeType]["Stc"]
	local nType = tNewGodOfGamblers_DoubleBet[nBetType][nStakeType]["Stc"]	
	local nMax = tNewGodOfGamblers_DoubleBet[nBetType][nStakeType]["Max"]	
	local nMin = tNewGodOfGamblers_DoubleBet[nBetType][nStakeType]["Min"]
	local bFlag,nNowStake = NewGodOfGamblers_Stc(nUserId,nStc,1)
	if nType == 1 or nType == 2 or nType == 3 then
		local sOptEditText = tNewGodOfGamblers_Text[nNpcId]["OptEditText211"]
		local nOptEditLen = tNewGodOfGamblers_Text[nNpcId]["OptEditLen211"]
		local sOptEditFunc = string.format("NewGodOfGamblers_DoubleBet_ChipInByInput</N>%d</N>%d</N>%d",nNpcId,nBetType,nStakeType)
		local sOptionFunc211 = string.format("</F>NewGodOfGamblers_DoubleBet_ChipInByInput</N>%d</N>%d</N>%d</N>%d",nNpcId,nBetType,nStakeType,tNewGodOfGamblers_ChipInOption[nBetType][1])
		local sOptionFunc212 = string.format("</F>NewGodOfGamblers_DoubleBet_ChipInByInput</N>%d</N>%d</N>%d</N>%d",nNpcId,nBetType,nStakeType,tNewGodOfGamblers_ChipInOption[nBetType][2])
		Sys_DialogText(string.format(tNewGodOfGamblers_Text[nNpcId]["Text211"],nNowStake))
		Sys_DialogText(string.format(tNewGodOfGamblers_Text[nNpcId]["Text212"],nMin,nMax))
		-- Sys_DialogText(tNewGodOfGamblers_Text[nNpcId]["Text213"])
		-- Sys_DialogText(string.format(tNewGodOfGamblers_Text[nNpcId]["Text214"],nNowStake))
		-- Sys_DialogText(tNewGodOfGamblers_Text[nNpcId]["Text215"])
		-- Sys_DialogText(tNewGodOfGamblers_Text[nNpcId]["Text216"])
		Sys_DialogOptEdit(sOptEditText,nOptEditLen,sOptEditFunc)
		Sys_DialogOption(tNewGodOfGamblers_Text[nNpcId]["Option211"],sOptionFunc211)
		Sys_DialogOption(" ","")
		Sys_DialogOption(tNewGodOfGamblers_Text[nNpcId]["Option212"],sOptionFunc212)
		
		
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
	else
		LinkNpcGossipFunc_New(nNpcId,"2-1")
	end
end

-- 取回对白
function NewGodOfGamblers_DoubleBet_ReturnDialog(nNpcId,nBetType,nStakeType)
	if not NewGodOfGamblers_TimeOverOut() then
		return
	end
	if not NewGodOfGamblers_JudgeMap("ZhuanpanMapId") then
		return
	end
	local nUserId = Get_UserId()
	local nTimerStc = tNewGodOfGamblers_DoubleBetRate["Stc"]
	local bFlag,nData = NewGodOfGamblers_Stc(nUserId,nTimerStc,1)
	if nData >= 1 then
		return false
	end
	local nStc = tNewGodOfGamblers_DoubleBet[nBetType][nStakeType]["Stc"]
	local nType = tNewGodOfGamblers_DoubleBet[nBetType][nStakeType]["Stc"]	
	
	local bFlag,nNowStake = NewGodOfGamblers_Stc(nUserId,nStc,1)
	if nType == 1 or nType == 2 or nType == 3 then
		local sOptEditText = tNewGodOfGamblers_Text[nNpcId]["OptEditText311"]
		local nOptEditLen = tNewGodOfGamblers_Text[nNpcId]["OptEditLen311"]
		local sOptEditFunc = string.format("NewGodOfGamblers_DoubleBet_ReturnByInput</N>%d</N>%d</N>%d",nNpcId,nBetType,nStakeType)
		local sOptionFunc = string.format("</F>NewGodOfGamblers_DoubleBet_ReturnByInput</N>%d</N>%d</N>%d</N>%d",nNpcId,nBetType,nStakeType,1)
		Sys_DialogText(string.format(tNewGodOfGamblers_Text[nNpcId]["Text311"],nNowStake))
		-- Sys_DialogText(tNewGodOfGamblers_Text[nNpcId]["Text312"])
		-- Sys_DialogText(tNewGodOfGamblers_Text[nNpcId]["Text313"])
		-- Sys_DialogText(string.format(tNewGodOfGamblers_Text[nNpcId]["Text314"],nNowStake))
		-- Sys_DialogText(tNewGodOfGamblers_Text[nNpcId]["Text315"])
		Sys_DialogOptEdit(sOptEditText,nOptEditLen,sOptEditFunc)
		Sys_DialogOption(tNewGodOfGamblers_Text[nNpcId]["Option311"],sOptionFunc)
		
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
	else
		LinkNpcGossipFunc_New(nNpcId,"3-1")
	end
end

---- 趣味区 翻倍赌
-- 押注/加注
function NewGodOfGamblers_DoubleBet_ChipIn(nNpcId,nBetType,nStakeType)
	if not NewGodOfGamblers_TimeOverOut() then
		return
	end
	if not NewGodOfGamblers_JudgeMap("ZhuanpanMapId") then
		return
	end
	local nUserId = Get_UserId()
	local nTimerStc = tNewGodOfGamblers_DoubleBetRate["Stc"]
	local bFlag,nData = NewGodOfGamblers_Stc(nUserId,nTimerStc,1)
	if nData >= 1 then
		return false
	end
	local nStc = tNewGodOfGamblers_DoubleBet[nBetType][nStakeType]["Stc"]
	local nType = tNewGodOfGamblers_DoubleBet[nBetType][nStakeType]["Type"]
	local nMinStake = tNewGodOfGamblers_DoubleBet[nBetType][nStakeType]["Min"]
	local nMaxStake = tNewGodOfGamblers_DoubleBet[nBetType][nStakeType]["Max"]
	local bFlag,nNowStake = NewGodOfGamblers_Stc(nUserId,nStc,1)
	-- 押注数量达到封顶
	if nNowStake > nMaxStake then
		tNpcGossip[nNpcId]["Text411"] = string.format(tNewGodOfGamblers_Text[nNpcId]["Text411"],nMaxStake)
		LinkNpcGossipFunc_New(nNpcId,"4-1")
		return
	end
	NewGodOfGamblers_DoubleBet_ChipInDialog(nNpcId,nBetType,nStakeType)
end

-- 取回
function NewGodOfGamblers_DoubleBet_Return(nNpcId,nBetType,nStakeType)
	if not NewGodOfGamblers_TimeOverOut() then
		return
	end
	if not NewGodOfGamblers_JudgeMap("ZhuanpanMapId") then
		return
	end
	local nUserId = Get_UserId()
	local nTimerStc = tNewGodOfGamblers_DoubleBetRate["Stc"]
	local bFlag,nData = NewGodOfGamblers_Stc(nUserId,nTimerStc,1)
	if nData >= 1 then
		return false
	end
	local nStc = tNewGodOfGamblers_DoubleBet[nBetType][nStakeType]["Stc"]
	local nType = tNewGodOfGamblers_DoubleBet[nBetType][nStakeType]["Type"]
	local nMinStake = tNewGodOfGamblers_DoubleBet[nBetType][nStakeType]["Min"]
	local nReturnMinStake = tNewGodOfGamblers_DoubleBet[nBetType][nStakeType]["ReturnMin"]
	local nMaxStake = tNewGodOfGamblers_DoubleBet[nBetType][nStakeType]["Max"]
	local bFlag,nNowStake = NewGodOfGamblers_Stc(nUserId,nStc,1)
	-- 押注太少无法取回
	if nNowStake < nReturnMinStake then
		tNpcGossip[nNpcId]["Text511"] = string.format(tNewGodOfGamblers_Text[nNpcId]["Text511"],nMinStake)
		LinkNpcGossipFunc_New(nNpcId,"5-1")		
		return
	end
	NewGodOfGamblers_DoubleBet_ReturnDialog(nNpcId,nBetType,nStakeType)
end

-- 赠点天石/银两/气力赌
function NewGodOfGamblers_DoubleBet_ChipInByInput(nNpcId,nBetType,nStakeType,nNum)
	if not NewGodOfGamblers_TimeOverOut() then
		return
	end
	if not NewGodOfGamblers_JudgeMap("ZhuanpanMapId") then
		return
	end
	local nChipInNum = nNum or tonumber(Get_SysAcceptStr())
	if type(nChipInNum) ~= "number" or nChipInNum <= 0 or nChipInNum % 1 ~= 0 then
		LinkNpcGossipFunc_New(nNpcId,"6-1")	
		return
	end
	local nUserId = Get_UserId()
	local nTimerStc = tNewGodOfGamblers_DoubleBetRate["Stc"]
	local bFlag,nData = NewGodOfGamblers_Stc(nUserId,nTimerStc,1)
	if nData >= 1 then
		return false
	end
	local nStc = tNewGodOfGamblers_DoubleBet[nBetType][nStakeType]["Stc"]
	local nType = tNewGodOfGamblers_DoubleBet[nBetType][nStakeType]["Type"]
	local nMinStake = tNewGodOfGamblers_DoubleBet[nBetType][nStakeType]["Min"]
	local nMaxStake = tNewGodOfGamblers_DoubleBet[nBetType][nStakeType]["Max"]
	local bFlag,nNowStake = NewGodOfGamblers_Stc(nUserId,nStc,1)
	local nNewStake = nChipInNum + nNowStake
	if nNewStake > nMaxStake then
		tNpcGossip[nNpcId]["Text411"] = string.format(tNewGodOfGamblers_Text[nNpcId]["Text411"],nMaxStake)
		LinkNpcGossipFunc_New(nNpcId,"4-1")
		return
	end
	-- 
	local sFunc = string.format("NewGodOfGamblers_DoubleBet_ClickDouble</N>%d</N>%d",nNpcId,nBetType)
	local sFailFunc = string.format("LinkNpcGossipFunc_New</N>%d</S>%s",nNpcId,"1-1")
	if nType == 1 then
		if Get_UserMonoEMoney(nUserId) < nChipInNum then
			LinkNpcGossipFunc_New(nNpcId,"7-1")
			return
		end
		User_AddEMoneyMonoNew(-1 * nChipInNum,tNewGodOfGamblers_Cont["LogId"],nUserId)
		Sys_SaveActionFestivalLog(string.format(tNewGodOfGamblers_Log["DoubleBet"][3],3,nChipInNum),nUserId)
		NewGodOfGamblers_Stc(nUserId,nStc,2,nChipInNum)
		local sMsg = string.format(tNewGodOfGamblers_Text["MsgBox"]["ChipInEMoney"],nChipInNum)
		for i = 1,math.floor((tNewGodOfGamblers_Cont["MsgBlankNum"]-#sMsg)/2) do
			sMsg = " " .. sMsg
		end
		sMsg = sMsg .. tNewGodOfGamblers_Text["MsgBox"]["ChipInContinue"]
		Sys_MsgBox(sMsg,sFunc,sFailFunc,nUserId)
	elseif nType == 2 then
		if not User_CanPutMoney2Bag(-1 * nChipInNum,nUserId) then
			LinkNpcGossipFunc_New(nNpcId,"7-1")
			return
		end
		User_AddMoneyNew(-1 * nChipInNum,tNewGodOfGamblers_Cont["LogId"],nUserId)
		Sys_SaveActionFestivalLog(string.format(tNewGodOfGamblers_Log["DoubleBet"][3],2,nChipInNum),nUserId)
		NewGodOfGamblers_Stc(nUserId,nStc,2,nChipInNum)
		local sMsg = string.format(tNewGodOfGamblers_Text["MsgBox"]["ChipInMoney"],nChipInNum)
		for i = 1,math.floor((tNewGodOfGamblers_Cont["MsgBlankNum"]-#sMsg)/2) do
			sMsg = " " .. sMsg
		end
		sMsg = sMsg .. tNewGodOfGamblers_Text["MsgBox"]["ChipInContinue"]
		Sys_MsgBox(sMsg,sFunc,sFailFunc,nUserId)
	elseif nType == 3 then
		if Get_UserStrengthValue(nUserId) < nChipInNum then
			LinkNpcGossipFunc_New(nNpcId,"7-1")
			return
		end
		User_AddStrengthValue(-1 * nChipInNum,nUserId)
		Sys_SaveActionFestivalLog(string.format(tNewGodOfGamblers_Log["DoubleBet"][3],12,nChipInNum),nUserId)
		NewGodOfGamblers_Stc(nUserId,nStc,2,nChipInNum)
		local sMsg = string.format(tNewGodOfGamblers_Text["MsgBox"]["ChipInChiPoint"],nChipInNum)
		for i = 1,math.floor((tNewGodOfGamblers_Cont["MsgBlankNum"]-#sMsg)/2) do
			sMsg = " " .. sMsg
		end
		sMsg = sMsg .. tNewGodOfGamblers_Text["MsgBox"]["ChipInContinue"]
		Sys_MsgBox(sMsg,sFunc,sFailFunc,nUserId)
	end
end

-- 取回赠点天石/银两/气力
function NewGodOfGamblers_DoubleBet_ReturnByInput(nNpcId,nBetType,nStakeType,nAllReturn)
	if not NewGodOfGamblers_TimeOverOut() then
		return
	end
	if not NewGodOfGamblers_JudgeMap("ZhuanpanMapId") then
		return
	end
	local nUserId = Get_UserId()
	local nTimerStc = tNewGodOfGamblers_DoubleBetRate["Stc"]
	local bFlag,nData = NewGodOfGamblers_Stc(nUserId,nTimerStc,1)
	if nData >= 1 then
		return false
	end
	local nStc = tNewGodOfGamblers_DoubleBet[nBetType][nStakeType]["Stc"]
	local nType = tNewGodOfGamblers_DoubleBet[nBetType][nStakeType]["Type"]
	local bFlag,nNowStake = NewGodOfGamblers_Stc(nUserId,nStc,1)
	local sFunc = string.format("LinkNpcGossipFunc_New</N>%d</S>%s",nNpcId,"1-1")
	local nReturnNum = nNowStake
	if nAllReturn == nil then
		nReturnNum = tonumber(Get_SysAcceptStr())
		if type(nReturnNum) ~= "number" or nReturnNum <= 0 or nReturnNum % 1 ~= 0 then
			LinkNpcGossipFunc_New(nNpcId,"6-1")	
			return
		end
	end
	if nNowStake == 0 then
		LinkNpcGossipFunc_New(nNpcId,"5-1")
		return
	end

	if nReturnNum > nNowStake then
		tNpcGossip[nNpcId]["Text811"] = string.format(tNewGodOfGamblers_Text[nNpcId]["Text811"],nNowStake)
		LinkNpcGossipFunc_New(nNpcId,"8-1")
		return
	end
	local nTimerStc = tNewGodOfGamblers_DoubleBetRate["Stc"]
	local bFlag,nData = NewGodOfGamblers_Stc(nUserId,nTimerStc,1)
	if nData >= 1 then
		Sys_MsgBox(tNewGodOfGamblers_Text["MsgBox"]["CanNotReturn"],nil,nil,nUserId)
		return
	end
	if nType == 1 then
		if Get_UserMonoEMoney(nUserId) + nReturnNum > G_User_MaxEmoneyMono then
			LinkNpcGossipFunc_New(nNpcId,"9-1")
			return
		end
		User_AddEMoneyMonoNew(nReturnNum,tNewGodOfGamblers_Cont["LogId"],nUserId)
		Sys_SaveActionFestivalLog(string.format(tNewGodOfGamblers_Log["DoubleBet"][2],3,nReturnNum),nUserId)
		NewGodOfGamblers_Stc(nUserId,nStc,2,-1 * nReturnNum)
		Sys_MsgBox(string.format(tNewGodOfGamblers_Text["MsgBox"]["ReturnEMoney"],nReturnNum),sFunc,nil,nUserId)
	elseif nType == 2 then
		if not User_CanPutMoney2Bag(nReturnNum,nUserId) then
			LinkNpcGossipFunc_New(nNpcId,"9-1")
			return
		end
		User_AddMoneyNew(nReturnNum,tNewGodOfGamblers_Cont["LogId"],nUserId)
		Sys_SaveActionFestivalLog(string.format(tNewGodOfGamblers_Log["DoubleBet"][2],2,nReturnNum),nUserId)
		NewGodOfGamblers_Stc(nUserId,nStc,2,-1 * nReturnNum)
		Sys_MsgBox(string.format(tNewGodOfGamblers_Text["MsgBox"]["ReturnMoney"],nReturnNum),sFunc,nil,nUserId)
	elseif nType == 3 then
		User_AddStrengthValue(nReturnNum,nUserId)
		Sys_SaveActionFestivalLog(string.format(tNewGodOfGamblers_Log["DoubleBet"][2],12,nReturnNum),nUserId)
		NewGodOfGamblers_Stc(nUserId,nStc,2,-1 * nReturnNum)
		Sys_MsgBox(string.format(tNewGodOfGamblers_Text["MsgBox"]["ReturnChiPoint"],nReturnNum),sFunc,nil,nUserId)
	end
	LinkNpcGossipFunc_New(nNpcId,"1-1")
end

-- 精粹/赤炼石/星陨石/灵珠赌
function NewGodOfGamblers_DoubleBet_ChipInByChoose(nNpcId,nBetType,nStakeType,nStakeItemId,nNum)
	if not NewGodOfGamblers_TimeOverOut() then
		return
	end
	if not NewGodOfGamblers_JudgeMap("ZhuanpanMapId") then
		return
	end
	local nUserId = Get_UserId()
	local nTimerStc = tNewGodOfGamblers_DoubleBetRate["Stc"]
	local bFlag,nData = NewGodOfGamblers_Stc(nUserId,nTimerStc,1)
	if nData >= 1 then
		return false
	end
	local bCanChipIn = false
	local sFunc = string.format("NewGodOfGamblers_DoubleBet_ClickDouble</N>%d</N>%d",nNpcId,nBetType)
	local sFailFunc = string.format("LinkNpcGossipFunc_New</N>%d</S>%s",nNpcId,"1-1")
	if nStakeType == nil then
		local tChipInNum = {}
		local tTotalAddStake = {}
		for i,v in pairs(tNewGodOfGamblers_DoubleBet[nBetType]) do
			tChipInNum[i] = {}
			tTotalAddStake[i] = 0
			local nStc = v["Stc"]
			local nType = v["Type"]
			local nMinStake = v["Min"]
			local nMaxStake = v["Max"]
			local nChkGift = v["ChkGift"]
			if nChkGift == nil then
				nChkGift = 1
			end
			for ii,vv in pairs(v["Stake"]) do
				local nChipInNum = Get_CountItemType(ii,0,nChkGift)
				if nChipInNum > 0 then
					tChipInNum[i][ii] = {}
					tChipInNum[i][ii]["Num"] = nChipInNum
					tChipInNum[i][ii]["AddStake"] = nChipInNum * vv
					tTotalAddStake[i] = tTotalAddStake[i] + nChipInNum * vv
				end
			end
		end
		if #tChipInNum <= 0 then
			LinkNpcGossipFunc_New(nNpcId,"7-1")
			return
		end
		local nAddNum = 0
		for i,v in pairs(tChipInNum) do
			local nStc = tNewGodOfGamblers_DoubleBet[nBetType][i]["Stc"]
			local nChkGift = tNewGodOfGamblers_DoubleBet[nBetType][i]["ChkGift"]
			local nMaxStake = tNewGodOfGamblers_DoubleBet[nBetType][i]["Max"]
			if nChkGift == nil then
				nChkGift = 1
			end
			local bFlag,nNowStake = NewGodOfGamblers_Stc(nUserId,nStc,1)
			local nNewStake = tTotalAddStake[i] + nNowStake
			if nNewStake <= nMaxStake then
				for ii,vv in pairs(v) do
					if Item_ChkMulItem(ii,ii,vv["Num"],nChkGift) and Item_DelMulItem(ii,ii,vv["Num"],nChkGift) then
						if nNpcId == 25176 then
							Sys_DecNosuchStatisticCount(370,ii,vv["Num"])
						end
						Sys_SaveActionFestivalLog(string.format(tNewGodOfGamblers_Log["DoubleBet"][3],ii,vv["Num"]),nUserId)
						NewGodOfGamblers_Stc(nUserId,nStc,2,vv["AddStake"])
						if nNpcId == 25176 then
							NewGodOfGamblers_UpperLimit(nNpcId, vv["AddStake"])
						end
						nAddNum = nAddNum + vv["AddStake"]
						bCanChipIn = true
					end
				end
			else
				tNpcGossip[nNpcId]["Text811"] = string.format(tNewGodOfGamblers_Text[nNpcId]["Text811"],nMaxStake)
				LinkNpcGossipFunc_New(nNpcId,"8-1")
				return
			end
		end
		if bCanChipIn then
			local sMsg = string.format(tNewGodOfGamblers_Text["MsgBox"]["ChipInSch"],nAddNum)
			for i = 1,math.floor((tNewGodOfGamblers_Cont["MsgBlankNum"]-#sMsg)/2) do
				sMsg = " " .. sMsg
			end
			sMsg = sMsg .. tNewGodOfGamblers_Text["MsgBox"]["ChipInContinue"]
			Sys_MsgBox(sMsg,sFunc,sFailFunc,nUserId)
		else
			-- Sys_MsgBox(tNewGodOfGamblers_Text["MsgBox"]["NoChipIn"],sFunc,nil,nUserId)
			LinkNpcGossipFunc_New(nNpcId,"7-1")
		end
	else
		local nStc = tNewGodOfGamblers_DoubleBet[nBetType][nStakeType]["Stc"]
		local nType = tNewGodOfGamblers_DoubleBet[nBetType][nStakeType]["Type"]
		local nMinStake = tNewGodOfGamblers_DoubleBet[nBetType][nStakeType]["Min"]
		local nMaxStake = tNewGodOfGamblers_DoubleBet[nBetType][nStakeType]["Max"]
		local nChkGift = tNewGodOfGamblers_DoubleBet[nBetType][nStakeType]["ChkGift"]
		if nChkGift == nil then
			nChkGift = 1
		end
		if nStakeItemId ~= nil then
			local nChipInNum = Get_CountItemType(nStakeItemId,0,nChkGift)
			local bCanChipIn = false
			if nNum ~= nil then
				if nChipInNum < nNum then
					LinkNpcGossipFunc_New(nNpcId,"7-1")
					return
				else
					nChipInNum = nNum
				end
			end
			if nChipInNum <= 0 then
				LinkNpcGossipFunc_New(nNpcId,"7-1")
				return
			end
			local nPerStake = tNewGodOfGamblers_DoubleBet[nBetType][nStakeType]["Stake"][nStakeItemId]
			local bFlag,nNowStake = NewGodOfGamblers_Stc(nUserId,nStc,1)
			local nNewStake = nPerStake * nChipInNum + nNowStake
			if nNewStake > nMaxStake then
				tNpcGossip[nNpcId]["Text811"] = string.format(tNewGodOfGamblers_Text[nNpcId]["Text811"],nMaxStake)
				LinkNpcGossipFunc_New(nNpcId,"8-1")
				return
			end
			-- 
			if Item_ChkMulItem(nStakeItemId,nStakeItemId,nChipInNum,nChkGift) and Item_DelMulItem(nStakeItemId,nStakeItemId,nChipInNum,nChkGift) then
				if nNpcId == 25176 then
					Sys_DecNosuchStatisticCount(370,nStakeItemId,nChipInNum)
				end
				Sys_SaveActionFestivalLog(string.format(tNewGodOfGamblers_Log["DoubleBet"][3],nStakeItemId,nChipInNum),nUserId)
				NewGodOfGamblers_Stc(nUserId,nStc,2,nPerStake * nChipInNum)
				if nNpcId == 25176 then
					NewGodOfGamblers_UpperLimit(nNpcId, nPerStake * nChipInNum)
				end
				bCanChipIn = true
				-- Sys_MsgBox(string.format(tNewGodOfGamblers_Text["MsgBox"]["ChipInSch"],nPerStake * nChipInNum),sFunc,nil,nUserId)
			end
			if bCanChipIn then
				local sMsg = string.format(tNewGodOfGamblers_Text["MsgBox"]["ChipInSch"],nPerStake * nChipInNum)
				for i = 1,math.floor((tNewGodOfGamblers_Cont["MsgBlankNum"]-#sMsg)/2) do
					sMsg = " " .. sMsg
				end
				sMsg = sMsg .. tNewGodOfGamblers_Text["MsgBox"]["ChipInContinue"]
				Sys_MsgBox(sMsg,sFunc,sFailFunc,nUserId)
			else
				-- Sys_MsgBox(tNewGodOfGamblers_Text["MsgBox"]["NoChipIn"],sFunc,nil,nUserId)
				LinkNpcGossipFunc_New(nNpcId,"7-1")
			end
		else
			local tChipInNum = {}
			local nTotalAddStake = 0
			local nAddNum = 0
			local bCanChipIn = false
			for i,v in pairs(tNewGodOfGamblers_DoubleBet[nBetType][nStakeType]["Stake"]) do
				local nChipInNum = Get_CountItemType(i,0,nChkGift)
				if nChipInNum > 0 then
					tChipInNum[i] = {}
					tChipInNum[i]["Num"] = nChipInNum
					tChipInNum[i]["AddStake"] = nChipInNum * v
					nTotalAddStake = nTotalAddStake + nChipInNum * v
					bCanChipIn = true
				end
			end
			if not bCanChipIn then
				LinkNpcGossipFunc_New(nNpcId,"7-1")
				return
			end
			local bFlag,nNowStake = NewGodOfGamblers_Stc(nUserId,nStc,1)
			local nNewStake = nTotalAddStake + nNowStake
			if nNewStake > nMaxStake then
				tNpcGossip[nNpcId]["Text811"] = string.format(tNewGodOfGamblers_Text[nNpcId]["Text811"],nMaxStake)
				LinkNpcGossipFunc_New(nNpcId,"8-1")
				return
			end 
			local bCanChipIn = false
			for i,v in pairs(tChipInNum) do
				if Item_ChkMulItem(i,i,v["Num"],nChkGift) and Item_DelMulItem(i,i,v["Num"],nChkGift) then
					if nNpcId == 25176 then
						Sys_DecNosuchStatisticCount(370,i,v["Num"])
					end
					Sys_SaveActionFestivalLog(string.format(tNewGodOfGamblers_Log["DoubleBet"][3],i,v["Num"]),nUserId)
					NewGodOfGamblers_Stc(nUserId,nStc,2,v["AddStake"])
					if nNpcId == 25176 then
						NewGodOfGamblers_UpperLimit(nNpcId, v["AddStake"])
					end
					nAddNum = nAddNum + v["AddStake"]
					bCanChipIn = true
				end
			end
			if bCanChipIn then
				local sMsg = string.format(tNewGodOfGamblers_Text["MsgBox"]["ChipInSch"],nAddNum)
				for i = 1,math.floor((tNewGodOfGamblers_Cont["MsgBlankNum"]-#sMsg)/2) do
					sMsg = " " .. sMsg
				end
				sMsg = sMsg .. tNewGodOfGamblers_Text["MsgBox"]["ChipInContinue"]
				Sys_MsgBox(sMsg,sFunc,sFailFunc,nUserId)
			else
				-- Sys_MsgBox(tNewGodOfGamblers_Text["MsgBox"]["NoChipIn"],sFunc,nil,nUserId)
				LinkNpcGossipFunc_New(nNpcId,"7-1")
			end
		end
	end
	-- LinkNpcGossipFunc_New(nNpcId,"1-1")
end
	
-- 取回精粹/赤炼石/星陨石/灵珠
function NewGodOfGamblers_DoubleBet_ReturnByChoose(nNpcId,nBetType,nStakeType,nStakeItemId,nNum)
	if not NewGodOfGamblers_TimeOverOut() then
		return
	end
	if not NewGodOfGamblers_JudgeMap("ZhuanpanMapId") then
		return
	end
	local nUserId = Get_UserId()
	local nTimerStc = tNewGodOfGamblers_DoubleBetRate["Stc"]
	local bFlag,nData = NewGodOfGamblers_Stc(nUserId,nTimerStc,1)
	if nData >= 1 then
		return false
	end
	local bHaveAward = false
	if nStakeType == nil then
		local nNewStake = {}
		tNewGodOfGamblers_DoubleBetReturn["MulMul"] = {}	
		for i,v in pairs(tNewGodOfGamblers_DoubleBet[nBetType]) do
			tNewGodOfGamblers_DoubleBetReturn["MulMul"][i] = {}	
			tNewGodOfGamblers_DoubleBetReturn["MulMul"][i]["RewardItem"] = {}	
			local nStc = v["Stc"]
			local nType = v["Type"]
			local nMinStake = v["Min"]
			local nMaxStake = v["Max"]
			local nChkGift = v["ChkGift"]
			local bFlag,nNowStake = NewGodOfGamblers_Stc(nUserId,nStc,1)
			if nChkGift == nil then
				nChkGift = 1
			end
			local nMonopoly = 0
			if nChkGift == 2 then
				nMonopoly = 3
			end
			nNewStake[i] = nNowStake
			for ii,vv in pairs(v["Reuturn"]) do
				local nPerStake = v["Stake"][vv]
				local nReturnNum = math.floor(nNewStake[i]/nPerStake)
				if nReturnNum > 0 then
					tNewGodOfGamblers_DoubleBetReturn["MulMul"][i]["RewardItem"][ii] = {}
					tNewGodOfGamblers_DoubleBetReturn["MulMul"][i]["RewardItem"][ii]["Id"] = vv
					tNewGodOfGamblers_DoubleBetReturn["MulMul"][i]["RewardItem"][ii]["Attr"] = string.format(tNewGodOfGamblers_DoubleBetReturn[vv]["CommonAttr"],nReturnNum,nMonopoly)
					nNewStake[i] = nNewStake[i] - nReturnNum * nPerStake
					bHaveAward = true
				end
			end
		end
		if not bHaveAward then
			LinkNpcGossipFunc_New(nNpcId,"5-1")
			return
		end
		local nTimerStc = tNewGodOfGamblers_DoubleBetRate["Stc"]
		local bFlag,nData = NewGodOfGamblers_Stc(nUserId,nTimerStc,1)
		if nData >= 1 then
			Sys_MsgBox(tNewGodOfGamblers_Text["MsgBox"]["CanNotReturn"],nil,nil,nUserId)
			return
		end
		local nSpace = 0
		for i,v in pairs(tNewGodOfGamblers_DoubleBetReturn["MulMul"]) do
			nSpace = nSpace + RewardTemplate_GetRewardSpace(v,nUserId)
		end
		if not User_CheckLeftSpace(nSpace,nUserId) then
			if nSpace > 40 then
				Sys_MsgBox(tNewGodOfGamblers_Text["MsgBox"]["NoSpace40"],nil,nil,nUserId)
			else
				Sys_MsgBox(string.format(tNewGodOfGamblers_Text["MsgBox"]["NoSpace"],nSpace),nil,nil,nUserId)
			end
			return
		end
		for i,v in pairs(nNewStake) do
			local nStc = tNewGodOfGamblers_DoubleBet[nBetType][i]["Stc"]
			local bFlag,nNowStake = NewGodOfGamblers_Stc(nUserId,nStc,1)
			if nNpcId == 25176 then
				if not NewGodOfGamblers_UpperLimit(nNpcId, v - nNowStake) then
					return
				end
			end
			NewGodOfGamblers_Stc(nUserId,nStc,2,v - nNowStake)
			RewardTemplate_UseItemAndMsg(tNewGodOfGamblers_DoubleBetReturn["MulMul"][i],nUserId)
			
			if nNpcId == 25176 then
				for kk, jj in pairs(tNewGodOfGamblers_DoubleBetReturn["MulMul"][i]["RewardItem"]) do
					Sys_IncNosuchStatisticCount(327, jj["Id"], tonumber(CommonFunc_GetItemNum(jj["Attr"])))
				end
			end
		end
	else
		local nStc = tNewGodOfGamblers_DoubleBet[nBetType][nStakeType]["Stc"]
		local nType = tNewGodOfGamblers_DoubleBet[nBetType][nStakeType]["Type"]
		local nMinStake = tNewGodOfGamblers_DoubleBet[nBetType][nStakeType]["Min"]
		local nMaxStake = tNewGodOfGamblers_DoubleBet[nBetType][nStakeType]["Max"]
		local nChkGift = tNewGodOfGamblers_DoubleBet[nBetType][nStakeType]["ChkGift"]
		local bFlag,nNowStake = NewGodOfGamblers_Stc(nUserId,nStc,1)
		if nChkGift == nil then
			nChkGift = 1
		end
		local nMonopoly = 0
		if nChkGift == 2 then
			nMonopoly = 3
		end
		if nStakeItemId ~= nil then
			local nRewardNum
			if nNum == nil then
				local nPerStake = tNewGodOfGamblers_DoubleBet[nBetType][nStakeType]["Stake"][nStakeItemId]
				nRewardNum = math.floor(nNowStake/nPerStake)
			else
				nRewardNum = nNum
			end
			local nReturnNum = tNewGodOfGamblers_DoubleBet[nBetType][nStakeType]["Stake"][nStakeItemId] * nRewardNum
			if (nReturnNum == 0) or (nReturnNum > nNowStake) then
				LinkNpcGossipFunc_New(nNpcId,"5-1")
				return
			end
			local nTimerStc = tNewGodOfGamblers_DoubleBetRate["Stc"]
			local bFlag,nData = NewGodOfGamblers_Stc(nUserId,nTimerStc,1)
			if nData >= 1 then
				Sys_MsgBox(tNewGodOfGamblers_Text["MsgBox"]["CanNotReturn"],nil,nil,nUserId)
				return
			end
			tNewGodOfGamblers_DoubleBetReturn[nStakeItemId]["RewardItem"][1]["Attr"] = string.format(tNewGodOfGamblers_DoubleBetReturn[nStakeItemId]["CommonAttr"],nRewardNum,nMonopoly)
			local nSpace = RewardTemplate_GetRewardSpace(tNewGodOfGamblers_DoubleBetReturn[nStakeItemId])
			if not User_CheckLeftSpace(nSpace,nUserId) then
				if nSpace > 40 then
					Sys_MsgBox(tNewGodOfGamblers_Text["MsgBox"]["NoSpace40"],nil,nil,nUserId)
				else
					Sys_MsgBox(string.format(tNewGodOfGamblers_Text["MsgBox"]["NoSpace"],nSpace),nil,nil,nUserId)
				end
				return
			end
			if nNpcId == 25176 then
				if not NewGodOfGamblers_UpperLimit(nNpcId, -1 * nReturnNum) then
					return
				end
			end
			NewGodOfGamblers_Stc(nUserId,nStc,2,-1 * nReturnNum)
			RewardTemplate_UseItemAndMsg(tNewGodOfGamblers_DoubleBetReturn[nStakeItemId],nUserId)
			
			if nNpcId == 25176 then
				Sys_IncNosuchStatisticCount(327, nStakeItemId, nRewardNum)
			end
		else
			local nNewStake = nNowStake
			tNewGodOfGamblers_DoubleBetReturn["Mul"]["RewardItem"] = {}	
			for i,v in pairs(tNewGodOfGamblers_DoubleBet[nBetType][nStakeType]["Reuturn"]) do
				local nPerStake = tNewGodOfGamblers_DoubleBet[nBetType][nStakeType]["Stake"][v]
				local nReturnNum = math.floor(nNewStake/nPerStake)
				if nReturnNum > 0 then
					tNewGodOfGamblers_DoubleBetReturn["Mul"]["RewardItem"][i] = {}
					tNewGodOfGamblers_DoubleBetReturn["Mul"]["RewardItem"][i]["Id"] = v
					tNewGodOfGamblers_DoubleBetReturn["Mul"]["RewardItem"][i]["Attr"] = string.format(tNewGodOfGamblers_DoubleBetReturn[v]["CommonAttr"],nReturnNum,nMonopoly)
					nNewStake = nNewStake - nReturnNum * nPerStake
					bHaveAward = true
				end
			end
			if not bHaveAward then
				LinkNpcGossipFunc_New(nNpcId,"5-1")
				return
			end
			local nTimerStc = tNewGodOfGamblers_DoubleBetRate["Stc"]
			local bFlag,nData = NewGodOfGamblers_Stc(nUserId,nTimerStc,1)
			if nData >= 1 then
				Sys_MsgBox(tNewGodOfGamblers_Text["MsgBox"]["CanNotReturn"],nil,nil,nUserId)
				return
			end
			local nSpace = RewardTemplate_GetRewardSpace(tNewGodOfGamblers_DoubleBetReturn["Mul"])
			if not User_CheckLeftSpace(nSpace,nUserId) then
				if nSpace > 40 then
					Sys_MsgBox(tNewGodOfGamblers_Text["MsgBox"]["NoSpace40"],nil,nil,nUserId)
				else
					Sys_MsgBox(string.format(tNewGodOfGamblers_Text["MsgBox"]["NoSpace"],nSpace),nil,nil,nUserId)
				end
				return
			end
			
			if nNpcId == 25176 then
				if nNewStake - nNowStake < 0 then
					if not NewGodOfGamblers_UpperLimit(nNpcId, nNewStake - nNowStake) then
						return
					end
				else
					if not NewGodOfGamblers_UpperLimit(nNpcId, -1 * (nNewStake - nNowStake)) then
						return
					end
				end
			end
			NewGodOfGamblers_Stc(nUserId,nStc,2,nNewStake - nNowStake)
			RewardTemplate_UseItemAndMsg(tNewGodOfGamblers_DoubleBetReturn["Mul"],nUserId)		
			if nNpcId == 25176 then
				for i, v in pairs(tNewGodOfGamblers_DoubleBetReturn["Mul"]["RewardItem"]) do
					Sys_IncNosuchStatisticCount(327, v["Id"], tonumber(CommonFunc_GetItemNum(v["Attr"])))
				end
			end
		end
	end
	LinkNpcGossipFunc_New(nNpcId,"1-1")
end

-- 试玩
function NewGodOfGamblers_DoubleBet_Try()
	if not NewGodOfGamblers_JudgeMap("ZhuanpanMapId") then
		return
	end
	local nUserId = Get_UserId()
	local nTimerStc = tNewGodOfGamblers_DoubleBetRate["Stc"]
	local nTimeDelay = tNewGodOfGamblers_DoubleBetRate["TimeDelay"]
	local nType = tNewGodOfGamblers_DoubleBetRate["Type"]
	local bFlag,nData = NewGodOfGamblers_Stc(nUserId,nTimerStc,1)
	if nData >= 1 then
		return
	end
	local flat,tRate = Probabil_RandomAward(tNewGodOfGamblers_DoubleBetRate,2) 
	local nRateIndex = tRate[1]["tAward"][1]["Rate"]
	local sEffect = tRate[1]["tAward"][1]["Effect"]
	local nTimeDelay = tNewGodOfGamblers_DoubleBetRate["TimeDelay"]
	local nType = tNewGodOfGamblers_DoubleBetRate["Type"]
	local sFunc = string.format("NewGodOfGamblers_DoubleBet_DoubleBeginTry</N>%d</N>%d",nRateIndex,nUserId)
	NewGodOfGamblers_Stc(nUserId,nTimerStc,2,1)
	-- User_EffectAdd("self",sEffect,nUserId)
	local nMapId = Get_UserMapId(nUserId)
	local nPosX = tNewGodOfGamblers_Cont["EffectPos"]["PosX"] 
	local nPosY = tNewGodOfGamblers_Cont["EffectPos"]["PosY"] 
	Map_Effect(nMapId,nPosX,nPosY,sEffect)
	User_SetTimer(nTimeDelay,sFunc,nType,nUserId)
end

-- 转盘
function NewGodOfGamblers_DoubleBet_ClickDouble(nNpcId,nBetType)
	if not NewGodOfGamblers_TimeOverOut() then
		return
	end
	if not NewGodOfGamblers_JudgeMap("ZhuanpanMapId") then
		return
	end
	local nUserId = Get_UserId()
	local nTimerStc = tNewGodOfGamblers_DoubleBetRate["Stc"]
	local bFlag,nData = NewGodOfGamblers_Stc(nUserId,nTimerStc,1)
	if nData >= 1 then
		LinkNpcGossipFunc_New(nNpcId,"10-1")
		return
	end
	
	if nNpcId == 25176 then
		local bFlag, nNowData = NewGodOfGamblers_Stc(nUserId, 16, 1)
		if nNowData < 10 then
			LinkNpcGossipFunc_New(nNpcId, "20-1")
			return
		end
	end
	
	-- local bCanDouble = false
	-- local bMax = false
	-- local nMax = 0
	-- local nMin = 0
	-- for i,v in pairs(tNewGodOfGamblers_DoubleBet[nBetType]) do
		-- local nStc = v["Stc"]
		-- local nMinStake = v["Min"]
		-- local nMaxStake = v["Max"]
		-- local bFlag,nNowStake = NewGodOfGamblers_Stc(nUserId,nStc,1)
		-- if (nNowStake ~= 0) and (nNowStake >= nMinStake) and (nNowStake <= nMaxStake) then
			-- bCanDouble = true
		-- elseif nNowStake > nMaxStake then
			-- bMax = true
			-- nMax = nMaxStake
		-- elseif nNowStake < nMinStake then
			-- nMin = nMinStake
		-- end
	-- end
	local tCanDouble = {}
	local tCannotDouble = {}
	local bMax = false
	local nMin = 0
	for i,v in pairs(tNewGodOfGamblers_DoubleBet[nBetType]) do
		local nStc = v["Stc"]
		local nMinStake = v["Min"]
		local nMaxStake = v["Max"]
		local bFlag,nNowStake = NewGodOfGamblers_Stc(nUserId,nStc,1) -- 返回进度值
		if (nNowStake >= nMinStake) and (nNowStake <= nMaxStake) then
			tCanDouble[i] = 1
		elseif nNowStake > nMaxStake then
			bMax = true
		elseif nNowStake < nMinStake then
			nMin = nMinStake
		end
	end

	if #tCanDouble <= 0 then
		if not bMax then
			local sMin = tostring(nMin)
			if nMin <= 0 then
				sMin = ""
			end
			tNpcGossip[nNpcId]["Text1111"] = string.format(tNewGodOfGamblers_Text[nNpcId]["Text1111"],sMin)
			LinkNpcGossipFunc_New(nNpcId,"11-1")
		else
			-- tNpcGossip[nNpcId]["Text811"] = string.format(tNewGodOfGamblers_Text[nNpcId]["Text811"],nMax)
			LinkNpcGossipFunc_New(nNpcId,"12-1")
		end
		return
	end
	
	local flat,tRate = Probabil_RandomAward(tNewGodOfGamblers_DoubleBetRate,1) 
	local nRateIndex = tRate[1]["tAward"][1]["Rate"]
	local sEffect = tRate[1]["tAward"][1]["Effect"]

	NewGodOfGamblers_Stc(nUserId,nTimerStc,2,1)
	local nRate = tNewGodOfGamblers_Cont["Rate"][nRateIndex]
	local nOldTotalStake = 0
	local nNewTotalStake = 0
	for i,v in pairs(tCanDouble) do
		local nStc = tNewGodOfGamblers_DoubleBet[nBetType][i]["Stc"]
		local bFlag,nNowStake = NewGodOfGamblers_Stc(nUserId,nStc,1)
		local nNewStake = math.floor(nNowStake * nRate)
		nOldTotalStake = nOldTotalStake + nNowStake
		nNewTotalStake = nNewTotalStake + nNewStake
		NewGodOfGamblers_Stc(nUserId,nStc,2,nNewStake - nNowStake)
	end
	
	local nMapId = Get_UserMapId(nUserId)
	local nPosX = tNewGodOfGamblers_Cont["EffectPos"]["PosX"] 
	local nPosY = tNewGodOfGamblers_Cont["EffectPos"]["PosY"] 
	Map_Effect(nMapId,nPosX,nPosY,sEffect)
	
	local nTimeDelay = tNewGodOfGamblers_DoubleBetRate["TimeDelay"]
	local nType = tNewGodOfGamblers_DoubleBetRate["Type"]
	local sFunc = string.format("NewGodOfGamblers_DoubleBet_DoubleBegin</N>%d</N>%d</N>%d</N>%d</N>%d</N>%d",nNpcId,nBetType,nRateIndex,nOldTotalStake,nNewTotalStake,nUserId)
	User_SetTimer(nTimeDelay,sFunc,nType,nUserId)
end

-- 转盘
function NewGodOfGamblers_DoubleBet_DoubleBegin(nNpcId,nBetType,nRateIndex,nOldTotalStake,nNewTotalStake,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	-- local tCanDouble = {}
	-- local tCannotDouble = {}
	-- local bMax = false
	-- local nMin = 0
	-- for i,v in pairs(tNewGodOfGamblers_DoubleBet[nBetType]) do
		-- local nStc = v["Stc"]
		-- local nMinStake = v["Min"]
		-- local nMaxStake = v["Max"]
		-- local bFlag,nNowStake = NewGodOfGamblers_Stc(nUserId,nStc,1)
		-- if (nNowStake >= nMinStake) and (nNowStake <= nMaxStake) then
			-- tCanDouble[i] = 1
		-- elseif nNowStake > nMaxStake then
			-- bMax = true
		-- elseif nNowStake < nMinStake then
			-- nMin = nMinStake
		-- end
	-- end
	-- if #tCanDouble <= 0 then
		-- if not bMax then
			-- local sMin = tostring(nMin)
			-- if nMin <= 0 then
				-- sMin = ""
			-- end
			-- tNpcGossip[nNpcId]["Text1111"] = string.format(tNewGodOfGamblers_Text[nNpcId]["Text1111"],sMin)
			-- LinkNpcGossipFunc_New(nNpcId,"11-1")
		-- else
			-- tNpcGossip[nNpcId]["Text811"] = string.format(tNewGodOfGamblers_Text[nNpcId]["Text811"],nMax)
			-- LinkNpcGossipFunc_New(nNpcId,"12-1")
		-- end
		-- return
	-- end
	if nNpcId == 25176 then
		local nNowData = nOldTotalStake
		if nNowData < 10 then
			LinkNpcGossipFunc_New(nNpcId, "20-1", nil, nil, nUserId)
			return
		end
	end
	local nRate = tNewGodOfGamblers_Cont["Rate"][nRateIndex]
	-- local nOldTotalStake = 0
	-- local nNewTotalStake = 0
	-- for i,v in pairs(tCanDouble) do
		-- local nStc = tNewGodOfGamblers_DoubleBet[nBetType][i]["Stc"]
		-- local bFlag,nNowStake = NewGodOfGamblers_Stc(nUserId,nStc,1)
		-- local nNewStake = math.floor(nNowStake * nRate)
		-- nOldTotalStake = nOldTotalStake + nNowStake
		-- nNewTotalStake = nNewTotalStake + nNewStake
		-- NewGodOfGamblers_Stc(nUserId,nStc,2,nNewStake - nNowStake)
	-- end
-- 倍数为0 
	if nRate == 0 and nOldTotalStake > 0 then
		RewardTemplate_Reward(tNewGodOfGamblers_AwardItem["DoubleLose"],nUserId)
	end
-- 对白
	local sFunc = ""
	if nRate ~= 0 then
		sFunc = string.format("NewGodOfGamblers_DoubleBet_ClickDouble</N>%d</N>%d",nNpcId,nBetType)
	elseif nBetType <= 3 then
		sFunc = string.format("NewGodOfGamblers_DoubleBet_ChipIn</N>%d</N>%d</N>1",nNpcId,nBetType)
	elseif nBetType > 3 then
		sFunc = string.format("LinkNpcGossipFunc_New</N>%d</S>%s",nNpcId,"2-1")
	end
		
	local sFailFunc = string.format("LinkNpcGossipFunc_New</N>%d</S>%s",nNpcId,"1-1")
	-- 首行
	local sText = ""
	local sTop = tNewGodOfGamblers_Text["MsgBox"]["Double"]["Top"]
	local sLeftBlank,sRightBlank = NewGodOfGamblers_Aligment(sTop,nBetType)
	sText = sText .. string.format(tNewGodOfGamblers_Text["MsgBox"]["Double"]["Text"][1],sLeftBlank,sTop,sRightBlank)
	-- 倍数
	local sRate = ""
	if nRate ~= 0 then
		sRate = string.format(tNewGodOfGamblers_Text["MsgBox"]["Double"]["Rate"],tostring(nRate))
	else
		sRate = tNewGodOfGamblers_Text["MsgBox"]["Double"]["Clear"]
	end
	local sLeftBlank,sRightBlank = NewGodOfGamblers_Aligment(sRate,nBetType)
	sText = sText .. string.format(tNewGodOfGamblers_Text["MsgBox"]["Double"]["Text"][2],sLeftBlank,sRate,sRightBlank)
	-- 结果
	local sResult = ""
	if nRate > 1 then
		sResult = string.format(tNewGodOfGamblers_Text["MsgBox"]["Double"]["Result"]["Win"][nBetType],nOldTotalStake,nNewTotalStake)
	elseif nRate == 1 then
		sResult = string.format(tNewGodOfGamblers_Text["MsgBox"]["Double"]["Result"]["Draw"][nBetType],nNewTotalStake)
	elseif nRate == 0 then
		sResult = tNewGodOfGamblers_Text["MsgBox"]["Double"]["Result"]["Lose"][nBetType]
	end
	local sLeftBlank,sRightBlank = NewGodOfGamblers_Aligment(sResult,nBetType)
	sText = sText .. string.format(tNewGodOfGamblers_Text["MsgBox"]["Double"]["Text"][3],sLeftBlank,sResult,sRightBlank)
	-- 继续
	local sContinue = ""
	if nRate ~= 0 then
		sContinue = tNewGodOfGamblers_Text["MsgBox"]["Double"]["Continue"]
	else
		sContinue = tNewGodOfGamblers_Text["MsgBox"]["Double"]["GotoChipIn"]
	end
	local sLeftBlank,sRightBlank = NewGodOfGamblers_Aligment(sContinue,nBetType)
	sText = sText .. string.format(tNewGodOfGamblers_Text["MsgBox"]["Double"]["Text"][4],sLeftBlank,sContinue,sRightBlank)
	-- 尾行
	-- tNpcGossip[nNpcId]["Text1316"] = tNewGodOfGamblers_Text["MsgBox"]["Double"]["Text"][5]
	Sys_MsgBox(sText,sFunc,sFailFunc,nUserId)
	User_TalkChannel2005(tNewGodOfGamblers_Text["Talk"]["FriendlyTip"],nUserId)
-- 全服公告
	if nRate == tNewGodOfGamblers_Cont["Rate"]["Max"] then
		local sUserName = Get_UserName(nUserId)
		Sys_SystemBroadcast(string.format(tNewGodOfGamblers_Text["BroadCast"]["DoubleWin"],sUserName))
	end
	Sys_SaveActionFestivalLog(string.format(tNewGodOfGamblers_Log["DoubleBet"][1],nRateIndex),nUserId)
end

-- 试玩转盘
function NewGodOfGamblers_DoubleBet_DoubleBeginTry(nRateIndex,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nRate = tNewGodOfGamblers_Cont["Rate"][nRateIndex]
-- 对白
	local sFunc = string.format("LinkNpcGossipFunc_New</N>%d</S>%s",tNewGodOfGamblers_Cont["ZhuanPanNpcId"],"1-1")
	local sFailFunc = string.format("LinkNpcGossipFunc_New</N>%d</S>%s",tNewGodOfGamblers_Cont["ZhuanPanNpcId"],"1-1")
	-- 首行
	local sText = ""
	local sTop = tNewGodOfGamblers_Text["MsgBox"]["DoubleTry"]["Top"]
	local sLeftBlank,sRightBlank = NewGodOfGamblers_Aligment(sTop,1)
	sText = sText .. string.format(tNewGodOfGamblers_Text["MsgBox"]["DoubleTry"]["Text"][1],sLeftBlank,sTop,sRightBlank)
	-- 倍数
	local sRate = ""
	if nRate ~= 0 then
		sRate = string.format(tNewGodOfGamblers_Text["MsgBox"]["DoubleTry"]["Rate"],tostring(nRate))
	else
		sRate = tNewGodOfGamblers_Text["MsgBox"]["DoubleTry"]["Clear"]
	end
	local sLeftBlank,sRightBlank = NewGodOfGamblers_Aligment(sRate,1)
	sText = sText .. string.format(tNewGodOfGamblers_Text["MsgBox"]["DoubleTry"]["Text"][2],sLeftBlank,sRate,sRightBlank)
	-- 结果
	local sResult = ""
	if nRate > 1 then
		sResult = tNewGodOfGamblers_Text["MsgBox"]["DoubleTry"]["Result"]["Win"][1]
	elseif nRate == 1 then
		sResult = tNewGodOfGamblers_Text["MsgBox"]["DoubleTry"]["Result"]["Draw"][1]
	elseif nRate == 0 then
		sResult = tNewGodOfGamblers_Text["MsgBox"]["DoubleTry"]["Result"]["Lose"][1]
	end
	local sLeftBlank,sRightBlank = NewGodOfGamblers_Aligment(sResult,1)
	sText = sText .. string.format(tNewGodOfGamblers_Text["MsgBox"]["DoubleTry"]["Text"][3],sLeftBlank,sResult,sRightBlank)
	-- 继续
	--	local sContinue = ""
	--	if nRate ~= 0 then
	--		sContinue = tNewGodOfGamblers_Text["MsgBox"]["DoubleTry"]["Continue"]
	--	else
	--		sContinue = tNewGodOfGamblers_Text["MsgBox"]["DoubleTry"]["GotoChipIn"]
	--	end
	--	local sLeftBlank,sRightBlank = NewGodOfGamblers_Aligment(sContinue,nBetType)
	--	sText = sText .. string.format(tNewGodOfGamblers_Text["MsgBox"]["DoubleTry"]["Text"][4],sLeftBlank,sContinue,sRightBlank)
	-- 尾行
	-- tNpcGossip[nNpcId]["Text1316"] = tNewGodOfGamblers_Text["MsgBox"]["DoubleTry"]["Text"][5]
	Sys_MsgBox(sText,sFunc,sFailFunc,nUserId)
	User_TalkChannel2005(tNewGodOfGamblers_Text["Talk"]["FriendlyTip"],nUserId)
end
	
---- 趣味区 抢红包
-- 文字对齐
function NewGodOfGamblers_Aligment(nNum,nIndex)
	local nTotalBlank = tNewGodOfGamblers_Cont["TotalBlank"][nIndex]
	local nNowBlank = nTotalBlank - #tostring(nNum)
	local nLeftBlank = math.floor(nNowBlank/2)
	local nRightBlank = nNowBlank - nLeftBlank
	local sLeftBlank = ""
	local sRightBlank = ""
	for i = 1,nLeftBlank do
		sLeftBlank = sLeftBlank .. " "
	end
	for i = 1,nRightBlank do
		sRightBlank = sRightBlank .. " "
	end	
	return sLeftBlank,sRightBlank
end
	
-- 点击npc
function NewGodOfGamblers_GrabRedEnvelopes_ClickNpc(nNpcId)
	local sMapIndex = "RedEnvelopesMapId"
	
	if nNpcId == 23100 or nNpcId == 23101 then
		if not NewGodOfGamblers_TimeOverOut() then
			return
		end
		
		sMapIndex = "RedEnvelopesMapIdNew"
	end
	
	if not NewGodOfGamblers_JudgeMap(sMapIndex) then
		return
	end
	local nUserId = Get_UserId()
	local nLevel = tNewGodOfGamblers_Cont["GrabRed"][nNpcId]["Level"]
	if not NewGodOfGamblers_JudgeLevelAndMetem() then
		Sys_MsgBox(tNewGodOfGamblers_Text["MsgBox"]["NoLevelGrab"][nLevel],nil,nil,nUserId)
		return
	end
	local nStc = tNewGodOfGamblers_Cont["GrabRed"][nNpcId]["Stc"]
	local bFlag,nData = NewGodOfGamblers_Stc(nUserId,nStc,1)
	local bHaveIn = false
	local nPersonNum = tNewGodOfGamblers_GrabRedEnvelopes[nLevel]["PersonNum"]
	local nMaxTime = tNewGodOfGamblers_GrabRedEnvelopes[nLevel]["MaxTime"]
	local nGlobalId = tNewGodOfGamblers_GrabRedEnvelopes[nLevel]["GlobalId"]
	local nPos = tNewGodOfGamblers_GrabRedEnvelopes[nLevel]["Pos"]
	local nBeginTime = Get_SysDynaGlobalData(nGlobalId,nPos)
	local nNowTime = os.time()
	-- 判断是否超时
	if nNowTime - nBeginTime >= nMaxTime then
		-- NewGodOfGamblers_GrabRedEnvelopes_ReturnDeposit(nLevel)
		-- tNewGodOfGamblers_GrabRedEnvelopes[nLevel]["RedEnvelopes"] = {}
		-- Sys_SetSynaGlobalData(nGlobalId,nPos,nNowTime)
		if #tNewGodOfGamblers_GrabRedEnvelopes[nLevel]["RedEnvelopes"] ~= 0 then
			if #tNewGodOfGamblers_GrabRedEnvelopes[nLevel]["RedEnvelopes"] < nPersonNum then
				local tNpcName = CommonFunc_Copy(tNewGodOfGamblers_Text["GrabNpcName"])
				for nNowPersonNum = #tNewGodOfGamblers_GrabRedEnvelopes[nLevel]["RedEnvelopes"]+1,nPersonNum do
					local nIndex = math.random(1,#tNpcName)
					local sUserName = tNpcName[nIndex]
					table.remove(tNpcName,nIndex)
					NewGodOfGamblers_GrabRedEnvelopes_OpenRedEnvelopesBySystem(nLevel,sUserName)
				end
			end
		end
	end
	-- 判断本轮是否结束
	if #tNewGodOfGamblers_GrabRedEnvelopes[nLevel]["RedEnvelopes"] >= nPersonNum then
		NewGodOfGamblers_GrabRedEnvelopes_ReturnDeposit(nLevel)
		tNewGodOfGamblers_GrabRedEnvelopes[nLevel]["RedEnvelopes"] = {}
	end
	-- 判断本轮是否已参加
	if #tNewGodOfGamblers_GrabRedEnvelopes[nLevel]["RedEnvelopes"] > 0 then
		for i,v in pairs(tNewGodOfGamblers_GrabRedEnvelopes[nLevel]["RedEnvelopes"]) do
			if nUserId == v["UserId"] then
				bHaveIn = true
			end
		end
	end
	
	if nData >= 1 or bHaveIn then
		NewGodOfGamblers_GrabRedEnvelopes_Deposit(nNpcId,nLevel)
	else
		if NewGodOfGamblers_JudgeTime() then
			Sys_MsgBox(tNewGodOfGamblers_Text["MsgBox"]["NoLevelGrab"]["TimeOut"],nil,nil,nUserId)
			return
		end
		LinkNpcGossipFunc_New(nNpcId,tNewGodOfGamblers_GrabRedEnvelopes[nLevel]["ConfirmDialog"])
	end
end

-- 屏蔽二次确认
function NewGodOfGamblers_GrabRedEnvelopes_CancelConfirm(nNpcId)
	local sMapIndex = "RedEnvelopesMapId"
	
	if nNpcId == 23100 or nNpcId == 23101 then
		if not NewGodOfGamblers_TimeOverOut() then
			return
		end
		
		sMapIndex = "RedEnvelopesMapIdNew"
	end
	
	if not NewGodOfGamblers_JudgeMap(sMapIndex) then
		return
	end
	local nUserId = Get_UserId()
	local nLevel = tNewGodOfGamblers_Cont["GrabRed"][nNpcId]["Level"]
	local nStc = tNewGodOfGamblers_Cont["GrabRed"][nNpcId]["Stc"]
	NewGodOfGamblers_Stc(nUserId,nStc,2,1)
	LinkNpcGossipFunc_New(nNpcId,tNewGodOfGamblers_GrabRedEnvelopes[nLevel]["ConfirmDialog"])
end

function NewGodOfGamblers_Loading()
	local nUserId = Get_UserId()
	for i,v in pairs(tNewGodOfGamblers_Cont["GrabRed"]) do
		NewGodOfGamblers_Stc(nUserId,v["Stc"],2,0)
	end
end


-- 交押金
function NewGodOfGamblers_GrabRedEnvelopes_Deposit(nNpcId)
	local sMapIndex = "RedEnvelopesMapId"
	
	if nNpcId == 23100 or nNpcId == 23101 then
		if not NewGodOfGamblers_TimeOverOut() then
			return
		end
		
		sMapIndex = "RedEnvelopesMapIdNew"
	end
	
	if not NewGodOfGamblers_JudgeMap(sMapIndex) then
		return
	end
	local nUserId = Get_UserId()
	local nLevel = tNewGodOfGamblers_Cont["GrabRed"][nNpcId]["Level"]
	-- 判断本轮是否已参加
	if #tNewGodOfGamblers_GrabRedEnvelopes[nLevel]["RedEnvelopes"] > 0 then
		for i,v in pairs(tNewGodOfGamblers_GrabRedEnvelopes[nLevel]["RedEnvelopes"]) do
			if nUserId == v["UserId"] then
				NewGodOfGamblers_GrabRedEnvelopes_OpenRedEnvelopes(nNpcId,nLevel)
				return
			end
		end
	end
	-- 判断时间
	if NewGodOfGamblers_JudgeTime() then
		Sys_MsgBox(tNewGodOfGamblers_Text["MsgBox"]["NoLevelGrab"]["TimeOut"],nil,nil,nUserId)
		return
	end
	
	if nNpcId == 23100 or nNpcId == 23101 then
		-- 判断玩家金钱
		if not User_CanPutMoney2Bag(-1*nLevel,nUserId) then
			LinkNpcGossipFunc_New(nNpcId,tNewGodOfGamblers_GrabRedEnvelopes[nLevel]["NoMoneyDialog"])
			return
		end
		
		-- 扣钱 开红包
		User_AddMoneyNew(-1*nLevel,tNewGodOfGamblers_Cont["LogId"],nUserId)
	else
		-- 判断玩家天石
		if Get_UserEMoney(nUserId) < nLevel then
			LinkNpcGossipFunc_New(nNpcId,tNewGodOfGamblers_GrabRedEnvelopes[nLevel]["NoMoneyDialog"])
			return
		end
		
		User_AddEMoney(-1*nLevel,nUserId,tNewGodOfGamblers_ELog["RedBagConsume"][nNpcId])
	end
	
	NewGodOfGamblers_GrabRedEnvelopes_OpenRedEnvelopes(nNpcId,nLevel)
end

-- 退押金
function NewGodOfGamblers_GrabRedEnvelopes_ReturnDeposit(nLevel)
	if #tNewGodOfGamblers_GrabRedEnvelopes[nLevel]["RedEnvelopes"] <= 0 then
		return
	end
	local nMin = nLevel
	for i,v in pairs(tNewGodOfGamblers_GrabRedEnvelopes[nLevel]["RedEnvelopes"]) do
		if v["Money"] < nMin then
			nMin = v["Money"]
		end
	end
	-- 判断最小
	for i,v in pairs(tNewGodOfGamblers_GrabRedEnvelopes[nLevel]["RedEnvelopes"]) do
		if v["UserId"] ~= 0 then
			if v["Money"] ~= nMin then
				NewGodOfGamblers_SendMail(nLevel,nLevel,v["UserId"])
			else
				NewGodOfGamblers_SendMail(nLevel,0,v["UserId"])
			end
		end
	end
end

-- 拆红包
function NewGodOfGamblers_GrabRedEnvelopes_OpenRedEnvelopes(nNpcId,nLevel)
	local nUserId = Get_UserId()
	local nPersonNum = tNewGodOfGamblers_GrabRedEnvelopes[nLevel]["PersonNum"]
	local nMaxTime = tNewGodOfGamblers_GrabRedEnvelopes[nLevel]["MaxTime"]
	local nGlobalId = tNewGodOfGamblers_GrabRedEnvelopes[nLevel]["GlobalId"]
	local nPos = tNewGodOfGamblers_GrabRedEnvelopes[nLevel]["Pos"]
	local nBeginTime = Get_SysDynaGlobalData(nGlobalId,nPos)
	local nNowTime = os.time()
	-- 判断是否超时
	if nNowTime - nBeginTime >= nMaxTime then
		-- NewGodOfGamblers_GrabRedEnvelopes_ReturnDeposit(nLevel)
		-- tNewGodOfGamblers_GrabRedEnvelopes[nLevel]["RedEnvelopes"] = {}
		-- Sys_SetSynaGlobalData(nGlobalId,nPos,nNowTime)
		if #tNewGodOfGamblers_GrabRedEnvelopes[nLevel]["RedEnvelopes"] ~= 0 then
			if #tNewGodOfGamblers_GrabRedEnvelopes[nLevel]["RedEnvelopes"] < nPersonNum then
				local tNpcName = CommonFunc_Copy(tNewGodOfGamblers_Text["GrabNpcName"])
				for nNowPersonNum = #tNewGodOfGamblers_GrabRedEnvelopes[nLevel]["RedEnvelopes"]+1,nPersonNum do
					local nIndex = math.random(1,#tNpcName)
					local sUserName = tNpcName[nIndex]
					table.remove(tNpcName,nIndex)
					NewGodOfGamblers_GrabRedEnvelopes_OpenRedEnvelopesBySystem(nLevel,sUserName)
				end
			end
		end
	end
	-- 判断本轮是否结束
	if #tNewGodOfGamblers_GrabRedEnvelopes[nLevel]["RedEnvelopes"] >= nPersonNum then
		NewGodOfGamblers_GrabRedEnvelopes_ReturnDeposit(nLevel)
		tNewGodOfGamblers_GrabRedEnvelopes[nLevel]["RedEnvelopes"] = {}
	end
	-- 判断本轮是否已参加
	if #tNewGodOfGamblers_GrabRedEnvelopes[nLevel]["RedEnvelopes"] > 0 then
		for i,v in pairs(tNewGodOfGamblers_GrabRedEnvelopes[nLevel]["RedEnvelopes"]) do
			if nUserId == v["UserId"] then
				LinkNpcGossipFunc_New(nNpcId,tNewGodOfGamblers_GrabRedEnvelopes[nLevel]["MainDialog"])
				return
			end
		end
	end
	-- 开始拆
	local nRemainMoney = math.floor(nLevel * 0.99)
	local nRemainNum = nPersonNum
	if #tNewGodOfGamblers_GrabRedEnvelopes[nLevel]["RedEnvelopes"] > 0 then
		for i,v in pairs(tNewGodOfGamblers_GrabRedEnvelopes[nLevel]["RedEnvelopes"]) do
			nRemainMoney = nRemainMoney - v["Money"]
			nRemainNum = nRemainNum - 1
		end
	end
	local nMoney = NewGodOfGamblers_GrabRedEnvelopes_RedEnvelopesData(nLevel,nRemainMoney,nRemainNum)
	local sUserName = Get_UserName(nUserId)
	table.insert(tNewGodOfGamblers_GrabRedEnvelopes[nLevel]["RedEnvelopes"],{UserId = nUserId,Money = nMoney,UserName = sUserName})
	
	if nNpcId == 23100 or nNpcId == 23101 then
		User_AddMoneyNew(nMoney,tNewGodOfGamblers_Cont["LogId"],nUserId)
	else
		User_AddEMoney(nMoney,nUserId,tNewGodOfGamblers_ELog["RedBagGet"][nNpcId])
	end
	
	Sys_SaveActionFestivalLog(string.format(tNewGodOfGamblers_Log["GrabRed"],nMoney),nUserId)
	-- 判断是否是第一
	if #tNewGodOfGamblers_GrabRedEnvelopes[nLevel]["RedEnvelopes"] == 1 then
		Sys_SetSynaGlobalData(nGlobalId,nPos,nNowTime)
	end
	LinkNpcGossipFunc_New(nNpcId,tNewGodOfGamblers_GrabRedEnvelopes[nLevel]["MainDialog"])
	-- 判断本轮是否结束
	if #tNewGodOfGamblers_GrabRedEnvelopes[nLevel]["RedEnvelopes"] >= nPersonNum then
		NewGodOfGamblers_GrabRedEnvelopes_ReturnDeposit(nLevel)
		tNewGodOfGamblers_GrabRedEnvelopes[nLevel]["RedEnvelopes"] = {}
	end
end

-- 系统拆红包
function NewGodOfGamblers_GrabRedEnvelopes_OpenRedEnvelopesBySystem(nLevel,sUserName)
	local nPersonNum = tNewGodOfGamblers_GrabRedEnvelopes[nLevel]["PersonNum"]
	local nMaxTime = tNewGodOfGamblers_GrabRedEnvelopes[nLevel]["MaxTime"]
	local nGlobalId = tNewGodOfGamblers_GrabRedEnvelopes[nLevel]["GlobalId"]
	local nPos = tNewGodOfGamblers_GrabRedEnvelopes[nLevel]["Pos"]
	local nBeginTime = Get_SysDynaGlobalData(nGlobalId,nPos)
	local nNowTime = os.time()
	-- 判断本轮是否结束
	if #tNewGodOfGamblers_GrabRedEnvelopes[nLevel]["RedEnvelopes"] >= nPersonNum then
		NewGodOfGamblers_GrabRedEnvelopes_ReturnDeposit(nLevel)
		tNewGodOfGamblers_GrabRedEnvelopes[nLevel]["RedEnvelopes"] = {}
		return
	end
	-- 开始拆
	local nRemainMoney = math.floor(nLevel * 0.99)
	local nRemainNum = nPersonNum
	if #tNewGodOfGamblers_GrabRedEnvelopes[nLevel]["RedEnvelopes"] > 0 then
		for i,v in pairs(tNewGodOfGamblers_GrabRedEnvelopes[nLevel]["RedEnvelopes"]) do
			nRemainMoney = nRemainMoney - v["Money"]
			nRemainNum = nRemainNum - 1
		end
	end
	local nMoney = NewGodOfGamblers_GrabRedEnvelopes_RedEnvelopesData(nLevel,nRemainMoney,nRemainNum)
	table.insert(tNewGodOfGamblers_GrabRedEnvelopes[nLevel]["RedEnvelopes"],{UserId = 0,Money = nMoney,UserName = sUserName})
	-- 判断本轮是否结束
	if #tNewGodOfGamblers_GrabRedEnvelopes[nLevel]["RedEnvelopes"] >= nPersonNum then
		NewGodOfGamblers_GrabRedEnvelopes_ReturnDeposit(nLevel)
		tNewGodOfGamblers_GrabRedEnvelopes[nLevel]["RedEnvelopes"] = {}
	end
end

-- 生成红包数据
function NewGodOfGamblers_GrabRedEnvelopes_RedEnvelopesData(nLevel,nRemainMoney,nRemainNum)
	local nMoney = math.random(1,math.floor(nRemainMoney/nRemainNum*2))
	if nMoney >= nRemainMoney - nRemainNum then
		nMoney = nRemainMoney - nRemainNum
	end
	if nRemainNum == 1 then
		nMoney = nRemainMoney
	end
	return nMoney
end

-- 系统自检 5分钟内红包没被抢完
function NewGodOfGamblers_GrabRedEnvelopes_AutoGrab()
	for i,v in pairs(tNewGodOfGamblers_GrabRedEnvelopes) do
		local nGlobalId = v["GlobalId"]
		local nPos = v["Pos"]
		local nMaxTime = v["MaxTime"]
		local nPersonNum = v["PersonNum"]
		local nBeginTime = Get_SysDynaGlobalData(nGlobalId,nPos)
		local nNowTime = os.time()
		-- 判断是否超时
		if nNowTime - nBeginTime >= nMaxTime then
			if #v["RedEnvelopes"] ~= 0 then
				if #v["RedEnvelopes"] < nPersonNum then
					local tNpcName = CommonFunc_Copy(tNewGodOfGamblers_Text["GrabNpcName"])
					for nNowPersonNum = #v["RedEnvelopes"]+1,nPersonNum do
						local nIndex = math.random(1,#tNpcName)
						local sUserName = tNpcName[nIndex]
						table.remove(tNpcName,nIndex)
						NewGodOfGamblers_GrabRedEnvelopes_OpenRedEnvelopesBySystem(i,sUserName)
					end
				end
			end
		end
	end
end
-- 系统自检 活动结束
-- function NewGodOfGamblers_OverTime()
	-- NewGodOfGamblers_TimeOverOut()
-- end
	
--	---- 趣味区 怪物对战
--	-- 未开赛
--	function NewGodOfGamblers_MonsterFight_NotBegin()
--		local nFightGlobalId = tNewGodOfGamblers_MonsterFight["Fight"][1]["GlobalId"]
--		local nFightStatusPos = tNewGodOfGamblers_MonsterFight["Fight"][1]["StatusPos"]
--		if Get_SysDynaGlobalData(nFightGlobalId,nFightStatusPos) ~= tNewGodOfGamblers_Cont["FightStatus"]["NotBegin"] then
--			return
--		end
--		local nMonsterAPos = tNewGodOfGamblers_MonsterFight["Fight"][1]["MonsterAPos"]
--		local nMonsterBPos = tNewGodOfGamblers_MonsterFight["Fight"][1]["MonsterBPos"]
--		local nMonsterWinPos = tNewGodOfGamblers_MonsterFight["Fight"][1]["MonsterWinPos"]
--		local nInGamblingTimePos = tNewGodOfGamblers_MonsterFight["Fight"][1]["InGamblingTimePos"]
--		local nODDAStrPos = tNewGodOfGamblers_MonsterFight["Fight"][1]["ODDAStrPos"]
--		local nODDStrBPos = tNewGodOfGamblers_MonsterFight["Fight"][1]["ODDBStrPos"]
--		
--		-- 生成比赛数据
--		local nMonsterA,nMonsterB,sODDA,sODDB = NewGodOfGamblers_FightDataGenerate()
--		Sys_SetSynaGlobalData(nFightGlobalId,nMonsterAPos,nMonsterA)
--		Sys_SetSynaGlobalData(nFightGlobalId,nMonsterBPos,nMonsterB)
--		Sys_SetSynaGlobalData(nFightGlobalId,nMonsterWinPos,0)
--		Sys_SetSynaGlobalData(nFightGlobalId,nInGamblingTimePos,os.time())
--		Sys_SetSynaGlobalDataStr(nFightGlobalId,nODDAStrPos,sODDA)
--		Sys_SetSynaGlobalDataStr(nFightGlobalId,nODDBStrPos,sODDB)
--		
--		-- 全服通知押注
--		Sys_SystemBroadcast()
--		
--		-- 设置比赛状态为押注状态
--		Sys_SetSynaGlobalData(nFightGlobalId,nFightStatusPos,tNewGodOfGamblers_Cont["FightStatus"]["InGambling"])
--	end
--	
--	-- 押注
--	function NewGodOfGamblers_MonsterFight_InGambling()
--		local nFightGlobalId = tNewGodOfGamblers_MonsterFight["Fight"][1]["GlobalId"]
--		local nFightStatusPos = tNewGodOfGamblers_MonsterFight["Fight"][1]["StatusPos"]
--		if Get_SysDynaGlobalData(nFightGlobalId,nFightStatusPos) ~= tNewGodOfGamblers_Cont["FightStatus"]["InGambling"] then
--			return
--		end	
--		local nMonsterAPos = tNewGodOfGamblers_MonsterFight["Fight"][1]["MonsterAPos"]
--		local nMonsterBPos = tNewGodOfGamblers_MonsterFight["Fight"][1]["MonsterBPos"]
--		local nInGamblingTimePos = tNewGodOfGamblers_MonsterFight["Fight"][1]["InGamblingTimePos"]
--		
--		-- 判断押注时间
--		local nInGamblingTime = Get_SysDynaGlobalData(nFightGlobalId,nInGamblingTimePos)
--		if os.time() - nInGamblingTime < tNewGodOfGamblers_Cont["InGamblingTime"] then
--			return
--		end
--		
--		-- 生成怪物
--		local nMonsterA = Get_SysDynaGlobalData(nFightGlobalId,nMonsterAPos)
--		local nMonsterB = Get_SysDynaGlobalData(nFightGlobalId,nMonsterBPos)
--		if not NewGodOfGamblers_MonstersGenerate(nMonsterA,nMonsterB) then
--			return
--		end
--		
--		--设置比赛状态为开赛
--		Sys_SetSynaGlobalData(nFightGlobalId,nFightStatusPos,tNewGodOfGamblers_Cont["FightStatus"]["FightBegin"])
--	end
--	
--	-- 开始比赛
--	function NewGodOfGamblers_MonsterFight_FightBegin()
--		local nFightGlobalId = tNewGodOfGamblers_MonsterFight["Fight"][1]["GlobalId"]
--		local nFightStatusPos = tNewGodOfGamblers_MonsterFight["Fight"][1]["StatusPos"]
--		if Get_SysDynaGlobalData(nFightGlobalId,nFightStatusPos) ~= tNewGodOfGamblers_Cont["FightStatus"]["FightBegin"] then
--			return
--		end	
--		
--		-- 判断哪只怪物胜利
--		local nMonsterWinPos = tNewGodOfGamblers_MonsterFight["Fight"][1]["MonsterWinPos"]
--		local bFightFinish,nMonsterWin = NewGodOfGamblers_WhitchMonsterWin()
--		if not bFightFinish then
--			return
--		end
--		Sys_SetSynaGlobalData(nFightGlobalId,nMonsterWinPos,nMonsterWin)
--		
--		-- 比赛总场次 + 1
--		local nFightNumPos = tNewGodOfGamblers_MonsterFight["Fight"][1]["FightNumPos"]
--		local nFightNum = Get_SysDynaGlobalData(nFightGlobalId,nFightNumPos)
--		Sys_SetSynaGlobalData(nFightGlobalId,nFightNumPos,nFightNum + 1)
--		
--		-- 设置比赛状态为比赛结束
--		Sys_SetSynaGlobalData(nFightGlobalId,nFightStatusPos,tNewGodOfGamblers_Cont["FightStatus"]["FightEnd"])
--	end
--	
--	-- 比赛结束
--	function NewGodOfGamblers_MonsterFight_FightEnd()
--		local nFightGlobalId = tNewGodOfGamblers_MonsterFight["Fight"][1]["GlobalId"]
--		local nFightStatusPos = tNewGodOfGamblers_MonsterFight["Fight"][1]["StatusPos"]
--		if Get_SysDynaGlobalData(nFightGlobalId,nFightStatusPos) ~= tNewGodOfGamblers_Cont["FightStatus"]["FightEnd"] then
--			return
--		end
--		
--		-- 设置比赛时间为未开赛
--		Sys_SetSynaGlobalData(nFightGlobalId,nFightStatusPos,tNewGodOfGamblers_Cont["FightStatus"]["NotBegin"])
--	end
--	
--	-- 生成怪物数据
--	function NewGodOfGamblers_FightDataGenerate()
--		local nMonsterA,nMonsterB,sODDA,sODDB
--		return nMonsterA,nMonsterB,sODDA,sODDB
--	end
--	
--	-- 生成怪物
--	function NewGodOfGamblers_MonstersGenerate(nMonsterA,nMonsterB)
--		return true
--	end
--	
--	-- 判断哪只怪物胜利	
--	function NewGodOfGamblers_WhitchMonsterWin()
--		local bFightFinish,nMonsterWin
--		return bFightFinish,nMonsterWin
--	end
	
---------------------------------------------NPC模块---------------------------------------------
-- 陈金城
tNpcFace[6068] = 7
tNpcGossip[21481] = tNpcGossip[21481] or DefaultNpc:new{}
tNpcGossip[21481]["OptionHidden"] = 1
tNpcGossip[21481]["DialogueText"] = tNewGodOfGamblers_Text[21481]
tNpcGossip[21481]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[21481]["tOption1-1"] = {111,112}
tNpcGossip[21481]["ChkFunc1-1"] = function ()
	tNpcGossip[21481]["Text114"] = NewGodOfGamblers_TimeToText(tNewGodOfGamblers_Text[21481]["Text114"],tNewGodOfGamblers_Cont["ActivityTime"])
	if NewGodOfGamblers_JudgeLevelAndMetem() then
		tNpcGossip[21481]["Text1-1"] = {111,112,113,114,116}
		tNpcGossip[21481]["tOption1-1"] = {111}
	else
		tNpcGossip[21481]["Text1-1"] = {111,112,113,114,115,116}
		tNpcGossip[21481]["tOption1-1"] = {112}
	end
	return Sys_ChkFullTime(tNewGodOfGamblers_Cont["ActivityTime"])
end	
tNpcGossip[21481]["OptionFunc111"] = "NewGodOfGamblers_JoinGame</N>21481</N>262"

tNpcGossip[21481]["Text1-2"] = {121,122}
tNpcGossip[21481]["tOption1-2"] = {121}
tNpcGossip[21481]["ChkFunc1-2"] = function ()
	return CommonFunc_GetAfterActivityTime(tNewGodOfGamblers_Cont["ActivityTime"])
end	

-- 石一坚
tNpcFace[6069] = 259
tNpcGossip[21482] = tNpcGossip[21482] or DefaultNpc:new{}
tNpcGossip[21482]["OptionHidden"] = 1
tNpcGossip[21482]["DialogueText"] = tNewGodOfGamblers_Text[21482]
tNpcGossip[21482]["Text1-1"] = {111,112,113,114,115,116}
-- tNpcGossip[21482]["tOption1-1"] = {111,112,113}
tNpcGossip[21482]["tOption1-1"] = {111,112}
tNpcGossip[21482]["ChkFunc1-1"] = function ()
	tNpcGossip[21482]["Text114"] = NewGodOfGamblers_TimeToText(tNewGodOfGamblers_Text[21482]["Text114"],tNewGodOfGamblers_Cont["ActivityTime"])
	if NewGodOfGamblers_JudgeLevelAndMetem() then
		tNpcGossip[21482]["Text1-1"] = {111,112,113,114,116}
		tNpcGossip[21482]["tOption1-1"] = {111,113}
	else
		tNpcGossip[21482]["Text1-1"] = {111,112,113,114,115,116}
		tNpcGossip[21482]["tOption1-1"] = {112,113}
	end
	return true
end	
tNpcGossip[21482]["OptionFunc111"] = "NewGodOfGamblers_DoubleBet_Try"
-- tNpcGossip[21482]["OptionFunc113"] = "NewGodOfGamblers_Chgmap</S>Out"

-- 何鸿升
tNpcFace[6067] = 52
tNpcGossip[21483] = tNpcGossip[21483] or DefaultNpc:new{}
tNpcGossip[21483]["OptionHidden"] = 1
tNpcGossip[21483]["DialogueText"] = tNewGodOfGamblers_Text[21483]
tNpcGossip[21483]["Text1-1"] = {111,112,114,115}
-- tNpcGossip[21483]["tOption1-1"] = {111,112,113,114,115}
-- tNpcGossip[21483]["tOption1-1"] = {113,114,115,116}
tNpcGossip[21483]["tOption1-1"] = {113,114,115}
tNpcGossip[21483]["ChkFunc1-1"] = function ()
	--tNpcGossip[21483]["Text113"] = NewGodOfGamblers_TimeToText(tNewGodOfGamblers_Text[21483]["Text113"],tNewGodOfGamblers_Cont["ActivityTime"])
	if NewGodOfGamblers_JudgeLevelAndMetem() then
		tNpcGossip[21483]["Text1-1"] = {111,112,115}
		-- tNpcGossip[21483]["tOption1-1"] = {111,112,113,114}
		-- tNpcGossip[21483]["tOption1-1"] = {113,116}
		tNpcGossip[21483]["tOption1-1"] = {113}
	else
		tNpcGossip[21483]["Text1-1"] = {111,112,114,115}
		-- tNpcGossip[21483]["tOption1-1"] = {115,116}
		tNpcGossip[21483]["tOption1-1"] = {115}
	end
	return true
end	
tNpcGossip[21483]["OptionFunc111"] = "NewGodOfGamblers_GrabRedEnvelopes_Deposit</N>21483</N>100"
tNpcGossip[21483]["OptionFunc112"] = "NewGodOfGamblers_GrabRedEnvelopes_Deposit</N>21483</N>1000"
tNpcGossip[21483]["OptionPoint113"] = "5-1"
-- tNpcGossip[21483]["OptionFunc116"] = "NewGodOfGamblers_Chgmap</S>Out"

-- tNpcGossip[21483]["Text2-1"] = {211,212,213,214,215,216,217,218}
-- tNpcGossip[21483]["tOption2-1"] = {211}
-- tNpcGossip[21483]["ChkFunc2-1"] = function ()
	-- local nUserId = Get_UserId()
	-- local nNum = 0
	-- local nRedNum = 0
	-- tNpcGossip[21483]["Text216"] = ""
	-- for i,v in pairs(tNewGodOfGamblers_GrabRedEnvelopes[1000000]["RedEnvelopes"]) do
		-- if v["UserId"] == nUserId then
			-- nNum = v["Money"]
		-- end
		-- tNpcGossip[21483]["Text216"] = tNpcGossip[21483]["Text216"] .. string.format(tNewGodOfGamblers_Text[21483]["Text216"],v["UserName"],v["Money"])
		-- nRedNum = nRedNum + 1
	-- end
	-- local sLeftBlank,sRightBlank = NewGodOfGamblers_Aligment(nNum)
	-- tNpcGossip[21483]["Text213"] = string.format(tNewGodOfGamblers_Text[21483]["Text213"],sLeftBlank,nNum,sRightBlank)
	-- tNpcGossip[21483]["Text217"] = string.format(tNewGodOfGamblers_Text[21483]["Text217"],tNewGodOfGamblers_GrabRedEnvelopes[1000000]["PersonNum"] - nRedNum,tNewGodOfGamblers_GrabRedEnvelopes[1000000]["PersonNum"])
	-- return true
-- end	

-- tNpcGossip[21483]["Text2-2"] = {221,222,223,224,225,226,227,228}
-- tNpcGossip[21483]["tOption2-2"] = {221}
-- tNpcGossip[21483]["ChkFunc2-2"] = function ()
	-- local nUserId = Get_UserId()
	-- local nNum = 0
	-- local nRedNum = 0
	-- tNpcGossip[21483]["Text226"] = ""
	-- for i,v in pairs(tNewGodOfGamblers_GrabRedEnvelopes[10000000]["RedEnvelopes"]) do
		-- if v["UserId"] == nUserId then
			-- nNum = v["Money"]
		-- end
		-- tNpcGossip[21483]["Text226"] = tNpcGossip[21483]["Text226"] .. string.format(tNewGodOfGamblers_Text[21483]["Text226"],v["UserName"],v["Money"])
		-- nRedNum = nRedNum + 1
	-- end
	-- local sLeftBlank,sRightBlank = NewGodOfGamblers_Aligment(nNum)
	-- tNpcGossip[21483]["Text223"] = string.format(tNewGodOfGamblers_Text[21483]["Text223"],sLeftBlank,nNum,sRightBlank)
	-- tNpcGossip[21483]["Text227"] = string.format(tNewGodOfGamblers_Text[21483]["Text227"],tNewGodOfGamblers_GrabRedEnvelopes[10000000]["PersonNum"] - nRedNum,tNewGodOfGamblers_GrabRedEnvelopes[10000000]["PersonNum"])
	-- return true
-- end	

-- 押注数超过限制
-- tNpcGossip[21483]["Text3-1"] = {311}
-- tNpcGossip[21483]["tOption3-1"] = {311}
-- tNpcGossip[21483]["OptionFunc311"] = "1-1"

-- 银两不足
-- tNpcGossip[21483]["Text4-1"] = {411}
-- tNpcGossip[21483]["tOption4-1"] = {411}
-- tNpcGossip[21483]["OptionPoint411"] = "1-1"

tNpcGossip[21483]["Text5-1"] = {511,512,513,514,515,516,517,518,519,5110}
tNpcGossip[21483]["tOption5-1"] = {511}
tNpcGossip[21483]["OptionPoint511"] = "5-2"

tNpcGossip[21483]["Text5-2"] = {521,522,523,524,525,526}
tNpcGossip[21483]["tOption5-2"] = {521}
tNpcGossip[21483]["OptionPoint521"] = "1-1"

-- 阿星
tNpcFace[6066] = 25
tNpcGossip[21484] = tNpcGossip[21484] or DefaultNpc:new{}
tNpcGossip[21484]["OptionHidden"] = 1
tNpcGossip[21484]["DialogueText"] = tNewGodOfGamblers_Text[21484]
-- tNpcGossip[21484]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[21484]["Text1-1"] = {111,112,113,116,117}
-- tNpcGossip[21484]["tOption1-1"] = {111,112}
tNpcGossip[21484]["tOption1-1"] = {111}
tNpcGossip[21484]["ChkFunc1-1"] = function ()
	--tNpcGossip[21484]["Text115"] = NewGodOfGamblers_TimeToText(tNewGodOfGamblers_Text[21484]["Text115"],tNewGodOfGamblers_Cont["ActivityTime"])
	if NewGodOfGamblers_JudgeLevelAndMetem() then
		-- tNpcGossip[21484]["Text1-1"] = {111,112,113,114,115,117}
		tNpcGossip[21484]["Text1-1"] = {111,112,113,117}
	else
		-- tNpcGossip[21484]["Text1-1"] = {111,112,113,114,115,116,117}
		tNpcGossip[21484]["Text1-1"] = {111,112,113,116,117}
	end
	return Sys_ChkFullTime(tNewGodOfGamblers_Cont["ActivityTime"])
end	
tNpcGossip[21484]["OptionFunc111"] = "NewGodOfGamblers_FindNpc</N>22005"
-- tNpcGossip[21484]["OptionFunc112"] = "NewGodOfGamblers_Chgmap</S>Out"

tNpcGossip[21484]["Text1-2"] = {121,122}
-- tNpcGossip[21484]["tOption1-2"] = {121,122}
tNpcGossip[21484]["tOption1-2"] = {121}
tNpcGossip[21484]["ChkFunc1-2"] = function ()
	return CommonFunc_GetAfterActivityTime(tNewGodOfGamblers_Cont["ActivityTime"])
end	
-- tNpcGossip[21484]["OptionFunc122"] = "NewGodOfGamblers_Chgmap</S>Out"

-- 阿星
tNpcFace[6154] = 25
tNpcGossip[23102] = tNpcGossip[23102] or DefaultNpc:new{}
tNpcGossip[23102]["OptionHidden"] = 1
tNpcGossip[23102]["DialogueText"] = tNewGodOfGamblers_Text[21484]
tNpcGossip[23102]["Text1-1"] = {111,112,113,116,117}
tNpcGossip[23102]["tOption1-1"] = {111}
tNpcGossip[23102]["ChkFunc1-1"] = function ()
	if NewGodOfGamblers_JudgeLevelAndMetem() then
		tNpcGossip[23102]["Text1-1"] = {111,112,113,117}
	else
		tNpcGossip[23102]["Text1-1"] = {111,112,113,116,117}
	end
	return Sys_ChkFullTime(tNewGodOfGamblers_Cont["ActivityTime"])
end	
tNpcGossip[23102]["OptionFunc111"] = "NewGodOfGamblers_FindNpc</N>23104"

tNpcGossip[23102]["Text1-2"] = {121,122}
tNpcGossip[23102]["tOption1-2"] = {121}
tNpcGossip[23102]["ChkFunc1-2"] = function ()
	return CommonFunc_GetAfterActivityTime(tNewGodOfGamblers_Cont["ActivityTime"])
end	

-- 何鸿升
tNpcFace[6153] = 52
tNpcGossip[23099] = tNpcGossip[23099] or DefaultNpc:new{}
tNpcGossip[23099]["OptionHidden"] = 1
tNpcGossip[23099]["DialogueText"] = tNewGodOfGamblers_Text[23099]
tNpcGossip[23099]["Text1-1"] = {111,112,114,115}
tNpcGossip[23099]["tOption1-1"] = {113,114,115}
tNpcGossip[23099]["ChkFunc1-1"] = function ()
	if NewGodOfGamblers_JudgeLevelAndMetem() then
		tNpcGossip[23099]["Text1-1"] = {111,112,115}
		tNpcGossip[23099]["tOption1-1"] = {113}
	else
		tNpcGossip[23099]["Text1-1"] = {111,112,114,115}
		tNpcGossip[23099]["tOption1-1"] = {115}
	end
	return true
end	
tNpcGossip[23099]["OptionPoint113"] = "5-1"

tNpcGossip[23099]["Text5-1"] = {511,512,513,514,515,516,517,518,519,5110}
tNpcGossip[23099]["tOption5-1"] = {511}
tNpcGossip[23099]["OptionPoint511"] = "5-2"

tNpcGossip[23099]["Text5-2"] = {521,522,523,524,525,526}
tNpcGossip[23099]["tOption5-2"] = {521}
tNpcGossip[23099]["OptionPoint521"] = "1-1"


-- 赠点天石轮盘
tNpcFace[4484] = 1517
tNpcGossip[21485] = tNpcGossip[21485] or DefaultNpc:new{}
tNpcGossip[21485]["OptionHidden"] = 1
tNpcGossip[21485]["DialogueText"] = tNewGodOfGamblers_Text[21485]
tNpcGossip[21485]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[21485]["tOption1-1"] = {111,113,114,115}
tNpcGossip[21485]["ChkFunc1-1"] = function ()
	local nUserId = Get_UserId()
	local nTimerStc = tNewGodOfGamblers_DoubleBetRate["Stc"]
	local bFlag,nData = NewGodOfGamblers_Stc(nUserId,nTimerStc,1)
	if nData >= 1 then
		return false
	end
	if NewGodOfGamblers_JudgeLevelAndMetem() then
		local bFlag,nNowStake = NewGodOfGamblers_Stc(nUserId,1,1)
		tNpcGossip[21485]["Text114"] = string.format(tNewGodOfGamblers_Text[21485]["Text114"],nNowStake)
		tNpcGossip[21485]["Text1-1"] = {111,112,113,114,115}
		tNpcGossip[21485]["tOption1-1"] = {111,113,114}
		if nNowStake == 0 then
			tNpcGossip[21485]["tOption1-1"] = {111}
		end
	else
		tNpcGossip[21485]["Text1-1"] = {111,112,116,115}
		tNpcGossip[21485]["tOption1-1"] = {115}
	end
	return true
end	
-- 我要押注
tNpcGossip[21485]["OptionFunc111"] = "NewGodOfGamblers_DoubleBet_ChipIn</N>21485</N>1</N>1"
tNpcGossip[21485]["OptionFunc112"] = "NewGodOfGamblers_DoubleBet_ChipIn</N>21485</N>1</N>1"
-- 转动轮盘
tNpcGossip[21485]["OptionFunc113"] = "NewGodOfGamblers_DoubleBet_ClickDouble</N>21485</N>1"
-- 取回奖励
tNpcGossip[21485]["OptionFunc114"] = "NewGodOfGamblers_DoubleBet_Return</N>21485</N>1</N>1"

-- 押注数超过限制
tNpcGossip[21485]["Text4-1"] = {411}
tNpcGossip[21485]["tOption4-1"] = {411}
tNpcGossip[21485]["OptionPoint411"] = "1-1"
-- 押注数低于限制
tNpcGossip[21485]["Text5-1"] = {511}
tNpcGossip[21485]["tOption5-1"] = {511}
tNpcGossip[21485]["OptionPoint511"] = "1-1"
-- 输入的不是大于0的整数
tNpcGossip[21485]["Text6-1"] = {611}
tNpcGossip[21485]["tOption6-1"] = {611}
tNpcGossip[21485]["OptionPoint611"] = "1-1"
-- 身上天石不足
tNpcGossip[21485]["Text7-1"] = {711}
tNpcGossip[21485]["tOption7-1"] = {711}
tNpcGossip[21485]["OptionPoint711"] = "1-1"
-- 押注天石不足（输入值比押注总数大）
tNpcGossip[21485]["Text8-1"] = {811}
tNpcGossip[21485]["tOption8-1"] = {811}
tNpcGossip[21485]["OptionPoint811"] = "1-1"
-- 身上天石达到上限
tNpcGossip[21485]["Text9-1"] = {911}
tNpcGossip[21485]["tOption9-1"] = {911}
tNpcGossip[21485]["OptionPoint911"] = "1-1"
-- 开轮盘cd
tNpcGossip[21485]["Text10-1"] = {1011}
tNpcGossip[21485]["tOption10-1"] = {1011}
tNpcGossip[21485]["OptionPoint1011"] = "1-1"

tNpcGossip[21485]["Text11-1"] = {1111}
tNpcGossip[21485]["tOption11-1"] = {1111}
tNpcGossip[21485]["OptionFunc1111"] = "NewGodOfGamblers_DoubleBet_ChipIn</N>21485</N>1</N>1"

tNpcGossip[21485]["Text12-1"] = {1211}
tNpcGossip[21485]["tOption12-1"] = {1211}
tNpcGossip[21485]["OptionFunc1211"] = "NewGodOfGamblers_DoubleBet_Return</N>21485</N>1</N>1"

tNpcGossip[21485]["Text13-1"] = {1311,1312,1313,1314,1315,1316}
tNpcGossip[21485]["tOption13-1"] = {1311,1312}
tNpcGossip[21485]["OptionFunc1311"] = "NewGodOfGamblers_DoubleBet_ClickDouble</N>21485"
tNpcGossip[21485]["OptionPoint1312"] = "1-1"

tNpcGossip[21485]["Text1-2"] = {121}
tNpcGossip[21485]["tOption1-2"] = {121}
tNpcGossip[21485]["ChkFunc1-2"] = function ()
	local nUserId = Get_UserId()
	local nTimerStc = tNewGodOfGamblers_DoubleBetRate["Stc"]
	local bFlag,nData = NewGodOfGamblers_Stc(nUserId,nTimerStc,1)
	if nData >= 1 then
		return true
	else
		return false
	end
end

-- 银两轮盘
tNpcFace[4188] = 1517
tNpcGossip[21486] = tNpcGossip[21486] or DefaultNpc:new{}
tNpcGossip[21486]["OptionHidden"] = 1
tNpcGossip[21486]["DialogueText"] = tNewGodOfGamblers_Text[21486]
tNpcGossip[21486]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[21486]["tOption1-1"] = {111,113,114,115}
tNpcGossip[21486]["ChkFunc1-1"] = function ()
	local nUserId = Get_UserId()
	local nTimerStc = tNewGodOfGamblers_DoubleBetRate["Stc"]
	local bFlag,nData = NewGodOfGamblers_Stc(nUserId,nTimerStc,1)
	if nData >= 1 then
		return false
	end
	if NewGodOfGamblers_JudgeLevelAndMetem() then
		local bFlag,nNowStake = NewGodOfGamblers_Stc(nUserId,2,1)
		tNpcGossip[21486]["Text114"] = string.format(tNewGodOfGamblers_Text[21486]["Text114"],nNowStake)
		tNpcGossip[21486]["Text1-1"] = {111,112,113,114,115}
		tNpcGossip[21486]["tOption1-1"] = {111,113,114}
		if nNowStake == 0 then
			tNpcGossip[21486]["tOption1-1"] = {111}
		end
	else
		tNpcGossip[21486]["Text1-1"] = {111,112,116,115}
		tNpcGossip[21486]["tOption1-1"] = {115}
	end
	return true
end	
-- 我要押注
tNpcGossip[21486]["OptionFunc111"] = "NewGodOfGamblers_DoubleBet_ChipIn</N>21486</N>2</N>1"
tNpcGossip[21486]["OptionFunc112"] = "NewGodOfGamblers_DoubleBet_ChipIn</N>21486</N>2</N>1"
-- 转动轮盘
tNpcGossip[21486]["OptionFunc113"] = "NewGodOfGamblers_DoubleBet_ClickDouble</N>21486</N>2"
-- 取回奖励
tNpcGossip[21486]["OptionFunc114"] = "NewGodOfGamblers_DoubleBet_Return</N>21486</N>2</N>1"

-- 押注数超过限制
tNpcGossip[21486]["Text4-1"] = {411}
tNpcGossip[21486]["tOption4-1"] = {411}
tNpcGossip[21486]["OptionPoint411"] = "1-1"
-- 押注数低于限制
tNpcGossip[21486]["Text5-1"] = {511}
tNpcGossip[21486]["tOption5-1"] = {511}
tNpcGossip[21486]["OptionPoint511"] = "1-1"
-- 输入的不是大于0的整数
tNpcGossip[21486]["Text6-1"] = {611}
tNpcGossip[21486]["tOption6-1"] = {611}
tNpcGossip[21486]["OptionPoint611"] = "1-1"
-- 身上银两不足
tNpcGossip[21486]["Text7-1"] = {711}
tNpcGossip[21486]["tOption7-1"] = {711}
tNpcGossip[21486]["OptionPoint711"] = "1-1"
-- 押注银两不足（输入值比押注总数大）
tNpcGossip[21486]["Text8-1"] = {811}
tNpcGossip[21486]["tOption8-1"] = {811}
tNpcGossip[21486]["OptionPoint811"] = "1-1"
-- 身上银两达到上限
tNpcGossip[21486]["Text9-1"] = {911}
tNpcGossip[21486]["tOption9-1"] = {911}
tNpcGossip[21486]["OptionPoint911"] = "1-1"
-- 开轮盘cd
tNpcGossip[21486]["Text10-1"] = {1011}
tNpcGossip[21486]["tOption10-1"] = {1011}
tNpcGossip[21486]["OptionPoint1011"] = "1-1"

tNpcGossip[21486]["Text11-1"] = {1111}
tNpcGossip[21486]["tOption11-1"] = {1111}
tNpcGossip[21486]["OptionFunc1111"] = "NewGodOfGamblers_DoubleBet_ChipIn</N>21486</N>2</N>1"

tNpcGossip[21486]["Text12-1"] = {1211}
tNpcGossip[21486]["tOption12-1"] = {1211}
tNpcGossip[21486]["OptionFunc1211"] = "NewGodOfGamblers_DoubleBet_Return</N>21486</N>2</N>1"

tNpcGossip[21486]["Text13-1"] = {1311,1312,1313,1314,1315,1316}
tNpcGossip[21486]["tOption13-1"] = {1311,1312}
tNpcGossip[21486]["OptionFunc1311"] = "NewGodOfGamblers_DoubleBet_ClickDouble</N>21486"
tNpcGossip[21486]["OptionPoint1312"] = "1-1"

tNpcGossip[21486]["Text1-2"] = {121}
tNpcGossip[21486]["tOption1-2"] = {121}
tNpcGossip[21486]["ChkFunc1-2"] = function ()
	local nUserId = Get_UserId()
	local nTimerStc = tNewGodOfGamblers_DoubleBetRate["Stc"]
	local bFlag,nData = NewGodOfGamblers_Stc(nUserId,nTimerStc,1)
	if nData >= 1 then
		return true
	else
		return false
	end
end

-- 气力轮盘
tNpcFace[4189] = 1517
tNpcGossip[21487] = tNpcGossip[21487] or DefaultNpc:new{}
tNpcGossip[21487]["OptionHidden"] = 1
tNpcGossip[21487]["DialogueText"] = tNewGodOfGamblers_Text[21487]
tNpcGossip[21487]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[21487]["tOption1-1"] = {111,113,114,115}
tNpcGossip[21487]["ChkFunc1-1"] = function ()
	local nUserId = Get_UserId()
	local nTimerStc = tNewGodOfGamblers_DoubleBetRate["Stc"]
	local bFlag,nData = NewGodOfGamblers_Stc(nUserId,nTimerStc,1)
	if nData >= 1 then
		return false
	end
	if NewGodOfGamblers_JudgeLevelAndMetem() then
		local bFlag,nNowStake = NewGodOfGamblers_Stc(nUserId,3,1)
		tNpcGossip[21487]["Text114"] = string.format(tNewGodOfGamblers_Text[21487]["Text114"],nNowStake)
		tNpcGossip[21487]["Text1-1"] = {111,112,113,114,115}
		tNpcGossip[21487]["tOption1-1"] = {111,113,114}
		if nNowStake == 0 then
			tNpcGossip[21487]["tOption1-1"] = {111}
		end
	else
		tNpcGossip[21487]["Text1-1"] = {111,112,116,115}
		tNpcGossip[21487]["tOption1-1"] = {115}
	end
	return true
end	
-- 我要押注
tNpcGossip[21487]["OptionFunc111"] = "NewGodOfGamblers_DoubleBet_ChipIn</N>21487</N>3</N>1"
tNpcGossip[21487]["OptionFunc112"] = "NewGodOfGamblers_DoubleBet_ChipIn</N>21487</N>3</N>1"
-- 转动轮盘
tNpcGossip[21487]["OptionFunc113"] = "NewGodOfGamblers_DoubleBet_ClickDouble</N>21487</N>3"
-- 取回奖励
tNpcGossip[21487]["OptionFunc114"] = "NewGodOfGamblers_DoubleBet_Return</N>21487</N>3</N>1"

-- 押注数超过限制
tNpcGossip[21487]["Text4-1"] = {411}
tNpcGossip[21487]["tOption4-1"] = {411}
tNpcGossip[21487]["OptionPoint411"] = "1-1"
-- 押注数低于限制
tNpcGossip[21487]["Text5-1"] = {511}
tNpcGossip[21487]["tOption5-1"] = {511}
tNpcGossip[21487]["OptionPoint511"] = "1-1"
-- 输入的不是大于0的整数
tNpcGossip[21487]["Text6-1"] = {611}
tNpcGossip[21487]["tOption6-1"] = {611}
tNpcGossip[21487]["OptionPoint611"] = "1-1"
-- 身上气力不足
tNpcGossip[21487]["Text7-1"] = {711}
tNpcGossip[21487]["tOption7-1"] = {711}
tNpcGossip[21487]["OptionPoint711"] = "1-1"
-- 押注气力不足（输入值比押注总数大）
tNpcGossip[21487]["Text8-1"] = {811}
tNpcGossip[21487]["tOption8-1"] = {811}
tNpcGossip[21487]["OptionPoint811"] = "1-1"
-- 身上气力达到上限
tNpcGossip[21487]["Text9-1"] = {911}
tNpcGossip[21487]["tOption9-1"] = {911}
tNpcGossip[21487]["OptionPoint911"] = "1-1"
-- 开轮盘cd
tNpcGossip[21487]["Text10-1"] = {1011}
tNpcGossip[21487]["tOption10-1"] = {1011}
tNpcGossip[21487]["OptionPoint1011"] = "1-1"

tNpcGossip[21487]["Text11-1"] = {1111}
tNpcGossip[21487]["tOption11-1"] = {1111}
tNpcGossip[21487]["OptionFunc1111"] = "NewGodOfGamblers_DoubleBet_ChipIn</N>21487</N>3</N>1"

tNpcGossip[21487]["Text12-1"] = {1211}
tNpcGossip[21487]["tOption12-1"] = {1211}
tNpcGossip[21487]["OptionFunc1211"] = "NewGodOfGamblers_DoubleBet_Return</N>21487</N>3</N>1"

tNpcGossip[21487]["Text13-1"] = {1311,1312,1313,1314,1315,1316}
tNpcGossip[21487]["tOption13-1"] = {1311,1312}
tNpcGossip[21487]["OptionFunc1311"] = "NewGodOfGamblers_DoubleBet_ClickDouble</N>21487"
tNpcGossip[21487]["OptionPoint1312"] = "1-1"

tNpcGossip[21487]["Text1-2"] = {121}
tNpcGossip[21487]["tOption1-2"] = {121}
tNpcGossip[21487]["ChkFunc1-2"] = function ()
	local nUserId = Get_UserId()
	local nTimerStc = tNewGodOfGamblers_DoubleBetRate["Stc"]
	local bFlag,nData = NewGodOfGamblers_Stc(nUserId,nTimerStc,1)
	if nData >= 1 then
		return true
	else
		return false
	end
end

-- 神纹精粹轮盘
tNpcFace[4395] = 1518
tNpcGossip[21488] = tNpcGossip[21488] or DefaultNpc:new{}
tNpcGossip[21488]["OptionHidden"] = 1
tNpcGossip[21488]["DialogueText"] = tNewGodOfGamblers_Text[21488]
tNpcGossip[21488]["Text1-1"] = {111,112,113,114,115,116,117,118}
tNpcGossip[21488]["tOption1-1"] = {111,113,114,115}
tNpcGossip[21488]["ChkFunc1-1"] = function ()
	local nUserId = Get_UserId()
	local nTimerStc = tNewGodOfGamblers_DoubleBetRate["Stc"]
	local bFlag,nData = NewGodOfGamblers_Stc(nUserId,nTimerStc,1)
	if nData >= 1 then
		return false
	end
	if NewGodOfGamblers_JudgeLevelAndMetem() then
		local bFlag1,nNowStake1 = NewGodOfGamblers_Stc(nUserId,4,1)
		local bFlag2,nNowStake2 = NewGodOfGamblers_Stc(nUserId,5,1)
		local bFlag3,nNowStake3 = NewGodOfGamblers_Stc(nUserId,6,1)
		local bFlag4,nNowStake4 = NewGodOfGamblers_Stc(nUserId,7,1)
		local bFlag5,nNowStake5 = NewGodOfGamblers_Stc(nUserId,8,1)
		local bFlag6,nNowStake6 = NewGodOfGamblers_Stc(nUserId,9,1)
		local sNowStake1 = string.format(tNewGodOfGamblers_Text[21488][1],nNowStake1)
		local sNowStake2 = string.format(tNewGodOfGamblers_Text[21488][2],nNowStake2)
		local sNowStake3 = string.format(tNewGodOfGamblers_Text[21488][3],nNowStake3)
		local sNowStake4 = string.format(tNewGodOfGamblers_Text[21488][4],nNowStake4)
		local sNowStake5 = string.format(tNewGodOfGamblers_Text[21488][5],nNowStake5)
		local sNowStake6 = string.format(tNewGodOfGamblers_Text[21488][6],nNowStake6)
		local nLeft = tNewGodOfGamblers_Cont["Alignment"][1]["Left"]
		local nMiddle = tNewGodOfGamblers_Cont["Alignment"][1]["Middle"]
		local nRight = tNewGodOfGamblers_Cont["Alignment"][1]["Right"]
		tNpcGossip[21488]["Text115"] = Sys_Alignment(sNowStake1,nLeft,sNowStake3,nMiddle,sNowStake5,nRight) .. "\n"
		tNpcGossip[21488]["Text116"] = Sys_Alignment(sNowStake2,nLeft,sNowStake4,nMiddle,sNowStake6,nRight) .. "\n"
		tNpcGossip[21488]["Text1-1"] = {111,112,113,114,115,116,117}
		tNpcGossip[21488]["tOption1-1"] = {111,113,114}
		if nNowStake1+nNowStake2+nNowStake3+nNowStake4+nNowStake5+nNowStake6 == 0 then
			tNpcGossip[21488]["tOption1-1"] = {111}
		end
	else
		tNpcGossip[21488]["Text1-1"] = {111,112,118,117}
		tNpcGossip[21488]["tOption1-1"] = {115}
	end
	return true
end	
-- 我要押注
tNpcGossip[21488]["OptionPoint111"] = "2-1"
tNpcGossip[21488]["OptionPoint112"] = "2-1"
-- 转动轮盘
tNpcGossip[21488]["OptionFunc113"] = "NewGodOfGamblers_DoubleBet_ClickDouble</N>21488</N>4"
-- 取回奖励
tNpcGossip[21488]["OptionPoint114"] = "3-1"

-- 我要押注
tNpcGossip[21488]["Text2-1"] = {211,212,213,214,215,216,217,218}
tNpcGossip[21488]["tOption2-1"] = {211,212,213,214,215,216,217}
tNpcGossip[21488]["ChkFunc2-1"] = function ()
	local nUserId = Get_UserId()
	local nTimerStc = tNewGodOfGamblers_DoubleBetRate["Stc"]
	local bFlag,nData = NewGodOfGamblers_Stc(nUserId,nTimerStc,1)
	if nData >= 1 then
		return false
	end
	local bFlag1,nNowStake1 = NewGodOfGamblers_Stc(nUserId,4,1)
	local bFlag2,nNowStake2 = NewGodOfGamblers_Stc(nUserId,5,1)
	local bFlag3,nNowStake3 = NewGodOfGamblers_Stc(nUserId,6,1)
	local bFlag4,nNowStake4 = NewGodOfGamblers_Stc(nUserId,7,1)
	local bFlag5,nNowStake5 = NewGodOfGamblers_Stc(nUserId,8,1)
	local bFlag6,nNowStake6 = NewGodOfGamblers_Stc(nUserId,9,1)
	local sNowStake1 = string.format(tNewGodOfGamblers_Text[21488][1],nNowStake1)
	local sNowStake2 = string.format(tNewGodOfGamblers_Text[21488][2],nNowStake2)
	local sNowStake3 = string.format(tNewGodOfGamblers_Text[21488][3],nNowStake3)
	local sNowStake4 = string.format(tNewGodOfGamblers_Text[21488][4],nNowStake4)
	local sNowStake5 = string.format(tNewGodOfGamblers_Text[21488][5],nNowStake5)
	local sNowStake6 = string.format(tNewGodOfGamblers_Text[21488][6],nNowStake6)
	local nLeft = tNewGodOfGamblers_Cont["Alignment"][1]["Left"]
	local nMiddle = tNewGodOfGamblers_Cont["Alignment"][1]["Middle"]
	local nRight = tNewGodOfGamblers_Cont["Alignment"][1]["Right"]
	tNpcGossip[21488]["Text215"] = Sys_Alignment(sNowStake1,nLeft,sNowStake3,nMiddle,sNowStake5,nRight) .. "\n"
	tNpcGossip[21488]["Text216"] = Sys_Alignment(sNowStake2,nLeft,sNowStake4,nMiddle,sNowStake6,nRight) .. "\n"
	return true
end	
-- 我要押注nNpcId,sText,sOptionFunc,sLink,nBetType,nStakeType,nItemtypeId
tNpcGossip[21488]["OptionFunc211"] = "NewGodOfGamblers_PointChipIn</N>21488</S>Text228</S>OptionFunc22</S>2-2</N>4</N>1</N>4040001"
tNpcGossip[21488]["OptionFunc212"] = "NewGodOfGamblers_PointChipIn</N>21488</S>Text238</S>OptionFunc23</S>2-3</N>4</N>2</N>4040001"
tNpcGossip[21488]["OptionFunc213"] = "NewGodOfGamblers_PointChipIn</N>21488</S>Text228</S>OptionFunc22</S>2-2</N>4</N>3</N>4050001"
tNpcGossip[21488]["OptionFunc214"] = "NewGodOfGamblers_PointChipIn</N>21488</S>Text238</S>OptionFunc23</S>2-3</N>4</N>4</N>4050001"
tNpcGossip[21488]["OptionFunc215"] = "NewGodOfGamblers_PointChipIn</N>21488</S>Text228</S>OptionFunc22</S>2-2</N>4</N>5</N>4060001"
tNpcGossip[21488]["OptionFunc216"] = "NewGodOfGamblers_PointChipIn</N>21488</S>Text238</S>OptionFunc23</S>2-3</N>4</N>6</N>4060001"
tNpcGossip[21488]["OptionFunc217"] = "NewGodOfGamblers_DoubleBet_ChipInByChoose</N>21488</N>4"

tNpcGossip[21488]["Text2-2"] = {221,222,223,224,225,226,227,228}
tNpcGossip[21488]["tOption2-2"] = {221,222,223}
tNpcGossip[21488]["ChkFunc2-2"] = function ()
	local nUserId = Get_UserId()
	local nTimerStc = tNewGodOfGamblers_DoubleBetRate["Stc"]
	local bFlag,nData = NewGodOfGamblers_Stc(nUserId,nTimerStc,1)
	if nData >= 1 then
		return false
	end
	local bFlag1,nNowStake1 = NewGodOfGamblers_Stc(nUserId,4,1)
	local bFlag2,nNowStake2 = NewGodOfGamblers_Stc(nUserId,5,1)
	local bFlag3,nNowStake3 = NewGodOfGamblers_Stc(nUserId,6,1)
	local bFlag4,nNowStake4 = NewGodOfGamblers_Stc(nUserId,7,1)
	local bFlag5,nNowStake5 = NewGodOfGamblers_Stc(nUserId,8,1)
	local bFlag6,nNowStake6 = NewGodOfGamblers_Stc(nUserId,9,1)
	local sNowStake1 = string.format(tNewGodOfGamblers_Text[21488][1],nNowStake1)
	local sNowStake2 = string.format(tNewGodOfGamblers_Text[21488][2],nNowStake2)
	local sNowStake3 = string.format(tNewGodOfGamblers_Text[21488][3],nNowStake3)
	local sNowStake4 = string.format(tNewGodOfGamblers_Text[21488][4],nNowStake4)
	local sNowStake5 = string.format(tNewGodOfGamblers_Text[21488][5],nNowStake5)
	local sNowStake6 = string.format(tNewGodOfGamblers_Text[21488][6],nNowStake6)
	local nLeft = tNewGodOfGamblers_Cont["Alignment"][1]["Left"]
	local nMiddle = tNewGodOfGamblers_Cont["Alignment"][1]["Middle"]
	local nRight = tNewGodOfGamblers_Cont["Alignment"][1]["Right"]
	tNpcGossip[21488]["Text225"] = Sys_Alignment(sNowStake1,nLeft,sNowStake3,nMiddle,sNowStake5,nRight) .. "\n"
	tNpcGossip[21488]["Text226"] = Sys_Alignment(sNowStake2,nLeft,sNowStake4,nMiddle,sNowStake6,nRight) .. "\n"
	return true
end

tNpcGossip[21488]["Text2-3"] = {231,232,233,234,235,236,237,238}
tNpcGossip[21488]["tOption2-3"] = {231,232,233}
tNpcGossip[21488]["ChkFunc2-3"] = function ()
	local nUserId = Get_UserId()
	local nTimerStc = tNewGodOfGamblers_DoubleBetRate["Stc"]
	local bFlag,nData = NewGodOfGamblers_Stc(nUserId,nTimerStc,1)
	if nData >= 1 then
		return false
	end
	local bFlag1,nNowStake1 = NewGodOfGamblers_Stc(nUserId,4,1)
	local bFlag2,nNowStake2 = NewGodOfGamblers_Stc(nUserId,5,1)
	local bFlag3,nNowStake3 = NewGodOfGamblers_Stc(nUserId,6,1)
	local bFlag4,nNowStake4 = NewGodOfGamblers_Stc(nUserId,7,1)
	local bFlag5,nNowStake5 = NewGodOfGamblers_Stc(nUserId,8,1)
	local bFlag6,nNowStake6 = NewGodOfGamblers_Stc(nUserId,9,1)
	local sNowStake1 = string.format(tNewGodOfGamblers_Text[21488][1],nNowStake1)
	local sNowStake2 = string.format(tNewGodOfGamblers_Text[21488][2],nNowStake2)
	local sNowStake3 = string.format(tNewGodOfGamblers_Text[21488][3],nNowStake3)
	local sNowStake4 = string.format(tNewGodOfGamblers_Text[21488][4],nNowStake4)
	local sNowStake5 = string.format(tNewGodOfGamblers_Text[21488][5],nNowStake5)
	local sNowStake6 = string.format(tNewGodOfGamblers_Text[21488][6],nNowStake6)
	local nLeft = tNewGodOfGamblers_Cont["Alignment"][1]["Left"]
	local nMiddle = tNewGodOfGamblers_Cont["Alignment"][1]["Middle"]
	local nRight = tNewGodOfGamblers_Cont["Alignment"][1]["Right"]
	tNpcGossip[21488]["Text235"] = Sys_Alignment(sNowStake1,nLeft,sNowStake3,nMiddle,sNowStake5,nRight) .. "\n"
	tNpcGossip[21488]["Text236"] = Sys_Alignment(sNowStake2,nLeft,sNowStake4,nMiddle,sNowStake6,nRight) .. "\n"
	return true
end

-- 我要取回
tNpcGossip[21488]["Text3-1"] = {311,312,313,314,315,316,317,318}
tNpcGossip[21488]["tOption3-1"] = {311,312,313,314,315,316,317}
tNpcGossip[21488]["ChkFunc3-1"] = function ()
	local nUserId = Get_UserId()
	local nTimerStc = tNewGodOfGamblers_DoubleBetRate["Stc"]
	local bFlag,nData = NewGodOfGamblers_Stc(nUserId,nTimerStc,1)
	if nData >= 1 then
		return false
	end
	local bFlag1,nNowStake1 = NewGodOfGamblers_Stc(nUserId,4,1)
	local bFlag2,nNowStake2 = NewGodOfGamblers_Stc(nUserId,5,1)
	local bFlag3,nNowStake3 = NewGodOfGamblers_Stc(nUserId,6,1)
	local bFlag4,nNowStake4 = NewGodOfGamblers_Stc(nUserId,7,1)
	local bFlag5,nNowStake5 = NewGodOfGamblers_Stc(nUserId,8,1)
	local bFlag6,nNowStake6 = NewGodOfGamblers_Stc(nUserId,9,1)
	local sNowStake1 = string.format(tNewGodOfGamblers_Text[21488][1],nNowStake1)
	local sNowStake2 = string.format(tNewGodOfGamblers_Text[21488][2],nNowStake2)
	local sNowStake3 = string.format(tNewGodOfGamblers_Text[21488][3],nNowStake3)
	local sNowStake4 = string.format(tNewGodOfGamblers_Text[21488][4],nNowStake4)
	local sNowStake5 = string.format(tNewGodOfGamblers_Text[21488][5],nNowStake5)
	local sNowStake6 = string.format(tNewGodOfGamblers_Text[21488][6],nNowStake6)
	local nLeft = tNewGodOfGamblers_Cont["Alignment"][1]["Left"]
	local nMiddle = tNewGodOfGamblers_Cont["Alignment"][1]["Middle"]
	local nRight = tNewGodOfGamblers_Cont["Alignment"][1]["Right"]
	tNpcGossip[21488]["Text315"] = Sys_Alignment(sNowStake1,nLeft,sNowStake3,nMiddle,sNowStake5,nRight) .. "\n"
	tNpcGossip[21488]["Text316"] = Sys_Alignment(sNowStake2,nLeft,sNowStake4,nMiddle,sNowStake6,nRight) .. "\n"
	return true
end	
-- 我要押注nNpcId,sText,sOptionFunc,sLink,nBetType,nStakeType,nItemtypeId
tNpcGossip[21488]["OptionFunc311"] = "NewGodOfGamblers_PointReturn</N>21488</S>Text328</S>OptionFunc32</S>3-2</N>4</N>1</N>4040001"
tNpcGossip[21488]["OptionFunc312"] = "NewGodOfGamblers_PointReturn</N>21488</S>Text338</S>OptionFunc33</S>3-3</N>4</N>2</N>4040001"
tNpcGossip[21488]["OptionFunc313"] = "NewGodOfGamblers_PointReturn</N>21488</S>Text328</S>OptionFunc32</S>3-2</N>4</N>3</N>4050001"
tNpcGossip[21488]["OptionFunc314"] = "NewGodOfGamblers_PointReturn</N>21488</S>Text338</S>OptionFunc33</S>3-3</N>4</N>4</N>4050001"
tNpcGossip[21488]["OptionFunc315"] = "NewGodOfGamblers_PointReturn</N>21488</S>Text328</S>OptionFunc32</S>3-2</N>4</N>5</N>4060001"
tNpcGossip[21488]["OptionFunc316"] = "NewGodOfGamblers_PointReturn</N>21488</S>Text338</S>OptionFunc33</S>3-3</N>4</N>6</N>4060001"
tNpcGossip[21488]["OptionFunc317"] = "NewGodOfGamblers_DoubleBet_ReturnByChoose</N>21488</N>4"

tNpcGossip[21488]["Text3-2"] = {321,322,323,324,325,326,327,328}
tNpcGossip[21488]["tOption3-2"] = {321,322,323}
tNpcGossip[21488]["ChkFunc3-2"] = function ()
	local nUserId = Get_UserId()
	local nTimerStc = tNewGodOfGamblers_DoubleBetRate["Stc"]
	local bFlag,nData = NewGodOfGamblers_Stc(nUserId,nTimerStc,1)
	if nData >= 1 then
		return false
	end
	local bFlag1,nNowStake1 = NewGodOfGamblers_Stc(nUserId,4,1)
	local bFlag2,nNowStake2 = NewGodOfGamblers_Stc(nUserId,5,1)
	local bFlag3,nNowStake3 = NewGodOfGamblers_Stc(nUserId,6,1)
	local bFlag4,nNowStake4 = NewGodOfGamblers_Stc(nUserId,7,1)
	local bFlag5,nNowStake5 = NewGodOfGamblers_Stc(nUserId,8,1)
	local bFlag6,nNowStake6 = NewGodOfGamblers_Stc(nUserId,9,1)
	local sNowStake1 = string.format(tNewGodOfGamblers_Text[21488][1],nNowStake1)
	local sNowStake2 = string.format(tNewGodOfGamblers_Text[21488][2],nNowStake2)
	local sNowStake3 = string.format(tNewGodOfGamblers_Text[21488][3],nNowStake3)
	local sNowStake4 = string.format(tNewGodOfGamblers_Text[21488][4],nNowStake4)
	local sNowStake5 = string.format(tNewGodOfGamblers_Text[21488][5],nNowStake5)
	local sNowStake6 = string.format(tNewGodOfGamblers_Text[21488][6],nNowStake6)
	local nLeft = tNewGodOfGamblers_Cont["Alignment"][1]["Left"]
	local nMiddle = tNewGodOfGamblers_Cont["Alignment"][1]["Middle"]
	local nRight = tNewGodOfGamblers_Cont["Alignment"][1]["Right"]
	tNpcGossip[21488]["Text325"] = Sys_Alignment(sNowStake1,nLeft,sNowStake3,nMiddle,sNowStake5,nRight) .. "\n"
	tNpcGossip[21488]["Text326"] = Sys_Alignment(sNowStake2,nLeft,sNowStake4,nMiddle,sNowStake6,nRight) .. "\n"
	return true
end

tNpcGossip[21488]["Text3-3"] = {331,332,333,334,335,336,337,338}
tNpcGossip[21488]["tOption3-3"] = {331,332,333}
tNpcGossip[21488]["ChkFunc3-3"] = function ()
	local nUserId = Get_UserId()
	local nTimerStc = tNewGodOfGamblers_DoubleBetRate["Stc"]
	local bFlag,nData = NewGodOfGamblers_Stc(nUserId,nTimerStc,1)
	if nData >= 1 then
		return false
	end
	local bFlag1,nNowStake1 = NewGodOfGamblers_Stc(nUserId,4,1)
	local bFlag2,nNowStake2 = NewGodOfGamblers_Stc(nUserId,5,1)
	local bFlag3,nNowStake3 = NewGodOfGamblers_Stc(nUserId,6,1)
	local bFlag4,nNowStake4 = NewGodOfGamblers_Stc(nUserId,7,1)
	local bFlag5,nNowStake5 = NewGodOfGamblers_Stc(nUserId,8,1)
	local bFlag6,nNowStake6 = NewGodOfGamblers_Stc(nUserId,9,1)
	local sNowStake1 = string.format(tNewGodOfGamblers_Text[21488][1],nNowStake1)
	local sNowStake2 = string.format(tNewGodOfGamblers_Text[21488][2],nNowStake2)
	local sNowStake3 = string.format(tNewGodOfGamblers_Text[21488][3],nNowStake3)
	local sNowStake4 = string.format(tNewGodOfGamblers_Text[21488][4],nNowStake4)
	local sNowStake5 = string.format(tNewGodOfGamblers_Text[21488][5],nNowStake5)
	local sNowStake6 = string.format(tNewGodOfGamblers_Text[21488][6],nNowStake6)
	local nLeft = tNewGodOfGamblers_Cont["Alignment"][1]["Left"]
	local nMiddle = tNewGodOfGamblers_Cont["Alignment"][1]["Middle"]
	local nRight = tNewGodOfGamblers_Cont["Alignment"][1]["Right"]
	tNpcGossip[21488]["Text335"] = Sys_Alignment(sNowStake1,nLeft,sNowStake3,nMiddle,sNowStake5,nRight) .. "\n"
	tNpcGossip[21488]["Text336"] = Sys_Alignment(sNowStake2,nLeft,sNowStake4,nMiddle,sNowStake6,nRight) .. "\n"
	return true
end


-- 押注数量太少，无法翻倍
tNpcGossip[21488]["Text4-1"] = {411}
tNpcGossip[21488]["tOption4-1"] = {411}
tNpcGossip[21488]["OptionPoint411"] = "1-1"
-- 押注数不足，无法取回
tNpcGossip[21488]["Text5-1"] = {511}
tNpcGossip[21488]["tOption5-1"] = {511}
tNpcGossip[21488]["OptionPoint511"] = "1-1"
-- 输入的不是大于0的整数
-- tNpcGossip[21488]["Text6-1"] = {611}
-- tNpcGossip[21488]["tOption6-1"] = {611}
-- tNpcGossip[21488]["OptionPoint611"] = "1-1"
-- 没有足够的可押注的物品
tNpcGossip[21488]["Text7-1"] = {711}
tNpcGossip[21488]["tOption7-1"] = {711}
tNpcGossip[21488]["OptionPoint711"] = "1-1"
-- 总押注数达到上限
tNpcGossip[21488]["Text8-1"] = {811}
tNpcGossip[21488]["tOption8-1"] = {811}
tNpcGossip[21488]["OptionPoint811"] = "1-1"
-- 身上气力达到上限
-- tNpcGossip[21488]["Text9-1"] = {911}
-- tNpcGossip[21488]["tOption9-1"] = {911}
-- tNpcGossip[21488]["OptionPoint911"] = "1-1"
-- 开轮盘cd
tNpcGossip[21488]["Text10-1"] = {1011}
tNpcGossip[21488]["tOption10-1"] = {1011}
tNpcGossip[21488]["OptionPoint1011"] = "1-1"

tNpcGossip[21488]["Text11-1"] = {1111}
tNpcGossip[21488]["tOption11-1"] = {1111}
tNpcGossip[21488]["OptionPoint1111"] = "2-1"

tNpcGossip[21488]["Text12-1"] = {1211}
tNpcGossip[21488]["tOption12-1"] = {1211}
tNpcGossip[21488]["OptionPoint1211"] = "3-1"

tNpcGossip[21488]["Text13-1"] = {1311,1312,1313,1314,1315,1316}
tNpcGossip[21488]["tOption13-1"] = {1311,1312}
tNpcGossip[21488]["OptionFunc1311"] = "NewGodOfGamblers_DoubleBet_ClickDouble</N>21488"
tNpcGossip[21488]["OptionPoint1312"] = "1-1"

tNpcGossip[21488]["Text1-2"] = {121}
tNpcGossip[21488]["tOption1-2"] = {121}
tNpcGossip[21488]["ChkFunc1-2"] = function ()
	local nUserId = Get_UserId()
	local nTimerStc = tNewGodOfGamblers_DoubleBetRate["Stc"]
	local bFlag,nData = NewGodOfGamblers_Stc(nUserId,nTimerStc,1)
	if nData >= 1 then
		return true
	else
		return false
	end
end
	
-- 赤炼石轮盘
tNpcFace[4394] = 1518
tNpcGossip[21489] = tNpcGossip[21489] or DefaultNpc:new{}
tNpcGossip[21489]["OptionHidden"] = 1
tNpcGossip[21489]["DialogueText"] = tNewGodOfGamblers_Text[21489]
tNpcGossip[21489]["Text1-1"] = {111,112,113,114,115,116,117}
tNpcGossip[21489]["tOption1-1"] = {111,113,114,115}
tNpcGossip[21489]["ChkFunc1-1"] = function ()
	local nUserId = Get_UserId()
	local nTimerStc = tNewGodOfGamblers_DoubleBetRate["Stc"]
	local bFlag,nData = NewGodOfGamblers_Stc(nUserId,nTimerStc,1)
	if nData >= 1 then
		return false
	end
	if NewGodOfGamblers_JudgeLevelAndMetem() then
		local bFlag1,nNowStake1 = NewGodOfGamblers_Stc(nUserId,10,1)
		local bFlag2,nNowStake2 = NewGodOfGamblers_Stc(nUserId,11,1)
		local sNowStake1 = string.format(tNewGodOfGamblers_Text[21489][1],nNowStake1)
		local sNowStake2 = string.format(tNewGodOfGamblers_Text[21489][2],nNowStake2)
		local nLeft = tNewGodOfGamblers_Cont["Alignment"][2]["Left"]
		local nMiddle = tNewGodOfGamblers_Cont["Alignment"][2]["Middle"]
		tNpcGossip[21489]["Text115"] = Sys_Alignment(sNowStake1,nLeft,sNowStake2,nMiddle) .. "\n"
		tNpcGossip[21489]["Text1-1"] = {111,112,113,114,115,116}
		tNpcGossip[21489]["tOption1-1"] = {111,113,114}
		if nNowStake1+nNowStake2 == 0 then
			tNpcGossip[21489]["tOption1-1"] = {111}
		end
	else
		tNpcGossip[21489]["Text1-1"] = {111,112,117,116}
		tNpcGossip[21489]["tOption1-1"] = {115}
	end
	return true
end	
-- 我要押注
tNpcGossip[21489]["OptionPoint111"] = "2-1"
tNpcGossip[21489]["OptionPoint112"] = "2-1"
-- 转动轮盘
tNpcGossip[21489]["OptionFunc113"] = "NewGodOfGamblers_DoubleBet_ClickDouble</N>21489</N>5"
-- 取回奖励
tNpcGossip[21489]["OptionPoint114"] = "3-1"

-- 我要押注
tNpcGossip[21489]["Text2-1"] = {211,212,213,214,215,216,217}
tNpcGossip[21489]["tOption2-1"] = {211,212,213}
tNpcGossip[21489]["ChkFunc2-1"] = function ()
	local nUserId = Get_UserId()
	local nTimerStc = tNewGodOfGamblers_DoubleBetRate["Stc"]
	local bFlag,nData = NewGodOfGamblers_Stc(nUserId,nTimerStc,1)
	if nData >= 1 then
		return false
	end
	local bFlag1,nNowStake1 = NewGodOfGamblers_Stc(nUserId,10,1)
	local bFlag2,nNowStake2 = NewGodOfGamblers_Stc(nUserId,11,1)
	local sNowStake1 = string.format(tNewGodOfGamblers_Text[21489][1],nNowStake1)
	local sNowStake2 = string.format(tNewGodOfGamblers_Text[21489][2],nNowStake2)
	local nLeft = tNewGodOfGamblers_Cont["Alignment"][2]["Left"]
	local nMiddle = tNewGodOfGamblers_Cont["Alignment"][2]["Middle"]
	tNpcGossip[21489]["Text215"] = Sys_Alignment(sNowStake1,nLeft,sNowStake2,nMiddle) .. "\n"
	return true
end	
-- 我要押注
tNpcGossip[21489]["OptionPoint211"] = "2-2"
tNpcGossip[21489]["OptionPoint212"] = "2-4"
tNpcGossip[21489]["OptionFunc213"] = "NewGodOfGamblers_DoubleBet_ChipInByChoose</N>21489</N>5"

-- 我要押注
tNpcGossip[21489]["Text2-2"] = {221,222,223,224,225,226,227}
tNpcGossip[21489]["tOption2-2"] = {221,222,223,224,225,226,227}
tNpcGossip[21489]["ChkFunc2-2"] = function ()
	local nUserId = Get_UserId()
	local nTimerStc = tNewGodOfGamblers_DoubleBetRate["Stc"]
	local bFlag,nData = NewGodOfGamblers_Stc(nUserId,nTimerStc,1)
	if nData >= 1 then
		return false
	end
	local bFlag1,nNowStake1 = NewGodOfGamblers_Stc(nUserId,10,1)
	local bFlag2,nNowStake2 = NewGodOfGamblers_Stc(nUserId,11,1)
	local sNowStake1 = string.format(tNewGodOfGamblers_Text[21489][1],nNowStake1)
	local sNowStake2 = string.format(tNewGodOfGamblers_Text[21489][2],nNowStake2)
	local nLeft = tNewGodOfGamblers_Cont["Alignment"][2]["Left"]
	local nMiddle = tNewGodOfGamblers_Cont["Alignment"][2]["Middle"]
	tNpcGossip[21489]["Text225"] = Sys_Alignment(sNowStake1,nLeft,sNowStake2,nMiddle) .. "\n"
	return true
end	
-- 我要押注
tNpcGossip[21489]["OptionFunc221"] = "NewGodOfGamblers_PointChipIn</N>21489</S>Text237</S>OptionFunc23</S>2-3</N>5</N>1</N>730001"
tNpcGossip[21489]["OptionFunc222"] = "NewGodOfGamblers_PointChipIn</N>21489</S>Text237</S>OptionFunc23</S>2-3</N>5</N>1</N>730002"
tNpcGossip[21489]["OptionFunc223"] = "NewGodOfGamblers_PointChipIn</N>21489</S>Text237</S>OptionFunc23</S>2-3</N>5</N>1</N>730003"
tNpcGossip[21489]["OptionFunc224"] = "NewGodOfGamblers_PointChipIn</N>21489</S>Text237</S>OptionFunc23</S>2-3</N>5</N>1</N>730004"
tNpcGossip[21489]["OptionFunc225"] = "NewGodOfGamblers_PointChipIn</N>21489</S>Text237</S>OptionFunc23</S>2-3</N>5</N>1</N>730005"
tNpcGossip[21489]["OptionFunc226"] = "NewGodOfGamblers_PointChipIn</N>21489</S>Text237</S>OptionFunc23</S>2-3</N>5</N>1</N>730006"
tNpcGossip[21489]["OptionFunc227"] = "NewGodOfGamblers_DoubleBet_ChipInByChoose</N>21489</N>5</N>1"

tNpcGossip[21489]["Text2-3"] = {231,232,233,234,235,236,237}
tNpcGossip[21489]["tOption2-3"] = {231,232,233}
tNpcGossip[21489]["ChkFunc2-3"] = function ()
	local nUserId = Get_UserId()
	local nTimerStc = tNewGodOfGamblers_DoubleBetRate["Stc"]
	local bFlag,nData = NewGodOfGamblers_Stc(nUserId,nTimerStc,1)
	if nData >= 1 then
		return false
	end
	local bFlag1,nNowStake1 = NewGodOfGamblers_Stc(nUserId,10,1)
	local bFlag2,nNowStake2 = NewGodOfGamblers_Stc(nUserId,11,1)
	local sNowStake1 = string.format(tNewGodOfGamblers_Text[21489][1],nNowStake1)
	local sNowStake2 = string.format(tNewGodOfGamblers_Text[21489][2],nNowStake2)
	local nLeft = tNewGodOfGamblers_Cont["Alignment"][2]["Left"]
	local nMiddle = tNewGodOfGamblers_Cont["Alignment"][2]["Middle"]
	tNpcGossip[21489]["Text235"] = Sys_Alignment(sNowStake1,nLeft,sNowStake2,nMiddle) .. "\n"
	return true
end

-- 我要押注
tNpcGossip[21489]["Text2-4"] = {241,242,243,244,245,246,247}
tNpcGossip[21489]["tOption2-4"] = {241,242,243,244,245,246,247}
tNpcGossip[21489]["ChkFunc2-4"] = function ()
	local nUserId = Get_UserId()
	local nTimerStc = tNewGodOfGamblers_DoubleBetRate["Stc"]
	local bFlag,nData = NewGodOfGamblers_Stc(nUserId,nTimerStc,1)
	if nData >= 1 then
		return false
	end
	local bFlag1,nNowStake1 = NewGodOfGamblers_Stc(nUserId,10,1)
	local bFlag2,nNowStake2 = NewGodOfGamblers_Stc(nUserId,11,1)
	local sNowStake1 = string.format(tNewGodOfGamblers_Text[21489][1],nNowStake1)
	local sNowStake2 = string.format(tNewGodOfGamblers_Text[21489][2],nNowStake2)
	local nLeft = tNewGodOfGamblers_Cont["Alignment"][2]["Left"]
	local nMiddle = tNewGodOfGamblers_Cont["Alignment"][2]["Middle"]
	tNpcGossip[21489]["Text245"] = Sys_Alignment(sNowStake1,nLeft,sNowStake2,nMiddle) .. "\n"
	return true
end	
-- 我要押注
tNpcGossip[21489]["OptionFunc241"] = "NewGodOfGamblers_PointChipIn</N>21489</S>Text257</S>OptionFunc25</S>2-5</N>5</N>2</N>730001"
tNpcGossip[21489]["OptionFunc242"] = "NewGodOfGamblers_PointChipIn</N>21489</S>Text257</S>OptionFunc25</S>2-5</N>5</N>2</N>730002"
tNpcGossip[21489]["OptionFunc243"] = "NewGodOfGamblers_PointChipIn</N>21489</S>Text257</S>OptionFunc25</S>2-5</N>5</N>2</N>730003"
tNpcGossip[21489]["OptionFunc244"] = "NewGodOfGamblers_PointChipIn</N>21489</S>Text257</S>OptionFunc25</S>2-5</N>5</N>2</N>730004"
tNpcGossip[21489]["OptionFunc245"] = "NewGodOfGamblers_PointChipIn</N>21489</S>Text257</S>OptionFunc25</S>2-5</N>5</N>2</N>730005"
tNpcGossip[21489]["OptionFunc246"] = "NewGodOfGamblers_PointChipIn</N>21489</S>Text257</S>OptionFunc25</S>2-5</N>5</N>2</N>730006"
tNpcGossip[21489]["OptionFunc247"] = "NewGodOfGamblers_DoubleBet_ChipInByChoose</N>21489</N>5</N>2"

tNpcGossip[21489]["Text2-5"] = {251,252,253,254,255,256,257}
tNpcGossip[21489]["tOption2-5"] = {251,252,253}
tNpcGossip[21489]["ChkFunc2-5"] = function ()
	local nUserId = Get_UserId()
	local nTimerStc = tNewGodOfGamblers_DoubleBetRate["Stc"]
	local bFlag,nData = NewGodOfGamblers_Stc(nUserId,nTimerStc,1)
	if nData >= 1 then
		return false
	end
	local bFlag1,nNowStake1 = NewGodOfGamblers_Stc(nUserId,10,1)
	local bFlag2,nNowStake2 = NewGodOfGamblers_Stc(nUserId,11,1)
	local sNowStake1 = string.format(tNewGodOfGamblers_Text[21489][1],nNowStake1)
	local sNowStake2 = string.format(tNewGodOfGamblers_Text[21489][2],nNowStake2)
	local nLeft = tNewGodOfGamblers_Cont["Alignment"][2]["Left"]
	local nMiddle = tNewGodOfGamblers_Cont["Alignment"][2]["Middle"]
	tNpcGossip[21489]["Text255"] = Sys_Alignment(sNowStake1,nLeft,sNowStake2,nMiddle) .. "\n"
	return true
end

-- 我要取回
tNpcGossip[21489]["Text3-1"] = {311,312,313,314,315,316,317}
tNpcGossip[21489]["tOption3-1"] = {311,312,313,314,315,316,317}
tNpcGossip[21489]["ChkFunc3-1"] = function ()
	local nUserId = Get_UserId()
	local nTimerStc = tNewGodOfGamblers_DoubleBetRate["Stc"]
	local bFlag,nData = NewGodOfGamblers_Stc(nUserId,nTimerStc,1)
	if nData >= 1 then
		return false
	end
	local bFlag1,nNowStake1 = NewGodOfGamblers_Stc(nUserId,10,1)
	local bFlag2,nNowStake2 = NewGodOfGamblers_Stc(nUserId,11,1)
	local sNowStake1 = string.format(tNewGodOfGamblers_Text[21489][1],nNowStake1)
	local sNowStake2 = string.format(tNewGodOfGamblers_Text[21489][2],nNowStake2)
	local nLeft = tNewGodOfGamblers_Cont["Alignment"][2]["Left"]
	local nMiddle = tNewGodOfGamblers_Cont["Alignment"][2]["Middle"]
	tNpcGossip[21489]["Text315"] = Sys_Alignment(sNowStake1,nLeft,sNowStake2,nMiddle) .. "\n"
	return true
end	
-- 我要押注
tNpcGossip[21489]["OptionPoint311"] = "3-2"
tNpcGossip[21489]["OptionPoint312"] = "3-4"
tNpcGossip[21489]["OptionFunc313"] = "NewGodOfGamblers_DoubleBet_ReturnByChoose</N>21489</N>5"

tNpcGossip[21489]["Text3-2"] = {321,322,323,324,325,326,327}
tNpcGossip[21489]["tOption3-2"] = {322,323,324,325,326,327}
tNpcGossip[21489]["ChkFunc3-2"] = function ()
	local nUserId = Get_UserId()
	local nTimerStc = tNewGodOfGamblers_DoubleBetRate["Stc"]
	local bFlag,nData = NewGodOfGamblers_Stc(nUserId,nTimerStc,1)
	if nData >= 1 then
		return false
	end
	local bFlag1,nNowStake1 = NewGodOfGamblers_Stc(nUserId,10,1)
	local bFlag2,nNowStake2 = NewGodOfGamblers_Stc(nUserId,11,1)
	local sNowStake1 = string.format(tNewGodOfGamblers_Text[21489][1],nNowStake1)
	local sNowStake2 = string.format(tNewGodOfGamblers_Text[21489][2],nNowStake2)
	local nLeft = tNewGodOfGamblers_Cont["Alignment"][2]["Left"]
	local nMiddle = tNewGodOfGamblers_Cont["Alignment"][2]["Middle"]
	tNpcGossip[21489]["Text325"] = Sys_Alignment(sNowStake1,nLeft,sNowStake2,nMiddle) .. "\n"
	return true
end	
-- 我要押注nNpcId,sText,sOptionFunc,sLink,nBetType,nStakeType,nItemtypeId
-- tNpcGossip[21489]["OptionFunc321"] = "NewGodOfGamblers_PointReturn</N>21489</S>Text337</S>OptionFunc33</S>3-3</N>5</N>1</N>730001"
tNpcGossip[21489]["OptionFunc322"] = "NewGodOfGamblers_PointReturn</N>21489</S>Text337</S>OptionFunc33</S>3-3</N>5</N>1</N>730002"
tNpcGossip[21489]["OptionFunc323"] = "NewGodOfGamblers_PointReturn</N>21489</S>Text337</S>OptionFunc33</S>3-3</N>5</N>1</N>730003"
tNpcGossip[21489]["OptionFunc324"] = "NewGodOfGamblers_PointReturn</N>21489</S>Text337</S>OptionFunc33</S>3-3</N>5</N>1</N>730004"
tNpcGossip[21489]["OptionFunc325"] = "NewGodOfGamblers_PointReturn</N>21489</S>Text337</S>OptionFunc33</S>3-3</N>5</N>1</N>730005"
tNpcGossip[21489]["OptionFunc326"] = "NewGodOfGamblers_PointReturn</N>21489</S>Text337</S>OptionFunc33</S>3-3</N>5</N>1</N>730006"
tNpcGossip[21489]["OptionFunc327"] = "NewGodOfGamblers_DoubleBet_ReturnByChoose</N>21489</N>5</N>1"

tNpcGossip[21489]["Text3-3"] = {331,332,333,334,335,336,337,338}
tNpcGossip[21489]["tOption3-3"] = {331,332,333}
tNpcGossip[21489]["ChkFunc3-3"] = function ()
	local nUserId = Get_UserId()
	local nTimerStc = tNewGodOfGamblers_DoubleBetRate["Stc"]
	local bFlag,nData = NewGodOfGamblers_Stc(nUserId,nTimerStc,1)
	if nData >= 1 then
		return false
	end
	local bFlag1,nNowStake1 = NewGodOfGamblers_Stc(nUserId,10,1)
	local bFlag2,nNowStake2 = NewGodOfGamblers_Stc(nUserId,11,1)
	local sNowStake1 = string.format(tNewGodOfGamblers_Text[21489][1],nNowStake1)
	local sNowStake2 = string.format(tNewGodOfGamblers_Text[21489][2],nNowStake2)
	local nLeft = tNewGodOfGamblers_Cont["Alignment"][2]["Left"]
	local nMiddle = tNewGodOfGamblers_Cont["Alignment"][2]["Middle"]
	tNpcGossip[21489]["Text335"] = Sys_Alignment(sNowStake1,nLeft,sNowStake2,nMiddle) .. "\n"
	return true
end

tNpcGossip[21489]["Text3-4"] = {341,342,343,344,345,346,347}
tNpcGossip[21489]["tOption3-4"] = {342,343,344,345,346,347}
tNpcGossip[21489]["ChkFunc3-4"] = function ()
	local nUserId = Get_UserId()
	local nTimerStc = tNewGodOfGamblers_DoubleBetRate["Stc"]
	local bFlag,nData = NewGodOfGamblers_Stc(nUserId,nTimerStc,1)
	if nData >= 1 then
		return false
	end
	local bFlag1,nNowStake1 = NewGodOfGamblers_Stc(nUserId,10,1)
	local bFlag2,nNowStake2 = NewGodOfGamblers_Stc(nUserId,11,1)
	local sNowStake1 = string.format(tNewGodOfGamblers_Text[21489][1],nNowStake1)
	local sNowStake2 = string.format(tNewGodOfGamblers_Text[21489][2],nNowStake2)
	local nLeft = tNewGodOfGamblers_Cont["Alignment"][2]["Left"]
	local nMiddle = tNewGodOfGamblers_Cont["Alignment"][2]["Middle"]
	tNpcGossip[21489]["Text345"] = Sys_Alignment(sNowStake1,nLeft,sNowStake2,nMiddle) .. "\n"
	return true
end	
-- 我要押注nNpcId,sText,sOptionFunc,sLink,nBetType,nStakeType,nItemtypeId
-- tNpcGossip[21489]["OptionFunc341"] = "NewGodOfGamblers_PointReturn</N>21489</S>Text357</S>OptionFunc35</S>3-5</N>5</N>2</N>730001"
tNpcGossip[21489]["OptionFunc342"] = "NewGodOfGamblers_PointReturn</N>21489</S>Text357</S>OptionFunc35</S>3-5</N>5</N>2</N>730002"
tNpcGossip[21489]["OptionFunc343"] = "NewGodOfGamblers_PointReturn</N>21489</S>Text357</S>OptionFunc35</S>3-5</N>5</N>2</N>730003"
tNpcGossip[21489]["OptionFunc344"] = "NewGodOfGamblers_PointReturn</N>21489</S>Text357</S>OptionFunc35</S>3-5</N>5</N>2</N>730004"
tNpcGossip[21489]["OptionFunc345"] = "NewGodOfGamblers_PointReturn</N>21489</S>Text357</S>OptionFunc35</S>3-5</N>5</N>2</N>730005"
tNpcGossip[21489]["OptionFunc346"] = "NewGodOfGamblers_PointReturn</N>21489</S>Text357</S>OptionFunc35</S>3-5</N>5</N>2</N>730006"
tNpcGossip[21489]["OptionFunc347"] = "NewGodOfGamblers_DoubleBet_ReturnByChoose</N>21489</N>5</N>2"

tNpcGossip[21489]["Text3-5"] = {351,352,353,354,355,356,357,358}
tNpcGossip[21489]["tOption3-5"] = {351,352,353}
tNpcGossip[21489]["ChkFunc3-5"] = function ()
	local nUserId = Get_UserId()
	local nTimerStc = tNewGodOfGamblers_DoubleBetRate["Stc"]
	local bFlag,nData = NewGodOfGamblers_Stc(nUserId,nTimerStc,1)
	if nData >= 1 then
		return false
	end
	local bFlag1,nNowStake1 = NewGodOfGamblers_Stc(nUserId,10,1)
	local bFlag2,nNowStake2 = NewGodOfGamblers_Stc(nUserId,11,1)
	local sNowStake1 = string.format(tNewGodOfGamblers_Text[21489][1],nNowStake1)
	local sNowStake2 = string.format(tNewGodOfGamblers_Text[21489][2],nNowStake2)
	local nLeft = tNewGodOfGamblers_Cont["Alignment"][2]["Left"]
	local nMiddle = tNewGodOfGamblers_Cont["Alignment"][2]["Middle"]
	tNpcGossip[21489]["Text355"] = Sys_Alignment(sNowStake1,nLeft,sNowStake2,nMiddle) .. "\n"
	return true
end


-- 押注数量太少，无法翻倍
tNpcGossip[21489]["Text4-1"] = {411}
tNpcGossip[21489]["tOption4-1"] = {411}
tNpcGossip[21489]["OptionPoint411"] = "1-1"
-- 押注数不足，无法取回
tNpcGossip[21489]["Text5-1"] = {511}
tNpcGossip[21489]["tOption5-1"] = {511}
tNpcGossip[21489]["OptionPoint511"] = "1-1"
-- 输入的不是大于0的整数
-- tNpcGossip[21489]["Text6-1"] = {611}
-- tNpcGossip[21489]["tOption6-1"] = {611}
-- tNpcGossip[21489]["OptionPoint611"] = "1-1"
-- 没有足够的可押注的物品
tNpcGossip[21489]["Text7-1"] = {711}
tNpcGossip[21489]["tOption7-1"] = {711}
tNpcGossip[21489]["OptionPoint711"] = "1-1"
-- 总押注数达到上限
tNpcGossip[21489]["Text8-1"] = {811}
tNpcGossip[21489]["tOption8-1"] = {811}
tNpcGossip[21489]["OptionPoint811"] = "1-1"
-- 身上气力达到上限
-- tNpcGossip[21489]["Text9-1"] = {911}
-- tNpcGossip[21489]["tOption9-1"] = {911}
-- tNpcGossip[21489]["OptionPoint911"] = "1-1"
-- 开轮盘cd
tNpcGossip[21489]["Text10-1"] = {1011}
tNpcGossip[21489]["tOption10-1"] = {1011}
tNpcGossip[21489]["OptionPoint1011"] = "1-1"

tNpcGossip[21489]["Text11-1"] = {1111}
tNpcGossip[21489]["tOption11-1"] = {1111}
tNpcGossip[21489]["OptionPoint1111"] = "2-1"

tNpcGossip[21489]["Text12-1"] = {1211}
tNpcGossip[21489]["tOption12-1"] = {1211}
tNpcGossip[21489]["OptionPoint1211"] = "3-1"

tNpcGossip[21489]["Text13-1"] = {1311,1312,1313,1314,1315,1316}
tNpcGossip[21489]["tOption13-1"] = {1311,1312}
tNpcGossip[21489]["OptionFunc1311"] = "NewGodOfGamblers_DoubleBet_ClickDouble</N>21489"
tNpcGossip[21489]["OptionPoint1312"] = "1-1"

tNpcGossip[21489]["Text1-2"] = {121}
tNpcGossip[21489]["tOption1-2"] = {121}
tNpcGossip[21489]["ChkFunc1-2"] = function ()
	local nUserId = Get_UserId()
	local nTimerStc = tNewGodOfGamblers_DoubleBetRate["Stc"]
	local bFlag,nData = NewGodOfGamblers_Stc(nUserId,nTimerStc,1)
	if nData >= 1 then
		return true
	else
		return false
	end
end
	
	
	
	
	
-- 星陨石轮盘
tNpcFace[4192] = 1518
tNpcGossip[21490] = tNpcGossip[21490] or DefaultNpc:new{}
tNpcGossip[21490]["OptionHidden"] = 1
tNpcGossip[21490]["DialogueText"] = tNewGodOfGamblers_Text[21490]
tNpcGossip[21490]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[21490]["tOption1-1"] = {111,113,114,115}
tNpcGossip[21490]["ChkFunc1-1"] = function ()
	local nUserId = Get_UserId()
	local nTimerStc = tNewGodOfGamblers_DoubleBetRate["Stc"]
	local bFlag,nData = NewGodOfGamblers_Stc(nUserId,nTimerStc,1)
	if nData >= 1 then
		return false
	end
	if NewGodOfGamblers_JudgeLevelAndMetem() then
		local bFlag,nNowStake = NewGodOfGamblers_Stc(nUserId,12,1)
		tNpcGossip[21490]["Text114"] = string.format(tNewGodOfGamblers_Text[21490]["Text114"],nNowStake)
		tNpcGossip[21490]["Text1-1"] = {111,112,113,114,115}
		tNpcGossip[21490]["tOption1-1"] = {111,113,114}
		if nNowStake == 0 then
			tNpcGossip[21490]["tOption1-1"] = {111}
		end
	else
		tNpcGossip[21490]["Text1-1"] = {111,112,116,115}
		tNpcGossip[21490]["tOption1-1"] = {115}
	end
	return true
end	
-- 我要押注
tNpcGossip[21490]["OptionPoint111"] = "2-1"
tNpcGossip[21490]["OptionPoint112"] = "2-1"
-- 转动轮盘
tNpcGossip[21490]["OptionFunc113"] = "NewGodOfGamblers_DoubleBet_ClickDouble</N>21490</N>6"
-- 取回奖励
tNpcGossip[21490]["OptionPoint114"] = "3-1"

-- 我要押注
tNpcGossip[21490]["Text2-1"] = {211,212,213,214,215,216}
tNpcGossip[21490]["tOption2-1"] = {211,212,213,214,215}
tNpcGossip[21490]["ChkFunc2-1"] = function ()
	local nUserId = Get_UserId()
	local nTimerStc = tNewGodOfGamblers_DoubleBetRate["Stc"]
	local bFlag,nData = NewGodOfGamblers_Stc(nUserId,nTimerStc,1)
	if nData >= 1 then
		return false
	end
	local bFlag,nNowStake = NewGodOfGamblers_Stc(nUserId,12,1)
	tNpcGossip[21490]["Text214"] = string.format(tNewGodOfGamblers_Text[21490]["Text214"],nNowStake)
	return true
end	
-- 我要押注nNpcId,sText,sOptionFunc,sLink,nBetType,nStakeType,nItemtypeId
tNpcGossip[21490]["OptionFunc211"] = "NewGodOfGamblers_PointChipIn</N>21490</S>Text226</S>OptionFunc22</S>2-2</N>6</N>1</N>3009000"
tNpcGossip[21490]["OptionFunc212"] = "NewGodOfGamblers_PointChipIn</N>21490</S>Text226</S>OptionFunc22</S>2-2</N>6</N>1</N>3009001"
tNpcGossip[21490]["OptionFunc213"] = "NewGodOfGamblers_PointChipIn</N>21490</S>Text226</S>OptionFunc22</S>2-2</N>6</N>1</N>3009002"
tNpcGossip[21490]["OptionFunc214"] = "NewGodOfGamblers_PointChipIn</N>21490</S>Text226</S>OptionFunc22</S>2-2</N>6</N>1</N>3009003"
tNpcGossip[21490]["OptionFunc215"] = "NewGodOfGamblers_DoubleBet_ChipInByChoose</N>21490</N>6"

tNpcGossip[21490]["Text2-2"] = {221,222,223,224,225,226}
tNpcGossip[21490]["tOption2-2"] = {221,222,223}
tNpcGossip[21490]["ChkFunc2-2"] = function ()
	local nUserId = Get_UserId()
	local nTimerStc = tNewGodOfGamblers_DoubleBetRate["Stc"]
	local bFlag,nData = NewGodOfGamblers_Stc(nUserId,nTimerStc,1)
	if nData >= 1 then
		return false
	end
	local bFlag,nNowStake = NewGodOfGamblers_Stc(nUserId,12,1)
	tNpcGossip[21490]["Text224"] = string.format(tNewGodOfGamblers_Text[21490]["Text224"],nNowStake)
	return true
end

-- 我要取回
tNpcGossip[21490]["Text3-1"] = {311,312,313,314,315,316}
tNpcGossip[21490]["tOption3-1"] = {311,312,313,314,315}
tNpcGossip[21490]["ChkFunc3-1"] = function ()
	local nUserId = Get_UserId()
	local nTimerStc = tNewGodOfGamblers_DoubleBetRate["Stc"]
	local bFlag,nData = NewGodOfGamblers_Stc(nUserId,nTimerStc,1)
	if nData >= 1 then
		return false
	end
	local bFlag,nNowStake = NewGodOfGamblers_Stc(nUserId,12,1)
	tNpcGossip[21490]["Text314"] = string.format(tNewGodOfGamblers_Text[21490]["Text314"],nNowStake)
	return true
end	
-- 我要押注nNpcId,sText,sOptionFunc,sLink,nBetType,nStakeType,nItemtypeId
tNpcGossip[21490]["OptionFunc311"] = "NewGodOfGamblers_PointReturn</N>21490</S>Text326</S>OptionFunc32</S>3-2</N>6</N>1</N>3009000"
tNpcGossip[21490]["OptionFunc312"] = "NewGodOfGamblers_PointReturn</N>21490</S>Text326</S>OptionFunc32</S>3-2</N>6</N>1</N>3009001"
tNpcGossip[21490]["OptionFunc313"] = "NewGodOfGamblers_PointReturn</N>21490</S>Text326</S>OptionFunc32</S>3-2</N>6</N>1</N>3009002"
tNpcGossip[21490]["OptionFunc314"] = "NewGodOfGamblers_PointReturn</N>21490</S>Text326</S>OptionFunc32</S>3-2</N>6</N>1</N>3009003"
tNpcGossip[21490]["OptionFunc315"] = "NewGodOfGamblers_DoubleBet_ReturnByChoose</N>21490</N>6"

tNpcGossip[21490]["Text3-2"] = {321,322,323,324,325,326}
tNpcGossip[21490]["tOption3-2"] = {321,322,323}
tNpcGossip[21490]["ChkFunc3-2"] = function ()
	local nUserId = Get_UserId()
	local nTimerStc = tNewGodOfGamblers_DoubleBetRate["Stc"]
	local bFlag,nData = NewGodOfGamblers_Stc(nUserId,nTimerStc,1)
	if nData >= 1 then
		return false
	end
	local bFlag,nNowStake = NewGodOfGamblers_Stc(nUserId,12,1)
	tNpcGossip[21490]["Text324"] = string.format(tNewGodOfGamblers_Text[21490]["Text324"],nNowStake)
	return true
end


-- 押注数量太少，无法翻倍
tNpcGossip[21490]["Text4-1"] = {411}
tNpcGossip[21490]["tOption4-1"] = {411}
tNpcGossip[21490]["OptionPoint411"] = "1-1"
-- 押注数不足，无法取回
tNpcGossip[21490]["Text5-1"] = {511}
tNpcGossip[21490]["tOption5-1"] = {511}
tNpcGossip[21490]["OptionPoint511"] = "1-1"
-- 输入的不是大于0的整数
-- tNpcGossip[21490]["Text6-1"] = {611}
-- tNpcGossip[21490]["tOption6-1"] = {611}
-- tNpcGossip[21490]["OptionPoint611"] = "1-1"
-- 没有足够的可押注的物品
tNpcGossip[21490]["Text7-1"] = {711}
tNpcGossip[21490]["tOption7-1"] = {711}
tNpcGossip[21490]["OptionPoint711"] = "1-1"
-- 总押注数达到上限
tNpcGossip[21490]["Text8-1"] = {811}
tNpcGossip[21490]["tOption8-1"] = {811}
tNpcGossip[21490]["OptionPoint811"] = "1-1"
-- 身上气力达到上限
-- tNpcGossip[21490]["Text9-1"] = {911}
-- tNpcGossip[21490]["tOption9-1"] = {911}
-- tNpcGossip[21490]["OptionPoint911"] = "1-1"
-- 开轮盘cd
tNpcGossip[21490]["Text10-1"] = {1011}
tNpcGossip[21490]["tOption10-1"] = {1011}
tNpcGossip[21490]["OptionPoint1011"] = "1-1"

tNpcGossip[21490]["Text11-1"] = {1111}
tNpcGossip[21490]["tOption11-1"] = {1111}
tNpcGossip[21490]["OptionPoint1111"] = "2-1"

tNpcGossip[21490]["Text12-1"] = {1211}
tNpcGossip[21490]["tOption12-1"] = {1211}
tNpcGossip[21490]["OptionPoint1211"] = "3-1"

tNpcGossip[21490]["Text13-1"] = {1311,1312,1313,1314,1315,1316}
tNpcGossip[21490]["tOption13-1"] = {1311,1312}
tNpcGossip[21490]["OptionFunc1311"] = "NewGodOfGamblers_DoubleBet_ClickDouble</N>21490"
tNpcGossip[21490]["OptionPoint1312"] = "1-1"

tNpcGossip[21490]["Text1-2"] = {121}
tNpcGossip[21490]["tOption1-2"] = {121}
tNpcGossip[21490]["ChkFunc1-2"] = function ()
	local nUserId = Get_UserId()
	local nTimerStc = tNewGodOfGamblers_DoubleBetRate["Stc"]
	local bFlag,nData = NewGodOfGamblers_Stc(nUserId,nTimerStc,1)
	if nData >= 1 then
		return true
	else
		return false
	end
end

-- 灵珠轮盘
tNpcFace[2118] = 1517
tNpcGossip[25176] = tNpcGossip[25176] or DefaultNpc:new{}
tNpcGossip[25176]["OptionHidden"] = 1
tNpcGossip[25176]["DialogueText"] = tNewGodOfGamblers_Text[25176]
tNpcGossip[25176]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[25176]["tOption1-1"] = {111,113,114,115}
tNpcGossip[25176]["ChkFunc1-1"] = function ()
	local nUserId = Get_UserId()
	local nTimerStc = tNewGodOfGamblers_DoubleBetRate["Stc"]
	local bFlag,nData = NewGodOfGamblers_Stc(nUserId,nTimerStc,1)
	if nData >= 1 then
		return false
	end
	if NewGodOfGamblers_JudgeLevelAndMetem() then
		local bFlag,nNowStake = NewGodOfGamblers_Stc(nUserId,16,1)
		tNpcGossip[25176]["Text114"] = string.format(tNewGodOfGamblers_Text[25176]["Text114"],nNowStake)
		tNpcGossip[25176]["Text1-1"] = {111,112,113,114,115}
		tNpcGossip[25176]["tOption1-1"] = {111,113,114}
		if nNowStake == 0 then
			tNpcGossip[25176]["tOption1-1"] = {111}
		end
	else
		tNpcGossip[25176]["Text1-1"] = {111,112,116,115}
		tNpcGossip[25176]["tOption1-1"] = {115}
	end
	return true
end	
-- 我要押注
tNpcGossip[25176]["OptionPoint111"] = "2-1"
tNpcGossip[25176]["OptionPoint112"] = "2-1"
-- 转动轮盘
tNpcGossip[25176]["OptionFunc113"] = "NewGodOfGamblers_DoubleBet_ClickDouble</N>25176</N>7"
-- 取回奖励
tNpcGossip[25176]["OptionPoint114"] = "3-1"

-- 我要押注
tNpcGossip[25176]["Text2-1"] = {211,212,213,214,215,216,217}
tNpcGossip[25176]["tOption2-1"] = {211,212,213,214,215,216,217,218,219,2110,2111}
tNpcGossip[25176]["ChkFunc2-1"] = function ()
	local nUserId = Get_UserId()
	local nTimerStc = tNewGodOfGamblers_DoubleBetRate["Stc"]
	local bFlag,nData = NewGodOfGamblers_Stc(nUserId,nTimerStc,1)
	if nData >= 1 then
		return false
	end
	local bFlag,nNowStake = NewGodOfGamblers_Stc(nUserId,16,1)
	tNpcGossip[25176]["Text214"] = string.format(tNewGodOfGamblers_Text[25176]["Text214"],nNowStake)
	return true
end	
-- 我要押注nNpcId,sText,sOptionFunc,sLink,nBetType,nStakeType,nItemtypeId
tNpcGossip[25176]["OptionFunc211"] = "NewGodOfGamblers_PointChipIn</N>25176</S>Text227</S>OptionFunc22</S>2-2</N>7</N>1</N>4200002"
tNpcGossip[25176]["OptionFunc212"] = "NewGodOfGamblers_PointChipIn</N>25176</S>Text227</S>OptionFunc22</S>2-2</N>7</N>1</N>4200003"
tNpcGossip[25176]["OptionFunc213"] = "NewGodOfGamblers_PointChipIn</N>25176</S>Text227</S>OptionFunc22</S>2-2</N>7</N>1</N>4200004"
tNpcGossip[25176]["OptionFunc214"] = "NewGodOfGamblers_PointChipIn</N>25176</S>Text227</S>OptionFunc22</S>2-2</N>7</N>1</N>4200005"
tNpcGossip[25176]["OptionFunc215"] = "NewGodOfGamblers_PointChipIn</N>25176</S>Text227</S>OptionFunc22</S>2-2</N>7</N>1</N>4200006"
tNpcGossip[25176]["OptionFunc216"] = "NewGodOfGamblers_PointChipIn</N>25176</S>Text227</S>OptionFunc22</S>2-2</N>7</N>1</N>4200007"
tNpcGossip[25176]["OptionFunc217"] = "NewGodOfGamblers_PointChipIn</N>25176</S>Text227</S>OptionFunc22</S>2-2</N>7</N>1</N>4200008"
tNpcGossip[25176]["OptionFunc218"] = "NewGodOfGamblers_PointChipIn</N>25176</S>Text227</S>OptionFunc22</S>2-2</N>7</N>1</N>4200009"
tNpcGossip[25176]["OptionFunc219"] = "NewGodOfGamblers_PointChipIn</N>25176</S>Text227</S>OptionFunc22</S>2-2</N>7</N>1</N>4200010"
tNpcGossip[25176]["OptionFunc2110"] = "NewGodOfGamblers_PointChipIn</N>25176</S>Text227</S>OptionFunc22</S>2-2</N>7</N>1</N>4200011"
tNpcGossip[25176]["OptionFunc2111"] = "NewGodOfGamblers_DoubleBet_ChipInByChoose</N>25176</N>7"

tNpcGossip[25176]["Text2-2"] = {221,222,223,224,225,226,227}
tNpcGossip[25176]["tOption2-2"] = {221,222,223}
tNpcGossip[25176]["ChkFunc2-2"] = function ()
	local nUserId = Get_UserId()
	local nTimerStc = tNewGodOfGamblers_DoubleBetRate["Stc"]
	local bFlag,nData = NewGodOfGamblers_Stc(nUserId,nTimerStc,1)
	if nData >= 1 then
		return false
	end
	local bFlag,nNowStake = NewGodOfGamblers_Stc(nUserId,16,1)
	tNpcGossip[25176]["Text224"] = string.format(tNewGodOfGamblers_Text[25176]["Text224"],nNowStake)
	return true
end

-- 我要取回
tNpcGossip[25176]["Text3-1"] = {311,312,313,314,315,316}
tNpcGossip[25176]["tOption3-1"] = {311,312,313,314,315,316,317,318,319,3110,3111}
tNpcGossip[25176]["ChkFunc3-1"] = function ()
	local nUserId = Get_UserId()
	local nTimerStc = tNewGodOfGamblers_DoubleBetRate["Stc"]
	local bFlag,nData = NewGodOfGamblers_Stc(nUserId,nTimerStc,1)
	if nData >= 1 then
		return false
	end
	local bFlag,nNowStake = NewGodOfGamblers_Stc(nUserId,16,1)
	tNpcGossip[25176]["Text314"] = string.format(tNewGodOfGamblers_Text[25176]["Text314"],nNowStake)
	return true
end	
-- 我要押注nNpcId,sText,sOptionFunc,sLink,nBetType,nStakeType,nItemtypeId
tNpcGossip[25176]["OptionFunc311"] = "NewGodOfGamblers_PointReturn</N>25176</S>Text326</S>OptionFunc32</S>3-2</N>7</N>1</N>4200002"
tNpcGossip[25176]["OptionFunc312"] = "NewGodOfGamblers_PointReturn</N>25176</S>Text326</S>OptionFunc32</S>3-2</N>7</N>1</N>4200003"
tNpcGossip[25176]["OptionFunc313"] = "NewGodOfGamblers_PointReturn</N>25176</S>Text326</S>OptionFunc32</S>3-2</N>7</N>1</N>4200004"
tNpcGossip[25176]["OptionFunc314"] = "NewGodOfGamblers_PointReturn</N>25176</S>Text326</S>OptionFunc32</S>3-2</N>7</N>1</N>4200005"
tNpcGossip[25176]["OptionFunc315"] = "NewGodOfGamblers_PointReturn</N>25176</S>Text326</S>OptionFunc32</S>3-2</N>7</N>1</N>4200006"
tNpcGossip[25176]["OptionFunc316"] = "NewGodOfGamblers_PointReturn</N>25176</S>Text326</S>OptionFunc32</S>3-2</N>7</N>1</N>4200007"
tNpcGossip[25176]["OptionFunc317"] = "NewGodOfGamblers_PointReturn</N>25176</S>Text326</S>OptionFunc32</S>3-2</N>7</N>1</N>4200008"
tNpcGossip[25176]["OptionFunc318"] = "NewGodOfGamblers_PointReturn</N>25176</S>Text326</S>OptionFunc32</S>3-2</N>7</N>1</N>4200009"
tNpcGossip[25176]["OptionFunc319"] = "NewGodOfGamblers_PointReturn</N>25176</S>Text326</S>OptionFunc32</S>3-2</N>7</N>1</N>4200010"
tNpcGossip[25176]["OptionFunc3110"] = "NewGodOfGamblers_PointReturn</N>25176</S>Text326</S>OptionFunc32</S>3-2</N>7</N>1</N>4200011"
tNpcGossip[25176]["OptionFunc3111"] = "NewGodOfGamblers_DoubleBet_ReturnByChoose</N>25176</N>7"

tNpcGossip[25176]["Text3-2"] = {321,322,323,324,325,326}
tNpcGossip[25176]["tOption3-2"] = {321,322,323}
tNpcGossip[25176]["ChkFunc3-2"] = function ()
	local nUserId = Get_UserId()
	local nTimerStc = tNewGodOfGamblers_DoubleBetRate["Stc"]
	local bFlag,nData = NewGodOfGamblers_Stc(nUserId,nTimerStc,1)
	if nData >= 1 then
		return false
	end
	local bFlag,nNowStake = NewGodOfGamblers_Stc(nUserId,16,1)
	tNpcGossip[25176]["Text324"] = string.format(tNewGodOfGamblers_Text[25176]["Text324"],nNowStake)
	return true
end


-- 押注数量太少，无法翻倍
tNpcGossip[25176]["Text4-1"] = {411}
tNpcGossip[25176]["tOption4-1"] = {411}
tNpcGossip[25176]["OptionPoint411"] = "1-1"
-- 押注数不足，无法取回
tNpcGossip[25176]["Text5-1"] = {511}
tNpcGossip[25176]["tOption5-1"] = {511}
tNpcGossip[25176]["OptionPoint511"] = "1-1"
-- 输入的不是大于0的整数
-- tNpcGossip[25176]["Text6-1"] = {611}
-- tNpcGossip[25176]["tOption6-1"] = {611}
-- tNpcGossip[25176]["OptionPoint611"] = "1-1"
-- 没有足够的可押注的物品
tNpcGossip[25176]["Text7-1"] = {711}
tNpcGossip[25176]["tOption7-1"] = {711}
tNpcGossip[25176]["OptionPoint711"] = "1-1"
-- 总押注数达到上限
tNpcGossip[25176]["Text8-1"] = {811}
tNpcGossip[25176]["tOption8-1"] = {811}
tNpcGossip[25176]["OptionPoint811"] = "1-1"
-- 身上气力达到上限
-- tNpcGossip[25176]["Text9-1"] = {911}
-- tNpcGossip[25176]["tOption9-1"] = {911}
-- tNpcGossip[25176]["OptionPoint911"] = "1-1"
-- 开轮盘cd
tNpcGossip[25176]["Text10-1"] = {1011}
tNpcGossip[25176]["tOption10-1"] = {1011}
tNpcGossip[25176]["OptionPoint1011"] = "1-1"

tNpcGossip[25176]["Text11-1"] = {1111}
tNpcGossip[25176]["tOption11-1"] = {1111}
tNpcGossip[25176]["OptionPoint1111"] = "2-1"

tNpcGossip[25176]["Text12-1"] = {1211}
tNpcGossip[25176]["tOption12-1"] = {1211}
tNpcGossip[25176]["OptionPoint1211"] = "3-1"

tNpcGossip[25176]["Text13-1"] = {1311,1312,1313,1314,1315,1316}
tNpcGossip[25176]["tOption13-1"] = {1311,1312}
tNpcGossip[25176]["OptionFunc1311"] = "NewGodOfGamblers_DoubleBet_ClickDouble</N>25176"
tNpcGossip[25176]["OptionPoint1312"] = "1-1"

tNpcGossip[25176]["Text1-2"] = {121}
tNpcGossip[25176]["tOption1-2"] = {121}
tNpcGossip[25176]["ChkFunc1-2"] = function ()
	local nUserId = Get_UserId()
	local nTimerStc = tNewGodOfGamblers_DoubleBetRate["Stc"]
	local bFlag,nData = NewGodOfGamblers_Stc(nUserId,nTimerStc,1)
	if nData >= 1 then
		return true
	else
		return false
	end
end

tNpcGossip[25176]["Text20-1"] = {2011}
tNpcGossip[25176]["tOption20-1"] = {2011}

-- 荷官小美
tNpcFace[6100] = 1
tNpcGossip[21491] = tNpcGossip[21491] or DefaultNpc:new{}
tNpcGossip[21491]["OptionHidden"] = 1
tNpcGossip[21491]["DialogueText"] = tNewGodOfGamblers_Text[21491]
tNpcGossip[21491]["Text1-1"] = {111,112,113,114,115}
-- tNpcGossip[21491]["tOption1-1"] = {111,112,113}
tNpcGossip[21491]["tOption1-1"] = {111,113}
tNpcGossip[21491]["ChkFunc1-1"] = function ()
	tNpcGossip[21491]["Text113"] = NewGodOfGamblers_TimeToText(tNewGodOfGamblers_Text[21491]["Text113"],tNewGodOfGamblers_Cont["ActivityTime"])
	if NewGodOfGamblers_JudgeLevelAndMetem() then
		tNpcGossip[21491]["Text1-1"] = {111,112,115,113}
		tNpcGossip[21491]["tOption1-1"] = {111,112}
	else
		tNpcGossip[21491]["Text1-1"] = {111,112,113,114}
		tNpcGossip[21491]["tOption1-1"] = {113}
	end
	return true
end	
tNpcGossip[21491]["OptionFunc111"] = "NewGodOfGamblers_OpenEMoneyShop"
tNpcGossip[21491]["OptionFunc112"] = "NewGodOfGamblers_JoinGame</N>21491</N>646-5307"

-- 抢红包的桌子
tNpcFace[4397] = 1519
tNpcGossip[21493] = tNpcGossip[21493] or DefaultNpc:new{}
tNpcGossip[21493]["OptionHidden"] = 1
tNpcGossip[21493]["DialogueText"] = tNewGodOfGamblers_Text[21493]
tNpcGossip[21493]["Text1-1"] = {111}
tNpcGossip[21493]["tOption1-1"] = {111,112}
tNpcGossip[21493]["OptionFunc111"] = "NewGodOfGamblers_GrabRedEnvelopes_Deposit</N>21493"
tNpcGossip[21493]["OptionFunc112"] = "NewGodOfGamblers_GrabRedEnvelopes_CancelConfirm</N>21493"
tNpcGossip[21493]["OptionChkFunc112"] = function()
	local nUserId = Get_UserId()
	local nStc = tNewGodOfGamblers_Cont["GrabRed"][21493]["Stc"]
	local bFlag,nData = NewGodOfGamblers_Stc(nUserId,nStc,1)
	if nData >= 1 then
		return false
	else
		return true
	end
end

tNpcGossip[21493]["Text2-1"] = {211,212,213,214,215,216,217,218,219}
tNpcGossip[21493]["tOption2-1"] = {211}
tNpcGossip[21493]["ChkFunc2-1"] = function ()
	local nUserId = Get_UserId()
	local nNum = 0
	local nRedNum = 0
	tNpcGossip[21493]["Text216"] = ""
	for i,v in pairs(tNewGodOfGamblers_GrabRedEnvelopes[100]["RedEnvelopes"]) do
		if v["UserId"] == nUserId then
			nNum = v["Money"]
		end
		tNpcGossip[21493]["Text216"] = tNpcGossip[21493]["Text216"] .. string.format(tNewGodOfGamblers_Text[21493]["Text216"],v["UserName"],v["Money"])
		nRedNum = nRedNum + 1
	end
	local sLeftBlank,sRightBlank = NewGodOfGamblers_Aligment(nNum,100)
	tNpcGossip[21493]["Text213"] = string.format(tNewGodOfGamblers_Text[21493]["Text213"],sLeftBlank,nNum,sRightBlank)
	tNpcGossip[21493]["Text217"] = string.format(tNewGodOfGamblers_Text[21493]["Text217"],tNewGodOfGamblers_GrabRedEnvelopes[100]["PersonNum"] - nRedNum,tNewGodOfGamblers_GrabRedEnvelopes[100]["PersonNum"])
	local nGlobalId = tNewGodOfGamblers_GrabRedEnvelopes[100]["GlobalId"]
	local nPos = tNewGodOfGamblers_GrabRedEnvelopes[100]["Pos"]
	local nBeginTime = Get_SysDynaGlobalData(nGlobalId,nPos)
	local nLeftTime = tNewGodOfGamblers_GrabRedEnvelopes[100]["MaxTime"] - (tonumber(os.time()) - nBeginTime)
	local nMin = math.floor(nLeftTime/60)
	local nSec = nLeftTime - nMin * 60
	local sMin = tostring(nMin) .. tNewGodOfGamblers_Text["Minute"]
	local sSec = tostring(nSec) .. tNewGodOfGamblers_Text["Second"]
	if nMin <= 0 then
		sMin = ""
	end
	tNpcGossip[21493]["Text219"] = string.format(tNewGodOfGamblers_Text[21493]["Text219"],sMin,sSec)
	return true
end	

-- 银两不足
tNpcGossip[21493]["Text3-1"] = {311}
tNpcGossip[21493]["tOption3-1"] = {311}

tNpcFace[4398] = 1519
tNpcGossip[21494] = tNpcGossip[21494] or DefaultNpc:new{}
tNpcGossip[21494]["OptionHidden"] = 1
tNpcGossip[21494]["DialogueText"] = tNewGodOfGamblers_Text[21494]
tNpcGossip[21494]["Text1-1"] = {111}
tNpcGossip[21494]["tOption1-1"] = {111,112}
tNpcGossip[21494]["OptionFunc111"] = "NewGodOfGamblers_GrabRedEnvelopes_Deposit</N>21494"
tNpcGossip[21494]["OptionFunc112"] = "NewGodOfGamblers_GrabRedEnvelopes_CancelConfirm</N>21494"
tNpcGossip[21494]["OptionChkFunc112"] = function()
	local nUserId = Get_UserId()
	local nStc = tNewGodOfGamblers_Cont["GrabRed"][21494]["Stc"]
	local bFlag,nData = NewGodOfGamblers_Stc(nUserId,nStc,1)
	if nData >= 1 then
		return false
	else
		return true
	end
end

tNpcGossip[21494]["Text2-1"] = {211,212,213,214,215,216,217,218,219,2110}
tNpcGossip[21494]["tOption2-1"] = {211}
tNpcGossip[21494]["ChkFunc2-1"] = function ()
	local nUserId = Get_UserId()
	local nNum = 0
	local nRedNum = 0
	tNpcGossip[21494]["Text216"] = ""
	for i,v in pairs(tNewGodOfGamblers_GrabRedEnvelopes[1000]["RedEnvelopes"]) do
		if v["UserId"] == nUserId then
			nNum = v["Money"]
		end
		nRedNum = nRedNum + 1
		if nRedNum <= 5 then
			tNpcGossip[21494]["Text216"] = tNpcGossip[21494]["Text216"] .. string.format(tNewGodOfGamblers_Text[21494]["Text216"],v["UserName"],v["Money"])
			tNpcGossip[21494]["Text2-1"] = {211,212,213,214,215,216,217,218,219}
		else
			tNpcGossip[21494]["Text2-1"] = {211,212,213,214,215,216,2110,217,218,219}
		end
	end
	local sLeftBlank,sRightBlank = NewGodOfGamblers_Aligment(nNum,1000)
	tNpcGossip[21494]["Text213"] = string.format(tNewGodOfGamblers_Text[21494]["Text213"],sLeftBlank,nNum,sRightBlank)
	tNpcGossip[21494]["Text217"] = string.format(tNewGodOfGamblers_Text[21494]["Text217"],tNewGodOfGamblers_GrabRedEnvelopes[1000]["PersonNum"] - nRedNum,tNewGodOfGamblers_GrabRedEnvelopes[1000]["PersonNum"])
	local nGlobalId = tNewGodOfGamblers_GrabRedEnvelopes[1000]["GlobalId"]
	local nPos = tNewGodOfGamblers_GrabRedEnvelopes[1000]["Pos"]
	local nBeginTime = Get_SysDynaGlobalData(nGlobalId,nPos)
	local nLeftTime = tNewGodOfGamblers_GrabRedEnvelopes[1000]["MaxTime"] - (tonumber(os.time()) - nBeginTime)
	local nMin = math.floor(nLeftTime/60)
	local nSec = nLeftTime - nMin * 60
	local sMin = tostring(nMin) .. tNewGodOfGamblers_Text["Minute"]
	local sSec = tostring(nSec) .. tNewGodOfGamblers_Text["Second"]
	if nMin <= 0 then
		sMin = ""
	end
	tNpcGossip[21494]["Text219"] = string.format(tNewGodOfGamblers_Text[21494]["Text219"],sMin,sSec)
	return true
end	

-- 银两不足
tNpcGossip[21494]["Text3-1"] = {311}
tNpcGossip[21494]["tOption3-1"] = {311}

-- 抢红包的桌子
tNpcFace[4487] = 1519
tNpcGossip[23100] = tNpcGossip[23100] or DefaultNpc:new{}
tNpcGossip[23100]["OptionHidden"] = 1
tNpcGossip[23100]["DialogueText"] = tNewGodOfGamblers_Text[23100]
tNpcGossip[23100]["Text1-1"] = {111}
tNpcGossip[23100]["tOption1-1"] = {111,112}
tNpcGossip[23100]["OptionFunc111"] = "NewGodOfGamblers_GrabRedEnvelopes_Deposit</N>23100"
tNpcGossip[23100]["OptionFunc112"] = "NewGodOfGamblers_GrabRedEnvelopes_CancelConfirm</N>23100"
tNpcGossip[23100]["OptionChkFunc112"] = function()
	local nUserId = Get_UserId()
	local nStc = tNewGodOfGamblers_Cont["GrabRed"][23100]["Stc"]
	local bFlag,nData = NewGodOfGamblers_Stc(nUserId,nStc,1)
	if nData >= 1 then
		return false
	else
		return true
	end
end

tNpcGossip[23100]["Text2-1"] = {211,212,213,214,215,216,217,218,219}
tNpcGossip[23100]["tOption2-1"] = {211}
tNpcGossip[23100]["ChkFunc2-1"] = function ()
	local nUserId = Get_UserId()
	local nNum = 0
	local nRedNum = 0
	tNpcGossip[23100]["Text216"] = ""
	for i,v in pairs(tNewGodOfGamblers_GrabRedEnvelopes[1000000]["RedEnvelopes"]) do
		if v["UserId"] == nUserId then
			nNum = v["Money"]
		end
		tNpcGossip[23100]["Text216"] = tNpcGossip[23100]["Text216"] .. string.format(tNewGodOfGamblers_Text[23100]["Text216"],v["UserName"],v["Money"])
		nRedNum = nRedNum + 1
	end
	local sLeftBlank,sRightBlank = NewGodOfGamblers_Aligment(nNum,1000000)
	tNpcGossip[23100]["Text213"] = string.format(tNewGodOfGamblers_Text[23100]["Text213"],sLeftBlank,nNum,sRightBlank)
	tNpcGossip[23100]["Text217"] = string.format(tNewGodOfGamblers_Text[23100]["Text217"],tNewGodOfGamblers_GrabRedEnvelopes[1000000]["PersonNum"] - nRedNum,tNewGodOfGamblers_GrabRedEnvelopes[1000000]["PersonNum"])
	local nGlobalId = tNewGodOfGamblers_GrabRedEnvelopes[1000000]["GlobalId"]
	local nPos = tNewGodOfGamblers_GrabRedEnvelopes[1000000]["Pos"]
	local nBeginTime = Get_SysDynaGlobalData(nGlobalId,nPos)
	local nLeftTime = tNewGodOfGamblers_GrabRedEnvelopes[1000000]["MaxTime"] - (tonumber(os.time()) - nBeginTime)
	local nMin = math.floor(nLeftTime/60)
	local nSec = nLeftTime - nMin * 60
	local sMin = tostring(nMin) .. tNewGodOfGamblers_Text["Minute"]
	local sSec = tostring(nSec) .. tNewGodOfGamblers_Text["Second"]
	if nMin <= 0 then
		sMin = ""
	end
	tNpcGossip[23100]["Text219"] = string.format(tNewGodOfGamblers_Text[23100]["Text219"],sMin,sSec)
	return true
end	

-- 银两不足
tNpcGossip[23100]["Text3-1"] = {311}
tNpcGossip[23100]["tOption3-1"] = {311}

tNpcFace[4488] = 1519
tNpcGossip[23101] = tNpcGossip[23101] or DefaultNpc:new{}
tNpcGossip[23101]["OptionHidden"] = 1
tNpcGossip[23101]["DialogueText"] = tNewGodOfGamblers_Text[23101]
tNpcGossip[23101]["Text1-1"] = {111}
tNpcGossip[23101]["tOption1-1"] = {111,112}
tNpcGossip[23101]["OptionFunc111"] = "NewGodOfGamblers_GrabRedEnvelopes_Deposit</N>23101"
tNpcGossip[23101]["OptionFunc112"] = "NewGodOfGamblers_GrabRedEnvelopes_CancelConfirm</N>23101"
tNpcGossip[23101]["OptionChkFunc112"] = function()
	local nUserId = Get_UserId()
	local nStc = tNewGodOfGamblers_Cont["GrabRed"][23101]["Stc"]
	local bFlag,nData = NewGodOfGamblers_Stc(nUserId,nStc,1)
	if nData >= 1 then
		return false
	else
		return true
	end
end

tNpcGossip[23101]["Text2-1"] = {211,212,213,214,215,216,217,218,219,2110}
tNpcGossip[23101]["tOption2-1"] = {211}
tNpcGossip[23101]["ChkFunc2-1"] = function ()
	local nUserId = Get_UserId()
	local nNum = 0
	local nRedNum = 0
	tNpcGossip[23101]["Text216"] = ""
	for i,v in pairs(tNewGodOfGamblers_GrabRedEnvelopes[10000000]["RedEnvelopes"]) do
		if v["UserId"] == nUserId then
			nNum = v["Money"]
		end
		nRedNum = nRedNum + 1
		if nRedNum <= 5 then
			tNpcGossip[23101]["Text216"] = tNpcGossip[23101]["Text216"] .. string.format(tNewGodOfGamblers_Text[23101]["Text216"],v["UserName"],v["Money"])
			tNpcGossip[23101]["Text2-1"] = {211,212,213,214,215,216,217,218,219}
		else
			tNpcGossip[23101]["Text2-1"] = {211,212,213,214,215,216,2110,217,218,219}
		end
	end
	local sLeftBlank,sRightBlank = NewGodOfGamblers_Aligment(nNum,10000000)
	tNpcGossip[23101]["Text213"] = string.format(tNewGodOfGamblers_Text[23101]["Text213"],sLeftBlank,nNum,sRightBlank)
	tNpcGossip[23101]["Text217"] = string.format(tNewGodOfGamblers_Text[23101]["Text217"],tNewGodOfGamblers_GrabRedEnvelopes[10000000]["PersonNum"] - nRedNum,tNewGodOfGamblers_GrabRedEnvelopes[10000000]["PersonNum"])
	local nGlobalId = tNewGodOfGamblers_GrabRedEnvelopes[10000000]["GlobalId"]
	local nPos = tNewGodOfGamblers_GrabRedEnvelopes[10000000]["Pos"]
	local nBeginTime = Get_SysDynaGlobalData(nGlobalId,nPos)
	local nLeftTime = tNewGodOfGamblers_GrabRedEnvelopes[10000000]["MaxTime"] - (tonumber(os.time()) - nBeginTime)
	local nMin = math.floor(nLeftTime/60)
	local nSec = nLeftTime - nMin * 60
	local sMin = tostring(nMin) .. tNewGodOfGamblers_Text["Minute"]
	local sSec = tostring(nSec) .. tNewGodOfGamblers_Text["Second"]
	if nMin <= 0 then
		sMin = ""
	end
	tNpcGossip[23101]["Text219"] = string.format(tNewGodOfGamblers_Text[23101]["Text219"],sMin,sSec)
	return true
end	

-- 银两不足
tNpcGossip[23101]["Text3-1"] = {311}
tNpcGossip[23101]["tOption3-1"] = {311}

---------------------------------------------系统自检---------------------------------------------
-- 每天执行
local tNewGodOfGamblers_OnTime = {}
	tNewGodOfGamblers_OnTime[1] = {}
	tNewGodOfGamblers_OnTime[1]["Type"] = 2
	tNewGodOfGamblers_OnTime[1]["Func"] = NewGodOfGamblers_GrabRedEnvelopes_AutoGrab
	-- tNewGodOfGamblers_OnTime[2] = {}
	-- tNewGodOfGamblers_OnTime[2]["Type"] = 4
	-- tNewGodOfGamblers_OnTime[2]["TimeType"] = 4
	-- tNewGodOfGamblers_OnTime[2]["Multiple"] = {}
	-- tNewGodOfGamblers_OnTime[2]["Multiple"][1]  = "00:00 00:05"
	-- tNewGodOfGamblers_OnTime[2]["Func"] = NewGodOfGamblers_OverTime
	
table.insert(tSystemTime_InitialData,tNewGodOfGamblers_OnTime[1])
-- table.insert(tSystemTime_InitialData,tNewGodOfGamblers_OnTime[2])

---------------------------------------------上线触发---------------------------------------------
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,NewGodOfGamblers_Loading)
