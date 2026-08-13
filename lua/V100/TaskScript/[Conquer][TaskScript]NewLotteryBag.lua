------------------------------------------------------------------------------------
--Name:			[简体征服][任务脚本]8月新服抽奖礼包
--Creator:		翁清海
--Created:		2018/08/07
------------------------------------------------------------------------------------

--命名前缀
--NewLotteryBag_

--logid:12001134

--------------------------------------------数据部分配置--------------------------------------------
local tNewLotteryBag_Reword = {}
	--【新服】武器外套礼包碎片
	tNewLotteryBag_Reword[3310426] = {}
	--30天大日飞凰赠 360224
	tNewLotteryBag_Reword[3310426][1] = {}
	tNewLotteryBag_Reword[3310426][1]["DeleteItem"] = {}
	tNewLotteryBag_Reword[3310426][1]["DeleteItem"][1] = {}
	tNewLotteryBag_Reword[3310426][1]["DeleteItem"][1]["Id"] = 3310426
	tNewLotteryBag_Reword[3310426][1]["DeleteItem"][1]["ItemNum"] = 30
	tNewLotteryBag_Reword[3310426][1]["RewardEffect"] = {}
	tNewLotteryBag_Reword[3310426][1]["RewardEffect"]["SzObj"] = "self"
	tNewLotteryBag_Reword[3310426][1]["RewardEffect"]["Effect"] = "angelwing"
	tNewLotteryBag_Reword[3310426][1]["RewardItem"] = {}
	tNewLotteryBag_Reword[3310426][1]["RewardItem"][1] = {}
	tNewLotteryBag_Reword[3310426][1]["RewardItem"][1]["Id"] = 360224
	tNewLotteryBag_Reword[3310426][1]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tNewLotteryBag_Reword[3310426][1]["LogId"] =12001134
	--30天分光破浪赠	360220
	tNewLotteryBag_Reword[3310426][2] = {}
	tNewLotteryBag_Reword[3310426][2]["DeleteItem"] = {}
	tNewLotteryBag_Reword[3310426][2]["DeleteItem"][1] = {}
	tNewLotteryBag_Reword[3310426][2]["DeleteItem"][1]["Id"] = 3310426
	tNewLotteryBag_Reword[3310426][2]["DeleteItem"][1]["ItemNum"] = 30
	tNewLotteryBag_Reword[3310426][2]["RewardEffect"] = {}
	tNewLotteryBag_Reword[3310426][2]["RewardEffect"]["SzObj"] = "self"
	tNewLotteryBag_Reword[3310426][2]["RewardEffect"]["Effect"] = "angelwing"
	tNewLotteryBag_Reword[3310426][2]["RewardItem"] = {}
	tNewLotteryBag_Reword[3310426][2]["RewardItem"][1] = {}
	tNewLotteryBag_Reword[3310426][2]["RewardItem"][1]["Id"] = 360220
	tNewLotteryBag_Reword[3310426][2]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tNewLotteryBag_Reword[3310426][2]["LogId"] =12001134
	--30天不灭明王盾赠	380010
	tNewLotteryBag_Reword[3310426][3] = {}
	tNewLotteryBag_Reword[3310426][3]["DeleteItem"] = {}
	tNewLotteryBag_Reword[3310426][3]["DeleteItem"][1] = {}
	tNewLotteryBag_Reword[3310426][3]["DeleteItem"][1]["Id"] = 3310426
	tNewLotteryBag_Reword[3310426][3]["DeleteItem"][1]["ItemNum"] = 30
	tNewLotteryBag_Reword[3310426][3]["RewardEffect"] = {}
	tNewLotteryBag_Reword[3310426][3]["RewardEffect"]["SzObj"] = "self"
	tNewLotteryBag_Reword[3310426][3]["RewardEffect"]["Effect"] = "angelwing"
	tNewLotteryBag_Reword[3310426][3]["RewardItem"] = {}
	tNewLotteryBag_Reword[3310426][3]["RewardItem"][1] = {}
	tNewLotteryBag_Reword[3310426][3]["RewardItem"][1]["Id"] = 380010
	tNewLotteryBag_Reword[3310426][3]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tNewLotteryBag_Reword[3310426][3]["LogId"] =12001134
	--30天断岳青虹赠	350022
	tNewLotteryBag_Reword[3310426][4] = {}
	tNewLotteryBag_Reword[3310426][4]["DeleteItem"] = {}
	tNewLotteryBag_Reword[3310426][4]["DeleteItem"][1] = {}
	tNewLotteryBag_Reword[3310426][4]["DeleteItem"][1]["Id"] = 3310426
	tNewLotteryBag_Reword[3310426][4]["DeleteItem"][1]["ItemNum"] = 30
	tNewLotteryBag_Reword[3310426][4]["RewardEffect"] = {}
	tNewLotteryBag_Reword[3310426][4]["RewardEffect"]["SzObj"] = "self"
	tNewLotteryBag_Reword[3310426][4]["RewardEffect"]["Effect"] = "angelwing"
	tNewLotteryBag_Reword[3310426][4]["RewardItem"] = {}
	tNewLotteryBag_Reword[3310426][4]["RewardItem"][1] = {}
	tNewLotteryBag_Reword[3310426][4]["RewardItem"][1]["Id"] = 350022
	tNewLotteryBag_Reword[3310426][4]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tNewLotteryBag_Reword[3310426][4]["LogId"] =12001134
	--30天九霄惊雷赠	370008
	tNewLotteryBag_Reword[3310426][5] = {}
	tNewLotteryBag_Reword[3310426][5]["DeleteItem"] = {}
	tNewLotteryBag_Reword[3310426][5]["DeleteItem"][1] = {}
	tNewLotteryBag_Reword[3310426][5]["DeleteItem"][1]["Id"] = 3310426
	tNewLotteryBag_Reword[3310426][5]["DeleteItem"][1]["ItemNum"] = 30
	tNewLotteryBag_Reword[3310426][5]["RewardEffect"] = {}
	tNewLotteryBag_Reword[3310426][5]["RewardEffect"]["SzObj"] = "self"
	tNewLotteryBag_Reword[3310426][5]["RewardEffect"]["Effect"] = "angelwing"
	tNewLotteryBag_Reword[3310426][5]["RewardItem"] = {}
	tNewLotteryBag_Reword[3310426][5]["RewardItem"][1] = {}
	tNewLotteryBag_Reword[3310426][5]["RewardItem"][1]["Id"] = 370008
	tNewLotteryBag_Reword[3310426][5]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tNewLotteryBag_Reword[3310426][5]["LogId"] =12001134
	--30天开阳赠	360223
	tNewLotteryBag_Reword[3310426][6] = {}
	tNewLotteryBag_Reword[3310426][6]["DeleteItem"] = {}
	tNewLotteryBag_Reword[3310426][6]["DeleteItem"][1] = {}
	tNewLotteryBag_Reword[3310426][6]["DeleteItem"][1]["Id"] = 3310426
	tNewLotteryBag_Reword[3310426][6]["DeleteItem"][1]["ItemNum"] = 30
	tNewLotteryBag_Reword[3310426][6]["RewardEffect"] = {}
	tNewLotteryBag_Reword[3310426][6]["RewardEffect"]["SzObj"] = "self"
	tNewLotteryBag_Reword[3310426][6]["RewardEffect"]["Effect"] = "angelwing"
	tNewLotteryBag_Reword[3310426][6]["RewardItem"] = {}
	tNewLotteryBag_Reword[3310426][6]["RewardItem"][1] = {}
	tNewLotteryBag_Reword[3310426][6]["RewardItem"][1]["Id"] = 360223
	tNewLotteryBag_Reword[3310426][6]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tNewLotteryBag_Reword[3310426][6]["LogId"] =12001134
	--30天冥魂九狱赠	360222
	tNewLotteryBag_Reword[3310426][7] = {}
	tNewLotteryBag_Reword[3310426][7]["DeleteItem"] = {}
	tNewLotteryBag_Reword[3310426][7]["DeleteItem"][1] = {}
	tNewLotteryBag_Reword[3310426][7]["DeleteItem"][1]["Id"] = 3310426
	tNewLotteryBag_Reword[3310426][7]["DeleteItem"][1]["ItemNum"] = 30
	tNewLotteryBag_Reword[3310426][7]["RewardEffect"] = {}
	tNewLotteryBag_Reword[3310426][7]["RewardEffect"]["SzObj"] = "self"
	tNewLotteryBag_Reword[3310426][7]["RewardEffect"]["Effect"] = "angelwing"
	tNewLotteryBag_Reword[3310426][7]["RewardItem"] = {}
	tNewLotteryBag_Reword[3310426][7]["RewardItem"][1] = {}
	tNewLotteryBag_Reword[3310426][7]["RewardItem"][1]["Id"] = 360222
	tNewLotteryBag_Reword[3310426][7]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tNewLotteryBag_Reword[3310426][7]["LogId"] =12001134
	--30天八荒炎龙赠	360221
	tNewLotteryBag_Reword[3310426][8] = {}
	tNewLotteryBag_Reword[3310426][8]["DeleteItem"] = {}
	tNewLotteryBag_Reword[3310426][8]["DeleteItem"][1] = {}
	tNewLotteryBag_Reword[3310426][8]["DeleteItem"][1]["Id"] = 3310426
	tNewLotteryBag_Reword[3310426][8]["DeleteItem"][1]["ItemNum"] = 30
	tNewLotteryBag_Reword[3310426][8]["RewardEffect"] = {}
	tNewLotteryBag_Reword[3310426][8]["RewardEffect"]["SzObj"] = "self"
	tNewLotteryBag_Reword[3310426][8]["RewardEffect"]["Effect"] = "angelwing"
	tNewLotteryBag_Reword[3310426][8]["RewardItem"] = {}
	tNewLotteryBag_Reword[3310426][8]["RewardItem"][1] = {}
	tNewLotteryBag_Reword[3310426][8]["RewardItem"][1]["Id"] = 360221
	tNewLotteryBag_Reword[3310426][8]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tNewLotteryBag_Reword[3310426][8]["LogId"] =12001134
	--30天飞影流霜赠	360227
	tNewLotteryBag_Reword[3310426][9] = {}
	tNewLotteryBag_Reword[3310426][9]["DeleteItem"] = {}
	tNewLotteryBag_Reword[3310426][9]["DeleteItem"][1] = {}
	tNewLotteryBag_Reword[3310426][9]["DeleteItem"][1]["Id"] = 3310426
	tNewLotteryBag_Reword[3310426][9]["DeleteItem"][1]["ItemNum"] = 30
	tNewLotteryBag_Reword[3310426][9]["RewardEffect"] = {}
	tNewLotteryBag_Reword[3310426][9]["RewardEffect"]["SzObj"] = "self"
	tNewLotteryBag_Reword[3310426][9]["RewardEffect"]["Effect"] = "angelwing"
	tNewLotteryBag_Reword[3310426][9]["RewardItem"] = {}
	tNewLotteryBag_Reword[3310426][9]["RewardItem"][1] = {}
	tNewLotteryBag_Reword[3310426][9]["RewardItem"][1]["Id"] = 360227
	tNewLotteryBag_Reword[3310426][9]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tNewLotteryBag_Reword[3310426][9]["LogId"] =12001134
	--30天灵蛇舞赠	360226
	tNewLotteryBag_Reword[3310426][10] = {}
	tNewLotteryBag_Reword[3310426][10]["DeleteItem"] = {}
	tNewLotteryBag_Reword[3310426][10]["DeleteItem"][1] = {}
	tNewLotteryBag_Reword[3310426][10]["DeleteItem"][1]["Id"] = 3310426
	tNewLotteryBag_Reword[3310426][10]["DeleteItem"][1]["ItemNum"] = 30
	tNewLotteryBag_Reword[3310426][10]["RewardEffect"] = {}
	tNewLotteryBag_Reword[3310426][10]["RewardEffect"]["SzObj"] = "self"
	tNewLotteryBag_Reword[3310426][10]["RewardEffect"]["Effect"] = "angelwing"
	tNewLotteryBag_Reword[3310426][10]["RewardItem"] = {}
	tNewLotteryBag_Reword[3310426][10]["RewardItem"][1] = {}
	tNewLotteryBag_Reword[3310426][10]["RewardItem"][1]["Id"] = 360226
	tNewLotteryBag_Reword[3310426][10]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tNewLotteryBag_Reword[3310426][10]["LogId"] =12001134
	--30天擒龙赠	360225
	tNewLotteryBag_Reword[3310426][11] = {}
	tNewLotteryBag_Reword[3310426][11]["DeleteItem"] = {}
	tNewLotteryBag_Reword[3310426][11]["DeleteItem"][1] = {}
	tNewLotteryBag_Reword[3310426][11]["DeleteItem"][1]["Id"] = 3310426
	tNewLotteryBag_Reword[3310426][11]["DeleteItem"][1]["ItemNum"] = 30
	tNewLotteryBag_Reword[3310426][11]["RewardEffect"] = {}
	tNewLotteryBag_Reword[3310426][11]["RewardEffect"]["SzObj"] = "self"
	tNewLotteryBag_Reword[3310426][11]["RewardEffect"]["Effect"] = "angelwing"
	tNewLotteryBag_Reword[3310426][11]["RewardItem"] = {}
	tNewLotteryBag_Reword[3310426][11]["RewardItem"][1] = {}
	tNewLotteryBag_Reword[3310426][11]["RewardItem"][1]["Id"] = 360225
	tNewLotteryBag_Reword[3310426][11]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tNewLotteryBag_Reword[3310426][11]["LogId"] =12001134
	--心有灵犀30天赠	360150
	tNewLotteryBag_Reword[3310426][12] = {}
	tNewLotteryBag_Reword[3310426][12]["DeleteItem"] = {}
	tNewLotteryBag_Reword[3310426][12]["DeleteItem"][1] = {}
	tNewLotteryBag_Reword[3310426][12]["DeleteItem"][1]["Id"] = 3310426
	tNewLotteryBag_Reword[3310426][12]["DeleteItem"][1]["ItemNum"] = 30
	tNewLotteryBag_Reword[3310426][12]["RewardEffect"] = {}
	tNewLotteryBag_Reword[3310426][12]["RewardEffect"]["SzObj"] = "self"
	tNewLotteryBag_Reword[3310426][12]["RewardEffect"]["Effect"] = "angelwing"
	tNewLotteryBag_Reword[3310426][12]["RewardItem"] = {}
	tNewLotteryBag_Reword[3310426][12]["RewardItem"][1] = {}
	tNewLotteryBag_Reword[3310426][12]["RewardItem"][1]["Id"] = 360150
	tNewLotteryBag_Reword[3310426][12]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tNewLotteryBag_Reword[3310426][12]["LogId"] =12001134
	--心有灵犀30天赠	350080
	tNewLotteryBag_Reword[3310426][13] = {}
	tNewLotteryBag_Reword[3310426][13]["DeleteItem"] = {}
	tNewLotteryBag_Reword[3310426][13]["DeleteItem"][1] = {}
	tNewLotteryBag_Reword[3310426][13]["DeleteItem"][1]["Id"] = 3310426
	tNewLotteryBag_Reword[3310426][13]["DeleteItem"][1]["ItemNum"] = 30
	tNewLotteryBag_Reword[3310426][13]["RewardEffect"] = {}
	tNewLotteryBag_Reword[3310426][13]["RewardEffect"]["SzObj"] = "self"
	tNewLotteryBag_Reword[3310426][13]["RewardEffect"]["Effect"] = "angelwing"
	tNewLotteryBag_Reword[3310426][13]["RewardItem"] = {}
	tNewLotteryBag_Reword[3310426][13]["RewardItem"][1] = {}
	tNewLotteryBag_Reword[3310426][13]["RewardItem"][1]["Id"] = 350080
	tNewLotteryBag_Reword[3310426][13]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tNewLotteryBag_Reword[3310426][13]["LogId"] =12001134
	--玫瑰风暴30天赠	360149
	tNewLotteryBag_Reword[3310426][14] = {}
	tNewLotteryBag_Reword[3310426][14]["DeleteItem"] = {}
	tNewLotteryBag_Reword[3310426][14]["DeleteItem"][1] = {}
	tNewLotteryBag_Reword[3310426][14]["DeleteItem"][1]["Id"] = 3310426
	tNewLotteryBag_Reword[3310426][14]["DeleteItem"][1]["ItemNum"] = 30
	tNewLotteryBag_Reword[3310426][14]["RewardEffect"] = {}
	tNewLotteryBag_Reword[3310426][14]["RewardEffect"]["SzObj"] = "self"
	tNewLotteryBag_Reword[3310426][14]["RewardEffect"]["Effect"] = "angelwing"
	tNewLotteryBag_Reword[3310426][14]["RewardItem"] = {}
	tNewLotteryBag_Reword[3310426][14]["RewardItem"][1] = {}
	tNewLotteryBag_Reword[3310426][14]["RewardItem"][1]["Id"] = 360149
	tNewLotteryBag_Reword[3310426][14]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tNewLotteryBag_Reword[3310426][14]["LogId"] =12001134
	--玫瑰风暴30天赠	350079
	tNewLotteryBag_Reword[3310426][15] = {}
	tNewLotteryBag_Reword[3310426][15]["DeleteItem"] = {}
	tNewLotteryBag_Reword[3310426][15]["DeleteItem"][1] = {}
	tNewLotteryBag_Reword[3310426][15]["DeleteItem"][1]["Id"] = 3310426
	tNewLotteryBag_Reword[3310426][15]["DeleteItem"][1]["ItemNum"] = 30
	tNewLotteryBag_Reword[3310426][15]["RewardEffect"] = {}
	tNewLotteryBag_Reword[3310426][15]["RewardEffect"]["SzObj"] = "self"
	tNewLotteryBag_Reword[3310426][15]["RewardEffect"]["Effect"] = "angelwing"
	tNewLotteryBag_Reword[3310426][15]["RewardItem"] = {}
	tNewLotteryBag_Reword[3310426][15]["RewardItem"][1] = {}
	tNewLotteryBag_Reword[3310426][15]["RewardItem"][1]["Id"] = 350079
	tNewLotteryBag_Reword[3310426][15]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tNewLotteryBag_Reword[3310426][15]["LogId"] =12001134
	--比翼双飞30天赠	360192
	tNewLotteryBag_Reword[3310426][16] = {}
	tNewLotteryBag_Reword[3310426][16]["DeleteItem"] = {}
	tNewLotteryBag_Reword[3310426][16]["DeleteItem"][1] = {}
	tNewLotteryBag_Reword[3310426][16]["DeleteItem"][1]["Id"] = 3310426
	tNewLotteryBag_Reword[3310426][16]["DeleteItem"][1]["ItemNum"] = 30
	tNewLotteryBag_Reword[3310426][16]["RewardEffect"] = {}
	tNewLotteryBag_Reword[3310426][16]["RewardEffect"]["SzObj"] = "self"
	tNewLotteryBag_Reword[3310426][16]["RewardEffect"]["Effect"] = "angelwing"
	tNewLotteryBag_Reword[3310426][16]["RewardItem"] = {}
	tNewLotteryBag_Reword[3310426][16]["RewardItem"][1] = {}
	tNewLotteryBag_Reword[3310426][16]["RewardItem"][1]["Id"] = 360192
	tNewLotteryBag_Reword[3310426][16]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tNewLotteryBag_Reword[3310426][16]["LogId"] =12001134
	--比翼双飞30天赠	350099
	tNewLotteryBag_Reword[3310426][17] = {}
	tNewLotteryBag_Reword[3310426][17]["DeleteItem"] = {}
	tNewLotteryBag_Reword[3310426][17]["DeleteItem"][1] = {}
	tNewLotteryBag_Reword[3310426][17]["DeleteItem"][1]["Id"] = 3310426
	tNewLotteryBag_Reword[3310426][17]["DeleteItem"][1]["ItemNum"] = 30
	tNewLotteryBag_Reword[3310426][17]["RewardEffect"] = {}
	tNewLotteryBag_Reword[3310426][17]["RewardEffect"]["SzObj"] = "self"
	tNewLotteryBag_Reword[3310426][17]["RewardEffect"]["Effect"] = "angelwing"
	tNewLotteryBag_Reword[3310426][17]["RewardItem"] = {}
	tNewLotteryBag_Reword[3310426][17]["RewardItem"][1] = {}
	tNewLotteryBag_Reword[3310426][17]["RewardItem"][1]["Id"] = 350099
	tNewLotteryBag_Reword[3310426][17]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tNewLotteryBag_Reword[3310426][17]["LogId"] =12001134
	-- 【新服】伏魔修为随机包
	tNewLotteryBag_Reword[3310427] = {}
	tNewLotteryBag_Reword[3310427]["RepairLimit"] = 1
	tNewLotteryBag_Reword[3310427][1] = {}
	tNewLotteryBag_Reword[3310427][1]["ItemChanceSum"] = 10000
	--修为值500 80%
	tNewLotteryBag_Reword[3310427][1][1] = {}
	tNewLotteryBag_Reword[3310427][1][1]["RandomItemChanceType"] = 2
	tNewLotteryBag_Reword[3310427][1][1]["ItemChance"] = 8000
	tNewLotteryBag_Reword[3310427][1][1]["RewardEffect"] = {}
	tNewLotteryBag_Reword[3310427][1][1]["RewardEffect"]["SzObj"] = "self"
	tNewLotteryBag_Reword[3310427][1][1]["RewardEffect"]["Effect"] = "angelwing"
	tNewLotteryBag_Reword[3310427][1][1]["RewardRepairValue"] = {}
	tNewLotteryBag_Reword[3310427][1][1]["RewardRepairValue"]["Value"] = 500
	tNewLotteryBag_Reword[3310427][1][1]["Log"] = "0,0,3310427,1,12001134,2,19,500"
	--国境伏魔令*5	3309945 20%
	tNewLotteryBag_Reword[3310427][1][2] = {}
	tNewLotteryBag_Reword[3310427][1][2]["RandomItemChanceType"] = 2
	tNewLotteryBag_Reword[3310427][1][2]["ItemChance"] = 2000
	tNewLotteryBag_Reword[3310427][1][2]["RewardEffect"] = {}
	tNewLotteryBag_Reword[3310427][1][2]["RewardEffect"]["SzObj"] = "self"
	tNewLotteryBag_Reword[3310427][1][2]["RewardEffect"]["Effect"] = "angelwing"
	tNewLotteryBag_Reword[3310427][1][2]["RewardItem"] = {}
	tNewLotteryBag_Reword[3310427][1][2]["RewardItem"][1] = {}
	tNewLotteryBag_Reword[3310427][1][2]["RewardItem"][1]["Id"] = 3309945
	tNewLotteryBag_Reword[3310427][1][2]["RewardItem"][1]["Attr"] = "0 5"
	tNewLotteryBag_Reword[3310427][1][2]["Log"] = "0,0,3310428,1,12001134,2,3309945,5"
	-- 【新服】黄色神纹碎片随机包
	tNewLotteryBag_Reword[3310428] = {}
	tNewLotteryBag_Reword[3310428][1] = {}
	tNewLotteryBag_Reword[3310428][1]["ItemChanceSum"] = 10000
	--黄色神纹碎片赠*1	3306370 60%
	tNewLotteryBag_Reword[3310428][1][1] = {}
	tNewLotteryBag_Reword[3310428][1][1]["RandomItemChanceType"] = 2
	tNewLotteryBag_Reword[3310428][1][1]["ItemChance"] = 6000
	tNewLotteryBag_Reword[3310428][1][1]["RewardEffect"] = {}
	tNewLotteryBag_Reword[3310428][1][1]["RewardEffect"]["SzObj"] = "self"
	tNewLotteryBag_Reword[3310428][1][1]["RewardEffect"]["Effect"] = "angelwing"
	tNewLotteryBag_Reword[3310428][1][1]["RewardItem"] = {}
	tNewLotteryBag_Reword[3310428][1][1]["RewardItem"][1] = {}
	tNewLotteryBag_Reword[3310428][1][1]["RewardItem"][1]["Id"] = 3306370
	tNewLotteryBag_Reword[3310428][1][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewLotteryBag_Reword[3310428][1][1]["Log"] = "0,0,3310428,1,12001134,2,3306370,1"
	--黄色神纹碎片赠*3	3306370 25%
	tNewLotteryBag_Reword[3310428][1][2] = {}
	tNewLotteryBag_Reword[3310428][1][2]["RandomItemChanceType"] = 2
	tNewLotteryBag_Reword[3310428][1][2]["ItemChance"] = 2500
	tNewLotteryBag_Reword[3310428][1][2]["RewardEffect"] = {}
	tNewLotteryBag_Reword[3310428][1][2]["RewardEffect"]["SzObj"] = "self"
	tNewLotteryBag_Reword[3310428][1][2]["RewardEffect"]["Effect"] = "angelwing"
	tNewLotteryBag_Reword[3310428][1][2]["RewardItem"] = {}
	tNewLotteryBag_Reword[3310428][1][2]["RewardItem"][1] = {}
	tNewLotteryBag_Reword[3310428][1][2]["RewardItem"][1]["Id"] = 3306370
	tNewLotteryBag_Reword[3310428][1][2]["RewardItem"][1]["Attr"] = "0 3 3"
	tNewLotteryBag_Reword[3310428][1][2]["Log"] = "0,0,3310428,1,12001134,2,3306370,3"
	--黄色神纹碎片赠*5	3306370 15%
	tNewLotteryBag_Reword[3310428][1][3] = {}
	tNewLotteryBag_Reword[3310428][1][3]["RandomItemChanceType"] = 2
	tNewLotteryBag_Reword[3310428][1][3]["ItemChance"] = 1500
	tNewLotteryBag_Reword[3310428][1][3]["RewardEffect"] = {}
	tNewLotteryBag_Reword[3310428][1][3]["RewardEffect"]["SzObj"] = "self"
	tNewLotteryBag_Reword[3310428][1][3]["RewardEffect"]["Effect"] = "angelwing"
	tNewLotteryBag_Reword[3310428][1][3]["RewardItem"] = {}
	tNewLotteryBag_Reword[3310428][1][3]["RewardItem"][1] = {}
	tNewLotteryBag_Reword[3310428][1][3]["RewardItem"][1]["Id"] = 3306370
	tNewLotteryBag_Reword[3310428][1][3]["RewardItem"][1]["Attr"] = "0 5 3"
	tNewLotteryBag_Reword[3310428][1][3]["Log"] = "0,0,3310428,1,12001134,2,3306370,5"
	--【新服】神器锻造礼包
	tNewLotteryBag_Reword[3310429] = {}
	tNewLotteryBag_Reword[3310429]["DeleteItem"] = {}
	tNewLotteryBag_Reword[3310429]["DeleteItem"][1] = {}
	tNewLotteryBag_Reword[3310429]["DeleteItem"][1]["Id"] = 3310429
	tNewLotteryBag_Reword[3310429]["RewardEffect"] = {}
	tNewLotteryBag_Reword[3310429]["RewardEffect"]["SzObj"] = "self"
	tNewLotteryBag_Reword[3310429]["RewardEffect"]["Effect"] = "angelwing"
	tNewLotteryBag_Reword[3310429]["RewardItem"] = {}
	tNewLotteryBag_Reword[3310429]["RewardItem"][1] = {}
	tNewLotteryBag_Reword[3310429]["RewardItem"][1]["Id"] = 3309970
	tNewLotteryBag_Reword[3310429]["RewardItem"][1]["Attr"] = "0 1"
	tNewLotteryBag_Reword[3310429]["RewardItem"][2] = {}
	tNewLotteryBag_Reword[3310429]["RewardItem"][2]["Id"] = 3306885
	tNewLotteryBag_Reword[3310429]["RewardItem"][2]["Attr"] = "0 300"
	tNewLotteryBag_Reword[3310429]["LogId"] =12001134
	-- 【新服】秘令天机果随机包
	tNewLotteryBag_Reword[3310430] = {}
	tNewLotteryBag_Reword[3310430][1] = {}
	tNewLotteryBag_Reword[3310430][1]["ItemChanceSum"] = 10000
	--力量秘令	3004895 24%
	tNewLotteryBag_Reword[3310430][1][1] = {}
	tNewLotteryBag_Reword[3310430][1][1]["RandomItemChanceType"] = 2
	tNewLotteryBag_Reword[3310430][1][1]["ItemChance"] = 2400
	tNewLotteryBag_Reword[3310430][1][1]["RewardEffect"] = {}
	tNewLotteryBag_Reword[3310430][1][1]["RewardEffect"]["SzObj"] = "self"
	tNewLotteryBag_Reword[3310430][1][1]["RewardEffect"]["Effect"] = "angelwing"
	tNewLotteryBag_Reword[3310430][1][1]["RewardItem"] = {}
	tNewLotteryBag_Reword[3310430][1][1]["RewardItem"][1] = {}
	tNewLotteryBag_Reword[3310430][1][1]["RewardItem"][1]["Id"] = 3004895
	tNewLotteryBag_Reword[3310430][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tNewLotteryBag_Reword[3310430][1][1]["Log"] = "0,0,3310430,1,12001134,2,3004895,1"
	--灵巧秘令	3004898 24%
	tNewLotteryBag_Reword[3310430][1][2] = {}
	tNewLotteryBag_Reword[3310430][1][2]["RandomItemChanceType"] = 2
	tNewLotteryBag_Reword[3310430][1][2]["ItemChance"] = 2400
	tNewLotteryBag_Reword[3310430][1][2]["RewardEffect"] = {}
	tNewLotteryBag_Reword[3310430][1][2]["RewardEffect"]["SzObj"] = "self"
	tNewLotteryBag_Reword[3310430][1][2]["RewardEffect"]["Effect"] = "angelwing"
	tNewLotteryBag_Reword[3310430][1][2]["RewardItem"] = {}
	tNewLotteryBag_Reword[3310430][1][2]["RewardItem"][1] = {}
	tNewLotteryBag_Reword[3310430][1][2]["RewardItem"][1]["Id"] = 3004898
	tNewLotteryBag_Reword[3310430][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tNewLotteryBag_Reword[3310430][1][2]["Log"] = "0,0,3310430,1,12001134,2,3004898,1"
	--体质秘令	3004897 25%
	tNewLotteryBag_Reword[3310430][1][3] = {}
	tNewLotteryBag_Reword[3310430][1][3]["RandomItemChanceType"] = 2
	tNewLotteryBag_Reword[3310430][1][3]["ItemChance"] = 2500
	tNewLotteryBag_Reword[3310430][1][3]["RewardEffect"] = {}
	tNewLotteryBag_Reword[3310430][1][3]["RewardEffect"]["SzObj"] = "self"
	tNewLotteryBag_Reword[3310430][1][3]["RewardEffect"]["Effect"] = "angelwing"
	tNewLotteryBag_Reword[3310430][1][3]["RewardItem"] = {}
	tNewLotteryBag_Reword[3310430][1][3]["RewardItem"][1] = {}
	tNewLotteryBag_Reword[3310430][1][3]["RewardItem"][1]["Id"] = 3004897
	tNewLotteryBag_Reword[3310430][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tNewLotteryBag_Reword[3310430][1][3]["Log"] = "0,0,3310430,1,12001134,2,3004897,1"
	--精神秘令	3004896 25%
	tNewLotteryBag_Reword[3310430][1][4] = {}
	tNewLotteryBag_Reword[3310430][1][4]["RandomItemChanceType"] = 2
	tNewLotteryBag_Reword[3310430][1][4]["ItemChance"] = 2500
	tNewLotteryBag_Reword[3310430][1][4]["RewardEffect"] = {}
	tNewLotteryBag_Reword[3310430][1][4]["RewardEffect"]["SzObj"] = "self"
	tNewLotteryBag_Reword[3310430][1][4]["RewardEffect"]["Effect"] = "angelwing"
	tNewLotteryBag_Reword[3310430][1][4]["RewardItem"] = {}
	tNewLotteryBag_Reword[3310430][1][4]["RewardItem"][1] = {}
	tNewLotteryBag_Reword[3310430][1][4]["RewardItem"][1]["Id"] = 3004896
	tNewLotteryBag_Reword[3310430][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tNewLotteryBag_Reword[3310430][1][4]["Log"] = "0,0,3310430,1,12001134,2,3004896,1"
	--百炼天机果	3001044 2%
	tNewLotteryBag_Reword[3310430][1][5] = {}
	tNewLotteryBag_Reword[3310430][1][5]["RandomItemChanceType"] = 2
	tNewLotteryBag_Reword[3310430][1][5]["ItemChance"] = 200
	tNewLotteryBag_Reword[3310430][1][5]["RewardEffect"] = {}
	tNewLotteryBag_Reword[3310430][1][5]["RewardEffect"]["SzObj"] = "self"
	tNewLotteryBag_Reword[3310430][1][5]["RewardEffect"]["Effect"] = "angelwing"
	tNewLotteryBag_Reword[3310430][1][5]["RewardItem"] = {}
	tNewLotteryBag_Reword[3310430][1][5]["RewardItem"][1] = {}
	tNewLotteryBag_Reword[3310430][1][5]["RewardItem"][1]["Id"] = 3001044
	tNewLotteryBag_Reword[3310430][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tNewLotteryBag_Reword[3310430][1][5]["Log"] = "0,0,3310430,1,12001134,2,3001044,1"
	-- 【新服】宝玉随机礼包
	tNewLotteryBag_Reword[3310431] = {}
	tNewLotteryBag_Reword[3310431][1] = {}
	tNewLotteryBag_Reword[3310431][1]["ItemChanceSum"] = 10000
	--岫山玉	3008221 65%
	tNewLotteryBag_Reword[3310431][1][1] = {}
	tNewLotteryBag_Reword[3310431][1][1]["RandomItemChanceType"] = 2
	tNewLotteryBag_Reword[3310431][1][1]["ItemChance"] = 6500
	tNewLotteryBag_Reword[3310431][1][1]["RewardEffect"] = {}
	tNewLotteryBag_Reword[3310431][1][1]["RewardEffect"]["SzObj"] = "self"
	tNewLotteryBag_Reword[3310431][1][1]["RewardEffect"]["Effect"] = "angelwing"
	tNewLotteryBag_Reword[3310431][1][1]["RewardItem"] = {}
	tNewLotteryBag_Reword[3310431][1][1]["RewardItem"][1] = {}
	tNewLotteryBag_Reword[3310431][1][1]["RewardItem"][1]["Id"] = 3008221
	tNewLotteryBag_Reword[3310431][1][1]["RewardItem"][1]["Attr"] = "0 3"
	tNewLotteryBag_Reword[3310431][1][1]["Log"] = "0,0,3310431,1,12001134,2,3008221,3"
	--昆仑玉	3008223 30%
	tNewLotteryBag_Reword[3310431][1][2] = {}
	tNewLotteryBag_Reword[3310431][1][2]["RandomItemChanceType"] = 2
	tNewLotteryBag_Reword[3310431][1][2]["ItemChance"] = 3000
	tNewLotteryBag_Reword[3310431][1][2]["RewardEffect"] = {}
	tNewLotteryBag_Reword[3310431][1][2]["RewardEffect"]["SzObj"] = "self"
	tNewLotteryBag_Reword[3310431][1][2]["RewardEffect"]["Effect"] = "angelwing"
	tNewLotteryBag_Reword[3310431][1][2]["RewardItem"] = {}
	tNewLotteryBag_Reword[3310431][1][2]["RewardItem"][1] = {}
	tNewLotteryBag_Reword[3310431][1][2]["RewardItem"][1]["Id"] = 3008223
	tNewLotteryBag_Reword[3310431][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tNewLotteryBag_Reword[3310431][1][2]["Log"] = "0,0,3310431,1,12001134,2,3008223,1"
	--千年血玉	3008225 5%
	tNewLotteryBag_Reword[3310431][1][3] = {}
	tNewLotteryBag_Reword[3310431][1][3]["RandomItemChanceType"] = 2
	tNewLotteryBag_Reword[3310431][1][3]["ItemChance"] = 500
	tNewLotteryBag_Reword[3310431][1][3]["RewardEffect"] = {}
	tNewLotteryBag_Reword[3310431][1][3]["RewardEffect"]["SzObj"] = "self"
	tNewLotteryBag_Reword[3310431][1][3]["RewardEffect"]["Effect"] = "angelwing"
	tNewLotteryBag_Reword[3310431][1][3]["RewardItem"] = {}
	tNewLotteryBag_Reword[3310431][1][3]["RewardItem"][1] = {}
	tNewLotteryBag_Reword[3310431][1][3]["RewardItem"][1]["Id"] = 3008225
	tNewLotteryBag_Reword[3310431][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tNewLotteryBag_Reword[3310431][1][3]["Log"] = "0,0,3310431,1,12001134,2,3008225,1"
	--【新服】黄色神纹（赠）可选包
	tNewLotteryBag_Reword[3310432] = {}
	tNewLotteryBag_Reword[3310432]["DeleteItem"] = {}
	tNewLotteryBag_Reword[3310432]["DeleteItem"][1] = {}
	tNewLotteryBag_Reword[3310432]["DeleteItem"][1]["Id"] = 3310432
	tNewLotteryBag_Reword[3310432]["RewardEffect"] = {}
	tNewLotteryBag_Reword[3310432]["RewardEffect"]["SzObj"] = "self"
	tNewLotteryBag_Reword[3310432]["RewardEffect"]["Effect"] = "angelwing"
	tNewLotteryBag_Reword[3310432]["RewardItem"] = {}
	tNewLotteryBag_Reword[3310432]["RewardItem"][1] = {}
	tNewLotteryBag_Reword[3310432]["RewardItem"][1]["Id"] = 3306365
	tNewLotteryBag_Reword[3310432]["RewardItem"][1]["Attr"] = "0 1"
	tNewLotteryBag_Reword[3310432]["LogId"] =12001134
	--【练气类】10000点气力值包
	-- tNewLotteryBag_Reword[3310433] = {}
	-- tNewLotteryBag_Reword[3310433]["DeleteItem"] = {}
	-- tNewLotteryBag_Reword[3310433]["DeleteItem"][1] = {}
	-- tNewLotteryBag_Reword[3310433]["DeleteItem"][1]["Id"] = 3310433
	-- tNewLotteryBag_Reword[3310433]["RewardEffect"] = {}
	-- tNewLotteryBag_Reword[3310433]["RewardEffect"]["SzObj"] = "self"
	-- tNewLotteryBag_Reword[3310433]["RewardEffect"]["Effect"] = "angelwing"
	-- tNewLotteryBag_Reword[3310433]["RewardStrengthValue"] = {}
	-- tNewLotteryBag_Reword[3310433]["RewardStrengthValue"]["Value"] = 10000
	-- tNewLotteryBag_Reword[3310433]["LogId"] =12001134
	--【练气类】3000点气力值包
	-- tNewLotteryBag_Reword[3310434] = {}
	-- tNewLotteryBag_Reword[3310434]["DeleteItem"] = {}
	-- tNewLotteryBag_Reword[3310434]["DeleteItem"][1] = {}
	-- tNewLotteryBag_Reword[3310434]["DeleteItem"][1]["Id"] = 3310434
	-- tNewLotteryBag_Reword[3310434]["RewardEffect"] = {}
	-- tNewLotteryBag_Reword[3310434]["RewardEffect"]["SzObj"] = "self"
	-- tNewLotteryBag_Reword[3310434]["RewardEffect"]["Effect"] = "angelwing"
	-- tNewLotteryBag_Reword[3310434]["RewardStrengthValue"] = {}
	-- tNewLotteryBag_Reword[3310434]["RewardStrengthValue"]["Value"] = 3000
	-- tNewLotteryBag_Reword[3310434]["LogId"] =12001134
	--【练气类】1000点气力值包
	-- tNewLotteryBag_Reword[3310435] = {}
	-- tNewLotteryBag_Reword[3310435]["DeleteItem"] = {}
	-- tNewLotteryBag_Reword[3310435]["DeleteItem"][1] = {}
	-- tNewLotteryBag_Reword[3310435]["DeleteItem"][1]["Id"] = 3310435
	-- tNewLotteryBag_Reword[3310435]["RewardEffect"] = {}
	-- tNewLotteryBag_Reword[3310435]["RewardEffect"]["SzObj"] = "self"
	-- tNewLotteryBag_Reword[3310435]["RewardEffect"]["Effect"] = "angelwing"
	-- tNewLotteryBag_Reword[3310435]["RewardStrengthValue"] = {}
	-- tNewLotteryBag_Reword[3310435]["RewardStrengthValue"]["Value"] = 1000
	-- tNewLotteryBag_Reword[3310435]["LogId"] =12001134
	
--------------------------------------------逻辑部分配置--------------------------------------------
--物品打开
function NewLotteryBag_ItemOpen(nItemId, nIndex)
	if tNewLotteryBag_Reword[nItemId] == nil then
		return
	end
	
	local nUserId = Get_UserId()
	
	--判断是否随机奖励
	if tNewLotteryBag_Reword[nItemId][1] ~= nil and tNewLotteryBag_Reword[nItemId][1]["ItemChanceSum"] ~= nil then
		local tAward = CommonFunc_Copy(tNewLotteryBag_Reword[nItemId])
		
		if tNewLotteryBag_Reword[nItemId]["RepairLimit"] ~= nil then
			local nRepairValue = Get_UserCultureValue(nUserId)
			local nAddRepairValue = tAward[1][1]["RewardRepairValue"]["Value"]
			
			--修为值达到上限
			if nRepairValue + nAddRepairValue > G_User_RepairValue then
				tAward[1][1]["ItemChance"] = 0
				tAward[1][2]["ItemChance"] = 10000
			end
		end
		
		if Item_ChkItem(nItemId,nil,nil,nUserId) and Item_DelItem(nItemId,nil,nil,nUserId) then
			RewardTemplate_NewRandom(tAward,1,nUserId)
		end
	else
		if nIndex == nil then
			RewardTemplate_UseItemAndMsg(tNewLotteryBag_Reword[nItemId],nUserId)
		else
			RewardTemplate_UseItemAndMsg(tNewLotteryBag_Reword[nItemId][nIndex],nUserId)
		end
	end
end
--------------------------------------------模块部分配置--------------------------------------------

---------------------------------------------物品模块---------------------------------------------
--【新服】武器外套礼包碎片
tItemFace[3310426] = 1663
tItem[3310426] = tItem[3310426] or {}
tItem[3310426]["Function"] = function(nItemId,sItemName)
	local nUserId = Get_UserId()
	local nItemNum = tNewLotteryBag_Reword[nItemId][1]["DeleteItem"][1]["ItemNum"]
	
	--碎片是否足够
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum) then
		User_TalkChannel2005(string.format(tNewLotteryBag_Text["Channel2005"]["NoChip"], nItemNum),nUserId)
		return
	end
	
	local nSpace = RewardTemplate_GetRewardSpace(tNewLotteryBag_Reword[nItemId][1],nUserId)
	
	--检查背包空间
	if nSpace > 0 and (not User_CheckLeftSpace(nSpace,nUserId)) then
		User_TalkChannel2005(string.format(tRewardTemplate_Text["NoSpace"], nSpace),nUserId)
		return
	end
	
	LinkItemGossipFunc_New(nItemId, "1-1")
end
tItem[3310426]["DialogueText"] = tNewLotteryBag_Text[3310426]
tItem[3310426]["Text1-1"] = {111}
tItem[3310426]["tOption1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111,1112,1113,1114,1115,1116,1117,1118}
tItem[3310426]["OptionFunc111"] = "NewLotteryBag_ItemOpen</N>3310426</N>1"
tItem[3310426]["OptionFunc112"] = "NewLotteryBag_ItemOpen</N>3310426</N>2"
tItem[3310426]["OptionFunc113"] = "NewLotteryBag_ItemOpen</N>3310426</N>3"
tItem[3310426]["OptionFunc114"] = "NewLotteryBag_ItemOpen</N>3310426</N>4"
tItem[3310426]["OptionFunc115"] = "NewLotteryBag_ItemOpen</N>3310426</N>5"
tItem[3310426]["OptionFunc116"] = "NewLotteryBag_ItemOpen</N>3310426</N>6"
tItem[3310426]["OptionFunc117"] = "NewLotteryBag_ItemOpen</N>3310426</N>7"
tItem[3310426]["OptionFunc118"] = "NewLotteryBag_ItemOpen</N>3310426</N>8"
tItem[3310426]["OptionFunc119"] = "NewLotteryBag_ItemOpen</N>3310426</N>9"
tItem[3310426]["OptionFunc1110"] = "NewLotteryBag_ItemOpen</N>3310426</N>10"
tItem[3310426]["OptionFunc1111"] = "NewLotteryBag_ItemOpen</N>3310426</N>11"
tItem[3310426]["OptionFunc1112"] = "NewLotteryBag_ItemOpen</N>3310426</N>12"
tItem[3310426]["OptionFunc1113"] = "NewLotteryBag_ItemOpen</N>3310426</N>13"
tItem[3310426]["OptionFunc1114"] = "NewLotteryBag_ItemOpen</N>3310426</N>14"
tItem[3310426]["OptionFunc1115"] = "NewLotteryBag_ItemOpen</N>3310426</N>15"
tItem[3310426]["OptionFunc1116"] = "NewLotteryBag_ItemOpen</N>3310426</N>16"
tItem[3310426]["OptionFunc1117"] = "NewLotteryBag_ItemOpen</N>3310426</N>17"

--【新服】伏魔修为随机包
tItem[3310427] = tItem[3310427] or {}
tItem[3310427]["Function"] = function(nItemId,sItemName)
	NewLotteryBag_ItemOpen(nItemId)
end

tItem[3310428] = tItem[3310427] or {}
tItem[3310429] = tItem[3310427] or {}
tItem[3310430] = tItem[3310427] or {}
tItem[3310431] = tItem[3310427] or {}
tItem[3310432] = tItem[3310427] or {}
-- tItem[3310433] = tItem[3310427] or {}
-- tItem[3310434] = tItem[3310427] or {}
-- tItem[3310435] = tItem[3310427] or {}
