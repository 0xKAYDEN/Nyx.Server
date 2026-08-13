------------------------------------------------------------------------------------
--Name：            191028[英文征服][活动脚本]11月征服大富翁(11.15-11.30)
--Creator:      蔡颖静
--Created:     2019/10/28
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
--lua.ini:41598
--logid:12001714

----------------------------------表配置部分--------------------------------------------
local tThanksGiving2019Monopoly_Data={}

tThanksGiving2019Monopoly_Data["Stc"]={}
--是否领取每日骰子
tThanksGiving2019Monopoly_Data["Stc"]["DiceEvent"]=209
tThanksGiving2019Monopoly_Data["Stc"]["DiceType"]=0
--当前进度
tThanksGiving2019Monopoly_Data["Stc"]["StepEvent"]=209
tThanksGiving2019Monopoly_Data["Stc"]["StepType"]=1
--下次掷筛数翻倍
tThanksGiving2019Monopoly_Data["Stc"]["TwiceEvent"]=209
tThanksGiving2019Monopoly_Data["Stc"]["TwiceType"]=2
--眩晕转态
tThanksGiving2019Monopoly_Data["Stc"]["XunYun"]={}
tThanksGiving2019Monopoly_Data["Stc"]["XunYun"][1]={}
tThanksGiving2019Monopoly_Data["Stc"]["XunYun"][1]["Event"]=209
tThanksGiving2019Monopoly_Data["Stc"]["XunYun"][1]["Type"]=3

tThanksGiving2019Monopoly_Data["Stc"]["XunYun"][2]={}
tThanksGiving2019Monopoly_Data["Stc"]["XunYun"][2]["Event"]=209
tThanksGiving2019Monopoly_Data["Stc"]["XunYun"][2]["Type"]=9
--购买神兽
tThanksGiving2019Monopoly_Data["Stc"]["Monster"]={}
--小蓝 点数翻倍
tThanksGiving2019Monopoly_Data["Stc"]["Monster"][1]={}
tThanksGiving2019Monopoly_Data["Stc"]["Monster"][1]["Event"]=209
tThanksGiving2019Monopoly_Data["Stc"]["Monster"][1]["Type"]=4
--小粉 奖励翻倍
tThanksGiving2019Monopoly_Data["Stc"]["Monster"][2]={}
tThanksGiving2019Monopoly_Data["Stc"]["Monster"][2]["Event"]=209
tThanksGiving2019Monopoly_Data["Stc"]["Monster"][2]["Type"]=5

tThanksGiving2019Monopoly_Data["Stc"][3326735]={}
tThanksGiving2019Monopoly_Data["Stc"][3326735]["Event"]=209
tThanksGiving2019Monopoly_Data["Stc"][3326735]["Type"]=6

--陷阱触发掩码
tThanksGiving2019Monopoly_Data["Stc"]["Trap"]={}
tThanksGiving2019Monopoly_Data["Stc"]["Trap"][1]={}
tThanksGiving2019Monopoly_Data["Stc"]["Trap"][1]["Event"]=209
tThanksGiving2019Monopoly_Data["Stc"]["Trap"][1]["Type"]=7

tThanksGiving2019Monopoly_Data["Stc"]["Trap"][2]={}
tThanksGiving2019Monopoly_Data["Stc"]["Trap"][2]["Event"]=209
tThanksGiving2019Monopoly_Data["Stc"]["Trap"][2]["Type"]=8

--是否正在投筛子
tThanksGiving2019Monopoly_Data["Stc"]["Playing"]={}
tThanksGiving2019Monopoly_Data["Stc"]["Playing"]["Event"]=209
tThanksGiving2019Monopoly_Data["Stc"]["Playing"]["Type"]=10

--前12格
tThanksGiving2019Monopoly_Data["StcData"]={}

tThanksGiving2019Monopoly_Data["StcData"][1] ={}
tThanksGiving2019Monopoly_Data["StcData"][1][1] = 1
tThanksGiving2019Monopoly_Data["StcData"][1][2] = 2
tThanksGiving2019Monopoly_Data["StcData"][1][3] = 4
tThanksGiving2019Monopoly_Data["StcData"][1][4] = 8
tThanksGiving2019Monopoly_Data["StcData"][1][5] = 16
tThanksGiving2019Monopoly_Data["StcData"][1][6] = 32
tThanksGiving2019Monopoly_Data["StcData"][1][7] = 64
tThanksGiving2019Monopoly_Data["StcData"][1][8] = 128
tThanksGiving2019Monopoly_Data["StcData"][1][9] = 256
tThanksGiving2019Monopoly_Data["StcData"][1][10] = 512
tThanksGiving2019Monopoly_Data["StcData"][1][11] = 1024
tThanksGiving2019Monopoly_Data["StcData"][1][12] = 2048

--前12格
tThanksGiving2019Monopoly_Data["StcData"][2] ={}
tThanksGiving2019Monopoly_Data["StcData"][2][13] = 1
tThanksGiving2019Monopoly_Data["StcData"][2][14] = 2
tThanksGiving2019Monopoly_Data["StcData"][2][15] = 4
tThanksGiving2019Monopoly_Data["StcData"][2][16] = 8
tThanksGiving2019Monopoly_Data["StcData"][2][17] = 16
tThanksGiving2019Monopoly_Data["StcData"][2][18] = 32
tThanksGiving2019Monopoly_Data["StcData"][2][19] = 64
tThanksGiving2019Monopoly_Data["StcData"][2][20] = 128
tThanksGiving2019Monopoly_Data["StcData"][2][21] = 256
tThanksGiving2019Monopoly_Data["StcData"][2][22] = 512
tThanksGiving2019Monopoly_Data["StcData"][2][23] = 1024



tThanksGiving2019Monopoly_Data["GetDice"]={}
tThanksGiving2019Monopoly_Data["GetDice"]["LogId"] = 12001714
tThanksGiving2019Monopoly_Data["GetDice"]["RewardItem"] = {}
tThanksGiving2019Monopoly_Data["GetDice"]["RewardItem"][1] = {}
tThanksGiving2019Monopoly_Data["GetDice"]["RewardItem"][1]["Id"] = 3326599
tThanksGiving2019Monopoly_Data["GetDice"]["RewardItem"][1]["Attr"] = "0 1"
tThanksGiving2019Monopoly_Data["GetDice"]["RewardEffect"] = {}
tThanksGiving2019Monopoly_Data["GetDice"]["RewardEffect"]["SzObj"] = "self"
tThanksGiving2019Monopoly_Data["GetDice"]["RewardEffect"]["Effect"] = "angelwing"

tThanksGiving2019Monopoly_Data["DeleteDice"]={}
tThanksGiving2019Monopoly_Data["DeleteDice"]["LogId"] = 12001714
tThanksGiving2019Monopoly_Data["DeleteDice"]["DeleteItem"] = {}
tThanksGiving2019Monopoly_Data["DeleteDice"]["DeleteItem"][1] = {}
tThanksGiving2019Monopoly_Data["DeleteDice"]["DeleteItem"][1]["Id"] = 3326599
tThanksGiving2019Monopoly_Data["DeleteDice"]["DeleteItem"][1]["ItemNum"] = 1
tThanksGiving2019Monopoly_Data["DeleteDice"]["RewardEffect"] = {}
tThanksGiving2019Monopoly_Data["DeleteDice"]["RewardEffect"]["SzObj"] = "self"
tThanksGiving2019Monopoly_Data["DeleteDice"]["RewardEffect"]["Effect"] = "angelwing"

tThanksGiving2019Monopoly_Data["BuyDice"]={}
tThanksGiving2019Monopoly_Data["BuyDice"]["LogId"] = 12001714
tThanksGiving2019Monopoly_Data["BuyDice"]["RewardItem"] = {}
tThanksGiving2019Monopoly_Data["BuyDice"]["RewardItem"][1] = {}
tThanksGiving2019Monopoly_Data["BuyDice"]["RewardItem"][1]["Id"] = 3326599
tThanksGiving2019Monopoly_Data["BuyDice"]["RewardItem"][1]["Attr"] = "0 %d"
tThanksGiving2019Monopoly_Data["BuyDice"]["RewardEffect"] = {}
tThanksGiving2019Monopoly_Data["BuyDice"]["RewardEffect"]["SzObj"] = "self"
tThanksGiving2019Monopoly_Data["BuyDice"]["RewardEffect"]["Effect"] = "angelwing"


tThanksGiving2019Monopoly_Data["Pos"]={}
tThanksGiving2019Monopoly_Data["Pos"]["MapId"]=10701

tThanksGiving2019Monopoly_Data["Pos"][1]={}
tThanksGiving2019Monopoly_Data["Pos"][1]["PosX"]=57
tThanksGiving2019Monopoly_Data["Pos"][1]["PosY"]=140

tThanksGiving2019Monopoly_Data["Pos"][2]={}
tThanksGiving2019Monopoly_Data["Pos"][2]["PosX"]=57
tThanksGiving2019Monopoly_Data["Pos"][2]["PosY"]=131

tThanksGiving2019Monopoly_Data["Pos"][3]={}
tThanksGiving2019Monopoly_Data["Pos"][3]["PosX"]=57
tThanksGiving2019Monopoly_Data["Pos"][3]["PosY"]=122

tThanksGiving2019Monopoly_Data["Pos"][4]={}
tThanksGiving2019Monopoly_Data["Pos"][4]["PosX"]=57
tThanksGiving2019Monopoly_Data["Pos"][4]["PosY"]=113

tThanksGiving2019Monopoly_Data["Pos"][5]={}
tThanksGiving2019Monopoly_Data["Pos"][5]["PosX"]=57
tThanksGiving2019Monopoly_Data["Pos"][5]["PosY"]=104

tThanksGiving2019Monopoly_Data["Pos"][6]={}
tThanksGiving2019Monopoly_Data["Pos"][6]["PosX"]=57
tThanksGiving2019Monopoly_Data["Pos"][6]["PosY"]=95

tThanksGiving2019Monopoly_Data["Pos"][7]={}
tThanksGiving2019Monopoly_Data["Pos"][7]["PosX"]=66
tThanksGiving2019Monopoly_Data["Pos"][7]["PosY"]=95

tThanksGiving2019Monopoly_Data["Pos"][8]={}
tThanksGiving2019Monopoly_Data["Pos"][8]["PosX"]=75
tThanksGiving2019Monopoly_Data["Pos"][8]["PosY"]=95

tThanksGiving2019Monopoly_Data["Pos"][9]={}
tThanksGiving2019Monopoly_Data["Pos"][9]["PosX"]=84
tThanksGiving2019Monopoly_Data["Pos"][9]["PosY"]=95

tThanksGiving2019Monopoly_Data["Pos"][10]={}
tThanksGiving2019Monopoly_Data["Pos"][10]["PosX"]=93
tThanksGiving2019Monopoly_Data["Pos"][10]["PosY"]=95

tThanksGiving2019Monopoly_Data["Pos"][11]={}
tThanksGiving2019Monopoly_Data["Pos"][11]["PosX"]=102
tThanksGiving2019Monopoly_Data["Pos"][11]["PosY"]=95

tThanksGiving2019Monopoly_Data["Pos"][12]={}
tThanksGiving2019Monopoly_Data["Pos"][12]["PosX"]=111
tThanksGiving2019Monopoly_Data["Pos"][12]["PosY"]=95

tThanksGiving2019Monopoly_Data["Pos"][13]={}
tThanksGiving2019Monopoly_Data["Pos"][13]["PosX"]=111
tThanksGiving2019Monopoly_Data["Pos"][13]["PosY"]=104

tThanksGiving2019Monopoly_Data["Pos"][14]={}
tThanksGiving2019Monopoly_Data["Pos"][14]["PosX"]=111
tThanksGiving2019Monopoly_Data["Pos"][14]["PosY"]=113

tThanksGiving2019Monopoly_Data["Pos"][15]={}
tThanksGiving2019Monopoly_Data["Pos"][15]["PosX"]=111
tThanksGiving2019Monopoly_Data["Pos"][15]["PosY"]=122

tThanksGiving2019Monopoly_Data["Pos"][16]={}
tThanksGiving2019Monopoly_Data["Pos"][16]["PosX"]=111
tThanksGiving2019Monopoly_Data["Pos"][16]["PosY"]=131

tThanksGiving2019Monopoly_Data["Pos"][17]={}
tThanksGiving2019Monopoly_Data["Pos"][17]["PosX"]=111
tThanksGiving2019Monopoly_Data["Pos"][17]["PosY"]=140

tThanksGiving2019Monopoly_Data["Pos"][18]={}
tThanksGiving2019Monopoly_Data["Pos"][18]["PosX"]=111
tThanksGiving2019Monopoly_Data["Pos"][18]["PosY"]=149

tThanksGiving2019Monopoly_Data["Pos"][19]={}
tThanksGiving2019Monopoly_Data["Pos"][19]["PosX"]=102
tThanksGiving2019Monopoly_Data["Pos"][19]["PosY"]=149

tThanksGiving2019Monopoly_Data["Pos"][20]={}
tThanksGiving2019Monopoly_Data["Pos"][20]["PosX"]=93
tThanksGiving2019Monopoly_Data["Pos"][20]["PosY"]=149

tThanksGiving2019Monopoly_Data["Pos"][21]={}
tThanksGiving2019Monopoly_Data["Pos"][21]["PosX"]=84
tThanksGiving2019Monopoly_Data["Pos"][21]["PosY"]=149

tThanksGiving2019Monopoly_Data["Pos"][22]={}
tThanksGiving2019Monopoly_Data["Pos"][22]["PosX"]=75
tThanksGiving2019Monopoly_Data["Pos"][22]["PosY"]=149

tThanksGiving2019Monopoly_Data["Pos"][23]={}
tThanksGiving2019Monopoly_Data["Pos"][23]["PosX"]=66
tThanksGiving2019Monopoly_Data["Pos"][23]["PosY"]=149

tThanksGiving2019Monopoly_Data["Pos"][24]={}
tThanksGiving2019Monopoly_Data["Pos"][24]["PosX"]=57
tThanksGiving2019Monopoly_Data["Pos"][24]["PosY"]=149

tThanksGiving2019Monopoly_Data["Pos"][25]={}
tThanksGiving2019Monopoly_Data["Pos"][25]["MapId"]=1002
tThanksGiving2019Monopoly_Data["Pos"][25]["PosX"]=342
tThanksGiving2019Monopoly_Data["Pos"][25]["PosY"]=461

tThanksGiving2019Monopoly_Data["Pos"][26]={}
tThanksGiving2019Monopoly_Data["Pos"][26]["MapId"]=1036
tThanksGiving2019Monopoly_Data["Pos"][26]["PosX"]=187
tThanksGiving2019Monopoly_Data["Pos"][26]["PosY"]=202


tThanksGiving2019Monopoly_Data["ActionId"]={}
tThanksGiving2019Monopoly_Data["ActionId"][1]=575062
tThanksGiving2019Monopoly_Data["ActionId"][2]=575052

tThanksGiving2019Monopoly_Data["ActionId"][4]={}
tThanksGiving2019Monopoly_Data["ActionId"][4][1]=575060
tThanksGiving2019Monopoly_Data["ActionId"][4][2]=575090

tThanksGiving2019Monopoly_Data["ActionId"][5]=575056
tThanksGiving2019Monopoly_Data["ActionId"][6]=575047
tThanksGiving2019Monopoly_Data["ActionId"][7]=575058
tThanksGiving2019Monopoly_Data["ActionId"][8]=575051

tThanksGiving2019Monopoly_Data["ActionId"][11]={}
tThanksGiving2019Monopoly_Data["ActionId"][11][1]=575059
tThanksGiving2019Monopoly_Data["ActionId"][11][2]=575056

tThanksGiving2019Monopoly_Data["ActionId"][12]=575047
tThanksGiving2019Monopoly_Data["ActionId"][13]=575053
tThanksGiving2019Monopoly_Data["ActionId"][14]=575062
tThanksGiving2019Monopoly_Data["ActionId"][15]=575055
tThanksGiving2019Monopoly_Data["ActionId"][17]=575050
tThanksGiving2019Monopoly_Data["ActionId"][18]=575047

tThanksGiving2019Monopoly_Data["ActionId"][20]={}
tThanksGiving2019Monopoly_Data["ActionId"][20][1]=575061
tThanksGiving2019Monopoly_Data["ActionId"][20][2]=575091

tThanksGiving2019Monopoly_Data["ActionId"][22]=575054
tThanksGiving2019Monopoly_Data["ActionId"][23]=575057

tThanksGiving2019Monopoly_Data["ActionId"][24]={}
tThanksGiving2019Monopoly_Data["ActionId"][24][1]=575048
tThanksGiving2019Monopoly_Data["ActionId"][24][2]=575049

--奖励id
tThanksGiving2019Monopoly_Data["RewardItemId"]={}
tThanksGiving2019Monopoly_Data["RewardItemId"][1]=3326599
tThanksGiving2019Monopoly_Data["RewardItemId"][2]=3326737
tThanksGiving2019Monopoly_Data["RewardItemId"][4]=3326745
tThanksGiving2019Monopoly_Data["RewardItemId"][5]=3326741
tThanksGiving2019Monopoly_Data["RewardItemId"][6]=3326732
tThanksGiving2019Monopoly_Data["RewardItemId"][7]=3326743
tThanksGiving2019Monopoly_Data["RewardItemId"][8]=3326736
tThanksGiving2019Monopoly_Data["RewardItemId"][11]=3326744
tThanksGiving2019Monopoly_Data["RewardItemId"][12]=3326732
tThanksGiving2019Monopoly_Data["RewardItemId"][13]=3326738
tThanksGiving2019Monopoly_Data["RewardItemId"][14]=3326599
tThanksGiving2019Monopoly_Data["RewardItemId"][15]=3326740
tThanksGiving2019Monopoly_Data["RewardItemId"][17]=3326735
tThanksGiving2019Monopoly_Data["RewardItemId"][18]=3326732
tThanksGiving2019Monopoly_Data["RewardItemId"][20]=3326746
tThanksGiving2019Monopoly_Data["RewardItemId"][22]=3326739
tThanksGiving2019Monopoly_Data["RewardItemId"][23]=3326742
tThanksGiving2019Monopoly_Data["RewardItemId"][24]={}
tThanksGiving2019Monopoly_Data["RewardItemId"][24][1]=3326733
tThanksGiving2019Monopoly_Data["RewardItemId"][24][2]=3326734


tThanksGiving2019Monopoly_Data["StopOneTime"] = {}
tThanksGiving2019Monopoly_Data["StopOneTime"]["Status"] = 55
tThanksGiving2019Monopoly_Data["StopOneTime"]["Power"] = 0
tThanksGiving2019Monopoly_Data["StopOneTime"]["Secs"] = 432000
tThanksGiving2019Monopoly_Data["StopOneTime"]["Times"] = 1
tThanksGiving2019Monopoly_Data["StopOneTime"]["RemainTime"] = 0
tThanksGiving2019Monopoly_Data["StopOneTime"]["EndTime"] = 0


--骰子概率
tThanksGiving2019Monopoly_Data["DiceProb"]={}
tThanksGiving2019Monopoly_Data["DiceProb"][1]={}
tThanksGiving2019Monopoly_Data["DiceProb"][1]["LogId"] = 12001204
tThanksGiving2019Monopoly_Data["DiceProb"][1]["ItemChanceSum"] = 6000
--1点
tThanksGiving2019Monopoly_Data["DiceProb"][1][1]={}
tThanksGiving2019Monopoly_Data["DiceProb"][1][1]["RandomItemChanceType"] = 2
tThanksGiving2019Monopoly_Data["DiceProb"][1][1]["ItemChance"] = 1000
tThanksGiving2019Monopoly_Data["DiceProb"][1][1]["Point"]=1
--2点
tThanksGiving2019Monopoly_Data["DiceProb"][1][2]={}
tThanksGiving2019Monopoly_Data["DiceProb"][1][2]["RandomItemChanceType"] = 2
tThanksGiving2019Monopoly_Data["DiceProb"][1][2]["ItemChance"] = 1000
tThanksGiving2019Monopoly_Data["DiceProb"][1][2]["Point"]=2
--3点
tThanksGiving2019Monopoly_Data["DiceProb"][1][3]={}
tThanksGiving2019Monopoly_Data["DiceProb"][1][3]["RandomItemChanceType"] = 2
tThanksGiving2019Monopoly_Data["DiceProb"][1][3]["ItemChance"] = 1000
tThanksGiving2019Monopoly_Data["DiceProb"][1][3]["Point"]=3
--4点
tThanksGiving2019Monopoly_Data["DiceProb"][1][4]={}
tThanksGiving2019Monopoly_Data["DiceProb"][1][4]["RandomItemChanceType"] = 2
tThanksGiving2019Monopoly_Data["DiceProb"][1][4]["ItemChance"] = 1000
tThanksGiving2019Monopoly_Data["DiceProb"][1][4]["Point"]=4
--5点
tThanksGiving2019Monopoly_Data["DiceProb"][1][5]={}
tThanksGiving2019Monopoly_Data["DiceProb"][1][5]["RandomItemChanceType"] = 2
tThanksGiving2019Monopoly_Data["DiceProb"][1][5]["ItemChance"] = 1000
tThanksGiving2019Monopoly_Data["DiceProb"][1][5]["Point"]=5
--6点
tThanksGiving2019Monopoly_Data["DiceProb"][1][6]={}
tThanksGiving2019Monopoly_Data["DiceProb"][1][6]["RandomItemChanceType"] = 2
tThanksGiving2019Monopoly_Data["DiceProb"][1][6]["ItemChance"] = 1000
tThanksGiving2019Monopoly_Data["DiceProb"][1][6]["Point"]=6

tThanksGiving2019Monopoly_Data["Log"]={}
tThanksGiving2019Monopoly_Data["Log"]["CostEmoney"]="1000	01221	0	0	%d	"
tThanksGiving2019Monopoly_Data["Log"]["PackEmoney"]="1000	01222	0	0	%d	"
tThanksGiving2019Monopoly_Data["Log"]["Pack"]={}
tThanksGiving2019Monopoly_Data["Log"]["Pack"][3326736]="1000	01224	0	0	675	"
tThanksGiving2019Monopoly_Data["Log"]["Pack"][3326737]="1000	01225	0	0	675	"
tThanksGiving2019Monopoly_Data["Log"]["Pack"][3326738]="1000	01226	0	0	100	"
tThanksGiving2019Monopoly_Data["Log"]["Pack"][3326739]="1000	01227	0	0	98	"
tThanksGiving2019Monopoly_Data["Log"]["Pack"][3326740]="1000	01228	0	0	129	"
tThanksGiving2019Monopoly_Data["Log"]["Pack"][3326741]="1000	01229	0	0	89	"
tThanksGiving2019Monopoly_Data["Log"]["Pack"][3326742]="1000	01230	0	0	89	"
tThanksGiving2019Monopoly_Data["Log"]["Pack"][3326743]="1000	01231	0	0	89	"
tThanksGiving2019Monopoly_Data["Log"]["Pack"][3326744]="1000	01232	0	0	109	"
tThanksGiving2019Monopoly_Data["Log"]["Pack"][3326745]="1000	01233	0	0	1899	"
tThanksGiving2019Monopoly_Data["Log"]["Pack"][3326746]="1000	01234	0	0	1899	"

tThanksGiving2019Monopoly_Data["Log"]["Pack"][3326800]="1000	01235	70	70	0	"
tThanksGiving2019Monopoly_Data["Log"]["Pack"][3326801]="1000	01236	70	70	0	"

tThanksGiving2019Monopoly_Data["Effect"]={}
tThanksGiving2019Monopoly_Data["Effect"][1]="360220"
tThanksGiving2019Monopoly_Data["Effect"][2]="360222"

tThanksGiving2019Monopoly_Data["Effect"]["Trap"]={}
tThanksGiving2019Monopoly_Data["Effect"]["Trap"][1] ="blaze5"
tThanksGiving2019Monopoly_Data["Effect"]["Trap"][2] ="blaze-1"
tThanksGiving2019Monopoly_Data["Effect"]["Trap"][3] ="blaze5"
tThanksGiving2019Monopoly_Data["Effect"]["Trap"][4] ="blaze-1"
tThanksGiving2019Monopoly_Data["Effect"]["Trap"][5] ="blaze-1"
tThanksGiving2019Monopoly_Data["Effect"]["Trap"][6] ="blaze1"
tThanksGiving2019Monopoly_Data["Effect"]["Trap"][7] ="blaze-1"
tThanksGiving2019Monopoly_Data["Effect"]["Trap"][8] ="blaze-1"
tThanksGiving2019Monopoly_Data["Effect"]["Trap"][9] ="blaze7"
tThanksGiving2019Monopoly_Data["Effect"]["Trap"][10]="blaze7"
tThanksGiving2019Monopoly_Data["Effect"]["Trap"][11]="blaze-1"
tThanksGiving2019Monopoly_Data["Effect"]["Trap"][12]="blaze1"
tThanksGiving2019Monopoly_Data["Effect"]["Trap"][13]="blaze-1"
tThanksGiving2019Monopoly_Data["Effect"]["Trap"][14]="blaze5"
tThanksGiving2019Monopoly_Data["Effect"]["Trap"][15]="blaze-1"
tThanksGiving2019Monopoly_Data["Effect"]["Trap"][16]="blaze5"
tThanksGiving2019Monopoly_Data["Effect"]["Trap"][17]="blaze-1"
tThanksGiving2019Monopoly_Data["Effect"]["Trap"][18]="blaze1"
tThanksGiving2019Monopoly_Data["Effect"]["Trap"][19]="blaze7"
tThanksGiving2019Monopoly_Data["Effect"]["Trap"][20]="blaze-1"
tThanksGiving2019Monopoly_Data["Effect"]["Trap"][21]="blaze7"
tThanksGiving2019Monopoly_Data["Effect"]["Trap"][22]="blaze-1"
tThanksGiving2019Monopoly_Data["Effect"]["Trap"][23]="blaze-1"


tThanksGiving2019Monopoly_Data["Effect"]["Dice"]={}
tThanksGiving2019Monopoly_Data["Effect"]["Dice"][1]="hstouzi_1"  
tThanksGiving2019Monopoly_Data["Effect"]["Dice"][2]="hstouzi_2" 
tThanksGiving2019Monopoly_Data["Effect"]["Dice"][3]="hstouzi_3" 
tThanksGiving2019Monopoly_Data["Effect"]["Dice"][4]="hstouzi_4" 
tThanksGiving2019Monopoly_Data["Effect"]["Dice"][5]="hstouzi_5" 
tThanksGiving2019Monopoly_Data["Effect"]["Dice"][6]="hstouzi_6" 

--礼包开启
tThanksGiving2019Monopoly_Data["Open"]={}
tThanksGiving2019Monopoly_Data["Open"][3326735] = {}
tThanksGiving2019Monopoly_Data["Open"][3326735][1] = 1212
tThanksGiving2019Monopoly_Data["Open"][3326735][2] = 1187
tThanksGiving2019Monopoly_Data["Open"][3326735][3] = 1162
tThanksGiving2019Monopoly_Data["Open"][3326735][4] = 1137
tThanksGiving2019Monopoly_Data["Open"][3326735][5] = 1112

tThanksGiving2019Monopoly_Data["Open"][3326732]=0
tThanksGiving2019Monopoly_Data["Open"][3326736]=675
tThanksGiving2019Monopoly_Data["Open"][3326737]=675
tThanksGiving2019Monopoly_Data["Open"][3326738]=100
tThanksGiving2019Monopoly_Data["Open"][3326739]=98
tThanksGiving2019Monopoly_Data["Open"][3326740]=129
tThanksGiving2019Monopoly_Data["Open"][3326741]=89
tThanksGiving2019Monopoly_Data["Open"][3326742]=89
tThanksGiving2019Monopoly_Data["Open"][3326743]=89
tThanksGiving2019Monopoly_Data["Open"][3326744]=109
tThanksGiving2019Monopoly_Data["Open"][3326745]=1899
tThanksGiving2019Monopoly_Data["Open"][3326746]=1899

tThanksGiving2019Monopoly_Data["Open"][3326800]=70
tThanksGiving2019Monopoly_Data["Open"][3326801]=70

-- 打开回气丹特惠礼包
tThanksGiving2019Monopoly_Data["Pack"]={}
tThanksGiving2019Monopoly_Data["Pack"][3326735] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326735]["RewardItem"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326735]["RewardItem"][1] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326735]["RewardItem"][1]["Id"] = 729481
tThanksGiving2019Monopoly_Data["Pack"][3326735]["RewardItem"][1]["Attr"] = "0 10"
tThanksGiving2019Monopoly_Data["Pack"][3326735]["RewardEffect"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326735]["RewardEffect"]["SzObj"] = "self"
tThanksGiving2019Monopoly_Data["Pack"][3326735]["RewardEffect"]["Effect"] = "angelwing"
tThanksGiving2019Monopoly_Data["Pack"][3326735]["LogId"] = 12001714

--惊喜奖励礼盒
tThanksGiving2019Monopoly_Data["Pack"][3326732] = {}

tThanksGiving2019Monopoly_Data["Pack"][3326732][1] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326732][1]["DeleteItem"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326732][1]["DeleteItem"][1] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326732][1]["DeleteItem"][1]["Id"] = 3326732
tThanksGiving2019Monopoly_Data["Pack"][3326732][1]["RewardStrengthValue"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326732][1]["RewardStrengthValue"]["Value"] = 200
tThanksGiving2019Monopoly_Data["Pack"][3326732][1]["RewardEffect"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326732][1]["RewardEffect"]["SzObj"] = "self"
tThanksGiving2019Monopoly_Data["Pack"][3326732][1]["RewardEffect"]["Effect"] = "angelwing"
tThanksGiving2019Monopoly_Data["Pack"][3326732][1]["LogId"] = 12001714

tThanksGiving2019Monopoly_Data["Pack"][3326732][2] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326732][2]["DeleteItem"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326732][2]["DeleteItem"][1] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326732][2]["DeleteItem"][1]["Id"] = 3326732
tThanksGiving2019Monopoly_Data["Pack"][3326732][2]["RewardItem"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326732][2]["RewardItem"][1] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326732][2]["RewardItem"][1]["Id"] = 3009000
tThanksGiving2019Monopoly_Data["Pack"][3326732][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
tThanksGiving2019Monopoly_Data["Pack"][3326732][2]["RewardEffect"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326732][2]["RewardEffect"]["SzObj"] = "self"
tThanksGiving2019Monopoly_Data["Pack"][3326732][2]["RewardEffect"]["Effect"] = "angelwing"
tThanksGiving2019Monopoly_Data["Pack"][3326732][2]["LogId"] = 12001714

tThanksGiving2019Monopoly_Data["Pack"][3326732][3] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326732][3]["DeleteItem"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326732][3]["DeleteItem"][1] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326732][3]["DeleteItem"][1]["Id"] = 3326732
tThanksGiving2019Monopoly_Data["Pack"][3326732][3]["RewardCultivation"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326732][3]["RewardCultivation"]["Value"] = 200
tThanksGiving2019Monopoly_Data["Pack"][3326732][3]["RewardEffect"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326732][3]["RewardEffect"]["SzObj"] = "self"
tThanksGiving2019Monopoly_Data["Pack"][3326732][3]["RewardEffect"]["Effect"] = "angelwing"
tThanksGiving2019Monopoly_Data["Pack"][3326732][3]["LogId"] = 12001714


--热门时装礼盒
tThanksGiving2019Monopoly_Data["Pack"][3326736] = {}

tThanksGiving2019Monopoly_Data["Pack"][3326736][1] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326736][1]["DeleteItem"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326736][1]["DeleteItem"][1] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326736][1]["DeleteItem"][1]["Id"] = 3326736
tThanksGiving2019Monopoly_Data["Pack"][3326736][1]["RewardItem"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326736][1]["RewardItem"][1] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326736][1]["RewardItem"][1]["Id"] = 181355
tThanksGiving2019Monopoly_Data["Pack"][3326736][1]["RewardItem"][1]["Attr"] = "0 1 3 0 1 0 0 1"
tThanksGiving2019Monopoly_Data["Pack"][3326736][1]["RewardEffect"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326736][1]["RewardEffect"]["SzObj"] = "self"
tThanksGiving2019Monopoly_Data["Pack"][3326736][1]["RewardEffect"]["Effect"] = "angelwing"
tThanksGiving2019Monopoly_Data["Pack"][3326736][1]["LogId"] = 12001714

tThanksGiving2019Monopoly_Data["Pack"][3326736][2] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326736][2]["DeleteItem"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326736][2]["DeleteItem"][1] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326736][2]["DeleteItem"][1]["Id"] = 3326736
tThanksGiving2019Monopoly_Data["Pack"][3326736][2]["RewardItem"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326736][2]["RewardItem"][1] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326736][2]["RewardItem"][1]["Id"] = 191405
tThanksGiving2019Monopoly_Data["Pack"][3326736][2]["RewardItem"][1]["Attr"] = "0 1 3 0 1 0 0 1"
tThanksGiving2019Monopoly_Data["Pack"][3326736][2]["RewardEffect"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326736][2]["RewardEffect"]["SzObj"] = "self"
tThanksGiving2019Monopoly_Data["Pack"][3326736][2]["RewardEffect"]["Effect"] = "angelwing"
tThanksGiving2019Monopoly_Data["Pack"][3326736][2]["LogId"] = 12001714

tThanksGiving2019Monopoly_Data["Pack"][3326736][3] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326736][3]["DeleteItem"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326736][3]["DeleteItem"][1] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326736][3]["DeleteItem"][1]["Id"] = 3326736
tThanksGiving2019Monopoly_Data["Pack"][3326736][3]["RewardItem"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326736][3]["RewardItem"][1] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326736][3]["RewardItem"][1]["Id"] = 193300
tThanksGiving2019Monopoly_Data["Pack"][3326736][3]["RewardItem"][1]["Attr"] = "0 1 3 0 1 0 0 1"
tThanksGiving2019Monopoly_Data["Pack"][3326736][3]["RewardEffect"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326736][3]["RewardEffect"]["SzObj"] = "self"
tThanksGiving2019Monopoly_Data["Pack"][3326736][3]["RewardEffect"]["Effect"] = "angelwing"
tThanksGiving2019Monopoly_Data["Pack"][3326736][3]["LogId"] = 12001714

tThanksGiving2019Monopoly_Data["Pack"][3326736][4] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326736][4]["DeleteItem"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326736][4]["DeleteItem"][1] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326736][4]["DeleteItem"][1]["Id"] = 3326736
tThanksGiving2019Monopoly_Data["Pack"][3326736][4]["RewardItem"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326736][4]["RewardItem"][1] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326736][4]["RewardItem"][1]["Id"] = 183305
tThanksGiving2019Monopoly_Data["Pack"][3326736][4]["RewardItem"][1]["Attr"] = "0 1 3 0 1 0 0 1"
tThanksGiving2019Monopoly_Data["Pack"][3326736][4]["RewardEffect"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326736][4]["RewardEffect"]["SzObj"] = "self"
tThanksGiving2019Monopoly_Data["Pack"][3326736][4]["RewardEffect"]["Effect"] = "angelwing"
tThanksGiving2019Monopoly_Data["Pack"][3326736][4]["LogId"] = 12001714

tThanksGiving2019Monopoly_Data["Pack"][3326736][5] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326736][5]["DeleteItem"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326736][5]["DeleteItem"][1] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326736][5]["DeleteItem"][1]["Id"] = 3326736
tThanksGiving2019Monopoly_Data["Pack"][3326736][5]["RewardItem"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326736][5]["RewardItem"][1] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326736][5]["RewardItem"][1]["Id"] = 192300
tThanksGiving2019Monopoly_Data["Pack"][3326736][5]["RewardItem"][1]["Attr"] = "0 1 3 0 1 0 0 1"
tThanksGiving2019Monopoly_Data["Pack"][3326736][5]["RewardEffect"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326736][5]["RewardEffect"]["SzObj"] = "self"
tThanksGiving2019Monopoly_Data["Pack"][3326736][5]["RewardEffect"]["Effect"] = "angelwing"
tThanksGiving2019Monopoly_Data["Pack"][3326736][5]["LogId"] = 12001714

--热门骑宠外套礼包
tThanksGiving2019Monopoly_Data["Pack"][3326737] = {}

tThanksGiving2019Monopoly_Data["Pack"][3326737][1] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326737][1]["DeleteItem"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326737][1]["DeleteItem"][1] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326737][1]["DeleteItem"][1]["Id"] = 3326737
tThanksGiving2019Monopoly_Data["Pack"][3326737][1]["RewardItem"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326737][1]["RewardItem"][1] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326737][1]["RewardItem"][1]["Id"] = 200411
tThanksGiving2019Monopoly_Data["Pack"][3326737][1]["RewardItem"][1]["Attr"] = "0 1 3 0 1 0 0 1"
tThanksGiving2019Monopoly_Data["Pack"][3326737][1]["RewardEffect"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326737][1]["RewardEffect"]["SzObj"] = "self"
tThanksGiving2019Monopoly_Data["Pack"][3326737][1]["RewardEffect"]["Effect"] = "angelwing"
tThanksGiving2019Monopoly_Data["Pack"][3326737][1]["LogId"] = 12001714

tThanksGiving2019Monopoly_Data["Pack"][3326737][2] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326737][2]["DeleteItem"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326737][2]["DeleteItem"][1] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326737][2]["DeleteItem"][1]["Id"] = 3326737
tThanksGiving2019Monopoly_Data["Pack"][3326737][2]["RewardItem"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326737][2]["RewardItem"][1] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326737][2]["RewardItem"][1]["Id"] = 200413
tThanksGiving2019Monopoly_Data["Pack"][3326737][2]["RewardItem"][1]["Attr"] = "0 1 3 0 1 0 0 1"
tThanksGiving2019Monopoly_Data["Pack"][3326737][2]["RewardEffect"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326737][2]["RewardEffect"]["SzObj"] = "self"
tThanksGiving2019Monopoly_Data["Pack"][3326737][2]["RewardEffect"]["Effect"] = "angelwing"
tThanksGiving2019Monopoly_Data["Pack"][3326737][2]["LogId"] = 12001714

tThanksGiving2019Monopoly_Data["Pack"][3326737][3] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326737][3]["DeleteItem"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326737][3]["DeleteItem"][1] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326737][3]["DeleteItem"][1]["Id"] = 3326737
tThanksGiving2019Monopoly_Data["Pack"][3326737][3]["RewardItem"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326737][3]["RewardItem"][1] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326737][3]["RewardItem"][1]["Id"] = 200420
tThanksGiving2019Monopoly_Data["Pack"][3326737][3]["RewardItem"][1]["Attr"] = "0 1 3 0 1 0 0 1"
tThanksGiving2019Monopoly_Data["Pack"][3326737][3]["RewardEffect"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326737][3]["RewardEffect"]["SzObj"] = "self"
tThanksGiving2019Monopoly_Data["Pack"][3326737][3]["RewardEffect"]["Effect"] = "angelwing"
tThanksGiving2019Monopoly_Data["Pack"][3326737][3]["LogId"] = 12001714

--马包
tThanksGiving2019Monopoly_Data["Pack"][3326744] = {}

tThanksGiving2019Monopoly_Data["Pack"][3326744][1] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326744][1]["DeleteItem"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326744][1]["DeleteItem"][1] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326744][1]["DeleteItem"][1]["Id"] = 3326744
tThanksGiving2019Monopoly_Data["Pack"][3326744][1]["RewardItem"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326744][1]["RewardItem"][1] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326744][1]["RewardItem"][1]["Id"] = 300000
tThanksGiving2019Monopoly_Data["Pack"][3326744][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 16750080 255 150 0 3"
tThanksGiving2019Monopoly_Data["Pack"][3326744][1]["RewardEffect"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326744][1]["RewardEffect"]["SzObj"] = "self"
tThanksGiving2019Monopoly_Data["Pack"][3326744][1]["RewardEffect"]["Effect"] = "angelwing"
tThanksGiving2019Monopoly_Data["Pack"][3326744][1]["LogId"] = 12001714

tThanksGiving2019Monopoly_Data["Pack"][3326744][2] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326744][2]["DeleteItem"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326744][2]["DeleteItem"][1] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326744][2]["DeleteItem"][1]["Id"] = 3326744
tThanksGiving2019Monopoly_Data["Pack"][3326744][2]["RewardItem"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326744][2]["RewardItem"][1] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326744][2]["RewardItem"][1]["Id"] = 300000
tThanksGiving2019Monopoly_Data["Pack"][3326744][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 9830655 150 0 0 3 0 0 0 0 0 0 255"
tThanksGiving2019Monopoly_Data["Pack"][3326744][2]["RewardEffect"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326744][2]["RewardEffect"]["SzObj"] = "self"
tThanksGiving2019Monopoly_Data["Pack"][3326744][2]["RewardEffect"]["Effect"] = "angelwing"
tThanksGiving2019Monopoly_Data["Pack"][3326744][2]["LogId"] = 12001714

tThanksGiving2019Monopoly_Data["Pack"][3326744][3] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326744][3]["DeleteItem"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326744][3]["DeleteItem"][1] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326744][3]["DeleteItem"][1]["Id"] = 3326744
tThanksGiving2019Monopoly_Data["Pack"][3326744][3]["RewardItem"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326744][3]["RewardItem"][1] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326744][3]["RewardItem"][1]["Id"] = 300000
tThanksGiving2019Monopoly_Data["Pack"][3326744][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 65430 0 255 0 3 0 0 0 0 0 0 150"
tThanksGiving2019Monopoly_Data["Pack"][3326744][3]["RewardEffect"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326744][3]["RewardEffect"]["SzObj"] = "self"
tThanksGiving2019Monopoly_Data["Pack"][3326744][3]["RewardEffect"]["Effect"] = "angelwing"
tThanksGiving2019Monopoly_Data["Pack"][3326744][3]["LogId"] = 12001714

--感恩赤炼石礼盒
tThanksGiving2019Monopoly_Data["Pack"][3326738] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326738]["DeleteItem"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326738]["DeleteItem"][1] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326738]["DeleteItem"][1]["Id"] = 3326738
tThanksGiving2019Monopoly_Data["Pack"][3326738]["RewardItem"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326738]["RewardItem"][1] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326738]["RewardItem"][1]["Id"] = 730003
tThanksGiving2019Monopoly_Data["Pack"][3326738]["RewardItem"][1]["Attr"] = "0 1 3"
tThanksGiving2019Monopoly_Data["Pack"][3326738]["RewardEffect"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326738]["RewardEffect"]["SzObj"] = "self"
tThanksGiving2019Monopoly_Data["Pack"][3326738]["RewardEffect"]["Effect"] = "angelwing"
tThanksGiving2019Monopoly_Data["Pack"][3326738]["LogId"] = 12001714

--感恩星陨石礼包
tThanksGiving2019Monopoly_Data["Pack"][3326739] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326739]["DeleteItem"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326739]["DeleteItem"][1] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326739]["DeleteItem"][1]["Id"] = 3326739
tThanksGiving2019Monopoly_Data["Pack"][3326739]["RewardItem"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326739]["RewardItem"][1] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326739]["RewardItem"][1]["Id"] = 3009001
tThanksGiving2019Monopoly_Data["Pack"][3326739]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
tThanksGiving2019Monopoly_Data["Pack"][3326739]["RewardEffect"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326739]["RewardEffect"]["SzObj"] = "self"
tThanksGiving2019Monopoly_Data["Pack"][3326739]["RewardEffect"]["Effect"] = "angelwing"
tThanksGiving2019Monopoly_Data["Pack"][3326739]["LogId"] = 12001714

--额外奖励
tThanksGiving2019Monopoly_Data["EtreReward"]={}

tThanksGiving2019Monopoly_Data["EtreReward"][3326738] = {}
tThanksGiving2019Monopoly_Data["EtreReward"][3326738]["RewardItem"] = {}
tThanksGiving2019Monopoly_Data["EtreReward"][3326738]["RewardItem"][1] = {}
tThanksGiving2019Monopoly_Data["EtreReward"][3326738]["RewardItem"][1]["Id"] = 730001
tThanksGiving2019Monopoly_Data["EtreReward"][3326738]["RewardItem"][1]["Attr"] = "0 1 3"
tThanksGiving2019Monopoly_Data["EtreReward"][3326738]["RewardEffect"] = {}
tThanksGiving2019Monopoly_Data["EtreReward"][3326738]["RewardEffect"]["SzObj"] = "self"
tThanksGiving2019Monopoly_Data["EtreReward"][3326738]["RewardEffect"]["Effect"] = "angelwing"
tThanksGiving2019Monopoly_Data["EtreReward"][3326738]["LogId"] = 12001714

tThanksGiving2019Monopoly_Data["EtreReward"][3326739] = {}
tThanksGiving2019Monopoly_Data["EtreReward"][3326739]["RewardItem"] = {}
tThanksGiving2019Monopoly_Data["EtreReward"][3326739]["RewardItem"][1] = {}
tThanksGiving2019Monopoly_Data["EtreReward"][3326739]["RewardItem"][1]["Id"] = 3009000
tThanksGiving2019Monopoly_Data["EtreReward"][3326739]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
tThanksGiving2019Monopoly_Data["EtreReward"][3326739]["RewardEffect"] = {}
tThanksGiving2019Monopoly_Data["EtreReward"][3326739]["RewardEffect"]["SzObj"] = "self"
tThanksGiving2019Monopoly_Data["EtreReward"][3326739]["RewardEffect"]["Effect"] = "angelwing"
tThanksGiving2019Monopoly_Data["EtreReward"][3326739]["LogId"] = 12001714

--感恩自创武功礼盒
tThanksGiving2019Monopoly_Data["Pack"][3326740] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326740]["DeleteItem"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326740]["DeleteItem"][1] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326740]["DeleteItem"][1]["Id"] = 3326740
tThanksGiving2019Monopoly_Data["Pack"][3326740]["RewardItem"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326740]["RewardItem"][1] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326740]["RewardItem"][1]["Id"] = 3003124
tThanksGiving2019Monopoly_Data["Pack"][3326740]["RewardItem"][1]["Attr"] = "0 50 3"
tThanksGiving2019Monopoly_Data["Pack"][3326740]["RewardEffect"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326740]["RewardEffect"]["SzObj"] = "self"
tThanksGiving2019Monopoly_Data["Pack"][3326740]["RewardEffect"]["Effect"] = "angelwing"
tThanksGiving2019Monopoly_Data["Pack"][3326740]["LogId"] = 12001714

--感恩修行值礼盒
tThanksGiving2019Monopoly_Data["Pack"][3326741] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326741]["DeleteItem"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326741]["DeleteItem"][1] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326741]["DeleteItem"][1]["Id"] = 3326741
tThanksGiving2019Monopoly_Data["Pack"][3326741]["RewardCultivation"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326741]["RewardCultivation"]["Value"] = 3000
tThanksGiving2019Monopoly_Data["Pack"][3326741]["RewardEffect"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326741]["RewardEffect"]["SzObj"] = "self"
tThanksGiving2019Monopoly_Data["Pack"][3326741]["RewardEffect"]["Effect"] = "angelwing"
tThanksGiving2019Monopoly_Data["Pack"][3326741]["LogId"] = 12001714

--感恩练气礼盒
tThanksGiving2019Monopoly_Data["Pack"][3326742] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326742]["DeleteItem"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326742]["DeleteItem"][1] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326742]["DeleteItem"][1]["Id"] = 3326742
tThanksGiving2019Monopoly_Data["Pack"][3326742]["RewardStrengthValue"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326742]["RewardStrengthValue"]["Value"] = 500
tThanksGiving2019Monopoly_Data["Pack"][3326742]["RewardEffect"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326742]["RewardEffect"]["SzObj"] = "self"
tThanksGiving2019Monopoly_Data["Pack"][3326742]["RewardEffect"]["Effect"] = "angelwing"
tThanksGiving2019Monopoly_Data["Pack"][3326742]["LogId"] = 12001714

--感恩修为值礼盒
tThanksGiving2019Monopoly_Data["Pack"][3326743] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326743]["DeleteItem"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326743]["DeleteItem"][1] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326743]["DeleteItem"][1]["Id"] = 3326743
tThanksGiving2019Monopoly_Data["Pack"][3326743]["RewardStrengthValue"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326743]["RewardStrengthValue"]["Value"] = 1000
tThanksGiving2019Monopoly_Data["Pack"][3326743]["RewardEffect"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326743]["RewardEffect"]["SzObj"] = "self"
tThanksGiving2019Monopoly_Data["Pack"][3326743]["RewardEffect"]["Effect"] = "angelwing"
tThanksGiving2019Monopoly_Data["Pack"][3326743]["LogId"] = 12001714

--普通服
--感恩武器神魂礼盒
tThanksGiving2019Monopoly_Data["Pack"][3326745] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326745]["DeleteItem"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326745]["DeleteItem"][1] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326745]["DeleteItem"][1]["Id"] = 3326745
tThanksGiving2019Monopoly_Data["Pack"][3326745]["RewardItem"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326745]["RewardItem"][1] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326745]["RewardItem"][1]["Id"] = 3303657
tThanksGiving2019Monopoly_Data["Pack"][3326745]["RewardItem"][1]["Attr"] = "0 1"
tThanksGiving2019Monopoly_Data["Pack"][3326745]["RewardEffect"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326745]["RewardEffect"]["SzObj"] = "self"
tThanksGiving2019Monopoly_Data["Pack"][3326745]["RewardEffect"]["Effect"] = "angelwing"
tThanksGiving2019Monopoly_Data["Pack"][3326745]["LogId"] = 12001714

--感恩防具神魂礼盒
tThanksGiving2019Monopoly_Data["Pack"][3326746] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326746]["DeleteItem"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326746]["DeleteItem"][1] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326746]["DeleteItem"][1]["Id"] = 3326746
tThanksGiving2019Monopoly_Data["Pack"][3326746]["RewardItem"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326746]["RewardItem"][1] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326746]["RewardItem"][1]["Id"] = 3303658
tThanksGiving2019Monopoly_Data["Pack"][3326746]["RewardItem"][1]["Attr"] = "0 1"
tThanksGiving2019Monopoly_Data["Pack"][3326746]["RewardEffect"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326746]["RewardEffect"]["SzObj"] = "self"
tThanksGiving2019Monopoly_Data["Pack"][3326746]["RewardEffect"]["Effect"] = "angelwing"
tThanksGiving2019Monopoly_Data["Pack"][3326746]["LogId"] = 12001714

--激情服
--感恩武器神魂礼盒
tThanksGiving2019Monopoly_Data["Pack"][3326800] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326800]["DeleteItem"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326800]["DeleteItem"][1] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326800]["DeleteItem"][1]["Id"] = 3326800
tThanksGiving2019Monopoly_Data["Pack"][3326800]["RewardItem"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326800]["RewardItem"][1] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326800]["RewardItem"][1]["Id"] = 3004247
tThanksGiving2019Monopoly_Data["Pack"][3326800]["RewardItem"][1]["Attr"] = "0 1"
tThanksGiving2019Monopoly_Data["Pack"][3326800]["RewardEffect"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326800]["RewardEffect"]["SzObj"] = "self"
tThanksGiving2019Monopoly_Data["Pack"][3326800]["RewardEffect"]["Effect"] = "angelwing"
tThanksGiving2019Monopoly_Data["Pack"][3326800]["LogId"] = 12001714

--感恩防具神魂礼盒
tThanksGiving2019Monopoly_Data["Pack"][3326801] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326801]["DeleteItem"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326801]["DeleteItem"][1] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326801]["DeleteItem"][1]["Id"] = 3326801
tThanksGiving2019Monopoly_Data["Pack"][3326801]["RewardItem"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326801]["RewardItem"][1] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326801]["RewardItem"][1]["Id"] = 3004248
tThanksGiving2019Monopoly_Data["Pack"][3326801]["RewardItem"][1]["Attr"] = "0 1"
tThanksGiving2019Monopoly_Data["Pack"][3326801]["RewardEffect"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326801]["RewardEffect"]["SzObj"] = "self"
tThanksGiving2019Monopoly_Data["Pack"][3326801]["RewardEffect"]["Effect"] = "angelwing"
tThanksGiving2019Monopoly_Data["Pack"][3326801]["LogId"] = 12001714


--大富翁礼盒 非激情服
tThanksGiving2019Monopoly_Data["Pack"][3326733] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326733]["DeleteItem"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326733]["DeleteItem"][1] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326733]["DeleteItem"][1]["Id"] = 3326733
tThanksGiving2019Monopoly_Data["Pack"][3326733]["RewardItem"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326733]["RewardItem"][1] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326733]["RewardItem"][1]["Id"] = 3009001
tThanksGiving2019Monopoly_Data["Pack"][3326733]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
tThanksGiving2019Monopoly_Data["Pack"][3326733]["RewardItem"][2] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326733]["RewardItem"][2]["Id"] = 730003
tThanksGiving2019Monopoly_Data["Pack"][3326733]["RewardItem"][2]["Attr"] = "0 1 3"
tThanksGiving2019Monopoly_Data["Pack"][3326733]["RewardItem"][3] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326733]["RewardItem"][3]["Id"] = 4050001
tThanksGiving2019Monopoly_Data["Pack"][3326733]["RewardItem"][3]["Attr"] = "0 10 3"
tThanksGiving2019Monopoly_Data["Pack"][3326733]["RewardItem"][4] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326733]["RewardItem"][4]["Id"] = 3314012
tThanksGiving2019Monopoly_Data["Pack"][3326733]["RewardItem"][4]["Attr"] = "0 2"
tThanksGiving2019Monopoly_Data["Pack"][3326733]["RewardEffect"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326733]["RewardEffect"]["SzObj"] = "self"
tThanksGiving2019Monopoly_Data["Pack"][3326733]["RewardEffect"]["Effect"] = "angelwing"
tThanksGiving2019Monopoly_Data["Pack"][3326733]["LogId"] = 12001714

--大富翁礼盒 激情服
tThanksGiving2019Monopoly_Data["Pack"][3326734] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326734]["DeleteItem"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326734]["DeleteItem"][1] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326734]["DeleteItem"][1]["Id"] = 3326734
tThanksGiving2019Monopoly_Data["Pack"][3326734]["RewardItem"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326734]["RewardItem"][1] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326734]["RewardItem"][1]["Id"] = 3009001
tThanksGiving2019Monopoly_Data["Pack"][3326734]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
tThanksGiving2019Monopoly_Data["Pack"][3326734]["RewardItem"][2] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326734]["RewardItem"][2]["Id"] = 730003
tThanksGiving2019Monopoly_Data["Pack"][3326734]["RewardItem"][2]["Attr"] = "0 1"
tThanksGiving2019Monopoly_Data["Pack"][3326734]["RewardItem"][3] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326734]["RewardItem"][3]["Id"] = 4050001
tThanksGiving2019Monopoly_Data["Pack"][3326734]["RewardItem"][3]["Attr"] = "0 10"
tThanksGiving2019Monopoly_Data["Pack"][3326734]["RewardItem"][4] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326734]["RewardItem"][4]["Id"] = 3005412
tThanksGiving2019Monopoly_Data["Pack"][3326734]["RewardItem"][4]["Attr"] = "0 1"
tThanksGiving2019Monopoly_Data["Pack"][3326734]["RewardEffect"] = {}
tThanksGiving2019Monopoly_Data["Pack"][3326734]["RewardEffect"]["SzObj"] = "self"
tThanksGiving2019Monopoly_Data["Pack"][3326734]["RewardEffect"]["Effect"] = "angelwing"
tThanksGiving2019Monopoly_Data["Pack"][3326734]["LogId"] = 12001714




--进入副本获得道具
tThanksGiving2019Monopoly_Data["Enter"] = {}
tThanksGiving2019Monopoly_Data["Enter"]["RewardItem"] = {}
tThanksGiving2019Monopoly_Data["Enter"]["RewardItem"][1] = {}
tThanksGiving2019Monopoly_Data["Enter"]["RewardItem"][1]["Id"] = 3326788
tThanksGiving2019Monopoly_Data["Enter"]["RewardItem"][1]["Attr"] = "0 1"
tThanksGiving2019Monopoly_Data["Enter"]["RewardEffect"] = {}
tThanksGiving2019Monopoly_Data["Enter"]["RewardEffect"]["SzObj"] = "self"
tThanksGiving2019Monopoly_Data["Enter"]["RewardEffect"]["Effect"] = "angelwing"
tThanksGiving2019Monopoly_Data["Enter"]["LogId"] = 12001714

tThanksGiving2019Monopoly_Data["TaskItem"]=3326788
----------------------------------逻辑部分---------------------------------------------
--进入大富翁副本
function ThanksGiving2019Monopoly_EnterMonoPolyInstance()
	if not Sys_ChkFullTime(tActivityTime["ThanksGiving2019Monopoly"]["ActTime"])  then
		return 
	end 
	-- 组队不能进入
	if Get_UserTeamNumbers() >= 2 then
		return Sys_MsgBox(tThanksGiving2019Monopoly_Text["SystemTips"]["NoTeam"])
	end
	local nInstanceId = 348
	
	--背包空间判断
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tThanksGiving2019Monopoly_Data["Enter"])
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tThanksGiving2019Monopoly_Data["Enter"])
	local nSpace = nGetRewardSpace - nDelRewardSpace
	if not User_CheckLeftSpace(nSpace) then
		return Sys_MsgBox(tThanksGiving2019Monopoly_Text["SystemTips"]["EnterFail"])
	end
	
	--判断是否有进度
	local nStepEvent=tThanksGiving2019Monopoly_Data["Stc"]["StepEvent"]
	local nStepType=tThanksGiving2019Monopoly_Data["Stc"]["StepType"]
	local nStep=Get_UserStatisticValue(nStepEvent,nStepType)
	
	if nStep > 0 and nStep < 24 then 
		if User_EnterInstance(nInstanceId,0,0,0) then 
			ThanksGiving2019Monopoly_Trans(nStep)
		end 
	else
		User_EnterInstance(nInstanceId,0,0,0)
	end
	
	if not Item_ChkMulItem(tThanksGiving2019Monopoly_Data["TaskItem"],tThanksGiving2019Monopoly_Data["TaskItem"],1) then
		RewardTemplate_UseItem(tThanksGiving2019Monopoly_Data["Enter"])
	end 
	
end 



--领取每日骰子
function ThanksGiving2019Monopoly_GetDice()
	if not Sys_ChkFullTime(tActivityTime["ThanksGiving2019Monopoly"]["ActTime"])  then
		return 
	end 

	local nDiceEvent=tThanksGiving2019Monopoly_Data["Stc"]["DiceEvent"]
	local nDiceType=tThanksGiving2019Monopoly_Data["Stc"]["DiceType"]
	
	--隔天清掩码
	Task_StcReset(nDiceEvent,nDiceType)
	
	if Get_UserStatisticValue(nDiceEvent,nDiceType)>=1 then 
		return Sys_MsgBox(tThanksGiving2019Monopoly_Text["SystemTips"]["Got"])
	end 
	
	--背包空间判断
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tThanksGiving2019Monopoly_Data["GetDice"])
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tThanksGiving2019Monopoly_Data["GetDice"])
	local nSpace = nGetRewardSpace - nDelRewardSpace
	if not User_CheckLeftSpace(nSpace) then
		return Sys_MsgBox(string.format(tThanksGiving2019Monopoly_Text["SystemTips"]["NoSpace"],nSpace))
	end
	
	--领取
	if RewardTemplate_UseItemAndMsg(tThanksGiving2019Monopoly_Data["GetDice"]) then
		Task_AddStatistic(nDiceEvent,nDiceType,1,1)
		Task_SetStcTimestamp(nDiceEvent,nDiceType,0)
		return
	end
end


--购买骰子
function ThanksGiving2019Monopoly_BuyCheck()
	if not Sys_ChkFullTime(tActivityTime["ThanksGiving2019Monopoly"]["ActTime"])  then
		return 
	end 

	local nNpcId = Get_NpcId()
	local sText=tThanksGiving2019Monopoly_Text[25441]["Text121"]
	Sys_DialogText(sText)
	Sys_DialogOptEdit(tThanksGiving2019Monopoly_Text[25441]["Input"],15,"ThanksGiving2019Monopoly_Buy</N>25441")
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end 

function ThanksGiving2019Monopoly_Buy(nNpcId)
	if not Sys_ChkFullTime(tActivityTime["ThanksGiving2019Monopoly"]["ActTime"])  then
		return 
	end 
	
	local nNumber = tonumber(Get_SysAcceptStr())
	-- 【失败，输入非法字符】
	if nNumber == nil or type(nNumber) ~= "number" or nNumber%1 ~= 0 then
		return 
	end
	-- 【失败，不在取值范围内】
	if nNumber < 1 or nNumber > 100 then 
		return 
	end 

	local nNeedMoney=30*nNumber
	tNpcGossip[25441]["Text211"] = string.format(tThanksGiving2019Monopoly_Text[25441]["Text211"],nNumber,nNeedMoney)
	tNpcGossip[25441]["OptionFunc211"]="ThanksGiving2019Monopoly_BuyCertain</N>" .. nNumber .. "</N>" .. nNeedMoney
	
	LinkNpcGossipFunc_New(25441,"2-1")
end 

function ThanksGiving2019Monopoly_BuyCertain(nNumber,nNeedMoney)
	if not Sys_ChkFullTime(tActivityTime["ThanksGiving2019Monopoly"]["ActTime"])  then
		return 
	end 
	
	if Get_UserMonoEMoney()<nNeedMoney then 
		return Sys_MsgBox(tThanksGiving2019Monopoly_Text["SystemTips"]["Emoney"])
	end 
	
	local tReward=CommonFunc_Copy(tThanksGiving2019Monopoly_Data["BuyDice"]) 
	tReward["RewardItem"][1]["Attr"]=string.format(tThanksGiving2019Monopoly_Data["BuyDice"]["RewardItem"][1]["Attr"],nNumber)

	--背包空间判断
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tReward)
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tReward)
	local nSpace = nGetRewardSpace - nDelRewardSpace
	if not User_CheckLeftSpace(nSpace) then
		return Sys_MsgBox(string.format(tThanksGiving2019Monopoly_Text["SystemTips"]["NoSpace"],nSpace))
	end
	
	if User_AddEMoneyMono(-nNeedMoney) then
		--打log
		local sLog=string.format(tThanksGiving2019Monopoly_Data["Log"]["CostEmoney"],nNeedMoney)
		Sys_SaveEmoneyBuy(sLog)
		
		--给物品
		if RewardTemplate_UseItemAndMsg(tReward) then
			return User_TalkChannel2005(string.format(tThanksGiving2019Monopoly_Text["SystemTips"]["Buy"],nNumber))
		end
	end 
end 

--购买神兽
function ThanksGiving2019Monopoly_BuyMonster(nType,nItemID,nNpcId)
	if not Sys_ChkFullTime(tActivityTime["ThanksGiving2019Monopoly"]["ActTime"])  then
		return 
	end 
	
	--有购买过其中一种，不再让买
	for i=1,2 do 
		local nEvent=tThanksGiving2019Monopoly_Data["Stc"]["Monster"][i]["Event"]
		local nType=tThanksGiving2019Monopoly_Data["Stc"]["Monster"][i]["Type"]
	
		if Get_UserStatisticValue(nEvent,nType) >=1 then 
			return Sys_MsgBox(tThanksGiving2019Monopoly_Text["SystemTips"]["UseFail"])
		end 
	end 
	

	--判断是否有骰子
	if not Item_ChkMulItem(nItemID,nItemID,5) then 
		return Sys_MsgBox(tThanksGiving2019Monopoly_Text["SystemTips"]["NoDice"])
	end 
	
	tNpcGossip[nNpcId]["OptionFunc121"]="ThanksGiving2019Monopoly_BuyMonsterCertain</N>" .. nType .. "</N>" .. nNpcId .. "</N>" .. nItemID
	LinkNpcGossipFunc_New(nNpcId,"2-1")
end 

function ThanksGiving2019Monopoly_BuyMonsterCertain(nType,nNpcId,nItemID)
	if not Sys_ChkFullTime(tActivityTime["ThanksGiving2019Monopoly"]["ActTime"])  then
		return 
	end 
	
	--有购买过其中一种，不再让买
	for i=1,2 do 
		local nEvent=tThanksGiving2019Monopoly_Data["Stc"]["Monster"][i]["Event"]
		local nType=tThanksGiving2019Monopoly_Data["Stc"]["Monster"][i]["Type"]
	
		if Get_UserStatisticValue(nEvent,nType) >=1 then 
			return 
		end 
	end 
	
	local nMonsterEvent=tThanksGiving2019Monopoly_Data["Stc"]["Monster"][nType]["Event"]
	local nMonsterType=tThanksGiving2019Monopoly_Data["Stc"]["Monster"][nType]["Type"]

	--判断是否有骰子
	if not Item_ChkMulItem(nItemID,nItemID,5) then 
		return Sys_MsgBox(tThanksGiving2019Monopoly_Text["SystemTips"]["NoDice"])
	end 
	
	--扣除五颗筛子
	local tReward=CommonFunc_Copy(tThanksGiving2019Monopoly_Data["DeleteDice"]) 
	tReward["DeleteItem"][1]["ItemNum"]=5
	
	if RewardTemplate_UseItemAndMsg(tReward) then 
		Task_AddStatistic(nMonsterEvent,nMonsterType,1,1)
		Task_SetStcTimestamp(nMonsterEvent,nMonsterType,0)
		
		--加光效
		User_EffectAdd("self",tThanksGiving2019Monopoly_Data["Effect"][nType])
		--提示
		Sys_MsgBox(tThanksGiving2019Monopoly_Text["SystemTips"]["Monster"][nType])
	end 
end


--给物品格子
function ThanksGiving2019Monopoly_Reward(nNowUserId)
	if not Sys_ChkFullTime(tActivityTime["ThanksGiving2019Monopoly"]["ActTime"])  then
		return 
	end 
	
	local nFlag=ThanksGiving2019Monopoly_SetTrapStc(nNowUserId)
	if nFlag==1 then 
		return 
	end 
	
	local nStepEvent=tThanksGiving2019Monopoly_Data["Stc"]["StepEvent"]
	local nStepType=tThanksGiving2019Monopoly_Data["Stc"]["StepType"]
	
	local nStep=Get_UserStatisticValue(nStepEvent,nStepType,nNowUserId) 
	
	
	ThanksGiving2019Monopoly_SendEmail(nStep,nNowUserId) 
	--播放光效
	User_EffectAdd("self",tThanksGiving2019Monopoly_Data["Effect"]["Trap"][nStep],nNowUserId) 
	
	local nRewardId=tThanksGiving2019Monopoly_Data["RewardItemId"][nStep]
	local sRewardName=Get_ItemtypeName(nRewardId)
	if nStep==1 or nStep== 14 then 
		Sys_MsgBox(tThanksGiving2019Monopoly_Text["SystemTips"]["Trap"]["GetDice"],nil,nil,nNowUserId)
	elseif nStep==6 or nStep== 12 or nStep== 18 then 
		Sys_MsgBox(tThanksGiving2019Monopoly_Text["SystemTips"]["Trap"]["Reward"],nil,nil,nNowUserId)
	else
		Sys_MsgBox(string.format(tThanksGiving2019Monopoly_Text["SystemTips"]["Trap"]["Blank"],sRewardName),nil,nil,nNowUserId)
	end 
end 



--邮件发奖
function ThanksGiving2019Monopoly_SendEmail(nStep,nNowUserId) 
	if not Sys_ChkFullTime(tActivityTime["ThanksGiving2019Monopoly"]["ActTime"])  then
		return 
	end 
	
	local nUserId =nNowUserId or Get_UserId()
	
	local nPinkEvent=tThanksGiving2019Monopoly_Data["Stc"]["Monster"][2]["Event"]
	local nPinkType=tThanksGiving2019Monopoly_Data["Stc"]["Monster"][2]["Type"]
	
	local nActionId = 0
	local nIndex = 1
	if nStep==24 or nStep==4 or nStep==20 or nStep==11 then
		--判断激情服
		if SpecialServer_ChkNoGiftServer() then
			nIndex=2
		end
		nActionId=tThanksGiving2019Monopoly_Data["ActionId"][nStep][nIndex]
	else
		nActionId=tThanksGiving2019Monopoly_Data["ActionId"][nStep]
	end 
	
	local sSender = tThanksGiving2019Monopoly_Text["SendEmail"]["Sender"]
	local sTitle = tThanksGiving2019Monopoly_Text["SendEmail"]["Title"]
	local sContent = tThanksGiving2019Monopoly_Text["SendEmail"]["Content"]
	local nExistDay = 30
	-- local nUserId = Get_UserId()
	
	
	if Get_UserStatisticValue(nPinkEvent,nPinkType,nUserId)>=1 then 
		--奖励格翻倍
		if nStep == 6 or nStep == 12 or nStep == 18 then 
			for i = 1, 2 do
				Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
			end 
		else
			Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
		end 
	else
		Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
	end 
end 


--点数翻倍
function ThanksGiving2019Monopoly_TwiceDice(nNowUserId)
	if not Sys_ChkFullTime(tActivityTime["ThanksGiving2019Monopoly"]["ActTime"])  then
		return 
	end 
	
	local nFlag=ThanksGiving2019Monopoly_SetTrapStc(nNowUserId)
	if nFlag==1 then 
		return 
	end 
	
	local nTwiceEvent=tThanksGiving2019Monopoly_Data["Stc"]["TwiceEvent"]
	local nTwiceType=tThanksGiving2019Monopoly_Data["Stc"]["TwiceType"]
	
	local nStepEvent=tThanksGiving2019Monopoly_Data["Stc"]["StepEvent"]
	local nStepType=tThanksGiving2019Monopoly_Data["Stc"]["StepType"]
	
	local nStep=Get_UserStatisticValue(nStepEvent,nStepType,nNowUserId) 
	
	Task_AddStatistic(nTwiceEvent,nTwiceType,1,1,nNowUserId) 
	Task_SetStcTimestamp(nTwiceEvent,nTwiceType,0,nNowUserId) 
	--播放光效
	User_EffectAdd("self",tThanksGiving2019Monopoly_Data["Effect"]["Trap"][nStep],nNowUserId)
	
	Sys_MsgBox(tThanksGiving2019Monopoly_Text["SystemTips"]["Trap"]["TwiceDice"],nil,nil,nNowUserId)
end 

--后退两格
function ThanksGiving2019Monopoly_BackTwoStep(nPlayingFlag,nUserId)
	if not Sys_ChkFullTime(tActivityTime["ThanksGiving2019Monopoly"]["ActTime"])  then
		return 
	end 

	local nStepEvent=tThanksGiving2019Monopoly_Data["Stc"]["StepEvent"]
	local nStepType=tThanksGiving2019Monopoly_Data["Stc"]["StepType"]
	local nStep=Get_UserStatisticValue(nStepEvent,nStepType,nUserId)
	
	local nPlayingEvent=tThanksGiving2019Monopoly_Data["Stc"]["Playing"]["Event"]
	local nPlayingType=tThanksGiving2019Monopoly_Data["Stc"]["Playing"]["Type"]
	
	if nPlayingFlag==1 then
		Task_SetStatistic(nPlayingEvent,nPlayingType,0,1,nUserId)
		Task_SetStcTimestamp(nPlayingEvent,nPlayingType,0,nUserId)
	end
	
	local nFlag=ThanksGiving2019Monopoly_SetTrapStc(nUserId)
	if nFlag==1 then 
		return 
	end 
	
	local nTrapData=0
	
	if nStep>0 and nStep<=12 then 
		nIndex=1
		nTrapData=tThanksGiving2019Monopoly_Data["StcData"][nIndex][6]
	else
		nIndex=2
		nTrapData=tThanksGiving2019Monopoly_Data["StcData"][nIndex][16]
	end 
	
	local nTrapEvent=tThanksGiving2019Monopoly_Data["Stc"]["Trap"][nIndex]["Event"]
	local nTrapType=tThanksGiving2019Monopoly_Data["Stc"]["Trap"][nIndex]["Type"]
	
	Task_SetStatistic(nTrapEvent,nTrapType,nTrapData,1,nUserId)
	Task_SetStcTimestamp(nTrapEvent,nTrapType,0,nUserId)
	
	--播放光效
	User_EffectAdd("self",tThanksGiving2019Monopoly_Data["Effect"]["Trap"][nStep],nUserId)
	
	if Get_UserStatisticValue(nStepEvent,nStepType,nUserId) >= 2 then 
		nStep=nStep - 2
	end 
	
	Task_SetStatistic(nStepEvent,nStepType,nStep,1,nUserId)
	Task_SetStcTimestamp(nStepEvent,nStepType,0,nUserId)
	
	ThanksGiving2019Monopoly_Trans(nStep,nUserId)
	--给后退格奖励
	ThanksGiving2019Monopoly_Reward(nUserId)
end


function ThanksGiving2019Monopoly_Trans(nIndex,nUserId)
	local nNowUserId = nUserId or Get_UserId()
	local nMapId = tThanksGiving2019Monopoly_Data["Pos"]["MapId"]
	local nStatus = tThanksGiving2019Monopoly_Data["StopOneTime"]["Status"]

	if nIndex==25 then 
		--判断是否是激情服
		if SpecialServer_ChkNoGiftServer() then
			nIndex=26
		end 
		--判断是否是眩晕转态
		for i=1,2 do 
			local nXunYunEvent=tThanksGiving2019Monopoly_Data["Stc"]["XunYun"][i]["Event"]
			local nXunYunType=tThanksGiving2019Monopoly_Data["Stc"]["XunYun"][i]["Type"]
			if Get_UserStatisticValue(nXunYunEvent,nXunYunType)==1 then 
				Task_SetStatistic(nXunYunEvent,nXunYunType,0,1)
				Task_SetStcTimestamp(nXunYunEvent,nXunYunType,0)
			end 
		end 
		
		if User_ChkRoleStatus(nStatus,nNowUserId) then 
			User_DelRoleStatus(nStatus,nNowUserId)
		end 
			
		nMapId=tThanksGiving2019Monopoly_Data["Pos"][nIndex]["MapId"]
	end 
	
	if nIndex==10 or nIndex==21 then
		ThanksGiving2019Monopoly_XuanYun(nNowUserId)
	end 
	
	local nPosX = tThanksGiving2019Monopoly_Data["Pos"][nIndex]["PosX"]
	local nPosY = tThanksGiving2019Monopoly_Data["Pos"][nIndex]["PosY"]
	--传送
	-- User_UserRandBoundTrans(nMapId,nPosX,nPosY,1,1,1,nNowUserId)
	User_ChgMap(nMapId,nPosX,nPosY,0,nNowUserId)
end 
	
--眩晕一回合
function ThanksGiving2019Monopoly_XuanYun(nUserId)
	if not Sys_ChkFullTime(tActivityTime["ThanksGiving2019Monopoly"]["ActTime"])  then
		return 
	end 
	
	local nNowUserId=nUserId or Get_UserId()
	
	local nStepEvent=tThanksGiving2019Monopoly_Data["Stc"]["StepEvent"]
	local nStepType=tThanksGiving2019Monopoly_Data["Stc"]["StepType"]
	local nStep=Get_UserStatisticValue(nStepEvent,nStepType,nNowUserId)
	local nIndex=0
	
	if nStep==10 then
		nIndex =1
	else
		nIndex =2
	end 
	
	local nXunYunEvent=tThanksGiving2019Monopoly_Data["Stc"]["XunYun"][nIndex]["Event"]
	local nXunYunType=tThanksGiving2019Monopoly_Data["Stc"]["XunYun"][nIndex]["Type"]
	
	if Get_UserStatisticValue(nXunYunEvent,nXunYunType,nNowUserId)>=2 then 
		return 
	end 
	
	--播放光效
	User_EffectAdd("self",tThanksGiving2019Monopoly_Data["Effect"]["Trap"][nStep],nNowUserId)
	
	--眩晕
	local nStatus = tThanksGiving2019Monopoly_Data["StopOneTime"]["Status"]
	local nPower = tThanksGiving2019Monopoly_Data["StopOneTime"]["Power"]
	local nSecs = tThanksGiving2019Monopoly_Data["StopOneTime"]["Secs"] 
	local nTimes = tThanksGiving2019Monopoly_Data["StopOneTime"]["Times"]
	local nunRemainTime = tThanksGiving2019Monopoly_Data["StopOneTime"]["RemainTime"]
	local nunEndTime = tThanksGiving2019Monopoly_Data["StopOneTime"]["EndTime"]
	
	if User_ChkRoleStatus(nStatus,nNowUserId) then
		return 
	end 
	
	User_AddRoleStatus(nStatus,nPower,nSecs,nTimes,nunRemainTime,nunEndTime,0,0,0,nNowUserId)
	
	Task_AddStatistic(nXunYunEvent,nXunYunType,1,1,nNowUserId)
	Task_SetStcTimestamp(nXunYunEvent,nXunYunType,0,nNowUserId)
	
	local sFunc = "ThanksGiving2019Monopoly_DeleteXuanYun</N>3326599</N>" .. nIndex .. "</N>" .. nNowUserId
	local sFunc1 = "ThanksGiving2019Monopoly_Trans</N>25</N>" .. nNowUserId
	Sys_MsgBox(tThanksGiving2019Monopoly_Text["SystemTips"]["Trap"]["XuanYun"],sFunc,sFunc1,nNowUserId)
end 

--解除眩晕效果
function ThanksGiving2019Monopoly_DeleteXuanYun(nItemID,nIndex,nNowUserId)

	if not Sys_ChkFullTime(tActivityTime["ThanksGiving2019Monopoly"]["ActTime"])  then
		return 
	end 
	
	local nUserId=nNowUserId or Get_UserId()
	
	local nXunYunEvent=tThanksGiving2019Monopoly_Data["Stc"]["XunYun"][nIndex]["Event"]
	local nXunYunType=tThanksGiving2019Monopoly_Data["Stc"]["XunYun"][nIndex]["Type"]
	local nStatus = tThanksGiving2019Monopoly_Data["StopOneTime"]["Status"]
	
	--判断是否有骰子
	if not Item_ChkMulItem(nItemID,nItemID,1,0,0,nUserId,0) then
		--提示没有骰子
		Sys_MsgBox(tThanksGiving2019Monopoly_Text["SystemTips"]["Trap"]["NoDelete"],nil,nil,nUserId)
		--传送回宴会厅
		ThanksGiving2019Monopoly_Trans(25,nUserId)
	end
	
	local tReward=CommonFunc_Copy(tThanksGiving2019Monopoly_Data["DeleteDice"]) 
	tReward["DeleteItem"][1]["ItemNum"]=1
	
	--扣除一枚骰子，解除转态
	if RewardTemplate_UseItemAndMsg(tReward,nUserId) then 
		Task_AddStatistic(nXunYunEvent,nXunYunType,1,1,nUserId)
		Task_SetStcTimestamp(nXunYunEvent,nXunYunType,0,nUserId)
		User_DelRoleStatus(nStatus,nUserId)
		--成功解除提示
		Sys_MsgBox(tThanksGiving2019Monopoly_Text["SystemTips"]["Trap"]["Delete"],nil,nil,nUserId)
	end 
end 

--终点触发
function ThanksGiving2019Monopoly_End(nNowUserId)
	if not Sys_ChkFullTime(tActivityTime["ThanksGiving2019Monopoly"]["ActTime"])  then
		return 
	end 
	local nStepEvent=tThanksGiving2019Monopoly_Data["Stc"]["StepEvent"]
	local nStepType=tThanksGiving2019Monopoly_Data["Stc"]["StepType"]
	
	local nStep=Get_UserStatisticValue(nStepEvent,nStepType,nNowUserId)
	if  nStep>= 24 then 
	
		--给奖励
		ThanksGiving2019Monopoly_SendEmail(nStep,nNowUserId)
		--传出地图
		ThanksGiving2019Monopoly_Trans(25,nNowUserId)
		--清理游戏状态
		ThanksGiving2019Monopoly_ClearStc(nNowUserId)
		--给提示
		Sys_MsgBox(tThanksGiving2019Monopoly_Text["SystemTips"]["Complete"],nil,nil,nNowUserId)

	end
end

--扔骰子
function ThanksGiving2019Monopoly_ThrowDice(nItemId)
	if not Sys_ChkFullTime(tActivityTime["ThanksGiving2019Monopoly"]["ActTime"])  then
		return 
	end 
	
	local nMapId = Get_UserMapId()
	local nMapdoc = Get_MapDoc(nMapId)
	
	if nMapdoc~=3029 then 
		NpcPosition_PathFind(25440)
	else
	
		local nStepEvent=tThanksGiving2019Monopoly_Data["Stc"]["StepEvent"]
		local nStepType=tThanksGiving2019Monopoly_Data["Stc"]["StepType"]
		
		local nBlueEvent=tThanksGiving2019Monopoly_Data["Stc"]["Monster"][1]["Event"]
		local nBlueType=tThanksGiving2019Monopoly_Data["Stc"]["Monster"][1]["Type"]
		
		local nTwiceEvent=tThanksGiving2019Monopoly_Data["Stc"]["TwiceEvent"]
		local nTwiceType=tThanksGiving2019Monopoly_Data["Stc"]["TwiceType"]
		
		local nPlayingEvent=tThanksGiving2019Monopoly_Data["Stc"]["Playing"]["Event"]
		local nPlayingType=tThanksGiving2019Monopoly_Data["Stc"]["Playing"]["Type"]
		
		if Get_UserStatisticValue(nPlayingEvent,nPlayingType)>=1 then
			return 
		end
		
		local nStep=Get_UserStatisticValue(nStepEvent,nStepType)
		local nTarget=0
		local nFlag=0
		
		--物品判断
		if Item_ChkMulItem(nItemId,nItemId,1) and Item_DelMulItem(nItemId,nItemId,1) then 
			
			--设置掷筛状态
			Task_AddStatistic(nPlayingEvent,nPlayingType,1,1)
			Task_SetStcTimestamp(nPlayingEvent,nPlayingType,0)
		
			local tRandomDice = RewardTemplate_NewRandom(tThanksGiving2019Monopoly_Data["DiceProb"],1)
			local nRandomDiceNum = tRandomDice[1]["tAward"][1]["Point"]
			local nStartData=nRandomDiceNum
			
			local nPosX = Get_UserPositionX()
			local nPosY = Get_UserPositionY()
			--玩家光效
			Map_Effect(nMapId, nPosX + 2 - 2 * 3, nPosY - (4 - 3), tThanksGiving2019Monopoly_Data["Effect"]["Dice"][nRandomDiceNum])
			
			--判断有无小蓝加持
			if Get_UserStatisticValue(nBlueEvent,nBlueType)>=1 then 
				nRandomDiceNum=nRandomDiceNum*2
			end 
			
			--判断是否掷筛数翻倍
			if Get_UserStatisticValue(nTwiceEvent,nTwiceType)>=1 then 
				nRandomDiceNum=nRandomDiceNum*2
				--清翻倍效果掩码
				Task_SetStatistic(nTwiceEvent,nTwiceType,0,1)
				Task_SetStcTimestamp(nTwiceEvent,nTwiceType,0)
			end 
			
			if nStep+nRandomDiceNum == 9 or nStep+nRandomDiceNum == 19 then 
				nFlag=1
			end 	
			
			if nStep+nRandomDiceNum>=24 then 	
				--加掩码
				Task_SetStatistic(nStepEvent,nStepType,24,1)
				Task_SetStcTimestamp(nStepEvent,nStepType,0)
				nTarget=24
			else
				Task_AddStatistic(nStepEvent,nStepType,nRandomDiceNum,1)
				Task_SetStcTimestamp(nStepEvent,nStepType,0)
				nTarget=nStep+nRandomDiceNum
			end 
	
			--延时传送
			local nNowUserId =  Get_UserId()
			User_SetTimer(3, "ThanksGiving2019Monopoly_FinalResult</N>" .. nTarget .. "</N>" .. nStartData .. "</N>" .. nFlag .. "</N>" .. nNowUserId, 0)
			if nFlag==1 then 
				User_SetTimer(5, "ThanksGiving2019Monopoly_BackTwoStep</N>" .. nFlag, 0)
			end 
		end
	end 
end
		
--骰子结果
function ThanksGiving2019Monopoly_FinalResult(nTarget,nStartData,nFlag,nNowUserId,nUserId)
	if not Sys_ChkFullTime(tActivityTime["ThanksGiving2019Monopoly"]["ActTime"])  then
		return 
	end 
	
	local nBlueEvent=tThanksGiving2019Monopoly_Data["Stc"]["Monster"][1]["Event"]
	local nBlueType=tThanksGiving2019Monopoly_Data["Stc"]["Monster"][1]["Type"]
	
	
	--判断有无小蓝加持
	if Get_UserStatisticValue(nBlueEvent,nBlueType,nNowUserId) < 1 then 
		User_TalkChannel2005(string.format(tThanksGiving2019Monopoly_Text[3326599]["Map"],nStartData,nStartData),nNowUserId)
	else
		User_TalkChannel2005(string.format(tThanksGiving2019Monopoly_Text[3326599]["Monster"],nStartData,nStartData,nStartData),nNowUserId)
	end 
	
	ThanksGiving2019Monopoly_Trans(nTarget,nNowUserId)
	
	local nPlayingEvent=tThanksGiving2019Monopoly_Data["Stc"]["Playing"]["Event"]
	local nPlayingType=tThanksGiving2019Monopoly_Data["Stc"]["Playing"]["Type"]
	
	if nFlag == 0 then
		Task_SetStatistic(nPlayingEvent,nPlayingType,0,1,nNowUserId)
		Task_SetStcTimestamp(nPlayingEvent,nPlayingType,0,nNowUserId)
	end
	
	if nTarget == 9 or nTarget == 19 then 
		Sys_MsgBox(tThanksGiving2019Monopoly_Text["SystemTips"]["Trap"]["BackTwoStep"],nil,nil,nNowUserId)
	elseif nTarget==10 or nTarget==21 then 
		ThanksGiving2019Monopoly_XuanYun(nNowUserId)
	elseif nTarget==3 or nTarget==16 then 
		ThanksGiving2019Monopoly_TwiceDice(nNowUserId)
	elseif nTarget>=24 then
		ThanksGiving2019Monopoly_End(nNowUserId)
	else
		ThanksGiving2019Monopoly_Reward(nNowUserId)
	end 
	
end
	
	
--打开回气丹礼包
function ThanksGiving2019Monopoly_OpenPack(nItemId)
	-- 物品是否存在
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return 
	end
	
	local nPackEvent=tThanksGiving2019Monopoly_Data["Stc"][nItemId]["Event"]
	local nPackType=tThanksGiving2019Monopoly_Data["Stc"][nItemId]["Type"]
	
	local nData = Get_UserStatisticValue(nPackEvent,nPackType)
	
	if nData>=5 then 
		Task_SetStatistic(nPackEvent,nPackType,0,1)
		Task_SetStcTimestamp(nPackEvent,nPackType,0)
		nData = Get_UserStatisticValue(nPackEvent,nPackType)
	end 
	
	local nOpenCost = tThanksGiving2019Monopoly_Data["Open"][nItemId][nData+1]
	
	--赠点不足
	if Get_UserMonoEMoney()<nOpenCost then 
		return Sys_MsgBox(tThanksGiving2019Monopoly_Text["SystemTips"]["Emoney"])
	end 
	
	-- 判断背包空间
	local tReward = CommonFunc_Copy(tThanksGiving2019Monopoly_Data["Pack"][nItemId])
	local nSpace = RewardTemplate_GetRewardSpace(tReward)
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tThanksGiving2019Monopoly_Text["SystemTips"]["NoSpace"],nSpace))
		return 
	end
	
	tItem[nItemId]["Text121"] = string.format(tThanksGiving2019Monopoly_Text[nItemId]["Text121"],nOpenCost)
	tItem[nItemId]["OptionFunc121"] = "ThanksGiving2019Monopoly_OpenPackConfirm</N>" .. nItemId
	
	LinkItemGossipFunc_New(nItemId,"2-1")
end 

function ThanksGiving2019Monopoly_OpenPackConfirm(nItemId)

	-- 物品是否存在
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return 
	end
	local nPackEvent=tThanksGiving2019Monopoly_Data["Stc"][nItemId]["Event"]
	local nPackType=tThanksGiving2019Monopoly_Data["Stc"][nItemId]["Type"]
	
	local nData = Get_UserStatisticValue(nPackEvent,nPackType)
	
	if nData>=5 then 
		Task_SetStatistic(nPackEvent,nPackType,0,1)
		Task_SetStcTimestamp(nPackEvent,nPackType,0)
	end 
	
	local nOpenCost = tThanksGiving2019Monopoly_Data["Open"][nItemId][nData+1]
	
	--赠点不足
	if Get_UserMonoEMoney()<nOpenCost then 
		return Sys_MsgBox(tThanksGiving2019Monopoly_Text["SystemTips"]["Emoney"])
	end 
	
	-- 判断背包空间
	local tReward = CommonFunc_Copy(tThanksGiving2019Monopoly_Data["Pack"][nItemId])
	local nSpace = RewardTemplate_GetRewardSpace(tReward)
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tThanksGiving2019Monopoly_Text["SystemTips"]["NoSpace"],nSpace))
		return 
	end
	
	--扣赠点
	if User_AddEMoneyMono(-nOpenCost) then 
		Task_AddStatistic(nPackEvent,nPackType,1,1)
		Task_SetStcTimestamp(nPackEvent,nPackType,0)
		
		local nNowData = Get_UserStatisticValue(nPackEvent,nPackType)
		
		-- 重置
		if nNowData >= 5 then
			Task_SetStatistic(nPackEvent,nPackType,0,1)
			Task_SetStcTimestamp(nPackEvent,nPackType,0)
			
			tReward["DeleteItem"] = {}
			tReward["DeleteItem"][1] = {}
			tReward["DeleteItem"][1]["Id"] = nItemId
			
			--给奖励
			RewardTemplate_UseItemAndMsg(tReward)
		else
			RewardTemplate_UseItemAndMsg(tReward)
		end 
		
		--记录emoneylog
		Sys_SaveEmoneyBuy(string.format(tThanksGiving2019Monopoly_Data["Log"]["PackEmoney"],nOpenCost))
	end 
end 

--打开可选包
function ThanksGiving2019Monopoly_OpenCoatPack(nItemId,nIndex)
	-- 物品是否存在
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return 
	end
	
	local nOpenCost=tThanksGiving2019Monopoly_Data["Open"][nItemId]
	
	--赠点不足
	if Get_UserMonoEMoney()<nOpenCost then 
		return Sys_MsgBox(tThanksGiving2019Monopoly_Text["SystemTips"]["Emoney"])
	end 
	
	--判断背包空间
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tThanksGiving2019Monopoly_Data["Pack"][nItemId][nIndex])
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tThanksGiving2019Monopoly_Data["Pack"][nItemId][nIndex])
	local nSpace = nGetRewardSpace - nDelRewardSpace
	if not User_CheckLeftSpace(nSpace) then
		return Sys_MsgBox(string.format(tThanksGiving2019Monopoly_Text["SystemTips"]["NoSpace"],nSpace))
	end
	
	local sRewardName=tThanksGiving2019Monopoly_Text[nItemId]["Option11" .. nIndex]
	tItem[nItemId]["Text121"] = string.format(tThanksGiving2019Monopoly_Text[nItemId]["Text121"],sRewardName)
	tItem[nItemId]["OptionFunc121"] = "ThanksGiving2019Monopoly_OpenCoatPackConfirm</N>" .. nItemId .. "</N>" .. nIndex
	
	LinkItemGossipFunc_New(nItemId,"2-1")
end 

function ThanksGiving2019Monopoly_OpenCoatPackConfirm(nItemId,nIndex)
	-- 物品是否存在
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return 
	end
	
	local nOpenCost=tThanksGiving2019Monopoly_Data["Open"][nItemId]
	
	--赠点不足
	if Get_UserMonoEMoney()<nOpenCost then 
		return Sys_MsgBox(tThanksGiving2019Monopoly_Text["SystemTips"]["Emoney"])
	end 
	
	--判断背包空间
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tThanksGiving2019Monopoly_Data["Pack"][nItemId][nIndex])
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tThanksGiving2019Monopoly_Data["Pack"][nItemId][nIndex])
	local nSpace = nGetRewardSpace - nDelRewardSpace
	if not User_CheckLeftSpace(nSpace) then
		return Sys_MsgBox(string.format(tThanksGiving2019Monopoly_Text["SystemTips"]["NoSpace"],nSpace))
	end
	
	--扣除赠点
	if User_AddEMoneyMono(-nOpenCost) then 
		if RewardTemplate_UseItemAndMsg(tThanksGiving2019Monopoly_Data["Pack"][nItemId][nIndex]) then 
			if tThanksGiving2019Monopoly_Data["Log"]["Pack"][nItemId]~=nil then 
				Sys_SaveEmoneyBuy(tThanksGiving2019Monopoly_Data["Log"]["Pack"][nItemId])
			end
		end 
	end 
end 

function ThanksGiving2019Monopoly_OpenStonePack(nItemId)
	-- 物品是否存在
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return 
	end
	
	local nOpenCost=tThanksGiving2019Monopoly_Data["Open"][nItemId]
	
	--赠点不足
	if Get_UserMonoEMoney()<nOpenCost then 
		return Sys_MsgBox(tThanksGiving2019Monopoly_Text["SystemTips"]["Emoney"])
	end 
	
	--背包空间判断
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tThanksGiving2019Monopoly_Data["Pack"][nItemId])
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tThanksGiving2019Monopoly_Data["Pack"][nItemId])
	local nSpace = nGetRewardSpace - nDelRewardSpace
	
	if not User_CheckLeftSpace(nSpace+1) then
		return Sys_MsgBox(string.format(tThanksGiving2019Monopoly_Text["SystemTips"]["NoSpace"],nSpace+1))
	end
	
	tItem[nItemId]["OptionFunc121"] = "ThanksGiving2019Monopoly_OpenStonePackConfirm</N>" .. nItemId
	
	LinkItemGossipFunc_New(nItemId,"2-1")
end

function ThanksGiving2019Monopoly_OpenStonePackConfirm(nItemId)
	-- 物品是否存在
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return 
	end
	
	local nOpenCost=tThanksGiving2019Monopoly_Data["Open"][nItemId]
	
	--赠点不足
	if Get_UserMonoEMoney()<nOpenCost then 
		return Sys_MsgBox(tThanksGiving2019Monopoly_Text["SystemTips"]["Emoney"])
	end 
	
	--背包空间判断
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tThanksGiving2019Monopoly_Data["Pack"][nItemId])
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tThanksGiving2019Monopoly_Data["Pack"][nItemId])
	local nSpace = nGetRewardSpace - nDelRewardSpace
	
	if not User_CheckLeftSpace(nSpace+1) then
		return Sys_MsgBox(string.format(tThanksGiving2019Monopoly_Text["SystemTips"]["NoSpace"],nSpace))
	end
	
	--扣除赠点
	if User_AddEMoneyMono(-nOpenCost) then 
		RewardTemplate_UseItemAndMsg(tThanksGiving2019Monopoly_Data["Pack"][nItemId])
		if Sys_Random(3000,10000) then
			RewardTemplate_UseItemAndMsg(tThanksGiving2019Monopoly_Data["EtreReward"][nItemId])
		end 
		
		Sys_SaveEmoneyBuy(tThanksGiving2019Monopoly_Data["Log"]["Pack"][nItemId])
	end 
end 
			
function ThanksGiving2019Monopoly_OpenNormalPack(nItemId)
	-- 物品是否存在
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return 
	end
	
	local nOpenCost=tThanksGiving2019Monopoly_Data["Open"][nItemId]
	
	--赠点不足
	if Get_UserMonoEMoney()<nOpenCost then 
		return Sys_MsgBox(tThanksGiving2019Monopoly_Text["SystemTips"]["Emoney"])
	end 
	
	--背包空间判断
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tThanksGiving2019Monopoly_Data["Pack"][nItemId])
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tThanksGiving2019Monopoly_Data["Pack"][nItemId])
	local nSpace = nGetRewardSpace - nDelRewardSpace
	
	if not User_CheckLeftSpace(nSpace) then
		return Sys_MsgBox(string.format(tThanksGiving2019Monopoly_Text["SystemTips"]["NoSpace"],nSpace))
	end
	
	tItem[nItemId]["OptionFunc121"] = "ThanksGiving2019Monopoly_OpenNormalPackConfirm</N>" .. nItemId
	
	LinkItemGossipFunc_New(nItemId,"2-1")
end 

function ThanksGiving2019Monopoly_OpenNormalPackConfirm(nItemId)
	-- 物品是否存在
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return 
	end
	
	local nOpenCost=tThanksGiving2019Monopoly_Data["Open"][nItemId]
	
	--赠点不足
	if Get_UserMonoEMoney()<nOpenCost then 
		return Sys_MsgBox(tThanksGiving2019Monopoly_Text["SystemTips"]["Emoney"])
	end 
	
	--背包空间判断
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tThanksGiving2019Monopoly_Data["Pack"][nItemId])
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tThanksGiving2019Monopoly_Data["Pack"][nItemId])
	local nSpace = nGetRewardSpace - nDelRewardSpace
	
	if not User_CheckLeftSpace(nSpace) then
		return Sys_MsgBox(string.format(tThanksGiving2019Monopoly_Text["SystemTips"]["NoSpace"],nSpace))
	end
	
	--扣除赠点
	if User_AddEMoneyMono(-nOpenCost) then 
		if RewardTemplate_UseItemAndMsg(tThanksGiving2019Monopoly_Data["Pack"][nItemId]) then 
			Sys_SaveEmoneyBuy(tThanksGiving2019Monopoly_Data["Log"]["Pack"][nItemId])
		end 
	end 
end 	
	
--终点清掩码
function ThanksGiving2019Monopoly_ClearStc(nNowUserId)
	
	local nUserId = nNowUserId or Get_UserId()
	
	local nStepEvent=tThanksGiving2019Monopoly_Data["Stc"]["StepEvent"]
	local nStepType=tThanksGiving2019Monopoly_Data["Stc"]["StepType"]
	
	local nTwiceEvent=tThanksGiving2019Monopoly_Data["Stc"]["TwiceEvent"]
	local nTwiceType=tThanksGiving2019Monopoly_Data["Stc"]["TwiceType"]
	

	Task_SetStatistic(nStepEvent,nStepType,0,1,nUserId)
	Task_SetStcTimestamp(nStepEvent,nStepType,0,nUserId)
	
	Task_SetStatistic(nTwiceEvent,nTwiceType,0,1,nUserId)
	Task_SetStcTimestamp(nTwiceEvent,nTwiceType,0,nUserId)
	
	for i=1,2 do
		local nMonsterEvent=tThanksGiving2019Monopoly_Data["Stc"]["Monster"][i]["Event"]
		local nMonsterType=tThanksGiving2019Monopoly_Data["Stc"]["Monster"][i]["Type"]
		
		local nTrapEvent=tThanksGiving2019Monopoly_Data["Stc"]["Trap"][i]["Event"]
		local nTrapType=tThanksGiving2019Monopoly_Data["Stc"]["Trap"][i]["Type"]
		
		local nXunYunEvent=tThanksGiving2019Monopoly_Data["Stc"]["XunYun"][i]["Event"]
		local nXunYunType=tThanksGiving2019Monopoly_Data["Stc"]["XunYun"][i]["Type"]
		
		Task_SetStatistic(nMonsterEvent,nMonsterType,0,1,nUserId)
		Task_SetStcTimestamp(nMonsterEvent,nMonsterType,0,nUserId)
		
		Task_SetStatistic(nTrapEvent,nTrapType,0,1,nUserId)
		Task_SetStcTimestamp(nTrapEvent,nTrapType,0,nUserId)
		
		Task_SetStatistic(nXunYunEvent,nXunYunType,0,1,nUserId)
		Task_SetStcTimestamp(nXunYunEvent,nXunYunType,0,nUserId)
		
		User_EffectDel("self",tThanksGiving2019Monopoly_Data["Effect"][i],nUserId)
	end 

	--判断是否是眩晕转态
	local nStatus = tThanksGiving2019Monopoly_Data["StopOneTime"]["Status"]
	-- local nUserId=Get_UserId()
	if User_ChkRoleStatus(nStatus,nUserId) then 
		User_DelRoleStatus(nStatus,nUserId)
	end 
	
	--删除任务道具
	if Item_ChkItem(tThanksGiving2019Monopoly_Data["TaskItem"],1,0,nUserId) and Item_DelItem(tThanksGiving2019Monopoly_Data["TaskItem"],1,0,nUserId) then
		return
	end 
end 

--离场券使用
function ThanksGiving2019Monopoly_DepartureCoupon(nItemId)
	if not Sys_ChkFullTime(tActivityTime["ThanksGiving2019Monopoly"]["ActTime"])  then
		return 
	end

	-- 物品是否存在
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return 
	end
	
	local nMapId = Get_UserMapId()
	local nMapdoc = Get_MapDoc(nMapId)
	
	if nMapdoc~=3029 then 
		return 
	else
		ThanksGiving2019Monopoly_Trans(25)
	end 
end 
	
--陷阱触发掩码设置
function ThanksGiving2019Monopoly_SetTrapStc(nUserId)
	if not Sys_ChkFullTime(tActivityTime["ThanksGiving2019Monopoly"]["ActTime"])  then
		return 
	end
	
	local nNowUserId=nUserId or Get_UserId()
	local nStepEvent=tThanksGiving2019Monopoly_Data["Stc"]["StepEvent"]
	local nStepType=tThanksGiving2019Monopoly_Data["Stc"]["StepType"]
	local nStep=Get_UserStatisticValue(nStepEvent,nStepType,nNowUserId)
	
	local nIndex=0
	
	local nFlag=0
	
	if nStep>0 and nStep<=12 then 
		nIndex=1
	else
		nIndex=2
	end 
	local nTrapEvent=tThanksGiving2019Monopoly_Data["Stc"]["Trap"][nIndex]["Event"]
	local nTrapType=tThanksGiving2019Monopoly_Data["Stc"]["Trap"][nIndex]["Type"]
	
	
	local nTotalData=Get_UserStatisticValue(nTrapEvent,nTrapType,nNowUserId)
	local nTrapData=tThanksGiving2019Monopoly_Data["StcData"][nIndex][nStep]
	
	if Sys_ParseNumbersContain(nTrapData,nTotalData) then 
		nFlag = 1
		return nFlag
	end 
	
	Task_AddStatistic(nTrapEvent,nTrapType,nTrapData,1,nNowUserId)
	Task_SetStcTimestamp(nTrapEvent,nTrapType,0,nNowUserId)
	
	return nFlag
end 
		

		
		
function ThanksGiving2019Monopoly_OpenEmoneyPack(nItemId)

	-- 物品是否存在
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return 
	end
	
	local nOpenCost=tThanksGiving2019Monopoly_Data["Open"][nItemId]
	
	--天石不足
	if Get_UserEMoney()<nOpenCost then 
		return Sys_MsgBox(tThanksGiving2019Monopoly_Text["SystemTips"]["Emoney1"])
	end 
	
	--背包空间判断
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tThanksGiving2019Monopoly_Data["Pack"][nItemId])
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tThanksGiving2019Monopoly_Data["Pack"][nItemId])
	local nSpace = nGetRewardSpace - nDelRewardSpace
	
	if not User_CheckLeftSpace(nSpace) then
		return Sys_MsgBox(string.format(tThanksGiving2019Monopoly_Text["SystemTips"]["NoSpace"],nSpace))
	end
	
	tItem[nItemId]["OptionFunc121"] = "ThanksGiving2019Monopoly_OpenEmoneyPackConfirm</N>" .. nItemId
	
	LinkItemGossipFunc_New(nItemId,"2-1")
end 

function ThanksGiving2019Monopoly_OpenEmoneyPackConfirm(nItemId)
	-- 物品是否存在
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return 
	end
	
	local nOpenCost=tThanksGiving2019Monopoly_Data["Open"][nItemId]
	
	--天石不足
	if Get_UserEMoney()<nOpenCost then 
		return Sys_MsgBox(tThanksGiving2019Monopoly_Text["SystemTips"]["Emoney1"])
	end 
	
	--背包空间判断
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tThanksGiving2019Monopoly_Data["Pack"][nItemId])
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tThanksGiving2019Monopoly_Data["Pack"][nItemId])
	local nSpace = nGetRewardSpace - nDelRewardSpace
	
	if not User_CheckLeftSpace(nSpace) then
		return Sys_MsgBox(string.format(tThanksGiving2019Monopoly_Text["SystemTips"]["NoSpace"],nSpace))
	end
	
	--扣除赠点
	if User_AddEMoney(-nOpenCost) then 
		if RewardTemplate_UseItemAndMsg(tThanksGiving2019Monopoly_Data["Pack"][nItemId]) then 
			Sys_SaveEmoneyBuy(tThanksGiving2019Monopoly_Data["Log"]["Pack"][nItemId])
		end 
	end 
end 
----------------------------------NPC部分---------------------------------------------
tNpcFace[5318] = 215
tNpcGossip[25440]= tNpcGossip[25440] or DefaultNpc:new{}
tNpcGossip[25440]["OptionHidden"] = 1
tNpcGossip[25440]["DialogueText"] = tThanksGiving2019Monopoly_Text[25440]

--活动前
tNpcGossip[25440]["Text1-1"] = {111,112,113,114}
tNpcGossip[25440]["tOption1-1"] = {111}
tNpcGossip[25440]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["ThanksGiving2019Monopoly"]["ActTime"])
end

--活动后
tNpcGossip[25440]["Text1-2"] = {121}
tNpcGossip[25440]["tOption1-2"] = {121}
tNpcGossip[25440]["ChkFunc1-2"] = function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["ThanksGiving2019Monopoly"]["ActTime"])
end

--活动中
tNpcGossip[25440]["Text1-3"] = {131,132,133,134}
tNpcGossip[25440]["tOption1-3"] = {131,132,133}
tNpcGossip[25440]["ChkFunc1-3"] = function()
	if not Sys_ChkFullTime(tActivityTime["ThanksGiving2019Monopoly"]["ActTime"])  then
		return false
	else
		return true
	end 
end

tNpcGossip[25440]["OptionFunc131"] = "ThanksGiving2019Monopoly_EnterMonoPolyInstance"

tNpcGossip[25440]["OptionChkFunc132"] = function ()
	local nDiceEvent=tThanksGiving2019Monopoly_Data["Stc"]["DiceEvent"]
	local nDiceType=tThanksGiving2019Monopoly_Data["Stc"]["DiceType"]
	
	--隔天清掩码
	Task_StcReset(nDiceEvent,nDiceType)
	
	if Get_UserStatisticValue(nDiceEvent,nDiceType)>=1 then 
		return false
	else
		return true
	end 
end 
tNpcGossip[25440]["OptionFunc132"] = "ThanksGiving2019Monopoly_GetDice"
tNpcGossip[25440]["OptionPoint133"] = "2-1"

--活动规则
tNpcGossip[25440]["Text2-1"] = {211,212,213,214,215,216,217,218}
tNpcGossip[25440]["tOption2-1"] = {211}


--钱夫人
tNpcFace[5319] = 164
tNpcGossip[25441]= tNpcGossip[25441] or DefaultNpc:new{}
tNpcGossip[25441]["OptionHidden"] = 1
tNpcGossip[25441]["DialogueText"] = tThanksGiving2019Monopoly_Text[25441]

--活动中
tNpcGossip[25441]["Text1-1"] = {111,112,113}
tNpcGossip[25441]["tOption1-1"] = {111}
tNpcGossip[25441]["ChkFunc1-1"] = function()
	if not Sys_ChkFullTime(tActivityTime["ThanksGiving2019Monopoly"]["ActTime"])  then
		return false
	else
		return true
	end 
end

tNpcGossip[25441]["OptionFunc111"] = "ThanksGiving2019Monopoly_BuyCheck"

tNpcGossip[25441]["Text2-1"] = {211}
tNpcGossip[25441]["tOption2-1"] = {211,212}

tNpcGossip[25464]= tNpcGossip[25441] 

--神兽小蓝
tNpcFace[4510] = 2622
tNpcGossip[25442]= tNpcGossip[25442] or DefaultNpc:new{}
tNpcGossip[25442]["OptionHidden"] = 1
tNpcGossip[25442]["DialogueText"] = tThanksGiving2019Monopoly_Text[25442]

--活动中
tNpcGossip[25442]["Text1-1"] = {111,112,113,114}
tNpcGossip[25442]["tOption1-1"] = {111,112}
tNpcGossip[25442]["ChkFunc1-1"] = function()
	if not Sys_ChkFullTime(tActivityTime["ThanksGiving2019Monopoly"]["ActTime"])  then
		return false
	else
		return true
	end 
end


tNpcGossip[25442]["OptionFunc111"] = "ThanksGiving2019Monopoly_BuyMonster</N>1</N>3326599</N>25442"

tNpcGossip[25442]["Text2-1"] = {121}
tNpcGossip[25442]["tOption2-1"] = {121,122}
-- tNpcGossip[25442]["OptionFunc121"] = "ThanksGiving2019Monopoly_BuyMonster</N>1</N>3326599</N>25442"

--神兽小粉
tNpcFace[4511] = 2623
tNpcGossip[25443]= tNpcGossip[25443] or DefaultNpc:new{}
tNpcGossip[25443]["OptionHidden"] = 1
tNpcGossip[25443]["DialogueText"] = tThanksGiving2019Monopoly_Text[25443]

--活动中
tNpcGossip[25443]["Text1-1"] = {111,112,113,114}
tNpcGossip[25443]["tOption1-1"] = {111,112}
tNpcGossip[25443]["ChkFunc1-1"] = function()
	if not Sys_ChkFullTime(tActivityTime["ThanksGiving2019Monopoly"]["ActTime"])  then
		return false
	else
		return true
	end 
end


tNpcGossip[25443]["OptionFunc111"] = "ThanksGiving2019Monopoly_BuyMonster</N>2</N>3326599</N>25443"

tNpcGossip[25443]["Text2-1"] = {121}
tNpcGossip[25443]["tOption2-1"] = {121,122}
-- tNpcGossip[25443]["OptionFunc121"] = "ThanksGiving2019Monopoly_BuyMonster</N>2</N>3326599</N>25443"


---------------------------------物品部分---------------------------------------------
--回气丹特惠礼盒
tItemFace[3326735] = 1439
tItem[3326735] = tItem[3326735] or {}
tItem[3326735]["OptionHidden"] = 1
tItem[3326735]["DialogueText"] = tThanksGiving2019Monopoly_Text[3326735]

tItem[3326735]["Text1-1"] = {111}
tItem[3326735]["tOption1-1"] = {111,112}
tItem[3326735]["ChkFunc1-1"] = function ()

	local nPackEvent=tThanksGiving2019Monopoly_Data["Stc"][3326735]["Event"]
	local nPackType=tThanksGiving2019Monopoly_Data["Stc"][3326735]["Type"]
	
	local nData = Get_UserStatisticValue(nPackEvent,nPackType)
	local nOpenCost = tThanksGiving2019Monopoly_Data["Open"][3326735][nData+1]
	
	tItem[3326735]["Text111"] = string.format(tThanksGiving2019Monopoly_Text[3326735]["Text111"],(nData+1),nOpenCost)
	return true
end 

tItem[3326735]["OptionFunc111"] = "ThanksGiving2019Monopoly_OpenPack</N>3326735"

tItem[3326735]["Text2-1"] = {121}
tItem[3326735]["tOption2-1"] = {121,122}

--可选包使用
--时装
tItemFace[3326736] = 2314
tItem[3326736] = tItem[3326736] or {}
tItem[3326736]["OptionHidden"] = 1
tItem[3326736]["DialogueText"] = tThanksGiving2019Monopoly_Text[3326736]

tItem[3326736]["Text1-1"] = {111,112}
tItem[3326736]["tOption1-1"] = {111,112,113,114,115}
tItem[3326736]["OptionFunc111"] = "ThanksGiving2019Monopoly_OpenCoatPack</N>3326736</N>1"
tItem[3326736]["OptionFunc112"] = "ThanksGiving2019Monopoly_OpenCoatPack</N>3326736</N>2"
tItem[3326736]["OptionFunc113"] = "ThanksGiving2019Monopoly_OpenCoatPack</N>3326736</N>3"
tItem[3326736]["OptionFunc114"] = "ThanksGiving2019Monopoly_OpenCoatPack</N>3326736</N>4"
tItem[3326736]["OptionFunc115"] = "ThanksGiving2019Monopoly_OpenCoatPack</N>3326736</N>5"

tItem[3326736]["Text2-1"] = {121}
tItem[3326736]["tOption2-1"] = {121,122}

--坐骑
tItemFace[3326737] = 2315
tItem[3326737] = tItem[3326737] or {}
tItem[3326737]["OptionHidden"] = 1
tItem[3326737]["DialogueText"] = tThanksGiving2019Monopoly_Text[3326737]

tItem[3326737]["Text1-1"] = {111,112}
tItem[3326737]["tOption1-1"] = {111,112,113}
tItem[3326737]["OptionFunc111"] = "ThanksGiving2019Monopoly_OpenCoatPack</N>3326737</N>1"
tItem[3326737]["OptionFunc112"] = "ThanksGiving2019Monopoly_OpenCoatPack</N>3326737</N>2"
tItem[3326737]["OptionFunc113"] = "ThanksGiving2019Monopoly_OpenCoatPack</N>3326737</N>3"


tItem[3326737]["Text2-1"] = {121}
tItem[3326737]["tOption2-1"] = {121,122}

--马匹
tItemFace[3326744] = 1009
tItem[3326744] = tItem[3326744] or {}
tItem[3326744]["OptionHidden"] = 1
tItem[3326744]["DialogueText"] = tThanksGiving2019Monopoly_Text[3326744]

tItem[3326744]["Text1-1"] = {111,112}
tItem[3326744]["tOption1-1"] = {111,112,113}
tItem[3326744]["OptionFunc111"] = "ThanksGiving2019Monopoly_OpenCoatPack</N>3326744</N>1"
tItem[3326744]["OptionFunc112"] = "ThanksGiving2019Monopoly_OpenCoatPack</N>3326744</N>2"
tItem[3326744]["OptionFunc113"] = "ThanksGiving2019Monopoly_OpenCoatPack</N>3326744</N>3"


tItem[3326744]["Text2-1"] = {121}
tItem[3326744]["tOption2-1"] = {121,122}

--惊喜奖励礼盒
tItemFace[3326732] = 997
tItem[3326732] = tItem[3326732] or {}
tItem[3326732]["OptionHidden"] = 1
tItem[3326732]["DialogueText"] = tThanksGiving2019Monopoly_Text[3326732]

tItem[3326732]["Text1-1"] = {111}
tItem[3326732]["tOption1-1"] = {111,112,113}
tItem[3326732]["OptionFunc111"] = "ThanksGiving2019Monopoly_OpenCoatPack</N>3326732</N>1"
tItem[3326732]["OptionFunc112"] = "ThanksGiving2019Monopoly_OpenCoatPack</N>3326732</N>2"
tItem[3326732]["OptionFunc113"] = "ThanksGiving2019Monopoly_OpenCoatPack</N>3326732</N>3"


tItem[3326732]["Text2-1"] = {121}
tItem[3326732]["tOption2-1"] = {121,122}

--感恩赤炼石礼包
tItemFace[3326738] = 1025
tItem[3326738] = tItem[3326738] or {}
tItem[3326738]["OptionHidden"] = 1
tItem[3326738]["DialogueText"] = tThanksGiving2019Monopoly_Text[3326738]

tItem[3326738]["Text1-1"] = {111,112}
tItem[3326738]["tOption1-1"] = {111,112}
tItem[3326738]["OptionFunc111"] = "ThanksGiving2019Monopoly_OpenStonePack</N>3326738"

tItem[3326738]["Text2-1"] = {121}
tItem[3326738]["tOption2-1"] = {121,122}

--感恩星陨石礼包
tItemFace[3326739] = 2392
tItem[3326739] = tItem[3326739] or {}
tItem[3326739]["OptionHidden"] = 1
tItem[3326739]["DialogueText"] = tThanksGiving2019Monopoly_Text[3326739]

tItem[3326739]["Text1-1"] = {111,112}
tItem[3326739]["tOption1-1"] = {111,112}
tItem[3326739]["OptionFunc111"] = "ThanksGiving2019Monopoly_OpenStonePack</N>3326739"

tItem[3326739]["Text2-1"] = {121}
tItem[3326739]["tOption2-1"] = {121,122}

tItemFace[3326740] = 644
tItemFace[3326741] = 1020
tItemFace[3326742] = 1667
tItemFace[3326743] = 2313
tItemFace[3326745] = 1442
tItemFace[3326746] = 1332

tItemFace[3326800] = 1442
tItemFace[3326801] = 1332

for i=3326740,3326743 do 
	
	tItem[i] = tItem[i] or {}
	tItem[i]["OptionHidden"] = 1
	tItem[i]["DialogueText"] = tThanksGiving2019Monopoly_Text[i]

	tItem[i]["Text1-1"] = {111,112}
	tItem[i]["tOption1-1"] = {111,112}
	tItem[i]["OptionFunc111"] = "ThanksGiving2019Monopoly_OpenNormalPack</N>" .. i

	tItem[i]["Text2-1"] = {121}
	tItem[i]["tOption2-1"] = {121,122}
end 

for j=3326745,3326746 do 
	
	tItem[j] = tItem[j] or {}
	tItem[j]["OptionHidden"] = 1
	tItem[j]["DialogueText"] = tThanksGiving2019Monopoly_Text[j]

	tItem[j]["Text1-1"] = {111,112}
	tItem[j]["tOption1-1"] = {111,112}
	tItem[j]["OptionFunc111"] = "ThanksGiving2019Monopoly_OpenNormalPack</N>" .. j

	tItem[j]["Text2-1"] = {121}
	tItem[j]["tOption2-1"] = {121,122}
end 

for m=3326800,3326801 do 
	
	tItem[m] = tItem[m] or {}
	tItem[m]["OptionHidden"] = 1
	tItem[m]["DialogueText"] = tThanksGiving2019Monopoly_Text[m]

	tItem[m]["Text1-1"] = {111,112}
	tItem[m]["tOption1-1"] = {111,112}
	tItem[m]["OptionFunc111"] = "ThanksGiving2019Monopoly_OpenEmoneyPack</N>" .. m

	tItem[m]["Text2-1"] = {121}
	tItem[m]["tOption2-1"] = {121,122}
end 


--骰子使用
tItem[3326599] = tItem[3326599] or {}
tItem[3326599]["Function"] = function(nItemId,sItemName)
	ThanksGiving2019Monopoly_ThrowDice(nItemId)
end


tItem[3326788] = tItem[3326788] or {}
tItem[3326788]["Function"] = function(nItemId,sItemName)
	ThanksGiving2019Monopoly_DepartureCoupon(nItemId)
end

--大富翁礼盒
tItem[3326733] = tItem[3326733] or {}
tItem[3326733]["Function"] = function(nItemId,sItemName)
	local nUserId = Get_UserId()
	local bJudge = TermsOfUse_Main(nItemId,tThanksGiving2019Monopoly_Data["Pack"][nItemId])
	
	if not bJudge then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tThanksGiving2019Monopoly_Data["Pack"][nItemId],nUserId,bJudge)
end
tItem[3326734] = tItem[3326733]
---------------------------------陷阱部分---------------------------------------------
--终点触发
-- tTrap[2494] = tTrap[2494] or {}
-- tTrap[2494]["Function"] = function(nTrapId,nTrapType)
	-- ThanksGiving2019Monopoly_End()
-- end

--立即获得1个筛子
-- tTrap[2495] = tTrap[2495] or {}
-- tTrap[2495]["Function"] = function(nTrapId,nTrapType)
	-- ThanksGiving2019Monopoly_Reward()
-- end

--空白格
-- tTrap[2496] = tTrap[2496] or {}
-- tTrap[2496]["Function"] = function(nTrapId,nTrapType)
	-- ThanksGiving2019Monopoly_Reward()
-- end

--下次掷筛数翻倍
-- tTrap[2497] = tTrap[2497] or {}
-- tTrap[2497]["Function"] = function(nTrapId,nTrapType)
	-- ThanksGiving2019Monopoly_TwiceDice()
-- end

--奖励格
-- tTrap[2498] = tTrap[2498] or {}
-- tTrap[2498]["Function"] = function(nTrapId,nTrapType)
	-- ThanksGiving2019Monopoly_Reward()
-- end

--后退两格
-- tTrap[2499] = tTrap[2499] or {}
-- tTrap[2499]["Function"] = function(nTrapId,nTrapType)
	-- ThanksGiving2019Monopoly_BackTwoStep()
-- end 

--眩晕一回合
-- tTrap[2500] = tTrap[2500] or {}
-- tTrap[2500]["Function"] = function(nTrapId,nTrapType)
	-- ThanksGiving2019Monopoly_XuanYun()
-- end

