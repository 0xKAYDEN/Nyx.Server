------------------------------------------------------------------------------------
--Name：            190311[简体征服][活动脚本]勇士觉醒前章预热线上任务活动(5.9-5.20)-第三阶段
--Creator:      陈莺

--Created:     2019-03-11
------------------------------------------------------------------------------------

-- WarriorsThirdPart

----------------------------------表配置部分--------------------------------------------
local tWarriorsThirdPart_Data = {}
	tWarriorsThirdPart_Data["Now_Time"] = tActivityTime["WarriorsThirdPart"]["Now_Time"]
	tWarriorsThirdPart_Data["Level"] = 120
	tWarriorsThirdPart_Data["Metempsychosis"] = 1
	tWarriorsThirdPart_Data["Instancetype"] = 246
	tWarriorsThirdPart_Data["MonsterNum"] = 3000
	tWarriorsThirdPart_Data["MonsterMostNum"] = 420000
	tWarriorsThirdPart_Data["MonoMoney"] = 1088
	tWarriorsThirdPart_Data["Random"] = 1000
	tWarriorsThirdPart_Data["RankIndex"] = 23852  --排行榜索引
	tWarriorsThirdPart_Data["Generator"] = 26956
	tWarriorsThirdPart_Data["MonsterId"] = 4986
	tWarriorsThirdPart_Data["Map"] = 1002
	tWarriorsThirdPart_Data["JiQingMap"] = 1036
	tWarriorsThirdPart_Data["Web"] = "https://coevent.99.com/mysteryofinspiration/"
	tWarriorsThirdPart_Data["MonsterNum1"] = 50
	tWarriorsThirdPart_Data["MonsterNum2"] = 10000
	--进地图log
	tWarriorsThirdPart_Data["GotoLog"] =  "0,0,0,,12001327,3[1],0,0"
	--从地图出来
	tWarriorsThirdPart_Data["Pos"] = {}
	tWarriorsThirdPart_Data["Pos"][1] = {}
	tWarriorsThirdPart_Data["Pos"][1]["X"] = 320
	tWarriorsThirdPart_Data["Pos"][1]["Y"] = 494
	
	tWarriorsThirdPart_Data["Pos"][2] = {}
	tWarriorsThirdPart_Data["Pos"][2]["X"] = 259
	tWarriorsThirdPart_Data["Pos"][2]["Y"] = 264
	-- 进地图
	tWarriorsThirdPart_Data["Pos"][3] = {}
	tWarriorsThirdPart_Data["Pos"][3]["MapId"] = 10460
	tWarriorsThirdPart_Data["Pos"][3]["X"] = 301
	tWarriorsThirdPart_Data["Pos"][3]["Y"] = 307
	
	---距离判断
	tWarriorsThirdPart_Data["Pos"][4] = {}
	tWarriorsThirdPart_Data["Pos"][4]["X"] = 321
	tWarriorsThirdPart_Data["Pos"][4]["Y"] = 497
	
	tWarriorsThirdPart_Data["Pos"][5] = {}
	tWarriorsThirdPart_Data["Pos"][5]["X"] = 252
	tWarriorsThirdPart_Data["Pos"][5]["Y"] = 206
	
local tWarriorsThirdPart_Stc = {}
	tWarriorsThirdPart_Stc[1] = {}  --记录参与过
	tWarriorsThirdPart_Stc[1]["EventType"] = 191
	tWarriorsThirdPart_Stc[1]["DataType"] = 70
	tWarriorsThirdPart_Stc[1]["Data"] = 1
	
	tWarriorsThirdPart_Stc[2] = {}  --记录杀怪数量
	tWarriorsThirdPart_Stc[2]["EventType"] = 191
	tWarriorsThirdPart_Stc[2]["DataType"] = 71

	tWarriorsThirdPart_Stc[3] = {}  --记录领奖阶段
	tWarriorsThirdPart_Stc[3]["EventType"] = 191
	tWarriorsThirdPart_Stc[3]["DataType"] = 72
	tWarriorsThirdPart_Stc[3]["Data"] = 1

	tWarriorsThirdPart_Stc[4] = {}  --记录领取最后奖励
	tWarriorsThirdPart_Stc[4]["EventType"] = 191
	tWarriorsThirdPart_Stc[4]["DataType"] = 73
	tWarriorsThirdPart_Stc[4]["Data"] = 1
	
	tWarriorsThirdPart_Stc[5] = {}  --记录今日已进入过
	tWarriorsThirdPart_Stc[5]["EventType"] = 193
	tWarriorsThirdPart_Stc[5]["DataType"] = 29

	---记录个人限量
local tWarriorsThirdPart_MonsterStc = {}
	tWarriorsThirdPart_MonsterStc[1] = {}  --记录100气力值包
	tWarriorsThirdPart_MonsterStc[1]["EventType"] = 193
	tWarriorsThirdPart_MonsterStc[1]["DataType"] = 30
	tWarriorsThirdPart_MonsterStc[1]["Data"] = 2
	
	tWarriorsThirdPart_MonsterStc[2] = {}  --记录特制龙虎回气丹
	tWarriorsThirdPart_MonsterStc[2]["EventType"] = 193
	tWarriorsThirdPart_MonsterStc[2]["DataType"] = 31
	tWarriorsThirdPart_MonsterStc[2]["Data"] = 10
	
	tWarriorsThirdPart_MonsterStc[3] = {}  --记录万能精粹
	tWarriorsThirdPart_MonsterStc[3]["EventType"] = 193
	tWarriorsThirdPart_MonsterStc[3]["DataType"] = 32
	tWarriorsThirdPart_MonsterStc[3]["Data"] = 10
	
	tWarriorsThirdPart_MonsterStc[4] = {}  --记录人参果
	tWarriorsThirdPart_MonsterStc[4]["EventType"] = 193
	tWarriorsThirdPart_MonsterStc[4]["DataType"] = 33
	tWarriorsThirdPart_MonsterStc[4]["Data"] = 5
	
	tWarriorsThirdPart_MonsterStc[5] = {}  --记录强效护心丹
	tWarriorsThirdPart_MonsterStc[5]["EventType"] = 193
	tWarriorsThirdPart_MonsterStc[5]["DataType"] = 34
	tWarriorsThirdPart_MonsterStc[5]["Data"] = 10
	
	tWarriorsThirdPart_MonsterStc[6] = {}  --记录+1赤炼石(赠)
	tWarriorsThirdPart_MonsterStc[6]["EventType"] = 194
	tWarriorsThirdPart_MonsterStc[6]["DataType"] = 79
	tWarriorsThirdPart_MonsterStc[6]["Data"] = 15
	
	tWarriorsThirdPart_MonsterStc[7] = {}  --记录+3赤炼石(赠)
	tWarriorsThirdPart_MonsterStc[7]["EventType"] = 194
	tWarriorsThirdPart_MonsterStc[7]["DataType"] = 80
	tWarriorsThirdPart_MonsterStc[7]["Data"] = 2
	
	tWarriorsThirdPart_MonsterStc[8] = {}  --记录微光星陨石
	tWarriorsThirdPart_MonsterStc[8]["EventType"] = 194
	tWarriorsThirdPart_MonsterStc[8]["DataType"] = 81
	tWarriorsThirdPart_MonsterStc[8]["Data"] = 30
	
	tWarriorsThirdPart_MonsterStc[9] = {}  --记录明亮星陨石
	tWarriorsThirdPart_MonsterStc[9]["EventType"] = 194
	tWarriorsThirdPart_MonsterStc[9]["DataType"] = 82
	tWarriorsThirdPart_MonsterStc[9]["Data"] = 3
	
local tWarriorsThirdPart_TeamFlag = {}

local tWarriorsThirdPart_Reward = {}
	tWarriorsThirdPart_Reward["Num"] = {}
	tWarriorsThirdPart_Reward["Num"][1] = 10000
	tWarriorsThirdPart_Reward["Num"][2] = 40000
	tWarriorsThirdPart_Reward["Num"][3] = 60000
	tWarriorsThirdPart_Reward["Num"][4] = 80000
	tWarriorsThirdPart_Reward["Num"][5] = 100000

	
	
	tWarriorsThirdPart_Reward["Item"] = {}
	tWarriorsThirdPart_Reward["Item"][1] = 3312112
	tWarriorsThirdPart_Reward["Item"][2] = 3312113
	tWarriorsThirdPart_Reward["Item"][3] = 3312114
	tWarriorsThirdPart_Reward["Item"][4] = 3312115
	tWarriorsThirdPart_Reward["Item"][5] = 3312116
	
	
	tWarriorsThirdPart_Reward[1] = {}
	tWarriorsThirdPart_Reward[1]["RewardItem"] = {}
	-- tWarriorsThirdPart_Reward[1]["RewardItem"][1] = {}
	-- tWarriorsThirdPart_Reward[1]["RewardItem"][1]["Id"] = 3312112
	-- tWarriorsThirdPart_Reward[1]["RewardItem"][1]["Attr"] = "0 1"
	tWarriorsThirdPart_Reward[1]["RewardEffect"]={}
	tWarriorsThirdPart_Reward[1]["RewardEffect"]["Effect"]="angelwing"
	tWarriorsThirdPart_Reward[1]["LogId"] = 12001327
---赠点
	tWarriorsThirdPart_Reward[2] = {}
	tWarriorsThirdPart_Reward[2]["RewardEMoneyMono"] = {}
	tWarriorsThirdPart_Reward[2]["RewardEMoneyMono"]["Value"] = 1
	tWarriorsThirdPart_Reward[2]["RewardEMoneyMono"]["EmoneyLog"] = "1000	452	0	0	%d	"
	-- tWarriorsThirdPart_Reward[2]["RewardItem"] = {}
	-- tWarriorsThirdPart_Reward[2]["RewardItem"][1] = {}
	-- tWarriorsThirdPart_Reward[2]["RewardItem"][1]["Id"] = 3312170
	-- tWarriorsThirdPart_Reward[2]["RewardItem"][1]["Attr"] = "0 1"
	tWarriorsThirdPart_Reward[2]["RewardEffect"]={}
	tWarriorsThirdPart_Reward[2]["RewardEffect"]["Effect"]="angelwing"
	tWarriorsThirdPart_Reward[2]["LogId"] = 12001327

	tWarriorsThirdPart_Reward[3] = {}
	tWarriorsThirdPart_Reward[3]["RewardItem"] = {}
	tWarriorsThirdPart_Reward[3]["RewardItem"][1] = {}
	tWarriorsThirdPart_Reward[3]["RewardItem"][1]["Id"] = 3312120
	tWarriorsThirdPart_Reward[3]["RewardItem"][1]["Attr"] = "0 1"
	tWarriorsThirdPart_Reward[3]["RewardEffect"]={}
	tWarriorsThirdPart_Reward[3]["RewardEffect"]["Effect"]="angelwing"
	tWarriorsThirdPart_Reward[3]["LogId"] = 12001327
	
local tWarriorsThirdPart_ItemGet = {}
-- 明亮星陨石*5、万能神纹精粹（赠）*10
	tWarriorsThirdPart_ItemGet[3312112] = {}
	tWarriorsThirdPart_ItemGet[3312112]["DeleteItem"] = {}
	tWarriorsThirdPart_ItemGet[3312112]["DeleteItem"][1] = {}
	tWarriorsThirdPart_ItemGet[3312112]["DeleteItem"][1]["Id"] = 3312112
	tWarriorsThirdPart_ItemGet[3312112]["RewardItem"] = {}
	tWarriorsThirdPart_ItemGet[3312112]["RewardItem"][1] = {}
	tWarriorsThirdPart_ItemGet[3312112]["RewardItem"][1]["Id"] = 3009001
	tWarriorsThirdPart_ItemGet[3312112]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	tWarriorsThirdPart_ItemGet[3312112]["RewardItem"][2] = {}
	tWarriorsThirdPart_ItemGet[3312112]["RewardItem"][2]["Id"] = 4060001
	tWarriorsThirdPart_ItemGet[3312112]["RewardItem"][2]["Attr"] = "0 10 3"
	tWarriorsThirdPart_ItemGet[3312112]["LogId"] = 12001327
	tWarriorsThirdPart_ItemGet[3312112]["RewardEffect"] = {}
	tWarriorsThirdPart_ItemGet[3312112]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石*5、万能神纹精粹（赠）*30
	tWarriorsThirdPart_ItemGet[3312113] = {}
	tWarriorsThirdPart_ItemGet[3312113]["DeleteItem"] = {}
	tWarriorsThirdPart_ItemGet[3312113]["DeleteItem"][1] = {}
	tWarriorsThirdPart_ItemGet[3312113]["DeleteItem"][1]["Id"] = 3312113
	tWarriorsThirdPart_ItemGet[3312113]["RewardItem"] = {}
	tWarriorsThirdPart_ItemGet[3312113]["RewardItem"][1] = {}
	tWarriorsThirdPart_ItemGet[3312113]["RewardItem"][1]["Id"] = 3009001
	tWarriorsThirdPart_ItemGet[3312113]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	tWarriorsThirdPart_ItemGet[3312113]["RewardItem"][2] = {}
	tWarriorsThirdPart_ItemGet[3312113]["RewardItem"][2]["Id"] = 4060001
	tWarriorsThirdPart_ItemGet[3312113]["RewardItem"][2]["Attr"] = "0 30 3"
	tWarriorsThirdPart_ItemGet[3312113]["LogId"] = 12001327
	tWarriorsThirdPart_ItemGet[3312113]["RewardEffect"] = {}
	tWarriorsThirdPart_ItemGet[3312113]["RewardEffect"]["Effect"] = "angelwing"

	-- 晶莹星陨石*1、龙鳞果*5
	tWarriorsThirdPart_ItemGet[3312114] = {}
	tWarriorsThirdPart_ItemGet[3312114]["DeleteItem"] = {}
	tWarriorsThirdPart_ItemGet[3312114]["DeleteItem"][1] = {}
	tWarriorsThirdPart_ItemGet[3312114]["DeleteItem"][1]["Id"] = 3312114
	tWarriorsThirdPart_ItemGet[3312114]["RewardItem"] = {}
	tWarriorsThirdPart_ItemGet[3312114]["RewardItem"][1] = {}
	tWarriorsThirdPart_ItemGet[3312114]["RewardItem"][1]["Id"] = 3009002
	tWarriorsThirdPart_ItemGet[3312114]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tWarriorsThirdPart_ItemGet[3312114]["RewardItem"][2] = {}
	tWarriorsThirdPart_ItemGet[3312114]["RewardItem"][2]["Id"] = 3009101
	tWarriorsThirdPart_ItemGet[3312114]["RewardItem"][2]["Attr"] = "0 5"
	-- tWarriorsThirdPart_ItemGet[3312114]["RewardStrengthValue"] = {}
	-- tWarriorsThirdPart_ItemGet[3312114]["RewardStrengthValue"]["Value"] = 500
	tWarriorsThirdPart_ItemGet[3312114]["LogId"] = 12001327
	tWarriorsThirdPart_ItemGet[3312114]["RewardEffect"] = {}
	tWarriorsThirdPart_ItemGet[3312114]["RewardEffect"]["Effect"] = "angelwing"

	--晶莹星陨石*1、1000点气力值、龙鳞果*10
	tWarriorsThirdPart_ItemGet[3312115] = {}
	tWarriorsThirdPart_ItemGet[3312115]["DeleteItem"] = {}
	tWarriorsThirdPart_ItemGet[3312115]["DeleteItem"][1] = {}
	tWarriorsThirdPart_ItemGet[3312115]["DeleteItem"][1]["Id"] = 3312115
	tWarriorsThirdPart_ItemGet[3312115]["RewardItem"] = {}
	tWarriorsThirdPart_ItemGet[3312115]["RewardItem"][1] = {}
	tWarriorsThirdPart_ItemGet[3312115]["RewardItem"][1]["Id"] = 3009002
	tWarriorsThirdPart_ItemGet[3312115]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tWarriorsThirdPart_ItemGet[3312115]["RewardItem"][2] = {}
	tWarriorsThirdPart_ItemGet[3312115]["RewardItem"][2]["Id"] = 3009101
	tWarriorsThirdPart_ItemGet[3312115]["RewardItem"][2]["Attr"] = "0 10"
	tWarriorsThirdPart_ItemGet[3312115]["RewardStrengthValue"] = {}
	tWarriorsThirdPart_ItemGet[3312115]["RewardStrengthValue"]["Value"] = 1000
	tWarriorsThirdPart_ItemGet[3312115]["LogId"] = 12001327
	tWarriorsThirdPart_ItemGet[3312115]["RewardEffect"] = {}
	tWarriorsThirdPart_ItemGet[3312115]["RewardEffect"]["Effect"] = "angelwing"

	
	
	-- 晶莹星陨石*2、1000点气力值、龙鳞果*10
	tWarriorsThirdPart_ItemGet[3312116] = {}
	tWarriorsThirdPart_ItemGet[3312116]["DeleteItem"] = {}
	tWarriorsThirdPart_ItemGet[3312116]["DeleteItem"][1] = {}
	tWarriorsThirdPart_ItemGet[3312116]["DeleteItem"][1]["Id"] = 3312116
	tWarriorsThirdPart_ItemGet[3312116]["RewardItem"] = {}
	tWarriorsThirdPart_ItemGet[3312116]["RewardItem"][1] = {}
	tWarriorsThirdPart_ItemGet[3312116]["RewardItem"][1]["Id"] = 3009002
	tWarriorsThirdPart_ItemGet[3312116]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	tWarriorsThirdPart_ItemGet[3312116]["RewardItem"][2] = {}
	tWarriorsThirdPart_ItemGet[3312116]["RewardItem"][2]["Id"] = 3009101
	tWarriorsThirdPart_ItemGet[3312116]["RewardItem"][2]["Attr"] = "0 10"
	tWarriorsThirdPart_ItemGet[3312116]["RewardStrengthValue"] = {}
	tWarriorsThirdPart_ItemGet[3312116]["RewardStrengthValue"]["Value"] = 1000
	tWarriorsThirdPart_ItemGet[3312116]["LogId"] = 12001327
	tWarriorsThirdPart_ItemGet[3312116]["RewardEffect"] = {}
	tWarriorsThirdPart_ItemGet[3312116]["RewardEffect"]["Effect"] = "angelwing"

	-- 气力值1W点、优质神纹源晶（赠）、璀璨星陨石、500点赠天石
	tWarriorsThirdPart_ItemGet[3312117] = {}
	tWarriorsThirdPart_ItemGet[3312117]["DeleteItem"] = {}
	tWarriorsThirdPart_ItemGet[3312117]["DeleteItem"][1] = {}
	tWarriorsThirdPart_ItemGet[3312117]["DeleteItem"][1]["Id"] = 3312117
	tWarriorsThirdPart_ItemGet[3312117]["RewardItem"] = {}
	tWarriorsThirdPart_ItemGet[3312117]["RewardItem"][1] = {}
	tWarriorsThirdPart_ItemGet[3312117]["RewardItem"][1]["Id"] = 3009003
	tWarriorsThirdPart_ItemGet[3312117]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tWarriorsThirdPart_ItemGet[3312117]["RewardItem"][2] = {}
	tWarriorsThirdPart_ItemGet[3312117]["RewardItem"][2]["Id"] = 3311821
	tWarriorsThirdPart_ItemGet[3312117]["RewardItem"][2]["Attr"] = "0 1"
	tWarriorsThirdPart_ItemGet[3312117]["RewardStrengthValue"] = {}
	tWarriorsThirdPart_ItemGet[3312117]["RewardStrengthValue"]["Value"] = 10000
	tWarriorsThirdPart_ItemGet[3312117]["RewardEMoneyMono"] = {}
	tWarriorsThirdPart_ItemGet[3312117]["RewardEMoneyMono"]["Value"] = 500
	tWarriorsThirdPart_ItemGet[3312117]["RewardEMoneyMono"]["EmoneyLog"] = "1000	385	0	0	500	"
	tWarriorsThirdPart_ItemGet[3312117]["LogId"] = 12001327
	tWarriorsThirdPart_ItemGet[3312117]["RewardEffect"] = {}
	tWarriorsThirdPart_ItemGet[3312117]["RewardEffect"]["Effect"] = "angelwing"

	-- 气力值5000点、良品神纹源晶（赠）*5、晶莹星陨石*5、300点赠天石
	tWarriorsThirdPart_ItemGet[3312118] = {}
	tWarriorsThirdPart_ItemGet[3312118]["DeleteItem"] = {}
	tWarriorsThirdPart_ItemGet[3312118]["DeleteItem"][1] = {}
	tWarriorsThirdPart_ItemGet[3312118]["DeleteItem"][1]["Id"] = 3312118
	tWarriorsThirdPart_ItemGet[3312118]["RewardItem"] = {}
	tWarriorsThirdPart_ItemGet[3312118]["RewardItem"][1] = {}
	tWarriorsThirdPart_ItemGet[3312118]["RewardItem"][1]["Id"] = 3009002
	tWarriorsThirdPart_ItemGet[3312118]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	tWarriorsThirdPart_ItemGet[3312118]["RewardItem"][2] = {}
	tWarriorsThirdPart_ItemGet[3312118]["RewardItem"][2]["Id"] = 3311820
	tWarriorsThirdPart_ItemGet[3312118]["RewardItem"][2]["Attr"] = "0 5"
	tWarriorsThirdPart_ItemGet[3312118]["RewardStrengthValue"] = {}
	tWarriorsThirdPart_ItemGet[3312118]["RewardStrengthValue"]["Value"] = 5000
	tWarriorsThirdPart_ItemGet[3312118]["RewardEMoneyMono"] = {}
	tWarriorsThirdPart_ItemGet[3312118]["RewardEMoneyMono"]["Value"] = 300
	tWarriorsThirdPart_ItemGet[3312118]["RewardEMoneyMono"]["EmoneyLog"] = "1000	385	0	0	300	"
	tWarriorsThirdPart_ItemGet[3312118]["LogId"] = 12001327
	tWarriorsThirdPart_ItemGet[3312118]["RewardEffect"] = {}
	tWarriorsThirdPart_ItemGet[3312118]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 气力值3000点、良品神纹源晶（赠）*3、晶莹星陨石*1、100点赠天石
	tWarriorsThirdPart_ItemGet[3312119] = {}
	tWarriorsThirdPart_ItemGet[3312119]["DeleteItem"] = {}
	tWarriorsThirdPart_ItemGet[3312119]["DeleteItem"][1] = {}
	tWarriorsThirdPart_ItemGet[3312119]["DeleteItem"][1]["Id"] = 3312119
	tWarriorsThirdPart_ItemGet[3312119]["RewardItem"] = {}
	tWarriorsThirdPart_ItemGet[3312119]["RewardItem"][1] = {}
	tWarriorsThirdPart_ItemGet[3312119]["RewardItem"][1]["Id"] = 3009002
	tWarriorsThirdPart_ItemGet[3312119]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tWarriorsThirdPart_ItemGet[3312119]["RewardItem"][2] = {}
	tWarriorsThirdPart_ItemGet[3312119]["RewardItem"][2]["Id"] = 3311820
	tWarriorsThirdPart_ItemGet[3312119]["RewardItem"][2]["Attr"] = "0 3"
	tWarriorsThirdPart_ItemGet[3312119]["RewardStrengthValue"] = {}
	tWarriorsThirdPart_ItemGet[3312119]["RewardStrengthValue"]["Value"] = 3000
	tWarriorsThirdPart_ItemGet[3312119]["RewardEMoneyMono"] = {}
	tWarriorsThirdPart_ItemGet[3312119]["RewardEMoneyMono"]["Value"] = 100
	tWarriorsThirdPart_ItemGet[3312119]["RewardEMoneyMono"]["EmoneyLog"] = "1000	385	0	0	100	"
	tWarriorsThirdPart_ItemGet[3312119]["LogId"] = 12001327
	tWarriorsThirdPart_ItemGet[3312119]["RewardEffect"] = {}
	tWarriorsThirdPart_ItemGet[3312119]["RewardEffect"]["Effect"] = "angelwing"
-- 勇士觉醒赠点包
	tWarriorsThirdPart_ItemGet[3312120] = {}
	tWarriorsThirdPart_ItemGet[3312120][1] = {}
	tWarriorsThirdPart_ItemGet[3312120][1]["ItemChanceSum"] = 1000
	--666赠点
	tWarriorsThirdPart_ItemGet[3312120][1][1] = {}
	tWarriorsThirdPart_ItemGet[3312120][1][1]["RandomItemChanceType"] = 2
	tWarriorsThirdPart_ItemGet[3312120][1][1]["ItemChance"] = 400
	tWarriorsThirdPart_ItemGet[3312120][1][1]["RewardEMoneyMono"] = {}
	tWarriorsThirdPart_ItemGet[3312120][1][1]["RewardEMoneyMono"]["Value"] = 666
	tWarriorsThirdPart_ItemGet[3312120][1][1]["RewardEMoneyMono"]["EmoneyLog"] = "1000	385	0	0	666	"
	tWarriorsThirdPart_ItemGet[3312120][1][1]["RewardEffect"] = {}
	tWarriorsThirdPart_ItemGet[3312120][1][1]["RewardEffect"]["Effect"] = "angelwing"
	tWarriorsThirdPart_ItemGet[3312120][1][1]["Log"] = "0,0,3312120,1,12001261,2,3,666"

-- 888赠点
	tWarriorsThirdPart_ItemGet[3312120][1][2] = {}
	tWarriorsThirdPart_ItemGet[3312120][1][2]["RandomItemChanceType"] = 2
	tWarriorsThirdPart_ItemGet[3312120][1][2]["ItemChance"] = 300
	tWarriorsThirdPart_ItemGet[3312120][1][2]["RewardEMoneyMono"] = {}
	tWarriorsThirdPart_ItemGet[3312120][1][2]["RewardEMoneyMono"]["Value"] = 888
	tWarriorsThirdPart_ItemGet[3312120][1][2]["RewardEMoneyMono"]["EmoneyLog"] = "1000	385	0	0	888	"
	tWarriorsThirdPart_ItemGet[3312120][1][2]["RewardEffect"] = {}
	tWarriorsThirdPart_ItemGet[3312120][1][2]["RewardEffect"]["Effect"] = "angelwing"
	tWarriorsThirdPart_ItemGet[3312120][1][2]["Log"] = "0,0,3312120,1,12001261,2,3,888"

-- 1888赠点
	tWarriorsThirdPart_ItemGet[3312120][1][3] = {}
	tWarriorsThirdPart_ItemGet[3312120][1][3]["RandomItemChanceType"] = 2
	tWarriorsThirdPart_ItemGet[3312120][1][3]["ItemChance"] = 200
	tWarriorsThirdPart_ItemGet[3312120][1][3]["RewardEMoneyMono"] = {}
	tWarriorsThirdPart_ItemGet[3312120][1][3]["RewardEMoneyMono"]["Value"] = 1888
	tWarriorsThirdPart_ItemGet[3312120][1][3]["RewardEMoneyMono"]["EmoneyLog"] = "1000	385	0	0	1888	"
	tWarriorsThirdPart_ItemGet[3312120][1][3]["RewardEffect"] = {}
	tWarriorsThirdPart_ItemGet[3312120][1][3]["RewardEffect"]["Effect"] = "angelwing"
	tWarriorsThirdPart_ItemGet[3312120][1][3]["Log"] = "0,0,3312120,1,12001261,2,3,1888"

-- 3888赠点
	tWarriorsThirdPart_ItemGet[3312120][1][4] = {}
	tWarriorsThirdPart_ItemGet[3312120][1][4]["RandomItemChanceType"] = 2
	tWarriorsThirdPart_ItemGet[3312120][1][4]["ItemChance"] = 100
	tWarriorsThirdPart_ItemGet[3312120][1][4]["RewardEMoneyMono"] = {}
	tWarriorsThirdPart_ItemGet[3312120][1][4]["RewardEMoneyMono"]["Value"] = 3888
	tWarriorsThirdPart_ItemGet[3312120][1][4]["RewardEMoneyMono"]["EmoneyLog"] = "1000	385	0	0	3888	"
	tWarriorsThirdPart_ItemGet[3312120][1][4]["RewardEffect"] = {}
	tWarriorsThirdPart_ItemGet[3312120][1][4]["RewardEffect"]["Effect"] = "angelwing"

-- 88888赠点
	tWarriorsThirdPart_ItemGet[3312120][1][5] = {}
	tWarriorsThirdPart_ItemGet[3312120][1][5]["RandomItemChanceType"] = 2
	tWarriorsThirdPart_ItemGet[3312120][1][5]["ItemChance"] = 0
	tWarriorsThirdPart_ItemGet[3312120][1][5]["RewardEMoneyMono"] = {}
	tWarriorsThirdPart_ItemGet[3312120][1][5]["RewardEMoneyMono"]["Value"] = 88888
	tWarriorsThirdPart_ItemGet[3312120][1][5]["RewardEMoneyMono"]["EmoneyLog"] = "1000	385	0	0	88888	"
	tWarriorsThirdPart_ItemGet[3312120][1][5]["RewardEffect"] = {}
	tWarriorsThirdPart_ItemGet[3312120][1][5]["RewardEffect"]["Effect"] = "angelwing"
	tWarriorsThirdPart_ItemGet[3312120][1][5]["Log"] = "0,0,3312120,1,12001261,2,3,88888"

	-- 怪物
local tWarriorsThirdPart_MonsterGet = {}

	--100气力值包  0.30%
	tWarriorsThirdPart_MonsterGet[1] = {}
	tWarriorsThirdPart_MonsterGet[1]["ItemChanceSum"] = 10000
	tWarriorsThirdPart_MonsterGet[1]["LogId"] = 12001261
	tWarriorsThirdPart_MonsterGet[1]["LogStep"] = " 2[1]"
	
	tWarriorsThirdPart_MonsterGet[1][1] = {}
	tWarriorsThirdPart_MonsterGet[1][1]["RandomItemChanceType"] = 2
	tWarriorsThirdPart_MonsterGet[1][1]["ItemChance"] = 30
	tWarriorsThirdPart_MonsterGet[1][1]["RewardItem"] = {}
	tWarriorsThirdPart_MonsterGet[1][1]["RewardItem"][1] = {}
	tWarriorsThirdPart_MonsterGet[1][1]["RewardItem"][1]["Id"] = 3002027 -- 【库】100点气力值礼包[属性:11]【表格】100气力值包
	tWarriorsThirdPart_MonsterGet[1][1]["RewardItem"][1]["Attr"] = "0 1" -- 100点气力值礼包*1
	tWarriorsThirdPart_MonsterGet[1][1]["RewardEffect"] = {}
	tWarriorsThirdPart_MonsterGet[1][1]["RewardEffect"]["Effect"] = "angelwing"

	tWarriorsThirdPart_MonsterGet[1][2] = {}
	tWarriorsThirdPart_MonsterGet[1][2]["RandomItemChanceType"] = 2
	tWarriorsThirdPart_MonsterGet[1][2]["ItemChance"] = 9970

	
	tWarriorsThirdPart_MonsterGet[2] = {}
	tWarriorsThirdPart_MonsterGet[2]["ItemChanceSum"] = 10000
	tWarriorsThirdPart_MonsterGet[2]["LogId"] = 12001261
	tWarriorsThirdPart_MonsterGet[2]["LogStep"] = " 2[1]"
	-- 特制龙虎回气丹 - 2%
	tWarriorsThirdPart_MonsterGet[2][1] = {}
	tWarriorsThirdPart_MonsterGet[2][1]["RandomItemChanceType"] = 2
	tWarriorsThirdPart_MonsterGet[2][1]["ItemChance"] = 0
	tWarriorsThirdPart_MonsterGet[2][1]["RewardItem"] = {}
	tWarriorsThirdPart_MonsterGet[2][1]["RewardItem"][1] = {}
	tWarriorsThirdPart_MonsterGet[2][1]["RewardItem"][1]["Id"] = 729576 -- 【库】特制龙虎回气丹[属性:0]【表格】特制龙虎回气丹
	tWarriorsThirdPart_MonsterGet[2][1]["RewardItem"][1]["Attr"] = "0 1" -- 特制龙虎回气丹*1
	tWarriorsThirdPart_MonsterGet[2][1]["RewardEffect"] = {}
	tWarriorsThirdPart_MonsterGet[2][1]["RewardEffect"]["Effect"] = "angelwing"

	tWarriorsThirdPart_MonsterGet[2][2] = {}
	tWarriorsThirdPart_MonsterGet[2][2]["RandomItemChanceType"] = 2
	tWarriorsThirdPart_MonsterGet[2][2]["ItemChance"] = 10000
	
	
	
	tWarriorsThirdPart_MonsterGet[3] = {}
	tWarriorsThirdPart_MonsterGet[3]["ItemChanceSum"] = 10000
	tWarriorsThirdPart_MonsterGet[3]["LogId"] = 12001261
	tWarriorsThirdPart_MonsterGet[3]["LogStep"] = " 2[1]"
	-- 万能精粹 - 0.30%
	tWarriorsThirdPart_MonsterGet[3][1] = {}
	tWarriorsThirdPart_MonsterGet[3][1]["RandomItemChanceType"] = 2
	tWarriorsThirdPart_MonsterGet[3][1]["ItemChance"] = 30
	tWarriorsThirdPart_MonsterGet[3][1]["RewardItem"] = {}
	tWarriorsThirdPart_MonsterGet[3][1]["RewardItem"][1] = {}
	tWarriorsThirdPart_MonsterGet[3][1]["RewardItem"][1]["Id"] = 4060001 -- 【库】万能神纹精粹[属性:9]【表格】万能精粹
	tWarriorsThirdPart_MonsterGet[3][1]["RewardItem"][1]["Attr"] = "0 1 3" -- 万能神纹精粹*1
	tWarriorsThirdPart_MonsterGet[3][1]["RewardEffect"] = {}
	tWarriorsThirdPart_MonsterGet[3][1]["RewardEffect"]["Effect"] = "angelwing"

	tWarriorsThirdPart_MonsterGet[3][2] = {}
	tWarriorsThirdPart_MonsterGet[3][2]["RandomItemChanceType"] = 2
	tWarriorsThirdPart_MonsterGet[3][2]["ItemChance"] = 9970
	

	tWarriorsThirdPart_MonsterGet[4] = {}
	tWarriorsThirdPart_MonsterGet[4]["ItemChanceSum"] = 10000
	tWarriorsThirdPart_MonsterGet[4]["LogId"] = 12001261
	tWarriorsThirdPart_MonsterGet[4]["LogStep"] = " 2[1]"
	-- 人参果 - 0.30%
	tWarriorsThirdPart_MonsterGet[4][1] = {}
	tWarriorsThirdPart_MonsterGet[4][1]["RandomItemChanceType"] = 2
	tWarriorsThirdPart_MonsterGet[4][1]["ItemChance"] = 30
	tWarriorsThirdPart_MonsterGet[4][1]["RewardItem"] = {}
	tWarriorsThirdPart_MonsterGet[4][1]["RewardItem"][1] = {}
	tWarriorsThirdPart_MonsterGet[4][1]["RewardItem"][1]["Id"] = 3009100 -- 【库】人参果[属性:9]【表格】人参果
	tWarriorsThirdPart_MonsterGet[4][1]["RewardItem"][1]["Attr"] = "0 1" -- 人参果*1
	tWarriorsThirdPart_MonsterGet[4][1]["RewardEffect"] = {}
	tWarriorsThirdPart_MonsterGet[4][1]["RewardEffect"]["Effect"] = "angelwing"

	tWarriorsThirdPart_MonsterGet[4][2] = {}
	tWarriorsThirdPart_MonsterGet[4][2]["RandomItemChanceType"] = 2
	tWarriorsThirdPart_MonsterGet[4][2]["ItemChance"] = 9970

	tWarriorsThirdPart_MonsterGet[5] = {}
	tWarriorsThirdPart_MonsterGet[5]["ItemChanceSum"] = 10000
	tWarriorsThirdPart_MonsterGet[5]["LogId"] = 12001261
	tWarriorsThirdPart_MonsterGet[5]["LogStep"] = " 2[1]"
	-- 强效护心丹 - 1%
	tWarriorsThirdPart_MonsterGet[5][1] = {}
	tWarriorsThirdPart_MonsterGet[5][1]["RandomItemChanceType"] = 2
	tWarriorsThirdPart_MonsterGet[5][1]["ItemChance"] = 100
	tWarriorsThirdPart_MonsterGet[5][1]["RewardItem"] = {}
	tWarriorsThirdPart_MonsterGet[5][1]["RewardItem"][1] = {}
	tWarriorsThirdPart_MonsterGet[5][1]["RewardItem"][1]["Id"] = 3002030 -- 【库】强效护心丹[属性:9]【表格】强效护心丹
	tWarriorsThirdPart_MonsterGet[5][1]["RewardItem"][1]["Attr"] = "0 1" -- 强效护心丹*1
	tWarriorsThirdPart_MonsterGet[5][1]["RewardEffect"] = {}
	tWarriorsThirdPart_MonsterGet[5][1]["RewardEffect"]["Effect"] = "angelwing"

	-- 无 - 99.00%
	tWarriorsThirdPart_MonsterGet[5][2] = {}
	tWarriorsThirdPart_MonsterGet[5][2]["RandomItemChanceType"] = 2
	tWarriorsThirdPart_MonsterGet[5][2]["ItemChance"] = 9900

	
	tWarriorsThirdPart_MonsterGet[6] = {}
	tWarriorsThirdPart_MonsterGet[6]["ItemChanceSum"] = 10000
	tWarriorsThirdPart_MonsterGet[6]["LogId"] = 12001261
	tWarriorsThirdPart_MonsterGet[6]["LogStep"] = " 2[1]"
	-- +1赤炼石(赠) - 0.5%
	tWarriorsThirdPart_MonsterGet[6][1] = {}
	tWarriorsThirdPart_MonsterGet[6][1]["RandomItemChanceType"] = 2
	tWarriorsThirdPart_MonsterGet[6][1]["ItemChance"] = 50
	tWarriorsThirdPart_MonsterGet[6][1]["RewardItem"] = {}
	tWarriorsThirdPart_MonsterGet[6][1]["RewardItem"][1] = {}
	tWarriorsThirdPart_MonsterGet[6][1]["RewardItem"][1]["Id"] = 730001 
	tWarriorsThirdPart_MonsterGet[6][1]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- +1赤炼石(赠)
	tWarriorsThirdPart_MonsterGet[6][1]["RewardEffect"] = {}
	tWarriorsThirdPart_MonsterGet[6][1]["RewardEffect"]["Effect"] = "angelwing"

	-- 无 - 99.50%
	tWarriorsThirdPart_MonsterGet[6][2] = {}
	tWarriorsThirdPart_MonsterGet[6][2]["RandomItemChanceType"] = 2
	tWarriorsThirdPart_MonsterGet[6][2]["ItemChance"] = 9950

	tWarriorsThirdPart_MonsterGet[7] = {}
	tWarriorsThirdPart_MonsterGet[7]["ItemChanceSum"] = 10000
	tWarriorsThirdPart_MonsterGet[7]["LogId"] = 12001261
	tWarriorsThirdPart_MonsterGet[7]["LogStep"] = " 2[1]"
	-- +3赤炼石(赠) - 0.1%
	tWarriorsThirdPart_MonsterGet[7][1] = {}
	tWarriorsThirdPart_MonsterGet[7][1]["RandomItemChanceType"] = 2
	tWarriorsThirdPart_MonsterGet[7][1]["ItemChance"] = 10
	tWarriorsThirdPart_MonsterGet[7][1]["RewardItem"] = {}
	tWarriorsThirdPart_MonsterGet[7][1]["RewardItem"][1] = {}
	tWarriorsThirdPart_MonsterGet[7][1]["RewardItem"][1]["Id"] = 730003 
	tWarriorsThirdPart_MonsterGet[7][1]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- +3赤炼石(赠)
	tWarriorsThirdPart_MonsterGet[7][1]["RewardEffect"] = {}
	tWarriorsThirdPart_MonsterGet[7][1]["RewardEffect"]["Effect"] = "angelwing"

	-- 无 - 99.90%
	tWarriorsThirdPart_MonsterGet[7][2] = {}
	tWarriorsThirdPart_MonsterGet[7][2]["RandomItemChanceType"] = 2
	tWarriorsThirdPart_MonsterGet[7][2]["ItemChance"] = 9990

	tWarriorsThirdPart_MonsterGet[8] = {}
	tWarriorsThirdPart_MonsterGet[8]["ItemChanceSum"] = 10000
	tWarriorsThirdPart_MonsterGet[8]["LogId"] = 12001261
	tWarriorsThirdPart_MonsterGet[8]["LogStep"] = " 2[1]"
	-- 微光星陨石 - 0.5%
	tWarriorsThirdPart_MonsterGet[8][1] = {}
	tWarriorsThirdPart_MonsterGet[8][1]["RandomItemChanceType"] = 2
	tWarriorsThirdPart_MonsterGet[8][1]["ItemChance"] = 50
	tWarriorsThirdPart_MonsterGet[8][1]["RewardItem"] = {}
	tWarriorsThirdPart_MonsterGet[8][1]["RewardItem"][1] = {}
	tWarriorsThirdPart_MonsterGet[8][1]["RewardItem"][1]["Id"] = 3009000 
	tWarriorsThirdPart_MonsterGet[8][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 微光星陨石
	tWarriorsThirdPart_MonsterGet[8][1]["RewardEffect"] = {}
	tWarriorsThirdPart_MonsterGet[8][1]["RewardEffect"]["Effect"] = "angelwing"

	-- 无 - 99.90%
	tWarriorsThirdPart_MonsterGet[8][2] = {}
	tWarriorsThirdPart_MonsterGet[8][2]["RandomItemChanceType"] = 2
	tWarriorsThirdPart_MonsterGet[8][2]["ItemChance"] = 9950
	
	tWarriorsThirdPart_MonsterGet[9] = {}
	tWarriorsThirdPart_MonsterGet[9]["ItemChanceSum"] = 10000
	tWarriorsThirdPart_MonsterGet[9]["LogId"] = 12001261
	tWarriorsThirdPart_MonsterGet[9]["LogStep"] = " 2[1]"
	-- 明亮星陨石 - 0.1%
	tWarriorsThirdPart_MonsterGet[9][1] = {}
	tWarriorsThirdPart_MonsterGet[9][1]["RandomItemChanceType"] = 2
	tWarriorsThirdPart_MonsterGet[9][1]["ItemChance"] = 10
	tWarriorsThirdPart_MonsterGet[9][1]["RewardItem"] = {}
	tWarriorsThirdPart_MonsterGet[9][1]["RewardItem"][1] = {}
	tWarriorsThirdPart_MonsterGet[9][1]["RewardItem"][1]["Id"] = 3009001 
	tWarriorsThirdPart_MonsterGet[9][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 明亮星陨石
	tWarriorsThirdPart_MonsterGet[9][1]["RewardEffect"] = {}
	tWarriorsThirdPart_MonsterGet[9][1]["RewardEffect"]["Effect"] = "angelwing"

	-- 无 - 99.90%
	tWarriorsThirdPart_MonsterGet[9][2] = {}
	tWarriorsThirdPart_MonsterGet[9][2]["RandomItemChanceType"] = 2
	tWarriorsThirdPart_MonsterGet[9][2]["ItemChance"] = 9990

	
--记录玩家队伍id
local tWarriorsThirdPart_TeamData = {}


----------------------------------逻辑部分---------------------------------------------
--判断是否组队
function WarriorsThirdPart_JubTeam()
	local nTeamNum = Get_UserTeamNumbers()
	if nTeamNum < 2 then
		return false
	else
		return true
	end
end
--判断进副本时间
function WarriorsThirdPart_JubTime()
	for a,b in pairs(tActivityTime["WarriorsThirdPart"]["ActivityTime"]) do
		if Sys_ChkDayTime(b) then
			return true,a
		end
	end
	return false,0
end
--判断队长是否勇士
function WarriorsThirdPart_JubPro(nUserId)
	local nUserPro = Get_UserProfession(nUserId)
	if nUserPro >= G_PRO_Trojan0 and nUserPro <= G_PRO_Trojan5 then
		return true
	else
		return false
	end 
end
--判断队伍等级
function WarriorsThirdPart_JubLevel(nUserId,nTeamId,nNum,nTeamUserId)
	local nNowUserId = nTeamUserId or Get_UserId()
	if not User_JudgeLevelAndMetempsychosis(tWarriorsThirdPart_Data["Level"],tWarriorsThirdPart_Data["Metempsychosis"],nNowUserId) then
		tWarriorsThirdPart_Data[nTeamId]["UserLevel"] = tWarriorsThirdPart_Data[nTeamId]["UserLevel"] + 1
	end
	
	--判断队友在不在双龙城
	local nUserMap = Get_UserMapId(nNowUserId)
	local nUserMapPosX = Get_UserPositionX(nNowUserId)
	local nUserMapPosY = Get_UserPositionY(nNowUserId)
	
	local nMapId = tWarriorsThirdPart_Data["Map"]
	--激情服
	if SpecialServer_ChkNoGiftServer() then
		nMapId = tWarriorsThirdPart_Data["JiQingMap"]
	end
	if nUserMap ~= nMapId then
		tWarriorsThirdPart_Data[nTeamId]["UserMap"] = tWarriorsThirdPart_Data[nTeamId]["UserMap"] + 1
	end
	if not WarriorsThirdPart_Distance(nUserMapPosX,nUserMapPosY) then
		tWarriorsThirdPart_Data[nTeamId]["UserPos"] = tWarriorsThirdPart_Data[nTeamId]["UserPos"] + 1
	end
	--判断队长是否勇士
	if User_IsTeamLeader(nNowUserId) then
		if WarriorsThirdPart_JubPro(nNowUserId) then
			tWarriorsThirdPart_Data[nTeamId]["Leader"] = tWarriorsThirdPart_Data[nTeamId]["Leader"] + 1
		end
	end
	--判断队友今天是否已经参加过
	local nGoEvent = tWarriorsThirdPart_Stc[5]["EventType"]
	local nGoType = tWarriorsThirdPart_Stc[5]["DataType"]
	if Task_StcInterval(nGoEvent,nGoType,1,4,nNowUserId) then
		Task_SetStatistic(nGoEvent,nGoType,0,1,nNowUserId)
		Task_SetStcTimestamp(nGoEvent,nGoType,0,nNowUserId)
	end
	if Task_ChkStcValue(nGoEvent,nGoType,"~=",nNum,nNowUserId) and Task_ChkStcValue(nGoEvent,nGoType,"~=",0,nNowUserId) then
		tWarriorsThirdPart_Data[nTeamId]["UserNum"] = tWarriorsThirdPart_Data[nTeamId]["UserNum"] + 1
	end
end

function WarriorsThirdPart_Distance(nUserX,nUserY)

	local nX_Distance = math.abs(nUserX-tWarriorsThirdPart_Data["Pos"][4]["X"])
	local nY_Distance = math.abs(nUserY-tWarriorsThirdPart_Data["Pos"][4]["Y"])
	if SpecialServer_ChkNoGiftServer() then
		nX_Distance = math.abs(nUserX-tWarriorsThirdPart_Data["Pos"][5]["X"])
		nY_Distance = math.abs(nUserY-tWarriorsThirdPart_Data["Pos"][5]["Y"])
	end
	--比较宝藏的坐标x,y与玩家的坐标差绝对值
	if nX_Distance <= 10 and nY_Distance <= 10 then
		return true
	else
		return false
	end
end

function WarriorsThirdPart_RewardNum()
	local nNowTime = os.time()
	local nNowH = tonumber(os.date('%H',nNowTime))
	if nNowH > 21 then
		return 1
	end
	if nNowH < 10 then
		return 1
	end
	if nNowH < 13 and nNowH > 10 then
		return 2
	end
	if nNowH < 17 and nNowH > 13 then
		return 3
	end
	if nNowH < 21 and nNowH > 17 then
		return 4
	end
end
---进地图
function WarriorsThirdPart_GotoMap(nNpcId)
	if not Sys_ChkFullTime(tWarriorsThirdPart_Data["Now_Time"])  then
		return
	end
		
	--不在时间内
	local bFlag,nNum = WarriorsThirdPart_JubTime()
	-- local nIndex = WarriorsThirdPart_RewardNum()
	if not bFlag then
		Sys_MsgBox(tWarriorsThirdPart_Text[23851]["Msg"]["NoTime"][1])
		return
	end


	-- 等级判断
	if (not User_JudgeLevelAndMetempsychosis(tWarriorsThirdPart_Data["Level"],tWarriorsThirdPart_Data["Metempsychosis"])) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	-- 未组队
	if not WarriorsThirdPart_JubTeam() then
		Sys_MsgBox(tWarriorsThirdPart_Text[23851]["Msg"]["NoTeam"])
		return
	end
	local nUserId = Get_UserId()
	local nGoEvent = tWarriorsThirdPart_Stc[5]["EventType"]
	local nGoType = tWarriorsThirdPart_Stc[5]["DataType"]
	if Task_StcInterval(nGoEvent,nGoType,1,4,nUserId) then
		Task_SetStatistic(nGoEvent,nGoType,0,1,nUserId)
		Task_SetStcTimestamp(nGoEvent,nGoType,0,nUserId)
	end

	--判断今天是否已经参加过
	if Task_ChkStcValue(nGoEvent,nGoType,"~=",nNum,nUserId) and Task_ChkStcValue(nGoEvent,nGoType,"~=",0,nUserId) then
		Sys_MsgBox(tWarriorsThirdPart_Text[23851]["Msg"]["NoIn"])
		return
	end
	local nTeamId = Get_UserTeamId(nUserId)
	---判断是不是当前场次
	if Task_ChkStcValue(nGoEvent,nGoType,"==",nNum) then
		local nUserTeam = tWarriorsThirdPart_TeamData[nUserId]
		--与之前队伍一致
		if nUserTeam == nTeamId then
			local nMapId = tWarriorsThirdPart_Data["Pos"][3]["MapId"]
			local nPosX = tWarriorsThirdPart_Data["Pos"][3]["X"]
			local nPosY = tWarriorsThirdPart_Data["Pos"][3]["Y"]
			User_UserRandBoundTrans(nMapId,nPosX,nPosY,5,5,1)
		else
			WarriorsThirdPart_OrgaGoto(nUserId,nNum,nTeamId)
		end
		return
	end
	--判断是否队长
	if not User_IsTeamLeader(nUserId) then
		Sys_MsgBox(tWarriorsThirdPart_Text[23851]["Msg"]["NoLeardGo"])
		return
	end



	WarriorsThirdPart_OrgaGoto(nUserId,nNum,nTeamId)
end
function WarriorsThirdPart_OrgaGoto(nUserId,nNum,nTeamId)

	---组队人数标志
	tWarriorsThirdPart_Data[nTeamId] = {}
	tWarriorsThirdPart_Data[nTeamId]["UserLevel"] = 0
	tWarriorsThirdPart_Data[nTeamId]["UserMap"] = 0
	tWarriorsThirdPart_Data[nTeamId]["Leader"] = 0
	tWarriorsThirdPart_Data[nTeamId]["UserPos"] = 0
	tWarriorsThirdPart_Data[nTeamId]["UserNum"] = 0
	
	--队伍等级判断
	if User_TeamExeFuncByTeamer(3,"WarriorsThirdPart_JubLevel</N>"..nUserId .. "</N>" .. nTeamId .. "</N>" .. nNum,nUserId) then
		 WarriorsThirdPart_JubGoto(nUserId,nNum,nTeamId)
	end
	
end

function WarriorsThirdPart_JubGoto(nUserId,nNum,nTeamId)
	if tWarriorsThirdPart_Data[nTeamId]["UserLevel"] > 0 then
		Sys_MsgBox(tWarriorsThirdPart_Text[23851]["Msg"]["NoLevel"])
		return
	end
	--队友今日已进入
	if tWarriorsThirdPart_Data[nTeamId]["UserNum"] > 0 then
		Sys_MsgBox(tWarriorsThirdPart_Text[23851]["Msg"]["NoGoto"])
		return
	end
	--队友不在同张地图
	if tWarriorsThirdPart_Data[nTeamId]["UserMap"] > 0 then
		Sys_MsgBox(tWarriorsThirdPart_Text[23851]["Msg"]["NoPos"])
		return
	end
	--队友不在附近
	if tWarriorsThirdPart_Data[nTeamId]["UserPos"] > 0 then
		Sys_MsgBox(tWarriorsThirdPart_Text[23851]["Msg"]["NoPos"])
		return
	end
	--队长不是勇士
	if tWarriorsThirdPart_Data[nTeamId]["Leader"] <= 0 then
		Sys_MsgBox(tWarriorsThirdPart_Text[23851]["Msg"]["NoLeader"])
		return
	end

	User_TeamExeFuncByTeamer(3,"WarriorsThirdPart_SetStc</N>"..nUserId .. "</N>" .. nTeamId .. "</N>" .. nNum,nUserId)
end


function WarriorsThirdPart_SetStc(nUserId,nTeamId,nNum,nTeamUserId)
	local nNowUserId = nTeamUserId or Get_UserId()
	local nEvent = tWarriorsThirdPart_Stc[1]["EventType"]
	local nType = tWarriorsThirdPart_Stc[1]["DataType"]
	Task_SetStatistic(nEvent,nType,1,1,nNowUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nNowUserId)

	local nGoEvent = tWarriorsThirdPart_Stc[5]["EventType"]
	local nGoType = tWarriorsThirdPart_Stc[5]["DataType"]
	Task_SetStatistic(nGoEvent,nGoType,nNum,1,nNowUserId)
	Task_SetStcTimestamp(nGoEvent,nGoType,0,nNowUserId)
	
	local nMapId = tWarriorsThirdPart_Data["Pos"][3]["MapId"]
	local nPosX = tWarriorsThirdPart_Data["Pos"][3]["X"]
	local nPosY = tWarriorsThirdPart_Data["Pos"][3]["Y"]
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,5,5,1,nNowUserId)
	Sys_MsgBox(tWarriorsThirdPart_Text[23851]["Msg"]["Success"],nil,nil,nNowUserId)
	if tWarriorsThirdPart_TeamData[nNowUserId] == nil then
		tWarriorsThirdPart_TeamData[nNowUserId] = 0
	end
	tWarriorsThirdPart_TeamData[nNowUserId] = nTeamId
	--打log
	Sys_SaveActionFestivalLog(tWarriorsThirdPart_Data["GotoLog"],nNowUserId)
end

----领取奖励
function WarriorsThirdPart_Reward(nNpcId)

	if not Sys_ChkFullTime(tActivityTime["WarriorsThirdPart"]["AtNow_Time"])  then
		return
	end

	-- 等级判断
	if (not User_JudgeLevelAndMetempsychosis(tWarriorsThirdPart_Data["Level"],tWarriorsThirdPart_Data["Metempsychosis"])) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	local nUserId = Get_UserId()
	-- 没有可领的
	if not WarriorsThirdPart_JubReward() then
		Sys_MsgBox(tWarriorsThirdPart_Text[23851]["Msg"]["NotGet"])
		return
	end

	local nEvent = tWarriorsThirdPart_Stc[2]["EventType"]
	local nType = tWarriorsThirdPart_Stc[2]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	
	local nTimeEvent = tWarriorsThirdPart_Stc[3]["EventType"]
	local nTimeType = tWarriorsThirdPart_Stc[3]["DataType"]
	local nNum = Get_UserStatisticValue(nTimeEvent,nTimeType,nUserId) + 1
	local tTab = CommonFunc_Copy(tWarriorsThirdPart_Reward[1])
	local nIndex = 0
	for i = nNum,#tWarriorsThirdPart_Reward["Num"] do
		if nData >= tWarriorsThirdPart_Reward["Num"][i] then
			nIndex = nIndex + 1
			tTab["RewardItem"][nIndex] = {}
			tTab["RewardItem"][nIndex]["Id"] = tWarriorsThirdPart_Reward["Item"][i]
			tTab["RewardItem"][nIndex]["Attr"] = "0 1"
		end
	end

	---背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tTab)
	if not RewardTemplate_CheckSpace(tTab) then
		local sStr = string.format(tWarriorsThirdPart_Text[23851]["Msg"]["NoSpace"],nSpace)
		Sys_MsgBox(sStr)
		return
	end
	--打掩码
	Task_AddStatistic(nTimeEvent,nTimeType,nIndex,1,nUserId)
	Task_SetStcTimestamp(nTimeEvent,nTimeType,0,nUserId)
	RewardTemplate_UseItemAndMsg(tTab)
end 
---判断是否可领奖励
function WarriorsThirdPart_JubReward()
	local nTimeEvent = tWarriorsThirdPart_Stc[3]["EventType"]
	local nTimeType = tWarriorsThirdPart_Stc[3]["DataType"]
	local nNum = Get_UserStatisticValue(nTimeEvent,nTimeType) + 1
	local nEvent = tWarriorsThirdPart_Stc[2]["EventType"]
	local nType = tWarriorsThirdPart_Stc[2]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType)
	if nNum > 5 then
		return false
	end
	for i = nNum,#tWarriorsThirdPart_Reward["Num"] do
		if nData >= tWarriorsThirdPart_Reward["Num"][i] then
			return true
		end
	end
	return false
end
----获得最低赠点
function WarriorsThirdPart_RewardMono()
	local nEvent = tWarriorsThirdPart_Stc[2]["EventType"]
	local nType = tWarriorsThirdPart_Stc[2]["DataType"]
	local nKillNum = Get_UserStatisticValue(nEvent,nType)
	
	if nKillNum < tWarriorsThirdPart_Data["MonsterNum"] then
		return nKillNum,0
	end
	if nKillNum > tWarriorsThirdPart_Data["MonsterMostNum"] then
		return nKillNum,tWarriorsThirdPart_Data["MonoMoney"] 
	end
	local nMonoEmoney = math.floor(50/30000 * nKillNum) + 388
	return nKillNum,nMonoEmoney
end


---获得大奖
function WarriorsThirdPart_RewardItem()
	if not Sys_ChkFullTime(tActivityTime["WarriorsThirdPart"]["AtNow_Time"]) then
		return
	end
	local nKillNum,nMonoEmoney = WarriorsThirdPart_RewardMono()
	if nMonoEmoney <= 0 then
	
		return
	end
	local nEvent = tWarriorsThirdPart_Stc[4]["EventType"]
	local nType = tWarriorsThirdPart_Stc[4]["DataType"]

	if Task_ChkStcValue(nEvent,nType,">=",1,nUserId) then
		User_TalkChannel2005(tWarriorsThirdPart_Text[23851]["Msg"]["GuaFen"])
		return
	end
	--背包空间
	if not RewardTemplate_CheckSpace(tWarriorsThirdPart_Reward[3]) then
		Sys_MsgBox(tWarriorsThirdPart_Text[23851]["Msg"]["NotSpace"])
		return
	end
	local tTab = CommonFunc_Copy(tWarriorsThirdPart_Reward[2])
	tTab["RewardEMoneyMono"]["Value"] = nMonoEmoney
	tTab["RewardEMoneyMono"]["EmoneyLog"] = string.format(tWarriorsThirdPart_Reward[2]["RewardEMoneyMono"]["EmoneyLog"],nMonoEmoney)
	---打掩码
	Task_SetStatistic(nEvent,nType,1,1,nNowUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nNowUserId)
	
	RewardTemplate_UseItemAndMsg(tTab)
	--10%概率获得
	if Sys_Random(tWarriorsThirdPart_Data["Random"],10000) then
		RewardTemplate_UseItemAndMsg(tWarriorsThirdPart_Reward[3])
		--105
		Sys_MsgBox(string.format(tWarriorsThirdPart_Text[23851]["Msg"]["Get"],nMonoEmoney))
	else
		local sStr = string.format(tWarriorsThirdPart_Text[23851]["Msg"]["GetMoney"],nMonoEmoney)
		Sys_MsgBox(sStr)
	end
end


----怪物逻辑
function WarriorsThirdPart_KillMonster(nMonsterId)
	if not Sys_ChkFullTime(tWarriorsThirdPart_Data["Now_Time"]) then
		return
	end
	local nUserId = Get_UserId()
	if not User_JudgeLevelAndMetempsychosis(tWarriorsThirdPart_Data["Level"],tWarriorsThirdPart_Data["Metempsychosis"],nUserId) then
		return
	end
	--激情服
	if SpecialServer_ChkNoGiftServer() then
		return
	end
	--18:00-20:00活动时间
	local bFlag,nNum = WarriorsThirdPart_JubTime()
	local nGoEvent = tWarriorsThirdPart_Stc[5]["EventType"]
	local nGoType = tWarriorsThirdPart_Stc[5]["DataType"]
	if not bFlag then
		WarriorsThirdPart_Leave(0,nUserId)
		return
	end
	if Task_ChkStcValue(nGoEvent,nGoType,"~=",nNum,nUserId) then
		WarriorsThirdPart_Leave(0,nUserId)
		return
	end
	--未组队
	if not WarriorsThirdPart_JubTeam() then
		Sys_MsgBox(tWarriorsThirdPart_Text[23851]["Msg"]["NoGetScore"])
		return
	end
	---打掩码

	User_TeamExeFuncByTeamer(2,"WarriorsThirdPart_AddStc</N>"..nUserId,nUserId)

	--怪物掉落
	for b = 1,9 do
		local nEvent = tWarriorsThirdPart_MonsterStc[b]["EventType"] 
		local nType = tWarriorsThirdPart_MonsterStc[b]["DataType"]
		--隔天清掩码
		if Task_StcInterval(nEvent,nType,1,4,nUserId) then
			Task_SetStatistic(nEvent,nType,0,1,nUserId)
			Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		end
		if Task_ChkStcValue(nEvent,nType,"<",tWarriorsThirdPart_MonsterStc[b]["Data"],nUserId) then
		--背包空间判断
			if RewardTemplate_ChkRandomSpace(tWarriorsThirdPart_MonsterGet,b,nUserId) then
				local tReward = RewardTemplate_NewRandom(tWarriorsThirdPart_MonsterGet,b,nUserId)
				local tRewardResult = tReward[1]["tAward"][1]["RewardItem"]
				if tRewardResult ~= nil then
					Task_AddStatistic(nEvent,nType,1,1,nUserId)
					Task_SetStcTimestamp(nEvent,nType,0,nUserId)
				end
			else --背包满
				Sys_MsgBox(tWarriorsThirdPart_Text[23851]["Msg"]["MonsterSpace"],nil,nil,nUserId)
			end
		end
	end
end
function WarriorsThirdPart_AddStc(nUserId,nTeamUserId)
	local nNowUserId = nTeamUserId or Get_UserId()
	local nEvent = tWarriorsThirdPart_Stc[2]["EventType"]
	local nType = tWarriorsThirdPart_Stc[2]["DataType"]
	local nData = 1
	if nUserId == nNowUserId then
		nData = 2
	end
	Task_AddStatistic(nEvent,nType,nData,1,nNowUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nNowUserId)
	local nUserData = Get_UserStatisticValue(nEvent,nType,nNowUserId)
		--更新排行榜
	RankingFunc_SetInfo(tWarriorsThirdPart_Data["RankIndex"],nUserData,nNowUserId)
	WarriorsThirdPart_GetNum(nNowUserId)
	WarriorsThirdPart_Talk(nNowUserId)
end

----击杀每10000怪
function WarriorsThirdPart_GetNum(nNowUserId)
	local nEvent = tWarriorsThirdPart_Stc[2]["EventType"]
	local nType = tWarriorsThirdPart_Stc[2]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType,nNowUserId)
	if nData%tWarriorsThirdPart_Data["MonsterNum2"] == 0 then
		local sUserName = Get_UserName(nNowUserId)
		local sStr = string.format(tWarriorsThirdPart_Text[23851]["Msg"]["Broad4"],sUserName,nData)
		Sys_SystemBroadcast(sStr)
	end
end
----击杀每50怪
function WarriorsThirdPart_Talk(nNowUserId)
	local nEvent = tWarriorsThirdPart_Stc[2]["EventType"]
	local nType = tWarriorsThirdPart_Stc[2]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType,nNowUserId)
	if nData%tWarriorsThirdPart_Data["MonsterNum1"] == 0 then
		local sStr = string.format(tWarriorsThirdPart_Text[23851]["Msg"]["Monster"],nData)
		User_TalkChannel2005(sStr,nNowUserId)
	end
end

function WarriorsThirdPart_Broadcast()
	--激情服
	if SpecialServer_ChkNoGiftServer() then
		return
	end
	Sys_TalkBroadcast(tWarriorsThirdPart_Text[23851]["Msg"]["Broad3"])
end

function WarriorsThirdPart_Goto(nNum)
	local nUserId = Get_UserId()
	local nMap = Get_UserMapId(nUserId)
	if nMap ~= 1002 or nMap ~= 1036 then
		if SpecialServer_ChkNoGiftServer() then
			User_TalkChannel2005(tWarriorsThirdPart_Text[23851]["Msg"]["GotoNpc2"])
		else
			User_TalkChannel2005(tWarriorsThirdPart_Text[23851]["Msg"]["GotoNpc1"])
		end
		return
	end
	
	NpcPosition_PathFind(23851)
end

function WarriorsThirdPart_Web()
	User_SendWebDialog(tWarriorsThirdPart_Data["Web"])
end


function WarriorsThirdPart_Leave(nNum,nUserId)
	local nNowUserId = nUserId or Get_UserId()
	local nMapId = tWarriorsThirdPart_Data["Map"]
	local nPosX = tWarriorsThirdPart_Data["Pos"][1]["X"]
	local nPosY = tWarriorsThirdPart_Data["Pos"][1]["Y"]
	if SpecialServer_ChkNoGiftServer() then
		nMapId = tWarriorsThirdPart_Data["JiQingMap"]
		nPosX = tWarriorsThirdPart_Data["Pos"][2]["X"]
		nPosY = tWarriorsThirdPart_Data["Pos"][2]["Y"]
	end

	User_UserRandBoundTrans(nMapId,nPosX,nPosY,5,5,1,nNowUserId)
	if nNum == 1 then
		Sys_MsgBox(tWarriorsThirdPart_Text[23851]["Msg"]["LeaveTo"],nil,nil,nNowUserId)
	end
end
-------------------------------------------时间质检-----------------------------------------------

function WarriorsThirdPart_MoveUser()
	-- 判断活动时间
	if not Sys_ChkFullTime(tWarriorsThirdPart_Data["Now_Time"]) then
		return
	end
	--激情服
	if SpecialServer_ChkNoGiftServer() then
		return
	end
	if Map_GetUserNum(tWarriorsThirdPart_Data["Pos"][3]["MapId"],1) >= 1 then
		-- Map_SendBroadcastMsg(i,tSudokuTreasure_Text["Back"])
		Map_UserExeFunc(tWarriorsThirdPart_Data["Pos"][3]["MapId"],-1,"WarriorsThirdPart_Leave</N>1")

	end
end

----------------------------------NPC部分---------------------------------------------
tNpcFace[6293] = 35
tNpcGossip[23851]= tNpcGossip[23851] or DefaultNpc:new{}
tNpcGossip[23851]["OptionHidden"] = 1
--活动后
tNpcGossip[23851]["Text1-1"] = {111,112}
tNpcGossip[23851]["Text111"] = tWarriorsThirdPart_Text[23851]["Text111"]
tNpcGossip[23851]["Text112"] = tWarriorsThirdPart_Text[23851]["Text112"]
tNpcGossip[23851]["ChkFunc1-1"]= function()
	return not Sys_ChkFullTime(tActivityTime["WarriorsThirdPart"]["AtNow_Time"]) 
end
tNpcGossip[23851]["tOption1-1"] = {111}
tNpcGossip[23851]["Option111"] = tWarriorsThirdPart_Text[23851]["Option111"]
--【等级未达到】
tNpcGossip[23851]["Text1-2"] = {111,121,122,123,124,125}
tNpcGossip[23851]["Text121"] = tWarriorsThirdPart_Text[23851]["Text121"]
tNpcGossip[23851]["Text122"] = tWarriorsThirdPart_Text[23851]["Text122"]
tNpcGossip[23851]["Text123"] = tWarriorsThirdPart_Text[23851]["Text123"]
tNpcGossip[23851]["Text124"] = tWarriorsThirdPart_Text[23851]["Text124"]
tNpcGossip[23851]["Text125"] = tWarriorsThirdPart_Text[23851]["Text125"]
tNpcGossip[23851]["ChkFunc1-2"]= function()
	return (not User_JudgeLevelAndMetempsychosis(tWarriorsThirdPart_Data["Level"],tWarriorsThirdPart_Data["Metempsychosis"]))
end
tNpcGossip[23851]["tOption1-2"] = {121}
tNpcGossip[23851]["Option121"] = tWarriorsThirdPart_Text[23851]["Option121"]
-- 【等级达到】
tNpcGossip[23851]["Text1-3"] = {111,131,132,133,134,135,136}
tNpcGossip[23851]["Text131"] = tWarriorsThirdPart_Text[23851]["Text131"]
tNpcGossip[23851]["Text132"] = tWarriorsThirdPart_Text[23851]["Text132"]
tNpcGossip[23851]["Text133"] = tWarriorsThirdPart_Text[23851]["Text133"]
tNpcGossip[23851]["Text134"] = tWarriorsThirdPart_Text[23851]["Text134"]
tNpcGossip[23851]["Text135"] = tWarriorsThirdPart_Text[23851]["Text135"]
tNpcGossip[23851]["Text136"] = tWarriorsThirdPart_Text[23851]["Text136"]
tNpcGossip[23851]["ChkFunc1-3"]= function()
	if WarriorsThirdPart_JubTime() then
		tNpcGossip[23851]["Option131"] = tWarriorsThirdPart_Text[23851]["Option135"]
	else
		tNpcGossip[23851]["Option131"] = tWarriorsThirdPart_Text[23851]["Option131"]
	end
	return true
end
tNpcGossip[23851]["tOption1-3"] = {131,132,133}
tNpcGossip[23851]["Option131"] = tWarriorsThirdPart_Text[23851]["Option131"]
tNpcGossip[23851]["OptionFunc131"] = "WarriorsThirdPart_GotoMap</N>23851"  
tNpcGossip[23851]["OptionChkFunc131"]= function()
	return Sys_ChkFullTime(tWarriorsThirdPart_Data["Now_Time"]) 
end
tNpcGossip[23851]["Option132"] = tWarriorsThirdPart_Text[23851]["Option132"]
tNpcGossip[23851]["OptionPoint132"] = "2-1" 
-- tNpcGossip[23851]["OptionChkFunc132"]= function()
	-- return WarriorsThirdPart_JubReward()
-- end

tNpcGossip[23851]["Option133"] = tWarriorsThirdPart_Text[23851]["Option133"]
tNpcGossip[23851]["OptionPoint133"] = "3-1" 
-- tNpcGossip[23851]["OptionChkFunc133"]= function()
	-- local nEvent = tWarriorsThirdPart_Stc[4]["EventType"]
	-- local nType = tWarriorsThirdPart_Stc[4]["DataType"]

	-- if Task_ChkStcValue(nEvent,nType,">=",1,nUserId) then
		-- return false
	-- else
		-- return true
	-- end
-- end

-- tNpcGossip[23851]["Option134"] = tWarriorsThirdPart_Text[23851]["Option134"]
-- tNpcGossip[23851]["OptionPoint134"] = "3-1" 
-- tNpcGossip[23851]["OptionChkFunc134"]= function()
	-- return not Sys_ChkFullTime(tWarriorsThirdPart_Data["Now_Time"]) 
-- end
-- 领取屠魔阶段奖励
tNpcGossip[23851]["Text2-1"] = {211,212,213,214,215,216,226,217,227,218,228,219,220}
tNpcGossip[23851]["Text211"] = tWarriorsThirdPart_Text[23851]["Text211"]
tNpcGossip[23851]["Text212"] = tWarriorsThirdPart_Text[23851]["Text212"]
tNpcGossip[23851]["Text213"] = tWarriorsThirdPart_Text[23851]["Text213"]
tNpcGossip[23851]["Text214"] = tWarriorsThirdPart_Text[23851]["Text214"]
tNpcGossip[23851]["Text215"] = tWarriorsThirdPart_Text[23851]["Text215"]
tNpcGossip[23851]["Text216"] = tWarriorsThirdPart_Text[23851]["Text216"]
tNpcGossip[23851]["Text217"] = tWarriorsThirdPart_Text[23851]["Text217"]
tNpcGossip[23851]["Text218"] = tWarriorsThirdPart_Text[23851]["Text218"]
tNpcGossip[23851]["Text219"] = tWarriorsThirdPart_Text[23851]["Text219"]
tNpcGossip[23851]["Text220"] = tWarriorsThirdPart_Text[23851]["Text220"]
tNpcGossip[23851]["tOption2-1"] = {211,212}
tNpcGossip[23851]["Option211"] = tWarriorsThirdPart_Text[23851]["Option211"]
tNpcGossip[23851]["OptionFunc211"] = "WarriorsThirdPart_Reward</N>23851"  
tNpcGossip[23851]["OptionChkFunc211"]= function()
	local nTimeEvent = tWarriorsThirdPart_Stc[3]["EventType"]
	local nTimeType = tWarriorsThirdPart_Stc[3]["DataType"]
	local nNum = Get_UserStatisticValue(nTimeEvent,nTimeType)
	if nNum >= 5 then
		return false
	else
		return true
	end
end
tNpcGossip[23851]["Option212"] = tWarriorsThirdPart_Text[23851]["Option212"]
tNpcGossip[23851]["OptionChkFunc212"]= function()
	local nTimeEvent = tWarriorsThirdPart_Stc[3]["EventType"]
	local nTimeType = tWarriorsThirdPart_Stc[3]["DataType"]
	local nNum = Get_UserStatisticValue(nTimeEvent,nTimeType)
	if nNum >= 5 then
		return true
	else
		return false
	end
end
tNpcGossip[23851]["ChkFunc2-1"]= function()
	tNpcGossip[23851]["Text211"] = tWarriorsThirdPart_Text[23851]["Text211"]
	tNpcGossip[23851]["Text212"] = tWarriorsThirdPart_Text[23851]["Text212"]
	tNpcGossip[23851]["Text213"] = tWarriorsThirdPart_Text[23851]["Text213"]
	tNpcGossip[23851]["Text214"] = tWarriorsThirdPart_Text[23851]["Text214"]
	tNpcGossip[23851]["Text215"] = tWarriorsThirdPart_Text[23851]["Text215"]
	tNpcGossip[23851]["Text216"] = tWarriorsThirdPart_Text[23851]["Text216"]
	tNpcGossip[23851]["Text217"] = tWarriorsThirdPart_Text[23851]["Text217"]
	tNpcGossip[23851]["Text218"] = tWarriorsThirdPart_Text[23851]["Text218"]
	tNpcGossip[23851]["Text219"] = tWarriorsThirdPart_Text[23851]["Text219"]
	
	tNpcGossip[23851]["Text226"] = ""
	tNpcGossip[23851]["Text227"] = ""
	tNpcGossip[23851]["Text228"] = ""

	local nEvent = tWarriorsThirdPart_Stc[2]["EventType"]
	local nType = tWarriorsThirdPart_Stc[2]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType)
	tNpcGossip[23851]["Text220"] = string.format(tWarriorsThirdPart_Text[23851]["Text220"],nData)

	local nTimeEvent = tWarriorsThirdPart_Stc[3]["EventType"]
	local nTimeType = tWarriorsThirdPart_Stc[3]["DataType"]
	local nNum = Get_UserStatisticValue(nTimeEvent,nTimeType)
	for i = 1,nNum do
		local nIndex = 213
		tNpcGossip[23851]["Text" .. nIndex + i] = tWarriorsThirdPart_Text[23851]["Text22" .. i]
		if nNum >= 3 then
			tNpcGossip[23851]["Text" .. nIndex+10 + i] = tWarriorsThirdPart_Text[23851]["Text23" .. i]
		end
	end
	return true
end
-- 领取屠魔奖励（可领）
tNpcGossip[23851]["Text3-1"] = {311,312,313,316,314,315}
tNpcGossip[23851]["Text311"] = tWarriorsThirdPart_Text[23851]["Text311"]
tNpcGossip[23851]["Text312"] = tWarriorsThirdPart_Text[23851]["Text312"]
tNpcGossip[23851]["Text313"] = tWarriorsThirdPart_Text[23851]["Text313"]
tNpcGossip[23851]["Text314"] = tWarriorsThirdPart_Text[23851]["Text314"]
tNpcGossip[23851]["Text315"] = tWarriorsThirdPart_Text[23851]["Text315"]
tNpcGossip[23851]["Text316"] = tWarriorsThirdPart_Text[23851]["Text316"]

tNpcGossip[23851]["tOption3-1"] = {311,312,313}
tNpcGossip[23851]["Option311"] = tWarriorsThirdPart_Text[23851]["Option311"]
tNpcGossip[23851]["OptionFunc311"] = "WarriorsThirdPart_Web"
tNpcGossip[23851]["OptionChkFunc311"]= function()
	if Sys_ChkFullTime(tActivityTime["WarriorsThirdPart"]["RankTime"]) then
		return false
	else
		return true
	end
end
tNpcGossip[23851]["Option312"] = tWarriorsThirdPart_Text[23851]["Option312"]
tNpcGossip[23851]["OptionFunc312"] = "WarriorsThirdPart_RewardItem"
tNpcGossip[23851]["OptionChkFunc312"]= function()
	local nEvent = tWarriorsThirdPart_Stc[4]["EventType"]
	local nType = tWarriorsThirdPart_Stc[4]["DataType"]
	if Sys_ChkFullTime(tActivityTime["WarriorsThirdPart"]["RankTime"]) and Task_ChkStcValue(nEvent,nType,"<",1) then
		return true
	else
		return false
	end
end
tNpcGossip[23851]["Option313"] = tWarriorsThirdPart_Text[23851]["Option313"]
tNpcGossip[23851]["OptionChkFunc313"]= function()
	local nEvent = tWarriorsThirdPart_Stc[4]["EventType"]
	local nType = tWarriorsThirdPart_Stc[4]["DataType"]
	if Sys_ChkFullTime(tActivityTime["WarriorsThirdPart"]["RankTime"]) and Task_ChkStcValue(nEvent,nType,">=",1) then
		return true
	else
		return false
	end
end
tNpcGossip[23851]["ChkFunc3-1"]= function()
	local nKillNum,nMoney = WarriorsThirdPart_RewardMono()
	
	tNpcGossip[23851]["Text313"] = string.format(tWarriorsThirdPart_Text[23851]["Text313"],nKillNum)
	
	tNpcGossip[23851]["Text315"] = string.format(tWarriorsThirdPart_Text[23851]["Text315"],nMoney)
	return true
end

-- tNpcFace[1596] = 247
tNpcGossip[23852]= tNpcGossip[23852] or DefaultNpc:new{}
tNpcGossip[23852]["OptionHidden"] = 1

tNpcGossip[23852]["Text1-1"] = {111,112,113,114,115,116,117,118,119,120,121,122,123,124,112,125}
tNpcGossip[23852]["Text111"] = tWarriorsThirdPart_Text[23852]["Text111"]
tNpcGossip[23852]["Text112"] = tWarriorsThirdPart_Text[23852]["Text112"]
tNpcGossip[23852]["Text113"] = tWarriorsThirdPart_Text[23852]["Text113"]
tNpcGossip[23852]["Text125"] = tWarriorsThirdPart_Text[23852]["Text114"]

tNpcGossip[23852]["ChkFunc1-1"]= function()
	local nUserId = Get_UserId()
	local nEvent = tWarriorsThirdPart_Stc[2]["EventType"]
	local nType = tWarriorsThirdPart_Stc[2]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType)
	local sStr = string.format(tWarriorsThirdPart_Text[23852]["Text114"],nData)
	local nIndex = 113
	local tRankData = RankingFunc_GetNowData(tWarriorsThirdPart_Data["RankIndex"])
	local sName = ""
	local sScore = ""
	for i = 1, 10 do
		if tRankData[i] ~= nil and tonumber(tRankData[i]["UserId"]) > 0 and tRankData[i]["Score"] > 0 then
			sName = tRankData[i]["UserName"]
			sScore = tostring(tRankData[i]["Score"])
		else
			sName = tWarriorsThirdPart_Text[23852]["DialogName"]
			sScore = tWarriorsThirdPart_Text[23852]["DialogName"]
		end
		local sText1 = string.format(tWarriorsThirdPart_Text[23852]["Flag"],i)
		tNpcGossip[23852]["Text" .. nIndex + i] = Sys_Alignment(sText1,8,sScore,32,tostring(sName),60) .. "\n"

		if tRankData[i] ~= nil and tonumber(tRankData[i]["UserId"]) > 0 then
			if nUserId == tonumber(tRankData[i]["UserId"]) then
				
				sStr = string.format(tWarriorsThirdPart_Text[23852]["Text115"],nData,i)
				
			end
		end
	end
	tNpcGossip[23852]["Text125"] = sStr
	return true
end
tNpcGossip[23852]["tOption1-1"] = {111}
tNpcGossip[23852]["Option111"] = tWarriorsThirdPart_Text[23852]["Option111"]
tNpcGossip[23852]["OptionPoint111"] = "2-1" 

-- 查看排行榜奖励
tNpcGossip[23852]["Text2-1"] = {211,212,213,214,215,216,217,218,219}
tNpcGossip[23852]["Text211"] = tWarriorsThirdPart_Text[23852]["Text211"]
tNpcGossip[23852]["Text212"] = tWarriorsThirdPart_Text[23852]["Text212"]
tNpcGossip[23852]["Text213"] = tWarriorsThirdPart_Text[23852]["Text213"]
tNpcGossip[23852]["Text214"] = tWarriorsThirdPart_Text[23852]["Text214"]
tNpcGossip[23852]["Text215"] = tWarriorsThirdPart_Text[23852]["Text215"]
tNpcGossip[23852]["Text216"] = tWarriorsThirdPart_Text[23852]["Text216"]
tNpcGossip[23852]["Text217"] = tWarriorsThirdPart_Text[23852]["Text217"]
tNpcGossip[23852]["Text218"] = tWarriorsThirdPart_Text[23852]["Text218"]

tNpcGossip[23852]["tOption2-1"] = {211}
tNpcGossip[23852]["Option211"] = tWarriorsThirdPart_Text[23852]["Option211"]

---------------------------------物品部分---------------------------------------------
--------3312112 - 3312120
for i = 3312112,3312119 do
	tItem[i] = tItem[i] or {}
	tItem[i]["Function"] = function(nItemId,sItemName)
		if not Item_ChkItem(nItemId) then
			return
		end
		--背包空间判断
		local nSpace = RewardTemplate_GetRewardSpace(tWarriorsThirdPart_ItemGet[nItemId])-RewardTemplate_GetDelSpace(tWarriorsThirdPart_ItemGet[nItemId])
		if not(User_CheckLeftSpace(nSpace)) then
			local sStr = string.format(tWarriorsThirdPart_Text[23851]["Msg"]["ItemSpace"],nSpace)
			User_TalkChannel2005(sStr)
			return
		end
		local BFalg,sRewardStr = RewardTemplate_UseItemAndMsg(tWarriorsThirdPart_ItemGet[nItemId])
		if i >= 3312117 and i <= 3312119 then
			local nUserId = Get_UserId()
			local tRankData = RankingFunc_GetNowData(tWarriorsThirdPart_Data["RankIndex"])
			for i = 1,10 do
				if nUserId == tonumber(tRankData[i]["UserId"]) then
					local sUserName = Get_UserName(nUserId)
					local sItemName = Get_ItemtypeName(nItemId)
					local sStr = string.format(tWarriorsThirdPart_Text[23851]["Msg"]["Broad5"],sUserName,i,sItemName,sRewardStr)
					Sys_SystemBroadcast(sStr)
				end
			end
		end
	end
end
-- 勇士觉醒赠点包
tItem[3312120] = tItem[3312120] or {}
tItem[3312120]["Function"] = function(nItemId,sItemName)
	if not Item_ChkItem(nItemId) then
		return
	end
	--判断赠点
	if not RewardTemplate_EMoneyMonoLimit(tWarriorsThirdPart_ItemGet[3312120][1][3]["RewardEMoneyMono"]) then
		User_TalkChannel2005(tWarriorsThirdPart_Text[23851]["Msg"]["NotEmoney"])
		return
	end
	if not Item_DelItem(nItemId) then
		return
	end
	local tNewReward,sRewardStr = RewardTemplate_NewRandom(tWarriorsThirdPart_ItemGet[3312120],1)
	--提示
	local nMonoMoney = tNewReward[1]["tAward"][1]["RewardEMoneyMono"]["Value"]
	Sys_MsgBox(string.format(tWarriorsThirdPart_Text[23851]["Msg"]["OpenItem"],nMonoMoney))
	local sUserName = Get_UserName(nUserId)
	local sStr = string.format(tWarriorsThirdPart_Text[23851]["Msg"]["Broad1"],sUserName,nMonoMoney)
	Sys_SystemBroadcast(sStr)
end
---------------------------------怪物部分---------------------------------------------
-- 小怪
tMonster[4986] = tMonster[4986] or {}
tMonster[4986]["tFunction"] = tMonster[4986]["tFunction"] or {}
table.insert(tMonster[4986]["tFunction"],WarriorsThirdPart_KillMonster)

-- 前10名玩家
tRankingFunc_Info[23852] = {}
tRankingFunc_Info[23852]["ActiveTime"] = tActivityTime["WarriorsThirdPart"]["AtNow_Time"]
tRankingFunc_Info[23852]["DayTime"] = {}
tRankingFunc_Info[23852]["DayTime"][1] = "00:00 23:59"
tRankingFunc_Info[23852]["Reset"] = 1
tRankingFunc_Info[23852]["Global"] = {53282,53283,53284,53285}
tRankingFunc_Info[23852]["RankNum"] = 10
-- 邮件发奖
tRankingFunc_Info[23852]["Mail"] = {}
tRankingFunc_Info[23852]["Mail"]["ActiveTime"] = tActivityTime["WarriorsThirdPart"]["RankItem"]
tRankingFunc_Info[23852]["Mail"]["RewardTime"] = {}
tRankingFunc_Info[23852]["Mail"]["RewardTime"][1] = "00:00 00:05"
tRankingFunc_Info[23852]["Mail"]["HaveFunc"] = 1
tRankingFunc_Info[23852]["Mail"]["Reward"] = {}
tRankingFunc_Info[23852]["Mail"]["Reward"][1] = {}
tRankingFunc_Info[23852]["Mail"]["Reward"][1]["RewardRank"] = 1
tRankingFunc_Info[23852]["Mail"]["Reward"][1]["ActionId"] = 571478
tRankingFunc_Info[23852]["Mail"]["Reward"][1]["ExistDay"] = 7
tRankingFunc_Info[23852]["Mail"]["Reward"][1]["Title"] = tWarriorsThirdPart_Text[23852]["Title"]
tRankingFunc_Info[23852]["Mail"]["Reward"][1]["Sender"] = tWarriorsThirdPart_Text[23852]["Sender"]
tRankingFunc_Info[23852]["Mail"]["Reward"][1]["Content"] = string.format(tWarriorsThirdPart_Text[23852]["Content"],1)
tRankingFunc_Info[23852]["Mail"]["Reward"][2] = {}
tRankingFunc_Info[23852]["Mail"]["Reward"][2]["RewardRank"] = 2
tRankingFunc_Info[23852]["Mail"]["Reward"][2]["ActionId"] = 571479
tRankingFunc_Info[23852]["Mail"]["Reward"][2]["ExistDay"] = 7
tRankingFunc_Info[23852]["Mail"]["Reward"][2]["Title"] = tWarriorsThirdPart_Text[23852]["Title"]
tRankingFunc_Info[23852]["Mail"]["Reward"][2]["Sender"] = tWarriorsThirdPart_Text[23852]["Sender"]
tRankingFunc_Info[23852]["Mail"]["Reward"][2]["Content"] = string.format(tWarriorsThirdPart_Text[23852]["Content"],2)
tRankingFunc_Info[23852]["Mail"]["Reward"][3] = {}
tRankingFunc_Info[23852]["Mail"]["Reward"][3]["RewardRank"] = 3
tRankingFunc_Info[23852]["Mail"]["Reward"][3]["ActionId"] = 571479
tRankingFunc_Info[23852]["Mail"]["Reward"][3]["ExistDay"] = 7
tRankingFunc_Info[23852]["Mail"]["Reward"][3]["Title"] = tWarriorsThirdPart_Text[23852]["Title"]
tRankingFunc_Info[23852]["Mail"]["Reward"][3]["Sender"] = tWarriorsThirdPart_Text[23852]["Sender"]
tRankingFunc_Info[23852]["Mail"]["Reward"][3]["Content"] = string.format(tWarriorsThirdPart_Text[23852]["Content"],3)
tRankingFunc_Info[23852]["Mail"]["Reward"][4] = {}
tRankingFunc_Info[23852]["Mail"]["Reward"][4]["RewardRank"] = 4
tRankingFunc_Info[23852]["Mail"]["Reward"][4]["ActionId"] = 571479
tRankingFunc_Info[23852]["Mail"]["Reward"][4]["ExistDay"] = 7
tRankingFunc_Info[23852]["Mail"]["Reward"][4]["Title"] = tWarriorsThirdPart_Text[23852]["Title"]
tRankingFunc_Info[23852]["Mail"]["Reward"][4]["Sender"] = tWarriorsThirdPart_Text[23852]["Sender"]
tRankingFunc_Info[23852]["Mail"]["Reward"][4]["Content"] = string.format(tWarriorsThirdPart_Text[23852]["Content"],4)
tRankingFunc_Info[23852]["Mail"]["Reward"][5] = {}
tRankingFunc_Info[23852]["Mail"]["Reward"][5]["RewardRank"] = 5
tRankingFunc_Info[23852]["Mail"]["Reward"][5]["ActionId"] = 571479
tRankingFunc_Info[23852]["Mail"]["Reward"][5]["ExistDay"] = 7
tRankingFunc_Info[23852]["Mail"]["Reward"][5]["Title"] = tWarriorsThirdPart_Text[23852]["Title"]
tRankingFunc_Info[23852]["Mail"]["Reward"][5]["Sender"] = tWarriorsThirdPart_Text[23852]["Sender"]
tRankingFunc_Info[23852]["Mail"]["Reward"][5]["Content"] = string.format(tWarriorsThirdPart_Text[23852]["Content"],5)
tRankingFunc_Info[23852]["Mail"]["Reward"][6] = {}
tRankingFunc_Info[23852]["Mail"]["Reward"][6]["RewardRank"] = 6
tRankingFunc_Info[23852]["Mail"]["Reward"][6]["ActionId"] = 571480
tRankingFunc_Info[23852]["Mail"]["Reward"][6]["ExistDay"] = 7
tRankingFunc_Info[23852]["Mail"]["Reward"][6]["Title"] = tWarriorsThirdPart_Text[23852]["Title"]
tRankingFunc_Info[23852]["Mail"]["Reward"][6]["Sender"] = tWarriorsThirdPart_Text[23852]["Sender"]
tRankingFunc_Info[23852]["Mail"]["Reward"][6]["Content"] = string.format(tWarriorsThirdPart_Text[23852]["Content"],6)
tRankingFunc_Info[23852]["Mail"]["Reward"][7] = {}
tRankingFunc_Info[23852]["Mail"]["Reward"][7]["RewardRank"] = 7
tRankingFunc_Info[23852]["Mail"]["Reward"][7]["ActionId"] = 571480
tRankingFunc_Info[23852]["Mail"]["Reward"][7]["ExistDay"] = 7
tRankingFunc_Info[23852]["Mail"]["Reward"][7]["Title"] = tWarriorsThirdPart_Text[23852]["Title"]
tRankingFunc_Info[23852]["Mail"]["Reward"][7]["Sender"] = tWarriorsThirdPart_Text[23852]["Sender"]
tRankingFunc_Info[23852]["Mail"]["Reward"][7]["Content"] = string.format(tWarriorsThirdPart_Text[23852]["Content"],7)
tRankingFunc_Info[23852]["Mail"]["Reward"][8] = {}
tRankingFunc_Info[23852]["Mail"]["Reward"][8]["RewardRank"] = 8
tRankingFunc_Info[23852]["Mail"]["Reward"][8]["ActionId"] = 571480
tRankingFunc_Info[23852]["Mail"]["Reward"][8]["ExistDay"] = 8
tRankingFunc_Info[23852]["Mail"]["Reward"][8]["Title"] = tWarriorsThirdPart_Text[23852]["Title"]
tRankingFunc_Info[23852]["Mail"]["Reward"][8]["Sender"] = tWarriorsThirdPart_Text[23852]["Sender"]
tRankingFunc_Info[23852]["Mail"]["Reward"][8]["Content"] = string.format(tWarriorsThirdPart_Text[23852]["Content"],8)
tRankingFunc_Info[23852]["Mail"]["Reward"][9] = {}
tRankingFunc_Info[23852]["Mail"]["Reward"][9]["RewardRank"] = 9
tRankingFunc_Info[23852]["Mail"]["Reward"][9]["ActionId"] = 571480
tRankingFunc_Info[23852]["Mail"]["Reward"][9]["ExistDay"] = 9
tRankingFunc_Info[23852]["Mail"]["Reward"][9]["Title"] = tWarriorsThirdPart_Text[23852]["Title"]
tRankingFunc_Info[23852]["Mail"]["Reward"][9]["Sender"] = tWarriorsThirdPart_Text[23852]["Sender"]
tRankingFunc_Info[23852]["Mail"]["Reward"][9]["Content"] = string.format(tWarriorsThirdPart_Text[23852]["Content"],9)
tRankingFunc_Info[23852]["Mail"]["Reward"][10] = {}
tRankingFunc_Info[23852]["Mail"]["Reward"][10]["RewardRank"] = 10
tRankingFunc_Info[23852]["Mail"]["Reward"][10]["ActionId"] = 571480
tRankingFunc_Info[23852]["Mail"]["Reward"][10]["ExistDay"] = 10
tRankingFunc_Info[23852]["Mail"]["Reward"][10]["Title"] = tWarriorsThirdPart_Text[23852]["Title"]
tRankingFunc_Info[23852]["Mail"]["Reward"][10]["Sender"] = tWarriorsThirdPart_Text[23852]["Sender"]
tRankingFunc_Info[23852]["Mail"]["Reward"][10]["Content"] = string.format(tWarriorsThirdPart_Text[23852]["Content"],10)

-------------------------------------------时间质检-----------------------------------------------
local tWarriorsThirdPart_SystemProp = {}
tWarriorsThirdPart_SystemProp[1] = {}
tWarriorsThirdPart_SystemProp[1]["Type"] = 2
tWarriorsThirdPart_SystemProp[1]["TimeType"] = 4
tWarriorsThirdPart_SystemProp[1]["Time"] = "9:55 10:00"
tWarriorsThirdPart_SystemProp[1]["Func"] = WarriorsThirdPart_Broadcast

tWarriorsThirdPart_SystemProp[2] = {}
tWarriorsThirdPart_SystemProp[2]["Type"] = 2
tWarriorsThirdPart_SystemProp[2]["TimeType"] = 4
tWarriorsThirdPart_SystemProp[2]["Time"] = "10:59 11:02"
tWarriorsThirdPart_SystemProp[2]["Func"] = WarriorsThirdPart_MoveUser

tWarriorsThirdPart_SystemProp[3] = {}
tWarriorsThirdPart_SystemProp[3]["Type"] = 2
tWarriorsThirdPart_SystemProp[3]["TimeType"] = 4
tWarriorsThirdPart_SystemProp[3]["Time"] = "12:55 13:00"
tWarriorsThirdPart_SystemProp[3]["Func"] = WarriorsThirdPart_Broadcast

tWarriorsThirdPart_SystemProp[4] = {}
tWarriorsThirdPart_SystemProp[4]["Type"] = 2
tWarriorsThirdPart_SystemProp[4]["TimeType"] = 4
tWarriorsThirdPart_SystemProp[4]["Time"] = "16:55 17:00"
tWarriorsThirdPart_SystemProp[4]["Func"] = WarriorsThirdPart_Broadcast

tWarriorsThirdPart_SystemProp[5] = {}
tWarriorsThirdPart_SystemProp[5]["Type"] = 2
tWarriorsThirdPart_SystemProp[5]["TimeType"] = 4
tWarriorsThirdPart_SystemProp[5]["Time"] = "20:55 21:00"
tWarriorsThirdPart_SystemProp[5]["Func"] = WarriorsThirdPart_Broadcast

tWarriorsThirdPart_SystemProp[6] = {}
tWarriorsThirdPart_SystemProp[6]["Type"] = 2
tWarriorsThirdPart_SystemProp[6]["TimeType"] = 4
tWarriorsThirdPart_SystemProp[6]["Time"] = "13:59 14:02"
tWarriorsThirdPart_SystemProp[6]["Func"] = WarriorsThirdPart_MoveUser

tWarriorsThirdPart_SystemProp[7] = {}
tWarriorsThirdPart_SystemProp[7]["Type"] = 2
tWarriorsThirdPart_SystemProp[7]["TimeType"] = 4
tWarriorsThirdPart_SystemProp[7]["Time"] = "17:59 18:02"
tWarriorsThirdPart_SystemProp[7]["Func"] = WarriorsThirdPart_MoveUser

tWarriorsThirdPart_SystemProp[8] = {}
tWarriorsThirdPart_SystemProp[8]["Type"] = 2
tWarriorsThirdPart_SystemProp[8]["TimeType"] = 4
tWarriorsThirdPart_SystemProp[8]["Time"] = "21:59 22:02"
tWarriorsThirdPart_SystemProp[8]["Func"] = WarriorsThirdPart_MoveUser

table.insert(tSystemTime_InitialData,tWarriorsThirdPart_SystemProp[1])
table.insert(tSystemTime_InitialData,tWarriorsThirdPart_SystemProp[2])
table.insert(tSystemTime_InitialData,tWarriorsThirdPart_SystemProp[3])
table.insert(tSystemTime_InitialData,tWarriorsThirdPart_SystemProp[4])
table.insert(tSystemTime_InitialData,tWarriorsThirdPart_SystemProp[5])


-------------------------------------------陷进-----------------------------------------------
tTrap[2303] = tTrap[2303] or {}
tTrap[2303]["Function"] = function(nTrapId,nTrapType)
	Sys_MsgBox(tWarriorsThirdPart_Text[23851]["Msg"]["Leave"],"WarriorsThirdPart_Leave")
end


