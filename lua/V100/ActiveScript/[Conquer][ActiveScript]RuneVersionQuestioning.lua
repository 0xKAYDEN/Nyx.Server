------------------------------------------------------------------------------------
--Name：            171106[简体征服][活动脚本]神纹版本答题活动
--Creator:      游若楠
--Created:     2017/11/06
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
--命名规范
--RuneVersionQuestioning_

----------------------------------表配置部分--------------------------------------------
--常量
local tRuneVersionQuestioning_Cont = {}
	tRuneVersionQuestioning_Cont["IntervalTime"] = 180
	tRuneVersionQuestioning_Cont["DelayTime"] = 86400  --隔天时间

--记录答题的间隔时间
local tRuneVersionQuestioning_IntervalTime = {}


--奖励
local tRuneVersionQuestioning_Award = {}
	--首次参与奖
	tRuneVersionQuestioning_Award["FirstTime"] = {}
	tRuneVersionQuestioning_Award["FirstTime"]["RewardItem"] = {}
	tRuneVersionQuestioning_Award["FirstTime"]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award["FirstTime"]["RewardItem"][1]["Id"] = 3306597
	tRuneVersionQuestioning_Award["FirstTime"]["RewardItem"][1]["Attr"] = "0 1"
	tRuneVersionQuestioning_Award["FirstTime"]["RewardNoNeedTip"] = 1
	tRuneVersionQuestioning_Award["FirstTime"]["LogId"] = 12000939
	tRuneVersionQuestioning_Award["FirstTime"]["RewardEffect"] = {}
	tRuneVersionQuestioning_Award["FirstTime"]["RewardEffect"]["SzObj"] = "self"
	tRuneVersionQuestioning_Award["FirstTime"]["RewardEffect"]["Effect"] = "eidolon"
	
	
	--全对奖(仅用来判断背包)
	tRuneVersionQuestioning_Award["AllRight"] = {}
	tRuneVersionQuestioning_Award["AllRight"]["RewardItem"] = {}
	tRuneVersionQuestioning_Award["AllRight"]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award["AllRight"]["RewardItem"][1]["Id"] = 3306597
	tRuneVersionQuestioning_Award["AllRight"]["RewardItem"][1]["Attr"] = "0 3"
	tRuneVersionQuestioning_Award["AllRight"]["RewardNoNeedTip"] = 1
	tRuneVersionQuestioning_Award["AllRight"]["LogId"] = 12000939
	tRuneVersionQuestioning_Award["AllRight"]["RewardEffect"] = {}
	tRuneVersionQuestioning_Award["AllRight"]["RewardEffect"]["SzObj"] = "self"
	tRuneVersionQuestioning_Award["AllRight"]["RewardEffect"]["Effect"] = "eidolon"
	
	
	-------------------------神纹百变精装包
	tRuneVersionQuestioning_Award[3306597] = {}
	tRuneVersionQuestioning_Award[3306597]["DeleteItem"] = {}
	tRuneVersionQuestioning_Award[3306597]["DeleteItem"][1] = {}
	tRuneVersionQuestioning_Award[3306597]["DeleteItem"][1]["Id"] = 3306597
	tRuneVersionQuestioning_Award[3306597]["ItemChanceSum"] = 100000000
	
	tRuneVersionQuestioning_Award[3306597][1] = {}
	tRuneVersionQuestioning_Award[3306597][1]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306597][1]["ItemChance"] = 20800009
	tRuneVersionQuestioning_Award[3306597][1]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306597][1]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306597][1]["RewardItem"][1]["Id"] = 4050001
	tRuneVersionQuestioning_Award[3306597][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tRuneVersionQuestioning_Award[3306597][1]["LogId"] = 12000939
	
	tRuneVersionQuestioning_Award[3306597][2] = {}
	tRuneVersionQuestioning_Award[3306597][2]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306597][2]["ItemChance"] = 7000000
	tRuneVersionQuestioning_Award[3306597][2]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306597][2]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306597][2]["RewardItem"][1]["Id"] = 4050001
	tRuneVersionQuestioning_Award[3306597][2]["RewardItem"][1]["Attr"] = "0 5 3"
	tRuneVersionQuestioning_Award[3306597][2]["LogId"] = 12000939
	
	tRuneVersionQuestioning_Award[3306597][3] = {}
	tRuneVersionQuestioning_Award[3306597][3]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306597][3]["ItemChance"] = 5000000
	tRuneVersionQuestioning_Award[3306597][3]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306597][3]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306597][3]["RewardItem"][1]["Id"] = 3306370
	tRuneVersionQuestioning_Award[3306597][3]["RewardItem"][1]["Attr"] = "0 1 3"
	tRuneVersionQuestioning_Award[3306597][3]["LogId"] = 12000939
	
	tRuneVersionQuestioning_Award[3306597][4] = {}
	tRuneVersionQuestioning_Award[3306597][4]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306597][4]["ItemChance"] = 500000
	tRuneVersionQuestioning_Award[3306597][4]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306597][4]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306597][4]["RewardItem"][1]["Id"] = 3306370
	tRuneVersionQuestioning_Award[3306597][4]["RewardItem"][1]["Attr"] = "0 3 3"
	tRuneVersionQuestioning_Award[3306597][4]["LogId"] = 12000939
	--随机黄色符文
	tRuneVersionQuestioning_Award[3306597][5] = {}
	tRuneVersionQuestioning_Award[3306597][5]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306597][5]["ItemChance"] = 2307
	tRuneVersionQuestioning_Award[3306597][5]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306597][5]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306597][5]["RewardItem"][1]["Id"] = 4031301
	tRuneVersionQuestioning_Award[3306597][5]["RewardItem"][1]["Attr"] = "0 1 3"
	tRuneVersionQuestioning_Award[3306597][5]["LogId"] = 12000939
	tRuneVersionQuestioning_Award[3306597][6] = {}
	tRuneVersionQuestioning_Award[3306597][6]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306597][6]["ItemChance"] = 2307
	tRuneVersionQuestioning_Award[3306597][6]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306597][6]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306597][6]["RewardItem"][1]["Id"] = 4030101
	tRuneVersionQuestioning_Award[3306597][6]["RewardItem"][1]["Attr"] = "0 1 3"
	tRuneVersionQuestioning_Award[3306597][6]["LogId"] = 12000939
	tRuneVersionQuestioning_Award[3306597][7] = {}
	tRuneVersionQuestioning_Award[3306597][7]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306597][7]["ItemChance"] = 2307
	tRuneVersionQuestioning_Award[3306597][7]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306597][7]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306597][7]["RewardItem"][1]["Id"] = 4030201
	tRuneVersionQuestioning_Award[3306597][7]["RewardItem"][1]["Attr"] = "0 1 3"
	tRuneVersionQuestioning_Award[3306597][7]["LogId"] = 12000939
	tRuneVersionQuestioning_Award[3306597][8] = {}
	tRuneVersionQuestioning_Award[3306597][8]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306597][8]["ItemChance"] = 2307
	tRuneVersionQuestioning_Award[3306597][8]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306597][8]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306597][8]["RewardItem"][1]["Id"] = 4030301
	tRuneVersionQuestioning_Award[3306597][8]["RewardItem"][1]["Attr"] = "0 1 3"
	tRuneVersionQuestioning_Award[3306597][8]["LogId"] = 12000939
	tRuneVersionQuestioning_Award[3306597][9] = {}
	tRuneVersionQuestioning_Award[3306597][9]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306597][9]["ItemChance"] = 2307
	tRuneVersionQuestioning_Award[3306597][9]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306597][9]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306597][9]["RewardItem"][1]["Id"] = 4030401
	tRuneVersionQuestioning_Award[3306597][9]["RewardItem"][1]["Attr"] = "0 1 3"
	tRuneVersionQuestioning_Award[3306597][9]["LogId"] = 12000939
	tRuneVersionQuestioning_Award[3306597][10] = {}
	tRuneVersionQuestioning_Award[3306597][10]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306597][10]["ItemChance"] = 2307
	tRuneVersionQuestioning_Award[3306597][10]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306597][10]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306597][10]["RewardItem"][1]["Id"] = 4030501
	tRuneVersionQuestioning_Award[3306597][10]["RewardItem"][1]["Attr"] = "0 1 3"
	tRuneVersionQuestioning_Award[3306597][10]["LogId"] = 12000939
	tRuneVersionQuestioning_Award[3306597][11] = {}
	tRuneVersionQuestioning_Award[3306597][11]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306597][11]["ItemChance"] = 2307
	tRuneVersionQuestioning_Award[3306597][11]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306597][11]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306597][11]["RewardItem"][1]["Id"] = 4030601
	tRuneVersionQuestioning_Award[3306597][11]["RewardItem"][1]["Attr"] = "0 1 3"
	tRuneVersionQuestioning_Award[3306597][11]["LogId"] = 12000939
	tRuneVersionQuestioning_Award[3306597][12] = {}
	tRuneVersionQuestioning_Award[3306597][12]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306597][12]["ItemChance"] = 2307
	tRuneVersionQuestioning_Award[3306597][12]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306597][12]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306597][12]["RewardItem"][1]["Id"] = 4030701
	tRuneVersionQuestioning_Award[3306597][12]["RewardItem"][1]["Attr"] = "0 1 3"
	tRuneVersionQuestioning_Award[3306597][12]["LogId"] = 12000939
	tRuneVersionQuestioning_Award[3306597][13] = {}
	tRuneVersionQuestioning_Award[3306597][13]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306597][13]["ItemChance"] = 2307
	tRuneVersionQuestioning_Award[3306597][13]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306597][13]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306597][13]["RewardItem"][1]["Id"] = 4030801
	tRuneVersionQuestioning_Award[3306597][13]["RewardItem"][1]["Attr"] = "0 1 3"
	tRuneVersionQuestioning_Award[3306597][13]["LogId"] = 12000939
	tRuneVersionQuestioning_Award[3306597][14] = {}
	tRuneVersionQuestioning_Award[3306597][14]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306597][14]["ItemChance"] = 2307
	tRuneVersionQuestioning_Award[3306597][14]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306597][14]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306597][14]["RewardItem"][1]["Id"] = 4030901
	tRuneVersionQuestioning_Award[3306597][14]["RewardItem"][1]["Attr"] = "0 1 3"
	tRuneVersionQuestioning_Award[3306597][14]["LogId"] = 12000939
	tRuneVersionQuestioning_Award[3306597][15] = {}
	tRuneVersionQuestioning_Award[3306597][15]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306597][15]["ItemChance"] = 2307
	tRuneVersionQuestioning_Award[3306597][15]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306597][15]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306597][15]["RewardItem"][1]["Id"] = 4031001
	tRuneVersionQuestioning_Award[3306597][15]["RewardItem"][1]["Attr"] = "0 1 3"
	tRuneVersionQuestioning_Award[3306597][15]["LogId"] = 12000939
	tRuneVersionQuestioning_Award[3306597][16] = {}
	tRuneVersionQuestioning_Award[3306597][16]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306597][16]["ItemChance"] = 2307
	tRuneVersionQuestioning_Award[3306597][16]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306597][16]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306597][16]["RewardItem"][1]["Id"] = 4031101
	tRuneVersionQuestioning_Award[3306597][16]["RewardItem"][1]["Attr"] = "0 1 3"
	tRuneVersionQuestioning_Award[3306597][16]["LogId"] = 12000939
	tRuneVersionQuestioning_Award[3306597][17] = {}
	tRuneVersionQuestioning_Award[3306597][17]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306597][17]["ItemChance"] = 2307
	tRuneVersionQuestioning_Award[3306597][17]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306597][17]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306597][17]["RewardItem"][1]["Id"] = 4031201
	tRuneVersionQuestioning_Award[3306597][17]["RewardItem"][1]["Attr"] = "0 1 3"
	tRuneVersionQuestioning_Award[3306597][17]["LogId"] = 12000939
	
	tRuneVersionQuestioning_Award[3306597][18] = {}
	tRuneVersionQuestioning_Award[3306597][18]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306597][18]["ItemChance"] = 20800000
	tRuneVersionQuestioning_Award[3306597][18]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306597][18]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306597][18]["RewardItem"][1]["Id"] = 4040001
	tRuneVersionQuestioning_Award[3306597][18]["RewardItem"][1]["Attr"] = "0 1 3"
	tRuneVersionQuestioning_Award[3306597][18]["LogId"] = 12000939
	
	tRuneVersionQuestioning_Award[3306597][19] = {}
	tRuneVersionQuestioning_Award[3306597][19]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306597][19]["ItemChance"] = 7000000
	tRuneVersionQuestioning_Award[3306597][19]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306597][19]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306597][19]["RewardItem"][1]["Id"] = 4040001
	tRuneVersionQuestioning_Award[3306597][19]["RewardItem"][1]["Attr"] = "0 5 3"
	tRuneVersionQuestioning_Award[3306597][19]["LogId"] = 12000939
	
	tRuneVersionQuestioning_Award[3306597][20] = {}
	tRuneVersionQuestioning_Award[3306597][20]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306597][20]["ItemChance"] = 5000000
	tRuneVersionQuestioning_Award[3306597][20]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306597][20]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306597][20]["RewardItem"][1]["Id"] = 3306371
	tRuneVersionQuestioning_Award[3306597][20]["RewardItem"][1]["Attr"] = "0 1 3"
	tRuneVersionQuestioning_Award[3306597][20]["LogId"] = 12000939
	
	tRuneVersionQuestioning_Award[3306597][21] = {}
	tRuneVersionQuestioning_Award[3306597][21]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306597][21]["ItemChance"] = 500000
	tRuneVersionQuestioning_Award[3306597][21]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306597][21]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306597][21]["RewardItem"][1]["Id"] = 3306371
	tRuneVersionQuestioning_Award[3306597][21]["RewardItem"][1]["Attr"] = "0 3 3"
	tRuneVersionQuestioning_Award[3306597][21]["LogId"] = 12000939
	--随机蓝色符文
	tRuneVersionQuestioning_Award[3306597][22] = {}
	tRuneVersionQuestioning_Award[3306597][22]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306597][22]["ItemChance"] = 3600
	tRuneVersionQuestioning_Award[3306597][22]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306597][22]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306597][22]["RewardItem"][1]["Id"] = 4020101
	tRuneVersionQuestioning_Award[3306597][22]["RewardItem"][1]["Attr"] = "0 1 3"
	tRuneVersionQuestioning_Award[3306597][22]["LogId"] = 12000939
	tRuneVersionQuestioning_Award[3306597][23] = {}
	tRuneVersionQuestioning_Award[3306597][23]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306597][23]["ItemChance"] = 3600
	tRuneVersionQuestioning_Award[3306597][23]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306597][23]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306597][23]["RewardItem"][1]["Id"] = 4020201
	tRuneVersionQuestioning_Award[3306597][23]["RewardItem"][1]["Attr"] = "0 1 3"
	tRuneVersionQuestioning_Award[3306597][23]["LogId"] = 12000939
	tRuneVersionQuestioning_Award[3306597][24] = {}
	tRuneVersionQuestioning_Award[3306597][24]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306597][24]["ItemChance"] = 3600
	tRuneVersionQuestioning_Award[3306597][24]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306597][24]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306597][24]["RewardItem"][1]["Id"] = 4020301
	tRuneVersionQuestioning_Award[3306597][24]["RewardItem"][1]["Attr"] = "0 1 3"
	tRuneVersionQuestioning_Award[3306597][24]["LogId"] = 12000939
	tRuneVersionQuestioning_Award[3306597][25] = {}
	tRuneVersionQuestioning_Award[3306597][25]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306597][25]["ItemChance"] = 3600
	tRuneVersionQuestioning_Award[3306597][25]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306597][25]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306597][25]["RewardItem"][1]["Id"] = 4020401
	tRuneVersionQuestioning_Award[3306597][25]["RewardItem"][1]["Attr"] = "0 1 3"
	tRuneVersionQuestioning_Award[3306597][25]["LogId"] = 12000939
	tRuneVersionQuestioning_Award[3306597][26] = {}
	tRuneVersionQuestioning_Award[3306597][26]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306597][26]["ItemChance"] = 3600
	tRuneVersionQuestioning_Award[3306597][26]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306597][26]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306597][26]["RewardItem"][1]["Id"] = 4020501
	tRuneVersionQuestioning_Award[3306597][26]["RewardItem"][1]["Attr"] = "0 1 3"
	tRuneVersionQuestioning_Award[3306597][26]["LogId"] = 12000939
	tRuneVersionQuestioning_Award[3306597][27] = {}
	tRuneVersionQuestioning_Award[3306597][27]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306597][27]["ItemChance"] = 3600
	tRuneVersionQuestioning_Award[3306597][27]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306597][27]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306597][27]["RewardItem"][1]["Id"] = 4020601
	tRuneVersionQuestioning_Award[3306597][27]["RewardItem"][1]["Attr"] = "0 1 3"
	tRuneVersionQuestioning_Award[3306597][27]["LogId"] = 12000939
	tRuneVersionQuestioning_Award[3306597][28] = {}
	tRuneVersionQuestioning_Award[3306597][28]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306597][28]["ItemChance"] = 3600
	tRuneVersionQuestioning_Award[3306597][28]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306597][28]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306597][28]["RewardItem"][1]["Id"] = 4020701
	tRuneVersionQuestioning_Award[3306597][28]["RewardItem"][1]["Attr"] = "0 1 3"
	tRuneVersionQuestioning_Award[3306597][28]["LogId"] = 12000939
	tRuneVersionQuestioning_Award[3306597][29] = {}
	tRuneVersionQuestioning_Award[3306597][29]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306597][29]["ItemChance"] = 3600
	tRuneVersionQuestioning_Award[3306597][29]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306597][29]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306597][29]["RewardItem"][1]["Id"] = 4020801
	tRuneVersionQuestioning_Award[3306597][29]["RewardItem"][1]["Attr"] = "0 1 3"
	tRuneVersionQuestioning_Award[3306597][29]["LogId"] = 12000939
	tRuneVersionQuestioning_Award[3306597][30] = {}
	tRuneVersionQuestioning_Award[3306597][30]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306597][30]["ItemChance"] = 3600
	tRuneVersionQuestioning_Award[3306597][30]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306597][30]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306597][30]["RewardItem"][1]["Id"] = 4020901
	tRuneVersionQuestioning_Award[3306597][30]["RewardItem"][1]["Attr"] = "0 1 3"
	tRuneVersionQuestioning_Award[3306597][30]["LogId"] = 12000939
	tRuneVersionQuestioning_Award[3306597][31] = {}
	tRuneVersionQuestioning_Award[3306597][31]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306597][31]["ItemChance"] = 3600
	tRuneVersionQuestioning_Award[3306597][31]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306597][31]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306597][31]["RewardItem"][1]["Id"] = 4021001
	tRuneVersionQuestioning_Award[3306597][31]["RewardItem"][1]["Attr"] = "0 1 3"
	tRuneVersionQuestioning_Award[3306597][31]["LogId"] = 12000939
	tRuneVersionQuestioning_Award[3306597][46] = {}
	tRuneVersionQuestioning_Award[3306597][46]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306597][46]["ItemChance"] = 4000
	tRuneVersionQuestioning_Award[3306597][46]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306597][46]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306597][46]["RewardItem"][1]["Id"] = 4022201
	tRuneVersionQuestioning_Award[3306597][46]["RewardItem"][1]["Attr"] = "0 1 3"
	tRuneVersionQuestioning_Award[3306597][46]["LogId"] = 12000939
	
	
	tRuneVersionQuestioning_Award[3306597][32] = {}
	tRuneVersionQuestioning_Award[3306597][32]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306597][32]["ItemChance"] = 20800000
	tRuneVersionQuestioning_Award[3306597][32]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306597][32]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306597][32]["RewardItem"][1]["Id"] = 4060001
	tRuneVersionQuestioning_Award[3306597][32]["RewardItem"][1]["Attr"] = "0 1 3"
	tRuneVersionQuestioning_Award[3306597][32]["LogId"] = 12000939
	
	tRuneVersionQuestioning_Award[3306597][33] = {}
	tRuneVersionQuestioning_Award[3306597][33]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306597][33]["ItemChance"] = 7000000
	tRuneVersionQuestioning_Award[3306597][33]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306597][33]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306597][33]["RewardItem"][1]["Id"] = 4060001
	tRuneVersionQuestioning_Award[3306597][33]["RewardItem"][1]["Attr"] = "0 5 3"
	tRuneVersionQuestioning_Award[3306597][33]["LogId"] = 12000939
	
	tRuneVersionQuestioning_Award[3306597][34] = {}
	tRuneVersionQuestioning_Award[3306597][34]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306597][34]["ItemChance"] = 5000000
	tRuneVersionQuestioning_Award[3306597][34]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306597][34]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306597][34]["RewardItem"][1]["Id"] = 3306369
	tRuneVersionQuestioning_Award[3306597][34]["RewardItem"][1]["Attr"] = "0 1 3"
	tRuneVersionQuestioning_Award[3306597][34]["LogId"] = 12000939
	
	tRuneVersionQuestioning_Award[3306597][35] = {}
	tRuneVersionQuestioning_Award[3306597][35]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306597][35]["ItemChance"] = 500000
	tRuneVersionQuestioning_Award[3306597][35]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306597][35]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306597][35]["RewardItem"][1]["Id"] = 3306369
	tRuneVersionQuestioning_Award[3306597][35]["RewardItem"][1]["Attr"] = "0 3 3"
	tRuneVersionQuestioning_Award[3306597][35]["LogId"] = 12000939
	--随机红色符文
	tRuneVersionQuestioning_Award[3306597][36] = {}
	tRuneVersionQuestioning_Award[3306597][36]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306597][36]["ItemChance"] = 2700
	tRuneVersionQuestioning_Award[3306597][36]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306597][36]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306597][36]["RewardItem"][1]["Id"] = 4010001
	tRuneVersionQuestioning_Award[3306597][36]["RewardItem"][1]["Attr"] = "0 1 3"
	tRuneVersionQuestioning_Award[3306597][36]["LogId"] = 12000939
	tRuneVersionQuestioning_Award[3306597][37] = {}
	tRuneVersionQuestioning_Award[3306597][37]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306597][37]["ItemChance"] = 2700
	tRuneVersionQuestioning_Award[3306597][37]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306597][37]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306597][37]["RewardItem"][1]["Id"] = 4010101
	tRuneVersionQuestioning_Award[3306597][37]["RewardItem"][1]["Attr"] = "0 1 3"
	tRuneVersionQuestioning_Award[3306597][37]["LogId"] = 12000939
	tRuneVersionQuestioning_Award[3306597][38] = {}
	tRuneVersionQuestioning_Award[3306597][38]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306597][38]["ItemChance"] = 2700
	tRuneVersionQuestioning_Award[3306597][38]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306597][38]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306597][38]["RewardItem"][1]["Id"] = 4010201
	tRuneVersionQuestioning_Award[3306597][38]["RewardItem"][1]["Attr"] = "0 1 3"
	tRuneVersionQuestioning_Award[3306597][38]["LogId"] = 12000939
	tRuneVersionQuestioning_Award[3306597][39] = {}
	tRuneVersionQuestioning_Award[3306597][39]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306597][39]["ItemChance"] = 2700
	tRuneVersionQuestioning_Award[3306597][39]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306597][39]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306597][39]["RewardItem"][1]["Id"] = 4010301
	tRuneVersionQuestioning_Award[3306597][39]["RewardItem"][1]["Attr"] = "0 1 3"
	tRuneVersionQuestioning_Award[3306597][39]["LogId"] = 12000939
	tRuneVersionQuestioning_Award[3306597][40] = {}
	tRuneVersionQuestioning_Award[3306597][40]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306597][40]["ItemChance"] = 2700
	tRuneVersionQuestioning_Award[3306597][40]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306597][40]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306597][40]["RewardItem"][1]["Id"] = 4010401
	tRuneVersionQuestioning_Award[3306597][40]["RewardItem"][1]["Attr"] = "0 1 3"
	tRuneVersionQuestioning_Award[3306597][40]["LogId"] = 12000939
	tRuneVersionQuestioning_Award[3306597][41] = {}
	tRuneVersionQuestioning_Award[3306597][41]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306597][41]["ItemChance"] = 2700
	tRuneVersionQuestioning_Award[3306597][41]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306597][41]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306597][41]["RewardItem"][1]["Id"] = 4010501
	tRuneVersionQuestioning_Award[3306597][41]["RewardItem"][1]["Attr"] = "0 1 3"
	tRuneVersionQuestioning_Award[3306597][41]["LogId"] = 12000939
	tRuneVersionQuestioning_Award[3306597][42] = {}
	tRuneVersionQuestioning_Award[3306597][42]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306597][42]["ItemChance"] = 2700
	tRuneVersionQuestioning_Award[3306597][42]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306597][42]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306597][42]["RewardItem"][1]["Id"] = 4010601
	tRuneVersionQuestioning_Award[3306597][42]["RewardItem"][1]["Attr"] = "0 1 3"
	tRuneVersionQuestioning_Award[3306597][42]["LogId"] = 12000939
	tRuneVersionQuestioning_Award[3306597][43] = {}
	tRuneVersionQuestioning_Award[3306597][43]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306597][43]["ItemChance"] = 2700
	tRuneVersionQuestioning_Award[3306597][43]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306597][43]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306597][43]["RewardItem"][1]["Id"] = 4010701
	tRuneVersionQuestioning_Award[3306597][43]["RewardItem"][1]["Attr"] = "0 1 3"
	tRuneVersionQuestioning_Award[3306597][43]["LogId"] = 12000939
	tRuneVersionQuestioning_Award[3306597][44] = {}
	tRuneVersionQuestioning_Award[3306597][44]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306597][44]["ItemChance"] = 2700
	tRuneVersionQuestioning_Award[3306597][44]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306597][44]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306597][44]["RewardItem"][1]["Id"] = 4010801
	tRuneVersionQuestioning_Award[3306597][44]["RewardItem"][1]["Attr"] = "0 1 3"
	tRuneVersionQuestioning_Award[3306597][44]["LogId"] = 12000939
	tRuneVersionQuestioning_Award[3306597][45] = {}
	tRuneVersionQuestioning_Award[3306597][45]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306597][45]["ItemChance"] = 2700
	tRuneVersionQuestioning_Award[3306597][45]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306597][45]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306597][45]["RewardItem"][1]["Id"] = 4010901
	tRuneVersionQuestioning_Award[3306597][45]["RewardItem"][1]["Attr"] = "0 1 3"
	tRuneVersionQuestioning_Award[3306597][45]["LogId"] = 12000939
	tRuneVersionQuestioning_Award[3306597][47] = {}
	tRuneVersionQuestioning_Award[3306597][47]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306597][47]["ItemChance"] = 3000
	tRuneVersionQuestioning_Award[3306597][47]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306597][47]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306597][47]["RewardItem"][1]["Id"] = 4011501
	tRuneVersionQuestioning_Award[3306597][47]["RewardItem"][1]["Attr"] = "0 1 3"
	tRuneVersionQuestioning_Award[3306597][47]["LogId"] = 12000939
	for i = 1,45 do
		tRuneVersionQuestioning_Award[3306597][i]["RewardEffect"] = {}
		tRuneVersionQuestioning_Award[3306597][i]["RewardEffect"]["SzObj"] = "self"
		tRuneVersionQuestioning_Award[3306597][i]["RewardEffect"]["Effect"] = "angelwing"
	end
	
	
-------------------------三种碎片
	--红色碎片
	-- tRuneVersionQuestioning_Award[3306598] = {}
	-- tRuneVersionQuestioning_Award[3306598]["DeleteItem"] = {}
	-- tRuneVersionQuestioning_Award[3306598]["DeleteItem"][1] = {}
	-- tRuneVersionQuestioning_Award[3306598]["DeleteItem"][1]["Id"] = 3306598
	-- tRuneVersionQuestioning_Award[3306598]["ItemChanceSum"] = 10000
	-- tRuneVersionQuestioning_Award[3306598][1] = {}
	-- tRuneVersionQuestioning_Award[3306598][1]["RandomItemChanceType"] = 2
	-- tRuneVersionQuestioning_Award[3306598][1]["ItemChance"] = 1000
	-- tRuneVersionQuestioning_Award[3306598][1]["RewardItem"] = {}
	-- tRuneVersionQuestioning_Award[3306598][1]["RewardItem"][1] = {}
	-- tRuneVersionQuestioning_Award[3306598][1]["RewardItem"][1]["Id"] = 4010001
	-- tRuneVersionQuestioning_Award[3306598][1]["RewardItem"][1]["Attr"] = "0 1 3"
	-- tRuneVersionQuestioning_Award[3306598][1]["LogId"] = 12000939
	-- tRuneVersionQuestioning_Award[3306598][2] = {}
	-- tRuneVersionQuestioning_Award[3306598][2]["RandomItemChanceType"] = 2
	-- tRuneVersionQuestioning_Award[3306598][2]["ItemChance"] = 1000
	-- tRuneVersionQuestioning_Award[3306598][2]["RewardItem"] = {}
	-- tRuneVersionQuestioning_Award[3306598][2]["RewardItem"][1] = {}
	-- tRuneVersionQuestioning_Award[3306598][2]["RewardItem"][1]["Id"] = 4010101
	-- tRuneVersionQuestioning_Award[3306598][2]["RewardItem"][1]["Attr"] = "0 1 3"
	-- tRuneVersionQuestioning_Award[3306598][2]["LogId"] = 12000939
	-- tRuneVersionQuestioning_Award[3306598][3] = {}
	-- tRuneVersionQuestioning_Award[3306598][3]["RandomItemChanceType"] = 2
	-- tRuneVersionQuestioning_Award[3306598][3]["ItemChance"] = 1000
	-- tRuneVersionQuestioning_Award[3306598][3]["RewardItem"] = {}
	-- tRuneVersionQuestioning_Award[3306598][3]["RewardItem"][1] = {}
	-- tRuneVersionQuestioning_Award[3306598][3]["RewardItem"][1]["Id"] = 4010201
	-- tRuneVersionQuestioning_Award[3306598][3]["RewardItem"][1]["Attr"] = "0 1 3"
	-- tRuneVersionQuestioning_Award[3306598][3]["LogId"] = 12000939
	-- tRuneVersionQuestioning_Award[3306598][4] = {}
	-- tRuneVersionQuestioning_Award[3306598][4]["RandomItemChanceType"] = 2
	-- tRuneVersionQuestioning_Award[3306598][4]["ItemChance"] = 1000
	-- tRuneVersionQuestioning_Award[3306598][4]["RewardItem"] = {}
	-- tRuneVersionQuestioning_Award[3306598][4]["RewardItem"][1] = {}
	-- tRuneVersionQuestioning_Award[3306598][4]["RewardItem"][1]["Id"] = 4010301
	-- tRuneVersionQuestioning_Award[3306598][4]["RewardItem"][1]["Attr"] = "0 1 3"
	-- tRuneVersionQuestioning_Award[3306598][4]["LogId"] = 12000939
	-- tRuneVersionQuestioning_Award[3306598][5] = {}
	-- tRuneVersionQuestioning_Award[3306598][5]["RandomItemChanceType"] = 2
	-- tRuneVersionQuestioning_Award[3306598][5]["ItemChance"] = 1000
	-- tRuneVersionQuestioning_Award[3306598][5]["RewardItem"] = {}
	-- tRuneVersionQuestioning_Award[3306598][5]["RewardItem"][1] = {}
	-- tRuneVersionQuestioning_Award[3306598][5]["RewardItem"][1]["Id"] = 4010401
	-- tRuneVersionQuestioning_Award[3306598][5]["RewardItem"][1]["Attr"] = "0 1 3"
	-- tRuneVersionQuestioning_Award[3306598][5]["LogId"] = 12000939
	-- tRuneVersionQuestioning_Award[3306598][6] = {}
	-- tRuneVersionQuestioning_Award[3306598][6]["RandomItemChanceType"] = 2
	-- tRuneVersionQuestioning_Award[3306598][6]["ItemChance"] = 1000
	-- tRuneVersionQuestioning_Award[3306598][6]["RewardItem"] = {}
	-- tRuneVersionQuestioning_Award[3306598][6]["RewardItem"][1] = {}
	-- tRuneVersionQuestioning_Award[3306598][6]["RewardItem"][1]["Id"] = 4010501
	-- tRuneVersionQuestioning_Award[3306598][6]["RewardItem"][1]["Attr"] = "0 1 3"
	-- tRuneVersionQuestioning_Award[3306598][6]["LogId"] = 12000939
	-- tRuneVersionQuestioning_Award[3306598][7] = {}
	-- tRuneVersionQuestioning_Award[3306598][7]["RandomItemChanceType"] = 2
	-- tRuneVersionQuestioning_Award[3306598][7]["ItemChance"] = 1000
	-- tRuneVersionQuestioning_Award[3306598][7]["RewardItem"] = {}
	-- tRuneVersionQuestioning_Award[3306598][7]["RewardItem"][1] = {}
	-- tRuneVersionQuestioning_Award[3306598][7]["RewardItem"][1]["Id"] = 4010601
	-- tRuneVersionQuestioning_Award[3306598][7]["RewardItem"][1]["Attr"] = "0 1 3"
	-- tRuneVersionQuestioning_Award[3306598][7]["LogId"] = 12000939
	-- tRuneVersionQuestioning_Award[3306598][8] = {}
	-- tRuneVersionQuestioning_Award[3306598][8]["RandomItemChanceType"] = 2
	-- tRuneVersionQuestioning_Award[3306598][8]["ItemChance"] = 1000
	-- tRuneVersionQuestioning_Award[3306598][8]["RewardItem"] = {}
	-- tRuneVersionQuestioning_Award[3306598][8]["RewardItem"][1] = {}
	-- tRuneVersionQuestioning_Award[3306598][8]["RewardItem"][1]["Id"] = 4010701
	-- tRuneVersionQuestioning_Award[3306598][8]["RewardItem"][1]["Attr"] = "0 1 3"
	-- tRuneVersionQuestioning_Award[3306598][8]["LogId"] = 12000939
	-- tRuneVersionQuestioning_Award[3306598][9] = {}
	-- tRuneVersionQuestioning_Award[3306598][9]["RandomItemChanceType"] = 2
	-- tRuneVersionQuestioning_Award[3306598][9]["ItemChance"] = 1000
	-- tRuneVersionQuestioning_Award[3306598][9]["RewardItem"] = {}
	-- tRuneVersionQuestioning_Award[3306598][9]["RewardItem"][1] = {}
	-- tRuneVersionQuestioning_Award[3306598][9]["RewardItem"][1]["Id"] = 4010801
	-- tRuneVersionQuestioning_Award[3306598][9]["RewardItem"][1]["Attr"] = "0 1 3"
	-- tRuneVersionQuestioning_Award[3306598][9]["LogId"] = 12000939
	-- tRuneVersionQuestioning_Award[3306598][10] = {}
	-- tRuneVersionQuestioning_Award[3306598][10]["RandomItemChanceType"] = 2
	-- tRuneVersionQuestioning_Award[3306598][10]["ItemChance"] = 1000
	-- tRuneVersionQuestioning_Award[3306598][10]["RewardItem"] = {}
	-- tRuneVersionQuestioning_Award[3306598][10]["RewardItem"][1] = {}
	-- tRuneVersionQuestioning_Award[3306598][10]["RewardItem"][1]["Id"] = 4010901
	-- tRuneVersionQuestioning_Award[3306598][10]["RewardItem"][1]["Attr"] = "0 1 3"
	-- tRuneVersionQuestioning_Award[3306598][10]["LogId"] = 12000939
	
	--蓝色碎片
	-- tRuneVersionQuestioning_Award[3306599] = {}
	-- tRuneVersionQuestioning_Award[3306599]["DeleteItem"] = {}
	-- tRuneVersionQuestioning_Award[3306599]["DeleteItem"][1] = {}
	-- tRuneVersionQuestioning_Award[3306599]["DeleteItem"][1]["Id"] = 3306599
	-- tRuneVersionQuestioning_Award[3306599]["ItemChanceSum"] = 10000
	-- tRuneVersionQuestioning_Award[3306599][1] = {}
	-- tRuneVersionQuestioning_Award[3306599][1]["RandomItemChanceType"] = 2
	-- tRuneVersionQuestioning_Award[3306599][1]["ItemChance"] = 1000
	-- tRuneVersionQuestioning_Award[3306599][1]["RewardItem"] = {}
	-- tRuneVersionQuestioning_Award[3306599][1]["RewardItem"][1] = {}
	-- tRuneVersionQuestioning_Award[3306599][1]["RewardItem"][1]["Id"] = 4020101
	-- tRuneVersionQuestioning_Award[3306599][1]["RewardItem"][1]["Attr"] = "0 1 3"
	-- tRuneVersionQuestioning_Award[3306599][1]["LogId"] = 12000939
	-- tRuneVersionQuestioning_Award[3306599][2] = {}
	-- tRuneVersionQuestioning_Award[3306599][2]["RandomItemChanceType"] = 2
	-- tRuneVersionQuestioning_Award[3306599][2]["ItemChance"] = 1000
	-- tRuneVersionQuestioning_Award[3306599][2]["RewardItem"] = {}
	-- tRuneVersionQuestioning_Award[3306599][2]["RewardItem"][1] = {}
	-- tRuneVersionQuestioning_Award[3306599][2]["RewardItem"][1]["Id"] = 4020201
	-- tRuneVersionQuestioning_Award[3306599][2]["RewardItem"][1]["Attr"] = "0 1 3"
	-- tRuneVersionQuestioning_Award[3306599][2]["LogId"] = 12000939
	-- tRuneVersionQuestioning_Award[3306599][3] = {}
	-- tRuneVersionQuestioning_Award[3306599][3]["RandomItemChanceType"] = 2
	-- tRuneVersionQuestioning_Award[3306599][3]["ItemChance"] = 1000
	-- tRuneVersionQuestioning_Award[3306599][3]["RewardItem"] = {}
	-- tRuneVersionQuestioning_Award[3306599][3]["RewardItem"][1] = {}
	-- tRuneVersionQuestioning_Award[3306599][3]["RewardItem"][1]["Id"] = 4020301
	-- tRuneVersionQuestioning_Award[3306599][3]["RewardItem"][1]["Attr"] = "0 1 3"
	-- tRuneVersionQuestioning_Award[3306599][3]["LogId"] = 12000939
	-- tRuneVersionQuestioning_Award[3306599][4] = {}
	-- tRuneVersionQuestioning_Award[3306599][4]["RandomItemChanceType"] = 2
	-- tRuneVersionQuestioning_Award[3306599][4]["ItemChance"] = 1000
	-- tRuneVersionQuestioning_Award[3306599][4]["RewardItem"] = {}
	-- tRuneVersionQuestioning_Award[3306599][4]["RewardItem"][1] = {}
	-- tRuneVersionQuestioning_Award[3306599][4]["RewardItem"][1]["Id"] = 4020401
	-- tRuneVersionQuestioning_Award[3306599][4]["RewardItem"][1]["Attr"] = "0 1 3"
	-- tRuneVersionQuestioning_Award[3306599][4]["LogId"] = 12000939
	-- tRuneVersionQuestioning_Award[3306599][5] = {}
	-- tRuneVersionQuestioning_Award[3306599][5]["RandomItemChanceType"] = 2
	-- tRuneVersionQuestioning_Award[3306599][5]["ItemChance"] = 1000
	-- tRuneVersionQuestioning_Award[3306599][5]["RewardItem"] = {}
	-- tRuneVersionQuestioning_Award[3306599][5]["RewardItem"][1] = {}
	-- tRuneVersionQuestioning_Award[3306599][5]["RewardItem"][1]["Id"] = 4020501
	-- tRuneVersionQuestioning_Award[3306599][5]["RewardItem"][1]["Attr"] = "0 1 3"
	-- tRuneVersionQuestioning_Award[3306599][5]["LogId"] = 12000939
	-- tRuneVersionQuestioning_Award[3306599][6] = {}
	-- tRuneVersionQuestioning_Award[3306599][6]["RandomItemChanceType"] = 2
	-- tRuneVersionQuestioning_Award[3306599][6]["ItemChance"] = 1000
	-- tRuneVersionQuestioning_Award[3306599][6]["RewardItem"] = {}
	-- tRuneVersionQuestioning_Award[3306599][6]["RewardItem"][1] = {}
	-- tRuneVersionQuestioning_Award[3306599][6]["RewardItem"][1]["Id"] = 4020601
	-- tRuneVersionQuestioning_Award[3306599][6]["RewardItem"][1]["Attr"] = "0 1 3"
	-- tRuneVersionQuestioning_Award[3306599][6]["LogId"] = 12000939
	-- tRuneVersionQuestioning_Award[3306599][7] = {}
	-- tRuneVersionQuestioning_Award[3306599][7]["RandomItemChanceType"] = 2
	-- tRuneVersionQuestioning_Award[3306599][7]["ItemChance"] = 1000
	-- tRuneVersionQuestioning_Award[3306599][7]["RewardItem"] = {}
	-- tRuneVersionQuestioning_Award[3306599][7]["RewardItem"][1] = {}
	-- tRuneVersionQuestioning_Award[3306599][7]["RewardItem"][1]["Id"] = 4020701
	-- tRuneVersionQuestioning_Award[3306599][7]["RewardItem"][1]["Attr"] = "0 1 3"
	-- tRuneVersionQuestioning_Award[3306599][7]["LogId"] = 12000939
	-- tRuneVersionQuestioning_Award[3306599][8] = {}
	-- tRuneVersionQuestioning_Award[3306599][8]["RandomItemChanceType"] = 2
	-- tRuneVersionQuestioning_Award[3306599][8]["ItemChance"] = 1000
	-- tRuneVersionQuestioning_Award[3306599][8]["RewardItem"] = {}
	-- tRuneVersionQuestioning_Award[3306599][8]["RewardItem"][1] = {}
	-- tRuneVersionQuestioning_Award[3306599][8]["RewardItem"][1]["Id"] = 4020801
	-- tRuneVersionQuestioning_Award[3306599][8]["RewardItem"][1]["Attr"] = "0 1 3"
	-- tRuneVersionQuestioning_Award[3306599][8]["LogId"] = 12000939
	-- tRuneVersionQuestioning_Award[3306599][9] = {}
	-- tRuneVersionQuestioning_Award[3306599][9]["RandomItemChanceType"] = 2
	-- tRuneVersionQuestioning_Award[3306599][9]["ItemChance"] = 1000
	-- tRuneVersionQuestioning_Award[3306599][9]["RewardItem"] = {}
	-- tRuneVersionQuestioning_Award[3306599][9]["RewardItem"][1] = {}
	-- tRuneVersionQuestioning_Award[3306599][9]["RewardItem"][1]["Id"] = 4020901
	-- tRuneVersionQuestioning_Award[3306599][9]["RewardItem"][1]["Attr"] = "0 1 3"
	-- tRuneVersionQuestioning_Award[3306599][9]["LogId"] = 12000939
	-- tRuneVersionQuestioning_Award[3306599][10] = {}
	-- tRuneVersionQuestioning_Award[3306599][10]["RandomItemChanceType"] = 2
	-- tRuneVersionQuestioning_Award[3306599][10]["ItemChance"] = 1000
	-- tRuneVersionQuestioning_Award[3306599][10]["RewardItem"] = {}
	-- tRuneVersionQuestioning_Award[3306599][10]["RewardItem"][1] = {}
	-- tRuneVersionQuestioning_Award[3306599][10]["RewardItem"][1]["Id"] = 4021001
	-- tRuneVersionQuestioning_Award[3306599][10]["RewardItem"][1]["Attr"] = "0 1 3"
	-- tRuneVersionQuestioning_Award[3306599][10]["LogId"] = 12000939

	--黄色碎片
	-- tRuneVersionQuestioning_Award[3306600] = {}
	-- tRuneVersionQuestioning_Award[3306600]["DeleteItem"] = {}
	-- tRuneVersionQuestioning_Award[3306600]["DeleteItem"][1] = {}
	-- tRuneVersionQuestioning_Award[3306600]["DeleteItem"][1]["Id"] = 3306600
	-- tRuneVersionQuestioning_Award[3306600]["ItemChanceSum"] = 10000
	-- tRuneVersionQuestioning_Award[3306600][1] = {}
	-- tRuneVersionQuestioning_Award[3306600][1]["RandomItemChanceType"] = 2
	-- tRuneVersionQuestioning_Award[3306600][1]["ItemChance"] = 200
	-- tRuneVersionQuestioning_Award[3306600][1]["RewardItem"] = {}
	-- tRuneVersionQuestioning_Award[3306600][1]["RewardItem"][1] = {}
	-- tRuneVersionQuestioning_Award[3306600][1]["RewardItem"][1]["Id"] = 4031301
	-- tRuneVersionQuestioning_Award[3306600][1]["RewardItem"][1]["Attr"] = "0 1 3"
	-- tRuneVersionQuestioning_Award[3306600][1]["LogId"] = 12000939
	-- tRuneVersionQuestioning_Award[3306600][2] = {}
	-- tRuneVersionQuestioning_Award[3306600][2]["RandomItemChanceType"] = 2
	-- tRuneVersionQuestioning_Award[3306600][2]["ItemChance"] = 400
	-- tRuneVersionQuestioning_Award[3306600][2]["RewardItem"] = {}
	-- tRuneVersionQuestioning_Award[3306600][2]["RewardItem"][1] = {}
	-- tRuneVersionQuestioning_Award[3306600][2]["RewardItem"][1]["Id"] = 4030101
	-- tRuneVersionQuestioning_Award[3306600][2]["RewardItem"][1]["Attr"] = "0 1 3"
	-- tRuneVersionQuestioning_Award[3306600][2]["LogId"] = 12000939
	-- tRuneVersionQuestioning_Award[3306600][3] = {}
	-- tRuneVersionQuestioning_Award[3306600][3]["RandomItemChanceType"] = 2
	-- tRuneVersionQuestioning_Award[3306600][3]["ItemChance"] = 1000
	-- tRuneVersionQuestioning_Award[3306600][3]["RewardItem"] = {}
	-- tRuneVersionQuestioning_Award[3306600][3]["RewardItem"][1] = {}
	-- tRuneVersionQuestioning_Award[3306600][3]["RewardItem"][1]["Id"] = 4030201
	-- tRuneVersionQuestioning_Award[3306600][3]["RewardItem"][1]["Attr"] = "0 1 3"
	-- tRuneVersionQuestioning_Award[3306600][3]["LogId"] = 12000939
	-- tRuneVersionQuestioning_Award[3306600][4] = {}
	-- tRuneVersionQuestioning_Award[3306600][4]["RandomItemChanceType"] = 2
	-- tRuneVersionQuestioning_Award[3306600][4]["ItemChance"] = 1000
	-- tRuneVersionQuestioning_Award[3306600][4]["RewardItem"] = {}
	-- tRuneVersionQuestioning_Award[3306600][4]["RewardItem"][1] = {}
	-- tRuneVersionQuestioning_Award[3306600][4]["RewardItem"][1]["Id"] = 4030301
	-- tRuneVersionQuestioning_Award[3306600][4]["RewardItem"][1]["Attr"] = "0 1 3"
	-- tRuneVersionQuestioning_Award[3306600][4]["LogId"] = 12000939
	-- tRuneVersionQuestioning_Award[3306600][5] = {}
	-- tRuneVersionQuestioning_Award[3306600][5]["RandomItemChanceType"] = 2
	-- tRuneVersionQuestioning_Award[3306600][5]["ItemChance"] = 800
	-- tRuneVersionQuestioning_Award[3306600][5]["RewardItem"] = {}
	-- tRuneVersionQuestioning_Award[3306600][5]["RewardItem"][1] = {}
	-- tRuneVersionQuestioning_Award[3306600][5]["RewardItem"][1]["Id"] = 4030401
	-- tRuneVersionQuestioning_Award[3306600][5]["RewardItem"][1]["Attr"] = "0 1 3"
	-- tRuneVersionQuestioning_Award[3306600][5]["LogId"] = 12000939
	-- tRuneVersionQuestioning_Award[3306600][6] = {}
	-- tRuneVersionQuestioning_Award[3306600][6]["RandomItemChanceType"] = 2
	-- tRuneVersionQuestioning_Award[3306600][6]["ItemChance"] = 1000
	-- tRuneVersionQuestioning_Award[3306600][6]["RewardItem"] = {}
	-- tRuneVersionQuestioning_Award[3306600][6]["RewardItem"][1] = {}
	-- tRuneVersionQuestioning_Award[3306600][6]["RewardItem"][1]["Id"] = 4030501
	-- tRuneVersionQuestioning_Award[3306600][6]["RewardItem"][1]["Attr"] = "0 1 3"
	-- tRuneVersionQuestioning_Award[3306600][6]["LogId"] = 12000939
	-- tRuneVersionQuestioning_Award[3306600][7] = {}
	-- tRuneVersionQuestioning_Award[3306600][7]["RandomItemChanceType"] = 2
	-- tRuneVersionQuestioning_Award[3306600][7]["ItemChance"] = 800
	-- tRuneVersionQuestioning_Award[3306600][7]["RewardItem"] = {}
	-- tRuneVersionQuestioning_Award[3306600][7]["RewardItem"][1] = {}
	-- tRuneVersionQuestioning_Award[3306600][7]["RewardItem"][1]["Id"] = 4030601
	-- tRuneVersionQuestioning_Award[3306600][7]["RewardItem"][1]["Attr"] = "0 1 3"
	-- tRuneVersionQuestioning_Award[3306600][7]["LogId"] = 12000939
	-- tRuneVersionQuestioning_Award[3306600][8] = {}
	-- tRuneVersionQuestioning_Award[3306600][8]["RandomItemChanceType"] = 2
	-- tRuneVersionQuestioning_Award[3306600][8]["ItemChance"] = 800
	-- tRuneVersionQuestioning_Award[3306600][8]["RewardItem"] = {}
	-- tRuneVersionQuestioning_Award[3306600][8]["RewardItem"][1] = {}
	-- tRuneVersionQuestioning_Award[3306600][8]["RewardItem"][1]["Id"] = 4030701
	-- tRuneVersionQuestioning_Award[3306600][8]["RewardItem"][1]["Attr"] = "0 1 3"
	-- tRuneVersionQuestioning_Award[3306600][8]["LogId"] = 12000939
	-- tRuneVersionQuestioning_Award[3306600][9] = {}
	-- tRuneVersionQuestioning_Award[3306600][9]["RandomItemChanceType"] = 2
	-- tRuneVersionQuestioning_Award[3306600][9]["ItemChance"] = 800
	-- tRuneVersionQuestioning_Award[3306600][9]["RewardItem"] = {}
	-- tRuneVersionQuestioning_Award[3306600][9]["RewardItem"][1] = {}
	-- tRuneVersionQuestioning_Award[3306600][9]["RewardItem"][1]["Id"] = 4030801
	-- tRuneVersionQuestioning_Award[3306600][9]["RewardItem"][1]["Attr"] = "0 1 3"
	-- tRuneVersionQuestioning_Award[3306600][9]["LogId"] = 12000939
	-- tRuneVersionQuestioning_Award[3306600][10] = {}
	-- tRuneVersionQuestioning_Award[3306600][10]["RandomItemChanceType"] = 2
	-- tRuneVersionQuestioning_Award[3306600][10]["ItemChance"] = 1000
	-- tRuneVersionQuestioning_Award[3306600][10]["RewardItem"] = {}
	-- tRuneVersionQuestioning_Award[3306600][10]["RewardItem"][1] = {}
	-- tRuneVersionQuestioning_Award[3306600][10]["RewardItem"][1]["Id"] = 4030901
	-- tRuneVersionQuestioning_Award[3306600][10]["RewardItem"][1]["Attr"] = "0 1 3"
	-- tRuneVersionQuestioning_Award[3306600][10]["LogId"] = 12000939
	-- tRuneVersionQuestioning_Award[3306600][11] = {}
	-- tRuneVersionQuestioning_Award[3306600][11]["RandomItemChanceType"] = 2
	-- tRuneVersionQuestioning_Award[3306600][11]["ItemChance"] = 200
	-- tRuneVersionQuestioning_Award[3306600][11]["RewardItem"] = {}
	-- tRuneVersionQuestioning_Award[3306600][11]["RewardItem"][1] = {}
	-- tRuneVersionQuestioning_Award[3306600][11]["RewardItem"][1]["Id"] = 4031001
	-- tRuneVersionQuestioning_Award[3306600][11]["RewardItem"][1]["Attr"] = "0 1 3"
	-- tRuneVersionQuestioning_Award[3306600][11]["LogId"] = 12000939
	-- tRuneVersionQuestioning_Award[3306600][12] = {}
	-- tRuneVersionQuestioning_Award[3306600][12]["RandomItemChanceType"] = 2
	-- tRuneVersionQuestioning_Award[3306600][12]["ItemChance"] = 1000
	-- tRuneVersionQuestioning_Award[3306600][12]["RewardItem"] = {}
	-- tRuneVersionQuestioning_Award[3306600][12]["RewardItem"][1] = {}
	-- tRuneVersionQuestioning_Award[3306600][12]["RewardItem"][1]["Id"] = 4031101
	-- tRuneVersionQuestioning_Award[3306600][12]["RewardItem"][1]["Attr"] = "0 1 3"
	-- tRuneVersionQuestioning_Award[3306600][12]["LogId"] = 12000939
	-- tRuneVersionQuestioning_Award[3306600][13] = {}
	-- tRuneVersionQuestioning_Award[3306600][13]["RandomItemChanceType"] = 2
	-- tRuneVersionQuestioning_Award[3306600][13]["ItemChance"] = 1000
	-- tRuneVersionQuestioning_Award[3306600][13]["RewardItem"] = {}
	-- tRuneVersionQuestioning_Award[3306600][13]["RewardItem"][1] = {}
	-- tRuneVersionQuestioning_Award[3306600][13]["RewardItem"][1]["Id"] = 4031201
	-- tRuneVersionQuestioning_Award[3306600][13]["RewardItem"][1]["Attr"] = "0 1 3"
	-- tRuneVersionQuestioning_Award[3306600][13]["LogId"] = 12000939

-------------------------------冠军礼包
	tRuneVersionQuestioning_Award[3306639] = {}
	tRuneVersionQuestioning_Award[3306639]["DeleteItem"] = {}
	tRuneVersionQuestioning_Award[3306639]["DeleteItem"][1] = {}
	tRuneVersionQuestioning_Award[3306639]["DeleteItem"][1]["Id"] = 3306639
	tRuneVersionQuestioning_Award[3306639]["ItemChanceSum"] = 10000
	tRuneVersionQuestioning_Award[3306639][1] = {}
	tRuneVersionQuestioning_Award[3306639][1]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306639][1]["ItemChance"] = 200
	tRuneVersionQuestioning_Award[3306639][1]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306639][1]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306639][1]["RewardItem"][1]["Id"] = 4031301
	tRuneVersionQuestioning_Award[3306639][1]["RewardItem"][1]["Attr"] = "0 1"
	tRuneVersionQuestioning_Award[3306639][1]["LogId"] = 12000939
	tRuneVersionQuestioning_Award[3306639][2] = {}
	tRuneVersionQuestioning_Award[3306639][2]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306639][2]["ItemChance"] = 400
	tRuneVersionQuestioning_Award[3306639][2]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306639][2]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306639][2]["RewardItem"][1]["Id"] = 4030101
	tRuneVersionQuestioning_Award[3306639][2]["RewardItem"][1]["Attr"] = "0 1"
	tRuneVersionQuestioning_Award[3306639][2]["LogId"] = 12000939
	tRuneVersionQuestioning_Award[3306639][3] = {}
	tRuneVersionQuestioning_Award[3306639][3]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306639][3]["ItemChance"] = 1000
	tRuneVersionQuestioning_Award[3306639][3]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306639][3]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306639][3]["RewardItem"][1]["Id"] = 4030201
	tRuneVersionQuestioning_Award[3306639][3]["RewardItem"][1]["Attr"] = "0 1"
	tRuneVersionQuestioning_Award[3306639][3]["LogId"] = 12000939
	tRuneVersionQuestioning_Award[3306639][4] = {}
	tRuneVersionQuestioning_Award[3306639][4]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306639][4]["ItemChance"] = 1000
	tRuneVersionQuestioning_Award[3306639][4]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306639][4]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306639][4]["RewardItem"][1]["Id"] = 4030301
	tRuneVersionQuestioning_Award[3306639][4]["RewardItem"][1]["Attr"] = "0 1"
	tRuneVersionQuestioning_Award[3306639][4]["LogId"] = 12000939
	tRuneVersionQuestioning_Award[3306639][5] = {}
	tRuneVersionQuestioning_Award[3306639][5]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306639][5]["ItemChance"] = 800
	tRuneVersionQuestioning_Award[3306639][5]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306639][5]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306639][5]["RewardItem"][1]["Id"] = 4030401
	tRuneVersionQuestioning_Award[3306639][5]["RewardItem"][1]["Attr"] = "0 1"
	tRuneVersionQuestioning_Award[3306639][5]["LogId"] = 12000939
	tRuneVersionQuestioning_Award[3306639][6] = {}
	tRuneVersionQuestioning_Award[3306639][6]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306639][6]["ItemChance"] = 1000
	tRuneVersionQuestioning_Award[3306639][6]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306639][6]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306639][6]["RewardItem"][1]["Id"] = 4030501
	tRuneVersionQuestioning_Award[3306639][6]["RewardItem"][1]["Attr"] = "0 1"
	tRuneVersionQuestioning_Award[3306639][6]["LogId"] = 12000939
	tRuneVersionQuestioning_Award[3306639][7] = {}
	tRuneVersionQuestioning_Award[3306639][7]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306639][7]["ItemChance"] = 800
	tRuneVersionQuestioning_Award[3306639][7]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306639][7]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306639][7]["RewardItem"][1]["Id"] = 4030601
	tRuneVersionQuestioning_Award[3306639][7]["RewardItem"][1]["Attr"] = "0 1"
	tRuneVersionQuestioning_Award[3306639][7]["LogId"] = 12000939
	tRuneVersionQuestioning_Award[3306639][8] = {}
	tRuneVersionQuestioning_Award[3306639][8]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306639][8]["ItemChance"] = 800
	tRuneVersionQuestioning_Award[3306639][8]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306639][8]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306639][8]["RewardItem"][1]["Id"] = 4030701
	tRuneVersionQuestioning_Award[3306639][8]["RewardItem"][1]["Attr"] = "0 1"
	tRuneVersionQuestioning_Award[3306639][8]["LogId"] = 12000939
	tRuneVersionQuestioning_Award[3306639][9] = {}
	tRuneVersionQuestioning_Award[3306639][9]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306639][9]["ItemChance"] = 800
	tRuneVersionQuestioning_Award[3306639][9]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306639][9]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306639][9]["RewardItem"][1]["Id"] = 4030801
	tRuneVersionQuestioning_Award[3306639][9]["RewardItem"][1]["Attr"] = "0 1"
	tRuneVersionQuestioning_Award[3306639][9]["LogId"] = 12000939
	tRuneVersionQuestioning_Award[3306639][10] = {}
	tRuneVersionQuestioning_Award[3306639][10]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306639][10]["ItemChance"] = 1000
	tRuneVersionQuestioning_Award[3306639][10]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306639][10]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306639][10]["RewardItem"][1]["Id"] = 4030901
	tRuneVersionQuestioning_Award[3306639][10]["RewardItem"][1]["Attr"] = "0 1"
	tRuneVersionQuestioning_Award[3306639][10]["LogId"] = 12000939
	tRuneVersionQuestioning_Award[3306639][11] = {}
	tRuneVersionQuestioning_Award[3306639][11]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306639][11]["ItemChance"] = 200
	tRuneVersionQuestioning_Award[3306639][11]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306639][11]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306639][11]["RewardItem"][1]["Id"] = 4031001
	tRuneVersionQuestioning_Award[3306639][11]["RewardItem"][1]["Attr"] = "0 1"
	tRuneVersionQuestioning_Award[3306639][11]["LogId"] = 12000939
	tRuneVersionQuestioning_Award[3306639][12] = {}
	tRuneVersionQuestioning_Award[3306639][12]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306639][12]["ItemChance"] = 1000
	tRuneVersionQuestioning_Award[3306639][12]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306639][12]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306639][12]["RewardItem"][1]["Id"] = 4031101
	tRuneVersionQuestioning_Award[3306639][12]["RewardItem"][1]["Attr"] = "0 1"
	tRuneVersionQuestioning_Award[3306639][12]["LogId"] = 12000939
	tRuneVersionQuestioning_Award[3306639][13] = {}
	tRuneVersionQuestioning_Award[3306639][13]["RandomItemChanceType"] = 2
	tRuneVersionQuestioning_Award[3306639][13]["ItemChance"] = 1000
	tRuneVersionQuestioning_Award[3306639][13]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306639][13]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306639][13]["RewardItem"][1]["Id"] = 4031201
	tRuneVersionQuestioning_Award[3306639][13]["RewardItem"][1]["Attr"] = "0 1"
	tRuneVersionQuestioning_Award[3306639][13]["LogId"] = 12000939
	for i = 1,13 do
		tRuneVersionQuestioning_Award[3306639][i]["RewardEffect"] = {}
		tRuneVersionQuestioning_Award[3306639][i]["RewardEffect"]["SzObj"] = "self"
		tRuneVersionQuestioning_Award[3306639][i]["RewardEffect"]["Effect"] = "angelwing"
	end


-------------------------------2-9名礼包
	tRuneVersionQuestioning_Award[3306640] = {}
	tRuneVersionQuestioning_Award[3306640]["DeleteItem"] = {}
	tRuneVersionQuestioning_Award[3306640]["DeleteItem"][1] = {}
	tRuneVersionQuestioning_Award[3306640]["DeleteItem"][1]["Id"] = 3306640
	tRuneVersionQuestioning_Award[3306640]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306640]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306640]["RewardItem"][1]["Id"] = 3306370
	tRuneVersionQuestioning_Award[3306640]["RewardItem"][1]["Attr"] = "0 10 3"
	tRuneVersionQuestioning_Award[3306640]["LogId"] = 12000939
	tRuneVersionQuestioning_Award[3306640]["RewardEffect"] = {}
	tRuneVersionQuestioning_Award[3306640]["RewardEffect"]["SzObj"] = "self"
	tRuneVersionQuestioning_Award[3306640]["RewardEffect"]["Effect"] = "angelwing"
	
	tRuneVersionQuestioning_Award[3306641] = {}
	tRuneVersionQuestioning_Award[3306641]["DeleteItem"] = {}
	tRuneVersionQuestioning_Award[3306641]["DeleteItem"][1] = {}
	tRuneVersionQuestioning_Award[3306641]["DeleteItem"][1]["Id"] = 3306641
	tRuneVersionQuestioning_Award[3306641]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306641]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306641]["RewardItem"][1]["Id"] = 3306370
	tRuneVersionQuestioning_Award[3306641]["RewardItem"][1]["Attr"] = "0 9 3"
	tRuneVersionQuestioning_Award[3306641]["LogId"] = 12000939
	tRuneVersionQuestioning_Award[3306641]["RewardEffect"] = {}
	tRuneVersionQuestioning_Award[3306641]["RewardEffect"]["SzObj"] = "self"
	tRuneVersionQuestioning_Award[3306641]["RewardEffect"]["Effect"] = "angelwing"
	
	tRuneVersionQuestioning_Award[3306642] = {}
	tRuneVersionQuestioning_Award[3306642]["DeleteItem"] = {}
	tRuneVersionQuestioning_Award[3306642]["DeleteItem"][1] = {}
	tRuneVersionQuestioning_Award[3306642]["DeleteItem"][1]["Id"] = 3306642
	tRuneVersionQuestioning_Award[3306642]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306642]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306642]["RewardItem"][1]["Id"] = 3306370
	tRuneVersionQuestioning_Award[3306642]["RewardItem"][1]["Attr"] = "0 8 3"
	tRuneVersionQuestioning_Award[3306642]["LogId"] = 12000939
	tRuneVersionQuestioning_Award[3306642]["RewardEffect"] = {}
	tRuneVersionQuestioning_Award[3306642]["RewardEffect"]["SzObj"] = "self"
	tRuneVersionQuestioning_Award[3306642]["RewardEffect"]["Effect"] = "angelwing"
	
	tRuneVersionQuestioning_Award[3306643] = {}
	tRuneVersionQuestioning_Award[3306643]["DeleteItem"] = {}
	tRuneVersionQuestioning_Award[3306643]["DeleteItem"][1] = {}
	tRuneVersionQuestioning_Award[3306643]["DeleteItem"][1]["Id"] = 3306643
	tRuneVersionQuestioning_Award[3306643]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306643]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306643]["RewardItem"][1]["Id"] = 3306370
	tRuneVersionQuestioning_Award[3306643]["RewardItem"][1]["Attr"] = "0 7 3"
	tRuneVersionQuestioning_Award[3306643]["LogId"] = 12000939
	tRuneVersionQuestioning_Award[3306643]["RewardEffect"] = {}
	tRuneVersionQuestioning_Award[3306643]["RewardEffect"]["SzObj"] = "self"
	tRuneVersionQuestioning_Award[3306643]["RewardEffect"]["Effect"] = "angelwing"
	
	tRuneVersionQuestioning_Award[3306644] = {}
	tRuneVersionQuestioning_Award[3306644]["DeleteItem"] = {}
	tRuneVersionQuestioning_Award[3306644]["DeleteItem"][1] = {}
	tRuneVersionQuestioning_Award[3306644]["DeleteItem"][1]["Id"] = 3306644
	tRuneVersionQuestioning_Award[3306644]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306644]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306644]["RewardItem"][1]["Id"] = 3306370
	tRuneVersionQuestioning_Award[3306644]["RewardItem"][1]["Attr"] = "0 6 3"
	tRuneVersionQuestioning_Award[3306644]["LogId"] = 12000939
	tRuneVersionQuestioning_Award[3306644]["RewardEffect"] = {}
	tRuneVersionQuestioning_Award[3306644]["RewardEffect"]["SzObj"] = "self"
	tRuneVersionQuestioning_Award[3306644]["RewardEffect"]["Effect"] = "angelwing"
	
	tRuneVersionQuestioning_Award[3306645] = {}
	tRuneVersionQuestioning_Award[3306645]["DeleteItem"] = {}
	tRuneVersionQuestioning_Award[3306645]["DeleteItem"][1] = {}
	tRuneVersionQuestioning_Award[3306645]["DeleteItem"][1]["Id"] = 3306645
	tRuneVersionQuestioning_Award[3306645]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306645]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306645]["RewardItem"][1]["Id"] = 3306370
	tRuneVersionQuestioning_Award[3306645]["RewardItem"][1]["Attr"] = "0 5 3"
	tRuneVersionQuestioning_Award[3306645]["LogId"] = 12000939
	tRuneVersionQuestioning_Award[3306645]["RewardEffect"] = {}
	tRuneVersionQuestioning_Award[3306645]["RewardEffect"]["SzObj"] = "self"
	tRuneVersionQuestioning_Award[3306645]["RewardEffect"]["Effect"] = "angelwing"
	
	tRuneVersionQuestioning_Award[3306646] = {}
	tRuneVersionQuestioning_Award[3306646]["DeleteItem"] = {}
	tRuneVersionQuestioning_Award[3306646]["DeleteItem"][1] = {}
	tRuneVersionQuestioning_Award[3306646]["DeleteItem"][1]["Id"] = 3306646
	tRuneVersionQuestioning_Award[3306646]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306646]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306646]["RewardItem"][1]["Id"] = 3306370
	tRuneVersionQuestioning_Award[3306646]["RewardItem"][1]["Attr"] = "0 4 3"
	tRuneVersionQuestioning_Award[3306646]["LogId"] = 12000939
	tRuneVersionQuestioning_Award[3306646]["RewardEffect"] = {}
	tRuneVersionQuestioning_Award[3306646]["RewardEffect"]["SzObj"] = "self"
	tRuneVersionQuestioning_Award[3306646]["RewardEffect"]["Effect"] = "angelwing"
	
	tRuneVersionQuestioning_Award[3306647] = {}
	tRuneVersionQuestioning_Award[3306647]["DeleteItem"] = {}
	tRuneVersionQuestioning_Award[3306647]["DeleteItem"][1] = {}
	tRuneVersionQuestioning_Award[3306647]["DeleteItem"][1]["Id"] = 3306647
	tRuneVersionQuestioning_Award[3306647]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306647]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306647]["RewardItem"][1]["Id"] = 3306370
	tRuneVersionQuestioning_Award[3306647]["RewardItem"][1]["Attr"] = "0 3 3"
	tRuneVersionQuestioning_Award[3306647]["LogId"] = 12000939
	tRuneVersionQuestioning_Award[3306647]["RewardEffect"] = {}
	tRuneVersionQuestioning_Award[3306647]["RewardEffect"]["SzObj"] = "self"
	tRuneVersionQuestioning_Award[3306647]["RewardEffect"]["Effect"] = "angelwing"
	
	tRuneVersionQuestioning_Award[3306648] = {}
	tRuneVersionQuestioning_Award[3306648]["DeleteItem"] = {}
	tRuneVersionQuestioning_Award[3306648]["DeleteItem"][1] = {}
	tRuneVersionQuestioning_Award[3306648]["DeleteItem"][1]["Id"] = 3306648
	tRuneVersionQuestioning_Award[3306648]["RewardItem"] = {}
	tRuneVersionQuestioning_Award[3306648]["RewardItem"][1] = {}
	tRuneVersionQuestioning_Award[3306648]["RewardItem"][1]["Id"] = 3306370
	tRuneVersionQuestioning_Award[3306648]["RewardItem"][1]["Attr"] = "0 2 3"
	tRuneVersionQuestioning_Award[3306648]["LogId"] = 12000939
	tRuneVersionQuestioning_Award[3306648]["RewardEffect"] = {}
	tRuneVersionQuestioning_Award[3306648]["RewardEffect"]["SzObj"] = "self"
	tRuneVersionQuestioning_Award[3306648]["RewardEffect"]["Effect"] = "angelwing"


--------------------------------------------------------掩码
local tRuneVersionQuestioning_Stc = {}
	tRuneVersionQuestioning_Stc["EventType"] = {}
	tRuneVersionQuestioning_Stc["DataType"] = {}

	--是否每天首次
	tRuneVersionQuestioning_Stc["EventType"]["FirstTime"] = 169
	tRuneVersionQuestioning_Stc["DataType"]["FirstTime"] = 62
	
	--答对数量
	tRuneVersionQuestioning_Stc["EventType"]["TrueNum"] = 169
	tRuneVersionQuestioning_Stc["DataType"]["TrueNum"] = 63
	
	--花费时间
	tRuneVersionQuestioning_Stc["EventType"]["AnswerSpend"] = 169
	tRuneVersionQuestioning_Stc["DataType"]["AnswerSpend"] = 64
	
	--已答题数
	tRuneVersionQuestioning_Stc["EventType"]["AnswerNum"] = 169
	tRuneVersionQuestioning_Stc["DataType"]["AnswerNum"] = 66
	
	--答题是否全对过
	tRuneVersionQuestioning_Stc["EventType"]["AllRight"] = 172
	tRuneVersionQuestioning_Stc["DataType"]["AllRight"] = 08


------------------------------------------------------排行榜邮件
local tRuneVersionQuestioning_Mail = {}
-- 邮件ActionId
	tRuneVersionQuestioning_Mail["ActionId"] = {}
	tRuneVersionQuestioning_Mail["ActionId"][1] = 567336
	tRuneVersionQuestioning_Mail["ActionId"][2] = 567337
	tRuneVersionQuestioning_Mail["ActionId"][3] = 567338
	tRuneVersionQuestioning_Mail["ActionId"][4] = 567339
	tRuneVersionQuestioning_Mail["ActionId"][5] = 567340
	tRuneVersionQuestioning_Mail["ActionId"][6] = 567341
	tRuneVersionQuestioning_Mail["ActionId"][7] = 567342
	tRuneVersionQuestioning_Mail["ActionId"][8] = 567343
	tRuneVersionQuestioning_Mail["ActionId"][9] = 567344
	tRuneVersionQuestioning_Mail["ActionId"][10] = 567345
	
	tRuneVersionQuestioning_Mail["ActionId"][11] = 567335

--奖励物品Id
	tRuneVersionQuestioning_Mail["AwardId"] = {}
	tRuneVersionQuestioning_Mail["AwardId"][1] = 3306639
	tRuneVersionQuestioning_Mail["AwardId"][2] = 3306640
	tRuneVersionQuestioning_Mail["AwardId"][3] = 3306641
	tRuneVersionQuestioning_Mail["AwardId"][4] = 3306642
	tRuneVersionQuestioning_Mail["AwardId"][5] = 3306643
	tRuneVersionQuestioning_Mail["AwardId"][6] = 3306644
	tRuneVersionQuestioning_Mail["AwardId"][7] = 3306645
	tRuneVersionQuestioning_Mail["AwardId"][8] = 3306646
	tRuneVersionQuestioning_Mail["AwardId"][9] = 3306647
	tRuneVersionQuestioning_Mail["AwardId"][10] = 3306648
	
--存在时间
	tRuneVersionQuestioning_Mail["ExistDay"] = 30


----------------------------------逻辑部分---------------------------------------------
--隔天重置掩码
function RuneVersionQuestioning_StcReset(nEvent,nType,nUserId)
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
	end
end


--开始答题
function RuneVersionQuestioning_Main(nNpcId)
	local nUserId = Get_UserId()
	local nEvent = tRuneVersionQuestioning_Stc["EventType"]["FirstTime"]
	local nType = tRuneVersionQuestioning_Stc["DataType"]["FirstTime"]
	local nEvent2 = tRuneVersionQuestioning_Stc["EventType"]["TrueNum"]
	local nType2 = tRuneVersionQuestioning_Stc["DataType"]["TrueNum"]
	local nEvent4 = tRuneVersionQuestioning_Stc["EventType"]["AnswerNum"]
	local nType4 = tRuneVersionQuestioning_Stc["DataType"]["AnswerNum"]
	
	-- 判断使用间隔时间
	if tRuneVersionQuestioning_IntervalTime[nUserId] ~= nil and os.time() - tRuneVersionQuestioning_IntervalTime[nUserId] < tRuneVersionQuestioning_Cont["IntervalTime"] then
		Sys_DialogText(tRuneVersionQuestioning_Text[21233]["IntervalTime"])
		Sys_DialogOption(tRuneVersionQuestioning_Text[21233]["OK"])
		Sys_DialogFace(21233)
		Sys_DialogEnd()
		return
	end
	
	--首次答题隔天重置
	RuneVersionQuestioning_StcReset(nEvent,nType,nUserId)
	--检查是否首次参与
	if not Task_ChkStatistic(nEvent,nType,nUserId) or Get_UserStatisticValue(nEvent,nType,nUserId) == 0 then
		local nItemId = tRuneVersionQuestioning_Award["FirstTime"]["RewardItem"][1]["Id"]
		local nSpace = #tRuneVersionQuestioning_Award["FirstTime"]["RewardItem"]
		
		if not RewardTemplate_CheckSpace(tRuneVersionQuestioning_Award["FirstTime"]) then
			Sys_MsgBox(string.format(tRuneVersionQuestioning_Text["FirstTimeNoSpace"],nSpace))
			return
		end

		Task_SetStatistic(nEvent,nType,1,1,nUserId)  --置掩码
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		
		if RewardTemplate_UseItem(tRuneVersionQuestioning_Award["FirstTime"]) then
			User_TalkChannel2005(string.format(tRuneVersionQuestioning_Text[21233]["FirstTimeAward"],Get_ItemtypeName(nItemId)))
		end
	end
	
	Task_SetStatistic(nEvent2,nType2,0,1,nUserId)
	Task_SetStatistic(nEvent4,nType4,0,1,nUserId)
	
	tRuneVersionQuestioning_IntervalTime[nUserId] = os.time()
	
	--出题
	Sys_BeginCompetion(nUserId)  ---智力竞赛界面
end


--答对
function RuneVersionQuestioning_ChooseRight(nUserId)
	local nEvent2 = tRuneVersionQuestioning_Stc["EventType"]["TrueNum"]
	local nType2 = tRuneVersionQuestioning_Stc["DataType"]["TrueNum"]
	local nEvent4 = tRuneVersionQuestioning_Stc["EventType"]["AnswerNum"]
	local nType4 = tRuneVersionQuestioning_Stc["DataType"]["AnswerNum"]
	
	Task_AddStatistic(nEvent4,nType4,1,1,nUserId)
	local nData4 = Get_UserStatisticValue(nEvent4,nType4,nUserId)

	-- User_EffectAdd("self","task071",nUserId)
	Task_AddStatistic(nEvent2,nType2,1,1,nUserId)
	
	local nData2 = Get_UserStatisticValue(nEvent2,nType2,nUserId)

	--判断是否是最后一题
	if nData4 == 20 then
		RuneVersionQuestioning_End(nData2,nData4,nUserId)  --答完
	end
end


--答完(参数为答对题数，已答题数)
function RuneVersionQuestioning_End(nData2,nData4,nUserId)
	local nEvent3 = tRuneVersionQuestioning_Stc["EventType"]["AnswerSpend"]
	local nType3 = tRuneVersionQuestioning_Stc["DataType"]["AnswerSpend"]
	local nEvent5 = tRuneVersionQuestioning_Stc["EventType"]["AllRight"]
	local nType5 = tRuneVersionQuestioning_Stc["DataType"]["AllRight"]

	local nTime = os.time() - tRuneVersionQuestioning_IntervalTime[nUserId]
	local sTime = RuneVersionQuestioning_TimeFormat(nTime)
	Task_SetStatistic(nEvent3,nType3,nTime,1,nUserId)
	
	--判断是否全对
	if nData2 == nData4 then
		--首次全对隔天重置
		RuneVersionQuestioning_StcReset(nEvent5,nType5,nUserId)
		
		if not Task_ChkStatistic(nEvent5,nType5,nUserId) or Get_UserStatisticValue(nEvent5,nType5,nUserId) == 0 then
			Task_SetStatistic(nEvent5,nType5,1,1,nUserId)  --置掩码
			Task_SetStcTimestamp(nEvent5,nType5,0,nUserId)
			
			--给奖
			-- local nActionId = tRuneVersionQuestioning_Mail["ActionId"][11]
			-- local nExistDay = tRuneVersionQuestioning_Mail["ExistDay"]
			-- local sSender = tRuneVersionQuestioning_Text["Mail"][1]["Sender"]
			-- local sTitle = tRuneVersionQuestioning_Text["Mail"][1]["Title"]
			-- local sContent = tRuneVersionQuestioning_Text["Mail"][1]["Content"]
			local sLog = "0,0,0,0,12000939,2,3306597,3"
			
			--Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
			Item_AddNewItem(3306597,"0 3",nUserId)
			Sys_SaveActionFestivalLog(sLog,nUserId)
			User_EffectAdd("self","eidolon",nUserId)
			
			--包里无所奖物品并且背包满提示重登领取
			if not Item_ChkItem(3306597,0,0,nUserId) and not RewardTemplate_CheckSpace(tRuneVersionQuestioning_Award["AllRight"],nUserId) then
				Sys_MsgBox(tRuneVersionQuestioning_Text["AllRightNoSpace"],nil,nil,nUserId)
			else
				Sys_MsgBox(tRuneVersionQuestioning_Text[21233]["AllRight"],nil,nil,nUserId)
			end
			
			Sys_SystemBroadcast(string.format(tRuneVersionQuestioning_Text["AllRight"],Get_UserName(nUserId)))
		end
	end
end


function RuneVersionQuestioning_RankReward(nUserId,nRank)
	local nTime = os.time() - tRuneVersionQuestioning_Cont["DelayTime"]
	local nAwardMonth = tonumber(os.date("%m",nTime))
	local nAwardDay = tonumber(os.date("%d",nTime))
	if nRank <= 10 then
		local nActionId = tRuneVersionQuestioning_Mail["ActionId"][nRank]
		local nExistDay = tRuneVersionQuestioning_Mail["ExistDay"]
		local sSender = tRuneVersionQuestioning_Text["Mail"][2]["Sender"]
		local sTitle = tRuneVersionQuestioning_Text["Mail"][2]["Title"]
		local sContent = string.format(tRuneVersionQuestioning_Text["Mail"][2]["Content"],nAwardMonth,nAwardDay,nRank)
		
		Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
	end
end


--时间格式化
function RuneVersionQuestioning_TimeFormat(nTime)
	if nTime < 0 or type(nTime) ~= "number" or nTime %1 ~= 0 then
		return false
	end
	
	local nH = 0
	local nM = 0
	local nS = 0
	if nTime >= 3600 then
		nH = math.floor(nTime / 3600)
		nM = math.floor((nTime % 3600) / 60)
		nS = (nTime % 3600) % 60
		return (nH .. tRuneVersionQuestioning_Text["Hour"] .. nM .. tRuneVersionQuestioning_Text["Minute"] .. nS .. tRuneVersionQuestioning_Text["Second"])
	elseif nTime >= 60 then
		nM = math.floor(nTime / 60)
		nS = nTime % 60
		return (nM .. tRuneVersionQuestioning_Text["Minute"] .. nS .. tRuneVersionQuestioning_Text["Second"])
	else
		return (nTime .. tRuneVersionQuestioning_Text["Second"])
	end
end


--查看攻略
function RuneVersionQuestioning_Strategy()
	User_SendWebPage("http://co.99.com/news/2018-02-02/runesqa.shtml")
end


----------------------------------物品逻辑
--神纹百变精装包
function RuneVersionQuestioning_RunePack_Main(nItemId)
	--检测背包
	local bMark,nSpace = RewardTemplate_ChkRandomSpace(tRuneVersionQuestioning_Award,nItemId)
	if not bMark then
		User_TalkChannel2005(string.format(tRuneVersionQuestioning_Text["PackNoSpace"],nSpace))
		return
	end
	
	--删除物品
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		RewardTemplate_NewRandom(tRuneVersionQuestioning_Award,nItemId)
		local sLog = "0,0,3306597,1,12000939,0,0,0"
		Sys_SaveActionFestivalLog(sLog)
	end
end


--冠军礼包
function RuneVersionQuestioning_ChampionPack_Main(nItemId)
	--检测背包
	local bMark,nSpace = RewardTemplate_ChkRandomSpace(tRuneVersionQuestioning_Award,nItemId)
	if not bMark then
		User_TalkChannel2005(string.format(tRuneVersionQuestioning_Text["PackNoSpace"],nSpace))
		return
	end
	
	--删除物品
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		RewardTemplate_NewRandom(tRuneVersionQuestioning_Award,nItemId)
		local sLog = "0,0,3306639,1,12000939,0,0,0"
		Sys_SaveActionFestivalLog(sLog)
	end
end

--2-9名礼包
function RuneVersionQuestioning_RankPack_Main(nItemId)
	RewardTemplate_UseItem(tRuneVersionQuestioning_Award[nItemId])
end


----------------------------------NPC部分---------------------------------------------
tItemFace[3306601] = 838
tNpcFace[444] = 6

tNpcGossip[21233]= tNpcGossip[21233] or DefaultNpc:new{}
tNpcGossip[21233]["OptionHidden"] = 1
--活动前
tNpcGossip[21233]["Text1-1"] = {111}
tNpcGossip[21233]["Text111"] = tRuneVersionQuestioning_Text[21233]["Text111"]
tNpcGossip[21233]["tOption1-1"] = {111}
tNpcGossip[21233]["Option111"] = tRuneVersionQuestioning_Text[21233]["Option111"]
tNpcGossip[21233]["ChkFunc1-1"]= function()
	
end


--活动中
tNpcGossip[21233]["Text1-2"] = {121,122,123,124,125,126,127,128,129,1210}
tNpcGossip[21233]["Text121"] = tRuneVersionQuestioning_Text[21233]["Text121"]
tNpcGossip[21233]["Text122"] = tRuneVersionQuestioning_Text[21233]["Text122"]
tNpcGossip[21233]["Text123"] = tRuneVersionQuestioning_Text[21233]["Text123"]
tNpcGossip[21233]["Text124"] = tRuneVersionQuestioning_Text[21233]["Text124"]
tNpcGossip[21233]["Text125"] = tRuneVersionQuestioning_Text[21233]["Text125"]
tNpcGossip[21233]["Text126"] = tRuneVersionQuestioning_Text[21233]["Text126"]
tNpcGossip[21233]["Text127"] = tRuneVersionQuestioning_Text[21233]["Text127"]
tNpcGossip[21233]["Text128"] = tRuneVersionQuestioning_Text[21233]["Text128"]
tNpcGossip[21233]["Text129"] = tRuneVersionQuestioning_Text[21233]["Text129"]
tNpcGossip[21233]["Text1210"] = tRuneVersionQuestioning_Text[21233]["Text1210"]
tNpcGossip[21233]["tOption1-2"] = {121,122,123}
tNpcGossip[21233]["Option121"] = tRuneVersionQuestioning_Text[21233]["Option121"]  --开始答题
tNpcGossip[21233]["Option122"] = tRuneVersionQuestioning_Text[21233]["Option211"]  --查看排行榜奖励
tNpcGossip[21233]["Option123"] = tRuneVersionQuestioning_Text[21233]["Option123"]  --神纹攻略
tNpcGossip[21233]["OptionFunc121"] = "RuneVersionQuestioning_Main"
--tNpcGossip[21233]["OptionFunc122"] = "RuneVersionQuestioning_ChkRankList"
tNpcGossip[21233]["OptionPoint122"] = "2-2"
tNpcGossip[21233]["OptionFunc123"] = "RuneVersionQuestioning_Strategy"
tNpcGossip[21233]["ChkFunc1-2"]= function()
	return Sys_ChkFullTime(tActivityTime["RuneVersionQuestioning"]["ActiveTime"])
end


--活动后
tNpcGossip[21233]["Text1-3"] = {131}
tNpcGossip[21233]["Text131"] = tRuneVersionQuestioning_Text[21233]["Text131"]
tNpcGossip[21233]["tOption1-3"] = {131}
tNpcGossip[21233]["Option131"] = tRuneVersionQuestioning_Text[21233]["Option131"]
tNpcGossip[21233]["ChkFunc1-3"]= function()
	return Sys_ChkFullTime(tActivityTime["RuneVersionQuestioning"]["AfterTime"])
end


-------------------------排行榜部分
--排行榜奖励
tNpcGossip[21233]["Text2-2"] = {221,222,223,224,225,226,227,228,229,2210,2211,2212,2213,2214,2215}
tNpcGossip[21233]["Text221"] = tRuneVersionQuestioning_Text[21233]["Text221"]
tNpcGossip[21233]["Text222"] = tRuneVersionQuestioning_Text[21233]["Text222"]
tNpcGossip[21233]["Text223"] = tRuneVersionQuestioning_Text[21233]["Text223"]
tNpcGossip[21233]["Text224"] = tRuneVersionQuestioning_Text[21233]["Text224"]
tNpcGossip[21233]["Text225"] = tRuneVersionQuestioning_Text[21233]["Text225"]
tNpcGossip[21233]["Text226"] = tRuneVersionQuestioning_Text[21233]["Text226"]
tNpcGossip[21233]["Text227"] = tRuneVersionQuestioning_Text[21233]["Text227"]
tNpcGossip[21233]["Text228"] = tRuneVersionQuestioning_Text[21233]["Text228"]
tNpcGossip[21233]["Text229"] = tRuneVersionQuestioning_Text[21233]["Text229"]
tNpcGossip[21233]["Text2210"] = tRuneVersionQuestioning_Text[21233]["Text2210"]
tNpcGossip[21233]["Text2211"] = tRuneVersionQuestioning_Text[21233]["Text2211"]
tNpcGossip[21233]["Text2212"] = tRuneVersionQuestioning_Text[21233]["Text2212"]
tNpcGossip[21233]["Text2213"] = tRuneVersionQuestioning_Text[21233]["Text2213"]
tNpcGossip[21233]["Text2214"] = tRuneVersionQuestioning_Text[21233]["Text2214"]
tNpcGossip[21233]["Text2215"] = tRuneVersionQuestioning_Text[21233]["Text2215"]
tNpcGossip[21233]["tOption2-2"] = {221}
tNpcGossip[21233]["Option221"] = tRuneVersionQuestioning_Text[21233]["Option221"]


---------------------------------物品部分---------------------------------------------
--神纹百变精装包
tItem[3306597] = tItem[3306597] or {}
tItem[3306597]["Function"] = function(nItemId,sItemName)
	RuneVersionQuestioning_RunePack_Main(nItemId)
end

---------------------------------神纹碎片
--红色神纹碎片
-- tItem[3306598] = tItem[3306598] or {}
-- tItem[3306598]["Function"] = function(nItemId,sItemName)
	-- RuneVersionQuestioning_Pieces_Main(nItemId)
-- end


--蓝色神纹碎片
-- tItem[3306599] = tItem[3306599] or {}
-- tItem[3306599]["Function"] = function(nItemId,sItemName)
	-- RuneVersionQuestioning_Pieces_Main(nItemId)
-- end


--黄色神纹碎片
-- tItem[3306600] = tItem[3306600] or {}
-- tItem[3306600]["Function"] = function(nItemId,sItemName)
	-- RuneVersionQuestioning_Pieces_Main(nItemId)
-- end

---------------------------------冠军礼包
tItem[3306639] = tItem[3306639] or {}
tItem[3306639]["Function"] = function(nItemId,sItemName)
	RuneVersionQuestioning_ChampionPack_Main(nItemId)
end

---------------------------------其他名次礼包
--亚军
tItem[3306640] = tItem[3306640] or {}
tItem[3306640]["Function"] = function(nItemId,sItemName)
	RuneVersionQuestioning_RankPack_Main(nItemId)
end

--季军
tItem[3306641] = tItem[3306641] or {}
tItem[3306641]["Function"] = function(nItemId,sItemName)
	RuneVersionQuestioning_RankPack_Main(nItemId)
end

--第四
tItem[3306642] = tItem[3306642] or {}
tItem[3306642]["Function"] = function(nItemId,sItemName)
	RuneVersionQuestioning_RankPack_Main(nItemId)
end

--第五
tItem[3306643] = tItem[3306643] or {}
tItem[3306643]["Function"] = function(nItemId,sItemName)
	RuneVersionQuestioning_RankPack_Main(nItemId)
end

--第六
tItem[3306644] = tItem[3306644] or {}
tItem[3306644]["Function"] = function(nItemId,sItemName)
	RuneVersionQuestioning_RankPack_Main(nItemId)
end

--第七
tItem[3306645] = tItem[3306645] or {}
tItem[3306645]["Function"] = function(nItemId,sItemName)
	RuneVersionQuestioning_RankPack_Main(nItemId)
end

--第八
tItem[3306646] = tItem[3306646] or {}
tItem[3306646]["Function"] = function(nItemId,sItemName)
	RuneVersionQuestioning_RankPack_Main(nItemId)
end

--第九
tItem[3306647] = tItem[3306647] or {}
tItem[3306647]["Function"] = function(nItemId,sItemName)
	RuneVersionQuestioning_RankPack_Main(nItemId)
end

--第十
tItem[3306648] = tItem[3306648] or {}
tItem[3306648]["Function"] = function(nItemId,sItemName)
	RuneVersionQuestioning_RankPack_Main(nItemId)
end


---排行榜函数
-- tQuizRankingsReward = tQuizRankingsReward or {}
-- tQuizRankingsReward["tFunction"] = tQuizRankingsReward["tFunction"] or {}
-- table.insert(tQuizRankingsReward["tFunction"],RuneVersionQuestioning_RankReward)

---个人答对函数
-- tQuizPersonalReward = tQuizPersonalReward or {}
-- tQuizPersonalReward["tFunction"] = tQuizPersonalReward["tFunction"] or {}
-- table.insert(tQuizPersonalReward["tFunction"],RuneVersionQuestioning_ChooseRight)




