------------------------------------------------------------------------------------
--Name:			[英文征服][活动脚本]德州赛季比赛及礼包制作
--Creator:		翁清海
--Created:		2017/11/01
------------------------------------------------------------------------------------

--命名前缀
--NovTexasPokerAndBag_

--logid:12000927

local tNovTexasPokerAndBag_Time = CommonFunc_Copy(tActivityTime["NovTexasPokerAndBag"])

local tNovTexasPokerAndBag_ELog = {}
	tNovTexasPokerAndBag_ELog[3306469] = "350	20952	0	0	-300000000	"
	tNovTexasPokerAndBag_ELog[3306470] = "350	20954	0	0	-100000000	"
	tNovTexasPokerAndBag_ELog[3390020] = "350	20956	0	0	-50000000	"
	tNovTexasPokerAndBag_ELog[3306471] = "350	20957	0	0	-300000000	"
	tNovTexasPokerAndBag_ELog[3306472] = "350	20959	0	0	-100000000	"
	tNovTexasPokerAndBag_ELog[3306473] = "350	20961	0	0	-30000000	"
	tNovTexasPokerAndBag_ELog[3390021] = "350	20963	0	0	-5000000	"
	--第二季
	tNovTexasPokerAndBag_ELog[3307007] = "350	20198	0	0	-100000000	"
	tNovTexasPokerAndBag_ELog[3307008] = "350	20196	0	0	-50000000	"
	tNovTexasPokerAndBag_ELog[3307009] = "350	20199	0	0	-200000000	"
	tNovTexasPokerAndBag_ELog[3307010] = "350	20197	0	0	-80000000	"
	tNovTexasPokerAndBag_ELog[3307011] = "350	20195	0	0	-30000000	"
	tNovTexasPokerAndBag_ELog[3390027] = "350	20195	0	0	-30000000	"
	tNovTexasPokerAndBag_ELog[3390028] = "350	20194	0	0	-5000000	"
	
--礼包打开记log
local tNovTexasPokerAndBag_OpenELog = {}
	tNovTexasPokerAndBag_OpenELog[3307006] = "350	20181	0	0	%d	"
	tNovTexasPokerAndBag_OpenELog[3307007] = "350	20182	0	0	%d	"
	tNovTexasPokerAndBag_OpenELog[3307008] = "350	20183	0	0	%d	"
	tNovTexasPokerAndBag_OpenELog[3307009] = "350	20185	0	0	%d	"
	tNovTexasPokerAndBag_OpenELog[3307010] = "350	20186	0	0	%d	"
	tNovTexasPokerAndBag_OpenELog[3307011] = "350	20187	0	0	%d	"
	tNovTexasPokerAndBag_OpenELog[3390027] = "350	20184	0	0	%d	"
	tNovTexasPokerAndBag_OpenELog[3390028] = "350	20188	0	0	%d	"
	
--奖励配置
local tNovTexasPokerAndBag_Reward = {}
	--德州扑克赛季冠军礼盒
	tNovTexasPokerAndBag_Reward[3306468] = {}
	tNovTexasPokerAndBag_Reward[3306468]["DeleteItem"] = {}
	tNovTexasPokerAndBag_Reward[3306468]["DeleteItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3306468]["DeleteItem"][1]["Id"] = 3306468
	tNovTexasPokerAndBag_Reward[3306468]["RewardItem"] = {}
	tNovTexasPokerAndBag_Reward[3306468]["RewardItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3306468]["RewardItem"][1]["Id"] = 193635
	tNovTexasPokerAndBag_Reward[3306468]["RewardItem"][1]["Attr"] = "0 1 0 129600 1 0 0 1"
	tNovTexasPokerAndBag_Reward[3306468]["RewardItem"][2] = {}
	tNovTexasPokerAndBag_Reward[3306468]["RewardItem"][2]["Id"] = 3306474
	tNovTexasPokerAndBag_Reward[3306468]["RewardItem"][2]["Attr"] = "0 1 0 43200 1"
	tNovTexasPokerAndBag_Reward[3306468]["LogId"] =12000927
	--德州扑克赛季亚军礼盒
	tNovTexasPokerAndBag_Reward[3306469] = {}
	tNovTexasPokerAndBag_Reward[3306469][1] = {}
	tNovTexasPokerAndBag_Reward[3306469][1]["DeleteItem"] = {}
	tNovTexasPokerAndBag_Reward[3306469][1]["DeleteItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3306469][1]["DeleteItem"][1]["Id"] = 3306469
	tNovTexasPokerAndBag_Reward[3306469][1]["RewardItem"] = {}
	tNovTexasPokerAndBag_Reward[3306469][1]["RewardItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3306469][1]["RewardItem"][1]["Id"] = 193635
	tNovTexasPokerAndBag_Reward[3306469][1]["RewardItem"][1]["Attr"] = "0 1 0 86400 1 0 0 1"
	tNovTexasPokerAndBag_Reward[3306469][1]["LogId"] =12000927
	tNovTexasPokerAndBag_Reward[3306469][2] = {}
	tNovTexasPokerAndBag_Reward[3306469][2]["DeleteItem"] = {}
	tNovTexasPokerAndBag_Reward[3306469][2]["DeleteItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3306469][2]["DeleteItem"][1]["Id"] = 3306469
	tNovTexasPokerAndBag_Reward[3306469][2]["RewardMoney"] = {}
	tNovTexasPokerAndBag_Reward[3306469][2]["RewardMoney"]["Value"] = 300000000
	tNovTexasPokerAndBag_Reward[3306469][2]["LogId"] =12000927
	tNovTexasPokerAndBag_Reward[3306469][3] = {}
	tNovTexasPokerAndBag_Reward[3306469][3]["DeleteItem"] = {}
	tNovTexasPokerAndBag_Reward[3306469][3]["DeleteItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3306469][3]["DeleteItem"][1]["Id"] = 3306469
	tNovTexasPokerAndBag_Reward[3306469][3]["RewardEMoney"] = {}
	tNovTexasPokerAndBag_Reward[3306469][3]["RewardEMoney"]["Value"] = 3000
	tNovTexasPokerAndBag_Reward[3306469][3]["RewardEMoney"]["EmoneyLog"] = "350	20953	-3000	-3000	1	"
	tNovTexasPokerAndBag_Reward[3306469][3]["LogId"] =12000927
	--德州扑克赛季季军礼盒
	tNovTexasPokerAndBag_Reward[3306470] = {}
	tNovTexasPokerAndBag_Reward[3306470][1] = {}
	tNovTexasPokerAndBag_Reward[3306470][1]["DeleteItem"] = {}
	tNovTexasPokerAndBag_Reward[3306470][1]["DeleteItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3306470][1]["DeleteItem"][1]["Id"] = 3306470
	tNovTexasPokerAndBag_Reward[3306470][1]["RewardItem"] = {}
	tNovTexasPokerAndBag_Reward[3306470][1]["RewardItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3306470][1]["RewardItem"][1]["Id"] = 193635
	tNovTexasPokerAndBag_Reward[3306470][1]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1"
	tNovTexasPokerAndBag_Reward[3306470][1]["LogId"] =12000927
	tNovTexasPokerAndBag_Reward[3306470][2] = {}
	tNovTexasPokerAndBag_Reward[3306470][2]["DeleteItem"] = {}
	tNovTexasPokerAndBag_Reward[3306470][2]["DeleteItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3306470][2]["DeleteItem"][1]["Id"] = 3306470
	tNovTexasPokerAndBag_Reward[3306470][2]["RewardMoney"] = {}
	tNovTexasPokerAndBag_Reward[3306470][2]["RewardMoney"]["Value"] = 100000000
	tNovTexasPokerAndBag_Reward[3306470][2]["LogId"] =12000927
	tNovTexasPokerAndBag_Reward[3306470][3] = {}
	tNovTexasPokerAndBag_Reward[3306470][3]["DeleteItem"] = {}
	tNovTexasPokerAndBag_Reward[3306470][3]["DeleteItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3306470][3]["DeleteItem"][1]["Id"] = 3306470
	tNovTexasPokerAndBag_Reward[3306470][3]["RewardEMoney"] = {}
	tNovTexasPokerAndBag_Reward[3306470][3]["RewardEMoney"]["Value"] = 1000
	tNovTexasPokerAndBag_Reward[3306470][3]["RewardEMoney"]["EmoneyLog"] = "350	20955	-1000	-1000	1	"
	tNovTexasPokerAndBag_Reward[3306470][3]["LogId"] =12000927
	--德州扑克赛季钻石礼盒
	tNovTexasPokerAndBag_Reward[3306471] = {}
	tNovTexasPokerAndBag_Reward[3306471][1] = {}
	tNovTexasPokerAndBag_Reward[3306471][1]["DeleteItem"] = {}
	tNovTexasPokerAndBag_Reward[3306471][1]["DeleteItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3306471][1]["DeleteItem"][1]["Id"] = 3306471
	tNovTexasPokerAndBag_Reward[3306471][1]["RewardItem"] = {}
	tNovTexasPokerAndBag_Reward[3306471][1]["RewardItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3306471][1]["RewardItem"][1]["Id"] = 193635
	tNovTexasPokerAndBag_Reward[3306471][1]["RewardItem"][1]["Attr"] = "0 1 0 129600 1 0 0 1"
	tNovTexasPokerAndBag_Reward[3306471][1]["LogId"] =12000927
	tNovTexasPokerAndBag_Reward[3306471][2] = {}
	tNovTexasPokerAndBag_Reward[3306471][2]["DeleteItem"] = {}
	tNovTexasPokerAndBag_Reward[3306471][2]["DeleteItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3306471][2]["DeleteItem"][1]["Id"] = 3306471
	tNovTexasPokerAndBag_Reward[3306471][2]["RewardMoney"] = {}
	tNovTexasPokerAndBag_Reward[3306471][2]["RewardMoney"]["Value"] = 300000000
	tNovTexasPokerAndBag_Reward[3306471][2]["LogId"] =12000927
	tNovTexasPokerAndBag_Reward[3306471][3] = {}
	tNovTexasPokerAndBag_Reward[3306471][3]["DeleteItem"] = {}
	tNovTexasPokerAndBag_Reward[3306471][3]["DeleteItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3306471][3]["DeleteItem"][1]["Id"] = 3306471
	tNovTexasPokerAndBag_Reward[3306471][3]["RewardEMoney"] = {}
	tNovTexasPokerAndBag_Reward[3306471][3]["RewardEMoney"]["Value"] = 3500
	tNovTexasPokerAndBag_Reward[3306471][3]["RewardEMoney"]["EmoneyLog"] = "350	20958	-3500	-3500	1	"
	tNovTexasPokerAndBag_Reward[3306471][3]["LogId"] =12000927
	--德州扑克赛季黄金礼盒
	tNovTexasPokerAndBag_Reward[3306472] = {}
	tNovTexasPokerAndBag_Reward[3306472][1] = {}
	tNovTexasPokerAndBag_Reward[3306472][1]["DeleteItem"] = {}
	tNovTexasPokerAndBag_Reward[3306472][1]["DeleteItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3306472][1]["DeleteItem"][1]["Id"] = 3306472
	tNovTexasPokerAndBag_Reward[3306472][1]["RewardItem"] = {}
	tNovTexasPokerAndBag_Reward[3306472][1]["RewardItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3306472][1]["RewardItem"][1]["Id"] = 193635
	tNovTexasPokerAndBag_Reward[3306472][1]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1"
	tNovTexasPokerAndBag_Reward[3306472][1]["LogId"] =12000927
	tNovTexasPokerAndBag_Reward[3306472][2] = {}
	tNovTexasPokerAndBag_Reward[3306472][2]["DeleteItem"] = {}
	tNovTexasPokerAndBag_Reward[3306472][2]["DeleteItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3306472][2]["DeleteItem"][1]["Id"] = 3306472
	tNovTexasPokerAndBag_Reward[3306472][2]["RewardMoney"] = {}
	tNovTexasPokerAndBag_Reward[3306472][2]["RewardMoney"]["Value"] = 100000000
	tNovTexasPokerAndBag_Reward[3306472][2]["LogId"] =12000927
	tNovTexasPokerAndBag_Reward[3306472][3] = {}
	tNovTexasPokerAndBag_Reward[3306472][3]["DeleteItem"] = {}
	tNovTexasPokerAndBag_Reward[3306472][3]["DeleteItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3306472][3]["DeleteItem"][1]["Id"] = 3306472
	tNovTexasPokerAndBag_Reward[3306472][3]["RewardEMoney"] = {}
	tNovTexasPokerAndBag_Reward[3306472][3]["RewardEMoney"]["Value"] = 1000
	tNovTexasPokerAndBag_Reward[3306472][3]["RewardEMoney"]["EmoneyLog"] = "350	20960	-1000	-1000	1	"
	tNovTexasPokerAndBag_Reward[3306472][3]["LogId"] =12000927
	--德州扑克赛季白银礼盒
	tNovTexasPokerAndBag_Reward[3306473] = {}
	tNovTexasPokerAndBag_Reward[3306473][1] = {}
	tNovTexasPokerAndBag_Reward[3306473][1]["DeleteItem"] = {}
	tNovTexasPokerAndBag_Reward[3306473][1]["DeleteItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3306473][1]["DeleteItem"][1]["Id"] = 3306473
	tNovTexasPokerAndBag_Reward[3306473][1]["RewardItem"] = {}
	tNovTexasPokerAndBag_Reward[3306473][1]["RewardItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3306473][1]["RewardItem"][1]["Id"] = 193635
	tNovTexasPokerAndBag_Reward[3306473][1]["RewardItem"][1]["Attr"] = "0 1 0 10080 1 0 0 1"
	tNovTexasPokerAndBag_Reward[3306473][1]["LogId"] =12000927
	tNovTexasPokerAndBag_Reward[3306473][2] = {}
	tNovTexasPokerAndBag_Reward[3306473][2]["DeleteItem"] = {}
	tNovTexasPokerAndBag_Reward[3306473][2]["DeleteItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3306473][2]["DeleteItem"][1]["Id"] = 3306473
	tNovTexasPokerAndBag_Reward[3306473][2]["RewardMoney"] = {}
	tNovTexasPokerAndBag_Reward[3306473][2]["RewardMoney"]["Value"] = 30000000
	tNovTexasPokerAndBag_Reward[3306473][2]["LogId"] =12000927
	tNovTexasPokerAndBag_Reward[3306473][3] = {}
	tNovTexasPokerAndBag_Reward[3306473][3]["DeleteItem"] = {}
	tNovTexasPokerAndBag_Reward[3306473][3]["DeleteItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3306473][3]["DeleteItem"][1]["Id"] = 3306473
	tNovTexasPokerAndBag_Reward[3306473][3]["RewardEMoney"] = {}
	tNovTexasPokerAndBag_Reward[3306473][3]["RewardEMoney"]["Value"] = 300
	tNovTexasPokerAndBag_Reward[3306473][3]["RewardEMoney"]["EmoneyLog"] = "350	20962	-300	-300	1	"
	tNovTexasPokerAndBag_Reward[3306473][3]["LogId"] =12000927
	--德州扑克赛季荣耀礼盒
	tNovTexasPokerAndBag_Reward[3390020] = {}
	tNovTexasPokerAndBag_Reward[3390020]["DeleteItem"] = {}
	tNovTexasPokerAndBag_Reward[3390020]["DeleteItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3390020]["DeleteItem"][1]["Id"] = 3390020
	tNovTexasPokerAndBag_Reward[3390020]["RewardMoney"] = {}
	tNovTexasPokerAndBag_Reward[3390020]["RewardMoney"]["Value"] = 50000000
	tNovTexasPokerAndBag_Reward[3390020]["LogId"] =12000927
	--德州扑克赛季青铜礼盒
	tNovTexasPokerAndBag_Reward[3390021] = {}
	tNovTexasPokerAndBag_Reward[3390021]["DeleteItem"] = {}
	tNovTexasPokerAndBag_Reward[3390021]["DeleteItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3390021]["DeleteItem"][1]["Id"] = 3390021
	tNovTexasPokerAndBag_Reward[3390021]["RewardMoney"] = {}
	tNovTexasPokerAndBag_Reward[3390021]["RewardMoney"]["Value"] = 5000000
	tNovTexasPokerAndBag_Reward[3390021]["LogId"] =12000927
	
	--德州扑克赛季第二季冠军礼盒
	tNovTexasPokerAndBag_Reward[3307006] = {}
	tNovTexasPokerAndBag_Reward[3307006]["DeleteItem"] = {}
	tNovTexasPokerAndBag_Reward[3307006]["DeleteItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3307006]["DeleteItem"][1]["Id"] = 3307006
	tNovTexasPokerAndBag_Reward[3307006]["RewardItem"] = {}
	tNovTexasPokerAndBag_Reward[3307006]["RewardItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3307006]["RewardItem"][1]["Id"] = 192555
	tNovTexasPokerAndBag_Reward[3307006]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tNovTexasPokerAndBag_Reward[3307006]["RewardItem"][2] = {}
	tNovTexasPokerAndBag_Reward[3307006]["RewardItem"][2]["Id"] = 3307082
	tNovTexasPokerAndBag_Reward[3307006]["RewardItem"][2]["Attr"] = "0 1 0 43200 1"
	tNovTexasPokerAndBag_Reward[3307006]["LogId"] =12000927
	--德州扑克赛季第二季亚军礼盒
	tNovTexasPokerAndBag_Reward[3307007] = {}
	tNovTexasPokerAndBag_Reward[3307007][1] = {}
	tNovTexasPokerAndBag_Reward[3307007][1]["DeleteItem"] = {}
	tNovTexasPokerAndBag_Reward[3307007][1]["DeleteItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3307007][1]["DeleteItem"][1]["Id"] = 3307007
	tNovTexasPokerAndBag_Reward[3307007][1]["RewardItem"] = {}
	tNovTexasPokerAndBag_Reward[3307007][1]["RewardItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3307007][1]["RewardItem"][1]["Id"] = 192555
	tNovTexasPokerAndBag_Reward[3307007][1]["RewardItem"][1]["Attr"] = "0 1 0 86400 1 0 0 1"
	tNovTexasPokerAndBag_Reward[3307007][1]["LogId"] =12000927
	tNovTexasPokerAndBag_Reward[3307007][2] = {}
	tNovTexasPokerAndBag_Reward[3307007][2]["DeleteItem"] = {}
	tNovTexasPokerAndBag_Reward[3307007][2]["DeleteItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3307007][2]["DeleteItem"][1]["Id"] = 3307007
	tNovTexasPokerAndBag_Reward[3307007][2]["RewardMoney"] = {}
	tNovTexasPokerAndBag_Reward[3307007][2]["RewardMoney"]["Value"] = 100000000
	tNovTexasPokerAndBag_Reward[3307007][2]["LogId"] =12000927
	tNovTexasPokerAndBag_Reward[3307007][3] = {}
	tNovTexasPokerAndBag_Reward[3307007][3]["DeleteItem"] = {}
	tNovTexasPokerAndBag_Reward[3307007][3]["DeleteItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3307007][3]["DeleteItem"][1]["Id"] = 3307007
	tNovTexasPokerAndBag_Reward[3307007][3]["RewardEMoney"] = {}
	tNovTexasPokerAndBag_Reward[3307007][3]["RewardEMoney"]["Value"] = 1000
	tNovTexasPokerAndBag_Reward[3307007][3]["RewardEMoney"]["EmoneyLog"] = "350	20192	-1000	-1000	1	"
	tNovTexasPokerAndBag_Reward[3307007][3]["LogId"] =12000927
	--德州扑克赛季第二季季军礼盒
	tNovTexasPokerAndBag_Reward[3307008] = {}
	tNovTexasPokerAndBag_Reward[3307008][1] = {}
	tNovTexasPokerAndBag_Reward[3307008][1]["DeleteItem"] = {}
	tNovTexasPokerAndBag_Reward[3307008][1]["DeleteItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3307008][1]["DeleteItem"][1]["Id"] = 3307008
	tNovTexasPokerAndBag_Reward[3307008][1]["RewardItem"] = {}
	tNovTexasPokerAndBag_Reward[3307008][1]["RewardItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3307008][1]["RewardItem"][1]["Id"] = 192555
	tNovTexasPokerAndBag_Reward[3307008][1]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1"
	tNovTexasPokerAndBag_Reward[3307008][1]["LogId"] =12000927
	tNovTexasPokerAndBag_Reward[3307008][2] = {}
	tNovTexasPokerAndBag_Reward[3307008][2]["DeleteItem"] = {}
	tNovTexasPokerAndBag_Reward[3307008][2]["DeleteItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3307008][2]["DeleteItem"][1]["Id"] = 3307008
	tNovTexasPokerAndBag_Reward[3307008][2]["RewardMoney"] = {}
	tNovTexasPokerAndBag_Reward[3307008][2]["RewardMoney"]["Value"] = 50000000
	tNovTexasPokerAndBag_Reward[3307008][2]["LogId"] =12000927
	tNovTexasPokerAndBag_Reward[3307008][3] = {}
	tNovTexasPokerAndBag_Reward[3307008][3]["DeleteItem"] = {}
	tNovTexasPokerAndBag_Reward[3307008][3]["DeleteItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3307008][3]["DeleteItem"][1]["Id"] = 3307008
	tNovTexasPokerAndBag_Reward[3307008][3]["RewardEMoney"] = {}
	tNovTexasPokerAndBag_Reward[3307008][3]["RewardEMoney"]["Value"] = 500
	tNovTexasPokerAndBag_Reward[3307008][3]["RewardEMoney"]["EmoneyLog"] = "350	20190	-500	-500	1	"
	tNovTexasPokerAndBag_Reward[3307008][3]["LogId"] =12000927
	--德州扑克赛季第二季钻石礼盒
	tNovTexasPokerAndBag_Reward[3307009] = {}
	tNovTexasPokerAndBag_Reward[3307009][1] = {}
	tNovTexasPokerAndBag_Reward[3307009][1]["DeleteItem"] = {}
	tNovTexasPokerAndBag_Reward[3307009][1]["DeleteItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3307009][1]["DeleteItem"][1]["Id"] = 3307009
	tNovTexasPokerAndBag_Reward[3307009][1]["RewardItem"] = {}
	tNovTexasPokerAndBag_Reward[3307009][1]["RewardItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3307009][1]["RewardItem"][1]["Id"] = 192555
	tNovTexasPokerAndBag_Reward[3307009][1]["RewardItem"][1]["Attr"] = "0 1 0 129600 1 0 0 1"
	tNovTexasPokerAndBag_Reward[3307009][1]["LogId"] =12000927
	tNovTexasPokerAndBag_Reward[3307009][2] = {}
	tNovTexasPokerAndBag_Reward[3307009][2]["DeleteItem"] = {}
	tNovTexasPokerAndBag_Reward[3307009][2]["DeleteItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3307009][2]["DeleteItem"][1]["Id"] = 3307009
	tNovTexasPokerAndBag_Reward[3307009][2]["RewardMoney"] = {}
	tNovTexasPokerAndBag_Reward[3307009][2]["RewardMoney"]["Value"] = 200000000
	tNovTexasPokerAndBag_Reward[3307009][2]["LogId"] =12000927
	tNovTexasPokerAndBag_Reward[3307009][3] = {}
	tNovTexasPokerAndBag_Reward[3307009][3]["DeleteItem"] = {}
	tNovTexasPokerAndBag_Reward[3307009][3]["DeleteItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3307009][3]["DeleteItem"][1]["Id"] = 3307009
	tNovTexasPokerAndBag_Reward[3307009][3]["RewardEMoney"] = {}
	tNovTexasPokerAndBag_Reward[3307009][3]["RewardEMoney"]["Value"] = 2000
	tNovTexasPokerAndBag_Reward[3307009][3]["RewardEMoney"]["EmoneyLog"] = "350	20193	-2000	-2000	1	"
	tNovTexasPokerAndBag_Reward[3307009][3]["LogId"] =12000927
	--德州扑克赛季第二季黄金礼盒
	tNovTexasPokerAndBag_Reward[3307010] = {}
	tNovTexasPokerAndBag_Reward[3307010][1] = {}
	tNovTexasPokerAndBag_Reward[3307010][1]["DeleteItem"] = {}
	tNovTexasPokerAndBag_Reward[3307010][1]["DeleteItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3307010][1]["DeleteItem"][1]["Id"] = 3307010
	tNovTexasPokerAndBag_Reward[3307010][1]["RewardItem"] = {}
	tNovTexasPokerAndBag_Reward[3307010][1]["RewardItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3307010][1]["RewardItem"][1]["Id"] = 192555
	tNovTexasPokerAndBag_Reward[3307010][1]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1"
	tNovTexasPokerAndBag_Reward[3307010][1]["LogId"] =12000927
	tNovTexasPokerAndBag_Reward[3307010][2] = {}
	tNovTexasPokerAndBag_Reward[3307010][2]["DeleteItem"] = {}
	tNovTexasPokerAndBag_Reward[3307010][2]["DeleteItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3307010][2]["DeleteItem"][1]["Id"] = 3307010
	tNovTexasPokerAndBag_Reward[3307010][2]["RewardMoney"] = {}
	tNovTexasPokerAndBag_Reward[3307010][2]["RewardMoney"]["Value"] = 80000000
	tNovTexasPokerAndBag_Reward[3307010][2]["LogId"] =12000927
	tNovTexasPokerAndBag_Reward[3307010][3] = {}
	tNovTexasPokerAndBag_Reward[3307010][3]["DeleteItem"] = {}
	tNovTexasPokerAndBag_Reward[3307010][3]["DeleteItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3307010][3]["DeleteItem"][1]["Id"] = 3307010
	tNovTexasPokerAndBag_Reward[3307010][3]["RewardEMoney"] = {}
	tNovTexasPokerAndBag_Reward[3307010][3]["RewardEMoney"]["Value"] = 800
	tNovTexasPokerAndBag_Reward[3307010][3]["RewardEMoney"]["EmoneyLog"] = "350	20191	-800	-800	1	"
	tNovTexasPokerAndBag_Reward[3307010][3]["LogId"] =12000927
	--德州扑克赛季第二季白银礼盒
	tNovTexasPokerAndBag_Reward[3307011] = {}
	tNovTexasPokerAndBag_Reward[3307011][1] = {}
	tNovTexasPokerAndBag_Reward[3307011][1]["DeleteItem"] = {}
	tNovTexasPokerAndBag_Reward[3307011][1]["DeleteItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3307011][1]["DeleteItem"][1]["Id"] = 3307011
	tNovTexasPokerAndBag_Reward[3307011][1]["RewardItem"] = {}
	tNovTexasPokerAndBag_Reward[3307011][1]["RewardItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3307011][1]["RewardItem"][1]["Id"] = 192555
	tNovTexasPokerAndBag_Reward[3307011][1]["RewardItem"][1]["Attr"] = "0 1 0 10080 1 0 0 1"
	tNovTexasPokerAndBag_Reward[3307011][1]["LogId"] =12000927
	tNovTexasPokerAndBag_Reward[3307011][2] = {}
	tNovTexasPokerAndBag_Reward[3307011][2]["DeleteItem"] = {}
	tNovTexasPokerAndBag_Reward[3307011][2]["DeleteItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3307011][2]["DeleteItem"][1]["Id"] = 3307011
	tNovTexasPokerAndBag_Reward[3307011][2]["RewardMoney"] = {}
	tNovTexasPokerAndBag_Reward[3307011][2]["RewardMoney"]["Value"] = 30000000
	tNovTexasPokerAndBag_Reward[3307011][2]["LogId"] =12000927
	tNovTexasPokerAndBag_Reward[3307011][3] = {}
	tNovTexasPokerAndBag_Reward[3307011][3]["DeleteItem"] = {}
	tNovTexasPokerAndBag_Reward[3307011][3]["DeleteItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3307011][3]["DeleteItem"][1]["Id"] = 3307011
	tNovTexasPokerAndBag_Reward[3307011][3]["RewardEMoney"] = {}
	tNovTexasPokerAndBag_Reward[3307011][3]["RewardEMoney"]["Value"] = 300
	tNovTexasPokerAndBag_Reward[3307011][3]["RewardEMoney"]["EmoneyLog"] = "350	20189	-300	-300	1	"
	tNovTexasPokerAndBag_Reward[3307011][3]["LogId"] =12000927
	--德州扑克赛季第二季荣耀礼盒
	tNovTexasPokerAndBag_Reward[3390027] = {}
	tNovTexasPokerAndBag_Reward[3390027]["DeleteItem"] = {}
	tNovTexasPokerAndBag_Reward[3390027]["DeleteItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3390027]["DeleteItem"][1]["Id"] = 3390027
	tNovTexasPokerAndBag_Reward[3390027]["RewardMoney"] = {}
	tNovTexasPokerAndBag_Reward[3390027]["RewardMoney"]["Value"] = 30000000
	tNovTexasPokerAndBag_Reward[3390027]["LogId"] =12000927
	--德州扑克赛季第二季青铜礼盒
	tNovTexasPokerAndBag_Reward[3390028] = {}
	tNovTexasPokerAndBag_Reward[3390028]["DeleteItem"] = {}
	tNovTexasPokerAndBag_Reward[3390028]["DeleteItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3390028]["DeleteItem"][1]["Id"] = 3390028
	tNovTexasPokerAndBag_Reward[3390028]["RewardMoney"] = {}
	tNovTexasPokerAndBag_Reward[3390028]["RewardMoney"]["Value"] = 5000000
	tNovTexasPokerAndBag_Reward[3390028]["LogId"] =12000927
	--周年德州冠军包
	tNovTexasPokerAndBag_Reward[3390063] = {}
	tNovTexasPokerAndBag_Reward[3390063]["DeleteItem"] = {}
	tNovTexasPokerAndBag_Reward[3390063]["DeleteItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3390063]["DeleteItem"][1]["Id"] = 3390063
	tNovTexasPokerAndBag_Reward[3390063]["RewardMoney"] = {}
	tNovTexasPokerAndBag_Reward[3390063]["RewardMoney"]["Value"] = 200000000
	tNovTexasPokerAndBag_Reward[3390063]["LogId"] =12000927
	--周年德州亚军包
	tNovTexasPokerAndBag_Reward[3390064] = {}
	tNovTexasPokerAndBag_Reward[3390064]["DeleteItem"] = {}
	tNovTexasPokerAndBag_Reward[3390064]["DeleteItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3390064]["DeleteItem"][1]["Id"] = 3390064
	tNovTexasPokerAndBag_Reward[3390064]["RewardMoney"] = {}
	tNovTexasPokerAndBag_Reward[3390064]["RewardMoney"]["Value"] = 100000000
	tNovTexasPokerAndBag_Reward[3390064]["LogId"] =12000927
	--周年德州季军包
	tNovTexasPokerAndBag_Reward[3390065] = {}
	tNovTexasPokerAndBag_Reward[3390065]["DeleteItem"] = {}
	tNovTexasPokerAndBag_Reward[3390065]["DeleteItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3390065]["DeleteItem"][1]["Id"] = 3390065
	tNovTexasPokerAndBag_Reward[3390065]["RewardMoney"] = {}
	tNovTexasPokerAndBag_Reward[3390065]["RewardMoney"]["Value"] = 50000000
	tNovTexasPokerAndBag_Reward[3390065]["LogId"] =12000927
	--周年德州荣誉包
	tNovTexasPokerAndBag_Reward[3390066] = {}
	tNovTexasPokerAndBag_Reward[3390066]["DeleteItem"] = {}
	tNovTexasPokerAndBag_Reward[3390066]["DeleteItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3390066]["DeleteItem"][1]["Id"] = 3390066
	tNovTexasPokerAndBag_Reward[3390066]["RewardMoney"] = {}
	tNovTexasPokerAndBag_Reward[3390066]["RewardMoney"]["Value"] = 10000000
	tNovTexasPokerAndBag_Reward[3390066]["LogId"] =12000927
	--德州段位普通包
	tNovTexasPokerAndBag_Reward[3390067] = {}
	tNovTexasPokerAndBag_Reward[3390067]["DeleteItem"] = {}
	tNovTexasPokerAndBag_Reward[3390067]["DeleteItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3390067]["DeleteItem"][1]["Id"] = 3390067
	tNovTexasPokerAndBag_Reward[3390067]["RewardMoney"] = {}
	tNovTexasPokerAndBag_Reward[3390067]["RewardMoney"]["Value"] = 2800000
	tNovTexasPokerAndBag_Reward[3390067]["LogId"] =12000927
	--德州段位王者包
	tNovTexasPokerAndBag_Reward[3308959] = {}
	tNovTexasPokerAndBag_Reward[3308959]["DeleteItem"] = {}
	tNovTexasPokerAndBag_Reward[3308959]["DeleteItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3308959]["DeleteItem"][1]["Id"] = 3308959
	tNovTexasPokerAndBag_Reward[3308959]["RewardItem"] = {}
	tNovTexasPokerAndBag_Reward[3308959]["RewardItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3308959]["RewardItem"][1]["Id"] = 3305539
	tNovTexasPokerAndBag_Reward[3308959]["RewardItem"][1]["Attr"] = "0 1 0 43200 1"
	tNovTexasPokerAndBag_Reward[3308959]["RewardItem"][2] = {}
	tNovTexasPokerAndBag_Reward[3308959]["RewardItem"][2]["Id"] = 3308962
	tNovTexasPokerAndBag_Reward[3308959]["RewardItem"][2]["Attr"] = "0 1"
	tNovTexasPokerAndBag_Reward[3308959]["LogId"] =12000927
	--德州段位精英包
	tNovTexasPokerAndBag_Reward[3308960] = {}
	tNovTexasPokerAndBag_Reward[3308960]["DeleteItem"] = {}
	tNovTexasPokerAndBag_Reward[3308960]["DeleteItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3308960]["DeleteItem"][1]["Id"] = 3308960
	tNovTexasPokerAndBag_Reward[3308960]["RewardItem"] = {}
	tNovTexasPokerAndBag_Reward[3308960]["RewardItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3308960]["RewardItem"][1]["Id"] = 3305539
	tNovTexasPokerAndBag_Reward[3308960]["RewardItem"][1]["Attr"] = "0 1 0 43200 1"
	tNovTexasPokerAndBag_Reward[3308960]["RewardMoney"] = {}
	tNovTexasPokerAndBag_Reward[3308960]["RewardMoney"]["Value"] = 5000000
	tNovTexasPokerAndBag_Reward[3308960]["LogId"] =12000927
	--德州段位高手包
	tNovTexasPokerAndBag_Reward[3308961] = {}
	tNovTexasPokerAndBag_Reward[3308961]["DeleteItem"] = {}
	tNovTexasPokerAndBag_Reward[3308961]["DeleteItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3308961]["DeleteItem"][1]["Id"] = 3308961
	tNovTexasPokerAndBag_Reward[3308961]["RewardItem"] = {}
	tNovTexasPokerAndBag_Reward[3308961]["RewardItem"][1] = {}
	tNovTexasPokerAndBag_Reward[3308961]["RewardItem"][1]["Id"] = 3305539
	tNovTexasPokerAndBag_Reward[3308961]["RewardItem"][1]["Attr"] = "0 1 0 43200 1"

---------------------------------------------逻辑模块---------------------------------------------
--物品使用
function NovTexasPokerAndBag_ItemUse(nItemTypeId, nIndex)
	local tAward = {}
	
	if nIndex == nil then
		tAward = CommonFunc_Copy(tNovTexasPokerAndBag_Reward[nItemTypeId])
	else
		tAward = CommonFunc_Copy(tNovTexasPokerAndBag_Reward[nItemTypeId][nIndex])
	end
	
	local bFlag = RewardTemplate_UseItemAndMsg(tAward)
	
	if not bFlag then
		return
	end
	
	--礼包打开记log
	if tNovTexasPokerAndBag_OpenELog[nItemTypeId] ~= nil then
		local nLog = 0
		
		if tAward["RewardItem"] ~= nil then
			nLog = tAward["RewardItem"][1]["Id"]
		elseif tAward["RewardMoney"] ~= nil then
			nLog = tAward["RewardMoney"]["Value"]
		elseif tAward["RewardEMoney"] ~= nil then
			nLog = tAward["RewardEMoney"]["Value"]
		end
		
		Sys_SaveEmoneyBuy(string.format(tNovTexasPokerAndBag_OpenELog[nItemTypeId], nLog))
	end
	
	--判断是否需要额外打log
	if nIndex ~= nil and nIndex ~= 2 then
		return
	end
	
	if tNovTexasPokerAndBag_ELog[nItemTypeId] ~= nil then
		Sys_SaveEmoneyBuy(tNovTexasPokerAndBag_ELog[nItemTypeId])
	end
end

--德州金币包限制使用
function NovTexasPokerAndBag_LimitUse(nItemTypeId, nIndex)
	if nIndex == 2 or nIndex == 3 or nIndex == nil then
		if User_IsUserInGame() then
			User_TalkChannel2005(tSpecItem_Use_Msg["NotUseMsg"])
			return
		end
	end
	
	NovTexasPokerAndBag_ItemUse(nItemTypeId, nIndex)
end
---------------------------------------------NPC模块---------------------------------------------
--德州新赛季专员
tNpcFace[5898] = 231
tNpcGossip[22352] = tNpcGossip[22352] or DefaultNpc:new{}
tNpcGossip[22352]["DialogueText"] = tNovTexasPokerAndBag_Text[22352]
tNpcGossip[22352]["OptionHidden"] = 1
--活动时间前
tNpcGossip[22352]["Text1-1"] = {111,112}
tNpcGossip[22352]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tNovTexasPokerAndBag_Time[3]["ActivityTime"])
end
tNpcGossip[22352]["tOption1-1"] = {111}
--活动时间内
tNpcGossip[22352]["Text1-2"] = {121,122,123,124,125}
tNpcGossip[22352]["ChkFunc1-2"] = function()
	return Sys_ChkFullTime(tNovTexasPokerAndBag_Time[3]["ActivityTime"])
end
tNpcGossip[22352]["tOption1-2"] = {121,122}
tNpcGossip[22352]["OptionFunc121"] = "User_OpenDialog</N>770</N>22352"
tNpcGossip[22352]["OptionFunc122"] = "User_OpenDialog</N>883</N>22352"
--活动时间后
tNpcGossip[22352]["Text1-3"] = {131,132}
tNpcGossip[22352]["ChkFunc1-3"] = function()
	return CommonFunc_GetAfterActivityTime(tNovTexasPokerAndBag_Time[3]["ActivityTime"])
end
tNpcGossip[22352]["tOption1-3"] = {131}

---------------------------------------------物品模块---------------------------------------------
-- 奇妙的扑克牌
tItemFace[3306467] = 1511

--德州扑克赛季冠军礼盒
tItem[3306468] = tItem[3306468] or {}
tItem[3306468]["Time"] = tNovTexasPokerAndBag_Time[1]["ItemOpen"]
tItem[3306468]["Function"] = function(nItemTypeId,sItemName)
	NovTexasPokerAndBag_ItemUse(nItemTypeId)
end

--德州扑克赛季亚军礼盒
tItemFace[3306469] = 1072
--德州扑克赛季季军礼盒
tItemFace[3306470] = 436
--德州扑克赛季钻石礼盒
tItemFace[3306471] = 406
--德州扑克赛季黄金礼盒
tItemFace[3306472] = 826
--德州扑克赛季白银礼盒
tItemFace[3306473] = 1073

for i = 3306469, 3306473 do
	tItem[i] = tItem[i] or {}
	tItem[i]["Time"] = tNovTexasPokerAndBag_Time[1]["ItemOpen"]
	tItem[i]["DialogueText"] = tNovTexasPokerAndBag_Text[i]
	tItem[i]["Text1-1"] = {111,112}
	tItem[i]["ChkFunc1-1"] = function() return true end
	tItem[i]["tOption1-1"] = {111,112,113}
	tItem[i]["OptionFunc111"] = string.format("NovTexasPokerAndBag_LimitUse</N>%d</N>1", i)
	tItem[i]["OptionFunc112"] = string.format("NovTexasPokerAndBag_LimitUse</N>%d</N>2", i)
	tItem[i]["OptionFunc113"] = string.format("NovTexasPokerAndBag_LimitUse</N>%d</N>3", i)
end

--德州扑克赛季荣耀礼盒
--德州扑克赛季青铜礼盒
for i = 3390020, 3390021 do
	tItem[i] = tItem[i] or {}
	tItem[i]["Time"] = tNovTexasPokerAndBag_Time[1]["ItemOpen"]
	tItem[i]["Function"] = function(nItemTypeId,sItemName)
		NovTexasPokerAndBag_LimitUse(nItemTypeId)
	end
end

--德州扑克赛季第二季冠军礼盒
tItem[3307006] = tItem[3307006] or {}
tItem[3307006]["Time"] = tNovTexasPokerAndBag_Time[2]["ItemOpen"]
tItem[3307006]["Function"] = function(nItemTypeId,sItemName)
	NovTexasPokerAndBag_ItemUse(nItemTypeId)
end

--德州扑克赛季第二季亚军礼盒
tItemFace[3307007] = 1153
--德州扑克赛季第二季季军礼盒
tItemFace[3307008] = 1154
--德州扑克赛季第二季钻石礼盒
tItemFace[3307009] = 1032
--德州扑克赛季第二季黄金礼盒
tItemFace[3307010] = 1031
--德州扑克赛季第二季白银礼盒
tItemFace[3307011] = 436

for i = 3307007, 3307011 do
	tItem[i] = tItem[i] or {}
	tItem[i]["Time"] = tNovTexasPokerAndBag_Time[2]["ItemOpen"]
	tItem[i]["DialogueText"] = tNovTexasPokerAndBag_Text[i]
	tItem[i]["Text1-1"] = {111,112}
	tItem[i]["ChkFunc1-1"] = function() return true end
	tItem[i]["tOption1-1"] = {111,112,113}
	tItem[i]["OptionFunc111"] = string.format("NovTexasPokerAndBag_LimitUse</N>%d</N>1", i)
	tItem[i]["OptionFunc112"] = string.format("NovTexasPokerAndBag_LimitUse</N>%d</N>2", i)
	tItem[i]["OptionFunc113"] = string.format("NovTexasPokerAndBag_LimitUse</N>%d</N>3", i)
end

--德州扑克赛季第二季荣耀礼盒
--德州扑克赛季第二季青铜礼盒
for i = 3390027, 3390028 do
	tItem[i] = tItem[i] or {}
	tItem[i]["Time"] = tNovTexasPokerAndBag_Time[2]["ItemOpen"]
	tItem[i]["Function"] = function(nItemTypeId,sItemName)
		NovTexasPokerAndBag_LimitUse(nItemTypeId)
	end
end

--周年德州冠军包
tItem[3390063] = tItem[3390063] or {}
tItem[3390063]["Time"] = tNovTexasPokerAndBag_Time[3]["ItemOpen"]
tItem[3390063]["Function"] = function(nItemTypeId,sItemName)
	NovTexasPokerAndBag_LimitUse(nItemTypeId)
end

--周年德州亚军包
tItem[3390064] = tItem[3390063]
--周年德州季军包
tItem[3390065] = tItem[3390063]
--周年德州荣誉包
tItem[3390066] = tItem[3390063]
--德州段位普通包
tItem[3390067] = tItem[3390063]
--德州段位王者包
tItem[3308959] = tItem[3308959] or {}
tItem[3308959]["Time"] = tNovTexasPokerAndBag_Time[3]["ItemOpen"]
tItem[3308959]["Function"] = function(nItemTypeId,sItemName)
	NovTexasPokerAndBag_ItemUse(nItemTypeId)
end
--德州段位精英包
tItem[3308960] = tItem[3390063]
--德州段位高手包
tItem[3308961] = tItem[3308959]

---------------------------------------------怪物模块---------------------------------------------

---------------------------------------------陷阱模块---------------------------------------------

