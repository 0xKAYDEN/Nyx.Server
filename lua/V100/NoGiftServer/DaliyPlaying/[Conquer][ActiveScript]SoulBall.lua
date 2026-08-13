------------------------------------------------------------------------------------
--Name:		180930[简体征服][活动脚本]无赠品服务器--日常魂球玩法
--Purpose:	无赠品服务器--日常魂球玩法
--Creator: 	洪聪敏
--Created:	2018/09/30
------------------------------------------------------------------------------------
--命名前缀：SoulBall_
--logid:12001178
--lua.ini:41013
------------------------------------------------------------------------------------
--动态表：
-----53013 
--data0：80~89流星限量
--data1：80~89龙珠限量
--data2：90~99流星限量
--data3：90~99龙珠限量
--data4：100~109流星限量
--data5：100~109龙珠限量

-----53014 
--data0：110~119流流星券限量
--data1：110~119龙珠限量
--data2：120~129流星券限量
--data3：120~129龙珠限量
--data4：130~139流星券限量
--data5：130~139龙珠限量

-----53015 
--data0：140~150流星券限量
--data1：140~150龙珠限量

--STC掩码：
--(184,61) --玩家是否领取镇魂珠
--(184,62) --玩家今日杀怪数量
--(184,63) --玩家今日是否领取奖励

----------------------------------常量部分--------------------------------------------
local tSoulBall_Cont = {}

tSoulBall_Cont["SoulBallItem"] = 3311041
tSoulBall_Cont["Level"] = {}
tSoulBall_Cont["Level"][1] = {80,89}
tSoulBall_Cont["Level"][2] = {90,99}
tSoulBall_Cont["Level"][3] = {100,109}
tSoulBall_Cont["Level"][4] = {110,119}
tSoulBall_Cont["Level"][5] = {120,129}
tSoulBall_Cont["Level"][6] = {130,139}
tSoulBall_Cont["Level"][7] = {140,150}
--怪物等级
tSoulBall_Cont["MonsterLevel"] = {}
tSoulBall_Cont["MonsterLevel"][1] = {70,99}
tSoulBall_Cont["MonsterLevel"][2] = {100,119}
tSoulBall_Cont["MonsterLevel"][3] = {120,150}
--大Boss
tSoulBall_Cont["MonsterBoss"] = {4907,4908,4909,4910}
tSoulBall_Cont["MonsterBossAddValue"] = 400

tSoulBall_Cont["MonsterLevMin"]= 69
tSoulBall_Cont["MonsterAddValue"] = {}
tSoulBall_Cont["MonsterAddValue"][1]= 2
tSoulBall_Cont["MonsterAddValue"][2]= 3
tSoulBall_Cont["MonsterAddValue"][3]= 4

tSoulBall_Cont["JudgeLevel"] = {}
tSoulBall_Cont["JudgeLevel"]["Min"] = 80
tSoulBall_Cont["JudgeLevel"]["Stone"] = 120
tSoulBall_Cont["JudgeLevel"]["Max"] = 140
tSoulBall_Cont["Metempsychosis"] = 2
--二转以上玩家获取奖励所需背包
tSoulBall_Cont["RebirthSpace"] = 7 --最多奖励概率7个
--不同阶段对应杀怪数量
tSoulBall_Cont["MonsterNum"] = {}
tSoulBall_Cont["MonsterNum"][1] = 1000
tSoulBall_Cont["MonsterNum"][2] = 1000
tSoulBall_Cont["MonsterNum"][3] = 1000
tSoulBall_Cont["MonsterNum"][4] = 1500
tSoulBall_Cont["MonsterNum"][5] = 2000
tSoulBall_Cont["MonsterNum"][6] = 3000
tSoulBall_Cont["MonsterNum"][7] = 3000
--动态表
local tSoulBall_Global = {}
	tSoulBall_Global[1] = 53013
	tSoulBall_Global[2] = 53014
	tSoulBall_Global[3] = 53015
	
--STC掩码：
local tSoulBall_Stc = {}
--杀怪数量
tSoulBall_Stc[1]={}
tSoulBall_Stc[1]["EventType"] = 184
tSoulBall_Stc[1]["DataType"] = 62
--领取奖励
tSoulBall_Stc[2]={}
tSoulBall_Stc[2]["EventType"] = 184
tSoulBall_Stc[2]["DataType"] = 63
--领取魂珠
tSoulBall_Stc[3]={}
tSoulBall_Stc[3]["EventType"] = 184
tSoulBall_Stc[3]["DataType"] = 61
--临时表
--打怪临时表
local tSoulBall_KillMonsterNum = {} --满100只记录到掩码一次 
----------------------------------奖励部分--------------------------------------------
	--必给奖励
	--80~89奖励
	local tSoulBall_Reword = {}
	tSoulBall_Reword[3311041] = {}
	tSoulBall_Reword[3311041][1] = {}
	tSoulBall_Reword[3311041][1]["RewardItem"] = {}
	tSoulBall_Reword[3311041][1]["RewardItem"][1] = {}
	tSoulBall_Reword[3311041][1]["RewardItem"][1]["Id"] = 3008959
	tSoulBall_Reword[3311041][1]["RewardItem"][1]["Attr"] = "0 1"
	tSoulBall_Reword[3311041][1]["LogId"] =12001178
	tSoulBall_Reword[3311041][1]["LogStep"] = "2[1]"
	--90~99级
	tSoulBall_Reword[3311041][2] = {}
	tSoulBall_Reword[3311041][2]["RewardItem"] = {}
	tSoulBall_Reword[3311041][2]["RewardItem"][1] = {}
	tSoulBall_Reword[3311041][2]["RewardItem"][1]["Id"] = 3008960
	tSoulBall_Reword[3311041][2]["RewardItem"][1]["Attr"] = "0 1"
	tSoulBall_Reword[3311041][2]["LogId"] =12001178
	tSoulBall_Reword[3311041][2]["LogStep"] = "2[2]"
	--100~109级
	tSoulBall_Reword[3311041][3] = {}
	tSoulBall_Reword[3311041][3]["RewardItem"] = {}
	tSoulBall_Reword[3311041][3]["RewardItem"][1] = {}
	tSoulBall_Reword[3311041][3]["RewardItem"][1]["Id"] = 3008964
	tSoulBall_Reword[3311041][3]["RewardItem"][1]["Attr"] = "0 1"
	tSoulBall_Reword[3311041][3]["LogId"] =12001178
	tSoulBall_Reword[3311041][3]["LogStep"] = "2[3]"
	
	--110级~119级
	tSoulBall_Reword[3311041][4] = {}
	tSoulBall_Reword[3311041][4]["RewardItem"] = {}
	tSoulBall_Reword[3311041][4]["RewardItem"][1] = {}
	tSoulBall_Reword[3311041][4]["RewardItem"][1]["Id"] = 3008967
	tSoulBall_Reword[3311041][4]["RewardItem"][1]["Attr"] = "0 1"
	tSoulBall_Reword[3311041][4]["LogId"] =12001178
	tSoulBall_Reword[3311041][4]["LogStep"] = "2[4]"
	
	--120级~129级
	tSoulBall_Reword[3311041][5] = {}
	tSoulBall_Reword[3311041][5]["RewardItem"] = {}
	tSoulBall_Reword[3311041][5]["RewardItem"][1] = {}
	tSoulBall_Reword[3311041][5]["RewardItem"][1]["Id"] = 3008970
	tSoulBall_Reword[3311041][5]["RewardItem"][1]["Attr"] = "0 1"
	tSoulBall_Reword[3311041][5]["LogId"] =12001178
	tSoulBall_Reword[3311041][5]["LogStep"] = "2[5]"
	--130级~139级
	tSoulBall_Reword[3311041][6] = {}
	tSoulBall_Reword[3311041][6]["RewardItem"] = {}
	tSoulBall_Reword[3311041][6]["RewardItem"][1] = {}
	tSoulBall_Reword[3311041][6]["RewardItem"][1]["Id"] = 3200339
	tSoulBall_Reword[3311041][6]["RewardItem"][1]["Attr"] = "0 1"
	tSoulBall_Reword[3311041][6]["LogId"] =12001178
	tSoulBall_Reword[3311041][6]["LogStep"] = "2[6]"
	--140~150级
	tSoulBall_Reword[3311041][7] = {}
	tSoulBall_Reword[3311041][7]["RewardStrengthValue"] = {}
	tSoulBall_Reword[3311041][7]["RewardStrengthValue"]["Value"] = 300
	tSoulBall_Reword[3311041][7]["LogId"] =12001178
	tSoulBall_Reword[3311041][7]["LogStep"] = "2[7]"
	
	--非2转的随机奖励
	local tSoulBall_PossibleReword = {}
	--80~89奖励
	tSoulBall_PossibleReword[3311041] = {}
	tSoulBall_PossibleReword[3311041][1] = {}
	tSoulBall_PossibleReword[3311041][1]["ItemChanceSum"] = 10000
	tSoulBall_PossibleReword[3311041][1]["LogId"] = 12001178
	tSoulBall_PossibleReword[3311041][1]["LogStep"] = "1[1]"
	
	tSoulBall_PossibleReword[3311041][1][1] = {}
	tSoulBall_PossibleReword[3311041][1][1]["RandomItemChanceType"] = 2
	tSoulBall_PossibleReword[3311041][1][1]["ItemChance"] = 2000
	tSoulBall_PossibleReword[3311041][1][1]["RewardEMoneyMono"] = {}
	tSoulBall_PossibleReword[3311041][1][1]["RewardEMoneyMono"]["Value"] = 45
	tSoulBall_PossibleReword[3311041][1][2] = {}
	tSoulBall_PossibleReword[3311041][1][2]["RandomItemChanceType"] = 2
	tSoulBall_PossibleReword[3311041][1][2]["ItemChance"] = 2000
	tSoulBall_PossibleReword[3311041][1][2]["RewardCultivation"] = {}
	tSoulBall_PossibleReword[3311041][1][2]["RewardCultivation"]["Value"] = 150
	tSoulBall_PossibleReword[3311041][1][3] = {}
	tSoulBall_PossibleReword[3311041][1][3]["RandomItemChanceType"] = 2
	tSoulBall_PossibleReword[3311041][1][3]["ItemChance"] = 2000
	tSoulBall_PossibleReword[3311041][1][3]["RewardRepairValue"] = {}
	tSoulBall_PossibleReword[3311041][1][3]["RewardRepairValue"]["Value"] = 80
	tSoulBall_PossibleReword[3311041][1][4] = {}
	tSoulBall_PossibleReword[3311041][1][4]["RandomItemChanceType"] = 2
	tSoulBall_PossibleReword[3311041][1][4]["ItemChance"] = 2000
	tSoulBall_PossibleReword[3311041][1][4]["RewardStrengthValue"] = {}
	tSoulBall_PossibleReword[3311041][1][4]["RewardStrengthValue"]["Value"] = 50
	tSoulBall_PossibleReword[3311041][1][5] = {}
	tSoulBall_PossibleReword[3311041][1][5]["RandomItemChanceType"] = 2
	tSoulBall_PossibleReword[3311041][1][5]["ItemChance"] = 2000
	tSoulBall_PossibleReword[3311041][1][5]["RewardItem"]={}
	tSoulBall_PossibleReword[3311041][1][5]["RewardItem"][1] = {}
	tSoulBall_PossibleReword[3311041][1][5]["RewardItem"][1]["Id"] = 1088001
	tSoulBall_PossibleReword[3311041][1][5]["RewardItem"][1]["Attr"] = "0 5"
	tSoulBall_PossibleReword[3311041][1][5]["GlobalId"] = 53013
	tSoulBall_PossibleReword[3311041][1][5]["Pos"] = 0
	tSoulBall_PossibleReword[3311041][1][5]["MaxData"] = 3
	tSoulBall_PossibleReword[3311041][1][5]["FullIndex"] = 4
	
	--90~99奖励
	tSoulBall_PossibleReword[3311041][2] = {}
	tSoulBall_PossibleReword[3311041][2]["ItemChanceSum"] = 10000
	tSoulBall_PossibleReword[3311041][2]["LogId"] = 12001178
	tSoulBall_PossibleReword[3311041][2]["LogStep"] = "1[2]"
	
	tSoulBall_PossibleReword[3311041][2][1] = {}
	tSoulBall_PossibleReword[3311041][2][1]["RandomItemChanceType"] = 2
	tSoulBall_PossibleReword[3311041][2][1]["ItemChance"] = 2000
	tSoulBall_PossibleReword[3311041][2][1]["RewardEMoneyMono"] = {}
	tSoulBall_PossibleReword[3311041][2][1]["RewardEMoneyMono"]["Value"] = 60
	tSoulBall_PossibleReword[3311041][2][2] = {}
	tSoulBall_PossibleReword[3311041][2][2]["RandomItemChanceType"] = 2
	tSoulBall_PossibleReword[3311041][2][2]["ItemChance"] = 2000
	tSoulBall_PossibleReword[3311041][2][2]["RewardCultivation"] = {}
	tSoulBall_PossibleReword[3311041][2][2]["RewardCultivation"]["Value"] = 200
	tSoulBall_PossibleReword[3311041][2][3] = {}
	tSoulBall_PossibleReword[3311041][2][3]["RandomItemChanceType"] = 2
	tSoulBall_PossibleReword[3311041][2][3]["ItemChance"] = 2000
	tSoulBall_PossibleReword[3311041][2][3]["RewardRepairValue"] = {}
	tSoulBall_PossibleReword[3311041][2][3]["RewardRepairValue"]["Value"] = 100
	tSoulBall_PossibleReword[3311041][2][4] = {}
	tSoulBall_PossibleReword[3311041][2][4]["RandomItemChanceType"] = 2
	tSoulBall_PossibleReword[3311041][2][4]["ItemChance"] = 2000
	tSoulBall_PossibleReword[3311041][2][4]["RewardStrengthValue"] = {}
	tSoulBall_PossibleReword[3311041][2][4]["RewardStrengthValue"]["Value"] = 80
	tSoulBall_PossibleReword[3311041][2][5] = {}
	tSoulBall_PossibleReword[3311041][2][5]["RandomItemChanceType"] = 2
	tSoulBall_PossibleReword[3311041][2][5]["ItemChance"] = 2000
	tSoulBall_PossibleReword[3311041][2][5]["RewardItem"] = {}
	tSoulBall_PossibleReword[3311041][2][5]["RewardItem"][1] = {}
	tSoulBall_PossibleReword[3311041][2][5]["RewardItem"][1]["Id"] = 1088001
	tSoulBall_PossibleReword[3311041][2][5]["RewardItem"][1]["Attr"] = "0 8"
	tSoulBall_PossibleReword[3311041][2][5]["GlobalId"] = 53013
	tSoulBall_PossibleReword[3311041][2][5]["Pos"] = 2
	tSoulBall_PossibleReword[3311041][2][5]["MaxData"] = 3
	tSoulBall_PossibleReword[3311041][2][5]["FullIndex"] = 4
	
	--100~109奖励
	tSoulBall_PossibleReword[3311041][3] = {}
	tSoulBall_PossibleReword[3311041][3]["ItemChanceSum"] = 10000
	tSoulBall_PossibleReword[3311041][3]["LogId"] = 12001178
	tSoulBall_PossibleReword[3311041][3]["LogStep"] = "1[3]"
	
	tSoulBall_PossibleReword[3311041][3][1] = {}
	tSoulBall_PossibleReword[3311041][3][1]["RandomItemChanceType"] = 2
	tSoulBall_PossibleReword[3311041][3][1]["ItemChance"] = 2000
	tSoulBall_PossibleReword[3311041][3][1]["RewardEMoneyMono"] = {}
	tSoulBall_PossibleReword[3311041][3][1]["RewardEMoneyMono"]["Value"] = 75
	tSoulBall_PossibleReword[3311041][3][2] = {}
	tSoulBall_PossibleReword[3311041][3][2]["RandomItemChanceType"] = 2
	tSoulBall_PossibleReword[3311041][3][2]["ItemChance"] = 2000
	tSoulBall_PossibleReword[3311041][3][2]["RewardCultivation"] = {}
	tSoulBall_PossibleReword[3311041][3][2]["RewardCultivation"]["Value"] = 250
	tSoulBall_PossibleReword[3311041][3][3] = {}
	tSoulBall_PossibleReword[3311041][3][3]["RandomItemChanceType"] = 2
	tSoulBall_PossibleReword[3311041][3][3]["ItemChance"] = 2000
	tSoulBall_PossibleReword[3311041][3][3]["RewardRepairValue"] = {}
	tSoulBall_PossibleReword[3311041][3][3]["RewardRepairValue"]["Value"] = 120
	tSoulBall_PossibleReword[3311041][3][4] = {}
	tSoulBall_PossibleReword[3311041][3][4]["RandomItemChanceType"] = 2
	tSoulBall_PossibleReword[3311041][3][4]["ItemChance"] = 2000
	tSoulBall_PossibleReword[3311041][3][4]["RewardStrengthValue"] = {}
	tSoulBall_PossibleReword[3311041][3][4]["RewardStrengthValue"]["Value"] = 100
	tSoulBall_PossibleReword[3311041][3][5] = {}
	tSoulBall_PossibleReword[3311041][3][5]["RandomItemChanceType"] = 2
	tSoulBall_PossibleReword[3311041][3][5]["ItemChance"] = 2000
	tSoulBall_PossibleReword[3311041][3][5]["RewardItem"] = {}
	tSoulBall_PossibleReword[3311041][3][5]["RewardItem"][1] = {}
	tSoulBall_PossibleReword[3311041][3][5]["RewardItem"][1]["Id"] = 1088001
	tSoulBall_PossibleReword[3311041][3][5]["RewardItem"][1]["Attr"] = "0 8"
	tSoulBall_PossibleReword[3311041][3][5]["GlobalId"] = 53013
	tSoulBall_PossibleReword[3311041][3][5]["Pos"] = 4
	tSoulBall_PossibleReword[3311041][3][5]["MaxData"] = 2
	tSoulBall_PossibleReword[3311041][3][5]["FullIndex"] = 4
	
	--110~119奖励
	tSoulBall_PossibleReword[3311041][4] = {}
	tSoulBall_PossibleReword[3311041][4]["ItemChanceSum"] = 10000
	tSoulBall_PossibleReword[3311041][4]["LogId"] = 12001178
	tSoulBall_PossibleReword[3311041][4]["LogStep"] = "1[4]"
	
	tSoulBall_PossibleReword[3311041][4][1] = {}
	tSoulBall_PossibleReword[3311041][4][1]["RandomItemChanceType"] = 2
	tSoulBall_PossibleReword[3311041][4][1]["ItemChance"] = 2000
	tSoulBall_PossibleReword[3311041][4][1]["RewardEMoneyMono"] = {}
	tSoulBall_PossibleReword[3311041][4][1]["RewardEMoneyMono"]["Value"] = 90
	tSoulBall_PossibleReword[3311041][4][2] = {}
	tSoulBall_PossibleReword[3311041][4][2]["RandomItemChanceType"] = 2
	tSoulBall_PossibleReword[3311041][4][2]["ItemChance"] = 2000
	tSoulBall_PossibleReword[3311041][4][2]["RewardCultivation"] = {}
	tSoulBall_PossibleReword[3311041][4][2]["RewardCultivation"]["Value"] = 300
	tSoulBall_PossibleReword[3311041][4][3] = {}
	tSoulBall_PossibleReword[3311041][4][3]["RandomItemChanceType"] = 2
	tSoulBall_PossibleReword[3311041][4][3]["ItemChance"] = 2000
	tSoulBall_PossibleReword[3311041][4][3]["RewardRepairValue"] = {}
	tSoulBall_PossibleReword[3311041][4][3]["RewardRepairValue"]["Value"] = 150
	tSoulBall_PossibleReword[3311041][4][4] = {}
	tSoulBall_PossibleReword[3311041][4][4]["RandomItemChanceType"] = 2
	tSoulBall_PossibleReword[3311041][4][4]["ItemChance"] = 2000
	tSoulBall_PossibleReword[3311041][4][4]["RewardStrengthValue"] = {}
	tSoulBall_PossibleReword[3311041][4][4]["RewardStrengthValue"]["Value"] = 150
	tSoulBall_PossibleReword[3311041][4][5] = {}
	tSoulBall_PossibleReword[3311041][4][5]["RandomItemChanceType"] = 2
	tSoulBall_PossibleReword[3311041][4][5]["ItemChance"] = 2000
	tSoulBall_PossibleReword[3311041][4][5]["RewardItem"] = {}
	tSoulBall_PossibleReword[3311041][4][5]["RewardItem"][1] = {}
	tSoulBall_PossibleReword[3311041][4][5]["RewardItem"][1]["Id"] = 720027
	tSoulBall_PossibleReword[3311041][4][5]["RewardItem"][1]["Attr"] = "0 1"
	tSoulBall_PossibleReword[3311041][4][5]["GlobalId"] = 53014
	tSoulBall_PossibleReword[3311041][4][5]["Pos"] = 0
	tSoulBall_PossibleReword[3311041][4][5]["MaxData"] = 2
	tSoulBall_PossibleReword[3311041][4][5]["FullIndex"] = 4
	
	--120~129奖励
	tSoulBall_PossibleReword[3311041][5] = {}
	tSoulBall_PossibleReword[3311041][5]["ItemChanceSum"] = 10000
	tSoulBall_PossibleReword[3311041][5]["LogId"] = 12001178
	tSoulBall_PossibleReword[3311041][5]["LogStep"] = "1[5]"
	
	tSoulBall_PossibleReword[3311041][5][1] = {}
	tSoulBall_PossibleReword[3311041][5][1]["RandomItemChanceType"] = 2
	tSoulBall_PossibleReword[3311041][5][1]["ItemChance"] = 2000
	tSoulBall_PossibleReword[3311041][5][1]["RewardEMoneyMono"] = {}
	tSoulBall_PossibleReword[3311041][5][1]["RewardEMoneyMono"]["Value"] = 100
	tSoulBall_PossibleReword[3311041][5][2] = {}
	tSoulBall_PossibleReword[3311041][5][2]["RandomItemChanceType"] = 2
	tSoulBall_PossibleReword[3311041][5][2]["ItemChance"] = 2000
	tSoulBall_PossibleReword[3311041][5][2]["RewardCultivation"] = {}
	tSoulBall_PossibleReword[3311041][5][2]["RewardCultivation"]["Value"] = 350
	tSoulBall_PossibleReword[3311041][5][3] = {}
	tSoulBall_PossibleReword[3311041][5][3]["RandomItemChanceType"] = 2
	tSoulBall_PossibleReword[3311041][5][3]["ItemChance"] = 2000
	tSoulBall_PossibleReword[3311041][5][3]["RewardRepairValue"] = {}
	tSoulBall_PossibleReword[3311041][5][3]["RewardRepairValue"]["Value"] = 180
	tSoulBall_PossibleReword[3311041][5][4] = {}
	tSoulBall_PossibleReword[3311041][5][4]["RandomItemChanceType"] = 2
	tSoulBall_PossibleReword[3311041][5][4]["ItemChance"] = 2000
	tSoulBall_PossibleReword[3311041][5][4]["RewardStrengthValue"] = {}
	tSoulBall_PossibleReword[3311041][5][4]["RewardStrengthValue"]["Value"] = 200
	tSoulBall_PossibleReword[3311041][5][5] = {}
	tSoulBall_PossibleReword[3311041][5][5]["RandomItemChanceType"] = 2
	tSoulBall_PossibleReword[3311041][5][5]["ItemChance"] = 2000
	tSoulBall_PossibleReword[3311041][5][5]["RewardItem"] = {}
	tSoulBall_PossibleReword[3311041][5][5]["RewardItem"][1] = {}
	tSoulBall_PossibleReword[3311041][5][5]["RewardItem"][1]["Id"] = 720027
	tSoulBall_PossibleReword[3311041][5][5]["RewardItem"][1]["Attr"] = "0 1"
	tSoulBall_PossibleReword[3311041][5][5]["GlobalId"] = 53014
	tSoulBall_PossibleReword[3311041][5][5]["Pos"] = 2
	tSoulBall_PossibleReword[3311041][5][5]["MaxData"] = 2
	tSoulBall_PossibleReword[3311041][5][5]["FullIndex"] = 4
	
	--130~139奖励
	tSoulBall_PossibleReword[3311041][6] = {}
	tSoulBall_PossibleReword[3311041][6]["ItemChanceSum"] = 10000
	tSoulBall_PossibleReword[3311041][6]["LogId"] = 12001178
	tSoulBall_PossibleReword[3311041][6]["LogStep"] = "1[6]"
	
	tSoulBall_PossibleReword[3311041][6][1] = {}
	tSoulBall_PossibleReword[3311041][6][1]["RandomItemChanceType"] = 2
	tSoulBall_PossibleReword[3311041][6][1]["ItemChance"] = 2000
	tSoulBall_PossibleReword[3311041][6][1]["RewardEMoneyMono"] = {}
	tSoulBall_PossibleReword[3311041][6][1]["RewardEMoneyMono"]["Value"] = 150
	tSoulBall_PossibleReword[3311041][6][2] = {}
	tSoulBall_PossibleReword[3311041][6][2]["RandomItemChanceType"] = 2
	tSoulBall_PossibleReword[3311041][6][2]["ItemChance"] = 2000
	tSoulBall_PossibleReword[3311041][6][2]["RewardCultivation"] = {}
	tSoulBall_PossibleReword[3311041][6][2]["RewardCultivation"]["Value"] = 400
	tSoulBall_PossibleReword[3311041][6][3] = {}
	tSoulBall_PossibleReword[3311041][6][3]["RandomItemChanceType"] = 2
	tSoulBall_PossibleReword[3311041][6][3]["ItemChance"] = 2000
	tSoulBall_PossibleReword[3311041][6][3]["RewardRepairValue"] = {}
	tSoulBall_PossibleReword[3311041][6][3]["RewardRepairValue"]["Value"] = 240
	tSoulBall_PossibleReword[3311041][6][4] = {}
	tSoulBall_PossibleReword[3311041][6][4]["RandomItemChanceType"] = 2
	tSoulBall_PossibleReword[3311041][6][4]["ItemChance"] = 2000
	tSoulBall_PossibleReword[3311041][6][4]["RewardStrengthValue"] = {}
	tSoulBall_PossibleReword[3311041][6][4]["RewardStrengthValue"]["Value"] = 300
	tSoulBall_PossibleReword[3311041][6][5] = {}
	tSoulBall_PossibleReword[3311041][6][5]["RandomItemChanceType"] = 2
	tSoulBall_PossibleReword[3311041][6][5]["ItemChance"] = 2000
	tSoulBall_PossibleReword[3311041][6][5]["RewardItem"] = {}
	tSoulBall_PossibleReword[3311041][6][5]["RewardItem"][1] = {}
	tSoulBall_PossibleReword[3311041][6][5]["RewardItem"][1]["Id"] = 720027
	tSoulBall_PossibleReword[3311041][6][5]["RewardItem"][1]["Attr"] = "0 1"
	tSoulBall_PossibleReword[3311041][6][5]["GlobalId"] = 53014
	tSoulBall_PossibleReword[3311041][6][5]["Pos"] = 4
	tSoulBall_PossibleReword[3311041][6][5]["MaxData"] = 2
	tSoulBall_PossibleReword[3311041][6][5]["FullIndex"] = 4
	
	--140~150奖励
	tSoulBall_PossibleReword[3311041][7] = {}
	tSoulBall_PossibleReword[3311041][7]["ItemChanceSum"] = 10000
	tSoulBall_PossibleReword[3311041][7]["LogId"] = 12001178
	tSoulBall_PossibleReword[3311041][7]["LogStep"] = "1[7]"
	
	tSoulBall_PossibleReword[3311041][7][1] = {}
	tSoulBall_PossibleReword[3311041][7][1]["RandomItemChanceType"] = 2
	tSoulBall_PossibleReword[3311041][7][1]["ItemChance"] = 2000
	tSoulBall_PossibleReword[3311041][7][1]["RewardEMoneyMono"] = {}
	tSoulBall_PossibleReword[3311041][7][1]["RewardEMoneyMono"]["Value"] = 270
	tSoulBall_PossibleReword[3311041][7][2] = {}
	tSoulBall_PossibleReword[3311041][7][2]["RandomItemChanceType"] = 2
	tSoulBall_PossibleReword[3311041][7][2]["ItemChance"] = 2000
	tSoulBall_PossibleReword[3311041][7][2]["RewardCultivation"] = {}
	tSoulBall_PossibleReword[3311041][7][2]["RewardCultivation"]["Value"] = 450
	tSoulBall_PossibleReword[3311041][7][3] = {}
	tSoulBall_PossibleReword[3311041][7][3]["RandomItemChanceType"] = 2
	tSoulBall_PossibleReword[3311041][7][3]["ItemChance"] = 2000
	tSoulBall_PossibleReword[3311041][7][3]["RewardRepairValue"] = {}
	tSoulBall_PossibleReword[3311041][7][3]["RewardRepairValue"]["Value"] = 300
	tSoulBall_PossibleReword[3311041][7][4] = {}
	tSoulBall_PossibleReword[3311041][7][4]["RandomItemChanceType"] = 2
	tSoulBall_PossibleReword[3311041][7][4]["ItemChance"] = 2000
	tSoulBall_PossibleReword[3311041][7][4]["RewardStrengthValue"] = {}
	tSoulBall_PossibleReword[3311041][7][4]["RewardStrengthValue"]["Value"] = 400
	tSoulBall_PossibleReword[3311041][7][5] = {}
	tSoulBall_PossibleReword[3311041][7][5]["RandomItemChanceType"] = 2
	tSoulBall_PossibleReword[3311041][7][5]["ItemChance"] = 2000
	tSoulBall_PossibleReword[3311041][7][5]["RewardItem"] = {}
	tSoulBall_PossibleReword[3311041][7][5]["RewardItem"][1] = {}
	tSoulBall_PossibleReword[3311041][7][5]["RewardItem"][1]["Id"] = 720027
	tSoulBall_PossibleReword[3311041][7][5]["RewardItem"][1]["Attr"] = "0 1"
	tSoulBall_PossibleReword[3311041][7][5]["GlobalId"] = 53015
	tSoulBall_PossibleReword[3311041][7][5]["Pos"] = 0
	tSoulBall_PossibleReword[3311041][7][5]["MaxData"] = 2
	tSoulBall_PossibleReword[3311041][7][5]["FullIndex"] = 4
	
	--2转的随机奖励
	--80~89奖励
	local tSoulBall_RebirthPossible = {}
	tSoulBall_RebirthPossible[3311041] = {}
	tSoulBall_RebirthPossible[3311041][1] = {}
	tSoulBall_RebirthPossible[3311041][1]["ItemChanceSum"] = 10000
	tSoulBall_RebirthPossible[3311041][1]["LogId"] = 12001178
	tSoulBall_RebirthPossible[3311041][1]["LogStep"] = "4[1]"
	
	tSoulBall_RebirthPossible[3311041][1][1] = {}
	tSoulBall_RebirthPossible[3311041][1][1]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][1][1]["ItemChance"] = 1000
	tSoulBall_RebirthPossible[3311041][1][1]["RewardRepairValue"] = {}
	tSoulBall_RebirthPossible[3311041][1][1]["RewardRepairValue"]["Value"] = 150
	tSoulBall_RebirthPossible[3311041][1][2] = {}
	tSoulBall_RebirthPossible[3311041][1][2]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][1][2]["ItemChance"] = 1300
	tSoulBall_RebirthPossible[3311041][1][2]["RewardCultivation"] = {}
	tSoulBall_RebirthPossible[3311041][1][2]["RewardCultivation"]["Value"] = 300
	tSoulBall_RebirthPossible[3311041][1][3] = {}
	tSoulBall_RebirthPossible[3311041][1][3]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][1][3]["ItemChance"] = 1200
	tSoulBall_RebirthPossible[3311041][1][3]["RewardStrengthValue"] = {}
	tSoulBall_RebirthPossible[3311041][1][3]["RewardStrengthValue"]["Value"] = 100
	tSoulBall_RebirthPossible[3311041][1][4] = {}
	tSoulBall_RebirthPossible[3311041][1][4]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][1][4]["ItemChance"] = 1300
	tSoulBall_RebirthPossible[3311041][1][4]["RewardItem"] = {}
	tSoulBall_RebirthPossible[3311041][1][4]["RewardItem"][1] = {}
	tSoulBall_RebirthPossible[3311041][1][4]["RewardItem"][1]["Id"] = 3310804
	tSoulBall_RebirthPossible[3311041][1][4]["RewardItem"][1]["Attr"] = "0 3"
	tSoulBall_RebirthPossible[3311041][1][5] = {}
	tSoulBall_RebirthPossible[3311041][1][5]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][1][5]["ItemChance"] = 1000
	tSoulBall_RebirthPossible[3311041][1][5]["RewardEMoneyMono"] = {}
	tSoulBall_RebirthPossible[3311041][1][5]["RewardEMoneyMono"]["Value"] = 45
	tSoulBall_RebirthPossible[3311041][1][6] = {}
	tSoulBall_RebirthPossible[3311041][1][6]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][1][6]["ItemChance"] = 500
	tSoulBall_RebirthPossible[3311041][1][6]["RewardItem"] = {}
	tSoulBall_RebirthPossible[3311041][1][6]["RewardItem"][1] = {}
	tSoulBall_RebirthPossible[3311041][1][6]["RewardItem"][1]["Id"] = 1088000
	tSoulBall_RebirthPossible[3311041][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tSoulBall_RebirthPossible[3311041][1][6]["GlobalId"] = 53013
	tSoulBall_RebirthPossible[3311041][1][6]["Pos"] = 1
	tSoulBall_RebirthPossible[3311041][1][6]["MaxData"] = 1
	tSoulBall_RebirthPossible[3311041][1][6]["FullIndex"] = 7
	tSoulBall_RebirthPossible[3311041][1][7] = {}
	tSoulBall_RebirthPossible[3311041][1][7]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][1][7]["ItemChance"] = 1600
	tSoulBall_RebirthPossible[3311041][1][7]["RewardItem"] = {}
	tSoulBall_RebirthPossible[3311041][1][7]["RewardItem"][1] = {}
	tSoulBall_RebirthPossible[3311041][1][7]["RewardItem"][1]["Id"] = 3002030
	tSoulBall_RebirthPossible[3311041][1][7]["RewardItem"][1]["Attr"] = "0 1"
	tSoulBall_RebirthPossible[3311041][1][8] = {}
	tSoulBall_RebirthPossible[3311041][1][8]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][1][8]["ItemChance"] = 800
	tSoulBall_RebirthPossible[3311041][1][8]["RewardItem"] = {}
	tSoulBall_RebirthPossible[3311041][1][8]["RewardItem"][1] = {}
	tSoulBall_RebirthPossible[3311041][1][8]["RewardItem"][1]["Id"] = 3003125
	tSoulBall_RebirthPossible[3311041][1][8]["RewardItem"][1]["Attr"] = "0 1 3"
	tSoulBall_RebirthPossible[3311041][1][9] = {}
	tSoulBall_RebirthPossible[3311041][1][9]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][1][9]["ItemChance"] = 1300
	tSoulBall_RebirthPossible[3311041][1][9]["RewardItem"] = {}
	tSoulBall_RebirthPossible[3311041][1][9]["RewardItem"][1] = {}
	tSoulBall_RebirthPossible[3311041][1][9]["RewardItem"][1]["Id"] = 3009000
	tSoulBall_RebirthPossible[3311041][1][9]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	
	--90~99奖励
	tSoulBall_RebirthPossible[3311041][2] = {}
	tSoulBall_RebirthPossible[3311041][2]["ItemChanceSum"] = 10000
	tSoulBall_RebirthPossible[3311041][2]["LogId"] = 12001178
	tSoulBall_RebirthPossible[3311041][2]["LogStep"] = "4[2]"
	
	tSoulBall_RebirthPossible[3311041][2][1] = {}
	tSoulBall_RebirthPossible[3311041][2][1]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][2][1]["ItemChance"] = 1000
	tSoulBall_RebirthPossible[3311041][2][1]["RewardRepairValue"] = {}
	tSoulBall_RebirthPossible[3311041][2][1]["RewardRepairValue"]["Value"] = 200
	tSoulBall_RebirthPossible[3311041][2][2] = {}
	tSoulBall_RebirthPossible[3311041][2][2]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][2][2]["ItemChance"] = 1300
	tSoulBall_RebirthPossible[3311041][2][2]["RewardCultivation"] = {}
	tSoulBall_RebirthPossible[3311041][2][2]["RewardCultivation"]["Value"] = 350
	tSoulBall_RebirthPossible[3311041][2][3] = {}
	tSoulBall_RebirthPossible[3311041][2][3]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][2][3]["ItemChance"] = 1200
	tSoulBall_RebirthPossible[3311041][2][3]["RewardStrengthValue"] = {}
	tSoulBall_RebirthPossible[3311041][2][3]["RewardStrengthValue"]["Value"] = 150
	tSoulBall_RebirthPossible[3311041][2][4] = {}
	tSoulBall_RebirthPossible[3311041][2][4]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][2][4]["ItemChance"] = 1300
	tSoulBall_RebirthPossible[3311041][2][4]["RewardItem"] = {}
	tSoulBall_RebirthPossible[3311041][2][4]["RewardItem"][1] = {}
	tSoulBall_RebirthPossible[3311041][2][4]["RewardItem"][1]["Id"] = 3310804
	tSoulBall_RebirthPossible[3311041][2][4]["RewardItem"][1]["Attr"] = "0 4"
	tSoulBall_RebirthPossible[3311041][2][5] = {}
	tSoulBall_RebirthPossible[3311041][2][5]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][2][5]["ItemChance"] = 1000
	tSoulBall_RebirthPossible[3311041][2][5]["RewardEMoneyMono"] = {}
	tSoulBall_RebirthPossible[3311041][2][5]["RewardEMoneyMono"]["Value"] = 60
	tSoulBall_RebirthPossible[3311041][2][6] = {}
	tSoulBall_RebirthPossible[3311041][2][6]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][2][6]["ItemChance"] = 500
	tSoulBall_RebirthPossible[3311041][2][6]["RewardItem"] = {}
	tSoulBall_RebirthPossible[3311041][2][6]["RewardItem"][1] = {}
	tSoulBall_RebirthPossible[3311041][2][6]["RewardItem"][1]["Id"] = 1088000
	tSoulBall_RebirthPossible[3311041][2][6]["RewardItem"][1]["Attr"] = "0 1"
	tSoulBall_RebirthPossible[3311041][2][6]["GlobalId"] = 53013
	tSoulBall_RebirthPossible[3311041][2][6]["Pos"] = 3
	tSoulBall_RebirthPossible[3311041][2][6]["MaxData"] = 1
	tSoulBall_RebirthPossible[3311041][2][6]["FullIndex"] = 7
	tSoulBall_RebirthPossible[3311041][2][7] = {}
	tSoulBall_RebirthPossible[3311041][2][7]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][2][7]["ItemChance"] = 1600
	tSoulBall_RebirthPossible[3311041][2][7]["RewardItem"] = {}
	tSoulBall_RebirthPossible[3311041][2][7]["RewardItem"][1] = {}
	tSoulBall_RebirthPossible[3311041][2][7]["RewardItem"][1]["Id"] = 3002030
	tSoulBall_RebirthPossible[3311041][2][7]["RewardItem"][1]["Attr"] = "0 1"
	tSoulBall_RebirthPossible[3311041][2][8] = {}
	tSoulBall_RebirthPossible[3311041][2][8]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][2][8]["ItemChance"] = 800
	tSoulBall_RebirthPossible[3311041][2][8]["RewardItem"] = {}
	tSoulBall_RebirthPossible[3311041][2][8]["RewardItem"][1] = {}
	tSoulBall_RebirthPossible[3311041][2][8]["RewardItem"][1]["Id"] = 3003125
	tSoulBall_RebirthPossible[3311041][2][8]["RewardItem"][1]["Attr"] = "0 1 3"
	tSoulBall_RebirthPossible[3311041][2][9] = {}
	tSoulBall_RebirthPossible[3311041][2][9]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][2][9]["ItemChance"] = 1300
	tSoulBall_RebirthPossible[3311041][2][9]["RewardItem"] = {}
	tSoulBall_RebirthPossible[3311041][2][9]["RewardItem"][1] = {}
	tSoulBall_RebirthPossible[3311041][2][9]["RewardItem"][1]["Id"] = 3009000
	tSoulBall_RebirthPossible[3311041][2][9]["RewardItem"][1]["Attr"] = "0 4 0 2880 1"
	
	--100~109奖励
	tSoulBall_RebirthPossible[3311041][3] = {}
	tSoulBall_RebirthPossible[3311041][3]["ItemChanceSum"] = 10000
	tSoulBall_RebirthPossible[3311041][3]["LogId"] = 12001178
	tSoulBall_RebirthPossible[3311041][3]["LogStep"] = "4[3]"
	
	tSoulBall_RebirthPossible[3311041][3][1] = {}
	tSoulBall_RebirthPossible[3311041][3][1]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][3][1]["ItemChance"] = 1000
	tSoulBall_RebirthPossible[3311041][3][1]["RewardRepairValue"] = {}
	tSoulBall_RebirthPossible[3311041][3][1]["RewardRepairValue"]["Value"] = 250
	tSoulBall_RebirthPossible[3311041][3][2] = {}
	tSoulBall_RebirthPossible[3311041][3][2]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][3][2]["ItemChance"] = 1300
	tSoulBall_RebirthPossible[3311041][3][2]["RewardCultivation"] = {}
	tSoulBall_RebirthPossible[3311041][3][2]["RewardCultivation"]["Value"] = 400
	tSoulBall_RebirthPossible[3311041][3][3] = {}
	tSoulBall_RebirthPossible[3311041][3][3]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][3][3]["ItemChance"] = 1200
	tSoulBall_RebirthPossible[3311041][3][3]["RewardStrengthValue"] = {}
	tSoulBall_RebirthPossible[3311041][3][3]["RewardStrengthValue"]["Value"] = 200
	tSoulBall_RebirthPossible[3311041][3][4] = {}
	tSoulBall_RebirthPossible[3311041][3][4]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][3][4]["ItemChance"] = 1300
	tSoulBall_RebirthPossible[3311041][3][4]["RewardItem"] = {}
	tSoulBall_RebirthPossible[3311041][3][4]["RewardItem"][1] = {}
	tSoulBall_RebirthPossible[3311041][3][4]["RewardItem"][1]["Id"] = 3310804
	tSoulBall_RebirthPossible[3311041][3][4]["RewardItem"][1]["Attr"] = "0 5"
	tSoulBall_RebirthPossible[3311041][3][5] = {}
	tSoulBall_RebirthPossible[3311041][3][5]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][3][5]["ItemChance"] = 1000
	tSoulBall_RebirthPossible[3311041][3][5]["RewardEMoneyMono"] = {}
	tSoulBall_RebirthPossible[3311041][3][5]["RewardEMoneyMono"]["Value"] = 75
	tSoulBall_RebirthPossible[3311041][3][6] = {}
	tSoulBall_RebirthPossible[3311041][3][6]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][3][6]["ItemChance"] = 500
	tSoulBall_RebirthPossible[3311041][3][6]["RewardItem"] = {}
	tSoulBall_RebirthPossible[3311041][3][6]["RewardItem"][1] = {}
	tSoulBall_RebirthPossible[3311041][3][6]["RewardItem"][1]["Id"] = 1088000
	tSoulBall_RebirthPossible[3311041][3][6]["RewardItem"][1]["Attr"] = "0 1"
	tSoulBall_RebirthPossible[3311041][3][6]["GlobalId"] = 53013
	tSoulBall_RebirthPossible[3311041][3][6]["Pos"] = 5
	tSoulBall_RebirthPossible[3311041][3][6]["MaxData"] = 1
	tSoulBall_RebirthPossible[3311041][3][6]["FullIndex"] = 7
	tSoulBall_RebirthPossible[3311041][3][7] = {}
	tSoulBall_RebirthPossible[3311041][3][7]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][3][7]["ItemChance"] = 1600
	tSoulBall_RebirthPossible[3311041][3][7]["RewardItem"] = {}
	tSoulBall_RebirthPossible[3311041][3][7]["RewardItem"][1] = {}
	tSoulBall_RebirthPossible[3311041][3][7]["RewardItem"][1]["Id"] = 3002030
	tSoulBall_RebirthPossible[3311041][3][7]["RewardItem"][1]["Attr"] = "0 2"
	tSoulBall_RebirthPossible[3311041][3][8] = {}
	tSoulBall_RebirthPossible[3311041][3][8]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][3][8]["ItemChance"] = 800
	tSoulBall_RebirthPossible[3311041][3][8]["RewardItem"] = {}
	tSoulBall_RebirthPossible[3311041][3][8]["RewardItem"][1] = {}
	tSoulBall_RebirthPossible[3311041][3][8]["RewardItem"][1]["Id"] = 3003125
	tSoulBall_RebirthPossible[3311041][3][8]["RewardItem"][1]["Attr"] = "0 1 3"
	tSoulBall_RebirthPossible[3311041][3][9] = {}
	tSoulBall_RebirthPossible[3311041][3][9]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][3][9]["ItemChance"] = 1300
	tSoulBall_RebirthPossible[3311041][3][9]["RewardItem"] = {}
	tSoulBall_RebirthPossible[3311041][3][9]["RewardItem"][1] = {}
	tSoulBall_RebirthPossible[3311041][3][9]["RewardItem"][1]["Id"] = 3009000
	tSoulBall_RebirthPossible[3311041][3][9]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	
	--110~119奖励
	tSoulBall_RebirthPossible[3311041][4] = {}
	tSoulBall_RebirthPossible[3311041][4]["ItemChanceSum"] = 10000
	tSoulBall_RebirthPossible[3311041][4]["LogId"] = 12001178
	tSoulBall_RebirthPossible[3311041][4]["LogStep"] = "4[4]"
	
	tSoulBall_RebirthPossible[3311041][4][1] = {}
	tSoulBall_RebirthPossible[3311041][4][1]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][4][1]["ItemChance"] = 1000
	tSoulBall_RebirthPossible[3311041][4][1]["RewardRepairValue"] = {}
	tSoulBall_RebirthPossible[3311041][4][1]["RewardRepairValue"]["Value"] = 300
	tSoulBall_RebirthPossible[3311041][4][2] = {}
	tSoulBall_RebirthPossible[3311041][4][2]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][4][2]["ItemChance"] = 1300
	tSoulBall_RebirthPossible[3311041][4][2]["RewardCultivation"] = {}
	tSoulBall_RebirthPossible[3311041][4][2]["RewardCultivation"]["Value"] = 500
	tSoulBall_RebirthPossible[3311041][4][3] = {}
	tSoulBall_RebirthPossible[3311041][4][3]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][4][3]["ItemChance"] = 1200
	tSoulBall_RebirthPossible[3311041][4][3]["RewardStrengthValue"] = {}
	tSoulBall_RebirthPossible[3311041][4][3]["RewardStrengthValue"]["Value"] = 250
	tSoulBall_RebirthPossible[3311041][4][4] = {}
	tSoulBall_RebirthPossible[3311041][4][4]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][4][4]["ItemChance"] = 1300
	tSoulBall_RebirthPossible[3311041][4][4]["RewardItem"] = {}
	tSoulBall_RebirthPossible[3311041][4][4]["RewardItem"][1] = {}
	tSoulBall_RebirthPossible[3311041][4][4]["RewardItem"][1]["Id"] = 3310804
	tSoulBall_RebirthPossible[3311041][4][4]["RewardItem"][1]["Attr"] = "0 6"
	tSoulBall_RebirthPossible[3311041][4][5] = {}
	tSoulBall_RebirthPossible[3311041][4][5]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][4][5]["ItemChance"] = 1000
	tSoulBall_RebirthPossible[3311041][4][5]["RewardEMoneyMono"] = {}
	tSoulBall_RebirthPossible[3311041][4][5]["RewardEMoneyMono"]["Value"] = 90
	tSoulBall_RebirthPossible[3311041][4][6] = {}
	tSoulBall_RebirthPossible[3311041][4][6]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][4][6]["ItemChance"] = 500
	tSoulBall_RebirthPossible[3311041][4][6]["RewardItem"] = {}
	tSoulBall_RebirthPossible[3311041][4][6]["RewardItem"][1] = {}
	tSoulBall_RebirthPossible[3311041][4][6]["RewardItem"][1]["Id"] = 1088000
	tSoulBall_RebirthPossible[3311041][4][6]["RewardItem"][1]["Attr"] = "0 1"
	tSoulBall_RebirthPossible[3311041][4][6]["GlobalId"] = 53014
	tSoulBall_RebirthPossible[3311041][4][6]["Pos"] = 1
	tSoulBall_RebirthPossible[3311041][4][6]["MaxData"] = 1
	tSoulBall_RebirthPossible[3311041][4][6]["FullIndex"] = 7
	tSoulBall_RebirthPossible[3311041][4][7] = {}
	tSoulBall_RebirthPossible[3311041][4][7]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][4][7]["ItemChance"] = 1600
	tSoulBall_RebirthPossible[3311041][4][7]["RewardItem"] = {}
	tSoulBall_RebirthPossible[3311041][4][7]["RewardItem"][1] = {}
	tSoulBall_RebirthPossible[3311041][4][7]["RewardItem"][1]["Id"] = 3002030
	tSoulBall_RebirthPossible[3311041][4][7]["RewardItem"][1]["Attr"] = "0 3"
	tSoulBall_RebirthPossible[3311041][4][8] = {}
	tSoulBall_RebirthPossible[3311041][4][8]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][4][8]["ItemChance"] = 800
	tSoulBall_RebirthPossible[3311041][4][8]["RewardItem"] = {}
	tSoulBall_RebirthPossible[3311041][4][8]["RewardItem"][1] = {}
	tSoulBall_RebirthPossible[3311041][4][8]["RewardItem"][1]["Id"] = 3003125
	tSoulBall_RebirthPossible[3311041][4][8]["RewardItem"][1]["Attr"] = "0 2 3"
	tSoulBall_RebirthPossible[3311041][4][9] = {}
	tSoulBall_RebirthPossible[3311041][4][9]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][4][9]["ItemChance"] = 1300
	tSoulBall_RebirthPossible[3311041][4][9]["RewardItem"] = {}
	tSoulBall_RebirthPossible[3311041][4][9]["RewardItem"][1] = {}
	tSoulBall_RebirthPossible[3311041][4][9]["RewardItem"][1]["Id"] = 3009000
	tSoulBall_RebirthPossible[3311041][4][9]["RewardItem"][1]["Attr"] = "0 6 0 2880 1"
	
	--120~129奖励
	tSoulBall_RebirthPossible[3311041][5] = {}
	tSoulBall_RebirthPossible[3311041][5]["ItemChanceSum"] = 10000
	tSoulBall_RebirthPossible[3311041][5]["LogId"] = 12001178
	tSoulBall_RebirthPossible[3311041][5]["LogStep"] = "4[5]"
	
	tSoulBall_RebirthPossible[3311041][5][1] = {}
	tSoulBall_RebirthPossible[3311041][5][1]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][5][1]["ItemChance"] = 1300
	tSoulBall_RebirthPossible[3311041][5][1]["RewardCultivation"] = {}
	tSoulBall_RebirthPossible[3311041][5][1]["RewardCultivation"]["Value"] = 550
	tSoulBall_RebirthPossible[3311041][5][2] = {}
	tSoulBall_RebirthPossible[3311041][5][2]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][5][2]["ItemChance"] = 1000
	tSoulBall_RebirthPossible[3311041][5][2]["RewardRepairValue"] = {}
	tSoulBall_RebirthPossible[3311041][5][2]["RewardRepairValue"]["Value"] = 350
	tSoulBall_RebirthPossible[3311041][5][3] = {}
	tSoulBall_RebirthPossible[3311041][5][3]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][5][3]["ItemChance"] = 1200
	tSoulBall_RebirthPossible[3311041][5][3]["RewardStrengthValue"] = {}
	tSoulBall_RebirthPossible[3311041][5][3]["RewardStrengthValue"]["Value"] = 300
	tSoulBall_RebirthPossible[3311041][5][4] = {}
	tSoulBall_RebirthPossible[3311041][5][4]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][5][4]["ItemChance"] = 1300
	tSoulBall_RebirthPossible[3311041][5][4]["RewardItem"] = {}
	tSoulBall_RebirthPossible[3311041][5][4]["RewardItem"][1] = {}
	tSoulBall_RebirthPossible[3311041][5][4]["RewardItem"][1]["Id"] = 3310804
	tSoulBall_RebirthPossible[3311041][5][4]["RewardItem"][1]["Attr"] = "0 7"
	tSoulBall_RebirthPossible[3311041][5][5] = {}
	tSoulBall_RebirthPossible[3311041][5][5]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][5][5]["ItemChance"] = 1000
	tSoulBall_RebirthPossible[3311041][5][5]["RewardEMoneyMono"] = {}
	tSoulBall_RebirthPossible[3311041][5][5]["RewardEMoneyMono"]["Value"] = 100
	tSoulBall_RebirthPossible[3311041][5][6] = {}
	tSoulBall_RebirthPossible[3311041][5][6]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][5][6]["ItemChance"] = 500
	tSoulBall_RebirthPossible[3311041][5][6]["RewardItem"] = {}
	tSoulBall_RebirthPossible[3311041][5][6]["RewardItem"][1] = {}
	tSoulBall_RebirthPossible[3311041][5][6]["RewardItem"][1]["Id"] = 1088000
	tSoulBall_RebirthPossible[3311041][5][6]["RewardItem"][1]["Attr"] = "0 1"
	tSoulBall_RebirthPossible[3311041][5][6]["GlobalId"] = 53014
	tSoulBall_RebirthPossible[3311041][5][6]["Pos"] = 3
	tSoulBall_RebirthPossible[3311041][5][6]["MaxData"] = 1
	tSoulBall_RebirthPossible[3311041][5][6]["FullIndex"] = 7
	tSoulBall_RebirthPossible[3311041][5][7] = {}
	tSoulBall_RebirthPossible[3311041][5][7]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][5][7]["ItemChance"] = 1600
	tSoulBall_RebirthPossible[3311041][5][7]["RewardItem"] = {}
	tSoulBall_RebirthPossible[3311041][5][7]["RewardItem"][1] = {}
	tSoulBall_RebirthPossible[3311041][5][7]["RewardItem"][1]["Id"] = 3002030
	tSoulBall_RebirthPossible[3311041][5][7]["RewardItem"][1]["Attr"] = "0 3"
	tSoulBall_RebirthPossible[3311041][5][8] = {}
	tSoulBall_RebirthPossible[3311041][5][8]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][5][8]["ItemChance"] = 800
	tSoulBall_RebirthPossible[3311041][5][8]["RewardItem"] = {}
	tSoulBall_RebirthPossible[3311041][5][8]["RewardItem"][1] = {}
	tSoulBall_RebirthPossible[3311041][5][8]["RewardItem"][1]["Id"] = 3003125
	tSoulBall_RebirthPossible[3311041][5][8]["RewardItem"][1]["Attr"] = "0 3 3"
	tSoulBall_RebirthPossible[3311041][5][9] = {}
	tSoulBall_RebirthPossible[3311041][5][9]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][5][9]["ItemChance"] = 1300
	tSoulBall_RebirthPossible[3311041][5][9]["RewardItem"] = {}
	tSoulBall_RebirthPossible[3311041][5][9]["RewardItem"][1] = {}
	tSoulBall_RebirthPossible[3311041][5][9]["RewardItem"][1]["Id"] = 3009001
	tSoulBall_RebirthPossible[3311041][5][9]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	
	--130~139奖励
	tSoulBall_RebirthPossible[3311041][6] = {}
	tSoulBall_RebirthPossible[3311041][6]["ItemChanceSum"] = 10000
	tSoulBall_RebirthPossible[3311041][6]["LogId"] = 12001178
	tSoulBall_RebirthPossible[3311041][6]["LogStep"] = "4[6]"
	
	tSoulBall_RebirthPossible[3311041][6][1] = {}
	tSoulBall_RebirthPossible[3311041][6][1]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][6][1]["ItemChance"] = 1300
	tSoulBall_RebirthPossible[3311041][6][1]["RewardCultivation"] = {}
	tSoulBall_RebirthPossible[3311041][6][1]["RewardCultivation"]["Value"] = 600
	tSoulBall_RebirthPossible[3311041][6][2] = {}
	tSoulBall_RebirthPossible[3311041][6][2]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][6][2]["ItemChance"] = 1000
	tSoulBall_RebirthPossible[3311041][6][2]["RewardRepairValue"] = {}
	tSoulBall_RebirthPossible[3311041][6][2]["RewardRepairValue"]["Value"] = 400
	tSoulBall_RebirthPossible[3311041][6][3] = {}
	tSoulBall_RebirthPossible[3311041][6][3]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][6][3]["ItemChance"] = 1200
	tSoulBall_RebirthPossible[3311041][6][3]["RewardStrengthValue"] = {}
	tSoulBall_RebirthPossible[3311041][6][3]["RewardStrengthValue"]["Value"] = 500
	tSoulBall_RebirthPossible[3311041][6][4] = {}
	tSoulBall_RebirthPossible[3311041][6][4]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][6][4]["ItemChance"] = 1300
	tSoulBall_RebirthPossible[3311041][6][4]["RewardItem"] = {}
	tSoulBall_RebirthPossible[3311041][6][4]["RewardItem"][1] = {}
	tSoulBall_RebirthPossible[3311041][6][4]["RewardItem"][1]["Id"] = 3310804
	tSoulBall_RebirthPossible[3311041][6][4]["RewardItem"][1]["Attr"] = "0 8"
	tSoulBall_RebirthPossible[3311041][6][5] = {}
	tSoulBall_RebirthPossible[3311041][6][5]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][6][5]["ItemChance"] = 1000
	tSoulBall_RebirthPossible[3311041][6][5]["RewardEMoneyMono"] = {}
	tSoulBall_RebirthPossible[3311041][6][5]["RewardEMoneyMono"]["Value"] = 150
	tSoulBall_RebirthPossible[3311041][6][6] = {}
	tSoulBall_RebirthPossible[3311041][6][6]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][6][6]["ItemChance"] = 500
	tSoulBall_RebirthPossible[3311041][6][6]["RewardItem"] = {}
	tSoulBall_RebirthPossible[3311041][6][6]["RewardItem"][1] = {}
	tSoulBall_RebirthPossible[3311041][6][6]["RewardItem"][1]["Id"] = 1088000
	tSoulBall_RebirthPossible[3311041][6][6]["RewardItem"][1]["Attr"] = "0 1"
	tSoulBall_RebirthPossible[3311041][6][6]["GlobalId"] = 53014
	tSoulBall_RebirthPossible[3311041][6][6]["Pos"] = 5
	tSoulBall_RebirthPossible[3311041][6][6]["MaxData"] = 1
	tSoulBall_RebirthPossible[3311041][6][6]["FullIndex"] = 7
	tSoulBall_RebirthPossible[3311041][6][7] = {}
	tSoulBall_RebirthPossible[3311041][6][7]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][6][7]["ItemChance"] = 1600
	tSoulBall_RebirthPossible[3311041][6][7]["RewardItem"] = {}
	tSoulBall_RebirthPossible[3311041][6][7]["RewardItem"][1] = {}
	tSoulBall_RebirthPossible[3311041][6][7]["RewardItem"][1]["Id"] = 3002030
	tSoulBall_RebirthPossible[3311041][6][7]["RewardItem"][1]["Attr"] = "0 5"
	tSoulBall_RebirthPossible[3311041][6][8] = {}
	tSoulBall_RebirthPossible[3311041][6][8]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][6][8]["ItemChance"] = 800
	tSoulBall_RebirthPossible[3311041][6][8]["RewardItem"] = {}
	tSoulBall_RebirthPossible[3311041][6][8]["RewardItem"][1] = {}
	tSoulBall_RebirthPossible[3311041][6][8]["RewardItem"][1]["Id"] = 3003126
	tSoulBall_RebirthPossible[3311041][6][8]["RewardItem"][1]["Attr"] = "0 1 3"
	tSoulBall_RebirthPossible[3311041][6][9] = {}
	tSoulBall_RebirthPossible[3311041][6][9]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][6][9]["ItemChance"] = 1300
	tSoulBall_RebirthPossible[3311041][6][9]["RewardItem"] = {}
	tSoulBall_RebirthPossible[3311041][6][9]["RewardItem"][1] = {}
	tSoulBall_RebirthPossible[3311041][6][9]["RewardItem"][1]["Id"] = 3009001
	tSoulBall_RebirthPossible[3311041][6][9]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	
	--140~150奖励
	tSoulBall_RebirthPossible[3311041][7] = {}
	tSoulBall_RebirthPossible[3311041][7]["ItemChanceSum"] = 10000
	tSoulBall_RebirthPossible[3311041][7]["LogId"] = 12001178
	tSoulBall_RebirthPossible[3311041][7]["LogStep"] = "4[7]"
	
	tSoulBall_RebirthPossible[3311041][7][1] = {}
	tSoulBall_RebirthPossible[3311041][7][1]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][7][1]["ItemChance"] = 1300
	tSoulBall_RebirthPossible[3311041][7][1]["RewardCultivation"] = {}
	tSoulBall_RebirthPossible[3311041][7][1]["RewardCultivation"]["Value"] = 650
	tSoulBall_RebirthPossible[3311041][7][2] = {}
	tSoulBall_RebirthPossible[3311041][7][2]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][7][2]["ItemChance"] = 1000
	tSoulBall_RebirthPossible[3311041][7][2]["RewardRepairValue"] = {}
	tSoulBall_RebirthPossible[3311041][7][2]["RewardRepairValue"]["Value"] = 500
	tSoulBall_RebirthPossible[3311041][7][3] = {}
	tSoulBall_RebirthPossible[3311041][7][3]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][7][3]["ItemChance"] = 1200
	tSoulBall_RebirthPossible[3311041][7][3]["RewardStrengthValue"] = {}
	tSoulBall_RebirthPossible[3311041][7][3]["RewardStrengthValue"]["Value"] = 600
	tSoulBall_RebirthPossible[3311041][7][4] = {}
	tSoulBall_RebirthPossible[3311041][7][4]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][7][4]["ItemChance"] = 1300
	tSoulBall_RebirthPossible[3311041][7][4]["RewardItem"] = {}
	tSoulBall_RebirthPossible[3311041][7][4]["RewardItem"][1] = {}
	tSoulBall_RebirthPossible[3311041][7][4]["RewardItem"][1]["Id"] = 3310804
	tSoulBall_RebirthPossible[3311041][7][4]["RewardItem"][1]["Attr"] = "0 10"
	tSoulBall_RebirthPossible[3311041][7][5] = {}
	tSoulBall_RebirthPossible[3311041][7][5]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][7][5]["ItemChance"] = 1000
	tSoulBall_RebirthPossible[3311041][7][5]["RewardEMoneyMono"] = {}
	tSoulBall_RebirthPossible[3311041][7][5]["RewardEMoneyMono"]["Value"] = 270
	tSoulBall_RebirthPossible[3311041][7][6] = {}
	tSoulBall_RebirthPossible[3311041][7][6]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][7][6]["ItemChance"] = 500
	tSoulBall_RebirthPossible[3311041][7][6]["RewardItem"] = {}
	tSoulBall_RebirthPossible[3311041][7][6]["RewardItem"][1] = {}
	tSoulBall_RebirthPossible[3311041][7][6]["RewardItem"][1]["Id"] = 1088000
	tSoulBall_RebirthPossible[3311041][7][6]["RewardItem"][1]["Attr"] = "0 1"
	tSoulBall_RebirthPossible[3311041][7][6]["GlobalId"] = 53015
	tSoulBall_RebirthPossible[3311041][7][6]["Pos"] = 1
	tSoulBall_RebirthPossible[3311041][7][6]["MaxData"] = 1
	tSoulBall_RebirthPossible[3311041][7][6]["FullIndex"] = 7
	tSoulBall_RebirthPossible[3311041][7][7] = {}
	tSoulBall_RebirthPossible[3311041][7][7]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][7][7]["ItemChance"] = 1600
	tSoulBall_RebirthPossible[3311041][7][7]["RewardItem"] = {}
	tSoulBall_RebirthPossible[3311041][7][7]["RewardItem"][1] = {}
	tSoulBall_RebirthPossible[3311041][7][7]["RewardItem"][1]["Id"] = 3002030
	tSoulBall_RebirthPossible[3311041][7][7]["RewardItem"][1]["Attr"] = "0 5"
	tSoulBall_RebirthPossible[3311041][7][8] = {}
	tSoulBall_RebirthPossible[3311041][7][8]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][7][8]["ItemChance"] = 800
	tSoulBall_RebirthPossible[3311041][7][8]["RewardItem"] = {}
	tSoulBall_RebirthPossible[3311041][7][8]["RewardItem"][1] = {}
	tSoulBall_RebirthPossible[3311041][7][8]["RewardItem"][1]["Id"] = 3003126
	tSoulBall_RebirthPossible[3311041][7][8]["RewardItem"][1]["Attr"] = "0 1 3"
	tSoulBall_RebirthPossible[3311041][7][9] = {}
	tSoulBall_RebirthPossible[3311041][7][9]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossible[3311041][7][9]["ItemChance"] = 1300
	tSoulBall_RebirthPossible[3311041][7][9]["RewardItem"] = {}
	tSoulBall_RebirthPossible[3311041][7][9]["RewardItem"][1] = {}
	tSoulBall_RebirthPossible[3311041][7][9]["RewardItem"][1]["Id"] = 3009001
	tSoulBall_RebirthPossible[3311041][7][9]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	
-------------二转额外随机赤炼石
local tSoulBall_RebirthPossibleStone = {}
tSoulBall_RebirthPossibleStone[3311041] = {}
	--80~89级
	tSoulBall_RebirthPossibleStone[3311041][1] = {}
	tSoulBall_RebirthPossibleStone[3311041][1]["ItemChanceSum"] = 10000
	tSoulBall_RebirthPossibleStone[3311041][1]["LogId"] = 12001178
	tSoulBall_RebirthPossibleStone[3311041][1]["LogStep"] = "3[1]"
	
	tSoulBall_RebirthPossibleStone[3311041][1][1] = {}
	tSoulBall_RebirthPossibleStone[3311041][1][1]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossibleStone[3311041][1][1]["ItemChance"] = 10000
	tSoulBall_RebirthPossibleStone[3311041][1][1]["RewardItem"] = {}
	tSoulBall_RebirthPossibleStone[3311041][1][1]["RewardItem"][1] = {}
	tSoulBall_RebirthPossibleStone[3311041][1][1]["RewardItem"][1]["Id"] = 730001
	tSoulBall_RebirthPossibleStone[3311041][1][1]["RewardItem"][1]["Attr"] = "0 1 3"

	--90~99级
	tSoulBall_RebirthPossibleStone[3311041][2] = {}
	tSoulBall_RebirthPossibleStone[3311041][2]["ItemChanceSum"] = 10000
	tSoulBall_RebirthPossibleStone[3311041][2]["LogId"] = 12001178
	tSoulBall_RebirthPossibleStone[3311041][2]["LogStep"] = "3[2]"
	
	tSoulBall_RebirthPossibleStone[3311041][2][1] = {}
	tSoulBall_RebirthPossibleStone[3311041][2][1]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossibleStone[3311041][2][1]["ItemChance"] = 10000
	tSoulBall_RebirthPossibleStone[3311041][2][1]["RewardItem"] = {}
	tSoulBall_RebirthPossibleStone[3311041][2][1]["RewardItem"][1] = {}
	tSoulBall_RebirthPossibleStone[3311041][2][1]["RewardItem"][1]["Id"] = 730002
	tSoulBall_RebirthPossibleStone[3311041][2][1]["RewardItem"][1]["Attr"] = "0 1 3"

	--100~109奖励
	tSoulBall_RebirthPossibleStone[3311041][3] = {}
	tSoulBall_RebirthPossibleStone[3311041][3]["ItemChanceSum"] = 10000
	tSoulBall_RebirthPossibleStone[3311041][3]["LogId"] = 12001178
	tSoulBall_RebirthPossibleStone[3311041][3]["LogStep"] = "3[3]"
	
	tSoulBall_RebirthPossibleStone[3311041][3][1] = {}
	tSoulBall_RebirthPossibleStone[3311041][3][1]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossibleStone[3311041][3][1]["ItemChance"] = 10000
	tSoulBall_RebirthPossibleStone[3311041][3][1]["RewardItem"] = {}
	tSoulBall_RebirthPossibleStone[3311041][3][1]["RewardItem"][1] = {}
	tSoulBall_RebirthPossibleStone[3311041][3][1]["RewardItem"][1]["Id"] = 730002
	tSoulBall_RebirthPossibleStone[3311041][3][1]["RewardItem"][1]["Attr"] = "0 2 3"

	--110~119奖励
	tSoulBall_RebirthPossibleStone[3311041][4] = {}
	tSoulBall_RebirthPossibleStone[3311041][4]["ItemChanceSum"] = 10000
	tSoulBall_RebirthPossibleStone[3311041][4]["LogId"] = 12001178
	tSoulBall_RebirthPossibleStone[3311041][4]["LogStep"] = "3[4]"
	
	tSoulBall_RebirthPossibleStone[3311041][4][1] = {}
	tSoulBall_RebirthPossibleStone[3311041][4][1]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossibleStone[3311041][4][1]["ItemChance"] = 10000
	tSoulBall_RebirthPossibleStone[3311041][4][1]["RewardItem"] = {}
	tSoulBall_RebirthPossibleStone[3311041][4][1]["RewardItem"][1] = {}
	tSoulBall_RebirthPossibleStone[3311041][4][1]["RewardItem"][1]["Id"] = 730003
	tSoulBall_RebirthPossibleStone[3311041][4][1]["RewardItem"][1]["Attr"] = "0 1 3"

--120~129奖励
	tSoulBall_RebirthPossibleStone[3311041][5] = {}
	tSoulBall_RebirthPossibleStone[3311041][5]["ItemChanceSum"] = 10000
	tSoulBall_RebirthPossibleStone[3311041][5]["LogId"] = 12001178
	tSoulBall_RebirthPossibleStone[3311041][5]["LogStep"] = "3[5]"
	
	tSoulBall_RebirthPossibleStone[3311041][5][1] = {}
	tSoulBall_RebirthPossibleStone[3311041][5][1]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossibleStone[3311041][5][1]["ItemChance"] = 9000
	tSoulBall_RebirthPossibleStone[3311041][5][1]["RewardItem"] = {}
	tSoulBall_RebirthPossibleStone[3311041][5][1]["RewardItem"][1] = {}
	tSoulBall_RebirthPossibleStone[3311041][5][1]["RewardItem"][1]["Id"] = 730003
	tSoulBall_RebirthPossibleStone[3311041][5][1]["RewardItem"][1]["Attr"] = "0 1 3"
	
	tSoulBall_RebirthPossibleStone[3311041][5][2] = {}
	tSoulBall_RebirthPossibleStone[3311041][5][2]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossibleStone[3311041][5][2]["ItemChance"] = 1000
	tSoulBall_RebirthPossibleStone[3311041][5][2]["RewardItem"] = {}
	tSoulBall_RebirthPossibleStone[3311041][5][2]["RewardItem"][1] = {}
	tSoulBall_RebirthPossibleStone[3311041][5][2]["RewardItem"][1]["Id"] = 730003
	tSoulBall_RebirthPossibleStone[3311041][5][2]["RewardItem"][1]["Attr"] = "0 2 3"
	
--130~139奖励
	tSoulBall_RebirthPossibleStone[3311041][6] = {}
	tSoulBall_RebirthPossibleStone[3311041][6]["ItemChanceSum"] = 10000
	tSoulBall_RebirthPossibleStone[3311041][6]["LogId"] = 12001178
	tSoulBall_RebirthPossibleStone[3311041][6]["LogStep"] = "3[6]"
	
	tSoulBall_RebirthPossibleStone[3311041][6][1] = {}
	tSoulBall_RebirthPossibleStone[3311041][6][1]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossibleStone[3311041][6][1]["ItemChance"] = 8000
	tSoulBall_RebirthPossibleStone[3311041][6][1]["RewardItem"] = {}
	tSoulBall_RebirthPossibleStone[3311041][6][1]["RewardItem"][1] = {}
	tSoulBall_RebirthPossibleStone[3311041][6][1]["RewardItem"][1]["Id"] = 730003
	tSoulBall_RebirthPossibleStone[3311041][6][1]["RewardItem"][1]["Attr"] = "0 1 3"
	
	tSoulBall_RebirthPossibleStone[3311041][6][2] = {}
	tSoulBall_RebirthPossibleStone[3311041][6][2]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossibleStone[3311041][6][2]["ItemChance"] = 2000
	tSoulBall_RebirthPossibleStone[3311041][6][2]["RewardItem"] = {}
	tSoulBall_RebirthPossibleStone[3311041][6][2]["RewardItem"][1] = {}
	tSoulBall_RebirthPossibleStone[3311041][6][2]["RewardItem"][1]["Id"] = 730003
	tSoulBall_RebirthPossibleStone[3311041][6][2]["RewardItem"][1]["Attr"] = "0 2 3"
	
--140~150奖励
	tSoulBall_RebirthPossibleStone[3311041][7] = {}
	tSoulBall_RebirthPossibleStone[3311041][7]["ItemChanceSum"] = 10000
	tSoulBall_RebirthPossibleStone[3311041][7]["LogId"] = 12001178
	tSoulBall_RebirthPossibleStone[3311041][7]["LogStep"] = "3[7]"
	
	tSoulBall_RebirthPossibleStone[3311041][7][1] = {}
	tSoulBall_RebirthPossibleStone[3311041][7][1]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossibleStone[3311041][7][1]["ItemChance"] = 5000
	tSoulBall_RebirthPossibleStone[3311041][7][1]["RewardItem"] = {}
	tSoulBall_RebirthPossibleStone[3311041][7][1]["RewardItem"][1] = {}
	tSoulBall_RebirthPossibleStone[3311041][7][1]["RewardItem"][1]["Id"] = 730003
	tSoulBall_RebirthPossibleStone[3311041][7][1]["RewardItem"][1]["Attr"] = "0 1 3"
	
	tSoulBall_RebirthPossibleStone[3311041][7][2] = {}
	tSoulBall_RebirthPossibleStone[3311041][7][2]["RandomItemChanceType"] = 2
	tSoulBall_RebirthPossibleStone[3311041][7][2]["ItemChance"] = 5000
	tSoulBall_RebirthPossibleStone[3311041][7][2]["RewardItem"] = {}
	tSoulBall_RebirthPossibleStone[3311041][7][2]["RewardItem"][1] = {}
	tSoulBall_RebirthPossibleStone[3311041][7][2]["RewardItem"][1]["Id"] = 730003
	tSoulBall_RebirthPossibleStone[3311041][7][2]["RewardItem"][1]["Attr"] = "0 2 3"
	
--上线给魂球
local tSoulBall_OnLineReward = {}
	tSoulBall_OnLineReward[3311041] = {}
	tSoulBall_OnLineReward[3311041]["RewardItem"] = {}
	tSoulBall_OnLineReward[3311041]["RewardItem"][1] = {}
	tSoulBall_OnLineReward[3311041]["RewardItem"][1]["Id"] = 3311041
	tSoulBall_OnLineReward[3311041]["RewardItem"][1]["Attr"] = "0 1"
	tSoulBall_OnLineReward[3311041]["LogId"] = 12001178
	tSoulBall_OnLineReward[3311041]["LogStep"] = "5[1]"
----------------------------------------------逻辑部分--------------------------------------------------------------------
--每小时清理限量掩码
function SoulBall_ClearGlobal()
	local nGlobalId = 0
	for i = 1,3 do 
		nGlobalId = tSoulBall_Global[i]
		Sys_ResetAllSynaGlobalData(nGlobalId)
	end
end
--杀怪触发
function SoulBall_KillMonster(nMonsterId)
	if not SpecialServer_ChkNoGiftServer() then
		return
	end
	local nUserId = Get_UserId()
	local nLevel = Get_UserLevel(nUserId)
	local nEvent = tSoulBall_Stc[1]["EventType"]
	local nType = tSoulBall_Stc[1]["DataType"]
	local nEvent_Day = tSoulBall_Stc[2]["EventType"]
	local nType_Day = tSoulBall_Stc[2]["DataType"]
	local nAddData = 1
	local nMonsterLev = Get_MonsterLevel()
	
	--等级判断
	if nLevel < tSoulBall_Cont["JudgeLevel"]["Min"] then
		return
	end
	
	-- 判断玩家身上是否有魂珠
	if not Item_ChkItem(tSoulBall_Cont["SoulBallItem"]) then
		return
	end
	
	--获取当前怪物增加的魂值
	if nMonsterLev >= tSoulBall_Cont["MonsterLevMin"] then 
		local nIndex = SoulBall_MonsterLevelJudge(nMonsterLev)
		nAddData =tSoulBall_Cont["MonsterAddValue"][nIndex]
	end
	
	--大boss给400点
	for i,v in pairs(tSoulBall_Cont["MonsterBoss"]) do
		if nMonsterId == v then 
			nAddData = tSoulBall_Cont["MonsterBossAddValue"]
		end
	end
	
	--隔天清理杀怪掩码
	if Task_StcInterval(nEvent,nType,1,4) then 
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
	
	--隔天清理领奖掩码
	if Task_StcInterval(nEvent_Day,nType_Day,1,4) then 
		Task_SetStatistic(nEvent_Day,nType_Day,0,1,nUserId)
		Task_SetStcTimestamp(nEvent_Day,nType_Day,0,nUserId)
	end
	
	--今日领取过奖励，杀怪不再计数
	if Task_ChkStcValue(nEvent_Day,nType_Day,">=",1,nUserId) then
		return
	end
	
	-- 置掩码
	local nData = tSoulBall_KillMonsterNum[nUserId] or 0
	nData = nData + nAddData
	tSoulBall_KillMonsterNum[nUserId] = nData
	--500只记录到掩码一次
	if nData%500 == 0 then
		Task_AddStatistic(nEvent,nType,nData,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		tSoulBall_KillMonsterNum[nUserId] = 0
	end
end
--使用魂珠
function tSoulBall_UserItem(nItemId)
	if not SpecialServer_ChkNoGiftServer() then
		return
	end
	local nEvent = tSoulBall_Stc[1]["EventType"]
	local nType = tSoulBall_Stc[1]["DataType"]
	local nEvent_Day = tSoulBall_Stc[2]["EventType"]
	local nType_Day = tSoulBall_Stc[2]["DataType"]
	local nUserId = Get_UserId()
	local nLevel = Get_UserLevel(nUserId)
	local nRewardIndex = SoulBall_LevelJudge(nLevel)
	local nStoneIndex = 0
	local nData = tSoulBall_KillMonsterNum[nUserId] or 0
	local nUserMetempsychosis = Get_UserMetempsychosis()
	--隔天清理杀怪掩码
	if Task_StcInterval(nEvent,nType,1,4) then 
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		tSoulBall_KillMonsterNum[nUserId] = 0
	end
	
	--隔天清理领奖掩码
	if Task_StcInterval(nEvent_Day,nType_Day,1,4) then 
		Task_SetStatistic(nEvent_Day,nType_Day,0,1,nUserId)
		Task_SetStcTimestamp(nEvent_Day,nType_Day,0,nUserId)
	end
	
	--小于领取奖励等级
	if nLevel < tSoulBall_Cont["JudgeLevel"]["Min"] then
		return
	end
	
	--今日已领取过奖励
	if Task_ChkStcValue(nEvent_Day,nType_Day,">=",1,nUserId) then
		Sys_MsgBox(tSoulBall_Text["Fail"])
		return
	end
	
	--判断是否达到能领取奖励的妖魂数量
	local nNum = Get_UserStatisticValue(nEvent,nType,nUserId)
	nData = nNum + nData
	local nNeedNum = tSoulBall_Cont["MonsterNum"][nRewardIndex]
	if nData < nNeedNum then
		if nUserMetempsychosis < 2 then 
			tItem[nItemId]["Text111"] = tSoulBall_Text[nItemId][nRewardIndex]["Text111"]
			tItem[nItemId]["Text112"] = tSoulBall_Text[nItemId][nRewardIndex]["Text114"]
			tItem[nItemId]["Text113"] = tSoulBall_Text[nItemId][nRewardIndex]["Text115"]
			tItem[nItemId]["Text114"] = tSoulBall_Text[nItemId][nRewardIndex]["Text116"]
			tItem[nItemId]["Text115"] = string.format(tSoulBall_Text[nItemId][nRewardIndex]["Text117"],nNeedNum,nData)
		else
			tItem[nItemId]["Text111"] = tSoulBall_Text[nItemId][nRewardIndex]["Text111"]
			tItem[nItemId]["Text112"] = tSoulBall_Text[nItemId][nRewardIndex]["Text112"]
			tItem[nItemId]["Text113"] = tSoulBall_Text[nItemId][nRewardIndex]["Text113"]
			tItem[nItemId]["Text114"] = tSoulBall_Text[nItemId][nRewardIndex]["Text116"]
			tItem[nItemId]["Text115"] = string.format(tSoulBall_Text[nItemId][nRewardIndex]["Text117"],nNeedNum,nData)
		end
			LinkItemGossipFunc_New(nItemId,"1-1")
		return
	end
	

	--二转以上玩家
	if nUserMetempsychosis >= 2 then 
		--检测背包空间
		if not User_CheckLeftSpace(tSoulBall_Cont["RebirthSpace"]) then
			Sys_MsgBox(tSoulBall_Text["NoSpaceRebirth"])
			return
		end
		
		--置掩码给奖励
		SoulBall_AddStc(nUserId)
		--二转玩家按等级区间给赤炼石
		RewardTemplate_NewRandomNoTip(tSoulBall_RebirthPossibleStone[nItemId],nRewardIndex,nUserId)
		--必给奖励
		RewardTemplate_UseItemAndMsg(tSoulBall_Reword[nItemId][nRewardIndex],nUserId)
		--二转随机奖励
		RewardTemplate_NewRandomNoTip(tSoulBall_RebirthPossible[nItemId],nRewardIndex,nUserId)
		return
	end
	--非二转玩家只有随机奖励
	--判断背包
	local nNeedSpace = RewardTemplate_GetRandomSpace(tSoulBall_PossibleReword[nItemId],nRewardIndex) + 1
	if not User_CheckLeftSpace(nNeedSpace)then
		User_TalkChannel2005(string.format(tSoulBall_Text["NoSpace"],nNeedSpace))
		return
	end
	--置掩码给奖励
	SoulBall_AddStc(nUserId)
	--必给奖励
	RewardTemplate_UseItemAndMsg(tSoulBall_Reword[nItemId][nRewardIndex],nUserId)
	--随机奖励
	RewardTemplate_NewRandomNoTip(tSoulBall_PossibleReword[nItemId],nRewardIndex,nUserId)
	
end
--判断玩家在哪个等级区间
function SoulBall_LevelJudge(nLevel)
	for i,v in pairs(tSoulBall_Cont["Level"]) do
		if nLevel>= v[1] and nLevel<= v[2] then
			return i
		end
	end
end
--判断怪物在哪个等级区间
function SoulBall_MonsterLevelJudge(nMonsterLev)
	for i,v in pairs(tSoulBall_Cont["MonsterLevel"]) do
		if nMonsterLev >= v[1] and nMonsterLev <= v[2] then
			return i
		end
	end
end

--置掩码
function SoulBall_AddStc(nUserId)
--领取掩码设置为1 临时表清零
	local nEvent = tSoulBall_Stc[1]["EventType"]
	local nType = tSoulBall_Stc[1]["DataType"]
	local nEvent_Day = tSoulBall_Stc[2]["EventType"]
	local nType_Day = tSoulBall_Stc[2]["DataType"]
	Task_SetStatistic(nEvent_Day,nType_Day,1,1,nUserId)
	Task_SetStcTimestamp(nEvent_Day,nType_Day,0,nUserId)
--清空杀怪数量
	Task_SetStatistic(nEvent,nType,0,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	tSoulBall_KillMonsterNum[nUserId] = 0
--出一个领取光效
	User_EffectAdd("self","angelwing",nUserId)
end
--上线触发
function SoulBall_OnLine()
	if not SpecialServer_ChkNoGiftServer() then
		return
	end
	local nItemId = tSoulBall_Cont["SoulBallItem"] 
	local nUserId = Get_UserId()
	local nLevel = Get_UserLevel(nUserId)
	local nEvent = tSoulBall_Stc[3]["EventType"]
	local nType = tSoulBall_Stc[3]["DataType"]
--等级判断
	if nLevel < tSoulBall_Cont["JudgeLevel"]["Min"] then
		return
	end
	
	--还未领取过魂球或领取过丢失了
	if (not Item_ChkItem(nItemId)) or  Task_ChkStcValue(nEvent,nType,"<",1,nUserId) then
		Task_SetStatistic(nEvent,nType,1,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		Sys_MsgBox(tSoulBall_Text["OnLine"])
		RewardTemplate_UseItemAndMsg(tSoulBall_OnLineReward[nItemId],nUserId)
	end
end

---------------------------------------------物品部分--------------------------------------
tItemFace[3311041] = 1891
tItem[3311041] = tItem[3311041] or {}
tItem[3311041]["Function"] = function(nItemId,sItemName)
	tSoulBall_UserItem(nItemId)
end

tItem[3311041]["DialogueText"] = tTeamDrinking_Text[3311041]
tItem[3311041]["Text1-1"] = {111,112,113,114,115}
	tItem[3311041]["Text111"] = ""
	tItem[3311041]["Text112"] = ""
	tItem[3311041]["Text113"] = ""
	tItem[3311041]["Text114"] = ""
	tItem[3311041]["Text115"] = ""
tItem[3311041]["tOption1-1"] = {111}
tItem[3311041]["Option111"] = tSoulBall_Text[3311041]["Option111"]
---------------------------------------------杀怪部分-------------------------------------
local tSoulBall_Monst={}
	tSoulBall_Monst["Function"] = SoulBall_KillMonster
	tSoulBall_Monst["MonsterId"] = {4833,4834,4835,4836,4838,4837,4839,4840,4841,4868,4842,4843,4844,4845,4846,4847,4848,4849,
	4850,4851,4852,4853,4854,4855,4856,4857,4858,4859,4860,4862,4863,4865,4867,4869,4870,4871,4872,4873,4874,
	4875,4876,4877,4878,4879,4880,4881,4882,4883,4884,4885,4886,4887,4888,4889,4890,4891,4892,4893,4894,4895,4896,4897,4898,4899,4900,4901,4902,4903,4904,4905,4906,4907,4908,4909,4910}
table.insert(tMonsterDrop_AreaLoad,tSoulBall_Monst)

---------------------------------------------上线自检---------------------------------------------
table.insert(tSystem_PlayLogin_Func,SoulBall_OnLine)
---------------------------------------------时间自检----------------------------------------------------------------------
local tSoulBall_ClearGlobal= {}
	--每小时清理限量掩码
	tSoulBall_ClearGlobal["Type"] = 2
	tSoulBall_ClearGlobal["TimeType"] = 5
	tSoulBall_ClearGlobal["Time"] = "00 00"
	tSoulBall_ClearGlobal["Func"] = SoulBall_ClearGlobal
	table.insert(tSystemTime_InitialData,tSoulBall_ClearGlobal)
	