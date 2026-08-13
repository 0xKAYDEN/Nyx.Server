-----------------------------------------------------------------------------------------------------
--Name:		171027[英文征服][活动脚本]德州盈利转盘修改
--Creator: 	洪聪敏
--Created:	2017/10/27
------------------------------------------------------------------------------------------------------
--命名前缀：ChampionAddNewPro
--luaini:40740
--logid:12000883
------------------------------------------------------------------------------------------------------
local tChampionAddNewPro_Reward={}
	--Poker Master Match（5KK）门票碎片
	tChampionAddNewPro_Reward[3306399]={}
	tChampionAddNewPro_Reward[3306399]["DelMoney"]=2500000
	tChampionAddNewPro_Reward[3306399]["LogId"]=12000883
	tChampionAddNewPro_Reward[3306399]["DeleteItem"] = {}
	tChampionAddNewPro_Reward[3306399]["DeleteItem"][1] = {}
	tChampionAddNewPro_Reward[3306399]["DeleteItem"][1]["Id"] = 3306399
	tChampionAddNewPro_Reward[3306399]["RewardItem"]= {}
	tChampionAddNewPro_Reward[3306399]["RewardItem"][1] = {}
	tChampionAddNewPro_Reward[3306399]["RewardItem"][1]["Id"] = 3305478
	tChampionAddNewPro_Reward[3306399]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	
	--PokerRookieMatchPack 增购券礼包
	tChampionAddNewPro_Reward[3306759]={}
	tChampionAddNewPro_Reward[3306759]["LogId"]=12000883
	tChampionAddNewPro_Reward[3306759]["DeleteItem"] = {}
	tChampionAddNewPro_Reward[3306759]["DeleteItem"][1] = {}
	tChampionAddNewPro_Reward[3306759]["DeleteItem"][1]["Id"] = 3306759
	tChampionAddNewPro_Reward[3306759]["RewardItem"]= {}
	tChampionAddNewPro_Reward[3306759]["RewardItem"][1] = {}
	tChampionAddNewPro_Reward[3306759]["RewardItem"][1]["Id"] = 3306760
	tChampionAddNewPro_Reward[3306759]["RewardItem"][1]["Attr"] = "0 1"

	--锦标赛初级门票碎片礼包
	tChampionAddNewPro_Reward[3306400]={}
	tChampionAddNewPro_Reward[3306400][1]={}
	tChampionAddNewPro_Reward[3306400][1]["ItemChanceSum"]= 10000
	
	tChampionAddNewPro_Reward[3306400][1][1]={}
	tChampionAddNewPro_Reward[3306400][1][1]["RandomItemChanceType"]=2
	tChampionAddNewPro_Reward[3306400][1][1]["ItemChance"]=6500
	tChampionAddNewPro_Reward[3306400][1][1]["RewardItem"]= {}
	tChampionAddNewPro_Reward[3306400][1][1]["RewardItem"][1]= {}
	tChampionAddNewPro_Reward[3306400][1][1]["RewardItem"][1]["Id"] = 3305476
	tChampionAddNewPro_Reward[3306400][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tChampionAddNewPro_Reward[3306400][1][1]["LogId"]=12000883
	
	tChampionAddNewPro_Reward[3306400][1][2]={}
	tChampionAddNewPro_Reward[3306400][1][2]["RandomItemChanceType"]=2
	tChampionAddNewPro_Reward[3306400][1][2]["ItemChance"]=400
	tChampionAddNewPro_Reward[3306400][1][2]["RewardItem"]= {}
	tChampionAddNewPro_Reward[3306400][1][2]["RewardItem"][1]= {}
	tChampionAddNewPro_Reward[3306400][1][2]["RewardItem"][1]["Id"] = 3306399
	tChampionAddNewPro_Reward[3306400][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tChampionAddNewPro_Reward[3306400][1][2]["LogId"]=12000883
	
	tChampionAddNewPro_Reward[3306400][1][3]={}
	tChampionAddNewPro_Reward[3306400][1][3]["RandomItemChanceType"]=2
	tChampionAddNewPro_Reward[3306400][1][3]["ItemChance"]=100
	tChampionAddNewPro_Reward[3306400][1][3]["RewardItem"]= {}
	tChampionAddNewPro_Reward[3306400][1][3]["RewardItem"][1]= {}
	tChampionAddNewPro_Reward[3306400][1][3]["RewardItem"][1]["Id"] = 3305534
	tChampionAddNewPro_Reward[3306400][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tChampionAddNewPro_Reward[3306400][1][3]["LogId"]=12000883
	
	tChampionAddNewPro_Reward[3306400][1][4]={}
	tChampionAddNewPro_Reward[3306400][1][4]["RandomItemChanceType"]=2
	tChampionAddNewPro_Reward[3306400][1][4]["ItemChance"]=2000
	tChampionAddNewPro_Reward[3306400][1][4]["RewardItem"]= {}
	tChampionAddNewPro_Reward[3306400][1][4]["RewardItem"][1]= {}
	tChampionAddNewPro_Reward[3306400][1][4]["RewardItem"][1]["Id"] = 3305485
	tChampionAddNewPro_Reward[3306400][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tChampionAddNewPro_Reward[3306400][1][4]["LogId"]=12000883
	
	tChampionAddNewPro_Reward[3306400][1][5]={}
	tChampionAddNewPro_Reward[3306400][1][5]["RandomItemChanceType"]=2
	tChampionAddNewPro_Reward[3306400][1][5]["ItemChance"]=1000
	tChampionAddNewPro_Reward[3306400][1][5]["RewardItem"]={}
	tChampionAddNewPro_Reward[3306400][1][5]["RewardItem"][1]= {}
	tChampionAddNewPro_Reward[3306400][1][5]["RewardItem"][1]["Id"] = 3305487
	tChampionAddNewPro_Reward[3306400][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tChampionAddNewPro_Reward[3306400][1][5]["LogId"]=12000883
	
	--锦标赛初级门票礼包
	tChampionAddNewPro_Reward[3306401]={}
	tChampionAddNewPro_Reward[3306401][1]={}
	tChampionAddNewPro_Reward[3306401][1]["ItemChanceSum"]= 10000
	
	tChampionAddNewPro_Reward[3306401][1][1]={}
	tChampionAddNewPro_Reward[3306401][1][1]["RandomItemChanceType"]=2
	tChampionAddNewPro_Reward[3306401][1][1]["ItemChance"]=4000
	tChampionAddNewPro_Reward[3306401][1][1]["RewardItem"]= {}
	tChampionAddNewPro_Reward[3306401][1][1]["RewardItem"][1]= {}
	tChampionAddNewPro_Reward[3306401][1][1]["RewardItem"][1]["Id"] = 3305477
	tChampionAddNewPro_Reward[3306401][1][1]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tChampionAddNewPro_Reward[3306401][1][1]["LogId"]=12000883
	
	tChampionAddNewPro_Reward[3306401][1][2]={}
	tChampionAddNewPro_Reward[3306401][1][2]["RandomItemChanceType"]=2
	tChampionAddNewPro_Reward[3306401][1][2]["ItemChance"]=450
	tChampionAddNewPro_Reward[3306401][1][2]["RewardItem"]= {}
	tChampionAddNewPro_Reward[3306401][1][2]["RewardItem"][1]= {}
	tChampionAddNewPro_Reward[3306401][1][2]["RewardItem"][1]["Id"] = 3305478
	tChampionAddNewPro_Reward[3306401][1][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tChampionAddNewPro_Reward[3306401][1][2]["LogId"]=12000883
	
	tChampionAddNewPro_Reward[3306401][1][3]={}
	tChampionAddNewPro_Reward[3306401][1][3]["RandomItemChanceType"]=2
	tChampionAddNewPro_Reward[3306401][1][3]["ItemChance"]=50
	tChampionAddNewPro_Reward[3306401][1][3]["RewardItem"]= {}
	tChampionAddNewPro_Reward[3306401][1][3]["RewardItem"][1]= {}
	tChampionAddNewPro_Reward[3306401][1][3]["RewardItem"][1]["Id"] = 3305535
	tChampionAddNewPro_Reward[3306401][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tChampionAddNewPro_Reward[3306401][1][3]["LogId"]=12000883
	
	tChampionAddNewPro_Reward[3306401][1][4]={}
	tChampionAddNewPro_Reward[3306401][1][4]["RandomItemChanceType"]=2
	tChampionAddNewPro_Reward[3306401][1][4]["ItemChance"]=4500
	tChampionAddNewPro_Reward[3306401][1][4]["RewardItem"]= {}
	tChampionAddNewPro_Reward[3306401][1][4]["RewardItem"][1]= {}
	tChampionAddNewPro_Reward[3306401][1][4]["RewardItem"][1]["Id"] = 3305485
	tChampionAddNewPro_Reward[3306401][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tChampionAddNewPro_Reward[3306401][1][4]["LogId"]=12000883
	
	tChampionAddNewPro_Reward[3306401][1][5]={}
	tChampionAddNewPro_Reward[3306401][1][5]["RandomItemChanceType"]=2
	tChampionAddNewPro_Reward[3306401][1][5]["ItemChance"]=1000
	tChampionAddNewPro_Reward[3306401][1][5]["RewardItem"]= {}
	tChampionAddNewPro_Reward[3306401][1][5]["RewardItem"][1]= {}
	tChampionAddNewPro_Reward[3306401][1][5]["RewardItem"][1]["Id"] = 3305487
	tChampionAddNewPro_Reward[3306401][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tChampionAddNewPro_Reward[3306401][1][5]["LogId"]=12000883
	
	--锦标赛高级门票碎片礼包
	tChampionAddNewPro_Reward[3306402]={}
	tChampionAddNewPro_Reward[3306402][1]={}
	tChampionAddNewPro_Reward[3306402][1]["ItemChanceSum"]= 10000
	
	tChampionAddNewPro_Reward[3306402][1][1]={}
	tChampionAddNewPro_Reward[3306402][1][1]["RandomItemChanceType"]=2
	tChampionAddNewPro_Reward[3306402][1][1]["ItemChance"]=3000
	tChampionAddNewPro_Reward[3306402][1][1]["RewardItem"]= {}
	tChampionAddNewPro_Reward[3306402][1][1]["RewardItem"][1]= {}
	tChampionAddNewPro_Reward[3306402][1][1]["RewardItem"][1]["Id"] = 3305476
	tChampionAddNewPro_Reward[3306402][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tChampionAddNewPro_Reward[3306402][1][1]["LogId"]=12000883
	
	tChampionAddNewPro_Reward[3306402][1][2]={}
	tChampionAddNewPro_Reward[3306402][1][2]["RandomItemChanceType"]=2
	tChampionAddNewPro_Reward[3306402][1][2]["ItemChance"]=3500
	tChampionAddNewPro_Reward[3306402][1][2]["RewardItem"]= {}
	tChampionAddNewPro_Reward[3306402][1][2]["RewardItem"][1]= {}
	tChampionAddNewPro_Reward[3306402][1][2]["RewardItem"][1]["Id"] = 3306399
	tChampionAddNewPro_Reward[3306402][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tChampionAddNewPro_Reward[3306402][1][2]["LogId"]=12000883
	
	tChampionAddNewPro_Reward[3306402][1][3]={}
	tChampionAddNewPro_Reward[3306402][1][3]["RandomItemChanceType"]=2
	tChampionAddNewPro_Reward[3306402][1][3]["ItemChance"]=500
	tChampionAddNewPro_Reward[3306402][1][3]["RewardItem"]= {}
	tChampionAddNewPro_Reward[3306402][1][3]["RewardItem"][1]= {}
	tChampionAddNewPro_Reward[3306402][1][3]["RewardItem"][1]["Id"] = 3305534
	tChampionAddNewPro_Reward[3306402][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tChampionAddNewPro_Reward[3306402][1][3]["LogId"]=12000883
	
	tChampionAddNewPro_Reward[3306402][1][4]={}
	tChampionAddNewPro_Reward[3306402][1][4]["RandomItemChanceType"]=2
	tChampionAddNewPro_Reward[3306402][1][4]["ItemChance"]=2000
	tChampionAddNewPro_Reward[3306402][1][4]["RewardItem"]= {}
	tChampionAddNewPro_Reward[3306402][1][4]["RewardItem"][1]= {}
	tChampionAddNewPro_Reward[3306402][1][4]["RewardItem"][1]["Id"] = 3305489
	tChampionAddNewPro_Reward[3306402][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tChampionAddNewPro_Reward[3306402][1][4]["LogId"]=12000883
	
	tChampionAddNewPro_Reward[3306402][1][5]={}
	tChampionAddNewPro_Reward[3306402][1][5]["RandomItemChanceType"]=2
	tChampionAddNewPro_Reward[3306402][1][5]["ItemChance"]=1000
	tChampionAddNewPro_Reward[3306402][1][5]["RewardItem"]= {}
	tChampionAddNewPro_Reward[3306402][1][5]["RewardItem"][1]= {}
	tChampionAddNewPro_Reward[3306402][1][5]["RewardItem"][1]["Id"] = 3304719
	tChampionAddNewPro_Reward[3306402][1][5]["RewardItem"][1]["Attr"] = "0 20"
	tChampionAddNewPro_Reward[3306402][1][5]["LogId"]=12000883
	
	--锦标赛高级门票礼包
	tChampionAddNewPro_Reward[3306403]={}
	tChampionAddNewPro_Reward[3306403][1]={}
	tChampionAddNewPro_Reward[3306403][1]["ItemChanceSum"]= 10000
	
	tChampionAddNewPro_Reward[3306403][1][1]={}
	tChampionAddNewPro_Reward[3306403][1][1]["RandomItemChanceType"]=2
	tChampionAddNewPro_Reward[3306403][1][1]["ItemChance"]=3000
	tChampionAddNewPro_Reward[3306403][1][1]["RewardItem"]= {}
	tChampionAddNewPro_Reward[3306403][1][1]["RewardItem"][1]= {}
	tChampionAddNewPro_Reward[3306403][1][1]["RewardItem"][1]["Id"] = 3305477
	tChampionAddNewPro_Reward[3306403][1][1]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tChampionAddNewPro_Reward[3306403][1][1]["LogId"]=12000883
	
	tChampionAddNewPro_Reward[3306403][1][2]={}
	tChampionAddNewPro_Reward[3306403][1][2]["RandomItemChanceType"]=2
	tChampionAddNewPro_Reward[3306403][1][2]["ItemChance"]=3900
	tChampionAddNewPro_Reward[3306403][1][2]["RewardItem"]= {}
	tChampionAddNewPro_Reward[3306403][1][2]["RewardItem"][1]= {}
	tChampionAddNewPro_Reward[3306403][1][2]["RewardItem"][1]["Id"] = 3305478
	tChampionAddNewPro_Reward[3306403][1][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tChampionAddNewPro_Reward[3306403][1][2]["LogId"]=12000883
	
	tChampionAddNewPro_Reward[3306403][1][3]={}
	tChampionAddNewPro_Reward[3306403][1][3]["RandomItemChanceType"]=2
	tChampionAddNewPro_Reward[3306403][1][3]["ItemChance"]=100
	tChampionAddNewPro_Reward[3306403][1][3]["RewardItem"]= {}
	tChampionAddNewPro_Reward[3306403][1][3]["RewardItem"][1]= {}
	tChampionAddNewPro_Reward[3306403][1][3]["RewardItem"][1]["Id"] = 3305535
	tChampionAddNewPro_Reward[3306403][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tChampionAddNewPro_Reward[3306403][1][3]["LogId"]=12000883
	
	tChampionAddNewPro_Reward[3306403][1][4]={}
	tChampionAddNewPro_Reward[3306403][1][4]["RandomItemChanceType"]=2
	tChampionAddNewPro_Reward[3306403][1][4]["ItemChance"]=2000
	tChampionAddNewPro_Reward[3306403][1][4]["RewardItem"]= {}
	tChampionAddNewPro_Reward[3306403][1][4]["RewardItem"][1]= {}
	tChampionAddNewPro_Reward[3306403][1][4]["RewardItem"][1]["Id"] = 3305489
	tChampionAddNewPro_Reward[3306403][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tChampionAddNewPro_Reward[3306403][1][4]["LogId"]=12000883
	
	tChampionAddNewPro_Reward[3306403][1][5]={}
	tChampionAddNewPro_Reward[3306403][1][5]["RandomItemChanceType"]=2
	tChampionAddNewPro_Reward[3306403][1][5]["ItemChance"]=1000
	tChampionAddNewPro_Reward[3306403][1][5]["RewardItem"]= {}
	tChampionAddNewPro_Reward[3306403][1][5]["RewardItem"][1]= {}
	tChampionAddNewPro_Reward[3306403][1][5]["RewardItem"][1]["Id"] = 3304719
	tChampionAddNewPro_Reward[3306403][1][5]["RewardItem"][1]["Attr"] = "0 20"
	tChampionAddNewPro_Reward[3306403][1][5]["LogId"]=12000883
	
	--锦标赛增购礼包
	tChampionAddNewPro_Reward[3306404]={}
	tChampionAddNewPro_Reward[3306404][1]={}
	tChampionAddNewPro_Reward[3306404][1]["ItemChanceSum"]= 10000
	
	tChampionAddNewPro_Reward[3306404][1][1]={}
	tChampionAddNewPro_Reward[3306404][1][1]["RandomItemChanceType"]=2
	tChampionAddNewPro_Reward[3306404][1][1]["ItemChance"]=4000
	tChampionAddNewPro_Reward[3306404][1][1]["RewardItem"]= {}
	tChampionAddNewPro_Reward[3306404][1][1]["RewardItem"][1]= {}
	tChampionAddNewPro_Reward[3306404][1][1]["RewardItem"][1]["Id"] = 3305479
	tChampionAddNewPro_Reward[3306404][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tChampionAddNewPro_Reward[3306404][1][1]["LogId"]=12000883
	
	tChampionAddNewPro_Reward[3306404][1][2]={}
	tChampionAddNewPro_Reward[3306404][1][2]["RandomItemChanceType"]=2
	tChampionAddNewPro_Reward[3306404][1][2]["ItemChance"]=450
	tChampionAddNewPro_Reward[3306404][1][2]["RewardItem"]= {}
	tChampionAddNewPro_Reward[3306404][1][2]["RewardItem"][1]= {}
	tChampionAddNewPro_Reward[3306404][1][2]["RewardItem"][1]["Id"] = 3305480
	tChampionAddNewPro_Reward[3306404][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tChampionAddNewPro_Reward[3306404][1][2]["LogId"]=12000883
	
	tChampionAddNewPro_Reward[3306404][1][3]={}
	tChampionAddNewPro_Reward[3306404][1][3]["RandomItemChanceType"]=2
	tChampionAddNewPro_Reward[3306404][1][3]["ItemChance"]=50
	tChampionAddNewPro_Reward[3306404][1][3]["RewardItem"]= {}
	tChampionAddNewPro_Reward[3306404][1][3]["RewardItem"][1]= {}
	tChampionAddNewPro_Reward[3306404][1][3]["RewardItem"][1]["Id"] = 3305536
	tChampionAddNewPro_Reward[3306404][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tChampionAddNewPro_Reward[3306404][1][3]["LogId"]=12000883
	
	tChampionAddNewPro_Reward[3306404][1][4]={}
	tChampionAddNewPro_Reward[3306404][1][4]["RandomItemChanceType"]=2
	tChampionAddNewPro_Reward[3306404][1][4]["ItemChance"]=4500
	tChampionAddNewPro_Reward[3306404][1][4]["RewardItem"]= {}
	tChampionAddNewPro_Reward[3306404][1][4]["RewardItem"][1]= {}
	tChampionAddNewPro_Reward[3306404][1][4]["RewardItem"][1]["Id"] = 3305489
	tChampionAddNewPro_Reward[3306404][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tChampionAddNewPro_Reward[3306404][1][4]["LogId"]=12000883
	
	tChampionAddNewPro_Reward[3306404][1][5]={}
	tChampionAddNewPro_Reward[3306404][1][5]["RandomItemChanceType"]=2
	tChampionAddNewPro_Reward[3306404][1][5]["ItemChance"]=1000
	tChampionAddNewPro_Reward[3306404][1][5]["RewardItem"]= {}
	tChampionAddNewPro_Reward[3306404][1][5]["RewardItem"][1]= {}
	tChampionAddNewPro_Reward[3306404][1][5]["RewardItem"][1]["Id"] = 3305490
	tChampionAddNewPro_Reward[3306404][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tChampionAddNewPro_Reward[3306404][1][5]["LogId"]=12000883
	
	--锦标赛重购礼包
	tChampionAddNewPro_Reward[3306405]={}
	tChampionAddNewPro_Reward[3306405][1]={}
	tChampionAddNewPro_Reward[3306405][1]["ItemChanceSum"]= 10000
	
	tChampionAddNewPro_Reward[3306405][1][1]={}
	tChampionAddNewPro_Reward[3306405][1][1]["RandomItemChanceType"]=2
	tChampionAddNewPro_Reward[3306405][1][1]["ItemChance"]=4000
	tChampionAddNewPro_Reward[3306405][1][1]["RewardItem"]= {}
	tChampionAddNewPro_Reward[3306405][1][1]["RewardItem"][1]= {}
	tChampionAddNewPro_Reward[3306405][1][1]["RewardItem"][1]["Id"] = 3305481
	tChampionAddNewPro_Reward[3306405][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tChampionAddNewPro_Reward[3306405][1][1]["LogId"]=12000883
	
	tChampionAddNewPro_Reward[3306405][1][2]={}
	tChampionAddNewPro_Reward[3306405][1][2]["RandomItemChanceType"]=2
	tChampionAddNewPro_Reward[3306405][1][2]["ItemChance"]=450
	tChampionAddNewPro_Reward[3306405][1][2]["RewardItem"]= {}
	tChampionAddNewPro_Reward[3306405][1][2]["RewardItem"][1]= {}
	tChampionAddNewPro_Reward[3306405][1][2]["RewardItem"][1]["Id"] = 3305482
	tChampionAddNewPro_Reward[3306405][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tChampionAddNewPro_Reward[3306405][1][2]["LogId"]=12000883
	
	tChampionAddNewPro_Reward[3306405][1][3]={}
	tChampionAddNewPro_Reward[3306405][1][3]["RandomItemChanceType"]=2
	tChampionAddNewPro_Reward[3306405][1][3]["ItemChance"]=50
	tChampionAddNewPro_Reward[3306405][1][3]["RewardItem"]= {}
	tChampionAddNewPro_Reward[3306405][1][3]["RewardItem"][1]= {}
	tChampionAddNewPro_Reward[3306405][1][3]["RewardItem"][1]["Id"] = 3305537
	tChampionAddNewPro_Reward[3306405][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tChampionAddNewPro_Reward[3306405][1][3]["LogId"]=12000883
	
	tChampionAddNewPro_Reward[3306405][1][4]={}
	tChampionAddNewPro_Reward[3306405][1][4]["RandomItemChanceType"]=2
	tChampionAddNewPro_Reward[3306405][1][4]["ItemChance"]=4500
	tChampionAddNewPro_Reward[3306405][1][4]["RewardItem"]= {}
	tChampionAddNewPro_Reward[3306405][1][4]["RewardItem"][1]= {}
	tChampionAddNewPro_Reward[3306405][1][4]["RewardItem"][1]["Id"] = 3305489
	tChampionAddNewPro_Reward[3306405][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tChampionAddNewPro_Reward[3306405][1][4]["LogId"]=12000883
	
	tChampionAddNewPro_Reward[3306405][1][5]={}
	tChampionAddNewPro_Reward[3306405][1][5]["RandomItemChanceType"]=2
	tChampionAddNewPro_Reward[3306405][1][5]["ItemChance"]=1000
	tChampionAddNewPro_Reward[3306405][1][5]["RewardItem"]= {}
	tChampionAddNewPro_Reward[3306405][1][5]["RewardItem"][1]= {}
	tChampionAddNewPro_Reward[3306405][1][5]["RewardItem"][1]["Id"] = 3305490
	tChampionAddNewPro_Reward[3306405][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tChampionAddNewPro_Reward[3306405][1][5]["LogId"]=12000883
	
	--FlushofHeartsPack
	tChampionAddNewPro_Reward[3306406] = {}
	tChampionAddNewPro_Reward[3306406]["LogId"]=12000883
	tChampionAddNewPro_Reward[3306406]["DeleteItem"] = {}
	tChampionAddNewPro_Reward[3306406]["DeleteItem"][1] = {}
	tChampionAddNewPro_Reward[3306406]["DeleteItem"][1]["Id"] = 3306406
	tChampionAddNewPro_Reward[3306406]["RewardItem"] = {}
	tChampionAddNewPro_Reward[3306406]["RewardItem"][1] = {}
	tChampionAddNewPro_Reward[3306406]["RewardItem"][1]["Id"] = 193715
	tChampionAddNewPro_Reward[3306406]["RewardItem"][1]["Attr"] = "0 1 3 1440 1"
	
	-- ===扑克币*1礼包
	-- ===索引: tChampionAddNewPro_Reward[3323570]
	-- ===删除: 3323570,1
	-- ===EMoneyLog: 350,22544
	tChampionAddNewPro_Reward[3323570] = {}
	tChampionAddNewPro_Reward[3323570]["LogId"] = 12000883
	tChampionAddNewPro_Reward[3323570]["EmoneyLog"] = "350	22544	0	0	1	"
	tChampionAddNewPro_Reward[3323570]["DeleteItem"] = {}
	tChampionAddNewPro_Reward[3323570]["DeleteItem"][1] = {}
	tChampionAddNewPro_Reward[3323570]["DeleteItem"][1]["Id"] = 3323570 -- 【库】PokerTokenBag[属性:9]
	tChampionAddNewPro_Reward[3323570]["RewardItem"] = {}
	tChampionAddNewPro_Reward[3323570]["RewardItem"][1] = {}
	tChampionAddNewPro_Reward[3323570]["RewardItem"][1]["Id"] = 3304719 -- PokerToken[3304719][属性:9][叠加:10000][金币:0], 【表格】扑克币
	tChampionAddNewPro_Reward[3323570]["RewardItem"][1]["Attr"] = "0 1" -- PokerToken*1

	tChampionAddNewPro_Reward[3323571] = {}
	-- ===扑克币*2礼包
	-- ===索引: tChampionAddNewPro_Reward[3323571]
	-- ===删除: 3323571,1
	-- ===EMoneyLog: 350,22545
	tChampionAddNewPro_Reward[3323571]["LogId"] = 12000883
	tChampionAddNewPro_Reward[3323571]["EmoneyLog"] = "350	22545	0	0	1	"
	tChampionAddNewPro_Reward[3323571]["DeleteItem"] = {}
	tChampionAddNewPro_Reward[3323571]["DeleteItem"][1] = {}
	tChampionAddNewPro_Reward[3323571]["DeleteItem"][1]["Id"] = 3323571 -- 【库】2PokerTokenBag[属性:9]
	tChampionAddNewPro_Reward[3323571]["RewardItem"] = {}
	tChampionAddNewPro_Reward[3323571]["RewardItem"][1] = {}
	tChampionAddNewPro_Reward[3323571]["RewardItem"][1]["Id"] = 3304719 -- PokerToken[3304719][属性:9][叠加:10000][金币:0], 【表格】扑克币*2
	tChampionAddNewPro_Reward[3323571]["RewardItem"][1]["Attr"] = "0 2" -- PokerToken*2

	tChampionAddNewPro_Reward[3323572] = {}
	-- ===扑克币*5礼包
	-- ===索引: tChampionAddNewPro_Reward[3323572]
	-- ===删除: 3323572,1
	-- ===EMoneyLog: 350,22546
	tChampionAddNewPro_Reward[3323572]["LogId"] = 12000883
	tChampionAddNewPro_Reward[3323572]["EmoneyLog"] = "350	22546	0	0	1	"
	tChampionAddNewPro_Reward[3323572]["DeleteItem"] = {}
	tChampionAddNewPro_Reward[3323572]["DeleteItem"][1] = {}
	tChampionAddNewPro_Reward[3323572]["DeleteItem"][1]["Id"] = 3323572 -- 【库】5PokerTokenBag[属性:9]
	tChampionAddNewPro_Reward[3323572]["RewardItem"] = {}
	tChampionAddNewPro_Reward[3323572]["RewardItem"][1] = {}
	tChampionAddNewPro_Reward[3323572]["RewardItem"][1]["Id"] = 3304719 -- PokerToken[3304719][属性:9][叠加:10000][金币:0], 【表格】扑克币*5
	tChampionAddNewPro_Reward[3323572]["RewardItem"][1]["Attr"] = "0 5" -- PokerToken*5

	tChampionAddNewPro_Reward[3323573] = {}
	-- ===扑克币*8礼包
	-- ===索引: tChampionAddNewPro_Reward[3323573]
	-- ===删除: 3323573,1
	-- ===EMoneyLog: 350,22547
	tChampionAddNewPro_Reward[3323573]["LogId"] = 12000883
	tChampionAddNewPro_Reward[3323573]["EmoneyLog"] = "350	22547	0	0	1	"
	tChampionAddNewPro_Reward[3323573]["DeleteItem"] = {}
	tChampionAddNewPro_Reward[3323573]["DeleteItem"][1] = {}
	tChampionAddNewPro_Reward[3323573]["DeleteItem"][1]["Id"] = 3323573 -- 【库】8PokerTokenBag[属性:9]
	tChampionAddNewPro_Reward[3323573]["RewardItem"] = {}
	tChampionAddNewPro_Reward[3323573]["RewardItem"][1] = {}
	tChampionAddNewPro_Reward[3323573]["RewardItem"][1]["Id"] = 3304719 -- PokerToken[3304719][属性:9][叠加:10000][金币:0], 【表格】扑克币*8
	tChampionAddNewPro_Reward[3323573]["RewardItem"][1]["Attr"] = "0 8" -- PokerToken*8

	tChampionAddNewPro_Reward[3323574] = {}
	-- ===扑克币*10礼包
	-- ===索引: tChampionAddNewPro_Reward[3323574]
	-- ===删除: 3323574,1
	-- ===EMoneyLog: 350,22548
	tChampionAddNewPro_Reward[3323574]["LogId"] = 12000883
	tChampionAddNewPro_Reward[3323574]["EmoneyLog"] = "350	22548	0	0	1	"
	tChampionAddNewPro_Reward[3323574]["DeleteItem"] = {}
	tChampionAddNewPro_Reward[3323574]["DeleteItem"][1] = {}
	tChampionAddNewPro_Reward[3323574]["DeleteItem"][1]["Id"] = 3323574 -- 【库】10PokerTokenBag[属性:9]
	tChampionAddNewPro_Reward[3323574]["RewardItem"] = {}
	tChampionAddNewPro_Reward[3323574]["RewardItem"][1] = {}
	tChampionAddNewPro_Reward[3323574]["RewardItem"][1]["Id"] = 3304719 -- PokerToken[3304719][属性:9][叠加:10000][金币:0], 【表格】扑克币*10
	tChampionAddNewPro_Reward[3323574]["RewardItem"][1]["Attr"] = "0 10" -- PokerToken*10

	tChampionAddNewPro_Reward[3323575] = {}
	-- ===扑克币*25礼包
	-- ===索引: tChampionAddNewPro_Reward[3323575]
	-- ===删除: 3323575,1
	-- ===EMoneyLog: 350,22549
	tChampionAddNewPro_Reward[3323575]["LogId"] = 12000883
	tChampionAddNewPro_Reward[3323575]["EmoneyLog"] = "350	22549	0	0	1	"
	tChampionAddNewPro_Reward[3323575]["DeleteItem"] = {}
	tChampionAddNewPro_Reward[3323575]["DeleteItem"][1] = {}
	tChampionAddNewPro_Reward[3323575]["DeleteItem"][1]["Id"] = 3323575 -- 【库】25PokerTokenBag[属性:9]
	tChampionAddNewPro_Reward[3323575]["RewardItem"] = {}
	tChampionAddNewPro_Reward[3323575]["RewardItem"][1] = {}
	tChampionAddNewPro_Reward[3323575]["RewardItem"][1]["Id"] = 3304719 -- PokerToken[3304719][属性:9][叠加:10000][金币:0], 【表格】扑克币*25
	tChampionAddNewPro_Reward[3323575]["RewardItem"][1]["Attr"] = "0 25" -- PokerToken*25（[错误]物品数量超10个）

	tChampionAddNewPro_Reward[3323576] = {}
	-- ===扑克币*50礼包
	-- ===索引: tChampionAddNewPro_Reward[3323576]
	-- ===删除: 3323576,1
	-- ===EMoneyLog: 350,22550
	tChampionAddNewPro_Reward[3323576]["LogId"] = 12000883
	tChampionAddNewPro_Reward[3323576]["EmoneyLog"] = "350	22550	0	0	1	"
	tChampionAddNewPro_Reward[3323576]["DeleteItem"] = {}
	tChampionAddNewPro_Reward[3323576]["DeleteItem"][1] = {}
	tChampionAddNewPro_Reward[3323576]["DeleteItem"][1]["Id"] = 3323576 -- 【库】50PokerTokenBag[属性:9]
	tChampionAddNewPro_Reward[3323576]["RewardItem"] = {}
	tChampionAddNewPro_Reward[3323576]["RewardItem"][1] = {}
	tChampionAddNewPro_Reward[3323576]["RewardItem"][1]["Id"] = 3304719 -- PokerToken[3304719][属性:9][叠加:10000][金币:0], 【表格】扑克币*50
	tChampionAddNewPro_Reward[3323576]["RewardItem"][1]["Attr"] = "0 50" -- PokerToken*50（[错误]物品数量超10个）

	tChampionAddNewPro_Reward[3323577] = {}
	-- ===扑克币*100礼包
	-- ===索引: tChampionAddNewPro_Reward[3323577]
	-- ===删除: 3323577,1
	-- ===EMoneyLog: 350,22551
	tChampionAddNewPro_Reward[3323577]["LogId"] = 12000883
	tChampionAddNewPro_Reward[3323577]["EmoneyLog"] = "350	22551	0	0	1	"
	tChampionAddNewPro_Reward[3323577]["DeleteItem"] = {}
	tChampionAddNewPro_Reward[3323577]["DeleteItem"][1] = {}
	tChampionAddNewPro_Reward[3323577]["DeleteItem"][1]["Id"] = 3323577 -- 【库】100PokerTokenBag[属性:9]
	tChampionAddNewPro_Reward[3323577]["RewardItem"] = {}
	tChampionAddNewPro_Reward[3323577]["RewardItem"][1] = {}
	tChampionAddNewPro_Reward[3323577]["RewardItem"][1]["Id"] = 3304719 -- PokerToken[3304719][属性:9][叠加:10000][金币:0], 【表格】扑克币*100
	tChampionAddNewPro_Reward[3323577]["RewardItem"][1]["Attr"] = "0 100" -- PokerToken*100（[错误]物品数量超10个）

	tChampionAddNewPro_Reward[3323578] = {}
	-- ===LavaCatRobe（Charm）（B）礼包
	-- ===索引: tChampionAddNewPro_Reward[3323578]
	-- ===删除: 3323578,1
	-- ===EMoneyLog: 350,22552
	tChampionAddNewPro_Reward[3323578]["LogId"] = 12000883
	tChampionAddNewPro_Reward[3323578]["EmoneyLog"] = "350	22552	0	0	1	"
	tChampionAddNewPro_Reward[3323578]["DeleteItem"] = {}
	tChampionAddNewPro_Reward[3323578]["DeleteItem"][1] = {}
	tChampionAddNewPro_Reward[3323578]["DeleteItem"][1]["Id"] = 3323578 -- 【库】LavaCatRobe(Charm)(B)Pack[属性:9]
	tChampionAddNewPro_Reward[3323578]["RewardItem"] = {}
	tChampionAddNewPro_Reward[3323578]["RewardItem"][1] = {}
	tChampionAddNewPro_Reward[3323578]["RewardItem"][1]["Id"] = 193555 -- LavaCatRobe(Charm)[193555][属性:0][叠加:0][金币:0], 【表格】LavaCatRobe（Charm）（赠）
	tChampionAddNewPro_Reward[3323578]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑LavaCatRobe(Charm)（赠）*1

	tChampionAddNewPro_Reward[3323579] = {}
	-- ===EgyptianKingJersey（Champion）（B）礼包
	-- ===索引: tChampionAddNewPro_Reward[3323579]
	-- ===删除: 3323579,1
	-- ===EMoneyLog: 350,22553
	tChampionAddNewPro_Reward[3323579]["LogId"] = 12000883
	tChampionAddNewPro_Reward[3323579]["EmoneyLog"] = "350	22553	0	0	1	"
	tChampionAddNewPro_Reward[3323579]["DeleteItem"] = {}
	tChampionAddNewPro_Reward[3323579]["DeleteItem"][1] = {}
	tChampionAddNewPro_Reward[3323579]["DeleteItem"][1]["Id"] = 3323579 -- 【库】EgyptianKingJersey(Champion)(B)Pack[属性:9]
	tChampionAddNewPro_Reward[3323579]["RewardItem"] = {}
	tChampionAddNewPro_Reward[3323579]["RewardItem"][1] = {}
	tChampionAddNewPro_Reward[3323579]["RewardItem"][1]["Id"] = 195295 -- EgyptianKingJersey(Champion)[195295][属性:0][叠加:0][金币:0], 【表格】EgyptianKingJersey（Champion）（赠）
	tChampionAddNewPro_Reward[3323579]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑EgyptianKingJersey(Champion)（赠）*1

	tChampionAddNewPro_Reward[3323580] = {}
	-- ===BelgianDevilJersey（Champion）（B）礼包
	-- ===索引: tChampionAddNewPro_Reward[3323580]
	-- ===删除: 3323580,1
	-- ===EMoneyLog: 350,22554
	tChampionAddNewPro_Reward[3323580]["LogId"] = 12000883
	tChampionAddNewPro_Reward[3323580]["EmoneyLog"] = "350	22554	0	0	1	"
	tChampionAddNewPro_Reward[3323580]["DeleteItem"] = {}
	tChampionAddNewPro_Reward[3323580]["DeleteItem"][1] = {}
	tChampionAddNewPro_Reward[3323580]["DeleteItem"][1]["Id"] = 3323580 -- 【库】BelgianDevilJersey(Champion)(B)Pack[属性:9]
	tChampionAddNewPro_Reward[3323580]["RewardItem"] = {}
	tChampionAddNewPro_Reward[3323580]["RewardItem"][1] = {}
	tChampionAddNewPro_Reward[3323580]["RewardItem"][1]["Id"] = 195305 -- BelgianDevilJersey(Champion)[195305][属性:0][叠加:0][金币:0], 【表格】BelgianDevilJersey（Champion）（赠）
	tChampionAddNewPro_Reward[3323580]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑BelgianDevilJersey(Champion)（赠）*1

	tChampionAddNewPro_Reward[3323581] = {}
	-- ===BrazilianHeroJersey（Champion）（B）礼包
	-- ===索引: tChampionAddNewPro_Reward[3323581]
	-- ===删除: 3323581,1
	-- ===EMoneyLog: 350,22555
	tChampionAddNewPro_Reward[3323581]["LogId"] = 12000883
	tChampionAddNewPro_Reward[3323581]["EmoneyLog"] = "350	22555	0	0	1	"
	tChampionAddNewPro_Reward[3323581]["DeleteItem"] = {}
	tChampionAddNewPro_Reward[3323581]["DeleteItem"][1] = {}
	tChampionAddNewPro_Reward[3323581]["DeleteItem"][1]["Id"] = 3323581 -- 【库】BrazilianHeroJersey(Champion)(B)Pack[属性:9]
	tChampionAddNewPro_Reward[3323581]["RewardItem"] = {}
	tChampionAddNewPro_Reward[3323581]["RewardItem"][1] = {}
	tChampionAddNewPro_Reward[3323581]["RewardItem"][1]["Id"] = 195315 -- BrazilianHeroJersey(Champion)[195315][属性:0][叠加:0][金币:0], 【表格】BrazilianHeroJersey（Champion）（赠）
	tChampionAddNewPro_Reward[3323581]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑BrazilianHeroJersey(Champion)（赠）*1

	tChampionAddNewPro_Reward[3323582] = {}
	-- ===PortugalSoulJersey（Champion）（B）礼包
	-- ===索引: tChampionAddNewPro_Reward[3323582]
	-- ===删除: 3323582,1
	-- ===EMoneyLog: 350,22556
	tChampionAddNewPro_Reward[3323582]["LogId"] = 12000883
	tChampionAddNewPro_Reward[3323582]["EmoneyLog"] = "350	22556	0	0	1	"
	tChampionAddNewPro_Reward[3323582]["DeleteItem"] = {}
	tChampionAddNewPro_Reward[3323582]["DeleteItem"][1] = {}
	tChampionAddNewPro_Reward[3323582]["DeleteItem"][1]["Id"] = 3323582 -- 【库】PortugalSoulJersey(Champion)(B)Pack[属性:9]
	tChampionAddNewPro_Reward[3323582]["RewardItem"] = {}
	tChampionAddNewPro_Reward[3323582]["RewardItem"][1] = {}
	tChampionAddNewPro_Reward[3323582]["RewardItem"][1]["Id"] = 195335 -- PortugalSoulJersey(Champion)[195335][属性:0][叠加:0][金币:0], 【表格】PortugalSoulJersey（Champion）（赠）
	tChampionAddNewPro_Reward[3323582]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑PortugalSoulJersey(Champion)（赠）*1

	tChampionAddNewPro_Reward[3323583] = {}
	-- ===SpanishFighterJersey（Champion）（B）礼包
	-- ===索引: tChampionAddNewPro_Reward[3323583]
	-- ===删除: 3323583,1
	-- ===EMoneyLog: 350,22557
	tChampionAddNewPro_Reward[3323583]["LogId"] = 12000883
	tChampionAddNewPro_Reward[3323583]["EmoneyLog"] = "350	22557	0	0	1	"
	tChampionAddNewPro_Reward[3323583]["DeleteItem"] = {}
	tChampionAddNewPro_Reward[3323583]["DeleteItem"][1] = {}
	tChampionAddNewPro_Reward[3323583]["DeleteItem"][1]["Id"] = 3323583 -- 【库】SpanishFighterJersey(Champion)(B)Pack[属性:9]
	tChampionAddNewPro_Reward[3323583]["RewardItem"] = {}
	tChampionAddNewPro_Reward[3323583]["RewardItem"][1] = {}
	tChampionAddNewPro_Reward[3323583]["RewardItem"][1]["Id"] = 195345 -- SpanishFighterJersey(Champion)[195345][属性:0][叠加:0][金币:0], 【表格】SpanishFighterJersey（Champion）（赠）
	tChampionAddNewPro_Reward[3323583]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑SpanishFighterJersey(Champion)（赠）*1

	tChampionAddNewPro_Reward[3323584] = {}
	-- ===AnniversarySuit（Male）（B）礼包
	-- ===索引: tChampionAddNewPro_Reward[3323584]
	-- ===删除: 3323584,1
	-- ===EMoneyLog: 350,22558
	tChampionAddNewPro_Reward[3323584]["LogId"] = 12000883
	tChampionAddNewPro_Reward[3323584]["EmoneyLog"] = "350	22558	0	0	1	"
	tChampionAddNewPro_Reward[3323584]["DeleteItem"] = {}
	tChampionAddNewPro_Reward[3323584]["DeleteItem"][1] = {}
	tChampionAddNewPro_Reward[3323584]["DeleteItem"][1]["Id"] = 3323584 -- 【库】AnniversarySuit(Male)(B)Pack[属性:9]
	tChampionAddNewPro_Reward[3323584]["RewardItem"] = {}
	tChampionAddNewPro_Reward[3323584]["RewardItem"][1] = {}
	tChampionAddNewPro_Reward[3323584]["RewardItem"][1]["Id"] = 192165 -- AnniversarySuit(Male)[192165][属性:0][叠加:0][金币:100], 【表格】AnniversarySuit（Male）（赠）
	tChampionAddNewPro_Reward[3323584]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑AnniversarySuit(Male)（赠）*1

	tChampionAddNewPro_Reward[3323585] = {}
	-- ===ColorOfWind（B）礼包
	-- ===索引: tChampionAddNewPro_Reward[3323585]
	-- ===删除: 3323585,1
	-- ===EMoneyLog: 350,22559
	tChampionAddNewPro_Reward[3323585]["LogId"] = 12000883
	tChampionAddNewPro_Reward[3323585]["EmoneyLog"] = "350	22559	0	0	1	"
	tChampionAddNewPro_Reward[3323585]["DeleteItem"] = {}
	tChampionAddNewPro_Reward[3323585]["DeleteItem"][1] = {}
	tChampionAddNewPro_Reward[3323585]["DeleteItem"][1]["Id"] = 3323585 -- 【库】ColorOfWind(B)Pack[属性:9]
	tChampionAddNewPro_Reward[3323585]["RewardItem"] = {}
	tChampionAddNewPro_Reward[3323585]["RewardItem"][1] = {}
	tChampionAddNewPro_Reward[3323585]["RewardItem"][1]["Id"] = 192425 -- ColorOfWind[192425][属性:0][叠加:0][金币:100], 【表格】ColorOfWind（赠）
	tChampionAddNewPro_Reward[3323585]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑ColorOfWind（赠）*1

	tChampionAddNewPro_Reward[3323586] = {}
	-- ===ImperialRobe（B）礼包
	-- ===索引: tChampionAddNewPro_Reward[3323586]
	-- ===删除: 3323586,1
	-- ===EMoneyLog: 350,22560
	tChampionAddNewPro_Reward[3323586]["LogId"] = 12000883
	tChampionAddNewPro_Reward[3323586]["EmoneyLog"] = "350	22560	0	0	1	"
	tChampionAddNewPro_Reward[3323586]["DeleteItem"] = {}
	tChampionAddNewPro_Reward[3323586]["DeleteItem"][1] = {}
	tChampionAddNewPro_Reward[3323586]["DeleteItem"][1]["Id"] = 3323586 -- 【库】ImperialRobe(B)Pack[属性:9]
	tChampionAddNewPro_Reward[3323586]["RewardItem"] = {}
	tChampionAddNewPro_Reward[3323586]["RewardItem"][1] = {}
	tChampionAddNewPro_Reward[3323586]["RewardItem"][1]["Id"] = 192615 -- ImperialRobe[192615][属性:0][叠加:0][金币:100], 【表格】ImperialRobe（赠）
	tChampionAddNewPro_Reward[3323586]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑ImperialRobe（赠）*1

	tChampionAddNewPro_Reward[3323587] = {}
	-- ===WindWalk（B）礼包
	-- ===索引: tChampionAddNewPro_Reward[3323587]
	-- ===删除: 3323587,1
	-- ===EMoneyLog: 350,22561
	tChampionAddNewPro_Reward[3323587]["LogId"] = 12000883
	tChampionAddNewPro_Reward[3323587]["EmoneyLog"] = "350	22561	0	0	1	"
	tChampionAddNewPro_Reward[3323587]["DeleteItem"] = {}
	tChampionAddNewPro_Reward[3323587]["DeleteItem"][1] = {}
	tChampionAddNewPro_Reward[3323587]["DeleteItem"][1]["Id"] = 3323587 -- 【库】WindWalk(B)Pack[属性:9]
	tChampionAddNewPro_Reward[3323587]["RewardItem"] = {}
	tChampionAddNewPro_Reward[3323587]["RewardItem"][1] = {}
	tChampionAddNewPro_Reward[3323587]["RewardItem"][1]["Id"] = 192605 -- WindWalk[192605][属性:0][叠加:0][金币:100], 【表格】WindWalk（赠）
	tChampionAddNewPro_Reward[3323587]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑WindWalk（赠）*1

	tChampionAddNewPro_Reward[3323588] = {}
	-- ===PrideofSuccess（B）礼包
	-- ===索引: tChampionAddNewPro_Reward[3323588]
	-- ===删除: 3323588,1
	-- ===EMoneyLog: 350,22562
	tChampionAddNewPro_Reward[3323588]["LogId"] = 12000883
	tChampionAddNewPro_Reward[3323588]["EmoneyLog"] = "350	22562	0	0	1	"
	tChampionAddNewPro_Reward[3323588]["DeleteItem"] = {}
	tChampionAddNewPro_Reward[3323588]["DeleteItem"][1] = {}
	tChampionAddNewPro_Reward[3323588]["DeleteItem"][1]["Id"] = 3323588 -- 【库】PrideofSuccess(B)Pack[属性:9]
	tChampionAddNewPro_Reward[3323588]["RewardItem"] = {}
	tChampionAddNewPro_Reward[3323588]["RewardItem"][1] = {}
	tChampionAddNewPro_Reward[3323588]["RewardItem"][1]["Id"] = 192465 -- PrideofSuccess[192465][属性:0][叠加:0][金币:100], 【表格】PrideofSuccess（赠）
	tChampionAddNewPro_Reward[3323588]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑PrideofSuccess（赠）*1

	tChampionAddNewPro_Reward[3323589] = {}
	-- ===Hero`sArmor（B）礼包
	-- ===索引: tChampionAddNewPro_Reward[3323589]
	-- ===删除: 3323589,1
	-- ===EMoneyLog: 350,22563
	tChampionAddNewPro_Reward[3323589]["LogId"] = 12000883
	tChampionAddNewPro_Reward[3323589]["EmoneyLog"] = "350	22563	0	0	1	"
	tChampionAddNewPro_Reward[3323589]["DeleteItem"] = {}
	tChampionAddNewPro_Reward[3323589]["DeleteItem"][1] = {}
	tChampionAddNewPro_Reward[3323589]["DeleteItem"][1]["Id"] = 3323589 -- 【库】Hero`sArmor(B)Pack[属性:9]
	tChampionAddNewPro_Reward[3323589]["RewardItem"] = {}
	tChampionAddNewPro_Reward[3323589]["RewardItem"][1] = {}
	tChampionAddNewPro_Reward[3323589]["RewardItem"][1]["Id"] = 189145 -- Hero`sArmor[189145][属性:9][叠加:0][金币:0], 【表格】Hero`sArmor（赠）
	tChampionAddNewPro_Reward[3323589]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑Hero`sArmor（赠）*1

	tChampionAddNewPro_Reward[3323590] = {}
	-- ===SoulofSword（B）礼包
	-- ===索引: tChampionAddNewPro_Reward[3323590]
	-- ===删除: 3323590,1
	-- ===EMoneyLog: 350,22564
	tChampionAddNewPro_Reward[3323590]["LogId"] = 12000883
	tChampionAddNewPro_Reward[3323590]["EmoneyLog"] = "350	22564	0	0	1	"
	tChampionAddNewPro_Reward[3323590]["DeleteItem"] = {}
	tChampionAddNewPro_Reward[3323590]["DeleteItem"][1] = {}
	tChampionAddNewPro_Reward[3323590]["DeleteItem"][1]["Id"] = 3323590 -- 【库】SoulofSword(B)Pack[属性:9]
	tChampionAddNewPro_Reward[3323590]["RewardItem"] = {}
	tChampionAddNewPro_Reward[3323590]["RewardItem"][1] = {}
	tChampionAddNewPro_Reward[3323590]["RewardItem"][1]["Id"] = 188185 -- SoulofSword[188185][属性:0][叠加:0][金币:0], 【表格】SoulofSword（赠）
	tChampionAddNewPro_Reward[3323590]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑SoulofSword（赠）*1

	tChampionAddNewPro_Reward[3323591] = {}
	-- ===SacredWarriorGarment（B）礼包
	-- ===索引: tChampionAddNewPro_Reward[3323591]
	-- ===删除: 3323591,1
	-- ===EMoneyLog: 350,22565
	tChampionAddNewPro_Reward[3323591]["LogId"] = 12000883
	tChampionAddNewPro_Reward[3323591]["EmoneyLog"] = "350	22565	0	0	1	"
	tChampionAddNewPro_Reward[3323591]["DeleteItem"] = {}
	tChampionAddNewPro_Reward[3323591]["DeleteItem"][1] = {}
	tChampionAddNewPro_Reward[3323591]["DeleteItem"][1]["Id"] = 3323591 -- 【库】SacredWarriorGarment(B)Pack[属性:9]
	tChampionAddNewPro_Reward[3323591]["RewardItem"] = {}
	tChampionAddNewPro_Reward[3323591]["RewardItem"][1] = {}
	tChampionAddNewPro_Reward[3323591]["RewardItem"][1]["Id"] = 194885 -- SacredWarriorGarment[194885][属性:0][叠加:0][金币:100], 【表格】SacredWarriorGarment（赠）
	tChampionAddNewPro_Reward[3323591]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑SacredWarriorGarment（赠）*1

	tChampionAddNewPro_Reward[3323592] = {}
	-- ===SacredTrojanGarment（B）礼包
	-- ===索引: tChampionAddNewPro_Reward[3323592]
	-- ===删除: 3323592,1
	-- ===EMoneyLog: 350,22566
	tChampionAddNewPro_Reward[3323592]["LogId"] = 12000883
	tChampionAddNewPro_Reward[3323592]["EmoneyLog"] = "350	22566	0	0	1	"
	tChampionAddNewPro_Reward[3323592]["DeleteItem"] = {}
	tChampionAddNewPro_Reward[3323592]["DeleteItem"][1] = {}
	tChampionAddNewPro_Reward[3323592]["DeleteItem"][1]["Id"] = 3323592 -- 【库】SacredTrojanGarment(B)Pack[属性:9]
	tChampionAddNewPro_Reward[3323592]["RewardItem"] = {}
	tChampionAddNewPro_Reward[3323592]["RewardItem"][1] = {}
	tChampionAddNewPro_Reward[3323592]["RewardItem"][1]["Id"] = 194895 -- SacredTrojanGarment[194895][属性:0][叠加:0][金币:100], 【表格】SacredTrojanGarment（赠）
	tChampionAddNewPro_Reward[3323592]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑SacredTrojanGarment（赠）*1

	tChampionAddNewPro_Reward[3323593] = {}
	-- ===SacredNinjaGarment（B）礼包
	-- ===索引: tChampionAddNewPro_Reward[3323593]
	-- ===删除: 3323593,1
	-- ===EMoneyLog: 350,22567
	tChampionAddNewPro_Reward[3323593]["LogId"] = 12000883
	tChampionAddNewPro_Reward[3323593]["EmoneyLog"] = "350	22567	0	0	1	"
	tChampionAddNewPro_Reward[3323593]["DeleteItem"] = {}
	tChampionAddNewPro_Reward[3323593]["DeleteItem"][1] = {}
	tChampionAddNewPro_Reward[3323593]["DeleteItem"][1]["Id"] = 3323593 -- 【库】SacredNinjaGarment(B)Pack[属性:9]
	tChampionAddNewPro_Reward[3323593]["RewardItem"] = {}
	tChampionAddNewPro_Reward[3323593]["RewardItem"][1] = {}
	tChampionAddNewPro_Reward[3323593]["RewardItem"][1]["Id"] = 194905 -- SacredNinjaGarment[194905][属性:0][叠加:0][金币:100], 【表格】SacredNinjaGarment（赠）
	tChampionAddNewPro_Reward[3323593]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑SacredNinjaGarment（赠）*1

	tChampionAddNewPro_Reward[3323594] = {}
	-- ===SacredMonkGarment（B）礼包
	-- ===索引: tChampionAddNewPro_Reward[3323594]
	-- ===删除: 3323594,1
	-- ===EMoneyLog: 350,22568
	tChampionAddNewPro_Reward[3323594]["LogId"] = 12000883
	tChampionAddNewPro_Reward[3323594]["EmoneyLog"] = "350	22568	0	0	1	"
	tChampionAddNewPro_Reward[3323594]["DeleteItem"] = {}
	tChampionAddNewPro_Reward[3323594]["DeleteItem"][1] = {}
	tChampionAddNewPro_Reward[3323594]["DeleteItem"][1]["Id"] = 3323594 -- 【库】SacredMonkGarment(B)Pack[属性:9]
	tChampionAddNewPro_Reward[3323594]["RewardItem"] = {}
	tChampionAddNewPro_Reward[3323594]["RewardItem"][1] = {}
	tChampionAddNewPro_Reward[3323594]["RewardItem"][1]["Id"] = 194915 -- SacredMonkGarment[194915][属性:0][叠加:0][金币:100], 【表格】SacredMonkGarment（赠）
	tChampionAddNewPro_Reward[3323594]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑SacredMonkGarment（赠）*1

	tChampionAddNewPro_Reward[3323595] = {}
	-- ===SacredTaoistGarment（B）礼包
	-- ===索引: tChampionAddNewPro_Reward[3323595]
	-- ===删除: 3323595,1
	-- ===EMoneyLog: 350,22569
	tChampionAddNewPro_Reward[3323595]["LogId"] = 12000883
	tChampionAddNewPro_Reward[3323595]["EmoneyLog"] = "350	22569	0	0	1	"
	tChampionAddNewPro_Reward[3323595]["DeleteItem"] = {}
	tChampionAddNewPro_Reward[3323595]["DeleteItem"][1] = {}
	tChampionAddNewPro_Reward[3323595]["DeleteItem"][1]["Id"] = 3323595 -- 【库】SacredTaoistGarment(B)Pack[属性:9]
	tChampionAddNewPro_Reward[3323595]["RewardItem"] = {}
	tChampionAddNewPro_Reward[3323595]["RewardItem"][1] = {}
	tChampionAddNewPro_Reward[3323595]["RewardItem"][1]["Id"] = 194945 -- SacredTaoistGarment[194945][属性:0][叠加:0][金币:100], 【表格】SacredTaoistGarment（赠）
	tChampionAddNewPro_Reward[3323595]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑SacredTaoistGarment（赠）*1

	tChampionAddNewPro_Reward[3323596] = {}
	-- ===SacredArcherGarment（B）礼包
	-- ===索引: tChampionAddNewPro_Reward[3323596]
	-- ===删除: 3323596,1
	-- ===EMoneyLog: 350,22570
	tChampionAddNewPro_Reward[3323596]["LogId"] = 12000883
	tChampionAddNewPro_Reward[3323596]["EmoneyLog"] = "350	22570	0	0	1	"
	tChampionAddNewPro_Reward[3323596]["DeleteItem"] = {}
	tChampionAddNewPro_Reward[3323596]["DeleteItem"][1] = {}
	tChampionAddNewPro_Reward[3323596]["DeleteItem"][1]["Id"] = 3323596 -- 【库】SacredArcherGarment(B)Pack[属性:9]
	tChampionAddNewPro_Reward[3323596]["RewardItem"] = {}
	tChampionAddNewPro_Reward[3323596]["RewardItem"][1] = {}
	tChampionAddNewPro_Reward[3323596]["RewardItem"][1]["Id"] = 194935 -- SacredArcherGarment[194935][属性:0][叠加:0][金币:100], 【表格】SacredArcherGarment（赠）
	tChampionAddNewPro_Reward[3323596]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑SacredArcherGarment（赠）*1

	tChampionAddNewPro_Reward[3323597] = {}
	-- ===SacredPirateGarment（B）礼包
	-- ===索引: tChampionAddNewPro_Reward[3323597]
	-- ===删除: 3323597,1
	-- ===EMoneyLog: 350,22571
	tChampionAddNewPro_Reward[3323597]["LogId"] = 12000883
	tChampionAddNewPro_Reward[3323597]["EmoneyLog"] = "350	22571	0	0	1	"
	tChampionAddNewPro_Reward[3323597]["DeleteItem"] = {}
	tChampionAddNewPro_Reward[3323597]["DeleteItem"][1] = {}
	tChampionAddNewPro_Reward[3323597]["DeleteItem"][1]["Id"] = 3323597 -- 【库】SacredPirateGarment(B)Pack[属性:9]
	tChampionAddNewPro_Reward[3323597]["RewardItem"] = {}
	tChampionAddNewPro_Reward[3323597]["RewardItem"][1] = {}
	tChampionAddNewPro_Reward[3323597]["RewardItem"][1]["Id"] = 194925 -- SacredPirateGarment[194925][属性:0][叠加:0][金币:100], 【表格】SacredPirateGarment（赠）
	tChampionAddNewPro_Reward[3323597]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑SacredPirateGarment（赠）*1

	-- ===5w金币
	-- ===索引:tChampionAddNewPro_Reward[3330519]
	-- ===删除:3330519,1
	tChampionAddNewPro_Reward[3330519] = {}
	tChampionAddNewPro_Reward[3330519]["LogId"] = 12001940
	tChampionAddNewPro_Reward[3330519]["DeleteItem"] = {}
	tChampionAddNewPro_Reward[3330519]["DeleteItem"][1] = {}
	tChampionAddNewPro_Reward[3330519]["DeleteItem"][1]["Id"] = 3330519 -- 【库】 3330519 【库里没有该物品】[属性:]
	tChampionAddNewPro_Reward[3330519]["RewardMoney"] = {}
	tChampionAddNewPro_Reward[3330519]["RewardMoney"]["Value"] = 50000 -- 金币, 【需求】5w金币
	tChampionAddNewPro_Reward[3330519]["RewardEffect"] = {}
	tChampionAddNewPro_Reward[3330519]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChampionAddNewPro_Reward[3330519]["RewardEffect"]["Effect"] = "angelwing"
	tChampionAddNewPro_Reward[3330519]["Gold"] = true

	tChampionAddNewPro_Reward[3330520] = {}
	-- ===10w金币
	-- ===索引:tChampionAddNewPro_Reward[3330520]
	-- ===删除:3330520,1
	tChampionAddNewPro_Reward[3330520]["LogId"] = 12001940
	tChampionAddNewPro_Reward[3330520]["DeleteItem"] = {}
	tChampionAddNewPro_Reward[3330520]["DeleteItem"][1] = {}
	tChampionAddNewPro_Reward[3330520]["DeleteItem"][1]["Id"] = 3330520 -- 【库】 3330520 【库里没有该物品】[属性:]
	tChampionAddNewPro_Reward[3330520]["RewardMoney"] = {}
	tChampionAddNewPro_Reward[3330520]["RewardMoney"]["Value"] = 100000 -- 金币, 【需求】金币
	tChampionAddNewPro_Reward[3330520]["RewardEffect"] = {}
	tChampionAddNewPro_Reward[3330520]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChampionAddNewPro_Reward[3330520]["RewardEffect"]["Effect"] = "angelwing"
	tChampionAddNewPro_Reward[3330520]["Gold"] = true

	tChampionAddNewPro_Reward[3330521] = {}
	-- ===100w金币
	-- ===索引:tChampionAddNewPro_Reward[3330521]
	-- ===删除:3330521,1
	tChampionAddNewPro_Reward[3330521]["LogId"] = 12001940
	tChampionAddNewPro_Reward[3330521]["DeleteItem"] = {}
	tChampionAddNewPro_Reward[3330521]["DeleteItem"][1] = {}
	tChampionAddNewPro_Reward[3330521]["DeleteItem"][1]["Id"] = 3330521 -- 【库】 3330521 【库里没有该物品】[属性:]
	tChampionAddNewPro_Reward[3330521]["RewardMoney"] = {}
	tChampionAddNewPro_Reward[3330521]["RewardMoney"]["Value"] = 1000000 -- 金币, 【需求】金币
	tChampionAddNewPro_Reward[3330521]["RewardEffect"] = {}
	tChampionAddNewPro_Reward[3330521]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChampionAddNewPro_Reward[3330521]["RewardEffect"]["Effect"] = "angelwing"
	tChampionAddNewPro_Reward[3330521]["Gold"] = true

	tChampionAddNewPro_Reward[3330522] = {}
	-- ===500w金币
	-- ===索引:tChampionAddNewPro_Reward[3330522]
	-- ===删除:3330522,1
	tChampionAddNewPro_Reward[3330522]["LogId"] = 12001940
	tChampionAddNewPro_Reward[3330522]["DeleteItem"] = {}
	tChampionAddNewPro_Reward[3330522]["DeleteItem"][1] = {}
	tChampionAddNewPro_Reward[3330522]["DeleteItem"][1]["Id"] = 3330522 -- 【库】 3330522 【库里没有该物品】[属性:]
	tChampionAddNewPro_Reward[3330522]["RewardMoney"] = {}
	tChampionAddNewPro_Reward[3330522]["RewardMoney"]["Value"] = 5000000 -- 金币, 【需求】金币
	tChampionAddNewPro_Reward[3330522]["RewardEffect"] = {}
	tChampionAddNewPro_Reward[3330522]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChampionAddNewPro_Reward[3330522]["RewardEffect"]["Effect"] = "angelwing"
	tChampionAddNewPro_Reward[3330522]["Gold"] = true

	tChampionAddNewPro_Reward[3330523] = {}
	-- ===1000w金币
	-- ===索引:tChampionAddNewPro_Reward[3330523]
	-- ===删除:3330523,1
	tChampionAddNewPro_Reward[3330523]["LogId"] = 12001940
	tChampionAddNewPro_Reward[3330523]["DeleteItem"] = {}
	tChampionAddNewPro_Reward[3330523]["DeleteItem"][1] = {}
	tChampionAddNewPro_Reward[3330523]["DeleteItem"][1]["Id"] = 3330523 -- 【库】 3330523 【库里没有该物品】[属性:]
	tChampionAddNewPro_Reward[3330523]["RewardMoney"] = {}
	tChampionAddNewPro_Reward[3330523]["RewardMoney"]["Value"] = 10000000 -- 金币, 【需求】金币
	tChampionAddNewPro_Reward[3330523]["RewardEffect"] = {}
	tChampionAddNewPro_Reward[3330523]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChampionAddNewPro_Reward[3330523]["RewardEffect"]["Effect"] = "angelwing"
	tChampionAddNewPro_Reward[3330523]["Gold"] = true
	
	-- ===100KTicket礼包
	-- ===索引: tChampionAddNewPro_Reward[3330524]
	-- ===删除: 3330524,1
	tChampionAddNewPro_Reward[3330524] = {}
	tChampionAddNewPro_Reward[3330524]["LogId"] = 12000883
	tChampionAddNewPro_Reward[3330524]["DeleteItem"] = {}
	tChampionAddNewPro_Reward[3330524]["DeleteItem"][1] = {}
	tChampionAddNewPro_Reward[3330524]["DeleteItem"][1]["Id"] = 3330524 -- 【库】100KTicketBag[属性:9]
	tChampionAddNewPro_Reward[3330524]["RewardItem"] = {}
	tChampionAddNewPro_Reward[3330524]["RewardItem"][1] = {}
	tChampionAddNewPro_Reward[3330524]["RewardItem"][1]["Id"] = 3307119 -- 100KTicket[3307119][属性:9][叠加:0][金币:0], 【表格】100KTicket
	tChampionAddNewPro_Reward[3330524]["RewardItem"][1]["Attr"] = "0 1 0 4320 1" -- 3天时效(激活)的100KTicket*1
	tChampionAddNewPro_Reward[3330524]["RewardEffect"] = {}
	tChampionAddNewPro_Reward[3330524]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChampionAddNewPro_Reward[3330524]["RewardEffect"]["Effect"] = "angelwing"

	tChampionAddNewPro_Reward[3330525] = {}
	-- ===500KTicket礼包
	-- ===索引: tChampionAddNewPro_Reward[3330525]
	-- ===删除: 3330525,1
	tChampionAddNewPro_Reward[3330525]["LogId"] = 12000883
	tChampionAddNewPro_Reward[3330525]["DeleteItem"] = {}
	tChampionAddNewPro_Reward[3330525]["DeleteItem"][1] = {}
	tChampionAddNewPro_Reward[3330525]["DeleteItem"][1]["Id"] = 3330525 -- 【库】500KTicketBag[属性:9]
	tChampionAddNewPro_Reward[3330525]["RewardItem"] = {}
	tChampionAddNewPro_Reward[3330525]["RewardItem"][1] = {}
	tChampionAddNewPro_Reward[3330525]["RewardItem"][1]["Id"] = 3307120 -- 500KTicket[3307120][属性:9][叠加:0][金币:0], 【表格】500KTicket
	tChampionAddNewPro_Reward[3330525]["RewardItem"][1]["Attr"] = "0 1 0 4320 1" -- 3天时效(激活)的500KTicket*1
	tChampionAddNewPro_Reward[3330525]["RewardEffect"] = {}
	tChampionAddNewPro_Reward[3330525]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChampionAddNewPro_Reward[3330525]["RewardEffect"]["Effect"] = "angelwing"

------------------------------------------------------------------------------------------------------
--（5KK）门票碎片升级门票
function ChampionAddNewPro_Compos_Ticket(nItemId)
--检测玩家银两是否足以兑换碎片
	if not User_CanPutMoney2Bag(-tChampionAddNewPro_Reward[nItemId]["DelMoney"] ) then
		User_TalkChannel2005(tChampionAddNewPro_Text["NoMoney"])
		return
	end
--检测玩家背包空间
	if not User_CheckLeftSpace(RewardTemplate_GetRewardSpace(tChampionAddNewPro_Reward[nItemId])) then
		User_TalkChannel2005(tChampionAddNewPro_Text["NoSpace"])
		return
	end
	
	if User_AddMoneyNew(-tChampionAddNewPro_Reward[nItemId]["DelMoney"],12000883) then
		-- 给奖励
		RewardTemplate_UseItemAndMsg(tChampionAddNewPro_Reward[nItemId])
	end
end
--打开礼盒随机给奖励
function ChampionAddNewPro_Award(nItemId)
--检测玩家背包空间
	if not User_CheckLeftSpace(RewardTemplate_GetRandomSpace(tChampionAddNewPro_Reward[nItemId],1)) then
		User_TalkChannel2005(tChampionAddNewPro_Text["NoSpace"])
		return
	end

	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then 
		RewardTemplate_NewRandom(tChampionAddNewPro_Reward[nItemId],1)
	end
end

-------------------------------------------物品配置----------------------------------------------------
for i = 3306400,3306405 do
	tItem[i] = tItem[i] or {}
	tItem[i]["Function"] = function(nItemId,sItemName)
		ChampionAddNewPro_Award(nItemId)
	end
end
tItem[3306399] = tItem[3306399] or {}
tItem[3306399]["DialogueText"] =tChampionAddNewPro_Text[3306399]
tItem[3306399]["Text1-1"] = {111}
tItem[3306399]["tOption1-1"] ={111,112}
tItem[3306399]["OptionFunc111"] ="ChampionAddNewPro_Compos_Ticket</N>3306399"

tItem[3306406] = tItem[3306406] or {}
tItem[3306406]["Function"] = function(nItemId,sItemName)
--检测玩家背包空间
	if not User_CheckLeftSpace(RewardTemplate_GetRewardSpace(tChampionAddNewPro_Reward[nItemId])) then
		User_TalkChannel2005(tChampionAddNewPro_Text["NoSpace"])
		return
	end
	RewardTemplate_UseItemAndMsg(tChampionAddNewPro_Reward[nItemId])
end

tItem[3306759] = tItem[3306406]


tItem[3323570] = tItem[3323570] or {}
tItem[3323570]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tChampionAddNewPro_Reward[nItemId])
end

tItem[3323570] = tItem[3323570]
tItem[3323571] = tItem[3323570]
tItem[3323572] = tItem[3323570]
tItem[3323573] = tItem[3323570]
tItem[3323574] = tItem[3323570]
tItem[3323575] = tItem[3323570]
tItem[3323576] = tItem[3323570]
tItem[3323577] = tItem[3323570]
tItem[3323578] = tItem[3323570]
tItem[3323579] = tItem[3323570]
tItem[3323580] = tItem[3323570]
tItem[3323581] = tItem[3323570]
tItem[3323582] = tItem[3323570]
tItem[3323583] = tItem[3323570]
tItem[3323584] = tItem[3323570]
tItem[3323585] = tItem[3323570]
tItem[3323586] = tItem[3323570]
tItem[3323587] = tItem[3323570]
tItem[3323588] = tItem[3323570]
tItem[3323589] = tItem[3323570]
tItem[3323590] = tItem[3323570]
tItem[3323591] = tItem[3323570]
tItem[3323592] = tItem[3323570]
tItem[3323593] = tItem[3323570]
tItem[3323594] = tItem[3323570]
tItem[3323595] = tItem[3323570]
tItem[3323596] = tItem[3323570]
tItem[3323597] = tItem[3323570]
tItem[3330519] = tItem[3323570]
tItem[3330520] = tItem[3323570]
tItem[3330521] = tItem[3323570]
tItem[3330522] = tItem[3323570]
tItem[3330523] = tItem[3323570]
tItem[3330524] = tItem[3323570]
tItem[3330525] = tItem[3323570]


















