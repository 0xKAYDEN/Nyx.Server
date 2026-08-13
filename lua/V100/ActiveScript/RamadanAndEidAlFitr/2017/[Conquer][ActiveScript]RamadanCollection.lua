------------------------------------------------------------------------------------
--Name：170313[阿语征服][活动脚本]斋月和开斋节小活动
--Creator: 陈彦宏
--Created:2017/03/21
------------------------------------------------------------------------------------
--任务需求：
------------------------------------------------------------------------------------
--前缀 RamadanCollection_
----------------------------------------参数表----------------------------------------
local tRamadanCollection_Constant = {}
	-- 活动时间
	tRamadanCollection_Constant["ActivityTime"] = "2017-05-26 00:00 2017-06-27 23:59"
	tRamadanCollection_Constant["BeforeTime"] = "2017-01-01 00:00 2017-05-25 23:59"
	tRamadanCollection_Constant["BagActivityTime"] = "2017-05-26 00:00 2017-06-30 23:59"
	-- 需要等级/转世
	tRamadanCollection_Constant["NeedLevel"] = 80
	tRamadanCollection_Constant["NeedMetempsychosis"] = 0
	-- 背包空间
	tRamadanCollection_Constant["BagSpace"] = 1
	
	-- 概率总和及几率
	tRamadanCollection_Constant["McMahonNum"] = 100
	tRamadanCollection_Constant["EndNum"] = 10000
	
	-- 掩码表
	tRamadanCollection_Constant["Stc"] = {}
	tRamadanCollection_Constant["Stc"]["EventType"] = 157
	tRamadanCollection_Constant["Stc"]["DataType"] = {}
	tRamadanCollection_Constant["Stc"]["End"] = {}
	-- 今日获得麦米钱数量
	tRamadanCollection_Constant["Stc"]["DataType"][1] = 72
	tRamadanCollection_Constant["Stc"]["End"][1] = 30
	-- 今日获得斋月礼包数量
	tRamadanCollection_Constant["Stc"]["DataType"][2] = 73
	tRamadanCollection_Constant["Stc"]["End"][2] = 3
	-- 斋月活动累计杀怪数量
	tRamadanCollection_Constant["Stc"]["DataType"][3] = 74
	tRamadanCollection_Constant["Stc"]["End"][3] = 900
	
	-- Npc参数
	tRamadanCollection_Constant["Npc"] = {}
	tRamadanCollection_Constant["Npc"]["PosX"] = 291
	tRamadanCollection_Constant["Npc"]["PosY"] = 365
	tRamadanCollection_Constant["Npc"]["MapId"] = 1002
	tRamadanCollection_Constant["Npc"]["NpcId"] = 20453
	
	-- 升级赤炼石包花费天石
	tRamadanCollection_Constant["EmoneyPrice"] = {}
	tRamadanCollection_Constant["EmoneyPrice"][3302760] = 10
	tRamadanCollection_Constant["EmoneyPrice"][3302761] = 30
	
	-- 烟花光效
	tRamadanCollection_Constant["MapId"] = 1002
	tRamadanCollection_Constant["Pox"] = {}
	tRamadanCollection_Constant["Poy"] = {}
	tRamadanCollection_Constant["Pox"][20457] = 300
	tRamadanCollection_Constant["Poy"][20457] = 292
	
	tRamadanCollection_Constant["Pox"][20458] = 327
	tRamadanCollection_Constant["Poy"][20458] = 292
	
	tRamadanCollection_Constant["Pox"][20459] = 327
	tRamadanCollection_Constant["Poy"][20459] = 266
	
	tRamadanCollection_Constant["Pox"][20460] = 300
	tRamadanCollection_Constant["Poy"][20460] = 266
	tRamadanCollection_Constant["Effect"] = "FF03"
	
	-- Emoney记录
	tRamadanCollection_Constant["Emoney"] = {}
	tRamadanCollection_Constant["Emoney"][3302760] = "350	20532	%d	%d	1	"
	tRamadanCollection_Constant["Emoney"][3302761] = "350	20533	%d	%d	1	"
	-- 过期删除log
	tRamadanCollection_Constant["PastDelLog"] = "0,0,%d,1,12000682,0,0,0"
	
	-- 特殊过期
	tRamadanCollection_Constant["SpecialTime"] = 3302745
	
----------------------------------------奖励表----------------------------------------
local tRamadanCollection_Award = {}
	-- 杀片区怪有1%概率获得1本麦米钱
	--Stc = 15772 限制每人每天产出 30 麦米钱
	tRamadanCollection_Award["McMahon"]={} 
	tRamadanCollection_Award["McMahon"]["EventType"] = tRamadanCollection_Constant["Stc"]["EventType"]
	tRamadanCollection_Award["McMahon"]["DataType"] = tRamadanCollection_Constant["Stc"]["DataType"][1]
	
	-- 每天限制的次数
	tRamadanCollection_Award["McMahon"]["RewardData"] = 30
	-- 活动期间总的限制次数[33天]
	tRamadanCollection_Award["McMahon"]["RewardTotalData"] = 990
	-- 掩码的间隔时间
	tRamadanCollection_Award["McMahon"]["RewardDelay"] = 1
	-- 掩码的间隔时间类型
	tRamadanCollection_Award["McMahon"]["RewardTimeType"] = 4
	-- 当天获得上限，不需要提示
	tRamadanCollection_Award["McMahon"]["HaveReceiveNoTip"]= 1
	
	tRamadanCollection_Award["McMahon"]["RewardItem"] = {}
	tRamadanCollection_Award["McMahon"]["RewardItem"][1] = {}
	-- 麦米钱
	tRamadanCollection_Award["McMahon"]["RewardItem"][1]["Id"] = 3302744
	tRamadanCollection_Award["McMahon"]["RewardItem"][1]["Attr"] = "0 1"
	tRamadanCollection_Award["McMahon"]["RewardEffect"]={}
	tRamadanCollection_Award["McMahon"]["RewardEffect"]["Effect"]="angelwing"
	tRamadanCollection_Award["McMahon"]["LogId"] = 12000682
	
	-- 杀片区怪有每300只给1个
	--Stc = 15773 限制每人每天产出 3 斋月礼盒
	--Stc = 15774 记录今日杀怪数量
	tRamadanCollection_Award["McMahonBag"]={} 
	tRamadanCollection_Award["McMahonBag"]["EventType"] = tRamadanCollection_Constant["Stc"]["EventType"]
	tRamadanCollection_Award["McMahonBag"]["DataType"] = tRamadanCollection_Constant["Stc"]["DataType"][2]
	
	-- 每天限制的次数
	tRamadanCollection_Award["McMahonBag"]["RewardData"] = 3
	-- 活动期间总的限制次数[33天]
	tRamadanCollection_Award["McMahonBag"]["RewardTotalData"] = 99
	-- 掩码的间隔时间
	tRamadanCollection_Award["McMahonBag"]["RewardDelay"] = 1
	-- 掩码的间隔时间类型
	tRamadanCollection_Award["McMahonBag"]["RewardTimeType"] = 4
	-- 当天获得上限，不需要提示
	tRamadanCollection_Award["McMahonBag"]["HaveReceiveNoTip"]= 1
	
	tRamadanCollection_Award["McMahonBag"]["RewardItem"] = {}
	tRamadanCollection_Award["McMahonBag"]["RewardItem"][1] = {}
	-- 斋月礼盒
	tRamadanCollection_Award["McMahonBag"]["RewardItem"][1]["Id"] = 3302745
	tRamadanCollection_Award["McMahonBag"]["RewardItem"][1]["Attr"] = "0 1"
	tRamadanCollection_Award["McMahonBag"]["RewardEffect"]={}
	tRamadanCollection_Award["McMahonBag"]["RewardEffect"]["Effect"]="angelwing"
	tRamadanCollection_Award["McMahonBag"]["LogId"] = 12000682
	
	-- 麦米钱
	tRamadanCollection_Award[3302744] = {}
	tRamadanCollection_Award[3302744]["DeleteItem"] = {}
	tRamadanCollection_Award[3302744]["DeleteItem"][1] = {}
	tRamadanCollection_Award[3302744]["DeleteItem"][1]["Id"] = 3302744
	tRamadanCollection_Award[3302744]["RewardItem"] = {}
	tRamadanCollection_Award[3302744]["RewardItem"][1] = {}
	tRamadanCollection_Award[3302744]["RewardItem"][1]["Id"] = 3301454
	tRamadanCollection_Award[3302744]["Talk"] = tRamadanCollection_Text["TimeOverExchange"]
	tRamadanCollection_Award[3302744]["LogId"] = 12000682
	
	-- 斋月礼盒
	tRamadanCollection_Award[3302745] = {}
	tRamadanCollection_Award[3302745]["ItemNum"] = 1
	tRamadanCollection_Award[3302745][1] = {}
	tRamadanCollection_Award[3302745][1]["ItemChanceSum"] = 10000
	
	tRamadanCollection_Award[3302745][1][1] = {} 
	tRamadanCollection_Award[3302745][1][1]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302745][1][1]["ItemChance"] = 4300
	tRamadanCollection_Award[3302745][1][1]["RewardItem"] = {}
	tRamadanCollection_Award[3302745][1][1]["RewardItem"][1] = {}
	tRamadanCollection_Award[3302745][1][1]["RewardItem"][1]["Id"] = 3302744
	tRamadanCollection_Award[3302745][1][1]["RewardItem"][1]["Attr"] = "0 5"
	tRamadanCollection_Award[3302745][1][1]["Log"] = "0,0,3302745,1,12000682,2,3302744,5"
	
	tRamadanCollection_Award[3302745][1][2] = {} 
	tRamadanCollection_Award[3302745][1][2]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302745][1][2]["ItemChance"] = 2500
	tRamadanCollection_Award[3302745][1][2]["RewardItem"] = {}
	tRamadanCollection_Award[3302745][1][2]["RewardItem"][1] = {}
	tRamadanCollection_Award[3302745][1][2]["RewardItem"][1]["Id"] = 3302744
	tRamadanCollection_Award[3302745][1][2]["RewardItem"][1]["Attr"] = "0 10"
	tRamadanCollection_Award[3302745][1][2]["Log"] = "0,0,3302745,1,12000682,2,3302744,10"

	tRamadanCollection_Award[3302745][1][3] = {} 
	tRamadanCollection_Award[3302745][1][3]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302745][1][3]["ItemChance"] = 1000
	tRamadanCollection_Award[3302745][1][3]["RewardItem"] = {}
	tRamadanCollection_Award[3302745][1][3]["RewardItem"][1] = {}
	tRamadanCollection_Award[3302745][1][3]["RewardItem"][1]["Id"] = 3302744
	tRamadanCollection_Award[3302745][1][3]["RewardItem"][1]["Attr"] = "0 15"
	tRamadanCollection_Award[3302745][1][3]["Log"] = "0,0,3302745,1,12000682,2,3302744,15"

	tRamadanCollection_Award[3302745][1][4] = {} 
	tRamadanCollection_Award[3302745][1][4]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302745][1][4]["ItemChance"] = 500
	tRamadanCollection_Award[3302745][1][4]["RewardItem"] = {}
	tRamadanCollection_Award[3302745][1][4]["RewardItem"][1] = {}
	tRamadanCollection_Award[3302745][1][4]["RewardItem"][1]["Id"] = 3302744
	tRamadanCollection_Award[3302745][1][4]["RewardItem"][1]["Attr"] = "0 20"
	tRamadanCollection_Award[3302745][1][4]["Log"] = "0,0,3302745,1,12000682,2,3302744,20"

	tRamadanCollection_Award[3302745][1][5] = {}
	tRamadanCollection_Award[3302745][1][5]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302745][1][5]["ItemChance"] = 1200
	tRamadanCollection_Award[3302745][1][5]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302745][1][5]["RewardEMoneyMono"]["Value"] = 5
	tRamadanCollection_Award[3302745][1][5]["Log"] = "0,0,3302745,1,12000682,2,3,5"

	tRamadanCollection_Award[3302745][1][6] = {}
	tRamadanCollection_Award[3302745][1][6]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302745][1][6]["ItemChance"] = 500
	tRamadanCollection_Award[3302745][1][6]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302745][1][6]["RewardEMoneyMono"]["Value"] = 10
	tRamadanCollection_Award[3302745][1][6]["Log"] = "0,0,3302745,1,12000682,2,3,10"
	
	-- 斋月天石包
	tRamadanCollection_Award[3302746] = {}
	tRamadanCollection_Award[3302746]["ItemNum"] = 1
	tRamadanCollection_Award[3302746][1] = {}
	tRamadanCollection_Award[3302746][1]["ItemChanceSum"] = 10000
	
	tRamadanCollection_Award[3302746][1][1] = {}
	tRamadanCollection_Award[3302746][1][1]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][1]["ItemChance"] = 340
	tRamadanCollection_Award[3302746][1][1]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][1]["RewardEMoneyMono"]["Value"] = 1
	tRamadanCollection_Award[3302746][1][1]["Log"] = "0,0,3302746,1,12000682,2,3,1"

	tRamadanCollection_Award[3302746][1][2] = {}
	tRamadanCollection_Award[3302746][1][2]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][2]["ItemChance"] = 300
	tRamadanCollection_Award[3302746][1][2]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][2]["RewardEMoneyMono"]["Value"] = 2
	tRamadanCollection_Award[3302746][1][2]["Log"] = "0,0,3302746,1,12000682,2,3,2"

	tRamadanCollection_Award[3302746][1][3] = {}
	tRamadanCollection_Award[3302746][1][3]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][3]["ItemChance"] = 300
	tRamadanCollection_Award[3302746][1][3]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][3]["RewardEMoneyMono"]["Value"] = 3
	tRamadanCollection_Award[3302746][1][3]["Log"] = "0,0,3302746,1,12000682,2,3,3"

	tRamadanCollection_Award[3302746][1][4] = {}
	tRamadanCollection_Award[3302746][1][4]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][4]["ItemChance"] = 300
	tRamadanCollection_Award[3302746][1][4]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][4]["RewardEMoneyMono"]["Value"] = 4
	tRamadanCollection_Award[3302746][1][4]["Log"] = "0,0,3302746,1,12000682,2,3,4"

	tRamadanCollection_Award[3302746][1][5] = {}
	tRamadanCollection_Award[3302746][1][5]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][5]["ItemChance"] = 300
	tRamadanCollection_Award[3302746][1][5]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][5]["RewardEMoneyMono"]["Value"] = 5
	tRamadanCollection_Award[3302746][1][5]["Log"] = "0,0,3302746,1,12000682,2,3,5"

	tRamadanCollection_Award[3302746][1][6] = {}
	tRamadanCollection_Award[3302746][1][6]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][6]["ItemChance"] = 300
	tRamadanCollection_Award[3302746][1][6]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][6]["RewardEMoneyMono"]["Value"] = 6
	tRamadanCollection_Award[3302746][1][6]["Log"] = "0,0,3302746,1,12000682,2,3,6"

	tRamadanCollection_Award[3302746][1][7] = {}
	tRamadanCollection_Award[3302746][1][7]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][7]["ItemChance"] = 300
	tRamadanCollection_Award[3302746][1][7]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][7]["RewardEMoneyMono"]["Value"] = 7
	tRamadanCollection_Award[3302746][1][7]["Log"] = "0,0,3302746,1,12000682,2,3,7"

	tRamadanCollection_Award[3302746][1][8] = {}
	tRamadanCollection_Award[3302746][1][8]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][8]["ItemChance"] = 300
	tRamadanCollection_Award[3302746][1][8]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][8]["RewardEMoneyMono"]["Value"] = 8
	tRamadanCollection_Award[3302746][1][8]["Log"] = "0,0,3302746,1,12000682,2,3,8"

	tRamadanCollection_Award[3302746][1][9] = {}
	tRamadanCollection_Award[3302746][1][9]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][9]["ItemChance"] = 300
	tRamadanCollection_Award[3302746][1][9]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][9]["RewardEMoneyMono"]["Value"] = 9
	tRamadanCollection_Award[3302746][1][9]["Log"] = "0,0,3302746,1,12000682,2,3,9"

	tRamadanCollection_Award[3302746][1][10] = {}
	tRamadanCollection_Award[3302746][1][10]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][10]["ItemChance"] = 300
	tRamadanCollection_Award[3302746][1][10]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][10]["RewardEMoneyMono"]["Value"] = 10
	tRamadanCollection_Award[3302746][1][10]["Log"] = "0,0,3302746,1,12000682,2,3,10"

	tRamadanCollection_Award[3302746][1][11] = {}
	tRamadanCollection_Award[3302746][1][11]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][11]["ItemChance"] = 200
	tRamadanCollection_Award[3302746][1][11]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][11]["RewardEMoneyMono"]["Value"] = 11
	tRamadanCollection_Award[3302746][1][11]["Log"] = "0,0,3302746,1,12000682,2,3,11"

	tRamadanCollection_Award[3302746][1][12] = {}
	tRamadanCollection_Award[3302746][1][12]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][12]["ItemChance"] = 200
	tRamadanCollection_Award[3302746][1][12]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][12]["RewardEMoneyMono"]["Value"] = 12
	tRamadanCollection_Award[3302746][1][12]["Log"] = "0,0,3302746,1,12000682,2,3,12"

	tRamadanCollection_Award[3302746][1][13] = {}
	tRamadanCollection_Award[3302746][1][13]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][13]["ItemChance"] = 200
	tRamadanCollection_Award[3302746][1][13]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][13]["RewardEMoneyMono"]["Value"] = 13
	tRamadanCollection_Award[3302746][1][13]["Log"] = "0,0,3302746,1,12000682,2,3,13"

	tRamadanCollection_Award[3302746][1][14] = {}
	tRamadanCollection_Award[3302746][1][14]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][14]["ItemChance"] = 200
	tRamadanCollection_Award[3302746][1][14]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][14]["RewardEMoneyMono"]["Value"] = 14
	tRamadanCollection_Award[3302746][1][14]["Log"] = "0,0,3302746,1,12000682,2,3,14"

	tRamadanCollection_Award[3302746][1][15] = {}
	tRamadanCollection_Award[3302746][1][15]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][15]["ItemChance"] = 200
	tRamadanCollection_Award[3302746][1][15]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][15]["RewardEMoneyMono"]["Value"] = 15
	tRamadanCollection_Award[3302746][1][15]["Log"] = "0,0,3302746,1,12000682,2,3,15"

	tRamadanCollection_Award[3302746][1][16] = {}
	tRamadanCollection_Award[3302746][1][16]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][16]["ItemChance"] = 200
	tRamadanCollection_Award[3302746][1][16]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][16]["RewardEMoneyMono"]["Value"] = 16
	tRamadanCollection_Award[3302746][1][16]["Log"] = "0,0,3302746,1,12000682,2,3,16"

	tRamadanCollection_Award[3302746][1][17] = {}
	tRamadanCollection_Award[3302746][1][17]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][17]["ItemChance"] = 200
	tRamadanCollection_Award[3302746][1][17]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][17]["RewardEMoneyMono"]["Value"] = 17
	tRamadanCollection_Award[3302746][1][17]["Log"] = "0,0,3302746,1,12000682,2,3,17"

	tRamadanCollection_Award[3302746][1][18] = {}
	tRamadanCollection_Award[3302746][1][18]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][18]["ItemChance"] = 200
	tRamadanCollection_Award[3302746][1][18]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][18]["RewardEMoneyMono"]["Value"] = 18
	tRamadanCollection_Award[3302746][1][18]["Log"] = "0,0,3302746,1,12000682,2,3,18"

	tRamadanCollection_Award[3302746][1][19] = {}
	tRamadanCollection_Award[3302746][1][19]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][19]["ItemChance"] = 200
	tRamadanCollection_Award[3302746][1][19]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][19]["RewardEMoneyMono"]["Value"] = 19
	tRamadanCollection_Award[3302746][1][19]["Log"] = "0,0,3302746,1,12000682,2,3,19"

	tRamadanCollection_Award[3302746][1][20] = {}
	tRamadanCollection_Award[3302746][1][20]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][20]["ItemChance"] = 200
	tRamadanCollection_Award[3302746][1][20]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][20]["RewardEMoneyMono"]["Value"] = 20
	tRamadanCollection_Award[3302746][1][20]["Log"] = "0,0,3302746,1,12000682,2,3,20"

	tRamadanCollection_Award[3302746][1][21] = {}
	tRamadanCollection_Award[3302746][1][21]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][21]["ItemChance"] = 150
	tRamadanCollection_Award[3302746][1][21]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][21]["RewardEMoneyMono"]["Value"] = 21
	tRamadanCollection_Award[3302746][1][21]["Log"] = "0,0,3302746,1,12000682,2,3,21"

	tRamadanCollection_Award[3302746][1][22] = {}
	tRamadanCollection_Award[3302746][1][22]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][22]["ItemChance"] = 150
	tRamadanCollection_Award[3302746][1][22]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][22]["RewardEMoneyMono"]["Value"] = 22
	tRamadanCollection_Award[3302746][1][22]["Log"] = "0,0,3302746,1,12000682,2,3,22"

	tRamadanCollection_Award[3302746][1][23] = {}
	tRamadanCollection_Award[3302746][1][23]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][23]["ItemChance"] = 150
	tRamadanCollection_Award[3302746][1][23]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][23]["RewardEMoneyMono"]["Value"] = 23
	tRamadanCollection_Award[3302746][1][23]["Log"] = "0,0,3302746,1,12000682,2,3,23"

	tRamadanCollection_Award[3302746][1][24] = {}
	tRamadanCollection_Award[3302746][1][24]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][24]["ItemChance"] = 150
	tRamadanCollection_Award[3302746][1][24]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][24]["RewardEMoneyMono"]["Value"] = 24
	tRamadanCollection_Award[3302746][1][24]["Log"] = "0,0,3302746,1,12000682,2,3,24"

	tRamadanCollection_Award[3302746][1][25] = {}
	tRamadanCollection_Award[3302746][1][25]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][25]["ItemChance"] = 150
	tRamadanCollection_Award[3302746][1][25]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][25]["RewardEMoneyMono"]["Value"] = 25
	tRamadanCollection_Award[3302746][1][25]["Log"] = "0,0,3302746,1,12000682,2,3,25"

	tRamadanCollection_Award[3302746][1][26] = {}
	tRamadanCollection_Award[3302746][1][26]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][26]["ItemChance"] = 150
	tRamadanCollection_Award[3302746][1][26]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][26]["RewardEMoneyMono"]["Value"] = 26
	tRamadanCollection_Award[3302746][1][26]["Log"] = "0,0,3302746,1,12000682,2,3,26"

	tRamadanCollection_Award[3302746][1][27] = {}
	tRamadanCollection_Award[3302746][1][27]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][27]["ItemChance"] = 150
	tRamadanCollection_Award[3302746][1][27]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][27]["RewardEMoneyMono"]["Value"] = 27
	tRamadanCollection_Award[3302746][1][27]["Log"] = "0,0,3302746,1,12000682,2,3,27"

	tRamadanCollection_Award[3302746][1][28] = {}
	tRamadanCollection_Award[3302746][1][28]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][28]["ItemChance"] = 150
	tRamadanCollection_Award[3302746][1][28]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][28]["RewardEMoneyMono"]["Value"] = 28
	tRamadanCollection_Award[3302746][1][28]["Log"] = "0,0,3302746,1,12000682,2,3,28"

	tRamadanCollection_Award[3302746][1][29] = {}
	tRamadanCollection_Award[3302746][1][29]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][29]["ItemChance"] = 150
	tRamadanCollection_Award[3302746][1][29]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][29]["RewardEMoneyMono"]["Value"] = 29
	tRamadanCollection_Award[3302746][1][29]["Log"] = "0,0,3302746,1,12000682,2,3,29"

	tRamadanCollection_Award[3302746][1][30] = {}
	tRamadanCollection_Award[3302746][1][30]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][30]["ItemChance"] = 150
	tRamadanCollection_Award[3302746][1][30]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][30]["RewardEMoneyMono"]["Value"] = 30
	tRamadanCollection_Award[3302746][1][30]["Log"] = "0,0,3302746,1,12000682,2,3,30"

	tRamadanCollection_Award[3302746][1][31] = {}
	tRamadanCollection_Award[3302746][1][31]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][31]["ItemChance"] = 100
	tRamadanCollection_Award[3302746][1][31]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][31]["RewardEMoneyMono"]["Value"] = 31
	tRamadanCollection_Award[3302746][1][31]["Log"] = "0,0,3302746,1,12000682,2,3,31"

	tRamadanCollection_Award[3302746][1][32] = {}
	tRamadanCollection_Award[3302746][1][32]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][32]["ItemChance"] = 100
	tRamadanCollection_Award[3302746][1][32]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][32]["RewardEMoneyMono"]["Value"] = 32
	tRamadanCollection_Award[3302746][1][32]["Log"] = "0,0,3302746,1,12000682,2,3,32"

	tRamadanCollection_Award[3302746][1][33] = {}
	tRamadanCollection_Award[3302746][1][33]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][33]["ItemChance"] = 100
	tRamadanCollection_Award[3302746][1][33]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][33]["RewardEMoneyMono"]["Value"] = 33
	tRamadanCollection_Award[3302746][1][33]["Log"] = "0,0,3302746,1,12000682,2,3,33"

	tRamadanCollection_Award[3302746][1][34] = {}
	tRamadanCollection_Award[3302746][1][34]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][34]["ItemChance"] = 100
	tRamadanCollection_Award[3302746][1][34]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][34]["RewardEMoneyMono"]["Value"] = 34
	tRamadanCollection_Award[3302746][1][34]["Log"] = "0,0,3302746,1,12000682,2,3,34"

	tRamadanCollection_Award[3302746][1][35] = {}
	tRamadanCollection_Award[3302746][1][35]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][35]["ItemChance"] = 100
	tRamadanCollection_Award[3302746][1][35]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][35]["RewardEMoneyMono"]["Value"] = 35
	tRamadanCollection_Award[3302746][1][35]["Log"] = "0,0,3302746,1,12000682,2,3,35"

	tRamadanCollection_Award[3302746][1][36] = {}
	tRamadanCollection_Award[3302746][1][36]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][36]["ItemChance"] = 100
	tRamadanCollection_Award[3302746][1][36]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][36]["RewardEMoneyMono"]["Value"] = 36
	tRamadanCollection_Award[3302746][1][36]["Log"] = "0,0,3302746,1,12000682,2,3,36"

	tRamadanCollection_Award[3302746][1][37] = {}
	tRamadanCollection_Award[3302746][1][37]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][37]["ItemChance"] = 100
	tRamadanCollection_Award[3302746][1][37]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][37]["RewardEMoneyMono"]["Value"] = 37
	tRamadanCollection_Award[3302746][1][37]["Log"] = "0,0,3302746,1,12000682,2,3,37"

	tRamadanCollection_Award[3302746][1][38] = {}
	tRamadanCollection_Award[3302746][1][38]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][38]["ItemChance"] = 100
	tRamadanCollection_Award[3302746][1][38]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][38]["RewardEMoneyMono"]["Value"] = 38
	tRamadanCollection_Award[3302746][1][38]["Log"] = "0,0,3302746,1,12000682,2,3,38"

	tRamadanCollection_Award[3302746][1][39] = {}
	tRamadanCollection_Award[3302746][1][39]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][39]["ItemChance"] = 100
	tRamadanCollection_Award[3302746][1][39]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][39]["RewardEMoneyMono"]["Value"] = 39
	tRamadanCollection_Award[3302746][1][39]["Log"] = "0,0,3302746,1,12000682,2,3,39"

	tRamadanCollection_Award[3302746][1][40] = {}
	tRamadanCollection_Award[3302746][1][40]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][40]["ItemChance"] = 100
	tRamadanCollection_Award[3302746][1][40]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][40]["RewardEMoneyMono"]["Value"] = 40
	tRamadanCollection_Award[3302746][1][40]["Log"] = "0,0,3302746,1,12000682,2,3,40"

	tRamadanCollection_Award[3302746][1][41] = {}
	tRamadanCollection_Award[3302746][1][41]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][41]["ItemChance"] = 100
	tRamadanCollection_Award[3302746][1][41]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][41]["RewardEMoneyMono"]["Value"] = 41
	tRamadanCollection_Award[3302746][1][41]["Log"] = "0,0,3302746,1,12000682,2,3,41"

	tRamadanCollection_Award[3302746][1][42] = {}
	tRamadanCollection_Award[3302746][1][42]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][42]["ItemChance"] = 100
	tRamadanCollection_Award[3302746][1][42]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][42]["RewardEMoneyMono"]["Value"] = 42
	tRamadanCollection_Award[3302746][1][42]["Log"] = "0,0,3302746,1,12000682,2,3,42"

	tRamadanCollection_Award[3302746][1][43] = {}
	tRamadanCollection_Award[3302746][1][43]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][43]["ItemChance"] = 100
	tRamadanCollection_Award[3302746][1][43]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][43]["RewardEMoneyMono"]["Value"] = 43
	tRamadanCollection_Award[3302746][1][43]["Log"] = "0,0,3302746,1,12000682,2,3,43"

	tRamadanCollection_Award[3302746][1][44] = {}
	tRamadanCollection_Award[3302746][1][44]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][44]["ItemChance"] = 100
	tRamadanCollection_Award[3302746][1][44]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][44]["RewardEMoneyMono"]["Value"] = 44
	tRamadanCollection_Award[3302746][1][44]["Log"] = "0,0,3302746,1,12000682,2,3,44"

	tRamadanCollection_Award[3302746][1][45] = {}
	tRamadanCollection_Award[3302746][1][45]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][45]["ItemChance"] = 100
	tRamadanCollection_Award[3302746][1][45]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][45]["RewardEMoneyMono"]["Value"] = 45
	tRamadanCollection_Award[3302746][1][45]["Log"] = "0,0,3302746,1,12000682,2,3,45"

	tRamadanCollection_Award[3302746][1][46] = {}
	tRamadanCollection_Award[3302746][1][46]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][46]["ItemChance"] = 100
	tRamadanCollection_Award[3302746][1][46]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][46]["RewardEMoneyMono"]["Value"] = 46
	tRamadanCollection_Award[3302746][1][46]["Log"] = "0,0,3302746,1,12000682,2,3,46"

	tRamadanCollection_Award[3302746][1][47] = {}
	tRamadanCollection_Award[3302746][1][47]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][47]["ItemChance"] = 100
	tRamadanCollection_Award[3302746][1][47]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][47]["RewardEMoneyMono"]["Value"] = 47
	tRamadanCollection_Award[3302746][1][47]["Log"] = "0,0,3302746,1,12000682,2,3,47"

	tRamadanCollection_Award[3302746][1][48] = {}
	tRamadanCollection_Award[3302746][1][48]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][48]["ItemChance"] = 100
	tRamadanCollection_Award[3302746][1][48]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][48]["RewardEMoneyMono"]["Value"] = 48
	tRamadanCollection_Award[3302746][1][48]["Log"] = "0,0,3302746,1,12000682,2,3,48"

	tRamadanCollection_Award[3302746][1][49] = {}
	tRamadanCollection_Award[3302746][1][49]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][49]["ItemChance"] = 100
	tRamadanCollection_Award[3302746][1][49]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][49]["RewardEMoneyMono"]["Value"] = 49
	tRamadanCollection_Award[3302746][1][49]["Log"] = "0,0,3302746,1,12000682,2,3,49"

	tRamadanCollection_Award[3302746][1][50] = {}
	tRamadanCollection_Award[3302746][1][50]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][50]["ItemChance"] = 100
	tRamadanCollection_Award[3302746][1][50]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][50]["RewardEMoneyMono"]["Value"] = 50
	tRamadanCollection_Award[3302746][1][50]["Log"] = "0,0,3302746,1,12000682,2,3,50"

	tRamadanCollection_Award[3302746][1][51] = {}
	tRamadanCollection_Award[3302746][1][51]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][51]["ItemChance"] = 60
	tRamadanCollection_Award[3302746][1][51]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][51]["RewardEMoneyMono"]["Value"] = 51
	tRamadanCollection_Award[3302746][1][51]["Log"] = "0,0,3302746,1,12000682,2,3,51"

	tRamadanCollection_Award[3302746][1][52] = {}
	tRamadanCollection_Award[3302746][1][52]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][52]["ItemChance"] = 60
	tRamadanCollection_Award[3302746][1][52]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][52]["RewardEMoneyMono"]["Value"] = 52
	tRamadanCollection_Award[3302746][1][52]["Log"] = "0,0,3302746,1,12000682,2,3,52"

	tRamadanCollection_Award[3302746][1][53] = {}
	tRamadanCollection_Award[3302746][1][53]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][53]["ItemChance"] = 60
	tRamadanCollection_Award[3302746][1][53]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][53]["RewardEMoneyMono"]["Value"] = 53
	tRamadanCollection_Award[3302746][1][53]["Log"] = "0,0,3302746,1,12000682,2,3,53"

	tRamadanCollection_Award[3302746][1][54] = {}
	tRamadanCollection_Award[3302746][1][54]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][54]["ItemChance"] = 60
	tRamadanCollection_Award[3302746][1][54]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][54]["RewardEMoneyMono"]["Value"] = 54
	tRamadanCollection_Award[3302746][1][54]["Log"] = "0,0,3302746,1,12000682,2,3,54"

	tRamadanCollection_Award[3302746][1][55] = {}
	tRamadanCollection_Award[3302746][1][55]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][55]["ItemChance"] = 60
	tRamadanCollection_Award[3302746][1][55]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][55]["RewardEMoneyMono"]["Value"] = 55
	tRamadanCollection_Award[3302746][1][55]["Log"] = "0,0,3302746,1,12000682,2,3,55"

	tRamadanCollection_Award[3302746][1][56] = {}
	tRamadanCollection_Award[3302746][1][56]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][56]["ItemChance"] = 60
	tRamadanCollection_Award[3302746][1][56]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][56]["RewardEMoneyMono"]["Value"] = 56
	tRamadanCollection_Award[3302746][1][56]["Log"] = "0,0,3302746,1,12000682,2,3,56"

	tRamadanCollection_Award[3302746][1][57] = {}
	tRamadanCollection_Award[3302746][1][57]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][57]["ItemChance"] = 60
	tRamadanCollection_Award[3302746][1][57]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][57]["RewardEMoneyMono"]["Value"] = 57
	tRamadanCollection_Award[3302746][1][57]["Log"] = "0,0,3302746,1,12000682,2,3,57"

	tRamadanCollection_Award[3302746][1][58] = {}
	tRamadanCollection_Award[3302746][1][58]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][58]["ItemChance"] = 60
	tRamadanCollection_Award[3302746][1][58]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][58]["RewardEMoneyMono"]["Value"] = 58
	tRamadanCollection_Award[3302746][1][58]["Log"] = "0,0,3302746,1,12000682,2,3,58"

	tRamadanCollection_Award[3302746][1][59] = {}
	tRamadanCollection_Award[3302746][1][59]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][59]["ItemChance"] = 60
	tRamadanCollection_Award[3302746][1][59]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][59]["RewardEMoneyMono"]["Value"] = 59
	tRamadanCollection_Award[3302746][1][59]["Log"] = "0,0,3302746,1,12000682,2,3,59"

	tRamadanCollection_Award[3302746][1][60] = {}
	tRamadanCollection_Award[3302746][1][60]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][60]["ItemChance"] = 60
	tRamadanCollection_Award[3302746][1][60]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][60]["RewardEMoneyMono"]["Value"] = 60
	tRamadanCollection_Award[3302746][1][60]["Log"] = "0,0,3302746,1,12000682,2,3,60"

	tRamadanCollection_Award[3302746][1][61] = {}
	tRamadanCollection_Award[3302746][1][61]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][61]["ItemChance"] = 50
	tRamadanCollection_Award[3302746][1][61]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][61]["RewardEMoneyMono"]["Value"] = 61
	tRamadanCollection_Award[3302746][1][61]["Log"] = "0,0,3302746,1,12000682,2,3,61"

	tRamadanCollection_Award[3302746][1][62] = {}
	tRamadanCollection_Award[3302746][1][62]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][62]["ItemChance"] = 50
	tRamadanCollection_Award[3302746][1][62]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][62]["RewardEMoneyMono"]["Value"] = 62
	tRamadanCollection_Award[3302746][1][62]["Log"] = "0,0,3302746,1,12000682,2,3,62"

	tRamadanCollection_Award[3302746][1][63] = {}
	tRamadanCollection_Award[3302746][1][63]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][63]["ItemChance"] = 50
	tRamadanCollection_Award[3302746][1][63]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][63]["RewardEMoneyMono"]["Value"] = 63
	tRamadanCollection_Award[3302746][1][63]["Log"] = "0,0,3302746,1,12000682,2,3,63"

	tRamadanCollection_Award[3302746][1][64] = {}
	tRamadanCollection_Award[3302746][1][64]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][64]["ItemChance"] = 50
	tRamadanCollection_Award[3302746][1][64]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][64]["RewardEMoneyMono"]["Value"] = 64
	tRamadanCollection_Award[3302746][1][64]["Log"] = "0,0,3302746,1,12000682,2,3,64"

	tRamadanCollection_Award[3302746][1][65] = {}
	tRamadanCollection_Award[3302746][1][65]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][65]["ItemChance"] = 50
	tRamadanCollection_Award[3302746][1][65]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][65]["RewardEMoneyMono"]["Value"] = 65
	tRamadanCollection_Award[3302746][1][65]["Log"] = "0,0,3302746,1,12000682,2,3,65"

	tRamadanCollection_Award[3302746][1][66] = {}
	tRamadanCollection_Award[3302746][1][66]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][66]["ItemChance"] = 50
	tRamadanCollection_Award[3302746][1][66]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][66]["RewardEMoneyMono"]["Value"] = 66
	tRamadanCollection_Award[3302746][1][66]["Log"] = "0,0,3302746,1,12000682,2,3,66"

	tRamadanCollection_Award[3302746][1][67] = {}
	tRamadanCollection_Award[3302746][1][67]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][67]["ItemChance"] = 50
	tRamadanCollection_Award[3302746][1][67]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][67]["RewardEMoneyMono"]["Value"] = 67
	tRamadanCollection_Award[3302746][1][67]["Log"] = "0,0,3302746,1,12000682,2,3,67"

	tRamadanCollection_Award[3302746][1][68] = {}
	tRamadanCollection_Award[3302746][1][68]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][68]["ItemChance"] = 50
	tRamadanCollection_Award[3302746][1][68]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][68]["RewardEMoneyMono"]["Value"] = 68
	tRamadanCollection_Award[3302746][1][68]["Log"] = "0,0,3302746,1,12000682,2,3,68"

	tRamadanCollection_Award[3302746][1][69] = {}
	tRamadanCollection_Award[3302746][1][69]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][69]["ItemChance"] = 50
	tRamadanCollection_Award[3302746][1][69]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][69]["RewardEMoneyMono"]["Value"] = 69
	tRamadanCollection_Award[3302746][1][69]["Log"] = "0,0,3302746,1,12000682,2,3,69"

	tRamadanCollection_Award[3302746][1][70] = {}
	tRamadanCollection_Award[3302746][1][70]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][70]["ItemChance"] = 50
	tRamadanCollection_Award[3302746][1][70]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][70]["RewardEMoneyMono"]["Value"] = 70
	tRamadanCollection_Award[3302746][1][70]["Log"] = "0,0,3302746,1,12000682,2,3,70"

	tRamadanCollection_Award[3302746][1][71] = {}
	tRamadanCollection_Award[3302746][1][71]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][71]["ItemChance"] = 30
	tRamadanCollection_Award[3302746][1][71]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][71]["RewardEMoneyMono"]["Value"] = 71
	tRamadanCollection_Award[3302746][1][71]["Log"] = "0,0,3302746,1,12000682,2,3,71"

	tRamadanCollection_Award[3302746][1][72] = {}
	tRamadanCollection_Award[3302746][1][72]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][72]["ItemChance"] = 30
	tRamadanCollection_Award[3302746][1][72]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][72]["RewardEMoneyMono"]["Value"] = 72
	tRamadanCollection_Award[3302746][1][72]["Log"] = "0,0,3302746,1,12000682,2,3,72"

	tRamadanCollection_Award[3302746][1][73] = {}
	tRamadanCollection_Award[3302746][1][73]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][73]["ItemChance"] = 30
	tRamadanCollection_Award[3302746][1][73]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][73]["RewardEMoneyMono"]["Value"] = 73
	tRamadanCollection_Award[3302746][1][73]["Log"] = "0,0,3302746,1,12000682,2,3,73"

	tRamadanCollection_Award[3302746][1][74] = {}
	tRamadanCollection_Award[3302746][1][74]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][74]["ItemChance"] = 30
	tRamadanCollection_Award[3302746][1][74]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][74]["RewardEMoneyMono"]["Value"] = 74
	tRamadanCollection_Award[3302746][1][74]["Log"] = "0,0,3302746,1,12000682,2,3,74"

	tRamadanCollection_Award[3302746][1][75] = {}
	tRamadanCollection_Award[3302746][1][75]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][75]["ItemChance"] = 30
	tRamadanCollection_Award[3302746][1][75]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][75]["RewardEMoneyMono"]["Value"] = 75
	tRamadanCollection_Award[3302746][1][75]["Log"] = "0,0,3302746,1,12000682,2,3,75"

	tRamadanCollection_Award[3302746][1][76] = {}
	tRamadanCollection_Award[3302746][1][76]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][76]["ItemChance"] = 30
	tRamadanCollection_Award[3302746][1][76]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][76]["RewardEMoneyMono"]["Value"] = 76
	tRamadanCollection_Award[3302746][1][76]["Log"] = "0,0,3302746,1,12000682,2,3,76"

	tRamadanCollection_Award[3302746][1][77] = {}
	tRamadanCollection_Award[3302746][1][77]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][77]["ItemChance"] = 30
	tRamadanCollection_Award[3302746][1][77]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][77]["RewardEMoneyMono"]["Value"] = 77
	tRamadanCollection_Award[3302746][1][77]["Log"] = "0,0,3302746,1,12000682,2,3,77"

	tRamadanCollection_Award[3302746][1][78] = {}
	tRamadanCollection_Award[3302746][1][78]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][78]["ItemChance"] = 30
	tRamadanCollection_Award[3302746][1][78]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][78]["RewardEMoneyMono"]["Value"] = 78
	tRamadanCollection_Award[3302746][1][78]["Log"] = "0,0,3302746,1,12000682,2,3,78"

	tRamadanCollection_Award[3302746][1][79] = {}
	tRamadanCollection_Award[3302746][1][79]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][79]["ItemChance"] = 30
	tRamadanCollection_Award[3302746][1][79]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][79]["RewardEMoneyMono"]["Value"] = 79
	tRamadanCollection_Award[3302746][1][79]["Log"] = "0,0,3302746,1,12000682,2,3,79"

	tRamadanCollection_Award[3302746][1][80] = {}
	tRamadanCollection_Award[3302746][1][80]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][80]["ItemChance"] = 10
	tRamadanCollection_Award[3302746][1][80]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][80]["RewardEMoneyMono"]["Value"] = 80
	tRamadanCollection_Award[3302746][1][80]["Log"] = "0,0,3302746,1,12000682,2,3,80"

	tRamadanCollection_Award[3302746][1][81] = {}
	tRamadanCollection_Award[3302746][1][81]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][81]["ItemChance"] = 10
	tRamadanCollection_Award[3302746][1][81]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][81]["RewardEMoneyMono"]["Value"] = 81
	tRamadanCollection_Award[3302746][1][81]["Log"] = "0,0,3302746,1,12000682,2,3,81"

	tRamadanCollection_Award[3302746][1][82] = {}
	tRamadanCollection_Award[3302746][1][82]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][82]["ItemChance"] = 10
	tRamadanCollection_Award[3302746][1][82]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][82]["RewardEMoneyMono"]["Value"] = 82
	tRamadanCollection_Award[3302746][1][82]["Log"] = "0,0,3302746,1,12000682,2,3,82"

	tRamadanCollection_Award[3302746][1][83] = {}
	tRamadanCollection_Award[3302746][1][83]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][83]["ItemChance"] = 10
	tRamadanCollection_Award[3302746][1][83]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][83]["RewardEMoneyMono"]["Value"] = 83
	tRamadanCollection_Award[3302746][1][83]["Log"] = "0,0,3302746,1,12000682,2,3,83"

	tRamadanCollection_Award[3302746][1][84] = {}
	tRamadanCollection_Award[3302746][1][84]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][84]["ItemChance"] = 10
	tRamadanCollection_Award[3302746][1][84]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][84]["RewardEMoneyMono"]["Value"] = 84
	tRamadanCollection_Award[3302746][1][84]["Log"] = "0,0,3302746,1,12000682,2,3,84"

	tRamadanCollection_Award[3302746][1][85] = {}
	tRamadanCollection_Award[3302746][1][85]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][85]["ItemChance"] = 10
	tRamadanCollection_Award[3302746][1][85]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][85]["RewardEMoneyMono"]["Value"] = 85
	tRamadanCollection_Award[3302746][1][85]["Log"] = "0,0,3302746,1,12000682,2,3,85"

	tRamadanCollection_Award[3302746][1][86] = {}
	tRamadanCollection_Award[3302746][1][86]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][86]["ItemChance"] = 10
	tRamadanCollection_Award[3302746][1][86]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][86]["RewardEMoneyMono"]["Value"] = 86
	tRamadanCollection_Award[3302746][1][86]["Log"] = "0,0,3302746,1,12000682,2,3,86"

	tRamadanCollection_Award[3302746][1][87] = {}
	tRamadanCollection_Award[3302746][1][87]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][87]["ItemChance"] = 10
	tRamadanCollection_Award[3302746][1][87]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][87]["RewardEMoneyMono"]["Value"] = 87
	tRamadanCollection_Award[3302746][1][87]["Log"] = "0,0,3302746,1,12000682,2,3,87"

	tRamadanCollection_Award[3302746][1][88] = {}
	tRamadanCollection_Award[3302746][1][88]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302746][1][88]["ItemChance"] = 10
	tRamadanCollection_Award[3302746][1][88]["RewardEMoneyMono"] = {}
	tRamadanCollection_Award[3302746][1][88]["RewardEMoneyMono"]["Value"] = 88
	tRamadanCollection_Award[3302746][1][88]["Log"] = "0,0,3302746,1,12000682,2,3,88"
	
-- 绣春飞鱼服外套碎片
	tRamadanCollection_Award[3302747] = {}
	tRamadanCollection_Award[3302747]["ItemNum"] = 15

	tRamadanCollection_Award[3302747][1] = {}
	tRamadanCollection_Award[3302747][1]["ItemChanceSum"] = 10000
	tRamadanCollection_Award[3302747][1][1] = {}
	tRamadanCollection_Award[3302747][1][1]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302747][1][1]["ItemChance"] = 5000
	tRamadanCollection_Award[3302747][1][1]["RewardItem"] = {}
	tRamadanCollection_Award[3302747][1][1]["RewardItem"][1] ={}
	tRamadanCollection_Award[3302747][1][1]["RewardItem"][1]["Id"] = 189075  -- 30天
	tRamadanCollection_Award[3302747][1][1]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tRamadanCollection_Award[3302747][1][1]["Log"] = "0,0,3302747,15,12000682,2,189075,1"

	tRamadanCollection_Award[3302747][1][2] = {}
	tRamadanCollection_Award[3302747][1][2]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302747][1][2]["ItemChance"] = 3500
	tRamadanCollection_Award[3302747][1][2]["RewardItem"] = {}
	tRamadanCollection_Award[3302747][1][2]["RewardItem"][1] ={}
	tRamadanCollection_Award[3302747][1][2]["RewardItem"][1]["Id"] = 189075  -- 90天
	tRamadanCollection_Award[3302747][1][2]["RewardItem"][1]["Attr"] = "0 1 3 129600 1 0 0 1"
	tRamadanCollection_Award[3302747][1][2]["Log"] = "0,0,3302747,15,12000682,2,189075,1"

	tRamadanCollection_Award[3302747][1][3] = {}
	tRamadanCollection_Award[3302747][1][3]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302747][1][3]["ItemChance"] = 1499
	tRamadanCollection_Award[3302747][1][3]["RewardItem"] = {}
	tRamadanCollection_Award[3302747][1][3]["RewardItem"][1] ={}
	tRamadanCollection_Award[3302747][1][3]["RewardItem"][1]["Id"] = 189075  -- 180天
	tRamadanCollection_Award[3302747][1][3]["RewardItem"][1]["Attr"] = "0 1 3 259200 1 0 0 1"
	tRamadanCollection_Award[3302747][1][3]["Log"] = "0,0,3302747,15,12000682,2,189075,1"

	tRamadanCollection_Award[3302747][1][4] = {}
	tRamadanCollection_Award[3302747][1][4]["RandomItemChanceType"] = 2
	tRamadanCollection_Award[3302747][1][4]["ItemChance"] = 1
	tRamadanCollection_Award[3302747][1][4]["RewardItem"] = {}
	tRamadanCollection_Award[3302747][1][4]["RewardItem"][1] ={}
	tRamadanCollection_Award[3302747][1][4]["RewardItem"][1]["Id"] = 189075  -- 永久
	tRamadanCollection_Award[3302747][1][4]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tRamadanCollection_Award[3302747][1][4]["Log"] = "0,0,3302747,15,12000682,2,189075,1"
	tRamadanCollection_Award[3302747][1][4]["RewardBroadCast"] = tRamadanCollection_Text["BroadCast"][3302747]
	
	-- 斋月节微光星陨石礼包
	tRamadanCollection_Award[3302748] = {}
	tRamadanCollection_Award[3302748]["LogId"] = 12000682
	tRamadanCollection_Award[3302748]["DeleteItem"] = {}
	tRamadanCollection_Award[3302748]["DeleteItem"][1] = {}
	tRamadanCollection_Award[3302748]["DeleteItem"][1]["Id"] = 3302748
	tRamadanCollection_Award[3302748]["RewardItem"] = {}
	tRamadanCollection_Award[3302748]["RewardItem"][1] = {}
	tRamadanCollection_Award[3302748]["RewardItem"][1]["Id"] = 3009000
	tRamadanCollection_Award[3302748]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	
	--斋月节明亮星陨石礼包
	tRamadanCollection_Award[3302749] = {}
	tRamadanCollection_Award[3302749]["LogId"] = 12000682
	tRamadanCollection_Award[3302749]["DeleteItem"] = {}
	tRamadanCollection_Award[3302749]["DeleteItem"][1] = {}
	tRamadanCollection_Award[3302749]["DeleteItem"][1]["Id"] = 3302749
	tRamadanCollection_Award[3302749]["RewardItem"] = {}
	tRamadanCollection_Award[3302749]["RewardItem"][1] = {}
	tRamadanCollection_Award[3302749]["RewardItem"][1]["Id"] = 3009001
	tRamadanCollection_Award[3302749]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	
	-- 豪华绣春飞鱼服礼包
	tRamadanCollection_Award[3302750] = {}
	tRamadanCollection_Award[3302750]["LogId"] = 12000682
	tRamadanCollection_Award[3302750]["DeleteItem"] = {}  --30天
	tRamadanCollection_Award[3302750]["DeleteItem"][1] ={}
	tRamadanCollection_Award[3302750]["DeleteItem"][1]["Id"] = 3302750
	tRamadanCollection_Award[3302750]["RewardItem"] = {}
	tRamadanCollection_Award[3302750]["RewardItem"][1] = {}
	tRamadanCollection_Award[3302750]["RewardItem"][1]["Id"] = 189075
	tRamadanCollection_Award[3302750]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	
	-- 尊贵绣春飞鱼服礼包
	tRamadanCollection_Award[3302751] = {}
	tRamadanCollection_Award[3302751]["LogId"] = 12000682
	tRamadanCollection_Award[3302751]["DeleteItem"] = {}  --90天
	tRamadanCollection_Award[3302751]["DeleteItem"][1] ={}
	tRamadanCollection_Award[3302751]["DeleteItem"][1]["Id"] = 3302751
	tRamadanCollection_Award[3302751]["RewardItem"] = {}
	tRamadanCollection_Award[3302751]["RewardItem"][1] = {}
	tRamadanCollection_Award[3302751]["RewardItem"][1]["Id"] = 189075
	tRamadanCollection_Award[3302751]["RewardItem"][1]["Attr"] = "0 1 3 129600 1 0 0 1"
	
	-- 芭蕉扇礼盒
	tRamadanCollection_Award[3302752] = {}
	tRamadanCollection_Award[3302752]["LogId"] = 12000682
	tRamadanCollection_Award[3302752]["DeleteItem"] = {}
	tRamadanCollection_Award[3302752]["DeleteItem"][1] ={}
	tRamadanCollection_Award[3302752]["DeleteItem"][1]["Id"] = 3302752
	tRamadanCollection_Award[3302752]["RewardItem"] = {}
	tRamadanCollection_Award[3302752]["RewardItem"][1] = {}
	tRamadanCollection_Award[3302752]["RewardItem"][1]["Id"] = 350007
	tRamadanCollection_Award[3302752]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	
	-- 大侠平底锅礼盒
	tRamadanCollection_Award[3302753] = {}
	tRamadanCollection_Award[3302753]["LogId"] = 12000682
	tRamadanCollection_Award[3302753]["DeleteItem"] = {}
	tRamadanCollection_Award[3302753]["DeleteItem"][1] ={}
	tRamadanCollection_Award[3302753]["DeleteItem"][1]["Id"] = 3302753
	tRamadanCollection_Award[3302753]["RewardItem"] = {}
	tRamadanCollection_Award[3302753]["RewardItem"][1] = {}
	tRamadanCollection_Award[3302753]["RewardItem"][1]["Id"] = 360009
	tRamadanCollection_Award[3302753]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	
	-- 榉木多宝阁家具礼盒
	tRamadanCollection_Award[3302754] = {}
	tRamadanCollection_Award[3302754]["LogId"] = 12000682
	tRamadanCollection_Award[3302754]["DeleteItem"] = {}
	tRamadanCollection_Award[3302754]["DeleteItem"][1] = {}
	tRamadanCollection_Award[3302754]["DeleteItem"][1]["Id"] = 3302754
	tRamadanCollection_Award[3302754]["RewardItem"] = {}
	tRamadanCollection_Award[3302754]["RewardItem"][1] = {}
	tRamadanCollection_Award[3302754]["RewardItem"][1]["Id"] = 726078
	tRamadanCollection_Award[3302754]["RewardItem"][1]["Attr"] = "0 1 3"
	
	-- 斋月气力礼包 -- 200气力包
	tRamadanCollection_Award[3302755] = {}    
	tRamadanCollection_Award[3302755]["LogId"] = 12000682
	tRamadanCollection_Award[3302755]["DeleteItem"] = {}
	tRamadanCollection_Award[3302755]["DeleteItem"][1] = {}
	tRamadanCollection_Award[3302755]["DeleteItem"][1]["Id"] = 3302755
	tRamadanCollection_Award[3302755]["RewardStrengthValue"] = {}
	tRamadanCollection_Award[3302755]["RewardStrengthValue"]["Value"] = 200
	
	-- +1赤炼石包(赠)
	tRamadanCollection_Award[3302760] = {}
	tRamadanCollection_Award[3302760][1] = {}
	tRamadanCollection_Award[3302760][1]["LogId"] = 12000682
	tRamadanCollection_Award[3302760][1]["DeleteItem"] = {}
	tRamadanCollection_Award[3302760][1]["DeleteItem"][1] = {}
	tRamadanCollection_Award[3302760][1]["DeleteItem"][1]["Id"] = 3302760
	tRamadanCollection_Award[3302760][1]["RewardItem"] = {}
	tRamadanCollection_Award[3302760][1]["RewardItem"][1] = {}
	tRamadanCollection_Award[3302760][1]["RewardItem"][1]["Id"] = 730001
	tRamadanCollection_Award[3302760][1]["RewardItem"][1]["Attr"] = "0 1 3"
	
	-- +2赤炼石包(赠)
	tRamadanCollection_Award[3302761] = {}  
	tRamadanCollection_Award[3302761][1] = {}
	tRamadanCollection_Award[3302761][1]["LogId"] = 12000682
	tRamadanCollection_Award[3302761][1]["DeleteItem"] = {}
	tRamadanCollection_Award[3302761][1]["DeleteItem"][1] = {}
	tRamadanCollection_Award[3302761][1]["DeleteItem"][1]["Id"] = 3302761
	tRamadanCollection_Award[3302761][1]["RewardItem"] = {}
	tRamadanCollection_Award[3302761][1]["RewardItem"][1] = {}
	tRamadanCollection_Award[3302761][1]["RewardItem"][1]["Id"] = 730002
	tRamadanCollection_Award[3302761][1]["RewardItem"][1]["Attr"] = "0 1 3"
	
	-- +2赤炼石包(非赠)
	tRamadanCollection_Award[3302760][2] = {}
	tRamadanCollection_Award[3302760][2]["LogId"] = 12000682
	tRamadanCollection_Award[3302760][2]["DeleteItem"] = {}
	tRamadanCollection_Award[3302760][2]["DeleteItem"][1] = {}
	tRamadanCollection_Award[3302760][2]["DeleteItem"][1]["Id"] = 3302760
	tRamadanCollection_Award[3302760][2]["RewardItem"] = {}
	tRamadanCollection_Award[3302760][2]["RewardItem"][1] = {}
	tRamadanCollection_Award[3302760][2]["RewardItem"][1]["Id"] = 730002
	tRamadanCollection_Award[3302760][2]["RewardItem"][1]["Attr"] = "0 1"
	
	-- +3赤炼石包(非赠) 
	tRamadanCollection_Award[3302761][2] = {}
	tRamadanCollection_Award[3302761][2]["LogId"] = 12000682
	tRamadanCollection_Award[3302761][2]["DeleteItem"] = {}
	tRamadanCollection_Award[3302761][2]["DeleteItem"][1] = {}
	tRamadanCollection_Award[3302761][2]["DeleteItem"][1]["Id"] = 3302761
	tRamadanCollection_Award[3302761][2]["RewardItem"] = {}
	tRamadanCollection_Award[3302761][2]["RewardItem"][1] = {}
	tRamadanCollection_Award[3302761][2]["RewardItem"][1]["Id"] = 730003
	tRamadanCollection_Award[3302761][2]["RewardItem"][1]["Attr"] = "0 1"
	
----------------------------------------击杀逻辑----------------------------------------
-- 杀片区怪有1%概率获得1份麦米钱，每人每天限掉落30份
function RamadanCollection_MonsterDropMoney()
	-- 非活动时间
	if not Sys_ChkFullTime(tRamadanCollection_Constant["ActivityTime"]) then
		return
	end
	
	-- 等级不满足
	if not User_JudgeLevelAndMetempsychosis(tRamadanCollection_Constant["NeedLevel"],tRamadanCollection_Constant["NeedMetempsychosis"]) then
		return
	end
	
	-- 背包空间不足
	if not User_CheckLeftSpace(tRamadanCollection_Constant["BagSpace"]) then
		User_TalkChannel2005(tRamadanCollection_Text["FullSpace"])
		Sys_MsgBox(tRamadanCollection_Text["FullSpace"])
		return
	end
	
	-- 掩码初始化
	RamadanCollection_ClearStc()
	
	-- 杀片区怪有1%概率获得1份麦米钱，每人每天限掉落30份
	local nStartNum = tRamadanCollection_Constant["McMahonNum"]
	local nEndNum = tRamadanCollection_Constant["EndNum"]
	local nEvent = tRamadanCollection_Constant["Stc"]["EventType"]
	local nType = tRamadanCollection_Constant["Stc"]["DataType"][1]
	local nNum = (tRamadanCollection_Award["McMahon"]["RewardData"] - 1)*10001
	local nSign = Get_UserStatisticValue(nEvent,nType)
	
	if Sys_Random(nStartNum,nEndNum) then
		if nNum == nSign then
			Sys_MsgBox(tRamadanCollection_Text["McMahonHaveReceive"])
		end
		RewardTemplate_OuterPckage(tRamadanCollection_Award["McMahon"])
	end
	
end
	
-- 片区每杀300只怪获得1个斋月礼盒,每日限获取3个
function RamadanCollection_MonsterDropBag()
	-- 非活动时间
	if not Sys_ChkFullTime(tRamadanCollection_Constant["ActivityTime"]) then
		return
	end
	
	-- 等级不满足
	if not User_JudgeLevelAndMetempsychosis(tRamadanCollection_Constant["NeedLevel"],tRamadanCollection_Constant["NeedMetempsychosis"]) then
		return
	end
	
	-- 背包空间不足
	if not User_CheckLeftSpace(tRamadanCollection_Constant["BagSpace"]) then
		User_TalkChannel2005(tRamadanCollection_Text["FullSpace"])
		Sys_MsgBox(tRamadanCollection_Text["FullSpace"])
		return
	end
	
	-- 掩码初始化
	RamadanCollection_ClearStc()
	
	local nEvent = tRamadanCollection_Constant["Stc"]["EventType"]
	local nType = tRamadanCollection_Constant["Stc"]["DataType"][2]
	local nType2 = tRamadanCollection_Constant["Stc"]["DataType"][3]
	-- 杀怪数
	local nKillNum = Get_UserStatisticValue(nEvent,nType2)
	
	-- 已获得3个礼包
	if Task_ChkStcValue(nEvent,nType,">=",tRamadanCollection_Constant["Stc"]["End"][2]*10001) then
		return
	end
	
	local nSignTime = tRamadanCollection_Constant["Stc"]["End"][3]
	-- 掩码自增
	nKillNum = nKillNum + 1
	Task_SetStatistic(nEvent,nType2,nKillNum,1)
	-- 是否可以领奖
	if nKillNum%300 ~= 0 then
		return
	end
	-- 上限提示
	if nSignTime == nKillNum then
		Sys_MsgBox(tRamadanCollection_Text["HaveReceive"])
	end
	-- 获得奖励
	RewardTemplate_OuterPckage(tRamadanCollection_Award["McMahonBag"])
	
end
	
-- 每日掩码清理
function RamadanCollection_ClearStc()
	-- 掩码判断
	for k,v in pairs(tRamadanCollection_Constant["Stc"]["DataType"])do
		local nEvent = tRamadanCollection_Constant["Stc"]["EventType"]
		-- 隔天
		if Task_StcInterval(nEvent,v,1,4) then
			Task_SetStatistic(nEvent,v,0,1)
			Task_SetStcTimestamp(nEvent,v,0)
		end
	end
	
end
	
-- 点击麦米钱
function RamadanCollection_ClickMcMahon(nItemId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tRamadanCollection_Constant["ActivityTime"]) then
		-- 转换物品
		RamadanCollection_Exchange(nItemId)
		return
	end
	-- 寻路至NPC兑换大使
	local nPosX = tRamadanCollection_Constant["Npc"]["PosX"]
	local nPosY = tRamadanCollection_Constant["Npc"]["PosY"]
	local nMapId = tRamadanCollection_Constant["Npc"]["MapId"]
	local nNpcId = tRamadanCollection_Constant["Npc"]["NpcId"]
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
	
end
	
-- 物品兑换/删除使用
function RamadanCollection_Exchange(nItemId)
	-- 获取拥有数量
	local nNum = Get_CountItemType(nItemId,0,1,nUserId,nUserId)
	-- 临时设定值
	tRamadanCollection_Award[nItemId]["DeleteItem"][1]["ItemNum"] = nNum
	tRamadanCollection_Award[nItemId]["RewardItem"][1]["Attr"] = "0 "..nNum
	-- 换物
	RewardTemplate_UseItemAndMsg(tRamadanCollection_Award[nItemId])
	
end
	
-- 随机类礼包打开/兑换
function RamadanCollection_OpenRandomBag(nItemId)
	local tTime = tRamadanCollection_Constant["ActivityTime"]
	if nItemId ~= tRamadanCollection_Constant["SpecialTime"] then
		tTime = tRamadanCollection_Constant["BagActivityTime"]
	end
	
	-- 判断活动时间
	if not Sys_ChkFullTime(tTime) then
		-- 删除物品
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			-- 打log
			local sText = string.format(tRamadanCollection_Constant["PastDelLog"],nItemId)
			Sys_SaveActionFestivalLog(sText)
			User_TalkChannel2005(tRamadanCollection_Text["OverTimeDelete"])
		end
		return
	end
	
	-- 删除,随机获得奖励
	if Item_ChkMulItem(nItemId,nItemId,tRamadanCollection_Award[nItemId]["ItemNum"]) and Item_DelMulItem(nItemId,nItemId,tRamadanCollection_Award[nItemId]["ItemNum"]) then
		RewardTemplate_NewRandom(tRamadanCollection_Award[nItemId],1)
	else
		-- 物品不足
		Sys_MsgBox(tRamadanCollection_Text["NoItem"][nItemId])
	end
	
end
	
-- 一般礼包打开/兑换
function RamadanCollection_OpenNormalBag(nItemId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tRamadanCollection_Constant["BagActivityTime"]) then
		-- 删除物品
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			-- 打log
			local sText = string.format(tRamadanCollection_Constant["PastDelLog"],nItemId)
			Sys_SaveActionFestivalLog(sText)
			User_TalkChannel2005(tRamadanCollection_Text["OverTimeDelete"])
		end
		return
	end
	
	-- 模板打开
	RewardTemplate_UseItemAndMsg(tRamadanCollection_Award[nItemId])
	
end
	
	-- 可升级【赤炼石】礼包
function RamadanCollection_StoneUp(nItemId,nOption)
	-- 判断活动时间
	if not Sys_ChkFullTime(tRamadanCollection_Constant["BagActivityTime"]) then
		-- 删除物品
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			-- 打log
			local sText = string.format(tRamadanCollection_Constant["PastDelLog"],nItemId)
			Sys_SaveActionFestivalLog(sText)
			User_TalkChannel2005(tRamadanCollection_Text["OverTimeDelete"])
		end
		return
	end
	
	-- 判断获得情况
	if nOption == 1 then
		RewardTemplate_UseItemAndMsg(tRamadanCollection_Award[nItemId][nOption])
	else
		LinkItemGossipFunc_New(nItemId,"2-1")
		return
	end
	
end
	
-- 升级领取
function RamadanCollection_UpData(nItemId,nOption)
	-- 判断活动时间
	if not Sys_ChkFullTime(tRamadanCollection_Constant["BagActivityTime"]) then
		-- 删除物品
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			-- 打log
			local sText = string.format(tRamadanCollection_Constant["PastDelLog"],nItemId)
			Sys_SaveActionFestivalLog(sText)
			User_TalkChannel2005(tRamadanCollection_Text["OverTimeDelete"])
		end
		return
	end
	
	local nEmoney = tRamadanCollection_Constant["EmoneyPrice"][nItemId]
	--判断天石数
	if Get_UserEMoney() < nEmoney then
		Sys_MsgBox(tRamadanCollection_Text["NoEmoney"])
		return
	end
	-- 检查/扣天石/打log/给奖励
	if Item_ChkItem(nItemId) then
		local sEmoneyLog = string.format(tRamadanCollection_Constant["Emoney"][nItemId],nEmoney,nEmoney)
		if User_AddEMoney(-nEmoney) then
			Sys_SaveEmoneyBuy(sEmoneyLog)
			RewardTemplate_UseItemAndMsg(tRamadanCollection_Award[nItemId][nOption])
		end
	end
	
end
	
-- 气氛布置
-- 地图光效
function RamadanCollection_AirReset()
	local nNpcId = Get_NpcId()
	-- 放光效
	Map_Effect(tRamadanCollection_Constant["MapId"],tRamadanCollection_Constant["Pox"][nNpcId]-5,tRamadanCollection_Constant["Poy"][nNpcId]-5,tRamadanCollection_Constant["Effect"])
end
	
----------------------------------------掉落配置----------------------------------------
	-- 所有片区有几率掉落麦米钱，同时计数并给予礼包。
local tRamadanCollection_DropMoney = {}
	tRamadanCollection_DropMoney["Function"] = RamadanCollection_MonsterDropMoney
	-- 区域
	tRamadanCollection_DropMoney["Area"]={} 
	-- 活动时间
	tRamadanCollection_DropMoney["ActivityTime"]= tRamadanCollection_Constant["ActivityTime"]
	-- table.insert(tMonsterDrop_AreaLoad,tRamadanCollection_DropMoney)
	
local tRamadanCollection_DropBag = {}
	tRamadanCollection_DropBag["Function"] = RamadanCollection_MonsterDropBag
		-- 区域
	tRamadanCollection_DropBag["Area"]={} 
		-- 活动时间
	tRamadanCollection_DropBag["ActivityTime"]= tRamadanCollection_Constant["ActivityTime"]
	-- table.insert(tMonsterDrop_AreaLoad,tRamadanCollection_DropBag)
	
----------------------------------------物品配置----------------------------------------
-- 麦米钱
	tItem[3302744] = tItem[3302744] or {}
	tItem[3302744]["Function"] = function(nItemId,sItemName)
		RamadanCollection_ClickMcMahon(nItemId)
	end
-- 斋月礼盒
	tItem[3302745] = tItem[3302745] or {}
	tItem[3302745]["Function"] = function(nItemId,sItemName)
		RamadanCollection_OpenRandomBag(nItemId)
	end
-- 斋月天石包
	tItem[3302746] = tItem[3302746] or {}
	tItem[3302746]["Function"] = function(nItemId,sItemName)
		RamadanCollection_OpenRandomBag(nItemId)
	end
-- 绣春飞鱼服外套碎片
	tItem[3302747] = tItem[3302747] or {}
	tItem[3302747]["Function"] = function(nItemId,sItemName)
		RamadanCollection_OpenRandomBag(nItemId)
	end
-- 一般性礼包
	for i = 3302748,3302755 do
		tItem[i] = tItem[i] or {}
		tItem[i]["Function"] = function(nItemId,sItemName)
			RamadanCollection_OpenNormalBag(nItemId)
		end
	end
	-- 可升级【赤炼石】礼包
	tItem[3302760] = tItem[3302760] or {}
	tItem[3302760]["DialogueText"] = tRamadanCollection_Text[3302760]
	tItem[3302760]["Text1-1"] ={111}
	tItem[3302760]["tOption1-1"] = {1,2}
	tItem[3302760]["OptionFunc1"] ="RamadanCollection_StoneUp</N>3302760</N>1"
	-- 10天石升级
	tItem[3302760]["OptionFunc2"] ="RamadanCollection_StoneUp</N>3302760</N>2"
	-- 二次确认
	tItem[3302760]["Text2-1"] ={211}
	tItem[3302760]["tOption2-1"] = {3,4}
	tItem[3302760]["OptionFunc3"] ="RamadanCollection_UpData</N>3302760</N>2"
	
	tItem[3302761] = tItem[3302761] or {}
	tItem[3302761]["DialogueText"] = tRamadanCollection_Text[3302761]
	tItem[3302761]["Text1-1"] ={111}
	tItem[3302761]["tOption1-1"] = {1,2}
	tItem[3302761]["OptionFunc1"] ="RamadanCollection_StoneUp</N>3302761</N>1" 
	-- 30天石升级
	tItem[3302761]["OptionFunc2"] ="RamadanCollection_StoneUp</N>3302761</N>2"
	-- 二次确认
	tItem[3302761]["Text2-1"] ={211}
	tItem[3302761]["tOption2-1"] = {3,4}
	tItem[3302761]["OptionFunc3"] ="RamadanCollection_UpData</N>3302761</N>2"
	
----------------------------------------Npc对白----------------------------------------
	tNpcFace[4582] = 51
	tNpcGossip[20453]= tNpcGossip[20453] or DefaultNpc:new{}
	tNpcGossip[20453]["OptionHidden"] = 1
--活动前
	tNpcGossip[20453]["Text1-1"] = {111,112,113,114,115}
	tNpcGossip[20453]["Text111"] = tRamadanCollection_Text[20453]["Text111"]
	tNpcGossip[20453]["Text112"] = tRamadanCollection_Text[20453]["Text112"]
	tNpcGossip[20453]["Text113"] = tRamadanCollection_Text[20453]["Text113"]
	tNpcGossip[20453]["Text114"] = tRamadanCollection_Text[20453]["Text114"]
	tNpcGossip[20453]["Text115"] = tRamadanCollection_Text[20453]["Text115"]
	
	tNpcGossip[20453]["ChkFunc1-1"]= function()
		return Sys_ChkFullTime(tRamadanCollection_Constant["BeforeTime"]) or (not User_JudgeLevelAndMetempsychosis(tRamadanCollection_Constant["NeedLevel"],tRamadanCollection_Constant["NeedMetempsychosis"]))
	end
	tNpcGossip[20453]["tOption1-1"] = {1}
	tNpcGossip[20453]["Option1"] = tRamadanCollection_Text[20453]["Option1"]
	
--活动后
	tNpcGossip[20453]["Text1-2"] = {121}
	tNpcGossip[20453]["Text121"] = tRamadanCollection_Text[20453]["Text121"]
	
	tNpcGossip[20453]["ChkFunc1-2"]= function()
		return not Sys_ChkFullTime(tRamadanCollection_Constant["ActivityTime"])
	end
	tNpcGossip[20453]["tOption1-2"] = {2}
	tNpcGossip[20453]["Option2"] = tRamadanCollection_Text[20453]["Option2"]
	
--活动中
	tNpcGossip[20453]["Text1-3"] = {131,132,133,134,135}
	tNpcGossip[20453]["Text131"] = tRamadanCollection_Text[20453]["Text131"]
	tNpcGossip[20453]["Text132"] = tRamadanCollection_Text[20453]["Text132"]
	tNpcGossip[20453]["Text133"] = tRamadanCollection_Text[20453]["Text133"]
	tNpcGossip[20453]["Text134"] = tRamadanCollection_Text[20453]["Text134"]
	tNpcGossip[20453]["Text135"] = tRamadanCollection_Text[20453]["Text135"]
	
	tNpcGossip[20453]["ChkFunc1-3"]= function()
		return Sys_ChkFullTime(tRamadanCollection_Constant["ActivityTime"])
	end
	
	tNpcGossip[20453]["tOption1-3"] = {3,4}
	tNpcGossip[20453]["Option3"] = tRamadanCollection_Text[20453]["Option3"]
	tNpcGossip[20453]["OptionFunc3"] = "User_OpenExchangeShop</N>20453"
	tNpcGossip[20453]["Option4"] = tRamadanCollection_Text[20453]["Option4"]
	